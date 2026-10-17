import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0030
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(1310500000000000061 / 32000000000000000000 : ℚ), (655500000000000031 / 16000000000000000000 : ℚ)⟩
  branch := .small
  r := (1646724289513 / 1250000000000 : ℚ)
  w := (79742901914101 / 100000000000000 : ℚ)
  center := (2621500000000000123 / 64000000000000000000 : ℚ)
  supportValue := (15017452719581663 / 5000000000000000 : ℚ)
  supportSlope := (7923723212456919 / 1000000000000000 : ℚ)
  oldCenter := (39368252304383331401646684508544549 / 320000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_188
  oldLo := (12350000000000001 / 100000000000000000 : ℚ)
  oldHi := (12400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_368]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_1500 : Cell := { cellDefaults with
  r := (13197620968757 / 10000000000000 : ℚ)
  w := (39820474135151 / 50000000000000 : ℚ)
  newCoefficients := coefficients_187
  oldLo := (12250000000000001 / 100000000000000000 : ℚ)
  oldHi := (12350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_366, piece_367]
}

def cell_1501 : Cell := { cellDefaults with
  domain := ⟨(655500000000000031 / 16000000000000000000 : ℚ), (20500000000000001 / 500000000000000000 : ℚ)⟩
  r := (13197620968757 / 10000000000000 : ℚ)
  w := (39820474135151 / 50000000000000 : ℚ)
  center := (1311500000000000063 / 32000000000000000000 : ℚ)
  supportValue := (6007351614225641 / 2000000000000000 : ℚ)
  supportSlope := (15873861250383893 / 2000000000000000 : ℚ)
  oldCenter := (7878641642056928549963151696215383 / 64000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_187
  oldLo := (12300000000000001 / 100000000000000000 : ℚ)
  oldHi := (12350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_367]
}

def cell_1502 : Cell := { cellDefaults with
  domain := ⟨(20500000000000001 / 500000000000000000 : ℚ), (20515625000000001 / 500000000000000000 : ℚ)⟩
  center := (20507812500000001 / 500000000000000000 : ℚ)
  supportValue := (3002896199807389 / 1000000000000000 : ℚ)
  supportSlope := (3974700310820367 / 500000000000000 : ℚ)
  oldCenter := (61582832222612472729458699807389 / 500000000000000000000000000000000 : ℚ)
  oldLo := (12300000000000001 / 100000000000000000 : ℚ)
  oldHi := (12350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_367]
}

def cell_1503 : Cell := { cellDefaults with
  domain := ⟨(20515625000000001 / 500000000000000000 : ℚ), (20531250000000001 / 500000000000000000 : ℚ)⟩
  center := (20523437500000001 / 500000000000000000 : ℚ)
  supportValue := (30031449002447723 / 10000000000000000 : ℚ)
  supportSlope := (497965754593821 / 62500000000000 : ℚ)
  oldCenter := (616348566636173220039261502447723 / 5000000000000000000000000000000000 : ℚ)
  oldLo := (12300000000000001 / 100000000000000000 : ℚ)
  oldHi := (12350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_367]
}

def cell_1504 : Cell := { cellDefaults with
  domain := ⟨(20531250000000001 / 500000000000000000 : ℚ), (20546875000000001 / 500000000000000000 : ℚ)⟩
  center := (20539062500000001 / 500000000000000000 : ℚ)
  supportValue := (293300211527 / 97656250000 : ℚ)
  supportSlope := (1597116676572341 / 200000000000000 : ℚ)
  oldCenter := (6024111375816273730800211527 / 48828125000000000000000000000 : ℚ)
  oldLo := (12300000000000001 / 100000000000000000 : ℚ)
  oldHi := (12350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_367]
}

def cell_1505 : Cell := { cellDefaults with
  domain := ⟨(20546875000000001 / 500000000000000000 : ℚ), (20562500000000001 / 500000000000000000 : ℚ)⟩
  center := (20554687500000001 / 500000000000000000 : ℚ)
  supportValue := (15018219998413307 / 5000000000000000 : ℚ)
  supportSlope := (3992444924918459 / 500000000000000 : ℚ)
  oldCenter := (308694818873636036244782498413307 / 2500000000000000000000000000000000 : ℚ)
  oldLo := (12300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_367, piece_368]
}

def cell_1506 : Cell := { cellDefaults with
  domain := ⟨(20562500000000001 / 500000000000000000 : ℚ), (20578125000000001 / 500000000000000000 : ℚ)⟩
  center := (20570312500000001 / 500000000000000000 : ℚ)
  supportValue := (15019463927648127 / 5000000000000000 : ℚ)
  supportSlope := (7956202592737327 / 1000000000000000 : ℚ)
  oldCenter := (308955066574199377449151427648127 / 2500000000000000000000000000000000 : ℚ)
  oldPieces := [piece_368]
}

def cell_1507 : Cell := { cellDefaults with
  domain := ⟨(20578125000000001 / 500000000000000000 : ℚ), (20593750000000001 / 500000000000000000 : ℚ)⟩
  center := (20585937500000001 / 500000000000000000 : ℚ)
  supportValue := (1502070847651761 / 500000000000000 : ℚ)
  supportSlope := (7974047364967873 / 1000000000000000 : ℚ)
  oldCenter := (30921536590331175213008347651761 / 250000000000000000000000000000000 : ℚ)
  oldPieces := [piece_368]
}

def cell_1508 : Cell := { cellDefaults with
  domain := ⟨(20593750000000001 / 500000000000000000 : ℚ), (20609375000000001 / 500000000000000000 : ℚ)⟩
  center := (20601562500000001 / 500000000000000000 : ℚ)
  supportValue := (3004391163955593 / 1000000000000000 : ℚ)
  supportSlope := (3995985439416927 / 500000000000000 : ℚ)
  oldCenter := (61895152338678899418453663955593 / 500000000000000000000000000000000 : ℚ)
  oldPieces := [piece_368]
}

def cell_1509 : Cell := { cellDefaults with
  domain := ⟨(20609375000000001 / 500000000000000000 : ℚ), (20625000000000001 / 500000000000000000 : ℚ)⟩
  center := (20617187500000001 / 500000000000000000 : ℚ)
  supportValue := (7511602984877569 / 2500000000000000 : ℚ)
  supportSlope := (8009973423639849 / 1000000000000000 : ℚ)
  oldCenter := (154868127164780512128790484877569 / 1250000000000000000000000000000000 : ℚ)
  oldPieces := [piece_368]
}

def cell_1510 : Cell := { cellDefaults with
  domain := ⟨(20625000000000001 / 500000000000000000 : ℚ), (20632812500000001 / 500000000000000000 : ℚ)⟩
  center := (20628906250000001 / 500000000000000000 : ℚ)
  supportValue := (7512074218208159 / 2500000000000000 : ℚ)
  supportSlope := (4011762442928557 / 500000000000000 : ℚ)
  oldCenter := (154965874790458162508167968208159 / 1250000000000000000000000000000000 : ℚ)
  oldPieces := [piece_368]
}

def cell_1511 : Cell := { cellDefaults with
  domain := ⟨(20632812500000001 / 500000000000000000 : ℚ), (20640625000000001 / 500000000000000000 : ℚ)⟩
  center := (20636718750000001 / 500000000000000000 : ℚ)
  supportValue := (1502477320783687 / 500000000000000 : ℚ)
  supportSlope := (15938075012400077 / 2000000000000000 : ℚ)
  oldCenter := (31006201897266479709508570783687 / 250000000000000000000000000000000 : ℚ)
  oldHi := (249 / 2000 : ℚ)
  oldPieces := [piece_368, piece_369]
}

def cell_1512 : Cell := { cellDefaults with
  domain := ⟨(20640625000000001 / 500000000000000000 : ℚ), (20656250000000001 / 500000000000000000 : ℚ)⟩
  center := (20648437500000001 / 500000000000000000 : ℚ)
  supportValue := (1502570467003567 / 500000000000000 : ℚ)
  supportSlope := (7980744366903991 / 1000000000000000 : ℚ)
  oldCenter := (31025732377268966979132967003567 / 250000000000000000000000000000000 : ℚ)
  oldLo := (12400000000000001 / 100000000000000000 : ℚ)
  oldHi := (249 / 2000 : ℚ)
  oldPieces := [piece_369]
}

def cell_1513 : Cell := { cellDefaults with
  domain := ⟨(20656250000000001 / 500000000000000000 : ℚ), (20671875000000001 / 500000000000000000 : ℚ)⟩
  center := (20664062500000001 / 500000000000000000 : ℚ)
  supportValue := (15026953042965039 / 5000000000000000 : ℚ)
  supportSlope := (1599690671650933 / 200000000000000 : ℚ)
  oldCenter := (310517896864394766237890542965039 / 2500000000000000000000000000000000 : ℚ)
  oldLo := (12400000000000001 / 100000000000000000 : ℚ)
  oldHi := (249 / 2000 : ℚ)
  oldPieces := [piece_369]
}

def cell_1514 : Cell := { cellDefaults with
  domain := ⟨(20671875000000001 / 500000000000000000 : ℚ), (20687500000000001 / 500000000000000000 : ℚ)⟩
  center := (20679687500000001 / 500000000000000000 : ℚ)
  supportValue := (1502820418900263 / 500000000000000 : ℚ)
  supportSlope := (250507507313813 / 31250000000000 : ℚ)
  oldCenter := (31077856631476534010632918900263 / 250000000000000000000000000000000 : ℚ)
  oldLo := (12400000000000001 / 100000000000000000 : ℚ)
  oldHi := (249 / 2000 : ℚ)
  oldPieces := [piece_369]
}

def cell_1515 : Cell := { cellDefaults with
  domain := ⟨(20687500000000001 / 500000000000000000 : ℚ), (20703125000000001 / 500000000000000000 : ℚ)⟩
  center := (20695312500000001 / 500000000000000000 : ℚ)
  supportValue := (7514729060170079 / 2500000000000000 : ℚ)
  supportSlope := (8034105279847381 / 1000000000000000 : ℚ)
  oldCenter := (155519666253051095569416560170079 / 1250000000000000000000000000000000 : ℚ)
  oldLo := (12400000000000001 / 100000000000000000 : ℚ)
  oldHi := (249 / 2000 : ℚ)
  oldPieces := [piece_369]
}

def cell_1516 : Cell := { cellDefaults with
  domain := ⟨(20703125000000001 / 500000000000000000 : ℚ), (20718750000000001 / 500000000000000000 : ℚ)⟩
  center := (20710937500000001 / 500000000000000000 : ℚ)
  supportValue := (15030712908086883 / 5000000000000000 : ℚ)
  supportSlope := (4003653522303807 / 500000000000000 : ℚ)
  oldCenter := (311300155619830693413525408086883 / 2500000000000000000000000000000000 : ℚ)
  oldLo := (12400000000000001 / 100000000000000000 : ℚ)
  oldHi := (1 / 8 : ℚ)
  oldPieces := [piece_369, piece_370]
}

def cell_1517 : Cell := { cellDefaults with
  domain := ⟨(20718750000000001 / 500000000000000000 : ℚ), (20734375000000001 / 500000000000000000 : ℚ)⟩
  center := (20726562500000001 / 500000000000000000 : ℚ)
  supportValue := (15031962326364223 / 5000000000000000 : ℚ)
  supportSlope := (2001258201623557 / 250000000000000 : ℚ)
  oldCenter := (311560906655033480805399826364223 / 2500000000000000000000000000000000 : ℚ)
  oldLo := (249 / 2000 : ℚ)
  oldHi := (1 / 8 : ℚ)
  oldPieces := [piece_370]
}

def cell_1518 : Cell := { cellDefaults with
  domain := ⟨(20734375000000001 / 500000000000000000 : ℚ), (20750000000000001 / 500000000000000000 : ℚ)⟩
  center := (20742187500000001 / 500000000000000000 : ℚ)
  supportValue := (6013285793234017 / 2000000000000000 : ℚ)
  supportSlope := (8022597241421181 / 1000000000000000 : ℚ)
  oldCenter := (124728701414346218005473293234017 / 1000000000000000000000000000000000 : ℚ)
  oldLo := (249 / 2000 : ℚ)
  oldHi := (1 / 8 : ℚ)
  oldPieces := [piece_370]
}

def cell_1519 : Cell := { cellDefaults with
  domain := ⟨(20750000000000001 / 500000000000000000 : ℚ), (332250000000000013 / 8000000000000000000 : ℚ)⟩
  r := (526003318783 / 400000000000 : ℚ)
  w := (19960604185939 / 25000000000000 : ℚ)
  center := (664250000000000029 / 16000000000000000000 : ℚ)
  supportValue := (30058221633832747 / 10000000000000000 : ℚ)
  supportSlope := (200868681547919 / 25000000000000 : ℚ)
  oldCenter := (19966173720273403066438427381149663 / 160000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_189
  oldLo := (249 / 2000 : ℚ)
  oldHi := (1 / 8 : ℚ)
  oldPieces := [piece_370]
}

def cell_1520 : Cell := { cellDefaults with
  domain := ⟨(332250000000000013 / 8000000000000000000 : ℚ), (33250000000000001 / 800000000000000000 : ℚ)⟩
  r := (526003318783 / 400000000000 : ℚ)
  w := (19960604185939 / 25000000000000 : ℚ)
  center := (664750000000000023 / 16000000000000000000 : ℚ)
  supportValue := (15030367625832213 / 5000000000000000 : ℚ)
  supportSlope := (805243097940443 / 100000000000000 : ℚ)
  oldCenter := (9991436879271963937448455394140899 / 80000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_189
  oldLo := (249 / 2000 : ℚ)
  oldHi := (1 / 8 : ℚ)
  oldPieces := [piece_370]
}

def cell_1521 : Cell := { cellDefaults with
  domain := ⟨(33250000000000001 / 800000000000000000 : ℚ), (665250000000000017 / 16000000000000000000 : ℚ)⟩
  r := (526003318783 / 400000000000 : ℚ)
  w := (19960604185939 / 25000000000000 : ℚ)
  center := (1330250000000000037 / 32000000000000000000 : ℚ)
  supportValue := (15031315055352683 / 5000000000000000 : ℚ)
  supportSlope := (8065742065071031 / 1000000000000000 : ℚ)
  oldCenter := (19995406852382907116908657048049271 / 160000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_189
  oldLo := (249 / 2000 : ℚ)
  oldHi := (1 / 8 : ℚ)
  oldPieces := [piece_370]
}

def cell_1522 : Cell := { cellDefaults with
  domain := ⟨(665250000000000017 / 16000000000000000000 : ℚ), (332750000000000007 / 8000000000000000000 : ℚ)⟩
  r := (526003318783 / 400000000000 : ℚ)
  w := (19960604185939 / 25000000000000 : ℚ)
  center := (1330750000000000031 / 32000000000000000000 : ℚ)
  supportValue := (3006388658355813 / 1000000000000000 : ℚ)
  supportSlope := (1001736135286547 / 125000000000000 : ℚ)
  oldCenter := (4000751707106998242948048409030203 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_189
  oldLo := (249 / 2000 : ℚ)
  oldHi := (251 / 2000 : ℚ)
  oldPieces := [piece_370, piece_371]
}

def cell_1523 : Cell := { cellDefaults with
  domain := ⟨(332750000000000007 / 8000000000000000000 : ℚ), (83250000000000001 / 2000000000000000000 : ℚ)⟩
  r := (526003318783 / 400000000000 : ℚ)
  w := (19960604185939 / 25000000000000 : ℚ)
  center := (665750000000000011 / 16000000000000000000 : ℚ)
  supportValue := (93955498766127 / 31250000000000 : ℚ)
  supportSlope := (80237142892373 / 10000000000000 : ℚ)
  oldCenter := (62550873303549051283510486427397 / 500000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_189
  oldLo := (1 / 8 : ℚ)
  oldHi := (251 / 2000 : ℚ)
  oldPieces := [piece_371]
}

def cell_1524 : Cell := { cellDefaults with
  domain := ⟨(83250000000000001 / 2000000000000000000 : ℚ), (333250000000000001 / 8000000000000000000 : ℚ)⟩
  r := (526003318783 / 400000000000 : ℚ)
  w := (19960604185939 / 25000000000000 : ℚ)
  center := (133250000000000001 / 3200000000000000000 : ℚ)
  supportValue := (3006826972743541 / 1000000000000000 : ℚ)
  supportSlope := (8041092011836877 / 1000000000000000 : ℚ)
  oldCenter := (400659694118076841256826972743541 / 3200000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_189
  oldLo := (1 / 8 : ℚ)
  oldHi := (251 / 2000 : ℚ)
  oldPieces := [piece_371]
}

def cell_1525 : Cell := { cellDefaults with
  domain := ⟨(333250000000000001 / 8000000000000000000 : ℚ), (166749999999999999 / 4000000000000000000 : ℚ)⟩
  r := (526003318783 / 400000000000 : ℚ)
  w := (19960604185939 / 25000000000000 : ℚ)
  center := (666749999999999999 / 16000000000000000000 : ℚ)
  supportValue := (7517696323021127 / 2500000000000000 : ℚ)
  supportSlope := (8058545564040383 / 1000000000000000 : ℚ)
  oldCenter := (5012424023374336419732303676978873 / 40000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_189
  oldLo := (1 / 8 : ℚ)
  oldHi := (251 / 2000 : ℚ)
  oldPieces := [piece_371]
}

def cell_1526 : Cell := { cellDefaults with
  domain := ⟨(166749999999999999 / 4000000000000000000 : ℚ), (66749999999999999 / 1600000000000000000 : ℚ)⟩
  r := (526003318783 / 400000000000 : ℚ)
  w := (19960604185939 / 25000000000000 : ℚ)
  center := (667249999999999993 / 16000000000000000000 : ℚ)
  supportValue := (1503665316142387 / 500000000000000 : ℚ)
  supportSlope := (8076075222163677 / 1000000000000000 : ℚ)
  oldCenter := (1003320682196007715224342787003291 / 8000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_189
  oldLo := (1 / 8 : ℚ)
  oldHi := (251 / 2000 : ℚ)
  oldPieces := [piece_371]
}

def cell_1527 : Cell := { cellDefaults with
  domain := ⟨(66749999999999999 / 1600000000000000000 : ℚ), (41749999999999999 / 1000000000000000000 : ℚ)⟩
  r := (526003318783 / 400000000000 : ℚ)
  w := (19960604185939 / 25000000000000 : ℚ)
  center := (667749999999999987 / 16000000000000000000 : ℚ)
  supportValue := (3007582912490599 / 1000000000000000 : ℚ)
  supportSlope := (805003757250243 / 100000000000000 : ℚ)
  oldCenter := (2008313489815597443151422137622213 / 16000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_189
  oldLo := (1 / 8 : ℚ)
  oldHi := (63 / 500 : ℚ)
  oldPieces := [piece_371, piece_372]
}

def cell_1528 : Cell := { cellDefaults with
  domain := ⟨(41749999999999999 / 1000000000000000000 : ℚ), (334249999999999989 / 8000000000000000000 : ℚ)⟩
  r := (526003318783 / 400000000000 : ℚ)
  w := (19960604185939 / 25000000000000 : ℚ)
  center := (668249999999999981 / 16000000000000000000 : ℚ)
  supportValue := (30078341280969143 / 10000000000000000 : ℚ)
  supportSlope := (1609501237209107 / 200000000000000 : ℚ)
  oldCenter := (20099851561007629238261515661586283 / 160000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_189
  oldLo := (251 / 2000 : ℚ)
  oldHi := (63 / 500 : ℚ)
  oldPieces := [piece_372]
}

def cell_1529 : Cell := { cellDefaults with
  domain := ⟨(334249999999999989 / 8000000000000000000 : ℚ), (167249999999999993 / 4000000000000000000 : ℚ)⟩
  r := (526003318783 / 400000000000 : ℚ)
  w := (19960604185939 / 25000000000000 : ℚ)
  center := (26749999999999999 / 640000000000000000 : ℚ)
  supportValue := (3008085882060917 / 1000000000000000 : ℚ)
  supportSlope := (8064771084207319 / 1000000000000000 : ℚ)
  oldCenter := (80466297345129526741914117939083 / 640000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_189
  oldLo := (251 / 2000 : ℚ)
  oldHi := (63 / 500 : ℚ)
  oldPieces := [piece_372]
}

def cell_1530 : Cell := { cellDefaults with
  domain := ⟨(167249999999999993 / 4000000000000000000 : ℚ), (334749999999999983 / 8000000000000000000 : ℚ)⟩
  r := (526003318783 / 400000000000 : ℚ)
  w := (19960604185939 / 25000000000000 : ℚ)
  center := (669249999999999969 / 16000000000000000000 : ℚ)
  supportValue := (15041690883625807 / 5000000000000000 : ℚ)
  supportSlope := (4041055539886477 / 500000000000000 : ℚ)
  oldCenter := (10066651623866570868457582607599983 / 80000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_189
  oldLo := (251 / 2000 : ℚ)
  oldHi := (63 / 500 : ℚ)
  oldPieces := [piece_372]
}

def cell_1531 : Cell := { cellDefaults with
  domain := ⟨(334749999999999983 / 8000000000000000000 : ℚ), (16749999999999999 / 400000000000000000 : ℚ)⟩
  r := (526003318783 / 400000000000 : ℚ)
  w := (19960604185939 / 25000000000000 : ℚ)
  center := (669749999999999963 / 16000000000000000000 : ℚ)
  supportValue := (30085910144406927 / 10000000000000000 : ℚ)
  supportSlope := (404976322288069 / 50000000000000 : ℚ)
  oldCenter := (20150038319216538245071324656943701 / 160000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_189
  oldLo := (251 / 2000 : ℚ)
  oldHi := (63 / 500 : ℚ)
  oldPieces := [piece_372]
}

def cell_1532 : Cell := { cellDefaults with
  domain := ⟨(16749999999999999 / 400000000000000000 : ℚ), (335249999999999977 / 8000000000000000000 : ℚ)⟩
  r := (526003318783 / 400000000000 : ℚ)
  w := (19960604185939 / 25000000000000 : ℚ)
  center := (670249999999999957 / 16000000000000000000 : ℚ)
  supportValue := (1203537440812279 / 400000000000000 : ℚ)
  supportSlope := (8060026305770503 / 1000000000000000 : ℚ)
  oldCenter := (806670969704429947997890045072003 / 6400000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_189
  oldLo := (251 / 2000 : ℚ)
  oldHi := (12614525139664803 / 100000000000000000 : ℚ)
  oldPieces := [piece_372, piece_373]
}

def cell_1533 : Cell := { cellDefaults with
  domain := ⟨(335249999999999977 / 8000000000000000000 : ℚ), (167749999999999987 / 4000000000000000000 : ℚ)⟩
  r := (526003318783 / 400000000000 : ℚ)
  w := (19960604185939 / 25000000000000 : ℚ)
  center := (670749999999999951 / 16000000000000000000 : ℚ)
  supportValue := (30090955576878513 / 10000000000000000 : ℚ)
  supportSlope := (8071111691862239 / 1000000000000000 : ℚ)
  oldCenter := (20183508453191261120293176732952863 / 160000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_189
  oldLo := (63 / 500 : ℚ)
  oldHi := (253 / 2000 : ℚ)
  oldPieces := [piece_373, piece_374]
}

def cell_1534 : Cell := { cellDefaults with
  domain := ⟨(167749999999999987 / 4000000000000000000 : ℚ), (335749999999999971 / 8000000000000000000 : ℚ)⟩
  r := (526003318783 / 400000000000 : ℚ)
  w := (19960604185939 / 25000000000000 : ℚ)
  center := (134249999999999989 / 3200000000000000000 : ℚ)
  supportValue := (3009348046920017 / 1000000000000000 : ℚ)
  supportSlope := (4044103182863571 / 500000000000000 : ℚ)
  oldCenter := (404004975299012249147171483879813 / 3200000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_189
  oldLo := (12614525139664803 / 100000000000000000 : ℚ)
  oldHi := (253 / 2000 : ℚ)
  oldPieces := [piece_374]
}

def cell_1535 : Cell := { cellDefaults with
  domain := ⟨(335749999999999971 / 8000000000000000000 : ℚ), (10499999999999999 / 250000000000000000 : ℚ)⟩
  r := (526003318783 / 400000000000 : ℚ)
  w := (19960604185939 / 25000000000000 : ℚ)
  center := (671749999999999939 / 16000000000000000000 : ℚ)
  supportValue := (3009601071012447 / 1000000000000000 : ℚ)
  supportSlope := (810535894981977 / 100000000000000 : ℚ)
  oldCenter := (2021699519452611088664334668240733 / 16000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_189
  oldLo := (12614525139664803 / 100000000000000000 : ℚ)
  oldHi := (253 / 2000 : ℚ)
  oldPieces := [piece_374]
}

def cell_1536 : Cell := { cellDefaults with
  domain := ⟨(10499999999999999 / 250000000000000000 : ℚ), (10507812499999999 / 250000000000000000 : ℚ)⟩
  r := (2625297118763 / 2000000000000 : ℚ)
  w := (9992445463883 / 12500000000000 : ℚ)
  center := (10503906249999999 / 250000000000000000 : ℚ)
  supportValue := (15043701200717041 / 5000000000000000 : ℚ)
  supportSlope := (4058576481071441 / 500000000000000 : ℚ)
  oldCenter := (158017627065344216397705049282959 / 1250000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_190
  oldLo := (12614525139664803 / 100000000000000000 : ℚ)
  oldHi := (253 / 2000 : ℚ)
  oldPieces := [piece_374]
}

def cell_1537 : Cell := { cellDefaults with
  domain := ⟨(10507812499999999 / 250000000000000000 : ℚ), (10515624999999999 / 250000000000000000 : ℚ)⟩
  r := (2625297118763 / 2000000000000 : ℚ)
  w := (9992445463883 / 12500000000000 : ℚ)
  center := (10511718749999999 / 250000000000000000 : ℚ)
  supportValue := (15044969108174673 / 5000000000000000 : ℚ)
  supportSlope := (252878993268979 / 31250000000000 : ℚ)
  oldCenter := (158148483867570473404249641825327 / 1250000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_190
  oldLo := (12614525139664803 / 100000000000000000 : ℚ)
  oldHi := (127 / 1000 : ℚ)
  oldPieces := [piece_374, piece_375]
}

def cell_1538 : Cell := { cellDefaults with
  domain := ⟨(10515624999999999 / 250000000000000000 : ℚ), (10523437499999999 / 250000000000000000 : ℚ)⟩
  r := (2625297118763 / 2000000000000 : ℚ)
  w := (9992445463883 / 12500000000000 : ℚ)
  center := (10519531249999999 / 250000000000000000 : ℚ)
  supportValue := (30092463434752053 / 10000000000000000 : ℚ)
  supportSlope := (1617824126560663 / 200000000000000 : ℚ)
  oldCenter := (316558609491356527442692815247947 / 2500000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_190
  oldLo := (253 / 2000 : ℚ)
  oldHi := (127 / 1000 : ℚ)
  oldPieces := [piece_375]
}

def cell_1539 : Cell := { cellDefaults with
  domain := ⟨(10523437499999999 / 250000000000000000 : ℚ), (10531249999999999 / 250000000000000000 : ℚ)⟩
  r := (2625297118763 / 2000000000000 : ℚ)
  w := (9992445463883 / 12500000000000 : ℚ)
  center := (10527343749999999 / 250000000000000000 : ℚ)
  supportValue := (3009499392090269 / 1000000000000000 : ℚ)
  supportSlope := (810601378100273 / 100000000000000 : ℚ)
  oldCenter := (31682034615950289783469357909731 / 250000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_190
  oldLo := (253 / 2000 : ℚ)
  oldHi := (127 / 1000 : ℚ)
  oldPieces := [piece_375]
}

def cell_1540 : Cell := { cellDefaults with
  domain := ⟨(10531249999999999 / 250000000000000000 : ℚ), (10539062499999999 / 250000000000000000 : ℚ)⟩
  r := (2625297118763 / 2000000000000 : ℚ)
  w := (9992445463883 / 12500000000000 : ℚ)
  center := (10535156249999999 / 250000000000000000 : ℚ)
  supportValue := (300975296975403 / 100000000000000 : ℚ)
  supportSlope := (812297982517407 / 100000000000000 : ℚ)
  oldCenter := (3170821781026022710743453024597 / 25000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_190
  oldLo := (253 / 2000 : ℚ)
  oldHi := (127 / 1000 : ℚ)
  oldPieces := [piece_375]
}

def cell_1541 : Cell := { cellDefaults with
  domain := ⟨(10539062499999999 / 250000000000000000 : ℚ), (10546874999999999 / 250000000000000000 : ℚ)⟩
  r := (2625297118763 / 2000000000000 : ℚ)
  w := (9992445463883 / 12500000000000 : ℚ)
  center := (10542968749999999 / 250000000000000000 : ℚ)
  supportValue := (3010007078748587 / 1000000000000000 : ℚ)
  supportSlope := (8140019027933931 / 1000000000000000 : ℚ)
  oldCenter := (31734410568525138837649171251413 / 250000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_190
  oldLo := (253 / 2000 : ℚ)
  oldHi := (127 / 1000 : ℚ)
  oldPieces := [piece_375]
}

def cell_1542 : Cell := { cellDefaults with
  domain := ⟨(10546874999999999 / 250000000000000000 : ℚ), (10554687499999999 / 250000000000000000 : ℚ)⟩
  r := (2625297118763 / 2000000000000 : ℚ)
  w := (9992445463883 / 12500000000000 : ℚ)
  center := (10550781249999999 / 250000000000000000 : ℚ)
  supportValue := (7525652352877119 / 2500000000000000 : ℚ)
  supportSlope := (4050629173448783 / 500000000000000 : ℚ)
  oldCenter := (79401511738754283173566397122881 / 625000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_190
  oldLo := (253 / 2000 : ℚ)
  oldHi := (51 / 400 : ℚ)
  oldPieces := [piece_375, piece_376]
}

def cell_1543 : Cell := { cellDefaults with
  domain := ⟨(10554687499999999 / 250000000000000000 : ℚ), (10562499999999999 / 250000000000000000 : ℚ)⟩
  r := (2625297118763 / 2000000000000 : ℚ)
  w := (9992445463883 / 12500000000000 : ℚ)
  center := (10558593749999999 / 250000000000000000 : ℚ)
  supportValue := (3010514184217273 / 1000000000000000 : ℚ)
  supportSlope := (1014017313597293 / 125000000000000 : ℚ)
  oldCenter := (31786796249762844329329565782727 / 250000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_190
  oldLo := (127 / 1000 : ℚ)
  oldHi := (51 / 400 : ℚ)
  oldPieces := [piece_376]
}

def cell_1544 : Cell := { cellDefaults with
  domain := ⟨(10562499999999999 / 250000000000000000 : ℚ), (10570312499999999 / 250000000000000000 : ℚ)⟩
  r := (2625297118763 / 2000000000000 : ℚ)
  w := (9992445463883 / 12500000000000 : ℚ)
  center := (10566406249999999 / 250000000000000000 : ℚ)
  supportValue := (75269198755427 / 25000000000000 : ℚ)
  supportSlope := (4064454176187837 / 500000000000000 : ℚ)
  oldCenter := (795324932161835998949551244573 / 6250000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_190
  oldLo := (127 / 1000 : ℚ)
  oldHi := (51 / 400 : ℚ)
  oldPieces := [piece_376]
}

def cell_1545 : Cell := { cellDefaults with
  domain := ⟨(10570312499999999 / 250000000000000000 : ℚ), (10578124999999999 / 250000000000000000 : ℚ)⟩
  r := (2625297118763 / 2000000000000 : ℚ)
  w := (9992445463883 / 12500000000000 : ℚ)
  center := (10574218749999999 / 250000000000000000 : ℚ)
  supportValue := (1505511120700213 / 500000000000000 : ℚ)
  supportSlope := (2036437582518147 / 250000000000000 : ℚ)
  oldCenter := (15919603920841703928082629299787 / 125000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_190
  oldLo := (127 / 1000 : ℚ)
  oldHi := (51 / 400 : ℚ)
  oldPieces := [piece_376]
}

def cell_1546 : Cell := { cellDefaults with
  domain := ⟨(10578124999999999 / 250000000000000000 : ℚ), (10585937499999999 / 250000000000000000 : ℚ)⟩
  r := (2625297118763 / 2000000000000 : ℚ)
  w := (9992445463883 / 12500000000000 : ℚ)
  center := (10582031249999999 / 250000000000000000 : ℚ)
  supportValue := (30112770600255527 / 10000000000000000 : ℚ)
  supportSlope := (101930021481067 / 12500000000000 : ℚ)
  oldCenter := (318654279515985214586448149744473 / 2500000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_190
  oldLo := (127 / 1000 : ℚ)
  oldHi := (16 / 125 : ℚ)
  oldPieces := [piece_376, piece_377]
}

def cell_1547 : Cell := { cellDefaults with
  domain := ⟨(10585937499999999 / 250000000000000000 : ℚ), (10593749999999999 / 250000000000000000 : ℚ)⟩
  r := (2625297118763 / 2000000000000 : ℚ)
  w := (9992445463883 / 12500000000000 : ℚ)
  center := (10589843749999999 / 250000000000000000 : ℚ)
  supportValue := (15057655970504007 / 5000000000000000 : ℚ)
  supportSlope := (4059171172897891 / 500000000000000 : ℚ)
  oldCenter := (159458223968892027821250279495993 / 1250000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_190
  oldLo := (51 / 400 : ℚ)
  oldHi := (16 / 125 : ℚ)
  oldPieces := [piece_377]
}

def cell_1548 : Cell := { cellDefaults with
  domain := ⟨(10593749999999999 / 250000000000000000 : ℚ), (10601562499999999 / 250000000000000000 : ℚ)⟩
  r := (2625297118763 / 2000000000000 : ℚ)
  w := (9992445463883 / 12500000000000 : ℚ)
  center := (10597656249999999 / 250000000000000000 : ℚ)
  supportValue := (15058925754076957 / 5000000000000000 : ℚ)
  supportSlope := (8134910004287121 / 1000000000000000 : ℚ)
  oldCenter := (159589318635979611273105495923043 / 1250000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_190
  oldLo := (51 / 400 : ℚ)
  oldHi := (16 / 125 : ℚ)
  oldPieces := [piece_377]
}

def cell_1549 : Cell := { cellDefaults with
  domain := ⟨(10601562499999999 / 250000000000000000 : ℚ), (10609374999999999 / 250000000000000000 : ℚ)⟩
  r := (2625297118763 / 2000000000000 : ℚ)
  w := (9992445463883 / 12500000000000 : ℚ)
  center := (10605468749999999 / 250000000000000000 : ℚ)
  supportValue := (15060198131894589 / 5000000000000000 : ℚ)
  supportSlope := (815154875118651 / 100000000000000 : ℚ)
  oldCenter := (159720460656616426873395618105411 / 1250000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_190
  oldLo := (51 / 400 : ℚ)
  oldHi := (16 / 125 : ℚ)
  oldPieces := [piece_377]
}

theorem check_1500 : cell_1500.check = true := by
  decide +kernel

theorem check_1501 : cell_1501.check = true := by
  decide +kernel

theorem check_1502 : cell_1502.check = true := by
  decide +kernel

theorem check_1503 : cell_1503.check = true := by
  decide +kernel

theorem check_1504 : cell_1504.check = true := by
  decide +kernel

theorem check_1505 : cell_1505.check = true := by
  decide +kernel

theorem check_1506 : cell_1506.check = true := by
  decide +kernel

theorem check_1507 : cell_1507.check = true := by
  decide +kernel

theorem check_1508 : cell_1508.check = true := by
  decide +kernel

theorem check_1509 : cell_1509.check = true := by
  decide +kernel

theorem check_1510 : cell_1510.check = true := by
  decide +kernel

theorem check_1511 : cell_1511.check = true := by
  decide +kernel

theorem check_1512 : cell_1512.check = true := by
  decide +kernel

theorem check_1513 : cell_1513.check = true := by
  decide +kernel

theorem check_1514 : cell_1514.check = true := by
  decide +kernel

theorem check_1515 : cell_1515.check = true := by
  decide +kernel

theorem check_1516 : cell_1516.check = true := by
  decide +kernel

theorem check_1517 : cell_1517.check = true := by
  decide +kernel

theorem check_1518 : cell_1518.check = true := by
  decide +kernel

theorem check_1519 : cell_1519.check = true := by
  decide +kernel

theorem check_1520 : cell_1520.check = true := by
  decide +kernel

theorem check_1521 : cell_1521.check = true := by
  decide +kernel

theorem check_1522 : cell_1522.check = true := by
  decide +kernel

theorem check_1523 : cell_1523.check = true := by
  decide +kernel

theorem check_1524 : cell_1524.check = true := by
  decide +kernel

theorem check_1525 : cell_1525.check = true := by
  decide +kernel

theorem check_1526 : cell_1526.check = true := by
  decide +kernel

theorem check_1527 : cell_1527.check = true := by
  decide +kernel

theorem check_1528 : cell_1528.check = true := by
  decide +kernel

theorem check_1529 : cell_1529.check = true := by
  decide +kernel

theorem check_1530 : cell_1530.check = true := by
  decide +kernel

theorem check_1531 : cell_1531.check = true := by
  decide +kernel

theorem check_1532 : cell_1532.check = true := by
  decide +kernel

theorem check_1533 : cell_1533.check = true := by
  decide +kernel

theorem check_1534 : cell_1534.check = true := by
  decide +kernel

theorem check_1535 : cell_1535.check = true := by
  decide +kernel

theorem check_1536 : cell_1536.check = true := by
  decide +kernel

theorem check_1537 : cell_1537.check = true := by
  decide +kernel

theorem check_1538 : cell_1538.check = true := by
  decide +kernel

theorem check_1539 : cell_1539.check = true := by
  decide +kernel

theorem check_1540 : cell_1540.check = true := by
  decide +kernel

theorem check_1541 : cell_1541.check = true := by
  decide +kernel

theorem check_1542 : cell_1542.check = true := by
  decide +kernel

theorem check_1543 : cell_1543.check = true := by
  decide +kernel

theorem check_1544 : cell_1544.check = true := by
  decide +kernel

theorem check_1545 : cell_1545.check = true := by
  decide +kernel

theorem check_1546 : cell_1546.check = true := by
  decide +kernel

theorem check_1547 : cell_1547.check = true := by
  decide +kernel

theorem check_1548 : cell_1548.check = true := by
  decide +kernel

theorem check_1549 : cell_1549.check = true := by
  decide +kernel

def cells : List Cell := [cell_1500, cell_1501, cell_1502, cell_1503, cell_1504, cell_1505, cell_1506, cell_1507, cell_1508, cell_1509, cell_1510, cell_1511, cell_1512, cell_1513, cell_1514, cell_1515, cell_1516, cell_1517, cell_1518, cell_1519, cell_1520, cell_1521, cell_1522, cell_1523, cell_1524, cell_1525, cell_1526, cell_1527, cell_1528, cell_1529, cell_1530, cell_1531, cell_1532, cell_1533, cell_1534, cell_1535, cell_1536, cell_1537, cell_1538, cell_1539, cell_1540, cell_1541, cell_1542, cell_1543, cell_1544, cell_1545, cell_1546, cell_1547, cell_1548, cell_1549]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_1500, check_1501, check_1502, check_1503, check_1504, check_1505, check_1506, check_1507, check_1508, check_1509, check_1510, check_1511, check_1512, check_1513, check_1514, check_1515, check_1516, check_1517, check_1518, check_1519, check_1520, check_1521, check_1522, check_1523, check_1524, check_1525, check_1526, check_1527, check_1528, check_1529, check_1530, check_1531, check_1532, check_1533, check_1534, check_1535, check_1536, check_1537, check_1538, check_1539, check_1540, check_1541, check_1542, check_1543, check_1544, check_1545, check_1546, check_1547, check_1548, check_1549, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0030

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0030
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0030
open AnalyticBounds.ExpressionCertificate

theorem linked_1500 : Linked cell_1500 pieces := by
  apply Linked.of_piece piece_187 piece_187_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1500, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_366_mem, piece_367_mem⟩

theorem linked_1501 : Linked cell_1501 pieces := by
  apply Linked.of_piece piece_187 piece_187_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1501, List.cons_subset, List.nil_subset, and_true]
  exact piece_367_mem

theorem linked_1502 : Linked cell_1502 pieces := by
  apply Linked.of_piece piece_188 piece_188_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1502, List.cons_subset, List.nil_subset, and_true]
  exact piece_367_mem

theorem linked_1503 : Linked cell_1503 pieces := by
  apply Linked.of_piece piece_188 piece_188_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1503, List.cons_subset, List.nil_subset, and_true]
  exact piece_367_mem

theorem linked_1504 : Linked cell_1504 pieces := by
  apply Linked.of_piece piece_188 piece_188_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1504, List.cons_subset, List.nil_subset, and_true]
  exact piece_367_mem

theorem linked_1505 : Linked cell_1505 pieces := by
  apply Linked.of_piece piece_188 piece_188_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1505, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_367_mem, piece_368_mem⟩

theorem linked_1506 : Linked cell_1506 pieces := by
  apply Linked.of_piece piece_188 piece_188_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1506, List.cons_subset, List.nil_subset, and_true]
  exact piece_368_mem

theorem linked_1507 : Linked cell_1507 pieces := by
  apply Linked.of_piece piece_188 piece_188_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1507, List.cons_subset, List.nil_subset, and_true]
  exact piece_368_mem

theorem linked_1508 : Linked cell_1508 pieces := by
  apply Linked.of_piece piece_188 piece_188_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1508, List.cons_subset, List.nil_subset, and_true]
  exact piece_368_mem

theorem linked_1509 : Linked cell_1509 pieces := by
  apply Linked.of_piece piece_188 piece_188_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1509, List.cons_subset, List.nil_subset, and_true]
  exact piece_368_mem

theorem linked_1510 : Linked cell_1510 pieces := by
  apply Linked.of_piece piece_188 piece_188_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1510, List.cons_subset, List.nil_subset, and_true]
  exact piece_368_mem

theorem linked_1511 : Linked cell_1511 pieces := by
  apply Linked.of_piece piece_188 piece_188_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1511, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_368_mem, piece_369_mem⟩

theorem linked_1512 : Linked cell_1512 pieces := by
  apply Linked.of_piece piece_188 piece_188_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1512, List.cons_subset, List.nil_subset, and_true]
  exact piece_369_mem

theorem linked_1513 : Linked cell_1513 pieces := by
  apply Linked.of_piece piece_188 piece_188_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1513, List.cons_subset, List.nil_subset, and_true]
  exact piece_369_mem

theorem linked_1514 : Linked cell_1514 pieces := by
  apply Linked.of_piece piece_188 piece_188_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1514, List.cons_subset, List.nil_subset, and_true]
  exact piece_369_mem

theorem linked_1515 : Linked cell_1515 pieces := by
  apply Linked.of_piece piece_188 piece_188_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1515, List.cons_subset, List.nil_subset, and_true]
  exact piece_369_mem

theorem linked_1516 : Linked cell_1516 pieces := by
  apply Linked.of_piece piece_188 piece_188_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1516, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_369_mem, piece_370_mem⟩

theorem linked_1517 : Linked cell_1517 pieces := by
  apply Linked.of_piece piece_188 piece_188_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1517, List.cons_subset, List.nil_subset, and_true]
  exact piece_370_mem

theorem linked_1518 : Linked cell_1518 pieces := by
  apply Linked.of_piece piece_188 piece_188_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1518, List.cons_subset, List.nil_subset, and_true]
  exact piece_370_mem

theorem linked_1519 : Linked cell_1519 pieces := by
  apply Linked.of_piece piece_189 piece_189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1519, List.cons_subset, List.nil_subset, and_true]
  exact piece_370_mem

theorem linked_1520 : Linked cell_1520 pieces := by
  apply Linked.of_piece piece_189 piece_189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1520, List.cons_subset, List.nil_subset, and_true]
  exact piece_370_mem

theorem linked_1521 : Linked cell_1521 pieces := by
  apply Linked.of_piece piece_189 piece_189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1521, List.cons_subset, List.nil_subset, and_true]
  exact piece_370_mem

theorem linked_1522 : Linked cell_1522 pieces := by
  apply Linked.of_piece piece_189 piece_189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1522, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_370_mem, piece_371_mem⟩

theorem linked_1523 : Linked cell_1523 pieces := by
  apply Linked.of_piece piece_189 piece_189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1523, List.cons_subset, List.nil_subset, and_true]
  exact piece_371_mem

theorem linked_1524 : Linked cell_1524 pieces := by
  apply Linked.of_piece piece_189 piece_189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1524, List.cons_subset, List.nil_subset, and_true]
  exact piece_371_mem

theorem linked_1525 : Linked cell_1525 pieces := by
  apply Linked.of_piece piece_189 piece_189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1525, List.cons_subset, List.nil_subset, and_true]
  exact piece_371_mem

theorem linked_1526 : Linked cell_1526 pieces := by
  apply Linked.of_piece piece_189 piece_189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1526, List.cons_subset, List.nil_subset, and_true]
  exact piece_371_mem

theorem linked_1527 : Linked cell_1527 pieces := by
  apply Linked.of_piece piece_189 piece_189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1527, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_371_mem, piece_372_mem⟩

theorem linked_1528 : Linked cell_1528 pieces := by
  apply Linked.of_piece piece_189 piece_189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1528, List.cons_subset, List.nil_subset, and_true]
  exact piece_372_mem

theorem linked_1529 : Linked cell_1529 pieces := by
  apply Linked.of_piece piece_189 piece_189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1529, List.cons_subset, List.nil_subset, and_true]
  exact piece_372_mem

theorem linked_1530 : Linked cell_1530 pieces := by
  apply Linked.of_piece piece_189 piece_189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1530, List.cons_subset, List.nil_subset, and_true]
  exact piece_372_mem

theorem linked_1531 : Linked cell_1531 pieces := by
  apply Linked.of_piece piece_189 piece_189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1531, List.cons_subset, List.nil_subset, and_true]
  exact piece_372_mem

theorem linked_1532 : Linked cell_1532 pieces := by
  apply Linked.of_piece piece_189 piece_189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1532, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_372_mem, piece_373_mem⟩

theorem linked_1533 : Linked cell_1533 pieces := by
  apply Linked.of_piece piece_189 piece_189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1533, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_373_mem, piece_374_mem⟩

theorem linked_1534 : Linked cell_1534 pieces := by
  apply Linked.of_piece piece_189 piece_189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1534, List.cons_subset, List.nil_subset, and_true]
  exact piece_374_mem

theorem linked_1535 : Linked cell_1535 pieces := by
  apply Linked.of_piece piece_189 piece_189_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1535, List.cons_subset, List.nil_subset, and_true]
  exact piece_374_mem

theorem linked_1536 : Linked cell_1536 pieces := by
  apply Linked.of_piece piece_190 piece_190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1536, List.cons_subset, List.nil_subset, and_true]
  exact piece_374_mem

theorem linked_1537 : Linked cell_1537 pieces := by
  apply Linked.of_piece piece_190 piece_190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1537, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_374_mem, piece_375_mem⟩

theorem linked_1538 : Linked cell_1538 pieces := by
  apply Linked.of_piece piece_190 piece_190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1538, List.cons_subset, List.nil_subset, and_true]
  exact piece_375_mem

theorem linked_1539 : Linked cell_1539 pieces := by
  apply Linked.of_piece piece_190 piece_190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1539, List.cons_subset, List.nil_subset, and_true]
  exact piece_375_mem

theorem linked_1540 : Linked cell_1540 pieces := by
  apply Linked.of_piece piece_190 piece_190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1540, List.cons_subset, List.nil_subset, and_true]
  exact piece_375_mem

theorem linked_1541 : Linked cell_1541 pieces := by
  apply Linked.of_piece piece_190 piece_190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1541, List.cons_subset, List.nil_subset, and_true]
  exact piece_375_mem

