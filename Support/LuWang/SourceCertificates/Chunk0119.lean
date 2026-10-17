import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0119
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(18049999999999999 / 100000000000000000 : ℚ), (18053124999999999 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (36186271409 / 39062500000 : ℚ)
  w := (503815441623 / 500000000000 : ℚ)
  center := (18051562499999999 / 100000000000000000 : ℚ)
  supportValue := (1654630461342903 / 2500000000000000 : ℚ)
  supportSlope := (2664916538186901 / 500000000000000 : ℚ)
  oldCenter := (1654630461342903 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_492
  oldLo := (66400000000000003 / 100000000000000000 : ℚ)
  oldHi := (33224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1547]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_5950 : Cell := { cellDefaults with
  oldLo := (33074999999999999 / 50000000000000000 : ℚ)
  oldHi := (66200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1541]
}

def cell_5951 : Cell := { cellDefaults with
  domain := ⟨(18053124999999999 / 100000000000000000 : ℚ), (18056249999999999 / 100000000000000000 : ℚ)⟩
  center := (18054687499999999 / 100000000000000000 : ℚ)
  supportValue := (1324037505259361 / 2000000000000000 : ℚ)
  supportSlope := (2665161945273553 / 500000000000000 : ℚ)
  oldCenter := (1324037505259361 / 2000000000000000 : ℚ)
  oldLo := (33074999999999999 / 50000000000000000 : ℚ)
  oldHi := (33124999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1541, piece_1542]
}

def cell_5952 : Cell := { cellDefaults with
  domain := ⟨(18056249999999999 / 100000000000000000 : ℚ), (18059374999999999 / 100000000000000000 : ℚ)⟩
  center := (18057812499999999 / 100000000000000000 : ℚ)
  supportValue := (1655463328956587 / 2500000000000000 : ℚ)
  supportSlope := (10661864070399929 / 2000000000000000 : ℚ)
  oldCenter := (1655463328956587 / 2500000000000000 : ℚ)
  oldLo := (66200000000000003 / 100000000000000000 : ℚ)
  oldHi := (33124999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1542]
}

def cell_5953 : Cell := { cellDefaults with
  domain := ⟨(18059374999999999 / 100000000000000000 : ℚ), (18062499999999999 / 100000000000000000 : ℚ)⟩
  center := (18060937499999999 / 100000000000000000 : ℚ)
  supportValue := (6623519358502871 / 10000000000000000 : ℚ)
  supportSlope := (5331742216043267 / 1000000000000000 : ℚ)
  oldCenter := (6623519358502871 / 10000000000000000 : ℚ)
  oldLo := (66200000000000003 / 100000000000000000 : ℚ)
  oldHi := (33124999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1542]
}

def cell_5954 : Cell := { cellDefaults with
  domain := ⟨(18062499999999999 / 100000000000000000 : ℚ), (18065624999999999 / 100000000000000000 : ℚ)⟩
  center := (18064062499999999 / 100000000000000000 : ℚ)
  supportValue := (3312592818089793 / 5000000000000000 : ℚ)
  supportSlope := (5332233493842153 / 1000000000000000 : ℚ)
  oldCenter := (3312592818089793 / 5000000000000000 : ℚ)
  oldLo := (66200000000000003 / 100000000000000000 : ℚ)
  oldHi := (6626256983240223 / 10000000000000000 : ℚ)
  oldPieces := [piece_1542, piece_1543]
}

def cell_5955 : Cell := { cellDefaults with
  domain := ⟨(18065624999999999 / 100000000000000000 : ℚ), (18068749999999999 / 100000000000000000 : ℚ)⟩
  center := (18067187499999999 / 100000000000000000 : ℚ)
  supportValue := (265074080892479 / 400000000000000 : ℚ)
  supportSlope := (5332841239294339 / 1000000000000000 : ℚ)
  oldCenter := (265074080892479 / 400000000000000 : ℚ)
  oldLo := (33124999999999999 / 50000000000000000 : ℚ)
  oldHi := (66300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1543, piece_1544]
}

def cell_5956 : Cell := { cellDefaults with
  domain := ⟨(18068749999999999 / 100000000000000000 : ℚ), (18071874999999999 / 100000000000000000 : ℚ)⟩
  center := (18070312499999999 / 100000000000000000 : ℚ)
  supportValue := (6628518661584389 / 10000000000000000 : ℚ)
  supportSlope := (1066730230951407 / 200000000000000 : ℚ)
  oldCenter := (6628518661584389 / 10000000000000000 : ℚ)
  oldLo := (6626256983240223 / 10000000000000000 : ℚ)
  oldHi := (66300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1544]
}

def cell_5957 : Cell := { cellDefaults with
  domain := ⟨(18071874999999999 / 100000000000000000 : ℚ), (18074999999999999 / 100000000000000000 : ℚ)⟩
  center := (18073437499999999 / 100000000000000000 : ℚ)
  supportValue := (6630185535779589 / 10000000000000000 : ℚ)
  supportSlope := (533414235720997 / 100000000000000 : ℚ)
  oldCenter := (6630185535779589 / 10000000000000000 : ℚ)
  oldLo := (6626256983240223 / 10000000000000000 : ℚ)
  oldHi := (33174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1544, piece_1545]
}

def cell_5958 : Cell := { cellDefaults with
  domain := ⟨(18074999999999999 / 100000000000000000 : ℚ), (18078124999999999 / 100000000000000000 : ℚ)⟩
  center := (18076562499999999 / 100000000000000000 : ℚ)
  supportValue := (6631852518351649 / 10000000000000000 : ℚ)
  supportSlope := (5334749436052277 / 1000000000000000 : ℚ)
  oldCenter := (6631852518351649 / 10000000000000000 : ℚ)
  oldLo := (66300000000000003 / 100000000000000000 : ℚ)
  oldHi := (33174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1545]
}

def cell_5959 : Cell := { cellDefaults with
  domain := ⟨(18078124999999999 / 100000000000000000 : ℚ), (18081249999999999 / 100000000000000000 : ℚ)⟩
  center := (18079687499999999 / 100000000000000000 : ℚ)
  supportValue := (132670395077217 / 200000000000000 : ℚ)
  supportSlope := (533555894473281 / 100000000000000 : ℚ)
  oldCenter := (132670395077217 / 200000000000000 : ℚ)
  oldLo := (66300000000000003 / 100000000000000000 : ℚ)
  oldHi := (33174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1545]
}

def cell_5960 : Cell := { cellDefaults with
  domain := ⟨(18081249999999999 / 100000000000000000 : ℚ), (18084374999999999 / 100000000000000000 : ℚ)⟩
  center := (18082812499999999 / 100000000000000000 : ℚ)
  supportValue := (6635187224037 / 10000000000000 : ℚ)
  supportSlope := (5336049447365099 / 1000000000000000 : ℚ)
  oldCenter := (6635187224037 / 10000000000000 : ℚ)
  oldLo := (66300000000000003 / 100000000000000000 : ℚ)
  oldHi := (66400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1545, piece_1546]
}

def cell_5961 : Cell := { cellDefaults with
  domain := ⟨(18084374999999999 / 100000000000000000 : ℚ), (18087499999999999 / 100000000000000000 : ℚ)⟩
  center := (18085937499999999 / 100000000000000000 : ℚ)
  supportValue := (1659213700679019 / 2500000000000000 : ℚ)
  supportSlope := (2668328424153543 / 500000000000000 : ℚ)
  oldCenter := (1659213700679019 / 2500000000000000 : ℚ)
  oldLo := (33174999999999999 / 50000000000000000 : ℚ)
  oldHi := (66400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1546]
}

def cell_5962 : Cell := { cellDefaults with
  domain := ⟨(18087499999999999 / 100000000000000000 : ℚ), (18090624999999999 / 100000000000000000 : ℚ)⟩
  center := (18089062499999999 / 100000000000000000 : ℚ)
  supportValue := (829815329281343 / 1250000000000000 : ℚ)
  supportSlope := (1334366523926711 / 250000000000000 : ℚ)
  oldCenter := (829815329281343 / 1250000000000000 : ℚ)
  oldLo := (33174999999999999 / 50000000000000000 : ℚ)
  oldHi := (66400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1546]
}

def cell_5963 : Cell := { cellDefaults with
  domain := ⟨(18090624999999999 / 100000000000000000 : ℚ), (18093749999999999 / 100000000000000000 : ℚ)⟩
  center := (18092187499999999 / 100000000000000000 : ℚ)
  supportValue := (207505959376433 / 312500000000000 : ℚ)
  supportSlope := (5337955393088123 / 1000000000000000 : ℚ)
  oldCenter := (207505959376433 / 312500000000000 : ℚ)
  oldLo := (33174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1546, piece_1547]
}

def cell_5964 : Cell := { cellDefaults with
  domain := ⟨(18093749999999999 / 100000000000000000 : ℚ), (18096874999999999 / 100000000000000000 : ℚ)⟩
  center := (18095312499999999 / 100000000000000000 : ℚ)
  supportValue := (6641858874639747 / 10000000000000000 : ℚ)
  supportSlope := (5338563600432167 / 1000000000000000 : ℚ)
  oldCenter := (6641858874639747 / 10000000000000000 : ℚ)
  oldPieces := [piece_1547]
}

def cell_5965 : Cell := { cellDefaults with
  domain := ⟨(18096874999999999 / 100000000000000000 : ℚ), (18099999999999999 / 100000000000000000 : ℚ)⟩
  center := (18098437499999999 / 100000000000000000 : ℚ)
  supportValue := (3321763650989753 / 5000000000000000 : ℚ)
  supportSlope := (166855390509979 / 31250000000000 : ℚ)
  oldCenter := (3321763650989753 / 5000000000000000 : ℚ)
  oldPieces := [piece_1547]
}

def cell_5966 : Cell := { cellDefaults with
  domain := ⟨(18099999999999999 / 100000000000000000 : ℚ), (18103124999999999 / 100000000000000000 : ℚ)⟩
  r := (92545539102791 / 100000000000000 : ℚ)
  w := (2015664996931 / 2000000000000 : ℚ)
  center := (18101562499999999 / 100000000000000000 : ℚ)
  supportValue := (3320229815417427 / 5000000000000000 : ℚ)
  supportSlope := (1333775307839069 / 250000000000000 : ℚ)
  oldCenter := (3320229815417427 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_493
  oldLo := (33174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1546, piece_1547]
}

def cell_5967 : Cell := { cellDefaults with
  domain := ⟨(18103124999999999 / 100000000000000000 : ℚ), (18106249999999999 / 100000000000000000 : ℚ)⟩
  r := (92545539102791 / 100000000000000 : ℚ)
  w := (2015664996931 / 2000000000000 : ℚ)
  center := (18104687499999999 / 100000000000000000 : ℚ)
  supportValue := (3321063469909487 / 5000000000000000 : ℚ)
  supportSlope := (5335793847109471 / 1000000000000000 : ℚ)
  oldCenter := (3321063469909487 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_493
  oldPieces := [piece_1547]
}

def cell_5968 : Cell := { cellDefaults with
  domain := ⟨(18106249999999999 / 100000000000000000 : ℚ), (18109374999999999 / 100000000000000000 : ℚ)⟩
  r := (92545539102791 / 100000000000000 : ℚ)
  w := (2015664996931 / 2000000000000 : ℚ)
  center := (18107812499999999 / 100000000000000000 : ℚ)
  supportValue := (1328758900334593 / 2000000000000000 : ℚ)
  supportSlope := (1067320628114743 / 200000000000000 : ℚ)
  oldCenter := (1328758900334593 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_493
  oldPieces := [piece_1547]
}

def cell_5969 : Cell := { cellDefaults with
  domain := ⟨(18109374999999999 / 100000000000000000 : ℚ), (18112499999999999 / 100000000000000000 : ℚ)⟩
  r := (92545539102791 / 100000000000000 : ℚ)
  w := (2015664996931 / 2000000000000 : ℚ)
  center := (18110937499999999 / 100000000000000000 : ℚ)
  supportValue := (6645462271354083 / 10000000000000000 : ℚ)
  supportSlope := (533700807357107 / 100000000000000 : ℚ)
  oldCenter := (6645462271354083 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_493
  oldHi := (16625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1547, piece_1548]
}

def cell_5970 : Cell := { cellDefaults with
  domain := ⟨(18112499999999999 / 100000000000000000 : ℚ), (18115624999999999 / 100000000000000000 : ℚ)⟩
  r := (92545539102791 / 100000000000000 : ℚ)
  w := (2015664996931 / 2000000000000 : ℚ)
  center := (18114062499999999 / 100000000000000000 : ℚ)
  supportValue := (1329426035286777 / 2000000000000000 : ℚ)
  supportSlope := (2668850585321181 / 500000000000000 : ℚ)
  oldCenter := (1329426035286777 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_493
  oldLo := (33224999999999999 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1548]
}

def cell_5971 : Cell := { cellDefaults with
  domain := ⟨(18115624999999999 / 100000000000000000 : ℚ), (18118749999999999 / 100000000000000000 : ℚ)⟩
  r := (92545539102791 / 100000000000000 : ℚ)
  w := (2015664996931 / 2000000000000 : ℚ)
  center := (18117187499999999 / 100000000000000000 : ℚ)
  supportValue := (1329759666853843 / 2000000000000000 : ℚ)
  supportSlope := (5338510097772087 / 1000000000000000 : ℚ)
  oldCenter := (1329759666853843 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_493
  oldLo := (33224999999999999 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1548]
}

def cell_5972 : Cell := { cellDefaults with
  domain := ⟨(18118749999999999 / 100000000000000000 : ℚ), (18121874999999999 / 100000000000000000 : ℚ)⟩
  r := (92545539102791 / 100000000000000 : ℚ)
  w := (2015664996931 / 2000000000000 : ℚ)
  center := (18120312499999999 / 100000000000000000 : ℚ)
  supportValue := (6650466699432781 / 10000000000000000 : ℚ)
  supportSlope := (266945680510311 / 50000000000000 : ℚ)
  oldCenter := (6650466699432781 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_493
  oldLo := (33224999999999999 / 50000000000000000 : ℚ)
  oldHi := (33274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1548, piece_1549]
}

def cell_5973 : Cell := { cellDefaults with
  domain := ⟨(18121874999999999 / 100000000000000000 : ℚ), (18124999999999999 / 100000000000000000 : ℚ)⟩
  r := (92545539102791 / 100000000000000 : ℚ)
  w := (2015664996931 / 2000000000000 : ℚ)
  center := (18123437499999999 / 100000000000000000 : ℚ)
  supportValue := (1663033800093643 / 2500000000000000 : ℚ)
  supportSlope := (5339607744730301 / 1000000000000000 : ℚ)
  oldCenter := (1663033800093643 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_493
  oldLo := (16625000000000001 / 25000000000000000 : ℚ)
  oldHi := (33274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1549]
}

def cell_5974 : Cell := { cellDefaults with
  domain := ⟨(18124999999999999 / 100000000000000000 : ℚ), (18128124999999999 / 100000000000000000 : ℚ)⟩
  r := (92545539102791 / 100000000000000 : ℚ)
  w := (2015664996931 / 2000000000000 : ℚ)
  center := (18126562499999999 / 100000000000000000 : ℚ)
  supportValue := (3326901976978271 / 5000000000000000 : ℚ)
  supportSlope := (133510407559001 / 25000000000000 : ℚ)
  oldCenter := (3326901976978271 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_493
  oldLo := (16625000000000001 / 25000000000000000 : ℚ)
  oldHi := (33274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1549]
}

def cell_5975 : Cell := { cellDefaults with
  domain := ⟨(18128124999999999 / 100000000000000000 : ℚ), (18131249999999999 / 100000000000000000 : ℚ)⟩
  r := (92545539102791 / 100000000000000 : ℚ)
  w := (2015664996931 / 2000000000000 : ℚ)
  center := (18129687499999999 / 100000000000000000 : ℚ)
  supportValue := (3327736457097089 / 5000000000000000 : ℚ)
  supportSlope := (2670408919847489 / 500000000000000 : ℚ)
  oldCenter := (3327736457097089 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_493
  oldLo := (16625000000000001 / 25000000000000000 : ℚ)
  oldHi := (16650000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1549, piece_1550]
}

def cell_5976 : Cell := { cellDefaults with
  domain := ⟨(18131249999999999 / 100000000000000000 : ℚ), (18134374999999999 / 100000000000000000 : ℚ)⟩
  r := (92545539102791 / 100000000000000 : ℚ)
  w := (2015664996931 / 2000000000000 : ℚ)
  center := (18132812499999999 / 100000000000000000 : ℚ)
  supportValue := (6657142010762217 / 10000000000000000 : ℚ)
  supportSlope := (10683027127683431 / 2000000000000000 : ℚ)
  oldCenter := (6657142010762217 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_493
  oldLo := (33274999999999999 / 50000000000000000 : ℚ)
  oldHi := (16650000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1550]
}

def cell_5977 : Cell := { cellDefaults with
  domain := ⟨(18134374999999999 / 100000000000000000 : ℚ), (18137499999999999 / 100000000000000000 : ℚ)⟩
  r := (92545539102791 / 100000000000000 : ℚ)
  w := (2015664996931 / 2000000000000 : ℚ)
  center := (18135937499999999 / 100000000000000000 : ℚ)
  supportValue := (6658811359854697 / 10000000000000000 : ℚ)
  supportSlope := (2671160875353351 / 500000000000000 : ℚ)
  oldCenter := (6658811359854697 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_493
  oldLo := (33274999999999999 / 50000000000000000 : ℚ)
  oldHi := (16650000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1550]
}

def cell_5978 : Cell := { cellDefaults with
  domain := ⟨(18137499999999999 / 100000000000000000 : ℚ), (18141375698324021 / 100000000000000000 : ℚ)⟩
  r := (92545539102791 / 100000000000000 : ℚ)
  w := (2015664996931 / 2000000000000 : ℚ)
  center := (1813943784916201 / 10000000000000000 : ℚ)
  supportValue := (3330340725507433 / 5000000000000000 : ℚ)
  supportSlope := (5342796501735659 / 1000000000000000 : ℚ)
  oldCenter := (3330340725507433 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_493
  oldLo := (33274999999999999 / 50000000000000000 : ℚ)
  oldHi := (33324999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1550, piece_1551]
}

def cell_5979 : Cell := { cellDefaults with
  domain := ⟨(18141375698324021 / 100000000000000000 : ℚ), (18145251396648043 / 100000000000000000 : ℚ)⟩
  r := (92545539102791 / 100000000000000 : ℚ)
  w := (2015664996931 / 2000000000000 : ℚ)
  center := (1133957096717877 / 6250000000000000 : ℚ)
  supportValue := (6662752317351791 / 10000000000000000 : ℚ)
  supportSlope := (5343709686375253 / 1000000000000000 : ℚ)
  oldCenter := (6662752317351791 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_493
  oldLo := (16650000000000001 / 25000000000000000 : ℚ)
  oldHi := (33324999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1551]
}

def cell_5980 : Cell := { cellDefaults with
  domain := ⟨(18145251396648043 / 100000000000000000 : ℚ), (18149999999999999 / 100000000000000000 : ℚ)⟩
  r := (92545539102791 / 100000000000000 : ℚ)
  w := (2015664996931 / 2000000000000 : ℚ)
  center := (18147625698324021 / 100000000000000000 : ℚ)
  supportValue := (6665055506871183 / 10000000000000000 : ℚ)
  supportSlope := (1068910476773417 / 200000000000000 : ℚ)
  oldCenter := (6665055506871183 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_494
  oldLo := (16650000000000001 / 25000000000000000 : ℚ)
  oldHi := (16675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1551, piece_1552]
}

def cell_5981 : Cell := { cellDefaults with
  domain := ⟨(18149999999999999 / 100000000000000000 : ℚ), (58089999999999997 / 320000000000000000 : ℚ)⟩
  r := (18490891126833 / 20000000000000 : ℚ)
  w := (2520087561 / 2500000000 : ℚ)
  center := (580849999999999969 / 3200000000000000000 : ℚ)
  supportValue := (6662416722960649 / 10000000000000000 : ℚ)
  supportSlope := (1068128614601683 / 200000000000000 : ℚ)
  oldCenter := (6662416722960649 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_495
  oldLo := (16650000000000001 / 25000000000000000 : ℚ)
  oldHi := (33324999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1551]
}

def cell_5982 : Cell := { cellDefaults with
  domain := ⟨(58089999999999997 / 320000000000000000 : ℚ), (145249999999999993 / 800000000000000000 : ℚ)⟩
  r := (18490891126833 / 20000000000000 : ℚ)
  w := (2520087561 / 2500000000 : ℚ)
  center := (580949999999999971 / 3200000000000000000 : ℚ)
  supportValue := (3332042899994779 / 5000000000000000 : ℚ)
  supportSlope := (534145103458517 / 100000000000000 : ℚ)
  oldCenter := (3332042899994779 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_495
  oldLo := (16650000000000001 / 25000000000000000 : ℚ)
  oldHi := (33324999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1551]
}

def cell_5983 : Cell := { cellDefaults with
  domain := ⟨(145249999999999993 / 800000000000000000 : ℚ), (290549999999999987 / 1600000000000000000 : ℚ)⟩
  r := (18490891126833 / 20000000000000 : ℚ)
  w := (2520087561 / 2500000000 : ℚ)
  center := (581049999999999973 / 3200000000000000000 : ℚ)
  supportValue := (6665755056194871 / 10000000000000000 : ℚ)
  supportSlope := (10683530111002213 / 2000000000000000 : ℚ)
  oldCenter := (6665755056194871 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_495
  oldLo := (16650000000000001 / 25000000000000000 : ℚ)
  oldHi := (16675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1551, piece_1552]
}

def cell_5984 : Cell := { cellDefaults with
  domain := ⟨(290549999999999987 / 1600000000000000000 : ℚ), (72649999999999997 / 400000000000000000 : ℚ)⟩
  r := (18490891126833 / 20000000000000 : ℚ)
  w := (2520087561 / 2500000000 : ℚ)
  center := (23245999999999999 / 128000000000000000 : ℚ)
  supportValue := (6667424476097901 / 10000000000000000 : ℚ)
  supportSlope := (1335636984272499 / 250000000000000 : ℚ)
  oldCenter := (6667424476097901 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_495
  oldLo := (33324999999999999 / 50000000000000000 : ℚ)
  oldHi := (16675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1552]
}

def cell_5985 : Cell := { cellDefaults with
  domain := ⟨(72649999999999997 / 400000000000000000 : ℚ), (290649999999999989 / 1600000000000000000 : ℚ)⟩
  r := (18490891126833 / 20000000000000 : ℚ)
  w := (2520087561 / 2500000000 : ℚ)
  center := (581249999999999977 / 3200000000000000000 : ℚ)
  supportValue := (1667273537084641 / 2500000000000000 : ℚ)
  supportSlope := (5343355525901821 / 1000000000000000 : ℚ)
  oldCenter := (1667273537084641 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_495
  oldLo := (33324999999999999 / 50000000000000000 : ℚ)
  oldHi := (16675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1552]
}

def cell_5986 : Cell := { cellDefaults with
  domain := ⟨(290649999999999989 / 1600000000000000000 : ℚ), (29069999999999999 / 160000000000000000 : ℚ)⟩
  r := (18490891126833 / 20000000000000 : ℚ)
  w := (2520087561 / 2500000000 : ℚ)
  center := (581349999999999979 / 3200000000000000000 : ℚ)
  supportValue := (208461374964053 / 312500000000000 : ℚ)
  supportSlope := (2671833414398197 / 500000000000000 : ℚ)
  oldCenter := (208461374964053 / 312500000000000 : ℚ)
  newCoefficients := coefficients_495
  oldLo := (33324999999999999 / 50000000000000000 : ℚ)
  oldHi := (33374999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1552, piece_1553]
}

def cell_5987 : Cell := { cellDefaults with
  domain := ⟨(29069999999999999 / 160000000000000000 : ℚ), (36349999999999999 / 200000000000000000 : ℚ)⟩
  r := (18490891126833 / 20000000000000 : ℚ)
  w := (2520087561 / 2500000000 : ℚ)
  center := (290749999999999991 / 1600000000000000000 : ℚ)
  supportValue := (1668316945316591 / 2500000000000000 : ℚ)
  supportSlope := (10689711301942637 / 2000000000000000 : ℚ)
  oldCenter := (1668316945316591 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_495
  oldLo := (16675000000000001 / 25000000000000000 : ℚ)
  oldHi := (33374999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1553]
}

def cell_5988 : Cell := { cellDefaults with
  domain := ⟨(36349999999999999 / 200000000000000000 : ℚ), (290849999999999993 / 1600000000000000000 : ℚ)⟩
  r := (18490891126833 / 20000000000000 : ℚ)
  w := (2520087561 / 2500000000 : ℚ)
  center := (116329999999999997 / 640000000000000000 : ℚ)
  supportValue := (1335154945093513 / 2000000000000000 : ℚ)
  supportSlope := (5345567290646507 / 1000000000000000 : ℚ)
  oldCenter := (1335154945093513 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_495
  oldLo := (16675000000000001 / 25000000000000000 : ℚ)
  oldHi := (16700000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1553, piece_1554]
}

def cell_5989 : Cell := { cellDefaults with
  domain := ⟨(290849999999999993 / 1600000000000000000 : ℚ), (145449999999999997 / 800000000000000000 : ℚ)⟩
  r := (18490891126833 / 20000000000000 : ℚ)
  w := (2520087561 / 2500000000 : ℚ)
  center := (581749999999999987 / 3200000000000000000 : ℚ)
  supportValue := (6677445335316071 / 10000000000000000 : ℚ)
  supportSlope := (10692710785604973 / 2000000000000000 : ℚ)
  oldCenter := (6677445335316071 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_495
  oldLo := (33374999999999999 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1554]
}

def cell_5990 : Cell := { cellDefaults with
  domain := ⟨(145449999999999997 / 800000000000000000 : ℚ), (58189999999999999 / 320000000000000000 : ℚ)⟩
  r := (18490891126833 / 20000000000000 : ℚ)
  w := (2520087561 / 2500000000 : ℚ)
  center := (581849999999999989 / 3200000000000000000 : ℚ)
  supportValue := (667911619727071 / 1000000000000000 : ℚ)
  supportSlope := (5347162240010199 / 1000000000000000 : ℚ)
  oldCenter := (667911619727071 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_495
  oldLo := (33374999999999999 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1554]
}

def cell_5991 : Cell := { cellDefaults with
  domain := ⟨(58189999999999999 / 320000000000000000 : ℚ), (72749999999999999 / 400000000000000000 : ℚ)⟩
  r := (18490891126833 / 20000000000000 : ℚ)
  w := (2520087561 / 2500000000 : ℚ)
  center := (581949999999999991 / 3200000000000000000 : ℚ)
  supportValue := (3340393617572447 / 5000000000000000 : ℚ)
  supportSlope := (2673733169403949 / 500000000000000 : ℚ)
  oldCenter := (3340393617572447 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_495
  oldLo := (33374999999999999 / 50000000000000000 : ℚ)
  oldHi := (33424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1554, piece_1555, piece_1556]
}

def cell_5992 : Cell := { cellDefaults with
  domain := ⟨(72749999999999999 / 400000000000000000 : ℚ), (291049999999999997 / 1600000000000000000 : ℚ)⟩
  r := (18490891126833 / 20000000000000 : ℚ)
  w := (2520087561 / 2500000000 : ℚ)
  center := (582049999999999993 / 3200000000000000000 : ℚ)
  supportValue := (1336491687918673 / 2000000000000000 : ℚ)
  supportSlope := (5348257995212329 / 1000000000000000 : ℚ)
  oldCenter := (1336491687918673 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_495
  oldLo := (1336312849162011 / 2000000000000000 : ℚ)
  oldHi := (33424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1556]
}

def cell_5993 : Cell := { cellDefaults with
  domain := ⟨(291049999999999997 / 1600000000000000000 : ℚ), (145549999999999999 / 800000000000000000 : ℚ)⟩
  r := (18490891126833 / 20000000000000 : ℚ)
  w := (2520087561 / 2500000000 : ℚ)
  center := (116429999999999999 / 640000000000000000 : ℚ)
  supportValue := (6684129896087813 / 10000000000000000 : ℚ)
  supportSlope := (2674532346311711 / 500000000000000 : ℚ)
  oldCenter := (6684129896087813 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_495
  oldLo := (1336312849162011 / 2000000000000000 : ℚ)
  oldHi := (33424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1556]
}

def cell_5994 : Cell := { cellDefaults with
  domain := ⟨(145549999999999999 / 800000000000000000 : ℚ), (291149999999999999 / 1600000000000000000 : ℚ)⟩
  r := (18490891126833 / 20000000000000 : ℚ)
  w := (2520087561 / 2500000000 : ℚ)
  center := (582249999999999997 / 3200000000000000000 : ℚ)
  supportValue := (1671450381780479 / 2500000000000000 : ℚ)
  supportSlope := (2674682187361501 / 500000000000000 : ℚ)
  oldCenter := (1671450381780479 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_495
  oldLo := (1336312849162011 / 2000000000000000 : ℚ)
  oldHi := (16725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1556, piece_1557]
}

def cell_5995 : Cell := { cellDefaults with
  domain := ⟨(291149999999999999 / 1600000000000000000 : ℚ), (91 / 500 : ℚ)⟩
  r := (18490891126833 / 20000000000000 : ℚ)
  w := (2520087561 / 2500000000 : ℚ)
  center := (582349999999999999 / 3200000000000000000 : ℚ)
  supportValue := (133749466520089 / 200000000000000 : ℚ)
  supportSlope := (2675079996851739 / 500000000000000 : ℚ)
  oldCenter := (133749466520089 / 200000000000000 : ℚ)
  newCoefficients := coefficients_495
  oldLo := (33424999999999999 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1557]
}

def cell_5996 : Cell := { cellDefaults with
  domain := ⟨(91 / 500 : ℚ), (233 / 1280 : ℚ)⟩
  r := (92363606228689 / 100000000000000 : ℚ)
  w := (2520596484329 / 2500000000000 : ℚ)
  center := (11649 / 64000 : ℚ)
  supportValue := (3342196972956701 / 5000000000000000 : ℚ)
  supportSlope := (1336554035066051 / 250000000000000 : ℚ)
  oldCenter := (3342196972956701 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_496
  oldLo := (1336312849162011 / 2000000000000000 : ℚ)
  oldHi := (16725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1556, piece_1557]
}

def cell_5997 : Cell := { cellDefaults with
  domain := ⟨(233 / 1280 : ℚ), (2913 / 16000 : ℚ)⟩
  r := (92363606228689 / 100000000000000 : ℚ)
  w := (2520596484329 / 2500000000000 : ℚ)
  center := (11651 / 64000 : ℚ)
  supportValue := (1337212936712429 / 2000000000000000 : ℚ)
  supportSlope := (213863072472833 / 40000000000000 : ℚ)
  oldCenter := (1337212936712429 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_496
  oldLo := (33424999999999999 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1557]
}

def cell_5998 : Cell := { cellDefaults with
  domain := ⟨(2913 / 16000 : ℚ), (5827 / 32000 : ℚ)⟩
  r := (92363606228689 / 100000000000000 : ℚ)
  w := (2520596484329 / 2500000000000 : ℚ)
  center := (11653 / 64000 : ℚ)
  supportValue := (3343867807300141 / 5000000000000000 : ℚ)
  supportSlope := (534738295531767 / 100000000000000 : ℚ)
  oldCenter := (3343867807300141 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_496
  oldLo := (33424999999999999 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1557]
}

def cell_5999 : Cell := { cellDefaults with
  domain := ⟨(5827 / 32000 : ℚ), (1457 / 8000 : ℚ)⟩
  r := (92363606228689 / 100000000000000 : ℚ)
  w := (2520596484329 / 2500000000000 : ℚ)
  center := (2331 / 12800 : ℚ)
  supportValue := (6689406797591789 / 10000000000000000 : ℚ)
  supportSlope := (2674057094914417 / 500000000000000 : ℚ)
  oldCenter := (6689406797591789 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_496
  oldLo := (33424999999999999 / 50000000000000000 : ℚ)
  oldHi := (33474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1557, piece_1558]
}

theorem check_5950 : SourceCertificateFamily.RightNormalized.check cell_5950 = true := by
  decide +kernel

theorem check_5951 : SourceCertificateFamily.RightNormalized.check cell_5951 = true := by
  decide +kernel

theorem check_5952 : SourceCertificateFamily.RightNormalized.check cell_5952 = true := by
  decide +kernel

theorem check_5953 : SourceCertificateFamily.RightNormalized.check cell_5953 = true := by
  decide +kernel

theorem check_5954 : SourceCertificateFamily.RightNormalized.check cell_5954 = true := by
  decide +kernel

theorem check_5955 : SourceCertificateFamily.RightNormalized.check cell_5955 = true := by
  decide +kernel

theorem check_5956 : SourceCertificateFamily.RightNormalized.check cell_5956 = true := by
  decide +kernel

theorem check_5957 : SourceCertificateFamily.RightNormalized.check cell_5957 = true := by
  decide +kernel

theorem check_5958 : SourceCertificateFamily.RightNormalized.check cell_5958 = true := by
  decide +kernel

theorem check_5959 : SourceCertificateFamily.RightNormalized.check cell_5959 = true := by
  decide +kernel

theorem check_5960 : SourceCertificateFamily.RightNormalized.check cell_5960 = true := by
  decide +kernel

theorem check_5961 : SourceCertificateFamily.RightNormalized.check cell_5961 = true := by
  decide +kernel

theorem check_5962 : SourceCertificateFamily.RightNormalized.check cell_5962 = true := by
  decide +kernel

theorem check_5963 : SourceCertificateFamily.RightNormalized.check cell_5963 = true := by
  decide +kernel

theorem check_5964 : SourceCertificateFamily.RightNormalized.check cell_5964 = true := by
  decide +kernel

theorem check_5965 : SourceCertificateFamily.RightNormalized.check cell_5965 = true := by
  decide +kernel

theorem check_5966 : SourceCertificateFamily.RightNormalized.check cell_5966 = true := by
  decide +kernel

theorem check_5967 : SourceCertificateFamily.RightNormalized.check cell_5967 = true := by
  decide +kernel

theorem check_5968 : SourceCertificateFamily.RightNormalized.check cell_5968 = true := by
  decide +kernel

theorem check_5969 : SourceCertificateFamily.RightNormalized.check cell_5969 = true := by
  decide +kernel

theorem check_5970 : SourceCertificateFamily.RightNormalized.check cell_5970 = true := by
  decide +kernel

theorem check_5971 : SourceCertificateFamily.RightNormalized.check cell_5971 = true := by
  decide +kernel

theorem check_5972 : SourceCertificateFamily.RightNormalized.check cell_5972 = true := by
  decide +kernel

theorem check_5973 : SourceCertificateFamily.RightNormalized.check cell_5973 = true := by
  decide +kernel

theorem check_5974 : SourceCertificateFamily.RightNormalized.check cell_5974 = true := by
  decide +kernel

theorem check_5975 : SourceCertificateFamily.RightNormalized.check cell_5975 = true := by
  decide +kernel

theorem check_5976 : SourceCertificateFamily.RightNormalized.check cell_5976 = true := by
  decide +kernel

theorem check_5977 : SourceCertificateFamily.RightNormalized.check cell_5977 = true := by
  decide +kernel

theorem check_5978 : SourceCertificateFamily.RightNormalized.check cell_5978 = true := by
  decide +kernel

theorem check_5979 : SourceCertificateFamily.RightNormalized.check cell_5979 = true := by
  decide +kernel

theorem check_5980 : SourceCertificateFamily.RightNormalized.check cell_5980 = true := by
  decide +kernel

theorem check_5981 : SourceCertificateFamily.RightNormalized.check cell_5981 = true := by
  decide +kernel

theorem check_5982 : SourceCertificateFamily.RightNormalized.check cell_5982 = true := by
  decide +kernel

theorem check_5983 : SourceCertificateFamily.RightNormalized.check cell_5983 = true := by
  decide +kernel

theorem check_5984 : SourceCertificateFamily.RightNormalized.check cell_5984 = true := by
  decide +kernel

theorem check_5985 : SourceCertificateFamily.RightNormalized.check cell_5985 = true := by
  decide +kernel

theorem check_5986 : SourceCertificateFamily.RightNormalized.check cell_5986 = true := by
  decide +kernel

theorem check_5987 : SourceCertificateFamily.RightNormalized.check cell_5987 = true := by
  decide +kernel

theorem check_5988 : SourceCertificateFamily.RightNormalized.check cell_5988 = true := by
  decide +kernel

theorem check_5989 : SourceCertificateFamily.RightNormalized.check cell_5989 = true := by
  decide +kernel

theorem check_5990 : SourceCertificateFamily.RightNormalized.check cell_5990 = true := by
  decide +kernel

theorem check_5991 : SourceCertificateFamily.RightNormalized.check cell_5991 = true := by
  decide +kernel

theorem check_5992 : SourceCertificateFamily.RightNormalized.check cell_5992 = true := by
  decide +kernel

theorem check_5993 : SourceCertificateFamily.RightNormalized.check cell_5993 = true := by
  decide +kernel

theorem check_5994 : SourceCertificateFamily.RightNormalized.check cell_5994 = true := by
  decide +kernel

theorem check_5995 : SourceCertificateFamily.RightNormalized.check cell_5995 = true := by
  decide +kernel

theorem check_5996 : SourceCertificateFamily.RightNormalized.check cell_5996 = true := by
  decide +kernel

theorem check_5997 : SourceCertificateFamily.RightNormalized.check cell_5997 = true := by
  decide +kernel

theorem check_5998 : SourceCertificateFamily.RightNormalized.check cell_5998 = true := by
  decide +kernel

theorem check_5999 : SourceCertificateFamily.RightNormalized.check cell_5999 = true := by
  decide +kernel

def cells : List Cell := [cell_5950, cell_5951, cell_5952, cell_5953, cell_5954, cell_5955, cell_5956, cell_5957, cell_5958, cell_5959, cell_5960, cell_5961, cell_5962, cell_5963, cell_5964, cell_5965, cell_5966, cell_5967, cell_5968, cell_5969, cell_5970, cell_5971, cell_5972, cell_5973, cell_5974, cell_5975, cell_5976, cell_5977, cell_5978, cell_5979, cell_5980, cell_5981, cell_5982, cell_5983, cell_5984, cell_5985, cell_5986, cell_5987, cell_5988, cell_5989, cell_5990, cell_5991, cell_5992, cell_5993, cell_5994, cell_5995, cell_5996, cell_5997, cell_5998, cell_5999]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_5950, SourceCertificateFamily.of_right_checked check_5951, SourceCertificateFamily.of_right_checked check_5952, SourceCertificateFamily.of_right_checked check_5953, SourceCertificateFamily.of_right_checked check_5954, SourceCertificateFamily.of_right_checked check_5955, SourceCertificateFamily.of_right_checked check_5956, SourceCertificateFamily.of_right_checked check_5957, SourceCertificateFamily.of_right_checked check_5958, SourceCertificateFamily.of_right_checked check_5959, SourceCertificateFamily.of_right_checked check_5960, SourceCertificateFamily.of_right_checked check_5961, SourceCertificateFamily.of_right_checked check_5962, SourceCertificateFamily.of_right_checked check_5963, SourceCertificateFamily.of_right_checked check_5964, SourceCertificateFamily.of_right_checked check_5965, SourceCertificateFamily.of_right_checked check_5966, SourceCertificateFamily.of_right_checked check_5967, SourceCertificateFamily.of_right_checked check_5968, SourceCertificateFamily.of_right_checked check_5969, SourceCertificateFamily.of_right_checked check_5970, SourceCertificateFamily.of_right_checked check_5971, SourceCertificateFamily.of_right_checked check_5972, SourceCertificateFamily.of_right_checked check_5973, SourceCertificateFamily.of_right_checked check_5974, SourceCertificateFamily.of_right_checked check_5975, SourceCertificateFamily.of_right_checked check_5976, SourceCertificateFamily.of_right_checked check_5977, SourceCertificateFamily.of_right_checked check_5978, SourceCertificateFamily.of_right_checked check_5979, SourceCertificateFamily.of_right_checked check_5980, SourceCertificateFamily.of_right_checked check_5981, SourceCertificateFamily.of_right_checked check_5982, SourceCertificateFamily.of_right_checked check_5983, SourceCertificateFamily.of_right_checked check_5984, SourceCertificateFamily.of_right_checked check_5985, SourceCertificateFamily.of_right_checked check_5986, SourceCertificateFamily.of_right_checked check_5987, SourceCertificateFamily.of_right_checked check_5988, SourceCertificateFamily.of_right_checked check_5989, SourceCertificateFamily.of_right_checked check_5990, SourceCertificateFamily.of_right_checked check_5991, SourceCertificateFamily.of_right_checked check_5992, SourceCertificateFamily.of_right_checked check_5993, SourceCertificateFamily.of_right_checked check_5994, SourceCertificateFamily.of_right_checked check_5995, SourceCertificateFamily.of_right_checked check_5996, SourceCertificateFamily.of_right_checked check_5997, SourceCertificateFamily.of_right_checked check_5998, SourceCertificateFamily.of_right_checked check_5999, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0119
