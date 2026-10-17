import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0092
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(13821875000000001 / 100000000000000000 : ℚ), (13825000000000001 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (2024566123197 / 2000000000000 : ℚ)
  w := (12399353875243 / 12500000000000 : ℚ)
  center := (13823437500000001 / 100000000000000000 : ℚ)
  supportValue := (48334687736603743 / 100000000000000000 : ℚ)
  supportSlope := (9580777626787551 / 2000000000000000 : ℚ)
  oldCenter := (48334687736603743 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_401
  oldLo := (12100000000000001 / 25000000000000000 : ℚ)
  oldHi := (12112500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1154]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_4600 : Cell := { cellDefaults with
  r := (10134262037081 / 10000000000000 : ℚ)
  w := (19834676453339 / 20000000000000 : ℚ)
  newCoefficients := coefficients_400
  oldLo := (12075000000000001 / 25000000000000000 : ℚ)
  oldHi := (12087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1152]
}

def cell_4601 : Cell := { cellDefaults with
  domain := ⟨(13825000000000001 / 100000000000000000 : ℚ), (13828125000000001 / 100000000000000000 : ℚ)⟩
  r := (10134262037081 / 10000000000000 : ℚ)
  w := (19834676453339 / 20000000000000 : ℚ)
  center := (13826562500000001 / 100000000000000000 : ℚ)
  supportValue := (12087414859641811 / 25000000000000000 : ℚ)
  supportSlope := (2395446078489627 / 500000000000000 : ℚ)
  oldCenter := (12087414859641811 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_400
  oldLo := (12075000000000001 / 25000000000000000 : ℚ)
  oldHi := (12100000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1152, piece_1153]
}

def cell_4602 : Cell := { cellDefaults with
  domain := ⟨(13828125000000001 / 100000000000000000 : ℚ), (13831250000000001 / 100000000000000000 : ℚ)⟩
  r := (10134262037081 / 10000000000000 : ℚ)
  w := (19834676453339 / 20000000000000 : ℚ)
  center := (13829687500000001 / 100000000000000000 : ℚ)
  supportValue := (9672926143265167 / 20000000000000000 : ℚ)
  supportSlope := (4791334806995451 / 1000000000000000 : ℚ)
  oldCenter := (9672926143265167 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_400
  oldLo := (12087500000000001 / 25000000000000000 : ℚ)
  oldHi := (12100000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1153]
}

def cell_4603 : Cell := { cellDefaults with
  domain := ⟨(13831250000000001 / 100000000000000000 : ℚ), (13834375000000001 / 100000000000000000 : ℚ)⟩
  r := (10134262037081 / 10000000000000 : ℚ)
  w := (19834676453339 / 20000000000000 : ℚ)
  center := (13832812500000001 / 100000000000000000 : ℚ)
  supportValue := (604745067102989 / 1250000000000000 : ℚ)
  supportSlope := (4792443634416443 / 1000000000000000 : ℚ)
  oldCenter := (604745067102989 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_400
  oldLo := (12087500000000001 / 25000000000000000 : ℚ)
  oldHi := (12100000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1153]
}

def cell_4604 : Cell := { cellDefaults with
  domain := ⟨(13834375000000001 / 100000000000000000 : ℚ), (13837500000000001 / 100000000000000000 : ℚ)⟩
  r := (10134262037081 / 10000000000000 : ℚ)
  w := (19834676453339 / 20000000000000 : ℚ)
  center := (13835937500000001 / 100000000000000000 : ℚ)
  supportValue := (48394583486854187 / 100000000000000000 : ℚ)
  supportSlope := (59917217232619 / 12500000000000 : ℚ)
  oldCenter := (48394583486854187 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_400
  oldLo := (12087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1153, piece_1154]
}

def cell_4605 : Cell := { cellDefaults with
  domain := ⟨(13837500000000001 / 100000000000000000 : ℚ), (13840625000000001 / 100000000000000000 : ℚ)⟩
  r := (10134262037081 / 10000000000000 : ℚ)
  w := (19834676453339 / 20000000000000 : ℚ)
  center := (13839062500000001 / 100000000000000000 : ℚ)
  supportValue := (4840956253877621 / 10000000000000000 : ℚ)
  supportSlope := (4793391696537697 / 1000000000000000 : ℚ)
  oldCenter := (4840956253877621 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_400
  oldPieces := [piece_1154]
}

def cell_4606 : Cell := { cellDefaults with
  domain := ⟨(13840625000000001 / 100000000000000000 : ℚ), (13843750000000001 / 100000000000000000 : ℚ)⟩
  r := (10134262037081 / 10000000000000 : ℚ)
  w := (19834676453339 / 20000000000000 : ℚ)
  center := (13842187500000001 / 100000000000000000 : ℚ)
  supportValue := (2421227180700049 / 5000000000000000 : ℚ)
  supportSlope := (4794497662537367 / 1000000000000000 : ℚ)
  oldCenter := (2421227180700049 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_400
  oldPieces := [piece_1154]
}

def cell_4607 : Cell := { cellDefaults with
  domain := ⟨(13843750000000001 / 100000000000000000 : ℚ), (13846875000000001 / 100000000000000000 : ℚ)⟩
  r := (10134262037081 / 10000000000000 : ℚ)
  w := (19834676453339 / 20000000000000 : ℚ)
  center := (13845312500000001 / 100000000000000000 : ℚ)
  supportValue := (48439528146972527 / 100000000000000000 : ℚ)
  supportSlope := (4795604655106089 / 1000000000000000 : ℚ)
  oldCenter := (48439528146972527 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_400
  oldPieces := [piece_1154]
}

def cell_4608 : Cell := { cellDefaults with
  domain := ⟨(13846875000000001 / 100000000000000000 : ℚ), (13850000000000001 / 100000000000000000 : ℚ)⟩
  r := (10134262037081 / 10000000000000 : ℚ)
  w := (19834676453339 / 20000000000000 : ℚ)
  center := (13848437500000001 / 100000000000000000 : ℚ)
  supportValue := (1938180597974261 / 4000000000000000 : ℚ)
  supportSlope := (4795698135994897 / 1000000000000000 : ℚ)
  oldCenter := (1938180597974261 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_400
  oldHi := (12125000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1154, piece_1155]
}

def cell_4609 : Cell := { cellDefaults with
  domain := ⟨(13850000000000001 / 100000000000000000 : ℚ), (13853125000000001 / 100000000000000000 : ℚ)⟩
  center := (13851562500000001 / 100000000000000000 : ℚ)
  supportValue := (9686706957536847 / 20000000000000000 : ℚ)
  supportSlope := (1198242742560307 / 250000000000000 : ℚ)
  oldCenter := (9686706957536847 / 20000000000000000 : ℚ)
  oldPieces := [piece_1154]
}

def cell_4610 : Cell := { cellDefaults with
  domain := ⟨(13853125000000001 / 100000000000000000 : ℚ), (13856250000000001 / 100000000000000000 : ℚ)⟩
  center := (13854687500000001 / 100000000000000000 : ℚ)
  supportValue := (605606431921999 / 1250000000000000 : ℚ)
  supportSlope := (2396786750196611 / 500000000000000 : ℚ)
  oldCenter := (605606431921999 / 1250000000000000 : ℚ)
  oldHi := (12125000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1154, piece_1155]
}

def cell_4611 : Cell := { cellDefaults with
  domain := ⟨(13856250000000001 / 100000000000000000 : ℚ), (13859375000000001 / 100000000000000000 : ℚ)⟩
  center := (13857812500000001 / 100000000000000000 : ℚ)
  supportValue := (969269884509369 / 2000000000000000 : ℚ)
  supportSlope := (4793923197338401 / 1000000000000000 : ℚ)
  oldCenter := (969269884509369 / 2000000000000000 : ℚ)
  oldLo := (12112500000000001 / 25000000000000000 : ℚ)
  oldHi := (12125000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1155]
}

def cell_4612 : Cell := { cellDefaults with
  domain := ⟨(13859375000000001 / 100000000000000000 : ℚ), (13862500000000001 / 100000000000000000 : ℚ)⟩
  center := (13860937500000001 / 100000000000000000 : ℚ)
  supportValue := (1211961924035787 / 2500000000000000 : ℚ)
  supportSlope := (1198757258403571 / 250000000000000 : ℚ)
  oldCenter := (1211961924035787 / 2500000000000000 : ℚ)
  oldLo := (12112500000000001 / 25000000000000000 : ℚ)
  oldHi := (12125000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1155]
}

def cell_4613 : Cell := { cellDefaults with
  domain := ⟨(13862500000000001 / 100000000000000000 : ℚ), (13865625000000001 / 100000000000000000 : ℚ)⟩
  center := (13864062500000001 / 100000000000000000 : ℚ)
  supportValue := (48493463154731503 / 100000000000000000 : ℚ)
  supportSlope := (4796055158276857 / 1000000000000000 : ℚ)
  oldCenter := (48493463154731503 / 100000000000000000 : ℚ)
  oldLo := (12112500000000001 / 25000000000000000 : ℚ)
  oldHi := (12137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1155, piece_1156]
}

def cell_4614 : Cell := { cellDefaults with
  domain := ⟨(13865625000000001 / 100000000000000000 : ℚ), (13868750000000001 / 100000000000000000 : ℚ)⟩
  center := (13867187500000001 / 100000000000000000 : ℚ)
  supportValue := (4850845058892821 / 10000000000000000 : ℚ)
  supportSlope := (9591966463926127 / 2000000000000000 : ℚ)
  oldCenter := (4850845058892821 / 10000000000000000 : ℚ)
  oldLo := (12125000000000001 / 25000000000000000 : ℚ)
  oldHi := (12137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1156]
}

def cell_4615 : Cell := { cellDefaults with
  domain := ⟨(13868750000000001 / 100000000000000000 : ℚ), (13871875000000001 / 100000000000000000 : ℚ)⟩
  center := (13870312500000001 / 100000000000000000 : ℚ)
  supportValue := (2426171987912793 / 5000000000000000 : ℚ)
  supportSlope := (191883454030517 / 40000000000000 : ℚ)
  oldCenter := (2426171987912793 / 5000000000000000 : ℚ)
  oldLo := (12125000000000001 / 25000000000000000 : ℚ)
  oldHi := (12137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1156]
}

def cell_4616 : Cell := { cellDefaults with
  domain := ⟨(13871875000000001 / 100000000000000000 : ℚ), (13875000000000001 / 100000000000000000 : ℚ)⟩
  center := (13873437500000001 / 100000000000000000 : ℚ)
  supportValue := (485384323764159 / 1000000000000000 : ℚ)
  supportSlope := (479819048536001 / 100000000000000 : ℚ)
  oldCenter := (485384323764159 / 1000000000000000 : ℚ)
  oldLo := (12125000000000001 / 25000000000000000 : ℚ)
  oldHi := (12137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1156]
}

def cell_4617 : Cell := { cellDefaults with
  domain := ⟨(13875000000000001 / 100000000000000000 : ℚ), (13878125000000001 / 100000000000000000 : ℚ)⟩
  center := (13876562500000001 / 100000000000000000 : ℚ)
  supportValue := (9710685510116539 / 20000000000000000 : ℚ)
  supportSlope := (299898852023861 / 62500000000000 : ℚ)
  oldCenter := (9710685510116539 / 20000000000000000 : ℚ)
  oldLo := (12125000000000001 / 25000000000000000 : ℚ)
  oldHi := (2428212290502793 / 5000000000000000 : ℚ)
  oldPieces := [piece_1156, piece_1157]
}

def cell_4618 : Cell := { cellDefaults with
  domain := ⟨(13878125000000001 / 100000000000000000 : ℚ), (13881250000000001 / 100000000000000000 : ℚ)⟩
  center := (13879687500000001 / 100000000000000000 : ℚ)
  supportValue := (2428421157528879 / 5000000000000000 : ℚ)
  supportSlope := (95982852262253 / 20000000000000 : ℚ)
  oldCenter := (2428421157528879 / 5000000000000000 : ℚ)
  oldLo := (12137500000000001 / 25000000000000000 : ℚ)
  oldHi := (12150000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1157, piece_1158]
}

def cell_4619 : Cell := { cellDefaults with
  domain := ⟨(13881250000000001 / 100000000000000000 : ℚ), (13884375000000001 / 100000000000000000 : ℚ)⟩
  center := (13882812500000001 / 100000000000000000 : ℚ)
  supportValue := (48583422190018927 / 100000000000000000 : ℚ)
  supportSlope := (9600487842579497 / 2000000000000000 : ℚ)
  oldCenter := (48583422190018927 / 100000000000000000 : ℚ)
  oldLo := (2428212290502793 / 5000000000000000 : ℚ)
  oldHi := (12150000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1158]
}

def cell_4620 : Cell := { cellDefaults with
  domain := ⟨(13884375000000001 / 100000000000000000 : ℚ), (13887500000000001 / 100000000000000000 : ℚ)⟩
  center := (13885937500000001 / 100000000000000000 : ℚ)
  supportValue := (24299212336437037 / 50000000000000000 : ℚ)
  supportSlope := (480085317884793 / 100000000000000 : ℚ)
  oldCenter := (24299212336437037 / 50000000000000000 : ℚ)
  oldLo := (2428212290502793 / 5000000000000000 : ℚ)
  oldHi := (12162500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1158, piece_1159]
}

def cell_4621 : Cell := { cellDefaults with
  domain := ⟨(13887500000000001 / 100000000000000000 : ℚ), (13890625000000001 / 100000000000000000 : ℚ)⟩
  center := (13889062500000001 / 100000000000000000 : ℚ)
  supportValue := (24306713554058837 / 50000000000000000 : ℚ)
  supportSlope := (4801198280622643 / 1000000000000000 : ℚ)
  oldCenter := (24306713554058837 / 50000000000000000 : ℚ)
  oldLo := (12150000000000001 / 25000000000000000 : ℚ)
  oldHi := (12162500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1159]
}

def cell_4622 : Cell := { cellDefaults with
  domain := ⟨(13890625000000001 / 100000000000000000 : ℚ), (13893750000000001 / 100000000000000000 : ℚ)⟩
  center := (13892187500000001 / 100000000000000000 : ℚ)
  supportValue := (4862843256744223 / 10000000000000000 : ℚ)
  supportSlope := (4802296897576497 / 1000000000000000 : ℚ)
  oldCenter := (4862843256744223 / 10000000000000000 : ℚ)
  oldLo := (12150000000000001 / 25000000000000000 : ℚ)
  oldHi := (12162500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1159]
}

def cell_4623 : Cell := { cellDefaults with
  domain := ⟨(13893750000000001 / 100000000000000000 : ℚ), (13896875000000001 / 100000000000000000 : ℚ)⟩
  center := (13895312500000001 / 100000000000000000 : ℚ)
  supportValue := (2432172073075419 / 5000000000000000 : ℚ)
  supportSlope := (4803317821457043 / 1000000000000000 : ℚ)
  oldCenter := (2432172073075419 / 5000000000000000 : ℚ)
  oldLo := (12150000000000001 / 25000000000000000 : ℚ)
  oldHi := (12175000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1159, piece_1160]
}

def cell_4624 : Cell := { cellDefaults with
  domain := ⟨(13896875000000001 / 100000000000000000 : ℚ), (13900000000000001 / 100000000000000000 : ℚ)⟩
  center := (13898437500000001 / 100000000000000000 : ℚ)
  supportValue := (973169032122657 / 2000000000000000 : ℚ)
  supportSlope := (4803253195301949 / 1000000000000000 : ℚ)
  oldCenter := (973169032122657 / 2000000000000000 : ℚ)
  oldLo := (12162500000000001 / 25000000000000000 : ℚ)
  oldHi := (12175000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1160]
}

def cell_4625 : Cell := { cellDefaults with
  domain := ⟨(13900000000000001 / 100000000000000000 : ℚ), (13903125000000001 / 100000000000000000 : ℚ)⟩
  r := (10111429945753 / 10000000000000 : ℚ)
  w := (99216061624407 / 100000000000000 : ℚ)
  center := (13901562500000001 / 100000000000000000 : ℚ)
  supportValue := (972745754939739 / 2000000000000000 : ℚ)
  supportSlope := (9601475321165509 / 2000000000000000 : ℚ)
  oldCenter := (972745754939739 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_402
  oldLo := (12150000000000001 / 25000000000000000 : ℚ)
  oldHi := (12162500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1159]
}

def cell_4626 : Cell := { cellDefaults with
  domain := ⟨(13903125000000001 / 100000000000000000 : ℚ), (13906250000000001 / 100000000000000000 : ℚ)⟩
  r := (10111429945753 / 10000000000000 : ℚ)
  w := (99216061624407 / 100000000000000 : ℚ)
  center := (13904687500000001 / 100000000000000000 : ℚ)
  supportValue := (24326145589555173 / 50000000000000000 : ℚ)
  supportSlope := (150032148762691 / 31250000000000 : ℚ)
  oldCenter := (24326145589555173 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_402
  oldLo := (12150000000000001 / 25000000000000000 : ℚ)
  oldHi := (12175000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1159, piece_1160]
}

def cell_4627 : Cell := { cellDefaults with
  domain := ⟨(13906250000000001 / 100000000000000000 : ℚ), (13909375000000001 / 100000000000000000 : ℚ)⟩
  r := (10111429945753 / 10000000000000 : ℚ)
  w := (99216061624407 / 100000000000000 : ℚ)
  center := (13907812500000001 / 100000000000000000 : ℚ)
  supportValue := (1946691790533841 / 4000000000000000 : ℚ)
  supportSlope := (9603392526521759 / 2000000000000000 : ℚ)
  oldCenter := (1946691790533841 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_402
  oldLo := (12162500000000001 / 25000000000000000 : ℚ)
  oldHi := (12175000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1160]
}

def cell_4628 : Cell := { cellDefaults with
  domain := ⟨(13909375000000001 / 100000000000000000 : ℚ), (13912500000000001 / 100000000000000000 : ℚ)⟩
  r := (10111429945753 / 10000000000000 : ℚ)
  w := (99216061624407 / 100000000000000 : ℚ)
  center := (13910937500000001 / 100000000000000000 : ℚ)
  supportValue := (24341150889266683 / 50000000000000000 : ℚ)
  supportSlope := (2401397333239963 / 500000000000000 : ℚ)
  oldCenter := (24341150889266683 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_402
  oldLo := (12162500000000001 / 25000000000000000 : ℚ)
  oldHi := (12175000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1160]
}

def cell_4629 : Cell := { cellDefaults with
  domain := ⟨(13912500000000001 / 100000000000000000 : ℚ), (13915625000000001 / 100000000000000000 : ℚ)⟩
  r := (10111429945753 / 10000000000000 : ℚ)
  w := (99216061624407 / 100000000000000 : ℚ)
  center := (13914062500000001 / 100000000000000000 : ℚ)
  supportValue := (48697312227789813 / 100000000000000000 : ℚ)
  supportSlope := (2401748572075313 / 500000000000000 : ℚ)
  oldCenter := (48697312227789813 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_402
  oldLo := (12162500000000001 / 25000000000000000 : ℚ)
  oldHi := (12187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1160, piece_1161]
}

def cell_4630 : Cell := { cellDefaults with
  domain := ⟨(13915625000000001 / 100000000000000000 : ℚ), (13918750000000001 / 100000000000000000 : ℚ)⟩
  r := (10111429945753 / 10000000000000 : ℚ)
  w := (99216061624407 / 100000000000000 : ℚ)
  center := (13917187500000001 / 100000000000000000 : ℚ)
  supportValue := (48712322939802083 / 100000000000000000 : ℚ)
  supportSlope := (4803755229307427 / 1000000000000000 : ℚ)
  oldCenter := (48712322939802083 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_402
  oldLo := (12175000000000001 / 25000000000000000 : ℚ)
  oldHi := (12187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1161]
}

def cell_4631 : Cell := { cellDefaults with
  domain := ⟨(13918750000000001 / 100000000000000000 : ℚ), (13921875000000001 / 100000000000000000 : ℚ)⟩
  r := (10111429945753 / 10000000000000 : ℚ)
  w := (99216061624407 / 100000000000000 : ℚ)
  center := (13920312500000001 / 100000000000000000 : ℚ)
  supportValue := (9745467276976083 / 20000000000000000 : ℚ)
  supportSlope := (480485082904103 / 100000000000000 : ℚ)
  oldCenter := (9745467276976083 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_402
  oldLo := (12175000000000001 / 25000000000000000 : ℚ)
  oldHi := (12187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1161]
}

def cell_4632 : Cell := { cellDefaults with
  domain := ⟨(13921875000000001 / 100000000000000000 : ℚ), (13925000000000001 / 100000000000000000 : ℚ)⟩
  r := (10111429945753 / 10000000000000 : ℚ)
  w := (99216061624407 / 100000000000000 : ℚ)
  center := (13923437500000001 / 100000000000000000 : ℚ)
  supportValue := (48742353255254167 / 100000000000000000 : ℚ)
  supportSlope := (4805947418999423 / 1000000000000000 : ℚ)
  oldCenter := (48742353255254167 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_402
  oldLo := (12175000000000001 / 25000000000000000 : ℚ)
  oldHi := (12187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1161]
}

def cell_4633 : Cell := { cellDefaults with
  domain := ⟨(13925000000000001 / 100000000000000000 : ℚ), (13928125000000001 / 100000000000000000 : ℚ)⟩
  r := (10111429945753 / 10000000000000 : ℚ)
  w := (99216061624407 / 100000000000000 : ℚ)
  center := (13926562500000001 / 100000000000000000 : ℚ)
  supportValue := (24378685832788227 / 50000000000000000 : ℚ)
  supportSlope := (2402912071205243 / 500000000000000 : ℚ)
  oldCenter := (24378685832788227 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_402
  oldLo := (12175000000000001 / 25000000000000000 : ℚ)
  oldHi := (12200000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1161, piece_1162]
}

def cell_4634 : Cell := { cellDefaults with
  domain := ⟨(13928125000000001 / 100000000000000000 : ℚ), (13931250000000001 / 100000000000000000 : ℚ)⟩
  r := (10111429945753 / 10000000000000 : ℚ)
  w := (99216061624407 / 100000000000000 : ℚ)
  center := (13929687500000001 / 100000000000000000 : ℚ)
  supportValue := (24386195768922947 / 50000000000000000 : ℚ)
  supportSlope := (961381225548763 / 200000000000000 : ℚ)
  oldCenter := (24386195768922947 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_402
  oldLo := (12187500000000001 / 25000000000000000 : ℚ)
  oldHi := (12200000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1162]
}

def cell_4635 : Cell := { cellDefaults with
  domain := ⟨(13931250000000001 / 100000000000000000 : ℚ), (13934375000000001 / 100000000000000000 : ℚ)⟩
  r := (10111429945753 / 10000000000000 : ℚ)
  w := (99216061624407 / 100000000000000 : ℚ)
  center := (13932812500000001 / 100000000000000000 : ℚ)
  supportValue := (243937074133189 / 500000000000000 : ℚ)
  supportSlope := (480799990629599 / 100000000000000 : ℚ)
  oldCenter := (243937074133189 / 500000000000000 : ℚ)
  newCoefficients := coefficients_402
  oldLo := (12187500000000001 / 25000000000000000 : ℚ)
  oldHi := (12200000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1162]
}

def cell_4636 : Cell := { cellDefaults with
  domain := ⟨(13934375000000001 / 100000000000000000 : ℚ), (13937500000000001 / 100000000000000000 : ℚ)⟩
  r := (10111429945753 / 10000000000000 : ℚ)
  w := (99216061624407 / 100000000000000 : ℚ)
  center := (13935937500000001 / 100000000000000000 : ℚ)
  supportValue := (195209763649157 / 400000000000000 : ℚ)
  supportSlope := (480828245140863 / 100000000000000 : ℚ)
  oldCenter := (195209763649157 / 400000000000000 : ℚ)
  newCoefficients := coefficients_402
  oldLo := (12187500000000001 / 25000000000000000 : ℚ)
  oldHi := (9770000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1162, piece_1163]
}

def cell_4637 : Cell := { cellDefaults with
  domain := ⟨(13937500000000001 / 100000000000000000 : ℚ), (13940625000000001 / 100000000000000000 : ℚ)⟩
  r := (10111429945753 / 10000000000000 : ℚ)
  w := (99216061624407 / 100000000000000 : ℚ)
  center := (13939062500000001 / 100000000000000000 : ℚ)
  supportValue := (305109170052019 / 625000000000000 : ℚ)
  supportSlope := (150280017521931 / 31250000000000 : ℚ)
  oldCenter := (305109170052019 / 625000000000000 : ℚ)
  newCoefficients := coefficients_402
  oldLo := (12200000000000001 / 25000000000000000 : ℚ)
  oldHi := (9770000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1163]
}

def cell_4638 : Cell := { cellDefaults with
  domain := ⟨(13940625000000001 / 100000000000000000 : ℚ), (13943750000000001 / 100000000000000000 : ℚ)⟩
  r := (10111429945753 / 10000000000000 : ℚ)
  w := (99216061624407 / 100000000000000 : ℚ)
  center := (13942187500000001 / 100000000000000000 : ℚ)
  supportValue := (2441624845677497 / 5000000000000000 : ℚ)
  supportSlope := (4810051990434161 / 1000000000000000 : ℚ)
  oldCenter := (2441624845677497 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_402
  oldLo := (12200000000000001 / 25000000000000000 : ℚ)
  oldHi := (9770000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1163]
}

def cell_4639 : Cell := { cellDefaults with
  domain := ⟨(13943750000000001 / 100000000000000000 : ℚ), (13946875000000001 / 100000000000000000 : ℚ)⟩
  r := (10111429945753 / 10000000000000 : ℚ)
  w := (99216061624407 / 100000000000000 : ℚ)
  center := (13945312500000001 / 100000000000000000 : ℚ)
  supportValue := (48847530031020053 / 100000000000000000 : ℚ)
  supportSlope := (4810734589481669 / 1000000000000000 : ℚ)
  oldCenter := (48847530031020053 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_402
  oldLo := (12200000000000001 / 25000000000000000 : ℚ)
  oldHi := (9780000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1163, piece_1164]
}

def cell_4640 : Cell := { cellDefaults with
  domain := ⟨(13946875000000001 / 100000000000000000 : ℚ), (13950000000000001 / 100000000000000000 : ℚ)⟩
  r := (10111429945753 / 10000000000000 : ℚ)
  w := (99216061624407 / 100000000000000 : ℚ)
  center := (13948437500000001 / 100000000000000000 : ℚ)
  supportValue := (4886256337390027 / 10000000000000000 : ℚ)
  supportSlope := (1202753606218021 / 250000000000000 : ℚ)
  oldCenter := (4886256337390027 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_402
  oldLo := (9770000000000001 / 20000000000000000 : ℚ)
  oldHi := (9780000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1164]
}

def cell_4641 : Cell := { cellDefaults with
  domain := ⟨(13950000000000001 / 100000000000000000 : ℚ), (111625000000000007 / 800000000000000000 : ℚ)⟩
  r := (10100059994151 / 10000000000000 : ℚ)
  w := (99237075587567 / 100000000000000 : ℚ)
  center := (44645000000000003 / 320000000000000000 : ℚ)
  supportValue := (4884121617049493 / 10000000000000000 : ℚ)
  supportSlope := (9616920320429431 / 2000000000000000 : ℚ)
  oldCenter := (4884121617049493 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_403
  oldLo := (12200000000000001 / 25000000000000000 : ℚ)
  oldHi := (9770000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1163]
}

def cell_4642 : Cell := { cellDefaults with
  domain := ⟨(111625000000000007 / 800000000000000000 : ℚ), (55825000000000003 / 400000000000000000 : ℚ)⟩
  r := (10100059994151 / 10000000000000 : ℚ)
  w := (99237075587567 / 100000000000000 : ℚ)
  center := (223275000000000013 / 1600000000000000000 : ℚ)
  supportValue := (24428121366668107 / 50000000000000000 : ℚ)
  supportSlope := (2404218649365671 / 500000000000000 : ℚ)
  oldCenter := (24428121366668107 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_403
  oldLo := (12200000000000001 / 25000000000000000 : ℚ)
  oldHi := (9780000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1163, piece_1164]
}

def cell_4643 : Cell := { cellDefaults with
  domain := ⟨(55825000000000003 / 400000000000000000 : ℚ), (22335000000000001 / 160000000000000000 : ℚ)⟩
  r := (10100059994151 / 10000000000000 : ℚ)
  w := (99237075587567 / 100000000000000 : ℚ)
  center := (223325000000000011 / 1600000000000000000 : ℚ)
  supportValue := (48871270481045187 / 100000000000000000 : ℚ)
  supportSlope := (4809424965669799 / 1000000000000000 : ℚ)
  oldCenter := (48871270481045187 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_403
  oldLo := (9770000000000001 / 20000000000000000 : ℚ)
  oldHi := (9780000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1164]
}

def cell_4644 : Cell := { cellDefaults with
  domain := ⟨(22335000000000001 / 160000000000000000 : ℚ), (27925000000000001 / 200000000000000000 : ℚ)⟩
  r := (10100059994151 / 10000000000000 : ℚ)
  w := (99237075587567 / 100000000000000 : ℚ)
  center := (223375000000000009 / 1600000000000000000 : ℚ)
  supportValue := (48886301637125273 / 100000000000000000 : ℚ)
  supportSlope := (2405258065409573 / 500000000000000 : ℚ)
  oldCenter := (48886301637125273 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_403
  oldLo := (9770000000000001 / 20000000000000000 : ℚ)
  oldHi := (9780000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1164]
}

def cell_4645 : Cell := { cellDefaults with
  domain := ⟨(27925000000000001 / 200000000000000000 : ℚ), (111725000000000003 / 800000000000000000 : ℚ)⟩
  r := (10100059994151 / 10000000000000 : ℚ)
  w := (99237075587567 / 100000000000000 : ℚ)
  center := (223425000000000007 / 1600000000000000000 : ℚ)
  supportValue := (24450667933311 / 50000000000000 : ℚ)
  supportSlope := (4810892957911343 / 1000000000000000 : ℚ)
  oldCenter := (24450667933311 / 50000000000000 : ℚ)
  newCoefficients := coefficients_403
  oldLo := (9770000000000001 / 20000000000000000 : ℚ)
  oldHi := (9790000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1164, piece_1165]
}

def cell_4646 : Cell := { cellDefaults with
  domain := ⟨(111725000000000003 / 800000000000000000 : ℚ), (55875000000000001 / 400000000000000000 : ℚ)⟩
  r := (10100059994151 / 10000000000000 : ℚ)
  w := (99237075587567 / 100000000000000 : ℚ)
  center := (44695000000000001 / 320000000000000000 : ℚ)
  supportValue := (9783274009894971 / 20000000000000000 : ℚ)
  supportSlope := (481148286354857 / 100000000000000 : ℚ)
  oldCenter := (9783274009894971 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_403
  oldLo := (9780000000000001 / 20000000000000000 : ℚ)
  oldHi := (9790000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1165]
}

def cell_4647 : Cell := { cellDefaults with
  domain := ⟨(55875000000000001 / 400000000000000000 : ℚ), (111775000000000001 / 800000000000000000 : ℚ)⟩
  r := (10100059994151 / 10000000000000 : ℚ)
  w := (99237075587567 / 100000000000000 : ℚ)
  center := (223525000000000003 / 1600000000000000000 : ℚ)
  supportValue := (24465703816132753 / 50000000000000000 : ℚ)
  supportSlope := (4812571326182373 / 1000000000000000 : ℚ)
  oldCenter := (24465703816132753 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_403
  oldLo := (9780000000000001 / 20000000000000000 : ℚ)
  oldHi := (9790000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1165]
}

def cell_4648 : Cell := { cellDefaults with
  domain := ⟨(111775000000000001 / 800000000000000000 : ℚ), (559 / 4000 : ℚ)⟩
  r := (10100059994151 / 10000000000000 : ℚ)
  w := (99237075587567 / 100000000000000 : ℚ)
  center := (223575000000000001 / 1600000000000000000 : ℚ)
  supportValue := (489464486180103 / 1000000000000000 : ℚ)
  supportSlope := (4813341579996881 / 1000000000000000 : ℚ)
  oldCenter := (489464486180103 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_403
  oldLo := (9780000000000001 / 20000000000000000 : ℚ)
  oldHi := (9800000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1165, piece_1166]
}

def cell_4649 : Cell := { cellDefaults with
  domain := ⟨(559 / 4000 : ℚ), (111824999999999999 / 800000000000000000 : ℚ)⟩
  r := (10100059994151 / 10000000000000 : ℚ)
  w := (99237075587567 / 100000000000000 : ℚ)
  center := (223624999999999999 / 1600000000000000000 : ℚ)
  supportValue := (24480745060879183 / 50000000000000000 : ℚ)
  supportSlope := (4813539838142781 / 1000000000000000 : ℚ)
  oldCenter := (24480745060879183 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_403
  oldLo := (9790000000000001 / 20000000000000000 : ℚ)
  oldHi := (9800000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1166]
}

theorem check_4600 : SourceCertificateFamily.RightNormalized.check cell_4600 = true := by
  decide +kernel

theorem check_4601 : SourceCertificateFamily.RightNormalized.check cell_4601 = true := by
  decide +kernel

theorem check_4602 : SourceCertificateFamily.RightNormalized.check cell_4602 = true := by
  decide +kernel

theorem check_4603 : SourceCertificateFamily.RightNormalized.check cell_4603 = true := by
  decide +kernel

theorem check_4604 : SourceCertificateFamily.RightNormalized.check cell_4604 = true := by
  decide +kernel

theorem check_4605 : SourceCertificateFamily.RightNormalized.check cell_4605 = true := by
  decide +kernel

theorem check_4606 : SourceCertificateFamily.RightNormalized.check cell_4606 = true := by
  decide +kernel

theorem check_4607 : SourceCertificateFamily.RightNormalized.check cell_4607 = true := by
  decide +kernel

theorem check_4608 : SourceCertificateFamily.RightNormalized.check cell_4608 = true := by
  decide +kernel

theorem check_4609 : SourceCertificateFamily.RightNormalized.check cell_4609 = true := by
  decide +kernel

theorem check_4610 : SourceCertificateFamily.RightNormalized.check cell_4610 = true := by
  decide +kernel

theorem check_4611 : SourceCertificateFamily.RightNormalized.check cell_4611 = true := by
  decide +kernel

theorem check_4612 : SourceCertificateFamily.RightNormalized.check cell_4612 = true := by
  decide +kernel

theorem check_4613 : SourceCertificateFamily.RightNormalized.check cell_4613 = true := by
  decide +kernel

theorem check_4614 : SourceCertificateFamily.RightNormalized.check cell_4614 = true := by
  decide +kernel

theorem check_4615 : SourceCertificateFamily.RightNormalized.check cell_4615 = true := by
  decide +kernel

theorem check_4616 : SourceCertificateFamily.RightNormalized.check cell_4616 = true := by
  decide +kernel

theorem check_4617 : SourceCertificateFamily.RightNormalized.check cell_4617 = true := by
  decide +kernel

theorem check_4618 : SourceCertificateFamily.RightNormalized.check cell_4618 = true := by
  decide +kernel

theorem check_4619 : SourceCertificateFamily.RightNormalized.check cell_4619 = true := by
  decide +kernel

theorem check_4620 : SourceCertificateFamily.RightNormalized.check cell_4620 = true := by
  decide +kernel

theorem check_4621 : SourceCertificateFamily.RightNormalized.check cell_4621 = true := by
  decide +kernel

theorem check_4622 : SourceCertificateFamily.RightNormalized.check cell_4622 = true := by
  decide +kernel

theorem check_4623 : SourceCertificateFamily.RightNormalized.check cell_4623 = true := by
  decide +kernel

theorem check_4624 : SourceCertificateFamily.RightNormalized.check cell_4624 = true := by
  decide +kernel

theorem check_4625 : SourceCertificateFamily.RightNormalized.check cell_4625 = true := by
  decide +kernel

theorem check_4626 : SourceCertificateFamily.RightNormalized.check cell_4626 = true := by
  decide +kernel

theorem check_4627 : SourceCertificateFamily.RightNormalized.check cell_4627 = true := by
  decide +kernel

theorem check_4628 : SourceCertificateFamily.RightNormalized.check cell_4628 = true := by
  decide +kernel

theorem check_4629 : SourceCertificateFamily.RightNormalized.check cell_4629 = true := by
  decide +kernel

theorem check_4630 : SourceCertificateFamily.RightNormalized.check cell_4630 = true := by
  decide +kernel

theorem check_4631 : SourceCertificateFamily.RightNormalized.check cell_4631 = true := by
  decide +kernel

theorem check_4632 : SourceCertificateFamily.RightNormalized.check cell_4632 = true := by
  decide +kernel

theorem check_4633 : SourceCertificateFamily.RightNormalized.check cell_4633 = true := by
  decide +kernel

theorem check_4634 : SourceCertificateFamily.RightNormalized.check cell_4634 = true := by
  decide +kernel

theorem check_4635 : SourceCertificateFamily.RightNormalized.check cell_4635 = true := by
  decide +kernel

theorem check_4636 : SourceCertificateFamily.RightNormalized.check cell_4636 = true := by
  decide +kernel

theorem check_4637 : SourceCertificateFamily.RightNormalized.check cell_4637 = true := by
  decide +kernel

theorem check_4638 : SourceCertificateFamily.RightNormalized.check cell_4638 = true := by
  decide +kernel

theorem check_4639 : SourceCertificateFamily.RightNormalized.check cell_4639 = true := by
  decide +kernel

theorem check_4640 : SourceCertificateFamily.RightNormalized.check cell_4640 = true := by
  decide +kernel

theorem check_4641 : SourceCertificateFamily.RightNormalized.check cell_4641 = true := by
  decide +kernel

theorem check_4642 : SourceCertificateFamily.RightNormalized.check cell_4642 = true := by
  decide +kernel

theorem check_4643 : SourceCertificateFamily.RightNormalized.check cell_4643 = true := by
  decide +kernel

theorem check_4644 : SourceCertificateFamily.RightNormalized.check cell_4644 = true := by
  decide +kernel

theorem check_4645 : SourceCertificateFamily.RightNormalized.check cell_4645 = true := by
  decide +kernel

theorem check_4646 : SourceCertificateFamily.RightNormalized.check cell_4646 = true := by
  decide +kernel

theorem check_4647 : SourceCertificateFamily.RightNormalized.check cell_4647 = true := by
  decide +kernel

theorem check_4648 : SourceCertificateFamily.RightNormalized.check cell_4648 = true := by
  decide +kernel

theorem check_4649 : SourceCertificateFamily.RightNormalized.check cell_4649 = true := by
  decide +kernel

def cells : List Cell := [cell_4600, cell_4601, cell_4602, cell_4603, cell_4604, cell_4605, cell_4606, cell_4607, cell_4608, cell_4609, cell_4610, cell_4611, cell_4612, cell_4613, cell_4614, cell_4615, cell_4616, cell_4617, cell_4618, cell_4619, cell_4620, cell_4621, cell_4622, cell_4623, cell_4624, cell_4625, cell_4626, cell_4627, cell_4628, cell_4629, cell_4630, cell_4631, cell_4632, cell_4633, cell_4634, cell_4635, cell_4636, cell_4637, cell_4638, cell_4639, cell_4640, cell_4641, cell_4642, cell_4643, cell_4644, cell_4645, cell_4646, cell_4647, cell_4648, cell_4649]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_4600, SourceCertificateFamily.of_right_checked check_4601, SourceCertificateFamily.of_right_checked check_4602, SourceCertificateFamily.of_right_checked check_4603, SourceCertificateFamily.of_right_checked check_4604, SourceCertificateFamily.of_right_checked check_4605, SourceCertificateFamily.of_right_checked check_4606, SourceCertificateFamily.of_right_checked check_4607, SourceCertificateFamily.of_right_checked check_4608, SourceCertificateFamily.of_right_checked check_4609, SourceCertificateFamily.of_right_checked check_4610, SourceCertificateFamily.of_right_checked check_4611, SourceCertificateFamily.of_right_checked check_4612, SourceCertificateFamily.of_right_checked check_4613, SourceCertificateFamily.of_right_checked check_4614, SourceCertificateFamily.of_right_checked check_4615, SourceCertificateFamily.of_right_checked check_4616, SourceCertificateFamily.of_right_checked check_4617, SourceCertificateFamily.of_right_checked check_4618, SourceCertificateFamily.of_right_checked check_4619, SourceCertificateFamily.of_right_checked check_4620, SourceCertificateFamily.of_right_checked check_4621, SourceCertificateFamily.of_right_checked check_4622, SourceCertificateFamily.of_right_checked check_4623, SourceCertificateFamily.of_right_checked check_4624, SourceCertificateFamily.of_right_checked check_4625, SourceCertificateFamily.of_right_checked check_4626, SourceCertificateFamily.of_right_checked check_4627, SourceCertificateFamily.of_right_checked check_4628, SourceCertificateFamily.of_right_checked check_4629, SourceCertificateFamily.of_right_checked check_4630, SourceCertificateFamily.of_right_checked check_4631, SourceCertificateFamily.of_right_checked check_4632, SourceCertificateFamily.of_right_checked check_4633, SourceCertificateFamily.of_right_checked check_4634, SourceCertificateFamily.of_right_checked check_4635, SourceCertificateFamily.of_right_checked check_4636, SourceCertificateFamily.of_right_checked check_4637, SourceCertificateFamily.of_right_checked check_4638, SourceCertificateFamily.of_right_checked check_4639, SourceCertificateFamily.of_right_checked check_4640, SourceCertificateFamily.of_right_checked check_4641, SourceCertificateFamily.of_right_checked check_4642, SourceCertificateFamily.of_right_checked check_4643, SourceCertificateFamily.of_right_checked check_4644, SourceCertificateFamily.of_right_checked check_4645, SourceCertificateFamily.of_right_checked check_4646, SourceCertificateFamily.of_right_checked check_4647, SourceCertificateFamily.of_right_checked check_4648, SourceCertificateFamily.of_right_checked check_4649, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0092

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0092
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0092
open AnalyticBounds.ExpressionCertificate

theorem linked_4600 : Linked cell_4600 pieces := by
  apply Linked.of_piece piece_400 piece_400_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4600, List.cons_subset, List.nil_subset, and_true]
  exact piece_1152_mem

theorem linked_4601 : Linked cell_4601 pieces := by
  apply Linked.of_piece piece_400 piece_400_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4601, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1152_mem, piece_1153_mem⟩

theorem linked_4602 : Linked cell_4602 pieces := by
  apply Linked.of_piece piece_400 piece_400_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4602, List.cons_subset, List.nil_subset, and_true]
  exact piece_1153_mem

theorem linked_4603 : Linked cell_4603 pieces := by
  apply Linked.of_piece piece_400 piece_400_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4603, List.cons_subset, List.nil_subset, and_true]
  exact piece_1153_mem

theorem linked_4604 : Linked cell_4604 pieces := by
  apply Linked.of_piece piece_400 piece_400_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4604, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1153_mem, piece_1154_mem⟩

theorem linked_4605 : Linked cell_4605 pieces := by
  apply Linked.of_piece piece_400 piece_400_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4605, List.cons_subset, List.nil_subset, and_true]
  exact piece_1154_mem

theorem linked_4606 : Linked cell_4606 pieces := by
  apply Linked.of_piece piece_400 piece_400_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4606, List.cons_subset, List.nil_subset, and_true]
  exact piece_1154_mem

theorem linked_4607 : Linked cell_4607 pieces := by
  apply Linked.of_piece piece_400 piece_400_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4607, List.cons_subset, List.nil_subset, and_true]
  exact piece_1154_mem

theorem linked_4608 : Linked cell_4608 pieces := by
  apply Linked.of_piece piece_400 piece_400_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4608, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1154_mem, piece_1155_mem⟩

theorem linked_4609 : Linked cell_4609 pieces := by
  apply Linked.of_piece piece_401 piece_401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4609, List.cons_subset, List.nil_subset, and_true]
  exact piece_1154_mem

theorem linked_4610 : Linked cell_4610 pieces := by
  apply Linked.of_piece piece_401 piece_401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4610, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1154_mem, piece_1155_mem⟩

theorem linked_4611 : Linked cell_4611 pieces := by
  apply Linked.of_piece piece_401 piece_401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4611, List.cons_subset, List.nil_subset, and_true]
  exact piece_1155_mem

theorem linked_4612 : Linked cell_4612 pieces := by
  apply Linked.of_piece piece_401 piece_401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4612, List.cons_subset, List.nil_subset, and_true]
  exact piece_1155_mem

theorem linked_4613 : Linked cell_4613 pieces := by
  apply Linked.of_piece piece_401 piece_401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4613, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1155_mem, piece_1156_mem⟩

theorem linked_4614 : Linked cell_4614 pieces := by
  apply Linked.of_piece piece_401 piece_401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4614, List.cons_subset, List.nil_subset, and_true]
  exact piece_1156_mem

theorem linked_4615 : Linked cell_4615 pieces := by
  apply Linked.of_piece piece_401 piece_401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4615, List.cons_subset, List.nil_subset, and_true]
  exact piece_1156_mem

theorem linked_4616 : Linked cell_4616 pieces := by
  apply Linked.of_piece piece_401 piece_401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4616, List.cons_subset, List.nil_subset, and_true]
  exact piece_1156_mem

theorem linked_4617 : Linked cell_4617 pieces := by
  apply Linked.of_piece piece_401 piece_401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4617, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1156_mem, piece_1157_mem⟩

theorem linked_4618 : Linked cell_4618 pieces := by
  apply Linked.of_piece piece_401 piece_401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4618, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1157_mem, piece_1158_mem⟩

theorem linked_4619 : Linked cell_4619 pieces := by
  apply Linked.of_piece piece_401 piece_401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4619, List.cons_subset, List.nil_subset, and_true]
  exact piece_1158_mem

theorem linked_4620 : Linked cell_4620 pieces := by
  apply Linked.of_piece piece_401 piece_401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4620, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1158_mem, piece_1159_mem⟩

theorem linked_4621 : Linked cell_4621 pieces := by
  apply Linked.of_piece piece_401 piece_401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4621, List.cons_subset, List.nil_subset, and_true]
  exact piece_1159_mem

theorem linked_4622 : Linked cell_4622 pieces := by
  apply Linked.of_piece piece_401 piece_401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4622, List.cons_subset, List.nil_subset, and_true]
  exact piece_1159_mem

theorem linked_4623 : Linked cell_4623 pieces := by
  apply Linked.of_piece piece_401 piece_401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4623, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1159_mem, piece_1160_mem⟩

theorem linked_4624 : Linked cell_4624 pieces := by
  apply Linked.of_piece piece_401 piece_401_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4624, List.cons_subset, List.nil_subset, and_true]
  exact piece_1160_mem

theorem linked_4625 : Linked cell_4625 pieces := by
  apply Linked.of_piece piece_402 piece_402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4625, List.cons_subset, List.nil_subset, and_true]
  exact piece_1159_mem

theorem linked_4626 : Linked cell_4626 pieces := by
  apply Linked.of_piece piece_402 piece_402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4626, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1159_mem, piece_1160_mem⟩

theorem linked_4627 : Linked cell_4627 pieces := by
  apply Linked.of_piece piece_402 piece_402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4627, List.cons_subset, List.nil_subset, and_true]
  exact piece_1160_mem

theorem linked_4628 : Linked cell_4628 pieces := by
  apply Linked.of_piece piece_402 piece_402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4628, List.cons_subset, List.nil_subset, and_true]
  exact piece_1160_mem

theorem linked_4629 : Linked cell_4629 pieces := by
  apply Linked.of_piece piece_402 piece_402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4629, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1160_mem, piece_1161_mem⟩

theorem linked_4630 : Linked cell_4630 pieces := by
  apply Linked.of_piece piece_402 piece_402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4630, List.cons_subset, List.nil_subset, and_true]
  exact piece_1161_mem

theorem linked_4631 : Linked cell_4631 pieces := by
  apply Linked.of_piece piece_402 piece_402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4631, List.cons_subset, List.nil_subset, and_true]
  exact piece_1161_mem

theorem linked_4632 : Linked cell_4632 pieces := by
  apply Linked.of_piece piece_402 piece_402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4632, List.cons_subset, List.nil_subset, and_true]
  exact piece_1161_mem

theorem linked_4633 : Linked cell_4633 pieces := by
  apply Linked.of_piece piece_402 piece_402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4633, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1161_mem, piece_1162_mem⟩

theorem linked_4634 : Linked cell_4634 pieces := by
  apply Linked.of_piece piece_402 piece_402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4634, List.cons_subset, List.nil_subset, and_true]
  exact piece_1162_mem

theorem linked_4635 : Linked cell_4635 pieces := by
  apply Linked.of_piece piece_402 piece_402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4635, List.cons_subset, List.nil_subset, and_true]
  exact piece_1162_mem

theorem linked_4636 : Linked cell_4636 pieces := by
  apply Linked.of_piece piece_402 piece_402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4636, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1162_mem, piece_1163_mem⟩

theorem linked_4637 : Linked cell_4637 pieces := by
  apply Linked.of_piece piece_402 piece_402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4637, List.cons_subset, List.nil_subset, and_true]
  exact piece_1163_mem

theorem linked_4638 : Linked cell_4638 pieces := by
  apply Linked.of_piece piece_402 piece_402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4638, List.cons_subset, List.nil_subset, and_true]
  exact piece_1163_mem

theorem linked_4639 : Linked cell_4639 pieces := by
  apply Linked.of_piece piece_402 piece_402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4639, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1163_mem, piece_1164_mem⟩

theorem linked_4640 : Linked cell_4640 pieces := by
  apply Linked.of_piece piece_402 piece_402_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4640, List.cons_subset, List.nil_subset, and_true]
  exact piece_1164_mem

theorem linked_4641 : Linked cell_4641 pieces := by
  apply Linked.of_piece piece_403 piece_403_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4641, List.cons_subset, List.nil_subset, and_true]
  exact piece_1163_mem

theorem linked_4642 : Linked cell_4642 pieces := by
  apply Linked.of_piece piece_403 piece_403_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4642, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1163_mem, piece_1164_mem⟩

theorem linked_4643 : Linked cell_4643 pieces := by
  apply Linked.of_piece piece_403 piece_403_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4643, List.cons_subset, List.nil_subset, and_true]
  exact piece_1164_mem

theorem linked_4644 : Linked cell_4644 pieces := by
  apply Linked.of_piece piece_403 piece_403_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4644, List.cons_subset, List.nil_subset, and_true]
  exact piece_1164_mem

theorem linked_4645 : Linked cell_4645 pieces := by
  apply Linked.of_piece piece_403 piece_403_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4645, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1164_mem, piece_1165_mem⟩

theorem linked_4646 : Linked cell_4646 pieces := by
  apply Linked.of_piece piece_403 piece_403_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4646, List.cons_subset, List.nil_subset, and_true]
  exact piece_1165_mem

