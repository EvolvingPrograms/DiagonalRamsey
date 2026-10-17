import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0079
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(11793750000000001 / 100000000000000000 : ℚ), (11796875000000001 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (5308738494561 / 5000000000000 : ℚ)
  w := (97992541342023 / 100000000000000 : ℚ)
  center := (11795312500000001 / 100000000000000000 : ℚ)
  supportValue := (100564618536453 / 250000000000000 : ℚ)
  supportSlope := (138352341406911 / 31250000000000 : ℚ)
  oldCenter := (100564618536453 / 250000000000000 : ℚ)
  newCoefficients := coefficients_356
  oldLo := (40400000000000003 / 100000000000000000 : ℚ)
  oldHi := (40450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_980]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_3950 : Cell := { cellDefaults with
  r := (1063021807093 / 1000000000000 : ℚ)
  w := (24487525885199 / 25000000000000 : ℚ)
  newCoefficients := coefficients_355
  oldLo := (20100000000000001 / 50000000000000000 : ℚ)
  oldHi := (20125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_975]
}

def cell_3951 : Cell := { cellDefaults with
  domain := ⟨(11796875000000001 / 100000000000000000 : ℚ), (11800000000000001 / 100000000000000000 : ℚ)⟩
  r := (1063021807093 / 1000000000000 : ℚ)
  w := (24487525885199 / 25000000000000 : ℚ)
  center := (11798437500000001 / 100000000000000000 : ℚ)
  supportValue := (502996064919767 / 1250000000000000 : ℚ)
  supportSlope := (4428905315474907 / 1000000000000000 : ℚ)
  oldCenter := (502996064919767 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_355
  oldLo := (20100000000000001 / 50000000000000000 : ℚ)
  oldHi := (20125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_975]
}

def cell_3952 : Cell := { cellDefaults with
  domain := ⟨(11800000000000001 / 100000000000000000 : ℚ), (11803125000000001 / 100000000000000000 : ℚ)⟩
  center := (11801562500000001 / 100000000000000000 : ℚ)
  supportValue := (20114471294769043 / 50000000000000000 : ℚ)
  supportSlope := (8852793315881513 / 2000000000000000 : ℚ)
  oldCenter := (20114471294769043 / 50000000000000000 : ℚ)
  oldLo := (20100000000000001 / 50000000000000000 : ℚ)
  oldHi := (20125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_975]
}

def cell_3953 : Cell := { cellDefaults with
  domain := ⟨(11803125000000001 / 100000000000000000 : ℚ), (11806250000000001 / 100000000000000000 : ℚ)⟩
  center := (11804687500000001 / 100000000000000000 : ℚ)
  supportValue := (2012138881461723 / 5000000000000000 : ℚ)
  supportSlope := (2214015214970111 / 500000000000000 : ℚ)
  oldCenter := (2012138881461723 / 5000000000000000 : ℚ)
  oldLo := (20100000000000001 / 50000000000000000 : ℚ)
  oldHi := (20125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_975]
}

def cell_3954 : Cell := { cellDefaults with
  domain := ⟨(11806250000000001 / 100000000000000000 : ℚ), (11809375000000001 / 100000000000000000 : ℚ)⟩
  center := (11807812500000001 / 100000000000000000 : ℚ)
  supportValue := (10064153368276381 / 25000000000000000 : ℚ)
  supportSlope := (442684492815637 / 100000000000000 : ℚ)
  oldCenter := (10064153368276381 / 25000000000000000 : ℚ)
  oldLo := (20100000000000001 / 50000000000000000 : ℚ)
  oldHi := (40268156424581003 / 100000000000000000 : ℚ)
  oldPieces := [piece_975, piece_976]
}

def cell_3955 : Cell := { cellDefaults with
  domain := ⟨(11809375000000001 / 100000000000000000 : ℚ), (11812500000000001 / 100000000000000000 : ℚ)⟩
  center := (11810937500000001 / 100000000000000000 : ℚ)
  supportValue := (10067612425757201 / 25000000000000000 : ℚ)
  supportSlope := (1107101554456591 / 250000000000000 : ℚ)
  oldCenter := (10067612425757201 / 25000000000000000 : ℚ)
  oldLo := (20125000000000001 / 50000000000000000 : ℚ)
  oldHi := (20150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_976, piece_977]
}

def cell_3956 : Cell := { cellDefaults with
  domain := ⟨(11812500000000001 / 100000000000000000 : ℚ), (11815625000000001 / 100000000000000000 : ℚ)⟩
  center := (11814062500000001 / 100000000000000000 : ℚ)
  supportValue := (40284291011294937 / 100000000000000000 : ℚ)
  supportSlope := (2215016265474823 / 500000000000000 : ℚ)
  oldCenter := (40284291011294937 / 100000000000000000 : ℚ)
  oldLo := (40268156424581003 / 100000000000000000 : ℚ)
  oldHi := (20150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_977]
}

def cell_3957 : Cell := { cellDefaults with
  domain := ⟨(11815625000000001 / 100000000000000000 : ℚ), (11818750000000001 / 100000000000000000 : ℚ)⟩
  center := (11817187500000001 / 100000000000000000 : ℚ)
  supportValue := (251863308415121 / 625000000000000 : ℚ)
  supportSlope := (4430613615518553 / 1000000000000000 : ℚ)
  oldCenter := (251863308415121 / 625000000000000 : ℚ)
  oldLo := (40268156424581003 / 100000000000000000 : ℚ)
  oldHi := (40350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_977, piece_978]
}

def cell_3958 : Cell := { cellDefaults with
  domain := ⟨(11818750000000001 / 100000000000000000 : ℚ), (11821875000000001 / 100000000000000000 : ℚ)⟩
  center := (11820312500000001 / 100000000000000000 : ℚ)
  supportValue := (20155990566913337 / 50000000000000000 : ℚ)
  supportSlope := (886083618807021 / 200000000000000 : ℚ)
  oldCenter := (20155990566913337 / 50000000000000000 : ℚ)
  oldLo := (20150000000000001 / 50000000000000000 : ℚ)
  oldHi := (40350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_978]
}

def cell_3959 : Cell := { cellDefaults with
  domain := ⟨(11821875000000001 / 100000000000000000 : ℚ), (11825000000000001 / 100000000000000000 : ℚ)⟩
  center := (11823437500000001 / 100000000000000000 : ℚ)
  supportValue := (126018214746399 / 312500000000000 : ℚ)
  supportSlope := (8864075976667607 / 2000000000000000 : ℚ)
  oldCenter := (126018214746399 / 312500000000000 : ℚ)
  oldLo := (20150000000000001 / 50000000000000000 : ℚ)
  oldHi := (40350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_978]
}

def cell_3960 : Cell := { cellDefaults with
  domain := ⟨(11825000000000001 / 100000000000000000 : ℚ), (11828125000000001 / 100000000000000000 : ℚ)⟩
  center := (11826562500000001 / 100000000000000000 : ℚ)
  supportValue := (2016984068546653 / 5000000000000000 : ℚ)
  supportSlope := (4433661017790413 / 1000000000000000 : ℚ)
  oldCenter := (2016984068546653 / 5000000000000000 : ℚ)
  oldLo := (20150000000000001 / 50000000000000000 : ℚ)
  oldHi := (40350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_978]
}

def cell_3961 : Cell := { cellDefaults with
  domain := ⟨(11828125000000001 / 100000000000000000 : ℚ), (11831250000000001 / 100000000000000000 : ℚ)⟩
  center := (11829687500000001 / 100000000000000000 : ℚ)
  supportValue := (20176764375949807 / 50000000000000000 : ℚ)
  supportSlope := (277070619160269 / 62500000000000 : ℚ)
  oldCenter := (20176764375949807 / 50000000000000000 : ℚ)
  oldLo := (20150000000000001 / 50000000000000000 : ℚ)
  oldHi := (40400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_978, piece_979]
}

def cell_3962 : Cell := { cellDefaults with
  domain := ⟨(11831250000000001 / 100000000000000000 : ℚ), (11834375000000001 / 100000000000000000 : ℚ)⟩
  center := (11832812500000001 / 100000000000000000 : ℚ)
  supportValue := (8073478139257687 / 20000000000000000 : ℚ)
  supportSlope := (4434046406458947 / 1000000000000000 : ℚ)
  oldCenter := (8073478139257687 / 20000000000000000 : ℚ)
  oldLo := (40350000000000003 / 100000000000000000 : ℚ)
  oldHi := (40400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_979]
}

def cell_3963 : Cell := { cellDefaults with
  domain := ⟨(11834375000000001 / 100000000000000000 : ℚ), (11837500000000001 / 100000000000000000 : ℚ)⟩
  center := (11835937500000001 / 100000000000000000 : ℚ)
  supportValue := (40381249612301473 / 100000000000000000 : ℚ)
  supportSlope := (1108915376457631 / 250000000000000 : ℚ)
  oldCenter := (40381249612301473 / 100000000000000000 : ℚ)
  oldLo := (40350000000000003 / 100000000000000000 : ℚ)
  oldHi := (40400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_979]
}

def cell_3964 : Cell := { cellDefaults with
  domain := ⟨(11837500000000001 / 100000000000000000 : ℚ), (11840625000000001 / 100000000000000000 : ℚ)⟩
  center := (11839062500000001 / 100000000000000000 : ℚ)
  supportValue := (100987763753339 / 250000000000000 : ℚ)
  supportSlope := (4436860495632189 / 1000000000000000 : ℚ)
  oldCenter := (100987763753339 / 250000000000000 : ℚ)
  oldLo := (40350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_979, piece_980]
}

def cell_3965 : Cell := { cellDefaults with
  domain := ⟨(11840625000000001 / 100000000000000000 : ℚ), (11843750000000001 / 100000000000000000 : ℚ)⟩
  center := (11842187500000001 / 100000000000000000 : ℚ)
  supportValue := (4040897686353659 / 10000000000000000 : ℚ)
  supportSlope := (2218028735930133 / 500000000000000 : ℚ)
  oldCenter := (4040897686353659 / 10000000000000000 : ℚ)
  oldPieces := [piece_980]
}

def cell_3966 : Cell := { cellDefaults with
  domain := ⟨(11843750000000001 / 100000000000000000 : ℚ), (11846875000000001 / 100000000000000000 : ℚ)⟩
  center := (11845312500000001 / 100000000000000000 : ℚ)
  supportValue := (8084568410549553 / 20000000000000000 : ℚ)
  supportSlope := (1775066112139001 / 400000000000000 : ℚ)
  oldCenter := (8084568410549553 / 20000000000000000 : ℚ)
  oldPieces := [piece_980]
}

def cell_3967 : Cell := { cellDefaults with
  domain := ⟨(11846875000000001 / 100000000000000000 : ℚ), (11850000000000001 / 100000000000000000 : ℚ)⟩
  center := (11848437500000001 / 100000000000000000 : ℚ)
  supportValue := (1617468490846953 / 4000000000000000 : ℚ)
  supportSlope := (2219638085922959 / 500000000000000 : ℚ)
  oldCenter := (1617468490846953 / 4000000000000000 : ℚ)
  oldPieces := [piece_980]
}

def cell_3968 : Cell := { cellDefaults with
  domain := ⟨(11850000000000001 / 100000000000000000 : ℚ), (11853125000000001 / 100000000000000000 : ℚ)⟩
  r := (10604768477509 / 10000000000000 : ℚ)
  w := (1960681141497 / 2000000000000 : ℚ)
  center := (11851562500000001 / 100000000000000000 : ℚ)
  supportValue := (4042564263801651 / 10000000000000000 : ℚ)
  supportSlope := (2218359508575851 / 500000000000000 : ℚ)
  oldCenter := (4042564263801651 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_357
  oldPieces := [piece_980]
}

def cell_3969 : Cell := { cellDefaults with
  domain := ⟨(11853125000000001 / 100000000000000000 : ℚ), (11856250000000001 / 100000000000000000 : ℚ)⟩
  r := (10604768477509 / 10000000000000 : ℚ)
  w := (1960681141497 / 2000000000000 : ℚ)
  center := (11854687500000001 / 100000000000000000 : ℚ)
  supportValue := (40439509904563997 / 100000000000000000 : ℚ)
  supportSlope := (44383332345177 / 10000000000000 : ℚ)
  oldCenter := (40439509904563997 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_357
  oldPieces := [piece_980]
}

def cell_3970 : Cell := { cellDefaults with
  domain := ⟨(11856250000000001 / 100000000000000000 : ℚ), (11859375000000001 / 100000000000000000 : ℚ)⟩
  r := (10604768477509 / 10000000000000 : ℚ)
  w := (1960681141497 / 2000000000000 : ℚ)
  center := (11857812500000001 / 100000000000000000 : ℚ)
  supportValue := (2022668598950461 / 5000000000000000 : ℚ)
  supportSlope := (4437849458170717 / 1000000000000000 : ℚ)
  oldCenter := (2022668598950461 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_357
  oldHi := (40500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_980, piece_981]
}

def cell_3971 : Cell := { cellDefaults with
  domain := ⟨(11859375000000001 / 100000000000000000 : ℚ), (11862500000000001 / 100000000000000000 : ℚ)⟩
  r := (10604768477509 / 10000000000000 : ℚ)
  w := (1960681141497 / 2000000000000 : ℚ)
  center := (11860937500000001 / 100000000000000000 : ℚ)
  supportValue := (1011681215037597 / 2500000000000000 : ℚ)
  supportSlope := (2219366603153361 / 500000000000000 : ℚ)
  oldCenter := (1011681215037597 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_357
  oldLo := (40450000000000003 / 100000000000000000 : ℚ)
  oldHi := (40500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_981]
}

def cell_3972 : Cell := { cellDefaults with
  domain := ⟨(11862500000000001 / 100000000000000000 : ℚ), (11865625000000001 / 100000000000000000 : ℚ)⟩
  r := (10604768477509 / 10000000000000 : ℚ)
  w := (1960681141497 / 2000000000000 : ℚ)
  center := (11864062500000001 / 100000000000000000 : ℚ)
  supportValue := (10120280537961171 / 25000000000000000 : ℚ)
  supportSlope := (22201703333362133 / 5000000000000000 : ℚ)
  oldCenter := (10120280537961171 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_357
  oldLo := (40450000000000003 / 100000000000000000 : ℚ)
  oldHi := (40500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_981]
}

def cell_3973 : Cell := { cellDefaults with
  domain := ⟨(11865625000000001 / 100000000000000000 : ℚ), (11868750000000001 / 100000000000000000 : ℚ)⟩
  r := (10604768477509 / 10000000000000 : ℚ)
  w := (1960681141497 / 2000000000000 : ℚ)
  center := (11867187500000001 / 100000000000000000 : ℚ)
  supportValue := (4049499263129447 / 10000000000000000 : ℚ)
  supportSlope := (2220778995661199 / 500000000000000 : ℚ)
  oldCenter := (4049499263129447 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_357
  oldLo := (40450000000000003 / 100000000000000000 : ℚ)
  oldHi := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_981, piece_982]
}

def cell_3974 : Cell := { cellDefaults with
  domain := ⟨(11868750000000001 / 100000000000000000 : ℚ), (11871875000000001 / 100000000000000000 : ℚ)⟩
  r := (10604768477509 / 10000000000000 : ℚ)
  w := (1960681141497 / 2000000000000 : ℚ)
  center := (11870312500000001 / 100000000000000000 : ℚ)
  supportValue := (8101775745278017 / 20000000000000000 : ℚ)
  supportSlope := (1110187591176981 / 250000000000000 : ℚ)
  oldCenter := (8101775745278017 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_357
  oldLo := (40500000000000003 / 100000000000000000 : ℚ)
  oldHi := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_982]
}

def cell_3975 : Cell := { cellDefaults with
  domain := ⟨(11871875000000001 / 100000000000000000 : ℚ), (11875000000000001 / 100000000000000000 : ℚ)⟩
  r := (10604768477509 / 10000000000000 : ℚ)
  w := (1960681141497 / 2000000000000 : ℚ)
  center := (11873437500000001 / 100000000000000000 : ℚ)
  supportValue := (405227585696863 / 1000000000000000 : ℚ)
  supportSlope := (888470198659519 / 200000000000000 : ℚ)
  oldCenter := (405227585696863 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_357
  oldLo := (40500000000000003 / 100000000000000000 : ℚ)
  oldHi := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_982]
}

def cell_3976 : Cell := { cellDefaults with
  domain := ⟨(11875000000000001 / 100000000000000000 : ℚ), (11878125000000001 / 100000000000000000 : ℚ)⟩
  r := (10604768477509 / 10000000000000 : ℚ)
  w := (1960681141497 / 2000000000000 : ℚ)
  center := (11876562500000001 / 100000000000000000 : ℚ)
  supportValue := (1013416085492511 / 2500000000000000 : ℚ)
  supportSlope := (888790933319683 / 200000000000000 : ℚ)
  oldCenter := (1013416085492511 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_357
  oldLo := (40500000000000003 / 100000000000000000 : ℚ)
  oldHi := (40550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_982]
}

def cell_3977 : Cell := { cellDefaults with
  domain := ⟨(11878125000000001 / 100000000000000000 : ℚ), (11881250000000001 / 100000000000000000 : ℚ)⟩
  r := (10604768477509 / 10000000000000 : ℚ)
  w := (1960681141497 / 2000000000000 : ℚ)
  center := (11879687500000001 / 100000000000000000 : ℚ)
  supportValue := (40550524838545843 / 100000000000000000 : ℚ)
  supportSlope := (4444055988679807 / 1000000000000000 : ℚ)
  oldCenter := (40550524838545843 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_357
  oldLo := (40500000000000003 / 100000000000000000 : ℚ)
  oldHi := (40600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_982, piece_983]
}

def cell_3978 : Cell := { cellDefaults with
  domain := ⟨(11881250000000001 / 100000000000000000 : ℚ), (11884375000000001 / 100000000000000000 : ℚ)⟩
  r := (10604768477509 / 10000000000000 : ℚ)
  w := (1960681141497 / 2000000000000 : ℚ)
  center := (11882812500000001 / 100000000000000000 : ℚ)
  supportValue := (4056441909400059 / 10000000000000000 : ℚ)
  supportSlope := (1111091048450863 / 250000000000000 : ℚ)
  oldCenter := (4056441909400059 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_357
  oldLo := (40550000000000003 / 100000000000000000 : ℚ)
  oldHi := (40600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_983]
}

def cell_3979 : Cell := { cellDefaults with
  domain := ⟨(11884375000000001 / 100000000000000000 : ℚ), (11887500000000001 / 100000000000000000 : ℚ)⟩
  r := (10604768477509 / 10000000000000 : ℚ)
  w := (1960681141497 / 2000000000000 : ℚ)
  center := (11885937500000001 / 100000000000000000 : ℚ)
  supportValue := (2028915511222193 / 5000000000000000 : ℚ)
  supportSlope := (4445960934226889 / 1000000000000000 : ℚ)
  oldCenter := (2028915511222193 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_357
  oldLo := (40550000000000003 / 100000000000000000 : ℚ)
  oldHi := (40600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_983]
}

def cell_3980 : Cell := { cellDefaults with
  domain := ⟨(11887500000000001 / 100000000000000000 : ℚ), (11890625000000001 / 100000000000000000 : ℚ)⟩
  r := (10604768477509 / 10000000000000 : ℚ)
  w := (1960681141497 / 2000000000000 : ℚ)
  center := (11889062500000001 / 100000000000000000 : ℚ)
  supportValue := (4059220634942451 / 10000000000000000 : ℚ)
  supportSlope := (4447560700159059 / 1000000000000000 : ℚ)
  oldCenter := (4059220634942451 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_357
  oldLo := (40550000000000003 / 100000000000000000 : ℚ)
  oldHi := (40600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_983]
}

def cell_3981 : Cell := { cellDefaults with
  domain := ⟨(11890625000000001 / 100000000000000000 : ℚ), (11893750000000001 / 100000000000000000 : ℚ)⟩
  r := (10604768477509 / 10000000000000 : ℚ)
  w := (1960681141497 / 2000000000000 : ℚ)
  center := (11892187500000001 / 100000000000000000 : ℚ)
  supportValue := (1015152591494551 / 2500000000000000 : ℚ)
  supportSlope := (889309580321651 / 200000000000000 : ℚ)
  oldCenter := (1015152591494551 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_357
  oldLo := (40550000000000003 / 100000000000000000 : ℚ)
  oldHi := (40650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_983, piece_984]
}

def cell_3982 : Cell := { cellDefaults with
  domain := ⟨(11893750000000001 / 100000000000000000 : ℚ), (11896875000000001 / 100000000000000000 : ℚ)⟩
  r := (10604768477509 / 10000000000000 : ℚ)
  w := (1960681141497 / 2000000000000 : ℚ)
  center := (11895312500000001 / 100000000000000000 : ℚ)
  supportValue := (4062000107945029 / 10000000000000000 : ℚ)
  supportSlope := (2223984989615957 / 500000000000000 : ℚ)
  oldCenter := (4062000107945029 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_357
  oldLo := (40600000000000003 / 100000000000000000 : ℚ)
  oldHi := (40650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_984]
}

def cell_3983 : Cell := { cellDefaults with
  domain := ⟨(11896875000000001 / 100000000000000000 : ℚ), (11900000000000001 / 100000000000000000 : ℚ)⟩
  r := (10604768477509 / 10000000000000 : ℚ)
  w := (1960681141497 / 2000000000000 : ℚ)
  center := (11898437500000001 / 100000000000000000 : ℚ)
  supportValue := (4063390347171413 / 10000000000000000 : ℚ)
  supportSlope := (889912541960669 / 200000000000000 : ℚ)
  oldCenter := (4063390347171413 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_357
  oldLo := (40600000000000003 / 100000000000000000 : ℚ)
  oldHi := (40650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_984]
}

def cell_3984 : Cell := { cellDefaults with
  domain := ⟨(11900000000000001 / 100000000000000000 : ℚ), (11903125000000001 / 100000000000000000 : ℚ)⟩
  r := (2648023065289 / 2500000000000 : ℚ)
  w := (49037339489877 / 50000000000000 : ℚ)
  center := (11901562500000001 / 100000000000000000 : ℚ)
  supportValue := (40622510648234317 / 100000000000000000 : ℚ)
  supportSlope := (4446957305464849 / 1000000000000000 : ℚ)
  oldCenter := (40622510648234317 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_358
  oldLo := (40600000000000003 / 100000000000000000 : ℚ)
  oldHi := (40650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_984]
}

def cell_3985 : Cell := { cellDefaults with
  domain := ⟨(11903125000000001 / 100000000000000000 : ℚ), (11906250000000001 / 100000000000000000 : ℚ)⟩
  r := (2648023065289 / 2500000000000 : ℚ)
  w := (49037339489877 / 50000000000000 : ℚ)
  center := (11904687500000001 / 100000000000000000 : ℚ)
  supportValue := (507955123512609 / 1250000000000000 : ℚ)
  supportSlope := (4448553312029091 / 1000000000000000 : ℚ)
  oldCenter := (507955123512609 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_358
  oldLo := (40600000000000003 / 100000000000000000 : ℚ)
  oldHi := (40650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_984]
}

def cell_3986 : Cell := { cellDefaults with
  domain := ⟨(11906250000000001 / 100000000000000000 : ℚ), (11909375000000001 / 100000000000000000 : ℚ)⟩
  r := (2648023065289 / 2500000000000 : ℚ)
  w := (49037339489877 / 50000000000000 : ℚ)
  center := (11907812500000001 / 100000000000000000 : ℚ)
  supportValue := (20325152889262807 / 50000000000000000 : ℚ)
  supportSlope := (889741288653667 / 200000000000000 : ℚ)
  oldCenter := (20325152889262807 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_358
  oldLo := (40600000000000003 / 100000000000000000 : ℚ)
  oldHi := (40700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_984, piece_985]
}

def cell_3987 : Cell := { cellDefaults with
  domain := ⟨(11909375000000001 / 100000000000000000 : ℚ), (11912500000000001 / 100000000000000000 : ℚ)⟩
  r := (2648023065289 / 2500000000000 : ℚ)
  w := (49037339489877 / 50000000000000 : ℚ)
  center := (11910937500000001 / 100000000000000000 : ℚ)
  supportValue := (4066421448069917 / 10000000000000000 : ℚ)
  supportSlope := (4448976861642251 / 1000000000000000 : ℚ)
  oldCenter := (4066421448069917 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_358
  oldLo := (40650000000000003 / 100000000000000000 : ℚ)
  oldHi := (40700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_985]
}

def cell_3988 : Cell := { cellDefaults with
  domain := ⟨(11912500000000001 / 100000000000000000 : ℚ), (11915625000000001 / 100000000000000000 : ℚ)⟩
  r := (2648023065289 / 2500000000000 : ℚ)
  w := (49037339489877 / 50000000000000 : ℚ)
  center := (11914062500000001 / 100000000000000000 : ℚ)
  supportValue := (4067812001351967 / 10000000000000000 : ℚ)
  supportSlope := (222528288934587 / 50000000000000 : ℚ)
  oldCenter := (4067812001351967 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_358
  oldLo := (40650000000000003 / 100000000000000000 : ℚ)
  oldHi := (40700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_985]
}

def cell_3989 : Cell := { cellDefaults with
  domain := ⟨(11915625000000001 / 100000000000000000 : ℚ), (11918750000000001 / 100000000000000000 : ℚ)⟩
  r := (2648023065289 / 2500000000000 : ℚ)
  w := (49037339489877 / 50000000000000 : ℚ)
  center := (11917187500000001 / 100000000000000000 : ℚ)
  supportValue := (8138406103273329 / 20000000000000000 : ℚ)
  supportSlope := (13912992753079 / 3125000000000 : ℚ)
  oldCenter := (8138406103273329 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_358
  oldLo := (40650000000000003 / 100000000000000000 : ℚ)
  oldHi := (40700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_985]
}

def cell_3990 : Cell := { cellDefaults with
  domain := ⟨(11918750000000001 / 100000000000000000 : ℚ), (11921875000000001 / 100000000000000000 : ℚ)⟩
  r := (2648023065289 / 2500000000000 : ℚ)
  w := (49037339489877 / 50000000000000 : ℚ)
  center := (11920312500000001 / 100000000000000000 : ℚ)
  supportValue := (2035297116224769 / 5000000000000000 : ℚ)
  supportSlope := (2225599085252661 / 500000000000000 : ℚ)
  oldCenter := (2035297116224769 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_358
  oldLo := (40650000000000003 / 100000000000000000 : ℚ)
  oldHi := (40750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_985, piece_986]
}

def cell_3991 : Cell := { cellDefaults with
  domain := ⟨(11921875000000001 / 100000000000000000 : ℚ), (11925000000000001 / 100000000000000000 : ℚ)⟩
  r := (2648023065289 / 2500000000000 : ℚ)
  w := (49037339489877 / 50000000000000 : ℚ)
  center := (11923437500000001 / 100000000000000000 : ℚ)
  supportValue := (8143970833193681 / 20000000000000000 : ℚ)
  supportSlope := (4452580961807229 / 1000000000000000 : ℚ)
  oldCenter := (8143970833193681 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_358
  oldLo := (40700000000000003 / 100000000000000000 : ℚ)
  oldHi := (40750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_986]
}

def cell_3992 : Cell := { cellDefaults with
  domain := ⟨(11925000000000001 / 100000000000000000 : ℚ), (11928125000000001 / 100000000000000000 : ℚ)⟩
  r := (2648023065289 / 2500000000000 : ℚ)
  w := (49037339489877 / 50000000000000 : ℚ)
  center := (11926562500000001 / 100000000000000000 : ℚ)
  supportValue := (1018344273875847 / 2500000000000000 : ℚ)
  supportSlope := (4454165670997767 / 1000000000000000 : ℚ)
  oldCenter := (1018344273875847 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_358
  oldLo := (40700000000000003 / 100000000000000000 : ℚ)
  oldHi := (40750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_986]
}

def cell_3993 : Cell := { cellDefaults with
  domain := ⟨(11928125000000001 / 100000000000000000 : ℚ), (11931250000000001 / 100000000000000000 : ℚ)⟩
  r := (2648023065289 / 2500000000000 : ℚ)
  w := (49037339489877 / 50000000000000 : ℚ)
  center := (11929687500000001 / 100000000000000000 : ℚ)
  supportValue := (509346056892567 / 1250000000000000 : ℚ)
  supportSlope := (1781935366300047 / 400000000000000 : ℚ)
  oldCenter := (509346056892567 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_358
  oldLo := (40700000000000003 / 100000000000000000 : ℚ)
  oldHi := (40800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_986, piece_987]
}

def cell_3994 : Cell := { cellDefaults with
  domain := ⟨(11931250000000001 / 100000000000000000 : ℚ), (11934375000000001 / 100000000000000000 : ℚ)⟩
  r := (2648023065289 / 2500000000000 : ℚ)
  w := (49037339489877 / 50000000000000 : ℚ)
  center := (11932812500000001 / 100000000000000000 : ℚ)
  supportValue := (4076161227076811 / 10000000000000000 : ℚ)
  supportSlope := (4454598811905797 / 1000000000000000 : ℚ)
  oldCenter := (4076161227076811 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_358
  oldLo := (40750000000000003 / 100000000000000000 : ℚ)
  oldHi := (40800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_987]
}

def cell_3995 : Cell := { cellDefaults with
  domain := ⟨(11934375000000001 / 100000000000000000 : ℚ), (11937500000000001 / 100000000000000000 : ℚ)⟩
  r := (2648023065289 / 2500000000000 : ℚ)
  w := (49037339489877 / 50000000000000 : ℚ)
  center := (11935937500000001 / 100000000000000000 : ℚ)
  supportValue := (8155107070874299 / 20000000000000000 : ℚ)
  supportSlope := (4456176318482719 / 1000000000000000 : ℚ)
  oldCenter := (8155107070874299 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_358
  oldLo := (40750000000000003 / 100000000000000000 : ℚ)
  oldHi := (40800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_987]
}

def cell_3996 : Cell := { cellDefaults with
  domain := ⟨(11937500000000001 / 100000000000000000 : ℚ), (11940625000000001 / 100000000000000000 : ℚ)⟩
  r := (2648023065289 / 2500000000000 : ℚ)
  w := (49037339489877 / 50000000000000 : ℚ)
  center := (11939062500000001 / 100000000000000000 : ℚ)
  supportValue := (40789463372267803 / 100000000000000000 : ℚ)
  supportSlope := (8915513523437113 / 2000000000000000 : ℚ)
  oldCenter := (40789463372267803 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_358
  oldLo := (40750000000000003 / 100000000000000000 : ℚ)
  oldHi := (40800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_987]
}

def cell_3997 : Cell := { cellDefaults with
  domain := ⟨(11940625000000001 / 100000000000000000 : ℚ), (11943750000000001 / 100000000000000000 : ℚ)⟩
  r := (2648023065289 / 2500000000000 : ℚ)
  w := (49037339489877 / 50000000000000 : ℚ)
  center := (11942187500000001 / 100000000000000000 : ℚ)
  supportValue := (4080338609855123 / 10000000000000000 : ℚ)
  supportSlope := (4457313444850897 / 1000000000000000 : ℚ)
  oldCenter := (4080338609855123 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_358
  oldLo := (40750000000000003 / 100000000000000000 : ℚ)
  oldHi := (4082122905027933 / 10000000000000000 : ℚ)
  oldPieces := [piece_987, piece_988]
}

def cell_3998 : Cell := { cellDefaults with
  domain := ⟨(11943750000000001 / 100000000000000000 : ℚ), (11946875000000001 / 100000000000000000 : ℚ)⟩
  r := (2648023065289 / 2500000000000 : ℚ)
  w := (49037339489877 / 50000000000000 : ℚ)
  center := (11945312500000001 / 100000000000000000 : ℚ)
  supportValue := (4081732364369103 / 10000000000000000 : ℚ)
  supportSlope := (4458189856366701 / 1000000000000000 : ℚ)
  oldCenter := (4081732364369103 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_358
  oldLo := (40800000000000003 / 100000000000000000 : ℚ)
  oldHi := (40850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_988, piece_989]
}

def cell_3999 : Cell := { cellDefaults with
  domain := ⟨(11946875000000001 / 100000000000000000 : ℚ), (11950000000000001 / 100000000000000000 : ℚ)⟩
  r := (2648023065289 / 2500000000000 : ℚ)
  w := (49037339489877 / 50000000000000 : ℚ)
  center := (11948437500000001 / 100000000000000000 : ℚ)
  supportValue := (40831257946277477 / 100000000000000000 : ℚ)
  supportSlope := (34841915523387 / 7812500000000 : ℚ)
  oldCenter := (40831257946277477 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_358
  oldLo := (4082122905027933 / 10000000000000000 : ℚ)
  oldHi := (40850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_989]
}

theorem check_3950 : SourceCertificateFamily.RightNormalized.check cell_3950 = true := by
  decide +kernel

theorem check_3951 : SourceCertificateFamily.RightNormalized.check cell_3951 = true := by
  decide +kernel

theorem check_3952 : SourceCertificateFamily.RightNormalized.check cell_3952 = true := by
  decide +kernel

theorem check_3953 : SourceCertificateFamily.RightNormalized.check cell_3953 = true := by
  decide +kernel

theorem check_3954 : SourceCertificateFamily.RightNormalized.check cell_3954 = true := by
  decide +kernel

theorem check_3955 : SourceCertificateFamily.RightNormalized.check cell_3955 = true := by
  decide +kernel

theorem check_3956 : SourceCertificateFamily.RightNormalized.check cell_3956 = true := by
  decide +kernel

theorem check_3957 : SourceCertificateFamily.RightNormalized.check cell_3957 = true := by
  decide +kernel

theorem check_3958 : SourceCertificateFamily.RightNormalized.check cell_3958 = true := by
  decide +kernel

theorem check_3959 : SourceCertificateFamily.RightNormalized.check cell_3959 = true := by
  decide +kernel

theorem check_3960 : SourceCertificateFamily.RightNormalized.check cell_3960 = true := by
  decide +kernel

theorem check_3961 : SourceCertificateFamily.RightNormalized.check cell_3961 = true := by
  decide +kernel

theorem check_3962 : SourceCertificateFamily.RightNormalized.check cell_3962 = true := by
  decide +kernel

theorem check_3963 : SourceCertificateFamily.RightNormalized.check cell_3963 = true := by
  decide +kernel

theorem check_3964 : SourceCertificateFamily.RightNormalized.check cell_3964 = true := by
  decide +kernel

theorem check_3965 : SourceCertificateFamily.RightNormalized.check cell_3965 = true := by
  decide +kernel

theorem check_3966 : SourceCertificateFamily.RightNormalized.check cell_3966 = true := by
  decide +kernel

theorem check_3967 : SourceCertificateFamily.RightNormalized.check cell_3967 = true := by
  decide +kernel

theorem check_3968 : SourceCertificateFamily.RightNormalized.check cell_3968 = true := by
  decide +kernel

theorem check_3969 : SourceCertificateFamily.RightNormalized.check cell_3969 = true := by
  decide +kernel

theorem check_3970 : SourceCertificateFamily.RightNormalized.check cell_3970 = true := by
  decide +kernel

theorem check_3971 : SourceCertificateFamily.RightNormalized.check cell_3971 = true := by
  decide +kernel

theorem check_3972 : SourceCertificateFamily.RightNormalized.check cell_3972 = true := by
  decide +kernel

theorem check_3973 : SourceCertificateFamily.RightNormalized.check cell_3973 = true := by
  decide +kernel

theorem check_3974 : SourceCertificateFamily.RightNormalized.check cell_3974 = true := by
  decide +kernel

theorem check_3975 : SourceCertificateFamily.RightNormalized.check cell_3975 = true := by
  decide +kernel

theorem check_3976 : SourceCertificateFamily.RightNormalized.check cell_3976 = true := by
  decide +kernel

theorem check_3977 : SourceCertificateFamily.RightNormalized.check cell_3977 = true := by
  decide +kernel

theorem check_3978 : SourceCertificateFamily.RightNormalized.check cell_3978 = true := by
  decide +kernel

theorem check_3979 : SourceCertificateFamily.RightNormalized.check cell_3979 = true := by
  decide +kernel

theorem check_3980 : SourceCertificateFamily.RightNormalized.check cell_3980 = true := by
  decide +kernel

theorem check_3981 : SourceCertificateFamily.RightNormalized.check cell_3981 = true := by
  decide +kernel

theorem check_3982 : SourceCertificateFamily.RightNormalized.check cell_3982 = true := by
  decide +kernel

theorem check_3983 : SourceCertificateFamily.RightNormalized.check cell_3983 = true := by
  decide +kernel

theorem check_3984 : SourceCertificateFamily.RightNormalized.check cell_3984 = true := by
  decide +kernel

theorem check_3985 : SourceCertificateFamily.RightNormalized.check cell_3985 = true := by
  decide +kernel

theorem check_3986 : SourceCertificateFamily.RightNormalized.check cell_3986 = true := by
  decide +kernel

theorem check_3987 : SourceCertificateFamily.RightNormalized.check cell_3987 = true := by
  decide +kernel

theorem check_3988 : SourceCertificateFamily.RightNormalized.check cell_3988 = true := by
  decide +kernel

theorem check_3989 : SourceCertificateFamily.RightNormalized.check cell_3989 = true := by
  decide +kernel

theorem check_3990 : SourceCertificateFamily.RightNormalized.check cell_3990 = true := by
  decide +kernel

theorem check_3991 : SourceCertificateFamily.RightNormalized.check cell_3991 = true := by
  decide +kernel

theorem check_3992 : SourceCertificateFamily.RightNormalized.check cell_3992 = true := by
  decide +kernel

theorem check_3993 : SourceCertificateFamily.RightNormalized.check cell_3993 = true := by
  decide +kernel

theorem check_3994 : SourceCertificateFamily.RightNormalized.check cell_3994 = true := by
  decide +kernel

theorem check_3995 : SourceCertificateFamily.RightNormalized.check cell_3995 = true := by
  decide +kernel

theorem check_3996 : SourceCertificateFamily.RightNormalized.check cell_3996 = true := by
  decide +kernel

theorem check_3997 : SourceCertificateFamily.RightNormalized.check cell_3997 = true := by
  decide +kernel

theorem check_3998 : SourceCertificateFamily.RightNormalized.check cell_3998 = true := by
  decide +kernel

theorem check_3999 : SourceCertificateFamily.RightNormalized.check cell_3999 = true := by
  decide +kernel

def cells : List Cell := [cell_3950, cell_3951, cell_3952, cell_3953, cell_3954, cell_3955, cell_3956, cell_3957, cell_3958, cell_3959, cell_3960, cell_3961, cell_3962, cell_3963, cell_3964, cell_3965, cell_3966, cell_3967, cell_3968, cell_3969, cell_3970, cell_3971, cell_3972, cell_3973, cell_3974, cell_3975, cell_3976, cell_3977, cell_3978, cell_3979, cell_3980, cell_3981, cell_3982, cell_3983, cell_3984, cell_3985, cell_3986, cell_3987, cell_3988, cell_3989, cell_3990, cell_3991, cell_3992, cell_3993, cell_3994, cell_3995, cell_3996, cell_3997, cell_3998, cell_3999]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_3950, SourceCertificateFamily.of_right_checked check_3951, SourceCertificateFamily.of_right_checked check_3952, SourceCertificateFamily.of_right_checked check_3953, SourceCertificateFamily.of_right_checked check_3954, SourceCertificateFamily.of_right_checked check_3955, SourceCertificateFamily.of_right_checked check_3956, SourceCertificateFamily.of_right_checked check_3957, SourceCertificateFamily.of_right_checked check_3958, SourceCertificateFamily.of_right_checked check_3959, SourceCertificateFamily.of_right_checked check_3960, SourceCertificateFamily.of_right_checked check_3961, SourceCertificateFamily.of_right_checked check_3962, SourceCertificateFamily.of_right_checked check_3963, SourceCertificateFamily.of_right_checked check_3964, SourceCertificateFamily.of_right_checked check_3965, SourceCertificateFamily.of_right_checked check_3966, SourceCertificateFamily.of_right_checked check_3967, SourceCertificateFamily.of_right_checked check_3968, SourceCertificateFamily.of_right_checked check_3969, SourceCertificateFamily.of_right_checked check_3970, SourceCertificateFamily.of_right_checked check_3971, SourceCertificateFamily.of_right_checked check_3972, SourceCertificateFamily.of_right_checked check_3973, SourceCertificateFamily.of_right_checked check_3974, SourceCertificateFamily.of_right_checked check_3975, SourceCertificateFamily.of_right_checked check_3976, SourceCertificateFamily.of_right_checked check_3977, SourceCertificateFamily.of_right_checked check_3978, SourceCertificateFamily.of_right_checked check_3979, SourceCertificateFamily.of_right_checked check_3980, SourceCertificateFamily.of_right_checked check_3981, SourceCertificateFamily.of_right_checked check_3982, SourceCertificateFamily.of_right_checked check_3983, SourceCertificateFamily.of_right_checked check_3984, SourceCertificateFamily.of_right_checked check_3985, SourceCertificateFamily.of_right_checked check_3986, SourceCertificateFamily.of_right_checked check_3987, SourceCertificateFamily.of_right_checked check_3988, SourceCertificateFamily.of_right_checked check_3989, SourceCertificateFamily.of_right_checked check_3990, SourceCertificateFamily.of_right_checked check_3991, SourceCertificateFamily.of_right_checked check_3992, SourceCertificateFamily.of_right_checked check_3993, SourceCertificateFamily.of_right_checked check_3994, SourceCertificateFamily.of_right_checked check_3995, SourceCertificateFamily.of_right_checked check_3996, SourceCertificateFamily.of_right_checked check_3997, SourceCertificateFamily.of_right_checked check_3998, SourceCertificateFamily.of_right_checked check_3999, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0079

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0079
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0079
open AnalyticBounds.ExpressionCertificate

theorem linked_3950 : Linked cell_3950 pieces := by
  apply Linked.of_piece piece_355 piece_355_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3950, List.cons_subset, List.nil_subset, and_true]
  exact piece_975_mem

theorem linked_3951 : Linked cell_3951 pieces := by
  apply Linked.of_piece piece_355 piece_355_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3951, List.cons_subset, List.nil_subset, and_true]
  exact piece_975_mem

theorem linked_3952 : Linked cell_3952 pieces := by
  apply Linked.of_piece piece_356 piece_356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3952, List.cons_subset, List.nil_subset, and_true]
  exact piece_975_mem

theorem linked_3953 : Linked cell_3953 pieces := by
  apply Linked.of_piece piece_356 piece_356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3953, List.cons_subset, List.nil_subset, and_true]
  exact piece_975_mem

theorem linked_3954 : Linked cell_3954 pieces := by
  apply Linked.of_piece piece_356 piece_356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3954, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_975_mem, piece_976_mem⟩

theorem linked_3955 : Linked cell_3955 pieces := by
  apply Linked.of_piece piece_356 piece_356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3955, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_976_mem, piece_977_mem⟩

theorem linked_3956 : Linked cell_3956 pieces := by
  apply Linked.of_piece piece_356 piece_356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3956, List.cons_subset, List.nil_subset, and_true]
  exact piece_977_mem

theorem linked_3957 : Linked cell_3957 pieces := by
  apply Linked.of_piece piece_356 piece_356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3957, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_977_mem, piece_978_mem⟩

theorem linked_3958 : Linked cell_3958 pieces := by
  apply Linked.of_piece piece_356 piece_356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3958, List.cons_subset, List.nil_subset, and_true]
  exact piece_978_mem

theorem linked_3959 : Linked cell_3959 pieces := by
  apply Linked.of_piece piece_356 piece_356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3959, List.cons_subset, List.nil_subset, and_true]
  exact piece_978_mem

theorem linked_3960 : Linked cell_3960 pieces := by
  apply Linked.of_piece piece_356 piece_356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3960, List.cons_subset, List.nil_subset, and_true]
  exact piece_978_mem

theorem linked_3961 : Linked cell_3961 pieces := by
  apply Linked.of_piece piece_356 piece_356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3961, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_978_mem, piece_979_mem⟩

theorem linked_3962 : Linked cell_3962 pieces := by
  apply Linked.of_piece piece_356 piece_356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3962, List.cons_subset, List.nil_subset, and_true]
  exact piece_979_mem

theorem linked_3963 : Linked cell_3963 pieces := by
  apply Linked.of_piece piece_356 piece_356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3963, List.cons_subset, List.nil_subset, and_true]
  exact piece_979_mem

theorem linked_3964 : Linked cell_3964 pieces := by
  apply Linked.of_piece piece_356 piece_356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3964, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_979_mem, piece_980_mem⟩

theorem linked_3965 : Linked cell_3965 pieces := by
  apply Linked.of_piece piece_356 piece_356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3965, List.cons_subset, List.nil_subset, and_true]
  exact piece_980_mem

theorem linked_3966 : Linked cell_3966 pieces := by
  apply Linked.of_piece piece_356 piece_356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3966, List.cons_subset, List.nil_subset, and_true]
  exact piece_980_mem

theorem linked_3967 : Linked cell_3967 pieces := by
  apply Linked.of_piece piece_356 piece_356_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3967, List.cons_subset, List.nil_subset, and_true]
  exact piece_980_mem

theorem linked_3968 : Linked cell_3968 pieces := by
  apply Linked.of_piece piece_357 piece_357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3968, List.cons_subset, List.nil_subset, and_true]
  exact piece_980_mem

theorem linked_3969 : Linked cell_3969 pieces := by
  apply Linked.of_piece piece_357 piece_357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3969, List.cons_subset, List.nil_subset, and_true]
  exact piece_980_mem

theorem linked_3970 : Linked cell_3970 pieces := by
  apply Linked.of_piece piece_357 piece_357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3970, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_980_mem, piece_981_mem⟩

theorem linked_3971 : Linked cell_3971 pieces := by
  apply Linked.of_piece piece_357 piece_357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3971, List.cons_subset, List.nil_subset, and_true]
  exact piece_981_mem

theorem linked_3972 : Linked cell_3972 pieces := by
  apply Linked.of_piece piece_357 piece_357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3972, List.cons_subset, List.nil_subset, and_true]
  exact piece_981_mem

theorem linked_3973 : Linked cell_3973 pieces := by
  apply Linked.of_piece piece_357 piece_357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3973, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_981_mem, piece_982_mem⟩

theorem linked_3974 : Linked cell_3974 pieces := by
  apply Linked.of_piece piece_357 piece_357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3974, List.cons_subset, List.nil_subset, and_true]
  exact piece_982_mem

theorem linked_3975 : Linked cell_3975 pieces := by
  apply Linked.of_piece piece_357 piece_357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3975, List.cons_subset, List.nil_subset, and_true]
  exact piece_982_mem

theorem linked_3976 : Linked cell_3976 pieces := by
  apply Linked.of_piece piece_357 piece_357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3976, List.cons_subset, List.nil_subset, and_true]
  exact piece_982_mem

theorem linked_3977 : Linked cell_3977 pieces := by
  apply Linked.of_piece piece_357 piece_357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3977, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_982_mem, piece_983_mem⟩

theorem linked_3978 : Linked cell_3978 pieces := by
  apply Linked.of_piece piece_357 piece_357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3978, List.cons_subset, List.nil_subset, and_true]
  exact piece_983_mem

theorem linked_3979 : Linked cell_3979 pieces := by
  apply Linked.of_piece piece_357 piece_357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3979, List.cons_subset, List.nil_subset, and_true]
  exact piece_983_mem

theorem linked_3980 : Linked cell_3980 pieces := by
  apply Linked.of_piece piece_357 piece_357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3980, List.cons_subset, List.nil_subset, and_true]
  exact piece_983_mem

theorem linked_3981 : Linked cell_3981 pieces := by
  apply Linked.of_piece piece_357 piece_357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3981, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_983_mem, piece_984_mem⟩

theorem linked_3982 : Linked cell_3982 pieces := by
  apply Linked.of_piece piece_357 piece_357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3982, List.cons_subset, List.nil_subset, and_true]
  exact piece_984_mem

theorem linked_3983 : Linked cell_3983 pieces := by
  apply Linked.of_piece piece_357 piece_357_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3983, List.cons_subset, List.nil_subset, and_true]
  exact piece_984_mem

theorem linked_3984 : Linked cell_3984 pieces := by
  apply Linked.of_piece piece_358 piece_358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3984, List.cons_subset, List.nil_subset, and_true]
  exact piece_984_mem

theorem linked_3985 : Linked cell_3985 pieces := by
  apply Linked.of_piece piece_358 piece_358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3985, List.cons_subset, List.nil_subset, and_true]
  exact piece_984_mem

theorem linked_3986 : Linked cell_3986 pieces := by
  apply Linked.of_piece piece_358 piece_358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3986, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_984_mem, piece_985_mem⟩

theorem linked_3987 : Linked cell_3987 pieces := by
  apply Linked.of_piece piece_358 piece_358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3987, List.cons_subset, List.nil_subset, and_true]
  exact piece_985_mem

theorem linked_3988 : Linked cell_3988 pieces := by
  apply Linked.of_piece piece_358 piece_358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3988, List.cons_subset, List.nil_subset, and_true]
  exact piece_985_mem

theorem linked_3989 : Linked cell_3989 pieces := by
  apply Linked.of_piece piece_358 piece_358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3989, List.cons_subset, List.nil_subset, and_true]
  exact piece_985_mem

theorem linked_3990 : Linked cell_3990 pieces := by
  apply Linked.of_piece piece_358 piece_358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3990, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_985_mem, piece_986_mem⟩

theorem linked_3991 : Linked cell_3991 pieces := by
  apply Linked.of_piece piece_358 piece_358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3991, List.cons_subset, List.nil_subset, and_true]
  exact piece_986_mem

