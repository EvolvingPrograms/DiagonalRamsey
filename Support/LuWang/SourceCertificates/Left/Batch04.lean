import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData
import Support.LuWang.SourceCertificateAssembly

/-! Independent left-certificate batch: original chunks 0192–0203. -/

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0192
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(40531250000000003 / 100000000000000000 : ℚ), (40537500000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (13865274897557 / 20000000000000 : ℚ)
  w := (3921912458873 / 2500000000000 : ℚ)
  center := (40534375000000003 / 100000000000000000 : ℚ)
  supportValue := (1346603160240711 / 2500000000000000 : ℚ)
  supportSlope := (-15839148673055803 / 5000000000000000 : ℚ)
  oldCenter := (1346603160240711 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_983
  oldLo := (53700000000000003 / 100000000000000000 : ℚ)
  oldHi := (26874999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1270]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9600 : Cell := { cellDefaults with
  r := (69371228333857 / 100000000000000 : ℚ)
  w := (1569417705187 / 1000000000000 : ℚ)
  newCoefficients := coefficients_982
  oldLo := (26924999999999999 / 50000000000000000 : ℚ)
  oldHi := (53900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1273]
}

def cell_9601 : Cell := { cellDefaults with
  domain := ⟨(40537500000000003 / 100000000000000000 : ℚ), (40543750000000003 / 100000000000000000 : ℚ)⟩
  r := (69371228333857 / 100000000000000 : ℚ)
  w := (1569417705187 / 1000000000000 : ℚ)
  center := (40540625000000003 / 100000000000000000 : ℚ)
  supportValue := (538443322287549 / 1000000000000000 : ℚ)
  supportSlope := (-15832085737681467 / 5000000000000000 : ℚ)
  oldCenter := (538443322287549 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_982
  oldLo := (53800000000000003 / 100000000000000000 : ℚ)
  oldHi := (53900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1272, piece_1273]
}

def cell_9602 : Cell := { cellDefaults with
  domain := ⟨(40543750000000003 / 100000000000000000 : ℚ), (40550000000000003 / 100000000000000000 : ℚ)⟩
  r := (69371228333857 / 100000000000000 : ℚ)
  w := (1569417705187 / 1000000000000 : ℚ)
  center := (40546875000000003 / 100000000000000000 : ℚ)
  supportValue := (215298188481999 / 400000000000000 : ℚ)
  supportSlope := (-31647049737202337 / 10000000000000000 : ℚ)
  oldCenter := (215298188481999 / 400000000000000 : ℚ)
  newCoefficients := coefficients_982
  oldLo := (53800000000000003 / 100000000000000000 : ℚ)
  oldHi := (26924999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1272]
}

def cell_9603 : Cell := { cellDefaults with
  domain := ⟨(40550000000000003 / 100000000000000000 : ℚ), (40556250000000003 / 100000000000000000 : ℚ)⟩
  center := (40553125000000003 / 100000000000000000 : ℚ)
  supportValue := (5388666516179073 / 10000000000000000 : ℚ)
  supportSlope := (-31678297018764567 / 10000000000000000 : ℚ)
  oldCenter := (5388666516179073 / 10000000000000000 : ℚ)
  oldLo := (26924999999999999 / 50000000000000000 : ℚ)
  oldHi := (53900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1273]
}

def cell_9604 : Cell := { cellDefaults with
  domain := ⟨(40556250000000003 / 100000000000000000 : ℚ), (40562500000000003 / 100000000000000000 : ℚ)⟩
  center := (40559375000000003 / 100000000000000000 : ℚ)
  supportValue := (107733743827591 / 200000000000000 : ℚ)
  supportSlope := (-6332016487334613 / 2000000000000000 : ℚ)
  oldCenter := (107733743827591 / 200000000000000 : ℚ)
  oldLo := (26924999999999999 / 50000000000000000 : ℚ)
  oldHi := (53900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1273]
}

def cell_9605 : Cell := { cellDefaults with
  domain := ⟨(40562500000000003 / 100000000000000000 : ℚ), (40568750000000003 / 100000000000000000 : ℚ)⟩
  center := (40565625000000003 / 100000000000000000 : ℚ)
  supportValue := (5384708956183641 / 10000000000000000 : ℚ)
  supportSlope := (-3164526018316849 / 1000000000000000 : ℚ)
  oldCenter := (5384708956183641 / 10000000000000000 : ℚ)
  oldLo := (53800000000000003 / 100000000000000000 : ℚ)
  oldHi := (53900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1272, piece_1273]
}

def cell_9606 : Cell := { cellDefaults with
  domain := ⟨(40568750000000003 / 100000000000000000 : ℚ), (40575000000000003 / 100000000000000000 : ℚ)⟩
  center := (40571875000000003 / 100000000000000000 : ℚ)
  supportValue := (5382731580998443 / 10000000000000000 : ℚ)
  supportSlope := (-31628894222919257 / 10000000000000000 : ℚ)
  oldCenter := (5382731580998443 / 10000000000000000 : ℚ)
  oldLo := (53800000000000003 / 100000000000000000 : ℚ)
  oldHi := (26924999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1272]
}

def cell_9607 : Cell := { cellDefaults with
  domain := ⟨(40575000000000003 / 100000000000000000 : ℚ), (40581250000000003 / 100000000000000000 : ℚ)⟩
  center := (40578125000000003 / 100000000000000000 : ℚ)
  supportValue := (1345188835728793 / 2500000000000000 : ℚ)
  supportSlope := (-3161132951998269 / 1000000000000000 : ℚ)
  oldCenter := (1345188835728793 / 2500000000000000 : ℚ)
  oldLo := (26874999999999999 / 50000000000000000 : ℚ)
  oldHi := (26924999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1271, piece_1272]
}

def cell_9608 : Cell := { cellDefaults with
  domain := ⟨(40581250000000003 / 100000000000000000 : ℚ), (40587500000000003 / 100000000000000000 : ℚ)⟩
  center := (40584375000000003 / 100000000000000000 : ℚ)
  supportValue := (5378780038976033 / 10000000000000000 : ℚ)
  supportSlope := (-31597755240149183 / 10000000000000000 : ℚ)
  oldCenter := (5378780038976033 / 10000000000000000 : ℚ)
  oldLo := (26874999999999999 / 50000000000000000 : ℚ)
  oldHi := (53800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1271]
}

def cell_9609 : Cell := { cellDefaults with
  domain := ⟨(40587500000000003 / 100000000000000000 : ℚ), (40593750000000003 / 100000000000000000 : ℚ)⟩
  center := (40590625000000003 / 100000000000000000 : ℚ)
  supportValue := (8602889194983 / 16000000000000 : ℚ)
  supportSlope := (-31579578256639707 / 10000000000000000 : ℚ)
  oldCenter := (8602889194983 / 16000000000000 : ℚ)
  oldLo := (26874999999999999 / 50000000000000000 : ℚ)
  oldHi := (53800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1271]
}

def cell_9610 : Cell := { cellDefaults with
  domain := ⟨(40593750000000003 / 100000000000000000 : ℚ), (40600000000000003 / 100000000000000000 : ℚ)⟩
  center := (40596875000000003 / 100000000000000000 : ℚ)
  supportValue := (1074966512425069 / 2000000000000000 : ℚ)
  supportSlope := (-1578224377929871 / 500000000000000 : ℚ)
  oldCenter := (1074966512425069 / 2000000000000000 : ℚ)
  oldHi := (53800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1270, piece_1271]
}

def cell_9611 : Cell := { cellDefaults with
  domain := ⟨(40600000000000003 / 100000000000000000 : ℚ), (40606250000000003 / 100000000000000000 : ℚ)⟩
  r := (6928158485561 / 10000000000000 : ℚ)
  w := (7840568070989 / 5000000000000 : ℚ)
  center := (40603125000000003 / 100000000000000000 : ℚ)
  supportValue := (538102900869833 / 1000000000000000 : ℚ)
  supportSlope := (-15796265162890677 / 5000000000000000 : ℚ)
  oldCenter := (538102900869833 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_984
  oldLo := (53800000000000003 / 100000000000000000 : ℚ)
  oldHi := (26924999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1272]
}

def cell_9612 : Cell := { cellDefaults with
  domain := ⟨(40606250000000003 / 100000000000000000 : ℚ), (40612500000000003 / 100000000000000000 : ℚ)⟩
  r := (6928158485561 / 10000000000000 : ℚ)
  w := (7840568070989 / 5000000000000 : ℚ)
  center := (40609375000000003 / 100000000000000000 : ℚ)
  supportValue := (5379054885419711 / 10000000000000000 : ℚ)
  supportSlope := (-31579499102178943 / 10000000000000000 : ℚ)
  oldCenter := (5379054885419711 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_984
  oldLo := (26874999999999999 / 50000000000000000 : ℚ)
  oldHi := (26924999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1271, piece_1272]
}

def cell_9613 : Cell := { cellDefaults with
  domain := ⟨(40612500000000003 / 100000000000000000 : ℚ), (40618750000000003 / 100000000000000000 : ℚ)⟩
  r := (6928158485561 / 10000000000000 : ℚ)
  w := (7840568070989 / 5000000000000 : ℚ)
  center := (40615625000000003 / 100000000000000000 : ℚ)
  supportValue := (107541634534673 / 200000000000000 : ℚ)
  supportSlope := (-31561458162130407 / 10000000000000000 : ℚ)
  oldCenter := (107541634534673 / 200000000000000 : ℚ)
  newCoefficients := coefficients_984
  oldLo := (26874999999999999 / 50000000000000000 : ℚ)
  oldHi := (53800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1271]
}

def cell_9614 : Cell := { cellDefaults with
  domain := ⟨(40618750000000003 / 100000000000000000 : ℚ), (40625000000000003 / 100000000000000000 : ℚ)⟩
  r := (6928158485561 / 10000000000000 : ℚ)
  w := (7840568070989 / 5000000000000 : ℚ)
  center := (40621875000000003 / 100000000000000000 : ℚ)
  supportValue := (5375109701662003 / 10000000000000000 : ℚ)
  supportSlope := (-3154566047442131 / 1000000000000000 : ℚ)
  oldCenter := (5375109701662003 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_984
  oldHi := (53800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1270, piece_1271]
}

def cell_9615 : Cell := { cellDefaults with
  domain := ⟨(40625000000000003 / 100000000000000000 : ℚ), (40631250000000003 / 100000000000000000 : ℚ)⟩
  r := (6928158485561 / 10000000000000 : ℚ)
  w := (7840568070989 / 5000000000000 : ℚ)
  center := (40628125000000003 / 100000000000000000 : ℚ)
  supportValue := (167910578130419 / 312500000000000 : ℚ)
  supportSlope := (-3153043550412349 / 1000000000000000 : ℚ)
  oldCenter := (167910578130419 / 312500000000000 : ℚ)
  newCoefficients := coefficients_984
  oldPieces := [piece_1270]
}

def cell_9616 : Cell := { cellDefaults with
  domain := ⟨(40631250000000003 / 100000000000000000 : ℚ), (40637500000000003 / 100000000000000000 : ℚ)⟩
  r := (6928158485561 / 10000000000000 : ℚ)
  w := (7840568070989 / 5000000000000 : ℚ)
  center := (40634375000000003 / 100000000000000000 : ℚ)
  supportValue := (167849012928141 / 312500000000000 : ℚ)
  supportSlope := (-6302463515794443 / 2000000000000000 : ℚ)
  oldCenter := (167849012928141 / 312500000000000 : ℚ)
  newCoefficients := coefficients_984
  oldPieces := [piece_1270]
}

def cell_9617 : Cell := { cellDefaults with
  domain := ⟨(40637500000000003 / 100000000000000000 : ℚ), (40643750000000003 / 100000000000000000 : ℚ)⟩
  r := (6928158485561 / 10000000000000 : ℚ)
  w := (7840568070989 / 5000000000000 : ℚ)
  center := (40640625000000003 / 100000000000000000 : ℚ)
  supportValue := (5369199325342209 / 10000000000000000 : ℚ)
  supportSlope := (-1574948748290339 / 500000000000000 : ℚ)
  oldCenter := (5369199325342209 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_984
  oldLo := (26824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1269, piece_1270]
}

def cell_9618 : Cell := { cellDefaults with
  domain := ⟨(40643750000000003 / 100000000000000000 : ℚ), (40650000000000003 / 100000000000000000 : ℚ)⟩
  r := (6928158485561 / 10000000000000 : ℚ)
  w := (7840568070989 / 5000000000000 : ℚ)
  center := (40646875000000003 / 100000000000000000 : ℚ)
  supportValue := (2683615587219331 / 5000000000000000 : ℚ)
  supportSlope := (-7870338416555711 / 2500000000000000 : ℚ)
  oldCenter := (2683615587219331 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_984
  oldLo := (26824999999999999 / 50000000000000000 : ℚ)
  oldHi := (53700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1269]
}

def cell_9619 : Cell := { cellDefaults with
  domain := ⟨(40650000000000003 / 100000000000000000 : ℚ), (40656250000000003 / 100000000000000000 : ℚ)⟩
  r := (2769474300389 / 4000000000000 : ℚ)
  w := (15674637262571 / 10000000000000 : ℚ)
  center := (40653125000000003 / 100000000000000000 : ℚ)
  supportValue := (5373412207040839 / 10000000000000000 : ℚ)
  supportSlope := (-31512318631463643 / 10000000000000000 : ℚ)
  oldCenter := (5373412207040839 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_985
  oldPieces := [piece_1270]
}

def cell_9620 : Cell := { cellDefaults with
  domain := ⟨(40656250000000003 / 100000000000000000 : ℚ), (40662500000000003 / 100000000000000000 : ℚ)⟩
  r := (2769474300389 / 4000000000000 : ℚ)
  w := (15674637262571 / 10000000000000 : ℚ)
  center := (40659375000000003 / 100000000000000000 : ℚ)
  supportValue := (2685721625976919 / 5000000000000000 : ℚ)
  supportSlope := (-31494230103632503 / 10000000000000000 : ℚ)
  oldCenter := (2685721625976919 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_985
  oldPieces := [piece_1270]
}

def cell_9621 : Cell := { cellDefaults with
  domain := ⟨(40662500000000003 / 100000000000000000 : ℚ), (40668750000000003 / 100000000000000000 : ℚ)⟩
  r := (2769474300389 / 4000000000000 : ℚ)
  w := (15674637262571 / 10000000000000 : ℚ)
  center := (40665625000000003 / 100000000000000000 : ℚ)
  supportValue := (5369475339095157 / 10000000000000000 : ℚ)
  supportSlope := (-1259207277503549 / 400000000000000 : ℚ)
  oldCenter := (5369475339095157 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_985
  oldLo := (26824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1269, piece_1270]
}

def cell_9622 : Cell := { cellDefaults with
  domain := ⟨(40668750000000003 / 100000000000000000 : ℚ), (40675000000000003 / 100000000000000000 : ℚ)⟩
  r := (2769474300389 / 4000000000000 : ℚ)
  w := (15674637262571 / 10000000000000 : ℚ)
  center := (40671875000000003 / 100000000000000000 : ℚ)
  supportValue := (5367508315871683 / 10000000000000000 : ℚ)
  supportSlope := (-7865831363966791 / 2500000000000000 : ℚ)
  oldCenter := (5367508315871683 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_985
  oldLo := (26824999999999999 / 50000000000000000 : ℚ)
  oldHi := (53700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1269]
}

def cell_9623 : Cell := { cellDefaults with
  domain := ⟨(40675000000000003 / 100000000000000000 : ℚ), (40681250000000003 / 100000000000000000 : ℚ)⟩
  r := (2769474300389 / 4000000000000 : ℚ)
  w := (15674637262571 / 10000000000000 : ℚ)
  center := (40678125000000003 / 100000000000000000 : ℚ)
  supportValue := (5365542421929943 / 10000000000000000 : ℚ)
  supportSlope := (-3144644896270421 / 1000000000000000 : ℚ)
  oldCenter := (5365542421929943 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_985
  oldLo := (53600000000000003 / 100000000000000000 : ℚ)
  oldHi := (53700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1268, piece_1269]
}

def cell_9624 : Cell := { cellDefaults with
  domain := ⟨(40681250000000003 / 100000000000000000 : ℚ), (40687500000000003 / 100000000000000000 : ℚ)⟩
  r := (2769474300389 / 4000000000000 : ℚ)
  w := (15674637262571 / 10000000000000 : ℚ)
  center := (40684375000000003 / 100000000000000000 : ℚ)
  supportValue := (1340894354532887 / 2500000000000000 : ℚ)
  supportSlope := (-3929058644454031 / 1250000000000000 : ℚ)
  oldCenter := (1340894354532887 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_985
  oldLo := (53600000000000003 / 100000000000000000 : ℚ)
  oldHi := (26824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1268]
}

def cell_9625 : Cell := { cellDefaults with
  domain := ⟨(40687500000000003 / 100000000000000000 : ℚ), (40693750000000003 / 100000000000000000 : ℚ)⟩
  r := (2769474300389 / 4000000000000 : ℚ)
  w := (15674637262571 / 10000000000000 : ℚ)
  center := (40690625000000003 / 100000000000000000 : ℚ)
  supportValue := (214464538095413 / 400000000000000 : ℚ)
  supportSlope := (-628288414478817 / 200000000000000 : ℚ)
  oldCenter := (214464538095413 / 400000000000000 : ℚ)
  newCoefficients := coefficients_985
  oldLo := (53600000000000003 / 100000000000000000 : ℚ)
  oldHi := (26824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1268]
}

def cell_9626 : Cell := { cellDefaults with
  domain := ⟨(40693750000000003 / 100000000000000000 : ℚ), (40700000000000003 / 100000000000000000 : ℚ)⟩
  r := (2769474300389 / 4000000000000 : ℚ)
  w := (15674637262571 / 10000000000000 : ℚ)
  center := (40696875000000003 / 100000000000000000 : ℚ)
  supportValue := (5359650555124413 / 10000000000000000 : ℚ)
  supportSlope := (-6279993172412901 / 2000000000000000 : ℚ)
  oldCenter := (5359650555124413 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_985
  oldLo := (26774999999999999 / 50000000000000000 : ℚ)
  oldHi := (26824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1267, piece_1268]
}

def cell_9627 : Cell := { cellDefaults with
  domain := ⟨(40700000000000003 / 100000000000000000 : ℚ), (40706250000000003 / 100000000000000000 : ℚ)⟩
  r := (34596097884117 / 50000000000000 : ℚ)
  w := (15668151830931 / 10000000000000 : ℚ)
  center := (40703125000000003 / 100000000000000000 : ℚ)
  supportValue := (268290807685479 / 500000000000000 : ℚ)
  supportSlope := (-3142766043957579 / 1000000000000000 : ℚ)
  oldCenter := (268290807685479 / 500000000000000 : ℚ)
  newCoefficients := coefficients_986
  oldLo := (53600000000000003 / 100000000000000000 : ℚ)
  oldHi := (53700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1268, piece_1269]
}

def cell_9628 : Cell := { cellDefaults with
  domain := ⟨(40706250000000003 / 100000000000000000 : ℚ), (40712500000000003 / 100000000000000000 : ℚ)⟩
  r := (34596097884117 / 50000000000000 : ℚ)
  w := (15668151830931 / 10000000000000 : ℚ)
  center := (40709375000000003 / 100000000000000000 : ℚ)
  supportValue := (2681926161630343 / 5000000000000000 : ℚ)
  supportSlope := (-628288890884221 / 200000000000000 : ℚ)
  oldCenter := (2681926161630343 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_986
  oldLo := (53600000000000003 / 100000000000000000 : ℚ)
  oldHi := (26824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1268]
}

def cell_9629 : Cell := { cellDefaults with
  domain := ⟨(40712500000000003 / 100000000000000000 : ℚ), (40718750000000003 / 100000000000000000 : ℚ)⟩
  r := (34596097884117 / 50000000000000 : ℚ)
  w := (15668151830931 / 10000000000000 : ℚ)
  center := (40715625000000003 / 100000000000000000 : ℚ)
  supportValue := (1072377896627359 / 2000000000000000 : ℚ)
  supportSlope := (-156982127107419 / 50000000000000 : ℚ)
  oldCenter := (1072377896627359 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_986
  oldLo := (53600000000000003 / 100000000000000000 : ℚ)
  oldHi := (26824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1268]
}

def cell_9630 : Cell := { cellDefaults with
  domain := ⟨(40718750000000003 / 100000000000000000 : ℚ), (40725000000000003 / 100000000000000000 : ℚ)⟩
  r := (34596097884117 / 50000000000000 : ℚ)
  w := (15668151830931 / 10000000000000 : ℚ)
  center := (40721875000000003 / 100000000000000000 : ℚ)
  supportValue := (5359927756200547 / 10000000000000000 : ℚ)
  supportSlope := (-1569062779482877 / 500000000000000 : ℚ)
  oldCenter := (5359927756200547 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_986
  oldLo := (26774999999999999 / 50000000000000000 : ℚ)
  oldHi := (26824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1267, piece_1268]
}

def cell_9631 : Cell := { cellDefaults with
  domain := ⟨(40725000000000003 / 100000000000000000 : ℚ), (40731250000000003 / 100000000000000000 : ℚ)⟩
  r := (34596097884117 / 50000000000000 : ℚ)
  w := (15668151830931 / 10000000000000 : ℚ)
  center := (40728125000000003 / 100000000000000000 : ℚ)
  supportValue := (2678983418777399 / 5000000000000000 : ℚ)
  supportSlope := (-392071086924517 / 125000000000000 : ℚ)
  oldCenter := (2678983418777399 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_986
  oldLo := (26774999999999999 / 50000000000000000 : ℚ)
  oldHi := (53600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1267]
}

def cell_9632 : Cell := { cellDefaults with
  domain := ⟨(40731250000000003 / 100000000000000000 : ℚ), (40737500000000003 / 100000000000000000 : ℚ)⟩
  r := (34596097884117 / 50000000000000 : ℚ)
  w := (15668151830931 / 10000000000000 : ℚ)
  center := (40734375000000003 / 100000000000000000 : ℚ)
  supportValue := (1339001760963067 / 2500000000000000 : ℚ)
  supportSlope := (-31347697553343323 / 10000000000000000 : ℚ)
  oldCenter := (1339001760963067 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_986
  oldLo := (26774999999999999 / 50000000000000000 : ℚ)
  oldHi := (53600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1267]
}

def cell_9633 : Cell := { cellDefaults with
  domain := ⟨(40737500000000003 / 100000000000000000 : ℚ), (40743750000000003 / 100000000000000000 : ℚ)⟩
  r := (34596097884117 / 50000000000000 : ℚ)
  w := (15668151830931 / 10000000000000 : ℚ)
  center := (40740625000000003 / 100000000000000000 : ℚ)
  supportValue := (2677024106680761 / 5000000000000000 : ℚ)
  supportSlope := (-3916866031907773 / 1250000000000000 : ℚ)
  oldCenter := (2677024106680761 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_986
  oldLo := (53500000000000003 / 100000000000000000 : ℚ)
  oldHi := (53600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1265, piece_1266, piece_1267]
}

def cell_9634 : Cell := { cellDefaults with
  domain := ⟨(40743750000000003 / 100000000000000000 : ℚ), (40750000000000003 / 100000000000000000 : ℚ)⟩
  r := (34596097884117 / 50000000000000 : ℚ)
  w := (15668151830931 / 10000000000000 : ℚ)
  center := (40746875000000003 / 100000000000000000 : ℚ)
  supportValue := (5352090337308869 / 10000000000000000 : ℚ)
  supportSlope := (-31317020287247033 / 10000000000000000 : ℚ)
  oldCenter := (5352090337308869 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_986
  oldLo := (53500000000000003 / 100000000000000000 : ℚ)
  oldHi := (2677094972067039 / 5000000000000000 : ℚ)
  oldPieces := [piece_1265]
}

def cell_9635 : Cell := { cellDefaults with
  domain := ⟨(40750000000000003 / 100000000000000000 : ℚ), (40756250000000003 / 100000000000000000 : ℚ)⟩
  r := (34573798318477 / 50000000000000 : ℚ)
  w := (7830840351529 / 5000000000000 : ℚ)
  center := (40753125000000003 / 100000000000000000 : ℚ)
  supportValue := (535824067836043 / 1000000000000000 : ℚ)
  supportSlope := (-3918461866532219 / 1250000000000000 : ℚ)
  oldCenter := (535824067836043 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_987
  oldLo := (26774999999999999 / 50000000000000000 : ℚ)
  oldHi := (53600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1267]
}

def cell_9636 : Cell := { cellDefaults with
  domain := ⟨(40756250000000003 / 100000000000000000 : ℚ), (40762500000000003 / 100000000000000000 : ℚ)⟩
  r := (34573798318477 / 50000000000000 : ℚ)
  w := (7830840351529 / 5000000000000 : ℚ)
  center := (40759375000000003 / 100000000000000000 : ℚ)
  supportValue := (535628200824633 / 1000000000000000 : ℚ)
  supportSlope := (-391621684326271 / 125000000000000 : ℚ)
  oldCenter := (535628200824633 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_987
  oldLo := (26774999999999999 / 50000000000000000 : ℚ)
  oldHi := (53600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1267]
}

def cell_9637 : Cell := { cellDefaults with
  domain := ⟨(40762500000000003 / 100000000000000000 : ℚ), (40768750000000003 / 100000000000000000 : ℚ)⟩
  r := (34573798318477 / 50000000000000 : ℚ)
  w := (7830840351529 / 5000000000000 : ℚ)
  center := (40765625000000003 / 100000000000000000 : ℚ)
  supportValue := (1338581086495399 / 2500000000000000 : ℚ)
  supportSlope := (-31316251330082423 / 10000000000000000 : ℚ)
  oldCenter := (1338581086495399 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_987
  oldLo := (53500000000000003 / 100000000000000000 : ℚ)
  oldHi := (53600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1265, piece_1266, piece_1267]
}

def cell_9638 : Cell := { cellDefaults with
  domain := ⟨(40768750000000003 / 100000000000000000 : ℚ), (40775000000000003 / 100000000000000000 : ℚ)⟩
  r := (34573798318477 / 50000000000000 : ℚ)
  w := (7830840351529 / 5000000000000 : ℚ)
  center := (40771875000000003 / 100000000000000000 : ℚ)
  supportValue := (167261487182683 / 312500000000000 : ℚ)
  supportSlope := (-31299116379095437 / 10000000000000000 : ℚ)
  oldCenter := (167261487182683 / 312500000000000 : ℚ)
  newCoefficients := coefficients_987
  oldLo := (53500000000000003 / 100000000000000000 : ℚ)
  oldHi := (2677094972067039 / 5000000000000000 : ℚ)
  oldPieces := [piece_1265]
}

def cell_9639 : Cell := { cellDefaults with
  domain := ⟨(40775000000000003 / 100000000000000000 : ℚ), (40781250000000003 / 100000000000000000 : ℚ)⟩
  r := (34573798318477 / 50000000000000 : ℚ)
  w := (7830840351529 / 5000000000000 : ℚ)
  center := (40778125000000003 / 100000000000000000 : ℚ)
  supportValue := (41800093398203 / 78125000000000 : ℚ)
  supportSlope := (-1564135976144243 / 500000000000000 : ℚ)
  oldCenter := (41800093398203 / 78125000000000 : ℚ)
  newCoefficients := coefficients_987
  oldLo := (26724999999999999 / 50000000000000000 : ℚ)
  oldHi := (2677094972067039 / 5000000000000000 : ℚ)
  oldPieces := [piece_1264, piece_1265]
}

def cell_9640 : Cell := { cellDefaults with
  domain := ⟨(40781250000000003 / 100000000000000000 : ℚ), (40787500000000003 / 100000000000000000 : ℚ)⟩
  r := (34573798318477 / 50000000000000 : ℚ)
  w := (7830840351529 / 5000000000000 : ℚ)
  center := (40784375000000003 / 100000000000000000 : ℚ)
  supportValue := (5348457179416493 / 10000000000000000 : ℚ)
  supportSlope := (-1563427168600029 / 500000000000000 : ℚ)
  oldCenter := (5348457179416493 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_987
  oldLo := (26724999999999999 / 50000000000000000 : ℚ)
  oldHi := (53500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1264]
}

def cell_9641 : Cell := { cellDefaults with
  domain := ⟨(40787500000000003 / 100000000000000000 : ℚ), (40793750000000003 / 100000000000000000 : ℚ)⟩
  r := (34573798318477 / 50000000000000 : ℚ)
  w := (7830840351529 / 5000000000000 : ℚ)
  center := (40790625000000003 / 100000000000000000 : ℚ)
  supportValue := (5346503455029347 / 10000000000000000 : ℚ)
  supportSlope := (-3125062309244697 / 1000000000000000 : ℚ)
  oldCenter := (5346503455029347 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_987
  oldLo := (26724999999999999 / 50000000000000000 : ℚ)
  oldHi := (53500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1264]
}

def cell_9642 : Cell := { cellDefaults with
  domain := ⟨(40793750000000003 / 100000000000000000 : ℚ), (40800000000000003 / 100000000000000000 : ℚ)⟩
  r := (34573798318477 / 50000000000000 : ℚ)
  w := (7830840351529 / 5000000000000 : ℚ)
  center := (40796875000000003 / 100000000000000000 : ℚ)
  supportValue := (1336137693393897 / 2500000000000000 : ℚ)
  supportSlope := (-97614345355157 / 31250000000000 : ℚ)
  oldCenter := (1336137693393897 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_987
  oldLo := (53400000000000003 / 100000000000000000 : ℚ)
  oldHi := (53500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1263, piece_1264]
}

def cell_9643 : Cell := { cellDefaults with
  domain := ⟨(40800000000000003 / 100000000000000000 : ℚ), (81621229050279333 / 200000000000000000 : ℚ)⟩
  r := (69103060707877 / 100000000000000 : ℚ)
  w := (15655223237439 / 10000000000000 : ℚ)
  center := (163221229050279339 / 400000000000000000 : ℚ)
  supportValue := (5350007543566763 / 10000000000000000 : ℚ)
  supportSlope := (-3125964837465381 / 1000000000000000 : ℚ)
  oldCenter := (5350007543566763 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_988
  oldLo := (26724999999999999 / 50000000000000000 : ℚ)
  oldHi := (2677094972067039 / 5000000000000000 : ℚ)
  oldPieces := [piece_1264, piece_1265]
}

def cell_9644 : Cell := { cellDefaults with
  domain := ⟨(81621229050279333 / 200000000000000000 : ℚ), (4082122905027933 / 10000000000000000 : ℚ)⟩
  r := (69103060707877 / 100000000000000 : ℚ)
  w := (15655223237439 / 10000000000000 : ℚ)
  center := (163263687150837993 / 400000000000000000 : ℚ)
  supportValue := (1336672702430401 / 2500000000000000 : ℚ)
  supportSlope := (-7807976205002879 / 2500000000000000 : ℚ)
  oldCenter := (1336672702430401 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_988
  oldLo := (26724999999999999 / 50000000000000000 : ℚ)
  oldHi := (53500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1264]
}

def cell_9645 : Cell := { cellDefaults with
  domain := ⟨(4082122905027933 / 10000000000000000 : ℚ), (40825000000000003 / 100000000000000000 : ℚ)⟩
  r := (69103060707877 / 100000000000000 : ℚ)
  w := (15655223237439 / 10000000000000 : ℚ)
  center := (81646229050279333 / 200000000000000000 : ℚ)
  supportValue := (5344440213533989 / 10000000000000000 : ℚ)
  supportSlope := (-1951031132996327 / 625000000000000 : ℚ)
  oldCenter := (5344440213533989 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_989
  oldLo := (53400000000000003 / 100000000000000000 : ℚ)
  oldHi := (53500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1263, piece_1264]
}

def cell_9646 : Cell := { cellDefaults with
  domain := ⟨(40825000000000003 / 100000000000000000 : ℚ), (40831250000000003 / 100000000000000000 : ℚ)⟩
  r := (69103060707877 / 100000000000000 : ℚ)
  w := (15655223237439 / 10000000000000 : ℚ)
  center := (40828125000000003 / 100000000000000000 : ℚ)
  supportValue := (66785969249321 / 125000000000000 : ℚ)
  supportSlope := (-15601145999468713 / 5000000000000000 : ℚ)
  oldCenter := (66785969249321 / 125000000000000 : ℚ)
  newCoefficients := coefficients_989
  oldLo := (53400000000000003 / 100000000000000000 : ℚ)
  oldHi := (26724999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1263]
}

def cell_9647 : Cell := { cellDefaults with
  domain := ⟨(40831250000000003 / 100000000000000000 : ℚ), (40837500000000003 / 100000000000000000 : ℚ)⟩
  r := (69103060707877 / 100000000000000 : ℚ)
  w := (15655223237439 / 10000000000000 : ℚ)
  center := (40834375000000003 / 100000000000000000 : ℚ)
  supportValue := (667615994309119 / 1250000000000000 : ℚ)
  supportSlope := (-623691202975607 / 200000000000000 : ℚ)
  oldCenter := (667615994309119 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_989
  oldLo := (53349999999999997 / 100000000000000000 : ℚ)
  oldHi := (26724999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1262, piece_1263]
}

def cell_9648 : Cell := { cellDefaults with
  domain := ⟨(40837500000000003 / 100000000000000000 : ℚ), (40843750000000003 / 100000000000000000 : ℚ)⟩
  r := (69103060707877 / 100000000000000 : ℚ)
  w := (15655223237439 / 10000000000000 : ℚ)
  center := (40840625000000003 / 100000000000000000 : ℚ)
  supportValue := (5338979310882609 / 10000000000000000 : ℚ)
  supportSlope := (-31171882480194313 / 10000000000000000 : ℚ)
  oldCenter := (5338979310882609 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_989
  oldLo := (53349999999999997 / 100000000000000000 : ℚ)
  oldHi := (53400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1262]
}

def cell_9649 : Cell := { cellDefaults with
  domain := ⟨(40843750000000003 / 100000000000000000 : ℚ), (40850000000000003 / 100000000000000000 : ℚ)⟩
  r := (69103060707877 / 100000000000000 : ℚ)
  w := (15655223237439 / 10000000000000 : ℚ)
  center := (40846875000000003 / 100000000000000000 : ℚ)
  supportValue := (5337031625732491 / 10000000000000000 : ℚ)
  supportSlope := (-124616113800613 / 40000000000000 : ℚ)
  oldCenter := (5337031625732491 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_989
  oldLo := (53349999999999997 / 100000000000000000 : ℚ)
  oldHi := (53400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1262]
}

theorem check_9600 : cell_9600.check = true := by
  decide +kernel

theorem check_9601 : cell_9601.check = true := by
  decide +kernel

theorem check_9602 : cell_9602.check = true := by
  decide +kernel

theorem check_9603 : cell_9603.check = true := by
  decide +kernel

theorem check_9604 : cell_9604.check = true := by
  decide +kernel

theorem check_9605 : cell_9605.check = true := by
  decide +kernel

theorem check_9606 : cell_9606.check = true := by
  decide +kernel

theorem check_9607 : cell_9607.check = true := by
  decide +kernel

theorem check_9608 : cell_9608.check = true := by
  decide +kernel

theorem check_9609 : cell_9609.check = true := by
  decide +kernel

theorem check_9610 : cell_9610.check = true := by
  decide +kernel

theorem check_9611 : cell_9611.check = true := by
  decide +kernel

theorem check_9612 : cell_9612.check = true := by
  decide +kernel

theorem check_9613 : cell_9613.check = true := by
  decide +kernel

theorem check_9614 : cell_9614.check = true := by
  decide +kernel

theorem check_9615 : cell_9615.check = true := by
  decide +kernel

theorem check_9616 : cell_9616.check = true := by
  decide +kernel

theorem check_9617 : cell_9617.check = true := by
  decide +kernel

theorem check_9618 : cell_9618.check = true := by
  decide +kernel

theorem check_9619 : cell_9619.check = true := by
  decide +kernel

theorem check_9620 : cell_9620.check = true := by
  decide +kernel

theorem check_9621 : cell_9621.check = true := by
  decide +kernel

theorem check_9622 : cell_9622.check = true := by
  decide +kernel

theorem check_9623 : cell_9623.check = true := by
  decide +kernel

theorem check_9624 : cell_9624.check = true := by
  decide +kernel

theorem check_9625 : cell_9625.check = true := by
  decide +kernel

theorem check_9626 : cell_9626.check = true := by
  decide +kernel

theorem check_9627 : cell_9627.check = true := by
  decide +kernel

theorem check_9628 : cell_9628.check = true := by
  decide +kernel

theorem check_9629 : cell_9629.check = true := by
  decide +kernel

theorem check_9630 : cell_9630.check = true := by
  decide +kernel

theorem check_9631 : cell_9631.check = true := by
  decide +kernel

theorem check_9632 : cell_9632.check = true := by
  decide +kernel

theorem check_9633 : cell_9633.check = true := by
  decide +kernel

theorem check_9634 : cell_9634.check = true := by
  decide +kernel

theorem check_9635 : cell_9635.check = true := by
  decide +kernel

theorem check_9636 : cell_9636.check = true := by
  decide +kernel

theorem check_9637 : cell_9637.check = true := by
  decide +kernel

theorem check_9638 : cell_9638.check = true := by
  decide +kernel

theorem check_9639 : cell_9639.check = true := by
  decide +kernel

theorem check_9640 : cell_9640.check = true := by
  decide +kernel

theorem check_9641 : cell_9641.check = true := by
  decide +kernel

theorem check_9642 : cell_9642.check = true := by
  decide +kernel

theorem check_9643 : cell_9643.check = true := by
  decide +kernel

theorem check_9644 : cell_9644.check = true := by
  decide +kernel

theorem check_9645 : cell_9645.check = true := by
  decide +kernel

theorem check_9646 : cell_9646.check = true := by
  decide +kernel

theorem check_9647 : cell_9647.check = true := by
  decide +kernel

theorem check_9648 : cell_9648.check = true := by
  decide +kernel

theorem check_9649 : cell_9649.check = true := by
  decide +kernel

def cells : List Cell := [cell_9600, cell_9601, cell_9602, cell_9603, cell_9604, cell_9605, cell_9606, cell_9607, cell_9608, cell_9609, cell_9610, cell_9611, cell_9612, cell_9613, cell_9614, cell_9615, cell_9616, cell_9617, cell_9618, cell_9619, cell_9620, cell_9621, cell_9622, cell_9623, cell_9624, cell_9625, cell_9626, cell_9627, cell_9628, cell_9629, cell_9630, cell_9631, cell_9632, cell_9633, cell_9634, cell_9635, cell_9636, cell_9637, cell_9638, cell_9639, cell_9640, cell_9641, cell_9642, cell_9643, cell_9644, cell_9645, cell_9646, cell_9647, cell_9648, cell_9649]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9600, check_9601, check_9602, check_9603, check_9604, check_9605, check_9606, check_9607, check_9608, check_9609, check_9610, check_9611, check_9612, check_9613, check_9614, check_9615, check_9616, check_9617, check_9618, check_9619, check_9620, check_9621, check_9622, check_9623, check_9624, check_9625, check_9626, check_9627, check_9628, check_9629, check_9630, check_9631, check_9632, check_9633, check_9634, check_9635, check_9636, check_9637, check_9638, check_9639, check_9640, check_9641, check_9642, check_9643, check_9644, check_9645, check_9646, check_9647, check_9648, check_9649, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0192

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0192
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0192
open AnalyticBounds.ExpressionCertificate

theorem linked_9600 : Linked cell_9600 pieces := by
  link_source cell_9600 with piece_982 using piece_982_mem, piece_1273_mem

theorem linked_9601 : Linked cell_9601 pieces := by
  link_source cell_9601 with piece_982 using piece_982_mem, ⟨piece_1272_mem, piece_1273_mem⟩

theorem linked_9602 : Linked cell_9602 pieces := by
  link_source cell_9602 with piece_982 using piece_982_mem, piece_1272_mem

theorem linked_9603 : Linked cell_9603 pieces := by
  link_source cell_9603 with piece_983 using piece_983_mem, piece_1273_mem

theorem linked_9604 : Linked cell_9604 pieces := by
  link_source cell_9604 with piece_983 using piece_983_mem, piece_1273_mem

theorem linked_9605 : Linked cell_9605 pieces := by
  link_source cell_9605 with piece_983 using piece_983_mem, ⟨piece_1272_mem, piece_1273_mem⟩

theorem linked_9606 : Linked cell_9606 pieces := by
  link_source cell_9606 with piece_983 using piece_983_mem, piece_1272_mem

theorem linked_9607 : Linked cell_9607 pieces := by
  link_source cell_9607 with piece_983 using piece_983_mem, ⟨piece_1271_mem, piece_1272_mem⟩

theorem linked_9608 : Linked cell_9608 pieces := by
  link_source cell_9608 with piece_983 using piece_983_mem, piece_1271_mem

theorem linked_9609 : Linked cell_9609 pieces := by
  link_source cell_9609 with piece_983 using piece_983_mem, piece_1271_mem

theorem linked_9610 : Linked cell_9610 pieces := by
  link_source cell_9610 with piece_983 using piece_983_mem, ⟨piece_1270_mem, piece_1271_mem⟩

theorem linked_9611 : Linked cell_9611 pieces := by
  link_source cell_9611 with piece_984 using piece_984_mem, piece_1272_mem

theorem linked_9612 : Linked cell_9612 pieces := by
  link_source cell_9612 with piece_984 using piece_984_mem, ⟨piece_1271_mem, piece_1272_mem⟩

theorem linked_9613 : Linked cell_9613 pieces := by
  link_source cell_9613 with piece_984 using piece_984_mem, piece_1271_mem

theorem linked_9614 : Linked cell_9614 pieces := by
  link_source cell_9614 with piece_984 using piece_984_mem, ⟨piece_1270_mem, piece_1271_mem⟩

theorem linked_9615 : Linked cell_9615 pieces := by
  link_source cell_9615 with piece_984 using piece_984_mem, piece_1270_mem

theorem linked_9616 : Linked cell_9616 pieces := by
  link_source cell_9616 with piece_984 using piece_984_mem, piece_1270_mem

theorem linked_9617 : Linked cell_9617 pieces := by
  link_source cell_9617 with piece_984 using piece_984_mem, ⟨piece_1269_mem, piece_1270_mem⟩

theorem linked_9618 : Linked cell_9618 pieces := by
  link_source cell_9618 with piece_984 using piece_984_mem, piece_1269_mem

theorem linked_9619 : Linked cell_9619 pieces := by
  link_source cell_9619 with piece_985 using piece_985_mem, piece_1270_mem

theorem linked_9620 : Linked cell_9620 pieces := by
  link_source cell_9620 with piece_985 using piece_985_mem, piece_1270_mem

theorem linked_9621 : Linked cell_9621 pieces := by
  link_source cell_9621 with piece_985 using piece_985_mem, ⟨piece_1269_mem, piece_1270_mem⟩

theorem linked_9622 : Linked cell_9622 pieces := by
  link_source cell_9622 with piece_985 using piece_985_mem, piece_1269_mem

theorem linked_9623 : Linked cell_9623 pieces := by
  link_source cell_9623 with piece_985 using piece_985_mem, ⟨piece_1268_mem, piece_1269_mem⟩

theorem linked_9624 : Linked cell_9624 pieces := by
  link_source cell_9624 with piece_985 using piece_985_mem, piece_1268_mem

theorem linked_9625 : Linked cell_9625 pieces := by
  link_source cell_9625 with piece_985 using piece_985_mem, piece_1268_mem

theorem linked_9626 : Linked cell_9626 pieces := by
  link_source cell_9626 with piece_985 using piece_985_mem, ⟨piece_1267_mem, piece_1268_mem⟩

theorem linked_9627 : Linked cell_9627 pieces := by
  link_source cell_9627 with piece_986 using piece_986_mem, ⟨piece_1268_mem, piece_1269_mem⟩

theorem linked_9628 : Linked cell_9628 pieces := by
  link_source cell_9628 with piece_986 using piece_986_mem, piece_1268_mem

theorem linked_9629 : Linked cell_9629 pieces := by
  link_source cell_9629 with piece_986 using piece_986_mem, piece_1268_mem

theorem linked_9630 : Linked cell_9630 pieces := by
  link_source cell_9630 with piece_986 using piece_986_mem, ⟨piece_1267_mem, piece_1268_mem⟩

theorem linked_9631 : Linked cell_9631 pieces := by
  link_source cell_9631 with piece_986 using piece_986_mem, piece_1267_mem

theorem linked_9632 : Linked cell_9632 pieces := by
  link_source cell_9632 with piece_986 using piece_986_mem, piece_1267_mem

theorem linked_9633 : Linked cell_9633 pieces := by
  link_source cell_9633 with piece_986 using piece_986_mem, ⟨piece_1265_mem, ⟨piece_1266_mem, piece_1267_mem⟩⟩

theorem linked_9634 : Linked cell_9634 pieces := by
  link_source cell_9634 with piece_986 using piece_986_mem, piece_1265_mem

theorem linked_9635 : Linked cell_9635 pieces := by
  link_source cell_9635 with piece_987 using piece_987_mem, piece_1267_mem

theorem linked_9636 : Linked cell_9636 pieces := by
  link_source cell_9636 with piece_987 using piece_987_mem, piece_1267_mem

theorem linked_9637 : Linked cell_9637 pieces := by
  link_source cell_9637 with piece_987 using piece_987_mem, ⟨piece_1265_mem, ⟨piece_1266_mem, piece_1267_mem⟩⟩

theorem linked_9638 : Linked cell_9638 pieces := by
  link_source cell_9638 with piece_987 using piece_987_mem, piece_1265_mem

theorem linked_9639 : Linked cell_9639 pieces := by
  link_source cell_9639 with piece_987 using piece_987_mem, ⟨piece_1264_mem, piece_1265_mem⟩

theorem linked_9640 : Linked cell_9640 pieces := by
  link_source cell_9640 with piece_987 using piece_987_mem, piece_1264_mem

theorem linked_9641 : Linked cell_9641 pieces := by
  link_source cell_9641 with piece_987 using piece_987_mem, piece_1264_mem

theorem linked_9642 : Linked cell_9642 pieces := by
  link_source cell_9642 with piece_987 using piece_987_mem, ⟨piece_1263_mem, piece_1264_mem⟩

theorem linked_9643 : Linked cell_9643 pieces := by
  link_source cell_9643 with piece_988 using piece_988_mem, ⟨piece_1264_mem, piece_1265_mem⟩

theorem linked_9644 : Linked cell_9644 pieces := by
  link_source cell_9644 with piece_988 using piece_988_mem, piece_1264_mem

theorem linked_9645 : Linked cell_9645 pieces := by
  link_source cell_9645 with piece_989 using piece_989_mem, ⟨piece_1263_mem, piece_1264_mem⟩

theorem linked_9646 : Linked cell_9646 pieces := by
  link_source cell_9646 with piece_989 using piece_989_mem, piece_1263_mem

theorem linked_9647 : Linked cell_9647 pieces := by
  link_source cell_9647 with piece_989 using piece_989_mem, ⟨piece_1262_mem, piece_1263_mem⟩

theorem linked_9648 : Linked cell_9648 pieces := by
  link_source cell_9648 with piece_989 using piece_989_mem, piece_1262_mem

theorem linked_9649 : Linked cell_9649 pieces := by
  link_source cell_9649 with piece_989 using piece_989_mem, piece_1262_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0192.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0192.cells,List.forall_mem_cons]
  exact ⟨linked_9600, linked_9601, linked_9602, linked_9603, linked_9604, linked_9605, linked_9606, linked_9607, linked_9608, linked_9609, linked_9610, linked_9611, linked_9612, linked_9613, linked_9614, linked_9615, linked_9616, linked_9617, linked_9618, linked_9619, linked_9620, linked_9621, linked_9622, linked_9623, linked_9624, linked_9625, linked_9626, linked_9627, linked_9628, linked_9629, linked_9630, linked_9631, linked_9632, linked_9633, linked_9634, linked_9635, linked_9636, linked_9637, linked_9638, linked_9639, linked_9640, linked_9641, linked_9642, linked_9643, linked_9644, linked_9645, linked_9646, linked_9647, linked_9648, linked_9649, by simp⟩

theorem covered : covers (40531250000000003 / 100000000000000000 : ℚ) (40850000000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0192.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0192
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0193
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(40850000000000003 / 100000000000000000 : ℚ), (40856250000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (8632323465723 / 12500000000000 : ℚ)
  w := (125190237171 / 80000000000 : ℚ)
  center := (40853125000000003 / 100000000000000000 : ℚ)
  supportValue := (5343151709355343 / 10000000000000000 : ℚ)
  supportSlope := (-1559221286202117 / 500000000000000 : ℚ)
  oldCenter := (5343151709355343 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_990
  oldLo := (53300000000000003 / 100000000000000000 : ℚ)
  oldHi := (53349999999999997 / 100000000000000000 : ℚ)
  oldPieces := [piece_1261]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9650 : Cell := { cellDefaults with
  oldLo := (53400000000000003 / 100000000000000000 : ℚ)
  oldHi := (26724999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1263]
}

def cell_9651 : Cell := { cellDefaults with
  domain := ⟨(40856250000000003 / 100000000000000000 : ℚ), (40862500000000003 / 100000000000000000 : ℚ)⟩
  center := (40859375000000003 / 100000000000000000 : ℚ)
  supportValue := (1335300809903323 / 2500000000000000 : ℚ)
  supportSlope := (-31166592123632597 / 10000000000000000 : ℚ)
  oldCenter := (1335300809903323 / 2500000000000000 : ℚ)
  oldLo := (53400000000000003 / 100000000000000000 : ℚ)
  oldHi := (26724999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1263]
}

def cell_9652 : Cell := { cellDefaults with
  domain := ⟨(40862500000000003 / 100000000000000000 : ℚ), (40868750000000003 / 100000000000000000 : ℚ)⟩
  center := (40865625000000003 / 100000000000000000 : ℚ)
  supportValue := (1067851151384547 / 2000000000000000 : ℚ)
  supportSlope := (-1557672697691359 / 500000000000000 : ℚ)
  oldCenter := (1067851151384547 / 2000000000000000 : ℚ)
  oldLo := (53349999999999997 / 100000000000000000 : ℚ)
  oldHi := (26724999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1262, piece_1263]
}

def cell_9653 : Cell := { cellDefaults with
  domain := ⟨(40868750000000003 / 100000000000000000 : ℚ), (40875000000000003 / 100000000000000000 : ℚ)⟩
  center := (40871875000000003 / 100000000000000000 : ℚ)
  supportValue := (533730918381353 / 1000000000000000 : ℚ)
  supportSlope := (-3113625035261691 / 1000000000000000 : ℚ)
  oldCenter := (533730918381353 / 1000000000000000 : ℚ)
  oldLo := (53349999999999997 / 100000000000000000 : ℚ)
  oldHi := (53400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1262]
}

def cell_9654 : Cell := { cellDefaults with
  domain := ⟨(40875000000000003 / 100000000000000000 : ℚ), (40881250000000003 / 100000000000000000 : ℚ)⟩
  center := (40878125000000003 / 100000000000000000 : ℚ)
  supportValue := (5335363724160447 / 10000000000000000 : ℚ)
  supportSlope := (-1244804565563129 / 400000000000000 : ℚ)
  oldCenter := (5335363724160447 / 10000000000000000 : ℚ)
  oldHi := (53400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1261, piece_1262]
}

def cell_9655 : Cell := { cellDefaults with
  domain := ⟨(40881250000000003 / 100000000000000000 : ℚ), (40887500000000003 / 100000000000000000 : ℚ)⟩
  center := (40884375000000003 / 100000000000000000 : ℚ)
  supportValue := (5333419106574437 / 10000000000000000 : ℚ)
  supportSlope := (-31105957243902083 / 10000000000000000 : ℚ)
  oldCenter := (5333419106574437 / 10000000000000000 : ℚ)
  oldPieces := [piece_1261]
}

def cell_9656 : Cell := { cellDefaults with
  domain := ⟨(40887500000000003 / 100000000000000000 : ℚ), (40893750000000003 / 100000000000000000 : ℚ)⟩
  center := (40890625000000003 / 100000000000000000 : ℚ)
  supportValue := (2665737770022441 / 5000000000000000 : ℚ)
  supportSlope := (-31088157857759313 / 10000000000000000 : ℚ)
  oldCenter := (2665737770022441 / 5000000000000000 : ℚ)
  oldPieces := [piece_1261]
}

def cell_9657 : Cell := { cellDefaults with
  domain := ⟨(40893750000000003 / 100000000000000000 : ℚ), (40900000000000003 / 100000000000000000 : ℚ)⟩
  center := (40896875000000003 / 100000000000000000 : ℚ)
  supportValue := (2664766502462727 / 5000000000000000 : ℚ)
  supportSlope := (-31074327753835007 / 10000000000000000 : ℚ)
  oldCenter := (2664766502462727 / 5000000000000000 : ℚ)
  oldLo := (53249999999999997 / 100000000000000000 : ℚ)
  oldPieces := [piece_1260, piece_1261]
}

def cell_9658 : Cell := { cellDefaults with
  domain := ⟨(40900000000000003 / 100000000000000000 : ℚ), (40906250000000003 / 100000000000000000 : ℚ)⟩
  r := (69014178283681 / 100000000000000 : ℚ)
  w := (1564234961093 / 1000000000000 : ℚ)
  center := (40903125000000003 / 100000000000000000 : ℚ)
  supportValue := (5335637994574037 / 10000000000000000 : ℚ)
  supportSlope := (-1555077943546479 / 500000000000000 : ℚ)
  oldCenter := (5335637994574037 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_991
  oldHi := (53400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1261, piece_1262]
}

def cell_9659 : Cell := { cellDefaults with
  domain := ⟨(40906250000000003 / 100000000000000000 : ℚ), (40912500000000003 / 100000000000000000 : ℚ)⟩
  r := (69014178283681 / 100000000000000 : ℚ)
  w := (1564234961093 / 1000000000000 : ℚ)
  center := (40909375000000003 / 100000000000000000 : ℚ)
  supportValue := (213347781430739 / 400000000000000 : ℚ)
  supportSlope := (-3108818310987971 / 1000000000000000 : ℚ)
  oldCenter := (213347781430739 / 400000000000000 : ℚ)
  newCoefficients := coefficients_991
  oldPieces := [piece_1261]
}

def cell_9660 : Cell := { cellDefaults with
  domain := ⟨(40912500000000003 / 100000000000000000 : ℚ), (40918750000000003 / 100000000000000000 : ℚ)⟩
  r := (69014178283681 / 100000000000000 : ℚ)
  w := (1564234961093 / 1000000000000 : ℚ)
  center := (40915625000000003 / 100000000000000000 : ℚ)
  supportValue := (5331752079232781 / 10000000000000000 : ℚ)
  supportSlope := (-31070412189073693 / 10000000000000000 : ℚ)
  oldCenter := (5331752079232781 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_991
  oldPieces := [piece_1261]
}

def cell_9661 : Cell := { cellDefaults with
  domain := ⟨(40918750000000003 / 100000000000000000 : ℚ), (40925000000000003 / 100000000000000000 : ℚ)⟩
  r := (69014178283681 / 100000000000000 : ℚ)
  w := (1564234961093 / 1000000000000 : ℚ)
  center := (40921875000000003 / 100000000000000000 : ℚ)
  supportValue := (5329810699994927 / 10000000000000000 : ℚ)
  supportSlope := (-1552792401886549 / 500000000000000 : ℚ)
  oldCenter := (5329810699994927 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_991
  oldLo := (53249999999999997 / 100000000000000000 : ℚ)
  oldPieces := [piece_1260, piece_1261]
}

def cell_9662 : Cell := { cellDefaults with
  domain := ⟨(40925000000000003 / 100000000000000000 : ℚ), (40931250000000003 / 100000000000000000 : ℚ)⟩
  r := (69014178283681 / 100000000000000 : ℚ)
  w := (1564234961093 / 1000000000000 : ℚ)
  center := (40928125000000003 / 100000000000000000 : ℚ)
  supportValue := (332991883122859 / 625000000000000 : ℚ)
  supportSlope := (-970007310502341 / 312500000000000 : ℚ)
  oldCenter := (332991883122859 / 625000000000000 : ℚ)
  newCoefficients := coefficients_991
  oldLo := (53249999999999997 / 100000000000000000 : ℚ)
  oldHi := (53300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1260]
}

def cell_9663 : Cell := { cellDefaults with
  domain := ⟨(40931250000000003 / 100000000000000000 : ℚ), (40937500000000003 / 100000000000000000 : ℚ)⟩
  r := (69014178283681 / 100000000000000 : ℚ)
  w := (1564234961093 / 1000000000000 : ℚ)
  center := (40934375000000003 / 100000000000000000 : ℚ)
  supportValue := (1065186133857743 / 2000000000000000 : ℚ)
  supportSlope := (-3102260490837949 / 1000000000000000 : ℚ)
  oldCenter := (1065186133857743 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_991
  oldLo := (53200000000000003 / 100000000000000000 : ℚ)
  oldHi := (53300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1259, piece_1260]
}

def cell_9664 : Cell := { cellDefaults with
  domain := ⟨(40937500000000003 / 100000000000000000 : ℚ), (40943750000000003 / 100000000000000000 : ℚ)⟩
  r := (69014178283681 / 100000000000000 : ℚ)
  w := (1564234961093 / 1000000000000 : ℚ)
  center := (40940625000000003 / 100000000000000000 : ℚ)
  supportValue := (5323992142991227 / 10000000000000000 : ℚ)
  supportSlope := (-3101010436111551 / 1000000000000000 : ℚ)
  oldCenter := (5323992142991227 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_991
  oldLo := (53200000000000003 / 100000000000000000 : ℚ)
  oldHi := (53249999999999997 / 100000000000000000 : ℚ)
  oldPieces := [piece_1259]
}

def cell_9665 : Cell := { cellDefaults with
  domain := ⟨(40943750000000003 / 100000000000000000 : ℚ), (40950000000000003 / 100000000000000000 : ℚ)⟩
  r := (69014178283681 / 100000000000000 : ℚ)
  w := (1564234961093 / 1000000000000 : ℚ)
  center := (40946875000000003 / 100000000000000000 : ℚ)
  supportValue := (5322054565143233 / 10000000000000000 : ℚ)
  supportSlope := (-774809324473047 / 250000000000000 : ℚ)
  oldCenter := (5322054565143233 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_991
  oldLo := (53200000000000003 / 100000000000000000 : ℚ)
  oldHi := (53249999999999997 / 100000000000000000 : ℚ)
  oldPieces := [piece_1259]
}

def cell_9666 : Cell := { cellDefaults with
  domain := ⟨(40950000000000003 / 100000000000000000 : ℚ), (40956250000000003 / 100000000000000000 : ℚ)⟩
  r := (68969833306347 / 100000000000000 : ℚ)
  w := (7817966633667 / 5000000000000 : ℚ)
  center := (40953125000000003 / 100000000000000000 : ℚ)
  supportValue := (1332036085624689 / 2500000000000000 : ℚ)
  supportSlope := (-3102249241646149 / 1000000000000000 : ℚ)
  oldCenter := (1332036085624689 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_992
  oldLo := (53249999999999997 / 100000000000000000 : ℚ)
  oldHi := (53300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1260]
}

def cell_9667 : Cell := { cellDefaults with
  domain := ⟨(40956250000000003 / 100000000000000000 : ℚ), (40962500000000003 / 100000000000000000 : ℚ)⟩
  r := (68969833306347 / 100000000000000 : ℚ)
  w := (7817966633667 / 5000000000000 : ℚ)
  center := (40959375000000003 / 100000000000000000 : ℚ)
  supportValue := (1065241197958877 / 2000000000000000 : ℚ)
  supportSlope := (-7751195075966777 / 2500000000000000 : ℚ)
  oldCenter := (1065241197958877 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_992
  oldLo := (53249999999999997 / 100000000000000000 : ℚ)
  oldHi := (53300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1260]
}

def cell_9668 : Cell := { cellDefaults with
  domain := ⟨(40962500000000003 / 100000000000000000 : ℚ), (40968750000000003 / 100000000000000000 : ℚ)⟩
  r := (68969833306347 / 100000000000000 : ℚ)
  w := (7817966633667 / 5000000000000 : ℚ)
  center := (40965625000000003 / 100000000000000000 : ℚ)
  supportValue := (5324268617274901 / 10000000000000000 : ℚ)
  supportSlope := (-15495884617795497 / 5000000000000000 : ℚ)
  oldCenter := (5324268617274901 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_992
  oldLo := (53200000000000003 / 100000000000000000 : ℚ)
  oldHi := (53300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1259, piece_1260]
}

def cell_9669 : Cell := { cellDefaults with
  domain := ⟨(40968750000000003 / 100000000000000000 : ℚ), (40975000000000003 / 100000000000000000 : ℚ)⟩
  r := (68969833306347 / 100000000000000 : ℚ)
  w := (7817966633667 / 5000000000000 : ℚ)
  center := (40971875000000003 / 100000000000000000 : ℚ)
  supportValue := (5322332143866677 / 10000000000000000 : ℚ)
  supportSlope := (-15487357937065127 / 5000000000000000 : ℚ)
  oldCenter := (5322332143866677 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_992
  oldLo := (53200000000000003 / 100000000000000000 : ℚ)
  oldHi := (53249999999999997 / 100000000000000000 : ℚ)
  oldPieces := [piece_1259]
}

def cell_9670 : Cell := { cellDefaults with
  domain := ⟨(40975000000000003 / 100000000000000000 : ℚ), (40981250000000003 / 100000000000000000 : ℚ)⟩
  r := (68969833306347 / 100000000000000 : ℚ)
  w := (7817966633667 / 5000000000000 : ℚ)
  center := (40978125000000003 / 100000000000000000 : ℚ)
  supportValue := (83131199630151 / 156250000000000 : ℚ)
  supportSlope := (-48372835339483 / 15625000000000 : ℚ)
  oldCenter := (83131199630151 / 156250000000000 : ℚ)
  newCoefficients := coefficients_992
  oldLo := (6643750000000001 / 12500000000000000 : ℚ)
  oldHi := (53249999999999997 / 100000000000000000 : ℚ)
  oldPieces := [piece_1258, piece_1259]
}

def cell_9671 : Cell := { cellDefaults with
  domain := ⟨(40981250000000003 / 100000000000000000 : ℚ), (40987500000000003 / 100000000000000000 : ℚ)⟩
  r := (68969833306347 / 100000000000000 : ℚ)
  w := (7817966633667 / 5000000000000 : ℚ)
  center := (40984375000000003 / 100000000000000000 : ℚ)
  supportValue := (664807780951683 / 1250000000000000 : ℚ)
  supportSlope := (-1547234997749669 / 500000000000000 : ℚ)
  oldCenter := (664807780951683 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_992
  oldLo := (6643750000000001 / 12500000000000000 : ℚ)
  oldHi := (53200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1258]
}

def cell_9672 : Cell := { cellDefaults with
  domain := ⟨(40987500000000003 / 100000000000000000 : ℚ), (40993750000000003 / 100000000000000000 : ℚ)⟩
  r := (68969833306347 / 100000000000000 : ℚ)
  w := (7817966633667 / 5000000000000 : ℚ)
  center := (40990625000000003 / 100000000000000000 : ℚ)
  supportValue := (2658264377903883 / 5000000000000000 : ℚ)
  supportSlope := (-15463512029381121 / 5000000000000000 : ℚ)
  oldCenter := (2658264377903883 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_992
  oldLo := (6643750000000001 / 12500000000000000 : ℚ)
  oldHi := (53200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1258]
}

def cell_9673 : Cell := { cellDefaults with
  domain := ⟨(40993750000000003 / 100000000000000000 : ℚ), (41000000000000003 / 100000000000000000 : ℚ)⟩
  r := (68969833306347 / 100000000000000 : ℚ)
  w := (7817966633667 / 5000000000000 : ℚ)
  center := (40996875000000003 / 100000000000000000 : ℚ)
  supportValue := (5314596297770957 / 10000000000000000 : ℚ)
  supportSlope := (-1545658612014833 / 500000000000000 : ℚ)
  oldCenter := (5314596297770957 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_992
  oldLo := (53100000000000003 / 100000000000000000 : ℚ)
  oldHi := (53200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1257, piece_1258]
}

def cell_9674 : Cell := { cellDefaults with
  domain := ⟨(41000000000000003 / 100000000000000000 : ℚ), (41006250000000003 / 100000000000000000 : ℚ)⟩
  r := (17231387295853 / 25000000000000 : ℚ)
  w := (15629530895973 / 10000000000000 : ℚ)
  center := (41003125000000003 / 100000000000000000 : ℚ)
  supportValue := (5320671211752661 / 10000000000000000 : ℚ)
  supportSlope := (-3094017586395381 / 1000000000000000 : ℚ)
  oldCenter := (5320671211752661 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_993
  oldLo := (6643750000000001 / 12500000000000000 : ℚ)
  oldHi := (53249999999999997 / 100000000000000000 : ℚ)
  oldPieces := [piece_1258, piece_1259]
}

def cell_9675 : Cell := { cellDefaults with
  domain := ⟨(41006250000000003 / 100000000000000000 : ℚ), (41012500000000003 / 100000000000000000 : ℚ)⟩
  r := (17231387295853 / 25000000000000 : ℚ)
  w := (15629530895973 / 10000000000000 : ℚ)
  center := (41009375000000003 / 100000000000000000 : ℚ)
  supportValue := (5318737834564579 / 10000000000000000 : ℚ)
  supportSlope := (-1546352523842387 / 500000000000000 : ℚ)
  oldCenter := (5318737834564579 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_993
  oldLo := (6643750000000001 / 12500000000000000 : ℚ)
  oldHi := (53200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1258]
}

def cell_9676 : Cell := { cellDefaults with
  domain := ⟨(41012500000000003 / 100000000000000000 : ℚ), (41018750000000003 / 100000000000000000 : ℚ)⟩
  r := (17231387295853 / 25000000000000 : ℚ)
  w := (15629530895973 / 10000000000000 : ℚ)
  center := (41015625000000003 / 100000000000000000 : ℚ)
  supportValue := (2658402722490767 / 5000000000000000 : ℚ)
  supportSlope := (-772735060314389 / 250000000000000 : ℚ)
  oldCenter := (2658402722490767 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_993
  oldLo := (6643750000000001 / 12500000000000000 : ℚ)
  oldHi := (53200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1258]
}

def cell_9677 : Cell := { cellDefaults with
  domain := ⟨(41018750000000003 / 100000000000000000 : ℚ), (41025000000000003 / 100000000000000000 : ℚ)⟩
  r := (17231387295853 / 25000000000000 : ℚ)
  w := (15629530895973 / 10000000000000 : ℚ)
  center := (41021875000000003 / 100000000000000000 : ℚ)
  supportValue := (1328718533916307 / 2500000000000000 : ℚ)
  supportSlope := (-7723701751887191 / 2500000000000000 : ℚ)
  oldCenter := (1328718533916307 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_993
  oldLo := (53100000000000003 / 100000000000000000 : ℚ)
  oldHi := (53200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1257, piece_1258]
}

def cell_9678 : Cell := { cellDefaults with
  domain := ⟨(41025000000000003 / 100000000000000000 : ℚ), (41031250000000003 / 100000000000000000 : ℚ)⟩
  r := (17231387295853 / 25000000000000 : ℚ)
  w := (15629530895973 / 10000000000000 : ℚ)
  center := (41028125000000003 / 100000000000000000 : ℚ)
  supportValue := (5312943615253507 / 10000000000000000 : ℚ)
  supportSlope := (-6175899982835631 / 2000000000000000 : ℚ)
  oldCenter := (5312943615253507 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_993
  oldLo := (53100000000000003 / 100000000000000000 : ℚ)
  oldHi := (6643750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1257]
}

def cell_9679 : Cell := { cellDefaults with
  domain := ⟨(41031250000000003 / 100000000000000000 : ℚ), (41037500000000003 / 100000000000000000 : ℚ)⟩
  r := (17231387295853 / 25000000000000 : ℚ)
  w := (15629530895973 / 10000000000000 : ℚ)
  center := (41034375000000003 / 100000000000000000 : ℚ)
  supportValue := (1062202839343781 / 2000000000000000 : ℚ)
  supportSlope := (-6172375890237447 / 2000000000000000 : ℚ)
  oldCenter := (1062202839343781 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_993
  oldLo := (53100000000000003 / 100000000000000000 : ℚ)
  oldHi := (6643750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1257]
}

def cell_9680 : Cell := { cellDefaults with
  domain := ⟨(41037500000000003 / 100000000000000000 : ℚ), (41043750000000003 / 100000000000000000 : ℚ)⟩
  r := (17231387295853 / 25000000000000 : ℚ)
  w := (15629530895973 / 10000000000000 : ℚ)
  center := (41040625000000003 / 100000000000000000 : ℚ)
  supportValue := (5309085719316857 / 10000000000000000 : ℚ)
  supportSlope := (-7712377770623391 / 2500000000000000 : ℚ)
  oldCenter := (5309085719316857 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_993
  oldLo := (6631250000000001 / 12500000000000000 : ℚ)
  oldHi := (6643750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1256, piece_1257]
}

def cell_9681 : Cell := { cellDefaults with
  domain := ⟨(41043750000000003 / 100000000000000000 : ℚ), (41050000000000003 / 100000000000000000 : ℚ)⟩
  r := (17231387295853 / 25000000000000 : ℚ)
  w := (15629530895973 / 10000000000000 : ℚ)
  center := (41046875000000003 / 100000000000000000 : ℚ)
  supportValue := (5307158166391583 / 10000000000000000 : ℚ)
  supportSlope := (-3083203397292067 / 1000000000000000 : ℚ)
  oldCenter := (5307158166391583 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_993
  oldLo := (6631250000000001 / 12500000000000000 : ℚ)
  oldHi := (53100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1256]
}

def cell_9682 : Cell := { cellDefaults with
  domain := ⟨(41050000000000003 / 100000000000000000 : ℚ), (41056250000000003 / 100000000000000000 : ℚ)⟩
  r := (2755253112119 / 4000000000000 : ℚ)
  w := (7811570734231 / 5000000000000 : ℚ)
  center := (41053125000000003 / 100000000000000000 : ℚ)
  supportValue := (5313218410895743 / 10000000000000000 : ℚ)
  supportSlope := (-308618845133779 / 100000000000000 : ℚ)
  oldCenter := (5313218410895743 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_994
  oldLo := (53100000000000003 / 100000000000000000 : ℚ)
  oldHi := (6643750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1257]
}

def cell_9683 : Cell := { cellDefaults with
  domain := ⟨(41056250000000003 / 100000000000000000 : ℚ), (41062500000000003 / 100000000000000000 : ℚ)⟩
  r := (2755253112119 / 4000000000000 : ℚ)
  w := (7811570734231 / 5000000000000 : ℚ)
  center := (41059375000000003 / 100000000000000000 : ℚ)
  supportValue := (531129009245523 / 1000000000000000 : ℚ)
  supportSlope := (-15422145920851449 / 5000000000000000 : ℚ)
  oldCenter := (531129009245523 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_994
  oldLo := (53100000000000003 / 100000000000000000 : ℚ)
  oldHi := (6643750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1257]
}

def cell_9684 : Cell := { cellDefaults with
  domain := ⟨(41062500000000003 / 100000000000000000 : ℚ), (41068750000000003 / 100000000000000000 : ℚ)⟩
  r := (2755253112119 / 4000000000000 : ℚ)
  w := (7811570734231 / 5000000000000 : ℚ)
  center := (41065625000000003 / 100000000000000000 : ℚ)
  supportValue := (530936276163397 / 1000000000000000 : ℚ)
  supportSlope := (-7707795013764951 / 2500000000000000 : ℚ)
  oldCenter := (530936276163397 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_994
  oldLo := (6631250000000001 / 12500000000000000 : ℚ)
  oldHi := (6643750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1256, piece_1257]
}

def cell_9685 : Cell := { cellDefaults with
  domain := ⟨(41068750000000003 / 100000000000000000 : ℚ), (41075000000000003 / 100000000000000000 : ℚ)⟩
  r := (2755253112119 / 4000000000000 : ℚ)
  w := (7811570734231 / 5000000000000 : ℚ)
  center := (41071875000000003 / 100000000000000000 : ℚ)
  supportValue := (5307436305284823 / 10000000000000000 : ℚ)
  supportSlope := (-770362565611471 / 250000000000000 : ℚ)
  oldCenter := (5307436305284823 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_994
  oldLo := (6631250000000001 / 12500000000000000 : ℚ)
  oldHi := (53100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1256]
}

def cell_9686 : Cell := { cellDefaults with
  domain := ⟨(41075000000000003 / 100000000000000000 : ℚ), (41081250000000003 / 100000000000000000 : ℚ)⟩
  r := (2755253112119 / 4000000000000 : ℚ)
  w := (7811570734231 / 5000000000000 : ℚ)
  center := (41078125000000003 / 100000000000000000 : ℚ)
  supportValue := (1061102189470413 / 2000000000000000 : ℚ)
  supportSlope := (-30798205757385233 / 10000000000000000 : ℚ)
  oldCenter := (1061102189470413 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_994
  oldLo := (53000000000000003 / 100000000000000000 : ℚ)
  oldHi := (53100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1255, piece_1256]
}

def cell_9687 : Cell := { cellDefaults with
  domain := ⟨(41081250000000003 / 100000000000000000 : ℚ), (41087500000000003 / 100000000000000000 : ℚ)⟩
  r := (2755253112119 / 4000000000000 : ℚ)
  w := (7811570734231 / 5000000000000 : ℚ)
  center := (41084375000000003 / 100000000000000000 : ℚ)
  supportValue := (2651793219660769 / 5000000000000000 : ℚ)
  supportSlope := (-7696190464372421 / 2500000000000000 : ℚ)
  oldCenter := (2651793219660769 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_994
  oldLo := (53000000000000003 / 100000000000000000 : ℚ)
  oldHi := (6631250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1255]
}

def cell_9688 : Cell := { cellDefaults with
  domain := ⟨(41087500000000003 / 100000000000000000 : ℚ), (41093750000000003 / 100000000000000000 : ℚ)⟩
  r := (2755253112119 / 4000000000000 : ℚ)
  w := (7811570734231 / 5000000000000 : ℚ)
  center := (41090625000000003 / 100000000000000000 : ℚ)
  supportValue := (6627078674901 / 12500000000000 : ℚ)
  supportSlope := (-30767205275097353 / 10000000000000000 : ℚ)
  oldCenter := (6627078674901 / 12500000000000 : ℚ)
  newCoefficients := coefficients_994
  oldLo := (53000000000000003 / 100000000000000000 : ℚ)
  oldHi := (6631250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1255]
}

def cell_9689 : Cell := { cellDefaults with
  domain := ⟨(41093750000000003 / 100000000000000000 : ℚ), (41100000000000003 / 100000000000000000 : ℚ)⟩
  r := (2755253112119 / 4000000000000 : ℚ)
  w := (7811570734231 / 5000000000000 : ℚ)
  center := (41096875000000003 / 100000000000000000 : ℚ)
  supportValue := (5299740491332703 / 10000000000000000 : ℚ)
  supportSlope := (-6150619875242569 / 2000000000000000 : ℚ)
  oldCenter := (5299740491332703 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_994
  oldLo := (6618750000000001 / 12500000000000000 : ℚ)
  oldHi := (6631250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1253, piece_1254, piece_1255]
}

def cell_9690 : Cell := { cellDefaults with
  domain := ⟨(41100000000000003 / 100000000000000000 : ℚ), (41106250000000003 / 100000000000000000 : ℚ)⟩
  r := (68837170037419 / 100000000000000 : ℚ)
  w := (7808383588367 / 5000000000000 : ℚ)
  center := (41103125000000003 / 100000000000000000 : ℚ)
  supportValue := (5305785119162637 / 10000000000000000 : ℚ)
  supportSlope := (-153899388141987 / 50000000000000 : ℚ)
  oldCenter := (5305785119162637 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_995
  oldLo := (53000000000000003 / 100000000000000000 : ℚ)
  oldHi := (53100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1255, piece_1256]
}

def cell_9691 : Cell := { cellDefaults with
  domain := ⟨(41106250000000003 / 100000000000000000 : ℚ), (41112500000000003 / 100000000000000000 : ℚ)⟩
  r := (68837170037419 / 100000000000000 : ℚ)
  w := (7808383588367 / 5000000000000 : ℚ)
  center := (41109375000000003 / 100000000000000000 : ℚ)
  supportValue := (2651930877875519 / 5000000000000000 : ℚ)
  supportSlope := (-19229519554953 / 6250000000000 : ℚ)
  oldCenter := (2651930877875519 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_995
  oldLo := (53000000000000003 / 100000000000000000 : ℚ)
  oldHi := (6631250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1255]
}

def cell_9692 : Cell := { cellDefaults with
  domain := ⟨(41112500000000003 / 100000000000000000 : ℚ), (41118750000000003 / 100000000000000000 : ℚ)⟩
  r := (68837170037419 / 100000000000000 : ℚ)
  w := (7808383588367 / 5000000000000 : ℚ)
  center := (41115625000000003 / 100000000000000000 : ℚ)
  supportValue := (1325484837786239 / 2500000000000000 : ℚ)
  supportSlope := (-614994048328299 / 200000000000000 : ℚ)
  oldCenter := (1325484837786239 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_995
  oldLo := (53000000000000003 / 100000000000000000 : ℚ)
  oldHi := (6631250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1255]
}

def cell_9693 : Cell := { cellDefaults with
  domain := ⟨(41118750000000003 / 100000000000000000 : ℚ), (41125000000000003 / 100000000000000000 : ℚ)⟩
  r := (68837170037419 / 100000000000000 : ℚ)
  w := (7808383588367 / 5000000000000 : ℚ)
  center := (41121875000000003 / 100000000000000000 : ℚ)
  supportValue := (20703195474603 / 39062500000000 : ℚ)
  supportSlope := (-30734844076505397 / 10000000000000000 : ℚ)
  oldCenter := (20703195474603 / 39062500000000 : ℚ)
  newCoefficients := coefficients_995
  oldLo := (1059776536312849 / 2000000000000000 : ℚ)
  oldHi := (6631250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1254, piece_1255]
}

def cell_9694 : Cell := { cellDefaults with
  domain := ⟨(41125000000000003 / 100000000000000000 : ℚ), (41131250000000003 / 100000000000000000 : ℚ)⟩
  r := (68837170037419 / 100000000000000 : ℚ)
  w := (7808383588367 / 5000000000000 : ℚ)
  center := (41128125000000003 / 100000000000000000 : ℚ)
  supportValue := (82782773307369 / 156250000000000 : ℚ)
  supportSlope := (-19200048829493 / 6250000000000 : ℚ)
  oldCenter := (82782773307369 / 156250000000000 : ℚ)
  newCoefficients := coefficients_995
  oldLo := (6618750000000001 / 12500000000000000 : ℚ)
  oldHi := (53000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1253, piece_1254]
}

def cell_9695 : Cell := { cellDefaults with
  domain := ⟨(41131250000000003 / 100000000000000000 : ℚ), (41137500000000003 / 100000000000000000 : ℚ)⟩
  r := (68837170037419 / 100000000000000 : ℚ)
  w := (7808383588367 / 5000000000000 : ℚ)
  center := (41134375000000003 / 100000000000000000 : ℚ)
  supportValue := (5296178033257799 / 10000000000000000 : ℚ)
  supportSlope := (-3070257715755531 / 1000000000000000 : ℚ)
  oldCenter := (5296178033257799 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_995
  oldLo := (6618750000000001 / 12500000000000000 : ℚ)
  oldHi := (1059776536312849 / 2000000000000000 : ℚ)
  oldPieces := [piece_1253]
}

def cell_9696 : Cell := { cellDefaults with
  domain := ⟨(41137500000000003 / 100000000000000000 : ℚ), (41143750000000003 / 100000000000000000 : ℚ)⟩
  r := (68837170037419 / 100000000000000 : ℚ)
  w := (7808383588367 / 5000000000000 : ℚ)
  center := (41140625000000003 / 100000000000000000 : ℚ)
  supportValue := (5294259537287391 / 10000000000000000 : ℚ)
  supportSlope := (-1534494301415279 / 500000000000000 : ℚ)
  oldCenter := (5294259537287391 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_995
  oldLo := (52900000000000003 / 100000000000000000 : ℚ)
  oldHi := (1059776536312849 / 2000000000000000 : ℚ)
  oldPieces := [piece_1252, piece_1253]
}

def cell_9697 : Cell := { cellDefaults with
  domain := ⟨(41143750000000003 / 100000000000000000 : ℚ), (41150000000000003 / 100000000000000000 : ℚ)⟩
  r := (68837170037419 / 100000000000000 : ℚ)
  w := (7808383588367 / 5000000000000 : ℚ)
  center := (41146875000000003 / 100000000000000000 : ℚ)
  supportValue := (5292341927307501 / 10000000000000000 : ℚ)
  supportSlope := (-30673006516970247 / 10000000000000000 : ℚ)
  oldCenter := (5292341927307501 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_995
  oldLo := (52900000000000003 / 100000000000000000 : ℚ)
  oldHi := (6618750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1252]
}

def cell_9698 : Cell := { cellDefaults with
  domain := ⟨(41150000000000003 / 100000000000000000 : ℚ), (41156250000000003 / 100000000000000000 : ℚ)⟩
  r := (68793074293403 / 100000000000000 : ℚ)
  w := (15610404532171 / 10000000000000 : ℚ)
  center := (41153125000000003 / 100000000000000000 : ℚ)
  supportValue := (5298372509016867 / 10000000000000000 : ℚ)
  supportSlope := (-6140516938842211 / 2000000000000000 : ℚ)
  oldCenter := (5298372509016867 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_996
  oldLo := (6618750000000001 / 12500000000000000 : ℚ)
  oldHi := (53000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1253, piece_1254]
}

def cell_9699 : Cell := { cellDefaults with
  domain := ⟨(41156250000000003 / 100000000000000000 : ℚ), (41162500000000003 / 100000000000000000 : ℚ)⟩
  r := (68793074293403 / 100000000000000 : ℚ)
  w := (15610404532171 / 10000000000000 : ℚ)
  center := (41159375000000003 / 100000000000000000 : ℚ)
  supportValue := (2648227071524493 / 5000000000000000 : ℚ)
  supportSlope := (-30685111858090863 / 10000000000000000 : ℚ)
  oldCenter := (2648227071524493 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_996
  oldLo := (6618750000000001 / 12500000000000000 : ℚ)
  oldHi := (1059776536312849 / 2000000000000000 : ℚ)
  oldPieces := [piece_1253]
}

theorem check_9650 : cell_9650.check = true := by
  decide +kernel

theorem check_9651 : cell_9651.check = true := by
  decide +kernel

theorem check_9652 : cell_9652.check = true := by
  decide +kernel

theorem check_9653 : cell_9653.check = true := by
  decide +kernel

theorem check_9654 : cell_9654.check = true := by
  decide +kernel

theorem check_9655 : cell_9655.check = true := by
  decide +kernel

theorem check_9656 : cell_9656.check = true := by
  decide +kernel

theorem check_9657 : cell_9657.check = true := by
  decide +kernel

theorem check_9658 : cell_9658.check = true := by
  decide +kernel

theorem check_9659 : cell_9659.check = true := by
  decide +kernel

theorem check_9660 : cell_9660.check = true := by
  decide +kernel

theorem check_9661 : cell_9661.check = true := by
  decide +kernel

theorem check_9662 : cell_9662.check = true := by
  decide +kernel

theorem check_9663 : cell_9663.check = true := by
  decide +kernel

theorem check_9664 : cell_9664.check = true := by
  decide +kernel

theorem check_9665 : cell_9665.check = true := by
  decide +kernel

theorem check_9666 : cell_9666.check = true := by
  decide +kernel

theorem check_9667 : cell_9667.check = true := by
  decide +kernel

theorem check_9668 : cell_9668.check = true := by
  decide +kernel

theorem check_9669 : cell_9669.check = true := by
  decide +kernel

theorem check_9670 : cell_9670.check = true := by
  decide +kernel

theorem check_9671 : cell_9671.check = true := by
  decide +kernel

theorem check_9672 : cell_9672.check = true := by
  decide +kernel

theorem check_9673 : cell_9673.check = true := by
  decide +kernel

theorem check_9674 : cell_9674.check = true := by
  decide +kernel

theorem check_9675 : cell_9675.check = true := by
  decide +kernel

theorem check_9676 : cell_9676.check = true := by
  decide +kernel

theorem check_9677 : cell_9677.check = true := by
  decide +kernel

theorem check_9678 : cell_9678.check = true := by
  decide +kernel

theorem check_9679 : cell_9679.check = true := by
  decide +kernel

theorem check_9680 : cell_9680.check = true := by
  decide +kernel

theorem check_9681 : cell_9681.check = true := by
  decide +kernel

theorem check_9682 : cell_9682.check = true := by
  decide +kernel

theorem check_9683 : cell_9683.check = true := by
  decide +kernel

theorem check_9684 : cell_9684.check = true := by
  decide +kernel

theorem check_9685 : cell_9685.check = true := by
  decide +kernel

theorem check_9686 : cell_9686.check = true := by
  decide +kernel

theorem check_9687 : cell_9687.check = true := by
  decide +kernel

theorem check_9688 : cell_9688.check = true := by
  decide +kernel

theorem check_9689 : cell_9689.check = true := by
  decide +kernel

theorem check_9690 : cell_9690.check = true := by
  decide +kernel

theorem check_9691 : cell_9691.check = true := by
  decide +kernel

theorem check_9692 : cell_9692.check = true := by
  decide +kernel

theorem check_9693 : cell_9693.check = true := by
  decide +kernel

theorem check_9694 : cell_9694.check = true := by
  decide +kernel

theorem check_9695 : cell_9695.check = true := by
  decide +kernel

theorem check_9696 : cell_9696.check = true := by
  decide +kernel

theorem check_9697 : cell_9697.check = true := by
  decide +kernel

theorem check_9698 : cell_9698.check = true := by
  decide +kernel

theorem check_9699 : cell_9699.check = true := by
  decide +kernel

def cells : List Cell := [cell_9650, cell_9651, cell_9652, cell_9653, cell_9654, cell_9655, cell_9656, cell_9657, cell_9658, cell_9659, cell_9660, cell_9661, cell_9662, cell_9663, cell_9664, cell_9665, cell_9666, cell_9667, cell_9668, cell_9669, cell_9670, cell_9671, cell_9672, cell_9673, cell_9674, cell_9675, cell_9676, cell_9677, cell_9678, cell_9679, cell_9680, cell_9681, cell_9682, cell_9683, cell_9684, cell_9685, cell_9686, cell_9687, cell_9688, cell_9689, cell_9690, cell_9691, cell_9692, cell_9693, cell_9694, cell_9695, cell_9696, cell_9697, cell_9698, cell_9699]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9650, check_9651, check_9652, check_9653, check_9654, check_9655, check_9656, check_9657, check_9658, check_9659, check_9660, check_9661, check_9662, check_9663, check_9664, check_9665, check_9666, check_9667, check_9668, check_9669, check_9670, check_9671, check_9672, check_9673, check_9674, check_9675, check_9676, check_9677, check_9678, check_9679, check_9680, check_9681, check_9682, check_9683, check_9684, check_9685, check_9686, check_9687, check_9688, check_9689, check_9690, check_9691, check_9692, check_9693, check_9694, check_9695, check_9696, check_9697, check_9698, check_9699, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0193

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0193
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0193
open AnalyticBounds.ExpressionCertificate

theorem linked_9650 : Linked cell_9650 pieces := by
  link_source cell_9650 with piece_990 using piece_990_mem, piece_1263_mem

theorem linked_9651 : Linked cell_9651 pieces := by
  link_source cell_9651 with piece_990 using piece_990_mem, piece_1263_mem

theorem linked_9652 : Linked cell_9652 pieces := by
  link_source cell_9652 with piece_990 using piece_990_mem, ⟨piece_1262_mem, piece_1263_mem⟩

theorem linked_9653 : Linked cell_9653 pieces := by
  link_source cell_9653 with piece_990 using piece_990_mem, piece_1262_mem

theorem linked_9654 : Linked cell_9654 pieces := by
  link_source cell_9654 with piece_990 using piece_990_mem, ⟨piece_1261_mem, piece_1262_mem⟩

theorem linked_9655 : Linked cell_9655 pieces := by
  link_source cell_9655 with piece_990 using piece_990_mem, piece_1261_mem

theorem linked_9656 : Linked cell_9656 pieces := by
  link_source cell_9656 with piece_990 using piece_990_mem, piece_1261_mem

theorem linked_9657 : Linked cell_9657 pieces := by
  link_source cell_9657 with piece_990 using piece_990_mem, ⟨piece_1260_mem, piece_1261_mem⟩

theorem linked_9658 : Linked cell_9658 pieces := by
  link_source cell_9658 with piece_991 using piece_991_mem, ⟨piece_1261_mem, piece_1262_mem⟩

theorem linked_9659 : Linked cell_9659 pieces := by
  link_source cell_9659 with piece_991 using piece_991_mem, piece_1261_mem

theorem linked_9660 : Linked cell_9660 pieces := by
  link_source cell_9660 with piece_991 using piece_991_mem, piece_1261_mem

theorem linked_9661 : Linked cell_9661 pieces := by
  link_source cell_9661 with piece_991 using piece_991_mem, ⟨piece_1260_mem, piece_1261_mem⟩

theorem linked_9662 : Linked cell_9662 pieces := by
  link_source cell_9662 with piece_991 using piece_991_mem, piece_1260_mem

theorem linked_9663 : Linked cell_9663 pieces := by
  link_source cell_9663 with piece_991 using piece_991_mem, ⟨piece_1259_mem, piece_1260_mem⟩

theorem linked_9664 : Linked cell_9664 pieces := by
  link_source cell_9664 with piece_991 using piece_991_mem, piece_1259_mem

theorem linked_9665 : Linked cell_9665 pieces := by
  link_source cell_9665 with piece_991 using piece_991_mem, piece_1259_mem

theorem linked_9666 : Linked cell_9666 pieces := by
  link_source cell_9666 with piece_992 using piece_992_mem, piece_1260_mem

theorem linked_9667 : Linked cell_9667 pieces := by
  link_source cell_9667 with piece_992 using piece_992_mem, piece_1260_mem

theorem linked_9668 : Linked cell_9668 pieces := by
  link_source cell_9668 with piece_992 using piece_992_mem, ⟨piece_1259_mem, piece_1260_mem⟩

theorem linked_9669 : Linked cell_9669 pieces := by
  link_source cell_9669 with piece_992 using piece_992_mem, piece_1259_mem

theorem linked_9670 : Linked cell_9670 pieces := by
  link_source cell_9670 with piece_992 using piece_992_mem, ⟨piece_1258_mem, piece_1259_mem⟩

theorem linked_9671 : Linked cell_9671 pieces := by
  link_source cell_9671 with piece_992 using piece_992_mem, piece_1258_mem

theorem linked_9672 : Linked cell_9672 pieces := by
  link_source cell_9672 with piece_992 using piece_992_mem, piece_1258_mem

theorem linked_9673 : Linked cell_9673 pieces := by
  link_source cell_9673 with piece_992 using piece_992_mem, ⟨piece_1257_mem, piece_1258_mem⟩

theorem linked_9674 : Linked cell_9674 pieces := by
  link_source cell_9674 with piece_993 using piece_993_mem, ⟨piece_1258_mem, piece_1259_mem⟩

theorem linked_9675 : Linked cell_9675 pieces := by
  link_source cell_9675 with piece_993 using piece_993_mem, piece_1258_mem

theorem linked_9676 : Linked cell_9676 pieces := by
  link_source cell_9676 with piece_993 using piece_993_mem, piece_1258_mem

theorem linked_9677 : Linked cell_9677 pieces := by
  link_source cell_9677 with piece_993 using piece_993_mem, ⟨piece_1257_mem, piece_1258_mem⟩

theorem linked_9678 : Linked cell_9678 pieces := by
  link_source cell_9678 with piece_993 using piece_993_mem, piece_1257_mem

theorem linked_9679 : Linked cell_9679 pieces := by
  link_source cell_9679 with piece_993 using piece_993_mem, piece_1257_mem

theorem linked_9680 : Linked cell_9680 pieces := by
  link_source cell_9680 with piece_993 using piece_993_mem, ⟨piece_1256_mem, piece_1257_mem⟩

theorem linked_9681 : Linked cell_9681 pieces := by
  link_source cell_9681 with piece_993 using piece_993_mem, piece_1256_mem

theorem linked_9682 : Linked cell_9682 pieces := by
  link_source cell_9682 with piece_994 using piece_994_mem, piece_1257_mem

theorem linked_9683 : Linked cell_9683 pieces := by
  link_source cell_9683 with piece_994 using piece_994_mem, piece_1257_mem

theorem linked_9684 : Linked cell_9684 pieces := by
  link_source cell_9684 with piece_994 using piece_994_mem, ⟨piece_1256_mem, piece_1257_mem⟩

theorem linked_9685 : Linked cell_9685 pieces := by
  link_source cell_9685 with piece_994 using piece_994_mem, piece_1256_mem

theorem linked_9686 : Linked cell_9686 pieces := by
  link_source cell_9686 with piece_994 using piece_994_mem, ⟨piece_1255_mem, piece_1256_mem⟩

theorem linked_9687 : Linked cell_9687 pieces := by
  link_source cell_9687 with piece_994 using piece_994_mem, piece_1255_mem

theorem linked_9688 : Linked cell_9688 pieces := by
  link_source cell_9688 with piece_994 using piece_994_mem, piece_1255_mem

theorem linked_9689 : Linked cell_9689 pieces := by
  link_source cell_9689 with piece_994 using piece_994_mem, ⟨piece_1253_mem, ⟨piece_1254_mem, piece_1255_mem⟩⟩

theorem linked_9690 : Linked cell_9690 pieces := by
  link_source cell_9690 with piece_995 using piece_995_mem, ⟨piece_1255_mem, piece_1256_mem⟩

theorem linked_9691 : Linked cell_9691 pieces := by
  link_source cell_9691 with piece_995 using piece_995_mem, piece_1255_mem

theorem linked_9692 : Linked cell_9692 pieces := by
  link_source cell_9692 with piece_995 using piece_995_mem, piece_1255_mem

theorem linked_9693 : Linked cell_9693 pieces := by
  link_source cell_9693 with piece_995 using piece_995_mem, ⟨piece_1254_mem, piece_1255_mem⟩

theorem linked_9694 : Linked cell_9694 pieces := by
  link_source cell_9694 with piece_995 using piece_995_mem, ⟨piece_1253_mem, piece_1254_mem⟩

theorem linked_9695 : Linked cell_9695 pieces := by
  link_source cell_9695 with piece_995 using piece_995_mem, piece_1253_mem

theorem linked_9696 : Linked cell_9696 pieces := by
  link_source cell_9696 with piece_995 using piece_995_mem, ⟨piece_1252_mem, piece_1253_mem⟩

theorem linked_9697 : Linked cell_9697 pieces := by
  link_source cell_9697 with piece_995 using piece_995_mem, piece_1252_mem

theorem linked_9698 : Linked cell_9698 pieces := by
  link_source cell_9698 with piece_996 using piece_996_mem, ⟨piece_1253_mem, piece_1254_mem⟩

theorem linked_9699 : Linked cell_9699 pieces := by
  link_source cell_9699 with piece_996 using piece_996_mem, piece_1253_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0193.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0193.cells,List.forall_mem_cons]
  exact ⟨linked_9650, linked_9651, linked_9652, linked_9653, linked_9654, linked_9655, linked_9656, linked_9657, linked_9658, linked_9659, linked_9660, linked_9661, linked_9662, linked_9663, linked_9664, linked_9665, linked_9666, linked_9667, linked_9668, linked_9669, linked_9670, linked_9671, linked_9672, linked_9673, linked_9674, linked_9675, linked_9676, linked_9677, linked_9678, linked_9679, linked_9680, linked_9681, linked_9682, linked_9683, linked_9684, linked_9685, linked_9686, linked_9687, linked_9688, linked_9689, linked_9690, linked_9691, linked_9692, linked_9693, linked_9694, linked_9695, linked_9696, linked_9697, linked_9698, linked_9699, by simp⟩

theorem covered : covers (40850000000000003 / 100000000000000000 : ℚ) (41162500000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0193.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0193
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0194
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(41162500000000003 / 100000000000000000 : ℚ), (41168750000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (68749040585811 / 100000000000000 : ℚ)
  w := (7802028580629 / 5000000000000 : ℚ)
  center := (41165625000000003 / 100000000000000000 : ℚ)
  supportValue := (5294536786634237 / 10000000000000000 : ℚ)
  supportSlope := (-3067166732964921 / 1000000000000000 : ℚ)
  oldCenter := (5294536786634237 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_997
  oldLo := (26400000000000001 / 50000000000000000 : ℚ)
  oldHi := (6606250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1250]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9700 : Cell := { cellDefaults with
  r := (68793074293403 / 100000000000000 : ℚ)
  w := (15610404532171 / 10000000000000 : ℚ)
  newCoefficients := coefficients_996
  oldLo := (52900000000000003 / 100000000000000000 : ℚ)
  oldHi := (1059776536312849 / 2000000000000000 : ℚ)
  oldPieces := [piece_1252, piece_1253]
}

def cell_9701 : Cell := { cellDefaults with
  domain := ⟨(41168750000000003 / 100000000000000000 : ℚ), (41175000000000003 / 100000000000000000 : ℚ)⟩
  r := (68793074293403 / 100000000000000 : ℚ)
  w := (15610404532171 / 10000000000000 : ℚ)
  center := (41171875000000003 / 100000000000000000 : ℚ)
  supportValue := (5292620265599017 / 10000000000000000 : ℚ)
  supportSlope := (-6131119442279953 / 2000000000000000 : ℚ)
  oldCenter := (5292620265599017 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_996
  oldLo := (52900000000000003 / 100000000000000000 : ℚ)
  oldHi := (6618750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1252]
}

def cell_9702 : Cell := { cellDefaults with
  domain := ⟨(41175000000000003 / 100000000000000000 : ℚ), (41181250000000003 / 100000000000000000 : ℚ)⟩
  r := (68793074293403 / 100000000000000 : ℚ)
  w := (15610404532171 / 10000000000000 : ℚ)
  center := (41178125000000003 / 100000000000000000 : ℚ)
  supportValue := (5290704835536099 / 10000000000000000 : ℚ)
  supportSlope := (-6127774192108859 / 2000000000000000 : ℚ)
  oldCenter := (5290704835536099 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_996
  oldLo := (6606250000000001 / 12500000000000000 : ℚ)
  oldHi := (6618750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1251, piece_1252]
}

def cell_9703 : Cell := { cellDefaults with
  domain := ⟨(41181250000000003 / 100000000000000000 : ℚ), (41187500000000003 / 100000000000000000 : ℚ)⟩
  r := (68793074293403 / 100000000000000 : ℚ)
  w := (15610404532171 / 10000000000000 : ℚ)
  center := (41184375000000003 / 100000000000000000 : ℚ)
  supportValue := (5288790281069877 / 10000000000000000 : ℚ)
  supportSlope := (-3062613103061551 / 1000000000000000 : ℚ)
  oldCenter := (5288790281069877 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_996
  oldLo := (6606250000000001 / 12500000000000000 : ℚ)
  oldHi := (52900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1251]
}

def cell_9704 : Cell := { cellDefaults with
  domain := ⟨(41187500000000003 / 100000000000000000 : ℚ), (41193750000000003 / 100000000000000000 : ℚ)⟩
  r := (68793074293403 / 100000000000000 : ℚ)
  w := (15610404532171 / 10000000000000 : ℚ)
  center := (41190625000000003 / 100000000000000000 : ℚ)
  supportValue := (660859586549227 / 1250000000000000 : ℚ)
  supportSlope := (-1530434649451351 / 500000000000000 : ℚ)
  oldCenter := (660859586549227 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_996
  oldLo := (6606250000000001 / 12500000000000000 : ℚ)
  oldHi := (52900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1251]
}

def cell_9705 : Cell := { cellDefaults with
  domain := ⟨(41193750000000003 / 100000000000000000 : ℚ), (41200000000000003 / 100000000000000000 : ℚ)⟩
  r := (68793074293403 / 100000000000000 : ℚ)
  w := (15610404532171 / 10000000000000 : ℚ)
  center := (41196875000000003 / 100000000000000000 : ℚ)
  supportValue := (1321241046587931 / 2500000000000000 : ℚ)
  supportSlope := (-1529704825028233 / 500000000000000 : ℚ)
  oldCenter := (1321241046587931 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_996
  oldHi := (52900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1250, piece_1251]
}

def cell_9706 : Cell := { cellDefaults with
  domain := ⟨(41200000000000003 / 100000000000000000 : ℚ), (41206250000000003 / 100000000000000000 : ℚ)⟩
  center := (41203125000000003 / 100000000000000000 : ℚ)
  supportValue := (5290979311298207 / 10000000000000000 : ℚ)
  supportSlope := (-7655178533250151 / 2500000000000000 : ℚ)
  oldCenter := (5290979311298207 / 10000000000000000 : ℚ)
  oldLo := (52900000000000003 / 100000000000000000 : ℚ)
  oldHi := (6618750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1252]
}

def cell_9707 : Cell := { cellDefaults with
  domain := ⟨(41206250000000003 / 100000000000000000 : ℚ), (41212500000000003 / 100000000000000000 : ℚ)⟩
  center := (41209375000000003 / 100000000000000000 : ℚ)
  supportValue := (5289065894459771 / 10000000000000000 : ℚ)
  supportSlope := (-6121732597314633 / 2000000000000000 : ℚ)
  oldCenter := (5289065894459771 / 10000000000000000 : ℚ)
  oldLo := (6606250000000001 / 12500000000000000 : ℚ)
  oldHi := (6618750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1251, piece_1252]
}

def cell_9708 : Cell := { cellDefaults with
  domain := ⟨(41212500000000003 / 100000000000000000 : ℚ), (41218750000000003 / 100000000000000000 : ℚ)⟩
  center := (41215625000000003 / 100000000000000000 : ℚ)
  supportValue := (5287153392960999 / 10000000000000000 : ℚ)
  supportSlope := (-15295655973872613 / 5000000000000000 : ℚ)
  oldCenter := (5287153392960999 / 10000000000000000 : ℚ)
  oldLo := (6606250000000001 / 12500000000000000 : ℚ)
  oldHi := (52900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1251]
}

def cell_9709 : Cell := { cellDefaults with
  domain := ⟨(41218750000000003 / 100000000000000000 : ℚ), (41225000000000003 / 100000000000000000 : ℚ)⟩
  center := (41221875000000003 / 100000000000000000 : ℚ)
  supportValue := (330327623688923 / 625000000000000 : ℚ)
  supportSlope := (-1528797640654389 / 500000000000000 : ℚ)
  oldCenter := (330327623688923 / 625000000000000 : ℚ)
  oldHi := (52900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1250, piece_1251]
}

def cell_9710 : Cell := { cellDefaults with
  domain := ⟨(41225000000000003 / 100000000000000000 : ℚ), (41231250000000003 / 100000000000000000 : ℚ)⟩
  center := (41228125000000003 / 100000000000000000 : ℚ)
  supportValue := (5283331355127797 / 10000000000000000 : ℚ)
  supportSlope := (-15280979120806393 / 5000000000000000 : ℚ)
  oldCenter := (5283331355127797 / 10000000000000000 : ℚ)
  oldPieces := [piece_1250]
}

def cell_9711 : Cell := { cellDefaults with
  domain := ⟨(41231250000000003 / 100000000000000000 : ℚ), (41237500000000003 / 100000000000000000 : ℚ)⟩
  center := (41234375000000003 / 100000000000000000 : ℚ)
  supportValue := (2640710887782959 / 5000000000000000 : ℚ)
  supportSlope := (-763614353785691 / 250000000000000 : ℚ)
  oldCenter := (2640710887782959 / 5000000000000000 : ℚ)
  oldPieces := [piece_1250]
}

def cell_9712 : Cell := { cellDefaults with
  domain := ⟨(41237500000000003 / 100000000000000000 : ℚ), (41243750000000003 / 100000000000000000 : ℚ)⟩
  center := (41240625000000003 / 100000000000000000 : ℚ)
  supportValue := (2639756597396557 / 5000000000000000 : ℚ)
  supportSlope := (-3053132106057177 / 1000000000000000 : ℚ)
  oldCenter := (2639756597396557 / 5000000000000000 : ℚ)
  oldLo := (6593750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1249, piece_1250]
}

def cell_9713 : Cell := { cellDefaults with
  domain := ⟨(41243750000000003 / 100000000000000000 : ℚ), (41250000000000003 / 100000000000000000 : ℚ)⟩
  center := (41246875000000003 / 100000000000000000 : ℚ)
  supportValue := (5277605446572169 / 10000000000000000 : ℚ)
  supportSlope := (-15257638539534213 / 5000000000000000 : ℚ)
  oldCenter := (5277605446572169 / 10000000000000000 : ℚ)
  oldLo := (6593750000000001 / 12500000000000000 : ℚ)
  oldHi := (26400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1249]
}

def cell_9714 : Cell := { cellDefaults with
  domain := ⟨(41250000000000003 / 100000000000000000 : ℚ), (41256250000000003 / 100000000000000000 : ℚ)⟩
  r := (13741013808419 / 20000000000000 : ℚ)
  w := (15597722013563 / 10000000000000 : ℚ)
  center := (41253125000000003 / 100000000000000000 : ℚ)
  supportValue := (1056721275621 / 2000000000000 : ℚ)
  supportSlope := (-30544584885241477 / 10000000000000000 : ℚ)
  oldCenter := (1056721275621 / 2000000000000 : ℚ)
  newCoefficients := coefficients_998
  oldPieces := [piece_1250]
}

def cell_9715 : Cell := { cellDefaults with
  domain := ⟨(41256250000000003 / 100000000000000000 : ℚ), (41262500000000003 / 100000000000000000 : ℚ)⟩
  r := (13741013808419 / 20000000000000 : ℚ)
  w := (15597722013563 / 10000000000000 : ℚ)
  center := (41259375000000003 / 100000000000000000 : ℚ)
  supportValue := (2640848941759311 / 5000000000000000 : ℚ)
  supportSlope := (-763180707306077 / 250000000000000 : ℚ)
  oldCenter := (2640848941759311 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_998
  oldPieces := [piece_1250]
}

def cell_9716 : Cell := { cellDefaults with
  domain := ⟨(41262500000000003 / 100000000000000000 : ℚ), (41268750000000003 / 100000000000000000 : ℚ)⟩
  r := (13741013808419 / 20000000000000 : ℚ)
  w := (15597722013563 / 10000000000000 : ℚ)
  center := (41265625000000003 / 100000000000000000 : ℚ)
  supportValue := (5279790435447997 / 10000000000000000 : ℚ)
  supportSlope := (-30513211909344307 / 10000000000000000 : ℚ)
  oldCenter := (5279790435447997 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_998
  oldLo := (6593750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1249, piece_1250]
}

def cell_9717 : Cell := { cellDefaults with
  domain := ⟨(41268750000000003 / 100000000000000000 : ℚ), (41275000000000003 / 100000000000000000 : ℚ)⟩
  r := (13741013808419 / 20000000000000 : ℚ)
  w := (15597722013563 / 10000000000000 : ℚ)
  center := (41271875000000003 / 100000000000000000 : ℚ)
  supportValue := (5277883768725619 / 10000000000000000 : ℚ)
  supportSlope := (-48796778920007 / 16000000000000 : ℚ)
  oldCenter := (5277883768725619 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_998
  oldLo := (6593750000000001 / 12500000000000000 : ℚ)
  oldHi := (26400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1249]
}

def cell_9718 : Cell := { cellDefaults with
  domain := ⟨(41275000000000003 / 100000000000000000 : ℚ), (41281250000000003 / 100000000000000000 : ℚ)⟩
  r := (13741013808419 / 20000000000000 : ℚ)
  w := (15597722013563 / 10000000000000 : ℚ)
  center := (41278125000000003 / 100000000000000000 : ℚ)
  supportValue := (527597818565519 / 1000000000000000 : ℚ)
  supportSlope := (-1524032893351901 / 500000000000000 : ℚ)
  oldCenter := (527597818565519 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_998
  oldLo := (6593750000000001 / 12500000000000000 : ℚ)
  oldHi := (26400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1249]
}

def cell_9719 : Cell := { cellDefaults with
  domain := ⟨(41281250000000003 / 100000000000000000 : ℚ), (41287500000000003 / 100000000000000000 : ℚ)⟩
  r := (13741013808419 / 20000000000000 : ℚ)
  w := (15597722013563 / 10000000000000 : ℚ)
  center := (41284375000000003 / 100000000000000000 : ℚ)
  supportValue := (5274073518957721 / 10000000000000000 : ℚ)
  supportSlope := (-30468724676531167 / 10000000000000000 : ℚ)
  oldCenter := (5274073518957721 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_998
  oldLo := (26350000000000001 / 50000000000000000 : ℚ)
  oldHi := (26400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1248, piece_1249]
}

def cell_9720 : Cell := { cellDefaults with
  domain := ⟨(41287500000000003 / 100000000000000000 : ℚ), (41293750000000003 / 100000000000000000 : ℚ)⟩
  r := (13741013808419 / 20000000000000 : ℚ)
  w := (15597722013563 / 10000000000000 : ℚ)
  center := (41290625000000003 / 100000000000000000 : ℚ)
  supportValue := (2636084880103619 / 5000000000000000 : ℚ)
  supportSlope := (-190321702211671 / 62500000000000 : ℚ)
  oldCenter := (2636084880103619 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_998
  oldLo := (26350000000000001 / 50000000000000000 : ℚ)
  oldHi := (6593750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1248]
}

def cell_9721 : Cell := { cellDefaults with
  domain := ⟨(41293750000000003 / 100000000000000000 : ℚ), (41300000000000003 / 100000000000000000 : ℚ)⟩
  r := (13741013808419 / 20000000000000 : ℚ)
  w := (15597722013563 / 10000000000000 : ℚ)
  center := (41296875000000003 / 100000000000000000 : ℚ)
  supportValue := (1317566770868909 / 2500000000000000 : ℚ)
  supportSlope := (-1521807064989389 / 500000000000000 : ℚ)
  oldCenter := (1317566770868909 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_998
  oldLo := (6581250000000001 / 12500000000000000 : ℚ)
  oldHi := (6593750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1247, piece_1248]
}

def cell_9722 : Cell := { cellDefaults with
  domain := ⟨(41300000000000003 / 100000000000000000 : ℚ), (41306250000000003 / 100000000000000000 : ℚ)⟩
  r := (68661159723683 / 100000000000000 : ℚ)
  w := (3897850310987 / 2500000000000 : ℚ)
  center := (41303125000000003 / 100000000000000000 : ℚ)
  supportValue := (5276252892242543 / 10000000000000000 : ℚ)
  supportSlope := (-1903958986115839 / 625000000000000 : ℚ)
  oldCenter := (5276252892242543 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_999
  oldLo := (6593750000000001 / 12500000000000000 : ℚ)
  oldHi := (26400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1249]
}

def cell_9723 : Cell := { cellDefaults with
  domain := ⟨(41306250000000003 / 100000000000000000 : ℚ), (41312500000000003 / 100000000000000000 : ℚ)⟩
  r := (68661159723683 / 100000000000000 : ℚ)
  w := (3897850310987 / 2500000000000 : ℚ)
  center := (41309375000000003 / 100000000000000000 : ℚ)
  supportValue := (5274349356178079 / 10000000000000000 : ℚ)
  supportSlope := (-304506481474931 / 100000000000000 : ℚ)
  oldCenter := (5274349356178079 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_999
  oldLo := (26350000000000001 / 50000000000000000 : ℚ)
  oldHi := (26400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1248, piece_1249]
}

def cell_9724 : Cell := { cellDefaults with
  domain := ⟨(41312500000000003 / 100000000000000000 : ℚ), (41318750000000003 / 100000000000000000 : ℚ)⟩
  r := (68661159723683 / 100000000000000 : ℚ)
  w := (3897850310987 / 2500000000000 : ℚ)
  center := (41315625000000003 / 100000000000000000 : ℚ)
  supportValue := (5272446677037563 / 10000000000000000 : ℚ)
  supportSlope := (-6086842347016841 / 2000000000000000 : ℚ)
  oldCenter := (5272446677037563 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_999
  oldLo := (26350000000000001 / 50000000000000000 : ℚ)
  oldHi := (6593750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1248]
}

def cell_9725 : Cell := { cellDefaults with
  domain := ⟨(41318750000000003 / 100000000000000000 : ℚ), (41325000000000003 / 100000000000000000 : ℚ)⟩
  r := (68661159723683 / 100000000000000 : ℚ)
  w := (3897850310987 / 2500000000000 : ℚ)
  center := (41321875000000003 / 100000000000000000 : ℚ)
  supportValue := (5270545078274589 / 10000000000000000 : ℚ)
  supportSlope := (-7604526524804811 / 2500000000000000 : ℚ)
  oldCenter := (5270545078274589 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_999
  oldLo := (6581250000000001 / 12500000000000000 : ℚ)
  oldHi := (6593750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1247, piece_1248]
}

def cell_9726 : Cell := { cellDefaults with
  domain := ⟨(41325000000000003 / 100000000000000000 : ℚ), (41331250000000003 / 100000000000000000 : ℚ)⟩
  r := (68661159723683 / 100000000000000 : ℚ)
  w := (3897850310987 / 2500000000000 : ℚ)
  center := (41328125000000003 / 100000000000000000 : ℚ)
  supportValue := (5268644314941983 / 10000000000000000 : ℚ)
  supportSlope := (-30405128403785397 / 10000000000000000 : ℚ)
  oldCenter := (5268644314941983 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_999
  oldLo := (6581250000000001 / 12500000000000000 : ℚ)
  oldHi := (26350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1247]
}

def cell_9727 : Cell := { cellDefaults with
  domain := ⟨(41331250000000003 / 100000000000000000 : ℚ), (41337500000000003 / 100000000000000000 : ℚ)⟩
  r := (68661159723683 / 100000000000000 : ℚ)
  w := (3897850310987 / 2500000000000 : ℚ)
  center := (41334375000000003 / 100000000000000000 : ℚ)
  supportValue := (2633372266832429 / 5000000000000000 : ℚ)
  supportSlope := (-30387858954448177 / 10000000000000000 : ℚ)
  oldCenter := (2633372266832429 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_999
  oldLo := (6581250000000001 / 12500000000000000 : ℚ)
  oldHi := (26350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1247]
}

def cell_9728 : Cell := { cellDefaults with
  domain := ⟨(41337500000000003 / 100000000000000000 : ℚ), (41343750000000003 / 100000000000000000 : ℚ)⟩
  r := (68661159723683 / 100000000000000 : ℚ)
  w := (3897850310987 / 2500000000000 : ℚ)
  center := (41340625000000003 / 100000000000000000 : ℚ)
  supportValue := (1316211450750411 / 2500000000000000 : ℚ)
  supportSlope := (-3037379744604607 / 1000000000000000 : ℚ)
  oldCenter := (1316211450750411 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_999
  oldLo := (26300000000000001 / 50000000000000000 : ℚ)
  oldHi := (26350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1246, piece_1247]
}

def cell_9729 : Cell := { cellDefaults with
  domain := ⟨(41343750000000003 / 100000000000000000 : ℚ), (41350000000000003 / 100000000000000000 : ℚ)⟩
  r := (68661159723683 / 100000000000000 : ℚ)
  w := (3897850310987 / 2500000000000 : ℚ)
  center := (41346875000000003 / 100000000000000000 : ℚ)
  supportValue := (1315736959041079 / 2500000000000000 : ℚ)
  supportSlope := (-15179415761075177 / 5000000000000000 : ℚ)
  oldCenter := (1315736959041079 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_999
  oldLo := (26300000000000001 / 50000000000000000 : ℚ)
  oldHi := (6581250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1246]
}

def cell_9730 : Cell := { cellDefaults with
  domain := ⟨(41350000000000003 / 100000000000000000 : ℚ), (165424301675977663 / 400000000000000000 : ℚ)⟩
  r := (6861731129851 / 10000000000000 : ℚ)
  w := (15585093239357 / 10000000000000 : ℚ)
  center := (13232972067039107 / 32000000000000000 : ℚ)
  supportValue := (5268945992614199 / 10000000000000000 : ℚ)
  supportSlope := (-30388116289702913 / 10000000000000000 : ℚ)
  oldCenter := (5268945992614199 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1000
  oldLo := (6581250000000001 / 12500000000000000 : ℚ)
  oldHi := (26350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1247]
}

def cell_9731 : Cell := { cellDefaults with
  domain := ⟨(165424301675977663 / 400000000000000000 : ℚ), (82724301675977657 / 200000000000000000 : ℚ)⟩
  r := (6861731129851 / 10000000000000 : ℚ)
  w := (15585093239357 / 10000000000000 : ℚ)
  center := (330872905027932977 / 800000000000000000 : ℚ)
  supportValue := (5267100295954309 / 10000000000000000 : ℚ)
  supportSlope := (-759283884712627 / 250000000000000 : ℚ)
  oldCenter := (5267100295954309 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1000
  oldLo := (6581250000000001 / 12500000000000000 : ℚ)
  oldHi := (26350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1247]
}

def cell_9732 : Cell := { cellDefaults with
  domain := ⟨(82724301675977657 / 200000000000000000 : ℚ), (20687150837988827 / 50000000000000000 : ℚ)⟩
  r := (6861731129851 / 10000000000000 : ℚ)
  w := (15585093239357 / 10000000000000 : ℚ)
  center := (33094581005586593 / 80000000000000000 : ℚ)
  supportValue := (1316084305841873 / 2500000000000000 : ℚ)
  supportSlope := (-3793746422633073 / 1250000000000000 : ℚ)
  oldCenter := (1316084305841873 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1000
  oldLo := (26300000000000001 / 50000000000000000 : ℚ)
  oldHi := (26350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1246, piece_1247]
}

def cell_9733 : Cell := { cellDefaults with
  domain := ⟨(20687150837988827 / 50000000000000000 : ℚ), (41375000000000003 / 100000000000000000 : ℚ)⟩
  r := (6861731129851 / 10000000000000 : ℚ)
  w := (15585093239357 / 10000000000000 : ℚ)
  center := (82749301675977657 / 200000000000000000 : ℚ)
  supportValue := (2631191541682101 / 5000000000000000 : ℚ)
  supportSlope := (-947937813401781 / 312500000000000 : ℚ)
  oldCenter := (2631191541682101 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1001
  oldLo := (26300000000000001 / 50000000000000000 : ℚ)
  oldHi := (6581250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1246]
}

def cell_9734 : Cell := { cellDefaults with
  domain := ⟨(41375000000000003 / 100000000000000000 : ℚ), (41381250000000003 / 100000000000000000 : ℚ)⟩
  r := (6861731129851 / 10000000000000 : ℚ)
  w := (15585093239357 / 10000000000000 : ℚ)
  center := (41378125000000003 / 100000000000000000 : ℚ)
  supportValue := (5261330449083141 / 10000000000000000 : ℚ)
  supportSlope := (-30324443362346187 / 10000000000000000 : ℚ)
  oldCenter := (5261330449083141 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1001
  oldLo := (26300000000000001 / 50000000000000000 : ℚ)
  oldHi := (6581250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1246]
}

def cell_9735 : Cell := { cellDefaults with
  domain := ⟨(41381250000000003 / 100000000000000000 : ℚ), (41387500000000003 / 100000000000000000 : ℚ)⟩
  r := (6861731129851 / 10000000000000 : ℚ)
  w := (15585093239357 / 10000000000000 : ℚ)
  center := (41384375000000003 / 100000000000000000 : ℚ)
  supportValue := (5259435605779701 / 10000000000000000 : ℚ)
  supportSlope := (-3031162877466187 / 1000000000000000 : ℚ)
  oldCenter := (5259435605779701 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1001
  oldLo := (6568750000000001 / 12500000000000000 : ℚ)
  oldHi := (6581250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1245, piece_1246]
}

def cell_9736 : Cell := { cellDefaults with
  domain := ⟨(41387500000000003 / 100000000000000000 : ℚ), (41393750000000003 / 100000000000000000 : ℚ)⟩
  r := (6861731129851 / 10000000000000 : ℚ)
  w := (15585093239357 / 10000000000000 : ℚ)
  center := (41390625000000003 / 100000000000000000 : ℚ)
  supportValue := (1314385399278447 / 2500000000000000 : ℚ)
  supportSlope := (-7573881884255229 / 2500000000000000 : ℚ)
  oldCenter := (1314385399278447 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1001
  oldLo := (6568750000000001 / 12500000000000000 : ℚ)
  oldHi := (26300000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1245]
}

def cell_9737 : Cell := { cellDefaults with
  domain := ⟨(41393750000000003 / 100000000000000000 : ℚ), (41400000000000003 / 100000000000000000 : ℚ)⟩
  r := (6861731129851 / 10000000000000 : ℚ)
  w := (15585093239357 / 10000000000000 : ℚ)
  center := (41396875000000003 / 100000000000000000 : ℚ)
  supportValue := (5255648663406531 / 10000000000000000 : ℚ)
  supportSlope := (-3027920859437927 / 1000000000000000 : ℚ)
  oldCenter := (5255648663406531 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1001
  oldLo := (26250000000000001 / 50000000000000000 : ℚ)
  oldHi := (26300000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1244, piece_1245]
}

def cell_9738 : Cell := { cellDefaults with
  domain := ⟨(41400000000000003 / 100000000000000000 : ℚ), (13250000000000001 / 32000000000000000 : ℚ)⟩
  r := (17143381529753 / 25000000000000 : ℚ)
  w := (7789399490013 / 5000000000000 : ℚ)
  center := (662450000000000049 / 1600000000000000000 : ℚ)
  supportValue := (210464212390347 / 400000000000000 : ℚ)
  supportSlope := (-30307248144331673 / 10000000000000000 : ℚ)
  oldCenter := (210464212390347 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1002
  oldLo := (26300000000000001 / 50000000000000000 : ℚ)
  oldHi := (6581250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1246]
}

def cell_9739 : Cell := { cellDefaults with
  domain := ⟨(13250000000000001 / 32000000000000000 : ℚ), (165650000000000013 / 400000000000000000 : ℚ)⟩
  r := (17143381529753 / 25000000000000 : ℚ)
  w := (7789399490013 / 5000000000000 : ℚ)
  center := (662550000000000051 / 1600000000000000000 : ℚ)
  supportValue := (5259711590320887 / 10000000000000000 : ℚ)
  supportSlope := (-3786707597810337 / 1250000000000000 : ℚ)
  oldCenter := (5259711590320887 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1002
  oldLo := (6568750000000001 / 12500000000000000 : ℚ)
  oldHi := (6581250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1245, piece_1246]
}

def cell_9740 : Cell := { cellDefaults with
  domain := ⟨(165650000000000013 / 400000000000000000 : ℚ), (331350000000000027 / 800000000000000000 : ℚ)⟩
  r := (17143381529753 / 25000000000000 : ℚ)
  w := (7789399490013 / 5000000000000 : ℚ)
  center := (662650000000000053 / 1600000000000000000 : ℚ)
  supportValue := (1314454663446571 / 2500000000000000 : ℚ)
  supportSlope := (-378479835564153 / 125000000000000 : ℚ)
  oldCenter := (1314454663446571 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1002
  oldLo := (6568750000000001 / 12500000000000000 : ℚ)
  oldHi := (26300000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1245]
}

def cell_9741 : Cell := { cellDefaults with
  domain := ⟨(331350000000000027 / 800000000000000000 : ℚ), (82850000000000007 / 200000000000000000 : ℚ)⟩
  r := (17143381529753 / 25000000000000 : ℚ)
  w := (7789399490013 / 5000000000000 : ℚ)
  center := (132550000000000011 / 320000000000000000 : ℚ)
  supportValue := (656990848816931 / 1250000000000000 : ℚ)
  supportSlope := (-756532073197909 / 250000000000000 : ℚ)
  oldCenter := (656990848816931 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1002
  oldLo := (26250000000000001 / 50000000000000000 : ℚ)
  oldHi := (26300000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1244, piece_1245]
}

def cell_9742 : Cell := { cellDefaults with
  domain := ⟨(82850000000000007 / 200000000000000000 : ℚ), (331450000000000029 / 800000000000000000 : ℚ)⟩
  r := (17143381529753 / 25000000000000 : ℚ)
  w := (7789399490013 / 5000000000000 : ℚ)
  center := (662850000000000057 / 1600000000000000000 : ℚ)
  supportValue := (105080716474863 / 200000000000000 : ℚ)
  supportSlope := (-60499148329639 / 20000000000000 : ℚ)
  oldCenter := (105080716474863 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1002
  oldLo := (26250000000000001 / 50000000000000000 : ℚ)
  oldHi := (6568750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1244]
}

def cell_9743 : Cell := { cellDefaults with
  domain := ⟨(331450000000000029 / 800000000000000000 : ℚ), (33150000000000003 / 80000000000000000 : ℚ)⟩
  r := (17143381529753 / 25000000000000 : ℚ)
  w := (7789399490013 / 5000000000000 : ℚ)
  center := (662950000000000059 / 1600000000000000000 : ℚ)
  supportValue := (1050429152212017 / 2000000000000000 : ℚ)
  supportSlope := (-604648365219861 / 200000000000000 : ℚ)
  oldCenter := (1050429152212017 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1002
  oldLo := (26250000000000001 / 50000000000000000 : ℚ)
  oldHi := (6568750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1244]
}

def cell_9744 : Cell := { cellDefaults with
  domain := ⟨(33150000000000003 / 80000000000000000 : ℚ), (331550000000000031 / 800000000000000000 : ℚ)⟩
  r := (17143381529753 / 25000000000000 : ℚ)
  w := (7789399490013 / 5000000000000 : ℚ)
  center := (663050000000000061 / 1600000000000000000 : ℚ)
  supportValue := (210010270801303 / 400000000000000 : ℚ)
  supportSlope := (-377716186788827 / 125000000000000 : ℚ)
  oldCenter := (210010270801303 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1002
  oldLo := (6556250000000001 / 12500000000000000 : ℚ)
  oldHi := (6568750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1243, piece_1244]
}

def cell_9745 : Cell := { cellDefaults with
  domain := ⟨(331550000000000031 / 800000000000000000 : ℚ), (10362500000000001 / 25000000000000000 : ℚ)⟩
  r := (17143381529753 / 25000000000000 : ℚ)
  w := (7789399490013 / 5000000000000 : ℚ)
  center := (663150000000000063 / 1600000000000000000 : ℚ)
  supportValue := (5248368551559031 / 10000000000000000 : ℚ)
  supportSlope := (-30203661441987 / 10000000000000 : ℚ)
  oldCenter := (5248368551559031 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1002
  oldLo := (6556250000000001 / 12500000000000000 : ℚ)
  oldHi := (26250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1243]
}

def cell_9746 : Cell := { cellDefaults with
  domain := ⟨(10362500000000001 / 25000000000000000 : ℚ), (10364062500000001 / 25000000000000000 : ℚ)⟩
  r := (1370596044833 / 2000000000000 : ℚ)
  w := (486641186983 / 312500000000 : ℚ)
  center := (10363281250000001 / 25000000000000000 : ℚ)
  supportValue := (5254310828518883 / 10000000000000000 : ℚ)
  supportSlope := (-3023169924652791 / 1000000000000000 : ℚ)
  oldCenter := (5254310828518883 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1003
  oldLo := (26250000000000001 / 50000000000000000 : ℚ)
  oldHi := (26300000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1244, piece_1245]
}

def cell_9747 : Cell := { cellDefaults with
  domain := ⟨(10364062500000001 / 25000000000000000 : ℚ), (10365625000000001 / 25000000000000000 : ℚ)⟩
  r := (1370596044833 / 2000000000000 : ℚ)
  w := (486641186983 / 312500000000 : ℚ)
  center := (10364843750000001 / 25000000000000000 : ℚ)
  supportValue := (2626210917948717 / 5000000000000000 : ℚ)
  supportSlope := (-3021531043689407 / 1000000000000000 : ℚ)
  oldCenter := (2626210917948717 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1003
  oldLo := (26250000000000001 / 50000000000000000 : ℚ)
  oldHi := (6568750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1244]
}

def cell_9748 : Cell := { cellDefaults with
  domain := ⟨(10365625000000001 / 25000000000000000 : ℚ), (10367187500000001 / 25000000000000000 : ℚ)⟩
  r := (1370596044833 / 2000000000000 : ℚ)
  w := (486641186983 / 312500000000 : ℚ)
  center := (10366406250000001 / 25000000000000000 : ℚ)
  supportValue := (5250533913287551 / 10000000000000000 : ℚ)
  supportSlope := (-30199402149584387 / 10000000000000000 : ℚ)
  oldCenter := (5250533913287551 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1003
  oldLo := (6556250000000001 / 12500000000000000 : ℚ)
  oldHi := (6568750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1243, piece_1244]
}

def cell_9749 : Cell := { cellDefaults with
  domain := ⟨(10367187500000001 / 25000000000000000 : ℚ), (10368750000000001 / 25000000000000000 : ℚ)⟩
  r := (1370596044833 / 2000000000000 : ℚ)
  w := (486641186983 / 312500000000 : ℚ)
  center := (10367968750000001 / 25000000000000000 : ℚ)
  supportValue := (524864681226539 / 1000000000000000 : ℚ)
  supportSlope := (-3018660705347287 / 1000000000000000 : ℚ)
  oldCenter := (524864681226539 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1003
  oldLo := (6556250000000001 / 12500000000000000 : ℚ)
  oldHi := (26250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1243]
}

theorem check_9700 : cell_9700.check = true := by
  decide +kernel

theorem check_9701 : cell_9701.check = true := by
  decide +kernel

theorem check_9702 : cell_9702.check = true := by
  decide +kernel

theorem check_9703 : cell_9703.check = true := by
  decide +kernel

theorem check_9704 : cell_9704.check = true := by
  decide +kernel

theorem check_9705 : cell_9705.check = true := by
  decide +kernel

theorem check_9706 : cell_9706.check = true := by
  decide +kernel

theorem check_9707 : cell_9707.check = true := by
  decide +kernel

theorem check_9708 : cell_9708.check = true := by
  decide +kernel

theorem check_9709 : cell_9709.check = true := by
  decide +kernel

theorem check_9710 : cell_9710.check = true := by
  decide +kernel

theorem check_9711 : cell_9711.check = true := by
  decide +kernel

theorem check_9712 : cell_9712.check = true := by
  decide +kernel

theorem check_9713 : cell_9713.check = true := by
  decide +kernel

theorem check_9714 : cell_9714.check = true := by
  decide +kernel

theorem check_9715 : cell_9715.check = true := by
  decide +kernel

theorem check_9716 : cell_9716.check = true := by
  decide +kernel

theorem check_9717 : cell_9717.check = true := by
  decide +kernel

theorem check_9718 : cell_9718.check = true := by
  decide +kernel

theorem check_9719 : cell_9719.check = true := by
  decide +kernel

theorem check_9720 : cell_9720.check = true := by
  decide +kernel

theorem check_9721 : cell_9721.check = true := by
  decide +kernel

theorem check_9722 : cell_9722.check = true := by
  decide +kernel

theorem check_9723 : cell_9723.check = true := by
  decide +kernel

theorem check_9724 : cell_9724.check = true := by
  decide +kernel

theorem check_9725 : cell_9725.check = true := by
  decide +kernel

theorem check_9726 : cell_9726.check = true := by
  decide +kernel

theorem check_9727 : cell_9727.check = true := by
  decide +kernel

theorem check_9728 : cell_9728.check = true := by
  decide +kernel

theorem check_9729 : cell_9729.check = true := by
  decide +kernel

theorem check_9730 : cell_9730.check = true := by
  decide +kernel

theorem check_9731 : cell_9731.check = true := by
  decide +kernel

theorem check_9732 : cell_9732.check = true := by
  decide +kernel

theorem check_9733 : cell_9733.check = true := by
  decide +kernel

theorem check_9734 : cell_9734.check = true := by
  decide +kernel

theorem check_9735 : cell_9735.check = true := by
  decide +kernel

theorem check_9736 : cell_9736.check = true := by
  decide +kernel

theorem check_9737 : cell_9737.check = true := by
  decide +kernel

theorem check_9738 : cell_9738.check = true := by
  decide +kernel

theorem check_9739 : cell_9739.check = true := by
  decide +kernel

theorem check_9740 : cell_9740.check = true := by
  decide +kernel

theorem check_9741 : cell_9741.check = true := by
  decide +kernel

theorem check_9742 : cell_9742.check = true := by
  decide +kernel

theorem check_9743 : cell_9743.check = true := by
  decide +kernel

theorem check_9744 : cell_9744.check = true := by
  decide +kernel

theorem check_9745 : cell_9745.check = true := by
  decide +kernel

theorem check_9746 : cell_9746.check = true := by
  decide +kernel

theorem check_9747 : cell_9747.check = true := by
  decide +kernel

theorem check_9748 : cell_9748.check = true := by
  decide +kernel

theorem check_9749 : cell_9749.check = true := by
  decide +kernel

def cells : List Cell := [cell_9700, cell_9701, cell_9702, cell_9703, cell_9704, cell_9705, cell_9706, cell_9707, cell_9708, cell_9709, cell_9710, cell_9711, cell_9712, cell_9713, cell_9714, cell_9715, cell_9716, cell_9717, cell_9718, cell_9719, cell_9720, cell_9721, cell_9722, cell_9723, cell_9724, cell_9725, cell_9726, cell_9727, cell_9728, cell_9729, cell_9730, cell_9731, cell_9732, cell_9733, cell_9734, cell_9735, cell_9736, cell_9737, cell_9738, cell_9739, cell_9740, cell_9741, cell_9742, cell_9743, cell_9744, cell_9745, cell_9746, cell_9747, cell_9748, cell_9749]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9700, check_9701, check_9702, check_9703, check_9704, check_9705, check_9706, check_9707, check_9708, check_9709, check_9710, check_9711, check_9712, check_9713, check_9714, check_9715, check_9716, check_9717, check_9718, check_9719, check_9720, check_9721, check_9722, check_9723, check_9724, check_9725, check_9726, check_9727, check_9728, check_9729, check_9730, check_9731, check_9732, check_9733, check_9734, check_9735, check_9736, check_9737, check_9738, check_9739, check_9740, check_9741, check_9742, check_9743, check_9744, check_9745, check_9746, check_9747, check_9748, check_9749, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0194

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0194
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0194
open AnalyticBounds.ExpressionCertificate

theorem linked_9700 : Linked cell_9700 pieces := by
  link_source cell_9700 with piece_996 using piece_996_mem, ⟨piece_1252_mem, piece_1253_mem⟩

theorem linked_9701 : Linked cell_9701 pieces := by
  link_source cell_9701 with piece_996 using piece_996_mem, piece_1252_mem

theorem linked_9702 : Linked cell_9702 pieces := by
  link_source cell_9702 with piece_996 using piece_996_mem, ⟨piece_1251_mem, piece_1252_mem⟩

theorem linked_9703 : Linked cell_9703 pieces := by
  link_source cell_9703 with piece_996 using piece_996_mem, piece_1251_mem

theorem linked_9704 : Linked cell_9704 pieces := by
  link_source cell_9704 with piece_996 using piece_996_mem, piece_1251_mem

theorem linked_9705 : Linked cell_9705 pieces := by
  link_source cell_9705 with piece_996 using piece_996_mem, ⟨piece_1250_mem, piece_1251_mem⟩

theorem linked_9706 : Linked cell_9706 pieces := by
  link_source cell_9706 with piece_997 using piece_997_mem, piece_1252_mem

theorem linked_9707 : Linked cell_9707 pieces := by
  link_source cell_9707 with piece_997 using piece_997_mem, ⟨piece_1251_mem, piece_1252_mem⟩

theorem linked_9708 : Linked cell_9708 pieces := by
  link_source cell_9708 with piece_997 using piece_997_mem, piece_1251_mem

theorem linked_9709 : Linked cell_9709 pieces := by
  link_source cell_9709 with piece_997 using piece_997_mem, ⟨piece_1250_mem, piece_1251_mem⟩

theorem linked_9710 : Linked cell_9710 pieces := by
  link_source cell_9710 with piece_997 using piece_997_mem, piece_1250_mem

theorem linked_9711 : Linked cell_9711 pieces := by
  link_source cell_9711 with piece_997 using piece_997_mem, piece_1250_mem

theorem linked_9712 : Linked cell_9712 pieces := by
  link_source cell_9712 with piece_997 using piece_997_mem, ⟨piece_1249_mem, piece_1250_mem⟩

theorem linked_9713 : Linked cell_9713 pieces := by
  link_source cell_9713 with piece_997 using piece_997_mem, piece_1249_mem

theorem linked_9714 : Linked cell_9714 pieces := by
  link_source cell_9714 with piece_998 using piece_998_mem, piece_1250_mem

theorem linked_9715 : Linked cell_9715 pieces := by
  link_source cell_9715 with piece_998 using piece_998_mem, piece_1250_mem

theorem linked_9716 : Linked cell_9716 pieces := by
  link_source cell_9716 with piece_998 using piece_998_mem, ⟨piece_1249_mem, piece_1250_mem⟩

theorem linked_9717 : Linked cell_9717 pieces := by
  link_source cell_9717 with piece_998 using piece_998_mem, piece_1249_mem

theorem linked_9718 : Linked cell_9718 pieces := by
  link_source cell_9718 with piece_998 using piece_998_mem, piece_1249_mem

theorem linked_9719 : Linked cell_9719 pieces := by
  link_source cell_9719 with piece_998 using piece_998_mem, ⟨piece_1248_mem, piece_1249_mem⟩

theorem linked_9720 : Linked cell_9720 pieces := by
  link_source cell_9720 with piece_998 using piece_998_mem, piece_1248_mem

theorem linked_9721 : Linked cell_9721 pieces := by
  link_source cell_9721 with piece_998 using piece_998_mem, ⟨piece_1247_mem, piece_1248_mem⟩

theorem linked_9722 : Linked cell_9722 pieces := by
  link_source cell_9722 with piece_999 using piece_999_mem, piece_1249_mem

theorem linked_9723 : Linked cell_9723 pieces := by
  link_source cell_9723 with piece_999 using piece_999_mem, ⟨piece_1248_mem, piece_1249_mem⟩

theorem linked_9724 : Linked cell_9724 pieces := by
  link_source cell_9724 with piece_999 using piece_999_mem, piece_1248_mem

theorem linked_9725 : Linked cell_9725 pieces := by
  link_source cell_9725 with piece_999 using piece_999_mem, ⟨piece_1247_mem, piece_1248_mem⟩

theorem linked_9726 : Linked cell_9726 pieces := by
  link_source cell_9726 with piece_999 using piece_999_mem, piece_1247_mem

theorem linked_9727 : Linked cell_9727 pieces := by
  link_source cell_9727 with piece_999 using piece_999_mem, piece_1247_mem

theorem linked_9728 : Linked cell_9728 pieces := by
  link_source cell_9728 with piece_999 using piece_999_mem, ⟨piece_1246_mem, piece_1247_mem⟩

theorem linked_9729 : Linked cell_9729 pieces := by
  link_source cell_9729 with piece_999 using piece_999_mem, piece_1246_mem

theorem linked_9730 : Linked cell_9730 pieces := by
  link_source cell_9730 with piece_1000 using piece_1000_mem, piece_1247_mem

theorem linked_9731 : Linked cell_9731 pieces := by
  link_source cell_9731 with piece_1000 using piece_1000_mem, piece_1247_mem

theorem linked_9732 : Linked cell_9732 pieces := by
  link_source cell_9732 with piece_1000 using piece_1000_mem, ⟨piece_1246_mem, piece_1247_mem⟩

theorem linked_9733 : Linked cell_9733 pieces := by
  link_source cell_9733 with piece_1001 using piece_1001_mem, piece_1246_mem

theorem linked_9734 : Linked cell_9734 pieces := by
  link_source cell_9734 with piece_1001 using piece_1001_mem, piece_1246_mem

theorem linked_9735 : Linked cell_9735 pieces := by
  link_source cell_9735 with piece_1001 using piece_1001_mem, ⟨piece_1245_mem, piece_1246_mem⟩

theorem linked_9736 : Linked cell_9736 pieces := by
  link_source cell_9736 with piece_1001 using piece_1001_mem, piece_1245_mem

theorem linked_9737 : Linked cell_9737 pieces := by
  link_source cell_9737 with piece_1001 using piece_1001_mem, ⟨piece_1244_mem, piece_1245_mem⟩

theorem linked_9738 : Linked cell_9738 pieces := by
  link_source cell_9738 with piece_1002 using piece_1002_mem, piece_1246_mem

theorem linked_9739 : Linked cell_9739 pieces := by
  link_source cell_9739 with piece_1002 using piece_1002_mem, ⟨piece_1245_mem, piece_1246_mem⟩

theorem linked_9740 : Linked cell_9740 pieces := by
  link_source cell_9740 with piece_1002 using piece_1002_mem, piece_1245_mem

theorem linked_9741 : Linked cell_9741 pieces := by
  link_source cell_9741 with piece_1002 using piece_1002_mem, ⟨piece_1244_mem, piece_1245_mem⟩

theorem linked_9742 : Linked cell_9742 pieces := by
  link_source cell_9742 with piece_1002 using piece_1002_mem, piece_1244_mem

theorem linked_9743 : Linked cell_9743 pieces := by
  link_source cell_9743 with piece_1002 using piece_1002_mem, piece_1244_mem

theorem linked_9744 : Linked cell_9744 pieces := by
  link_source cell_9744 with piece_1002 using piece_1002_mem, ⟨piece_1243_mem, piece_1244_mem⟩

theorem linked_9745 : Linked cell_9745 pieces := by
  link_source cell_9745 with piece_1002 using piece_1002_mem, piece_1243_mem

theorem linked_9746 : Linked cell_9746 pieces := by
  link_source cell_9746 with piece_1003 using piece_1003_mem, ⟨piece_1244_mem, piece_1245_mem⟩

theorem linked_9747 : Linked cell_9747 pieces := by
  link_source cell_9747 with piece_1003 using piece_1003_mem, piece_1244_mem

theorem linked_9748 : Linked cell_9748 pieces := by
  link_source cell_9748 with piece_1003 using piece_1003_mem, ⟨piece_1243_mem, piece_1244_mem⟩

theorem linked_9749 : Linked cell_9749 pieces := by
  link_source cell_9749 with piece_1003 using piece_1003_mem, piece_1243_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0194.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0194.cells,List.forall_mem_cons]
  exact ⟨linked_9700, linked_9701, linked_9702, linked_9703, linked_9704, linked_9705, linked_9706, linked_9707, linked_9708, linked_9709, linked_9710, linked_9711, linked_9712, linked_9713, linked_9714, linked_9715, linked_9716, linked_9717, linked_9718, linked_9719, linked_9720, linked_9721, linked_9722, linked_9723, linked_9724, linked_9725, linked_9726, linked_9727, linked_9728, linked_9729, linked_9730, linked_9731, linked_9732, linked_9733, linked_9734, linked_9735, linked_9736, linked_9737, linked_9738, linked_9739, linked_9740, linked_9741, linked_9742, linked_9743, linked_9744, linked_9745, linked_9746, linked_9747, linked_9748, linked_9749, by simp⟩

theorem covered : covers (41162500000000003 / 100000000000000000 : ℚ) (10368750000000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0194.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0194
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0195
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(10368750000000001 / 25000000000000000 : ℚ), (10370312500000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (34243069356633 / 50000000000000 : ℚ)
  w := (15566250527517 / 10000000000000 : ℚ)
  center := (10369531250000001 / 25000000000000000 : ℚ)
  supportValue := (5246760683391751 / 10000000000000000 : ℚ)
  supportSlope := (-754237587417883 / 250000000000000 : ℚ)
  oldCenter := (5246760683391751 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1004
  oldLo := (6531250000000001 / 12500000000000000 : ℚ)
  oldHi := (26150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1238]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9750 : Cell := { cellDefaults with
  r := (1370596044833 / 2000000000000 : ℚ)
  w := (486641186983 / 312500000000 : ℚ)
  newCoefficients := coefficients_1003
  oldLo := (6556250000000001 / 12500000000000000 : ℚ)
  oldHi := (26250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1243]
}

def cell_9751 : Cell := { cellDefaults with
  domain := ⟨(10370312500000001 / 25000000000000000 : ℚ), (10371875000000001 / 25000000000000000 : ℚ)⟩
  r := (1370596044833 / 2000000000000 : ℚ)
  w := (486641186983 / 312500000000 : ℚ)
  center := (10371093750000001 / 25000000000000000 : ℚ)
  supportValue := (655609449973187 / 1250000000000000 : ℚ)
  supportSlope := (-7538887893110413 / 2500000000000000 : ℚ)
  oldCenter := (655609449973187 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1003
  oldLo := (5243575418994413 / 10000000000000000 : ℚ)
  oldHi := (26250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1242, piece_1243]
}

def cell_9752 : Cell := { cellDefaults with
  domain := ⟨(10371875000000001 / 25000000000000000 : ℚ), (10373437500000001 / 25000000000000000 : ℚ)⟩
  r := (1370596044833 / 2000000000000 : ℚ)
  w := (486641186983 / 312500000000 : ℚ)
  center := (10372656250000001 / 25000000000000000 : ℚ)
  supportValue := (1310747815386309 / 2500000000000000 : ℚ)
  supportSlope := (-1507042936434999 / 500000000000000 : ℚ)
  oldCenter := (1310747815386309 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1003
  oldLo := (26200000000000001 / 50000000000000000 : ℚ)
  oldHi := (6556250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1241, piece_1242]
}

def cell_9753 : Cell := { cellDefaults with
  domain := ⟨(10373437500000001 / 25000000000000000 : ℚ), (10375000000000001 / 25000000000000000 : ℚ)⟩
  r := (1370596044833 / 2000000000000 : ℚ)
  w := (486641186983 / 312500000000 : ℚ)
  center := (10374218750000001 / 25000000000000000 : ℚ)
  supportValue := (5241107991087529 / 10000000000000000 : ℚ)
  supportSlope := (-30123781884086043 / 10000000000000000 : ℚ)
  oldCenter := (5241107991087529 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1003
  oldLo := (26200000000000001 / 50000000000000000 : ℚ)
  oldHi := (5243575418994413 / 10000000000000000 : ℚ)
  oldPieces := [piece_1241]
}

def cell_9754 : Cell := { cellDefaults with
  domain := ⟨(10375000000000001 / 25000000000000000 : ℚ), (10376562500000001 / 25000000000000000 : ℚ)⟩
  center := (10375781250000001 / 25000000000000000 : ℚ)
  supportValue := (2623517885310929 / 5000000000000000 : ℚ)
  supportSlope := (-3015242860382017 / 1000000000000000 : ℚ)
  oldCenter := (2623517885310929 / 5000000000000000 : ℚ)
  oldLo := (6556250000000001 / 12500000000000000 : ℚ)
  oldHi := (26250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1243]
}

def cell_9755 : Cell := { cellDefaults with
  domain := ⟨(10376562500000001 / 25000000000000000 : ℚ), (10378125000000001 / 25000000000000000 : ℚ)⟩
  center := (10377343750000001 / 25000000000000000 : ℚ)
  supportValue := (5245151776494057 / 10000000000000000 : ℚ)
  supportSlope := (-30137692203062727 / 10000000000000000 : ℚ)
  oldCenter := (5245151776494057 / 10000000000000000 : ℚ)
  oldLo := (5243575418994413 / 10000000000000000 : ℚ)
  oldHi := (26250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1242, piece_1243]
}

def cell_9756 : Cell := { cellDefaults with
  domain := ⟨(10378125000000001 / 25000000000000000 : ℚ), (10379687500000001 / 25000000000000000 : ℚ)⟩
  center := (10378906250000001 / 25000000000000000 : ℚ)
  supportValue := (2621634265265909 / 5000000000000000 : ℚ)
  supportSlope := (-15061918334691171 / 5000000000000000 : ℚ)
  oldCenter := (2621634265265909 / 5000000000000000 : ℚ)
  oldLo := (26200000000000001 / 50000000000000000 : ℚ)
  oldHi := (6556250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1241, piece_1242]
}

def cell_9757 : Cell := { cellDefaults with
  domain := ⟨(10379687500000001 / 25000000000000000 : ℚ), (10381250000000001 / 25000000000000000 : ℚ)⟩
  center := (10380468750000001 / 25000000000000000 : ℚ)
  supportValue := (327586645193897 / 625000000000000 : ℚ)
  supportSlope := (-6021357306579489 / 2000000000000000 : ℚ)
  oldCenter := (327586645193897 / 625000000000000 : ℚ)
  oldLo := (26200000000000001 / 50000000000000000 : ℚ)
  oldHi := (5243575418994413 / 10000000000000000 : ℚ)
  oldPieces := [piece_1241]
}

def cell_9758 : Cell := { cellDefaults with
  domain := ⟨(10381250000000001 / 25000000000000000 : ℚ), (10382812500000001 / 25000000000000000 : ℚ)⟩
  center := (10382031250000001 / 25000000000000000 : ℚ)
  supportValue := (5239505089361519 / 10000000000000000 : ℚ)
  supportSlope := (-3009398231935023 / 1000000000000000 : ℚ)
  oldCenter := (5239505089361519 / 10000000000000000 : ℚ)
  oldLo := (6543750000000001 / 12500000000000000 : ℚ)
  oldHi := (5243575418994413 / 10000000000000000 : ℚ)
  oldPieces := [piece_1240, piece_1241]
}

def cell_9759 : Cell := { cellDefaults with
  domain := ⟨(10382812500000001 / 25000000000000000 : ℚ), (10384375000000001 / 25000000000000000 : ℚ)⟩
  center := (10383593750000001 / 25000000000000000 : ℚ)
  supportValue := (2618812332904273 / 5000000000000000 : ℚ)
  supportSlope := (-6015649544615087 / 2000000000000000 : ℚ)
  oldCenter := (2618812332904273 / 5000000000000000 : ℚ)
  oldLo := (6543750000000001 / 12500000000000000 : ℚ)
  oldHi := (26200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1240]
}

def cell_9760 : Cell := { cellDefaults with
  domain := ⟨(10384375000000001 / 25000000000000000 : ℚ), (10385937500000001 / 25000000000000000 : ℚ)⟩
  center := (10385156250000001 / 25000000000000000 : ℚ)
  supportValue := (1047149061394983 / 2000000000000000 : ℚ)
  supportSlope := (-120247202229109 / 40000000000000 : ℚ)
  oldCenter := (1047149061394983 / 2000000000000000 : ℚ)
  oldLo := (26150000000000001 / 50000000000000000 : ℚ)
  oldHi := (26200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1239, piece_1240]
}

def cell_9761 : Cell := { cellDefaults with
  domain := ⟨(10385937500000001 / 25000000000000000 : ℚ), (10387500000000001 / 25000000000000000 : ℚ)⟩
  center := (10386718750000001 / 25000000000000000 : ℚ)
  supportValue := (2616933401005843 / 5000000000000000 : ℚ)
  supportSlope := (-7512439505639179 / 2500000000000000 : ℚ)
  oldCenter := (2616933401005843 / 5000000000000000 : ℚ)
  oldLo := (26150000000000001 / 50000000000000000 : ℚ)
  oldHi := (6543750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1239]
}

def cell_9762 : Cell := { cellDefaults with
  domain := ⟨(10387500000000001 / 25000000000000000 : ℚ), (10389062500000001 / 25000000000000000 : ℚ)⟩
  r := (8555317146369 / 12500000000000 : ℚ)
  w := (3111999293891 / 2000000000000 : ℚ)
  center := (10388281250000001 / 25000000000000000 : ℚ)
  supportValue := (2619890058123907 / 5000000000000000 : ℚ)
  supportSlope := (-30076155601861387 / 10000000000000000 : ℚ)
  oldCenter := (2619890058123907 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1005
  oldLo := (6543750000000001 / 12500000000000000 : ℚ)
  oldHi := (5243575418994413 / 10000000000000000 : ℚ)
  oldPieces := [piece_1240, piece_1241]
}

def cell_9763 : Cell := { cellDefaults with
  domain := ⟨(10389062500000001 / 25000000000000000 : ℚ), (10390625000000001 / 25000000000000000 : ℚ)⟩
  r := (8555317146369 / 12500000000000 : ℚ)
  w := (3111999293891 / 2000000000000 : ℚ)
  center := (10389843750000001 / 25000000000000000 : ℚ)
  supportValue := (2618950377691243 / 5000000000000000 : ℚ)
  supportSlope := (-6012251564762039 / 2000000000000000 : ℚ)
  oldCenter := (2618950377691243 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1005
  oldLo := (6543750000000001 / 12500000000000000 : ℚ)
  oldHi := (26200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1240]
}

def cell_9764 : Cell := { cellDefaults with
  domain := ⟨(10390625000000001 / 25000000000000000 : ℚ), (10392187500000001 / 25000000000000000 : ℚ)⟩
  r := (8555317146369 / 12500000000000 : ℚ)
  w := (3111999293891 / 2000000000000 : ℚ)
  center := (10391406250000001 / 25000000000000000 : ℚ)
  supportValue := (2618011228799921 / 5000000000000000 : ℚ)
  supportSlope := (-117360382296261 / 39062500000000 : ℚ)
  oldCenter := (2618011228799921 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1005
  oldLo := (6543750000000001 / 12500000000000000 : ℚ)
  oldHi := (26200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1240]
}

def cell_9765 : Cell := { cellDefaults with
  domain := ⟨(10392187500000001 / 25000000000000000 : ℚ), (10393750000000001 / 25000000000000000 : ℚ)⟩
  r := (8555317146369 / 12500000000000 : ℚ)
  w := (3111999293891 / 2000000000000 : ℚ)
  center := (10392968750000001 / 25000000000000000 : ℚ)
  supportValue := (1046829012681733 / 2000000000000000 : ℚ)
  supportSlope := (-15016289125533433 / 5000000000000000 : ℚ)
  oldCenter := (1046829012681733 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1005
  oldLo := (26150000000000001 / 50000000000000000 : ℚ)
  oldHi := (26200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1239, piece_1240]
}

def cell_9766 : Cell := { cellDefaults with
  domain := ⟨(10393750000000001 / 25000000000000000 : ℚ), (10395312500000001 / 25000000000000000 : ℚ)⟩
  r := (8555317146369 / 12500000000000 : ℚ)
  w := (3111999293891 / 2000000000000 : ℚ)
  center := (10394531250000001 / 25000000000000000 : ℚ)
  supportValue := (2616134271358321 / 5000000000000000 : ℚ)
  supportSlope := (-3001582728746399 / 1000000000000000 : ℚ)
  oldCenter := (2616134271358321 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1005
  oldLo := (26150000000000001 / 50000000000000000 : ℚ)
  oldHi := (6543750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1239]
}

def cell_9767 : Cell := { cellDefaults with
  domain := ⟨(10395312500000001 / 25000000000000000 : ℚ), (10396875000000001 / 25000000000000000 : ℚ)⟩
  r := (8555317146369 / 12500000000000 : ℚ)
  w := (3111999293891 / 2000000000000 : ℚ)
  center := (10396093750000001 / 25000000000000000 : ℚ)
  supportValue := (5230393083579489 / 10000000000000000 : ℚ)
  supportSlope := (-15000236738291761 / 5000000000000000 : ℚ)
  oldCenter := (5230393083579489 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1005
  oldHi := (6543750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1238, piece_1239]
}

def cell_9768 : Cell := { cellDefaults with
  domain := ⟨(10396875000000001 / 25000000000000000 : ℚ), (10398437500000001 / 25000000000000000 : ℚ)⟩
  r := (8555317146369 / 12500000000000 : ℚ)
  w := (3111999293891 / 2000000000000 : ℚ)
  center := (10397656250000001 / 25000000000000000 : ℚ)
  supportValue := (1045703681956783 / 2000000000000000 : ℚ)
  supportSlope := (-2998744564987277 / 1000000000000000 : ℚ)
  oldCenter := (1045703681956783 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1005
  oldPieces := [piece_1238]
}

def cell_9769 : Cell := { cellDefaults with
  domain := ⟨(10398437500000001 / 25000000000000000 : ℚ), (10400000000000001 / 25000000000000000 : ℚ)⟩
  r := (8555317146369 / 12500000000000 : ℚ)
  w := (3111999293891 / 2000000000000 : ℚ)
  center := (10399218750000001 / 25000000000000000 : ℚ)
  supportValue := (5226644724243881 / 10000000000000000 : ℚ)
  supportSlope := (-1873154895477569 / 625000000000000 : ℚ)
  oldCenter := (5226644724243881 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1005
  oldPieces := [piece_1238]
}

def cell_9770 : Cell := { cellDefaults with
  domain := ⟨(10400000000000001 / 25000000000000000 : ℚ), (10401562500000001 / 25000000000000000 : ℚ)⟩
  r := (68398996925609 / 100000000000000 : ℚ)
  w := (15553754809227 / 10000000000000 : ℚ)
  center := (10400781250000001 / 25000000000000000 : ℚ)
  supportValue := (1046508773277857 / 2000000000000000 : ℚ)
  supportSlope := (-599977430876919 / 200000000000000 : ℚ)
  oldCenter := (1046508773277857 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1006
  oldLo := (26150000000000001 / 50000000000000000 : ℚ)
  oldHi := (6543750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1239]
}

def cell_9771 : Cell := { cellDefaults with
  domain := ⟨(10401562500000001 / 25000000000000000 : ℚ), (10403125000000001 / 25000000000000000 : ℚ)⟩
  r := (68398996925609 / 100000000000000 : ℚ)
  w := (15553754809227 / 10000000000000 : ℚ)
  center := (10402343750000001 / 25000000000000000 : ℚ)
  supportValue := (5230669466169557 / 10000000000000000 : ℚ)
  supportSlope := (-14991360698157763 / 5000000000000000 : ℚ)
  oldCenter := (5230669466169557 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1006
  oldHi := (6543750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1238, piece_1239]
}

def cell_9772 : Cell := { cellDefaults with
  domain := ⟨(10403125000000001 / 25000000000000000 : ℚ), (10404687500000001 / 25000000000000000 : ℚ)⟩
  r := (68398996925609 / 100000000000000 : ℚ)
  w := (15553754809227 / 10000000000000 : ℚ)
  center := (10403906250000001 / 25000000000000000 : ℚ)
  supportValue := (5228795901041059 / 10000000000000000 : ℚ)
  supportSlope := (-749263571457881 / 250000000000000 : ℚ)
  oldCenter := (5228795901041059 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1006
  oldPieces := [piece_1238]
}

def cell_9773 : Cell := { cellDefaults with
  domain := ⟨(10404687500000001 / 25000000000000000 : ℚ), (10406250000000001 / 25000000000000000 : ℚ)⟩
  r := (68398996925609 / 100000000000000 : ℚ)
  w := (15553754809227 / 10000000000000 : ℚ)
  center := (10405468750000001 / 25000000000000000 : ℚ)
  supportValue := (130673081777763 / 250000000000000 : ℚ)
  supportSlope := (-1198144064650819 / 400000000000000 : ℚ)
  oldCenter := (130673081777763 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1006
  oldPieces := [piece_1238]
}

def cell_9774 : Cell := { cellDefaults with
  domain := ⟨(10406250000000001 / 25000000000000000 : ℚ), (10407812500000001 / 25000000000000000 : ℚ)⟩
  r := (68398996925609 / 100000000000000 : ℚ)
  w := (15553754809227 / 10000000000000 : ℚ)
  center := (10407031250000001 / 25000000000000000 : ℚ)
  supportValue := (2612525849711953 / 5000000000000000 : ℚ)
  supportSlope := (-1496965906193637 / 500000000000000 : ℚ)
  oldCenter := (2612525849711953 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1006
  oldLo := (26100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1237, piece_1238]
}

def cell_9775 : Cell := { cellDefaults with
  domain := ⟨(10407812500000001 / 25000000000000000 : ℚ), (10409375000000001 / 25000000000000000 : ℚ)⟩
  r := (68398996925609 / 100000000000000 : ℚ)
  w := (15553754809227 / 10000000000000 : ℚ)
  center := (10408593750000001 / 25000000000000000 : ℚ)
  supportValue := (522318084607127 / 1000000000000000 : ℚ)
  supportSlope := (-748133222865377 / 250000000000000 : ℚ)
  oldCenter := (522318084607127 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1006
  oldLo := (26100000000000001 / 50000000000000000 : ℚ)
  oldHi := (6531250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1237]
}

def cell_9776 : Cell := { cellDefaults with
  domain := ⟨(10409375000000001 / 25000000000000000 : ℚ), (10410937500000001 / 25000000000000000 : ℚ)⟩
  r := (68398996925609 / 100000000000000 : ℚ)
  w := (15553754809227 / 10000000000000 : ℚ)
  center := (10410156250000001 / 25000000000000000 : ℚ)
  supportValue := (1305327760311883 / 2500000000000000 : ℚ)
  supportSlope := (-74771030421239 / 25000000000000 : ℚ)
  oldCenter := (1305327760311883 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1006
  oldLo := (26100000000000001 / 50000000000000000 : ℚ)
  oldHi := (6531250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1237]
}

def cell_9777 : Cell := { cellDefaults with
  domain := ⟨(10410937500000001 / 25000000000000000 : ℚ), (10412500000000001 / 25000000000000000 : ℚ)⟩
  r := (68398996925609 / 100000000000000 : ℚ)
  w := (15553754809227 / 10000000000000 : ℚ)
  center := (10411718750000001 / 25000000000000000 : ℚ)
  supportValue := (5219442188443671 / 10000000000000000 : ℚ)
  supportSlope := (-14947990440390413 / 5000000000000000 : ℚ)
  oldCenter := (5219442188443671 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1006
  oldLo := (52150000000000007 / 100000000000000000 : ℚ)
  oldHi := (6531250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1236, piece_1237]
}

def cell_9778 : Cell := { cellDefaults with
  domain := ⟨(10412500000000001 / 25000000000000000 : ℚ), (10414062500000001 / 25000000000000000 : ℚ)⟩
  r := (13671103434483 / 20000000000000 : ℚ)
  w := (15547527400993 / 10000000000000 : ℚ)
  center := (10413281250000001 / 25000000000000000 : ℚ)
  supportValue := (1045065346301119 / 2000000000000000 : ℚ)
  supportSlope := (-14960798574570333 / 5000000000000000 : ℚ)
  oldCenter := (1045065346301119 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1007
  oldLo := (26100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1237, piece_1238]
}

def cell_9779 : Cell := { cellDefaults with
  domain := ⟨(10414062500000001 / 25000000000000000 : ℚ), (10415625000000001 / 25000000000000000 : ℚ)⟩
  r := (13671103434483 / 20000000000000 : ℚ)
  w := (15547527400993 / 10000000000000 : ℚ)
  center := (10414843750000001 / 25000000000000000 : ℚ)
  supportValue := (1305864246216707 / 2500000000000000 : ℚ)
  supportSlope := (-2990845585262747 / 1000000000000000 : ℚ)
  oldCenter := (1305864246216707 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1007
  oldLo := (26100000000000001 / 50000000000000000 : ℚ)
  oldHi := (6531250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1237]
}

def cell_9780 : Cell := { cellDefaults with
  domain := ⟨(10415625000000001 / 25000000000000000 : ℚ), (10417187500000001 / 25000000000000000 : ℚ)⟩
  r := (13671103434483 / 20000000000000 : ℚ)
  w := (15547527400993 / 10000000000000 : ℚ)
  center := (10416406250000001 / 25000000000000000 : ℚ)
  supportValue := (5221588233795369 / 10000000000000000 : ℚ)
  supportSlope := (-5978313031619109 / 2000000000000000 : ℚ)
  oldCenter := (5221588233795369 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1007
  oldLo := (26100000000000001 / 50000000000000000 : ℚ)
  oldHi := (6531250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1237]
}

def cell_9781 : Cell := { cellDefaults with
  domain := ⟨(10417187500000001 / 25000000000000000 : ℚ), (10418750000000001 / 25000000000000000 : ℚ)⟩
  r := (13671103434483 / 20000000000000 : ℚ)
  w := (15547527400993 / 10000000000000 : ℚ)
  center := (10417968750000001 / 25000000000000000 : ℚ)
  supportValue := (5219720485182869 / 10000000000000000 : ℚ)
  supportSlope := (-2987832737524343 / 1000000000000000 : ℚ)
  oldCenter := (5219720485182869 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1007
  oldLo := (52150000000000007 / 100000000000000000 : ℚ)
  oldHi := (6531250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1236, piece_1237]
}

def cell_9782 : Cell := { cellDefaults with
  domain := ⟨(10418750000000001 / 25000000000000000 : ℚ), (10420312500000001 / 25000000000000000 : ℚ)⟩
  r := (13671103434483 / 20000000000000 : ℚ)
  w := (15547527400993 / 10000000000000 : ℚ)
  center := (10419531250000001 / 25000000000000000 : ℚ)
  supportValue := (5217853494582219 / 10000000000000000 : ℚ)
  supportSlope := (-29863400488068237 / 10000000000000000 : ℚ)
  oldCenter := (5217853494582219 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1007
  oldLo := (52150000000000007 / 100000000000000000 : ℚ)
  oldHi := (26100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1236]
}

def cell_9783 : Cell := { cellDefaults with
  domain := ⟨(10420312500000001 / 25000000000000000 : ℚ), (10421875000000001 / 25000000000000000 : ℚ)⟩
  r := (13671103434483 / 20000000000000 : ℚ)
  w := (15547527400993 / 10000000000000 : ℚ)
  center := (10421093750000001 / 25000000000000000 : ℚ)
  supportValue := (2607993779355123 / 5000000000000000 : ℚ)
  supportSlope := (-1492326708275371 / 500000000000000 : ℚ)
  oldCenter := (2607993779355123 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1007
  oldLo := (52150000000000007 / 100000000000000000 : ℚ)
  oldHi := (26100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1236]
}

def cell_9784 : Cell := { cellDefaults with
  domain := ⟨(10421875000000001 / 25000000000000000 : ℚ), (10423437500000001 / 25000000000000000 : ℚ)⟩
  r := (13671103434483 / 20000000000000 : ℚ)
  w := (15547527400993 / 10000000000000 : ℚ)
  center := (10422656250000001 / 25000000000000000 : ℚ)
  supportValue := (5214122511253821 / 10000000000000000 : ℚ)
  supportSlope := (-149175620618891 / 50000000000000 : ℚ)
  oldCenter := (5214122511253821 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1007
  oldLo := (26050000000000001 / 50000000000000000 : ℚ)
  oldHi := (26100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1235, piece_1236]
}

def cell_9785 : Cell := { cellDefaults with
  domain := ⟨(10423437500000001 / 25000000000000000 : ℚ), (10425000000000001 / 25000000000000000 : ℚ)⟩
  r := (13671103434483 / 20000000000000 : ℚ)
  w := (15547527400993 / 10000000000000 : ℚ)
  center := (10424218750000001 / 25000000000000000 : ℚ)
  supportValue := (2606129166212139 / 5000000000000000 : ℚ)
  supportSlope := (-1490921219177821 / 500000000000000 : ℚ)
  oldCenter := (2606129166212139 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1007
  oldLo := (26050000000000001 / 50000000000000000 : ℚ)
  oldHi := (52150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1235]
}

def cell_9786 : Cell := { cellDefaults with
  domain := ⟨(10425000000000001 / 25000000000000000 : ℚ), (10426562500000001 / 25000000000000000 : ℚ)⟩
  r := (68312098149389 / 100000000000000 : ℚ)
  w := (1942664130929 / 1250000000000 : ℚ)
  center := (10425781250000001 / 25000000000000000 : ℚ)
  supportValue := (5218128645424909 / 10000000000000000 : ℚ)
  supportSlope := (-746163984542747 / 250000000000000 : ℚ)
  oldCenter := (5218128645424909 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1008
  oldLo := (52150000000000007 / 100000000000000000 : ℚ)
  oldHi := (26100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1236]
}

def cell_9787 : Cell := { cellDefaults with
  domain := ⟨(10426562500000001 / 25000000000000000 : ℚ), (10428125000000001 / 25000000000000000 : ℚ)⟩
  r := (68312098149389 / 100000000000000 : ℚ)
  w := (1942664130929 / 1250000000000 : ℚ)
  center := (10427343750000001 / 25000000000000000 : ℚ)
  supportValue := (5216263761309111 / 10000000000000000 : ℚ)
  supportSlope := (-5965943814985053 / 2000000000000000 : ℚ)
  oldCenter := (5216263761309111 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1008
  oldLo := (52150000000000007 / 100000000000000000 : ℚ)
  oldHi := (26100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1236]
}

def cell_9788 : Cell := { cellDefaults with
  domain := ⟨(10428125000000001 / 25000000000000000 : ℚ), (10429687500000001 / 25000000000000000 : ℚ)⟩
  r := (68312098149389 / 100000000000000 : ℚ)
  w := (1942664130929 / 1250000000000 : ℚ)
  center := (10428906250000001 / 25000000000000000 : ℚ)
  supportValue := (5214399816038627 / 10000000000000000 : ℚ)
  supportSlope := (-3727187834257073 / 1250000000000000 : ℚ)
  oldCenter := (5214399816038627 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1008
  oldLo := (26050000000000001 / 50000000000000000 : ℚ)
  oldHi := (26100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1235, piece_1236]
}

def cell_9789 : Cell := { cellDefaults with
  domain := ⟨(10429687500000001 / 25000000000000000 : ℚ), (10431250000000001 / 25000000000000000 : ℚ)⟩
  r := (68312098149389 / 100000000000000 : ℚ)
  w := (1942664130929 / 1250000000000 : ℚ)
  center := (10430468750000001 / 25000000000000000 : ℚ)
  supportValue := (5212536685650613 / 10000000000000000 : ℚ)
  supportSlope := (-29801662303157173 / 10000000000000000 : ℚ)
  oldCenter := (5212536685650613 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1008
  oldLo := (26050000000000001 / 50000000000000000 : ℚ)
  oldHi := (52150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1235]
}

def cell_9790 : Cell := { cellDefaults with
  domain := ⟨(10431250000000001 / 25000000000000000 : ℚ), (10432812500000001 / 25000000000000000 : ℚ)⟩
  r := (68312098149389 / 100000000000000 : ℚ)
  w := (1942664130929 / 1250000000000 : ℚ)
  center := (10432031250000001 / 25000000000000000 : ℚ)
  supportValue := (5210674606842077 / 10000000000000000 : ℚ)
  supportSlope := (-595712494330769 / 200000000000000 : ℚ)
  oldCenter := (5210674606842077 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1008
  oldLo := (52050000000000007 / 100000000000000000 : ℚ)
  oldHi := (52150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1234, piece_1235]
}

def cell_9791 : Cell := { cellDefaults with
  domain := ⟨(10432812500000001 / 25000000000000000 : ℚ), (10434375000000001 / 25000000000000000 : ℚ)⟩
  r := (68312098149389 / 100000000000000 : ℚ)
  w := (1942664130929 / 1250000000000 : ℚ)
  center := (10433593750000001 / 25000000000000000 : ℚ)
  supportValue := (5208813354380707 / 10000000000000000 : ℚ)
  supportSlope := (-29773654603317823 / 10000000000000000 : ℚ)
  oldCenter := (5208813354380707 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1008
  oldLo := (52050000000000007 / 100000000000000000 : ℚ)
  oldHi := (26050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1234]
}

def cell_9792 : Cell := { cellDefaults with
  domain := ⟨(10434375000000001 / 25000000000000000 : ℚ), (10435937500000001 / 25000000000000000 : ℚ)⟩
  r := (68312098149389 / 100000000000000 : ℚ)
  w := (1942664130929 / 1250000000000 : ℚ)
  center := (10435156250000001 / 25000000000000000 : ℚ)
  supportValue := (1041390605174573 / 2000000000000000 : ℚ)
  supportSlope := (-743921111240553 / 250000000000000 : ℚ)
  oldCenter := (1041390605174573 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1008
  oldLo := (52050000000000007 / 100000000000000000 : ℚ)
  oldHi := (26050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1234]
}

def cell_9793 : Cell := { cellDefaults with
  domain := ⟨(10435937500000001 / 25000000000000000 : ℚ), (10437500000000001 / 25000000000000000 : ℚ)⟩
  r := (68312098149389 / 100000000000000 : ℚ)
  w := (1942664130929 / 1250000000000 : ℚ)
  center := (10436718750000001 / 25000000000000000 : ℚ)
  supportValue := (1041018749483519 / 2000000000000000 : ℚ)
  supportSlope := (-1858911917402839 / 625000000000000 : ℚ)
  oldCenter := (1041018749483519 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1008
  oldLo := (26000000000000001 / 50000000000000000 : ℚ)
  oldHi := (26050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1233, piece_1234]
}

def cell_9794 : Cell := { cellDefaults with
  domain := ⟨(10437500000000001 / 25000000000000000 : ℚ), (10439062500000001 / 25000000000000000 : ℚ)⟩
  r := (17067185358199 / 25000000000000 : ℚ)
  w := (15535112061023 / 10000000000000 : ℚ)
  center := (10438281250000001 / 25000000000000000 : ℚ)
  supportValue := (1302737369827583 / 2500000000000000 : ℚ)
  supportSlope := (-744201523736443 / 250000000000000 : ℚ)
  oldCenter := (1302737369827583 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1009
  oldLo := (26050000000000001 / 50000000000000000 : ℚ)
  oldHi := (52150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1235]
}

def cell_9795 : Cell := { cellDefaults with
  domain := ⟨(10439062500000001 / 25000000000000000 : ℚ), (10440625000000001 / 25000000000000000 : ℚ)⟩
  r := (17067185358199 / 25000000000000 : ℚ)
  w := (15535112061023 / 10000000000000 : ℚ)
  center := (10439843750000001 / 25000000000000000 : ℚ)
  supportValue := (2604544663552509 / 5000000000000000 : ℚ)
  supportSlope := (-743921058592889 / 250000000000000 : ℚ)
  oldCenter := (2604544663552509 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1009
  oldLo := (52050000000000007 / 100000000000000000 : ℚ)
  oldHi := (52150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1234, piece_1235]
}

def cell_9796 : Cell := { cellDefaults with
  domain := ⟨(10440625000000001 / 25000000000000000 : ℚ), (10442187500000001 / 25000000000000000 : ℚ)⟩
  r := (17067185358199 / 25000000000000 : ℚ)
  w := (15535112061023 / 10000000000000 : ℚ)
  center := (10441406250000001 / 25000000000000000 : ℚ)
  supportValue := (5207230045192573 / 10000000000000000 : ℚ)
  supportSlope := (-92937849584529 / 31250000000000 : ℚ)
  oldCenter := (5207230045192573 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1009
  oldLo := (52050000000000007 / 100000000000000000 : ℚ)
  oldHi := (26050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1234]
}

def cell_9797 : Cell := { cellDefaults with
  domain := ⟨(10442187500000001 / 25000000000000000 : ℚ), (10443750000000001 / 25000000000000000 : ℚ)⟩
  r := (17067185358199 / 25000000000000 : ℚ)
  w := (15535112061023 / 10000000000000 : ℚ)
  center := (10442968750000001 / 25000000000000000 : ℚ)
  supportValue := (5205371811715943 / 10000000000000000 : ℚ)
  supportSlope := (-29725039977464007 / 10000000000000000 : ℚ)
  oldCenter := (5205371811715943 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1009
  oldLo := (26000000000000001 / 50000000000000000 : ℚ)
  oldHi := (26050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1233, piece_1234]
}

def cell_9798 : Cell := { cellDefaults with
  domain := ⟨(10443750000000001 / 25000000000000000 : ℚ), (10445312500000001 / 25000000000000000 : ℚ)⟩
  r := (17067185358199 / 25000000000000 : ℚ)
  w := (15535112061023 / 10000000000000 : ℚ)
  center := (10444531250000001 / 25000000000000000 : ℚ)
  supportValue := (104070286880197 / 200000000000000 : ℚ)
  supportSlope := (-29712211805872357 / 10000000000000000 : ℚ)
  oldCenter := (104070286880197 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1009
  oldLo := (26000000000000001 / 50000000000000000 : ℚ)
  oldHi := (52050000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1233]
}

def cell_9799 : Cell := { cellDefaults with
  domain := ⟨(10445312500000001 / 25000000000000000 : ℚ), (10446875000000001 / 25000000000000000 : ℚ)⟩
  r := (17067185358199 / 25000000000000 : ℚ)
  w := (15535112061023 / 10000000000000 : ℚ)
  center := (10446093750000001 / 25000000000000000 : ℚ)
  supportValue := (5201657854105871 / 10000000000000000 : ℚ)
  supportSlope := (-1855965746866417 / 625000000000000 : ℚ)
  oldCenter := (5201657854105871 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1009
  oldLo := (26000000000000001 / 50000000000000000 : ℚ)
  oldHi := (52050000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1233]
}

theorem check_9750 : cell_9750.check = true := by
  decide +kernel

theorem check_9751 : cell_9751.check = true := by
  decide +kernel

theorem check_9752 : cell_9752.check = true := by
  decide +kernel

theorem check_9753 : cell_9753.check = true := by
  decide +kernel

theorem check_9754 : cell_9754.check = true := by
  decide +kernel

theorem check_9755 : cell_9755.check = true := by
  decide +kernel

theorem check_9756 : cell_9756.check = true := by
  decide +kernel

theorem check_9757 : cell_9757.check = true := by
  decide +kernel

theorem check_9758 : cell_9758.check = true := by
  decide +kernel

theorem check_9759 : cell_9759.check = true := by
  decide +kernel

theorem check_9760 : cell_9760.check = true := by
  decide +kernel

theorem check_9761 : cell_9761.check = true := by
  decide +kernel

theorem check_9762 : cell_9762.check = true := by
  decide +kernel

theorem check_9763 : cell_9763.check = true := by
  decide +kernel

theorem check_9764 : cell_9764.check = true := by
  decide +kernel

theorem check_9765 : cell_9765.check = true := by
  decide +kernel

theorem check_9766 : cell_9766.check = true := by
  decide +kernel

theorem check_9767 : cell_9767.check = true := by
  decide +kernel

theorem check_9768 : cell_9768.check = true := by
  decide +kernel

theorem check_9769 : cell_9769.check = true := by
  decide +kernel

theorem check_9770 : cell_9770.check = true := by
  decide +kernel

theorem check_9771 : cell_9771.check = true := by
  decide +kernel

theorem check_9772 : cell_9772.check = true := by
  decide +kernel

theorem check_9773 : cell_9773.check = true := by
  decide +kernel

theorem check_9774 : cell_9774.check = true := by
  decide +kernel

theorem check_9775 : cell_9775.check = true := by
  decide +kernel

theorem check_9776 : cell_9776.check = true := by
  decide +kernel

theorem check_9777 : cell_9777.check = true := by
  decide +kernel

theorem check_9778 : cell_9778.check = true := by
  decide +kernel

theorem check_9779 : cell_9779.check = true := by
  decide +kernel

theorem check_9780 : cell_9780.check = true := by
  decide +kernel

theorem check_9781 : cell_9781.check = true := by
  decide +kernel

theorem check_9782 : cell_9782.check = true := by
  decide +kernel

theorem check_9783 : cell_9783.check = true := by
  decide +kernel

theorem check_9784 : cell_9784.check = true := by
  decide +kernel

theorem check_9785 : cell_9785.check = true := by
  decide +kernel

theorem check_9786 : cell_9786.check = true := by
  decide +kernel

theorem check_9787 : cell_9787.check = true := by
  decide +kernel

theorem check_9788 : cell_9788.check = true := by
  decide +kernel

theorem check_9789 : cell_9789.check = true := by
  decide +kernel

theorem check_9790 : cell_9790.check = true := by
  decide +kernel

theorem check_9791 : cell_9791.check = true := by
  decide +kernel

theorem check_9792 : cell_9792.check = true := by
  decide +kernel

theorem check_9793 : cell_9793.check = true := by
  decide +kernel

theorem check_9794 : cell_9794.check = true := by
  decide +kernel

theorem check_9795 : cell_9795.check = true := by
  decide +kernel

theorem check_9796 : cell_9796.check = true := by
  decide +kernel

theorem check_9797 : cell_9797.check = true := by
  decide +kernel

theorem check_9798 : cell_9798.check = true := by
  decide +kernel

theorem check_9799 : cell_9799.check = true := by
  decide +kernel

def cells : List Cell := [cell_9750, cell_9751, cell_9752, cell_9753, cell_9754, cell_9755, cell_9756, cell_9757, cell_9758, cell_9759, cell_9760, cell_9761, cell_9762, cell_9763, cell_9764, cell_9765, cell_9766, cell_9767, cell_9768, cell_9769, cell_9770, cell_9771, cell_9772, cell_9773, cell_9774, cell_9775, cell_9776, cell_9777, cell_9778, cell_9779, cell_9780, cell_9781, cell_9782, cell_9783, cell_9784, cell_9785, cell_9786, cell_9787, cell_9788, cell_9789, cell_9790, cell_9791, cell_9792, cell_9793, cell_9794, cell_9795, cell_9796, cell_9797, cell_9798, cell_9799]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9750, check_9751, check_9752, check_9753, check_9754, check_9755, check_9756, check_9757, check_9758, check_9759, check_9760, check_9761, check_9762, check_9763, check_9764, check_9765, check_9766, check_9767, check_9768, check_9769, check_9770, check_9771, check_9772, check_9773, check_9774, check_9775, check_9776, check_9777, check_9778, check_9779, check_9780, check_9781, check_9782, check_9783, check_9784, check_9785, check_9786, check_9787, check_9788, check_9789, check_9790, check_9791, check_9792, check_9793, check_9794, check_9795, check_9796, check_9797, check_9798, check_9799, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0195

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0195
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0195
open AnalyticBounds.ExpressionCertificate

theorem linked_9750 : Linked cell_9750 pieces := by
  link_source cell_9750 with piece_1003 using piece_1003_mem, piece_1243_mem

theorem linked_9751 : Linked cell_9751 pieces := by
  link_source cell_9751 with piece_1003 using piece_1003_mem, ⟨piece_1242_mem, piece_1243_mem⟩

theorem linked_9752 : Linked cell_9752 pieces := by
  link_source cell_9752 with piece_1003 using piece_1003_mem, ⟨piece_1241_mem, piece_1242_mem⟩

theorem linked_9753 : Linked cell_9753 pieces := by
  link_source cell_9753 with piece_1003 using piece_1003_mem, piece_1241_mem

theorem linked_9754 : Linked cell_9754 pieces := by
  link_source cell_9754 with piece_1004 using piece_1004_mem, piece_1243_mem

theorem linked_9755 : Linked cell_9755 pieces := by
  link_source cell_9755 with piece_1004 using piece_1004_mem, ⟨piece_1242_mem, piece_1243_mem⟩

theorem linked_9756 : Linked cell_9756 pieces := by
  link_source cell_9756 with piece_1004 using piece_1004_mem, ⟨piece_1241_mem, piece_1242_mem⟩

theorem linked_9757 : Linked cell_9757 pieces := by
  link_source cell_9757 with piece_1004 using piece_1004_mem, piece_1241_mem

theorem linked_9758 : Linked cell_9758 pieces := by
  link_source cell_9758 with piece_1004 using piece_1004_mem, ⟨piece_1240_mem, piece_1241_mem⟩

theorem linked_9759 : Linked cell_9759 pieces := by
  link_source cell_9759 with piece_1004 using piece_1004_mem, piece_1240_mem

theorem linked_9760 : Linked cell_9760 pieces := by
  link_source cell_9760 with piece_1004 using piece_1004_mem, ⟨piece_1239_mem, piece_1240_mem⟩

theorem linked_9761 : Linked cell_9761 pieces := by
  link_source cell_9761 with piece_1004 using piece_1004_mem, piece_1239_mem

theorem linked_9762 : Linked cell_9762 pieces := by
  link_source cell_9762 with piece_1005 using piece_1005_mem, ⟨piece_1240_mem, piece_1241_mem⟩

theorem linked_9763 : Linked cell_9763 pieces := by
  link_source cell_9763 with piece_1005 using piece_1005_mem, piece_1240_mem

theorem linked_9764 : Linked cell_9764 pieces := by
  link_source cell_9764 with piece_1005 using piece_1005_mem, piece_1240_mem

theorem linked_9765 : Linked cell_9765 pieces := by
  link_source cell_9765 with piece_1005 using piece_1005_mem, ⟨piece_1239_mem, piece_1240_mem⟩

theorem linked_9766 : Linked cell_9766 pieces := by
  link_source cell_9766 with piece_1005 using piece_1005_mem, piece_1239_mem

theorem linked_9767 : Linked cell_9767 pieces := by
  link_source cell_9767 with piece_1005 using piece_1005_mem, ⟨piece_1238_mem, piece_1239_mem⟩

theorem linked_9768 : Linked cell_9768 pieces := by
  link_source cell_9768 with piece_1005 using piece_1005_mem, piece_1238_mem

theorem linked_9769 : Linked cell_9769 pieces := by
  link_source cell_9769 with piece_1005 using piece_1005_mem, piece_1238_mem

theorem linked_9770 : Linked cell_9770 pieces := by
  link_source cell_9770 with piece_1006 using piece_1006_mem, piece_1239_mem

theorem linked_9771 : Linked cell_9771 pieces := by
  link_source cell_9771 with piece_1006 using piece_1006_mem, ⟨piece_1238_mem, piece_1239_mem⟩

theorem linked_9772 : Linked cell_9772 pieces := by
  link_source cell_9772 with piece_1006 using piece_1006_mem, piece_1238_mem

theorem linked_9773 : Linked cell_9773 pieces := by
  link_source cell_9773 with piece_1006 using piece_1006_mem, piece_1238_mem

theorem linked_9774 : Linked cell_9774 pieces := by
  link_source cell_9774 with piece_1006 using piece_1006_mem, ⟨piece_1237_mem, piece_1238_mem⟩

theorem linked_9775 : Linked cell_9775 pieces := by
  link_source cell_9775 with piece_1006 using piece_1006_mem, piece_1237_mem

theorem linked_9776 : Linked cell_9776 pieces := by
  link_source cell_9776 with piece_1006 using piece_1006_mem, piece_1237_mem

theorem linked_9777 : Linked cell_9777 pieces := by
  link_source cell_9777 with piece_1006 using piece_1006_mem, ⟨piece_1236_mem, piece_1237_mem⟩

theorem linked_9778 : Linked cell_9778 pieces := by
  link_source cell_9778 with piece_1007 using piece_1007_mem, ⟨piece_1237_mem, piece_1238_mem⟩

theorem linked_9779 : Linked cell_9779 pieces := by
  link_source cell_9779 with piece_1007 using piece_1007_mem, piece_1237_mem

theorem linked_9780 : Linked cell_9780 pieces := by
  link_source cell_9780 with piece_1007 using piece_1007_mem, piece_1237_mem

theorem linked_9781 : Linked cell_9781 pieces := by
  link_source cell_9781 with piece_1007 using piece_1007_mem, ⟨piece_1236_mem, piece_1237_mem⟩

theorem linked_9782 : Linked cell_9782 pieces := by
  link_source cell_9782 with piece_1007 using piece_1007_mem, piece_1236_mem

theorem linked_9783 : Linked cell_9783 pieces := by
  link_source cell_9783 with piece_1007 using piece_1007_mem, piece_1236_mem

theorem linked_9784 : Linked cell_9784 pieces := by
  link_source cell_9784 with piece_1007 using piece_1007_mem, ⟨piece_1235_mem, piece_1236_mem⟩

theorem linked_9785 : Linked cell_9785 pieces := by
  link_source cell_9785 with piece_1007 using piece_1007_mem, piece_1235_mem

theorem linked_9786 : Linked cell_9786 pieces := by
  link_source cell_9786 with piece_1008 using piece_1008_mem, piece_1236_mem

theorem linked_9787 : Linked cell_9787 pieces := by
  link_source cell_9787 with piece_1008 using piece_1008_mem, piece_1236_mem

theorem linked_9788 : Linked cell_9788 pieces := by
  link_source cell_9788 with piece_1008 using piece_1008_mem, ⟨piece_1235_mem, piece_1236_mem⟩

theorem linked_9789 : Linked cell_9789 pieces := by
  link_source cell_9789 with piece_1008 using piece_1008_mem, piece_1235_mem

theorem linked_9790 : Linked cell_9790 pieces := by
  link_source cell_9790 with piece_1008 using piece_1008_mem, ⟨piece_1234_mem, piece_1235_mem⟩

theorem linked_9791 : Linked cell_9791 pieces := by
  link_source cell_9791 with piece_1008 using piece_1008_mem, piece_1234_mem

theorem linked_9792 : Linked cell_9792 pieces := by
  link_source cell_9792 with piece_1008 using piece_1008_mem, piece_1234_mem

theorem linked_9793 : Linked cell_9793 pieces := by
  link_source cell_9793 with piece_1008 using piece_1008_mem, ⟨piece_1233_mem, piece_1234_mem⟩

theorem linked_9794 : Linked cell_9794 pieces := by
  link_source cell_9794 with piece_1009 using piece_1009_mem, piece_1235_mem

theorem linked_9795 : Linked cell_9795 pieces := by
  link_source cell_9795 with piece_1009 using piece_1009_mem, ⟨piece_1234_mem, piece_1235_mem⟩

theorem linked_9796 : Linked cell_9796 pieces := by
  link_source cell_9796 with piece_1009 using piece_1009_mem, piece_1234_mem

theorem linked_9797 : Linked cell_9797 pieces := by
  link_source cell_9797 with piece_1009 using piece_1009_mem, ⟨piece_1233_mem, piece_1234_mem⟩

theorem linked_9798 : Linked cell_9798 pieces := by
  link_source cell_9798 with piece_1009 using piece_1009_mem, piece_1233_mem

theorem linked_9799 : Linked cell_9799 pieces := by
  link_source cell_9799 with piece_1009 using piece_1009_mem, piece_1233_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0195.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0195.cells,List.forall_mem_cons]
  exact ⟨linked_9750, linked_9751, linked_9752, linked_9753, linked_9754, linked_9755, linked_9756, linked_9757, linked_9758, linked_9759, linked_9760, linked_9761, linked_9762, linked_9763, linked_9764, linked_9765, linked_9766, linked_9767, linked_9768, linked_9769, linked_9770, linked_9771, linked_9772, linked_9773, linked_9774, linked_9775, linked_9776, linked_9777, linked_9778, linked_9779, linked_9780, linked_9781, linked_9782, linked_9783, linked_9784, linked_9785, linked_9786, linked_9787, linked_9788, linked_9789, linked_9790, linked_9791, linked_9792, linked_9793, linked_9794, linked_9795, linked_9796, linked_9797, linked_9798, linked_9799, by simp⟩

theorem covered : covers (10368750000000001 / 25000000000000000 : ℚ) (10446875000000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0195.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0195
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0196
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(10446875000000001 / 25000000000000000 : ℚ), (10448437500000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (34112721660027 / 50000000000000 : ℚ)
  w := (15528923724119 / 10000000000000 : ℚ)
  center := (10447656250000001 / 25000000000000000 : ℚ)
  supportValue := (1039960474637473 / 2000000000000000 : ℚ)
  supportSlope := (-29682138726307983 / 10000000000000000 : ℚ)
  oldCenter := (1039960474637473 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1010
  oldLo := (12987499999999999 / 25000000000000000 : ℚ)
  oldHi := (26000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1232]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9800 : Cell := { cellDefaults with
  r := (17067185358199 / 25000000000000 : ℚ)
  w := (15535112061023 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1009
  oldHi := (52050000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1232, piece_1233]
}

def cell_9801 : Cell := { cellDefaults with
  domain := ⟨(10448437500000001 / 25000000000000000 : ℚ), (10450000000000001 / 25000000000000000 : ℚ)⟩
  r := (17067185358199 / 25000000000000 : ℚ)
  w := (15535112061023 / 10000000000000 : ℚ)
  center := (10449218750000001 / 25000000000000000 : ℚ)
  supportValue := (5197947623775987 / 10000000000000000 : ℚ)
  supportSlope := (-29667606998735607 / 10000000000000000 : ℚ)
  oldCenter := (5197947623775987 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1009
  oldPieces := [piece_1232]
}

def cell_9802 : Cell := { cellDefaults with
  domain := ⟨(10450000000000001 / 25000000000000000 : ℚ), (10451562500000001 / 25000000000000000 : ℚ)⟩
  center := (10450781250000001 / 25000000000000000 : ℚ)
  supportValue := (5203789681266193 / 10000000000000000 : ℚ)
  supportSlope := (-92798403337091 / 31250000000000 : ℚ)
  oldCenter := (5203789681266193 / 10000000000000000 : ℚ)
  oldLo := (26000000000000001 / 50000000000000000 : ℚ)
  oldHi := (52050000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1233]
}

def cell_9803 : Cell := { cellDefaults with
  domain := ⟨(10451562500000001 / 25000000000000000 : ℚ), (10453125000000001 / 25000000000000000 : ℚ)⟩
  center := (10452343750000001 / 25000000000000000 : ℚ)
  supportValue := (5201934235757663 / 10000000000000000 : ℚ)
  supportSlope := (-2967875403438569 / 1000000000000000 : ℚ)
  oldCenter := (5201934235757663 / 10000000000000000 : ℚ)
  oldLo := (26000000000000001 / 50000000000000000 : ℚ)
  oldHi := (52050000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1233]
}

def cell_9804 : Cell := { cellDefaults with
  domain := ⟨(10453125000000001 / 25000000000000000 : ℚ), (10454687500000001 / 25000000000000000 : ℚ)⟩
  center := (10453906250000001 / 25000000000000000 : ℚ)
  supportValue := (5200079835609123 / 10000000000000000 : ℚ)
  supportSlope := (-1483231036562671 / 500000000000000 : ℚ)
  oldCenter := (5200079835609123 / 10000000000000000 : ℚ)
  oldHi := (52050000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1232, piece_1233]
}

def cell_9805 : Cell := { cellDefaults with
  domain := ⟨(10454687500000001 / 25000000000000000 : ℚ), (10456250000000001 / 25000000000000000 : ℚ)⟩
  center := (10455468750000001 / 25000000000000000 : ℚ)
  supportValue := (5198226142341251 / 10000000000000000 : ℚ)
  supportSlope := (-18531849801251 / 6250000000000 : ℚ)
  oldCenter := (5198226142341251 / 10000000000000000 : ℚ)
  oldPieces := [piece_1232]
}

def cell_9806 : Cell := { cellDefaults with
  domain := ⟨(10456250000000001 / 25000000000000000 : ℚ), (10457812500000001 / 25000000000000000 : ℚ)⟩
  center := (10457031250000001 / 25000000000000000 : ℚ)
  supportValue := (649546684894823 / 1250000000000000 : ℚ)
  supportSlope := (-7408562254571649 / 2500000000000000 : ℚ)
  oldCenter := (649546684894823 / 1250000000000000 : ℚ)
  oldPieces := [piece_1232]
}

def cell_9807 : Cell := { cellDefaults with
  domain := ⟨(10457812500000001 / 25000000000000000 : ℚ), (10459375000000001 / 25000000000000000 : ℚ)⟩
  center := (10458593750000001 / 25000000000000000 : ℚ)
  supportValue := (5194521768129327 / 10000000000000000 : ℚ)
  supportSlope := (-29621848484353563 / 10000000000000000 : ℚ)
  oldCenter := (5194521768129327 / 10000000000000000 : ℚ)
  oldLo := (25950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1231, piece_1232]
}

def cell_9808 : Cell := { cellDefaults with
  domain := ⟨(10459375000000001 / 25000000000000000 : ℚ), (10460937500000001 / 25000000000000000 : ℚ)⟩
  center := (10460156250000001 / 25000000000000000 : ℚ)
  supportValue := (1038534167773717 / 2000000000000000 : ℚ)
  supportSlope := (-2960650922304353 / 1000000000000000 : ℚ)
  oldCenter := (1038534167773717 / 2000000000000000 : ℚ)
  oldLo := (25950000000000001 / 50000000000000000 : ℚ)
  oldHi := (12987499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1231]
}

def cell_9809 : Cell := { cellDefaults with
  domain := ⟨(10460937500000001 / 25000000000000000 : ℚ), (10462500000000001 / 25000000000000000 : ℚ)⟩
  center := (10461718750000001 / 25000000000000000 : ℚ)
  supportValue := (648852619134497 / 1250000000000000 : ℚ)
  supportSlope := (-5918029216545051 / 2000000000000000 : ℚ)
  oldCenter := (648852619134497 / 1250000000000000 : ℚ)
  oldLo := (259413407821229 / 500000000000000 : ℚ)
  oldHi := (12987499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1230, piece_1231]
}

def cell_9810 : Cell := { cellDefaults with
  domain := ⟨(10462500000000001 / 25000000000000000 : ℚ), (10464062500000001 / 25000000000000000 : ℚ)⟩
  r := (68182207406053 / 100000000000000 : ℚ)
  w := (7761374520451 / 5000000000000 : ℚ)
  center := (10463281250000001 / 25000000000000000 : ℚ)
  supportValue := (5196648384001827 / 10000000000000000 : ℚ)
  supportSlope := (-2961757922278707 / 1000000000000000 : ℚ)
  oldCenter := (5196648384001827 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1011
  oldPieces := [piece_1232]
}

def cell_9811 : Cell := { cellDefaults with
  domain := ⟨(10464062500000001 / 25000000000000000 : ℚ), (10465625000000001 / 25000000000000000 : ℚ)⟩
  r := (68182207406053 / 100000000000000 : ℚ)
  w := (7761374520451 / 5000000000000 : ℚ)
  center := (10464843750000001 / 25000000000000000 : ℚ)
  supportValue := (5194797766753769 / 10000000000000000 : ℚ)
  supportSlope := (-2960436140806877 / 1000000000000000 : ℚ)
  oldCenter := (5194797766753769 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1011
  oldLo := (25950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1231, piece_1232]
}

def cell_9812 : Cell := { cellDefaults with
  domain := ⟨(10465625000000001 / 25000000000000000 : ℚ), (10467187500000001 / 25000000000000000 : ℚ)⟩
  r := (68182207406053 / 100000000000000 : ℚ)
  w := (7761374520451 / 5000000000000 : ℚ)
  center := (10466406250000001 / 25000000000000000 : ℚ)
  supportValue := (5192947876870717 / 10000000000000000 : ℚ)
  supportSlope := (-29589892095387427 / 10000000000000000 : ℚ)
  oldCenter := (5192947876870717 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1011
  oldLo := (25950000000000001 / 50000000000000000 : ℚ)
  oldHi := (12987499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1231]
}

def cell_9813 : Cell := { cellDefaults with
  domain := ⟨(10467187500000001 / 25000000000000000 : ℚ), (10468750000000001 / 25000000000000000 : ℚ)⟩
  r := (68182207406053 / 100000000000000 : ℚ)
  w := (7761374520451 / 5000000000000 : ℚ)
  center := (10467968750000001 / 25000000000000000 : ℚ)
  supportValue := (162221844651331 / 312500000000000 : ℚ)
  supportSlope := (-2957323168541137 / 1000000000000000 : ℚ)
  oldCenter := (162221844651331 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1011
  oldLo := (25950000000000001 / 50000000000000000 : ℚ)
  oldHi := (12987499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1231]
}

def cell_9814 : Cell := { cellDefaults with
  domain := ⟨(10468750000000001 / 25000000000000000 : ℚ), (10470312500000001 / 25000000000000000 : ℚ)⟩
  r := (68182207406053 / 100000000000000 : ℚ)
  w := (7761374520451 / 5000000000000 : ℚ)
  center := (10469531250000001 / 25000000000000000 : ℚ)
  supportValue := (2594625538782107 / 5000000000000000 : ℚ)
  supportSlope := (-2956172118754097 / 1000000000000000 : ℚ)
  oldCenter := (2594625538782107 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1011
  oldLo := (259413407821229 / 500000000000000 : ℚ)
  oldHi := (12987499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1230, piece_1231]
}

def cell_9815 : Cell := { cellDefaults with
  domain := ⟨(10470312500000001 / 25000000000000000 : ℚ), (10471875000000001 / 25000000000000000 : ℚ)⟩
  r := (68182207406053 / 100000000000000 : ℚ)
  w := (7761374520451 / 5000000000000 : ℚ)
  center := (10471093750000001 / 25000000000000000 : ℚ)
  supportValue := (2593701978353817 / 5000000000000000 : ℚ)
  supportSlope := (-14772800076165993 / 5000000000000000 : ℚ)
  oldCenter := (2593701978353817 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1011
  oldLo := (12962499999999999 / 25000000000000000 : ℚ)
  oldHi := (25950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1229, piece_1230]
}

def cell_9816 : Cell := { cellDefaults with
  domain := ⟨(10471875000000001 / 25000000000000000 : ℚ), (10473437500000001 / 25000000000000000 : ℚ)⟩
  r := (68182207406053 / 100000000000000 : ℚ)
  w := (7761374520451 / 5000000000000 : ℚ)
  center := (10472656250000001 / 25000000000000000 : ℚ)
  supportValue := (1037111575235883 / 2000000000000000 : ℚ)
  supportSlope := (-14765046755069733 / 5000000000000000 : ℚ)
  oldCenter := (1037111575235883 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1011
  oldLo := (25900000000000001 / 50000000000000000 : ℚ)
  oldHi := (259413407821229 / 500000000000000 : ℚ)
  oldPieces := [piece_1228, piece_1229]
}

def cell_9817 : Cell := { cellDefaults with
  domain := ⟨(10473437500000001 / 25000000000000000 : ℚ), (10475000000000001 / 25000000000000000 : ℚ)⟩
  r := (68182207406053 / 100000000000000 : ℚ)
  w := (7761374520451 / 5000000000000 : ℚ)
  center := (10474218750000001 / 25000000000000000 : ℚ)
  supportValue := (1036742517349757 / 2000000000000000 : ℚ)
  supportSlope := (-7379504296878281 / 2500000000000000 : ℚ)
  oldCenter := (1036742517349757 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1011
  oldLo := (25900000000000001 / 50000000000000000 : ℚ)
  oldHi := (12962499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1228]
}

def cell_9818 : Cell := { cellDefaults with
  domain := ⟨(10475000000000001 / 25000000000000000 : ℚ), (10476562500000001 / 25000000000000000 : ℚ)⟩
  r := (34069515440319 / 50000000000000 : ℚ)
  w := (775829314983 / 500000000000 : ℚ)
  center := (10475781250000001 / 25000000000000000 : ℚ)
  supportValue := (1037905305722413 / 2000000000000000 : ℚ)
  supportSlope := (-738606687809451 / 250000000000000 : ℚ)
  oldCenter := (1037905305722413 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1012
  oldLo := (259413407821229 / 500000000000000 : ℚ)
  oldHi := (12987499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1230, piece_1231]
}

def cell_9819 : Cell := { cellDefaults with
  domain := ⟨(10476562500000001 / 25000000000000000 : ℚ), (10478125000000001 / 25000000000000000 : ℚ)⟩
  r := (34069515440319 / 50000000000000 : ℚ)
  w := (775829314983 / 500000000000 : ℚ)
  center := (10477343750000001 / 25000000000000000 : ℚ)
  supportValue := (5187680444997197 / 10000000000000000 : ℚ)
  supportSlope := (-2952901693056731 / 1000000000000000 : ℚ)
  oldCenter := (5187680444997197 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1012
  oldLo := (12962499999999999 / 25000000000000000 : ℚ)
  oldHi := (25950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1229, piece_1230]
}

def cell_9820 : Cell := { cellDefaults with
  domain := ⟨(10478125000000001 / 25000000000000000 : ℚ), (10479687500000001 / 25000000000000000 : ℚ)⟩
  r := (34069515440319 / 50000000000000 : ℚ)
  w := (775829314983 / 500000000000 : ℚ)
  center := (10478906250000001 / 25000000000000000 : ℚ)
  supportValue := (5185835400120193 / 10000000000000000 : ℚ)
  supportSlope := (-295126782583921 / 100000000000000 : ℚ)
  oldCenter := (5185835400120193 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1012
  oldLo := (25900000000000001 / 50000000000000000 : ℚ)
  oldHi := (259413407821229 / 500000000000000 : ℚ)
  oldPieces := [piece_1228, piece_1229]
}

def cell_9821 : Cell := { cellDefaults with
  domain := ⟨(10479687500000001 / 25000000000000000 : ℚ), (10481250000000001 / 25000000000000000 : ℚ)⟩
  r := (34069515440319 / 50000000000000 : ℚ)
  w := (775829314983 / 500000000000 : ℚ)
  center := (10480468750000001 / 25000000000000000 : ℚ)
  supportValue := (647998899789487 / 1250000000000000 : ℚ)
  supportSlope := (-2950148587444801 / 1000000000000000 : ℚ)
  oldCenter := (647998899789487 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1012
  oldLo := (25900000000000001 / 50000000000000000 : ℚ)
  oldHi := (12962499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1228]
}

def cell_9822 : Cell := { cellDefaults with
  domain := ⟨(10481250000000001 / 25000000000000000 : ℚ), (2096368715083799 / 5000000000000000 : ℚ)⟩
  r := (34069515440319 / 50000000000000 : ℚ)
  w := (775829314983 / 500000000000 : ℚ)
  center := (5240773393854749 / 12500000000000000 : ℚ)
  supportValue := (5182718259964967 / 10000000000000000 : ℚ)
  supportSlope := (-7372506380804127 / 2500000000000000 : ℚ)
  oldCenter := (5182718259964967 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1012
  oldLo := (25900000000000001 / 50000000000000000 : ℚ)
  oldHi := (12962499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1228]
}

def cell_9823 : Cell := { cellDefaults with
  domain := ⟨(2096368715083799 / 5000000000000000 : ℚ), (5242335893854749 / 12500000000000000 : ℚ)⟩
  r := (34069515440319 / 50000000000000 : ℚ)
  w := (775829314983 / 500000000000 : ℚ)
  center := (20966515363128493 / 50000000000000000 : ℚ)
  supportValue := (40474260720249 / 78125000000000 : ℚ)
  supportSlope := (-184209434464269 / 62500000000000 : ℚ)
  oldCenter := (40474260720249 / 78125000000000 : ℚ)
  newCoefficients := coefficients_1013
  oldLo := (12937499999999999 / 25000000000000000 : ℚ)
  oldHi := (12962499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1227, piece_1228]
}

def cell_9824 : Cell := { cellDefaults with
  domain := ⟨(5242335893854749 / 12500000000000000 : ℚ), (10487500000000001 / 25000000000000000 : ℚ)⟩
  r := (34069515440319 / 50000000000000 : ℚ)
  w := (775829314983 / 500000000000 : ℚ)
  center := (20972171787709499 / 50000000000000000 : ℚ)
  supportValue := (2588686225544569 / 5000000000000000 : ℚ)
  supportSlope := (-29447533909544497 / 10000000000000000 : ℚ)
  oldCenter := (2588686225544569 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1013
  oldLo := (12937499999999999 / 25000000000000000 : ℚ)
  oldHi := (25900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1227]
}

def cell_9825 : Cell := { cellDefaults with
  domain := ⟨(10487500000000001 / 25000000000000000 : ℚ), (10489062500000001 / 25000000000000000 : ℚ)⟩
  r := (34047957522911 / 50000000000000 : ℚ)
  w := (15510436917043 / 10000000000000 : ℚ)
  center := (10488281250000001 / 25000000000000000 : ℚ)
  supportValue := (5182423121527309 / 10000000000000000 : ℚ)
  supportSlope := (-14734162553811103 / 5000000000000000 : ℚ)
  oldCenter := (5182423121527309 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1014
  oldLo := (25900000000000001 / 50000000000000000 : ℚ)
  oldHi := (12962499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1228]
}

def cell_9826 : Cell := { cellDefaults with
  domain := ⟨(10489062500000001 / 25000000000000000 : ℚ), (10490625000000001 / 25000000000000000 : ℚ)⟩
  r := (34047957522911 / 50000000000000 : ℚ)
  w := (15510436917043 / 10000000000000 : ℚ)
  center := (10489843750000001 / 25000000000000000 : ℚ)
  supportValue := (5180581868407279 / 10000000000000000 : ℚ)
  supportSlope := (-29452814466779387 / 10000000000000000 : ℚ)
  oldCenter := (5180581868407279 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1014
  oldLo := (12937499999999999 / 25000000000000000 : ℚ)
  oldHi := (12962499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1227, piece_1228]
}

def cell_9827 : Cell := { cellDefaults with
  domain := ⟨(10490625000000001 / 25000000000000000 : ℚ), (10492187500000001 / 25000000000000000 : ℚ)⟩
  r := (34047957522911 / 50000000000000 : ℚ)
  w := (15510436917043 / 10000000000000 : ℚ)
  center := (10491406250000001 / 25000000000000000 : ℚ)
  supportValue := (1035748281267157 / 2000000000000000 : ℚ)
  supportSlope := (-7360224585086783 / 2500000000000000 : ℚ)
  oldCenter := (1035748281267157 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1014
  oldLo := (12937499999999999 / 25000000000000000 : ℚ)
  oldHi := (25900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1227]
}

def cell_9828 : Cell := { cellDefaults with
  domain := ⟨(10492187500000001 / 25000000000000000 : ℚ), (10493750000000001 / 25000000000000000 : ℚ)⟩
  r := (34047957522911 / 50000000000000 : ℚ)
  w := (15510436917043 / 10000000000000 : ℚ)
  center := (10492968750000001 / 25000000000000000 : ℚ)
  supportValue := (5176901867189359 / 10000000000000000 : ℚ)
  supportSlope := (-2942434130357441 / 1000000000000000 : ℚ)
  oldCenter := (5176901867189359 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1014
  oldLo := (12937499999999999 / 25000000000000000 : ℚ)
  oldHi := (25900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1227]
}

def cell_9829 : Cell := { cellDefaults with
  domain := ⟨(10493750000000001 / 25000000000000000 : ℚ), (10495312500000001 / 25000000000000000 : ℚ)⟩
  r := (34047957522911 / 50000000000000 : ℚ)
  w := (15510436917043 / 10000000000000 : ℚ)
  center := (10494531250000001 / 25000000000000000 : ℚ)
  supportValue := (2587531681140559 / 5000000000000000 : ℚ)
  supportSlope := (-14705232989058459 / 5000000000000000 : ℚ)
  oldCenter := (2587531681140559 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1014
  oldLo := (25850000000000001 / 50000000000000000 : ℚ)
  oldHi := (25900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1226, piece_1227]
}

def cell_9830 : Cell := { cellDefaults with
  domain := ⟨(10495312500000001 / 25000000000000000 : ℚ), (10496875000000001 / 25000000000000000 : ℚ)⟩
  r := (34047957522911 / 50000000000000 : ℚ)
  w := (15510436917043 / 10000000000000 : ℚ)
  center := (10496093750000001 / 25000000000000000 : ℚ)
  supportValue := (5173225546038341 / 10000000000000000 : ℚ)
  supportSlope := (-293969693942131 / 100000000000000 : ℚ)
  oldCenter := (5173225546038341 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1014
  oldLo := (25850000000000001 / 50000000000000000 : ℚ)
  oldHi := (12937499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1226]
}

def cell_9831 : Cell := { cellDefaults with
  domain := ⟨(10496875000000001 / 25000000000000000 : ℚ), (10498437500000001 / 25000000000000000 : ℚ)⟩
  r := (34047957522911 / 50000000000000 : ℚ)
  w := (15510436917043 / 10000000000000 : ℚ)
  center := (10497656250000001 / 25000000000000000 : ℚ)
  supportValue := (5171388751735391 / 10000000000000000 : ℚ)
  supportSlope := (-1836277205282677 / 625000000000000 : ℚ)
  oldCenter := (5171388751735391 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1014
  oldLo := (25850000000000001 / 50000000000000000 : ℚ)
  oldHi := (12937499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1226]
}

def cell_9832 : Cell := { cellDefaults with
  domain := ⟨(10498437500000001 / 25000000000000000 : ℚ), (10500000000000001 / 25000000000000000 : ℚ)⟩
  r := (34047957522911 / 50000000000000 : ℚ)
  w := (15510436917043 / 10000000000000 : ℚ)
  center := (10499218750000001 / 25000000000000000 : ℚ)
  supportValue := (5169552902689653 / 10000000000000000 : ℚ)
  supportSlope := (-3671022512992117 / 1250000000000000 : ℚ)
  oldCenter := (5169552902689653 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1014
  oldLo := (12912499999999999 / 25000000000000000 : ℚ)
  oldHi := (12937499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1225, piece_1226]
}

def cell_9833 : Cell := { cellDefaults with
  domain := ⟨(10500000000000001 / 25000000000000000 : ℚ), (10501562500000001 / 25000000000000000 : ℚ)⟩
  r := (68052858650283 / 100000000000000 : ℚ)
  w := (15504301553217 / 10000000000000 : ℚ)
  center := (10500781250000001 / 25000000000000000 : ℚ)
  supportValue := (1035067660227593 / 2000000000000000 : ℚ)
  supportSlope := (-1175724522002497 / 400000000000000 : ℚ)
  oldCenter := (1035067660227593 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1015
  oldLo := (25850000000000001 / 50000000000000000 : ℚ)
  oldHi := (25900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1226, piece_1227]
}

def cell_9834 : Cell := { cellDefaults with
  domain := ⟨(10501562500000001 / 25000000000000000 : ℚ), (10503125000000001 / 25000000000000000 : ℚ)⟩
  r := (68052858650283 / 100000000000000 : ℚ)
  w := (15504301553217 / 10000000000000 : ℚ)
  center := (10502343750000001 / 25000000000000000 : ℚ)
  supportValue := (1293375392160561 / 2500000000000000 : ℚ)
  supportSlope := (-734512442297941 / 250000000000000 : ℚ)
  oldCenter := (1293375392160561 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1015
  oldLo := (25850000000000001 / 50000000000000000 : ℚ)
  oldHi := (12937499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1226]
}

def cell_9835 : Cell := { cellDefaults with
  domain := ⟨(10503125000000001 / 25000000000000000 : ℚ), (10504687500000001 / 25000000000000000 : ℚ)⟩
  r := (68052858650283 / 100000000000000 : ℚ)
  w := (15504301553217 / 10000000000000 : ℚ)
  center := (10503906250000001 / 25000000000000000 : ℚ)
  supportValue := (5171665803047143 / 10000000000000000 : ℚ)
  supportSlope := (-2936398833647047 / 1000000000000000 : ℚ)
  oldCenter := (5171665803047143 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1015
  oldLo := (25850000000000001 / 50000000000000000 : ℚ)
  oldHi := (12937499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1226]
}

def cell_9836 : Cell := { cellDefaults with
  domain := ⟨(10504687500000001 / 25000000000000000 : ℚ), (10506250000000001 / 25000000000000000 : ℚ)⟩
  r := (68052858650283 / 100000000000000 : ℚ)
  w := (15504301553217 / 10000000000000 : ℚ)
  center := (10505468750000001 / 25000000000000000 : ℚ)
  supportValue := (1033966207084891 / 2000000000000000 : ℚ)
  supportSlope := (-2935089031375071 / 1000000000000000 : ℚ)
  oldCenter := (1033966207084891 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1015
  oldLo := (12912499999999999 / 25000000000000000 : ℚ)
  oldHi := (12937499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1225, piece_1226]
}

def cell_9837 : Cell := { cellDefaults with
  domain := ⟨(10506250000000001 / 25000000000000000 : ℚ), (10507812500000001 / 25000000000000000 : ℚ)⟩
  r := (68052858650283 / 100000000000000 : ℚ)
  w := (15504301553217 / 10000000000000 : ℚ)
  center := (10507031250000001 / 25000000000000000 : ℚ)
  supportValue := (645999621770427 / 1250000000000000 : ℚ)
  supportSlope := (-733418029847499 / 250000000000000 : ℚ)
  oldCenter := (645999621770427 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1015
  oldLo := (12912499999999999 / 25000000000000000 : ℚ)
  oldHi := (25850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1225]
}

def cell_9838 : Cell := { cellDefaults with
  domain := ⟨(10507812500000001 / 25000000000000000 : ℚ), (10509375000000001 / 25000000000000000 : ℚ)⟩
  r := (68052858650283 / 100000000000000 : ℚ)
  w := (15504301553217 / 10000000000000 : ℚ)
  center := (10508593750000001 / 25000000000000000 : ℚ)
  supportValue := (206646557755471 / 400000000000000 : ℚ)
  supportSlope := (-117280938679869 / 40000000000000 : ℚ)
  oldCenter := (206646557755471 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1015
  oldLo := (12912499999999999 / 25000000000000000 : ℚ)
  oldHi := (25850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1225]
}

def cell_9839 : Cell := { cellDefaults with
  domain := ⟨(10509375000000001 / 25000000000000000 : ℚ), (10510937500000001 / 25000000000000000 : ℚ)⟩
  r := (68052858650283 / 100000000000000 : ℚ)
  w := (15504301553217 / 10000000000000 : ℚ)
  center := (10510156250000001 / 25000000000000000 : ℚ)
  supportValue := (5164331812224511 / 10000000000000000 : ℚ)
  supportSlope := (-29308730558916807 / 10000000000000000 : ℚ)
  oldCenter := (5164331812224511 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1015
  oldLo := (51600000000000001 / 100000000000000000 : ℚ)
  oldHi := (25850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1224, piece_1225]
}

def cell_9840 : Cell := { cellDefaults with
  domain := ⟨(10510937500000001 / 25000000000000000 : ℚ), (10512500000000001 / 25000000000000000 : ℚ)⟩
  r := (68052858650283 / 100000000000000 : ℚ)
  w := (15504301553217 / 10000000000000 : ℚ)
  center := (10511718750000001 / 25000000000000000 : ℚ)
  supportValue := (5162500482903843 / 10000000000000000 : ℚ)
  supportSlope := (-2929302161572167 / 1000000000000000 : ℚ)
  oldCenter := (5162500482903843 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1015
  oldLo := (51600000000000001 / 100000000000000000 : ℚ)
  oldHi := (12912499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1224]
}

def cell_9841 : Cell := { cellDefaults with
  domain := ⟨(10512500000000001 / 25000000000000000 : ℚ), (10514062500000001 / 25000000000000000 : ℚ)⟩
  r := (17002465778633 / 25000000000000 : ℚ)
  w := (3874544581909 / 2500000000000 : ℚ)
  center := (10513281250000001 / 25000000000000000 : ℚ)
  supportValue := (1292068025776671 / 2500000000000000 : ℚ)
  supportSlope := (-2932028203392889 / 1000000000000000 : ℚ)
  oldCenter := (1292068025776671 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1016
  oldLo := (12912499999999999 / 25000000000000000 : ℚ)
  oldHi := (25850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1225]
}

def cell_9842 : Cell := { cellDefaults with
  domain := ⟨(10514062500000001 / 25000000000000000 : ℚ), (10515625000000001 / 25000000000000000 : ℚ)⟩
  r := (17002465778633 / 25000000000000 : ℚ)
  w := (3874544581909 / 2500000000000 : ℚ)
  center := (10514843750000001 / 25000000000000000 : ℚ)
  supportValue := (1291610024876323 / 2500000000000000 : ℚ)
  supportSlope := (-1831488763917033 / 625000000000000 : ℚ)
  oldCenter := (1291610024876323 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1016
  oldLo := (12912499999999999 / 25000000000000000 : ℚ)
  oldHi := (25850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1225]
}

def cell_9843 : Cell := { cellDefaults with
  domain := ⟨(10515625000000001 / 25000000000000000 : ℚ), (10517187500000001 / 25000000000000000 : ℚ)⟩
  r := (17002465778633 / 25000000000000 : ℚ)
  w := (3874544581909 / 2500000000000 : ℚ)
  center := (10516406250000001 / 25000000000000000 : ℚ)
  supportValue := (161394032726951 / 312500000000000 : ℚ)
  supportSlope := (-732286819816963 / 250000000000000 : ℚ)
  oldCenter := (161394032726951 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1016
  oldLo := (51600000000000001 / 100000000000000000 : ℚ)
  oldHi := (25850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1224, piece_1225]
}

def cell_9844 : Cell := { cellDefaults with
  domain := ⟨(10517187500000001 / 25000000000000000 : ℚ), (10518750000000001 / 25000000000000000 : ℚ)⟩
  r := (17002465778633 / 25000000000000 : ℚ)
  w := (3874544581909 / 2500000000000 : ℚ)
  center := (10517968750000001 / 25000000000000000 : ℚ)
  supportValue := (5162778741456371 / 10000000000000000 : ℚ)
  supportSlope := (-731916442899383 / 250000000000000 : ℚ)
  oldCenter := (5162778741456371 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1016
  oldLo := (51600000000000001 / 100000000000000000 : ℚ)
  oldHi := (12912499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1224]
}

def cell_9845 : Cell := { cellDefaults with
  domain := ⟨(10518750000000001 / 25000000000000000 : ℚ), (10520312500000001 / 25000000000000000 : ℚ)⟩
  r := (17002465778633 / 25000000000000 : ℚ)
  w := (3874544581909 / 2500000000000 : ℚ)
  center := (10519531250000001 / 25000000000000000 : ℚ)
  supportValue := (5160949463662331 / 10000000000000000 : ℚ)
  supportSlope := (-2926021873154383 / 1000000000000000 : ℚ)
  oldCenter := (5160949463662331 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1016
  oldLo := (51600000000000001 / 100000000000000000 : ℚ)
  oldHi := (12912499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1224]
}

def cell_9846 : Cell := { cellDefaults with
  domain := ⟨(10520312500000001 / 25000000000000000 : ℚ), (10521875000000001 / 25000000000000000 : ℚ)⟩
  r := (17002465778633 / 25000000000000 : ℚ)
  w := (3874544581909 / 2500000000000 : ℚ)
  center := (10521093750000001 / 25000000000000000 : ℚ)
  supportValue := (1289780259881547 / 2500000000000000 : ℚ)
  supportSlope := (-73123596729463 / 25000000000000 : ℚ)
  oldCenter := (1289780259881547 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1016
  oldLo := (12887499999999999 / 25000000000000000 : ℚ)
  oldHi := (12912499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1223, piece_1224]
}

def cell_9847 : Cell := { cellDefaults with
  domain := ⟨(10521875000000001 / 25000000000000000 : ℚ), (10523437500000001 / 25000000000000000 : ℚ)⟩
  r := (17002465778633 / 25000000000000 : ℚ)
  w := (3874544581909 / 2500000000000 : ℚ)
  center := (10522656250000001 / 25000000000000000 : ℚ)
  supportValue := (515729345615029 / 1000000000000000 : ℚ)
  supportSlope := (-2923311029952913 / 1000000000000000 : ℚ)
  oldCenter := (515729345615029 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1016
  oldLo := (12887499999999999 / 25000000000000000 : ℚ)
  oldHi := (51600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1223]
}

def cell_9848 : Cell := { cellDefaults with
  domain := ⟨(10523437500000001 / 25000000000000000 : ℚ), (10525000000000001 / 25000000000000000 : ℚ)⟩
  r := (17002465778633 / 25000000000000 : ℚ)
  w := (3874544581909 / 2500000000000 : ℚ)
  center := (10524218750000001 / 25000000000000000 : ℚ)
  supportValue := (5155466899354799 / 10000000000000000 : ℚ)
  supportSlope := (-1460905495349607 / 500000000000000 : ℚ)
  oldCenter := (5155466899354799 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1016
  oldLo := (51500000000000001 / 100000000000000000 : ℚ)
  oldHi := (51600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1222, piece_1223]
}

def cell_9849 : Cell := { cellDefaults with
  domain := ⟨(10525000000000001 / 25000000000000000 : ℚ), (10526562500000001 / 25000000000000000 : ℚ)⟩
  r := (67966926695399 / 100000000000000 : ℚ)
  w := (7746034486439 / 5000000000000 : ℚ)
  center := (10525781250000001 / 25000000000000000 : ℚ)
  supportValue := (258061215586677 / 500000000000000 : ℚ)
  supportSlope := (-29243833744594383 / 10000000000000000 : ℚ)
  oldCenter := (258061215586677 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1017
  oldLo := (51600000000000001 / 100000000000000000 : ℚ)
  oldHi := (12912499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1224]
}

theorem check_9800 : cell_9800.check = true := by
  decide +kernel

theorem check_9801 : cell_9801.check = true := by
  decide +kernel

theorem check_9802 : cell_9802.check = true := by
  decide +kernel

theorem check_9803 : cell_9803.check = true := by
  decide +kernel

theorem check_9804 : cell_9804.check = true := by
  decide +kernel

theorem check_9805 : cell_9805.check = true := by
  decide +kernel

theorem check_9806 : cell_9806.check = true := by
  decide +kernel

theorem check_9807 : cell_9807.check = true := by
  decide +kernel

theorem check_9808 : cell_9808.check = true := by
  decide +kernel

theorem check_9809 : cell_9809.check = true := by
  decide +kernel

theorem check_9810 : cell_9810.check = true := by
  decide +kernel

theorem check_9811 : cell_9811.check = true := by
  decide +kernel

theorem check_9812 : cell_9812.check = true := by
  decide +kernel

theorem check_9813 : cell_9813.check = true := by
  decide +kernel

theorem check_9814 : cell_9814.check = true := by
  decide +kernel

theorem check_9815 : cell_9815.check = true := by
  decide +kernel

theorem check_9816 : cell_9816.check = true := by
  decide +kernel

theorem check_9817 : cell_9817.check = true := by
  decide +kernel

theorem check_9818 : cell_9818.check = true := by
  decide +kernel

theorem check_9819 : cell_9819.check = true := by
  decide +kernel

theorem check_9820 : cell_9820.check = true := by
  decide +kernel

theorem check_9821 : cell_9821.check = true := by
  decide +kernel

theorem check_9822 : cell_9822.check = true := by
  decide +kernel

theorem check_9823 : cell_9823.check = true := by
  decide +kernel

theorem check_9824 : cell_9824.check = true := by
  decide +kernel

theorem check_9825 : cell_9825.check = true := by
  decide +kernel

theorem check_9826 : cell_9826.check = true := by
  decide +kernel

theorem check_9827 : cell_9827.check = true := by
  decide +kernel

theorem check_9828 : cell_9828.check = true := by
  decide +kernel

theorem check_9829 : cell_9829.check = true := by
  decide +kernel

theorem check_9830 : cell_9830.check = true := by
  decide +kernel

theorem check_9831 : cell_9831.check = true := by
  decide +kernel

theorem check_9832 : cell_9832.check = true := by
  decide +kernel

theorem check_9833 : cell_9833.check = true := by
  decide +kernel

theorem check_9834 : cell_9834.check = true := by
  decide +kernel

theorem check_9835 : cell_9835.check = true := by
  decide +kernel

theorem check_9836 : cell_9836.check = true := by
  decide +kernel

theorem check_9837 : cell_9837.check = true := by
  decide +kernel

theorem check_9838 : cell_9838.check = true := by
  decide +kernel

theorem check_9839 : cell_9839.check = true := by
  decide +kernel

theorem check_9840 : cell_9840.check = true := by
  decide +kernel

theorem check_9841 : cell_9841.check = true := by
  decide +kernel

theorem check_9842 : cell_9842.check = true := by
  decide +kernel

theorem check_9843 : cell_9843.check = true := by
  decide +kernel

theorem check_9844 : cell_9844.check = true := by
  decide +kernel

theorem check_9845 : cell_9845.check = true := by
  decide +kernel

theorem check_9846 : cell_9846.check = true := by
  decide +kernel

theorem check_9847 : cell_9847.check = true := by
  decide +kernel

theorem check_9848 : cell_9848.check = true := by
  decide +kernel

theorem check_9849 : cell_9849.check = true := by
  decide +kernel

def cells : List Cell := [cell_9800, cell_9801, cell_9802, cell_9803, cell_9804, cell_9805, cell_9806, cell_9807, cell_9808, cell_9809, cell_9810, cell_9811, cell_9812, cell_9813, cell_9814, cell_9815, cell_9816, cell_9817, cell_9818, cell_9819, cell_9820, cell_9821, cell_9822, cell_9823, cell_9824, cell_9825, cell_9826, cell_9827, cell_9828, cell_9829, cell_9830, cell_9831, cell_9832, cell_9833, cell_9834, cell_9835, cell_9836, cell_9837, cell_9838, cell_9839, cell_9840, cell_9841, cell_9842, cell_9843, cell_9844, cell_9845, cell_9846, cell_9847, cell_9848, cell_9849]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9800, check_9801, check_9802, check_9803, check_9804, check_9805, check_9806, check_9807, check_9808, check_9809, check_9810, check_9811, check_9812, check_9813, check_9814, check_9815, check_9816, check_9817, check_9818, check_9819, check_9820, check_9821, check_9822, check_9823, check_9824, check_9825, check_9826, check_9827, check_9828, check_9829, check_9830, check_9831, check_9832, check_9833, check_9834, check_9835, check_9836, check_9837, check_9838, check_9839, check_9840, check_9841, check_9842, check_9843, check_9844, check_9845, check_9846, check_9847, check_9848, check_9849, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0196

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0196
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0196
open AnalyticBounds.ExpressionCertificate

theorem linked_9800 : Linked cell_9800 pieces := by
  link_source cell_9800 with piece_1009 using piece_1009_mem, ⟨piece_1232_mem, piece_1233_mem⟩

theorem linked_9801 : Linked cell_9801 pieces := by
  link_source cell_9801 with piece_1009 using piece_1009_mem, piece_1232_mem

theorem linked_9802 : Linked cell_9802 pieces := by
  link_source cell_9802 with piece_1010 using piece_1010_mem, piece_1233_mem

theorem linked_9803 : Linked cell_9803 pieces := by
  link_source cell_9803 with piece_1010 using piece_1010_mem, piece_1233_mem

theorem linked_9804 : Linked cell_9804 pieces := by
  link_source cell_9804 with piece_1010 using piece_1010_mem, ⟨piece_1232_mem, piece_1233_mem⟩

theorem linked_9805 : Linked cell_9805 pieces := by
  link_source cell_9805 with piece_1010 using piece_1010_mem, piece_1232_mem

theorem linked_9806 : Linked cell_9806 pieces := by
  link_source cell_9806 with piece_1010 using piece_1010_mem, piece_1232_mem

theorem linked_9807 : Linked cell_9807 pieces := by
  link_source cell_9807 with piece_1010 using piece_1010_mem, ⟨piece_1231_mem, piece_1232_mem⟩

theorem linked_9808 : Linked cell_9808 pieces := by
  link_source cell_9808 with piece_1010 using piece_1010_mem, piece_1231_mem

theorem linked_9809 : Linked cell_9809 pieces := by
  link_source cell_9809 with piece_1010 using piece_1010_mem, ⟨piece_1230_mem, piece_1231_mem⟩

theorem linked_9810 : Linked cell_9810 pieces := by
  link_source cell_9810 with piece_1011 using piece_1011_mem, piece_1232_mem

theorem linked_9811 : Linked cell_9811 pieces := by
  link_source cell_9811 with piece_1011 using piece_1011_mem, ⟨piece_1231_mem, piece_1232_mem⟩

theorem linked_9812 : Linked cell_9812 pieces := by
  link_source cell_9812 with piece_1011 using piece_1011_mem, piece_1231_mem

theorem linked_9813 : Linked cell_9813 pieces := by
  link_source cell_9813 with piece_1011 using piece_1011_mem, piece_1231_mem

theorem linked_9814 : Linked cell_9814 pieces := by
  link_source cell_9814 with piece_1011 using piece_1011_mem, ⟨piece_1230_mem, piece_1231_mem⟩

theorem linked_9815 : Linked cell_9815 pieces := by
  link_source cell_9815 with piece_1011 using piece_1011_mem, ⟨piece_1229_mem, piece_1230_mem⟩

theorem linked_9816 : Linked cell_9816 pieces := by
  link_source cell_9816 with piece_1011 using piece_1011_mem, ⟨piece_1228_mem, piece_1229_mem⟩

theorem linked_9817 : Linked cell_9817 pieces := by
  link_source cell_9817 with piece_1011 using piece_1011_mem, piece_1228_mem

theorem linked_9818 : Linked cell_9818 pieces := by
  link_source cell_9818 with piece_1012 using piece_1012_mem, ⟨piece_1230_mem, piece_1231_mem⟩

theorem linked_9819 : Linked cell_9819 pieces := by
  link_source cell_9819 with piece_1012 using piece_1012_mem, ⟨piece_1229_mem, piece_1230_mem⟩

theorem linked_9820 : Linked cell_9820 pieces := by
  link_source cell_9820 with piece_1012 using piece_1012_mem, ⟨piece_1228_mem, piece_1229_mem⟩

theorem linked_9821 : Linked cell_9821 pieces := by
  link_source cell_9821 with piece_1012 using piece_1012_mem, piece_1228_mem

theorem linked_9822 : Linked cell_9822 pieces := by
  link_source cell_9822 with piece_1012 using piece_1012_mem, piece_1228_mem

theorem linked_9823 : Linked cell_9823 pieces := by
  link_source cell_9823 with piece_1013 using piece_1013_mem, ⟨piece_1227_mem, piece_1228_mem⟩

theorem linked_9824 : Linked cell_9824 pieces := by
  link_source cell_9824 with piece_1013 using piece_1013_mem, piece_1227_mem

theorem linked_9825 : Linked cell_9825 pieces := by
  link_source cell_9825 with piece_1014 using piece_1014_mem, piece_1228_mem

theorem linked_9826 : Linked cell_9826 pieces := by
  link_source cell_9826 with piece_1014 using piece_1014_mem, ⟨piece_1227_mem, piece_1228_mem⟩

theorem linked_9827 : Linked cell_9827 pieces := by
  link_source cell_9827 with piece_1014 using piece_1014_mem, piece_1227_mem

theorem linked_9828 : Linked cell_9828 pieces := by
  link_source cell_9828 with piece_1014 using piece_1014_mem, piece_1227_mem

theorem linked_9829 : Linked cell_9829 pieces := by
  link_source cell_9829 with piece_1014 using piece_1014_mem, ⟨piece_1226_mem, piece_1227_mem⟩

theorem linked_9830 : Linked cell_9830 pieces := by
  link_source cell_9830 with piece_1014 using piece_1014_mem, piece_1226_mem

theorem linked_9831 : Linked cell_9831 pieces := by
  link_source cell_9831 with piece_1014 using piece_1014_mem, piece_1226_mem

theorem linked_9832 : Linked cell_9832 pieces := by
  link_source cell_9832 with piece_1014 using piece_1014_mem, ⟨piece_1225_mem, piece_1226_mem⟩

theorem linked_9833 : Linked cell_9833 pieces := by
  link_source cell_9833 with piece_1015 using piece_1015_mem, ⟨piece_1226_mem, piece_1227_mem⟩

theorem linked_9834 : Linked cell_9834 pieces := by
  link_source cell_9834 with piece_1015 using piece_1015_mem, piece_1226_mem

theorem linked_9835 : Linked cell_9835 pieces := by
  link_source cell_9835 with piece_1015 using piece_1015_mem, piece_1226_mem

theorem linked_9836 : Linked cell_9836 pieces := by
  link_source cell_9836 with piece_1015 using piece_1015_mem, ⟨piece_1225_mem, piece_1226_mem⟩

theorem linked_9837 : Linked cell_9837 pieces := by
  link_source cell_9837 with piece_1015 using piece_1015_mem, piece_1225_mem

theorem linked_9838 : Linked cell_9838 pieces := by
  link_source cell_9838 with piece_1015 using piece_1015_mem, piece_1225_mem

theorem linked_9839 : Linked cell_9839 pieces := by
  link_source cell_9839 with piece_1015 using piece_1015_mem, ⟨piece_1224_mem, piece_1225_mem⟩

theorem linked_9840 : Linked cell_9840 pieces := by
  link_source cell_9840 with piece_1015 using piece_1015_mem, piece_1224_mem

theorem linked_9841 : Linked cell_9841 pieces := by
  link_source cell_9841 with piece_1016 using piece_1016_mem, piece_1225_mem

theorem linked_9842 : Linked cell_9842 pieces := by
  link_source cell_9842 with piece_1016 using piece_1016_mem, piece_1225_mem

theorem linked_9843 : Linked cell_9843 pieces := by
  link_source cell_9843 with piece_1016 using piece_1016_mem, ⟨piece_1224_mem, piece_1225_mem⟩

theorem linked_9844 : Linked cell_9844 pieces := by
  link_source cell_9844 with piece_1016 using piece_1016_mem, piece_1224_mem

theorem linked_9845 : Linked cell_9845 pieces := by
  link_source cell_9845 with piece_1016 using piece_1016_mem, piece_1224_mem

theorem linked_9846 : Linked cell_9846 pieces := by
  link_source cell_9846 with piece_1016 using piece_1016_mem, ⟨piece_1223_mem, piece_1224_mem⟩

theorem linked_9847 : Linked cell_9847 pieces := by
  link_source cell_9847 with piece_1016 using piece_1016_mem, piece_1223_mem

theorem linked_9848 : Linked cell_9848 pieces := by
  link_source cell_9848 with piece_1016 using piece_1016_mem, ⟨piece_1222_mem, piece_1223_mem⟩

theorem linked_9849 : Linked cell_9849 pieces := by
  link_source cell_9849 with piece_1017 using piece_1017_mem, piece_1224_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0196.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0196.cells,List.forall_mem_cons]
  exact ⟨linked_9800, linked_9801, linked_9802, linked_9803, linked_9804, linked_9805, linked_9806, linked_9807, linked_9808, linked_9809, linked_9810, linked_9811, linked_9812, linked_9813, linked_9814, linked_9815, linked_9816, linked_9817, linked_9818, linked_9819, linked_9820, linked_9821, linked_9822, linked_9823, linked_9824, linked_9825, linked_9826, linked_9827, linked_9828, linked_9829, linked_9830, linked_9831, linked_9832, linked_9833, linked_9834, linked_9835, linked_9836, linked_9837, linked_9838, linked_9839, linked_9840, linked_9841, linked_9842, linked_9843, linked_9844, linked_9845, linked_9846, linked_9847, linked_9848, linked_9849, by simp⟩

theorem covered : covers (10446875000000001 / 25000000000000000 : ℚ) (10526562500000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0196.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0196
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0197
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(10526562500000001 / 25000000000000000 : ℚ), (10528125000000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (33962025393503 / 50000000000000 : ℚ)
  w := (619438874533 / 400000000000 : ℚ)
  center := (10527343750000001 / 25000000000000000 : ℚ)
  supportValue := (5159396965120769 / 10000000000000000 : ℚ)
  supportSlope := (-29232211229164307 / 10000000000000000 : ℚ)
  oldCenter := (5159396965120769 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1018
  oldLo := (12862499999999999 / 25000000000000000 : ℚ)
  oldHi := (51500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1221]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9850 : Cell := { cellDefaults with
  r := (67966926695399 / 100000000000000 : ℚ)
  w := (7746034486439 / 5000000000000 : ℚ)
  newCoefficients := coefficients_1017
  oldLo := (12887499999999999 / 25000000000000000 : ℚ)
  oldHi := (12912499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1223, piece_1224]
}

def cell_9851 : Cell := { cellDefaults with
  domain := ⟨(10528125000000001 / 25000000000000000 : ℚ), (10529687500000001 / 25000000000000000 : ℚ)⟩
  r := (67966926695399 / 100000000000000 : ℚ)
  w := (7746034486439 / 5000000000000 : ℚ)
  center := (10528906250000001 / 25000000000000000 : ℚ)
  supportValue := (5157570403423303 / 10000000000000000 : ℚ)
  supportSlope := (-1460838788149843 / 500000000000000 : ℚ)
  oldCenter := (5157570403423303 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1017
  oldLo := (12887499999999999 / 25000000000000000 : ℚ)
  oldHi := (51600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1223]
}

def cell_9852 : Cell := { cellDefaults with
  domain := ⟨(10529687500000001 / 25000000000000000 : ℚ), (10531250000000001 / 25000000000000000 : ℚ)⟩
  r := (67966926695399 / 100000000000000 : ℚ)
  w := (7746034486439 / 5000000000000 : ℚ)
  center := (10530468750000001 / 25000000000000000 : ℚ)
  supportValue := (2577872433383811 / 5000000000000000 : ℚ)
  supportSlope := (-584018385630003 / 200000000000000 : ℚ)
  oldCenter := (2577872433383811 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1017
  oldLo := (51500000000000001 / 100000000000000000 : ℚ)
  oldHi := (51600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1222, piece_1223]
}

def cell_9853 : Cell := { cellDefaults with
  domain := ⟨(10531250000000001 / 25000000000000000 : ℚ), (10532812500000001 / 25000000000000000 : ℚ)⟩
  r := (67966926695399 / 100000000000000 : ℚ)
  w := (7746034486439 / 5000000000000 : ℚ)
  center := (10532031250000001 / 25000000000000000 : ℚ)
  supportValue := (5153920140437029 / 10000000000000000 : ℚ)
  supportSlope := (-912180228674897 / 312500000000000 : ℚ)
  oldCenter := (5153920140437029 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1017
  oldLo := (51500000000000001 / 100000000000000000 : ℚ)
  oldHi := (12887499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1222]
}

def cell_9854 : Cell := { cellDefaults with
  domain := ⟨(10532812500000001 / 25000000000000000 : ℚ), (10534375000000001 / 25000000000000000 : ℚ)⟩
  r := (67966926695399 / 100000000000000 : ℚ)
  w := (7746034486439 / 5000000000000 : ℚ)
  center := (10533593750000001 / 25000000000000000 : ℚ)
  supportValue := (5152096291668743 / 10000000000000000 : ℚ)
  supportSlope := (-2917338035732797 / 1000000000000000 : ℚ)
  oldCenter := (5152096291668743 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1017
  oldLo := (51500000000000001 / 100000000000000000 : ℚ)
  oldHi := (12887499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1222]
}

def cell_9855 : Cell := { cellDefaults with
  domain := ⟨(10534375000000001 / 25000000000000000 : ℚ), (10535937500000001 / 25000000000000000 : ℚ)⟩
  r := (67966926695399 / 100000000000000 : ℚ)
  w := (7746034486439 / 5000000000000 : ℚ)
  center := (10535156250000001 / 25000000000000000 : ℚ)
  supportValue := (2575136733255623 / 5000000000000000 : ℚ)
  supportSlope := (-145795207107291 / 50000000000000 : ℚ)
  oldCenter := (2575136733255623 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1017
  oldHi := (12887499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1221, piece_1222]
}

def cell_9856 : Cell := { cellDefaults with
  domain := ⟨(10535937500000001 / 25000000000000000 : ℚ), (10537500000000001 / 25000000000000000 : ℚ)⟩
  r := (67966926695399 / 100000000000000 : ℚ)
  w := (7746034486439 / 5000000000000 : ℚ)
  center := (10536718750000001 / 25000000000000000 : ℚ)
  supportValue := (1287112839143453 / 2500000000000000 : ℚ)
  supportSlope := (-291464259886709 / 100000000000000 : ℚ)
  oldCenter := (1287112839143453 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1017
  oldPieces := [piece_1221]
}

def cell_9857 : Cell := { cellDefaults with
  domain := ⟨(10537500000000001 / 25000000000000000 : ℚ), (10539062500000001 / 25000000000000000 : ℚ)⟩
  center := (10538281250000001 / 25000000000000000 : ℚ)
  supportValue := (5154195120250027 / 10000000000000000 : ℚ)
  supportSlope := (-2917310642196469 / 1000000000000000 : ℚ)
  oldCenter := (5154195120250027 / 10000000000000000 : ℚ)
  oldLo := (51500000000000001 / 100000000000000000 : ℚ)
  oldHi := (51600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1222, piece_1223]
}

def cell_9858 : Cell := { cellDefaults with
  domain := ⟨(10539062500000001 / 25000000000000000 : ℚ), (10540625000000001 / 25000000000000000 : ℚ)⟩
  center := (10539843750000001 / 25000000000000000 : ℚ)
  supportValue := (1030474458234961 / 2000000000000000 : ℚ)
  supportSlope := (-1457853878463311 / 500000000000000 : ℚ)
  oldCenter := (1030474458234961 / 2000000000000000 : ℚ)
  oldLo := (51500000000000001 / 100000000000000000 : ℚ)
  oldHi := (12887499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1222]
}

def cell_9859 : Cell := { cellDefaults with
  domain := ⟨(10540625000000001 / 25000000000000000 : ℚ), (10542187500000001 / 25000000000000000 : ℚ)⟩
  center := (10541406250000001 / 25000000000000000 : ℚ)
  supportValue := (2575275242086957 / 5000000000000000 : ℚ)
  supportSlope := (-1457094114073243 / 500000000000000 : ℚ)
  oldCenter := (2575275242086957 / 5000000000000000 : ℚ)
  oldHi := (12887499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1221, piece_1222]
}

def cell_9860 : Cell := { cellDefaults with
  domain := ⟨(10542187500000001 / 25000000000000000 : ℚ), (10543750000000001 / 25000000000000000 : ℚ)⟩
  center := (10542968750000001 / 25000000000000000 : ℚ)
  supportValue := (5148729445879209 / 10000000000000000 : ℚ)
  supportSlope := (-5826034697399507 / 2000000000000000 : ℚ)
  oldCenter := (5148729445879209 / 10000000000000000 : ℚ)
  oldPieces := [piece_1221]
}

def cell_9861 : Cell := { cellDefaults with
  domain := ⟨(10543750000000001 / 25000000000000000 : ℚ), (10545312500000001 / 25000000000000000 : ℚ)⟩
  center := (10544531250000001 / 25000000000000000 : ℚ)
  supportValue := (5146909320242287 / 10000000000000000 : ℚ)
  supportSlope := (-14556917005066339 / 5000000000000000 : ℚ)
  oldCenter := (5146909320242287 / 10000000000000000 : ℚ)
  oldPieces := [piece_1221]
}

def cell_9862 : Cell := { cellDefaults with
  domain := ⟨(10545312500000001 / 25000000000000000 : ℚ), (10546875000000001 / 25000000000000000 : ℚ)⟩
  center := (10546093750000001 / 25000000000000000 : ℚ)
  supportValue := (1286272553812409 / 2500000000000000 : ℚ)
  supportSlope := (-14550064398051177 / 5000000000000000 : ℚ)
  oldCenter := (1286272553812409 / 2500000000000000 : ℚ)
  oldLo := (51400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1220, piece_1221]
}

def cell_9863 : Cell := { cellDefaults with
  domain := ⟨(10546875000000001 / 25000000000000000 : ℚ), (10548437500000001 / 25000000000000000 : ℚ)⟩
  center := (10547656250000001 / 25000000000000000 : ℚ)
  supportValue := (5143271785575233 / 10000000000000000 : ℚ)
  supportSlope := (-29086983976469583 / 10000000000000000 : ℚ)
  oldCenter := (5143271785575233 / 10000000000000000 : ℚ)
  oldLo := (51400000000000001 / 100000000000000000 : ℚ)
  oldHi := (12862499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1220]
}

def cell_9864 : Cell := { cellDefaults with
  domain := ⟨(10548437500000001 / 25000000000000000 : ℚ), (10550000000000001 / 25000000000000000 : ℚ)⟩
  center := (10549218750000001 / 25000000000000000 : ℚ)
  supportValue := (5141454358565761 / 10000000000000000 : ℚ)
  supportSlope := (-2907066746764997 / 1000000000000000 : ℚ)
  oldCenter := (5141454358565761 / 10000000000000000 : ℚ)
  oldLo := (51400000000000001 / 100000000000000000 : ℚ)
  oldHi := (12862499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1220]
}

def cell_9865 : Cell := { cellDefaults with
  domain := ⟨(10550000000000001 / 25000000000000000 : ℚ), (10551562500000001 / 25000000000000000 : ℚ)⟩
  r := (67881232898621 / 100000000000000 : ℚ)
  w := (3095977370589 / 2000000000000 : ℚ)
  center := (10550781250000001 / 25000000000000000 : ℚ)
  supportValue := (2573592355615887 / 5000000000000000 : ℚ)
  supportSlope := (-5819512925334891 / 2000000000000000 : ℚ)
  oldCenter := (2573592355615887 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1019
  oldPieces := [piece_1221]
}

def cell_9866 : Cell := { cellDefaults with
  domain := ⟨(10551562500000001 / 25000000000000000 : ℚ), (10553125000000001 / 25000000000000000 : ℚ)⟩
  r := (67881232898621 / 100000000000000 : ℚ)
  w := (3095977370589 / 2000000000000 : ℚ)
  center := (10552343750000001 / 25000000000000000 : ℚ)
  supportValue := (5145366622309101 / 10000000000000000 : ℚ)
  supportSlope := (-29083001734022673 / 10000000000000000 : ℚ)
  oldCenter := (5145366622309101 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1019
  oldLo := (51400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1220, piece_1221]
}

def cell_9867 : Cell := { cellDefaults with
  domain := ⟨(10553125000000001 / 25000000000000000 : ℚ), (10556250000000001 / 25000000000000000 : ℚ)⟩
  r := (67881232898621 / 100000000000000 : ℚ)
  w := (3095977370589 / 2000000000000 : ℚ)
  center := (10554687500000001 / 25000000000000000 : ℚ)
  supportValue := (2571322263901583 / 5000000000000000 : ℚ)
  supportSlope := (-1453130938389613 / 500000000000000 : ℚ)
  oldCenter := (2571322263901583 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1019
  oldLo := (51400000000000001 / 100000000000000000 : ℚ)
  oldHi := (12862499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1220]
}

def cell_9868 : Cell := { cellDefaults with
  domain := ⟨(10556250000000001 / 25000000000000000 : ℚ), (10557812500000001 / 25000000000000000 : ℚ)⟩
  r := (67881232898621 / 100000000000000 : ℚ)
  w := (3095977370589 / 2000000000000 : ℚ)
  center := (10557031250000001 / 25000000000000000 : ℚ)
  supportValue := (1284979358739951 / 2500000000000000 : ℚ)
  supportSlope := (-29041372520417497 / 10000000000000000 : ℚ)
  oldCenter := (1284979358739951 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1019
  oldLo := (12837499999999999 / 25000000000000000 : ℚ)
  oldHi := (12862499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1219, piece_1220]
}

def cell_9869 : Cell := { cellDefaults with
  domain := ⟨(10557812500000001 / 25000000000000000 : ℚ), (10559375000000001 / 25000000000000000 : ℚ)⟩
  r := (67881232898621 / 100000000000000 : ℚ)
  w := (3095977370589 / 2000000000000 : ℚ)
  center := (10558593750000001 / 25000000000000000 : ℚ)
  supportValue := (2569051346310013 / 5000000000000000 : ℚ)
  supportSlope := (-580554536165323 / 200000000000000 : ℚ)
  oldCenter := (2569051346310013 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1019
  oldLo := (12837499999999999 / 25000000000000000 : ℚ)
  oldHi := (51400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1219]
}

def cell_9870 : Cell := { cellDefaults with
  domain := ⟨(10559375000000001 / 25000000000000000 : ℚ), (10560937500000001 / 25000000000000000 : ℚ)⟩
  r := (67881232898621 / 100000000000000 : ℚ)
  w := (3095977370589 / 2000000000000 : ℚ)
  center := (10560156250000001 / 25000000000000000 : ℚ)
  supportValue := (5136288967733709 / 10000000000000000 : ℚ)
  supportSlope := (-5802291344387811 / 2000000000000000 : ℚ)
  oldCenter := (5136288967733709 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1019
  oldLo := (12837499999999999 / 25000000000000000 : ℚ)
  oldHi := (51400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1219]
}

def cell_9871 : Cell := { cellDefaults with
  domain := ⟨(10560937500000001 / 25000000000000000 : ℚ), (10562500000000001 / 25000000000000000 : ℚ)⟩
  r := (67881232898621 / 100000000000000 : ℚ)
  w := (3095977370589 / 2000000000000 : ℚ)
  center := (10561718750000001 / 25000000000000000 : ℚ)
  supportValue := (2567238076762581 / 5000000000000000 : ℚ)
  supportSlope := (-2899980401064539 / 1000000000000000 : ℚ)
  oldCenter := (2567238076762581 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1019
  oldLo := (5132960893854749 / 10000000000000000 : ℚ)
  oldHi := (51400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1218, piece_1219]
}

def cell_9872 : Cell := { cellDefaults with
  domain := ⟨(10562500000000001 / 25000000000000000 : ℚ), (10564062500000001 / 25000000000000000 : ℚ)⟩
  r := (2119952399373 / 3125000000000 : ℚ)
  w := (15473815356059 / 10000000000000 : ℚ)
  center := (10563281250000001 / 25000000000000000 : ℚ)
  supportValue := (5140192253014937 / 10000000000000000 : ℚ)
  supportSlope := (-7256068591035003 / 2500000000000000 : ℚ)
  oldCenter := (5140192253014937 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1020
  oldLo := (12837499999999999 / 25000000000000000 : ℚ)
  oldHi := (12862499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1219, piece_1220]
}

def cell_9873 : Cell := { cellDefaults with
  domain := ⟨(10564062500000001 / 25000000000000000 : ℚ), (10565625000000001 / 25000000000000000 : ℚ)⟩
  r := (2119952399373 / 3125000000000 : ℚ)
  w := (15473815356059 / 10000000000000 : ℚ)
  center := (10564843750000001 / 25000000000000000 : ℚ)
  supportValue := (1027675712332441 / 2000000000000000 : ℚ)
  supportSlope := (-1813220920154901 / 625000000000000 : ℚ)
  oldCenter := (1027675712332441 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1020
  oldLo := (12837499999999999 / 25000000000000000 : ℚ)
  oldHi := (51400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1219]
}

def cell_9874 : Cell := { cellDefaults with
  domain := ⟨(10565625000000001 / 25000000000000000 : ℚ), (10568750000000001 / 25000000000000000 : ℚ)⟩
  r := (2119952399373 / 3125000000000 : ℚ)
  w := (15473815356059 / 10000000000000 : ℚ)
  center := (10567187500000001 / 25000000000000000 : ℚ)
  supportValue := (5135663466772783 / 10000000000000000 : ℚ)
  supportSlope := (-1449451416656089 / 500000000000000 : ℚ)
  oldCenter := (5135663466772783 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1020
  oldLo := (5132960893854749 / 10000000000000000 : ℚ)
  oldHi := (51400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1218, piece_1219]
}

def cell_9875 : Cell := { cellDefaults with
  domain := ⟨(10568750000000001 / 25000000000000000 : ℚ), (10570312500000001 / 25000000000000000 : ℚ)⟩
  r := (2119952399373 / 3125000000000 : ℚ)
  w := (15473815356059 / 10000000000000 : ℚ)
  center := (10569531250000001 / 25000000000000000 : ℚ)
  supportValue := (5132943050986921 / 10000000000000000 : ℚ)
  supportSlope := (-181054039222861 / 62500000000000 : ℚ)
  oldCenter := (5132943050986921 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1020
  oldLo := (51300000000000001 / 100000000000000000 : ℚ)
  oldHi := (12837499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1217, piece_1218]
}

def cell_9876 : Cell := { cellDefaults with
  domain := ⟨(10570312500000001 / 25000000000000000 : ℚ), (10571875000000001 / 25000000000000000 : ℚ)⟩
  r := (2119952399373 / 3125000000000 : ℚ)
  w := (15473815356059 / 10000000000000 : ℚ)
  center := (10571093750000001 / 25000000000000000 : ℚ)
  supportValue := (5131133017232737 / 10000000000000000 : ℚ)
  supportSlope := (-2895242147509691 / 1000000000000000 : ℚ)
  oldCenter := (5131133017232737 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1020
  oldLo := (51300000000000001 / 100000000000000000 : ℚ)
  oldHi := (5132960893854749 / 10000000000000000 : ℚ)
  oldPieces := [piece_1217]
}

def cell_9877 : Cell := { cellDefaults with
  domain := ⟨(10571875000000001 / 25000000000000000 : ℚ), (10573437500000001 / 25000000000000000 : ℚ)⟩
  r := (2119952399373 / 3125000000000 : ℚ)
  w := (15473815356059 / 10000000000000 : ℚ)
  center := (10572656250000001 / 25000000000000000 : ℚ)
  supportValue := (5129323860136321 / 10000000000000000 : ℚ)
  supportSlope := (-28941318762711887 / 10000000000000000 : ℚ)
  oldCenter := (5129323860136321 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1020
  oldLo := (12812499999999999 / 25000000000000000 : ℚ)
  oldHi := (5132960893854749 / 10000000000000000 : ℚ)
  oldPieces := [piece_1216, piece_1217]
}

def cell_9878 : Cell := { cellDefaults with
  domain := ⟨(10573437500000001 / 25000000000000000 : ℚ), (10575000000000001 / 25000000000000000 : ℚ)⟩
  r := (2119952399373 / 3125000000000 : ℚ)
  w := (15473815356059 / 10000000000000 : ℚ)
  center := (10574218750000001 / 25000000000000000 : ℚ)
  supportValue := (640939436036511 / 1250000000000000 : ℚ)
  supportSlope := (-2892583382383407 / 1000000000000000 : ℚ)
  oldCenter := (640939436036511 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1020
  oldLo := (12812499999999999 / 25000000000000000 : ℚ)
  oldHi := (51300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1216]
}

def cell_9879 : Cell := { cellDefaults with
  domain := ⟨(10575000000000001 / 25000000000000000 : ℚ), (10576562500000001 / 25000000000000000 : ℚ)⟩
  r := (33897889055591 / 50000000000000 : ℚ)
  w := (3866939158601 / 2500000000000 : ℚ)
  center := (10575781250000001 / 25000000000000000 : ℚ)
  supportValue := (256660904489177 / 500000000000000 : ℚ)
  supportSlope := (-45238262339653 / 15625000000000 : ℚ)
  oldCenter := (256660904489177 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1021
  oldLo := (51300000000000001 / 100000000000000000 : ℚ)
  oldHi := (12837499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1217, piece_1218]
}

def cell_9880 : Cell := { cellDefaults with
  domain := ⟨(10576562500000001 / 25000000000000000 : ℚ), (10578125000000001 / 25000000000000000 : ℚ)⟩
  r := (33897889055591 / 50000000000000 : ℚ)
  w := (3866939158601 / 2500000000000 : ℚ)
  center := (10577343750000001 / 25000000000000000 : ℚ)
  supportValue := (5131409065195353 / 10000000000000000 : ℚ)
  supportSlope := (-14468143214951823 / 5000000000000000 : ℚ)
  oldCenter := (5131409065195353 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1021
  oldLo := (51300000000000001 / 100000000000000000 : ℚ)
  oldHi := (5132960893854749 / 10000000000000000 : ℚ)
  oldPieces := [piece_1217]
}

def cell_9881 : Cell := { cellDefaults with
  domain := ⟨(10578125000000001 / 25000000000000000 : ℚ), (10581250000000001 / 25000000000000000 : ℚ)⟩
  r := (33897889055591 / 50000000000000 : ℚ)
  w := (3866939158601 / 2500000000000 : ℚ)
  center := (10579687500000001 / 25000000000000000 : ℚ)
  supportValue := (512870075244739 / 1000000000000000 : ℚ)
  supportSlope := (-144585149217491 / 50000000000000 : ℚ)
  oldCenter := (512870075244739 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1021
  oldLo := (12812499999999999 / 25000000000000000 : ℚ)
  oldHi := (5132960893854749 / 10000000000000000 : ℚ)
  oldPieces := [piece_1216, piece_1217]
}

def cell_9882 : Cell := { cellDefaults with
  domain := ⟨(10581250000000001 / 25000000000000000 : ℚ), (10582812500000001 / 25000000000000000 : ℚ)⟩
  r := (33897889055591 / 50000000000000 : ℚ)
  w := (3866939158601 / 2500000000000 : ℚ)
  center := (10582031250000001 / 25000000000000000 : ℚ)
  supportValue := (205039490080897 / 400000000000000 : ℚ)
  supportSlope := (-577871393635121 / 200000000000000 : ℚ)
  oldCenter := (205039490080897 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1021
  oldLo := (12812499999999999 / 25000000000000000 : ℚ)
  oldHi := (51300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1216]
}

def cell_9883 : Cell := { cellDefaults with
  domain := ⟨(10582812500000001 / 25000000000000000 : ℚ), (10584375000000001 / 25000000000000000 : ℚ)⟩
  r := (33897889055591 / 50000000000000 : ℚ)
  w := (3866939158601 / 2500000000000 : ℚ)
  center := (10583593750000001 / 25000000000000000 : ℚ)
  supportValue := (5124181742361931 / 10000000000000000 : ℚ)
  supportSlope := (-2888298751958729 / 1000000000000000 : ℚ)
  oldCenter := (5124181742361931 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1021
  oldLo := (51200000000000001 / 100000000000000000 : ℚ)
  oldHi := (51300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1215, piece_1216]
}

def cell_9884 : Cell := { cellDefaults with
  domain := ⟨(10584375000000001 / 25000000000000000 : ℚ), (10585937500000001 / 25000000000000000 : ℚ)⟩
  r := (33897889055591 / 50000000000000 : ℚ)
  w := (3866939158601 / 2500000000000 : ℚ)
  center := (10585156250000001 / 25000000000000000 : ℚ)
  supportValue := (1024475408770523 / 2000000000000000 : ℚ)
  supportSlope := (-28867082800871913 / 10000000000000000 : ℚ)
  oldCenter := (1024475408770523 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1021
  oldLo := (51200000000000001 / 100000000000000000 : ℚ)
  oldHi := (12812499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1215]
}

def cell_9885 : Cell := { cellDefaults with
  domain := ⟨(10585937500000001 / 25000000000000000 : ℚ), (10587500000000001 / 25000000000000000 : ℚ)⟩
  r := (33897889055591 / 50000000000000 : ℚ)
  w := (3866939158601 / 2500000000000 : ℚ)
  center := (10586718750000001 / 25000000000000000 : ℚ)
  supportValue := (5120573355643907 / 10000000000000000 : ℚ)
  supportSlope := (-28852001684072093 / 10000000000000000 : ℚ)
  oldCenter := (5120573355643907 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1021
  oldLo := (10229999999999999 / 20000000000000000 : ℚ)
  oldHi := (12812499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1214, piece_1215]
}

def cell_9886 : Cell := { cellDefaults with
  domain := ⟨(10587500000000001 / 25000000000000000 : ℚ), (10589062500000001 / 25000000000000000 : ℚ)⟩
  r := (67753138725419 / 100000000000000 : ℚ)
  w := (15461711336121 / 10000000000000 : ℚ)
  center := (10588281250000001 / 25000000000000000 : ℚ)
  supportValue := (1025252396936899 / 2000000000000000 : ℚ)
  supportSlope := (-1443873129607809 / 500000000000000 : ℚ)
  oldCenter := (1025252396936899 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1022
  oldLo := (12812499999999999 / 25000000000000000 : ℚ)
  oldHi := (51300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1216]
}

def cell_9887 : Cell := { cellDefaults with
  domain := ⟨(10589062500000001 / 25000000000000000 : ℚ), (10590625000000001 / 25000000000000000 : ℚ)⟩
  r := (67753138725419 / 100000000000000 : ℚ)
  w := (15461711336121 / 10000000000000 : ℚ)
  center := (10589843750000001 / 25000000000000000 : ℚ)
  supportValue := (2562228768398247 / 5000000000000000 : ℚ)
  supportSlope := (-2886601202455097 / 1000000000000000 : ℚ)
  oldCenter := (2562228768398247 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1022
  oldLo := (51200000000000001 / 100000000000000000 : ℚ)
  oldHi := (51300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1215, piece_1216]
}

def cell_9888 : Cell := { cellDefaults with
  domain := ⟨(10590625000000001 / 25000000000000000 : ℚ), (10593750000000001 / 25000000000000000 : ℚ)⟩
  r := (67753138725419 / 100000000000000 : ℚ)
  w := (15461711336121 / 10000000000000 : ℚ)
  center := (10592187500000001 / 25000000000000000 : ℚ)
  supportValue := (5121755959108517 / 10000000000000000 : ℚ)
  supportSlope := (-28843043820270253 / 10000000000000000 : ℚ)
  oldCenter := (5121755959108517 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1022
  oldLo := (10229999999999999 / 20000000000000000 : ℚ)
  oldHi := (12812499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1214, piece_1215]
}

def cell_9889 : Cell := { cellDefaults with
  domain := ⟨(10593750000000001 / 25000000000000000 : ℚ), (10595312500000001 / 25000000000000000 : ℚ)⟩
  r := (67753138725419 / 100000000000000 : ℚ)
  w := (15461711336121 / 10000000000000 : ℚ)
  center := (10594531250000001 / 25000000000000000 : ℚ)
  supportValue := (2559524642824973 / 5000000000000000 : ℚ)
  supportSlope := (-14412319695633613 / 5000000000000000 : ℚ)
  oldCenter := (2559524642824973 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1022
  oldLo := (10229999999999999 / 20000000000000000 : ℚ)
  oldHi := (51200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1214]
}

def cell_9890 : Cell := { cellDefaults with
  domain := ⟨(10595312500000001 / 25000000000000000 : ℚ), (10596875000000001 / 25000000000000000 : ℚ)⟩
  r := (67753138725419 / 100000000000000 : ℚ)
  w := (15461711336121 / 10000000000000 : ℚ)
  center := (10596093750000001 / 25000000000000000 : ℚ)
  supportValue := (5117248249305291 / 10000000000000000 : ℚ)
  supportSlope := (-720212772767681 / 250000000000000 : ℚ)
  oldCenter := (5117248249305291 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1022
  oldLo := (10229999999999999 / 20000000000000000 : ℚ)
  oldHi := (51200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1214]
}

def cell_9891 : Cell := { cellDefaults with
  domain := ⟨(10596875000000001 / 25000000000000000 : ℚ), (10598437500000001 / 25000000000000000 : ℚ)⟩
  r := (67753138725419 / 100000000000000 : ℚ)
  w := (15461711336121 / 10000000000000 : ℚ)
  center := (10597656250000001 / 25000000000000000 : ℚ)
  supportValue := (2557724110210449 / 5000000000000000 : ℚ)
  supportSlope := (-2879388357673207 / 1000000000000000 : ℚ)
  oldCenter := (2557724110210449 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1022
  oldLo := (51100000000000001 / 100000000000000000 : ℚ)
  oldHi := (51200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1213, piece_1214]
}

def cell_9892 : Cell := { cellDefaults with
  domain := ⟨(10598437500000001 / 25000000000000000 : ℚ), (10600000000000001 / 25000000000000000 : ℚ)⟩
  r := (67753138725419 / 100000000000000 : ℚ)
  w := (15461711336121 / 10000000000000 : ℚ)
  center := (10599218750000001 / 25000000000000000 : ℚ)
  supportValue := (5113648921500433 / 10000000000000000 : ℚ)
  supportSlope := (-28782177867796577 / 10000000000000000 : ℚ)
  oldCenter := (5113648921500433 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1022
  oldLo := (51100000000000001 / 100000000000000000 : ℚ)
  oldHi := (10229999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1213]
}

def cell_9893 : Cell := { cellDefaults with
  domain := ⟨(10600000000000001 / 25000000000000000 : ℚ), (10601562500000001 / 25000000000000000 : ℚ)⟩
  r := (13542111808377 / 20000000000000 : ℚ)
  w := (7727839074701 / 5000000000000 : ℚ)
  center := (10600781250000001 / 25000000000000000 : ℚ)
  supportValue := (5119324137925623 / 10000000000000000 : ℚ)
  supportSlope := (-2880786213449227 / 1000000000000000 : ℚ)
  oldCenter := (5119324137925623 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1023
  oldLo := (10229999999999999 / 20000000000000000 : ℚ)
  oldHi := (12812499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1214, piece_1215]
}

def cell_9894 : Cell := { cellDefaults with
  domain := ⟨(10601562500000001 / 25000000000000000 : ℚ), (10603125000000001 / 25000000000000000 : ℚ)⟩
  r := (13542111808377 / 20000000000000 : ℚ)
  w := (7727839074701 / 5000000000000 : ℚ)
  center := (10602343750000001 / 25000000000000000 : ℚ)
  supportValue := (5117524103954487 / 10000000000000000 : ℚ)
  supportSlope := (-2879248487815289 / 1000000000000000 : ℚ)
  oldCenter := (5117524103954487 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1023
  oldLo := (10229999999999999 / 20000000000000000 : ℚ)
  oldHi := (51200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1214]
}

def cell_9895 : Cell := { cellDefaults with
  domain := ⟨(10603125000000001 / 25000000000000000 : ℚ), (10606250000000001 / 25000000000000000 : ℚ)⟩
  r := (13542111808377 / 20000000000000 : ℚ)
  w := (7727839074701 / 5000000000000 : ℚ)
  center := (10604687500000001 / 25000000000000000 : ℚ)
  supportValue := (2557414741633093 / 5000000000000000 : ℚ)
  supportSlope := (-359644840613349 / 125000000000000 : ℚ)
  oldCenter := (2557414741633093 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1023
  oldLo := (51100000000000001 / 100000000000000000 : ℚ)
  oldHi := (51200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1213, piece_1214]
}

def cell_9896 : Cell := { cellDefaults with
  domain := ⟨(10606250000000001 / 25000000000000000 : ℚ), (10607812500000001 / 25000000000000000 : ℚ)⟩
  r := (13542111808377 / 20000000000000 : ℚ)
  w := (7727839074701 / 5000000000000 : ℚ)
  center := (10607031250000001 / 25000000000000000 : ℚ)
  supportValue := (319508090485833 / 625000000000000 : ℚ)
  supportSlope := (-28750117407874143 / 10000000000000000 : ℚ)
  oldCenter := (319508090485833 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1023
  oldLo := (51100000000000001 / 100000000000000000 : ℚ)
  oldHi := (10229999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1213]
}

def cell_9897 : Cell := { cellDefaults with
  domain := ⟨(10607812500000001 / 25000000000000000 : ℚ), (10609375000000001 / 25000000000000000 : ℚ)⟩
  r := (13542111808377 / 20000000000000 : ℚ)
  w := (7727839074701 / 5000000000000 : ℚ)
  center := (10608593750000001 / 25000000000000000 : ℚ)
  supportValue := (5110333067079049 / 10000000000000000 : ℚ)
  supportSlope := (-1149436561790651 / 400000000000000 : ℚ)
  oldCenter := (5110333067079049 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1023
  oldLo := (10209999999999999 / 20000000000000000 : ℚ)
  oldHi := (10229999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1212, piece_1213]
}

def cell_9898 : Cell := { cellDefaults with
  domain := ⟨(10609375000000001 / 25000000000000000 : ℚ), (10610937500000001 / 25000000000000000 : ℚ)⟩
  r := (13542111808377 / 20000000000000 : ℚ)
  w := (7727839074701 / 5000000000000 : ℚ)
  center := (10610156250000001 / 25000000000000000 : ℚ)
  supportValue := (5108537389460769 / 10000000000000000 : ℚ)
  supportSlope := (-14361943383320863 / 5000000000000000 : ℚ)
  oldCenter := (5108537389460769 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1023
  oldLo := (10209999999999999 / 20000000000000000 : ℚ)
  oldHi := (51100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1212]
}

def cell_9899 : Cell := { cellDefaults with
  domain := ⟨(10610937500000001 / 25000000000000000 : ℚ), (10612500000000001 / 25000000000000000 : ℚ)⟩
  r := (13542111808377 / 20000000000000 : ℚ)
  w := (7727839074701 / 5000000000000 : ℚ)
  center := (10611718750000001 / 25000000000000000 : ℚ)
  supportValue := (319171415505533 / 625000000000000 : ℚ)
  supportSlope := (-717695611766267 / 250000000000000 : ℚ)
  oldCenter := (319171415505533 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1023
  oldLo := (10209999999999999 / 20000000000000000 : ℚ)
  oldHi := (51100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1212]
}

theorem check_9850 : cell_9850.check = true := by
  decide +kernel

theorem check_9851 : cell_9851.check = true := by
  decide +kernel

theorem check_9852 : cell_9852.check = true := by
  decide +kernel

theorem check_9853 : cell_9853.check = true := by
  decide +kernel

theorem check_9854 : cell_9854.check = true := by
  decide +kernel

theorem check_9855 : cell_9855.check = true := by
  decide +kernel

theorem check_9856 : cell_9856.check = true := by
  decide +kernel

theorem check_9857 : cell_9857.check = true := by
  decide +kernel

theorem check_9858 : cell_9858.check = true := by
  decide +kernel

theorem check_9859 : cell_9859.check = true := by
  decide +kernel

theorem check_9860 : cell_9860.check = true := by
  decide +kernel

theorem check_9861 : cell_9861.check = true := by
  decide +kernel

theorem check_9862 : cell_9862.check = true := by
  decide +kernel

theorem check_9863 : cell_9863.check = true := by
  decide +kernel

theorem check_9864 : cell_9864.check = true := by
  decide +kernel

theorem check_9865 : cell_9865.check = true := by
  decide +kernel

theorem check_9866 : cell_9866.check = true := by
  decide +kernel

theorem check_9867 : cell_9867.check = true := by
  decide +kernel

theorem check_9868 : cell_9868.check = true := by
  decide +kernel

theorem check_9869 : cell_9869.check = true := by
  decide +kernel

theorem check_9870 : cell_9870.check = true := by
  decide +kernel

theorem check_9871 : cell_9871.check = true := by
  decide +kernel

theorem check_9872 : cell_9872.check = true := by
  decide +kernel

theorem check_9873 : cell_9873.check = true := by
  decide +kernel

theorem check_9874 : cell_9874.check = true := by
  decide +kernel

theorem check_9875 : cell_9875.check = true := by
  decide +kernel

theorem check_9876 : cell_9876.check = true := by
  decide +kernel

theorem check_9877 : cell_9877.check = true := by
  decide +kernel

theorem check_9878 : cell_9878.check = true := by
  decide +kernel

theorem check_9879 : cell_9879.check = true := by
  decide +kernel

theorem check_9880 : cell_9880.check = true := by
  decide +kernel

theorem check_9881 : cell_9881.check = true := by
  decide +kernel

theorem check_9882 : cell_9882.check = true := by
  decide +kernel

theorem check_9883 : cell_9883.check = true := by
  decide +kernel

theorem check_9884 : cell_9884.check = true := by
  decide +kernel

theorem check_9885 : cell_9885.check = true := by
  decide +kernel

theorem check_9886 : cell_9886.check = true := by
  decide +kernel

theorem check_9887 : cell_9887.check = true := by
  decide +kernel

theorem check_9888 : cell_9888.check = true := by
  decide +kernel

theorem check_9889 : cell_9889.check = true := by
  decide +kernel

theorem check_9890 : cell_9890.check = true := by
  decide +kernel

theorem check_9891 : cell_9891.check = true := by
  decide +kernel

theorem check_9892 : cell_9892.check = true := by
  decide +kernel

theorem check_9893 : cell_9893.check = true := by
  decide +kernel

theorem check_9894 : cell_9894.check = true := by
  decide +kernel

theorem check_9895 : cell_9895.check = true := by
  decide +kernel

theorem check_9896 : cell_9896.check = true := by
  decide +kernel

theorem check_9897 : cell_9897.check = true := by
  decide +kernel

theorem check_9898 : cell_9898.check = true := by
  decide +kernel

theorem check_9899 : cell_9899.check = true := by
  decide +kernel

def cells : List Cell := [cell_9850, cell_9851, cell_9852, cell_9853, cell_9854, cell_9855, cell_9856, cell_9857, cell_9858, cell_9859, cell_9860, cell_9861, cell_9862, cell_9863, cell_9864, cell_9865, cell_9866, cell_9867, cell_9868, cell_9869, cell_9870, cell_9871, cell_9872, cell_9873, cell_9874, cell_9875, cell_9876, cell_9877, cell_9878, cell_9879, cell_9880, cell_9881, cell_9882, cell_9883, cell_9884, cell_9885, cell_9886, cell_9887, cell_9888, cell_9889, cell_9890, cell_9891, cell_9892, cell_9893, cell_9894, cell_9895, cell_9896, cell_9897, cell_9898, cell_9899]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9850, check_9851, check_9852, check_9853, check_9854, check_9855, check_9856, check_9857, check_9858, check_9859, check_9860, check_9861, check_9862, check_9863, check_9864, check_9865, check_9866, check_9867, check_9868, check_9869, check_9870, check_9871, check_9872, check_9873, check_9874, check_9875, check_9876, check_9877, check_9878, check_9879, check_9880, check_9881, check_9882, check_9883, check_9884, check_9885, check_9886, check_9887, check_9888, check_9889, check_9890, check_9891, check_9892, check_9893, check_9894, check_9895, check_9896, check_9897, check_9898, check_9899, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0197

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0197
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0197
open AnalyticBounds.ExpressionCertificate

theorem linked_9850 : Linked cell_9850 pieces := by
  link_source cell_9850 with piece_1017 using piece_1017_mem, ⟨piece_1223_mem, piece_1224_mem⟩

theorem linked_9851 : Linked cell_9851 pieces := by
  link_source cell_9851 with piece_1017 using piece_1017_mem, piece_1223_mem

theorem linked_9852 : Linked cell_9852 pieces := by
  link_source cell_9852 with piece_1017 using piece_1017_mem, ⟨piece_1222_mem, piece_1223_mem⟩

theorem linked_9853 : Linked cell_9853 pieces := by
  link_source cell_9853 with piece_1017 using piece_1017_mem, piece_1222_mem

theorem linked_9854 : Linked cell_9854 pieces := by
  link_source cell_9854 with piece_1017 using piece_1017_mem, piece_1222_mem

theorem linked_9855 : Linked cell_9855 pieces := by
  link_source cell_9855 with piece_1017 using piece_1017_mem, ⟨piece_1221_mem, piece_1222_mem⟩

theorem linked_9856 : Linked cell_9856 pieces := by
  link_source cell_9856 with piece_1017 using piece_1017_mem, piece_1221_mem

theorem linked_9857 : Linked cell_9857 pieces := by
  link_source cell_9857 with piece_1018 using piece_1018_mem, ⟨piece_1222_mem, piece_1223_mem⟩

theorem linked_9858 : Linked cell_9858 pieces := by
  link_source cell_9858 with piece_1018 using piece_1018_mem, piece_1222_mem

theorem linked_9859 : Linked cell_9859 pieces := by
  link_source cell_9859 with piece_1018 using piece_1018_mem, ⟨piece_1221_mem, piece_1222_mem⟩

theorem linked_9860 : Linked cell_9860 pieces := by
  link_source cell_9860 with piece_1018 using piece_1018_mem, piece_1221_mem

theorem linked_9861 : Linked cell_9861 pieces := by
  link_source cell_9861 with piece_1018 using piece_1018_mem, piece_1221_mem

theorem linked_9862 : Linked cell_9862 pieces := by
  link_source cell_9862 with piece_1018 using piece_1018_mem, ⟨piece_1220_mem, piece_1221_mem⟩

theorem linked_9863 : Linked cell_9863 pieces := by
  link_source cell_9863 with piece_1018 using piece_1018_mem, piece_1220_mem

theorem linked_9864 : Linked cell_9864 pieces := by
  link_source cell_9864 with piece_1018 using piece_1018_mem, piece_1220_mem

theorem linked_9865 : Linked cell_9865 pieces := by
  link_source cell_9865 with piece_1019 using piece_1019_mem, piece_1221_mem

theorem linked_9866 : Linked cell_9866 pieces := by
  link_source cell_9866 with piece_1019 using piece_1019_mem, ⟨piece_1220_mem, piece_1221_mem⟩

theorem linked_9867 : Linked cell_9867 pieces := by
  link_source cell_9867 with piece_1019 using piece_1019_mem, piece_1220_mem

theorem linked_9868 : Linked cell_9868 pieces := by
  link_source cell_9868 with piece_1019 using piece_1019_mem, ⟨piece_1219_mem, piece_1220_mem⟩

theorem linked_9869 : Linked cell_9869 pieces := by
  link_source cell_9869 with piece_1019 using piece_1019_mem, piece_1219_mem

theorem linked_9870 : Linked cell_9870 pieces := by
  link_source cell_9870 with piece_1019 using piece_1019_mem, piece_1219_mem

theorem linked_9871 : Linked cell_9871 pieces := by
  link_source cell_9871 with piece_1019 using piece_1019_mem, ⟨piece_1218_mem, piece_1219_mem⟩

theorem linked_9872 : Linked cell_9872 pieces := by
  link_source cell_9872 with piece_1020 using piece_1020_mem, ⟨piece_1219_mem, piece_1220_mem⟩

theorem linked_9873 : Linked cell_9873 pieces := by
  link_source cell_9873 with piece_1020 using piece_1020_mem, piece_1219_mem

theorem linked_9874 : Linked cell_9874 pieces := by
  link_source cell_9874 with piece_1020 using piece_1020_mem, ⟨piece_1218_mem, piece_1219_mem⟩

theorem linked_9875 : Linked cell_9875 pieces := by
  link_source cell_9875 with piece_1020 using piece_1020_mem, ⟨piece_1217_mem, piece_1218_mem⟩

theorem linked_9876 : Linked cell_9876 pieces := by
  link_source cell_9876 with piece_1020 using piece_1020_mem, piece_1217_mem

theorem linked_9877 : Linked cell_9877 pieces := by
  link_source cell_9877 with piece_1020 using piece_1020_mem, ⟨piece_1216_mem, piece_1217_mem⟩

theorem linked_9878 : Linked cell_9878 pieces := by
  link_source cell_9878 with piece_1020 using piece_1020_mem, piece_1216_mem

theorem linked_9879 : Linked cell_9879 pieces := by
  link_source cell_9879 with piece_1021 using piece_1021_mem, ⟨piece_1217_mem, piece_1218_mem⟩

theorem linked_9880 : Linked cell_9880 pieces := by
  link_source cell_9880 with piece_1021 using piece_1021_mem, piece_1217_mem

theorem linked_9881 : Linked cell_9881 pieces := by
  link_source cell_9881 with piece_1021 using piece_1021_mem, ⟨piece_1216_mem, piece_1217_mem⟩

theorem linked_9882 : Linked cell_9882 pieces := by
  link_source cell_9882 with piece_1021 using piece_1021_mem, piece_1216_mem

theorem linked_9883 : Linked cell_9883 pieces := by
  link_source cell_9883 with piece_1021 using piece_1021_mem, ⟨piece_1215_mem, piece_1216_mem⟩

theorem linked_9884 : Linked cell_9884 pieces := by
  link_source cell_9884 with piece_1021 using piece_1021_mem, piece_1215_mem

theorem linked_9885 : Linked cell_9885 pieces := by
  link_source cell_9885 with piece_1021 using piece_1021_mem, ⟨piece_1214_mem, piece_1215_mem⟩

theorem linked_9886 : Linked cell_9886 pieces := by
  link_source cell_9886 with piece_1022 using piece_1022_mem, piece_1216_mem

theorem linked_9887 : Linked cell_9887 pieces := by
  link_source cell_9887 with piece_1022 using piece_1022_mem, ⟨piece_1215_mem, piece_1216_mem⟩

theorem linked_9888 : Linked cell_9888 pieces := by
  link_source cell_9888 with piece_1022 using piece_1022_mem, ⟨piece_1214_mem, piece_1215_mem⟩

theorem linked_9889 : Linked cell_9889 pieces := by
  link_source cell_9889 with piece_1022 using piece_1022_mem, piece_1214_mem

theorem linked_9890 : Linked cell_9890 pieces := by
  link_source cell_9890 with piece_1022 using piece_1022_mem, piece_1214_mem

theorem linked_9891 : Linked cell_9891 pieces := by
  link_source cell_9891 with piece_1022 using piece_1022_mem, ⟨piece_1213_mem, piece_1214_mem⟩

theorem linked_9892 : Linked cell_9892 pieces := by
  link_source cell_9892 with piece_1022 using piece_1022_mem, piece_1213_mem

theorem linked_9893 : Linked cell_9893 pieces := by
  link_source cell_9893 with piece_1023 using piece_1023_mem, ⟨piece_1214_mem, piece_1215_mem⟩

theorem linked_9894 : Linked cell_9894 pieces := by
  link_source cell_9894 with piece_1023 using piece_1023_mem, piece_1214_mem

theorem linked_9895 : Linked cell_9895 pieces := by
  link_source cell_9895 with piece_1023 using piece_1023_mem, ⟨piece_1213_mem, piece_1214_mem⟩

theorem linked_9896 : Linked cell_9896 pieces := by
  link_source cell_9896 with piece_1023 using piece_1023_mem, piece_1213_mem

theorem linked_9897 : Linked cell_9897 pieces := by
  link_source cell_9897 with piece_1023 using piece_1023_mem, ⟨piece_1212_mem, piece_1213_mem⟩

theorem linked_9898 : Linked cell_9898 pieces := by
  link_source cell_9898 with piece_1023 using piece_1023_mem, piece_1212_mem

theorem linked_9899 : Linked cell_9899 pieces := by
  link_source cell_9899 with piece_1023 using piece_1023_mem, piece_1212_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0197.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0197.cells,List.forall_mem_cons]
  exact ⟨linked_9850, linked_9851, linked_9852, linked_9853, linked_9854, linked_9855, linked_9856, linked_9857, linked_9858, linked_9859, linked_9860, linked_9861, linked_9862, linked_9863, linked_9864, linked_9865, linked_9866, linked_9867, linked_9868, linked_9869, linked_9870, linked_9871, linked_9872, linked_9873, linked_9874, linked_9875, linked_9876, linked_9877, linked_9878, linked_9879, linked_9880, linked_9881, linked_9882, linked_9883, linked_9884, linked_9885, linked_9886, linked_9887, linked_9888, linked_9889, linked_9890, linked_9891, linked_9892, linked_9893, linked_9894, linked_9895, linked_9896, linked_9897, linked_9898, linked_9899, by simp⟩

theorem covered : covers (10526562500000001 / 25000000000000000 : ℚ) (10612500000000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0197.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0197
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0198
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(10612500000000001 / 25000000000000000 : ℚ), (10614062500000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (67625576415749 / 100000000000000 : ℚ)
  w := (3860912529771 / 2500000000000 : ℚ)
  center := (10613281250000001 / 25000000000000000 : ℚ)
  supportValue := (5112404390790071 / 10000000000000000 : ℚ)
  supportSlope := (-2873412342356829 / 1000000000000000 : ℚ)
  oldCenter := (5112404390790071 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1026
  oldLo := (10189999999999999 / 20000000000000000 : ℚ)
  oldHi := (51000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1210]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9900 : Cell := { cellDefaults with
  r := (13533607527329 / 20000000000000 : ℚ)
  w := (19312071779 / 12500000000 : ℚ)
  newCoefficients := coefficients_1024
  oldLo := (51100000000000001 / 100000000000000000 : ℚ)
  oldHi := (10229999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1213]
}

def cell_9901 : Cell := { cellDefaults with
  domain := ⟨(10614062500000001 / 25000000000000000 : ℚ), (10615625000000001 / 25000000000000000 : ℚ)⟩
  r := (13533607527329 / 20000000000000 : ℚ)
  w := (19312071779 / 12500000000 : ℚ)
  center := (10614843750000001 / 25000000000000000 : ℚ)
  supportValue := (127765225224677 / 250000000000000 : ℚ)
  supportSlope := (-574380698843413 / 200000000000000 : ℚ)
  oldCenter := (127765225224677 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1024
  oldLo := (10209999999999999 / 20000000000000000 : ℚ)
  oldHi := (10229999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1212, piece_1213]
}

def cell_9902 : Cell := { cellDefaults with
  domain := ⟨(10615625000000001 / 25000000000000000 : ℚ), (10618750000000001 / 25000000000000000 : ℚ)⟩
  r := (13533607527329 / 20000000000000 : ℚ)
  w := (19312071779 / 12500000000 : ℚ)
  center := (10617187500000001 / 25000000000000000 : ℚ)
  supportValue := (5107920963028667 / 10000000000000000 : ℚ)
  supportSlope := (-143499607845321 / 50000000000000 : ℚ)
  oldCenter := (5107920963028667 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1024
  oldLo := (10209999999999999 / 20000000000000000 : ℚ)
  oldHi := (51100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1212]
}

def cell_9903 : Cell := { cellDefaults with
  domain := ⟨(10618750000000001 / 25000000000000000 : ℚ), (424804469273743 / 1000000000000000 : ℚ)⟩
  r := (13533607527329 / 20000000000000 : ℚ)
  w := (19312071779 / 12500000000 : ℚ)
  center := (2654857716480447 / 6250000000000000 : ℚ)
  supportValue := (1021068608517369 / 2000000000000000 : ℚ)
  supportSlope := (-14339287666950251 / 5000000000000000 : ℚ)
  oldCenter := (1021068608517369 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1024
  oldLo := (51000000000000001 / 100000000000000000 : ℚ)
  oldHi := (51100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1211, piece_1212]
}

def cell_9904 : Cell := { cellDefaults with
  domain := ⟨(424804469273743 / 1000000000000000 : ℚ), (2655638966480447 / 6250000000000000 : ℚ)⟩
  r := (13533607527329 / 20000000000000 : ℚ)
  w := (19312071779 / 12500000000 : ℚ)
  center := (21242667597765363 / 50000000000000000 : ℚ)
  supportValue := (5103160595075087 / 10000000000000000 : ℚ)
  supportSlope := (-14331656637744141 / 5000000000000000 : ℚ)
  oldCenter := (5103160595075087 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1025
  oldLo := (51000000000000001 / 100000000000000000 : ℚ)
  oldHi := (10209999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1211]
}

def cell_9905 : Cell := { cellDefaults with
  domain := ⟨(2655638966480447 / 6250000000000000 : ℚ), (10625000000000001 / 25000000000000000 : ℚ)⟩
  r := (13533607527329 / 20000000000000 : ℚ)
  w := (19312071779 / 12500000000 : ℚ)
  center := (21247555865921789 / 50000000000000000 : ℚ)
  supportValue := (510036310997813 / 1000000000000000 : ℚ)
  supportSlope := (-5728095539543241 / 2000000000000000 : ℚ)
  oldCenter := (510036310997813 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1025
  oldHi := (10209999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1210, piece_1211]
}

def cell_9906 : Cell := { cellDefaults with
  domain := ⟨(10625000000000001 / 25000000000000000 : ℚ), (10626562500000001 / 25000000000000000 : ℚ)⟩
  center := (10625781250000001 / 25000000000000000 : ℚ)
  supportValue := (255275116252229 / 500000000000000 : ℚ)
  supportSlope := (-28661243921561663 / 10000000000000000 : ℚ)
  oldCenter := (255275116252229 / 500000000000000 : ℚ)
  oldLo := (51000000000000001 / 100000000000000000 : ℚ)
  oldHi := (51100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1211, piece_1212]
}

def cell_9907 : Cell := { cellDefaults with
  domain := ⟨(10626562500000001 / 25000000000000000 : ℚ), (10628125000000001 / 25000000000000000 : ℚ)⟩
  center := (10627343750000001 / 25000000000000000 : ℚ)
  supportValue := (318981956984853 / 625000000000000 : ℚ)
  supportSlope := (-14324928212072763 / 5000000000000000 : ℚ)
  oldCenter := (318981956984853 / 625000000000000 : ℚ)
  oldLo := (51000000000000001 / 100000000000000000 : ℚ)
  oldHi := (10209999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1211]
}

def cell_9908 : Cell := { cellDefaults with
  domain := ⟨(10628125000000001 / 25000000000000000 : ℚ), (10631250000000001 / 25000000000000000 : ℚ)⟩
  center := (10629687500000001 / 25000000000000000 : ℚ)
  supportValue := (2550515041150783 / 5000000000000000 : ℚ)
  supportSlope := (-7156785095761009 / 2500000000000000 : ℚ)
  oldCenter := (2550515041150783 / 5000000000000000 : ℚ)
  oldHi := (10209999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1210, piece_1211]
}

def cell_9909 : Cell := { cellDefaults with
  domain := ⟨(10631250000000001 / 25000000000000000 : ℚ), (10632812500000001 / 25000000000000000 : ℚ)⟩
  center := (10632031250000001 / 25000000000000000 : ℚ)
  supportValue := (5098343614892903 / 10000000000000000 : ℚ)
  supportSlope := (-446997429384699 / 156250000000000 : ℚ)
  oldCenter := (5098343614892903 / 10000000000000000 : ℚ)
  oldPieces := [piece_1210]
}

def cell_9910 : Cell := { cellDefaults with
  domain := ⟨(10632812500000001 / 25000000000000000 : ℚ), (10634375000000001 / 25000000000000000 : ℚ)⟩
  center := (10633593750000001 / 25000000000000000 : ℚ)
  supportValue := (5096556123941587 / 10000000000000000 : ℚ)
  supportSlope := (-2859186234044131 / 1000000000000000 : ℚ)
  oldCenter := (5096556123941587 / 10000000000000000 : ℚ)
  oldPieces := [piece_1210]
}

def cell_9911 : Cell := { cellDefaults with
  domain := ⟨(10634375000000001 / 25000000000000000 : ℚ), (10635937500000001 / 25000000000000000 : ℚ)⟩
  center := (10635156250000001 / 25000000000000000 : ℚ)
  supportValue := (1273692395609393 / 2500000000000000 : ℚ)
  supportSlope := (-14289825748505791 / 5000000000000000 : ℚ)
  oldCenter := (1273692395609393 / 2500000000000000 : ℚ)
  oldLo := (50900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1209, piece_1210]
}

def cell_9912 : Cell := { cellDefaults with
  domain := ⟨(10635937500000001 / 25000000000000000 : ℚ), (10637500000000001 / 25000000000000000 : ℚ)⟩
  center := (10636718750000001 / 25000000000000000 : ℚ)
  supportValue := (2546491857487317 / 5000000000000000 : ℚ)
  supportSlope := (-3570736012052933 / 1250000000000000 : ℚ)
  oldCenter := (2546491857487317 / 5000000000000000 : ℚ)
  oldLo := (50900000000000001 / 100000000000000000 : ℚ)
  oldHi := (10189999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1209]
}

def cell_9913 : Cell := { cellDefaults with
  domain := ⟨(10637500000000001 / 25000000000000000 : ℚ), (340450000000000033 / 800000000000000000 : ℚ)⟩
  r := (67583172027977 / 100000000000000 : ℚ)
  w := (7718827274607 / 5000000000000 : ℚ)
  center := (136170000000000013 / 320000000000000000 : ℚ)
  supportValue := (5098618561551427 / 10000000000000000 : ℚ)
  supportSlope := (-28591951592566427 / 10000000000000000 : ℚ)
  oldCenter := (5098618561551427 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1027
  oldPieces := [piece_1210]
}

def cell_9914 : Cell := { cellDefaults with
  domain := ⟨(340450000000000033 / 800000000000000000 : ℚ), (170250000000000017 / 400000000000000000 : ℚ)⟩
  r := (67583172027977 / 100000000000000 : ℚ)
  w := (7718827274607 / 5000000000000 : ℚ)
  center := (680950000000000067 / 1600000000000000000 : ℚ)
  supportValue := (5096832062613841 / 10000000000000000 : ℚ)
  supportSlope := (-1428800089493947 / 500000000000000 : ℚ)
  oldCenter := (5096832062613841 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1027
  oldPieces := [piece_1210]
}

def cell_9915 : Cell := { cellDefaults with
  domain := ⟨(170250000000000017 / 400000000000000000 : ℚ), (85150000000000009 / 200000000000000000 : ℚ)⟩
  r := (67583172027977 / 100000000000000 : ℚ)
  w := (7718827274607 / 5000000000000 : ℚ)
  center := (68110000000000007 / 160000000000000000 : ℚ)
  supportValue := (2547078785728689 / 5000000000000000 : ℚ)
  supportSlope := (-142782418320661 / 50000000000000 : ℚ)
  oldCenter := (2547078785728689 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1027
  oldLo := (50900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1209, piece_1210]
}

def cell_9916 : Cell := { cellDefaults with
  domain := ⟨(85150000000000009 / 200000000000000000 : ℚ), (340650000000000037 / 800000000000000000 : ℚ)⟩
  r := (67583172027977 / 100000000000000 : ℚ)
  w := (7718827274607 / 5000000000000 : ℚ)
  center := (681250000000000073 / 1600000000000000000 : ℚ)
  supportValue := (318217363035577 / 625000000000000 : ℚ)
  supportSlope := (-28534146883422693 / 10000000000000000 : ℚ)
  oldCenter := (318217363035577 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1027
  oldLo := (50900000000000001 / 100000000000000000 : ℚ)
  oldHi := (10189999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1209]
}

def cell_9917 : Cell := { cellDefaults with
  domain := ⟨(340650000000000037 / 800000000000000000 : ℚ), (170350000000000019 / 400000000000000000 : ℚ)⟩
  r := (67583172027977 / 100000000000000 : ℚ)
  w := (7718827274607 / 5000000000000 : ℚ)
  center := (27254000000000003 / 64000000000000000 : ℚ)
  supportValue := (5089694857057753 / 10000000000000000 : ℚ)
  supportSlope := (-28522240105849903 / 10000000000000000 : ℚ)
  oldCenter := (5089694857057753 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1027
  oldLo := (10169999999999999 / 20000000000000000 : ℚ)
  oldHi := (10189999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1208, piece_1209]
}

def cell_9918 : Cell := { cellDefaults with
  domain := ⟨(170350000000000019 / 400000000000000000 : ℚ), (340750000000000039 / 800000000000000000 : ℚ)⟩
  r := (67583172027977 / 100000000000000 : ℚ)
  w := (7718827274607 / 5000000000000 : ℚ)
  center := (681450000000000077 / 1600000000000000000 : ℚ)
  supportValue := (2543956295933097 / 5000000000000000 : ℚ)
  supportSlope := (-2850827387700093 / 1000000000000000 : ℚ)
  oldCenter := (2543956295933097 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1027
  oldLo := (10169999999999999 / 20000000000000000 : ℚ)
  oldHi := (50900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1208]
}

def cell_9919 : Cell := { cellDefaults with
  domain := ⟨(340750000000000039 / 800000000000000000 : ℚ), (8520000000000001 / 20000000000000000 : ℚ)⟩
  r := (67583172027977 / 100000000000000 : ℚ)
  w := (7718827274607 / 5000000000000 : ℚ)
  center := (681550000000000079 / 1600000000000000000 : ℚ)
  supportValue := (5086131321470583 / 10000000000000000 : ℚ)
  supportSlope := (-7123091553271479 / 2500000000000000 : ℚ)
  oldCenter := (5086131321470583 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1027
  oldLo := (10169999999999999 / 20000000000000000 : ℚ)
  oldHi := (50900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1208]
}

def cell_9920 : Cell := { cellDefaults with
  domain := ⟨(8520000000000001 / 20000000000000000 : ℚ), (8521250000000001 / 20000000000000000 : ℚ)⟩
  r := (33770413397797 / 50000000000000 : ℚ)
  w := (7715836317767 / 5000000000000 : ℚ)
  center := (8520625000000001 / 20000000000000000 : ℚ)
  supportValue := (5091752228602333 / 10000000000000000 : ℚ)
  supportSlope := (-142591568265793 / 50000000000000 : ℚ)
  oldCenter := (5091752228602333 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1028
  oldLo := (50900000000000001 / 100000000000000000 : ℚ)
  oldHi := (10189999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1209]
}

def cell_9921 : Cell := { cellDefaults with
  domain := ⟨(8521250000000001 / 20000000000000000 : ℚ), (8522500000000001 / 20000000000000000 : ℚ)⟩
  r := (33770413397797 / 50000000000000 : ℚ)
  w := (7715836317767 / 5000000000000 : ℚ)
  center := (8521875000000001 / 20000000000000000 : ℚ)
  supportValue := (1272492580888023 / 2500000000000000 : ℚ)
  supportSlope := (-14252754519805677 / 5000000000000000 : ℚ)
  oldCenter := (1272492580888023 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1028
  oldLo := (10169999999999999 / 20000000000000000 : ℚ)
  oldHi := (10189999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1208, piece_1209]
}

def cell_9922 : Cell := { cellDefaults with
  domain := ⟨(8522500000000001 / 20000000000000000 : ℚ), (8525000000000001 / 20000000000000000 : ℚ)⟩
  r := (33770413397797 / 50000000000000 : ℚ)
  w := (7715836317767 / 5000000000000 : ℚ)
  center := (8523750000000001 / 20000000000000000 : ℚ)
  supportValue := (5087302340413883 / 10000000000000000 : ℚ)
  supportSlope := (-28484546315379333 / 10000000000000000 : ℚ)
  oldCenter := (5087302340413883 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1028
  oldLo := (10169999999999999 / 20000000000000000 : ℚ)
  oldHi := (50900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1208]
}

def cell_9923 : Cell := { cellDefaults with
  domain := ⟨(8525000000000001 / 20000000000000000 : ℚ), (8527500000000001 / 20000000000000000 : ℚ)⟩
  r := (33770413397797 / 50000000000000 : ℚ)
  w := (7715836317767 / 5000000000000 : ℚ)
  center := (8526250000000001 / 20000000000000000 : ℚ)
  supportValue := (1270935872082233 / 2500000000000000 : ℚ)
  supportSlope := (-1778618891258299 / 625000000000000 : ℚ)
  oldCenter := (1270935872082233 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1028
  oldLo := (50800000000000001 / 100000000000000000 : ℚ)
  oldHi := (50900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1207, piece_1208]
}

def cell_9924 : Cell := { cellDefaults with
  domain := ⟨(8527500000000001 / 20000000000000000 : ℚ), (8528750000000001 / 20000000000000000 : ℚ)⟩
  r := (33770413397797 / 50000000000000 : ℚ)
  w := (7715836317767 / 5000000000000 : ℚ)
  center := (8528125000000001 / 20000000000000000 : ℚ)
  supportValue := (5081073035267933 / 10000000000000000 : ℚ)
  supportSlope := (-355437106945633 / 125000000000000 : ℚ)
  oldCenter := (5081073035267933 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1028
  oldLo := (50800000000000001 / 100000000000000000 : ℚ)
  oldHi := (10169999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1207]
}

def cell_9925 : Cell := { cellDefaults with
  domain := ⟨(8528750000000001 / 20000000000000000 : ℚ), (8530000000000001 / 20000000000000000 : ℚ)⟩
  r := (33770413397797 / 50000000000000 : ℚ)
  w := (7715836317767 / 5000000000000 : ℚ)
  center := (8529375000000001 / 20000000000000000 : ℚ)
  supportValue := (634912024473977 / 1250000000000000 : ℚ)
  supportSlope := (-28424492280763047 / 10000000000000000 : ℚ)
  oldCenter := (634912024473977 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1028
  oldLo := (1269413407821229 / 2500000000000000 : ℚ)
  oldHi := (10169999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1206, piece_1207]
}

def cell_9926 : Cell := { cellDefaults with
  domain := ⟨(8530000000000001 / 20000000000000000 : ℚ), (8531250000000001 / 20000000000000000 : ℚ)⟩
  r := (33749270387207 / 50000000000000 : ℚ)
  w := (15425702299927 / 10000000000000 : ℚ)
  center := (8530625000000001 / 20000000000000000 : ℚ)
  supportValue := (635613002511823 / 1250000000000000 : ℚ)
  supportSlope := (-1422413594823979 / 500000000000000 : ℚ)
  oldCenter := (635613002511823 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1029
  oldLo := (50800000000000001 / 100000000000000000 : ℚ)
  oldHi := (50900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1207, piece_1208]
}

def cell_9927 : Cell := { cellDefaults with
  domain := ⟨(8531250000000001 / 20000000000000000 : ℚ), (8532500000000001 / 20000000000000000 : ℚ)⟩
  r := (33749270387207 / 50000000000000 : ℚ)
  w := (15425702299927 / 10000000000000 : ℚ)
  center := (8531875000000001 / 20000000000000000 : ℚ)
  supportValue := (2541563165858329 / 5000000000000000 : ℚ)
  supportSlope := (-444298101762719 / 156250000000000 : ℚ)
  oldCenter := (2541563165858329 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1029
  oldLo := (50800000000000001 / 100000000000000000 : ℚ)
  oldHi := (10169999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1207]
}

def cell_9928 : Cell := { cellDefaults with
  domain := ⟨(8532500000000001 / 20000000000000000 : ℚ), (8535000000000001 / 20000000000000000 : ℚ)⟩
  r := (33749270387207 / 50000000000000 : ℚ)
  w := (15425702299927 / 10000000000000 : ℚ)
  center := (8533750000000001 / 20000000000000000 : ℚ)
  supportValue := (158764537890031 / 312500000000000 : ℚ)
  supportSlope := (-710338594644977 / 250000000000000 : ℚ)
  oldCenter := (158764537890031 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1029
  oldLo := (1269413407821229 / 2500000000000000 : ℚ)
  oldHi := (10169999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1206, piece_1207]
}

def cell_9929 : Cell := { cellDefaults with
  domain := ⟨(8535000000000001 / 20000000000000000 : ℚ), (8537500000000001 / 20000000000000000 : ℚ)⟩
  r := (33749270387207 / 50000000000000 : ℚ)
  w := (15425702299927 / 10000000000000 : ℚ)
  center := (8536250000000001 / 20000000000000000 : ℚ)
  supportValue := (5076915120394467 / 10000000000000000 : ℚ)
  supportSlope := (-14192828621544251 / 5000000000000000 : ℚ)
  oldCenter := (5076915120394467 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1029
  oldLo := (10149999999999999 / 20000000000000000 : ℚ)
  oldHi := (50800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1205, piece_1206]
}

def cell_9930 : Cell := { cellDefaults with
  domain := ⟨(8537500000000001 / 20000000000000000 : ℚ), (8538750000000001 / 20000000000000000 : ℚ)⟩
  r := (33749270387207 / 50000000000000 : ℚ)
  w := (15425702299927 / 10000000000000 : ℚ)
  center := (8538125000000001 / 20000000000000000 : ℚ)
  supportValue := (1268562840872901 / 2500000000000000 : ℚ)
  supportSlope := (-1418374201335837 / 500000000000000 : ℚ)
  oldCenter := (1268562840872901 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1029
  oldLo := (50700000000000001 / 100000000000000000 : ℚ)
  oldHi := (1269413407821229 / 2500000000000000 : ℚ)
  oldPieces := [piece_1204, piece_1205]
}

def cell_9931 : Cell := { cellDefaults with
  domain := ⟨(8538750000000001 / 20000000000000000 : ℚ), (8540000000000001 / 20000000000000000 : ℚ)⟩
  r := (33749270387207 / 50000000000000 : ℚ)
  w := (15425702299927 / 10000000000000 : ℚ)
  center := (8539375000000001 / 20000000000000000 : ℚ)
  supportValue := (2536239430358959 / 5000000000000000 : ℚ)
  supportSlope := (-28352129255146963 / 10000000000000000 : ℚ)
  oldCenter := (2536239430358959 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1029
  oldLo := (50700000000000001 / 100000000000000000 : ℚ)
  oldHi := (10149999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1204]
}

def cell_9932 : Cell := { cellDefaults with
  domain := ⟨(8540000000000001 / 20000000000000000 : ℚ), (8541250000000001 / 20000000000000000 : ℚ)⟩
  r := (67456311597523 / 100000000000000 : ℚ)
  w := (15419744700169 / 10000000000000 : ℚ)
  center := (8540625000000001 / 20000000000000000 : ℚ)
  supportValue := (2539036695909591 / 5000000000000000 : ℚ)
  supportSlope := (-28377843634750377 / 10000000000000000 : ℚ)
  oldCenter := (2539036695909591 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1030
  oldLo := (10149999999999999 / 20000000000000000 : ℚ)
  oldHi := (50800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1205, piece_1206]
}

def cell_9933 : Cell := { cellDefaults with
  domain := ⟨(8541250000000001 / 20000000000000000 : ℚ), (8542500000000001 / 20000000000000000 : ℚ)⟩
  r := (67456311597523 / 100000000000000 : ℚ)
  w := (15419744700169 / 10000000000000 : ℚ)
  center := (8541875000000001 / 20000000000000000 : ℚ)
  supportValue := (1269075067461707 / 2500000000000000 : ℚ)
  supportSlope := (-14181023536199433 / 5000000000000000 : ℚ)
  oldCenter := (1269075067461707 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1030
  oldLo := (10149999999999999 / 20000000000000000 : ℚ)
  oldHi := (1269413407821229 / 2500000000000000 : ℚ)
  oldPieces := [piece_1205]
}

def cell_9934 : Cell := { cellDefaults with
  domain := ⟨(8542500000000001 / 20000000000000000 : ℚ), (8545000000000001 / 20000000000000000 : ℚ)⟩
  r := (67456311597523 / 100000000000000 : ℚ)
  w := (15419744700169 / 10000000000000 : ℚ)
  center := (8543750000000001 / 20000000000000000 : ℚ)
  supportValue := (5073645700541333 / 10000000000000000 : ℚ)
  supportSlope := (-28343673735857777 / 10000000000000000 : ℚ)
  oldCenter := (5073645700541333 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1030
  oldLo := (50700000000000001 / 100000000000000000 : ℚ)
  oldHi := (1269413407821229 / 2500000000000000 : ℚ)
  oldPieces := [piece_1204, piece_1205]
}

def cell_9935 : Cell := { cellDefaults with
  domain := ⟨(8545000000000001 / 20000000000000000 : ℚ), (8546250000000001 / 20000000000000000 : ℚ)⟩
  r := (67456311597523 / 100000000000000 : ℚ)
  w := (15419744700169 / 10000000000000 : ℚ)
  center := (8545625000000001 / 20000000000000000 : ℚ)
  supportValue := (5070985973339769 / 10000000000000000 : ℚ)
  supportSlope := (-566414002206983 / 200000000000000 : ℚ)
  oldCenter := (5070985973339769 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1030
  oldLo := (50700000000000001 / 100000000000000000 : ℚ)
  oldHi := (10149999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1204]
}

def cell_9936 : Cell := { cellDefaults with
  domain := ⟨(8546250000000001 / 20000000000000000 : ℚ), (8547500000000001 / 20000000000000000 : ℚ)⟩
  r := (67456311597523 / 100000000000000 : ℚ)
  w := (15419744700169 / 10000000000000 : ℚ)
  center := (8546875000000001 / 20000000000000000 : ℚ)
  supportValue := (5069216254588501 / 10000000000000000 : ℚ)
  supportSlope := (-707765455430831 / 250000000000000 : ℚ)
  oldCenter := (5069216254588501 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1030
  oldLo := (10129999999999999 / 20000000000000000 : ℚ)
  oldHi := (10149999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1203, piece_1204]
}

def cell_9937 : Cell := { cellDefaults with
  domain := ⟨(8547500000000001 / 20000000000000000 : ℚ), (8548750000000001 / 20000000000000000 : ℚ)⟩
  r := (67456311597523 / 100000000000000 : ℚ)
  w := (15419744700169 / 10000000000000 : ℚ)
  center := (8548125000000001 / 20000000000000000 : ℚ)
  supportValue := (506744731231621 / 1000000000000000 : ℚ)
  supportSlope := (-28295182655249107 / 10000000000000000 : ℚ)
  oldCenter := (506744731231621 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1030
  oldLo := (10129999999999999 / 20000000000000000 : ℚ)
  oldHi := (50700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1203]
}

def cell_9938 : Cell := { cellDefaults with
  domain := ⟨(8548750000000001 / 20000000000000000 : ℚ), (8550000000000001 / 20000000000000000 : ℚ)⟩
  r := (67456311597523 / 100000000000000 : ℚ)
  w := (15419744700169 / 10000000000000 : ℚ)
  center := (8549375000000001 / 20000000000000000 : ℚ)
  supportValue := (5065679355413443 / 10000000000000000 : ℚ)
  supportSlope := (-1414006507920007 / 500000000000000 : ℚ)
  oldCenter := (5065679355413443 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1030
  oldLo := (50600000000000001 / 100000000000000000 : ℚ)
  oldHi := (50700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1202, piece_1203]
}

def cell_9939 : Cell := { cellDefaults with
  domain := ⟨(8550000000000001 / 20000000000000000 : ℚ), (8551250000000001 / 20000000000000000 : ℚ)⟩
  r := (3370707114269 / 5000000000000 : ℚ)
  w := (15413800060619 / 10000000000000 : ℚ)
  center := (8550625000000001 / 20000000000000000 : ℚ)
  supportValue := (2535630077453247 / 5000000000000000 : ℚ)
  supportSlope := (-14152513590151017 / 5000000000000000 : ℚ)
  oldCenter := (2535630077453247 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1031
  oldLo := (50700000000000001 / 100000000000000000 : ℚ)
  oldHi := (10149999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1204]
}

def cell_9940 : Cell := { cellDefaults with
  domain := ⟨(8551250000000001 / 20000000000000000 : ℚ), (8552500000000001 / 20000000000000000 : ℚ)⟩
  r := (3370707114269 / 5000000000000 : ℚ)
  w := (15413800060619 / 10000000000000 : ℚ)
  center := (8551875000000001 / 20000000000000000 : ℚ)
  supportValue := (506949147350011 / 1000000000000000 : ℚ)
  supportSlope := (-28294032982643103 / 10000000000000000 : ℚ)
  oldCenter := (506949147350011 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1031
  oldLo := (10129999999999999 / 20000000000000000 : ℚ)
  oldHi := (10149999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1203, piece_1204]
}

def cell_9941 : Cell := { cellDefaults with
  domain := ⟨(8552500000000001 / 20000000000000000 : ℚ), (8555000000000001 / 20000000000000000 : ℚ)⟩
  r := (3370707114269 / 5000000000000 : ℚ)
  w := (15413800060619 / 10000000000000 : ℚ)
  center := (8553750000000001 / 20000000000000000 : ℚ)
  supportValue := (5066843441876983 / 10000000000000000 : ℚ)
  supportSlope := (-2827169040003241 / 1000000000000000 : ℚ)
  oldCenter := (5066843441876983 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1031
  oldLo := (10129999999999999 / 20000000000000000 : ℚ)
  oldHi := (50700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1203]
}

def cell_9942 : Cell := { cellDefaults with
  domain := ⟨(8555000000000001 / 20000000000000000 : ℚ), (8557500000000001 / 20000000000000000 : ℚ)⟩
  r := (3370707114269 / 5000000000000 : ℚ)
  w := (15413800060619 / 10000000000000 : ℚ)
  center := (8556250000000001 / 20000000000000000 : ℚ)
  supportValue := (5063311081093603 / 10000000000000000 : ℚ)
  supportSlope := (-5649229909735709 / 2000000000000000 : ℚ)
  oldCenter := (5063311081093603 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1031
  oldLo := (50600000000000001 / 100000000000000000 : ℚ)
  oldHi := (50700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1202, piece_1203]
}

def cell_9943 : Cell := { cellDefaults with
  domain := ⟨(8557500000000001 / 20000000000000000 : ℚ), (8558750000000001 / 20000000000000000 : ℚ)⟩
  r := (3370707114269 / 5000000000000 : ℚ)
  w := (15413800060619 / 10000000000000 : ℚ)
  center := (8558125000000001 / 20000000000000000 : ℚ)
  supportValue := (5060660553742363 / 10000000000000000 : ℚ)
  supportSlope := (-2822345851516417 / 1000000000000000 : ℚ)
  oldCenter := (5060660553742363 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1031
  oldLo := (10109999999999999 / 20000000000000000 : ℚ)
  oldHi := (10129999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1201, piece_1202]
}

def cell_9944 : Cell := { cellDefaults with
  domain := ⟨(8558750000000001 / 20000000000000000 : ℚ), (8560000000000001 / 20000000000000000 : ℚ)⟩
  r := (3370707114269 / 5000000000000 : ℚ)
  w := (15413800060619 / 10000000000000 : ℚ)
  center := (8559375000000001 / 20000000000000000 : ℚ)
  supportValue := (5058896888539057 / 10000000000000000 : ℚ)
  supportSlope := (-28213040874831563 / 10000000000000000 : ℚ)
  oldCenter := (5058896888539057 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1031
  oldLo := (10109999999999999 / 20000000000000000 : ℚ)
  oldHi := (50600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1201]
}

def cell_9945 : Cell := { cellDefaults with
  domain := ⟨(8560000000000001 / 20000000000000000 : ℚ), (8561250000000001 / 20000000000000000 : ℚ)⟩
  r := (842150373417 / 1250000000000 : ℚ)
  w := (15407867850839 / 10000000000000 : ℚ)
  center := (8560625000000001 / 20000000000000000 : ℚ)
  supportValue := (202578586114381 / 400000000000000 : ℚ)
  supportSlope := (-1411866913931803 / 500000000000000 : ℚ)
  oldCenter := (202578586114381 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1032
  oldLo := (50600000000000001 / 100000000000000000 : ℚ)
  oldHi := (50700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1202, piece_1203]
}

def cell_9946 : Cell := { cellDefaults with
  domain := ⟨(8561250000000001 / 20000000000000000 : ℚ), (8562500000000001 / 20000000000000000 : ℚ)⟩
  r := (842150373417 / 1250000000000 : ℚ)
  w := (15407867850839 / 10000000000000 : ℚ)
  center := (8561875000000001 / 20000000000000000 : ℚ)
  supportValue := (2531350117879469 / 5000000000000000 : ℚ)
  supportSlope := (-28222812400215957 / 10000000000000000 : ℚ)
  oldCenter := (2531350117879469 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1032
  oldLo := (50600000000000001 / 100000000000000000 : ℚ)
  oldHi := (10129999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1202]
}

def cell_9947 : Cell := { cellDefaults with
  domain := ⟨(8562500000000001 / 20000000000000000 : ℚ), (8565000000000001 / 20000000000000000 : ℚ)⟩
  r := (842150373417 / 1250000000000 : ℚ)
  w := (15407867850839 / 10000000000000 : ℚ)
  center := (8563750000000001 / 20000000000000000 : ℚ)
  supportValue := (202402359670163 / 400000000000000 : ℚ)
  supportSlope := (-5640442742471663 / 2000000000000000 : ℚ)
  oldCenter := (202402359670163 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1032
  oldLo := (10109999999999999 / 20000000000000000 : ℚ)
  oldHi := (10129999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1201, piece_1202]
}

def cell_9948 : Cell := { cellDefaults with
  domain := ⟨(8565000000000001 / 20000000000000000 : ℚ), (8567500000000001 / 20000000000000000 : ℚ)⟩
  r := (842150373417 / 1250000000000 : ℚ)
  w := (15407867850839 / 10000000000000 : ℚ)
  center := (8566250000000001 / 20000000000000000 : ℚ)
  supportValue := (316033455868683 / 625000000000000 : ℚ)
  supportSlope := (-352179545310749 / 125000000000000 : ℚ)
  oldCenter := (316033455868683 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1032
  oldLo := (101 / 200 : ℚ)
  oldHi := (50600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1200, piece_1201]
}

def cell_9949 : Cell := { cellDefaults with
  domain := ⟨(8567500000000001 / 20000000000000000 : ℚ), (8568750000000001 / 20000000000000000 : ℚ)⟩
  r := (842150373417 / 1250000000000 : ℚ)
  w := (15407867850839 / 10000000000000 : ℚ)
  center := (8568125000000001 / 20000000000000000 : ℚ)
  supportValue := (1263472826624891 / 2500000000000000 : ℚ)
  supportSlope := (-281565353662927 / 100000000000000 : ℚ)
  oldCenter := (1263472826624891 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1032
  oldLo := (101 / 200 : ℚ)
  oldHi := (10109999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1200]
}

theorem check_9900 : cell_9900.check = true := by
  decide +kernel

theorem check_9901 : cell_9901.check = true := by
  decide +kernel

theorem check_9902 : cell_9902.check = true := by
  decide +kernel

theorem check_9903 : cell_9903.check = true := by
  decide +kernel

theorem check_9904 : cell_9904.check = true := by
  decide +kernel

theorem check_9905 : cell_9905.check = true := by
  decide +kernel

theorem check_9906 : cell_9906.check = true := by
  decide +kernel

theorem check_9907 : cell_9907.check = true := by
  decide +kernel

theorem check_9908 : cell_9908.check = true := by
  decide +kernel

theorem check_9909 : cell_9909.check = true := by
  decide +kernel

theorem check_9910 : cell_9910.check = true := by
  decide +kernel

theorem check_9911 : cell_9911.check = true := by
  decide +kernel

theorem check_9912 : cell_9912.check = true := by
  decide +kernel

theorem check_9913 : cell_9913.check = true := by
  decide +kernel

theorem check_9914 : cell_9914.check = true := by
  decide +kernel

theorem check_9915 : cell_9915.check = true := by
  decide +kernel

theorem check_9916 : cell_9916.check = true := by
  decide +kernel

theorem check_9917 : cell_9917.check = true := by
  decide +kernel

theorem check_9918 : cell_9918.check = true := by
  decide +kernel

theorem check_9919 : cell_9919.check = true := by
  decide +kernel

theorem check_9920 : cell_9920.check = true := by
  decide +kernel

theorem check_9921 : cell_9921.check = true := by
  decide +kernel

theorem check_9922 : cell_9922.check = true := by
  decide +kernel

theorem check_9923 : cell_9923.check = true := by
  decide +kernel

theorem check_9924 : cell_9924.check = true := by
  decide +kernel

theorem check_9925 : cell_9925.check = true := by
  decide +kernel

theorem check_9926 : cell_9926.check = true := by
  decide +kernel

theorem check_9927 : cell_9927.check = true := by
  decide +kernel

theorem check_9928 : cell_9928.check = true := by
  decide +kernel

theorem check_9929 : cell_9929.check = true := by
  decide +kernel

theorem check_9930 : cell_9930.check = true := by
  decide +kernel

theorem check_9931 : cell_9931.check = true := by
  decide +kernel

theorem check_9932 : cell_9932.check = true := by
  decide +kernel

theorem check_9933 : cell_9933.check = true := by
  decide +kernel

theorem check_9934 : cell_9934.check = true := by
  decide +kernel

theorem check_9935 : cell_9935.check = true := by
  decide +kernel

theorem check_9936 : cell_9936.check = true := by
  decide +kernel

theorem check_9937 : cell_9937.check = true := by
  decide +kernel

theorem check_9938 : cell_9938.check = true := by
  decide +kernel

theorem check_9939 : cell_9939.check = true := by
  decide +kernel

theorem check_9940 : cell_9940.check = true := by
  decide +kernel

theorem check_9941 : cell_9941.check = true := by
  decide +kernel

theorem check_9942 : cell_9942.check = true := by
  decide +kernel

theorem check_9943 : cell_9943.check = true := by
  decide +kernel

theorem check_9944 : cell_9944.check = true := by
  decide +kernel

theorem check_9945 : cell_9945.check = true := by
  decide +kernel

theorem check_9946 : cell_9946.check = true := by
  decide +kernel

theorem check_9947 : cell_9947.check = true := by
  decide +kernel

theorem check_9948 : cell_9948.check = true := by
  decide +kernel

theorem check_9949 : cell_9949.check = true := by
  decide +kernel

def cells : List Cell := [cell_9900, cell_9901, cell_9902, cell_9903, cell_9904, cell_9905, cell_9906, cell_9907, cell_9908, cell_9909, cell_9910, cell_9911, cell_9912, cell_9913, cell_9914, cell_9915, cell_9916, cell_9917, cell_9918, cell_9919, cell_9920, cell_9921, cell_9922, cell_9923, cell_9924, cell_9925, cell_9926, cell_9927, cell_9928, cell_9929, cell_9930, cell_9931, cell_9932, cell_9933, cell_9934, cell_9935, cell_9936, cell_9937, cell_9938, cell_9939, cell_9940, cell_9941, cell_9942, cell_9943, cell_9944, cell_9945, cell_9946, cell_9947, cell_9948, cell_9949]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9900, check_9901, check_9902, check_9903, check_9904, check_9905, check_9906, check_9907, check_9908, check_9909, check_9910, check_9911, check_9912, check_9913, check_9914, check_9915, check_9916, check_9917, check_9918, check_9919, check_9920, check_9921, check_9922, check_9923, check_9924, check_9925, check_9926, check_9927, check_9928, check_9929, check_9930, check_9931, check_9932, check_9933, check_9934, check_9935, check_9936, check_9937, check_9938, check_9939, check_9940, check_9941, check_9942, check_9943, check_9944, check_9945, check_9946, check_9947, check_9948, check_9949, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0198

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0198
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0198
open AnalyticBounds.ExpressionCertificate

theorem linked_9900 : Linked cell_9900 pieces := by
  link_source cell_9900 with piece_1024 using piece_1024_mem, piece_1213_mem

theorem linked_9901 : Linked cell_9901 pieces := by
  link_source cell_9901 with piece_1024 using piece_1024_mem, ⟨piece_1212_mem, piece_1213_mem⟩

theorem linked_9902 : Linked cell_9902 pieces := by
  link_source cell_9902 with piece_1024 using piece_1024_mem, piece_1212_mem

theorem linked_9903 : Linked cell_9903 pieces := by
  link_source cell_9903 with piece_1024 using piece_1024_mem, ⟨piece_1211_mem, piece_1212_mem⟩

theorem linked_9904 : Linked cell_9904 pieces := by
  link_source cell_9904 with piece_1025 using piece_1025_mem, piece_1211_mem

theorem linked_9905 : Linked cell_9905 pieces := by
  link_source cell_9905 with piece_1025 using piece_1025_mem, ⟨piece_1210_mem, piece_1211_mem⟩

theorem linked_9906 : Linked cell_9906 pieces := by
  link_source cell_9906 with piece_1026 using piece_1026_mem, ⟨piece_1211_mem, piece_1212_mem⟩

theorem linked_9907 : Linked cell_9907 pieces := by
  link_source cell_9907 with piece_1026 using piece_1026_mem, piece_1211_mem

theorem linked_9908 : Linked cell_9908 pieces := by
  link_source cell_9908 with piece_1026 using piece_1026_mem, ⟨piece_1210_mem, piece_1211_mem⟩

theorem linked_9909 : Linked cell_9909 pieces := by
  link_source cell_9909 with piece_1026 using piece_1026_mem, piece_1210_mem

theorem linked_9910 : Linked cell_9910 pieces := by
  link_source cell_9910 with piece_1026 using piece_1026_mem, piece_1210_mem

theorem linked_9911 : Linked cell_9911 pieces := by
  link_source cell_9911 with piece_1026 using piece_1026_mem, ⟨piece_1209_mem, piece_1210_mem⟩

theorem linked_9912 : Linked cell_9912 pieces := by
  link_source cell_9912 with piece_1026 using piece_1026_mem, piece_1209_mem

theorem linked_9913 : Linked cell_9913 pieces := by
  link_source cell_9913 with piece_1027 using piece_1027_mem, piece_1210_mem

theorem linked_9914 : Linked cell_9914 pieces := by
  link_source cell_9914 with piece_1027 using piece_1027_mem, piece_1210_mem

theorem linked_9915 : Linked cell_9915 pieces := by
  link_source cell_9915 with piece_1027 using piece_1027_mem, ⟨piece_1209_mem, piece_1210_mem⟩

theorem linked_9916 : Linked cell_9916 pieces := by
  link_source cell_9916 with piece_1027 using piece_1027_mem, piece_1209_mem

theorem linked_9917 : Linked cell_9917 pieces := by
  link_source cell_9917 with piece_1027 using piece_1027_mem, ⟨piece_1208_mem, piece_1209_mem⟩

theorem linked_9918 : Linked cell_9918 pieces := by
  link_source cell_9918 with piece_1027 using piece_1027_mem, piece_1208_mem

theorem linked_9919 : Linked cell_9919 pieces := by
  link_source cell_9919 with piece_1027 using piece_1027_mem, piece_1208_mem

theorem linked_9920 : Linked cell_9920 pieces := by
  link_source cell_9920 with piece_1028 using piece_1028_mem, piece_1209_mem

theorem linked_9921 : Linked cell_9921 pieces := by
  link_source cell_9921 with piece_1028 using piece_1028_mem, ⟨piece_1208_mem, piece_1209_mem⟩

theorem linked_9922 : Linked cell_9922 pieces := by
  link_source cell_9922 with piece_1028 using piece_1028_mem, piece_1208_mem

theorem linked_9923 : Linked cell_9923 pieces := by
  link_source cell_9923 with piece_1028 using piece_1028_mem, ⟨piece_1207_mem, piece_1208_mem⟩

theorem linked_9924 : Linked cell_9924 pieces := by
  link_source cell_9924 with piece_1028 using piece_1028_mem, piece_1207_mem

theorem linked_9925 : Linked cell_9925 pieces := by
  link_source cell_9925 with piece_1028 using piece_1028_mem, ⟨piece_1206_mem, piece_1207_mem⟩

theorem linked_9926 : Linked cell_9926 pieces := by
  link_source cell_9926 with piece_1029 using piece_1029_mem, ⟨piece_1207_mem, piece_1208_mem⟩

theorem linked_9927 : Linked cell_9927 pieces := by
  link_source cell_9927 with piece_1029 using piece_1029_mem, piece_1207_mem

theorem linked_9928 : Linked cell_9928 pieces := by
  link_source cell_9928 with piece_1029 using piece_1029_mem, ⟨piece_1206_mem, piece_1207_mem⟩

theorem linked_9929 : Linked cell_9929 pieces := by
  link_source cell_9929 with piece_1029 using piece_1029_mem, ⟨piece_1205_mem, piece_1206_mem⟩

theorem linked_9930 : Linked cell_9930 pieces := by
  link_source cell_9930 with piece_1029 using piece_1029_mem, ⟨piece_1204_mem, piece_1205_mem⟩

theorem linked_9931 : Linked cell_9931 pieces := by
  link_source cell_9931 with piece_1029 using piece_1029_mem, piece_1204_mem

theorem linked_9932 : Linked cell_9932 pieces := by
  link_source cell_9932 with piece_1030 using piece_1030_mem, ⟨piece_1205_mem, piece_1206_mem⟩

theorem linked_9933 : Linked cell_9933 pieces := by
  link_source cell_9933 with piece_1030 using piece_1030_mem, piece_1205_mem

theorem linked_9934 : Linked cell_9934 pieces := by
  link_source cell_9934 with piece_1030 using piece_1030_mem, ⟨piece_1204_mem, piece_1205_mem⟩

theorem linked_9935 : Linked cell_9935 pieces := by
  link_source cell_9935 with piece_1030 using piece_1030_mem, piece_1204_mem

theorem linked_9936 : Linked cell_9936 pieces := by
  link_source cell_9936 with piece_1030 using piece_1030_mem, ⟨piece_1203_mem, piece_1204_mem⟩

theorem linked_9937 : Linked cell_9937 pieces := by
  link_source cell_9937 with piece_1030 using piece_1030_mem, piece_1203_mem

theorem linked_9938 : Linked cell_9938 pieces := by
  link_source cell_9938 with piece_1030 using piece_1030_mem, ⟨piece_1202_mem, piece_1203_mem⟩

theorem linked_9939 : Linked cell_9939 pieces := by
  link_source cell_9939 with piece_1031 using piece_1031_mem, piece_1204_mem

theorem linked_9940 : Linked cell_9940 pieces := by
  link_source cell_9940 with piece_1031 using piece_1031_mem, ⟨piece_1203_mem, piece_1204_mem⟩

theorem linked_9941 : Linked cell_9941 pieces := by
  link_source cell_9941 with piece_1031 using piece_1031_mem, piece_1203_mem

theorem linked_9942 : Linked cell_9942 pieces := by
  link_source cell_9942 with piece_1031 using piece_1031_mem, ⟨piece_1202_mem, piece_1203_mem⟩

theorem linked_9943 : Linked cell_9943 pieces := by
  link_source cell_9943 with piece_1031 using piece_1031_mem, ⟨piece_1201_mem, piece_1202_mem⟩

theorem linked_9944 : Linked cell_9944 pieces := by
  link_source cell_9944 with piece_1031 using piece_1031_mem, piece_1201_mem

theorem linked_9945 : Linked cell_9945 pieces := by
  link_source cell_9945 with piece_1032 using piece_1032_mem, ⟨piece_1202_mem, piece_1203_mem⟩

theorem linked_9946 : Linked cell_9946 pieces := by
  link_source cell_9946 with piece_1032 using piece_1032_mem, piece_1202_mem

theorem linked_9947 : Linked cell_9947 pieces := by
  link_source cell_9947 with piece_1032 using piece_1032_mem, ⟨piece_1201_mem, piece_1202_mem⟩

theorem linked_9948 : Linked cell_9948 pieces := by
  link_source cell_9948 with piece_1032 using piece_1032_mem, ⟨piece_1200_mem, piece_1201_mem⟩

theorem linked_9949 : Linked cell_9949 pieces := by
  link_source cell_9949 with piece_1032 using piece_1032_mem, piece_1200_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0198.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0198.cells,List.forall_mem_cons]
  exact ⟨linked_9900, linked_9901, linked_9902, linked_9903, linked_9904, linked_9905, linked_9906, linked_9907, linked_9908, linked_9909, linked_9910, linked_9911, linked_9912, linked_9913, linked_9914, linked_9915, linked_9916, linked_9917, linked_9918, linked_9919, linked_9920, linked_9921, linked_9922, linked_9923, linked_9924, linked_9925, linked_9926, linked_9927, linked_9928, linked_9929, linked_9930, linked_9931, linked_9932, linked_9933, linked_9934, linked_9935, linked_9936, linked_9937, linked_9938, linked_9939, linked_9940, linked_9941, linked_9942, linked_9943, linked_9944, linked_9945, linked_9946, linked_9947, linked_9948, linked_9949, by simp⟩

theorem covered : covers (10612500000000001 / 25000000000000000 : ℚ) (8568750000000001 / 20000000000000000 : ℚ)
    (SourceCertificates.Chunk0198.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0198
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0199
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(8568750000000001 / 20000000000000000 : ℚ), (8570000000000001 / 20000000000000000 : ℚ)⟩
  branch := .left
  r := (1052030863299 / 1562500000000 : ℚ)
  w := (15401948182791 / 10000000000000 : ℚ)
  center := (8569375000000001 / 20000000000000000 : ℚ)
  supportValue := (5052132012353517 / 10000000000000000 : ℚ)
  supportSlope := (-112563459690449 / 40000000000000 : ℚ)
  oldCenter := (5052132012353517 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1033
  oldLo := (63 / 125 : ℚ)
  oldHi := (10069999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1198, piece_1199]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9950 : Cell := { cellDefaults with
  r := (842150373417 / 1250000000000 : ℚ)
  w := (15407867850839 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1032
  oldLo := (101 / 200 : ℚ)
  oldHi := (10109999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1200]
}

def cell_9951 : Cell := { cellDefaults with
  domain := ⟨(8570000000000001 / 20000000000000000 : ℚ), (8571250000000001 / 20000000000000000 : ℚ)⟩
  center := (8570625000000001 / 20000000000000000 : ℚ)
  supportValue := (1011537297373761 / 2000000000000000 : ℚ)
  supportSlope := (-880194908533527 / 312500000000000 : ℚ)
  oldCenter := (1011537297373761 / 2000000000000000 : ℚ)
  oldLo := (10109999999999999 / 20000000000000000 : ℚ)
  oldHi := (50600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1201]
}

def cell_9952 : Cell := { cellDefaults with
  domain := ⟨(8571250000000001 / 20000000000000000 : ℚ), (8572500000000001 / 20000000000000000 : ℚ)⟩
  center := (8571875000000001 / 20000000000000000 : ℚ)
  supportValue := (631990823212847 / 1250000000000000 : ℚ)
  supportSlope := (-1407529391531881 / 500000000000000 : ℚ)
  oldCenter := (631990823212847 / 1250000000000000 : ℚ)
  oldLo := (10109999999999999 / 20000000000000000 : ℚ)
  oldHi := (50600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1201]
}

def cell_9953 : Cell := { cellDefaults with
  domain := ⟨(8572500000000001 / 20000000000000000 : ℚ), (8575000000000001 / 20000000000000000 : ℚ)⟩
  center := (8573750000000001 / 20000000000000000 : ℚ)
  supportValue := (631661466844151 / 1250000000000000 : ℚ)
  supportSlope := (-562662306140993 / 200000000000000 : ℚ)
  oldCenter := (631661466844151 / 1250000000000000 : ℚ)
  oldLo := (101 / 200 : ℚ)
  oldHi := (50600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1200, piece_1201]
}

def cell_9954 : Cell := { cellDefaults with
  domain := ⟨(8575000000000001 / 20000000000000000 : ℚ), (8577500000000001 / 20000000000000000 : ℚ)⟩
  center := (8576250000000001 / 20000000000000000 : ℚ)
  supportValue := (5049776987371261 / 10000000000000000 : ℚ)
  supportSlope := (-2810536767432481 / 1000000000000000 : ℚ)
  oldCenter := (5049776987371261 / 10000000000000000 : ℚ)
  oldLo := (10089999999999999 / 20000000000000000 : ℚ)
  oldHi := (10109999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1199, piece_1200]
}

def cell_9955 : Cell := { cellDefaults with
  domain := ⟨(8577500000000001 / 20000000000000000 : ℚ), (8578750000000001 / 20000000000000000 : ℚ)⟩
  center := (8578125000000001 / 20000000000000000 : ℚ)
  supportValue := (1261784855998407 / 2500000000000000 : ℚ)
  supportSlope := (-2808457598511893 / 1000000000000000 : ℚ)
  oldCenter := (1261784855998407 / 2500000000000000 : ℚ)
  oldLo := (10089999999999999 / 20000000000000000 : ℚ)
  oldHi := (101 / 200 : ℚ)
  oldPieces := [piece_1199]
}

def cell_9956 : Cell := { cellDefaults with
  domain := ⟨(8578750000000001 / 20000000000000000 : ℚ), (8580000000000001 / 20000000000000000 : ℚ)⟩
  center := (8579375000000001 / 20000000000000000 : ℚ)
  supportValue := (315336539088167 / 625000000000000 : ℚ)
  supportSlope := (-7017671704740991 / 2500000000000000 : ℚ)
  oldCenter := (315336539088167 / 625000000000000 : ℚ)
  oldHi := (101 / 200 : ℚ)
  oldPieces := [piece_1198, piece_1199]
}

def cell_9957 : Cell := { cellDefaults with
  domain := ⟨(8580000000000001 / 20000000000000000 : ℚ), (8581250000000001 / 20000000000000000 : ℚ)⟩
  r := (8410997504891 / 12500000000000 : ℚ)
  w := (7698020344677 / 5000000000000 : ℚ)
  center := (8580625000000001 / 20000000000000000 : ℚ)
  supportValue := (2525462875352359 / 5000000000000000 : ℚ)
  supportSlope := (-351177842076833 / 125000000000000 : ℚ)
  oldCenter := (2525462875352359 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1034
  oldLo := (101 / 200 : ℚ)
  oldHi := (10109999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1200]
}

def cell_9958 : Cell := { cellDefaults with
  domain := ⟨(8581250000000001 / 20000000000000000 : ℚ), (8582500000000001 / 20000000000000000 : ℚ)⟩
  r := (8410997504891 / 12500000000000 : ℚ)
  w := (7698020344677 / 5000000000000 : ℚ)
  center := (8581875000000001 / 20000000000000000 : ℚ)
  supportValue := (631146271023971 / 1250000000000000 : ℚ)
  supportSlope := (-351056915679937 / 125000000000000 : ℚ)
  oldCenter := (631146271023971 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1034
  oldLo := (10089999999999999 / 20000000000000000 : ℚ)
  oldHi := (10109999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1199, piece_1200]
}

def cell_9959 : Cell := { cellDefaults with
  domain := ⟨(8582500000000001 / 20000000000000000 : ℚ), (8585000000000001 / 20000000000000000 : ℚ)⟩
  r := (8410997504891 / 12500000000000 : ℚ)
  w := (7698020344677 / 5000000000000 : ℚ)
  center := (8583750000000001 / 20000000000000000 : ℚ)
  supportValue := (2523270927656087 / 5000000000000000 : ℚ)
  supportSlope := (-7015423236622631 / 2500000000000000 : ℚ)
  oldCenter := (2523270927656087 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1034
  oldHi := (101 / 200 : ℚ)
  oldPieces := [piece_1198, piece_1199]
}

def cell_9960 : Cell := { cellDefaults with
  domain := ⟨(8585000000000001 / 20000000000000000 : ℚ), (8587500000000001 / 20000000000000000 : ℚ)⟩
  r := (8410997504891 / 12500000000000 : ℚ)
  w := (7698020344677 / 5000000000000 : ℚ)
  center := (8586250000000001 / 20000000000000000 : ℚ)
  supportValue := (1260758926719287 / 2500000000000000 : ℚ)
  supportSlope := (-5607249914827861 / 2000000000000000 : ℚ)
  oldCenter := (1260758926719287 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1034
  oldHi := (10089999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1198]
}

def cell_9961 : Cell := { cellDefaults with
  domain := ⟨(8587500000000001 / 20000000000000000 : ℚ), (8588750000000001 / 20000000000000000 : ℚ)⟩
  r := (8410997504891 / 12500000000000 : ℚ)
  w := (7698020344677 / 5000000000000 : ℚ)
  center := (8588125000000001 / 20000000000000000 : ℚ)
  supportValue := (5040404873058979 / 10000000000000000 : ℚ)
  supportSlope := (-2801454088782407 / 1000000000000000 : ℚ)
  oldCenter := (5040404873058979 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1034
  oldLo := (10069999999999999 / 20000000000000000 : ℚ)
  oldHi := (10089999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1197, piece_1198]
}

def cell_9962 : Cell := { cellDefaults with
  domain := ⟨(8588750000000001 / 20000000000000000 : ℚ), (8590000000000001 / 20000000000000000 : ℚ)⟩
  r := (8410997504891 / 12500000000000 : ℚ)
  w := (7698020344677 / 5000000000000 : ℚ)
  center := (8589375000000001 / 20000000000000000 : ℚ)
  supportValue := (1007730851760237 / 2000000000000000 : ℚ)
  supportSlope := (-5600688611679061 / 2000000000000000 : ℚ)
  oldCenter := (1007730851760237 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1034
  oldLo := (10069999999999999 / 20000000000000000 : ℚ)
  oldHi := (63 / 125 : ℚ)
  oldPieces := [piece_1197]
}

def cell_9963 : Cell := { cellDefaults with
  domain := ⟨(8590000000000001 / 20000000000000000 : ℚ), (8591250000000001 / 20000000000000000 : ℚ)⟩
  r := (67246040711207 / 100000000000000 : ℚ)
  w := (7695072451889 / 5000000000000 : ℚ)
  center := (8590625000000001 / 20000000000000000 : ℚ)
  supportValue := (630522846519227 / 1250000000000000 : ℚ)
  supportSlope := (-14014193041340661 / 5000000000000000 : ℚ)
  oldCenter := (630522846519227 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1035
  oldHi := (101 / 200 : ℚ)
  oldPieces := [piece_1198, piece_1199]
}

def cell_9964 : Cell := { cellDefaults with
  domain := ⟨(8591250000000001 / 20000000000000000 : ℚ), (8592500000000001 / 20000000000000000 : ℚ)⟩
  r := (67246040711207 / 100000000000000 : ℚ)
  w := (7695072451889 / 5000000000000 : ℚ)
  center := (8591875000000001 / 20000000000000000 : ℚ)
  supportValue := (5042431471508947 / 10000000000000000 : ℚ)
  supportSlope := (-5602604520497323 / 2000000000000000 : ℚ)
  oldCenter := (5042431471508947 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1035
  oldHi := (10089999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1198]
}

def cell_9965 : Cell := { cellDefaults with
  domain := ⟨(8592500000000001 / 20000000000000000 : ℚ), (8595000000000001 / 20000000000000000 : ℚ)⟩
  r := (67246040711207 / 100000000000000 : ℚ)
  w := (7695072451889 / 5000000000000 : ℚ)
  center := (8593750000000001 / 20000000000000000 : ℚ)
  supportValue := (5039809828107807 / 10000000000000000 : ℚ)
  supportSlope := (-279931075893991 / 100000000000000 : ℚ)
  oldCenter := (5039809828107807 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1035
  oldLo := (10069999999999999 / 20000000000000000 : ℚ)
  oldHi := (10089999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1197, piece_1198]
}

def cell_9966 : Cell := { cellDefaults with
  domain := ⟨(8595000000000001 / 20000000000000000 : ℚ), (8597500000000001 / 20000000000000000 : ℚ)⟩
  r := (67246040711207 / 100000000000000 : ℚ)
  w := (7695072451889 / 5000000000000 : ℚ)
  center := (8596250000000001 / 20000000000000000 : ℚ)
  supportValue := (503631228929647 / 1000000000000000 : ℚ)
  supportSlope := (-3495690111665617 / 1250000000000000 : ℚ)
  oldCenter := (503631228929647 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1035
  oldLo := (503 / 1000 : ℚ)
  oldHi := (63 / 125 : ℚ)
  oldPieces := [piece_1196, piece_1197]
}

def cell_9967 : Cell := { cellDefaults with
  domain := ⟨(8597500000000001 / 20000000000000000 : ℚ), (8598750000000001 / 20000000000000000 : ℚ)⟩
  r := (67246040711207 / 100000000000000 : ℚ)
  w := (7695072451889 / 5000000000000 : ℚ)
  center := (8598125000000001 / 20000000000000000 : ℚ)
  supportValue := (5033687871162577 / 10000000000000000 : ℚ)
  supportSlope := (-2794759538705449 / 1000000000000000 : ℚ)
  oldCenter := (5033687871162577 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1035
  oldLo := (503 / 1000 : ℚ)
  oldPieces := [piece_1196]
}

def cell_9968 : Cell := { cellDefaults with
  domain := ⟨(8598750000000001 / 20000000000000000 : ℚ), (8600000000000001 / 20000000000000000 : ℚ)⟩
  r := (67246040711207 / 100000000000000 : ℚ)
  w := (7695072451889 / 5000000000000 : ℚ)
  center := (8599375000000001 / 20000000000000000 : ℚ)
  supportValue := (5031941631256737 / 10000000000000000 : ℚ)
  supportSlope := (-698301733033091 / 250000000000000 : ℚ)
  oldCenter := (5031941631256737 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1035
  oldLo := (503 / 1000 : ℚ)
  oldPieces := [piece_1196]
}

def cell_9969 : Cell := { cellDefaults with
  domain := ⟨(8600000000000001 / 20000000000000000 : ℚ), (8601250000000001 / 20000000000000000 : ℚ)⟩
  r := (2688166379723 / 4000000000000 : ℚ)
  w := (7692131220029 / 5000000000000 : ℚ)
  center := (8600625000000001 / 20000000000000000 : ℚ)
  supportValue := (5037456603780249 / 10000000000000000 : ℚ)
  supportSlope := (-698927589183107 / 250000000000000 : ℚ)
  oldCenter := (5037456603780249 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1036
  oldLo := (10069999999999999 / 20000000000000000 : ℚ)
  oldHi := (63 / 125 : ℚ)
  oldPieces := [piece_1197]
}

def cell_9970 : Cell := { cellDefaults with
  domain := ⟨(8601250000000001 / 20000000000000000 : ℚ), (8602500000000001 / 20000000000000000 : ℚ)⟩
  r := (2688166379723 / 4000000000000 : ℚ)
  w := (7692131220029 / 5000000000000 : ℚ)
  center := (8601875000000001 / 20000000000000000 : ℚ)
  supportValue := (2517854884463271 / 5000000000000000 : ℚ)
  supportSlope := (-13971089534088321 / 5000000000000000 : ℚ)
  oldCenter := (2517854884463271 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1036
  oldLo := (503 / 1000 : ℚ)
  oldHi := (63 / 125 : ℚ)
  oldPieces := [piece_1196, piece_1197]
}

def cell_9971 : Cell := { cellDefaults with
  domain := ⟨(8602500000000001 / 20000000000000000 : ℚ), (8605000000000001 / 20000000000000000 : ℚ)⟩
  r := (2688166379723 / 4000000000000 : ℚ)
  w := (7692131220029 / 5000000000000 : ℚ)
  center := (8603750000000001 / 20000000000000000 : ℚ)
  supportValue := (5033094436499339 / 10000000000000000 : ℚ)
  supportSlope := (-558489648451399 / 200000000000000 : ℚ)
  oldCenter := (5033094436499339 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1036
  oldLo := (503 / 1000 : ℚ)
  oldPieces := [piece_1196]
}

def cell_9972 : Cell := { cellDefaults with
  domain := ⟨(8605000000000001 / 20000000000000000 : ℚ), (2689594972067039 / 6250000000000000 : ℚ)⟩
  r := (2688166379723 / 4000000000000 : ℚ)
  w := (7692131220029 / 5000000000000 : ℚ)
  center := (86058519553072629 / 200000000000000000 : ℚ)
  supportValue := (1006031496236489 / 2000000000000000 : ℚ)
  supportSlope := (-13950553641511323 / 5000000000000000 : ℚ)
  oldCenter := (1006031496236489 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1036
  oldLo := (10049999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1195, piece_1196]
}

def cell_9973 : Cell := { cellDefaults with
  domain := ⟨(2689594972067039 / 6250000000000000 : ℚ), (86083519553072629 / 200000000000000000 : ℚ)⟩
  r := (2688166379723 / 4000000000000 : ℚ)
  w := (7692131220029 / 5000000000000 : ℚ)
  center := (172150558659217877 / 400000000000000000 : ℚ)
  supportValue := (2513910005719079 / 5000000000000000 : ℚ)
  supportSlope := (-27883825274132223 / 10000000000000000 : ℚ)
  oldCenter := (2513910005719079 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1037
  oldLo := (10049999999999999 / 20000000000000000 : ℚ)
  oldHi := (503 / 1000 : ℚ)
  oldPieces := [piece_1195]
}

def cell_9974 : Cell := { cellDefaults with
  domain := ⟨(86083519553072629 / 200000000000000000 : ℚ), (8610000000000001 / 20000000000000000 : ℚ)⟩
  r := (2688166379723 / 4000000000000 : ℚ)
  w := (7692131220029 / 5000000000000 : ℚ)
  center := (172183519553072639 / 400000000000000000 : ℚ)
  supportValue := (5025523161982083 / 10000000000000000 : ℚ)
  supportSlope := (-27865111282869237 / 10000000000000000 : ℚ)
  oldCenter := (5025523161982083 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1037
  oldLo := (1255586592178771 / 2500000000000000 : ℚ)
  oldHi := (503 / 1000 : ℚ)
  oldPieces := [piece_1194, piece_1195]
}

def cell_9975 : Cell := { cellDefaults with
  domain := ⟨(8610000000000001 / 20000000000000000 : ℚ), (8611250000000001 / 20000000000000000 : ℚ)⟩
  r := (33581168290113 / 50000000000000 : ℚ)
  w := (7689195966707 / 5000000000000 : ℚ)
  center := (8610625000000001 / 20000000000000000 : ℚ)
  supportValue := (5030747792769329 / 10000000000000000 : ℚ)
  supportSlope := (-2788633254578343 / 1000000000000000 : ℚ)
  oldCenter := (5030747792769329 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1038
  oldLo := (10049999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1195, piece_1196]
}

def cell_9976 : Cell := { cellDefaults with
  domain := ⟨(8611250000000001 / 20000000000000000 : ℚ), (8612500000000001 / 20000000000000000 : ℚ)⟩
  r := (33581168290113 / 50000000000000 : ℚ)
  w := (7689195966707 / 5000000000000 : ℚ)
  center := (8611875000000001 / 20000000000000000 : ℚ)
  supportValue := (2514502593602963 / 5000000000000000 : ℚ)
  supportSlope := (-13938291568234007 / 5000000000000000 : ℚ)
  oldCenter := (2514502593602963 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1038
  oldLo := (10049999999999999 / 20000000000000000 : ℚ)
  oldHi := (503 / 1000 : ℚ)
  oldPieces := [piece_1195]
}

def cell_9977 : Cell := { cellDefaults with
  domain := ⟨(8612500000000001 / 20000000000000000 : ℚ), (8615000000000001 / 20000000000000000 : ℚ)⟩
  r := (33581168290113 / 50000000000000 : ℚ)
  w := (7689195966707 / 5000000000000 : ℚ)
  center := (8613750000000001 / 20000000000000000 : ℚ)
  supportValue := (1005279272488389 / 2000000000000000 : ℚ)
  supportSlope := (-2785401874128013 / 1000000000000000 : ℚ)
  oldCenter := (1005279272488389 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1038
  oldLo := (1255586592178771 / 2500000000000000 : ℚ)
  oldHi := (503 / 1000 : ℚ)
  oldPieces := [piece_1194, piece_1195]
}

def cell_9978 : Cell := { cellDefaults with
  domain := ⟨(8615000000000001 / 20000000000000000 : ℚ), (8617500000000001 / 20000000000000000 : ℚ)⟩
  r := (33581168290113 / 50000000000000 : ℚ)
  w := (7689195966707 / 5000000000000 : ℚ)
  center := (8616250000000001 / 20000000000000000 : ℚ)
  supportValue := (2511458075750081 / 5000000000000000 : ℚ)
  supportSlope := (-139143409707021 / 50000000000000 : ℚ)
  oldCenter := (2511458075750081 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1038
  oldLo := (251 / 500 : ℚ)
  oldHi := (10049999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1193, piece_1194]
}

def cell_9979 : Cell := { cellDefaults with
  domain := ⟨(8617500000000001 / 20000000000000000 : ℚ), (8618750000000001 / 20000000000000000 : ℚ)⟩
  r := (33581168290113 / 50000000000000 : ℚ)
  w := (7689195966707 / 5000000000000 : ℚ)
  center := (8618125000000001 / 20000000000000000 : ℚ)
  supportValue := (5020304781237073 / 10000000000000000 : ℚ)
  supportSlope := (-27807550247764823 / 10000000000000000 : ℚ)
  oldCenter := (5020304781237073 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1038
  oldLo := (10029999999999999 / 20000000000000000 : ℚ)
  oldHi := (1255586592178771 / 2500000000000000 : ℚ)
  oldPieces := [piece_1192, piece_1193]
}

def cell_9980 : Cell := { cellDefaults with
  domain := ⟨(8618750000000001 / 20000000000000000 : ℚ), (8620000000000001 / 20000000000000000 : ℚ)⟩
  r := (33581168290113 / 50000000000000 : ℚ)
  w := (7689195966707 / 5000000000000 : ℚ)
  center := (8619375000000001 / 20000000000000000 : ℚ)
  supportValue := (5018567097434303 / 10000000000000000 : ℚ)
  supportSlope := (-1389814759384933 / 500000000000000 : ℚ)
  oldCenter := (5018567097434303 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1038
  oldLo := (10029999999999999 / 20000000000000000 : ℚ)
  oldHi := (251 / 500 : ℚ)
  oldPieces := [piece_1192]
}

def cell_9981 : Cell := { cellDefaults with
  domain := ⟨(8620000000000001 / 20000000000000000 : ℚ), (8621250000000001 / 20000000000000000 : ℚ)⟩
  r := (67120569002481 / 100000000000000 : ℚ)
  w := (15372533905567 / 10000000000000 : ℚ)
  center := (8620625000000001 / 20000000000000000 : ℚ)
  supportValue := (5024056229960899 / 10000000000000000 : ℚ)
  supportSlope := (-13910551090177137 / 5000000000000000 : ℚ)
  oldCenter := (5024056229960899 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1039
  oldLo := (1255586592178771 / 2500000000000000 : ℚ)
  oldHi := (10049999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1194]
}

def cell_9982 : Cell := { cellDefaults with
  domain := ⟨(8621250000000001 / 20000000000000000 : ℚ), (8622500000000001 / 20000000000000000 : ℚ)⟩
  r := (67120569002481 / 100000000000000 : ℚ)
  w := (15372533905567 / 10000000000000 : ℚ)
  center := (8621875000000001 / 20000000000000000 : ℚ)
  supportValue := (1255579473153009 / 2500000000000000 : ℚ)
  supportSlope := (-1390284055560187 / 500000000000000 : ℚ)
  oldCenter := (1255579473153009 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1039
  oldLo := (251 / 500 : ℚ)
  oldHi := (10049999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1193, piece_1194]
}

def cell_9983 : Cell := { cellDefaults with
  domain := ⟨(8622500000000001 / 20000000000000000 : ℚ), (8625000000000001 / 20000000000000000 : ℚ)⟩
  r := (67120569002481 / 100000000000000 : ℚ)
  w := (15372533905567 / 10000000000000 : ℚ)
  center := (8623750000000001 / 20000000000000000 : ℚ)
  supportValue := (1254928910417353 / 2500000000000000 : ℚ)
  supportSlope := (-694654634336267 / 250000000000000 : ℚ)
  oldCenter := (1254928910417353 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1039
  oldLo := (10029999999999999 / 20000000000000000 : ℚ)
  oldHi := (1255586592178771 / 2500000000000000 : ℚ)
  oldPieces := [piece_1192, piece_1193]
}

def cell_9984 : Cell := { cellDefaults with
  domain := ⟨(8625000000000001 / 20000000000000000 : ℚ), (8627500000000001 / 20000000000000000 : ℚ)⟩
  r := (67120569002481 / 100000000000000 : ℚ)
  w := (15372533905567 / 10000000000000 : ℚ)
  center := (8626250000000001 / 20000000000000000 : ℚ)
  supportValue := (5016243968213919 / 10000000000000000 : ℚ)
  supportSlope := (-1387942616987381 / 500000000000000 : ℚ)
  oldCenter := (5016243968213919 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1039
  oldLo := (501 / 1000 : ℚ)
  oldHi := (251 / 500 : ℚ)
  oldPieces := [piece_1191, piece_1192]
}

def cell_9985 : Cell := { cellDefaults with
  domain := ⟨(8627500000000001 / 20000000000000000 : ℚ), (8628750000000001 / 20000000000000000 : ℚ)⟩
  r := (67120569002481 / 100000000000000 : ℚ)
  w := (15372533905567 / 10000000000000 : ℚ)
  center := (8628125000000001 / 20000000000000000 : ℚ)
  supportValue := (501363892380119 / 1000000000000000 : ℚ)
  supportSlope := (-693527272412453 / 250000000000000 : ℚ)
  oldCenter := (501363892380119 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1039
  oldLo := (501 / 1000 : ℚ)
  oldHi := (10029999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1191]
}

def cell_9986 : Cell := { cellDefaults with
  domain := ⟨(8628750000000001 / 20000000000000000 : ℚ), (8630000000000001 / 20000000000000000 : ℚ)⟩
  r := (67120569002481 / 100000000000000 : ℚ)
  w := (15372533905567 / 10000000000000 : ℚ)
  center := (8629375000000001 / 20000000000000000 : ℚ)
  supportValue := (1252976396507203 / 2500000000000000 : ℚ)
  supportSlope := (-27725705646801657 / 10000000000000000 : ℚ)
  oldCenter := (1252976396507203 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1039
  oldLo := (501 / 1000 : ℚ)
  oldHi := (10029999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1191]
}

def cell_9987 : Cell := { cellDefaults with
  domain := ⟨(8630000000000001 / 20000000000000000 : ℚ), (8631250000000001 / 20000000000000000 : ℚ)⟩
  r := (8384857533997 / 12500000000000 : ℚ)
  w := (15366688072771 / 10000000000000 : ℚ)
  center := (8630625000000001 / 20000000000000000 : ℚ)
  supportValue := (2508690761893973 / 5000000000000000 : ℚ)
  supportSlope := (-2775040713082433 / 1000000000000000 : ℚ)
  oldCenter := (2508690761893973 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1040
  oldLo := (10029999999999999 / 20000000000000000 : ℚ)
  oldHi := (251 / 500 : ℚ)
  oldPieces := [piece_1192]
}

def cell_9988 : Cell := { cellDefaults with
  domain := ⟨(8631250000000001 / 20000000000000000 : ℚ), (8632500000000001 / 20000000000000000 : ℚ)⟩
  r := (8384857533997 / 12500000000000 : ℚ)
  w := (15366688072771 / 10000000000000 : ℚ)
  center := (8631875000000001 / 20000000000000000 : ℚ)
  supportValue := (5015647603074693 / 10000000000000000 : ℚ)
  supportSlope := (-5547166665742509 / 2000000000000000 : ℚ)
  oldCenter := (5015647603074693 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1040
  oldLo := (501 / 1000 : ℚ)
  oldHi := (251 / 500 : ℚ)
  oldPieces := [piece_1191, piece_1192]
}

def cell_9989 : Cell := { cellDefaults with
  domain := ⟨(8632500000000001 / 20000000000000000 : ℚ), (8635000000000001 / 20000000000000000 : ℚ)⟩
  r := (8384857533997 / 12500000000000 : ℚ)
  w := (15366688072771 / 10000000000000 : ℚ)
  center := (8633750000000001 / 20000000000000000 : ℚ)
  supportValue := (5013051594075869 / 10000000000000000 : ℚ)
  supportSlope := (-5543640742633471 / 2000000000000000 : ℚ)
  oldCenter := (5013051594075869 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1040
  oldLo := (501 / 1000 : ℚ)
  oldHi := (10029999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1191]
}

def cell_9990 : Cell := { cellDefaults with
  domain := ⟨(8635000000000001 / 20000000000000000 : ℚ), (8637500000000001 / 20000000000000000 : ℚ)⟩
  r := (8384857533997 / 12500000000000 : ℚ)
  w := (15366688072771 / 10000000000000 : ℚ)
  center := (8636250000000001 / 20000000000000000 : ℚ)
  supportValue := (5009588640853117 / 10000000000000000 : ℚ)
  supportSlope := (-27691363520681023 / 10000000000000000 : ℚ)
  oldCenter := (5009588640853117 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1040
  oldLo := (25024999999999997 / 50000000000000000 : ℚ)
  oldHi := (10029999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1190, piece_1191]
}

def cell_9991 : Cell := { cellDefaults with
  domain := ⟨(8637500000000001 / 20000000000000000 : ℚ), (8638750000000001 / 20000000000000000 : ℚ)⟩
  r := (8384857533997 / 12500000000000 : ℚ)
  w := (15366688072771 / 10000000000000 : ℚ)
  center := (8638125000000001 / 20000000000000000 : ℚ)
  supportValue := (5006989925626077 / 10000000000000000 : ℚ)
  supportSlope := (-27670707771854097 / 10000000000000000 : ℚ)
  oldCenter := (5006989925626077 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1040
  oldLo := (25024999999999997 / 50000000000000000 : ℚ)
  oldHi := (501 / 1000 : ℚ)
  oldPieces := [piece_1190]
}

def cell_9992 : Cell := { cellDefaults with
  domain := ⟨(8638750000000001 / 20000000000000000 : ℚ), (8640000000000001 / 20000000000000000 : ℚ)⟩
  r := (8384857533997 / 12500000000000 : ℚ)
  w := (15366688072771 / 10000000000000 : ℚ)
  center := (8639375000000001 / 20000000000000000 : ℚ)
  supportValue := (2502630492494859 / 5000000000000000 : ℚ)
  supportSlope := (-3457195638145727 / 1250000000000000 : ℚ)
  oldCenter := (2502630492494859 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1040
  oldLo := (1 / 2 : ℚ)
  oldHi := (501 / 1000 : ℚ)
  oldPieces := [piece_1189, piece_1190]
}

def cell_9993 : Cell := { cellDefaults with
  domain := ⟨(8640000000000001 / 20000000000000000 : ℚ), (8641250000000001 / 20000000000000000 : ℚ)⟩
  r := (67037207555399 / 100000000000000 : ℚ)
  w := (3840213706267 / 2500000000000 : ℚ)
  center := (8640625000000001 / 20000000000000000 : ℚ)
  supportValue := (5010723968693949 / 10000000000000000 : ℚ)
  supportSlope := (-27680488849384233 / 10000000000000000 : ℚ)
  oldCenter := (5010723968693949 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1041
  oldLo := (25024999999999997 / 50000000000000000 : ℚ)
  oldHi := (10029999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1190, piece_1191]
}

def cell_9994 : Cell := { cellDefaults with
  domain := ⟨(8641250000000001 / 20000000000000000 : ℚ), (8642500000000001 / 20000000000000000 : ℚ)⟩
  r := (67037207555399 / 100000000000000 : ℚ)
  w := (3840213706267 / 2500000000000 : ℚ)
  center := (8641875000000001 / 20000000000000000 : ℚ)
  supportValue := (5008994221862947 / 10000000000000000 : ℚ)
  supportSlope := (-5534175242551953 / 2000000000000000 : ℚ)
  oldCenter := (5008994221862947 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1041
  oldLo := (25024999999999997 / 50000000000000000 : ℚ)
  oldHi := (501 / 1000 : ℚ)
  oldPieces := [piece_1190]
}

def cell_9995 : Cell := { cellDefaults with
  domain := ⟨(8642500000000001 / 20000000000000000 : ℚ), (8645000000000001 / 20000000000000000 : ℚ)⟩
  r := (67037207555399 / 100000000000000 : ℚ)
  w := (3840213706267 / 2500000000000 : ℚ)
  center := (8643750000000001 / 20000000000000000 : ℚ)
  supportValue := (2503202329203829 / 5000000000000000 : ℚ)
  supportSlope := (-27648492751435327 / 10000000000000000 : ℚ)
  oldCenter := (2503202329203829 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1041
  oldLo := (1 / 2 : ℚ)
  oldHi := (501 / 1000 : ℚ)
  oldPieces := [piece_1189, piece_1190]
}

def cell_9996 : Cell := { cellDefaults with
  domain := ⟨(8645000000000001 / 20000000000000000 : ℚ), (8647500000000001 / 20000000000000000 : ℚ)⟩
  r := (67037207555399 / 100000000000000 : ℚ)
  w := (3840213706267 / 2500000000000 : ℚ)
  center := (8646250000000001 / 20000000000000000 : ℚ)
  supportValue := (5002950116551097 / 10000000000000000 : ℚ)
  supportSlope := (-5524705865372681 / 2000000000000000 : ℚ)
  oldCenter := (5002950116551097 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1041
  oldLo := (1 / 2 : ℚ)
  oldHi := (25024999999999997 / 50000000000000000 : ℚ)
  oldPieces := [piece_1189]
}

def cell_9997 : Cell := { cellDefaults with
  domain := ⟨(8647500000000001 / 20000000000000000 : ℚ), (8648750000000001 / 20000000000000000 : ℚ)⟩
  r := (67037207555399 / 100000000000000 : ℚ)
  w := (3840213706267 / 2500000000000 : ℚ)
  center := (8648125000000001 / 20000000000000000 : ℚ)
  supportValue := (5000357983628363 / 10000000000000000 : ℚ)
  supportSlope := (-2760242622702691 / 1000000000000000 : ℚ)
  oldCenter := (5000357983628363 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1041
  oldLo := (24975000000000003 / 50000000000000000 : ℚ)
  oldHi := (25024999999999997 / 50000000000000000 : ℚ)
  oldPieces := [piece_1188, piece_1189]
}

def cell_9998 : Cell := { cellDefaults with
  domain := ⟨(8648750000000001 / 20000000000000000 : ℚ), (8650000000000001 / 20000000000000000 : ℚ)⟩
  r := (67037207555399 / 100000000000000 : ℚ)
  w := (3840213706267 / 2500000000000 : ℚ)
  center := (8649375000000001 / 20000000000000000 : ℚ)
  supportValue := (4998633113547321 / 10000000000000000 : ℚ)
  supportSlope := (-27591558784187953 / 10000000000000000 : ℚ)
  oldCenter := (4998633113547321 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1041
  oldLo := (24975000000000003 / 50000000000000000 : ℚ)
  oldHi := (1 / 2 : ℚ)
  oldPieces := [piece_1188]
}

def cell_9999 : Cell := { cellDefaults with
  domain := ⟨(8650000000000001 / 20000000000000000 : ℚ), (8651250000000001 / 20000000000000000 : ℚ)⟩
  r := (33497806254177 / 50000000000000 : ℚ)
  w := (15355032889167 / 10000000000000 : ℚ)
  center := (8650625000000001 / 20000000000000000 : ℚ)
  supportValue := (2502041744240713 / 5000000000000000 : ℚ)
  supportSlope := (-2761603539912727 / 1000000000000000 : ℚ)
  oldCenter := (2502041744240713 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1042
  oldLo := (1 / 2 : ℚ)
  oldHi := (25024999999999997 / 50000000000000000 : ℚ)
  oldPieces := [piece_1189]
}

theorem check_9950 : cell_9950.check = true := by
  decide +kernel

theorem check_9951 : cell_9951.check = true := by
  decide +kernel

theorem check_9952 : cell_9952.check = true := by
  decide +kernel

theorem check_9953 : cell_9953.check = true := by
  decide +kernel

theorem check_9954 : cell_9954.check = true := by
  decide +kernel

theorem check_9955 : cell_9955.check = true := by
  decide +kernel

theorem check_9956 : cell_9956.check = true := by
  decide +kernel

theorem check_9957 : cell_9957.check = true := by
  decide +kernel

theorem check_9958 : cell_9958.check = true := by
  decide +kernel

theorem check_9959 : cell_9959.check = true := by
  decide +kernel

theorem check_9960 : cell_9960.check = true := by
  decide +kernel

theorem check_9961 : cell_9961.check = true := by
  decide +kernel

theorem check_9962 : cell_9962.check = true := by
  decide +kernel

theorem check_9963 : cell_9963.check = true := by
  decide +kernel

theorem check_9964 : cell_9964.check = true := by
  decide +kernel

theorem check_9965 : cell_9965.check = true := by
  decide +kernel

theorem check_9966 : cell_9966.check = true := by
  decide +kernel

theorem check_9967 : cell_9967.check = true := by
  decide +kernel

theorem check_9968 : cell_9968.check = true := by
  decide +kernel

theorem check_9969 : cell_9969.check = true := by
  decide +kernel

theorem check_9970 : cell_9970.check = true := by
  decide +kernel

theorem check_9971 : cell_9971.check = true := by
  decide +kernel

theorem check_9972 : cell_9972.check = true := by
  decide +kernel

theorem check_9973 : cell_9973.check = true := by
  decide +kernel

theorem check_9974 : cell_9974.check = true := by
  decide +kernel

theorem check_9975 : cell_9975.check = true := by
  decide +kernel

theorem check_9976 : cell_9976.check = true := by
  decide +kernel

theorem check_9977 : cell_9977.check = true := by
  decide +kernel

theorem check_9978 : cell_9978.check = true := by
  decide +kernel

theorem check_9979 : cell_9979.check = true := by
  decide +kernel

theorem check_9980 : cell_9980.check = true := by
  decide +kernel

theorem check_9981 : cell_9981.check = true := by
  decide +kernel

theorem check_9982 : cell_9982.check = true := by
  decide +kernel

theorem check_9983 : cell_9983.check = true := by
  decide +kernel

theorem check_9984 : cell_9984.check = true := by
  decide +kernel

theorem check_9985 : cell_9985.check = true := by
  decide +kernel

theorem check_9986 : cell_9986.check = true := by
  decide +kernel

theorem check_9987 : cell_9987.check = true := by
  decide +kernel

theorem check_9988 : cell_9988.check = true := by
  decide +kernel

theorem check_9989 : cell_9989.check = true := by
  decide +kernel

theorem check_9990 : cell_9990.check = true := by
  decide +kernel

theorem check_9991 : cell_9991.check = true := by
  decide +kernel

theorem check_9992 : cell_9992.check = true := by
  decide +kernel

theorem check_9993 : cell_9993.check = true := by
  decide +kernel

theorem check_9994 : cell_9994.check = true := by
  decide +kernel

theorem check_9995 : cell_9995.check = true := by
  decide +kernel

theorem check_9996 : cell_9996.check = true := by
  decide +kernel

theorem check_9997 : cell_9997.check = true := by
  decide +kernel

theorem check_9998 : cell_9998.check = true := by
  decide +kernel

theorem check_9999 : cell_9999.check = true := by
  decide +kernel

def cells : List Cell := [cell_9950, cell_9951, cell_9952, cell_9953, cell_9954, cell_9955, cell_9956, cell_9957, cell_9958, cell_9959, cell_9960, cell_9961, cell_9962, cell_9963, cell_9964, cell_9965, cell_9966, cell_9967, cell_9968, cell_9969, cell_9970, cell_9971, cell_9972, cell_9973, cell_9974, cell_9975, cell_9976, cell_9977, cell_9978, cell_9979, cell_9980, cell_9981, cell_9982, cell_9983, cell_9984, cell_9985, cell_9986, cell_9987, cell_9988, cell_9989, cell_9990, cell_9991, cell_9992, cell_9993, cell_9994, cell_9995, cell_9996, cell_9997, cell_9998, cell_9999]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9950, check_9951, check_9952, check_9953, check_9954, check_9955, check_9956, check_9957, check_9958, check_9959, check_9960, check_9961, check_9962, check_9963, check_9964, check_9965, check_9966, check_9967, check_9968, check_9969, check_9970, check_9971, check_9972, check_9973, check_9974, check_9975, check_9976, check_9977, check_9978, check_9979, check_9980, check_9981, check_9982, check_9983, check_9984, check_9985, check_9986, check_9987, check_9988, check_9989, check_9990, check_9991, check_9992, check_9993, check_9994, check_9995, check_9996, check_9997, check_9998, check_9999, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0199

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0199
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0199
open AnalyticBounds.ExpressionCertificate

theorem linked_9950 : Linked cell_9950 pieces := by
  link_source cell_9950 with piece_1032 using piece_1032_mem, piece_1200_mem

theorem linked_9951 : Linked cell_9951 pieces := by
  link_source cell_9951 with piece_1033 using piece_1033_mem, piece_1201_mem

theorem linked_9952 : Linked cell_9952 pieces := by
  link_source cell_9952 with piece_1033 using piece_1033_mem, piece_1201_mem

theorem linked_9953 : Linked cell_9953 pieces := by
  link_source cell_9953 with piece_1033 using piece_1033_mem, ⟨piece_1200_mem, piece_1201_mem⟩

theorem linked_9954 : Linked cell_9954 pieces := by
  link_source cell_9954 with piece_1033 using piece_1033_mem, ⟨piece_1199_mem, piece_1200_mem⟩

theorem linked_9955 : Linked cell_9955 pieces := by
  link_source cell_9955 with piece_1033 using piece_1033_mem, piece_1199_mem

theorem linked_9956 : Linked cell_9956 pieces := by
  link_source cell_9956 with piece_1033 using piece_1033_mem, ⟨piece_1198_mem, piece_1199_mem⟩

theorem linked_9957 : Linked cell_9957 pieces := by
  link_source cell_9957 with piece_1034 using piece_1034_mem, piece_1200_mem

theorem linked_9958 : Linked cell_9958 pieces := by
  link_source cell_9958 with piece_1034 using piece_1034_mem, ⟨piece_1199_mem, piece_1200_mem⟩

theorem linked_9959 : Linked cell_9959 pieces := by
  link_source cell_9959 with piece_1034 using piece_1034_mem, ⟨piece_1198_mem, piece_1199_mem⟩

theorem linked_9960 : Linked cell_9960 pieces := by
  link_source cell_9960 with piece_1034 using piece_1034_mem, piece_1198_mem

theorem linked_9961 : Linked cell_9961 pieces := by
  link_source cell_9961 with piece_1034 using piece_1034_mem, ⟨piece_1197_mem, piece_1198_mem⟩

theorem linked_9962 : Linked cell_9962 pieces := by
  link_source cell_9962 with piece_1034 using piece_1034_mem, piece_1197_mem

theorem linked_9963 : Linked cell_9963 pieces := by
  link_source cell_9963 with piece_1035 using piece_1035_mem, ⟨piece_1198_mem, piece_1199_mem⟩

theorem linked_9964 : Linked cell_9964 pieces := by
  link_source cell_9964 with piece_1035 using piece_1035_mem, piece_1198_mem

theorem linked_9965 : Linked cell_9965 pieces := by
  link_source cell_9965 with piece_1035 using piece_1035_mem, ⟨piece_1197_mem, piece_1198_mem⟩

theorem linked_9966 : Linked cell_9966 pieces := by
  link_source cell_9966 with piece_1035 using piece_1035_mem, ⟨piece_1196_mem, piece_1197_mem⟩

theorem linked_9967 : Linked cell_9967 pieces := by
  link_source cell_9967 with piece_1035 using piece_1035_mem, piece_1196_mem

theorem linked_9968 : Linked cell_9968 pieces := by
  link_source cell_9968 with piece_1035 using piece_1035_mem, piece_1196_mem

theorem linked_9969 : Linked cell_9969 pieces := by
  link_source cell_9969 with piece_1036 using piece_1036_mem, piece_1197_mem

theorem linked_9970 : Linked cell_9970 pieces := by
  link_source cell_9970 with piece_1036 using piece_1036_mem, ⟨piece_1196_mem, piece_1197_mem⟩

theorem linked_9971 : Linked cell_9971 pieces := by
  link_source cell_9971 with piece_1036 using piece_1036_mem, piece_1196_mem

theorem linked_9972 : Linked cell_9972 pieces := by
  link_source cell_9972 with piece_1036 using piece_1036_mem, ⟨piece_1195_mem, piece_1196_mem⟩

theorem linked_9973 : Linked cell_9973 pieces := by
  link_source cell_9973 with piece_1037 using piece_1037_mem, piece_1195_mem

theorem linked_9974 : Linked cell_9974 pieces := by
  link_source cell_9974 with piece_1037 using piece_1037_mem, ⟨piece_1194_mem, piece_1195_mem⟩

theorem linked_9975 : Linked cell_9975 pieces := by
  link_source cell_9975 with piece_1038 using piece_1038_mem, ⟨piece_1195_mem, piece_1196_mem⟩

theorem linked_9976 : Linked cell_9976 pieces := by
  link_source cell_9976 with piece_1038 using piece_1038_mem, piece_1195_mem

theorem linked_9977 : Linked cell_9977 pieces := by
  link_source cell_9977 with piece_1038 using piece_1038_mem, ⟨piece_1194_mem, piece_1195_mem⟩

theorem linked_9978 : Linked cell_9978 pieces := by
  link_source cell_9978 with piece_1038 using piece_1038_mem, ⟨piece_1193_mem, piece_1194_mem⟩

theorem linked_9979 : Linked cell_9979 pieces := by
  link_source cell_9979 with piece_1038 using piece_1038_mem, ⟨piece_1192_mem, piece_1193_mem⟩

theorem linked_9980 : Linked cell_9980 pieces := by
  link_source cell_9980 with piece_1038 using piece_1038_mem, piece_1192_mem

theorem linked_9981 : Linked cell_9981 pieces := by
  link_source cell_9981 with piece_1039 using piece_1039_mem, piece_1194_mem

theorem linked_9982 : Linked cell_9982 pieces := by
  link_source cell_9982 with piece_1039 using piece_1039_mem, ⟨piece_1193_mem, piece_1194_mem⟩

theorem linked_9983 : Linked cell_9983 pieces := by
  link_source cell_9983 with piece_1039 using piece_1039_mem, ⟨piece_1192_mem, piece_1193_mem⟩

theorem linked_9984 : Linked cell_9984 pieces := by
  link_source cell_9984 with piece_1039 using piece_1039_mem, ⟨piece_1191_mem, piece_1192_mem⟩

theorem linked_9985 : Linked cell_9985 pieces := by
  link_source cell_9985 with piece_1039 using piece_1039_mem, piece_1191_mem

theorem linked_9986 : Linked cell_9986 pieces := by
  link_source cell_9986 with piece_1039 using piece_1039_mem, piece_1191_mem

theorem linked_9987 : Linked cell_9987 pieces := by
  link_source cell_9987 with piece_1040 using piece_1040_mem, piece_1192_mem

theorem linked_9988 : Linked cell_9988 pieces := by
  link_source cell_9988 with piece_1040 using piece_1040_mem, ⟨piece_1191_mem, piece_1192_mem⟩

theorem linked_9989 : Linked cell_9989 pieces := by
  link_source cell_9989 with piece_1040 using piece_1040_mem, piece_1191_mem

theorem linked_9990 : Linked cell_9990 pieces := by
  link_source cell_9990 with piece_1040 using piece_1040_mem, ⟨piece_1190_mem, piece_1191_mem⟩

theorem linked_9991 : Linked cell_9991 pieces := by
  link_source cell_9991 with piece_1040 using piece_1040_mem, piece_1190_mem

theorem linked_9992 : Linked cell_9992 pieces := by
  link_source cell_9992 with piece_1040 using piece_1040_mem, ⟨piece_1189_mem, piece_1190_mem⟩

theorem linked_9993 : Linked cell_9993 pieces := by
  link_source cell_9993 with piece_1041 using piece_1041_mem, ⟨piece_1190_mem, piece_1191_mem⟩

theorem linked_9994 : Linked cell_9994 pieces := by
  link_source cell_9994 with piece_1041 using piece_1041_mem, piece_1190_mem

theorem linked_9995 : Linked cell_9995 pieces := by
  link_source cell_9995 with piece_1041 using piece_1041_mem, ⟨piece_1189_mem, piece_1190_mem⟩

theorem linked_9996 : Linked cell_9996 pieces := by
  link_source cell_9996 with piece_1041 using piece_1041_mem, piece_1189_mem

theorem linked_9997 : Linked cell_9997 pieces := by
  link_source cell_9997 with piece_1041 using piece_1041_mem, ⟨piece_1188_mem, piece_1189_mem⟩

theorem linked_9998 : Linked cell_9998 pieces := by
  link_source cell_9998 with piece_1041 using piece_1041_mem, piece_1188_mem

theorem linked_9999 : Linked cell_9999 pieces := by
  link_source cell_9999 with piece_1042 using piece_1042_mem, piece_1189_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0199.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0199.cells,List.forall_mem_cons]
  exact ⟨linked_9950, linked_9951, linked_9952, linked_9953, linked_9954, linked_9955, linked_9956, linked_9957, linked_9958, linked_9959, linked_9960, linked_9961, linked_9962, linked_9963, linked_9964, linked_9965, linked_9966, linked_9967, linked_9968, linked_9969, linked_9970, linked_9971, linked_9972, linked_9973, linked_9974, linked_9975, linked_9976, linked_9977, linked_9978, linked_9979, linked_9980, linked_9981, linked_9982, linked_9983, linked_9984, linked_9985, linked_9986, linked_9987, linked_9988, linked_9989, linked_9990, linked_9991, linked_9992, linked_9993, linked_9994, linked_9995, linked_9996, linked_9997, linked_9998, linked_9999, by simp⟩

theorem covered : covers (8568750000000001 / 20000000000000000 : ℚ) (8651250000000001 / 20000000000000000 : ℚ)
    (SourceCertificates.Chunk0199.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0199
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0200
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(8651250000000001 / 20000000000000000 : ℚ), (8652500000000001 / 20000000000000000 : ℚ)⟩
  branch := .left
  r := (8369259262921 / 12500000000000 : ℚ)
  w := (15349224043981 / 10000000000000 : ℚ)
  center := (8651875000000001 / 20000000000000000 : ℚ)
  supportValue := (5002357963492579 / 10000000000000000 : ℚ)
  supportSlope := (-27600752125387373 / 10000000000000000 : ℚ)
  oldCenter := (5002357963492579 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1043
  oldLo := (9980000000000001 / 20000000000000000 : ℚ)
  oldHi := (24975000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1187]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10000 : Cell := { cellDefaults with
  r := (33497806254177 / 50000000000000 : ℚ)
  w := (15355032889167 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1042
  oldLo := (1 / 2 : ℚ)
  oldHi := (25024999999999997 / 50000000000000000 : ℚ)
  oldPieces := [piece_1189]
}

def cell_10001 : Cell := { cellDefaults with
  domain := ⟨(8652500000000001 / 20000000000000000 : ℚ), (8655000000000001 / 20000000000000000 : ℚ)⟩
  r := (33497806254177 / 50000000000000 : ℚ)
  w := (15355032889167 / 10000000000000 : ℚ)
  center := (8653750000000001 / 20000000000000000 : ℚ)
  supportValue := (2499887456626237 / 5000000000000000 : ℚ)
  supportSlope := (-220651205357143 / 80000000000000 : ℚ)
  oldCenter := (2499887456626237 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1042
  oldLo := (24975000000000003 / 50000000000000000 : ℚ)
  oldHi := (25024999999999997 / 50000000000000000 : ℚ)
  oldPieces := [piece_1188, piece_1189]
}

def cell_10002 : Cell := { cellDefaults with
  domain := ⟨(8655000000000001 / 20000000000000000 : ℚ), (8657500000000001 / 20000000000000000 : ℚ)⟩
  r := (33497806254177 / 50000000000000 : ℚ)
  w := (15355032889167 / 10000000000000 : ℚ)
  center := (8656250000000001 / 20000000000000000 : ℚ)
  supportValue := (9992657607927623 / 20000000000000000 : ℚ)
  supportSlope := (-27554316058333583 / 10000000000000000 : ℚ)
  oldCenter := (9992657607927623 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1042
  oldHi := (1 / 2 : ℚ)
  oldPieces := [piece_1187, piece_1188]
}

def cell_10003 : Cell := { cellDefaults with
  domain := ⟨(8657500000000001 / 20000000000000000 : ℚ), (8658750000000001 / 20000000000000000 : ℚ)⟩
  r := (33497806254177 / 50000000000000 : ℚ)
  w := (15355032889167 / 10000000000000 : ℚ)
  center := (8658125000000001 / 20000000000000000 : ℚ)
  supportValue := (49937429419060203 / 100000000000000000 : ℚ)
  supportSlope := (-5507398744406089 / 2000000000000000 : ℚ)
  oldCenter := (49937429419060203 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1042
  oldPieces := [piece_1187]
}

def cell_10004 : Cell := { cellDefaults with
  domain := ⟨(8658750000000001 / 20000000000000000 : ℚ), (8660000000000001 / 20000000000000000 : ℚ)⟩
  r := (33497806254177 / 50000000000000 : ℚ)
  w := (15355032889167 / 10000000000000 : ℚ)
  center := (8659375000000001 / 20000000000000000 : ℚ)
  supportValue := (49920223558808713 / 100000000000000000 : ℚ)
  supportSlope := (-5504349402986719 / 2000000000000000 : ℚ)
  oldCenter := (49920223558808713 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1042
  oldPieces := [piece_1187]
}

def cell_10005 : Cell := { cellDefaults with
  domain := ⟨(8660000000000001 / 20000000000000000 : ℚ), (8661250000000001 / 20000000000000000 : ℚ)⟩
  center := (8660625000000001 / 20000000000000000 : ℚ)
  supportValue := (49974595623313633 / 100000000000000000 : ℚ)
  supportSlope := (-6886529459015911 / 2500000000000000 : ℚ)
  oldCenter := (49974595623313633 / 100000000000000000 : ℚ)
  oldLo := (24975000000000003 / 50000000000000000 : ℚ)
  oldHi := (1 / 2 : ℚ)
  oldPieces := [piece_1188]
}

def cell_10006 : Cell := { cellDefaults with
  domain := ⟨(8661250000000001 / 20000000000000000 : ℚ), (8662500000000001 / 20000000000000000 : ℚ)⟩
  center := (8661875000000001 / 20000000000000000 : ℚ)
  supportValue := (1998295362164747 / 4000000000000000 : ℚ)
  supportSlope := (-2753134143180347 / 1000000000000000 : ℚ)
  oldCenter := (1998295362164747 / 4000000000000000 : ℚ)
  oldHi := (1 / 2 : ℚ)
  oldPieces := [piece_1187, piece_1188]
}

def cell_10007 : Cell := { cellDefaults with
  domain := ⟨(8662500000000001 / 20000000000000000 : ℚ), (8665000000000001 / 20000000000000000 : ℚ)⟩
  center := (8663750000000001 / 20000000000000000 : ℚ)
  supportValue := (2496580764478783 / 5000000000000000 : ℚ)
  supportSlope := (-859822744441463 / 312500000000000 : ℚ)
  oldCenter := (2496580764478783 / 5000000000000000 : ℚ)
  oldPieces := [piece_1187]
}

def cell_10008 : Cell := { cellDefaults with
  domain := ⟨(8665000000000001 / 20000000000000000 : ℚ), (8667500000000001 / 20000000000000000 : ℚ)⟩
  center := (8666250000000001 / 20000000000000000 : ℚ)
  supportValue := (24948620361677487 / 50000000000000000 : ℚ)
  supportSlope := (-13743781708148717 / 5000000000000000 : ℚ)
  oldCenter := (24948620361677487 / 50000000000000000 : ℚ)
  oldLo := (9970000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1186, piece_1187]
}

def cell_10009 : Cell := { cellDefaults with
  domain := ⟨(8667500000000001 / 20000000000000000 : ℚ), (8668750000000001 / 20000000000000000 : ℚ)⟩
  center := (8668125000000001 / 20000000000000000 : ℚ)
  supportValue := (4987144442390453 / 10000000000000000 : ℚ)
  supportSlope := (-2746738234254309 / 1000000000000000 : ℚ)
  oldCenter := (4987144442390453 / 10000000000000000 : ℚ)
  oldLo := (9970000000000001 / 20000000000000000 : ℚ)
  oldHi := (9980000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1186]
}

def cell_10010 : Cell := { cellDefaults with
  domain := ⟨(8668750000000001 / 20000000000000000 : ℚ), (8670000000000001 / 20000000000000000 : ℚ)⟩
  center := (8669375000000001 / 20000000000000000 : ℚ)
  supportValue := (4985428205326647 / 10000000000000000 : ℚ)
  supportSlope := (-2745377860545517 / 1000000000000000 : ℚ)
  oldCenter := (4985428205326647 / 10000000000000000 : ℚ)
  oldLo := (9960000000000001 / 20000000000000000 : ℚ)
  oldHi := (9980000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1185, piece_1186]
}

def cell_10011 : Cell := { cellDefaults with
  domain := ⟨(8670000000000001 / 20000000000000000 : ℚ), (8671250000000001 / 20000000000000000 : ℚ)⟩
  r := (66912592984213 / 100000000000000 : ℚ)
  w := (15343427209667 / 10000000000000 : ℚ)
  center := (8670625000000001 / 20000000000000000 : ℚ)
  supportValue := (623856568313241 / 1250000000000000 : ℚ)
  supportSlope := (-27476486368858133 / 10000000000000000 : ℚ)
  oldCenter := (623856568313241 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1044
  oldLo := (9970000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1186, piece_1187]
}

def cell_10012 : Cell := { cellDefaults with
  domain := ⟨(8671250000000001 / 20000000000000000 : ℚ), (8672500000000001 / 20000000000000000 : ℚ)⟩
  r := (66912592984213 / 100000000000000 : ℚ)
  w := (15343427209667 / 10000000000000 : ℚ)
  center := (8671875000000001 / 20000000000000000 : ℚ)
  supportValue := (4989135543337613 / 10000000000000000 : ℚ)
  supportSlope := (-13733783306184577 / 5000000000000000 : ℚ)
  oldCenter := (4989135543337613 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1044
  oldLo := (9970000000000001 / 20000000000000000 : ℚ)
  oldHi := (9980000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1186]
}

def cell_10013 : Cell := { cellDefaults with
  domain := ⟨(8672500000000001 / 20000000000000000 : ℚ), (8675000000000001 / 20000000000000000 : ℚ)⟩
  r := (66912592984213 / 100000000000000 : ℚ)
  w := (15343427209667 / 10000000000000 : ℚ)
  center := (8673750000000001 / 20000000000000000 : ℚ)
  supportValue := (49865650166575043 / 100000000000000000 : ℚ)
  supportSlope := (-2744508079366881 / 1000000000000000 : ℚ)
  oldCenter := (49865650166575043 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1044
  oldLo := (9960000000000001 / 20000000000000000 : ℚ)
  oldHi := (9980000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1185, piece_1186]
}

def cell_10014 : Cell := { cellDefaults with
  domain := ⟨(8675000000000001 / 20000000000000000 : ℚ), (8677500000000001 / 20000000000000000 : ℚ)⟩
  r := (66912592984213 / 100000000000000 : ℚ)
  w := (15343427209667 / 10000000000000 : ℚ)
  center := (8676250000000001 / 20000000000000000 : ℚ)
  supportValue := (4983135879726097 / 10000000000000000 : ℚ)
  supportSlope := (-685519238062593 / 250000000000000 : ℚ)
  oldCenter := (4983135879726097 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1044
  oldLo := (9960000000000001 / 20000000000000000 : ℚ)
  oldHi := (9970000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1185]
}

def cell_10015 : Cell := { cellDefaults with
  domain := ⟨(8677500000000001 / 20000000000000000 : ℚ), (8678750000000001 / 20000000000000000 : ℚ)⟩
  r := (66912592984213 / 100000000000000 : ℚ)
  w := (15343427209667 / 10000000000000 : ℚ)
  center := (8678125000000001 / 20000000000000000 : ℚ)
  supportValue := (24902813799603177 / 50000000000000000 : ℚ)
  supportSlope := (-6849780681101869 / 2500000000000000 : ℚ)
  oldCenter := (24902813799603177 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1044
  oldLo := (9950000000000001 / 20000000000000000 : ℚ)
  oldHi := (9970000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1184, piece_1185]
}

def cell_10016 : Cell := { cellDefaults with
  domain := ⟨(8678750000000001 / 20000000000000000 : ℚ), (8680000000000001 / 20000000000000000 : ℚ)⟩
  r := (66912592984213 / 100000000000000 : ℚ)
  w := (15343427209667 / 10000000000000 : ℚ)
  center := (8679375000000001 / 20000000000000000 : ℚ)
  supportValue := (24894252948892043 / 50000000000000000 : ℚ)
  supportSlope := (-6847302669759081 / 2500000000000000 : ℚ)
  oldCenter := (24894252948892043 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1044
  oldLo := (9950000000000001 / 20000000000000000 : ℚ)
  oldHi := (9960000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1184]
}

def cell_10017 : Cell := { cellDefaults with
  domain := ⟨(8680000000000001 / 20000000000000000 : ℚ), (8681250000000001 / 20000000000000000 : ℚ)⟩
  r := (16717791797073 / 25000000000000 : ℚ)
  w := (15337641631033 / 10000000000000 : ℚ)
  center := (8680625000000001 / 20000000000000000 : ℚ)
  supportValue := (1246065669719109 / 2500000000000000 : ℚ)
  supportSlope := (-219303418878809 / 80000000000000 : ℚ)
  oldCenter := (1246065669719109 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1045
  oldLo := (9960000000000001 / 20000000000000000 : ℚ)
  oldHi := (9980000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1185, piece_1186]
}

def cell_10018 : Cell := { cellDefaults with
  domain := ⟨(8681250000000001 / 20000000000000000 : ℚ), (8682500000000001 / 20000000000000000 : ℚ)⟩
  r := (16717791797073 / 25000000000000 : ℚ)
  w := (15337641631033 / 10000000000000 : ℚ)
  center := (8681875000000001 / 20000000000000000 : ℚ)
  supportValue := (4982549816777 / 10000000000000 : ℚ)
  supportSlope := (-13699106615376877 / 5000000000000000 : ℚ)
  oldCenter := (4982549816777 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1045
  oldLo := (9960000000000001 / 20000000000000000 : ℚ)
  oldHi := (9970000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1185]
}

def cell_10019 : Cell := { cellDefaults with
  domain := ⟨(8682500000000001 / 20000000000000000 : ℚ), (8685000000000001 / 20000000000000000 : ℚ)⟩
  r := (16717791797073 / 25000000000000 : ℚ)
  w := (15337641631033 / 10000000000000 : ℚ)
  center := (8683750000000001 / 20000000000000000 : ℚ)
  supportValue := (995997155806081 / 2000000000000000 : ℚ)
  supportSlope := (-2737871842906081 / 1000000000000000 : ℚ)
  oldCenter := (995997155806081 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1045
  oldLo := (9950000000000001 / 20000000000000000 : ℚ)
  oldHi := (9970000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1184, piece_1185]
}

def cell_10020 : Cell := { cellDefaults with
  domain := ⟨(8685000000000001 / 20000000000000000 : ℚ), (8687500000000001 / 20000000000000000 : ℚ)⟩
  r := (16717791797073 / 25000000000000 : ℚ)
  w := (15337641631033 / 10000000000000 : ℚ)
  center := (8686250000000001 / 20000000000000000 : ℚ)
  supportValue := (4976564935774071 / 10000000000000000 : ℚ)
  supportSlope := (-27351874717949087 / 10000000000000000 : ℚ)
  oldCenter := (4976564935774071 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1045
  oldLo := (9940000000000001 / 20000000000000000 : ℚ)
  oldHi := (9960000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1183, piece_1184]
}

def cell_10021 : Cell := { cellDefaults with
  domain := ⟨(8687500000000001 / 20000000000000000 : ℚ), (8688750000000001 / 20000000000000000 : ℚ)⟩
  r := (16717791797073 / 25000000000000 : ℚ)
  w := (15337641631033 / 10000000000000 : ℚ)
  center := (8688125000000001 / 20000000000000000 : ℚ)
  supportValue := (621749758576273 / 1250000000000000 : ℚ)
  supportSlope := (-6833819465770219 / 2500000000000000 : ℚ)
  oldCenter := (621749758576273 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1045
  oldLo := (9940000000000001 / 20000000000000000 : ℚ)
  oldHi := (9950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1183]
}

def cell_10022 : Cell := { cellDefaults with
  domain := ⟨(8688750000000001 / 20000000000000000 : ℚ), (8690000000000001 / 20000000000000000 : ℚ)⟩
  r := (16717791797073 / 25000000000000 : ℚ)
  w := (15337641631033 / 10000000000000 : ℚ)
  center := (8689375000000001 / 20000000000000000 : ℚ)
  supportValue := (49722900856578617 / 100000000000000000 : ℚ)
  supportSlope := (-13660082324866707 / 5000000000000000 : ℚ)
  oldCenter := (49722900856578617 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1045
  oldLo := (9940000000000001 / 20000000000000000 : ℚ)
  oldHi := (9950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1183]
}

def cell_10023 : Cell := { cellDefaults with
  domain := ⟨(8690000000000001 / 20000000000000000 : ℚ), (8691250000000001 / 20000000000000000 : ℚ)⟩
  r := (66829798919361 / 100000000000000 : ℚ)
  w := (1533186898911 / 1000000000000 : ℚ)
  center := (8690625000000001 / 20000000000000000 : ℚ)
  supportValue := (995537800318481 / 2000000000000000 : ℚ)
  supportSlope := (-27344208857211783 / 10000000000000000 : ℚ)
  oldCenter := (995537800318481 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1046
  oldLo := (9950000000000001 / 20000000000000000 : ℚ)
  oldHi := (9960000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1184]
}

def cell_10024 : Cell := { cellDefaults with
  domain := ⟨(8691250000000001 / 20000000000000000 : ℚ), (8692500000000001 / 20000000000000000 : ℚ)⟩
  r := (66829798919361 / 100000000000000 : ℚ)
  w := (1533186898911 / 1000000000000 : ℚ)
  center := (8691875000000001 / 20000000000000000 : ℚ)
  supportValue := (24879902298816217 / 50000000000000000 : ℚ)
  supportSlope := (-27329117688896787 / 10000000000000000 : ℚ)
  oldCenter := (24879902298816217 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1046
  oldLo := (9950000000000001 / 20000000000000000 : ℚ)
  oldHi := (9960000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1184]
}

def cell_10025 : Cell := { cellDefaults with
  domain := ⟨(8692500000000001 / 20000000000000000 : ℚ), (8695000000000001 / 20000000000000000 : ℚ)⟩
  r := (66829798919361 / 100000000000000 : ℚ)
  w := (1533186898911 / 1000000000000 : ℚ)
  center := (8693750000000001 / 20000000000000000 : ℚ)
  supportValue := (4973422528813427 / 10000000000000000 : ℚ)
  supportSlope := (-5462519591167947 / 2000000000000000 : ℚ)
  oldCenter := (4973422528813427 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1046
  oldLo := (9940000000000001 / 20000000000000000 : ℚ)
  oldHi := (9960000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1183, piece_1184]
}

def cell_10026 : Cell := { cellDefaults with
  domain := ⟨(8695000000000001 / 20000000000000000 : ℚ), (8697500000000001 / 20000000000000000 : ℚ)⟩
  r := (66829798919361 / 100000000000000 : ℚ)
  w := (1533186898911 / 1000000000000 : ℚ)
  center := (8696250000000001 / 20000000000000000 : ℚ)
  supportValue := (24850051535151163 / 50000000000000000 : ℚ)
  supportSlope := (-13642923574757049 / 5000000000000000 : ℚ)
  oldCenter := (24850051535151163 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1046
  oldLo := (4967039106145251 / 10000000000000000 : ℚ)
  oldHi := (9950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1182, piece_1183]
}

def cell_10027 : Cell := { cellDefaults with
  domain := ⟨(8697500000000001 / 20000000000000000 : ℚ), (8698750000000001 / 20000000000000000 : ℚ)⟩
  r := (66829798919361 / 100000000000000 : ℚ)
  w := (1533186898911 / 1000000000000 : ℚ)
  center := (8698125000000001 / 20000000000000000 : ℚ)
  supportValue := (4967449540859267 / 10000000000000000 : ℚ)
  supportSlope := (-3408303627769893 / 1250000000000000 : ℚ)
  oldCenter := (4967449540859267 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1046
  oldLo := (9930000000000001 / 20000000000000000 : ℚ)
  oldHi := (9940000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1181, piece_1182]
}

def cell_10028 : Cell := { cellDefaults with
  domain := ⟨(8698750000000001 / 20000000000000000 : ℚ), (8700000000000001 / 20000000000000000 : ℚ)⟩
  r := (66829798919361 / 100000000000000 : ℚ)
  w := (1533186898911 / 1000000000000 : ℚ)
  center := (8699375000000001 / 20000000000000000 : ℚ)
  supportValue := (496574585920773 / 1000000000000000 : ℚ)
  supportSlope := (-27251773669263457 / 10000000000000000 : ℚ)
  oldCenter := (496574585920773 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1046
  oldLo := (9920000000000001 / 20000000000000000 : ℚ)
  oldHi := (4967039106145251 / 10000000000000000 : ℚ)
  oldPieces := [piece_1180, piece_1181]
}

def cell_10029 : Cell := { cellDefaults with
  domain := ⟨(8700000000000001 / 20000000000000000 : ℚ), (8701250000000001 / 20000000000000000 : ℚ)⟩
  r := (66788486485421 / 100000000000000 : ℚ)
  w := (7663053967499 / 5000000000000 : ℚ)
  center := (8700625000000001 / 20000000000000000 : ℚ)
  supportValue := (4971132285272129 / 10000000000000000 : ℚ)
  supportSlope := (-136376581258979 / 50000000000000 : ℚ)
  oldCenter := (4971132285272129 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1047
  oldLo := (9940000000000001 / 20000000000000000 : ℚ)
  oldHi := (9950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1183]
}

def cell_10030 : Cell := { cellDefaults with
  domain := ⟨(8701250000000001 / 20000000000000000 : ℚ), (8702500000000001 / 20000000000000000 : ℚ)⟩
  r := (66788486485421 / 100000000000000 : ℚ)
  w := (7663053967499 / 5000000000000 : ℚ)
  center := (8701875000000001 / 20000000000000000 : ℚ)
  supportValue := (993885582747613 / 2000000000000000 : ℚ)
  supportSlope := (-2726559281827079 / 1000000000000000 : ℚ)
  oldCenter := (993885582747613 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1047
  oldLo := (4967039106145251 / 10000000000000000 : ℚ)
  oldHi := (9950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1182, piece_1183]
}

def cell_10031 : Cell := { cellDefaults with
  domain := ⟨(8702500000000001 / 20000000000000000 : ℚ), (8705000000000001 / 20000000000000000 : ℚ)⟩
  r := (66788486485421 / 100000000000000 : ℚ)
  w := (7663053967499 / 5000000000000 : ℚ)
  center := (8703750000000001 / 20000000000000000 : ℚ)
  supportValue := (4966876201470157 / 10000000000000000 : ℚ)
  supportSlope := (-27244060812670057 / 10000000000000000 : ℚ)
  oldCenter := (4966876201470157 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1047
  oldLo := (9930000000000001 / 20000000000000000 : ℚ)
  oldHi := (9940000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1181, piece_1182]
}

def cell_10032 : Cell := { cellDefaults with
  domain := ⟨(8705000000000001 / 20000000000000000 : ℚ), (8707500000000001 / 20000000000000000 : ℚ)⟩
  r := (66788486485421 / 100000000000000 : ℚ)
  w := (7663053967499 / 5000000000000 : ℚ)
  center := (8706250000000001 / 20000000000000000 : ℚ)
  supportValue := (12408680525710901 / 25000000000000000 : ℚ)
  supportSlope := (-2722005986955267 / 1000000000000000 : ℚ)
  oldCenter := (12408680525710901 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1047
  oldLo := (9920000000000001 / 20000000000000000 : ℚ)
  oldHi := (4967039106145251 / 10000000000000000 : ℚ)
  oldPieces := [piece_1180, piece_1181]
}

def cell_10033 : Cell := { cellDefaults with
  domain := ⟨(8707500000000001 / 20000000000000000 : ℚ), (8708750000000001 / 20000000000000000 : ℚ)⟩
  r := (66788486485421 / 100000000000000 : ℚ)
  w := (7663053967499 / 5000000000000 : ℚ)
  center := (8708125000000001 / 20000000000000000 : ℚ)
  supportValue := (49609178817871397 / 100000000000000000 : ℚ)
  supportSlope := (-13598918548058947 / 5000000000000000 : ℚ)
  oldCenter := (49609178817871397 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1047
  oldLo := (9920000000000001 / 20000000000000000 : ℚ)
  oldHi := (9930000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1180]
}

def cell_10034 : Cell := { cellDefaults with
  domain := ⟨(8708750000000001 / 20000000000000000 : ℚ), (8710000000000001 / 20000000000000000 : ℚ)⟩
  r := (66788486485421 / 100000000000000 : ℚ)
  w := (7663053967499 / 5000000000000 : ℚ)
  center := (8709375000000001 / 20000000000000000 : ℚ)
  supportValue := (247960915054069 / 500000000000000 : ℚ)
  supportSlope := (-6797243907610273 / 2500000000000000 : ℚ)
  oldCenter := (247960915054069 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1047
  oldLo := (9910000000000001 / 20000000000000000 : ℚ)
  oldHi := (9930000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1179, piece_1180]
}

def cell_10035 : Cell := { cellDefaults with
  domain := ⟨(8710000000000001 / 20000000000000000 : ℚ), (8711250000000001 / 20000000000000000 : ℚ)⟩
  r := (6674722985067 / 10000000000000 : ℚ)
  w := (766017980853 / 500000000000 : ℚ)
  center := (8710625000000001 / 20000000000000000 : ℚ)
  supportValue := (49645919615462863 / 100000000000000000 : ℚ)
  supportSlope := (-2721139703160347 / 1000000000000000 : ℚ)
  oldCenter := (49645919615462863 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1048
  oldLo := (9920000000000001 / 20000000000000000 : ℚ)
  oldHi := (4967039106145251 / 10000000000000000 : ℚ)
  oldPieces := [piece_1180, piece_1181]
}

def cell_10036 : Cell := { cellDefaults with
  domain := ⟨(8711250000000001 / 20000000000000000 : ℚ), (8712500000000001 / 20000000000000000 : ℚ)⟩
  r := (6674722985067 / 10000000000000 : ℚ)
  w := (766017980853 / 500000000000 : ℚ)
  center := (8711875000000001 / 20000000000000000 : ℚ)
  supportValue := (9925783229302697 / 20000000000000000 : ℚ)
  supportSlope := (-27198035566460277 / 10000000000000000 : ℚ)
  oldCenter := (9925783229302697 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1048
  oldLo := (9920000000000001 / 20000000000000000 : ℚ)
  oldHi := (9930000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1180]
}

def cell_10037 : Cell := { cellDefaults with
  domain := ⟨(8712500000000001 / 20000000000000000 : ℚ), (8715000000000001 / 20000000000000000 : ℚ)⟩
  r := (6674722985067 / 10000000000000 : ℚ)
  w := (766017980853 / 500000000000 : ℚ)
  center := (8713750000000001 / 20000000000000000 : ℚ)
  supportValue := (24801731625220577 / 50000000000000000 : ℚ)
  supportSlope := (-1358904882855061 / 500000000000000 : ℚ)
  oldCenter := (24801731625220577 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1048
  oldLo := (9910000000000001 / 20000000000000000 : ℚ)
  oldHi := (9930000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1179, piece_1180]
}

def cell_10038 : Cell := { cellDefaults with
  domain := ⟨(8715000000000001 / 20000000000000000 : ℚ), (871731843575419 / 2000000000000000 : ℚ)⟩
  r := (6674722985067 / 10000000000000 : ℚ)
  w := (766017980853 / 500000000000 : ℚ)
  center := (17432318435754191 / 40000000000000000 : ℚ)
  supportValue := (4957073781924329 / 10000000000000000 : ℚ)
  supportSlope := (-212133148405577 / 78125000000000 : ℚ)
  oldCenter := (4957073781924329 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1048
  oldLo := (9910000000000001 / 20000000000000000 : ℚ)
  oldHi := (9920000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1179]
}

def cell_10039 : Cell := { cellDefaults with
  domain := ⟨(871731843575419 / 2000000000000000 : ℚ), (17437318435754191 / 40000000000000000 : ℚ)⟩
  r := (6674722985067 / 10000000000000 : ℚ)
  w := (766017980853 / 500000000000 : ℚ)
  center := (34871955307262571 / 80000000000000000 : ℚ)
  supportValue := (4954587243477999 / 10000000000000000 : ℚ)
  supportSlope := (-5427159250401191 / 2000000000000000 : ℚ)
  oldCenter := (4954587243477999 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1049
  oldLo := (9900000000000001 / 20000000000000000 : ℚ)
  oldHi := (9920000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1178, piece_1179]
}

def cell_10040 : Cell := { cellDefaults with
  domain := ⟨(17437318435754191 / 40000000000000000 : ℚ), (8720000000000001 / 20000000000000000 : ℚ)⟩
  r := (6674722985067 / 10000000000000 : ℚ)
  w := (766017980853 / 500000000000 : ℚ)
  center := (34877318435754193 / 80000000000000000 : ℚ)
  supportValue := (619096063118149 / 1250000000000000 : ℚ)
  supportSlope := (-2712147386662513 / 1000000000000000 : ℚ)
  oldCenter := (619096063118149 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1049
  oldLo := (9900000000000001 / 20000000000000000 : ℚ)
  oldHi := (9910000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1178]
}

def cell_10041 : Cell := { cellDefaults with
  domain := ⟨(8720000000000001 / 20000000000000000 : ℚ), (69770000000000007 / 160000000000000000 : ℚ)⟩
  r := (66706029665663 / 100000000000000 : ℚ)
  w := (1914327755523 / 1250000000000 : ℚ)
  center := (27906000000000003 / 64000000000000000 : ℚ)
  supportValue := (991613672387219 / 2000000000000000 : ℚ)
  supportSlope := (-27144658390184033 / 10000000000000000 : ℚ)
  oldCenter := (991613672387219 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1050
  oldLo := (9910000000000001 / 20000000000000000 : ℚ)
  oldHi := (9920000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1179]
}

def cell_10042 : Cell := { cellDefaults with
  domain := ⟨(69770000000000007 / 160000000000000000 : ℚ), (34890000000000003 / 80000000000000000 : ℚ)⟩
  r := (66706029665663 / 100000000000000 : ℚ)
  w := (1914327755523 / 1250000000000 : ℚ)
  center := (139550000000000013 / 320000000000000000 : ℚ)
  supportValue := (9912744575993323 / 20000000000000000 : ℚ)
  supportSlope := (-13564847896116141 / 5000000000000000 : ℚ)
  oldCenter := (9912744575993323 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1050
  oldLo := (9910000000000001 / 20000000000000000 : ℚ)
  oldHi := (9920000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1179]
}

def cell_10043 : Cell := { cellDefaults with
  domain := ⟨(34890000000000003 / 80000000000000000 : ℚ), (17450000000000001 / 40000000000000000 : ℚ)⟩
  r := (66706029665663 / 100000000000000 : ℚ)
  w := (1914327755523 / 1250000000000 : ℚ)
  center := (13958000000000001 / 32000000000000000 : ℚ)
  supportValue := (9907666239659797 / 20000000000000000 : ℚ)
  supportSlope := (-542253856498097 / 200000000000000 : ℚ)
  oldCenter := (9907666239659797 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1050
  oldLo := (9900000000000001 / 20000000000000000 : ℚ)
  oldHi := (9920000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1178, piece_1179]
}

def cell_10044 : Cell := { cellDefaults with
  domain := ⟨(17450000000000001 / 40000000000000000 : ℚ), (34910000000000001 / 80000000000000000 : ℚ)⟩
  r := (66706029665663 / 100000000000000 : ℚ)
  w := (1914327755523 / 1250000000000 : ℚ)
  center := (69810000000000003 / 160000000000000000 : ℚ)
  supportValue := (618805721899203 / 1250000000000000 : ℚ)
  supportSlope := (-3385771331661297 / 1250000000000000 : ℚ)
  oldCenter := (618805721899203 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1050
  oldLo := (9890000000000001 / 20000000000000000 : ℚ)
  oldHi := (9910000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1177, piece_1178]
}

def cell_10045 : Cell := { cellDefaults with
  domain := ⟨(34910000000000001 / 80000000000000000 : ℚ), (69830000000000001 / 160000000000000000 : ℚ)⟩
  r := (66706029665663 / 100000000000000 : ℚ)
  w := (1914327755523 / 1250000000000 : ℚ)
  center := (139650000000000003 / 320000000000000000 : ℚ)
  supportValue := (2473951877687179 / 5000000000000000 : ℚ)
  supportSlope := (-5413563367590343 / 2000000000000000 : ℚ)
  oldCenter := (2473951877687179 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1050
  oldLo := (9890000000000001 / 20000000000000000 : ℚ)
  oldHi := (9900000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1177]
}

def cell_10046 : Cell := { cellDefaults with
  domain := ⟨(69830000000000001 / 160000000000000000 : ℚ), (873 / 2000 : ℚ)⟩
  r := (66706029665663 / 100000000000000 : ℚ)
  w := (1914327755523 / 1250000000000 : ℚ)
  center := (139670000000000001 / 320000000000000000 : ℚ)
  supportValue := (9892424965983977 / 20000000000000000 : ℚ)
  supportSlope := (-27052887569641233 / 10000000000000000 : ℚ)
  oldCenter := (9892424965983977 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1050
  oldLo := (9890000000000001 / 20000000000000000 : ℚ)
  oldHi := (9900000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1177]
}

def cell_10047 : Cell := { cellDefaults with
  domain := ⟨(873 / 2000 : ℚ), (1397 / 3200 : ℚ)⟩
  r := (66664886329663 / 100000000000000 : ℚ)
  w := (191361221889 / 125000000000 : ℚ)
  center := (13969 / 32000 : ℚ)
  supportValue := (2475780380088967 / 5000000000000000 : ℚ)
  supportSlope := (-27076511634991363 / 10000000000000000 : ℚ)
  oldCenter := (2475780380088967 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1051
  oldLo := (9900000000000001 / 20000000000000000 : ℚ)
  oldHi := (9910000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1178]
}

def cell_10048 : Cell := { cellDefaults with
  domain := ⟨(1397 / 3200 : ℚ), (3493 / 8000 : ℚ)⟩
  r := (66664886329663 / 100000000000000 : ℚ)
  w := (191361221889 / 125000000000 : ℚ)
  center := (13971 / 32000 : ℚ)
  supportValue := (24749344560813097 / 50000000000000000 : ℚ)
  supportSlope := (-27065322409516313 / 10000000000000000 : ℚ)
  oldCenter := (24749344560813097 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1051
  oldLo := (9890000000000001 / 20000000000000000 : ℚ)
  oldHi := (9910000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1177, piece_1178]
}

def cell_10049 : Cell := { cellDefaults with
  domain := ⟨(3493 / 8000 : ℚ), (1747 / 4000 : ℚ)⟩
  r := (66664886329663 / 100000000000000 : ℚ)
  w := (191361221889 / 125000000000 : ℚ)
  center := (6987 / 16000 : ℚ)
  supportValue := (49473357952721747 / 100000000000000000 : ℚ)
  supportSlope := (-13522830164882649 / 5000000000000000 : ℚ)
  oldCenter := (49473357952721747 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1051
  oldLo := (9890000000000001 / 20000000000000000 : ℚ)
  oldHi := (9900000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1177]
}

theorem check_10000 : cell_10000.check = true := by
  decide +kernel

theorem check_10001 : cell_10001.check = true := by
  decide +kernel

theorem check_10002 : cell_10002.check = true := by
  decide +kernel

theorem check_10003 : cell_10003.check = true := by
  decide +kernel

theorem check_10004 : cell_10004.check = true := by
  decide +kernel

theorem check_10005 : cell_10005.check = true := by
  decide +kernel

theorem check_10006 : cell_10006.check = true := by
  decide +kernel

theorem check_10007 : cell_10007.check = true := by
  decide +kernel

theorem check_10008 : cell_10008.check = true := by
  decide +kernel

theorem check_10009 : cell_10009.check = true := by
  decide +kernel

theorem check_10010 : cell_10010.check = true := by
  decide +kernel

theorem check_10011 : cell_10011.check = true := by
  decide +kernel

theorem check_10012 : cell_10012.check = true := by
  decide +kernel

theorem check_10013 : cell_10013.check = true := by
  decide +kernel

theorem check_10014 : cell_10014.check = true := by
  decide +kernel

theorem check_10015 : cell_10015.check = true := by
  decide +kernel

theorem check_10016 : cell_10016.check = true := by
  decide +kernel

theorem check_10017 : cell_10017.check = true := by
  decide +kernel

theorem check_10018 : cell_10018.check = true := by
  decide +kernel

theorem check_10019 : cell_10019.check = true := by
  decide +kernel

theorem check_10020 : cell_10020.check = true := by
  decide +kernel

theorem check_10021 : cell_10021.check = true := by
  decide +kernel

theorem check_10022 : cell_10022.check = true := by
  decide +kernel

theorem check_10023 : cell_10023.check = true := by
  decide +kernel

theorem check_10024 : cell_10024.check = true := by
  decide +kernel

theorem check_10025 : cell_10025.check = true := by
  decide +kernel

theorem check_10026 : cell_10026.check = true := by
  decide +kernel

theorem check_10027 : cell_10027.check = true := by
  decide +kernel

theorem check_10028 : cell_10028.check = true := by
  decide +kernel

theorem check_10029 : cell_10029.check = true := by
  decide +kernel

theorem check_10030 : cell_10030.check = true := by
  decide +kernel

theorem check_10031 : cell_10031.check = true := by
  decide +kernel

theorem check_10032 : cell_10032.check = true := by
  decide +kernel

theorem check_10033 : cell_10033.check = true := by
  decide +kernel

theorem check_10034 : cell_10034.check = true := by
  decide +kernel

theorem check_10035 : cell_10035.check = true := by
  decide +kernel

theorem check_10036 : cell_10036.check = true := by
  decide +kernel

theorem check_10037 : cell_10037.check = true := by
  decide +kernel

theorem check_10038 : cell_10038.check = true := by
  decide +kernel

theorem check_10039 : cell_10039.check = true := by
  decide +kernel

theorem check_10040 : cell_10040.check = true := by
  decide +kernel

theorem check_10041 : cell_10041.check = true := by
  decide +kernel

theorem check_10042 : cell_10042.check = true := by
  decide +kernel

theorem check_10043 : cell_10043.check = true := by
  decide +kernel

theorem check_10044 : cell_10044.check = true := by
  decide +kernel

theorem check_10045 : cell_10045.check = true := by
  decide +kernel

theorem check_10046 : cell_10046.check = true := by
  decide +kernel

theorem check_10047 : cell_10047.check = true := by
  decide +kernel

theorem check_10048 : cell_10048.check = true := by
  decide +kernel

theorem check_10049 : cell_10049.check = true := by
  decide +kernel

def cells : List Cell := [cell_10000, cell_10001, cell_10002, cell_10003, cell_10004, cell_10005, cell_10006, cell_10007, cell_10008, cell_10009, cell_10010, cell_10011, cell_10012, cell_10013, cell_10014, cell_10015, cell_10016, cell_10017, cell_10018, cell_10019, cell_10020, cell_10021, cell_10022, cell_10023, cell_10024, cell_10025, cell_10026, cell_10027, cell_10028, cell_10029, cell_10030, cell_10031, cell_10032, cell_10033, cell_10034, cell_10035, cell_10036, cell_10037, cell_10038, cell_10039, cell_10040, cell_10041, cell_10042, cell_10043, cell_10044, cell_10045, cell_10046, cell_10047, cell_10048, cell_10049]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10000, check_10001, check_10002, check_10003, check_10004, check_10005, check_10006, check_10007, check_10008, check_10009, check_10010, check_10011, check_10012, check_10013, check_10014, check_10015, check_10016, check_10017, check_10018, check_10019, check_10020, check_10021, check_10022, check_10023, check_10024, check_10025, check_10026, check_10027, check_10028, check_10029, check_10030, check_10031, check_10032, check_10033, check_10034, check_10035, check_10036, check_10037, check_10038, check_10039, check_10040, check_10041, check_10042, check_10043, check_10044, check_10045, check_10046, check_10047, check_10048, check_10049, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0200

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0200
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0200
open AnalyticBounds.ExpressionCertificate

theorem linked_10000 : Linked cell_10000 pieces := by
  link_source cell_10000 with piece_1042 using piece_1042_mem, piece_1189_mem

theorem linked_10001 : Linked cell_10001 pieces := by
  link_source cell_10001 with piece_1042 using piece_1042_mem, ⟨piece_1188_mem, piece_1189_mem⟩

theorem linked_10002 : Linked cell_10002 pieces := by
  link_source cell_10002 with piece_1042 using piece_1042_mem, ⟨piece_1187_mem, piece_1188_mem⟩

theorem linked_10003 : Linked cell_10003 pieces := by
  link_source cell_10003 with piece_1042 using piece_1042_mem, piece_1187_mem

theorem linked_10004 : Linked cell_10004 pieces := by
  link_source cell_10004 with piece_1042 using piece_1042_mem, piece_1187_mem

theorem linked_10005 : Linked cell_10005 pieces := by
  link_source cell_10005 with piece_1043 using piece_1043_mem, piece_1188_mem

theorem linked_10006 : Linked cell_10006 pieces := by
  link_source cell_10006 with piece_1043 using piece_1043_mem, ⟨piece_1187_mem, piece_1188_mem⟩

theorem linked_10007 : Linked cell_10007 pieces := by
  link_source cell_10007 with piece_1043 using piece_1043_mem, piece_1187_mem

theorem linked_10008 : Linked cell_10008 pieces := by
  link_source cell_10008 with piece_1043 using piece_1043_mem, ⟨piece_1186_mem, piece_1187_mem⟩

theorem linked_10009 : Linked cell_10009 pieces := by
  link_source cell_10009 with piece_1043 using piece_1043_mem, piece_1186_mem

theorem linked_10010 : Linked cell_10010 pieces := by
  link_source cell_10010 with piece_1043 using piece_1043_mem, ⟨piece_1185_mem, piece_1186_mem⟩

theorem linked_10011 : Linked cell_10011 pieces := by
  link_source cell_10011 with piece_1044 using piece_1044_mem, ⟨piece_1186_mem, piece_1187_mem⟩

theorem linked_10012 : Linked cell_10012 pieces := by
  link_source cell_10012 with piece_1044 using piece_1044_mem, piece_1186_mem

theorem linked_10013 : Linked cell_10013 pieces := by
  link_source cell_10013 with piece_1044 using piece_1044_mem, ⟨piece_1185_mem, piece_1186_mem⟩

theorem linked_10014 : Linked cell_10014 pieces := by
  link_source cell_10014 with piece_1044 using piece_1044_mem, piece_1185_mem

theorem linked_10015 : Linked cell_10015 pieces := by
  link_source cell_10015 with piece_1044 using piece_1044_mem, ⟨piece_1184_mem, piece_1185_mem⟩

theorem linked_10016 : Linked cell_10016 pieces := by
  link_source cell_10016 with piece_1044 using piece_1044_mem, piece_1184_mem

theorem linked_10017 : Linked cell_10017 pieces := by
  link_source cell_10017 with piece_1045 using piece_1045_mem, ⟨piece_1185_mem, piece_1186_mem⟩

theorem linked_10018 : Linked cell_10018 pieces := by
  link_source cell_10018 with piece_1045 using piece_1045_mem, piece_1185_mem

theorem linked_10019 : Linked cell_10019 pieces := by
  link_source cell_10019 with piece_1045 using piece_1045_mem, ⟨piece_1184_mem, piece_1185_mem⟩

theorem linked_10020 : Linked cell_10020 pieces := by
  link_source cell_10020 with piece_1045 using piece_1045_mem, ⟨piece_1183_mem, piece_1184_mem⟩

theorem linked_10021 : Linked cell_10021 pieces := by
  link_source cell_10021 with piece_1045 using piece_1045_mem, piece_1183_mem

theorem linked_10022 : Linked cell_10022 pieces := by
  link_source cell_10022 with piece_1045 using piece_1045_mem, piece_1183_mem

theorem linked_10023 : Linked cell_10023 pieces := by
  link_source cell_10023 with piece_1046 using piece_1046_mem, piece_1184_mem

theorem linked_10024 : Linked cell_10024 pieces := by
  link_source cell_10024 with piece_1046 using piece_1046_mem, piece_1184_mem

theorem linked_10025 : Linked cell_10025 pieces := by
  link_source cell_10025 with piece_1046 using piece_1046_mem, ⟨piece_1183_mem, piece_1184_mem⟩

theorem linked_10026 : Linked cell_10026 pieces := by
  link_source cell_10026 with piece_1046 using piece_1046_mem, ⟨piece_1182_mem, piece_1183_mem⟩

theorem linked_10027 : Linked cell_10027 pieces := by
  link_source cell_10027 with piece_1046 using piece_1046_mem, ⟨piece_1181_mem, piece_1182_mem⟩

theorem linked_10028 : Linked cell_10028 pieces := by
  link_source cell_10028 with piece_1046 using piece_1046_mem, ⟨piece_1180_mem, piece_1181_mem⟩

theorem linked_10029 : Linked cell_10029 pieces := by
  link_source cell_10029 with piece_1047 using piece_1047_mem, piece_1183_mem

theorem linked_10030 : Linked cell_10030 pieces := by
  link_source cell_10030 with piece_1047 using piece_1047_mem, ⟨piece_1182_mem, piece_1183_mem⟩

theorem linked_10031 : Linked cell_10031 pieces := by
  link_source cell_10031 with piece_1047 using piece_1047_mem, ⟨piece_1181_mem, piece_1182_mem⟩

theorem linked_10032 : Linked cell_10032 pieces := by
  link_source cell_10032 with piece_1047 using piece_1047_mem, ⟨piece_1180_mem, piece_1181_mem⟩

theorem linked_10033 : Linked cell_10033 pieces := by
  link_source cell_10033 with piece_1047 using piece_1047_mem, piece_1180_mem

theorem linked_10034 : Linked cell_10034 pieces := by
  link_source cell_10034 with piece_1047 using piece_1047_mem, ⟨piece_1179_mem, piece_1180_mem⟩

theorem linked_10035 : Linked cell_10035 pieces := by
  link_source cell_10035 with piece_1048 using piece_1048_mem, ⟨piece_1180_mem, piece_1181_mem⟩

theorem linked_10036 : Linked cell_10036 pieces := by
  link_source cell_10036 with piece_1048 using piece_1048_mem, piece_1180_mem

theorem linked_10037 : Linked cell_10037 pieces := by
  link_source cell_10037 with piece_1048 using piece_1048_mem, ⟨piece_1179_mem, piece_1180_mem⟩

theorem linked_10038 : Linked cell_10038 pieces := by
  link_source cell_10038 with piece_1048 using piece_1048_mem, piece_1179_mem

theorem linked_10039 : Linked cell_10039 pieces := by
  link_source cell_10039 with piece_1049 using piece_1049_mem, ⟨piece_1178_mem, piece_1179_mem⟩

theorem linked_10040 : Linked cell_10040 pieces := by
  link_source cell_10040 with piece_1049 using piece_1049_mem, piece_1178_mem

theorem linked_10041 : Linked cell_10041 pieces := by
  link_source cell_10041 with piece_1050 using piece_1050_mem, piece_1179_mem

theorem linked_10042 : Linked cell_10042 pieces := by
  link_source cell_10042 with piece_1050 using piece_1050_mem, piece_1179_mem

theorem linked_10043 : Linked cell_10043 pieces := by
  link_source cell_10043 with piece_1050 using piece_1050_mem, ⟨piece_1178_mem, piece_1179_mem⟩

theorem linked_10044 : Linked cell_10044 pieces := by
  link_source cell_10044 with piece_1050 using piece_1050_mem, ⟨piece_1177_mem, piece_1178_mem⟩

theorem linked_10045 : Linked cell_10045 pieces := by
  link_source cell_10045 with piece_1050 using piece_1050_mem, piece_1177_mem

theorem linked_10046 : Linked cell_10046 pieces := by
  link_source cell_10046 with piece_1050 using piece_1050_mem, piece_1177_mem

theorem linked_10047 : Linked cell_10047 pieces := by
  link_source cell_10047 with piece_1051 using piece_1051_mem, piece_1178_mem

theorem linked_10048 : Linked cell_10048 pieces := by
  link_source cell_10048 with piece_1051 using piece_1051_mem, ⟨piece_1177_mem, piece_1178_mem⟩

theorem linked_10049 : Linked cell_10049 pieces := by
  link_source cell_10049 with piece_1051 using piece_1051_mem, piece_1177_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0200.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0200.cells,List.forall_mem_cons]
  exact ⟨linked_10000, linked_10001, linked_10002, linked_10003, linked_10004, linked_10005, linked_10006, linked_10007, linked_10008, linked_10009, linked_10010, linked_10011, linked_10012, linked_10013, linked_10014, linked_10015, linked_10016, linked_10017, linked_10018, linked_10019, linked_10020, linked_10021, linked_10022, linked_10023, linked_10024, linked_10025, linked_10026, linked_10027, linked_10028, linked_10029, linked_10030, linked_10031, linked_10032, linked_10033, linked_10034, linked_10035, linked_10036, linked_10037, linked_10038, linked_10039, linked_10040, linked_10041, linked_10042, linked_10043, linked_10044, linked_10045, linked_10046, linked_10047, linked_10048, linked_10049, by simp⟩

theorem covered : covers (8651250000000001 / 20000000000000000 : ℚ) (1747 / 4000 : ℚ)
    (SourceCertificates.Chunk0200.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0200
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0201
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(1747 / 4000 : ℚ), (699 / 1600 : ℚ)⟩
  branch := .left
  r := (66623798137599 / 100000000000000 : ℚ)
  w := (15303184910601 / 10000000000000 : ℚ)
  center := (6989 / 16000 : ℚ)
  supportValue := (395516535735231 / 800000000000000 : ℚ)
  supportSlope := (-2702108943698711 / 1000000000000000 : ℚ)
  oldCenter := (395516535735231 / 800000000000000 : ℚ)
  newCoefficients := coefficients_1052
  oldLo := (9870000000000001 / 20000000000000000 : ℚ)
  oldHi := (9880000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1175]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10050 : Cell := { cellDefaults with
  r := (66664886329663 / 100000000000000 : ℚ)
  w := (191361221889 / 125000000000 : ℚ)
  newCoefficients := coefficients_1051
  oldLo := (9880000000000001 / 20000000000000000 : ℚ)
  oldHi := (9900000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1176, piece_1177]
}

def cell_10051 : Cell := { cellDefaults with
  domain := ⟨(699 / 1600 : ℚ), (6991 / 16000 : ℚ)⟩
  r := (66664886329663 / 100000000000000 : ℚ)
  w := (191361221889 / 125000000000 : ℚ)
  center := (13981 / 32000 : ℚ)
  supportValue := (9882841881961657 / 20000000000000000 : ℚ)
  supportSlope := (-6749992447918629 / 2500000000000000 : ℚ)
  oldCenter := (9882841881961657 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1051
  oldLo := (9880000000000001 / 20000000000000000 : ℚ)
  oldHi := (9890000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1176]
}

def cell_10052 : Cell := { cellDefaults with
  domain := ⟨(6991 / 16000 : ℚ), (437 / 1000 : ℚ)⟩
  r := (66664886329663 / 100000000000000 : ℚ)
  w := (191361221889 / 125000000000 : ℚ)
  center := (13983 / 32000 : ℚ)
  supportValue := (49397338430778387 / 100000000000000000 : ℚ)
  supportSlope := (-674733922752413 / 250000000000000 : ℚ)
  oldCenter := (49397338430778387 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1051
  oldHi := (9890000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1175, piece_1176]
}

def cell_10053 : Cell := { cellDefaults with
  domain := ⟨(437 / 1000 : ℚ), (6993 / 16000 : ℚ)⟩
  center := (2797 / 6400 : ℚ)
  supportValue := (2472534946904667 / 5000000000000000 : ℚ)
  supportSlope := (-13505791418255697 / 5000000000000000 : ℚ)
  oldCenter := (2472534946904667 / 5000000000000000 : ℚ)
  oldLo := (9880000000000001 / 20000000000000000 : ℚ)
  oldHi := (9900000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1176, piece_1177]
}

def cell_10054 : Cell := { cellDefaults with
  domain := ⟨(6993 / 16000 : ℚ), (3497 / 8000 : ℚ)⟩
  center := (13987 / 32000 : ℚ)
  supportValue := (6179227415873767 / 12500000000000000 : ℚ)
  supportSlope := (-13500094568748011 / 5000000000000000 : ℚ)
  oldCenter := (6179227415873767 / 12500000000000000 : ℚ)
  oldLo := (9880000000000001 / 20000000000000000 : ℚ)
  oldHi := (9890000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1176]
}

def cell_10055 : Cell := { cellDefaults with
  domain := ⟨(3497 / 8000 : ℚ), (1749 / 4000 : ℚ)⟩
  center := (1399 / 3200 : ℚ)
  supportValue := (2470427584252899 / 5000000000000000 : ℚ)
  supportSlope := (-13489747157464649 / 5000000000000000 : ℚ)
  oldCenter := (2470427584252899 / 5000000000000000 : ℚ)
  oldHi := (9890000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1175, piece_1176]
}

def cell_10056 : Cell := { cellDefaults with
  domain := ⟨(1749 / 4000 : ℚ), (3499 / 8000 : ℚ)⟩
  center := (6997 / 16000 : ℚ)
  supportValue := (4937484181388901 / 10000000000000000 : ℚ)
  supportSlope := (-26954641356935483 / 10000000000000000 : ℚ)
  oldCenter := (4937484181388901 / 10000000000000000 : ℚ)
  oldPieces := [piece_1175]
}

def cell_10057 : Cell := { cellDefaults with
  domain := ⟨(3499 / 8000 : ℚ), (6999 / 16000 : ℚ)⟩
  center := (13997 / 32000 : ℚ)
  supportValue := (24674773798457317 / 50000000000000000 : ℚ)
  supportSlope := (-13467900686947587 / 5000000000000000 : ℚ)
  oldCenter := (24674773798457317 / 50000000000000000 : ℚ)
  oldLo := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1174, piece_1175]
}

def cell_10058 : Cell := { cellDefaults with
  domain := ⟨(6999 / 16000 : ℚ), (7 / 16 : ℚ)⟩
  center := (13999 / 32000 : ℚ)
  supportValue := (2466635771951031 / 5000000000000000 : ℚ)
  supportSlope := (-1346200870332659 / 500000000000000 : ℚ)
  oldCenter := (2466635771951031 / 5000000000000000 : ℚ)
  oldLo := (9860000000000001 / 20000000000000000 : ℚ)
  oldHi := (9870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1174]
}

def cell_10059 : Cell := { cellDefaults with
  domain := ⟨(7 / 16 : ℚ), (7001 / 16000 : ℚ)⟩
  r := (1664569137747 / 2500000000000 : ℚ)
  w := (15297483471273 / 10000000000000 : ℚ)
  center := (14001 / 32000 : ℚ)
  supportValue := (6173244126139267 / 12500000000000000 : ℚ)
  supportSlope := (-26947426049304113 / 10000000000000000 : ℚ)
  oldCenter := (6173244126139267 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1053
  oldPieces := [piece_1175]
}

def cell_10060 : Cell := { cellDefaults with
  domain := ⟨(7001 / 16000 : ℚ), (3501 / 8000 : ℚ)⟩
  r := (1664569137747 / 2500000000000 : ℚ)
  w := (15297483471273 / 10000000000000 : ℚ)
  center := (14003 / 32000 : ℚ)
  supportValue := (24684557750063163 / 50000000000000000 : ℚ)
  supportSlope := (-673314773446787 / 250000000000000 : ℚ)
  oldCenter := (24684557750063163 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1053
  oldPieces := [piece_1175]
}

def cell_10061 : Cell := { cellDefaults with
  domain := ⟨(3501 / 8000 : ℚ), (1751 / 4000 : ℚ)⟩
  r := (1664569137747 / 2500000000000 : ℚ)
  w := (15297483471273 / 10000000000000 : ℚ)
  center := (7003 / 16000 : ℚ)
  supportValue := (12335977417042339 / 25000000000000000 : ℚ)
  supportSlope := (-13457395004872197 / 5000000000000000 : ℚ)
  oldCenter := (12335977417042339 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1053
  oldLo := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1174, piece_1175]
}

def cell_10062 : Cell := { cellDefaults with
  domain := ⟨(1751 / 4000 : ℚ), (3503 / 8000 : ℚ)⟩
  r := (1664569137747 / 2500000000000 : ℚ)
  w := (15297483471273 / 10000000000000 : ℚ)
  center := (1401 / 3200 : ℚ)
  supportValue := (394482256798497 / 800000000000000 : ℚ)
  supportSlope := (-1344424448322279 / 500000000000000 : ℚ)
  oldCenter := (394482256798497 / 800000000000000 : ℚ)
  newCoefficients := coefficients_1053
  oldLo := (9850000000000001 / 20000000000000000 : ℚ)
  oldHi := (9870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1173, piece_1174]
}

def cell_10063 : Cell := { cellDefaults with
  domain := ⟨(3503 / 8000 : ℚ), (7007 / 16000 : ℚ)⟩
  r := (1664569137747 / 2500000000000 : ℚ)
  w := (15297483471273 / 10000000000000 : ℚ)
  center := (14013 / 32000 : ℚ)
  supportValue := (24642523796839397 / 50000000000000000 : ℚ)
  supportSlope := (-1343575843650413 / 500000000000000 : ℚ)
  oldCenter := (24642523796839397 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1053
  oldLo := (9850000000000001 / 20000000000000000 : ℚ)
  oldHi := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1173]
}

def cell_10064 : Cell := { cellDefaults with
  domain := ⟨(7007 / 16000 : ℚ), (219 / 500 : ℚ)⟩
  r := (1664569137747 / 2500000000000 : ℚ)
  w := (15297483471273 / 10000000000000 : ℚ)
  center := (2803 / 6400 : ℚ)
  supportValue := (6158532189714383 / 12500000000000000 : ℚ)
  supportSlope := (-2685671448793059 / 1000000000000000 : ℚ)
  oldCenter := (6158532189714383 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1053
  oldLo := (9850000000000001 / 20000000000000000 : ℚ)
  oldHi := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1173]
}

def cell_10065 : Cell := { cellDefaults with
  domain := ⟨(219 / 500 : ℚ), (7009 / 16000 : ℚ)⟩
  r := (3327089431517 / 5000000000000 : ℚ)
  w := (3058358901491 / 2000000000000 : ℚ)
  center := (14017 / 32000 : ℚ)
  supportValue := (1541292760507537 / 3125000000000000 : ℚ)
  supportSlope := (-26880021882451643 / 10000000000000000 : ℚ)
  oldCenter := (1541292760507537 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1054
  oldLo := (9860000000000001 / 20000000000000000 : ℚ)
  oldHi := (9870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1174]
}

def cell_10066 : Cell := { cellDefaults with
  domain := ⟨(7009 / 16000 : ℚ), (701 / 1600 : ℚ)⟩
  r := (3327089431517 / 5000000000000 : ℚ)
  w := (3058358901491 / 2000000000000 : ℚ)
  center := (14019 / 32000 : ℚ)
  supportValue := (4930457293846153 / 10000000000000000 : ℚ)
  supportSlope := (-4298676319479 / 1600000000000 : ℚ)
  oldCenter := (4930457293846153 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1054
  oldLo := (9850000000000001 / 20000000000000000 : ℚ)
  oldHi := (9870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1173, piece_1174]
}

def cell_10067 : Cell := { cellDefaults with
  domain := ⟨(701 / 1600 : ℚ), (1753 / 4000 : ℚ)⟩
  r := (3327089431517 / 5000000000000 : ℚ)
  w := (3058358901491 / 2000000000000 : ℚ)
  center := (7011 / 16000 : ℚ)
  supportValue := (197117706645627 / 400000000000000 : ℚ)
  supportSlope := (-671239311185623 / 250000000000000 : ℚ)
  oldCenter := (197117706645627 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1054
  oldLo := (9850000000000001 / 20000000000000000 : ℚ)
  oldHi := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1173]
}

def cell_10068 : Cell := { cellDefaults with
  domain := ⟨(1753 / 4000 : ℚ), (3507 / 8000 : ℚ)⟩
  r := (3327089431517 / 5000000000000 : ℚ)
  w := (3058358901491 / 2000000000000 : ℚ)
  center := (7013 / 16000 : ℚ)
  supportValue := (4924588211461639 / 10000000000000000 : ℚ)
  supportSlope := (-2682410813991787 / 1000000000000000 : ℚ)
  oldCenter := (4924588211461639 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1054
  oldLo := (9840000000000001 / 20000000000000000 : ℚ)
  oldHi := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1172, piece_1173]
}

def cell_10069 : Cell := { cellDefaults with
  domain := ⟨(3507 / 8000 : ℚ), (1403 / 3200 : ℚ)⟩
  r := (3327089431517 / 5000000000000 : ℚ)
  w := (3058358901491 / 2000000000000 : ℚ)
  center := (14029 / 32000 : ℚ)
  supportValue := (24610354059369613 / 50000000000000000 : ℚ)
  supportSlope := (-335055117645533 / 125000000000000 : ℚ)
  oldCenter := (24610354059369613 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1054
  oldLo := (9840000000000001 / 20000000000000000 : ℚ)
  oldHi := (9850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1172]
}

def cell_10070 : Cell := { cellDefaults with
  domain := ⟨(1403 / 3200 : ℚ), (877 / 2000 : ℚ)⟩
  r := (3327089431517 / 5000000000000 : ℚ)
  w := (3058358901491 / 2000000000000 : ℚ)
  center := (14031 / 32000 : ℚ)
  supportValue := (3075247498027249 / 6250000000000000 : ℚ)
  supportSlope := (-167446201664867 / 62500000000000 : ℚ)
  oldCenter := (3075247498027249 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1054
  oldLo := (9830000000000001 / 20000000000000000 : ℚ)
  oldHi := (9850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1171, piece_1172]
}

def cell_10071 : Cell := { cellDefaults with
  domain := ⟨(877 / 2000 : ℚ), (7017 / 16000 : ℚ)⟩
  r := (831260839703 / 1250000000000 : ℚ)
  w := (3057223462803 / 2000000000000 : ℚ)
  center := (14033 / 32000 : ℚ)
  supportValue := (123142367421023 / 250000000000000 : ℚ)
  supportSlope := (-335167906827083 / 125000000000000 : ℚ)
  oldCenter := (123142367421023 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1055
  oldLo := (9840000000000001 / 20000000000000000 : ℚ)
  oldHi := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1172, piece_1173]
}

def cell_10072 : Cell := { cellDefaults with
  domain := ⟨(7017 / 16000 : ℚ), (3509 / 8000 : ℚ)⟩
  r := (831260839703 / 1250000000000 : ℚ)
  w := (3057223462803 / 2000000000000 : ℚ)
  center := (2807 / 6400 : ℚ)
  supportValue := (49240191134576133 / 100000000000000000 : ℚ)
  supportSlope := (-13402325607776433 / 5000000000000000 : ℚ)
  oldCenter := (49240191134576133 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1055
  oldLo := (9840000000000001 / 20000000000000000 : ℚ)
  oldHi := (9850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1172]
}

def cell_10073 : Cell := { cellDefaults with
  domain := ⟨(3509 / 8000 : ℚ), (351 / 800 : ℚ)⟩
  r := (831260839703 / 1250000000000 : ℚ)
  w := (3057223462803 / 2000000000000 : ℚ)
  center := (7019 / 16000 : ℚ)
  supportValue := (1230377664662273 / 2500000000000000 : ℚ)
  supportSlope := (-2678286840340327 / 1000000000000000 : ℚ)
  oldCenter := (1230377664662273 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1055
  oldLo := (9830000000000001 / 20000000000000000 : ℚ)
  oldHi := (9850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1171, piece_1172]
}

def cell_10074 : Cell := { cellDefaults with
  domain := ⟨(351 / 800 : ℚ), (3511 / 8000 : ℚ)⟩
  r := (831260839703 / 1250000000000 : ℚ)
  w := (3057223462803 / 2000000000000 : ℚ)
  center := (7021 / 16000 : ℚ)
  supportValue := (49181642285853483 / 100000000000000000 : ℚ)
  supportSlope := (-5351925867172369 / 2000000000000000 : ℚ)
  oldCenter := (49181642285853483 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1055
  oldLo := (9830000000000001 / 20000000000000000 : ℚ)
  oldHi := (9840000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1171]
}

def cell_10075 : Cell := { cellDefaults with
  domain := ⟨(3511 / 8000 : ℚ), (7023 / 16000 : ℚ)⟩
  r := (831260839703 / 1250000000000 : ℚ)
  w := (3057223462803 / 2000000000000 : ℚ)
  center := (2809 / 6400 : ℚ)
  supportValue := (49156531053581587 / 100000000000000000 : ℚ)
  supportSlope := (-13369136280463323 / 5000000000000000 : ℚ)
  oldCenter := (49156531053581587 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1055
  oldLo := (49117318435754187 / 100000000000000000 : ℚ)
  oldHi := (9840000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1170, piece_1171]
}

def cell_10076 : Cell := { cellDefaults with
  domain := ⟨(7023 / 16000 : ℚ), (439 / 1000 : ℚ)⟩
  r := (831260839703 / 1250000000000 : ℚ)
  w := (3057223462803 / 2000000000000 : ℚ)
  center := (14047 / 32000 : ℚ)
  supportValue := (4913982217114093 / 10000000000000000 : ℚ)
  supportSlope := (-208823490561727 / 78125000000000 : ℚ)
  oldCenter := (4913982217114093 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1055
  oldLo := (49117318435754187 / 100000000000000000 : ℚ)
  oldHi := (9830000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1170]
}

def cell_10077 : Cell := { cellDefaults with
  domain := ⟨(439 / 1000 : ℚ), (281 / 640 : ℚ)⟩
  r := (8307500119979 / 12500000000000 : ℚ)
  w := (7640225939211 / 5000000000000 : ℚ)
  center := (14049 / 32000 : ℚ)
  supportValue := (9838537300981971 / 20000000000000000 : ℚ)
  supportSlope := (-13376046922575213 / 5000000000000000 : ℚ)
  oldCenter := (9838537300981971 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1056
  oldLo := (9830000000000001 / 20000000000000000 : ℚ)
  oldHi := (9850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1171, piece_1172]
}

def cell_10078 : Cell := { cellDefaults with
  domain := ⟨(281 / 640 : ℚ), (3513 / 8000 : ℚ)⟩
  r := (8307500119979 / 12500000000000 : ℚ)
  w := (7640225939211 / 5000000000000 : ℚ)
  center := (14051 / 32000 : ℚ)
  supportValue := (983519415742493 / 2000000000000000 : ℚ)
  supportSlope := (-534755734984671 / 200000000000000 : ℚ)
  oldCenter := (983519415742493 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1056
  oldLo := (9830000000000001 / 20000000000000000 : ℚ)
  oldHi := (9840000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1171]
}

def cell_10079 : Cell := { cellDefaults with
  domain := ⟨(3513 / 8000 : ℚ), (1757 / 4000 : ℚ)⟩
  r := (8307500119979 / 12500000000000 : ℚ)
  w := (7640225939211 / 5000000000000 : ℚ)
  center := (7027 / 16000 : ℚ)
  supportValue := (24575474421367463 / 50000000000000000 : ℚ)
  supportSlope := (-26718855204990177 / 10000000000000000 : ℚ)
  oldCenter := (24575474421367463 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1056
  oldLo := (49117318435754187 / 100000000000000000 : ℚ)
  oldHi := (9840000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1170, piece_1171]
}

def cell_10080 : Cell := { cellDefaults with
  domain := ⟨(1757 / 4000 : ℚ), (703 / 1600 : ℚ)⟩
  r := (8307500119979 / 12500000000000 : ℚ)
  w := (7640225939211 / 5000000000000 : ℚ)
  center := (7029 / 16000 : ℚ)
  supportValue := (306984778131917 / 625000000000000 : ℚ)
  supportSlope := (-2669293632490799 / 1000000000000000 : ℚ)
  oldCenter := (306984778131917 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1056
  oldLo := (9820000000000001 / 20000000000000000 : ℚ)
  oldHi := (9830000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1169, piece_1170]
}

def cell_10081 : Cell := { cellDefaults with
  domain := ⟨(703 / 1600 : ℚ), (7031 / 16000 : ℚ)⟩
  r := (8307500119979 / 12500000000000 : ℚ)
  w := (7640225939211 / 5000000000000 : ℚ)
  center := (14061 / 32000 : ℚ)
  supportValue := (24546256974432973 / 50000000000000000 : ℚ)
  supportSlope := (-26677183640586577 / 10000000000000000 : ℚ)
  oldCenter := (24546256974432973 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1056
  oldLo := (9810000000000001 / 20000000000000000 : ℚ)
  oldHi := (49117318435754187 / 100000000000000000 : ℚ)
  oldPieces := [piece_1168, piece_1169]
}

def cell_10082 : Cell := { cellDefaults with
  domain := ⟨(7031 / 16000 : ℚ), (879 / 2000 : ℚ)⟩
  r := (8307500119979 / 12500000000000 : ℚ)
  w := (7640225939211 / 5000000000000 : ℚ)
  center := (14063 / 32000 : ℚ)
  supportValue := (9815169017320613 / 20000000000000000 : ℚ)
  supportSlope := (-26662832864641217 / 10000000000000000 : ℚ)
  oldCenter := (9815169017320613 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1056
  oldLo := (9810000000000001 / 20000000000000000 : ℚ)
  oldHi := (9820000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1168]
}

def cell_10083 : Cell := { cellDefaults with
  domain := ⟨(879 / 2000 : ℚ), (3517 / 8000 : ℚ)⟩
  r := (6641919061861 / 10000000000000 : ℚ)
  w := (3818699554239 / 2500000000000 : ℚ)
  center := (7033 / 16000 : ℚ)
  supportValue := (4912028156127601 / 10000000000000000 : ℚ)
  supportSlope := (-2667849745357387 / 1000000000000000 : ℚ)
  oldCenter := (4912028156127601 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1057
  oldLo := (9820000000000001 / 20000000000000000 : ℚ)
  oldHi := (9830000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1169, piece_1170]
}

def cell_10084 : Cell := { cellDefaults with
  domain := ⟨(3517 / 8000 : ℚ), (1759 / 4000 : ℚ)⟩
  r := (6641919061861 / 10000000000000 : ℚ)
  w := (3818699554239 / 2500000000000 : ℚ)
  center := (1407 / 3200 : ℚ)
  supportValue := (9817389697364609 / 20000000000000000 : ℚ)
  supportSlope := (-13327535801836987 / 5000000000000000 : ℚ)
  oldCenter := (9817389697364609 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1057
  oldLo := (9810000000000001 / 20000000000000000 : ℚ)
  oldHi := (49117318435754187 / 100000000000000000 : ℚ)
  oldPieces := [piece_1168, piece_1169]
}

def cell_10085 : Cell := { cellDefaults with
  domain := ⟨(1759 / 4000 : ℚ), (3519 / 8000 : ℚ)⟩
  r := (6641919061861 / 10000000000000 : ℚ)
  w := (3818699554239 / 2500000000000 : ℚ)
  center := (7037 / 16000 : ℚ)
  supportValue := (196214588196823 / 400000000000000 : ℚ)
  supportSlope := (-2662907410321047 / 1000000000000000 : ℚ)
  oldCenter := (196214588196823 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1057
  oldLo := (9800000000000001 / 20000000000000000 : ℚ)
  oldHi := (9820000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1167, piece_1168]
}

def cell_10086 : Cell := { cellDefaults with
  domain := ⟨(3519 / 8000 : ℚ), (7039 / 16000 : ℚ)⟩
  r := (6641919061861 / 10000000000000 : ℚ)
  w := (3818699554239 / 2500000000000 : ℚ)
  center := (14077 / 32000 : ℚ)
  supportValue := (49028655365222373 / 100000000000000000 : ℚ)
  supportSlope := (-332639138765467 / 125000000000000 : ℚ)
  oldCenter := (49028655365222373 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1057
  oldLo := (9800000000000001 / 20000000000000000 : ℚ)
  oldHi := (9810000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1167]
}

def cell_10087 : Cell := { cellDefaults with
  domain := ⟨(7039 / 16000 : ℚ), (11 / 25 : ℚ)⟩
  r := (6641919061861 / 10000000000000 : ℚ)
  w := (3818699554239 / 2500000000000 : ℚ)
  center := (14079 / 32000 : ℚ)
  supportValue := (4901202797638183 / 10000000000000000 : ℚ)
  supportSlope := (-13298250800097833 / 5000000000000000 : ℚ)
  oldCenter := (4901202797638183 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1057
  oldLo := (9800000000000001 / 20000000000000000 : ℚ)
  oldHi := (9810000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1167]
}

def cell_10088 : Cell := { cellDefaults with
  domain := ⟨(11 / 25 : ℚ), (7041 / 16000 : ℚ)⟩
  r := (66378435523841 / 100000000000000 : ℚ)
  w := (15269155896101 / 10000000000000 : ℚ)
  center := (14081 / 32000 : ℚ)
  supportValue := (2453232328211583 / 5000000000000000 : ℚ)
  supportSlope := (-2661940119095263 / 1000000000000000 : ℚ)
  oldCenter := (2453232328211583 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1058
  oldLo := (9810000000000001 / 20000000000000000 : ℚ)
  oldHi := (9820000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1168]
}

def cell_10089 : Cell := { cellDefaults with
  domain := ⟨(7041 / 16000 : ℚ), (3521 / 8000 : ℚ)⟩
  r := (66378435523841 / 100000000000000 : ℚ)
  w := (15269155896101 / 10000000000000 : ℚ)
  center := (14083 / 32000 : ℚ)
  supportValue := (490480135026989 / 1000000000000000 : ℚ)
  supportSlope := (-26608887332102427 / 10000000000000000 : ℚ)
  oldCenter := (490480135026989 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1058
  oldLo := (9800000000000001 / 20000000000000000 : ℚ)
  oldHi := (9820000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1167, piece_1168]
}

def cell_10090 : Cell := { cellDefaults with
  domain := ⟨(3521 / 8000 : ℚ), (1761 / 4000 : ℚ)⟩
  r := (66378435523841 / 100000000000000 : ℚ)
  w := (15269155896101 / 10000000000000 : ℚ)
  center := (7043 / 16000 : ℚ)
  supportValue := (24511554954688053 / 50000000000000000 : ℚ)
  supportSlope := (-13294733928002067 / 5000000000000000 : ℚ)
  oldCenter := (24511554954688053 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1058
  oldLo := (9800000000000001 / 20000000000000000 : ℚ)
  oldHi := (9810000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1167]
}

def cell_10091 : Cell := { cellDefaults with
  domain := ⟨(1761 / 4000 : ℚ), (3523 / 8000 : ℚ)⟩
  r := (66378435523841 / 100000000000000 : ℚ)
  w := (15269155896101 / 10000000000000 : ℚ)
  center := (1409 / 3200 : ℚ)
  supportValue := (9797977752108783 / 20000000000000000 : ℚ)
  supportSlope := (-26565604831292333 / 10000000000000000 : ℚ)
  oldCenter := (9797977752108783 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1058
  oldLo := (9790000000000001 / 20000000000000000 : ℚ)
  oldHi := (9810000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1166, piece_1167]
}

def cell_10092 : Cell := { cellDefaults with
  domain := ⟨(3523 / 8000 : ℚ), (7047 / 16000 : ℚ)⟩
  r := (66378435523841 / 100000000000000 : ℚ)
  w := (15269155896101 / 10000000000000 : ℚ)
  center := (14093 / 32000 : ℚ)
  supportValue := (9792991653607317 / 20000000000000000 : ℚ)
  supportSlope := (-106179972148297 / 40000000000000 : ℚ)
  oldCenter := (9792991653607317 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1058
  oldLo := (9790000000000001 / 20000000000000000 : ℚ)
  oldHi := (9800000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1166]
}

def cell_10093 : Cell := { cellDefaults with
  domain := ⟨(7047 / 16000 : ℚ), (881 / 2000 : ℚ)⟩
  r := (66378435523841 / 100000000000000 : ℚ)
  w := (15269155896101 / 10000000000000 : ℚ)
  center := (2819 / 6400 : ℚ)
  supportValue := (9789674357453837 / 20000000000000000 : ℚ)
  supportSlope := (-26534395806478983 / 10000000000000000 : ℚ)
  oldCenter := (9789674357453837 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1058
  oldLo := (9780000000000001 / 20000000000000000 : ℚ)
  oldHi := (9800000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1165, piece_1166]
}

def cell_10094 : Cell := { cellDefaults with
  domain := ⟨(881 / 2000 : ℚ), (7049 / 16000 : ℚ)⟩
  r := (3316886770909 / 5000000000000 : ℚ)
  w := (152635261203 / 100000000000 : ℚ)
  center := (14097 / 32000 : ℚ)
  supportValue := (980017311957887 / 2000000000000000 : ℚ)
  supportSlope := (-26556187844253287 / 10000000000000000 : ℚ)
  oldCenter := (980017311957887 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1059
  oldLo := (9790000000000001 / 20000000000000000 : ℚ)
  oldHi := (9810000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1166, piece_1167]
}

def cell_10095 : Cell := { cellDefaults with
  domain := ⟨(7049 / 16000 : ℚ), (141 / 320 : ℚ)⟩
  r := (3316886770909 / 5000000000000 : ℚ)
  w := (152635261203 / 100000000000 : ℚ)
  center := (14099 / 32000 : ℚ)
  supportValue := (391874163695093 / 800000000000000 : ℚ)
  supportSlope := (-13272627795641867 / 5000000000000000 : ℚ)
  oldCenter := (391874163695093 / 800000000000000 : ℚ)
  newCoefficients := coefficients_1059
  oldLo := (9790000000000001 / 20000000000000000 : ℚ)
  oldHi := (9800000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1166]
}

def cell_10096 : Cell := { cellDefaults with
  domain := ⟨(141 / 320 : ℚ), (1763 / 4000 : ℚ)⟩
  r := (3316886770909 / 5000000000000 : ℚ)
  w := (152635261203 / 100000000000 : ℚ)
  center := (7051 / 16000 : ℚ)
  supportValue := (48959428797528803 / 100000000000000000 : ℚ)
  supportSlope := (-6631210921699271 / 2500000000000000 : ℚ)
  oldCenter := (48959428797528803 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1059
  oldLo := (9780000000000001 / 20000000000000000 : ℚ)
  oldHi := (9800000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1165, piece_1166]
}

def cell_10097 : Cell := { cellDefaults with
  domain := ⟨(1763 / 4000 : ℚ), (3527 / 8000 : ℚ)⟩
  r := (3316886770909 / 5000000000000 : ℚ)
  w := (152635261203 / 100000000000 : ℚ)
  center := (7053 / 16000 : ℚ)
  supportValue := (489262867607363 / 1000000000000000 : ℚ)
  supportSlope := (-2650091927984377 / 1000000000000000 : ℚ)
  oldCenter := (489262867607363 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1059
  oldLo := (9780000000000001 / 20000000000000000 : ℚ)
  oldHi := (9790000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1165]
}

def cell_10098 : Cell := { cellDefaults with
  domain := ⟨(3527 / 8000 : ℚ), (1411 / 3200 : ℚ)⟩
  r := (3316886770909 / 5000000000000 : ℚ)
  w := (152635261203 / 100000000000 : ℚ)
  center := (14109 / 32000 : ℚ)
  supportValue := (12225354531755299 / 25000000000000000 : ℚ)
  supportSlope := (-13240932303659747 / 5000000000000000 : ℚ)
  oldCenter := (12225354531755299 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1059
  oldLo := (9770000000000001 / 20000000000000000 : ℚ)
  oldHi := (9790000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1164, piece_1165]
}

def cell_10099 : Cell := { cellDefaults with
  domain := ⟨(1411 / 3200 : ℚ), (441 / 1000 : ℚ)⟩
  r := (3316886770909 / 5000000000000 : ℚ)
  w := (152635261203 / 100000000000 : ℚ)
  center := (14111 / 32000 : ℚ)
  supportValue := (48884869419523247 / 100000000000000000 : ℚ)
  supportSlope := (-1058848431271997 / 400000000000000 : ℚ)
  oldCenter := (48884869419523247 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1059
  oldLo := (9770000000000001 / 20000000000000000 : ℚ)
  oldHi := (9780000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1164]
}

theorem check_10050 : cell_10050.check = true := by
  decide +kernel

theorem check_10051 : cell_10051.check = true := by
  decide +kernel

theorem check_10052 : cell_10052.check = true := by
  decide +kernel

theorem check_10053 : cell_10053.check = true := by
  decide +kernel

theorem check_10054 : cell_10054.check = true := by
  decide +kernel

theorem check_10055 : cell_10055.check = true := by
  decide +kernel

theorem check_10056 : cell_10056.check = true := by
  decide +kernel

theorem check_10057 : cell_10057.check = true := by
  decide +kernel

theorem check_10058 : cell_10058.check = true := by
  decide +kernel

theorem check_10059 : cell_10059.check = true := by
  decide +kernel

theorem check_10060 : cell_10060.check = true := by
  decide +kernel

theorem check_10061 : cell_10061.check = true := by
  decide +kernel

theorem check_10062 : cell_10062.check = true := by
  decide +kernel

theorem check_10063 : cell_10063.check = true := by
  decide +kernel

theorem check_10064 : cell_10064.check = true := by
  decide +kernel

theorem check_10065 : cell_10065.check = true := by
  decide +kernel

theorem check_10066 : cell_10066.check = true := by
  decide +kernel

theorem check_10067 : cell_10067.check = true := by
  decide +kernel

theorem check_10068 : cell_10068.check = true := by
  decide +kernel

theorem check_10069 : cell_10069.check = true := by
  decide +kernel

theorem check_10070 : cell_10070.check = true := by
  decide +kernel

theorem check_10071 : cell_10071.check = true := by
  decide +kernel

theorem check_10072 : cell_10072.check = true := by
  decide +kernel

theorem check_10073 : cell_10073.check = true := by
  decide +kernel

theorem check_10074 : cell_10074.check = true := by
  decide +kernel

theorem check_10075 : cell_10075.check = true := by
  decide +kernel

theorem check_10076 : cell_10076.check = true := by
  decide +kernel

theorem check_10077 : cell_10077.check = true := by
  decide +kernel

theorem check_10078 : cell_10078.check = true := by
  decide +kernel

theorem check_10079 : cell_10079.check = true := by
  decide +kernel

theorem check_10080 : cell_10080.check = true := by
  decide +kernel

theorem check_10081 : cell_10081.check = true := by
  decide +kernel

theorem check_10082 : cell_10082.check = true := by
  decide +kernel

theorem check_10083 : cell_10083.check = true := by
  decide +kernel

theorem check_10084 : cell_10084.check = true := by
  decide +kernel

theorem check_10085 : cell_10085.check = true := by
  decide +kernel

theorem check_10086 : cell_10086.check = true := by
  decide +kernel

theorem check_10087 : cell_10087.check = true := by
  decide +kernel

theorem check_10088 : cell_10088.check = true := by
  decide +kernel

theorem check_10089 : cell_10089.check = true := by
  decide +kernel

theorem check_10090 : cell_10090.check = true := by
  decide +kernel

theorem check_10091 : cell_10091.check = true := by
  decide +kernel

theorem check_10092 : cell_10092.check = true := by
  decide +kernel

theorem check_10093 : cell_10093.check = true := by
  decide +kernel

theorem check_10094 : cell_10094.check = true := by
  decide +kernel

theorem check_10095 : cell_10095.check = true := by
  decide +kernel

theorem check_10096 : cell_10096.check = true := by
  decide +kernel

theorem check_10097 : cell_10097.check = true := by
  decide +kernel

theorem check_10098 : cell_10098.check = true := by
  decide +kernel

theorem check_10099 : cell_10099.check = true := by
  decide +kernel

def cells : List Cell := [cell_10050, cell_10051, cell_10052, cell_10053, cell_10054, cell_10055, cell_10056, cell_10057, cell_10058, cell_10059, cell_10060, cell_10061, cell_10062, cell_10063, cell_10064, cell_10065, cell_10066, cell_10067, cell_10068, cell_10069, cell_10070, cell_10071, cell_10072, cell_10073, cell_10074, cell_10075, cell_10076, cell_10077, cell_10078, cell_10079, cell_10080, cell_10081, cell_10082, cell_10083, cell_10084, cell_10085, cell_10086, cell_10087, cell_10088, cell_10089, cell_10090, cell_10091, cell_10092, cell_10093, cell_10094, cell_10095, cell_10096, cell_10097, cell_10098, cell_10099]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10050, check_10051, check_10052, check_10053, check_10054, check_10055, check_10056, check_10057, check_10058, check_10059, check_10060, check_10061, check_10062, check_10063, check_10064, check_10065, check_10066, check_10067, check_10068, check_10069, check_10070, check_10071, check_10072, check_10073, check_10074, check_10075, check_10076, check_10077, check_10078, check_10079, check_10080, check_10081, check_10082, check_10083, check_10084, check_10085, check_10086, check_10087, check_10088, check_10089, check_10090, check_10091, check_10092, check_10093, check_10094, check_10095, check_10096, check_10097, check_10098, check_10099, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0201

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0201
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0201
open AnalyticBounds.ExpressionCertificate

theorem linked_10050 : Linked cell_10050 pieces := by
  link_source cell_10050 with piece_1051 using piece_1051_mem, ⟨piece_1176_mem, piece_1177_mem⟩

theorem linked_10051 : Linked cell_10051 pieces := by
  link_source cell_10051 with piece_1051 using piece_1051_mem, piece_1176_mem

theorem linked_10052 : Linked cell_10052 pieces := by
  link_source cell_10052 with piece_1051 using piece_1051_mem, ⟨piece_1175_mem, piece_1176_mem⟩

theorem linked_10053 : Linked cell_10053 pieces := by
  link_source cell_10053 with piece_1052 using piece_1052_mem, ⟨piece_1176_mem, piece_1177_mem⟩

theorem linked_10054 : Linked cell_10054 pieces := by
  link_source cell_10054 with piece_1052 using piece_1052_mem, piece_1176_mem

theorem linked_10055 : Linked cell_10055 pieces := by
  link_source cell_10055 with piece_1052 using piece_1052_mem, ⟨piece_1175_mem, piece_1176_mem⟩

theorem linked_10056 : Linked cell_10056 pieces := by
  link_source cell_10056 with piece_1052 using piece_1052_mem, piece_1175_mem

theorem linked_10057 : Linked cell_10057 pieces := by
  link_source cell_10057 with piece_1052 using piece_1052_mem, ⟨piece_1174_mem, piece_1175_mem⟩

theorem linked_10058 : Linked cell_10058 pieces := by
  link_source cell_10058 with piece_1052 using piece_1052_mem, piece_1174_mem

theorem linked_10059 : Linked cell_10059 pieces := by
  link_source cell_10059 with piece_1053 using piece_1053_mem, piece_1175_mem

theorem linked_10060 : Linked cell_10060 pieces := by
  link_source cell_10060 with piece_1053 using piece_1053_mem, piece_1175_mem

theorem linked_10061 : Linked cell_10061 pieces := by
  link_source cell_10061 with piece_1053 using piece_1053_mem, ⟨piece_1174_mem, piece_1175_mem⟩

theorem linked_10062 : Linked cell_10062 pieces := by
  link_source cell_10062 with piece_1053 using piece_1053_mem, ⟨piece_1173_mem, piece_1174_mem⟩

theorem linked_10063 : Linked cell_10063 pieces := by
  link_source cell_10063 with piece_1053 using piece_1053_mem, piece_1173_mem

theorem linked_10064 : Linked cell_10064 pieces := by
  link_source cell_10064 with piece_1053 using piece_1053_mem, piece_1173_mem

theorem linked_10065 : Linked cell_10065 pieces := by
  link_source cell_10065 with piece_1054 using piece_1054_mem, piece_1174_mem

theorem linked_10066 : Linked cell_10066 pieces := by
  link_source cell_10066 with piece_1054 using piece_1054_mem, ⟨piece_1173_mem, piece_1174_mem⟩

theorem linked_10067 : Linked cell_10067 pieces := by
  link_source cell_10067 with piece_1054 using piece_1054_mem, piece_1173_mem

theorem linked_10068 : Linked cell_10068 pieces := by
  link_source cell_10068 with piece_1054 using piece_1054_mem, ⟨piece_1172_mem, piece_1173_mem⟩

theorem linked_10069 : Linked cell_10069 pieces := by
  link_source cell_10069 with piece_1054 using piece_1054_mem, piece_1172_mem

theorem linked_10070 : Linked cell_10070 pieces := by
  link_source cell_10070 with piece_1054 using piece_1054_mem, ⟨piece_1171_mem, piece_1172_mem⟩

theorem linked_10071 : Linked cell_10071 pieces := by
  link_source cell_10071 with piece_1055 using piece_1055_mem, ⟨piece_1172_mem, piece_1173_mem⟩

theorem linked_10072 : Linked cell_10072 pieces := by
  link_source cell_10072 with piece_1055 using piece_1055_mem, piece_1172_mem

theorem linked_10073 : Linked cell_10073 pieces := by
  link_source cell_10073 with piece_1055 using piece_1055_mem, ⟨piece_1171_mem, piece_1172_mem⟩

theorem linked_10074 : Linked cell_10074 pieces := by
  link_source cell_10074 with piece_1055 using piece_1055_mem, piece_1171_mem

theorem linked_10075 : Linked cell_10075 pieces := by
  link_source cell_10075 with piece_1055 using piece_1055_mem, ⟨piece_1170_mem, piece_1171_mem⟩

theorem linked_10076 : Linked cell_10076 pieces := by
  link_source cell_10076 with piece_1055 using piece_1055_mem, piece_1170_mem

theorem linked_10077 : Linked cell_10077 pieces := by
  link_source cell_10077 with piece_1056 using piece_1056_mem, ⟨piece_1171_mem, piece_1172_mem⟩

theorem linked_10078 : Linked cell_10078 pieces := by
  link_source cell_10078 with piece_1056 using piece_1056_mem, piece_1171_mem

theorem linked_10079 : Linked cell_10079 pieces := by
  link_source cell_10079 with piece_1056 using piece_1056_mem, ⟨piece_1170_mem, piece_1171_mem⟩

theorem linked_10080 : Linked cell_10080 pieces := by
  link_source cell_10080 with piece_1056 using piece_1056_mem, ⟨piece_1169_mem, piece_1170_mem⟩

theorem linked_10081 : Linked cell_10081 pieces := by
  link_source cell_10081 with piece_1056 using piece_1056_mem, ⟨piece_1168_mem, piece_1169_mem⟩

theorem linked_10082 : Linked cell_10082 pieces := by
  link_source cell_10082 with piece_1056 using piece_1056_mem, piece_1168_mem

theorem linked_10083 : Linked cell_10083 pieces := by
  link_source cell_10083 with piece_1057 using piece_1057_mem, ⟨piece_1169_mem, piece_1170_mem⟩

theorem linked_10084 : Linked cell_10084 pieces := by
  link_source cell_10084 with piece_1057 using piece_1057_mem, ⟨piece_1168_mem, piece_1169_mem⟩

theorem linked_10085 : Linked cell_10085 pieces := by
  link_source cell_10085 with piece_1057 using piece_1057_mem, ⟨piece_1167_mem, piece_1168_mem⟩

theorem linked_10086 : Linked cell_10086 pieces := by
  link_source cell_10086 with piece_1057 using piece_1057_mem, piece_1167_mem

theorem linked_10087 : Linked cell_10087 pieces := by
  link_source cell_10087 with piece_1057 using piece_1057_mem, piece_1167_mem

theorem linked_10088 : Linked cell_10088 pieces := by
  link_source cell_10088 with piece_1058 using piece_1058_mem, piece_1168_mem

theorem linked_10089 : Linked cell_10089 pieces := by
  link_source cell_10089 with piece_1058 using piece_1058_mem, ⟨piece_1167_mem, piece_1168_mem⟩

theorem linked_10090 : Linked cell_10090 pieces := by
  link_source cell_10090 with piece_1058 using piece_1058_mem, piece_1167_mem

theorem linked_10091 : Linked cell_10091 pieces := by
  link_source cell_10091 with piece_1058 using piece_1058_mem, ⟨piece_1166_mem, piece_1167_mem⟩

theorem linked_10092 : Linked cell_10092 pieces := by
  link_source cell_10092 with piece_1058 using piece_1058_mem, piece_1166_mem

theorem linked_10093 : Linked cell_10093 pieces := by
  link_source cell_10093 with piece_1058 using piece_1058_mem, ⟨piece_1165_mem, piece_1166_mem⟩

theorem linked_10094 : Linked cell_10094 pieces := by
  link_source cell_10094 with piece_1059 using piece_1059_mem, ⟨piece_1166_mem, piece_1167_mem⟩

theorem linked_10095 : Linked cell_10095 pieces := by
  link_source cell_10095 with piece_1059 using piece_1059_mem, piece_1166_mem

theorem linked_10096 : Linked cell_10096 pieces := by
  link_source cell_10096 with piece_1059 using piece_1059_mem, ⟨piece_1165_mem, piece_1166_mem⟩

theorem linked_10097 : Linked cell_10097 pieces := by
  link_source cell_10097 with piece_1059 using piece_1059_mem, piece_1165_mem

theorem linked_10098 : Linked cell_10098 pieces := by
  link_source cell_10098 with piece_1059 using piece_1059_mem, ⟨piece_1164_mem, piece_1165_mem⟩

theorem linked_10099 : Linked cell_10099 pieces := by
  link_source cell_10099 with piece_1059 using piece_1059_mem, piece_1164_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0201.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0201.cells,List.forall_mem_cons]
  exact ⟨linked_10050, linked_10051, linked_10052, linked_10053, linked_10054, linked_10055, linked_10056, linked_10057, linked_10058, linked_10059, linked_10060, linked_10061, linked_10062, linked_10063, linked_10064, linked_10065, linked_10066, linked_10067, linked_10068, linked_10069, linked_10070, linked_10071, linked_10072, linked_10073, linked_10074, linked_10075, linked_10076, linked_10077, linked_10078, linked_10079, linked_10080, linked_10081, linked_10082, linked_10083, linked_10084, linked_10085, linked_10086, linked_10087, linked_10088, linked_10089, linked_10090, linked_10091, linked_10092, linked_10093, linked_10094, linked_10095, linked_10096, linked_10097, linked_10098, linked_10099, by simp⟩

theorem covered : covers (1747 / 4000 : ℚ) (441 / 1000 : ℚ)
    (SourceCertificates.Chunk0201.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0201
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0202
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(441 / 1000 : ℚ), (3529 / 8000 : ℚ)⟩
  branch := .left
  r := (207178404507 / 312500000000 : ℚ)
  w := (3814476721577 / 2500000000000 : ℚ)
  center := (7057 / 16000 : ℚ)
  supportValue := (244645010762443 / 500000000000000 : ℚ)
  supportSlope := (-26486627823691933 / 10000000000000000 : ℚ)
  oldCenter := (244645010762443 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1062
  oldLo := (12187500000000001 / 25000000000000000 : ℚ)
  oldHi := (12200000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1162]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10100 : Cell := { cellDefaults with
  newCoefficients := coefficients_1060
  oldLo := (9780000000000001 / 20000000000000000 : ℚ)
  oldHi := (9790000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1165]
}

def cell_10101 : Cell := { cellDefaults with
  domain := ⟨(3529 / 8000 : ℚ), (353 / 800 : ℚ)⟩
  center := (7059 / 16000 : ℚ)
  supportValue := (4889591095679343 / 10000000000000000 : ℚ)
  supportSlope := (-2646173651224437 / 1000000000000000 : ℚ)
  oldCenter := (4889591095679343 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1060
  oldLo := (9770000000000001 / 20000000000000000 : ℚ)
  oldHi := (9790000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1164, piece_1165]
}

def cell_10102 : Cell := { cellDefaults with
  domain := ⟨(353 / 800 : ℚ), (8826466480446927 / 20000000000000000 : ℚ)⟩
  center := (17651466480446927 / 40000000000000000 : ℚ)
  supportValue := (3054352855189171 / 6250000000000000 : ℚ)
  supportSlope := (-413143561755809 / 156250000000000 : ℚ)
  oldCenter := (3054352855189171 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1060
  oldLo := (9770000000000001 / 20000000000000000 : ℚ)
  oldHi := (9780000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1164]
}

def cell_10103 : Cell := { cellDefaults with
  domain := ⟨(8826466480446927 / 20000000000000000 : ℚ), (4413966480446927 / 10000000000000000 : ℚ)⟩
  center := (17654399441340781 / 40000000000000000 : ℚ)
  supportValue := (12212566043964579 / 25000000000000000 : ℚ)
  supportSlope := (-2642742562373101 / 1000000000000000 : ℚ)
  oldCenter := (12212566043964579 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1060
  oldLo := (12200000000000001 / 25000000000000000 : ℚ)
  oldHi := (9780000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1163, piece_1164]
}

def cell_10104 : Cell := { cellDefaults with
  domain := ⟨(4413966480446927 / 10000000000000000 : ℚ), (883 / 2000 : ℚ)⟩
  center := (8828966480446927 / 20000000000000000 : ℚ)
  supportValue := (4882692480628173 / 10000000000000000 : ℚ)
  supportSlope := (-26410341738760943 / 10000000000000000 : ℚ)
  oldCenter := (4882692480628173 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1061
  oldLo := (12200000000000001 / 25000000000000000 : ℚ)
  oldHi := (9770000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1163]
}

def cell_10105 : Cell := { cellDefaults with
  domain := ⟨(883 / 2000 : ℚ), (3533 / 8000 : ℚ)⟩
  r := (66256499405771 / 100000000000000 : ℚ)
  w := (15252300534147 / 10000000000000 : ℚ)
  center := (1413 / 3200 : ℚ)
  supportValue := (977311135658997 / 2000000000000000 : ℚ)
  supportSlope := (-660528674900851 / 250000000000000 : ℚ)
  oldCenter := (977311135658997 / 2000000000000000 : ℚ)
  oldLo := (12200000000000001 / 25000000000000000 : ℚ)
  oldHi := (9780000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1163, piece_1164]
}

def cell_10106 : Cell := { cellDefaults with
  domain := ⟨(3533 / 8000 : ℚ), (1767 / 4000 : ℚ)⟩
  r := (66256499405771 / 100000000000000 : ℚ)
  w := (15252300534147 / 10000000000000 : ℚ)
  center := (7067 / 16000 : ℚ)
  supportValue := (9766508849801343 / 20000000000000000 : ℚ)
  supportSlope := (-6599662410600171 / 2500000000000000 : ℚ)
  oldCenter := (9766508849801343 / 20000000000000000 : ℚ)
  oldLo := (12200000000000001 / 25000000000000000 : ℚ)
  oldHi := (9770000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1163]
}

def cell_10107 : Cell := { cellDefaults with
  domain := ⟨(1767 / 4000 : ℚ), (707 / 1600 : ℚ)⟩
  r := (66256499405771 / 100000000000000 : ℚ)
  w := (15252300534147 / 10000000000000 : ℚ)
  center := (7069 / 16000 : ℚ)
  supportValue := (9759912777202977 / 20000000000000000 : ℚ)
  supportSlope := (-5274628703821449 / 2000000000000000 : ℚ)
  oldCenter := (9759912777202977 / 20000000000000000 : ℚ)
  oldHi := (9770000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1162, piece_1163]
}

def cell_10108 : Cell := { cellDefaults with
  domain := ⟨(707 / 1600 : ℚ), (7071 / 16000 : ℚ)⟩
  r := (66256499405771 / 100000000000000 : ℚ)
  w := (15252300534147 / 10000000000000 : ℚ)
  center := (14141 / 32000 : ℚ)
  supportValue := (4877481202313181 / 10000000000000000 : ℚ)
  supportSlope := (-2635468527239837 / 1000000000000000 : ℚ)
  oldCenter := (4877481202313181 / 10000000000000000 : ℚ)
  oldPieces := [piece_1162]
}

def cell_10109 : Cell := { cellDefaults with
  domain := ⟨(7071 / 16000 : ℚ), (221 / 500 : ℚ)⟩
  r := (66256499405771 / 100000000000000 : ℚ)
  w := (15252300534147 / 10000000000000 : ℚ)
  center := (14143 / 32000 : ℚ)
  supportValue := (2437917242991549 / 5000000000000000 : ℚ)
  supportSlope := (-26340225833560993 / 10000000000000000 : ℚ)
  oldCenter := (2437917242991549 / 5000000000000000 : ℚ)
  oldPieces := [piece_1162]
}

def cell_10110 : Cell := { cellDefaults with
  domain := ⟨(221 / 500 : ℚ), (3537 / 8000 : ℚ)⟩
  r := (66215963092091 / 100000000000000 : ℚ)
  w := (3811676246707 / 2500000000000 : ℚ)
  center := (7073 / 16000 : ℚ)
  supportValue := (24401136977029697 / 50000000000000000 : ℚ)
  supportSlope := (-2635839446841537 / 1000000000000000 : ℚ)
  oldCenter := (24401136977029697 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1063
  oldHi := (9770000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1162, piece_1163]
}

def cell_10111 : Cell := { cellDefaults with
  domain := ⟨(3537 / 8000 : ℚ), (1769 / 4000 : ℚ)⟩
  r := (66215963092091 / 100000000000000 : ℚ)
  w := (3811676246707 / 2500000000000 : ℚ)
  center := (283 / 640 : ℚ)
  supportValue := (48769339803849693 / 100000000000000000 : ℚ)
  supportSlope := (-5266659697776177 / 2000000000000000 : ℚ)
  oldCenter := (48769339803849693 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1063
  oldPieces := [piece_1162]
}

def cell_10112 : Cell := { cellDefaults with
  domain := ⟨(1769 / 4000 : ℚ), (3539 / 8000 : ℚ)⟩
  r := (66215963092091 / 100000000000000 : ℚ)
  w := (3811676246707 / 2500000000000 : ℚ)
  center := (7077 / 16000 : ℚ)
  supportValue := (609205471431839 / 1250000000000000 : ℚ)
  supportSlope := (-1644410650998851 / 625000000000000 : ℚ)
  oldCenter := (609205471431839 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1063
  oldLo := (12175000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1161, piece_1162]
}

def cell_10113 : Cell := { cellDefaults with
  domain := ⟨(3539 / 8000 : ℚ), (7079 / 16000 : ℚ)⟩
  r := (66215963092091 / 100000000000000 : ℚ)
  w := (3811676246707 / 2500000000000 : ℚ)
  center := (14157 / 32000 : ℚ)
  supportValue := (4871174704000787 / 10000000000000000 : ℚ)
  supportSlope := (-2628950259726537 / 1000000000000000 : ℚ)
  oldCenter := (4871174704000787 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1063
  oldLo := (12175000000000001 / 25000000000000000 : ℚ)
  oldHi := (12187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1161]
}

def cell_10114 : Cell := { cellDefaults with
  domain := ⟨(7079 / 16000 : ℚ), (177 / 400 : ℚ)⟩
  r := (66215963092091 / 100000000000000 : ℚ)
  w := (3811676246707 / 2500000000000 : ℚ)
  center := (14159 / 32000 : ℚ)
  supportValue := (12173829848642681 / 25000000000000000 : ℚ)
  supportSlope := (-13140194631766633 / 5000000000000000 : ℚ)
  oldCenter := (12173829848642681 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1063
  oldLo := (12162500000000001 / 25000000000000000 : ℚ)
  oldHi := (12187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1160, piece_1161]
}

def cell_10115 : Cell := { cellDefaults with
  domain := ⟨(177 / 400 : ℚ), (3541 / 8000 : ℚ)⟩
  r := (66175481791583 / 100000000000000 : ℚ)
  w := (7620560689117 / 5000000000000 : ℚ)
  center := (7081 / 16000 : ℚ)
  supportValue := (389913157545219 / 800000000000000 : ℚ)
  supportSlope := (-525917348897309 / 200000000000000 : ℚ)
  oldCenter := (389913157545219 / 800000000000000 : ℚ)
  newCoefficients := coefficients_1064
  oldLo := (12175000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1161, piece_1162]
}

def cell_10116 : Cell := { cellDefaults with
  domain := ⟨(3541 / 8000 : ℚ), (1771 / 4000 : ℚ)⟩
  r := (66175481791583 / 100000000000000 : ℚ)
  w := (7620560689117 / 5000000000000 : ℚ)
  center := (7083 / 16000 : ℚ)
  supportValue := (4870629142905007 / 10000000000000000 : ℚ)
  supportSlope := (-26270274544204497 / 10000000000000000 : ℚ)
  oldCenter := (4870629142905007 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1064
  oldLo := (12162500000000001 / 25000000000000000 : ℚ)
  oldHi := (12187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1160, piece_1161]
}

def cell_10117 : Cell := { cellDefaults with
  domain := ⟨(1771 / 4000 : ℚ), (3543 / 8000 : ℚ)⟩
  r := (66175481791583 / 100000000000000 : ℚ)
  w := (7620560689117 / 5000000000000 : ℚ)
  center := (1417 / 3200 : ℚ)
  supportValue := (48673467337547227 / 100000000000000000 : ℚ)
  supportSlope := (-6561532345619181 / 2500000000000000 : ℚ)
  oldCenter := (48673467337547227 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1064
  oldLo := (12162500000000001 / 25000000000000000 : ℚ)
  oldHi := (12175000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1160]
}

def cell_10118 : Cell := { cellDefaults with
  domain := ⟨(3543 / 8000 : ℚ), (7087 / 16000 : ℚ)⟩
  r := (66175481791583 / 100000000000000 : ℚ)
  w := (7620560689117 / 5000000000000 : ℚ)
  center := (14173 / 32000 : ℚ)
  supportValue := (2432441866286443 / 5000000000000000 : ℚ)
  supportSlope := (-1049136946767959 / 400000000000000 : ℚ)
  oldCenter := (2432441866286443 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1064
  oldLo := (12150000000000001 / 25000000000000000 : ℚ)
  oldHi := (12175000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1159, piece_1160]
}

def cell_10119 : Cell := { cellDefaults with
  domain := ⟨(7087 / 16000 : ℚ), (443 / 1000 : ℚ)⟩
  r := (66175481791583 / 100000000000000 : ℚ)
  w := (7620560689117 / 5000000000000 : ℚ)
  center := (567 / 1280 : ℚ)
  supportValue := (2431622362068657 / 5000000000000000 : ℚ)
  supportSlope := (-13108465178754969 / 5000000000000000 : ℚ)
  oldCenter := (2431622362068657 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1064
  oldLo := (12150000000000001 / 25000000000000000 : ℚ)
  oldHi := (12162500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1159]
}

def cell_10120 : Cell := { cellDefaults with
  domain := ⟨(443 / 1000 : ℚ), (177250000000000001 / 400000000000000000 : ℚ)⟩
  r := (3306752744663 / 5000000000000 : ℚ)
  w := (7617774692529 / 5000000000000 : ℚ)
  center := (354450000000000001 / 800000000000000000 : ℚ)
  supportValue := (4867617221909737 / 10000000000000000 : ℚ)
  supportSlope := (-6558006635444127 / 2500000000000000 : ℚ)
  oldCenter := (4867617221909737 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1065
  oldLo := (12162500000000001 / 25000000000000000 : ℚ)
  oldHi := (12175000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1160]
}

def cell_10121 : Cell := { cellDefaults with
  domain := ⟨(177250000000000001 / 400000000000000000 : ℚ), (88650000000000001 / 200000000000000000 : ℚ)⟩
  r := (3306752744663 / 5000000000000 : ℚ)
  w := (7617774692529 / 5000000000000 : ℚ)
  center := (354550000000000003 / 800000000000000000 : ℚ)
  supportValue := (12160849598800931 / 25000000000000000 : ℚ)
  supportSlope := (-524161035740523 / 200000000000000 : ℚ)
  oldCenter := (12160849598800931 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1065
  oldLo := (12150000000000001 / 25000000000000000 : ℚ)
  oldHi := (12175000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1159, piece_1160]
}

def cell_10122 : Cell := { cellDefaults with
  domain := ⟨(88650000000000001 / 200000000000000000 : ℚ), (177350000000000003 / 400000000000000000 : ℚ)⟩
  r := (3306752744663 / 5000000000000 : ℚ)
  w := (7617774692529 / 5000000000000 : ℚ)
  center := (70930000000000001 / 160000000000000000 : ℚ)
  supportValue := (4861065374236123 / 10000000000000000 : ℚ)
  supportSlope := (-5236507426291121 / 2000000000000000 : ℚ)
  oldCenter := (4861065374236123 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1065
  oldLo := (2428212290502793 / 5000000000000000 : ℚ)
  oldHi := (12162500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1158, piece_1159]
}

def cell_10123 : Cell := { cellDefaults with
  domain := ⟨(177350000000000003 / 400000000000000000 : ℚ), (354750000000000007 / 800000000000000000 : ℚ)⟩
  r := (3306752744663 / 5000000000000 : ℚ)
  w := (7617774692529 / 5000000000000 : ℚ)
  center := (709450000000000013 / 1600000000000000000 : ℚ)
  supportValue := (4858608117216399 / 10000000000000000 : ℚ)
  supportSlope := (-6541651533589079 / 2500000000000000 : ℚ)
  oldCenter := (4858608117216399 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1065
  oldLo := (2428212290502793 / 5000000000000000 : ℚ)
  oldHi := (12150000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1158]
}

def cell_10124 : Cell := { cellDefaults with
  domain := ⟨(354750000000000007 / 800000000000000000 : ℚ), (44350000000000001 / 100000000000000000 : ℚ)⟩
  r := (3306752744663 / 5000000000000 : ℚ)
  w := (7617774692529 / 5000000000000 : ℚ)
  center := (141910000000000003 / 320000000000000000 : ℚ)
  supportValue := (1214243288089771 / 2500000000000000 : ℚ)
  supportSlope := (-2615225827708959 / 1000000000000000 : ℚ)
  oldCenter := (1214243288089771 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1065
  oldLo := (12137500000000001 / 25000000000000000 : ℚ)
  oldHi := (12150000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1157, piece_1158]
}

def cell_10125 : Cell := { cellDefaults with
  domain := ⟨(44350000000000001 / 100000000000000000 : ℚ), (44362500000000001 / 100000000000000000 : ℚ)⟩
  r := (6609468322653 / 10000000000000 : ℚ)
  w := (15229989061737 / 10000000000000 : ℚ)
  center := (44356250000000001 / 100000000000000000 : ℚ)
  supportValue := (9722671013389731 / 20000000000000000 : ℚ)
  supportSlope := (-26167917388217887 / 10000000000000000 : ℚ)
  oldCenter := (9722671013389731 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1066
  oldLo := (2428212290502793 / 5000000000000000 : ℚ)
  oldHi := (12162500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1158, piece_1159]
}

def cell_10126 : Cell := { cellDefaults with
  domain := ⟨(44362500000000001 / 100000000000000000 : ℚ), (44375000000000001 / 100000000000000000 : ℚ)⟩
  r := (6609468322653 / 10000000000000 : ℚ)
  w := (15229989061737 / 10000000000000 : ℚ)
  center := (44368750000000001 / 100000000000000000 : ℚ)
  supportValue := (48580658805083343 / 100000000000000000 : ℚ)
  supportSlope := (-6536353858661581 / 2500000000000000 : ℚ)
  oldCenter := (48580658805083343 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1066
  oldLo := (2428212290502793 / 5000000000000000 : ℚ)
  oldHi := (12150000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1158]
}

def cell_10127 : Cell := { cellDefaults with
  domain := ⟨(44375000000000001 / 100000000000000000 : ℚ), (44387500000000001 / 100000000000000000 : ℚ)⟩
  r := (6609468322653 / 10000000000000 : ℚ)
  w := (15229989061737 / 10000000000000 : ℚ)
  center := (44381250000000001 / 100000000000000000 : ℚ)
  supportValue := (9709598873272729 / 20000000000000000 : ℚ)
  supportSlope := (-2612061831928969 / 1000000000000000 : ℚ)
  oldCenter := (9709598873272729 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1066
  oldLo := (12125000000000001 / 25000000000000000 : ℚ)
  oldHi := (12150000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1156, piece_1157, piece_1158]
}

def cell_10128 : Cell := { cellDefaults with
  domain := ⟨(44387500000000001 / 100000000000000000 : ℚ), (44393750000000001 / 100000000000000000 : ℚ)⟩
  r := (6609468322653 / 10000000000000 : ℚ)
  w := (15229989061737 / 10000000000000 : ℚ)
  center := (44390625000000001 / 100000000000000000 : ℚ)
  supportValue := (4852347957065479 / 10000000000000000 : ℚ)
  supportSlope := (-1305106135535361 / 500000000000000 : ℚ)
  oldCenter := (4852347957065479 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1066
  oldLo := (12125000000000001 / 25000000000000000 : ℚ)
  oldHi := (12137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1156]
}

def cell_10129 : Cell := { cellDefaults with
  domain := ⟨(44393750000000001 / 100000000000000000 : ℚ), (44400000000000001 / 100000000000000000 : ℚ)⟩
  r := (6609468322653 / 10000000000000 : ℚ)
  w := (15229989061737 / 10000000000000 : ℚ)
  center := (44396875000000001 / 100000000000000000 : ℚ)
  supportValue := (1212679255213159 / 2500000000000000 : ℚ)
  supportSlope := (-26088242398127903 / 10000000000000000 : ℚ)
  oldCenter := (1212679255213159 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1066
  oldLo := (12112500000000001 / 25000000000000000 : ℚ)
  oldHi := (12137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1155, piece_1156]
}

def cell_10130 : Cell := { cellDefaults with
  domain := ⟨(44400000000000001 / 100000000000000000 : ℚ), (44412500000000001 / 100000000000000000 : ℚ)⟩
  r := (33027182333121 / 50000000000000 : ℚ)
  w := (7612220443129 / 5000000000000 : ℚ)
  center := (44406250000000001 / 100000000000000000 : ℚ)
  supportValue := (4855069346051199 / 10000000000000000 : ℚ)
  supportSlope := (-26106044290310493 / 10000000000000000 : ℚ)
  oldCenter := (4855069346051199 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1067
  oldLo := (12125000000000001 / 25000000000000000 : ℚ)
  oldHi := (12150000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1156, piece_1157, piece_1158]
}

def cell_10131 : Cell := { cellDefaults with
  domain := ⟨(44412500000000001 / 100000000000000000 : ℚ), (44425000000000001 / 100000000000000000 : ℚ)⟩
  r := (33027182333121 / 50000000000000 : ℚ)
  w := (7612220443129 / 5000000000000 : ℚ)
  center := (44418750000000001 / 100000000000000000 : ℚ)
  supportValue := (1516189827622157 / 3125000000000000 : ℚ)
  supportSlope := (-2608100230297339 / 1000000000000000 : ℚ)
  oldCenter := (1516189827622157 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1067
  oldLo := (12125000000000001 / 25000000000000000 : ℚ)
  oldHi := (12137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1156]
}

def cell_10132 : Cell := { cellDefaults with
  domain := ⟨(44425000000000001 / 100000000000000000 : ℚ), (44437500000000001 / 100000000000000000 : ℚ)⟩
  r := (33027182333121 / 50000000000000 : ℚ)
  w := (7612220443129 / 5000000000000 : ℚ)
  center := (44431250000000001 / 100000000000000000 : ℚ)
  supportValue := (1939419489123003 / 4000000000000000 : ℚ)
  supportSlope := (-2605891590642173 / 1000000000000000 : ℚ)
  oldCenter := (1939419489123003 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1067
  oldLo := (12112500000000001 / 25000000000000000 : ℚ)
  oldHi := (12137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1155, piece_1156]
}

def cell_10133 : Cell := { cellDefaults with
  domain := ⟨(44437500000000001 / 100000000000000000 : ℚ), (44443750000000001 / 100000000000000000 : ℚ)⟩
  r := (33027182333121 / 50000000000000 : ℚ)
  w := (7612220443129 / 5000000000000 : ℚ)
  center := (44440625000000001 / 100000000000000000 : ℚ)
  supportValue := (2423051637307341 / 5000000000000000 : ℚ)
  supportSlope := (-13018936091313549 / 5000000000000000 : ℚ)
  oldCenter := (2423051637307341 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1067
  oldLo := (12112500000000001 / 25000000000000000 : ℚ)
  oldHi := (12125000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1155]
}

def cell_10134 : Cell := { cellDefaults with
  domain := ⟨(44443750000000001 / 100000000000000000 : ℚ), (44450000000000001 / 100000000000000000 : ℚ)⟩
  r := (33027182333121 / 50000000000000 : ℚ)
  w := (7612220443129 / 5000000000000 : ℚ)
  center := (44446875000000001 / 100000000000000000 : ℚ)
  supportValue := (6055595267840843 / 12500000000000000 : ℚ)
  supportSlope := (-2602925346332441 / 1000000000000000 : ℚ)
  oldCenter := (6055595267840843 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1067
  oldLo := (12100000000000001 / 25000000000000000 : ℚ)
  oldHi := (12125000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1154, piece_1155]
}

def cell_10135 : Cell := { cellDefaults with
  domain := ⟨(44450000000000001 / 100000000000000000 : ℚ), (44462500000000001 / 100000000000000000 : ℚ)⟩
  r := (8251762535823 / 12500000000000 : ℚ)
  w := (15218903251947 / 10000000000000 : ℚ)
  center := (44456250000000001 / 100000000000000000 : ℚ)
  supportValue := (484881874166879 / 1000000000000000 : ℚ)
  supportSlope := (-26044389819661617 / 10000000000000000 : ℚ)
  oldCenter := (484881874166879 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1068
  oldLo := (12112500000000001 / 25000000000000000 : ℚ)
  oldHi := (12137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1155, piece_1156]
}

def cell_10136 : Cell := { cellDefaults with
  domain := ⟨(44462500000000001 / 100000000000000000 : ℚ), (44475000000000001 / 100000000000000000 : ℚ)⟩
  r := (8251762535823 / 12500000000000 : ℚ)
  w := (15218903251947 / 10000000000000 : ℚ)
  center := (44468750000000001 / 100000000000000000 : ℚ)
  supportValue := (9691129711200639 / 20000000000000000 : ℚ)
  supportSlope := (-2601906684180477 / 1000000000000000 : ℚ)
  oldCenter := (9691129711200639 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1068
  oldLo := (12100000000000001 / 25000000000000000 : ℚ)
  oldHi := (12125000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1154, piece_1155]
}

def cell_10137 : Cell := { cellDefaults with
  domain := ⟨(44475000000000001 / 100000000000000000 : ℚ), (44487500000000001 / 100000000000000000 : ℚ)⟩
  r := (8251762535823 / 12500000000000 : ℚ)
  w := (15218903251947 / 10000000000000 : ℚ)
  center := (44481250000000001 / 100000000000000000 : ℚ)
  supportValue := (12105784552557379 / 25000000000000000 : ℚ)
  supportSlope := (-519903806837263 / 200000000000000 : ℚ)
  oldCenter := (12105784552557379 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1068
  oldLo := (12100000000000001 / 25000000000000000 : ℚ)
  oldHi := (12112500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1154]
}

def cell_10138 : Cell := { cellDefaults with
  domain := ⟨(44487500000000001 / 100000000000000000 : ℚ), (44493750000000001 / 100000000000000000 : ℚ)⟩
  r := (8251762535823 / 12500000000000 : ℚ)
  w := (15218903251947 / 10000000000000 : ℚ)
  center := (44490625000000001 / 100000000000000000 : ℚ)
  supportValue := (24199371741803147 / 50000000000000000 : ℚ)
  supportSlope := (-2597782847242769 / 1000000000000000 : ℚ)
  oldCenter := (24199371741803147 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1068
  oldLo := (12087500000000001 / 25000000000000000 : ℚ)
  oldHi := (12112500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1153, piece_1154]
}

def cell_10139 : Cell := { cellDefaults with
  domain := ⟨(44493750000000001 / 100000000000000000 : ℚ), (44500000000000001 / 100000000000000000 : ℚ)⟩
  r := (8251762535823 / 12500000000000 : ℚ)
  w := (15218903251947 / 10000000000000 : ℚ)
  center := (44496875000000001 / 100000000000000000 : ℚ)
  supportValue := (48382509971735277 / 100000000000000000 : ℚ)
  supportSlope := (-649162363824729 / 250000000000000 : ℚ)
  oldCenter := (48382509971735277 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1068
  oldLo := (12087500000000001 / 25000000000000000 : ℚ)
  oldHi := (12100000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1153]
}

def cell_10140 : Cell := { cellDefaults with
  domain := ⟨(44500000000000001 / 100000000000000000 : ℚ), (44512500000000001 / 100000000000000000 : ℚ)⟩
  r := (65973890516971 / 100000000000000 : ℚ)
  w := (15213376807411 / 10000000000000 : ℚ)
  center := (44506250000000001 / 100000000000000000 : ℚ)
  supportValue := (193703345622699 / 400000000000000 : ℚ)
  supportSlope := (-2598127546253437 / 1000000000000000 : ℚ)
  oldCenter := (193703345622699 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1069
  oldLo := (12100000000000001 / 25000000000000000 : ℚ)
  oldHi := (12112500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1154]
}

def cell_10141 : Cell := { cellDefaults with
  domain := ⟨(44512500000000001 / 100000000000000000 : ℚ), (44525000000000001 / 100000000000000000 : ℚ)⟩
  r := (65973890516971 / 100000000000000 : ℚ)
  w := (15213376807411 / 10000000000000 : ℚ)
  center := (44518750000000001 / 100000000000000000 : ℚ)
  supportValue := (1209834394287409 / 2500000000000000 : ℚ)
  supportSlope := (-12978855802647793 / 5000000000000000 : ℚ)
  oldCenter := (1209834394287409 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1069
  oldLo := (12087500000000001 / 25000000000000000 : ℚ)
  oldHi := (12112500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1153, piece_1154]
}

def cell_10142 : Cell := { cellDefaults with
  domain := ⟨(44525000000000001 / 100000000000000000 : ℚ), (44537500000000001 / 100000000000000000 : ℚ)⟩
  r := (65973890516971 / 100000000000000 : ℚ)
  w := (15213376807411 / 10000000000000 : ℚ)
  center := (44531250000000001 / 100000000000000000 : ℚ)
  supportValue := (1209023595724199 / 2500000000000000 : ℚ)
  supportSlope := (-25932464072635497 / 10000000000000000 : ℚ)
  oldCenter := (1209023595724199 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1069
  oldLo := (12075000000000001 / 25000000000000000 : ℚ)
  oldHi := (12100000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1152, piece_1153]
}

def cell_10143 : Cell := { cellDefaults with
  domain := ⟨(44537500000000001 / 100000000000000000 : ℚ), (44543750000000001 / 100000000000000000 : ℚ)⟩
  r := (65973890516971 / 100000000000000 : ℚ)
  w := (15213376807411 / 10000000000000 : ℚ)
  center := (44540625000000001 / 100000000000000000 : ℚ)
  supportValue := (4833660575263581 / 10000000000000000 : ℚ)
  supportSlope := (-2591694124653543 / 1000000000000000 : ℚ)
  oldCenter := (4833660575263581 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1069
  oldLo := (12075000000000001 / 25000000000000000 : ℚ)
  oldHi := (12087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1152]
}

def cell_10144 : Cell := { cellDefaults with
  domain := ⟨(44543750000000001 / 100000000000000000 : ℚ), (44550000000000001 / 100000000000000000 : ℚ)⟩
  r := (65973890516971 / 100000000000000 : ℚ)
  w := (15213376807411 / 10000000000000 : ℚ)
  center := (44546875000000001 / 100000000000000000 : ℚ)
  supportValue := (48320412095126647 / 100000000000000000 : ℚ)
  supportSlope := (-12951375784391317 / 5000000000000000 : ℚ)
  oldCenter := (48320412095126647 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1069
  oldLo := (12075000000000001 / 25000000000000000 : ℚ)
  oldHi := (12087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1152]
}

def cell_10145 : Cell := { cellDefaults with
  domain := ⟨(44550000000000001 / 100000000000000000 : ℚ), (44562500000000001 / 100000000000000000 : ℚ)⟩
  r := (3296686734639 / 5000000000000 : ℚ)
  w := (7603931036811 / 5000000000000 : ℚ)
  center := (44556250000000001 / 100000000000000000 : ℚ)
  supportValue := (302272743047629 / 625000000000000 : ℚ)
  supportSlope := (-25918019658472957 / 10000000000000000 : ℚ)
  oldCenter := (302272743047629 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1070
  oldLo := (12075000000000001 / 25000000000000000 : ℚ)
  oldHi := (12100000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1152, piece_1153]
}

def cell_10146 : Cell := { cellDefaults with
  domain := ⟨(44562500000000001 / 100000000000000000 : ℚ), (44575000000000001 / 100000000000000000 : ℚ)⟩
  r := (3296686734639 / 5000000000000 : ℚ)
  w := (7603931036811 / 5000000000000 : ℚ)
  center := (44568750000000001 / 100000000000000000 : ℚ)
  supportValue := (2416562736727927 / 5000000000000000 : ℚ)
  supportSlope := (-323700208401001 / 125000000000000 : ℚ)
  oldCenter := (2416562736727927 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1070
  oldLo := (12075000000000001 / 25000000000000000 : ℚ)
  oldHi := (12087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1152]
}

def cell_10147 : Cell := { cellDefaults with
  domain := ⟨(44575000000000001 / 100000000000000000 : ℚ), (44587500000000001 / 100000000000000000 : ℚ)⟩
  r := (3296686734639 / 5000000000000 : ℚ)
  w := (7603931036811 / 5000000000000 : ℚ)
  center := (44581250000000001 / 100000000000000000 : ℚ)
  supportValue := (482989020779133 / 1000000000000000 : ℚ)
  supportSlope := (-25871402437145363 / 10000000000000000 : ℚ)
  oldCenter := (482989020779133 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1070
  oldLo := (12062500000000001 / 25000000000000000 : ℚ)
  oldHi := (12087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1151, piece_1152]
}

def cell_10148 : Cell := { cellDefaults with
  domain := ⟨(44587500000000001 / 100000000000000000 : ℚ), (44593750000000001 / 100000000000000000 : ℚ)⟩
  r := (3296686734639 / 5000000000000 : ℚ)
  w := (7603931036811 / 5000000000000 : ℚ)
  center := (44590625000000001 / 100000000000000000 : ℚ)
  supportValue := (48274620763914533 / 100000000000000000 : ℚ)
  supportSlope := (-12926690379488903 / 5000000000000000 : ℚ)
  oldCenter := (48274620763914533 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1070
  oldLo := (12062500000000001 / 25000000000000000 : ℚ)
  oldHi := (12075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1151]
}

def cell_10149 : Cell := { cellDefaults with
  domain := ⟨(44593750000000001 / 100000000000000000 : ℚ), (44600000000000001 / 100000000000000000 : ℚ)⟩
  r := (3296686734639 / 5000000000000 : ℚ)
  w := (7603931036811 / 5000000000000 : ℚ)
  center := (44596875000000001 / 100000000000000000 : ℚ)
  supportValue := (2412923340796253 / 5000000000000000 : ℚ)
  supportSlope := (-2583924161756457 / 1000000000000000 : ℚ)
  oldCenter := (2412923340796253 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1070
  oldLo := (12062500000000001 / 25000000000000000 : ℚ)
  oldHi := (12075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1151]
}

theorem check_10100 : cell_10100.check = true := by
  decide +kernel

theorem check_10101 : cell_10101.check = true := by
  decide +kernel

theorem check_10102 : cell_10102.check = true := by
  decide +kernel

theorem check_10103 : cell_10103.check = true := by
  decide +kernel

theorem check_10104 : cell_10104.check = true := by
  decide +kernel

theorem check_10105 : cell_10105.check = true := by
  decide +kernel

theorem check_10106 : cell_10106.check = true := by
  decide +kernel

theorem check_10107 : cell_10107.check = true := by
  decide +kernel

theorem check_10108 : cell_10108.check = true := by
  decide +kernel

theorem check_10109 : cell_10109.check = true := by
  decide +kernel

theorem check_10110 : cell_10110.check = true := by
  decide +kernel

theorem check_10111 : cell_10111.check = true := by
  decide +kernel

theorem check_10112 : cell_10112.check = true := by
  decide +kernel

theorem check_10113 : cell_10113.check = true := by
  decide +kernel

theorem check_10114 : cell_10114.check = true := by
  decide +kernel

theorem check_10115 : cell_10115.check = true := by
  decide +kernel

theorem check_10116 : cell_10116.check = true := by
  decide +kernel

theorem check_10117 : cell_10117.check = true := by
  decide +kernel

theorem check_10118 : cell_10118.check = true := by
  decide +kernel

theorem check_10119 : cell_10119.check = true := by
  decide +kernel

theorem check_10120 : cell_10120.check = true := by
  decide +kernel

theorem check_10121 : cell_10121.check = true := by
  decide +kernel

theorem check_10122 : cell_10122.check = true := by
  decide +kernel

theorem check_10123 : cell_10123.check = true := by
  decide +kernel

theorem check_10124 : cell_10124.check = true := by
  decide +kernel

theorem check_10125 : cell_10125.check = true := by
  decide +kernel

theorem check_10126 : cell_10126.check = true := by
  decide +kernel

theorem check_10127 : cell_10127.check = true := by
  decide +kernel

theorem check_10128 : cell_10128.check = true := by
  decide +kernel

theorem check_10129 : cell_10129.check = true := by
  decide +kernel

theorem check_10130 : cell_10130.check = true := by
  decide +kernel

theorem check_10131 : cell_10131.check = true := by
  decide +kernel

theorem check_10132 : cell_10132.check = true := by
  decide +kernel

theorem check_10133 : cell_10133.check = true := by
  decide +kernel

theorem check_10134 : cell_10134.check = true := by
  decide +kernel

theorem check_10135 : cell_10135.check = true := by
  decide +kernel

theorem check_10136 : cell_10136.check = true := by
  decide +kernel

theorem check_10137 : cell_10137.check = true := by
  decide +kernel

theorem check_10138 : cell_10138.check = true := by
  decide +kernel

theorem check_10139 : cell_10139.check = true := by
  decide +kernel

theorem check_10140 : cell_10140.check = true := by
  decide +kernel

theorem check_10141 : cell_10141.check = true := by
  decide +kernel

theorem check_10142 : cell_10142.check = true := by
  decide +kernel

theorem check_10143 : cell_10143.check = true := by
  decide +kernel

theorem check_10144 : cell_10144.check = true := by
  decide +kernel

theorem check_10145 : cell_10145.check = true := by
  decide +kernel

theorem check_10146 : cell_10146.check = true := by
  decide +kernel

theorem check_10147 : cell_10147.check = true := by
  decide +kernel

theorem check_10148 : cell_10148.check = true := by
  decide +kernel

theorem check_10149 : cell_10149.check = true := by
  decide +kernel

def cells : List Cell := [cell_10100, cell_10101, cell_10102, cell_10103, cell_10104, cell_10105, cell_10106, cell_10107, cell_10108, cell_10109, cell_10110, cell_10111, cell_10112, cell_10113, cell_10114, cell_10115, cell_10116, cell_10117, cell_10118, cell_10119, cell_10120, cell_10121, cell_10122, cell_10123, cell_10124, cell_10125, cell_10126, cell_10127, cell_10128, cell_10129, cell_10130, cell_10131, cell_10132, cell_10133, cell_10134, cell_10135, cell_10136, cell_10137, cell_10138, cell_10139, cell_10140, cell_10141, cell_10142, cell_10143, cell_10144, cell_10145, cell_10146, cell_10147, cell_10148, cell_10149]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10100, check_10101, check_10102, check_10103, check_10104, check_10105, check_10106, check_10107, check_10108, check_10109, check_10110, check_10111, check_10112, check_10113, check_10114, check_10115, check_10116, check_10117, check_10118, check_10119, check_10120, check_10121, check_10122, check_10123, check_10124, check_10125, check_10126, check_10127, check_10128, check_10129, check_10130, check_10131, check_10132, check_10133, check_10134, check_10135, check_10136, check_10137, check_10138, check_10139, check_10140, check_10141, check_10142, check_10143, check_10144, check_10145, check_10146, check_10147, check_10148, check_10149, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0202

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0202
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0202
open AnalyticBounds.ExpressionCertificate

theorem linked_10100 : Linked cell_10100 pieces := by
  link_source cell_10100 with piece_1060 using piece_1060_mem, piece_1165_mem

theorem linked_10101 : Linked cell_10101 pieces := by
  link_source cell_10101 with piece_1060 using piece_1060_mem, ⟨piece_1164_mem, piece_1165_mem⟩

theorem linked_10102 : Linked cell_10102 pieces := by
  link_source cell_10102 with piece_1060 using piece_1060_mem, piece_1164_mem

theorem linked_10103 : Linked cell_10103 pieces := by
  link_source cell_10103 with piece_1060 using piece_1060_mem, ⟨piece_1163_mem, piece_1164_mem⟩

theorem linked_10104 : Linked cell_10104 pieces := by
  link_source cell_10104 with piece_1061 using piece_1061_mem, piece_1163_mem

theorem linked_10105 : Linked cell_10105 pieces := by
  link_source cell_10105 with piece_1062 using piece_1062_mem, ⟨piece_1163_mem, piece_1164_mem⟩

theorem linked_10106 : Linked cell_10106 pieces := by
  link_source cell_10106 with piece_1062 using piece_1062_mem, piece_1163_mem

theorem linked_10107 : Linked cell_10107 pieces := by
  link_source cell_10107 with piece_1062 using piece_1062_mem, ⟨piece_1162_mem, piece_1163_mem⟩

theorem linked_10108 : Linked cell_10108 pieces := by
  link_source cell_10108 with piece_1062 using piece_1062_mem, piece_1162_mem

theorem linked_10109 : Linked cell_10109 pieces := by
  link_source cell_10109 with piece_1062 using piece_1062_mem, piece_1162_mem

theorem linked_10110 : Linked cell_10110 pieces := by
  link_source cell_10110 with piece_1063 using piece_1063_mem, ⟨piece_1162_mem, piece_1163_mem⟩

theorem linked_10111 : Linked cell_10111 pieces := by
  link_source cell_10111 with piece_1063 using piece_1063_mem, piece_1162_mem

theorem linked_10112 : Linked cell_10112 pieces := by
  link_source cell_10112 with piece_1063 using piece_1063_mem, ⟨piece_1161_mem, piece_1162_mem⟩

theorem linked_10113 : Linked cell_10113 pieces := by
  link_source cell_10113 with piece_1063 using piece_1063_mem, piece_1161_mem

theorem linked_10114 : Linked cell_10114 pieces := by
  link_source cell_10114 with piece_1063 using piece_1063_mem, ⟨piece_1160_mem, piece_1161_mem⟩

theorem linked_10115 : Linked cell_10115 pieces := by
  link_source cell_10115 with piece_1064 using piece_1064_mem, ⟨piece_1161_mem, piece_1162_mem⟩

theorem linked_10116 : Linked cell_10116 pieces := by
  link_source cell_10116 with piece_1064 using piece_1064_mem, ⟨piece_1160_mem, piece_1161_mem⟩

theorem linked_10117 : Linked cell_10117 pieces := by
  link_source cell_10117 with piece_1064 using piece_1064_mem, piece_1160_mem

theorem linked_10118 : Linked cell_10118 pieces := by
  link_source cell_10118 with piece_1064 using piece_1064_mem, ⟨piece_1159_mem, piece_1160_mem⟩

theorem linked_10119 : Linked cell_10119 pieces := by
  link_source cell_10119 with piece_1064 using piece_1064_mem, piece_1159_mem

theorem linked_10120 : Linked cell_10120 pieces := by
  link_source cell_10120 with piece_1065 using piece_1065_mem, piece_1160_mem

theorem linked_10121 : Linked cell_10121 pieces := by
  link_source cell_10121 with piece_1065 using piece_1065_mem, ⟨piece_1159_mem, piece_1160_mem⟩

theorem linked_10122 : Linked cell_10122 pieces := by
  link_source cell_10122 with piece_1065 using piece_1065_mem, ⟨piece_1158_mem, piece_1159_mem⟩

theorem linked_10123 : Linked cell_10123 pieces := by
  link_source cell_10123 with piece_1065 using piece_1065_mem, piece_1158_mem

theorem linked_10124 : Linked cell_10124 pieces := by
  link_source cell_10124 with piece_1065 using piece_1065_mem, ⟨piece_1157_mem, piece_1158_mem⟩

theorem linked_10125 : Linked cell_10125 pieces := by
  link_source cell_10125 with piece_1066 using piece_1066_mem, ⟨piece_1158_mem, piece_1159_mem⟩

theorem linked_10126 : Linked cell_10126 pieces := by
  link_source cell_10126 with piece_1066 using piece_1066_mem, piece_1158_mem

theorem linked_10127 : Linked cell_10127 pieces := by
  link_source cell_10127 with piece_1066 using piece_1066_mem, ⟨piece_1156_mem, ⟨piece_1157_mem, piece_1158_mem⟩⟩

theorem linked_10128 : Linked cell_10128 pieces := by
  link_source cell_10128 with piece_1066 using piece_1066_mem, piece_1156_mem

theorem linked_10129 : Linked cell_10129 pieces := by
  link_source cell_10129 with piece_1066 using piece_1066_mem, ⟨piece_1155_mem, piece_1156_mem⟩

theorem linked_10130 : Linked cell_10130 pieces := by
  link_source cell_10130 with piece_1067 using piece_1067_mem, ⟨piece_1156_mem, ⟨piece_1157_mem, piece_1158_mem⟩⟩

theorem linked_10131 : Linked cell_10131 pieces := by
  link_source cell_10131 with piece_1067 using piece_1067_mem, piece_1156_mem

theorem linked_10132 : Linked cell_10132 pieces := by
  link_source cell_10132 with piece_1067 using piece_1067_mem, ⟨piece_1155_mem, piece_1156_mem⟩

theorem linked_10133 : Linked cell_10133 pieces := by
  link_source cell_10133 with piece_1067 using piece_1067_mem, piece_1155_mem

theorem linked_10134 : Linked cell_10134 pieces := by
  link_source cell_10134 with piece_1067 using piece_1067_mem, ⟨piece_1154_mem, piece_1155_mem⟩

theorem linked_10135 : Linked cell_10135 pieces := by
  link_source cell_10135 with piece_1068 using piece_1068_mem, ⟨piece_1155_mem, piece_1156_mem⟩

theorem linked_10136 : Linked cell_10136 pieces := by
  link_source cell_10136 with piece_1068 using piece_1068_mem, ⟨piece_1154_mem, piece_1155_mem⟩

theorem linked_10137 : Linked cell_10137 pieces := by
  link_source cell_10137 with piece_1068 using piece_1068_mem, piece_1154_mem

theorem linked_10138 : Linked cell_10138 pieces := by
  link_source cell_10138 with piece_1068 using piece_1068_mem, ⟨piece_1153_mem, piece_1154_mem⟩

theorem linked_10139 : Linked cell_10139 pieces := by
  link_source cell_10139 with piece_1068 using piece_1068_mem, piece_1153_mem

theorem linked_10140 : Linked cell_10140 pieces := by
  link_source cell_10140 with piece_1069 using piece_1069_mem, piece_1154_mem

theorem linked_10141 : Linked cell_10141 pieces := by
  link_source cell_10141 with piece_1069 using piece_1069_mem, ⟨piece_1153_mem, piece_1154_mem⟩

theorem linked_10142 : Linked cell_10142 pieces := by
  link_source cell_10142 with piece_1069 using piece_1069_mem, ⟨piece_1152_mem, piece_1153_mem⟩

theorem linked_10143 : Linked cell_10143 pieces := by
  link_source cell_10143 with piece_1069 using piece_1069_mem, piece_1152_mem

theorem linked_10144 : Linked cell_10144 pieces := by
  link_source cell_10144 with piece_1069 using piece_1069_mem, piece_1152_mem

theorem linked_10145 : Linked cell_10145 pieces := by
  link_source cell_10145 with piece_1070 using piece_1070_mem, ⟨piece_1152_mem, piece_1153_mem⟩

theorem linked_10146 : Linked cell_10146 pieces := by
  link_source cell_10146 with piece_1070 using piece_1070_mem, piece_1152_mem

theorem linked_10147 : Linked cell_10147 pieces := by
  link_source cell_10147 with piece_1070 using piece_1070_mem, ⟨piece_1151_mem, piece_1152_mem⟩

theorem linked_10148 : Linked cell_10148 pieces := by
  link_source cell_10148 with piece_1070 using piece_1070_mem, piece_1151_mem

theorem linked_10149 : Linked cell_10149 pieces := by
  link_source cell_10149 with piece_1070 using piece_1070_mem, piece_1151_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0202.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0202.cells,List.forall_mem_cons]
  exact ⟨linked_10100, linked_10101, linked_10102, linked_10103, linked_10104, linked_10105, linked_10106, linked_10107, linked_10108, linked_10109, linked_10110, linked_10111, linked_10112, linked_10113, linked_10114, linked_10115, linked_10116, linked_10117, linked_10118, linked_10119, linked_10120, linked_10121, linked_10122, linked_10123, linked_10124, linked_10125, linked_10126, linked_10127, linked_10128, linked_10129, linked_10130, linked_10131, linked_10132, linked_10133, linked_10134, linked_10135, linked_10136, linked_10137, linked_10138, linked_10139, linked_10140, linked_10141, linked_10142, linked_10143, linked_10144, linked_10145, linked_10146, linked_10147, linked_10148, linked_10149, by simp⟩

theorem covered : covers (441 / 1000 : ℚ) (44600000000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0202.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0202
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0203
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(44600000000000001 / 100000000000000000 : ℚ), (44612500000000001 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (65893633210083 / 100000000000000 : ℚ)
  w := (15202359026829 / 10000000000000 : ℚ)
  center := (44606250000000001 / 100000000000000000 : ℚ)
  supportValue := (4830159364357377 / 10000000000000000 : ℚ)
  supportSlope := (-5171400584375263 / 2000000000000000 : ℚ)
  oldCenter := (4830159364357377 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1071
  oldLo := (11962500000000001 / 25000000000000000 : ℚ)
  oldHi := (11975000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1142]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10150 : Cell := { cellDefaults with
  oldLo := (12062500000000001 / 25000000000000000 : ℚ)
  oldHi := (12087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1151, piece_1152]
}

def cell_10151 : Cell := { cellDefaults with
  domain := ⟨(44612500000000001 / 100000000000000000 : ℚ), (44625000000000001 / 100000000000000000 : ℚ)⟩
  center := (44618750000000001 / 100000000000000000 : ℚ)
  supportValue := (2413464285301913 / 5000000000000000 : ℚ)
  supportSlope := (-645813142968521 / 250000000000000 : ℚ)
  oldCenter := (2413464285301913 / 5000000000000000 : ℚ)
  oldLo := (12062500000000001 / 25000000000000000 : ℚ)
  oldHi := (12075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1151]
}

def cell_10152 : Cell := { cellDefaults with
  domain := ⟨(44625000000000001 / 100000000000000000 : ℚ), (44637500000000001 / 100000000000000000 : ℚ)⟩
  center := (44631250000000001 / 100000000000000000 : ℚ)
  supportValue := (24118504580647293 / 50000000000000000 : ℚ)
  supportSlope := (-1290527869135527 / 500000000000000 : ℚ)
  oldCenter := (24118504580647293 / 50000000000000000 : ℚ)
  oldLo := (12050000000000001 / 25000000000000000 : ℚ)
  oldHi := (12075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1150, piece_1151]
}

def cell_10153 : Cell := { cellDefaults with
  domain := ⟨(44637500000000001 / 100000000000000000 : ℚ), (44643750000000001 / 100000000000000000 : ℚ)⟩
  center := (44640625000000001 / 100000000000000000 : ℚ)
  supportValue := (48212787295318343 / 100000000000000000 : ℚ)
  supportSlope := (-5158010298302429 / 2000000000000000 : ℚ)
  oldCenter := (48212787295318343 / 100000000000000000 : ℚ)
  oldLo := (12050000000000001 / 25000000000000000 : ℚ)
  oldHi := (12062500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1150]
}

def cell_10154 : Cell := { cellDefaults with
  domain := ⟨(44643750000000001 / 100000000000000000 : ℚ), (44650000000000001 / 100000000000000000 : ℚ)⟩
  center := (44646875000000001 / 100000000000000000 : ℚ)
  supportValue := (48196672011215447 / 100000000000000000 : ℚ)
  supportSlope := (-25780875386480773 / 10000000000000000 : ℚ)
  oldCenter := (48196672011215447 / 100000000000000000 : ℚ)
  oldLo := (12037500000000001 / 25000000000000000 : ℚ)
  oldHi := (12062500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1149, piece_1150]
}

def cell_10155 : Cell := { cellDefaults with
  domain := ⟨(44650000000000001 / 100000000000000000 : ℚ), (44662500000000001 / 100000000000000000 : ℚ)⟩
  r := (4115849031707 / 6250000000000 : ℚ)
  w := (1519686787603 / 1000000000000 : ℚ)
  center := (44656250000000001 / 100000000000000000 : ℚ)
  supportValue := (2411984916486161 / 5000000000000000 : ℚ)
  supportSlope := (-2579620275810157 / 1000000000000000 : ℚ)
  oldCenter := (2411984916486161 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1072
  oldLo := (12050000000000001 / 25000000000000000 : ℚ)
  oldHi := (12075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1150, piece_1151]
}

def cell_10156 : Cell := { cellDefaults with
  domain := ⟨(44662500000000001 / 100000000000000000 : ℚ), (44675000000000001 / 100000000000000000 : ℚ)⟩
  r := (4115849031707 / 6250000000000 : ℚ)
  w := (1519686787603 / 1000000000000 : ℚ)
  center := (44668750000000001 / 100000000000000000 : ℚ)
  supportValue := (602593363925383 / 1250000000000000 : ℚ)
  supportSlope := (-12885569099232441 / 5000000000000000 : ℚ)
  oldCenter := (602593363925383 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1072
  oldLo := (12037500000000001 / 25000000000000000 : ℚ)
  oldHi := (12062500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1149, piece_1150]
}

def cell_10157 : Cell := { cellDefaults with
  domain := ⟨(44675000000000001 / 100000000000000000 : ℚ), (22341934357541899 / 50000000000000000 : ℚ)⟩
  r := (4115849031707 / 6250000000000 : ℚ)
  w := (1519686787603 / 1000000000000 : ℚ)
  center := (89358868715083799 / 200000000000000000 : ℚ)
  supportValue := (1204497749787103 / 2500000000000000 : ℚ)
  supportSlope := (-2575213958355397 / 1000000000000000 : ℚ)
  oldCenter := (1204497749787103 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1072
  oldLo := (12037500000000001 / 25000000000000000 : ℚ)
  oldHi := (12050000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1149]
}

def cell_10158 : Cell := { cellDefaults with
  domain := ⟨(22341934357541899 / 50000000000000000 : ℚ), (8938547486033519 / 20000000000000000 : ℚ)⟩
  r := (4115849031707 / 6250000000000 : ℚ)
  w := (1519686787603 / 1000000000000 : ℚ)
  center := (89376606145251393 / 200000000000000000 : ℚ)
  supportValue := (9631422742737581 / 20000000000000000 : ℚ)
  supportSlope := (-1608343809536911 / 625000000000000 : ℚ)
  oldCenter := (9631422742737581 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1072
  oldLo := (12025000000000001 / 25000000000000000 : ℚ)
  oldHi := (12050000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1148, piece_1149]
}

def cell_10159 : Cell := { cellDefaults with
  domain := ⟨(8938547486033519 / 20000000000000000 : ℚ), (44700000000000001 / 100000000000000000 : ℚ)⟩
  r := (4115849031707 / 6250000000000 : ℚ)
  w := (1519686787603 / 1000000000000 : ℚ)
  center := (22348184357541899 / 50000000000000000 : ℚ)
  supportValue := (6017041119449467 / 12500000000000000 : ℚ)
  supportSlope := (-1028839684642287 / 400000000000000 : ℚ)
  oldCenter := (6017041119449467 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1073
  oldLo := (12025000000000001 / 25000000000000000 : ℚ)
  oldHi := (12037500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1148]
}

def cell_10160 : Cell := { cellDefaults with
  domain := ⟨(44700000000000001 / 100000000000000000 : ℚ), (44712500000000001 / 100000000000000000 : ℚ)⟩
  r := (65813589140731 / 100000000000000 : ℚ)
  w := (15191387153237 / 10000000000000 : ℚ)
  center := (44706250000000001 / 100000000000000000 : ℚ)
  supportValue := (4817795862769849 / 10000000000000000 : ℚ)
  supportSlope := (-3216789879509907 / 1250000000000000 : ℚ)
  oldCenter := (4817795862769849 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1074
  oldLo := (12037500000000001 / 25000000000000000 : ℚ)
  oldHi := (12050000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1149]
}

def cell_10161 : Cell := { cellDefaults with
  domain := ⟨(44712500000000001 / 100000000000000000 : ℚ), (44725000000000001 / 100000000000000000 : ℚ)⟩
  r := (65813589140731 / 100000000000000 : ℚ)
  w := (15191387153237 / 10000000000000 : ℚ)
  center := (44718750000000001 / 100000000000000000 : ℚ)
  supportValue := (601822588882353 / 1250000000000000 : ℚ)
  supportSlope := (-1285531429306097 / 500000000000000 : ℚ)
  oldCenter := (601822588882353 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1074
  oldLo := (12025000000000001 / 25000000000000000 : ℚ)
  oldHi := (12050000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1148, piece_1149]
}

def cell_10162 : Cell := { cellDefaults with
  domain := ⟨(44725000000000001 / 100000000000000000 : ℚ), (44737500000000001 / 100000000000000000 : ℚ)⟩
  r := (65813589140731 / 100000000000000 : ℚ)
  w := (15191387153237 / 10000000000000 : ℚ)
  center := (44731250000000001 / 100000000000000000 : ℚ)
  supportValue := (601421039321319 / 1250000000000000 : ℚ)
  supportSlope := (-25685633325975843 / 10000000000000000 : ℚ)
  oldCenter := (601421039321319 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1074
  oldLo := (12012500000000001 / 25000000000000000 : ℚ)
  oldHi := (12037500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1147, piece_1148]
}

def cell_10163 : Cell := { cellDefaults with
  domain := ⟨(44737500000000001 / 100000000000000000 : ℚ), (44743750000000001 / 100000000000000000 : ℚ)⟩
  r := (65813589140731 / 100000000000000 : ℚ)
  w := (15191387153237 / 10000000000000 : ℚ)
  center := (44740625000000001 / 100000000000000000 : ℚ)
  supportValue := (24044788345507573 / 50000000000000000 : ℚ)
  supportSlope := (-5134211396342181 / 2000000000000000 : ℚ)
  oldCenter := (24044788345507573 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1074
  oldLo := (12012500000000001 / 25000000000000000 : ℚ)
  oldHi := (12025000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1147]
}

def cell_10164 : Cell := { cellDefaults with
  domain := ⟨(44743750000000001 / 100000000000000000 : ℚ), (44750000000000001 / 100000000000000000 : ℚ)⟩
  r := (65813589140731 / 100000000000000 : ℚ)
  w := (15191387153237 / 10000000000000 : ℚ)
  center := (44746875000000001 / 100000000000000000 : ℚ)
  supportValue := (3004596041457349 / 6250000000000000 : ℚ)
  supportSlope := (-2565702057001573 / 1000000000000000 : ℚ)
  oldCenter := (3004596041457349 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1074
  oldLo := (12012500000000001 / 25000000000000000 : ℚ)
  oldHi := (12025000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1147]
}

def cell_10165 : Cell := { cellDefaults with
  domain := ⟨(44750000000000001 / 100000000000000000 : ℚ), (44762500000000001 / 100000000000000000 : ℚ)⟩
  r := (13154729568587 / 20000000000000 : ℚ)
  w := (1898239694493 / 1250000000000 : ℚ)
  center := (44756250000000001 / 100000000000000000 : ℚ)
  supportValue := (4811637096696817 / 10000000000000000 : ℚ)
  supportSlope := (-1283571080826551 / 500000000000000 : ℚ)
  oldCenter := (4811637096696817 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1075
  oldLo := (12025000000000001 / 25000000000000000 : ℚ)
  oldHi := (12037500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1148]
}

def cell_10166 : Cell := { cellDefaults with
  domain := ⟨(44762500000000001 / 100000000000000000 : ℚ), (44775000000000001 / 100000000000000000 : ℚ)⟩
  r := (13154729568587 / 20000000000000 : ℚ)
  w := (1898239694493 / 1250000000000 : ℚ)
  center := (44768750000000001 / 100000000000000000 : ℚ)
  supportValue := (2404214743805039 / 5000000000000000 : ℚ)
  supportSlope := (-1282516570811687 / 500000000000000 : ℚ)
  oldCenter := (2404214743805039 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1075
  oldLo := (12012500000000001 / 25000000000000000 : ℚ)
  oldHi := (12037500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1147, piece_1148]
}

def cell_10167 : Cell := { cellDefaults with
  domain := ⟨(44775000000000001 / 100000000000000000 : ℚ), (44787500000000001 / 100000000000000000 : ℚ)⟩
  r := (13154729568587 / 20000000000000 : ℚ)
  w := (1898239694493 / 1250000000000 : ℚ)
  center := (44781250000000001 / 100000000000000000 : ℚ)
  supportValue := (4805224936432501 / 10000000000000000 : ℚ)
  supportSlope := (-6406353641945639 / 2500000000000000 : ℚ)
  oldCenter := (4805224936432501 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1075
  oldLo := (2400558659217877 / 5000000000000000 : ℚ)
  oldHi := (12025000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1146, piece_1147]
}

def cell_10168 : Cell := { cellDefaults with
  domain := ⟨(44787500000000001 / 100000000000000000 : ℚ), (44793750000000001 / 100000000000000000 : ℚ)⟩
  r := (13154729568587 / 20000000000000 : ℚ)
  w := (1898239694493 / 1250000000000 : ℚ)
  center := (44790625000000001 / 100000000000000000 : ℚ)
  supportValue := (96056397193219 / 200000000000000 : ℚ)
  supportSlope := (-12804202963323519 / 5000000000000000 : ℚ)
  oldCenter := (96056397193219 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1075
  oldLo := (2400558659217877 / 5000000000000000 : ℚ)
  oldHi := (12012500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1146]
}

def cell_10169 : Cell := { cellDefaults with
  domain := ⟨(44793750000000001 / 100000000000000000 : ℚ), (44800000000000001 / 100000000000000000 : ℚ)⟩
  r := (13154729568587 / 20000000000000 : ℚ)
  w := (1898239694493 / 1250000000000 : ℚ)
  center := (44796875000000001 / 100000000000000000 : ℚ)
  supportValue := (960243954219177 / 2000000000000000 : ℚ)
  supportSlope := (-6398604399486807 / 2500000000000000 : ℚ)
  oldCenter := (960243954219177 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1075
  oldLo := (12000000000000001 / 25000000000000000 : ℚ)
  oldHi := (12012500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1145, piece_1146]
}

def cell_10170 : Cell := { cellDefaults with
  domain := ⟨(44800000000000001 / 100000000000000000 : ℚ), (44812500000000001 / 100000000000000000 : ℚ)⟩
  r := (65733759922413 / 100000000000000 : ℚ)
  w := (1518045998589 / 1000000000000 : ℚ)
  center := (44806250000000001 / 100000000000000000 : ℚ)
  supportValue := (480549324592753 / 1000000000000000 : ℚ)
  supportSlope := (-25611185434355477 / 10000000000000000 : ℚ)
  oldCenter := (480549324592753 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1076
  oldLo := (2400558659217877 / 5000000000000000 : ℚ)
  oldHi := (12025000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1146, piece_1147]
}

def cell_10171 : Cell := { cellDefaults with
  domain := ⟨(44812500000000001 / 100000000000000000 : ℚ), (44825000000000001 / 100000000000000000 : ℚ)⟩
  r := (65733759922413 / 100000000000000 : ℚ)
  w := (1518045998589 / 1000000000000 : ℚ)
  center := (44818750000000001 / 100000000000000000 : ℚ)
  supportValue := (48022931532572727 / 100000000000000000 : ℚ)
  supportSlope := (-127939044348091 / 50000000000000 : ℚ)
  oldCenter := (48022931532572727 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1076
  oldLo := (12000000000000001 / 25000000000000000 : ℚ)
  oldHi := (12012500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1145, piece_1146]
}

def cell_10172 : Cell := { cellDefaults with
  domain := ⟨(44825000000000001 / 100000000000000000 : ℚ), (44837500000000001 / 100000000000000000 : ℚ)⟩
  r := (65733759922413 / 100000000000000 : ℚ)
  w := (1518045998589 / 1000000000000 : ℚ)
  center := (44831250000000001 / 100000000000000000 : ℚ)
  supportValue := (4799096169148437 / 10000000000000000 : ℚ)
  supportSlope := (-25565405129119867 / 10000000000000000 : ℚ)
  oldCenter := (4799096169148437 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1076
  oldLo := (11987500000000001 / 25000000000000000 : ℚ)
  oldHi := (2400558659217877 / 5000000000000000 : ℚ)
  oldPieces := [piece_1144, piece_1145]
}

def cell_10173 : Cell := { cellDefaults with
  domain := ⟨(44837500000000001 / 100000000000000000 : ℚ), (44843750000000001 / 100000000000000000 : ℚ)⟩
  r := (65733759922413 / 100000000000000 : ℚ)
  w := (1518045998589 / 1000000000000 : ℚ)
  center := (44840625000000001 / 100000000000000000 : ℚ)
  supportValue := (23983484459971513 / 50000000000000000 : ℚ)
  supportSlope := (-5109196046788611 / 2000000000000000 : ℚ)
  oldCenter := (23983484459971513 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1076
  oldLo := (11987500000000001 / 25000000000000000 : ℚ)
  oldHi := (12000000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1144]
}

def cell_10174 : Cell := { cellDefaults with
  domain := ⟨(44843750000000001 / 100000000000000000 : ℚ), (44850000000000001 / 100000000000000000 : ℚ)⟩
  r := (65733759922413 / 100000000000000 : ℚ)
  w := (1518045998589 / 1000000000000 : ℚ)
  center := (44846875000000001 / 100000000000000000 : ℚ)
  supportValue := (47951007035661153 / 100000000000000000 : ℚ)
  supportSlope := (-5107026112700197 / 2000000000000000 : ℚ)
  oldCenter := (47951007035661153 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1076
  oldLo := (11975000000000001 / 25000000000000000 : ℚ)
  oldHi := (12000000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1143, piece_1144]
}

def cell_10175 : Cell := { cellDefaults with
  domain := ⟨(44850000000000001 / 100000000000000000 : ℚ), (44862500000000001 / 100000000000000000 : ℚ)⟩
  r := (65693924845293 / 100000000000000 : ℚ)
  w := (3035002866069 / 2000000000000 : ℚ)
  center := (44856250000000001 / 100000000000000000 : ℚ)
  supportValue := (23996820789922363 / 50000000000000000 : ℚ)
  supportSlope := (-2555121917372283 / 1000000000000000 : ℚ)
  oldCenter := (23996820789922363 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1077
  oldLo := (11987500000000001 / 25000000000000000 : ℚ)
  oldHi := (2400558659217877 / 5000000000000000 : ℚ)
  oldPieces := [piece_1144, piece_1145]
}

def cell_10176 : Cell := { cellDefaults with
  domain := ⟨(44862500000000001 / 100000000000000000 : ℚ), (44875000000000001 / 100000000000000000 : ℚ)⟩
  r := (65693924845293 / 100000000000000 : ℚ)
  w := (3035002866069 / 2000000000000 : ℚ)
  center := (44868750000000001 / 100000000000000000 : ℚ)
  supportValue := (59952146649491 / 125000000000000 : ℚ)
  supportSlope := (-102105593377253 / 40000000000000 : ℚ)
  oldCenter := (59952146649491 / 125000000000000 : ℚ)
  newCoefficients := coefficients_1077
  oldLo := (11975000000000001 / 25000000000000000 : ℚ)
  oldHi := (12000000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1143, piece_1144]
}

def cell_10177 : Cell := { cellDefaults with
  domain := ⟨(44875000000000001 / 100000000000000000 : ℚ), (44887500000000001 / 100000000000000000 : ℚ)⟩
  r := (65693924845293 / 100000000000000 : ℚ)
  w := (3035002866069 / 2000000000000 : ℚ)
  center := (44881250000000001 / 100000000000000000 : ℚ)
  supportValue := (958596445705343 / 2000000000000000 : ℚ)
  supportSlope := (-637616382076267 / 250000000000000 : ℚ)
  oldCenter := (958596445705343 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1077
  oldLo := (11975000000000001 / 25000000000000000 : ℚ)
  oldHi := (11987500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1143]
}

def cell_10178 : Cell := { cellDefaults with
  domain := ⟨(44887500000000001 / 100000000000000000 : ℚ), (44893750000000001 / 100000000000000000 : ℚ)⟩
  r := (65693924845293 / 100000000000000 : ℚ)
  w := (3035002866069 / 2000000000000 : ℚ)
  center := (44890625000000001 / 100000000000000000 : ℚ)
  supportValue := (2395294395155217 / 5000000000000000 : ℚ)
  supportSlope := (-5096941952050571 / 2000000000000000 : ℚ)
  oldCenter := (2395294395155217 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1077
  oldHi := (11987500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1142, piece_1143]
}

def cell_10179 : Cell := { cellDefaults with
  domain := ⟨(44893750000000001 / 100000000000000000 : ℚ), (44900000000000001 / 100000000000000000 : ℚ)⟩
  r := (65693924845293 / 100000000000000 : ℚ)
  w := (3035002866069 / 2000000000000 : ℚ)
  center := (44896875000000001 / 100000000000000000 : ℚ)
  supportValue := (4788996208638573 / 10000000000000000 : ℚ)
  supportSlope := (-25476952424732247 / 10000000000000000 : ℚ)
  oldCenter := (4788996208638573 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1077
  oldPieces := [piece_1142]
}

def cell_10180 : Cell := { cellDefaults with
  domain := ⟨(44900000000000001 / 100000000000000000 : ℚ), (44912500000000001 / 100000000000000000 : ℚ)⟩
  r := (32827071729833 / 50000000000000 : ℚ)
  w := (3792394703 / 2500000000 : ℚ)
  center := (44906250000000001 / 100000000000000000 : ℚ)
  supportValue := (2995781419229299 / 6250000000000000 : ℚ)
  supportSlope := (-12745553208053373 / 5000000000000000 : ℚ)
  oldCenter := (2995781419229299 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1078
  oldLo := (11975000000000001 / 25000000000000000 : ℚ)
  oldHi := (11987500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1143]
}

def cell_10181 : Cell := { cellDefaults with
  domain := ⟨(44912500000000001 / 100000000000000000 : ℚ), (44925000000000001 / 100000000000000000 : ℚ)⟩
  r := (32827071729833 / 50000000000000 : ℚ)
  w := (3792394703 / 2500000000 : ℚ)
  center := (44918750000000001 / 100000000000000000 : ℚ)
  supportValue := (149689550531639 / 312500000000000 : ℚ)
  supportSlope := (-2546671914254617 / 1000000000000000 : ℚ)
  oldCenter := (149689550531639 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1078
  oldHi := (11987500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1142, piece_1143]
}

def cell_10182 : Cell := { cellDefaults with
  domain := ⟨(44925000000000001 / 100000000000000000 : ℚ), (44937500000000001 / 100000000000000000 : ℚ)⟩
  r := (32827071729833 / 50000000000000 : ℚ)
  w := (3792394703 / 2500000000 : ℚ)
  center := (44931250000000001 / 100000000000000000 : ℚ)
  supportValue := (119672089201807 / 250000000000000 : ℚ)
  supportSlope := (-318032632231513 / 125000000000000 : ℚ)
  oldCenter := (119672089201807 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1078
  oldPieces := [piece_1142]
}

def cell_10183 : Cell := { cellDefaults with
  domain := ⟨(44937500000000001 / 100000000000000000 : ℚ), (44943750000000001 / 100000000000000000 : ℚ)⟩
  r := (32827071729833 / 50000000000000 : ℚ)
  w := (3792394703 / 2500000000 : ℚ)
  center := (44940625000000001 / 100000000000000000 : ℚ)
  supportValue := (1196123951556593 / 2500000000000000 : ℚ)
  supportSlope := (-1271380583782289 / 500000000000000 : ℚ)
  oldCenter := (1196123951556593 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1078
  oldLo := (11950000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1141, piece_1142]
}

def cell_10184 : Cell := { cellDefaults with
  domain := ⟨(44943750000000001 / 100000000000000000 : ℚ), (44950000000000001 / 100000000000000000 : ℚ)⟩
  r := (32827071729833 / 50000000000000 : ℚ)
  w := (3792394703 / 2500000000 : ℚ)
  center := (44946875000000001 / 100000000000000000 : ℚ)
  supportValue := (47829069332699903 / 100000000000000000 : ℚ)
  supportSlope := (-2541501709298899 / 1000000000000000 : ℚ)
  oldCenter := (47829069332699903 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1078
  oldLo := (11950000000000001 / 25000000000000000 : ℚ)
  oldHi := (11962500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1141]
}

def cell_10185 : Cell := { cellDefaults with
  domain := ⟨(44950000000000001 / 100000000000000000 : ℚ), (44962500000000001 / 100000000000000000 : ℚ)⟩
  r := (32807207439291 / 50000000000000 : ℚ)
  w := (7582077157461 / 5000000000000 : ℚ)
  center := (44956250000000001 / 100000000000000000 : ℚ)
  supportValue := (47871514605989507 / 100000000000000000 : ℚ)
  supportSlope := (-508582141487679 / 200000000000000 : ℚ)
  oldCenter := (47871514605989507 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1079
  oldPieces := [piece_1142]
}

def cell_10186 : Cell := { cellDefaults with
  domain := ⟨(44962500000000001 / 100000000000000000 : ℚ), (44975000000000001 / 100000000000000000 : ℚ)⟩
  r := (32807207439291 / 50000000000000 : ℚ)
  w := (7582077157461 / 5000000000000 : ℚ)
  center := (44968750000000001 / 100000000000000000 : ℚ)
  supportValue := (4783974263209889 / 10000000000000000 : ℚ)
  supportSlope := (-2540724669198191 / 1000000000000000 : ℚ)
  oldCenter := (4783974263209889 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1079
  oldLo := (11950000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1141, piece_1142]
}

def cell_10187 : Cell := { cellDefaults with
  domain := ⟨(44975000000000001 / 100000000000000000 : ℚ), (44987500000000001 / 100000000000000000 : ℚ)⟩
  r := (32807207439291 / 50000000000000 : ℚ)
  w := (7582077157461 / 5000000000000 : ℚ)
  center := (44981250000000001 / 100000000000000000 : ℚ)
  supportValue := (23903999654176497 / 50000000000000000 : ℚ)
  supportSlope := (-25382564558293907 / 10000000000000000 : ℚ)
  oldCenter := (23903999654176497 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1079
  oldLo := (11937500000000001 / 25000000000000000 : ℚ)
  oldHi := (11962500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1140, piece_1141]
}

def cell_10188 : Cell := { cellDefaults with
  domain := ⟨(44987500000000001 / 100000000000000000 : ℚ), (45000000000000001 / 100000000000000000 : ℚ)⟩
  r := (32807207439291 / 50000000000000 : ℚ)
  w := (7582077157461 / 5000000000000 : ℚ)
  center := (44993750000000001 / 100000000000000000 : ℚ)
  supportValue := (4777628392083947 / 10000000000000000 : ℚ)
  supportSlope := (-25360225949473403 / 10000000000000000 : ℚ)
  oldCenter := (4777628392083947 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1079
  oldLo := (11937500000000001 / 25000000000000000 : ℚ)
  oldHi := (11950000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1140]
}

def cell_10189 : Cell := { cellDefaults with
  domain := ⟨(45000000000000001 / 100000000000000000 : ℚ), (45012500000000001 / 100000000000000000 : ℚ)⟩
  r := (16393684919611 / 25000000000000 : ℚ)
  w := (3789685353541 / 2500000000000 : ℚ)
  center := (45006250000000001 / 100000000000000000 : ℚ)
  supportValue := (191242695699601 / 400000000000000 : ℚ)
  supportSlope := (-12684250474319647 / 5000000000000000 : ℚ)
  oldCenter := (191242695699601 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1080
  oldLo := (11937500000000001 / 25000000000000000 : ℚ)
  oldHi := (11962500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1140, piece_1141]
}

def cell_10190 : Cell := { cellDefaults with
  domain := ⟨(45012500000000001 / 100000000000000000 : ℚ), (45025000000000001 / 100000000000000000 : ℚ)⟩
  r := (16393684919611 / 25000000000000 : ℚ)
  w := (3789685353541 / 2500000000000 : ℚ)
  center := (45018750000000001 / 100000000000000000 : ℚ)
  supportValue := (9555795218674763 / 20000000000000000 : ℚ)
  supportSlope := (-79208757553767 / 31250000000000 : ℚ)
  oldCenter := (9555795218674763 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1080
  oldLo := (11937500000000001 / 25000000000000000 : ℚ)
  oldHi := (11950000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1140]
}

def cell_10191 : Cell := { cellDefaults with
  domain := ⟨(45025000000000001 / 100000000000000000 : ℚ), (45037500000000001 / 100000000000000000 : ℚ)⟩
  r := (16393684919611 / 25000000000000 : ℚ)
  w := (3789685353541 / 2500000000000 : ℚ)
  center := (45031250000000001 / 100000000000000000 : ℚ)
  supportValue := (4774730905384373 / 10000000000000000 : ℚ)
  supportSlope := (-25323372566328217 / 10000000000000000 : ℚ)
  oldCenter := (4774730905384373 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1080
  oldLo := (11925000000000001 / 25000000000000000 : ℚ)
  oldHi := (11950000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1139, piece_1140]
}

def cell_10192 : Cell := { cellDefaults with
  domain := ⟨(45037500000000001 / 100000000000000000 : ℚ), (45050000000000001 / 100000000000000000 : ℚ)⟩
  r := (16393684919611 / 25000000000000 : ℚ)
  w := (3789685353541 / 2500000000000 : ℚ)
  center := (45043750000000001 / 100000000000000000 : ℚ)
  supportValue := (9543133675285399 / 20000000000000000 : ℚ)
  supportSlope := (-2529875433069151 / 1000000000000000 : ℚ)
  oldCenter := (9543133675285399 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1080
  oldLo := (47650000000000003 / 100000000000000000 : ℚ)
  oldHi := (11937500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1138, piece_1139]
}

def cell_10193 : Cell := { cellDefaults with
  domain := ⟨(45050000000000001 / 100000000000000000 : ℚ), (45062500000000001 / 100000000000000000 : ℚ)⟩
  r := (32767558495411 / 50000000000000 : ℚ)
  w := (15153340075979 / 10000000000000 : ℚ)
  center := (45056250000000001 / 100000000000000000 : ℚ)
  supportValue := (47749981050802187 / 100000000000000000 : ℚ)
  supportSlope := (-790917288511217 / 312500000000000 : ℚ)
  oldCenter := (47749981050802187 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1081
  oldLo := (11925000000000001 / 25000000000000000 : ℚ)
  oldHi := (11950000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1139, piece_1140]
}

def cell_10194 : Cell := { cellDefaults with
  domain := ⟨(45062500000000001 / 100000000000000000 : ℚ), (45075000000000001 / 100000000000000000 : ℚ)⟩
  r := (32767558495411 / 50000000000000 : ℚ)
  w := (15153340075979 / 10000000000000 : ℚ)
  center := (45068750000000001 / 100000000000000000 : ℚ)
  supportValue := (954367142384737 / 2000000000000000 : ℚ)
  supportSlope := (-12642666490618737 / 5000000000000000 : ℚ)
  oldCenter := (954367142384737 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1081
  oldLo := (11925000000000001 / 25000000000000000 : ℚ)
  oldHi := (11937500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1139]
}

def cell_10195 : Cell := { cellDefaults with
  domain := ⟨(45075000000000001 / 100000000000000000 : ℚ), (45087500000000001 / 100000000000000000 : ℚ)⟩
  r := (32767558495411 / 50000000000000 : ℚ)
  w := (15153340075979 / 10000000000000 : ℚ)
  center := (45081250000000001 / 100000000000000000 : ℚ)
  supportValue := (2980422741825969 / 6250000000000000 : ℚ)
  supportSlope := (-25264383735068563 / 10000000000000000 : ℚ)
  oldCenter := (2980422741825969 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1081
  oldLo := (47650000000000003 / 100000000000000000 : ℚ)
  oldHi := (11937500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1138, piece_1139]
}

def cell_10196 : Cell := { cellDefaults with
  domain := ⟨(45087500000000001 / 100000000000000000 : ℚ), (45093750000000001 / 100000000000000000 : ℚ)⟩
  r := (32767558495411 / 50000000000000 : ℚ)
  w := (15153340075979 / 10000000000000 : ℚ)
  center := (45090625000000001 / 100000000000000000 : ℚ)
  supportValue := (9532610855227709 / 20000000000000000 : ℚ)
  supportSlope := (-25244293399122597 / 10000000000000000 : ℚ)
  oldCenter := (9532610855227709 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1081
  oldLo := (47650000000000003 / 100000000000000000 : ℚ)
  oldHi := (11925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1138]
}

def cell_10197 : Cell := { cellDefaults with
  domain := ⟨(45093750000000001 / 100000000000000000 : ℚ), (45100000000000001 / 100000000000000000 : ℚ)⟩
  r := (32767558495411 / 50000000000000 : ℚ)
  w := (15153340075979 / 10000000000000 : ℚ)
  center := (45096875000000001 / 100000000000000000 : ℚ)
  supportValue := (2382364005317327 / 5000000000000000 : ℚ)
  supportSlope := (-25235385020536683 / 10000000000000000 : ℚ)
  oldCenter := (2382364005317327 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1081
  oldLo := (47600000000000003 / 100000000000000000 : ℚ)
  oldHi := (11925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1137, piece_1138]
}

def cell_10198 : Cell := { cellDefaults with
  domain := ⟨(45100000000000001 / 100000000000000000 : ℚ), (45112500000000001 / 100000000000000000 : ℚ)⟩
  r := (65495547237759 / 100000000000000 : ℚ)
  w := (7573974879269 / 5000000000000 : ℚ)
  center := (45106250000000001 / 100000000000000000 : ℚ)
  supportValue := (4768943348188213 / 10000000000000000 : ℚ)
  supportSlope := (-1262520401259959 / 500000000000000 : ℚ)
  oldCenter := (4768943348188213 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1082
  oldLo := (47650000000000003 / 100000000000000000 : ℚ)
  oldHi := (11937500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1138, piece_1139]
}

def cell_10199 : Cell := { cellDefaults with
  domain := ⟨(45112500000000001 / 100000000000000000 : ℚ), (45125000000000001 / 100000000000000000 : ℚ)⟩
  r := (65495547237759 / 100000000000000 : ℚ)
  w := (7573974879269 / 5000000000000 : ℚ)
  center := (45118750000000001 / 100000000000000000 : ℚ)
  supportValue := (9531577233808819 / 20000000000000000 : ℚ)
  supportSlope := (-3153236323376607 / 1250000000000000 : ℚ)
  oldCenter := (9531577233808819 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1082
  oldLo := (47600000000000003 / 100000000000000000 : ℚ)
  oldHi := (11925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1137, piece_1138]
}

theorem check_10150 : cell_10150.check = true := by
  decide +kernel

theorem check_10151 : cell_10151.check = true := by
  decide +kernel

theorem check_10152 : cell_10152.check = true := by
  decide +kernel

theorem check_10153 : cell_10153.check = true := by
  decide +kernel

theorem check_10154 : cell_10154.check = true := by
  decide +kernel

theorem check_10155 : cell_10155.check = true := by
  decide +kernel

theorem check_10156 : cell_10156.check = true := by
  decide +kernel

theorem check_10157 : cell_10157.check = true := by
  decide +kernel

theorem check_10158 : cell_10158.check = true := by
  decide +kernel

theorem check_10159 : cell_10159.check = true := by
  decide +kernel

theorem check_10160 : cell_10160.check = true := by
  decide +kernel

theorem check_10161 : cell_10161.check = true := by
  decide +kernel

theorem check_10162 : cell_10162.check = true := by
  decide +kernel

theorem check_10163 : cell_10163.check = true := by
  decide +kernel

theorem check_10164 : cell_10164.check = true := by
  decide +kernel

theorem check_10165 : cell_10165.check = true := by
  decide +kernel

theorem check_10166 : cell_10166.check = true := by
  decide +kernel

theorem check_10167 : cell_10167.check = true := by
  decide +kernel

theorem check_10168 : cell_10168.check = true := by
  decide +kernel

theorem check_10169 : cell_10169.check = true := by
  decide +kernel

theorem check_10170 : cell_10170.check = true := by
  decide +kernel

theorem check_10171 : cell_10171.check = true := by
  decide +kernel

theorem check_10172 : cell_10172.check = true := by
  decide +kernel

theorem check_10173 : cell_10173.check = true := by
  decide +kernel

theorem check_10174 : cell_10174.check = true := by
  decide +kernel

theorem check_10175 : cell_10175.check = true := by
  decide +kernel

theorem check_10176 : cell_10176.check = true := by
  decide +kernel

theorem check_10177 : cell_10177.check = true := by
  decide +kernel

theorem check_10178 : cell_10178.check = true := by
  decide +kernel

theorem check_10179 : cell_10179.check = true := by
  decide +kernel

theorem check_10180 : cell_10180.check = true := by
  decide +kernel

theorem check_10181 : cell_10181.check = true := by
  decide +kernel

theorem check_10182 : cell_10182.check = true := by
  decide +kernel

theorem check_10183 : cell_10183.check = true := by
  decide +kernel

theorem check_10184 : cell_10184.check = true := by
  decide +kernel

theorem check_10185 : cell_10185.check = true := by
  decide +kernel

theorem check_10186 : cell_10186.check = true := by
  decide +kernel

theorem check_10187 : cell_10187.check = true := by
  decide +kernel

theorem check_10188 : cell_10188.check = true := by
  decide +kernel

theorem check_10189 : cell_10189.check = true := by
  decide +kernel

theorem check_10190 : cell_10190.check = true := by
  decide +kernel

theorem check_10191 : cell_10191.check = true := by
  decide +kernel

theorem check_10192 : cell_10192.check = true := by
  decide +kernel

theorem check_10193 : cell_10193.check = true := by
  decide +kernel

theorem check_10194 : cell_10194.check = true := by
  decide +kernel

theorem check_10195 : cell_10195.check = true := by
  decide +kernel

theorem check_10196 : cell_10196.check = true := by
  decide +kernel

theorem check_10197 : cell_10197.check = true := by
  decide +kernel

theorem check_10198 : cell_10198.check = true := by
  decide +kernel

theorem check_10199 : cell_10199.check = true := by
  decide +kernel

def cells : List Cell := [cell_10150, cell_10151, cell_10152, cell_10153, cell_10154, cell_10155, cell_10156, cell_10157, cell_10158, cell_10159, cell_10160, cell_10161, cell_10162, cell_10163, cell_10164, cell_10165, cell_10166, cell_10167, cell_10168, cell_10169, cell_10170, cell_10171, cell_10172, cell_10173, cell_10174, cell_10175, cell_10176, cell_10177, cell_10178, cell_10179, cell_10180, cell_10181, cell_10182, cell_10183, cell_10184, cell_10185, cell_10186, cell_10187, cell_10188, cell_10189, cell_10190, cell_10191, cell_10192, cell_10193, cell_10194, cell_10195, cell_10196, cell_10197, cell_10198, cell_10199]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10150, check_10151, check_10152, check_10153, check_10154, check_10155, check_10156, check_10157, check_10158, check_10159, check_10160, check_10161, check_10162, check_10163, check_10164, check_10165, check_10166, check_10167, check_10168, check_10169, check_10170, check_10171, check_10172, check_10173, check_10174, check_10175, check_10176, check_10177, check_10178, check_10179, check_10180, check_10181, check_10182, check_10183, check_10184, check_10185, check_10186, check_10187, check_10188, check_10189, check_10190, check_10191, check_10192, check_10193, check_10194, check_10195, check_10196, check_10197, check_10198, check_10199, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0203

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0203
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0203
open AnalyticBounds.ExpressionCertificate

theorem linked_10150 : Linked cell_10150 pieces := by
  link_source cell_10150 with piece_1071 using piece_1071_mem, ⟨piece_1151_mem, piece_1152_mem⟩

theorem linked_10151 : Linked cell_10151 pieces := by
  link_source cell_10151 with piece_1071 using piece_1071_mem, piece_1151_mem

theorem linked_10152 : Linked cell_10152 pieces := by
  link_source cell_10152 with piece_1071 using piece_1071_mem, ⟨piece_1150_mem, piece_1151_mem⟩

theorem linked_10153 : Linked cell_10153 pieces := by
  link_source cell_10153 with piece_1071 using piece_1071_mem, piece_1150_mem

theorem linked_10154 : Linked cell_10154 pieces := by
  link_source cell_10154 with piece_1071 using piece_1071_mem, ⟨piece_1149_mem, piece_1150_mem⟩

theorem linked_10155 : Linked cell_10155 pieces := by
  link_source cell_10155 with piece_1072 using piece_1072_mem, ⟨piece_1150_mem, piece_1151_mem⟩

theorem linked_10156 : Linked cell_10156 pieces := by
  link_source cell_10156 with piece_1072 using piece_1072_mem, ⟨piece_1149_mem, piece_1150_mem⟩

theorem linked_10157 : Linked cell_10157 pieces := by
  link_source cell_10157 with piece_1072 using piece_1072_mem, piece_1149_mem

theorem linked_10158 : Linked cell_10158 pieces := by
  link_source cell_10158 with piece_1072 using piece_1072_mem, ⟨piece_1148_mem, piece_1149_mem⟩

theorem linked_10159 : Linked cell_10159 pieces := by
  link_source cell_10159 with piece_1073 using piece_1073_mem, piece_1148_mem

theorem linked_10160 : Linked cell_10160 pieces := by
  link_source cell_10160 with piece_1074 using piece_1074_mem, piece_1149_mem

theorem linked_10161 : Linked cell_10161 pieces := by
  link_source cell_10161 with piece_1074 using piece_1074_mem, ⟨piece_1148_mem, piece_1149_mem⟩

theorem linked_10162 : Linked cell_10162 pieces := by
  link_source cell_10162 with piece_1074 using piece_1074_mem, ⟨piece_1147_mem, piece_1148_mem⟩

theorem linked_10163 : Linked cell_10163 pieces := by
  link_source cell_10163 with piece_1074 using piece_1074_mem, piece_1147_mem

theorem linked_10164 : Linked cell_10164 pieces := by
  link_source cell_10164 with piece_1074 using piece_1074_mem, piece_1147_mem

theorem linked_10165 : Linked cell_10165 pieces := by
  link_source cell_10165 with piece_1075 using piece_1075_mem, piece_1148_mem

theorem linked_10166 : Linked cell_10166 pieces := by
  link_source cell_10166 with piece_1075 using piece_1075_mem, ⟨piece_1147_mem, piece_1148_mem⟩

theorem linked_10167 : Linked cell_10167 pieces := by
  link_source cell_10167 with piece_1075 using piece_1075_mem, ⟨piece_1146_mem, piece_1147_mem⟩

theorem linked_10168 : Linked cell_10168 pieces := by
  link_source cell_10168 with piece_1075 using piece_1075_mem, piece_1146_mem

theorem linked_10169 : Linked cell_10169 pieces := by
  link_source cell_10169 with piece_1075 using piece_1075_mem, ⟨piece_1145_mem, piece_1146_mem⟩

theorem linked_10170 : Linked cell_10170 pieces := by
  link_source cell_10170 with piece_1076 using piece_1076_mem, ⟨piece_1146_mem, piece_1147_mem⟩

theorem linked_10171 : Linked cell_10171 pieces := by
  link_source cell_10171 with piece_1076 using piece_1076_mem, ⟨piece_1145_mem, piece_1146_mem⟩

theorem linked_10172 : Linked cell_10172 pieces := by
  link_source cell_10172 with piece_1076 using piece_1076_mem, ⟨piece_1144_mem, piece_1145_mem⟩

theorem linked_10173 : Linked cell_10173 pieces := by
  link_source cell_10173 with piece_1076 using piece_1076_mem, piece_1144_mem

theorem linked_10174 : Linked cell_10174 pieces := by
  link_source cell_10174 with piece_1076 using piece_1076_mem, ⟨piece_1143_mem, piece_1144_mem⟩

theorem linked_10175 : Linked cell_10175 pieces := by
  link_source cell_10175 with piece_1077 using piece_1077_mem, ⟨piece_1144_mem, piece_1145_mem⟩

theorem linked_10176 : Linked cell_10176 pieces := by
  link_source cell_10176 with piece_1077 using piece_1077_mem, ⟨piece_1143_mem, piece_1144_mem⟩

theorem linked_10177 : Linked cell_10177 pieces := by
  link_source cell_10177 with piece_1077 using piece_1077_mem, piece_1143_mem

theorem linked_10178 : Linked cell_10178 pieces := by
  link_source cell_10178 with piece_1077 using piece_1077_mem, ⟨piece_1142_mem, piece_1143_mem⟩

theorem linked_10179 : Linked cell_10179 pieces := by
  link_source cell_10179 with piece_1077 using piece_1077_mem, piece_1142_mem

theorem linked_10180 : Linked cell_10180 pieces := by
  link_source cell_10180 with piece_1078 using piece_1078_mem, piece_1143_mem

theorem linked_10181 : Linked cell_10181 pieces := by
  link_source cell_10181 with piece_1078 using piece_1078_mem, ⟨piece_1142_mem, piece_1143_mem⟩

theorem linked_10182 : Linked cell_10182 pieces := by
  link_source cell_10182 with piece_1078 using piece_1078_mem, piece_1142_mem

theorem linked_10183 : Linked cell_10183 pieces := by
  link_source cell_10183 with piece_1078 using piece_1078_mem, ⟨piece_1141_mem, piece_1142_mem⟩

theorem linked_10184 : Linked cell_10184 pieces := by
  link_source cell_10184 with piece_1078 using piece_1078_mem, piece_1141_mem

theorem linked_10185 : Linked cell_10185 pieces := by
  link_source cell_10185 with piece_1079 using piece_1079_mem, piece_1142_mem

theorem linked_10186 : Linked cell_10186 pieces := by
  link_source cell_10186 with piece_1079 using piece_1079_mem, ⟨piece_1141_mem, piece_1142_mem⟩

theorem linked_10187 : Linked cell_10187 pieces := by
  link_source cell_10187 with piece_1079 using piece_1079_mem, ⟨piece_1140_mem, piece_1141_mem⟩

theorem linked_10188 : Linked cell_10188 pieces := by
  link_source cell_10188 with piece_1079 using piece_1079_mem, piece_1140_mem

theorem linked_10189 : Linked cell_10189 pieces := by
  link_source cell_10189 with piece_1080 using piece_1080_mem, ⟨piece_1140_mem, piece_1141_mem⟩

theorem linked_10190 : Linked cell_10190 pieces := by
  link_source cell_10190 with piece_1080 using piece_1080_mem, piece_1140_mem

theorem linked_10191 : Linked cell_10191 pieces := by
  link_source cell_10191 with piece_1080 using piece_1080_mem, ⟨piece_1139_mem, piece_1140_mem⟩

theorem linked_10192 : Linked cell_10192 pieces := by
  link_source cell_10192 with piece_1080 using piece_1080_mem, ⟨piece_1138_mem, piece_1139_mem⟩

theorem linked_10193 : Linked cell_10193 pieces := by
  link_source cell_10193 with piece_1081 using piece_1081_mem, ⟨piece_1139_mem, piece_1140_mem⟩

theorem linked_10194 : Linked cell_10194 pieces := by
  link_source cell_10194 with piece_1081 using piece_1081_mem, piece_1139_mem

theorem linked_10195 : Linked cell_10195 pieces := by
  link_source cell_10195 with piece_1081 using piece_1081_mem, ⟨piece_1138_mem, piece_1139_mem⟩

theorem linked_10196 : Linked cell_10196 pieces := by
  link_source cell_10196 with piece_1081 using piece_1081_mem, piece_1138_mem

theorem linked_10197 : Linked cell_10197 pieces := by
  link_source cell_10197 with piece_1081 using piece_1081_mem, ⟨piece_1137_mem, piece_1138_mem⟩

theorem linked_10198 : Linked cell_10198 pieces := by
  link_source cell_10198 with piece_1082 using piece_1082_mem, ⟨piece_1138_mem, piece_1139_mem⟩

theorem linked_10199 : Linked cell_10199 pieces := by
  link_source cell_10199 with piece_1082 using piece_1082_mem, ⟨piece_1137_mem, piece_1138_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0203.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0203.cells,List.forall_mem_cons]
  exact ⟨linked_10150, linked_10151, linked_10152, linked_10153, linked_10154, linked_10155, linked_10156, linked_10157, linked_10158, linked_10159, linked_10160, linked_10161, linked_10162, linked_10163, linked_10164, linked_10165, linked_10166, linked_10167, linked_10168, linked_10169, linked_10170, linked_10171, linked_10172, linked_10173, linked_10174, linked_10175, linked_10176, linked_10177, linked_10178, linked_10179, linked_10180, linked_10181, linked_10182, linked_10183, linked_10184, linked_10185, linked_10186, linked_10187, linked_10188, linked_10189, linked_10190, linked_10191, linked_10192, linked_10193, linked_10194, linked_10195, linked_10196, linked_10197, linked_10198, linked_10199, by simp⟩

theorem covered : covers (44600000000000001 / 100000000000000000 : ℚ) (45125000000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0203.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0203
end
