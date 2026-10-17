import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData
import Support.LuWang.SourceCertificateAssembly

/-! Independent left-certificate batch: original chunks 0276–0287. -/

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0276
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(44275000000000003 / 50000000000000000 : ℚ), (354250000000000019 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (21827473026689 / 50000000000000 : ℚ)
  w := (797060888351 / 625000000000 : ℚ)
  center := (708450000000000043 / 800000000000000000 : ℚ)
  supportValue := (4460986604381857 / 20000000000000000 : ℚ)
  supportSlope := (-756601194887261 / 1000000000000000 : ℚ)
  oldCenter := (4460986604381857 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2030
  oldLo := (111 / 500 : ℚ)
  oldHi := (89 / 400 : ℚ)
  oldPieces := [piece_583]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13800 : Cell := { cellDefaults with
  oldLo := (223 / 1000 : ℚ)
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_585]
}

noncomputable def cell_13801 : Cell := { cellDefaults with
  domain := ⟨(354250000000000019 / 400000000000000000 : ℚ), (177150000000000007 / 200000000000000000 : ℚ)⟩
  center := (708550000000000033 / 800000000000000000 : ℚ)
  supportValue := (11147738475449867 / 50000000000000000 : ℚ)
  supportSlope := (-7563726553950413 / 10000000000000000 : ℚ)
  oldCenter := (11147738475449867 / 50000000000000000 : ℚ)
  oldLo := (89 / 400 : ℚ)
  oldHi := (447 / 2000 : ℚ)
  oldPieces := [piece_584, piece_585]
}

noncomputable def cell_13802 : Cell := { cellDefaults with
  domain := ⟨(177150000000000007 / 200000000000000000 : ℚ), (354350000000000009 / 400000000000000000 : ℚ)⟩
  center := (708650000000000023 / 800000000000000000 : ℚ)
  supportValue := (1392876534960597 / 6250000000000000 : ℚ)
  supportSlope := (-118126032925351 / 156250000000000 : ℚ)
  oldCenter := (1392876534960597 / 6250000000000000 : ℚ)
  oldLo := (89 / 400 : ℚ)
  oldHi := (223 / 1000 : ℚ)
  oldPieces := [piece_584]
}

noncomputable def cell_13803 : Cell := { cellDefaults with
  domain := ⟨(354350000000000009 / 400000000000000000 : ℚ), (88600000000000001 / 100000000000000000 : ℚ)⟩
  center := (708750000000000013 / 800000000000000000 : ℚ)
  supportValue := (5569144194730121 / 25000000000000000 : ℚ)
  supportSlope := (-377818945424917 / 500000000000000 : ℚ)
  oldCenter := (5569144194730121 / 25000000000000000 : ℚ)
  oldLo := (89 / 400 : ℚ)
  oldHi := (223 / 1000 : ℚ)
  oldPieces := [piece_584]
}

noncomputable def cell_13804 : Cell := { cellDefaults with
  domain := ⟨(88600000000000001 / 100000000000000000 : ℚ), (35445000000000001 / 40000000000000000 : ℚ)⟩
  r := (21818745723341 / 50000000000000 : ℚ)
  w := (1274881094293 / 1000000000000 : ℚ)
  center := (354425000000000007 / 400000000000000000 : ℚ)
  supportValue := (22293896699667853 / 100000000000000000 : ℚ)
  supportSlope := (-1889965779976239 / 2500000000000000 : ℚ)
  oldCenter := (22293896699667853 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2031
  oldLo := (89 / 400 : ℚ)
  oldHi := (223 / 1000 : ℚ)
  oldPieces := [piece_584]
}

noncomputable def cell_13805 : Cell := { cellDefaults with
  domain := ⟨(35445000000000001 / 40000000000000000 : ℚ), (22156250000000001 / 25000000000000000 : ℚ)⟩
  r := (21818745723341 / 50000000000000 : ℚ)
  w := (1274881094293 / 1000000000000 : ℚ)
  center := (354475000000000013 / 400000000000000000 : ℚ)
  supportValue := (22284449172484463 / 100000000000000000 : ℚ)
  supportSlope := (-1889044167739713 / 2500000000000000 : ℚ)
  oldCenter := (22284449172484463 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2031
  oldLo := (89 / 400 : ℚ)
  oldHi := (223 / 1000 : ℚ)
  oldPieces := [piece_584]
}

noncomputable def cell_13806 : Cell := { cellDefaults with
  domain := ⟨(22156250000000001 / 25000000000000000 : ℚ), (177275000000000011 / 200000000000000000 : ℚ)⟩
  r := (21818745723341 / 50000000000000 : ℚ)
  w := (1274881094293 / 1000000000000 : ℚ)
  center := (354525000000000019 / 400000000000000000 : ℚ)
  supportValue := (4455001250256797 / 20000000000000000 : ℚ)
  supportSlope := (-7552493547894539 / 10000000000000000 : ℚ)
  oldCenter := (4455001250256797 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2031
  oldLo := (89 / 400 : ℚ)
  oldHi := (223 / 1000 : ℚ)
  oldPieces := [piece_584]
}

noncomputable def cell_13807 : Cell := { cellDefaults with
  domain := ⟨(177275000000000011 / 200000000000000000 : ℚ), (88650000000000007 / 100000000000000000 : ℚ)⟩
  r := (21818745723341 / 50000000000000 : ℚ)
  w := (1274881094293 / 1000000000000 : ℚ)
  center := (14183000000000001 / 16000000000000000 : ℚ)
  supportValue := (22265567931912847 / 100000000000000000 : ℚ)
  supportSlope := (-7548813744730137 / 10000000000000000 : ℚ)
  oldCenter := (22265567931912847 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2031
  oldLo := (89 / 400 : ℚ)
  oldHi := (223 / 1000 : ℚ)
  oldPieces := [piece_584]
}

noncomputable def cell_13808 : Cell := { cellDefaults with
  domain := ⟨(88650000000000007 / 100000000000000000 : ℚ), (177325000000000011 / 200000000000000000 : ℚ)⟩
  r := (1744801962273 / 4000000000000 : ℚ)
  w := (6372323041379 / 5000000000000 : ℚ)
  center := (14185000000000001 / 16000000000000000 : ℚ)
  supportValue := (22282882324978137 / 100000000000000000 : ℚ)
  supportSlope := (-944036603640177 / 1250000000000000 : ℚ)
  oldCenter := (22282882324978137 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2032
  oldLo := (89 / 400 : ℚ)
  oldHi := (223 / 1000 : ℚ)
  oldPieces := [piece_584]
}

noncomputable def cell_13809 : Cell := { cellDefaults with
  domain := ⟨(177325000000000011 / 200000000000000000 : ℚ), (22168750000000001 / 25000000000000000 : ℚ)⟩
  r := (1744801962273 / 4000000000000 : ℚ)
  w := (6372323041379 / 5000000000000 : ℚ)
  center := (354675000000000019 / 400000000000000000 : ℚ)
  supportValue := (22273444256036729 / 100000000000000000 : ℚ)
  supportSlope := (-3774306888085119 / 5000000000000000 : ℚ)
  oldCenter := (22273444256036729 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2032
  oldLo := (89 / 400 : ℚ)
  oldHi := (223 / 1000 : ℚ)
  oldPieces := [piece_584]
}

noncomputable def cell_13810 : Cell := { cellDefaults with
  domain := ⟨(22168750000000001 / 25000000000000000 : ℚ), (35475000000000001 / 40000000000000000 : ℚ)⟩
  r := (1744801962273 / 4000000000000 : ℚ)
  w := (6372323041379 / 5000000000000 : ℚ)
  center := (354725000000000013 / 400000000000000000 : ℚ)
  supportValue := (5566002695960147 / 25000000000000000 : ℚ)
  supportSlope := (-377246901869511 / 500000000000000 : ℚ)
  oldCenter := (5566002695960147 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2032
  oldLo := (89 / 400 : ℚ)
  oldHi := (223 / 1000 : ℚ)
  oldPieces := [piece_584]
}

noncomputable def cell_13811 : Cell := { cellDefaults with
  domain := ⟨(35475000000000001 / 40000000000000000 : ℚ), (88700000000000001 / 100000000000000000 : ℚ)⟩
  r := (1744801962273 / 4000000000000 : ℚ)
  w := (6372323041379 / 5000000000000 : ℚ)
  center := (354775000000000007 / 400000000000000000 : ℚ)
  supportValue := (11127290952125403 / 50000000000000000 : ℚ)
  supportSlope := (-7541286467379409 / 10000000000000000 : ℚ)
  oldCenter := (11127290952125403 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2032
  oldHi := (223 / 1000 : ℚ)
  oldPieces := [piece_583, piece_584]
}

noncomputable def cell_13812 : Cell := { cellDefaults with
  domain := ⟨(88700000000000001 / 100000000000000000 : ℚ), (35485000000000001 / 40000000000000000 : ℚ)⟩
  r := (10900654900429 / 25000000000000 : ℚ)
  w := (398140020503 / 312500000000 : ℚ)
  center := (354825000000000007 / 400000000000000000 : ℚ)
  supportValue := (11135944107699551 / 50000000000000000 : ℚ)
  supportSlope := (-7544738828285863 / 10000000000000000 : ℚ)
  oldCenter := (11135944107699551 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2033
  oldLo := (89 / 400 : ℚ)
  oldHi := (223 / 1000 : ℚ)
  oldPieces := [piece_584]
}

noncomputable def cell_13813 : Cell := { cellDefaults with
  domain := ⟨(35485000000000001 / 40000000000000000 : ℚ), (22181250000000001 / 25000000000000000 : ℚ)⟩
  r := (10900654900429 / 25000000000000 : ℚ)
  w := (398140020503 / 312500000000 : ℚ)
  center := (354875000000000013 / 400000000000000000 : ℚ)
  supportValue := (2226245958435253 / 10000000000000000 : ℚ)
  supportSlope := (-7541067146860297 / 10000000000000000 : ℚ)
  oldCenter := (2226245958435253 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2033
  oldLo := (89 / 400 : ℚ)
  oldHi := (223 / 1000 : ℚ)
  oldPieces := [piece_584]
}

noncomputable def cell_13814 : Cell := { cellDefaults with
  domain := ⟨(22181250000000001 / 25000000000000000 : ℚ), (177475000000000011 / 200000000000000000 : ℚ)⟩
  r := (10900654900429 / 25000000000000 : ℚ)
  w := (398140020503 / 312500000000 : ℚ)
  center := (354925000000000019 / 400000000000000000 : ℚ)
  supportValue := (1112651777042207 / 5000000000000000 : ℚ)
  supportSlope := (-942206726112669 / 1250000000000000 : ℚ)
  oldCenter := (1112651777042207 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2033
  oldHi := (223 / 1000 : ℚ)
  oldPieces := [piece_583, piece_584]
}

noncomputable def cell_13815 : Cell := { cellDefaults with
  domain := ⟨(177475000000000011 / 200000000000000000 : ℚ), (88750000000000007 / 100000000000000000 : ℚ)⟩
  r := (10900654900429 / 25000000000000 : ℚ)
  w := (398140020503 / 312500000000 : ℚ)
  center := (14199000000000001 / 16000000000000000 : ℚ)
  supportValue := (4448722974038617 / 20000000000000000 : ℚ)
  supportSlope := (-3767579509898581 / 5000000000000000 : ℚ)
  oldCenter := (4448722974038617 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2033
  oldPieces := [piece_583]
}

noncomputable def cell_13816 : Cell := { cellDefaults with
  domain := ⟨(88750000000000007 / 100000000000000000 : ℚ), (177525000000000011 / 200000000000000000 : ℚ)⟩
  r := (21792600674187 / 50000000000000 : ℚ)
  w := (6368156889077 / 5000000000000 : ℚ)
  center := (14201000000000001 / 16000000000000000 : ℚ)
  supportValue := (69565368036093 / 312500000000000 : ℚ)
  supportSlope := (-942150249409581 / 1250000000000000 : ℚ)
  oldCenter := (69565368036093 / 312500000000000 : ℚ)
  newCoefficients := coefficients_2034
  oldLo := (89 / 400 : ℚ)
  oldHi := (223 / 1000 : ℚ)
  oldPieces := [piece_584]
}

noncomputable def cell_13817 : Cell := { cellDefaults with
  domain := ⟨(177525000000000011 / 200000000000000000 : ℚ), (22193750000000001 / 25000000000000000 : ℚ)⟩
  r := (21792600674187 / 50000000000000 : ℚ)
  w := (6368156889077 / 5000000000000 : ℚ)
  center := (355075000000000019 / 400000000000000000 : ℚ)
  supportValue := (4450299711390791 / 20000000000000000 : ℚ)
  supportSlope := (-7534025320850917 / 10000000000000000 : ℚ)
  oldCenter := (4450299711390791 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2034
  oldHi := (223 / 1000 : ℚ)
  oldPieces := [piece_583, piece_584]
}

noncomputable def cell_13818 : Cell := { cellDefaults with
  domain := ⟨(22193750000000001 / 25000000000000000 : ℚ), (35515000000000001 / 40000000000000000 : ℚ)⟩
  r := (21792600674187 / 50000000000000 : ℚ)
  w := (6368156889077 / 5000000000000 : ℚ)
  center := (355125000000000013 / 400000000000000000 : ℚ)
  supportValue := (22242082420375311 / 100000000000000000 : ℚ)
  supportSlope := (-3765650187586463 / 5000000000000000 : ℚ)
  oldCenter := (22242082420375311 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2034
  oldPieces := [piece_583]
}

noncomputable def cell_13819 : Cell := { cellDefaults with
  domain := ⟨(35515000000000001 / 40000000000000000 : ℚ), (88800000000000001 / 100000000000000000 : ℚ)⟩
  r := (21792600674187 / 50000000000000 : ℚ)
  w := (6368156889077 / 5000000000000 : ℚ)
  center := (355175000000000007 / 400000000000000000 : ℚ)
  supportValue := (1389541911398183 / 6250000000000000 : ℚ)
  supportSlope := (-1505527347802807 / 2000000000000000 : ℚ)
  oldCenter := (1389541911398183 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_2034
  oldPieces := [piece_583]
}

noncomputable def cell_13820 : Cell := { cellDefaults with
  domain := ⟨(88800000000000001 / 100000000000000000 : ℚ), (35525000000000001 / 40000000000000000 : ℚ)⟩
  r := (4356779556057 / 10000000000000 : ℚ)
  w := (3183036270439 / 2500000000000 : ℚ)
  center := (355225000000000007 / 400000000000000000 : ℚ)
  supportValue := (2781246265689007 / 12500000000000000 : ℚ)
  supportSlope := (-3765200506111281 / 5000000000000000 : ℚ)
  oldCenter := (2781246265689007 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2035
  oldHi := (223 / 1000 : ℚ)
  oldPieces := [piece_583, piece_584]
}

noncomputable def cell_13821 : Cell := { cellDefaults with
  domain := ⟨(35525000000000001 / 40000000000000000 : ℚ), (22206250000000001 / 25000000000000000 : ℚ)⟩
  r := (4356779556057 / 10000000000000 : ℚ)
  w := (3183036270439 / 2500000000000 : ℚ)
  center := (355275000000000013 / 400000000000000000 : ℚ)
  supportValue := (2224055852472631 / 10000000000000000 : ℚ)
  supportSlope := (-752744732142839 / 1000000000000000 : ℚ)
  oldCenter := (2224055852472631 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2035
  oldPieces := [piece_583]
}

noncomputable def cell_13822 : Cell := { cellDefaults with
  domain := ⟨(22206250000000001 / 25000000000000000 : ℚ), (177675000000000011 / 200000000000000000 : ℚ)⟩
  r := (4356779556057 / 10000000000000 : ℚ)
  w := (3183036270439 / 2500000000000 : ℚ)
  center := (355325000000000019 / 400000000000000000 : ℚ)
  supportValue := (22231151500532653 / 100000000000000000 : ℚ)
  supportSlope := (-752378769651861 / 1000000000000000 : ℚ)
  oldCenter := (22231151500532653 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2035
  oldPieces := [piece_583]
}

noncomputable def cell_13823 : Cell := { cellDefaults with
  domain := ⟨(177675000000000011 / 200000000000000000 : ℚ), (88850000000000007 / 100000000000000000 : ℚ)⟩
  r := (4356779556057 / 10000000000000 : ℚ)
  w := (3183036270439 / 2500000000000 : ℚ)
  center := (14215000000000001 / 16000000000000000 : ℚ)
  supportValue := (2222174904881379 / 10000000000000000 : ℚ)
  supportSlope := (-1504026272480627 / 2000000000000000 : ℚ)
  oldCenter := (2222174904881379 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2035
  oldPieces := [piece_583]
}

noncomputable def cell_13824 : Cell := { cellDefaults with
  domain := ⟨(88850000000000007 / 100000000000000000 : ℚ), (177725000000000011 / 200000000000000000 : ℚ)⟩
  r := (21775201193203 / 50000000000000 : ℚ)
  w := (12727975832867 / 10000000000000 : ℚ)
  center := (14217000000000001 / 16000000000000000 : ℚ)
  supportValue := (2223904083547217 / 10000000000000000 : ℚ)
  supportSlope := (-3761799554813823 / 5000000000000000 : ℚ)
  oldCenter := (2223904083547217 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2036
  oldPieces := [piece_583]
}

noncomputable def cell_13825 : Cell := { cellDefaults with
  domain := ⟨(177725000000000011 / 200000000000000000 : ℚ), (22218750000000001 / 25000000000000000 : ℚ)⟩
  r := (21775201193203 / 50000000000000 : ℚ)
  w := (12727975832867 / 10000000000000 : ℚ)
  center := (355475000000000019 / 400000000000000000 : ℚ)
  supportValue := (11114819309513707 / 50000000000000000 : ℚ)
  supportSlope := (-7519943510954987 / 10000000000000000 : ℚ)
  oldCenter := (11114819309513707 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2036
  oldPieces := [piece_583]
}

noncomputable def cell_13826 : Cell := { cellDefaults with
  domain := ⟨(22218750000000001 / 25000000000000000 : ℚ), (35555000000000001 / 40000000000000000 : ℚ)⟩
  r := (21775201193203 / 50000000000000 : ℚ)
  w := (12727975832867 / 10000000000000 : ℚ)
  center := (355525000000000013 / 400000000000000000 : ℚ)
  supportValue := (2222024097002821 / 10000000000000000 : ℚ)
  supportSlope := (-7516291197454463 / 10000000000000000 : ℚ)
  oldCenter := (2222024097002821 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2036
  oldPieces := [piece_583]
}

noncomputable def cell_13827 : Cell := { cellDefaults with
  domain := ⟨(35555000000000001 / 40000000000000000 : ℚ), (88900000000000001 / 100000000000000000 : ℚ)⟩
  r := (21775201193203 / 50000000000000 : ℚ)
  w := (12727975832867 / 10000000000000 : ℚ)
  center := (355575000000000007 / 400000000000000000 : ℚ)
  supportValue := (4442169576874363 / 20000000000000000 : ℚ)
  supportSlope := (-939080270393579 / 1250000000000000 : ℚ)
  oldCenter := (4442169576874363 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2036
  oldPieces := [piece_583]
}

noncomputable def cell_13828 : Cell := { cellDefaults with
  domain := ⟨(88900000000000001 / 100000000000000000 : ℚ), (177838547486033511 / 200000000000000000 : ℚ)⟩
  r := (10883255400339 / 25000000000000 : ℚ)
  w := (12723805473763 / 10000000000000 : ℚ)
  center := (355638547486033513 / 400000000000000000 : ℚ)
  supportValue := (2222560323444543 / 10000000000000000 : ℚ)
  supportSlope := (-3757557937354349 / 5000000000000000 : ℚ)
  oldCenter := (2222560323444543 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2037
  oldPieces := [piece_583]
}

noncomputable def cell_13829 : Cell := { cellDefaults with
  domain := ⟨(177838547486033511 / 200000000000000000 : ℚ), (8893854748603351 / 10000000000000000 : ℚ)⟩
  r := (10883255400339 / 25000000000000 : ℚ)
  w := (12723805473763 / 10000000000000 : ℚ)
  center := (355715642458100531 / 400000000000000000 : ℚ)
  supportValue := (22211124199034157 / 100000000000000000 : ℚ)
  supportSlope := (-7509493299118799 / 10000000000000000 : ℚ)
  oldCenter := (22211124199034157 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2037
  oldPieces := [piece_583]
}

noncomputable def cell_13830 : Cell := { cellDefaults with
  domain := ⟨(8893854748603351 / 10000000000000000 : ℚ), (88950000000000007 / 100000000000000000 : ℚ)⟩
  r := (10883255400339 / 25000000000000 : ℚ)
  w := (12723805473763 / 10000000000000 : ℚ)
  center := (177888547486033517 / 200000000000000000 : ℚ)
  supportValue := (22199575074547237 / 100000000000000000 : ℚ)
  supportSlope := (-1501159746584257 / 2000000000000000 : ℚ)
  oldCenter := (22199575074547237 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2038
  oldLo := (443 / 2000 : ℚ)
  oldPieces := [piece_582, piece_583]
}

noncomputable def cell_13831 : Cell := { cellDefaults with
  domain := ⟨(88950000000000007 / 100000000000000000 : ℚ), (177925000000000011 / 200000000000000000 : ℚ)⟩
  r := (43515652616893 / 100000000000000 : ℚ)
  w := (6359816955199 / 5000000000000 : ℚ)
  center := (14233000000000001 / 16000000000000000 : ℚ)
  supportValue := (11108623867094633 / 50000000000000000 : ℚ)
  supportSlope := (-7508626568678357 / 10000000000000000 : ℚ)
  oldCenter := (11108623867094633 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2039
  oldPieces := [piece_583]
}

noncomputable def cell_13832 : Cell := { cellDefaults with
  domain := ⟨(177925000000000011 / 200000000000000000 : ℚ), (22243750000000001 / 25000000000000000 : ℚ)⟩
  r := (43515652616893 / 100000000000000 : ℚ)
  w := (6359816955199 / 5000000000000 : ℚ)
  center := (355875000000000019 / 400000000000000000 : ℚ)
  supportValue := (555196605607959 / 2500000000000000 : ℚ)
  supportSlope := (-3752492768476673 / 5000000000000000 : ℚ)
  oldCenter := (555196605607959 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_2039
  oldPieces := [piece_583]
}

noncomputable def cell_13833 : Cell := { cellDefaults with
  domain := ⟨(22243750000000001 / 25000000000000000 : ℚ), (35595000000000001 / 40000000000000000 : ℚ)⟩
  r := (43515652616893 / 100000000000000 : ℚ)
  w := (6359816955199 / 5000000000000 : ℚ)
  center := (355925000000000013 / 400000000000000000 : ℚ)
  supportValue := (11099242487706787 / 50000000000000000 : ℚ)
  supportSlope := (-7502288161954429 / 10000000000000000 : ℚ)
  oldCenter := (11099242487706787 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2039
  oldLo := (443 / 2000 : ℚ)
  oldPieces := [piece_582, piece_583]
}

noncomputable def cell_13834 : Cell := { cellDefaults with
  domain := ⟨(35595000000000001 / 40000000000000000 : ℚ), (89000000000000001 / 100000000000000000 : ℚ)⟩
  r := (43515652616893 / 100000000000000 : ℚ)
  w := (6359816955199 / 5000000000000 : ℚ)
  center := (355975000000000007 / 400000000000000000 : ℚ)
  supportValue := (4437821757475191 / 20000000000000000 : ℚ)
  supportSlope := (-18747821043299 / 25000000000000 : ℚ)
  oldCenter := (4437821757475191 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2039
  oldLo := (443 / 2000 : ℚ)
  oldHi := (111 / 500 : ℚ)
  oldPieces := [piece_582]
}

noncomputable def cell_13835 : Cell := { cellDefaults with
  domain := ⟨(89000000000000001 / 100000000000000000 : ℚ), (35605000000000001 / 40000000000000000 : ℚ)⟩
  r := (8699659028707 / 20000000000000 : ℚ)
  w := (397358136237 / 312500000000 : ℚ)
  center := (356025000000000007 / 400000000000000000 : ℚ)
  supportValue := (555159657049053 / 2500000000000000 : ℚ)
  supportSlope := (-7501165798497123 / 10000000000000000 : ℚ)
  oldCenter := (555159657049053 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_2040
  oldPieces := [piece_583]
}

noncomputable def cell_13836 : Cell := { cellDefaults with
  domain := ⟨(35605000000000001 / 40000000000000000 : ℚ), (22256250000000001 / 25000000000000000 : ℚ)⟩
  r := (8699659028707 / 20000000000000 : ℚ)
  w := (397358136237 / 312500000000 : ℚ)
  center := (356075000000000013 / 400000000000000000 : ℚ)
  supportValue := (22197011526255833 / 100000000000000000 : ℚ)
  supportSlope := (-3749347415313403 / 5000000000000000 : ℚ)
  oldCenter := (22197011526255833 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2040
  oldLo := (443 / 2000 : ℚ)
  oldPieces := [piece_582, piece_583]
}

noncomputable def cell_13837 : Cell := { cellDefaults with
  domain := ⟨(22256250000000001 / 25000000000000000 : ℚ), (178075000000000011 / 200000000000000000 : ℚ)⟩
  r := (8699659028707 / 20000000000000 : ℚ)
  w := (397358136237 / 312500000000 : ℚ)
  center := (356125000000000019 / 400000000000000000 : ℚ)
  supportValue := (4437528021467101 / 20000000000000000 : ℚ)
  supportSlope := (-3747657558425649 / 5000000000000000 : ℚ)
  oldCenter := (4437528021467101 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2040
  oldLo := (443 / 2000 : ℚ)
  oldHi := (111 / 500 : ℚ)
  oldPieces := [piece_582]
}

noncomputable def cell_13838 : Cell := { cellDefaults with
  domain := ⟨(178075000000000011 / 200000000000000000 : ℚ), (89050000000000007 / 100000000000000000 : ℚ)⟩
  r := (8699659028707 / 20000000000000 : ℚ)
  w := (397358136237 / 312500000000 : ℚ)
  center := (14247000000000001 / 16000000000000000 : ℚ)
  supportValue := (11089136615911427 / 50000000000000000 : ℚ)
  supportSlope := (-3745841011030921 / 5000000000000000 : ℚ)
  oldCenter := (11089136615911427 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2040
  oldLo := (443 / 2000 : ℚ)
  oldHi := (111 / 500 : ℚ)
  oldPieces := [piece_582]
}

noncomputable def cell_13839 : Cell := { cellDefaults with
  domain := ⟨(89050000000000007 / 100000000000000000 : ℚ), (178125000000000011 / 200000000000000000 : ℚ)⟩
  r := (43480949641147 / 100000000000000 : ℚ)
  w := (12711284201421 / 10000000000000 : ℚ)
  center := (14249000000000001 / 16000000000000000 : ℚ)
  supportValue := (5548887097429827 / 25000000000000000 : ℚ)
  supportSlope := (-7495105866831341 / 10000000000000000 : ℚ)
  oldCenter := (5548887097429827 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2041
  oldLo := (443 / 2000 : ℚ)
  oldPieces := [piece_582, piece_583]
}

noncomputable def cell_13840 : Cell := { cellDefaults with
  domain := ⟨(178125000000000011 / 200000000000000000 : ℚ), (22268750000000001 / 25000000000000000 : ℚ)⟩
  r := (43480949641147 / 100000000000000 : ℚ)
  w := (12711284201421 / 10000000000000 : ℚ)
  center := (356275000000000019 / 400000000000000000 : ℚ)
  supportValue := (2773272716543437 / 12500000000000000 : ℚ)
  supportSlope := (-3745753933568801 / 5000000000000000 : ℚ)
  oldCenter := (2773272716543437 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2041
  oldLo := (443 / 2000 : ℚ)
  oldHi := (111 / 500 : ℚ)
  oldPieces := [piece_582]
}

noncomputable def cell_13841 : Cell := { cellDefaults with
  domain := ⟨(22268750000000001 / 25000000000000000 : ℚ), (35635000000000001 / 40000000000000000 : ℚ)⟩
  r := (43480949641147 / 100000000000000 : ℚ)
  w := (12711284201421 / 10000000000000 : ℚ)
  center := (356325000000000013 / 400000000000000000 : ℚ)
  supportValue := (443536392268303 / 2000000000000000 : ℚ)
  supportSlope := (-374393937209661 / 500000000000000 : ℚ)
  oldCenter := (443536392268303 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2041
  oldLo := (443 / 2000 : ℚ)
  oldHi := (111 / 500 : ℚ)
  oldPieces := [piece_582]
}

noncomputable def cell_13842 : Cell := { cellDefaults with
  domain := ⟨(35635000000000001 / 40000000000000000 : ℚ), (89100000000000001 / 100000000000000000 : ℚ)⟩
  r := (43480949641147 / 100000000000000 : ℚ)
  w := (12711284201421 / 10000000000000 : ℚ)
  center := (356375000000000007 / 400000000000000000 : ℚ)
  supportValue := (277093275360691 / 1250000000000000 : ℚ)
  supportSlope := (-935531608984409 / 1250000000000000 : ℚ)
  oldCenter := (277093275360691 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_2041
  oldLo := (443 / 2000 : ℚ)
  oldHi := (111 / 500 : ℚ)
  oldPieces := [piece_582]
}

noncomputable def cell_13843 : Cell := { cellDefaults with
  domain := ⟨(89100000000000001 / 100000000000000000 : ℚ), (35645000000000001 / 40000000000000000 : ℚ)⟩
  r := (2716476027349 / 6250000000000 : ℚ)
  w := (158838852331 / 125000000000 : ℚ)
  center := (356425000000000007 / 400000000000000000 : ℚ)
  supportValue := (2773091074018429 / 12500000000000000 : ℚ)
  supportSlope := (-7487705072398921 / 10000000000000000 : ℚ)
  oldCenter := (2773091074018429 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2042
  oldLo := (443 / 2000 : ℚ)
  oldHi := (111 / 500 : ℚ)
  oldPieces := [piece_582]
}

noncomputable def cell_13844 : Cell := { cellDefaults with
  domain := ⟨(35645000000000001 / 40000000000000000 : ℚ), (22281250000000001 / 25000000000000000 : ℚ)⟩
  r := (2716476027349 / 6250000000000 : ℚ)
  w := (158838852331 / 125000000000 : ℚ)
  center := (356475000000000013 / 400000000000000000 : ℚ)
  supportValue := (2217537122423021 / 10000000000000000 : ℚ)
  supportSlope := (-7484079915650801 / 10000000000000000 : ℚ)
  oldCenter := (2217537122423021 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2042
  oldLo := (443 / 2000 : ℚ)
  oldHi := (111 / 500 : ℚ)
  oldPieces := [piece_582]
}

noncomputable def cell_13845 : Cell := { cellDefaults with
  domain := ⟨(22281250000000001 / 25000000000000000 : ℚ), (178275000000000011 / 200000000000000000 : ℚ)⟩
  r := (2716476027349 / 6250000000000 : ℚ)
  w := (158838852331 / 125000000000 : ℚ)
  center := (356525000000000019 / 400000000000000000 : ℚ)
  supportValue := (22166018385731087 / 100000000000000000 : ℚ)
  supportSlope := (-3740229002055613 / 5000000000000000 : ℚ)
  oldCenter := (22166018385731087 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2042
  oldLo := (443 / 2000 : ℚ)
  oldHi := (111 / 500 : ℚ)
  oldPieces := [piece_582]
}

noncomputable def cell_13846 : Cell := { cellDefaults with
  domain := ⟨(178275000000000011 / 200000000000000000 : ℚ), (89150000000000007 / 100000000000000000 : ℚ)⟩
  r := (2716476027349 / 6250000000000 : ℚ)
  w := (158838852331 / 125000000000 : ℚ)
  center := (14263000000000001 / 16000000000000000 : ℚ)
  supportValue := (2215667007259733 / 10000000000000000 : ℚ)
  supportSlope := (-7476839331789433 / 10000000000000000 : ℚ)
  oldCenter := (2215667007259733 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2042
  oldLo := (443 / 2000 : ℚ)
  oldHi := (111 / 500 : ℚ)
  oldPieces := [piece_582]
}

noncomputable def cell_13847 : Cell := { cellDefaults with
  domain := ⟨(89150000000000007 / 100000000000000000 : ℚ), (356650000000000023 / 400000000000000000 : ℚ)⟩
  r := (43446295797881 / 100000000000000 : ℚ)
  w := (3175732795267 / 2500000000000 : ℚ)
  center := (713250000000000051 / 800000000000000000 : ℚ)
  supportValue := (5543482417585103 / 25000000000000000 : ℚ)
  supportSlope := (-748028607633863 / 1000000000000000 : ℚ)
  oldCenter := (5543482417585103 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2043
  oldLo := (443 / 2000 : ℚ)
  oldHi := (111 / 500 : ℚ)
  oldPieces := [piece_582]
}

noncomputable def cell_13848 : Cell := { cellDefaults with
  domain := ⟨(356650000000000023 / 400000000000000000 : ℚ), (178350000000000009 / 200000000000000000 : ℚ)⟩
  r := (43446295797881 / 100000000000000 : ℚ)
  w := (3175732795267 / 2500000000000 : ℚ)
  center := (713350000000000041 / 800000000000000000 : ℚ)
  supportValue := (11082290785834799 / 50000000000000000 : ℚ)
  supportSlope := (-1495333623819633 / 2000000000000000 : ℚ)
  oldCenter := (11082290785834799 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2043
  oldLo := (443 / 2000 : ℚ)
  oldHi := (111 / 500 : ℚ)
  oldPieces := [piece_582]
}

noncomputable def cell_13849 : Cell := { cellDefaults with
  domain := ⟨(178350000000000009 / 200000000000000000 : ℚ), (356750000000000013 / 400000000000000000 : ℚ)⟩
  r := (43446295797881 / 100000000000000 : ℚ)
  w := (3175732795267 / 2500000000000 : ℚ)
  center := (713450000000000031 / 800000000000000000 : ℚ)
  supportValue := (22155237993424567 / 100000000000000000 : ℚ)
  supportSlope := (-7473053395728649 / 10000000000000000 : ℚ)
  oldCenter := (22155237993424567 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2043
  oldLo := (443 / 2000 : ℚ)
  oldHi := (111 / 500 : ℚ)
  oldPieces := [piece_582]
}

theorem check_13800 : cell_13800.check = true := by
  decide +kernel

theorem check_13801 : cell_13801.check = true := by
  decide +kernel

theorem check_13802 : cell_13802.check = true := by
  decide +kernel

theorem check_13803 : cell_13803.check = true := by
  decide +kernel

theorem check_13804 : cell_13804.check = true := by
  decide +kernel

theorem check_13805 : cell_13805.check = true := by
  decide +kernel

theorem check_13806 : cell_13806.check = true := by
  decide +kernel

theorem check_13807 : cell_13807.check = true := by
  decide +kernel

theorem check_13808 : cell_13808.check = true := by
  decide +kernel

theorem check_13809 : cell_13809.check = true := by
  decide +kernel

theorem check_13810 : cell_13810.check = true := by
  decide +kernel

theorem check_13811 : cell_13811.check = true := by
  decide +kernel

theorem check_13812 : cell_13812.check = true := by
  decide +kernel

theorem check_13813 : cell_13813.check = true := by
  decide +kernel

theorem check_13814 : cell_13814.check = true := by
  decide +kernel

theorem check_13815 : cell_13815.check = true := by
  decide +kernel

theorem check_13816 : cell_13816.check = true := by
  decide +kernel

theorem check_13817 : cell_13817.check = true := by
  decide +kernel

theorem check_13818 : cell_13818.check = true := by
  decide +kernel

theorem check_13819 : cell_13819.check = true := by
  decide +kernel

theorem check_13820 : cell_13820.check = true := by
  decide +kernel

theorem check_13821 : cell_13821.check = true := by
  decide +kernel

theorem check_13822 : cell_13822.check = true := by
  decide +kernel

theorem check_13823 : cell_13823.check = true := by
  decide +kernel

theorem check_13824 : cell_13824.check = true := by
  decide +kernel

theorem check_13825 : cell_13825.check = true := by
  decide +kernel

theorem check_13826 : cell_13826.check = true := by
  decide +kernel

theorem check_13827 : cell_13827.check = true := by
  decide +kernel

theorem check_13828 : cell_13828.check = true := by
  decide +kernel

theorem check_13829 : cell_13829.check = true := by
  decide +kernel

theorem check_13830 : cell_13830.check = true := by
  decide +kernel

theorem check_13831 : cell_13831.check = true := by
  decide +kernel

theorem check_13832 : cell_13832.check = true := by
  decide +kernel

theorem check_13833 : cell_13833.check = true := by
  decide +kernel

theorem check_13834 : cell_13834.check = true := by
  decide +kernel

theorem check_13835 : cell_13835.check = true := by
  decide +kernel

theorem check_13836 : cell_13836.check = true := by
  decide +kernel

theorem check_13837 : cell_13837.check = true := by
  decide +kernel

theorem check_13838 : cell_13838.check = true := by
  decide +kernel

theorem check_13839 : cell_13839.check = true := by
  decide +kernel

theorem check_13840 : cell_13840.check = true := by
  decide +kernel

theorem check_13841 : cell_13841.check = true := by
  decide +kernel

theorem check_13842 : cell_13842.check = true := by
  decide +kernel

theorem check_13843 : cell_13843.check = true := by
  decide +kernel

theorem check_13844 : cell_13844.check = true := by
  decide +kernel

theorem check_13845 : cell_13845.check = true := by
  decide +kernel

theorem check_13846 : cell_13846.check = true := by
  decide +kernel

theorem check_13847 : cell_13847.check = true := by
  decide +kernel

theorem check_13848 : cell_13848.check = true := by
  decide +kernel

theorem check_13849 : cell_13849.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13800, cell_13801, cell_13802, cell_13803, cell_13804, cell_13805, cell_13806, cell_13807, cell_13808, cell_13809, cell_13810, cell_13811, cell_13812, cell_13813, cell_13814, cell_13815, cell_13816, cell_13817, cell_13818, cell_13819, cell_13820, cell_13821, cell_13822, cell_13823, cell_13824, cell_13825, cell_13826, cell_13827, cell_13828, cell_13829, cell_13830, cell_13831, cell_13832, cell_13833, cell_13834, cell_13835, cell_13836, cell_13837, cell_13838, cell_13839, cell_13840, cell_13841, cell_13842, cell_13843, cell_13844, cell_13845, cell_13846, cell_13847, cell_13848, cell_13849]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13800, check_13801, check_13802, check_13803, check_13804, check_13805, check_13806, check_13807, check_13808, check_13809, check_13810, check_13811, check_13812, check_13813, check_13814, check_13815, check_13816, check_13817, check_13818, check_13819, check_13820, check_13821, check_13822, check_13823, check_13824, check_13825, check_13826, check_13827, check_13828, check_13829, check_13830, check_13831, check_13832, check_13833, check_13834, check_13835, check_13836, check_13837, check_13838, check_13839, check_13840, check_13841, check_13842, check_13843, check_13844, check_13845, check_13846, check_13847, check_13848, check_13849, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0276

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0276
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0276
open AnalyticBounds.ExpressionCertificate

theorem linked_13800 : Linked cell_13800 pieces := by
  link_source cell_13800 with piece_2030 using piece_2030_mem, piece_585_mem

theorem linked_13801 : Linked cell_13801 pieces := by
  link_source cell_13801 with piece_2030 using piece_2030_mem, ⟨piece_584_mem, piece_585_mem⟩

theorem linked_13802 : Linked cell_13802 pieces := by
  link_source cell_13802 with piece_2030 using piece_2030_mem, piece_584_mem

theorem linked_13803 : Linked cell_13803 pieces := by
  link_source cell_13803 with piece_2030 using piece_2030_mem, piece_584_mem

theorem linked_13804 : Linked cell_13804 pieces := by
  link_source cell_13804 with piece_2031 using piece_2031_mem, piece_584_mem

theorem linked_13805 : Linked cell_13805 pieces := by
  link_source cell_13805 with piece_2031 using piece_2031_mem, piece_584_mem

theorem linked_13806 : Linked cell_13806 pieces := by
  link_source cell_13806 with piece_2031 using piece_2031_mem, piece_584_mem

theorem linked_13807 : Linked cell_13807 pieces := by
  link_source cell_13807 with piece_2031 using piece_2031_mem, piece_584_mem

theorem linked_13808 : Linked cell_13808 pieces := by
  link_source cell_13808 with piece_2032 using piece_2032_mem, piece_584_mem

theorem linked_13809 : Linked cell_13809 pieces := by
  link_source cell_13809 with piece_2032 using piece_2032_mem, piece_584_mem

theorem linked_13810 : Linked cell_13810 pieces := by
  link_source cell_13810 with piece_2032 using piece_2032_mem, piece_584_mem

theorem linked_13811 : Linked cell_13811 pieces := by
  link_source cell_13811 with piece_2032 using piece_2032_mem, ⟨piece_583_mem, piece_584_mem⟩

theorem linked_13812 : Linked cell_13812 pieces := by
  link_source cell_13812 with piece_2033 using piece_2033_mem, piece_584_mem

theorem linked_13813 : Linked cell_13813 pieces := by
  link_source cell_13813 with piece_2033 using piece_2033_mem, piece_584_mem

theorem linked_13814 : Linked cell_13814 pieces := by
  link_source cell_13814 with piece_2033 using piece_2033_mem, ⟨piece_583_mem, piece_584_mem⟩

theorem linked_13815 : Linked cell_13815 pieces := by
  link_source cell_13815 with piece_2033 using piece_2033_mem, piece_583_mem

theorem linked_13816 : Linked cell_13816 pieces := by
  link_source cell_13816 with piece_2034 using piece_2034_mem, piece_584_mem

theorem linked_13817 : Linked cell_13817 pieces := by
  link_source cell_13817 with piece_2034 using piece_2034_mem, ⟨piece_583_mem, piece_584_mem⟩

theorem linked_13818 : Linked cell_13818 pieces := by
  link_source cell_13818 with piece_2034 using piece_2034_mem, piece_583_mem

theorem linked_13819 : Linked cell_13819 pieces := by
  link_source cell_13819 with piece_2034 using piece_2034_mem, piece_583_mem

theorem linked_13820 : Linked cell_13820 pieces := by
  link_source cell_13820 with piece_2035 using piece_2035_mem, ⟨piece_583_mem, piece_584_mem⟩

theorem linked_13821 : Linked cell_13821 pieces := by
  link_source cell_13821 with piece_2035 using piece_2035_mem, piece_583_mem

theorem linked_13822 : Linked cell_13822 pieces := by
  link_source cell_13822 with piece_2035 using piece_2035_mem, piece_583_mem

theorem linked_13823 : Linked cell_13823 pieces := by
  link_source cell_13823 with piece_2035 using piece_2035_mem, piece_583_mem

theorem linked_13824 : Linked cell_13824 pieces := by
  link_source cell_13824 with piece_2036 using piece_2036_mem, piece_583_mem

theorem linked_13825 : Linked cell_13825 pieces := by
  link_source cell_13825 with piece_2036 using piece_2036_mem, piece_583_mem

theorem linked_13826 : Linked cell_13826 pieces := by
  link_source cell_13826 with piece_2036 using piece_2036_mem, piece_583_mem

theorem linked_13827 : Linked cell_13827 pieces := by
  link_source cell_13827 with piece_2036 using piece_2036_mem, piece_583_mem

theorem linked_13828 : Linked cell_13828 pieces := by
  link_source cell_13828 with piece_2037 using piece_2037_mem, piece_583_mem

theorem linked_13829 : Linked cell_13829 pieces := by
  link_source cell_13829 with piece_2037 using piece_2037_mem, piece_583_mem

theorem linked_13830 : Linked cell_13830 pieces := by
  link_source cell_13830 with piece_2038 using piece_2038_mem, ⟨piece_582_mem, piece_583_mem⟩

theorem linked_13831 : Linked cell_13831 pieces := by
  link_source cell_13831 with piece_2039 using piece_2039_mem, piece_583_mem

theorem linked_13832 : Linked cell_13832 pieces := by
  link_source cell_13832 with piece_2039 using piece_2039_mem, piece_583_mem

theorem linked_13833 : Linked cell_13833 pieces := by
  link_source cell_13833 with piece_2039 using piece_2039_mem, ⟨piece_582_mem, piece_583_mem⟩

theorem linked_13834 : Linked cell_13834 pieces := by
  link_source cell_13834 with piece_2039 using piece_2039_mem, piece_582_mem

theorem linked_13835 : Linked cell_13835 pieces := by
  link_source cell_13835 with piece_2040 using piece_2040_mem, piece_583_mem

theorem linked_13836 : Linked cell_13836 pieces := by
  link_source cell_13836 with piece_2040 using piece_2040_mem, ⟨piece_582_mem, piece_583_mem⟩

theorem linked_13837 : Linked cell_13837 pieces := by
  link_source cell_13837 with piece_2040 using piece_2040_mem, piece_582_mem

theorem linked_13838 : Linked cell_13838 pieces := by
  link_source cell_13838 with piece_2040 using piece_2040_mem, piece_582_mem

theorem linked_13839 : Linked cell_13839 pieces := by
  link_source cell_13839 with piece_2041 using piece_2041_mem, ⟨piece_582_mem, piece_583_mem⟩

theorem linked_13840 : Linked cell_13840 pieces := by
  link_source cell_13840 with piece_2041 using piece_2041_mem, piece_582_mem

theorem linked_13841 : Linked cell_13841 pieces := by
  link_source cell_13841 with piece_2041 using piece_2041_mem, piece_582_mem

theorem linked_13842 : Linked cell_13842 pieces := by
  link_source cell_13842 with piece_2041 using piece_2041_mem, piece_582_mem

theorem linked_13843 : Linked cell_13843 pieces := by
  link_source cell_13843 with piece_2042 using piece_2042_mem, piece_582_mem

theorem linked_13844 : Linked cell_13844 pieces := by
  link_source cell_13844 with piece_2042 using piece_2042_mem, piece_582_mem

theorem linked_13845 : Linked cell_13845 pieces := by
  link_source cell_13845 with piece_2042 using piece_2042_mem, piece_582_mem

theorem linked_13846 : Linked cell_13846 pieces := by
  link_source cell_13846 with piece_2042 using piece_2042_mem, piece_582_mem

theorem linked_13847 : Linked cell_13847 pieces := by
  link_source cell_13847 with piece_2043 using piece_2043_mem, piece_582_mem

theorem linked_13848 : Linked cell_13848 pieces := by
  link_source cell_13848 with piece_2043 using piece_2043_mem, piece_582_mem

theorem linked_13849 : Linked cell_13849 pieces := by
  link_source cell_13849 with piece_2043 using piece_2043_mem, piece_582_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0276.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0276.cells,List.forall_mem_cons]
  exact ⟨linked_13800, linked_13801, linked_13802, linked_13803, linked_13804, linked_13805, linked_13806, linked_13807, linked_13808, linked_13809, linked_13810, linked_13811, linked_13812, linked_13813, linked_13814, linked_13815, linked_13816, linked_13817, linked_13818, linked_13819, linked_13820, linked_13821, linked_13822, linked_13823, linked_13824, linked_13825, linked_13826, linked_13827, linked_13828, linked_13829, linked_13830, linked_13831, linked_13832, linked_13833, linked_13834, linked_13835, linked_13836, linked_13837, linked_13838, linked_13839, linked_13840, linked_13841, linked_13842, linked_13843, linked_13844, linked_13845, linked_13846, linked_13847, linked_13848, linked_13849, by simp⟩

theorem covered : covers (44275000000000003 / 50000000000000000 : ℚ) (356750000000000013 / 400000000000000000 : ℚ)
    (SourceCertificates.Chunk0276.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0276
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0277
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(356750000000000013 / 400000000000000000 : ℚ), (44600000000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (43428986442133 / 100000000000000 : ℚ)
  w := (2539750306827 / 2000000000000 : ℚ)
  center := (713550000000000021 / 800000000000000000 : ℚ)
  supportValue := (553647453853091 / 2500000000000000 : ℚ)
  supportSlope := (-7470769421261317 / 10000000000000000 : ℚ)
  oldCenter := (553647453853091 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_2044
  oldLo := (441 / 2000 : ℚ)
  oldHi := (221 / 1000 : ℚ)
  oldPieces := [piece_580]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13850 : Cell := { cellDefaults with
  r := (43446295797881 / 100000000000000 : ℚ)
  w := (3175732795267 / 2500000000000 : ℚ)
  newCoefficients := coefficients_2043
  oldLo := (221 / 1000 : ℚ)
  oldHi := (111 / 500 : ℚ)
  oldPieces := [piece_581, piece_582]
}

noncomputable def cell_13851 : Cell := { cellDefaults with
  domain := ⟨(44600000000000001 / 50000000000000000 : ℚ), (356850000000000013 / 400000000000000000 : ℚ)⟩
  center := (713650000000000021 / 800000000000000000 : ℚ)
  supportValue := (22163155811247023 / 100000000000000000 : ℚ)
  supportSlope := (-7472884434171297 / 10000000000000000 : ℚ)
  oldCenter := (22163155811247023 / 100000000000000000 : ℚ)
  oldLo := (443 / 2000 : ℚ)
  oldHi := (111 / 500 : ℚ)
  oldPieces := [piece_582]
}

noncomputable def cell_13852 : Cell := { cellDefaults with
  domain := ⟨(356850000000000013 / 400000000000000000 : ℚ), (178450000000000009 / 200000000000000000 : ℚ)⟩
  center := (713750000000000031 / 800000000000000000 : ℚ)
  supportValue := (886152678405827 / 4000000000000000 : ℚ)
  supportSlope := (-1493880711206003 / 2000000000000000 : ℚ)
  oldCenter := (886152678405827 / 4000000000000000 : ℚ)
  oldLo := (221 / 1000 : ℚ)
  oldHi := (111 / 500 : ℚ)
  oldPieces := [piece_581, piece_582]
}

noncomputable def cell_13853 : Cell := { cellDefaults with
  domain := ⟨(178450000000000009 / 200000000000000000 : ℚ), (356950000000000023 / 400000000000000000 : ℚ)⟩
  center := (713850000000000041 / 800000000000000000 : ℚ)
  supportValue := (11072240787647221 / 50000000000000000 : ℚ)
  supportSlope := (-933384647888631 / 1250000000000000 : ℚ)
  oldCenter := (11072240787647221 / 50000000000000000 : ℚ)
  oldLo := (221 / 1000 : ℚ)
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_581]
}

noncomputable def cell_13854 : Cell := { cellDefaults with
  domain := ⟨(356950000000000023 / 400000000000000000 : ℚ), (89250000000000007 / 100000000000000000 : ℚ)⟩
  center := (713950000000000051 / 800000000000000000 : ℚ)
  supportValue := (5533787495709041 / 25000000000000000 : ℚ)
  supportSlope := (-3731733539342379 / 5000000000000000 : ℚ)
  oldCenter := (5533787495709041 / 25000000000000000 : ℚ)
  oldLo := (221 / 1000 : ℚ)
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_581]
}

noncomputable def cell_13855 : Cell := { cellDefaults with
  domain := ⟨(89250000000000007 / 100000000000000000 : ℚ), (357050000000000023 / 400000000000000000 : ℚ)⟩
  r := (4341168905763 / 10000000000000 : ℚ)
  w := (6347285651223 / 5000000000000 : ℚ)
  center := (714050000000000051 / 800000000000000000 : ℚ)
  supportValue := (2215240268300657 / 10000000000000000 : ℚ)
  supportSlope := (-3732921255945971 / 5000000000000000 : ℚ)
  oldCenter := (2215240268300657 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2045
  oldLo := (221 / 1000 : ℚ)
  oldHi := (111 / 500 : ℚ)
  oldPieces := [piece_581, piece_582]
}

noncomputable def cell_13856 : Cell := { cellDefaults with
  domain := ⟨(357050000000000023 / 400000000000000000 : ℚ), (178550000000000009 / 200000000000000000 : ℚ)⟩
  r := (4341168905763 / 10000000000000 : ℚ)
  w := (6347285651223 / 5000000000000 : ℚ)
  center := (714150000000000041 / 800000000000000000 : ℚ)
  supportValue := (11071535873965749 / 50000000000000000 : ℚ)
  supportSlope := (-7463304767162029 / 10000000000000000 : ℚ)
  oldCenter := (11071535873965749 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2045
  oldLo := (221 / 1000 : ℚ)
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_581]
}

noncomputable def cell_13857 : Cell := { cellDefaults with
  domain := ⟨(178550000000000009 / 200000000000000000 : ℚ), (357150000000000013 / 400000000000000000 : ℚ)⟩
  r := (4341168905763 / 10000000000000 : ℚ)
  w := (6347285651223 / 5000000000000 : ℚ)
  center := (714250000000000031 / 800000000000000000 : ℚ)
  supportValue := (22133744868536137 / 100000000000000000 : ℚ)
  supportSlope := (-3729849297438399 / 5000000000000000 : ℚ)
  oldCenter := (22133744868536137 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2045
  oldLo := (221 / 1000 : ℚ)
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_581]
}

noncomputable def cell_13858 : Cell := { cellDefaults with
  domain := ⟨(357150000000000013 / 400000000000000000 : ℚ), (44650000000000001 / 50000000000000000 : ℚ)⟩
  r := (4341168905763 / 10000000000000 : ℚ)
  w := (6347285651223 / 5000000000000 : ℚ)
  center := (714350000000000021 / 800000000000000000 : ℚ)
  supportValue := (11062211247421261 / 50000000000000000 : ℚ)
  supportSlope := (-3728047822524711 / 5000000000000000 : ℚ)
  oldCenter := (11062211247421261 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2045
  oldLo := (221 / 1000 : ℚ)
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_581]
}

noncomputable def cell_13859 : Cell := { cellDefaults with
  domain := ⟨(44650000000000001 / 50000000000000000 : ℚ), (357250000000000013 / 400000000000000000 : ℚ)⟩
  r := (10848600881313 / 25000000000000 : ℚ)
  w := (6345194510683 / 5000000000000 : ℚ)
  center := (714450000000000021 / 800000000000000000 : ℚ)
  supportValue := (4428334254148899 / 20000000000000000 : ℚ)
  supportSlope := (-3729769031970047 / 5000000000000000 : ℚ)
  oldCenter := (4428334254148899 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2046
  oldLo := (221 / 1000 : ℚ)
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_581]
}

noncomputable def cell_13860 : Cell := { cellDefaults with
  domain := ⟨(357250000000000013 / 400000000000000000 : ℚ), (178650000000000009 / 200000000000000000 : ℚ)⟩
  r := (10848600881313 / 25000000000000 : ℚ)
  w := (6345194510683 / 5000000000000 : ℚ)
  center := (714550000000000031 / 800000000000000000 : ℚ)
  supportValue := (5533087274322089 / 25000000000000000 : ℚ)
  supportSlope := (-745593579624707 / 1000000000000000 : ℚ)
  oldCenter := (5533087274322089 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2046
  oldLo := (221 / 1000 : ℚ)
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_581]
}

noncomputable def cell_13861 : Cell := { cellDefaults with
  domain := ⟨(178650000000000009 / 200000000000000000 : ℚ), (357350000000000023 / 400000000000000000 : ℚ)⟩
  r := (10848600881313 / 25000000000000 : ℚ)
  w := (6345194510683 / 5000000000000 : ℚ)
  center := (714650000000000041 / 800000000000000000 : ℚ)
  supportValue := (276537892808207 / 1250000000000000 : ℚ)
  supportSlope := (-1863084186418487 / 2500000000000000 : ℚ)
  oldCenter := (276537892808207 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_2046
  oldLo := (221 / 1000 : ℚ)
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_581]
}

noncomputable def cell_13862 : Cell := { cellDefaults with
  domain := ⟨(357350000000000023 / 400000000000000000 : ℚ), (89350000000000007 / 100000000000000000 : ℚ)⟩
  r := (10848600881313 / 25000000000000 : ℚ)
  w := (6345194510683 / 5000000000000 : ℚ)
  center := (714750000000000051 / 800000000000000000 : ℚ)
  supportValue := (11056859124415709 / 50000000000000000 : ℚ)
  supportSlope := (-3724370453166053 / 5000000000000000 : ℚ)
  oldCenter := (11056859124415709 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2046
  oldLo := (221 / 1000 : ℚ)
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_581]
}

noncomputable def cell_13863 : Cell := { cellDefaults with
  domain := ⟨(89350000000000007 / 100000000000000000 : ℚ), (357450000000000023 / 400000000000000000 : ℚ)⟩
  r := (10844282695989 / 25000000000000 : ℚ)
  w := (12686206328039 / 10000000000000 : ℚ)
  center := (714850000000000051 / 800000000000000000 : ℚ)
  supportValue := (88523835240689 / 400000000000000 : ℚ)
  supportSlope := (-1490435507967163 / 2000000000000000 : ℚ)
  oldCenter := (88523835240689 / 400000000000000 : ℚ)
  newCoefficients := coefficients_2047
  oldLo := (221 / 1000 : ℚ)
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_581]
}

noncomputable def cell_13864 : Cell := { cellDefaults with
  domain := ⟨(357450000000000023 / 400000000000000000 : ℚ), (178750000000000009 / 200000000000000000 : ℚ)⟩
  r := (10844282695989 / 25000000000000 : ℚ)
  w := (12686206328039 / 10000000000000 : ℚ)
  center := (714950000000000041 / 800000000000000000 : ℚ)
  supportValue := (22121645832918121 / 100000000000000000 : ℚ)
  supportSlope := (-7448582398739879 / 10000000000000000 : ℚ)
  oldCenter := (22121645832918121 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2047
  oldLo := (221 / 1000 : ℚ)
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_581]
}

noncomputable def cell_13865 : Cell := { cellDefaults with
  domain := ⟨(178750000000000009 / 200000000000000000 : ℚ), (357550000000000013 / 400000000000000000 : ℚ)⟩
  r := (10844282695989 / 25000000000000 : ℚ)
  w := (12686206328039 / 10000000000000 : ℚ)
  center := (715050000000000031 / 800000000000000000 : ℚ)
  supportValue := (22112337347587177 / 100000000000000000 : ℚ)
  supportSlope := (-372249523174199 / 500000000000000 : ℚ)
  oldCenter := (22112337347587177 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2047
  oldLo := (221 / 1000 : ℚ)
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_581]
}

noncomputable def cell_13866 : Cell := { cellDefaults with
  domain := ⟨(357550000000000013 / 400000000000000000 : ℚ), (44700000000000001 / 50000000000000000 : ℚ)⟩
  r := (10844282695989 / 25000000000000 : ℚ)
  w := (12686206328039 / 10000000000000 : ℚ)
  center := (715150000000000021 / 800000000000000000 : ℚ)
  supportValue := (442060667003513 / 2000000000000000 : ℚ)
  supportSlope := (-3720823783333421 / 5000000000000000 : ℚ)
  oldCenter := (442060667003513 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2047
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_580, piece_581]
}

noncomputable def cell_13867 : Cell := { cellDefaults with
  domain := ⟨(44700000000000001 / 50000000000000000 : ℚ), (357650000000000013 / 400000000000000000 : ℚ)⟩
  r := (5419983711057 / 12500000000000 : ℚ)
  w := (6341011273859 / 5000000000000 : ℚ)
  center := (715250000000000021 / 800000000000000000 : ℚ)
  supportValue := (22120268132043813 / 100000000000000000 : ℚ)
  supportSlope := (-7444833237370363 / 10000000000000000 : ℚ)
  oldCenter := (22120268132043813 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2048
  oldLo := (221 / 1000 : ℚ)
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_581]
}

noncomputable def cell_13868 : Cell := { cellDefaults with
  domain := ⟨(357650000000000013 / 400000000000000000 : ℚ), (178850000000000009 / 200000000000000000 : ℚ)⟩
  r := (5419983711057 / 12500000000000 : ℚ)
  w := (6341011273859 / 5000000000000 : ℚ)
  center := (715350000000000031 / 800000000000000000 : ℚ)
  supportValue := (5527741082682161 / 25000000000000000 : ℚ)
  supportSlope := (-3720622600246931 / 5000000000000000 : ℚ)
  oldCenter := (5527741082682161 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2048
  oldLo := (221 / 1000 : ℚ)
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_581]
}

noncomputable def cell_13869 : Cell := { cellDefaults with
  domain := ⟨(178850000000000009 / 200000000000000000 : ℚ), (357750000000000023 / 400000000000000000 : ℚ)⟩
  r := (5419983711057 / 12500000000000 : ℚ)
  w := (6341011273859 / 5000000000000 : ℚ)
  center := (715450000000000041 / 800000000000000000 : ℚ)
  supportValue := (4420333002492663 / 20000000000000000 : ℚ)
  supportSlope := (-7438112906229899 / 10000000000000000 : ℚ)
  oldCenter := (4420333002492663 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2048
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_580, piece_581]
}

noncomputable def cell_13870 : Cell := { cellDefaults with
  domain := ⟨(357750000000000023 / 400000000000000000 : ℚ), (89450000000000007 / 100000000000000000 : ℚ)⟩
  r := (5419983711057 / 12500000000000 : ℚ)
  w := (6341011273859 / 5000000000000 : ℚ)
  center := (715550000000000051 / 800000000000000000 : ℚ)
  supportValue := (22092368729656553 / 100000000000000000 : ℚ)
  supportSlope := (-7435481886698769 / 10000000000000000 : ℚ)
  oldCenter := (22092368729656553 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2048
  oldPieces := [piece_580]
}

noncomputable def cell_13871 : Cell := { cellDefaults with
  domain := ⟨(89450000000000007 / 100000000000000000 : ℚ), (178941620111731847 / 200000000000000000 : ℚ)⟩
  r := (21671310136227 / 50000000000000 : ℚ)
  w := (6338918308561 / 5000000000000 : ℚ)
  center := (357841620111731861 / 400000000000000000 : ℚ)
  supportValue := (2210652635776281 / 10000000000000000 : ℚ)
  supportSlope := (-185910681818627 / 250000000000000 : ℚ)
  oldCenter := (2210652635776281 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2049
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_580, piece_581]
}

noncomputable def cell_13872 : Cell := { cellDefaults with
  domain := ⟨(178941620111731847 / 200000000000000000 : ℚ), (139830656424581 / 156250000000000 : ℚ)⟩
  r := (21671310136227 / 50000000000000 : ℚ)
  w := (6338918308561 / 5000000000000 : ℚ)
  center := (357924860335195527 / 400000000000000000 : ℚ)
  supportValue := (4418211167242257 / 20000000000000000 : ℚ)
  supportSlope := (-7431758892620339 / 10000000000000000 : ℚ)
  oldCenter := (4418211167242257 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2049
  oldPieces := [piece_580]
}

noncomputable def cell_13873 : Cell := { cellDefaults with
  domain := ⟨(139830656424581 / 156250000000000 : ℚ), (44750000000000001 / 50000000000000000 : ℚ)⟩
  r := (21671310136227 / 50000000000000 : ℚ)
  w := (6338918308561 / 5000000000000 : ℚ)
  center := (89495810055865921 / 100000000000000000 : ℚ)
  supportValue := (22080192373491253 / 100000000000000000 : ℚ)
  supportSlope := (-3713789139108571 / 5000000000000000 : ℚ)
  oldCenter := (22080192373491253 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2050
  oldPieces := [piece_580]
}

noncomputable def cell_13874 : Cell := { cellDefaults with
  domain := ⟨(44750000000000001 / 50000000000000000 : ℚ), (358050000000000013 / 400000000000000000 : ℚ)⟩
  r := (21662691492591 / 50000000000000 : ℚ)
  w := (2534729909747 / 2000000000000 : ℚ)
  center := (716050000000000021 / 800000000000000000 : ℚ)
  supportValue := (22098954753745223 / 100000000000000000 : ℚ)
  supportSlope := (-92888196650089 / 125000000000000 : ℚ)
  oldCenter := (22098954753745223 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2051
  oldHi := (443 / 2000 : ℚ)
  oldPieces := [piece_580, piece_581]
}

noncomputable def cell_13875 : Cell := { cellDefaults with
  domain := ⟨(358050000000000013 / 400000000000000000 : ℚ), (179050000000000009 / 200000000000000000 : ℚ)⟩
  r := (21662691492591 / 50000000000000 : ℚ)
  w := (2534729909747 / 2000000000000 : ℚ)
  center := (716150000000000031 / 800000000000000000 : ℚ)
  supportValue := (110448337442381 / 500000000000000 : ℚ)
  supportSlope := (-1857005116721969 / 2500000000000000 : ℚ)
  oldCenter := (110448337442381 / 500000000000000 : ℚ)
  newCoefficients := coefficients_2051
  oldPieces := [piece_580]
}

noncomputable def cell_13876 : Cell := { cellDefaults with
  domain := ⟨(179050000000000009 / 200000000000000000 : ℚ), (358150000000000023 / 400000000000000000 : ℚ)⟩
  r := (21662691492591 / 50000000000000 : ℚ)
  w := (2534729909747 / 2000000000000 : ℚ)
  center := (716250000000000041 / 800000000000000000 : ℚ)
  supportValue := (2208038469601 / 10000000000000 : ℚ)
  supportSlope := (-464027738761539 / 625000000000000 : ℚ)
  oldCenter := (2208038469601 / 10000000000000 : ℚ)
  newCoefficients := coefficients_2051
  oldPieces := [piece_580]
}

noncomputable def cell_13877 : Cell := { cellDefaults with
  domain := ⟨(358150000000000023 / 400000000000000000 : ℚ), (89550000000000007 / 100000000000000000 : ℚ)⟩
  r := (21662691492591 / 50000000000000 : ℚ)
  w := (2534729909747 / 2000000000000 : ℚ)
  center := (716350000000000051 / 800000000000000000 : ℚ)
  supportValue := (110355531861811 / 500000000000000 : ℚ)
  supportSlope := (-7420870358142797 / 10000000000000000 : ℚ)
  oldCenter := (110355531861811 / 500000000000000 : ℚ)
  newCoefficients := coefficients_2051
  oldPieces := [piece_580]
}

noncomputable def cell_13878 : Cell := { cellDefaults with
  domain := ⟨(89550000000000007 / 100000000000000000 : ℚ), (358250000000000023 / 400000000000000000 : ℚ)⟩
  r := (43308157089589 / 100000000000000 : ℚ)
  w := (12669460356313 / 10000000000000 : ℚ)
  center := (716450000000000051 / 800000000000000000 : ℚ)
  supportValue := (441766608071853 / 2000000000000000 : ℚ)
  supportSlope := (-1484859609540627 / 2000000000000000 : ℚ)
  oldCenter := (441766608071853 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2052
  oldPieces := [piece_580]
}

noncomputable def cell_13879 : Cell := { cellDefaults with
  domain := ⟨(358250000000000023 / 400000000000000000 : ℚ), (179150000000000009 / 200000000000000000 : ℚ)⟩
  r := (43308157089589 / 100000000000000 : ℚ)
  w := (12669460356313 / 10000000000000 : ℚ)
  center := (716550000000000041 / 800000000000000000 : ℚ)
  supportValue := (2207905226173477 / 10000000000000000 : ℚ)
  supportSlope := (-1855181316734641 / 2500000000000000 : ℚ)
  oldCenter := (2207905226173477 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2052
  oldPieces := [piece_580]
}

noncomputable def cell_13880 : Cell := { cellDefaults with
  domain := ⟨(179150000000000009 / 200000000000000000 : ℚ), (358350000000000013 / 400000000000000000 : ℚ)⟩
  r := (43308157089589 / 100000000000000 : ℚ)
  w := (12669460356313 / 10000000000000 : ℚ)
  center := (716650000000000031 / 800000000000000000 : ℚ)
  supportValue := (11034889291933113 / 50000000000000000 : ℚ)
  supportSlope := (-74171556654797 / 100000000000000 : ℚ)
  oldCenter := (11034889291933113 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2052
  oldPieces := [piece_580]
}

noncomputable def cell_13881 : Cell := { cellDefaults with
  domain := ⟨(358350000000000013 / 400000000000000000 : ℚ), (44800000000000001 / 50000000000000000 : ℚ)⟩
  r := (43308157089589 / 100000000000000 : ℚ)
  w := (12669460356313 / 10000000000000 : ℚ)
  center := (716750000000000021 / 800000000000000000 : ℚ)
  supportValue := (1103025468300823 / 5000000000000000 : ℚ)
  supportSlope := (-7413589237584469 / 10000000000000000 : ℚ)
  oldCenter := (1103025468300823 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2052
  oldPieces := [piece_580]
}

noncomputable def cell_13882 : Cell := { cellDefaults with
  domain := ⟨(44800000000000001 / 50000000000000000 : ℚ), (358450000000000013 / 400000000000000000 : ℚ)⟩
  r := (4329094350939 / 10000000000000 : ℚ)
  w := (2533054043879 / 2000000000000 : ℚ)
  center := (716850000000000021 / 800000000000000000 : ℚ)
  supportValue := (4415545321991271 / 20000000000000000 : ℚ)
  supportSlope := (-7417011581560087 / 10000000000000000 : ℚ)
  oldCenter := (4415545321991271 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2053
  oldPieces := [piece_580]
}

noncomputable def cell_13883 : Cell := { cellDefaults with
  domain := ⟨(358450000000000013 / 400000000000000000 : ℚ), (179250000000000009 / 200000000000000000 : ℚ)⟩
  r := (4329094350939 / 10000000000000 : ℚ)
  w := (2533054043879 / 2000000000000 : ℚ)
  center := (716950000000000031 / 800000000000000000 : ℚ)
  supportValue := (11034228785893327 / 50000000000000000 : ℚ)
  supportSlope := (-1482689166720193 / 2000000000000000 : ℚ)
  oldCenter := (11034228785893327 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2053
  oldPieces := [piece_580]
}

noncomputable def cell_13884 : Cell := { cellDefaults with
  domain := ⟨(179250000000000009 / 200000000000000000 : ℚ), (358550000000000023 / 400000000000000000 : ℚ)⟩
  r := (4329094350939 / 10000000000000 : ℚ)
  w := (2533054043879 / 2000000000000 : ℚ)
  center := (717050000000000041 / 800000000000000000 : ℚ)
  supportValue := (4411838597764427 / 20000000000000000 : ℚ)
  supportSlope := (-1852470813494637 / 2500000000000000 : ℚ)
  oldCenter := (4411838597764427 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2053
  oldPieces := [piece_580]
}

noncomputable def cell_13885 : Cell := { cellDefaults with
  domain := ⟨(358550000000000023 / 400000000000000000 : ℚ), (89650000000000007 / 100000000000000000 : ℚ)⟩
  r := (4329094350939 / 10000000000000 : ℚ)
  w := (2533054043879 / 2000000000000 : ℚ)
  center := (717150000000000051 / 800000000000000000 : ℚ)
  supportValue := (5512483210785573 / 25000000000000000 : ℚ)
  supportSlope := (-3703517661614771 / 5000000000000000 : ℚ)
  oldCenter := (5512483210785573 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2053
  oldLo := (22016759776536313 / 100000000000000000 : ℚ)
  oldPieces := [piece_579, piece_580]
}

noncomputable def cell_13886 : Cell := { cellDefaults with
  domain := ⟨(89650000000000007 / 100000000000000000 : ℚ), (358650000000000023 / 400000000000000000 : ℚ)⟩
  r := (10818435412749 / 25000000000000 : ℚ)
  w := (6330539566431 / 5000000000000 : ℚ)
  center := (717250000000000051 / 800000000000000000 : ℚ)
  supportValue := (11033571995719331 / 50000000000000000 : ℚ)
  supportSlope := (-1481948200700393 / 2000000000000000 : ℚ)
  oldCenter := (11033571995719331 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2054
  oldPieces := [piece_580]
}

noncomputable def cell_13887 : Cell := { cellDefaults with
  domain := ⟨(358650000000000023 / 400000000000000000 : ℚ), (179350000000000009 / 200000000000000000 : ℚ)⟩
  r := (10818435412749 / 25000000000000 : ℚ)
  w := (6330539566431 / 5000000000000 : ℚ)
  center := (717350000000000041 / 800000000000000000 : ℚ)
  supportValue := (11028942018555267 / 50000000000000000 : ℚ)
  supportSlope := (-7406182266787761 / 10000000000000000 : ℚ)
  oldCenter := (11028942018555267 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2054
  oldPieces := [piece_580]
}

noncomputable def cell_13888 : Cell := { cellDefaults with
  domain := ⟨(179350000000000009 / 200000000000000000 : ℚ), (358750000000000013 / 400000000000000000 : ℚ)⟩
  r := (10818435412749 / 25000000000000 : ℚ)
  w := (6330539566431 / 5000000000000 : ℚ)
  center := (717450000000000031 / 800000000000000000 : ℚ)
  supportValue := (2756078533550433 / 12500000000000000 : ℚ)
  supportSlope := (-3701767469926157 / 5000000000000000 : ℚ)
  oldCenter := (2756078533550433 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2054
  oldLo := (22016759776536313 / 100000000000000000 : ℚ)
  oldPieces := [piece_579, piece_580]
}

noncomputable def cell_13889 : Cell := { cellDefaults with
  domain := ⟨(358750000000000013 / 400000000000000000 : ℚ), (44850000000000001 / 50000000000000000 : ℚ)⟩
  r := (10818435412749 / 25000000000000 : ℚ)
  w := (6330539566431 / 5000000000000 : ℚ)
  center := (717550000000000021 / 800000000000000000 : ℚ)
  supportValue := (4407875091184339 / 20000000000000000 : ℚ)
  supportSlope := (-3700234476205303 / 5000000000000000 : ℚ)
  oldCenter := (4407875091184339 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2054
  oldLo := (22016759776536313 / 100000000000000000 : ℚ)
  oldHi := (441 / 2000 : ℚ)
  oldPieces := [piece_579]
}

noncomputable def cell_13890 : Cell := { cellDefaults with
  domain := ⟨(44850000000000001 / 50000000000000000 : ℚ), (179425000000000007 / 200000000000000000 : ℚ)⟩
  r := (4325655116277 / 10000000000000 : ℚ)
  w := (12656885721431 / 10000000000000 : ℚ)
  center := (358825000000000011 / 400000000000000000 : ℚ)
  supportValue := (22056585212302457 / 100000000000000000 : ℚ)
  supportSlope := (-370124354814827 / 500000000000000 : ℚ)
  oldCenter := (22056585212302457 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2055
  oldPieces := [piece_580]
}

noncomputable def cell_13891 : Cell := { cellDefaults with
  domain := ⟨(179425000000000007 / 200000000000000000 : ℚ), (17945000000000001 / 20000000000000000 : ℚ)⟩
  r := (4325655116277 / 10000000000000 : ℚ)
  w := (12656885721431 / 10000000000000 : ℚ)
  center := (358875000000000017 / 400000000000000000 : ℚ)
  supportValue := (22047333815347947 / 100000000000000000 : ℚ)
  supportSlope := (-1480007746582679 / 2000000000000000 : ℚ)
  oldCenter := (22047333815347947 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2055
  oldLo := (22016759776536313 / 100000000000000000 : ℚ)
  oldPieces := [piece_579, piece_580]
}

noncomputable def cell_13892 : Cell := { cellDefaults with
  domain := ⟨(17945000000000001 / 20000000000000000 : ℚ), (179475000000000013 / 200000000000000000 : ℚ)⟩
  r := (4325655116277 / 10000000000000 : ℚ)
  w := (12656885721431 / 10000000000000 : ℚ)
  center := (358925000000000023 / 400000000000000000 : ℚ)
  supportValue := (220380856164501 / 1000000000000000 : ℚ)
  supportSlope := (-1849195000528159 / 2500000000000000 : ℚ)
  oldCenter := (220380856164501 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_2055
  oldLo := (22016759776536313 / 100000000000000000 : ℚ)
  oldHi := (441 / 2000 : ℚ)
  oldPieces := [piece_579]
}

noncomputable def cell_13893 : Cell := { cellDefaults with
  domain := ⟨(179475000000000013 / 200000000000000000 : ℚ), (11218750000000001 / 12500000000000000 : ℚ)⟩
  r := (4325655116277 / 10000000000000 : ℚ)
  w := (12656885721431 / 10000000000000 : ℚ)
  center := (358975000000000029 / 400000000000000000 : ℚ)
  supportValue := (22028841858807943 / 100000000000000000 : ℚ)
  supportSlope := (-7393228577349477 / 10000000000000000 : ℚ)
  oldCenter := (22028841858807943 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2055
  oldLo := (22016759776536313 / 100000000000000000 : ℚ)
  oldHi := (441 / 2000 : ℚ)
  oldPieces := [piece_579]
}

noncomputable def cell_13894 : Cell := { cellDefaults with
  domain := ⟨(11218750000000001 / 12500000000000000 : ℚ), (179525000000000013 / 200000000000000000 : ℚ)⟩
  r := (8647874497219 / 20000000000000 : ℚ)
  w := (1581586324849 / 1250000000000 : ℚ)
  center := (359025000000000029 / 400000000000000000 : ℚ)
  supportValue := (1377877995408641 / 6250000000000000 : ℚ)
  supportSlope := (-1849136621035141 / 2500000000000000 : ℚ)
  oldCenter := (1377877995408641 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_2056
  oldLo := (22016759776536313 / 100000000000000000 : ℚ)
  oldPieces := [piece_579, piece_580]
}

noncomputable def cell_13895 : Cell := { cellDefaults with
  domain := ⟨(179525000000000013 / 200000000000000000 : ℚ), (17955000000000001 / 20000000000000000 : ℚ)⟩
  r := (8647874497219 / 20000000000000 : ℚ)
  w := (1581586324849 / 1250000000000 : ℚ)
  center := (359075000000000023 / 400000000000000000 : ℚ)
  supportValue := (22036804334529003 / 100000000000000000 : ℚ)
  supportSlope := (-3696548201888471 / 5000000000000000 : ℚ)
  oldCenter := (22036804334529003 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2056
  oldLo := (22016759776536313 / 100000000000000000 : ℚ)
  oldHi := (441 / 2000 : ℚ)
  oldPieces := [piece_579]
}

noncomputable def cell_13896 : Cell := { cellDefaults with
  domain := ⟨(17955000000000001 / 20000000000000000 : ℚ), (179575000000000007 / 200000000000000000 : ℚ)⟩
  r := (8647874497219 / 20000000000000 : ℚ)
  w := (1581586324849 / 1250000000000 : ℚ)
  center := (359125000000000017 / 400000000000000000 : ℚ)
  supportValue := (2202756517899847 / 10000000000000000 : ℚ)
  supportSlope := (-738954879799891 / 1000000000000000 : ℚ)
  oldCenter := (2202756517899847 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2056
  oldLo := (22016759776536313 / 100000000000000000 : ℚ)
  oldHi := (441 / 2000 : ℚ)
  oldPieces := [piece_579]
}

noncomputable def cell_13897 : Cell := { cellDefaults with
  domain := ⟨(179575000000000007 / 200000000000000000 : ℚ), (44900000000000001 / 50000000000000000 : ℚ)⟩
  r := (8647874497219 / 20000000000000 : ℚ)
  w := (1581586324849 / 1250000000000 : ℚ)
  center := (359175000000000011 / 400000000000000000 : ℚ)
  supportValue := (1100916522800407 / 5000000000000000 : ℚ)
  supportSlope := (-7386005162755891 / 10000000000000000 : ℚ)
  oldCenter := (1100916522800407 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2056
  oldLo := (11 / 50 : ℚ)
  oldHi := (441 / 2000 : ℚ)
  oldPieces := [piece_578, piece_579]
}

noncomputable def cell_13898 : Cell := { cellDefaults with
  domain := ⟨(44900000000000001 / 50000000000000000 : ℚ), (179625000000000007 / 200000000000000000 : ℚ)⟩
  r := (5402775769291 / 12500000000000 : ℚ)
  w := (6324247430151 / 5000000000000 : ℚ)
  center := (359225000000000011 / 400000000000000000 : ℚ)
  supportValue := (4407105826990923 / 20000000000000000 : ℚ)
  supportSlope := (-7389417449691573 / 10000000000000000 : ℚ)
  oldCenter := (4407105826990923 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2057
  oldLo := (22016759776536313 / 100000000000000000 : ℚ)
  oldHi := (441 / 2000 : ℚ)
  oldPieces := [piece_579]
}

noncomputable def cell_13899 : Cell := { cellDefaults with
  domain := ⟨(179625000000000007 / 200000000000000000 : ℚ), (17965000000000001 / 20000000000000000 : ℚ)⟩
  r := (5402775769291 / 12500000000000 : ℚ)
  w := (6324247430151 / 5000000000000 : ℚ)
  center := (359275000000000017 / 400000000000000000 : ℚ)
  supportValue := (22026294575757951 / 100000000000000000 : ℚ)
  supportSlope := (-3692936809386983 / 5000000000000000 : ℚ)
  oldCenter := (22026294575757951 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2057
  oldLo := (22016759776536313 / 100000000000000000 : ℚ)
  oldHi := (441 / 2000 : ℚ)
  oldPieces := [piece_579]
}

theorem check_13850 : cell_13850.check = true := by
  decide +kernel

theorem check_13851 : cell_13851.check = true := by
  decide +kernel

theorem check_13852 : cell_13852.check = true := by
  decide +kernel

theorem check_13853 : cell_13853.check = true := by
  decide +kernel

theorem check_13854 : cell_13854.check = true := by
  decide +kernel

theorem check_13855 : cell_13855.check = true := by
  decide +kernel

theorem check_13856 : cell_13856.check = true := by
  decide +kernel

theorem check_13857 : cell_13857.check = true := by
  decide +kernel

theorem check_13858 : cell_13858.check = true := by
  decide +kernel

theorem check_13859 : cell_13859.check = true := by
  decide +kernel

theorem check_13860 : cell_13860.check = true := by
  decide +kernel

theorem check_13861 : cell_13861.check = true := by
  decide +kernel

theorem check_13862 : cell_13862.check = true := by
  decide +kernel

theorem check_13863 : cell_13863.check = true := by
  decide +kernel

theorem check_13864 : cell_13864.check = true := by
  decide +kernel

theorem check_13865 : cell_13865.check = true := by
  decide +kernel

theorem check_13866 : cell_13866.check = true := by
  decide +kernel

theorem check_13867 : cell_13867.check = true := by
  decide +kernel

theorem check_13868 : cell_13868.check = true := by
  decide +kernel

theorem check_13869 : cell_13869.check = true := by
  decide +kernel

theorem check_13870 : cell_13870.check = true := by
  decide +kernel

theorem check_13871 : cell_13871.check = true := by
  decide +kernel

theorem check_13872 : cell_13872.check = true := by
  decide +kernel

theorem check_13873 : cell_13873.check = true := by
  decide +kernel

theorem check_13874 : cell_13874.check = true := by
  decide +kernel

theorem check_13875 : cell_13875.check = true := by
  decide +kernel

theorem check_13876 : cell_13876.check = true := by
  decide +kernel

theorem check_13877 : cell_13877.check = true := by
  decide +kernel

theorem check_13878 : cell_13878.check = true := by
  decide +kernel

theorem check_13879 : cell_13879.check = true := by
  decide +kernel

theorem check_13880 : cell_13880.check = true := by
  decide +kernel

theorem check_13881 : cell_13881.check = true := by
  decide +kernel

theorem check_13882 : cell_13882.check = true := by
  decide +kernel

theorem check_13883 : cell_13883.check = true := by
  decide +kernel

theorem check_13884 : cell_13884.check = true := by
  decide +kernel

theorem check_13885 : cell_13885.check = true := by
  decide +kernel

theorem check_13886 : cell_13886.check = true := by
  decide +kernel

theorem check_13887 : cell_13887.check = true := by
  decide +kernel

theorem check_13888 : cell_13888.check = true := by
  decide +kernel

theorem check_13889 : cell_13889.check = true := by
  decide +kernel

theorem check_13890 : cell_13890.check = true := by
  decide +kernel

theorem check_13891 : cell_13891.check = true := by
  decide +kernel

theorem check_13892 : cell_13892.check = true := by
  decide +kernel

theorem check_13893 : cell_13893.check = true := by
  decide +kernel

theorem check_13894 : cell_13894.check = true := by
  decide +kernel

theorem check_13895 : cell_13895.check = true := by
  decide +kernel

theorem check_13896 : cell_13896.check = true := by
  decide +kernel

theorem check_13897 : cell_13897.check = true := by
  decide +kernel

theorem check_13898 : cell_13898.check = true := by
  decide +kernel

theorem check_13899 : cell_13899.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13850, cell_13851, cell_13852, cell_13853, cell_13854, cell_13855, cell_13856, cell_13857, cell_13858, cell_13859, cell_13860, cell_13861, cell_13862, cell_13863, cell_13864, cell_13865, cell_13866, cell_13867, cell_13868, cell_13869, cell_13870, cell_13871, cell_13872, cell_13873, cell_13874, cell_13875, cell_13876, cell_13877, cell_13878, cell_13879, cell_13880, cell_13881, cell_13882, cell_13883, cell_13884, cell_13885, cell_13886, cell_13887, cell_13888, cell_13889, cell_13890, cell_13891, cell_13892, cell_13893, cell_13894, cell_13895, cell_13896, cell_13897, cell_13898, cell_13899]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13850, check_13851, check_13852, check_13853, check_13854, check_13855, check_13856, check_13857, check_13858, check_13859, check_13860, check_13861, check_13862, check_13863, check_13864, check_13865, check_13866, check_13867, check_13868, check_13869, check_13870, check_13871, check_13872, check_13873, check_13874, check_13875, check_13876, check_13877, check_13878, check_13879, check_13880, check_13881, check_13882, check_13883, check_13884, check_13885, check_13886, check_13887, check_13888, check_13889, check_13890, check_13891, check_13892, check_13893, check_13894, check_13895, check_13896, check_13897, check_13898, check_13899, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0277

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0277
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0277
open AnalyticBounds.ExpressionCertificate

theorem linked_13850 : Linked cell_13850 pieces := by
  link_source cell_13850 with piece_2043 using piece_2043_mem, ⟨piece_581_mem, piece_582_mem⟩

theorem linked_13851 : Linked cell_13851 pieces := by
  link_source cell_13851 with piece_2044 using piece_2044_mem, piece_582_mem

theorem linked_13852 : Linked cell_13852 pieces := by
  link_source cell_13852 with piece_2044 using piece_2044_mem, ⟨piece_581_mem, piece_582_mem⟩

theorem linked_13853 : Linked cell_13853 pieces := by
  link_source cell_13853 with piece_2044 using piece_2044_mem, piece_581_mem

theorem linked_13854 : Linked cell_13854 pieces := by
  link_source cell_13854 with piece_2044 using piece_2044_mem, piece_581_mem

theorem linked_13855 : Linked cell_13855 pieces := by
  link_source cell_13855 with piece_2045 using piece_2045_mem, ⟨piece_581_mem, piece_582_mem⟩

theorem linked_13856 : Linked cell_13856 pieces := by
  link_source cell_13856 with piece_2045 using piece_2045_mem, piece_581_mem

theorem linked_13857 : Linked cell_13857 pieces := by
  link_source cell_13857 with piece_2045 using piece_2045_mem, piece_581_mem

theorem linked_13858 : Linked cell_13858 pieces := by
  link_source cell_13858 with piece_2045 using piece_2045_mem, piece_581_mem

theorem linked_13859 : Linked cell_13859 pieces := by
  link_source cell_13859 with piece_2046 using piece_2046_mem, piece_581_mem

theorem linked_13860 : Linked cell_13860 pieces := by
  link_source cell_13860 with piece_2046 using piece_2046_mem, piece_581_mem

theorem linked_13861 : Linked cell_13861 pieces := by
  link_source cell_13861 with piece_2046 using piece_2046_mem, piece_581_mem

theorem linked_13862 : Linked cell_13862 pieces := by
  link_source cell_13862 with piece_2046 using piece_2046_mem, piece_581_mem

theorem linked_13863 : Linked cell_13863 pieces := by
  link_source cell_13863 with piece_2047 using piece_2047_mem, piece_581_mem

theorem linked_13864 : Linked cell_13864 pieces := by
  link_source cell_13864 with piece_2047 using piece_2047_mem, piece_581_mem

theorem linked_13865 : Linked cell_13865 pieces := by
  link_source cell_13865 with piece_2047 using piece_2047_mem, piece_581_mem

theorem linked_13866 : Linked cell_13866 pieces := by
  link_source cell_13866 with piece_2047 using piece_2047_mem, ⟨piece_580_mem, piece_581_mem⟩

theorem linked_13867 : Linked cell_13867 pieces := by
  link_source cell_13867 with piece_2048 using piece_2048_mem, piece_581_mem

theorem linked_13868 : Linked cell_13868 pieces := by
  link_source cell_13868 with piece_2048 using piece_2048_mem, piece_581_mem

theorem linked_13869 : Linked cell_13869 pieces := by
  link_source cell_13869 with piece_2048 using piece_2048_mem, ⟨piece_580_mem, piece_581_mem⟩

theorem linked_13870 : Linked cell_13870 pieces := by
  link_source cell_13870 with piece_2048 using piece_2048_mem, piece_580_mem

theorem linked_13871 : Linked cell_13871 pieces := by
  link_source cell_13871 with piece_2049 using piece_2049_mem, ⟨piece_580_mem, piece_581_mem⟩

theorem linked_13872 : Linked cell_13872 pieces := by
  link_source cell_13872 with piece_2049 using piece_2049_mem, piece_580_mem

theorem linked_13873 : Linked cell_13873 pieces := by
  link_source cell_13873 with piece_2050 using piece_2050_mem, piece_580_mem

theorem linked_13874 : Linked cell_13874 pieces := by
  link_source cell_13874 with piece_2051 using piece_2051_mem, ⟨piece_580_mem, piece_581_mem⟩

theorem linked_13875 : Linked cell_13875 pieces := by
  link_source cell_13875 with piece_2051 using piece_2051_mem, piece_580_mem

theorem linked_13876 : Linked cell_13876 pieces := by
  link_source cell_13876 with piece_2051 using piece_2051_mem, piece_580_mem

theorem linked_13877 : Linked cell_13877 pieces := by
  link_source cell_13877 with piece_2051 using piece_2051_mem, piece_580_mem

theorem linked_13878 : Linked cell_13878 pieces := by
  link_source cell_13878 with piece_2052 using piece_2052_mem, piece_580_mem

theorem linked_13879 : Linked cell_13879 pieces := by
  link_source cell_13879 with piece_2052 using piece_2052_mem, piece_580_mem

theorem linked_13880 : Linked cell_13880 pieces := by
  link_source cell_13880 with piece_2052 using piece_2052_mem, piece_580_mem

theorem linked_13881 : Linked cell_13881 pieces := by
  link_source cell_13881 with piece_2052 using piece_2052_mem, piece_580_mem

theorem linked_13882 : Linked cell_13882 pieces := by
  link_source cell_13882 with piece_2053 using piece_2053_mem, piece_580_mem

theorem linked_13883 : Linked cell_13883 pieces := by
  link_source cell_13883 with piece_2053 using piece_2053_mem, piece_580_mem

theorem linked_13884 : Linked cell_13884 pieces := by
  link_source cell_13884 with piece_2053 using piece_2053_mem, piece_580_mem

theorem linked_13885 : Linked cell_13885 pieces := by
  link_source cell_13885 with piece_2053 using piece_2053_mem, ⟨piece_579_mem, piece_580_mem⟩

theorem linked_13886 : Linked cell_13886 pieces := by
  link_source cell_13886 with piece_2054 using piece_2054_mem, piece_580_mem

theorem linked_13887 : Linked cell_13887 pieces := by
  link_source cell_13887 with piece_2054 using piece_2054_mem, piece_580_mem

theorem linked_13888 : Linked cell_13888 pieces := by
  link_source cell_13888 with piece_2054 using piece_2054_mem, ⟨piece_579_mem, piece_580_mem⟩

theorem linked_13889 : Linked cell_13889 pieces := by
  link_source cell_13889 with piece_2054 using piece_2054_mem, piece_579_mem

theorem linked_13890 : Linked cell_13890 pieces := by
  link_source cell_13890 with piece_2055 using piece_2055_mem, piece_580_mem

theorem linked_13891 : Linked cell_13891 pieces := by
  link_source cell_13891 with piece_2055 using piece_2055_mem, ⟨piece_579_mem, piece_580_mem⟩

theorem linked_13892 : Linked cell_13892 pieces := by
  link_source cell_13892 with piece_2055 using piece_2055_mem, piece_579_mem

theorem linked_13893 : Linked cell_13893 pieces := by
  link_source cell_13893 with piece_2055 using piece_2055_mem, piece_579_mem

theorem linked_13894 : Linked cell_13894 pieces := by
  link_source cell_13894 with piece_2056 using piece_2056_mem, ⟨piece_579_mem, piece_580_mem⟩

theorem linked_13895 : Linked cell_13895 pieces := by
  link_source cell_13895 with piece_2056 using piece_2056_mem, piece_579_mem

theorem linked_13896 : Linked cell_13896 pieces := by
  link_source cell_13896 with piece_2056 using piece_2056_mem, piece_579_mem

theorem linked_13897 : Linked cell_13897 pieces := by
  link_source cell_13897 with piece_2056 using piece_2056_mem, ⟨piece_578_mem, piece_579_mem⟩

theorem linked_13898 : Linked cell_13898 pieces := by
  link_source cell_13898 with piece_2057 using piece_2057_mem, piece_579_mem

theorem linked_13899 : Linked cell_13899 pieces := by
  link_source cell_13899 with piece_2057 using piece_2057_mem, piece_579_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0277.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0277.cells,List.forall_mem_cons]
  exact ⟨linked_13850, linked_13851, linked_13852, linked_13853, linked_13854, linked_13855, linked_13856, linked_13857, linked_13858, linked_13859, linked_13860, linked_13861, linked_13862, linked_13863, linked_13864, linked_13865, linked_13866, linked_13867, linked_13868, linked_13869, linked_13870, linked_13871, linked_13872, linked_13873, linked_13874, linked_13875, linked_13876, linked_13877, linked_13878, linked_13879, linked_13880, linked_13881, linked_13882, linked_13883, linked_13884, linked_13885, linked_13886, linked_13887, linked_13888, linked_13889, linked_13890, linked_13891, linked_13892, linked_13893, linked_13894, linked_13895, linked_13896, linked_13897, linked_13898, linked_13899, by simp⟩

theorem covered : covers (356750000000000013 / 400000000000000000 : ℚ) (17965000000000001 / 20000000000000000 : ℚ)
    (SourceCertificates.Chunk0277.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0277
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0278
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(17965000000000001 / 20000000000000000 : ℚ), (179675000000000013 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (5400631373457 / 12500000000000 : ℚ)
  w := (2528859385633 / 2000000000000 : ℚ)
  center := (359325000000000023 / 400000000000000000 : ℚ)
  supportValue := (176136515555089 / 800000000000000 : ℚ)
  supportSlope := (-7382334093287927 / 10000000000000000 : ℚ)
  oldCenter := (176136515555089 / 800000000000000 : ℚ)
  newCoefficients := coefficients_2058
  oldLo := (219 / 1000 : ℚ)
  oldHi := (439 / 2000 : ℚ)
  oldPieces := [piece_576]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13900 : Cell := { cellDefaults with
  r := (5402775769291 / 12500000000000 : ℚ)
  w := (6324247430151 / 5000000000000 : ℚ)
  newCoefficients := coefficients_2057
  oldLo := (11 / 50 : ℚ)
  oldHi := (441 / 2000 : ℚ)
  oldPieces := [piece_578, piece_579]
}

noncomputable def cell_13901 : Cell := { cellDefaults with
  domain := ⟨(179675000000000013 / 200000000000000000 : ℚ), (11231250000000001 / 12500000000000000 : ℚ)⟩
  r := (5402775769291 / 12500000000000 : ℚ)
  w := (6324247430151 / 5000000000000 : ℚ)
  center := (359375000000000029 / 400000000000000000 : ℚ)
  supportValue := (1100391936695683 / 5000000000000000 : ℚ)
  supportSlope := (-922349731240391 / 1250000000000000 : ℚ)
  oldCenter := (1100391936695683 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2057
  oldLo := (11 / 50 : ℚ)
  oldHi := (22016759776536313 / 100000000000000000 : ℚ)
  oldPieces := [piece_578]
}

noncomputable def cell_13902 : Cell := { cellDefaults with
  domain := ⟨(11231250000000001 / 12500000000000000 : ℚ), (179725000000000013 / 200000000000000000 : ℚ)⟩
  center := (359425000000000029 / 400000000000000000 : ℚ)
  supportValue := (1376564626470729 / 6250000000000000 : ℚ)
  supportSlope := (-3691102072072459 / 5000000000000000 : ℚ)
  oldCenter := (1376564626470729 / 6250000000000000 : ℚ)
  oldLo := (22016759776536313 / 100000000000000000 : ℚ)
  oldHi := (441 / 2000 : ℚ)
  oldPieces := [piece_579]
}

noncomputable def cell_13903 : Cell := { cellDefaults with
  domain := ⟨(179725000000000013 / 200000000000000000 : ℚ), (17975000000000001 / 20000000000000000 : ℚ)⟩
  center := (359475000000000023 / 400000000000000000 : ℚ)
  supportValue := (22015808476279 / 100000000000000 : ℚ)
  supportSlope := (-3689334399115561 / 5000000000000000 : ℚ)
  oldCenter := (22015808476279 / 100000000000000 : ℚ)
  oldLo := (11 / 50 : ℚ)
  oldHi := (441 / 2000 : ℚ)
  oldPieces := [piece_578, piece_579]
}

noncomputable def cell_13904 : Cell := { cellDefaults with
  domain := ⟨(17975000000000001 / 20000000000000000 : ℚ), (179775000000000007 / 200000000000000000 : ℚ)⟩
  center := (359525000000000017 / 400000000000000000 : ℚ)
  supportValue := (4401317469070617 / 20000000000000000 : ℚ)
  supportSlope := (-7375136051362747 / 10000000000000000 : ℚ)
  oldCenter := (4401317469070617 / 20000000000000000 : ℚ)
  oldLo := (11 / 50 : ℚ)
  oldHi := (22016759776536313 / 100000000000000000 : ℚ)
  oldPieces := [piece_578]
}

noncomputable def cell_13905 : Cell := { cellDefaults with
  domain := ⟨(179775000000000007 / 200000000000000000 : ℚ), (44950000000000001 / 50000000000000000 : ℚ)⟩
  center := (359575000000000011 / 400000000000000000 : ℚ)
  supportValue := (21997370131452257 / 100000000000000000 : ℚ)
  supportSlope := (-368634977256743 / 500000000000000 : ℚ)
  oldCenter := (21997370131452257 / 100000000000000000 : ℚ)
  oldLo := (439 / 2000 : ℚ)
  oldHi := (22016759776536313 / 100000000000000000 : ℚ)
  oldPieces := [piece_577, piece_578]
}

noncomputable def cell_13906 : Cell := { cellDefaults with
  domain := ⟨(44950000000000001 / 50000000000000000 : ℚ), (179825000000000007 / 200000000000000000 : ℚ)⟩
  r := (21593954033953 / 50000000000000 : ℚ)
  w := (3160024502307 / 2500000000000 : ℚ)
  center := (359625000000000011 / 400000000000000000 : ℚ)
  supportValue := (22014559272098497 / 100000000000000000 : ℚ)
  supportSlope := (-7375008302389577 / 10000000000000000 : ℚ)
  oldCenter := (22014559272098497 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2059
  oldLo := (11 / 50 : ℚ)
  oldHi := (441 / 2000 : ℚ)
  oldPieces := [piece_578, piece_579]
}

noncomputable def cell_13907 : Cell := { cellDefaults with
  domain := ⟨(179825000000000007 / 200000000000000000 : ℚ), (17985000000000001 / 20000000000000000 : ℚ)⟩
  r := (21593954033953 / 50000000000000 : ℚ)
  w := (3160024502307 / 2500000000000 : ℚ)
  center := (359675000000000017 / 400000000000000000 : ℚ)
  supportValue := (2750667839355457 / 12500000000000000 : ℚ)
  supportSlope := (-3685739506551047 / 5000000000000000 : ℚ)
  oldCenter := (2750667839355457 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2059
  oldLo := (11 / 50 : ℚ)
  oldHi := (22016759776536313 / 100000000000000000 : ℚ)
  oldPieces := [piece_578]
}

noncomputable def cell_13908 : Cell := { cellDefaults with
  domain := ⟨(17985000000000001 / 20000000000000000 : ℚ), (179875000000000013 / 200000000000000000 : ℚ)⟩
  r := (21593954033953 / 50000000000000 : ℚ)
  w := (3160024502307 / 2500000000000 : ℚ)
  center := (359725000000000023 / 400000000000000000 : ℚ)
  supportValue := (10998064917839487 / 50000000000000000 : ℚ)
  supportSlope := (-7369232975595001 / 10000000000000000 : ℚ)
  oldCenter := (10998064917839487 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2059
  oldLo := (439 / 2000 : ℚ)
  oldHi := (22016759776536313 / 100000000000000000 : ℚ)
  oldPieces := [piece_577, piece_578]
}

noncomputable def cell_13909 : Cell := { cellDefaults with
  domain := ⟨(179875000000000013 / 200000000000000000 : ℚ), (11243750000000001 / 12500000000000000 : ℚ)⟩
  r := (21593954033953 / 50000000000000 : ℚ)
  w := (3160024502307 / 2500000000000 : ℚ)
  center := (359775000000000029 / 400000000000000000 : ℚ)
  supportValue := (2198692036003527 / 10000000000000000 : ℚ)
  supportSlope := (-1841453511873593 / 2500000000000000 : ℚ)
  oldCenter := (2198692036003527 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2059
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13910 : Cell := { cellDefaults with
  domain := ⟨(11243750000000001 / 12500000000000000 : ℚ), (179925000000000013 / 200000000000000000 : ℚ)⟩
  r := (43170776040527 / 100000000000000 : ℚ)
  w := (3158974116117 / 2500000000000 : ℚ)
  center := (359825000000000029 / 400000000000000000 : ℚ)
  supportValue := (2750513639308461 / 12500000000000000 : ℚ)
  supportSlope := (-920987987836463 / 1250000000000000 : ℚ)
  oldCenter := (2750513639308461 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2060
  oldLo := (439 / 2000 : ℚ)
  oldHi := (22016759776536313 / 100000000000000000 : ℚ)
  oldPieces := [piece_577, piece_578]
}

noncomputable def cell_13911 : Cell := { cellDefaults with
  domain := ⟨(179925000000000013 / 200000000000000000 : ℚ), (17995000000000001 / 20000000000000000 : ℚ)⟩
  r := (43170776040527 / 100000000000000 : ℚ)
  w := (3158974116117 / 2500000000000 : ℚ)
  center := (359875000000000023 / 400000000000000000 : ℚ)
  supportValue := (10997450282361551 / 50000000000000000 : ℚ)
  supportSlope := (-7365694741486623 / 10000000000000000 : ℚ)
  oldCenter := (10997450282361551 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2060
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13912 : Cell := { cellDefaults with
  domain := ⟨(17995000000000001 / 20000000000000000 : ℚ), (179975000000000007 / 200000000000000000 : ℚ)⟩
  r := (43170776040527 / 100000000000000 : ℚ)
  w := (3158974116117 / 2500000000000 : ℚ)
  center := (359925000000000017 / 400000000000000000 : ℚ)
  supportValue := (2748211955935163 / 12500000000000000 : ℚ)
  supportSlope := (-368108460401739 / 500000000000000 : ℚ)
  oldCenter := (2748211955935163 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2060
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13913 : Cell := { cellDefaults with
  domain := ⟨(179975000000000007 / 200000000000000000 : ℚ), (45000000000000001 / 50000000000000000 : ℚ)⟩
  r := (43170776040527 / 100000000000000 : ℚ)
  w := (3158974116117 / 2500000000000 : ℚ)
  center := (359975000000000011 / 400000000000000000 : ℚ)
  supportValue := (21976495135205973 / 100000000000000000 : ℚ)
  supportSlope := (-3679323397905329 / 5000000000000000 : ℚ)
  oldCenter := (21976495135205973 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2060
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13914 : Cell := { cellDefaults with
  domain := ⟨(45000000000000001 / 50000000000000000 : ℚ), (45011173184357543 / 50000000000000000 : ℚ)⟩
  r := (10788413956127 / 25000000000000 : ℚ)
  w := (12631694249081 / 10000000000000 : ℚ)
  center := (11251396648044693 / 12500000000000000 : ℚ)
  supportValue := (219900692212653 / 1000000000000000 : ℚ)
  supportSlope := (-1840165909553903 / 2500000000000000 : ℚ)
  oldCenter := (219900692212653 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_2061
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13915 : Cell := { cellDefaults with
  domain := ⟨(45011173184357543 / 50000000000000000 : ℚ), (9004469273743017 / 10000000000000000 : ℚ)⟩
  r := (10788413956127 / 25000000000000 : ℚ)
  w := (12631694249081 / 10000000000000 : ℚ)
  center := (22508379888268157 / 25000000000000000 : ℚ)
  supportValue := (10986813913436551 / 50000000000000000 : ℚ)
  supportSlope := (-919296514519169 / 1250000000000000 : ℚ)
  oldCenter := (10986813913436551 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2061
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13916 : Cell := { cellDefaults with
  domain := ⟨(9004469273743017 / 10000000000000000 : ℚ), (11256250000000001 / 12500000000000000 : ℚ)⟩
  r := (10788413956127 / 25000000000000 : ℚ)
  w := (12631694249081 / 10000000000000 : ℚ)
  center := (90047346368715089 / 100000000000000000 : ℚ)
  supportValue := (5490860495936839 / 25000000000000000 : ℚ)
  supportSlope := (-1470096762422383 / 2000000000000000 : ℚ)
  oldCenter := (5490860495936839 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2062
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13917 : Cell := { cellDefaults with
  domain := ⟨(11256250000000001 / 12500000000000000 : ℚ), (18015000000000001 / 20000000000000000 : ℚ)⟩
  r := (2696034256193 / 6250000000000 : ℚ)
  w := (12627491588451 / 10000000000000 : ℚ)
  center := (180125000000000013 / 200000000000000000 : ℚ)
  supportValue := (2197868416407801 / 10000000000000000 : ℚ)
  supportSlope := (-1838283958895069 / 2500000000000000 : ℚ)
  oldCenter := (2197868416407801 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2063
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13918 : Cell := { cellDefaults with
  domain := ⟨(18015000000000001 / 20000000000000000 : ℚ), (180175000000000007 / 200000000000000000 : ℚ)⟩
  r := (2696034256193 / 6250000000000 : ℚ)
  w := (12627491588451 / 10000000000000 : ℚ)
  center := (360325000000000017 / 400000000000000000 : ℚ)
  supportValue := (21964886586815233 / 100000000000000000 : ℚ)
  supportSlope := (-146957331557047 / 200000000000000 : ℚ)
  oldCenter := (21964886586815233 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2063
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13919 : Cell := { cellDefaults with
  domain := ⟨(180175000000000007 / 200000000000000000 : ℚ), (45050000000000001 / 50000000000000000 : ℚ)⟩
  r := (2696034256193 / 6250000000000 : ℚ)
  w := (12627491588451 / 10000000000000 : ℚ)
  center := (360375000000000011 / 400000000000000000 : ℚ)
  supportValue := (2195570394426173 / 10000000000000000 : ℚ)
  supportSlope := (-7344357874315747 / 10000000000000000 : ℚ)
  oldCenter := (2195570394426173 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2063
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13920 : Cell := { cellDefaults with
  domain := ⟨(45050000000000001 / 50000000000000000 : ℚ), (18025000000000001 / 20000000000000000 : ℚ)⟩
  r := (2694965758077 / 6250000000000 : ℚ)
  w := (6311643699707 / 5000000000000 : ℚ)
  center := (180225000000000007 / 200000000000000000 : ℚ)
  supportValue := (1098414865206979 / 5000000000000000 : ℚ)
  supportSlope := (-734599754147381 / 1000000000000000 : ℚ)
  oldCenter := (1098414865206979 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2064
  oldLo := (439 / 2000 : ℚ)
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_577]
}

noncomputable def cell_13921 : Cell := { cellDefaults with
  domain := ⟨(18025000000000001 / 20000000000000000 : ℚ), (180275000000000013 / 200000000000000000 : ℚ)⟩
  r := (2694965758077 / 6250000000000 : ℚ)
  w := (6311643699707 / 5000000000000 : ℚ)
  center := (360525000000000023 / 400000000000000000 : ℚ)
  supportValue := (686078534651179 / 3125000000000000 : ℚ)
  supportSlope := (-917593846236243 / 1250000000000000 : ℚ)
  oldCenter := (686078534651179 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_2064
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_576, piece_577]
}

noncomputable def cell_13922 : Cell := { cellDefaults with
  domain := ⟨(180275000000000013 / 200000000000000000 : ℚ), (11268750000000001 / 12500000000000000 : ℚ)⟩
  r := (2694965758077 / 6250000000000 : ℚ)
  w := (6311643699707 / 5000000000000 : ℚ)
  center := (360575000000000029 / 400000000000000000 : ℚ)
  supportValue := (2194533849037567 / 10000000000000000 : ℚ)
  supportSlope := (-733862151921639 / 1000000000000000 : ℚ)
  oldCenter := (2194533849037567 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2064
  oldPieces := [piece_576]
}

noncomputable def cell_13923 : Cell := { cellDefaults with
  domain := ⟨(11268750000000001 / 12500000000000000 : ℚ), (18035000000000001 / 20000000000000000 : ℚ)⟩
  r := (68963787033 / 160000000000 : ℚ)
  w := (3154770198811 / 2500000000000 : ℚ)
  center := (180325000000000013 / 200000000000000000 : ℚ)
  supportValue := (1097896731276581 / 5000000000000000 : ℚ)
  supportSlope := (-183474271545103 / 250000000000000 : ℚ)
  oldCenter := (1097896731276581 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2065
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_576, piece_577]
}

noncomputable def cell_13924 : Cell := { cellDefaults with
  domain := ⟨(18035000000000001 / 20000000000000000 : ℚ), (180375000000000007 / 200000000000000000 : ℚ)⟩
  r := (68963787033 / 160000000000 : ℚ)
  w := (3154770198811 / 2500000000000 : ℚ)
  center := (360725000000000017 / 400000000000000000 : ℚ)
  supportValue := (10972081338924801 / 50000000000000000 : ℚ)
  supportSlope := (-3667505228249097 / 5000000000000000 : ℚ)
  oldCenter := (10972081338924801 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2065
  oldPieces := [piece_576]
}

noncomputable def cell_13925 : Cell := { cellDefaults with
  domain := ⟨(180375000000000007 / 200000000000000000 : ℚ), (45100000000000001 / 50000000000000000 : ℚ)⟩
  r := (68963787033 / 160000000000 : ℚ)
  w := (3154770198811 / 2500000000000 : ℚ)
  center := (360775000000000011 / 400000000000000000 : ℚ)
  supportValue := (274187451254839 / 1250000000000000 : ℚ)
  supportSlope := (-1832877464115421 / 2500000000000000 : ℚ)
  oldCenter := (274187451254839 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_2065
  oldPieces := [piece_576]
}

noncomputable def cell_13926 : Cell := { cellDefaults with
  domain := ⟨(45100000000000001 / 50000000000000000 : ℚ), (180425000000000007 / 200000000000000000 : ℚ)⟩
  r := (10771323466193 / 25000000000000 : ℚ)
  w := (788429522777 / 625000000000 : ℚ)
  center := (360825000000000011 / 400000000000000000 : ℚ)
  supportValue := (21952160963020903 / 100000000000000000 : ℚ)
  supportSlope := (-458367745541311 / 625000000000000 : ℚ)
  oldCenter := (21952160963020903 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2066
  oldHi := (11 / 50 : ℚ)
  oldPieces := [piece_576, piece_577]
}

noncomputable def cell_13927 : Cell := { cellDefaults with
  domain := ⟨(180425000000000007 / 200000000000000000 : ℚ), (18045000000000001 / 20000000000000000 : ℚ)⟩
  r := (10771323466193 / 25000000000000 : ℚ)
  w := (788429522777 / 625000000000 : ℚ)
  center := (360875000000000017 / 400000000000000000 : ℚ)
  supportValue := (137143718281853 / 625000000000000 : ℚ)
  supportSlope := (-733140455782789 / 1000000000000000 : ℚ)
  oldCenter := (137143718281853 / 625000000000000 : ℚ)
  newCoefficients := coefficients_2066
  oldPieces := [piece_576]
}

noncomputable def cell_13928 : Cell := { cellDefaults with
  domain := ⟨(18045000000000001 / 20000000000000000 : ℚ), (180475000000000013 / 200000000000000000 : ℚ)⟩
  r := (10771323466193 / 25000000000000 : ℚ)
  w := (788429522777 / 625000000000 : ℚ)
  center := (360925000000000023 / 400000000000000000 : ℚ)
  supportValue := (21933832852686563 / 100000000000000000 : ℚ)
  supportSlope := (-29311630687797 / 40000000000000 : ℚ)
  oldCenter := (21933832852686563 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2066
  oldPieces := [piece_576]
}

noncomputable def cell_13929 : Cell := { cellDefaults with
  domain := ⟨(180475000000000013 / 200000000000000000 : ℚ), (11281250000000001 / 12500000000000000 : ℚ)⟩
  r := (10771323466193 / 25000000000000 : ℚ)
  w := (788429522777 / 625000000000 : ℚ)
  center := (360975000000000029 / 400000000000000000 : ℚ)
  supportValue := (4384935029891383 / 20000000000000000 : ℚ)
  supportSlope := (-7324413870159151 / 10000000000000000 : ℚ)
  oldCenter := (4384935029891383 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2066
  oldPieces := [piece_576]
}

noncomputable def cell_13930 : Cell := { cellDefaults with
  domain := ⟨(11281250000000001 / 12500000000000000 : ℚ), (18055000000000001 / 20000000000000000 : ℚ)⟩
  r := (10767058009819 / 25000000000000 : ℚ)
  w := (12610662663969 / 10000000000000 : ℚ)
  center := (180525000000000013 / 200000000000000000 : ℚ)
  supportValue := (2193727141980989 / 10000000000000000 : ℚ)
  supportSlope := (-1831514293332501 / 2500000000000000 : ℚ)
  oldCenter := (2193727141980989 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2067
  oldPieces := [piece_576]
}

noncomputable def cell_13931 : Cell := { cellDefaults with
  domain := ⟨(18055000000000001 / 20000000000000000 : ℚ), (180575000000000007 / 200000000000000000 : ℚ)⟩
  r := (10767058009819 / 25000000000000 : ℚ)
  w := (12610662663969 / 10000000000000 : ℚ)
  center := (361125000000000017 / 400000000000000000 : ℚ)
  supportValue := (548088115337229 / 2500000000000000 : ℚ)
  supportSlope := (-1830205122742787 / 2500000000000000 : ℚ)
  oldCenter := (548088115337229 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_2067
  oldPieces := [piece_576]
}

noncomputable def cell_13932 : Cell := { cellDefaults with
  domain := ⟨(180575000000000007 / 200000000000000000 : ℚ), (45150000000000001 / 50000000000000000 : ℚ)⟩
  r := (10767058009819 / 25000000000000 : ℚ)
  w := (12610662663969 / 10000000000000 : ℚ)
  center := (361175000000000011 / 400000000000000000 : ℚ)
  supportValue := (21914375764999117 / 100000000000000000 : ℚ)
  supportSlope := (-7317333469353027 / 10000000000000000 : ℚ)
  oldCenter := (21914375764999117 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2067
  oldPieces := [piece_576]
}

noncomputable def cell_13933 : Cell := { cellDefaults with
  domain := ⟨(45150000000000001 / 50000000000000000 : ℚ), (18065000000000001 / 20000000000000000 : ℚ)⟩
  r := (10762795512459 / 25000000000000 : ℚ)
  w := (157580635287 / 125000000000 : ℚ)
  center := (180625000000000007 / 200000000000000000 : ℚ)
  supportValue := (10963486094013031 / 50000000000000000 : ℚ)
  supportSlope := (-1829743916147211 / 2500000000000000 : ℚ)
  oldCenter := (10963486094013031 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2068
  oldPieces := [piece_576]
}

noncomputable def cell_13934 : Cell := { cellDefaults with
  domain := ⟨(18065000000000001 / 20000000000000000 : ℚ), (180675000000000013 / 200000000000000000 : ℚ)⟩
  r := (10762795512459 / 25000000000000 : ℚ)
  w := (157580635287 / 125000000000 : ℚ)
  center := (361325000000000023 / 400000000000000000 : ℚ)
  supportValue := (5478309664274729 / 25000000000000000 : ℚ)
  supportSlope := (-1828437317006107 / 2500000000000000 : ℚ)
  oldCenter := (5478309664274729 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2068
  oldPieces := [piece_576]
}

noncomputable def cell_13935 : Cell := { cellDefaults with
  domain := ⟨(180675000000000013 / 200000000000000000 : ℚ), (11293750000000001 / 12500000000000000 : ℚ)⟩
  r := (10762795512459 / 25000000000000 : ℚ)
  w := (157580635287 / 125000000000 : ℚ)
  center := (361375000000000029 / 400000000000000000 : ℚ)
  supportValue := (21904098643361633 / 100000000000000000 : ℚ)
  supportSlope := (-7310341062071413 / 10000000000000000 : ℚ)
  oldCenter := (21904098643361633 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2068
  oldLo := (437 / 2000 : ℚ)
  oldPieces := [piece_575, piece_576]
}

noncomputable def cell_13936 : Cell := { cellDefaults with
  domain := ⟨(11293750000000001 / 12500000000000000 : ℚ), (180750000000000011 / 200000000000000000 : ℚ)⟩
  r := (43034144013049 / 100000000000000 : ℚ)
  w := (393819972959 / 312500000000 : ℚ)
  center := (361450000000000027 / 400000000000000000 : ℚ)
  supportValue := (1095834560912739 / 5000000000000000 : ℚ)
  supportSlope := (-1827977222135973 / 2500000000000000 : ℚ)
  oldCenter := (1095834560912739 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2069
  oldPieces := [piece_576]
}

noncomputable def cell_13937 : Cell := { cellDefaults with
  domain := ⟨(180750000000000011 / 200000000000000000 : ℚ), (361550000000000017 / 400000000000000000 : ℚ)⟩
  r := (43034144013049 / 100000000000000 : ℚ)
  w := (393819972959 / 312500000000 : ℚ)
  center := (723050000000000039 / 800000000000000000 : ℚ)
  supportValue := (109514854676317 / 500000000000000 : ℚ)
  supportSlope := (-1461386914886877 / 2000000000000000 : ℚ)
  oldCenter := (109514854676317 / 500000000000000 : ℚ)
  newCoefficients := coefficients_2069
  oldLo := (437 / 2000 : ℚ)
  oldPieces := [piece_575, piece_576]
}

noncomputable def cell_13938 : Cell := { cellDefaults with
  domain := ⟨(361550000000000017 / 400000000000000000 : ℚ), (90400000000000003 / 100000000000000000 : ℚ)⟩
  r := (43034144013049 / 100000000000000 : ℚ)
  w := (393819972959 / 312500000000 : ℚ)
  center := (723150000000000029 / 800000000000000000 : ℚ)
  supportValue := (4378767714926759 / 20000000000000000 : ℚ)
  supportSlope := (-3652297729282249 / 5000000000000000 : ℚ)
  oldCenter := (4378767714926759 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2069
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13939 : Cell := { cellDefaults with
  domain := ⟨(90400000000000003 / 100000000000000000 : ℚ), (180850000000000011 / 200000000000000000 : ℚ)⟩
  r := (21508558663821 / 50000000000000 : ℚ)
  w := (1574753140047 / 1250000000000 : ℚ)
  center := (361650000000000017 / 400000000000000000 : ℚ)
  supportValue := (2190643330334321 / 10000000000000000 : ℚ)
  supportSlope := (-1461012665122961 / 2000000000000000 : ℚ)
  oldCenter := (2190643330334321 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2070
  oldLo := (437 / 2000 : ℚ)
  oldPieces := [piece_575, piece_576]
}

noncomputable def cell_13940 : Cell := { cellDefaults with
  domain := ⟨(180850000000000011 / 200000000000000000 : ℚ), (361750000000000027 / 400000000000000000 : ℚ)⟩
  r := (21508558663821 / 50000000000000 : ℚ)
  w := (1574753140047 / 1250000000000 : ℚ)
  center := (723450000000000049 / 800000000000000000 : ℚ)
  supportValue := (2189272486499347 / 10000000000000000 : ℚ)
  supportSlope := (-7301026923229139 / 10000000000000000 : ℚ)
  oldCenter := (2189272486499347 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2070
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13941 : Cell := { cellDefaults with
  domain := ⟨(361750000000000027 / 400000000000000000 : ℚ), (11306250000000001 / 12500000000000000 : ℚ)⟩
  r := (21508558663821 / 50000000000000 : ℚ)
  w := (1574753140047 / 1250000000000 : ℚ)
  center := (723550000000000059 / 800000000000000000 : ℚ)
  supportValue := (5470900187304873 / 25000000000000000 : ℚ)
  supportSlope := (-3648777349704781 / 5000000000000000 : ℚ)
  oldCenter := (5470900187304873 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2070
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13942 : Cell := { cellDefaults with
  domain := ⟨(11306250000000001 / 12500000000000000 : ℚ), (180950000000000011 / 200000000000000000 : ℚ)⟩
  r := (43000101477869 / 100000000000000 : ℚ)
  w := (12593809004787 / 10000000000000 : ℚ)
  center := (361850000000000027 / 400000000000000000 : ℚ)
  supportValue := (21896197865603953 / 100000000000000000 : ℚ)
  supportSlope := (-7298798816535897 / 10000000000000000 : ℚ)
  oldCenter := (21896197865603953 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2071
  oldLo := (437 / 2000 : ℚ)
  oldPieces := [piece_575, piece_576]
}

noncomputable def cell_13943 : Cell := { cellDefaults with
  domain := ⟨(180950000000000011 / 200000000000000000 : ℚ), (361950000000000017 / 400000000000000000 : ℚ)⟩
  r := (43000101477869 / 100000000000000 : ℚ)
  w := (12593809004787 / 10000000000000 : ℚ)
  center := (723850000000000039 / 800000000000000000 : ℚ)
  supportValue := (2188250141534801 / 10000000000000000 : ℚ)
  supportSlope := (-7293995419455809 / 10000000000000000 : ℚ)
  oldCenter := (2188250141534801 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2071
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13944 : Cell := { cellDefaults with
  domain := ⟨(361950000000000017 / 400000000000000000 : ℚ), (90500000000000003 / 100000000000000000 : ℚ)⟩
  r := (43000101477869 / 100000000000000 : ℚ)
  w := (12593809004787 / 10000000000000 : ℚ)
  center := (723950000000000029 / 800000000000000000 : ℚ)
  supportValue := (4374677216951371 / 20000000000000000 : ℚ)
  supportSlope := (-7290529912259043 / 10000000000000000 : ℚ)
  oldCenter := (4374677216951371 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2071
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13945 : Cell := { cellDefaults with
  domain := ⟨(90500000000000003 / 100000000000000000 : ℚ), (181050000000000011 / 200000000000000000 : ℚ)⟩
  r := (42983096974147 / 100000000000000 : ℚ)
  w := (12589591004719 / 10000000000000 : ℚ)
  center := (362050000000000017 / 400000000000000000 : ℚ)
  supportValue := (5471495856779799 / 25000000000000000 : ℚ)
  supportSlope := (-1458434776997329 / 2000000000000000 : ℚ)
  oldCenter := (5471495856779799 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2072
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13946 : Cell := { cellDefaults with
  domain := ⟨(181050000000000011 / 200000000000000000 : ℚ), (362150000000000027 / 400000000000000000 : ℚ)⟩
  r := (42983096974147 / 100000000000000 : ℚ)
  w := (12589591004719 / 10000000000000 : ℚ)
  center := (724250000000000049 / 800000000000000000 : ℚ)
  supportValue := (2187230014812827 / 10000000000000000 : ℚ)
  supportSlope := (-3643489794135837 / 5000000000000000 : ℚ)
  oldCenter := (2187230014812827 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2072
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13947 : Cell := { cellDefaults with
  domain := ⟨(362150000000000027 / 400000000000000000 : ℚ), (11318750000000001 / 12500000000000000 : ℚ)⟩
  r := (42983096974147 / 100000000000000 : ℚ)
  w := (12589591004719 / 10000000000000 : ℚ)
  center := (724350000000000059 / 800000000000000000 : ℚ)
  supportValue := (21863193583143203 / 100000000000000000 : ℚ)
  supportSlope := (-910440096918339 / 1250000000000000 : ℚ)
  oldCenter := (21863193583143203 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2072
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13948 : Cell := { cellDefaults with
  domain := ⟨(11318750000000001 / 12500000000000000 : ℚ), (90573882681564249 / 100000000000000000 : ℚ)⟩
  r := (42966104668781 / 100000000000000 : ℚ)
  w := (12585371474949 / 10000000000000 : ℚ)
  center := (181123882681564257 / 200000000000000000 : ℚ)
  supportValue := (5469049145522699 / 25000000000000000 : ℚ)
  supportSlope := (-3642658878243651 / 5000000000000000 : ℚ)
  oldCenter := (5469049145522699 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2073
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13949 : Cell := { cellDefaults with
  domain := ⟨(90573882681564249 / 100000000000000000 : ℚ), (9059776536312849 / 10000000000000000 : ℚ)⟩
  r := (42966104668781 / 100000000000000 : ℚ)
  w := (12585371474949 / 10000000000000 : ℚ)
  center := (181171648044692739 / 200000000000000000 : ℚ)
  supportValue := (2185880515927997 / 10000000000000000 : ℚ)
  supportSlope := (-7278715746072529 / 10000000000000000 : ℚ)
  oldCenter := (2185880515927997 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2073
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

theorem check_13900 : cell_13900.check = true := by
  decide +kernel

theorem check_13901 : cell_13901.check = true := by
  decide +kernel

theorem check_13902 : cell_13902.check = true := by
  decide +kernel

theorem check_13903 : cell_13903.check = true := by
  decide +kernel

theorem check_13904 : cell_13904.check = true := by
  decide +kernel

theorem check_13905 : cell_13905.check = true := by
  decide +kernel

theorem check_13906 : cell_13906.check = true := by
  decide +kernel

theorem check_13907 : cell_13907.check = true := by
  decide +kernel

theorem check_13908 : cell_13908.check = true := by
  decide +kernel

theorem check_13909 : cell_13909.check = true := by
  decide +kernel

theorem check_13910 : cell_13910.check = true := by
  decide +kernel

theorem check_13911 : cell_13911.check = true := by
  decide +kernel

theorem check_13912 : cell_13912.check = true := by
  decide +kernel

theorem check_13913 : cell_13913.check = true := by
  decide +kernel

theorem check_13914 : cell_13914.check = true := by
  decide +kernel

theorem check_13915 : cell_13915.check = true := by
  decide +kernel

theorem check_13916 : cell_13916.check = true := by
  decide +kernel

theorem check_13917 : cell_13917.check = true := by
  decide +kernel

theorem check_13918 : cell_13918.check = true := by
  decide +kernel

theorem check_13919 : cell_13919.check = true := by
  decide +kernel

theorem check_13920 : cell_13920.check = true := by
  decide +kernel

theorem check_13921 : cell_13921.check = true := by
  decide +kernel

theorem check_13922 : cell_13922.check = true := by
  decide +kernel

theorem check_13923 : cell_13923.check = true := by
  decide +kernel

theorem check_13924 : cell_13924.check = true := by
  decide +kernel

theorem check_13925 : cell_13925.check = true := by
  decide +kernel

theorem check_13926 : cell_13926.check = true := by
  decide +kernel

theorem check_13927 : cell_13927.check = true := by
  decide +kernel

theorem check_13928 : cell_13928.check = true := by
  decide +kernel

theorem check_13929 : cell_13929.check = true := by
  decide +kernel

theorem check_13930 : cell_13930.check = true := by
  decide +kernel

theorem check_13931 : cell_13931.check = true := by
  decide +kernel

theorem check_13932 : cell_13932.check = true := by
  decide +kernel

theorem check_13933 : cell_13933.check = true := by
  decide +kernel

theorem check_13934 : cell_13934.check = true := by
  decide +kernel

theorem check_13935 : cell_13935.check = true := by
  decide +kernel

theorem check_13936 : cell_13936.check = true := by
  decide +kernel

theorem check_13937 : cell_13937.check = true := by
  decide +kernel

theorem check_13938 : cell_13938.check = true := by
  decide +kernel

theorem check_13939 : cell_13939.check = true := by
  decide +kernel

theorem check_13940 : cell_13940.check = true := by
  decide +kernel

theorem check_13941 : cell_13941.check = true := by
  decide +kernel

theorem check_13942 : cell_13942.check = true := by
  decide +kernel

theorem check_13943 : cell_13943.check = true := by
  decide +kernel

theorem check_13944 : cell_13944.check = true := by
  decide +kernel

theorem check_13945 : cell_13945.check = true := by
  decide +kernel

theorem check_13946 : cell_13946.check = true := by
  decide +kernel

theorem check_13947 : cell_13947.check = true := by
  decide +kernel

theorem check_13948 : cell_13948.check = true := by
  decide +kernel

theorem check_13949 : cell_13949.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13900, cell_13901, cell_13902, cell_13903, cell_13904, cell_13905, cell_13906, cell_13907, cell_13908, cell_13909, cell_13910, cell_13911, cell_13912, cell_13913, cell_13914, cell_13915, cell_13916, cell_13917, cell_13918, cell_13919, cell_13920, cell_13921, cell_13922, cell_13923, cell_13924, cell_13925, cell_13926, cell_13927, cell_13928, cell_13929, cell_13930, cell_13931, cell_13932, cell_13933, cell_13934, cell_13935, cell_13936, cell_13937, cell_13938, cell_13939, cell_13940, cell_13941, cell_13942, cell_13943, cell_13944, cell_13945, cell_13946, cell_13947, cell_13948, cell_13949]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13900, check_13901, check_13902, check_13903, check_13904, check_13905, check_13906, check_13907, check_13908, check_13909, check_13910, check_13911, check_13912, check_13913, check_13914, check_13915, check_13916, check_13917, check_13918, check_13919, check_13920, check_13921, check_13922, check_13923, check_13924, check_13925, check_13926, check_13927, check_13928, check_13929, check_13930, check_13931, check_13932, check_13933, check_13934, check_13935, check_13936, check_13937, check_13938, check_13939, check_13940, check_13941, check_13942, check_13943, check_13944, check_13945, check_13946, check_13947, check_13948, check_13949, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0278

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0278
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0278
open AnalyticBounds.ExpressionCertificate

theorem linked_13900 : Linked cell_13900 pieces := by
  link_source cell_13900 with piece_2057 using piece_2057_mem, ⟨piece_578_mem, piece_579_mem⟩

theorem linked_13901 : Linked cell_13901 pieces := by
  link_source cell_13901 with piece_2057 using piece_2057_mem, piece_578_mem

theorem linked_13902 : Linked cell_13902 pieces := by
  link_source cell_13902 with piece_2058 using piece_2058_mem, piece_579_mem

theorem linked_13903 : Linked cell_13903 pieces := by
  link_source cell_13903 with piece_2058 using piece_2058_mem, ⟨piece_578_mem, piece_579_mem⟩

theorem linked_13904 : Linked cell_13904 pieces := by
  link_source cell_13904 with piece_2058 using piece_2058_mem, piece_578_mem

theorem linked_13905 : Linked cell_13905 pieces := by
  link_source cell_13905 with piece_2058 using piece_2058_mem, ⟨piece_577_mem, piece_578_mem⟩

theorem linked_13906 : Linked cell_13906 pieces := by
  link_source cell_13906 with piece_2059 using piece_2059_mem, ⟨piece_578_mem, piece_579_mem⟩

theorem linked_13907 : Linked cell_13907 pieces := by
  link_source cell_13907 with piece_2059 using piece_2059_mem, piece_578_mem

theorem linked_13908 : Linked cell_13908 pieces := by
  link_source cell_13908 with piece_2059 using piece_2059_mem, ⟨piece_577_mem, piece_578_mem⟩

theorem linked_13909 : Linked cell_13909 pieces := by
  link_source cell_13909 with piece_2059 using piece_2059_mem, piece_577_mem

theorem linked_13910 : Linked cell_13910 pieces := by
  link_source cell_13910 with piece_2060 using piece_2060_mem, ⟨piece_577_mem, piece_578_mem⟩

theorem linked_13911 : Linked cell_13911 pieces := by
  link_source cell_13911 with piece_2060 using piece_2060_mem, piece_577_mem

theorem linked_13912 : Linked cell_13912 pieces := by
  link_source cell_13912 with piece_2060 using piece_2060_mem, piece_577_mem

theorem linked_13913 : Linked cell_13913 pieces := by
  link_source cell_13913 with piece_2060 using piece_2060_mem, piece_577_mem

theorem linked_13914 : Linked cell_13914 pieces := by
  link_source cell_13914 with piece_2061 using piece_2061_mem, piece_577_mem

theorem linked_13915 : Linked cell_13915 pieces := by
  link_source cell_13915 with piece_2061 using piece_2061_mem, piece_577_mem

theorem linked_13916 : Linked cell_13916 pieces := by
  link_source cell_13916 with piece_2062 using piece_2062_mem, piece_577_mem

theorem linked_13917 : Linked cell_13917 pieces := by
  link_source cell_13917 with piece_2063 using piece_2063_mem, piece_577_mem

theorem linked_13918 : Linked cell_13918 pieces := by
  link_source cell_13918 with piece_2063 using piece_2063_mem, piece_577_mem

theorem linked_13919 : Linked cell_13919 pieces := by
  link_source cell_13919 with piece_2063 using piece_2063_mem, piece_577_mem

theorem linked_13920 : Linked cell_13920 pieces := by
  link_source cell_13920 with piece_2064 using piece_2064_mem, piece_577_mem

theorem linked_13921 : Linked cell_13921 pieces := by
  link_source cell_13921 with piece_2064 using piece_2064_mem, ⟨piece_576_mem, piece_577_mem⟩

theorem linked_13922 : Linked cell_13922 pieces := by
  link_source cell_13922 with piece_2064 using piece_2064_mem, piece_576_mem

theorem linked_13923 : Linked cell_13923 pieces := by
  link_source cell_13923 with piece_2065 using piece_2065_mem, ⟨piece_576_mem, piece_577_mem⟩

theorem linked_13924 : Linked cell_13924 pieces := by
  link_source cell_13924 with piece_2065 using piece_2065_mem, piece_576_mem

theorem linked_13925 : Linked cell_13925 pieces := by
  link_source cell_13925 with piece_2065 using piece_2065_mem, piece_576_mem

theorem linked_13926 : Linked cell_13926 pieces := by
  link_source cell_13926 with piece_2066 using piece_2066_mem, ⟨piece_576_mem, piece_577_mem⟩

theorem linked_13927 : Linked cell_13927 pieces := by
  link_source cell_13927 with piece_2066 using piece_2066_mem, piece_576_mem

theorem linked_13928 : Linked cell_13928 pieces := by
  link_source cell_13928 with piece_2066 using piece_2066_mem, piece_576_mem

theorem linked_13929 : Linked cell_13929 pieces := by
  link_source cell_13929 with piece_2066 using piece_2066_mem, piece_576_mem

theorem linked_13930 : Linked cell_13930 pieces := by
  link_source cell_13930 with piece_2067 using piece_2067_mem, piece_576_mem

theorem linked_13931 : Linked cell_13931 pieces := by
  link_source cell_13931 with piece_2067 using piece_2067_mem, piece_576_mem

theorem linked_13932 : Linked cell_13932 pieces := by
  link_source cell_13932 with piece_2067 using piece_2067_mem, piece_576_mem

theorem linked_13933 : Linked cell_13933 pieces := by
  link_source cell_13933 with piece_2068 using piece_2068_mem, piece_576_mem

theorem linked_13934 : Linked cell_13934 pieces := by
  link_source cell_13934 with piece_2068 using piece_2068_mem, piece_576_mem

theorem linked_13935 : Linked cell_13935 pieces := by
  link_source cell_13935 with piece_2068 using piece_2068_mem, ⟨piece_575_mem, piece_576_mem⟩

theorem linked_13936 : Linked cell_13936 pieces := by
  link_source cell_13936 with piece_2069 using piece_2069_mem, piece_576_mem

theorem linked_13937 : Linked cell_13937 pieces := by
  link_source cell_13937 with piece_2069 using piece_2069_mem, ⟨piece_575_mem, piece_576_mem⟩

theorem linked_13938 : Linked cell_13938 pieces := by
  link_source cell_13938 with piece_2069 using piece_2069_mem, piece_575_mem

theorem linked_13939 : Linked cell_13939 pieces := by
  link_source cell_13939 with piece_2070 using piece_2070_mem, ⟨piece_575_mem, piece_576_mem⟩

theorem linked_13940 : Linked cell_13940 pieces := by
  link_source cell_13940 with piece_2070 using piece_2070_mem, piece_575_mem

theorem linked_13941 : Linked cell_13941 pieces := by
  link_source cell_13941 with piece_2070 using piece_2070_mem, piece_575_mem

theorem linked_13942 : Linked cell_13942 pieces := by
  link_source cell_13942 with piece_2071 using piece_2071_mem, ⟨piece_575_mem, piece_576_mem⟩

theorem linked_13943 : Linked cell_13943 pieces := by
  link_source cell_13943 with piece_2071 using piece_2071_mem, piece_575_mem

theorem linked_13944 : Linked cell_13944 pieces := by
  link_source cell_13944 with piece_2071 using piece_2071_mem, piece_575_mem

theorem linked_13945 : Linked cell_13945 pieces := by
  link_source cell_13945 with piece_2072 using piece_2072_mem, piece_575_mem

theorem linked_13946 : Linked cell_13946 pieces := by
  link_source cell_13946 with piece_2072 using piece_2072_mem, piece_575_mem

theorem linked_13947 : Linked cell_13947 pieces := by
  link_source cell_13947 with piece_2072 using piece_2072_mem, piece_575_mem

theorem linked_13948 : Linked cell_13948 pieces := by
  link_source cell_13948 with piece_2073 using piece_2073_mem, piece_575_mem

theorem linked_13949 : Linked cell_13949 pieces := by
  link_source cell_13949 with piece_2073 using piece_2073_mem, piece_575_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0278.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0278.cells,List.forall_mem_cons]
  exact ⟨linked_13900, linked_13901, linked_13902, linked_13903, linked_13904, linked_13905, linked_13906, linked_13907, linked_13908, linked_13909, linked_13910, linked_13911, linked_13912, linked_13913, linked_13914, linked_13915, linked_13916, linked_13917, linked_13918, linked_13919, linked_13920, linked_13921, linked_13922, linked_13923, linked_13924, linked_13925, linked_13926, linked_13927, linked_13928, linked_13929, linked_13930, linked_13931, linked_13932, linked_13933, linked_13934, linked_13935, linked_13936, linked_13937, linked_13938, linked_13939, linked_13940, linked_13941, linked_13942, linked_13943, linked_13944, linked_13945, linked_13946, linked_13947, linked_13948, linked_13949, by simp⟩

theorem covered : covers (17965000000000001 / 20000000000000000 : ℚ) (9059776536312849 / 10000000000000000 : ℚ)
    (SourceCertificates.Chunk0278.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0278
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0279
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(9059776536312849 / 10000000000000000 : ℚ), (90600000000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (21474561805349 / 50000000000000 : ℚ)
  w := (6290575700051 / 5000000000000 : ℚ)
  center := (181197765363128493 / 200000000000000000 : ℚ)
  supportValue := (10924641338893651 / 50000000000000000 : ℚ)
  supportSlope := (-727640335566057 / 1000000000000000 : ℚ)
  oldCenter := (10924641338893651 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2075
  oldLo := (87 / 400 : ℚ)
  oldHi := (109 / 500 : ℚ)
  oldPieces := [piece_573]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13950 : Cell := { cellDefaults with
  r := (42966104668781 / 100000000000000 : ℚ)
  w := (12585371474949 / 10000000000000 : ℚ)
  newCoefficients := coefficients_2074
  oldLo := (109 / 500 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_574, piece_575]
}

noncomputable def cell_13951 : Cell := { cellDefaults with
  domain := ⟨(90600000000000003 / 100000000000000000 : ℚ), (181250000000000011 / 200000000000000000 : ℚ)⟩
  center := (362450000000000017 / 400000000000000000 : ℚ)
  supportValue := (5466403925261011 / 25000000000000000 : ℚ)
  supportSlope := (-1819541811011001 / 2500000000000000 : ℚ)
  oldCenter := (5466403925261011 / 25000000000000000 : ℚ)
  oldLo := (437 / 2000 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_575]
}

noncomputable def cell_13952 : Cell := { cellDefaults with
  domain := ⟨(181250000000000011 / 200000000000000000 : ℚ), (362550000000000027 / 400000000000000000 : ℚ)⟩
  center := (725050000000000049 / 800000000000000000 : ℚ)
  supportValue := (10925979339987589 / 50000000000000000 : ℚ)
  supportSlope := (-7273384241161357 / 10000000000000000 : ℚ)
  oldCenter := (10925979339987589 / 50000000000000000 : ℚ)
  oldLo := (109 / 500 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_574, piece_575]
}

noncomputable def cell_13953 : Cell := { cellDefaults with
  domain := ⟨(362550000000000027 / 400000000000000000 : ℚ), (11331250000000001 / 12500000000000000 : ℚ)⟩
  center := (725150000000000059 / 800000000000000000 : ℚ)
  supportValue := (10921434122470823 / 50000000000000000 : ℚ)
  supportSlope := (-7270915594527577 / 10000000000000000 : ℚ)
  oldCenter := (10921434122470823 / 50000000000000000 : ℚ)
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13954 : Cell := { cellDefaults with
  domain := ⟨(11331250000000001 / 12500000000000000 : ℚ), (181350000000000011 / 200000000000000000 : ℚ)⟩
  r := (10733038487649 / 25000000000000 : ℚ)
  w := (1257692938581 / 1000000000000 : ℚ)
  center := (362650000000000027 / 400000000000000000 : ℚ)
  supportValue := (2185546389117101 / 10000000000000000 : ℚ)
  supportSlope := (-7271462028404957 / 10000000000000000 : ℚ)
  oldCenter := (2185546389117101 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2076
  oldLo := (109 / 500 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_574, piece_575]
}

noncomputable def cell_13955 : Cell := { cellDefaults with
  domain := ⟨(181350000000000011 / 200000000000000000 : ℚ), (362750000000000017 / 400000000000000000 : ℚ)⟩
  r := (10733038487649 / 25000000000000 : ℚ)
  w := (1257692938581 / 1000000000000 : ℚ)
  center := (725450000000000039 / 800000000000000000 : ℚ)
  supportValue := (4368363682633043 / 20000000000000000 : ℚ)
  supportSlope := (-1816847421563143 / 2500000000000000 : ℚ)
  oldCenter := (4368363682633043 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2076
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13956 : Cell := { cellDefaults with
  domain := ⟨(362750000000000017 / 400000000000000000 : ℚ), (90700000000000003 / 100000000000000000 : ℚ)⟩
  r := (10733038487649 / 25000000000000 : ℚ)
  w := (1257692938581 / 1000000000000 : ℚ)
  center := (725550000000000029 / 800000000000000000 : ℚ)
  supportValue := (436654726529073 / 2000000000000000 : ℚ)
  supportSlope := (-7263945447704871 / 10000000000000000 : ℚ)
  oldCenter := (436654726529073 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2076
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13957 : Cell := { cellDefaults with
  domain := ⟨(90700000000000003 / 100000000000000000 : ℚ), (181450000000000011 / 200000000000000000 : ℚ)⟩
  r := (42915196159313 / 100000000000000 : ℚ)
  w := (12572705228031 / 10000000000000 : ℚ)
  center := (362850000000000017 / 400000000000000000 : ℚ)
  supportValue := (2184533302399159 / 10000000000000000 : ℚ)
  supportSlope := (-7265258842050033 / 10000000000000000 : ℚ)
  oldCenter := (2184533302399159 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2077
  oldLo := (109 / 500 : ℚ)
  oldHi := (219 / 1000 : ℚ)
  oldPieces := [piece_574, piece_575]
}

noncomputable def cell_13958 : Cell := { cellDefaults with
  domain := ⟨(181450000000000011 / 200000000000000000 : ℚ), (362950000000000027 / 400000000000000000 : ℚ)⟩
  r := (42915196159313 / 100000000000000 : ℚ)
  w := (12572705228031 / 10000000000000 : ℚ)
  center := (725850000000000049 / 800000000000000000 : ℚ)
  supportValue := (5457924896702699 / 25000000000000000 : ℚ)
  supportSlope := (-3630214198408669 / 5000000000000000 : ℚ)
  oldCenter := (5457924896702699 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2077
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13959 : Cell := { cellDefaults with
  domain := ⟨(362950000000000027 / 400000000000000000 : ℚ), (11343750000000001 / 12500000000000000 : ℚ)⟩
  r := (42915196159313 / 100000000000000 : ℚ)
  w := (12572705228031 / 10000000000000 : ℚ)
  center := (725950000000000059 / 800000000000000000 : ℚ)
  supportValue := (2727828274695843 / 12500000000000000 : ℚ)
  supportSlope := (-453561924420819 / 625000000000000 : ℚ)
  oldCenter := (2727828274695843 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2077
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13960 : Cell := { cellDefaults with
  domain := ⟨(11343750000000001 / 12500000000000000 : ℚ), (181550000000000011 / 200000000000000000 : ℚ)⟩
  r := (1072456224457 / 2500000000000 : ℚ)
  w := (12568478701721 / 10000000000000 : ℚ)
  center := (363050000000000027 / 400000000000000000 : ℚ)
  supportValue := (4367044941033073 / 20000000000000000 : ℚ)
  supportSlope := (-3629317750103807 / 5000000000000000 : ℚ)
  oldCenter := (4367044941033073 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2078
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13961 : Cell := { cellDefaults with
  domain := ⟨(181550000000000011 / 200000000000000000 : ℚ), (363150000000000017 / 400000000000000000 : ℚ)⟩
  r := (1072456224457 / 2500000000000 : ℚ)
  w := (12568478701721 / 10000000000000 : ℚ)
  center := (726250000000000039 / 800000000000000000 : ℚ)
  supportValue := (2727700538373987 / 12500000000000000 : ℚ)
  supportSlope := (-906685375020679 / 1250000000000000 : ℚ)
  oldCenter := (2727700538373987 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2078
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13962 : Cell := { cellDefaults with
  domain := ⟨(363150000000000017 / 400000000000000000 : ℚ), (90800000000000003 / 100000000000000000 : ℚ)⟩
  r := (1072456224457 / 2500000000000 : ℚ)
  w := (12568478701721 / 10000000000000 : ℚ)
  center := (726350000000000029 / 800000000000000000 : ℚ)
  supportValue := (340820931177553 / 1562500000000000 : ℚ)
  supportSlope := (-7250052004131483 / 10000000000000000 : ℚ)
  oldCenter := (340820931177553 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_2078
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13963 : Cell := { cellDefaults with
  domain := ⟨(90800000000000003 / 100000000000000000 : ℚ), (45412500000000003 / 50000000000000000 : ℚ)⟩
  r := (8576262730083 / 20000000000000 : ℚ)
  w := (628212600233 / 500000000000 : ℚ)
  center := (181625000000000009 / 200000000000000000 : ℚ)
  supportValue := (21825134817282657 / 100000000000000000 : ℚ)
  supportSlope := (-1450338913571873 / 2000000000000000 : ℚ)
  oldCenter := (21825134817282657 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2079
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13964 : Cell := { cellDefaults with
  domain := ⟨(45412500000000003 / 50000000000000000 : ℚ), (36335000000000003 / 40000000000000000 : ℚ)⟩
  r := (8576262730083 / 20000000000000 : ℚ)
  w := (628212600233 / 500000000000 : ℚ)
  center := (363325000000000027 / 400000000000000000 : ℚ)
  supportValue := (10905763715574063 / 50000000000000000 : ℚ)
  supportSlope := (-7246551956349397 / 10000000000000000 : ℚ)
  oldCenter := (10905763715574063 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2079
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13965 : Cell := { cellDefaults with
  domain := ⟨(36335000000000003 / 40000000000000000 : ℚ), (90850000000000009 / 100000000000000000 : ℚ)⟩
  r := (8576262730083 / 20000000000000 : ℚ)
  w := (628212600233 / 500000000000 : ℚ)
  center := (363375000000000033 / 400000000000000000 : ℚ)
  supportValue := (10901235689606821 / 50000000000000000 : ℚ)
  supportSlope := (-7243438316141513 / 10000000000000000 : ℚ)
  oldCenter := (10901235689606821 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2079
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_573, piece_574]
}

noncomputable def cell_13966 : Cell := { cellDefaults with
  domain := ⟨(90850000000000009 / 100000000000000000 : ℚ), (45437500000000003 / 50000000000000000 : ℚ)⟩
  r := (42864389295817 / 100000000000000 : ℚ)
  w := (6280011344301 / 5000000000000 : ℚ)
  center := (36345000000000003 / 40000000000000000 : ℚ)
  supportValue := (218150684020663 / 1000000000000000 : ℚ)
  supportSlope := (-7244769485728921 / 10000000000000000 : ℚ)
  oldCenter := (218150684020663 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_2080
  oldLo := (109 / 500 : ℚ)
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_574]
}

noncomputable def cell_13967 : Cell := { cellDefaults with
  domain := ⟨(45437500000000003 / 50000000000000000 : ℚ), (181775000000000009 / 200000000000000000 : ℚ)⟩
  r := (42864389295817 / 100000000000000 : ℚ)
  w := (6280011344301 / 5000000000000 : ℚ)
  center := (363525000000000021 / 400000000000000000 : ℚ)
  supportValue := (54503684995661 / 250000000000000 : ℚ)
  supportSlope := (-1448019488861259 / 2000000000000000 : ℚ)
  oldCenter := (54503684995661 / 250000000000000 : ℚ)
  newCoefficients := coefficients_2080
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_573, piece_574]
}

noncomputable def cell_13968 : Cell := { cellDefaults with
  domain := ⟨(181775000000000009 / 200000000000000000 : ℚ), (90900000000000003 / 100000000000000000 : ℚ)⟩
  r := (42864389295817 / 100000000000000 : ℚ)
  w := (6280011344301 / 5000000000000 : ℚ)
  center := (72715000000000003 / 80000000000000000 : ℚ)
  supportValue := (21792425159447473 / 100000000000000000 : ℚ)
  supportSlope := (-3618789508102339 / 5000000000000000 : ℚ)
  oldCenter := (21792425159447473 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2080
  oldPieces := [piece_573]
}

noncomputable def cell_13969 : Cell := { cellDefaults with
  domain := ⟨(90900000000000003 / 100000000000000000 : ℚ), (45462500000000003 / 50000000000000000 : ℚ)⟩
  r := (5355934665927 / 12500000000000 : ℚ)
  w := (6277896587653 / 5000000000000 : ℚ)
  center := (181825000000000009 / 200000000000000000 : ℚ)
  supportValue := (5451254937558639 / 25000000000000000 : ℚ)
  supportSlope := (-7238163506670079 / 10000000000000000 : ℚ)
  oldCenter := (5451254937558639 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2081
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_573, piece_574]
}

noncomputable def cell_13970 : Cell := { cellDefaults with
  domain := ⟨(45462500000000003 / 50000000000000000 : ℚ), (36375000000000003 / 40000000000000000 : ℚ)⟩
  r := (5355934665927 / 12500000000000 : ℚ)
  w := (6277896587653 / 5000000000000 : ℚ)
  center := (363725000000000027 / 400000000000000000 : ℚ)
  supportValue := (5447859172418531 / 25000000000000000 : ℚ)
  supportSlope := (-361704731248259 / 500000000000000 : ℚ)
  oldCenter := (5447859172418531 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2081
  oldPieces := [piece_573]
}

noncomputable def cell_13971 : Cell := { cellDefaults with
  domain := ⟨(36375000000000003 / 40000000000000000 : ℚ), (90950000000000009 / 100000000000000000 : ℚ)⟩
  r := (5355934665927 / 12500000000000 : ℚ)
  w := (6277896587653 / 5000000000000 : ℚ)
  center := (363775000000000033 / 400000000000000000 : ℚ)
  supportValue := (10891198102274041 / 50000000000000000 : ℚ)
  supportSlope := (-57845423866347 / 80000000000000 : ℚ)
  oldCenter := (10891198102274041 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2081
  oldPieces := [piece_573]
}

noncomputable def cell_13972 : Cell := { cellDefaults with
  domain := ⟨(90950000000000009 / 100000000000000000 : ℚ), (45487500000000003 / 50000000000000000 : ℚ)⟩
  r := (21415287692961 / 50000000000000 : ℚ)
  w := (3137890068983 / 2500000000000 : ℚ)
  center := (36385000000000003 / 40000000000000000 : ℚ)
  supportValue := (10897497931079249 / 50000000000000000 : ℚ)
  supportSlope := (-7232021493340547 / 10000000000000000 : ℚ)
  oldCenter := (10897497931079249 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2082
  oldHi := (437 / 2000 : ℚ)
  oldPieces := [piece_573, piece_574]
}

noncomputable def cell_13973 : Cell := { cellDefaults with
  domain := ⟨(45487500000000003 / 50000000000000000 : ℚ), (181975000000000009 / 200000000000000000 : ℚ)⟩
  r := (21415287692961 / 50000000000000 : ℚ)
  w := (3137890068983 / 2500000000000 : ℚ)
  center := (363925000000000021 / 400000000000000000 : ℚ)
  supportValue := (1089071239788861 / 5000000000000000 : ℚ)
  supportSlope := (-7227203428029383 / 10000000000000000 : ℚ)
  oldCenter := (1089071239788861 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2082
  oldPieces := [piece_573]
}

noncomputable def cell_13974 : Cell := { cellDefaults with
  domain := ⟨(181975000000000009 / 200000000000000000 : ℚ), (91000000000000003 / 100000000000000000 : ℚ)⟩
  r := (21415287692961 / 50000000000000 : ℚ)
  w := (3137890068983 / 2500000000000 : ℚ)
  center := (72795000000000003 / 80000000000000000 : ℚ)
  supportValue := (10886196460279647 / 50000000000000000 : ℚ)
  supportSlope := (-722379332884413 / 1000000000000000 : ℚ)
  oldCenter := (10886196460279647 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2082
  oldPieces := [piece_573]
}

noncomputable def cell_13975 : Cell := { cellDefaults with
  domain := ⟨(91000000000000003 / 100000000000000000 : ℚ), (45512500000000003 / 50000000000000000 : ℚ)⟩
  r := (4281368551813 / 10000000000000 : ℚ)
  w := (392103949647 / 312500000000 : ℚ)
  center := (182025000000000009 / 200000000000000000 : ℚ)
  supportValue := (68078094904981 / 312500000000000 : ℚ)
  supportSlope := (-722543799039823 / 1000000000000000 : ℚ)
  oldCenter := (68078094904981 / 312500000000000 : ℚ)
  newCoefficients := coefficients_2083
  oldPieces := [piece_573]
}

noncomputable def cell_13976 : Cell := { cellDefaults with
  domain := ⟨(45512500000000003 / 50000000000000000 : ℚ), (36415000000000003 / 40000000000000000 : ℚ)⟩
  r := (4281368551813 / 10000000000000 : ℚ)
  w := (392103949647 / 312500000000 : ℚ)
  center := (364125000000000027 / 400000000000000000 : ℚ)
  supportValue := (21771432213292763 / 100000000000000000 : ℚ)
  supportSlope := (-722032668723751 / 1000000000000000 : ℚ)
  oldCenter := (21771432213292763 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2083
  oldPieces := [piece_573]
}

noncomputable def cell_13977 : Cell := { cellDefaults with
  domain := ⟨(36415000000000003 / 40000000000000000 : ℚ), (91050000000000009 / 100000000000000000 : ℚ)⟩
  r := (4281368551813 / 10000000000000 : ℚ)
  w := (392103949647 / 312500000000 : ℚ)
  center := (364175000000000033 / 400000000000000000 : ℚ)
  supportValue := (21762408929926153 / 100000000000000000 : ℚ)
  supportSlope := (-1443384621831183 / 2000000000000000 : ℚ)
  oldCenter := (21762408929926153 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2083
  oldPieces := [piece_573]
}

noncomputable def cell_13978 : Cell := { cellDefaults with
  domain := ⟨(91050000000000009 / 100000000000000000 : ℚ), (45537500000000003 / 50000000000000000 : ℚ)⟩
  r := (10699201660479 / 25000000000000 : ℚ)
  w := (1567886291561 / 1250000000000 : ℚ)
  center := (36425000000000003 / 40000000000000000 : ℚ)
  supportValue := (21775007357854367 / 100000000000000000 : ℚ)
  supportSlope := (-2887426801799 / 4000000000000 : ℚ)
  oldCenter := (21775007357854367 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2084
  oldPieces := [piece_573]
}

noncomputable def cell_13979 : Cell := { cellDefaults with
  domain := ⟨(45537500000000003 / 50000000000000000 : ℚ), (182175000000000009 / 200000000000000000 : ℚ)⟩
  r := (10699201660479 / 25000000000000 : ℚ)
  w := (1567886291561 / 1250000000000 : ℚ)
  center := (364325000000000021 / 400000000000000000 : ℚ)
  supportValue := (10880731041239021 / 50000000000000000 : ℚ)
  supportSlope := (-3606732736145967 / 5000000000000000 : ℚ)
  oldCenter := (10880731041239021 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2084
  oldPieces := [piece_573]
}

noncomputable def cell_13980 : Cell := { cellDefaults with
  domain := ⟨(182175000000000009 / 200000000000000000 : ℚ), (91100000000000003 / 100000000000000000 : ℚ)⟩
  r := (10699201660479 / 25000000000000 : ℚ)
  w := (1567886291561 / 1250000000000 : ℚ)
  center := (72875000000000003 / 80000000000000000 : ℚ)
  supportValue := (543811184289207 / 2500000000000000 : ℚ)
  supportSlope := (-450648707915667 / 625000000000000 : ℚ)
  oldCenter := (543811184289207 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_2084
  oldLo := (217 / 1000 : ℚ)
  oldPieces := [piece_572, piece_573]
}

noncomputable def cell_13981 : Cell := { cellDefaults with
  domain := ⟨(91100000000000003 / 100000000000000000 : ℚ), (45562500000000003 / 50000000000000000 : ℚ)⟩
  r := (1336873093813 / 3125000000000 : ℚ)
  w := (501554159187 / 400000000000 : ℚ)
  center := (182225000000000009 / 200000000000000000 : ℚ)
  supportValue := (1088252168058739 / 5000000000000000 : ℚ)
  supportSlope := (-360585518281843 / 500000000000000 : ℚ)
  oldCenter := (1088252168058739 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2085
  oldPieces := [piece_573]
}

noncomputable def cell_13982 : Cell := { cellDefaults with
  domain := ⟨(45562500000000003 / 50000000000000000 : ℚ), (36455000000000003 / 40000000000000000 : ℚ)⟩
  r := (1336873093813 / 3125000000000 : ℚ)
  w := (501554159187 / 400000000000 : ℚ)
  center := (364525000000000027 / 400000000000000000 : ℚ)
  supportValue := (4350302187967201 / 20000000000000000 : ℚ)
  supportSlope := (-144141402182179 / 200000000000000 : ℚ)
  oldCenter := (4350302187967201 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2085
  oldLo := (217 / 1000 : ℚ)
  oldPieces := [piece_572, piece_573]
}

noncomputable def cell_13983 : Cell := { cellDefaults with
  domain := ⟨(36455000000000003 / 40000000000000000 : ℚ), (91150000000000009 / 100000000000000000 : ℚ)⟩
  r := (1336873093813 / 3125000000000 : ℚ)
  w := (501554159187 / 400000000000 : ℚ)
  center := (364575000000000033 / 400000000000000000 : ℚ)
  supportValue := (2174250337295757 / 10000000000000000 : ℚ)
  supportSlope := (-3602290227772821 / 5000000000000000 : ℚ)
  oldCenter := (2174250337295757 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2085
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

noncomputable def cell_13984 : Cell := { cellDefaults with
  domain := ⟨(91150000000000009 / 100000000000000000 : ℚ), (4557541899441341 / 5000000000000000 : ℚ)⟩
  r := (8552616594983 / 20000000000000 : ℚ)
  w := (3133653540559 / 2500000000000 : ℚ)
  center := (182300837988826829 / 200000000000000000 : ℚ)
  supportValue := (5440947451479463 / 25000000000000000 : ℚ)
  supportSlope := (-7208146871177437 / 10000000000000000 : ℚ)
  oldCenter := (5440947451479463 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2086
  oldPieces := [piece_573]
}

noncomputable def cell_13985 : Cell := { cellDefaults with
  domain := ⟨(4557541899441341 / 5000000000000000 : ℚ), (182350837988826823 / 200000000000000000 : ℚ)⟩
  r := (8552616594983 / 20000000000000 : ℚ)
  w := (3133653540559 / 2500000000000 : ℚ)
  center := (364652513966480463 / 400000000000000000 : ℚ)
  supportValue := (10877325191788727 / 50000000000000000 : ℚ)
  supportSlope := (-3602511196838103 / 5000000000000000 : ℚ)
  oldCenter := (10877325191788727 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2087
  oldLo := (217 / 1000 : ℚ)
  oldPieces := [piece_572, piece_573]
}

noncomputable def cell_13986 : Cell := { cellDefaults with
  domain := ⟨(182350837988826823 / 200000000000000000 : ℚ), (91200000000000003 / 100000000000000000 : ℚ)⟩
  r := (8552616594983 / 20000000000000 : ℚ)
  w := (3133653540559 / 2500000000000 : ℚ)
  center := (364750837988826829 / 400000000000000000 : ℚ)
  supportValue := (434738924501607 / 2000000000000000 : ℚ)
  supportSlope := (-7199387265787421 / 10000000000000000 : ℚ)
  oldCenter := (434738924501607 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2087
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

noncomputable def cell_13987 : Cell := { cellDefaults with
  domain := ⟨(91200000000000003 / 100000000000000000 : ℚ), (45612500000000003 / 50000000000000000 : ℚ)⟩
  r := (42746237498549 / 100000000000000 : ℚ)
  w := (783148329841 / 625000000000 : ℚ)
  center := (182425000000000009 / 200000000000000000 : ℚ)
  supportValue := (869807323677687 / 4000000000000000 : ℚ)
  supportSlope := (-7199082724333141 / 10000000000000000 : ℚ)
  oldCenter := (869807323677687 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_2088
  oldLo := (217 / 1000 : ℚ)
  oldPieces := [piece_572, piece_573]
}

noncomputable def cell_13988 : Cell := { cellDefaults with
  domain := ⟨(45612500000000003 / 50000000000000000 : ℚ), (36495000000000003 / 40000000000000000 : ℚ)⟩
  r := (42746237498549 / 100000000000000 : ℚ)
  w := (783148329841 / 625000000000 : ℚ)
  center := (364925000000000027 / 400000000000000000 : ℚ)
  supportValue := (2173167376234717 / 10000000000000000 : ℚ)
  supportSlope := (-7194316137634463 / 10000000000000000 : ℚ)
  oldCenter := (2173167376234717 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2088
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

noncomputable def cell_13989 : Cell := { cellDefaults with
  domain := ⟨(36495000000000003 / 40000000000000000 : ℚ), (91250000000000009 / 100000000000000000 : ℚ)⟩
  r := (42746237498549 / 100000000000000 : ℚ)
  w := (783148329841 / 625000000000 : ℚ)
  center := (364975000000000033 / 400000000000000000 : ℚ)
  supportValue := (21722682979278699 / 100000000000000000 : ℚ)
  supportSlope := (-1438186638245403 / 2000000000000000 : ℚ)
  oldCenter := (21722682979278699 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2088
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

noncomputable def cell_13990 : Cell := { cellDefaults with
  domain := ⟨(91250000000000009 / 100000000000000000 : ℚ), (45637500000000003 / 50000000000000000 : ℚ)⟩
  r := (10682351045907 / 25000000000000 : ℚ)
  w := (1252613148287 / 1000000000000 : ℚ)
  center := (36505000000000003 / 40000000000000000 : ℚ)
  supportValue := (869411234775313 / 4000000000000000 : ℚ)
  supportSlope := (-3596289203381829 / 5000000000000000 : ℚ)
  oldCenter := (869411234775313 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_2089
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

noncomputable def cell_13991 : Cell := { cellDefaults with
  domain := ⟨(45637500000000003 / 50000000000000000 : ℚ), (91300000000000003 / 100000000000000000 : ℚ)⟩
  r := (10682351045907 / 25000000000000 : ℚ)
  w := (1252613148287 / 1000000000000 : ℚ)
  center := (182575000000000009 / 200000000000000000 : ℚ)
  supportValue := (10858653928830181 / 50000000000000000 : ℚ)
  supportSlope := (-359290976384917 / 500000000000000 : ℚ)
  oldCenter := (10858653928830181 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2089
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

noncomputable def cell_13992 : Cell := { cellDefaults with
  domain := ⟨(91300000000000003 / 100000000000000000 : ℚ), (45662500000000003 / 50000000000000000 : ℚ)⟩
  r := (42712581217891 / 100000000000000 : ℚ)
  w := (1252188675681 / 1000000000000 : ℚ)
  center := (182625000000000009 / 200000000000000000 : ℚ)
  supportValue := (1086270142765161 / 5000000000000000 : ℚ)
  supportSlope := (-7185776164552431 / 10000000000000000 : ℚ)
  oldCenter := (1086270142765161 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2090
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

noncomputable def cell_13993 : Cell := { cellDefaults with
  domain := ⟨(45662500000000003 / 50000000000000000 : ℚ), (91350000000000009 / 100000000000000000 : ℚ)⟩
  r := (42712581217891 / 100000000000000 : ℚ)
  w := (1252188675681 / 1000000000000 : ℚ)
  center := (36535000000000003 / 40000000000000000 : ℚ)
  supportValue := (10853723416572321 / 50000000000000000 : ℚ)
  supportSlope := (-7179146436994381 / 10000000000000000 : ℚ)
  oldCenter := (10853723416572321 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2090
  oldLo := (433 / 2000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_571, piece_572]
}

noncomputable def cell_13994 : Cell := { cellDefaults with
  domain := ⟨(91350000000000009 / 100000000000000000 : ℚ), (45687500000000003 / 50000000000000000 : ℚ)⟩
  r := (42695769737143 / 100000000000000 : ℚ)
  w := (12517641377037 / 10000000000000 : ℚ)
  center := (36545000000000003 / 40000000000000000 : ℚ)
  supportValue := (21715543907695933 / 100000000000000000 : ℚ)
  supportSlope := (-7178988170391837 / 10000000000000000 : ℚ)
  oldCenter := (21715543907695933 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2091
  oldLo := (217 / 1000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_572]
}

noncomputable def cell_13995 : Cell := { cellDefaults with
  domain := ⟨(45687500000000003 / 50000000000000000 : ℚ), (182775000000000009 / 200000000000000000 : ℚ)⟩
  r := (42695769737143 / 100000000000000 : ℚ)
  w := (12517641377037 / 10000000000000 : ℚ)
  center := (365525000000000021 / 400000000000000000 : ℚ)
  supportValue := (135637955232779 / 625000000000000 : ℚ)
  supportSlope := (-7174300260897909 / 10000000000000000 : ℚ)
  oldCenter := (135637955232779 / 625000000000000 : ℚ)
  newCoefficients := coefficients_2091
  oldLo := (433 / 2000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_571, piece_572]
}

noncomputable def cell_13996 : Cell := { cellDefaults with
  domain := ⟨(182775000000000009 / 200000000000000000 : ℚ), (91400000000000003 / 100000000000000000 : ℚ)⟩
  r := (42695769737143 / 100000000000000 : ℚ)
  w := (12517641377037 / 10000000000000 : ℚ)
  center := (73115000000000003 / 80000000000000000 : ℚ)
  supportValue := (1084655311025287 / 5000000000000000 : ℚ)
  supportSlope := (-717191816228177 / 1000000000000000 : ℚ)
  oldCenter := (1084655311025287 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2091
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

noncomputable def cell_13997 : Cell := { cellDefaults with
  domain := ⟨(91400000000000003 / 100000000000000000 : ℚ), (45712500000000003 / 50000000000000000 : ℚ)⟩
  r := (1066974246361 / 2500000000000 : ℚ)
  w := (2502678750071 / 2000000000000 : ℚ)
  center := (182825000000000009 / 200000000000000000 : ℚ)
  supportValue := (2170570650437571 / 10000000000000000 : ℚ)
  supportSlope := (-3586230833788187 / 5000000000000000 : ℚ)
  oldCenter := (2170570650437571 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2092
  oldLo := (433 / 2000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_571, piece_572]
}

noncomputable def cell_13998 : Cell := { cellDefaults with
  domain := ⟨(45712500000000003 / 50000000000000000 : ℚ), (91450000000000009 / 100000000000000000 : ℚ)⟩
  r := (1066974246361 / 2500000000000 : ℚ)
  w := (2502678750071 / 2000000000000 : ℚ)
  center := (36575000000000003 / 40000000000000000 : ℚ)
  supportValue := (10843891028246659 / 50000000000000000 : ℚ)
  supportSlope := (-111981814370971 / 156250000000000 : ℚ)
  oldCenter := (10843891028246659 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2092
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

noncomputable def cell_13999 : Cell := { cellDefaults with
  domain := ⟨(91450000000000009 / 100000000000000000 : ℚ), (182950000000000013 / 200000000000000000 : ℚ)⟩
  r := (21331090025667 / 50000000000000 : ℚ)
  w := (12509143425151 / 10000000000000 : ℚ)
  center := (365850000000000031 / 400000000000000000 : ℚ)
  supportValue := (1084794613953837 / 5000000000000000 : ℚ)
  supportSlope := (-7166439610074177 / 10000000000000000 : ℚ)
  oldCenter := (1084794613953837 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2093
  oldLo := (433 / 2000 : ℚ)
  oldHi := (87 / 400 : ℚ)
  oldPieces := [piece_571, piece_572]
}

theorem check_13950 : cell_13950.check = true := by
  decide +kernel

theorem check_13951 : cell_13951.check = true := by
  decide +kernel

theorem check_13952 : cell_13952.check = true := by
  decide +kernel

theorem check_13953 : cell_13953.check = true := by
  decide +kernel

theorem check_13954 : cell_13954.check = true := by
  decide +kernel

theorem check_13955 : cell_13955.check = true := by
  decide +kernel

theorem check_13956 : cell_13956.check = true := by
  decide +kernel

theorem check_13957 : cell_13957.check = true := by
  decide +kernel

theorem check_13958 : cell_13958.check = true := by
  decide +kernel

theorem check_13959 : cell_13959.check = true := by
  decide +kernel

theorem check_13960 : cell_13960.check = true := by
  decide +kernel

theorem check_13961 : cell_13961.check = true := by
  decide +kernel

theorem check_13962 : cell_13962.check = true := by
  decide +kernel

theorem check_13963 : cell_13963.check = true := by
  decide +kernel

theorem check_13964 : cell_13964.check = true := by
  decide +kernel

theorem check_13965 : cell_13965.check = true := by
  decide +kernel

theorem check_13966 : cell_13966.check = true := by
  decide +kernel

theorem check_13967 : cell_13967.check = true := by
  decide +kernel

theorem check_13968 : cell_13968.check = true := by
  decide +kernel

theorem check_13969 : cell_13969.check = true := by
  decide +kernel

theorem check_13970 : cell_13970.check = true := by
  decide +kernel

theorem check_13971 : cell_13971.check = true := by
  decide +kernel

theorem check_13972 : cell_13972.check = true := by
  decide +kernel

theorem check_13973 : cell_13973.check = true := by
  decide +kernel

theorem check_13974 : cell_13974.check = true := by
  decide +kernel

theorem check_13975 : cell_13975.check = true := by
  decide +kernel

theorem check_13976 : cell_13976.check = true := by
  decide +kernel

theorem check_13977 : cell_13977.check = true := by
  decide +kernel

theorem check_13978 : cell_13978.check = true := by
  decide +kernel

theorem check_13979 : cell_13979.check = true := by
  decide +kernel

theorem check_13980 : cell_13980.check = true := by
  decide +kernel

theorem check_13981 : cell_13981.check = true := by
  decide +kernel

theorem check_13982 : cell_13982.check = true := by
  decide +kernel

theorem check_13983 : cell_13983.check = true := by
  decide +kernel

theorem check_13984 : cell_13984.check = true := by
  decide +kernel

theorem check_13985 : cell_13985.check = true := by
  decide +kernel

theorem check_13986 : cell_13986.check = true := by
  decide +kernel

theorem check_13987 : cell_13987.check = true := by
  decide +kernel

theorem check_13988 : cell_13988.check = true := by
  decide +kernel

theorem check_13989 : cell_13989.check = true := by
  decide +kernel

theorem check_13990 : cell_13990.check = true := by
  decide +kernel

theorem check_13991 : cell_13991.check = true := by
  decide +kernel

theorem check_13992 : cell_13992.check = true := by
  decide +kernel

theorem check_13993 : cell_13993.check = true := by
  decide +kernel

theorem check_13994 : cell_13994.check = true := by
  decide +kernel

theorem check_13995 : cell_13995.check = true := by
  decide +kernel

theorem check_13996 : cell_13996.check = true := by
  decide +kernel

theorem check_13997 : cell_13997.check = true := by
  decide +kernel

theorem check_13998 : cell_13998.check = true := by
  decide +kernel

theorem check_13999 : cell_13999.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13950, cell_13951, cell_13952, cell_13953, cell_13954, cell_13955, cell_13956, cell_13957, cell_13958, cell_13959, cell_13960, cell_13961, cell_13962, cell_13963, cell_13964, cell_13965, cell_13966, cell_13967, cell_13968, cell_13969, cell_13970, cell_13971, cell_13972, cell_13973, cell_13974, cell_13975, cell_13976, cell_13977, cell_13978, cell_13979, cell_13980, cell_13981, cell_13982, cell_13983, cell_13984, cell_13985, cell_13986, cell_13987, cell_13988, cell_13989, cell_13990, cell_13991, cell_13992, cell_13993, cell_13994, cell_13995, cell_13996, cell_13997, cell_13998, cell_13999]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13950, check_13951, check_13952, check_13953, check_13954, check_13955, check_13956, check_13957, check_13958, check_13959, check_13960, check_13961, check_13962, check_13963, check_13964, check_13965, check_13966, check_13967, check_13968, check_13969, check_13970, check_13971, check_13972, check_13973, check_13974, check_13975, check_13976, check_13977, check_13978, check_13979, check_13980, check_13981, check_13982, check_13983, check_13984, check_13985, check_13986, check_13987, check_13988, check_13989, check_13990, check_13991, check_13992, check_13993, check_13994, check_13995, check_13996, check_13997, check_13998, check_13999, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0279

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0279
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0279
open AnalyticBounds.ExpressionCertificate

theorem linked_13950 : Linked cell_13950 pieces := by
  link_source cell_13950 with piece_2074 using piece_2074_mem, ⟨piece_574_mem, piece_575_mem⟩

theorem linked_13951 : Linked cell_13951 pieces := by
  link_source cell_13951 with piece_2075 using piece_2075_mem, piece_575_mem

theorem linked_13952 : Linked cell_13952 pieces := by
  link_source cell_13952 with piece_2075 using piece_2075_mem, ⟨piece_574_mem, piece_575_mem⟩

theorem linked_13953 : Linked cell_13953 pieces := by
  link_source cell_13953 with piece_2075 using piece_2075_mem, piece_574_mem

theorem linked_13954 : Linked cell_13954 pieces := by
  link_source cell_13954 with piece_2076 using piece_2076_mem, ⟨piece_574_mem, piece_575_mem⟩

theorem linked_13955 : Linked cell_13955 pieces := by
  link_source cell_13955 with piece_2076 using piece_2076_mem, piece_574_mem

theorem linked_13956 : Linked cell_13956 pieces := by
  link_source cell_13956 with piece_2076 using piece_2076_mem, piece_574_mem

theorem linked_13957 : Linked cell_13957 pieces := by
  link_source cell_13957 with piece_2077 using piece_2077_mem, ⟨piece_574_mem, piece_575_mem⟩

theorem linked_13958 : Linked cell_13958 pieces := by
  link_source cell_13958 with piece_2077 using piece_2077_mem, piece_574_mem

theorem linked_13959 : Linked cell_13959 pieces := by
  link_source cell_13959 with piece_2077 using piece_2077_mem, piece_574_mem

theorem linked_13960 : Linked cell_13960 pieces := by
  link_source cell_13960 with piece_2078 using piece_2078_mem, piece_574_mem

theorem linked_13961 : Linked cell_13961 pieces := by
  link_source cell_13961 with piece_2078 using piece_2078_mem, piece_574_mem

theorem linked_13962 : Linked cell_13962 pieces := by
  link_source cell_13962 with piece_2078 using piece_2078_mem, piece_574_mem

theorem linked_13963 : Linked cell_13963 pieces := by
  link_source cell_13963 with piece_2079 using piece_2079_mem, piece_574_mem

theorem linked_13964 : Linked cell_13964 pieces := by
  link_source cell_13964 with piece_2079 using piece_2079_mem, piece_574_mem

theorem linked_13965 : Linked cell_13965 pieces := by
  link_source cell_13965 with piece_2079 using piece_2079_mem, ⟨piece_573_mem, piece_574_mem⟩

theorem linked_13966 : Linked cell_13966 pieces := by
  link_source cell_13966 with piece_2080 using piece_2080_mem, piece_574_mem

theorem linked_13967 : Linked cell_13967 pieces := by
  link_source cell_13967 with piece_2080 using piece_2080_mem, ⟨piece_573_mem, piece_574_mem⟩

theorem linked_13968 : Linked cell_13968 pieces := by
  link_source cell_13968 with piece_2080 using piece_2080_mem, piece_573_mem

theorem linked_13969 : Linked cell_13969 pieces := by
  link_source cell_13969 with piece_2081 using piece_2081_mem, ⟨piece_573_mem, piece_574_mem⟩

theorem linked_13970 : Linked cell_13970 pieces := by
  link_source cell_13970 with piece_2081 using piece_2081_mem, piece_573_mem

theorem linked_13971 : Linked cell_13971 pieces := by
  link_source cell_13971 with piece_2081 using piece_2081_mem, piece_573_mem

theorem linked_13972 : Linked cell_13972 pieces := by
  link_source cell_13972 with piece_2082 using piece_2082_mem, ⟨piece_573_mem, piece_574_mem⟩

theorem linked_13973 : Linked cell_13973 pieces := by
  link_source cell_13973 with piece_2082 using piece_2082_mem, piece_573_mem

theorem linked_13974 : Linked cell_13974 pieces := by
  link_source cell_13974 with piece_2082 using piece_2082_mem, piece_573_mem

theorem linked_13975 : Linked cell_13975 pieces := by
  link_source cell_13975 with piece_2083 using piece_2083_mem, piece_573_mem

theorem linked_13976 : Linked cell_13976 pieces := by
  link_source cell_13976 with piece_2083 using piece_2083_mem, piece_573_mem

theorem linked_13977 : Linked cell_13977 pieces := by
  link_source cell_13977 with piece_2083 using piece_2083_mem, piece_573_mem

theorem linked_13978 : Linked cell_13978 pieces := by
  link_source cell_13978 with piece_2084 using piece_2084_mem, piece_573_mem

theorem linked_13979 : Linked cell_13979 pieces := by
  link_source cell_13979 with piece_2084 using piece_2084_mem, piece_573_mem

theorem linked_13980 : Linked cell_13980 pieces := by
  link_source cell_13980 with piece_2084 using piece_2084_mem, ⟨piece_572_mem, piece_573_mem⟩

theorem linked_13981 : Linked cell_13981 pieces := by
  link_source cell_13981 with piece_2085 using piece_2085_mem, piece_573_mem

theorem linked_13982 : Linked cell_13982 pieces := by
  link_source cell_13982 with piece_2085 using piece_2085_mem, ⟨piece_572_mem, piece_573_mem⟩

theorem linked_13983 : Linked cell_13983 pieces := by
  link_source cell_13983 with piece_2085 using piece_2085_mem, piece_572_mem

theorem linked_13984 : Linked cell_13984 pieces := by
  link_source cell_13984 with piece_2086 using piece_2086_mem, piece_573_mem

theorem linked_13985 : Linked cell_13985 pieces := by
  link_source cell_13985 with piece_2087 using piece_2087_mem, ⟨piece_572_mem, piece_573_mem⟩

theorem linked_13986 : Linked cell_13986 pieces := by
  link_source cell_13986 with piece_2087 using piece_2087_mem, piece_572_mem

theorem linked_13987 : Linked cell_13987 pieces := by
  link_source cell_13987 with piece_2088 using piece_2088_mem, ⟨piece_572_mem, piece_573_mem⟩

theorem linked_13988 : Linked cell_13988 pieces := by
  link_source cell_13988 with piece_2088 using piece_2088_mem, piece_572_mem

theorem linked_13989 : Linked cell_13989 pieces := by
  link_source cell_13989 with piece_2088 using piece_2088_mem, piece_572_mem

theorem linked_13990 : Linked cell_13990 pieces := by
  link_source cell_13990 with piece_2089 using piece_2089_mem, piece_572_mem

theorem linked_13991 : Linked cell_13991 pieces := by
  link_source cell_13991 with piece_2089 using piece_2089_mem, piece_572_mem

theorem linked_13992 : Linked cell_13992 pieces := by
  link_source cell_13992 with piece_2090 using piece_2090_mem, piece_572_mem

theorem linked_13993 : Linked cell_13993 pieces := by
  link_source cell_13993 with piece_2090 using piece_2090_mem, ⟨piece_571_mem, piece_572_mem⟩

theorem linked_13994 : Linked cell_13994 pieces := by
  link_source cell_13994 with piece_2091 using piece_2091_mem, piece_572_mem

theorem linked_13995 : Linked cell_13995 pieces := by
  link_source cell_13995 with piece_2091 using piece_2091_mem, ⟨piece_571_mem, piece_572_mem⟩

theorem linked_13996 : Linked cell_13996 pieces := by
  link_source cell_13996 with piece_2091 using piece_2091_mem, piece_571_mem

theorem linked_13997 : Linked cell_13997 pieces := by
  link_source cell_13997 with piece_2092 using piece_2092_mem, ⟨piece_571_mem, piece_572_mem⟩

theorem linked_13998 : Linked cell_13998 pieces := by
  link_source cell_13998 with piece_2092 using piece_2092_mem, piece_571_mem

theorem linked_13999 : Linked cell_13999 pieces := by
  link_source cell_13999 with piece_2093 using piece_2093_mem, ⟨piece_571_mem, piece_572_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0279.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0279.cells,List.forall_mem_cons]
  exact ⟨linked_13950, linked_13951, linked_13952, linked_13953, linked_13954, linked_13955, linked_13956, linked_13957, linked_13958, linked_13959, linked_13960, linked_13961, linked_13962, linked_13963, linked_13964, linked_13965, linked_13966, linked_13967, linked_13968, linked_13969, linked_13970, linked_13971, linked_13972, linked_13973, linked_13974, linked_13975, linked_13976, linked_13977, linked_13978, linked_13979, linked_13980, linked_13981, linked_13982, linked_13983, linked_13984, linked_13985, linked_13986, linked_13987, linked_13988, linked_13989, linked_13990, linked_13991, linked_13992, linked_13993, linked_13994, linked_13995, linked_13996, linked_13997, linked_13998, linked_13999, by simp⟩

theorem covered : covers (9059776536312849 / 10000000000000000 : ℚ) (182950000000000013 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0279.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0279
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0280
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(182950000000000013 / 200000000000000000 : ℚ), (22875000000000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (10644600151889 / 25000000000000 : ℚ)
  w := (1560983676837 / 1250000000000 : ℚ)
  center := (365950000000000021 / 400000000000000000 : ℚ)
  supportValue := (21677983654170113 / 100000000000000000 : ℚ)
  supportSlope := (-358004258976177 / 500000000000000 : ℚ)
  oldCenter := (21677983654170113 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2094
  oldLo := (27 / 125 : ℚ)
  oldHi := (27 / 125 : ℚ)
  oldPieces := [piece_569]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_14000 : Cell := { cellDefaults with
  r := (21331090025667 / 50000000000000 : ℚ)
  w := (12509143425151 / 10000000000000 : ℚ)
  newCoefficients := coefficients_2093
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

noncomputable def cell_14001 : Cell := { cellDefaults with
  domain := ⟨(22875000000000001 / 25000000000000000 : ℚ), (183050000000000013 / 200000000000000000 : ℚ)⟩
  r := (42645402314227 / 100000000000000 : ℚ)
  w := (12504892008129 / 10000000000000 : ℚ)
  center := (366050000000000021 / 400000000000000000 : ℚ)
  supportValue := (4337219194186373 / 20000000000000000 : ℚ)
  supportSlope := (-7160053850653719 / 10000000000000000 : ℚ)
  oldCenter := (4337219194186373 / 20000000000000000 : ℚ)
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

noncomputable def cell_14002 : Cell := { cellDefaults with
  domain := ⟨(183050000000000013 / 200000000000000000 : ℚ), (91550000000000009 / 100000000000000000 : ℚ)⟩
  r := (42645402314227 / 100000000000000 : ℚ)
  w := (12504892008129 / 10000000000000 : ℚ)
  center := (366150000000000031 / 400000000000000000 : ℚ)
  supportValue := (5417051050954589 / 25000000000000000 : ℚ)
  supportSlope := (-7153348427836721 / 10000000000000000 : ℚ)
  oldCenter := (5417051050954589 / 25000000000000000 : ℚ)
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

noncomputable def cell_14003 : Cell := { cellDefaults with
  domain := ⟨(91550000000000009 / 100000000000000000 : ℚ), (183150000000000013 / 200000000000000000 : ℚ)⟩
  r := (42628634971331 / 100000000000000 : ℚ)
  w := (125006388113 / 100000000000 : ℚ)
  center := (366250000000000031 / 400000000000000000 : ℚ)
  supportValue := (2167632162946079 / 10000000000000000 : ℚ)
  supportSlope := (-3492831702571 / 4882812500000 : ℚ)
  oldCenter := (2167632162946079 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2095
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

noncomputable def cell_14004 : Cell := { cellDefaults with
  domain := ⟨(183150000000000013 / 200000000000000000 : ℚ), (22900000000000001 / 25000000000000000 : ℚ)⟩
  r := (42628634971331 / 100000000000000 : ℚ)
  w := (125006388113 / 100000000000 : ℚ)
  center := (366350000000000021 / 400000000000000000 : ℚ)
  supportValue := (10829223341401517 / 50000000000000000 : ℚ)
  supportSlope := (-7146664619786683 / 10000000000000000 : ℚ)
  oldCenter := (10829223341401517 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2095
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_570, piece_571]
}

noncomputable def cell_14005 : Cell := { cellDefaults with
  domain := ⟨(22900000000000001 / 25000000000000000 : ℚ), (91625000000000001 / 100000000000000000 : ℚ)⟩
  r := (42611879614277 / 100000000000000 : ℚ)
  w := (6248192312083 / 5000000000000 : ℚ)
  center := (36645000000000001 / 40000000000000000 : ℚ)
  supportValue := (21666566088345343 / 100000000000000000 : ℚ)
  supportSlope := (-285863956146971 / 400000000000000 : ℚ)
  oldCenter := (21666566088345343 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2096
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

noncomputable def cell_14006 : Cell := { cellDefaults with
  domain := ⟨(91625000000000001 / 100000000000000000 : ℚ), (45824999999999999 / 50000000000000000 : ℚ)⟩
  r := (42611879614277 / 100000000000000 : ℚ)
  w := (6248192312083 / 5000000000000 : ℚ)
  center := (183274999999999999 / 200000000000000000 : ℚ)
  supportValue := (1082435384011301 / 5000000000000000 : ℚ)
  supportSlope := (-7140686477514503 / 10000000000000000 : ℚ)
  oldCenter := (1082435384011301 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2096
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_570, piece_571]
}

noncomputable def cell_14007 : Cell := { cellDefaults with
  domain := ⟨(45824999999999999 / 50000000000000000 : ℚ), (91675000000000001 / 100000000000000000 : ℚ)⟩
  r := (10648783561063 / 25000000000000 : ℚ)
  w := (6246064234433 / 5000000000000 : ℚ)
  center := (183324999999999999 / 200000000000000000 : ℚ)
  supportValue := (21656833178061197 / 100000000000000000 : ℚ)
  supportSlope := (-1785013027757251 / 2500000000000000 : ℚ)
  oldCenter := (21656833178061197 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2097
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_570, piece_571]
}

noncomputable def cell_14008 : Cell := { cellDefaults with
  domain := ⟨(91675000000000001 / 100000000000000000 : ℚ), (22925000000000001 / 25000000000000000 : ℚ)⟩
  r := (10648783561063 / 25000000000000 : ℚ)
  w := (6246064234433 / 5000000000000 : ℚ)
  center := (36675000000000001 / 40000000000000000 : ℚ)
  supportValue := (432779793934613 / 2000000000000000 : ℚ)
  supportSlope := (-1426912081454119 / 2000000000000000 : ℚ)
  oldCenter := (432779793934613 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2097
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

noncomputable def cell_14009 : Cell := { cellDefaults with
  domain := ⟨(22925000000000001 / 25000000000000000 : ℚ), (4585195530726257 / 5000000000000000 : ℚ)⟩
  center := (22925488826815643 / 25000000000000000 : ℚ)
  supportValue := (2165462616562591 / 10000000000000000 : ℚ)
  supportSlope := (-1784003291898419 / 2500000000000000 : ℚ)
  oldCenter := (2165462616562591 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2098
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

noncomputable def cell_14010 : Cell := { cellDefaults with
  domain := ⟨(4585195530726257 / 5000000000000000 : ℚ), (91726955307262569 / 100000000000000000 : ℚ)⟩
  center := (183430865921787709 / 200000000000000000 : ℚ)
  supportValue := (2705628682245833 / 12500000000000000 : ℚ)
  supportSlope := (-7133495678842819 / 10000000000000000 : ℚ)
  oldCenter := (2705628682245833 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2099
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_570, piece_571]
}

noncomputable def cell_14011 : Cell := { cellDefaults with
  domain := ⟨(91726955307262569 / 100000000000000000 : ℚ), (45874999999999999 / 50000000000000000 : ℚ)⟩
  center := (183476955307262567 / 200000000000000000 : ℚ)
  supportValue := (2162859699411053 / 10000000000000000 : ℚ)
  supportSlope := (-3563807985193521 / 5000000000000000 : ℚ)
  oldCenter := (2162859699411053 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2099
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

noncomputable def cell_14012 : Cell := { cellDefaults with
  domain := ⟨(45874999999999999 / 50000000000000000 : ℚ), (91775000000000001 / 100000000000000000 : ℚ)⟩
  r := (42561677953253 / 100000000000000 : ℚ)
  w := (12483608818479 / 10000000000000 : ℚ)
  center := (183524999999999999 / 200000000000000000 : ℚ)
  supportValue := (21637429995397053 / 100000000000000000 : ℚ)
  supportSlope := (-3563929837131069 / 5000000000000000 : ℚ)
  oldCenter := (21637429995397053 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2100
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

noncomputable def cell_14013 : Cell := { cellDefaults with
  domain := ⟨(91775000000000001 / 100000000000000000 : ℚ), (22950000000000001 / 25000000000000000 : ℚ)⟩
  r := (42561677953253 / 100000000000000 : ℚ)
  w := (12483608818479 / 10000000000000 : ℚ)
  center := (36715000000000001 / 40000000000000000 : ℚ)
  supportValue := (10809809323877159 / 50000000000000000 : ℚ)
  supportSlope := (-7121207058681501 / 10000000000000000 : ℚ)
  oldCenter := (10809809323877159 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2100
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

noncomputable def cell_14014 : Cell := { cellDefaults with
  domain := ⟨(22950000000000001 / 25000000000000000 : ℚ), (91825000000000001 / 100000000000000000 : ℚ)⟩
  r := (42544965861823 / 100000000000000 : ℚ)
  w := (779959215879 / 625000000000 : ℚ)
  center := (36725000000000001 / 40000000000000000 : ℚ)
  supportValue := (2162775794208011 / 10000000000000000 : ℚ)
  supportSlope := (-222537246463177 / 312500000000000 : ℚ)
  oldCenter := (2162775794208011 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2101
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

noncomputable def cell_14015 : Cell := { cellDefaults with
  domain := ⟨(91825000000000001 / 100000000000000000 : ℚ), (45924999999999999 / 50000000000000000 : ℚ)⟩
  r := (42544965861823 / 100000000000000 : ℚ)
  w := (779959215879 / 625000000000 : ℚ)
  center := (183674999999999999 / 200000000000000000 : ℚ)
  supportValue := (27012454060331 / 125000000000000 : ℚ)
  supportSlope := (-111164871688329 / 156250000000000 : ℚ)
  oldCenter := (27012454060331 / 125000000000000 : ℚ)
  newCoefficients := coefficients_2101
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

noncomputable def cell_14016 : Cell := { cellDefaults with
  domain := ⟨(45924999999999999 / 50000000000000000 : ℚ), (91875000000000001 / 100000000000000000 : ℚ)⟩
  r := (42528265918221 / 100000000000000 : ℚ)
  w := (1247508349923 / 1000000000000 : ℚ)
  center := (183724999999999999 / 200000000000000000 : ℚ)
  supportValue := (10809053453949119 / 50000000000000000 : ℚ)
  supportSlope := (-7114538778806557 / 10000000000000000 : ℚ)
  oldCenter := (10809053453949119 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2102
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

noncomputable def cell_14017 : Cell := { cellDefaults with
  domain := ⟨(91875000000000001 / 100000000000000000 : ℚ), (22975000000000001 / 25000000000000000 : ℚ)⟩
  r := (42528265918221 / 100000000000000 : ℚ)
  w := (1247508349923 / 1000000000000 : ℚ)
  center := (36755000000000001 / 40000000000000000 : ℚ)
  supportValue := (21600328831257803 / 100000000000000000 : ℚ)
  supportSlope := (-7108553729326097 / 10000000000000000 : ℚ)
  oldCenter := (21600328831257803 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2102
  oldLo := (431 / 2000 : ℚ)
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_569, piece_570]
}

noncomputable def cell_14018 : Cell := { cellDefaults with
  domain := ⟨(22975000000000001 / 25000000000000000 : ℚ), (91925000000000001 / 100000000000000000 : ℚ)⟩
  r := (21255788007907 / 50000000000000 : ℚ)
  w := (779426104593 / 625000000000 : ℚ)
  center := (36765000000000001 / 40000000000000000 : ℚ)
  supportValue := (21608478018154967 / 100000000000000000 : ℚ)
  supportSlope := (-3553966225515053 / 5000000000000000 : ℚ)
  oldCenter := (21608478018154967 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2103
  oldLo := (431 / 2000 : ℚ)
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_569, piece_570]
}

noncomputable def cell_14019 : Cell := { cellDefaults with
  domain := ⟨(91925000000000001 / 100000000000000000 : ℚ), (45974999999999999 / 50000000000000000 : ℚ)⟩
  r := (21255788007907 / 50000000000000 : ℚ)
  w := (779426104593 / 625000000000 : ℚ)
  center := (183874999999999999 / 200000000000000000 : ℚ)
  supportValue := (2159071477896139 / 10000000000000000 : ℚ)
  supportSlope := (-7102612918311343 / 10000000000000000 : ℚ)
  oldCenter := (2159071477896139 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2103
  oldLo := (431 / 2000 : ℚ)
  oldPieces := [piece_569]
}

noncomputable def cell_14020 : Cell := { cellDefaults with
  domain := ⟨(45974999999999999 / 50000000000000000 : ℚ), (91975000000000001 / 100000000000000000 : ℚ)⟩
  r := (10623724246411 / 25000000000000 : ℚ)
  w := (6233274969679 / 5000000000000 : ℚ)
  center := (183924999999999999 / 200000000000000000 : ℚ)
  supportValue := (10799435063534997 / 50000000000000000 : ℚ)
  supportSlope := (-3551013845046321 / 5000000000000000 : ℚ)
  oldCenter := (10799435063534997 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2104
  oldLo := (431 / 2000 : ℚ)
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_569, piece_570]
}

noncomputable def cell_14021 : Cell := { cellDefaults with
  domain := ⟨(91975000000000001 / 100000000000000000 : ℚ), (23000000000000001 / 25000000000000000 : ℚ)⟩
  r := (10623724246411 / 25000000000000 : ℚ)
  w := (6233274969679 / 5000000000000 : ℚ)
  center := (36795000000000001 / 40000000000000000 : ℚ)
  supportValue := (4316224371605601 / 20000000000000000 : ℚ)
  supportSlope := (-3547997664726373 / 5000000000000000 : ℚ)
  oldCenter := (4316224371605601 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2104
  oldLo := (431 / 2000 : ℚ)
  oldPieces := [piece_569]
}

noncomputable def cell_14022 : Cell := { cellDefaults with
  domain := ⟨(23000000000000001 / 25000000000000000 : ℚ), (92025000000000001 / 100000000000000000 : ℚ)⟩
  r := (21239114488217 / 50000000000000 : ℚ)
  w := (1557785082563 / 1250000000000 : ℚ)
  center := (36805000000000001 / 40000000000000000 : ℚ)
  supportValue := (21589281045782951 / 100000000000000000 : ℚ)
  supportSlope := (-1773998203320683 / 2500000000000000 : ℚ)
  oldCenter := (21589281045782951 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2105
  oldLo := (431 / 2000 : ℚ)
  oldPieces := [piece_569]
}

noncomputable def cell_14023 : Cell := { cellDefaults with
  domain := ⟨(92025000000000001 / 100000000000000000 : ℚ), (46024999999999999 / 50000000000000000 : ℚ)⟩
  r := (21239114488217 / 50000000000000 : ℚ)
  w := (1557785082563 / 1250000000000 : ℚ)
  center := (184074999999999999 / 200000000000000000 : ℚ)
  supportValue := (21571549300586587 / 100000000000000000 : ℚ)
  supportSlope := (-3544695997095707 / 5000000000000000 : ℚ)
  oldCenter := (21571549300586587 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2105
  oldLo := (431 / 2000 : ℚ)
  oldPieces := [piece_569]
}

noncomputable def cell_14024 : Cell := { cellDefaults with
  domain := ⟨(46024999999999999 / 50000000000000000 : ℚ), (92075000000000001 / 100000000000000000 : ℚ)⟩
  r := (10615392897007 / 25000000000000 : ℚ)
  w := (6229004512073 / 5000000000000 : ℚ)
  center := (184124999999999999 / 200000000000000000 : ℚ)
  supportValue := (5394928527919117 / 25000000000000000 : ℚ)
  supportSlope := (-1772347966441999 / 2500000000000000 : ℚ)
  oldCenter := (5394928527919117 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2106
  oldLo := (431 / 2000 : ℚ)
  oldPieces := [piece_569]
}

noncomputable def cell_14025 : Cell := { cellDefaults with
  domain := ⟨(92075000000000001 / 100000000000000000 : ℚ), (23025000000000001 / 25000000000000000 : ℚ)⟩
  r := (10615392897007 / 25000000000000 : ℚ)
  w := (6229004512073 / 5000000000000 : ℚ)
  center := (36835000000000001 / 40000000000000000 : ℚ)
  supportValue := (2695249856675011 / 12500000000000000 : ℚ)
  supportSlope := (-7082803409602917 / 10000000000000000 : ℚ)
  oldCenter := (2695249856675011 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2106
  oldLo := (431 / 2000 : ℚ)
  oldPieces := [piece_569]
}

noncomputable def cell_14026 : Cell := { cellDefaults with
  domain := ⟨(23025000000000001 / 25000000000000000 : ℚ), (184250000000000003 / 200000000000000000 : ℚ)⟩
  r := (42444925675917 / 100000000000000 : ℚ)
  w := (6226867800331 / 5000000000000 : ℚ)
  center := (368450000000000011 / 400000000000000000 : ℚ)
  supportValue := (2157016735745917 / 10000000000000000 : ℚ)
  supportSlope := (-221337660729301 / 312500000000000 : ℚ)
  oldCenter := (2157016735745917 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2107
  oldLo := (431 / 2000 : ℚ)
  oldPieces := [piece_569]
}

noncomputable def cell_14027 : Cell := { cellDefaults with
  domain := ⟨(184250000000000003 / 200000000000000000 : ℚ), (92149999999999999 / 100000000000000000 : ℚ)⟩
  r := (42444925675917 / 100000000000000 : ℚ)
  w := (6226867800331 / 5000000000000 : ℚ)
  center := (368550000000000001 / 400000000000000000 : ℚ)
  supportValue := (21552468550586829 / 100000000000000000 : ℚ)
  supportSlope := (-7076708157890007 / 10000000000000000 : ℚ)
  oldCenter := (21552468550586829 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2107
  oldLo := (43 / 200 : ℚ)
  oldPieces := [piece_568, piece_569]
}

noncomputable def cell_14028 : Cell := { cellDefaults with
  domain := ⟨(92149999999999999 / 100000000000000000 : ℚ), (184350000000000003 / 200000000000000000 : ℚ)⟩
  r := (42428290753767 / 100000000000000 : ℚ)
  w := (12449461510691 / 10000000000000 : ℚ)
  center := (368650000000000001 / 400000000000000000 : ℚ)
  supportValue := (10780319709574429 / 50000000000000000 : ℚ)
  supportSlope := (-3538116070724497 / 5000000000000000 : ℚ)
  oldCenter := (10780319709574429 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2108
  oldLo := (431 / 2000 : ℚ)
  oldPieces := [piece_569]
}

noncomputable def cell_14029 : Cell := { cellDefaults with
  domain := ⟨(184350000000000003 / 200000000000000000 : ℚ), (23050000000000001 / 25000000000000000 : ℚ)⟩
  r := (42428290753767 / 100000000000000 : ℚ)
  w := (12449461510691 / 10000000000000 : ℚ)
  center := (368750000000000011 / 400000000000000000 : ℚ)
  supportValue := (21542955706590533 / 100000000000000000 : ℚ)
  supportSlope := (-7070857024979297 / 10000000000000000 : ℚ)
  oldCenter := (21542955706590533 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2108
  oldLo := (43 / 200 : ℚ)
  oldPieces := [piece_568, piece_569]
}

noncomputable def cell_14030 : Cell := { cellDefaults with
  domain := ⟨(23050000000000001 / 25000000000000000 : ℚ), (184450000000000003 / 200000000000000000 : ℚ)⟩
  r := (1325364559857 / 3125000000000 : ℚ)
  w := (2489036637453 / 2000000000000 : ℚ)
  center := (368850000000000011 / 400000000000000000 : ℚ)
  supportValue := (21551137184262711 / 100000000000000000 : ℚ)
  supportSlope := (-7070252986112897 / 10000000000000000 : ℚ)
  oldCenter := (21551137184262711 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2109
  oldLo := (43 / 200 : ℚ)
  oldPieces := [piece_568, piece_569]
}

noncomputable def cell_14031 : Cell := { cellDefaults with
  domain := ⟨(184450000000000003 / 200000000000000000 : ℚ), (92249999999999999 / 100000000000000000 : ℚ)⟩
  r := (1325364559857 / 3125000000000 : ℚ)
  w := (2489036637453 / 2000000000000 : ℚ)
  center := (368950000000000001 / 400000000000000000 : ℚ)
  supportValue := (2153346807934363 / 10000000000000000 : ℚ)
  supportSlope := (-3532219406740331 / 5000000000000000 : ℚ)
  oldCenter := (2153346807934363 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2109
  oldLo := (43 / 200 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_568]
}

noncomputable def cell_14032 : Cell := { cellDefaults with
  domain := ⟨(92249999999999999 / 100000000000000000 : ℚ), (4612849162011173 / 5000000000000000 : ℚ)⟩
  r := (21197526155557 / 50000000000000 : ℚ)
  w := (1244090353993 / 1000000000000 : ℚ)
  center := (184506983240223459 / 200000000000000000 : ℚ)
  supportValue := (21547998509638047 / 100000000000000000 : ℚ)
  supportSlope := (-7066689464844399 / 10000000000000000 : ℚ)
  oldCenter := (21547998509638047 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2110
  oldLo := (43 / 200 : ℚ)
  oldPieces := [piece_568, piece_569]
}

noncomputable def cell_14033 : Cell := { cellDefaults with
  domain := ⟨(4612849162011173 / 5000000000000000 : ℚ), (23069622905027933 / 25000000000000000 : ℚ)⟩
  r := (21197526155557 / 50000000000000 : ℚ)
  w := (1244090353993 / 1000000000000 : ℚ)
  center := (23066934357541899 / 25000000000000000 : ℚ)
  supportValue := (5384488326358599 / 25000000000000000 : ℚ)
  supportSlope := (-706307818764871 / 1000000000000000 : ℚ)
  oldCenter := (5384488326358599 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2111
  oldLo := (43 / 200 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_568]
}

noncomputable def cell_14034 : Cell := { cellDefaults with
  domain := ⟨(23069622905027933 / 25000000000000000 : ℚ), (23075000000000001 / 25000000000000000 : ℚ)⟩
  r := (21197526155557 / 50000000000000 : ℚ)
  w := (1244090353993 / 1000000000000 : ℚ)
  center := (23072311452513967 / 25000000000000000 : ℚ)
  supportValue := (4304553562894603 / 20000000000000000 : ℚ)
  supportSlope := (-7057444219592269 / 10000000000000000 : ℚ)
  oldCenter := (4304553562894603 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2111
  oldLo := (43 / 200 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_568]
}

noncomputable def cell_14035 : Cell := { cellDefaults with
  domain := ⟨(23075000000000001 / 25000000000000000 : ℚ), (184650000000000003 / 200000000000000000 : ℚ)⟩
  r := (8475689855983 / 20000000000000 : ℚ)
  w := (2487324537097 / 2000000000000 : ℚ)
  center := (369250000000000011 / 400000000000000000 : ℚ)
  supportValue := (134576177834911 / 625000000000000 : ℚ)
  supportSlope := (-7057915740916337 / 10000000000000000 : ℚ)
  oldCenter := (134576177834911 / 625000000000000 : ℚ)
  newCoefficients := coefficients_2112
  oldLo := (43 / 200 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_568]
}

noncomputable def cell_14036 : Cell := { cellDefaults with
  domain := ⟨(184650000000000003 / 200000000000000000 : ℚ), (92349999999999999 / 100000000000000000 : ℚ)⟩
  r := (8475689855983 / 20000000000000 : ℚ)
  w := (2487324537097 / 2000000000000 : ℚ)
  center := (369350000000000001 / 400000000000000000 : ℚ)
  supportValue := (2151455182250403 / 10000000000000000 : ℚ)
  supportSlope := (-1762844452819111 / 2500000000000000 : ℚ)
  oldCenter := (2151455182250403 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2112
  oldLo := (43 / 200 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_568]
}

noncomputable def cell_14037 : Cell := { cellDefaults with
  domain := ⟨(92349999999999999 / 100000000000000000 : ℚ), (184750000000000003 / 200000000000000000 : ℚ)⟩
  r := (42361857332439 / 100000000000000 : ℚ)
  w := (6216170020341 / 5000000000000 : ℚ)
  center := (369450000000000001 / 400000000000000000 : ℚ)
  supportValue := (10761372186526659 / 50000000000000000 : ℚ)
  supportSlope := (-352569706628523 / 500000000000000 : ℚ)
  oldCenter := (10761372186526659 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2113
  oldLo := (43 / 200 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_568]
}

noncomputable def cell_14038 : Cell := { cellDefaults with
  domain := ⟨(184750000000000003 / 200000000000000000 : ℚ), (23100000000000001 / 25000000000000000 : ℚ)⟩
  r := (42361857332439 / 100000000000000 : ℚ)
  w := (6216170020341 / 5000000000000 : ℚ)
  center := (369550000000000011 / 400000000000000000 : ℚ)
  supportValue := (10752562015396819 / 50000000000000000 : ℚ)
  supportSlope := (-7045145565799789 / 10000000000000000 : ℚ)
  oldCenter := (10752562015396819 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2113
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_567, piece_568]
}

noncomputable def cell_14039 : Cell := { cellDefaults with
  domain := ⟨(23100000000000001 / 25000000000000000 : ℚ), (184850000000000003 / 200000000000000000 : ℚ)⟩
  r := (42345275780779 / 100000000000000 : ℚ)
  w := (12428055227851 / 10000000000000 : ℚ)
  center := (369650000000000011 / 400000000000000000 : ℚ)
  supportValue := (21513322014044053 / 100000000000000000 : ℚ)
  supportSlope := (-281795478315711 / 400000000000000 : ℚ)
  oldCenter := (21513322014044053 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2114
  oldLo := (43 / 200 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_568]
}

noncomputable def cell_14040 : Cell := { cellDefaults with
  domain := ⟨(184850000000000003 / 200000000000000000 : ℚ), (92449999999999999 / 100000000000000000 : ℚ)⟩
  r := (42345275780779 / 100000000000000 : ℚ)
  w := (12428055227851 / 10000000000000 : ℚ)
  center := (369750000000000001 / 400000000000000000 : ℚ)
  supportValue := (21495717118939883 / 100000000000000000 : ℚ)
  supportSlope := (-1759838146784441 / 2500000000000000 : ℚ)
  oldCenter := (21495717118939883 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2114
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_567, piece_568]
}

noncomputable def cell_14041 : Cell := { cellDefaults with
  domain := ⟨(92449999999999999 / 100000000000000000 : ℚ), (184950000000000003 / 200000000000000000 : ℚ)⟩
  r := (21164352974353 / 50000000000000 : ℚ)
  w := (6066293567 / 4882812500 : ℚ)
  center := (369850000000000001 / 400000000000000000 : ℚ)
  supportValue := (5375979552289959 / 25000000000000000 : ℚ)
  supportSlope := (-7038760159900199 / 10000000000000000 : ℚ)
  oldCenter := (5375979552289959 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2115
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_567, piece_568]
}

noncomputable def cell_14042 : Cell := { cellDefaults with
  domain := ⟨(184950000000000003 / 200000000000000000 : ℚ), (23125000000000001 / 25000000000000000 : ℚ)⟩
  r := (21164352974353 / 50000000000000 : ℚ)
  w := (6066293567 / 4882812500 : ℚ)
  center := (369950000000000011 / 400000000000000000 : ℚ)
  supportValue := (21486327780135409 / 100000000000000000 : ℚ)
  supportSlope := (-3516601236409271 / 5000000000000000 : ℚ)
  oldCenter := (21486327780135409 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2115
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (43 / 200 : ℚ)
  oldPieces := [piece_567]
}

noncomputable def cell_14043 : Cell := { cellDefaults with
  domain := ⟨(23125000000000001 / 25000000000000000 : ℚ), (185050000000000003 / 200000000000000000 : ℚ)⟩
  r := (5289018292123 / 12500000000000 : ℚ)
  w := (12419479804811 / 10000000000000 : ℚ)
  center := (370050000000000011 / 400000000000000000 : ℚ)
  supportValue := (134340857875989 / 625000000000000 : ℚ)
  supportSlope := (-7032981382336249 / 10000000000000000 : ℚ)
  oldCenter := (134340857875989 / 625000000000000 : ℚ)
  newCoefficients := coefficients_2116
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_567, piece_568]
}

noncomputable def cell_14044 : Cell := { cellDefaults with
  domain := ⟨(185050000000000003 / 200000000000000000 : ℚ), (92549999999999999 / 100000000000000000 : ℚ)⟩
  r := (5289018292123 / 12500000000000 : ℚ)
  w := (12419479804811 / 10000000000000 : ℚ)
  center := (370150000000000001 / 400000000000000000 : ℚ)
  supportValue := (5369240574129379 / 25000000000000000 : ℚ)
  supportSlope := (-1756682533594243 / 2500000000000000 : ℚ)
  oldCenter := (5369240574129379 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2116
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (43 / 200 : ℚ)
  oldPieces := [piece_567]
}

noncomputable def cell_14045 : Cell := { cellDefaults with
  domain := ⟨(92549999999999999 / 100000000000000000 : ℚ), (46287500000000001 / 50000000000000000 : ℚ)⟩
  r := (5286949658463 / 12500000000000 : ℚ)
  w := (775949360193 / 625000000000 : ℚ)
  center := (185125000000000001 / 200000000000000000 : ℚ)
  supportValue := (2685646803435449 / 12500000000000000 : ℚ)
  supportSlope := (-1405351712042089 / 2000000000000000 : ℚ)
  oldCenter := (2685646803435449 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2117
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (43 / 200 : ℚ)
  oldPieces := [piece_567]
}

noncomputable def cell_14046 : Cell := { cellDefaults with
  domain := ⟨(46287500000000001 / 50000000000000000 : ℚ), (18520000000000001 / 20000000000000000 : ℚ)⟩
  r := (5286949658463 / 12500000000000 : ℚ)
  w := (775949360193 / 625000000000 : ℚ)
  center := (185175000000000007 / 200000000000000000 : ℚ)
  supportValue := (10733807813052451 / 50000000000000000 : ℚ)
  supportSlope := (-280810861890279 / 400000000000000 : ℚ)
  oldCenter := (10733807813052451 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2117
  oldLo := (429 / 2000 : ℚ)
  oldHi := (43 / 200 : ℚ)
  oldPieces := [piece_566, piece_567]
}

noncomputable def cell_14047 : Cell := { cellDefaults with
  domain := ⟨(18520000000000001 / 20000000000000000 : ℚ), (46312500000000001 / 50000000000000000 : ℚ)⟩
  r := (21139529676277 / 50000000000000 : ℚ)
  w := (6205448534731 / 5000000000000 : ℚ)
  center := (185225000000000007 / 200000000000000000 : ℚ)
  supportValue := (4295166611792553 / 20000000000000000 : ℚ)
  supportSlope := (-877537747227369 / 1250000000000000 : ℚ)
  oldCenter := (4295166611792553 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2118
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (43 / 200 : ℚ)
  oldPieces := [piece_567]
}

noncomputable def cell_14048 : Cell := { cellDefaults with
  domain := ⟨(46312500000000001 / 50000000000000000 : ℚ), (92649999999999999 / 100000000000000000 : ℚ)⟩
  r := (21139529676277 / 50000000000000 : ℚ)
  w := (6205448534731 / 5000000000000 : ℚ)
  center := (185275000000000001 / 200000000000000000 : ℚ)
  supportValue := (1072914519161113 / 5000000000000000 : ℚ)
  supportSlope := (-876733083999653 / 1250000000000000 : ℚ)
  oldCenter := (1072914519161113 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2118
  oldLo := (107 / 500 : ℚ)
  oldHi := (43 / 200 : ℚ)
  oldPieces := [piece_565, piece_566, piece_567]
}

noncomputable def cell_14049 : Cell := { cellDefaults with
  domain := ⟨(92649999999999999 / 100000000000000000 : ℚ), (46337500000000001 / 50000000000000000 : ℚ)⟩
  r := (21131266019911 / 50000000000000 : ℚ)
  w := (2481320569829 / 2000000000000 : ℚ)
  center := (185325000000000001 / 200000000000000000 : ℚ)
  supportValue := (10733255931826227 / 50000000000000000 : ℚ)
  supportSlope := (-7013859608188391 / 10000000000000000 : ℚ)
  oldCenter := (10733255931826227 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2119
  oldLo := (429 / 2000 : ℚ)
  oldHi := (43 / 200 : ℚ)
  oldPieces := [piece_566, piece_567]
}

theorem check_14000 : cell_14000.check = true := by
  decide +kernel

theorem check_14001 : cell_14001.check = true := by
  decide +kernel

theorem check_14002 : cell_14002.check = true := by
  decide +kernel

theorem check_14003 : cell_14003.check = true := by
  decide +kernel

theorem check_14004 : cell_14004.check = true := by
  decide +kernel

theorem check_14005 : cell_14005.check = true := by
  decide +kernel

theorem check_14006 : cell_14006.check = true := by
  decide +kernel

theorem check_14007 : cell_14007.check = true := by
  decide +kernel

theorem check_14008 : cell_14008.check = true := by
  decide +kernel

theorem check_14009 : cell_14009.check = true := by
  decide +kernel

theorem check_14010 : cell_14010.check = true := by
  decide +kernel

theorem check_14011 : cell_14011.check = true := by
  decide +kernel

theorem check_14012 : cell_14012.check = true := by
  decide +kernel

theorem check_14013 : cell_14013.check = true := by
  decide +kernel

theorem check_14014 : cell_14014.check = true := by
  decide +kernel

theorem check_14015 : cell_14015.check = true := by
  decide +kernel

theorem check_14016 : cell_14016.check = true := by
  decide +kernel

theorem check_14017 : cell_14017.check = true := by
  decide +kernel

theorem check_14018 : cell_14018.check = true := by
  decide +kernel

theorem check_14019 : cell_14019.check = true := by
  decide +kernel

theorem check_14020 : cell_14020.check = true := by
  decide +kernel

theorem check_14021 : cell_14021.check = true := by
  decide +kernel

theorem check_14022 : cell_14022.check = true := by
  decide +kernel

theorem check_14023 : cell_14023.check = true := by
  decide +kernel

theorem check_14024 : cell_14024.check = true := by
  decide +kernel

theorem check_14025 : cell_14025.check = true := by
  decide +kernel

theorem check_14026 : cell_14026.check = true := by
  decide +kernel

theorem check_14027 : cell_14027.check = true := by
  decide +kernel

theorem check_14028 : cell_14028.check = true := by
  decide +kernel

theorem check_14029 : cell_14029.check = true := by
  decide +kernel

theorem check_14030 : cell_14030.check = true := by
  decide +kernel

theorem check_14031 : cell_14031.check = true := by
  decide +kernel

theorem check_14032 : cell_14032.check = true := by
  decide +kernel

theorem check_14033 : cell_14033.check = true := by
  decide +kernel

theorem check_14034 : cell_14034.check = true := by
  decide +kernel

theorem check_14035 : cell_14035.check = true := by
  decide +kernel

theorem check_14036 : cell_14036.check = true := by
  decide +kernel

theorem check_14037 : cell_14037.check = true := by
  decide +kernel

theorem check_14038 : cell_14038.check = true := by
  decide +kernel

theorem check_14039 : cell_14039.check = true := by
  decide +kernel

theorem check_14040 : cell_14040.check = true := by
  decide +kernel

theorem check_14041 : cell_14041.check = true := by
  decide +kernel

theorem check_14042 : cell_14042.check = true := by
  decide +kernel

theorem check_14043 : cell_14043.check = true := by
  decide +kernel

theorem check_14044 : cell_14044.check = true := by
  decide +kernel

theorem check_14045 : cell_14045.check = true := by
  decide +kernel

theorem check_14046 : cell_14046.check = true := by
  decide +kernel

theorem check_14047 : cell_14047.check = true := by
  decide +kernel

theorem check_14048 : cell_14048.check = true := by
  decide +kernel

theorem check_14049 : cell_14049.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_14000, cell_14001, cell_14002, cell_14003, cell_14004, cell_14005, cell_14006, cell_14007, cell_14008, cell_14009, cell_14010, cell_14011, cell_14012, cell_14013, cell_14014, cell_14015, cell_14016, cell_14017, cell_14018, cell_14019, cell_14020, cell_14021, cell_14022, cell_14023, cell_14024, cell_14025, cell_14026, cell_14027, cell_14028, cell_14029, cell_14030, cell_14031, cell_14032, cell_14033, cell_14034, cell_14035, cell_14036, cell_14037, cell_14038, cell_14039, cell_14040, cell_14041, cell_14042, cell_14043, cell_14044, cell_14045, cell_14046, cell_14047, cell_14048, cell_14049]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_14000, check_14001, check_14002, check_14003, check_14004, check_14005, check_14006, check_14007, check_14008, check_14009, check_14010, check_14011, check_14012, check_14013, check_14014, check_14015, check_14016, check_14017, check_14018, check_14019, check_14020, check_14021, check_14022, check_14023, check_14024, check_14025, check_14026, check_14027, check_14028, check_14029, check_14030, check_14031, check_14032, check_14033, check_14034, check_14035, check_14036, check_14037, check_14038, check_14039, check_14040, check_14041, check_14042, check_14043, check_14044, check_14045, check_14046, check_14047, check_14048, check_14049, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0280

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0280
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0280
open AnalyticBounds.ExpressionCertificate

theorem linked_14000 : Linked cell_14000 pieces := by
  link_source cell_14000 with piece_2093 using piece_2093_mem, piece_571_mem

theorem linked_14001 : Linked cell_14001 pieces := by
  link_source cell_14001 with piece_2094 using piece_2094_mem, piece_571_mem

theorem linked_14002 : Linked cell_14002 pieces := by
  link_source cell_14002 with piece_2094 using piece_2094_mem, piece_571_mem

theorem linked_14003 : Linked cell_14003 pieces := by
  link_source cell_14003 with piece_2095 using piece_2095_mem, piece_571_mem

theorem linked_14004 : Linked cell_14004 pieces := by
  link_source cell_14004 with piece_2095 using piece_2095_mem, ⟨piece_570_mem, piece_571_mem⟩

theorem linked_14005 : Linked cell_14005 pieces := by
  link_source cell_14005 with piece_2096 using piece_2096_mem, piece_571_mem

theorem linked_14006 : Linked cell_14006 pieces := by
  link_source cell_14006 with piece_2096 using piece_2096_mem, ⟨piece_570_mem, piece_571_mem⟩

theorem linked_14007 : Linked cell_14007 pieces := by
  link_source cell_14007 with piece_2097 using piece_2097_mem, ⟨piece_570_mem, piece_571_mem⟩

theorem linked_14008 : Linked cell_14008 pieces := by
  link_source cell_14008 with piece_2097 using piece_2097_mem, piece_570_mem

theorem linked_14009 : Linked cell_14009 pieces := by
  link_source cell_14009 with piece_2098 using piece_2098_mem, piece_571_mem

theorem linked_14010 : Linked cell_14010 pieces := by
  link_source cell_14010 with piece_2099 using piece_2099_mem, ⟨piece_570_mem, piece_571_mem⟩

theorem linked_14011 : Linked cell_14011 pieces := by
  link_source cell_14011 with piece_2099 using piece_2099_mem, piece_570_mem

theorem linked_14012 : Linked cell_14012 pieces := by
  link_source cell_14012 with piece_2100 using piece_2100_mem, piece_570_mem

theorem linked_14013 : Linked cell_14013 pieces := by
  link_source cell_14013 with piece_2100 using piece_2100_mem, piece_570_mem

theorem linked_14014 : Linked cell_14014 pieces := by
  link_source cell_14014 with piece_2101 using piece_2101_mem, piece_570_mem

theorem linked_14015 : Linked cell_14015 pieces := by
  link_source cell_14015 with piece_2101 using piece_2101_mem, piece_570_mem

theorem linked_14016 : Linked cell_14016 pieces := by
  link_source cell_14016 with piece_2102 using piece_2102_mem, piece_570_mem

theorem linked_14017 : Linked cell_14017 pieces := by
  link_source cell_14017 with piece_2102 using piece_2102_mem, ⟨piece_569_mem, piece_570_mem⟩

theorem linked_14018 : Linked cell_14018 pieces := by
  link_source cell_14018 with piece_2103 using piece_2103_mem, ⟨piece_569_mem, piece_570_mem⟩

theorem linked_14019 : Linked cell_14019 pieces := by
  link_source cell_14019 with piece_2103 using piece_2103_mem, piece_569_mem

theorem linked_14020 : Linked cell_14020 pieces := by
  link_source cell_14020 with piece_2104 using piece_2104_mem, ⟨piece_569_mem, piece_570_mem⟩

theorem linked_14021 : Linked cell_14021 pieces := by
  link_source cell_14021 with piece_2104 using piece_2104_mem, piece_569_mem

theorem linked_14022 : Linked cell_14022 pieces := by
  link_source cell_14022 with piece_2105 using piece_2105_mem, piece_569_mem

theorem linked_14023 : Linked cell_14023 pieces := by
  link_source cell_14023 with piece_2105 using piece_2105_mem, piece_569_mem

theorem linked_14024 : Linked cell_14024 pieces := by
  link_source cell_14024 with piece_2106 using piece_2106_mem, piece_569_mem

theorem linked_14025 : Linked cell_14025 pieces := by
  link_source cell_14025 with piece_2106 using piece_2106_mem, piece_569_mem

theorem linked_14026 : Linked cell_14026 pieces := by
  link_source cell_14026 with piece_2107 using piece_2107_mem, piece_569_mem

theorem linked_14027 : Linked cell_14027 pieces := by
  link_source cell_14027 with piece_2107 using piece_2107_mem, ⟨piece_568_mem, piece_569_mem⟩

theorem linked_14028 : Linked cell_14028 pieces := by
  link_source cell_14028 with piece_2108 using piece_2108_mem, piece_569_mem

theorem linked_14029 : Linked cell_14029 pieces := by
  link_source cell_14029 with piece_2108 using piece_2108_mem, ⟨piece_568_mem, piece_569_mem⟩

theorem linked_14030 : Linked cell_14030 pieces := by
  link_source cell_14030 with piece_2109 using piece_2109_mem, ⟨piece_568_mem, piece_569_mem⟩

theorem linked_14031 : Linked cell_14031 pieces := by
  link_source cell_14031 with piece_2109 using piece_2109_mem, piece_568_mem

theorem linked_14032 : Linked cell_14032 pieces := by
  link_source cell_14032 with piece_2110 using piece_2110_mem, ⟨piece_568_mem, piece_569_mem⟩

theorem linked_14033 : Linked cell_14033 pieces := by
  link_source cell_14033 with piece_2111 using piece_2111_mem, piece_568_mem

theorem linked_14034 : Linked cell_14034 pieces := by
  link_source cell_14034 with piece_2111 using piece_2111_mem, piece_568_mem

theorem linked_14035 : Linked cell_14035 pieces := by
  link_source cell_14035 with piece_2112 using piece_2112_mem, piece_568_mem

theorem linked_14036 : Linked cell_14036 pieces := by
  link_source cell_14036 with piece_2112 using piece_2112_mem, piece_568_mem

theorem linked_14037 : Linked cell_14037 pieces := by
  link_source cell_14037 with piece_2113 using piece_2113_mem, piece_568_mem

theorem linked_14038 : Linked cell_14038 pieces := by
  link_source cell_14038 with piece_2113 using piece_2113_mem, ⟨piece_567_mem, piece_568_mem⟩

theorem linked_14039 : Linked cell_14039 pieces := by
  link_source cell_14039 with piece_2114 using piece_2114_mem, piece_568_mem

theorem linked_14040 : Linked cell_14040 pieces := by
  link_source cell_14040 with piece_2114 using piece_2114_mem, ⟨piece_567_mem, piece_568_mem⟩

theorem linked_14041 : Linked cell_14041 pieces := by
  link_source cell_14041 with piece_2115 using piece_2115_mem, ⟨piece_567_mem, piece_568_mem⟩

theorem linked_14042 : Linked cell_14042 pieces := by
  link_source cell_14042 with piece_2115 using piece_2115_mem, piece_567_mem

theorem linked_14043 : Linked cell_14043 pieces := by
  link_source cell_14043 with piece_2116 using piece_2116_mem, ⟨piece_567_mem, piece_568_mem⟩

theorem linked_14044 : Linked cell_14044 pieces := by
  link_source cell_14044 with piece_2116 using piece_2116_mem, piece_567_mem

theorem linked_14045 : Linked cell_14045 pieces := by
  link_source cell_14045 with piece_2117 using piece_2117_mem, piece_567_mem

theorem linked_14046 : Linked cell_14046 pieces := by
  link_source cell_14046 with piece_2117 using piece_2117_mem, ⟨piece_566_mem, piece_567_mem⟩

theorem linked_14047 : Linked cell_14047 pieces := by
  link_source cell_14047 with piece_2118 using piece_2118_mem, piece_567_mem

theorem linked_14048 : Linked cell_14048 pieces := by
  link_source cell_14048 with piece_2118 using piece_2118_mem, ⟨piece_565_mem, ⟨piece_566_mem, piece_567_mem⟩⟩

theorem linked_14049 : Linked cell_14049 pieces := by
  link_source cell_14049 with piece_2119 using piece_2119_mem, ⟨piece_566_mem, piece_567_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0280.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0280.cells,List.forall_mem_cons]
  exact ⟨linked_14000, linked_14001, linked_14002, linked_14003, linked_14004, linked_14005, linked_14006, linked_14007, linked_14008, linked_14009, linked_14010, linked_14011, linked_14012, linked_14013, linked_14014, linked_14015, linked_14016, linked_14017, linked_14018, linked_14019, linked_14020, linked_14021, linked_14022, linked_14023, linked_14024, linked_14025, linked_14026, linked_14027, linked_14028, linked_14029, linked_14030, linked_14031, linked_14032, linked_14033, linked_14034, linked_14035, linked_14036, linked_14037, linked_14038, linked_14039, linked_14040, linked_14041, linked_14042, linked_14043, linked_14044, linked_14045, linked_14046, linked_14047, linked_14048, linked_14049, by simp⟩

theorem covered : covers (182950000000000013 / 200000000000000000 : ℚ) (46337500000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0280.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0280
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0281
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(46337500000000001 / 50000000000000000 : ℚ), (18540000000000001 / 20000000000000000 : ℚ)⟩
  branch := .left
  r := (4221301355003 / 10000000000000 : ℚ)
  w := (12393707863647 / 10000000000000 : ℚ)
  center := (185375000000000007 / 200000000000000000 : ℚ)
  supportValue := (1340561567785801 / 6250000000000000 : ℚ)
  supportSlope := (-700812843180381 / 1000000000000000 : ℚ)
  oldCenter := (1340561567785801 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_2120
  oldLo := (21299999999999999 / 100000000000000000 : ℚ)
  oldHi := (429 / 2000 : ℚ)
  oldPieces := [piece_565]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_14050 : Cell := { cellDefaults with
  r := (21131266019911 / 50000000000000 : ℚ)
  w := (2481320569829 / 2000000000000 : ℚ)
  newCoefficients := coefficients_2119
  oldLo := (107 / 500 : ℚ)
  oldHi := (2146368715083799 / 10000000000000000 : ℚ)
  oldPieces := [piece_565, piece_566]
}

noncomputable def cell_14051 : Cell := { cellDefaults with
  domain := ⟨(18540000000000001 / 20000000000000000 : ℚ), (46362500000000001 / 50000000000000000 : ℚ)⟩
  r := (10561503845299 / 25000000000000 : ℚ)
  w := (6201153574013 / 5000000000000 : ℚ)
  center := (185425000000000007 / 200000000000000000 : ℚ)
  supportValue := (1072860532742767 / 5000000000000000 : ℚ)
  supportSlope := (-7007548513847391 / 10000000000000000 : ℚ)
  oldCenter := (1072860532742767 / 5000000000000000 : ℚ)
  oldLo := (107 / 500 : ℚ)
  oldHi := (43 / 200 : ℚ)
  oldPieces := [piece_565, piece_566, piece_567]
}

noncomputable def cell_14052 : Cell := { cellDefaults with
  domain := ⟨(46362500000000001 / 50000000000000000 : ℚ), (92749999999999999 / 100000000000000000 : ℚ)⟩
  r := (10561503845299 / 25000000000000 : ℚ)
  w := (6201153574013 / 5000000000000 : ℚ)
  center := (185475000000000001 / 200000000000000000 : ℚ)
  supportValue := (21439698199600107 / 100000000000000000 : ℚ)
  supportSlope := (-7002284574232083 / 10000000000000000 : ℚ)
  oldCenter := (21439698199600107 / 100000000000000000 : ℚ)
  oldLo := (107 / 500 : ℚ)
  oldPieces := [piece_565]
}

noncomputable def cell_14053 : Cell := { cellDefaults with
  domain := ⟨(92749999999999999 / 100000000000000000 : ℚ), (46387500000000001 / 50000000000000000 : ℚ)⟩
  r := (5278688627887 / 12500000000000 : ℚ)
  w := (3099502163029 / 2500000000000 : ℚ)
  center := (185525000000000001 / 200000000000000000 : ℚ)
  supportValue := (21447931560733027 / 100000000000000000 : ℚ)
  supportSlope := (-175045656513363 / 250000000000000 : ℚ)
  oldCenter := (21447931560733027 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2121
  oldLo := (107 / 500 : ℚ)
  oldHi := (2146368715083799 / 10000000000000000 : ℚ)
  oldPieces := [piece_565, piece_566]
}

noncomputable def cell_14054 : Cell := { cellDefaults with
  domain := ⟨(46387500000000001 / 50000000000000000 : ℚ), (18560000000000001 / 20000000000000000 : ℚ)⟩
  r := (5278688627887 / 12500000000000 : ℚ)
  w := (3099502163029 / 2500000000000 : ℚ)
  center := (185575000000000007 / 200000000000000000 : ℚ)
  supportValue := (2143043379436003 / 10000000000000000 : ℚ)
  supportSlope := (-1748969093843601 / 2500000000000000 : ℚ)
  oldCenter := (2143043379436003 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2121
  oldLo := (107 / 500 : ℚ)
  oldPieces := [piece_565]
}

noncomputable def cell_14055 : Cell := { cellDefaults with
  domain := ⟨(18560000000000001 / 20000000000000000 : ℚ), (4640502793296089 / 5000000000000000 : ℚ)⟩
  center := (37122011173184357 / 40000000000000000 : ℚ)
  supportValue := (2144388091542977 / 10000000000000000 : ℚ)
  supportSlope := (-3498922563215483 / 5000000000000000 : ℚ)
  oldCenter := (2144388091542977 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2122
  oldLo := (107 / 500 : ℚ)
  oldPieces := [piece_565]
}

noncomputable def cell_14056 : Cell := { cellDefaults with
  domain := ⟨(4640502793296089 / 5000000000000000 : ℚ), (185660055865921779 / 200000000000000000 : ℚ)⟩
  center := (371280167597765339 / 400000000000000000 : ℚ)
  supportValue := (669793642762353 / 3125000000000000 : ℚ)
  supportSlope := (-3496988077370613 / 5000000000000000 : ℚ)
  oldCenter := (669793642762353 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_2123
  oldLo := (107 / 500 : ℚ)
  oldPieces := [piece_565]
}

noncomputable def cell_14057 : Cell := { cellDefaults with
  domain := ⟨(185660055865921779 / 200000000000000000 : ℚ), (92849999999999999 / 100000000000000000 : ℚ)⟩
  center := (371360055865921777 / 400000000000000000 : ℚ)
  supportValue := (21419433273759553 / 100000000000000000 : ℚ)
  supportSlope := (-3494417662422483 / 5000000000000000 : ℚ)
  oldCenter := (21419433273759553 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2123
  oldLo := (107 / 500 : ℚ)
  oldPieces := [piece_565]
}

noncomputable def cell_14058 : Cell := { cellDefaults with
  domain := ⟨(92849999999999999 / 100000000000000000 : ℚ), (46437500000000001 / 50000000000000000 : ℚ)⟩
  r := (21098264233409 / 50000000000000 : ℚ)
  w := (387168909783 / 312500000000 : ℚ)
  center := (185725000000000001 / 200000000000000000 : ℚ)
  supportValue := (2142943355827303 / 10000000000000000 : ℚ)
  supportSlope := (-174738183111013 / 250000000000000 : ℚ)
  oldCenter := (2142943355827303 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2124
  oldLo := (107 / 500 : ℚ)
  oldPieces := [piece_565]
}

noncomputable def cell_14059 : Cell := { cellDefaults with
  domain := ⟨(46437500000000001 / 50000000000000000 : ℚ), (18580000000000001 / 20000000000000000 : ℚ)⟩
  r := (21098264233409 / 50000000000000 : ℚ)
  w := (387168909783 / 312500000000 : ℚ)
  center := (185775000000000007 / 200000000000000000 : ℚ)
  supportValue := (21411967757584463 / 100000000000000000 : ℚ)
  supportSlope := (-698310197831647 / 1000000000000000 : ℚ)
  oldCenter := (21411967757584463 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2124
  oldLo := (107 / 500 : ℚ)
  oldPieces := [piece_565]
}

noncomputable def cell_14060 : Cell := { cellDefaults with
  domain := ⟨(18580000000000001 / 20000000000000000 : ℚ), (46462500000000001 / 50000000000000000 : ℚ)⟩
  r := (2109002709623 / 5000000000000 : ℚ)
  w := (12385100521299 / 10000000000000 : ℚ)
  center := (185825000000000007 / 200000000000000000 : ℚ)
  supportValue := (2677526904127539 / 12500000000000000 : ℚ)
  supportSlope := (-6983149003848281 / 10000000000000000 : ℚ)
  oldCenter := (2677526904127539 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2125
  oldLo := (107 / 500 : ℚ)
  oldPieces := [piece_565]
}

noncomputable def cell_14061 : Cell := { cellDefaults with
  domain := ⟨(46462500000000001 / 50000000000000000 : ℚ), (92949999999999999 / 100000000000000000 : ℚ)⟩
  r := (2109002709623 / 5000000000000 : ℚ)
  w := (12385100521299 / 10000000000000 : ℚ)
  center := (185875000000000001 / 200000000000000000 : ℚ)
  supportValue := (668836417604419 / 3125000000000000 : ℚ)
  supportSlope := (-3488590644527419 / 5000000000000000 : ℚ)
  oldCenter := (668836417604419 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_2125
  oldLo := (427 / 2000 : ℚ)
  oldPieces := [piece_564, piece_565]
}

noncomputable def cell_14062 : Cell := { cellDefaults with
  domain := ⟨(92949999999999999 / 100000000000000000 : ℚ), (46487500000000001 / 50000000000000000 : ℚ)⟩
  r := (843271819273 / 2000000000000 : ℚ)
  w := (12380794837963 / 10000000000000 : ℚ)
  center := (185925000000000001 / 200000000000000000 : ℚ)
  supportValue := (2141101556158927 / 10000000000000000 : ℚ)
  supportSlope := (-872097997743799 / 1250000000000000 : ℚ)
  oldCenter := (2141101556158927 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2126
  oldLo := (107 / 500 : ℚ)
  oldPieces := [piece_565]
}

noncomputable def cell_14063 : Cell := { cellDefaults with
  domain := ⟨(46487500000000001 / 50000000000000000 : ℚ), (18600000000000001 / 20000000000000000 : ℚ)⟩
  r := (843271819273 / 2000000000000 : ℚ)
  w := (12380794837963 / 10000000000000 : ℚ)
  center := (185975000000000007 / 200000000000000000 : ℚ)
  supportValue := (21393580388647523 / 100000000000000000 : ℚ)
  supportSlope := (-3485755372875791 / 5000000000000000 : ℚ)
  oldCenter := (21393580388647523 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2126
  oldLo := (427 / 2000 : ℚ)
  oldPieces := [piece_564, piece_565]
}

noncomputable def cell_14064 : Cell := { cellDefaults with
  domain := ⟨(18600000000000001 / 20000000000000000 : ℚ), (46512500000000001 / 50000000000000000 : ℚ)⟩
  r := (10536784346207 / 25000000000000 : ℚ)
  w := (12376485541467 / 10000000000000 : ℚ)
  center := (186025000000000007 / 200000000000000000 : ℚ)
  supportValue := (535046005698429 / 2500000000000000 : ℚ)
  supportSlope := (-348547397656593 / 500000000000000 : ℚ)
  oldCenter := (535046005698429 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_2127
  oldLo := (427 / 2000 : ℚ)
  oldPieces := [piece_564, piece_565]
}

noncomputable def cell_14065 : Cell := { cellDefaults with
  domain := ⟨(46512500000000001 / 50000000000000000 : ℚ), (93049999999999999 / 100000000000000000 : ℚ)⟩
  r := (10536784346207 / 25000000000000 : ℚ)
  w := (12376485541467 / 10000000000000 : ℚ)
  center := (186075000000000001 / 200000000000000000 : ℚ)
  supportValue := (4276883842468791 / 20000000000000000 : ℚ)
  supportSlope := (-696533675238781 / 1000000000000000 : ℚ)
  oldCenter := (4276883842468791 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2127
  oldLo := (427 / 2000 : ℚ)
  oldHi := (107 / 500 : ℚ)
  oldPieces := [piece_564]
}

noncomputable def cell_14066 : Cell := { cellDefaults with
  domain := ⟨(93049999999999999 / 100000000000000000 : ℚ), (46537500000000001 / 50000000000000000 : ℚ)⟩
  r := (1053267364967 / 2500000000000 : ℚ)
  w := (12372174364243 / 10000000000000 : ℚ)
  center := (186125000000000001 / 200000000000000000 : ℚ)
  supportValue := (1337042728962929 / 6250000000000000 : ℚ)
  supportSlope := (-6965291798947391 / 10000000000000000 : ℚ)
  oldCenter := (1337042728962929 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_2128
  oldLo := (427 / 2000 : ℚ)
  oldPieces := [piece_564, piece_565]
}

noncomputable def cell_14067 : Cell := { cellDefaults with
  domain := ⟨(46537500000000001 / 50000000000000000 : ℚ), (18620000000000001 / 20000000000000000 : ℚ)⟩
  r := (1053267364967 / 2500000000000 : ℚ)
  w := (12372174364243 / 10000000000000 : ℚ)
  center := (186175000000000007 / 200000000000000000 : ℚ)
  supportValue := (10687639074297513 / 50000000000000000 : ℚ)
  supportSlope := (-6959006416970279 / 10000000000000000 : ℚ)
  oldCenter := (10687639074297513 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2128
  oldLo := (427 / 2000 : ℚ)
  oldHi := (107 / 500 : ℚ)
  oldPieces := [piece_564]
}

noncomputable def cell_14068 : Cell := { cellDefaults with
  domain := ⟨(18620000000000001 / 20000000000000000 : ℚ), (46562500000000001 / 50000000000000000 : ℚ)⟩
  r := (10528565444831 / 25000000000000 : ℚ)
  w := (12367860838399 / 10000000000000 : ℚ)
  center := (186225000000000007 / 200000000000000000 : ℚ)
  supportValue := (5345887139683831 / 25000000000000000 : ℚ)
  supportSlope := (-6959066209411837 / 10000000000000000 : ℚ)
  oldCenter := (5345887139683831 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2129
  oldLo := (427 / 2000 : ℚ)
  oldHi := (107 / 500 : ℚ)
  oldPieces := [piece_564]
}

noncomputable def cell_14069 : Cell := { cellDefaults with
  domain := ⟨(46562500000000001 / 50000000000000000 : ℚ), (93149999999999999 / 100000000000000000 : ℚ)⟩
  r := (10528565444831 / 25000000000000 : ℚ)
  w := (12367860838399 / 10000000000000 : ℚ)
  center := (186275000000000001 / 200000000000000000 : ℚ)
  supportValue := (854646353971637 / 4000000000000000 : ℚ)
  supportSlope := (-3476345064206549 / 5000000000000000 : ℚ)
  oldCenter := (854646353971637 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_2129
  oldLo := (427 / 2000 : ℚ)
  oldHi := (107 / 500 : ℚ)
  oldPieces := [piece_564]
}

noncomputable def cell_14070 : Cell := { cellDefaults with
  domain := ⟨(93149999999999999 / 100000000000000000 : ℚ), (46587500000000001 / 50000000000000000 : ℚ)⟩
  r := (4209783987881 / 10000000000000 : ℚ)
  w := (12363545832049 / 10000000000000 : ℚ)
  center := (186325000000000001 / 200000000000000000 : ℚ)
  supportValue := (1068721634809537 / 5000000000000000 : ℚ)
  supportSlope := (-1390550315045591 / 2000000000000000 : ℚ)
  oldCenter := (1068721634809537 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2130
  oldLo := (427 / 2000 : ℚ)
  oldHi := (107 / 500 : ℚ)
  oldPieces := [piece_564]
}

noncomputable def cell_14071 : Cell := { cellDefaults with
  domain := ⟨(46587500000000001 / 50000000000000000 : ℚ), (18640000000000001 / 20000000000000000 : ℚ)⟩
  r := (4209783987881 / 10000000000000 : ℚ)
  w := (12363545832049 / 10000000000000 : ℚ)
  center := (186375000000000007 / 200000000000000000 : ℚ)
  supportValue := (1334816172421213 / 6250000000000000 : ℚ)
  supportSlope := (-3473254842232959 / 5000000000000000 : ℚ)
  oldCenter := (1334816172421213 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_2130
  oldHi := (107 / 500 : ℚ)
  oldPieces := [piece_563, piece_564]
}

noncomputable def cell_14072 : Cell := { cellDefaults with
  domain := ⟨(18640000000000001 / 20000000000000000 : ℚ), (37290000000000001 / 40000000000000000 : ℚ)⟩
  r := (42081429516821 / 100000000000000 : ℚ)
  w := (12359229107761 / 10000000000000 : ℚ)
  center := (74570000000000003 / 80000000000000000 : ℚ)
  supportValue := (4273067143268281 / 20000000000000000 : ℚ)
  supportSlope := (-1736612559145763 / 2500000000000000 : ℚ)
  oldCenter := (4273067143268281 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2131
  oldLo := (427 / 2000 : ℚ)
  oldHi := (107 / 500 : ℚ)
  oldPieces := [piece_564]
}

noncomputable def cell_14073 : Cell := { cellDefaults with
  domain := ⟨(37290000000000001 / 40000000000000000 : ℚ), (373 / 400 : ℚ)⟩
  r := (42081429516821 / 100000000000000 : ℚ)
  w := (12359229107761 / 10000000000000 : ℚ)
  center := (74590000000000001 / 80000000000000000 : ℚ)
  supportValue := (21347977136851767 / 100000000000000000 : ℚ)
  supportSlope := (-3470447485428921 / 5000000000000000 : ℚ)
  oldCenter := (21347977136851767 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2131
  oldHi := (107 / 500 : ℚ)
  oldPieces := [piece_563, piece_564]
}

noncomputable def cell_14074 : Cell := { cellDefaults with
  domain := ⟨(373 / 400 : ℚ), (37310000000000001 / 40000000000000000 : ℚ)⟩
  r := (10516257280759 / 25000000000000 : ℚ)
  w := (12354910339697 / 10000000000000 : ℚ)
  center := (74610000000000001 / 80000000000000000 : ℚ)
  supportValue := (4271251975857523 / 20000000000000000 : ℚ)
  supportSlope := (-1735086037708937 / 2500000000000000 : ℚ)
  oldCenter := (4271251975857523 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2132
  oldHi := (107 / 500 : ℚ)
  oldPieces := [piece_563, piece_564]
}

noncomputable def cell_14075 : Cell := { cellDefaults with
  domain := ⟨(37310000000000001 / 40000000000000000 : ℚ), (18660000000000001 / 20000000000000000 : ℚ)⟩
  r := (10516257280759 / 25000000000000 : ℚ)
  w := (12354910339697 / 10000000000000 : ℚ)
  center := (74630000000000003 / 80000000000000000 : ℚ)
  supportValue := (2133891531939941 / 10000000000000000 : ℚ)
  supportSlope := (-433444295998937 / 625000000000000 : ℚ)
  oldCenter := (2133891531939941 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2132
  oldHi := (427 / 2000 : ℚ)
  oldPieces := [piece_563]
}

noncomputable def cell_14076 : Cell := { cellDefaults with
  domain := ⟨(18660000000000001 / 20000000000000000 : ℚ), (37330000000000001 / 40000000000000000 : ℚ)⟩
  r := (21024319367699 / 50000000000000 : ℚ)
  w := (6175294859943 / 5000000000000 : ℚ)
  center := (74650000000000003 / 80000000000000000 : ℚ)
  supportValue := (426944085011421 / 2000000000000000 : ℚ)
  supportSlope := (-1733685777316647 / 2500000000000000 : ℚ)
  oldCenter := (426944085011421 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2133
  oldHi := (107 / 500 : ℚ)
  oldPieces := [piece_563, piece_564]
}

noncomputable def cell_14077 : Cell := { cellDefaults with
  domain := ⟨(37330000000000001 / 40000000000000000 : ℚ), (1867 / 2000 : ℚ)⟩
  r := (21024319367699 / 50000000000000 : ℚ)
  w := (6175294859943 / 5000000000000 : ℚ)
  center := (74670000000000001 / 80000000000000000 : ℚ)
  supportValue := (2666234276308747 / 12500000000000000 : ℚ)
  supportSlope := (-6928840913783123 / 10000000000000000 : ℚ)
  oldCenter := (2666234276308747 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2133
  oldHi := (427 / 2000 : ℚ)
  oldPieces := [piece_563]
}

noncomputable def cell_14078 : Cell := { cellDefaults with
  domain := ⟨(1867 / 2000 : ℚ), (9336312849162011 / 10000000000000000 : ℚ)⟩
  r := (42032258833457 / 100000000000000 : ℚ)
  w := (3086566516247 / 2500000000000 : ℚ)
  center := (18671312849162011 / 20000000000000000 : ℚ)
  supportValue := (21342267898281353 / 100000000000000000 : ℚ)
  supportSlope := (-216575570058467 / 312500000000000 : ℚ)
  oldCenter := (21342267898281353 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2134
  oldHi := (427 / 2000 : ℚ)
  oldPieces := [piece_563]
}

noncomputable def cell_14079 : Cell := { cellDefaults with
  domain := ⟨(9336312849162011 / 10000000000000000 : ℚ), (37352625698324023 / 40000000000000000 : ℚ)⟩
  r := (42032258833457 / 100000000000000 : ℚ)
  w := (3086566516247 / 2500000000000 : ℚ)
  center := (74697877094972067 / 80000000000000000 : ℚ)
  supportValue := (10665674155366149 / 50000000000000000 : ℚ)
  supportSlope := (-3463210530223023 / 5000000000000000 : ℚ)
  oldCenter := (10665674155366149 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2135
  oldHi := (427 / 2000 : ℚ)
  oldPieces := [piece_563]
}

noncomputable def cell_14080 : Cell := { cellDefaults with
  domain := ⟨(37352625698324023 / 40000000000000000 : ℚ), (18680000000000001 / 20000000000000000 : ℚ)⟩
  r := (42032258833457 / 100000000000000 : ℚ)
  w := (3086566516247 / 2500000000000 : ℚ)
  center := (2988505027932961 / 3200000000000000 : ℚ)
  supportValue := (266482290236461 / 1250000000000000 : ℚ)
  supportSlope := (-3460878526858679 / 5000000000000000 : ℚ)
  oldCenter := (266482290236461 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_2135
  oldHi := (427 / 2000 : ℚ)
  oldPieces := [piece_563]
}

noncomputable def cell_14081 : Cell := { cellDefaults with
  domain := ⟨(18680000000000001 / 20000000000000000 : ℚ), (37370000000000001 / 40000000000000000 : ℚ)⟩
  r := (21007944789787 / 50000000000000 : ℚ)
  w := (3085485229773 / 2500000000000 : ℚ)
  center := (74730000000000003 / 80000000000000000 : ℚ)
  supportValue := (2132915417989039 / 10000000000000000 : ℚ)
  supportSlope := (-6922662591837961 / 10000000000000000 : ℚ)
  oldCenter := (2132915417989039 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2136
  oldHi := (427 / 2000 : ℚ)
  oldPieces := [piece_563]
}

noncomputable def cell_14082 : Cell := { cellDefaults with
  domain := ⟨(37370000000000001 / 40000000000000000 : ℚ), (1869 / 2000 : ℚ)⟩
  r := (21007944789787 / 50000000000000 : ℚ)
  w := (3085485229773 / 2500000000000 : ℚ)
  center := (74750000000000001 / 80000000000000000 : ℚ)
  supportValue := (10655927702174481 / 50000000000000000 : ℚ)
  supportSlope := (-691634665790433 / 1000000000000000 : ℚ)
  oldCenter := (10655927702174481 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2136
  oldHi := (427 / 2000 : ℚ)
  oldPieces := [piece_563]
}

noncomputable def cell_14083 : Cell := { cellDefaults with
  domain := ⟨(1869 / 2000 : ℚ), (37390000000000001 / 40000000000000000 : ℚ)⟩
  r := (20999765489113 / 50000000000000 : ℚ)
  w := (6168806430251 / 5000000000000 : ℚ)
  center := (74770000000000001 / 80000000000000000 : ℚ)
  supportValue := (1066008020460973 / 5000000000000000 : ℚ)
  supportSlope := (-1383284894878351 / 2000000000000000 : ℚ)
  oldCenter := (1066008020460973 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2137
  oldHi := (427 / 2000 : ℚ)
  oldPieces := [piece_563]
}

noncomputable def cell_14084 : Cell := { cellDefaults with
  domain := ⟨(37390000000000001 / 40000000000000000 : ℚ), (18700000000000001 / 20000000000000000 : ℚ)⟩
  r := (20999765489113 / 50000000000000 : ℚ)
  w := (6168806430251 / 5000000000000 : ℚ)
  center := (74790000000000003 / 80000000000000000 : ℚ)
  supportValue := (426057544292339 / 2000000000000000 : ℚ)
  supportSlope := (-6910549742775027 / 10000000000000000 : ℚ)
  oldCenter := (426057544292339 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2137
  oldLo := (21249999999999999 / 100000000000000000 : ℚ)
  oldHi := (427 / 2000 : ℚ)
  oldPieces := [piece_562, piece_563]
}

noncomputable def cell_14085 : Cell := { cellDefaults with
  domain := ⟨(18700000000000001 / 20000000000000000 : ℚ), (37410000000000001 / 40000000000000000 : ℚ)⟩
  r := (41983182408901 / 100000000000000 : ℚ)
  w := (12333283551207 / 10000000000000 : ℚ)
  center := (74810000000000003 / 80000000000000000 : ℚ)
  supportValue := (21311186161117107 / 100000000000000000 : ℚ)
  supportSlope := (-6910199543373599 / 10000000000000000 : ℚ)
  oldCenter := (21311186161117107 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2138
  oldHi := (427 / 2000 : ℚ)
  oldPieces := [piece_563]
}

noncomputable def cell_14086 : Cell := { cellDefaults with
  domain := ⟨(37410000000000001 / 40000000000000000 : ℚ), (1871 / 2000 : ℚ)⟩
  r := (41983182408901 / 100000000000000 : ℚ)
  w := (12333283551207 / 10000000000000 : ℚ)
  center := (74830000000000001 / 80000000000000000 : ℚ)
  supportValue := (21293917380275057 / 100000000000000000 : ℚ)
  supportSlope := (-3452499967787971 / 5000000000000000 : ℚ)
  oldCenter := (21293917380275057 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2138
  oldLo := (21249999999999999 / 100000000000000000 : ℚ)
  oldHi := (427 / 2000 : ℚ)
  oldPieces := [piece_562, piece_563]
}

noncomputable def cell_14087 : Cell := { cellDefaults with
  domain := ⟨(1871 / 2000 : ℚ), (37430000000000001 / 40000000000000000 : ℚ)⟩
  r := (20983422195431 / 50000000000000 : ℚ)
  w := (6164475839093 / 5000000000000 : ℚ)
  center := (74850000000000001 / 80000000000000000 : ℚ)
  supportValue := (2130223295620389 / 10000000000000000 : ℚ)
  supportSlope := (-3452232639905227 / 5000000000000000 : ℚ)
  oldCenter := (2130223295620389 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2139
  oldLo := (21249999999999999 / 100000000000000000 : ℚ)
  oldHi := (427 / 2000 : ℚ)
  oldPieces := [piece_562, piece_563]
}

noncomputable def cell_14088 : Cell := { cellDefaults with
  domain := ⟨(37430000000000001 / 40000000000000000 : ℚ), (18720000000000001 / 20000000000000000 : ℚ)⟩
  r := (20983422195431 / 50000000000000 : ℚ)
  w := (6164475839093 / 5000000000000 : ℚ)
  center := (74870000000000003 / 80000000000000000 : ℚ)
  supportValue := (10642489016345641 / 50000000000000000 : ℚ)
  supportSlope := (-431186439906013 / 625000000000000 : ℚ)
  oldCenter := (10642489016345641 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2139
  oldLo := (21249999999999999 / 100000000000000000 : ℚ)
  oldHi := (21299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_562]
}

noncomputable def cell_14089 : Cell := { cellDefaults with
  domain := ⟨(18720000000000001 / 20000000000000000 : ℚ), (37450000000000001 / 40000000000000000 : ℚ)⟩
  r := (41950515733367 / 100000000000000 : ℚ)
  w := (385144286729 / 312500000000 : ℚ)
  center := (74890000000000003 / 80000000000000000 : ℚ)
  supportValue := (851732037965629 / 4000000000000000 : ℚ)
  supportSlope := (-6898929434365343 / 10000000000000000 : ℚ)
  oldCenter := (851732037965629 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_2140
  oldLo := (21249999999999999 / 100000000000000000 : ℚ)
  oldHi := (427 / 2000 : ℚ)
  oldPieces := [piece_562, piece_563]
}

noncomputable def cell_14090 : Cell := { cellDefaults with
  domain := ⟨(37450000000000001 / 40000000000000000 : ℚ), (1873 / 2000 : ℚ)⟩
  r := (41950515733367 / 100000000000000 : ℚ)
  w := (385144286729 / 312500000000 : ℚ)
  center := (74910000000000001 / 80000000000000000 : ℚ)
  supportValue := (10638030553192543 / 50000000000000000 : ℚ)
  supportSlope := (-1723197942710869 / 2500000000000000 : ℚ)
  oldCenter := (10638030553192543 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2140
  oldLo := (21249999999999999 / 100000000000000000 : ℚ)
  oldHi := (21299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_562]
}

noncomputable def cell_14091 : Cell := { cellDefaults with
  domain := ⟨(1873 / 2000 : ℚ), (93675000000000003 / 100000000000000000 : ℚ)⟩
  r := (8386839633303 / 20000000000000 : ℚ)
  w := (6160140164457 / 5000000000000 : ℚ)
  center := (187325000000000003 / 200000000000000000 : ℚ)
  supportValue := (2128438850964271 / 10000000000000000 : ℚ)
  supportSlope := (-861610246555463 / 1250000000000000 : ℚ)
  oldCenter := (2128438850964271 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2141
  oldLo := (21249999999999999 / 100000000000000000 : ℚ)
  oldHi := (21299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_562]
}

noncomputable def cell_14092 : Cell := { cellDefaults with
  domain := ⟨(93675000000000003 / 100000000000000000 : ℚ), (46850000000000003 / 50000000000000000 : ℚ)⟩
  r := (8386839633303 / 20000000000000 : ℚ)
  w := (6160140164457 / 5000000000000 : ℚ)
  center := (187375000000000009 / 200000000000000000 : ℚ)
  supportValue := (1063358206296301 / 5000000000000000 : ℚ)
  supportSlope := (-688661384777773 / 1000000000000000 : ℚ)
  oldCenter := (1063358206296301 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2141
  oldLo := (21249999999999999 / 100000000000000000 : ℚ)
  oldHi := (21299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_562]
}

noncomputable def cell_14093 : Cell := { cellDefaults with
  domain := ⟨(46850000000000003 / 50000000000000000 : ℚ), (93725000000000003 / 100000000000000000 : ℚ)⟩
  r := (2619868174097 / 6250000000000 : ℚ)
  w := (6157970702843 / 5000000000000 : ℚ)
  center := (187425000000000009 / 200000000000000000 : ℚ)
  supportValue := (10637748292078167 / 50000000000000000 : ℚ)
  supportSlope := (-6886706089367083 / 10000000000000000 : ℚ)
  oldCenter := (10637748292078167 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2142
  oldLo := (21249999999999999 / 100000000000000000 : ℚ)
  oldHi := (21299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_562]
}

noncomputable def cell_14094 : Cell := { cellDefaults with
  domain := ⟨(93725000000000003 / 100000000000000000 : ℚ), (15 / 16 : ℚ)⟩
  r := (2619868174097 / 6250000000000 : ℚ)
  w := (6157970702843 / 5000000000000 : ℚ)
  center := (187475000000000003 / 200000000000000000 : ℚ)
  supportValue := (21258287625968417 / 100000000000000000 : ℚ)
  supportSlope := (-6880473992452999 / 10000000000000000 : ℚ)
  oldCenter := (21258287625968417 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2142
  oldLo := (21199999999999999 / 100000000000000000 : ℚ)
  oldHi := (21299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_561, piece_562]
}

noncomputable def cell_14095 : Cell := { cellDefaults with
  domain := ⟨(15 / 16 : ℚ), (93775000000000003 / 100000000000000000 : ℚ)⟩
  r := (10475398414663 / 25000000000000 : ℚ)
  w := (12311601141061 / 10000000000000 : ℚ)
  center := (187525000000000003 / 200000000000000000 : ℚ)
  supportValue := (21266623839715043 / 100000000000000000 : ℚ)
  supportSlope := (-3440271600139853 / 5000000000000000 : ℚ)
  oldCenter := (21266623839715043 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2143
  oldLo := (21249999999999999 / 100000000000000000 : ℚ)
  oldHi := (21299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_562]
}

noncomputable def cell_14096 : Cell := { cellDefaults with
  domain := ⟨(93775000000000003 / 100000000000000000 : ℚ), (46900000000000003 / 50000000000000000 : ℚ)⟩
  r := (10475398414663 / 25000000000000 : ℚ)
  w := (12311601141061 / 10000000000000 : ℚ)
  center := (187575000000000009 / 200000000000000000 : ℚ)
  supportValue := (1062471508243249 / 5000000000000000 : ℚ)
  supportSlope := (-6874978703511899 / 10000000000000000 : ℚ)
  oldCenter := (1062471508243249 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2143
  oldLo := (21199999999999999 / 100000000000000000 : ℚ)
  oldHi := (21299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_561, piece_562]
}

noncomputable def cell_14097 : Cell := { cellDefaults with
  domain := ⟨(46900000000000003 / 50000000000000000 : ℚ), (93825000000000003 / 100000000000000000 : ℚ)⟩
  r := (10471327012747 / 25000000000000 : ℚ)
  w := (48075235123 / 39062500000 : ℚ)
  center := (187625000000000009 / 200000000000000000 : ℚ)
  supportValue := (531444193034739 / 2500000000000000 : ℚ)
  supportSlope := (-6874455365551693 / 10000000000000000 : ℚ)
  oldCenter := (531444193034739 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_2144
  oldLo := (21199999999999999 / 100000000000000000 : ℚ)
  oldHi := (21299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_561, piece_562]
}

noncomputable def cell_14098 : Cell := { cellDefaults with
  domain := ⟨(93825000000000003 / 100000000000000000 : ℚ), (1877 / 2000 : ℚ)⟩
  r := (10471327012747 / 25000000000000 : ℚ)
  w := (48075235123 / 39062500000 : ℚ)
  center := (187675000000000003 / 200000000000000000 : ℚ)
  supportValue := (1062029388497261 / 5000000000000000 : ℚ)
  supportSlope := (-3434714803220297 / 5000000000000000 : ℚ)
  oldCenter := (1062029388497261 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2144
  oldLo := (21199999999999999 / 100000000000000000 : ℚ)
  oldHi := (21249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_561]
}

noncomputable def cell_14099 : Cell := { cellDefaults with
  domain := ⟨(1877 / 2000 : ℚ), (93875000000000003 / 100000000000000000 : ℚ)⟩
  r := (8373806295851 / 20000000000000 : ℚ)
  w := (12302914614751 / 10000000000000 : ℚ)
  center := (187725000000000003 / 200000000000000000 : ℚ)
  supportValue := (10624468624445191 / 50000000000000000 : ℚ)
  supportSlope := (-17172434532773 / 25000000000000 : ℚ)
  oldCenter := (10624468624445191 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2145
  oldLo := (21199999999999999 / 100000000000000000 : ℚ)
  oldHi := (21299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_561, piece_562]
}

theorem check_14050 : cell_14050.check = true := by
  decide +kernel

theorem check_14051 : cell_14051.check = true := by
  decide +kernel

theorem check_14052 : cell_14052.check = true := by
  decide +kernel

theorem check_14053 : cell_14053.check = true := by
  decide +kernel

theorem check_14054 : cell_14054.check = true := by
  decide +kernel

theorem check_14055 : cell_14055.check = true := by
  decide +kernel

theorem check_14056 : cell_14056.check = true := by
  decide +kernel

theorem check_14057 : cell_14057.check = true := by
  decide +kernel

theorem check_14058 : cell_14058.check = true := by
  decide +kernel

theorem check_14059 : cell_14059.check = true := by
  decide +kernel

theorem check_14060 : cell_14060.check = true := by
  decide +kernel

theorem check_14061 : cell_14061.check = true := by
  decide +kernel

theorem check_14062 : cell_14062.check = true := by
  decide +kernel

theorem check_14063 : cell_14063.check = true := by
  decide +kernel

theorem check_14064 : cell_14064.check = true := by
  decide +kernel

theorem check_14065 : cell_14065.check = true := by
  decide +kernel

theorem check_14066 : cell_14066.check = true := by
  decide +kernel

theorem check_14067 : cell_14067.check = true := by
  decide +kernel

theorem check_14068 : cell_14068.check = true := by
  decide +kernel

theorem check_14069 : cell_14069.check = true := by
  decide +kernel

theorem check_14070 : cell_14070.check = true := by
  decide +kernel

theorem check_14071 : cell_14071.check = true := by
  decide +kernel

theorem check_14072 : cell_14072.check = true := by
  decide +kernel

theorem check_14073 : cell_14073.check = true := by
  decide +kernel

theorem check_14074 : cell_14074.check = true := by
  decide +kernel

theorem check_14075 : cell_14075.check = true := by
  decide +kernel

theorem check_14076 : cell_14076.check = true := by
  decide +kernel

theorem check_14077 : cell_14077.check = true := by
  decide +kernel

theorem check_14078 : cell_14078.check = true := by
  decide +kernel

theorem check_14079 : cell_14079.check = true := by
  decide +kernel

theorem check_14080 : cell_14080.check = true := by
  decide +kernel

theorem check_14081 : cell_14081.check = true := by
  decide +kernel

theorem check_14082 : cell_14082.check = true := by
  decide +kernel

theorem check_14083 : cell_14083.check = true := by
  decide +kernel

theorem check_14084 : cell_14084.check = true := by
  decide +kernel

theorem check_14085 : cell_14085.check = true := by
  decide +kernel

theorem check_14086 : cell_14086.check = true := by
  decide +kernel

theorem check_14087 : cell_14087.check = true := by
  decide +kernel

theorem check_14088 : cell_14088.check = true := by
  decide +kernel

theorem check_14089 : cell_14089.check = true := by
  decide +kernel

theorem check_14090 : cell_14090.check = true := by
  decide +kernel

theorem check_14091 : cell_14091.check = true := by
  decide +kernel

theorem check_14092 : cell_14092.check = true := by
  decide +kernel

theorem check_14093 : cell_14093.check = true := by
  decide +kernel

theorem check_14094 : cell_14094.check = true := by
  decide +kernel

theorem check_14095 : cell_14095.check = true := by
  decide +kernel

theorem check_14096 : cell_14096.check = true := by
  decide +kernel

theorem check_14097 : cell_14097.check = true := by
  decide +kernel

theorem check_14098 : cell_14098.check = true := by
  decide +kernel

theorem check_14099 : cell_14099.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_14050, cell_14051, cell_14052, cell_14053, cell_14054, cell_14055, cell_14056, cell_14057, cell_14058, cell_14059, cell_14060, cell_14061, cell_14062, cell_14063, cell_14064, cell_14065, cell_14066, cell_14067, cell_14068, cell_14069, cell_14070, cell_14071, cell_14072, cell_14073, cell_14074, cell_14075, cell_14076, cell_14077, cell_14078, cell_14079, cell_14080, cell_14081, cell_14082, cell_14083, cell_14084, cell_14085, cell_14086, cell_14087, cell_14088, cell_14089, cell_14090, cell_14091, cell_14092, cell_14093, cell_14094, cell_14095, cell_14096, cell_14097, cell_14098, cell_14099]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_14050, check_14051, check_14052, check_14053, check_14054, check_14055, check_14056, check_14057, check_14058, check_14059, check_14060, check_14061, check_14062, check_14063, check_14064, check_14065, check_14066, check_14067, check_14068, check_14069, check_14070, check_14071, check_14072, check_14073, check_14074, check_14075, check_14076, check_14077, check_14078, check_14079, check_14080, check_14081, check_14082, check_14083, check_14084, check_14085, check_14086, check_14087, check_14088, check_14089, check_14090, check_14091, check_14092, check_14093, check_14094, check_14095, check_14096, check_14097, check_14098, check_14099, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0281

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0281
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0281
open AnalyticBounds.ExpressionCertificate

theorem linked_14050 : Linked cell_14050 pieces := by
  link_source cell_14050 with piece_2119 using piece_2119_mem, ⟨piece_565_mem, piece_566_mem⟩

theorem linked_14051 : Linked cell_14051 pieces := by
  link_source cell_14051 with piece_2120 using piece_2120_mem, ⟨piece_565_mem, ⟨piece_566_mem, piece_567_mem⟩⟩

theorem linked_14052 : Linked cell_14052 pieces := by
  link_source cell_14052 with piece_2120 using piece_2120_mem, piece_565_mem

theorem linked_14053 : Linked cell_14053 pieces := by
  link_source cell_14053 with piece_2121 using piece_2121_mem, ⟨piece_565_mem, piece_566_mem⟩

theorem linked_14054 : Linked cell_14054 pieces := by
  link_source cell_14054 with piece_2121 using piece_2121_mem, piece_565_mem

theorem linked_14055 : Linked cell_14055 pieces := by
  link_source cell_14055 with piece_2122 using piece_2122_mem, piece_565_mem

theorem linked_14056 : Linked cell_14056 pieces := by
  link_source cell_14056 with piece_2123 using piece_2123_mem, piece_565_mem

theorem linked_14057 : Linked cell_14057 pieces := by
  link_source cell_14057 with piece_2123 using piece_2123_mem, piece_565_mem

theorem linked_14058 : Linked cell_14058 pieces := by
  link_source cell_14058 with piece_2124 using piece_2124_mem, piece_565_mem

theorem linked_14059 : Linked cell_14059 pieces := by
  link_source cell_14059 with piece_2124 using piece_2124_mem, piece_565_mem

theorem linked_14060 : Linked cell_14060 pieces := by
  link_source cell_14060 with piece_2125 using piece_2125_mem, piece_565_mem

theorem linked_14061 : Linked cell_14061 pieces := by
  link_source cell_14061 with piece_2125 using piece_2125_mem, ⟨piece_564_mem, piece_565_mem⟩

theorem linked_14062 : Linked cell_14062 pieces := by
  link_source cell_14062 with piece_2126 using piece_2126_mem, piece_565_mem

theorem linked_14063 : Linked cell_14063 pieces := by
  link_source cell_14063 with piece_2126 using piece_2126_mem, ⟨piece_564_mem, piece_565_mem⟩

theorem linked_14064 : Linked cell_14064 pieces := by
  link_source cell_14064 with piece_2127 using piece_2127_mem, ⟨piece_564_mem, piece_565_mem⟩

theorem linked_14065 : Linked cell_14065 pieces := by
  link_source cell_14065 with piece_2127 using piece_2127_mem, piece_564_mem

theorem linked_14066 : Linked cell_14066 pieces := by
  link_source cell_14066 with piece_2128 using piece_2128_mem, ⟨piece_564_mem, piece_565_mem⟩

theorem linked_14067 : Linked cell_14067 pieces := by
  link_source cell_14067 with piece_2128 using piece_2128_mem, piece_564_mem

theorem linked_14068 : Linked cell_14068 pieces := by
  link_source cell_14068 with piece_2129 using piece_2129_mem, piece_564_mem

theorem linked_14069 : Linked cell_14069 pieces := by
  link_source cell_14069 with piece_2129 using piece_2129_mem, piece_564_mem

theorem linked_14070 : Linked cell_14070 pieces := by
  link_source cell_14070 with piece_2130 using piece_2130_mem, piece_564_mem

theorem linked_14071 : Linked cell_14071 pieces := by
  link_source cell_14071 with piece_2130 using piece_2130_mem, ⟨piece_563_mem, piece_564_mem⟩

theorem linked_14072 : Linked cell_14072 pieces := by
  link_source cell_14072 with piece_2131 using piece_2131_mem, piece_564_mem

theorem linked_14073 : Linked cell_14073 pieces := by
  link_source cell_14073 with piece_2131 using piece_2131_mem, ⟨piece_563_mem, piece_564_mem⟩

theorem linked_14074 : Linked cell_14074 pieces := by
  link_source cell_14074 with piece_2132 using piece_2132_mem, ⟨piece_563_mem, piece_564_mem⟩

theorem linked_14075 : Linked cell_14075 pieces := by
  link_source cell_14075 with piece_2132 using piece_2132_mem, piece_563_mem

theorem linked_14076 : Linked cell_14076 pieces := by
  link_source cell_14076 with piece_2133 using piece_2133_mem, ⟨piece_563_mem, piece_564_mem⟩

theorem linked_14077 : Linked cell_14077 pieces := by
  link_source cell_14077 with piece_2133 using piece_2133_mem, piece_563_mem

theorem linked_14078 : Linked cell_14078 pieces := by
  link_source cell_14078 with piece_2134 using piece_2134_mem, piece_563_mem

theorem linked_14079 : Linked cell_14079 pieces := by
  link_source cell_14079 with piece_2135 using piece_2135_mem, piece_563_mem

theorem linked_14080 : Linked cell_14080 pieces := by
  link_source cell_14080 with piece_2135 using piece_2135_mem, piece_563_mem

theorem linked_14081 : Linked cell_14081 pieces := by
  link_source cell_14081 with piece_2136 using piece_2136_mem, piece_563_mem

theorem linked_14082 : Linked cell_14082 pieces := by
  link_source cell_14082 with piece_2136 using piece_2136_mem, piece_563_mem

theorem linked_14083 : Linked cell_14083 pieces := by
  link_source cell_14083 with piece_2137 using piece_2137_mem, piece_563_mem

theorem linked_14084 : Linked cell_14084 pieces := by
  link_source cell_14084 with piece_2137 using piece_2137_mem, ⟨piece_562_mem, piece_563_mem⟩

theorem linked_14085 : Linked cell_14085 pieces := by
  link_source cell_14085 with piece_2138 using piece_2138_mem, piece_563_mem

theorem linked_14086 : Linked cell_14086 pieces := by
  link_source cell_14086 with piece_2138 using piece_2138_mem, ⟨piece_562_mem, piece_563_mem⟩

theorem linked_14087 : Linked cell_14087 pieces := by
  link_source cell_14087 with piece_2139 using piece_2139_mem, ⟨piece_562_mem, piece_563_mem⟩

theorem linked_14088 : Linked cell_14088 pieces := by
  link_source cell_14088 with piece_2139 using piece_2139_mem, piece_562_mem

theorem linked_14089 : Linked cell_14089 pieces := by
  link_source cell_14089 with piece_2140 using piece_2140_mem, ⟨piece_562_mem, piece_563_mem⟩

theorem linked_14090 : Linked cell_14090 pieces := by
  link_source cell_14090 with piece_2140 using piece_2140_mem, piece_562_mem

theorem linked_14091 : Linked cell_14091 pieces := by
  link_source cell_14091 with piece_2141 using piece_2141_mem, piece_562_mem

theorem linked_14092 : Linked cell_14092 pieces := by
  link_source cell_14092 with piece_2141 using piece_2141_mem, piece_562_mem

theorem linked_14093 : Linked cell_14093 pieces := by
  link_source cell_14093 with piece_2142 using piece_2142_mem, piece_562_mem

theorem linked_14094 : Linked cell_14094 pieces := by
  link_source cell_14094 with piece_2142 using piece_2142_mem, ⟨piece_561_mem, piece_562_mem⟩

theorem linked_14095 : Linked cell_14095 pieces := by
  link_source cell_14095 with piece_2143 using piece_2143_mem, piece_562_mem

theorem linked_14096 : Linked cell_14096 pieces := by
  link_source cell_14096 with piece_2143 using piece_2143_mem, ⟨piece_561_mem, piece_562_mem⟩

theorem linked_14097 : Linked cell_14097 pieces := by
  link_source cell_14097 with piece_2144 using piece_2144_mem, ⟨piece_561_mem, piece_562_mem⟩

theorem linked_14098 : Linked cell_14098 pieces := by
  link_source cell_14098 with piece_2144 using piece_2144_mem, piece_561_mem

theorem linked_14099 : Linked cell_14099 pieces := by
  link_source cell_14099 with piece_2145 using piece_2145_mem, ⟨piece_561_mem, piece_562_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0281.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0281.cells,List.forall_mem_cons]
  exact ⟨linked_14050, linked_14051, linked_14052, linked_14053, linked_14054, linked_14055, linked_14056, linked_14057, linked_14058, linked_14059, linked_14060, linked_14061, linked_14062, linked_14063, linked_14064, linked_14065, linked_14066, linked_14067, linked_14068, linked_14069, linked_14070, linked_14071, linked_14072, linked_14073, linked_14074, linked_14075, linked_14076, linked_14077, linked_14078, linked_14079, linked_14080, linked_14081, linked_14082, linked_14083, linked_14084, linked_14085, linked_14086, linked_14087, linked_14088, linked_14089, linked_14090, linked_14091, linked_14092, linked_14093, linked_14094, linked_14095, linked_14096, linked_14097, linked_14098, linked_14099, by simp⟩

theorem covered : covers (46337500000000001 / 50000000000000000 : ℚ) (93875000000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0281.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0281
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0282
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(93875000000000003 / 100000000000000000 : ℚ), (46950000000000003 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (20926382722709 / 50000000000000 : ℚ)
  w := (1229856743881 / 1000000000000 : ℚ)
  center := (187775000000000009 / 200000000000000000 : ℚ)
  supportValue := (10615885597561017 / 50000000000000000 : ℚ)
  supportSlope := (-686329986957641 / 1000000000000000 : ℚ)
  oldCenter := (10615885597561017 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2147
  oldLo := (21099999999999999 / 100000000000000000 : ℚ)
  oldHi := (21149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_559]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_14100 : Cell := { cellDefaults with
  r := (8373806295851 / 20000000000000 : ℚ)
  w := (12302914614751 / 10000000000000 : ℚ)
  newCoefficients := coefficients_2145
  oldLo := (21199999999999999 / 100000000000000000 : ℚ)
  oldHi := (21249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_561]
}

noncomputable def cell_14101 : Cell := { cellDefaults with
  domain := ⟨(46950000000000003 / 50000000000000000 : ℚ), (9391620111731843 / 10000000000000000 : ℚ)⟩
  center := (46954050279329609 / 50000000000000000 : ℚ)
  supportValue := (1327695585441129 / 6250000000000000 : ℚ)
  supportSlope := (-26814451274113 / 39062500000000 : ℚ)
  oldCenter := (1327695585441129 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_2146
  oldLo := (21199999999999999 / 100000000000000000 : ℚ)
  oldHi := (21249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_561]
}

noncomputable def cell_14102 : Cell := { cellDefaults with
  domain := ⟨(9391620111731843 / 10000000000000000 : ℚ), (18786620111731843 / 20000000000000000 : ℚ)⟩
  center := (37569860335195529 / 40000000000000000 : ℚ)
  supportValue := (21231771836005223 / 100000000000000000 : ℚ)
  supportSlope := (-3430189451471783 / 5000000000000000 : ℚ)
  oldCenter := (21231771836005223 / 100000000000000000 : ℚ)
  oldLo := (21199999999999999 / 100000000000000000 : ℚ)
  oldHi := (21249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_561]
}

noncomputable def cell_14103 : Cell := { cellDefaults with
  domain := ⟨(18786620111731843 / 20000000000000000 : ℚ), (1879 / 2000 : ℚ)⟩
  center := (37576620111731843 / 40000000000000000 : ℚ)
  supportValue := (4244036345558977 / 20000000000000000 : ℚ)
  supportSlope := (-1714043995895149 / 2500000000000000 : ℚ)
  oldCenter := (4244036345558977 / 20000000000000000 : ℚ)
  oldLo := (21199999999999999 / 100000000000000000 : ℚ)
  oldHi := (21249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_561]
}

noncomputable def cell_14104 : Cell := { cellDefaults with
  domain := ⟨(1879 / 2000 : ℚ), (93975000000000003 / 100000000000000000 : ℚ)⟩
  r := (41836509004391 / 100000000000000 : ℚ)
  w := (491768724051 / 400000000000 : ℚ)
  center := (187925000000000003 / 200000000000000000 : ℚ)
  supportValue := (530783319848371 / 2500000000000000 : ℚ)
  supportSlope := (-428580585817799 / 625000000000000 : ℚ)
  oldCenter := (530783319848371 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_2148
  oldLo := (21199999999999999 / 100000000000000000 : ℚ)
  oldHi := (21249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_561]
}

noncomputable def cell_14105 : Cell := { cellDefaults with
  domain := ⟨(93975000000000003 / 100000000000000000 : ℚ), (47000000000000003 / 50000000000000000 : ℚ)⟩
  r := (41836509004391 / 100000000000000 : ℚ)
  w := (491768724051 / 400000000000 : ℚ)
  center := (187975000000000009 / 200000000000000000 : ℚ)
  supportValue := (4242839463747361 / 20000000000000000 : ℚ)
  supportSlope := (-6851079666424797 / 10000000000000000 : ℚ)
  oldCenter := (4242839463747361 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2148
  oldLo := (21199999999999999 / 100000000000000000 : ℚ)
  oldHi := (21249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_561]
}

noncomputable def cell_14106 : Cell := { cellDefaults with
  domain := ⟨(47000000000000003 / 50000000000000000 : ℚ), (94025000000000003 / 100000000000000000 : ℚ)⟩
  r := (20910131747249 / 50000000000000 : ℚ)
  w := (12289865950649 / 10000000000000 : ℚ)
  center := (188025000000000009 / 200000000000000000 : ℚ)
  supportValue := (10611280848709173 / 50000000000000000 : ℚ)
  supportSlope := (-6851188073947179 / 10000000000000000 : ℚ)
  oldCenter := (10611280848709173 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2149
  oldLo := (21199999999999999 / 100000000000000000 : ℚ)
  oldHi := (21249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_561]
}

noncomputable def cell_14107 : Cell := { cellDefaults with
  domain := ⟨(94025000000000003 / 100000000000000000 : ℚ), (1881 / 2000 : ℚ)⟩
  r := (20910131747249 / 50000000000000 : ℚ)
  w := (12289865950649 / 10000000000000 : ℚ)
  center := (188075000000000003 / 200000000000000000 : ℚ)
  supportValue := (662670045672241 / 3125000000000000 : ℚ)
  supportSlope := (-171130544719143 / 250000000000000 : ℚ)
  oldCenter := (662670045672241 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_2149
  oldLo := (21149999999999999 / 100000000000000000 : ℚ)
  oldHi := (21249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_560, piece_561]
}

noncomputable def cell_14108 : Cell := { cellDefaults with
  domain := ⟨(1881 / 2000 : ℚ), (94075000000000003 / 100000000000000000 : ℚ)⟩
  r := (1672161126869 / 4000000000000 : ℚ)
  w := (6142756214217 / 5000000000000 : ℚ)
  center := (188125000000000003 / 200000000000000000 : ℚ)
  supportValue := (10606904810800673 / 50000000000000000 : ℚ)
  supportSlope := (-427818726339517 / 625000000000000 : ℚ)
  oldCenter := (10606904810800673 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2150
  oldLo := (21199999999999999 / 100000000000000000 : ℚ)
  oldHi := (21249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_561]
}

noncomputable def cell_14109 : Cell := { cellDefaults with
  domain := ⟨(94075000000000003 / 100000000000000000 : ℚ), (47050000000000003 / 50000000000000000 : ℚ)⟩
  r := (1672161126869 / 4000000000000 : ℚ)
  w := (6142756214217 / 5000000000000 : ℚ)
  center := (188175000000000009 / 200000000000000000 : ℚ)
  supportValue := (21196703978481113 / 100000000000000000 : ℚ)
  supportSlope := (-3419894973877991 / 5000000000000000 : ℚ)
  oldCenter := (21196703978481113 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2150
  oldLo := (21149999999999999 / 100000000000000000 : ℚ)
  oldHi := (21249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_560, piece_561]
}

noncomputable def cell_14110 : Cell := { cellDefaults with
  domain := ⟨(47050000000000003 / 50000000000000000 : ℚ), (94125000000000003 / 100000000000000000 : ℚ)⟩
  r := (2611737643651 / 6250000000000 : ℚ)
  w := (12281156597039 / 10000000000000 : ℚ)
  center := (188225000000000009 / 200000000000000000 : ℚ)
  supportValue := (21205078886859519 / 100000000000000000 : ℚ)
  supportSlope := (-3419641561481079 / 5000000000000000 : ℚ)
  oldCenter := (21205078886859519 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2151
  oldLo := (21149999999999999 / 100000000000000000 : ℚ)
  oldHi := (21249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_560, piece_561]
}

noncomputable def cell_14111 : Cell := { cellDefaults with
  domain := ⟨(94125000000000003 / 100000000000000000 : ℚ), (1883 / 2000 : ℚ)⟩
  r := (2611737643651 / 6250000000000 : ℚ)
  w := (12281156597039 / 10000000000000 : ℚ)
  center := (188275000000000003 / 200000000000000000 : ℚ)
  supportValue := (10593993403218037 / 50000000000000000 : ℚ)
  supportSlope := (-6834109278740217 / 10000000000000000 : ℚ)
  oldCenter := (10593993403218037 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2151
  oldLo := (21149999999999999 / 100000000000000000 : ℚ)
  oldHi := (21199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_560]
}

noncomputable def cell_14112 : Cell := { cellDefaults with
  domain := ⟨(1883 / 2000 : ℚ), (94175000000000003 / 100000000000000000 : ℚ)⟩
  r := (10442896638493 / 25000000000000 : ℚ)
  w := (613839787701 / 500000000000 : ℚ)
  center := (188325000000000003 / 200000000000000000 : ℚ)
  supportValue := (4239274483808913 / 20000000000000000 : ℚ)
  supportSlope := (-341693285941539 / 500000000000000 : ℚ)
  oldCenter := (4239274483808913 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2152
  oldLo := (21149999999999999 / 100000000000000000 : ℚ)
  oldHi := (21249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_560, piece_561]
}

noncomputable def cell_14113 : Cell := { cellDefaults with
  domain := ⟨(94175000000000003 / 100000000000000000 : ℚ), (47100000000000003 / 50000000000000000 : ℚ)⟩
  r := (10442896638493 / 25000000000000 : ℚ)
  w := (613839787701 / 500000000000 : ℚ)
  center := (188375000000000009 / 200000000000000000 : ℚ)
  supportValue := (21179294550571467 / 100000000000000000 : ℚ)
  supportSlope := (-3414027338271709 / 5000000000000000 : ℚ)
  oldCenter := (21179294550571467 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2152
  oldLo := (21149999999999999 / 100000000000000000 : ℚ)
  oldHi := (21199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_560]
}

noncomputable def cell_14114 : Cell := { cellDefaults with
  domain := ⟨(47100000000000003 / 50000000000000000 : ℚ), (94225000000000003 / 100000000000000000 : ℚ)⟩
  r := (8351076329901 / 20000000000000 : ℚ)
  w := (6136218106897 / 5000000000000 : ℚ)
  center := (188425000000000009 / 200000000000000000 : ℚ)
  supportValue := (21187678782817693 / 100000000000000000 : ℚ)
  supportSlope := (-1707043630120513 / 2500000000000000 : ℚ)
  oldCenter := (21187678782817693 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2153
  oldLo := (21149999999999999 / 100000000000000000 : ℚ)
  oldHi := (21199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_560]
}

noncomputable def cell_14115 : Cell := { cellDefaults with
  domain := ⟨(94225000000000003 / 100000000000000000 : ℚ), (377 / 400 : ℚ)⟩
  r := (8351076329901 / 20000000000000 : ℚ)
  w := (6136218106897 / 5000000000000 : ℚ)
  center := (188475000000000003 / 200000000000000000 : ℚ)
  supportValue := (2117061603673553 / 10000000000000000 : ℚ)
  supportSlope := (-426375703523797 / 625000000000000 : ℚ)
  oldCenter := (2117061603673553 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2153
  oldLo := (21149999999999999 / 100000000000000000 : ℚ)
  oldHi := (21199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_560]
}

noncomputable def cell_14116 : Cell := { cellDefaults with
  domain := ⟨(377 / 400 : ℚ), (94275000000000003 / 100000000000000000 : ℚ)⟩
  r := (20869593385561 / 50000000000000 : ℚ)
  w := (6134036555293 / 5000000000000 : ℚ)
  center := (188525000000000003 / 200000000000000000 : ℚ)
  supportValue := (10589503873730059 / 50000000000000000 : ℚ)
  supportSlope := (-3411066912181883 / 5000000000000000 : ℚ)
  oldCenter := (10589503873730059 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2154
  oldLo := (21149999999999999 / 100000000000000000 : ℚ)
  oldHi := (21199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_560]
}

noncomputable def cell_14117 : Cell := { cellDefaults with
  domain := ⟨(94275000000000003 / 100000000000000000 : ℚ), (47150000000000003 / 50000000000000000 : ℚ)⟩
  r := (20869593385561 / 50000000000000 : ℚ)
  w := (6134036555293 / 5000000000000 : ℚ)
  center := (188575000000000009 / 200000000000000000 : ℚ)
  supportValue := (21161960089327633 / 100000000000000000 : ℚ)
  supportSlope := (-6815981596798597 / 10000000000000000 : ℚ)
  oldCenter := (21161960089327633 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2154
  oldLo := (21149999999999999 / 100000000000000000 : ℚ)
  oldHi := (21199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_560]
}

noncomputable def cell_14118 : Cell := { cellDefaults with
  domain := ⟨(47150000000000003 / 50000000000000000 : ℚ), (188650000000000007 / 200000000000000000 : ℚ)⟩
  r := (521537525731 / 1250000000000 : ℚ)
  w := (490548346717 / 400000000000 : ℚ)
  center := (377250000000000019 / 400000000000000000 : ℚ)
  supportValue := (21170355471117117 / 100000000000000000 : ℚ)
  supportSlope := (-6816105738798999 / 10000000000000000 : ℚ)
  oldCenter := (21170355471117117 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2155
  oldLo := (21149999999999999 / 100000000000000000 : ℚ)
  oldHi := (21199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_560]
}

noncomputable def cell_14119 : Cell := { cellDefaults with
  domain := ⟨(188650000000000007 / 200000000000000000 : ℚ), (94350000000000001 / 100000000000000000 : ℚ)⟩
  r := (521537525731 / 1250000000000 : ℚ)
  w := (490548346717 / 400000000000 : ℚ)
  center := (377350000000000009 / 400000000000000000 : ℚ)
  supportValue := (26441653586783 / 125000000000000 : ℚ)
  supportSlope := (-6810349662439 / 10000000000000 : ℚ)
  oldCenter := (26441653586783 / 125000000000000 : ℚ)
  newCoefficients := coefficients_2155
  oldHi := (21199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_559, piece_560]
}

noncomputable def cell_14120 : Cell := { cellDefaults with
  domain := ⟨(94350000000000001 / 100000000000000000 : ℚ), (188750000000000007 / 200000000000000000 : ℚ)⟩
  r := (20853413871813 / 50000000000000 : ℚ)
  w := (3064835308413 / 2500000000000 : ℚ)
  center := (377450000000000009 / 400000000000000000 : ℚ)
  supportValue := (21161724342389107 / 100000000000000000 : ℚ)
  supportSlope := (-6810091011474769 / 10000000000000000 : ℚ)
  oldCenter := (21161724342389107 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2156
  oldLo := (21149999999999999 / 100000000000000000 : ℚ)
  oldHi := (21199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_560]
}

noncomputable def cell_14121 : Cell := { cellDefaults with
  domain := ⟨(188750000000000007 / 200000000000000000 : ℚ), (47200000000000003 / 50000000000000000 : ℚ)⟩
  r := (20853413871813 / 50000000000000 : ℚ)
  w := (3064835308413 / 2500000000000 : ℚ)
  center := (377550000000000019 / 400000000000000000 : ℚ)
  supportValue := (2114470578152391 / 10000000000000000 : ℚ)
  supportSlope := (-6804980743839047 / 10000000000000000 : ℚ)
  oldCenter := (2114470578152391 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2156
  oldHi := (21199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_559, piece_560]
}

noncomputable def cell_14122 : Cell := { cellDefaults with
  domain := ⟨(47200000000000003 / 50000000000000000 : ℚ), (188850000000000007 / 200000000000000000 : ℚ)⟩
  r := (162854150213 / 390625000000 : ℚ)
  w := (12254971489369 / 10000000000000 : ℚ)
  center := (377650000000000019 / 400000000000000000 : ℚ)
  supportValue := (4230622950233589 / 20000000000000000 : ℚ)
  supportSlope := (-6804489511743187 / 10000000000000000 : ℚ)
  oldCenter := (4230622950233589 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2157
  oldHi := (21199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_559, piece_560]
}

noncomputable def cell_14123 : Cell := { cellDefaults with
  domain := ⟨(188850000000000007 / 200000000000000000 : ℚ), (94450000000000001 / 100000000000000000 : ℚ)⟩
  r := (162854150213 / 390625000000 : ℚ)
  w := (12254971489369 / 10000000000000 : ℚ)
  center := (377750000000000009 / 400000000000000000 : ℚ)
  supportValue := (1321006849736517 / 6250000000000000 : ℚ)
  supportSlope := (-6799221494529619 / 10000000000000000 : ℚ)
  oldCenter := (1321006849736517 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_2157
  oldPieces := [piece_559]
}

noncomputable def cell_14124 : Cell := { cellDefaults with
  domain := ⟨(94450000000000001 / 100000000000000000 : ℚ), (2361731843575419 / 2500000000000000 : ℚ)⟩
  r := (20837253823823 / 50000000000000 : ℚ)
  w := (12250598356283 / 10000000000000 : ℚ)
  center := (188919273743016761 / 200000000000000000 : ℚ)
  supportValue := (10573236295747529 / 50000000000000000 : ℚ)
  supportSlope := (-6799769188125117 / 10000000000000000 : ℚ)
  oldCenter := (10573236295747529 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2158
  oldHi := (21199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_559, piece_560]
}

noncomputable def cell_14125 : Cell := { cellDefaults with
  domain := ⟨(2361731843575419 / 2500000000000000 : ℚ), (94484636871508383 / 100000000000000000 : ℚ)⟩
  r := (20837253823823 / 50000000000000 : ℚ)
  w := (12250598356283 / 10000000000000 : ℚ)
  center := (188953910614525143 / 200000000000000000 : ℚ)
  supportValue := (10567342410602977 / 50000000000000000 : ℚ)
  supportSlope := (-339790911821583 / 500000000000000 : ℚ)
  oldCenter := (10567342410602977 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2159
  oldPieces := [piece_559]
}

noncomputable def cell_14126 : Cell := { cellDefaults with
  domain := ⟨(94484636871508383 / 100000000000000000 : ℚ), (47250000000000003 / 50000000000000000 : ℚ)⟩
  r := (20837253823823 / 50000000000000 : ℚ)
  w := (12250598356283 / 10000000000000 : ℚ)
  center := (188984636871508389 / 200000000000000000 : ℚ)
  supportValue := (5281061800468171 / 25000000000000000 : ℚ)
  supportSlope := (-3396030632878277 / 5000000000000000 : ℚ)
  oldCenter := (5281061800468171 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2159
  oldPieces := [piece_559]
}

noncomputable def cell_14127 : Cell := { cellDefaults with
  domain := ⟨(47250000000000003 / 50000000000000000 : ℚ), (189050000000000007 / 200000000000000000 : ℚ)⟩
  r := (10414590485871 / 25000000000000 : ℚ)
  w := (12246223178807 / 10000000000000 : ℚ)
  center := (378050000000000019 / 400000000000000000 : ℚ)
  supportValue := (21135957095600563 / 100000000000000000 : ℚ)
  supportSlope := (-849172103348313 / 1250000000000000 : ℚ)
  oldCenter := (21135957095600563 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2160
  oldPieces := [piece_559]
}

noncomputable def cell_14128 : Cell := { cellDefaults with
  domain := ⟨(189050000000000007 / 200000000000000000 : ℚ), (94550000000000001 / 100000000000000000 : ℚ)⟩
  r := (10414590485871 / 25000000000000 : ℚ)
  w := (12246223178807 / 10000000000000 : ℚ)
  center := (378150000000000009 / 400000000000000000 : ℚ)
  supportValue := (21118981272997867 / 100000000000000000 : ℚ)
  supportSlope := (-424204387544689 / 625000000000000 : ℚ)
  oldCenter := (21118981272997867 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2160
  oldPieces := [piece_559]
}

noncomputable def cell_14129 : Cell := { cellDefaults with
  domain := ⟨(94550000000000001 / 100000000000000000 : ℚ), (189150000000000007 / 200000000000000000 : ℚ)⟩
  r := (4164222723131 / 10000000000000 : ℚ)
  w := (12241845750001 / 10000000000000 : ℚ)
  center := (378250000000000009 / 400000000000000000 : ℚ)
  supportValue := (2112740752488471 / 10000000000000000 : ℚ)
  supportSlope := (-3393704689831017 / 5000000000000000 : ℚ)
  oldCenter := (2112740752488471 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2161
  oldPieces := [piece_559]
}

noncomputable def cell_14130 : Cell := { cellDefaults with
  domain := ⟨(189150000000000007 / 200000000000000000 : ℚ), (47300000000000003 / 50000000000000000 : ℚ)⟩
  r := (4164222723131 / 10000000000000 : ℚ)
  w := (12241845750001 / 10000000000000 : ℚ)
  center := (378350000000000019 / 400000000000000000 : ℚ)
  supportValue := (5277611651830759 / 25000000000000000 : ℚ)
  supportSlope := (-678131361910793 / 1000000000000000 : ℚ)
  oldCenter := (5277611651830759 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2161
  oldPieces := [piece_559]
}

noncomputable def cell_14131 : Cell := { cellDefaults with
  domain := ⟨(47300000000000003 / 50000000000000000 : ℚ), (189250000000000007 / 200000000000000000 : ℚ)⟩
  r := (10406525863961 / 25000000000000 : ℚ)
  w := (12237467872209 / 10000000000000 : ℚ)
  center := (378450000000000019 / 400000000000000000 : ℚ)
  supportValue := (2111887410998113 / 10000000000000000 : ℚ)
  supportSlope := (-105960214144909 / 156250000000000 : ℚ)
  oldCenter := (2111887410998113 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2162
  oldPieces := [piece_559]
}

noncomputable def cell_14132 : Cell := { cellDefaults with
  domain := ⟨(189250000000000007 / 200000000000000000 : ℚ), (94650000000000001 / 100000000000000000 : ℚ)⟩
  r := (10406525863961 / 25000000000000 : ℚ)
  w := (12237467872209 / 10000000000000 : ℚ)
  center := (378550000000000009 / 400000000000000000 : ℚ)
  supportValue := (21101928068069437 / 100000000000000000 : ℚ)
  supportSlope := (-1693963304307991 / 2500000000000000 : ℚ)
  oldCenter := (21101928068069437 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2162
  oldLo := (21049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_558, piece_559]
}

noncomputable def cell_14133 : Cell := { cellDefaults with
  domain := ⟨(94650000000000001 / 100000000000000000 : ℚ), (189350000000000007 / 200000000000000000 : ℚ)⟩
  r := (5201248597987 / 12500000000000 : ℚ)
  w := (12233085931161 / 10000000000000 : ℚ)
  center := (378650000000000009 / 400000000000000000 : ℚ)
  supportValue := (5277591192916943 / 25000000000000000 : ℚ)
  supportSlope := (-338775599262397 / 500000000000000 : ℚ)
  oldCenter := (5277591192916943 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2163
  oldPieces := [piece_559]
}

noncomputable def cell_14134 : Cell := { cellDefaults with
  domain := ⟨(189350000000000007 / 200000000000000000 : ℚ), (47350000000000003 / 50000000000000000 : ℚ)⟩
  r := (5201248597987 / 12500000000000 : ℚ)
  w := (12233085931161 / 10000000000000 : ℚ)
  center := (378750000000000019 / 400000000000000000 : ℚ)
  supportValue := (131833952215317 / 625000000000000 : ℚ)
  supportSlope := (-1692636740985129 / 2500000000000000 : ℚ)
  oldCenter := (131833952215317 / 625000000000000 : ℚ)
  newCoefficients := coefficients_2163
  oldLo := (21049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_558, piece_559]
}

noncomputable def cell_14135 : Cell := { cellDefaults with
  domain := ⟨(47350000000000003 / 50000000000000000 : ℚ), (189450000000000007 / 200000000000000000 : ℚ)⟩
  r := (41593883804007 / 100000000000000 : ℚ)
  w := (1528587704981 / 1250000000000 : ℚ)
  center := (378850000000000019 / 400000000000000000 : ℚ)
  supportValue := (2637734500256397 / 12500000000000000 : ℚ)
  supportSlope := (-270802837560629 / 400000000000000 : ℚ)
  oldCenter := (2637734500256397 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2164
  oldLo := (21049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_558, piece_559]
}

noncomputable def cell_14136 : Cell := { cellDefaults with
  domain := ⟨(189450000000000007 / 200000000000000000 : ℚ), (94750000000000001 / 100000000000000000 : ℚ)⟩
  r := (41593883804007 / 100000000000000 : ℚ)
  w := (1528587704981 / 1250000000000 : ℚ)
  center := (378950000000000009 / 400000000000000000 : ℚ)
  supportValue := (4216991366824297 / 20000000000000000 : ℚ)
  supportSlope := (-3382381024656161 / 5000000000000000 : ℚ)
  oldCenter := (4216991366824297 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2164
  oldLo := (21049999999999999 / 100000000000000000 : ℚ)
  oldHi := (21099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_558]
}

noncomputable def cell_14137 : Cell := { cellDefaults with
  domain := ⟨(94750000000000001 / 100000000000000000 : ℚ), (189550000000000007 / 200000000000000000 : ℚ)⟩
  r := (4157778889991 / 10000000000000 : ℚ)
  w := (12224315046637 / 10000000000000 : ℚ)
  center := (379050000000000009 / 400000000000000000 : ℚ)
  supportValue := (329584469051029 / 1562500000000000 : ℚ)
  supportSlope := (-6764777685494429 / 10000000000000000 : ℚ)
  oldCenter := (329584469051029 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_2165
  oldLo := (21049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_558, piece_559]
}

noncomputable def cell_14138 : Cell := { cellDefaults with
  domain := ⟨(189550000000000007 / 200000000000000000 : ℚ), (47400000000000003 / 50000000000000000 : ℚ)⟩
  r := (4157778889991 / 10000000000000 : ℚ)
  w := (12224315046637 / 10000000000000 : ℚ)
  center := (379150000000000019 / 400000000000000000 : ℚ)
  supportValue := (10538250649552633 / 50000000000000000 : ℚ)
  supportSlope := (-6758851106307019 / 10000000000000000 : ℚ)
  oldCenter := (10538250649552633 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2165
  oldLo := (21049999999999999 / 100000000000000000 : ℚ)
  oldHi := (21099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_558]
}

noncomputable def cell_14139 : Cell := { cellDefaults with
  domain := ⟨(47400000000000003 / 50000000000000000 : ℚ), (189650000000000007 / 200000000000000000 : ℚ)⟩
  r := (2078085158799 / 5000000000000 : ℚ)
  w := (12219925436607 / 10000000000000 : ℚ)
  center := (379250000000000019 / 400000000000000000 : ℚ)
  supportValue := (1054247892060229 / 5000000000000000 : ℚ)
  supportSlope := (-270360224713189 / 400000000000000 : ℚ)
  oldCenter := (1054247892060229 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2166
  oldLo := (21049999999999999 / 100000000000000000 : ℚ)
  oldHi := (21099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_558]
}

noncomputable def cell_14140 : Cell := { cellDefaults with
  domain := ⟨(189650000000000007 / 200000000000000000 : ℚ), (94850000000000001 / 100000000000000000 : ℚ)⟩
  r := (2078085158799 / 5000000000000 : ℚ)
  w := (12219925436607 / 10000000000000 : ℚ)
  center := (379350000000000009 / 400000000000000000 : ℚ)
  supportValue := (10534033939310493 / 50000000000000000 : ℚ)
  supportSlope := (-6752953431333317 / 10000000000000000 : ℚ)
  oldCenter := (10534033939310493 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2166
  oldLo := (21049999999999999 / 100000000000000000 : ℚ)
  oldHi := (21099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_558]
}

noncomputable def cell_14141 : Cell := { cellDefaults with
  domain := ⟨(94850000000000001 / 100000000000000000 : ℚ), (23718750000000001 / 25000000000000000 : ℚ)⟩
  r := (8309125623319 / 20000000000000 : ℚ)
  w := (3053883518069 / 2500000000000 : ℚ)
  center := (37945000000000001 / 40000000000000000 : ℚ)
  supportValue := (10538264013317253 / 50000000000000000 : ℚ)
  supportSlope := (-6753109520857581 / 10000000000000000 : ℚ)
  oldCenter := (10538264013317253 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2167
  oldLo := (21049999999999999 / 100000000000000000 : ℚ)
  oldHi := (21099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_558]
}

noncomputable def cell_14142 : Cell := { cellDefaults with
  domain := ⟨(23718750000000001 / 25000000000000000 : ℚ), (94900000000000007 / 100000000000000000 : ℚ)⟩
  r := (8309125623319 / 20000000000000 : ℚ)
  w := (3053883518069 / 2500000000000 : ℚ)
  center := (189775000000000011 / 200000000000000000 : ℚ)
  supportValue := (1316228299431727 / 6250000000000000 : ℚ)
  supportSlope := (-3373534023510411 / 5000000000000000 : ℚ)
  oldCenter := (1316228299431727 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_2167
  oldLo := (21049999999999999 / 100000000000000000 : ℚ)
  oldHi := (21099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_558]
}

noncomputable def cell_14143 : Cell := { cellDefaults with
  domain := ⟨(94900000000000007 / 100000000000000000 : ℚ), (23731250000000001 / 25000000000000000 : ℚ)⟩
  r := (20764781248411 / 50000000000000 : ℚ)
  w := (6105569709751 / 5000000000000 : ℚ)
  center := (189825000000000011 / 200000000000000000 : ℚ)
  supportValue := (21068120412301383 / 100000000000000000 : ℚ)
  supportSlope := (-6747226747091083 / 10000000000000000 : ℚ)
  oldCenter := (21068120412301383 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2168
  oldLo := (21049999999999999 / 100000000000000000 : ℚ)
  oldHi := (21099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_558]
}

noncomputable def cell_14144 : Cell := { cellDefaults with
  domain := ⟨(23731250000000001 / 25000000000000000 : ℚ), (94950000000000001 / 100000000000000000 : ℚ)⟩
  r := (20764781248411 / 50000000000000 : ℚ)
  w := (6105569709751 / 5000000000000 : ℚ)
  center := (37975000000000001 / 40000000000000000 : ℚ)
  supportValue := (1052562993508401 / 5000000000000000 : ℚ)
  supportSlope := (-6741727623681113 / 10000000000000000 : ℚ)
  oldCenter := (1052562993508401 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2168
  oldLo := (20999999999999999 / 100000000000000000 : ℚ)
  oldHi := (21099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_557, piece_558]
}

noncomputable def cell_14145 : Cell := { cellDefaults with
  domain := ⟨(94950000000000001 / 100000000000000000 : ℚ), (23743750000000001 / 25000000000000000 : ℚ)⟩
  r := (10378376982941 / 25000000000000 : ℚ)
  w := (12206744530883 / 10000000000000 : ℚ)
  center := (37985000000000001 / 40000000000000000 : ℚ)
  supportValue := (1316233009704771 / 6250000000000000 : ℚ)
  supportSlope := (-674135537331563 / 1000000000000000 : ℚ)
  oldCenter := (1316233009704771 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_2169
  oldLo := (21049999999999999 / 100000000000000000 : ℚ)
  oldHi := (21099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_558]
}

noncomputable def cell_14146 : Cell := { cellDefaults with
  domain := ⟨(23743750000000001 / 25000000000000000 : ℚ), (95000000000000007 / 100000000000000000 : ℚ)⟩
  r := (10378376982941 / 25000000000000 : ℚ)
  w := (12206744530883 / 10000000000000 : ℚ)
  center := (189975000000000011 / 200000000000000000 : ℚ)
  supportValue := (5260720239445521 / 25000000000000000 : ℚ)
  supportSlope := (-2105151061287 / 3125000000000 : ℚ)
  oldCenter := (5260720239445521 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2169
  oldLo := (20999999999999999 / 100000000000000000 : ℚ)
  oldHi := (21099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_557, piece_558]
}

noncomputable def cell_14147 : Cell := { cellDefaults with
  domain := ⟨(95000000000000007 / 100000000000000000 : ℚ), (2375558659217877 / 2500000000000000 : ℚ)⟩
  r := (41497462334923 / 100000000000000 : ℚ)
  w := (12202346022771 / 10000000000000 : ℚ)
  center := (190022346368715087 / 200000000000000000 : ℚ)
  supportValue := (210522527744841 / 1000000000000000 : ℚ)
  supportSlope := (-6736255182539183 / 10000000000000000 : ℚ)
  oldCenter := (210522527744841 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_2170
  oldLo := (20999999999999999 / 100000000000000000 : ℚ)
  oldHi := (21099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_557, piece_558]
}

noncomputable def cell_14148 : Cell := { cellDefaults with
  domain := ⟨(2375558659217877 / 2500000000000000 : ℚ), (190072346368715081 / 200000000000000000 : ℚ)⟩
  r := (41497462334923 / 100000000000000 : ℚ)
  w := (12202346022771 / 10000000000000 : ℚ)
  center := (380117039106145241 / 400000000000000000 : ℚ)
  supportValue := (21040057332725137 / 100000000000000000 : ℚ)
  supportSlope := (-105198569299339 / 156250000000000 : ℚ)
  oldCenter := (21040057332725137 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2171
  oldLo := (20999999999999999 / 100000000000000000 : ℚ)
  oldHi := (21049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_557]
}

noncomputable def cell_14149 : Cell := { cellDefaults with
  domain := ⟨(190072346368715081 / 200000000000000000 : ℚ), (95050000000000001 / 100000000000000000 : ℚ)⟩
  r := (41497462334923 / 100000000000000 : ℚ)
  w := (12202346022771 / 10000000000000 : ℚ)
  center := (380172346368715083 / 400000000000000000 : ℚ)
  supportValue := (4206150087968309 / 20000000000000000 : ℚ)
  supportSlope := (-841172476213513 / 1250000000000000 : ℚ)
  oldCenter := (4206150087968309 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2171
  oldLo := (20999999999999999 / 100000000000000000 : ℚ)
  oldHi := (21049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_557]
}

theorem check_14100 : cell_14100.check = true := by
  decide +kernel

theorem check_14101 : cell_14101.check = true := by
  decide +kernel

theorem check_14102 : cell_14102.check = true := by
  decide +kernel

theorem check_14103 : cell_14103.check = true := by
  decide +kernel

theorem check_14104 : cell_14104.check = true := by
  decide +kernel

theorem check_14105 : cell_14105.check = true := by
  decide +kernel

theorem check_14106 : cell_14106.check = true := by
  decide +kernel

theorem check_14107 : cell_14107.check = true := by
  decide +kernel

theorem check_14108 : cell_14108.check = true := by
  decide +kernel

theorem check_14109 : cell_14109.check = true := by
  decide +kernel

theorem check_14110 : cell_14110.check = true := by
  decide +kernel

theorem check_14111 : cell_14111.check = true := by
  decide +kernel

theorem check_14112 : cell_14112.check = true := by
  decide +kernel

theorem check_14113 : cell_14113.check = true := by
  decide +kernel

theorem check_14114 : cell_14114.check = true := by
  decide +kernel

theorem check_14115 : cell_14115.check = true := by
  decide +kernel

theorem check_14116 : cell_14116.check = true := by
  decide +kernel

theorem check_14117 : cell_14117.check = true := by
  decide +kernel

theorem check_14118 : cell_14118.check = true := by
  decide +kernel

theorem check_14119 : cell_14119.check = true := by
  decide +kernel

theorem check_14120 : cell_14120.check = true := by
  decide +kernel

theorem check_14121 : cell_14121.check = true := by
  decide +kernel

theorem check_14122 : cell_14122.check = true := by
  decide +kernel

theorem check_14123 : cell_14123.check = true := by
  decide +kernel

theorem check_14124 : cell_14124.check = true := by
  decide +kernel

theorem check_14125 : cell_14125.check = true := by
  decide +kernel

theorem check_14126 : cell_14126.check = true := by
  decide +kernel

theorem check_14127 : cell_14127.check = true := by
  decide +kernel

theorem check_14128 : cell_14128.check = true := by
  decide +kernel

theorem check_14129 : cell_14129.check = true := by
  decide +kernel

theorem check_14130 : cell_14130.check = true := by
  decide +kernel

theorem check_14131 : cell_14131.check = true := by
  decide +kernel

theorem check_14132 : cell_14132.check = true := by
  decide +kernel

theorem check_14133 : cell_14133.check = true := by
  decide +kernel

theorem check_14134 : cell_14134.check = true := by
  decide +kernel

theorem check_14135 : cell_14135.check = true := by
  decide +kernel

theorem check_14136 : cell_14136.check = true := by
  decide +kernel

theorem check_14137 : cell_14137.check = true := by
  decide +kernel

theorem check_14138 : cell_14138.check = true := by
  decide +kernel

theorem check_14139 : cell_14139.check = true := by
  decide +kernel

theorem check_14140 : cell_14140.check = true := by
  decide +kernel

theorem check_14141 : cell_14141.check = true := by
  decide +kernel

theorem check_14142 : cell_14142.check = true := by
  decide +kernel

theorem check_14143 : cell_14143.check = true := by
  decide +kernel

theorem check_14144 : cell_14144.check = true := by
  decide +kernel

theorem check_14145 : cell_14145.check = true := by
  decide +kernel

theorem check_14146 : cell_14146.check = true := by
  decide +kernel

theorem check_14147 : cell_14147.check = true := by
  decide +kernel

theorem check_14148 : cell_14148.check = true := by
  decide +kernel

theorem check_14149 : cell_14149.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_14100, cell_14101, cell_14102, cell_14103, cell_14104, cell_14105, cell_14106, cell_14107, cell_14108, cell_14109, cell_14110, cell_14111, cell_14112, cell_14113, cell_14114, cell_14115, cell_14116, cell_14117, cell_14118, cell_14119, cell_14120, cell_14121, cell_14122, cell_14123, cell_14124, cell_14125, cell_14126, cell_14127, cell_14128, cell_14129, cell_14130, cell_14131, cell_14132, cell_14133, cell_14134, cell_14135, cell_14136, cell_14137, cell_14138, cell_14139, cell_14140, cell_14141, cell_14142, cell_14143, cell_14144, cell_14145, cell_14146, cell_14147, cell_14148, cell_14149]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_14100, check_14101, check_14102, check_14103, check_14104, check_14105, check_14106, check_14107, check_14108, check_14109, check_14110, check_14111, check_14112, check_14113, check_14114, check_14115, check_14116, check_14117, check_14118, check_14119, check_14120, check_14121, check_14122, check_14123, check_14124, check_14125, check_14126, check_14127, check_14128, check_14129, check_14130, check_14131, check_14132, check_14133, check_14134, check_14135, check_14136, check_14137, check_14138, check_14139, check_14140, check_14141, check_14142, check_14143, check_14144, check_14145, check_14146, check_14147, check_14148, check_14149, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0282

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0282
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0282
open AnalyticBounds.ExpressionCertificate

theorem linked_14100 : Linked cell_14100 pieces := by
  link_source cell_14100 with piece_2145 using piece_2145_mem, piece_561_mem

theorem linked_14101 : Linked cell_14101 pieces := by
  link_source cell_14101 with piece_2146 using piece_2146_mem, piece_561_mem

theorem linked_14102 : Linked cell_14102 pieces := by
  link_source cell_14102 with piece_2147 using piece_2147_mem, piece_561_mem

theorem linked_14103 : Linked cell_14103 pieces := by
  link_source cell_14103 with piece_2147 using piece_2147_mem, piece_561_mem

theorem linked_14104 : Linked cell_14104 pieces := by
  link_source cell_14104 with piece_2148 using piece_2148_mem, piece_561_mem

theorem linked_14105 : Linked cell_14105 pieces := by
  link_source cell_14105 with piece_2148 using piece_2148_mem, piece_561_mem

theorem linked_14106 : Linked cell_14106 pieces := by
  link_source cell_14106 with piece_2149 using piece_2149_mem, piece_561_mem

theorem linked_14107 : Linked cell_14107 pieces := by
  link_source cell_14107 with piece_2149 using piece_2149_mem, ⟨piece_560_mem, piece_561_mem⟩

theorem linked_14108 : Linked cell_14108 pieces := by
  link_source cell_14108 with piece_2150 using piece_2150_mem, piece_561_mem

theorem linked_14109 : Linked cell_14109 pieces := by
  link_source cell_14109 with piece_2150 using piece_2150_mem, ⟨piece_560_mem, piece_561_mem⟩

theorem linked_14110 : Linked cell_14110 pieces := by
  link_source cell_14110 with piece_2151 using piece_2151_mem, ⟨piece_560_mem, piece_561_mem⟩

theorem linked_14111 : Linked cell_14111 pieces := by
  link_source cell_14111 with piece_2151 using piece_2151_mem, piece_560_mem

theorem linked_14112 : Linked cell_14112 pieces := by
  link_source cell_14112 with piece_2152 using piece_2152_mem, ⟨piece_560_mem, piece_561_mem⟩

theorem linked_14113 : Linked cell_14113 pieces := by
  link_source cell_14113 with piece_2152 using piece_2152_mem, piece_560_mem

theorem linked_14114 : Linked cell_14114 pieces := by
  link_source cell_14114 with piece_2153 using piece_2153_mem, piece_560_mem

theorem linked_14115 : Linked cell_14115 pieces := by
  link_source cell_14115 with piece_2153 using piece_2153_mem, piece_560_mem

theorem linked_14116 : Linked cell_14116 pieces := by
  link_source cell_14116 with piece_2154 using piece_2154_mem, piece_560_mem

theorem linked_14117 : Linked cell_14117 pieces := by
  link_source cell_14117 with piece_2154 using piece_2154_mem, piece_560_mem

theorem linked_14118 : Linked cell_14118 pieces := by
  link_source cell_14118 with piece_2155 using piece_2155_mem, piece_560_mem

theorem linked_14119 : Linked cell_14119 pieces := by
  link_source cell_14119 with piece_2155 using piece_2155_mem, ⟨piece_559_mem, piece_560_mem⟩

theorem linked_14120 : Linked cell_14120 pieces := by
  link_source cell_14120 with piece_2156 using piece_2156_mem, piece_560_mem

theorem linked_14121 : Linked cell_14121 pieces := by
  link_source cell_14121 with piece_2156 using piece_2156_mem, ⟨piece_559_mem, piece_560_mem⟩

theorem linked_14122 : Linked cell_14122 pieces := by
  link_source cell_14122 with piece_2157 using piece_2157_mem, ⟨piece_559_mem, piece_560_mem⟩

theorem linked_14123 : Linked cell_14123 pieces := by
  link_source cell_14123 with piece_2157 using piece_2157_mem, piece_559_mem

theorem linked_14124 : Linked cell_14124 pieces := by
  link_source cell_14124 with piece_2158 using piece_2158_mem, ⟨piece_559_mem, piece_560_mem⟩

theorem linked_14125 : Linked cell_14125 pieces := by
  link_source cell_14125 with piece_2159 using piece_2159_mem, piece_559_mem

theorem linked_14126 : Linked cell_14126 pieces := by
  link_source cell_14126 with piece_2159 using piece_2159_mem, piece_559_mem

theorem linked_14127 : Linked cell_14127 pieces := by
  link_source cell_14127 with piece_2160 using piece_2160_mem, piece_559_mem

theorem linked_14128 : Linked cell_14128 pieces := by
  link_source cell_14128 with piece_2160 using piece_2160_mem, piece_559_mem

theorem linked_14129 : Linked cell_14129 pieces := by
  link_source cell_14129 with piece_2161 using piece_2161_mem, piece_559_mem

theorem linked_14130 : Linked cell_14130 pieces := by
  link_source cell_14130 with piece_2161 using piece_2161_mem, piece_559_mem

theorem linked_14131 : Linked cell_14131 pieces := by
  link_source cell_14131 with piece_2162 using piece_2162_mem, piece_559_mem

theorem linked_14132 : Linked cell_14132 pieces := by
  link_source cell_14132 with piece_2162 using piece_2162_mem, ⟨piece_558_mem, piece_559_mem⟩

theorem linked_14133 : Linked cell_14133 pieces := by
  link_source cell_14133 with piece_2163 using piece_2163_mem, piece_559_mem

theorem linked_14134 : Linked cell_14134 pieces := by
  link_source cell_14134 with piece_2163 using piece_2163_mem, ⟨piece_558_mem, piece_559_mem⟩

theorem linked_14135 : Linked cell_14135 pieces := by
  link_source cell_14135 with piece_2164 using piece_2164_mem, ⟨piece_558_mem, piece_559_mem⟩

theorem linked_14136 : Linked cell_14136 pieces := by
  link_source cell_14136 with piece_2164 using piece_2164_mem, piece_558_mem

theorem linked_14137 : Linked cell_14137 pieces := by
  link_source cell_14137 with piece_2165 using piece_2165_mem, ⟨piece_558_mem, piece_559_mem⟩

theorem linked_14138 : Linked cell_14138 pieces := by
  link_source cell_14138 with piece_2165 using piece_2165_mem, piece_558_mem

theorem linked_14139 : Linked cell_14139 pieces := by
  link_source cell_14139 with piece_2166 using piece_2166_mem, piece_558_mem

theorem linked_14140 : Linked cell_14140 pieces := by
  link_source cell_14140 with piece_2166 using piece_2166_mem, piece_558_mem

theorem linked_14141 : Linked cell_14141 pieces := by
  link_source cell_14141 with piece_2167 using piece_2167_mem, piece_558_mem

theorem linked_14142 : Linked cell_14142 pieces := by
  link_source cell_14142 with piece_2167 using piece_2167_mem, piece_558_mem

theorem linked_14143 : Linked cell_14143 pieces := by
  link_source cell_14143 with piece_2168 using piece_2168_mem, piece_558_mem

theorem linked_14144 : Linked cell_14144 pieces := by
  link_source cell_14144 with piece_2168 using piece_2168_mem, ⟨piece_557_mem, piece_558_mem⟩

theorem linked_14145 : Linked cell_14145 pieces := by
  link_source cell_14145 with piece_2169 using piece_2169_mem, piece_558_mem

theorem linked_14146 : Linked cell_14146 pieces := by
  link_source cell_14146 with piece_2169 using piece_2169_mem, ⟨piece_557_mem, piece_558_mem⟩

theorem linked_14147 : Linked cell_14147 pieces := by
  link_source cell_14147 with piece_2170 using piece_2170_mem, ⟨piece_557_mem, piece_558_mem⟩

theorem linked_14148 : Linked cell_14148 pieces := by
  link_source cell_14148 with piece_2171 using piece_2171_mem, piece_557_mem

theorem linked_14149 : Linked cell_14149 pieces := by
  link_source cell_14149 with piece_2171 using piece_2171_mem, piece_557_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0282.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0282.cells,List.forall_mem_cons]
  exact ⟨linked_14100, linked_14101, linked_14102, linked_14103, linked_14104, linked_14105, linked_14106, linked_14107, linked_14108, linked_14109, linked_14110, linked_14111, linked_14112, linked_14113, linked_14114, linked_14115, linked_14116, linked_14117, linked_14118, linked_14119, linked_14120, linked_14121, linked_14122, linked_14123, linked_14124, linked_14125, linked_14126, linked_14127, linked_14128, linked_14129, linked_14130, linked_14131, linked_14132, linked_14133, linked_14134, linked_14135, linked_14136, linked_14137, linked_14138, linked_14139, linked_14140, linked_14141, linked_14142, linked_14143, linked_14144, linked_14145, linked_14146, linked_14147, linked_14148, linked_14149, by simp⟩

theorem covered : covers (93875000000000003 / 100000000000000000 : ℚ) (95050000000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0282.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0282
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0283
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(95050000000000001 / 100000000000000000 : ℚ), (23768750000000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (8229382485147 / 20000000000000 : ℚ)
  w := (378279224163 / 312500000000 : ℚ)
  center := (38025000000000001 / 40000000000000000 : ℚ)
  supportValue := (10521504771013597 / 50000000000000000 : ℚ)
  supportSlope := (-3365395607918971 / 5000000000000000 : ℚ)
  oldCenter := (10521504771013597 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2172
  oldLo := (20849999999999999 / 100000000000000000 : ℚ)
  oldHi := (20899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_553]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_14150 : Cell := { cellDefaults with
  r := (4148142635863 / 10000000000000 : ℚ)
  w := (12197944846539 / 10000000000000 : ℚ)
  oldLo := (20999999999999999 / 100000000000000000 : ℚ)
  oldHi := (21099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_557, piece_558]
}

noncomputable def cell_14151 : Cell := { cellDefaults with
  domain := ⟨(23768750000000001 / 25000000000000000 : ℚ), (95100000000000007 / 100000000000000000 : ℚ)⟩
  r := (4148142635863 / 10000000000000 : ℚ)
  w := (12197944846539 / 10000000000000 : ℚ)
  center := (190175000000000011 / 200000000000000000 : ℚ)
  supportValue := (131413686282877 / 625000000000000 : ℚ)
  supportSlope := (-6724883097345729 / 10000000000000000 : ℚ)
  oldCenter := (131413686282877 / 625000000000000 : ℚ)
  oldLo := (20999999999999999 / 100000000000000000 : ℚ)
  oldHi := (21049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_557]
}

noncomputable def cell_14152 : Cell := { cellDefaults with
  domain := ⟨(95100000000000007 / 100000000000000000 : ℚ), (23781250000000001 / 25000000000000000 : ℚ)⟩
  r := (41465399884637 / 100000000000000 : ℚ)
  w := (6096770120689 / 5000000000000 : ℚ)
  center := (190225000000000011 / 200000000000000000 : ℚ)
  supportValue := (21034681937589977 / 100000000000000000 : ℚ)
  supportSlope := (-6725056429784633 / 10000000000000000 : ℚ)
  oldCenter := (21034681937589977 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2173
  oldLo := (20999999999999999 / 100000000000000000 : ℚ)
  oldHi := (21049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_557]
}

noncomputable def cell_14153 : Cell := { cellDefaults with
  domain := ⟨(23781250000000001 / 25000000000000000 : ℚ), (95150000000000001 / 100000000000000000 : ℚ)⟩
  r := (41465399884637 / 100000000000000 : ℚ)
  w := (6096770120689 / 5000000000000 : ℚ)
  center := (38055000000000001 / 40000000000000000 : ℚ)
  supportValue := (1313617299053519 / 6250000000000000 : ℚ)
  supportSlope := (-839881847843161 / 1250000000000000 : ℚ)
  oldCenter := (1313617299053519 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_2173
  oldLo := (20999999999999999 / 100000000000000000 : ℚ)
  oldHi := (21049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_557]
}

noncomputable def cell_14154 : Cell := { cellDefaults with
  domain := ⟨(95150000000000001 / 100000000000000000 : ℚ), (23793750000000001 / 25000000000000000 : ℚ)⟩
  r := (41449383729923 / 100000000000000 : ℚ)
  w := (12189134005737 / 10000000000000 : ℚ)
  center := (38065000000000001 / 40000000000000000 : ℚ)
  supportValue := (10513186307784679 / 50000000000000000 : ℚ)
  supportSlope := (-6719229657427299 / 10000000000000000 : ℚ)
  oldCenter := (10513186307784679 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2174
  oldLo := (20999999999999999 / 100000000000000000 : ℚ)
  oldHi := (21049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_557]
}

noncomputable def cell_14155 : Cell := { cellDefaults with
  domain := ⟨(23793750000000001 / 25000000000000000 : ℚ), (95200000000000007 / 100000000000000000 : ℚ)⟩
  r := (41449383729923 / 100000000000000 : ℚ)
  w := (12189134005737 / 10000000000000 : ℚ)
  center := (190375000000000011 / 200000000000000000 : ℚ)
  supportValue := (21009582016569361 / 100000000000000000 : ℚ)
  supportSlope := (-3356619286110793 / 5000000000000000 : ℚ)
  oldCenter := (21009582016569361 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2174
  oldLo := (20999999999999999 / 100000000000000000 : ℚ)
  oldHi := (21049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_557]
}

noncomputable def cell_14156 : Cell := { cellDefaults with
  domain := ⟨(95200000000000007 / 100000000000000000 : ℚ), (23806250000000001 / 25000000000000000 : ℚ)⟩
  r := (2071668821153 / 5000000000000 : ℚ)
  w := (1218472493201 / 1000000000000 : ℚ)
  center := (190425000000000011 / 200000000000000000 : ℚ)
  supportValue := (5254521289571991 / 25000000000000000 : ℚ)
  supportSlope := (-839176990241431 / 1250000000000000 : ℚ)
  oldCenter := (5254521289571991 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2175
  oldLo := (20999999999999999 / 100000000000000000 : ℚ)
  oldHi := (21049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_557]
}

noncomputable def cell_14157 : Cell := { cellDefaults with
  domain := ⟨(23806250000000001 / 25000000000000000 : ℚ), (95250000000000001 / 100000000000000000 : ℚ)⟩
  r := (2071668821153 / 5000000000000 : ℚ)
  w := (1218472493201 / 1000000000000 : ℚ)
  center := (38095000000000001 / 40000000000000000 : ℚ)
  supportValue := (2100130908046973 / 10000000000000000 : ℚ)
  supportSlope := (-3353982372840527 / 5000000000000000 : ℚ)
  oldCenter := (2100130908046973 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2175
  oldLo := (20949999999999999 / 100000000000000000 : ℚ)
  oldHi := (21049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_556, piece_557]
}

noncomputable def cell_14158 : Cell := { cellDefaults with
  domain := ⟨(95250000000000001 / 100000000000000000 : ℚ), (23818750000000001 / 25000000000000000 : ℚ)⟩
  r := (41417380796767 / 100000000000000 : ℚ)
  w := (609015756777 / 500000000000 : ℚ)
  center := (38105000000000001 / 40000000000000000 : ℚ)
  supportValue := (21009812875544517 / 100000000000000000 : ℚ)
  supportSlope := (-3353806740246809 / 5000000000000000 : ℚ)
  oldCenter := (21009812875544517 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2176
  oldLo := (20999999999999999 / 100000000000000000 : ℚ)
  oldHi := (21049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_557]
}

noncomputable def cell_14159 : Cell := { cellDefaults with
  domain := ⟨(23818750000000001 / 25000000000000000 : ℚ), (95300000000000007 / 100000000000000000 : ℚ)⟩
  r := (41417380796767 / 100000000000000 : ℚ)
  w := (609015756777 / 500000000000 : ℚ)
  center := (190575000000000011 / 200000000000000000 : ℚ)
  supportValue := (10496524995228679 / 50000000000000000 : ℚ)
  supportSlope := (-3351392594503497 / 5000000000000000 : ℚ)
  oldCenter := (10496524995228679 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2176
  oldLo := (20949999999999999 / 100000000000000000 : ℚ)
  oldHi := (21049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_556, piece_557]
}

noncomputable def cell_14160 : Cell := { cellDefaults with
  domain := ⟨(95300000000000007 / 100000000000000000 : ℚ), (23831250000000001 / 25000000000000000 : ℚ)⟩
  r := (20700696936387 / 50000000000000 : ℚ)
  w := (12175901488951 / 10000000000000 : ℚ)
  center := (190625000000000011 / 200000000000000000 : ℚ)
  supportValue := (21001564172358983 / 100000000000000000 : ℚ)
  supportSlope := (-6702334399802639 / 10000000000000000 : ℚ)
  oldCenter := (21001564172358983 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2177
  oldLo := (20949999999999999 / 100000000000000000 : ℚ)
  oldHi := (21049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_556, piece_557]
}

noncomputable def cell_14161 : Cell := { cellDefaults with
  domain := ⟨(23831250000000001 / 25000000000000000 : ℚ), (95350000000000001 / 100000000000000000 : ℚ)⟩
  r := (20700696936387 / 50000000000000 : ℚ)
  w := (12175901488951 / 10000000000000 : ℚ)
  center := (38135000000000001 / 40000000000000000 : ℚ)
  supportValue := (10492407109257333 / 50000000000000000 : ℚ)
  supportSlope := (-6697103961413567 / 10000000000000000 : ℚ)
  oldCenter := (10492407109257333 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2177
  oldLo := (20949999999999999 / 100000000000000000 : ℚ)
  oldHi := (20999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_556]
}

noncomputable def cell_14162 : Cell := { cellDefaults with
  domain := ⟨(95350000000000001 / 100000000000000000 : ℚ), (23843750000000001 / 25000000000000000 : ℚ)⟩
  r := (41385416981431 / 100000000000000 : ℚ)
  w := (47544864631 / 39062500000 : ℚ)
  center := (38145000000000001 / 40000000000000000 : ℚ)
  supportValue := (20993334050189397 / 100000000000000000 : ℚ)
  supportSlope := (-1339433651858019 / 2000000000000000 : ℚ)
  oldCenter := (20993334050189397 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2178
  oldLo := (20949999999999999 / 100000000000000000 : ℚ)
  oldHi := (21049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_556, piece_557]
}

noncomputable def cell_14163 : Cell := { cellDefaults with
  domain := ⟨(23843750000000001 / 25000000000000000 : ℚ), (95400000000000007 / 100000000000000000 : ℚ)⟩
  r := (41385416981431 / 100000000000000 : ℚ)
  w := (47544864631 / 39062500000 : ℚ)
  center := (190775000000000011 / 200000000000000000 : ℚ)
  supportValue := (10488299128106049 / 50000000000000000 : ℚ)
  supportSlope := (-6691329783216379 / 10000000000000000 : ℚ)
  oldCenter := (10488299128106049 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2178
  oldLo := (20949999999999999 / 100000000000000000 : ℚ)
  oldHi := (20999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_556]
}

noncomputable def cell_14164 : Cell := { cellDefaults with
  domain := ⟨(95400000000000007 / 100000000000000000 : ℚ), (190850000000000009 / 200000000000000000 : ℚ)⟩
  r := (20684724667541 / 50000000000000 : ℚ)
  w := (2433413341661 / 2000000000000 : ℚ)
  center := (381650000000000023 / 400000000000000000 : ℚ)
  supportValue := (10492562160603551 / 50000000000000000 : ℚ)
  supportSlope := (-6691522453002421 / 10000000000000000 : ℚ)
  oldCenter := (10492562160603551 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2179
  oldLo := (20949999999999999 / 100000000000000000 : ℚ)
  oldHi := (20999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_556]
}

noncomputable def cell_14165 : Cell := { cellDefaults with
  domain := ⟨(190850000000000009 / 200000000000000000 : ℚ), (47725000000000001 / 50000000000000000 : ℚ)⟩
  r := (20684724667541 / 50000000000000 : ℚ)
  w := (2433413341661 / 2000000000000 : ℚ)
  center := (381750000000000013 / 400000000000000000 : ℚ)
  supportValue := (20968402944184977 / 100000000000000000 : ℚ)
  supportSlope := (-6685568238198993 / 10000000000000000 : ℚ)
  oldCenter := (20968402944184977 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2179
  oldLo := (20949999999999999 / 100000000000000000 : ℚ)
  oldHi := (20999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_556]
}

noncomputable def cell_14166 : Cell := { cellDefaults with
  domain := ⟨(47725000000000001 / 50000000000000000 : ℚ), (190950000000000009 / 200000000000000000 : ℚ)⟩
  r := (20676745487543 / 50000000000000 : ℚ)
  w := (12162644899567 / 10000000000000 : ℚ)
  center := (381850000000000013 / 400000000000000000 : ℚ)
  supportValue := (1048846813981953 / 5000000000000000 : ℚ)
  supportSlope := (-3342881695606813 / 5000000000000000 : ℚ)
  oldCenter := (1048846813981953 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2180
  oldLo := (20949999999999999 / 100000000000000000 : ℚ)
  oldHi := (20999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_556]
}

noncomputable def cell_14167 : Cell := { cellDefaults with
  domain := ⟨(190950000000000009 / 200000000000000000 : ℚ), (95500000000000007 / 100000000000000000 : ℚ)⟩
  r := (20676745487543 / 50000000000000 : ℚ)
  w := (12162644899567 / 10000000000000 : ℚ)
  center := (381950000000000023 / 400000000000000000 : ℚ)
  supportValue := (4192045857449333 / 20000000000000000 : ℚ)
  supportSlope := (-1669954900062997 / 2500000000000000 : ℚ)
  oldCenter := (4192045857449333 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2180
  oldLo := (20949999999999999 / 100000000000000000 : ℚ)
  oldHi := (20999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_556]
}

noncomputable def cell_14168 : Cell := { cellDefaults with
  domain := ⟨(95500000000000007 / 100000000000000000 : ℚ), (191050000000000009 / 200000000000000000 : ℚ)⟩
  r := (413375427321 / 1000000000000 : ℚ)
  w := (1519777631023 / 1250000000000 : ℚ)
  center := (382050000000000023 / 400000000000000000 : ℚ)
  supportValue := (2621095888396767 / 12500000000000000 : ℚ)
  supportSlope := (-6680016484844177 / 10000000000000000 : ℚ)
  oldCenter := (2621095888396767 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2181
  oldLo := (20949999999999999 / 100000000000000000 : ℚ)
  oldHi := (20999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_556]
}

noncomputable def cell_14169 : Cell := { cellDefaults with
  domain := ⟨(191050000000000009 / 200000000000000000 : ℚ), (47775000000000001 / 50000000000000000 : ℚ)⟩
  r := (413375427321 / 1000000000000 : ℚ)
  w := (1519777631023 / 1250000000000 : ℚ)
  center := (382150000000000013 / 400000000000000000 : ℚ)
  supportValue := (1047603723453009 / 5000000000000000 : ℚ)
  supportSlope := (-3337277765369851 / 5000000000000000 : ℚ)
  oldCenter := (1047603723453009 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2181
  oldLo := (4182122905027933 / 20000000000000000 : ℚ)
  oldHi := (20999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_555, piece_556]
}

noncomputable def cell_14170 : Cell := { cellDefaults with
  domain := ⟨(47775000000000001 / 50000000000000000 : ℚ), (9557541899441341 / 10000000000000000 : ℚ)⟩
  r := (10330401205123 / 25000000000000 : ℚ)
  w := (12153795914411 / 10000000000000 : ℚ)
  center := (47781354748603353 / 50000000000000000 : ℚ)
  supportValue := (32750742905921 / 156250000000000 : ℚ)
  supportSlope := (-667423161588189 / 1000000000000000 : ℚ)
  oldCenter := (32750742905921 / 156250000000000 : ℚ)
  newCoefficients := coefficients_2182
  oldLo := (20949999999999999 / 100000000000000000 : ℚ)
  oldHi := (20999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_556]
}

noncomputable def cell_14171 : Cell := { cellDefaults with
  domain := ⟨(9557541899441341 / 10000000000000000 : ℚ), (95600000000000007 / 100000000000000000 : ℚ)⟩
  r := (10330401205123 / 25000000000000 : ℚ)
  w := (12153795914411 / 10000000000000 : ℚ)
  center := (191175418994413417 / 200000000000000000 : ℚ)
  supportValue := (20943796101074447 / 100000000000000000 : ℚ)
  supportSlope := (-6669407837140647 / 10000000000000000 : ℚ)
  oldCenter := (20943796101074447 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2183
  oldLo := (4182122905027933 / 20000000000000000 : ℚ)
  oldHi := (20999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_555, piece_556]
}

noncomputable def cell_14172 : Cell := { cellDefaults with
  domain := ⟨(95600000000000007 / 100000000000000000 : ℚ), (191250000000000009 / 200000000000000000 : ℚ)⟩
  r := (20652837973159 / 50000000000000 : ℚ)
  w := (6074683926167 / 5000000000000 : ℚ)
  center := (382450000000000023 / 400000000000000000 : ℚ)
  supportValue := (5238121223952643 / 25000000000000000 : ℚ)
  supportSlope := (-3334500224490333 / 5000000000000000 : ℚ)
  oldCenter := (5238121223952643 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2184
  oldLo := (4182122905027933 / 20000000000000000 : ℚ)
  oldHi := (20999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_555, piece_556]
}

noncomputable def cell_14173 : Cell := { cellDefaults with
  domain := ⟨(191250000000000009 / 200000000000000000 : ℚ), (47825000000000001 / 50000000000000000 : ℚ)⟩
  r := (20652837973159 / 50000000000000 : ℚ)
  w := (6074683926167 / 5000000000000 : ℚ)
  center := (382550000000000013 / 400000000000000000 : ℚ)
  supportValue := (20935818214514657 / 100000000000000000 : ℚ)
  supportSlope := (-3331944321471103 / 5000000000000000 : ℚ)
  oldCenter := (20935818214514657 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2184
  oldLo := (4182122905027933 / 20000000000000000 : ℚ)
  oldHi := (20949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_555]
}

noncomputable def cell_14174 : Cell := { cellDefaults with
  domain := ⟨(47825000000000001 / 50000000000000000 : ℚ), (191350000000000009 / 200000000000000000 : ℚ)⟩
  r := (1290304890721 / 3125000000000 : ℚ)
  w := (6072467586603 / 5000000000000 : ℚ)
  center := (382650000000000013 / 400000000000000000 : ℚ)
  supportValue := (20944377125733893 / 100000000000000000 : ℚ)
  supportSlope := (-6663897242071171 / 10000000000000000 : ℚ)
  oldCenter := (20944377125733893 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2185
  oldLo := (4182122905027933 / 20000000000000000 : ℚ)
  oldHi := (20999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_555, piece_556]
}

noncomputable def cell_14175 : Cell := { cellDefaults with
  domain := ⟨(191350000000000009 / 200000000000000000 : ℚ), (95700000000000007 / 100000000000000000 : ℚ)⟩
  r := (1290304890721 / 3125000000000 : ℚ)
  w := (6072467586603 / 5000000000000 : ℚ)
  center := (382750000000000023 / 400000000000000000 : ℚ)
  supportValue := (2092772425995773 / 10000000000000000 : ℚ)
  supportSlope := (-3329090953777203 / 5000000000000000 : ℚ)
  oldCenter := (2092772425995773 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2185
  oldLo := (4182122905027933 / 20000000000000000 : ℚ)
  oldHi := (20949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_555]
}

noncomputable def cell_14176 : Cell := { cellDefaults with
  domain := ⟨(95700000000000007 / 100000000000000000 : ℚ), (191450000000000009 / 200000000000000000 : ℚ)⟩
  r := (5159230821687 / 12500000000000 : ℚ)
  w := (12140501121479 / 10000000000000 : ℚ)
  center := (382850000000000023 / 400000000000000000 : ℚ)
  supportValue := (10468143594021527 / 50000000000000000 : ℚ)
  supportSlope := (-1664598649498583 / 2500000000000000 : ℚ)
  oldCenter := (10468143594021527 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2186
  oldLo := (4182122905027933 / 20000000000000000 : ℚ)
  oldHi := (20949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_555]
}

noncomputable def cell_14177 : Cell := { cellDefaults with
  domain := ⟨(191450000000000009 / 200000000000000000 : ℚ), (47875000000000001 / 50000000000000000 : ℚ)⟩
  r := (5159230821687 / 12500000000000 : ℚ)
  w := (12140501121479 / 10000000000000 : ℚ)
  center := (382950000000000013 / 400000000000000000 : ℚ)
  supportValue := (20919648572436017 / 100000000000000000 : ℚ)
  supportSlope := (-6652487008747653 / 10000000000000000 : ℚ)
  oldCenter := (20919648572436017 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2186
  oldLo := (4182122905027933 / 20000000000000000 : ℚ)
  oldHi := (20949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_555]
}

noncomputable def cell_14178 : Cell := { cellDefaults with
  domain := ⟨(47875000000000001 / 50000000000000000 : ℚ), (191550000000000009 / 200000000000000000 : ℚ)⟩
  r := (41257945812311 / 100000000000000 : ℚ)
  w := (1213606390921 / 1000000000000 : ℚ)
  center := (383050000000000013 / 400000000000000000 : ℚ)
  supportValue := (1046410939394473 / 5000000000000000 : ℚ)
  supportSlope := (-6652702146611623 / 10000000000000000 : ℚ)
  oldCenter := (1046410939394473 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2187
  oldLo := (4182122905027933 / 20000000000000000 : ℚ)
  oldHi := (20949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_555]
}

noncomputable def cell_14179 : Cell := { cellDefaults with
  domain := ⟨(191550000000000009 / 200000000000000000 : ℚ), (95800000000000007 / 100000000000000000 : ℚ)⟩
  r := (41257945812311 / 100000000000000 : ℚ)
  w := (1213606390921 / 1000000000000 : ℚ)
  center := (383150000000000023 / 400000000000000000 : ℚ)
  supportValue := (4182318878107033 / 20000000000000000 : ℚ)
  supportSlope := (-415425323891619 / 625000000000000 : ℚ)
  oldCenter := (4182318878107033 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2187
  oldLo := (20899999999999999 / 100000000000000000 : ℚ)
  oldHi := (20949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_554, piece_555]
}

noncomputable def cell_14180 : Cell := { cellDefaults with
  domain := ⟨(95800000000000007 / 100000000000000000 : ℚ), (191650000000000009 / 200000000000000000 : ℚ)⟩
  r := (41242055496813 / 100000000000000 : ℚ)
  w := (6065812372391 / 5000000000000 : ℚ)
  center := (383250000000000023 / 400000000000000000 : ℚ)
  supportValue := (10460084237862251 / 50000000000000000 : ℚ)
  supportSlope := (-3323510771521597 / 5000000000000000 : ℚ)
  oldCenter := (10460084237862251 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2188
  oldLo := (4182122905027933 / 20000000000000000 : ℚ)
  oldHi := (20949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_555]
}

noncomputable def cell_14181 : Cell := { cellDefaults with
  domain := ⟨(191650000000000009 / 200000000000000000 : ℚ), (47925000000000001 / 50000000000000000 : ℚ)⟩
  r := (41242055496813 / 100000000000000 : ℚ)
  w := (6065812372391 / 5000000000000 : ℚ)
  center := (383350000000000013 / 400000000000000000 : ℚ)
  supportValue := (2090355826620537 / 10000000000000000 : ℚ)
  supportSlope := (-6641496381859067 / 10000000000000000 : ℚ)
  oldCenter := (2090355826620537 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2188
  oldHi := (20949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_553, piece_554, piece_555]
}

noncomputable def cell_14182 : Cell := { cellDefaults with
  domain := ⟨(47925000000000001 / 50000000000000000 : ℚ), (191750000000000009 / 200000000000000000 : ℚ)⟩
  r := (20613087408519 / 50000000000000 : ℚ)
  w := (12127183908827 / 10000000000000 : ℚ)
  center := (383450000000000013 / 400000000000000000 : ℚ)
  supportValue := (2614017083915909 / 12500000000000000 : ℚ)
  supportSlope := (-830169143699239 / 1250000000000000 : ℚ)
  oldCenter := (2614017083915909 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2189
  oldLo := (20899999999999999 / 100000000000000000 : ℚ)
  oldHi := (20949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_554, piece_555]
}

noncomputable def cell_14183 : Cell := { cellDefaults with
  domain := ⟨(191750000000000009 / 200000000000000000 : ℚ), (95900000000000007 / 100000000000000000 : ℚ)⟩
  r := (20613087408519 / 50000000000000 : ℚ)
  w := (12127183908827 / 10000000000000 : ℚ)
  center := (383550000000000023 / 400000000000000000 : ℚ)
  supportValue := (4179107954075581 / 20000000000000000 : ℚ)
  supportSlope := (-6636442800839639 / 10000000000000000 : ℚ)
  oldCenter := (4179107954075581 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2189
  oldHi := (4182122905027933 / 20000000000000000 : ℚ)
  oldPieces := [piece_553, piece_554]
}

noncomputable def cell_14184 : Cell := { cellDefaults with
  domain := ⟨(95900000000000007 / 100000000000000000 : ℚ), (191850000000000009 / 200000000000000000 : ℚ)⟩
  r := (41210303696679 / 100000000000000 : ℚ)
  w := (6061370196133 / 5000000000000 : ℚ)
  center := (383650000000000023 / 400000000000000000 : ℚ)
  supportValue := (4180825009516741 / 20000000000000000 : ℚ)
  supportSlope := (-6636014871671089 / 10000000000000000 : ℚ)
  oldCenter := (4180825009516741 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2190
  oldHi := (20949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_553, piece_554, piece_555]
}

noncomputable def cell_14185 : Cell := { cellDefaults with
  domain := ⟨(191850000000000009 / 200000000000000000 : ℚ), (47975000000000001 / 50000000000000000 : ℚ)⟩
  r := (41210303696679 / 100000000000000 : ℚ)
  w := (6061370196133 / 5000000000000 : ℚ)
  center := (383750000000000013 / 400000000000000000 : ℚ)
  supportValue := (2088754076473073 / 10000000000000000 : ℚ)
  supportSlope := (-414442432534509 / 625000000000000 : ℚ)
  oldCenter := (2088754076473073 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2190
  oldPieces := [piece_553]
}

noncomputable def cell_14186 : Cell := { cellDefaults with
  domain := ⟨(47975000000000001 / 50000000000000000 : ℚ), (19195000000000001 / 20000000000000000 : ℚ)⟩
  r := (10298610349053 / 25000000000000 : ℚ)
  w := (12118291732517 / 10000000000000 : ℚ)
  center := (191925000000000007 / 200000000000000000 : ℚ)
  supportValue := (10448068820600419 / 50000000000000000 : ℚ)
  supportSlope := (-6630974985234777 / 10000000000000000 : ℚ)
  oldCenter := (10448068820600419 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2191
  oldHi := (4182122905027933 / 20000000000000000 : ℚ)
  oldPieces := [piece_553, piece_554]
}

noncomputable def cell_14187 : Cell := { cellDefaults with
  domain := ⟨(19195000000000001 / 20000000000000000 : ℚ), (12000000000000001 / 12500000000000000 : ℚ)⟩
  r := (10298610349053 / 25000000000000 : ℚ)
  w := (12118291732517 / 10000000000000 : ℚ)
  center := (191975000000000013 / 200000000000000000 : ℚ)
  supportValue := (5219891672936431 / 25000000000000000 : ℚ)
  supportSlope := (-331271925178527 / 500000000000000 : ℚ)
  oldCenter := (5219891672936431 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2191
  oldPieces := [piece_553]
}

noncomputable def cell_14188 : Cell := { cellDefaults with
  domain := ⟨(12000000000000001 / 12500000000000000 : ℚ), (19205000000000001 / 20000000000000000 : ℚ)⟩
  r := (10294647031677 / 25000000000000 : ℚ)
  w := (12113841129911 / 10000000000000 : ℚ)
  center := (192025000000000013 / 200000000000000000 : ℚ)
  supportValue := (2088816896164617 / 10000000000000000 : ℚ)
  supportSlope := (-3312835879298157 / 5000000000000000 : ℚ)
  oldCenter := (2088816896164617 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2192
  oldPieces := [piece_553]
}

noncomputable def cell_14189 : Cell := { cellDefaults with
  domain := ⟨(19205000000000001 / 20000000000000000 : ℚ), (48025000000000001 / 50000000000000000 : ℚ)⟩
  r := (10294647031677 / 25000000000000 : ℚ)
  w := (12113841129911 / 10000000000000 : ℚ)
  center := (192075000000000007 / 200000000000000000 : ℚ)
  supportValue := (10435806047799513 / 50000000000000000 : ℚ)
  supportSlope := (-6619810247220043 / 10000000000000000 : ℚ)
  oldCenter := (10435806047799513 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2192
  oldPieces := [piece_553]
}

noncomputable def cell_14190 : Cell := { cellDefaults with
  domain := ⟨(48025000000000001 / 50000000000000000 : ℚ), (19215000000000001 / 20000000000000000 : ℚ)⟩
  r := (20581372542713 / 50000000000000 : ℚ)
  w := (6054694468173 / 5000000000000 : ℚ)
  center := (192125000000000007 / 200000000000000000 : ℚ)
  supportValue := (10440108909301393 / 50000000000000000 : ℚ)
  supportSlope := (-6620044777820061 / 10000000000000000 : ℚ)
  oldCenter := (10440108909301393 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2193
  oldPieces := [piece_553]
}

noncomputable def cell_14191 : Cell := { cellDefaults with
  domain := ⟨(19215000000000001 / 20000000000000000 : ℚ), (12012500000000001 / 12500000000000000 : ℚ)⟩
  r := (20581372542713 / 50000000000000 : ℚ)
  w := (6054694468173 / 5000000000000 : ℚ)
  center := (192175000000000013 / 200000000000000000 : ℚ)
  supportValue := (4172735001458543 / 20000000000000000 : ℚ)
  supportSlope := (-6614193442292843 / 10000000000000000 : ℚ)
  oldCenter := (4172735001458543 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2193
  oldPieces := [piece_553]
}

noncomputable def cell_14192 : Cell := { cellDefaults with
  domain := ⟨(12012500000000001 / 12500000000000000 : ℚ), (12014280726256983 / 12500000000000000 : ℚ)⟩
  center := (3003347590782123 / 3125000000000000 : ℚ)
  supportValue := (20875826330244077 / 100000000000000000 : ℚ)
  supportSlope := (-6615686631849073 / 10000000000000000 : ℚ)
  oldCenter := (20875826330244077 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2194
  oldPieces := [piece_553]
}

noncomputable def cell_14193 : Cell := { cellDefaults with
  domain := ⟨(12014280726256983 / 12500000000000000 : ℚ), (2403212290502793 / 2500000000000000 : ℚ)⟩
  center := (6007585544692737 / 6250000000000000 : ℚ)
  supportValue := (1043320205949649 / 5000000000000000 : ℚ)
  supportSlope := (-6612355779461853 / 10000000000000000 : ℚ)
  oldCenter := (1043320205949649 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2194
  oldPieces := [piece_553]
}

noncomputable def cell_14194 : Cell := { cellDefaults with
  domain := ⟨(2403212290502793 / 2500000000000000 : ℚ), (48075000000000001 / 50000000000000000 : ℚ)⟩
  center := (96139245810055861 / 100000000000000000 : ℚ)
  supportValue := (20854601475559517 / 100000000000000000 : ℚ)
  supportSlope := (-6608405125407301 / 10000000000000000 : ℚ)
  oldCenter := (20854601475559517 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2195
  oldLo := (20799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_552, piece_553]
}

noncomputable def cell_14195 : Cell := { cellDefaults with
  domain := ⟨(48075000000000001 / 50000000000000000 : ℚ), (19235000000000001 / 20000000000000000 : ℚ)⟩
  r := (8226217641883 / 20000000000000 : ℚ)
  w := (2420095575779 / 2000000000000 : ℚ)
  center := (192325000000000007 / 200000000000000000 : ℚ)
  supportValue := (1043218635411841 / 5000000000000000 : ℚ)
  supportSlope := (-826103350740249 / 1250000000000000 : ℚ)
  oldCenter := (1043218635411841 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2196
  oldPieces := [piece_553]
}

noncomputable def cell_14196 : Cell := { cellDefaults with
  domain := ⟨(19235000000000001 / 20000000000000000 : ℚ), (12025000000000001 / 12500000000000000 : ℚ)⟩
  r := (8226217641883 / 20000000000000 : ℚ)
  w := (2420095575779 / 2000000000000 : ℚ)
  center := (192375000000000013 / 200000000000000000 : ℚ)
  supportValue := (833914300106969 / 4000000000000000 : ℚ)
  supportSlope := (-3301895306987039 / 5000000000000000 : ℚ)
  oldCenter := (833914300106969 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_2196
  oldLo := (20799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_552, piece_553]
}

noncomputable def cell_14197 : Cell := { cellDefaults with
  domain := ⟨(12025000000000001 / 12500000000000000 : ℚ), (19245000000000001 / 20000000000000000 : ℚ)⟩
  r := (41115273365559 / 100000000000000 : ℚ)
  w := (12096017736829 / 10000000000000 : ℚ)
  center := (192425000000000013 / 200000000000000000 : ℚ)
  supportValue := (10428240929594587 / 50000000000000000 : ℚ)
  supportSlope := (-6603373613885647 / 10000000000000000 : ℚ)
  oldCenter := (10428240929594587 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2197
  oldLo := (20799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_552, piece_553]
}

noncomputable def cell_14198 : Cell := { cellDefaults with
  domain := ⟨(19245000000000001 / 20000000000000000 : ℚ), (48125000000000001 / 50000000000000000 : ℚ)⟩
  r := (41115273365559 / 100000000000000 : ℚ)
  w := (12096017736829 / 10000000000000 : ℚ)
  center := (192475000000000007 / 200000000000000000 : ℚ)
  supportValue := (2083997911476333 / 10000000000000000 : ℚ)
  supportSlope := (-824833773019439 / 1250000000000000 : ℚ)
  oldCenter := (2083997911476333 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2197
  oldLo := (20799999999999999 / 100000000000000000 : ℚ)
  oldHi := (20849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_552]
}

noncomputable def cell_14199 : Cell := { cellDefaults with
  domain := ⟨(48125000000000001 / 50000000000000000 : ℚ), (19255000000000001 / 20000000000000000 : ℚ)⟩
  r := (20549733529077 / 50000000000000 : ℚ)
  w := (2418310512209 / 2000000000000 : ℚ)
  center := (192525000000000007 / 200000000000000000 : ℚ)
  supportValue := (20848615573641097 / 100000000000000000 : ℚ)
  supportSlope := (-659839641278391 / 1000000000000000 : ℚ)
  oldCenter := (20848615573641097 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2198
  oldLo := (20799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_552, piece_553]
}

theorem check_14150 : cell_14150.check = true := by
  decide +kernel

theorem check_14151 : cell_14151.check = true := by
  decide +kernel

theorem check_14152 : cell_14152.check = true := by
  decide +kernel

theorem check_14153 : cell_14153.check = true := by
  decide +kernel

theorem check_14154 : cell_14154.check = true := by
  decide +kernel

theorem check_14155 : cell_14155.check = true := by
  decide +kernel

theorem check_14156 : cell_14156.check = true := by
  decide +kernel

theorem check_14157 : cell_14157.check = true := by
  decide +kernel

theorem check_14158 : cell_14158.check = true := by
  decide +kernel

theorem check_14159 : cell_14159.check = true := by
  decide +kernel

theorem check_14160 : cell_14160.check = true := by
  decide +kernel

theorem check_14161 : cell_14161.check = true := by
  decide +kernel

theorem check_14162 : cell_14162.check = true := by
  decide +kernel

theorem check_14163 : cell_14163.check = true := by
  decide +kernel

theorem check_14164 : cell_14164.check = true := by
  decide +kernel

theorem check_14165 : cell_14165.check = true := by
  decide +kernel

theorem check_14166 : cell_14166.check = true := by
  decide +kernel

theorem check_14167 : cell_14167.check = true := by
  decide +kernel

theorem check_14168 : cell_14168.check = true := by
  decide +kernel

theorem check_14169 : cell_14169.check = true := by
  decide +kernel

theorem check_14170 : cell_14170.check = true := by
  decide +kernel

theorem check_14171 : cell_14171.check = true := by
  decide +kernel

theorem check_14172 : cell_14172.check = true := by
  decide +kernel

theorem check_14173 : cell_14173.check = true := by
  decide +kernel

theorem check_14174 : cell_14174.check = true := by
  decide +kernel

theorem check_14175 : cell_14175.check = true := by
  decide +kernel

theorem check_14176 : cell_14176.check = true := by
  decide +kernel

theorem check_14177 : cell_14177.check = true := by
  decide +kernel

theorem check_14178 : cell_14178.check = true := by
  decide +kernel

theorem check_14179 : cell_14179.check = true := by
  decide +kernel

theorem check_14180 : cell_14180.check = true := by
  decide +kernel

theorem check_14181 : cell_14181.check = true := by
  decide +kernel

theorem check_14182 : cell_14182.check = true := by
  decide +kernel

theorem check_14183 : cell_14183.check = true := by
  decide +kernel

theorem check_14184 : cell_14184.check = true := by
  decide +kernel

theorem check_14185 : cell_14185.check = true := by
  decide +kernel

theorem check_14186 : cell_14186.check = true := by
  decide +kernel

theorem check_14187 : cell_14187.check = true := by
  decide +kernel

theorem check_14188 : cell_14188.check = true := by
  decide +kernel

theorem check_14189 : cell_14189.check = true := by
  decide +kernel

theorem check_14190 : cell_14190.check = true := by
  decide +kernel

theorem check_14191 : cell_14191.check = true := by
  decide +kernel

theorem check_14192 : cell_14192.check = true := by
  decide +kernel

theorem check_14193 : cell_14193.check = true := by
  decide +kernel

theorem check_14194 : cell_14194.check = true := by
  decide +kernel

theorem check_14195 : cell_14195.check = true := by
  decide +kernel

theorem check_14196 : cell_14196.check = true := by
  decide +kernel

theorem check_14197 : cell_14197.check = true := by
  decide +kernel

theorem check_14198 : cell_14198.check = true := by
  decide +kernel

theorem check_14199 : cell_14199.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_14150, cell_14151, cell_14152, cell_14153, cell_14154, cell_14155, cell_14156, cell_14157, cell_14158, cell_14159, cell_14160, cell_14161, cell_14162, cell_14163, cell_14164, cell_14165, cell_14166, cell_14167, cell_14168, cell_14169, cell_14170, cell_14171, cell_14172, cell_14173, cell_14174, cell_14175, cell_14176, cell_14177, cell_14178, cell_14179, cell_14180, cell_14181, cell_14182, cell_14183, cell_14184, cell_14185, cell_14186, cell_14187, cell_14188, cell_14189, cell_14190, cell_14191, cell_14192, cell_14193, cell_14194, cell_14195, cell_14196, cell_14197, cell_14198, cell_14199]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_14150, check_14151, check_14152, check_14153, check_14154, check_14155, check_14156, check_14157, check_14158, check_14159, check_14160, check_14161, check_14162, check_14163, check_14164, check_14165, check_14166, check_14167, check_14168, check_14169, check_14170, check_14171, check_14172, check_14173, check_14174, check_14175, check_14176, check_14177, check_14178, check_14179, check_14180, check_14181, check_14182, check_14183, check_14184, check_14185, check_14186, check_14187, check_14188, check_14189, check_14190, check_14191, check_14192, check_14193, check_14194, check_14195, check_14196, check_14197, check_14198, check_14199, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0283

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0283
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0283
open AnalyticBounds.ExpressionCertificate

theorem linked_14150 : Linked cell_14150 pieces := by
  link_source cell_14150 with piece_2172 using piece_2172_mem, ⟨piece_557_mem, piece_558_mem⟩

theorem linked_14151 : Linked cell_14151 pieces := by
  link_source cell_14151 with piece_2172 using piece_2172_mem, piece_557_mem

theorem linked_14152 : Linked cell_14152 pieces := by
  link_source cell_14152 with piece_2173 using piece_2173_mem, piece_557_mem

theorem linked_14153 : Linked cell_14153 pieces := by
  link_source cell_14153 with piece_2173 using piece_2173_mem, piece_557_mem

theorem linked_14154 : Linked cell_14154 pieces := by
  link_source cell_14154 with piece_2174 using piece_2174_mem, piece_557_mem

theorem linked_14155 : Linked cell_14155 pieces := by
  link_source cell_14155 with piece_2174 using piece_2174_mem, piece_557_mem

theorem linked_14156 : Linked cell_14156 pieces := by
  link_source cell_14156 with piece_2175 using piece_2175_mem, piece_557_mem

theorem linked_14157 : Linked cell_14157 pieces := by
  link_source cell_14157 with piece_2175 using piece_2175_mem, ⟨piece_556_mem, piece_557_mem⟩

theorem linked_14158 : Linked cell_14158 pieces := by
  link_source cell_14158 with piece_2176 using piece_2176_mem, piece_557_mem

theorem linked_14159 : Linked cell_14159 pieces := by
  link_source cell_14159 with piece_2176 using piece_2176_mem, ⟨piece_556_mem, piece_557_mem⟩

theorem linked_14160 : Linked cell_14160 pieces := by
  link_source cell_14160 with piece_2177 using piece_2177_mem, ⟨piece_556_mem, piece_557_mem⟩

theorem linked_14161 : Linked cell_14161 pieces := by
  link_source cell_14161 with piece_2177 using piece_2177_mem, piece_556_mem

theorem linked_14162 : Linked cell_14162 pieces := by
  link_source cell_14162 with piece_2178 using piece_2178_mem, ⟨piece_556_mem, piece_557_mem⟩

theorem linked_14163 : Linked cell_14163 pieces := by
  link_source cell_14163 with piece_2178 using piece_2178_mem, piece_556_mem

theorem linked_14164 : Linked cell_14164 pieces := by
  link_source cell_14164 with piece_2179 using piece_2179_mem, piece_556_mem

theorem linked_14165 : Linked cell_14165 pieces := by
  link_source cell_14165 with piece_2179 using piece_2179_mem, piece_556_mem

theorem linked_14166 : Linked cell_14166 pieces := by
  link_source cell_14166 with piece_2180 using piece_2180_mem, piece_556_mem

theorem linked_14167 : Linked cell_14167 pieces := by
  link_source cell_14167 with piece_2180 using piece_2180_mem, piece_556_mem

theorem linked_14168 : Linked cell_14168 pieces := by
  link_source cell_14168 with piece_2181 using piece_2181_mem, piece_556_mem

theorem linked_14169 : Linked cell_14169 pieces := by
  link_source cell_14169 with piece_2181 using piece_2181_mem, ⟨piece_555_mem, piece_556_mem⟩

theorem linked_14170 : Linked cell_14170 pieces := by
  link_source cell_14170 with piece_2182 using piece_2182_mem, piece_556_mem

theorem linked_14171 : Linked cell_14171 pieces := by
  link_source cell_14171 with piece_2183 using piece_2183_mem, ⟨piece_555_mem, piece_556_mem⟩

theorem linked_14172 : Linked cell_14172 pieces := by
  link_source cell_14172 with piece_2184 using piece_2184_mem, ⟨piece_555_mem, piece_556_mem⟩

theorem linked_14173 : Linked cell_14173 pieces := by
  link_source cell_14173 with piece_2184 using piece_2184_mem, piece_555_mem

theorem linked_14174 : Linked cell_14174 pieces := by
  link_source cell_14174 with piece_2185 using piece_2185_mem, ⟨piece_555_mem, piece_556_mem⟩

theorem linked_14175 : Linked cell_14175 pieces := by
  link_source cell_14175 with piece_2185 using piece_2185_mem, piece_555_mem

theorem linked_14176 : Linked cell_14176 pieces := by
  link_source cell_14176 with piece_2186 using piece_2186_mem, piece_555_mem

theorem linked_14177 : Linked cell_14177 pieces := by
  link_source cell_14177 with piece_2186 using piece_2186_mem, piece_555_mem

theorem linked_14178 : Linked cell_14178 pieces := by
  link_source cell_14178 with piece_2187 using piece_2187_mem, piece_555_mem

theorem linked_14179 : Linked cell_14179 pieces := by
  link_source cell_14179 with piece_2187 using piece_2187_mem, ⟨piece_554_mem, piece_555_mem⟩

theorem linked_14180 : Linked cell_14180 pieces := by
  link_source cell_14180 with piece_2188 using piece_2188_mem, piece_555_mem

theorem linked_14181 : Linked cell_14181 pieces := by
  link_source cell_14181 with piece_2188 using piece_2188_mem, ⟨piece_553_mem, ⟨piece_554_mem, piece_555_mem⟩⟩

theorem linked_14182 : Linked cell_14182 pieces := by
  link_source cell_14182 with piece_2189 using piece_2189_mem, ⟨piece_554_mem, piece_555_mem⟩

theorem linked_14183 : Linked cell_14183 pieces := by
  link_source cell_14183 with piece_2189 using piece_2189_mem, ⟨piece_553_mem, piece_554_mem⟩

theorem linked_14184 : Linked cell_14184 pieces := by
  link_source cell_14184 with piece_2190 using piece_2190_mem, ⟨piece_553_mem, ⟨piece_554_mem, piece_555_mem⟩⟩

theorem linked_14185 : Linked cell_14185 pieces := by
  link_source cell_14185 with piece_2190 using piece_2190_mem, piece_553_mem

theorem linked_14186 : Linked cell_14186 pieces := by
  link_source cell_14186 with piece_2191 using piece_2191_mem, ⟨piece_553_mem, piece_554_mem⟩

theorem linked_14187 : Linked cell_14187 pieces := by
  link_source cell_14187 with piece_2191 using piece_2191_mem, piece_553_mem

theorem linked_14188 : Linked cell_14188 pieces := by
  link_source cell_14188 with piece_2192 using piece_2192_mem, piece_553_mem

theorem linked_14189 : Linked cell_14189 pieces := by
  link_source cell_14189 with piece_2192 using piece_2192_mem, piece_553_mem

theorem linked_14190 : Linked cell_14190 pieces := by
  link_source cell_14190 with piece_2193 using piece_2193_mem, piece_553_mem

theorem linked_14191 : Linked cell_14191 pieces := by
  link_source cell_14191 with piece_2193 using piece_2193_mem, piece_553_mem

theorem linked_14192 : Linked cell_14192 pieces := by
  link_source cell_14192 with piece_2194 using piece_2194_mem, piece_553_mem

theorem linked_14193 : Linked cell_14193 pieces := by
  link_source cell_14193 with piece_2194 using piece_2194_mem, piece_553_mem

theorem linked_14194 : Linked cell_14194 pieces := by
  link_source cell_14194 with piece_2195 using piece_2195_mem, ⟨piece_552_mem, piece_553_mem⟩

theorem linked_14195 : Linked cell_14195 pieces := by
  link_source cell_14195 with piece_2196 using piece_2196_mem, piece_553_mem

theorem linked_14196 : Linked cell_14196 pieces := by
  link_source cell_14196 with piece_2196 using piece_2196_mem, ⟨piece_552_mem, piece_553_mem⟩

theorem linked_14197 : Linked cell_14197 pieces := by
  link_source cell_14197 with piece_2197 using piece_2197_mem, ⟨piece_552_mem, piece_553_mem⟩

theorem linked_14198 : Linked cell_14198 pieces := by
  link_source cell_14198 with piece_2197 using piece_2197_mem, piece_552_mem

theorem linked_14199 : Linked cell_14199 pieces := by
  link_source cell_14199 with piece_2198 using piece_2198_mem, ⟨piece_552_mem, piece_553_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0283.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0283.cells,List.forall_mem_cons]
  exact ⟨linked_14150, linked_14151, linked_14152, linked_14153, linked_14154, linked_14155, linked_14156, linked_14157, linked_14158, linked_14159, linked_14160, linked_14161, linked_14162, linked_14163, linked_14164, linked_14165, linked_14166, linked_14167, linked_14168, linked_14169, linked_14170, linked_14171, linked_14172, linked_14173, linked_14174, linked_14175, linked_14176, linked_14177, linked_14178, linked_14179, linked_14180, linked_14181, linked_14182, linked_14183, linked_14184, linked_14185, linked_14186, linked_14187, linked_14188, linked_14189, linked_14190, linked_14191, linked_14192, linked_14193, linked_14194, linked_14195, linked_14196, linked_14197, linked_14198, linked_14199, by simp⟩

theorem covered : covers (95050000000000001 / 100000000000000000 : ℚ) (19255000000000001 / 20000000000000000 : ℚ)
    (SourceCertificates.Chunk0283.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0283
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0284
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(19255000000000001 / 20000000000000000 : ℚ), (12037500000000001 / 12500000000000000 : ℚ)⟩
  branch := .left
  r := (40973360455143 / 100000000000000 : ℚ)
  w := (3013937217627 / 2500000000000 : ℚ)
  center := (192575000000000013 / 200000000000000000 : ℚ)
  supportValue := (20832125538307913 / 100000000000000000 : ℚ)
  supportSlope := (-6593095650608047 / 10000000000000000 : ℚ)
  oldCenter := (20832125538307913 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2199
  oldLo := (20699999999999999 / 100000000000000000 : ℚ)
  oldHi := (20749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_550]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_14200 : Cell := { cellDefaults with
  r := (20549733529077 / 50000000000000 : ℚ)
  w := (2418310512209 / 2000000000000 : ℚ)
  newCoefficients := coefficients_2198
  oldLo := (20799999999999999 / 100000000000000000 : ℚ)
  oldHi := (20849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_552]
}

noncomputable def cell_14201 : Cell := { cellDefaults with
  domain := ⟨(12037500000000001 / 12500000000000000 : ℚ), (19265000000000001 / 20000000000000000 : ℚ)⟩
  r := (10270917792487 / 25000000000000 : ℚ)
  w := (12087087034249 / 10000000000000 : ℚ)
  center := (192625000000000013 / 200000000000000000 : ℚ)
  supportValue := (10420381578445659 / 50000000000000000 : ℚ)
  supportSlope := (-3296673986950389 / 5000000000000000 : ℚ)
  oldCenter := (10420381578445659 / 50000000000000000 : ℚ)
  oldLo := (20799999999999999 / 100000000000000000 : ℚ)
  oldHi := (20849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_552]
}

noncomputable def cell_14202 : Cell := { cellDefaults with
  domain := ⟨(19265000000000001 / 20000000000000000 : ℚ), (48175000000000001 / 50000000000000000 : ℚ)⟩
  r := (10270917792487 / 25000000000000 : ℚ)
  w := (12087087034249 / 10000000000000 : ℚ)
  center := (192675000000000007 / 200000000000000000 : ℚ)
  supportValue := (1041214352176771 / 5000000000000000 : ℚ)
  supportSlope := (-1646882981318407 / 2500000000000000 : ℚ)
  oldCenter := (1041214352176771 / 5000000000000000 : ℚ)
  oldLo := (20799999999999999 / 100000000000000000 : ℚ)
  oldHi := (20849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_552]
}

noncomputable def cell_14203 : Cell := { cellDefaults with
  domain := ⟨(48175000000000001 / 50000000000000000 : ℚ), (19275000000000001 / 20000000000000000 : ℚ)⟩
  r := (5133485606201 / 12500000000000 : ℚ)
  w := (3866438049 / 3200000000 : ℚ)
  center := (192725000000000007 / 200000000000000000 : ℚ)
  supportValue := (5208232601602577 / 25000000000000000 : ℚ)
  supportSlope := (-823473275769383 / 1250000000000000 : ℚ)
  oldCenter := (5208232601602577 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2200
  oldLo := (20799999999999999 / 100000000000000000 : ℚ)
  oldHi := (20849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_552]
}

noncomputable def cell_14204 : Cell := { cellDefaults with
  domain := ⟨(19275000000000001 / 20000000000000000 : ℚ), (12050000000000001 / 12500000000000000 : ℚ)⟩
  r := (5133485606201 / 12500000000000 : ℚ)
  w := (3866438049 / 3200000000 : ℚ)
  center := (192775000000000013 / 200000000000000000 : ℚ)
  supportValue := (1040823409242869 / 5000000000000000 : ℚ)
  supportSlope := (-822747531815561 / 1250000000000000 : ℚ)
  oldCenter := (1040823409242869 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2200
  oldLo := (20799999999999999 / 100000000000000000 : ℚ)
  oldHi := (20849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_552]
}

noncomputable def cell_14205 : Cell := { cellDefaults with
  domain := ⟨(12050000000000001 / 12500000000000000 : ℚ), (19285000000000001 / 20000000000000000 : ℚ)⟩
  r := (4105210759223 / 10000000000000 : ℚ)
  w := (12078147656581 / 10000000000000 : ℚ)
  center := (192825000000000013 / 200000000000000000 : ℚ)
  supportValue := (20825118674274537 / 100000000000000000 : ℚ)
  supportSlope := (-6582236858843861 / 10000000000000000 : ℚ)
  oldCenter := (20825118674274537 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2201
  oldLo := (20799999999999999 / 100000000000000000 : ℚ)
  oldHi := (20849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_552]
}

noncomputable def cell_14206 : Cell := { cellDefaults with
  domain := ⟨(19285000000000001 / 20000000000000000 : ℚ), (48225000000000001 / 50000000000000000 : ℚ)⟩
  r := (4105210759223 / 10000000000000 : ℚ)
  w := (12078147656581 / 10000000000000 : ℚ)
  center := (192875000000000007 / 200000000000000000 : ℚ)
  supportValue := (5202167578391801 / 25000000000000000 : ℚ)
  supportSlope := (-328822046463601 / 500000000000000 : ℚ)
  oldCenter := (5202167578391801 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2201
  oldLo := (20799999999999999 / 100000000000000000 : ℚ)
  oldHi := (20849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_552]
}

noncomputable def cell_14207 : Cell := { cellDefaults with
  domain := ⟨(48225000000000001 / 50000000000000000 : ℚ), (19295000000000001 / 20000000000000000 : ℚ)⟩
  r := (41036339582879 / 100000000000000 : ℚ)
  w := (6036836709247 / 5000000000000 : ℚ)
  center := (192925000000000007 / 200000000000000000 : ℚ)
  supportValue := (20817327505780597 / 100000000000000000 : ℚ)
  supportSlope := (-6576699754458393 / 10000000000000000 : ℚ)
  oldCenter := (20817327505780597 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2202
  oldLo := (20799999999999999 / 100000000000000000 : ℚ)
  oldHi := (20849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_552]
}

noncomputable def cell_14208 : Cell := { cellDefaults with
  domain := ⟨(19295000000000001 / 20000000000000000 : ℚ), (12062500000000001 / 12500000000000000 : ℚ)⟩
  r := (41036339582879 / 100000000000000 : ℚ)
  w := (6036836709247 / 5000000000000 : ℚ)
  center := (192975000000000013 / 200000000000000000 : ℚ)
  supportValue := (20800892975352453 / 100000000000000000 : ℚ)
  supportSlope := (-1314295828920129 / 2000000000000000 : ℚ)
  oldCenter := (20800892975352453 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2202
  oldLo := (20749999999999999 / 100000000000000000 : ℚ)
  oldHi := (20849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_551, piece_552]
}

noncomputable def cell_14209 : Cell := { cellDefaults with
  domain := ⟨(12062500000000001 / 12500000000000000 : ℚ), (19305000000000001 / 20000000000000000 : ℚ)⟩
  r := (10255145165153 / 25000000000000 : ℚ)
  w := (6034598159919 / 5000000000000 : ℚ)
  center := (193025000000000013 / 200000000000000000 : ℚ)
  supportValue := (41619113655847 / 200000000000000 : ℚ)
  supportSlope := (-6571174828891813 / 10000000000000000 : ℚ)
  oldCenter := (41619113655847 / 200000000000000 : ℚ)
  newCoefficients := coefficients_2203
  oldLo := (20799999999999999 / 100000000000000000 : ℚ)
  oldHi := (20849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_552]
}

noncomputable def cell_14210 : Cell := { cellDefaults with
  domain := ⟨(19305000000000001 / 20000000000000000 : ℚ), (48275000000000001 / 50000000000000000 : ℚ)⟩
  r := (10255145165153 / 25000000000000 : ℚ)
  w := (6034598159919 / 5000000000000 : ℚ)
  center := (193075000000000007 / 200000000000000000 : ℚ)
  supportValue := (20793134771443159 / 100000000000000000 : ℚ)
  supportSlope := (-1313311614223591 / 2000000000000000 : ℚ)
  oldCenter := (20793134771443159 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2203
  oldLo := (20749999999999999 / 100000000000000000 : ℚ)
  oldHi := (20849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_551, piece_552]
}

noncomputable def cell_14211 : Cell := { cellDefaults with
  domain := ⟨(48275000000000001 / 50000000000000000 : ℚ), (19315000000000001 / 20000000000000000 : ℚ)⟩
  r := (41004831479933 / 100000000000000 : ℚ)
  w := (2412943442663 / 2000000000000 : ℚ)
  center := (193125000000000007 / 200000000000000000 : ℚ)
  supportValue := (20801804480579433 / 100000000000000000 : ℚ)
  supportSlope := (-6566156252282619 / 10000000000000000 : ℚ)
  oldCenter := (20801804480579433 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2204
  oldLo := (20749999999999999 / 100000000000000000 : ℚ)
  oldHi := (20849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_551, piece_552]
}

noncomputable def cell_14212 : Cell := { cellDefaults with
  domain := ⟨(19315000000000001 / 20000000000000000 : ℚ), (12075000000000001 / 12500000000000000 : ℚ)⟩
  r := (41004831479933 / 100000000000000 : ℚ)
  w := (2412943442663 / 2000000000000 : ℚ)
  center := (193175000000000013 / 200000000000000000 : ℚ)
  supportValue := (2078539471204643 / 10000000000000000 : ℚ)
  supportSlope := (-410071829341447 / 625000000000000 : ℚ)
  oldCenter := (2078539471204643 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2204
  oldLo := (20749999999999999 / 100000000000000000 : ℚ)
  oldHi := (20799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_551]
}

noncomputable def cell_14213 : Cell := { cellDefaults with
  domain := ⟨(12075000000000001 / 12500000000000000 : ℚ), (193250000000000011 / 200000000000000000 : ℚ)⟩
  r := (20494545724257 / 50000000000000 : ℚ)
  w := (6030117291991 / 5000000000000 : ℚ)
  center := (386450000000000027 / 400000000000000000 : ℚ)
  supportValue := (10397036192743417 / 50000000000000000 : ℚ)
  supportSlope := (-6561247596602139 / 10000000000000000 : ℚ)
  oldCenter := (10397036192743417 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2205
  oldLo := (20749999999999999 / 100000000000000000 : ℚ)
  oldHi := (20849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_551, piece_552]
}

noncomputable def cell_14214 : Cell := { cellDefaults with
  domain := ⟨(193250000000000011 / 200000000000000000 : ℚ), (96650000000000003 / 100000000000000000 : ℚ)⟩
  r := (20494545724257 / 50000000000000 : ℚ)
  w := (6030117291991 / 5000000000000 : ℚ)
  center := (386550000000000017 / 400000000000000000 : ℚ)
  supportValue := (10388838015747269 / 50000000000000000 : ℚ)
  supportSlope := (-1638912656232891 / 2500000000000000 : ℚ)
  oldCenter := (10388838015747269 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2205
  oldLo := (20749999999999999 / 100000000000000000 : ℚ)
  oldHi := (20799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_551]
}

noncomputable def cell_14215 : Cell := { cellDefaults with
  domain := ⟨(96650000000000003 / 100000000000000000 : ℚ), (193331564245810053 / 200000000000000000 : ℚ)⟩
  center := (386631564245810059 / 400000000000000000 : ℚ)
  supportValue := (10394684005963413 / 50000000000000000 : ℚ)
  supportSlope := (-655698838882323 / 1000000000000000 : ℚ)
  oldCenter := (10394684005963413 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2206
  oldLo := (20749999999999999 / 100000000000000000 : ℚ)
  oldHi := (20799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_551]
}

noncomputable def cell_14216 : Cell := { cellDefaults with
  domain := ⟨(193331564245810053 / 200000000000000000 : ℚ), (1933631284916201 / 2000000000000000 : ℚ)⟩
  center := (386694692737430153 / 400000000000000000 : ℚ)
  supportValue := (1298688910101879 / 6250000000000000 : ℚ)
  supportSlope := (-6553349176866037 / 10000000000000000 : ℚ)
  oldCenter := (1298688910101879 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_2206
  oldLo := (20749999999999999 / 100000000000000000 : ℚ)
  oldHi := (20799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_551]
}

noncomputable def cell_14217 : Cell := { cellDefaults with
  domain := ⟨(1933631284916201 / 2000000000000000 : ℚ), (12087500000000001 / 12500000000000000 : ℚ)⟩
  center := (96690782122905029 / 100000000000000000 : ℚ)
  supportValue := (2595976730683101 / 12500000000000000 : ℚ)
  supportSlope := (-6549408443169377 / 10000000000000000 : ℚ)
  oldCenter := (2595976730683101 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2207
  oldLo := (20749999999999999 / 100000000000000000 : ℚ)
  oldHi := (20799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_551]
}

noncomputable def cell_14218 : Cell := { cellDefaults with
  domain := ⟨(12087500000000001 / 12500000000000000 : ℚ), (193450000000000011 / 200000000000000000 : ℚ)⟩
  r := (10239409509701 / 25000000000000 : ℚ)
  w := (188300943349 / 156250000000 : ℚ)
  center := (386850000000000027 / 400000000000000000 : ℚ)
  supportValue := (20778669855150453 / 100000000000000000 : ℚ)
  supportSlope := (-6550441348279301 / 10000000000000000 : ℚ)
  oldCenter := (20778669855150453 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2208
  oldLo := (20749999999999999 / 100000000000000000 : ℚ)
  oldHi := (20799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_551]
}

noncomputable def cell_14219 : Cell := { cellDefaults with
  domain := ⟨(193450000000000011 / 200000000000000000 : ℚ), (96750000000000003 / 100000000000000000 : ℚ)⟩
  r := (10239409509701 / 25000000000000 : ℚ)
  w := (188300943349 / 156250000000 : ℚ)
  center := (386950000000000017 / 400000000000000000 : ℚ)
  supportValue := (10381150463790949 / 50000000000000000 : ℚ)
  supportSlope := (-654468997449763 / 1000000000000000 : ℚ)
  oldCenter := (10381150463790949 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2208
  oldLo := (20749999999999999 / 100000000000000000 : ℚ)
  oldHi := (20799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_551]
}

noncomputable def cell_14220 : Cell := { cellDefaults with
  domain := ⟨(96750000000000003 / 100000000000000000 : ℚ), (193550000000000011 / 200000000000000000 : ℚ)⟩
  r := (40941925727297 / 100000000000000 : ℚ)
  w := (3011692334033 / 2500000000000 : ℚ)
  center := (387050000000000017 / 400000000000000000 : ℚ)
  supportValue := (4154199518515711 / 20000000000000000 : ℚ)
  supportSlope := (-261798751328231 / 400000000000000 : ℚ)
  oldCenter := (4154199518515711 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2209
  oldLo := (20749999999999999 / 100000000000000000 : ℚ)
  oldHi := (20799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_551]
}

noncomputable def cell_14221 : Cell := { cellDefaults with
  domain := ⟨(193550000000000011 / 200000000000000000 : ℚ), (12100000000000001 / 12500000000000000 : ℚ)⟩
  r := (40941925727297 / 100000000000000 : ℚ)
  w := (3011692334033 / 2500000000000 : ℚ)
  center := (387150000000000027 / 400000000000000000 : ℚ)
  supportValue := (20754642334081427 / 100000000000000000 : ℚ)
  supportSlope := (-3269751642991043 / 5000000000000000 : ℚ)
  oldCenter := (20754642334081427 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2209
  oldHi := (20799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_550, piece_551]
}

noncomputable def cell_14222 : Cell := { cellDefaults with
  domain := ⟨(12100000000000001 / 12500000000000000 : ℚ), (193650000000000011 / 200000000000000000 : ℚ)⟩
  r := (10231555788269 / 25000000000000 : ℚ)
  w := (3010569203069 / 2500000000000 : ℚ)
  center := (387250000000000027 / 400000000000000000 : ℚ)
  supportValue := (519083565478201 / 2500000000000000 : ℚ)
  supportSlope := (-3269753700132821 / 5000000000000000 : ℚ)
  oldCenter := (519083565478201 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_2210
  oldLo := (20749999999999999 / 100000000000000000 : ℚ)
  oldHi := (20799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_551]
}

noncomputable def cell_14223 : Cell := { cellDefaults with
  domain := ⟨(193650000000000011 / 200000000000000000 : ℚ), (96850000000000003 / 100000000000000000 : ℚ)⟩
  r := (10231555788269 / 25000000000000 : ℚ)
  w := (3010569203069 / 2500000000000 : ℚ)
  center := (387350000000000017 / 400000000000000000 : ℚ)
  supportValue := (1037350020736719 / 5000000000000000 : ℚ)
  supportSlope := (-6534643069949317 / 10000000000000000 : ℚ)
  oldCenter := (1037350020736719 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2210
  oldHi := (20799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_550, piece_551]
}

noncomputable def cell_14224 : Cell := { cellDefaults with
  domain := ⟨(96850000000000003 / 100000000000000000 : ℚ), (193750000000000011 / 200000000000000000 : ℚ)⟩
  r := (8182105867679 / 20000000000000 : ℚ)
  w := (6018890608009 / 5000000000000 : ℚ)
  center := (387450000000000017 / 400000000000000000 : ℚ)
  supportValue := (129723178456927 / 625000000000000 : ℚ)
  supportSlope := (-6534250940254851 / 10000000000000000 : ℚ)
  oldCenter := (129723178456927 / 625000000000000 : ℚ)
  newCoefficients := coefficients_2211
  oldHi := (20799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_550, piece_551]
}

noncomputable def cell_14225 : Cell := { cellDefaults with
  domain := ⟨(193750000000000011 / 200000000000000000 : ℚ), (12112500000000001 / 12500000000000000 : ℚ)⟩
  r := (8182105867679 / 20000000000000 : ℚ)
  w := (6018890608009 / 5000000000000 : ℚ)
  center := (387550000000000027 / 400000000000000000 : ℚ)
  supportValue := (20739378483481083 / 100000000000000000 : ℚ)
  supportSlope := (-3264798809009213 / 5000000000000000 : ℚ)
  oldCenter := (20739378483481083 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2211
  oldPieces := [piece_550]
}

noncomputable def cell_14226 : Cell := { cellDefaults with
  domain := ⟨(12112500000000001 / 12500000000000000 : ℚ), (193850000000000011 / 200000000000000000 : ℚ)⟩
  r := (20447422141447 / 50000000000000 : ℚ)
  w := (12033281500167 / 10000000000000 : ℚ)
  center := (387650000000000027 / 400000000000000000 : ℚ)
  supportValue := (41496193318531 / 200000000000000 : ℚ)
  supportSlope := (-1305880747092167 / 2000000000000000 : ℚ)
  oldCenter := (41496193318531 / 200000000000000 : ℚ)
  newCoefficients := coefficients_2212
  oldHi := (20799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_550, piece_551]
}

noncomputable def cell_14227 : Cell := { cellDefaults with
  domain := ⟨(193850000000000011 / 200000000000000000 : ℚ), (96950000000000003 / 100000000000000000 : ℚ)⟩
  r := (20447422141447 / 50000000000000 : ℚ)
  w := (12033281500167 / 10000000000000 : ℚ)
  center := (387750000000000017 / 400000000000000000 : ℚ)
  supportValue := (20731779078856913 / 100000000000000000 : ℚ)
  supportSlope := (-6524163348825093 / 10000000000000000 : ℚ)
  oldCenter := (20731779078856913 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2212
  oldPieces := [piece_550]
}

noncomputable def cell_14228 : Cell := { cellDefaults with
  domain := ⟨(96950000000000003 / 100000000000000000 : ℚ), (193950000000000011 / 200000000000000000 : ℚ)⟩
  r := (2043958371649 / 5000000000000 : ℚ)
  w := (3007194233133 / 2500000000000 : ℚ)
  center := (387850000000000017 / 400000000000000000 : ℚ)
  supportValue := (1037025398722507 / 5000000000000000 : ℚ)
  supportSlope := (-652445927562463 / 1000000000000000 : ℚ)
  oldCenter := (1037025398722507 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2213
  oldPieces := [piece_550]
}

noncomputable def cell_14229 : Cell := { cellDefaults with
  domain := ⟨(193950000000000011 / 200000000000000000 : ℚ), (12125000000000001 / 12500000000000000 : ℚ)⟩
  r := (2043958371649 / 5000000000000 : ℚ)
  w := (3007194233133 / 2500000000000 : ℚ)
  center := (387950000000000027 / 400000000000000000 : ℚ)
  supportValue := (1295262747455753 / 6250000000000000 : ℚ)
  supportSlope := (-1629685539999263 / 2500000000000000 : ℚ)
  oldCenter := (1295262747455753 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_2213
  oldPieces := [piece_550]
}

noncomputable def cell_14230 : Cell := { cellDefaults with
  domain := ⟨(12125000000000001 / 12500000000000000 : ℚ), (194050000000000011 / 200000000000000000 : ℚ)⟩
  r := (8172700280807 / 20000000000000 : ℚ)
  w := (6012136784251 / 5000000000000 : ℚ)
  center := (388050000000000027 / 400000000000000000 : ℚ)
  supportValue := (4146586173231217 / 20000000000000000 : ℚ)
  supportSlope := (-162975946873661 / 250000000000000 : ℚ)
  oldCenter := (4146586173231217 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2214
  oldPieces := [piece_550]
}

noncomputable def cell_14231 : Cell := { cellDefaults with
  domain := ⟨(194050000000000011 / 200000000000000000 : ℚ), (97050000000000003 / 100000000000000000 : ℚ)⟩
  r := (8172700280807 / 20000000000000 : ℚ)
  w := (6012136784251 / 5000000000000 : ℚ)
  center := (388150000000000017 / 400000000000000000 : ℚ)
  supportValue := (1035832019613219 / 5000000000000000 : ℚ)
  supportSlope := (-3256665275707441 / 5000000000000000 : ℚ)
  oldCenter := (1035832019613219 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2214
  oldPieces := [piece_550]
}

noncomputable def cell_14232 : Cell := { cellDefaults with
  domain := ⟨(97050000000000003 / 100000000000000000 : ℚ), (48537500000000003 / 50000000000000000 : ℚ)⟩
  r := (40847844072571 / 100000000000000 : ℚ)
  w := (1201976550769 / 1000000000000 : ℚ)
  center := (194125000000000009 / 200000000000000000 : ℚ)
  supportValue := (2072537718090153 / 10000000000000000 : ℚ)
  supportSlope := (-6513629268329097 / 10000000000000000 : ℚ)
  oldCenter := (2072537718090153 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2215
  oldPieces := [piece_550]
}

noncomputable def cell_14233 : Cell := { cellDefaults with
  domain := ⟨(48537500000000003 / 50000000000000000 : ℚ), (97100000000000009 / 100000000000000000 : ℚ)⟩
  r := (40847844072571 / 100000000000000 : ℚ)
  w := (1201976550769 / 1000000000000 : ℚ)
  center := (38835000000000003 / 40000000000000000 : ℚ)
  supportValue := (1035455010816369 / 5000000000000000 : ℚ)
  supportSlope := (-6507931707841249 / 10000000000000000 : ℚ)
  oldCenter := (1035455010816369 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2215
  oldPieces := [piece_550]
}

noncomputable def cell_14234 : Cell := { cellDefaults with
  domain := ⟨(97100000000000009 / 100000000000000000 : ℚ), (48562500000000003 / 50000000000000000 : ℚ)⟩
  r := (10208049081403 / 25000000000000 : ℚ)
  w := (3003813766053 / 2500000000000 : ℚ)
  center := (38845000000000003 / 40000000000000000 : ℚ)
  supportValue := (20717842151491397 / 100000000000000000 : ℚ)
  supportSlope := (-813529019585799 / 1250000000000000 : ℚ)
  oldCenter := (20717842151491397 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2216
  oldPieces := [piece_550]
}

noncomputable def cell_14235 : Cell := { cellDefaults with
  domain := ⟨(48562500000000003 / 50000000000000000 : ℚ), (97150000000000003 / 100000000000000000 : ℚ)⟩
  r := (10208049081403 / 25000000000000 : ℚ)
  w := (3003813766053 / 2500000000000 : ℚ)
  center := (194275000000000009 / 200000000000000000 : ℚ)
  supportValue := (2070157866753323 / 10000000000000000 : ℚ)
  supportSlope := (-812882288346681 / 1250000000000000 : ℚ)
  oldCenter := (2070157866753323 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2216
  oldLo := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_549, piece_550]
}

noncomputable def cell_14236 : Cell := { cellDefaults with
  domain := ⟨(97150000000000003 / 100000000000000000 : ℚ), (48587500000000003 / 50000000000000000 : ℚ)⟩
  r := (159439674757 / 390625000000 : ℚ)
  w := (12010741379021 / 10000000000000 : ℚ)
  center := (194325000000000009 / 200000000000000000 : ℚ)
  supportValue := (4142065746643977 / 20000000000000000 : ℚ)
  supportSlope := (-6502847247446317 / 10000000000000000 : ℚ)
  oldCenter := (4142065746643977 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2217
  oldPieces := [piece_550]
}

noncomputable def cell_14237 : Cell := { cellDefaults with
  domain := ⟨(48587500000000003 / 50000000000000000 : ℚ), (97200000000000009 / 100000000000000000 : ℚ)⟩
  r := (159439674757 / 390625000000 : ℚ)
  w := (12010741379021 / 10000000000000 : ℚ)
  center := (38875000000000003 / 40000000000000000 : ℚ)
  supportValue := (258675969209641 / 1250000000000000 : ℚ)
  supportSlope := (-3249133354491117 / 5000000000000000 : ℚ)
  oldCenter := (258675969209641 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_2217
  oldLo := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_549, piece_550]
}

noncomputable def cell_14238 : Cell := { cellDefaults with
  domain := ⟨(97200000000000009 / 100000000000000000 : ℚ), (194434636871508379 / 200000000000000000 : ℚ)⟩
  r := (20400463148489 / 50000000000000 : ℚ)
  w := (300155617983 / 250000000000 : ℚ)
  center := (388834636871508397 / 400000000000000000 : ℚ)
  supportValue := (2588166379931571 / 12500000000000000 : ℚ)
  supportSlope := (-3249190686315221 / 5000000000000000 : ℚ)
  oldCenter := (2588166379931571 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2218
  oldLo := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_549, piece_550]
}

noncomputable def cell_14239 : Cell := { cellDefaults with
  domain := ⟨(194434636871508379 / 200000000000000000 : ℚ), (9723463687150837 / 10000000000000000 : ℚ)⟩
  r := (20400463148489 / 50000000000000 : ℚ)
  w := (300155617983 / 250000000000 : ℚ)
  center := (388903910614525119 / 400000000000000000 : ℚ)
  supportValue := (20694064664855363 / 100000000000000000 : ℚ)
  supportSlope := (-6495685122185629 / 10000000000000000 : ℚ)
  oldCenter := (20694064664855363 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2218
  oldLo := (20649999999999999 / 100000000000000000 : ℚ)
  oldHi := (20699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_549]
}

noncomputable def cell_14240 : Cell := { cellDefaults with
  domain := ⟨(9723463687150837 / 10000000000000000 : ℚ), (97250000000000003 / 100000000000000000 : ℚ)⟩
  r := (20400463148489 / 50000000000000 : ℚ)
  w := (300155617983 / 250000000000 : ℚ)
  center := (194484636871508373 / 200000000000000000 : ℚ)
  supportValue := (4136690647651321 / 20000000000000000 : ℚ)
  supportSlope := (-6491972572447999 / 10000000000000000 : ℚ)
  oldCenter := (4136690647651321 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2219
  oldLo := (20649999999999999 / 100000000000000000 : ℚ)
  oldHi := (20699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_549]
}

noncomputable def cell_14241 : Cell := { cellDefaults with
  domain := ⟨(97250000000000003 / 100000000000000000 : ℚ), (48637500000000003 / 50000000000000000 : ℚ)⟩
  r := (4078530520691 / 10000000000000 : ℚ)
  w := (3000426158369 / 2500000000000 : ℚ)
  center := (194525000000000009 / 200000000000000000 : ℚ)
  supportValue := (2069536148368559 / 10000000000000000 : ℚ)
  supportSlope := (-6493110312021709 / 10000000000000000 : ℚ)
  oldCenter := (2069536148368559 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2220
  oldLo := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_549, piece_550]
}

noncomputable def cell_14242 : Cell := { cellDefaults with
  domain := ⟨(48637500000000003 / 50000000000000000 : ℚ), (97300000000000009 / 100000000000000000 : ℚ)⟩
  r := (4078530520691 / 10000000000000 : ℚ)
  w := (3000426158369 / 2500000000000 : ℚ)
  center := (38915000000000003 / 40000000000000000 : ℚ)
  supportValue := (2067913510767667 / 10000000000000000 : ℚ)
  supportSlope := (-6487708312776007 / 10000000000000000 : ℚ)
  oldCenter := (2067913510767667 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2220
  oldLo := (20649999999999999 / 100000000000000000 : ℚ)
  oldHi := (20699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_549]
}

noncomputable def cell_14243 : Cell := { cellDefaults with
  domain := ⟨(97300000000000009 / 100000000000000000 : ℚ), (48662500000000003 / 50000000000000000 : ℚ)⟩
  r := (10192423154509 / 25000000000000 : ℚ)
  w := (5998591287389 / 5000000000000 : ℚ)
  center := (38925000000000003 / 40000000000000000 : ℚ)
  supportValue := (20687906153199853 / 100000000000000000 : ℚ)
  supportSlope := (-3244012401748931 / 5000000000000000 : ℚ)
  oldCenter := (20687906153199853 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2221
  oldLo := (20649999999999999 / 100000000000000000 : ℚ)
  oldHi := (20699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_549]
}

noncomputable def cell_14244 : Cell := { cellDefaults with
  domain := ⟨(48662500000000003 / 50000000000000000 : ℚ), (97350000000000003 / 100000000000000000 : ℚ)⟩
  r := (10192423154509 / 25000000000000 : ℚ)
  w := (5998591287389 / 5000000000000 : ℚ)
  center := (194675000000000009 / 200000000000000000 : ℚ)
  supportValue := (4134338631550819 / 20000000000000000 : ℚ)
  supportSlope := (-1620590227645241 / 2500000000000000 : ℚ)
  oldCenter := (4134338631550819 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2221
  oldLo := (20649999999999999 / 100000000000000000 : ℚ)
  oldHi := (20699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_549]
}

noncomputable def cell_14245 : Cell := { cellDefaults with
  domain := ⟨(97350000000000003 / 100000000000000000 : ℚ), (48687500000000003 / 50000000000000000 : ℚ)⟩
  r := (10188522270219 / 25000000000000 : ℚ)
  w := (5996327936337 / 5000000000000 : ℚ)
  center := (194725000000000009 / 200000000000000000 : ℚ)
  supportValue := (1034023675220851 / 5000000000000000 : ℚ)
  supportSlope := (-6482680291101439 / 10000000000000000 : ℚ)
  oldCenter := (1034023675220851 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2222
  oldLo := (20649999999999999 / 100000000000000000 : ℚ)
  oldHi := (20699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_549]
}

noncomputable def cell_14246 : Cell := { cellDefaults with
  domain := ⟨(48687500000000003 / 50000000000000000 : ℚ), (97400000000000009 / 100000000000000000 : ℚ)⟩
  r := (10188522270219 / 25000000000000 : ℚ)
  w := (5996327936337 / 5000000000000 : ℚ)
  center := (38955000000000003 / 40000000000000000 : ℚ)
  supportValue := (10332136929090667 / 50000000000000000 : ℚ)
  supportSlope := (-6477026058714697 / 10000000000000000 : ℚ)
  oldCenter := (10332136929090667 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2222
  oldLo := (20649999999999999 / 100000000000000000 : ℚ)
  oldHi := (20699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_549]
}

noncomputable def cell_14247 : Cell := { cellDefaults with
  domain := ⟨(97400000000000009 / 100000000000000000 : ℚ), (48712500000000003 / 50000000000000000 : ℚ)⟩
  r := (1629539806827 / 4000000000000 : ℚ)
  w := (1198812811847 / 1000000000000 : ℚ)
  center := (38965000000000003 / 40000000000000000 : ℚ)
  supportValue := (826922283407567 / 4000000000000000 : ℚ)
  supportSlope := (-6477346472129829 / 10000000000000000 : ℚ)
  oldCenter := (826922283407567 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_2223
  oldLo := (20649999999999999 / 100000000000000000 : ℚ)
  oldHi := (20699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_549]
}

noncomputable def cell_14248 : Cell := { cellDefaults with
  domain := ⟨(48712500000000003 / 50000000000000000 : ℚ), (97450000000000003 / 100000000000000000 : ℚ)⟩
  r := (1629539806827 / 4000000000000 : ℚ)
  w := (1198812811847 / 1000000000000 : ℚ)
  center := (194875000000000009 / 200000000000000000 : ℚ)
  supportValue := (516421769036911 / 2500000000000000 : ℚ)
  supportSlope := (-6471799627090989 / 10000000000000000 : ℚ)
  oldCenter := (516421769036911 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_2223
  oldLo := (20599999999999999 / 100000000000000000 : ℚ)
  oldHi := (20699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_548, piece_549]
}

noncomputable def cell_14249 : Cell := { cellDefaults with
  domain := ⟨(97450000000000003 / 100000000000000000 : ℚ), (48737500000000003 / 50000000000000000 : ℚ)⟩
  r := (40722910325941 / 100000000000000 : ℚ)
  w := (11983597647167 / 10000000000000 : ℚ)
  center := (194925000000000009 / 200000000000000000 : ℚ)
  supportValue := (10332830080133387 / 50000000000000000 : ℚ)
  supportSlope := (-6472024230902763 / 10000000000000000 : ℚ)
  oldCenter := (10332830080133387 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2224
  oldLo := (20649999999999999 / 100000000000000000 : ℚ)
  oldHi := (20699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_549]
}

theorem check_14200 : cell_14200.check = true := by
  decide +kernel

theorem check_14201 : cell_14201.check = true := by
  decide +kernel

theorem check_14202 : cell_14202.check = true := by
  decide +kernel

theorem check_14203 : cell_14203.check = true := by
  decide +kernel

theorem check_14204 : cell_14204.check = true := by
  decide +kernel

theorem check_14205 : cell_14205.check = true := by
  decide +kernel

theorem check_14206 : cell_14206.check = true := by
  decide +kernel

theorem check_14207 : cell_14207.check = true := by
  decide +kernel

theorem check_14208 : cell_14208.check = true := by
  decide +kernel

theorem check_14209 : cell_14209.check = true := by
  decide +kernel

theorem check_14210 : cell_14210.check = true := by
  decide +kernel

theorem check_14211 : cell_14211.check = true := by
  decide +kernel

theorem check_14212 : cell_14212.check = true := by
  decide +kernel

theorem check_14213 : cell_14213.check = true := by
  decide +kernel

theorem check_14214 : cell_14214.check = true := by
  decide +kernel

theorem check_14215 : cell_14215.check = true := by
  decide +kernel

theorem check_14216 : cell_14216.check = true := by
  decide +kernel

theorem check_14217 : cell_14217.check = true := by
  decide +kernel

theorem check_14218 : cell_14218.check = true := by
  decide +kernel

theorem check_14219 : cell_14219.check = true := by
  decide +kernel

theorem check_14220 : cell_14220.check = true := by
  decide +kernel

theorem check_14221 : cell_14221.check = true := by
  decide +kernel

theorem check_14222 : cell_14222.check = true := by
  decide +kernel

theorem check_14223 : cell_14223.check = true := by
  decide +kernel

theorem check_14224 : cell_14224.check = true := by
  decide +kernel

theorem check_14225 : cell_14225.check = true := by
  decide +kernel

theorem check_14226 : cell_14226.check = true := by
  decide +kernel

theorem check_14227 : cell_14227.check = true := by
  decide +kernel

theorem check_14228 : cell_14228.check = true := by
  decide +kernel

theorem check_14229 : cell_14229.check = true := by
  decide +kernel

theorem check_14230 : cell_14230.check = true := by
  decide +kernel

theorem check_14231 : cell_14231.check = true := by
  decide +kernel

theorem check_14232 : cell_14232.check = true := by
  decide +kernel

theorem check_14233 : cell_14233.check = true := by
  decide +kernel

theorem check_14234 : cell_14234.check = true := by
  decide +kernel

theorem check_14235 : cell_14235.check = true := by
  decide +kernel

theorem check_14236 : cell_14236.check = true := by
  decide +kernel

theorem check_14237 : cell_14237.check = true := by
  decide +kernel

theorem check_14238 : cell_14238.check = true := by
  decide +kernel

theorem check_14239 : cell_14239.check = true := by
  decide +kernel

theorem check_14240 : cell_14240.check = true := by
  decide +kernel

theorem check_14241 : cell_14241.check = true := by
  decide +kernel

theorem check_14242 : cell_14242.check = true := by
  decide +kernel

theorem check_14243 : cell_14243.check = true := by
  decide +kernel

theorem check_14244 : cell_14244.check = true := by
  decide +kernel

theorem check_14245 : cell_14245.check = true := by
  decide +kernel

theorem check_14246 : cell_14246.check = true := by
  decide +kernel

theorem check_14247 : cell_14247.check = true := by
  decide +kernel

theorem check_14248 : cell_14248.check = true := by
  decide +kernel

theorem check_14249 : cell_14249.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_14200, cell_14201, cell_14202, cell_14203, cell_14204, cell_14205, cell_14206, cell_14207, cell_14208, cell_14209, cell_14210, cell_14211, cell_14212, cell_14213, cell_14214, cell_14215, cell_14216, cell_14217, cell_14218, cell_14219, cell_14220, cell_14221, cell_14222, cell_14223, cell_14224, cell_14225, cell_14226, cell_14227, cell_14228, cell_14229, cell_14230, cell_14231, cell_14232, cell_14233, cell_14234, cell_14235, cell_14236, cell_14237, cell_14238, cell_14239, cell_14240, cell_14241, cell_14242, cell_14243, cell_14244, cell_14245, cell_14246, cell_14247, cell_14248, cell_14249]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_14200, check_14201, check_14202, check_14203, check_14204, check_14205, check_14206, check_14207, check_14208, check_14209, check_14210, check_14211, check_14212, check_14213, check_14214, check_14215, check_14216, check_14217, check_14218, check_14219, check_14220, check_14221, check_14222, check_14223, check_14224, check_14225, check_14226, check_14227, check_14228, check_14229, check_14230, check_14231, check_14232, check_14233, check_14234, check_14235, check_14236, check_14237, check_14238, check_14239, check_14240, check_14241, check_14242, check_14243, check_14244, check_14245, check_14246, check_14247, check_14248, check_14249, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0284

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0284
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0284
open AnalyticBounds.ExpressionCertificate

theorem linked_14200 : Linked cell_14200 pieces := by
  link_source cell_14200 with piece_2198 using piece_2198_mem, piece_552_mem

theorem linked_14201 : Linked cell_14201 pieces := by
  link_source cell_14201 with piece_2199 using piece_2199_mem, piece_552_mem

theorem linked_14202 : Linked cell_14202 pieces := by
  link_source cell_14202 with piece_2199 using piece_2199_mem, piece_552_mem

theorem linked_14203 : Linked cell_14203 pieces := by
  link_source cell_14203 with piece_2200 using piece_2200_mem, piece_552_mem

theorem linked_14204 : Linked cell_14204 pieces := by
  link_source cell_14204 with piece_2200 using piece_2200_mem, piece_552_mem

theorem linked_14205 : Linked cell_14205 pieces := by
  link_source cell_14205 with piece_2201 using piece_2201_mem, piece_552_mem

theorem linked_14206 : Linked cell_14206 pieces := by
  link_source cell_14206 with piece_2201 using piece_2201_mem, piece_552_mem

theorem linked_14207 : Linked cell_14207 pieces := by
  link_source cell_14207 with piece_2202 using piece_2202_mem, piece_552_mem

theorem linked_14208 : Linked cell_14208 pieces := by
  link_source cell_14208 with piece_2202 using piece_2202_mem, ⟨piece_551_mem, piece_552_mem⟩

theorem linked_14209 : Linked cell_14209 pieces := by
  link_source cell_14209 with piece_2203 using piece_2203_mem, piece_552_mem

theorem linked_14210 : Linked cell_14210 pieces := by
  link_source cell_14210 with piece_2203 using piece_2203_mem, ⟨piece_551_mem, piece_552_mem⟩

theorem linked_14211 : Linked cell_14211 pieces := by
  link_source cell_14211 with piece_2204 using piece_2204_mem, ⟨piece_551_mem, piece_552_mem⟩

theorem linked_14212 : Linked cell_14212 pieces := by
  link_source cell_14212 with piece_2204 using piece_2204_mem, piece_551_mem

theorem linked_14213 : Linked cell_14213 pieces := by
  link_source cell_14213 with piece_2205 using piece_2205_mem, ⟨piece_551_mem, piece_552_mem⟩

theorem linked_14214 : Linked cell_14214 pieces := by
  link_source cell_14214 with piece_2205 using piece_2205_mem, piece_551_mem

theorem linked_14215 : Linked cell_14215 pieces := by
  link_source cell_14215 with piece_2206 using piece_2206_mem, piece_551_mem

theorem linked_14216 : Linked cell_14216 pieces := by
  link_source cell_14216 with piece_2206 using piece_2206_mem, piece_551_mem

theorem linked_14217 : Linked cell_14217 pieces := by
  link_source cell_14217 with piece_2207 using piece_2207_mem, piece_551_mem

theorem linked_14218 : Linked cell_14218 pieces := by
  link_source cell_14218 with piece_2208 using piece_2208_mem, piece_551_mem

theorem linked_14219 : Linked cell_14219 pieces := by
  link_source cell_14219 with piece_2208 using piece_2208_mem, piece_551_mem

theorem linked_14220 : Linked cell_14220 pieces := by
  link_source cell_14220 with piece_2209 using piece_2209_mem, piece_551_mem

theorem linked_14221 : Linked cell_14221 pieces := by
  link_source cell_14221 with piece_2209 using piece_2209_mem, ⟨piece_550_mem, piece_551_mem⟩

theorem linked_14222 : Linked cell_14222 pieces := by
  link_source cell_14222 with piece_2210 using piece_2210_mem, piece_551_mem

theorem linked_14223 : Linked cell_14223 pieces := by
  link_source cell_14223 with piece_2210 using piece_2210_mem, ⟨piece_550_mem, piece_551_mem⟩

theorem linked_14224 : Linked cell_14224 pieces := by
  link_source cell_14224 with piece_2211 using piece_2211_mem, ⟨piece_550_mem, piece_551_mem⟩

theorem linked_14225 : Linked cell_14225 pieces := by
  link_source cell_14225 with piece_2211 using piece_2211_mem, piece_550_mem

theorem linked_14226 : Linked cell_14226 pieces := by
  link_source cell_14226 with piece_2212 using piece_2212_mem, ⟨piece_550_mem, piece_551_mem⟩

theorem linked_14227 : Linked cell_14227 pieces := by
  link_source cell_14227 with piece_2212 using piece_2212_mem, piece_550_mem

theorem linked_14228 : Linked cell_14228 pieces := by
  link_source cell_14228 with piece_2213 using piece_2213_mem, piece_550_mem

theorem linked_14229 : Linked cell_14229 pieces := by
  link_source cell_14229 with piece_2213 using piece_2213_mem, piece_550_mem

theorem linked_14230 : Linked cell_14230 pieces := by
  link_source cell_14230 with piece_2214 using piece_2214_mem, piece_550_mem

theorem linked_14231 : Linked cell_14231 pieces := by
  link_source cell_14231 with piece_2214 using piece_2214_mem, piece_550_mem

theorem linked_14232 : Linked cell_14232 pieces := by
  link_source cell_14232 with piece_2215 using piece_2215_mem, piece_550_mem

theorem linked_14233 : Linked cell_14233 pieces := by
  link_source cell_14233 with piece_2215 using piece_2215_mem, piece_550_mem

theorem linked_14234 : Linked cell_14234 pieces := by
  link_source cell_14234 with piece_2216 using piece_2216_mem, piece_550_mem

theorem linked_14235 : Linked cell_14235 pieces := by
  link_source cell_14235 with piece_2216 using piece_2216_mem, ⟨piece_549_mem, piece_550_mem⟩

theorem linked_14236 : Linked cell_14236 pieces := by
  link_source cell_14236 with piece_2217 using piece_2217_mem, piece_550_mem

theorem linked_14237 : Linked cell_14237 pieces := by
  link_source cell_14237 with piece_2217 using piece_2217_mem, ⟨piece_549_mem, piece_550_mem⟩

theorem linked_14238 : Linked cell_14238 pieces := by
  link_source cell_14238 with piece_2218 using piece_2218_mem, ⟨piece_549_mem, piece_550_mem⟩

theorem linked_14239 : Linked cell_14239 pieces := by
  link_source cell_14239 with piece_2218 using piece_2218_mem, piece_549_mem

theorem linked_14240 : Linked cell_14240 pieces := by
  link_source cell_14240 with piece_2219 using piece_2219_mem, piece_549_mem

theorem linked_14241 : Linked cell_14241 pieces := by
  link_source cell_14241 with piece_2220 using piece_2220_mem, ⟨piece_549_mem, piece_550_mem⟩

theorem linked_14242 : Linked cell_14242 pieces := by
  link_source cell_14242 with piece_2220 using piece_2220_mem, piece_549_mem

theorem linked_14243 : Linked cell_14243 pieces := by
  link_source cell_14243 with piece_2221 using piece_2221_mem, piece_549_mem

theorem linked_14244 : Linked cell_14244 pieces := by
  link_source cell_14244 with piece_2221 using piece_2221_mem, piece_549_mem

theorem linked_14245 : Linked cell_14245 pieces := by
  link_source cell_14245 with piece_2222 using piece_2222_mem, piece_549_mem

theorem linked_14246 : Linked cell_14246 pieces := by
  link_source cell_14246 with piece_2222 using piece_2222_mem, piece_549_mem

theorem linked_14247 : Linked cell_14247 pieces := by
  link_source cell_14247 with piece_2223 using piece_2223_mem, piece_549_mem

theorem linked_14248 : Linked cell_14248 pieces := by
  link_source cell_14248 with piece_2223 using piece_2223_mem, ⟨piece_548_mem, piece_549_mem⟩

theorem linked_14249 : Linked cell_14249 pieces := by
  link_source cell_14249 with piece_2224 using piece_2224_mem, piece_549_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0284.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0284.cells,List.forall_mem_cons]
  exact ⟨linked_14200, linked_14201, linked_14202, linked_14203, linked_14204, linked_14205, linked_14206, linked_14207, linked_14208, linked_14209, linked_14210, linked_14211, linked_14212, linked_14213, linked_14214, linked_14215, linked_14216, linked_14217, linked_14218, linked_14219, linked_14220, linked_14221, linked_14222, linked_14223, linked_14224, linked_14225, linked_14226, linked_14227, linked_14228, linked_14229, linked_14230, linked_14231, linked_14232, linked_14233, linked_14234, linked_14235, linked_14236, linked_14237, linked_14238, linked_14239, linked_14240, linked_14241, linked_14242, linked_14243, linked_14244, linked_14245, linked_14246, linked_14247, linked_14248, linked_14249, by simp⟩

theorem covered : covers (19255000000000001 / 20000000000000000 : ℚ) (48737500000000003 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0284.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0284
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0285
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(48737500000000003 / 50000000000000000 : ℚ), (97500000000000009 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (4062958547137 / 10000000000000 : ℚ)
  w := (298908595851 / 250000000000 : ℚ)
  center := (38995000000000003 / 40000000000000000 : ℚ)
  supportValue := (20649487024810959 / 100000000000000000 : ℚ)
  supportSlope := (-6467067957235729 / 10000000000000000 : ℚ)
  oldCenter := (20649487024810959 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2225
  oldLo := (20499999999999999 / 100000000000000000 : ℚ)
  oldHi := (20549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_546]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_14250 : Cell := { cellDefaults with
  r := (40722910325941 / 100000000000000 : ℚ)
  w := (11983597647167 / 10000000000000 : ℚ)
  newCoefficients := coefficients_2224
  oldLo := (20599999999999999 / 100000000000000000 : ℚ)
  oldHi := (20699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_548, piece_549]
}

noncomputable def cell_14251 : Cell := { cellDefaults with
  domain := ⟨(97500000000000009 / 100000000000000000 : ℚ), (48762500000000003 / 50000000000000000 : ℚ)⟩
  r := (10176833616721 / 25000000000000 : ℚ)
  w := (11979063568493 / 10000000000000 : ℚ)
  center := (39005000000000003 / 40000000000000000 : ℚ)
  supportValue := (20658284203349547 / 100000000000000000 : ℚ)
  supportSlope := (-646671396278353 / 1000000000000000 : ℚ)
  oldCenter := (20658284203349547 / 100000000000000000 : ℚ)
  oldLo := (20649999999999999 / 100000000000000000 : ℚ)
  oldHi := (20699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_549]
}

noncomputable def cell_14252 : Cell := { cellDefaults with
  domain := ⟨(48762500000000003 / 50000000000000000 : ℚ), (97550000000000003 / 100000000000000000 : ℚ)⟩
  r := (10176833616721 / 25000000000000 : ℚ)
  w := (11979063568493 / 10000000000000 : ℚ)
  center := (195075000000000009 / 200000000000000000 : ℚ)
  supportValue := (10321061440637469 / 50000000000000000 : ℚ)
  supportSlope := (-6462343727369977 / 10000000000000000 : ℚ)
  oldCenter := (10321061440637469 / 50000000000000000 : ℚ)
  oldLo := (20599999999999999 / 100000000000000000 : ℚ)
  oldHi := (20699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_548, piece_549]
}

noncomputable def cell_14253 : Cell := { cellDefaults with
  domain := ⟨(97550000000000003 / 100000000000000000 : ℚ), (48787500000000003 / 50000000000000000 : ℚ)⟩
  r := (20345883157939 / 50000000000000 : ℚ)
  w := (11974524928137 / 10000000000000 : ℚ)
  center := (195125000000000009 / 200000000000000000 : ℚ)
  supportValue := (516273303778367 / 2500000000000000 : ℚ)
  supportSlope := (-403873816740931 / 625000000000000 : ℚ)
  oldCenter := (516273303778367 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_2226
  oldLo := (20599999999999999 / 100000000000000000 : ℚ)
  oldHi := (20699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_548, piece_549]
}

noncomputable def cell_14254 : Cell := { cellDefaults with
  domain := ⟨(48787500000000003 / 50000000000000000 : ℚ), (97600000000000009 / 100000000000000000 : ℚ)⟩
  r := (20345883157939 / 50000000000000 : ℚ)
  w := (11974524928137 / 10000000000000 : ℚ)
  center := (39035000000000003 / 40000000000000000 : ℚ)
  supportValue := (161209239238867 / 781250000000000 : ℚ)
  supportSlope := (-6457062765966917 / 10000000000000000 : ℚ)
  oldCenter := (161209239238867 / 781250000000000 : ℚ)
  newCoefficients := coefficients_2226
  oldLo := (20599999999999999 / 100000000000000000 : ℚ)
  oldHi := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_548]
}

noncomputable def cell_14255 : Cell := { cellDefaults with
  domain := ⟨(97600000000000009 / 100000000000000000 : ℚ), (48812500000000003 / 50000000000000000 : ℚ)⟩
  r := (4067620791243 / 10000000000000 : ℚ)
  w := (5984992184991 / 5000000000000 : ℚ)
  center := (39045000000000003 / 40000000000000000 : ℚ)
  supportValue := (2064359614388649 / 10000000000000000 : ℚ)
  supportSlope := (-25223708095557 / 39062500000000 : ℚ)
  oldCenter := (2064359614388649 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2227
  oldLo := (20599999999999999 / 100000000000000000 : ℚ)
  oldHi := (20699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_548, piece_549]
}

noncomputable def cell_14256 : Cell := { cellDefaults with
  domain := ⟨(48812500000000003 / 50000000000000000 : ℚ), (97650000000000003 / 100000000000000000 : ℚ)⟩
  r := (4067620791243 / 10000000000000 : ℚ)
  w := (5984992184991 / 5000000000000 : ℚ)
  center := (195275000000000009 / 200000000000000000 : ℚ)
  supportValue := (5156864914539943 / 25000000000000000 : ℚ)
  supportSlope := (-3225889182302653 / 5000000000000000 : ℚ)
  oldCenter := (5156864914539943 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2227
  oldLo := (20599999999999999 / 100000000000000000 : ℚ)
  oldHi := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_548]
}

noncomputable def cell_14257 : Cell := { cellDefaults with
  domain := ⟨(97650000000000003 / 100000000000000000 : ℚ), (48837500000000003 / 50000000000000000 : ℚ)⟩
  r := (40660658855103 / 100000000000000 : ℚ)
  w := (11965441571419 / 10000000000000 : ℚ)
  center := (195325000000000009 / 200000000000000000 : ℚ)
  supportValue := (5159069552515573 / 25000000000000000 : ℚ)
  supportSlope := (-3226058420786217 / 5000000000000000 : ℚ)
  oldCenter := (5159069552515573 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2228
  oldLo := (20599999999999999 / 100000000000000000 : ℚ)
  oldHi := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_548]
}

noncomputable def cell_14258 : Cell := { cellDefaults with
  domain := ⟨(48837500000000003 / 50000000000000000 : ℚ), (97700000000000009 / 100000000000000000 : ℚ)⟩
  r := (40660658855103 / 100000000000000 : ℚ)
  w := (11965441571419 / 10000000000000 : ℚ)
  center := (39075000000000003 / 40000000000000000 : ℚ)
  supportValue := (20620154919375927 / 100000000000000000 : ℚ)
  supportSlope := (-805813139143533 / 1250000000000000 : ℚ)
  oldCenter := (20620154919375927 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2228
  oldLo := (20599999999999999 / 100000000000000000 : ℚ)
  oldHi := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_548]
}

noncomputable def cell_14259 : Cell := { cellDefaults with
  domain := ⟨(97700000000000009 / 100000000000000000 : ℚ), (195450000000000013 / 200000000000000000 : ℚ)⟩
  r := (40645117657969 / 100000000000000 : ℚ)
  w := (11960894398053 / 10000000000000 : ℚ)
  center := (390850000000000031 / 400000000000000000 : ℚ)
  supportValue := (1031449179609623 / 5000000000000000 : ℚ)
  supportSlope := (-6446846566781717 / 10000000000000000 : ℚ)
  oldCenter := (1031449179609623 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2229
  oldLo := (20599999999999999 / 100000000000000000 : ℚ)
  oldHi := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_548]
}

noncomputable def cell_14260 : Cell := { cellDefaults with
  domain := ⟨(195450000000000013 / 200000000000000000 : ℚ), (24437500000000001 / 25000000000000000 : ℚ)⟩
  r := (40645117657969 / 100000000000000 : ℚ)
  w := (11960894398053 / 10000000000000 : ℚ)
  center := (390950000000000021 / 400000000000000000 : ℚ)
  supportValue := (20612873465328613 / 100000000000000000 : ℚ)
  supportSlope := (-402577770856101 / 625000000000000 : ℚ)
  oldCenter := (20612873465328613 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2229
  oldLo := (20599999999999999 / 100000000000000000 : ℚ)
  oldHi := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_548]
}

noncomputable def cell_14261 : Cell := { cellDefaults with
  domain := ⟨(24437500000000001 / 25000000000000000 : ℚ), (12221106843575419 / 12500000000000000 : ℚ)⟩
  center := (48879713687150839 / 50000000000000000 : ℚ)
  supportValue := (5155918573550479 / 25000000000000000 : ℚ)
  supportSlope := (-6442275868390901 / 10000000000000000 : ℚ)
  oldCenter := (5155918573550479 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2230
  oldLo := (20599999999999999 / 100000000000000000 : ℚ)
  oldHi := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_548]
  nl := 48
}

noncomputable def cell_14262 : Cell := { cellDefaults with
  domain := ⟨(12221106843575419 / 12500000000000000 : ℚ), (977877094972067 / 1000000000000000 : ℚ)⟩
  center := (48889141061452513 / 50000000000000000 : ℚ)
  supportValue := (20611531520667647 / 100000000000000000 : ℚ)
  supportSlope := (-1287611232994897 / 2000000000000000 : ℚ)
  oldCenter := (20611531520667647 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2230
  oldLo := (20599999999999999 / 100000000000000000 : ℚ)
  oldHi := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_548]
  nl := 48
}

noncomputable def cell_14263 : Cell := { cellDefaults with
  domain := ⟨(977877094972067 / 1000000000000000 : ℚ), (97800000000000009 / 100000000000000000 : ℚ)⟩
  center := (195587709497206709 / 200000000000000000 : ℚ)
  supportValue := (2060150848521337 / 10000000000000000 : ℚ)
  supportSlope := (-6434971967944677 / 10000000000000000 : ℚ)
  oldCenter := (2060150848521337 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2231
  oldLo := (20549999999999999 / 100000000000000000 : ℚ)
  oldHi := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_547, piece_548]
}

noncomputable def cell_14264 : Cell := { cellDefaults with
  domain := ⟨(97800000000000009 / 100000000000000000 : ℚ), (195650000000000013 / 200000000000000000 : ℚ)⟩
  r := (20307031582239 / 50000000000000 : ℚ)
  w := (11951793327599 / 10000000000000 : ℚ)
  center := (391250000000000031 / 400000000000000000 : ℚ)
  supportValue := (5153612246163787 / 25000000000000000 : ℚ)
  supportSlope := (-201135601819883 / 312500000000000 : ℚ)
  oldCenter := (5153612246163787 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2232
  oldLo := (20599999999999999 / 100000000000000000 : ℚ)
  oldHi := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_548]
}

noncomputable def cell_14265 : Cell := { cellDefaults with
  domain := ⟨(195650000000000013 / 200000000000000000 : ℚ), (24462500000000001 / 25000000000000000 : ℚ)⟩
  r := (20307031582239 / 50000000000000 : ℚ)
  w := (11951793327599 / 10000000000000 : ℚ)
  center := (391350000000000021 / 400000000000000000 : ℚ)
  supportValue := (10299182386284647 / 50000000000000000 : ℚ)
  supportSlope := (-803940747648249 / 1250000000000000 : ℚ)
  oldCenter := (10299182386284647 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2232
  oldLo := (20549999999999999 / 100000000000000000 : ℚ)
  oldHi := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_547, piece_548]
}

noncomputable def cell_14266 : Cell := { cellDefaults with
  domain := ⟨(24462500000000001 / 25000000000000000 : ℚ), (195750000000000013 / 200000000000000000 : ℚ)⟩
  r := (40598549603033 / 100000000000000 : ℚ)
  w := (11947238323021 / 10000000000000 : ℚ)
  center := (391450000000000021 / 400000000000000000 : ℚ)
  supportValue := (1287950686514339 / 6250000000000000 : ℚ)
  supportSlope := (-80389629546421 / 125000000000000 : ℚ)
  oldCenter := (1287950686514339 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_2233
  oldLo := (20549999999999999 / 100000000000000000 : ℚ)
  oldHi := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_547, piece_548]
}

noncomputable def cell_14267 : Cell := { cellDefaults with
  domain := ⟨(195750000000000013 / 200000000000000000 : ℚ), (97900000000000009 / 100000000000000000 : ℚ)⟩
  r := (40598549603033 / 100000000000000 : ℚ)
  w := (11947238323021 / 10000000000000 : ℚ)
  center := (391550000000000031 / 400000000000000000 : ℚ)
  supportValue := (643473075529027 / 3125000000000000 : ℚ)
  supportSlope := (-6426801263989447 / 10000000000000000 : ℚ)
  oldCenter := (643473075529027 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_2233
  oldLo := (20549999999999999 / 100000000000000000 : ℚ)
  oldHi := (20599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_547]
}

noncomputable def cell_14268 : Cell := { cellDefaults with
  domain := ⟨(97900000000000009 / 100000000000000000 : ℚ), (195850000000000013 / 200000000000000000 : ℚ)⟩
  r := (4058304371959 / 10000000000000 : ℚ)
  w := (11942678541101 / 10000000000000 : ℚ)
  center := (391650000000000031 / 400000000000000000 : ℚ)
  supportValue := (10299998487504447 / 50000000000000000 : ℚ)
  supportSlope := (-6426519291112353 / 10000000000000000 : ℚ)
  oldCenter := (10299998487504447 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2234
  oldLo := (20549999999999999 / 100000000000000000 : ℚ)
  oldHi := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_547, piece_548]
}

noncomputable def cell_14269 : Cell := { cellDefaults with
  domain := ⟨(195850000000000013 / 200000000000000000 : ℚ), (24487500000000001 / 25000000000000000 : ℚ)⟩
  r := (4058304371959 / 10000000000000 : ℚ)
  w := (11942678541101 / 10000000000000 : ℚ)
  center := (391750000000000021 / 400000000000000000 : ℚ)
  supportValue := (10291968019175021 / 50000000000000000 : ℚ)
  supportSlope := (-6421578844000939 / 10000000000000000 : ℚ)
  oldCenter := (10291968019175021 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2234
  oldLo := (20549999999999999 / 100000000000000000 : ℚ)
  oldHi := (20599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_547]
}

noncomputable def cell_14270 : Cell := { cellDefaults with
  domain := ⟨(24487500000000001 / 25000000000000000 : ℚ), (97975000000000001 / 100000000000000000 : ℚ)⟩
  r := (8113509314009 / 20000000000000 : ℚ)
  w := (596905772361 / 500000000000 : ℚ)
  center := (39185000000000001 / 40000000000000000 : ℚ)
  supportValue := (64352506097607 / 312500000000000 : ℚ)
  supportSlope := (-401367193798761 / 625000000000000 : ℚ)
  oldCenter := (64352506097607 / 312500000000000 : ℚ)
  newCoefficients := coefficients_2235
  oldLo := (20549999999999999 / 100000000000000000 : ℚ)
  oldHi := (20649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_547, piece_548]
}

noncomputable def cell_14271 : Cell := { cellDefaults with
  domain := ⟨(97975000000000001 / 100000000000000000 : ℚ), (48999999999999999 / 50000000000000000 : ℚ)⟩
  r := (8113509314009 / 20000000000000 : ℚ)
  w := (596905772361 / 500000000000 : ℚ)
  center := (195974999999999999 / 200000000000000000 : ℚ)
  supportValue := (20576754053290433 / 100000000000000000 : ℚ)
  supportSlope := (-3208184036696367 / 5000000000000000 : ℚ)
  oldCenter := (20576754053290433 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2235
  oldLo := (20549999999999999 / 100000000000000000 : ℚ)
  oldHi := (20599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_547]
}

noncomputable def cell_14272 : Cell := { cellDefaults with
  domain := ⟨(48999999999999999 / 50000000000000000 : ℚ), (98025000000000001 / 100000000000000000 : ℚ)⟩
  r := (2027602967083 / 5000000000000 : ℚ)
  w := (1491694036787 / 1250000000000 : ℚ)
  center := (196024999999999999 / 200000000000000000 : ℚ)
  supportValue := (2058562076358789 / 10000000000000000 : ℚ)
  supportSlope := (-6416729412785157 / 10000000000000000 : ℚ)
  oldCenter := (2058562076358789 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2236
  oldLo := (20549999999999999 / 100000000000000000 : ℚ)
  oldHi := (20599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_547]
}

noncomputable def cell_14273 : Cell := { cellDefaults with
  domain := ⟨(98025000000000001 / 100000000000000000 : ℚ), (24512500000000001 / 25000000000000000 : ℚ)⟩
  r := (2027602967083 / 5000000000000 : ℚ)
  w := (1491694036787 / 1250000000000 : ℚ)
  center := (39215000000000001 / 40000000000000000 : ℚ)
  supportValue := (20569585879702493 / 100000000000000000 : ℚ)
  supportSlope := (-801395894057159 / 1250000000000000 : ℚ)
  oldCenter := (20569585879702493 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2236
  oldLo := (20549999999999999 / 100000000000000000 : ℚ)
  oldHi := (20599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_547]
}

noncomputable def cell_14274 : Cell := { cellDefaults with
  domain := ⟨(24512500000000001 / 25000000000000000 : ℚ), (98075000000000001 / 100000000000000000 : ℚ)⟩
  r := (20268290129333 / 50000000000000 : ℚ)
  w := (11928984072093 / 10000000000000 : ℚ)
  center := (39225000000000001 / 40000000000000000 : ℚ)
  supportValue := (1028923169597243 / 5000000000000000 : ℚ)
  supportSlope := (-200360362976489 / 312500000000000 : ℚ)
  oldCenter := (1028923169597243 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2237
  oldLo := (20549999999999999 / 100000000000000000 : ℚ)
  oldHi := (20599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_547]
}

noncomputable def cell_14275 : Cell := { cellDefaults with
  domain := ⟨(98075000000000001 / 100000000000000000 : ℚ), (49049999999999999 / 50000000000000000 : ℚ)⟩
  r := (20268290129333 / 50000000000000 : ℚ)
  w := (11928984072093 / 10000000000000 : ℚ)
  center := (196174999999999999 / 200000000000000000 : ℚ)
  supportValue := (20562441490844047 / 100000000000000000 : ℚ)
  supportSlope := (-800747340757953 / 1250000000000000 : ℚ)
  oldCenter := (20562441490844047 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2237
  oldLo := (20549999999999999 / 100000000000000000 : ℚ)
  oldHi := (20599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_547]
}

noncomputable def cell_14276 : Cell := { cellDefaults with
  domain := ⟨(49049999999999999 / 50000000000000000 : ℚ), (98125000000000001 / 100000000000000000 : ℚ)⟩
  r := (40521110015301 / 100000000000000 : ℚ)
  w := (11924412889153 / 10000000000000 : ℚ)
  center := (196224999999999999 / 200000000000000000 : ℚ)
  supportValue := (2057132563786083 / 10000000000000000 : ℚ)
  supportSlope := (-3203172598814257 / 5000000000000000 : ℚ)
  oldCenter := (2057132563786083 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2238
  oldLo := (20549999999999999 / 100000000000000000 : ℚ)
  oldHi := (20599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_547]
}

noncomputable def cell_14277 : Cell := { cellDefaults with
  domain := ⟨(98125000000000001 / 100000000000000000 : ℚ), (24537500000000001 / 25000000000000000 : ℚ)⟩
  r := (40521110015301 / 100000000000000 : ℚ)
  w := (11924412889153 / 10000000000000 : ℚ)
  center := (39255000000000001 / 40000000000000000 : ℚ)
  supportValue := (64235364659779 / 312500000000000 : ℚ)
  supportSlope := (-3200509441752713 / 5000000000000000 : ℚ)
  oldCenter := (64235364659779 / 312500000000000 : ℚ)
  newCoefficients := coefficients_2238
  oldHi := (20599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_546, piece_547]
}

noncomputable def cell_14278 : Cell := { cellDefaults with
  domain := ⟨(24537500000000001 / 25000000000000000 : ℚ), (98175000000000001 / 100000000000000000 : ℚ)⟩
  r := (10126412170171 / 25000000000000 : ℚ)
  w := (2383967795109 / 2000000000000 : ℚ)
  center := (39265000000000001 / 40000000000000000 : ℚ)
  supportValue := (4112841402901683 / 20000000000000000 : ℚ)
  supportSlope := (-400073125112941 / 625000000000000 : ℚ)
  oldCenter := (4112841402901683 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2239
  oldLo := (20549999999999999 / 100000000000000000 : ℚ)
  oldHi := (20599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_547]
}

noncomputable def cell_14279 : Cell := { cellDefaults with
  domain := ⟨(98175000000000001 / 100000000000000000 : ℚ), (49099999999999999 / 50000000000000000 : ℚ)⟩
  r := (10126412170171 / 25000000000000 : ℚ)
  w := (2383967795109 / 2000000000000 : ℚ)
  center := (196374999999999999 / 200000000000000000 : ℚ)
  supportValue := (10274105315233273 / 50000000000000000 : ℚ)
  supportSlope := (-6396421691690847 / 10000000000000000 : ℚ)
  oldCenter := (10274105315233273 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2239
  oldHi := (20599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_546, piece_547]
}

noncomputable def cell_14280 : Cell := { cellDefaults with
  domain := ⟨(49099999999999999 / 50000000000000000 : ℚ), (98225000000000001 / 100000000000000000 : ℚ)⟩
  r := (20245098305901 / 50000000000000 : ℚ)
  w := (11915262627397 / 10000000000000 : ℚ)
  center := (196424999999999999 / 200000000000000000 : ℚ)
  supportValue := (2055710660247887 / 10000000000000000 : ℚ)
  supportSlope := (-40934903833 / 64000000000 : ℚ)
  oldCenter := (2055710660247887 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2240
  oldHi := (20599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_546, piece_547]
}

noncomputable def cell_14281 : Cell := { cellDefaults with
  domain := ⟨(98225000000000001 / 100000000000000000 : ℚ), (24562500000000001 / 25000000000000000 : ℚ)⟩
  r := (20245098305901 / 50000000000000 : ℚ)
  w := (11915262627397 / 10000000000000 : ℚ)
  center := (39295000000000001 / 40000000000000000 : ℚ)
  supportValue := (1027056084859689 / 5000000000000000 : ℚ)
  supportSlope := (-6391758401442027 / 10000000000000000 : ℚ)
  oldCenter := (1027056084859689 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2240
  oldPieces := [piece_546]
}

noncomputable def cell_14282 : Cell := { cellDefaults with
  domain := ⟨(24562500000000001 / 25000000000000000 : ℚ), (98275000000000001 / 100000000000000000 : ℚ)⟩
  r := (40474752159817 / 100000000000000 : ℚ)
  w := (2382136214679 / 2000000000000 : ℚ)
  center := (39305000000000001 / 40000000000000000 : ℚ)
  supportValue := (10275015328178537 / 50000000000000000 : ℚ)
  supportSlope := (-6391494092013661 / 10000000000000000 : ℚ)
  oldCenter := (10275015328178537 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2241
  oldHi := (20599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_546, piece_547]
}

noncomputable def cell_14283 : Cell := { cellDefaults with
  domain := ⟨(98275000000000001 / 100000000000000000 : ℚ), (49149999999999999 / 50000000000000000 : ℚ)⟩
  r := (40474752159817 / 100000000000000 : ℚ)
  w := (2382136214679 / 2000000000000 : ℚ)
  center := (196574999999999999 / 200000000000000000 : ℚ)
  supportValue := (2053405720976607 / 10000000000000000 : ℚ)
  supportSlope := (-798326139560919 / 1250000000000000 : ℚ)
  oldCenter := (2053405720976607 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2241
  oldPieces := [piece_546]
}

noncomputable def cell_14284 : Cell := { cellDefaults with
  domain := ⟨(49149999999999999 / 50000000000000000 : ℚ), (98320391061452509 / 100000000000000000 : ℚ)⟩
  r := (40459315881721 / 100000000000000 : ℚ)
  w := (5953048102863 / 5000000000000 : ℚ)
  center := (196620391061452507 / 200000000000000000 : ℚ)
  supportValue := (20544445992326407 / 100000000000000000 : ℚ)
  supportSlope := (-255496356869033 / 400000000000000 : ℚ)
  oldCenter := (20544445992326407 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2242
  oldHi := (20599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_546, piece_547]
}

noncomputable def cell_14285 : Cell := { cellDefaults with
  domain := ⟨(98320391061452509 / 100000000000000000 : ℚ), (4917039106145251 / 5000000000000000 : ℚ)⟩
  r := (40459315881721 / 100000000000000 : ℚ)
  w := (5953048102863 / 5000000000000 : ℚ)
  center := (196661173184357529 / 200000000000000000 : ℚ)
  supportValue := (821257031189937 / 4000000000000000 : ℚ)
  supportSlope := (-6382997081043101 / 10000000000000000 : ℚ)
  oldCenter := (821257031189937 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_2242
  oldPieces := [piece_546]
}

noncomputable def cell_14286 : Cell := { cellDefaults with
  domain := ⟨(4917039106145251 / 5000000000000000 : ℚ), (24587500000000001 / 25000000000000000 : ℚ)⟩
  r := (40459315881721 / 100000000000000 : ℚ)
  w := (5953048102863 / 5000000000000 : ℚ)
  center := (3073293470670391 / 3125000000000000 : ℚ)
  supportValue := (20521960030894393 / 100000000000000000 : ℚ)
  supportSlope := (-637973027805383 / 1000000000000000 : ℚ)
  oldCenter := (20521960030894393 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2243
  oldPieces := [piece_546]
}

noncomputable def cell_14287 : Cell := { cellDefaults with
  domain := ⟨(24587500000000001 / 25000000000000000 : ℚ), (196750000000000003 / 200000000000000000 : ℚ)⟩
  r := (20221944724053 / 50000000000000 : ℚ)
  w := (11901510244959 / 10000000000000 : ℚ)
  center := (393450000000000011 / 400000000000000000 : ℚ)
  supportValue := (410718655639499 / 2000000000000000 : ℚ)
  supportSlope := (-255274215555471 / 400000000000000 : ℚ)
  oldCenter := (410718655639499 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2244
  oldPieces := [piece_546]
}

noncomputable def cell_14288 : Cell := { cellDefaults with
  domain := ⟨(196750000000000003 / 200000000000000000 : ℚ), (98399999999999999 / 100000000000000000 : ℚ)⟩
  r := (20221944724053 / 50000000000000 : ℚ)
  w := (11901510244959 / 10000000000000 : ℚ)
  center := (393550000000000001 / 400000000000000000 : ℚ)
  supportValue := (20519985019974923 / 100000000000000000 : ℚ)
  supportSlope := (-6376343714756343 / 10000000000000000 : ℚ)
  oldCenter := (20519985019974923 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2244
  oldPieces := [piece_546]
}

noncomputable def cell_14289 : Cell := { cellDefaults with
  domain := ⟨(98399999999999999 / 100000000000000000 : ℚ), (196850000000000003 / 200000000000000000 : ℚ)⟩
  r := (40428470870073 / 100000000000000 : ℚ)
  w := (11896920140833 / 10000000000000 : ℚ)
  center := (393650000000000001 / 400000000000000000 : ℚ)
  supportValue := (20528913881936717 / 100000000000000000 : ℚ)
  supportSlope := (-6376730498833167 / 10000000000000000 : ℚ)
  oldCenter := (20528913881936717 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2245
  oldPieces := [piece_546]
}

noncomputable def cell_14290 : Cell := { cellDefaults with
  domain := ⟨(196850000000000003 / 200000000000000000 : ℚ), (24612500000000001 / 25000000000000000 : ℚ)⟩
  r := (40428470870073 / 100000000000000 : ℚ)
  w := (11896920140833 / 10000000000000 : ℚ)
  center := (393750000000000011 / 400000000000000000 : ℚ)
  supportValue := (2051297892063241 / 10000000000000000 : ℚ)
  supportSlope := (-9955043831093 / 15625000000000 : ℚ)
  oldCenter := (2051297892063241 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2245
  oldPieces := [piece_546]
}

noncomputable def cell_14291 : Cell := { cellDefaults with
  domain := ⟨(24612500000000001 / 25000000000000000 : ℚ), (196950000000000003 / 200000000000000000 : ℚ)⟩
  r := (20206530651449 / 50000000000000 : ℚ)
  w := (11892325971897 / 10000000000000 : ℚ)
  center := (393850000000000011 / 400000000000000000 : ℚ)
  supportValue := (410438317718201 / 2000000000000000 : ℚ)
  supportSlope := (-1274323453858933 / 2000000000000000 : ℚ)
  oldCenter := (410438317718201 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2246
  oldPieces := [piece_546]
}

noncomputable def cell_14292 : Cell := { cellDefaults with
  domain := ⟨(196950000000000003 / 200000000000000000 : ℚ), (98499999999999999 / 100000000000000000 : ℚ)⟩
  r := (20206530651449 / 50000000000000 : ℚ)
  w := (11892325971897 / 10000000000000 : ℚ)
  center := (393950000000000001 / 400000000000000000 : ℚ)
  supportValue := (10252996848093597 / 50000000000000000 : ℚ)
  supportSlope := (-6366284618904509 / 10000000000000000 : ℚ)
  oldCenter := (10252996848093597 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2246
  oldLo := (20449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_545, piece_546]
}

noncomputable def cell_14293 : Cell := { cellDefaults with
  domain := ⟨(98499999999999999 / 100000000000000000 : ℚ), (197050000000000003 / 200000000000000000 : ℚ)⟩
  r := (5049707561259 / 12500000000000 : ℚ)
  w := (11887730380541 / 10000000000000 : ℚ)
  center := (394050000000000001 / 400000000000000000 : ℚ)
  supportValue := (10257467418962529 / 50000000000000000 : ℚ)
  supportSlope := (-6366514483892501 / 10000000000000000 : ℚ)
  oldCenter := (10257467418962529 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2247
  oldPieces := [piece_546]
}

noncomputable def cell_14294 : Cell := { cellDefaults with
  domain := ⟨(197050000000000003 / 200000000000000000 : ℚ), (24637500000000001 / 25000000000000000 : ℚ)⟩
  r := (5049707561259 / 12500000000000 : ℚ)
  w := (11887730380541 / 10000000000000 : ℚ)
  center := (394150000000000011 / 400000000000000000 : ℚ)
  supportValue := (160148634313519 / 781250000000000 : ℚ)
  supportSlope := (-99402393252773 / 156250000000000 : ℚ)
  oldCenter := (160148634313519 / 781250000000000 : ℚ)
  newCoefficients := coefficients_2247
  oldLo := (20449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_545, piece_546]
}

noncomputable def cell_14295 : Cell := { cellDefaults with
  domain := ⟨(24637500000000001 / 25000000000000000 : ℚ), (197150000000000003 / 200000000000000000 : ℚ)⟩
  r := (10095567108151 / 25000000000000 : ℚ)
  w := (5941565842531 / 5000000000000 : ℚ)
  center := (394250000000000011 / 400000000000000000 : ℚ)
  supportValue := (20507973374836633 / 100000000000000000 : ℚ)
  supportSlope := (-6361422901793393 / 10000000000000000 : ℚ)
  oldCenter := (20507973374836633 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2248
  oldPieces := [piece_546]
}

noncomputable def cell_14296 : Cell := { cellDefaults with
  domain := ⟨(197150000000000003 / 200000000000000000 : ℚ), (98599999999999999 / 100000000000000000 : ℚ)⟩
  r := (10095567108151 / 25000000000000 : ℚ)
  w := (5941565842531 / 5000000000000 : ℚ)
  center := (394350000000000001 / 400000000000000000 : ℚ)
  supportValue := (10246037521432057 / 50000000000000000 : ℚ)
  supportSlope := (-6357228617369173 / 10000000000000000 : ℚ)
  oldCenter := (10246037521432057 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2248
  oldLo := (20449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_545, piece_546]
}

noncomputable def cell_14297 : Cell := { cellDefaults with
  domain := ⟨(98599999999999999 / 100000000000000000 : ℚ), (197250000000000003 / 200000000000000000 : ℚ)⟩
  r := (8073376847487 / 20000000000000 : ℚ)
  w := (11878527775317 / 10000000000000 : ℚ)
  center := (394450000000000001 / 400000000000000000 : ℚ)
  supportValue := (512525895771381 / 2500000000000000 : ℚ)
  supportSlope := (-6356903909573917 / 10000000000000000 : ℚ)
  oldCenter := (512525895771381 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_2249
  oldLo := (20449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_545, piece_546]
}

noncomputable def cell_14298 : Cell := { cellDefaults with
  domain := ⟨(197250000000000003 / 200000000000000000 : ℚ), (24662500000000001 / 25000000000000000 : ℚ)⟩
  r := (8073376847487 / 20000000000000 : ℚ)
  w := (11878527775317 / 10000000000000 : ℚ)
  center := (394550000000000011 / 400000000000000000 : ℚ)
  supportValue := (4097029758673773 / 20000000000000000 : ℚ)
  supportSlope := (-63521515825509 / 100000000000000 : ℚ)
  oldCenter := (4097029758673773 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2249
  oldLo := (20449999999999999 / 100000000000000000 : ℚ)
  oldHi := (20499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_545]
}

noncomputable def cell_14299 : Cell := { cellDefaults with
  domain := ⟨(24662500000000001 / 25000000000000000 : ℚ), (197350000000000003 / 200000000000000000 : ℚ)⟩
  r := (40351509117093 / 100000000000000 : ℚ)
  w := (2374784229249 / 2000000000000 : ℚ)
  center := (394650000000000011 / 400000000000000000 : ℚ)
  supportValue := (2561764452405213 / 12500000000000000 : ℚ)
  supportSlope := (-6352391854538921 / 10000000000000000 : ℚ)
  oldCenter := (2561764452405213 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2250
  oldLo := (20449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_545, piece_546]
}

theorem check_14250 : cell_14250.check = true := by
  decide +kernel

theorem check_14251 : cell_14251.check = true := by
  decide +kernel

theorem check_14252 : cell_14252.check = true := by
  decide +kernel

theorem check_14253 : cell_14253.check = true := by
  decide +kernel

theorem check_14254 : cell_14254.check = true := by
  decide +kernel

theorem check_14255 : cell_14255.check = true := by
  decide +kernel

theorem check_14256 : cell_14256.check = true := by
  decide +kernel

theorem check_14257 : cell_14257.check = true := by
  decide +kernel

theorem check_14258 : cell_14258.check = true := by
  decide +kernel

theorem check_14259 : cell_14259.check = true := by
  decide +kernel

theorem check_14260 : cell_14260.check = true := by
  decide +kernel

theorem check_14261 : cell_14261.check = true := by
  decide +kernel

theorem check_14262 : cell_14262.check = true := by
  decide +kernel

theorem check_14263 : cell_14263.check = true := by
  decide +kernel

theorem check_14264 : cell_14264.check = true := by
  decide +kernel

theorem check_14265 : cell_14265.check = true := by
  decide +kernel

theorem check_14266 : cell_14266.check = true := by
  decide +kernel

theorem check_14267 : cell_14267.check = true := by
  decide +kernel

theorem check_14268 : cell_14268.check = true := by
  decide +kernel

theorem check_14269 : cell_14269.check = true := by
  decide +kernel

theorem check_14270 : cell_14270.check = true := by
  decide +kernel

theorem check_14271 : cell_14271.check = true := by
  decide +kernel

theorem check_14272 : cell_14272.check = true := by
  decide +kernel

theorem check_14273 : cell_14273.check = true := by
  decide +kernel

theorem check_14274 : cell_14274.check = true := by
  decide +kernel

theorem check_14275 : cell_14275.check = true := by
  decide +kernel

theorem check_14276 : cell_14276.check = true := by
  decide +kernel

theorem check_14277 : cell_14277.check = true := by
  decide +kernel

theorem check_14278 : cell_14278.check = true := by
  decide +kernel

theorem check_14279 : cell_14279.check = true := by
  decide +kernel

theorem check_14280 : cell_14280.check = true := by
  decide +kernel

theorem check_14281 : cell_14281.check = true := by
  decide +kernel

theorem check_14282 : cell_14282.check = true := by
  decide +kernel

theorem check_14283 : cell_14283.check = true := by
  decide +kernel

theorem check_14284 : cell_14284.check = true := by
  decide +kernel

theorem check_14285 : cell_14285.check = true := by
  decide +kernel

theorem check_14286 : cell_14286.check = true := by
  decide +kernel

theorem check_14287 : cell_14287.check = true := by
  decide +kernel

theorem check_14288 : cell_14288.check = true := by
  decide +kernel

theorem check_14289 : cell_14289.check = true := by
  decide +kernel

theorem check_14290 : cell_14290.check = true := by
  decide +kernel

theorem check_14291 : cell_14291.check = true := by
  decide +kernel

theorem check_14292 : cell_14292.check = true := by
  decide +kernel

theorem check_14293 : cell_14293.check = true := by
  decide +kernel

theorem check_14294 : cell_14294.check = true := by
  decide +kernel

theorem check_14295 : cell_14295.check = true := by
  decide +kernel

theorem check_14296 : cell_14296.check = true := by
  decide +kernel

theorem check_14297 : cell_14297.check = true := by
  decide +kernel

theorem check_14298 : cell_14298.check = true := by
  decide +kernel

theorem check_14299 : cell_14299.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_14250, cell_14251, cell_14252, cell_14253, cell_14254, cell_14255, cell_14256, cell_14257, cell_14258, cell_14259, cell_14260, cell_14261, cell_14262, cell_14263, cell_14264, cell_14265, cell_14266, cell_14267, cell_14268, cell_14269, cell_14270, cell_14271, cell_14272, cell_14273, cell_14274, cell_14275, cell_14276, cell_14277, cell_14278, cell_14279, cell_14280, cell_14281, cell_14282, cell_14283, cell_14284, cell_14285, cell_14286, cell_14287, cell_14288, cell_14289, cell_14290, cell_14291, cell_14292, cell_14293, cell_14294, cell_14295, cell_14296, cell_14297, cell_14298, cell_14299]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_14250, check_14251, check_14252, check_14253, check_14254, check_14255, check_14256, check_14257, check_14258, check_14259, check_14260, check_14261, check_14262, check_14263, check_14264, check_14265, check_14266, check_14267, check_14268, check_14269, check_14270, check_14271, check_14272, check_14273, check_14274, check_14275, check_14276, check_14277, check_14278, check_14279, check_14280, check_14281, check_14282, check_14283, check_14284, check_14285, check_14286, check_14287, check_14288, check_14289, check_14290, check_14291, check_14292, check_14293, check_14294, check_14295, check_14296, check_14297, check_14298, check_14299, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0285

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0285
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0285
open AnalyticBounds.ExpressionCertificate

theorem linked_14250 : Linked cell_14250 pieces := by
  link_source cell_14250 with piece_2224 using piece_2224_mem, ⟨piece_548_mem, piece_549_mem⟩

theorem linked_14251 : Linked cell_14251 pieces := by
  link_source cell_14251 with piece_2225 using piece_2225_mem, piece_549_mem

theorem linked_14252 : Linked cell_14252 pieces := by
  link_source cell_14252 with piece_2225 using piece_2225_mem, ⟨piece_548_mem, piece_549_mem⟩

theorem linked_14253 : Linked cell_14253 pieces := by
  link_source cell_14253 with piece_2226 using piece_2226_mem, ⟨piece_548_mem, piece_549_mem⟩

theorem linked_14254 : Linked cell_14254 pieces := by
  link_source cell_14254 with piece_2226 using piece_2226_mem, piece_548_mem

theorem linked_14255 : Linked cell_14255 pieces := by
  link_source cell_14255 with piece_2227 using piece_2227_mem, ⟨piece_548_mem, piece_549_mem⟩

theorem linked_14256 : Linked cell_14256 pieces := by
  link_source cell_14256 with piece_2227 using piece_2227_mem, piece_548_mem

theorem linked_14257 : Linked cell_14257 pieces := by
  link_source cell_14257 with piece_2228 using piece_2228_mem, piece_548_mem

theorem linked_14258 : Linked cell_14258 pieces := by
  link_source cell_14258 with piece_2228 using piece_2228_mem, piece_548_mem

theorem linked_14259 : Linked cell_14259 pieces := by
  link_source cell_14259 with piece_2229 using piece_2229_mem, piece_548_mem

theorem linked_14260 : Linked cell_14260 pieces := by
  link_source cell_14260 with piece_2229 using piece_2229_mem, piece_548_mem

theorem linked_14261 : Linked cell_14261 pieces := by
  link_source cell_14261 with piece_2230 using piece_2230_mem, piece_548_mem

theorem linked_14262 : Linked cell_14262 pieces := by
  link_source cell_14262 with piece_2230 using piece_2230_mem, piece_548_mem

theorem linked_14263 : Linked cell_14263 pieces := by
  link_source cell_14263 with piece_2231 using piece_2231_mem, ⟨piece_547_mem, piece_548_mem⟩

theorem linked_14264 : Linked cell_14264 pieces := by
  link_source cell_14264 with piece_2232 using piece_2232_mem, piece_548_mem

theorem linked_14265 : Linked cell_14265 pieces := by
  link_source cell_14265 with piece_2232 using piece_2232_mem, ⟨piece_547_mem, piece_548_mem⟩

theorem linked_14266 : Linked cell_14266 pieces := by
  link_source cell_14266 with piece_2233 using piece_2233_mem, ⟨piece_547_mem, piece_548_mem⟩

theorem linked_14267 : Linked cell_14267 pieces := by
  link_source cell_14267 with piece_2233 using piece_2233_mem, piece_547_mem

theorem linked_14268 : Linked cell_14268 pieces := by
  link_source cell_14268 with piece_2234 using piece_2234_mem, ⟨piece_547_mem, piece_548_mem⟩

theorem linked_14269 : Linked cell_14269 pieces := by
  link_source cell_14269 with piece_2234 using piece_2234_mem, piece_547_mem

theorem linked_14270 : Linked cell_14270 pieces := by
  link_source cell_14270 with piece_2235 using piece_2235_mem, ⟨piece_547_mem, piece_548_mem⟩

theorem linked_14271 : Linked cell_14271 pieces := by
  link_source cell_14271 with piece_2235 using piece_2235_mem, piece_547_mem

theorem linked_14272 : Linked cell_14272 pieces := by
  link_source cell_14272 with piece_2236 using piece_2236_mem, piece_547_mem

theorem linked_14273 : Linked cell_14273 pieces := by
  link_source cell_14273 with piece_2236 using piece_2236_mem, piece_547_mem

theorem linked_14274 : Linked cell_14274 pieces := by
  link_source cell_14274 with piece_2237 using piece_2237_mem, piece_547_mem

theorem linked_14275 : Linked cell_14275 pieces := by
  link_source cell_14275 with piece_2237 using piece_2237_mem, piece_547_mem

theorem linked_14276 : Linked cell_14276 pieces := by
  link_source cell_14276 with piece_2238 using piece_2238_mem, piece_547_mem

theorem linked_14277 : Linked cell_14277 pieces := by
  link_source cell_14277 with piece_2238 using piece_2238_mem, ⟨piece_546_mem, piece_547_mem⟩

theorem linked_14278 : Linked cell_14278 pieces := by
  link_source cell_14278 with piece_2239 using piece_2239_mem, piece_547_mem

theorem linked_14279 : Linked cell_14279 pieces := by
  link_source cell_14279 with piece_2239 using piece_2239_mem, ⟨piece_546_mem, piece_547_mem⟩

theorem linked_14280 : Linked cell_14280 pieces := by
  link_source cell_14280 with piece_2240 using piece_2240_mem, ⟨piece_546_mem, piece_547_mem⟩

theorem linked_14281 : Linked cell_14281 pieces := by
  link_source cell_14281 with piece_2240 using piece_2240_mem, piece_546_mem

theorem linked_14282 : Linked cell_14282 pieces := by
  link_source cell_14282 with piece_2241 using piece_2241_mem, ⟨piece_546_mem, piece_547_mem⟩

theorem linked_14283 : Linked cell_14283 pieces := by
  link_source cell_14283 with piece_2241 using piece_2241_mem, piece_546_mem

theorem linked_14284 : Linked cell_14284 pieces := by
  link_source cell_14284 with piece_2242 using piece_2242_mem, ⟨piece_546_mem, piece_547_mem⟩

theorem linked_14285 : Linked cell_14285 pieces := by
  link_source cell_14285 with piece_2242 using piece_2242_mem, piece_546_mem

theorem linked_14286 : Linked cell_14286 pieces := by
  link_source cell_14286 with piece_2243 using piece_2243_mem, piece_546_mem

theorem linked_14287 : Linked cell_14287 pieces := by
  link_source cell_14287 with piece_2244 using piece_2244_mem, piece_546_mem

theorem linked_14288 : Linked cell_14288 pieces := by
  link_source cell_14288 with piece_2244 using piece_2244_mem, piece_546_mem

theorem linked_14289 : Linked cell_14289 pieces := by
  link_source cell_14289 with piece_2245 using piece_2245_mem, piece_546_mem

theorem linked_14290 : Linked cell_14290 pieces := by
  link_source cell_14290 with piece_2245 using piece_2245_mem, piece_546_mem

theorem linked_14291 : Linked cell_14291 pieces := by
  link_source cell_14291 with piece_2246 using piece_2246_mem, piece_546_mem

theorem linked_14292 : Linked cell_14292 pieces := by
  link_source cell_14292 with piece_2246 using piece_2246_mem, ⟨piece_545_mem, piece_546_mem⟩

theorem linked_14293 : Linked cell_14293 pieces := by
  link_source cell_14293 with piece_2247 using piece_2247_mem, piece_546_mem

theorem linked_14294 : Linked cell_14294 pieces := by
  link_source cell_14294 with piece_2247 using piece_2247_mem, ⟨piece_545_mem, piece_546_mem⟩

theorem linked_14295 : Linked cell_14295 pieces := by
  link_source cell_14295 with piece_2248 using piece_2248_mem, piece_546_mem

theorem linked_14296 : Linked cell_14296 pieces := by
  link_source cell_14296 with piece_2248 using piece_2248_mem, ⟨piece_545_mem, piece_546_mem⟩

theorem linked_14297 : Linked cell_14297 pieces := by
  link_source cell_14297 with piece_2249 using piece_2249_mem, ⟨piece_545_mem, piece_546_mem⟩

theorem linked_14298 : Linked cell_14298 pieces := by
  link_source cell_14298 with piece_2249 using piece_2249_mem, piece_545_mem

theorem linked_14299 : Linked cell_14299 pieces := by
  link_source cell_14299 with piece_2250 using piece_2250_mem, ⟨piece_545_mem, piece_546_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0285.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0285.cells,List.forall_mem_cons]
  exact ⟨linked_14250, linked_14251, linked_14252, linked_14253, linked_14254, linked_14255, linked_14256, linked_14257, linked_14258, linked_14259, linked_14260, linked_14261, linked_14262, linked_14263, linked_14264, linked_14265, linked_14266, linked_14267, linked_14268, linked_14269, linked_14270, linked_14271, linked_14272, linked_14273, linked_14274, linked_14275, linked_14276, linked_14277, linked_14278, linked_14279, linked_14280, linked_14281, linked_14282, linked_14283, linked_14284, linked_14285, linked_14286, linked_14287, linked_14288, linked_14289, linked_14290, linked_14291, linked_14292, linked_14293, linked_14294, linked_14295, linked_14296, linked_14297, linked_14298, linked_14299, by simp⟩

theorem covered : covers (48737500000000003 / 50000000000000000 : ℚ) (197350000000000003 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0285.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0285
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0286
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(197350000000000003 / 200000000000000000 : ℚ), (98699999999999999 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (8058018701213 / 20000000000000 : ℚ)
  w := (11855464474747 / 10000000000000 : ℚ)
  center := (394750000000000001 / 400000000000000000 : ℚ)
  supportValue := (5119560263324921 / 25000000000000000 : ℚ)
  supportSlope := (-3173542607376773 / 5000000000000000 : ℚ)
  oldCenter := (5119560263324921 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2251
  oldLo := (20399999999999999 / 100000000000000000 : ℚ)
  oldHi := (20449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_544]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_14300 : Cell := { cellDefaults with
  r := (40351509117093 / 100000000000000 : ℚ)
  w := (2374784229249 / 2000000000000 : ℚ)
  newCoefficients := coefficients_2250
  oldLo := (20449999999999999 / 100000000000000000 : ℚ)
  oldHi := (20499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_545]
}

noncomputable def cell_14301 : Cell := { cellDefaults with
  domain := ⟨(98699999999999999 / 100000000000000000 : ℚ), (197450000000000003 / 200000000000000000 : ℚ)⟩
  r := (10084035691539 / 25000000000000 : ℚ)
  w := (2967328125029 / 2500000000000 : ℚ)
  center := (394850000000000001 / 400000000000000000 : ℚ)
  supportValue := (2048721293013807 / 10000000000000000 : ℚ)
  supportSlope := (-3173746101422197 / 5000000000000000 : ℚ)
  oldCenter := (2048721293013807 / 10000000000000000 : ℚ)
  oldLo := (20449999999999999 / 100000000000000000 : ℚ)
  oldHi := (20499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_545]
}

noncomputable def cell_14302 : Cell := { cellDefaults with
  domain := ⟨(197450000000000003 / 200000000000000000 : ℚ), (24687500000000001 / 25000000000000000 : ℚ)⟩
  r := (10084035691539 / 25000000000000 : ℚ)
  w := (2967328125029 / 2500000000000 : ℚ)
  center := (394950000000000011 / 400000000000000000 : ℚ)
  supportValue := (409427020300183 / 2000000000000000 : ℚ)
  supportSlope := (-3171014725870907 / 5000000000000000 : ℚ)
  oldCenter := (409427020300183 / 2000000000000000 : ℚ)
  oldLo := (20449999999999999 / 100000000000000000 : ℚ)
  oldHi := (20499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_545]
}

noncomputable def cell_14303 : Cell := { cellDefaults with
  domain := ⟨(24687500000000001 / 25000000000000000 : ℚ), (197550000000000003 / 200000000000000000 : ℚ)⟩
  r := (5040098047727 / 12500000000000 : ℚ)
  w := (2372939904807 / 2000000000000 : ℚ)
  center := (395050000000000011 / 400000000000000000 : ℚ)
  supportValue := (2048033252290041 / 10000000000000000 : ℚ)
  supportSlope := (-6342439186722361 / 10000000000000000 : ℚ)
  oldCenter := (2048033252290041 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2252
  oldLo := (20449999999999999 / 100000000000000000 : ℚ)
  oldHi := (20499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_545]
}

noncomputable def cell_14304 : Cell := { cellDefaults with
  domain := ⟨(197550000000000003 / 200000000000000000 : ℚ), (98799999999999999 / 100000000000000000 : ℚ)⟩
  r := (5040098047727 / 12500000000000 : ℚ)
  w := (2372939904807 / 2000000000000 : ℚ)
  center := (395150000000000001 / 400000000000000000 : ℚ)
  supportValue := (20464483228948727 / 100000000000000000 : ℚ)
  supportSlope := (-633698552973857 / 1000000000000000 : ℚ)
  oldCenter := (20464483228948727 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2252
  oldLo := (20449999999999999 / 100000000000000000 : ℚ)
  oldHi := (20499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_545]
}

noncomputable def cell_14305 : Cell := { cellDefaults with
  domain := ⟨(98799999999999999 / 100000000000000000 : ℚ), (49412500000000001 / 50000000000000000 : ℚ)⟩
  r := (4030543378733 / 10000000000000 : ℚ)
  w := (593004090363 / 500000000000 : ℚ)
  center := (197625000000000001 / 200000000000000000 : ℚ)
  supportValue := (2047347521022611 / 10000000000000000 : ℚ)
  supportSlope := (-633739823736969 / 1000000000000000 : ℚ)
  oldCenter := (2047347521022611 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2253
  oldLo := (20449999999999999 / 100000000000000000 : ℚ)
  oldHi := (20499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_545]
}

noncomputable def cell_14306 : Cell := { cellDefaults with
  domain := ⟨(49412500000000001 / 50000000000000000 : ℚ), (19770000000000001 / 20000000000000000 : ℚ)⟩
  r := (4030543378733 / 10000000000000 : ℚ)
  w := (593004090363 / 500000000000 : ℚ)
  center := (197675000000000007 / 200000000000000000 : ℚ)
  supportValue := (10228819253660851 / 50000000000000000 : ℚ)
  supportSlope := (-6331977771269277 / 10000000000000000 : ℚ)
  oldCenter := (10228819253660851 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2253
  oldHi := (20499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_544, piece_545]
}

noncomputable def cell_14307 : Cell := { cellDefaults with
  domain := ⟨(19770000000000001 / 20000000000000000 : ℚ), (39548770949720671 / 40000000000000000 : ℚ)⟩
  center := (79088770949720673 / 80000000000000000 : ℚ)
  supportValue := (20467602806420981 / 100000000000000000 : ℚ)
  supportSlope := (-1266540116772323 / 2000000000000000 : ℚ)
  oldCenter := (20467602806420981 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2254
  oldLo := (20449999999999999 / 100000000000000000 : ℚ)
  oldHi := (20499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_545]
}

noncomputable def cell_14308 : Cell := { cellDefaults with
  domain := ⟨(39548770949720671 / 40000000000000000 : ℚ), (1977877094972067 / 2000000000000000 : ℚ)⟩
  center := (79106312849162011 / 80000000000000000 : ℚ)
  supportValue := (20453722072829297 / 100000000000000000 : ℚ)
  supportSlope := (-3164116610056311 / 5000000000000000 : ℚ)
  oldCenter := (20453722072829297 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2254
  oldHi := (20499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_544, piece_545]
}

noncomputable def cell_14309 : Cell := { cellDefaults with
  domain := ⟨(1977877094972067 / 2000000000000000 : ℚ), (98899999999999999 / 100000000000000000 : ℚ)⟩
  center := (197793854748603349 / 200000000000000000 : ℚ)
  supportValue := (1022241133236319 / 5000000000000000 : ℚ)
  supportSlope := (-1265233906949109 / 2000000000000000 : ℚ)
  oldCenter := (1022241133236319 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2255
  oldPieces := [piece_544]
}

noncomputable def cell_14310 : Cell := { cellDefaults with
  domain := ⟨(98899999999999999 / 100000000000000000 : ℚ), (49462500000000001 / 50000000000000000 : ℚ)⟩
  r := (40274760912201 / 100000000000000 : ℚ)
  w := (11850842186269 / 10000000000000 : ℚ)
  center := (197825000000000001 / 200000000000000000 : ℚ)
  supportValue := (20459808126442927 / 100000000000000000 : ℚ)
  supportSlope := (-395459085458191 / 625000000000000 : ℚ)
  oldCenter := (20459808126442927 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2256
  oldLo := (20449999999999999 / 100000000000000000 : ℚ)
  oldHi := (20499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_545]
}

noncomputable def cell_14311 : Cell := { cellDefaults with
  domain := ⟨(49462500000000001 / 50000000000000000 : ℚ), (19790000000000001 / 20000000000000000 : ℚ)⟩
  r := (40274760912201 / 100000000000000 : ℚ)
  w := (11850842186269 / 10000000000000 : ℚ)
  center := (197875000000000007 / 200000000000000000 : ℚ)
  supportValue := (20443995304725707 / 100000000000000000 : ℚ)
  supportSlope := (-1264610301774231 / 2000000000000000 : ℚ)
  oldCenter := (20443995304725707 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2256
  oldHi := (20499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_544, piece_545]
}

noncomputable def cell_14312 : Cell := { cellDefaults with
  domain := ⟨(19790000000000001 / 20000000000000000 : ℚ), (49487500000000001 / 50000000000000000 : ℚ)⟩
  r := (40259435432753 / 100000000000000 : ℚ)
  w := (5923106955049 / 5000000000000 : ℚ)
  center := (197925000000000007 / 200000000000000000 : ℚ)
  supportValue := (20453012049487443 / 100000000000000000 : ℚ)
  supportSlope := (-790342382577897 / 1250000000000000 : ℚ)
  oldCenter := (20453012049487443 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2257
  oldHi := (20499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_544, piece_545]
}

noncomputable def cell_14313 : Cell := { cellDefaults with
  domain := ⟨(49487500000000001 / 50000000000000000 : ℚ), (98999999999999999 / 100000000000000000 : ℚ)⟩
  r := (40259435432753 / 100000000000000 : ℚ)
  w := (5923106955049 / 5000000000000 : ℚ)
  center := (197975000000000001 / 200000000000000000 : ℚ)
  supportValue := (1021860517839323 / 5000000000000000 : ℚ)
  supportSlope := (-6318200212798921 / 10000000000000000 : ℚ)
  oldCenter := (1021860517839323 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2257
  oldPieces := [piece_544]
}

noncomputable def cell_14314 : Cell := { cellDefaults with
  domain := ⟨(98999999999999999 / 100000000000000000 : ℚ), (49512500000000001 / 50000000000000000 : ℚ)⟩
  r := (40244120116417 / 100000000000000 : ℚ)
  w := (5920793085009 / 5000000000000 : ℚ)
  center := (198025000000000001 / 200000000000000000 : ℚ)
  supportValue := (4089245408399309 / 20000000000000000 : ℚ)
  supportSlope := (-6318294249371489 / 10000000000000000 : ℚ)
  oldCenter := (4089245408399309 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2258
  oldHi := (20499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_544, piece_545]
}

noncomputable def cell_14315 : Cell := { cellDefaults with
  domain := ⟨(49512500000000001 / 50000000000000000 : ℚ), (19810000000000001 / 20000000000000000 : ℚ)⟩
  r := (40244120116417 / 100000000000000 : ℚ)
  w := (5920793085009 / 5000000000000 : ℚ)
  center := (198075000000000007 / 200000000000000000 : ℚ)
  supportValue := (5107609308369719 / 25000000000000000 : ℚ)
  supportSlope := (-3156603038323057 / 5000000000000000 : ℚ)
  oldCenter := (5107609308369719 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2258
  oldPieces := [piece_544]
}

noncomputable def cell_14316 : Cell := { cellDefaults with
  domain := ⟨(19810000000000001 / 20000000000000000 : ℚ), (49537500000000001 / 50000000000000000 : ℚ)⟩
  r := (20114406329339 / 50000000000000 : ℚ)
  w := (11836953343921 / 10000000000000 : ℚ)
  center := (198125000000000007 / 200000000000000000 : ℚ)
  supportValue := (20439464789106673 / 100000000000000000 : ℚ)
  supportSlope := (-6313636524540513 / 10000000000000000 : ℚ)
  oldCenter := (20439464789106673 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2259
  oldPieces := [piece_544]
}

noncomputable def cell_14317 : Cell := { cellDefaults with
  domain := ⟨(49537500000000001 / 50000000000000000 : ℚ), (99099999999999999 / 100000000000000000 : ℚ)⟩
  r := (20114406329339 / 50000000000000 : ℚ)
  w := (11836953343921 / 10000000000000 : ℚ)
  center := (198175000000000001 / 200000000000000000 : ℚ)
  supportValue := (5105921863469079 / 25000000000000000 : ℚ)
  supportSlope := (-3154110629603291 / 5000000000000000 : ℚ)
  oldCenter := (5105921863469079 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2259
  oldPieces := [piece_544]
}

noncomputable def cell_14318 : Cell := { cellDefaults with
  domain := ⟨(99099999999999999 / 100000000000000000 : ℚ), (49562500000000001 / 50000000000000000 : ℚ)⟩
  r := (5026689112353 / 12500000000000 : ℚ)
  w := (2366463156981 / 2000000000000 : ℚ)
  center := (198225000000000001 / 200000000000000000 : ℚ)
  supportValue := (20432725494513387 / 100000000000000000 : ℚ)
  supportSlope := (-6308654644823573 / 10000000000000000 : ℚ)
  oldCenter := (20432725494513387 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2260
  oldPieces := [piece_544]
}

noncomputable def cell_14319 : Cell := { cellDefaults with
  domain := ⟨(49562500000000001 / 50000000000000000 : ℚ), (19830000000000001 / 20000000000000000 : ℚ)⟩
  r := (5026689112353 / 12500000000000 : ℚ)
  w := (2366463156981 / 2000000000000 : ℚ)
  center := (198275000000000007 / 200000000000000000 : ℚ)
  supportValue := (10208480301391863 / 50000000000000000 : ℚ)
  supportSlope := (-6303248341980393 / 10000000000000000 : ℚ)
  oldCenter := (10208480301391863 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2260
  oldPieces := [piece_544]
}

noncomputable def cell_14320 : Cell := { cellDefaults with
  domain := ⟨(19830000000000001 / 20000000000000000 : ℚ), (49587500000000001 / 50000000000000000 : ℚ)⟩
  r := (1004955572549 / 2500000000000 : ℚ)
  w := (1478459699031 / 1250000000000 : ℚ)
  center := (198325000000000007 / 200000000000000000 : ℚ)
  supportValue := (2553250032208253 / 12500000000000000 : ℚ)
  supportSlope := (-98495035529151 / 156250000000000 : ℚ)
  oldCenter := (2553250032208253 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2261
  oldPieces := [piece_544]
}

noncomputable def cell_14321 : Cell := { cellDefaults with
  domain := ⟨(49587500000000001 / 50000000000000000 : ℚ), (99199999999999999 / 100000000000000000 : ℚ)⟩
  r := (1004955572549 / 2500000000000 : ℚ)
  w := (1478459699031 / 1250000000000 : ℚ)
  center := (198375000000000001 / 200000000000000000 : ℚ)
  supportValue := (20410247785695373 / 100000000000000000 : ℚ)
  supportSlope := (-6298284909368101 / 10000000000000000 : ℚ)
  oldCenter := (20410247785695373 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2261
  oldPieces := [piece_544]
}

noncomputable def cell_14322 : Cell := { cellDefaults with
  domain := ⟨(99199999999999999 / 100000000000000000 : ℚ), (49612500000000001 / 50000000000000000 : ℚ)⟩
  r := (20091470178311 / 50000000000000 : ℚ)
  w := (5911517681289 / 5000000000000 : ℚ)
  center := (198425000000000001 / 200000000000000000 : ℚ)
  supportValue := (1276206067343667 / 6250000000000000 : ℚ)
  supportSlope := (-3149360749639851 / 5000000000000000 : ℚ)
  oldCenter := (1276206067343667 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_2262
  oldPieces := [piece_544]
}

noncomputable def cell_14323 : Cell := { cellDefaults with
  domain := ⟨(49612500000000001 / 50000000000000000 : ℚ), (19850000000000001 / 20000000000000000 : ℚ)⟩
  r := (20091470178311 / 50000000000000 : ℚ)
  w := (5911517681289 / 5000000000000 : ℚ)
  center := (198475000000000007 / 200000000000000000 : ℚ)
  supportValue := (20403556996328637 / 100000000000000000 : ℚ)
  supportSlope := (-6293689311990613 / 10000000000000000 : ℚ)
  oldCenter := (20403556996328637 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2262
  oldLo := (1017877094972067 / 5000000000000000 : ℚ)
  oldPieces := [piece_543, piece_544]
}

noncomputable def cell_14324 : Cell := { cellDefaults with
  domain := ⟨(19850000000000001 / 20000000000000000 : ℚ), (49637500000000001 / 50000000000000000 : ℚ)⟩
  r := (20083832888131 / 50000000000000 : ℚ)
  w := (11818388307643 / 10000000000000 : ℚ)
  center := (198525000000000007 / 200000000000000000 : ℚ)
  supportValue := (4082523315522913 / 20000000000000000 : ℚ)
  supportSlope := (-3146886268132021 / 5000000000000000 : ℚ)
  oldCenter := (4082523315522913 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2263
  oldPieces := [piece_544]
}

noncomputable def cell_14325 : Cell := { cellDefaults with
  domain := ⟨(49637500000000001 / 50000000000000000 : ℚ), (99299999999999999 / 100000000000000000 : ℚ)⟩
  r := (20083832888131 / 50000000000000 : ℚ)
  w := (11818388307643 / 10000000000000 : ℚ)
  center := (198575000000000001 / 200000000000000000 : ℚ)
  supportValue := (10198444106549101 / 50000000000000000 : ℚ)
  supportSlope := (-786161934828261 / 1250000000000000 : ℚ)
  oldCenter := (10198444106549101 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2263
  oldLo := (1017877094972067 / 5000000000000000 : ℚ)
  oldPieces := [piece_543, piece_544]
}

noncomputable def cell_14326 : Cell := { cellDefaults with
  domain := ⟨(99299999999999999 / 100000000000000000 : ℚ), (49662500000000001 / 50000000000000000 : ℚ)⟩
  r := (20076200147859 / 50000000000000 : ℚ)
  w := (11813739179017 / 10000000000000 : ℚ)
  center := (198625000000000001 / 200000000000000000 : ℚ)
  supportValue := (20405953060462323 / 100000000000000000 : ℚ)
  supportSlope := (-3144496266540187 / 5000000000000000 : ℚ)
  oldCenter := (20405953060462323 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2264
  oldLo := (1017877094972067 / 5000000000000000 : ℚ)
  oldPieces := [piece_543, piece_544]
}

noncomputable def cell_14327 : Cell := { cellDefaults with
  domain := ⟨(49662500000000001 / 50000000000000000 : ℚ), (19870000000000001 / 20000000000000000 : ℚ)⟩
  r := (20076200147859 / 50000000000000 : ℚ)
  w := (11813739179017 / 10000000000000 : ℚ)
  center := (198675000000000007 / 200000000000000000 : ℚ)
  supportValue := (20390235667156087 / 100000000000000000 : ℚ)
  supportSlope := (-6284749212296737 / 10000000000000000 : ℚ)
  oldCenter := (20390235667156087 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2264
  oldLo := (1017877094972067 / 5000000000000000 : ℚ)
  oldHi := (20399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_543]
}

noncomputable def cell_14328 : Cell := { cellDefaults with
  domain := ⟨(19870000000000001 / 20000000000000000 : ℚ), (49687500000000001 / 50000000000000000 : ℚ)⟩
  r := (40137142842651 / 100000000000000 : ℚ)
  w := (11809085998353 / 10000000000000 : ℚ)
  center := (198725000000000007 / 200000000000000000 : ℚ)
  supportValue := (407986214019449 / 2000000000000000 : ℚ)
  supportSlope := (-785576276498373 / 1250000000000000 : ℚ)
  oldCenter := (407986214019449 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2265
  oldLo := (1017877094972067 / 5000000000000000 : ℚ)
  oldPieces := [piece_543, piece_544]
}

noncomputable def cell_14329 : Cell := { cellDefaults with
  domain := ⟨(49687500000000001 / 50000000000000000 : ℚ), (99399999999999999 / 100000000000000000 : ℚ)⟩
  r := (40137142842651 / 100000000000000 : ℚ)
  w := (11809085998353 / 10000000000000 : ℚ)
  center := (198775000000000001 / 200000000000000000 : ℚ)
  supportValue := (815344176294469 / 4000000000000000 : ℚ)
  supportSlope := (-392488981793329 / 625000000000000 : ℚ)
  oldCenter := (815344176294469 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_2265
  oldLo := (1017877094972067 / 5000000000000000 : ℚ)
  oldHi := (20399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_543]
}

noncomputable def cell_14330 : Cell := { cellDefaults with
  domain := ⟨(99399999999999999 / 100000000000000000 : ℚ), (198846927374301669 / 200000000000000000 : ℚ)⟩
  r := (2507618310691 / 6250000000000 : ℚ)
  w := (11804428315863 / 10000000000000 : ℚ)
  center := (397646927374301667 / 400000000000000000 : ℚ)
  supportValue := (10196586021677581 / 50000000000000000 : ℚ)
  supportSlope := (-6280397394275841 / 10000000000000000 : ℚ)
  oldCenter := (10196586021677581 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2266
  oldLo := (1017877094972067 / 5000000000000000 : ℚ)
  oldPieces := [piece_543, piece_544]
}

noncomputable def cell_14331 : Cell := { cellDefaults with
  domain := ⟨(198846927374301669 / 200000000000000000 : ℚ), (9944692737430167 / 10000000000000000 : ℚ)⟩
  r := (2507618310691 / 6250000000000 : ℚ)
  w := (11804428315863 / 10000000000000 : ℚ)
  center := (397740782122905009 / 400000000000000000 : ℚ)
  supportValue := (10189220853524253 / 50000000000000000 : ℚ)
  supportSlope := (-784425537469427 / 1250000000000000 : ℚ)
  oldCenter := (10189220853524253 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2266
  oldLo := (1017877094972067 / 5000000000000000 : ℚ)
  oldHi := (20399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_543]
}

noncomputable def cell_14332 : Cell := { cellDefaults with
  domain := ⟨(9944692737430167 / 10000000000000000 : ℚ), (19890000000000001 / 20000000000000000 : ℚ)⟩
  r := (2507618310691 / 6250000000000 : ℚ)
  w := (11804428315863 / 10000000000000 : ℚ)
  center := (7955877094972067 / 8000000000000000 : ℚ)
  supportValue := (2037009894818221 / 10000000000000000 : ℚ)
  supportSlope := (-3136284158202317 / 5000000000000000 : ℚ)
  oldCenter := (2037009894818221 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2267
  oldLo := (1017877094972067 / 5000000000000000 : ℚ)
  oldHi := (20399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_543]
}

noncomputable def cell_14333 : Cell := { cellDefaults with
  domain := ⟨(19890000000000001 / 20000000000000000 : ℚ), (39790000000000001 / 40000000000000000 : ℚ)⟩
  r := (8021330400857 / 20000000000000 : ℚ)
  w := (11799768935899 / 10000000000000 : ℚ)
  center := (79570000000000003 / 80000000000000000 : ℚ)
  supportValue := (20386085012707367 / 100000000000000000 : ℚ)
  supportSlope := (-6275375118683441 / 10000000000000000 : ℚ)
  oldCenter := (20386085012707367 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2268
  oldLo := (1017877094972067 / 5000000000000000 : ℚ)
  oldHi := (20399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_543]
}

noncomputable def cell_14334 : Cell := { cellDefaults with
  domain := ⟨(39790000000000001 / 40000000000000000 : ℚ), (199 / 200 : ℚ)⟩
  r := (8021330400857 / 20000000000000 : ℚ)
  w := (11799768935899 / 10000000000000 : ℚ)
  center := (79590000000000001 / 80000000000000000 : ℚ)
  supportValue := (2546300407838227 / 12500000000000000 : ℚ)
  supportSlope := (-6270014533401107 / 10000000000000000 : ℚ)
  oldCenter := (2546300407838227 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2268
  oldLo := (1017877094972067 / 5000000000000000 : ℚ)
  oldHi := (20399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_543]
}

noncomputable def cell_14335 : Cell := { cellDefaults with
  domain := ⟨(199 / 200 : ℚ), (39810000000000001 / 40000000000000000 : ℚ)⟩
  r := (5011427460377 / 12500000000000 : ℚ)
  w := (11795105824401 / 10000000000000 : ℚ)
  center := (79610000000000001 / 80000000000000000 : ℚ)
  supportValue := (2037950036903103 / 10000000000000000 : ℚ)
  supportSlope := (-3135235598601091 / 5000000000000000 : ℚ)
  oldCenter := (2037950036903103 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2269
  oldLo := (1017877094972067 / 5000000000000000 : ℚ)
  oldHi := (20399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_543]
}

noncomputable def cell_14336 : Cell := { cellDefaults with
  domain := ⟨(39810000000000001 / 40000000000000000 : ℚ), (19910000000000001 / 20000000000000000 : ℚ)⟩
  r := (5011427460377 / 12500000000000 : ℚ)
  w := (11795105824401 / 10000000000000 : ℚ)
  center := (79630000000000003 / 80000000000000000 : ℚ)
  supportValue := (2036383086782561 / 10000000000000000 : ℚ)
  supportSlope := (-6265119571703877 / 10000000000000000 : ℚ)
  oldCenter := (2036383086782561 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2269
  oldLo := (20349999999999999 / 100000000000000000 : ℚ)
  oldHi := (20399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_542, piece_543]
}

noncomputable def cell_14337 : Cell := { cellDefaults with
  domain := ⟨(19910000000000001 / 20000000000000000 : ℚ), (39830000000000001 / 40000000000000000 : ℚ)⟩
  r := (10019048748231 / 25000000000000 : ℚ)
  w := (2947609566229 / 2500000000000 : ℚ)
  center := (79650000000000003 / 80000000000000000 : ℚ)
  supportValue := (10186468986750151 / 50000000000000000 : ℚ)
  supportSlope := (-1253115767312921 / 2000000000000000 : ℚ)
  oldCenter := (10186468986750151 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2270
  oldLo := (1017877094972067 / 5000000000000000 : ℚ)
  oldHi := (20399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_543]
}

noncomputable def cell_14338 : Cell := { cellDefaults with
  domain := ⟨(39830000000000001 / 40000000000000000 : ℚ), (249 / 250 : ℚ)⟩
  r := (10019048748231 / 25000000000000 : ℚ)
  w := (2947609566229 / 2500000000000 : ℚ)
  center := (79670000000000001 / 80000000000000000 : ℚ)
  supportValue := (20357280692152893 / 100000000000000000 : ℚ)
  supportSlope := (-6260283428210571 / 10000000000000000 : ℚ)
  oldCenter := (20357280692152893 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2270
  oldLo := (20299999999999999 / 100000000000000000 : ℚ)
  oldHi := (20399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_541, piece_542, piece_543]
}

noncomputable def cell_14339 : Cell := { cellDefaults with
  domain := ⟨(249 / 250 : ℚ), (39850000000000001 / 40000000000000000 : ℚ)⟩
  r := (5007622337049 / 12500000000000 : ℚ)
  w := (11785768057287 / 10000000000000 : ℚ)
  center := (79690000000000001 / 80000000000000000 : ℚ)
  supportValue := (1018319703350823 / 5000000000000000 : ℚ)
  supportSlope := (-6260696996777599 / 10000000000000000 : ℚ)
  oldCenter := (1018319703350823 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2271
  oldLo := (1017877094972067 / 5000000000000000 : ℚ)
  oldHi := (20399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_543]
}

noncomputable def cell_14340 : Cell := { cellDefaults with
  domain := ⟨(39850000000000001 / 40000000000000000 : ℚ), (19930000000000001 / 20000000000000000 : ℚ)⟩
  r := (5007622337049 / 12500000000000 : ℚ)
  w := (11785768057287 / 10000000000000 : ℚ)
  center := (79710000000000003 / 80000000000000000 : ℚ)
  supportValue := (10175374488880491 / 50000000000000000 : ℚ)
  supportSlope := (-6255951888409147 / 10000000000000000 : ℚ)
  oldCenter := (10175374488880491 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2271
  oldLo := (20299999999999999 / 100000000000000000 : ℚ)
  oldHi := (20399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_541, piece_542, piece_543]
}

noncomputable def cell_14341 : Cell := { cellDefaults with
  domain := ⟨(19930000000000001 / 20000000000000000 : ℚ), (39870000000000001 / 40000000000000000 : ℚ)⟩
  r := (40045771821811 / 100000000000000 : ℚ)
  w := (1472637029211 / 1250000000000 : ℚ)
  center := (79730000000000003 / 80000000000000000 : ℚ)
  supportValue := (10179932902081519 / 50000000000000000 : ℚ)
  supportSlope := (-3127912731155959 / 5000000000000000 : ℚ)
  oldCenter := (10179932902081519 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2272
  oldLo := (20349999999999999 / 100000000000000000 : ℚ)
  oldHi := (20399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_542, piece_543]
}

noncomputable def cell_14342 : Cell := { cellDefaults with
  domain := ⟨(39870000000000001 / 40000000000000000 : ℚ), (997 / 1000 : ℚ)⟩
  r := (40045771821811 / 100000000000000 : ℚ)
  w := (1472637029211 / 1250000000000 : ℚ)
  center := (79750000000000001 / 80000000000000000 : ℚ)
  supportValue := (10172115841246393 / 50000000000000000 : ℚ)
  supportSlope := (-6251625849516621 / 10000000000000000 : ℚ)
  oldCenter := (10172115841246393 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2272
  oldLo := (20299999999999999 / 100000000000000000 : ℚ)
  oldHi := (1017877094972067 / 5000000000000000 : ℚ)
  oldPieces := [piece_541, piece_542]
}

noncomputable def cell_14343 : Cell := { cellDefaults with
  domain := ⟨(997 / 1000 : ℚ), (39890000000000001 / 40000000000000000 : ℚ)⟩
  r := (1000764270933 / 2500000000000 : ℚ)
  w := (11776417263323 / 10000000000000 : ℚ)
  center := (79770000000000001 / 80000000000000000 : ℚ)
  supportValue := (20353365930165773 / 100000000000000000 : ℚ)
  supportSlope := (-6251337772268869 / 10000000000000000 : ℚ)
  oldCenter := (20353365930165773 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2273
  oldLo := (20299999999999999 / 100000000000000000 : ℚ)
  oldHi := (20399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_541, piece_542, piece_543]
}

noncomputable def cell_14344 : Cell := { cellDefaults with
  domain := ⟨(39890000000000001 / 40000000000000000 : ℚ), (19950000000000001 / 20000000000000000 : ℚ)⟩
  r := (1000764270933 / 2500000000000 : ℚ)
  w := (11776417263323 / 10000000000000 : ℚ)
  center := (79790000000000003 / 80000000000000000 : ℚ)
  supportValue := (20337742604837267 / 100000000000000000 : ℚ)
  supportSlope := (-97608397130873 / 156250000000000 : ℚ)
  oldCenter := (20337742604837267 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2273
  oldLo := (20299999999999999 / 100000000000000000 : ℚ)
  oldHi := (20349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_541]
}

noncomputable def cell_14345 : Cell := { cellDefaults with
  domain := ⟨(19950000000000001 / 20000000000000000 : ℚ), (39910000000000001 / 40000000000000000 : ℚ)⟩
  r := (40015379597899 / 100000000000000 : ℚ)
  w := (11771736630673 / 10000000000000 : ℚ)
  center := (79810000000000003 / 80000000000000000 : ℚ)
  supportValue := (2034688067472931 / 10000000000000000 : ℚ)
  supportSlope := (-6247024403900971 / 10000000000000000 : ℚ)
  oldCenter := (2034688067472931 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2274
  oldLo := (20299999999999999 / 100000000000000000 : ℚ)
  oldHi := (1017877094972067 / 5000000000000000 : ℚ)
  oldPieces := [piece_541, piece_542]
}

noncomputable def cell_14346 : Cell := { cellDefaults with
  domain := ⟨(39910000000000001 / 40000000000000000 : ℚ), (499 / 500 : ℚ)⟩
  r := (40015379597899 / 100000000000000 : ℚ)
  w := (11771736630673 / 10000000000000 : ℚ)
  center := (79830000000000001 / 80000000000000000 : ℚ)
  supportValue := (4066253756563083 / 20000000000000000 : ℚ)
  supportSlope := (-24383164236267 / 39062500000000 : ℚ)
  oldCenter := (4066253756563083 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2274
  oldLo := (20299999999999999 / 100000000000000000 : ℚ)
  oldHi := (20349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_541]
}

noncomputable def cell_14347 : Cell := { cellDefaults with
  domain := ⟨(499 / 500 : ℚ), (39930000000000001 / 40000000000000000 : ℚ)⟩
  r := (40000195719533 / 100000000000000 : ℚ)
  w := (183860191629 / 156250000000 : ℚ)
  center := (79850000000000001 / 80000000000000000 : ℚ)
  supportValue := (2034041596652751 / 10000000000000000 : ℚ)
  supportSlope := (-6242568255129741 / 10000000000000000 : ℚ)
  oldCenter := (2034041596652751 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2275
  oldLo := (20299999999999999 / 100000000000000000 : ℚ)
  oldHi := (20349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_541]
}

noncomputable def cell_14348 : Cell := { cellDefaults with
  domain := ⟨(39930000000000001 / 40000000000000000 : ℚ), (19970000000000001 / 20000000000000000 : ℚ)⟩
  r := (40000195719533 / 100000000000000 : ℚ)
  w := (183860191629 / 156250000000 : ℚ)
  center := (79870000000000003 / 80000000000000000 : ℚ)
  supportValue := (10162408088047317 / 50000000000000000 : ℚ)
  supportSlope := (-3118626894282571 / 5000000000000000 : ℚ)
  oldCenter := (10162408088047317 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2275
  oldLo := (20299999999999999 / 100000000000000000 : ℚ)
  oldHi := (20349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_541]
}

noncomputable def cell_14349 : Cell := { cellDefaults with
  domain := ⟨(19970000000000001 / 20000000000000000 : ℚ), (39950000000000001 / 40000000000000000 : ℚ)⟩
  r := (39985019239203 / 100000000000000 : ℚ)
  w := (11762362353087 / 10000000000000 : ℚ)
  center := (79890000000000003 / 80000000000000000 : ℚ)
  supportValue := (406679505669369 / 2000000000000000 : ℚ)
  supportSlope := (-1247547054609957 / 2000000000000000 : ℚ)
  oldCenter := (406679505669369 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2276
  oldLo := (20299999999999999 / 100000000000000000 : ℚ)
  oldHi := (20349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_541]
}

theorem check_14300 : cell_14300.check = true := by
  decide +kernel

theorem check_14301 : cell_14301.check = true := by
  decide +kernel

theorem check_14302 : cell_14302.check = true := by
  decide +kernel

theorem check_14303 : cell_14303.check = true := by
  decide +kernel

theorem check_14304 : cell_14304.check = true := by
  decide +kernel

theorem check_14305 : cell_14305.check = true := by
  decide +kernel

theorem check_14306 : cell_14306.check = true := by
  decide +kernel

theorem check_14307 : cell_14307.check = true := by
  decide +kernel

theorem check_14308 : cell_14308.check = true := by
  decide +kernel

theorem check_14309 : cell_14309.check = true := by
  decide +kernel

theorem check_14310 : cell_14310.check = true := by
  decide +kernel

theorem check_14311 : cell_14311.check = true := by
  decide +kernel

theorem check_14312 : cell_14312.check = true := by
  decide +kernel

theorem check_14313 : cell_14313.check = true := by
  decide +kernel

theorem check_14314 : cell_14314.check = true := by
  decide +kernel

theorem check_14315 : cell_14315.check = true := by
  decide +kernel

theorem check_14316 : cell_14316.check = true := by
  decide +kernel

theorem check_14317 : cell_14317.check = true := by
  decide +kernel

theorem check_14318 : cell_14318.check = true := by
  decide +kernel

theorem check_14319 : cell_14319.check = true := by
  decide +kernel

theorem check_14320 : cell_14320.check = true := by
  decide +kernel

theorem check_14321 : cell_14321.check = true := by
  decide +kernel

theorem check_14322 : cell_14322.check = true := by
  decide +kernel

theorem check_14323 : cell_14323.check = true := by
  decide +kernel

theorem check_14324 : cell_14324.check = true := by
  decide +kernel

theorem check_14325 : cell_14325.check = true := by
  decide +kernel

theorem check_14326 : cell_14326.check = true := by
  decide +kernel

theorem check_14327 : cell_14327.check = true := by
  decide +kernel

theorem check_14328 : cell_14328.check = true := by
  decide +kernel

theorem check_14329 : cell_14329.check = true := by
  decide +kernel

theorem check_14330 : cell_14330.check = true := by
  decide +kernel

theorem check_14331 : cell_14331.check = true := by
  decide +kernel

theorem check_14332 : cell_14332.check = true := by
  decide +kernel

theorem check_14333 : cell_14333.check = true := by
  decide +kernel

theorem check_14334 : cell_14334.check = true := by
  decide +kernel

theorem check_14335 : cell_14335.check = true := by
  decide +kernel

theorem check_14336 : cell_14336.check = true := by
  decide +kernel

theorem check_14337 : cell_14337.check = true := by
  decide +kernel

theorem check_14338 : cell_14338.check = true := by
  decide +kernel

theorem check_14339 : cell_14339.check = true := by
  decide +kernel

theorem check_14340 : cell_14340.check = true := by
  decide +kernel

theorem check_14341 : cell_14341.check = true := by
  decide +kernel

theorem check_14342 : cell_14342.check = true := by
  decide +kernel

theorem check_14343 : cell_14343.check = true := by
  decide +kernel

theorem check_14344 : cell_14344.check = true := by
  decide +kernel

theorem check_14345 : cell_14345.check = true := by
  decide +kernel

theorem check_14346 : cell_14346.check = true := by
  decide +kernel

theorem check_14347 : cell_14347.check = true := by
  decide +kernel

theorem check_14348 : cell_14348.check = true := by
  decide +kernel

theorem check_14349 : cell_14349.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_14300, cell_14301, cell_14302, cell_14303, cell_14304, cell_14305, cell_14306, cell_14307, cell_14308, cell_14309, cell_14310, cell_14311, cell_14312, cell_14313, cell_14314, cell_14315, cell_14316, cell_14317, cell_14318, cell_14319, cell_14320, cell_14321, cell_14322, cell_14323, cell_14324, cell_14325, cell_14326, cell_14327, cell_14328, cell_14329, cell_14330, cell_14331, cell_14332, cell_14333, cell_14334, cell_14335, cell_14336, cell_14337, cell_14338, cell_14339, cell_14340, cell_14341, cell_14342, cell_14343, cell_14344, cell_14345, cell_14346, cell_14347, cell_14348, cell_14349]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_14300, check_14301, check_14302, check_14303, check_14304, check_14305, check_14306, check_14307, check_14308, check_14309, check_14310, check_14311, check_14312, check_14313, check_14314, check_14315, check_14316, check_14317, check_14318, check_14319, check_14320, check_14321, check_14322, check_14323, check_14324, check_14325, check_14326, check_14327, check_14328, check_14329, check_14330, check_14331, check_14332, check_14333, check_14334, check_14335, check_14336, check_14337, check_14338, check_14339, check_14340, check_14341, check_14342, check_14343, check_14344, check_14345, check_14346, check_14347, check_14348, check_14349, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0286

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0286
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0286
open AnalyticBounds.ExpressionCertificate

theorem linked_14300 : Linked cell_14300 pieces := by
  link_source cell_14300 with piece_2250 using piece_2250_mem, piece_545_mem

theorem linked_14301 : Linked cell_14301 pieces := by
  link_source cell_14301 with piece_2251 using piece_2251_mem, piece_545_mem

theorem linked_14302 : Linked cell_14302 pieces := by
  link_source cell_14302 with piece_2251 using piece_2251_mem, piece_545_mem

theorem linked_14303 : Linked cell_14303 pieces := by
  link_source cell_14303 with piece_2252 using piece_2252_mem, piece_545_mem

theorem linked_14304 : Linked cell_14304 pieces := by
  link_source cell_14304 with piece_2252 using piece_2252_mem, piece_545_mem

theorem linked_14305 : Linked cell_14305 pieces := by
  link_source cell_14305 with piece_2253 using piece_2253_mem, piece_545_mem

theorem linked_14306 : Linked cell_14306 pieces := by
  link_source cell_14306 with piece_2253 using piece_2253_mem, ⟨piece_544_mem, piece_545_mem⟩

theorem linked_14307 : Linked cell_14307 pieces := by
  link_source cell_14307 with piece_2254 using piece_2254_mem, piece_545_mem

theorem linked_14308 : Linked cell_14308 pieces := by
  link_source cell_14308 with piece_2254 using piece_2254_mem, ⟨piece_544_mem, piece_545_mem⟩

theorem linked_14309 : Linked cell_14309 pieces := by
  link_source cell_14309 with piece_2255 using piece_2255_mem, piece_544_mem

theorem linked_14310 : Linked cell_14310 pieces := by
  link_source cell_14310 with piece_2256 using piece_2256_mem, piece_545_mem

theorem linked_14311 : Linked cell_14311 pieces := by
  link_source cell_14311 with piece_2256 using piece_2256_mem, ⟨piece_544_mem, piece_545_mem⟩

theorem linked_14312 : Linked cell_14312 pieces := by
  link_source cell_14312 with piece_2257 using piece_2257_mem, ⟨piece_544_mem, piece_545_mem⟩

theorem linked_14313 : Linked cell_14313 pieces := by
  link_source cell_14313 with piece_2257 using piece_2257_mem, piece_544_mem

theorem linked_14314 : Linked cell_14314 pieces := by
  link_source cell_14314 with piece_2258 using piece_2258_mem, ⟨piece_544_mem, piece_545_mem⟩

theorem linked_14315 : Linked cell_14315 pieces := by
  link_source cell_14315 with piece_2258 using piece_2258_mem, piece_544_mem

theorem linked_14316 : Linked cell_14316 pieces := by
  link_source cell_14316 with piece_2259 using piece_2259_mem, piece_544_mem

theorem linked_14317 : Linked cell_14317 pieces := by
  link_source cell_14317 with piece_2259 using piece_2259_mem, piece_544_mem

theorem linked_14318 : Linked cell_14318 pieces := by
  link_source cell_14318 with piece_2260 using piece_2260_mem, piece_544_mem

theorem linked_14319 : Linked cell_14319 pieces := by
  link_source cell_14319 with piece_2260 using piece_2260_mem, piece_544_mem

theorem linked_14320 : Linked cell_14320 pieces := by
  link_source cell_14320 with piece_2261 using piece_2261_mem, piece_544_mem

theorem linked_14321 : Linked cell_14321 pieces := by
  link_source cell_14321 with piece_2261 using piece_2261_mem, piece_544_mem

theorem linked_14322 : Linked cell_14322 pieces := by
  link_source cell_14322 with piece_2262 using piece_2262_mem, piece_544_mem

theorem linked_14323 : Linked cell_14323 pieces := by
  link_source cell_14323 with piece_2262 using piece_2262_mem, ⟨piece_543_mem, piece_544_mem⟩

theorem linked_14324 : Linked cell_14324 pieces := by
  link_source cell_14324 with piece_2263 using piece_2263_mem, piece_544_mem

theorem linked_14325 : Linked cell_14325 pieces := by
  link_source cell_14325 with piece_2263 using piece_2263_mem, ⟨piece_543_mem, piece_544_mem⟩

theorem linked_14326 : Linked cell_14326 pieces := by
  link_source cell_14326 with piece_2264 using piece_2264_mem, ⟨piece_543_mem, piece_544_mem⟩

theorem linked_14327 : Linked cell_14327 pieces := by
  link_source cell_14327 with piece_2264 using piece_2264_mem, piece_543_mem

theorem linked_14328 : Linked cell_14328 pieces := by
  link_source cell_14328 with piece_2265 using piece_2265_mem, ⟨piece_543_mem, piece_544_mem⟩

theorem linked_14329 : Linked cell_14329 pieces := by
  link_source cell_14329 with piece_2265 using piece_2265_mem, piece_543_mem

theorem linked_14330 : Linked cell_14330 pieces := by
  link_source cell_14330 with piece_2266 using piece_2266_mem, ⟨piece_543_mem, piece_544_mem⟩

theorem linked_14331 : Linked cell_14331 pieces := by
  link_source cell_14331 with piece_2266 using piece_2266_mem, piece_543_mem

theorem linked_14332 : Linked cell_14332 pieces := by
  link_source cell_14332 with piece_2267 using piece_2267_mem, piece_543_mem

theorem linked_14333 : Linked cell_14333 pieces := by
  link_source cell_14333 with piece_2268 using piece_2268_mem, piece_543_mem

theorem linked_14334 : Linked cell_14334 pieces := by
  link_source cell_14334 with piece_2268 using piece_2268_mem, piece_543_mem

theorem linked_14335 : Linked cell_14335 pieces := by
  link_source cell_14335 with piece_2269 using piece_2269_mem, piece_543_mem

theorem linked_14336 : Linked cell_14336 pieces := by
  link_source cell_14336 with piece_2269 using piece_2269_mem, ⟨piece_542_mem, piece_543_mem⟩

theorem linked_14337 : Linked cell_14337 pieces := by
  link_source cell_14337 with piece_2270 using piece_2270_mem, piece_543_mem

theorem linked_14338 : Linked cell_14338 pieces := by
  link_source cell_14338 with piece_2270 using piece_2270_mem, ⟨piece_541_mem, ⟨piece_542_mem, piece_543_mem⟩⟩

theorem linked_14339 : Linked cell_14339 pieces := by
  link_source cell_14339 with piece_2271 using piece_2271_mem, piece_543_mem

theorem linked_14340 : Linked cell_14340 pieces := by
  link_source cell_14340 with piece_2271 using piece_2271_mem, ⟨piece_541_mem, ⟨piece_542_mem, piece_543_mem⟩⟩

theorem linked_14341 : Linked cell_14341 pieces := by
  link_source cell_14341 with piece_2272 using piece_2272_mem, ⟨piece_542_mem, piece_543_mem⟩

theorem linked_14342 : Linked cell_14342 pieces := by
  link_source cell_14342 with piece_2272 using piece_2272_mem, ⟨piece_541_mem, piece_542_mem⟩

theorem linked_14343 : Linked cell_14343 pieces := by
  link_source cell_14343 with piece_2273 using piece_2273_mem, ⟨piece_541_mem, ⟨piece_542_mem, piece_543_mem⟩⟩

theorem linked_14344 : Linked cell_14344 pieces := by
  link_source cell_14344 with piece_2273 using piece_2273_mem, piece_541_mem

theorem linked_14345 : Linked cell_14345 pieces := by
  link_source cell_14345 with piece_2274 using piece_2274_mem, ⟨piece_541_mem, piece_542_mem⟩

theorem linked_14346 : Linked cell_14346 pieces := by
  link_source cell_14346 with piece_2274 using piece_2274_mem, piece_541_mem

theorem linked_14347 : Linked cell_14347 pieces := by
  link_source cell_14347 with piece_2275 using piece_2275_mem, piece_541_mem

theorem linked_14348 : Linked cell_14348 pieces := by
  link_source cell_14348 with piece_2275 using piece_2275_mem, piece_541_mem

theorem linked_14349 : Linked cell_14349 pieces := by
  link_source cell_14349 with piece_2276 using piece_2276_mem, piece_541_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0286.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0286.cells,List.forall_mem_cons]
  exact ⟨linked_14300, linked_14301, linked_14302, linked_14303, linked_14304, linked_14305, linked_14306, linked_14307, linked_14308, linked_14309, linked_14310, linked_14311, linked_14312, linked_14313, linked_14314, linked_14315, linked_14316, linked_14317, linked_14318, linked_14319, linked_14320, linked_14321, linked_14322, linked_14323, linked_14324, linked_14325, linked_14326, linked_14327, linked_14328, linked_14329, linked_14330, linked_14331, linked_14332, linked_14333, linked_14334, linked_14335, linked_14336, linked_14337, linked_14338, linked_14339, linked_14340, linked_14341, linked_14342, linked_14343, linked_14344, linked_14345, linked_14346, linked_14347, linked_14348, linked_14349, by simp⟩

theorem covered : covers (197350000000000003 / 200000000000000000 : ℚ) (39950000000000001 / 40000000000000000 : ℚ)
    (SourceCertificates.Chunk0286.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0286
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0287
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(39950000000000001 / 40000000000000000 : ℚ), (999 / 1000 : ℚ)⟩
  branch := .left
  r := (19984926693313 / 50000000000000 : ℚ)
  w := (146970904771 / 125000000000 : ℚ)
  center := (79910000000000001 / 80000000000000000 : ℚ)
  supportValue := (5079596891170831 / 25000000000000000 : ℚ)
  supportSlope := (-1558107364001571 / 2500000000000000 : ℚ)
  oldCenter := (5079596891170831 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2277
  oldLo := (20299999999999999 / 100000000000000000 : ℚ)
  oldHi := (20349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_541]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_14350 : Cell := { cellDefaults with
  r := (39985019239203 / 100000000000000 : ℚ)
  w := (11762362353087 / 10000000000000 : ℚ)
  newCoefficients := coefficients_2276
  oldPieces := [piece_541]
}

noncomputable def cell_14351 : Cell := { cellDefaults with
  domain := ⟨(999 / 1000 : ℚ), (99925000000000003 / 100000000000000000 : ℚ)⟩
  center := (199825000000000003 / 200000000000000000 : ℚ)
  supportValue := (1016377311320323 / 5000000000000000 : ℚ)
  supportSlope := (-6232910918645781 / 10000000000000000 : ℚ)
  oldCenter := (1016377311320323 / 5000000000000000 : ℚ)
  oldPieces := [piece_541]
}

noncomputable def cell_14352 : Cell := { cellDefaults with
  domain := ⟨(99925000000000003 / 100000000000000000 : ℚ), (49975000000000003 / 50000000000000000 : ℚ)⟩
  center := (199875000000000009 / 200000000000000000 : ℚ)
  supportValue := (2538996319701681 / 12500000000000000 : ℚ)
  supportSlope := (-6227613820221441 / 10000000000000000 : ℚ)
  oldCenter := (2538996319701681 / 12500000000000000 : ℚ)
  oldPieces := [piece_541]
}

noncomputable def cell_14353 : Cell := { cellDefaults with
  domain := ⟨(49975000000000003 / 50000000000000000 : ℚ), (99975000000000003 / 100000000000000000 : ℚ)⟩
  r := (7990938767853 / 20000000000000 : ℚ)
  w := (11752977051061 / 10000000000000 : ℚ)
  center := (199925000000000009 / 200000000000000000 : ℚ)
  supportValue := (10160571120035919 / 50000000000000000 : ℚ)
  supportSlope := (-6228045392312113 / 10000000000000000 : ℚ)
  oldCenter := (10160571120035919 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2278
  oldPieces := [piece_541]
}

noncomputable def cell_14354 : Cell := { cellDefaults with
  domain := ⟨(99975000000000003 / 100000000000000000 : ℚ), (1 / 1 : ℚ)⟩
  r := (7990938767853 / 20000000000000 : ℚ)
  w := (11752977051061 / 10000000000000 : ℚ)
  center := (199975000000000003 / 200000000000000000 : ℚ)
  supportValue := (2538197290572021 / 12500000000000000 : ℚ)
  supportSlope := (-622326231767353 / 1000000000000000 : ℚ)
  oldCenter := (2538197290572021 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2278
  oldLo := (20249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_540, piece_541]
}

theorem check_14350 : cell_14350.check = true := by
  decide +kernel

theorem check_14351 : cell_14351.check = true := by
  decide +kernel

theorem check_14352 : cell_14352.check = true := by
  decide +kernel

theorem check_14353 : cell_14353.check = true := by
  decide +kernel

theorem check_14354 : cell_14354.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_14350, cell_14351, cell_14352, cell_14353, cell_14354]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_14350, check_14351, check_14352, check_14353, check_14354, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0287

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0287
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0287
open AnalyticBounds.ExpressionCertificate

theorem linked_14350 : Linked cell_14350 pieces := by
  link_source cell_14350 with piece_2276 using piece_2276_mem, piece_541_mem

theorem linked_14351 : Linked cell_14351 pieces := by
  link_source cell_14351 with piece_2277 using piece_2277_mem, piece_541_mem

theorem linked_14352 : Linked cell_14352 pieces := by
  link_source cell_14352 with piece_2277 using piece_2277_mem, piece_541_mem

theorem linked_14353 : Linked cell_14353 pieces := by
  link_source cell_14353 with piece_2278 using piece_2278_mem, piece_541_mem

theorem linked_14354 : Linked cell_14354 pieces := by
  link_source cell_14354 with piece_2278 using piece_2278_mem, ⟨piece_540_mem, piece_541_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0287.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0287.cells,List.forall_mem_cons]
  exact ⟨linked_14350, linked_14351, linked_14352, linked_14353, linked_14354, by simp⟩

theorem covered : covers (39950000000000001 / 40000000000000000 : ℚ) (1 / 1 : ℚ)
    (SourceCertificates.Chunk0287.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0287
end