theorem linked_1542 : Linked cell_1542 pieces := by
  apply Linked.of_piece piece_190 piece_190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1542, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_375_mem, piece_376_mem⟩

theorem linked_1543 : Linked cell_1543 pieces := by
  apply Linked.of_piece piece_190 piece_190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1543, List.cons_subset, List.nil_subset, and_true]
  exact piece_376_mem

theorem linked_1544 : Linked cell_1544 pieces := by
  apply Linked.of_piece piece_190 piece_190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1544, List.cons_subset, List.nil_subset, and_true]
  exact piece_376_mem

theorem linked_1545 : Linked cell_1545 pieces := by
  apply Linked.of_piece piece_190 piece_190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1545, List.cons_subset, List.nil_subset, and_true]
  exact piece_376_mem

theorem linked_1546 : Linked cell_1546 pieces := by
  apply Linked.of_piece piece_190 piece_190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1546, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_376_mem, piece_377_mem⟩

theorem linked_1547 : Linked cell_1547 pieces := by
  apply Linked.of_piece piece_190 piece_190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1547, List.cons_subset, List.nil_subset, and_true]
  exact piece_377_mem

theorem linked_1548 : Linked cell_1548 pieces := by
  apply Linked.of_piece piece_190 piece_190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1548, List.cons_subset, List.nil_subset, and_true]
  exact piece_377_mem

theorem linked_1549 : Linked cell_1549 pieces := by
  apply Linked.of_piece piece_190 piece_190_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1549, List.cons_subset, List.nil_subset, and_true]
  exact piece_377_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0030.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0030.cells,List.forall_mem_cons]
  exact ⟨linked_1500, linked_1501, linked_1502, linked_1503, linked_1504, linked_1505, linked_1506, linked_1507, linked_1508, linked_1509, linked_1510, linked_1511, linked_1512, linked_1513, linked_1514, linked_1515, linked_1516, linked_1517, linked_1518, linked_1519, linked_1520, linked_1521, linked_1522, linked_1523, linked_1524, linked_1525, linked_1526, linked_1527, linked_1528, linked_1529, linked_1530, linked_1531, linked_1532, linked_1533, linked_1534, linked_1535, linked_1536, linked_1537, linked_1538, linked_1539, linked_1540, linked_1541, linked_1542, linked_1543, linked_1544, linked_1545, linked_1546, linked_1547, linked_1548, linked_1549, by simp⟩

theorem covered : covers (1310500000000000061 / 32000000000000000000 : ℚ) (10609374999999999 / 250000000000000000 : ℚ)
    (SourceCertificates.Chunk0030.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0030
