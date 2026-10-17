import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0078
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(11637500000000001 / 100000000000000000 : ℚ), (11640625000000001 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (2131159216103 / 2000000000000 : ℚ)
  w := (97862338694393 / 100000000000000 : ℚ)
  center := (11639062500000001 / 100000000000000000 : ℚ)
  supportValue := (9902094576726811 / 25000000000000000 : ℚ)
  supportSlope := (2196100887234209 / 500000000000000 : ℚ)
  oldCenter := (9902094576726811 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_353
  oldLo := (19800000000000001 / 50000000000000000 : ℚ)
  oldHi := (19950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_962]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_3900 : Cell := { cellDefaults with
  r := (2133726713631 / 2000000000000 : ℚ)
  w := (97816947993297 / 100000000000000 : ℚ)
  newCoefficients := coefficients_352
  oldHi := (19825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_962]
}

def cell_3901 : Cell := { cellDefaults with
  domain := ⟨(11640625000000001 / 100000000000000000 : ℚ), (11643750000000001 / 100000000000000000 : ℚ)⟩
  r := (2133726713631 / 2000000000000 : ℚ)
  w := (97816947993297 / 100000000000000 : ℚ)
  center := (11642187500000001 / 100000000000000000 : ℚ)
  supportValue := (1981105328259457 / 5000000000000000 : ℚ)
  supportSlope := (4393885266550157 / 1000000000000000 : ℚ)
  oldCenter := (1981105328259457 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_352
  oldHi := (19825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_962]
}

def cell_3902 : Cell := { cellDefaults with
  domain := ⟨(11643750000000001 / 100000000000000000 : ℚ), (11646875000000001 / 100000000000000000 : ℚ)⟩
  r := (2133726713631 / 2000000000000 : ℚ)
  w := (97816947993297 / 100000000000000 : ℚ)
  center := (11645312500000001 / 100000000000000000 : ℚ)
  supportValue := (39635840089774727 / 100000000000000000 : ℚ)
  supportSlope := (4395572211745247 / 1000000000000000 : ℚ)
  oldCenter := (39635840089774727 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_352
  oldHi := (19825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_962]
}

def cell_3903 : Cell := { cellDefaults with
  domain := ⟨(11646875000000001 / 100000000000000000 : ℚ), (11650000000000001 / 100000000000000000 : ℚ)⟩
  r := (2133726713631 / 2000000000000 : ℚ)
  w := (97816947993297 / 100000000000000 : ℚ)
  center := (11648437500000001 / 100000000000000000 : ℚ)
  supportValue := (792991419231091 / 2000000000000000 : ℚ)
  supportSlope := (2197911302749489 / 500000000000000 : ℚ)
  oldCenter := (792991419231091 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_352
  oldHi := (19850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_962, piece_963]
}

def cell_3904 : Cell := { cellDefaults with
  domain := ⟨(11650000000000001 / 100000000000000000 : ℚ), (11653125000000001 / 100000000000000000 : ℚ)⟩
  center := (11651562500000001 / 100000000000000000 : ℚ)
  supportValue := (3963985115665779 / 10000000000000000 : ℚ)
  supportSlope := (4394914963013363 / 1000000000000000 : ℚ)
  oldCenter := (3963985115665779 / 10000000000000000 : ℚ)
  oldHi := (19825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_962]
}

def cell_3905 : Cell := { cellDefaults with
  domain := ⟨(11653125000000001 / 100000000000000000 : ℚ), (11656250000000001 / 100000000000000000 : ℚ)⟩
  center := (11654687500000001 / 100000000000000000 : ℚ)
  supportValue := (19826788738358597 / 50000000000000000 : ℚ)
  supportSlope := (4394272982288783 / 1000000000000000 : ℚ)
  oldCenter := (19826788738358597 / 50000000000000000 : ℚ)
  oldHi := (19850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_962, piece_963]
}

def cell_3906 : Cell := { cellDefaults with
  domain := ⟨(11656250000000001 / 100000000000000000 : ℚ), (11659375000000001 / 100000000000000000 : ℚ)⟩
  center := (11657812500000001 / 100000000000000000 : ℚ)
  supportValue := (19833658925671027 / 50000000000000000 : ℚ)
  supportSlope := (4395222581480951 / 1000000000000000 : ℚ)
  oldCenter := (19833658925671027 / 50000000000000000 : ℚ)
  oldLo := (19825000000000001 / 50000000000000000 : ℚ)
  oldHi := (19850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_963]
}

def cell_3907 : Cell := { cellDefaults with
  domain := ⟨(11659375000000001 / 100000000000000000 : ℚ), (11662500000000001 / 100000000000000000 : ℚ)⟩
  center := (11660937500000001 / 100000000000000000 : ℚ)
  supportValue := (19840527774250713 / 50000000000000000 : ℚ)
  supportSlope := (137403291822491 / 31250000000000 : ℚ)
  oldCenter := (19840527774250713 / 50000000000000000 : ℚ)
  oldLo := (19825000000000001 / 50000000000000000 : ℚ)
  oldHi := (19850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_963]
}

def cell_3908 : Cell := { cellDefaults with
  domain := ⟨(11662500000000001 / 100000000000000000 : ℚ), (11665625000000001 / 100000000000000000 : ℚ)⟩
  center := (11664062500000001 / 100000000000000000 : ℚ)
  supportValue := (39694790570685057 / 100000000000000000 : ℚ)
  supportSlope := (4398220193582603 / 1000000000000000 : ℚ)
  oldCenter := (39694790570685057 / 100000000000000000 : ℚ)
  oldLo := (19825000000000001 / 50000000000000000 : ℚ)
  oldHi := (992877094972067 / 2500000000000000 : ℚ)
  oldPieces := [piece_963, piece_964]
}

def cell_3909 : Cell := { cellDefaults with
  domain := ⟨(11665625000000001 / 100000000000000000 : ℚ), (11668750000000001 / 100000000000000000 : ℚ)⟩
  center := (11667187500000001 / 100000000000000000 : ℚ)
  supportValue := (39708540816583 / 100000000000000 : ℚ)
  supportSlope := (8794449461202447 / 2000000000000000 : ℚ)
  oldCenter := (39708540816583 / 100000000000000 : ℚ)
  oldLo := (19850000000000001 / 50000000000000000 : ℚ)
  oldHi := (19875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_964, piece_965]
}

def cell_3910 : Cell := { cellDefaults with
  domain := ⟨(11668750000000001 / 100000000000000000 : ℚ), (11671875000000001 / 100000000000000000 : ℚ)⟩
  center := (11670312500000001 / 100000000000000000 : ℚ)
  supportValue := (3972228475698727 / 10000000000000000 : ℚ)
  supportSlope := (879779775108247 / 200000000000000 : ℚ)
  oldCenter := (3972228475698727 / 10000000000000000 : ℚ)
  oldLo := (992877094972067 / 2500000000000000 : ℚ)
  oldHi := (19875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_965]
}

def cell_3911 : Cell := { cellDefaults with
  domain := ⟨(11671875000000001 / 100000000000000000 : ℚ), (11675000000000001 / 100000000000000000 : ℚ)⟩
  center := (11673437500000001 / 100000000000000000 : ℚ)
  supportValue := (39736033935375537 / 100000000000000000 : ℚ)
  supportSlope := (176023081028589 / 40000000000000 : ℚ)
  oldCenter := (39736033935375537 / 100000000000000000 : ℚ)
  oldLo := (992877094972067 / 2500000000000000 : ℚ)
  oldHi := (19875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_965]
}

def cell_3912 : Cell := { cellDefaults with
  domain := ⟨(11675000000000001 / 100000000000000000 : ℚ), (11678125000000001 / 100000000000000000 : ℚ)⟩
  center := (11676562500000001 / 100000000000000000 : ℚ)
  supportValue := (7949956082671611 / 20000000000000000 : ℚ)
  supportSlope := (440078776836117 / 100000000000000 : ℚ)
  oldCenter := (7949956082671611 / 20000000000000000 : ℚ)
  oldLo := (992877094972067 / 2500000000000000 : ℚ)
  oldHi := (19900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_965, piece_966]
}

def cell_3913 : Cell := { cellDefaults with
  domain := ⟨(11678125000000001 / 100000000000000000 : ℚ), (11681250000000001 / 100000000000000000 : ℚ)⟩
  center := (11679687500000001 / 100000000000000000 : ℚ)
  supportValue := (795270774034081 / 2000000000000000 : ℚ)
  supportSlope := (2200448391239007 / 500000000000000 : ℚ)
  oldCenter := (795270774034081 / 2000000000000000 : ℚ)
  oldLo := (19875000000000001 / 50000000000000000 : ℚ)
  oldHi := (19900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_966]
}

def cell_3914 : Cell := { cellDefaults with
  domain := ⟨(11681250000000001 / 100000000000000000 : ℚ), (11684375000000001 / 100000000000000000 : ℚ)⟩
  center := (11682812500000001 / 100000000000000000 : ℚ)
  supportValue := (497216176386971 / 1250000000000000 : ℚ)
  supportSlope := (4402566864683877 / 1000000000000000 : ℚ)
  oldCenter := (497216176386971 / 1250000000000000 : ℚ)
  oldLo := (19875000000000001 / 50000000000000000 : ℚ)
  oldHi := (19900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_966]
}

def cell_3915 : Cell := { cellDefaults with
  domain := ⟨(11684375000000001 / 100000000000000000 : ℚ), (11687500000000001 / 100000000000000000 : ℚ)⟩
  center := (11685937500000001 / 100000000000000000 : ℚ)
  supportValue := (994776368612491 / 2500000000000000 : ℚ)
  supportSlope := (220212016490251 / 50000000000000 : ℚ)
  oldCenter := (994776368612491 / 2500000000000000 : ℚ)
  oldLo := (19875000000000001 / 50000000000000000 : ℚ)
  oldHi := (19900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_966]
}

def cell_3916 : Cell := { cellDefaults with
  domain := ⟨(11687500000000001 / 100000000000000000 : ℚ), (11690625000000001 / 100000000000000000 : ℚ)⟩
  center := (11689062500000001 / 100000000000000000 : ℚ)
  supportValue := (9951202336950149 / 25000000000000000 : ℚ)
  supportSlope := (4403347697675031 / 1000000000000000 : ℚ)
  oldCenter := (9951202336950149 / 25000000000000000 : ℚ)
  oldLo := (19875000000000001 / 50000000000000000 : ℚ)
  oldHi := (19925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_966, piece_967]
}

def cell_3917 : Cell := { cellDefaults with
  domain := ⟨(11690625000000001 / 100000000000000000 : ℚ), (11693750000000001 / 100000000000000000 : ℚ)⟩
  center := (11692187500000001 / 100000000000000000 : ℚ)
  supportValue := (3981857895859513 / 10000000000000000 : ℚ)
  supportSlope := (2202280284130609 / 500000000000000 : ℚ)
  oldCenter := (3981857895859513 / 10000000000000000 : ℚ)
  oldLo := (19900000000000001 / 50000000000000000 : ℚ)
  oldHi := (19925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_967]
}

def cell_3918 : Cell := { cellDefaults with
  domain := ⟨(11693750000000001 / 100000000000000000 : ℚ), (11696875000000001 / 100000000000000000 : ℚ)⟩
  center := (11695312500000001 / 100000000000000000 : ℚ)
  supportValue := (3983234581218513 / 10000000000000000 : ℚ)
  supportSlope := (440622745051833 / 100000000000000 : ℚ)
  oldCenter := (3983234581218513 / 10000000000000000 : ℚ)
  oldLo := (19900000000000001 / 50000000000000000 : ℚ)
  oldHi := (19925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_967]
}

def cell_3919 : Cell := { cellDefaults with
  domain := ⟨(11696875000000001 / 100000000000000000 : ℚ), (11700000000000001 / 100000000000000000 : ℚ)⟩
  center := (11698437500000001 / 100000000000000000 : ℚ)
  supportValue := (19923054955405853 / 50000000000000000 : ℚ)
  supportSlope := (4407241960363351 / 1000000000000000 : ℚ)
  oldCenter := (19923054955405853 / 50000000000000000 : ℚ)
  oldLo := (19900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_967, piece_968]
}

def cell_3920 : Cell := { cellDefaults with
  domain := ⟨(11700000000000001 / 100000000000000000 : ℚ), (11703125000000001 / 100000000000000000 : ℚ)⟩
  r := (10642991083541 / 10000000000000 : ℚ)
  w := (97906716435823 / 100000000000000 : ℚ)
  center := (11701562500000001 / 100000000000000000 : ℚ)
  supportValue := (995901211932513 / 2500000000000000 : ℚ)
  supportSlope := (8810988562842681 / 2000000000000000 : ℚ)
  oldCenter := (995901211932513 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_354
  oldLo := (19900000000000001 / 50000000000000000 : ℚ)
  oldHi := (19925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_967]
}

def cell_3921 : Cell := { cellDefaults with
  domain := ⟨(11703125000000001 / 100000000000000000 : ℚ), (11706250000000001 / 100000000000000000 : ℚ)⟩
  r := (10642991083541 / 10000000000000 : ℚ)
  w := (97906716435823 / 100000000000000 : ℚ)
  center := (11704687500000001 / 100000000000000000 : ℚ)
  supportValue := (1992490514510603 / 5000000000000000 : ℚ)
  supportSlope := (4405705688963479 / 1000000000000000 : ℚ)
  oldCenter := (1992490514510603 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_354
  oldLo := (19900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_967, piece_968]
}

def cell_3922 : Cell := { cellDefaults with
  domain := ⟨(11706250000000001 / 100000000000000000 : ℚ), (11709375000000001 / 100000000000000000 : ℚ)⟩
  r := (10642991083541 / 10000000000000 : ℚ)
  w := (97906716435823 / 100000000000000 : ℚ)
  center := (11707812500000001 / 100000000000000000 : ℚ)
  supportValue := (996589600060343 / 2500000000000000 : ℚ)
  supportSlope := (550728656689703 / 125000000000000 : ℚ)
  oldCenter := (996589600060343 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_354
  oldLo := (19925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_968]
}

def cell_3923 : Cell := { cellDefaults with
  domain := ⟨(11709375000000001 / 100000000000000000 : ℚ), (11712500000000001 / 100000000000000000 : ℚ)⟩
  r := (10642991083541 / 10000000000000 : ℚ)
  w := (97906716435823 / 100000000000000 : ℚ)
  center := (11710937500000001 / 100000000000000000 : ℚ)
  supportValue := (2492334675862419 / 6250000000000000 : ℚ)
  supportSlope := (2203745874086671 / 500000000000000 : ℚ)
  oldCenter := (2492334675862419 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_354
  oldLo := (19925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_968]
}

def cell_3924 : Cell := { cellDefaults with
  domain := ⟨(11712500000000001 / 100000000000000000 : ℚ), (11715625000000001 / 100000000000000000 : ℚ)⟩
  r := (10642991083541 / 10000000000000 : ℚ)
  w := (97906716435823 / 100000000000000 : ℚ)
  center := (11714062500000001 / 100000000000000000 : ℚ)
  supportValue := (124659783830297 / 312500000000000 : ℚ)
  supportSlope := (4409157583545209 / 1000000000000000 : ℚ)
  oldCenter := (124659783830297 / 312500000000000 : ℚ)
  newCoefficients := coefficients_354
  oldLo := (19925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_968]
}

def cell_3925 : Cell := { cellDefaults with
  domain := ⟨(11715625000000001 / 100000000000000000 : ℚ), (11718750000000001 / 100000000000000000 : ℚ)⟩
  r := (10642991083541 / 10000000000000 : ℚ)
  w := (97906716435823 / 100000000000000 : ℚ)
  center := (11717187500000001 / 100000000000000000 : ℚ)
  supportValue := (9976225184967509 / 25000000000000000 : ℚ)
  supportSlope := (220413267668107 / 50000000000000 : ℚ)
  oldCenter := (9976225184967509 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_354
  oldLo := (19925000000000001 / 50000000000000000 : ℚ)
  oldHi := (19975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_968, piece_969]
}

def cell_3926 : Cell := { cellDefaults with
  domain := ⟨(11718750000000001 / 100000000000000000 : ℚ), (11721875000000001 / 100000000000000000 : ℚ)⟩
  r := (10642991083541 / 10000000000000 : ℚ)
  w := (97906716435823 / 100000000000000 : ℚ)
  center := (11720312500000001 / 100000000000000000 : ℚ)
  supportValue := (1995934289894191 / 5000000000000000 : ℚ)
  supportSlope := (22047464581183007 / 5000000000000000 : ℚ)
  oldCenter := (1995934289894191 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_354
  oldLo := (19950000000000001 / 50000000000000000 : ℚ)
  oldHi := (19975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_969]
}

def cell_3927 : Cell := { cellDefaults with
  domain := ⟨(11721875000000001 / 100000000000000000 : ℚ), (11725000000000001 / 100000000000000000 : ℚ)⟩
  r := (10642991083541 / 10000000000000 : ℚ)
  w := (97906716435823 / 100000000000000 : ℚ)
  center := (11723437500000001 / 100000000000000000 : ℚ)
  supportValue := (99831170128521 / 250000000000000 : ℚ)
  supportSlope := (1102787762509383 / 250000000000000 : ℚ)
  oldCenter := (99831170128521 / 250000000000000 : ℚ)
  newCoefficients := coefficients_354
  oldLo := (19950000000000001 / 50000000000000000 : ℚ)
  oldHi := (19975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_969]
}

def cell_3928 : Cell := { cellDefaults with
  domain := ⟨(11725000000000001 / 100000000000000000 : ℚ), (11728125000000001 / 100000000000000000 : ℚ)⟩
  r := (10642991083541 / 10000000000000 : ℚ)
  w := (97906716435823 / 100000000000000 : ℚ)
  center := (11726562500000001 / 100000000000000000 : ℚ)
  supportValue := (624160117227039 / 1562500000000000 : ℚ)
  supportSlope := (2206066592162159 / 500000000000000 : ℚ)
  oldCenter := (624160117227039 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_354
  oldLo := (19950000000000001 / 50000000000000000 : ℚ)
  oldHi := (20000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_969, piece_970]
}

def cell_3929 : Cell := { cellDefaults with
  domain := ⟨(11728125000000001 / 100000000000000000 : ℚ), (11731250000000001 / 100000000000000000 : ℚ)⟩
  r := (10642991083541 / 10000000000000 : ℚ)
  w := (97906716435823 / 100000000000000 : ℚ)
  center := (11729687500000001 / 100000000000000000 : ℚ)
  supportValue := (39960041356986653 / 100000000000000000 : ℚ)
  supportSlope := (1102874327017389 / 250000000000000 : ℚ)
  oldCenter := (39960041356986653 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_354
  oldLo := (19975000000000001 / 50000000000000000 : ℚ)
  oldHi := (20000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_970]
}

def cell_3930 : Cell := { cellDefaults with
  domain := ⟨(11731250000000001 / 100000000000000000 : ℚ), (11734375000000001 / 100000000000000000 : ℚ)⟩
  r := (10642991083541 / 10000000000000 : ℚ)
  w := (97906716435823 / 100000000000000 : ℚ)
  center := (11732812500000001 / 100000000000000000 : ℚ)
  supportValue := (39973829863101573 / 100000000000000000 : ℚ)
  supportSlope := (4413148309092563 / 1000000000000000 : ℚ)
  oldCenter := (39973829863101573 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_354
  oldLo := (19975000000000001 / 50000000000000000 : ℚ)
  oldHi := (20000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_970]
}

def cell_3931 : Cell := { cellDefaults with
  domain := ⟨(11734375000000001 / 100000000000000000 : ℚ), (11737500000000001 / 100000000000000000 : ℚ)⟩
  r := (10642991083541 / 10000000000000 : ℚ)
  w := (97906716435823 / 100000000000000 : ℚ)
  center := (11735937500000001 / 100000000000000000 : ℚ)
  supportValue := (3998762353373009 / 10000000000000000 : ℚ)
  supportSlope := (1103700649872863 / 250000000000000 : ℚ)
  oldCenter := (3998762353373009 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_354
  oldLo := (19975000000000001 / 50000000000000000 : ℚ)
  oldHi := (20000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_970]
}

def cell_3932 : Cell := { cellDefaults with
  domain := ⟨(11737500000000001 / 100000000000000000 : ℚ), (11740625000000001 / 100000000000000000 : ℚ)⟩
  r := (10642991083541 / 10000000000000 : ℚ)
  w := (97906716435823 / 100000000000000 : ℚ)
  center := (11739062500000001 / 100000000000000000 : ℚ)
  supportValue := (4000141342451659 / 10000000000000000 : ℚ)
  supportSlope := (4414674753711267 / 1000000000000000 : ℚ)
  oldCenter := (4000141342451659 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_354
  oldLo := (19975000000000001 / 50000000000000000 : ℚ)
  oldHi := (20025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_970, piece_971]
}

def cell_3933 : Cell := { cellDefaults with
  domain := ⟨(11740625000000001 / 100000000000000000 : ℚ), (11743750000000001 / 100000000000000000 : ℚ)⟩
  r := (10642991083541 / 10000000000000 : ℚ)
  w := (97906716435823 / 100000000000000 : ℚ)
  center := (11742187500000001 / 100000000000000000 : ℚ)
  supportValue := (1000380404793797 / 2500000000000000 : ℚ)
  supportSlope := (4415148158560811 / 1000000000000000 : ℚ)
  oldCenter := (1000380404793797 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_354
  oldLo := (20000000000000001 / 50000000000000000 : ℚ)
  oldHi := (20025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_971]
}

def cell_3934 : Cell := { cellDefaults with
  domain := ⟨(11743750000000001 / 100000000000000000 : ℚ), (11746875000000001 / 100000000000000000 : ℚ)⟩
  r := (10642991083541 / 10000000000000 : ℚ)
  w := (97906716435823 / 100000000000000 : ℚ)
  center := (11745312500000001 / 100000000000000000 : ℚ)
  supportValue := (15636334414289 / 39062500000000 : ℚ)
  supportSlope := (1104198797658107 / 250000000000000 : ℚ)
  oldCenter := (15636334414289 / 39062500000000 : ℚ)
  newCoefficients := coefficients_354
  oldLo := (20000000000000001 / 50000000000000000 : ℚ)
  oldHi := (20025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_971]
}

def cell_3935 : Cell := { cellDefaults with
  domain := ⟨(11746875000000001 / 100000000000000000 : ℚ), (11750000000000001 / 100000000000000000 : ℚ)⟩
  r := (10642991083541 / 10000000000000 : ℚ)
  w := (97906716435823 / 100000000000000 : ℚ)
  center := (11748437500000001 / 100000000000000000 : ℚ)
  supportValue := (2002141058074341 / 5000000000000000 : ℚ)
  supportSlope := (4418445491809919 / 1000000000000000 : ℚ)
  oldCenter := (2002141058074341 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_354
  oldLo := (20000000000000001 / 50000000000000000 : ℚ)
  oldHi := (20025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_971]
}

def cell_3936 : Cell := { cellDefaults with
  domain := ⟨(11750000000000001 / 100000000000000000 : ℚ), (11753125000000001 / 100000000000000000 : ℚ)⟩
  r := (1063021807093 / 1000000000000 : ℚ)
  w := (24487525885199 / 25000000000000 : ℚ)
  center := (11751562500000001 / 100000000000000000 : ℚ)
  supportValue := (4003241154510007 / 10000000000000000 : ℚ)
  supportSlope := (275999214611633 / 62500000000000 : ℚ)
  oldCenter := (4003241154510007 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_355
  oldLo := (20000000000000001 / 50000000000000000 : ℚ)
  oldHi := (20025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_971]
}

def cell_3937 : Cell := { cellDefaults with
  domain := ⟨(11753125000000001 / 100000000000000000 : ℚ), (11756250000000001 / 100000000000000000 : ℚ)⟩
  r := (1063021807093 / 1000000000000 : ℚ)
  w := (24487525885199 / 25000000000000 : ℚ)
  center := (11754687500000001 / 100000000000000000 : ℚ)
  supportValue := (8009241215621531 / 20000000000000000 : ℚ)
  supportSlope := (883395345456961 / 200000000000000 : ℚ)
  oldCenter := (8009241215621531 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_355
  oldLo := (20000000000000001 / 50000000000000000 : ℚ)
  oldHi := (20050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_971, piece_972]
}

def cell_3938 : Cell := { cellDefaults with
  domain := ⟨(11756250000000001 / 100000000000000000 : ℚ), (11759375000000001 / 100000000000000000 : ℚ)⟩
  r := (1063021807093 / 1000000000000 : ℚ)
  w := (24487525885199 / 25000000000000 : ℚ)
  center := (11757812500000001 / 100000000000000000 : ℚ)
  supportValue := (4006001512313873 / 10000000000000000 : ℚ)
  supportSlope := (2208174091094861 / 500000000000000 : ℚ)
  oldCenter := (4006001512313873 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_355
  oldLo := (20025000000000001 / 50000000000000000 : ℚ)
  oldHi := (20050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_972]
}

def cell_3939 : Cell := { cellDefaults with
  domain := ⟨(11759375000000001 / 100000000000000000 : ℚ), (11762500000000001 / 100000000000000000 : ℚ)⟩
  r := (1063021807093 / 1000000000000 : ℚ)
  w := (24487525885199 / 25000000000000 : ℚ)
  center := (11760937500000001 / 100000000000000000 : ℚ)
  supportValue := (40073818776207937 / 100000000000000000 : ℚ)
  supportSlope := (1104497869061749 / 250000000000000 : ℚ)
  oldCenter := (40073818776207937 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_355
  oldLo := (20025000000000001 / 50000000000000000 : ℚ)
  oldHi := (20050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_972]
}

def cell_3940 : Cell := { cellDefaults with
  domain := ⟨(11762500000000001 / 100000000000000000 : ℚ), (11765625000000001 / 100000000000000000 : ℚ)⟩
  r := (1063021807093 / 1000000000000 : ℚ)
  w := (24487525885199 / 25000000000000 : ℚ)
  center := (11764062500000001 / 100000000000000000 : ℚ)
  supportValue := (4008762756964131 / 10000000000000000 : ℚ)
  supportSlope := (2209819008974101 / 500000000000000 : ℚ)
  oldCenter := (4008762756964131 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_355
  oldLo := (20025000000000001 / 50000000000000000 : ℚ)
  oldHi := (20050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_972]
}

def cell_3941 : Cell := { cellDefaults with
  domain := ⟨(11765625000000001 / 100000000000000000 : ℚ), (11768750000000001 / 100000000000000000 : ℚ)⟩
  r := (1063021807093 / 1000000000000 : ℚ)
  w := (24487525885199 / 25000000000000 : ℚ)
  center := (11767187500000001 / 100000000000000000 : ℚ)
  supportValue := (4010143253731921 / 10000000000000000 : ℚ)
  supportSlope := (1767806932735283 / 400000000000000 : ℚ)
  oldCenter := (4010143253731921 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_355
  oldLo := (20025000000000001 / 50000000000000000 : ℚ)
  oldHi := (20075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_972, piece_973]
}

def cell_3942 : Cell := { cellDefaults with
  domain := ⟨(11768750000000001 / 100000000000000000 : ℚ), (11771875000000001 / 100000000000000000 : ℚ)⟩
  r := (1063021807093 / 1000000000000 : ℚ)
  w := (24487525885199 / 25000000000000 : ℚ)
  center := (11770312500000001 / 100000000000000000 : ℚ)
  supportValue := (20057625247672603 / 50000000000000000 : ℚ)
  supportSlope := (2209999436685983 / 500000000000000 : ℚ)
  oldCenter := (20057625247672603 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_355
  oldLo := (20050000000000001 / 50000000000000000 : ℚ)
  oldHi := (20075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_973]
}

def cell_3943 : Cell := { cellDefaults with
  domain := ⟨(11771875000000001 / 100000000000000000 : ℚ), (11775000000000001 / 100000000000000000 : ℚ)⟩
  r := (1063021807093 / 1000000000000 : ℚ)
  w := (24487525885199 / 25000000000000 : ℚ)
  center := (11773437500000001 / 100000000000000000 : ℚ)
  supportValue := (2006453277515893 / 5000000000000000 : ℚ)
  supportSlope := (4421637998820671 / 1000000000000000 : ℚ)
  oldCenter := (2006453277515893 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_355
  oldLo := (20050000000000001 / 50000000000000000 : ℚ)
  oldHi := (20075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_973]
}

def cell_3944 : Cell := { cellDefaults with
  domain := ⟨(11775000000000001 / 100000000000000000 : ℚ), (11778125000000001 / 100000000000000000 : ℚ)⟩
  r := (1063021807093 / 1000000000000 : ℚ)
  w := (24487525885199 / 25000000000000 : ℚ)
  center := (11776562500000001 / 100000000000000000 : ℚ)
  supportValue := (40142885732595157 / 100000000000000000 : ℚ)
  supportSlope := (4423280350986047 / 1000000000000000 : ℚ)
  oldCenter := (40142885732595157 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_355
  oldLo := (20050000000000001 / 50000000000000000 : ℚ)
  oldHi := (20075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_973]
}

def cell_3945 : Cell := { cellDefaults with
  domain := ⟨(11778125000000001 / 100000000000000000 : ℚ), (11781250000000001 / 100000000000000000 : ℚ)⟩
  r := (1063021807093 / 1000000000000 : ℚ)
  w := (24487525885199 / 25000000000000 : ℚ)
  center := (11779687500000001 / 100000000000000000 : ℚ)
  supportValue := (40156706632510347 / 100000000000000000 : ℚ)
  supportSlope := (8844102602019177 / 2000000000000000 : ℚ)
  oldCenter := (40156706632510347 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_355
  oldLo := (20050000000000001 / 50000000000000000 : ℚ)
  oldHi := (20100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_973, piece_974]
}

def cell_3946 : Cell := { cellDefaults with
  domain := ⟨(11781250000000001 / 100000000000000000 : ℚ), (11784375000000001 / 100000000000000000 : ℚ)⟩
  r := (1063021807093 / 1000000000000 : ℚ)
  w := (24487525885199 / 25000000000000 : ℚ)
  center := (11782812500000001 / 100000000000000000 : ℚ)
  supportValue := (40170527959322017 / 100000000000000000 : ℚ)
  supportSlope := (884728247119071 / 200000000000000 : ℚ)
  oldCenter := (40170527959322017 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_355
  oldLo := (20075000000000001 / 50000000000000000 : ℚ)
  oldHi := (20100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_974]
}

def cell_3947 : Cell := { cellDefaults with
  domain := ⟨(11784375000000001 / 100000000000000000 : ℚ), (11787500000000001 / 100000000000000000 : ℚ)⟩
  r := (1063021807093 / 1000000000000 : ℚ)
  w := (24487525885199 / 25000000000000 : ℚ)
  center := (11785937500000001 / 100000000000000000 : ℚ)
  supportValue := (8036870877993021 / 20000000000000000 : ℚ)
  supportSlope := (2212638030538727 / 500000000000000 : ℚ)
  oldCenter := (8036870877993021 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_355
  oldLo := (20075000000000001 / 50000000000000000 : ℚ)
  oldHi := (20100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_974]
}

def cell_3948 : Cell := { cellDefaults with
  domain := ⟨(11787500000000001 / 100000000000000000 : ℚ), (11790625000000001 / 100000000000000000 : ℚ)⟩
  r := (1063021807093 / 1000000000000 : ℚ)
  w := (24487525885199 / 25000000000000 : ℚ)
  center := (11789062500000001 / 100000000000000000 : ℚ)
  supportValue := (8039635578960841 / 20000000000000000 : ℚ)
  supportSlope := (8851690099149323 / 2000000000000000 : ℚ)
  oldCenter := (8039635578960841 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_355
  oldLo := (20075000000000001 / 50000000000000000 : ℚ)
  oldHi := (20125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_974, piece_975]
}

def cell_3949 : Cell := { cellDefaults with
  domain := ⟨(11790625000000001 / 100000000000000000 : ℚ), (11793750000000001 / 100000000000000000 : ℚ)⟩
  r := (1063021807093 / 1000000000000 : ℚ)
  w := (24487525885199 / 25000000000000 : ℚ)
  center := (11792187500000001 / 100000000000000000 : ℚ)
  supportValue := (2513250920349179 / 6250000000000000 : ℚ)
  supportSlope := (276602981823193 / 62500000000000 : ℚ)
  oldCenter := (2513250920349179 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_355
  oldLo := (20100000000000001 / 50000000000000000 : ℚ)
  oldHi := (20125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_975]
}

theorem check_3900 : SourceCertificateFamily.RightNormalized.check cell_3900 = true := by
  decide +kernel

theorem check_3901 : SourceCertificateFamily.RightNormalized.check cell_3901 = true := by
  decide +kernel

theorem check_3902 : SourceCertificateFamily.RightNormalized.check cell_3902 = true := by
  decide +kernel

theorem check_3903 : SourceCertificateFamily.RightNormalized.check cell_3903 = true := by
  decide +kernel

theorem check_3904 : SourceCertificateFamily.RightNormalized.check cell_3904 = true := by
  decide +kernel

theorem check_3905 : SourceCertificateFamily.RightNormalized.check cell_3905 = true := by
  decide +kernel

theorem check_3906 : SourceCertificateFamily.RightNormalized.check cell_3906 = true := by
  decide +kernel

theorem check_3907 : SourceCertificateFamily.RightNormalized.check cell_3907 = true := by
  decide +kernel

theorem check_3908 : SourceCertificateFamily.RightNormalized.check cell_3908 = true := by
  decide +kernel

theorem check_3909 : SourceCertificateFamily.RightNormalized.check cell_3909 = true := by
  decide +kernel

theorem check_3910 : SourceCertificateFamily.RightNormalized.check cell_3910 = true := by
  decide +kernel

theorem check_3911 : SourceCertificateFamily.RightNormalized.check cell_3911 = true := by
  decide +kernel

theorem check_3912 : SourceCertificateFamily.RightNormalized.check cell_3912 = true := by
  decide +kernel

theorem check_3913 : SourceCertificateFamily.RightNormalized.check cell_3913 = true := by
  decide +kernel

theorem check_3914 : SourceCertificateFamily.RightNormalized.check cell_3914 = true := by
  decide +kernel

theorem check_3915 : SourceCertificateFamily.RightNormalized.check cell_3915 = true := by
  decide +kernel

theorem check_3916 : SourceCertificateFamily.RightNormalized.check cell_3916 = true := by
  decide +kernel

theorem check_3917 : SourceCertificateFamily.RightNormalized.check cell_3917 = true := by
  decide +kernel

theorem check_3918 : SourceCertificateFamily.RightNormalized.check cell_3918 = true := by
  decide +kernel

theorem check_3919 : SourceCertificateFamily.RightNormalized.check cell_3919 = true := by
  decide +kernel

theorem check_3920 : SourceCertificateFamily.RightNormalized.check cell_3920 = true := by
  decide +kernel

theorem check_3921 : SourceCertificateFamily.RightNormalized.check cell_3921 = true := by
  decide +kernel

theorem check_3922 : SourceCertificateFamily.RightNormalized.check cell_3922 = true := by
  decide +kernel

theorem check_3923 : SourceCertificateFamily.RightNormalized.check cell_3923 = true := by
  decide +kernel

theorem check_3924 : SourceCertificateFamily.RightNormalized.check cell_3924 = true := by
  decide +kernel

theorem check_3925 : SourceCertificateFamily.RightNormalized.check cell_3925 = true := by
  decide +kernel

theorem check_3926 : SourceCertificateFamily.RightNormalized.check cell_3926 = true := by
  decide +kernel

theorem check_3927 : SourceCertificateFamily.RightNormalized.check cell_3927 = true := by
  decide +kernel

theorem check_3928 : SourceCertificateFamily.RightNormalized.check cell_3928 = true := by
  decide +kernel

theorem check_3929 : SourceCertificateFamily.RightNormalized.check cell_3929 = true := by
  decide +kernel

theorem check_3930 : SourceCertificateFamily.RightNormalized.check cell_3930 = true := by
  decide +kernel

theorem check_3931 : SourceCertificateFamily.RightNormalized.check cell_3931 = true := by
  decide +kernel

theorem check_3932 : SourceCertificateFamily.RightNormalized.check cell_3932 = true := by
  decide +kernel

theorem check_3933 : SourceCertificateFamily.RightNormalized.check cell_3933 = true := by
  decide +kernel

theorem check_3934 : SourceCertificateFamily.RightNormalized.check cell_3934 = true := by
  decide +kernel

theorem check_3935 : SourceCertificateFamily.RightNormalized.check cell_3935 = true := by
  decide +kernel

theorem check_3936 : SourceCertificateFamily.RightNormalized.check cell_3936 = true := by
  decide +kernel

theorem check_3937 : SourceCertificateFamily.RightNormalized.check cell_3937 = true := by
  decide +kernel

theorem check_3938 : SourceCertificateFamily.RightNormalized.check cell_3938 = true := by
  decide +kernel

theorem check_3939 : SourceCertificateFamily.RightNormalized.check cell_3939 = true := by
  decide +kernel

theorem check_3940 : SourceCertificateFamily.RightNormalized.check cell_3940 = true := by
  decide +kernel

theorem check_3941 : SourceCertificateFamily.RightNormalized.check cell_3941 = true := by
  decide +kernel

theorem check_3942 : SourceCertificateFamily.RightNormalized.check cell_3942 = true := by
  decide +kernel

theorem check_3943 : SourceCertificateFamily.RightNormalized.check cell_3943 = true := by
  decide +kernel

theorem check_3944 : SourceCertificateFamily.RightNormalized.check cell_3944 = true := by
  decide +kernel

theorem check_3945 : SourceCertificateFamily.RightNormalized.check cell_3945 = true := by
  decide +kernel

theorem check_3946 : SourceCertificateFamily.RightNormalized.check cell_3946 = true := by
  decide +kernel

theorem check_3947 : SourceCertificateFamily.RightNormalized.check cell_3947 = true := by
  decide +kernel

theorem check_3948 : SourceCertificateFamily.RightNormalized.check cell_3948 = true := by
  decide +kernel

theorem check_3949 : SourceCertificateFamily.RightNormalized.check cell_3949 = true := by
  decide +kernel

def cells : List Cell := [cell_3900, cell_3901, cell_3902, cell_3903, cell_3904, cell_3905, cell_3906, cell_3907, cell_3908, cell_3909, cell_3910, cell_3911, cell_3912, cell_3913, cell_3914, cell_3915, cell_3916, cell_3917, cell_3918, cell_3919, cell_3920, cell_3921, cell_3922, cell_3923, cell_3924, cell_3925, cell_3926, cell_3927, cell_3928, cell_3929, cell_3930, cell_3931, cell_3932, cell_3933, cell_3934, cell_3935, cell_3936, cell_3937, cell_3938, cell_3939, cell_3940, cell_3941, cell_3942, cell_3943, cell_3944, cell_3945, cell_3946, cell_3947, cell_3948, cell_3949]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_3900, SourceCertificateFamily.of_right_checked check_3901, SourceCertificateFamily.of_right_checked check_3902, SourceCertificateFamily.of_right_checked check_3903, SourceCertificateFamily.of_right_checked check_3904, SourceCertificateFamily.of_right_checked check_3905, SourceCertificateFamily.of_right_checked check_3906, SourceCertificateFamily.of_right_checked check_3907, SourceCertificateFamily.of_right_checked check_3908, SourceCertificateFamily.of_right_checked check_3909, SourceCertificateFamily.of_right_checked check_3910, SourceCertificateFamily.of_right_checked check_3911, SourceCertificateFamily.of_right_checked check_3912, SourceCertificateFamily.of_right_checked check_3913, SourceCertificateFamily.of_right_checked check_3914, SourceCertificateFamily.of_right_checked check_3915, SourceCertificateFamily.of_right_checked check_3916, SourceCertificateFamily.of_right_checked check_3917, SourceCertificateFamily.of_right_checked check_3918, SourceCertificateFamily.of_right_checked check_3919, SourceCertificateFamily.of_right_checked check_3920, SourceCertificateFamily.of_right_checked check_3921, SourceCertificateFamily.of_right_checked check_3922, SourceCertificateFamily.of_right_checked check_3923, SourceCertificateFamily.of_right_checked check_3924, SourceCertificateFamily.of_right_checked check_3925, SourceCertificateFamily.of_right_checked check_3926, SourceCertificateFamily.of_right_checked check_3927, SourceCertificateFamily.of_right_checked check_3928, SourceCertificateFamily.of_right_checked check_3929, SourceCertificateFamily.of_right_checked check_3930, SourceCertificateFamily.of_right_checked check_3931, SourceCertificateFamily.of_right_checked check_3932, SourceCertificateFamily.of_right_checked check_3933, SourceCertificateFamily.of_right_checked check_3934, SourceCertificateFamily.of_right_checked check_3935, SourceCertificateFamily.of_right_checked check_3936, SourceCertificateFamily.of_right_checked check_3937, SourceCertificateFamily.of_right_checked check_3938, SourceCertificateFamily.of_right_checked check_3939, SourceCertificateFamily.of_right_checked check_3940, SourceCertificateFamily.of_right_checked check_3941, SourceCertificateFamily.of_right_checked check_3942, SourceCertificateFamily.of_right_checked check_3943, SourceCertificateFamily.of_right_checked check_3944, SourceCertificateFamily.of_right_checked check_3945, SourceCertificateFamily.of_right_checked check_3946, SourceCertificateFamily.of_right_checked check_3947, SourceCertificateFamily.of_right_checked check_3948, SourceCertificateFamily.of_right_checked check_3949, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0078

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0078
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0078
open AnalyticBounds.ExpressionCertificate

theorem linked_3900 : Linked cell_3900 pieces := by
  refine ⟨piece_352,piece_352_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3900,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_962_mem

theorem linked_3901 : Linked cell_3901 pieces := by
  refine ⟨piece_352,piece_352_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3901,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_962_mem

theorem linked_3902 : Linked cell_3902 pieces := by
  refine ⟨piece_352,piece_352_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3902,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_962_mem

theorem linked_3903 : Linked cell_3903 pieces := by
  refine ⟨piece_352,piece_352_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3903,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_962_mem
    · exact piece_963_mem

theorem linked_3904 : Linked cell_3904 pieces := by
  refine ⟨piece_353,piece_353_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3904,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_962_mem

theorem linked_3905 : Linked cell_3905 pieces := by
  refine ⟨piece_353,piece_353_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3905,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_962_mem
    · exact piece_963_mem

theorem linked_3906 : Linked cell_3906 pieces := by
  refine ⟨piece_353,piece_353_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3906,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_963_mem

theorem linked_3907 : Linked cell_3907 pieces := by
  refine ⟨piece_353,piece_353_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3907,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_963_mem

theorem linked_3908 : Linked cell_3908 pieces := by
  refine ⟨piece_353,piece_353_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3908,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_963_mem
    · exact piece_964_mem

theorem linked_3909 : Linked cell_3909 pieces := by
  refine ⟨piece_353,piece_353_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3909,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_964_mem
    · exact piece_965_mem

theorem linked_3910 : Linked cell_3910 pieces := by
  refine ⟨piece_353,piece_353_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3910,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_965_mem

theorem linked_3911 : Linked cell_3911 pieces := by
  refine ⟨piece_353,piece_353_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3911,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_965_mem

theorem linked_3912 : Linked cell_3912 pieces := by
  refine ⟨piece_353,piece_353_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3912,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_965_mem
    · exact piece_966_mem

theorem linked_3913 : Linked cell_3913 pieces := by
  refine ⟨piece_353,piece_353_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3913,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_966_mem

theorem linked_3914 : Linked cell_3914 pieces := by
  refine ⟨piece_353,piece_353_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3914,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_966_mem

theorem linked_3915 : Linked cell_3915 pieces := by
  refine ⟨piece_353,piece_353_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3915,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_966_mem

theorem linked_3916 : Linked cell_3916 pieces := by
  refine ⟨piece_353,piece_353_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3916,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_966_mem
    · exact piece_967_mem

theorem linked_3917 : Linked cell_3917 pieces := by
  refine ⟨piece_353,piece_353_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3917,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_967_mem

theorem linked_3918 : Linked cell_3918 pieces := by
  refine ⟨piece_353,piece_353_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3918,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_967_mem

theorem linked_3919 : Linked cell_3919 pieces := by
  refine ⟨piece_353,piece_353_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3919,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_967_mem
    · exact piece_968_mem

theorem linked_3920 : Linked cell_3920 pieces := by
  refine ⟨piece_354,piece_354_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3920,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_967_mem

theorem linked_3921 : Linked cell_3921 pieces := by
  refine ⟨piece_354,piece_354_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3921,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_967_mem
    · exact piece_968_mem

theorem linked_3922 : Linked cell_3922 pieces := by
  refine ⟨piece_354,piece_354_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3922,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_968_mem

theorem linked_3923 : Linked cell_3923 pieces := by
  refine ⟨piece_354,piece_354_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3923,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_968_mem

theorem linked_3924 : Linked cell_3924 pieces := by
  refine ⟨piece_354,piece_354_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3924,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_968_mem

theorem linked_3925 : Linked cell_3925 pieces := by
  refine ⟨piece_354,piece_354_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3925,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_968_mem
    · exact piece_969_mem

theorem linked_3926 : Linked cell_3926 pieces := by
  refine ⟨piece_354,piece_354_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3926,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_969_mem

theorem linked_3927 : Linked cell_3927 pieces := by
  refine ⟨piece_354,piece_354_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3927,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_969_mem

theorem linked_3928 : Linked cell_3928 pieces := by
  refine ⟨piece_354,piece_354_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3928,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_969_mem
    · exact piece_970_mem

theorem linked_3929 : Linked cell_3929 pieces := by
  refine ⟨piece_354,piece_354_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3929,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_970_mem

theorem linked_3930 : Linked cell_3930 pieces := by
  refine ⟨piece_354,piece_354_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3930,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_970_mem

theorem linked_3931 : Linked cell_3931 pieces := by
  refine ⟨piece_354,piece_354_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3931,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_970_mem

theorem linked_3932 : Linked cell_3932 pieces := by
  refine ⟨piece_354,piece_354_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3932,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_970_mem
    · exact piece_971_mem

theorem linked_3933 : Linked cell_3933 pieces := by
  refine ⟨piece_354,piece_354_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3933,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_971_mem

theorem linked_3934 : Linked cell_3934 pieces := by
  refine ⟨piece_354,piece_354_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3934,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_971_mem

theorem linked_3935 : Linked cell_3935 pieces := by
  refine ⟨piece_354,piece_354_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3935,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_971_mem

theorem linked_3936 : Linked cell_3936 pieces := by
  refine ⟨piece_355,piece_355_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3936,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_971_mem

theorem linked_3937 : Linked cell_3937 pieces := by
  refine ⟨piece_355,piece_355_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3937,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_971_mem
    · exact piece_972_mem

theorem linked_3938 : Linked cell_3938 pieces := by
  refine ⟨piece_355,piece_355_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3938,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_972_mem

theorem linked_3939 : Linked cell_3939 pieces := by
  refine ⟨piece_355,piece_355_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3939,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_972_mem

theorem linked_3940 : Linked cell_3940 pieces := by
  refine ⟨piece_355,piece_355_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3940,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_972_mem

theorem linked_3941 : Linked cell_3941 pieces := by
  refine ⟨piece_355,piece_355_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3941,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_972_mem
    · exact piece_973_mem

theorem linked_3942 : Linked cell_3942 pieces := by
  refine ⟨piece_355,piece_355_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3942,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_973_mem

theorem linked_3943 : Linked cell_3943 pieces := by
  refine ⟨piece_355,piece_355_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3943,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_973_mem

theorem linked_3944 : Linked cell_3944 pieces := by
  refine ⟨piece_355,piece_355_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3944,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_973_mem

theorem linked_3945 : Linked cell_3945 pieces := by
  refine ⟨piece_355,piece_355_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3945,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_973_mem
    · exact piece_974_mem

theorem linked_3946 : Linked cell_3946 pieces := by
  refine ⟨piece_355,piece_355_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3946,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_974_mem

theorem linked_3947 : Linked cell_3947 pieces := by
  refine ⟨piece_355,piece_355_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3947,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_974_mem

theorem linked_3948 : Linked cell_3948 pieces := by
  refine ⟨piece_355,piece_355_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3948,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_974_mem
    · exact piece_975_mem

theorem linked_3949 : Linked cell_3949 pieces := by
  refine ⟨piece_355,piece_355_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3949,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_975_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0078.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0078.cells,List.forall_mem_cons]
  exact ⟨linked_3900, linked_3901, linked_3902, linked_3903, linked_3904, linked_3905, linked_3906, linked_3907, linked_3908, linked_3909, linked_3910, linked_3911, linked_3912, linked_3913, linked_3914, linked_3915, linked_3916, linked_3917, linked_3918, linked_3919, linked_3920, linked_3921, linked_3922, linked_3923, linked_3924, linked_3925, linked_3926, linked_3927, linked_3928, linked_3929, linked_3930, linked_3931, linked_3932, linked_3933, linked_3934, linked_3935, linked_3936, linked_3937, linked_3938, linked_3939, linked_3940, linked_3941, linked_3942, linked_3943, linked_3944, linked_3945, linked_3946, linked_3947, linked_3948, linked_3949, by simp⟩

theorem covered : covers (11637500000000001 / 100000000000000000 : ℚ) (11793750000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0078.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0078
