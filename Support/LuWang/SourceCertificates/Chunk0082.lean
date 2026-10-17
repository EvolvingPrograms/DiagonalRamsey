import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0082
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(12259375000000001 / 100000000000000000 : ℚ), (12262500000000001 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (209836973643 / 200000000000 : ℚ)
  w := (3074085335659 / 3125000000000 : ℚ)
  center := (12260937500000001 / 100000000000000000 : ℚ)
  supportValue := (4204766189360947 / 10000000000000000 : ℚ)
  supportSlope := (904003414786203 / 200000000000000 : ℚ)
  oldCenter := (4204766189360947 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_367
  oldLo := (10537500000000001 / 25000000000000000 : ℚ)
  oldHi := (10562500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1016]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_4100 : Cell := { cellDefaults with
  r := (10504265777957 / 10000000000000 : ℚ)
  w := (3073009387551 / 3125000000000 : ℚ)
  newCoefficients := coefficients_366
  oldLo := (10500000000000001 / 25000000000000000 : ℚ)
  oldHi := (10525000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1015, piece_1016]
}

def cell_4101 : Cell := { cellDefaults with
  domain := ⟨(12262500000000001 / 100000000000000000 : ℚ), (12265625000000001 / 100000000000000000 : ℚ)⟩
  r := (10504265777957 / 10000000000000 : ℚ)
  w := (3073009387551 / 3125000000000 : ℚ)
  center := (12264062500000001 / 100000000000000000 : ℚ)
  supportValue := (4206179392815009 / 10000000000000000 : ℚ)
  supportSlope := (4519902532917897 / 1000000000000000 : ℚ)
  oldCenter := (4206179392815009 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_366
  oldLo := (10512500000000001 / 25000000000000000 : ℚ)
  oldHi := (10525000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1016]
}

def cell_4102 : Cell := { cellDefaults with
  domain := ⟨(12265625000000001 / 100000000000000000 : ℚ), (12268750000000001 / 100000000000000000 : ℚ)⟩
  r := (10504265777957 / 10000000000000 : ℚ)
  w := (3073009387551 / 3125000000000 : ℚ)
  center := (12267187500000001 / 100000000000000000 : ℚ)
  supportValue := (1051898023010389 / 2500000000000000 : ℚ)
  supportSlope := (1130343508174203 / 250000000000000 : ℚ)
  oldCenter := (1051898023010389 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_366
  oldLo := (10512500000000001 / 25000000000000000 : ℚ)
  oldHi := (10525000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1016]
}

def cell_4103 : Cell := { cellDefaults with
  domain := ⟨(12268750000000001 / 100000000000000000 : ℚ), (12271875000000001 / 100000000000000000 : ℚ)⟩
  r := (10504265777957 / 10000000000000 : ℚ)
  w := (3073009387551 / 3125000000000 : ℚ)
  center := (12270312500000001 / 100000000000000000 : ℚ)
  supportValue := (21045026257471097 / 50000000000000000 : ℚ)
  supportSlope := (2261423990937317 / 500000000000000 : ℚ)
  oldCenter := (21045026257471097 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_366
  oldLo := (10512500000000001 / 25000000000000000 : ℚ)
  oldHi := (10525000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1016]
}

def cell_4104 : Cell := { cellDefaults with
  domain := ⟨(12271875000000001 / 100000000000000000 : ℚ), (12275000000000001 / 100000000000000000 : ℚ)⟩
  r := (10504265777957 / 10000000000000 : ℚ)
  w := (3073009387551 / 3125000000000 : ℚ)
  center := (12273437500000001 / 100000000000000000 : ℚ)
  supportValue := (42104186516378783 / 100000000000000000 : ℚ)
  supportSlope := (2261214136138001 / 500000000000000 : ℚ)
  oldCenter := (42104186516378783 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_366
  oldLo := (10512500000000001 / 25000000000000000 : ℚ)
  oldHi := (10537500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1016, piece_1017]
}

def cell_4105 : Cell := { cellDefaults with
  domain := ⟨(12275000000000001 / 100000000000000000 : ℚ), (12278125000000001 / 100000000000000000 : ℚ)⟩
  r := (10504265777957 / 10000000000000 : ℚ)
  w := (3073009387551 / 3125000000000 : ℚ)
  center := (12276562500000001 / 100000000000000000 : ℚ)
  supportValue := (42118319883385247 / 100000000000000000 : ℚ)
  supportSlope := (565426374188549 / 125000000000000 : ℚ)
  oldCenter := (42118319883385247 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_366
  oldLo := (10525000000000001 / 25000000000000000 : ℚ)
  oldHi := (10537500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1017]
}

def cell_4106 : Cell := { cellDefaults with
  domain := ⟨(12278125000000001 / 100000000000000000 : ℚ), (12281250000000001 / 100000000000000000 : ℚ)⟩
  r := (10504265777957 / 10000000000000 : ℚ)
  w := (3073009387551 / 3125000000000 : ℚ)
  center := (12279687500000001 / 100000000000000000 : ℚ)
  supportValue := (4213245783415753 / 10000000000000000 : ℚ)
  supportSlope := (113121975329733 / 25000000000000 : ℚ)
  oldCenter := (4213245783415753 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_366
  oldLo := (10525000000000001 / 25000000000000000 : ℚ)
  oldHi := (10537500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1017]
}

def cell_4107 : Cell := { cellDefaults with
  domain := ⟨(12281250000000001 / 100000000000000000 : ℚ), (12284375000000001 / 100000000000000000 : ℚ)⟩
  r := (10504265777957 / 10000000000000 : ℚ)
  w := (3073009387551 / 3125000000000 : ℚ)
  center := (12282812500000001 / 100000000000000000 : ℚ)
  supportValue := (4214659194696987 / 10000000000000000 : ℚ)
  supportSlope := (452573478325391 / 100000000000000 : ℚ)
  oldCenter := (4214659194696987 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_366
  oldLo := (10525000000000001 / 25000000000000000 : ℚ)
  oldHi := (10550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1017, piece_1018]
}

def cell_4108 : Cell := { cellDefaults with
  domain := ⟨(12284375000000001 / 100000000000000000 : ℚ), (12287500000000001 / 100000000000000000 : ℚ)⟩
  r := (10504265777957 / 10000000000000 : ℚ)
  w := (3073009387551 / 3125000000000 : ℚ)
  center := (12285937500000001 / 100000000000000000 : ℚ)
  supportValue := (527009273676381 / 1250000000000000 : ℚ)
  supportSlope := (2262724749217959 / 500000000000000 : ℚ)
  oldCenter := (527009273676381 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_366
  oldHi := (10550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1018]
}

def cell_4109 : Cell := { cellDefaults with
  domain := ⟨(12287500000000001 / 100000000000000000 : ℚ), (12290625000000001 / 100000000000000000 : ℚ)⟩
  r := (10504265777957 / 10000000000000 : ℚ)
  w := (3073009387551 / 3125000000000 : ℚ)
  center := (12289062500000001 / 100000000000000000 : ℚ)
  supportValue := (843497724117237 / 2000000000000000 : ℚ)
  supportSlope := (4526911529740829 / 1000000000000000 : ℚ)
  oldCenter := (843497724117237 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_366
  oldHi := (10550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1018]
}

def cell_4110 : Cell := { cellDefaults with
  domain := ⟨(12290625000000001 / 100000000000000000 : ℚ), (12293750000000001 / 100000000000000000 : ℚ)⟩
  r := (10504265777957 / 10000000000000 : ℚ)
  w := (3073009387551 / 3125000000000 : ℚ)
  center := (12292187500000001 / 100000000000000000 : ℚ)
  supportValue := (4218903509022583 / 10000000000000000 : ℚ)
  supportSlope := (452837597229383 / 100000000000000 : ℚ)
  oldCenter := (4218903509022583 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_366
  oldHi := (10550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1018]
}

def cell_4111 : Cell := { cellDefaults with
  domain := ⟨(12293750000000001 / 100000000000000000 : ℚ), (12296875000000001 / 100000000000000000 : ℚ)⟩
  r := (10504265777957 / 10000000000000 : ℚ)
  w := (3073009387551 / 3125000000000 : ℚ)
  center := (12295312500000001 / 100000000000000000 : ℚ)
  supportValue := (2637698653525751 / 6250000000000000 : ℚ)
  supportSlope := (4528134049904153 / 1000000000000000 : ℚ)
  oldCenter := (2637698653525751 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_366
  oldPieces := [piece_1018, piece_1019]
}

def cell_4112 : Cell := { cellDefaults with
  domain := ⟨(12296875000000001 / 100000000000000000 : ℚ), (12300000000000001 / 100000000000000000 : ℚ)⟩
  r := (10504265777957 / 10000000000000 : ℚ)
  w := (3073009387551 / 3125000000000 : ℚ)
  center := (12298437500000001 / 100000000000000000 : ℚ)
  supportValue := (422173375744079 / 1000000000000000 : ℚ)
  supportSlope := (9057890995407547 / 2000000000000000 : ℚ)
  oldCenter := (422173375744079 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_366
  oldLo := (10550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1019]
}

def cell_4113 : Cell := { cellDefaults with
  domain := ⟨(12300000000000001 / 100000000000000000 : ℚ), (12303125000000001 / 100000000000000000 : ℚ)⟩
  center := (12301562500000001 / 100000000000000000 : ℚ)
  supportValue := (42203519127747513 / 100000000000000000 : ℚ)
  supportSlope := (4526589658260249 / 1000000000000000 : ℚ)
  oldCenter := (42203519127747513 / 100000000000000000 : ℚ)
  oldPieces := [piece_1018, piece_1019]
}

def cell_4114 : Cell := { cellDefaults with
  domain := ⟨(12303125000000001 / 100000000000000000 : ℚ), (12306250000000001 / 100000000000000000 : ℚ)⟩
  center := (12304687500000001 / 100000000000000000 : ℚ)
  supportValue := (1055441840039543 / 2500000000000000 : ℚ)
  supportSlope := (9054921360881707 / 2000000000000000 : ℚ)
  oldCenter := (1055441840039543 / 2500000000000000 : ℚ)
  oldLo := (10550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1019]
}

def cell_4115 : Cell := { cellDefaults with
  domain := ⟨(12306250000000001 / 100000000000000000 : ℚ), (12309375000000001 / 100000000000000000 : ℚ)⟩
  center := (12307812500000001 / 100000000000000000 : ℚ)
  supportValue := (21115912098373893 / 50000000000000000 : ℚ)
  supportSlope := (452892173090369 / 100000000000000 : ℚ)
  oldCenter := (21115912098373893 / 50000000000000000 : ℚ)
  oldLo := (10550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1019]
}

def cell_4116 : Cell := { cellDefaults with
  domain := ⟨(12309375000000001 / 100000000000000000 : ℚ), (12312500000000001 / 100000000000000000 : ℚ)⟩
  center := (12310937500000001 / 100000000000000000 : ℚ)
  supportValue := (8449195872288947 / 20000000000000000 : ℚ)
  supportSlope := (226493967128949 / 50000000000000 : ℚ)
  oldCenter := (8449195872288947 / 20000000000000000 : ℚ)
  oldLo := (10550000000000001 / 25000000000000000 : ℚ)
  oldHi := (10575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1019, piece_1020]
}

def cell_4117 : Cell := { cellDefaults with
  domain := ⟨(12312500000000001 / 100000000000000000 : ℚ), (12315625000000001 / 100000000000000000 : ℚ)⟩
  center := (12314062500000001 / 100000000000000000 : ℚ)
  supportValue := (845202677225029 / 2000000000000000 : ℚ)
  supportSlope := (905900913693003 / 200000000000000 : ℚ)
  oldCenter := (845202677225029 / 2000000000000000 : ℚ)
  oldLo := (10562500000000001 / 25000000000000000 : ℚ)
  oldHi := (10575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1020]
}

def cell_4118 : Cell := { cellDefaults with
  domain := ⟨(12315625000000001 / 100000000000000000 : ℚ), (12318750000000001 / 100000000000000000 : ℚ)⟩
  center := (12317187500000001 / 100000000000000000 : ℚ)
  supportValue := (42274290834119477 / 100000000000000000 : ℚ)
  supportSlope := (906191913393073 / 200000000000000 : ℚ)
  oldCenter := (42274290834119477 / 100000000000000000 : ℚ)
  oldLo := (10562500000000001 / 25000000000000000 : ℚ)
  oldHi := (10575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1020]
}

def cell_4119 : Cell := { cellDefaults with
  domain := ⟨(12318750000000001 / 100000000000000000 : ℚ), (12321875000000001 / 100000000000000000 : ℚ)⟩
  center := (12320312500000001 / 100000000000000000 : ℚ)
  supportValue := (4228845235757113 / 10000000000000000 : ℚ)
  supportSlope := (906483388748569 / 200000000000000 : ℚ)
  oldCenter := (4228845235757113 / 10000000000000000 : ℚ)
  oldLo := (10562500000000001 / 25000000000000000 : ℚ)
  oldHi := (10575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1020]
}

def cell_4120 : Cell := { cellDefaults with
  domain := ⟨(12321875000000001 / 100000000000000000 : ℚ), (12325000000000001 / 100000000000000000 : ℚ)⟩
  center := (12323437500000001 / 100000000000000000 : ℚ)
  supportValue := (1057565215813961 / 2500000000000000 : ℚ)
  supportSlope := (4532280544056633 / 1000000000000000 : ℚ)
  oldCenter := (1057565215813961 / 2500000000000000 : ℚ)
  oldLo := (10562500000000001 / 25000000000000000 : ℚ)
  oldHi := (10587500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1020, piece_1021]
}

def cell_4121 : Cell := { cellDefaults with
  domain := ⟨(12325000000000001 / 100000000000000000 : ℚ), (12328125000000001 / 100000000000000000 : ℚ)⟩
  center := (12326562500000001 / 100000000000000000 : ℚ)
  supportValue := (1057919511161357 / 2500000000000000 : ℚ)
  supportSlope := (906599762291549 / 200000000000000 : ℚ)
  oldCenter := (1057919511161357 / 2500000000000000 : ℚ)
  oldLo := (10575000000000001 / 25000000000000000 : ℚ)
  oldHi := (10587500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1021]
}

def cell_4122 : Cell := { cellDefaults with
  domain := ⟨(12328125000000001 / 100000000000000000 : ℚ), (12331250000000001 / 100000000000000000 : ℚ)⟩
  center := (12329687500000001 / 100000000000000000 : ℚ)
  supportValue := (4233094833466457 / 10000000000000000 : ℚ)
  supportSlope := (4534451140482787 / 1000000000000000 : ℚ)
  oldCenter := (4233094833466457 / 10000000000000000 : ℚ)
  oldLo := (10575000000000001 / 25000000000000000 : ℚ)
  oldHi := (10587500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1021]
}

def cell_4123 : Cell := { cellDefaults with
  domain := ⟨(12331250000000001 / 100000000000000000 : ℚ), (12334375000000001 / 100000000000000000 : ℚ)⟩
  center := (12332812500000001 / 100000000000000000 : ℚ)
  supportValue := (264657004781851 / 625000000000000 : ℚ)
  supportSlope := (9071088929886173 / 2000000000000000 : ℚ)
  oldCenter := (264657004781851 / 625000000000000 : ℚ)
  oldLo := (10575000000000001 / 25000000000000000 : ℚ)
  oldHi := (10600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1021, piece_1022]
}

def cell_4124 : Cell := { cellDefaults with
  domain := ⟨(12334375000000001 / 100000000000000000 : ℚ), (12337500000000001 / 100000000000000000 : ℚ)⟩
  center := (12335937500000001 / 100000000000000000 : ℚ)
  supportValue := (5294911623973 / 12500000000000 : ℚ)
  supportSlope := (453504014957673 / 100000000000000 : ℚ)
  oldCenter := (5294911623973 / 12500000000000 : ℚ)
  oldLo := (10587500000000001 / 25000000000000000 : ℚ)
  oldHi := (10600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1022]
}

def cell_4125 : Cell := { cellDefaults with
  domain := ⟨(12337500000000001 / 100000000000000000 : ℚ), (12340625000000001 / 100000000000000000 : ℚ)⟩
  center := (12339062500000001 / 100000000000000000 : ℚ)
  supportValue := (1059336681235419 / 2500000000000000 : ℚ)
  supportSlope := (4536486227454617 / 1000000000000000 : ℚ)
  oldCenter := (1059336681235419 / 2500000000000000 : ℚ)
  oldLo := (10587500000000001 / 25000000000000000 : ℚ)
  oldHi := (10600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1022]
}

def cell_4126 : Cell := { cellDefaults with
  domain := ⟨(12340625000000001 / 100000000000000000 : ℚ), (12343750000000001 / 100000000000000000 : ℚ)⟩
  center := (12342187500000001 / 100000000000000000 : ℚ)
  supportValue := (42387646029700327 / 100000000000000000 : ℚ)
  supportSlope := (363034771824573 / 80000000000000 : ℚ)
  oldCenter := (42387646029700327 / 100000000000000000 : ℚ)
  oldLo := (10587500000000001 / 25000000000000000 : ℚ)
  oldHi := (10600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1022]
}

def cell_4127 : Cell := { cellDefaults with
  domain := ⟨(12343750000000001 / 100000000000000000 : ℚ), (12346875000000001 / 100000000000000000 : ℚ)⟩
  center := (12345312500000001 / 100000000000000000 : ℚ)
  supportValue := (169607279718449 / 400000000000000 : ℚ)
  supportSlope := (4537934647443009 / 1000000000000000 : ℚ)
  oldCenter := (169607279718449 / 400000000000000 : ℚ)
  oldLo := (10587500000000001 / 25000000000000000 : ℚ)
  oldHi := (10612500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1022, piece_1023]
}

def cell_4128 : Cell := { cellDefaults with
  domain := ⟨(12346875000000001 / 100000000000000000 : ℚ), (12350000000000001 / 100000000000000000 : ℚ)⟩
  center := (12348437500000001 / 100000000000000000 : ℚ)
  supportValue := (21208004520101953 / 50000000000000000 : ℚ)
  supportSlope := (2269261278557977 / 500000000000000 : ℚ)
  oldCenter := (21208004520101953 / 50000000000000000 : ℚ)
  oldLo := (10600000000000001 / 25000000000000000 : ℚ)
  oldHi := (10612500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1023]
}

def cell_4129 : Cell := { cellDefaults with
  domain := ⟨(12350000000000001 / 100000000000000000 : ℚ), (12353125000000001 / 100000000000000000 : ℚ)⟩
  r := (2619866116649 / 2500000000000 : ℚ)
  w := (19680898141931 / 20000000000000 : ℚ)
  center := (12351562500000001 / 100000000000000000 : ℚ)
  supportValue := (4240190834858231 / 10000000000000000 : ℚ)
  supportSlope := (4536380724715627 / 1000000000000000 : ℚ)
  oldCenter := (4240190834858231 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_368
  oldLo := (10587500000000001 / 25000000000000000 : ℚ)
  oldHi := (10612500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1022, piece_1023]
}

def cell_4130 : Cell := { cellDefaults with
  domain := ⟨(12353125000000001 / 100000000000000000 : ℚ), (12356250000000001 / 100000000000000000 : ℚ)⟩
  r := (2619866116649 / 2500000000000 : ℚ)
  w := (19680898141931 / 20000000000000 : ℚ)
  center := (12354687500000001 / 100000000000000000 : ℚ)
  supportValue := (42416092653324733 / 100000000000000000 : ℚ)
  supportSlope := (2268493005472827 / 500000000000000 : ℚ)
  oldCenter := (42416092653324733 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_368
  oldLo := (10600000000000001 / 25000000000000000 : ℚ)
  oldHi := (10612500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1023]
}

def cell_4131 : Cell := { cellDefaults with
  domain := ⟨(12356250000000001 / 100000000000000000 : ℚ), (12359375000000001 / 100000000000000000 : ℚ)⟩
  r := (2619866116649 / 2500000000000 : ℚ)
  w := (19680898141931 / 20000000000000 : ℚ)
  center := (12357812500000001 / 100000000000000000 : ℚ)
  supportValue := (265189206190733 / 625000000000000 : ℚ)
  supportSlope := (907686256453033 / 200000000000000 : ℚ)
  oldCenter := (265189206190733 / 625000000000000 : ℚ)
  newCoefficients := coefficients_368
  oldLo := (10600000000000001 / 25000000000000000 : ℚ)
  oldHi := (10612500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1023]
}

def cell_4132 : Cell := { cellDefaults with
  domain := ⟨(12359375000000001 / 100000000000000000 : ℚ), (12362500000000001 / 100000000000000000 : ℚ)⟩
  r := (2619866116649 / 2500000000000 : ℚ)
  w := (19680898141931 / 20000000000000 : ℚ)
  center := (12360937500000001 / 100000000000000000 : ℚ)
  supportValue := (2122222892391237 / 5000000000000000 : ℚ)
  supportSlope := (226981387222569 / 50000000000000 : ℚ)
  oldCenter := (2122222892391237 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_368
  oldLo := (10600000000000001 / 25000000000000000 : ℚ)
  oldHi := (424804469273743 / 1000000000000000 : ℚ)
  oldPieces := [piece_1023, piece_1024]
}

def cell_4133 : Cell := { cellDefaults with
  domain := ⟨(12362500000000001 / 100000000000000000 : ℚ), (12365625000000001 / 100000000000000000 : ℚ)⟩
  r := (2619866116649 / 2500000000000 : ℚ)
  w := (19680898141931 / 20000000000000 : ℚ)
  center := (12364062500000001 / 100000000000000000 : ℚ)
  supportValue := (42458642863959967 / 100000000000000000 : ℚ)
  supportSlope := (907806423320423 / 200000000000000 : ℚ)
  oldCenter := (42458642863959967 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_368
  oldLo := (10612500000000001 / 25000000000000000 : ℚ)
  oldHi := (424804469273743 / 1000000000000000 : ℚ)
  oldPieces := [piece_1024]
}

def cell_4134 : Cell := { cellDefaults with
  domain := ⟨(12365625000000001 / 100000000000000000 : ℚ), (12368750000000001 / 100000000000000000 : ℚ)⟩
  r := (2619866116649 / 2500000000000 : ℚ)
  w := (19680898141931 / 20000000000000 : ℚ)
  center := (12367187500000001 / 100000000000000000 : ℚ)
  supportValue := (2123641479339723 / 5000000000000000 : ℚ)
  supportSlope := (4540471982908301 / 1000000000000000 : ℚ)
  oldCenter := (2123641479339723 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_368
  oldLo := (10612500000000001 / 25000000000000000 : ℚ)
  oldHi := (424804469273743 / 1000000000000000 : ℚ)
  oldPieces := [piece_1024]
}

def cell_4135 : Cell := { cellDefaults with
  domain := ⟨(12368750000000001 / 100000000000000000 : ℚ), (12371875000000001 / 100000000000000000 : ℚ)⟩
  r := (2619866116649 / 2500000000000 : ℚ)
  w := (19680898141931 / 20000000000000 : ℚ)
  center := (12370312500000001 / 100000000000000000 : ℚ)
  supportValue := (4248702081195063 / 10000000000000000 : ℚ)
  supportSlope := (2270956791331713 / 500000000000000 : ℚ)
  oldCenter := (4248702081195063 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_368
  oldLo := (10612500000000001 / 25000000000000000 : ℚ)
  oldHi := (10625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1024, piece_1025]
}

def cell_4136 : Cell := { cellDefaults with
  domain := ⟨(12371875000000001 / 100000000000000000 : ℚ), (12375000000000001 / 100000000000000000 : ℚ)⟩
  r := (2619866116649 / 2500000000000 : ℚ)
  w := (19680898141931 / 20000000000000 : ℚ)
  center := (12373437500000001 / 100000000000000000 : ℚ)
  supportValue := (1700048297361777 / 4000000000000000 : ℚ)
  supportSlope := (11355052671273569 / 2500000000000000 : ℚ)
  oldCenter := (1700048297361777 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_368
  oldLo := (424804469273743 / 1000000000000000 : ℚ)
  oldHi := (10637500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1025, piece_1026]
}

def cell_4137 : Cell := { cellDefaults with
  domain := ⟨(12375000000000001 / 100000000000000000 : ℚ), (12378125000000001 / 100000000000000000 : ℚ)⟩
  r := (2619866116649 / 2500000000000 : ℚ)
  w := (19680898141931 / 20000000000000 : ℚ)
  center := (12376562500000001 / 100000000000000000 : ℚ)
  supportValue := (4251540904515069 / 10000000000000000 : ℚ)
  supportSlope := (567814177644399 / 125000000000000 : ℚ)
  oldCenter := (4251540904515069 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_368
  oldLo := (10625000000000001 / 25000000000000000 : ℚ)
  oldHi := (10637500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1026]
}

def cell_4138 : Cell := { cellDefaults with
  domain := ⟨(12378125000000001 / 100000000000000000 : ℚ), (12381250000000001 / 100000000000000000 : ℚ)⟩
  r := (2619866116649 / 2500000000000 : ℚ)
  w := (19680898141931 / 20000000000000 : ℚ)
  center := (12379687500000001 / 100000000000000000 : ℚ)
  supportValue := (4252960664212281 / 10000000000000000 : ℚ)
  supportSlope := (181758004940491 / 40000000000000 : ℚ)
  oldCenter := (4252960664212281 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_368
  oldLo := (10625000000000001 / 25000000000000000 : ℚ)
  oldHi := (10637500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1026]
}

def cell_4139 : Cell := { cellDefaults with
  domain := ⟨(12381250000000001 / 100000000000000000 : ℚ), (12384375000000001 / 100000000000000000 : ℚ)⟩
  r := (2619866116649 / 2500000000000 : ℚ)
  w := (19680898141931 / 20000000000000 : ℚ)
  center := (12382812500000001 / 100000000000000000 : ℚ)
  supportValue := (2127190436618911 / 5000000000000000 : ℚ)
  supportSlope := (9090485988455299 / 2000000000000000 : ℚ)
  oldCenter := (2127190436618911 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_368
  oldLo := (10625000000000001 / 25000000000000000 : ℚ)
  oldHi := (8520000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1026, piece_1027]
}

def cell_4140 : Cell := { cellDefaults with
  domain := ⟨(12384375000000001 / 100000000000000000 : ℚ), (12387500000000001 / 100000000000000000 : ℚ)⟩
  r := (2619866116649 / 2500000000000 : ℚ)
  w := (19680898141931 / 20000000000000 : ℚ)
  center := (12385937500000001 / 100000000000000000 : ℚ)
  supportValue := (66496892685477 / 156250000000000 : ℚ)
  supportSlope := (4544556764223273 / 1000000000000000 : ℚ)
  oldCenter := (66496892685477 / 156250000000000 : ℚ)
  newCoefficients := coefficients_368
  oldLo := (10637500000000001 / 25000000000000000 : ℚ)
  oldHi := (8520000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1027]
}

def cell_4141 : Cell := { cellDefaults with
  domain := ⟨(12387500000000001 / 100000000000000000 : ℚ), (12390625000000001 / 100000000000000000 : ℚ)⟩
  r := (2619866116649 / 2500000000000 : ℚ)
  w := (19680898141931 / 20000000000000 : ℚ)
  center := (12389062500000001 / 100000000000000000 : ℚ)
  supportValue := (4257221529248707 / 10000000000000000 : ℚ)
  supportSlope := (909197586801369 / 200000000000000 : ℚ)
  oldCenter := (4257221529248707 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_368
  oldLo := (10637500000000001 / 25000000000000000 : ℚ)
  oldHi := (8520000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1027]
}

def cell_4142 : Cell := { cellDefaults with
  domain := ⟨(12390625000000001 / 100000000000000000 : ℚ), (12393750000000001 / 100000000000000000 : ℚ)⟩
  r := (2619866116649 / 2500000000000 : ℚ)
  w := (19680898141931 / 20000000000000 : ℚ)
  center := (12392187500000001 / 100000000000000000 : ℚ)
  supportValue := (851728474844627 / 2000000000000000 : ℚ)
  supportSlope := (4547421381882799 / 1000000000000000 : ℚ)
  oldCenter := (851728474844627 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_368
  oldLo := (10637500000000001 / 25000000000000000 : ℚ)
  oldHi := (8520000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1027]
}

def cell_4143 : Cell := { cellDefaults with
  domain := ⟨(12393750000000001 / 100000000000000000 : ℚ), (12396875000000001 / 100000000000000000 : ℚ)⟩
  r := (2619866116649 / 2500000000000 : ℚ)
  w := (19680898141931 / 20000000000000 : ℚ)
  center := (12395312500000001 / 100000000000000000 : ℚ)
  supportValue := (42600627837141053 / 100000000000000000 : ℚ)
  supportSlope := (3552832810369 / 781250000000 : ℚ)
  oldCenter := (42600627837141053 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_368
  oldLo := (10637500000000001 / 25000000000000000 : ℚ)
  oldHi := (8530000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1027, piece_1028]
}

def cell_4144 : Cell := { cellDefaults with
  domain := ⟨(12396875000000001 / 100000000000000000 : ℚ), (12400000000000001 / 100000000000000000 : ℚ)⟩
  r := (2619866116649 / 2500000000000 : ℚ)
  w := (19680898141931 / 20000000000000 : ℚ)
  center := (12398437500000001 / 100000000000000000 : ℚ)
  supportValue := (4261484671173979 / 10000000000000000 : ℚ)
  supportSlope := (909605391701973 / 200000000000000 : ℚ)
  oldCenter := (4261484671173979 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_368
  oldLo := (8520000000000001 / 20000000000000000 : ℚ)
  oldHi := (8530000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1028]
}

def cell_4145 : Cell := { cellDefaults with
  domain := ⟨(12400000000000001 / 100000000000000000 : ℚ), (39690000000000003 / 320000000000000000 : ℚ)⟩
  r := (2093422489399 / 2000000000000 : ℚ)
  w := (49218804088491 / 50000000000000 : ℚ)
  center := (396850000000000031 / 3200000000000000000 : ℚ)
  supportValue := (4260046743959779 / 10000000000000000 : ℚ)
  supportSlope := (4546060917730889 / 1000000000000000 : ℚ)
  oldCenter := (4260046743959779 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_369
  oldLo := (10637500000000001 / 25000000000000000 : ℚ)
  oldHi := (8530000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1027, piece_1028]
}

def cell_4146 : Cell := { cellDefaults with
  domain := ⟨(39690000000000003 / 320000000000000000 : ℚ), (99250000000000007 / 800000000000000000 : ℚ)⟩
  r := (2093422489399 / 2000000000000 : ℚ)
  w := (49218804088491 / 50000000000000 : ℚ)
  center := (396950000000000029 / 3200000000000000000 : ℚ)
  supportValue := (4261468134929533 / 10000000000000000 : ℚ)
  supportSlope := (4546439527848369 / 1000000000000000 : ℚ)
  oldCenter := (4261468134929533 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_369
  oldLo := (8520000000000001 / 20000000000000000 : ℚ)
  oldHi := (8530000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1028]
}

def cell_4147 : Cell := { cellDefaults with
  domain := ⟨(99250000000000007 / 800000000000000000 : ℚ), (198550000000000013 / 1600000000000000000 : ℚ)⟩
  r := (2093422489399 / 2000000000000 : ℚ)
  w := (49218804088491 / 50000000000000 : ℚ)
  center := (397050000000000027 / 3200000000000000000 : ℚ)
  supportValue := (4262889120566971 / 10000000000000000 : ℚ)
  supportSlope := (18191480110929 / 4000000000000 : ℚ)
  oldCenter := (4262889120566971 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_369
  oldLo := (8520000000000001 / 20000000000000000 : ℚ)
  oldHi := (8530000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1028]
}

def cell_4148 : Cell := { cellDefaults with
  domain := ⟨(198550000000000013 / 1600000000000000000 : ℚ), (49650000000000003 / 400000000000000000 : ℚ)⟩
  r := (2093422489399 / 2000000000000 : ℚ)
  w := (49218804088491 / 50000000000000 : ℚ)
  center := (15886000000000001 / 128000000000000000 : ℚ)
  supportValue := (4264310553589881 / 10000000000000000 : ℚ)
  supportSlope := (568658538411493 / 125000000000000 : ℚ)
  oldCenter := (4264310553589881 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_369
  oldLo := (8520000000000001 / 20000000000000000 : ℚ)
  oldHi := (8540000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1028, piece_1029]
}

def cell_4149 : Cell := { cellDefaults with
  domain := ⟨(49650000000000003 / 400000000000000000 : ℚ), (198650000000000011 / 1600000000000000000 : ℚ)⟩
  r := (2093422489399 / 2000000000000 : ℚ)
  w := (49218804088491 / 50000000000000 : ℚ)
  center := (397250000000000023 / 3200000000000000000 : ℚ)
  supportValue := (341258565838509 / 800000000000000 : ℚ)
  supportSlope := (1137122164037963 / 250000000000000 : ℚ)
  oldCenter := (341258565838509 / 800000000000000 : ℚ)
  newCoefficients := coefficients_369
  oldLo := (8530000000000001 / 20000000000000000 : ℚ)
  oldHi := (8540000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1029]
}

theorem check_4100 : SourceCertificateFamily.RightNormalized.check cell_4100 = true := by
  decide +kernel

theorem check_4101 : SourceCertificateFamily.RightNormalized.check cell_4101 = true := by
  decide +kernel

theorem check_4102 : SourceCertificateFamily.RightNormalized.check cell_4102 = true := by
  decide +kernel

theorem check_4103 : SourceCertificateFamily.RightNormalized.check cell_4103 = true := by
  decide +kernel

theorem check_4104 : SourceCertificateFamily.RightNormalized.check cell_4104 = true := by
  decide +kernel

theorem check_4105 : SourceCertificateFamily.RightNormalized.check cell_4105 = true := by
  decide +kernel

theorem check_4106 : SourceCertificateFamily.RightNormalized.check cell_4106 = true := by
  decide +kernel

theorem check_4107 : SourceCertificateFamily.RightNormalized.check cell_4107 = true := by
  decide +kernel

theorem check_4108 : SourceCertificateFamily.RightNormalized.check cell_4108 = true := by
  decide +kernel

theorem check_4109 : SourceCertificateFamily.RightNormalized.check cell_4109 = true := by
  decide +kernel

theorem check_4110 : SourceCertificateFamily.RightNormalized.check cell_4110 = true := by
  decide +kernel

theorem check_4111 : SourceCertificateFamily.RightNormalized.check cell_4111 = true := by
  decide +kernel

theorem check_4112 : SourceCertificateFamily.RightNormalized.check cell_4112 = true := by
  decide +kernel

theorem check_4113 : SourceCertificateFamily.RightNormalized.check cell_4113 = true := by
  decide +kernel

theorem check_4114 : SourceCertificateFamily.RightNormalized.check cell_4114 = true := by
  decide +kernel

theorem check_4115 : SourceCertificateFamily.RightNormalized.check cell_4115 = true := by
  decide +kernel

theorem check_4116 : SourceCertificateFamily.RightNormalized.check cell_4116 = true := by
  decide +kernel

theorem check_4117 : SourceCertificateFamily.RightNormalized.check cell_4117 = true := by
  decide +kernel

theorem check_4118 : SourceCertificateFamily.RightNormalized.check cell_4118 = true := by
  decide +kernel

theorem check_4119 : SourceCertificateFamily.RightNormalized.check cell_4119 = true := by
  decide +kernel

theorem check_4120 : SourceCertificateFamily.RightNormalized.check cell_4120 = true := by
  decide +kernel

theorem check_4121 : SourceCertificateFamily.RightNormalized.check cell_4121 = true := by
  decide +kernel

theorem check_4122 : SourceCertificateFamily.RightNormalized.check cell_4122 = true := by
  decide +kernel

theorem check_4123 : SourceCertificateFamily.RightNormalized.check cell_4123 = true := by
  decide +kernel

theorem check_4124 : SourceCertificateFamily.RightNormalized.check cell_4124 = true := by
  decide +kernel

theorem check_4125 : SourceCertificateFamily.RightNormalized.check cell_4125 = true := by
  decide +kernel

theorem check_4126 : SourceCertificateFamily.RightNormalized.check cell_4126 = true := by
  decide +kernel

theorem check_4127 : SourceCertificateFamily.RightNormalized.check cell_4127 = true := by
  decide +kernel

theorem check_4128 : SourceCertificateFamily.RightNormalized.check cell_4128 = true := by
  decide +kernel

theorem check_4129 : SourceCertificateFamily.RightNormalized.check cell_4129 = true := by
  decide +kernel

theorem check_4130 : SourceCertificateFamily.RightNormalized.check cell_4130 = true := by
  decide +kernel

theorem check_4131 : SourceCertificateFamily.RightNormalized.check cell_4131 = true := by
  decide +kernel

theorem check_4132 : SourceCertificateFamily.RightNormalized.check cell_4132 = true := by
  decide +kernel

theorem check_4133 : SourceCertificateFamily.RightNormalized.check cell_4133 = true := by
  decide +kernel

theorem check_4134 : SourceCertificateFamily.RightNormalized.check cell_4134 = true := by
  decide +kernel

theorem check_4135 : SourceCertificateFamily.RightNormalized.check cell_4135 = true := by
  decide +kernel

theorem check_4136 : SourceCertificateFamily.RightNormalized.check cell_4136 = true := by
  decide +kernel

theorem check_4137 : SourceCertificateFamily.RightNormalized.check cell_4137 = true := by
  decide +kernel

theorem check_4138 : SourceCertificateFamily.RightNormalized.check cell_4138 = true := by
  decide +kernel

theorem check_4139 : SourceCertificateFamily.RightNormalized.check cell_4139 = true := by
  decide +kernel

theorem check_4140 : SourceCertificateFamily.RightNormalized.check cell_4140 = true := by
  decide +kernel

theorem check_4141 : SourceCertificateFamily.RightNormalized.check cell_4141 = true := by
  decide +kernel

theorem check_4142 : SourceCertificateFamily.RightNormalized.check cell_4142 = true := by
  decide +kernel

theorem check_4143 : SourceCertificateFamily.RightNormalized.check cell_4143 = true := by
  decide +kernel

theorem check_4144 : SourceCertificateFamily.RightNormalized.check cell_4144 = true := by
  decide +kernel

theorem check_4145 : SourceCertificateFamily.RightNormalized.check cell_4145 = true := by
  decide +kernel

theorem check_4146 : SourceCertificateFamily.RightNormalized.check cell_4146 = true := by
  decide +kernel

theorem check_4147 : SourceCertificateFamily.RightNormalized.check cell_4147 = true := by
  decide +kernel

theorem check_4148 : SourceCertificateFamily.RightNormalized.check cell_4148 = true := by
  decide +kernel

theorem check_4149 : SourceCertificateFamily.RightNormalized.check cell_4149 = true := by
  decide +kernel

def cells : List Cell := [cell_4100, cell_4101, cell_4102, cell_4103, cell_4104, cell_4105, cell_4106, cell_4107, cell_4108, cell_4109, cell_4110, cell_4111, cell_4112, cell_4113, cell_4114, cell_4115, cell_4116, cell_4117, cell_4118, cell_4119, cell_4120, cell_4121, cell_4122, cell_4123, cell_4124, cell_4125, cell_4126, cell_4127, cell_4128, cell_4129, cell_4130, cell_4131, cell_4132, cell_4133, cell_4134, cell_4135, cell_4136, cell_4137, cell_4138, cell_4139, cell_4140, cell_4141, cell_4142, cell_4143, cell_4144, cell_4145, cell_4146, cell_4147, cell_4148, cell_4149]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_4100, SourceCertificateFamily.of_right_checked check_4101, SourceCertificateFamily.of_right_checked check_4102, SourceCertificateFamily.of_right_checked check_4103, SourceCertificateFamily.of_right_checked check_4104, SourceCertificateFamily.of_right_checked check_4105, SourceCertificateFamily.of_right_checked check_4106, SourceCertificateFamily.of_right_checked check_4107, SourceCertificateFamily.of_right_checked check_4108, SourceCertificateFamily.of_right_checked check_4109, SourceCertificateFamily.of_right_checked check_4110, SourceCertificateFamily.of_right_checked check_4111, SourceCertificateFamily.of_right_checked check_4112, SourceCertificateFamily.of_right_checked check_4113, SourceCertificateFamily.of_right_checked check_4114, SourceCertificateFamily.of_right_checked check_4115, SourceCertificateFamily.of_right_checked check_4116, SourceCertificateFamily.of_right_checked check_4117, SourceCertificateFamily.of_right_checked check_4118, SourceCertificateFamily.of_right_checked check_4119, SourceCertificateFamily.of_right_checked check_4120, SourceCertificateFamily.of_right_checked check_4121, SourceCertificateFamily.of_right_checked check_4122, SourceCertificateFamily.of_right_checked check_4123, SourceCertificateFamily.of_right_checked check_4124, SourceCertificateFamily.of_right_checked check_4125, SourceCertificateFamily.of_right_checked check_4126, SourceCertificateFamily.of_right_checked check_4127, SourceCertificateFamily.of_right_checked check_4128, SourceCertificateFamily.of_right_checked check_4129, SourceCertificateFamily.of_right_checked check_4130, SourceCertificateFamily.of_right_checked check_4131, SourceCertificateFamily.of_right_checked check_4132, SourceCertificateFamily.of_right_checked check_4133, SourceCertificateFamily.of_right_checked check_4134, SourceCertificateFamily.of_right_checked check_4135, SourceCertificateFamily.of_right_checked check_4136, SourceCertificateFamily.of_right_checked check_4137, SourceCertificateFamily.of_right_checked check_4138, SourceCertificateFamily.of_right_checked check_4139, SourceCertificateFamily.of_right_checked check_4140, SourceCertificateFamily.of_right_checked check_4141, SourceCertificateFamily.of_right_checked check_4142, SourceCertificateFamily.of_right_checked check_4143, SourceCertificateFamily.of_right_checked check_4144, SourceCertificateFamily.of_right_checked check_4145, SourceCertificateFamily.of_right_checked check_4146, SourceCertificateFamily.of_right_checked check_4147, SourceCertificateFamily.of_right_checked check_4148, SourceCertificateFamily.of_right_checked check_4149, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0082

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0082
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0082
open AnalyticBounds.ExpressionCertificate

theorem linked_4100 : Linked cell_4100 pieces := by
  apply Linked.of_piece piece_366 piece_366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4100, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1015_mem, piece_1016_mem⟩

theorem linked_4101 : Linked cell_4101 pieces := by
  apply Linked.of_piece piece_366 piece_366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4101, List.cons_subset, List.nil_subset, and_true]
  exact piece_1016_mem

theorem linked_4102 : Linked cell_4102 pieces := by
  apply Linked.of_piece piece_366 piece_366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4102, List.cons_subset, List.nil_subset, and_true]
  exact piece_1016_mem

theorem linked_4103 : Linked cell_4103 pieces := by
  apply Linked.of_piece piece_366 piece_366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4103, List.cons_subset, List.nil_subset, and_true]
  exact piece_1016_mem

theorem linked_4104 : Linked cell_4104 pieces := by
  apply Linked.of_piece piece_366 piece_366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4104, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1016_mem, piece_1017_mem⟩

theorem linked_4105 : Linked cell_4105 pieces := by
  apply Linked.of_piece piece_366 piece_366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4105, List.cons_subset, List.nil_subset, and_true]
  exact piece_1017_mem

theorem linked_4106 : Linked cell_4106 pieces := by
  apply Linked.of_piece piece_366 piece_366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4106, List.cons_subset, List.nil_subset, and_true]
  exact piece_1017_mem

theorem linked_4107 : Linked cell_4107 pieces := by
  apply Linked.of_piece piece_366 piece_366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4107, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1017_mem, piece_1018_mem⟩

theorem linked_4108 : Linked cell_4108 pieces := by
  apply Linked.of_piece piece_366 piece_366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4108, List.cons_subset, List.nil_subset, and_true]
  exact piece_1018_mem

theorem linked_4109 : Linked cell_4109 pieces := by
  apply Linked.of_piece piece_366 piece_366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4109, List.cons_subset, List.nil_subset, and_true]
  exact piece_1018_mem

theorem linked_4110 : Linked cell_4110 pieces := by
  apply Linked.of_piece piece_366 piece_366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4110, List.cons_subset, List.nil_subset, and_true]
  exact piece_1018_mem

theorem linked_4111 : Linked cell_4111 pieces := by
  apply Linked.of_piece piece_366 piece_366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4111, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1018_mem, piece_1019_mem⟩

theorem linked_4112 : Linked cell_4112 pieces := by
  apply Linked.of_piece piece_366 piece_366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4112, List.cons_subset, List.nil_subset, and_true]
  exact piece_1019_mem

theorem linked_4113 : Linked cell_4113 pieces := by
  apply Linked.of_piece piece_367 piece_367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4113, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1018_mem, piece_1019_mem⟩

theorem linked_4114 : Linked cell_4114 pieces := by
  apply Linked.of_piece piece_367 piece_367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4114, List.cons_subset, List.nil_subset, and_true]
  exact piece_1019_mem

theorem linked_4115 : Linked cell_4115 pieces := by
  apply Linked.of_piece piece_367 piece_367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4115, List.cons_subset, List.nil_subset, and_true]
  exact piece_1019_mem

theorem linked_4116 : Linked cell_4116 pieces := by
  apply Linked.of_piece piece_367 piece_367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4116, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1019_mem, piece_1020_mem⟩

theorem linked_4117 : Linked cell_4117 pieces := by
  apply Linked.of_piece piece_367 piece_367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4117, List.cons_subset, List.nil_subset, and_true]
  exact piece_1020_mem

theorem linked_4118 : Linked cell_4118 pieces := by
  apply Linked.of_piece piece_367 piece_367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4118, List.cons_subset, List.nil_subset, and_true]
  exact piece_1020_mem

theorem linked_4119 : Linked cell_4119 pieces := by
  apply Linked.of_piece piece_367 piece_367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4119, List.cons_subset, List.nil_subset, and_true]
  exact piece_1020_mem

theorem linked_4120 : Linked cell_4120 pieces := by
  apply Linked.of_piece piece_367 piece_367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4120, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1020_mem, piece_1021_mem⟩

theorem linked_4121 : Linked cell_4121 pieces := by
  apply Linked.of_piece piece_367 piece_367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4121, List.cons_subset, List.nil_subset, and_true]
  exact piece_1021_mem

theorem linked_4122 : Linked cell_4122 pieces := by
  apply Linked.of_piece piece_367 piece_367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4122, List.cons_subset, List.nil_subset, and_true]
  exact piece_1021_mem

theorem linked_4123 : Linked cell_4123 pieces := by
  apply Linked.of_piece piece_367 piece_367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4123, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1021_mem, piece_1022_mem⟩

theorem linked_4124 : Linked cell_4124 pieces := by
  apply Linked.of_piece piece_367 piece_367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4124, List.cons_subset, List.nil_subset, and_true]
  exact piece_1022_mem

theorem linked_4125 : Linked cell_4125 pieces := by
  apply Linked.of_piece piece_367 piece_367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4125, List.cons_subset, List.nil_subset, and_true]
  exact piece_1022_mem

theorem linked_4126 : Linked cell_4126 pieces := by
  apply Linked.of_piece piece_367 piece_367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4126, List.cons_subset, List.nil_subset, and_true]
  exact piece_1022_mem

theorem linked_4127 : Linked cell_4127 pieces := by
  apply Linked.of_piece piece_367 piece_367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4127, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1022_mem, piece_1023_mem⟩

theorem linked_4128 : Linked cell_4128 pieces := by
  apply Linked.of_piece piece_367 piece_367_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4128, List.cons_subset, List.nil_subset, and_true]
  exact piece_1023_mem

theorem linked_4129 : Linked cell_4129 pieces := by
  apply Linked.of_piece piece_368 piece_368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4129, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1022_mem, piece_1023_mem⟩

theorem linked_4130 : Linked cell_4130 pieces := by
  apply Linked.of_piece piece_368 piece_368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4130, List.cons_subset, List.nil_subset, and_true]
  exact piece_1023_mem

theorem linked_4131 : Linked cell_4131 pieces := by
  apply Linked.of_piece piece_368 piece_368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4131, List.cons_subset, List.nil_subset, and_true]
  exact piece_1023_mem

theorem linked_4132 : Linked cell_4132 pieces := by
  apply Linked.of_piece piece_368 piece_368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4132, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1023_mem, piece_1024_mem⟩

theorem linked_4133 : Linked cell_4133 pieces := by
  apply Linked.of_piece piece_368 piece_368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4133, List.cons_subset, List.nil_subset, and_true]
  exact piece_1024_mem

theorem linked_4134 : Linked cell_4134 pieces := by
  apply Linked.of_piece piece_368 piece_368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4134, List.cons_subset, List.nil_subset, and_true]
  exact piece_1024_mem

theorem linked_4135 : Linked cell_4135 pieces := by
  apply Linked.of_piece piece_368 piece_368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4135, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1024_mem, piece_1025_mem⟩

theorem linked_4136 : Linked cell_4136 pieces := by
  apply Linked.of_piece piece_368 piece_368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4136, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1025_mem, piece_1026_mem⟩

theorem linked_4137 : Linked cell_4137 pieces := by
  apply Linked.of_piece piece_368 piece_368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4137, List.cons_subset, List.nil_subset, and_true]
  exact piece_1026_mem

theorem linked_4138 : Linked cell_4138 pieces := by
  apply Linked.of_piece piece_368 piece_368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4138, List.cons_subset, List.nil_subset, and_true]
  exact piece_1026_mem

theorem linked_4139 : Linked cell_4139 pieces := by
  apply Linked.of_piece piece_368 piece_368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4139, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1026_mem, piece_1027_mem⟩

theorem linked_4140 : Linked cell_4140 pieces := by
  apply Linked.of_piece piece_368 piece_368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4140, List.cons_subset, List.nil_subset, and_true]
  exact piece_1027_mem

theorem linked_4141 : Linked cell_4141 pieces := by
  apply Linked.of_piece piece_368 piece_368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4141, List.cons_subset, List.nil_subset, and_true]
  exact piece_1027_mem

theorem linked_4142 : Linked cell_4142 pieces := by
  apply Linked.of_piece piece_368 piece_368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4142, List.cons_subset, List.nil_subset, and_true]
  exact piece_1027_mem

theorem linked_4143 : Linked cell_4143 pieces := by
  apply Linked.of_piece piece_368 piece_368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4143, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1027_mem, piece_1028_mem⟩

theorem linked_4144 : Linked cell_4144 pieces := by
  apply Linked.of_piece piece_368 piece_368_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4144, List.cons_subset, List.nil_subset, and_true]
  exact piece_1028_mem

theorem linked_4145 : Linked cell_4145 pieces := by
  apply Linked.of_piece piece_369 piece_369_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4145, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1027_mem, piece_1028_mem⟩

theorem linked_4146 : Linked cell_4146 pieces := by
  apply Linked.of_piece piece_369 piece_369_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4146, List.cons_subset, List.nil_subset, and_true]
  exact piece_1028_mem

theorem linked_4147 : Linked cell_4147 pieces := by
  apply Linked.of_piece piece_369 piece_369_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4147, List.cons_subset, List.nil_subset, and_true]
  exact piece_1028_mem

