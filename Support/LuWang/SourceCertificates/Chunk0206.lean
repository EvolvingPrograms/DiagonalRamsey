import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0206
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(23168750000000001 / 50000000000000000 : ℚ), (23175000000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (32261566553 / 50000000000 : ℚ)
  w := (600669312219 / 400000000000 : ℚ)
  center := (23171875000000001 / 50000000000000000 : ℚ)
  supportValue := (5773728330988677 / 12500000000000000 : ℚ)
  supportSlope := (-23810387603058203 / 10000000000000000 : ℚ)
  oldCenter := (5773728330988677 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1110
  oldLo := (22800000000000001 / 50000000000000000 : ℚ)
  oldHi := (22825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1100, piece_1101]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10300 : Cell := { cellDefaults with
  r := (64561417720257 / 100000000000000 : ℚ)
  w := (7510926264483 / 5000000000000 : ℚ)
  newCoefficients := coefficients_1108
  oldLo := (23075000000000001 / 50000000000000000 : ℚ)
  oldHi := (23125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1105, piece_1106]
}

def cell_10301 : Cell := { cellDefaults with
  domain := ⟨(23175000000000001 / 50000000000000000 : ℚ), (4635195530726257 / 10000000000000000 : ℚ)⟩
  center := (23175488826815643 / 50000000000000000 : ℚ)
  supportValue := (2889669951646201 / 6250000000000000 : ℚ)
  supportSlope := (-476561923942659 / 200000000000000 : ℚ)
  oldCenter := (2889669951646201 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1109
  oldLo := (23100000000000001 / 50000000000000000 : ℚ)
  oldHi := (23125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1106]
}

def cell_10302 : Cell := { cellDefaults with
  domain := ⟨(4635195530726257 / 10000000000000000 : ℚ), (23181738826815643 / 50000000000000000 : ℚ)⟩
  center := (2897357280027933 / 6250000000000000 : ℚ)
  supportValue := (184874832669663 / 400000000000000 : ℚ)
  supportSlope := (-11907095455262837 / 5000000000000000 : ℚ)
  oldCenter := (184874832669663 / 400000000000000 : ℚ)
  oldLo := (23100000000000001 / 50000000000000000 : ℚ)
  oldHi := (23125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1106]
}

def cell_10303 : Cell := { cellDefaults with
  domain := ⟨(23181738826815643 / 50000000000000000 : ℚ), (23187500000000001 / 50000000000000000 : ℚ)⟩
  center := (11592309706703911 / 25000000000000000 : ℚ)
  supportValue := (23095639689065303 / 50000000000000000 : ℚ)
  supportSlope := (-2379691134450483 / 1000000000000000 : ℚ)
  oldCenter := (23095639689065303 / 50000000000000000 : ℚ)
  oldLo := (23075000000000001 / 50000000000000000 : ℚ)
  oldHi := (23125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1105, piece_1106]
}

def cell_10304 : Cell := { cellDefaults with
  domain := ⟨(23187500000000001 / 50000000000000000 : ℚ), (23193750000000001 / 50000000000000000 : ℚ)⟩
  center := (23190625000000001 / 50000000000000000 : ℚ)
  supportValue := (923254192714193 / 2000000000000000 : ℚ)
  supportSlope := (-118870788249259 / 50000000000000 : ℚ)
  oldCenter := (923254192714193 / 2000000000000000 : ℚ)
  oldLo := (23050000000000001 / 50000000000000000 : ℚ)
  oldHi := (23100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1104, piece_1105]
}

def cell_10305 : Cell := { cellDefaults with
  domain := ⟨(23193750000000001 / 50000000000000000 : ℚ), (23200000000000001 / 50000000000000000 : ℚ)⟩
  center := (23196875000000001 / 50000000000000000 : ℚ)
  supportValue := (46133003043104737 / 100000000000000000 : ℚ)
  supportSlope := (-593893792337763 / 250000000000000 : ℚ)
  oldCenter := (46133003043104737 / 100000000000000000 : ℚ)
  oldLo := (23050000000000001 / 50000000000000000 : ℚ)
  oldHi := (23075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1104]
}

def cell_10306 : Cell := { cellDefaults with
  domain := ⟨(23200000000000001 / 50000000000000000 : ℚ), (23206250000000001 / 50000000000000000 : ℚ)⟩
  r := (64484897488033 / 100000000000000 : ℚ)
  w := (15011622739899 / 10000000000000 : ℚ)
  center := (23203125000000001 / 50000000000000000 : ℚ)
  supportValue := (23082655111212863 / 50000000000000000 : ℚ)
  supportSlope := (-2320439442937 / 976562500000 : ℚ)
  oldCenter := (23082655111212863 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1111
  oldLo := (23075000000000001 / 50000000000000000 : ℚ)
  oldHi := (23100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1105]
}

def cell_10307 : Cell := { cellDefaults with
  domain := ⟨(23206250000000001 / 50000000000000000 : ℚ), (23212500000000001 / 50000000000000000 : ℚ)⟩
  r := (64484897488033 / 100000000000000 : ℚ)
  w := (15011622739899 / 10000000000000 : ℚ)
  center := (23209375000000001 / 50000000000000000 : ℚ)
  supportValue := (4613561982008243 / 10000000000000000 : ℚ)
  supportSlope := (-37099065796381 / 15625000000000 : ℚ)
  oldCenter := (4613561982008243 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1111
  oldLo := (23050000000000001 / 50000000000000000 : ℚ)
  oldHi := (23100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1104, piece_1105]
}

def cell_10308 : Cell := { cellDefaults with
  domain := ⟨(23212500000000001 / 50000000000000000 : ℚ), (23218750000000001 / 50000000000000000 : ℚ)⟩
  r := (64484897488033 / 100000000000000 : ℚ)
  w := (15011622739899 / 10000000000000 : ℚ)
  center := (23215625000000001 / 50000000000000000 : ℚ)
  supportValue := (23052978236092647 / 50000000000000000 : ℚ)
  supportSlope := (-593005084147169 / 250000000000000 : ℚ)
  oldCenter := (23052978236092647 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1111
  oldLo := (23025000000000001 / 50000000000000000 : ℚ)
  oldHi := (23075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1103, piece_1104]
}

def cell_10309 : Cell := { cellDefaults with
  domain := ⟨(23218750000000001 / 50000000000000000 : ℚ), (23225000000000001 / 50000000000000000 : ℚ)⟩
  r := (64484897488033 / 100000000000000 : ℚ)
  w := (15011622739899 / 10000000000000 : ℚ)
  center := (23221875000000001 / 50000000000000000 : ℚ)
  supportValue := (23038158635847153 / 50000000000000000 : ℚ)
  supportSlope := (-5925018310748431 / 2500000000000000 : ℚ)
  oldCenter := (23038158635847153 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1111
  oldLo := (23025000000000001 / 50000000000000000 : ℚ)
  oldHi := (23050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1103]
}

def cell_10310 : Cell := { cellDefaults with
  domain := ⟨(23225000000000001 / 50000000000000000 : ℚ), (23231250000000001 / 50000000000000000 : ℚ)⟩
  r := (32223356860837 / 50000000000000 : ℚ)
  w := (1500652361363 / 1000000000000 : ℚ)
  center := (23228125000000001 / 50000000000000000 : ℚ)
  supportValue := (288178438438117 / 625000000000000 : ℚ)
  supportSlope := (-2370727138098161 / 1000000000000000 : ℚ)
  oldCenter := (288178438438117 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1112
  oldLo := (23025000000000001 / 50000000000000000 : ℚ)
  oldHi := (23075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1103, piece_1104]
}

def cell_10311 : Cell := { cellDefaults with
  domain := ⟨(23231250000000001 / 50000000000000000 : ℚ), (23237500000000001 / 50000000000000000 : ℚ)⟩
  r := (32223356860837 / 50000000000000 : ℚ)
  w := (1500652361363 / 1000000000000 : ℚ)
  center := (23234375000000001 / 50000000000000000 : ℚ)
  supportValue := (23039463546755437 / 50000000000000000 : ℚ)
  supportSlope := (-473757447422507 / 200000000000000 : ℚ)
  oldCenter := (23039463546755437 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1112
  oldLo := (23025000000000001 / 50000000000000000 : ℚ)
  oldHi := (23050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1103]
}

def cell_10312 : Cell := { cellDefaults with
  domain := ⟨(23237500000000001 / 50000000000000000 : ℚ), (23243750000000001 / 50000000000000000 : ℚ)⟩
  r := (32223356860837 / 50000000000000 : ℚ)
  w := (1500652361363 / 1000000000000 : ℚ)
  center := (23240625000000001 / 50000000000000000 : ℚ)
  supportValue := (4604933300964831 / 10000000000000000 : ℚ)
  supportSlope := (-11833211455587467 / 5000000000000000 : ℚ)
  oldCenter := (4604933300964831 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1112
  oldLo := (23000000000000001 / 50000000000000000 : ℚ)
  oldHi := (23050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1102, piece_1103]
}

def cell_10313 : Cell := { cellDefaults with
  domain := ⟨(23243750000000001 / 50000000000000000 : ℚ), (23250000000000001 / 50000000000000000 : ℚ)⟩
  r := (32223356860837 / 50000000000000 : ℚ)
  w := (1500652361363 / 1000000000000 : ℚ)
  center := (23246875000000001 / 50000000000000000 : ℚ)
  supportValue := (23009880612454553 / 50000000000000000 : ℚ)
  supportSlope := (-23644588049576143 / 10000000000000000 : ℚ)
  oldCenter := (23009880612454553 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1112
  oldLo := (23000000000000001 / 50000000000000000 : ℚ)
  oldHi := (23025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1102]
}

def cell_10314 : Cell := { cellDefaults with
  domain := ⟨(23250000000000001 / 50000000000000000 : ℚ), (23256250000000001 / 50000000000000000 : ℚ)⟩
  r := (64408577684609 / 100000000000000 : ℚ)
  w := (1500143418931 / 1000000000000 : ℚ)
  center := (23253125000000001 / 50000000000000000 : ℚ)
  supportValue := (230259643129123 / 500000000000000 : ℚ)
  supportSlope := (-2365353095853173 / 1000000000000000 : ℚ)
  oldCenter := (230259643129123 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1113
  oldLo := (23000000000000001 / 50000000000000000 : ℚ)
  oldHi := (23050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1102, piece_1103]
}

def cell_10315 : Cell := { cellDefaults with
  domain := ⟨(23256250000000001 / 50000000000000000 : ℚ), (23262500000000001 / 50000000000000000 : ℚ)⟩
  r := (64408577684609 / 100000000000000 : ℚ)
  w := (1500143418931 / 1000000000000 : ℚ)
  center := (23259375000000001 / 50000000000000000 : ℚ)
  supportValue := (9204474538854659 / 20000000000000000 : ℚ)
  supportSlope := (-23632429702287183 / 10000000000000000 : ℚ)
  oldCenter := (9204474538854659 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1113
  oldLo := (23000000000000001 / 50000000000000000 : ℚ)
  oldHi := (23025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1102]
}

def cell_10316 : Cell := { cellDefaults with
  domain := ⟨(23262500000000001 / 50000000000000000 : ℚ), (23268750000000001 / 50000000000000000 : ℚ)⟩
  r := (64408577684609 / 100000000000000 : ℚ)
  w := (1500143418931 / 1000000000000 : ℚ)
  center := (23265625000000001 / 50000000000000000 : ℚ)
  supportValue := (14717710613307 / 32000000000000 : ℚ)
  supportSlope := (-11806409052237399 / 5000000000000000 : ℚ)
  oldCenter := (14717710613307 / 32000000000000 : ℚ)
  newCoefficients := coefficients_1113
  oldLo := (22975000000000001 / 50000000000000000 : ℚ)
  oldHi := (23025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1101, piece_1102]
}

def cell_10317 : Cell := { cellDefaults with
  domain := ⟨(23268750000000001 / 50000000000000000 : ℚ), (23275000000000001 / 50000000000000000 : ℚ)⟩
  r := (64408577684609 / 100000000000000 : ℚ)
  w := (1500143418931 / 1000000000000 : ℚ)
  center := (23271875000000001 / 50000000000000000 : ℚ)
  supportValue := (4596334303800777 / 10000000000000000 : ℚ)
  supportSlope := (-4717938926749099 / 2000000000000000 : ℚ)
  oldCenter := (4596334303800777 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1113
  oldLo := (22950000000000001 / 50000000000000000 : ℚ)
  oldHi := (23000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1100, piece_1101]
}

def cell_10318 : Cell := { cellDefaults with
  domain := ⟨(23275000000000001 / 50000000000000000 : ℚ), (186250000000000009 / 400000000000000000 : ℚ)⟩
  r := (64370492648007 / 100000000000000 : ℚ)
  w := (14996355990439 / 10000000000000 : ℚ)
  center := (372450000000000017 / 800000000000000000 : ℚ)
  supportValue := (2299771736430451 / 5000000000000000 : ℚ)
  supportSlope := (-4719992567890591 / 2000000000000000 : ℚ)
  oldCenter := (2299771736430451 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1114
  oldLo := (22975000000000001 / 50000000000000000 : ℚ)
  oldHi := (23025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1101, piece_1102]
}

def cell_10319 : Cell := { cellDefaults with
  domain := ⟨(186250000000000009 / 400000000000000000 : ℚ), (18630000000000001 / 40000000000000000 : ℚ)⟩
  r := (64370492648007 / 100000000000000 : ℚ)
  w := (14996355990439 / 10000000000000 : ℚ)
  center := (372550000000000019 / 800000000000000000 : ℚ)
  supportValue := (4596594727114591 / 10000000000000000 : ℚ)
  supportSlope := (-23577179233544383 / 10000000000000000 : ℚ)
  oldCenter := (4596594727114591 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1114
  oldLo := (22975000000000001 / 50000000000000000 : ℚ)
  oldHi := (23000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1101]
}

def cell_10320 : Cell := { cellDefaults with
  domain := ⟨(18630000000000001 / 40000000000000000 : ℚ), (186350000000000011 / 400000000000000000 : ℚ)⟩
  r := (64370492648007 / 100000000000000 : ℚ)
  w := (14996355990439 / 10000000000000 : ℚ)
  center := (372650000000000021 / 800000000000000000 : ℚ)
  supportValue := (18374594833763 / 40000000000000 : ℚ)
  supportSlope := (-1177969315226489 / 500000000000000 : ℚ)
  oldCenter := (18374594833763 / 40000000000000 : ℚ)
  newCoefficients := coefficients_1114
  oldLo := (22950000000000001 / 50000000000000000 : ℚ)
  oldHi := (23000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1100, piece_1101]
}

def cell_10321 : Cell := { cellDefaults with
  domain := ⟨(186350000000000011 / 400000000000000000 : ℚ), (46600000000000003 / 100000000000000000 : ℚ)⟩
  r := (64370492648007 / 100000000000000 : ℚ)
  w := (14996355990439 / 10000000000000 : ℚ)
  center := (372750000000000023 / 800000000000000000 : ℚ)
  supportValue := (22953526684809483 / 50000000000000000 : ℚ)
  supportSlope := (-23536318041567723 / 10000000000000000 : ℚ)
  oldCenter := (22953526684809483 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1114
  oldLo := (22925000000000001 / 50000000000000000 : ℚ)
  oldHi := (22975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1099, piece_1100]
}

def cell_10322 : Cell := { cellDefaults with
  domain := ⟨(46600000000000003 / 100000000000000000 : ℚ), (46612500000000003 / 100000000000000000 : ℚ)⟩
  r := (32166228406039 / 50000000000000 : ℚ)
  w := (14991288544083 / 10000000000000 : ℚ)
  center := (46606250000000003 / 100000000000000000 : ℚ)
  supportValue := (71779800603737 / 156250000000000 : ℚ)
  supportSlope := (-23546568545995683 / 10000000000000000 : ℚ)
  oldCenter := (71779800603737 / 156250000000000 : ℚ)
  newCoefficients := coefficients_1115
  oldLo := (22950000000000001 / 50000000000000000 : ℚ)
  oldHi := (23000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1100, piece_1101]
}

def cell_10323 : Cell := { cellDefaults with
  domain := ⟨(46612500000000003 / 100000000000000000 : ℚ), (46625000000000003 / 100000000000000000 : ℚ)⟩
  r := (32166228406039 / 50000000000000 : ℚ)
  w := (14991288544083 / 10000000000000 : ℚ)
  center := (46618750000000003 / 100000000000000000 : ℚ)
  supportValue := (9181930758883371 / 20000000000000000 : ℚ)
  supportSlope := (-11761760296971069 / 5000000000000000 : ℚ)
  oldCenter := (9181930758883371 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1115
  oldLo := (22925000000000001 / 50000000000000000 : ℚ)
  oldHi := (22975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1099, piece_1100]
}

def cell_10324 : Cell := { cellDefaults with
  domain := ⟨(46625000000000003 / 100000000000000000 : ℚ), (46637500000000003 / 100000000000000000 : ℚ)⟩
  r := (32166228406039 / 50000000000000 : ℚ)
  w := (14991288544083 / 10000000000000 : ℚ)
  center := (46631250000000003 / 100000000000000000 : ℚ)
  supportValue := (4588026023095927 / 10000000000000000 : ℚ)
  supportSlope := (-4700946366581249 / 2000000000000000 : ℚ)
  oldCenter := (4588026023095927 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1115
  oldLo := (22925000000000001 / 50000000000000000 : ℚ)
  oldHi := (22950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1099]
}

def cell_10325 : Cell := { cellDefaults with
  domain := ⟨(46637500000000003 / 100000000000000000 : ℚ), (46650000000000003 / 100000000000000000 : ℚ)⟩
  r := (32166228406039 / 50000000000000 : ℚ)
  w := (14991288544083 / 10000000000000 : ℚ)
  center := (46643750000000003 / 100000000000000000 : ℚ)
  supportValue := (22925447593900733 / 50000000000000000 : ℚ)
  supportSlope := (-1174155666510579 / 500000000000000 : ℚ)
  oldCenter := (22925447593900733 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1115
  oldLo := (22900000000000001 / 50000000000000000 : ℚ)
  oldHi := (22950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1098, piece_1099]
}

def cell_10326 : Cell := { cellDefaults with
  domain := ⟨(46650000000000003 / 100000000000000000 : ℚ), (46662500000000003 / 100000000000000000 : ℚ)⟩
  r := (64294470178319 / 100000000000000 : ℚ)
  w := (7493115060451 / 5000000000000 : ℚ)
  center := (46656250000000003 / 100000000000000000 : ℚ)
  supportValue := (11470711731111989 / 25000000000000000 : ℚ)
  supportSlope := (-117463302749643 / 50000000000000 : ℚ)
  oldCenter := (11470711731111989 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1116
  oldLo := (22925000000000001 / 50000000000000000 : ℚ)
  oldHi := (22950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1099]
}

def cell_10327 : Cell := { cellDefaults with
  domain := ⟨(46662500000000003 / 100000000000000000 : ℚ), (46675000000000003 / 100000000000000000 : ℚ)⟩
  r := (64294470178319 / 100000000000000 : ℚ)
  w := (7493115060451 / 5000000000000 : ℚ)
  center := (46668750000000003 / 100000000000000000 : ℚ)
  supportValue := (11463374237861411 / 25000000000000000 : ℚ)
  supportSlope := (-23470355219661343 / 10000000000000000 : ℚ)
  oldCenter := (11463374237861411 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1116
  oldLo := (22900000000000001 / 50000000000000000 : ℚ)
  oldHi := (22950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1098, piece_1099]
}

def cell_10328 : Cell := { cellDefaults with
  domain := ⟨(46675000000000003 / 100000000000000000 : ℚ), (46687500000000003 / 100000000000000000 : ℚ)⟩
  r := (64294470178319 / 100000000000000 : ℚ)
  w := (7493115060451 / 5000000000000 : ℚ)
  center := (46681250000000003 / 100000000000000000 : ℚ)
  supportValue := (572802122429707 / 1250000000000000 : ℚ)
  supportSlope := (-5862488333339133 / 2500000000000000 : ℚ)
  oldCenter := (572802122429707 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1116
  oldLo := (22900000000000001 / 50000000000000000 : ℚ)
  oldHi := (22925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1098]
}

def cell_10329 : Cell := { cellDefaults with
  domain := ⟨(46687500000000003 / 100000000000000000 : ℚ), (46700000000000003 / 100000000000000000 : ℚ)⟩
  r := (64294470178319 / 100000000000000 : ℚ)
  w := (7493115060451 / 5000000000000 : ℚ)
  center := (46693750000000003 / 100000000000000000 : ℚ)
  supportValue := (22897435693587817 / 50000000000000000 : ℚ)
  supportSlope := (-11715039517201653 / 5000000000000000 : ℚ)
  oldCenter := (22897435693587817 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1116
  oldLo := (22875000000000001 / 50000000000000000 : ℚ)
  oldHi := (22925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1096, piece_1097, piece_1098]
}

def cell_10330 : Cell := { cellDefaults with
  domain := ⟨(46700000000000003 / 100000000000000000 : ℚ), (46712500000000003 / 100000000000000000 : ℚ)⟩
  r := (64256533182361 / 100000000000000 : ℚ)
  w := (7490591034329 / 5000000000000 : ℚ)
  center := (46706250000000003 / 100000000000000000 : ℚ)
  supportValue := (45826752963918377 / 100000000000000000 : ℚ)
  supportSlope := (-2343792097070363 / 1000000000000000 : ℚ)
  oldCenter := (45826752963918377 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1117
  oldLo := (22900000000000001 / 50000000000000000 : ℚ)
  oldHi := (22925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1098]
}

def cell_10331 : Cell := { cellDefaults with
  domain := ⟨(46712500000000003 / 100000000000000000 : ℚ), (46725000000000003 / 100000000000000000 : ℚ)⟩
  r := (64256533182361 / 100000000000000 : ℚ)
  w := (7490591034329 / 5000000000000 : ℚ)
  center := (46718750000000003 / 100000000000000000 : ℚ)
  supportValue := (715585476227031 / 1562500000000000 : ℚ)
  supportSlope := (-585433953790071 / 250000000000000 : ℚ)
  oldCenter := (715585476227031 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_1117
  oldLo := (22875000000000001 / 50000000000000000 : ℚ)
  oldHi := (22925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1096, piece_1097, piece_1098]
}

def cell_10332 : Cell := { cellDefaults with
  domain := ⟨(46725000000000003 / 100000000000000000 : ℚ), (46737500000000003 / 100000000000000000 : ℚ)⟩
  r := (64256533182361 / 100000000000000 : ℚ)
  w := (7490591034329 / 5000000000000 : ℚ)
  center := (46731250000000003 / 100000000000000000 : ℚ)
  supportValue := (45768210409428073 / 100000000000000000 : ℚ)
  supportSlope := (-2339536768369399 / 1000000000000000 : ℚ)
  oldCenter := (45768210409428073 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1117
  oldLo := (22875000000000001 / 50000000000000000 : ℚ)
  oldHi := (22899441340782123 / 50000000000000000 : ℚ)
  oldPieces := [piece_1096]
}

def cell_10333 : Cell := { cellDefaults with
  domain := ⟨(46737500000000003 / 100000000000000000 : ℚ), (46750000000000003 / 100000000000000000 : ℚ)⟩
  r := (64256533182361 / 100000000000000 : ℚ)
  w := (7490591034329 / 5000000000000 : ℚ)
  center := (46743750000000003 / 100000000000000000 : ℚ)
  supportValue := (571737226608481 / 1250000000000000 : ℚ)
  supportSlope := (-2337721830951267 / 1000000000000000 : ℚ)
  oldCenter := (571737226608481 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1117
  oldLo := (22850000000000001 / 50000000000000000 : ℚ)
  oldHi := (22899441340782123 / 50000000000000000 : ℚ)
  oldPieces := [piece_1095, piece_1096]
}

def cell_10334 : Cell := { cellDefaults with
  domain := ⟨(46750000000000003 / 100000000000000000 : ℚ), (46762500000000003 / 100000000000000000 : ℚ)⟩
  r := (8027330715151 / 12500000000000 : ℚ)
  w := (14976145018451 / 10000000000000 : ℚ)
  center := (46756250000000003 / 100000000000000000 : ℚ)
  supportValue := (11442697005007299 / 25000000000000000 : ℚ)
  supportSlope := (-23383372199301533 / 10000000000000000 : ℚ)
  oldCenter := (11442697005007299 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1118
  oldLo := (22875000000000001 / 50000000000000000 : ℚ)
  oldHi := (22899441340782123 / 50000000000000000 : ℚ)
  oldPieces := [piece_1096]
}

def cell_10335 : Cell := { cellDefaults with
  domain := ⟨(46762500000000003 / 100000000000000000 : ℚ), (46775000000000003 / 100000000000000000 : ℚ)⟩
  r := (8027330715151 / 12500000000000 : ℚ)
  w := (14976145018451 / 10000000000000 : ℚ)
  center := (46768750000000003 / 100000000000000000 : ℚ)
  supportValue := (22870785807960567 / 50000000000000000 : ℚ)
  supportSlope := (-23364533723650993 / 10000000000000000 : ℚ)
  oldCenter := (22870785807960567 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1118
  oldLo := (22850000000000001 / 50000000000000000 : ℚ)
  oldHi := (22899441340782123 / 50000000000000000 : ℚ)
  oldPieces := [piece_1095, piece_1096]
}

def cell_10336 : Cell := { cellDefaults with
  domain := ⟨(46775000000000003 / 100000000000000000 : ℚ), (46787500000000003 / 100000000000000000 : ℚ)⟩
  r := (8027330715151 / 12500000000000 : ℚ)
  w := (14976145018451 / 10000000000000 : ℚ)
  center := (46781250000000003 / 100000000000000000 : ℚ)
  supportValue := (45712379585651153 / 100000000000000000 : ℚ)
  supportSlope := (-23341603206361583 / 10000000000000000 : ℚ)
  oldCenter := (45712379585651153 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1118
  oldLo := (22825000000000001 / 50000000000000000 : ℚ)
  oldHi := (22875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1094, piece_1095]
}

def cell_10337 : Cell := { cellDefaults with
  domain := ⟨(46787500000000003 / 100000000000000000 : ℚ), (46800000000000003 / 100000000000000000 : ℚ)⟩
  r := (8027330715151 / 12500000000000 : ℚ)
  w := (14976145018451 / 10000000000000 : ℚ)
  center := (46793750000000003 / 100000000000000000 : ℚ)
  supportValue := (4568321322241651 / 10000000000000000 : ℚ)
  supportSlope := (-4664778710187889 / 2000000000000000 : ℚ)
  oldCenter := (4568321322241651 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1118
  oldLo := (22825000000000001 / 50000000000000000 : ℚ)
  oldHi := (22850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1094]
}

def cell_10338 : Cell := { cellDefaults with
  domain := ⟨(46800000000000003 / 100000000000000000 : ℚ), (46812500000000003 / 100000000000000000 : ℚ)⟩
  r := (8022600939857 / 12500000000000 : ℚ)
  w := (3742779619517 / 2500000000000 : ℚ)
  center := (46806250000000003 / 100000000000000000 : ℚ)
  supportValue := (45714953286219007 / 100000000000000000 : ℚ)
  supportSlope := (-1166450765287319 / 500000000000000 : ℚ)
  oldCenter := (45714953286219007 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1119
  oldLo := (22850000000000001 / 50000000000000000 : ℚ)
  oldHi := (22875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1095]
}

def cell_10339 : Cell := { cellDefaults with
  domain := ⟨(46812500000000003 / 100000000000000000 : ℚ), (46825000000000003 / 100000000000000000 : ℚ)⟩
  r := (8022600939857 / 12500000000000 : ℚ)
  w := (3742779619517 / 2500000000000 : ℚ)
  center := (46818750000000003 / 100000000000000000 : ℚ)
  supportValue := (4568580275347591 / 10000000000000000 : ℚ)
  supportSlope := (-11655938341328387 / 5000000000000000 : ℚ)
  oldCenter := (4568580275347591 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1119
  oldLo := (22825000000000001 / 50000000000000000 : ℚ)
  oldHi := (22875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1094, piece_1095]
}

def cell_10340 : Cell := { cellDefaults with
  domain := ⟨(46825000000000003 / 100000000000000000 : ℚ), (46837500000000003 / 100000000000000000 : ℚ)⟩
  r := (8022600939857 / 12500000000000 : ℚ)
  w := (3742779619517 / 2500000000000 : ℚ)
  center := (46831250000000003 / 100000000000000000 : ℚ)
  supportValue := (4565667852563003 / 10000000000000000 : ℚ)
  supportSlope := (-23288995957022607 / 10000000000000000 : ℚ)
  oldCenter := (4565667852563003 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1119
  oldHi := (22850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1093, piece_1094]
}

def cell_10341 : Cell := { cellDefaults with
  domain := ⟨(46837500000000003 / 100000000000000000 : ℚ), (46850000000000003 / 100000000000000000 : ℚ)⟩
  r := (8022600939857 / 12500000000000 : ℚ)
  w := (3742779619517 / 2500000000000 : ℚ)
  center := (46843750000000003 / 100000000000000000 : ℚ)
  supportValue := (45627577871476477 / 100000000000000000 : ℚ)
  supportSlope := (-11634883410547303 / 5000000000000000 : ℚ)
  oldCenter := (45627577871476477 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1119
  oldPieces := [piece_1093]
}

def cell_10342 : Cell := { cellDefaults with
  domain := ⟨(46850000000000003 / 100000000000000000 : ℚ), (46862500000000003 / 100000000000000000 : ℚ)⟩
  r := (64143018293631 / 100000000000000 : ℚ)
  w := (7483051099883 / 5000000000000 : ℚ)
  center := (46856250000000003 / 100000000000000000 : ℚ)
  supportValue := (4565924921615773 / 10000000000000000 : ℚ)
  supportSlope := (-232763519801793 / 100000000000000 : ℚ)
  oldCenter := (4565924921615773 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1120
  oldHi := (22850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1093, piece_1094]
}

def cell_10343 : Cell := { cellDefaults with
  domain := ⟨(46862500000000003 / 100000000000000000 : ℚ), (46875000000000003 / 100000000000000000 : ℚ)⟩
  r := (64143018293631 / 100000000000000 : ℚ)
  w := (7483051099883 / 5000000000000 : ℚ)
  center := (46868750000000003 / 100000000000000000 : ℚ)
  supportValue := (4563016434620707 / 10000000000000000 : ℚ)
  supportSlope := (-23257881808813607 / 10000000000000000 : ℚ)
  oldCenter := (4563016434620707 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1120
  oldPieces := [piece_1093]
}

def cell_10344 : Cell := { cellDefaults with
  domain := ⟨(46875000000000003 / 100000000000000000 : ℚ), (46887500000000003 / 100000000000000000 : ℚ)⟩
  r := (64143018293631 / 100000000000000 : ℚ)
  w := (7483051099883 / 5000000000000 : ℚ)
  center := (46881250000000003 / 100000000000000000 : ℚ)
  supportValue := (35625865377981 / 78125000000000 : ℚ)
  supportSlope := (-2323655625796839 / 1000000000000000 : ℚ)
  oldCenter := (35625865377981 / 78125000000000 : ℚ)
  newCoefficients := coefficients_1120
  oldLo := (22775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1092, piece_1093]
}

def cell_10345 : Cell := { cellDefaults with
  domain := ⟨(46887500000000003 / 100000000000000000 : ℚ), (46900000000000003 / 100000000000000000 : ℚ)⟩
  r := (64143018293631 / 100000000000000 : ℚ)
  w := (7483051099883 / 5000000000000 : ℚ)
  center := (46893750000000003 / 100000000000000000 : ℚ)
  supportValue := (2278603626442751 / 5000000000000000 : ℚ)
  supportSlope := (-5803957692751549 / 2500000000000000 : ℚ)
  oldCenter := (2278603626442751 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1120
  oldLo := (22775000000000001 / 50000000000000000 : ℚ)
  oldHi := (22800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1092]
}

def cell_10346 : Cell := { cellDefaults with
  domain := ⟨(46900000000000003 / 100000000000000000 : ℚ), (4690502793296089 / 10000000000000000 : ℚ)⟩
  r := (32052639567909 / 50000000000000 : ℚ)
  w := (3740273843817 / 2500000000000 : ℚ)
  center := (93805027932960893 / 200000000000000000 : ℚ)
  supportValue := (4561231209094297 / 10000000000000000 : ℚ)
  supportSlope := (-580709081759509 / 250000000000000 : ℚ)
  oldCenter := (4561231209094297 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1121
  oldPieces := [piece_1093]
}

def cell_10347 : Cell := { cellDefaults with
  domain := ⟨(4690502793296089 / 10000000000000000 : ℚ), (93830027932960893 / 200000000000000000 : ℚ)⟩
  r := (32052639567909 / 50000000000000 : ℚ)
  w := (3740273843817 / 2500000000000 : ℚ)
  center := (187640083798882673 / 400000000000000000 : ℚ)
  supportValue := (4559491946888181 / 10000000000000000 : ℚ)
  supportSlope := (-5804806421710157 / 2500000000000000 : ℚ)
  oldCenter := (4559491946888181 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1122
  oldLo := (22775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1092, piece_1093]
}

def cell_10348 : Cell := { cellDefaults with
  domain := ⟨(93830027932960893 / 200000000000000000 : ℚ), (46925000000000003 / 100000000000000000 : ℚ)⟩
  r := (32052639567909 / 50000000000000 : ℚ)
  w := (3740273843817 / 2500000000000 : ℚ)
  center := (187680027932960899 / 400000000000000000 : ℚ)
  supportValue := (4557170847622763 / 10000000000000000 : ℚ)
  supportSlope := (-4640292077473739 / 2000000000000000 : ℚ)
  oldCenter := (4557170847622763 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1122
  oldLo := (22775000000000001 / 50000000000000000 : ℚ)
  oldHi := (22800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1092]
}

def cell_10349 : Cell := { cellDefaults with
  domain := ⟨(46925000000000003 / 100000000000000000 : ℚ), (46937500000000003 / 100000000000000000 : ℚ)⟩
  r := (32052639567909 / 50000000000000 : ℚ)
  w := (3740273843817 / 2500000000000 : ℚ)
  center := (46931250000000003 / 100000000000000000 : ℚ)
  supportValue := (4554566602753159 / 10000000000000000 : ℚ)
  supportSlope := (-2318428383244253 / 1000000000000000 : ℚ)
  oldCenter := (4554566602753159 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1122
  oldLo := (22750000000000001 / 50000000000000000 : ℚ)
  oldHi := (22800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1091, piece_1092]
}

theorem check_10300 : cell_10300.check = true := by
  decide +kernel

theorem check_10301 : cell_10301.check = true := by
  decide +kernel

theorem check_10302 : cell_10302.check = true := by
  decide +kernel

theorem check_10303 : cell_10303.check = true := by
  decide +kernel

theorem check_10304 : cell_10304.check = true := by
  decide +kernel

theorem check_10305 : cell_10305.check = true := by
  decide +kernel

theorem check_10306 : cell_10306.check = true := by
  decide +kernel

theorem check_10307 : cell_10307.check = true := by
  decide +kernel

theorem check_10308 : cell_10308.check = true := by
  decide +kernel

theorem check_10309 : cell_10309.check = true := by
  decide +kernel

theorem check_10310 : cell_10310.check = true := by
  decide +kernel

theorem check_10311 : cell_10311.check = true := by
  decide +kernel

theorem check_10312 : cell_10312.check = true := by
  decide +kernel

theorem check_10313 : cell_10313.check = true := by
  decide +kernel

theorem check_10314 : cell_10314.check = true := by
  decide +kernel

theorem check_10315 : cell_10315.check = true := by
  decide +kernel

theorem check_10316 : cell_10316.check = true := by
  decide +kernel

theorem check_10317 : cell_10317.check = true := by
  decide +kernel

theorem check_10318 : cell_10318.check = true := by
  decide +kernel

theorem check_10319 : cell_10319.check = true := by
  decide +kernel

theorem check_10320 : cell_10320.check = true := by
  decide +kernel

theorem check_10321 : cell_10321.check = true := by
  decide +kernel

theorem check_10322 : cell_10322.check = true := by
  decide +kernel

theorem check_10323 : cell_10323.check = true := by
  decide +kernel

theorem check_10324 : cell_10324.check = true := by
  decide +kernel

theorem check_10325 : cell_10325.check = true := by
  decide +kernel

theorem check_10326 : cell_10326.check = true := by
  decide +kernel

theorem check_10327 : cell_10327.check = true := by
  decide +kernel

theorem check_10328 : cell_10328.check = true := by
  decide +kernel

theorem check_10329 : cell_10329.check = true := by
  decide +kernel

theorem check_10330 : cell_10330.check = true := by
  decide +kernel

theorem check_10331 : cell_10331.check = true := by
  decide +kernel

theorem check_10332 : cell_10332.check = true := by
  decide +kernel

theorem check_10333 : cell_10333.check = true := by
  decide +kernel

theorem check_10334 : cell_10334.check = true := by
  decide +kernel

theorem check_10335 : cell_10335.check = true := by
  decide +kernel

theorem check_10336 : cell_10336.check = true := by
  decide +kernel

theorem check_10337 : cell_10337.check = true := by
  decide +kernel

theorem check_10338 : cell_10338.check = true := by
  decide +kernel

theorem check_10339 : cell_10339.check = true := by
  decide +kernel

theorem check_10340 : cell_10340.check = true := by
  decide +kernel

theorem check_10341 : cell_10341.check = true := by
  decide +kernel

theorem check_10342 : cell_10342.check = true := by
  decide +kernel

theorem check_10343 : cell_10343.check = true := by
  decide +kernel

theorem check_10344 : cell_10344.check = true := by
  decide +kernel

theorem check_10345 : cell_10345.check = true := by
  decide +kernel

theorem check_10346 : cell_10346.check = true := by
  decide +kernel

theorem check_10347 : cell_10347.check = true := by
  decide +kernel

theorem check_10348 : cell_10348.check = true := by
  decide +kernel

theorem check_10349 : cell_10349.check = true := by
  decide +kernel

def cells : List Cell := [cell_10300, cell_10301, cell_10302, cell_10303, cell_10304, cell_10305, cell_10306, cell_10307, cell_10308, cell_10309, cell_10310, cell_10311, cell_10312, cell_10313, cell_10314, cell_10315, cell_10316, cell_10317, cell_10318, cell_10319, cell_10320, cell_10321, cell_10322, cell_10323, cell_10324, cell_10325, cell_10326, cell_10327, cell_10328, cell_10329, cell_10330, cell_10331, cell_10332, cell_10333, cell_10334, cell_10335, cell_10336, cell_10337, cell_10338, cell_10339, cell_10340, cell_10341, cell_10342, cell_10343, cell_10344, cell_10345, cell_10346, cell_10347, cell_10348, cell_10349]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10300, check_10301, check_10302, check_10303, check_10304, check_10305, check_10306, check_10307, check_10308, check_10309, check_10310, check_10311, check_10312, check_10313, check_10314, check_10315, check_10316, check_10317, check_10318, check_10319, check_10320, check_10321, check_10322, check_10323, check_10324, check_10325, check_10326, check_10327, check_10328, check_10329, check_10330, check_10331, check_10332, check_10333, check_10334, check_10335, check_10336, check_10337, check_10338, check_10339, check_10340, check_10341, check_10342, check_10343, check_10344, check_10345, check_10346, check_10347, check_10348, check_10349, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0206

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0206
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0206
open AnalyticBounds.ExpressionCertificate

theorem linked_10300 : Linked cell_10300 pieces := by
  refine ⟨piece_1108,piece_1108_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10300,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1105_mem
    · exact piece_1106_mem

theorem linked_10301 : Linked cell_10301 pieces := by
  refine ⟨piece_1109,piece_1109_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10301,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1106_mem

theorem linked_10302 : Linked cell_10302 pieces := by
  refine ⟨piece_1110,piece_1110_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10302,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1106_mem

theorem linked_10303 : Linked cell_10303 pieces := by
  refine ⟨piece_1110,piece_1110_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10303,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1105_mem
    · exact piece_1106_mem

theorem linked_10304 : Linked cell_10304 pieces := by
  refine ⟨piece_1110,piece_1110_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10304,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1104_mem
    · exact piece_1105_mem

theorem linked_10305 : Linked cell_10305 pieces := by
  refine ⟨piece_1110,piece_1110_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10305,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1104_mem

theorem linked_10306 : Linked cell_10306 pieces := by
  refine ⟨piece_1111,piece_1111_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10306,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1105_mem

theorem linked_10307 : Linked cell_10307 pieces := by
  refine ⟨piece_1111,piece_1111_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10307,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1104_mem
    · exact piece_1105_mem

theorem linked_10308 : Linked cell_10308 pieces := by
  refine ⟨piece_1111,piece_1111_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10308,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1103_mem
    · exact piece_1104_mem

theorem linked_10309 : Linked cell_10309 pieces := by
  refine ⟨piece_1111,piece_1111_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10309,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1103_mem

theorem linked_10310 : Linked cell_10310 pieces := by
  refine ⟨piece_1112,piece_1112_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10310,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1103_mem
    · exact piece_1104_mem

theorem linked_10311 : Linked cell_10311 pieces := by
  refine ⟨piece_1112,piece_1112_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10311,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1103_mem

theorem linked_10312 : Linked cell_10312 pieces := by
  refine ⟨piece_1112,piece_1112_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10312,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1102_mem
    · exact piece_1103_mem

theorem linked_10313 : Linked cell_10313 pieces := by
  refine ⟨piece_1112,piece_1112_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10313,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1102_mem

theorem linked_10314 : Linked cell_10314 pieces := by
  refine ⟨piece_1113,piece_1113_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10314,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1102_mem
    · exact piece_1103_mem

theorem linked_10315 : Linked cell_10315 pieces := by
  refine ⟨piece_1113,piece_1113_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10315,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1102_mem

theorem linked_10316 : Linked cell_10316 pieces := by
  refine ⟨piece_1113,piece_1113_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10316,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1101_mem
    · exact piece_1102_mem

theorem linked_10317 : Linked cell_10317 pieces := by
  refine ⟨piece_1113,piece_1113_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10317,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1100_mem
    · exact piece_1101_mem

theorem linked_10318 : Linked cell_10318 pieces := by
  refine ⟨piece_1114,piece_1114_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10318,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1101_mem
    · exact piece_1102_mem

theorem linked_10319 : Linked cell_10319 pieces := by
  refine ⟨piece_1114,piece_1114_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10319,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1101_mem

theorem linked_10320 : Linked cell_10320 pieces := by
  refine ⟨piece_1114,piece_1114_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10320,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1100_mem
    · exact piece_1101_mem

theorem linked_10321 : Linked cell_10321 pieces := by
  refine ⟨piece_1114,piece_1114_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10321,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1099_mem
    · exact piece_1100_mem

theorem linked_10322 : Linked cell_10322 pieces := by
  refine ⟨piece_1115,piece_1115_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10322,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1100_mem
    · exact piece_1101_mem

theorem linked_10323 : Linked cell_10323 pieces := by
  refine ⟨piece_1115,piece_1115_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10323,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1099_mem
    · exact piece_1100_mem

theorem linked_10324 : Linked cell_10324 pieces := by
  refine ⟨piece_1115,piece_1115_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10324,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1099_mem

theorem linked_10325 : Linked cell_10325 pieces := by
  refine ⟨piece_1115,piece_1115_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10325,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1098_mem
    · exact piece_1099_mem

theorem linked_10326 : Linked cell_10326 pieces := by
  refine ⟨piece_1116,piece_1116_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10326,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1099_mem

theorem linked_10327 : Linked cell_10327 pieces := by
  refine ⟨piece_1116,piece_1116_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10327,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1098_mem
    · exact piece_1099_mem

theorem linked_10328 : Linked cell_10328 pieces := by
  refine ⟨piece_1116,piece_1116_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10328,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1098_mem

theorem linked_10329 : Linked cell_10329 pieces := by
  refine ⟨piece_1116,piece_1116_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10329,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1096_mem
    · exact piece_1097_mem
    · exact piece_1098_mem

theorem linked_10330 : Linked cell_10330 pieces := by
  refine ⟨piece_1117,piece_1117_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10330,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1098_mem

theorem linked_10331 : Linked cell_10331 pieces := by
  refine ⟨piece_1117,piece_1117_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10331,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1096_mem
    · exact piece_1097_mem
    · exact piece_1098_mem

theorem linked_10332 : Linked cell_10332 pieces := by
  refine ⟨piece_1117,piece_1117_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10332,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1096_mem

theorem linked_10333 : Linked cell_10333 pieces := by
  refine ⟨piece_1117,piece_1117_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10333,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1095_mem
    · exact piece_1096_mem

theorem linked_10334 : Linked cell_10334 pieces := by
  refine ⟨piece_1118,piece_1118_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10334,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1096_mem

theorem linked_10335 : Linked cell_10335 pieces := by
  refine ⟨piece_1118,piece_1118_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10335,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1095_mem
    · exact piece_1096_mem

theorem linked_10336 : Linked cell_10336 pieces := by
  refine ⟨piece_1118,piece_1118_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10336,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1094_mem
    · exact piece_1095_mem

theorem linked_10337 : Linked cell_10337 pieces := by
  refine ⟨piece_1118,piece_1118_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10337,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1094_mem

theorem linked_10338 : Linked cell_10338 pieces := by
  refine ⟨piece_1119,piece_1119_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10338,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1095_mem

theorem linked_10339 : Linked cell_10339 pieces := by
  refine ⟨piece_1119,piece_1119_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10339,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1094_mem
    · exact piece_1095_mem

theorem linked_10340 : Linked cell_10340 pieces := by
  refine ⟨piece_1119,piece_1119_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10340,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1093_mem
    · exact piece_1094_mem

theorem linked_10341 : Linked cell_10341 pieces := by
  refine ⟨piece_1119,piece_1119_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10341,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1093_mem

theorem linked_10342 : Linked cell_10342 pieces := by
  refine ⟨piece_1120,piece_1120_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10342,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1093_mem
    · exact piece_1094_mem

theorem linked_10343 : Linked cell_10343 pieces := by
  refine ⟨piece_1120,piece_1120_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10343,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1093_mem

theorem linked_10344 : Linked cell_10344 pieces := by
  refine ⟨piece_1120,piece_1120_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10344,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1092_mem
    · exact piece_1093_mem

theorem linked_10345 : Linked cell_10345 pieces := by
  refine ⟨piece_1120,piece_1120_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10345,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1092_mem

theorem linked_10346 : Linked cell_10346 pieces := by
  refine ⟨piece_1121,piece_1121_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10346,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1093_mem

theorem linked_10347 : Linked cell_10347 pieces := by
  refine ⟨piece_1122,piece_1122_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10347,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1092_mem
    · exact piece_1093_mem

theorem linked_10348 : Linked cell_10348 pieces := by
  refine ⟨piece_1122,piece_1122_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10348,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1092_mem

theorem linked_10349 : Linked cell_10349 pieces := by
  refine ⟨piece_1122,piece_1122_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_10349,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1091_mem
    · exact piece_1092_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0206.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0206.cells,List.forall_mem_cons]
  exact ⟨linked_10300, linked_10301, linked_10302, linked_10303, linked_10304, linked_10305, linked_10306, linked_10307, linked_10308, linked_10309, linked_10310, linked_10311, linked_10312, linked_10313, linked_10314, linked_10315, linked_10316, linked_10317, linked_10318, linked_10319, linked_10320, linked_10321, linked_10322, linked_10323, linked_10324, linked_10325, linked_10326, linked_10327, linked_10328, linked_10329, linked_10330, linked_10331, linked_10332, linked_10333, linked_10334, linked_10335, linked_10336, linked_10337, linked_10338, linked_10339, linked_10340, linked_10341, linked_10342, linked_10343, linked_10344, linked_10345, linked_10346, linked_10347, linked_10348, linked_10349, by simp⟩

theorem covered : covers (23168750000000001 / 50000000000000000 : ℚ) (46937500000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0206.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0206