theorem linked_4647 : Linked cell_4647 pieces := by
  apply Linked.of_piece piece_403 piece_403_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4647, List.cons_subset, List.nil_subset, and_true]
  exact piece_1165_mem

theorem linked_4648 : Linked cell_4648 pieces := by
  apply Linked.of_piece piece_403 piece_403_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4648, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1165_mem, piece_1166_mem⟩

theorem linked_4649 : Linked cell_4649 pieces := by
  apply Linked.of_piece piece_403 piece_403_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4649, List.cons_subset, List.nil_subset, and_true]
  exact piece_1166_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0092.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0092.cells,List.forall_mem_cons]
  exact ⟨linked_4600, linked_4601, linked_4602, linked_4603, linked_4604, linked_4605, linked_4606, linked_4607, linked_4608, linked_4609, linked_4610, linked_4611, linked_4612, linked_4613, linked_4614, linked_4615, linked_4616, linked_4617, linked_4618, linked_4619, linked_4620, linked_4621, linked_4622, linked_4623, linked_4624, linked_4625, linked_4626, linked_4627, linked_4628, linked_4629, linked_4630, linked_4631, linked_4632, linked_4633, linked_4634, linked_4635, linked_4636, linked_4637, linked_4638, linked_4639, linked_4640, linked_4641, linked_4642, linked_4643, linked_4644, linked_4645, linked_4646, linked_4647, linked_4648, linked_4649, by simp⟩

theorem covered : covers (13821875000000001 / 100000000000000000 : ℚ) (111824999999999999 / 800000000000000000 : ℚ)
    (SourceCertificates.Chunk0092.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0092
