import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0170
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(67281284916201117 / 200000000000000000 : ℚ), (134581284916201121 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (7619643817523 / 10000000000000 : ℚ)
  w := (104609997833 / 62500000000 : ℚ)
  center := (53828770949720671 / 160000000000000000 : ℚ)
  supportValue := (1671049903598737 / 2500000000000000 : ℚ)
  supportSlope := (-4717466120507417 / 1000000000000000 : ℚ)
  oldCenter := (1671049903598737 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_833
  oldLo := (33374999999999999 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1556, piece_1557]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8500 : Cell := { cellDefaults with
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  newCoefficients := coefficients_832
  oldLo := (1336312849162011 / 2000000000000000 : ℚ)
  oldHi := (16725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1556, piece_1557]
}

def cell_8501 : Cell := { cellDefaults with
  domain := ⟨(134581284916201121 / 400000000000000000 : ℚ), (16825000000000001 / 50000000000000000 : ℚ)⟩
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  center := (269181284916201129 / 800000000000000000 : ℚ)
  supportValue := (3340996481196357 / 5000000000000000 : ℚ)
  supportSlope := (-235754159255509 / 50000000000000 : ℚ)
  oldCenter := (3340996481196357 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_832
  oldLo := (16700000000000001 / 25000000000000000 : ℚ)
  oldHi := (33424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1555, piece_1556]
}

def cell_8502 : Cell := { cellDefaults with
  domain := ⟨(16825000000000001 / 50000000000000000 : ℚ), (16828125000000001 / 50000000000000000 : ℚ)⟩
  center := (16826562500000001 / 50000000000000000 : ℚ)
  supportValue := (6691352245948339 / 10000000000000000 : ℚ)
  supportSlope := (-4721280611349243 / 1000000000000000 : ℚ)
  oldCenter := (6691352245948339 / 10000000000000000 : ℚ)
  oldLo := (33424999999999999 / 50000000000000000 : ℚ)
  oldHi := (33474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1557, piece_1558]
}

def cell_8503 : Cell := { cellDefaults with
  domain := ⟨(16828125000000001 / 50000000000000000 : ℚ), (16831250000000001 / 50000000000000000 : ℚ)⟩
  center := (16829687500000001 / 50000000000000000 : ℚ)
  supportValue := (1070144371529 / 1600000000000 : ℚ)
  supportSlope := (-4718454016288121 / 1000000000000000 : ℚ)
  oldCenter := (1070144371529 / 1600000000000 : ℚ)
  oldLo := (33424999999999999 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1557]
}

def cell_8504 : Cell := { cellDefaults with
  domain := ⟨(16831250000000001 / 50000000000000000 : ℚ), (16834375000000001 / 50000000000000000 : ℚ)⟩
  center := (16832812500000001 / 50000000000000000 : ℚ)
  supportValue := (267418172265077 / 400000000000000 : ℚ)
  supportSlope := (-4715351137662083 / 1000000000000000 : ℚ)
  oldCenter := (267418172265077 / 400000000000000 : ℚ)
  oldLo := (1336312849162011 / 2000000000000000 : ℚ)
  oldHi := (16725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1556, piece_1557]
}

def cell_8505 : Cell := { cellDefaults with
  domain := ⟨(16834375000000001 / 50000000000000000 : ℚ), (16837500000000001 / 50000000000000000 : ℚ)⟩
  center := (16835937500000001 / 50000000000000000 : ℚ)
  supportValue := (3341254043728157 / 5000000000000000 : ℚ)
  supportSlope := (-235619493180117 / 50000000000000 : ℚ)
  oldCenter := (3341254043728157 / 5000000000000000 : ℚ)
  oldLo := (16700000000000001 / 25000000000000000 : ℚ)
  oldHi := (33424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1555, piece_1556]
}

def cell_8506 : Cell := { cellDefaults with
  domain := ⟨(16837500000000001 / 50000000000000000 : ℚ), (16840625000000001 / 50000000000000000 : ℚ)⟩
  center := (16839062500000001 / 50000000000000000 : ℚ)
  supportValue := (6679563818368837 / 10000000000000000 : ℚ)
  supportSlope := (-2354714435362837 / 500000000000000 : ℚ)
  oldCenter := (6679563818368837 / 10000000000000000 : ℚ)
  oldHi := (1336312849162011 / 2000000000000000 : ℚ)
  oldPieces := [piece_1554, piece_1555]
}

def cell_8507 : Cell := { cellDefaults with
  domain := ⟨(16840625000000001 / 50000000000000000 : ℚ), (16843750000000001 / 50000000000000000 : ℚ)⟩
  center := (16842187500000001 / 50000000000000000 : ℚ)
  supportValue := (6676621341750533 / 10000000000000000 : ℚ)
  supportSlope := (-4706334188099959 / 1000000000000000 : ℚ)
  oldCenter := (6676621341750533 / 10000000000000000 : ℚ)
  oldPieces := [piece_1554]
}

def cell_8508 : Cell := { cellDefaults with
  domain := ⟨(16843750000000001 / 50000000000000000 : ℚ), (16846875000000001 / 50000000000000000 : ℚ)⟩
  center := (16845312500000001 / 50000000000000000 : ℚ)
  supportValue := (1334736154115429 / 2000000000000000 : ℚ)
  supportSlope := (-4703514115785623 / 1000000000000000 : ℚ)
  oldCenter := (1334736154115429 / 2000000000000000 : ℚ)
  oldLo := (16675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1553, piece_1554]
}

def cell_8509 : Cell := { cellDefaults with
  domain := ⟨(16846875000000001 / 50000000000000000 : ℚ), (16850000000000001 / 50000000000000000 : ℚ)⟩
  center := (16848437500000001 / 50000000000000000 : ℚ)
  supportValue := (6670742074936821 / 10000000000000000 : ℚ)
  supportSlope := (-470039976388037 / 100000000000000 : ℚ)
  oldCenter := (6670742074936821 / 10000000000000000 : ℚ)
  oldLo := (33324999999999999 / 50000000000000000 : ℚ)
  oldHi := (33374999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1552, piece_1553]
}

def cell_8510 : Cell := { cellDefaults with
  domain := ⟨(16850000000000001 / 50000000000000000 : ℚ), (16853125000000001 / 50000000000000000 : ℚ)⟩
  r := (76141094609413 / 100000000000000 : ℚ)
  w := (16728785550081 / 10000000000000 : ℚ)
  center := (16851562500000001 / 50000000000000000 : ℚ)
  supportValue := (1669926208877143 / 2500000000000000 : ℚ)
  supportSlope := (-470629468479089 / 100000000000000 : ℚ)
  oldCenter := (1669926208877143 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_834
  oldHi := (1336312849162011 / 2000000000000000 : ℚ)
  oldPieces := [piece_1554, piece_1555]
}

def cell_8511 : Cell := { cellDefaults with
  domain := ⟨(16853125000000001 / 50000000000000000 : ℚ), (16856250000000001 / 50000000000000000 : ℚ)⟩
  r := (76141094609413 / 100000000000000 : ℚ)
  w := (16728785550081 / 10000000000000 : ℚ)
  center := (16854687500000001 / 50000000000000000 : ℚ)
  supportValue := (834595537725383 / 1250000000000000 : ℚ)
  supportSlope := (-470322935269607 / 100000000000000 : ℚ)
  oldCenter := (834595537725383 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_834
  oldPieces := [piece_1554]
}

def cell_8512 : Cell := { cellDefaults with
  domain := ⟨(16856250000000001 / 50000000000000000 : ℚ), (16859375000000001 / 50000000000000000 : ℚ)⟩
  r := (76141094609413 / 100000000000000 : ℚ)
  w := (16728785550081 / 10000000000000 : ℚ)
  center := (16857812500000001 / 50000000000000000 : ℚ)
  supportValue := (1334765136553917 / 2000000000000000 : ℚ)
  supportSlope := (-9400788806907201 / 2000000000000000 : ℚ)
  oldCenter := (1334765136553917 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_834
  oldLo := (16675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1553, piece_1554]
}

def cell_8513 : Cell := { cellDefaults with
  domain := ⟨(16859375000000001 / 50000000000000000 : ℚ), (16862500000000001 / 50000000000000000 : ℚ)⟩
  r := (76141094609413 / 100000000000000 : ℚ)
  w := (16728785550081 / 10000000000000 : ℚ)
  center := (16860937500000001 / 50000000000000000 : ℚ)
  supportValue := (833861115078277 / 1250000000000000 : ℚ)
  supportSlope := (-4697287085274837 / 1000000000000000 : ℚ)
  oldCenter := (833861115078277 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_834
  oldLo := (33324999999999999 / 50000000000000000 : ℚ)
  oldHi := (33374999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1552, piece_1553]
}

def cell_8514 : Cell := { cellDefaults with
  domain := ⟨(16862500000000001 / 50000000000000000 : ℚ), (16865625000000001 / 50000000000000000 : ℚ)⟩
  r := (76141094609413 / 100000000000000 : ℚ)
  w := (16728785550081 / 10000000000000 : ℚ)
  center := (16864062500000001 / 50000000000000000 : ℚ)
  supportValue := (6667953985961051 / 10000000000000000 : ℚ)
  supportSlope := (-4694411323381331 / 1000000000000000 : ℚ)
  oldCenter := (6667953985961051 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_834
  oldLo := (33324999999999999 / 50000000000000000 : ℚ)
  oldHi := (16675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1552]
}

def cell_8515 : Cell := { cellDefaults with
  domain := ⟨(16865625000000001 / 50000000000000000 : ℚ), (16868750000000001 / 50000000000000000 : ℚ)⟩
  r := (76141094609413 / 100000000000000 : ℚ)
  w := (16728785550081 / 10000000000000 : ℚ)
  center := (16867187500000001 / 50000000000000000 : ℚ)
  supportValue := (3332510495105299 / 5000000000000000 : ℚ)
  supportSlope := (-4691397426231703 / 1000000000000000 : ℚ)
  oldCenter := (3332510495105299 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_834
  oldLo := (16650000000000001 / 25000000000000000 : ℚ)
  oldHi := (16675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1551, piece_1552]
}

def cell_8516 : Cell := { cellDefaults with
  domain := ⟨(16868750000000001 / 50000000000000000 : ℚ), (16871875000000001 / 50000000000000000 : ℚ)⟩
  r := (76141094609413 / 100000000000000 : ℚ)
  w := (16728785550081 / 10000000000000 : ℚ)
  center := (16870312500000001 / 50000000000000000 : ℚ)
  supportValue := (333104486769259 / 500000000000000 : ℚ)
  supportSlope := (-2344195571447827 / 500000000000000 : ℚ)
  oldCenter := (333104486769259 / 500000000000000 : ℚ)
  newCoefficients := coefficients_834
  oldLo := (16650000000000001 / 25000000000000000 : ℚ)
  oldHi := (33324999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1551]
}

def cell_8517 : Cell := { cellDefaults with
  domain := ⟨(16871875000000001 / 50000000000000000 : ℚ), (16875000000000001 / 50000000000000000 : ℚ)⟩
  r := (76141094609413 / 100000000000000 : ℚ)
  w := (16728785550081 / 10000000000000 : ℚ)
  center := (16873437500000001 / 50000000000000000 : ℚ)
  supportValue := (6659160419186457 / 10000000000000000 : ℚ)
  supportSlope := (-2342757504795401 / 500000000000000 : ℚ)
  oldCenter := (6659160419186457 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_834
  oldLo := (33274999999999999 / 50000000000000000 : ℚ)
  oldHi := (33324999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1550, piece_1551]
}

def cell_8518 : Cell := { cellDefaults with
  domain := ⟨(16875000000000001 / 50000000000000000 : ℚ), (16878125000000001 / 50000000000000000 : ℚ)⟩
  r := (76085841908821 / 100000000000000 : ℚ)
  w := (8359995351121 / 5000000000000 : ℚ)
  center := (16876562500000001 / 50000000000000000 : ℚ)
  supportValue := (266723905569779 / 400000000000000 : ℚ)
  supportSlope := (-4691313043359457 / 1000000000000000 : ℚ)
  oldCenter := (266723905569779 / 400000000000000 : ℚ)
  newCoefficients := coefficients_835
  oldLo := (33324999999999999 / 50000000000000000 : ℚ)
  oldHi := (16675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1552]
}

def cell_8519 : Cell := { cellDefaults with
  domain := ⟨(16878125000000001 / 50000000000000000 : ℚ), (16881250000000001 / 50000000000000000 : ℚ)⟩
  r := (76085841908821 / 100000000000000 : ℚ)
  w := (8359995351121 / 5000000000000 : ℚ)
  center := (16879687500000001 / 50000000000000000 : ℚ)
  supportValue := (833145822191939 / 1250000000000000 : ℚ)
  supportSlope := (-4688284063668391 / 1000000000000000 : ℚ)
  oldCenter := (833145822191939 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_835
  oldLo := (16650000000000001 / 25000000000000000 : ℚ)
  oldHi := (16675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1551, piece_1552]
}

def cell_8520 : Cell := { cellDefaults with
  domain := ⟨(16881250000000001 / 50000000000000000 : ℚ), (16884375000000001 / 50000000000000000 : ℚ)⟩
  r := (76085841908821 / 100000000000000 : ℚ)
  w := (8359995351121 / 5000000000000 : ℚ)
  center := (16882812500000001 / 50000000000000000 : ℚ)
  supportValue := (1665559316562123 / 2500000000000000 : ℚ)
  supportSlope := (-1171326973005371 / 250000000000000 : ℚ)
  oldCenter := (1665559316562123 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_835
  oldLo := (16650000000000001 / 25000000000000000 : ℚ)
  oldHi := (33324999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1551]
}

def cell_8521 : Cell := { cellDefaults with
  domain := ⟨(16884375000000001 / 50000000000000000 : ℚ), (16887500000000001 / 50000000000000000 : ℚ)⟩
  r := (76085841908821 / 100000000000000 : ℚ)
  w := (8359995351121 / 5000000000000 : ℚ)
  center := (16885937500000001 / 50000000000000000 : ℚ)
  supportValue := (1664827472300977 / 2500000000000000 : ℚ)
  supportSlope := (-23412080306233207 / 5000000000000000 : ℚ)
  oldCenter := (1664827472300977 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_835
  oldLo := (33274999999999999 / 50000000000000000 : ℚ)
  oldHi := (33324999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1550, piece_1551]
}

def cell_8522 : Cell := { cellDefaults with
  domain := ⟨(16887500000000001 / 50000000000000000 : ℚ), (16890625000000001 / 50000000000000000 : ℚ)⟩
  r := (76085841908821 / 100000000000000 : ℚ)
  w := (8359995351121 / 5000000000000 : ℚ)
  center := (16889062500000001 / 50000000000000000 : ℚ)
  supportValue := (3328192155702631 / 5000000000000000 : ℚ)
  supportSlope := (-9358646730625253 / 2000000000000000 : ℚ)
  oldCenter := (3328192155702631 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_835
  oldLo := (16625000000000001 / 25000000000000000 : ℚ)
  oldHi := (16650000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1549, piece_1550]
}

def cell_8523 : Cell := { cellDefaults with
  domain := ⟨(16890625000000001 / 50000000000000000 : ℚ), (16893750000000001 / 50000000000000000 : ℚ)⟩
  r := (76085841908821 / 100000000000000 : ℚ)
  w := (8359995351121 / 5000000000000 : ℚ)
  center := (16892187500000001 / 50000000000000000 : ℚ)
  supportValue := (1663365149637497 / 2500000000000000 : ℚ)
  supportSlope := (-467654287035657 / 100000000000000 : ℚ)
  oldCenter := (1663365149637497 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_835
  oldLo := (16625000000000001 / 25000000000000000 : ℚ)
  oldHi := (33274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1549]
}

def cell_8524 : Cell := { cellDefaults with
  domain := ⟨(16893750000000001 / 50000000000000000 : ℚ), (16896875000000001 / 50000000000000000 : ℚ)⟩
  r := (76085841908821 / 100000000000000 : ℚ)
  w := (8359995351121 / 5000000000000 : ℚ)
  center := (16895312500000001 / 50000000000000000 : ℚ)
  supportValue := (831317345633517 / 1250000000000000 : ℚ)
  supportSlope := (-186938638524623 / 40000000000000 : ℚ)
  oldCenter := (831317345633517 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_835
  oldLo := (33224999999999999 / 50000000000000000 : ℚ)
  oldHi := (33274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1548, piece_1549]
}

def cell_8525 : Cell := { cellDefaults with
  domain := ⟨(16896875000000001 / 50000000000000000 : ℚ), (16900000000000001 / 50000000000000000 : ℚ)⟩
  r := (76085841908821 / 100000000000000 : ℚ)
  w := (8359995351121 / 5000000000000 : ℚ)
  center := (16898437500000001 / 50000000000000000 : ℚ)
  supportValue := (53180949695177 / 80000000000000 : ℚ)
  supportSlope := (-4670557984354673 / 1000000000000000 : ℚ)
  oldCenter := (53180949695177 / 80000000000000 : ℚ)
  newCoefficients := coefficients_835
  oldLo := (33224999999999999 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1548]
}

def cell_8526 : Cell := { cellDefaults with
  domain := ⟨(16900000000000001 / 50000000000000000 : ℚ), (16903125000000001 / 50000000000000000 : ℚ)⟩
  r := (76030681303199 / 100000000000000 : ℚ)
  w := (3342243064693 / 2000000000000 : ℚ)
  center := (16901562500000001 / 50000000000000000 : ℚ)
  supportValue := (83206627920787 / 125000000000000 : ℚ)
  supportSlope := (-116905702138137 / 25000000000000 : ℚ)
  oldCenter := (83206627920787 / 125000000000000 : ℚ)
  newCoefficients := coefficients_836
  oldLo := (33274999999999999 / 50000000000000000 : ℚ)
  oldHi := (16650000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1550]
}

def cell_8527 : Cell := { cellDefaults with
  domain := ⟨(16903125000000001 / 50000000000000000 : ℚ), (16906250000000001 / 50000000000000000 : ℚ)⟩
  r := (76030681303199 / 100000000000000 : ℚ)
  w := (3342243064693 / 2000000000000 : ℚ)
  center := (16904687500000001 / 50000000000000000 : ℚ)
  supportValue := (6653608459807007 / 10000000000000000 : ℚ)
  supportSlope := (-7477529920601 / 1600000000000 : ℚ)
  oldCenter := (6653608459807007 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_836
  oldLo := (16625000000000001 / 25000000000000000 : ℚ)
  oldHi := (16650000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1549, piece_1550]
}

def cell_8528 : Cell := { cellDefaults with
  domain := ⟨(16906250000000001 / 50000000000000000 : ℚ), (16909375000000001 / 50000000000000000 : ℚ)⟩
  r := (76030681303199 / 100000000000000 : ℚ)
  w := (3342243064693 / 2000000000000 : ℚ)
  center := (16907812500000001 / 50000000000000000 : ℚ)
  supportValue := (6650688546817579 / 10000000000000000 : ℚ)
  supportSlope := (-2335186580658899 / 500000000000000 : ℚ)
  oldCenter := (6650688546817579 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_836
  oldLo := (33224999999999999 / 50000000000000000 : ℚ)
  oldHi := (33274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1548, piece_1549]
}

def cell_8529 : Cell := { cellDefaults with
  domain := ⟨(16909375000000001 / 50000000000000000 : ℚ), (16912500000000001 / 50000000000000000 : ℚ)⟩
  r := (76030681303199 / 100000000000000 : ℚ)
  w := (3342243064693 / 2000000000000 : ℚ)
  center := (16910937500000001 / 50000000000000000 : ℚ)
  supportValue := (83097130307133 / 125000000000000 : ℚ)
  supportSlope := (-1166873819218317 / 250000000000000 : ℚ)
  oldCenter := (83097130307133 / 125000000000000 : ℚ)
  newCoefficients := coefficients_836
  oldLo := (33224999999999999 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1548]
}

def cell_8530 : Cell := { cellDefaults with
  domain := ⟨(16912500000000001 / 50000000000000000 : ℚ), (16915625000000001 / 50000000000000000 : ℚ)⟩
  r := (76030681303199 / 100000000000000 : ℚ)
  w := (3342243064693 / 2000000000000 : ℚ)
  center := (16914062500000001 / 50000000000000000 : ℚ)
  supportValue := (6644854227926819 / 10000000000000000 : ℚ)
  supportSlope := (-291533491421303 / 62500000000000 : ℚ)
  oldCenter := (6644854227926819 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_836
  oldLo := (66400000000000003 / 100000000000000000 : ℚ)
  oldHi := (16625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1547, piece_1548]
}

def cell_8531 : Cell := { cellDefaults with
  domain := ⟨(16915625000000001 / 50000000000000000 : ℚ), (16918750000000001 / 50000000000000000 : ℚ)⟩
  r := (76030681303199 / 100000000000000 : ℚ)
  w := (3342243064693 / 2000000000000 : ℚ)
  center := (16917187500000001 / 50000000000000000 : ℚ)
  supportValue := (6641939767196209 / 10000000000000000 : ℚ)
  supportSlope := (-4661532094043963 / 1000000000000000 : ℚ)
  oldCenter := (6641939767196209 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_836
  oldLo := (66400000000000003 / 100000000000000000 : ℚ)
  oldHi := (33224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1547]
}

def cell_8532 : Cell := { cellDefaults with
  domain := ⟨(16918750000000001 / 50000000000000000 : ℚ), (16921875000000001 / 50000000000000000 : ℚ)⟩
  r := (76030681303199 / 100000000000000 : ℚ)
  w := (3342243064693 / 2000000000000 : ℚ)
  center := (16920312500000001 / 50000000000000000 : ℚ)
  supportValue := (1659756803893199 / 2500000000000000 : ℚ)
  supportSlope := (-23293528669388053 / 5000000000000000 : ℚ)
  oldCenter := (1659756803893199 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_836
  oldLo := (33174999999999999 / 50000000000000000 : ℚ)
  oldHi := (33224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1546, piece_1547]
}

def cell_8533 : Cell := { cellDefaults with
  domain := ⟨(16921875000000001 / 50000000000000000 : ℚ), (16925000000000001 / 50000000000000000 : ℚ)⟩
  r := (76030681303199 / 100000000000000 : ℚ)
  w := (3342243064693 / 2000000000000 : ℚ)
  center := (16923437500000001 / 50000000000000000 : ℚ)
  supportValue := (6636116478081517 / 10000000000000000 : ℚ)
  supportSlope := (-4655630218920237 / 1000000000000000 : ℚ)
  oldCenter := (6636116478081517 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_836
  oldLo := (66300000000000003 / 100000000000000000 : ℚ)
  oldHi := (66400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1545, piece_1546]
}

def cell_8534 : Cell := { cellDefaults with
  domain := ⟨(16925000000000001 / 50000000000000000 : ℚ), (16928125000000001 / 50000000000000000 : ℚ)⟩
  r := (18993902931109 / 25000000000000 : ℚ)
  w := (32621991221 / 19531250000 : ℚ)
  center := (16926562500000001 / 50000000000000000 : ℚ)
  supportValue := (6645002459792967 / 10000000000000000 : ℚ)
  supportSlope := (-4661442597448939 / 1000000000000000 : ℚ)
  oldCenter := (6645002459792967 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_837
  oldLo := (66400000000000003 / 100000000000000000 : ℚ)
  oldHi := (16625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1547, piece_1548]
}

def cell_8535 : Cell := { cellDefaults with
  domain := ⟨(16928125000000001 / 50000000000000000 : ℚ), (16931250000000001 / 50000000000000000 : ℚ)⟩
  r := (18993902931109 / 25000000000000 : ℚ)
  w := (32621991221 / 19531250000 : ℚ)
  center := (16929687500000001 / 50000000000000000 : ℚ)
  supportValue := (1328417983124163 / 2000000000000000 : ℚ)
  supportSlope := (-58230869049547 / 12500000000000 : ℚ)
  oldCenter := (1328417983124163 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_837
  oldLo := (66400000000000003 / 100000000000000000 : ℚ)
  oldHi := (33224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1547]
}

def cell_8536 : Cell := { cellDefaults with
  domain := ⟨(16931250000000001 / 50000000000000000 : ℚ), (16934375000000001 / 50000000000000000 : ℚ)⟩
  r := (18993902931109 / 25000000000000 : ℚ)
  w := (32621991221 / 19531250000 : ℚ)
  center := (16932812500000001 / 50000000000000000 : ℚ)
  supportValue := (6639179290512133 / 10000000000000000 : ℚ)
  supportSlope := (-581953381240119 / 125000000000000 : ℚ)
  oldCenter := (6639179290512133 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_837
  oldLo := (33174999999999999 / 50000000000000000 : ℚ)
  oldHi := (33224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1546, piece_1547]
}

def cell_8537 : Cell := { cellDefaults with
  domain := ⟨(16934375000000001 / 50000000000000000 : ℚ), (16937500000000001 / 50000000000000000 : ℚ)⟩
  r := (18993902931109 / 25000000000000 : ℚ)
  w := (32621991221 / 19531250000 : ℚ)
  center := (16935937500000001 / 50000000000000000 : ℚ)
  supportValue := (663627046005079 / 1000000000000000 : ℚ)
  supportSlope := (-581569828396411 / 125000000000000 : ℚ)
  oldCenter := (663627046005079 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_837
  oldLo := (66300000000000003 / 100000000000000000 : ℚ)
  oldHi := (66400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1545, piece_1546]
}

def cell_8538 : Cell := { cellDefaults with
  domain := ⟨(16937500000000001 / 50000000000000000 : ℚ), (16940625000000001 / 50000000000000000 : ℚ)⟩
  r := (18993902931109 / 25000000000000 : ℚ)
  w := (32621991221 / 19531250000 : ℚ)
  center := (16939062500000001 / 50000000000000000 : ℚ)
  supportValue := (6633363466384239 / 10000000000000000 : ℚ)
  supportSlope := (-9299579481364617 / 2000000000000000 : ℚ)
  oldCenter := (6633363466384239 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_837
  oldLo := (66300000000000003 / 100000000000000000 : ℚ)
  oldHi := (33174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1545]
}

def cell_8539 : Cell := { cellDefaults with
  domain := ⟨(16940625000000001 / 50000000000000000 : ℚ), (16943750000000001 / 50000000000000000 : ℚ)⟩
  r := (18993902931109 / 25000000000000 : ℚ)
  w := (32621991221 / 19531250000 : ℚ)
  center := (16942187500000001 / 50000000000000000 : ℚ)
  supportValue := (828807293065511 / 1250000000000000 : ℚ)
  supportSlope := (-290422105047039 / 62500000000000 : ℚ)
  oldCenter := (828807293065511 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_837
  oldLo := (6626256983240223 / 10000000000000000 : ℚ)
  oldHi := (33174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1544, piece_1545]
}

def cell_8540 : Cell := { cellDefaults with
  domain := ⟨(16943750000000001 / 50000000000000000 : ℚ), (16946875000000001 / 50000000000000000 : ℚ)⟩
  r := (18993902931109 / 25000000000000 : ℚ)
  w := (32621991221 / 19531250000 : ℚ)
  center := (16945312500000001 / 50000000000000000 : ℚ)
  supportValue := (828444372220063 / 1250000000000000 : ℚ)
  supportSlope := (-9287723989857 / 2000000000000 : ℚ)
  oldCenter := (828444372220063 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_837
  oldLo := (33124999999999999 / 50000000000000000 : ℚ)
  oldHi := (66300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1543, piece_1544]
}

def cell_8541 : Cell := { cellDefaults with
  domain := ⟨(16946875000000001 / 50000000000000000 : ℚ), (16950000000000001 / 50000000000000000 : ℚ)⟩
  r := (18993902931109 / 25000000000000 : ℚ)
  w := (32621991221 / 19531250000 : ℚ)
  center := (16948437500000001 / 50000000000000000 : ℚ)
  supportValue := (3312326762720109 / 5000000000000000 : ℚ)
  supportSlope := (-4640955487342779 / 1000000000000000 : ℚ)
  oldCenter := (3312326762720109 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_837
  oldLo := (66200000000000003 / 100000000000000000 : ℚ)
  oldHi := (6626256983240223 / 10000000000000000 : ℚ)
  oldPieces := [piece_1542, piece_1543]
}

def cell_8542 : Cell := { cellDefaults with
  domain := ⟨(16950000000000001 / 50000000000000000 : ℚ), (16953125000000001 / 50000000000000000 : ℚ)⟩
  r := (75920634374959 / 100000000000000 : ℚ)
  w := (8346861150361 / 5000000000000 : ℚ)
  center := (16951562500000001 / 50000000000000000 : ℚ)
  supportValue := (6633514146059467 / 10000000000000000 : ℚ)
  supportSlope := (-580841714941549 / 125000000000000 : ℚ)
  oldCenter := (6633514146059467 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_838
  oldLo := (66300000000000003 / 100000000000000000 : ℚ)
  oldHi := (33174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1545]
}

def cell_8543 : Cell := { cellDefaults with
  domain := ⟨(16953125000000001 / 50000000000000000 : ℚ), (16956250000000001 / 50000000000000000 : ℚ)⟩
  r := (75920634374959 / 100000000000000 : ℚ)
  w := (8346861150361 / 5000000000000 : ℚ)
  center := (16954687500000001 / 50000000000000000 : ℚ)
  supportValue := (6630610931917007 / 10000000000000000 : ℚ)
  supportSlope := (-4643681037261871 / 1000000000000000 : ℚ)
  oldCenter := (6630610931917007 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_838
  oldLo := (6626256983240223 / 10000000000000000 : ℚ)
  oldHi := (33174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1544, piece_1545]
}

def cell_8544 : Cell := { cellDefaults with
  domain := ⟨(16956250000000001 / 50000000000000000 : ℚ), (16959375000000001 / 50000000000000000 : ℚ)⟩
  r := (75920634374959 / 100000000000000 : ℚ)
  w := (8346861150361 / 5000000000000 : ℚ)
  center := (16957812500000001 / 50000000000000000 : ℚ)
  supportValue := (331385474166469 / 500000000000000 : ℚ)
  supportSlope := (-145025639572971 / 31250000000000 : ℚ)
  oldCenter := (331385474166469 / 500000000000000 : ℚ)
  newCoefficients := coefficients_838
  oldLo := (6626256983240223 / 10000000000000000 : ℚ)
  oldHi := (66300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1544]
}

def cell_8545 : Cell := { cellDefaults with
  domain := ⟨(16959375000000001 / 50000000000000000 : ℚ), (16962500000000001 / 50000000000000000 : ℚ)⟩
  r := (75920634374959 / 100000000000000 : ℚ)
  w := (8346861150361 / 5000000000000 : ℚ)
  center := (16960937500000001 / 50000000000000000 : ℚ)
  supportValue := (6624809944960887 / 10000000000000000 : ℚ)
  supportSlope := (-92757934014287 / 20000000000000 : ℚ)
  oldCenter := (6624809944960887 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_838
  oldLo := (66200000000000003 / 100000000000000000 : ℚ)
  oldHi := (66300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1542, piece_1543, piece_1544]
}

def cell_8546 : Cell := { cellDefaults with
  domain := ⟨(16962500000000001 / 50000000000000000 : ℚ), (16965625000000001 / 50000000000000000 : ℚ)⟩
  r := (75920634374959 / 100000000000000 : ℚ)
  w := (8346861150361 / 5000000000000 : ℚ)
  center := (16964062500000001 / 50000000000000000 : ℚ)
  supportValue := (82773901614507 / 125000000000000 : ℚ)
  supportSlope := (-463491500151747 / 100000000000000 : ℚ)
  oldCenter := (82773901614507 / 125000000000000 : ℚ)
  newCoefficients := coefficients_838
  oldLo := (66200000000000003 / 100000000000000000 : ℚ)
  oldHi := (33124999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1542]
}

def cell_8547 : Cell := { cellDefaults with
  domain := ⟨(16965625000000001 / 50000000000000000 : ℚ), (16968750000000001 / 50000000000000000 : ℚ)⟩
  r := (75920634374959 / 100000000000000 : ℚ)
  w := (8346861150361 / 5000000000000 : ℚ)
  center := (16967187500000001 / 50000000000000000 : ℚ)
  supportValue := (6619016202568897 / 10000000000000000 : ℚ)
  supportSlope := (-4632119970235493 / 1000000000000000 : ℚ)
  oldCenter := (6619016202568897 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_838
  oldLo := (33074999999999999 / 50000000000000000 : ℚ)
  oldHi := (33124999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1541, piece_1542]
}

def cell_8548 : Cell := { cellDefaults with
  domain := ⟨(16968750000000001 / 50000000000000000 : ℚ), (16971875000000001 / 50000000000000000 : ℚ)⟩
  r := (75920634374959 / 100000000000000 : ℚ)
  w := (8346861150361 / 5000000000000 : ℚ)
  center := (16970312500000001 / 50000000000000000 : ℚ)
  supportValue := (6616122073689281 / 10000000000000000 : ℚ)
  supportSlope := (-9258138431050611 / 2000000000000000 : ℚ)
  oldCenter := (6616122073689281 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_838
  oldLo := (66100000000000003 / 100000000000000000 : ℚ)
  oldHi := (66200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1540, piece_1541]
}

def cell_8549 : Cell := { cellDefaults with
  domain := ⟨(16971875000000001 / 50000000000000000 : ℚ), (16975000000000001 / 50000000000000000 : ℚ)⟩
  r := (75920634374959 / 100000000000000 : ℚ)
  w := (8346861150361 / 5000000000000 : ℚ)
  center := (16973437500000001 / 50000000000000000 : ℚ)
  supportValue := (6613229754309381 / 10000000000000000 : ℚ)
  supportSlope := (-23131495931938417 / 5000000000000000 : ℚ)
  oldCenter := (6613229754309381 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_838
  oldLo := (66100000000000003 / 100000000000000000 : ℚ)
  oldHi := (33074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1540]
}

theorem check_8500 : cell_8500.check = true := by
  decide +kernel

theorem check_8501 : cell_8501.check = true := by
  decide +kernel

theorem check_8502 : cell_8502.check = true := by
  decide +kernel

theorem check_8503 : cell_8503.check = true := by
  decide +kernel

theorem check_8504 : cell_8504.check = true := by
  decide +kernel

theorem check_8505 : cell_8505.check = true := by
  decide +kernel

theorem check_8506 : cell_8506.check = true := by
  decide +kernel

theorem check_8507 : cell_8507.check = true := by
  decide +kernel

theorem check_8508 : cell_8508.check = true := by
  decide +kernel

theorem check_8509 : cell_8509.check = true := by
  decide +kernel

theorem check_8510 : cell_8510.check = true := by
  decide +kernel

theorem check_8511 : cell_8511.check = true := by
  decide +kernel

theorem check_8512 : cell_8512.check = true := by
  decide +kernel

theorem check_8513 : cell_8513.check = true := by
  decide +kernel

theorem check_8514 : cell_8514.check = true := by
  decide +kernel

theorem check_8515 : cell_8515.check = true := by
  decide +kernel

theorem check_8516 : cell_8516.check = true := by
  decide +kernel

theorem check_8517 : cell_8517.check = true := by
  decide +kernel

theorem check_8518 : cell_8518.check = true := by
  decide +kernel

theorem check_8519 : cell_8519.check = true := by
  decide +kernel

theorem check_8520 : cell_8520.check = true := by
  decide +kernel

theorem check_8521 : cell_8521.check = true := by
  decide +kernel

theorem check_8522 : cell_8522.check = true := by
  decide +kernel

theorem check_8523 : cell_8523.check = true := by
  decide +kernel

theorem check_8524 : cell_8524.check = true := by
  decide +kernel

theorem check_8525 : cell_8525.check = true := by
  decide +kernel

theorem check_8526 : cell_8526.check = true := by
  decide +kernel

theorem check_8527 : cell_8527.check = true := by
  decide +kernel

theorem check_8528 : cell_8528.check = true := by
  decide +kernel

theorem check_8529 : cell_8529.check = true := by
  decide +kernel

theorem check_8530 : cell_8530.check = true := by
  decide +kernel

theorem check_8531 : cell_8531.check = true := by
  decide +kernel

theorem check_8532 : cell_8532.check = true := by
  decide +kernel

theorem check_8533 : cell_8533.check = true := by
  decide +kernel

theorem check_8534 : cell_8534.check = true := by
  decide +kernel

theorem check_8535 : cell_8535.check = true := by
  decide +kernel

theorem check_8536 : cell_8536.check = true := by
  decide +kernel

theorem check_8537 : cell_8537.check = true := by
  decide +kernel

theorem check_8538 : cell_8538.check = true := by
  decide +kernel

theorem check_8539 : cell_8539.check = true := by
  decide +kernel

theorem check_8540 : cell_8540.check = true := by
  decide +kernel

theorem check_8541 : cell_8541.check = true := by
  decide +kernel

theorem check_8542 : cell_8542.check = true := by
  decide +kernel

theorem check_8543 : cell_8543.check = true := by
  decide +kernel

theorem check_8544 : cell_8544.check = true := by
  decide +kernel

theorem check_8545 : cell_8545.check = true := by
  decide +kernel

theorem check_8546 : cell_8546.check = true := by
  decide +kernel

theorem check_8547 : cell_8547.check = true := by
  decide +kernel

theorem check_8548 : cell_8548.check = true := by
  decide +kernel

theorem check_8549 : cell_8549.check = true := by
  decide +kernel

def cells : List Cell := [cell_8500, cell_8501, cell_8502, cell_8503, cell_8504, cell_8505, cell_8506, cell_8507, cell_8508, cell_8509, cell_8510, cell_8511, cell_8512, cell_8513, cell_8514, cell_8515, cell_8516, cell_8517, cell_8518, cell_8519, cell_8520, cell_8521, cell_8522, cell_8523, cell_8524, cell_8525, cell_8526, cell_8527, cell_8528, cell_8529, cell_8530, cell_8531, cell_8532, cell_8533, cell_8534, cell_8535, cell_8536, cell_8537, cell_8538, cell_8539, cell_8540, cell_8541, cell_8542, cell_8543, cell_8544, cell_8545, cell_8546, cell_8547, cell_8548, cell_8549]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8500, check_8501, check_8502, check_8503, check_8504, check_8505, check_8506, check_8507, check_8508, check_8509, check_8510, check_8511, check_8512, check_8513, check_8514, check_8515, check_8516, check_8517, check_8518, check_8519, check_8520, check_8521, check_8522, check_8523, check_8524, check_8525, check_8526, check_8527, check_8528, check_8529, check_8530, check_8531, check_8532, check_8533, check_8534, check_8535, check_8536, check_8537, check_8538, check_8539, check_8540, check_8541, check_8542, check_8543, check_8544, check_8545, check_8546, check_8547, check_8548, check_8549, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0170

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0170
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0170
open AnalyticBounds.ExpressionCertificate

theorem linked_8500 : Linked cell_8500 pieces := by
  apply Linked.of_piece piece_832 piece_832_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8500, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1556_mem, piece_1557_mem⟩

theorem linked_8501 : Linked cell_8501 pieces := by
  apply Linked.of_piece piece_832 piece_832_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8501, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1555_mem, piece_1556_mem⟩

theorem linked_8502 : Linked cell_8502 pieces := by
  apply Linked.of_piece piece_833 piece_833_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8502, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1557_mem, piece_1558_mem⟩

theorem linked_8503 : Linked cell_8503 pieces := by
  apply Linked.of_piece piece_833 piece_833_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8503, List.cons_subset, List.nil_subset, and_true]
  exact piece_1557_mem

theorem linked_8504 : Linked cell_8504 pieces := by
  apply Linked.of_piece piece_833 piece_833_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8504, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1556_mem, piece_1557_mem⟩

theorem linked_8505 : Linked cell_8505 pieces := by
  apply Linked.of_piece piece_833 piece_833_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8505, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1555_mem, piece_1556_mem⟩

theorem linked_8506 : Linked cell_8506 pieces := by
  apply Linked.of_piece piece_833 piece_833_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8506, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1554_mem, piece_1555_mem⟩

theorem linked_8507 : Linked cell_8507 pieces := by
  apply Linked.of_piece piece_833 piece_833_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8507, List.cons_subset, List.nil_subset, and_true]
  exact piece_1554_mem

theorem linked_8508 : Linked cell_8508 pieces := by
  apply Linked.of_piece piece_833 piece_833_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8508, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1553_mem, piece_1554_mem⟩

theorem linked_8509 : Linked cell_8509 pieces := by
  apply Linked.of_piece piece_833 piece_833_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8509, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1552_mem, piece_1553_mem⟩

theorem linked_8510 : Linked cell_8510 pieces := by
  apply Linked.of_piece piece_834 piece_834_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8510, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1554_mem, piece_1555_mem⟩

theorem linked_8511 : Linked cell_8511 pieces := by
  apply Linked.of_piece piece_834 piece_834_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8511, List.cons_subset, List.nil_subset, and_true]
  exact piece_1554_mem

theorem linked_8512 : Linked cell_8512 pieces := by
  apply Linked.of_piece piece_834 piece_834_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8512, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1553_mem, piece_1554_mem⟩

theorem linked_8513 : Linked cell_8513 pieces := by
  apply Linked.of_piece piece_834 piece_834_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8513, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1552_mem, piece_1553_mem⟩

theorem linked_8514 : Linked cell_8514 pieces := by
  apply Linked.of_piece piece_834 piece_834_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8514, List.cons_subset, List.nil_subset, and_true]
  exact piece_1552_mem

theorem linked_8515 : Linked cell_8515 pieces := by
  apply Linked.of_piece piece_834 piece_834_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8515, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1551_mem, piece_1552_mem⟩

theorem linked_8516 : Linked cell_8516 pieces := by
  apply Linked.of_piece piece_834 piece_834_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8516, List.cons_subset, List.nil_subset, and_true]
  exact piece_1551_mem

theorem linked_8517 : Linked cell_8517 pieces := by
  apply Linked.of_piece piece_834 piece_834_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8517, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1550_mem, piece_1551_mem⟩

theorem linked_8518 : Linked cell_8518 pieces := by
  apply Linked.of_piece piece_835 piece_835_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8518, List.cons_subset, List.nil_subset, and_true]
  exact piece_1552_mem

theorem linked_8519 : Linked cell_8519 pieces := by
  apply Linked.of_piece piece_835 piece_835_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8519, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1551_mem, piece_1552_mem⟩

theorem linked_8520 : Linked cell_8520 pieces := by
  apply Linked.of_piece piece_835 piece_835_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8520, List.cons_subset, List.nil_subset, and_true]
  exact piece_1551_mem

theorem linked_8521 : Linked cell_8521 pieces := by
  apply Linked.of_piece piece_835 piece_835_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8521, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1550_mem, piece_1551_mem⟩

theorem linked_8522 : Linked cell_8522 pieces := by
  apply Linked.of_piece piece_835 piece_835_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8522, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1549_mem, piece_1550_mem⟩

theorem linked_8523 : Linked cell_8523 pieces := by
  apply Linked.of_piece piece_835 piece_835_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8523, List.cons_subset, List.nil_subset, and_true]
  exact piece_1549_mem

theorem linked_8524 : Linked cell_8524 pieces := by
  apply Linked.of_piece piece_835 piece_835_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8524, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1548_mem, piece_1549_mem⟩

theorem linked_8525 : Linked cell_8525 pieces := by
  apply Linked.of_piece piece_835 piece_835_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8525, List.cons_subset, List.nil_subset, and_true]
  exact piece_1548_mem

theorem linked_8526 : Linked cell_8526 pieces := by
  apply Linked.of_piece piece_836 piece_836_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8526, List.cons_subset, List.nil_subset, and_true]
  exact piece_1550_mem

theorem linked_8527 : Linked cell_8527 pieces := by
  apply Linked.of_piece piece_836 piece_836_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8527, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1549_mem, piece_1550_mem⟩

theorem linked_8528 : Linked cell_8528 pieces := by
  apply Linked.of_piece piece_836 piece_836_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8528, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1548_mem, piece_1549_mem⟩

theorem linked_8529 : Linked cell_8529 pieces := by
  apply Linked.of_piece piece_836 piece_836_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8529, List.cons_subset, List.nil_subset, and_true]
  exact piece_1548_mem

theorem linked_8530 : Linked cell_8530 pieces := by
  apply Linked.of_piece piece_836 piece_836_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8530, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1547_mem, piece_1548_mem⟩

theorem linked_8531 : Linked cell_8531 pieces := by
  apply Linked.of_piece piece_836 piece_836_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8531, List.cons_subset, List.nil_subset, and_true]
  exact piece_1547_mem

theorem linked_8532 : Linked cell_8532 pieces := by
  apply Linked.of_piece piece_836 piece_836_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8532, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1546_mem, piece_1547_mem⟩

theorem linked_8533 : Linked cell_8533 pieces := by
  apply Linked.of_piece piece_836 piece_836_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8533, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1545_mem, piece_1546_mem⟩

theorem linked_8534 : Linked cell_8534 pieces := by
  apply Linked.of_piece piece_837 piece_837_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8534, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1547_mem, piece_1548_mem⟩

theorem linked_8535 : Linked cell_8535 pieces := by
  apply Linked.of_piece piece_837 piece_837_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8535, List.cons_subset, List.nil_subset, and_true]
  exact piece_1547_mem

theorem linked_8536 : Linked cell_8536 pieces := by
  apply Linked.of_piece piece_837 piece_837_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8536, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1546_mem, piece_1547_mem⟩

theorem linked_8537 : Linked cell_8537 pieces := by
  apply Linked.of_piece piece_837 piece_837_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8537, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1545_mem, piece_1546_mem⟩

theorem linked_8538 : Linked cell_8538 pieces := by
  apply Linked.of_piece piece_837 piece_837_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8538, List.cons_subset, List.nil_subset, and_true]
  exact piece_1545_mem

theorem linked_8539 : Linked cell_8539 pieces := by
  apply Linked.of_piece piece_837 piece_837_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8539, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1544_mem, piece_1545_mem⟩

theorem linked_8540 : Linked cell_8540 pieces := by
  apply Linked.of_piece piece_837 piece_837_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8540, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1543_mem, piece_1544_mem⟩

theorem linked_8541 : Linked cell_8541 pieces := by
  apply Linked.of_piece piece_837 piece_837_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8541, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1542_mem, piece_1543_mem⟩

theorem linked_8542 : Linked cell_8542 pieces := by
  apply Linked.of_piece piece_838 piece_838_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8542, List.cons_subset, List.nil_subset, and_true]
  exact piece_1545_mem

theorem linked_8543 : Linked cell_8543 pieces := by
  apply Linked.of_piece piece_838 piece_838_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8543, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1544_mem, piece_1545_mem⟩

theorem linked_8544 : Linked cell_8544 pieces := by
  apply Linked.of_piece piece_838 piece_838_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8544, List.cons_subset, List.nil_subset, and_true]
  exact piece_1544_mem

theorem linked_8545 : Linked cell_8545 pieces := by
  apply Linked.of_piece piece_838 piece_838_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8545, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1542_mem, ⟨piece_1543_mem, piece_1544_mem⟩⟩

theorem linked_8546 : Linked cell_8546 pieces := by
  apply Linked.of_piece piece_838 piece_838_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8546, List.cons_subset, List.nil_subset, and_true]
  exact piece_1542_mem

theorem linked_8547 : Linked cell_8547 pieces := by
  apply Linked.of_piece piece_838 piece_838_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8547, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1541_mem, piece_1542_mem⟩

theorem linked_8548 : Linked cell_8548 pieces := by
  apply Linked.of_piece piece_838 piece_838_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8548, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1540_mem, piece_1541_mem⟩

theorem linked_8549 : Linked cell_8549 pieces := by
  apply Linked.of_piece piece_838 piece_838_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8549, List.cons_subset, List.nil_subset, and_true]
  exact piece_1540_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0170.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0170.cells,List.forall_mem_cons]
  exact ⟨linked_8500, linked_8501, linked_8502, linked_8503, linked_8504, linked_8505, linked_8506, linked_8507, linked_8508, linked_8509, linked_8510, linked_8511, linked_8512, linked_8513, linked_8514, linked_8515, linked_8516, linked_8517, linked_8518, linked_8519, linked_8520, linked_8521, linked_8522, linked_8523, linked_8524, linked_8525, linked_8526, linked_8527, linked_8528, linked_8529, linked_8530, linked_8531, linked_8532, linked_8533, linked_8534, linked_8535, linked_8536, linked_8537, linked_8538, linked_8539, linked_8540, linked_8541, linked_8542, linked_8543, linked_8544, linked_8545, linked_8546, linked_8547, linked_8548, linked_8549, by simp⟩

theorem covered : covers (67281284916201117 / 200000000000000000 : ℚ) (16975000000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0170.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0170
