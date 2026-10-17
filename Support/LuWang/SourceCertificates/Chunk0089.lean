import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0089
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(13350000000000001 / 100000000000000000 : ℚ), (13353125000000001 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (2559635171971 / 2500000000000 : ℚ)
  w := (98968759559933 / 100000000000000 : ℚ)
  center := (13351562500000001 / 100000000000000000 : ℚ)
  supportValue := (4640566257180049 / 10000000000000000 : ℚ)
  supportSlope := (2356443667234309 / 500000000000000 : ℚ)
  oldCenter := (4640566257180049 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_390
  oldLo := (46600000000000003 / 100000000000000000 : ℚ)
  oldHi := (46650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1115]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_4450 : Cell := { cellDefaults with
  oldLo := (4635195530726257 / 10000000000000000 : ℚ)
  oldHi := (23225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1110, piece_1111]
}

def cell_4451 : Cell := { cellDefaults with
  domain := ⟨(13353125000000001 / 100000000000000000 : ℚ), (13356250000000001 / 100000000000000000 : ℚ)⟩
  center := (13354687500000001 / 100000000000000000 : ℚ)
  supportValue := (5802548957503173 / 12500000000000000 : ℚ)
  supportSlope := (1178476722705657 / 250000000000000 : ℚ)
  oldCenter := (5802548957503173 / 12500000000000000 : ℚ)
  oldLo := (23200000000000001 / 50000000000000000 : ℚ)
  oldHi := (23225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1111]
}

def cell_4452 : Cell := { cellDefaults with
  domain := ⟨(13356250000000001 / 100000000000000000 : ℚ), (13359375000000001 / 100000000000000000 : ℚ)⟩
  center := (13357812500000001 / 100000000000000000 : ℚ)
  supportValue := (23217562243984463 / 50000000000000000 : ℚ)
  supportSlope := (9430208542600127 / 2000000000000000 : ℚ)
  oldCenter := (23217562243984463 / 50000000000000000 : ℚ)
  oldLo := (23200000000000001 / 50000000000000000 : ℚ)
  oldHi := (23225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1111]
}

def cell_4453 : Cell := { cellDefaults with
  domain := ⟨(13359375000000001 / 100000000000000000 : ℚ), (13362500000000001 / 100000000000000000 : ℚ)⟩
  center := (13360937500000001 / 100000000000000000 : ℚ)
  supportValue := (145155815811947 / 312500000000000 : ℚ)
  supportSlope := (2357776601789041 / 500000000000000 : ℚ)
  oldCenter := (145155815811947 / 312500000000000 : ℚ)
  oldLo := (23200000000000001 / 50000000000000000 : ℚ)
  oldHi := (23250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1111, piece_1112]
}

def cell_4454 : Cell := { cellDefaults with
  domain := ⟨(13362500000000001 / 100000000000000000 : ℚ), (13365625000000001 / 100000000000000000 : ℚ)⟩
  center := (13364062500000001 / 100000000000000000 : ℚ)
  supportValue := (1161614916108957 / 2500000000000000 : ℚ)
  supportSlope := (4715970112245671 / 1000000000000000 : ℚ)
  oldCenter := (1161614916108957 / 2500000000000000 : ℚ)
  oldLo := (23225000000000001 / 50000000000000000 : ℚ)
  oldHi := (23250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1112]
}

def cell_4455 : Cell := { cellDefaults with
  domain := ⟨(13365625000000001 / 100000000000000000 : ℚ), (13368750000000001 / 100000000000000000 : ℚ)⟩
  center := (13367187500000001 / 100000000000000000 : ℚ)
  supportValue := (1859173436582223 / 4000000000000000 : ℚ)
  supportSlope := (1179291022507467 / 250000000000000 : ℚ)
  oldCenter := (1859173436582223 / 4000000000000000 : ℚ)
  oldLo := (23225000000000001 / 50000000000000000 : ℚ)
  oldHi := (23250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1112]
}

def cell_4456 : Cell := { cellDefaults with
  domain := ⟨(13368750000000001 / 100000000000000000 : ℚ), (13371875000000001 / 100000000000000000 : ℚ)⟩
  center := (13370312500000001 / 100000000000000000 : ℚ)
  supportValue := (4649407891801331 / 10000000000000000 : ℚ)
  supportSlope := (471820937526779 / 100000000000000 : ℚ)
  oldCenter := (4649407891801331 / 10000000000000000 : ℚ)
  oldLo := (23225000000000001 / 50000000000000000 : ℚ)
  oldHi := (23275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1112, piece_1113]
}

def cell_4457 : Cell := { cellDefaults with
  domain := ⟨(13371875000000001 / 100000000000000000 : ℚ), (13375000000000001 / 100000000000000000 : ℚ)⟩
  center := (13373437500000001 / 100000000000000000 : ℚ)
  supportValue := (2325441140660077 / 5000000000000000 : ℚ)
  supportSlope := (1179508247797667 / 250000000000000 : ℚ)
  oldCenter := (2325441140660077 / 5000000000000000 : ℚ)
  oldLo := (23250000000000001 / 50000000000000000 : ℚ)
  oldHi := (23275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1113]
}

def cell_4458 : Cell := { cellDefaults with
  domain := ⟨(13375000000000001 / 100000000000000000 : ℚ), (13378125000000001 / 100000000000000000 : ℚ)⟩
  center := (13376562500000001 / 100000000000000000 : ℚ)
  supportValue := (145386151639187 / 312500000000000 : ℚ)
  supportSlope := (471922353905363 / 100000000000000 : ℚ)
  oldCenter := (145386151639187 / 312500000000000 : ℚ)
  oldLo := (23250000000000001 / 50000000000000000 : ℚ)
  oldHi := (23275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1113]
}

def cell_4459 : Cell := { cellDefaults with
  domain := ⟨(13378125000000001 / 100000000000000000 : ℚ), (13381250000000001 / 100000000000000000 : ℚ)⟩
  center := (13379687500000001 / 100000000000000000 : ℚ)
  supportValue := (1861532718336131 / 4000000000000000 : ℚ)
  supportSlope := (472041540810153 / 100000000000000 : ℚ)
  oldCenter := (1861532718336131 / 4000000000000000 : ℚ)
  oldLo := (23250000000000001 / 50000000000000000 : ℚ)
  oldHi := (23275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1113]
}

def cell_4460 : Cell := { cellDefaults with
  domain := ⟨(13381250000000001 / 100000000000000000 : ℚ), (13384375000000001 / 100000000000000000 : ℚ)⟩
  center := (13382812500000001 / 100000000000000000 : ℚ)
  supportValue := (46553070133730773 / 100000000000000000 : ℚ)
  supportSlope := (118013396505523 / 25000000000000 : ℚ)
  oldCenter := (46553070133730773 / 100000000000000000 : ℚ)
  oldLo := (23250000000000001 / 50000000000000000 : ℚ)
  oldHi := (46600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1113, piece_1114]
}

def cell_4461 : Cell := { cellDefaults with
  domain := ⟨(13384375000000001 / 100000000000000000 : ℚ), (13387500000000001 / 100000000000000000 : ℚ)⟩
  center := (13385937500000001 / 100000000000000000 : ℚ)
  supportValue := (2328391114250109 / 5000000000000000 : ℚ)
  supportSlope := (4721282585652631 / 1000000000000000 : ℚ)
  oldCenter := (2328391114250109 / 5000000000000000 : ℚ)
  oldLo := (23275000000000001 / 50000000000000000 : ℚ)
  oldHi := (46600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1114]
}

def cell_4462 : Cell := { cellDefaults with
  domain := ⟨(13387500000000001 / 100000000000000000 : ℚ), (13390625000000001 / 100000000000000000 : ℚ)⟩
  center := (13389062500000001 / 100000000000000000 : ℚ)
  supportValue := (46582578147963993 / 100000000000000000 : ℚ)
  supportSlope := (147577218192807 / 31250000000000 : ℚ)
  oldCenter := (46582578147963993 / 100000000000000000 : ℚ)
  oldLo := (23275000000000001 / 50000000000000000 : ℚ)
  oldHi := (46600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1114]
}

def cell_4463 : Cell := { cellDefaults with
  domain := ⟨(13390625000000001 / 100000000000000000 : ℚ), (13393750000000001 / 100000000000000000 : ℚ)⟩
  center := (13392187500000001 / 100000000000000000 : ℚ)
  supportValue := (1164933443167871 / 2500000000000000 : ℚ)
  supportSlope := (4723178944958661 / 1000000000000000 : ℚ)
  oldCenter := (1164933443167871 / 2500000000000000 : ℚ)
  oldLo := (23275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1114, piece_1115]
}

def cell_4464 : Cell := { cellDefaults with
  domain := ⟨(13393750000000001 / 100000000000000000 : ℚ), (13396875000000001 / 100000000000000000 : ℚ)⟩
  center := (13395312500000001 / 100000000000000000 : ℚ)
  supportValue := (11653024290655159 / 25000000000000000 : ℚ)
  supportSlope := (1180835298959071 / 250000000000000 : ℚ)
  oldCenter := (11653024290655159 / 25000000000000000 : ℚ)
  oldPieces := [piece_1115]
}

def cell_4465 : Cell := { cellDefaults with
  domain := ⟨(13396875000000001 / 100000000000000000 : ℚ), (13400000000000001 / 100000000000000000 : ℚ)⟩
  center := (13398437500000001 / 100000000000000000 : ℚ)
  supportValue := (4662685945327401 / 10000000000000000 : ℚ)
  supportSlope := (23622630461348493 / 5000000000000000 : ℚ)
  oldCenter := (4662685945327401 / 10000000000000000 : ℚ)
  oldPieces := [piece_1115]
}

def cell_4466 : Cell := { cellDefaults with
  domain := ⟨(13400000000000001 / 100000000000000000 : ℚ), (13403125000000001 / 100000000000000000 : ℚ)⟩
  r := (409073166163 / 400000000000 : ℚ)
  w := (98992644232811 / 100000000000000 : ℚ)
  center := (13401562500000001 / 100000000000000000 : ℚ)
  supportValue := (46607662383589227 / 100000000000000000 : ℚ)
  supportSlope := (73764980063451 / 15625000000000 : ℚ)
  oldCenter := (46607662383589227 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_391
  oldPieces := [piece_1115]
}

def cell_4467 : Cell := { cellDefaults with
  domain := ⟨(13403125000000001 / 100000000000000000 : ℚ), (13406250000000001 / 100000000000000000 : ℚ)⟩
  r := (409073166163 / 400000000000 : ℚ)
  w := (98992644232811 / 100000000000000 : ℚ)
  center := (13404687500000001 / 100000000000000000 : ℚ)
  supportValue := (932448344638843 / 2000000000000000 : ℚ)
  supportSlope := (472214549228589 / 100000000000000 : ℚ)
  oldCenter := (932448344638843 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_391
  oldPieces := [piece_1115]
}

def cell_4468 : Cell := { cellDefaults with
  domain := ⟨(13406250000000001 / 100000000000000000 : ℚ), (13409375000000001 / 100000000000000000 : ℚ)⟩
  r := (409073166163 / 400000000000 : ℚ)
  w := (98992644232811 / 100000000000000 : ℚ)
  center := (13407812500000001 / 100000000000000000 : ℚ)
  supportValue := (1865487031639399 / 4000000000000000 : ℚ)
  supportSlope := (4723333566454713 / 1000000000000000 : ℚ)
  oldCenter := (1865487031639399 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_391
  oldPieces := [piece_1115]
}

def cell_4469 : Cell := { cellDefaults with
  domain := ⟨(13409375000000001 / 100000000000000000 : ℚ), (13412500000000001 / 100000000000000000 : ℚ)⟩
  r := (409073166163 / 400000000000 : ℚ)
  w := (98992644232811 / 100000000000000 : ℚ)
  center := (13410937500000001 / 100000000000000000 : ℚ)
  supportValue := (2332596872459499 / 5000000000000000 : ℚ)
  supportSlope := (4723576238923499 / 1000000000000000 : ℚ)
  oldCenter := (2332596872459499 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_391
  oldHi := (46700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1115, piece_1116]
}

def cell_4470 : Cell := { cellDefaults with
  domain := ⟨(13412500000000001 / 100000000000000000 : ℚ), (13415625000000001 / 100000000000000000 : ℚ)⟩
  r := (409073166163 / 400000000000 : ℚ)
  w := (98992644232811 / 100000000000000 : ℚ)
  center := (13414062500000001 / 100000000000000000 : ℚ)
  supportValue := (9333339750071099 / 20000000000000000 : ℚ)
  supportSlope := (4724208637147953 / 1000000000000000 : ℚ)
  oldCenter := (9333339750071099 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_391
  oldLo := (46650000000000003 / 100000000000000000 : ℚ)
  oldHi := (46700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1116]
}

def cell_4471 : Cell := { cellDefaults with
  domain := ⟨(13415625000000001 / 100000000000000000 : ℚ), (13418750000000001 / 100000000000000000 : ℚ)⟩
  r := (409073166163 / 400000000000 : ℚ)
  w := (98992644232811 / 100000000000000 : ℚ)
  center := (13417187500000001 / 100000000000000000 : ℚ)
  supportValue := (46681463751231217 / 100000000000000000 : ℚ)
  supportSlope := (4725393192343219 / 1000000000000000 : ℚ)
  oldCenter := (46681463751231217 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_391
  oldLo := (46650000000000003 / 100000000000000000 : ℚ)
  oldHi := (46700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1116]
}

def cell_4472 : Cell := { cellDefaults with
  domain := ⟨(13418750000000001 / 100000000000000000 : ℚ), (13421875000000001 / 100000000000000000 : ℚ)⟩
  r := (409073166163 / 400000000000 : ℚ)
  w := (98992644232811 / 100000000000000 : ℚ)
  center := (13420312500000001 / 100000000000000000 : ℚ)
  supportValue := (2334811622793391 / 5000000000000000 : ℚ)
  supportSlope := (9452427114066353 / 2000000000000000 : ℚ)
  oldCenter := (2334811622793391 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_391
  oldLo := (46650000000000003 / 100000000000000000 : ℚ)
  oldHi := (46750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1116, piece_1117]
}

def cell_4473 : Cell := { cellDefaults with
  domain := ⟨(13421875000000001 / 100000000000000000 : ℚ), (13425000000000001 / 100000000000000000 : ℚ)⟩
  r := (409073166163 / 400000000000 : ℚ)
  w := (98992644232811 / 100000000000000 : ℚ)
  center := (13423437500000001 / 100000000000000000 : ℚ)
  supportValue := (4671100139333521 / 10000000000000000 : ℚ)
  supportSlope := (4726271320718567 / 1000000000000000 : ℚ)
  oldCenter := (4671100139333521 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_391
  oldLo := (46700000000000003 / 100000000000000000 : ℚ)
  oldHi := (46750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1117]
}

def cell_4474 : Cell := { cellDefaults with
  domain := ⟨(13425000000000001 / 100000000000000000 : ℚ), (13428125000000001 / 100000000000000000 : ℚ)⟩
  r := (409073166163 / 400000000000 : ℚ)
  w := (98992644232811 / 100000000000000 : ℚ)
  center := (13426562500000001 / 100000000000000000 : ℚ)
  supportValue := (23362886417278053 / 50000000000000000 : ℚ)
  supportSlope := (4727452327346171 / 1000000000000000 : ℚ)
  oldCenter := (23362886417278053 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_391
  oldLo := (46700000000000003 / 100000000000000000 : ℚ)
  oldHi := (46750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1117]
}

def cell_4475 : Cell := { cellDefaults with
  domain := ⟨(13428125000000001 / 100000000000000000 : ℚ), (13431250000000001 / 100000000000000000 : ℚ)⟩
  r := (409073166163 / 400000000000 : ℚ)
  w := (98992644232811 / 100000000000000 : ℚ)
  center := (13429687500000001 / 100000000000000000 : ℚ)
  supportValue := (9348109593686289 / 20000000000000000 : ℚ)
  supportSlope := (236431731018083 / 50000000000000 : ℚ)
  oldCenter := (9348109593686289 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_391
  oldLo := (46700000000000003 / 100000000000000000 : ℚ)
  oldHi := (46750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1117]
}

def cell_4476 : Cell := { cellDefaults with
  domain := ⟨(13431250000000001 / 100000000000000000 : ℚ), (13434375000000001 / 100000000000000000 : ℚ)⟩
  r := (409073166163 / 400000000000 : ℚ)
  w := (98992644232811 / 100000000000000 : ℚ)
  center := (13432812500000001 / 100000000000000000 : ℚ)
  supportValue := (2337766256342143 / 5000000000000000 : ℚ)
  supportSlope := (4728539834671253 / 1000000000000000 : ℚ)
  oldCenter := (2337766256342143 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_391
  oldLo := (46700000000000003 / 100000000000000000 : ℚ)
  oldHi := (46800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1117, piece_1118]
}

def cell_4477 : Cell := { cellDefaults with
  domain := ⟨(13434375000000001 / 100000000000000000 : ℚ), (13437500000000001 / 100000000000000000 : ℚ)⟩
  r := (409073166163 / 400000000000 : ℚ)
  w := (98992644232811 / 100000000000000 : ℚ)
  center := (13435937500000001 / 100000000000000000 : ℚ)
  supportValue := (935402060135927 / 2000000000000000 : ℚ)
  supportSlope := (4729510943590753 / 1000000000000000 : ℚ)
  oldCenter := (935402060135927 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_391
  oldLo := (46750000000000003 / 100000000000000000 : ℚ)
  oldHi := (46800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1118]
}

def cell_4478 : Cell := { cellDefaults with
  domain := ⟨(13437500000000001 / 100000000000000000 : ℚ), (13440625000000001 / 100000000000000000 : ℚ)⟩
  r := (409073166163 / 400000000000 : ℚ)
  w := (98992644232811 / 100000000000000 : ℚ)
  center := (13439062500000001 / 100000000000000000 : ℚ)
  supportValue := (23392442284140383 / 50000000000000000 : ℚ)
  supportSlope := (4730689671591293 / 1000000000000000 : ℚ)
  oldCenter := (23392442284140383 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_391
  oldLo := (46750000000000003 / 100000000000000000 : ℚ)
  oldHi := (46800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1118]
}

def cell_4479 : Cell := { cellDefaults with
  domain := ⟨(13440625000000001 / 100000000000000000 : ℚ), (13443750000000001 / 100000000000000000 : ℚ)⟩
  r := (409073166163 / 400000000000 : ℚ)
  w := (98992644232811 / 100000000000000 : ℚ)
  center := (13442187500000001 / 100000000000000000 : ℚ)
  supportValue := (9359933963057071 / 20000000000000000 : ℚ)
  supportSlope := (1182790932488409 / 250000000000000 : ℚ)
  oldCenter := (9359933963057071 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_391
  oldLo := (46750000000000003 / 100000000000000000 : ℚ)
  oldHi := (46850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1118, piece_1119]
}

def cell_4480 : Cell := { cellDefaults with
  domain := ⟨(13443750000000001 / 100000000000000000 : ℚ), (13446875000000001 / 100000000000000000 : ℚ)⟩
  r := (409073166163 / 400000000000 : ℚ)
  w := (98992644232811 / 100000000000000 : ℚ)
  center := (13445312500000001 / 100000000000000000 : ℚ)
  supportValue := (11703613558189141 / 25000000000000000 : ℚ)
  supportSlope := (2365784467441401 / 500000000000000 : ℚ)
  oldCenter := (11703613558189141 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_391
  oldLo := (46800000000000003 / 100000000000000000 : ℚ)
  oldHi := (46850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1119]
}

def cell_4481 : Cell := { cellDefaults with
  domain := ⟨(13446875000000001 / 100000000000000000 : ℚ), (13450000000000001 / 100000000000000000 : ℚ)⟩
  r := (409073166163 / 400000000000 : ℚ)
  w := (98992644232811 / 100000000000000 : ℚ)
  center := (13448437500000001 / 100000000000000000 : ℚ)
  supportValue := (4682924222063787 / 10000000000000000 : ℚ)
  supportSlope := (946548914460621 / 200000000000000 : ℚ)
  oldCenter := (4682924222063787 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_391
  oldLo := (46800000000000003 / 100000000000000000 : ℚ)
  oldHi := (46850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1119]
}

def cell_4482 : Cell := { cellDefaults with
  domain := ⟨(13450000000000001 / 100000000000000000 : ℚ), (13453125000000001 / 100000000000000000 : ℚ)⟩
  r := (10215149109637 / 10000000000000 : ℚ)
  w := (24754055507787 / 25000000000000 : ℚ)
  center := (13451562500000001 / 100000000000000000 : ℚ)
  supportValue := (23404919235338373 / 50000000000000000 : ℚ)
  supportSlope := (4729155468242041 / 1000000000000000 : ℚ)
  oldCenter := (23404919235338373 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_392
  oldLo := (46800000000000003 / 100000000000000000 : ℚ)
  oldHi := (46850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1119]
}

def cell_4483 : Cell := { cellDefaults with
  domain := ⟨(13453125000000001 / 100000000000000000 : ℚ), (13456250000000001 / 100000000000000000 : ℚ)⟩
  r := (10215149109637 / 10000000000000 : ℚ)
  w := (24754055507787 / 25000000000000 : ℚ)
  center := (13454687500000001 / 100000000000000000 : ℚ)
  supportValue := (1170615472985881 / 2500000000000000 : ℚ)
  supportSlope := (4730333000910747 / 1000000000000000 : ℚ)
  oldCenter := (1170615472985881 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_392
  oldLo := (46800000000000003 / 100000000000000000 : ℚ)
  oldHi := (46850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1119]
}

def cell_4484 : Cell := { cellDefaults with
  domain := ⟨(13456250000000001 / 100000000000000000 : ℚ), (13459375000000001 / 100000000000000000 : ℚ)⟩
  r := (10215149109637 / 10000000000000 : ℚ)
  w := (24754055507787 / 25000000000000 : ℚ)
  center := (13457812500000001 / 100000000000000000 : ℚ)
  supportValue := (4683940304996993 / 10000000000000000 : ℚ)
  supportSlope := (18482467991493 / 3906250000000 : ℚ)
  oldCenter := (4683940304996993 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_392
  oldLo := (46800000000000003 / 100000000000000000 : ℚ)
  oldHi := (46850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1119]
}

def cell_4485 : Cell := { cellDefaults with
  domain := ⟨(13459375000000001 / 100000000000000000 : ℚ), (13462500000000001 / 100000000000000000 : ℚ)⟩
  r := (10215149109637 / 10000000000000 : ℚ)
  w := (24754055507787 / 25000000000000 : ℚ)
  center := (13460937500000001 / 100000000000000000 : ℚ)
  supportValue := (23427094782047253 / 50000000000000000 : ℚ)
  supportSlope := (4731539322646583 / 1000000000000000 : ℚ)
  oldCenter := (23427094782047253 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_392
  oldLo := (46800000000000003 / 100000000000000000 : ℚ)
  oldHi := (46900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1119, piece_1120]
}

def cell_4486 : Cell := { cellDefaults with
  domain := ⟨(13462500000000001 / 100000000000000000 : ℚ), (13465625000000001 / 100000000000000000 : ℚ)⟩
  r := (10215149109637 / 10000000000000 : ℚ)
  w := (24754055507787 / 25000000000000 : ℚ)
  center := (13464062500000001 / 100000000000000000 : ℚ)
  supportValue := (23434488232563097 / 50000000000000000 : ℚ)
  supportSlope := (4732395916578369 / 1000000000000000 : ℚ)
  oldCenter := (23434488232563097 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_392
  oldLo := (46850000000000003 / 100000000000000000 : ℚ)
  oldHi := (46900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1120]
}

def cell_4487 : Cell := { cellDefaults with
  domain := ⟨(13465625000000001 / 100000000000000000 : ℚ), (13468750000000001 / 100000000000000000 : ℚ)⟩
  r := (10215149109637 / 10000000000000 : ℚ)
  w := (24754055507787 / 25000000000000 : ℚ)
  center := (13467187500000001 / 100000000000000000 : ℚ)
  supportValue := (4688376703660057 / 10000000000000000 : ℚ)
  supportSlope := (4733571089182931 / 1000000000000000 : ℚ)
  oldCenter := (4688376703660057 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_392
  oldLo := (46850000000000003 / 100000000000000000 : ℚ)
  oldHi := (46900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1120]
}

def cell_4488 : Cell := { cellDefaults with
  domain := ⟨(13468750000000001 / 100000000000000000 : ℚ), (13471875000000001 / 100000000000000000 : ℚ)⟩
  r := (10215149109637 / 10000000000000 : ℚ)
  w := (24754055507787 / 25000000000000 : ℚ)
  center := (13470312500000001 / 100000000000000000 : ℚ)
  supportValue := (46898561282462137 / 100000000000000000 : ℚ)
  supportSlope := (2367079111338377 / 500000000000000 : ℚ)
  oldCenter := (46898561282462137 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_392
  oldLo := (46850000000000003 / 100000000000000000 : ℚ)
  oldHi := (46950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1120, piece_1121, piece_1122]
}

def cell_4489 : Cell := { cellDefaults with
  domain := ⟨(13471875000000001 / 100000000000000000 : ℚ), (13475000000000001 / 100000000000000000 : ℚ)⟩
  r := (10215149109637 / 10000000000000 : ℚ)
  w := (24754055507787 / 25000000000000 : ℚ)
  center := (13473437500000001 / 100000000000000000 : ℚ)
  supportValue := (2345667753786523 / 5000000000000000 : ℚ)
  supportSlope := (23672291191561 / 5000000000000 : ℚ)
  oldCenter := (2345667753786523 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_392
  oldLo := (4690502793296089 / 10000000000000000 : ℚ)
  oldHi := (46950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1122]
}

def cell_4490 : Cell := { cellDefaults with
  domain := ⟨(13475000000000001 / 100000000000000000 : ℚ), (13478125000000001 / 100000000000000000 : ℚ)⟩
  r := (10215149109637 / 10000000000000 : ℚ)
  w := (24754055507787 / 25000000000000 : ℚ)
  center := (13476562500000001 / 100000000000000000 : ℚ)
  supportValue := (18331309408849 / 39062500000000 : ℚ)
  supportSlope := (473563001235533 / 100000000000000 : ℚ)
  oldCenter := (18331309408849 / 39062500000000 : ℚ)
  newCoefficients := coefficients_392
  oldLo := (4690502793296089 / 10000000000000000 : ℚ)
  oldHi := (46950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1122]
}

def cell_4491 : Cell := { cellDefaults with
  domain := ⟨(13478125000000001 / 100000000000000000 : ℚ), (13481250000000001 / 100000000000000000 : ℚ)⟩
  r := (10215149109637 / 10000000000000 : ℚ)
  w := (24754055507787 / 25000000000000 : ℚ)
  center := (13479687500000001 / 100000000000000000 : ℚ)
  supportValue := (4694295276132671 / 10000000000000000 : ℚ)
  supportSlope := (473676776622689 / 100000000000000 : ℚ)
  oldCenter := (4694295276132671 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_392
  oldLo := (4690502793296089 / 10000000000000000 : ℚ)
  oldHi := (47000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1122, piece_1123]
}

def cell_4492 : Cell := { cellDefaults with
  domain := ⟨(13481250000000001 / 100000000000000000 : ℚ), (13484375000000001 / 100000000000000000 : ℚ)⟩
  r := (10215149109637 / 10000000000000 : ℚ)
  w := (24754055507787 / 25000000000000 : ℚ)
  center := (13482812500000001 / 100000000000000000 : ℚ)
  supportValue := (23478877359440467 / 50000000000000000 : ℚ)
  supportSlope := (4736519859633859 / 1000000000000000 : ℚ)
  oldCenter := (23478877359440467 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_392
  oldLo := (46950000000000003 / 100000000000000000 : ℚ)
  oldHi := (47000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1123]
}

def cell_4493 : Cell := { cellDefaults with
  domain := ⟨(13484375000000001 / 100000000000000000 : ℚ), (13487500000000001 / 100000000000000000 : ℚ)⟩
  r := (10215149109637 / 10000000000000 : ℚ)
  w := (24754055507787 / 25000000000000 : ℚ)
  center := (13485937500000001 / 100000000000000000 : ℚ)
  supportValue := (2348627908367433 / 5000000000000000 : ℚ)
  supportSlope := (4737688417584707 / 1000000000000000 : ℚ)
  oldCenter := (2348627908367433 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_392
  oldLo := (46950000000000003 / 100000000000000000 : ℚ)
  oldHi := (47000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1123]
}

def cell_4494 : Cell := { cellDefaults with
  domain := ⟨(13487500000000001 / 100000000000000000 : ℚ), (13490625000000001 / 100000000000000000 : ℚ)⟩
  r := (10215149109637 / 10000000000000 : ℚ)
  w := (24754055507787 / 25000000000000 : ℚ)
  center := (13489062500000001 / 100000000000000000 : ℚ)
  supportValue := (1879494610780033 / 4000000000000000 : ℚ)
  supportSlope := (2369429109233323 / 500000000000000 : ℚ)
  oldCenter := (1879494610780033 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_392
  oldLo := (46950000000000003 / 100000000000000000 : ℚ)
  oldHi := (47000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1123]
}

def cell_4495 : Cell := { cellDefaults with
  domain := ⟨(13490625000000001 / 100000000000000000 : ℚ), (13493750000000001 / 100000000000000000 : ℚ)⟩
  r := (10215149109637 / 10000000000000 : ℚ)
  w := (24754055507787 / 25000000000000 : ℚ)
  center := (13492187500000001 / 100000000000000000 : ℚ)
  supportValue := (940043507264169 / 2000000000000000 : ℚ)
  supportSlope := (4739091198086243 / 1000000000000000 : ℚ)
  oldCenter := (940043507264169 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_392
  oldLo := (46950000000000003 / 100000000000000000 : ℚ)
  oldHi := (47050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1123, piece_1124]
}

def cell_4496 : Cell := { cellDefaults with
  domain := ⟨(13493750000000001 / 100000000000000000 : ℚ), (13496875000000001 / 100000000000000000 : ℚ)⟩
  r := (10215149109637 / 10000000000000 : ℚ)
  w := (24754055507787 / 25000000000000 : ℚ)
  center := (13495312500000001 / 100000000000000000 : ℚ)
  supportValue := (47016985248067067 / 100000000000000000 : ℚ)
  supportSlope := (9479492881428797 / 2000000000000000 : ℚ)
  oldCenter := (47016985248067067 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_392
  oldLo := (47000000000000003 / 100000000000000000 : ℚ)
  oldHi := (47050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1124]
}

def cell_4497 : Cell := { cellDefaults with
  domain := ⟨(13496875000000001 / 100000000000000000 : ℚ), (13500000000000001 / 100000000000000000 : ℚ)⟩
  r := (10215149109637 / 10000000000000 : ℚ)
  w := (24754055507787 / 25000000000000 : ℚ)
  center := (13498437500000001 / 100000000000000000 : ℚ)
  supportValue := (940635975529277 / 2000000000000000 : ℚ)
  supportSlope := (9481825979602121 / 2000000000000000 : ℚ)
  oldCenter := (940635975529277 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_392
  oldLo := (47000000000000003 / 100000000000000000 : ℚ)
  oldHi := (47050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1124]
}

def cell_4498 : Cell := { cellDefaults with
  domain := ⟨(13500000000000001 / 100000000000000000 : ℚ), (13503125000000001 / 100000000000000000 : ℚ)⟩
  r := (255087506259 / 250000000000 : ℚ)
  w := (99039494552197 / 100000000000000 : ℚ)
  center := (13501562500000001 / 100000000000000000 : ℚ)
  supportValue := (235060937480073 / 500000000000000 : ℚ)
  supportSlope := (2368651129907917 / 500000000000000 : ℚ)
  oldCenter := (235060937480073 / 500000000000000 : ℚ)
  newCoefficients := coefficients_393
  oldLo := (47000000000000003 / 100000000000000000 : ℚ)
  oldHi := (47050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1124]
}

def cell_4499 : Cell := { cellDefaults with
  domain := ⟨(13503125000000001 / 100000000000000000 : ℚ), (13506250000000001 / 100000000000000000 : ℚ)⟩
  r := (255087506259 / 250000000000 : ℚ)
  w := (99039494552197 / 100000000000000 : ℚ)
  center := (13504687500000001 / 100000000000000000 : ℚ)
  supportValue := (9405398677826623 / 20000000000000000 : ℚ)
  supportSlope := (4738470593089517 / 1000000000000000 : ℚ)
  oldCenter := (9405398677826623 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_393
  oldLo := (47000000000000003 / 100000000000000000 : ℚ)
  oldHi := (47050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1124]
}

theorem check_4450 : SourceCertificateFamily.RightNormalized.check cell_4450 = true := by
  decide +kernel

theorem check_4451 : SourceCertificateFamily.RightNormalized.check cell_4451 = true := by
  decide +kernel

theorem check_4452 : SourceCertificateFamily.RightNormalized.check cell_4452 = true := by
  decide +kernel

theorem check_4453 : SourceCertificateFamily.RightNormalized.check cell_4453 = true := by
  decide +kernel

theorem check_4454 : SourceCertificateFamily.RightNormalized.check cell_4454 = true := by
  decide +kernel

theorem check_4455 : SourceCertificateFamily.RightNormalized.check cell_4455 = true := by
  decide +kernel

theorem check_4456 : SourceCertificateFamily.RightNormalized.check cell_4456 = true := by
  decide +kernel

theorem check_4457 : SourceCertificateFamily.RightNormalized.check cell_4457 = true := by
  decide +kernel

theorem check_4458 : SourceCertificateFamily.RightNormalized.check cell_4458 = true := by
  decide +kernel

theorem check_4459 : SourceCertificateFamily.RightNormalized.check cell_4459 = true := by
  decide +kernel

theorem check_4460 : SourceCertificateFamily.RightNormalized.check cell_4460 = true := by
  decide +kernel

theorem check_4461 : SourceCertificateFamily.RightNormalized.check cell_4461 = true := by
  decide +kernel

theorem check_4462 : SourceCertificateFamily.RightNormalized.check cell_4462 = true := by
  decide +kernel

theorem check_4463 : SourceCertificateFamily.RightNormalized.check cell_4463 = true := by
  decide +kernel

theorem check_4464 : SourceCertificateFamily.RightNormalized.check cell_4464 = true := by
  decide +kernel

theorem check_4465 : SourceCertificateFamily.RightNormalized.check cell_4465 = true := by
  decide +kernel

theorem check_4466 : SourceCertificateFamily.RightNormalized.check cell_4466 = true := by
  decide +kernel

theorem check_4467 : SourceCertificateFamily.RightNormalized.check cell_4467 = true := by
  decide +kernel

theorem check_4468 : SourceCertificateFamily.RightNormalized.check cell_4468 = true := by
  decide +kernel

theorem check_4469 : SourceCertificateFamily.RightNormalized.check cell_4469 = true := by
  decide +kernel

theorem check_4470 : SourceCertificateFamily.RightNormalized.check cell_4470 = true := by
  decide +kernel

theorem check_4471 : SourceCertificateFamily.RightNormalized.check cell_4471 = true := by
  decide +kernel

theorem check_4472 : SourceCertificateFamily.RightNormalized.check cell_4472 = true := by
  decide +kernel

theorem check_4473 : SourceCertificateFamily.RightNormalized.check cell_4473 = true := by
  decide +kernel

theorem check_4474 : SourceCertificateFamily.RightNormalized.check cell_4474 = true := by
  decide +kernel

theorem check_4475 : SourceCertificateFamily.RightNormalized.check cell_4475 = true := by
  decide +kernel

theorem check_4476 : SourceCertificateFamily.RightNormalized.check cell_4476 = true := by
  decide +kernel

theorem check_4477 : SourceCertificateFamily.RightNormalized.check cell_4477 = true := by
  decide +kernel

theorem check_4478 : SourceCertificateFamily.RightNormalized.check cell_4478 = true := by
  decide +kernel

theorem check_4479 : SourceCertificateFamily.RightNormalized.check cell_4479 = true := by
  decide +kernel

theorem check_4480 : SourceCertificateFamily.RightNormalized.check cell_4480 = true := by
  decide +kernel

theorem check_4481 : SourceCertificateFamily.RightNormalized.check cell_4481 = true := by
  decide +kernel

theorem check_4482 : SourceCertificateFamily.RightNormalized.check cell_4482 = true := by
  decide +kernel

theorem check_4483 : SourceCertificateFamily.RightNormalized.check cell_4483 = true := by
  decide +kernel

theorem check_4484 : SourceCertificateFamily.RightNormalized.check cell_4484 = true := by
  decide +kernel

theorem check_4485 : SourceCertificateFamily.RightNormalized.check cell_4485 = true := by
  decide +kernel

theorem check_4486 : SourceCertificateFamily.RightNormalized.check cell_4486 = true := by
  decide +kernel

theorem check_4487 : SourceCertificateFamily.RightNormalized.check cell_4487 = true := by
  decide +kernel

theorem check_4488 : SourceCertificateFamily.RightNormalized.check cell_4488 = true := by
  decide +kernel

theorem check_4489 : SourceCertificateFamily.RightNormalized.check cell_4489 = true := by
  decide +kernel

theorem check_4490 : SourceCertificateFamily.RightNormalized.check cell_4490 = true := by
  decide +kernel

theorem check_4491 : SourceCertificateFamily.RightNormalized.check cell_4491 = true := by
  decide +kernel

theorem check_4492 : SourceCertificateFamily.RightNormalized.check cell_4492 = true := by
  decide +kernel

theorem check_4493 : SourceCertificateFamily.RightNormalized.check cell_4493 = true := by
  decide +kernel

theorem check_4494 : SourceCertificateFamily.RightNormalized.check cell_4494 = true := by
  decide +kernel

theorem check_4495 : SourceCertificateFamily.RightNormalized.check cell_4495 = true := by
  decide +kernel

theorem check_4496 : SourceCertificateFamily.RightNormalized.check cell_4496 = true := by
  decide +kernel

theorem check_4497 : SourceCertificateFamily.RightNormalized.check cell_4497 = true := by
  decide +kernel

theorem check_4498 : SourceCertificateFamily.RightNormalized.check cell_4498 = true := by
  decide +kernel

theorem check_4499 : SourceCertificateFamily.RightNormalized.check cell_4499 = true := by
  decide +kernel

def cells : List Cell := [cell_4450, cell_4451, cell_4452, cell_4453, cell_4454, cell_4455, cell_4456, cell_4457, cell_4458, cell_4459, cell_4460, cell_4461, cell_4462, cell_4463, cell_4464, cell_4465, cell_4466, cell_4467, cell_4468, cell_4469, cell_4470, cell_4471, cell_4472, cell_4473, cell_4474, cell_4475, cell_4476, cell_4477, cell_4478, cell_4479, cell_4480, cell_4481, cell_4482, cell_4483, cell_4484, cell_4485, cell_4486, cell_4487, cell_4488, cell_4489, cell_4490, cell_4491, cell_4492, cell_4493, cell_4494, cell_4495, cell_4496, cell_4497, cell_4498, cell_4499]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_4450, SourceCertificateFamily.of_right_checked check_4451, SourceCertificateFamily.of_right_checked check_4452, SourceCertificateFamily.of_right_checked check_4453, SourceCertificateFamily.of_right_checked check_4454, SourceCertificateFamily.of_right_checked check_4455, SourceCertificateFamily.of_right_checked check_4456, SourceCertificateFamily.of_right_checked check_4457, SourceCertificateFamily.of_right_checked check_4458, SourceCertificateFamily.of_right_checked check_4459, SourceCertificateFamily.of_right_checked check_4460, SourceCertificateFamily.of_right_checked check_4461, SourceCertificateFamily.of_right_checked check_4462, SourceCertificateFamily.of_right_checked check_4463, SourceCertificateFamily.of_right_checked check_4464, SourceCertificateFamily.of_right_checked check_4465, SourceCertificateFamily.of_right_checked check_4466, SourceCertificateFamily.of_right_checked check_4467, SourceCertificateFamily.of_right_checked check_4468, SourceCertificateFamily.of_right_checked check_4469, SourceCertificateFamily.of_right_checked check_4470, SourceCertificateFamily.of_right_checked check_4471, SourceCertificateFamily.of_right_checked check_4472, SourceCertificateFamily.of_right_checked check_4473, SourceCertificateFamily.of_right_checked check_4474, SourceCertificateFamily.of_right_checked check_4475, SourceCertificateFamily.of_right_checked check_4476, SourceCertificateFamily.of_right_checked check_4477, SourceCertificateFamily.of_right_checked check_4478, SourceCertificateFamily.of_right_checked check_4479, SourceCertificateFamily.of_right_checked check_4480, SourceCertificateFamily.of_right_checked check_4481, SourceCertificateFamily.of_right_checked check_4482, SourceCertificateFamily.of_right_checked check_4483, SourceCertificateFamily.of_right_checked check_4484, SourceCertificateFamily.of_right_checked check_4485, SourceCertificateFamily.of_right_checked check_4486, SourceCertificateFamily.of_right_checked check_4487, SourceCertificateFamily.of_right_checked check_4488, SourceCertificateFamily.of_right_checked check_4489, SourceCertificateFamily.of_right_checked check_4490, SourceCertificateFamily.of_right_checked check_4491, SourceCertificateFamily.of_right_checked check_4492, SourceCertificateFamily.of_right_checked check_4493, SourceCertificateFamily.of_right_checked check_4494, SourceCertificateFamily.of_right_checked check_4495, SourceCertificateFamily.of_right_checked check_4496, SourceCertificateFamily.of_right_checked check_4497, SourceCertificateFamily.of_right_checked check_4498, SourceCertificateFamily.of_right_checked check_4499, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0089

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0089
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0089
open AnalyticBounds.ExpressionCertificate

theorem linked_4450 : Linked cell_4450 pieces := by
  apply Linked.of_piece piece_390 piece_390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4450, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1110_mem, piece_1111_mem⟩

theorem linked_4451 : Linked cell_4451 pieces := by
  apply Linked.of_piece piece_390 piece_390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4451, List.cons_subset, List.nil_subset, and_true]
  exact piece_1111_mem

theorem linked_4452 : Linked cell_4452 pieces := by
  apply Linked.of_piece piece_390 piece_390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4452, List.cons_subset, List.nil_subset, and_true]
  exact piece_1111_mem

theorem linked_4453 : Linked cell_4453 pieces := by
  apply Linked.of_piece piece_390 piece_390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4453, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1111_mem, piece_1112_mem⟩

theorem linked_4454 : Linked cell_4454 pieces := by
  apply Linked.of_piece piece_390 piece_390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4454, List.cons_subset, List.nil_subset, and_true]
  exact piece_1112_mem

theorem linked_4455 : Linked cell_4455 pieces := by
  apply Linked.of_piece piece_390 piece_390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4455, List.cons_subset, List.nil_subset, and_true]
  exact piece_1112_mem

theorem linked_4456 : Linked cell_4456 pieces := by
  apply Linked.of_piece piece_390 piece_390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4456, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1112_mem, piece_1113_mem⟩

theorem linked_4457 : Linked cell_4457 pieces := by
  apply Linked.of_piece piece_390 piece_390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4457, List.cons_subset, List.nil_subset, and_true]
  exact piece_1113_mem

theorem linked_4458 : Linked cell_4458 pieces := by
  apply Linked.of_piece piece_390 piece_390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4458, List.cons_subset, List.nil_subset, and_true]
  exact piece_1113_mem

theorem linked_4459 : Linked cell_4459 pieces := by
  apply Linked.of_piece piece_390 piece_390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4459, List.cons_subset, List.nil_subset, and_true]
  exact piece_1113_mem

theorem linked_4460 : Linked cell_4460 pieces := by
  apply Linked.of_piece piece_390 piece_390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4460, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1113_mem, piece_1114_mem⟩

theorem linked_4461 : Linked cell_4461 pieces := by
  apply Linked.of_piece piece_390 piece_390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4461, List.cons_subset, List.nil_subset, and_true]
  exact piece_1114_mem

theorem linked_4462 : Linked cell_4462 pieces := by
  apply Linked.of_piece piece_390 piece_390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4462, List.cons_subset, List.nil_subset, and_true]
  exact piece_1114_mem

theorem linked_4463 : Linked cell_4463 pieces := by
  apply Linked.of_piece piece_390 piece_390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4463, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1114_mem, piece_1115_mem⟩

theorem linked_4464 : Linked cell_4464 pieces := by
  apply Linked.of_piece piece_390 piece_390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4464, List.cons_subset, List.nil_subset, and_true]
  exact piece_1115_mem

theorem linked_4465 : Linked cell_4465 pieces := by
  apply Linked.of_piece piece_390 piece_390_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4465, List.cons_subset, List.nil_subset, and_true]
  exact piece_1115_mem

theorem linked_4466 : Linked cell_4466 pieces := by
  apply Linked.of_piece piece_391 piece_391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4466, List.cons_subset, List.nil_subset, and_true]
  exact piece_1115_mem

theorem linked_4467 : Linked cell_4467 pieces := by
  apply Linked.of_piece piece_391 piece_391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4467, List.cons_subset, List.nil_subset, and_true]
  exact piece_1115_mem

theorem linked_4468 : Linked cell_4468 pieces := by
  apply Linked.of_piece piece_391 piece_391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4468, List.cons_subset, List.nil_subset, and_true]
  exact piece_1115_mem

theorem linked_4469 : Linked cell_4469 pieces := by
  apply Linked.of_piece piece_391 piece_391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4469, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1115_mem, piece_1116_mem⟩

theorem linked_4470 : Linked cell_4470 pieces := by
  apply Linked.of_piece piece_391 piece_391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4470, List.cons_subset, List.nil_subset, and_true]
  exact piece_1116_mem

theorem linked_4471 : Linked cell_4471 pieces := by
  apply Linked.of_piece piece_391 piece_391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4471, List.cons_subset, List.nil_subset, and_true]
  exact piece_1116_mem

theorem linked_4472 : Linked cell_4472 pieces := by
  apply Linked.of_piece piece_391 piece_391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4472, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1116_mem, piece_1117_mem⟩

theorem linked_4473 : Linked cell_4473 pieces := by
  apply Linked.of_piece piece_391 piece_391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4473, List.cons_subset, List.nil_subset, and_true]
  exact piece_1117_mem

theorem linked_4474 : Linked cell_4474 pieces := by
  apply Linked.of_piece piece_391 piece_391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4474, List.cons_subset, List.nil_subset, and_true]
  exact piece_1117_mem

theorem linked_4475 : Linked cell_4475 pieces := by
  apply Linked.of_piece piece_391 piece_391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4475, List.cons_subset, List.nil_subset, and_true]
  exact piece_1117_mem

theorem linked_4476 : Linked cell_4476 pieces := by
  apply Linked.of_piece piece_391 piece_391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4476, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1117_mem, piece_1118_mem⟩

theorem linked_4477 : Linked cell_4477 pieces := by
  apply Linked.of_piece piece_391 piece_391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4477, List.cons_subset, List.nil_subset, and_true]
  exact piece_1118_mem

theorem linked_4478 : Linked cell_4478 pieces := by
  apply Linked.of_piece piece_391 piece_391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4478, List.cons_subset, List.nil_subset, and_true]
  exact piece_1118_mem

theorem linked_4479 : Linked cell_4479 pieces := by
  apply Linked.of_piece piece_391 piece_391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4479, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1118_mem, piece_1119_mem⟩

theorem linked_4480 : Linked cell_4480 pieces := by
  apply Linked.of_piece piece_391 piece_391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4480, List.cons_subset, List.nil_subset, and_true]
  exact piece_1119_mem

theorem linked_4481 : Linked cell_4481 pieces := by
  apply Linked.of_piece piece_391 piece_391_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4481, List.cons_subset, List.nil_subset, and_true]
  exact piece_1119_mem

theorem linked_4482 : Linked cell_4482 pieces := by
  apply Linked.of_piece piece_392 piece_392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4482, List.cons_subset, List.nil_subset, and_true]
  exact piece_1119_mem

theorem linked_4483 : Linked cell_4483 pieces := by
  apply Linked.of_piece piece_392 piece_392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4483, List.cons_subset, List.nil_subset, and_true]
  exact piece_1119_mem

theorem linked_4484 : Linked cell_4484 pieces := by
  apply Linked.of_piece piece_392 piece_392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4484, List.cons_subset, List.nil_subset, and_true]
  exact piece_1119_mem

theorem linked_4485 : Linked cell_4485 pieces := by
  apply Linked.of_piece piece_392 piece_392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4485, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1119_mem, piece_1120_mem⟩

theorem linked_4486 : Linked cell_4486 pieces := by
  apply Linked.of_piece piece_392 piece_392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4486, List.cons_subset, List.nil_subset, and_true]
  exact piece_1120_mem

theorem linked_4487 : Linked cell_4487 pieces := by
  apply Linked.of_piece piece_392 piece_392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4487, List.cons_subset, List.nil_subset, and_true]
  exact piece_1120_mem

theorem linked_4488 : Linked cell_4488 pieces := by
  apply Linked.of_piece piece_392 piece_392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4488, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1120_mem, ⟨piece_1121_mem, piece_1122_mem⟩⟩

theorem linked_4489 : Linked cell_4489 pieces := by
  apply Linked.of_piece piece_392 piece_392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4489, List.cons_subset, List.nil_subset, and_true]
  exact piece_1122_mem

theorem linked_4490 : Linked cell_4490 pieces := by
  apply Linked.of_piece piece_392 piece_392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4490, List.cons_subset, List.nil_subset, and_true]
  exact piece_1122_mem

theorem linked_4491 : Linked cell_4491 pieces := by
  apply Linked.of_piece piece_392 piece_392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4491, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1122_mem, piece_1123_mem⟩

theorem linked_4492 : Linked cell_4492 pieces := by
  apply Linked.of_piece piece_392 piece_392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4492, List.cons_subset, List.nil_subset, and_true]
  exact piece_1123_mem

theorem linked_4493 : Linked cell_4493 pieces := by
  apply Linked.of_piece piece_392 piece_392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4493, List.cons_subset, List.nil_subset, and_true]
  exact piece_1123_mem

theorem linked_4494 : Linked cell_4494 pieces := by
  apply Linked.of_piece piece_392 piece_392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4494, List.cons_subset, List.nil_subset, and_true]
  exact piece_1123_mem

theorem linked_4495 : Linked cell_4495 pieces := by
  apply Linked.of_piece piece_392 piece_392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4495, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1123_mem, piece_1124_mem⟩

theorem linked_4496 : Linked cell_4496 pieces := by
  apply Linked.of_piece piece_392 piece_392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4496, List.cons_subset, List.nil_subset, and_true]
  exact piece_1124_mem

