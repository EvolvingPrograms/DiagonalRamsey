import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0084
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(4023 / 32000 : ℚ), (503 / 4000 : ℚ)⟩
  branch := .right
  r := (10418028170973 / 10000000000000 : ℚ)
  w := (24641010182107 / 25000000000000 : ℚ)
  center := (8047 / 64000 : ℚ)
  supportValue := (10824323573213579 / 25000000000000000 : ℚ)
  supportSlope := (4579938092559743 / 1000000000000000 : ℚ)
  oldCenter := (10824323573213579 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_375
  oldLo := (8680000000000001 / 20000000000000000 : ℚ)
  oldHi := (8690000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1045]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_4200 : Cell := { cellDefaults with
  r := (1303781344407 / 1250000000000 : ℚ)
  w := (49266649239217 / 50000000000000 : ℚ)
  newCoefficients := coefficients_372
  oldLo := (8650000000000001 / 20000000000000000 : ℚ)
  oldHi := (8670000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1042, piece_1043]
}

def cell_4201 : Cell := { cellDefaults with
  domain := ⟨(503 / 4000 : ℚ), (161 / 1280 : ℚ)⟩
  r := (1303781344407 / 1250000000000 : ℚ)
  w := (49266649239217 / 50000000000000 : ℚ)
  center := (8049 / 64000 : ℚ)
  supportValue := (86623210958379 / 200000000000000 : ℚ)
  supportSlope := (572484146970087 / 125000000000000 : ℚ)
  oldCenter := (86623210958379 / 200000000000000 : ℚ)
  newCoefficients := coefficients_372
  oldLo := (8660000000000001 / 20000000000000000 : ℚ)
  oldHi := (8670000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1043]
}

def cell_4202 : Cell := { cellDefaults with
  domain := ⟨(161 / 1280 : ℚ), (2013 / 16000 : ℚ)⟩
  r := (1303781344407 / 1250000000000 : ℚ)
  w := (49266649239217 / 50000000000000 : ℚ)
  center := (8051 / 64000 : ℚ)
  supportValue := (270786998343179 / 625000000000000 : ℚ)
  supportSlope := (4581251913403861 / 1000000000000000 : ℚ)
  oldCenter := (270786998343179 / 625000000000000 : ℚ)
  newCoefficients := coefficients_372
  oldLo := (8660000000000001 / 20000000000000000 : ℚ)
  oldHi := (8670000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1043]
}

def cell_4203 : Cell := { cellDefaults with
  domain := ⟨(2013 / 16000 : ℚ), (4027 / 32000 : ℚ)⟩
  r := (1303781344407 / 1250000000000 : ℚ)
  w := (49266649239217 / 50000000000000 : ℚ)
  center := (8053 / 64000 : ℚ)
  supportValue := (4334023830238941 / 10000000000000000 : ℚ)
  supportSlope := (4582632704659417 / 1000000000000000 : ℚ)
  oldCenter := (4334023830238941 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_372
  oldLo := (8660000000000001 / 20000000000000000 : ℚ)
  oldHi := (8670000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1043]
}

def cell_4204 : Cell := { cellDefaults with
  domain := ⟨(4027 / 32000 : ℚ), (1007 / 8000 : ℚ)⟩
  r := (1303781344407 / 1250000000000 : ℚ)
  w := (49266649239217 / 50000000000000 : ℚ)
  center := (1611 / 12800 : ℚ)
  supportValue := (2709659944264391 / 6250000000000000 : ℚ)
  supportSlope := (286393967355969 / 62500000000000 : ℚ)
  oldCenter := (2709659944264391 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_372
  oldLo := (8660000000000001 / 20000000000000000 : ℚ)
  oldHi := (8680000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1043, piece_1044]
}

def cell_4205 : Cell := { cellDefaults with
  domain := ⟨(1007 / 8000 : ℚ), (4029 / 32000 : ℚ)⟩
  r := (1303781344407 / 1250000000000 : ℚ)
  w := (49266649239217 / 50000000000000 : ℚ)
  center := (8057 / 64000 : ℚ)
  supportValue := (2168443988415477 / 5000000000000000 : ℚ)
  supportSlope := (2291649192184053 / 500000000000000 : ℚ)
  oldCenter := (2168443988415477 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_372
  oldLo := (8670000000000001 / 20000000000000000 : ℚ)
  oldHi := (8680000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1044]
}

def cell_4206 : Cell := { cellDefaults with
  domain := ⟨(4029 / 32000 : ℚ), (403 / 3200 : ℚ)⟩
  r := (1303781344407 / 1250000000000 : ℚ)
  w := (49266649239217 / 50000000000000 : ℚ)
  center := (8059 / 64000 : ℚ)
  supportValue := (4338320472185641 / 10000000000000000 : ℚ)
  supportSlope := (4584673311317289 / 1000000000000000 : ℚ)
  oldCenter := (4338320472185641 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_372
  oldLo := (8670000000000001 / 20000000000000000 : ℚ)
  oldHi := (8680000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1044]
}

def cell_4207 : Cell := { cellDefaults with
  domain := ⟨(403 / 3200 : ℚ), (4031 / 32000 : ℚ)⟩
  r := (1303781344407 / 1250000000000 : ℚ)
  w := (49266649239217 / 50000000000000 : ℚ)
  center := (8061 / 64000 : ℚ)
  supportValue := (10849381323931051 / 25000000000000000 : ℚ)
  supportSlope := (458536868385373 / 100000000000000 : ℚ)
  oldCenter := (10849381323931051 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_372
  oldLo := (8670000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1044, piece_1045]
}

def cell_4208 : Cell := { cellDefaults with
  domain := ⟨(4031 / 32000 : ℚ), (63 / 500 : ℚ)⟩
  r := (1303781344407 / 1250000000000 : ℚ)
  w := (49266649239217 / 50000000000000 : ℚ)
  center := (8063 / 64000 : ℚ)
  supportValue := (2170593107646531 / 5000000000000000 : ℚ)
  supportSlope := (4585345230244897 / 1000000000000000 : ℚ)
  oldCenter := (2170593107646531 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_372
  oldPieces := [piece_1045]
}

def cell_4209 : Cell := { cellDefaults with
  domain := ⟨(63 / 500 : ℚ), (4033 / 32000 : ℚ)⟩
  center := (1613 / 12800 : ℚ)
  supportValue := (8679283039519451 / 20000000000000000 : ℚ)
  supportSlope := (143242102149721 / 31250000000000 : ℚ)
  oldCenter := (8679283039519451 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_373
  oldLo := (8670000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1044, piece_1045]
}

def cell_4210 : Cell := { cellDefaults with
  domain := ⟨(4033 / 32000 : ℚ), (2017 / 16000 : ℚ)⟩
  center := (8067 / 64000 : ℚ)
  supportValue := (2170536915763387 / 5000000000000000 : ℚ)
  supportSlope := (4583565634847631 / 1000000000000000 : ℚ)
  oldCenter := (2170536915763387 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_373
  oldPieces := [piece_1045]
}

def cell_4211 : Cell := { cellDefaults with
  domain := ⟨(2017 / 16000 : ℚ), (807 / 6400 : ℚ)⟩
  center := (8069 / 64000 : ℚ)
  supportValue := (43425064100163197 / 100000000000000000 : ℚ)
  supportSlope := (2292469060457769 / 500000000000000 : ℚ)
  oldCenter := (43425064100163197 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_373
  oldPieces := [piece_1045]
}

def cell_4212 : Cell := { cellDefaults with
  domain := ⟨(807 / 6400 : ℚ), (1009 / 8000 : ℚ)⟩
  center := (8071 / 64000 : ℚ)
  supportValue := (1085984854431009 / 2500000000000000 : ℚ)
  supportSlope := (4586312632548939 / 1000000000000000 : ℚ)
  oldCenter := (1085984854431009 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_373
  oldPieces := [piece_1045]
}

def cell_4213 : Cell := { cellDefaults with
  domain := ⟨(1009 / 8000 : ℚ), (12614525139664803 / 100000000000000000 : ℚ)⟩
  center := (25227025139664803 / 200000000000000000 : ℚ)
  supportValue := (43451205166650847 / 100000000000000000 : ℚ)
  supportSlope := (143317023307139 / 31250000000000 : ℚ)
  oldCenter := (43451205166650847 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_373
  oldHi := (8700000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1045, piece_1046]
}

def cell_4214 : Cell := { cellDefaults with
  domain := ⟨(12614525139664803 / 100000000000000000 : ℚ), (50468575418994409 / 400000000000000000 : ℚ)⟩
  center := (100926675977653621 / 800000000000000000 : ℚ)
  supportValue := (43461853267953493 / 100000000000000000 : ℚ)
  supportSlope := (2293198590579591 / 500000000000000 : ℚ)
  oldCenter := (43461853267953493 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_374
  oldLo := (8690000000000001 / 20000000000000000 : ℚ)
  oldHi := (8700000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1046]
}

def cell_4215 : Cell := { cellDefaults with
  domain := ⟨(50468575418994409 / 400000000000000000 : ℚ), (25239525139664803 / 200000000000000000 : ℚ)⟩
  center := (20189525139664803 / 160000000000000000 : ℚ)
  supportValue := (8694773047111839 / 20000000000000000 : ℚ)
  supportSlope := (4587544148269933 / 1000000000000000 : ℚ)
  oldCenter := (8694773047111839 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_374
  oldLo := (8690000000000001 / 20000000000000000 : ℚ)
  oldHi := (8700000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1046]
}

def cell_4216 : Cell := { cellDefaults with
  domain := ⟨(25239525139664803 / 200000000000000000 : ℚ), (50489525139664803 / 400000000000000000 : ℚ)⟩
  center := (100968575418994409 / 800000000000000000 : ℚ)
  supportValue := (8697176041718493 / 20000000000000000 : ℚ)
  supportSlope := (2294346263639437 / 500000000000000 : ℚ)
  oldCenter := (8697176041718493 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_374
  oldLo := (8690000000000001 / 20000000000000000 : ℚ)
  oldHi := (8700000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1046]
}

def cell_4217 : Cell := { cellDefaults with
  domain := ⟨(50489525139664803 / 400000000000000000 : ℚ), (101 / 800 : ℚ)⟩
  center := (100989525139664803 / 800000000000000000 : ℚ)
  supportValue := (4349789819075419 / 10000000000000000 : ℚ)
  supportSlope := (4589173339860421 / 1000000000000000 : ℚ)
  oldCenter := (4349789819075419 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_374
  oldLo := (8690000000000001 / 20000000000000000 : ℚ)
  oldHi := (8710000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1046, piece_1047]
}

def cell_4218 : Cell := { cellDefaults with
  domain := ⟨(101 / 800 : ℚ), (4041 / 32000 : ℚ)⟩
  center := (8081 / 64000 : ℚ)
  supportValue := (4351107640536797 / 10000000000000000 : ℚ)
  supportSlope := (458904277039629 / 100000000000000 : ℚ)
  oldCenter := (4351107640536797 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_374
  oldLo := (8700000000000001 / 20000000000000000 : ℚ)
  oldHi := (8710000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1047]
}

def cell_4219 : Cell := { cellDefaults with
  domain := ⟨(4041 / 32000 : ℚ), (2021 / 16000 : ℚ)⟩
  center := (8083 / 64000 : ℚ)
  supportValue := (43525419294529627 / 100000000000000000 : ℚ)
  supportSlope := (918081541907867 / 200000000000000 : ℚ)
  oldCenter := (43525419294529627 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_374
  oldLo := (8700000000000001 / 20000000000000000 : ℚ)
  oldHi := (8710000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1047]
}

def cell_4220 : Cell := { cellDefaults with
  domain := ⟨(2021 / 16000 : ℚ), (4043 / 32000 : ℚ)⟩
  center := (1617 / 12800 : ℚ)
  supportValue := (4353976645224329 / 10000000000000000 : ℚ)
  supportSlope := (4591774645097857 / 1000000000000000 : ℚ)
  oldCenter := (4353976645224329 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_374
  oldLo := (8700000000000001 / 20000000000000000 : ℚ)
  oldHi := (8710000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1047]
}

def cell_4221 : Cell := { cellDefaults with
  domain := ⟨(4043 / 32000 : ℚ), (1011 / 8000 : ℚ)⟩
  center := (8087 / 64000 : ℚ)
  supportValue := (87108232098029 / 200000000000000 : ℚ)
  supportSlope := (9183062662192043 / 2000000000000000 : ℚ)
  oldCenter := (87108232098029 / 200000000000000 : ℚ)
  newCoefficients := coefficients_374
  oldLo := (8700000000000001 / 20000000000000000 : ℚ)
  oldHi := (871731843575419 / 2000000000000000 : ℚ)
  oldPieces := [piece_1047, piece_1048]
}

def cell_4222 : Cell := { cellDefaults with
  domain := ⟨(1011 / 8000 : ℚ), (809 / 6400 : ℚ)⟩
  center := (8089 / 64000 : ℚ)
  supportValue := (544605816862713 / 1250000000000000 : ℚ)
  supportSlope := (574057093623237 / 125000000000000 : ℚ)
  oldCenter := (544605816862713 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_374
  oldLo := (8710000000000001 / 20000000000000000 : ℚ)
  oldHi := (871731843575419 / 2000000000000000 : ℚ)
  oldPieces := [piece_1048]
}

def cell_4223 : Cell := { cellDefaults with
  domain := ⟨(809 / 6400 : ℚ), (2023 / 16000 : ℚ)⟩
  center := (8091 / 64000 : ℚ)
  supportValue := (2179140945118591 / 5000000000000000 : ℚ)
  supportSlope := (1148454617791561 / 250000000000000 : ℚ)
  oldCenter := (2179140945118591 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_374
  oldLo := (8710000000000001 / 20000000000000000 : ℚ)
  oldHi := (8720000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1048, piece_1049]
}

def cell_4224 : Cell := { cellDefaults with
  domain := ⟨(2023 / 16000 : ℚ), (4047 / 32000 : ℚ)⟩
  center := (8093 / 64000 : ℚ)
  supportValue := (217985883559759 / 500000000000000 : ℚ)
  supportSlope := (4594563272689811 / 1000000000000000 : ℚ)
  oldCenter := (217985883559759 / 500000000000000 : ℚ)
  newCoefficients := coefficients_374
  oldLo := (871731843575419 / 2000000000000000 : ℚ)
  oldHi := (873 / 2000 : ℚ)
  oldPieces := [piece_1049, piece_1050]
}

def cell_4225 : Cell := { cellDefaults with
  domain := ⟨(4047 / 32000 : ℚ), (253 / 2000 : ℚ)⟩
  center := (1619 / 12800 : ℚ)
  supportValue := (10902883416827161 / 25000000000000000 : ℚ)
  supportSlope := (4594504994555493 / 1000000000000000 : ℚ)
  oldCenter := (10902883416827161 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_374
  oldLo := (8720000000000001 / 20000000000000000 : ℚ)
  oldHi := (873 / 2000 : ℚ)
  oldPieces := [piece_1050]
}

def cell_4226 : Cell := { cellDefaults with
  domain := ⟨(253 / 2000 : ℚ), (4049 / 32000 : ℚ)⟩
  r := (416233514151 / 400000000000 : ℚ)
  w := (24648559235789 / 25000000000000 : ℚ)
  center := (8097 / 64000 : ℚ)
  supportValue := (4359582718873573 / 10000000000000000 : ℚ)
  supportSlope := (57411554463771 / 12500000000000 : ℚ)
  oldCenter := (4359582718873573 / 10000000000000000 : ℚ)
  oldLo := (871731843575419 / 2000000000000000 : ℚ)
  oldHi := (873 / 2000 : ℚ)
  oldPieces := [piece_1049, piece_1050]
}

def cell_4227 : Cell := { cellDefaults with
  domain := ⟨(4049 / 32000 : ℚ), (81 / 640 : ℚ)⟩
  r := (416233514151 / 400000000000 : ℚ)
  w := (24648559235789 / 25000000000000 : ℚ)
  center := (8099 / 64000 : ℚ)
  supportValue := (8722035805818693 / 20000000000000000 : ℚ)
  supportSlope := (2296339274089121 / 500000000000000 : ℚ)
  oldCenter := (8722035805818693 / 20000000000000000 : ℚ)
  oldLo := (8720000000000001 / 20000000000000000 : ℚ)
  oldHi := (873 / 2000 : ℚ)
  oldPieces := [piece_1050]
}

def cell_4228 : Cell := { cellDefaults with
  domain := ⟨(81 / 640 : ℚ), (4051 / 32000 : ℚ)⟩
  r := (416233514151 / 400000000000 : ℚ)
  w := (24648559235789 / 25000000000000 : ℚ)
  center := (8101 / 64000 : ℚ)
  supportValue := (43624533271722543 / 100000000000000000 : ℚ)
  supportSlope := (4594038145512513 / 1000000000000000 : ℚ)
  oldCenter := (43624533271722543 / 100000000000000000 : ℚ)
  oldLo := (8720000000000001 / 20000000000000000 : ℚ)
  oldHi := (873 / 2000 : ℚ)
  oldPieces := [piece_1050]
}

def cell_4229 : Cell := { cellDefaults with
  domain := ⟨(4051 / 32000 : ℚ), (1013 / 8000 : ℚ)⟩
  r := (416233514151 / 400000000000 : ℚ)
  w := (24648559235789 / 25000000000000 : ℚ)
  center := (8103 / 64000 : ℚ)
  supportValue := (4363889176617223 / 10000000000000000 : ℚ)
  supportSlope := (4595399714743209 / 1000000000000000 : ℚ)
  oldCenter := (4363889176617223 / 10000000000000000 : ℚ)
  oldLo := (8720000000000001 / 20000000000000000 : ℚ)
  oldHi := (873 / 2000 : ℚ)
  oldPieces := [piece_1050]
}

def cell_4230 : Cell := { cellDefaults with
  domain := ⟨(1013 / 8000 : ℚ), (4053 / 32000 : ℚ)⟩
  r := (416233514151 / 400000000000 : ℚ)
  w := (24648559235789 / 25000000000000 : ℚ)
  center := (1621 / 12800 : ℚ)
  supportValue := (4365325308365761 / 10000000000000000 : ℚ)
  supportSlope := (2297645055777231 / 500000000000000 : ℚ)
  oldCenter := (4365325308365761 / 10000000000000000 : ℚ)
  oldLo := (8720000000000001 / 20000000000000000 : ℚ)
  oldHi := (437 / 1000 : ℚ)
  oldPieces := [piece_1050, piece_1051]
}

def cell_4231 : Cell := { cellDefaults with
  domain := ⟨(4053 / 32000 : ℚ), (2027 / 16000 : ℚ)⟩
  r := (416233514151 / 400000000000 : ℚ)
  w := (24648559235789 / 25000000000000 : ℚ)
  center := (8107 / 64000 : ℚ)
  supportValue := (2183380687725437 / 5000000000000000 : ℚ)
  supportSlope := (4596092705504873 / 1000000000000000 : ℚ)
  oldCenter := (2183380687725437 / 5000000000000000 : ℚ)
  oldLo := (873 / 2000 : ℚ)
  oldHi := (437 / 1000 : ℚ)
  oldPieces := [piece_1051]
}

def cell_4232 : Cell := { cellDefaults with
  domain := ⟨(2027 / 16000 : ℚ), (811 / 6400 : ℚ)⟩
  r := (416233514151 / 400000000000 : ℚ)
  w := (24648559235789 / 25000000000000 : ℚ)
  center := (8109 / 64000 : ℚ)
  supportValue := (21840989330860777 / 50000000000000000 : ℚ)
  supportSlope := (2298724659627993 / 500000000000000 : ℚ)
  oldCenter := (21840989330860777 / 50000000000000000 : ℚ)
  oldLo := (873 / 2000 : ℚ)
  oldHi := (437 / 1000 : ℚ)
  oldPieces := [piece_1051]
}

def cell_4233 : Cell := { cellDefaults with
  domain := ⟨(811 / 6400 : ℚ), (507 / 4000 : ℚ)⟩
  r := (416233514151 / 400000000000 : ℚ)
  w := (24648559235789 / 25000000000000 : ℚ)
  center := (8111 / 64000 : ℚ)
  supportValue := (2184817390570559 / 5000000000000000 : ℚ)
  supportSlope := (17962156797037 / 3906250000000 : ℚ)
  oldCenter := (2184817390570559 / 5000000000000000 : ℚ)
  oldLo := (873 / 2000 : ℚ)
  oldHi := (7 / 16 : ℚ)
  oldPieces := [piece_1051, piece_1052]
}

def cell_4234 : Cell := { cellDefaults with
  domain := ⟨(507 / 4000 : ℚ), (4057 / 32000 : ℚ)⟩
  r := (416233514151 / 400000000000 : ℚ)
  w := (24648559235789 / 25000000000000 : ℚ)
  center := (8113 / 64000 : ℚ)
  supportValue := (43710716507650077 / 100000000000000000 : ℚ)
  supportSlope := (919629579291481 / 200000000000000 : ℚ)
  oldCenter := (43710716507650077 / 100000000000000000 : ℚ)
  oldLo := (437 / 1000 : ℚ)
  oldHi := (7 / 16 : ℚ)
  oldPieces := [piece_1052]
}

def cell_4235 : Cell := { cellDefaults with
  domain := ⟨(4057 / 32000 : ℚ), (2029 / 16000 : ℚ)⟩
  r := (416233514151 / 400000000000 : ℚ)
  w := (24648559235789 / 25000000000000 : ℚ)
  center := (1623 / 12800 : ℚ)
  supportValue := (43725087829524223 / 100000000000000000 : ℚ)
  supportSlope := (1839799803045139 / 400000000000000 : ℚ)
  oldCenter := (43725087829524223 / 100000000000000000 : ℚ)
  oldLo := (437 / 1000 : ℚ)
  oldHi := (7 / 16 : ℚ)
  oldPieces := [piece_1052]
}

def cell_4236 : Cell := { cellDefaults with
  domain := ⟨(2029 / 16000 : ℚ), (4059 / 32000 : ℚ)⟩
  r := (416233514151 / 400000000000 : ℚ)
  w := (24648559235789 / 25000000000000 : ℚ)
  center := (8117 / 64000 : ℚ)
  supportValue := (4373946337821491 / 10000000000000000 : ℚ)
  supportSlope := (287553316276723 / 62500000000000 : ℚ)
  oldCenter := (4373946337821491 / 10000000000000000 : ℚ)
  oldLo := (437 / 1000 : ℚ)
  oldHi := (7 / 16 : ℚ)
  oldPieces := [piece_1052]
}

def cell_4237 : Cell := { cellDefaults with
  domain := ⟨(4059 / 32000 : ℚ), (203 / 1600 : ℚ)⟩
  r := (416233514151 / 400000000000 : ℚ)
  w := (24648559235789 / 25000000000000 : ℚ)
  center := (8119 / 64000 : ℚ)
  supportValue := (4375384148481809 / 10000000000000000 : ℚ)
  supportSlope := (115016719085137 / 25000000000000 : ℚ)
  oldCenter := (4375384148481809 / 10000000000000000 : ℚ)
  oldLo := (437 / 1000 : ℚ)
  oldHi := (219 / 500 : ℚ)
  oldPieces := [piece_1052, piece_1053]
}

def cell_4238 : Cell := { cellDefaults with
  domain := ⟨(203 / 1600 : ℚ), (4061 / 32000 : ℚ)⟩
  r := (416233514151 / 400000000000 : ℚ)
  w := (24648559235789 / 25000000000000 : ℚ)
  center := (8121 / 64000 : ℚ)
  supportValue := (4376821922311903 / 10000000000000000 : ℚ)
  supportSlope := (1150387561265731 / 250000000000000 : ℚ)
  oldCenter := (4376821922311903 / 10000000000000000 : ℚ)
  oldLo := (7 / 16 : ℚ)
  oldHi := (219 / 500 : ℚ)
  oldPieces := [piece_1053]
}

def cell_4239 : Cell := { cellDefaults with
  domain := ⟨(4061 / 32000 : ℚ), (2031 / 16000 : ℚ)⟩
  r := (416233514151 / 400000000000 : ℚ)
  w := (24648559235789 / 25000000000000 : ℚ)
  center := (8123 / 64000 : ℚ)
  supportValue := (4378260117247703 / 10000000000000000 : ℚ)
  supportSlope := (4602898746107087 / 1000000000000000 : ℚ)
  oldCenter := (4378260117247703 / 10000000000000000 : ℚ)
  oldLo := (7 / 16 : ℚ)
  oldHi := (219 / 500 : ℚ)
  oldPieces := [piece_1053]
}

def cell_4240 : Cell := { cellDefaults with
  domain := ⟨(2031 / 16000 : ℚ), (4063 / 32000 : ℚ)⟩
  r := (416233514151 / 400000000000 : ℚ)
  w := (24648559235789 / 25000000000000 : ℚ)
  center := (65 / 512 : ℚ)
  supportValue := (4379698733891203 / 10000000000000000 : ℚ)
  supportSlope := (230183464349043 / 50000000000000 : ℚ)
  oldCenter := (4379698733891203 / 10000000000000000 : ℚ)
  oldLo := (7 / 16 : ℚ)
  oldHi := (877 / 2000 : ℚ)
  oldPieces := [piece_1053, piece_1054]
}

def cell_4241 : Cell := { cellDefaults with
  domain := ⟨(4063 / 32000 : ℚ), (127 / 1000 : ℚ)⟩
  r := (416233514151 / 400000000000 : ℚ)
  w := (24648559235789 / 25000000000000 : ℚ)
  center := (8127 / 64000 : ℚ)
  supportValue := (547642159941063 / 1250000000000000 : ℚ)
  supportSlope := (4603601417683123 / 1000000000000000 : ℚ)
  oldCenter := (547642159941063 / 1250000000000000 : ℚ)
  oldLo := (219 / 500 : ℚ)
  oldHi := (877 / 2000 : ℚ)
  oldPieces := [piece_1054]
}

def cell_4242 : Cell := { cellDefaults with
  domain := ⟨(127 / 1000 : ℚ), (813 / 6400 : ℚ)⟩
  r := (10393679793833 / 10000000000000 : ℚ)
  w := (49311952482861 / 50000000000000 : ℚ)
  center := (8129 / 64000 : ℚ)
  supportValue := (4379541053227941 / 10000000000000000 : ℚ)
  supportSlope := (1150503556038629 / 250000000000000 : ℚ)
  oldCenter := (4379541053227941 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_376
  oldLo := (7 / 16 : ℚ)
  oldHi := (877 / 2000 : ℚ)
  oldPieces := [piece_1053, piece_1054]
}

def cell_4243 : Cell := { cellDefaults with
  domain := ⟨(813 / 6400 : ℚ), (2033 / 16000 : ℚ)⟩
  r := (10393679793833 / 10000000000000 : ℚ)
  w := (49311952482861 / 50000000000000 : ℚ)
  center := (8131 / 64000 : ℚ)
  supportValue := (21904895411481237 / 50000000000000000 : ℚ)
  supportSlope := (4601731520912367 / 1000000000000000 : ℚ)
  oldCenter := (21904895411481237 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_376
  oldLo := (219 / 500 : ℚ)
  oldHi := (877 / 2000 : ℚ)
  oldPieces := [piece_1054]
}

def cell_4244 : Cell := { cellDefaults with
  domain := ⟨(2033 / 16000 : ℚ), (4067 / 32000 : ℚ)⟩
  r := (10393679793833 / 10000000000000 : ℚ)
  w := (49311952482861 / 50000000000000 : ℚ)
  center := (8133 / 64000 : ℚ)
  supportValue := (43824173334586797 / 100000000000000000 : ℚ)
  supportSlope := (4603077317650417 / 1000000000000000 : ℚ)
  oldCenter := (43824173334586797 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_376
  oldLo := (219 / 500 : ℚ)
  oldHi := (877 / 2000 : ℚ)
  oldPieces := [piece_1054]
}

def cell_4245 : Cell := { cellDefaults with
  domain := ⟨(4067 / 32000 : ℚ), (1017 / 8000 : ℚ)⟩
  r := (10393679793833 / 10000000000000 : ℚ)
  w := (49311952482861 / 50000000000000 : ℚ)
  center := (1627 / 12800 : ℚ)
  supportValue := (21919280027408927 / 50000000000000000 : ℚ)
  supportSlope := (35972070551199 / 7812500000000 : ℚ)
  oldCenter := (21919280027408927 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_376
  oldLo := (219 / 500 : ℚ)
  oldHi := (877 / 2000 : ℚ)
  oldPieces := [piece_1054]
}

def cell_4246 : Cell := { cellDefaults with
  domain := ⟨(1017 / 8000 : ℚ), (4069 / 32000 : ℚ)⟩
  r := (10393679793833 / 10000000000000 : ℚ)
  w := (49311952482861 / 50000000000000 : ℚ)
  center := (8137 / 64000 : ℚ)
  supportValue := (5481618714754103 / 12500000000000000 : ℚ)
  supportSlope := (2302187497123853 / 500000000000000 : ℚ)
  oldCenter := (5481618714754103 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_376
  oldLo := (219 / 500 : ℚ)
  oldHi := (439 / 1000 : ℚ)
  oldPieces := [piece_1054, piece_1055]
}

def cell_4247 : Cell := { cellDefaults with
  domain := ⟨(4069 / 32000 : ℚ), (407 / 3200 : ℚ)⟩
  r := (10393679793833 / 10000000000000 : ℚ)
  w := (49311952482861 / 50000000000000 : ℚ)
  center := (8139 / 64000 : ℚ)
  supportValue := (2193366933014757 / 5000000000000000 : ℚ)
  supportSlope := (4605132573125559 / 1000000000000000 : ℚ)
  oldCenter := (2193366933014757 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_376
  oldLo := (877 / 2000 : ℚ)
  oldHi := (439 / 1000 : ℚ)
  oldPieces := [piece_1055]
}

def cell_4248 : Cell := { cellDefaults with
  domain := ⟨(407 / 3200 : ℚ), (4071 / 32000 : ℚ)⟩
  r := (10393679793833 / 10000000000000 : ℚ)
  w := (49311952482861 / 50000000000000 : ℚ)
  center := (8141 / 64000 : ℚ)
  supportValue := (877634635904399 / 2000000000000000 : ℚ)
  supportSlope := (4606475175084057 / 1000000000000000 : ℚ)
  oldCenter := (877634635904399 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_376
  oldLo := (877 / 2000 : ℚ)
  oldHi := (439 / 1000 : ℚ)
  oldPieces := [piece_1055]
}

def cell_4249 : Cell := { cellDefaults with
  domain := ⟨(4071 / 32000 : ℚ), (509 / 4000 : ℚ)⟩
  r := (10393679793833 / 10000000000000 : ℚ)
  w := (49311952482861 / 50000000000000 : ℚ)
  center := (8143 / 64000 : ℚ)
  supportValue := (1755845165149879 / 4000000000000000 : ℚ)
  supportSlope := (4607363261635911 / 1000000000000000 : ℚ)
  oldCenter := (1755845165149879 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_376
  oldLo := (877 / 2000 : ℚ)
  oldHi := (879 / 2000 : ℚ)
  oldPieces := [piece_1055, piece_1056]
}

theorem check_4200 : SourceCertificateFamily.RightNormalized.check cell_4200 = true := by
  decide +kernel

theorem check_4201 : SourceCertificateFamily.RightNormalized.check cell_4201 = true := by
  decide +kernel

theorem check_4202 : SourceCertificateFamily.RightNormalized.check cell_4202 = true := by
  decide +kernel

theorem check_4203 : SourceCertificateFamily.RightNormalized.check cell_4203 = true := by
  decide +kernel

theorem check_4204 : SourceCertificateFamily.RightNormalized.check cell_4204 = true := by
  decide +kernel

theorem check_4205 : SourceCertificateFamily.RightNormalized.check cell_4205 = true := by
  decide +kernel

theorem check_4206 : SourceCertificateFamily.RightNormalized.check cell_4206 = true := by
  decide +kernel

theorem check_4207 : SourceCertificateFamily.RightNormalized.check cell_4207 = true := by
  decide +kernel

theorem check_4208 : SourceCertificateFamily.RightNormalized.check cell_4208 = true := by
  decide +kernel

theorem check_4209 : SourceCertificateFamily.RightNormalized.check cell_4209 = true := by
  decide +kernel

theorem check_4210 : SourceCertificateFamily.RightNormalized.check cell_4210 = true := by
  decide +kernel

theorem check_4211 : SourceCertificateFamily.RightNormalized.check cell_4211 = true := by
  decide +kernel

theorem check_4212 : SourceCertificateFamily.RightNormalized.check cell_4212 = true := by
  decide +kernel

theorem check_4213 : SourceCertificateFamily.RightNormalized.check cell_4213 = true := by
  decide +kernel

theorem check_4214 : SourceCertificateFamily.RightNormalized.check cell_4214 = true := by
  decide +kernel

theorem check_4215 : SourceCertificateFamily.RightNormalized.check cell_4215 = true := by
  decide +kernel

theorem check_4216 : SourceCertificateFamily.RightNormalized.check cell_4216 = true := by
  decide +kernel

theorem check_4217 : SourceCertificateFamily.RightNormalized.check cell_4217 = true := by
  decide +kernel

theorem check_4218 : SourceCertificateFamily.RightNormalized.check cell_4218 = true := by
  decide +kernel

theorem check_4219 : SourceCertificateFamily.RightNormalized.check cell_4219 = true := by
  decide +kernel

theorem check_4220 : SourceCertificateFamily.RightNormalized.check cell_4220 = true := by
  decide +kernel

theorem check_4221 : SourceCertificateFamily.RightNormalized.check cell_4221 = true := by
  decide +kernel

theorem check_4222 : SourceCertificateFamily.RightNormalized.check cell_4222 = true := by
  decide +kernel

theorem check_4223 : SourceCertificateFamily.RightNormalized.check cell_4223 = true := by
  decide +kernel

theorem check_4224 : SourceCertificateFamily.RightNormalized.check cell_4224 = true := by
  decide +kernel

theorem check_4225 : SourceCertificateFamily.RightNormalized.check cell_4225 = true := by
  decide +kernel

theorem check_4226 : SourceCertificateFamily.RightNormalized.check cell_4226 = true := by
  decide +kernel

theorem check_4227 : SourceCertificateFamily.RightNormalized.check cell_4227 = true := by
  decide +kernel

theorem check_4228 : SourceCertificateFamily.RightNormalized.check cell_4228 = true := by
  decide +kernel

theorem check_4229 : SourceCertificateFamily.RightNormalized.check cell_4229 = true := by
  decide +kernel

theorem check_4230 : SourceCertificateFamily.RightNormalized.check cell_4230 = true := by
  decide +kernel

theorem check_4231 : SourceCertificateFamily.RightNormalized.check cell_4231 = true := by
  decide +kernel

theorem check_4232 : SourceCertificateFamily.RightNormalized.check cell_4232 = true := by
  decide +kernel

theorem check_4233 : SourceCertificateFamily.RightNormalized.check cell_4233 = true := by
  decide +kernel

theorem check_4234 : SourceCertificateFamily.RightNormalized.check cell_4234 = true := by
  decide +kernel

theorem check_4235 : SourceCertificateFamily.RightNormalized.check cell_4235 = true := by
  decide +kernel

theorem check_4236 : SourceCertificateFamily.RightNormalized.check cell_4236 = true := by
  decide +kernel

theorem check_4237 : SourceCertificateFamily.RightNormalized.check cell_4237 = true := by
  decide +kernel

theorem check_4238 : SourceCertificateFamily.RightNormalized.check cell_4238 = true := by
  decide +kernel

theorem check_4239 : SourceCertificateFamily.RightNormalized.check cell_4239 = true := by
  decide +kernel

theorem check_4240 : SourceCertificateFamily.RightNormalized.check cell_4240 = true := by
  decide +kernel

theorem check_4241 : SourceCertificateFamily.RightNormalized.check cell_4241 = true := by
  decide +kernel

theorem check_4242 : SourceCertificateFamily.RightNormalized.check cell_4242 = true := by
  decide +kernel

theorem check_4243 : SourceCertificateFamily.RightNormalized.check cell_4243 = true := by
  decide +kernel

theorem check_4244 : SourceCertificateFamily.RightNormalized.check cell_4244 = true := by
  decide +kernel

theorem check_4245 : SourceCertificateFamily.RightNormalized.check cell_4245 = true := by
  decide +kernel

theorem check_4246 : SourceCertificateFamily.RightNormalized.check cell_4246 = true := by
  decide +kernel

theorem check_4247 : SourceCertificateFamily.RightNormalized.check cell_4247 = true := by
  decide +kernel

theorem check_4248 : SourceCertificateFamily.RightNormalized.check cell_4248 = true := by
  decide +kernel

theorem check_4249 : SourceCertificateFamily.RightNormalized.check cell_4249 = true := by
  decide +kernel

def cells : List Cell := [cell_4200, cell_4201, cell_4202, cell_4203, cell_4204, cell_4205, cell_4206, cell_4207, cell_4208, cell_4209, cell_4210, cell_4211, cell_4212, cell_4213, cell_4214, cell_4215, cell_4216, cell_4217, cell_4218, cell_4219, cell_4220, cell_4221, cell_4222, cell_4223, cell_4224, cell_4225, cell_4226, cell_4227, cell_4228, cell_4229, cell_4230, cell_4231, cell_4232, cell_4233, cell_4234, cell_4235, cell_4236, cell_4237, cell_4238, cell_4239, cell_4240, cell_4241, cell_4242, cell_4243, cell_4244, cell_4245, cell_4246, cell_4247, cell_4248, cell_4249]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_4200, SourceCertificateFamily.of_right_checked check_4201, SourceCertificateFamily.of_right_checked check_4202, SourceCertificateFamily.of_right_checked check_4203, SourceCertificateFamily.of_right_checked check_4204, SourceCertificateFamily.of_right_checked check_4205, SourceCertificateFamily.of_right_checked check_4206, SourceCertificateFamily.of_right_checked check_4207, SourceCertificateFamily.of_right_checked check_4208, SourceCertificateFamily.of_right_checked check_4209, SourceCertificateFamily.of_right_checked check_4210, SourceCertificateFamily.of_right_checked check_4211, SourceCertificateFamily.of_right_checked check_4212, SourceCertificateFamily.of_right_checked check_4213, SourceCertificateFamily.of_right_checked check_4214, SourceCertificateFamily.of_right_checked check_4215, SourceCertificateFamily.of_right_checked check_4216, SourceCertificateFamily.of_right_checked check_4217, SourceCertificateFamily.of_right_checked check_4218, SourceCertificateFamily.of_right_checked check_4219, SourceCertificateFamily.of_right_checked check_4220, SourceCertificateFamily.of_right_checked check_4221, SourceCertificateFamily.of_right_checked check_4222, SourceCertificateFamily.of_right_checked check_4223, SourceCertificateFamily.of_right_checked check_4224, SourceCertificateFamily.of_right_checked check_4225, SourceCertificateFamily.of_right_checked check_4226, SourceCertificateFamily.of_right_checked check_4227, SourceCertificateFamily.of_right_checked check_4228, SourceCertificateFamily.of_right_checked check_4229, SourceCertificateFamily.of_right_checked check_4230, SourceCertificateFamily.of_right_checked check_4231, SourceCertificateFamily.of_right_checked check_4232, SourceCertificateFamily.of_right_checked check_4233, SourceCertificateFamily.of_right_checked check_4234, SourceCertificateFamily.of_right_checked check_4235, SourceCertificateFamily.of_right_checked check_4236, SourceCertificateFamily.of_right_checked check_4237, SourceCertificateFamily.of_right_checked check_4238, SourceCertificateFamily.of_right_checked check_4239, SourceCertificateFamily.of_right_checked check_4240, SourceCertificateFamily.of_right_checked check_4241, SourceCertificateFamily.of_right_checked check_4242, SourceCertificateFamily.of_right_checked check_4243, SourceCertificateFamily.of_right_checked check_4244, SourceCertificateFamily.of_right_checked check_4245, SourceCertificateFamily.of_right_checked check_4246, SourceCertificateFamily.of_right_checked check_4247, SourceCertificateFamily.of_right_checked check_4248, SourceCertificateFamily.of_right_checked check_4249, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0084

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0084
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0084
open AnalyticBounds.ExpressionCertificate

theorem linked_4200 : Linked cell_4200 pieces := by
  refine ⟨piece_372,piece_372_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4200,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1042_mem
    · exact piece_1043_mem

theorem linked_4201 : Linked cell_4201 pieces := by
  refine ⟨piece_372,piece_372_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4201,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1043_mem

theorem linked_4202 : Linked cell_4202 pieces := by
  refine ⟨piece_372,piece_372_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4202,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1043_mem

theorem linked_4203 : Linked cell_4203 pieces := by
  refine ⟨piece_372,piece_372_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4203,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1043_mem

theorem linked_4204 : Linked cell_4204 pieces := by
  refine ⟨piece_372,piece_372_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4204,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1043_mem
    · exact piece_1044_mem

theorem linked_4205 : Linked cell_4205 pieces := by
  refine ⟨piece_372,piece_372_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4205,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1044_mem

theorem linked_4206 : Linked cell_4206 pieces := by
  refine ⟨piece_372,piece_372_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4206,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1044_mem

theorem linked_4207 : Linked cell_4207 pieces := by
  refine ⟨piece_372,piece_372_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4207,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1044_mem
    · exact piece_1045_mem

theorem linked_4208 : Linked cell_4208 pieces := by
  refine ⟨piece_372,piece_372_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4208,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1045_mem

theorem linked_4209 : Linked cell_4209 pieces := by
  refine ⟨piece_373,piece_373_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4209,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1044_mem
    · exact piece_1045_mem

theorem linked_4210 : Linked cell_4210 pieces := by
  refine ⟨piece_373,piece_373_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4210,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1045_mem

theorem linked_4211 : Linked cell_4211 pieces := by
  refine ⟨piece_373,piece_373_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4211,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1045_mem

theorem linked_4212 : Linked cell_4212 pieces := by
  refine ⟨piece_373,piece_373_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4212,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1045_mem

theorem linked_4213 : Linked cell_4213 pieces := by
  refine ⟨piece_373,piece_373_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4213,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1045_mem
    · exact piece_1046_mem

theorem linked_4214 : Linked cell_4214 pieces := by
  refine ⟨piece_374,piece_374_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4214,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1046_mem

theorem linked_4215 : Linked cell_4215 pieces := by
  refine ⟨piece_374,piece_374_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4215,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1046_mem

theorem linked_4216 : Linked cell_4216 pieces := by
  refine ⟨piece_374,piece_374_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4216,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1046_mem

theorem linked_4217 : Linked cell_4217 pieces := by
  refine ⟨piece_374,piece_374_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4217,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1046_mem
    · exact piece_1047_mem

theorem linked_4218 : Linked cell_4218 pieces := by
  refine ⟨piece_374,piece_374_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4218,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1047_mem

theorem linked_4219 : Linked cell_4219 pieces := by
  refine ⟨piece_374,piece_374_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4219,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1047_mem

theorem linked_4220 : Linked cell_4220 pieces := by
  refine ⟨piece_374,piece_374_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4220,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1047_mem

theorem linked_4221 : Linked cell_4221 pieces := by
  refine ⟨piece_374,piece_374_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4221,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1047_mem
    · exact piece_1048_mem

theorem linked_4222 : Linked cell_4222 pieces := by
  refine ⟨piece_374,piece_374_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4222,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1048_mem

theorem linked_4223 : Linked cell_4223 pieces := by
  refine ⟨piece_374,piece_374_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4223,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1048_mem
    · exact piece_1049_mem

theorem linked_4224 : Linked cell_4224 pieces := by
  refine ⟨piece_374,piece_374_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4224,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1049_mem
    · exact piece_1050_mem

theorem linked_4225 : Linked cell_4225 pieces := by
  refine ⟨piece_374,piece_374_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4225,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1050_mem

theorem linked_4226 : Linked cell_4226 pieces := by
  refine ⟨piece_375,piece_375_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4226,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1049_mem
    · exact piece_1050_mem

theorem linked_4227 : Linked cell_4227 pieces := by
  refine ⟨piece_375,piece_375_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4227,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1050_mem

theorem linked_4228 : Linked cell_4228 pieces := by
  refine ⟨piece_375,piece_375_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4228,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1050_mem

theorem linked_4229 : Linked cell_4229 pieces := by
  refine ⟨piece_375,piece_375_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4229,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1050_mem

theorem linked_4230 : Linked cell_4230 pieces := by
  refine ⟨piece_375,piece_375_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4230,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1050_mem
    · exact piece_1051_mem

theorem linked_4231 : Linked cell_4231 pieces := by
  refine ⟨piece_375,piece_375_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4231,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1051_mem

theorem linked_4232 : Linked cell_4232 pieces := by
  refine ⟨piece_375,piece_375_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4232,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1051_mem

theorem linked_4233 : Linked cell_4233 pieces := by
  refine ⟨piece_375,piece_375_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4233,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1051_mem
    · exact piece_1052_mem

theorem linked_4234 : Linked cell_4234 pieces := by
  refine ⟨piece_375,piece_375_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4234,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1052_mem

theorem linked_4235 : Linked cell_4235 pieces := by
  refine ⟨piece_375,piece_375_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4235,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1052_mem

theorem linked_4236 : Linked cell_4236 pieces := by
  refine ⟨piece_375,piece_375_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4236,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1052_mem

theorem linked_4237 : Linked cell_4237 pieces := by
  refine ⟨piece_375,piece_375_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4237,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1052_mem
    · exact piece_1053_mem

theorem linked_4238 : Linked cell_4238 pieces := by
  refine ⟨piece_375,piece_375_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4238,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1053_mem

theorem linked_4239 : Linked cell_4239 pieces := by
  refine ⟨piece_375,piece_375_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4239,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1053_mem

theorem linked_4240 : Linked cell_4240 pieces := by
  refine ⟨piece_375,piece_375_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4240,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1053_mem
    · exact piece_1054_mem

theorem linked_4241 : Linked cell_4241 pieces := by
  refine ⟨piece_375,piece_375_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4241,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1054_mem

theorem linked_4242 : Linked cell_4242 pieces := by
  refine ⟨piece_376,piece_376_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4242,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1053_mem
    · exact piece_1054_mem

theorem linked_4243 : Linked cell_4243 pieces := by
  refine ⟨piece_376,piece_376_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4243,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1054_mem

theorem linked_4244 : Linked cell_4244 pieces := by
  refine ⟨piece_376,piece_376_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4244,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1054_mem

theorem linked_4245 : Linked cell_4245 pieces := by
  refine ⟨piece_376,piece_376_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4245,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1054_mem

theorem linked_4246 : Linked cell_4246 pieces := by
  refine ⟨piece_376,piece_376_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4246,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1054_mem
    · exact piece_1055_mem

theorem linked_4247 : Linked cell_4247 pieces := by
  refine ⟨piece_376,piece_376_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4247,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1055_mem

theorem linked_4248 : Linked cell_4248 pieces := by
  refine ⟨piece_376,piece_376_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4248,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1055_mem

theorem linked_4249 : Linked cell_4249 pieces := by
  refine ⟨piece_376,piece_376_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4249,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1055_mem
    · exact piece_1056_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0084.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0084.cells,List.forall_mem_cons]
  exact ⟨linked_4200, linked_4201, linked_4202, linked_4203, linked_4204, linked_4205, linked_4206, linked_4207, linked_4208, linked_4209, linked_4210, linked_4211, linked_4212, linked_4213, linked_4214, linked_4215, linked_4216, linked_4217, linked_4218, linked_4219, linked_4220, linked_4221, linked_4222, linked_4223, linked_4224, linked_4225, linked_4226, linked_4227, linked_4228, linked_4229, linked_4230, linked_4231, linked_4232, linked_4233, linked_4234, linked_4235, linked_4236, linked_4237, linked_4238, linked_4239, linked_4240, linked_4241, linked_4242, linked_4243, linked_4244, linked_4245, linked_4246, linked_4247, linked_4248, linked_4249, by simp⟩

theorem covered : covers (4023 / 32000 : ℚ) (509 / 4000 : ℚ)
    (SourceCertificates.Chunk0084.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0084
