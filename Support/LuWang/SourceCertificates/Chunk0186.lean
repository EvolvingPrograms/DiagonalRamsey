import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0186
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(38643750000000001 / 100000000000000000 : ℚ), (38650000000000001 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (35538606069061 / 50000000000000 : ℚ)
  w := (7972923450569 / 5000000000000 : ℚ)
  center := (38646875000000001 / 100000000000000000 : ℚ)
  supportValue := (227536792093843 / 400000000000000 : ℚ)
  supportSlope := (-35053013383539167 / 10000000000000000 : ℚ)
  oldCenter := (227536792093843 / 400000000000000 : ℚ)
  newCoefficients := coefficients_942
  oldLo := (28300000000000003 / 50000000000000000 : ℚ)
  oldHi := (1133 / 2000 : ℚ)
  oldPieces := [piece_1333]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9300 : Cell := { cellDefaults with
  r := (3556230617503 / 5000000000000 : ℚ)
  w := (15952932782597 / 10000000000000 : ℚ)
  newCoefficients := coefficients_941
  oldLo := (355377094972067 / 625000000000000 : ℚ)
  oldHi := (28450000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1339]
}

def cell_9301 : Cell := { cellDefaults with
  domain := ⟨(38650000000000001 / 100000000000000000 : ℚ), (38656250000000001 / 100000000000000000 : ℚ)⟩
  center := (38653125000000001 / 100000000000000000 : ℚ)
  supportValue := (5695259855266657 / 10000000000000000 : ℚ)
  supportSlope := (-8771863393564061 / 2500000000000000 : ℚ)
  oldCenter := (5695259855266657 / 10000000000000000 : ℚ)
  oldLo := (28450000000000003 / 50000000000000000 : ℚ)
  oldHi := (28500000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1340, piece_1341]
}

def cell_9302 : Cell := { cellDefaults with
  domain := ⟨(38656250000000001 / 100000000000000000 : ℚ), (38662500000000001 / 100000000000000000 : ℚ)⟩
  center := (38659375000000001 / 100000000000000000 : ℚ)
  supportValue := (1138613479263719 / 2000000000000000 : ℚ)
  supportSlope := (-3506940002715453 / 1000000000000000 : ℚ)
  oldCenter := (1138613479263719 / 2000000000000000 : ℚ)
  oldLo := (28450000000000003 / 50000000000000000 : ℚ)
  oldHi := (56950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1340]
}

def cell_9303 : Cell := { cellDefaults with
  domain := ⟨(38662500000000001 / 100000000000000000 : ℚ), (38668750000000001 / 100000000000000000 : ℚ)⟩
  center := (38665625000000001 / 100000000000000000 : ℚ)
  supportValue := (2845438106756357 / 5000000000000000 : ℚ)
  supportSlope := (-7009782479663329 / 2000000000000000 : ℚ)
  oldCenter := (2845438106756357 / 5000000000000000 : ℚ)
  oldLo := (355377094972067 / 625000000000000 : ℚ)
  oldHi := (56950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1339, piece_1340]
}

def cell_9304 : Cell := { cellDefaults with
  domain := ⟨(38668750000000001 / 100000000000000000 : ℚ), (38675000000000001 / 100000000000000000 : ℚ)⟩
  center := (38671875000000001 / 100000000000000000 : ℚ)
  supportValue := (711085770294769 / 1250000000000000 : ℚ)
  supportSlope := (-35032224493924957 / 10000000000000000 : ℚ)
  oldCenter := (711085770294769 / 1250000000000000 : ℚ)
  oldLo := (355377094972067 / 625000000000000 : ℚ)
  oldHi := (28450000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1339]
}

def cell_9305 : Cell := { cellDefaults with
  domain := ⟨(38675000000000001 / 100000000000000000 : ℚ), (38681250000000001 / 100000000000000000 : ℚ)⟩
  center := (38678125000000001 / 100000000000000000 : ℚ)
  supportValue := (355406081402709 / 625000000000000 : ℚ)
  supportSlope := (-3501127817823857 / 1000000000000000 : ℚ)
  oldCenter := (355406081402709 / 625000000000000 : ℚ)
  oldLo := (56850000000000001 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1338, piece_1339]
}

def cell_9306 : Cell := { cellDefaults with
  domain := ⟨(38681250000000001 / 100000000000000000 : ℚ), (38687500000000001 / 100000000000000000 : ℚ)⟩
  center := (38684375000000001 / 100000000000000000 : ℚ)
  supportValue := (5684309656953013 / 10000000000000000 : ℚ)
  supportSlope := (-34994228646709757 / 10000000000000000 : ℚ)
  oldCenter := (5684309656953013 / 10000000000000000 : ℚ)
  oldLo := (28400000000000003 / 50000000000000000 : ℚ)
  oldHi := (355377094972067 / 625000000000000 : ℚ)
  oldPieces := [piece_1337, piece_1338]
}

def cell_9307 : Cell := { cellDefaults with
  domain := ⟨(38687500000000001 / 100000000000000000 : ℚ), (38693750000000001 / 100000000000000000 : ℚ)⟩
  center := (38690625000000001 / 100000000000000000 : ℚ)
  supportValue := (1136424623309757 / 2000000000000000 : ℚ)
  supportSlope := (-3497417527082547 / 1000000000000000 : ℚ)
  oldCenter := (1136424623309757 / 2000000000000000 : ℚ)
  oldLo := (28400000000000003 / 50000000000000000 : ℚ)
  oldHi := (56850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1337]
}

def cell_9308 : Cell := { cellDefaults with
  domain := ⟨(38693750000000001 / 100000000000000000 : ℚ), (38700000000000001 / 100000000000000000 : ℚ)⟩
  center := (38696875000000001 / 100000000000000000 : ℚ)
  supportValue := (1135987574941799 / 2000000000000000 : ℚ)
  supportSlope := (-34955785049319843 / 10000000000000000 : ℚ)
  oldCenter := (1135987574941799 / 2000000000000000 : ℚ)
  oldLo := (227 / 400 : ℚ)
  oldHi := (56850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1336, piece_1337]
}

def cell_9309 : Cell := { cellDefaults with
  domain := ⟨(38700000000000001 / 100000000000000000 : ℚ), (38706250000000001 / 100000000000000000 : ℚ)⟩
  r := (71029881583243 / 100000000000000 : ℚ)
  w := (15938776209131 / 10000000000000 : ℚ)
  center := (38703125000000001 / 100000000000000000 : ℚ)
  supportValue := (5686760278945721 / 10000000000000000 : ℚ)
  supportSlope := (-218690325792803 / 62500000000000 : ℚ)
  oldCenter := (5686760278945721 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_943
  oldLo := (56850000000000001 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1338, piece_1339]
}

def cell_9310 : Cell := { cellDefaults with
  domain := ⟨(38706250000000001 / 100000000000000000 : ℚ), (38712500000000001 / 100000000000000000 : ℚ)⟩
  r := (71029881583243 / 100000000000000 : ℚ)
  w := (15938776209131 / 10000000000000 : ℚ)
  center := (38709375000000001 / 100000000000000000 : ℚ)
  supportValue := (5684573969767277 / 10000000000000000 : ℚ)
  supportSlope := (-3497286674306821 / 1000000000000000 : ℚ)
  oldCenter := (5684573969767277 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_943
  oldLo := (28400000000000003 / 50000000000000000 : ℚ)
  oldHi := (355377094972067 / 625000000000000 : ℚ)
  oldPieces := [piece_1337, piece_1338]
}

def cell_9311 : Cell := { cellDefaults with
  domain := ⟨(38712500000000001 / 100000000000000000 : ℚ), (38718750000000001 / 100000000000000000 : ℚ)⟩
  r := (71029881583243 / 100000000000000 : ℚ)
  w := (15938776209131 / 10000000000000 : ℚ)
  center := (38715625000000001 / 100000000000000000 : ℚ)
  supportValue := (2841194363726141 / 5000000000000000 : ℚ)
  supportSlope := (-3495342472064067 / 1000000000000000 : ℚ)
  oldCenter := (2841194363726141 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_943
  oldLo := (28400000000000003 / 50000000000000000 : ℚ)
  oldHi := (56850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1337]
}

def cell_9312 : Cell := { cellDefaults with
  domain := ⟨(38718750000000001 / 100000000000000000 : ℚ), (38725000000000001 / 100000000000000000 : ℚ)⟩
  r := (71029881583243 / 100000000000000 : ℚ)
  w := (15938776209131 / 10000000000000 : ℚ)
  center := (38721875000000001 / 100000000000000000 : ℚ)
  supportValue := (5680204790031413 / 10000000000000000 : ℚ)
  supportSlope := (-873362264290023 / 250000000000000 : ℚ)
  oldCenter := (5680204790031413 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_943
  oldLo := (227 / 400 : ℚ)
  oldHi := (56850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1336, piece_1337]
}

def cell_9313 : Cell := { cellDefaults with
  domain := ⟨(38725000000000001 / 100000000000000000 : ℚ), (38731250000000001 / 100000000000000000 : ℚ)⟩
  r := (71029881583243 / 100000000000000 : ℚ)
  w := (15938776209131 / 10000000000000 : ℚ)
  center := (38728125000000001 / 100000000000000000 : ℚ)
  supportValue := (113560437743819 / 200000000000000 : ℚ)
  supportSlope := (-17458222783126587 / 5000000000000000 : ℚ)
  oldCenter := (113560437743819 / 200000000000000 : ℚ)
  newCoefficients := coefficients_943
  oldLo := (227 / 400 : ℚ)
  oldHi := (28400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1336]
}

def cell_9314 : Cell := { cellDefaults with
  domain := ⟨(38731250000000001 / 100000000000000000 : ℚ), (38737500000000001 / 100000000000000000 : ℚ)⟩
  r := (71029881583243 / 100000000000000 : ℚ)
  w := (15938776209131 / 10000000000000 : ℚ)
  center := (38734375000000001 / 100000000000000000 : ℚ)
  supportValue := (5675840260344317 / 10000000000000000 : ℚ)
  supportSlope := (-17448073827548427 / 5000000000000000 : ℚ)
  oldCenter := (5675840260344317 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_943
  oldLo := (28350000000000003 / 50000000000000000 : ℚ)
  oldHi := (28400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1335, piece_1336]
}

def cell_9315 : Cell := { cellDefaults with
  domain := ⟨(38737500000000001 / 100000000000000000 : ℚ), (38743750000000001 / 100000000000000000 : ℚ)⟩
  r := (71029881583243 / 100000000000000 : ℚ)
  w := (15938776209131 / 10000000000000 : ℚ)
  center := (38740625000000001 / 100000000000000000 : ℚ)
  supportValue := (2836829876458881 / 5000000000000000 : ℚ)
  supportSlope := (-34879518373927 / 10000000000000 : ℚ)
  oldCenter := (2836829876458881 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_943
  oldLo := (28350000000000003 / 50000000000000000 : ℚ)
  oldHi := (227 / 400 : ℚ)
  oldPieces := [piece_1335]
}

def cell_9316 : Cell := { cellDefaults with
  domain := ⟨(38743750000000001 / 100000000000000000 : ℚ), (38750000000000001 / 100000000000000000 : ℚ)⟩
  r := (71029881583243 / 100000000000000 : ℚ)
  w := (15938776209131 / 10000000000000 : ℚ)
  center := (38746875000000001 / 100000000000000000 : ℚ)
  supportValue := (5671480433473179 / 10000000000000000 : ℚ)
  supportSlope := (-34858688288323947 / 10000000000000000 : ℚ)
  oldCenter := (5671480433473179 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_943
  oldLo := (28350000000000003 / 50000000000000000 : ℚ)
  oldHi := (227 / 400 : ℚ)
  oldPieces := [piece_1335]
}

def cell_9317 : Cell := { cellDefaults with
  domain := ⟨(38750000000000001 / 100000000000000000 : ℚ), (38756250000000001 / 100000000000000000 : ℚ)⟩
  r := (14196524230811 / 20000000000000 : ℚ)
  w := (3982930252573 / 2500000000000 : ℚ)
  center := (38753125000000001 / 100000000000000000 : ℚ)
  supportValue := (709785654149543 / 1250000000000000 : ℚ)
  supportSlope := (-34895693948300277 / 10000000000000000 : ℚ)
  oldCenter := (709785654149543 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_944
  oldLo := (227 / 400 : ℚ)
  oldHi := (28400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1336]
}

def cell_9318 : Cell := { cellDefaults with
  domain := ⟨(38756250000000001 / 100000000000000000 : ℚ), (38762500000000001 / 100000000000000000 : ℚ)⟩
  r := (14196524230811 / 20000000000000 : ℚ)
  w := (3982930252573 / 2500000000000 : ℚ)
  center := (38759375000000001 / 100000000000000000 : ℚ)
  supportValue := (5676104902149933 / 10000000000000000 : ℚ)
  supportSlope := (-1394995357929929 / 400000000000000 : ℚ)
  oldCenter := (5676104902149933 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_944
  oldLo := (227 / 400 : ℚ)
  oldHi := (28400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1336]
}

def cell_9319 : Cell := { cellDefaults with
  domain := ⟨(38762500000000001 / 100000000000000000 : ℚ), (38768750000000001 / 100000000000000000 : ℚ)⟩
  r := (14196524230811 / 20000000000000 : ℚ)
  w := (3982930252573 / 2500000000000 : ℚ)
  center := (38765625000000001 / 100000000000000000 : ℚ)
  supportValue := (5673925724379157 / 10000000000000000 : ℚ)
  supportSlope := (-1742940617615929 / 500000000000000 : ℚ)
  oldCenter := (5673925724379157 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_944
  oldLo := (28350000000000003 / 50000000000000000 : ℚ)
  oldHi := (28400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1335, piece_1336]
}

def cell_9320 : Cell := { cellDefaults with
  domain := ⟨(38768750000000001 / 100000000000000000 : ℚ), (38775000000000001 / 100000000000000000 : ℚ)⟩
  r := (14196524230811 / 20000000000000 : ℚ)
  w := (3982930252573 / 2500000000000 : ℚ)
  center := (38771875000000001 / 100000000000000000 : ℚ)
  supportValue := (708968462005199 / 1250000000000000 : ℚ)
  supportSlope := (-139352197412137 / 40000000000000 : ℚ)
  oldCenter := (708968462005199 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_944
  oldLo := (28350000000000003 / 50000000000000000 : ℚ)
  oldHi := (227 / 400 : ℚ)
  oldPieces := [piece_1335]
}

def cell_9321 : Cell := { cellDefaults with
  domain := ⟨(38775000000000001 / 100000000000000000 : ℚ), (38781250000000001 / 100000000000000000 : ℚ)⟩
  r := (14196524230811 / 20000000000000 : ℚ)
  w := (3982930252573 / 2500000000000 : ℚ)
  center := (38778125000000001 / 100000000000000000 : ℚ)
  supportValue := (566957090762159 / 1000000000000000 : ℚ)
  supportSlope := (-17410299773850113 / 5000000000000000 : ℚ)
  oldCenter := (566957090762159 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_944
  oldLo := (1133 / 2000 : ℚ)
  oldHi := (227 / 400 : ℚ)
  oldPieces := [piece_1334, piece_1335]
}

def cell_9322 : Cell := { cellDefaults with
  domain := ⟨(38781250000000001 / 100000000000000000 : ℚ), (38787500000000001 / 100000000000000000 : ℚ)⟩
  r := (14196524230811 / 20000000000000 : ℚ)
  w := (3982930252573 / 2500000000000 : ℚ)
  center := (38784375000000001 / 100000000000000000 : ℚ)
  supportValue := (1133479035760357 / 2000000000000000 : ℚ)
  supportSlope := (-3480126580349463 / 1000000000000000 : ℚ)
  oldCenter := (1133479035760357 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_944
  oldLo := (1133 / 2000 : ℚ)
  oldHi := (28350000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1334]
}

def cell_9323 : Cell := { cellDefaults with
  domain := ⟨(38787500000000001 / 100000000000000000 : ℚ), (38793750000000001 / 100000000000000000 : ℚ)⟩
  r := (14196524230811 / 20000000000000 : ℚ)
  w := (3982930252573 / 2500000000000 : ℚ)
  center := (38790625000000001 / 100000000000000000 : ℚ)
  supportValue := (226608829910289 / 400000000000000 : ℚ)
  supportSlope := (-1739120845304143 / 500000000000000 : ℚ)
  oldCenter := (226608829910289 / 400000000000000 : ℚ)
  newCoefficients := coefficients_944
  oldHi := (28350000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1333, piece_1334]
}

def cell_9324 : Cell := { cellDefaults with
  domain := ⟨(38793750000000001 / 100000000000000000 : ℚ), (38800000000000001 / 100000000000000000 : ℚ)⟩
  r := (14196524230811 / 20000000000000 : ℚ)
  w := (3982930252573 / 2500000000000 : ℚ)
  center := (38796875000000001 / 100000000000000000 : ℚ)
  supportValue := (1132609469070951 / 2000000000000000 : ℚ)
  supportSlope := (-6952906664587033 / 2000000000000000 : ℚ)
  oldCenter := (1132609469070951 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_944
  oldPieces := [piece_1333]
}

def cell_9325 : Cell := { cellDefaults with
  domain := ⟨(38800000000000001 / 100000000000000000 : ℚ), (38806250000000001 / 100000000000000000 : ℚ)⟩
  r := (70935430336383 / 100000000000000 : ℚ)
  w := (15924681134883 / 10000000000000 : ℚ)
  center := (38803125000000001 / 100000000000000000 : ℚ)
  supportValue := (113396694177599 / 200000000000000 : ℚ)
  supportSlope := (-17399674796170217 / 5000000000000000 : ℚ)
  oldCenter := (113396694177599 / 200000000000000 : ℚ)
  newCoefficients := coefficients_945
  oldLo := (1133 / 2000 : ℚ)
  oldHi := (227 / 400 : ℚ)
  oldPieces := [piece_1334, piece_1335]
}

def cell_9326 : Cell := { cellDefaults with
  domain := ⟨(38806250000000001 / 100000000000000000 : ℚ), (38812500000000001 / 100000000000000000 : ℚ)⟩
  r := (70935430336383 / 100000000000000 : ℚ)
  w := (15924681134883 / 10000000000000 : ℚ)
  center := (38809375000000001 / 100000000000000000 : ℚ)
  supportValue := (22670641083943 / 40000000000000 : ℚ)
  supportSlope := (-34780628739810027 / 10000000000000000 : ℚ)
  oldCenter := (22670641083943 / 40000000000000 : ℚ)
  newCoefficients := coefficients_945
  oldLo := (1133 / 2000 : ℚ)
  oldHi := (28350000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1334]
}

def cell_9327 : Cell := { cellDefaults with
  domain := ⟨(38812500000000001 / 100000000000000000 : ℚ), (38818750000000001 / 100000000000000000 : ℚ)⟩
  r := (70935430336383 / 100000000000000 : ℚ)
  w := (15924681134883 / 10000000000000 : ℚ)
  center := (38815625000000001 / 100000000000000000 : ℚ)
  supportValue := (1133097425730011 / 2000000000000000 : ℚ)
  supportSlope := (-34761229467434873 / 10000000000000000 : ℚ)
  oldCenter := (1133097425730011 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_945
  oldHi := (28350000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1333, piece_1334]
}

def cell_9328 : Cell := { cellDefaults with
  domain := ⟨(38818750000000001 / 100000000000000000 : ℚ), (38825000000000001 / 100000000000000000 : ℚ)⟩
  r := (70935430336383 / 100000000000000 : ℚ)
  w := (15924681134883 / 10000000000000 : ℚ)
  center := (38821875000000001 / 100000000000000000 : ℚ)
  supportValue := (566331504935853 / 1000000000000000 : ℚ)
  supportSlope := (-6948793407495657 / 2000000000000000 : ℚ)
  oldCenter := (566331504935853 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_945
  oldPieces := [piece_1333]
}

def cell_9329 : Cell := { cellDefaults with
  domain := ⟨(38825000000000001 / 100000000000000000 : ℚ), (38831250000000001 / 100000000000000000 : ℚ)⟩
  r := (70935430336383 / 100000000000000 : ℚ)
  w := (15924681134883 / 10000000000000 : ℚ)
  center := (38828125000000001 / 100000000000000000 : ℚ)
  supportValue := (5661144197835467 / 10000000000000000 : ℚ)
  supportSlope := (-1736163309390193 / 500000000000000 : ℚ)
  oldCenter := (5661144197835467 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_945
  oldPieces := [piece_1333]
}

def cell_9330 : Cell := { cellDefaults with
  domain := ⟨(38831250000000001 / 100000000000000000 : ℚ), (38837500000000001 / 100000000000000000 : ℚ)⟩
  r := (70935430336383 / 100000000000000 : ℚ)
  w := (15924681134883 / 10000000000000 : ℚ)
  center := (38834375000000001 / 100000000000000000 : ℚ)
  supportValue := (5658974498130791 / 10000000000000000 : ℚ)
  supportSlope := (-34707229430459563 / 10000000000000000 : ℚ)
  oldCenter := (5658974498130791 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_945
  oldLo := (1131 / 2000 : ℚ)
  oldPieces := [piece_1332, piece_1333]
}

def cell_9331 : Cell := { cellDefaults with
  domain := ⟨(38837500000000001 / 100000000000000000 : ℚ), (38843750000000001 / 100000000000000000 : ℚ)⟩
  r := (70935430336383 / 100000000000000 : ℚ)
  w := (15924681134883 / 10000000000000 : ℚ)
  center := (38840625000000001 / 100000000000000000 : ℚ)
  supportValue := (5656805934234791 / 10000000000000000 : ℚ)
  supportSlope := (-6937334577223453 / 2000000000000000 : ℚ)
  oldCenter := (5656805934234791 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_945
  oldLo := (1131 / 2000 : ℚ)
  oldHi := (28300000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1332]
}

def cell_9332 : Cell := { cellDefaults with
  domain := ⟨(38843750000000001 / 100000000000000000 : ℚ), (38850000000000001 / 100000000000000000 : ℚ)⟩
  r := (70935430336383 / 100000000000000 : ℚ)
  w := (15924681134883 / 10000000000000 : ℚ)
  center := (38846875000000001 / 100000000000000000 : ℚ)
  supportValue := (1130927722449813 / 2000000000000000 : ℚ)
  supportSlope := (-34669202701991253 / 10000000000000000 : ℚ)
  oldCenter := (1130927722449813 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_945
  oldLo := (28250000000000003 / 50000000000000000 : ℚ)
  oldHi := (28300000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1331, piece_1332]
}

def cell_9333 : Cell := { cellDefaults with
  domain := ⟨(38850000000000001 / 100000000000000000 : ℚ), (38856250000000001 / 100000000000000000 : ℚ)⟩
  r := (70888309256753 / 100000000000000 : ℚ)
  w := (994853497577 / 625000000000 : ℚ)
  center := (38853125000000001 / 100000000000000000 : ℚ)
  supportValue := (2764359664763 / 4882812500000 : ℚ)
  supportSlope := (-3470266681723899 / 1000000000000000 : ℚ)
  oldCenter := (2764359664763 / 4882812500000 : ℚ)
  newCoefficients := coefficients_946
  oldPieces := [piece_1333]
}

def cell_9334 : Cell := { cellDefaults with
  domain := ⟨(38856250000000001 / 100000000000000000 : ℚ), (38862500000000001 / 100000000000000000 : ℚ)⟩
  r := (70888309256753 / 100000000000000 : ℚ)
  w := (994853497577 / 625000000000 : ℚ)
  center := (38859375000000001 / 100000000000000000 : ℚ)
  supportValue := (707405027067453 / 1250000000000000 : ℚ)
  supportSlope := (-3468608327704459 / 1000000000000000 : ℚ)
  oldCenter := (707405027067453 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_946
  oldLo := (1131 / 2000 : ℚ)
  oldPieces := [piece_1332, piece_1333]
}

def cell_9335 : Cell := { cellDefaults with
  domain := ⟨(38862500000000001 / 100000000000000000 : ℚ), (38868750000000001 / 100000000000000000 : ℚ)⟩
  r := (70888309256753 / 100000000000000 : ℚ)
  w := (994853497577 / 625000000000 : ℚ)
  center := (38865625000000001 / 100000000000000000 : ℚ)
  supportValue := (5657072936577443 / 10000000000000000 : ℚ)
  supportSlope := (-17333074389096481 / 5000000000000000 : ℚ)
  oldCenter := (5657072936577443 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_946
  oldLo := (1131 / 2000 : ℚ)
  oldHi := (28300000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1332]
}

def cell_9336 : Cell := { cellDefaults with
  domain := ⟨(38868750000000001 / 100000000000000000 : ℚ), (38875000000000001 / 100000000000000000 : ℚ)⟩
  r := (70888309256753 / 100000000000000 : ℚ)
  w := (994853497577 / 625000000000 : ℚ)
  center := (38871875000000001 / 100000000000000000 : ℚ)
  supportValue := (5654906933220957 / 10000000000000000 : ℚ)
  supportSlope := (-34648123410399023 / 10000000000000000 : ℚ)
  oldCenter := (5654906933220957 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_946
  oldLo := (28250000000000003 / 50000000000000000 : ℚ)
  oldHi := (28300000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1331, piece_1332]
}

def cell_9337 : Cell := { cellDefaults with
  domain := ⟨(38875000000000001 / 100000000000000000 : ℚ), (38881250000000001 / 100000000000000000 : ℚ)⟩
  r := (70888309256753 / 100000000000000 : ℚ)
  w := (994853497577 / 625000000000 : ℚ)
  center := (38878125000000001 / 100000000000000000 : ℚ)
  supportValue := (1413185483250361 / 2500000000000000 : ℚ)
  supportSlope := (-34629681605267137 / 10000000000000000 : ℚ)
  oldCenter := (1413185483250361 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_946
  oldLo := (28250000000000003 / 50000000000000000 : ℚ)
  oldHi := (1131 / 2000 : ℚ)
  oldPieces := [piece_1331]
}

def cell_9338 : Cell := { cellDefaults with
  domain := ⟨(38881250000000001 / 100000000000000000 : ℚ), (38887500000000001 / 100000000000000000 : ℚ)⟩
  r := (70888309256753 / 100000000000000 : ℚ)
  w := (994853497577 / 625000000000 : ℚ)
  center := (38884375000000001 / 100000000000000000 : ℚ)
  supportValue := (2825289110694771 / 5000000000000000 : ℚ)
  supportSlope := (-34610193213993057 / 10000000000000000 : ℚ)
  oldCenter := (2825289110694771 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_946
  oldLo := (1129 / 2000 : ℚ)
  oldHi := (1131 / 2000 : ℚ)
  oldPieces := [piece_1330, piece_1331]
}

def cell_9339 : Cell := { cellDefaults with
  domain := ⟨(38887500000000001 / 100000000000000000 : ℚ), (38893750000000001 / 100000000000000000 : ℚ)⟩
  r := (70888309256753 / 100000000000000 : ℚ)
  w := (994853497577 / 625000000000 : ℚ)
  center := (38890625000000001 / 100000000000000000 : ℚ)
  supportValue := (706051947209129 / 1250000000000000 : ℚ)
  supportSlope := (-4324158162543057 / 1250000000000000 : ℚ)
  oldCenter := (706051947209129 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_946
  oldLo := (1129 / 2000 : ℚ)
  oldHi := (28250000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1330]
}

def cell_9340 : Cell := { cellDefaults with
  domain := ⟨(38893750000000001 / 100000000000000000 : ℚ), (38900000000000001 / 100000000000000000 : ℚ)⟩
  r := (70888309256753 / 100000000000000 : ℚ)
  w := (994853497577 / 625000000000 : ℚ)
  center := (38896875000000001 / 100000000000000000 : ℚ)
  supportValue := (5646254141536137 / 10000000000000000 : ℚ)
  supportSlope := (-3457267564172639 / 1000000000000000 : ℚ)
  oldCenter := (5646254141536137 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_946
  oldLo := (1129 / 2000 : ℚ)
  oldHi := (28250000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1330]
}

def cell_9341 : Cell := { cellDefaults with
  domain := ⟨(38900000000000001 / 100000000000000000 : ℚ), (38906250000000001 / 100000000000000000 : ℚ)⟩
  r := (35420628337717 / 50000000000000 : ℚ)
  w := (7955323379303 / 5000000000000 : ℚ)
  center := (38903125000000001 / 100000000000000000 : ℚ)
  supportValue := (1130601318002177 / 2000000000000000 : ℚ)
  supportSlope := (-432614452217539 / 125000000000000 : ℚ)
  oldCenter := (1130601318002177 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_947
  oldLo := (28250000000000003 / 50000000000000000 : ℚ)
  oldHi := (1131 / 2000 : ℚ)
  oldPieces := [piece_1331]
}

def cell_9342 : Cell := { cellDefaults with
  domain := ⟨(38906250000000001 / 100000000000000000 : ℚ), (38912500000000001 / 100000000000000000 : ℚ)⟩
  r := (35420628337717 / 50000000000000 : ℚ)
  w := (7955323379303 / 5000000000000 : ℚ)
  center := (38909375000000001 / 100000000000000000 : ℚ)
  supportValue := (2825422080047147 / 5000000000000000 : ℚ)
  supportSlope := (-4323639228172027 / 1250000000000000 : ℚ)
  oldCenter := (2825422080047147 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_947
  oldLo := (1129 / 2000 : ℚ)
  oldHi := (1131 / 2000 : ℚ)
  oldPieces := [piece_1330, piece_1331]
}

def cell_9343 : Cell := { cellDefaults with
  domain := ⟨(38912500000000001 / 100000000000000000 : ℚ), (38918750000000001 / 100000000000000000 : ℚ)⟩
  r := (35420628337717 / 50000000000000 : ℚ)
  w := (7955323379303 / 5000000000000 : ℚ)
  center := (38915625000000001 / 100000000000000000 : ℚ)
  supportValue := (141217070817501 / 250000000000000 : ℚ)
  supportSlope := (-3457281294998893 / 1000000000000000 : ℚ)
  oldCenter := (141217070817501 / 250000000000000 : ℚ)
  newCoefficients := coefficients_947
  oldLo := (1129 / 2000 : ℚ)
  oldHi := (28250000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1330]
}

def cell_9344 : Cell := { cellDefaults with
  domain := ⟨(38918750000000001 / 100000000000000000 : ℚ), (38925000000000001 / 100000000000000000 : ℚ)⟩
  r := (35420628337717 / 50000000000000 : ℚ)
  w := (7955323379303 / 5000000000000 : ℚ)
  center := (38921875000000001 / 100000000000000000 : ℚ)
  supportValue := (5646522673693387 / 10000000000000000 : ℚ)
  supportSlope := (-1727612991224703 / 500000000000000 : ℚ)
  oldCenter := (5646522673693387 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_947
  oldLo := (1129 / 2000 : ℚ)
  oldHi := (28250000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1330]
}

def cell_9345 : Cell := { cellDefaults with
  domain := ⟨(38925000000000001 / 100000000000000000 : ℚ), (38931250000000001 / 100000000000000000 : ℚ)⟩
  r := (35420628337717 / 50000000000000 : ℚ)
  w := (7955323379303 / 5000000000000 : ℚ)
  center := (38928125000000001 / 100000000000000000 : ℚ)
  supportValue := (5644363710002637 / 10000000000000000 : ℚ)
  supportSlope := (-431694231719959 / 125000000000000 : ℚ)
  oldCenter := (5644363710002637 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_947
  oldLo := (28200000000000003 / 50000000000000000 : ℚ)
  oldHi := (28250000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1329, piece_1330]
}

def cell_9346 : Cell := { cellDefaults with
  domain := ⟨(38931250000000001 / 100000000000000000 : ℚ), (38937500000000001 / 100000000000000000 : ℚ)⟩
  r := (35420628337717 / 50000000000000 : ℚ)
  w := (7955323379303 / 5000000000000 : ℚ)
  center := (38934375000000001 / 100000000000000000 : ℚ)
  supportValue := (1128441163746639 / 2000000000000000 : ℚ)
  supportSlope := (-3451598473048989 / 1000000000000000 : ℚ)
  oldCenter := (1128441163746639 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_947
  oldLo := (28200000000000003 / 50000000000000000 : ℚ)
  oldHi := (1129 / 2000 : ℚ)
  oldPieces := [piece_1329]
}

def cell_9347 : Cell := { cellDefaults with
  domain := ⟨(38937500000000001 / 100000000000000000 : ℚ), (38943750000000001 / 100000000000000000 : ℚ)⟩
  r := (35420628337717 / 50000000000000 : ℚ)
  w := (7955323379303 / 5000000000000 : ℚ)
  center := (38940625000000001 / 100000000000000000 : ℚ)
  supportValue := (2820024605142979 / 5000000000000000 : ℚ)
  supportSlope := (-43122207977353 / 12500000000000 : ℚ)
  oldCenter := (2820024605142979 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_947
  oldLo := (1127 / 2000 : ℚ)
  oldHi := (1129 / 2000 : ℚ)
  oldPieces := [piece_1328, piece_1329]
}

def cell_9348 : Cell := { cellDefaults with
  domain := ⟨(38943750000000001 / 100000000000000000 : ℚ), (38950000000000001 / 100000000000000000 : ℚ)⟩
  r := (35420628337717 / 50000000000000 : ℚ)
  w := (7955323379303 / 5000000000000 : ℚ)
  center := (38946875000000001 / 100000000000000000 : ℚ)
  supportValue := (176184174691727 / 312500000000000 : ℚ)
  supportSlope := (-34479759598795567 / 10000000000000000 : ℚ)
  oldCenter := (176184174691727 / 312500000000000 : ℚ)
  newCoefficients := coefficients_947
  oldLo := (1127 / 2000 : ℚ)
  oldHi := (28200000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1328]
}

def cell_9349 : Cell := { cellDefaults with
  domain := ⟨(38950000000000001 / 100000000000000000 : ℚ), (38956250000000001 / 100000000000000000 : ℚ)⟩
  r := (14158854858801 / 20000000000000 : ℚ)
  w := (3975913141689 / 2500000000000 : ℚ)
  center := (38953125000000001 / 100000000000000000 : ℚ)
  supportValue := (2822314361729951 / 5000000000000000 : ℚ)
  supportSlope := (-690289998120619 / 200000000000000 : ℚ)
  oldCenter := (2822314361729951 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_948
  oldLo := (28200000000000003 / 50000000000000000 : ℚ)
  oldHi := (28250000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1329, piece_1330]
}

theorem check_9300 : cell_9300.check = true := by
  decide +kernel

theorem check_9301 : cell_9301.check = true := by
  decide +kernel

theorem check_9302 : cell_9302.check = true := by
  decide +kernel

theorem check_9303 : cell_9303.check = true := by
  decide +kernel

theorem check_9304 : cell_9304.check = true := by
  decide +kernel

theorem check_9305 : cell_9305.check = true := by
  decide +kernel

theorem check_9306 : cell_9306.check = true := by
  decide +kernel

theorem check_9307 : cell_9307.check = true := by
  decide +kernel

theorem check_9308 : cell_9308.check = true := by
  decide +kernel

theorem check_9309 : cell_9309.check = true := by
  decide +kernel

theorem check_9310 : cell_9310.check = true := by
  decide +kernel

theorem check_9311 : cell_9311.check = true := by
  decide +kernel

theorem check_9312 : cell_9312.check = true := by
  decide +kernel

theorem check_9313 : cell_9313.check = true := by
  decide +kernel

theorem check_9314 : cell_9314.check = true := by
  decide +kernel

theorem check_9315 : cell_9315.check = true := by
  decide +kernel

theorem check_9316 : cell_9316.check = true := by
  decide +kernel

theorem check_9317 : cell_9317.check = true := by
  decide +kernel

theorem check_9318 : cell_9318.check = true := by
  decide +kernel

theorem check_9319 : cell_9319.check = true := by
  decide +kernel

theorem check_9320 : cell_9320.check = true := by
  decide +kernel

theorem check_9321 : cell_9321.check = true := by
  decide +kernel

theorem check_9322 : cell_9322.check = true := by
  decide +kernel

theorem check_9323 : cell_9323.check = true := by
  decide +kernel

theorem check_9324 : cell_9324.check = true := by
  decide +kernel

theorem check_9325 : cell_9325.check = true := by
  decide +kernel

theorem check_9326 : cell_9326.check = true := by
  decide +kernel

theorem check_9327 : cell_9327.check = true := by
  decide +kernel

theorem check_9328 : cell_9328.check = true := by
  decide +kernel

theorem check_9329 : cell_9329.check = true := by
  decide +kernel

theorem check_9330 : cell_9330.check = true := by
  decide +kernel

theorem check_9331 : cell_9331.check = true := by
  decide +kernel

theorem check_9332 : cell_9332.check = true := by
  decide +kernel

theorem check_9333 : cell_9333.check = true := by
  decide +kernel

theorem check_9334 : cell_9334.check = true := by
  decide +kernel

theorem check_9335 : cell_9335.check = true := by
  decide +kernel

theorem check_9336 : cell_9336.check = true := by
  decide +kernel

theorem check_9337 : cell_9337.check = true := by
  decide +kernel

theorem check_9338 : cell_9338.check = true := by
  decide +kernel

theorem check_9339 : cell_9339.check = true := by
  decide +kernel

theorem check_9340 : cell_9340.check = true := by
  decide +kernel

theorem check_9341 : cell_9341.check = true := by
  decide +kernel

theorem check_9342 : cell_9342.check = true := by
  decide +kernel

theorem check_9343 : cell_9343.check = true := by
  decide +kernel

theorem check_9344 : cell_9344.check = true := by
  decide +kernel

theorem check_9345 : cell_9345.check = true := by
  decide +kernel

theorem check_9346 : cell_9346.check = true := by
  decide +kernel

theorem check_9347 : cell_9347.check = true := by
  decide +kernel

theorem check_9348 : cell_9348.check = true := by
  decide +kernel

theorem check_9349 : cell_9349.check = true := by
  decide +kernel

def cells : List Cell := [cell_9300, cell_9301, cell_9302, cell_9303, cell_9304, cell_9305, cell_9306, cell_9307, cell_9308, cell_9309, cell_9310, cell_9311, cell_9312, cell_9313, cell_9314, cell_9315, cell_9316, cell_9317, cell_9318, cell_9319, cell_9320, cell_9321, cell_9322, cell_9323, cell_9324, cell_9325, cell_9326, cell_9327, cell_9328, cell_9329, cell_9330, cell_9331, cell_9332, cell_9333, cell_9334, cell_9335, cell_9336, cell_9337, cell_9338, cell_9339, cell_9340, cell_9341, cell_9342, cell_9343, cell_9344, cell_9345, cell_9346, cell_9347, cell_9348, cell_9349]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9300, check_9301, check_9302, check_9303, check_9304, check_9305, check_9306, check_9307, check_9308, check_9309, check_9310, check_9311, check_9312, check_9313, check_9314, check_9315, check_9316, check_9317, check_9318, check_9319, check_9320, check_9321, check_9322, check_9323, check_9324, check_9325, check_9326, check_9327, check_9328, check_9329, check_9330, check_9331, check_9332, check_9333, check_9334, check_9335, check_9336, check_9337, check_9338, check_9339, check_9340, check_9341, check_9342, check_9343, check_9344, check_9345, check_9346, check_9347, check_9348, check_9349, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0186

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0186
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0186
open AnalyticBounds.ExpressionCertificate

theorem linked_9300 : Linked cell_9300 pieces := by
  apply Linked.of_piece piece_941 piece_941_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9300, List.cons_subset, List.nil_subset, and_true]
  exact piece_1339_mem

theorem linked_9301 : Linked cell_9301 pieces := by
  apply Linked.of_piece piece_942 piece_942_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9301, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1340_mem, piece_1341_mem⟩

theorem linked_9302 : Linked cell_9302 pieces := by
  apply Linked.of_piece piece_942 piece_942_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9302, List.cons_subset, List.nil_subset, and_true]
  exact piece_1340_mem

theorem linked_9303 : Linked cell_9303 pieces := by
  apply Linked.of_piece piece_942 piece_942_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9303, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1339_mem, piece_1340_mem⟩

theorem linked_9304 : Linked cell_9304 pieces := by
  apply Linked.of_piece piece_942 piece_942_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9304, List.cons_subset, List.nil_subset, and_true]
  exact piece_1339_mem

theorem linked_9305 : Linked cell_9305 pieces := by
  apply Linked.of_piece piece_942 piece_942_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9305, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1338_mem, piece_1339_mem⟩

theorem linked_9306 : Linked cell_9306 pieces := by
  apply Linked.of_piece piece_942 piece_942_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9306, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1337_mem, piece_1338_mem⟩

theorem linked_9307 : Linked cell_9307 pieces := by
  apply Linked.of_piece piece_942 piece_942_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9307, List.cons_subset, List.nil_subset, and_true]
  exact piece_1337_mem

theorem linked_9308 : Linked cell_9308 pieces := by
  apply Linked.of_piece piece_942 piece_942_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9308, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1336_mem, piece_1337_mem⟩

theorem linked_9309 : Linked cell_9309 pieces := by
  apply Linked.of_piece piece_943 piece_943_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9309, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1338_mem, piece_1339_mem⟩

theorem linked_9310 : Linked cell_9310 pieces := by
  apply Linked.of_piece piece_943 piece_943_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9310, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1337_mem, piece_1338_mem⟩

theorem linked_9311 : Linked cell_9311 pieces := by
  apply Linked.of_piece piece_943 piece_943_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9311, List.cons_subset, List.nil_subset, and_true]
  exact piece_1337_mem

theorem linked_9312 : Linked cell_9312 pieces := by
  apply Linked.of_piece piece_943 piece_943_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9312, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1336_mem, piece_1337_mem⟩

theorem linked_9313 : Linked cell_9313 pieces := by
  apply Linked.of_piece piece_943 piece_943_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9313, List.cons_subset, List.nil_subset, and_true]
  exact piece_1336_mem

theorem linked_9314 : Linked cell_9314 pieces := by
  apply Linked.of_piece piece_943 piece_943_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9314, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1335_mem, piece_1336_mem⟩

theorem linked_9315 : Linked cell_9315 pieces := by
  apply Linked.of_piece piece_943 piece_943_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9315, List.cons_subset, List.nil_subset, and_true]
  exact piece_1335_mem

theorem linked_9316 : Linked cell_9316 pieces := by
  apply Linked.of_piece piece_943 piece_943_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9316, List.cons_subset, List.nil_subset, and_true]
  exact piece_1335_mem

theorem linked_9317 : Linked cell_9317 pieces := by
  apply Linked.of_piece piece_944 piece_944_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9317, List.cons_subset, List.nil_subset, and_true]
  exact piece_1336_mem

theorem linked_9318 : Linked cell_9318 pieces := by
  apply Linked.of_piece piece_944 piece_944_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9318, List.cons_subset, List.nil_subset, and_true]
  exact piece_1336_mem

theorem linked_9319 : Linked cell_9319 pieces := by
  apply Linked.of_piece piece_944 piece_944_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9319, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1335_mem, piece_1336_mem⟩

theorem linked_9320 : Linked cell_9320 pieces := by
  apply Linked.of_piece piece_944 piece_944_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9320, List.cons_subset, List.nil_subset, and_true]
  exact piece_1335_mem

theorem linked_9321 : Linked cell_9321 pieces := by
  apply Linked.of_piece piece_944 piece_944_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9321, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1334_mem, piece_1335_mem⟩

theorem linked_9322 : Linked cell_9322 pieces := by
  apply Linked.of_piece piece_944 piece_944_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9322, List.cons_subset, List.nil_subset, and_true]
  exact piece_1334_mem

theorem linked_9323 : Linked cell_9323 pieces := by
  apply Linked.of_piece piece_944 piece_944_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9323, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1333_mem, piece_1334_mem⟩

theorem linked_9324 : Linked cell_9324 pieces := by
  apply Linked.of_piece piece_944 piece_944_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9324, List.cons_subset, List.nil_subset, and_true]
  exact piece_1333_mem

theorem linked_9325 : Linked cell_9325 pieces := by
  apply Linked.of_piece piece_945 piece_945_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9325, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1334_mem, piece_1335_mem⟩

theorem linked_9326 : Linked cell_9326 pieces := by
  apply Linked.of_piece piece_945 piece_945_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9326, List.cons_subset, List.nil_subset, and_true]
  exact piece_1334_mem

theorem linked_9327 : Linked cell_9327 pieces := by
  apply Linked.of_piece piece_945 piece_945_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9327, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1333_mem, piece_1334_mem⟩

theorem linked_9328 : Linked cell_9328 pieces := by
  apply Linked.of_piece piece_945 piece_945_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9328, List.cons_subset, List.nil_subset, and_true]
  exact piece_1333_mem

theorem linked_9329 : Linked cell_9329 pieces := by
  apply Linked.of_piece piece_945 piece_945_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9329, List.cons_subset, List.nil_subset, and_true]
  exact piece_1333_mem

theorem linked_9330 : Linked cell_9330 pieces := by
  apply Linked.of_piece piece_945 piece_945_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9330, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1332_mem, piece_1333_mem⟩

theorem linked_9331 : Linked cell_9331 pieces := by
  apply Linked.of_piece piece_945 piece_945_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9331, List.cons_subset, List.nil_subset, and_true]
  exact piece_1332_mem

theorem linked_9332 : Linked cell_9332 pieces := by
  apply Linked.of_piece piece_945 piece_945_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9332, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1331_mem, piece_1332_mem⟩

theorem linked_9333 : Linked cell_9333 pieces := by
  apply Linked.of_piece piece_946 piece_946_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9333, List.cons_subset, List.nil_subset, and_true]
  exact piece_1333_mem

theorem linked_9334 : Linked cell_9334 pieces := by
  apply Linked.of_piece piece_946 piece_946_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9334, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1332_mem, piece_1333_mem⟩

theorem linked_9335 : Linked cell_9335 pieces := by
  apply Linked.of_piece piece_946 piece_946_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9335, List.cons_subset, List.nil_subset, and_true]
  exact piece_1332_mem

theorem linked_9336 : Linked cell_9336 pieces := by
  apply Linked.of_piece piece_946 piece_946_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9336, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1331_mem, piece_1332_mem⟩

theorem linked_9337 : Linked cell_9337 pieces := by
  apply Linked.of_piece piece_946 piece_946_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9337, List.cons_subset, List.nil_subset, and_true]
  exact piece_1331_mem

theorem linked_9338 : Linked cell_9338 pieces := by
  apply Linked.of_piece piece_946 piece_946_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9338, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1330_mem, piece_1331_mem⟩

theorem linked_9339 : Linked cell_9339 pieces := by
  apply Linked.of_piece piece_946 piece_946_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9339, List.cons_subset, List.nil_subset, and_true]
  exact piece_1330_mem

theorem linked_9340 : Linked cell_9340 pieces := by
  apply Linked.of_piece piece_946 piece_946_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9340, List.cons_subset, List.nil_subset, and_true]
  exact piece_1330_mem

theorem linked_9341 : Linked cell_9341 pieces := by
  apply Linked.of_piece piece_947 piece_947_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9341, List.cons_subset, List.nil_subset, and_true]
  exact piece_1331_mem

theorem linked_9342 : Linked cell_9342 pieces := by
  apply Linked.of_piece piece_947 piece_947_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9342, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1330_mem, piece_1331_mem⟩

theorem linked_9343 : Linked cell_9343 pieces := by
  apply Linked.of_piece piece_947 piece_947_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9343, List.cons_subset, List.nil_subset, and_true]
  exact piece_1330_mem

theorem linked_9344 : Linked cell_9344 pieces := by
  apply Linked.of_piece piece_947 piece_947_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9344, List.cons_subset, List.nil_subset, and_true]
  exact piece_1330_mem

theorem linked_9345 : Linked cell_9345 pieces := by
  apply Linked.of_piece piece_947 piece_947_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9345, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1329_mem, piece_1330_mem⟩

theorem linked_9346 : Linked cell_9346 pieces := by
  apply Linked.of_piece piece_947 piece_947_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9346, List.cons_subset, List.nil_subset, and_true]
  exact piece_1329_mem

theorem linked_9347 : Linked cell_9347 pieces := by
  apply Linked.of_piece piece_947 piece_947_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9347, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1328_mem, piece_1329_mem⟩

theorem linked_9348 : Linked cell_9348 pieces := by
  apply Linked.of_piece piece_947 piece_947_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9348, List.cons_subset, List.nil_subset, and_true]
  exact piece_1328_mem

theorem linked_9349 : Linked cell_9349 pieces := by
  apply Linked.of_piece piece_948 piece_948_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9349, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1329_mem, piece_1330_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0186.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0186.cells,List.forall_mem_cons]
  exact ⟨linked_9300, linked_9301, linked_9302, linked_9303, linked_9304, linked_9305, linked_9306, linked_9307, linked_9308, linked_9309, linked_9310, linked_9311, linked_9312, linked_9313, linked_9314, linked_9315, linked_9316, linked_9317, linked_9318, linked_9319, linked_9320, linked_9321, linked_9322, linked_9323, linked_9324, linked_9325, linked_9326, linked_9327, linked_9328, linked_9329, linked_9330, linked_9331, linked_9332, linked_9333, linked_9334, linked_9335, linked_9336, linked_9337, linked_9338, linked_9339, linked_9340, linked_9341, linked_9342, linked_9343, linked_9344, linked_9345, linked_9346, linked_9347, linked_9348, linked_9349, by simp⟩

theorem covered : covers (38643750000000001 / 100000000000000000 : ℚ) (38956250000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0186.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0186
