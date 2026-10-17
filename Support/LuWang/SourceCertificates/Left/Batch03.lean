import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData
import Support.LuWang.SourceCertificateAssembly

/-! Independent left-certificate batch: original chunks 0180–0191. -/

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0180
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(7353750000000001 / 20000000000000000 : ℚ), (7355000000000001 / 20000000000000000 : ℚ)⟩
  branch := .left
  r := (72779175986523 / 100000000000000 : ℚ)
  w := (1620332846749 / 1000000000000 : ℚ)
  center := (7354375000000001 / 20000000000000000 : ℚ)
  supportValue := (6030253198350951 / 10000000000000000 : ℚ)
  supportSlope := (-39008366621509083 / 10000000000000000 : ℚ)
  oldCenter := (6030253198350951 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_901
  oldLo := (30049999999999999 / 50000000000000000 : ℚ)
  oldHi := (60150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1409]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9000 : Cell := { cellDefaults with
  r := (72929304697121 / 100000000000000 : ℚ)
  w := (16226334041991 / 10000000000000 : ℚ)
  newCoefficients := coefficients_900
  oldLo := (15062500000000001 / 25000000000000000 : ℚ)
  oldHi := (15087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1413, piece_1414]
}

def cell_9001 : Cell := { cellDefaults with
  domain := ⟨(7355000000000001 / 20000000000000000 : ℚ), (7356250000000001 / 20000000000000000 : ℚ)⟩
  r := (72929304697121 / 100000000000000 : ℚ)
  w := (16226334041991 / 10000000000000 : ℚ)
  center := (7355625000000001 / 20000000000000000 : ℚ)
  supportValue := (6027815799129829 / 10000000000000000 : ℚ)
  supportSlope := (-389866020927343 / 100000000000000 : ℚ)
  oldCenter := (6027815799129829 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_900
  oldLo := (15062500000000001 / 25000000000000000 : ℚ)
  oldHi := (30149999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1413]
}

def cell_9002 : Cell := { cellDefaults with
  domain := ⟨(7356250000000001 / 20000000000000000 : ℚ), (7357500000000001 / 20000000000000000 : ℚ)⟩
  r := (72929304697121 / 100000000000000 : ℚ)
  w := (16226334041991 / 10000000000000 : ℚ)
  center := (7356875000000001 / 20000000000000000 : ℚ)
  supportValue := (1506344975068119 / 2500000000000000 : ℚ)
  supportSlope := (-9740923485601627 / 2500000000000000 : ℚ)
  oldCenter := (1506344975068119 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_900
  oldLo := (30099999999999999 / 50000000000000000 : ℚ)
  oldHi := (30149999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1412, piece_1413]
}

def cell_9003 : Cell := { cellDefaults with
  domain := ⟨(7357500000000001 / 20000000000000000 : ℚ), (7358750000000001 / 20000000000000000 : ℚ)⟩
  r := (72929304697121 / 100000000000000 : ℚ)
  w := (16226334041991 / 10000000000000 : ℚ)
  center := (7358125000000001 / 20000000000000000 : ℚ)
  supportValue := (3011472646102379 / 5000000000000000 : ℚ)
  supportSlope := (-19471095779231007 / 5000000000000000 : ℚ)
  oldCenter := (3011472646102379 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_900
  oldLo := (30099999999999999 / 50000000000000000 : ℚ)
  oldHi := (15062500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1412]
}

def cell_9004 : Cell := { cellDefaults with
  domain := ⟨(7358750000000001 / 20000000000000000 : ℚ), (7360000000000001 / 20000000000000000 : ℚ)⟩
  r := (72929304697121 / 100000000000000 : ℚ)
  w := (16226334041991 / 10000000000000 : ℚ)
  center := (7359375000000001 / 20000000000000000 : ℚ)
  supportValue := (1204102433634073 / 2000000000000000 : ℚ)
  supportSlope := (-1945953318891469 / 500000000000000 : ℚ)
  oldCenter := (1204102433634073 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_900
  oldLo := (6017877094972067 / 10000000000000000 : ℚ)
  oldHi := (15062500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1411, piece_1412]
}

def cell_9005 : Cell := { cellDefaults with
  domain := ⟨(7360000000000001 / 20000000000000000 : ℚ), (7361250000000001 / 20000000000000000 : ℚ)⟩
  r := (72879184221049 / 100000000000000 : ℚ)
  w := (16218648687817 / 10000000000000 : ℚ)
  center := (7360625000000001 / 20000000000000000 : ℚ)
  supportValue := (6028053820327033 / 10000000000000000 : ℚ)
  supportSlope := (-7792518550445493 / 2000000000000000 : ℚ)
  oldCenter := (6028053820327033 / 10000000000000000 : ℚ)
  oldLo := (15062500000000001 / 25000000000000000 : ℚ)
  oldHi := (30149999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1413]
}

def cell_9006 : Cell := { cellDefaults with
  domain := ⟨(7361250000000001 / 20000000000000000 : ℚ), (7362500000000001 / 20000000000000000 : ℚ)⟩
  r := (72879184221049 / 100000000000000 : ℚ)
  w := (16218648687817 / 10000000000000 : ℚ)
  center := (7361875000000001 / 20000000000000000 : ℚ)
  supportValue := (6025619420619821 / 10000000000000000 : ℚ)
  supportSlope := (-7787857403222631 / 2000000000000000 : ℚ)
  oldCenter := (6025619420619821 / 10000000000000000 : ℚ)
  oldLo := (30099999999999999 / 50000000000000000 : ℚ)
  oldHi := (30149999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1412, piece_1413]
}

def cell_9007 : Cell := { cellDefaults with
  domain := ⟨(7362500000000001 / 20000000000000000 : ℚ), (7363750000000001 / 20000000000000000 : ℚ)⟩
  r := (72879184221049 / 100000000000000 : ℚ)
  w := (16218648687817 / 10000000000000 : ℚ)
  center := (7363125000000001 / 20000000000000000 : ℚ)
  supportValue := (3011593168289941 / 5000000000000000 : ℚ)
  supportSlope := (-4864784132934119 / 1250000000000000 : ℚ)
  oldCenter := (3011593168289941 / 5000000000000000 : ℚ)
  oldLo := (30099999999999999 / 50000000000000000 : ℚ)
  oldHi := (15062500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1412]
}

def cell_9008 : Cell := { cellDefaults with
  domain := ⟨(7363750000000001 / 20000000000000000 : ℚ), (7365000000000001 / 20000000000000000 : ℚ)⟩
  r := (72879184221049 / 100000000000000 : ℚ)
  w := (16218648687817 / 10000000000000 : ℚ)
  center := (7364375000000001 / 20000000000000000 : ℚ)
  supportValue := (3010377353010381 / 5000000000000000 : ℚ)
  supportSlope := (-972368588611161 / 250000000000000 : ℚ)
  oldCenter := (3010377353010381 / 5000000000000000 : ℚ)
  oldLo := (6017877094972067 / 10000000000000000 : ℚ)
  oldHi := (15062500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1411, piece_1412]
}

def cell_9009 : Cell := { cellDefaults with
  domain := ⟨(7365000000000001 / 20000000000000000 : ℚ), (7366250000000001 / 20000000000000000 : ℚ)⟩
  r := (72879184221049 / 100000000000000 : ℚ)
  w := (16218648687817 / 10000000000000 : ℚ)
  center := (7365625000000001 / 20000000000000000 : ℚ)
  supportValue := (3009162202468539 / 5000000000000000 : ℚ)
  supportSlope := (-38874007156763923 / 10000000000000000 : ℚ)
  oldCenter := (3009162202468539 / 5000000000000000 : ℚ)
  oldLo := (60150000000000003 / 100000000000000000 : ℚ)
  oldHi := (30099999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1410, piece_1411]
}

def cell_9010 : Cell := { cellDefaults with
  domain := ⟨(7366250000000001 / 20000000000000000 : ℚ), (7367500000000001 / 20000000000000000 : ℚ)⟩
  r := (72879184221049 / 100000000000000 : ℚ)
  w := (16218648687817 / 10000000000000 : ℚ)
  center := (7366875000000001 / 20000000000000000 : ℚ)
  supportValue := (3007947770340927 / 5000000000000000 : ℚ)
  supportSlope := (-9712557774257391 / 2500000000000000 : ℚ)
  oldCenter := (3007947770340927 / 5000000000000000 : ℚ)
  oldHi := (6017877094972067 / 10000000000000000 : ℚ)
  oldPieces := [piece_1409, piece_1410]
}

def cell_9011 : Cell := { cellDefaults with
  domain := ⟨(7367500000000001 / 20000000000000000 : ℚ), (7368750000000001 / 20000000000000000 : ℚ)⟩
  r := (72879184221049 / 100000000000000 : ℚ)
  w := (16218648687817 / 10000000000000 : ℚ)
  center := (7368125000000001 / 20000000000000000 : ℚ)
  supportValue := (6013468020600553 / 10000000000000000 : ℚ)
  supportSlope := (-9707448634701521 / 2500000000000000 : ℚ)
  oldCenter := (6013468020600553 / 10000000000000000 : ℚ)
  oldPieces := [piece_1409]
}

def cell_9012 : Cell := { cellDefaults with
  domain := ⟨(7368750000000001 / 20000000000000000 : ℚ), (7370000000000001 / 20000000000000000 : ℚ)⟩
  r := (72879184221049 / 100000000000000 : ℚ)
  w := (16218648687817 / 10000000000000 : ℚ)
  center := (7369375000000001 / 20000000000000000 : ℚ)
  supportValue := (3005520959153249 / 5000000000000000 : ℚ)
  supportSlope := (-38805782324757843 / 10000000000000000 : ℚ)
  oldCenter := (3005520959153249 / 5000000000000000 : ℚ)
  oldLo := (60050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1408, piece_1409]
}

def cell_9013 : Cell := { cellDefaults with
  domain := ⟨(7370000000000001 / 20000000000000000 : ℚ), (7371250000000001 / 20000000000000000 : ℚ)⟩
  r := (18207285285687 / 25000000000000 : ℚ)
  w := (3242196051443 / 2000000000000 : ℚ)
  center := (7370625000000001 / 20000000000000000 : ℚ)
  supportValue := (1203712656818201 / 2000000000000000 : ℚ)
  supportSlope := (-3885008641880461 / 1000000000000000 : ℚ)
  oldCenter := (1203712656818201 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_902
  oldLo := (60150000000000003 / 100000000000000000 : ℚ)
  oldHi := (30099999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1410, piece_1411]
}

def cell_9014 : Cell := { cellDefaults with
  domain := ⟨(7371250000000001 / 20000000000000000 : ℚ), (7372500000000001 / 20000000000000000 : ℚ)⟩
  r := (18207285285687 / 25000000000000 : ℚ)
  w := (3242196051443 / 2000000000000 : ℚ)
  center := (7371875000000001 / 20000000000000000 : ℚ)
  supportValue := (3008067956669087 / 5000000000000000 : ℚ)
  supportSlope := (-19412955360174067 / 5000000000000000 : ℚ)
  oldCenter := (3008067956669087 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_902
  oldHi := (6017877094972067 / 10000000000000000 : ℚ)
  oldPieces := [piece_1409, piece_1410]
}

def cell_9015 : Cell := { cellDefaults with
  domain := ⟨(7372500000000001 / 20000000000000000 : ℚ), (7373750000000001 / 20000000000000000 : ℚ)⟩
  r := (18207285285687 / 25000000000000 : ℚ)
  w := (3242196051443 / 2000000000000 : ℚ)
  center := (7373125000000001 / 20000000000000000 : ℚ)
  supportValue := (1503427477940683 / 2500000000000000 : ℚ)
  supportSlope := (-38805970181350347 / 10000000000000000 : ℚ)
  oldCenter := (1503427477940683 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_902
  oldPieces := [piece_1409]
}

def cell_9016 : Cell := { cellDefaults with
  domain := ⟨(7373750000000001 / 20000000000000000 : ℚ), (7375000000000001 / 20000000000000000 : ℚ)⟩
  r := (18207285285687 / 25000000000000 : ℚ)
  w := (3242196051443 / 2000000000000 : ℚ)
  center := (7374375000000001 / 20000000000000000 : ℚ)
  supportValue := (375705331059349 / 625000000000000 : ℚ)
  supportSlope := (-387816866352253 / 100000000000000 : ℚ)
  oldCenter := (375705331059349 / 625000000000000 : ℚ)
  newCoefficients := coefficients_902
  oldPieces := [piece_1409]
}

def cell_9017 : Cell := { cellDefaults with
  domain := ⟨(7375000000000001 / 20000000000000000 : ℚ), (7376250000000001 / 20000000000000000 : ℚ)⟩
  r := (18207285285687 / 25000000000000 : ℚ)
  w := (3242196051443 / 2000000000000 : ℚ)
  center := (7375625000000001 / 20000000000000000 : ℚ)
  supportValue := (3004431033356623 / 5000000000000000 : ℚ)
  supportSlope := (-3876179161810711 / 1000000000000000 : ℚ)
  oldCenter := (3004431033356623 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_902
  oldLo := (60050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1408, piece_1409]
}

def cell_9018 : Cell := { cellDefaults with
  domain := ⟨(7376250000000001 / 20000000000000000 : ℚ), (7377500000000001 / 20000000000000000 : ℚ)⟩
  r := (18207285285687 / 25000000000000 : ℚ)
  w := (3242196051443 / 2000000000000 : ℚ)
  center := (7376875000000001 / 20000000000000000 : ℚ)
  supportValue := (6006440203902853 / 10000000000000000 : ℚ)
  supportSlope := (-774753352337143 / 200000000000000 : ℚ)
  oldCenter := (6006440203902853 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_902
  oldLo := (60050000000000003 / 100000000000000000 : ℚ)
  oldHi := (30049999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1408]
}

def cell_9019 : Cell := { cellDefaults with
  domain := ⟨(7377500000000001 / 20000000000000000 : ℚ), (7378750000000001 / 20000000000000000 : ℚ)⟩
  r := (18207285285687 / 25000000000000 : ℚ)
  w := (3242196051443 / 2000000000000 : ℚ)
  center := (7378125000000001 / 20000000000000000 : ℚ)
  supportValue := (6004019742083493 / 10000000000000000 : ℚ)
  supportSlope := (-1935875657506969 / 500000000000000 : ℚ)
  oldCenter := (6004019742083493 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_902
  oldLo := (29999999999999999 / 50000000000000000 : ℚ)
  oldHi := (30049999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1407, piece_1408]
}

def cell_9020 : Cell := { cellDefaults with
  domain := ⟨(7378750000000001 / 20000000000000000 : ℚ), (7380000000000001 / 20000000000000000 : ℚ)⟩
  r := (18207285285687 / 25000000000000 : ℚ)
  w := (3242196051443 / 2000000000000 : ℚ)
  center := (7379375000000001 / 20000000000000000 : ℚ)
  supportValue := (3000800313812533 / 5000000000000000 : ℚ)
  supportSlope := (-1934685351214327 / 500000000000000 : ℚ)
  oldCenter := (3000800313812533 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_902
  oldLo := (29999999999999999 / 50000000000000000 : ℚ)
  oldHi := (60050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1407]
}

def cell_9021 : Cell := { cellDefaults with
  domain := ⟨(7380000000000001 / 20000000000000000 : ℚ), (7381250000000001 / 20000000000000000 : ℚ)⟩
  center := (7380625000000001 / 20000000000000000 : ℚ)
  supportValue := (6009101784681323 / 10000000000000000 : ℚ)
  supportSlope := (-1549500688452099 / 400000000000000 : ℚ)
  oldCenter := (6009101784681323 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_903
  oldLo := (60050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1408, piece_1409]
}

def cell_9022 : Cell := { cellDefaults with
  domain := ⟨(7381250000000001 / 20000000000000000 : ℚ), (7382500000000001 / 20000000000000000 : ℚ)⟩
  center := (7381875000000001 / 20000000000000000 : ℚ)
  supportValue := (6006681409731919 / 10000000000000000 : ℚ)
  supportSlope := (-2419617858269163 / 625000000000000 : ℚ)
  oldCenter := (6006681409731919 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_903
  oldLo := (60050000000000003 / 100000000000000000 : ℚ)
  oldHi := (30049999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1408]
}

def cell_9023 : Cell := { cellDefaults with
  domain := ⟨(7382500000000001 / 20000000000000000 : ℚ), (7383750000000001 / 20000000000000000 : ℚ)⟩
  center := (7383125000000001 / 20000000000000000 : ℚ)
  supportValue := (6004262461031107 / 10000000000000000 : ℚ)
  supportSlope := (-12091664600411 / 3125000000000 : ℚ)
  oldCenter := (6004262461031107 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_903
  oldLo := (29999999999999999 / 50000000000000000 : ℚ)
  oldHi := (30049999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1407, piece_1408]
}

def cell_9024 : Cell := { cellDefaults with
  domain := ⟨(7383750000000001 / 20000000000000000 : ℚ), (7385000000000001 / 20000000000000000 : ℚ)⟩
  center := (7384375000000001 / 20000000000000000 : ℚ)
  supportValue := (3000922414258553 / 5000000000000000 : ℚ)
  supportSlope := (-9667504938946081 / 2500000000000000 : ℚ)
  oldCenter := (3000922414258553 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_903
  oldLo := (29999999999999999 / 50000000000000000 : ℚ)
  oldHi := (60050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1407]
}

def cell_9025 : Cell := { cellDefaults with
  domain := ⟨(7385000000000001 / 20000000000000000 : ℚ), (5908988826815643 / 16000000000000000 : ℚ)⟩
  center := (59084944134078219 / 160000000000000000 : ℚ)
  supportValue := (749930266889337 / 1250000000000000 : ℚ)
  supportSlope := (-2415581448658759 / 625000000000000 : ℚ)
  oldCenter := (749930266889337 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_903
  oldLo := (59950000000000003 / 100000000000000000 : ℚ)
  oldHi := (60050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1406, piece_1407]
}

def cell_9026 : Cell := { cellDefaults with
  domain := ⟨(5908988826815643 / 16000000000000000 : ℚ), (14774944134078213 / 40000000000000000 : ℚ)⟩
  center := (59094832402234641 / 160000000000000000 : ℚ)
  supportValue := (599705420686829 / 1000000000000000 : ℚ)
  supportSlope := (-772532301015653 / 200000000000000 : ℚ)
  oldCenter := (599705420686829 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_903
  oldLo := (59950000000000003 / 100000000000000000 : ℚ)
  oldHi := (29999999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1406]
}

def cell_9027 : Cell := { cellDefaults with
  domain := ⟨(14774944134078213 / 40000000000000000 : ℚ), (29554832402234637 / 80000000000000000 : ℚ)⟩
  center := (59104720670391063 / 160000000000000000 : ℚ)
  supportValue := (2997333857563023 / 5000000000000000 : ℚ)
  supportSlope := (-7721127732164839 / 2000000000000000 : ℚ)
  oldCenter := (2997333857563023 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_903
  oldLo := (29949999999999999 / 50000000000000000 : ℚ)
  oldHi := (29999999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1405, piece_1406]
}

def cell_9028 : Cell := { cellDefaults with
  domain := ⟨(29554832402234637 / 80000000000000000 : ℚ), (1847486033519553 / 5000000000000000 : ℚ)⟩
  center := (11822921787709497 / 32000000000000000 : ℚ)
  supportValue := (749035307270839 / 1250000000000000 : ℚ)
  supportSlope := (-19291702049951913 / 5000000000000000 : ℚ)
  oldCenter := (749035307270839 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_903
  oldLo := (29949999999999999 / 50000000000000000 : ℚ)
  oldHi := (59950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1405]
}

def cell_9029 : Cell := { cellDefaults with
  domain := ⟨(1847486033519553 / 5000000000000000 : ℚ), (7390000000000001 / 20000000000000000 : ℚ)⟩
  center := (14779944134078213 / 40000000000000000 : ℚ)
  supportValue := (5991035313919213 / 10000000000000000 : ℚ)
  supportSlope := (-3857093940525299 / 1000000000000000 : ℚ)
  oldCenter := (5991035313919213 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_904
  oldLo := (29949999999999999 / 50000000000000000 : ℚ)
  oldHi := (59950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1405]
}

def cell_9030 : Cell := { cellDefaults with
  domain := ⟨(7390000000000001 / 20000000000000000 : ℚ), (7391250000000001 / 20000000000000000 : ℚ)⟩
  r := (36364642883083 / 50000000000000 : ℚ)
  w := (8097847098187 / 5000000000000 : ℚ)
  center := (7390625000000001 / 20000000000000000 : ℚ)
  supportValue := (46872415545047 / 78125000000000 : ℚ)
  supportSlope := (-3862499400153041 / 1000000000000000 : ℚ)
  oldCenter := (46872415545047 / 78125000000000 : ℚ)
  newCoefficients := coefficients_905
  oldLo := (59950000000000003 / 100000000000000000 : ℚ)
  oldHi := (60050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1406, piece_1407]
}

def cell_9031 : Cell := { cellDefaults with
  domain := ⟨(7391250000000001 / 20000000000000000 : ℚ), (7392500000000001 / 20000000000000000 : ℚ)⟩
  r := (36364642883083 / 50000000000000 : ℚ)
  w := (8097847098187 / 5000000000000 : ℚ)
  center := (7391875000000001 / 20000000000000000 : ℚ)
  supportValue := (1199451155676537 / 2000000000000000 : ℚ)
  supportSlope := (-7720503573835913 / 2000000000000000 : ℚ)
  oldCenter := (1199451155676537 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_905
  oldLo := (59950000000000003 / 100000000000000000 : ℚ)
  oldHi := (29999999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1406]
}

def cell_9032 : Cell := { cellDefaults with
  domain := ⟨(7392500000000001 / 20000000000000000 : ℚ), (7393750000000001 / 20000000000000000 : ℚ)⟩
  r := (36364642883083 / 50000000000000 : ℚ)
  w := (8097847098187 / 5000000000000 : ℚ)
  center := (7393125000000001 / 20000000000000000 : ℚ)
  supportValue := (5994843854721589 / 10000000000000000 : ℚ)
  supportSlope := (-7716196239726969 / 2000000000000000 : ℚ)
  oldCenter := (5994843854721589 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_905
  oldLo := (29949999999999999 / 50000000000000000 : ℚ)
  oldHi := (29999999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1405, piece_1406]
}

def cell_9033 : Cell := { cellDefaults with
  domain := ⟨(7393750000000001 / 20000000000000000 : ℚ), (7395000000000001 / 20000000000000000 : ℚ)⟩
  r := (36364642883083 / 50000000000000 : ℚ)
  w := (8097847098187 / 5000000000000 : ℚ)
  center := (7394375000000001 / 20000000000000000 : ℚ)
  supportValue := (1198486634548983 / 2000000000000000 : ℚ)
  supportSlope := (-38558860314026333 / 10000000000000000 : ℚ)
  oldCenter := (1198486634548983 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_905
  oldLo := (29949999999999999 / 50000000000000000 : ℚ)
  oldHi := (59950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1405]
}

def cell_9034 : Cell := { cellDefaults with
  domain := ⟨(7395000000000001 / 20000000000000000 : ℚ), (7396250000000001 / 20000000000000000 : ℚ)⟩
  r := (36364642883083 / 50000000000000 : ℚ)
  w := (8097847098187 / 5000000000000 : ℚ)
  center := (7395625000000001 / 20000000000000000 : ℚ)
  supportValue := (119800479907191 / 200000000000000 : ℚ)
  supportSlope := (-7707403168630833 / 2000000000000000 : ℚ)
  oldCenter := (119800479907191 / 200000000000000 : ℚ)
  newCoefficients := coefficients_905
  oldLo := (59850000000000003 / 100000000000000000 : ℚ)
  oldHi := (59950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1404, piece_1405]
}

def cell_9035 : Cell := { cellDefaults with
  domain := ⟨(7396250000000001 / 20000000000000000 : ℚ), (7397500000000001 / 20000000000000000 : ℚ)⟩
  r := (36364642883083 / 50000000000000 : ℚ)
  w := (8097847098187 / 5000000000000 : ℚ)
  center := (7396875000000001 / 20000000000000000 : ℚ)
  supportValue := (5987616041729581 / 10000000000000000 : ℚ)
  supportSlope := (-3851526002037531 / 1000000000000000 : ℚ)
  oldCenter := (5987616041729581 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_905
  oldLo := (59850000000000003 / 100000000000000000 : ℚ)
  oldHi := (29949999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1404]
}

def cell_9036 : Cell := { cellDefaults with
  domain := ⟨(7397500000000001 / 20000000000000000 : ℚ), (7398750000000001 / 20000000000000000 : ℚ)⟩
  r := (36364642883083 / 50000000000000 : ℚ)
  w := (8097847098187 / 5000000000000 : ℚ)
  center := (7398125000000001 / 20000000000000000 : ℚ)
  supportValue := (5985209588641557 / 10000000000000000 : ℚ)
  supportSlope := (-769861870907107 / 200000000000000 : ℚ)
  oldCenter := (5985209588641557 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_905
  oldLo := (29899999999999999 / 50000000000000000 : ℚ)
  oldHi := (29949999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1403, piece_1404]
}

def cell_9037 : Cell := { cellDefaults with
  domain := ⟨(7398750000000001 / 20000000000000000 : ℚ), (7400000000000001 / 20000000000000000 : ℚ)⟩
  r := (36364642883083 / 50000000000000 : ℚ)
  w := (8097847098187 / 5000000000000 : ℚ)
  center := (7399375000000001 / 20000000000000000 : ℚ)
  supportValue := (5982804379111041 / 10000000000000000 : ℚ)
  supportSlope := (-38471716839616477 / 10000000000000000 : ℚ)
  oldCenter := (5982804379111041 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_905
  oldLo := (29899999999999999 / 50000000000000000 : ℚ)
  oldHi := (59850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1403]
}

def cell_9038 : Cell := { cellDefaults with
  domain := ⟨(7400000000000001 / 20000000000000000 : ℚ), (7401250000000001 / 20000000000000000 : ℚ)⟩
  r := (72679472853281 / 100000000000000 : ℚ)
  w := (1011754727179 / 625000000000 : ℚ)
  center := (7400625000000001 / 20000000000000000 : ℚ)
  supportValue := (2995132849152139 / 5000000000000000 : ℚ)
  supportSlope := (-385129200904899 / 100000000000000 : ℚ)
  oldCenter := (2995132849152139 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_906
  oldLo := (59850000000000003 / 100000000000000000 : ℚ)
  oldHi := (59950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1404, piece_1405]
}

def cell_9039 : Cell := { cellDefaults with
  domain := ⟨(7401250000000001 / 20000000000000000 : ℚ), (7402500000000001 / 20000000000000000 : ℚ)⟩
  r := (72679472853281 / 100000000000000 : ℚ)
  w := (1011754727179 / 625000000000 : ℚ)
  center := (7401875000000001 / 20000000000000000 : ℚ)
  supportValue := (5987859249227059 / 10000000000000000 : ℚ)
  supportSlope := (-19245832218466319 / 5000000000000000 : ℚ)
  oldCenter := (5987859249227059 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_906
  oldLo := (59850000000000003 / 100000000000000000 : ℚ)
  oldHi := (29949999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1404]
}

def cell_9040 : Cell := { cellDefaults with
  domain := ⟨(7402500000000001 / 20000000000000000 : ℚ), (7403750000000001 / 20000000000000000 : ℚ)⟩
  r := (72679472853281 / 100000000000000 : ℚ)
  w := (1011754727179 / 625000000000 : ℚ)
  center := (7403125000000001 / 20000000000000000 : ℚ)
  supportValue := (2992727134708043 / 5000000000000000 : ℚ)
  supportSlope := (-384690828346379 / 100000000000000 : ℚ)
  oldCenter := (2992727134708043 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_906
  oldLo := (29899999999999999 / 50000000000000000 : ℚ)
  oldHi := (29949999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1403, piece_1404]
}

def cell_9041 : Cell := { cellDefaults with
  domain := ⟨(7403750000000001 / 20000000000000000 : ℚ), (7405000000000001 / 20000000000000000 : ℚ)⟩
  r := (72679472853281 / 100000000000000 : ℚ)
  w := (1011754727179 / 625000000000 : ℚ)
  center := (7404375000000001 / 20000000000000000 : ℚ)
  supportValue := (1495762639783119 / 2500000000000000 : ℚ)
  supportSlope := (-7689642616526271 / 2000000000000000 : ℚ)
  oldCenter := (1495762639783119 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_906
  oldLo := (29899999999999999 / 50000000000000000 : ℚ)
  oldHi := (59850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1403]
}

def cell_9042 : Cell := { cellDefaults with
  domain := ⟨(7405000000000001 / 20000000000000000 : ℚ), (7406250000000001 / 20000000000000000 : ℚ)⟩
  r := (72679472853281 / 100000000000000 : ℚ)
  w := (1011754727179 / 625000000000 : ℚ)
  center := (7405625000000001 / 20000000000000000 : ℚ)
  supportValue := (2990324147120647 / 5000000000000000 : ℚ)
  supportSlope := (-2401580645947643 / 625000000000000 : ℚ)
  oldCenter := (2990324147120647 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_906
  oldLo := (59750000000000003 / 100000000000000000 : ℚ)
  oldHi := (59850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1402, piece_1403]
}

def cell_9043 : Cell := { cellDefaults with
  domain := ⟨(7406250000000001 / 20000000000000000 : ℚ), (7407500000000001 / 20000000000000000 : ℚ)⟩
  r := (72679472853281 / 100000000000000 : ℚ)
  w := (1011754727179 / 625000000000 : ℚ)
  center := (7406875000000001 / 20000000000000000 : ℚ)
  supportValue := (747280915005831 / 1250000000000000 : ℚ)
  supportSlope := (-9601204946525499 / 2500000000000000 : ℚ)
  oldCenter := (747280915005831 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_906
  oldLo := (59750000000000003 / 100000000000000000 : ℚ)
  oldHi := (29899999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1402]
}

def cell_9044 : Cell := { cellDefaults with
  domain := ⟨(7407500000000001 / 20000000000000000 : ℚ), (7408750000000001 / 20000000000000000 : ℚ)⟩
  r := (72679472853281 / 100000000000000 : ℚ)
  w := (1011754727179 / 625000000000 : ℚ)
  center := (7408125000000001 / 20000000000000000 : ℚ)
  supportValue := (2987923883062389 / 5000000000000000 : ℚ)
  supportSlope := (-19190777330742037 / 5000000000000000 : ℚ)
  oldCenter := (2987923883062389 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_906
  oldLo := (29849999999999999 / 50000000000000000 : ℚ)
  oldHi := (29899999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1401, piece_1402]
}

def cell_9045 : Cell := { cellDefaults with
  domain := ⟨(7408750000000001 / 20000000000000000 : ℚ), (7410000000000001 / 20000000000000000 : ℚ)⟩
  r := (72679472853281 / 100000000000000 : ℚ)
  w := (1011754727179 / 625000000000 : ℚ)
  center := (7409375000000001 / 20000000000000000 : ℚ)
  supportValue := (2986724762229001 / 5000000000000000 : ℚ)
  supportSlope := (-4795186254953343 / 1250000000000000 : ℚ)
  oldCenter := (2986724762229001 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_906
  oldLo := (29849999999999999 / 50000000000000000 : ℚ)
  oldHi := (59750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1401]
}

def cell_9046 : Cell := { cellDefaults with
  domain := ⟨(7410000000000001 / 20000000000000000 : ℚ), (7411250000000001 / 20000000000000000 : ℚ)⟩
  r := (36314867973081 / 50000000000000 : ℚ)
  w := (1011279668049 / 625000000000 : ℚ)
  center := (7410625000000001 / 20000000000000000 : ℚ)
  supportValue := (1196178105374111 / 2000000000000000 : ℚ)
  supportSlope := (-3840127953669281 / 1000000000000000 : ℚ)
  oldCenter := (1196178105374111 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_907
  oldLo := (59750000000000003 / 100000000000000000 : ℚ)
  oldHi := (59850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1402, piece_1403]
}

def cell_9047 : Cell := { cellDefaults with
  domain := ⟨(7411250000000001 / 20000000000000000 : ℚ), (7412500000000001 / 20000000000000000 : ℚ)⟩
  r := (36314867973081 / 50000000000000 : ℚ)
  w := (1011279668049 / 625000000000 : ℚ)
  center := (7411875000000001 / 20000000000000000 : ℚ)
  supportValue := (5978491051959929 / 10000000000000000 : ℚ)
  supportSlope := (-7676262245034593 / 2000000000000000 : ℚ)
  oldCenter := (5978491051959929 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_907
  oldLo := (59750000000000003 / 100000000000000000 : ℚ)
  oldHi := (29899999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1402]
}

def cell_9048 : Cell := { cellDefaults with
  domain := ⟨(7412500000000001 / 20000000000000000 : ℚ), (7413750000000001 / 20000000000000000 : ℚ)⟩
  r := (36314867973081 / 50000000000000 : ℚ)
  w := (1011279668049 / 625000000000 : ℚ)
  center := (7413125000000001 / 20000000000000000 : ℚ)
  supportValue := (5976092965877541 / 10000000000000000 : ℚ)
  supportSlope := (-3835762873318771 / 1000000000000000 : ℚ)
  oldCenter := (5976092965877541 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_907
  oldLo := (29849999999999999 / 50000000000000000 : ℚ)
  oldHi := (29899999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1401, piece_1402]
}

def cell_9049 : Cell := { cellDefaults with
  domain := ⟨(7413750000000001 / 20000000000000000 : ℚ), (7415000000000001 / 20000000000000000 : ℚ)⟩
  r := (36314867973081 / 50000000000000 : ℚ)
  w := (1011279668049 / 625000000000 : ℚ)
  center := (7414375000000001 / 20000000000000000 : ℚ)
  supportValue := (373356013635043 / 625000000000000 : ℚ)
  supportSlope := (-7667614640155307 / 2000000000000000 : ℚ)
  oldCenter := (373356013635043 / 625000000000000 : ℚ)
  newCoefficients := coefficients_907
  oldLo := (29849999999999999 / 50000000000000000 : ℚ)
  oldHi := (59750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1401]
}

theorem check_9000 : cell_9000.check = true := by
  decide +kernel

theorem check_9001 : cell_9001.check = true := by
  decide +kernel

theorem check_9002 : cell_9002.check = true := by
  decide +kernel

theorem check_9003 : cell_9003.check = true := by
  decide +kernel

theorem check_9004 : cell_9004.check = true := by
  decide +kernel

theorem check_9005 : cell_9005.check = true := by
  decide +kernel

theorem check_9006 : cell_9006.check = true := by
  decide +kernel

theorem check_9007 : cell_9007.check = true := by
  decide +kernel

theorem check_9008 : cell_9008.check = true := by
  decide +kernel

theorem check_9009 : cell_9009.check = true := by
  decide +kernel

theorem check_9010 : cell_9010.check = true := by
  decide +kernel

theorem check_9011 : cell_9011.check = true := by
  decide +kernel

theorem check_9012 : cell_9012.check = true := by
  decide +kernel

theorem check_9013 : cell_9013.check = true := by
  decide +kernel

theorem check_9014 : cell_9014.check = true := by
  decide +kernel

theorem check_9015 : cell_9015.check = true := by
  decide +kernel

theorem check_9016 : cell_9016.check = true := by
  decide +kernel

theorem check_9017 : cell_9017.check = true := by
  decide +kernel

theorem check_9018 : cell_9018.check = true := by
  decide +kernel

theorem check_9019 : cell_9019.check = true := by
  decide +kernel

theorem check_9020 : cell_9020.check = true := by
  decide +kernel

theorem check_9021 : cell_9021.check = true := by
  decide +kernel

theorem check_9022 : cell_9022.check = true := by
  decide +kernel

theorem check_9023 : cell_9023.check = true := by
  decide +kernel

theorem check_9024 : cell_9024.check = true := by
  decide +kernel

theorem check_9025 : cell_9025.check = true := by
  decide +kernel

theorem check_9026 : cell_9026.check = true := by
  decide +kernel

theorem check_9027 : cell_9027.check = true := by
  decide +kernel

theorem check_9028 : cell_9028.check = true := by
  decide +kernel

theorem check_9029 : cell_9029.check = true := by
  decide +kernel

theorem check_9030 : cell_9030.check = true := by
  decide +kernel

theorem check_9031 : cell_9031.check = true := by
  decide +kernel

theorem check_9032 : cell_9032.check = true := by
  decide +kernel

theorem check_9033 : cell_9033.check = true := by
  decide +kernel

theorem check_9034 : cell_9034.check = true := by
  decide +kernel

theorem check_9035 : cell_9035.check = true := by
  decide +kernel

theorem check_9036 : cell_9036.check = true := by
  decide +kernel

theorem check_9037 : cell_9037.check = true := by
  decide +kernel

theorem check_9038 : cell_9038.check = true := by
  decide +kernel

theorem check_9039 : cell_9039.check = true := by
  decide +kernel

theorem check_9040 : cell_9040.check = true := by
  decide +kernel

theorem check_9041 : cell_9041.check = true := by
  decide +kernel

theorem check_9042 : cell_9042.check = true := by
  decide +kernel

theorem check_9043 : cell_9043.check = true := by
  decide +kernel

theorem check_9044 : cell_9044.check = true := by
  decide +kernel

theorem check_9045 : cell_9045.check = true := by
  decide +kernel

theorem check_9046 : cell_9046.check = true := by
  decide +kernel

theorem check_9047 : cell_9047.check = true := by
  decide +kernel

theorem check_9048 : cell_9048.check = true := by
  decide +kernel

theorem check_9049 : cell_9049.check = true := by
  decide +kernel

def cells : List Cell := [cell_9000, cell_9001, cell_9002, cell_9003, cell_9004, cell_9005, cell_9006, cell_9007, cell_9008, cell_9009, cell_9010, cell_9011, cell_9012, cell_9013, cell_9014, cell_9015, cell_9016, cell_9017, cell_9018, cell_9019, cell_9020, cell_9021, cell_9022, cell_9023, cell_9024, cell_9025, cell_9026, cell_9027, cell_9028, cell_9029, cell_9030, cell_9031, cell_9032, cell_9033, cell_9034, cell_9035, cell_9036, cell_9037, cell_9038, cell_9039, cell_9040, cell_9041, cell_9042, cell_9043, cell_9044, cell_9045, cell_9046, cell_9047, cell_9048, cell_9049]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9000, check_9001, check_9002, check_9003, check_9004, check_9005, check_9006, check_9007, check_9008, check_9009, check_9010, check_9011, check_9012, check_9013, check_9014, check_9015, check_9016, check_9017, check_9018, check_9019, check_9020, check_9021, check_9022, check_9023, check_9024, check_9025, check_9026, check_9027, check_9028, check_9029, check_9030, check_9031, check_9032, check_9033, check_9034, check_9035, check_9036, check_9037, check_9038, check_9039, check_9040, check_9041, check_9042, check_9043, check_9044, check_9045, check_9046, check_9047, check_9048, check_9049, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0180

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0180
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0180
open AnalyticBounds.ExpressionCertificate

theorem linked_9000 : Linked cell_9000 pieces := by
  link_source cell_9000 with piece_900 using piece_900_mem, ⟨piece_1413_mem, piece_1414_mem⟩

theorem linked_9001 : Linked cell_9001 pieces := by
  link_source cell_9001 with piece_900 using piece_900_mem, piece_1413_mem

theorem linked_9002 : Linked cell_9002 pieces := by
  link_source cell_9002 with piece_900 using piece_900_mem, ⟨piece_1412_mem, piece_1413_mem⟩

theorem linked_9003 : Linked cell_9003 pieces := by
  link_source cell_9003 with piece_900 using piece_900_mem, piece_1412_mem

theorem linked_9004 : Linked cell_9004 pieces := by
  link_source cell_9004 with piece_900 using piece_900_mem, ⟨piece_1411_mem, piece_1412_mem⟩

theorem linked_9005 : Linked cell_9005 pieces := by
  link_source cell_9005 with piece_901 using piece_901_mem, piece_1413_mem

theorem linked_9006 : Linked cell_9006 pieces := by
  link_source cell_9006 with piece_901 using piece_901_mem, ⟨piece_1412_mem, piece_1413_mem⟩

theorem linked_9007 : Linked cell_9007 pieces := by
  link_source cell_9007 with piece_901 using piece_901_mem, piece_1412_mem

theorem linked_9008 : Linked cell_9008 pieces := by
  link_source cell_9008 with piece_901 using piece_901_mem, ⟨piece_1411_mem, piece_1412_mem⟩

theorem linked_9009 : Linked cell_9009 pieces := by
  link_source cell_9009 with piece_901 using piece_901_mem, ⟨piece_1410_mem, piece_1411_mem⟩

theorem linked_9010 : Linked cell_9010 pieces := by
  link_source cell_9010 with piece_901 using piece_901_mem, ⟨piece_1409_mem, piece_1410_mem⟩

theorem linked_9011 : Linked cell_9011 pieces := by
  link_source cell_9011 with piece_901 using piece_901_mem, piece_1409_mem

theorem linked_9012 : Linked cell_9012 pieces := by
  link_source cell_9012 with piece_901 using piece_901_mem, ⟨piece_1408_mem, piece_1409_mem⟩

theorem linked_9013 : Linked cell_9013 pieces := by
  link_source cell_9013 with piece_902 using piece_902_mem, ⟨piece_1410_mem, piece_1411_mem⟩

theorem linked_9014 : Linked cell_9014 pieces := by
  link_source cell_9014 with piece_902 using piece_902_mem, ⟨piece_1409_mem, piece_1410_mem⟩

theorem linked_9015 : Linked cell_9015 pieces := by
  link_source cell_9015 with piece_902 using piece_902_mem, piece_1409_mem

theorem linked_9016 : Linked cell_9016 pieces := by
  link_source cell_9016 with piece_902 using piece_902_mem, piece_1409_mem

theorem linked_9017 : Linked cell_9017 pieces := by
  link_source cell_9017 with piece_902 using piece_902_mem, ⟨piece_1408_mem, piece_1409_mem⟩

theorem linked_9018 : Linked cell_9018 pieces := by
  link_source cell_9018 with piece_902 using piece_902_mem, piece_1408_mem

theorem linked_9019 : Linked cell_9019 pieces := by
  link_source cell_9019 with piece_902 using piece_902_mem, ⟨piece_1407_mem, piece_1408_mem⟩

theorem linked_9020 : Linked cell_9020 pieces := by
  link_source cell_9020 with piece_902 using piece_902_mem, piece_1407_mem

theorem linked_9021 : Linked cell_9021 pieces := by
  link_source cell_9021 with piece_903 using piece_903_mem, ⟨piece_1408_mem, piece_1409_mem⟩

theorem linked_9022 : Linked cell_9022 pieces := by
  link_source cell_9022 with piece_903 using piece_903_mem, piece_1408_mem

theorem linked_9023 : Linked cell_9023 pieces := by
  link_source cell_9023 with piece_903 using piece_903_mem, ⟨piece_1407_mem, piece_1408_mem⟩

theorem linked_9024 : Linked cell_9024 pieces := by
  link_source cell_9024 with piece_903 using piece_903_mem, piece_1407_mem

theorem linked_9025 : Linked cell_9025 pieces := by
  link_source cell_9025 with piece_903 using piece_903_mem, ⟨piece_1406_mem, piece_1407_mem⟩

theorem linked_9026 : Linked cell_9026 pieces := by
  link_source cell_9026 with piece_903 using piece_903_mem, piece_1406_mem

theorem linked_9027 : Linked cell_9027 pieces := by
  link_source cell_9027 with piece_903 using piece_903_mem, ⟨piece_1405_mem, piece_1406_mem⟩

theorem linked_9028 : Linked cell_9028 pieces := by
  link_source cell_9028 with piece_903 using piece_903_mem, piece_1405_mem

theorem linked_9029 : Linked cell_9029 pieces := by
  link_source cell_9029 with piece_904 using piece_904_mem, piece_1405_mem

theorem linked_9030 : Linked cell_9030 pieces := by
  link_source cell_9030 with piece_905 using piece_905_mem, ⟨piece_1406_mem, piece_1407_mem⟩

theorem linked_9031 : Linked cell_9031 pieces := by
  link_source cell_9031 with piece_905 using piece_905_mem, piece_1406_mem

theorem linked_9032 : Linked cell_9032 pieces := by
  link_source cell_9032 with piece_905 using piece_905_mem, ⟨piece_1405_mem, piece_1406_mem⟩

theorem linked_9033 : Linked cell_9033 pieces := by
  link_source cell_9033 with piece_905 using piece_905_mem, piece_1405_mem

theorem linked_9034 : Linked cell_9034 pieces := by
  link_source cell_9034 with piece_905 using piece_905_mem, ⟨piece_1404_mem, piece_1405_mem⟩

theorem linked_9035 : Linked cell_9035 pieces := by
  link_source cell_9035 with piece_905 using piece_905_mem, piece_1404_mem

theorem linked_9036 : Linked cell_9036 pieces := by
  link_source cell_9036 with piece_905 using piece_905_mem, ⟨piece_1403_mem, piece_1404_mem⟩

theorem linked_9037 : Linked cell_9037 pieces := by
  link_source cell_9037 with piece_905 using piece_905_mem, piece_1403_mem

theorem linked_9038 : Linked cell_9038 pieces := by
  link_source cell_9038 with piece_906 using piece_906_mem, ⟨piece_1404_mem, piece_1405_mem⟩

theorem linked_9039 : Linked cell_9039 pieces := by
  link_source cell_9039 with piece_906 using piece_906_mem, piece_1404_mem

theorem linked_9040 : Linked cell_9040 pieces := by
  link_source cell_9040 with piece_906 using piece_906_mem, ⟨piece_1403_mem, piece_1404_mem⟩

theorem linked_9041 : Linked cell_9041 pieces := by
  link_source cell_9041 with piece_906 using piece_906_mem, piece_1403_mem

theorem linked_9042 : Linked cell_9042 pieces := by
  link_source cell_9042 with piece_906 using piece_906_mem, ⟨piece_1402_mem, piece_1403_mem⟩

theorem linked_9043 : Linked cell_9043 pieces := by
  link_source cell_9043 with piece_906 using piece_906_mem, piece_1402_mem

theorem linked_9044 : Linked cell_9044 pieces := by
  link_source cell_9044 with piece_906 using piece_906_mem, ⟨piece_1401_mem, piece_1402_mem⟩

theorem linked_9045 : Linked cell_9045 pieces := by
  link_source cell_9045 with piece_906 using piece_906_mem, piece_1401_mem

theorem linked_9046 : Linked cell_9046 pieces := by
  link_source cell_9046 with piece_907 using piece_907_mem, ⟨piece_1402_mem, piece_1403_mem⟩

theorem linked_9047 : Linked cell_9047 pieces := by
  link_source cell_9047 with piece_907 using piece_907_mem, piece_1402_mem

theorem linked_9048 : Linked cell_9048 pieces := by
  link_source cell_9048 with piece_907 using piece_907_mem, ⟨piece_1401_mem, piece_1402_mem⟩

theorem linked_9049 : Linked cell_9049 pieces := by
  link_source cell_9049 with piece_907 using piece_907_mem, piece_1401_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0180.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0180.cells,List.forall_mem_cons]
  exact ⟨linked_9000, linked_9001, linked_9002, linked_9003, linked_9004, linked_9005, linked_9006, linked_9007, linked_9008, linked_9009, linked_9010, linked_9011, linked_9012, linked_9013, linked_9014, linked_9015, linked_9016, linked_9017, linked_9018, linked_9019, linked_9020, linked_9021, linked_9022, linked_9023, linked_9024, linked_9025, linked_9026, linked_9027, linked_9028, linked_9029, linked_9030, linked_9031, linked_9032, linked_9033, linked_9034, linked_9035, linked_9036, linked_9037, linked_9038, linked_9039, linked_9040, linked_9041, linked_9042, linked_9043, linked_9044, linked_9045, linked_9046, linked_9047, linked_9048, linked_9049, by simp⟩

theorem covered : covers (7353750000000001 / 20000000000000000 : ℚ) (7415000000000001 / 20000000000000000 : ℚ)
    (SourceCertificates.Chunk0180.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0180
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0181
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(7415000000000001 / 20000000000000000 : ℚ), (7416250000000001 / 20000000000000000 : ℚ)⟩
  branch := .left
  r := (72580074711949 / 100000000000000 : ℚ)
  w := (8086445059393 / 5000000000000 : ℚ)
  center := (7415625000000001 / 20000000000000000 : ℚ)
  supportValue := (59713008336623 / 100000000000000 : ℚ)
  supportSlope := (-9578553432820769 / 2500000000000000 : ℚ)
  oldCenter := (59713008336623 / 100000000000000 : ℚ)
  newCoefficients := coefficients_908
  oldLo := (7425000000000001 / 12500000000000000 : ℚ)
  oldHi := (59450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1394]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9050 : Cell := { cellDefaults with
  r := (36314867973081 / 50000000000000 : ℚ)
  w := (1011279668049 / 625000000000 : ℚ)
  newCoefficients := coefficients_907
  oldLo := (29849999999999999 / 50000000000000000 : ℚ)
  oldHi := (59750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1401]
}

def cell_9051 : Cell := { cellDefaults with
  domain := ⟨(7416250000000001 / 20000000000000000 : ℚ), (7417500000000001 / 20000000000000000 : ℚ)⟩
  r := (36314867973081 / 50000000000000 : ℚ)
  w := (1011279668049 / 625000000000 : ℚ)
  center := (7416875000000001 / 20000000000000000 : ℚ)
  supportValue := (298445340520669 / 500000000000000 : ℚ)
  supportSlope := (-1914735008860191 / 500000000000000 : ℚ)
  oldCenter := (298445340520669 / 500000000000000 : ℚ)
  newCoefficients := coefficients_907
  oldLo := (59650000000000003 / 100000000000000000 : ℚ)
  oldHi := (59750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1400, piece_1401]
}

def cell_9052 : Cell := { cellDefaults with
  domain := ⟨(7417500000000001 / 20000000000000000 : ℚ), (7418750000000001 / 20000000000000000 : ℚ)⟩
  r := (36314867973081 / 50000000000000 : ℚ)
  w := (1011279668049 / 625000000000 : ℚ)
  center := (7418125000000001 / 20000000000000000 : ℚ)
  supportValue := (372907132744247 / 625000000000000 : ℚ)
  supportSlope := (-478388229306681 / 125000000000000 : ℚ)
  oldCenter := (372907132744247 / 625000000000000 : ℚ)
  newCoefficients := coefficients_907
  oldLo := (59650000000000003 / 100000000000000000 : ℚ)
  oldHi := (29849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1400]
}

def cell_9053 : Cell := { cellDefaults with
  domain := ⟨(7418750000000001 / 20000000000000000 : ℚ), (7420000000000001 / 20000000000000000 : ℚ)⟩
  r := (36314867973081 / 50000000000000 : ℚ)
  w := (1011279668049 / 625000000000 : ℚ)
  center := (7419375000000001 / 20000000000000000 : ℚ)
  supportValue := (1192824564463407 / 2000000000000000 : ℚ)
  supportSlope := (-7650233969748399 / 2000000000000000 : ℚ)
  oldCenter := (1192824564463407 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_907
  oldLo := (1192513966480447 / 2000000000000000 : ℚ)
  oldHi := (29849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1399, piece_1400]
}

def cell_9054 : Cell := { cellDefaults with
  domain := ⟨(7420000000000001 / 20000000000000000 : ℚ), (7421250000000001 / 20000000000000000 : ℚ)⟩
  center := (7420625000000001 / 20000000000000000 : ℚ)
  supportValue := (5971544083147347 / 10000000000000000 : ℚ)
  supportSlope := (-1914537528950433 / 500000000000000 : ℚ)
  oldCenter := (5971544083147347 / 10000000000000000 : ℚ)
  oldLo := (29849999999999999 / 50000000000000000 : ℚ)
  oldHi := (59750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1401]
}

def cell_9055 : Cell := { cellDefaults with
  domain := ⟨(7421250000000001 / 20000000000000000 : ℚ), (7422500000000001 / 20000000000000000 : ℚ)⟩
  center := (7421875000000001 / 20000000000000000 : ℚ)
  supportValue := (596915155375967 / 1000000000000000 : ℚ)
  supportSlope := (-239192632328189 / 62500000000000 : ℚ)
  oldCenter := (596915155375967 / 1000000000000000 : ℚ)
  oldLo := (59650000000000003 / 100000000000000000 : ℚ)
  oldHi := (59750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1400, piece_1401]
}

def cell_9056 : Cell := { cellDefaults with
  domain := ⟨(7422500000000001 / 20000000000000000 : ℚ), (7423750000000001 / 20000000000000000 : ℚ)⟩
  center := (7423125000000001 / 20000000000000000 : ℚ)
  supportValue := (596676032941011 / 1000000000000000 : ℚ)
  supportSlope := (-38247686963508443 / 10000000000000000 : ℚ)
  oldCenter := (596676032941011 / 1000000000000000 : ℚ)
  oldLo := (59650000000000003 / 100000000000000000 : ℚ)
  oldHi := (29849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1400]
}

def cell_9057 : Cell := { cellDefaults with
  domain := ⟨(7423750000000001 / 20000000000000000 : ℚ), (7425000000000001 / 20000000000000000 : ℚ)⟩
  center := (7424375000000001 / 20000000000000000 : ℚ)
  supportValue := (119287410327531 / 200000000000000 : ℚ)
  supportSlope := (-3822737567304557 / 1000000000000000 : ℚ)
  oldCenter := (119287410327531 / 200000000000000 : ℚ)
  oldLo := (1192513966480447 / 2000000000000000 : ℚ)
  oldHi := (29849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1399, piece_1400]
}

def cell_9058 : Cell := { cellDefaults with
  domain := ⟨(7425000000000001 / 20000000000000000 : ℚ), (7426250000000001 / 20000000000000000 : ℚ)⟩
  center := (7425625000000001 / 20000000000000000 : ℚ)
  supportValue := (1192396396173213 / 2000000000000000 : ℚ)
  supportSlope := (-4775584097522767 / 1250000000000000 : ℚ)
  oldCenter := (1192396396173213 / 2000000000000000 : ℚ)
  oldLo := (59600000000000009 / 100000000000000000 : ℚ)
  oldHi := (59650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1398, piece_1399]
}

def cell_9059 : Cell := { cellDefaults with
  domain := ⟨(7426250000000001 / 20000000000000000 : ℚ), (7427500000000001 / 20000000000000000 : ℚ)⟩
  center := (7426875000000001 / 20000000000000000 : ℚ)
  supportValue := (1489898720510709 / 2500000000000000 : ℚ)
  supportSlope := (-38183964310256613 / 10000000000000000 : ℚ)
  oldCenter := (1489898720510709 / 2500000000000000 : ℚ)
  oldLo := (59550000000000003 / 100000000000000000 : ℚ)
  oldHi := (1192513966480447 / 2000000000000000 : ℚ)
  oldPieces := [piece_1397, piece_1398]
}

def cell_9060 : Cell := { cellDefaults with
  domain := ⟨(7427500000000001 / 20000000000000000 : ℚ), (7428750000000001 / 20000000000000000 : ℚ)⟩
  center := (7428125000000001 / 20000000000000000 : ℚ)
  supportValue := (2978604516077763 / 5000000000000000 : ℚ)
  supportSlope := (-9540430083241347 / 2500000000000000 : ℚ)
  oldCenter := (2978604516077763 / 5000000000000000 : ℚ)
  oldLo := (59550000000000003 / 100000000000000000 : ℚ)
  oldHi := (59600000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1397]
}

def cell_9061 : Cell := { cellDefaults with
  domain := ⟨(7428750000000001 / 20000000000000000 : ℚ), (7430000000000001 / 20000000000000000 : ℚ)⟩
  center := (7429375000000001 / 20000000000000000 : ℚ)
  supportValue := (5954824644127501 / 10000000000000000 : ℚ)
  supportSlope := (-1907030387261699 / 500000000000000 : ℚ)
  oldCenter := (5954824644127501 / 10000000000000000 : ℚ)
  oldLo := (7437500000000001 / 12500000000000000 : ℚ)
  oldHi := (59600000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1396, piece_1397]
}

def cell_9062 : Cell := { cellDefaults with
  domain := ⟨(7430000000000001 / 20000000000000000 : ℚ), (59450000000000007 / 160000000000000000 : ℚ)⟩
  r := (72530489340539 / 100000000000000 : ℚ)
  w := (16165322931757 / 10000000000000 : ℚ)
  center := (23778000000000003 / 64000000000000000 : ℚ)
  supportValue := (5962225757795877 / 10000000000000000 : ℚ)
  supportSlope := (-7636259508957063 / 2000000000000000 : ℚ)
  oldCenter := (5962225757795877 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_909
  oldLo := (59600000000000009 / 100000000000000000 : ℚ)
  oldHi := (59650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1398, piece_1399]
}

def cell_9063 : Cell := { cellDefaults with
  domain := ⟨(59450000000000007 / 160000000000000000 : ℚ), (29730000000000003 / 80000000000000000 : ℚ)⟩
  r := (72530489340539 / 100000000000000 : ℚ)
  w := (16165322931757 / 10000000000000 : ℚ)
  center := (118910000000000013 / 320000000000000000 : ℚ)
  supportValue := (5959840147639751 / 10000000000000000 : ℚ)
  supportSlope := (-3816016839625673 / 1000000000000000 : ℚ)
  oldCenter := (5959840147639751 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_909
  oldLo := (59550000000000003 / 100000000000000000 : ℚ)
  oldHi := (1192513966480447 / 2000000000000000 : ℚ)
  oldPieces := [piece_1397, piece_1398]
}

def cell_9064 : Cell := { cellDefaults with
  domain := ⟨(29730000000000003 / 80000000000000000 : ℚ), (11894000000000001 / 32000000000000000 : ℚ)⟩
  r := (72530489340539 / 100000000000000 : ℚ)
  w := (16165322931757 / 10000000000000 : ℚ)
  center := (118930000000000011 / 320000000000000000 : ℚ)
  supportValue := (1489363938620239 / 2500000000000000 : ℚ)
  supportSlope := (-762768715523597 / 200000000000000 : ℚ)
  oldCenter := (1489363938620239 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_909
  oldLo := (59550000000000003 / 100000000000000000 : ℚ)
  oldHi := (59600000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1397]
}

def cell_9065 : Cell := { cellDefaults with
  domain := ⟨(11894000000000001 / 32000000000000000 : ℚ), (14870000000000001 / 40000000000000000 : ℚ)⟩
  r := (72530489340539 / 100000000000000 : ℚ)
  w := (16165322931757 / 10000000000000 : ℚ)
  center := (118950000000000009 / 320000000000000000 : ℚ)
  supportValue := (744384105170779 / 1250000000000000 : ℚ)
  supportSlope := (-762337931691169 / 200000000000000 : ℚ)
  oldCenter := (744384105170779 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_909
  oldLo := (7437500000000001 / 12500000000000000 : ℚ)
  oldHi := (59600000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1396, piece_1397]
}

def cell_9066 : Cell := { cellDefaults with
  domain := ⟨(14870000000000001 / 40000000000000000 : ℚ), (59490000000000003 / 160000000000000000 : ℚ)⟩
  r := (72530489340539 / 100000000000000 : ℚ)
  w := (16165322931757 / 10000000000000 : ℚ)
  center := (118970000000000007 / 320000000000000000 : ℚ)
  supportValue := (2976345566253609 / 5000000000000000 : ℚ)
  supportSlope := (-38095634680463317 / 10000000000000000 : ℚ)
  oldCenter := (2976345566253609 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_909
  oldLo := (7437500000000001 / 12500000000000000 : ℚ)
  oldHi := (59550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1396]
}

def cell_9067 : Cell := { cellDefaults with
  domain := ⟨(59490000000000003 / 160000000000000000 : ℚ), (29750000000000001 / 80000000000000000 : ℚ)⟩
  r := (72530489340539 / 100000000000000 : ℚ)
  w := (16165322931757 / 10000000000000 : ℚ)
  center := (23798000000000001 / 64000000000000000 : ℚ)
  supportValue := (23243401928461 / 39062500000000 : ℚ)
  supportSlope := (-38073669308470923 / 10000000000000000 : ℚ)
  oldCenter := (23243401928461 / 39062500000000 : ℚ)
  newCoefficients := coefficients_909
  oldLo := (59450000000000003 / 100000000000000000 : ℚ)
  oldHi := (59550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1395, piece_1396]
}

def cell_9068 : Cell := { cellDefaults with
  domain := ⟨(29750000000000001 / 80000000000000000 : ℚ), (59510000000000001 / 160000000000000000 : ℚ)⟩
  r := (72530489340539 / 100000000000000 : ℚ)
  w := (16165322931757 / 10000000000000 : ℚ)
  center := (119010000000000003 / 320000000000000000 : ℚ)
  supportValue := (5947931885525647 / 10000000000000000 : ℚ)
  supportSlope := (-19026445316898357 / 5000000000000000 : ℚ)
  oldCenter := (5947931885525647 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_909
  oldLo := (59450000000000003 / 100000000000000000 : ℚ)
  oldHi := (7437500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1395]
}

def cell_9069 : Cell := { cellDefaults with
  domain := ⟨(59510000000000001 / 160000000000000000 : ℚ), (93 / 250 : ℚ)⟩
  r := (72530489340539 / 100000000000000 : ℚ)
  w := (16165322931757 / 10000000000000 : ℚ)
  center := (119030000000000001 / 320000000000000000 : ℚ)
  supportValue := (594555431743199 / 1000000000000000 : ℚ)
  supportSlope := (-3803048651502319 / 1000000000000000 : ℚ)
  oldCenter := (594555431743199 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_909
  oldHi := (7437500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1394, piece_1395]
}

def cell_9070 : Cell := { cellDefaults with
  domain := ⟨(93 / 250 : ℚ), (5953 / 16000 : ℚ)⟩
  r := (72480980117293 / 100000000000000 : ℚ)
  w := (16157771638163 / 10000000000000 : ℚ)
  center := (2381 / 6400 : ℚ)
  supportValue := (297646796949671 / 500000000000000 : ℚ)
  supportSlope := (-3807234806071591 / 1000000000000000 : ℚ)
  oldCenter := (297646796949671 / 500000000000000 : ℚ)
  newCoefficients := coefficients_910
  oldLo := (7437500000000001 / 12500000000000000 : ℚ)
  oldHi := (59550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1396]
}

def cell_9071 : Cell := { cellDefaults with
  domain := ⟨(5953 / 16000 : ℚ), (2977 / 8000 : ℚ)⟩
  r := (72480980117293 / 100000000000000 : ℚ)
  w := (16157771638163 / 10000000000000 : ℚ)
  center := (11907 / 32000 : ℚ)
  supportValue := (2975278577071047 / 5000000000000000 : ℚ)
  supportSlope := (-19024979137984843 / 5000000000000000 : ℚ)
  oldCenter := (2975278577071047 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_910
  oldLo := (59450000000000003 / 100000000000000000 : ℚ)
  oldHi := (59550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1395, piece_1396]
}

def cell_9072 : Cell := { cellDefaults with
  domain := ⟨(2977 / 8000 : ℚ), (1191 / 3200 : ℚ)⟩
  r := (72480980117293 / 100000000000000 : ℚ)
  w := (16157771638163 / 10000000000000 : ℚ)
  center := (11909 / 32000 : ℚ)
  supportValue := (1189635925300237 / 2000000000000000 : ℚ)
  supportSlope := (-380296956644699 / 100000000000000 : ℚ)
  oldCenter := (1189635925300237 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_910
  oldLo := (59450000000000003 / 100000000000000000 : ℚ)
  oldHi := (7437500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1395]
}

def cell_9073 : Cell := { cellDefaults with
  domain := ⟨(1191 / 3200 : ℚ), (1489 / 4000 : ℚ)⟩
  r := (72480980117293 / 100000000000000 : ℚ)
  w := (16157771638163 / 10000000000000 : ℚ)
  center := (11911 / 32000 : ℚ)
  supportValue := (1486450876663051 / 2500000000000000 : ℚ)
  supportSlope := (-19003430075699157 / 5000000000000000 : ℚ)
  oldCenter := (1486450876663051 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_910
  oldHi := (7437500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1394, piece_1395]
}

def cell_9074 : Cell := { cellDefaults with
  domain := ⟨(1489 / 4000 : ℚ), (5957 / 16000 : ℚ)⟩
  r := (72480980117293 / 100000000000000 : ℚ)
  w := (16157771638163 / 10000000000000 : ℚ)
  center := (11913 / 32000 : ℚ)
  supportValue := (5943428671640293 / 10000000000000000 : ℚ)
  supportSlope := (-18993550080530497 / 5000000000000000 : ℚ)
  oldCenter := (5943428671640293 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_910
  oldPieces := [piece_1394]
}

def cell_9075 : Cell := { cellDefaults with
  domain := ⟨(5957 / 16000 : ℚ), (2979 / 8000 : ℚ)⟩
  r := (72480980117293 / 100000000000000 : ℚ)
  w := (16157771638163 / 10000000000000 : ℚ)
  center := (2383 / 6400 : ℚ)
  supportValue := (594105521323751 / 1000000000000000 : ℚ)
  supportSlope := (-3796380625267659 / 1000000000000000 : ℚ)
  oldCenter := (594105521323751 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_910
  oldLo := (59350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1393, piece_1394]
}

def cell_9076 : Cell := { cellDefaults with
  domain := ⟨(2979 / 8000 : ℚ), (5959 / 16000 : ℚ)⟩
  r := (72480980117293 / 100000000000000 : ℚ)
  w := (16157771638163 / 10000000000000 : ℚ)
  center := (11917 / 32000 : ℚ)
  supportValue := (1484670767025093 / 2500000000000000 : ℚ)
  supportSlope := (-3794456143594971 / 1000000000000000 : ℚ)
  oldCenter := (1484670767025093 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_910
  oldLo := (59350000000000003 / 100000000000000000 : ℚ)
  oldHi := (7425000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1393]
}

def cell_9077 : Cell := { cellDefaults with
  domain := ⟨(5959 / 16000 : ℚ), (149 / 400 : ℚ)⟩
  r := (72480980117293 / 100000000000000 : ℚ)
  w := (16157771638163 / 10000000000000 : ℚ)
  center := (11919 / 32000 : ℚ)
  supportValue := (5936312267570933 / 10000000000000000 : ℚ)
  supportSlope := (-37921038660684303 / 10000000000000000 : ℚ)
  oldCenter := (5936312267570933 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_910
  oldLo := (59350000000000003 / 100000000000000000 : ℚ)
  oldHi := (7425000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1393]
}

def cell_9078 : Cell := { cellDefaults with
  domain := ⟨(149 / 400 : ℚ), (5961 / 16000 : ℚ)⟩
  r := (36215772928751 / 50000000000000 : ℚ)
  w := (1615023707397 / 1000000000000 : ℚ)
  center := (11921 / 32000 : ℚ)
  supportValue := (5943674274984451 / 10000000000000000 : ℚ)
  supportSlope := (-37963900927877603 / 10000000000000000 : ℚ)
  oldCenter := (5943674274984451 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_911
  oldPieces := [piece_1394]
}

def cell_9079 : Cell := { cellDefaults with
  domain := ⟨(5961 / 16000 : ℚ), (2981 / 8000 : ℚ)⟩
  r := (36215772928751 / 50000000000000 : ℚ)
  w := (1615023707397 / 1000000000000 : ℚ)
  center := (11923 / 32000 : ℚ)
  supportValue := (5941302265095461 / 10000000000000000 : ℚ)
  supportSlope := (-474254983129363 / 125000000000000 : ℚ)
  oldCenter := (5941302265095461 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_911
  oldPieces := [piece_1394]
}

def cell_9080 : Cell := { cellDefaults with
  domain := ⟨(2981 / 8000 : ℚ), (5963 / 16000 : ℚ)⟩
  r := (36215772928751 / 50000000000000 : ℚ)
  w := (1615023707397 / 1000000000000 : ℚ)
  center := (477 / 1280 : ℚ)
  supportValue := (1187786319060399 / 2000000000000000 : ℚ)
  supportSlope := (-3792123292740257 / 1000000000000000 : ℚ)
  oldCenter := (1187786319060399 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_911
  oldLo := (59350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1393, piece_1394]
}

def cell_9081 : Cell := { cellDefaults with
  domain := ⟨(5963 / 16000 : ℚ), (1491 / 4000 : ℚ)⟩
  r := (36215772928751 / 50000000000000 : ℚ)
  w := (1615023707397 / 1000000000000 : ℚ)
  center := (11927 / 32000 : ℚ)
  supportValue := (593656223758851 / 1000000000000000 : ℚ)
  supportSlope := (-18948988284908097 / 5000000000000000 : ℚ)
  oldCenter := (593656223758851 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_911
  oldLo := (59350000000000003 / 100000000000000000 : ℚ)
  oldHi := (7425000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1393]
}

def cell_9082 : Cell := { cellDefaults with
  domain := ⟨(1491 / 4000 : ℚ), (1193 / 3200 : ℚ)⟩
  r := (36215772928751 / 50000000000000 : ℚ)
  w := (1615023707397 / 1000000000000 : ℚ)
  center := (11929 / 32000 : ℚ)
  supportValue := (2967097124805661 / 5000000000000000 : ℚ)
  supportSlope := (-37878339618977463 / 10000000000000000 : ℚ)
  oldCenter := (2967097124805661 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_911
  oldLo := (7412500000000001 / 12500000000000000 : ℚ)
  oldHi := (7425000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1392, piece_1393]
}

def cell_9083 : Cell := { cellDefaults with
  domain := ⟨(1193 / 3200 : ℚ), (2983 / 8000 : ℚ)⟩
  r := (36215772928751 / 50000000000000 : ℚ)
  w := (1615023707397 / 1000000000000 : ℚ)
  center := (11931 / 32000 : ℚ)
  supportValue := (46342402660081 / 78125000000000 : ℚ)
  supportSlope := (-37855612655199877 / 10000000000000000 : ℚ)
  oldCenter := (46342402660081 / 78125000000000 : ℚ)
  newCoefficients := coefficients_911
  oldLo := (7412500000000001 / 12500000000000000 : ℚ)
  oldHi := (59350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1392]
}

def cell_9084 : Cell := { cellDefaults with
  domain := ⟨(2983 / 8000 : ℚ), (5967 / 16000 : ℚ)⟩
  r := (36215772928751 / 50000000000000 : ℚ)
  w := (1615023707397 / 1000000000000 : ℚ)
  center := (11933 / 32000 : ℚ)
  supportValue := (5929462231409529 / 10000000000000000 : ℚ)
  supportSlope := (-1891774650657041 / 500000000000000 : ℚ)
  oldCenter := (5929462231409529 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_911
  oldLo := (59250000000000003 / 100000000000000000 : ℚ)
  oldHi := (59350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1391, piece_1392]
}

def cell_9085 : Cell := { cellDefaults with
  domain := ⟨(5967 / 16000 : ℚ), (373 / 1000 : ℚ)⟩
  r := (36215772928751 / 50000000000000 : ℚ)
  w := (1615023707397 / 1000000000000 : ℚ)
  center := (2387 / 6400 : ℚ)
  supportValue := (5927098167267723 / 10000000000000000 : ℚ)
  supportSlope := (-756266101605263 / 200000000000000 : ℚ)
  oldCenter := (5927098167267723 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_911
  oldLo := (59250000000000003 / 100000000000000000 : ℚ)
  oldHi := (7412500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1391]
}

def cell_9086 : Cell := { cellDefaults with
  domain := ⟨(373 / 1000 : ℚ), (5969 / 16000 : ℚ)⟩
  r := (72382186412571 / 100000000000000 : ℚ)
  w := (16142719656639 / 10000000000000 : ℚ)
  center := (11937 / 32000 : ℚ)
  supportValue := (741805055657061 / 1250000000000000 : ℚ)
  supportSlope := (-3785476007273303 / 1000000000000000 : ℚ)
  oldCenter := (741805055657061 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_912
  oldLo := (7412500000000001 / 12500000000000000 : ℚ)
  oldHi := (7425000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1392, piece_1393]
}

def cell_9087 : Cell := { cellDefaults with
  domain := ⟨(5969 / 16000 : ℚ), (597 / 1600 : ℚ)⟩
  r := (72382186412571 / 100000000000000 : ℚ)
  w := (16142719656639 / 10000000000000 : ℚ)
  center := (11939 / 32000 : ℚ)
  supportValue := (5932075179038191 / 10000000000000000 : ℚ)
  supportSlope := (-37832547685212603 / 10000000000000000 : ℚ)
  oldCenter := (5932075179038191 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_912
  oldLo := (7412500000000001 / 12500000000000000 : ℚ)
  oldHi := (59350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1392]
}

def cell_9088 : Cell := { cellDefaults with
  domain := ⟨(597 / 1600 : ℚ), (5971 / 16000 : ℚ)⟩
  r := (72382186412571 / 100000000000000 : ℚ)
  w := (16142719656639 / 10000000000000 : ℚ)
  center := (11941 / 32000 : ℚ)
  supportValue := (2964855670051253 / 5000000000000000 : ℚ)
  supportSlope := (-9452997954086939 / 2500000000000000 : ℚ)
  oldCenter := (2964855670051253 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_912
  oldLo := (59250000000000003 / 100000000000000000 : ℚ)
  oldHi := (59350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1391, piece_1392]
}

def cell_9089 : Cell := { cellDefaults with
  domain := ⟨(5971 / 16000 : ℚ), (1493 / 4000 : ℚ)⟩
  r := (72382186412571 / 100000000000000 : ℚ)
  w := (16142719656639 / 10000000000000 : ℚ)
  center := (11943 / 32000 : ℚ)
  supportValue := (370459294596357 / 625000000000000 : ℚ)
  supportSlope := (-9447581303128061 / 2500000000000000 : ℚ)
  oldCenter := (370459294596357 / 625000000000000 : ℚ)
  newCoefficients := coefficients_912
  oldLo := (59250000000000003 / 100000000000000000 : ℚ)
  oldHi := (7412500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1391]
}

def cell_9090 : Cell := { cellDefaults with
  domain := ⟨(1493 / 4000 : ℚ), (5973 / 16000 : ℚ)⟩
  r := (72382186412571 / 100000000000000 : ℚ)
  w := (16142719656639 / 10000000000000 : ℚ)
  center := (2389 / 6400 : ℚ)
  supportValue := (1481246886487937 / 2500000000000000 : ℚ)
  supportSlope := (-3776926629985411 / 1000000000000000 : ℚ)
  oldCenter := (1481246886487937 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_912
  oldLo := (7400000000000001 / 12500000000000000 : ℚ)
  oldHi := (7412500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1390, piece_1391]
}

def cell_9091 : Cell := { cellDefaults with
  domain := ⟨(5973 / 16000 : ℚ), (2987 / 8000 : ℚ)⟩
  r := (72382186412571 / 100000000000000 : ℚ)
  w := (16142719656639 / 10000000000000 : ℚ)
  center := (11947 / 32000 : ℚ)
  supportValue := (2961313777767633 / 5000000000000000 : ℚ)
  supportSlope := (-943703980632371 / 250000000000000 : ℚ)
  oldCenter := (2961313777767633 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_912
  oldLo := (7400000000000001 / 12500000000000000 : ℚ)
  oldHi := (59250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1390]
}

def cell_9092 : Cell := { cellDefaults with
  domain := ⟨(2987 / 8000 : ℚ), (239 / 640 : ℚ)⟩
  r := (72382186412571 / 100000000000000 : ℚ)
  w := (16142719656639 / 10000000000000 : ℚ)
  center := (11949 / 32000 : ℚ)
  supportValue := (5920269024265941 / 10000000000000000 : ℚ)
  supportSlope := (-37726584560715537 / 10000000000000000 : ℚ)
  oldCenter := (5920269024265941 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_912
  oldLo := (59150000000000003 / 100000000000000000 : ℚ)
  oldHi := (59250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1389, piece_1390]
}

def cell_9093 : Cell := { cellDefaults with
  domain := ⟨(239 / 640 : ℚ), (747 / 2000 : ℚ)⟩
  r := (72382186412571 / 100000000000000 : ℚ)
  w := (16142719656639 / 10000000000000 : ℚ)
  center := (11951 / 32000 : ℚ)
  supportValue := (369869481171599 / 625000000000000 : ℚ)
  supportSlope := (-37706049824564047 / 10000000000000000 : ℚ)
  oldCenter := (369869481171599 / 625000000000000 : ℚ)
  newCoefficients := coefficients_912
  oldLo := (59150000000000003 / 100000000000000000 : ℚ)
  oldHi := (7400000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1389]
}

def cell_9094 : Cell := { cellDefaults with
  domain := ⟨(747 / 2000 : ℚ), (5977 / 16000 : ℚ)⟩
  r := (4520806419173 / 6250000000000 : ℚ)
  w := (16135218025997 / 10000000000000 : ℚ)
  center := (11953 / 32000 : ℚ)
  supportValue := (740654333786971 / 1250000000000000 : ℚ)
  supportSlope := (-1509830651527011 / 400000000000000 : ℚ)
  oldCenter := (740654333786971 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_913
  oldLo := (7400000000000001 / 12500000000000000 : ℚ)
  oldHi := (7412500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1390, piece_1391]
}

def cell_9095 : Cell := { cellDefaults with
  domain := ⟨(5977 / 16000 : ℚ), (2989 / 8000 : ℚ)⟩
  r := (4520806419173 / 6250000000000 : ℚ)
  w := (16135218025997 / 10000000000000 : ℚ)
  center := (2391 / 6400 : ℚ)
  supportValue := (5922876145496343 / 10000000000000000 : ℚ)
  supportSlope := (-18862590791712819 / 5000000000000000 : ℚ)
  oldCenter := (5922876145496343 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_913
  oldLo := (7400000000000001 / 12500000000000000 : ℚ)
  oldHi := (59250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1390]
}

def cell_9096 : Cell := { cellDefaults with
  domain := ⟨(2989 / 8000 : ℚ), (5979 / 16000 : ℚ)⟩
  r := (4520806419173 / 6250000000000 : ℚ)
  w := (16135218025997 / 10000000000000 : ℚ)
  center := (11957 / 32000 : ℚ)
  supportValue := (1480129762222441 / 2500000000000000 : ℚ)
  supportSlope := (-23564480708127 / 6250000000000 : ℚ)
  oldCenter := (1480129762222441 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_913
  oldLo := (59150000000000003 / 100000000000000000 : ℚ)
  oldHi := (59250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1389, piece_1390]
}

def cell_9097 : Cell := { cellDefaults with
  domain := ⟨(5979 / 16000 : ℚ), (299 / 800 : ℚ)⟩
  r := (4520806419173 / 6250000000000 : ℚ)
  w := (16135218025997 / 10000000000000 : ℚ)
  center := (11959 / 32000 : ℚ)
  supportValue := (5918163185417183 / 10000000000000000 : ℚ)
  supportSlope := (-3768316358968349 / 1000000000000000 : ℚ)
  oldCenter := (5918163185417183 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_913
  oldLo := (59150000000000003 / 100000000000000000 : ℚ)
  oldHi := (7400000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1389]
}

def cell_9098 : Cell := { cellDefaults with
  domain := ⟨(299 / 800 : ℚ), (5981 / 16000 : ℚ)⟩
  r := (4520806419173 / 6250000000000 : ℚ)
  w := (16135218025997 / 10000000000000 : ℚ)
  center := (11961 / 32000 : ℚ)
  supportValue := (2957904357083633 / 5000000000000000 : ℚ)
  supportSlope := (-3766061551100819 / 1000000000000000 : ℚ)
  oldCenter := (2957904357083633 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_913
  oldLo := (7387500000000001 / 12500000000000000 : ℚ)
  oldHi := (7400000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1388, piece_1389]
}

def cell_9099 : Cell := { cellDefaults with
  domain := ⟨(5981 / 16000 : ℚ), (2991 / 8000 : ℚ)⟩
  r := (4520806419173 / 6250000000000 : ℚ)
  w := (16135218025997 / 10000000000000 : ℚ)
  center := (11963 / 32000 : ℚ)
  supportValue := (1478363877325427 / 2500000000000000 : ℚ)
  supportSlope := (-941030050958247 / 250000000000000 : ℚ)
  oldCenter := (1478363877325427 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_913
  oldLo := (7387500000000001 / 12500000000000000 : ℚ)
  oldHi := (59150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1388]
}

theorem check_9050 : cell_9050.check = true := by
  decide +kernel

theorem check_9051 : cell_9051.check = true := by
  decide +kernel

theorem check_9052 : cell_9052.check = true := by
  decide +kernel

theorem check_9053 : cell_9053.check = true := by
  decide +kernel

theorem check_9054 : cell_9054.check = true := by
  decide +kernel

theorem check_9055 : cell_9055.check = true := by
  decide +kernel

theorem check_9056 : cell_9056.check = true := by
  decide +kernel

theorem check_9057 : cell_9057.check = true := by
  decide +kernel

theorem check_9058 : cell_9058.check = true := by
  decide +kernel

theorem check_9059 : cell_9059.check = true := by
  decide +kernel

theorem check_9060 : cell_9060.check = true := by
  decide +kernel

theorem check_9061 : cell_9061.check = true := by
  decide +kernel

theorem check_9062 : cell_9062.check = true := by
  decide +kernel

theorem check_9063 : cell_9063.check = true := by
  decide +kernel

theorem check_9064 : cell_9064.check = true := by
  decide +kernel

theorem check_9065 : cell_9065.check = true := by
  decide +kernel

theorem check_9066 : cell_9066.check = true := by
  decide +kernel

theorem check_9067 : cell_9067.check = true := by
  decide +kernel

theorem check_9068 : cell_9068.check = true := by
  decide +kernel

theorem check_9069 : cell_9069.check = true := by
  decide +kernel

theorem check_9070 : cell_9070.check = true := by
  decide +kernel

theorem check_9071 : cell_9071.check = true := by
  decide +kernel

theorem check_9072 : cell_9072.check = true := by
  decide +kernel

theorem check_9073 : cell_9073.check = true := by
  decide +kernel

theorem check_9074 : cell_9074.check = true := by
  decide +kernel

theorem check_9075 : cell_9075.check = true := by
  decide +kernel

theorem check_9076 : cell_9076.check = true := by
  decide +kernel

theorem check_9077 : cell_9077.check = true := by
  decide +kernel

theorem check_9078 : cell_9078.check = true := by
  decide +kernel

theorem check_9079 : cell_9079.check = true := by
  decide +kernel

theorem check_9080 : cell_9080.check = true := by
  decide +kernel

theorem check_9081 : cell_9081.check = true := by
  decide +kernel

theorem check_9082 : cell_9082.check = true := by
  decide +kernel

theorem check_9083 : cell_9083.check = true := by
  decide +kernel

theorem check_9084 : cell_9084.check = true := by
  decide +kernel

theorem check_9085 : cell_9085.check = true := by
  decide +kernel

theorem check_9086 : cell_9086.check = true := by
  decide +kernel

theorem check_9087 : cell_9087.check = true := by
  decide +kernel

theorem check_9088 : cell_9088.check = true := by
  decide +kernel

theorem check_9089 : cell_9089.check = true := by
  decide +kernel

theorem check_9090 : cell_9090.check = true := by
  decide +kernel

theorem check_9091 : cell_9091.check = true := by
  decide +kernel

theorem check_9092 : cell_9092.check = true := by
  decide +kernel

theorem check_9093 : cell_9093.check = true := by
  decide +kernel

theorem check_9094 : cell_9094.check = true := by
  decide +kernel

theorem check_9095 : cell_9095.check = true := by
  decide +kernel

theorem check_9096 : cell_9096.check = true := by
  decide +kernel

theorem check_9097 : cell_9097.check = true := by
  decide +kernel

theorem check_9098 : cell_9098.check = true := by
  decide +kernel

theorem check_9099 : cell_9099.check = true := by
  decide +kernel

def cells : List Cell := [cell_9050, cell_9051, cell_9052, cell_9053, cell_9054, cell_9055, cell_9056, cell_9057, cell_9058, cell_9059, cell_9060, cell_9061, cell_9062, cell_9063, cell_9064, cell_9065, cell_9066, cell_9067, cell_9068, cell_9069, cell_9070, cell_9071, cell_9072, cell_9073, cell_9074, cell_9075, cell_9076, cell_9077, cell_9078, cell_9079, cell_9080, cell_9081, cell_9082, cell_9083, cell_9084, cell_9085, cell_9086, cell_9087, cell_9088, cell_9089, cell_9090, cell_9091, cell_9092, cell_9093, cell_9094, cell_9095, cell_9096, cell_9097, cell_9098, cell_9099]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9050, check_9051, check_9052, check_9053, check_9054, check_9055, check_9056, check_9057, check_9058, check_9059, check_9060, check_9061, check_9062, check_9063, check_9064, check_9065, check_9066, check_9067, check_9068, check_9069, check_9070, check_9071, check_9072, check_9073, check_9074, check_9075, check_9076, check_9077, check_9078, check_9079, check_9080, check_9081, check_9082, check_9083, check_9084, check_9085, check_9086, check_9087, check_9088, check_9089, check_9090, check_9091, check_9092, check_9093, check_9094, check_9095, check_9096, check_9097, check_9098, check_9099, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0181

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0181
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0181
open AnalyticBounds.ExpressionCertificate

theorem linked_9050 : Linked cell_9050 pieces := by
  link_source cell_9050 with piece_907 using piece_907_mem, piece_1401_mem

theorem linked_9051 : Linked cell_9051 pieces := by
  link_source cell_9051 with piece_907 using piece_907_mem, ⟨piece_1400_mem, piece_1401_mem⟩

theorem linked_9052 : Linked cell_9052 pieces := by
  link_source cell_9052 with piece_907 using piece_907_mem, piece_1400_mem

theorem linked_9053 : Linked cell_9053 pieces := by
  link_source cell_9053 with piece_907 using piece_907_mem, ⟨piece_1399_mem, piece_1400_mem⟩

theorem linked_9054 : Linked cell_9054 pieces := by
  link_source cell_9054 with piece_908 using piece_908_mem, piece_1401_mem

theorem linked_9055 : Linked cell_9055 pieces := by
  link_source cell_9055 with piece_908 using piece_908_mem, ⟨piece_1400_mem, piece_1401_mem⟩

theorem linked_9056 : Linked cell_9056 pieces := by
  link_source cell_9056 with piece_908 using piece_908_mem, piece_1400_mem

theorem linked_9057 : Linked cell_9057 pieces := by
  link_source cell_9057 with piece_908 using piece_908_mem, ⟨piece_1399_mem, piece_1400_mem⟩

theorem linked_9058 : Linked cell_9058 pieces := by
  link_source cell_9058 with piece_908 using piece_908_mem, ⟨piece_1398_mem, piece_1399_mem⟩

theorem linked_9059 : Linked cell_9059 pieces := by
  link_source cell_9059 with piece_908 using piece_908_mem, ⟨piece_1397_mem, piece_1398_mem⟩

theorem linked_9060 : Linked cell_9060 pieces := by
  link_source cell_9060 with piece_908 using piece_908_mem, piece_1397_mem

theorem linked_9061 : Linked cell_9061 pieces := by
  link_source cell_9061 with piece_908 using piece_908_mem, ⟨piece_1396_mem, piece_1397_mem⟩

theorem linked_9062 : Linked cell_9062 pieces := by
  link_source cell_9062 with piece_909 using piece_909_mem, ⟨piece_1398_mem, piece_1399_mem⟩

theorem linked_9063 : Linked cell_9063 pieces := by
  link_source cell_9063 with piece_909 using piece_909_mem, ⟨piece_1397_mem, piece_1398_mem⟩

theorem linked_9064 : Linked cell_9064 pieces := by
  link_source cell_9064 with piece_909 using piece_909_mem, piece_1397_mem

theorem linked_9065 : Linked cell_9065 pieces := by
  link_source cell_9065 with piece_909 using piece_909_mem, ⟨piece_1396_mem, piece_1397_mem⟩

theorem linked_9066 : Linked cell_9066 pieces := by
  link_source cell_9066 with piece_909 using piece_909_mem, piece_1396_mem

theorem linked_9067 : Linked cell_9067 pieces := by
  link_source cell_9067 with piece_909 using piece_909_mem, ⟨piece_1395_mem, piece_1396_mem⟩

theorem linked_9068 : Linked cell_9068 pieces := by
  link_source cell_9068 with piece_909 using piece_909_mem, piece_1395_mem

theorem linked_9069 : Linked cell_9069 pieces := by
  link_source cell_9069 with piece_909 using piece_909_mem, ⟨piece_1394_mem, piece_1395_mem⟩

theorem linked_9070 : Linked cell_9070 pieces := by
  link_source cell_9070 with piece_910 using piece_910_mem, piece_1396_mem

theorem linked_9071 : Linked cell_9071 pieces := by
  link_source cell_9071 with piece_910 using piece_910_mem, ⟨piece_1395_mem, piece_1396_mem⟩

theorem linked_9072 : Linked cell_9072 pieces := by
  link_source cell_9072 with piece_910 using piece_910_mem, piece_1395_mem

theorem linked_9073 : Linked cell_9073 pieces := by
  link_source cell_9073 with piece_910 using piece_910_mem, ⟨piece_1394_mem, piece_1395_mem⟩

theorem linked_9074 : Linked cell_9074 pieces := by
  link_source cell_9074 with piece_910 using piece_910_mem, piece_1394_mem

theorem linked_9075 : Linked cell_9075 pieces := by
  link_source cell_9075 with piece_910 using piece_910_mem, ⟨piece_1393_mem, piece_1394_mem⟩

theorem linked_9076 : Linked cell_9076 pieces := by
  link_source cell_9076 with piece_910 using piece_910_mem, piece_1393_mem

theorem linked_9077 : Linked cell_9077 pieces := by
  link_source cell_9077 with piece_910 using piece_910_mem, piece_1393_mem

theorem linked_9078 : Linked cell_9078 pieces := by
  link_source cell_9078 with piece_911 using piece_911_mem, piece_1394_mem

theorem linked_9079 : Linked cell_9079 pieces := by
  link_source cell_9079 with piece_911 using piece_911_mem, piece_1394_mem

theorem linked_9080 : Linked cell_9080 pieces := by
  link_source cell_9080 with piece_911 using piece_911_mem, ⟨piece_1393_mem, piece_1394_mem⟩

theorem linked_9081 : Linked cell_9081 pieces := by
  link_source cell_9081 with piece_911 using piece_911_mem, piece_1393_mem

theorem linked_9082 : Linked cell_9082 pieces := by
  link_source cell_9082 with piece_911 using piece_911_mem, ⟨piece_1392_mem, piece_1393_mem⟩

theorem linked_9083 : Linked cell_9083 pieces := by
  link_source cell_9083 with piece_911 using piece_911_mem, piece_1392_mem

theorem linked_9084 : Linked cell_9084 pieces := by
  link_source cell_9084 with piece_911 using piece_911_mem, ⟨piece_1391_mem, piece_1392_mem⟩

theorem linked_9085 : Linked cell_9085 pieces := by
  link_source cell_9085 with piece_911 using piece_911_mem, piece_1391_mem

theorem linked_9086 : Linked cell_9086 pieces := by
  link_source cell_9086 with piece_912 using piece_912_mem, ⟨piece_1392_mem, piece_1393_mem⟩

theorem linked_9087 : Linked cell_9087 pieces := by
  link_source cell_9087 with piece_912 using piece_912_mem, piece_1392_mem

theorem linked_9088 : Linked cell_9088 pieces := by
  link_source cell_9088 with piece_912 using piece_912_mem, ⟨piece_1391_mem, piece_1392_mem⟩

theorem linked_9089 : Linked cell_9089 pieces := by
  link_source cell_9089 with piece_912 using piece_912_mem, piece_1391_mem

theorem linked_9090 : Linked cell_9090 pieces := by
  link_source cell_9090 with piece_912 using piece_912_mem, ⟨piece_1390_mem, piece_1391_mem⟩

theorem linked_9091 : Linked cell_9091 pieces := by
  link_source cell_9091 with piece_912 using piece_912_mem, piece_1390_mem

theorem linked_9092 : Linked cell_9092 pieces := by
  link_source cell_9092 with piece_912 using piece_912_mem, ⟨piece_1389_mem, piece_1390_mem⟩

theorem linked_9093 : Linked cell_9093 pieces := by
  link_source cell_9093 with piece_912 using piece_912_mem, piece_1389_mem

theorem linked_9094 : Linked cell_9094 pieces := by
  link_source cell_9094 with piece_913 using piece_913_mem, ⟨piece_1390_mem, piece_1391_mem⟩

theorem linked_9095 : Linked cell_9095 pieces := by
  link_source cell_9095 with piece_913 using piece_913_mem, piece_1390_mem

theorem linked_9096 : Linked cell_9096 pieces := by
  link_source cell_9096 with piece_913 using piece_913_mem, ⟨piece_1389_mem, piece_1390_mem⟩

theorem linked_9097 : Linked cell_9097 pieces := by
  link_source cell_9097 with piece_913 using piece_913_mem, piece_1389_mem

theorem linked_9098 : Linked cell_9098 pieces := by
  link_source cell_9098 with piece_913 using piece_913_mem, ⟨piece_1388_mem, piece_1389_mem⟩

theorem linked_9099 : Linked cell_9099 pieces := by
  link_source cell_9099 with piece_913 using piece_913_mem, piece_1388_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0181.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0181.cells,List.forall_mem_cons]
  exact ⟨linked_9050, linked_9051, linked_9052, linked_9053, linked_9054, linked_9055, linked_9056, linked_9057, linked_9058, linked_9059, linked_9060, linked_9061, linked_9062, linked_9063, linked_9064, linked_9065, linked_9066, linked_9067, linked_9068, linked_9069, linked_9070, linked_9071, linked_9072, linked_9073, linked_9074, linked_9075, linked_9076, linked_9077, linked_9078, linked_9079, linked_9080, linked_9081, linked_9082, linked_9083, linked_9084, linked_9085, linked_9086, linked_9087, linked_9088, linked_9089, linked_9090, linked_9091, linked_9092, linked_9093, linked_9094, linked_9095, linked_9096, linked_9097, linked_9098, linked_9099, by simp⟩

theorem covered : covers (7415000000000001 / 20000000000000000 : ℚ) (2991 / 8000 : ℚ)
    (SourceCertificates.Chunk0181.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0181
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0182
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(2991 / 8000 : ℚ), (5983 / 16000 : ℚ)⟩
  branch := .left
  r := (2887419918039 / 4000000000000 : ℚ)
  w := (16112812780573 / 10000000000000 : ℚ)
  center := (2393 / 6400 : ℚ)
  supportValue := (5911103659881033 / 10000000000000000 : ℚ)
  supportSlope := (-3761810532864729 / 1000000000000000 : ℚ)
  oldCenter := (5911103659881033 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_914
  oldLo := (29475000000000001 / 50000000000000000 : ℚ)
  oldHi := (7375000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1384]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9100 : Cell := { cellDefaults with
  r := (4520806419173 / 6250000000000 : ℚ)
  w := (16135218025997 / 10000000000000 : ℚ)
  newCoefficients := coefficients_913
  oldLo := (2953631284916201 / 5000000000000000 : ℚ)
  oldHi := (59150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1387, piece_1388]
}

def cell_9101 : Cell := { cellDefaults with
  domain := ⟨(5983 / 16000 : ℚ), (187 / 500 : ℚ)⟩
  r := (4520806419173 / 6250000000000 : ℚ)
  w := (16135218025997 / 10000000000000 : ℚ)
  center := (11967 / 32000 : ℚ)
  supportValue := (5908753110907963 / 10000000000000000 : ℚ)
  supportSlope := (-1879964845723947 / 500000000000000 : ℚ)
  oldCenter := (5908753110907963 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_913
  oldLo := (2953631284916201 / 5000000000000000 : ℚ)
  oldHi := (7387500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1387]
}

def cell_9102 : Cell := { cellDefaults with
  domain := ⟨(187 / 500 : ℚ), (1197 / 3200 : ℚ)⟩
  r := (72283692492149 / 100000000000000 : ℚ)
  w := (4031933283061 / 2500000000000 : ℚ)
  center := (11969 / 32000 : ℚ)
  supportValue := (739507082519127 / 1250000000000000 : ℚ)
  supportSlope := (-37637198952609197 / 10000000000000000 : ℚ)
  oldCenter := (739507082519127 / 1250000000000000 : ℚ)
  oldLo := (7387500000000001 / 12500000000000000 : ℚ)
  oldHi := (7400000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1388, piece_1389]
}

def cell_9103 : Cell := { cellDefaults with
  domain := ⟨(1197 / 3200 : ℚ), (2993 / 8000 : ℚ)⟩
  r := (72283692492149 / 100000000000000 : ℚ)
  w := (4031933283061 / 2500000000000 : ℚ)
  center := (11971 / 32000 : ℚ)
  supportValue := (1182740983489977 / 2000000000000000 : ℚ)
  supportSlope := (-3761831077330413 / 1000000000000000 : ℚ)
  oldCenter := (1182740983489977 / 2000000000000000 : ℚ)
  oldLo := (7387500000000001 / 12500000000000000 : ℚ)
  oldHi := (59150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1388]
}

def cell_9104 : Cell := { cellDefaults with
  domain := ⟨(2993 / 8000 : ℚ), (5987 / 16000 : ℚ)⟩
  r := (72283692492149 / 100000000000000 : ℚ)
  w := (4031933283061 / 2500000000000 : ℚ)
  center := (11973 / 32000 : ℚ)
  supportValue := (5911354497339477 / 10000000000000000 : ℚ)
  supportSlope := (-37595116031212683 / 10000000000000000 : ℚ)
  oldCenter := (5911354497339477 / 10000000000000000 : ℚ)
  oldLo := (7387500000000001 / 12500000000000000 : ℚ)
  oldHi := (59150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1388]
}

def cell_9105 : Cell := { cellDefaults with
  domain := ⟨(5987 / 16000 : ℚ), (1497 / 4000 : ℚ)⟩
  r := (72283692492149 / 100000000000000 : ℚ)
  w := (4031933283061 / 2500000000000 : ℚ)
  center := (479 / 1280 : ℚ)
  supportValue := (5909005405430001 / 10000000000000000 : ℚ)
  supportSlope := (-375761484621151 / 100000000000000 : ℚ)
  oldCenter := (5909005405430001 / 10000000000000000 : ℚ)
  oldLo := (2953631284916201 / 5000000000000000 : ℚ)
  oldHi := (59150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1387, piece_1388]
}

def cell_9106 : Cell := { cellDefaults with
  domain := ⟨(1497 / 4000 : ℚ), (5989 / 16000 : ℚ)⟩
  r := (72283692492149 / 100000000000000 : ℚ)
  w := (4031933283061 / 2500000000000 : ℚ)
  center := (11977 / 32000 : ℚ)
  supportValue := (5906657598196997 / 10000000000000000 : ℚ)
  supportSlope := (-18776659557211417 / 5000000000000000 : ℚ)
  oldCenter := (5906657598196997 / 10000000000000000 : ℚ)
  oldLo := (29525000000000001 / 50000000000000000 : ℚ)
  oldHi := (7387500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1386, piece_1387]
}

def cell_9107 : Cell := { cellDefaults with
  domain := ⟨(5989 / 16000 : ℚ), (599 / 1600 : ℚ)⟩
  r := (72283692492149 / 100000000000000 : ℚ)
  w := (4031933283061 / 2500000000000 : ℚ)
  center := (11979 / 32000 : ℚ)
  supportValue := (295215557738729 / 500000000000000 : ℚ)
  supportSlope := (-37533788522452483 / 10000000000000000 : ℚ)
  oldCenter := (295215557738729 / 500000000000000 : ℚ)
  oldLo := (7375000000000001 / 12500000000000000 : ℚ)
  oldHi := (2953631284916201 / 5000000000000000 : ℚ)
  oldPieces := [piece_1385, piece_1386]
}

def cell_9108 : Cell := { cellDefaults with
  domain := ⟨(599 / 1600 : ℚ), (5991 / 16000 : ℚ)⟩
  r := (72283692492149 / 100000000000000 : ℚ)
  w := (4031933283061 / 2500000000000 : ℚ)
  center := (11981 / 32000 : ℚ)
  supportValue := (2950982978549273 / 5000000000000000 : ℚ)
  supportSlope := (-3751158159360557 / 1000000000000000 : ℚ)
  oldCenter := (2950982978549273 / 5000000000000000 : ℚ)
  oldLo := (7375000000000001 / 12500000000000000 : ℚ)
  oldHi := (29525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1385]
}

def cell_9109 : Cell := { cellDefaults with
  domain := ⟨(5991 / 16000 : ℚ), (749 / 2000 : ℚ)⟩
  r := (72283692492149 / 100000000000000 : ℚ)
  w := (4031933283061 / 2500000000000 : ℚ)
  center := (11983 / 32000 : ℚ)
  supportValue := (1474905539773683 / 2500000000000000 : ℚ)
  supportSlope := (-37491476958813053 / 10000000000000000 : ℚ)
  oldCenter := (1474905539773683 / 2500000000000000 : ℚ)
  oldHi := (29525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1384, piece_1385]
}

def cell_9110 : Cell := { cellDefaults with
  domain := ⟨(749 / 2000 : ℚ), (5993 / 16000 : ℚ)⟩
  r := (9029319763687 / 12500000000000 : ℚ)
  w := (3224052913747 / 2000000000000 : ℚ)
  center := (2397 / 6400 : ℚ)
  supportValue := (590690615656421 / 1000000000000000 : ℚ)
  supportSlope := (-3753047208178373 / 1000000000000000 : ℚ)
  oldCenter := (590690615656421 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_915
  oldLo := (29525000000000001 / 50000000000000000 : ℚ)
  oldHi := (7387500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1386, piece_1387]
}

def cell_9111 : Cell := { cellDefaults with
  domain := ⟨(5993 / 16000 : ℚ), (2997 / 8000 : ℚ)⟩
  r := (9029319763687 / 12500000000000 : ℚ)
  w := (3224052913747 / 2000000000000 : ℚ)
  center := (11987 / 32000 : ℚ)
  supportValue := (184517536566437 / 312500000000000 : ℚ)
  supportSlope := (-4688812263267117 / 1250000000000000 : ℚ)
  oldCenter := (184517536566437 / 312500000000000 : ℚ)
  newCoefficients := coefficients_915
  oldLo := (7375000000000001 / 12500000000000000 : ℚ)
  oldHi := (2953631284916201 / 5000000000000000 : ℚ)
  oldPieces := [piece_1385, piece_1386]
}

def cell_9112 : Cell := { cellDefaults with
  domain := ⟨(2997 / 8000 : ℚ), (1199 / 3200 : ℚ)⟩
  r := (9029319763687 / 12500000000000 : ℚ)
  w := (3224052913747 / 2000000000000 : ℚ)
  center := (11989 / 32000 : ℚ)
  supportValue := (5902217396410367 / 10000000000000000 : ℚ)
  supportSlope := (-3748881989537267 / 1000000000000000 : ℚ)
  oldCenter := (5902217396410367 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_915
  oldLo := (7375000000000001 / 12500000000000000 : ℚ)
  oldHi := (29525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1385]
}

def cell_9113 : Cell := { cellDefaults with
  domain := ⟨(1199 / 3200 : ℚ), (1499 / 4000 : ℚ)⟩
  r := (9029319763687 / 12500000000000 : ℚ)
  w := (3224052913747 / 2000000000000 : ℚ)
  center := (11991 / 32000 : ℚ)
  supportValue := (1179975010088187 / 2000000000000000 : ℚ)
  supportSlope := (-1873413285363057 / 500000000000000 : ℚ)
  oldCenter := (1179975010088187 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_915
  oldHi := (29525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1384, piece_1385]
}

def cell_9114 : Cell := { cellDefaults with
  domain := ⟨(1499 / 4000 : ℚ), (5997 / 16000 : ℚ)⟩
  r := (9029319763687 / 12500000000000 : ℚ)
  w := (3224052913747 / 2000000000000 : ℚ)
  center := (11993 / 32000 : ℚ)
  supportValue := (5897533877201853 / 10000000000000000 : ℚ)
  supportSlope := (-7489444903455933 / 2000000000000000 : ℚ)
  oldCenter := (5897533877201853 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_915
  oldPieces := [piece_1384]
}

def cell_9115 : Cell := { cellDefaults with
  domain := ⟨(5997 / 16000 : ℚ), (2999 / 8000 : ℚ)⟩
  r := (9029319763687 / 12500000000000 : ℚ)
  w := (3224052913747 / 2000000000000 : ℚ)
  center := (2399 / 6400 : ℚ)
  supportValue := (2947597072804411 / 5000000000000000 : ℚ)
  supportSlope := (-467825955625667 / 125000000000000 : ℚ)
  oldCenter := (2947597072804411 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_915
  oldLo := (7362500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1383, piece_1384]
}

def cell_9116 : Cell := { cellDefaults with
  domain := ⟨(2999 / 8000 : ℚ), (5999 / 16000 : ℚ)⟩
  r := (9029319763687 / 12500000000000 : ℚ)
  w := (3224052913747 / 2000000000000 : ℚ)
  center := (11997 / 32000 : ℚ)
  supportValue := (1178571118546577 / 2000000000000000 : ℚ)
  supportSlope := (-18702843395637103 / 5000000000000000 : ℚ)
  oldCenter := (1178571118546577 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_915
  oldLo := (7362500000000001 / 12500000000000000 : ℚ)
  oldHi := (29475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1383]
}

def cell_9117 : Cell := { cellDefaults with
  domain := ⟨(5999 / 16000 : ℚ), (3 / 8 : ℚ)⟩
  r := (9029319763687 / 12500000000000 : ℚ)
  w := (3224052913747 / 2000000000000 : ℚ)
  center := (11999 / 32000 : ℚ)
  supportValue := (5890518456484419 / 10000000000000000 : ℚ)
  supportSlope := (-1869196572526377 / 500000000000000 : ℚ)
  oldCenter := (5890518456484419 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_915
  oldLo := (29425000000000001 / 50000000000000000 : ℚ)
  oldHi := (29475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1382, piece_1383]
}

def cell_9118 : Cell := { cellDefaults with
  domain := ⟨(3 / 8 : ℚ), (3750279329608939 / 10000000000000000 : ℚ)⟩
  center := (7500279329608939 / 20000000000000000 : ℚ)
  supportValue := (2949214367853339 / 5000000000000000 : ℚ)
  supportSlope := (-3743082901646997 / 1000000000000000 : ℚ)
  oldCenter := (2949214367853339 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_916
  oldPieces := [piece_1384]
}

def cell_9119 : Cell := { cellDefaults with
  domain := ⟨(3750279329608939 / 10000000000000000 : ℚ), (15003337988826817 / 40000000000000000 : ℚ)⟩
  center := (30004455307262573 / 80000000000000000 : ℚ)
  supportValue := (2948434219844671 / 5000000000000000 : ℚ)
  supportSlope := (-3741545333985911 / 1000000000000000 : ℚ)
  oldCenter := (2948434219844671 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_917
  oldPieces := [piece_1384]
}

def cell_9120 : Cell := { cellDefaults with
  domain := ⟨(15003337988826817 / 40000000000000000 : ℚ), (7502779329608939 / 20000000000000000 : ℚ)⟩
  center := (6001779329608939 / 16000000000000000 : ℚ)
  supportValue := (589479179602941 / 1000000000000000 : ℚ)
  supportSlope := (-149591043695219 / 40000000000000 : ℚ)
  oldCenter := (589479179602941 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_917
  oldLo := (7362500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1383, piece_1384]
}

def cell_9121 : Cell := { cellDefaults with
  domain := ⟨(7502779329608939 / 20000000000000000 : ℚ), (15007779329608939 / 40000000000000000 : ℚ)⟩
  center := (30013337988826817 / 80000000000000000 : ℚ)
  supportValue := (2946358029534241 / 5000000000000000 : ℚ)
  supportSlope := (-9344787237974329 / 2500000000000000 : ℚ)
  oldCenter := (2946358029534241 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_917
  oldLo := (7362500000000001 / 12500000000000000 : ℚ)
  oldHi := (29475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1383]
}

def cell_9122 : Cell := { cellDefaults with
  domain := ⟨(15007779329608939 / 40000000000000000 : ℚ), (1501 / 4000 : ℚ)⟩
  center := (30017779329608939 / 80000000000000000 : ℚ)
  supportValue := (5890641456064523 / 10000000000000000 : ℚ)
  supportSlope := (-116748775297623 / 31250000000000 : ℚ)
  oldCenter := (5890641456064523 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_917
  oldLo := (29425000000000001 / 50000000000000000 : ℚ)
  oldHi := (29475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1382, piece_1383]
}

def cell_9123 : Cell := { cellDefaults with
  domain := ⟨(1501 / 4000 : ℚ), (1201 / 3200 : ℚ)⟩
  center := (12009 / 32000 : ℚ)
  supportValue := (2944218712882519 / 5000000000000000 : ℚ)
  supportSlope := (-18670803833717997 / 5000000000000000 : ℚ)
  oldCenter := (2944218712882519 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_917
  oldLo := (29425000000000001 / 50000000000000000 : ℚ)
  oldHi := (7362500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1382]
}

def cell_9124 : Cell := { cellDefaults with
  domain := ⟨(1201 / 3200 : ℚ), (3003 / 8000 : ℚ)⟩
  center := (12011 / 32000 : ℚ)
  supportValue := (1177220858497227 / 2000000000000000 : ℚ)
  supportSlope := (-932969137577011 / 250000000000000 : ℚ)
  oldCenter := (1177220858497227 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_917
  oldLo := (7350000000000001 / 12500000000000000 : ℚ)
  oldHi := (7362500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1381, piece_1382]
}

def cell_9125 : Cell := { cellDefaults with
  domain := ⟨(3003 / 8000 : ℚ), (6007 / 16000 : ℚ)⟩
  center := (12013 / 32000 : ℚ)
  supportValue := (5883772443092037 / 10000000000000000 : ℚ)
  supportSlope := (-1865013325613063 / 500000000000000 : ℚ)
  oldCenter := (5883772443092037 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_917
  oldLo := (7350000000000001 / 12500000000000000 : ℚ)
  oldHi := (29425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1381]
}

def cell_9126 : Cell := { cellDefaults with
  domain := ⟨(6007 / 16000 : ℚ), (751 / 2000 : ℚ)⟩
  center := (2403 / 6400 : ℚ)
  supportValue := (5881441893081731 / 10000000000000000 : ℚ)
  supportSlope := (-1164916163822749 / 312500000000000 : ℚ)
  oldCenter := (5881441893081731 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_917
  oldLo := (7350000000000001 / 12500000000000000 : ℚ)
  oldHi := (29425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1381]
}

def cell_9127 : Cell := { cellDefaults with
  domain := ⟨(751 / 2000 : ℚ), (6009 / 16000 : ℚ)⟩
  r := (72136511727617 / 100000000000000 : ℚ)
  w := (16105376379933 / 10000000000000 : ℚ)
  center := (12017 / 32000 : ℚ)
  supportValue := (5888687718389293 / 10000000000000000 : ℚ)
  supportSlope := (-3731893418372323 / 1000000000000000 : ℚ)
  oldCenter := (5888687718389293 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_918
  oldLo := (29425000000000001 / 50000000000000000 : ℚ)
  oldHi := (7362500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1382]
}

def cell_9128 : Cell := { cellDefaults with
  domain := ⟨(6009 / 16000 : ℚ), (601 / 1600 : ℚ)⟩
  r := (72136511727617 / 100000000000000 : ℚ)
  w := (16105376379933 / 10000000000000 : ℚ)
  center := (12019 / 32000 : ℚ)
  supportValue := (1471589000212557 / 2500000000000000 : ℚ)
  supportSlope := (-37296010460536877 / 10000000000000000 : ℚ)
  oldCenter := (1471589000212557 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_918
  oldLo := (29425000000000001 / 50000000000000000 : ℚ)
  oldHi := (7362500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1382]
}

def cell_9129 : Cell := { cellDefaults with
  domain := ⟨(601 / 1600 : ℚ), (6011 / 16000 : ℚ)⟩
  r := (72136511727617 / 100000000000000 : ℚ)
  w := (16105376379933 / 10000000000000 : ℚ)
  center := (12021 / 32000 : ℚ)
  supportValue := (5884025595515623 / 10000000000000000 : ℚ)
  supportSlope := (-9319327011674261 / 2500000000000000 : ℚ)
  oldCenter := (5884025595515623 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_918
  oldLo := (7350000000000001 / 12500000000000000 : ℚ)
  oldHi := (7362500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1381, piece_1382]
}

def cell_9130 : Cell := { cellDefaults with
  domain := ⟨(6011 / 16000 : ℚ), (1503 / 4000 : ℚ)⟩
  r := (72136511727617 / 100000000000000 : ℚ)
  w := (16105376379933 / 10000000000000 : ℚ)
  center := (12023 / 32000 : ℚ)
  supportValue := (2940848227919021 / 5000000000000000 : ℚ)
  supportSlope := (-18627386761203013 / 5000000000000000 : ℚ)
  oldCenter := (2940848227919021 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_918
  oldLo := (7350000000000001 / 12500000000000000 : ℚ)
  oldHi := (29425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1381]
}

def cell_9131 : Cell := { cellDefaults with
  domain := ⟨(1503 / 4000 : ℚ), (6013 / 16000 : ℚ)⟩
  r := (72136511727617 / 100000000000000 : ℚ)
  w := (16105376379933 / 10000000000000 : ℚ)
  center := (481 / 1280 : ℚ)
  supportValue := (5879368669171363 / 10000000000000000 : ℚ)
  supportSlope := (-372354254906071 / 100000000000000 : ℚ)
  oldCenter := (5879368669171363 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_918
  oldLo := (29375000000000001 / 50000000000000000 : ℚ)
  oldHi := (29425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1380, piece_1381]
}

def cell_9132 : Cell := { cellDefaults with
  domain := ⟨(6013 / 16000 : ℚ), (3007 / 8000 : ℚ)⟩
  r := (72136511727617 / 100000000000000 : ℚ)
  w := (16105376379933 / 10000000000000 : ℚ)
  center := (12027 / 32000 : ℚ)
  supportValue := (5877042103983653 / 10000000000000000 : ℚ)
  supportSlope := (-1860679930357989 / 500000000000000 : ℚ)
  oldCenter := (5877042103983653 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_918
  oldLo := (29375000000000001 / 50000000000000000 : ℚ)
  oldHi := (7350000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1380]
}

def cell_9133 : Cell := { cellDefaults with
  domain := ⟨(3007 / 8000 : ℚ), (1203 / 3200 : ℚ)⟩
  r := (72136511727617 / 100000000000000 : ℚ)
  w := (16105376379933 / 10000000000000 : ℚ)
  center := (12029 / 32000 : ℚ)
  supportValue := (1174943386503753 / 2000000000000000 : ℚ)
  supportSlope := (-7438719407595329 / 2000000000000000 : ℚ)
  oldCenter := (1174943386503753 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_918
  oldLo := (7337500000000001 / 12500000000000000 : ℚ)
  oldHi := (7350000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1379, piece_1380]
}

def cell_9134 : Cell := { cellDefaults with
  domain := ⟨(1203 / 3200 : ℚ), (47 / 125 : ℚ)⟩
  r := (72136511727617 / 100000000000000 : ℚ)
  w := (16105376379933 / 10000000000000 : ℚ)
  center := (12031 / 32000 : ℚ)
  supportValue := (1174478587604897 / 2000000000000000 : ℚ)
  supportSlope := (-3717247923095357 / 1000000000000000 : ℚ)
  oldCenter := (1174478587604897 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_918
  oldLo := (7337500000000001 / 12500000000000000 : ℚ)
  oldHi := (29375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1379]
}

def cell_9135 : Cell := { cellDefaults with
  domain := ⟨(47 / 125 : ℚ), (6017 / 16000 : ℚ)⟩
  r := (1441751991931 / 2000000000000 : ℚ)
  w := (8048978400517 / 5000000000000 : ℚ)
  center := (12033 / 32000 : ℚ)
  supportValue := (5879619449828631 / 10000000000000000 : ℚ)
  supportSlope := (-232577138436163 / 62500000000000 : ℚ)
  oldCenter := (5879619449828631 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_919
  oldLo := (29375000000000001 / 50000000000000000 : ℚ)
  oldHi := (29425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1380, piece_1381]
}

def cell_9136 : Cell := { cellDefaults with
  domain := ⟨(6017 / 16000 : ℚ), (3009 / 8000 : ℚ)⟩
  r := (1441751991931 / 2000000000000 : ℚ)
  w := (8048978400517 / 5000000000000 : ℚ)
  center := (2407 / 6400 : ℚ)
  supportValue := (23509177180809 / 40000000000000 : ℚ)
  supportSlope := (-3719105125092881 / 1000000000000000 : ℚ)
  oldCenter := (23509177180809 / 40000000000000 : ℚ)
  newCoefficients := coefficients_919
  oldLo := (29375000000000001 / 50000000000000000 : ℚ)
  oldHi := (7350000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1380]
}

def cell_9137 : Cell := { cellDefaults with
  domain := ⟨(3009 / 8000 : ℚ), (6019 / 16000 : ℚ)⟩
  r := (1441751991931 / 2000000000000 : ℚ)
  w := (8048978400517 / 5000000000000 : ℚ)
  center := (12037 / 32000 : ℚ)
  supportValue := (2937485281412787 / 5000000000000000 : ℚ)
  supportSlope := (-232316205793337 / 62500000000000 : ℚ)
  oldCenter := (2937485281412787 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_919
  oldLo := (7337500000000001 / 12500000000000000 : ℚ)
  oldHi := (7350000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1379, piece_1380]
}

def cell_9138 : Cell := { cellDefaults with
  domain := ⟨(6019 / 16000 : ℚ), (301 / 800 : ℚ)⟩
  r := (1441751991931 / 2000000000000 : ℚ)
  w := (8048978400517 / 5000000000000 : ℚ)
  center := (12039 / 32000 : ℚ)
  supportValue := (5872647973530051 / 10000000000000000 : ℚ)
  supportSlope := (-18575008815933103 / 5000000000000000 : ℚ)
  oldCenter := (5872647973530051 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_919
  oldLo := (7337500000000001 / 12500000000000000 : ℚ)
  oldHi := (29375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1379]
}

def cell_9139 : Cell := { cellDefaults with
  domain := ⟨(301 / 800 : ℚ), (6021 / 16000 : ℚ)⟩
  r := (1441751991931 / 2000000000000 : ℚ)
  w := (8048978400517 / 5000000000000 : ℚ)
  center := (12041 / 32000 : ℚ)
  supportValue := (1467581702217251 / 2500000000000000 : ℚ)
  supportSlope := (-1485155330377097 / 400000000000000 : ℚ)
  oldCenter := (1467581702217251 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_919
  oldLo := (29325000000000001 / 50000000000000000 : ℚ)
  oldHi := (29375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1378, piece_1379]
}

def cell_9140 : Cell := { cellDefaults with
  domain := ⟨(6021 / 16000 : ℚ), (3011 / 8000 : ℚ)⟩
  r := (1441751991931 / 2000000000000 : ℚ)
  w := (8048978400517 / 5000000000000 : ℚ)
  center := (12043 / 32000 : ℚ)
  supportValue := (5868006821586209 / 10000000000000000 : ℚ)
  supportSlope := (-18554519600986197 / 5000000000000000 : ℚ)
  oldCenter := (5868006821586209 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_919
  oldLo := (29325000000000001 / 50000000000000000 : ℚ)
  oldHi := (7337500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1378]
}

def cell_9141 : Cell := { cellDefaults with
  domain := ⟨(3011 / 8000 : ℚ), (6023 / 16000 : ℚ)⟩
  r := (1441751991931 / 2000000000000 : ℚ)
  w := (8048978400517 / 5000000000000 : ℚ)
  center := (2409 / 6400 : ℚ)
  supportValue := (1466422054341179 / 2500000000000000 : ℚ)
  supportSlope := (-7417442866127999 / 2000000000000000 : ℚ)
  oldCenter := (1466422054341179 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_919
  oldLo := (7325000000000001 / 12500000000000000 : ℚ)
  oldHi := (7337500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1377, piece_1378]
}

def cell_9142 : Cell := { cellDefaults with
  domain := ⟨(6023 / 16000 : ℚ), (753 / 2000 : ℚ)⟩
  r := (1441751991931 / 2000000000000 : ℚ)
  w := (8048978400517 / 5000000000000 : ℚ)
  center := (12047 / 32000 : ℚ)
  supportValue := (5863370833383407 / 10000000000000000 : ℚ)
  supportSlope := (-11583786195557 / 3125000000000 : ℚ)
  oldCenter := (5863370833383407 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_919
  oldLo := (7325000000000001 / 12500000000000000 : ℚ)
  oldHi := (29325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1377]
}

def cell_9143 : Cell := { cellDefaults with
  domain := ⟨(753 / 2000 : ℚ), (241 / 640 : ℚ)⟩
  r := (72038761558869 / 100000000000000 : ℚ)
  w := (16090554304407 / 10000000000000 : ℚ)
  center := (12049 / 32000 : ℚ)
  supportValue := (5870577889260977 / 10000000000000000 : ℚ)
  supportSlope := (-7421175625680121 / 2000000000000000 : ℚ)
  oldCenter := (5870577889260977 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_920
  oldLo := (29325000000000001 / 50000000000000000 : ℚ)
  oldHi := (29375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1378, piece_1379]
}

def cell_9144 : Cell := { cellDefaults with
  domain := ⟨(241 / 640 : ℚ), (3013 / 8000 : ℚ)⟩
  r := (72038761558869 / 100000000000000 : ℚ)
  w := (16090554304407 / 10000000000000 : ℚ)
  center := (12051 / 32000 : ℚ)
  supportValue := (586825933846661 / 1000000000000000 : ℚ)
  supportSlope := (-1854328672349581 / 500000000000000 : ℚ)
  oldCenter := (586825933846661 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_920
  oldLo := (29325000000000001 / 50000000000000000 : ℚ)
  oldHi := (7337500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1378]
}

def cell_9145 : Cell := { cellDefaults with
  domain := ⟨(3013 / 8000 : ℚ), (6027 / 16000 : ℚ)⟩
  r := (72038761558869 / 100000000000000 : ℚ)
  w := (16090554304407 / 10000000000000 : ℚ)
  center := (12053 / 32000 : ℚ)
  supportValue := (2932971068503023 / 5000000000000000 : ℚ)
  supportSlope := (-7412857562052011 / 2000000000000000 : ℚ)
  oldCenter := (2932971068503023 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_920
  oldLo := (7325000000000001 / 12500000000000000 : ℚ)
  oldHi := (7337500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1377, piece_1378]
}

def cell_9146 : Cell := { cellDefaults with
  domain := ⟨(6027 / 16000 : ℚ), (1507 / 4000 : ℚ)⟩
  r := (72038761558869 / 100000000000000 : ℚ)
  w := (16090554304407 / 10000000000000 : ℚ)
  center := (2411 / 6400 : ℚ)
  supportValue := (1465906546150467 / 2500000000000000 : ℚ)
  supportSlope := (-23153584880653 / 6250000000000 : ℚ)
  oldCenter := (1465906546150467 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_920
  oldLo := (7325000000000001 / 12500000000000000 : ℚ)
  oldHi := (29325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1377]
}

def cell_9147 : Cell := { cellDefaults with
  domain := ⟨(1507 / 4000 : ℚ), (6029 / 16000 : ℚ)⟩
  r := (72038761558869 / 100000000000000 : ℚ)
  w := (16090554304407 / 10000000000000 : ℚ)
  center := (12057 / 32000 : ℚ)
  supportValue := (5861311534784089 / 10000000000000000 : ℚ)
  supportSlope := (-925576046761023 / 250000000000000 : ℚ)
  oldCenter := (5861311534784089 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_920
  oldLo := (7325000000000001 / 12500000000000000 : ℚ)
  oldHi := (29325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1377]
}

def cell_9148 : Cell := { cellDefaults with
  domain := ⟨(6029 / 16000 : ℚ), (603 / 1600 : ℚ)⟩
  r := (72038761558869 / 100000000000000 : ℚ)
  w := (16090554304407 / 10000000000000 : ℚ)
  center := (12059 / 32000 : ℚ)
  supportValue := (292949908911601 / 500000000000000 : ℚ)
  supportSlope := (-18502324653137947 / 5000000000000000 : ℚ)
  oldCenter := (292949908911601 / 500000000000000 : ℚ)
  newCoefficients := coefficients_920
  oldLo := (29275000000000001 / 50000000000000000 : ℚ)
  oldHi := (29325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1376, piece_1377]
}

def cell_9149 : Cell := { cellDefaults with
  domain := ⟨(603 / 1600 : ℚ), (6031 / 16000 : ℚ)⟩
  r := (72038761558869 / 100000000000000 : ℚ)
  w := (16090554304407 / 10000000000000 : ℚ)
  center := (12061 / 32000 : ℚ)
  supportValue := (14641715191563 / 25000000000000 : ℚ)
  supportSlope := (-18491140943091011 / 5000000000000000 : ℚ)
  oldCenter := (14641715191563 / 25000000000000 : ℚ)
  newCoefficients := coefficients_920
  oldLo := (29275000000000001 / 50000000000000000 : ℚ)
  oldHi := (7325000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1376]
}

theorem check_9100 : cell_9100.check = true := by
  decide +kernel

theorem check_9101 : cell_9101.check = true := by
  decide +kernel

theorem check_9102 : cell_9102.check = true := by
  decide +kernel

theorem check_9103 : cell_9103.check = true := by
  decide +kernel

theorem check_9104 : cell_9104.check = true := by
  decide +kernel

theorem check_9105 : cell_9105.check = true := by
  decide +kernel

theorem check_9106 : cell_9106.check = true := by
  decide +kernel

theorem check_9107 : cell_9107.check = true := by
  decide +kernel

theorem check_9108 : cell_9108.check = true := by
  decide +kernel

theorem check_9109 : cell_9109.check = true := by
  decide +kernel

theorem check_9110 : cell_9110.check = true := by
  decide +kernel

theorem check_9111 : cell_9111.check = true := by
  decide +kernel

theorem check_9112 : cell_9112.check = true := by
  decide +kernel

theorem check_9113 : cell_9113.check = true := by
  decide +kernel

theorem check_9114 : cell_9114.check = true := by
  decide +kernel

theorem check_9115 : cell_9115.check = true := by
  decide +kernel

theorem check_9116 : cell_9116.check = true := by
  decide +kernel

theorem check_9117 : cell_9117.check = true := by
  decide +kernel

theorem check_9118 : cell_9118.check = true := by
  decide +kernel

theorem check_9119 : cell_9119.check = true := by
  decide +kernel

theorem check_9120 : cell_9120.check = true := by
  decide +kernel

theorem check_9121 : cell_9121.check = true := by
  decide +kernel

theorem check_9122 : cell_9122.check = true := by
  decide +kernel

theorem check_9123 : cell_9123.check = true := by
  decide +kernel

theorem check_9124 : cell_9124.check = true := by
  decide +kernel

theorem check_9125 : cell_9125.check = true := by
  decide +kernel

theorem check_9126 : cell_9126.check = true := by
  decide +kernel

theorem check_9127 : cell_9127.check = true := by
  decide +kernel

theorem check_9128 : cell_9128.check = true := by
  decide +kernel

theorem check_9129 : cell_9129.check = true := by
  decide +kernel

theorem check_9130 : cell_9130.check = true := by
  decide +kernel

theorem check_9131 : cell_9131.check = true := by
  decide +kernel

theorem check_9132 : cell_9132.check = true := by
  decide +kernel

theorem check_9133 : cell_9133.check = true := by
  decide +kernel

theorem check_9134 : cell_9134.check = true := by
  decide +kernel

theorem check_9135 : cell_9135.check = true := by
  decide +kernel

theorem check_9136 : cell_9136.check = true := by
  decide +kernel

theorem check_9137 : cell_9137.check = true := by
  decide +kernel

theorem check_9138 : cell_9138.check = true := by
  decide +kernel

theorem check_9139 : cell_9139.check = true := by
  decide +kernel

theorem check_9140 : cell_9140.check = true := by
  decide +kernel

theorem check_9141 : cell_9141.check = true := by
  decide +kernel

theorem check_9142 : cell_9142.check = true := by
  decide +kernel

theorem check_9143 : cell_9143.check = true := by
  decide +kernel

theorem check_9144 : cell_9144.check = true := by
  decide +kernel

theorem check_9145 : cell_9145.check = true := by
  decide +kernel

theorem check_9146 : cell_9146.check = true := by
  decide +kernel

theorem check_9147 : cell_9147.check = true := by
  decide +kernel

theorem check_9148 : cell_9148.check = true := by
  decide +kernel

theorem check_9149 : cell_9149.check = true := by
  decide +kernel

def cells : List Cell := [cell_9100, cell_9101, cell_9102, cell_9103, cell_9104, cell_9105, cell_9106, cell_9107, cell_9108, cell_9109, cell_9110, cell_9111, cell_9112, cell_9113, cell_9114, cell_9115, cell_9116, cell_9117, cell_9118, cell_9119, cell_9120, cell_9121, cell_9122, cell_9123, cell_9124, cell_9125, cell_9126, cell_9127, cell_9128, cell_9129, cell_9130, cell_9131, cell_9132, cell_9133, cell_9134, cell_9135, cell_9136, cell_9137, cell_9138, cell_9139, cell_9140, cell_9141, cell_9142, cell_9143, cell_9144, cell_9145, cell_9146, cell_9147, cell_9148, cell_9149]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9100, check_9101, check_9102, check_9103, check_9104, check_9105, check_9106, check_9107, check_9108, check_9109, check_9110, check_9111, check_9112, check_9113, check_9114, check_9115, check_9116, check_9117, check_9118, check_9119, check_9120, check_9121, check_9122, check_9123, check_9124, check_9125, check_9126, check_9127, check_9128, check_9129, check_9130, check_9131, check_9132, check_9133, check_9134, check_9135, check_9136, check_9137, check_9138, check_9139, check_9140, check_9141, check_9142, check_9143, check_9144, check_9145, check_9146, check_9147, check_9148, check_9149, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0182

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0182
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0182
open AnalyticBounds.ExpressionCertificate

theorem linked_9100 : Linked cell_9100 pieces := by
  link_source cell_9100 with piece_913 using piece_913_mem, ⟨piece_1387_mem, piece_1388_mem⟩

theorem linked_9101 : Linked cell_9101 pieces := by
  link_source cell_9101 with piece_913 using piece_913_mem, piece_1387_mem

theorem linked_9102 : Linked cell_9102 pieces := by
  link_source cell_9102 with piece_914 using piece_914_mem, ⟨piece_1388_mem, piece_1389_mem⟩

theorem linked_9103 : Linked cell_9103 pieces := by
  link_source cell_9103 with piece_914 using piece_914_mem, piece_1388_mem

theorem linked_9104 : Linked cell_9104 pieces := by
  link_source cell_9104 with piece_914 using piece_914_mem, piece_1388_mem

theorem linked_9105 : Linked cell_9105 pieces := by
  link_source cell_9105 with piece_914 using piece_914_mem, ⟨piece_1387_mem, piece_1388_mem⟩

theorem linked_9106 : Linked cell_9106 pieces := by
  link_source cell_9106 with piece_914 using piece_914_mem, ⟨piece_1386_mem, piece_1387_mem⟩

theorem linked_9107 : Linked cell_9107 pieces := by
  link_source cell_9107 with piece_914 using piece_914_mem, ⟨piece_1385_mem, piece_1386_mem⟩

theorem linked_9108 : Linked cell_9108 pieces := by
  link_source cell_9108 with piece_914 using piece_914_mem, piece_1385_mem

theorem linked_9109 : Linked cell_9109 pieces := by
  link_source cell_9109 with piece_914 using piece_914_mem, ⟨piece_1384_mem, piece_1385_mem⟩

theorem linked_9110 : Linked cell_9110 pieces := by
  link_source cell_9110 with piece_915 using piece_915_mem, ⟨piece_1386_mem, piece_1387_mem⟩

theorem linked_9111 : Linked cell_9111 pieces := by
  link_source cell_9111 with piece_915 using piece_915_mem, ⟨piece_1385_mem, piece_1386_mem⟩

theorem linked_9112 : Linked cell_9112 pieces := by
  link_source cell_9112 with piece_915 using piece_915_mem, piece_1385_mem

theorem linked_9113 : Linked cell_9113 pieces := by
  link_source cell_9113 with piece_915 using piece_915_mem, ⟨piece_1384_mem, piece_1385_mem⟩

theorem linked_9114 : Linked cell_9114 pieces := by
  link_source cell_9114 with piece_915 using piece_915_mem, piece_1384_mem

theorem linked_9115 : Linked cell_9115 pieces := by
  link_source cell_9115 with piece_915 using piece_915_mem, ⟨piece_1383_mem, piece_1384_mem⟩

theorem linked_9116 : Linked cell_9116 pieces := by
  link_source cell_9116 with piece_915 using piece_915_mem, piece_1383_mem

theorem linked_9117 : Linked cell_9117 pieces := by
  link_source cell_9117 with piece_915 using piece_915_mem, ⟨piece_1382_mem, piece_1383_mem⟩

theorem linked_9118 : Linked cell_9118 pieces := by
  link_source cell_9118 with piece_916 using piece_916_mem, piece_1384_mem

theorem linked_9119 : Linked cell_9119 pieces := by
  link_source cell_9119 with piece_917 using piece_917_mem, piece_1384_mem

theorem linked_9120 : Linked cell_9120 pieces := by
  link_source cell_9120 with piece_917 using piece_917_mem, ⟨piece_1383_mem, piece_1384_mem⟩

theorem linked_9121 : Linked cell_9121 pieces := by
  link_source cell_9121 with piece_917 using piece_917_mem, piece_1383_mem

theorem linked_9122 : Linked cell_9122 pieces := by
  link_source cell_9122 with piece_917 using piece_917_mem, ⟨piece_1382_mem, piece_1383_mem⟩

theorem linked_9123 : Linked cell_9123 pieces := by
  link_source cell_9123 with piece_917 using piece_917_mem, piece_1382_mem

theorem linked_9124 : Linked cell_9124 pieces := by
  link_source cell_9124 with piece_917 using piece_917_mem, ⟨piece_1381_mem, piece_1382_mem⟩

theorem linked_9125 : Linked cell_9125 pieces := by
  link_source cell_9125 with piece_917 using piece_917_mem, piece_1381_mem

theorem linked_9126 : Linked cell_9126 pieces := by
  link_source cell_9126 with piece_917 using piece_917_mem, piece_1381_mem

theorem linked_9127 : Linked cell_9127 pieces := by
  link_source cell_9127 with piece_918 using piece_918_mem, piece_1382_mem

theorem linked_9128 : Linked cell_9128 pieces := by
  link_source cell_9128 with piece_918 using piece_918_mem, piece_1382_mem

theorem linked_9129 : Linked cell_9129 pieces := by
  link_source cell_9129 with piece_918 using piece_918_mem, ⟨piece_1381_mem, piece_1382_mem⟩

theorem linked_9130 : Linked cell_9130 pieces := by
  link_source cell_9130 with piece_918 using piece_918_mem, piece_1381_mem

theorem linked_9131 : Linked cell_9131 pieces := by
  link_source cell_9131 with piece_918 using piece_918_mem, ⟨piece_1380_mem, piece_1381_mem⟩

theorem linked_9132 : Linked cell_9132 pieces := by
  link_source cell_9132 with piece_918 using piece_918_mem, piece_1380_mem

theorem linked_9133 : Linked cell_9133 pieces := by
  link_source cell_9133 with piece_918 using piece_918_mem, ⟨piece_1379_mem, piece_1380_mem⟩

theorem linked_9134 : Linked cell_9134 pieces := by
  link_source cell_9134 with piece_918 using piece_918_mem, piece_1379_mem

theorem linked_9135 : Linked cell_9135 pieces := by
  link_source cell_9135 with piece_919 using piece_919_mem, ⟨piece_1380_mem, piece_1381_mem⟩

theorem linked_9136 : Linked cell_9136 pieces := by
  link_source cell_9136 with piece_919 using piece_919_mem, piece_1380_mem

theorem linked_9137 : Linked cell_9137 pieces := by
  link_source cell_9137 with piece_919 using piece_919_mem, ⟨piece_1379_mem, piece_1380_mem⟩

theorem linked_9138 : Linked cell_9138 pieces := by
  link_source cell_9138 with piece_919 using piece_919_mem, piece_1379_mem

theorem linked_9139 : Linked cell_9139 pieces := by
  link_source cell_9139 with piece_919 using piece_919_mem, ⟨piece_1378_mem, piece_1379_mem⟩

theorem linked_9140 : Linked cell_9140 pieces := by
  link_source cell_9140 with piece_919 using piece_919_mem, piece_1378_mem

theorem linked_9141 : Linked cell_9141 pieces := by
  link_source cell_9141 with piece_919 using piece_919_mem, ⟨piece_1377_mem, piece_1378_mem⟩

theorem linked_9142 : Linked cell_9142 pieces := by
  link_source cell_9142 with piece_919 using piece_919_mem, piece_1377_mem

theorem linked_9143 : Linked cell_9143 pieces := by
  link_source cell_9143 with piece_920 using piece_920_mem, ⟨piece_1378_mem, piece_1379_mem⟩

theorem linked_9144 : Linked cell_9144 pieces := by
  link_source cell_9144 with piece_920 using piece_920_mem, piece_1378_mem

theorem linked_9145 : Linked cell_9145 pieces := by
  link_source cell_9145 with piece_920 using piece_920_mem, ⟨piece_1377_mem, piece_1378_mem⟩

theorem linked_9146 : Linked cell_9146 pieces := by
  link_source cell_9146 with piece_920 using piece_920_mem, piece_1377_mem

theorem linked_9147 : Linked cell_9147 pieces := by
  link_source cell_9147 with piece_920 using piece_920_mem, piece_1377_mem

theorem linked_9148 : Linked cell_9148 pieces := by
  link_source cell_9148 with piece_920 using piece_920_mem, ⟨piece_1376_mem, piece_1377_mem⟩

theorem linked_9149 : Linked cell_9149 pieces := by
  link_source cell_9149 with piece_920 using piece_920_mem, piece_1376_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0182.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0182.cells,List.forall_mem_cons]
  exact ⟨linked_9100, linked_9101, linked_9102, linked_9103, linked_9104, linked_9105, linked_9106, linked_9107, linked_9108, linked_9109, linked_9110, linked_9111, linked_9112, linked_9113, linked_9114, linked_9115, linked_9116, linked_9117, linked_9118, linked_9119, linked_9120, linked_9121, linked_9122, linked_9123, linked_9124, linked_9125, linked_9126, linked_9127, linked_9128, linked_9129, linked_9130, linked_9131, linked_9132, linked_9133, linked_9134, linked_9135, linked_9136, linked_9137, linked_9138, linked_9139, linked_9140, linked_9141, linked_9142, linked_9143, linked_9144, linked_9145, linked_9146, linked_9147, linked_9148, linked_9149, by simp⟩

theorem covered : covers (2991 / 8000 : ℚ) (6031 / 16000 : ℚ)
    (SourceCertificates.Chunk0182.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0182
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0183
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(6031 / 16000 : ℚ), (377 / 1000 : ℚ)⟩
  branch := .left
  r := (35994998120001 / 50000000000000 : ℚ)
  w := (3216633496867 / 2000000000000 : ℚ)
  center := (12063 / 32000 : ℚ)
  supportValue := (234175012535587 / 400000000000000 : ℚ)
  supportSlope := (-4620396541210603 / 1250000000000000 : ℚ)
  oldCenter := (234175012535587 / 400000000000000 : ℚ)
  newCoefficients := coefficients_921
  oldLo := (58400000000000007 / 100000000000000000 : ℚ)
  oldHi := (29225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1372]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9150 : Cell := { cellDefaults with
  r := (72038761558869 / 100000000000000 : ℚ)
  w := (16090554304407 / 10000000000000 : ℚ)
  newCoefficients := coefficients_920
  oldLo := (585195530726257 / 1000000000000000 : ℚ)
  oldHi := (7325000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1375, piece_1376]
}

def cell_9151 : Cell := { cellDefaults with
  domain := ⟨(377 / 1000 : ℚ), (6033 / 16000 : ℚ)⟩
  center := (2413 / 6400 : ℚ)
  supportValue := (2930781816969729 / 5000000000000000 : ℚ)
  supportSlope := (-7400123813454229 / 2000000000000000 : ℚ)
  oldCenter := (2930781816969729 / 5000000000000000 : ℚ)
  oldLo := (7325000000000001 / 12500000000000000 : ℚ)
  oldHi := (29325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1377]
}

def cell_9152 : Cell := { cellDefaults with
  domain := ⟨(6033 / 16000 : ℚ), (3017 / 8000 : ℚ)⟩
  center := (12067 / 32000 : ℚ)
  supportValue := (5859251708865727 / 10000000000000000 : ℚ)
  supportSlope := (-18490883477255693 / 5000000000000000 : ℚ)
  oldCenter := (5859251708865727 / 10000000000000000 : ℚ)
  oldLo := (29275000000000001 / 50000000000000000 : ℚ)
  oldHi := (29325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1376, piece_1377]
}

def cell_9153 : Cell := { cellDefaults with
  domain := ⟨(3017 / 8000 : ℚ), (1207 / 3200 : ℚ)⟩
  center := (12069 / 32000 : ℚ)
  supportValue := (5856941004674251 / 10000000000000000 : ℚ)
  supportSlope := (-2309996550020621 / 625000000000000 : ℚ)
  oldCenter := (5856941004674251 / 10000000000000000 : ℚ)
  oldLo := (29275000000000001 / 50000000000000000 : ℚ)
  oldHi := (7325000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1376]
}

def cell_9154 : Cell := { cellDefaults with
  domain := ⟨(1207 / 3200 : ℚ), (1509 / 4000 : ℚ)⟩
  center := (12071 / 32000 : ℚ)
  supportValue := (2927315834006217 / 5000000000000000 : ℚ)
  supportSlope := (-18470184210706009 / 5000000000000000 : ℚ)
  oldCenter := (2927315834006217 / 5000000000000000 : ℚ)
  oldLo := (585195530726257 / 1000000000000000 : ℚ)
  oldHi := (7325000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1375, piece_1376]
}

def cell_9155 : Cell := { cellDefaults with
  domain := ⟨(1509 / 4000 : ℚ), (6037 / 16000 : ℚ)⟩
  center := (12073 / 32000 : ℚ)
  supportValue := (2926161751624551 / 5000000000000000 : ℚ)
  supportSlope := (-9229831222805629 / 2500000000000000 : ℚ)
  oldCenter := (2926161751624551 / 5000000000000000 : ℚ)
  oldLo := (7312500000000001 / 12500000000000000 : ℚ)
  oldHi := (29275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1374, piece_1375]
}

def cell_9156 : Cell := { cellDefaults with
  domain := ⟨(6037 / 16000 : ℚ), (3019 / 8000 : ℚ)⟩
  center := (483 / 1280 : ℚ)
  supportValue := (1462504187669709 / 2500000000000000 : ℚ)
  supportSlope := (-7379801729932467 / 2000000000000000 : ℚ)
  oldCenter := (1462504187669709 / 2500000000000000 : ℚ)
  oldLo := (29225000000000001 / 50000000000000000 : ℚ)
  oldHi := (585195530726257 / 1000000000000000 : ℚ)
  oldPieces := [piece_1373, piece_1374]
}

def cell_9157 : Cell := { cellDefaults with
  domain := ⟨(3019 / 8000 : ℚ), (6039 / 16000 : ℚ)⟩
  center := (12077 / 32000 : ℚ)
  supportValue := (2923855561953077 / 5000000000000000 : ℚ)
  supportSlope := (-7375751690950949 / 2000000000000000 : ℚ)
  oldCenter := (2923855561953077 / 5000000000000000 : ℚ)
  oldLo := (29225000000000001 / 50000000000000000 : ℚ)
  oldHi := (7312500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1373]
}

def cell_9158 : Cell := { cellDefaults with
  domain := ⟨(6039 / 16000 : ℚ), (151 / 400 : ℚ)⟩
  center := (12079 / 32000 : ℚ)
  supportValue := (5845406906001831 / 10000000000000000 : ℚ)
  supportSlope := (-36857689634501867 / 10000000000000000 : ℚ)
  oldCenter := (5845406906001831 / 10000000000000000 : ℚ)
  oldHi := (7312500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1372, piece_1373]
}

def cell_9159 : Cell := { cellDefaults with
  domain := ⟨(151 / 400 : ℚ), (6041 / 16000 : ℚ)⟩
  r := (71941304927303 / 100000000000000 : ℚ)
  w := (8037898607431 / 5000000000000 : ℚ)
  center := (12081 / 32000 : ℚ)
  supportValue := (2926288023637037 / 5000000000000000 : ℚ)
  supportSlope := (-3689698362073557 / 1000000000000000 : ℚ)
  oldCenter := (2926288023637037 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_922
  oldLo := (7312500000000001 / 12500000000000000 : ℚ)
  oldHi := (29275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1374, piece_1375]
}

def cell_9160 : Cell := { cellDefaults with
  domain := ⟨(6041 / 16000 : ℚ), (3021 / 8000 : ℚ)⟩
  r := (71941304927303 / 100000000000000 : ℚ)
  w := (8037898607431 / 5000000000000 : ℚ)
  center := (12083 / 32000 : ℚ)
  supportValue := (2925135344844023 / 5000000000000000 : ℚ)
  supportSlope := (-3687620328552299 / 1000000000000000 : ℚ)
  oldCenter := (2925135344844023 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_922
  oldLo := (29225000000000001 / 50000000000000000 : ℚ)
  oldHi := (585195530726257 / 1000000000000000 : ℚ)
  oldPieces := [piece_1373, piece_1374]
}

def cell_9161 : Cell := { cellDefaults with
  domain := ⟨(3021 / 8000 : ℚ), (6043 / 16000 : ℚ)⟩
  r := (71941304927303 / 100000000000000 : ℚ)
  w := (8037898607431 / 5000000000000 : ℚ)
  center := (2417 / 6400 : ℚ)
  supportValue := (5847966486926003 / 10000000000000000 : ℚ)
  supportSlope := (-737130049657253 / 200000000000000 : ℚ)
  oldCenter := (5847966486926003 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_922
  oldLo := (29225000000000001 / 50000000000000000 : ℚ)
  oldHi := (7312500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1373]
}

def cell_9162 : Cell := { cellDefaults with
  domain := ⟨(6043 / 16000 : ℚ), (1511 / 4000 : ℚ)⟩
  r := (71941304927303 / 100000000000000 : ℚ)
  w := (8037898607431 / 5000000000000 : ℚ)
  center := (12087 / 32000 : ℚ)
  supportValue := (2922831829339691 / 5000000000000000 : ℚ)
  supportSlope := (-1473398494006517 / 400000000000000 : ℚ)
  oldCenter := (2922831829339691 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_922
  oldHi := (7312500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1372, piece_1373]
}

def cell_9163 : Cell := { cellDefaults with
  domain := ⟨(1511 / 4000 : ℚ), (1209 / 3200 : ℚ)⟩
  r := (71941304927303 / 100000000000000 : ℚ)
  w := (8037898607431 / 5000000000000 : ℚ)
  center := (12089 / 32000 : ℚ)
  supportValue := (1460840508119021 / 2500000000000000 : ℚ)
  supportSlope := (-3681607666997877 / 1000000000000000 : ℚ)
  oldCenter := (1460840508119021 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_922
  oldPieces := [piece_1372]
}

def cell_9164 : Cell := { cellDefaults with
  domain := ⟨(1209 / 3200 : ℚ), (3023 / 8000 : ℚ)⟩
  r := (71941304927303 / 100000000000000 : ℚ)
  w := (8037898607431 / 5000000000000 : ℚ)
  center := (12091 / 32000 : ℚ)
  supportValue := (584106173013623 / 1000000000000000 : ℚ)
  supportSlope := (-3679376166083159 / 1000000000000000 : ℚ)
  oldCenter := (584106173013623 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_922
  oldLo := (29175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1371, piece_1372]
}

def cell_9165 : Cell := { cellDefaults with
  domain := ⟨(3023 / 8000 : ℚ), (6047 / 16000 : ℚ)⟩
  r := (71941304927303 / 100000000000000 : ℚ)
  w := (8037898607431 / 5000000000000 : ℚ)
  center := (12093 / 32000 : ℚ)
  supportValue := (2919381338945751 / 5000000000000000 : ℚ)
  supportSlope := (-1471028266222163 / 400000000000000 : ℚ)
  oldCenter := (2919381338945751 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_922
  oldLo := (29175000000000001 / 50000000000000000 : ℚ)
  oldHi := (58400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1371]
}

def cell_9166 : Cell := { cellDefaults with
  domain := ⟨(6047 / 16000 : ℚ), (189 / 500 : ℚ)⟩
  r := (71941304927303 / 100000000000000 : ℚ)
  w := (8037898607431 / 5000000000000 : ℚ)
  center := (2419 / 6400 : ℚ)
  supportValue := (729558112270791 / 1250000000000000 : ℚ)
  supportSlope := (-18376614094197663 / 5000000000000000 : ℚ)
  oldCenter := (729558112270791 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_922
  oldLo := (29175000000000001 / 50000000000000000 : ℚ)
  oldHi := (58400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1371]
}

def cell_9167 : Cell := { cellDefaults with
  domain := ⟨(189 / 500 : ℚ), (6049 / 16000 : ℚ)⟩
  r := (17973171774367 / 25000000000000 : ℚ)
  w := (16068441653757 / 10000000000000 : ℚ)
  center := (12097 / 32000 : ℚ)
  supportValue := (5843615764960063 / 10000000000000000 : ℚ)
  supportSlope := (-7358765358645769 / 2000000000000000 : ℚ)
  oldCenter := (5843615764960063 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_923
  oldPieces := [piece_1372]
}

def cell_9168 : Cell := { cellDefaults with
  domain := ⟨(6049 / 16000 : ℚ), (121 / 320 : ℚ)⟩
  r := (17973171774367 / 25000000000000 : ℚ)
  w := (16068441653757 / 10000000000000 : ℚ)
  center := (12099 / 32000 : ℚ)
  supportValue := (5841316851978853 / 10000000000000000 : ℚ)
  supportSlope := (-18385686106920929 / 5000000000000000 : ℚ)
  oldCenter := (5841316851978853 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_923
  oldPieces := [piece_1372]
}

def cell_9169 : Cell := { cellDefaults with
  domain := ⟨(121 / 320 : ℚ), (6051 / 16000 : ℚ)⟩
  r := (17973171774367 / 25000000000000 : ℚ)
  w := (16068441653757 / 10000000000000 : ℚ)
  center := (12101 / 32000 : ℚ)
  supportValue := (1459754804663713 / 2500000000000000 : ℚ)
  supportSlope := (-18376601984115837 / 5000000000000000 : ℚ)
  oldCenter := (1459754804663713 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_923
  oldLo := (29175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1371, piece_1372]
}

def cell_9170 : Cell := { cellDefaults with
  domain := ⟨(6051 / 16000 : ℚ), (1513 / 4000 : ℚ)⟩
  r := (17973171774367 / 25000000000000 : ℚ)
  w := (16068441653757 / 10000000000000 : ℚ)
  center := (12103 / 32000 : ℚ)
  supportValue := (1459180705812317 / 2500000000000000 : ℚ)
  supportSlope := (-1147846849209877 / 312500000000000 : ℚ)
  oldCenter := (1459180705812317 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_923
  oldLo := (29175000000000001 / 50000000000000000 : ℚ)
  oldHi := (58400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1371]
}

def cell_9171 : Cell := { cellDefaults with
  domain := ⟨(1513 / 4000 : ℚ), (6053 / 16000 : ℚ)⟩
  r := (17973171774367 / 25000000000000 : ℚ)
  w := (16068441653757 / 10000000000000 : ℚ)
  center := (2421 / 6400 : ℚ)
  supportValue := (2917213878649067 / 5000000000000000 : ℚ)
  supportSlope := (-917803598036393 / 250000000000000 : ℚ)
  oldCenter := (2917213878649067 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_923
  oldLo := (58300000000000007 / 100000000000000000 : ℚ)
  oldHi := (58400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1370, piece_1371]
}

def cell_9172 : Cell := { cellDefaults with
  domain := ⟨(6053 / 16000 : ℚ), (3027 / 8000 : ℚ)⟩
  r := (17973171774367 / 25000000000000 : ℚ)
  w := (16068441653757 / 10000000000000 : ℚ)
  center := (12107 / 32000 : ℚ)
  supportValue := (2916066938102331 / 5000000000000000 : ℚ)
  supportSlope := (-18345439260656349 / 5000000000000000 : ℚ)
  oldCenter := (2916066938102331 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_923
  oldLo := (58300000000000007 / 100000000000000000 : ℚ)
  oldHi := (29175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1370]
}

def cell_9173 : Cell := { cellDefaults with
  domain := ⟨(3027 / 8000 : ℚ), (1211 / 3200 : ℚ)⟩
  r := (17973171774367 / 25000000000000 : ℚ)
  w := (16068441653757 / 10000000000000 : ℚ)
  center := (12109 / 32000 : ℚ)
  supportValue := (5829841375546081 / 10000000000000000 : ℚ)
  supportSlope := (-91677781047661 / 25000000000000 : ℚ)
  oldCenter := (5829841375546081 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_923
  oldLo := (29125000000000001 / 50000000000000000 : ℚ)
  oldHi := (29175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1369, piece_1370]
}

def cell_9174 : Cell := { cellDefaults with
  domain := ⟨(1211 / 3200 : ℚ), (757 / 2000 : ℚ)⟩
  r := (17973171774367 / 25000000000000 : ℚ)
  w := (16068441653757 / 10000000000000 : ℚ)
  center := (12111 / 32000 : ℚ)
  supportValue := (5827550005717443 / 10000000000000000 : ℚ)
  supportSlope := (-9162679536736107 / 2500000000000000 : ℚ)
  oldCenter := (5827550005717443 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_923
  oldLo := (29125000000000001 / 50000000000000000 : ℚ)
  oldHi := (58300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1369]
}

def cell_9175 : Cell := { cellDefaults with
  domain := ⟨(757 / 2000 : ℚ), (6057 / 16000 : ℚ)⟩
  r := (71844142015583 / 100000000000000 : ℚ)
  w := (8030551981371 / 5000000000000 : ℚ)
  center := (12113 / 32000 : ℚ)
  supportValue := (729335184883833 / 1250000000000000 : ℚ)
  supportSlope := (-3668945871346807 / 1000000000000000 : ℚ)
  oldCenter := (729335184883833 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_924
  oldLo := (58300000000000007 / 100000000000000000 : ℚ)
  oldHi := (58400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1370, piece_1371]
}

def cell_9176 : Cell := { cellDefaults with
  domain := ⟨(6057 / 16000 : ℚ), (3029 / 8000 : ℚ)⟩
  r := (71844142015583 / 100000000000000 : ℚ)
  w := (8030551981371 / 5000000000000 : ℚ)
  center := (2423 / 6400 : ℚ)
  supportValue := (5832388982539973 / 10000000000000000 : ℚ)
  supportSlope := (-1833437352798839 / 500000000000000 : ℚ)
  oldCenter := (5832388982539973 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_924
  oldLo := (58300000000000007 / 100000000000000000 : ℚ)
  oldHi := (29175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1370]
}

def cell_9177 : Cell := { cellDefaults with
  domain := ⟨(3029 / 8000 : ℚ), (6059 / 16000 : ℚ)⟩
  r := (71844142015583 / 100000000000000 : ℚ)
  w := (8030551981371 / 5000000000000 : ℚ)
  center := (12117 / 32000 : ℚ)
  supportValue := (583009788395917 / 1000000000000000 : ℚ)
  supportSlope := (-1832425281564909 / 500000000000000 : ℚ)
  oldCenter := (583009788395917 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_924
  oldLo := (29125000000000001 / 50000000000000000 : ℚ)
  oldHi := (29175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1369, piece_1370]
}

def cell_9178 : Cell := { cellDefaults with
  domain := ⟨(6059 / 16000 : ℚ), (303 / 800 : ℚ)⟩
  r := (71844142015583 / 100000000000000 : ℚ)
  w := (8030551981371 / 5000000000000 : ℚ)
  center := (12119 / 32000 : ℚ)
  supportValue := (2913903952791481 / 5000000000000000 : ℚ)
  supportSlope := (-36628670222604853 / 10000000000000000 : ℚ)
  oldCenter := (2913903952791481 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_924
  oldLo := (29125000000000001 / 50000000000000000 : ℚ)
  oldHi := (58300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1369]
}

def cell_9179 : Cell := { cellDefaults with
  domain := ⟨(303 / 800 : ℚ), (6061 / 16000 : ℚ)⟩
  r := (71844142015583 / 100000000000000 : ℚ)
  w := (8030551981371 / 5000000000000 : ℚ)
  center := (12121 / 32000 : ℚ)
  supportValue := (233020772422749 / 400000000000000 : ℚ)
  supportSlope := (-3660761542771951 / 1000000000000000 : ℚ)
  oldCenter := (233020772422749 / 400000000000000 : ℚ)
  newCoefficients := coefficients_924
  oldLo := (58200000000000007 / 100000000000000000 : ℚ)
  oldHi := (58300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1368, piece_1369]
}

def cell_9180 : Cell := { cellDefaults with
  domain := ⟨(6061 / 16000 : ℚ), (3031 / 8000 : ℚ)⟩
  r := (71844142015583 / 100000000000000 : ℚ)
  w := (8030551981371 / 5000000000000 : ℚ)
  center := (12123 / 32000 : ℚ)
  supportValue := (2911615943530697 / 5000000000000000 : ℚ)
  supportSlope := (-18294326512879877 / 5000000000000000 : ℚ)
  oldCenter := (2911615943530697 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_924
  oldLo := (58200000000000007 / 100000000000000000 : ℚ)
  oldHi := (29125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1368]
}

def cell_9181 : Cell := { cellDefaults with
  domain := ⟨(3031 / 8000 : ℚ), (6063 / 16000 : ℚ)⟩
  r := (71844142015583 / 100000000000000 : ℚ)
  w := (8030551981371 / 5000000000000 : ℚ)
  center := (97 / 256 : ℚ)
  supportValue := (363809112028423 / 625000000000000 : ℚ)
  supportSlope := (-7313351842810789 / 2000000000000000 : ℚ)
  oldCenter := (363809112028423 / 625000000000000 : ℚ)
  newCoefficients := coefficients_924
  oldLo := (29075000000000001 / 50000000000000000 : ℚ)
  oldHi := (29125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1367, piece_1368]
}

def cell_9182 : Cell := { cellDefaults with
  domain := ⟨(6063 / 16000 : ℚ), (379 / 1000 : ℚ)⟩
  r := (71844142015583 / 100000000000000 : ℚ)
  w := (8030551981371 / 5000000000000 : ℚ)
  center := (12127 / 32000 : ℚ)
  supportValue := (5818660921434089 / 10000000000000000 : ℚ)
  supportSlope := (-456858623389067 / 125000000000000 : ℚ)
  oldCenter := (5818660921434089 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_924
  oldLo := (29075000000000001 / 50000000000000000 : ℚ)
  oldHi := (58200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1367]
}

def cell_9183 : Cell := { cellDefaults with
  domain := ⟨(379 / 1000 : ℚ), (1213 / 3200 : ℚ)⟩
  r := (71795670266907 / 100000000000000 : ℚ)
  w := (8026890390199 / 5000000000000 : ℚ)
  center := (12129 / 32000 : ℚ)
  supportValue := (2912887090146919 / 5000000000000000 : ℚ)
  supportSlope := (-36585011748186957 / 10000000000000000 : ℚ)
  oldCenter := (2912887090146919 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_925
  oldLo := (58200000000000007 / 100000000000000000 : ℚ)
  oldHi := (58300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1368, piece_1369]
}

def cell_9184 : Cell := { cellDefaults with
  domain := ⟨(1213 / 3200 : ℚ), (3033 / 8000 : ℚ)⟩
  r := (71795670266907 / 100000000000000 : ℚ)
  w := (8026890390199 / 5000000000000 : ℚ)
  center := (12131 / 32000 : ℚ)
  supportValue := (1455872042056511 / 2500000000000000 : ℚ)
  supportSlope := (-3656660528765343 / 1000000000000000 : ℚ)
  oldCenter := (1455872042056511 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_925
  oldLo := (58200000000000007 / 100000000000000000 : ℚ)
  oldHi := (29125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1368]
}

def cell_9185 : Cell := { cellDefaults with
  domain := ⟨(3033 / 8000 : ℚ), (6067 / 16000 : ℚ)⟩
  r := (71795670266907 / 100000000000000 : ℚ)
  w := (8026890390199 / 5000000000000 : ℚ)
  center := (12133 / 32000 : ℚ)
  supportValue := (5821203450300191 / 10000000000000000 : ℚ)
  supportSlope := (-18272176019582531 / 5000000000000000 : ℚ)
  oldCenter := (5821203450300191 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_925
  oldLo := (58200000000000007 / 100000000000000000 : ℚ)
  oldHi := (29125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1368]
}

def cell_9186 : Cell := { cellDefaults with
  domain := ⟨(6067 / 16000 : ℚ), (1517 / 4000 : ℚ)⟩
  r := (71795670266907 / 100000000000000 : ℚ)
  w := (8026890390199 / 5000000000000 : ℚ)
  center := (2427 / 6400 : ℚ)
  supportValue := (290945999300013 / 500000000000000 : ℚ)
  supportSlope := (-36526604140050267 / 10000000000000000 : ℚ)
  oldCenter := (290945999300013 / 500000000000000 : ℚ)
  newCoefficients := coefficients_925
  oldLo := (29075000000000001 / 50000000000000000 : ℚ)
  oldHi := (29125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1367, piece_1368]
}

def cell_9187 : Cell := { cellDefaults with
  domain := ⟨(1517 / 4000 : ℚ), (6069 / 16000 : ℚ)⟩
  r := (71795670266907 / 100000000000000 : ℚ)
  w := (8026890390199 / 5000000000000 : ℚ)
  center := (12137 / 32000 : ℚ)
  supportValue := (5816637759943907 / 10000000000000000 : ℚ)
  supportSlope := (-912612309096339 / 250000000000000 : ℚ)
  oldCenter := (5816637759943907 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_925
  oldLo := (29075000000000001 / 50000000000000000 : ℚ)
  oldHi := (58200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1367]
}

def cell_9188 : Cell := { cellDefaults with
  domain := ⟨(6069 / 16000 : ℚ), (607 / 1600 : ℚ)⟩
  r := (71795670266907 / 100000000000000 : ℚ)
  w := (8026890390199 / 5000000000000 : ℚ)
  center := (12139 / 32000 : ℚ)
  supportValue := (5814356841084641 / 10000000000000000 : ℚ)
  supportSlope := (-3648589361937127 / 1000000000000000 : ℚ)
  oldCenter := (5814356841084641 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_925
  oldLo := (58100000000000007 / 100000000000000000 : ℚ)
  oldHi := (58200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1366, piece_1367]
}

def cell_9189 : Cell := { cellDefaults with
  domain := ⟨(607 / 1600 : ℚ), (6071 / 16000 : ℚ)⟩
  r := (71795670266907 / 100000000000000 : ℚ)
  w := (8026890390199 / 5000000000000 : ℚ)
  center := (12141 / 32000 : ℚ)
  supportValue := (1162415420710849 / 2000000000000000 : ℚ)
  supportSlope := (-7292937241736297 / 2000000000000000 : ℚ)
  oldCenter := (1162415420710849 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_925
  oldLo := (58100000000000007 / 100000000000000000 : ℚ)
  oldHi := (29075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1366]
}

def cell_9190 : Cell := { cellDefaults with
  domain := ⟨(6071 / 16000 : ℚ), (759 / 2000 : ℚ)⟩
  r := (71795670266907 / 100000000000000 : ℚ)
  w := (8026890390199 / 5000000000000 : ℚ)
  center := (12143 / 32000 : ℚ)
  supportValue := (1452449681950001 / 2500000000000000 : ℚ)
  supportSlope := (-3644522046180043 / 1000000000000000 : ℚ)
  oldCenter := (1452449681950001 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_925
  oldLo := (29025000000000001 / 50000000000000000 : ℚ)
  oldHi := (29075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1365, piece_1366]
}

def cell_9191 : Cell := { cellDefaults with
  domain := ⟨(759 / 2000 : ℚ), (6073 / 16000 : ℚ)⟩
  r := (71747270849383 / 100000000000000 : ℚ)
  w := (16046474998597 / 10000000000000 : ℚ)
  center := (2429 / 6400 : ℚ)
  supportValue := (1454223188618419 / 2500000000000000 : ℚ)
  supportSlope := (-1824124181236897 / 500000000000000 : ℚ)
  oldCenter := (1454223188618419 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_926
  oldLo := (29075000000000001 / 50000000000000000 : ℚ)
  oldHi := (58200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1367]
}

def cell_9192 : Cell := { cellDefaults with
  domain := ⟨(6073 / 16000 : ℚ), (3037 / 8000 : ℚ)⟩
  r := (71747270849383 / 100000000000000 : ℚ)
  w := (16046474998597 / 10000000000000 : ℚ)
  center := (12147 / 32000 : ℚ)
  supportValue := (726826655292619 / 1250000000000000 : ℚ)
  supportSlope := (-3646340613109089 / 1000000000000000 : ℚ)
  oldCenter := (726826655292619 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_926
  oldLo := (58100000000000007 / 100000000000000000 : ℚ)
  oldHi := (58200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1366, piece_1367]
}

def cell_9193 : Cell := { cellDefaults with
  domain := ⟨(3037 / 8000 : ℚ), (243 / 640 : ℚ)⟩
  r := (71747270849383 / 100000000000000 : ℚ)
  w := (16046474998597 / 10000000000000 : ℚ)
  center := (12149 / 32000 : ℚ)
  supportValue := (90817732446439 / 156250000000000 : ℚ)
  supportSlope := (-728855166239839 / 200000000000000 : ℚ)
  oldCenter := (90817732446439 / 156250000000000 : ℚ)
  newCoefficients := coefficients_926
  oldLo := (58100000000000007 / 100000000000000000 : ℚ)
  oldHi := (29075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1366]
}

def cell_9194 : Cell := { cellDefaults with
  domain := ⟨(243 / 640 : ℚ), (1519 / 4000 : ℚ)⟩
  r := (71747270849383 / 100000000000000 : ℚ)
  w := (16046474998597 / 10000000000000 : ℚ)
  center := (12151 / 32000 : ℚ)
  supportValue := (1162011579166861 / 2000000000000000 : ℚ)
  supportSlope := (-36422806132563323 / 10000000000000000 : ℚ)
  oldCenter := (1162011579166861 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_926
  oldLo := (29025000000000001 / 50000000000000000 : ℚ)
  oldHi := (29075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1365, piece_1366]
}

def cell_9195 : Cell := { cellDefaults with
  domain := ⟨(1519 / 4000 : ℚ), (6077 / 16000 : ℚ)⟩
  r := (71747270849383 / 100000000000000 : ℚ)
  w := (16046474998597 / 10000000000000 : ℚ)
  center := (12153 / 32000 : ℚ)
  supportValue := (290389100866783 / 500000000000000 : ℚ)
  supportSlope := (-1820154319354117 / 500000000000000 : ℚ)
  oldCenter := (290389100866783 / 500000000000000 : ℚ)
  newCoefficients := coefficients_926
  oldLo := (29025000000000001 / 50000000000000000 : ℚ)
  oldHi := (58100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1365]
}

def cell_9196 : Cell := { cellDefaults with
  domain := ⟨(6077 / 16000 : ℚ), (3039 / 8000 : ℚ)⟩
  r := (71747270849383 / 100000000000000 : ℚ)
  w := (16046474998597 / 10000000000000 : ℚ)
  center := (2431 / 6400 : ℚ)
  supportValue := (2902753757727833 / 5000000000000000 : ℚ)
  supportSlope := (-227389020321489 / 62500000000000 : ℚ)
  oldCenter := (2902753757727833 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_926
  oldLo := (58000000000000007 / 100000000000000000 : ℚ)
  oldHi := (58100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1364, piece_1365]
}

def cell_9197 : Cell := { cellDefaults with
  domain := ⟨(3039 / 8000 : ℚ), (6079 / 16000 : ℚ)⟩
  r := (71747270849383 / 100000000000000 : ℚ)
  w := (16046474998597 / 10000000000000 : ℚ)
  center := (12157 / 32000 : ℚ)
  supportValue := (5803234171107711 / 10000000000000000 : ℚ)
  supportSlope := (-3636346786180411 / 1000000000000000 : ℚ)
  oldCenter := (5803234171107711 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_926
  oldLo := (58000000000000007 / 100000000000000000 : ℚ)
  oldHi := (29025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1364]
}

def cell_9198 : Cell := { cellDefaults with
  domain := ⟨(6079 / 16000 : ℚ), (19 / 50 : ℚ)⟩
  r := (71747270849383 / 100000000000000 : ℚ)
  w := (16046474998597 / 10000000000000 : ℚ)
  center := (12159 / 32000 : ℚ)
  supportValue := (5800962144746683 / 10000000000000000 : ℚ)
  supportSlope := (-36341717043235633 / 10000000000000000 : ℚ)
  oldCenter := (5800962144746683 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_926
  oldLo := (5796648044692737 / 10000000000000000 : ℚ)
  oldHi := (29025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1363, piece_1364]
}

def cell_9199 : Cell := { cellDefaults with
  domain := ⟨(19 / 50 : ℚ), (6081 / 16000 : ℚ)⟩
  r := (35849472141687 / 50000000000000 : ℚ)
  w := (8019592619969 / 5000000000000 : ℚ)
  center := (12161 / 32000 : ℚ)
  supportValue := (5808037556791237 / 10000000000000000 : ℚ)
  supportSlope := (-1136911244659089 / 312500000000000 : ℚ)
  oldCenter := (5808037556791237 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_927
  oldLo := (29025000000000001 / 50000000000000000 : ℚ)
  oldHi := (58100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1365]
}

theorem check_9150 : cell_9150.check = true := by
  decide +kernel

theorem check_9151 : cell_9151.check = true := by
  decide +kernel

theorem check_9152 : cell_9152.check = true := by
  decide +kernel

theorem check_9153 : cell_9153.check = true := by
  decide +kernel

theorem check_9154 : cell_9154.check = true := by
  decide +kernel

theorem check_9155 : cell_9155.check = true := by
  decide +kernel

theorem check_9156 : cell_9156.check = true := by
  decide +kernel

theorem check_9157 : cell_9157.check = true := by
  decide +kernel

theorem check_9158 : cell_9158.check = true := by
  decide +kernel

theorem check_9159 : cell_9159.check = true := by
  decide +kernel

theorem check_9160 : cell_9160.check = true := by
  decide +kernel

theorem check_9161 : cell_9161.check = true := by
  decide +kernel

theorem check_9162 : cell_9162.check = true := by
  decide +kernel

theorem check_9163 : cell_9163.check = true := by
  decide +kernel

theorem check_9164 : cell_9164.check = true := by
  decide +kernel

theorem check_9165 : cell_9165.check = true := by
  decide +kernel

theorem check_9166 : cell_9166.check = true := by
  decide +kernel

theorem check_9167 : cell_9167.check = true := by
  decide +kernel

theorem check_9168 : cell_9168.check = true := by
  decide +kernel

theorem check_9169 : cell_9169.check = true := by
  decide +kernel

theorem check_9170 : cell_9170.check = true := by
  decide +kernel

theorem check_9171 : cell_9171.check = true := by
  decide +kernel

theorem check_9172 : cell_9172.check = true := by
  decide +kernel

theorem check_9173 : cell_9173.check = true := by
  decide +kernel

theorem check_9174 : cell_9174.check = true := by
  decide +kernel

theorem check_9175 : cell_9175.check = true := by
  decide +kernel

theorem check_9176 : cell_9176.check = true := by
  decide +kernel

theorem check_9177 : cell_9177.check = true := by
  decide +kernel

theorem check_9178 : cell_9178.check = true := by
  decide +kernel

theorem check_9179 : cell_9179.check = true := by
  decide +kernel

theorem check_9180 : cell_9180.check = true := by
  decide +kernel

theorem check_9181 : cell_9181.check = true := by
  decide +kernel

theorem check_9182 : cell_9182.check = true := by
  decide +kernel

theorem check_9183 : cell_9183.check = true := by
  decide +kernel

theorem check_9184 : cell_9184.check = true := by
  decide +kernel

theorem check_9185 : cell_9185.check = true := by
  decide +kernel

theorem check_9186 : cell_9186.check = true := by
  decide +kernel

theorem check_9187 : cell_9187.check = true := by
  decide +kernel

theorem check_9188 : cell_9188.check = true := by
  decide +kernel

theorem check_9189 : cell_9189.check = true := by
  decide +kernel

theorem check_9190 : cell_9190.check = true := by
  decide +kernel

theorem check_9191 : cell_9191.check = true := by
  decide +kernel

theorem check_9192 : cell_9192.check = true := by
  decide +kernel

theorem check_9193 : cell_9193.check = true := by
  decide +kernel

theorem check_9194 : cell_9194.check = true := by
  decide +kernel

theorem check_9195 : cell_9195.check = true := by
  decide +kernel

theorem check_9196 : cell_9196.check = true := by
  decide +kernel

theorem check_9197 : cell_9197.check = true := by
  decide +kernel

theorem check_9198 : cell_9198.check = true := by
  decide +kernel

theorem check_9199 : cell_9199.check = true := by
  decide +kernel

def cells : List Cell := [cell_9150, cell_9151, cell_9152, cell_9153, cell_9154, cell_9155, cell_9156, cell_9157, cell_9158, cell_9159, cell_9160, cell_9161, cell_9162, cell_9163, cell_9164, cell_9165, cell_9166, cell_9167, cell_9168, cell_9169, cell_9170, cell_9171, cell_9172, cell_9173, cell_9174, cell_9175, cell_9176, cell_9177, cell_9178, cell_9179, cell_9180, cell_9181, cell_9182, cell_9183, cell_9184, cell_9185, cell_9186, cell_9187, cell_9188, cell_9189, cell_9190, cell_9191, cell_9192, cell_9193, cell_9194, cell_9195, cell_9196, cell_9197, cell_9198, cell_9199]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9150, check_9151, check_9152, check_9153, check_9154, check_9155, check_9156, check_9157, check_9158, check_9159, check_9160, check_9161, check_9162, check_9163, check_9164, check_9165, check_9166, check_9167, check_9168, check_9169, check_9170, check_9171, check_9172, check_9173, check_9174, check_9175, check_9176, check_9177, check_9178, check_9179, check_9180, check_9181, check_9182, check_9183, check_9184, check_9185, check_9186, check_9187, check_9188, check_9189, check_9190, check_9191, check_9192, check_9193, check_9194, check_9195, check_9196, check_9197, check_9198, check_9199, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0183

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0183
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0183
open AnalyticBounds.ExpressionCertificate

theorem linked_9150 : Linked cell_9150 pieces := by
  link_source cell_9150 with piece_920 using piece_920_mem, ⟨piece_1375_mem, piece_1376_mem⟩

theorem linked_9151 : Linked cell_9151 pieces := by
  link_source cell_9151 with piece_921 using piece_921_mem, piece_1377_mem

theorem linked_9152 : Linked cell_9152 pieces := by
  link_source cell_9152 with piece_921 using piece_921_mem, ⟨piece_1376_mem, piece_1377_mem⟩

theorem linked_9153 : Linked cell_9153 pieces := by
  link_source cell_9153 with piece_921 using piece_921_mem, piece_1376_mem

theorem linked_9154 : Linked cell_9154 pieces := by
  link_source cell_9154 with piece_921 using piece_921_mem, ⟨piece_1375_mem, piece_1376_mem⟩

theorem linked_9155 : Linked cell_9155 pieces := by
  link_source cell_9155 with piece_921 using piece_921_mem, ⟨piece_1374_mem, piece_1375_mem⟩

theorem linked_9156 : Linked cell_9156 pieces := by
  link_source cell_9156 with piece_921 using piece_921_mem, ⟨piece_1373_mem, piece_1374_mem⟩

theorem linked_9157 : Linked cell_9157 pieces := by
  link_source cell_9157 with piece_921 using piece_921_mem, piece_1373_mem

theorem linked_9158 : Linked cell_9158 pieces := by
  link_source cell_9158 with piece_921 using piece_921_mem, ⟨piece_1372_mem, piece_1373_mem⟩

theorem linked_9159 : Linked cell_9159 pieces := by
  link_source cell_9159 with piece_922 using piece_922_mem, ⟨piece_1374_mem, piece_1375_mem⟩

theorem linked_9160 : Linked cell_9160 pieces := by
  link_source cell_9160 with piece_922 using piece_922_mem, ⟨piece_1373_mem, piece_1374_mem⟩

theorem linked_9161 : Linked cell_9161 pieces := by
  link_source cell_9161 with piece_922 using piece_922_mem, piece_1373_mem

theorem linked_9162 : Linked cell_9162 pieces := by
  link_source cell_9162 with piece_922 using piece_922_mem, ⟨piece_1372_mem, piece_1373_mem⟩

theorem linked_9163 : Linked cell_9163 pieces := by
  link_source cell_9163 with piece_922 using piece_922_mem, piece_1372_mem

theorem linked_9164 : Linked cell_9164 pieces := by
  link_source cell_9164 with piece_922 using piece_922_mem, ⟨piece_1371_mem, piece_1372_mem⟩

theorem linked_9165 : Linked cell_9165 pieces := by
  link_source cell_9165 with piece_922 using piece_922_mem, piece_1371_mem

theorem linked_9166 : Linked cell_9166 pieces := by
  link_source cell_9166 with piece_922 using piece_922_mem, piece_1371_mem

theorem linked_9167 : Linked cell_9167 pieces := by
  link_source cell_9167 with piece_923 using piece_923_mem, piece_1372_mem

theorem linked_9168 : Linked cell_9168 pieces := by
  link_source cell_9168 with piece_923 using piece_923_mem, piece_1372_mem

theorem linked_9169 : Linked cell_9169 pieces := by
  link_source cell_9169 with piece_923 using piece_923_mem, ⟨piece_1371_mem, piece_1372_mem⟩

theorem linked_9170 : Linked cell_9170 pieces := by
  link_source cell_9170 with piece_923 using piece_923_mem, piece_1371_mem

theorem linked_9171 : Linked cell_9171 pieces := by
  link_source cell_9171 with piece_923 using piece_923_mem, ⟨piece_1370_mem, piece_1371_mem⟩

theorem linked_9172 : Linked cell_9172 pieces := by
  link_source cell_9172 with piece_923 using piece_923_mem, piece_1370_mem

theorem linked_9173 : Linked cell_9173 pieces := by
  link_source cell_9173 with piece_923 using piece_923_mem, ⟨piece_1369_mem, piece_1370_mem⟩

theorem linked_9174 : Linked cell_9174 pieces := by
  link_source cell_9174 with piece_923 using piece_923_mem, piece_1369_mem

theorem linked_9175 : Linked cell_9175 pieces := by
  link_source cell_9175 with piece_924 using piece_924_mem, ⟨piece_1370_mem, piece_1371_mem⟩

theorem linked_9176 : Linked cell_9176 pieces := by
  link_source cell_9176 with piece_924 using piece_924_mem, piece_1370_mem

theorem linked_9177 : Linked cell_9177 pieces := by
  link_source cell_9177 with piece_924 using piece_924_mem, ⟨piece_1369_mem, piece_1370_mem⟩

theorem linked_9178 : Linked cell_9178 pieces := by
  link_source cell_9178 with piece_924 using piece_924_mem, piece_1369_mem

theorem linked_9179 : Linked cell_9179 pieces := by
  link_source cell_9179 with piece_924 using piece_924_mem, ⟨piece_1368_mem, piece_1369_mem⟩

theorem linked_9180 : Linked cell_9180 pieces := by
  link_source cell_9180 with piece_924 using piece_924_mem, piece_1368_mem

theorem linked_9181 : Linked cell_9181 pieces := by
  link_source cell_9181 with piece_924 using piece_924_mem, ⟨piece_1367_mem, piece_1368_mem⟩

theorem linked_9182 : Linked cell_9182 pieces := by
  link_source cell_9182 with piece_924 using piece_924_mem, piece_1367_mem

theorem linked_9183 : Linked cell_9183 pieces := by
  link_source cell_9183 with piece_925 using piece_925_mem, ⟨piece_1368_mem, piece_1369_mem⟩

theorem linked_9184 : Linked cell_9184 pieces := by
  link_source cell_9184 with piece_925 using piece_925_mem, piece_1368_mem

theorem linked_9185 : Linked cell_9185 pieces := by
  link_source cell_9185 with piece_925 using piece_925_mem, piece_1368_mem

theorem linked_9186 : Linked cell_9186 pieces := by
  link_source cell_9186 with piece_925 using piece_925_mem, ⟨piece_1367_mem, piece_1368_mem⟩

theorem linked_9187 : Linked cell_9187 pieces := by
  link_source cell_9187 with piece_925 using piece_925_mem, piece_1367_mem

theorem linked_9188 : Linked cell_9188 pieces := by
  link_source cell_9188 with piece_925 using piece_925_mem, ⟨piece_1366_mem, piece_1367_mem⟩

theorem linked_9189 : Linked cell_9189 pieces := by
  link_source cell_9189 with piece_925 using piece_925_mem, piece_1366_mem

theorem linked_9190 : Linked cell_9190 pieces := by
  link_source cell_9190 with piece_925 using piece_925_mem, ⟨piece_1365_mem, piece_1366_mem⟩

theorem linked_9191 : Linked cell_9191 pieces := by
  link_source cell_9191 with piece_926 using piece_926_mem, piece_1367_mem

theorem linked_9192 : Linked cell_9192 pieces := by
  link_source cell_9192 with piece_926 using piece_926_mem, ⟨piece_1366_mem, piece_1367_mem⟩

theorem linked_9193 : Linked cell_9193 pieces := by
  link_source cell_9193 with piece_926 using piece_926_mem, piece_1366_mem

theorem linked_9194 : Linked cell_9194 pieces := by
  link_source cell_9194 with piece_926 using piece_926_mem, ⟨piece_1365_mem, piece_1366_mem⟩

theorem linked_9195 : Linked cell_9195 pieces := by
  link_source cell_9195 with piece_926 using piece_926_mem, piece_1365_mem

theorem linked_9196 : Linked cell_9196 pieces := by
  link_source cell_9196 with piece_926 using piece_926_mem, ⟨piece_1364_mem, piece_1365_mem⟩

theorem linked_9197 : Linked cell_9197 pieces := by
  link_source cell_9197 with piece_926 using piece_926_mem, piece_1364_mem

theorem linked_9198 : Linked cell_9198 pieces := by
  link_source cell_9198 with piece_926 using piece_926_mem, ⟨piece_1363_mem, piece_1364_mem⟩

theorem linked_9199 : Linked cell_9199 pieces := by
  link_source cell_9199 with piece_927 using piece_927_mem, piece_1365_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0183.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0183.cells,List.forall_mem_cons]
  exact ⟨linked_9150, linked_9151, linked_9152, linked_9153, linked_9154, linked_9155, linked_9156, linked_9157, linked_9158, linked_9159, linked_9160, linked_9161, linked_9162, linked_9163, linked_9164, linked_9165, linked_9166, linked_9167, linked_9168, linked_9169, linked_9170, linked_9171, linked_9172, linked_9173, linked_9174, linked_9175, linked_9176, linked_9177, linked_9178, linked_9179, linked_9180, linked_9181, linked_9182, linked_9183, linked_9184, linked_9185, linked_9186, linked_9187, linked_9188, linked_9189, linked_9190, linked_9191, linked_9192, linked_9193, linked_9194, linked_9195, linked_9196, linked_9197, linked_9198, linked_9199, by simp⟩

theorem covered : covers (6031 / 16000 : ℚ) (6081 / 16000 : ℚ)
    (SourceCertificates.Chunk0183.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0183
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0184
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(6081 / 16000 : ℚ), (3041 / 8000 : ℚ)⟩
  branch := .left
  r := (7160250799643 / 10000000000000 : ℚ)
  w := (8012325803809 / 5000000000000 : ℚ)
  center := (12163 / 32000 : ℚ)
  supportValue := (5805764424053551 / 10000000000000000 : ℚ)
  supportSlope := (-3635983256213393 / 1000000000000000 : ℚ)
  oldCenter := (5805764424053551 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_930
  oldLo := (57800000000000007 / 100000000000000000 : ℚ)
  oldHi := (57850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1359]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9200 : Cell := { cellDefaults with
  r := (35849472141687 / 50000000000000 : ℚ)
  w := (8019592619969 / 5000000000000 : ℚ)
  newCoefficients := coefficients_927
  oldLo := (58000000000000007 / 100000000000000000 : ℚ)
  oldHi := (58100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1364, piece_1365]
}

def cell_9201 : Cell := { cellDefaults with
  domain := ⟨(3041 / 8000 : ℚ), (6083 / 16000 : ℚ)⟩
  r := (35849472141687 / 50000000000000 : ℚ)
  w := (8019592619969 / 5000000000000 : ℚ)
  center := (2433 / 6400 : ℚ)
  supportValue := (290174623955901 / 500000000000000 : ℚ)
  supportSlope := (-18170811026525513 / 5000000000000000 : ℚ)
  oldCenter := (290174623955901 / 500000000000000 : ℚ)
  newCoefficients := coefficients_927
  oldLo := (58000000000000007 / 100000000000000000 : ℚ)
  oldHi := (29025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1364]
}

def cell_9202 : Cell := { cellDefaults with
  domain := ⟨(6083 / 16000 : ℚ), (1521 / 4000 : ℚ)⟩
  r := (35849472141687 / 50000000000000 : ℚ)
  w := (8019592619969 / 5000000000000 : ℚ)
  center := (12167 / 32000 : ℚ)
  supportValue := (2900610908427519 / 5000000000000000 : ℚ)
  supportSlope := (-36319554164734313 / 10000000000000000 : ℚ)
  oldCenter := (2900610908427519 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_927
  oldLo := (58000000000000007 / 100000000000000000 : ℚ)
  oldHi := (29025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1364]
}

def cell_9203 : Cell := { cellDefaults with
  domain := ⟨(1521 / 4000 : ℚ), (1217 / 3200 : ℚ)⟩
  r := (35849472141687 / 50000000000000 : ℚ)
  w := (8019592619969 / 5000000000000 : ℚ)
  center := (12169 / 32000 : ℚ)
  supportValue := (5798952399344699 / 10000000000000000 : ℚ)
  supportSlope := (-36301958057443073 / 10000000000000000 : ℚ)
  oldCenter := (5798952399344699 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_927
  oldLo := (5796648044692737 / 10000000000000000 : ℚ)
  oldHi := (29025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1363, piece_1364]
}

def cell_9204 : Cell := { cellDefaults with
  domain := ⟨(1217 / 3200 : ℚ), (3043 / 8000 : ℚ)⟩
  r := (35849472141687 / 50000000000000 : ℚ)
  w := (8019592619969 / 5000000000000 : ℚ)
  center := (12171 / 32000 : ℚ)
  supportValue := (5796684204557339 / 10000000000000000 : ℚ)
  supportSlope := (-18140044323473603 / 5000000000000000 : ℚ)
  oldCenter := (5796684204557339 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_927
  oldLo := (28975000000000001 / 50000000000000000 : ℚ)
  oldHi := (58000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1362, piece_1363]
}

def cell_9205 : Cell := { cellDefaults with
  domain := ⟨(3043 / 8000 : ℚ), (6087 / 16000 : ℚ)⟩
  r := (35849472141687 / 50000000000000 : ℚ)
  w := (8019592619969 / 5000000000000 : ℚ)
  center := (12173 / 32000 : ℚ)
  supportValue := (144860432792323 / 250000000000000 : ℚ)
  supportSlope := (-3626158318411399 / 1000000000000000 : ℚ)
  oldCenter := (144860432792323 / 250000000000000 : ℚ)
  newCoefficients := coefficients_927
  oldLo := (57900000000000007 / 100000000000000000 : ℚ)
  oldHi := (5796648044692737 / 10000000000000000 : ℚ)
  oldPieces := [piece_1361, piece_1362]
}

def cell_9206 : Cell := { cellDefaults with
  domain := ⟨(6087 / 16000 : ℚ), (761 / 2000 : ℚ)⟩
  r := (35849472141687 / 50000000000000 : ℚ)
  w := (8019592619969 / 5000000000000 : ℚ)
  center := (487 / 1280 : ℚ)
  supportValue := (5792151580185059 / 10000000000000000 : ℚ)
  supportSlope := (-1812034137023133 / 500000000000000 : ℚ)
  oldCenter := (5792151580185059 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_927
  oldLo := (57900000000000007 / 100000000000000000 : ℚ)
  oldHi := (28975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1361]
}

def cell_9207 : Cell := { cellDefaults with
  domain := ⟨(761 / 2000 : ℚ), (38055865921787707 / 100000000000000000 : ℚ)⟩
  r := (71650689140499 / 100000000000000 : ℚ)
  w := (801595515293 / 500000000000 : ℚ)
  center := (76105865921787707 / 200000000000000000 : ℚ)
  supportValue := (5799278766340553 / 10000000000000000 : ℚ)
  supportSlope := (-7256044819218447 / 2000000000000000 : ℚ)
  oldCenter := (5799278766340553 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_928
  oldLo := (5796648044692737 / 10000000000000000 : ℚ)
  oldHi := (29025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1363, piece_1364]
}

def cell_9208 : Cell := { cellDefaults with
  domain := ⟨(38055865921787707 / 100000000000000000 : ℚ), (30452346368715083 / 80000000000000000 : ℚ)⟩
  r := (71650689140499 / 100000000000000 : ℚ)
  w := (801595515293 / 500000000000 : ℚ)
  center := (304485195530726243 / 800000000000000000 : ℚ)
  supportValue := (1449121064465953 / 2500000000000000 : ℚ)
  supportSlope := (-1812707230013037 / 500000000000000 : ℚ)
  oldCenter := (1449121064465953 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_929
  oldLo := (57900000000000007 / 100000000000000000 : ℚ)
  oldHi := (58000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1361, piece_1362, piece_1363]
}

def cell_9209 : Cell := { cellDefaults with
  domain := ⟨(30452346368715083 / 80000000000000000 : ℚ), (76150000000000001 / 200000000000000000 : ℚ)⟩
  r := (71650689140499 / 100000000000000 : ℚ)
  w := (801595515293 / 500000000000 : ℚ)
  center := (304561731843575417 / 800000000000000000 : ℚ)
  supportValue := (5793017193879569 / 10000000000000000 : ℚ)
  supportSlope := (-362247934383937 / 100000000000000 : ℚ)
  oldCenter := (5793017193879569 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_929
  oldLo := (57900000000000007 / 100000000000000000 : ℚ)
  oldHi := (28975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1361]
}

def cell_9210 : Cell := { cellDefaults with
  domain := ⟨(76150000000000001 / 200000000000000000 : ℚ), (60930000000000001 / 160000000000000000 : ℚ)⟩
  r := (71650689140499 / 100000000000000 : ℚ)
  w := (801595515293 / 500000000000 : ℚ)
  center := (609250000000000009 / 1600000000000000000 : ℚ)
  supportValue := (361884337036111 / 625000000000000 : ℚ)
  supportSlope := (-45248770517591 / 12500000000000 : ℚ)
  oldCenter := (361884337036111 / 625000000000000 : ℚ)
  newCoefficients := coefficients_929
  oldLo := (57850000000000001 / 100000000000000000 : ℚ)
  oldHi := (28975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1360, piece_1361]
}

def cell_9211 : Cell := { cellDefaults with
  domain := ⟨(60930000000000001 / 160000000000000000 : ℚ), (152350000000000003 / 400000000000000000 : ℚ)⟩
  r := (71650689140499 / 100000000000000 : ℚ)
  w := (801595515293 / 500000000000 : ℚ)
  center := (609350000000000011 / 1600000000000000000 : ℚ)
  supportValue := (2315154997747 / 4000000000000 : ℚ)
  supportSlope := (-18089841754722251 / 5000000000000000 : ℚ)
  oldCenter := (2315154997747 / 4000000000000 : ℚ)
  newCoefficients := coefficients_929
  oldLo := (57850000000000001 / 100000000000000000 : ℚ)
  oldHi := (57900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1360]
}

def cell_9212 : Cell := { cellDefaults with
  domain := ⟨(152350000000000003 / 400000000000000000 : ℚ), (304750000000000007 / 800000000000000000 : ℚ)⟩
  r := (71650689140499 / 100000000000000 : ℚ)
  w := (801595515293 / 500000000000 : ℚ)
  center := (609450000000000013 / 1600000000000000000 : ℚ)
  supportValue := (5785626949416817 / 10000000000000000 : ℚ)
  supportSlope := (-2259923682523767 / 625000000000000 : ℚ)
  oldCenter := (5785626949416817 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_929
  oldHi := (57900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1359, piece_1360]
}

def cell_9213 : Cell := { cellDefaults with
  domain := ⟨(304750000000000007 / 800000000000000000 : ℚ), (38100000000000001 / 100000000000000000 : ℚ)⟩
  r := (71650689140499 / 100000000000000 : ℚ)
  w := (801595515293 / 500000000000 : ℚ)
  center := (121910000000000003 / 320000000000000000 : ℚ)
  supportValue := (1445841891254419 / 2500000000000000 : ℚ)
  supportSlope := (-36140459790984623 / 10000000000000000 : ℚ)
  oldCenter := (1445841891254419 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_929
  oldPieces := [piece_1359]
}

def cell_9214 : Cell := { cellDefaults with
  domain := ⟨(38100000000000001 / 100000000000000000 : ℚ), (38106250000000001 / 100000000000000000 : ℚ)⟩
  center := (38103125000000001 / 100000000000000000 : ℚ)
  supportValue := (579040625847839 / 1000000000000000 : ℚ)
  supportSlope := (-36176724391019377 / 10000000000000000 : ℚ)
  oldCenter := (579040625847839 / 1000000000000000 : ℚ)
  oldLo := (57850000000000001 / 100000000000000000 : ℚ)
  oldHi := (28975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1360, piece_1361]
}

def cell_9215 : Cell := { cellDefaults with
  domain := ⟨(38106250000000001 / 100000000000000000 : ℚ), (38112500000000001 / 100000000000000000 : ℚ)⟩
  center := (38109375000000001 / 100000000000000000 : ℚ)
  supportValue := (2894072876130971 / 5000000000000000 : ℚ)
  supportSlope := (-2259872529188911 / 625000000000000 : ℚ)
  oldCenter := (2894072876130971 / 5000000000000000 : ℚ)
  oldLo := (57850000000000001 / 100000000000000000 : ℚ)
  oldHi := (57900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1360]
}

def cell_9216 : Cell := { cellDefaults with
  domain := ⟨(38112500000000001 / 100000000000000000 : ℚ), (38118750000000001 / 100000000000000000 : ℚ)⟩
  center := (38115625000000001 / 100000000000000000 : ℚ)
  supportValue := (289294328186907 / 500000000000000 : ℚ)
  supportSlope := (-722731196674431 / 200000000000000 : ℚ)
  oldCenter := (289294328186907 / 500000000000000 : ℚ)
  oldHi := (57900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1359, piece_1360]
}

def cell_9217 : Cell := { cellDefaults with
  domain := ⟨(38118750000000001 / 100000000000000000 : ℚ), (38125000000000001 / 100000000000000000 : ℚ)⟩
  center := (38121875000000001 / 100000000000000000 : ℚ)
  supportValue := (1156725713356727 / 2000000000000000 : ℚ)
  supportSlope := (-18059408562081103 / 5000000000000000 : ℚ)
  oldCenter := (1156725713356727 / 2000000000000000 : ℚ)
  oldPieces := [piece_1359]
}

def cell_9218 : Cell := { cellDefaults with
  domain := ⟨(38125000000000001 / 100000000000000000 : ℚ), (38131250000000001 / 100000000000000000 : ℚ)⟩
  center := (38128125000000001 / 100000000000000000 : ℚ)
  supportValue := (5781371824054781 / 10000000000000000 : ℚ)
  supportSlope := (-7219386820395357 / 2000000000000000 : ℚ)
  oldCenter := (5781371824054781 / 10000000000000000 : ℚ)
  oldPieces := [piece_1359]
}

def cell_9219 : Cell := { cellDefaults with
  domain := ⟨(38131250000000001 / 100000000000000000 : ℚ), (38137500000000001 / 100000000000000000 : ℚ)⟩
  center := (38134375000000001 / 100000000000000000 : ℚ)
  supportValue := (5779116334077097 / 10000000000000000 : ℚ)
  supportSlope := (-4509903124128023 / 1250000000000000 : ℚ)
  oldCenter := (5779116334077097 / 10000000000000000 : ℚ)
  oldLo := (57750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1358, piece_1359]
}

def cell_9220 : Cell := { cellDefaults with
  domain := ⟨(38137500000000001 / 100000000000000000 : ℚ), (38143750000000001 / 100000000000000000 : ℚ)⟩
  center := (38140625000000001 / 100000000000000000 : ℚ)
  supportValue := (5776862033764261 / 10000000000000000 : ℚ)
  supportSlope := (-901446709237419 / 250000000000000 : ℚ)
  oldCenter := (5776862033764261 / 10000000000000000 : ℚ)
  oldLo := (57750000000000001 / 100000000000000000 : ℚ)
  oldHi := (57800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1358]
}

def cell_9221 : Cell := { cellDefaults with
  domain := ⟨(38143750000000001 / 100000000000000000 : ℚ), (38150000000000001 / 100000000000000000 : ℚ)⟩
  center := (38146875000000001 / 100000000000000000 : ℚ)
  supportValue := (577460904805689 / 1000000000000000 : ℚ)
  supportSlope := (-36039171949902027 / 10000000000000000 : ℚ)
  oldCenter := (577460904805689 / 1000000000000000 : ℚ)
  oldLo := (57700000000000007 / 100000000000000000 : ℚ)
  oldHi := (57800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1357, piece_1358]
}

def cell_9222 : Cell := { cellDefaults with
  domain := ⟨(38150000000000001 / 100000000000000000 : ℚ), (38156250000000001 / 100000000000000000 : ℚ)⟩
  r := (71554397041633 / 100000000000000 : ℚ)
  w := (16017409076987 / 10000000000000 : ℚ)
  center := (38153125000000001 / 100000000000000000 : ℚ)
  supportValue := (2890814690508167 / 5000000000000000 : ℚ)
  supportSlope := (-3607525136175127 / 1000000000000000 : ℚ)
  oldCenter := (2890814690508167 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_931
  oldPieces := [piece_1359]
}

def cell_9223 : Cell := { cellDefaults with
  domain := ⟨(38156250000000001 / 100000000000000000 : ℚ), (38162500000000001 / 100000000000000000 : ℚ)⟩
  r := (71554397041633 / 100000000000000 : ℚ)
  w := (16017409076987 / 10000000000000 : ℚ)
  center := (38159375000000001 / 100000000000000000 : ℚ)
  supportValue := (2889687639171379 / 5000000000000000 : ℚ)
  supportSlope := (-36057047847108947 / 10000000000000000 : ℚ)
  oldCenter := (2889687639171379 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_931
  oldLo := (57750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1358, piece_1359]
}

def cell_9224 : Cell := { cellDefaults with
  domain := ⟨(38162500000000001 / 100000000000000000 : ℚ), (38168750000000001 / 100000000000000000 : ℚ)⟩
  r := (71554397041633 / 100000000000000 : ℚ)
  w := (16017409076987 / 10000000000000 : ℚ)
  center := (38165625000000001 / 100000000000000000 : ℚ)
  supportValue := (5777122329474793 / 10000000000000000 : ℚ)
  supportSlope := (-7207253087784693 / 2000000000000000 : ℚ)
  oldCenter := (5777122329474793 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_931
  oldLo := (57750000000000001 / 100000000000000000 : ℚ)
  oldHi := (57800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1358]
}

def cell_9225 : Cell := { cellDefaults with
  domain := ⟨(38168750000000001 / 100000000000000000 : ℚ), (38175000000000001 / 100000000000000000 : ℚ)⟩
  r := (71554397041633 / 100000000000000 : ℚ)
  w := (16017409076987 / 10000000000000 : ℚ)
  center := (38171875000000001 / 100000000000000000 : ℚ)
  supportValue := (1154974145304277 / 2000000000000000 : ℚ)
  supportSlope := (-36017067878226783 / 10000000000000000 : ℚ)
  oldCenter := (1154974145304277 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_931
  oldLo := (57700000000000007 / 100000000000000000 : ℚ)
  oldHi := (57800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1357, piece_1358]
}

def cell_9226 : Cell := { cellDefaults with
  domain := ⟨(38175000000000001 / 100000000000000000 : ℚ), (38181250000000001 / 100000000000000000 : ℚ)⟩
  r := (71554397041633 / 100000000000000 : ℚ)
  w := (16017409076987 / 10000000000000 : ℚ)
  center := (38178125000000001 / 100000000000000000 : ℚ)
  supportValue := (5772620211608903 / 10000000000000000 : ℚ)
  supportSlope := (-3599733242303671 / 1000000000000000 : ℚ)
  oldCenter := (5772620211608903 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_931
  oldLo := (57700000000000007 / 100000000000000000 : ℚ)
  oldHi := (57750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1357]
}

def cell_9227 : Cell := { cellDefaults with
  domain := ⟨(38181250000000001 / 100000000000000000 : ℚ), (38187500000000001 / 100000000000000000 : ℚ)⟩
  r := (71554397041633 / 100000000000000 : ℚ)
  w := (16017409076987 / 10000000000000 : ℚ)
  center := (38184375000000001 / 100000000000000000 : ℚ)
  supportValue := (2885185529136031 / 5000000000000000 : ℚ)
  supportSlope := (-2248570220271251 / 625000000000000 : ℚ)
  oldCenter := (2885185529136031 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_931
  oldLo := (57650000000000001 / 100000000000000000 : ℚ)
  oldHi := (57750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1356, piece_1357]
}

def cell_9228 : Cell := { cellDefaults with
  domain := ⟨(38187500000000001 / 100000000000000000 : ℚ), (38193750000000001 / 100000000000000000 : ℚ)⟩
  r := (71554397041633 / 100000000000000 : ℚ)
  w := (16017409076987 / 10000000000000 : ℚ)
  center := (38190625000000001 / 100000000000000000 : ℚ)
  supportValue := (2884061510961473 / 5000000000000000 : ℚ)
  supportSlope := (-17979226194650977 / 5000000000000000 : ℚ)
  oldCenter := (2884061510961473 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_931
  oldLo := (57650000000000001 / 100000000000000000 : ℚ)
  oldHi := (57700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1356]
}

def cell_9229 : Cell := { cellDefaults with
  domain := ⟨(38193750000000001 / 100000000000000000 : ℚ), (38200000000000001 / 100000000000000000 : ℚ)⟩
  r := (71554397041633 / 100000000000000 : ℚ)
  w := (16017409076987 / 10000000000000 : ℚ)
  center := (38196875000000001 / 100000000000000000 : ℚ)
  supportValue := (2882938148976753 / 5000000000000000 : ℚ)
  supportSlope := (-449215189472163 / 125000000000000 : ℚ)
  oldCenter := (2882938148976753 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_931
  oldLo := (57600000000000007 / 100000000000000000 : ℚ)
  oldHi := (57700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1355, piece_1356]
}

def cell_9230 : Cell := { cellDefaults with
  domain := ⟨(38200000000000001 / 100000000000000000 : ℚ), (38206250000000001 / 100000000000000000 : ℚ)⟩
  r := (35753179111639 / 50000000000000 : ℚ)
  w := (3202036539233 / 2000000000000 : ℚ)
  center := (38203125000000001 / 100000000000000000 : ℚ)
  supportValue := (2886439077358951 / 5000000000000000 : ℚ)
  supportSlope := (-17987863556729877 / 5000000000000000 : ℚ)
  oldCenter := (2886439077358951 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_932
  oldLo := (57700000000000007 / 100000000000000000 : ℚ)
  oldHi := (57750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1357]
}

def cell_9231 : Cell := { cellDefaults with
  domain := ⟨(38206250000000001 / 100000000000000000 : ℚ), (38212500000000001 / 100000000000000000 : ℚ)⟩
  r := (35753179111639 / 50000000000000 : ℚ)
  w := (3202036539233 / 2000000000000 : ℚ)
  center := (38209375000000001 / 100000000000000000 : ℚ)
  supportValue := (230825214018063 / 400000000000000 : ℚ)
  supportSlope := (-719100394299943 / 200000000000000 : ℚ)
  oldCenter := (230825214018063 / 400000000000000 : ℚ)
  newCoefficients := coefficients_932
  oldLo := (57650000000000001 / 100000000000000000 : ℚ)
  oldHi := (57750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1356, piece_1357]
}

def cell_9232 : Cell := { cellDefaults with
  domain := ⟨(38212500000000001 / 100000000000000000 : ℚ), (38218750000000001 / 100000000000000000 : ℚ)⟩
  r := (35753179111639 / 50000000000000 : ℚ)
  w := (3202036539233 / 2000000000000 : ℚ)
  center := (38215625000000001 / 100000000000000000 : ℚ)
  supportValue := (576838369434139 / 1000000000000000 : ℚ)
  supportSlope := (-17968463710502647 / 5000000000000000 : ℚ)
  oldCenter := (576838369434139 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_932
  oldLo := (57650000000000001 / 100000000000000000 : ℚ)
  oldHi := (57700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1356]
}

def cell_9233 : Cell := { cellDefaults with
  domain := ⟨(38218750000000001 / 100000000000000000 : ℚ), (38225000000000001 / 100000000000000000 : ℚ)⟩
  r := (35753179111639 / 50000000000000 : ℚ)
  w := (3202036539233 / 2000000000000 : ℚ)
  center := (38221875000000001 / 100000000000000000 : ℚ)
  supportValue := (5766138314423661 / 10000000000000000 : ℚ)
  supportSlope := (-1436608556707597 / 400000000000000 : ℚ)
  oldCenter := (5766138314423661 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_932
  oldLo := (57650000000000001 / 100000000000000000 : ℚ)
  oldHi := (57700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1356]
}

def cell_9234 : Cell := { cellDefaults with
  domain := ⟨(38225000000000001 / 100000000000000000 : ℚ), (38231250000000001 / 100000000000000000 : ℚ)⟩
  r := (35753179111639 / 50000000000000 : ℚ)
  w := (3202036539233 / 2000000000000 : ℚ)
  center := (38228125000000001 / 100000000000000000 : ℚ)
  supportValue := (5763894147032979 / 10000000000000000 : ℚ)
  supportSlope := (-35898150558857367 / 10000000000000000 : ℚ)
  oldCenter := (5763894147032979 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_932
  oldLo := (57600000000000007 / 100000000000000000 : ℚ)
  oldHi := (57700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1355, piece_1356]
}

def cell_9235 : Cell := { cellDefaults with
  domain := ⟨(38231250000000001 / 100000000000000000 : ℚ), (38237500000000001 / 100000000000000000 : ℚ)⟩
  r := (35753179111639 / 50000000000000 : ℚ)
  w := (3202036539233 / 2000000000000 : ℚ)
  center := (38234375000000001 / 100000000000000000 : ℚ)
  supportValue := (5761651188162571 / 10000000000000000 : ℚ)
  supportSlope := (-17938243657198427 / 5000000000000000 : ℚ)
  oldCenter := (5761651188162571 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_932
  oldLo := (57600000000000007 / 100000000000000000 : ℚ)
  oldHi := (57650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1355]
}

def cell_9236 : Cell := { cellDefaults with
  domain := ⟨(38237500000000001 / 100000000000000000 : ℚ), (38243750000000001 / 100000000000000000 : ℚ)⟩
  r := (35753179111639 / 50000000000000 : ℚ)
  w := (3202036539233 / 2000000000000 : ℚ)
  center := (38240625000000001 / 100000000000000000 : ℚ)
  supportValue := (2879704753626201 / 5000000000000000 : ℚ)
  supportSlope := (-448229789382637 / 125000000000000 : ℚ)
  oldCenter := (2879704753626201 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_932
  oldLo := (57550000000000001 / 100000000000000000 : ℚ)
  oldHi := (57650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1354, piece_1355]
}

def cell_9237 : Cell := { cellDefaults with
  domain := ⟨(38243750000000001 / 100000000000000000 : ℚ), (38250000000000001 / 100000000000000000 : ℚ)⟩
  r := (35753179111639 / 50000000000000 : ℚ)
  w := (3202036539233 / 2000000000000 : ℚ)
  center := (38246875000000001 / 100000000000000000 : ℚ)
  supportValue := (46057351729023 / 80000000000000 : ℚ)
  supportSlope := (-3583781353917459 / 1000000000000000 : ℚ)
  oldCenter := (46057351729023 / 80000000000000 : ℚ)
  newCoefficients := coefficients_932
  oldLo := (57550000000000001 / 100000000000000000 : ℚ)
  oldHi := (57600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1354]
}

def cell_9238 : Cell := { cellDefaults with
  domain := ⟨(38250000000000001 / 100000000000000000 : ℚ), (38256250000000001 / 100000000000000000 : ℚ)⟩
  r := (17864597870277 / 25000000000000 : ℚ)
  w := (1000185700599 / 625000000000 : ℚ)
  center := (38253125000000001 / 100000000000000000 : ℚ)
  supportValue := (2882076461340951 / 5000000000000000 : ℚ)
  supportSlope := (-179380444169297 / 50000000000000 : ℚ)
  oldCenter := (2882076461340951 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_933
  oldLo := (57600000000000007 / 100000000000000000 : ℚ)
  oldHi := (57700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1355, piece_1356]
}

def cell_9239 : Cell := { cellDefaults with
  domain := ⟨(38256250000000001 / 100000000000000000 : ℚ), (38262500000000001 / 100000000000000000 : ℚ)⟩
  r := (17864597870277 / 25000000000000 : ℚ)
  w := (1000185700599 / 625000000000 : ℚ)
  center := (38259375000000001 / 100000000000000000 : ℚ)
  supportValue := (5761911307837897 / 10000000000000000 : ℚ)
  supportSlope := (-560234421762007 / 156250000000000 : ℚ)
  oldCenter := (5761911307837897 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_933
  oldLo := (57600000000000007 / 100000000000000000 : ℚ)
  oldHi := (57650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1355]
}

def cell_9240 : Cell := { cellDefaults with
  domain := ⟨(38262500000000001 / 100000000000000000 : ℚ), (38268750000000001 / 100000000000000000 : ℚ)⟩
  r := (17864597870277 / 25000000000000 : ℚ)
  w := (1000185700599 / 625000000000 : ℚ)
  center := (38265625000000001 / 100000000000000000 : ℚ)
  supportValue := (5759671002508779 / 10000000000000000 : ℚ)
  supportSlope := (-35836393763659657 / 10000000000000000 : ℚ)
  oldCenter := (5759671002508779 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_933
  oldLo := (57550000000000001 / 100000000000000000 : ℚ)
  oldHi := (57650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1354, piece_1355]
}

def cell_9241 : Cell := { cellDefaults with
  domain := ⟨(38268750000000001 / 100000000000000000 : ℚ), (38275000000000001 / 100000000000000000 : ℚ)⟩
  r := (17864597870277 / 25000000000000 : ℚ)
  w := (1000185700599 / 625000000000 : ℚ)
  center := (38271875000000001 / 100000000000000000 : ℚ)
  supportValue := (2878715900206107 / 5000000000000000 : ℚ)
  supportSlope := (-1790820457616249 / 500000000000000 : ℚ)
  oldCenter := (2878715900206107 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_933
  oldLo := (57550000000000001 / 100000000000000000 : ℚ)
  oldHi := (57600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1354]
}

def cell_9242 : Cell := { cellDefaults with
  domain := ⟨(38275000000000001 / 100000000000000000 : ℚ), (38281250000000001 / 100000000000000000 : ℚ)⟩
  r := (17864597870277 / 25000000000000 : ℚ)
  w := (1000185700599 / 625000000000 : ℚ)
  center := (38278125000000001 / 100000000000000000 : ℚ)
  supportValue := (5755193949677241 / 10000000000000000 : ℚ)
  supportSlope := (-7159346854862747 / 2000000000000000 : ℚ)
  oldCenter := (5755193949677241 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_933
  oldLo := (57500000000000007 / 100000000000000000 : ℚ)
  oldHi := (57600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1353, piece_1354]
}

def cell_9243 : Cell := { cellDefaults with
  domain := ⟨(38281250000000001 / 100000000000000000 : ℚ), (38287500000000001 / 100000000000000000 : ℚ)⟩
  r := (17864597870277 / 25000000000000 : ℚ)
  w := (1000185700599 / 625000000000 : ℚ)
  center := (38284375000000001 / 100000000000000000 : ℚ)
  supportValue := (5752957182174517 / 10000000000000000 : ℚ)
  supportSlope := (-1788893400481939 / 500000000000000 : ℚ)
  oldCenter := (5752957182174517 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_933
  oldLo := (57500000000000007 / 100000000000000000 : ℚ)
  oldHi := (57550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1353]
}

def cell_9244 : Cell := { cellDefaults with
  domain := ⟨(38287500000000001 / 100000000000000000 : ℚ), (38293750000000001 / 100000000000000000 : ℚ)⟩
  r := (17864597870277 / 25000000000000 : ℚ)
  w := (1000185700599 / 625000000000 : ℚ)
  center := (38290625000000001 / 100000000000000000 : ℚ)
  supportValue := (5750721739629089 / 10000000000000000 : ℚ)
  supportSlope := (-178785551606353 / 50000000000000 : ℚ)
  oldCenter := (5750721739629089 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_933
  oldLo := (57450000000000001 / 100000000000000000 : ℚ)
  oldHi := (57550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1352, piece_1353]
}

def cell_9245 : Cell := { cellDefaults with
  domain := ⟨(38293750000000001 / 100000000000000000 : ℚ), (38300000000000001 / 100000000000000000 : ℚ)⟩
  r := (17864597870277 / 25000000000000 : ℚ)
  w := (1000185700599 / 625000000000 : ℚ)
  center := (38296875000000001 / 100000000000000000 : ℚ)
  supportValue := (17964023273781 / 31250000000000 : ℚ)
  supportSlope := (-3573937956939943 / 1000000000000000 : ℚ)
  oldCenter := (17964023273781 / 31250000000000 : ℚ)
  newCoefficients := coefficients_933
  oldLo := (57450000000000001 / 100000000000000000 : ℚ)
  oldHi := (57500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1352]
}

def cell_9246 : Cell := { cellDefaults with
  domain := ⟨(38300000000000001 / 100000000000000000 : ℚ), (38306250000000001 / 100000000000000000 : ℚ)⟩
  r := (71410495896687 / 100000000000000 : ℚ)
  w := (15995775963273 / 10000000000000 : ℚ)
  center := (38303125000000001 / 100000000000000000 : ℚ)
  supportValue := (5755453071871979 / 10000000000000000 : ℚ)
  supportSlope := (-3577474937078051 / 1000000000000000 : ℚ)
  oldCenter := (5755453071871979 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_934
  oldLo := (57500000000000007 / 100000000000000000 : ℚ)
  oldHi := (57600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1353, piece_1354]
}

def cell_9247 : Cell := { cellDefaults with
  domain := ⟨(38306250000000001 / 100000000000000000 : ℚ), (38312500000000001 / 100000000000000000 : ℚ)⟩
  r := (71410495896687 / 100000000000000 : ℚ)
  w := (15995775963273 / 10000000000000 : ℚ)
  center := (38309375000000001 / 100000000000000000 : ℚ)
  supportValue := (575321767725601 / 1000000000000000 : ℚ)
  supportSlope := (-7151292636770279 / 2000000000000000 : ℚ)
  oldCenter := (575321767725601 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_934
  oldLo := (57500000000000007 / 100000000000000000 : ℚ)
  oldHi := (57550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1353]
}

def cell_9248 : Cell := { cellDefaults with
  domain := ⟨(38312500000000001 / 100000000000000000 : ℚ), (38318750000000001 / 100000000000000000 : ℚ)⟩
  r := (71410495896687 / 100000000000000 : ℚ)
  w := (15995775963273 / 10000000000000 : ℚ)
  center := (38315625000000001 / 100000000000000000 : ℚ)
  supportValue := (5750983571332233 / 10000000000000000 : ℚ)
  supportSlope := (-142940771732043 / 40000000000000 : ℚ)
  oldCenter := (5750983571332233 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_934
  oldLo := (57450000000000001 / 100000000000000000 : ℚ)
  oldHi := (57550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1352, piece_1353]
}

def cell_9249 : Cell := { cellDefaults with
  domain := ⟨(38318750000000001 / 100000000000000000 : ℚ), (38325000000000001 / 100000000000000000 : ℚ)⟩
  r := (71410495896687 / 100000000000000 : ℚ)
  w := (15995775963273 / 10000000000000 : ℚ)
  center := (38321875000000001 / 100000000000000000 : ℚ)
  supportValue := (5748750647981721 / 10000000000000000 : ℚ)
  supportSlope := (-17859024944364421 / 5000000000000000 : ℚ)
  oldCenter := (5748750647981721 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_934
  oldLo := (57450000000000001 / 100000000000000000 : ℚ)
  oldHi := (57500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1352]
}

theorem check_9200 : cell_9200.check = true := by
  decide +kernel

theorem check_9201 : cell_9201.check = true := by
  decide +kernel

theorem check_9202 : cell_9202.check = true := by
  decide +kernel

theorem check_9203 : cell_9203.check = true := by
  decide +kernel

theorem check_9204 : cell_9204.check = true := by
  decide +kernel

theorem check_9205 : cell_9205.check = true := by
  decide +kernel

theorem check_9206 : cell_9206.check = true := by
  decide +kernel

theorem check_9207 : cell_9207.check = true := by
  decide +kernel

theorem check_9208 : cell_9208.check = true := by
  decide +kernel

theorem check_9209 : cell_9209.check = true := by
  decide +kernel

theorem check_9210 : cell_9210.check = true := by
  decide +kernel

theorem check_9211 : cell_9211.check = true := by
  decide +kernel

theorem check_9212 : cell_9212.check = true := by
  decide +kernel

theorem check_9213 : cell_9213.check = true := by
  decide +kernel

theorem check_9214 : cell_9214.check = true := by
  decide +kernel

theorem check_9215 : cell_9215.check = true := by
  decide +kernel

theorem check_9216 : cell_9216.check = true := by
  decide +kernel

theorem check_9217 : cell_9217.check = true := by
  decide +kernel

theorem check_9218 : cell_9218.check = true := by
  decide +kernel

theorem check_9219 : cell_9219.check = true := by
  decide +kernel

theorem check_9220 : cell_9220.check = true := by
  decide +kernel

theorem check_9221 : cell_9221.check = true := by
  decide +kernel

theorem check_9222 : cell_9222.check = true := by
  decide +kernel

theorem check_9223 : cell_9223.check = true := by
  decide +kernel

theorem check_9224 : cell_9224.check = true := by
  decide +kernel

theorem check_9225 : cell_9225.check = true := by
  decide +kernel

theorem check_9226 : cell_9226.check = true := by
  decide +kernel

theorem check_9227 : cell_9227.check = true := by
  decide +kernel

theorem check_9228 : cell_9228.check = true := by
  decide +kernel

theorem check_9229 : cell_9229.check = true := by
  decide +kernel

theorem check_9230 : cell_9230.check = true := by
  decide +kernel

theorem check_9231 : cell_9231.check = true := by
  decide +kernel

theorem check_9232 : cell_9232.check = true := by
  decide +kernel

theorem check_9233 : cell_9233.check = true := by
  decide +kernel

theorem check_9234 : cell_9234.check = true := by
  decide +kernel

theorem check_9235 : cell_9235.check = true := by
  decide +kernel

theorem check_9236 : cell_9236.check = true := by
  decide +kernel

theorem check_9237 : cell_9237.check = true := by
  decide +kernel

theorem check_9238 : cell_9238.check = true := by
  decide +kernel

theorem check_9239 : cell_9239.check = true := by
  decide +kernel

theorem check_9240 : cell_9240.check = true := by
  decide +kernel

theorem check_9241 : cell_9241.check = true := by
  decide +kernel

theorem check_9242 : cell_9242.check = true := by
  decide +kernel

theorem check_9243 : cell_9243.check = true := by
  decide +kernel

theorem check_9244 : cell_9244.check = true := by
  decide +kernel

theorem check_9245 : cell_9245.check = true := by
  decide +kernel

theorem check_9246 : cell_9246.check = true := by
  decide +kernel

theorem check_9247 : cell_9247.check = true := by
  decide +kernel

theorem check_9248 : cell_9248.check = true := by
  decide +kernel

theorem check_9249 : cell_9249.check = true := by
  decide +kernel

def cells : List Cell := [cell_9200, cell_9201, cell_9202, cell_9203, cell_9204, cell_9205, cell_9206, cell_9207, cell_9208, cell_9209, cell_9210, cell_9211, cell_9212, cell_9213, cell_9214, cell_9215, cell_9216, cell_9217, cell_9218, cell_9219, cell_9220, cell_9221, cell_9222, cell_9223, cell_9224, cell_9225, cell_9226, cell_9227, cell_9228, cell_9229, cell_9230, cell_9231, cell_9232, cell_9233, cell_9234, cell_9235, cell_9236, cell_9237, cell_9238, cell_9239, cell_9240, cell_9241, cell_9242, cell_9243, cell_9244, cell_9245, cell_9246, cell_9247, cell_9248, cell_9249]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9200, check_9201, check_9202, check_9203, check_9204, check_9205, check_9206, check_9207, check_9208, check_9209, check_9210, check_9211, check_9212, check_9213, check_9214, check_9215, check_9216, check_9217, check_9218, check_9219, check_9220, check_9221, check_9222, check_9223, check_9224, check_9225, check_9226, check_9227, check_9228, check_9229, check_9230, check_9231, check_9232, check_9233, check_9234, check_9235, check_9236, check_9237, check_9238, check_9239, check_9240, check_9241, check_9242, check_9243, check_9244, check_9245, check_9246, check_9247, check_9248, check_9249, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0184

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0184
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0184
open AnalyticBounds.ExpressionCertificate

theorem linked_9200 : Linked cell_9200 pieces := by
  link_source cell_9200 with piece_927 using piece_927_mem, ⟨piece_1364_mem, piece_1365_mem⟩

theorem linked_9201 : Linked cell_9201 pieces := by
  link_source cell_9201 with piece_927 using piece_927_mem, piece_1364_mem

theorem linked_9202 : Linked cell_9202 pieces := by
  link_source cell_9202 with piece_927 using piece_927_mem, piece_1364_mem

theorem linked_9203 : Linked cell_9203 pieces := by
  link_source cell_9203 with piece_927 using piece_927_mem, ⟨piece_1363_mem, piece_1364_mem⟩

theorem linked_9204 : Linked cell_9204 pieces := by
  link_source cell_9204 with piece_927 using piece_927_mem, ⟨piece_1362_mem, piece_1363_mem⟩

theorem linked_9205 : Linked cell_9205 pieces := by
  link_source cell_9205 with piece_927 using piece_927_mem, ⟨piece_1361_mem, piece_1362_mem⟩

theorem linked_9206 : Linked cell_9206 pieces := by
  link_source cell_9206 with piece_927 using piece_927_mem, piece_1361_mem

theorem linked_9207 : Linked cell_9207 pieces := by
  link_source cell_9207 with piece_928 using piece_928_mem, ⟨piece_1363_mem, piece_1364_mem⟩

theorem linked_9208 : Linked cell_9208 pieces := by
  link_source cell_9208 with piece_929 using piece_929_mem, ⟨piece_1361_mem, ⟨piece_1362_mem, piece_1363_mem⟩⟩

theorem linked_9209 : Linked cell_9209 pieces := by
  link_source cell_9209 with piece_929 using piece_929_mem, piece_1361_mem

theorem linked_9210 : Linked cell_9210 pieces := by
  link_source cell_9210 with piece_929 using piece_929_mem, ⟨piece_1360_mem, piece_1361_mem⟩

theorem linked_9211 : Linked cell_9211 pieces := by
  link_source cell_9211 with piece_929 using piece_929_mem, piece_1360_mem

theorem linked_9212 : Linked cell_9212 pieces := by
  link_source cell_9212 with piece_929 using piece_929_mem, ⟨piece_1359_mem, piece_1360_mem⟩

theorem linked_9213 : Linked cell_9213 pieces := by
  link_source cell_9213 with piece_929 using piece_929_mem, piece_1359_mem

theorem linked_9214 : Linked cell_9214 pieces := by
  link_source cell_9214 with piece_930 using piece_930_mem, ⟨piece_1360_mem, piece_1361_mem⟩

theorem linked_9215 : Linked cell_9215 pieces := by
  link_source cell_9215 with piece_930 using piece_930_mem, piece_1360_mem

theorem linked_9216 : Linked cell_9216 pieces := by
  link_source cell_9216 with piece_930 using piece_930_mem, ⟨piece_1359_mem, piece_1360_mem⟩

theorem linked_9217 : Linked cell_9217 pieces := by
  link_source cell_9217 with piece_930 using piece_930_mem, piece_1359_mem

theorem linked_9218 : Linked cell_9218 pieces := by
  link_source cell_9218 with piece_930 using piece_930_mem, piece_1359_mem

theorem linked_9219 : Linked cell_9219 pieces := by
  link_source cell_9219 with piece_930 using piece_930_mem, ⟨piece_1358_mem, piece_1359_mem⟩

theorem linked_9220 : Linked cell_9220 pieces := by
  link_source cell_9220 with piece_930 using piece_930_mem, piece_1358_mem

theorem linked_9221 : Linked cell_9221 pieces := by
  link_source cell_9221 with piece_930 using piece_930_mem, ⟨piece_1357_mem, piece_1358_mem⟩

theorem linked_9222 : Linked cell_9222 pieces := by
  link_source cell_9222 with piece_931 using piece_931_mem, piece_1359_mem

theorem linked_9223 : Linked cell_9223 pieces := by
  link_source cell_9223 with piece_931 using piece_931_mem, ⟨piece_1358_mem, piece_1359_mem⟩

theorem linked_9224 : Linked cell_9224 pieces := by
  link_source cell_9224 with piece_931 using piece_931_mem, piece_1358_mem

theorem linked_9225 : Linked cell_9225 pieces := by
  link_source cell_9225 with piece_931 using piece_931_mem, ⟨piece_1357_mem, piece_1358_mem⟩

theorem linked_9226 : Linked cell_9226 pieces := by
  link_source cell_9226 with piece_931 using piece_931_mem, piece_1357_mem

theorem linked_9227 : Linked cell_9227 pieces := by
  link_source cell_9227 with piece_931 using piece_931_mem, ⟨piece_1356_mem, piece_1357_mem⟩

theorem linked_9228 : Linked cell_9228 pieces := by
  link_source cell_9228 with piece_931 using piece_931_mem, piece_1356_mem

theorem linked_9229 : Linked cell_9229 pieces := by
  link_source cell_9229 with piece_931 using piece_931_mem, ⟨piece_1355_mem, piece_1356_mem⟩

theorem linked_9230 : Linked cell_9230 pieces := by
  link_source cell_9230 with piece_932 using piece_932_mem, piece_1357_mem

theorem linked_9231 : Linked cell_9231 pieces := by
  link_source cell_9231 with piece_932 using piece_932_mem, ⟨piece_1356_mem, piece_1357_mem⟩

theorem linked_9232 : Linked cell_9232 pieces := by
  link_source cell_9232 with piece_932 using piece_932_mem, piece_1356_mem

theorem linked_9233 : Linked cell_9233 pieces := by
  link_source cell_9233 with piece_932 using piece_932_mem, piece_1356_mem

theorem linked_9234 : Linked cell_9234 pieces := by
  link_source cell_9234 with piece_932 using piece_932_mem, ⟨piece_1355_mem, piece_1356_mem⟩

theorem linked_9235 : Linked cell_9235 pieces := by
  link_source cell_9235 with piece_932 using piece_932_mem, piece_1355_mem

theorem linked_9236 : Linked cell_9236 pieces := by
  link_source cell_9236 with piece_932 using piece_932_mem, ⟨piece_1354_mem, piece_1355_mem⟩

theorem linked_9237 : Linked cell_9237 pieces := by
  link_source cell_9237 with piece_932 using piece_932_mem, piece_1354_mem

theorem linked_9238 : Linked cell_9238 pieces := by
  link_source cell_9238 with piece_933 using piece_933_mem, ⟨piece_1355_mem, piece_1356_mem⟩

theorem linked_9239 : Linked cell_9239 pieces := by
  link_source cell_9239 with piece_933 using piece_933_mem, piece_1355_mem

theorem linked_9240 : Linked cell_9240 pieces := by
  link_source cell_9240 with piece_933 using piece_933_mem, ⟨piece_1354_mem, piece_1355_mem⟩

theorem linked_9241 : Linked cell_9241 pieces := by
  link_source cell_9241 with piece_933 using piece_933_mem, piece_1354_mem

theorem linked_9242 : Linked cell_9242 pieces := by
  link_source cell_9242 with piece_933 using piece_933_mem, ⟨piece_1353_mem, piece_1354_mem⟩

theorem linked_9243 : Linked cell_9243 pieces := by
  link_source cell_9243 with piece_933 using piece_933_mem, piece_1353_mem

theorem linked_9244 : Linked cell_9244 pieces := by
  link_source cell_9244 with piece_933 using piece_933_mem, ⟨piece_1352_mem, piece_1353_mem⟩

theorem linked_9245 : Linked cell_9245 pieces := by
  link_source cell_9245 with piece_933 using piece_933_mem, piece_1352_mem

theorem linked_9246 : Linked cell_9246 pieces := by
  link_source cell_9246 with piece_934 using piece_934_mem, ⟨piece_1353_mem, piece_1354_mem⟩

theorem linked_9247 : Linked cell_9247 pieces := by
  link_source cell_9247 with piece_934 using piece_934_mem, piece_1353_mem

theorem linked_9248 : Linked cell_9248 pieces := by
  link_source cell_9248 with piece_934 using piece_934_mem, ⟨piece_1352_mem, piece_1353_mem⟩

theorem linked_9249 : Linked cell_9249 pieces := by
  link_source cell_9249 with piece_934 using piece_934_mem, piece_1352_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0184.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0184.cells,List.forall_mem_cons]
  exact ⟨linked_9200, linked_9201, linked_9202, linked_9203, linked_9204, linked_9205, linked_9206, linked_9207, linked_9208, linked_9209, linked_9210, linked_9211, linked_9212, linked_9213, linked_9214, linked_9215, linked_9216, linked_9217, linked_9218, linked_9219, linked_9220, linked_9221, linked_9222, linked_9223, linked_9224, linked_9225, linked_9226, linked_9227, linked_9228, linked_9229, linked_9230, linked_9231, linked_9232, linked_9233, linked_9234, linked_9235, linked_9236, linked_9237, linked_9238, linked_9239, linked_9240, linked_9241, linked_9242, linked_9243, linked_9244, linked_9245, linked_9246, linked_9247, linked_9248, linked_9249, by simp⟩

theorem covered : covers (6081 / 16000 : ℚ) (38325000000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0184.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0184
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0185
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(38325000000000001 / 100000000000000000 : ℚ), (38331250000000001 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (8920333929407 / 12500000000000 : ℚ)
  w := (15988596636393 / 10000000000000 : ℚ)
  center := (38328125000000001 / 100000000000000000 : ℚ)
  supportValue := (2873259471129501 / 5000000000000000 : ℚ)
  supportSlope := (-1784825865360773 / 500000000000000 : ℚ)
  oldCenter := (2873259471129501 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_935
  oldLo := (28650000000000003 / 50000000000000000 : ℚ)
  oldHi := (57350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1348]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9250 : Cell := { cellDefaults with
  r := (71410495896687 / 100000000000000 : ℚ)
  w := (15995775963273 / 10000000000000 : ℚ)
  newCoefficients := coefficients_934
  oldLo := (57450000000000001 / 100000000000000000 : ℚ)
  oldHi := (57500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1352]
}

def cell_9251 : Cell := { cellDefaults with
  domain := ⟨(38331250000000001 / 100000000000000000 : ℚ), (38337500000000001 / 100000000000000000 : ℚ)⟩
  r := (71410495896687 / 100000000000000 : ℚ)
  w := (15995775963273 / 10000000000000 : ℚ)
  center := (38334375000000001 / 100000000000000000 : ℚ)
  supportValue := (5744288487967397 / 10000000000000000 : ℚ)
  supportSlope := (-713576873295807 / 200000000000000 : ℚ)
  oldCenter := (5744288487967397 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_934
  oldLo := (1148268156424581 / 2000000000000000 : ℚ)
  oldHi := (57500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1351, piece_1352]
}

def cell_9252 : Cell := { cellDefaults with
  domain := ⟨(38337500000000001 / 100000000000000000 : ℚ), (38343750000000001 / 100000000000000000 : ℚ)⟩
  r := (71410495896687 / 100000000000000 : ℚ)
  w := (15995775963273 / 10000000000000 : ℚ)
  center := (38340625000000001 / 100000000000000000 : ℚ)
  supportValue := (5742059179159521 / 10000000000000000 : ℚ)
  supportSlope := (-1426327020406859 / 400000000000000 : ℚ)
  oldCenter := (5742059179159521 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_934
  oldLo := (57400000000000007 / 100000000000000000 : ℚ)
  oldHi := (57450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1350, piece_1351]
}

def cell_9253 : Cell := { cellDefaults with
  domain := ⟨(38343750000000001 / 100000000000000000 : ℚ), (38350000000000001 / 100000000000000000 : ℚ)⟩
  r := (71410495896687 / 100000000000000 : ℚ)
  w := (15995775963273 / 10000000000000 : ℚ)
  center := (38346875000000001 / 100000000000000000 : ℚ)
  supportValue := (717478899002501 / 1250000000000000 : ℚ)
  supportSlope := (-111373073320431 / 31250000000000 : ℚ)
  oldCenter := (717478899002501 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_934
  oldLo := (57350000000000001 / 100000000000000000 : ℚ)
  oldHi := (1148268156424581 / 2000000000000000 : ℚ)
  oldPieces := [piece_1349, piece_1350]
}

def cell_9254 : Cell := { cellDefaults with
  domain := ⟨(38350000000000001 / 100000000000000000 : ℚ), (38356250000000001 / 100000000000000000 : ℚ)⟩
  center := (38353125000000001 / 100000000000000000 : ℚ)
  supportValue := (718347315754933 / 1250000000000000 : ℚ)
  supportSlope := (-35675149520173477 / 10000000000000000 : ℚ)
  oldCenter := (718347315754933 / 1250000000000000 : ℚ)
  oldLo := (57450000000000001 / 100000000000000000 : ℚ)
  oldHi := (57500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1352]
}

def cell_9255 : Cell := { cellDefaults with
  domain := ⟨(38356250000000001 / 100000000000000000 : ℚ), (38362500000000001 / 100000000000000000 : ℚ)⟩
  center := (38359375000000001 / 100000000000000000 : ℚ)
  supportValue := (5744549440232517 / 10000000000000000 : ℚ)
  supportSlope := (-35656967853370247 / 10000000000000000 : ℚ)
  oldCenter := (5744549440232517 / 10000000000000000 : ℚ)
  oldLo := (1148268156424581 / 2000000000000000 : ℚ)
  oldHi := (57500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1351, piece_1352]
}

def cell_9256 : Cell := { cellDefaults with
  domain := ⟨(38362500000000001 / 100000000000000000 : ℚ), (38368750000000001 / 100000000000000000 : ℚ)⟩
  center := (38365625000000001 / 100000000000000000 : ℚ)
  supportValue := (143558036579057 / 250000000000000 : ℚ)
  supportSlope := (-1781844432738211 / 500000000000000 : ℚ)
  oldCenter := (143558036579057 / 250000000000000 : ℚ)
  oldLo := (57400000000000007 / 100000000000000000 : ℚ)
  oldHi := (57450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1350, piece_1351]
}

def cell_9257 : Cell := { cellDefaults with
  domain := ⟨(38368750000000001 / 100000000000000000 : ℚ), (38375000000000001 / 100000000000000000 : ℚ)⟩
  center := (38371875000000001 / 100000000000000000 : ℚ)
  supportValue := (143502370691667 / 250000000000000 : ℚ)
  supportSlope := (-35617579922728737 / 10000000000000000 : ℚ)
  oldCenter := (143502370691667 / 250000000000000 : ℚ)
  oldLo := (57350000000000001 / 100000000000000000 : ℚ)
  oldHi := (1148268156424581 / 2000000000000000 : ℚ)
  oldPieces := [piece_1349, piece_1350]
}

def cell_9258 : Cell := { cellDefaults with
  domain := ⟨(38375000000000001 / 100000000000000000 : ℚ), (38381250000000001 / 100000000000000000 : ℚ)⟩
  center := (38378125000000001 / 100000000000000000 : ℚ)
  supportValue := (5737869251910777 / 10000000000000000 : ℚ)
  supportSlope := (-35598674041033007 / 10000000000000000 : ℚ)
  oldCenter := (5737869251910777 / 10000000000000000 : ℚ)
  oldLo := (57350000000000001 / 100000000000000000 : ℚ)
  oldHi := (57400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1349]
}

def cell_9259 : Cell := { cellDefaults with
  domain := ⟨(38381250000000001 / 100000000000000000 : ℚ), (38387500000000001 / 100000000000000000 : ℚ)⟩
  center := (38384375000000001 / 100000000000000000 : ℚ)
  supportValue := (716955625500909 / 1250000000000000 : ℚ)
  supportSlope := (-3557823302699603 / 1000000000000000 : ℚ)
  oldCenter := (716955625500909 / 1250000000000000 : ℚ)
  oldHi := (57400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1348, piece_1349]
}

def cell_9260 : Cell := { cellDefaults with
  domain := ⟨(38387500000000001 / 100000000000000000 : ℚ), (38393750000000001 / 100000000000000000 : ℚ)⟩
  center := (38390625000000001 / 100000000000000000 : ℚ)
  supportValue := (1146684377279909 / 2000000000000000 : ℚ)
  supportSlope := (-4445064800160381 / 1250000000000000 : ℚ)
  oldCenter := (1146684377279909 / 2000000000000000 : ℚ)
  oldPieces := [piece_1348]
}

def cell_9261 : Cell := { cellDefaults with
  domain := ⟨(38393750000000001 / 100000000000000000 : ℚ), (38400000000000001 / 100000000000000000 : ℚ)⟩
  center := (38396875000000001 / 100000000000000000 : ℚ)
  supportValue := (5731200022620263 / 10000000000000000 : ℚ)
  supportSlope := (-3553910667918103 / 1000000000000000 : ℚ)
  oldCenter := (5731200022620263 / 10000000000000000 : ℚ)
  oldPieces := [piece_1348]
}

def cell_9262 : Cell := { cellDefaults with
  domain := ⟨(38400000000000001 / 100000000000000000 : ℚ), (38406250000000001 / 100000000000000000 : ℚ)⟩
  r := (35657459017317 / 50000000000000 : ℚ)
  w := (15981432950561 / 10000000000000 : ℚ)
  center := (38403125000000001 / 100000000000000000 : ℚ)
  supportValue := (1434532340670513 / 2500000000000000 : ℚ)
  supportSlope := (-7115477041473639 / 2000000000000000 : ℚ)
  oldCenter := (1434532340670513 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_936
  oldLo := (57350000000000001 / 100000000000000000 : ℚ)
  oldHi := (57400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1349]
}

def cell_9263 : Cell := { cellDefaults with
  domain := ⟨(38406250000000001 / 100000000000000000 : ℚ), (38412500000000001 / 100000000000000000 : ℚ)⟩
  r := (35657459017317 / 50000000000000 : ℚ)
  w := (15981432950561 / 10000000000000 : ℚ)
  center := (38409375000000001 / 100000000000000000 : ℚ)
  supportValue := (1147181288821971 / 2000000000000000 : ℚ)
  supportSlope := (-3555642930649583 / 1000000000000000 : ℚ)
  oldCenter := (1147181288821971 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_936
  oldHi := (57400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1348, piece_1349]
}

def cell_9264 : Cell := { cellDefaults with
  domain := ⟨(38412500000000001 / 100000000000000000 : ℚ), (38418750000000001 / 100000000000000000 : ℚ)⟩
  r := (35657459017317 / 50000000000000 : ℚ)
  w := (15981432950561 / 10000000000000 : ℚ)
  center := (38415625000000001 / 100000000000000000 : ℚ)
  supportValue := (2866842344011627 / 5000000000000000 : ℚ)
  supportSlope := (-1776965370209993 / 500000000000000 : ℚ)
  oldCenter := (2866842344011627 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_936
  oldPieces := [piece_1348]
}

def cell_9265 : Cell := { cellDefaults with
  domain := ⟨(38418750000000001 / 100000000000000000 : ℚ), (38425000000000001 / 100000000000000000 : ℚ)⟩
  r := (35657459017317 / 50000000000000 : ℚ)
  w := (15981432950561 / 10000000000000 : ℚ)
  center := (38421875000000001 / 100000000000000000 : ℚ)
  supportValue := (5731464148712941 / 10000000000000000 : ℚ)
  supportSlope := (-3551793466915143 / 1000000000000000 : ℚ)
  oldCenter := (5731464148712941 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_936
  oldPieces := [piece_1348]
}

def cell_9266 : Cell := { cellDefaults with
  domain := ⟨(38425000000000001 / 100000000000000000 : ℚ), (38431250000000001 / 100000000000000000 : ℚ)⟩
  r := (35657459017317 / 50000000000000 : ℚ)
  w := (15981432950561 / 10000000000000 : ℚ)
  center := (38428125000000001 / 100000000000000000 : ℚ)
  supportValue := (5729244844321697 / 10000000000000000 : ℚ)
  supportSlope := (-35500532537113827 / 10000000000000000 : ℚ)
  oldCenter := (5729244844321697 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_936
  oldLo := (57250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1347, piece_1348]
}

def cell_9267 : Cell := { cellDefaults with
  domain := ⟨(38431250000000001 / 100000000000000000 : ℚ), (38437500000000001 / 100000000000000000 : ℚ)⟩
  r := (35657459017317 / 50000000000000 : ℚ)
  w := (15981432950561 / 10000000000000 : ℚ)
  center := (38434375000000001 / 100000000000000000 : ℚ)
  supportValue := (2863513340498159 / 5000000000000000 : ℚ)
  supportSlope := (-354799302547093 / 100000000000000 : ℚ)
  oldCenter := (2863513340498159 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_936
  oldLo := (57250000000000001 / 100000000000000000 : ℚ)
  oldHi := (28650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1347]
}

def cell_9268 : Cell := { cellDefaults with
  domain := ⟨(38437500000000001 / 100000000000000000 : ℚ), (38443750000000001 / 100000000000000000 : ℚ)⟩
  r := (35657459017317 / 50000000000000 : ℚ)
  w := (15981432950561 / 10000000000000 : ℚ)
  center := (38440625000000001 / 100000000000000000 : ℚ)
  supportValue := (5724809825894843 / 10000000000000000 : ℚ)
  supportSlope := (-2216334992108937 / 625000000000000 : ℚ)
  oldCenter := (5724809825894843 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_936
  oldLo := (28600000000000003 / 50000000000000000 : ℚ)
  oldHi := (28650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1346, piece_1347]
}

def cell_9269 : Cell := { cellDefaults with
  domain := ⟨(38443750000000001 / 100000000000000000 : ℚ), (38450000000000001 / 100000000000000000 : ℚ)⟩
  r := (35657459017317 / 50000000000000 : ℚ)
  w := (15981432950561 / 10000000000000 : ℚ)
  center := (38446875000000001 / 100000000000000000 : ℚ)
  supportValue := (5722594035204571 / 10000000000000000 : ℚ)
  supportSlope := (-1417679098280189 / 400000000000000 : ℚ)
  oldCenter := (5722594035204571 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_936
  oldLo := (28600000000000003 / 50000000000000000 : ℚ)
  oldHi := (57250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1346]
}

def cell_9270 : Cell := { cellDefaults with
  domain := ⟨(38450000000000001 / 100000000000000000 : ℚ), (38456250000000001 / 100000000000000000 : ℚ)⟩
  r := (71267236368719 / 100000000000000 : ℚ)
  w := (15974284723979 / 10000000000000 : ℚ)
  center := (38453125000000001 / 100000000000000000 : ℚ)
  supportValue := (2864752706580467 / 5000000000000000 : ℚ)
  supportSlope := (-8869692793131989 / 2500000000000000 : ℚ)
  oldCenter := (2864752706580467 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_937
  oldLo := (57250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1347, piece_1348]
}

def cell_9271 : Cell := { cellDefaults with
  domain := ⟨(38456250000000001 / 100000000000000000 : ℚ), (38462500000000001 / 100000000000000000 : ℚ)⟩
  r := (71267236368719 / 100000000000000 : ℚ)
  w := (15974284723979 / 10000000000000 : ℚ)
  center := (38459375000000001 / 100000000000000000 : ℚ)
  supportValue := (1145457714854701 / 2000000000000000 : ℚ)
  supportSlope := (-17729379139499457 / 5000000000000000 : ℚ)
  oldCenter := (1145457714854701 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_937
  oldLo := (57250000000000001 / 100000000000000000 : ℚ)
  oldHi := (28650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1347]
}

def cell_9272 : Cell := { cellDefaults with
  domain := ⟨(38462500000000001 / 100000000000000000 : ℚ), (38468750000000001 / 100000000000000000 : ℚ)⟩
  r := (71267236368719 / 100000000000000 : ℚ)
  w := (15974284723979 / 10000000000000 : ℚ)
  center := (38465625000000001 / 100000000000000000 : ℚ)
  supportValue := (5725073066706319 / 10000000000000000 : ℚ)
  supportSlope := (-35439666634999867 / 10000000000000000 : ℚ)
  oldCenter := (5725073066706319 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_937
  oldLo := (28600000000000003 / 50000000000000000 : ℚ)
  oldHi := (28650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1346, piece_1347]
}

def cell_9273 : Cell := { cellDefaults with
  domain := ⟨(38468750000000001 / 100000000000000000 : ℚ), (38475000000000001 / 100000000000000000 : ℚ)⟩
  r := (71267236368719 / 100000000000000 : ℚ)
  w := (15974284723979 / 10000000000000 : ℚ)
  center := (38471875000000001 / 100000000000000000 : ℚ)
  supportValue := (2861429302594291 / 5000000000000000 : ℚ)
  supportSlope := (-35420881298691143 / 10000000000000000 : ℚ)
  oldCenter := (2861429302594291 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_937
  oldLo := (28600000000000003 / 50000000000000000 : ℚ)
  oldHi := (57250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1346]
}

def cell_9274 : Cell := { cellDefaults with
  domain := ⟨(38475000000000001 / 100000000000000000 : ℚ), (38481250000000001 / 100000000000000000 : ℚ)⟩
  r := (71267236368719 / 100000000000000 : ℚ)
  w := (15974284723979 / 10000000000000 : ℚ)
  center := (38478125000000001 / 100000000000000000 : ℚ)
  supportValue := (2860322732175559 / 5000000000000000 : ℚ)
  supportSlope := (-17700297223139927 / 5000000000000000 : ℚ)
  oldCenter := (2860322732175559 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_937
  oldLo := (57150000000000001 / 100000000000000000 : ℚ)
  oldHi := (57250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1345, piece_1346]
}

def cell_9275 : Cell := { cellDefaults with
  domain := ⟨(38481250000000001 / 100000000000000000 : ℚ), (38487500000000001 / 100000000000000000 : ℚ)⟩
  r := (71267236368719 / 100000000000000 : ℚ)
  w := (15974284723979 / 10000000000000 : ℚ)
  center := (38484375000000001 / 100000000000000000 : ℚ)
  supportValue := (114368668876121 / 200000000000000 : ℚ)
  supportSlope := (-35383056191164997 / 10000000000000000 : ℚ)
  oldCenter := (114368668876121 / 200000000000000 : ℚ)
  newCoefficients := coefficients_937
  oldLo := (57150000000000001 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1345]
}

def cell_9276 : Cell := { cellDefaults with
  domain := ⟨(38487500000000001 / 100000000000000000 : ℚ), (38493750000000001 / 100000000000000000 : ℚ)⟩
  r := (71267236368719 / 100000000000000 : ℚ)
  w := (15974284723979 / 10000000000000 : ℚ)
  center := (38490625000000001 / 100000000000000000 : ℚ)
  supportValue := (1143244533292113 / 2000000000000000 : ℚ)
  supportSlope := (-17680901540000349 / 5000000000000000 : ℚ)
  oldCenter := (1143244533292113 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_937
  oldLo := (57150000000000001 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1345]
}

def cell_9277 : Cell := { cellDefaults with
  domain := ⟨(38493750000000001 / 100000000000000000 : ℚ), (38500000000000001 / 100000000000000000 : ℚ)⟩
  r := (71267236368719 / 100000000000000 : ℚ)
  w := (15974284723979 / 10000000000000 : ℚ)
  center := (38496875000000001 / 100000000000000000 : ℚ)
  supportValue := (2857006542420641 / 5000000000000000 : ℚ)
  supportSlope := (-4418129352288247 / 1250000000000000 : ℚ)
  oldCenter := (2857006542420641 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_937
  oldLo := (28550000000000003 / 50000000000000000 : ℚ)
  oldHi := (28600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1344, piece_1345]
}

def cell_9278 : Cell := { cellDefaults with
  domain := ⟨(38500000000000001 / 100000000000000000 : ℚ), (38506250000000001 / 100000000000000000 : ℚ)⟩
  r := (3560981244527 / 5000000000000 : ℚ)
  w := (15967151496693 / 10000000000000 : ℚ)
  center := (38503125000000001 / 100000000000000000 : ℚ)
  supportValue := (1430226698024611 / 2500000000000000 : ℚ)
  supportSlope := (-35378906721277303 / 10000000000000000 : ℚ)
  oldCenter := (1430226698024611 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_938
  oldLo := (57150000000000001 / 100000000000000000 : ℚ)
  oldHi := (57250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1345, piece_1346]
}

def cell_9279 : Cell := { cellDefaults with
  domain := ⟨(38506250000000001 / 100000000000000000 : ℚ), (38512500000000001 / 100000000000000000 : ℚ)⟩
  r := (3560981244527 / 5000000000000 : ℚ)
  w := (15967151496693 / 10000000000000 : ℚ)
  center := (38509375000000001 / 100000000000000000 : ℚ)
  supportValue := (35741850786591 / 62500000000000 : ℚ)
  supportSlope := (-3536196420313331 / 1000000000000000 : ℚ)
  oldCenter := (35741850786591 / 62500000000000 : ℚ)
  newCoefficients := coefficients_938
  oldLo := (57150000000000001 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1345]
}

def cell_9280 : Cell := { cellDefaults with
  domain := ⟨(38512500000000001 / 100000000000000000 : ℚ), (38518750000000001 / 100000000000000000 : ℚ)⟩
  r := (3560981244527 / 5000000000000 : ℚ)
  w := (15967151496693 / 10000000000000 : ℚ)
  center := (38515625000000001 / 100000000000000000 : ℚ)
  supportValue := (5716486665571943 / 10000000000000000 : ℚ)
  supportSlope := (-1767037452802711 / 500000000000000 : ℚ)
  oldCenter := (5716486665571943 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_938
  oldLo := (57150000000000001 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1345]
}

def cell_9281 : Cell := { cellDefaults with
  domain := ⟨(38518750000000001 / 100000000000000000 : ℚ), (38525000000000001 / 100000000000000000 : ℚ)⟩
  r := (3560981244527 / 5000000000000 : ℚ)
  w := (15967151496693 / 10000000000000 : ℚ)
  center := (38521875000000001 / 100000000000000000 : ℚ)
  supportValue := (1142855686804603 / 2000000000000000 : ℚ)
  supportSlope := (-7064690516074279 / 2000000000000000 : ℚ)
  oldCenter := (1142855686804603 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_938
  oldLo := (28550000000000003 / 50000000000000000 : ℚ)
  oldHi := (28600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1344, piece_1345]
}

def cell_9282 : Cell := { cellDefaults with
  domain := ⟨(38525000000000001 / 100000000000000000 : ℚ), (38531250000000001 / 100000000000000000 : ℚ)⟩
  r := (3560981244527 / 5000000000000 : ℚ)
  w := (15967151496693 / 10000000000000 : ℚ)
  center := (38528125000000001 / 100000000000000000 : ℚ)
  supportValue := (2856035664630423 / 5000000000000000 : ℚ)
  supportSlope := (-7060613992614151 / 2000000000000000 : ℚ)
  oldCenter := (2856035664630423 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_938
  oldLo := (28550000000000003 / 50000000000000000 : ℚ)
  oldHi := (57150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1344]
}

def cell_9283 : Cell := { cellDefaults with
  domain := ⟨(38531250000000001 / 100000000000000000 : ℚ), (38537500000000001 / 100000000000000000 : ℚ)⟩
  r := (3560981244527 / 5000000000000 : ℚ)
  w := (15967151496693 / 10000000000000 : ℚ)
  center := (38534375000000001 / 100000000000000000 : ℚ)
  supportValue := (5709865530373419 / 10000000000000000 : ℚ)
  supportSlope := (-17642273323321689 / 5000000000000000 : ℚ)
  oldCenter := (5709865530373419 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_938
  oldLo := (57050000000000001 / 100000000000000000 : ℚ)
  oldHi := (57150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1343, piece_1344]
}

def cell_9284 : Cell := { cellDefaults with
  domain := ⟨(38537500000000001 / 100000000000000000 : ℚ), (38543750000000001 / 100000000000000000 : ℚ)⟩
  r := (3560981244527 / 5000000000000 : ℚ)
  w := (15967151496693 / 10000000000000 : ℚ)
  center := (38540625000000001 / 100000000000000000 : ℚ)
  supportValue := (5707660777898487 / 10000000000000000 : ℚ)
  supportSlope := (-8816360654408939 / 2500000000000000 : ℚ)
  oldCenter := (5707660777898487 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_938
  oldLo := (57050000000000001 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1343]
}

def cell_9285 : Cell := { cellDefaults with
  domain := ⟨(38543750000000001 / 100000000000000000 : ℚ), (38550000000000001 / 100000000000000000 : ℚ)⟩
  r := (3560981244527 / 5000000000000 : ℚ)
  w := (15967151496693 / 10000000000000 : ℚ)
  center := (38546875000000001 / 100000000000000000 : ℚ)
  supportValue := (713182168548087 / 1250000000000000 : ℚ)
  supportSlope := (-3524567318773819 / 1000000000000000 : ℚ)
  oldCenter := (713182168548087 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_938
  oldLo := (28500000000000003 / 50000000000000000 : ℚ)
  oldHi := (28550000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1342, piece_1343]
}

def cell_9286 : Cell := { cellDefaults with
  domain := ⟨(38550000000000001 / 100000000000000000 : ℚ), (38556250000000001 / 100000000000000000 : ℚ)⟩
  r := (71172083159303 / 100000000000000 : ℚ)
  w := (7980017478711 / 5000000000000 : ℚ)
  center := (38553125000000001 / 100000000000000000 : ℚ)
  supportValue := (5712332808203441 / 10000000000000000 : ℚ)
  supportSlope := (-441025189141353 / 125000000000000 : ℚ)
  oldCenter := (5712332808203441 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_939
  oldLo := (28550000000000003 / 50000000000000000 : ℚ)
  oldHi := (57150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1344]
}

def cell_9287 : Cell := { cellDefaults with
  domain := ⟨(38556250000000001 / 100000000000000000 : ℚ), (38562500000000001 / 100000000000000000 : ℚ)⟩
  r := (71172083159303 / 100000000000000 : ℚ)
  w := (7980017478711 / 5000000000000 : ℚ)
  center := (38559375000000001 / 100000000000000000 : ℚ)
  supportValue := (1142025668459711 / 2000000000000000 : ℚ)
  supportSlope := (-35262966310298793 / 10000000000000000 : ℚ)
  oldCenter := (1142025668459711 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_939
  oldLo := (57050000000000001 / 100000000000000000 : ℚ)
  oldHi := (57150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1343, piece_1344]
}

def cell_9288 : Cell := { cellDefaults with
  domain := ⟨(38562500000000001 / 100000000000000000 : ℚ), (38568750000000001 / 100000000000000000 : ℚ)⟩
  r := (71172083159303 / 100000000000000 : ℚ)
  w := (7980017478711 / 5000000000000 : ℚ)
  center := (38565625000000001 / 100000000000000000 : ℚ)
  supportValue := (228316996766969 / 400000000000000 : ℚ)
  supportSlope := (-281955707745567 / 80000000000000 : ℚ)
  oldCenter := (228316996766969 / 400000000000000 : ℚ)
  newCoefficients := coefficients_939
  oldLo := (57050000000000001 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1343]
}

def cell_9289 : Cell := { cellDefaults with
  domain := ⟨(38568750000000001 / 100000000000000000 : ℚ), (38575000000000001 / 100000000000000000 : ℚ)⟩
  r := (71172083159303 / 100000000000000 : ℚ)
  w := (7980017478711 / 5000000000000 : ℚ)
  center := (38571875000000001 / 100000000000000000 : ℚ)
  supportValue := (2852861399836907 / 5000000000000000 : ℚ)
  supportSlope := (-17612080192410673 / 5000000000000000 : ℚ)
  oldCenter := (2852861399836907 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_939
  oldLo := (28500000000000003 / 50000000000000000 : ℚ)
  oldHi := (28550000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1342, piece_1343]
}

def cell_9290 : Cell := { cellDefaults with
  domain := ⟨(38575000000000001 / 100000000000000000 : ℚ), (38581250000000001 / 100000000000000000 : ℚ)⟩
  r := (71172083159303 / 100000000000000 : ℚ)
  w := (7980017478711 / 5000000000000 : ℚ)
  center := (38578125000000001 / 100000000000000000 : ℚ)
  supportValue := (570352180088259 / 1000000000000000 : ℚ)
  supportSlope := (-1760348171560011 / 500000000000000 : ℚ)
  oldCenter := (570352180088259 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_939
  oldLo := (28500000000000003 / 50000000000000000 : ℚ)
  oldHi := (57050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1342]
}

def cell_9291 : Cell := { cellDefaults with
  domain := ⟨(38581250000000001 / 100000000000000000 : ℚ), (38587500000000001 / 100000000000000000 : ℚ)⟩
  r := (71172083159303 / 100000000000000 : ℚ)
  w := (7980017478711 / 5000000000000 : ℚ)
  center := (38584375000000001 / 100000000000000000 : ℚ)
  supportValue := (5701322024559309 / 10000000000000000 : ℚ)
  supportSlope := (-439823290065533 / 125000000000000 : ℚ)
  oldCenter := (5701322024559309 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_939
  oldLo := (28500000000000003 / 50000000000000000 : ℚ)
  oldHi := (57050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1342]
}

def cell_9292 : Cell := { cellDefaults with
  domain := ⟨(38587500000000001 / 100000000000000000 : ℚ), (38593750000000001 / 100000000000000000 : ℚ)⟩
  r := (71172083159303 / 100000000000000 : ℚ)
  w := (7980017478711 / 5000000000000 : ℚ)
  center := (38590625000000001 / 100000000000000000 : ℚ)
  supportValue := (284956172414239 / 500000000000000 : ℚ)
  supportSlope := (-17584515714776927 / 5000000000000000 : ℚ)
  oldCenter := (284956172414239 / 500000000000000 : ℚ)
  newCoefficients := coefficients_939
  oldLo := (56950000000000001 / 100000000000000000 : ℚ)
  oldHi := (57050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1341, piece_1342]
}

def cell_9293 : Cell := { cellDefaults with
  domain := ⟨(38593750000000001 / 100000000000000000 : ℚ), (38600000000000001 / 100000000000000000 : ℚ)⟩
  r := (71172083159303 / 100000000000000 : ℚ)
  w := (7980017478711 / 5000000000000 : ℚ)
  center := (38596875000000001 / 100000000000000000 : ℚ)
  supportValue := (1424231503099191 / 2500000000000000 : ℚ)
  supportSlope := (-4393553202364231 / 1250000000000000 : ℚ)
  oldCenter := (1424231503099191 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_939
  oldLo := (56950000000000001 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1341]
}

def cell_9294 : Cell := { cellDefaults with
  domain := ⟨(38600000000000001 / 100000000000000000 : ℚ), (3860893854748603 / 10000000000000000 : ℚ)⟩
  r := (3556230617503 / 5000000000000 : ℚ)
  w := (15952932782597 / 10000000000000 : ℚ)
  center := (77208938547486031 / 200000000000000000 : ℚ)
  supportValue := (8911429920937 / 15625000000000 : ℚ)
  supportSlope := (-3518145689655849 / 1000000000000000 : ℚ)
  oldCenter := (8911429920937 / 15625000000000 : ℚ)
  newCoefficients := coefficients_940
  oldLo := (28500000000000003 / 50000000000000000 : ℚ)
  oldHi := (57050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1342]
}

def cell_9295 : Cell := { cellDefaults with
  domain := ⟨(3860893854748603 / 10000000000000000 : ℚ), (77233938547486031 / 200000000000000000 : ℚ)⟩
  r := (3556230617503 / 5000000000000 : ℚ)
  w := (15952932782597 / 10000000000000 : ℚ)
  center := (154451815642458091 / 400000000000000000 : ℚ)
  supportValue := (5700327350145573 / 10000000000000000 : ℚ)
  supportSlope := (-1757734753661257 / 500000000000000 : ℚ)
  oldCenter := (5700327350145573 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_941
  oldLo := (56950000000000001 / 100000000000000000 : ℚ)
  oldHi := (57050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1341, piece_1342]
}

def cell_9296 : Cell := { cellDefaults with
  domain := ⟨(77233938547486031 / 200000000000000000 : ℚ), (38625000000000001 / 100000000000000000 : ℚ)⟩
  r := (3556230617503 / 5000000000000 : ℚ)
  w := (15952932782597 / 10000000000000 : ℚ)
  center := (154483938547486033 / 400000000000000000 : ℚ)
  supportValue := (1424376267005507 / 2500000000000000 : ℚ)
  supportSlope := (-35130563838446243 / 10000000000000000 : ℚ)
  oldCenter := (1424376267005507 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_941
  oldLo := (56950000000000001 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1341]
}

def cell_9297 : Cell := { cellDefaults with
  domain := ⟨(38625000000000001 / 100000000000000000 : ℚ), (38631250000000001 / 100000000000000000 : ℚ)⟩
  r := (3556230617503 / 5000000000000 : ℚ)
  w := (15952932782597 / 10000000000000 : ℚ)
  center := (38628125000000001 / 100000000000000000 : ℚ)
  supportValue := (113899949493077 / 200000000000000 : ℚ)
  supportSlope := (-17554461575617353 / 5000000000000000 : ℚ)
  oldCenter := (113899949493077 / 200000000000000 : ℚ)
  newCoefficients := coefficients_941
  oldLo := (28450000000000003 / 50000000000000000 : ℚ)
  oldHi := (28500000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1340, piece_1341]
}

def cell_9298 : Cell := { cellDefaults with
  domain := ⟨(38631250000000001 / 100000000000000000 : ℚ), (38637500000000001 / 100000000000000000 : ℚ)⟩
  r := (3556230617503 / 5000000000000 : ℚ)
  w := (15952932782597 / 10000000000000 : ℚ)
  center := (38634375000000001 / 100000000000000000 : ℚ)
  supportValue := (2846401837802807 / 5000000000000000 : ℚ)
  supportSlope := (-35090264288548667 / 10000000000000000 : ℚ)
  oldCenter := (2846401837802807 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_941
  oldLo := (28450000000000003 / 50000000000000000 : ℚ)
  oldHi := (56950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1340]
}

def cell_9299 : Cell := { cellDefaults with
  domain := ⟨(38637500000000001 / 100000000000000000 : ℚ), (38643750000000001 / 100000000000000000 : ℚ)⟩
  r := (3556230617503 / 5000000000000 : ℚ)
  w := (15952932782597 / 10000000000000 : ℚ)
  center := (38640625000000001 / 100000000000000000 : ℚ)
  supportValue := (2845305594982371 / 5000000000000000 : ℚ)
  supportSlope := (-7014062921037123 / 2000000000000000 : ℚ)
  oldCenter := (2845305594982371 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_941
  oldLo := (355377094972067 / 625000000000000 : ℚ)
  oldHi := (56950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1339, piece_1340]
}

theorem check_9250 : cell_9250.check = true := by
  decide +kernel

theorem check_9251 : cell_9251.check = true := by
  decide +kernel

theorem check_9252 : cell_9252.check = true := by
  decide +kernel

theorem check_9253 : cell_9253.check = true := by
  decide +kernel

theorem check_9254 : cell_9254.check = true := by
  decide +kernel

theorem check_9255 : cell_9255.check = true := by
  decide +kernel

theorem check_9256 : cell_9256.check = true := by
  decide +kernel

theorem check_9257 : cell_9257.check = true := by
  decide +kernel

theorem check_9258 : cell_9258.check = true := by
  decide +kernel

theorem check_9259 : cell_9259.check = true := by
  decide +kernel

theorem check_9260 : cell_9260.check = true := by
  decide +kernel

theorem check_9261 : cell_9261.check = true := by
  decide +kernel

theorem check_9262 : cell_9262.check = true := by
  decide +kernel

theorem check_9263 : cell_9263.check = true := by
  decide +kernel

theorem check_9264 : cell_9264.check = true := by
  decide +kernel

theorem check_9265 : cell_9265.check = true := by
  decide +kernel

theorem check_9266 : cell_9266.check = true := by
  decide +kernel

theorem check_9267 : cell_9267.check = true := by
  decide +kernel

theorem check_9268 : cell_9268.check = true := by
  decide +kernel

theorem check_9269 : cell_9269.check = true := by
  decide +kernel

theorem check_9270 : cell_9270.check = true := by
  decide +kernel

theorem check_9271 : cell_9271.check = true := by
  decide +kernel

theorem check_9272 : cell_9272.check = true := by
  decide +kernel

theorem check_9273 : cell_9273.check = true := by
  decide +kernel

theorem check_9274 : cell_9274.check = true := by
  decide +kernel

theorem check_9275 : cell_9275.check = true := by
  decide +kernel

theorem check_9276 : cell_9276.check = true := by
  decide +kernel

theorem check_9277 : cell_9277.check = true := by
  decide +kernel

theorem check_9278 : cell_9278.check = true := by
  decide +kernel

theorem check_9279 : cell_9279.check = true := by
  decide +kernel

theorem check_9280 : cell_9280.check = true := by
  decide +kernel

theorem check_9281 : cell_9281.check = true := by
  decide +kernel

theorem check_9282 : cell_9282.check = true := by
  decide +kernel

theorem check_9283 : cell_9283.check = true := by
  decide +kernel

theorem check_9284 : cell_9284.check = true := by
  decide +kernel

theorem check_9285 : cell_9285.check = true := by
  decide +kernel

theorem check_9286 : cell_9286.check = true := by
  decide +kernel

theorem check_9287 : cell_9287.check = true := by
  decide +kernel

theorem check_9288 : cell_9288.check = true := by
  decide +kernel

theorem check_9289 : cell_9289.check = true := by
  decide +kernel

theorem check_9290 : cell_9290.check = true := by
  decide +kernel

theorem check_9291 : cell_9291.check = true := by
  decide +kernel

theorem check_9292 : cell_9292.check = true := by
  decide +kernel

theorem check_9293 : cell_9293.check = true := by
  decide +kernel

theorem check_9294 : cell_9294.check = true := by
  decide +kernel

theorem check_9295 : cell_9295.check = true := by
  decide +kernel

theorem check_9296 : cell_9296.check = true := by
  decide +kernel

theorem check_9297 : cell_9297.check = true := by
  decide +kernel

theorem check_9298 : cell_9298.check = true := by
  decide +kernel

theorem check_9299 : cell_9299.check = true := by
  decide +kernel

def cells : List Cell := [cell_9250, cell_9251, cell_9252, cell_9253, cell_9254, cell_9255, cell_9256, cell_9257, cell_9258, cell_9259, cell_9260, cell_9261, cell_9262, cell_9263, cell_9264, cell_9265, cell_9266, cell_9267, cell_9268, cell_9269, cell_9270, cell_9271, cell_9272, cell_9273, cell_9274, cell_9275, cell_9276, cell_9277, cell_9278, cell_9279, cell_9280, cell_9281, cell_9282, cell_9283, cell_9284, cell_9285, cell_9286, cell_9287, cell_9288, cell_9289, cell_9290, cell_9291, cell_9292, cell_9293, cell_9294, cell_9295, cell_9296, cell_9297, cell_9298, cell_9299]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9250, check_9251, check_9252, check_9253, check_9254, check_9255, check_9256, check_9257, check_9258, check_9259, check_9260, check_9261, check_9262, check_9263, check_9264, check_9265, check_9266, check_9267, check_9268, check_9269, check_9270, check_9271, check_9272, check_9273, check_9274, check_9275, check_9276, check_9277, check_9278, check_9279, check_9280, check_9281, check_9282, check_9283, check_9284, check_9285, check_9286, check_9287, check_9288, check_9289, check_9290, check_9291, check_9292, check_9293, check_9294, check_9295, check_9296, check_9297, check_9298, check_9299, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0185

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0185
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0185
open AnalyticBounds.ExpressionCertificate

theorem linked_9250 : Linked cell_9250 pieces := by
  link_source cell_9250 with piece_934 using piece_934_mem, piece_1352_mem

theorem linked_9251 : Linked cell_9251 pieces := by
  link_source cell_9251 with piece_934 using piece_934_mem, ⟨piece_1351_mem, piece_1352_mem⟩

theorem linked_9252 : Linked cell_9252 pieces := by
  link_source cell_9252 with piece_934 using piece_934_mem, ⟨piece_1350_mem, piece_1351_mem⟩

theorem linked_9253 : Linked cell_9253 pieces := by
  link_source cell_9253 with piece_934 using piece_934_mem, ⟨piece_1349_mem, piece_1350_mem⟩

theorem linked_9254 : Linked cell_9254 pieces := by
  link_source cell_9254 with piece_935 using piece_935_mem, piece_1352_mem

theorem linked_9255 : Linked cell_9255 pieces := by
  link_source cell_9255 with piece_935 using piece_935_mem, ⟨piece_1351_mem, piece_1352_mem⟩

theorem linked_9256 : Linked cell_9256 pieces := by
  link_source cell_9256 with piece_935 using piece_935_mem, ⟨piece_1350_mem, piece_1351_mem⟩

theorem linked_9257 : Linked cell_9257 pieces := by
  link_source cell_9257 with piece_935 using piece_935_mem, ⟨piece_1349_mem, piece_1350_mem⟩

theorem linked_9258 : Linked cell_9258 pieces := by
  link_source cell_9258 with piece_935 using piece_935_mem, piece_1349_mem

theorem linked_9259 : Linked cell_9259 pieces := by
  link_source cell_9259 with piece_935 using piece_935_mem, ⟨piece_1348_mem, piece_1349_mem⟩

theorem linked_9260 : Linked cell_9260 pieces := by
  link_source cell_9260 with piece_935 using piece_935_mem, piece_1348_mem

theorem linked_9261 : Linked cell_9261 pieces := by
  link_source cell_9261 with piece_935 using piece_935_mem, piece_1348_mem

theorem linked_9262 : Linked cell_9262 pieces := by
  link_source cell_9262 with piece_936 using piece_936_mem, piece_1349_mem

theorem linked_9263 : Linked cell_9263 pieces := by
  link_source cell_9263 with piece_936 using piece_936_mem, ⟨piece_1348_mem, piece_1349_mem⟩

theorem linked_9264 : Linked cell_9264 pieces := by
  link_source cell_9264 with piece_936 using piece_936_mem, piece_1348_mem

theorem linked_9265 : Linked cell_9265 pieces := by
  link_source cell_9265 with piece_936 using piece_936_mem, piece_1348_mem

theorem linked_9266 : Linked cell_9266 pieces := by
  link_source cell_9266 with piece_936 using piece_936_mem, ⟨piece_1347_mem, piece_1348_mem⟩

theorem linked_9267 : Linked cell_9267 pieces := by
  link_source cell_9267 with piece_936 using piece_936_mem, piece_1347_mem

theorem linked_9268 : Linked cell_9268 pieces := by
  link_source cell_9268 with piece_936 using piece_936_mem, ⟨piece_1346_mem, piece_1347_mem⟩

theorem linked_9269 : Linked cell_9269 pieces := by
  link_source cell_9269 with piece_936 using piece_936_mem, piece_1346_mem

theorem linked_9270 : Linked cell_9270 pieces := by
  link_source cell_9270 with piece_937 using piece_937_mem, ⟨piece_1347_mem, piece_1348_mem⟩

theorem linked_9271 : Linked cell_9271 pieces := by
  link_source cell_9271 with piece_937 using piece_937_mem, piece_1347_mem

theorem linked_9272 : Linked cell_9272 pieces := by
  link_source cell_9272 with piece_937 using piece_937_mem, ⟨piece_1346_mem, piece_1347_mem⟩

theorem linked_9273 : Linked cell_9273 pieces := by
  link_source cell_9273 with piece_937 using piece_937_mem, piece_1346_mem

theorem linked_9274 : Linked cell_9274 pieces := by
  link_source cell_9274 with piece_937 using piece_937_mem, ⟨piece_1345_mem, piece_1346_mem⟩

theorem linked_9275 : Linked cell_9275 pieces := by
  link_source cell_9275 with piece_937 using piece_937_mem, piece_1345_mem

theorem linked_9276 : Linked cell_9276 pieces := by
  link_source cell_9276 with piece_937 using piece_937_mem, piece_1345_mem

theorem linked_9277 : Linked cell_9277 pieces := by
  link_source cell_9277 with piece_937 using piece_937_mem, ⟨piece_1344_mem, piece_1345_mem⟩

theorem linked_9278 : Linked cell_9278 pieces := by
  link_source cell_9278 with piece_938 using piece_938_mem, ⟨piece_1345_mem, piece_1346_mem⟩

theorem linked_9279 : Linked cell_9279 pieces := by
  link_source cell_9279 with piece_938 using piece_938_mem, piece_1345_mem

theorem linked_9280 : Linked cell_9280 pieces := by
  link_source cell_9280 with piece_938 using piece_938_mem, piece_1345_mem

theorem linked_9281 : Linked cell_9281 pieces := by
  link_source cell_9281 with piece_938 using piece_938_mem, ⟨piece_1344_mem, piece_1345_mem⟩

theorem linked_9282 : Linked cell_9282 pieces := by
  link_source cell_9282 with piece_938 using piece_938_mem, piece_1344_mem

theorem linked_9283 : Linked cell_9283 pieces := by
  link_source cell_9283 with piece_938 using piece_938_mem, ⟨piece_1343_mem, piece_1344_mem⟩

theorem linked_9284 : Linked cell_9284 pieces := by
  link_source cell_9284 with piece_938 using piece_938_mem, piece_1343_mem

theorem linked_9285 : Linked cell_9285 pieces := by
  link_source cell_9285 with piece_938 using piece_938_mem, ⟨piece_1342_mem, piece_1343_mem⟩

theorem linked_9286 : Linked cell_9286 pieces := by
  link_source cell_9286 with piece_939 using piece_939_mem, piece_1344_mem

theorem linked_9287 : Linked cell_9287 pieces := by
  link_source cell_9287 with piece_939 using piece_939_mem, ⟨piece_1343_mem, piece_1344_mem⟩

theorem linked_9288 : Linked cell_9288 pieces := by
  link_source cell_9288 with piece_939 using piece_939_mem, piece_1343_mem

theorem linked_9289 : Linked cell_9289 pieces := by
  link_source cell_9289 with piece_939 using piece_939_mem, ⟨piece_1342_mem, piece_1343_mem⟩

theorem linked_9290 : Linked cell_9290 pieces := by
  link_source cell_9290 with piece_939 using piece_939_mem, piece_1342_mem

theorem linked_9291 : Linked cell_9291 pieces := by
  link_source cell_9291 with piece_939 using piece_939_mem, piece_1342_mem

theorem linked_9292 : Linked cell_9292 pieces := by
  link_source cell_9292 with piece_939 using piece_939_mem, ⟨piece_1341_mem, piece_1342_mem⟩

theorem linked_9293 : Linked cell_9293 pieces := by
  link_source cell_9293 with piece_939 using piece_939_mem, piece_1341_mem

theorem linked_9294 : Linked cell_9294 pieces := by
  link_source cell_9294 with piece_940 using piece_940_mem, piece_1342_mem

theorem linked_9295 : Linked cell_9295 pieces := by
  link_source cell_9295 with piece_941 using piece_941_mem, ⟨piece_1341_mem, piece_1342_mem⟩

theorem linked_9296 : Linked cell_9296 pieces := by
  link_source cell_9296 with piece_941 using piece_941_mem, piece_1341_mem

theorem linked_9297 : Linked cell_9297 pieces := by
  link_source cell_9297 with piece_941 using piece_941_mem, ⟨piece_1340_mem, piece_1341_mem⟩

theorem linked_9298 : Linked cell_9298 pieces := by
  link_source cell_9298 with piece_941 using piece_941_mem, piece_1340_mem

theorem linked_9299 : Linked cell_9299 pieces := by
  link_source cell_9299 with piece_941 using piece_941_mem, ⟨piece_1339_mem, piece_1340_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0185.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0185.cells,List.forall_mem_cons]
  exact ⟨linked_9250, linked_9251, linked_9252, linked_9253, linked_9254, linked_9255, linked_9256, linked_9257, linked_9258, linked_9259, linked_9260, linked_9261, linked_9262, linked_9263, linked_9264, linked_9265, linked_9266, linked_9267, linked_9268, linked_9269, linked_9270, linked_9271, linked_9272, linked_9273, linked_9274, linked_9275, linked_9276, linked_9277, linked_9278, linked_9279, linked_9280, linked_9281, linked_9282, linked_9283, linked_9284, linked_9285, linked_9286, linked_9287, linked_9288, linked_9289, linked_9290, linked_9291, linked_9292, linked_9293, linked_9294, linked_9295, linked_9296, linked_9297, linked_9298, linked_9299, by simp⟩

theorem covered : covers (38325000000000001 / 100000000000000000 : ℚ) (38643750000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0185.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0185
end

section
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
  link_source cell_9300 with piece_941 using piece_941_mem, piece_1339_mem

theorem linked_9301 : Linked cell_9301 pieces := by
  link_source cell_9301 with piece_942 using piece_942_mem, ⟨piece_1340_mem, piece_1341_mem⟩

theorem linked_9302 : Linked cell_9302 pieces := by
  link_source cell_9302 with piece_942 using piece_942_mem, piece_1340_mem

theorem linked_9303 : Linked cell_9303 pieces := by
  link_source cell_9303 with piece_942 using piece_942_mem, ⟨piece_1339_mem, piece_1340_mem⟩

theorem linked_9304 : Linked cell_9304 pieces := by
  link_source cell_9304 with piece_942 using piece_942_mem, piece_1339_mem

theorem linked_9305 : Linked cell_9305 pieces := by
  link_source cell_9305 with piece_942 using piece_942_mem, ⟨piece_1338_mem, piece_1339_mem⟩

theorem linked_9306 : Linked cell_9306 pieces := by
  link_source cell_9306 with piece_942 using piece_942_mem, ⟨piece_1337_mem, piece_1338_mem⟩

theorem linked_9307 : Linked cell_9307 pieces := by
  link_source cell_9307 with piece_942 using piece_942_mem, piece_1337_mem

theorem linked_9308 : Linked cell_9308 pieces := by
  link_source cell_9308 with piece_942 using piece_942_mem, ⟨piece_1336_mem, piece_1337_mem⟩

theorem linked_9309 : Linked cell_9309 pieces := by
  link_source cell_9309 with piece_943 using piece_943_mem, ⟨piece_1338_mem, piece_1339_mem⟩

theorem linked_9310 : Linked cell_9310 pieces := by
  link_source cell_9310 with piece_943 using piece_943_mem, ⟨piece_1337_mem, piece_1338_mem⟩

theorem linked_9311 : Linked cell_9311 pieces := by
  link_source cell_9311 with piece_943 using piece_943_mem, piece_1337_mem

theorem linked_9312 : Linked cell_9312 pieces := by
  link_source cell_9312 with piece_943 using piece_943_mem, ⟨piece_1336_mem, piece_1337_mem⟩

theorem linked_9313 : Linked cell_9313 pieces := by
  link_source cell_9313 with piece_943 using piece_943_mem, piece_1336_mem

theorem linked_9314 : Linked cell_9314 pieces := by
  link_source cell_9314 with piece_943 using piece_943_mem, ⟨piece_1335_mem, piece_1336_mem⟩

theorem linked_9315 : Linked cell_9315 pieces := by
  link_source cell_9315 with piece_943 using piece_943_mem, piece_1335_mem

theorem linked_9316 : Linked cell_9316 pieces := by
  link_source cell_9316 with piece_943 using piece_943_mem, piece_1335_mem

theorem linked_9317 : Linked cell_9317 pieces := by
  link_source cell_9317 with piece_944 using piece_944_mem, piece_1336_mem

theorem linked_9318 : Linked cell_9318 pieces := by
  link_source cell_9318 with piece_944 using piece_944_mem, piece_1336_mem

theorem linked_9319 : Linked cell_9319 pieces := by
  link_source cell_9319 with piece_944 using piece_944_mem, ⟨piece_1335_mem, piece_1336_mem⟩

theorem linked_9320 : Linked cell_9320 pieces := by
  link_source cell_9320 with piece_944 using piece_944_mem, piece_1335_mem

theorem linked_9321 : Linked cell_9321 pieces := by
  link_source cell_9321 with piece_944 using piece_944_mem, ⟨piece_1334_mem, piece_1335_mem⟩

theorem linked_9322 : Linked cell_9322 pieces := by
  link_source cell_9322 with piece_944 using piece_944_mem, piece_1334_mem

theorem linked_9323 : Linked cell_9323 pieces := by
  link_source cell_9323 with piece_944 using piece_944_mem, ⟨piece_1333_mem, piece_1334_mem⟩

theorem linked_9324 : Linked cell_9324 pieces := by
  link_source cell_9324 with piece_944 using piece_944_mem, piece_1333_mem

theorem linked_9325 : Linked cell_9325 pieces := by
  link_source cell_9325 with piece_945 using piece_945_mem, ⟨piece_1334_mem, piece_1335_mem⟩

theorem linked_9326 : Linked cell_9326 pieces := by
  link_source cell_9326 with piece_945 using piece_945_mem, piece_1334_mem

theorem linked_9327 : Linked cell_9327 pieces := by
  link_source cell_9327 with piece_945 using piece_945_mem, ⟨piece_1333_mem, piece_1334_mem⟩

theorem linked_9328 : Linked cell_9328 pieces := by
  link_source cell_9328 with piece_945 using piece_945_mem, piece_1333_mem

theorem linked_9329 : Linked cell_9329 pieces := by
  link_source cell_9329 with piece_945 using piece_945_mem, piece_1333_mem

theorem linked_9330 : Linked cell_9330 pieces := by
  link_source cell_9330 with piece_945 using piece_945_mem, ⟨piece_1332_mem, piece_1333_mem⟩

theorem linked_9331 : Linked cell_9331 pieces := by
  link_source cell_9331 with piece_945 using piece_945_mem, piece_1332_mem

theorem linked_9332 : Linked cell_9332 pieces := by
  link_source cell_9332 with piece_945 using piece_945_mem, ⟨piece_1331_mem, piece_1332_mem⟩

theorem linked_9333 : Linked cell_9333 pieces := by
  link_source cell_9333 with piece_946 using piece_946_mem, piece_1333_mem

theorem linked_9334 : Linked cell_9334 pieces := by
  link_source cell_9334 with piece_946 using piece_946_mem, ⟨piece_1332_mem, piece_1333_mem⟩

theorem linked_9335 : Linked cell_9335 pieces := by
  link_source cell_9335 with piece_946 using piece_946_mem, piece_1332_mem

theorem linked_9336 : Linked cell_9336 pieces := by
  link_source cell_9336 with piece_946 using piece_946_mem, ⟨piece_1331_mem, piece_1332_mem⟩

theorem linked_9337 : Linked cell_9337 pieces := by
  link_source cell_9337 with piece_946 using piece_946_mem, piece_1331_mem

theorem linked_9338 : Linked cell_9338 pieces := by
  link_source cell_9338 with piece_946 using piece_946_mem, ⟨piece_1330_mem, piece_1331_mem⟩

theorem linked_9339 : Linked cell_9339 pieces := by
  link_source cell_9339 with piece_946 using piece_946_mem, piece_1330_mem

theorem linked_9340 : Linked cell_9340 pieces := by
  link_source cell_9340 with piece_946 using piece_946_mem, piece_1330_mem

theorem linked_9341 : Linked cell_9341 pieces := by
  link_source cell_9341 with piece_947 using piece_947_mem, piece_1331_mem

theorem linked_9342 : Linked cell_9342 pieces := by
  link_source cell_9342 with piece_947 using piece_947_mem, ⟨piece_1330_mem, piece_1331_mem⟩

theorem linked_9343 : Linked cell_9343 pieces := by
  link_source cell_9343 with piece_947 using piece_947_mem, piece_1330_mem

theorem linked_9344 : Linked cell_9344 pieces := by
  link_source cell_9344 with piece_947 using piece_947_mem, piece_1330_mem

theorem linked_9345 : Linked cell_9345 pieces := by
  link_source cell_9345 with piece_947 using piece_947_mem, ⟨piece_1329_mem, piece_1330_mem⟩

theorem linked_9346 : Linked cell_9346 pieces := by
  link_source cell_9346 with piece_947 using piece_947_mem, piece_1329_mem

theorem linked_9347 : Linked cell_9347 pieces := by
  link_source cell_9347 with piece_947 using piece_947_mem, ⟨piece_1328_mem, piece_1329_mem⟩

theorem linked_9348 : Linked cell_9348 pieces := by
  link_source cell_9348 with piece_947 using piece_947_mem, piece_1328_mem

theorem linked_9349 : Linked cell_9349 pieces := by
  link_source cell_9349 with piece_948 using piece_948_mem, ⟨piece_1329_mem, piece_1330_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0186.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0186.cells,List.forall_mem_cons]
  exact ⟨linked_9300, linked_9301, linked_9302, linked_9303, linked_9304, linked_9305, linked_9306, linked_9307, linked_9308, linked_9309, linked_9310, linked_9311, linked_9312, linked_9313, linked_9314, linked_9315, linked_9316, linked_9317, linked_9318, linked_9319, linked_9320, linked_9321, linked_9322, linked_9323, linked_9324, linked_9325, linked_9326, linked_9327, linked_9328, linked_9329, linked_9330, linked_9331, linked_9332, linked_9333, linked_9334, linked_9335, linked_9336, linked_9337, linked_9338, linked_9339, linked_9340, linked_9341, linked_9342, linked_9343, linked_9344, linked_9345, linked_9346, linked_9347, linked_9348, linked_9349, by simp⟩

theorem covered : covers (38643750000000001 / 100000000000000000 : ℚ) (38956250000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0186.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0186
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0187
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(38956250000000001 / 100000000000000000 : ℚ), (38962500000000001 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (35373680381703 / 50000000000000 : ℚ)
  w := (7948336916653 / 5000000000000 : ℚ)
  center := (38959375000000001 / 100000000000000000 : ℚ)
  supportValue := (1410618027301841 / 2500000000000000 : ℚ)
  supportSlope := (-34495570308479273 / 10000000000000000 : ℚ)
  oldCenter := (1410618027301841 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_949
  oldLo := (28100000000000003 / 50000000000000000 : ℚ)
  oldHi := (9 / 16 : ℚ)
  oldPieces := [piece_1324]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9350 : Cell := { cellDefaults with
  r := (14158854858801 / 20000000000000 : ℚ)
  w := (3975913141689 / 2500000000000 : ℚ)
  newCoefficients := coefficients_948
  oldLo := (28200000000000003 / 50000000000000000 : ℚ)
  oldHi := (1129 / 2000 : ℚ)
  oldPieces := [piece_1329]
}

def cell_9351 : Cell := { cellDefaults with
  domain := ⟨(38962500000000001 / 100000000000000000 : ℚ), (38968750000000001 / 100000000000000000 : ℚ)⟩
  r := (14158854858801 / 20000000000000 : ℚ)
  w := (3975913141689 / 2500000000000 : ℚ)
  center := (38965625000000001 / 100000000000000000 : ℚ)
  supportValue := (2820158387773747 / 5000000000000000 : ℚ)
  supportSlope := (-34476790448323413 / 10000000000000000 : ℚ)
  oldCenter := (2820158387773747 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_948
  oldLo := (1127 / 2000 : ℚ)
  oldHi := (1129 / 2000 : ℚ)
  oldPieces := [piece_1328, piece_1329]
}

def cell_9352 : Cell := { cellDefaults with
  domain := ⟨(38968750000000001 / 100000000000000000 : ℚ), (38975000000000001 / 100000000000000000 : ℚ)⟩
  r := (14158854858801 / 20000000000000 : ℚ)
  w := (3975913141689 / 2500000000000 : ℚ)
  center := (38971875000000001 / 100000000000000000 : ℚ)
  supportValue := (1127632493053429 / 2000000000000000 : ℚ)
  supportSlope := (-689188336991009 / 200000000000000 : ℚ)
  oldCenter := (1127632493053429 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_948
  oldLo := (1127 / 2000 : ℚ)
  oldHi := (28200000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1328]
}

def cell_9353 : Cell := { cellDefaults with
  domain := ⟨(38975000000000001 / 100000000000000000 : ℚ), (38981250000000001 / 100000000000000000 : ℚ)⟩
  r := (14158854858801 / 20000000000000 : ℚ)
  w := (3975913141689 / 2500000000000 : ℚ)
  center := (38978125000000001 / 100000000000000000 : ℚ)
  supportValue := (704501173847681 / 1250000000000000 : ℚ)
  supportSlope := (-3443910447732179 / 1000000000000000 : ℚ)
  oldCenter := (704501173847681 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_948
  oldLo := (5630726256983241 / 10000000000000000 : ℚ)
  oldHi := (28200000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1327, piece_1328]
}

def cell_9354 : Cell := { cellDefaults with
  domain := ⟨(38981250000000001 / 100000000000000000 : ℚ), (38987500000000001 / 100000000000000000 : ℚ)⟩
  r := (14158854858801 / 20000000000000 : ℚ)
  w := (3975913141689 / 2500000000000 : ℚ)
  center := (38984375000000001 / 100000000000000000 : ℚ)
  supportValue := (5633857434724903 / 10000000000000000 : ℚ)
  supportSlope := (-34423313560267843 / 10000000000000000 : ℚ)
  oldCenter := (5633857434724903 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_948
  oldLo := (5630726256983241 / 10000000000000000 : ℚ)
  oldHi := (1127 / 2000 : ℚ)
  oldPieces := [piece_1327]
}

def cell_9355 : Cell := { cellDefaults with
  domain := ⟨(38987500000000001 / 100000000000000000 : ℚ), (38993750000000001 / 100000000000000000 : ℚ)⟩
  r := (14158854858801 / 20000000000000 : ℚ)
  w := (3975913141689 / 2500000000000 : ℚ)
  center := (38990625000000001 / 100000000000000000 : ℚ)
  supportValue := (703963327034703 / 1250000000000000 : ℚ)
  supportSlope := (-8600715410809201 / 2500000000000000 : ℚ)
  oldCenter := (703963327034703 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_948
  oldLo := (28150000000000003 / 50000000000000000 : ℚ)
  oldHi := (1127 / 2000 : ℚ)
  oldPieces := [piece_1326, piece_1327]
}

def cell_9356 : Cell := { cellDefaults with
  domain := ⟨(38993750000000001 / 100000000000000000 : ℚ), (39000000000000001 / 100000000000000000 : ℚ)⟩
  r := (14158854858801 / 20000000000000 : ℚ)
  w := (3975913141689 / 2500000000000 : ℚ)
  center := (38996875000000001 / 100000000000000000 : ℚ)
  supportValue := (4398091416301 / 7812500000000 : ℚ)
  supportSlope := (-4298230427779437 / 1250000000000000 : ℚ)
  oldCenter := (4398091416301 / 7812500000000 : ℚ)
  newCoefficients := coefficients_948
  oldLo := (9 / 16 : ℚ)
  oldHi := (5630726256983241 / 10000000000000000 : ℚ)
  oldPieces := [piece_1325, piece_1326]
}

def cell_9357 : Cell := { cellDefaults with
  domain := ⟨(39000000000000001 / 100000000000000000 : ℚ), (39006250000000001 / 100000000000000000 : ℚ)⟩
  center := (39003125000000001 / 100000000000000000 : ℚ)
  supportValue := (2818137342923943 / 5000000000000000 : ℚ)
  supportSlope := (-17209288904869169 / 5000000000000000 : ℚ)
  oldCenter := (2818137342923943 / 5000000000000000 : ℚ)
  oldLo := (1127 / 2000 : ℚ)
  oldHi := (28200000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1328]
}

def cell_9358 : Cell := { cellDefaults with
  domain := ⟨(39006250000000001 / 100000000000000000 : ℚ), (39012500000000001 / 100000000000000000 : ℚ)⟩
  center := (39009375000000001 / 100000000000000000 : ℚ)
  supportValue := (1408531009815421 / 2500000000000000 : ℚ)
  supportSlope := (-34402533205479813 / 10000000000000000 : ℚ)
  oldCenter := (1408531009815421 / 2500000000000000 : ℚ)
  oldLo := (5630726256983241 / 10000000000000000 : ℚ)
  oldHi := (28200000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1327, piece_1328]
}

def cell_9359 : Cell := { cellDefaults with
  domain := ⟨(39012500000000001 / 100000000000000000 : ℚ), (39018750000000001 / 100000000000000000 : ℚ)⟩
  center := (39015625000000001 / 100000000000000000 : ℚ)
  supportValue := (1407993622699009 / 2500000000000000 : ℚ)
  supportSlope := (-8595639871753491 / 2500000000000000 : ℚ)
  oldCenter := (1407993622699009 / 2500000000000000 : ℚ)
  oldLo := (5630726256983241 / 10000000000000000 : ℚ)
  oldHi := (1127 / 2000 : ℚ)
  oldPieces := [piece_1327]
}

def cell_9360 : Cell := { cellDefaults with
  domain := ⟨(39018750000000001 / 100000000000000000 : ℚ), (39025000000000001 / 100000000000000000 : ℚ)⟩
  center := (39021875000000001 / 100000000000000000 : ℚ)
  supportValue := (5629826192939413 / 10000000000000000 : ℚ)
  supportSlope := (-6872994357443929 / 2000000000000000 : ℚ)
  oldCenter := (5629826192939413 / 10000000000000000 : ℚ)
  oldLo := (9 / 16 : ℚ)
  oldHi := (1127 / 2000 : ℚ)
  oldPieces := [piece_1325, piece_1326, piece_1327]
}

def cell_9361 : Cell := { cellDefaults with
  domain := ⟨(39025000000000001 / 100000000000000000 : ℚ), (39031250000000001 / 100000000000000000 : ℚ)⟩
  center := (39028125000000001 / 100000000000000000 : ℚ)
  supportValue := (5627678892680781 / 10000000000000000 : ℚ)
  supportSlope := (-3434660258680111 / 1000000000000000 : ℚ)
  oldCenter := (5627678892680781 / 10000000000000000 : ℚ)
  oldLo := (9 / 16 : ℚ)
  oldHi := (28150000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1325]
}

def cell_9362 : Cell := { cellDefaults with
  domain := ⟨(39031250000000001 / 100000000000000000 : ℚ), (39037500000000001 / 100000000000000000 : ℚ)⟩
  center := (39034375000000001 / 100000000000000000 : ℚ)
  supportValue := (5625532865999053 / 10000000000000000 : ℚ)
  supportSlope := (-17163726045978933 / 5000000000000000 : ℚ)
  oldCenter := (5625532865999053 / 10000000000000000 : ℚ)
  oldHi := (28150000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1324, piece_1325]
}

def cell_9363 : Cell := { cellDefaults with
  domain := ⟨(39037500000000001 / 100000000000000000 : ℚ), (39043750000000001 / 100000000000000000 : ℚ)⟩
  center := (39040625000000001 / 100000000000000000 : ℚ)
  supportValue := (281169394264183 / 500000000000000 : ℚ)
  supportSlope := (-1372427713076263 / 400000000000000 : ℚ)
  oldCenter := (281169394264183 / 500000000000000 : ℚ)
  oldPieces := [piece_1324]
}

def cell_9364 : Cell := { cellDefaults with
  domain := ⟨(39043750000000001 / 100000000000000000 : ℚ), (39050000000000001 / 100000000000000000 : ℚ)⟩
  center := (39046875000000001 / 100000000000000000 : ℚ)
  supportValue := (2810622051226049 / 5000000000000000 : ℚ)
  supportSlope := (-17145171232471057 / 5000000000000000 : ℚ)
  oldCenter := (2810622051226049 / 5000000000000000 : ℚ)
  oldPieces := [piece_1324]
}

def cell_9365 : Cell := { cellDefaults with
  domain := ⟨(39050000000000001 / 100000000000000000 : ℚ), (39056250000000001 / 100000000000000000 : ℚ)⟩
  r := (7070051584759 / 10000000000000 : ℚ)
  w := (15889710162817 / 10000000000000 : ℚ)
  center := (39053125000000001 / 100000000000000000 : ℚ)
  supportValue := (1125588928414347 / 2000000000000000 : ℚ)
  supportSlope := (-53634843202921 / 15625000000000 : ℚ)
  oldCenter := (1125588928414347 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_950
  oldLo := (9 / 16 : ℚ)
  oldHi := (28150000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1325]
}

def cell_9366 : Cell := { cellDefaults with
  domain := ⟨(39056250000000001 / 100000000000000000 : ℚ), (39062500000000001 / 100000000000000000 : ℚ)⟩
  r := (7070051584759 / 10000000000000 : ℚ)
  w := (15889710162817 / 10000000000000 : ℚ)
  center := (39059375000000001 / 100000000000000000 : ℚ)
  supportValue := (2812899941606007 / 5000000000000000 : ℚ)
  supportSlope := (-34306583608021413 / 10000000000000000 : ℚ)
  oldCenter := (2812899941606007 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_950
  oldHi := (28150000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1324, piece_1325]
}

def cell_9367 : Cell := { cellDefaults with
  domain := ⟨(39062500000000001 / 100000000000000000 : ℚ), (39068750000000001 / 100000000000000000 : ℚ)⟩
  r := (7070051584759 / 10000000000000 : ℚ)
  w := (15889710162817 / 10000000000000 : ℚ)
  center := (39065625000000001 / 100000000000000000 : ℚ)
  supportValue := (351478512854137 / 625000000000000 : ℚ)
  supportSlope := (-17145230504098663 / 5000000000000000 : ℚ)
  oldCenter := (351478512854137 / 625000000000000 : ℚ)
  newCoefficients := coefficients_950
  oldPieces := [piece_1324]
}

def cell_9368 : Cell := { cellDefaults with
  domain := ⟨(39068750000000001 / 100000000000000000 : ℚ), (39075000000000001 / 100000000000000000 : ℚ)⟩
  r := (7070051584759 / 10000000000000 : ℚ)
  w := (15889710162817 / 10000000000000 : ℚ)
  center := (39071875000000001 / 100000000000000000 : ℚ)
  supportValue := (5621513686213947 / 10000000000000000 : ℚ)
  supportSlope := (-4283768268198429 / 1250000000000000 : ℚ)
  oldCenter := (5621513686213947 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_950
  oldPieces := [piece_1324]
}

def cell_9369 : Cell := { cellDefaults with
  domain := ⟨(39075000000000001 / 100000000000000000 : ℚ), (39081250000000001 / 100000000000000000 : ℚ)⟩
  r := (7070051584759 / 10000000000000 : ℚ)
  w := (15889710162817 / 10000000000000 : ℚ)
  center := (39078125000000001 / 100000000000000000 : ℚ)
  supportValue := (112387446943101 / 200000000000000 : ℚ)
  supportSlope := (-1712683870094267 / 500000000000000 : ℚ)
  oldCenter := (112387446943101 / 200000000000000 : ℚ)
  newCoefficients := coefficients_950
  oldLo := (1123 / 2000 : ℚ)
  oldPieces := [piece_1323, piece_1324]
}

def cell_9370 : Cell := { cellDefaults with
  domain := ⟨(39081250000000001 / 100000000000000000 : ℚ), (39087500000000001 / 100000000000000000 : ℚ)⟩
  r := (7070051584759 / 10000000000000 : ℚ)
  w := (15889710162817 / 10000000000000 : ℚ)
  center := (39084375000000001 / 100000000000000000 : ℚ)
  supportValue := (5617232063965671 / 10000000000000000 : ℚ)
  supportSlope := (-427929672937033 / 125000000000000 : ℚ)
  oldCenter := (5617232063965671 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_950
  oldLo := (1123 / 2000 : ℚ)
  oldHi := (28100000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1323]
}

def cell_9371 : Cell := { cellDefaults with
  domain := ⟨(39087500000000001 / 100000000000000000 : ℚ), (39093750000000001 / 100000000000000000 : ℚ)⟩
  r := (7070051584759 / 10000000000000 : ℚ)
  w := (15889710162817 / 10000000000000 : ℚ)
  center := (39090625000000001 / 100000000000000000 : ℚ)
  supportValue := (2807546524406919 / 5000000000000000 : ℚ)
  supportSlope := (-17108152703055879 / 5000000000000000 : ℚ)
  oldCenter := (2807546524406919 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_950
  oldLo := (11220000000000001 / 20000000000000000 : ℚ)
  oldHi := (28100000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1322, piece_1323]
}

def cell_9372 : Cell := { cellDefaults with
  domain := ⟨(39093750000000001 / 100000000000000000 : ℚ), (39100000000000001 / 100000000000000000 : ℚ)⟩
  r := (7070051584759 / 10000000000000 : ℚ)
  w := (15889710162817 / 10000000000000 : ℚ)
  center := (39096875000000001 / 100000000000000000 : ℚ)
  supportValue := (701619376458321 / 1250000000000000 : ℚ)
  supportSlope := (-1367946072507209 / 400000000000000 : ℚ)
  oldCenter := (701619376458321 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_950
  oldLo := (11220000000000001 / 20000000000000000 : ℚ)
  oldHi := (1123 / 2000 : ℚ)
  oldPieces := [piece_1322]
}

def cell_9373 : Cell := { cellDefaults with
  domain := ⟨(39100000000000001 / 100000000000000000 : ℚ), (39106250000000001 / 100000000000000000 : ℚ)⟩
  r := (70653739313053 / 100000000000000 : ℚ)
  w := (7941380615511 / 5000000000000 : ℚ)
  center := (39103125000000001 / 100000000000000000 : ℚ)
  supportValue := (5619638659931173 / 10000000000000000 : ℚ)
  supportSlope := (-1711642452105977 / 500000000000000 : ℚ)
  oldCenter := (5619638659931173 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_951
  oldLo := (1123 / 2000 : ℚ)
  oldPieces := [piece_1323, piece_1324]
}

def cell_9374 : Cell := { cellDefaults with
  domain := ⟨(39106250000000001 / 100000000000000000 : ℚ), (39112500000000001 / 100000000000000000 : ℚ)⟩
  r := (70653739313053 / 100000000000000 : ℚ)
  w := (7941380615511 / 5000000000000 : ℚ)
  center := (39109375000000001 / 100000000000000000 : ℚ)
  supportValue := (5617499639913213 / 10000000000000000 : ℚ)
  supportSlope := (-1368567234112561 / 400000000000000 : ℚ)
  oldCenter := (5617499639913213 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_951
  oldLo := (1123 / 2000 : ℚ)
  oldHi := (28100000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1323]
}

def cell_9375 : Cell := { cellDefaults with
  domain := ⟨(39112500000000001 / 100000000000000000 : ℚ), (39118750000000001 / 100000000000000000 : ℚ)⟩
  r := (70653739313053 / 100000000000000 : ℚ)
  w := (7941380615511 / 5000000000000 : ℚ)
  center := (39115625000000001 / 100000000000000000 : ℚ)
  supportValue := (1123072377142847 / 2000000000000000 : ℚ)
  supportSlope := (-6839107870050043 / 2000000000000000 : ℚ)
  oldCenter := (1123072377142847 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_951
  oldLo := (11220000000000001 / 20000000000000000 : ℚ)
  oldHi := (28100000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1322, piece_1323]
}

def cell_9376 : Cell := { cellDefaults with
  domain := ⟨(39118750000000001 / 100000000000000000 : ℚ), (39125000000000001 / 100000000000000000 : ℚ)⟩
  r := (70653739313053 / 100000000000000 : ℚ)
  w := (7941380615511 / 5000000000000 : ℚ)
  center := (39121875000000001 / 100000000000000000 : ℚ)
  supportValue := (5613225145335247 / 10000000000000000 : ℚ)
  supportSlope := (-1708926491849283 / 500000000000000 : ℚ)
  oldCenter := (5613225145335247 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_951
  oldLo := (11220000000000001 / 20000000000000000 : ℚ)
  oldHi := (1123 / 2000 : ℚ)
  oldPieces := [piece_1322]
}

def cell_9377 : Cell := { cellDefaults with
  domain := ⟨(39125000000000001 / 100000000000000000 : ℚ), (39131250000000001 / 100000000000000000 : ℚ)⟩
  r := (70653739313053 / 100000000000000 : ℚ)
  w := (7941380615511 / 5000000000000 : ℚ)
  center := (39128125000000001 / 100000000000000000 : ℚ)
  supportValue := (2805544809416993 / 5000000000000000 : ℚ)
  supportSlope := (-8539575734420879 / 2500000000000000 : ℚ)
  oldCenter := (2805544809416993 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_951
  oldLo := (11220000000000001 / 20000000000000000 : ℚ)
  oldHi := (1123 / 2000 : ℚ)
  oldPieces := [piece_1322]
}

def cell_9378 : Cell := { cellDefaults with
  domain := ⟨(39131250000000001 / 100000000000000000 : ℚ), (39137500000000001 / 100000000000000000 : ℚ)⟩
  r := (70653739313053 / 100000000000000 : ℚ)
  w := (7941380615511 / 5000000000000 : ℚ)
  center := (39134375000000001 / 100000000000000000 : ℚ)
  supportValue := (2804477603792279 / 5000000000000000 : ℚ)
  supportSlope := (-34142882130900887 / 10000000000000000 : ℚ)
  oldCenter := (2804477603792279 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_951
  oldLo := (1121 / 2000 : ℚ)
  oldHi := (1123 / 2000 : ℚ)
  oldPieces := [piece_1321, piece_1322]
}

def cell_9379 : Cell := { cellDefaults with
  domain := ⟨(39137500000000001 / 100000000000000000 : ℚ), (39143750000000001 / 100000000000000000 : ℚ)⟩
  r := (70653739313053 / 100000000000000 : ℚ)
  w := (7941380615511 / 5000000000000 : ℚ)
  center := (39140625000000001 / 100000000000000000 : ℚ)
  supportValue := (2803410952821649 / 5000000000000000 : ℚ)
  supportSlope := (-3412271787873067 / 1000000000000000 : ℚ)
  oldCenter := (2803410952821649 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_951
  oldLo := (1121 / 2000 : ℚ)
  oldHi := (11220000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1321]
}

def cell_9380 : Cell := { cellDefaults with
  domain := ⟨(39143750000000001 / 100000000000000000 : ℚ), (39150000000000001 / 100000000000000000 : ℚ)⟩
  r := (70653739313053 / 100000000000000 : ℚ)
  w := (7941380615511 / 5000000000000 : ℚ)
  center := (39146875000000001 / 100000000000000000 : ℚ)
  supportValue := (1120937964375109 / 2000000000000000 : ℚ)
  supportSlope := (-17052829824013571 / 5000000000000000 : ℚ)
  oldCenter := (1120937964375109 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_951
  oldLo := (11200000000000001 / 20000000000000000 : ℚ)
  oldHi := (11220000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1320, piece_1321]
}

def cell_9381 : Cell := { cellDefaults with
  domain := ⟨(39150000000000001 / 100000000000000000 : ℚ), (78312011173184361 / 200000000000000000 : ℚ)⟩
  r := (70607030812411 / 100000000000000 : ℚ)
  w := (15875827317187 / 10000000000000 : ℚ)
  center := (156612011173184363 / 400000000000000000 : ℚ)
  supportValue := (1122279614130319 / 2000000000000000 : ℚ)
  supportSlope := (-17069271059321849 / 5000000000000000 : ℚ)
  oldCenter := (1122279614130319 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_952
  oldLo := (11220000000000001 / 20000000000000000 : ℚ)
  oldHi := (1123 / 2000 : ℚ)
  oldPieces := [piece_1322]
}

def cell_9382 : Cell := { cellDefaults with
  domain := ⟨(78312011173184361 / 200000000000000000 : ℚ), (979050279329609 / 2500000000000000 : ℚ)⟩
  r := (70607030812411 / 100000000000000 : ℚ)
  w := (15875827317187 / 10000000000000 : ℚ)
  center := (156636033519553081 / 400000000000000000 : ℚ)
  supportValue := (2804674169938309 / 5000000000000000 : ℚ)
  supportSlope := (-106634735645309 / 31250000000000 : ℚ)
  oldCenter := (2804674169938309 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_952
  oldLo := (1121 / 2000 : ℚ)
  oldHi := (1123 / 2000 : ℚ)
  oldPieces := [piece_1321, piece_1322]
}

def cell_9383 : Cell := { cellDefaults with
  domain := ⟨(979050279329609 / 2500000000000000 : ℚ), (156674022346368723 / 400000000000000000 : ℚ)⟩
  r := (70607030812411 / 100000000000000 : ℚ)
  w := (15875827317187 / 10000000000000 : ℚ)
  center := (313322067039106163 / 800000000000000000 : ℚ)
  supportValue := (5607216220290439 / 10000000000000000 : ℚ)
  supportSlope := (-17051909116167183 / 5000000000000000 : ℚ)
  oldCenter := (5607216220290439 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_953
  oldLo := (1121 / 2000 : ℚ)
  oldHi := (11220000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1321]
}

def cell_9384 : Cell := { cellDefaults with
  domain := ⟨(156674022346368723 / 400000000000000000 : ℚ), (78350000000000003 / 200000000000000000 : ℚ)⟩
  r := (70607030812411 / 100000000000000 : ℚ)
  w := (15875827317187 / 10000000000000 : ℚ)
  center := (313374022346368729 / 800000000000000000 : ℚ)
  supportValue := (175156314279781 / 312500000000000 : ℚ)
  supportSlope := (-34085295886385167 / 10000000000000000 : ℚ)
  oldCenter := (175156314279781 / 312500000000000 : ℚ)
  newCoefficients := coefficients_953
  oldLo := (11200000000000001 / 20000000000000000 : ℚ)
  oldHi := (11220000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1320, piece_1321]
}

def cell_9385 : Cell := { cellDefaults with
  domain := ⟨(78350000000000003 / 200000000000000000 : ℚ), (313450000000000013 / 800000000000000000 : ℚ)⟩
  r := (70607030812411 / 100000000000000 : ℚ)
  w := (15875827317187 / 10000000000000 : ℚ)
  center := (25074000000000001 / 64000000000000000 : ℚ)
  supportValue := (43772113836467 / 78125000000000 : ℚ)
  supportSlope := (-17033585674610323 / 5000000000000000 : ℚ)
  oldCenter := (43772113836467 / 78125000000000 : ℚ)
  newCoefficients := coefficients_953
  oldLo := (11200000000000001 / 20000000000000000 : ℚ)
  oldHi := (1121 / 2000 : ℚ)
  oldPieces := [piece_1320]
}

def cell_9386 : Cell := { cellDefaults with
  domain := ⟨(313450000000000013 / 800000000000000000 : ℚ), (156750000000000007 / 400000000000000000 : ℚ)⟩
  r := (70607030812411 / 100000000000000 : ℚ)
  w := (15875827317187 / 10000000000000 : ℚ)
  center := (626950000000000027 / 1600000000000000000 : ℚ)
  supportValue := (1400175500431827 / 2500000000000000 : ℚ)
  supportSlope := (-34047859629672703 / 10000000000000000 : ℚ)
  oldCenter := (1400175500431827 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_953
  oldLo := (1119 / 2000 : ℚ)
  oldHi := (1121 / 2000 : ℚ)
  oldPieces := [piece_1319, piece_1320]
}

def cell_9387 : Cell := { cellDefaults with
  domain := ⟨(156750000000000007 / 400000000000000000 : ℚ), (62710000000000003 / 160000000000000000 : ℚ)⟩
  r := (70607030812411 / 100000000000000 : ℚ)
  w := (15875827317187 / 10000000000000 : ℚ)
  center := (627050000000000029 / 1600000000000000000 : ℚ)
  supportValue := (349910905479991 / 625000000000000 : ℚ)
  supportSlope := (-850793521461651 / 250000000000000 : ℚ)
  oldCenter := (349910905479991 / 625000000000000 : ℚ)
  newCoefficients := coefficients_953
  oldLo := (1119 / 2000 : ℚ)
  oldHi := (11200000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1319]
}

def cell_9388 : Cell := { cellDefaults with
  domain := ⟨(62710000000000003 / 160000000000000000 : ℚ), (19600000000000001 / 50000000000000000 : ℚ)⟩
  r := (70607030812411 / 100000000000000 : ℚ)
  w := (15875827317187 / 10000000000000 : ℚ)
  center := (627150000000000031 / 1600000000000000000 : ℚ)
  supportValue := (2798224066128311 / 5000000000000000 : ℚ)
  supportSlope := (-3401161749508151 / 1000000000000000 : ℚ)
  oldCenter := (2798224066128311 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_953
  oldLo := (1119 / 2000 : ℚ)
  oldHi := (11200000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1319]
}

def cell_9389 : Cell := { cellDefaults with
  domain := ⟨(19600000000000001 / 50000000000000000 : ℚ), (19603125000000001 / 50000000000000000 : ℚ)⟩
  r := (3528019591633 / 5000000000000 : ℚ)
  w := (15868908732397 / 10000000000000 : ℚ)
  center := (19601562500000001 / 50000000000000000 : ℚ)
  supportValue := (2801548700329497 / 5000000000000000 : ℚ)
  supportSlope := (-1702354332794087 / 500000000000000 : ℚ)
  oldCenter := (2801548700329497 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_954
  oldLo := (11200000000000001 / 20000000000000000 : ℚ)
  oldHi := (1121 / 2000 : ℚ)
  oldPieces := [piece_1320]
}

def cell_9390 : Cell := { cellDefaults with
  domain := ⟨(19603125000000001 / 50000000000000000 : ℚ), (19606250000000001 / 50000000000000000 : ℚ)⟩
  r := (3528019591633 / 5000000000000 : ℚ)
  w := (15868908732397 / 10000000000000 : ℚ)
  center := (19604687500000001 / 50000000000000000 : ℚ)
  supportValue := (2800485042752771 / 5000000000000000 : ℚ)
  supportSlope := (-8506799706413659 / 2500000000000000 : ℚ)
  oldCenter := (2800485042752771 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_954
  oldLo := (1119 / 2000 : ℚ)
  oldHi := (1121 / 2000 : ℚ)
  oldPieces := [piece_1319, piece_1320]
}

def cell_9391 : Cell := { cellDefaults with
  domain := ⟨(19606250000000001 / 50000000000000000 : ℚ), (19609375000000001 / 50000000000000000 : ℚ)⟩
  r := (3528019591633 / 5000000000000 : ℚ)
  w := (15868908732397 / 10000000000000 : ℚ)
  center := (19607812500000001 / 50000000000000000 : ℚ)
  supportValue := (5598843861650569 / 10000000000000000 : ℚ)
  supportSlope := (-340117270230067 / 100000000000000 : ℚ)
  oldCenter := (5598843861650569 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_954
  oldLo := (1119 / 2000 : ℚ)
  oldHi := (11200000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1319]
}

def cell_9392 : Cell := { cellDefaults with
  domain := ⟨(19609375000000001 / 50000000000000000 : ℚ), (19612500000000001 / 50000000000000000 : ℚ)⟩
  r := (3528019591633 / 5000000000000 : ℚ)
  w := (15868908732397 / 10000000000000 : ℚ)
  center := (19610937500000001 / 50000000000000000 : ℚ)
  supportValue := (2798359377993957 / 5000000000000000 : ℚ)
  supportSlope := (-16995819496194997 / 5000000000000000 : ℚ)
  oldCenter := (2798359377993957 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_954
  oldLo := (1119 / 2000 : ℚ)
  oldHi := (11200000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1319]
}

def cell_9393 : Cell := { cellDefaults with
  domain := ⟨(19612500000000001 / 50000000000000000 : ℚ), (19615625000000001 / 50000000000000000 : ℚ)⟩
  r := (3528019591633 / 5000000000000 : ℚ)
  w := (15868908732397 / 10000000000000 : ℚ)
  center := (19614062500000001 / 50000000000000000 : ℚ)
  supportValue := (2797297423466109 / 5000000000000000 : ℚ)
  supportSlope := (-3397493147737407 / 1000000000000000 : ℚ)
  oldCenter := (2797297423466109 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_954
  oldLo := (11180000000000001 / 20000000000000000 : ℚ)
  oldHi := (11200000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1318, piece_1319]
}

def cell_9394 : Cell := { cellDefaults with
  domain := ⟨(19615625000000001 / 50000000000000000 : ℚ), (19618750000000001 / 50000000000000000 : ℚ)⟩
  r := (3528019591633 / 5000000000000 : ℚ)
  w := (15868908732397 / 10000000000000 : ℚ)
  center := (19617187500000001 / 50000000000000000 : ℚ)
  supportValue := (5592471946602927 / 10000000000000000 : ℚ)
  supportSlope := (-4244545192291227 / 1250000000000000 : ℚ)
  oldCenter := (5592471946602927 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_954
  oldLo := (11180000000000001 / 20000000000000000 : ℚ)
  oldHi := (1119 / 2000 : ℚ)
  oldPieces := [piece_1318]
}

def cell_9395 : Cell := { cellDefaults with
  domain := ⟨(19618750000000001 / 50000000000000000 : ℚ), (19621875000000001 / 50000000000000000 : ℚ)⟩
  r := (3528019591633 / 5000000000000 : ℚ)
  w := (15868908732397 / 10000000000000 : ℚ)
  center := (19620312500000001 / 50000000000000000 : ℚ)
  supportValue := (2795175150070483 / 5000000000000000 : ℚ)
  supportSlope := (-33937945203916797 / 10000000000000000 : ℚ)
  oldCenter := (2795175150070483 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_954
  oldLo := (1117 / 2000 : ℚ)
  oldHi := (1119 / 2000 : ℚ)
  oldPieces := [piece_1317, piece_1318]
}

def cell_9396 : Cell := { cellDefaults with
  domain := ⟨(19621875000000001 / 50000000000000000 : ℚ), (19625000000000001 / 50000000000000000 : ℚ)⟩
  r := (3528019591633 / 5000000000000 : ℚ)
  w := (15868908732397 / 10000000000000 : ℚ)
  center := (19623437500000001 / 50000000000000000 : ℚ)
  supportValue := (5588229652139753 / 10000000000000000 : ℚ)
  supportSlope := (-16960567069048693 / 5000000000000000 : ℚ)
  oldCenter := (5588229652139753 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_954
  oldLo := (1117 / 2000 : ℚ)
  oldHi := (11180000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1317]
}

def cell_9397 : Cell := { cellDefaults with
  domain := ⟨(19625000000000001 / 50000000000000000 : ℚ), (19628125000000001 / 50000000000000000 : ℚ)⟩
  r := (70513820863479 / 100000000000000 : ℚ)
  w := (7931002768557 / 5000000000000 : ℚ)
  center := (19626562500000001 / 50000000000000000 : ℚ)
  supportValue := (559486190585567 / 1000000000000000 : ℚ)
  supportSlope := (-16977152962827091 / 5000000000000000 : ℚ)
  oldCenter := (559486190585567 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_955
  oldLo := (11180000000000001 / 20000000000000000 : ℚ)
  oldHi := (11200000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1318, piece_1319]
}

def cell_9398 : Cell := { cellDefaults with
  domain := ⟨(19628125000000001 / 50000000000000000 : ℚ), (19631250000000001 / 50000000000000000 : ℚ)⟩
  r := (70513820863479 / 100000000000000 : ℚ)
  w := (7931002768557 / 5000000000000 : ℚ)
  center := (19629687500000001 / 50000000000000000 : ℚ)
  supportValue := (1398185063823173 / 2500000000000000 : ℚ)
  supportSlope := (-8484095728187313 / 2500000000000000 : ℚ)
  oldCenter := (1398185063823173 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_955
  oldLo := (11180000000000001 / 20000000000000000 : ℚ)
  oldHi := (1119 / 2000 : ℚ)
  oldPieces := [piece_1318]
}

def cell_9399 : Cell := { cellDefaults with
  domain := ⟨(19631250000000001 / 50000000000000000 : ℚ), (19634375000000001 / 50000000000000000 : ℚ)⟩
  r := (70513820863479 / 100000000000000 : ℚ)
  w := (7931002768557 / 5000000000000 : ℚ)
  center := (19632812500000001 / 50000000000000000 : ℚ)
  supportValue := (1118123971278821 / 2000000000000000 : ℚ)
  supportSlope := (-6783476279451861 / 2000000000000000 : ℚ)
  oldCenter := (1118123971278821 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_955
  oldLo := (1117 / 2000 : ℚ)
  oldHi := (1119 / 2000 : ℚ)
  oldPieces := [piece_1317, piece_1318]
}

theorem check_9350 : cell_9350.check = true := by
  decide +kernel

theorem check_9351 : cell_9351.check = true := by
  decide +kernel

theorem check_9352 : cell_9352.check = true := by
  decide +kernel

theorem check_9353 : cell_9353.check = true := by
  decide +kernel

theorem check_9354 : cell_9354.check = true := by
  decide +kernel

theorem check_9355 : cell_9355.check = true := by
  decide +kernel

theorem check_9356 : cell_9356.check = true := by
  decide +kernel

theorem check_9357 : cell_9357.check = true := by
  decide +kernel

theorem check_9358 : cell_9358.check = true := by
  decide +kernel

theorem check_9359 : cell_9359.check = true := by
  decide +kernel

theorem check_9360 : cell_9360.check = true := by
  decide +kernel

theorem check_9361 : cell_9361.check = true := by
  decide +kernel

theorem check_9362 : cell_9362.check = true := by
  decide +kernel

theorem check_9363 : cell_9363.check = true := by
  decide +kernel

theorem check_9364 : cell_9364.check = true := by
  decide +kernel

theorem check_9365 : cell_9365.check = true := by
  decide +kernel

theorem check_9366 : cell_9366.check = true := by
  decide +kernel

theorem check_9367 : cell_9367.check = true := by
  decide +kernel

theorem check_9368 : cell_9368.check = true := by
  decide +kernel

theorem check_9369 : cell_9369.check = true := by
  decide +kernel

theorem check_9370 : cell_9370.check = true := by
  decide +kernel

theorem check_9371 : cell_9371.check = true := by
  decide +kernel

theorem check_9372 : cell_9372.check = true := by
  decide +kernel

theorem check_9373 : cell_9373.check = true := by
  decide +kernel

theorem check_9374 : cell_9374.check = true := by
  decide +kernel

theorem check_9375 : cell_9375.check = true := by
  decide +kernel

theorem check_9376 : cell_9376.check = true := by
  decide +kernel

theorem check_9377 : cell_9377.check = true := by
  decide +kernel

theorem check_9378 : cell_9378.check = true := by
  decide +kernel

theorem check_9379 : cell_9379.check = true := by
  decide +kernel

theorem check_9380 : cell_9380.check = true := by
  decide +kernel

theorem check_9381 : cell_9381.check = true := by
  decide +kernel

theorem check_9382 : cell_9382.check = true := by
  decide +kernel

theorem check_9383 : cell_9383.check = true := by
  decide +kernel

theorem check_9384 : cell_9384.check = true := by
  decide +kernel

theorem check_9385 : cell_9385.check = true := by
  decide +kernel

theorem check_9386 : cell_9386.check = true := by
  decide +kernel

theorem check_9387 : cell_9387.check = true := by
  decide +kernel

theorem check_9388 : cell_9388.check = true := by
  decide +kernel

theorem check_9389 : cell_9389.check = true := by
  decide +kernel

theorem check_9390 : cell_9390.check = true := by
  decide +kernel

theorem check_9391 : cell_9391.check = true := by
  decide +kernel

theorem check_9392 : cell_9392.check = true := by
  decide +kernel

theorem check_9393 : cell_9393.check = true := by
  decide +kernel

theorem check_9394 : cell_9394.check = true := by
  decide +kernel

theorem check_9395 : cell_9395.check = true := by
  decide +kernel

theorem check_9396 : cell_9396.check = true := by
  decide +kernel

theorem check_9397 : cell_9397.check = true := by
  decide +kernel

theorem check_9398 : cell_9398.check = true := by
  decide +kernel

theorem check_9399 : cell_9399.check = true := by
  decide +kernel

def cells : List Cell := [cell_9350, cell_9351, cell_9352, cell_9353, cell_9354, cell_9355, cell_9356, cell_9357, cell_9358, cell_9359, cell_9360, cell_9361, cell_9362, cell_9363, cell_9364, cell_9365, cell_9366, cell_9367, cell_9368, cell_9369, cell_9370, cell_9371, cell_9372, cell_9373, cell_9374, cell_9375, cell_9376, cell_9377, cell_9378, cell_9379, cell_9380, cell_9381, cell_9382, cell_9383, cell_9384, cell_9385, cell_9386, cell_9387, cell_9388, cell_9389, cell_9390, cell_9391, cell_9392, cell_9393, cell_9394, cell_9395, cell_9396, cell_9397, cell_9398, cell_9399]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9350, check_9351, check_9352, check_9353, check_9354, check_9355, check_9356, check_9357, check_9358, check_9359, check_9360, check_9361, check_9362, check_9363, check_9364, check_9365, check_9366, check_9367, check_9368, check_9369, check_9370, check_9371, check_9372, check_9373, check_9374, check_9375, check_9376, check_9377, check_9378, check_9379, check_9380, check_9381, check_9382, check_9383, check_9384, check_9385, check_9386, check_9387, check_9388, check_9389, check_9390, check_9391, check_9392, check_9393, check_9394, check_9395, check_9396, check_9397, check_9398, check_9399, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0187

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0187
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0187
open AnalyticBounds.ExpressionCertificate

theorem linked_9350 : Linked cell_9350 pieces := by
  link_source cell_9350 with piece_948 using piece_948_mem, piece_1329_mem

theorem linked_9351 : Linked cell_9351 pieces := by
  link_source cell_9351 with piece_948 using piece_948_mem, ⟨piece_1328_mem, piece_1329_mem⟩

theorem linked_9352 : Linked cell_9352 pieces := by
  link_source cell_9352 with piece_948 using piece_948_mem, piece_1328_mem

theorem linked_9353 : Linked cell_9353 pieces := by
  link_source cell_9353 with piece_948 using piece_948_mem, ⟨piece_1327_mem, piece_1328_mem⟩

theorem linked_9354 : Linked cell_9354 pieces := by
  link_source cell_9354 with piece_948 using piece_948_mem, piece_1327_mem

theorem linked_9355 : Linked cell_9355 pieces := by
  link_source cell_9355 with piece_948 using piece_948_mem, ⟨piece_1326_mem, piece_1327_mem⟩

theorem linked_9356 : Linked cell_9356 pieces := by
  link_source cell_9356 with piece_948 using piece_948_mem, ⟨piece_1325_mem, piece_1326_mem⟩

theorem linked_9357 : Linked cell_9357 pieces := by
  link_source cell_9357 with piece_949 using piece_949_mem, piece_1328_mem

theorem linked_9358 : Linked cell_9358 pieces := by
  link_source cell_9358 with piece_949 using piece_949_mem, ⟨piece_1327_mem, piece_1328_mem⟩

theorem linked_9359 : Linked cell_9359 pieces := by
  link_source cell_9359 with piece_949 using piece_949_mem, piece_1327_mem

theorem linked_9360 : Linked cell_9360 pieces := by
  link_source cell_9360 with piece_949 using piece_949_mem, ⟨piece_1325_mem, ⟨piece_1326_mem, piece_1327_mem⟩⟩

theorem linked_9361 : Linked cell_9361 pieces := by
  link_source cell_9361 with piece_949 using piece_949_mem, piece_1325_mem

theorem linked_9362 : Linked cell_9362 pieces := by
  link_source cell_9362 with piece_949 using piece_949_mem, ⟨piece_1324_mem, piece_1325_mem⟩

theorem linked_9363 : Linked cell_9363 pieces := by
  link_source cell_9363 with piece_949 using piece_949_mem, piece_1324_mem

theorem linked_9364 : Linked cell_9364 pieces := by
  link_source cell_9364 with piece_949 using piece_949_mem, piece_1324_mem

theorem linked_9365 : Linked cell_9365 pieces := by
  link_source cell_9365 with piece_950 using piece_950_mem, piece_1325_mem

theorem linked_9366 : Linked cell_9366 pieces := by
  link_source cell_9366 with piece_950 using piece_950_mem, ⟨piece_1324_mem, piece_1325_mem⟩

theorem linked_9367 : Linked cell_9367 pieces := by
  link_source cell_9367 with piece_950 using piece_950_mem, piece_1324_mem

theorem linked_9368 : Linked cell_9368 pieces := by
  link_source cell_9368 with piece_950 using piece_950_mem, piece_1324_mem

theorem linked_9369 : Linked cell_9369 pieces := by
  link_source cell_9369 with piece_950 using piece_950_mem, ⟨piece_1323_mem, piece_1324_mem⟩

theorem linked_9370 : Linked cell_9370 pieces := by
  link_source cell_9370 with piece_950 using piece_950_mem, piece_1323_mem

theorem linked_9371 : Linked cell_9371 pieces := by
  link_source cell_9371 with piece_950 using piece_950_mem, ⟨piece_1322_mem, piece_1323_mem⟩

theorem linked_9372 : Linked cell_9372 pieces := by
  link_source cell_9372 with piece_950 using piece_950_mem, piece_1322_mem

theorem linked_9373 : Linked cell_9373 pieces := by
  link_source cell_9373 with piece_951 using piece_951_mem, ⟨piece_1323_mem, piece_1324_mem⟩

theorem linked_9374 : Linked cell_9374 pieces := by
  link_source cell_9374 with piece_951 using piece_951_mem, piece_1323_mem

theorem linked_9375 : Linked cell_9375 pieces := by
  link_source cell_9375 with piece_951 using piece_951_mem, ⟨piece_1322_mem, piece_1323_mem⟩

theorem linked_9376 : Linked cell_9376 pieces := by
  link_source cell_9376 with piece_951 using piece_951_mem, piece_1322_mem

theorem linked_9377 : Linked cell_9377 pieces := by
  link_source cell_9377 with piece_951 using piece_951_mem, piece_1322_mem

theorem linked_9378 : Linked cell_9378 pieces := by
  link_source cell_9378 with piece_951 using piece_951_mem, ⟨piece_1321_mem, piece_1322_mem⟩

theorem linked_9379 : Linked cell_9379 pieces := by
  link_source cell_9379 with piece_951 using piece_951_mem, piece_1321_mem

theorem linked_9380 : Linked cell_9380 pieces := by
  link_source cell_9380 with piece_951 using piece_951_mem, ⟨piece_1320_mem, piece_1321_mem⟩

theorem linked_9381 : Linked cell_9381 pieces := by
  link_source cell_9381 with piece_952 using piece_952_mem, piece_1322_mem

theorem linked_9382 : Linked cell_9382 pieces := by
  link_source cell_9382 with piece_952 using piece_952_mem, ⟨piece_1321_mem, piece_1322_mem⟩

theorem linked_9383 : Linked cell_9383 pieces := by
  link_source cell_9383 with piece_953 using piece_953_mem, piece_1321_mem

theorem linked_9384 : Linked cell_9384 pieces := by
  link_source cell_9384 with piece_953 using piece_953_mem, ⟨piece_1320_mem, piece_1321_mem⟩

theorem linked_9385 : Linked cell_9385 pieces := by
  link_source cell_9385 with piece_953 using piece_953_mem, piece_1320_mem

theorem linked_9386 : Linked cell_9386 pieces := by
  link_source cell_9386 with piece_953 using piece_953_mem, ⟨piece_1319_mem, piece_1320_mem⟩

theorem linked_9387 : Linked cell_9387 pieces := by
  link_source cell_9387 with piece_953 using piece_953_mem, piece_1319_mem

theorem linked_9388 : Linked cell_9388 pieces := by
  link_source cell_9388 with piece_953 using piece_953_mem, piece_1319_mem

theorem linked_9389 : Linked cell_9389 pieces := by
  link_source cell_9389 with piece_954 using piece_954_mem, piece_1320_mem

theorem linked_9390 : Linked cell_9390 pieces := by
  link_source cell_9390 with piece_954 using piece_954_mem, ⟨piece_1319_mem, piece_1320_mem⟩

theorem linked_9391 : Linked cell_9391 pieces := by
  link_source cell_9391 with piece_954 using piece_954_mem, piece_1319_mem

theorem linked_9392 : Linked cell_9392 pieces := by
  link_source cell_9392 with piece_954 using piece_954_mem, piece_1319_mem

theorem linked_9393 : Linked cell_9393 pieces := by
  link_source cell_9393 with piece_954 using piece_954_mem, ⟨piece_1318_mem, piece_1319_mem⟩

theorem linked_9394 : Linked cell_9394 pieces := by
  link_source cell_9394 with piece_954 using piece_954_mem, piece_1318_mem

theorem linked_9395 : Linked cell_9395 pieces := by
  link_source cell_9395 with piece_954 using piece_954_mem, ⟨piece_1317_mem, piece_1318_mem⟩

theorem linked_9396 : Linked cell_9396 pieces := by
  link_source cell_9396 with piece_954 using piece_954_mem, piece_1317_mem

theorem linked_9397 : Linked cell_9397 pieces := by
  link_source cell_9397 with piece_955 using piece_955_mem, ⟨piece_1318_mem, piece_1319_mem⟩

theorem linked_9398 : Linked cell_9398 pieces := by
  link_source cell_9398 with piece_955 using piece_955_mem, piece_1318_mem

theorem linked_9399 : Linked cell_9399 pieces := by
  link_source cell_9399 with piece_955 using piece_955_mem, ⟨piece_1317_mem, piece_1318_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0187.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0187.cells,List.forall_mem_cons]
  exact ⟨linked_9350, linked_9351, linked_9352, linked_9353, linked_9354, linked_9355, linked_9356, linked_9357, linked_9358, linked_9359, linked_9360, linked_9361, linked_9362, linked_9363, linked_9364, linked_9365, linked_9366, linked_9367, linked_9368, linked_9369, linked_9370, linked_9371, linked_9372, linked_9373, linked_9374, linked_9375, linked_9376, linked_9377, linked_9378, linked_9379, linked_9380, linked_9381, linked_9382, linked_9383, linked_9384, linked_9385, linked_9386, linked_9387, linked_9388, linked_9389, linked_9390, linked_9391, linked_9392, linked_9393, linked_9394, linked_9395, linked_9396, linked_9397, linked_9398, linked_9399, by simp⟩

theorem covered : covers (38956250000000001 / 100000000000000000 : ℚ) (19634375000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0187.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0187
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0188
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(19634375000000001 / 50000000000000000 : ℚ), (19637500000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (8808414548533 / 12500000000000 : ℚ)
  w := (7927558353033 / 5000000000000 : ℚ)
  center := (19635937500000001 / 50000000000000000 : ℚ)
  supportValue := (5588500492529903 / 10000000000000000 : ℚ)
  supportSlope := (-5424196155451 / 1600000000000 : ℚ)
  oldCenter := (5588500492529903 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_956
  oldLo := (11100000000000001 / 20000000000000000 : ℚ)
  oldHi := (55449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1307]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9400 : Cell := { cellDefaults with
  r := (70513820863479 / 100000000000000 : ℚ)
  w := (7931002768557 / 5000000000000 : ℚ)
  newCoefficients := coefficients_955
  oldLo := (1117 / 2000 : ℚ)
  oldHi := (11180000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1317]
}

def cell_9401 : Cell := { cellDefaults with
  domain := ⟨(19637500000000001 / 50000000000000000 : ℚ), (19640625000000001 / 50000000000000000 : ℚ)⟩
  r := (70513820863479 / 100000000000000 : ℚ)
  w := (7931002768557 / 5000000000000 : ℚ)
  center := (19639062500000001 / 50000000000000000 : ℚ)
  supportValue := (55863822904443 / 100000000000000 : ℚ)
  supportSlope := (-33881225628427103 / 10000000000000000 : ℚ)
  oldCenter := (55863822904443 / 100000000000000 : ℚ)
  newCoefficients := coefficients_955
  oldLo := (1117 / 2000 : ℚ)
  oldHi := (11180000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1317]
}

def cell_9402 : Cell := { cellDefaults with
  domain := ⟨(19640625000000001 / 50000000000000000 : ℚ), (19643750000000001 / 50000000000000000 : ℚ)⟩
  r := (70513820863479 / 100000000000000 : ℚ)
  w := (7931002768557 / 5000000000000 : ℚ)
  center := (19642187500000001 / 50000000000000000 : ℚ)
  supportValue := (5584265231700629 / 10000000000000000 : ℚ)
  supportSlope := (-846634391391099 / 250000000000000 : ℚ)
  oldCenter := (5584265231700629 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_955
  oldLo := (11160000000000001 / 20000000000000000 : ℚ)
  oldHi := (11180000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1316, piece_1317]
}

def cell_9403 : Cell := { cellDefaults with
  domain := ⟨(19643750000000001 / 50000000000000000 : ℚ), (19646875000000001 / 50000000000000000 : ℚ)⟩
  r := (70513820863479 / 100000000000000 : ℚ)
  w := (7931002768557 / 5000000000000 : ℚ)
  center := (19645312500000001 / 50000000000000000 : ℚ)
  supportValue := (223285968931989 / 400000000000000 : ℚ)
  supportSlope := (-16923067707601547 / 5000000000000000 : ℚ)
  oldCenter := (223285968931989 / 400000000000000 : ℚ)
  newCoefficients := coefficients_955
  oldLo := (11160000000000001 / 20000000000000000 : ℚ)
  oldHi := (1117 / 2000 : ℚ)
  oldPieces := [piece_1316]
}

def cell_9404 : Cell := { cellDefaults with
  domain := ⟨(19646875000000001 / 50000000000000000 : ℚ), (19650000000000001 / 50000000000000000 : ℚ)⟩
  r := (70513820863479 / 100000000000000 : ℚ)
  w := (7931002768557 / 5000000000000 : ℚ)
  center := (19648437500000001 / 50000000000000000 : ℚ)
  supportValue := (1116006892636001 / 2000000000000000 : ℚ)
  supportSlope := (-6765707698683343 / 2000000000000000 : ℚ)
  oldCenter := (1116006892636001 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_955
  oldLo := (174231843575419 / 312500000000000 : ℚ)
  oldHi := (1117 / 2000 : ℚ)
  oldPieces := [piece_1315, piece_1316]
}

def cell_9405 : Cell := { cellDefaults with
  domain := ⟨(19650000000000001 / 50000000000000000 : ℚ), (19653125000000001 / 50000000000000000 : ℚ)⟩
  center := (19651562500000001 / 50000000000000000 : ℚ)
  supportValue := (698331260374039 / 1250000000000000 : ℚ)
  supportSlope := (-3386128905848551 / 1000000000000000 : ℚ)
  oldCenter := (698331260374039 / 1250000000000000 : ℚ)
  oldLo := (1117 / 2000 : ℚ)
  oldHi := (11180000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1317]
}

def cell_9406 : Cell := { cellDefaults with
  domain := ⟨(19653125000000001 / 50000000000000000 : ℚ), (19656250000000001 / 50000000000000000 : ℚ)⟩
  center := (19654687500000001 / 50000000000000000 : ℚ)
  supportValue := (69806678849501 / 125000000000000 : ℚ)
  supportSlope := (-3384485293157269 / 1000000000000000 : ℚ)
  oldCenter := (69806678849501 / 125000000000000 : ℚ)
  oldLo := (11160000000000001 / 20000000000000000 : ℚ)
  oldHi := (11180000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1316, piece_1317]
}

def cell_9407 : Cell := { cellDefaults with
  domain := ⟨(19656250000000001 / 50000000000000000 : ℚ), (19659375000000001 / 50000000000000000 : ℚ)⟩
  center := (19657812500000001 / 50000000000000000 : ℚ)
  supportValue := (2791209771233617 / 5000000000000000 : ℚ)
  supportSlope := (-3382626561659663 / 1000000000000000 : ℚ)
  oldCenter := (2791209771233617 / 5000000000000000 : ℚ)
  oldLo := (11160000000000001 / 20000000000000000 : ℚ)
  oldHi := (1117 / 2000 : ℚ)
  oldPieces := [piece_1316]
}

def cell_9408 : Cell := { cellDefaults with
  domain := ⟨(19659375000000001 / 50000000000000000 : ℚ), (19662500000000001 / 50000000000000000 : ℚ)⟩
  center := (19660937500000001 / 50000000000000000 : ℚ)
  supportValue := (5580306023165739 / 10000000000000000 : ℚ)
  supportSlope := (-1690403701394061 / 500000000000000 : ℚ)
  oldCenter := (5580306023165739 / 10000000000000000 : ℚ)
  oldLo := (174231843575419 / 312500000000000 : ℚ)
  oldHi := (1117 / 2000 : ℚ)
  oldPieces := [piece_1315, piece_1316]
}

def cell_9409 : Cell := { cellDefaults with
  domain := ⟨(19662500000000001 / 50000000000000000 : ℚ), (19665625000000001 / 50000000000000000 : ℚ)⟩
  center := (19664062500000001 / 50000000000000000 : ℚ)
  supportValue := (1115638697604519 / 2000000000000000 : ℚ)
  supportSlope := (-844782301012259 / 250000000000000 : ℚ)
  oldCenter := (1115638697604519 / 2000000000000000 : ℚ)
  oldLo := (174231843575419 / 312500000000000 : ℚ)
  oldHi := (11160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1315]
}

def cell_9410 : Cell := { cellDefaults with
  domain := ⟨(19665625000000001 / 50000000000000000 : ℚ), (19668750000000001 / 50000000000000000 : ℚ)⟩
  center := (19667187500000001 / 50000000000000000 : ℚ)
  supportValue := (5576082154063381 / 10000000000000000 : ℚ)
  supportSlope := (-8442844931666471 / 2500000000000000 : ℚ)
  oldCenter := (5576082154063381 / 10000000000000000 : ℚ)
  oldLo := (223 / 400 : ℚ)
  oldHi := (11160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1314, piece_1315]
}

def cell_9411 : Cell := { cellDefaults with
  domain := ⟨(19668750000000001 / 50000000000000000 : ℚ), (19671875000000001 / 50000000000000000 : ℚ)⟩
  center := (19670312500000001 / 50000000000000000 : ℚ)
  supportValue := (1393492978721499 / 2500000000000000 : ℚ)
  supportSlope := (-33756310625179253 / 10000000000000000 : ℚ)
  oldCenter := (1393492978721499 / 2500000000000000 : ℚ)
  oldLo := (11140000000000001 / 20000000000000000 : ℚ)
  oldHi := (174231843575419 / 312500000000000 : ℚ)
  oldPieces := [piece_1313, piece_1314]
}

def cell_9412 : Cell := { cellDefaults with
  domain := ⟨(19671875000000001 / 50000000000000000 : ℚ), (19675000000000001 / 50000000000000000 : ℚ)⟩
  center := (19673437500000001 / 50000000000000000 : ℚ)
  supportValue := (278593138157303 / 500000000000000 : ℚ)
  supportSlope := (-843411783802317 / 250000000000000 : ℚ)
  oldCenter := (278593138157303 / 500000000000000 : ℚ)
  oldLo := (11140000000000001 / 20000000000000000 : ℚ)
  oldHi := (223 / 400 : ℚ)
  oldPieces := [piece_1313]
}

def cell_9413 : Cell := { cellDefaults with
  domain := ⟨(19675000000000001 / 50000000000000000 : ℚ), (19678125000000001 / 50000000000000000 : ℚ)⟩
  r := (17605220452757 / 25000000000000 : ℚ)
  w := (3962060670737 / 2500000000000 : ℚ)
  center := (19676562500000001 / 50000000000000000 : ℚ)
  supportValue := (5578461392569479 / 10000000000000000 : ℚ)
  supportSlope := (-422142784416657 / 125000000000000 : ℚ)
  oldCenter := (5578461392569479 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_957
  oldLo := (174231843575419 / 312500000000000 : ℚ)
  oldHi := (11160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1315]
}

def cell_9414 : Cell := { cellDefaults with
  domain := ⟨(19678125000000001 / 50000000000000000 : ℚ), (19681250000000001 / 50000000000000000 : ℚ)⟩
  r := (17605220452757 / 25000000000000 : ℚ)
  w := (3962060670737 / 2500000000000 : ℚ)
  center := (19679687500000001 / 50000000000000000 : ℚ)
  supportValue := (348521956208747 / 625000000000000 : ℚ)
  supportSlope := (-675030911079233 / 200000000000000 : ℚ)
  oldCenter := (348521956208747 / 625000000000000 : ℚ)
  newCoefficients := coefficients_957
  oldLo := (223 / 400 : ℚ)
  oldHi := (11160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1314, piece_1315]
}

def cell_9415 : Cell := { cellDefaults with
  domain := ⟨(19681250000000001 / 50000000000000000 : ℚ), (19684375000000001 / 50000000000000000 : ℚ)⟩
  r := (17605220452757 / 25000000000000 : ℚ)
  w := (3962060670737 / 2500000000000 : ℚ)
  center := (19682812500000001 / 50000000000000000 : ℚ)
  supportValue := (2787121168905053 / 5000000000000000 : ℚ)
  supportSlope := (-843397151722769 / 250000000000000 : ℚ)
  oldCenter := (2787121168905053 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_957
  oldLo := (11140000000000001 / 20000000000000000 : ℚ)
  oldHi := (174231843575419 / 312500000000000 : ℚ)
  oldPieces := [piece_1313, piece_1314]
}

def cell_9416 : Cell := { cellDefaults with
  domain := ⟨(19684375000000001 / 50000000000000000 : ℚ), (19687500000000001 / 50000000000000000 : ℚ)⟩
  r := (17605220452757 / 25000000000000 : ℚ)
  w := (3962060670737 / 2500000000000 : ℚ)
  center := (19685937500000001 / 50000000000000000 : ℚ)
  supportValue := (55721344223891 / 100000000000000 : ℚ)
  supportSlope := (-8429176956825657 / 2500000000000000 : ℚ)
  oldCenter := (55721344223891 / 100000000000000 : ℚ)
  newCoefficients := coefficients_957
  oldLo := (11140000000000001 / 20000000000000000 : ℚ)
  oldHi := (223 / 400 : ℚ)
  oldPieces := [piece_1313]
}

def cell_9417 : Cell := { cellDefaults with
  domain := ⟨(19687500000000001 / 50000000000000000 : ℚ), (19690625000000001 / 50000000000000000 : ℚ)⟩
  r := (17605220452757 / 25000000000000 : ℚ)
  w := (3962060670737 / 2500000000000 : ℚ)
  center := (19689062500000001 / 50000000000000000 : ℚ)
  supportValue := (5570027747744499 / 10000000000000000 : ℚ)
  supportSlope := (-3369925212961533 / 1000000000000000 : ℚ)
  oldCenter := (5570027747744499 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_957
  oldLo := (55649999999999999 / 100000000000000000 : ℚ)
  oldHi := (223 / 400 : ℚ)
  oldPieces := [piece_1312, piece_1313]
}

def cell_9418 : Cell := { cellDefaults with
  domain := ⟨(19690625000000001 / 50000000000000000 : ℚ), (19693750000000001 / 50000000000000000 : ℚ)⟩
  r := (17605220452757 / 25000000000000 : ℚ)
  w := (3962060670737 / 2500000000000 : ℚ)
  center := (19692187500000001 / 50000000000000000 : ℚ)
  supportValue := (2783961005452261 / 5000000000000000 : ℚ)
  supportSlope := (-6736383748837227 / 2000000000000000 : ℚ)
  oldCenter := (2783961005452261 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_957
  oldLo := (55649999999999999 / 100000000000000000 : ℚ)
  oldHi := (11140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1312]
}

def cell_9419 : Cell := { cellDefaults with
  domain := ⟨(19693750000000001 / 50000000000000000 : ℚ), (19696875000000001 / 50000000000000000 : ℚ)⟩
  r := (17605220452757 / 25000000000000 : ℚ)
  w := (3962060670737 / 2500000000000 : ℚ)
  center := (19695312500000001 / 50000000000000000 : ℚ)
  supportValue := (1391454377526937 / 2500000000000000 : ℚ)
  supportSlope := (-841566058818799 / 250000000000000 : ℚ)
  oldCenter := (1391454377526937 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_957
  oldLo := (11120000000000001 / 20000000000000000 : ℚ)
  oldHi := (11140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1311, piece_1312]
}

def cell_9420 : Cell := { cellDefaults with
  domain := ⟨(19696875000000001 / 50000000000000000 : ℚ), (19700000000000001 / 50000000000000000 : ℚ)⟩
  r := (17605220452757 / 25000000000000 : ℚ)
  w := (3962060670737 / 2500000000000 : ℚ)
  center := (19698437500000001 / 50000000000000000 : ℚ)
  supportValue := (1112742812059109 / 2000000000000000 : ℚ)
  supportSlope := (-3364717940893769 / 1000000000000000 : ℚ)
  oldCenter := (1112742812059109 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_957
  oldLo := (11120000000000001 / 20000000000000000 : ℚ)
  oldHi := (55649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1311]
}

def cell_9421 : Cell := { cellDefaults with
  domain := ⟨(19700000000000001 / 50000000000000000 : ℚ), (19703125000000001 / 50000000000000000 : ℚ)⟩
  r := (274900449309 / 390625000000 : ℚ)
  w := (15841383420821 / 10000000000000 : ℚ)
  center := (19701562500000001 / 50000000000000000 : ℚ)
  supportValue := (5570295975910621 / 10000000000000000 : ℚ)
  supportSlope := (-8419707631039941 / 2500000000000000 : ℚ)
  oldCenter := (5570295975910621 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_958
  oldLo := (55649999999999999 / 100000000000000000 : ℚ)
  oldHi := (223 / 400 : ℚ)
  oldPieces := [piece_1312, piece_1313]
}

def cell_9422 : Cell := { cellDefaults with
  domain := ⟨(19703125000000001 / 50000000000000000 : ℚ), (19706250000000001 / 50000000000000000 : ℚ)⟩
  r := (274900449309 / 390625000000 : ℚ)
  w := (15841383420821 / 10000000000000 : ℚ)
  center := (19704687500000001 / 50000000000000000 : ℚ)
  supportValue := (2784095757173153 / 5000000000000000 : ℚ)
  supportSlope := (-210388473931733 / 62500000000000 : ℚ)
  oldCenter := (2784095757173153 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_958
  oldLo := (55649999999999999 / 100000000000000000 : ℚ)
  oldHi := (11140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1312]
}

def cell_9423 : Cell := { cellDefaults with
  domain := ⟨(19706250000000001 / 50000000000000000 : ℚ), (19709375000000001 / 50000000000000000 : ℚ)⟩
  r := (274900449309 / 390625000000 : ℚ)
  w := (15841383420821 / 10000000000000 : ℚ)
  center := (19707812500000001 / 50000000000000000 : ℚ)
  supportValue := (5566088247661369 / 10000000000000000 : ℚ)
  supportSlope := (-1682118152478651 / 500000000000000 : ℚ)
  oldCenter := (5566088247661369 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_958
  oldLo := (55649999999999999 / 100000000000000000 : ℚ)
  oldHi := (11140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1312]
}

def cell_9424 : Cell := { cellDefaults with
  domain := ⟨(19709375000000001 / 50000000000000000 : ℚ), (19712500000000001 / 50000000000000000 : ℚ)⟩
  r := (274900449309 / 390625000000 : ℚ)
  w := (15841383420821 / 10000000000000 : ℚ)
  center := (19710937500000001 / 50000000000000000 : ℚ)
  supportValue := (5563986069398521 / 10000000000000000 : ℚ)
  supportSlope := (-8406850610018779 / 2500000000000000 : ℚ)
  oldCenter := (5563986069398521 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_958
  oldLo := (11120000000000001 / 20000000000000000 : ℚ)
  oldHi := (11140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1311, piece_1312]
}

def cell_9425 : Cell := { cellDefaults with
  domain := ⟨(19712500000000001 / 50000000000000000 : ℚ), (19715625000000001 / 50000000000000000 : ℚ)⟩
  r := (274900449309 / 390625000000 : ℚ)
  w := (15841383420821 / 10000000000000 : ℚ)
  center := (19714062500000001 / 50000000000000000 : ℚ)
  supportValue := (5561884969165813 / 10000000000000000 : ℚ)
  supportSlope := (-33607707330816083 / 10000000000000000 : ℚ)
  oldCenter := (5561884969165813 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_958
  oldLo := (11120000000000001 / 20000000000000000 : ℚ)
  oldHi := (55649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1311]
}

def cell_9426 : Cell := { cellDefaults with
  domain := ⟨(19715625000000001 / 50000000000000000 : ℚ), (19718750000000001 / 50000000000000000 : ℚ)⟩
  r := (274900449309 / 390625000000 : ℚ)
  w := (15841383420821 / 10000000000000 : ℚ)
  center := (19717187500000001 / 50000000000000000 : ℚ)
  supportValue := (5559785072709467 / 10000000000000000 : ℚ)
  supportSlope := (-16795455431068973 / 5000000000000000 : ℚ)
  oldCenter := (5559785072709467 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_958
  oldLo := (55549999999999999 / 100000000000000000 : ℚ)
  oldHi := (55649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1310, piece_1311]
}

def cell_9427 : Cell := { cellDefaults with
  domain := ⟨(19718750000000001 / 50000000000000000 : ℚ), (19721875000000001 / 50000000000000000 : ℚ)⟩
  r := (274900449309 / 390625000000 : ℚ)
  w := (15841383420821 / 10000000000000 : ℚ)
  center := (19720312500000001 / 50000000000000000 : ℚ)
  supportValue := (5557686135825719 / 10000000000000000 : ℚ)
  supportSlope := (-16786550641008091 / 5000000000000000 : ℚ)
  oldCenter := (5557686135825719 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_958
  oldLo := (55549999999999999 / 100000000000000000 : ℚ)
  oldHi := (11120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1310]
}

def cell_9428 : Cell := { cellDefaults with
  domain := ⟨(19721875000000001 / 50000000000000000 : ℚ), (19725000000000001 / 50000000000000000 : ℚ)⟩
  r := (274900449309 / 390625000000 : ℚ)
  w := (15841383420821 / 10000000000000 : ℚ)
  center := (19723437500000001 / 50000000000000000 : ℚ)
  supportValue := (5555588433468117 / 10000000000000000 : ℚ)
  supportSlope := (-6710888627573297 / 2000000000000000 : ℚ)
  oldCenter := (5555588433468117 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_958
  oldHi := (11120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1309, piece_1310]
}

def cell_9429 : Cell := { cellDefaults with
  domain := ⟨(19725000000000001 / 50000000000000000 : ℚ), (19728125000000001 / 50000000000000000 : ℚ)⟩
  r := (35164106874347 / 50000000000000 : ℚ)
  w := (7917270147847 / 5000000000000 : ℚ)
  center := (19726562500000001 / 50000000000000000 : ℚ)
  supportValue := (2781076648879379 / 5000000000000000 : ℚ)
  supportSlope := (-1679399009608673 / 500000000000000 : ℚ)
  oldCenter := (2781076648879379 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_959
  oldLo := (11120000000000001 / 20000000000000000 : ℚ)
  oldHi := (55649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1311]
}

def cell_9430 : Cell := { cellDefaults with
  domain := ⟨(19728125000000001 / 50000000000000000 : ℚ), (19731250000000001 / 50000000000000000 : ℚ)⟩
  r := (35164106874347 / 50000000000000 : ℚ)
  w := (7917270147847 / 5000000000000 : ℚ)
  center := (19729687500000001 / 50000000000000000 : ℚ)
  supportValue := (2780027332445759 / 5000000000000000 : ℚ)
  supportSlope := (-6714117226607641 / 2000000000000000 : ℚ)
  oldCenter := (2780027332445759 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_959
  oldLo := (55549999999999999 / 100000000000000000 : ℚ)
  oldHi := (55649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1310, piece_1311]
}

def cell_9431 : Cell := { cellDefaults with
  domain := ⟨(19731250000000001 / 50000000000000000 : ℚ), (19734375000000001 / 50000000000000000 : ℚ)⟩
  r := (35164106874347 / 50000000000000 : ℚ)
  w := (7917270147847 / 5000000000000 : ℚ)
  center := (19732812500000001 / 50000000000000000 : ℚ)
  supportValue := (694744620695351 / 1250000000000000 : ℚ)
  supportSlope := (-1677672063689073 / 500000000000000 : ℚ)
  oldCenter := (694744620695351 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_959
  oldLo := (55549999999999999 / 100000000000000000 : ℚ)
  oldHi := (11120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1310]
}

def cell_9432 : Cell := { cellDefaults with
  domain := ⟨(19734375000000001 / 50000000000000000 : ℚ), (19737500000000001 / 50000000000000000 : ℚ)⟩
  r := (35164106874347 / 50000000000000 : ℚ)
  w := (7917270147847 / 5000000000000 : ℚ)
  center := (19735937500000001 / 50000000000000000 : ℚ)
  supportValue := (2777930245455117 / 5000000000000000 : ℚ)
  supportSlope := (-3353417644554213 / 1000000000000000 : ℚ)
  oldCenter := (2777930245455117 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_959
  oldHi := (11120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1309, piece_1310]
}

def cell_9433 : Cell := { cellDefaults with
  domain := ⟨(19737500000000001 / 50000000000000000 : ℚ), (19740625000000001 / 50000000000000000 : ℚ)⟩
  r := (35164106874347 / 50000000000000 : ℚ)
  w := (7917270147847 / 5000000000000 : ℚ)
  center := (19739062500000001 / 50000000000000000 : ℚ)
  supportValue := (347110316631719 / 625000000000000 : ℚ)
  supportSlope := (-8379737979273827 / 2500000000000000 : ℚ)
  oldCenter := (347110316631719 / 625000000000000 : ℚ)
  newCoefficients := coefficients_959
  oldHi := (55549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1309]
}

def cell_9434 : Cell := { cellDefaults with
  domain := ⟨(19740625000000001 / 50000000000000000 : ℚ), (19743750000000001 / 50000000000000000 : ℚ)⟩
  r := (35164106874347 / 50000000000000 : ℚ)
  w := (7917270147847 / 5000000000000 : ℚ)
  center := (19742187500000001 / 50000000000000000 : ℚ)
  supportValue := (277583537328547 / 500000000000000 : ℚ)
  supportSlope := (-3349925828818101 / 1000000000000000 : ℚ)
  oldCenter := (277583537328547 / 500000000000000 : ℚ)
  newCoefficients := coefficients_959
  oldHi := (55549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1309]
}

def cell_9435 : Cell := { cellDefaults with
  domain := ⟨(19743750000000001 / 50000000000000000 : ℚ), (19746875000000001 / 50000000000000000 : ℚ)⟩
  r := (35164106874347 / 50000000000000 : ℚ)
  w := (7917270147847 / 5000000000000 : ℚ)
  center := (19745312500000001 / 50000000000000000 : ℚ)
  supportValue := (277478879740837 / 500000000000000 : ℚ)
  supportSlope := (-16741522124998909 / 5000000000000000 : ℚ)
  oldCenter := (277478879740837 / 500000000000000 : ℚ)
  newCoefficients := coefficients_959
  oldLo := (55449999999999999 / 100000000000000000 : ℚ)
  oldHi := (55549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1308, piece_1309]
}

def cell_9436 : Cell := { cellDefaults with
  domain := ⟨(19746875000000001 / 50000000000000000 : ℚ), (19750000000000001 / 50000000000000000 : ℚ)⟩
  r := (35164106874347 / 50000000000000 : ℚ)
  w := (7917270147847 / 5000000000000 : ℚ)
  center := (19748437500000001 / 50000000000000000 : ℚ)
  supportValue := (5547485427297463 / 10000000000000000 : ℚ)
  supportSlope := (-6692966709536563 / 2000000000000000 : ℚ)
  oldCenter := (5547485427297463 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_959
  oldLo := (55449999999999999 / 100000000000000000 : ℚ)
  oldHi := (11100000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1308]
}

def cell_9437 : Cell := { cellDefaults with
  domain := ⟨(19750000000000001 / 50000000000000000 : ℚ), (19753125000000001 / 50000000000000000 : ℚ)⟩
  r := (70281980961867 / 100000000000000 : ℚ)
  w := (7913855589969 / 5000000000000 : ℚ)
  center := (19751562500000001 / 50000000000000000 : ℚ)
  supportValue := (2777016930561759 / 5000000000000000 : ℚ)
  supportSlope := (-1674955537669831 / 500000000000000 : ℚ)
  oldCenter := (2777016930561759 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_960
  oldHi := (11120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1309, piece_1310]
}

def cell_9438 : Cell := { cellDefaults with
  domain := ⟨(19753125000000001 / 50000000000000000 : ℚ), (19756250000000001 / 50000000000000000 : ℚ)⟩
  r := (70281980961867 / 100000000000000 : ℚ)
  w := (7913855589969 / 5000000000000 : ℚ)
  center := (19754687500000001 / 50000000000000000 : ℚ)
  supportValue := (5551940768984701 / 10000000000000000 : ℚ)
  supportSlope := (-669592733195401 / 200000000000000 : ℚ)
  oldCenter := (5551940768984701 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_960
  oldHi := (55549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1309]
}

def cell_9439 : Cell := { cellDefaults with
  domain := ⟨(19756250000000001 / 50000000000000000 : ℚ), (19759375000000001 / 50000000000000000 : ℚ)⟩
  r := (70281980961867 / 100000000000000 : ℚ)
  w := (7913855589969 / 5000000000000 : ℚ)
  center := (19757812500000001 / 50000000000000000 : ℚ)
  supportValue := (346865555154203 / 625000000000000 : ℚ)
  supportSlope := (-16731408618433363 / 5000000000000000 : ℚ)
  oldCenter := (346865555154203 / 625000000000000 : ℚ)
  newCoefficients := coefficients_960
  oldLo := (55449999999999999 / 100000000000000000 : ℚ)
  oldHi := (55549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1308, piece_1309]
}

def cell_9440 : Cell := { cellDefaults with
  domain := ⟨(19759375000000001 / 50000000000000000 : ℚ), (19762500000000001 / 50000000000000000 : ℚ)⟩
  r := (70281980961867 / 100000000000000 : ℚ)
  w := (7913855589969 / 5000000000000 : ℚ)
  center := (19760937500000001 / 50000000000000000 : ℚ)
  supportValue := (5547757938159447 / 10000000000000000 : ℚ)
  supportSlope := (-16722639433321973 / 5000000000000000 : ℚ)
  oldCenter := (5547757938159447 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_960
  oldLo := (55449999999999999 / 100000000000000000 : ℚ)
  oldHi := (11100000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1308]
}

def cell_9441 : Cell := { cellDefaults with
  domain := ⟨(19762500000000001 / 50000000000000000 : ℚ), (19765625000000001 / 50000000000000000 : ℚ)⟩
  r := (70281980961867 / 100000000000000 : ℚ)
  w := (7913855589969 / 5000000000000 : ℚ)
  center := (19764062500000001 / 50000000000000000 : ℚ)
  supportValue := (5545668221034243 / 10000000000000000 : ℚ)
  supportSlope := (-417831839145677 / 125000000000000 : ℚ)
  oldCenter := (5545668221034243 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_960
  oldLo := (11080000000000001 / 20000000000000000 : ℚ)
  oldHi := (11100000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1307, piece_1308]
}

def cell_9442 : Cell := { cellDefaults with
  domain := ⟨(19765625000000001 / 50000000000000000 : ℚ), (19768750000000001 / 50000000000000000 : ℚ)⟩
  r := (70281980961867 / 100000000000000 : ℚ)
  w := (7913855589969 / 5000000000000 : ℚ)
  center := (19767187500000001 / 50000000000000000 : ℚ)
  supportValue := (2771789760016481 / 5000000000000000 : ℚ)
  supportSlope := (-3341097055894693 / 1000000000000000 : ℚ)
  oldCenter := (2771789760016481 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_960
  oldLo := (11080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1307]
}

def cell_9443 : Cell := { cellDefaults with
  domain := ⟨(19768750000000001 / 50000000000000000 : ℚ), (19771875000000001 / 50000000000000000 : ℚ)⟩
  r := (70281980961867 / 100000000000000 : ℚ)
  w := (7913855589969 / 5000000000000 : ℚ)
  center := (19770312500000001 / 50000000000000000 : ℚ)
  supportValue := (2770745973354139 / 5000000000000000 : ℚ)
  supportSlope := (-33391360916326107 / 10000000000000000 : ℚ)
  oldCenter := (2770745973354139 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_960
  oldLo := (11080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1307]
}

def cell_9444 : Cell := { cellDefaults with
  domain := ⟨(19771875000000001 / 50000000000000000 : ℚ), (19775000000000001 / 50000000000000000 : ℚ)⟩
  r := (70281980961867 / 100000000000000 : ℚ)
  w := (7913855589969 / 5000000000000 : ℚ)
  center := (19773437500000001 / 50000000000000000 : ℚ)
  supportValue := (5539405510048367 / 10000000000000000 : ℚ)
  supportSlope := (-4171956415328637 / 1250000000000000 : ℚ)
  oldCenter := (5539405510048367 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_960
  oldLo := (55349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1306, piece_1307]
}

def cell_9445 : Cell := { cellDefaults with
  domain := ⟨(19775000000000001 / 50000000000000000 : ℚ), (19778125000000001 / 50000000000000000 : ℚ)⟩
  r := (35117907544621 / 50000000000000 : ℚ)
  w := (15820896605287 / 10000000000000 : ℚ)
  center := (19776562500000001 / 50000000000000000 : ℚ)
  supportValue := (138648435158539 / 250000000000000 : ℚ)
  supportSlope := (-16703162743496591 / 5000000000000000 : ℚ)
  oldCenter := (138648435158539 / 250000000000000 : ℚ)
  newCoefficients := coefficients_961
  oldLo := (11080000000000001 / 20000000000000000 : ℚ)
  oldHi := (11100000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1307, piece_1308]
}

def cell_9446 : Cell := { cellDefaults with
  domain := ⟨(19778125000000001 / 50000000000000000 : ℚ), (19781250000000001 / 50000000000000000 : ℚ)⟩
  r := (35117907544621 / 50000000000000 : ℚ)
  w := (15820896605287 / 10000000000000 : ℚ)
  center := (19779687500000001 / 50000000000000000 : ℚ)
  supportValue := (1385962492036621 / 2500000000000000 : ℚ)
  supportSlope := (-16695709965226513 / 5000000000000000 : ℚ)
  oldCenter := (1385962492036621 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_961
  oldLo := (11080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1307]
}

def cell_9447 : Cell := { cellDefaults with
  domain := ⟨(19781250000000001 / 50000000000000000 : ℚ), (19784375000000001 / 50000000000000000 : ℚ)⟩
  r := (35117907544621 / 50000000000000 : ℚ)
  w := (15820896605287 / 10000000000000 : ℚ)
  center := (19782812500000001 / 50000000000000000 : ℚ)
  supportValue := (173180112990411 / 312500000000000 : ℚ)
  supportSlope := (-834296091542619 / 250000000000000 : ℚ)
  oldCenter := (173180112990411 / 312500000000000 : ℚ)
  newCoefficients := coefficients_961
  oldLo := (11080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1307]
}

def cell_9448 : Cell := { cellDefaults with
  domain := ⟨(19784375000000001 / 50000000000000000 : ℚ), (19787500000000001 / 50000000000000000 : ℚ)⟩
  r := (35117907544621 / 50000000000000 : ℚ)
  w := (15820896605287 / 10000000000000 : ℚ)
  center := (19785937500000001 / 50000000000000000 : ℚ)
  supportValue := (5539678438229503 / 10000000000000000 : ℚ)
  supportSlope := (-8338880234841639 / 2500000000000000 : ℚ)
  oldCenter := (5539678438229503 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_961
  oldLo := (55349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1306, piece_1307]
}

def cell_9449 : Cell := { cellDefaults with
  domain := ⟨(19787500000000001 / 50000000000000000 : ℚ), (19790625000000001 / 50000000000000000 : ℚ)⟩
  r := (35117907544621 / 50000000000000 : ℚ)
  w := (15820896605287 / 10000000000000 : ℚ)
  center := (19789062500000001 / 50000000000000000 : ℚ)
  supportValue := (5537594222304711 / 10000000000000000 : ℚ)
  supportSlope := (-333376665129137 / 100000000000000 : ℚ)
  oldCenter := (5537594222304711 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_961
  oldLo := (55349999999999999 / 100000000000000000 : ℚ)
  oldHi := (11080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1306]
}

theorem check_9400 : cell_9400.check = true := by
  decide +kernel

theorem check_9401 : cell_9401.check = true := by
  decide +kernel

theorem check_9402 : cell_9402.check = true := by
  decide +kernel

theorem check_9403 : cell_9403.check = true := by
  decide +kernel

theorem check_9404 : cell_9404.check = true := by
  decide +kernel

theorem check_9405 : cell_9405.check = true := by
  decide +kernel

theorem check_9406 : cell_9406.check = true := by
  decide +kernel

theorem check_9407 : cell_9407.check = true := by
  decide +kernel

theorem check_9408 : cell_9408.check = true := by
  decide +kernel

theorem check_9409 : cell_9409.check = true := by
  decide +kernel

theorem check_9410 : cell_9410.check = true := by
  decide +kernel

theorem check_9411 : cell_9411.check = true := by
  decide +kernel

theorem check_9412 : cell_9412.check = true := by
  decide +kernel

theorem check_9413 : cell_9413.check = true := by
  decide +kernel

theorem check_9414 : cell_9414.check = true := by
  decide +kernel

theorem check_9415 : cell_9415.check = true := by
  decide +kernel

theorem check_9416 : cell_9416.check = true := by
  decide +kernel

theorem check_9417 : cell_9417.check = true := by
  decide +kernel

theorem check_9418 : cell_9418.check = true := by
  decide +kernel

theorem check_9419 : cell_9419.check = true := by
  decide +kernel

theorem check_9420 : cell_9420.check = true := by
  decide +kernel

theorem check_9421 : cell_9421.check = true := by
  decide +kernel

theorem check_9422 : cell_9422.check = true := by
  decide +kernel

theorem check_9423 : cell_9423.check = true := by
  decide +kernel

theorem check_9424 : cell_9424.check = true := by
  decide +kernel

theorem check_9425 : cell_9425.check = true := by
  decide +kernel

theorem check_9426 : cell_9426.check = true := by
  decide +kernel

theorem check_9427 : cell_9427.check = true := by
  decide +kernel

theorem check_9428 : cell_9428.check = true := by
  decide +kernel

theorem check_9429 : cell_9429.check = true := by
  decide +kernel

theorem check_9430 : cell_9430.check = true := by
  decide +kernel

theorem check_9431 : cell_9431.check = true := by
  decide +kernel

theorem check_9432 : cell_9432.check = true := by
  decide +kernel

theorem check_9433 : cell_9433.check = true := by
  decide +kernel

theorem check_9434 : cell_9434.check = true := by
  decide +kernel

theorem check_9435 : cell_9435.check = true := by
  decide +kernel

theorem check_9436 : cell_9436.check = true := by
  decide +kernel

theorem check_9437 : cell_9437.check = true := by
  decide +kernel

theorem check_9438 : cell_9438.check = true := by
  decide +kernel

theorem check_9439 : cell_9439.check = true := by
  decide +kernel

theorem check_9440 : cell_9440.check = true := by
  decide +kernel

theorem check_9441 : cell_9441.check = true := by
  decide +kernel

theorem check_9442 : cell_9442.check = true := by
  decide +kernel

theorem check_9443 : cell_9443.check = true := by
  decide +kernel

theorem check_9444 : cell_9444.check = true := by
  decide +kernel

theorem check_9445 : cell_9445.check = true := by
  decide +kernel

theorem check_9446 : cell_9446.check = true := by
  decide +kernel

theorem check_9447 : cell_9447.check = true := by
  decide +kernel

theorem check_9448 : cell_9448.check = true := by
  decide +kernel

theorem check_9449 : cell_9449.check = true := by
  decide +kernel

def cells : List Cell := [cell_9400, cell_9401, cell_9402, cell_9403, cell_9404, cell_9405, cell_9406, cell_9407, cell_9408, cell_9409, cell_9410, cell_9411, cell_9412, cell_9413, cell_9414, cell_9415, cell_9416, cell_9417, cell_9418, cell_9419, cell_9420, cell_9421, cell_9422, cell_9423, cell_9424, cell_9425, cell_9426, cell_9427, cell_9428, cell_9429, cell_9430, cell_9431, cell_9432, cell_9433, cell_9434, cell_9435, cell_9436, cell_9437, cell_9438, cell_9439, cell_9440, cell_9441, cell_9442, cell_9443, cell_9444, cell_9445, cell_9446, cell_9447, cell_9448, cell_9449]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9400, check_9401, check_9402, check_9403, check_9404, check_9405, check_9406, check_9407, check_9408, check_9409, check_9410, check_9411, check_9412, check_9413, check_9414, check_9415, check_9416, check_9417, check_9418, check_9419, check_9420, check_9421, check_9422, check_9423, check_9424, check_9425, check_9426, check_9427, check_9428, check_9429, check_9430, check_9431, check_9432, check_9433, check_9434, check_9435, check_9436, check_9437, check_9438, check_9439, check_9440, check_9441, check_9442, check_9443, check_9444, check_9445, check_9446, check_9447, check_9448, check_9449, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0188

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0188
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0188
open AnalyticBounds.ExpressionCertificate

theorem linked_9400 : Linked cell_9400 pieces := by
  link_source cell_9400 with piece_955 using piece_955_mem, piece_1317_mem

theorem linked_9401 : Linked cell_9401 pieces := by
  link_source cell_9401 with piece_955 using piece_955_mem, piece_1317_mem

theorem linked_9402 : Linked cell_9402 pieces := by
  link_source cell_9402 with piece_955 using piece_955_mem, ⟨piece_1316_mem, piece_1317_mem⟩

theorem linked_9403 : Linked cell_9403 pieces := by
  link_source cell_9403 with piece_955 using piece_955_mem, piece_1316_mem

theorem linked_9404 : Linked cell_9404 pieces := by
  link_source cell_9404 with piece_955 using piece_955_mem, ⟨piece_1315_mem, piece_1316_mem⟩

theorem linked_9405 : Linked cell_9405 pieces := by
  link_source cell_9405 with piece_956 using piece_956_mem, piece_1317_mem

theorem linked_9406 : Linked cell_9406 pieces := by
  link_source cell_9406 with piece_956 using piece_956_mem, ⟨piece_1316_mem, piece_1317_mem⟩

theorem linked_9407 : Linked cell_9407 pieces := by
  link_source cell_9407 with piece_956 using piece_956_mem, piece_1316_mem

theorem linked_9408 : Linked cell_9408 pieces := by
  link_source cell_9408 with piece_956 using piece_956_mem, ⟨piece_1315_mem, piece_1316_mem⟩

theorem linked_9409 : Linked cell_9409 pieces := by
  link_source cell_9409 with piece_956 using piece_956_mem, piece_1315_mem

theorem linked_9410 : Linked cell_9410 pieces := by
  link_source cell_9410 with piece_956 using piece_956_mem, ⟨piece_1314_mem, piece_1315_mem⟩

theorem linked_9411 : Linked cell_9411 pieces := by
  link_source cell_9411 with piece_956 using piece_956_mem, ⟨piece_1313_mem, piece_1314_mem⟩

theorem linked_9412 : Linked cell_9412 pieces := by
  link_source cell_9412 with piece_956 using piece_956_mem, piece_1313_mem

theorem linked_9413 : Linked cell_9413 pieces := by
  link_source cell_9413 with piece_957 using piece_957_mem, piece_1315_mem

theorem linked_9414 : Linked cell_9414 pieces := by
  link_source cell_9414 with piece_957 using piece_957_mem, ⟨piece_1314_mem, piece_1315_mem⟩

theorem linked_9415 : Linked cell_9415 pieces := by
  link_source cell_9415 with piece_957 using piece_957_mem, ⟨piece_1313_mem, piece_1314_mem⟩

theorem linked_9416 : Linked cell_9416 pieces := by
  link_source cell_9416 with piece_957 using piece_957_mem, piece_1313_mem

theorem linked_9417 : Linked cell_9417 pieces := by
  link_source cell_9417 with piece_957 using piece_957_mem, ⟨piece_1312_mem, piece_1313_mem⟩

theorem linked_9418 : Linked cell_9418 pieces := by
  link_source cell_9418 with piece_957 using piece_957_mem, piece_1312_mem

theorem linked_9419 : Linked cell_9419 pieces := by
  link_source cell_9419 with piece_957 using piece_957_mem, ⟨piece_1311_mem, piece_1312_mem⟩

theorem linked_9420 : Linked cell_9420 pieces := by
  link_source cell_9420 with piece_957 using piece_957_mem, piece_1311_mem

theorem linked_9421 : Linked cell_9421 pieces := by
  link_source cell_9421 with piece_958 using piece_958_mem, ⟨piece_1312_mem, piece_1313_mem⟩

theorem linked_9422 : Linked cell_9422 pieces := by
  link_source cell_9422 with piece_958 using piece_958_mem, piece_1312_mem

theorem linked_9423 : Linked cell_9423 pieces := by
  link_source cell_9423 with piece_958 using piece_958_mem, piece_1312_mem

theorem linked_9424 : Linked cell_9424 pieces := by
  link_source cell_9424 with piece_958 using piece_958_mem, ⟨piece_1311_mem, piece_1312_mem⟩

theorem linked_9425 : Linked cell_9425 pieces := by
  link_source cell_9425 with piece_958 using piece_958_mem, piece_1311_mem

theorem linked_9426 : Linked cell_9426 pieces := by
  link_source cell_9426 with piece_958 using piece_958_mem, ⟨piece_1310_mem, piece_1311_mem⟩

theorem linked_9427 : Linked cell_9427 pieces := by
  link_source cell_9427 with piece_958 using piece_958_mem, piece_1310_mem

theorem linked_9428 : Linked cell_9428 pieces := by
  link_source cell_9428 with piece_958 using piece_958_mem, ⟨piece_1309_mem, piece_1310_mem⟩

theorem linked_9429 : Linked cell_9429 pieces := by
  link_source cell_9429 with piece_959 using piece_959_mem, piece_1311_mem

theorem linked_9430 : Linked cell_9430 pieces := by
  link_source cell_9430 with piece_959 using piece_959_mem, ⟨piece_1310_mem, piece_1311_mem⟩

theorem linked_9431 : Linked cell_9431 pieces := by
  link_source cell_9431 with piece_959 using piece_959_mem, piece_1310_mem

theorem linked_9432 : Linked cell_9432 pieces := by
  link_source cell_9432 with piece_959 using piece_959_mem, ⟨piece_1309_mem, piece_1310_mem⟩

theorem linked_9433 : Linked cell_9433 pieces := by
  link_source cell_9433 with piece_959 using piece_959_mem, piece_1309_mem

theorem linked_9434 : Linked cell_9434 pieces := by
  link_source cell_9434 with piece_959 using piece_959_mem, piece_1309_mem

theorem linked_9435 : Linked cell_9435 pieces := by
  link_source cell_9435 with piece_959 using piece_959_mem, ⟨piece_1308_mem, piece_1309_mem⟩

theorem linked_9436 : Linked cell_9436 pieces := by
  link_source cell_9436 with piece_959 using piece_959_mem, piece_1308_mem

theorem linked_9437 : Linked cell_9437 pieces := by
  link_source cell_9437 with piece_960 using piece_960_mem, ⟨piece_1309_mem, piece_1310_mem⟩

theorem linked_9438 : Linked cell_9438 pieces := by
  link_source cell_9438 with piece_960 using piece_960_mem, piece_1309_mem

theorem linked_9439 : Linked cell_9439 pieces := by
  link_source cell_9439 with piece_960 using piece_960_mem, ⟨piece_1308_mem, piece_1309_mem⟩

theorem linked_9440 : Linked cell_9440 pieces := by
  link_source cell_9440 with piece_960 using piece_960_mem, piece_1308_mem

theorem linked_9441 : Linked cell_9441 pieces := by
  link_source cell_9441 with piece_960 using piece_960_mem, ⟨piece_1307_mem, piece_1308_mem⟩

theorem linked_9442 : Linked cell_9442 pieces := by
  link_source cell_9442 with piece_960 using piece_960_mem, piece_1307_mem

theorem linked_9443 : Linked cell_9443 pieces := by
  link_source cell_9443 with piece_960 using piece_960_mem, piece_1307_mem

theorem linked_9444 : Linked cell_9444 pieces := by
  link_source cell_9444 with piece_960 using piece_960_mem, ⟨piece_1306_mem, piece_1307_mem⟩

theorem linked_9445 : Linked cell_9445 pieces := by
  link_source cell_9445 with piece_961 using piece_961_mem, ⟨piece_1307_mem, piece_1308_mem⟩

theorem linked_9446 : Linked cell_9446 pieces := by
  link_source cell_9446 with piece_961 using piece_961_mem, piece_1307_mem

theorem linked_9447 : Linked cell_9447 pieces := by
  link_source cell_9447 with piece_961 using piece_961_mem, piece_1307_mem

theorem linked_9448 : Linked cell_9448 pieces := by
  link_source cell_9448 with piece_961 using piece_961_mem, ⟨piece_1306_mem, piece_1307_mem⟩

theorem linked_9449 : Linked cell_9449 pieces := by
  link_source cell_9449 with piece_961 using piece_961_mem, piece_1306_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0188.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0188.cells,List.forall_mem_cons]
  exact ⟨linked_9400, linked_9401, linked_9402, linked_9403, linked_9404, linked_9405, linked_9406, linked_9407, linked_9408, linked_9409, linked_9410, linked_9411, linked_9412, linked_9413, linked_9414, linked_9415, linked_9416, linked_9417, linked_9418, linked_9419, linked_9420, linked_9421, linked_9422, linked_9423, linked_9424, linked_9425, linked_9426, linked_9427, linked_9428, linked_9429, linked_9430, linked_9431, linked_9432, linked_9433, linked_9434, linked_9435, linked_9436, linked_9437, linked_9438, linked_9439, linked_9440, linked_9441, linked_9442, linked_9443, linked_9444, linked_9445, linked_9446, linked_9447, linked_9448, linked_9449, by simp⟩

theorem covered : covers (19634375000000001 / 50000000000000000 : ℚ) (19790625000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0188.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0188
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0189
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(19790625000000001 / 50000000000000000 : ℚ), (19793750000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (14037943241381 / 20000000000000 : ℚ)
  w := (3953524122847 / 2500000000000 : ℚ)
  center := (19792187500000001 / 50000000000000000 : ℚ)
  supportValue := (86492362942901 / 156250000000000 : ℚ)
  supportSlope := (-33319389154620183 / 10000000000000000 : ℚ)
  oldCenter := (86492362942901 / 156250000000000 : ℚ)
  newCoefficients := coefficients_962
  oldLo := (11060000000000001 / 20000000000000000 : ℚ)
  oldHi := (55349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1305]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9450 : Cell := { cellDefaults with
  r := (35117907544621 / 50000000000000 : ℚ)
  w := (15820896605287 / 10000000000000 : ℚ)
  newCoefficients := coefficients_961
  oldHi := (11080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1305, piece_1306]
}

def cell_9451 : Cell := { cellDefaults with
  domain := ⟨(19793750000000001 / 50000000000000000 : ℚ), (19796875000000001 / 50000000000000000 : ℚ)⟩
  r := (35117907544621 / 50000000000000 : ℚ)
  w := (15820896605287 / 10000000000000 : ℚ)
  center := (19795312500000001 / 50000000000000000 : ℚ)
  supportValue := (2766714610839873 / 5000000000000000 : ℚ)
  supportSlope := (-16651769390492177 / 5000000000000000 : ℚ)
  oldCenter := (2766714610839873 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_961
  oldPieces := [piece_1305]
}

def cell_9452 : Cell := { cellDefaults with
  domain := ⟨(19796875000000001 / 50000000000000000 : ℚ), (19800000000000001 / 50000000000000000 : ℚ)⟩
  r := (35117907544621 / 50000000000000 : ℚ)
  w := (15820896605287 / 10000000000000 : ℚ)
  center := (19798437500000001 / 50000000000000000 : ℚ)
  supportValue := (5531348360255943 / 10000000000000000 : ℚ)
  supportSlope := (-832100297908589 / 250000000000000 : ℚ)
  oldCenter := (5531348360255943 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_961
  oldPieces := [piece_1305]
}

def cell_9453 : Cell := { cellDefaults with
  domain := ⟨(19800000000000001 / 50000000000000000 : ℚ), (19803125000000001 / 50000000000000000 : ℚ)⟩
  center := (19801562500000001 / 50000000000000000 : ℚ)
  supportValue := (5537863814272841 / 10000000000000000 : ℚ)
  supportSlope := (-33318152860850603 / 10000000000000000 : ℚ)
  oldCenter := (5537863814272841 / 10000000000000000 : ℚ)
  oldLo := (55349999999999999 / 100000000000000000 : ℚ)
  oldHi := (11080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1306]
}

def cell_9454 : Cell := { cellDefaults with
  domain := ⟨(19803125000000001 / 50000000000000000 : ℚ), (19806250000000001 / 50000000000000000 : ℚ)⟩
  center := (19804687500000001 / 50000000000000000 : ℚ)
  supportValue := (1383945509718761 / 2500000000000000 : ℚ)
  supportSlope := (-4162407948848923 / 1250000000000000 : ℚ)
  oldCenter := (1383945509718761 / 2500000000000000 : ℚ)
  oldHi := (11080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1305, piece_1306]
}

def cell_9455 : Cell := { cellDefaults with
  domain := ⟨(19806250000000001 / 50000000000000000 : ℚ), (19809375000000001 / 50000000000000000 : ℚ)⟩
  center := (19807812500000001 / 50000000000000000 : ℚ)
  supportValue := (5533701289010259 / 10000000000000000 : ℚ)
  supportSlope := (-3328409197177251 / 1000000000000000 : ℚ)
  oldCenter := (5533701289010259 / 10000000000000000 : ℚ)
  oldPieces := [piece_1305]
}

def cell_9456 : Cell := { cellDefaults with
  domain := ⟨(19809375000000001 / 50000000000000000 : ℚ), (19812500000000001 / 50000000000000000 : ℚ)⟩
  center := (19810937500000001 / 50000000000000000 : ℚ)
  supportValue := (5531621641972089 / 10000000000000000 : ℚ)
  supportSlope := (-166322991929313 / 50000000000000 : ℚ)
  oldCenter := (5531621641972089 / 10000000000000000 : ℚ)
  oldPieces := [piece_1305]
}

def cell_9457 : Cell := { cellDefaults with
  domain := ⟨(19812500000000001 / 50000000000000000 : ℚ), (19815625000000001 / 50000000000000000 : ℚ)⟩
  center := (19814062500000001 / 50000000000000000 : ℚ)
  supportValue := (5529543144286493 / 10000000000000000 : ℚ)
  supportSlope := (-16624346547793323 / 5000000000000000 : ℚ)
  oldCenter := (5529543144286493 / 10000000000000000 : ℚ)
  oldLo := (55249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1304, piece_1305]
}

def cell_9458 : Cell := { cellDefaults with
  domain := ⟨(19815625000000001 / 50000000000000000 : ℚ), (19818750000000001 / 50000000000000000 : ℚ)⟩
  center := (19817187500000001 / 50000000000000000 : ℚ)
  supportValue := (5527465622529831 / 10000000000000000 : ℚ)
  supportSlope := (-1661530073201689 / 500000000000000 : ℚ)
  oldCenter := (5527465622529831 / 10000000000000000 : ℚ)
  oldLo := (55249999999999999 / 100000000000000000 : ℚ)
  oldHi := (11060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1304]
}

def cell_9459 : Cell := { cellDefaults with
  domain := ⟨(19818750000000001 / 50000000000000000 : ℚ), (19821875000000001 / 50000000000000000 : ℚ)⟩
  center := (19820312500000001 / 50000000000000000 : ℚ)
  supportValue := (138134732938467 / 250000000000000 : ℚ)
  supportSlope := (-66425397657639 / 20000000000000 : ℚ)
  oldCenter := (138134732938467 / 250000000000000 : ℚ)
  oldLo := (690013966480447 / 1250000000000000 : ℚ)
  oldHi := (11060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1303, piece_1304]
}

def cell_9460 : Cell := { cellDefaults with
  domain := ⟨(19821875000000001 / 50000000000000000 : ℚ), (19825000000000001 / 50000000000000000 : ℚ)⟩
  center := (19823437500000001 / 50000000000000000 : ℚ)
  supportValue := (2761656987993799 / 5000000000000000 : ℚ)
  supportSlope := (-16598326923844553 / 5000000000000000 : ℚ)
  oldCenter := (2761656987993799 / 5000000000000000 : ℚ)
  oldLo := (690013966480447 / 1250000000000000 : ℚ)
  oldHi := (55249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1303]
}

def cell_9461 : Cell := { cellDefaults with
  domain := ⟨(19825000000000001 / 50000000000000000 : ℚ), (19828125000000001 / 50000000000000000 : ℚ)⟩
  r := (7014368481259 / 10000000000000 : ℚ)
  w := (7903655508593 / 5000000000000 : ℚ)
  center := (19826562500000001 / 50000000000000000 : ℚ)
  supportValue := (5529812967682303 / 10000000000000000 : ℚ)
  supportSlope := (-664572095790561 / 200000000000000 : ℚ)
  oldCenter := (5529812967682303 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_963
  oldLo := (55249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1304, piece_1305]
}

def cell_9462 : Cell := { cellDefaults with
  domain := ⟨(19828125000000001 / 50000000000000000 : ℚ), (19831250000000001 / 50000000000000000 : ℚ)⟩
  r := (7014368481259 / 10000000000000 : ℚ)
  w := (7903655508593 / 5000000000000 : ℚ)
  center := (19829687500000001 / 50000000000000000 : ℚ)
  supportValue := (2763868330091759 / 5000000000000000 : ℚ)
  supportSlope := (-1328447599412641 / 400000000000000 : ℚ)
  oldCenter := (2763868330091759 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_963
  oldLo := (55249999999999999 / 100000000000000000 : ℚ)
  oldHi := (11060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1304]
}

def cell_9463 : Cell := { cellDefaults with
  domain := ⟨(19831250000000001 / 50000000000000000 : ℚ), (19834375000000001 / 50000000000000000 : ℚ)⟩
  r := (7014368481259 / 10000000000000 : ℚ)
  w := (7903655508593 / 5000000000000 : ℚ)
  center := (19832812500000001 / 50000000000000000 : ℚ)
  supportValue := (1105132313474151 / 2000000000000000 : ℚ)
  supportSlope := (-16596333997540569 / 5000000000000000 : ℚ)
  oldCenter := (1105132313474151 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_963
  oldLo := (690013966480447 / 1250000000000000 : ℚ)
  oldHi := (11060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1303, piece_1304]
}

def cell_9464 : Cell := { cellDefaults with
  domain := ⟨(19834375000000001 / 50000000000000000 : ℚ), (19837500000000001 / 50000000000000000 : ℚ)⟩
  r := (7014368481259 / 10000000000000 : ℚ)
  w := (7903655508593 / 5000000000000 : ℚ)
  center := (19835937500000001 / 50000000000000000 : ℚ)
  supportValue := (276179373835049 / 500000000000000 : ℚ)
  supportSlope := (-1658865454551517 / 500000000000000 : ℚ)
  oldCenter := (276179373835049 / 500000000000000 : ℚ)
  newCoefficients := coefficients_963
  oldLo := (690013966480447 / 1250000000000000 : ℚ)
  oldHi := (55249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1303]
}

def cell_9465 : Cell := { cellDefaults with
  domain := ⟨(19837500000000001 / 50000000000000000 : ℚ), (19840625000000001 / 50000000000000000 : ℚ)⟩
  r := (7014368481259 / 10000000000000 : ℚ)
  w := (7903655508593 / 5000000000000 : ℚ)
  center := (19839062500000001 / 50000000000000000 : ℚ)
  supportValue := (5521514501012449 / 10000000000000000 : ℚ)
  supportSlope := (-3315789812788239 / 1000000000000000 : ℚ)
  oldCenter := (5521514501012449 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_963
  oldLo := (690013966480447 / 1250000000000000 : ℚ)
  oldHi := (55249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1303]
}

def cell_9466 : Cell := { cellDefaults with
  domain := ⟨(19840625000000001 / 50000000000000000 : ℚ), (19843750000000001 / 50000000000000000 : ℚ)⟩
  r := (7014368481259 / 10000000000000 : ℚ)
  w := (7903655508593 / 5000000000000 : ℚ)
  center := (19842187500000001 / 50000000000000000 : ℚ)
  supportValue := (5519442654011161 / 10000000000000000 : ℚ)
  supportSlope := (-6628466117319931 / 2000000000000000 : ℚ)
  oldCenter := (5519442654011161 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_963
  oldLo := (55149999999999999 / 100000000000000000 : ℚ)
  oldHi := (55249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1301, piece_1302, piece_1303]
}

def cell_9467 : Cell := { cellDefaults with
  domain := ⟨(19843750000000001 / 50000000000000000 : ℚ), (19846875000000001 / 50000000000000000 : ℚ)⟩
  r := (7014368481259 / 10000000000000 : ℚ)
  w := (7903655508593 / 5000000000000 : ℚ)
  center := (19845312500000001 / 50000000000000000 : ℚ)
  supportValue := (220694871696279 / 400000000000000 : ℚ)
  supportSlope := (-33124079821327257 / 10000000000000000 : ℚ)
  oldCenter := (220694871696279 / 400000000000000 : ℚ)
  newCoefficients := coefficients_963
  oldLo := (55149999999999999 / 100000000000000000 : ℚ)
  oldHi := (11040000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1301]
}

def cell_9468 : Cell := { cellDefaults with
  domain := ⟨(19846875000000001 / 50000000000000000 : ℚ), (19850000000000001 / 50000000000000000 : ℚ)⟩
  r := (7014368481259 / 10000000000000 : ℚ)
  w := (7903655508593 / 5000000000000 : ℚ)
  center := (19848437500000001 / 50000000000000000 : ℚ)
  supportValue := (2757651071236747 / 5000000000000000 : ℚ)
  supportSlope := (-33106471009141103 / 10000000000000000 : ℚ)
  oldCenter := (2757651071236747 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_963
  oldLo := (11020000000000001 / 20000000000000000 : ℚ)
  oldHi := (11040000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1300, piece_1301]
}

def cell_9469 : Cell := { cellDefaults with
  domain := ⟨(19850000000000001 / 50000000000000000 : ℚ), (39707541899441341 / 100000000000000000 : ℚ)⟩
  r := (4381107514299 / 6250000000000 : ℚ)
  w := (987533822371 / 625000000000 : ℚ)
  center := (79407541899441343 / 200000000000000000 : ℚ)
  supportValue := (5521570145520757 / 10000000000000000 : ℚ)
  supportSlope := (-33136518321719337 / 10000000000000000 : ℚ)
  oldCenter := (5521570145520757 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_964
  oldLo := (690013966480447 / 1250000000000000 : ℚ)
  oldHi := (55249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1303]
}

def cell_9470 : Cell := { cellDefaults with
  domain := ⟨(39707541899441341 / 100000000000000000 : ℚ), (992877094972067 / 2500000000000000 : ℚ)⟩
  r := (4381107514299 / 6250000000000 : ℚ)
  w := (987533822371 / 625000000000 : ℚ)
  center := (79422625698324021 / 200000000000000000 : ℚ)
  supportValue := (1103814352673041 / 2000000000000000 : ℚ)
  supportSlope := (-33117490263608773 / 10000000000000000 : ℚ)
  oldCenter := (1103814352673041 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_964
  oldLo := (55149999999999999 / 100000000000000000 : ℚ)
  oldHi := (55249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1301, piece_1302, piece_1303]
}

def cell_9471 : Cell := { cellDefaults with
  domain := ⟨(992877094972067 / 2500000000000000 : ℚ), (19862500000000001 / 50000000000000000 : ℚ)⟩
  r := (4381107514299 / 6250000000000 : ℚ)
  w := (987533822371 / 625000000000 : ℚ)
  center := (39720041899441341 / 100000000000000000 : ℚ)
  supportValue := (1379046476503823 / 2500000000000000 : ℚ)
  supportSlope := (-16545898390194953 / 5000000000000000 : ℚ)
  oldCenter := (1379046476503823 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_965
  oldLo := (11020000000000001 / 20000000000000000 : ℚ)
  oldHi := (11040000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1300, piece_1301]
}

def cell_9472 : Cell := { cellDefaults with
  domain := ⟨(19862500000000001 / 50000000000000000 : ℚ), (19865625000000001 / 50000000000000000 : ℚ)⟩
  r := (4381107514299 / 6250000000000 : ℚ)
  w := (987533822371 / 625000000000 : ℚ)
  center := (19864062500000001 / 50000000000000000 : ℚ)
  supportValue := (220540321722719 / 400000000000000 : ℚ)
  supportSlope := (-33071067655896513 / 10000000000000000 : ℚ)
  oldCenter := (220540321722719 / 400000000000000 : ℚ)
  newCoefficients := coefficients_965
  oldLo := (11020000000000001 / 20000000000000000 : ℚ)
  oldHi := (55149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1300]
}

def cell_9473 : Cell := { cellDefaults with
  domain := ⟨(19865625000000001 / 50000000000000000 : ℚ), (19868750000000001 / 50000000000000000 : ℚ)⟩
  r := (4381107514299 / 6250000000000 : ℚ)
  w := (987533822371 / 625000000000 : ℚ)
  center := (19867187500000001 / 50000000000000000 : ℚ)
  supportValue := (1377860426232121 / 2500000000000000 : ℚ)
  supportSlope := (-3305173804442063 / 1000000000000000 : ℚ)
  oldCenter := (1377860426232121 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_965
  oldLo := (11020000000000001 / 20000000000000000 : ℚ)
  oldHi := (55149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1300]
}

def cell_9474 : Cell := { cellDefaults with
  domain := ⟨(19868750000000001 / 50000000000000000 : ℚ), (19871875000000001 / 50000000000000000 : ℚ)⟩
  r := (4381107514299 / 6250000000000 : ℚ)
  w := (987533822371 / 625000000000 : ℚ)
  center := (19870312500000001 / 50000000000000000 : ℚ)
  supportValue := (5509376479826179 / 10000000000000000 : ℚ)
  supportSlope := (-33036429532735667 / 10000000000000000 : ℚ)
  oldCenter := (5509376479826179 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_965
  oldLo := (55049999999999999 / 100000000000000000 : ℚ)
  oldHi := (55149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1299, piece_1300]
}

def cell_9475 : Cell := { cellDefaults with
  domain := ⟨(19871875000000001 / 50000000000000000 : ℚ), (19875000000000001 / 50000000000000000 : ℚ)⟩
  r := (4381107514299 / 6250000000000 : ℚ)
  w := (987533822371 / 625000000000 : ℚ)
  center := (19873437500000001 / 50000000000000000 : ℚ)
  supportValue := (5507312244528773 / 10000000000000000 : ℚ)
  supportSlope := (-3301809949665113 / 1000000000000000 : ℚ)
  oldCenter := (5507312244528773 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_965
  oldLo := (55049999999999999 / 100000000000000000 : ℚ)
  oldHi := (11020000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1299]
}

def cell_9476 : Cell := { cellDefaults with
  domain := ⟨(19875000000000001 / 50000000000000000 : ℚ), (19878125000000001 / 50000000000000000 : ℚ)⟩
  r := (70051821379847 / 100000000000000 : ℚ)
  w := (7896892466723 / 5000000000000 : ℚ)
  center := (19876562500000001 / 50000000000000000 : ℚ)
  supportValue := (5513778490211219 / 10000000000000000 : ℚ)
  supportSlope := (-826294013952733 / 250000000000000 : ℚ)
  oldCenter := (5513778490211219 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_966
  oldLo := (11020000000000001 / 20000000000000000 : ℚ)
  oldHi := (55149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1300]
}

def cell_9477 : Cell := { cellDefaults with
  domain := ⟨(19878125000000001 / 50000000000000000 : ℚ), (19881250000000001 / 50000000000000000 : ℚ)⟩
  r := (70051821379847 / 100000000000000 : ℚ)
  w := (7896892466723 / 5000000000000 : ℚ)
  center := (19879687500000001 / 50000000000000000 : ℚ)
  supportValue := (5511713357731237 / 10000000000000000 : ℚ)
  supportSlope := (-103226450119287 / 31250000000000 : ℚ)
  oldCenter := (5511713357731237 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_966
  oldLo := (11020000000000001 / 20000000000000000 : ℚ)
  oldHi := (55149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1300]
}

def cell_9478 : Cell := { cellDefaults with
  domain := ⟨(19881250000000001 / 50000000000000000 : ℚ), (19884375000000001 / 50000000000000000 : ℚ)⟩
  r := (70051821379847 / 100000000000000 : ℚ)
  w := (7896892466723 / 5000000000000 : ℚ)
  center := (19882812500000001 / 50000000000000000 : ℚ)
  supportValue := (5509649377424979 / 10000000000000000 : ℚ)
  supportSlope := (-33016529443692377 / 10000000000000000 : ℚ)
  oldCenter := (5509649377424979 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_966
  oldLo := (55049999999999999 / 100000000000000000 : ℚ)
  oldHi := (55149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1299, piece_1300]
}

def cell_9479 : Cell := { cellDefaults with
  domain := ⟨(19884375000000001 / 50000000000000000 : ℚ), (19887500000000001 / 50000000000000000 : ℚ)⟩
  r := (70051821379847 / 100000000000000 : ℚ)
  w := (7896892466723 / 5000000000000 : ℚ)
  center := (19885937500000001 / 50000000000000000 : ℚ)
  supportValue := (137689658591009 / 250000000000000 : ℚ)
  supportSlope := (-1649944590285557 / 500000000000000 : ℚ)
  oldCenter := (137689658591009 / 250000000000000 : ℚ)
  newCoefficients := coefficients_966
  oldLo := (55049999999999999 / 100000000000000000 : ℚ)
  oldHi := (11020000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1299]
}

def cell_9480 : Cell := { cellDefaults with
  domain := ⟨(19887500000000001 / 50000000000000000 : ℚ), (19890625000000001 / 50000000000000000 : ℚ)⟩
  r := (70051821379847 / 100000000000000 : ℚ)
  w := (7896892466723 / 5000000000000 : ℚ)
  center := (19889062500000001 / 50000000000000000 : ℚ)
  supportValue := (5505524514395487 / 10000000000000000 : ℚ)
  supportSlope := (-6596172088869423 / 2000000000000000 : ℚ)
  oldCenter := (5505524514395487 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_966
  oldLo := (13750000000000001 / 25000000000000000 : ℚ)
  oldHi := (11020000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1298, piece_1299]
}

def cell_9481 : Cell := { cellDefaults with
  domain := ⟨(19890625000000001 / 50000000000000000 : ℚ), (19893750000000001 / 50000000000000000 : ℚ)⟩
  r := (70051821379847 / 100000000000000 : ℚ)
  w := (7896892466723 / 5000000000000 : ℚ)
  center := (19892187500000001 / 50000000000000000 : ℚ)
  supportValue := (687932956949249 / 1250000000000000 : ℚ)
  supportSlope := (-32965368662871697 / 10000000000000000 : ℚ)
  oldCenter := (687932956949249 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_966
  oldLo := (13750000000000001 / 25000000000000000 : ℚ)
  oldHi := (55049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1298]
}

def cell_9482 : Cell := { cellDefaults with
  domain := ⟨(19893750000000001 / 50000000000000000 : ℚ), (19896875000000001 / 50000000000000000 : ℚ)⟩
  r := (70051821379847 / 100000000000000 : ℚ)
  w := (7896892466723 / 5000000000000 : ℚ)
  center := (19895312500000001 / 50000000000000000 : ℚ)
  supportValue := (687675490139331 / 1250000000000000 : ℚ)
  supportSlope := (-32946119962744547 / 10000000000000000 : ℚ)
  oldCenter := (687675490139331 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_966
  oldLo := (13750000000000001 / 25000000000000000 : ℚ)
  oldHi := (55049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1298]
}

def cell_9483 : Cell := { cellDefaults with
  domain := ⟨(19896875000000001 / 50000000000000000 : ℚ), (19900000000000001 / 50000000000000000 : ℚ)⟩
  r := (70051821379847 / 100000000000000 : ℚ)
  w := (7896892466723 / 5000000000000 : ℚ)
  center := (19898437500000001 / 50000000000000000 : ℚ)
  supportValue := (1374836322319603 / 2500000000000000 : ℚ)
  supportSlope := (-1646549269835873 / 500000000000000 : ℚ)
  oldCenter := (1374836322319603 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_966
  oldLo := (54949999999999999 / 100000000000000000 : ℚ)
  oldHi := (55049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1297, piece_1298]
}

def cell_9484 : Cell := { cellDefaults with
  domain := ⟨(19900000000000001 / 50000000000000000 : ℚ), (19903125000000001 / 50000000000000000 : ℚ)⟩
  r := (70005989081463 / 100000000000000 : ℚ)
  w := (7893522115799 / 5000000000000 : ℚ)
  center := (19901562500000001 / 50000000000000000 : ℚ)
  supportValue := (1376448704591289 / 2500000000000000 : ℚ)
  supportSlope := (-6592193038450489 / 2000000000000000 : ℚ)
  oldCenter := (1376448704591289 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_967
  oldLo := (13750000000000001 / 25000000000000000 : ℚ)
  oldHi := (11020000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1298, piece_1299]
}

def cell_9485 : Cell := { cellDefaults with
  domain := ⟨(19903125000000001 / 50000000000000000 : ℚ), (19906250000000001 / 50000000000000000 : ℚ)⟩
  r := (70005989081463 / 100000000000000 : ℚ)
  w := (7893522115799 / 5000000000000 : ℚ)
  center := (19904687500000001 / 50000000000000000 : ℚ)
  supportValue := (5503735202029629 / 10000000000000000 : ℚ)
  supportSlope := (-16473080947037033 / 5000000000000000 : ℚ)
  oldCenter := (5503735202029629 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_967
  oldLo := (13750000000000001 / 25000000000000000 : ℚ)
  oldHi := (55049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1298]
}

def cell_9486 : Cell := { cellDefaults with
  domain := ⟨(19906250000000001 / 50000000000000000 : ℚ), (19909375000000001 / 50000000000000000 : ℚ)⟩
  r := (70005989081463 / 100000000000000 : ℚ)
  w := (7893522115799 / 5000000000000 : ℚ)
  center := (19907812500000001 / 50000000000000000 : ℚ)
  supportValue := (550167666699327 / 1000000000000000 : ℚ)
  supportSlope := (-3292694455659273 / 1000000000000000 : ℚ)
  oldCenter := (550167666699327 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_967
  oldLo := (13750000000000001 / 25000000000000000 : ℚ)
  oldHi := (55049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1298]
}

def cell_9487 : Cell := { cellDefaults with
  domain := ⟨(19909375000000001 / 50000000000000000 : ℚ), (19912500000000001 / 50000000000000000 : ℚ)⟩
  r := (70005989081463 / 100000000000000 : ℚ)
  w := (7893522115799 / 5000000000000 : ℚ)
  center := (19910937500000001 / 50000000000000000 : ℚ)
  supportValue := (1099923854853851 / 2000000000000000 : ℚ)
  supportSlope := (-411389692524633 / 125000000000000 : ℚ)
  oldCenter := (1099923854853851 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_967
  oldLo := (54949999999999999 / 100000000000000000 : ℚ)
  oldHi := (55049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1297, piece_1298]
}

def cell_9488 : Cell := { cellDefaults with
  domain := ⟨(19912500000000001 / 50000000000000000 : ℚ), (19915625000000001 / 50000000000000000 : ℚ)⟩
  r := (70005989081463 / 100000000000000 : ℚ)
  w := (7893522115799 / 5000000000000 : ℚ)
  center := (19914062500000001 / 50000000000000000 : ℚ)
  supportValue := (5497562827078217 / 10000000000000000 : ℚ)
  supportSlope := (-4111693227115687 / 1250000000000000 : ℚ)
  oldCenter := (5497562827078217 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_967
  oldLo := (54949999999999999 / 100000000000000000 : ℚ)
  oldHi := (13750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1297]
}

def cell_9489 : Cell := { cellDefaults with
  domain := ⟨(19915625000000001 / 50000000000000000 : ℚ), (19918750000000001 / 50000000000000000 : ℚ)⟩
  r := (70005989081463 / 100000000000000 : ℚ)
  w := (7893522115799 / 5000000000000 : ℚ)
  center := (19917187500000001 / 50000000000000000 : ℚ)
  supportValue := (343469223718319 / 625000000000000 : ℚ)
  supportSlope := (-1643781735845451 / 500000000000000 : ℚ)
  oldCenter := (343469223718319 / 625000000000000 : ℚ)
  newCoefficients := coefficients_967
  oldLo := (13725000000000001 / 25000000000000000 : ℚ)
  oldHi := (13750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1296, piece_1297]
}

def cell_9490 : Cell := { cellDefaults with
  domain := ⟨(19918750000000001 / 50000000000000000 : ℚ), (19921875000000001 / 50000000000000000 : ℚ)⟩
  r := (70005989081463 / 100000000000000 : ℚ)
  w := (7893522115799 / 5000000000000 : ℚ)
  center := (19920312500000001 / 50000000000000000 : ℚ)
  supportValue := (5493453294319909 / 10000000000000000 : ℚ)
  supportSlope := (-6572039403351937 / 2000000000000000 : ℚ)
  oldCenter := (5493453294319909 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_967
  oldLo := (13725000000000001 / 25000000000000000 : ℚ)
  oldHi := (54949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1296]
}

def cell_9491 : Cell := { cellDefaults with
  domain := ⟨(19921875000000001 / 50000000000000000 : ℚ), (19925000000000001 / 50000000000000000 : ℚ)⟩
  r := (70005989081463 / 100000000000000 : ℚ)
  w := (7893522115799 / 5000000000000 : ℚ)
  center := (19923437500000001 / 50000000000000000 : ℚ)
  supportValue := (2745700065301847 / 5000000000000000 : ℚ)
  supportSlope := (-1026282101220799 / 312500000000000 : ℚ)
  oldCenter := (2745700065301847 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_967
  oldLo := (13725000000000001 / 25000000000000000 : ℚ)
  oldHi := (54949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1296]
}

def cell_9492 : Cell := { cellDefaults with
  domain := ⟨(19925000000000001 / 50000000000000000 : ℚ), (19928125000000001 / 50000000000000000 : ℚ)⟩
  r := (69960223920933 / 100000000000000 : ℚ)
  w := (7890158515667 / 5000000000000 : ℚ)
  center := (19926562500000001 / 50000000000000000 : ℚ)
  supportValue := (1374458415922967 / 2500000000000000 : ℚ)
  supportSlope := (-821859381469281 / 250000000000000 : ℚ)
  oldCenter := (1374458415922967 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_968
  oldLo := (54949999999999999 / 100000000000000000 : ℚ)
  oldHi := (13750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1297]
}

def cell_9493 : Cell := { cellDefaults with
  domain := ⟨(19928125000000001 / 50000000000000000 : ℚ), (19931250000000001 / 50000000000000000 : ℚ)⟩
  r := (69960223920933 / 100000000000000 : ℚ)
  w := (7890158515667 / 5000000000000 : ℚ)
  center := (19929687500000001 / 50000000000000000 : ℚ)
  supportValue := (2747889806616901 / 5000000000000000 : ℚ)
  supportSlope := (-6571166366384773 / 2000000000000000 : ℚ)
  oldCenter := (2747889806616901 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_968
  oldLo := (13725000000000001 / 25000000000000000 : ℚ)
  oldHi := (13750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1296, piece_1297]
}

def cell_9494 : Cell := { cellDefaults with
  domain := ⟨(19931250000000001 / 50000000000000000 : ℚ), (19934375000000001 / 50000000000000000 : ℚ)⟩
  r := (69960223920933 / 100000000000000 : ℚ)
  w := (7890158515667 / 5000000000000 : ℚ)
  center := (19932812500000001 / 50000000000000000 : ℚ)
  supportValue := (1373431641175619 / 2500000000000000 : ℚ)
  supportSlope := (-656821854936851 / 200000000000000 : ℚ)
  oldCenter := (1373431641175619 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_968
  oldLo := (13725000000000001 / 25000000000000000 : ℚ)
  oldHi := (54949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1296]
}

def cell_9495 : Cell := { cellDefaults with
  domain := ⟨(19934375000000001 / 50000000000000000 : ℚ), (19937500000000001 / 50000000000000000 : ℚ)⟩
  r := (69960223920933 / 100000000000000 : ℚ)
  w := (7890158515667 / 5000000000000 : ℚ)
  center := (19935937500000001 / 50000000000000000 : ℚ)
  supportValue := (5491674593972309 / 10000000000000000 : ℚ)
  supportSlope := (-16410977977834307 / 5000000000000000 : ℚ)
  oldCenter := (5491674593972309 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_968
  oldLo := (13725000000000001 / 25000000000000000 : ℚ)
  oldHi := (54949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1296]
}

def cell_9496 : Cell := { cellDefaults with
  domain := ⟨(19937500000000001 / 50000000000000000 : ℚ), (19940625000000001 / 50000000000000000 : ℚ)⟩
  r := (69960223920933 / 100000000000000 : ℚ)
  w := (7890158515667 / 5000000000000 : ℚ)
  center := (19939062500000001 / 50000000000000000 : ℚ)
  supportValue := (5489623760814561 / 10000000000000000 : ℚ)
  supportSlope := (-32806271564638223 / 10000000000000000 : ℚ)
  oldCenter := (5489623760814561 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_968
  oldLo := (54849999999999999 / 100000000000000000 : ℚ)
  oldHi := (54949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1295, piece_1296]
}

def cell_9497 : Cell := { cellDefaults with
  domain := ⟨(19940625000000001 / 50000000000000000 : ℚ), (19943750000000001 / 50000000000000000 : ℚ)⟩
  r := (69960223920933 / 100000000000000 : ℚ)
  w := (7890158515667 / 5000000000000 : ℚ)
  center := (19942187500000001 / 50000000000000000 : ℚ)
  supportValue := (171486683335957 / 312500000000000 : ℚ)
  supportSlope := (-1639436798990701 / 500000000000000 : ℚ)
  oldCenter := (171486683335957 / 312500000000000 : ℚ)
  newCoefficients := coefficients_968
  oldLo := (54849999999999999 / 100000000000000000 : ℚ)
  oldHi := (13725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1295]
}

def cell_9498 : Cell := { cellDefaults with
  domain := ⟨(19943750000000001 / 50000000000000000 : ℚ), (19946875000000001 / 50000000000000000 : ℚ)⟩
  r := (69960223920933 / 100000000000000 : ℚ)
  w := (7890158515667 / 5000000000000 : ℚ)
  center := (19945312500000001 / 50000000000000000 : ℚ)
  supportValue := (685690645909099 / 1250000000000000 : ℚ)
  supportSlope := (-32770862486657393 / 10000000000000000 : ℚ)
  oldCenter := (685690645909099 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_968
  oldLo := (13700000000000001 / 25000000000000000 : ℚ)
  oldHi := (13725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1294, piece_1295]
}

def cell_9499 : Cell := { cellDefaults with
  domain := ⟨(19946875000000001 / 50000000000000000 : ℚ), (19950000000000001 / 50000000000000000 : ℚ)⟩
  r := (69960223920933 / 100000000000000 : ℚ)
  w := (7890158515667 / 5000000000000 : ℚ)
  center := (19948437500000001 / 50000000000000000 : ℚ)
  supportValue := (5483477427309901 / 10000000000000000 : ℚ)
  supportSlope := (-327555650185829 / 100000000000000 : ℚ)
  oldCenter := (5483477427309901 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_968
  oldLo := (13700000000000001 / 25000000000000000 : ℚ)
  oldHi := (54849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1294]
}

theorem check_9450 : cell_9450.check = true := by
  decide +kernel

theorem check_9451 : cell_9451.check = true := by
  decide +kernel

theorem check_9452 : cell_9452.check = true := by
  decide +kernel

theorem check_9453 : cell_9453.check = true := by
  decide +kernel

theorem check_9454 : cell_9454.check = true := by
  decide +kernel

theorem check_9455 : cell_9455.check = true := by
  decide +kernel

theorem check_9456 : cell_9456.check = true := by
  decide +kernel

theorem check_9457 : cell_9457.check = true := by
  decide +kernel

theorem check_9458 : cell_9458.check = true := by
  decide +kernel

theorem check_9459 : cell_9459.check = true := by
  decide +kernel

theorem check_9460 : cell_9460.check = true := by
  decide +kernel

theorem check_9461 : cell_9461.check = true := by
  decide +kernel

theorem check_9462 : cell_9462.check = true := by
  decide +kernel

theorem check_9463 : cell_9463.check = true := by
  decide +kernel

theorem check_9464 : cell_9464.check = true := by
  decide +kernel

theorem check_9465 : cell_9465.check = true := by
  decide +kernel

theorem check_9466 : cell_9466.check = true := by
  decide +kernel

theorem check_9467 : cell_9467.check = true := by
  decide +kernel

theorem check_9468 : cell_9468.check = true := by
  decide +kernel

theorem check_9469 : cell_9469.check = true := by
  decide +kernel

theorem check_9470 : cell_9470.check = true := by
  decide +kernel

theorem check_9471 : cell_9471.check = true := by
  decide +kernel

theorem check_9472 : cell_9472.check = true := by
  decide +kernel

theorem check_9473 : cell_9473.check = true := by
  decide +kernel

theorem check_9474 : cell_9474.check = true := by
  decide +kernel

theorem check_9475 : cell_9475.check = true := by
  decide +kernel

theorem check_9476 : cell_9476.check = true := by
  decide +kernel

theorem check_9477 : cell_9477.check = true := by
  decide +kernel

theorem check_9478 : cell_9478.check = true := by
  decide +kernel

theorem check_9479 : cell_9479.check = true := by
  decide +kernel

theorem check_9480 : cell_9480.check = true := by
  decide +kernel

theorem check_9481 : cell_9481.check = true := by
  decide +kernel

theorem check_9482 : cell_9482.check = true := by
  decide +kernel

theorem check_9483 : cell_9483.check = true := by
  decide +kernel

theorem check_9484 : cell_9484.check = true := by
  decide +kernel

theorem check_9485 : cell_9485.check = true := by
  decide +kernel

theorem check_9486 : cell_9486.check = true := by
  decide +kernel

theorem check_9487 : cell_9487.check = true := by
  decide +kernel

theorem check_9488 : cell_9488.check = true := by
  decide +kernel

theorem check_9489 : cell_9489.check = true := by
  decide +kernel

theorem check_9490 : cell_9490.check = true := by
  decide +kernel

theorem check_9491 : cell_9491.check = true := by
  decide +kernel

theorem check_9492 : cell_9492.check = true := by
  decide +kernel

theorem check_9493 : cell_9493.check = true := by
  decide +kernel

theorem check_9494 : cell_9494.check = true := by
  decide +kernel

theorem check_9495 : cell_9495.check = true := by
  decide +kernel

theorem check_9496 : cell_9496.check = true := by
  decide +kernel

theorem check_9497 : cell_9497.check = true := by
  decide +kernel

theorem check_9498 : cell_9498.check = true := by
  decide +kernel

theorem check_9499 : cell_9499.check = true := by
  decide +kernel

def cells : List Cell := [cell_9450, cell_9451, cell_9452, cell_9453, cell_9454, cell_9455, cell_9456, cell_9457, cell_9458, cell_9459, cell_9460, cell_9461, cell_9462, cell_9463, cell_9464, cell_9465, cell_9466, cell_9467, cell_9468, cell_9469, cell_9470, cell_9471, cell_9472, cell_9473, cell_9474, cell_9475, cell_9476, cell_9477, cell_9478, cell_9479, cell_9480, cell_9481, cell_9482, cell_9483, cell_9484, cell_9485, cell_9486, cell_9487, cell_9488, cell_9489, cell_9490, cell_9491, cell_9492, cell_9493, cell_9494, cell_9495, cell_9496, cell_9497, cell_9498, cell_9499]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9450, check_9451, check_9452, check_9453, check_9454, check_9455, check_9456, check_9457, check_9458, check_9459, check_9460, check_9461, check_9462, check_9463, check_9464, check_9465, check_9466, check_9467, check_9468, check_9469, check_9470, check_9471, check_9472, check_9473, check_9474, check_9475, check_9476, check_9477, check_9478, check_9479, check_9480, check_9481, check_9482, check_9483, check_9484, check_9485, check_9486, check_9487, check_9488, check_9489, check_9490, check_9491, check_9492, check_9493, check_9494, check_9495, check_9496, check_9497, check_9498, check_9499, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0189

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0189
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0189
open AnalyticBounds.ExpressionCertificate

theorem linked_9450 : Linked cell_9450 pieces := by
  link_source cell_9450 with piece_961 using piece_961_mem, ⟨piece_1305_mem, piece_1306_mem⟩

theorem linked_9451 : Linked cell_9451 pieces := by
  link_source cell_9451 with piece_961 using piece_961_mem, piece_1305_mem

theorem linked_9452 : Linked cell_9452 pieces := by
  link_source cell_9452 with piece_961 using piece_961_mem, piece_1305_mem

theorem linked_9453 : Linked cell_9453 pieces := by
  link_source cell_9453 with piece_962 using piece_962_mem, piece_1306_mem

theorem linked_9454 : Linked cell_9454 pieces := by
  link_source cell_9454 with piece_962 using piece_962_mem, ⟨piece_1305_mem, piece_1306_mem⟩

theorem linked_9455 : Linked cell_9455 pieces := by
  link_source cell_9455 with piece_962 using piece_962_mem, piece_1305_mem

theorem linked_9456 : Linked cell_9456 pieces := by
  link_source cell_9456 with piece_962 using piece_962_mem, piece_1305_mem

theorem linked_9457 : Linked cell_9457 pieces := by
  link_source cell_9457 with piece_962 using piece_962_mem, ⟨piece_1304_mem, piece_1305_mem⟩

theorem linked_9458 : Linked cell_9458 pieces := by
  link_source cell_9458 with piece_962 using piece_962_mem, piece_1304_mem

theorem linked_9459 : Linked cell_9459 pieces := by
  link_source cell_9459 with piece_962 using piece_962_mem, ⟨piece_1303_mem, piece_1304_mem⟩

theorem linked_9460 : Linked cell_9460 pieces := by
  link_source cell_9460 with piece_962 using piece_962_mem, piece_1303_mem

theorem linked_9461 : Linked cell_9461 pieces := by
  link_source cell_9461 with piece_963 using piece_963_mem, ⟨piece_1304_mem, piece_1305_mem⟩

theorem linked_9462 : Linked cell_9462 pieces := by
  link_source cell_9462 with piece_963 using piece_963_mem, piece_1304_mem

theorem linked_9463 : Linked cell_9463 pieces := by
  link_source cell_9463 with piece_963 using piece_963_mem, ⟨piece_1303_mem, piece_1304_mem⟩

theorem linked_9464 : Linked cell_9464 pieces := by
  link_source cell_9464 with piece_963 using piece_963_mem, piece_1303_mem

theorem linked_9465 : Linked cell_9465 pieces := by
  link_source cell_9465 with piece_963 using piece_963_mem, piece_1303_mem

theorem linked_9466 : Linked cell_9466 pieces := by
  link_source cell_9466 with piece_963 using piece_963_mem, ⟨piece_1301_mem, ⟨piece_1302_mem, piece_1303_mem⟩⟩

theorem linked_9467 : Linked cell_9467 pieces := by
  link_source cell_9467 with piece_963 using piece_963_mem, piece_1301_mem

theorem linked_9468 : Linked cell_9468 pieces := by
  link_source cell_9468 with piece_963 using piece_963_mem, ⟨piece_1300_mem, piece_1301_mem⟩

theorem linked_9469 : Linked cell_9469 pieces := by
  link_source cell_9469 with piece_964 using piece_964_mem, piece_1303_mem

theorem linked_9470 : Linked cell_9470 pieces := by
  link_source cell_9470 with piece_964 using piece_964_mem, ⟨piece_1301_mem, ⟨piece_1302_mem, piece_1303_mem⟩⟩

theorem linked_9471 : Linked cell_9471 pieces := by
  link_source cell_9471 with piece_965 using piece_965_mem, ⟨piece_1300_mem, piece_1301_mem⟩

theorem linked_9472 : Linked cell_9472 pieces := by
  link_source cell_9472 with piece_965 using piece_965_mem, piece_1300_mem

theorem linked_9473 : Linked cell_9473 pieces := by
  link_source cell_9473 with piece_965 using piece_965_mem, piece_1300_mem

theorem linked_9474 : Linked cell_9474 pieces := by
  link_source cell_9474 with piece_965 using piece_965_mem, ⟨piece_1299_mem, piece_1300_mem⟩

theorem linked_9475 : Linked cell_9475 pieces := by
  link_source cell_9475 with piece_965 using piece_965_mem, piece_1299_mem

theorem linked_9476 : Linked cell_9476 pieces := by
  link_source cell_9476 with piece_966 using piece_966_mem, piece_1300_mem

theorem linked_9477 : Linked cell_9477 pieces := by
  link_source cell_9477 with piece_966 using piece_966_mem, piece_1300_mem

theorem linked_9478 : Linked cell_9478 pieces := by
  link_source cell_9478 with piece_966 using piece_966_mem, ⟨piece_1299_mem, piece_1300_mem⟩

theorem linked_9479 : Linked cell_9479 pieces := by
  link_source cell_9479 with piece_966 using piece_966_mem, piece_1299_mem

theorem linked_9480 : Linked cell_9480 pieces := by
  link_source cell_9480 with piece_966 using piece_966_mem, ⟨piece_1298_mem, piece_1299_mem⟩

theorem linked_9481 : Linked cell_9481 pieces := by
  link_source cell_9481 with piece_966 using piece_966_mem, piece_1298_mem

theorem linked_9482 : Linked cell_9482 pieces := by
  link_source cell_9482 with piece_966 using piece_966_mem, piece_1298_mem

theorem linked_9483 : Linked cell_9483 pieces := by
  link_source cell_9483 with piece_966 using piece_966_mem, ⟨piece_1297_mem, piece_1298_mem⟩

theorem linked_9484 : Linked cell_9484 pieces := by
  link_source cell_9484 with piece_967 using piece_967_mem, ⟨piece_1298_mem, piece_1299_mem⟩

theorem linked_9485 : Linked cell_9485 pieces := by
  link_source cell_9485 with piece_967 using piece_967_mem, piece_1298_mem

theorem linked_9486 : Linked cell_9486 pieces := by
  link_source cell_9486 with piece_967 using piece_967_mem, piece_1298_mem

theorem linked_9487 : Linked cell_9487 pieces := by
  link_source cell_9487 with piece_967 using piece_967_mem, ⟨piece_1297_mem, piece_1298_mem⟩

theorem linked_9488 : Linked cell_9488 pieces := by
  link_source cell_9488 with piece_967 using piece_967_mem, piece_1297_mem

theorem linked_9489 : Linked cell_9489 pieces := by
  link_source cell_9489 with piece_967 using piece_967_mem, ⟨piece_1296_mem, piece_1297_mem⟩

theorem linked_9490 : Linked cell_9490 pieces := by
  link_source cell_9490 with piece_967 using piece_967_mem, piece_1296_mem

theorem linked_9491 : Linked cell_9491 pieces := by
  link_source cell_9491 with piece_967 using piece_967_mem, piece_1296_mem

theorem linked_9492 : Linked cell_9492 pieces := by
  link_source cell_9492 with piece_968 using piece_968_mem, piece_1297_mem

theorem linked_9493 : Linked cell_9493 pieces := by
  link_source cell_9493 with piece_968 using piece_968_mem, ⟨piece_1296_mem, piece_1297_mem⟩

theorem linked_9494 : Linked cell_9494 pieces := by
  link_source cell_9494 with piece_968 using piece_968_mem, piece_1296_mem

theorem linked_9495 : Linked cell_9495 pieces := by
  link_source cell_9495 with piece_968 using piece_968_mem, piece_1296_mem

theorem linked_9496 : Linked cell_9496 pieces := by
  link_source cell_9496 with piece_968 using piece_968_mem, ⟨piece_1295_mem, piece_1296_mem⟩

theorem linked_9497 : Linked cell_9497 pieces := by
  link_source cell_9497 with piece_968 using piece_968_mem, piece_1295_mem

theorem linked_9498 : Linked cell_9498 pieces := by
  link_source cell_9498 with piece_968 using piece_968_mem, ⟨piece_1294_mem, piece_1295_mem⟩

theorem linked_9499 : Linked cell_9499 pieces := by
  link_source cell_9499 with piece_968 using piece_968_mem, piece_1294_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0189.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0189.cells,List.forall_mem_cons]
  exact ⟨linked_9450, linked_9451, linked_9452, linked_9453, linked_9454, linked_9455, linked_9456, linked_9457, linked_9458, linked_9459, linked_9460, linked_9461, linked_9462, linked_9463, linked_9464, linked_9465, linked_9466, linked_9467, linked_9468, linked_9469, linked_9470, linked_9471, linked_9472, linked_9473, linked_9474, linked_9475, linked_9476, linked_9477, linked_9478, linked_9479, linked_9480, linked_9481, linked_9482, linked_9483, linked_9484, linked_9485, linked_9486, linked_9487, linked_9488, linked_9489, linked_9490, linked_9491, linked_9492, linked_9493, linked_9494, linked_9495, linked_9496, linked_9497, linked_9498, linked_9499, by simp⟩

theorem covered : covers (19790625000000001 / 50000000000000000 : ℚ) (19950000000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0189.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0189
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0190
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(19950000000000001 / 50000000000000000 : ℚ), (19953125000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (69914523886611 / 100000000000000 : ℚ)
  w := (1577360489421 / 1000000000000 : ℚ)
  center := (19951562500000001 / 50000000000000000 : ℚ)
  supportValue := (5489894770034919 / 10000000000000000 : ℚ)
  supportSlope := (-32786504877826417 / 10000000000000000 : ℚ)
  oldCenter := (5489894770034919 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_969
  oldLo := (13675000000000001 / 25000000000000000 : ℚ)
  oldHi := (13650000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1288]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9500 : Cell := { cellDefaults with
  oldLo := (54849999999999999 / 100000000000000000 : ℚ)
  oldHi := (54949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1295, piece_1296]
}

def cell_9501 : Cell := { cellDefaults with
  domain := ⟨(19953125000000001 / 50000000000000000 : ℚ), (19956250000000001 / 50000000000000000 : ℚ)⟩
  center := (19954687500000001 / 50000000000000000 : ℚ)
  supportValue := (1371961517223031 / 2500000000000000 : ℚ)
  supportSlope := (-1310786614430981 / 400000000000000 : ℚ)
  oldCenter := (1371961517223031 / 2500000000000000 : ℚ)
  oldLo := (54849999999999999 / 100000000000000000 : ℚ)
  oldHi := (13725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1295]
}

def cell_9502 : Cell := { cellDefaults with
  domain := ⟨(19956250000000001 / 50000000000000000 : ℚ), (19959375000000001 / 50000000000000000 : ℚ)⟩
  center := (19957812500000001 / 50000000000000000 : ℚ)
  supportValue := (2742899280160963 / 5000000000000000 : ℚ)
  supportSlope := (-409389385606751 / 125000000000000 : ℚ)
  oldCenter := (2742899280160963 / 5000000000000000 : ℚ)
  oldLo := (13700000000000001 / 25000000000000000 : ℚ)
  oldHi := (13725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1294, piece_1295]
}

def cell_9503 : Cell := { cellDefaults with
  domain := ⟨(19959375000000001 / 50000000000000000 : ℚ), (19962500000000001 / 50000000000000000 : ℚ)⟩
  center := (19960937500000001 / 50000000000000000 : ℚ)
  supportValue := (5483752051320211 / 10000000000000000 : ℚ)
  supportSlope := (-1636827955978859 / 500000000000000 : ℚ)
  oldCenter := (5483752051320211 / 10000000000000000 : ℚ)
  oldLo := (13700000000000001 / 25000000000000000 : ℚ)
  oldHi := (54849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1294]
}

def cell_9504 : Cell := { cellDefaults with
  domain := ⟨(19962500000000001 / 50000000000000000 : ℚ), (19965625000000001 / 50000000000000000 : ℚ)⟩
  center := (19964062500000001 / 50000000000000000 : ℚ)
  supportValue := (1370426652873303 / 2500000000000000 : ℚ)
  supportSlope := (-32717500732317717 / 10000000000000000 : ℚ)
  oldCenter := (1370426652873303 / 2500000000000000 : ℚ)
  oldLo := (13700000000000001 / 25000000000000000 : ℚ)
  oldHi := (54849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1294]
}

def cell_9505 : Cell := { cellDefaults with
  domain := ⟨(19965625000000001 / 50000000000000000 : ℚ), (19968750000000001 / 50000000000000000 : ℚ)⟩
  center := (19967187500000001 / 50000000000000000 : ℚ)
  supportValue := (342478894367841 / 625000000000000 : ℚ)
  supportSlope := (-65403630661649 / 20000000000000 : ℚ)
  oldCenter := (342478894367841 / 625000000000000 : ℚ)
  oldLo := (54749999999999999 / 100000000000000000 : ℚ)
  oldHi := (54849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1293, piece_1294]
}

def cell_9506 : Cell := { cellDefaults with
  domain := ⟨(19968750000000001 / 50000000000000000 : ℚ), (19971875000000001 / 50000000000000000 : ℚ)⟩
  center := (19970312500000001 / 50000000000000000 : ℚ)
  supportValue := (5477618935752377 / 10000000000000000 : ℚ)
  supportSlope := (-3268445650469687 / 1000000000000000 : ℚ)
  oldCenter := (5477618935752377 / 10000000000000000 : ℚ)
  oldLo := (54749999999999999 / 100000000000000000 : ℚ)
  oldHi := (13700000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1293]
}

def cell_9507 : Cell := { cellDefaults with
  domain := ⟨(19971875000000001 / 50000000000000000 : ℚ), (19975000000000001 / 50000000000000000 : ℚ)⟩
  center := (19973437500000001 / 50000000000000000 : ℚ)
  supportValue := (5475576751282761 / 10000000000000000 : ℚ)
  supportSlope := (-1633326719153061 / 500000000000000 : ℚ)
  oldCenter := (5475576751282761 / 10000000000000000 : ℚ)
  oldHi := (13700000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1292, piece_1293]
}

def cell_9508 : Cell := { cellDefaults with
  domain := ⟨(19975000000000001 / 50000000000000000 : ℚ), (19978125000000001 / 50000000000000000 : ℚ)⟩
  r := (69868890005311 / 100000000000000 : ℚ)
  w := (24635793583 / 15625000000 : ℚ)
  center := (19976562500000001 / 50000000000000000 : ℚ)
  supportValue := (5481977549364901 / 10000000000000000 : ℚ)
  supportSlope := (-6539692918494211 / 2000000000000000 : ℚ)
  oldCenter := (5481977549364901 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_970
  oldLo := (13700000000000001 / 25000000000000000 : ℚ)
  oldHi := (54849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1294]
}

def cell_9509 : Cell := { cellDefaults with
  domain := ⟨(19978125000000001 / 50000000000000000 : ℚ), (19981250000000001 / 50000000000000000 : ℚ)⟩
  r := (69868890005311 / 100000000000000 : ℚ)
  w := (24635793583 / 15625000000 : ℚ)
  center := (19979687500000001 / 50000000000000000 : ℚ)
  supportValue := (2739967239239143 / 5000000000000000 : ℚ)
  supportSlope := (-16341069824452603 / 5000000000000000 : ℚ)
  oldCenter := (2739967239239143 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_970
  oldLo := (54749999999999999 / 100000000000000000 : ℚ)
  oldHi := (54849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1293, piece_1294]
}

def cell_9510 : Cell := { cellDefaults with
  domain := ⟨(19981250000000001 / 50000000000000000 : ℚ), (19984375000000001 / 50000000000000000 : ℚ)⟩
  r := (69868890005311 / 100000000000000 : ℚ)
  w := (24635793583 / 15625000000 : ℚ)
  center := (19982812500000001 / 50000000000000000 : ℚ)
  supportValue := (5477892291138379 / 10000000000000000 : ℚ)
  supportSlope := (-3266548355785659 / 1000000000000000 : ℚ)
  oldCenter := (5477892291138379 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_970
  oldLo := (54749999999999999 / 100000000000000000 : ℚ)
  oldHi := (13700000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1293]
}

def cell_9511 : Cell := { cellDefaults with
  domain := ⟨(19984375000000001 / 50000000000000000 : ℚ), (19987500000000001 / 50000000000000000 : ℚ)⟩
  r := (69868890005311 / 100000000000000 : ℚ)
  w := (24635793583 / 15625000000 : ℚ)
  center := (19985937500000001 / 50000000000000000 : ℚ)
  supportValue := (1095170258299067 / 2000000000000000 : ℚ)
  supportSlope := (-1632345611369601 / 500000000000000 : ℚ)
  oldCenter := (1095170258299067 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_970
  oldHi := (13700000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1292, piece_1293]
}

def cell_9512 : Cell := { cellDefaults with
  domain := ⟨(19987500000000001 / 50000000000000000 : ℚ), (19990625000000001 / 50000000000000000 : ℚ)⟩
  r := (69868890005311 / 100000000000000 : ℚ)
  w := (24635793583 / 15625000000 : ℚ)
  center := (19989062500000001 / 50000000000000000 : ℚ)
  supportValue := (1094762258880101 / 2000000000000000 : ℚ)
  supportSlope := (-3263255156014111 / 1000000000000000 : ℚ)
  oldCenter := (1094762258880101 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_970
  oldHi := (54749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1292]
}

def cell_9513 : Cell := { cellDefaults with
  domain := ⟨(19990625000000001 / 50000000000000000 : ℚ), (19993750000000001 / 50000000000000000 : ℚ)⟩
  r := (69868890005311 / 100000000000000 : ℚ)
  w := (24635793583 / 15625000000 : ℚ)
  center := (19992187500000001 / 50000000000000000 : ℚ)
  supportValue := (2735886176307749 / 5000000000000000 : ℚ)
  supportSlope := (-130454283993231 / 40000000000000 : ℚ)
  oldCenter := (2735886176307749 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_970
  oldHi := (54749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1292]
}

def cell_9514 : Cell := { cellDefaults with
  domain := ⟨(19993750000000001 / 50000000000000000 : ℚ), (19996875000000001 / 50000000000000000 : ℚ)⟩
  r := (69868890005311 / 100000000000000 : ℚ)
  w := (24635793583 / 15625000000 : ℚ)
  center := (19995312500000001 / 50000000000000000 : ℚ)
  supportValue := (1367433638759211 / 2500000000000000 : ℚ)
  supportSlope := (-32597799272124917 / 10000000000000000 : ℚ)
  oldCenter := (1367433638759211 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_970
  oldLo := (54649999999999999 / 100000000000000000 : ℚ)
  oldHi := (54749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1291, piece_1292]
}

def cell_9515 : Cell := { cellDefaults with
  domain := ⟨(19996875000000001 / 50000000000000000 : ℚ), (20000000000000001 / 50000000000000000 : ℚ)⟩
  r := (69868890005311 / 100000000000000 : ℚ)
  w := (24635793583 / 15625000000 : ℚ)
  center := (19998437500000001 / 50000000000000000 : ℚ)
  supportValue := (5467697668054017 / 10000000000000000 : ℚ)
  supportSlope := (-3258070044470429 / 1000000000000000 : ℚ)
  oldCenter := (5467697668054017 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_970
  oldLo := (54649999999999999 / 100000000000000000 : ℚ)
  oldHi := (13675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1291]
}

def cell_9516 : Cell := { cellDefaults with
  domain := ⟨(20000000000000001 / 50000000000000000 : ℚ), (20003125000000001 / 50000000000000000 : ℚ)⟩
  r := (87279153203 / 125000000000 : ℚ)
  w := (15760224200249 / 10000000000000 : ℚ)
  center := (20001562500000001 / 50000000000000000 : ℚ)
  supportValue := (5474082802116249 / 10000000000000000 : ℚ)
  supportSlope := (-815333462388601 / 250000000000000 : ℚ)
  oldCenter := (5474082802116249 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_971
  oldHi := (13700000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1292, piece_1293]
}

def cell_9517 : Cell := { cellDefaults with
  domain := ⟨(20003125000000001 / 50000000000000000 : ℚ), (20006250000000001 / 50000000000000000 : ℚ)⟩
  r := (87279153203 / 125000000000 : ℚ)
  w := (15760224200249 / 10000000000000 : ℚ)
  center := (20004687500000001 / 50000000000000000 : ℚ)
  supportValue := (5472045044617009 / 10000000000000000 : ℚ)
  supportSlope := (-814865953982391 / 250000000000000 : ℚ)
  oldCenter := (5472045044617009 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_971
  oldHi := (54749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1292]
}

def cell_9518 : Cell := { cellDefaults with
  domain := ⟨(20006250000000001 / 50000000000000000 : ℚ), (20009375000000001 / 50000000000000000 : ℚ)⟩
  r := (87279153203 / 125000000000 : ℚ)
  w := (15760224200249 / 10000000000000 : ℚ)
  center := (20007812500000001 / 50000000000000000 : ℚ)
  supportValue := (2735004235405873 / 5000000000000000 : ℚ)
  supportSlope := (-16289108915046313 / 5000000000000000 : ℚ)
  oldCenter := (2735004235405873 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_971
  oldLo := (54649999999999999 / 100000000000000000 : ℚ)
  oldHi := (54749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1291, piece_1292]
}

def cell_9519 : Cell := { cellDefaults with
  domain := ⟨(20009375000000001 / 50000000000000000 : ℚ), (20012500000000001 / 50000000000000000 : ℚ)⟩
  r := (87279153203 / 125000000000 : ℚ)
  w := (15760224200249 / 10000000000000 : ℚ)
  center := (20010937500000001 / 50000000000000000 : ℚ)
  supportValue := (2733986382611689 / 5000000000000000 : ℚ)
  supportSlope := (-32561830804560543 / 10000000000000000 : ℚ)
  oldCenter := (2733986382611689 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_971
  oldLo := (54649999999999999 / 100000000000000000 : ℚ)
  oldHi := (13675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1291]
}

def cell_9520 : Cell := { cellDefaults with
  domain := ⟨(20012500000000001 / 50000000000000000 : ℚ), (20015625000000001 / 50000000000000000 : ℚ)⟩
  r := (87279153203 / 125000000000 : ℚ)
  w := (15760224200249 / 10000000000000 : ℚ)
  center := (20014062500000001 / 50000000000000000 : ℚ)
  supportValue := (546593824148807 / 1000000000000000 : ℚ)
  supportSlope := (-3254311416231559 / 1000000000000000 : ℚ)
  oldCenter := (546593824148807 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_971
  oldLo := (5464804469273743 / 10000000000000000 : ℚ)
  oldHi := (13675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1290, piece_1291]
}

def cell_9521 : Cell := { cellDefaults with
  domain := ⟨(20015625000000001 / 50000000000000000 : ℚ), (20018750000000001 / 50000000000000000 : ℚ)⟩
  r := (87279153203 / 125000000000 : ℚ)
  w := (15760224200249 / 10000000000000 : ℚ)
  center := (20017187500000001 / 50000000000000000 : ℚ)
  supportValue := (2731952364379679 / 5000000000000000 : ℚ)
  supportSlope := (-16264535893864007 / 5000000000000000 : ℚ)
  oldCenter := (2731952364379679 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_971
  oldLo := (13650000000000001 / 25000000000000000 : ℚ)
  oldHi := (54649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1289, piece_1290]
}

def cell_9522 : Cell := { cellDefaults with
  domain := ⟨(20018750000000001 / 50000000000000000 : ℚ), (20021875000000001 / 50000000000000000 : ℚ)⟩
  r := (87279153203 / 125000000000 : ℚ)
  w := (15760224200249 / 10000000000000 : ℚ)
  center := (20020312500000001 / 50000000000000000 : ℚ)
  supportValue := (5461872252070967 / 10000000000000000 : ℚ)
  supportSlope := (-812754194015497 / 250000000000000 : ℚ)
  oldCenter := (5461872252070967 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_971
  oldLo := (13650000000000001 / 25000000000000000 : ℚ)
  oldHi := (5464804469273743 / 10000000000000000 : ℚ)
  oldPieces := [piece_1289]
}

def cell_9523 : Cell := { cellDefaults with
  domain := ⟨(20021875000000001 / 50000000000000000 : ℚ), (20025000000000001 / 50000000000000000 : ℚ)⟩
  r := (87279153203 / 125000000000 : ℚ)
  w := (15760224200249 / 10000000000000 : ℚ)
  center := (20023437500000001 / 50000000000000000 : ℚ)
  supportValue := (5459840931138249 / 10000000000000000 : ℚ)
  supportSlope := (-324942214604107 / 100000000000000 : ℚ)
  oldCenter := (5459840931138249 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_971
  oldLo := (27274999999999999 / 50000000000000000 : ℚ)
  oldHi := (5464804469273743 / 10000000000000000 : ℚ)
  oldPieces := [piece_1288, piece_1289]
}

def cell_9524 : Cell := { cellDefaults with
  domain := ⟨(20025000000000001 / 50000000000000000 : ℚ), (20028125000000001 / 50000000000000000 : ℚ)⟩
  r := (1090278446533 / 1562500000000 : ℚ)
  w := (15753555339141 / 10000000000000 : ℚ)
  center := (20026562500000001 / 50000000000000000 : ℚ)
  supportValue := (2733104899579659 / 5000000000000000 : ℚ)
  supportSlope := (-813100354275953 / 250000000000000 : ℚ)
  oldCenter := (2733104899579659 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_972
  oldLo := (54649999999999999 / 100000000000000000 : ℚ)
  oldHi := (13675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1291]
}

def cell_9525 : Cell := { cellDefaults with
  domain := ⟨(20028125000000001 / 50000000000000000 : ℚ), (20031250000000001 / 50000000000000000 : ℚ)⟩
  r := (1090278446533 / 1562500000000 : ℚ)
  w := (15753555339141 / 10000000000000 : ℚ)
  center := (20029687500000001 / 50000000000000000 : ℚ)
  supportValue := (5464177509098237 / 10000000000000000 : ℚ)
  supportSlope := (-325097249403683 / 100000000000000 : ℚ)
  oldCenter := (5464177509098237 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_972
  oldLo := (13650000000000001 / 25000000000000000 : ℚ)
  oldHi := (13675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1289, piece_1290, piece_1291]
}

def cell_9526 : Cell := { cellDefaults with
  domain := ⟨(20031250000000001 / 50000000000000000 : ℚ), (20034375000000001 / 50000000000000000 : ℚ)⟩
  r := (1090278446533 / 1562500000000 : ℚ)
  w := (15753555339141 / 10000000000000 : ℚ)
  center := (20032812500000001 / 50000000000000000 : ℚ)
  supportValue := (5462146210698637 / 10000000000000000 : ℚ)
  supportSlope := (-16245665410412613 / 5000000000000000 : ℚ)
  oldCenter := (5462146210698637 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_972
  oldLo := (13650000000000001 / 25000000000000000 : ℚ)
  oldHi := (5464804469273743 / 10000000000000000 : ℚ)
  oldPieces := [piece_1289]
}

def cell_9527 : Cell := { cellDefaults with
  domain := ⟨(20034375000000001 / 50000000000000000 : ℚ), (20037500000000001 / 50000000000000000 : ℚ)⟩
  r := (1090278446533 / 1562500000000 : ℚ)
  w := (15753555339141 / 10000000000000 : ℚ)
  center := (20035937500000001 / 50000000000000000 : ℚ)
  supportValue := (2730058045607801 / 5000000000000000 : ℚ)
  supportSlope := (-32474727739533193 / 10000000000000000 : ℚ)
  oldCenter := (2730058045607801 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_972
  oldLo := (27274999999999999 / 50000000000000000 : ℚ)
  oldHi := (5464804469273743 / 10000000000000000 : ℚ)
  oldPieces := [piece_1288, piece_1289]
}

def cell_9528 : Cell := { cellDefaults with
  domain := ⟨(20037500000000001 / 50000000000000000 : ℚ), (20040625000000001 / 50000000000000000 : ℚ)⟩
  r := (1090278446533 / 1562500000000 : ℚ)
  w := (15753555339141 / 10000000000000 : ℚ)
  center := (20039062500000001 / 50000000000000000 : ℚ)
  supportValue := (5458086850731141 / 10000000000000000 : ℚ)
  supportSlope := (-16229348409204647 / 5000000000000000 : ℚ)
  oldCenter := (5458086850731141 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_972
  oldLo := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1288]
}

def cell_9529 : Cell := { cellDefaults with
  domain := ⟨(20040625000000001 / 50000000000000000 : ℚ), (20043750000000001 / 50000000000000000 : ℚ)⟩
  r := (1090278446533 / 1562500000000 : ℚ)
  w := (15753555339141 / 10000000000000 : ℚ)
  center := (20042187500000001 / 50000000000000000 : ℚ)
  supportValue := (5456058770482719 / 10000000000000000 : ℚ)
  supportSlope := (-324398566465689 / 100000000000000 : ℚ)
  oldCenter := (5456058770482719 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_972
  oldLo := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1288]
}

def cell_9530 : Cell := { cellDefaults with
  domain := ⟨(20043750000000001 / 50000000000000000 : ℚ), (20046875000000001 / 50000000000000000 : ℚ)⟩
  r := (1090278446533 / 1562500000000 : ℚ)
  w := (15753555339141 / 10000000000000 : ℚ)
  center := (20045312500000001 / 50000000000000000 : ℚ)
  supportValue := (218161268605653 / 400000000000000 : ℚ)
  supportSlope := (-32426002264074327 / 10000000000000000 : ℚ)
  oldCenter := (218161268605653 / 400000000000000 : ℚ)
  newCoefficients := coefficients_972
  oldLo := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1287, piece_1288]
}

def cell_9531 : Cell := { cellDefaults with
  domain := ⟨(20046875000000001 / 50000000000000000 : ℚ), (20050000000000001 / 50000000000000000 : ℚ)⟩
  r := (1090278446533 / 1562500000000 : ℚ)
  w := (15753555339141 / 10000000000000 : ℚ)
  center := (20048437500000001 / 50000000000000000 : ℚ)
  supportValue := (5452005671080157 / 10000000000000000 : ℚ)
  supportSlope := (-4050910492114923 / 1250000000000000 : ℚ)
  oldCenter := (5452005671080157 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_972
  oldLo := (13625000000000001 / 25000000000000000 : ℚ)
  oldHi := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1287]
}

def cell_9532 : Cell := { cellDefaults with
  domain := ⟨(20050000000000001 / 50000000000000000 : ℚ), (20053125000000001 / 50000000000000000 : ℚ)⟩
  r := (69732383460497 / 100000000000000 : ℚ)
  w := (15746900938363 / 10000000000000 : ℚ)
  center := (20051562500000001 / 50000000000000000 : ℚ)
  supportValue := (2729179337533139 / 5000000000000000 : ℚ)
  supportSlope := (-3243986378919317 / 1000000000000000 : ℚ)
  oldCenter := (2729179337533139 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_973
  oldLo := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1288]
}

def cell_9533 : Cell := { cellDefaults with
  domain := ⟨(20053125000000001 / 50000000000000000 : ℚ), (20056250000000001 / 50000000000000000 : ℚ)⟩
  r := (69732383460497 / 100000000000000 : ℚ)
  w := (15746900938363 / 10000000000000 : ℚ)
  center := (20054687500000001 / 50000000000000000 : ℚ)
  supportValue := (5456331770903157 / 10000000000000000 : ℚ)
  supportSlope := (-253289491772557 / 78125000000000 : ℚ)
  oldCenter := (5456331770903157 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_973
  oldLo := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1288]
}

def cell_9534 : Cell := { cellDefaults with
  domain := ⟨(20056250000000001 / 50000000000000000 : ℚ), (20059375000000001 / 50000000000000000 : ℚ)⟩
  r := (69732383460497 / 100000000000000 : ℚ)
  w := (15746900938363 / 10000000000000 : ℚ)
  center := (20057812500000001 / 50000000000000000 : ℚ)
  supportValue := (1363576483155819 / 2500000000000000 : ℚ)
  supportSlope := (-16203272552424153 / 5000000000000000 : ℚ)
  oldCenter := (1363576483155819 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_973
  oldLo := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1287, piece_1288]
}

def cell_9535 : Cell := { cellDefaults with
  domain := ⟨(20059375000000001 / 50000000000000000 : ℚ), (20062500000000001 / 50000000000000000 : ℚ)⟩
  r := (69732383460497 / 100000000000000 : ℚ)
  w := (15746900938363 / 10000000000000 : ℚ)
  center := (20060937500000001 / 50000000000000000 : ℚ)
  supportValue := (5452281060713539 / 10000000000000000 : ℚ)
  supportSlope := (-32388545148549497 / 10000000000000000 : ℚ)
  oldCenter := (5452281060713539 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_973
  oldLo := (13625000000000001 / 25000000000000000 : ℚ)
  oldHi := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1287]
}

def cell_9536 : Cell := { cellDefaults with
  domain := ⟨(20062500000000001 / 50000000000000000 : ℚ), (20065625000000001 / 50000000000000000 : ℚ)⟩
  r := (69732383460497 / 100000000000000 : ℚ)
  w := (15746900938363 / 10000000000000 : ℚ)
  center := (20064062500000001 / 50000000000000000 : ℚ)
  supportValue := (1090051472590849 / 2000000000000000 : ℚ)
  supportSlope := (-1618583525310413 / 500000000000000 : ℚ)
  oldCenter := (1090051472590849 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_973
  oldLo := (27224999999999999 / 50000000000000000 : ℚ)
  oldHi := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1286, piece_1287]
}

def cell_9537 : Cell := { cellDefaults with
  domain := ⟨(20065625000000001 / 50000000000000000 : ℚ), (20068750000000001 / 50000000000000000 : ℚ)⟩
  r := (69732383460497 / 100000000000000 : ℚ)
  w := (15746900938363 / 10000000000000 : ℚ)
  center := (20067187500000001 / 50000000000000000 : ℚ)
  supportValue := (5448234560529187 / 10000000000000000 : ℚ)
  supportSlope := (-32356084026048393 / 10000000000000000 : ℚ)
  oldCenter := (5448234560529187 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_973
  oldLo := (27224999999999999 / 50000000000000000 : ℚ)
  oldHi := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1286]
}

def cell_9538 : Cell := { cellDefaults with
  domain := ⟨(20068750000000001 / 50000000000000000 : ℚ), (20071875000000001 / 50000000000000000 : ℚ)⟩
  r := (69732383460497 / 100000000000000 : ℚ)
  w := (15746900938363 / 10000000000000 : ℚ)
  center := (20070312500000001 / 50000000000000000 : ℚ)
  supportValue := (340388305699923 / 625000000000000 : ℚ)
  supportSlope := (-6467464022563263 / 2000000000000000 : ℚ)
  oldCenter := (340388305699923 / 625000000000000 : ℚ)
  newCoefficients := coefficients_973
  oldLo := (27224999999999999 / 50000000000000000 : ℚ)
  oldHi := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1286]
}

def cell_9539 : Cell := { cellDefaults with
  domain := ⟨(20071875000000001 / 50000000000000000 : ℚ), (20075000000000001 / 50000000000000000 : ℚ)⟩
  r := (69732383460497 / 100000000000000 : ℚ)
  w := (15746900938363 / 10000000000000 : ℚ)
  center := (20073437500000001 / 50000000000000000 : ℚ)
  supportValue := (1088838453256343 / 2000000000000000 : ℚ)
  supportSlope := (-16161581895062227 / 5000000000000000 : ℚ)
  oldCenter := (1088838453256343 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_973
  oldLo := (13600000000000001 / 25000000000000000 : ℚ)
  oldHi := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1285, piece_1286]
}

def cell_9540 : Cell := { cellDefaults with
  domain := ⟨(20075000000000001 / 50000000000000000 : ℚ), (20078125000000001 / 50000000000000000 : ℚ)⟩
  r := (69687012739307 / 100000000000000 : ℚ)
  w := (15740260515101 / 10000000000000 : ℚ)
  center := (20076562500000001 / 50000000000000000 : ℚ)
  supportValue := (5450529349527761 / 10000000000000000 : ℚ)
  supportSlope := (-16176108966536873 / 5000000000000000 : ℚ)
  oldCenter := (5450529349527761 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_974
  oldLo := (27224999999999999 / 50000000000000000 : ℚ)
  oldHi := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1286, piece_1287]
}

def cell_9541 : Cell := { cellDefaults with
  domain := ⟨(20078125000000001 / 50000000000000000 : ℚ), (20081250000000001 / 50000000000000000 : ℚ)⟩
  r := (69687012739307 / 100000000000000 : ℚ)
  w := (15740260515101 / 10000000000000 : ℚ)
  center := (20079687500000001 / 50000000000000000 : ℚ)
  supportValue := (2724253880950771 / 5000000000000000 : ℚ)
  supportSlope := (-404216857921913 / 125000000000000 : ℚ)
  oldCenter := (2724253880950771 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_974
  oldLo := (27224999999999999 / 50000000000000000 : ℚ)
  oldHi := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1286]
}

def cell_9542 : Cell := { cellDefaults with
  domain := ⟨(20081250000000001 / 50000000000000000 : ℚ), (20084375000000001 / 50000000000000000 : ℚ)⟩
  r := (69687012739307 / 100000000000000 : ℚ)
  w := (15740260515101 / 10000000000000 : ℚ)
  center := (20082812500000001 / 50000000000000000 : ℚ)
  supportValue := (1089297452511407 / 2000000000000000 : ℚ)
  supportSlope := (-16159307978362847 / 5000000000000000 : ℚ)
  oldCenter := (1089297452511407 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_974
  oldLo := (27224999999999999 / 50000000000000000 : ℚ)
  oldHi := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1286]
}

def cell_9543 : Cell := { cellDefaults with
  domain := ⟨(20084375000000001 / 50000000000000000 : ℚ), (20087500000000001 / 50000000000000000 : ℚ)⟩
  r := (69687012739307 / 100000000000000 : ℚ)
  w := (15740260515101 / 10000000000000 : ℚ)
  center := (20085937500000001 / 50000000000000000 : ℚ)
  supportValue := (1088893569826381 / 2000000000000000 : ℚ)
  supportSlope := (-16151897849994157 / 5000000000000000 : ℚ)
  oldCenter := (1088893569826381 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_974
  oldLo := (13600000000000001 / 25000000000000000 : ℚ)
  oldHi := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1285, piece_1286]
}

def cell_9544 : Cell := { cellDefaults with
  domain := ⟨(20087500000000001 / 50000000000000000 : ℚ), (20090625000000001 / 50000000000000000 : ℚ)⟩
  r := (69687012739307 / 100000000000000 : ℚ)
  w := (15740260515101 / 10000000000000 : ℚ)
  center := (20089062500000001 / 50000000000000000 : ℚ)
  supportValue := (1360612342812711 / 2500000000000000 : ℚ)
  supportSlope := (-32286278806026303 / 10000000000000000 : ℚ)
  oldCenter := (1360612342812711 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_974
  oldLo := (13600000000000001 / 25000000000000000 : ℚ)
  oldHi := (27224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1285]
}

def cell_9545 : Cell := { cellDefaults with
  domain := ⟨(20090625000000001 / 50000000000000000 : ℚ), (20093750000000001 / 50000000000000000 : ℚ)⟩
  r := (69687012739307 / 100000000000000 : ℚ)
  w := (15740260515101 / 10000000000000 : ℚ)
  center := (20092187500000001 / 50000000000000000 : ℚ)
  supportValue := (1360108015690067 / 2500000000000000 : ℚ)
  supportSlope := (-16134521415374081 / 5000000000000000 : ℚ)
  oldCenter := (1360108015690067 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_974
  oldLo := (27174999999999999 / 50000000000000000 : ℚ)
  oldHi := (27224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1284, piece_1285]
}

def cell_9546 : Cell := { cellDefaults with
  domain := ⟨(20093750000000001 / 50000000000000000 : ℚ), (20096875000000001 / 50000000000000000 : ℚ)⟩
  r := (69687012739307 / 100000000000000 : ℚ)
  w := (15740260515101 / 10000000000000 : ℚ)
  center := (20095312500000001 / 50000000000000000 : ℚ)
  supportValue := (5438415671547797 / 10000000000000000 : ℚ)
  supportSlope := (-3225399028309539 / 1000000000000000 : ℚ)
  oldCenter := (5438415671547797 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_974
  oldLo := (27174999999999999 / 50000000000000000 : ℚ)
  oldHi := (13600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1284]
}

def cell_9547 : Cell := { cellDefaults with
  domain := ⟨(20096875000000001 / 50000000000000000 : ℚ), (20100000000000001 / 50000000000000000 : ℚ)⟩
  r := (69687012739307 / 100000000000000 : ℚ)
  w := (15740260515101 / 10000000000000 : ℚ)
  center := (20098437500000001 / 50000000000000000 : ℚ)
  supportValue := (5436400380718297 / 10000000000000000 : ℚ)
  supportSlope := (-128941207506017 / 40000000000000 : ℚ)
  oldCenter := (5436400380718297 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_974
  oldLo := (27174999999999999 / 50000000000000000 : ℚ)
  oldHi := (13600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1284]
}

def cell_9548 : Cell := { cellDefaults with
  domain := ⟨(20100000000000001 / 50000000000000000 : ℚ), (20103125000000001 / 50000000000000000 : ℚ)⟩
  r := (69641705530919 / 100000000000000 : ℚ)
  w := (7866817317849 / 5000000000000 : ℚ)
  center := (20101562500000001 / 50000000000000000 : ℚ)
  supportValue := (1088544337837363 / 2000000000000000 : ℚ)
  supportSlope := (-32267578165097177 / 10000000000000000 : ℚ)
  oldCenter := (1088544337837363 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_975
  oldLo := (13600000000000001 / 25000000000000000 : ℚ)
  oldHi := (27224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1285]
}

def cell_9549 : Cell := { cellDefaults with
  domain := ⟨(20103125000000001 / 50000000000000000 : ℚ), (20106250000000001 / 50000000000000000 : ℚ)⟩
  r := (69641705530919 / 100000000000000 : ℚ)
  w := (7866817317849 / 5000000000000 : ℚ)
  center := (20104687500000001 / 50000000000000000 : ℚ)
  supportValue := (170022048390973 / 312500000000000 : ℚ)
  supportSlope := (-644993580912967 / 200000000000000 : ℚ)
  oldCenter := (170022048390973 / 312500000000000 : ℚ)
  newCoefficients := coefficients_975
  oldLo := (27174999999999999 / 50000000000000000 : ℚ)
  oldHi := (27224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1284, piece_1285]
}

theorem check_9500 : cell_9500.check = true := by
  decide +kernel

theorem check_9501 : cell_9501.check = true := by
  decide +kernel

theorem check_9502 : cell_9502.check = true := by
  decide +kernel

theorem check_9503 : cell_9503.check = true := by
  decide +kernel

theorem check_9504 : cell_9504.check = true := by
  decide +kernel

theorem check_9505 : cell_9505.check = true := by
  decide +kernel

theorem check_9506 : cell_9506.check = true := by
  decide +kernel

theorem check_9507 : cell_9507.check = true := by
  decide +kernel

theorem check_9508 : cell_9508.check = true := by
  decide +kernel

theorem check_9509 : cell_9509.check = true := by
  decide +kernel

theorem check_9510 : cell_9510.check = true := by
  decide +kernel

theorem check_9511 : cell_9511.check = true := by
  decide +kernel

theorem check_9512 : cell_9512.check = true := by
  decide +kernel

theorem check_9513 : cell_9513.check = true := by
  decide +kernel

theorem check_9514 : cell_9514.check = true := by
  decide +kernel

theorem check_9515 : cell_9515.check = true := by
  decide +kernel

theorem check_9516 : cell_9516.check = true := by
  decide +kernel

theorem check_9517 : cell_9517.check = true := by
  decide +kernel

theorem check_9518 : cell_9518.check = true := by
  decide +kernel

theorem check_9519 : cell_9519.check = true := by
  decide +kernel

theorem check_9520 : cell_9520.check = true := by
  decide +kernel

theorem check_9521 : cell_9521.check = true := by
  decide +kernel

theorem check_9522 : cell_9522.check = true := by
  decide +kernel

theorem check_9523 : cell_9523.check = true := by
  decide +kernel

theorem check_9524 : cell_9524.check = true := by
  decide +kernel

theorem check_9525 : cell_9525.check = true := by
  decide +kernel

theorem check_9526 : cell_9526.check = true := by
  decide +kernel

theorem check_9527 : cell_9527.check = true := by
  decide +kernel

theorem check_9528 : cell_9528.check = true := by
  decide +kernel

theorem check_9529 : cell_9529.check = true := by
  decide +kernel

theorem check_9530 : cell_9530.check = true := by
  decide +kernel

theorem check_9531 : cell_9531.check = true := by
  decide +kernel

theorem check_9532 : cell_9532.check = true := by
  decide +kernel

theorem check_9533 : cell_9533.check = true := by
  decide +kernel

theorem check_9534 : cell_9534.check = true := by
  decide +kernel

theorem check_9535 : cell_9535.check = true := by
  decide +kernel

theorem check_9536 : cell_9536.check = true := by
  decide +kernel

theorem check_9537 : cell_9537.check = true := by
  decide +kernel

theorem check_9538 : cell_9538.check = true := by
  decide +kernel

theorem check_9539 : cell_9539.check = true := by
  decide +kernel

theorem check_9540 : cell_9540.check = true := by
  decide +kernel

theorem check_9541 : cell_9541.check = true := by
  decide +kernel

theorem check_9542 : cell_9542.check = true := by
  decide +kernel

theorem check_9543 : cell_9543.check = true := by
  decide +kernel

theorem check_9544 : cell_9544.check = true := by
  decide +kernel

theorem check_9545 : cell_9545.check = true := by
  decide +kernel

theorem check_9546 : cell_9546.check = true := by
  decide +kernel

theorem check_9547 : cell_9547.check = true := by
  decide +kernel

theorem check_9548 : cell_9548.check = true := by
  decide +kernel

theorem check_9549 : cell_9549.check = true := by
  decide +kernel

def cells : List Cell := [cell_9500, cell_9501, cell_9502, cell_9503, cell_9504, cell_9505, cell_9506, cell_9507, cell_9508, cell_9509, cell_9510, cell_9511, cell_9512, cell_9513, cell_9514, cell_9515, cell_9516, cell_9517, cell_9518, cell_9519, cell_9520, cell_9521, cell_9522, cell_9523, cell_9524, cell_9525, cell_9526, cell_9527, cell_9528, cell_9529, cell_9530, cell_9531, cell_9532, cell_9533, cell_9534, cell_9535, cell_9536, cell_9537, cell_9538, cell_9539, cell_9540, cell_9541, cell_9542, cell_9543, cell_9544, cell_9545, cell_9546, cell_9547, cell_9548, cell_9549]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9500, check_9501, check_9502, check_9503, check_9504, check_9505, check_9506, check_9507, check_9508, check_9509, check_9510, check_9511, check_9512, check_9513, check_9514, check_9515, check_9516, check_9517, check_9518, check_9519, check_9520, check_9521, check_9522, check_9523, check_9524, check_9525, check_9526, check_9527, check_9528, check_9529, check_9530, check_9531, check_9532, check_9533, check_9534, check_9535, check_9536, check_9537, check_9538, check_9539, check_9540, check_9541, check_9542, check_9543, check_9544, check_9545, check_9546, check_9547, check_9548, check_9549, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0190

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0190
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0190
open AnalyticBounds.ExpressionCertificate

theorem linked_9500 : Linked cell_9500 pieces := by
  link_source cell_9500 with piece_969 using piece_969_mem, ⟨piece_1295_mem, piece_1296_mem⟩

theorem linked_9501 : Linked cell_9501 pieces := by
  link_source cell_9501 with piece_969 using piece_969_mem, piece_1295_mem

theorem linked_9502 : Linked cell_9502 pieces := by
  link_source cell_9502 with piece_969 using piece_969_mem, ⟨piece_1294_mem, piece_1295_mem⟩

theorem linked_9503 : Linked cell_9503 pieces := by
  link_source cell_9503 with piece_969 using piece_969_mem, piece_1294_mem

theorem linked_9504 : Linked cell_9504 pieces := by
  link_source cell_9504 with piece_969 using piece_969_mem, piece_1294_mem

theorem linked_9505 : Linked cell_9505 pieces := by
  link_source cell_9505 with piece_969 using piece_969_mem, ⟨piece_1293_mem, piece_1294_mem⟩

theorem linked_9506 : Linked cell_9506 pieces := by
  link_source cell_9506 with piece_969 using piece_969_mem, piece_1293_mem

theorem linked_9507 : Linked cell_9507 pieces := by
  link_source cell_9507 with piece_969 using piece_969_mem, ⟨piece_1292_mem, piece_1293_mem⟩

theorem linked_9508 : Linked cell_9508 pieces := by
  link_source cell_9508 with piece_970 using piece_970_mem, piece_1294_mem

theorem linked_9509 : Linked cell_9509 pieces := by
  link_source cell_9509 with piece_970 using piece_970_mem, ⟨piece_1293_mem, piece_1294_mem⟩

theorem linked_9510 : Linked cell_9510 pieces := by
  link_source cell_9510 with piece_970 using piece_970_mem, piece_1293_mem

theorem linked_9511 : Linked cell_9511 pieces := by
  link_source cell_9511 with piece_970 using piece_970_mem, ⟨piece_1292_mem, piece_1293_mem⟩

theorem linked_9512 : Linked cell_9512 pieces := by
  link_source cell_9512 with piece_970 using piece_970_mem, piece_1292_mem

theorem linked_9513 : Linked cell_9513 pieces := by
  link_source cell_9513 with piece_970 using piece_970_mem, piece_1292_mem

theorem linked_9514 : Linked cell_9514 pieces := by
  link_source cell_9514 with piece_970 using piece_970_mem, ⟨piece_1291_mem, piece_1292_mem⟩

theorem linked_9515 : Linked cell_9515 pieces := by
  link_source cell_9515 with piece_970 using piece_970_mem, piece_1291_mem

theorem linked_9516 : Linked cell_9516 pieces := by
  link_source cell_9516 with piece_971 using piece_971_mem, ⟨piece_1292_mem, piece_1293_mem⟩

theorem linked_9517 : Linked cell_9517 pieces := by
  link_source cell_9517 with piece_971 using piece_971_mem, piece_1292_mem

theorem linked_9518 : Linked cell_9518 pieces := by
  link_source cell_9518 with piece_971 using piece_971_mem, ⟨piece_1291_mem, piece_1292_mem⟩

theorem linked_9519 : Linked cell_9519 pieces := by
  link_source cell_9519 with piece_971 using piece_971_mem, piece_1291_mem

theorem linked_9520 : Linked cell_9520 pieces := by
  link_source cell_9520 with piece_971 using piece_971_mem, ⟨piece_1290_mem, piece_1291_mem⟩

theorem linked_9521 : Linked cell_9521 pieces := by
  link_source cell_9521 with piece_971 using piece_971_mem, ⟨piece_1289_mem, piece_1290_mem⟩

theorem linked_9522 : Linked cell_9522 pieces := by
  link_source cell_9522 with piece_971 using piece_971_mem, piece_1289_mem

theorem linked_9523 : Linked cell_9523 pieces := by
  link_source cell_9523 with piece_971 using piece_971_mem, ⟨piece_1288_mem, piece_1289_mem⟩

theorem linked_9524 : Linked cell_9524 pieces := by
  link_source cell_9524 with piece_972 using piece_972_mem, piece_1291_mem

theorem linked_9525 : Linked cell_9525 pieces := by
  link_source cell_9525 with piece_972 using piece_972_mem, ⟨piece_1289_mem, ⟨piece_1290_mem, piece_1291_mem⟩⟩

theorem linked_9526 : Linked cell_9526 pieces := by
  link_source cell_9526 with piece_972 using piece_972_mem, piece_1289_mem

theorem linked_9527 : Linked cell_9527 pieces := by
  link_source cell_9527 with piece_972 using piece_972_mem, ⟨piece_1288_mem, piece_1289_mem⟩

theorem linked_9528 : Linked cell_9528 pieces := by
  link_source cell_9528 with piece_972 using piece_972_mem, piece_1288_mem

theorem linked_9529 : Linked cell_9529 pieces := by
  link_source cell_9529 with piece_972 using piece_972_mem, piece_1288_mem

theorem linked_9530 : Linked cell_9530 pieces := by
  link_source cell_9530 with piece_972 using piece_972_mem, ⟨piece_1287_mem, piece_1288_mem⟩

theorem linked_9531 : Linked cell_9531 pieces := by
  link_source cell_9531 with piece_972 using piece_972_mem, piece_1287_mem

theorem linked_9532 : Linked cell_9532 pieces := by
  link_source cell_9532 with piece_973 using piece_973_mem, piece_1288_mem

theorem linked_9533 : Linked cell_9533 pieces := by
  link_source cell_9533 with piece_973 using piece_973_mem, piece_1288_mem

theorem linked_9534 : Linked cell_9534 pieces := by
  link_source cell_9534 with piece_973 using piece_973_mem, ⟨piece_1287_mem, piece_1288_mem⟩

theorem linked_9535 : Linked cell_9535 pieces := by
  link_source cell_9535 with piece_973 using piece_973_mem, piece_1287_mem

theorem linked_9536 : Linked cell_9536 pieces := by
  link_source cell_9536 with piece_973 using piece_973_mem, ⟨piece_1286_mem, piece_1287_mem⟩

theorem linked_9537 : Linked cell_9537 pieces := by
  link_source cell_9537 with piece_973 using piece_973_mem, piece_1286_mem

theorem linked_9538 : Linked cell_9538 pieces := by
  link_source cell_9538 with piece_973 using piece_973_mem, piece_1286_mem

theorem linked_9539 : Linked cell_9539 pieces := by
  link_source cell_9539 with piece_973 using piece_973_mem, ⟨piece_1285_mem, piece_1286_mem⟩

theorem linked_9540 : Linked cell_9540 pieces := by
  link_source cell_9540 with piece_974 using piece_974_mem, ⟨piece_1286_mem, piece_1287_mem⟩

theorem linked_9541 : Linked cell_9541 pieces := by
  link_source cell_9541 with piece_974 using piece_974_mem, piece_1286_mem

theorem linked_9542 : Linked cell_9542 pieces := by
  link_source cell_9542 with piece_974 using piece_974_mem, piece_1286_mem

theorem linked_9543 : Linked cell_9543 pieces := by
  link_source cell_9543 with piece_974 using piece_974_mem, ⟨piece_1285_mem, piece_1286_mem⟩

theorem linked_9544 : Linked cell_9544 pieces := by
  link_source cell_9544 with piece_974 using piece_974_mem, piece_1285_mem

theorem linked_9545 : Linked cell_9545 pieces := by
  link_source cell_9545 with piece_974 using piece_974_mem, ⟨piece_1284_mem, piece_1285_mem⟩

theorem linked_9546 : Linked cell_9546 pieces := by
  link_source cell_9546 with piece_974 using piece_974_mem, piece_1284_mem

theorem linked_9547 : Linked cell_9547 pieces := by
  link_source cell_9547 with piece_974 using piece_974_mem, piece_1284_mem

theorem linked_9548 : Linked cell_9548 pieces := by
  link_source cell_9548 with piece_975 using piece_975_mem, piece_1285_mem

theorem linked_9549 : Linked cell_9549 pieces := by
  link_source cell_9549 with piece_975 using piece_975_mem, ⟨piece_1284_mem, piece_1285_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0190.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0190.cells,List.forall_mem_cons]
  exact ⟨linked_9500, linked_9501, linked_9502, linked_9503, linked_9504, linked_9505, linked_9506, linked_9507, linked_9508, linked_9509, linked_9510, linked_9511, linked_9512, linked_9513, linked_9514, linked_9515, linked_9516, linked_9517, linked_9518, linked_9519, linked_9520, linked_9521, linked_9522, linked_9523, linked_9524, linked_9525, linked_9526, linked_9527, linked_9528, linked_9529, linked_9530, linked_9531, linked_9532, linked_9533, linked_9534, linked_9535, linked_9536, linked_9537, linked_9538, linked_9539, linked_9540, linked_9541, linked_9542, linked_9543, linked_9544, linked_9545, linked_9546, linked_9547, linked_9548, linked_9549, by simp⟩

theorem covered : covers (19950000000000001 / 50000000000000000 : ℚ) (20106250000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0190.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0190
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0191
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(20106250000000001 / 50000000000000000 : ℚ), (20109375000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (69551288503431 / 100000000000000 : ℚ)
  w := (1572042541899 / 1000000000000 : ℚ)
  center := (20107812500000001 / 50000000000000000 : ℚ)
  supportValue := (5438690366548149 / 10000000000000000 : ℚ)
  supportSlope := (-12894140976627 / 4000000000000 : ℚ)
  oldCenter := (5438690366548149 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_978
  oldLo := (13525000000000001 / 25000000000000000 : ℚ)
  oldHi := (27124999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1279]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9550 : Cell := { cellDefaults with
  r := (69641705530919 / 100000000000000 : ℚ)
  w := (7866817317849 / 5000000000000 : ℚ)
  newCoefficients := coefficients_975
  oldLo := (27174999999999999 / 50000000000000000 : ℚ)
  oldHi := (13600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1284]
}

def cell_9551 : Cell := { cellDefaults with
  domain := ⟨(20109375000000001 / 50000000000000000 : ℚ), (20112500000000001 / 50000000000000000 : ℚ)⟩
  r := (69641705530919 / 100000000000000 : ℚ)
  w := (7866817317849 / 5000000000000 : ℚ)
  center := (20110937500000001 / 50000000000000000 : ℚ)
  supportValue := (2718338119805237 / 5000000000000000 : ℚ)
  supportSlope := (-644333903605343 / 200000000000000 : ℚ)
  oldCenter := (2718338119805237 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_975
  oldLo := (27174999999999999 / 50000000000000000 : ℚ)
  oldHi := (13600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1284]
}

def cell_9552 : Cell := { cellDefaults with
  domain := ⟨(20112500000000001 / 50000000000000000 : ℚ), (20115625000000001 / 50000000000000000 : ℚ)⟩
  r := (69641705530919 / 100000000000000 : ℚ)
  w := (7866817317849 / 5000000000000 : ℚ)
  center := (20114062500000001 / 50000000000000000 : ℚ)
  supportValue := (5434663224328413 / 10000000000000000 : ℚ)
  supportSlope := (-201259212819771 / 62500000000000 : ℚ)
  oldCenter := (5434663224328413 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_975
  oldLo := (13575000000000001 / 25000000000000000 : ℚ)
  oldHi := (13600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1283, piece_1284]
}

def cell_9553 : Cell := { cellDefaults with
  domain := ⟨(20115625000000001 / 50000000000000000 : ℚ), (20118750000000001 / 50000000000000000 : ℚ)⟩
  r := (69641705530919 / 100000000000000 : ℚ)
  w := (7866817317849 / 5000000000000 : ℚ)
  center := (20117187500000001 / 50000000000000000 : ℚ)
  supportValue := (1086530221616933 / 2000000000000000 : ℚ)
  supportSlope := (-402306621497317 / 125000000000000 : ℚ)
  oldCenter := (1086530221616933 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_975
  oldLo := (13575000000000001 / 25000000000000000 : ℚ)
  oldHi := (27174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1283]
}

def cell_9554 : Cell := { cellDefaults with
  domain := ⟨(20118750000000001 / 50000000000000000 : ℚ), (20121875000000001 / 50000000000000000 : ℚ)⟩
  r := (69641705530919 / 100000000000000 : ℚ)
  w := (7866817317849 / 5000000000000 : ℚ)
  center := (20120312500000001 / 50000000000000000 : ℚ)
  supportValue := (543064015659699 / 1000000000000000 : ℚ)
  supportSlope := (-3216683925440833 / 1000000000000000 : ℚ)
  oldCenter := (543064015659699 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_975
  oldLo := (27124999999999999 / 50000000000000000 : ℚ)
  oldHi := (27174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1282, piece_1283]
}

def cell_9555 : Cell := { cellDefaults with
  domain := ⟨(20121875000000001 / 50000000000000000 : ℚ), (20125000000000001 / 50000000000000000 : ℚ)⟩
  r := (69641705530919 / 100000000000000 : ℚ)
  w := (7866817317849 / 5000000000000 : ℚ)
  center := (20123437500000001 / 50000000000000000 : ℚ)
  supportValue := (1357157537518551 / 2500000000000000 : ℚ)
  supportSlope := (-3215241273526459 / 1000000000000000 : ℚ)
  oldCenter := (1357157537518551 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_975
  oldLo := (27124999999999999 / 50000000000000000 : ℚ)
  oldHi := (13575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1282]
}

def cell_9556 : Cell := { cellDefaults with
  domain := ⟨(20125000000000001 / 50000000000000000 : ℚ), (16103631284916201 / 40000000000000000 : ℚ)⟩
  r := (69596464782731 / 100000000000000 : ℚ)
  w := (15727022995977 / 10000000000000 : ℚ)
  center := (161018156424581009 / 400000000000000000 : ℚ)
  supportValue := (5434484272152877 / 10000000000000000 : ℚ)
  supportSlope := (-16089339262243787 / 5000000000000000 : ℚ)
  oldCenter := (5434484272152877 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_976
  oldLo := (13575000000000001 / 25000000000000000 : ℚ)
  oldHi := (13600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1283, piece_1284]
}

def cell_9557 : Cell := { cellDefaults with
  domain := ⟨(16103631284916201 / 40000000000000000 : ℚ), (40268156424581003 / 100000000000000000 : ℚ)⟩
  r := (69596464782731 / 100000000000000 : ℚ)
  w := (15727022995977 / 10000000000000 : ℚ)
  center := (161054469273743011 / 400000000000000000 : ℚ)
  supportValue := (5431560295913683 / 10000000000000000 : ℚ)
  supportSlope := (-6430660343269107 / 2000000000000000 : ℚ)
  oldCenter := (5431560295913683 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_976
  oldLo := (13575000000000001 / 25000000000000000 : ℚ)
  oldHi := (27174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1283]
}

def cell_9558 : Cell := { cellDefaults with
  domain := ⟨(40268156424581003 / 100000000000000000 : ℚ), (20137500000000001 / 50000000000000000 : ℚ)⟩
  r := (69596464782731 / 100000000000000 : ℚ)
  w := (15727022995977 / 10000000000000 : ℚ)
  center := (16108631284916201 / 40000000000000000 : ℚ)
  supportValue := (8686402220529 / 16000000000000 : ℚ)
  supportSlope := (-3213451971965631 / 1000000000000000 : ℚ)
  oldCenter := (8686402220529 / 16000000000000 : ℚ)
  newCoefficients := coefficients_977
  oldLo := (27124999999999999 / 50000000000000000 : ℚ)
  oldHi := (27174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1282, piece_1283]
}

def cell_9559 : Cell := { cellDefaults with
  domain := ⟨(20137500000000001 / 50000000000000000 : ℚ), (20140625000000001 / 50000000000000000 : ℚ)⟩
  r := (69596464782731 / 100000000000000 : ℚ)
  w := (15727022995977 / 10000000000000 : ℚ)
  center := (20139062500000001 / 50000000000000000 : ℚ)
  supportValue := (5426898230568727 / 10000000000000000 : ℚ)
  supportSlope := (-200720540971977 / 62500000000000 : ℚ)
  oldCenter := (5426898230568727 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_977
  oldLo := (27124999999999999 / 50000000000000000 : ℚ)
  oldHi := (13575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1282]
}

def cell_9560 : Cell := { cellDefaults with
  domain := ⟨(20140625000000001 / 50000000000000000 : ℚ), (20143750000000001 / 50000000000000000 : ℚ)⟩
  r := (69596464782731 / 100000000000000 : ℚ)
  w := (15727022995977 / 10000000000000 : ℚ)
  center := (20142187500000001 / 50000000000000000 : ℚ)
  supportValue := (1356222896791941 / 2500000000000000 : ℚ)
  supportSlope := (-1604978620333597 / 500000000000000 : ℚ)
  oldCenter := (1356222896791941 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_977
  oldLo := (13550000000000001 / 25000000000000000 : ℚ)
  oldHi := (13575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1281, piece_1282]
}

def cell_9561 : Cell := { cellDefaults with
  domain := ⟨(20143750000000001 / 50000000000000000 : ℚ), (20146875000000001 / 50000000000000000 : ℚ)⟩
  r := (69596464782731 / 100000000000000 : ℚ)
  w := (15727022995977 / 10000000000000 : ℚ)
  center := (20145312500000001 / 50000000000000000 : ℚ)
  supportValue := (5422885800569287 / 10000000000000000 : ℚ)
  supportSlope := (-32083292888778203 / 10000000000000000 : ℚ)
  oldCenter := (5422885800569287 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_977
  oldLo := (13550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1281]
}

def cell_9562 : Cell := { cellDefaults with
  domain := ⟨(20146875000000001 / 50000000000000000 : ℚ), (20150000000000001 / 50000000000000000 : ℚ)⟩
  r := (69596464782731 / 100000000000000 : ℚ)
  w := (15727022995977 / 10000000000000 : ℚ)
  center := (20148437500000001 / 50000000000000000 : ℚ)
  supportValue := (5420881174044693 / 10000000000000000 : ℚ)
  supportSlope := (-1603252810948419 / 500000000000000 : ℚ)
  oldCenter := (5420881174044693 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_977
  oldLo := (27074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1280, piece_1281]
}

def cell_9563 : Cell := { cellDefaults with
  domain := ⟨(20150000000000001 / 50000000000000000 : ℚ), (322450000000000017 / 800000000000000000 : ℚ)⟩
  center := (644850000000000033 / 1600000000000000000 : ℚ)
  supportValue := (2713585414295347 / 5000000000000000 : ℚ)
  supportSlope := (-3209671912422543 / 1000000000000000 : ℚ)
  oldCenter := (2713585414295347 / 5000000000000000 : ℚ)
  oldLo := (27124999999999999 / 50000000000000000 : ℚ)
  oldHi := (13575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1282]
}

def cell_9564 : Cell := { cellDefaults with
  domain := ⟨(322450000000000017 / 800000000000000000 : ℚ), (161250000000000009 / 400000000000000000 : ℚ)⟩
  center := (128990000000000007 / 320000000000000000 : ℚ)
  supportValue := (67814567029407 / 125000000000000 : ℚ)
  supportSlope := (-1604016654802333 / 500000000000000 : ℚ)
  oldCenter := (67814567029407 / 125000000000000 : ℚ)
  oldLo := (13550000000000001 / 25000000000000000 : ℚ)
  oldHi := (13575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1281, piece_1282]
}

def cell_9565 : Cell := { cellDefaults with
  domain := ⟨(161250000000000009 / 400000000000000000 : ℚ), (322550000000000019 / 800000000000000000 : ℚ)⟩
  center := (645050000000000037 / 1600000000000000000 : ℚ)
  supportValue := (2169264303861 / 4000000000000 : ℚ)
  supportSlope := (-400809812372219 / 125000000000000 : ℚ)
  oldCenter := (2169264303861 / 4000000000000 : ℚ)
  oldLo := (13550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1281]
}

def cell_9566 : Cell := { cellDefaults with
  domain := ⟨(322550000000000019 / 800000000000000000 : ℚ), (16130000000000001 / 40000000000000000 : ℚ)⟩
  center := (645150000000000039 / 1600000000000000000 : ℚ)
  supportValue := (677644661118829 / 1250000000000000 : ℚ)
  supportSlope := (-1602313158167913 / 500000000000000 : ℚ)
  oldCenter := (677644661118829 / 1250000000000000 : ℚ)
  oldLo := (13550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1281]
}

def cell_9567 : Cell := { cellDefaults with
  domain := ⟨(16130000000000001 / 40000000000000000 : ℚ), (322650000000000021 / 800000000000000000 : ℚ)⟩
  center := (645250000000000041 / 1600000000000000000 : ℚ)
  supportValue := (1354788709818061 / 2500000000000000 : ℚ)
  supportSlope := (-2002031394594499 / 625000000000000 : ℚ)
  oldCenter := (1354788709818061 / 2500000000000000 : ℚ)
  oldLo := (27074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1280, piece_1281]
}

def cell_9568 : Cell := { cellDefaults with
  domain := ⟨(322650000000000021 / 800000000000000000 : ℚ), (161350000000000011 / 400000000000000000 : ℚ)⟩
  center := (645350000000000043 / 1600000000000000000 : ℚ)
  supportValue := (67714417013373 / 125000000000000 : ℚ)
  supportSlope := (-3201438873567433 / 1000000000000000 : ℚ)
  oldCenter := (67714417013373 / 125000000000000 : ℚ)
  oldLo := (27074999999999999 / 50000000000000000 : ℚ)
  oldHi := (13550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1280]
}

def cell_9569 : Cell := { cellDefaults with
  domain := ⟨(161350000000000011 / 400000000000000000 : ℚ), (322750000000000023 / 800000000000000000 : ℚ)⟩
  center := (129090000000000009 / 320000000000000000 : ℚ)
  supportValue := (2707576519585897 / 5000000000000000 : ℚ)
  supportSlope := (-7999521398662619 / 2500000000000000 : ℚ)
  oldCenter := (2707576519585897 / 5000000000000000 : ℚ)
  oldHi := (13550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1279, piece_1280]
}

def cell_9570 : Cell := { cellDefaults with
  domain := ⟨(322750000000000023 / 800000000000000000 : ℚ), (40350000000000003 / 100000000000000000 : ℚ)⟩
  center := (645550000000000047 / 1600000000000000000 : ℚ)
  supportValue := (5413153574867723 / 10000000000000000 : ℚ)
  supportSlope := (-31982562929861373 / 10000000000000000 : ℚ)
  oldCenter := (5413153574867723 / 10000000000000000 : ℚ)
  oldHi := (27074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1279]
}

def cell_9571 : Cell := { cellDefaults with
  domain := ⟨(40350000000000003 / 100000000000000000 : ℚ), (40356250000000003 / 100000000000000000 : ℚ)⟩
  r := (13901235148713 / 20000000000000 : ℚ)
  w := (15713841787983 / 10000000000000 : ℚ)
  center := (40353125000000003 / 100000000000000000 : ℚ)
  supportValue := (1354856967133301 / 2500000000000000 : ℚ)
  supportSlope := (-16006649181861121 / 5000000000000000 : ℚ)
  oldCenter := (1354856967133301 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_979
  oldLo := (27074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1280, piece_1281]
}

def cell_9572 : Cell := { cellDefaults with
  domain := ⟨(40356250000000003 / 100000000000000000 : ℚ), (40362500000000003 / 100000000000000000 : ℚ)⟩
  r := (13901235148713 / 20000000000000 : ℚ)
  w := (15713841787983 / 10000000000000 : ℚ)
  center := (40359375000000003 / 100000000000000000 : ℚ)
  supportValue := (541742754578029 / 1000000000000000 : ℚ)
  supportSlope := (-1599795853918451 / 500000000000000 : ℚ)
  oldCenter := (541742754578029 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_979
  oldLo := (27074999999999999 / 50000000000000000 : ℚ)
  oldHi := (13550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1280]
}

def cell_9573 : Cell := { cellDefaults with
  domain := ⟨(40362500000000003 / 100000000000000000 : ℚ), (40368750000000003 / 100000000000000000 : ℚ)⟩
  r := (13901235148713 / 20000000000000 : ℚ)
  w := (15713841787983 / 10000000000000 : ℚ)
  center := (40365625000000003 / 100000000000000000 : ℚ)
  supportValue := (5415428377391267 / 10000000000000000 : ℚ)
  supportSlope := (-799473346413393 / 250000000000000 : ℚ)
  oldCenter := (5415428377391267 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_979
  oldHi := (13550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1279, piece_1280]
}

def cell_9574 : Cell := { cellDefaults with
  domain := ⟨(40368750000000003 / 100000000000000000 : ℚ), (40375000000000003 / 100000000000000000 : ℚ)⟩
  r := (13901235148713 / 20000000000000 : ℚ)
  w := (15713841787983 / 10000000000000 : ℚ)
  center := (40371875000000003 / 100000000000000000 : ℚ)
  supportValue := (5413430109086161 / 10000000000000000 : ℚ)
  supportSlope := (-639283076311159 / 200000000000000 : ℚ)
  oldCenter := (5413430109086161 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_979
  oldHi := (27074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1279]
}

def cell_9575 : Cell := { cellDefaults with
  domain := ⟨(40375000000000003 / 100000000000000000 : ℚ), (40381250000000003 / 100000000000000000 : ℚ)⟩
  r := (13901235148713 / 20000000000000 : ℚ)
  w := (15713841787983 / 10000000000000 : ℚ)
  center := (40378125000000003 / 100000000000000000 : ℚ)
  supportValue := (1082286585111047 / 2000000000000000 : ℚ)
  supportSlope := (-3194570491835691 / 1000000000000000 : ℚ)
  oldCenter := (1082286585111047 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_979
  oldHi := (27074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1279]
}

def cell_9576 : Cell := { cellDefaults with
  domain := ⟨(40381250000000003 / 100000000000000000 : ℚ), (40387500000000003 / 100000000000000000 : ℚ)⟩
  r := (13901235148713 / 20000000000000 : ℚ)
  w := (15713841787983 / 10000000000000 : ℚ)
  center := (40384375000000003 / 100000000000000000 : ℚ)
  supportValue := (5409436803082719 / 10000000000000000 : ℚ)
  supportSlope := (-15965656753689217 / 5000000000000000 : ℚ)
  oldCenter := (5409436803082719 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_979
  oldLo := (27024999999999999 / 50000000000000000 : ℚ)
  oldHi := (27074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1277, piece_1278, piece_1279]
}

def cell_9577 : Cell := { cellDefaults with
  domain := ⟨(40387500000000003 / 100000000000000000 : ℚ), (40393750000000003 / 100000000000000000 : ℚ)⟩
  r := (13901235148713 / 20000000000000 : ℚ)
  w := (15713841787983 / 10000000000000 : ℚ)
  center := (40390625000000003 / 100000000000000000 : ℚ)
  supportValue := (5407441601687809 / 10000000000000000 : ℚ)
  supportSlope := (-3989249533318251 / 1250000000000000 : ℚ)
  oldCenter := (5407441601687809 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_979
  oldLo := (27024999999999999 / 50000000000000000 : ℚ)
  oldHi := (540949720670391 / 1000000000000000 : ℚ)
  oldPieces := [piece_1277]
}

def cell_9578 : Cell := { cellDefaults with
  domain := ⟨(40393750000000003 / 100000000000000000 : ℚ), (40400000000000003 / 100000000000000000 : ℚ)⟩
  r := (13901235148713 / 20000000000000 : ℚ)
  w := (15713841787983 / 10000000000000 : ℚ)
  center := (40396875000000003 / 100000000000000000 : ℚ)
  supportValue := (5405447552045249 / 10000000000000000 : ℚ)
  supportSlope := (-7974252275140259 / 2500000000000000 : ℚ)
  oldCenter := (5405447552045249 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_979
  oldLo := (13500000000000001 / 25000000000000000 : ℚ)
  oldHi := (540949720670391 / 1000000000000000 : ℚ)
  oldPieces := [piece_1276, piece_1277]
}

def cell_9579 : Cell := { cellDefaults with
  domain := ⟨(40400000000000003 / 100000000000000000 : ℚ), (40406250000000003 / 100000000000000000 : ℚ)⟩
  r := (1085330158357 / 1562500000000 : ℚ)
  w := (15707272735639 / 10000000000000 : ℚ)
  center := (40403125000000003 / 100000000000000000 : ℚ)
  supportValue := (5411705597892549 / 10000000000000000 : ℚ)
  supportSlope := (-15963632179190057 / 5000000000000000 : ℚ)
  oldCenter := (5411705597892549 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_980
  oldHi := (27074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1279]
}

def cell_9580 : Cell := { cellDefaults with
  domain := ⟨(40406250000000003 / 100000000000000000 : ℚ), (40412500000000003 / 100000000000000000 : ℚ)⟩
  r := (1085330158357 / 1562500000000 : ℚ)
  w := (15707272735639 / 10000000000000 : ℚ)
  center := (40409375000000003 / 100000000000000000 : ℚ)
  supportValue := (5409710671297417 / 10000000000000000 : ℚ)
  supportSlope := (-6382439078670643 / 2000000000000000 : ℚ)
  oldCenter := (5409710671297417 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_980
  oldLo := (27024999999999999 / 50000000000000000 : ℚ)
  oldHi := (27074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1277, piece_1278, piece_1279]
}

def cell_9581 : Cell := { cellDefaults with
  domain := ⟨(40412500000000003 / 100000000000000000 : ℚ), (40418750000000003 / 100000000000000000 : ℚ)⟩
  r := (1085330158357 / 1562500000000 : ℚ)
  w := (15707272735639 / 10000000000000 : ℚ)
  center := (40415625000000003 / 100000000000000000 : ℚ)
  supportValue := (1351929154883487 / 2500000000000000 : ℚ)
  supportSlope := (-31895616780168723 / 10000000000000000 : ℚ)
  oldCenter := (1351929154883487 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_980
  oldLo := (27024999999999999 / 50000000000000000 : ℚ)
  oldHi := (540949720670391 / 1000000000000000 : ℚ)
  oldPieces := [piece_1277]
}

def cell_9582 : Cell := { cellDefaults with
  domain := ⟨(40418750000000003 / 100000000000000000 : ℚ), (40425000000000003 / 100000000000000000 : ℚ)⟩
  r := (1085330158357 / 1562500000000 : ℚ)
  w := (15707272735639 / 10000000000000 : ℚ)
  center := (40421875000000003 / 100000000000000000 : ℚ)
  supportValue := (5405723717664371 / 10000000000000000 : ℚ)
  supportSlope := (-1593897045868431 / 500000000000000 : ℚ)
  oldCenter := (5405723717664371 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_980
  oldLo := (13500000000000001 / 25000000000000000 : ℚ)
  oldHi := (540949720670391 / 1000000000000000 : ℚ)
  oldPieces := [piece_1276, piece_1277]
}

def cell_9583 : Cell := { cellDefaults with
  domain := ⟨(40425000000000003 / 100000000000000000 : ℚ), (40431250000000003 / 100000000000000000 : ℚ)⟩
  r := (1085330158357 / 1562500000000 : ℚ)
  w := (15707272735639 / 10000000000000 : ℚ)
  center := (40428125000000003 / 100000000000000000 : ℚ)
  supportValue := (5403731758390777 / 10000000000000000 : ℚ)
  supportSlope := (-31864022491063793 / 10000000000000000 : ℚ)
  oldCenter := (5403731758390777 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_980
  oldLo := (13500000000000001 / 25000000000000000 : ℚ)
  oldHi := (27024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1276]
}

def cell_9584 : Cell := { cellDefaults with
  domain := ⟨(40431250000000003 / 100000000000000000 : ℚ), (40437500000000003 / 100000000000000000 : ℚ)⟩
  r := (1085330158357 / 1562500000000 : ℚ)
  w := (15707272735639 / 10000000000000 : ℚ)
  center := (40434375000000003 / 100000000000000000 : ℚ)
  supportValue := (1080348166163461 / 2000000000000000 : ℚ)
  supportSlope := (-1592282282746993 / 500000000000000 : ℚ)
  oldCenter := (1080348166163461 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_980
  oldLo := (13500000000000001 / 25000000000000000 : ℚ)
  oldHi := (27024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1276]
}

def cell_9585 : Cell := { cellDefaults with
  domain := ⟨(40437500000000003 / 100000000000000000 : ℚ), (40443750000000003 / 100000000000000000 : ℚ)⟩
  r := (1085330158357 / 1562500000000 : ℚ)
  w := (15707272735639 / 10000000000000 : ℚ)
  center := (40440625000000003 / 100000000000000000 : ℚ)
  supportValue := (5399751010296371 / 10000000000000000 : ℚ)
  supportSlope := (-3183053505363631 / 1000000000000000 : ℚ)
  oldCenter := (5399751010296371 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_980
  oldLo := (26974999999999999 / 50000000000000000 : ℚ)
  oldHi := (27024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1275, piece_1276]
}

def cell_9586 : Cell := { cellDefaults with
  domain := ⟨(40443750000000003 / 100000000000000000 : ℚ), (40450000000000003 / 100000000000000000 : ℚ)⟩
  r := (1085330158357 / 1562500000000 : ℚ)
  w := (15707272735639 / 10000000000000 : ℚ)
  center := (40446875000000003 / 100000000000000000 : ℚ)
  supportValue := (337360128360051 / 625000000000000 : ℚ)
  supportSlope := (-15907057321662421 / 5000000000000000 : ℚ)
  oldCenter := (337360128360051 / 625000000000000 : ℚ)
  newCoefficients := coefficients_980
  oldLo := (26974999999999999 / 50000000000000000 : ℚ)
  oldHi := (13500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1275]
}

def cell_9587 : Cell := { cellDefaults with
  domain := ⟨(40450000000000003 / 100000000000000000 : ℚ), (40456250000000003 / 100000000000000000 : ℚ)⟩
  r := (69416147401621 / 100000000000000 : ℚ)
  w := (15700717569543 / 10000000000000 : ℚ)
  center := (40453125000000003 / 100000000000000000 : ℚ)
  supportValue := (5404004887788971 / 10000000000000000 : ℚ)
  supportSlope := (-31845649448918323 / 10000000000000000 : ℚ)
  oldCenter := (5404004887788971 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_981
  oldLo := (13500000000000001 / 25000000000000000 : ℚ)
  oldHi := (540949720670391 / 1000000000000000 : ℚ)
  oldPieces := [piece_1276, piece_1277]
}

def cell_9588 : Cell := { cellDefaults with
  domain := ⟨(40456250000000003 / 100000000000000000 : ℚ), (40462500000000003 / 100000000000000000 : ℚ)⟩
  r := (69416147401621 / 100000000000000 : ℚ)
  w := (15700717569543 / 10000000000000 : ℚ)
  center := (40459375000000003 / 100000000000000000 : ℚ)
  supportValue := (2701007553802157 / 5000000000000000 : ℚ)
  supportSlope := (-31827302255855727 / 10000000000000000 : ℚ)
  oldCenter := (2701007553802157 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_981
  oldLo := (13500000000000001 / 25000000000000000 : ℚ)
  oldHi := (27024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1276]
}

def cell_9589 : Cell := { cellDefaults with
  domain := ⟨(40462500000000003 / 100000000000000000 : ℚ), (40468750000000003 / 100000000000000000 : ℚ)⟩
  r := (69416147401621 / 100000000000000 : ℚ)
  w := (15700717569543 / 10000000000000 : ℚ)
  center := (40465625000000003 / 100000000000000000 : ℚ)
  supportValue := (1080005294701529 / 2000000000000000 : ℚ)
  supportSlope := (-31811502401914993 / 10000000000000000 : ℚ)
  oldCenter := (1080005294701529 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_981
  oldLo := (26974999999999999 / 50000000000000000 : ℚ)
  oldHi := (27024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1275, piece_1276]
}

def cell_9590 : Cell := { cellDefaults with
  domain := ⟨(40468750000000003 / 100000000000000000 : ℚ), (40475000000000003 / 100000000000000000 : ℚ)⟩
  r := (69416147401621 / 100000000000000 : ℚ)
  w := (15700717569543 / 10000000000000 : ℚ)
  center := (40471875000000003 / 100000000000000000 : ℚ)
  supportValue := (1349509666171631 / 2500000000000000 : ℚ)
  supportSlope := (-635916618309551 / 200000000000000 : ℚ)
  oldCenter := (1349509666171631 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_981
  oldLo := (26974999999999999 / 50000000000000000 : ℚ)
  oldHi := (13500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1275]
}

def cell_9591 : Cell := { cellDefaults with
  domain := ⟨(40475000000000003 / 100000000000000000 : ℚ), (40481250000000003 / 100000000000000000 : ℚ)⟩
  r := (69416147401621 / 100000000000000 : ℚ)
  w := (15700717569543 / 10000000000000 : ℚ)
  center := (40478125000000003 / 100000000000000000 : ℚ)
  supportValue := (1079210399440321 / 2000000000000000 : ℚ)
  supportSlope := (-31777514423367847 / 10000000000000000 : ℚ)
  oldCenter := (1079210399440321 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_981
  oldLo := (26974999999999999 / 50000000000000000 : ℚ)
  oldHi := (13500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1275]
}

def cell_9592 : Cell := { cellDefaults with
  domain := ⟨(40481250000000003 / 100000000000000000 : ℚ), (40487500000000003 / 100000000000000000 : ℚ)⟩
  r := (69416147401621 / 100000000000000 : ℚ)
  w := (15700717569543 / 10000000000000 : ℚ)
  center := (40484375000000003 / 100000000000000000 : ℚ)
  supportValue := (2697033160493469 / 5000000000000000 : ℚ)
  supportSlope := (-397053172667583 / 125000000000000 : ℚ)
  oldCenter := (2697033160493469 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_981
  oldLo := (53900000000000003 / 100000000000000000 : ℚ)
  oldHi := (13500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1274, piece_1275]
}

def cell_9593 : Cell := { cellDefaults with
  domain := ⟨(40487500000000003 / 100000000000000000 : ℚ), (40493750000000003 / 100000000000000000 : ℚ)⟩
  r := (69416147401621 / 100000000000000 : ℚ)
  w := (15700717569543 / 10000000000000 : ℚ)
  center := (40490625000000003 / 100000000000000000 : ℚ)
  supportValue := (2696040808657217 / 5000000000000000 : ℚ)
  supportSlope := (-15873049507746373 / 5000000000000000 : ℚ)
  oldCenter := (2696040808657217 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_981
  oldLo := (53900000000000003 / 100000000000000000 : ℚ)
  oldHi := (26974999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1274]
}

def cell_9594 : Cell := { cellDefaults with
  domain := ⟨(40493750000000003 / 100000000000000000 : ℚ), (40500000000000003 / 100000000000000000 : ℚ)⟩
  r := (69416147401621 / 100000000000000 : ℚ)
  w := (15700717569543 / 10000000000000 : ℚ)
  center := (40496875000000003 / 100000000000000000 : ℚ)
  supportValue := (5390098057113663 / 10000000000000000 : ℚ)
  supportSlope := (-6346032490640141 / 2000000000000000 : ℚ)
  oldCenter := (5390098057113663 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_981
  oldLo := (26924999999999999 / 50000000000000000 : ℚ)
  oldHi := (26974999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1273, piece_1274]
}

def cell_9595 : Cell := { cellDefaults with
  domain := ⟨(40500000000000003 / 100000000000000000 : ℚ), (40506250000000003 / 100000000000000000 : ℚ)⟩
  r := (69371228333857 / 100000000000000 : ℚ)
  w := (1569417705187 / 1000000000000 : ℚ)
  center := (40503125000000003 / 100000000000000000 : ℚ)
  supportValue := (5396325119437759 / 10000000000000000 : ℚ)
  supportSlope := (-3175920477239913 / 1000000000000000 : ℚ)
  oldCenter := (5396325119437759 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_982
  oldLo := (26974999999999999 / 50000000000000000 : ℚ)
  oldHi := (13500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1275]
}

def cell_9596 : Cell := { cellDefaults with
  domain := ⟨(40506250000000003 / 100000000000000000 : ℚ), (40512500000000003 / 100000000000000000 : ℚ)⟩
  r := (69371228333857 / 100000000000000 : ℚ)
  w := (1569417705187 / 1000000000000 : ℚ)
  center := (40509375000000003 / 100000000000000000 : ℚ)
  supportValue := (5394340631459729 / 10000000000000000 : ℚ)
  supportSlope := (-1984078565497871 / 625000000000000 : ℚ)
  oldCenter := (5394340631459729 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_982
  oldLo := (53900000000000003 / 100000000000000000 : ℚ)
  oldHi := (13500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1274, piece_1275]
}

def cell_9597 : Cell := { cellDefaults with
  domain := ⟨(40512500000000003 / 100000000000000000 : ℚ), (40518750000000003 / 100000000000000000 : ℚ)⟩
  r := (69371228333857 / 100000000000000 : ℚ)
  w := (1569417705187 / 1000000000000 : ℚ)
  center := (40515625000000003 / 100000000000000000 : ℚ)
  supportValue := (168511158416867 / 312500000000000 : ℚ)
  supportSlope := (-1586392447624263 / 500000000000000 : ℚ)
  oldCenter := (168511158416867 / 312500000000000 : ℚ)
  newCoefficients := coefficients_982
  oldLo := (53900000000000003 / 100000000000000000 : ℚ)
  oldHi := (26974999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1274]
}

def cell_9598 : Cell := { cellDefaults with
  domain := ⟨(40518750000000003 / 100000000000000000 : ℚ), (40525000000000003 / 100000000000000000 : ℚ)⟩
  r := (69371228333857 / 100000000000000 : ℚ)
  w := (1569417705187 / 1000000000000 : ℚ)
  center := (40521875000000003 / 100000000000000000 : ℚ)
  supportValue := (1347593662211413 / 2500000000000000 : ℚ)
  supportSlope := (-3963901857555463 / 1250000000000000 : ℚ)
  oldCenter := (1347593662211413 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_982
  oldLo := (26924999999999999 / 50000000000000000 : ℚ)
  oldHi := (26974999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1273, piece_1274]
}

def cell_9599 : Cell := { cellDefaults with
  domain := ⟨(40525000000000003 / 100000000000000000 : ℚ), (40531250000000003 / 100000000000000000 : ℚ)⟩
  r := (69371228333857 / 100000000000000 : ℚ)
  w := (1569417705187 / 1000000000000 : ℚ)
  center := (40528125000000003 / 100000000000000000 : ℚ)
  supportValue := (2694196552558329 / 5000000000000000 : ℚ)
  supportSlope := (-3962067680762793 / 1250000000000000 : ℚ)
  oldCenter := (2694196552558329 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_982
  oldLo := (26924999999999999 / 50000000000000000 : ℚ)
  oldHi := (53900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1273]
}

theorem check_9550 : cell_9550.check = true := by
  decide +kernel

theorem check_9551 : cell_9551.check = true := by
  decide +kernel

theorem check_9552 : cell_9552.check = true := by
  decide +kernel

theorem check_9553 : cell_9553.check = true := by
  decide +kernel

theorem check_9554 : cell_9554.check = true := by
  decide +kernel

theorem check_9555 : cell_9555.check = true := by
  decide +kernel

theorem check_9556 : cell_9556.check = true := by
  decide +kernel

theorem check_9557 : cell_9557.check = true := by
  decide +kernel

theorem check_9558 : cell_9558.check = true := by
  decide +kernel

theorem check_9559 : cell_9559.check = true := by
  decide +kernel

theorem check_9560 : cell_9560.check = true := by
  decide +kernel

theorem check_9561 : cell_9561.check = true := by
  decide +kernel

theorem check_9562 : cell_9562.check = true := by
  decide +kernel

theorem check_9563 : cell_9563.check = true := by
  decide +kernel

theorem check_9564 : cell_9564.check = true := by
  decide +kernel

theorem check_9565 : cell_9565.check = true := by
  decide +kernel

theorem check_9566 : cell_9566.check = true := by
  decide +kernel

theorem check_9567 : cell_9567.check = true := by
  decide +kernel

theorem check_9568 : cell_9568.check = true := by
  decide +kernel

theorem check_9569 : cell_9569.check = true := by
  decide +kernel

theorem check_9570 : cell_9570.check = true := by
  decide +kernel

theorem check_9571 : cell_9571.check = true := by
  decide +kernel

theorem check_9572 : cell_9572.check = true := by
  decide +kernel

theorem check_9573 : cell_9573.check = true := by
  decide +kernel

theorem check_9574 : cell_9574.check = true := by
  decide +kernel

theorem check_9575 : cell_9575.check = true := by
  decide +kernel

theorem check_9576 : cell_9576.check = true := by
  decide +kernel

theorem check_9577 : cell_9577.check = true := by
  decide +kernel

theorem check_9578 : cell_9578.check = true := by
  decide +kernel

theorem check_9579 : cell_9579.check = true := by
  decide +kernel

theorem check_9580 : cell_9580.check = true := by
  decide +kernel

theorem check_9581 : cell_9581.check = true := by
  decide +kernel

theorem check_9582 : cell_9582.check = true := by
  decide +kernel

theorem check_9583 : cell_9583.check = true := by
  decide +kernel

theorem check_9584 : cell_9584.check = true := by
  decide +kernel

theorem check_9585 : cell_9585.check = true := by
  decide +kernel

theorem check_9586 : cell_9586.check = true := by
  decide +kernel

theorem check_9587 : cell_9587.check = true := by
  decide +kernel

theorem check_9588 : cell_9588.check = true := by
  decide +kernel

theorem check_9589 : cell_9589.check = true := by
  decide +kernel

theorem check_9590 : cell_9590.check = true := by
  decide +kernel

theorem check_9591 : cell_9591.check = true := by
  decide +kernel

theorem check_9592 : cell_9592.check = true := by
  decide +kernel

theorem check_9593 : cell_9593.check = true := by
  decide +kernel

theorem check_9594 : cell_9594.check = true := by
  decide +kernel

theorem check_9595 : cell_9595.check = true := by
  decide +kernel

theorem check_9596 : cell_9596.check = true := by
  decide +kernel

theorem check_9597 : cell_9597.check = true := by
  decide +kernel

theorem check_9598 : cell_9598.check = true := by
  decide +kernel

theorem check_9599 : cell_9599.check = true := by
  decide +kernel

def cells : List Cell := [cell_9550, cell_9551, cell_9552, cell_9553, cell_9554, cell_9555, cell_9556, cell_9557, cell_9558, cell_9559, cell_9560, cell_9561, cell_9562, cell_9563, cell_9564, cell_9565, cell_9566, cell_9567, cell_9568, cell_9569, cell_9570, cell_9571, cell_9572, cell_9573, cell_9574, cell_9575, cell_9576, cell_9577, cell_9578, cell_9579, cell_9580, cell_9581, cell_9582, cell_9583, cell_9584, cell_9585, cell_9586, cell_9587, cell_9588, cell_9589, cell_9590, cell_9591, cell_9592, cell_9593, cell_9594, cell_9595, cell_9596, cell_9597, cell_9598, cell_9599]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9550, check_9551, check_9552, check_9553, check_9554, check_9555, check_9556, check_9557, check_9558, check_9559, check_9560, check_9561, check_9562, check_9563, check_9564, check_9565, check_9566, check_9567, check_9568, check_9569, check_9570, check_9571, check_9572, check_9573, check_9574, check_9575, check_9576, check_9577, check_9578, check_9579, check_9580, check_9581, check_9582, check_9583, check_9584, check_9585, check_9586, check_9587, check_9588, check_9589, check_9590, check_9591, check_9592, check_9593, check_9594, check_9595, check_9596, check_9597, check_9598, check_9599, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0191

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0191
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0191
open AnalyticBounds.ExpressionCertificate

theorem linked_9550 : Linked cell_9550 pieces := by
  link_source cell_9550 with piece_975 using piece_975_mem, piece_1284_mem

theorem linked_9551 : Linked cell_9551 pieces := by
  link_source cell_9551 with piece_975 using piece_975_mem, piece_1284_mem

theorem linked_9552 : Linked cell_9552 pieces := by
  link_source cell_9552 with piece_975 using piece_975_mem, ⟨piece_1283_mem, piece_1284_mem⟩

theorem linked_9553 : Linked cell_9553 pieces := by
  link_source cell_9553 with piece_975 using piece_975_mem, piece_1283_mem

theorem linked_9554 : Linked cell_9554 pieces := by
  link_source cell_9554 with piece_975 using piece_975_mem, ⟨piece_1282_mem, piece_1283_mem⟩

theorem linked_9555 : Linked cell_9555 pieces := by
  link_source cell_9555 with piece_975 using piece_975_mem, piece_1282_mem

theorem linked_9556 : Linked cell_9556 pieces := by
  link_source cell_9556 with piece_976 using piece_976_mem, ⟨piece_1283_mem, piece_1284_mem⟩

theorem linked_9557 : Linked cell_9557 pieces := by
  link_source cell_9557 with piece_976 using piece_976_mem, piece_1283_mem

theorem linked_9558 : Linked cell_9558 pieces := by
  link_source cell_9558 with piece_977 using piece_977_mem, ⟨piece_1282_mem, piece_1283_mem⟩

theorem linked_9559 : Linked cell_9559 pieces := by
  link_source cell_9559 with piece_977 using piece_977_mem, piece_1282_mem

theorem linked_9560 : Linked cell_9560 pieces := by
  link_source cell_9560 with piece_977 using piece_977_mem, ⟨piece_1281_mem, piece_1282_mem⟩

theorem linked_9561 : Linked cell_9561 pieces := by
  link_source cell_9561 with piece_977 using piece_977_mem, piece_1281_mem

theorem linked_9562 : Linked cell_9562 pieces := by
  link_source cell_9562 with piece_977 using piece_977_mem, ⟨piece_1280_mem, piece_1281_mem⟩

theorem linked_9563 : Linked cell_9563 pieces := by
  link_source cell_9563 with piece_978 using piece_978_mem, piece_1282_mem

theorem linked_9564 : Linked cell_9564 pieces := by
  link_source cell_9564 with piece_978 using piece_978_mem, ⟨piece_1281_mem, piece_1282_mem⟩

theorem linked_9565 : Linked cell_9565 pieces := by
  link_source cell_9565 with piece_978 using piece_978_mem, piece_1281_mem

theorem linked_9566 : Linked cell_9566 pieces := by
  link_source cell_9566 with piece_978 using piece_978_mem, piece_1281_mem

theorem linked_9567 : Linked cell_9567 pieces := by
  link_source cell_9567 with piece_978 using piece_978_mem, ⟨piece_1280_mem, piece_1281_mem⟩

theorem linked_9568 : Linked cell_9568 pieces := by
  link_source cell_9568 with piece_978 using piece_978_mem, piece_1280_mem

theorem linked_9569 : Linked cell_9569 pieces := by
  link_source cell_9569 with piece_978 using piece_978_mem, ⟨piece_1279_mem, piece_1280_mem⟩

theorem linked_9570 : Linked cell_9570 pieces := by
  link_source cell_9570 with piece_978 using piece_978_mem, piece_1279_mem

theorem linked_9571 : Linked cell_9571 pieces := by
  link_source cell_9571 with piece_979 using piece_979_mem, ⟨piece_1280_mem, piece_1281_mem⟩

theorem linked_9572 : Linked cell_9572 pieces := by
  link_source cell_9572 with piece_979 using piece_979_mem, piece_1280_mem

theorem linked_9573 : Linked cell_9573 pieces := by
  link_source cell_9573 with piece_979 using piece_979_mem, ⟨piece_1279_mem, piece_1280_mem⟩

theorem linked_9574 : Linked cell_9574 pieces := by
  link_source cell_9574 with piece_979 using piece_979_mem, piece_1279_mem

theorem linked_9575 : Linked cell_9575 pieces := by
  link_source cell_9575 with piece_979 using piece_979_mem, piece_1279_mem

theorem linked_9576 : Linked cell_9576 pieces := by
  link_source cell_9576 with piece_979 using piece_979_mem, ⟨piece_1277_mem, ⟨piece_1278_mem, piece_1279_mem⟩⟩

theorem linked_9577 : Linked cell_9577 pieces := by
  link_source cell_9577 with piece_979 using piece_979_mem, piece_1277_mem

theorem linked_9578 : Linked cell_9578 pieces := by
  link_source cell_9578 with piece_979 using piece_979_mem, ⟨piece_1276_mem, piece_1277_mem⟩

theorem linked_9579 : Linked cell_9579 pieces := by
  link_source cell_9579 with piece_980 using piece_980_mem, piece_1279_mem

theorem linked_9580 : Linked cell_9580 pieces := by
  link_source cell_9580 with piece_980 using piece_980_mem, ⟨piece_1277_mem, ⟨piece_1278_mem, piece_1279_mem⟩⟩

theorem linked_9581 : Linked cell_9581 pieces := by
  link_source cell_9581 with piece_980 using piece_980_mem, piece_1277_mem

theorem linked_9582 : Linked cell_9582 pieces := by
  link_source cell_9582 with piece_980 using piece_980_mem, ⟨piece_1276_mem, piece_1277_mem⟩

theorem linked_9583 : Linked cell_9583 pieces := by
  link_source cell_9583 with piece_980 using piece_980_mem, piece_1276_mem

theorem linked_9584 : Linked cell_9584 pieces := by
  link_source cell_9584 with piece_980 using piece_980_mem, piece_1276_mem

theorem linked_9585 : Linked cell_9585 pieces := by
  link_source cell_9585 with piece_980 using piece_980_mem, ⟨piece_1275_mem, piece_1276_mem⟩

theorem linked_9586 : Linked cell_9586 pieces := by
  link_source cell_9586 with piece_980 using piece_980_mem, piece_1275_mem

theorem linked_9587 : Linked cell_9587 pieces := by
  link_source cell_9587 with piece_981 using piece_981_mem, ⟨piece_1276_mem, piece_1277_mem⟩

theorem linked_9588 : Linked cell_9588 pieces := by
  link_source cell_9588 with piece_981 using piece_981_mem, piece_1276_mem

theorem linked_9589 : Linked cell_9589 pieces := by
  link_source cell_9589 with piece_981 using piece_981_mem, ⟨piece_1275_mem, piece_1276_mem⟩

theorem linked_9590 : Linked cell_9590 pieces := by
  link_source cell_9590 with piece_981 using piece_981_mem, piece_1275_mem

theorem linked_9591 : Linked cell_9591 pieces := by
  link_source cell_9591 with piece_981 using piece_981_mem, piece_1275_mem

theorem linked_9592 : Linked cell_9592 pieces := by
  link_source cell_9592 with piece_981 using piece_981_mem, ⟨piece_1274_mem, piece_1275_mem⟩

theorem linked_9593 : Linked cell_9593 pieces := by
  link_source cell_9593 with piece_981 using piece_981_mem, piece_1274_mem

theorem linked_9594 : Linked cell_9594 pieces := by
  link_source cell_9594 with piece_981 using piece_981_mem, ⟨piece_1273_mem, piece_1274_mem⟩

theorem linked_9595 : Linked cell_9595 pieces := by
  link_source cell_9595 with piece_982 using piece_982_mem, piece_1275_mem

theorem linked_9596 : Linked cell_9596 pieces := by
  link_source cell_9596 with piece_982 using piece_982_mem, ⟨piece_1274_mem, piece_1275_mem⟩

theorem linked_9597 : Linked cell_9597 pieces := by
  link_source cell_9597 with piece_982 using piece_982_mem, piece_1274_mem

theorem linked_9598 : Linked cell_9598 pieces := by
  link_source cell_9598 with piece_982 using piece_982_mem, ⟨piece_1273_mem, piece_1274_mem⟩

theorem linked_9599 : Linked cell_9599 pieces := by
  link_source cell_9599 with piece_982 using piece_982_mem, piece_1273_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0191.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0191.cells,List.forall_mem_cons]
  exact ⟨linked_9550, linked_9551, linked_9552, linked_9553, linked_9554, linked_9555, linked_9556, linked_9557, linked_9558, linked_9559, linked_9560, linked_9561, linked_9562, linked_9563, linked_9564, linked_9565, linked_9566, linked_9567, linked_9568, linked_9569, linked_9570, linked_9571, linked_9572, linked_9573, linked_9574, linked_9575, linked_9576, linked_9577, linked_9578, linked_9579, linked_9580, linked_9581, linked_9582, linked_9583, linked_9584, linked_9585, linked_9586, linked_9587, linked_9588, linked_9589, linked_9590, linked_9591, linked_9592, linked_9593, linked_9594, linked_9595, linked_9596, linked_9597, linked_9598, linked_9599, by simp⟩

theorem covered : covers (20106250000000001 / 50000000000000000 : ℚ) (40531250000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0191.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0191
end
