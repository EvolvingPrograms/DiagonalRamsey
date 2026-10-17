import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0093
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(111824999999999999 / 800000000000000000 : ℚ), (55924999999999999 / 400000000000000000 : ℚ)⟩
  branch := .right
  r := (10088720675391 / 10000000000000 : ℚ)
  w := (24814473749167 / 25000000000000 : ℚ)
  center := (223674999999999997 / 1600000000000000000 : ℚ)
  supportValue := (153051669151943 / 312500000000000 : ℚ)
  supportSlope := (4814625756731609 / 1000000000000000 : ℚ)
  oldCenter := (153051669151943 / 312500000000000 : ℚ)
  newCoefficients := coefficients_404
  oldLo := (9810000000000001 / 20000000000000000 : ℚ)
  oldHi := (9820000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1168]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_4650 : Cell := { cellDefaults with
  r := (10100059994151 / 10000000000000 : ℚ)
  w := (99237075587567 / 100000000000000 : ℚ)
  newCoefficients := coefficients_403
  oldLo := (9790000000000001 / 20000000000000000 : ℚ)
  oldHi := (9800000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1166]
}

def cell_4651 : Cell := { cellDefaults with
  domain := ⟨(55924999999999999 / 400000000000000000 : ℚ), (111874999999999997 / 800000000000000000 : ℚ)⟩
  r := (10100059994151 / 10000000000000 : ℚ)
  w := (99237075587567 / 100000000000000 : ℚ)
  center := (44744999999999999 / 320000000000000000 : ℚ)
  supportValue := (489915815304777 / 1000000000000000 : ℚ)
  supportSlope := (2407856316965703 / 500000000000000 : ℚ)
  oldCenter := (489915815304777 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_403
  oldLo := (9790000000000001 / 20000000000000000 : ℚ)
  oldHi := (9800000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1166]
}

def cell_4652 : Cell := { cellDefaults with
  domain := ⟨(111874999999999997 / 800000000000000000 : ℚ), (27974999999999999 / 200000000000000000 : ℚ)⟩
  r := (10100059994151 / 10000000000000 : ℚ)
  w := (99237075587567 / 100000000000000 : ℚ)
  center := (223774999999999993 / 1600000000000000000 : ℚ)
  supportValue := (24503315336058107 / 50000000000000000 : ℚ)
  supportSlope := (963133378582309 / 200000000000000 : ℚ)
  oldCenter := (24503315336058107 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_403
  oldLo := (9790000000000001 / 20000000000000000 : ℚ)
  oldHi := (9810000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1166, piece_1167]
}

def cell_4653 : Cell := { cellDefaults with
  domain := ⟨(27974999999999999 / 200000000000000000 : ℚ), (22384999999999999 / 160000000000000000 : ℚ)⟩
  r := (10100059994151 / 10000000000000 : ℚ)
  w := (99237075587567 / 100000000000000 : ℚ)
  center := (223824999999999991 / 1600000000000000000 : ℚ)
  supportValue := (392173448802001 / 800000000000000 : ℚ)
  supportSlope := (4816679277841211 / 1000000000000000 : ℚ)
  oldCenter := (392173448802001 / 800000000000000 : ℚ)
  newCoefficients := coefficients_403
  oldLo := (9800000000000001 / 20000000000000000 : ℚ)
  oldHi := (9810000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1167]
}

def cell_4654 : Cell := { cellDefaults with
  domain := ⟨(22384999999999999 / 160000000000000000 : ℚ), (55974999999999997 / 400000000000000000 : ℚ)⟩
  r := (10100059994151 / 10000000000000 : ℚ)
  w := (99237075587567 / 100000000000000 : ℚ)
  center := (223874999999999989 / 1600000000000000000 : ℚ)
  supportValue := (49036734915335367 / 100000000000000000 : ℚ)
  supportSlope := (2408881789063163 / 500000000000000 : ℚ)
  oldCenter := (49036734915335367 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_403
  oldLo := (9800000000000001 / 20000000000000000 : ℚ)
  oldHi := (9810000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1167]
}

def cell_4655 : Cell := { cellDefaults with
  domain := ⟨(55974999999999997 / 400000000000000000 : ℚ), (111974999999999993 / 800000000000000000 : ℚ)⟩
  r := (10100059994151 / 10000000000000 : ℚ)
  w := (99237075587567 / 100000000000000 : ℚ)
  center := (223924999999999987 / 1600000000000000000 : ℚ)
  supportValue := (1226294791846641 / 2500000000000000 : ℚ)
  supportSlope := (150565827751809 / 31250000000000 : ℚ)
  oldCenter := (1226294791846641 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_403
  oldLo := (9800000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1167, piece_1168]
}

def cell_4656 : Cell := { cellDefaults with
  domain := ⟨(111974999999999993 / 800000000000000000 : ℚ), (13999999999999999 / 100000000000000000 : ℚ)⟩
  r := (10100059994151 / 10000000000000 : ℚ)
  w := (99237075587567 / 100000000000000 : ℚ)
  center := (44794999999999997 / 320000000000000000 : ℚ)
  supportValue := (12266712130211889 / 25000000000000000 : ℚ)
  supportSlope := (602341501927419 / 125000000000000 : ℚ)
  oldCenter := (12266712130211889 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_403
  oldPieces := [piece_1168]
}

def cell_4657 : Cell := { cellDefaults with
  domain := ⟨(13999999999999999 / 100000000000000000 : ℚ), (14003124999999999 / 100000000000000000 : ℚ)⟩
  center := (14001562499999999 / 100000000000000000 : ℚ)
  supportValue := (1226133107485679 / 2500000000000000 : ℚ)
  supportSlope := (9631826966593593 / 2000000000000000 : ℚ)
  oldCenter := (1226133107485679 / 2500000000000000 : ℚ)
  oldLo := (9800000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1167, piece_1168]
}

def cell_4658 : Cell := { cellDefaults with
  domain := ⟨(14003124999999999 / 100000000000000000 : ℚ), (14006249999999999 / 100000000000000000 : ℚ)⟩
  center := (14004687499999999 / 100000000000000000 : ℚ)
  supportValue := (2453018692682811 / 5000000000000000 : ℚ)
  supportSlope := (4816028077264889 / 1000000000000000 : ℚ)
  oldCenter := (2453018692682811 / 5000000000000000 : ℚ)
  oldPieces := [piece_1168]
}

def cell_4659 : Cell := { cellDefaults with
  domain := ⟨(14006249999999999 / 100000000000000000 : ℚ), (14009374999999999 / 100000000000000000 : ℚ)⟩
  center := (14007812499999999 / 100000000000000000 : ℚ)
  supportValue := (24537712816024873 / 50000000000000000 : ℚ)
  supportSlope := (602138911863781 / 125000000000000 : ℚ)
  oldCenter := (24537712816024873 / 50000000000000000 : ℚ)
  oldPieces := [piece_1168]
}

def cell_4660 : Cell := { cellDefaults with
  domain := ⟨(14009374999999999 / 100000000000000000 : ℚ), (14012499999999999 / 100000000000000000 : ℚ)⟩
  center := (14010937499999999 / 100000000000000000 : ℚ)
  supportValue := (981809615939597 / 2000000000000000 : ℚ)
  supportSlope := (2409097730621923 / 500000000000000 : ℚ)
  oldCenter := (981809615939597 / 2000000000000000 : ℚ)
  oldPieces := [piece_1168]
}

def cell_4661 : Cell := { cellDefaults with
  domain := ⟨(14012499999999999 / 100000000000000000 : ℚ), (14015624999999999 / 100000000000000000 : ℚ)⟩
  center := (14014062499999999 / 100000000000000000 : ℚ)
  supportValue := (4910553797981049 / 10000000000000000 : ℚ)
  supportSlope := (481824438447731 / 100000000000000 : ℚ)
  oldCenter := (4910553797981049 / 10000000000000000 : ℚ)
  oldHi := (49117318435754187 / 100000000000000000 : ℚ)
  oldPieces := [piece_1168, piece_1169]
}

def cell_4662 : Cell := { cellDefaults with
  domain := ⟨(14015624999999999 / 100000000000000000 : ℚ), (14018749999999999 / 100000000000000000 : ℚ)⟩
  center := (14017187499999999 / 100000000000000000 : ℚ)
  supportValue := (4912059618928363 / 10000000000000000 : ℚ)
  supportSlope := (4819167808914671 / 1000000000000000 : ℚ)
  oldCenter := (4912059618928363 / 10000000000000000 : ℚ)
  oldLo := (9820000000000001 / 20000000000000000 : ℚ)
  oldHi := (9830000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1169, piece_1170]
}

def cell_4663 : Cell := { cellDefaults with
  domain := ⟨(14018749999999999 / 100000000000000000 : ℚ), (14021874999999999 / 100000000000000000 : ℚ)⟩
  center := (14020312499999999 / 100000000000000000 : ℚ)
  supportValue := (307097861103221 / 625000000000000 : ℚ)
  supportSlope := (4820249293139511 / 1000000000000000 : ℚ)
  oldCenter := (307097861103221 / 625000000000000 : ℚ)
  oldLo := (49117318435754187 / 100000000000000000 : ℚ)
  oldHi := (9830000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1170]
}

def cell_4664 : Cell := { cellDefaults with
  domain := ⟨(14021874999999999 / 100000000000000000 : ℚ), (14024999999999999 / 100000000000000000 : ℚ)⟩
  center := (14023437499999999 / 100000000000000000 : ℚ)
  supportValue := (49150722566074667 / 100000000000000000 : ℚ)
  supportSlope := (4820680708267133 / 1000000000000000 : ℚ)
  oldCenter := (49150722566074667 / 100000000000000000 : ℚ)
  oldLo := (49117318435754187 / 100000000000000000 : ℚ)
  oldHi := (9840000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1170, piece_1171]
}

def cell_4665 : Cell := { cellDefaults with
  domain := ⟨(14024999999999999 / 100000000000000000 : ℚ), (14028124999999999 / 100000000000000000 : ℚ)⟩
  center := (14026562499999999 / 100000000000000000 : ℚ)
  supportValue := (1229144680085697 / 2500000000000000 : ℚ)
  supportSlope := (4821223552031739 / 1000000000000000 : ℚ)
  oldCenter := (1229144680085697 / 2500000000000000 : ℚ)
  oldLo := (9830000000000001 / 20000000000000000 : ℚ)
  oldHi := (9840000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1171]
}

def cell_4666 : Cell := { cellDefaults with
  domain := ⟨(14028124999999999 / 100000000000000000 : ℚ), (14031249999999999 / 100000000000000000 : ℚ)⟩
  center := (14029687499999999 / 100000000000000000 : ℚ)
  supportValue := (24590427605495477 / 50000000000000000 : ℚ)
  supportSlope := (4822302486264363 / 1000000000000000 : ℚ)
  oldCenter := (24590427605495477 / 50000000000000000 : ℚ)
  oldLo := (9830000000000001 / 20000000000000000 : ℚ)
  oldHi := (9840000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1171]
}

def cell_4667 : Cell := { cellDefaults with
  domain := ⟨(14031249999999999 / 100000000000000000 : ℚ), (14034374999999999 / 100000000000000000 : ℚ)⟩
  center := (14032812499999999 / 100000000000000000 : ℚ)
  supportValue := (12298981647920959 / 25000000000000000 : ℚ)
  supportSlope := (192924421590277 / 40000000000000 : ℚ)
  oldCenter := (12298981647920959 / 25000000000000000 : ℚ)
  oldLo := (9830000000000001 / 20000000000000000 : ℚ)
  oldHi := (9850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1171, piece_1172]
}

def cell_4668 : Cell := { cellDefaults with
  domain := ⟨(14034374999999999 / 100000000000000000 : ℚ), (14037499999999999 / 100000000000000000 : ℚ)⟩
  center := (14035937499999999 / 100000000000000000 : ℚ)
  supportValue := (49210998650052773 / 100000000000000000 : ℚ)
  supportSlope := (2411639234810359 / 500000000000000 : ℚ)
  oldCenter := (49210998650052773 / 100000000000000000 : ℚ)
  oldLo := (9840000000000001 / 20000000000000000 : ℚ)
  oldHi := (9850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1172]
}

def cell_4669 : Cell := { cellDefaults with
  domain := ⟨(14037499999999999 / 100000000000000000 : ℚ), (14040624999999999 / 100000000000000000 : ℚ)⟩
  center := (14039062499999999 / 100000000000000000 : ℚ)
  supportValue := (1230651826877657 / 2500000000000000 : ℚ)
  supportSlope := (7718967617771 / 1600000000000 : ℚ)
  oldCenter := (1230651826877657 / 2500000000000000 : ℚ)
  oldLo := (9840000000000001 / 20000000000000000 : ℚ)
  oldHi := (9850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1172]
}

def cell_4670 : Cell := { cellDefaults with
  domain := ⟨(14040624999999999 / 100000000000000000 : ℚ), (14043749999999999 / 100000000000000000 : ℚ)⟩
  center := (14042187499999999 / 100000000000000000 : ℚ)
  supportValue := (4924115086501919 / 10000000000000000 : ℚ)
  supportSlope := (603178997522269 / 125000000000000 : ℚ)
  oldCenter := (4924115086501919 / 10000000000000000 : ℚ)
  oldLo := (9840000000000001 / 20000000000000000 : ℚ)
  oldHi := (9850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1172]
}

def cell_4671 : Cell := { cellDefaults with
  domain := ⟨(14043749999999999 / 100000000000000000 : ℚ), (14046874999999999 / 100000000000000000 : ℚ)⟩
  center := (14045312499999999 / 100000000000000000 : ℚ)
  supportValue := (4925623050223751 / 10000000000000000 : ℚ)
  supportSlope := (4825434063656431 / 1000000000000000 : ℚ)
  oldCenter := (4925623050223751 / 10000000000000000 : ℚ)
  oldLo := (9840000000000001 / 20000000000000000 : ℚ)
  oldHi := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1172, piece_1173]
}

def cell_4672 : Cell := { cellDefaults with
  domain := ⟨(14046874999999999 / 100000000000000000 : ℚ), (14049999999999999 / 100000000000000000 : ℚ)⟩
  center := (14048437499999999 / 100000000000000000 : ℚ)
  supportValue := (49271311341842183 / 100000000000000000 : ℚ)
  supportSlope := (482640609629037 / 100000000000000 : ℚ)
  oldCenter := (49271311341842183 / 100000000000000000 : ℚ)
  oldLo := (9850000000000001 / 20000000000000000 : ℚ)
  oldHi := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1173]
}

def cell_4673 : Cell := { cellDefaults with
  domain := ⟨(14049999999999999 / 100000000000000000 : ℚ), (14053124999999999 / 100000000000000000 : ℚ)⟩
  r := (2015482348231 / 2000000000000 : ℚ)
  w := (3102453434327 / 3125000000000 : ℚ)
  center := (14051562499999999 / 100000000000000000 : ℚ)
  supportValue := (2462480314416663 / 5000000000000000 : ℚ)
  supportSlope := (4823221559636437 / 1000000000000000 : ℚ)
  oldCenter := (2462480314416663 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_405
  oldLo := (9840000000000001 / 20000000000000000 : ℚ)
  oldHi := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1172, piece_1173]
}

def cell_4674 : Cell := { cellDefaults with
  domain := ⟨(14053124999999999 / 100000000000000000 : ℚ), (14056249999999999 / 100000000000000000 : ℚ)⟩
  r := (2015482348231 / 2000000000000 : ℚ)
  w := (3102453434327 / 3125000000000 : ℚ)
  center := (14054687499999999 / 100000000000000000 : ℚ)
  supportValue := (49264678699776693 / 100000000000000000 : ℚ)
  supportSlope := (4823679358676003 / 1000000000000000 : ℚ)
  oldCenter := (49264678699776693 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_405
  oldLo := (9850000000000001 / 20000000000000000 : ℚ)
  oldHi := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1173]
}

def cell_4675 : Cell := { cellDefaults with
  domain := ⟨(14056249999999999 / 100000000000000000 : ℚ), (14059374999999999 / 100000000000000000 : ℚ)⟩
  r := (2015482348231 / 2000000000000 : ℚ)
  w := (3102453434327 / 3125000000000 : ℚ)
  center := (14057812499999999 / 100000000000000000 : ℚ)
  supportValue := (985595087534381 / 2000000000000000 : ℚ)
  supportSlope := (301547192507301 / 62500000000000 : ℚ)
  oldCenter := (985595087534381 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_405
  oldLo := (9850000000000001 / 20000000000000000 : ℚ)
  oldHi := (9860000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1173]
}

def cell_4676 : Cell := { cellDefaults with
  domain := ⟨(14059374999999999 / 100000000000000000 : ℚ), (14062499999999999 / 100000000000000000 : ℚ)⟩
  r := (2015482348231 / 2000000000000 : ℚ)
  w := (3102453434327 / 3125000000000 : ℚ)
  center := (14060937499999999 / 100000000000000000 : ℚ)
  supportValue := (2464741670836699 / 5000000000000000 : ℚ)
  supportSlope := (241282353776473 / 50000000000000 : ℚ)
  oldCenter := (2464741670836699 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_405
  oldLo := (9850000000000001 / 20000000000000000 : ℚ)
  oldHi := (9870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1173, piece_1174]
}

def cell_4677 : Cell := { cellDefaults with
  domain := ⟨(14062499999999999 / 100000000000000000 : ℚ), (14065624999999999 / 100000000000000000 : ℚ)⟩
  r := (2015482348231 / 2000000000000 : ℚ)
  w := (3102453434327 / 3125000000000 : ℚ)
  center := (14064062499999999 / 100000000000000000 : ℚ)
  supportValue := (24654956707079573 / 50000000000000000 : ℚ)
  supportSlope := (965147179666559 / 200000000000000 : ℚ)
  oldCenter := (24654956707079573 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_405
  oldLo := (9860000000000001 / 20000000000000000 : ℚ)
  oldHi := (9870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1174]
}

def cell_4678 : Cell := { cellDefaults with
  domain := ⟨(14065624999999999 / 100000000000000000 : ℚ), (14068749999999999 / 100000000000000000 : ℚ)⟩
  r := (2015482348231 / 2000000000000 : ℚ)
  w := (3102453434327 / 3125000000000 : ℚ)
  center := (14067187499999999 / 100000000000000000 : ℚ)
  supportValue := (9864999102892611 / 20000000000000000 : ℚ)
  supportSlope := (482680949073 / 100000000000 : ℚ)
  oldCenter := (9864999102892611 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_405
  oldLo := (9860000000000001 / 20000000000000000 : ℚ)
  oldHi := (9870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1174]
}

def cell_4679 : Cell := { cellDefaults with
  domain := ⟨(14068749999999999 / 100000000000000000 : ℚ), (14071874999999999 / 100000000000000000 : ℚ)⟩
  r := (2015482348231 / 2000000000000 : ℚ)
  w := (3102453434327 / 3125000000000 : ℚ)
  center := (14070312499999999 / 100000000000000000 : ℚ)
  supportValue := (986801619423533 / 2000000000000000 : ℚ)
  supportSlope := (4827884001125327 / 1000000000000000 : ℚ)
  oldCenter := (986801619423533 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_405
  oldLo := (9860000000000001 / 20000000000000000 : ℚ)
  oldHi := (9870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1174]
}

def cell_4680 : Cell := { cellDefaults with
  domain := ⟨(14071874999999999 / 100000000000000000 : ℚ), (14074999999999999 / 100000000000000000 : ℚ)⟩
  r := (2015482348231 / 2000000000000 : ℚ)
  w := (3102453434327 / 3125000000000 : ℚ)
  center := (14073437499999999 / 100000000000000000 : ℚ)
  supportValue := (987103370745971 / 2000000000000000 : ℚ)
  supportSlope := (2413987581534549 / 500000000000000 : ℚ)
  oldCenter := (987103370745971 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_405
  oldLo := (9860000000000001 / 20000000000000000 : ℚ)
  oldHi := (9880000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1174, piece_1175]
}

def cell_4681 : Cell := { cellDefaults with
  domain := ⟨(14074999999999999 / 100000000000000000 : ℚ), (14078124999999999 / 100000000000000000 : ℚ)⟩
  r := (2015482348231 / 2000000000000 : ℚ)
  w := (3102453434327 / 3125000000000 : ℚ)
  center := (14076562499999999 / 100000000000000000 : ℚ)
  supportValue := (1974810282369877 / 4000000000000000 : ℚ)
  supportSlope := (386309044839237 / 80000000000000 : ℚ)
  oldCenter := (1974810282369877 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_405
  oldLo := (9870000000000001 / 20000000000000000 : ℚ)
  oldHi := (9880000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1175]
}

def cell_4682 : Cell := { cellDefaults with
  domain := ⟨(14078124999999999 / 100000000000000000 : ℚ), (14081249999999999 / 100000000000000000 : ℚ)⟩
  r := (2015482348231 / 2000000000000 : ℚ)
  w := (3102453434327 / 3125000000000 : ℚ)
  center := (14079687499999999 / 100000000000000000 : ℚ)
  supportValue := (49385348929119743 / 100000000000000000 : ℚ)
  supportSlope := (4829934851734663 / 1000000000000000 : ℚ)
  oldCenter := (49385348929119743 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_405
  oldLo := (9870000000000001 / 20000000000000000 : ℚ)
  oldHi := (9880000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1175]
}

def cell_4683 : Cell := { cellDefaults with
  domain := ⟨(14081249999999999 / 100000000000000000 : ℚ), (14084374999999999 / 100000000000000000 : ℚ)⟩
  r := (2015482348231 / 2000000000000 : ℚ)
  w := (3102453434327 / 3125000000000 : ℚ)
  center := (14082812499999999 / 100000000000000000 : ℚ)
  supportValue := (24700222020957077 / 50000000000000000 : ℚ)
  supportSlope := (966078451016017 / 200000000000000 : ℚ)
  oldCenter := (24700222020957077 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_405
  oldLo := (9870000000000001 / 20000000000000000 : ℚ)
  oldHi := (9890000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1175, piece_1176]
}

def cell_4684 : Cell := { cellDefaults with
  domain := ⟨(14084374999999999 / 100000000000000000 : ℚ), (14087499999999999 / 100000000000000000 : ℚ)⟩
  r := (2015482348231 / 2000000000000 : ℚ)
  w := (3102453434327 / 3125000000000 : ℚ)
  center := (14085937499999999 / 100000000000000000 : ℚ)
  supportValue := (988310779642269 / 2000000000000000 : ℚ)
  supportSlope := (2415457807537713 / 500000000000000 : ℚ)
  oldCenter := (988310779642269 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_405
  oldLo := (9880000000000001 / 20000000000000000 : ℚ)
  oldHi := (9890000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1176]
}

def cell_4685 : Cell := { cellDefaults with
  domain := ⟨(14087499999999999 / 100000000000000000 : ℚ), (14090624999999999 / 100000000000000000 : ℚ)⟩
  r := (2015482348231 / 2000000000000 : ℚ)
  w := (3102453434327 / 3125000000000 : ℚ)
  center := (14089062499999999 / 100000000000000000 : ℚ)
  supportValue := (6178829657774313 / 12500000000000000 : ℚ)
  supportSlope := (150999525906359 / 31250000000000 : ℚ)
  oldCenter := (6178829657774313 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_405
  oldLo := (9880000000000001 / 20000000000000000 : ℚ)
  oldHi := (9890000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1176]
}

def cell_4686 : Cell := { cellDefaults with
  domain := ⟨(14090624999999999 / 100000000000000000 : ℚ), (14093749999999999 / 100000000000000000 : ℚ)⟩
  r := (2015482348231 / 2000000000000 : ℚ)
  w := (3102453434327 / 3125000000000 : ℚ)
  center := (14092187499999999 / 100000000000000000 : ℚ)
  supportValue := (4944573888498133 / 10000000000000000 : ℚ)
  supportSlope := (4832802763782951 / 1000000000000000 : ℚ)
  oldCenter := (4944573888498133 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_405
  oldLo := (9880000000000001 / 20000000000000000 : ℚ)
  oldHi := (9900000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1176, piece_1177]
}

def cell_4687 : Cell := { cellDefaults with
  domain := ⟨(14093749999999999 / 100000000000000000 : ℚ), (14096874999999999 / 100000000000000000 : ℚ)⟩
  r := (2015482348231 / 2000000000000 : ℚ)
  w := (3102453434327 / 3125000000000 : ℚ)
  center := (14095312499999999 / 100000000000000000 : ℚ)
  supportValue := (4946084125655121 / 10000000000000000 : ℚ)
  supportSlope := (2416483569952277 / 500000000000000 : ℚ)
  oldCenter := (4946084125655121 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_405
  oldLo := (9890000000000001 / 20000000000000000 : ℚ)
  oldHi := (9900000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1177]
}

def cell_4688 : Cell := { cellDefaults with
  domain := ⟨(14096874999999999 / 100000000000000000 : ℚ), (14099999999999999 / 100000000000000000 : ℚ)⟩
  r := (2015482348231 / 2000000000000 : ℚ)
  w := (3102453434327 / 3125000000000 : ℚ)
  center := (14098437499999999 / 100000000000000000 : ℚ)
  supportValue := (49475945943900573 / 100000000000000000 : ℚ)
  supportSlope := (2417016977295461 / 500000000000000 : ℚ)
  oldCenter := (49475945943900573 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_405
  oldLo := (9890000000000001 / 20000000000000000 : ℚ)
  oldHi := (9900000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1177]
}

def cell_4689 : Cell := { cellDefaults with
  domain := ⟨(14099999999999999 / 100000000000000000 : ℚ), (14103124999999999 / 100000000000000000 : ℚ)⟩
  r := (629133334421 / 625000000000 : ℚ)
  w := (99298942879671 / 100000000000000 : ℚ)
  center := (14101562499999999 / 100000000000000000 : ℚ)
  supportValue := (2472703328185221 / 5000000000000000 : ℚ)
  supportSlope := (1207620299807477 / 250000000000000 : ℚ)
  oldCenter := (2472703328185221 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_406
  oldLo := (9880000000000001 / 20000000000000000 : ℚ)
  oldHi := (9900000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1176, piece_1177]
}

def cell_4690 : Cell := { cellDefaults with
  domain := ⟨(14103124999999999 / 100000000000000000 : ℚ), (14106249999999999 / 100000000000000000 : ℚ)⟩
  r := (629133334421 / 625000000000 : ℚ)
  w := (99298942879671 / 100000000000000 : ℚ)
  center := (14104687499999999 / 100000000000000000 : ℚ)
  supportValue := (386477833242397 / 781250000000000 : ℚ)
  supportSlope := (1207821040345447 / 250000000000000 : ℚ)
  oldCenter := (386477833242397 / 781250000000000 : ℚ)
  newCoefficients := coefficients_406
  oldLo := (9890000000000001 / 20000000000000000 : ℚ)
  oldHi := (9900000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1177]
}

def cell_4691 : Cell := { cellDefaults with
  domain := ⟨(14106249999999999 / 100000000000000000 : ℚ), (14109374999999999 / 100000000000000000 : ℚ)⟩
  r := (629133334421 / 625000000000 : ℚ)
  w := (99298942879671 / 100000000000000 : ℚ)
  center := (14107812499999999 / 100000000000000000 : ℚ)
  supportValue := (2474213104369903 / 5000000000000000 : ℚ)
  supportSlope := (241617687409601 / 50000000000000 : ℚ)
  oldCenter := (2474213104369903 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_406
  oldLo := (9890000000000001 / 20000000000000000 : ℚ)
  oldHi := (9900000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1177]
}

def cell_4692 : Cell := { cellDefaults with
  domain := ⟨(14109374999999999 / 100000000000000000 : ℚ), (14112499999999999 / 100000000000000000 : ℚ)⟩
  r := (629133334421 / 625000000000 : ℚ)
  w := (99298942879671 / 100000000000000 : ℚ)
  center := (14110937499999999 / 100000000000000000 : ℚ)
  supportValue := (3093710303977399 / 6250000000000000 : ℚ)
  supportSlope := (966579347984009 / 200000000000000 : ℚ)
  oldCenter := (3093710303977399 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_406
  oldLo := (9890000000000001 / 20000000000000000 : ℚ)
  oldHi := (9910000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1177, piece_1178]
}

def cell_4693 : Cell := { cellDefaults with
  domain := ⟨(14112499999999999 / 100000000000000000 : ℚ), (14115624999999999 / 100000000000000000 : ℚ)⟩
  r := (629133334421 / 625000000000 : ℚ)
  w := (99298942879671 / 100000000000000 : ℚ)
  center := (14114062499999999 / 100000000000000000 : ℚ)
  supportValue := (4951446753581287 / 10000000000000000 : ℚ)
  supportSlope := (4833340865150859 / 1000000000000000 : ℚ)
  oldCenter := (4951446753581287 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_406
  oldLo := (9900000000000001 / 20000000000000000 : ℚ)
  oldHi := (9910000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1178]
}

def cell_4694 : Cell := { cellDefaults with
  domain := ⟨(14115624999999999 / 100000000000000000 : ℚ), (14118749999999999 / 100000000000000000 : ℚ)⟩
  r := (629133334421 / 625000000000 : ℚ)
  w := (99298942879671 / 100000000000000 : ℚ)
  center := (14117187499999999 / 100000000000000000 : ℚ)
  supportValue := (9905914678326203 / 20000000000000000 : ℚ)
  supportSlope := (2417204024570907 / 500000000000000 : ℚ)
  oldCenter := (9905914678326203 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_406
  oldLo := (9900000000000001 / 20000000000000000 : ℚ)
  oldHi := (9910000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1178]
}

def cell_4695 : Cell := { cellDefaults with
  domain := ⟨(14118749999999999 / 100000000000000000 : ℚ), (14121874999999999 / 100000000000000000 : ℚ)⟩
  r := (629133334421 / 625000000000 : ℚ)
  w := (99298942879671 / 100000000000000 : ℚ)
  center := (14120312499999999 / 100000000000000000 : ℚ)
  supportValue := (4954468258379879 / 10000000000000000 : ℚ)
  supportSlope := (4835306086969027 / 1000000000000000 : ℚ)
  oldCenter := (4954468258379879 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_406
  oldLo := (9900000000000001 / 20000000000000000 : ℚ)
  oldHi := (9920000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1178, piece_1179]
}

def cell_4696 : Cell := { cellDefaults with
  domain := ⟨(14121874999999999 / 100000000000000000 : ℚ), (14124999999999999 / 100000000000000000 : ℚ)⟩
  r := (629133334421 / 625000000000 : ℚ)
  w := (99298942879671 / 100000000000000 : ℚ)
  center := (14123437499999999 / 100000000000000000 : ℚ)
  supportValue := (1238994819783869 / 2500000000000000 : ℚ)
  supportSlope := (4835396705534123 / 1000000000000000 : ℚ)
  oldCenter := (1238994819783869 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_406
  oldLo := (9910000000000001 / 20000000000000000 : ℚ)
  oldHi := (9920000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1179]
}

def cell_4697 : Cell := { cellDefaults with
  domain := ⟨(14124999999999999 / 100000000000000000 : ℚ), (14128124999999999 / 100000000000000000 : ℚ)⟩
  r := (629133334421 / 625000000000 : ℚ)
  w := (99298942879671 / 100000000000000 : ℚ)
  center := (14126562499999999 / 100000000000000000 : ℚ)
  supportValue := (9914981013578259 / 20000000000000000 : ℚ)
  supportSlope := (2418230733617577 / 500000000000000 : ℚ)
  oldCenter := (9914981013578259 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_406
  oldLo := (9910000000000001 / 20000000000000000 : ℚ)
  oldHi := (9920000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1179]
}

def cell_4698 : Cell := { cellDefaults with
  domain := ⟨(14128124999999999 / 100000000000000000 : ℚ), (14131249999999999 / 100000000000000000 : ℚ)⟩
  r := (629133334421 / 625000000000 : ℚ)
  w := (99298942879671 / 100000000000000 : ℚ)
  center := (14129687499999999 / 100000000000000000 : ℚ)
  supportValue := (619875258414963 / 1250000000000000 : ℚ)
  supportSlope := (1209381779586849 / 250000000000000 : ℚ)
  oldCenter := (619875258414963 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_406
  oldLo := (9910000000000001 / 20000000000000000 : ℚ)
  oldHi := (9920000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1179]
}

def cell_4699 : Cell := { cellDefaults with
  domain := ⟨(14131249999999999 / 100000000000000000 : ℚ), (14134374999999999 / 100000000000000000 : ℚ)⟩
  r := (629133334421 / 625000000000 : ℚ)
  w := (99298942879671 / 100000000000000 : ℚ)
  center := (14132812499999999 / 100000000000000000 : ℚ)
  supportValue := (1240128459917813 / 2500000000000000 : ℚ)
  supportSlope := (604704218837071 / 125000000000000 : ℚ)
  oldCenter := (1240128459917813 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_406
  oldLo := (9910000000000001 / 20000000000000000 : ℚ)
  oldHi := (9930000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1179, piece_1180]
}

theorem check_4650 : SourceCertificateFamily.RightNormalized.check cell_4650 = true := by
  decide +kernel

theorem check_4651 : SourceCertificateFamily.RightNormalized.check cell_4651 = true := by
  decide +kernel

theorem check_4652 : SourceCertificateFamily.RightNormalized.check cell_4652 = true := by
  decide +kernel

theorem check_4653 : SourceCertificateFamily.RightNormalized.check cell_4653 = true := by
  decide +kernel

theorem check_4654 : SourceCertificateFamily.RightNormalized.check cell_4654 = true := by
  decide +kernel

theorem check_4655 : SourceCertificateFamily.RightNormalized.check cell_4655 = true := by
  decide +kernel

theorem check_4656 : SourceCertificateFamily.RightNormalized.check cell_4656 = true := by
  decide +kernel

theorem check_4657 : SourceCertificateFamily.RightNormalized.check cell_4657 = true := by
  decide +kernel

theorem check_4658 : SourceCertificateFamily.RightNormalized.check cell_4658 = true := by
  decide +kernel

theorem check_4659 : SourceCertificateFamily.RightNormalized.check cell_4659 = true := by
  decide +kernel

theorem check_4660 : SourceCertificateFamily.RightNormalized.check cell_4660 = true := by
  decide +kernel

theorem check_4661 : SourceCertificateFamily.RightNormalized.check cell_4661 = true := by
  decide +kernel

theorem check_4662 : SourceCertificateFamily.RightNormalized.check cell_4662 = true := by
  decide +kernel

theorem check_4663 : SourceCertificateFamily.RightNormalized.check cell_4663 = true := by
  decide +kernel

theorem check_4664 : SourceCertificateFamily.RightNormalized.check cell_4664 = true := by
  decide +kernel

theorem check_4665 : SourceCertificateFamily.RightNormalized.check cell_4665 = true := by
  decide +kernel

theorem check_4666 : SourceCertificateFamily.RightNormalized.check cell_4666 = true := by
  decide +kernel

theorem check_4667 : SourceCertificateFamily.RightNormalized.check cell_4667 = true := by
  decide +kernel

theorem check_4668 : SourceCertificateFamily.RightNormalized.check cell_4668 = true := by
  decide +kernel

theorem check_4669 : SourceCertificateFamily.RightNormalized.check cell_4669 = true := by
  decide +kernel

theorem check_4670 : SourceCertificateFamily.RightNormalized.check cell_4670 = true := by
  decide +kernel

theorem check_4671 : SourceCertificateFamily.RightNormalized.check cell_4671 = true := by
  decide +kernel

theorem check_4672 : SourceCertificateFamily.RightNormalized.check cell_4672 = true := by
  decide +kernel

theorem check_4673 : SourceCertificateFamily.RightNormalized.check cell_4673 = true := by
  decide +kernel

theorem check_4674 : SourceCertificateFamily.RightNormalized.check cell_4674 = true := by
  decide +kernel

theorem check_4675 : SourceCertificateFamily.RightNormalized.check cell_4675 = true := by
  decide +kernel

theorem check_4676 : SourceCertificateFamily.RightNormalized.check cell_4676 = true := by
  decide +kernel

theorem check_4677 : SourceCertificateFamily.RightNormalized.check cell_4677 = true := by
  decide +kernel

theorem check_4678 : SourceCertificateFamily.RightNormalized.check cell_4678 = true := by
  decide +kernel

theorem check_4679 : SourceCertificateFamily.RightNormalized.check cell_4679 = true := by
  decide +kernel

theorem check_4680 : SourceCertificateFamily.RightNormalized.check cell_4680 = true := by
  decide +kernel

theorem check_4681 : SourceCertificateFamily.RightNormalized.check cell_4681 = true := by
  decide +kernel

theorem check_4682 : SourceCertificateFamily.RightNormalized.check cell_4682 = true := by
  decide +kernel

theorem check_4683 : SourceCertificateFamily.RightNormalized.check cell_4683 = true := by
  decide +kernel

theorem check_4684 : SourceCertificateFamily.RightNormalized.check cell_4684 = true := by
  decide +kernel

theorem check_4685 : SourceCertificateFamily.RightNormalized.check cell_4685 = true := by
  decide +kernel

theorem check_4686 : SourceCertificateFamily.RightNormalized.check cell_4686 = true := by
  decide +kernel

theorem check_4687 : SourceCertificateFamily.RightNormalized.check cell_4687 = true := by
  decide +kernel

theorem check_4688 : SourceCertificateFamily.RightNormalized.check cell_4688 = true := by
  decide +kernel

theorem check_4689 : SourceCertificateFamily.RightNormalized.check cell_4689 = true := by
  decide +kernel

theorem check_4690 : SourceCertificateFamily.RightNormalized.check cell_4690 = true := by
  decide +kernel

theorem check_4691 : SourceCertificateFamily.RightNormalized.check cell_4691 = true := by
  decide +kernel

theorem check_4692 : SourceCertificateFamily.RightNormalized.check cell_4692 = true := by
  decide +kernel

theorem check_4693 : SourceCertificateFamily.RightNormalized.check cell_4693 = true := by
  decide +kernel

theorem check_4694 : SourceCertificateFamily.RightNormalized.check cell_4694 = true := by
  decide +kernel

theorem check_4695 : SourceCertificateFamily.RightNormalized.check cell_4695 = true := by
  decide +kernel

theorem check_4696 : SourceCertificateFamily.RightNormalized.check cell_4696 = true := by
  decide +kernel

theorem check_4697 : SourceCertificateFamily.RightNormalized.check cell_4697 = true := by
  decide +kernel

theorem check_4698 : SourceCertificateFamily.RightNormalized.check cell_4698 = true := by
  decide +kernel

theorem check_4699 : SourceCertificateFamily.RightNormalized.check cell_4699 = true := by
  decide +kernel

def cells : List Cell := [cell_4650, cell_4651, cell_4652, cell_4653, cell_4654, cell_4655, cell_4656, cell_4657, cell_4658, cell_4659, cell_4660, cell_4661, cell_4662, cell_4663, cell_4664, cell_4665, cell_4666, cell_4667, cell_4668, cell_4669, cell_4670, cell_4671, cell_4672, cell_4673, cell_4674, cell_4675, cell_4676, cell_4677, cell_4678, cell_4679, cell_4680, cell_4681, cell_4682, cell_4683, cell_4684, cell_4685, cell_4686, cell_4687, cell_4688, cell_4689, cell_4690, cell_4691, cell_4692, cell_4693, cell_4694, cell_4695, cell_4696, cell_4697, cell_4698, cell_4699]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_4650, SourceCertificateFamily.of_right_checked check_4651, SourceCertificateFamily.of_right_checked check_4652, SourceCertificateFamily.of_right_checked check_4653, SourceCertificateFamily.of_right_checked check_4654, SourceCertificateFamily.of_right_checked check_4655, SourceCertificateFamily.of_right_checked check_4656, SourceCertificateFamily.of_right_checked check_4657, SourceCertificateFamily.of_right_checked check_4658, SourceCertificateFamily.of_right_checked check_4659, SourceCertificateFamily.of_right_checked check_4660, SourceCertificateFamily.of_right_checked check_4661, SourceCertificateFamily.of_right_checked check_4662, SourceCertificateFamily.of_right_checked check_4663, SourceCertificateFamily.of_right_checked check_4664, SourceCertificateFamily.of_right_checked check_4665, SourceCertificateFamily.of_right_checked check_4666, SourceCertificateFamily.of_right_checked check_4667, SourceCertificateFamily.of_right_checked check_4668, SourceCertificateFamily.of_right_checked check_4669, SourceCertificateFamily.of_right_checked check_4670, SourceCertificateFamily.of_right_checked check_4671, SourceCertificateFamily.of_right_checked check_4672, SourceCertificateFamily.of_right_checked check_4673, SourceCertificateFamily.of_right_checked check_4674, SourceCertificateFamily.of_right_checked check_4675, SourceCertificateFamily.of_right_checked check_4676, SourceCertificateFamily.of_right_checked check_4677, SourceCertificateFamily.of_right_checked check_4678, SourceCertificateFamily.of_right_checked check_4679, SourceCertificateFamily.of_right_checked check_4680, SourceCertificateFamily.of_right_checked check_4681, SourceCertificateFamily.of_right_checked check_4682, SourceCertificateFamily.of_right_checked check_4683, SourceCertificateFamily.of_right_checked check_4684, SourceCertificateFamily.of_right_checked check_4685, SourceCertificateFamily.of_right_checked check_4686, SourceCertificateFamily.of_right_checked check_4687, SourceCertificateFamily.of_right_checked check_4688, SourceCertificateFamily.of_right_checked check_4689, SourceCertificateFamily.of_right_checked check_4690, SourceCertificateFamily.of_right_checked check_4691, SourceCertificateFamily.of_right_checked check_4692, SourceCertificateFamily.of_right_checked check_4693, SourceCertificateFamily.of_right_checked check_4694, SourceCertificateFamily.of_right_checked check_4695, SourceCertificateFamily.of_right_checked check_4696, SourceCertificateFamily.of_right_checked check_4697, SourceCertificateFamily.of_right_checked check_4698, SourceCertificateFamily.of_right_checked check_4699, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0093

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0093
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0093
open AnalyticBounds.ExpressionCertificate

theorem linked_4650 : Linked cell_4650 pieces := by
  refine ⟨piece_403,piece_403_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4650,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1166_mem

theorem linked_4651 : Linked cell_4651 pieces := by
  refine ⟨piece_403,piece_403_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4651,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1166_mem

theorem linked_4652 : Linked cell_4652 pieces := by
  refine ⟨piece_403,piece_403_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4652,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1166_mem
    · exact piece_1167_mem

theorem linked_4653 : Linked cell_4653 pieces := by
  refine ⟨piece_403,piece_403_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4653,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1167_mem

theorem linked_4654 : Linked cell_4654 pieces := by
  refine ⟨piece_403,piece_403_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4654,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1167_mem

theorem linked_4655 : Linked cell_4655 pieces := by
  refine ⟨piece_403,piece_403_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4655,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1167_mem
    · exact piece_1168_mem

theorem linked_4656 : Linked cell_4656 pieces := by
  refine ⟨piece_403,piece_403_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4656,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1168_mem

theorem linked_4657 : Linked cell_4657 pieces := by
  refine ⟨piece_404,piece_404_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4657,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1167_mem
    · exact piece_1168_mem

theorem linked_4658 : Linked cell_4658 pieces := by
  refine ⟨piece_404,piece_404_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4658,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1168_mem

theorem linked_4659 : Linked cell_4659 pieces := by
  refine ⟨piece_404,piece_404_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4659,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1168_mem

theorem linked_4660 : Linked cell_4660 pieces := by
  refine ⟨piece_404,piece_404_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4660,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1168_mem

theorem linked_4661 : Linked cell_4661 pieces := by
  refine ⟨piece_404,piece_404_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4661,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1168_mem
    · exact piece_1169_mem

theorem linked_4662 : Linked cell_4662 pieces := by
  refine ⟨piece_404,piece_404_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4662,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1169_mem
    · exact piece_1170_mem

theorem linked_4663 : Linked cell_4663 pieces := by
  refine ⟨piece_404,piece_404_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4663,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1170_mem

theorem linked_4664 : Linked cell_4664 pieces := by
  refine ⟨piece_404,piece_404_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4664,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1170_mem
    · exact piece_1171_mem

theorem linked_4665 : Linked cell_4665 pieces := by
  refine ⟨piece_404,piece_404_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4665,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1171_mem

theorem linked_4666 : Linked cell_4666 pieces := by
  refine ⟨piece_404,piece_404_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4666,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1171_mem

theorem linked_4667 : Linked cell_4667 pieces := by
  refine ⟨piece_404,piece_404_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4667,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1171_mem
    · exact piece_1172_mem

theorem linked_4668 : Linked cell_4668 pieces := by
  refine ⟨piece_404,piece_404_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4668,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1172_mem

theorem linked_4669 : Linked cell_4669 pieces := by
  refine ⟨piece_404,piece_404_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4669,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1172_mem

theorem linked_4670 : Linked cell_4670 pieces := by
  refine ⟨piece_404,piece_404_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4670,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1172_mem

theorem linked_4671 : Linked cell_4671 pieces := by
  refine ⟨piece_404,piece_404_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4671,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1172_mem
    · exact piece_1173_mem

theorem linked_4672 : Linked cell_4672 pieces := by
  refine ⟨piece_404,piece_404_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4672,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1173_mem

theorem linked_4673 : Linked cell_4673 pieces := by
  refine ⟨piece_405,piece_405_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4673,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1172_mem
    · exact piece_1173_mem

theorem linked_4674 : Linked cell_4674 pieces := by
  refine ⟨piece_405,piece_405_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4674,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1173_mem

theorem linked_4675 : Linked cell_4675 pieces := by
  refine ⟨piece_405,piece_405_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4675,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1173_mem

theorem linked_4676 : Linked cell_4676 pieces := by
  refine ⟨piece_405,piece_405_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4676,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1173_mem
    · exact piece_1174_mem

theorem linked_4677 : Linked cell_4677 pieces := by
  refine ⟨piece_405,piece_405_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4677,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1174_mem

theorem linked_4678 : Linked cell_4678 pieces := by
  refine ⟨piece_405,piece_405_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4678,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1174_mem

theorem linked_4679 : Linked cell_4679 pieces := by
  refine ⟨piece_405,piece_405_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4679,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1174_mem

theorem linked_4680 : Linked cell_4680 pieces := by
  refine ⟨piece_405,piece_405_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4680,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1174_mem
    · exact piece_1175_mem

theorem linked_4681 : Linked cell_4681 pieces := by
  refine ⟨piece_405,piece_405_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4681,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1175_mem

theorem linked_4682 : Linked cell_4682 pieces := by
  refine ⟨piece_405,piece_405_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4682,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1175_mem

theorem linked_4683 : Linked cell_4683 pieces := by
  refine ⟨piece_405,piece_405_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4683,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1175_mem
    · exact piece_1176_mem

theorem linked_4684 : Linked cell_4684 pieces := by
  refine ⟨piece_405,piece_405_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4684,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1176_mem

theorem linked_4685 : Linked cell_4685 pieces := by
  refine ⟨piece_405,piece_405_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4685,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1176_mem

theorem linked_4686 : Linked cell_4686 pieces := by
  refine ⟨piece_405,piece_405_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4686,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1176_mem
    · exact piece_1177_mem

theorem linked_4687 : Linked cell_4687 pieces := by
  refine ⟨piece_405,piece_405_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4687,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1177_mem

theorem linked_4688 : Linked cell_4688 pieces := by
  refine ⟨piece_405,piece_405_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4688,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1177_mem

theorem linked_4689 : Linked cell_4689 pieces := by
  refine ⟨piece_406,piece_406_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4689,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1176_mem
    · exact piece_1177_mem

theorem linked_4690 : Linked cell_4690 pieces := by
  refine ⟨piece_406,piece_406_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4690,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1177_mem

theorem linked_4691 : Linked cell_4691 pieces := by
  refine ⟨piece_406,piece_406_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4691,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1177_mem

theorem linked_4692 : Linked cell_4692 pieces := by
  refine ⟨piece_406,piece_406_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4692,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1177_mem
    · exact piece_1178_mem

theorem linked_4693 : Linked cell_4693 pieces := by
  refine ⟨piece_406,piece_406_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4693,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1178_mem

theorem linked_4694 : Linked cell_4694 pieces := by
  refine ⟨piece_406,piece_406_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4694,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1178_mem

theorem linked_4695 : Linked cell_4695 pieces := by
  refine ⟨piece_406,piece_406_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4695,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1178_mem
    · exact piece_1179_mem

theorem linked_4696 : Linked cell_4696 pieces := by
  refine ⟨piece_406,piece_406_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4696,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1179_mem

theorem linked_4697 : Linked cell_4697 pieces := by
  refine ⟨piece_406,piece_406_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4697,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1179_mem

theorem linked_4698 : Linked cell_4698 pieces := by
  refine ⟨piece_406,piece_406_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4698,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1179_mem

theorem linked_4699 : Linked cell_4699 pieces := by
  refine ⟨piece_406,piece_406_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_4699,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1179_mem
    · exact piece_1180_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0093.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0093.cells,List.forall_mem_cons]
  exact ⟨linked_4650, linked_4651, linked_4652, linked_4653, linked_4654, linked_4655, linked_4656, linked_4657, linked_4658, linked_4659, linked_4660, linked_4661, linked_4662, linked_4663, linked_4664, linked_4665, linked_4666, linked_4667, linked_4668, linked_4669, linked_4670, linked_4671, linked_4672, linked_4673, linked_4674, linked_4675, linked_4676, linked_4677, linked_4678, linked_4679, linked_4680, linked_4681, linked_4682, linked_4683, linked_4684, linked_4685, linked_4686, linked_4687, linked_4688, linked_4689, linked_4690, linked_4691, linked_4692, linked_4693, linked_4694, linked_4695, linked_4696, linked_4697, linked_4698, linked_4699, by simp⟩

theorem covered : covers (111824999999999999 / 800000000000000000 : ℚ) (14134374999999999 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0093.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0093