theorem linked_4497 : Linked cell_4497 pieces := by
  apply Linked.of_piece piece_392 piece_392_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4497, List.cons_subset, List.nil_subset, and_true]
  exact piece_1124_mem

theorem linked_4498 : Linked cell_4498 pieces := by
  apply Linked.of_piece piece_393 piece_393_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4498, List.cons_subset, List.nil_subset, and_true]
  exact piece_1124_mem

theorem linked_4499 : Linked cell_4499 pieces := by
  apply Linked.of_piece piece_393 piece_393_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4499, List.cons_subset, List.nil_subset, and_true]
  exact piece_1124_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0089.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0089.cells,List.forall_mem_cons]
  exact ⟨linked_4450, linked_4451, linked_4452, linked_4453, linked_4454, linked_4455, linked_4456, linked_4457, linked_4458, linked_4459, linked_4460, linked_4461, linked_4462, linked_4463, linked_4464, linked_4465, linked_4466, linked_4467, linked_4468, linked_4469, linked_4470, linked_4471, linked_4472, linked_4473, linked_4474, linked_4475, linked_4476, linked_4477, linked_4478, linked_4479, linked_4480, linked_4481, linked_4482, linked_4483, linked_4484, linked_4485, linked_4486, linked_4487, linked_4488, linked_4489, linked_4490, linked_4491, linked_4492, linked_4493, linked_4494, linked_4495, linked_4496, linked_4497, linked_4498, linked_4499, by simp⟩

theorem covered : covers (13350000000000001 / 100000000000000000 : ℚ) (13506250000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0089.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0089
