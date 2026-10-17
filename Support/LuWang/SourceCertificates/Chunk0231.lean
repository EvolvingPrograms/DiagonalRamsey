import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0231
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(30862500000000001 / 50000000000000000 : ℚ), (123475000000000007 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (27349778542781 / 50000000000000 : ℚ)
  w := (6926152408427 / 5000000000000 : ℚ)
  center := (246925000000000011 / 400000000000000000 : ℚ)
  supportValue := (333412095421037 / 1000000000000000 : ℚ)
  supportSlope := (-2541220756769797 / 2000000000000000 : ℚ)
  oldCenter := (333412095421037 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1445
  oldLo := (16625000000000001 / 50000000000000000 : ℚ)
  oldHi := (16675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_11550 : Cell := { cellDefaults with
  r := (54752317092649 / 100000000000000 : ℚ)
  w := (173218857187 / 125000000000 : ℚ)
  newCoefficients := coefficients_1444
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
}

noncomputable def cell_11551 : Cell := { cellDefaults with
  domain := ⟨(123475000000000007 / 200000000000000000 : ℚ), (12350000000000001 / 20000000000000000 : ℚ)⟩
  r := (54752317092649 / 100000000000000 : ℚ)
  w := (173218857187 / 125000000000 : ℚ)
  center := (246975000000000017 / 400000000000000000 : ℚ)
  supportValue := (33325336022208907 / 100000000000000000 : ℚ)
  supportSlope := (-1269153534232029 / 1000000000000000 : ℚ)
  oldCenter := (33325336022208907 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1444
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
}

noncomputable def cell_11552 : Cell := { cellDefaults with
  domain := ⟨(12350000000000001 / 20000000000000000 : ℚ), (123525000000000007 / 200000000000000000 : ℚ)⟩
  r := (3420370021697 / 6250000000000 : ℚ)
  w := (6927450553103 / 5000000000000 : ℚ)
  center := (247025000000000017 / 400000000000000000 : ℚ)
  supportValue := (208388686070627 / 625000000000000 : ℚ)
  supportSlope := (-6350370003463597 / 5000000000000000 : ℚ)
  oldCenter := (208388686070627 / 625000000000000 : ℚ)
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825, piece_826]
}

noncomputable def cell_11553 : Cell := { cellDefaults with
  domain := ⟨(123525000000000007 / 200000000000000000 : ℚ), (30887500000000001 / 50000000000000000 : ℚ)⟩
  r := (3420370021697 / 6250000000000 : ℚ)
  w := (6927450553103 / 5000000000000 : ℚ)
  center := (247075000000000011 / 400000000000000000 : ℚ)
  supportValue := (33326299477384863 / 100000000000000000 : ℚ)
  supportSlope := (-12686288334757123 / 10000000000000000 : ℚ)
  oldCenter := (33326299477384863 / 100000000000000000 : ℚ)
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
}

noncomputable def cell_11554 : Cell := { cellDefaults with
  domain := ⟨(30887500000000001 / 50000000000000000 : ℚ), (123575000000000001 / 200000000000000000 : ℚ)⟩
  r := (3420370021697 / 6250000000000 : ℚ)
  w := (6927450553103 / 5000000000000 : ℚ)
  center := (49425000000000001 / 80000000000000000 : ℚ)
  supportValue := (3331045068287793 / 10000000000000000 : ℚ)
  supportSlope := (-791986879325563 / 625000000000000 : ℚ)
  oldCenter := (3331045068287793 / 10000000000000000 : ℚ)
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
}

noncomputable def cell_11555 : Cell := { cellDefaults with
  domain := ⟨(123575000000000001 / 200000000000000000 : ℚ), (61799999999999999 / 100000000000000000 : ℚ)⟩
  r := (3420370021697 / 6250000000000 : ℚ)
  w := (6927450553103 / 5000000000000 : ℚ)
  center := (247174999999999999 / 400000000000000000 : ℚ)
  supportValue := (3329463586601053 / 10000000000000000 : ℚ)
  supportSlope := (-12671956991800313 / 10000000000000000 : ℚ)
  oldCenter := (3329463586601053 / 10000000000000000 : ℚ)
  oldPieces := [piece_824, piece_825]
}

noncomputable def cell_11556 : Cell := { cellDefaults with
  domain := ⟨(61799999999999999 / 100000000000000000 : ℚ), (247237988826815637 / 400000000000000000 : ℚ)⟩
  center := (494437988826815633 / 800000000000000000 : ℚ)
  supportValue := (16656644320350683 / 50000000000000000 : ℚ)
  supportSlope := (-791766706199991 / 625000000000000 : ℚ)
  oldCenter := (16656644320350683 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1446
  oldLo := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_825]
}

noncomputable def cell_11557 : Cell := { cellDefaults with
  domain := ⟨(247237988826815637 / 400000000000000000 : ℚ), (123637988826815639 / 200000000000000000 : ℚ)⟩
  center := (98902793296089383 / 160000000000000000 : ℚ)
  supportValue := (6660257169484729 / 20000000000000000 : ℚ)
  supportSlope := (-316604618674901 / 250000000000000 : ℚ)
  oldCenter := (6660257169484729 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1446
  oldPieces := [piece_824, piece_825]
}

noncomputable def cell_11558 : Cell := { cellDefaults with
  domain := ⟨(123637988826815639 / 200000000000000000 : ℚ), (247313966480446919 / 400000000000000000 : ℚ)⟩
  center := (494589944134078197 / 800000000000000000 : ℚ)
  supportValue := (133156928206747 / 400000000000000 : ℚ)
  supportSlope := (-6331840844590253 / 5000000000000000 : ℚ)
  oldCenter := (133156928206747 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1446
  oldHi := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_824]
}

noncomputable def cell_11559 : Cell := { cellDefaults with
  domain := ⟨(247313966480446919 / 400000000000000000 : ℚ), (1545949720670391 / 2500000000000000 : ℚ)⟩
  center := (494665921787709479 / 800000000000000000 : ℚ)
  supportValue := (8319302581617731 / 25000000000000000 : ℚ)
  supportSlope := (-6326329137127693 / 5000000000000000 : ℚ)
  oldCenter := (8319302581617731 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1446
  oldHi := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_824]
}

noncomputable def cell_11560 : Cell := { cellDefaults with
  domain := ⟨(1545949720670391 / 2500000000000000 : ℚ), (12370000000000001 / 20000000000000000 : ℚ)⟩
  center := (24737597765363129 / 40000000000000000 : ℚ)
  supportValue := (6652722021822799 / 20000000000000000 : ℚ)
  supportSlope := (-158002712516877 / 125000000000000 : ℚ)
  oldCenter := (6652722021822799 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1447
  oldHi := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_824]
}

noncomputable def cell_11561 : Cell := { cellDefaults with
  domain := ⟨(12370000000000001 / 20000000000000000 : ℚ), (123725000000000007 / 200000000000000000 : ℚ)⟩
  r := (54673222486841 / 100000000000000 : ℚ)
  w := (1731214402999 / 1250000000000 : ℚ)
  center := (247425000000000017 / 400000000000000000 : ℚ)
  supportValue := (16640329907626983 / 50000000000000000 : ℚ)
  supportSlope := (-31624294471037 / 25000000000000 : ℚ)
  oldCenter := (16640329907626983 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1448
  oldHi := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_824]
}

noncomputable def cell_11562 : Cell := { cellDefaults with
  domain := ⟨(123725000000000007 / 200000000000000000 : ℚ), (30937500000000001 / 50000000000000000 : ℚ)⟩
  r := (54673222486841 / 100000000000000 : ℚ)
  w := (1731214402999 / 1250000000000 : ℚ)
  center := (247475000000000011 / 400000000000000000 : ℚ)
  supportValue := (831621417676181 / 2500000000000000 : ℚ)
  supportSlope := (-1579407815550849 / 1250000000000000 : ℚ)
  oldCenter := (831621417676181 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1448
  oldHi := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_824]
}

noncomputable def cell_11563 : Cell := { cellDefaults with
  domain := ⟨(30937500000000001 / 50000000000000000 : ℚ), (123775000000000001 / 200000000000000000 : ℚ)⟩
  r := (54673222486841 / 100000000000000 : ℚ)
  w := (1731214402999 / 1250000000000 : ℚ)
  center := (49505000000000001 / 80000000000000000 : ℚ)
  supportValue := (3324909360792787 / 10000000000000000 : ℚ)
  supportSlope := (-789412863740441 / 625000000000000 : ℚ)
  oldCenter := (3324909360792787 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1448
  oldLo := (16600000000000001 / 50000000000000000 : ℚ)
  oldHi := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_823, piece_824]
}

noncomputable def cell_11564 : Cell := { cellDefaults with
  domain := ⟨(123775000000000001 / 200000000000000000 : ℚ), (61899999999999999 / 100000000000000000 : ℚ)⟩
  r := (54673222486841 / 100000000000000 : ℚ)
  w := (1731214402999 / 1250000000000 : ℚ)
  center := (247574999999999999 / 400000000000000000 : ℚ)
  supportValue := (1661664075814231 / 5000000000000000 : ℚ)
  supportSlope := (-315595051588773 / 250000000000000 : ℚ)
  oldCenter := (1661664075814231 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1448
  oldLo := (16600000000000001 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_823]
}

noncomputable def cell_11565 : Cell := { cellDefaults with
  domain := ⟨(61899999999999999 / 100000000000000000 : ℚ), (123825000000000001 / 200000000000000000 : ℚ)⟩
  r := (27323458357017 / 50000000000000 : ℚ)
  w := (1730891210567 / 1250000000000 : ℚ)
  center := (247624999999999999 / 400000000000000000 : ℚ)
  supportValue := (1662501258499697 / 5000000000000000 : ℚ)
  supportSlope := (-1262434452780807 / 1000000000000000 : ℚ)
  oldCenter := (1662501258499697 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1449
  oldLo := (16600000000000001 / 50000000000000000 : ℚ)
  oldHi := (16650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_823, piece_824]
}

noncomputable def cell_11566 : Cell := { cellDefaults with
  domain := ⟨(123825000000000001 / 200000000000000000 : ℚ), (30962500000000001 / 50000000000000000 : ℚ)⟩
  r := (27323458357017 / 50000000000000 : ℚ)
  w := (1730891210567 / 1250000000000 : ℚ)
  center := (49535000000000001 / 80000000000000000 : ℚ)
  supportValue := (3323421961012841 / 10000000000000000 : ℚ)
  supportSlope := (-6309290746834637 / 5000000000000000 : ℚ)
  oldCenter := (3323421961012841 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1449
  oldLo := (16600000000000001 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_823]
}

noncomputable def cell_11567 : Cell := { cellDefaults with
  domain := ⟨(30962500000000001 / 50000000000000000 : ℚ), (123875000000000007 / 200000000000000000 : ℚ)⟩
  r := (27323458357017 / 50000000000000 : ℚ)
  w := (1730891210567 / 1250000000000 : ℚ)
  center := (247725000000000011 / 400000000000000000 : ℚ)
  supportValue := (3321845541325573 / 10000000000000000 : ℚ)
  supportSlope := (-6302070361775901 / 5000000000000000 : ℚ)
  oldCenter := (3321845541325573 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1449
  oldLo := (16600000000000001 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_823]
}

noncomputable def cell_11568 : Cell := { cellDefaults with
  domain := ⟨(123875000000000007 / 200000000000000000 : ℚ), (12390000000000001 / 20000000000000000 : ℚ)⟩
  r := (27323458357017 / 50000000000000 : ℚ)
  w := (1730891210567 / 1250000000000 : ℚ)
  center := (247775000000000017 / 400000000000000000 : ℚ)
  supportValue := (103758538976037 / 312500000000000 : ℚ)
  supportSlope := (-12595496991430633 / 10000000000000000 : ℚ)
  oldCenter := (103758538976037 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1449
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822, piece_823]
}

noncomputable def cell_11569 : Cell := { cellDefaults with
  domain := ⟨(12390000000000001 / 20000000000000000 : ℚ), (49570000000000003 / 80000000000000000 : ℚ)⟩
  r := (13655161047487 / 25000000000000 : ℚ)
  w := (2768911524377 / 2000000000000 : ℚ)
  center := (99130000000000007 / 160000000000000000 : ℚ)
  supportValue := (3321936136804991 / 10000000000000000 : ℚ)
  supportSlope := (-2519780902560139 / 2000000000000000 : ℚ)
  oldCenter := (3321936136804991 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1450
  oldLo := (16600000000000001 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_823]
}

noncomputable def cell_11570 : Cell := { cellDefaults with
  domain := ⟨(49570000000000003 / 80000000000000000 : ℚ), (24790000000000001 / 40000000000000000 : ℚ)⟩
  r := (13655161047487 / 25000000000000 : ℚ)
  w := (2768911524377 / 2000000000000 : ℚ)
  center := (19830000000000001 / 32000000000000000 : ℚ)
  supportValue := (8300911241577999 / 25000000000000000 : ℚ)
  supportSlope := (-6294627881927103 / 5000000000000000 : ℚ)
  oldCenter := (8300911241577999 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1450
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822, piece_823]
}

noncomputable def cell_11571 : Cell := { cellDefaults with
  domain := ⟨(24790000000000001 / 40000000000000000 : ℚ), (49590000000000001 / 80000000000000000 : ℚ)⟩
  r := (13655161047487 / 25000000000000 : ℚ)
  w := (2768911524377 / 2000000000000 : ℚ)
  center := (99170000000000003 / 160000000000000000 : ℚ)
  supportValue := (33187883229000237 / 100000000000000000 : ℚ)
  supportSlope := (-12587577580572977 / 10000000000000000 : ℚ)
  oldCenter := (33187883229000237 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1450
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822]
}

noncomputable def cell_11572 : Cell := { cellDefaults with
  domain := ⟨(49590000000000001 / 80000000000000000 : ℚ), (31 / 50 : ℚ)⟩
  r := (13655161047487 / 25000000000000 : ℚ)
  w := (2768911524377 / 2000000000000 : ℚ)
  center := (99190000000000001 / 160000000000000000 : ℚ)
  supportValue := (1658607888884673 / 5000000000000000 : ℚ)
  supportSlope := (-12573151768774529 / 10000000000000000 : ℚ)
  oldCenter := (1658607888884673 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1450
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822]
}

noncomputable def cell_11573 : Cell := { cellDefaults with
  domain := ⟨(31 / 50 : ℚ), (49610000000000001 / 80000000000000000 : ℚ)⟩
  r := (54594397567621 / 100000000000000 : ℚ)
  w := (13841986383013 / 10000000000000 : ℚ)
  center := (99210000000000001 / 160000000000000000 : ℚ)
  supportValue := (6637759883797163 / 20000000000000000 : ℚ)
  supportSlope := (-12582365148973003 / 10000000000000000 : ℚ)
  oldCenter := (6637759883797163 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1451
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822]
}

noncomputable def cell_11574 : Cell := { cellDefaults with
  domain := ⟨(49610000000000001 / 80000000000000000 : ℚ), (24810000000000001 / 40000000000000000 : ℚ)⟩
  r := (54594397567621 / 100000000000000 : ℚ)
  w := (13841986383013 / 10000000000000 : ℚ)
  center := (99230000000000003 / 160000000000000000 : ℚ)
  supportValue := (3317308047652289 / 10000000000000000 : ℚ)
  supportSlope := (-6283975018783121 / 5000000000000000 : ℚ)
  oldCenter := (3317308047652289 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1451
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822]
}

noncomputable def cell_11575 : Cell := { cellDefaults with
  domain := ⟨(24810000000000001 / 40000000000000000 : ℚ), (49630000000000003 / 80000000000000000 : ℚ)⟩
  r := (54594397567621 / 100000000000000 : ℚ)
  w := (13841986383013 / 10000000000000 : ℚ)
  center := (19850000000000001 / 32000000000000000 : ℚ)
  supportValue := (33157402726196733 / 100000000000000000 : ℚ)
  supportSlope := (-313853093991647 / 250000000000000 : ℚ)
  oldCenter := (33157402726196733 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1451
  oldLo := (16550000000000001 / 50000000000000000 : ℚ)
  oldHi := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_821, piece_822]
}

noncomputable def cell_11576 : Cell := { cellDefaults with
  domain := ⟨(49630000000000003 / 80000000000000000 : ℚ), (12410000000000001 / 20000000000000000 : ℚ)⟩
  r := (54594397567621 / 100000000000000 : ℚ)
  w := (13841986383013 / 10000000000000 : ℚ)
  center := (99270000000000007 / 160000000000000000 : ℚ)
  supportValue := (1657084243858261 / 5000000000000000 : ℚ)
  supportSlope := (-6278366460076773 / 5000000000000000 : ℚ)
  oldCenter := (1657084243858261 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1451
  oldLo := (16550000000000001 / 50000000000000000 : ℚ)
  oldHi := (16575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_821]
}

noncomputable def cell_11577 : Cell := { cellDefaults with
  domain := ⟨(12410000000000001 / 20000000000000000 : ℚ), (49650000000000003 / 80000000000000000 : ℚ)⟩
  r := (545681823253 / 1000000000000 : ℚ)
  w := (13839424820239 / 10000000000000 : ℚ)
  center := (99290000000000007 / 160000000000000000 : ℚ)
  supportValue := (33158280072602553 / 100000000000000000 : ℚ)
  supportSlope := (-6274192166078679 / 5000000000000000 : ℚ)
  oldCenter := (33158280072602553 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1452
  oldLo := (16575000000000001 / 50000000000000000 : ℚ)
  oldHi := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_822]
}

noncomputable def cell_11578 : Cell := { cellDefaults with
  domain := ⟨(49650000000000003 / 80000000000000000 : ℚ), (24830000000000001 / 40000000000000000 : ℚ)⟩
  r := (545681823253 / 1000000000000 : ℚ)
  w := (13839424820239 / 10000000000000 : ℚ)
  center := (19862000000000001 / 32000000000000000 : ℚ)
  supportValue := (33142616400453473 / 100000000000000000 : ℚ)
  supportSlope := (-12551055341562123 / 10000000000000000 : ℚ)
  oldCenter := (33142616400453473 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1452
  oldLo := (16550000000000001 / 50000000000000000 : ℚ)
  oldHi := (16600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_821, piece_822]
}

noncomputable def cell_11579 : Cell := { cellDefaults with
  domain := ⟨(24830000000000001 / 40000000000000000 : ℚ), (49670000000000001 / 80000000000000000 : ℚ)⟩
  r := (545681823253 / 1000000000000 : ℚ)
  w := (13839424820239 / 10000000000000 : ℚ)
  center := (99330000000000003 / 160000000000000000 : ℚ)
  supportValue := (1656345639254963 / 5000000000000000 : ℚ)
  supportSlope := (-12537136628260201 / 10000000000000000 : ℚ)
  oldCenter := (1656345639254963 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1452
  oldLo := (16550000000000001 / 50000000000000000 : ℚ)
  oldHi := (16575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_821]
}

noncomputable def cell_11580 : Cell := { cellDefaults with
  domain := ⟨(49670000000000001 / 80000000000000000 : ℚ), (621 / 1000 : ℚ)⟩
  r := (545681823253 / 1000000000000 : ℚ)
  w := (13839424820239 / 10000000000000 : ℚ)
  center := (99350000000000001 / 160000000000000000 : ℚ)
  supportValue := (6622250066244807 / 20000000000000000 : ℚ)
  supportSlope := (-6261398381859977 / 5000000000000000 : ℚ)
  oldCenter := (6622250066244807 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1452
  oldLo := (16550000000000001 / 50000000000000000 : ℚ)
  oldHi := (16575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_821]
}

noncomputable def cell_11581 : Cell := { cellDefaults with
  domain := ⟨(621 / 1000 : ℚ), (49690000000000001 / 80000000000000000 : ℚ)⟩
  r := (54541997275967 / 100000000000000 : ℚ)
  w := (13836872087513 / 10000000000000 : ℚ)
  center := (99370000000000001 / 160000000000000000 : ℚ)
  supportValue := (6625560388946593 / 20000000000000000 : ℚ)
  supportSlope := (-12531933640421569 / 10000000000000000 : ℚ)
  oldCenter := (6625560388946593 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1453
  oldLo := (16550000000000001 / 50000000000000000 : ℚ)
  oldHi := (16575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_821]
}

noncomputable def cell_11582 : Cell := { cellDefaults with
  domain := ⟨(49690000000000001 / 80000000000000000 : ℚ), (24850000000000001 / 40000000000000000 : ℚ)⟩
  r := (54541997275967 / 100000000000000 : ℚ)
  w := (13836872087513 / 10000000000000 : ℚ)
  center := (99390000000000003 / 160000000000000000 : ℚ)
  supportValue := (662242919757921 / 2000000000000000 : ℚ)
  supportSlope := (-12517604477534219 / 10000000000000000 : ℚ)
  oldCenter := (662242919757921 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1453
  oldLo := (16550000000000001 / 50000000000000000 : ℚ)
  oldHi := (16575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_821]
}

noncomputable def cell_11583 : Cell := { cellDefaults with
  domain := ⟨(24850000000000001 / 40000000000000000 : ℚ), (49710000000000003 / 80000000000000000 : ℚ)⟩
  r := (54541997275967 / 100000000000000 : ℚ)
  w := (13836872087513 / 10000000000000 : ℚ)
  center := (19882000000000001 / 32000000000000000 : ℚ)
  supportValue := (1654826308154957 / 5000000000000000 : ℚ)
  supportSlope := (-12515998207190817 / 10000000000000000 : ℚ)
  oldCenter := (1654826308154957 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1453
  oldLo := (6615642458100559 / 20000000000000000 : ℚ)
  oldHi := (16575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_820, piece_821]
}

noncomputable def cell_11584 : Cell := { cellDefaults with
  domain := ⟨(49710000000000003 / 80000000000000000 : ℚ), (12430000000000001 / 20000000000000000 : ℚ)⟩
  r := (54541997275967 / 100000000000000 : ℚ)
  w := (13836872087513 / 10000000000000 : ℚ)
  center := (99430000000000007 / 160000000000000000 : ℚ)
  supportValue := (16540430463950803 / 50000000000000000 : ℚ)
  supportSlope := (-500258823971883 / 400000000000000 : ℚ)
  oldCenter := (16540430463950803 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1453
  oldLo := (16525000000000001 / 50000000000000000 : ℚ)
  oldHi := (16550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_819, piece_820]
}

noncomputable def cell_11585 : Cell := { cellDefaults with
  domain := ⟨(12430000000000001 / 20000000000000000 : ℚ), (49730000000000003 / 80000000000000000 : ℚ)⟩
  r := (27257919890893 / 50000000000000 : ℚ)
  w := (13834321682133 / 10000000000000 : ℚ)
  center := (99450000000000007 / 160000000000000000 : ℚ)
  supportValue := (1654871022032377 / 5000000000000000 : ℚ)
  supportSlope := (-12509813017650557 / 10000000000000000 : ℚ)
  oldCenter := (1654871022032377 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1454
  oldLo := (6615642458100559 / 20000000000000000 : ℚ)
  oldHi := (16575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_820, piece_821]
}

noncomputable def cell_11586 : Cell := { cellDefaults with
  domain := ⟨(49730000000000003 / 80000000000000000 : ℚ), (24870000000000001 / 40000000000000000 : ℚ)⟩
  r := (27257919890893 / 50000000000000 : ℚ)
  w := (13834321682133 / 10000000000000 : ℚ)
  center := (19894000000000001 / 32000000000000000 : ℚ)
  supportValue := (1654088083879523 / 5000000000000000 : ℚ)
  supportSlope := (-625064855446729 / 500000000000000 : ℚ)
  oldCenter := (1654088083879523 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1454
  oldLo := (16525000000000001 / 50000000000000000 : ℚ)
  oldHi := (16550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_819, piece_820]
}

noncomputable def cell_11587 : Cell := { cellDefaults with
  domain := ⟨(24870000000000001 / 40000000000000000 : ℚ), (49750000000000001 / 80000000000000000 : ℚ)⟩
  r := (27257919890893 / 50000000000000 : ℚ)
  w := (13834321682133 / 10000000000000 : ℚ)
  center := (99490000000000003 / 160000000000000000 : ℚ)
  supportValue := (3306614399885847 / 10000000000000000 : ℚ)
  supportSlope := (-6243496606611123 / 5000000000000000 : ℚ)
  oldCenter := (3306614399885847 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1454
  oldLo := (16525000000000001 / 50000000000000000 : ℚ)
  oldHi := (6615642458100559 / 20000000000000000 : ℚ)
  oldPieces := [piece_819]
}

noncomputable def cell_11588 : Cell := { cellDefaults with
  domain := ⟨(49750000000000001 / 80000000000000000 : ℚ), (311 / 500 : ℚ)⟩
  r := (27257919890893 / 50000000000000 : ℚ)
  w := (13834321682133 / 10000000000000 : ℚ)
  center := (99510000000000001 / 160000000000000000 : ℚ)
  supportValue := (1652528365261437 / 5000000000000000 : ℚ)
  supportSlope := (-3120227665250087 / 2500000000000000 : ℚ)
  oldCenter := (1652528365261437 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1454
  oldLo := (16500000000000001 / 50000000000000000 : ℚ)
  oldHi := (6615642458100559 / 20000000000000000 : ℚ)
  oldPieces := [piece_818, piece_819]
}

noncomputable def cell_11589 : Cell := { cellDefaults with
  domain := ⟨(311 / 500 : ℚ), (49770000000000001 / 80000000000000000 : ℚ)⟩
  r := (13622428725517 / 25000000000000 : ℚ)
  w := (2766356833809 / 2000000000000 : ℚ)
  center := (99530000000000001 / 160000000000000000 : ℚ)
  supportValue := (661340288064023 / 2000000000000000 : ℚ)
  supportSlope := (-12481805982290513 / 10000000000000000 : ℚ)
  oldCenter := (661340288064023 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1455
  oldLo := (16525000000000001 / 50000000000000000 : ℚ)
  oldHi := (6615642458100559 / 20000000000000000 : ℚ)
  oldPieces := [piece_819]
}

noncomputable def cell_11590 : Cell := { cellDefaults with
  domain := ⟨(49770000000000001 / 80000000000000000 : ℚ), (24890000000000001 / 40000000000000000 : ℚ)⟩
  r := (13622428725517 / 25000000000000 : ℚ)
  w := (2766356833809 / 2000000000000 : ℚ)
  center := (99550000000000003 / 160000000000000000 : ℚ)
  supportValue := (661028883750897 / 2000000000000000 : ℚ)
  supportSlope := (-6237372601013911 / 5000000000000000 : ℚ)
  oldCenter := (661028883750897 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1455
  oldLo := (16500000000000001 / 50000000000000000 : ℚ)
  oldHi := (6615642458100559 / 20000000000000000 : ℚ)
  oldPieces := [piece_818, piece_819]
}

noncomputable def cell_11591 : Cell := { cellDefaults with
  domain := ⟨(24890000000000001 / 40000000000000000 : ℚ), (49790000000000003 / 80000000000000000 : ℚ)⟩
  r := (13622428725517 / 25000000000000 : ℚ)
  w := (2766356833809 / 2000000000000 : ℚ)
  center := (19914000000000001 / 32000000000000000 : ℚ)
  supportValue := (4129478196878867 / 12500000000000000 : ℚ)
  supportSlope := (-3117700257513033 / 2500000000000000 : ℚ)
  oldCenter := (4129478196878867 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1455
  oldLo := (16500000000000001 / 50000000000000000 : ℚ)
  oldHi := (16525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_818]
}

noncomputable def cell_11592 : Cell := { cellDefaults with
  domain := ⟨(49790000000000003 / 80000000000000000 : ℚ), (12450000000000001 / 20000000000000000 : ℚ)⟩
  r := (13622428725517 / 25000000000000 : ℚ)
  w := (2766356833809 / 2000000000000 : ℚ)
  center := (99590000000000007 / 160000000000000000 : ℚ)
  supportValue := (6604049202243587 / 20000000000000000 : ℚ)
  supportSlope := (-622825415425181 / 500000000000000 : ℚ)
  oldCenter := (6604049202243587 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1455
  oldLo := (16500000000000001 / 50000000000000000 : ℚ)
  oldHi := (16525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_818]
}

noncomputable def cell_11593 : Cell := { cellDefaults with
  domain := ⟨(12450000000000001 / 20000000000000000 : ℚ), (49810000000000003 / 80000000000000000 : ℚ)⟩
  r := (54463616813391 / 100000000000000 : ℚ)
  w := (13829248579587 / 10000000000000 : ℚ)
  center := (99610000000000007 / 160000000000000000 : ℚ)
  supportValue := (3303670259201883 / 10000000000000000 : ℚ)
  supportSlope := (-6232817051601903 / 5000000000000000 : ℚ)
  oldCenter := (3303670259201883 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1456
  oldLo := (16500000000000001 / 50000000000000000 : ℚ)
  oldHi := (16525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_818]
}

noncomputable def cell_11594 : Cell := { cellDefaults with
  domain := ⟨(49810000000000003 / 80000000000000000 : ℚ), (24910000000000001 / 40000000000000000 : ℚ)⟩
  r := (54463616813391 / 100000000000000 : ℚ)
  w := (13829248579587 / 10000000000000 : ℚ)
  center := (19926000000000001 / 32000000000000000 : ℚ)
  supportValue := (825528237004989 / 2500000000000000 : ℚ)
  supportSlope := (-12451352032610963 / 10000000000000000 : ℚ)
  oldCenter := (825528237004989 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1456
  oldLo := (16500000000000001 / 50000000000000000 : ℚ)
  oldHi := (16525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_818]
}

noncomputable def cell_11595 : Cell := { cellDefaults with
  domain := ⟨(24910000000000001 / 40000000000000000 : ℚ), (49830000000000001 / 80000000000000000 : ℚ)⟩
  r := (54463616813391 / 100000000000000 : ℚ)
  w := (13829248579587 / 10000000000000 : ℚ)
  center := (99650000000000003 / 160000000000000000 : ℚ)
  supportValue := (4125699661022407 / 12500000000000000 : ℚ)
  supportSlope := (-1243962602219053 / 1000000000000000 : ℚ)
  oldCenter := (4125699661022407 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1456
  oldLo := (16475000000000001 / 50000000000000000 : ℚ)
  oldHi := (16525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_817, piece_818]
}

noncomputable def cell_11596 : Cell := { cellDefaults with
  domain := ⟨(49830000000000001 / 80000000000000000 : ℚ), (623 / 1000 : ℚ)⟩
  r := (54463616813391 / 100000000000000 : ℚ)
  w := (13829248579587 / 10000000000000 : ℚ)
  center := (99670000000000001 / 160000000000000000 : ℚ)
  supportValue := (412375281893521 / 1250000000000000 : ℚ)
  supportSlope := (-1555056820618117 / 1250000000000000 : ℚ)
  oldCenter := (412375281893521 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1456
  oldLo := (16475000000000001 / 50000000000000000 : ℚ)
  oldHi := (16500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_817]
}

noncomputable def cell_11597 : Cell := { cellDefaults with
  domain := ⟨(623 / 1000 : ℚ), (49850000000000001 / 80000000000000000 : ℚ)⟩
  r := (27218774767471 / 50000000000000 : ℚ)
  w := (13826721872869 / 10000000000000 : ℚ)
  center := (99690000000000001 / 160000000000000000 : ℚ)
  supportValue := (33006460731437093 / 100000000000000000 : ℚ)
  supportSlope := (-310837075824657 / 250000000000000 : ℚ)
  oldCenter := (33006460731437093 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1457
  oldLo := (16475000000000001 / 50000000000000000 : ℚ)
  oldHi := (16525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_817, piece_818]
}

noncomputable def cell_11598 : Cell := { cellDefaults with
  domain := ⟨(49850000000000001 / 80000000000000000 : ℚ), (24930000000000001 / 40000000000000000 : ℚ)⟩
  r := (27218774767471 / 50000000000000 : ℚ)
  w := (13826721872869 / 10000000000000 : ℚ)
  center := (99710000000000003 / 160000000000000000 : ℚ)
  supportValue := (1649544683284237 / 5000000000000000 : ℚ)
  supportSlope := (-6217651794563839 / 5000000000000000 : ℚ)
  oldCenter := (1649544683284237 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1457
  oldLo := (16475000000000001 / 50000000000000000 : ℚ)
  oldHi := (16500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_817]
}

noncomputable def cell_11599 : Cell := { cellDefaults with
  domain := ⟨(24930000000000001 / 40000000000000000 : ℚ), (49870000000000003 / 80000000000000000 : ℚ)⟩
  r := (27218774767471 / 50000000000000 : ℚ)
  w := (13826721872869 / 10000000000000 : ℚ)
  center := (19946000000000001 / 32000000000000000 : ℚ)
  supportValue := (3297535845455173 / 10000000000000000 : ℚ)
  supportSlope := (-6210520736899473 / 5000000000000000 : ℚ)
  oldCenter := (3297535845455173 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1457
  oldLo := (16475000000000001 / 50000000000000000 : ℚ)
  oldHi := (16500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_817]
}

theorem check_11550 : cell_11550.check = true := by
  decide +kernel

theorem check_11551 : cell_11551.check = true := by
  decide +kernel

theorem check_11552 : cell_11552.check = true := by
  decide +kernel

theorem check_11553 : cell_11553.check = true := by
  decide +kernel

theorem check_11554 : cell_11554.check = true := by
  decide +kernel

theorem check_11555 : cell_11555.check = true := by
  decide +kernel

theorem check_11556 : cell_11556.check = true := by
  decide +kernel

theorem check_11557 : cell_11557.check = true := by
  decide +kernel

theorem check_11558 : cell_11558.check = true := by
  decide +kernel

theorem check_11559 : cell_11559.check = true := by
  decide +kernel

theorem check_11560 : cell_11560.check = true := by
  decide +kernel

theorem check_11561 : cell_11561.check = true := by
  decide +kernel

theorem check_11562 : cell_11562.check = true := by
  decide +kernel

theorem check_11563 : cell_11563.check = true := by
  decide +kernel

theorem check_11564 : cell_11564.check = true := by
  decide +kernel

theorem check_11565 : cell_11565.check = true := by
  decide +kernel

theorem check_11566 : cell_11566.check = true := by
  decide +kernel

theorem check_11567 : cell_11567.check = true := by
  decide +kernel

theorem check_11568 : cell_11568.check = true := by
  decide +kernel

theorem check_11569 : cell_11569.check = true := by
  decide +kernel

theorem check_11570 : cell_11570.check = true := by
  decide +kernel

theorem check_11571 : cell_11571.check = true := by
  decide +kernel

theorem check_11572 : cell_11572.check = true := by
  decide +kernel

theorem check_11573 : cell_11573.check = true := by
  decide +kernel

theorem check_11574 : cell_11574.check = true := by
  decide +kernel

theorem check_11575 : cell_11575.check = true := by
  decide +kernel

theorem check_11576 : cell_11576.check = true := by
  decide +kernel

theorem check_11577 : cell_11577.check = true := by
  decide +kernel

theorem check_11578 : cell_11578.check = true := by
  decide +kernel

theorem check_11579 : cell_11579.check = true := by
  decide +kernel

theorem check_11580 : cell_11580.check = true := by
  decide +kernel

theorem check_11581 : cell_11581.check = true := by
  decide +kernel

theorem check_11582 : cell_11582.check = true := by
  decide +kernel

theorem check_11583 : cell_11583.check = true := by
  decide +kernel

theorem check_11584 : cell_11584.check = true := by
  decide +kernel

theorem check_11585 : cell_11585.check = true := by
  decide +kernel

theorem check_11586 : cell_11586.check = true := by
  decide +kernel

theorem check_11587 : cell_11587.check = true := by
  decide +kernel

theorem check_11588 : cell_11588.check = true := by
  decide +kernel

theorem check_11589 : cell_11589.check = true := by
  decide +kernel

theorem check_11590 : cell_11590.check = true := by
  decide +kernel

theorem check_11591 : cell_11591.check = true := by
  decide +kernel

theorem check_11592 : cell_11592.check = true := by
  decide +kernel

theorem check_11593 : cell_11593.check = true := by
  decide +kernel

theorem check_11594 : cell_11594.check = true := by
  decide +kernel

theorem check_11595 : cell_11595.check = true := by
  decide +kernel

theorem check_11596 : cell_11596.check = true := by
  decide +kernel

theorem check_11597 : cell_11597.check = true := by
  decide +kernel

theorem check_11598 : cell_11598.check = true := by
  decide +kernel

theorem check_11599 : cell_11599.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11550, cell_11551, cell_11552, cell_11553, cell_11554, cell_11555, cell_11556, cell_11557, cell_11558, cell_11559, cell_11560, cell_11561, cell_11562, cell_11563, cell_11564, cell_11565, cell_11566, cell_11567, cell_11568, cell_11569, cell_11570, cell_11571, cell_11572, cell_11573, cell_11574, cell_11575, cell_11576, cell_11577, cell_11578, cell_11579, cell_11580, cell_11581, cell_11582, cell_11583, cell_11584, cell_11585, cell_11586, cell_11587, cell_11588, cell_11589, cell_11590, cell_11591, cell_11592, cell_11593, cell_11594, cell_11595, cell_11596, cell_11597, cell_11598, cell_11599]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11550, check_11551, check_11552, check_11553, check_11554, check_11555, check_11556, check_11557, check_11558, check_11559, check_11560, check_11561, check_11562, check_11563, check_11564, check_11565, check_11566, check_11567, check_11568, check_11569, check_11570, check_11571, check_11572, check_11573, check_11574, check_11575, check_11576, check_11577, check_11578, check_11579, check_11580, check_11581, check_11582, check_11583, check_11584, check_11585, check_11586, check_11587, check_11588, check_11589, check_11590, check_11591, check_11592, check_11593, check_11594, check_11595, check_11596, check_11597, check_11598, check_11599, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0231

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0231
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0231
open AnalyticBounds.ExpressionCertificate

theorem linked_11550 : Linked cell_11550 pieces := by
  apply Linked.of_piece piece_1444 piece_1444_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11550, List.cons_subset, List.nil_subset, and_true]
  exact piece_825_mem

theorem linked_11551 : Linked cell_11551 pieces := by
  apply Linked.of_piece piece_1444 piece_1444_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11551, List.cons_subset, List.nil_subset, and_true]
  exact piece_825_mem

theorem linked_11552 : Linked cell_11552 pieces := by
  apply Linked.of_piece piece_1445 piece_1445_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11552, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_825_mem, piece_826_mem⟩

theorem linked_11553 : Linked cell_11553 pieces := by
  apply Linked.of_piece piece_1445 piece_1445_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11553, List.cons_subset, List.nil_subset, and_true]
  exact piece_825_mem

theorem linked_11554 : Linked cell_11554 pieces := by
  apply Linked.of_piece piece_1445 piece_1445_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11554, List.cons_subset, List.nil_subset, and_true]
  exact piece_825_mem

theorem linked_11555 : Linked cell_11555 pieces := by
  apply Linked.of_piece piece_1445 piece_1445_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11555, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_824_mem, piece_825_mem⟩

theorem linked_11556 : Linked cell_11556 pieces := by
  apply Linked.of_piece piece_1446 piece_1446_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11556, List.cons_subset, List.nil_subset, and_true]
  exact piece_825_mem

theorem linked_11557 : Linked cell_11557 pieces := by
  apply Linked.of_piece piece_1446 piece_1446_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11557, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_824_mem, piece_825_mem⟩

theorem linked_11558 : Linked cell_11558 pieces := by
  apply Linked.of_piece piece_1446 piece_1446_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11558, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_11559 : Linked cell_11559 pieces := by
  apply Linked.of_piece piece_1446 piece_1446_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11559, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_11560 : Linked cell_11560 pieces := by
  apply Linked.of_piece piece_1447 piece_1447_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11560, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_11561 : Linked cell_11561 pieces := by
  apply Linked.of_piece piece_1448 piece_1448_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11561, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_11562 : Linked cell_11562 pieces := by
  apply Linked.of_piece piece_1448 piece_1448_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11562, List.cons_subset, List.nil_subset, and_true]
  exact piece_824_mem

theorem linked_11563 : Linked cell_11563 pieces := by
  apply Linked.of_piece piece_1448 piece_1448_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11563, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_823_mem, piece_824_mem⟩

theorem linked_11564 : Linked cell_11564 pieces := by
  apply Linked.of_piece piece_1448 piece_1448_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11564, List.cons_subset, List.nil_subset, and_true]
  exact piece_823_mem

theorem linked_11565 : Linked cell_11565 pieces := by
  apply Linked.of_piece piece_1449 piece_1449_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11565, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_823_mem, piece_824_mem⟩

theorem linked_11566 : Linked cell_11566 pieces := by
  apply Linked.of_piece piece_1449 piece_1449_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11566, List.cons_subset, List.nil_subset, and_true]
  exact piece_823_mem

theorem linked_11567 : Linked cell_11567 pieces := by
  apply Linked.of_piece piece_1449 piece_1449_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11567, List.cons_subset, List.nil_subset, and_true]
  exact piece_823_mem

theorem linked_11568 : Linked cell_11568 pieces := by
  apply Linked.of_piece piece_1449 piece_1449_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11568, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_822_mem, piece_823_mem⟩

theorem linked_11569 : Linked cell_11569 pieces := by
  apply Linked.of_piece piece_1450 piece_1450_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11569, List.cons_subset, List.nil_subset, and_true]
  exact piece_823_mem

theorem linked_11570 : Linked cell_11570 pieces := by
  apply Linked.of_piece piece_1450 piece_1450_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11570, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_822_mem, piece_823_mem⟩

theorem linked_11571 : Linked cell_11571 pieces := by
  apply Linked.of_piece piece_1450 piece_1450_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11571, List.cons_subset, List.nil_subset, and_true]
  exact piece_822_mem

theorem linked_11572 : Linked cell_11572 pieces := by
  apply Linked.of_piece piece_1450 piece_1450_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11572, List.cons_subset, List.nil_subset, and_true]
  exact piece_822_mem

theorem linked_11573 : Linked cell_11573 pieces := by
  apply Linked.of_piece piece_1451 piece_1451_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11573, List.cons_subset, List.nil_subset, and_true]
  exact piece_822_mem

theorem linked_11574 : Linked cell_11574 pieces := by
  apply Linked.of_piece piece_1451 piece_1451_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11574, List.cons_subset, List.nil_subset, and_true]
  exact piece_822_mem

theorem linked_11575 : Linked cell_11575 pieces := by
  apply Linked.of_piece piece_1451 piece_1451_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11575, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_821_mem, piece_822_mem⟩

theorem linked_11576 : Linked cell_11576 pieces := by
  apply Linked.of_piece piece_1451 piece_1451_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11576, List.cons_subset, List.nil_subset, and_true]
  exact piece_821_mem

theorem linked_11577 : Linked cell_11577 pieces := by
  apply Linked.of_piece piece_1452 piece_1452_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11577, List.cons_subset, List.nil_subset, and_true]
  exact piece_822_mem

theorem linked_11578 : Linked cell_11578 pieces := by
  apply Linked.of_piece piece_1452 piece_1452_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11578, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_821_mem, piece_822_mem⟩

theorem linked_11579 : Linked cell_11579 pieces := by
  apply Linked.of_piece piece_1452 piece_1452_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11579, List.cons_subset, List.nil_subset, and_true]
  exact piece_821_mem

theorem linked_11580 : Linked cell_11580 pieces := by
  apply Linked.of_piece piece_1452 piece_1452_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11580, List.cons_subset, List.nil_subset, and_true]
  exact piece_821_mem

theorem linked_11581 : Linked cell_11581 pieces := by
  apply Linked.of_piece piece_1453 piece_1453_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11581, List.cons_subset, List.nil_subset, and_true]
  exact piece_821_mem

theorem linked_11582 : Linked cell_11582 pieces := by
  apply Linked.of_piece piece_1453 piece_1453_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11582, List.cons_subset, List.nil_subset, and_true]
  exact piece_821_mem

theorem linked_11583 : Linked cell_11583 pieces := by
  apply Linked.of_piece piece_1453 piece_1453_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11583, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_820_mem, piece_821_mem⟩

theorem linked_11584 : Linked cell_11584 pieces := by
  apply Linked.of_piece piece_1453 piece_1453_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11584, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_819_mem, piece_820_mem⟩

theorem linked_11585 : Linked cell_11585 pieces := by
  apply Linked.of_piece piece_1454 piece_1454_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11585, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_820_mem, piece_821_mem⟩

theorem linked_11586 : Linked cell_11586 pieces := by
  apply Linked.of_piece piece_1454 piece_1454_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11586, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_819_mem, piece_820_mem⟩

theorem linked_11587 : Linked cell_11587 pieces := by
  apply Linked.of_piece piece_1454 piece_1454_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11587, List.cons_subset, List.nil_subset, and_true]
  exact piece_819_mem

theorem linked_11588 : Linked cell_11588 pieces := by
  apply Linked.of_piece piece_1454 piece_1454_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11588, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_818_mem, piece_819_mem⟩

theorem linked_11589 : Linked cell_11589 pieces := by
  apply Linked.of_piece piece_1455 piece_1455_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11589, List.cons_subset, List.nil_subset, and_true]
  exact piece_819_mem

theorem linked_11590 : Linked cell_11590 pieces := by
  apply Linked.of_piece piece_1455 piece_1455_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11590, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_818_mem, piece_819_mem⟩

theorem linked_11591 : Linked cell_11591 pieces := by
  apply Linked.of_piece piece_1455 piece_1455_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11591, List.cons_subset, List.nil_subset, and_true]
  exact piece_818_mem

theorem linked_11592 : Linked cell_11592 pieces := by
  apply Linked.of_piece piece_1455 piece_1455_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11592, List.cons_subset, List.nil_subset, and_true]
  exact piece_818_mem

theorem linked_11593 : Linked cell_11593 pieces := by
  apply Linked.of_piece piece_1456 piece_1456_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11593, List.cons_subset, List.nil_subset, and_true]
  exact piece_818_mem

theorem linked_11594 : Linked cell_11594 pieces := by
  apply Linked.of_piece piece_1456 piece_1456_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11594, List.cons_subset, List.nil_subset, and_true]
  exact piece_818_mem

theorem linked_11595 : Linked cell_11595 pieces := by
  apply Linked.of_piece piece_1456 piece_1456_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11595, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_817_mem, piece_818_mem⟩

theorem linked_11596 : Linked cell_11596 pieces := by
  apply Linked.of_piece piece_1456 piece_1456_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11596, List.cons_subset, List.nil_subset, and_true]
  exact piece_817_mem

theorem linked_11597 : Linked cell_11597 pieces := by
  apply Linked.of_piece piece_1457 piece_1457_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11597, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_817_mem, piece_818_mem⟩

theorem linked_11598 : Linked cell_11598 pieces := by
  apply Linked.of_piece piece_1457 piece_1457_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11598, List.cons_subset, List.nil_subset, and_true]
  exact piece_817_mem

theorem linked_11599 : Linked cell_11599 pieces := by
  apply Linked.of_piece piece_1457 piece_1457_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11599, List.cons_subset, List.nil_subset, and_true]
  exact piece_817_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0231.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0231.cells,List.forall_mem_cons]
  exact ⟨linked_11550, linked_11551, linked_11552, linked_11553, linked_11554, linked_11555, linked_11556, linked_11557, linked_11558, linked_11559, linked_11560, linked_11561, linked_11562, linked_11563, linked_11564, linked_11565, linked_11566, linked_11567, linked_11568, linked_11569, linked_11570, linked_11571, linked_11572, linked_11573, linked_11574, linked_11575, linked_11576, linked_11577, linked_11578, linked_11579, linked_11580, linked_11581, linked_11582, linked_11583, linked_11584, linked_11585, linked_11586, linked_11587, linked_11588, linked_11589, linked_11590, linked_11591, linked_11592, linked_11593, linked_11594, linked_11595, linked_11596, linked_11597, linked_11598, linked_11599, by simp⟩

theorem covered : covers (30862500000000001 / 50000000000000000 : ℚ) (49870000000000003 / 80000000000000000 : ℚ)
    (SourceCertificates.Chunk0231.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0231