theorem linked_4148 : Linked cell_4148 pieces := by
  apply Linked.of_piece piece_369 piece_369_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4148, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1028_mem, piece_1029_mem⟩

theorem linked_4149 : Linked cell_4149 pieces := by
  apply Linked.of_piece piece_369 piece_369_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4149, List.cons_subset, List.nil_subset, and_true]
  exact piece_1029_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0082.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0082.cells,List.forall_mem_cons]
  exact ⟨linked_4100, linked_4101, linked_4102, linked_4103, linked_4104, linked_4105, linked_4106, linked_4107, linked_4108, linked_4109, linked_4110, linked_4111, linked_4112, linked_4113, linked_4114, linked_4115, linked_4116, linked_4117, linked_4118, linked_4119, linked_4120, linked_4121, linked_4122, linked_4123, linked_4124, linked_4125, linked_4126, linked_4127, linked_4128, linked_4129, linked_4130, linked_4131, linked_4132, linked_4133, linked_4134, linked_4135, linked_4136, linked_4137, linked_4138, linked_4139, linked_4140, linked_4141, linked_4142, linked_4143, linked_4144, linked_4145, linked_4146, linked_4147, linked_4148, linked_4149, by simp⟩

theorem covered : covers (12259375000000001 / 100000000000000000 : ℚ) (198650000000000011 / 1600000000000000000 : ℚ)
    (SourceCertificates.Chunk0082.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0082