theorem linked_3992 : Linked cell_3992 pieces := by
  apply Linked.of_piece piece_358 piece_358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3992, List.cons_subset, List.nil_subset, and_true]
  exact piece_986_mem

theorem linked_3993 : Linked cell_3993 pieces := by
  apply Linked.of_piece piece_358 piece_358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3993, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_986_mem, piece_987_mem⟩

theorem linked_3994 : Linked cell_3994 pieces := by
  apply Linked.of_piece piece_358 piece_358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3994, List.cons_subset, List.nil_subset, and_true]
  exact piece_987_mem

theorem linked_3995 : Linked cell_3995 pieces := by
  apply Linked.of_piece piece_358 piece_358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3995, List.cons_subset, List.nil_subset, and_true]
  exact piece_987_mem

theorem linked_3996 : Linked cell_3996 pieces := by
  apply Linked.of_piece piece_358 piece_358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3996, List.cons_subset, List.nil_subset, and_true]
  exact piece_987_mem

theorem linked_3997 : Linked cell_3997 pieces := by
  apply Linked.of_piece piece_358 piece_358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3997, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_987_mem, piece_988_mem⟩

theorem linked_3998 : Linked cell_3998 pieces := by
  apply Linked.of_piece piece_358 piece_358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3998, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_988_mem, piece_989_mem⟩

theorem linked_3999 : Linked cell_3999 pieces := by
  apply Linked.of_piece piece_358 piece_358_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3999, List.cons_subset, List.nil_subset, and_true]
  exact piece_989_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0079.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0079.cells,List.forall_mem_cons]
  exact ⟨linked_3950, linked_3951, linked_3952, linked_3953, linked_3954, linked_3955, linked_3956, linked_3957, linked_3958, linked_3959, linked_3960, linked_3961, linked_3962, linked_3963, linked_3964, linked_3965, linked_3966, linked_3967, linked_3968, linked_3969, linked_3970, linked_3971, linked_3972, linked_3973, linked_3974, linked_3975, linked_3976, linked_3977, linked_3978, linked_3979, linked_3980, linked_3981, linked_3982, linked_3983, linked_3984, linked_3985, linked_3986, linked_3987, linked_3988, linked_3989, linked_3990, linked_3991, linked_3992, linked_3993, linked_3994, linked_3995, linked_3996, linked_3997, linked_3998, linked_3999, by simp⟩

theorem covered : covers (11793750000000001 / 100000000000000000 : ℚ) (11950000000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0079.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0079
