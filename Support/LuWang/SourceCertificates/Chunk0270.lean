import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0270
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(33885000000000003 / 40000000000000000 : ℚ), (42362500000000003 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (22509368424799 / 50000000000000 : ℚ)
  w := (6533128815757 / 5000000000000 : ℚ)
  center := (338875000000000027 / 400000000000000000 : ℚ)
  supportValue := (23212186227950507 / 100000000000000000 : ℚ)
  supportSlope := (-8167221251254999 / 10000000000000000 : ℚ)
  oldCenter := (23212186227950507 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1947
  oldLo := (11574999999999999 / 50000000000000000 : ℚ)
  oldHi := (11599999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_604]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_13500 : Cell := { cellDefaults with
  r := (45037191715669 / 100000000000000 : ℚ)
  w := (13070346176317 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1946
  oldLo := (11599999999999999 / 50000000000000000 : ℚ)
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_605]
}

noncomputable def cell_13501 : Cell := { cellDefaults with
  domain := ⟨(42362500000000003 / 50000000000000000 : ℚ), (169475000000000009 / 200000000000000000 : ℚ)⟩
  r := (45037191715669 / 100000000000000 : ℚ)
  w := (13070346176317 / 10000000000000 : ℚ)
  center := (338925000000000021 / 400000000000000000 : ℚ)
  supportValue := (11600989911649773 / 50000000000000000 : ℚ)
  supportSlope := (-8163497187242277 / 10000000000000000 : ℚ)
  oldCenter := (11600989911649773 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1946
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_604, piece_605]
}

noncomputable def cell_13502 : Cell := { cellDefaults with
  domain := ⟨(169475000000000009 / 200000000000000000 : ℚ), (84750000000000003 / 100000000000000000 : ℚ)⟩
  r := (45037191715669 / 100000000000000 : ℚ)
  w := (13070346176317 / 10000000000000 : ℚ)
  center := (67795000000000003 / 80000000000000000 : ℚ)
  supportValue := (11595888552526269 / 50000000000000000 : ℚ)
  supportSlope := (-4080185736053333 / 5000000000000000 : ℚ)
  oldCenter := (11595888552526269 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1946
  oldPieces := [piece_604]
}

noncomputable def cell_13503 : Cell := { cellDefaults with
  domain := ⟨(84750000000000003 / 100000000000000000 : ℚ), (169525000000000009 / 200000000000000000 : ℚ)⟩
  center := (67805000000000003 / 80000000000000000 : ℚ)
  supportValue := (4641919982739079 / 20000000000000000 : ℚ)
  supportSlope := (-2040641352723837 / 2500000000000000 : ℚ)
  oldCenter := (4641919982739079 / 20000000000000000 : ℚ)
  oldLo := (11599999999999999 / 50000000000000000 : ℚ)
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_605]
}

noncomputable def cell_13504 : Cell := { cellDefaults with
  domain := ⟨(169525000000000009 / 200000000000000000 : ℚ), (42387500000000003 / 50000000000000000 : ℚ)⟩
  center := (339075000000000021 / 400000000000000000 : ℚ)
  supportValue := (11599699605153953 / 50000000000000000 : ℚ)
  supportSlope := (-254976165255491 / 312500000000000 : ℚ)
  oldCenter := (11599699605153953 / 50000000000000000 : ℚ)
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_604, piece_605]
}

noncomputable def cell_13505 : Cell := { cellDefaults with
  domain := ⟨(42387500000000003 / 50000000000000000 : ℚ), (33915000000000003 / 40000000000000000 : ℚ)⟩
  center := (339125000000000027 / 400000000000000000 : ℚ)
  supportValue := (23189201930638337 / 100000000000000000 : ℚ)
  supportSlope := (-509732710604277 / 625000000000000 : ℚ)
  oldCenter := (23189201930638337 / 100000000000000000 : ℚ)
  oldPieces := [piece_604]
}

noncomputable def cell_13506 : Cell := { cellDefaults with
  domain := ⟨(33915000000000003 / 40000000000000000 : ℚ), (84800000000000009 / 100000000000000000 : ℚ)⟩
  center := (339175000000000033 / 400000000000000000 : ℚ)
  supportValue := (11589504947260307 / 50000000000000000 : ℚ)
  supportSlope := (-8151530522554483 / 10000000000000000 : ℚ)
  oldCenter := (11589504947260307 / 50000000000000000 : ℚ)
  oldPieces := [piece_604]
}

noncomputable def cell_13507 : Cell := { cellDefaults with
  domain := ⟨(84800000000000009 / 100000000000000000 : ℚ), (33925000000000003 / 40000000000000000 : ℚ)⟩
  r := (4500029465487 / 10000000000000 : ℚ)
  w := (6531083938287 / 5000000000000 : ℚ)
  center := (339225000000000033 / 400000000000000000 : ℚ)
  supportValue := (2319682810861861 / 10000000000000000 : ℚ)
  supportSlope := (-254843200597657 / 312500000000000 : ℚ)
  oldCenter := (2319682810861861 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1948
  oldHi := (11624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_604, piece_605]
}

noncomputable def cell_13508 : Cell := { cellDefaults with
  domain := ⟨(33925000000000003 / 40000000000000000 : ℚ), (42412500000000003 / 50000000000000000 : ℚ)⟩
  r := (4500029465487 / 10000000000000 : ℚ)
  w := (6531083938287 / 5000000000000 : ℚ)
  center := (339275000000000027 / 400000000000000000 : ℚ)
  supportValue := (11593318316813049 / 50000000000000000 : ℚ)
  supportSlope := (-163021643050973 / 200000000000000 : ℚ)
  oldCenter := (11593318316813049 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1948
  oldPieces := [piece_604]
}

noncomputable def cell_13509 : Cell := { cellDefaults with
  domain := ⟨(42412500000000003 / 50000000000000000 : ℚ), (169675000000000009 / 200000000000000000 : ℚ)⟩
  r := (4500029465487 / 10000000000000 : ℚ)
  w := (6531083938287 / 5000000000000 : ℚ)
  center := (339325000000000021 / 400000000000000000 : ℚ)
  supportValue := (2317645039587997 / 10000000000000000 : ℚ)
  supportSlope := (-8146894346047073 / 10000000000000000 : ℚ)
  oldCenter := (2317645039587997 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1948
  oldPieces := [piece_604]
}

noncomputable def cell_13510 : Cell := { cellDefaults with
  domain := ⟨(169675000000000009 / 200000000000000000 : ℚ), (84850000000000003 / 100000000000000000 : ℚ)⟩
  r := (4500029465487 / 10000000000000 : ℚ)
  w := (6531083938287 / 5000000000000 : ℚ)
  center := (67875000000000003 / 80000000000000000 : ℚ)
  supportValue := (23166269390409291 / 100000000000000000 : ℚ)
  supportSlope := (-1017838814056493 / 1250000000000000 : ℚ)
  oldCenter := (23166269390409291 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1948
  oldPieces := [piece_604]
}

noncomputable def cell_13511 : Cell := { cellDefaults with
  domain := ⟨(84850000000000003 / 100000000000000000 : ℚ), (169725000000000009 / 200000000000000000 : ℚ)⟩
  r := (11245466490163 / 25000000000000 : ℚ)
  w := (13058076773961 / 10000000000000 : ℚ)
  center := (67885000000000003 / 80000000000000000 : ℚ)
  supportValue := (289801006192871 / 1250000000000000 : ℚ)
  supportSlope := (-4073223827400563 / 5000000000000000 : ℚ)
  oldCenter := (289801006192871 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1949
  oldPieces := [piece_604]
}

noncomputable def cell_13512 : Cell := { cellDefaults with
  domain := ⟨(169725000000000009 / 200000000000000000 : ℚ), (42437500000000003 / 50000000000000000 : ℚ)⟩
  r := (11245466490163 / 25000000000000 : ℚ)
  w := (13058076773961 / 10000000000000 : ℚ)
  center := (339475000000000021 / 400000000000000000 : ℚ)
  supportValue := (11586950023819141 / 50000000000000000 : ℚ)
  supportSlope := (-4071132458555793 / 5000000000000000 : ℚ)
  oldCenter := (11586950023819141 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1949
  oldPieces := [piece_604]
}

noncomputable def cell_13513 : Cell := { cellDefaults with
  domain := ⟨(42437500000000003 / 50000000000000000 : ℚ), (33955000000000003 / 40000000000000000 : ℚ)⟩
  r := (11245466490163 / 25000000000000 : ℚ)
  w := (13058076773961 / 10000000000000 : ℚ)
  center := (339525000000000027 / 400000000000000000 : ℚ)
  supportValue := (5790931206447763 / 25000000000000000 : ℚ)
  supportSlope := (-8138086144739011 / 10000000000000000 : ℚ)
  oldCenter := (5790931206447763 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1949
  oldPieces := [piece_604]
}

noncomputable def cell_13514 : Cell := { cellDefaults with
  domain := ⟨(33955000000000003 / 40000000000000000 : ℚ), (84900000000000009 / 100000000000000000 : ℚ)⟩
  r := (11245466490163 / 25000000000000 : ℚ)
  w := (13058076773961 / 10000000000000 : ℚ)
  center := (339575000000000033 / 400000000000000000 : ℚ)
  supportValue := (23153554824936057 / 100000000000000000 : ℚ)
  supportSlope := (-8134144462860339 / 10000000000000000 : ℚ)
  oldCenter := (23153554824936057 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1949
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_603, piece_604]
}

noncomputable def cell_13515 : Cell := { cellDefaults with
  domain := ⟨(84900000000000009 / 100000000000000000 : ℚ), (33965000000000003 / 40000000000000000 : ℚ)⟩
  r := (44963452762713 / 100000000000000 : ℚ)
  w := (652699327323 / 500000000000 : ℚ)
  center := (339625000000000033 / 400000000000000000 : ℚ)
  supportValue := (1158567632266799 / 5000000000000000 : ℚ)
  supportSlope := (-8137640322015559 / 10000000000000000 : ℚ)
  oldCenter := (1158567632266799 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1950
  oldPieces := [piece_604]
}

noncomputable def cell_13516 : Cell := { cellDefaults with
  domain := ⟨(33965000000000003 / 40000000000000000 : ℚ), (42462500000000003 / 50000000000000000 : ℚ)⟩
  r := (44963452762713 / 100000000000000 : ℚ)
  w := (652699327323 / 500000000000 : ℚ)
  center := (339675000000000027 / 400000000000000000 : ℚ)
  supportValue := (4632236640215569 / 20000000000000000 : ℚ)
  supportSlope := (-1626693319635581 / 2000000000000000 : ℚ)
  oldCenter := (4632236640215569 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1950
  oldPieces := [piece_604]
}

noncomputable def cell_13517 : Cell := { cellDefaults with
  domain := ⟨(42462500000000003 / 50000000000000000 : ℚ), (169875000000000009 / 200000000000000000 : ℚ)⟩
  r := (44963452762713 / 100000000000000 : ℚ)
  w := (652699327323 / 500000000000 : ℚ)
  center := (339725000000000021 / 400000000000000000 : ℚ)
  supportValue := (23151018971506013 / 100000000000000000 : ℚ)
  supportSlope := (-4064957156775727 / 5000000000000000 : ℚ)
  oldCenter := (23151018971506013 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1950
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_603, piece_604]
}

noncomputable def cell_13518 : Cell := { cellDefaults with
  domain := ⟨(169875000000000009 / 200000000000000000 : ℚ), (84950000000000003 / 100000000000000000 : ℚ)⟩
  r := (44963452762713 / 100000000000000 : ℚ)
  w := (652699327323 / 500000000000 : ℚ)
  center := (67955000000000003 / 80000000000000000 : ℚ)
  supportValue := (5785214554478539 / 25000000000000000 : ℚ)
  supportSlope := (-2031667082588417 / 2500000000000000 : ℚ)
  oldCenter := (5785214554478539 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1950
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldHi := (11574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_603]
}

noncomputable def cell_13519 : Cell := { cellDefaults with
  domain := ⟨(84950000000000003 / 100000000000000000 : ℚ), (169925000000000009 / 200000000000000000 : ℚ)⟩
  r := (1404532898631 / 3125000000000 : ℚ)
  w := (13049895212071 / 10000000000000 : ℚ)
  center := (67965000000000003 / 80000000000000000 : ℚ)
  supportValue := (578966264632769 / 2500000000000000 : ℚ)
  supportSlope := (-8128853679129213 / 10000000000000000 : ℚ)
  oldCenter := (578966264632769 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1951
  oldPieces := [piece_604]
}

noncomputable def cell_13520 : Cell := { cellDefaults with
  domain := ⟨(169925000000000009 / 200000000000000000 : ℚ), (42487500000000003 / 50000000000000000 : ℚ)⟩
  r := (1404532898631 / 3125000000000 : ℚ)
  w := (13049895212071 / 10000000000000 : ℚ)
  center := (339875000000000021 / 400000000000000000 : ℚ)
  supportValue := (11574245915597281 / 50000000000000000 : ℚ)
  supportSlope := (-1625137805520343 / 2000000000000000 : ℚ)
  oldCenter := (11574245915597281 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1951
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_603, piece_604]
}

noncomputable def cell_13521 : Cell := { cellDefaults with
  domain := ⟨(42487500000000003 / 50000000000000000 : ℚ), (33995000000000003 / 40000000000000000 : ℚ)⟩
  r := (1404532898631 / 3125000000000 : ℚ)
  w := (13049895212071 / 10000000000000 : ℚ)
  center := (339925000000000027 / 400000000000000000 : ℚ)
  supportValue := (578458416128149 / 2500000000000000 : ℚ)
  supportSlope := (-507628941221411 / 625000000000000 : ℚ)
  oldCenter := (578458416128149 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1951
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldHi := (11574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_603]
}

noncomputable def cell_13522 : Cell := { cellDefaults with
  domain := ⟨(33995000000000003 / 40000000000000000 : ℚ), (85000000000000009 / 100000000000000000 : ℚ)⟩
  r := (1404532898631 / 3125000000000 : ℚ)
  w := (13049895212071 / 10000000000000 : ℚ)
  center := (339975000000000033 / 400000000000000000 : ℚ)
  supportValue := (2312818666621993 / 10000000000000000 : ℚ)
  supportSlope := (-2029474826137113 / 2500000000000000 : ℚ)
  oldCenter := (2312818666621993 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1951
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldHi := (11574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_603]
}

noncomputable def cell_13523 : Cell := { cellDefaults with
  domain := ⟨(85000000000000009 / 100000000000000000 : ℚ), (34005000000000003 / 40000000000000000 : ℚ)⟩
  r := (22463332486367 / 50000000000000 : ℚ)
  w := (13045800757299 / 10000000000000 : ℚ)
  center := (340025000000000033 / 400000000000000000 : ℚ)
  supportValue := (11572989059830213 / 50000000000000000 : ℚ)
  supportSlope := (-8121469388947397 / 10000000000000000 : ℚ)
  oldCenter := (11572989059830213 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1952
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_603, piece_604]
}

noncomputable def cell_13524 : Cell := { cellDefaults with
  domain := ⟨(34005000000000003 / 40000000000000000 : ℚ), (42512500000000003 / 50000000000000000 : ℚ)⟩
  r := (22463332486367 / 50000000000000 : ℚ)
  w := (13045800757299 / 10000000000000 : ℚ)
  center := (340075000000000027 / 400000000000000000 : ℚ)
  supportValue := (4627165736641261 / 20000000000000000 : ℚ)
  supportSlope := (-2029366468722337 / 2500000000000000 : ℚ)
  oldCenter := (4627165736641261 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1952
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldHi := (11574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_603]
}

noncomputable def cell_13525 : Cell := { cellDefaults with
  domain := ⟨(42512500000000003 / 50000000000000000 : ℚ), (170075000000000009 / 200000000000000000 : ℚ)⟩
  r := (22463332486367 / 50000000000000 : ℚ)
  w := (13045800757299 / 10000000000000 : ℚ)
  center := (340125000000000021 / 400000000000000000 : ℚ)
  supportValue := (578142111191331 / 2500000000000000 : ℚ)
  supportSlope := (-8113307659446263 / 10000000000000000 : ℚ)
  oldCenter := (578142111191331 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1952
  oldLo := (11549999999999999 / 50000000000000000 : ℚ)
  oldHi := (11574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_602, piece_603]
}

noncomputable def cell_13526 : Cell := { cellDefaults with
  domain := ⟨(170075000000000009 / 200000000000000000 : ℚ), (85050000000000003 / 100000000000000000 : ℚ)⟩
  r := (22463332486367 / 50000000000000 : ℚ)
  w := (13045800757299 / 10000000000000 : ℚ)
  center := (68035000000000003 / 80000000000000000 : ℚ)
  supportValue := (4623109081187659 / 20000000000000000 : ℚ)
  supportSlope := (-4054577332877549 / 5000000000000000 : ℚ)
  oldCenter := (4623109081187659 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1952
  oldLo := (11549999999999999 / 50000000000000000 : ℚ)
  oldHi := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_602]
}

noncomputable def cell_13527 : Cell := { cellDefaults with
  domain := ⟨(85050000000000003 / 100000000000000000 : ℚ), (340268156424581 / 400000000000000 : ℚ)⟩
  r := (2806768220089 / 6250000000000 : ℚ)
  w := (1630213406481 / 1250000000000 : ℚ)
  center := (170117039106145253 / 200000000000000000 : ℚ)
  supportValue := (11565741786365953 / 50000000000000000 : ℚ)
  supportSlope := (-126751865416103 / 156250000000000 : ℚ)
  oldCenter := (11565741786365953 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1953
  oldLo := (144518156424581 / 625000000000000 : ℚ)
  oldHi := (11574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_603]
}

noncomputable def cell_13528 : Cell := { cellDefaults with
  domain := ⟨(340268156424581 / 400000000000000 : ℚ), (170167039106145259 / 200000000000000000 : ℚ)⟩
  r := (2806768220089 / 6250000000000 : ℚ)
  w := (1630213406481 / 1250000000000 : ℚ)
  center := (340301117318435759 / 400000000000000000 : ℚ)
  supportValue := (2889736562884803 / 12500000000000000 : ℚ)
  supportSlope := (-324262171769281 / 400000000000000 : ℚ)
  oldCenter := (2889736562884803 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1954
  oldLo := (11549999999999999 / 50000000000000000 : ℚ)
  oldHi := (11574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_602, piece_603]
}

noncomputable def cell_13529 : Cell := { cellDefaults with
  domain := ⟨(170167039106145259 / 200000000000000000 : ℚ), (85100000000000009 / 100000000000000000 : ℚ)⟩
  r := (2806768220089 / 6250000000000 : ℚ)
  w := (1630213406481 / 1250000000000 : ℚ)
  center := (340367039106145277 / 400000000000000000 : ℚ)
  supportValue := (115522766074659 / 500000000000000 : ℚ)
  supportSlope := (-8101333886701981 / 10000000000000000 : ℚ)
  oldCenter := (115522766074659 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1954
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_601, piece_602]
}

noncomputable def cell_13530 : Cell := { cellDefaults with
  domain := ⟨(85100000000000009 / 100000000000000000 : ℚ), (34045000000000003 / 40000000000000000 : ℚ)⟩
  r := (44889932952467 / 100000000000000 : ℚ)
  w := (3259403592303 / 2500000000000 : ℚ)
  center := (340425000000000033 / 400000000000000000 : ℚ)
  supportValue := (23120691996778073 / 100000000000000000 : ℚ)
  supportSlope := (-8104139851839859 / 10000000000000000 : ℚ)
  oldCenter := (23120691996778073 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1955
  oldLo := (11549999999999999 / 50000000000000000 : ℚ)
  oldHi := (11574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_602, piece_603]
}

noncomputable def cell_13531 : Cell := { cellDefaults with
  domain := ⟨(34045000000000003 / 40000000000000000 : ℚ), (42562500000000003 / 50000000000000000 : ℚ)⟩
  r := (44889932952467 / 100000000000000 : ℚ)
  w := (3259403592303 / 2500000000000 : ℚ)
  center := (340475000000000027 / 400000000000000000 : ℚ)
  supportValue := (2311056440923471 / 10000000000000000 : ℚ)
  supportSlope := (-4049997836888461 / 5000000000000000 : ℚ)
  oldCenter := (2311056440923471 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1955
  oldLo := (11549999999999999 / 50000000000000000 : ℚ)
  oldHi := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_602]
}

noncomputable def cell_13532 : Cell := { cellDefaults with
  domain := ⟨(42562500000000003 / 50000000000000000 : ℚ), (170275000000000009 / 200000000000000000 : ℚ)⟩
  r := (44889932952467 / 100000000000000 : ℚ)
  w := (3259403592303 / 2500000000000 : ℚ)
  center := (340525000000000021 / 400000000000000000 : ℚ)
  supportValue := (577511050007403 / 2500000000000000 : ℚ)
  supportSlope := (-323862273036507 / 400000000000000 : ℚ)
  oldCenter := (577511050007403 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1955
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_601, piece_602]
}

noncomputable def cell_13533 : Cell := { cellDefaults with
  domain := ⟨(170275000000000009 / 200000000000000000 : ℚ), (85150000000000003 / 100000000000000000 : ℚ)⟩
  r := (44889932952467 / 100000000000000 : ℚ)
  w := (3259403592303 / 2500000000000 : ℚ)
  center := (68115000000000003 / 80000000000000000 : ℚ)
  supportValue := (11545161464734903 / 50000000000000000 : ℚ)
  supportSlope := (-8093248739014929 / 10000000000000000 : ℚ)
  oldCenter := (11545161464734903 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1955
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13534 : Cell := { cellDefaults with
  domain := ⟨(85150000000000003 / 100000000000000000 : ℚ), (170325000000000009 / 200000000000000000 : ℚ)⟩
  r := (4487158720581 / 10000000000000 : ℚ)
  w := (13033519168123 / 10000000000000 : ℚ)
  center := (68125000000000003 / 80000000000000000 : ℚ)
  supportValue := (23108087300978133 / 100000000000000000 : ℚ)
  supportSlope := (-2023856479096177 / 2500000000000000 : ℚ)
  oldCenter := (23108087300978133 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1956
  oldLo := (11549999999999999 / 50000000000000000 : ℚ)
  oldHi := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_602]
}

noncomputable def cell_13535 : Cell := { cellDefaults with
  domain := ⟨(170325000000000009 / 200000000000000000 : ℚ), (42587500000000003 / 50000000000000000 : ℚ)⟩
  r := (4487158720581 / 10000000000000 : ℚ)
  w := (13033519168123 / 10000000000000 : ℚ)
  center := (340675000000000021 / 400000000000000000 : ℚ)
  supportValue := (23097970214463043 / 100000000000000000 : ℚ)
  supportSlope := (-2023091569962367 / 2500000000000000 : ℚ)
  oldCenter := (23097970214463043 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1956
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_601, piece_602]
}

noncomputable def cell_13536 : Cell := { cellDefaults with
  domain := ⟨(42587500000000003 / 50000000000000000 : ℚ), (34075000000000003 / 40000000000000000 : ℚ)⟩
  r := (4487158720581 / 10000000000000 : ℚ)
  w := (13033519168123 / 10000000000000 : ℚ)
  center := (340725000000000027 / 400000000000000000 : ℚ)
  supportValue := (11543928383452777 / 50000000000000000 : ℚ)
  supportSlope := (-8088686485367009 / 10000000000000000 : ℚ)
  oldCenter := (11543928383452777 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1956
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13537 : Cell := { cellDefaults with
  domain := ⟨(34075000000000003 / 40000000000000000 : ℚ), (85200000000000009 / 100000000000000000 : ℚ)⟩
  r := (4487158720581 / 10000000000000 : ℚ)
  w := (13033519168123 / 10000000000000 : ℚ)
  center := (340775000000000033 / 400000000000000000 : ℚ)
  supportValue := (23077748490960237 / 100000000000000000 : ℚ)
  supportSlope := (-505284447033733 / 625000000000000 : ℚ)
  oldCenter := (23077748490960237 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1956
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13538 : Cell := { cellDefaults with
  domain := ⟨(85200000000000009 / 100000000000000000 : ℚ), (340850000000000031 / 400000000000000000 : ℚ)⟩
  r := (44853254213313 / 100000000000000 : ℚ)
  w := (6514711625891 / 5000000000000 : ℚ)
  center := (681650000000000067 / 800000000000000000 : ℚ)
  supportValue := (11547753491734701 / 50000000000000000 : ℚ)
  supportSlope := (-8088180434150081 / 10000000000000000 : ℚ)
  oldCenter := (11547753491734701 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1957
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (144518156424581 / 625000000000000 : ℚ)
  oldPieces := [piece_601, piece_602]
}

noncomputable def cell_13539 : Cell := { cellDefaults with
  domain := ⟨(340850000000000031 / 400000000000000000 : ℚ), (170450000000000013 / 200000000000000000 : ℚ)⟩
  r := (44853254213313 / 100000000000000 : ℚ)
  w := (6514711625891 / 5000000000000 : ℚ)
  center := (681750000000000057 / 800000000000000000 : ℚ)
  supportValue := (23085399233845413 / 100000000000000000 : ℚ)
  supportSlope := (-4042065309946401 / 5000000000000000 : ℚ)
  oldCenter := (23085399233845413 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1957
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13540 : Cell := { cellDefaults with
  domain := ⟨(170450000000000013 / 200000000000000000 : ℚ), (340950000000000021 / 400000000000000000 : ℚ)⟩
  r := (44853254213313 / 100000000000000 : ℚ)
  w := (6514711625891 / 5000000000000 : ℚ)
  center := (681850000000000047 / 800000000000000000 : ℚ)
  supportValue := (4615059329927203 / 20000000000000000 : ℚ)
  supportSlope := (-2020000060355611 / 2500000000000000 : ℚ)
  oldCenter := (4615059329927203 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1957
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13541 : Cell := { cellDefaults with
  domain := ⟨(340950000000000021 / 400000000000000000 : ℚ), (21312500000000001 / 25000000000000000 : ℚ)⟩
  r := (44853254213313 / 100000000000000 : ℚ)
  w := (6514711625891 / 5000000000000 : ℚ)
  center := (681950000000000037 / 800000000000000000 : ℚ)
  supportValue := (2883149903245447 / 12500000000000000 : ℚ)
  supportSlope := (-8075873761367011 / 10000000000000000 : ℚ)
  oldCenter := (2883149903245447 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1957
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13542 : Cell := { cellDefaults with
  domain := ⟨(21312500000000001 / 25000000000000000 : ℚ), (34105000000000001 / 40000000000000000 : ℚ)⟩
  r := (11208733988659 / 25000000000000 : ℚ)
  w := (325633180873 / 250000000000 : ℚ)
  center := (341025000000000013 / 400000000000000000 : ℚ)
  supportValue := (11541473495099637 / 50000000000000000 : ℚ)
  supportSlope := (-807958022404173 / 1000000000000000 : ℚ)
  oldCenter := (11541473495099637 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1958
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13543 : Cell := { cellDefaults with
  domain := ⟨(34105000000000001 / 40000000000000000 : ℚ), (85275000000000001 / 100000000000000000 : ℚ)⟩
  r := (11208733988659 / 25000000000000 : ℚ)
  w := (325633180873 / 250000000000 : ℚ)
  center := (341075000000000007 / 400000000000000000 : ℚ)
  supportValue := (2884106261361629 / 12500000000000000 : ℚ)
  supportSlope := (-8075454793120409 / 10000000000000000 : ℚ)
  oldCenter := (2884106261361629 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1958
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13544 : Cell := { cellDefaults with
  domain := ⟨(85275000000000001 / 100000000000000000 : ℚ), (170574999999999999 / 200000000000000000 : ℚ)⟩
  r := (11208733988659 / 25000000000000 : ℚ)
  w := (325633180873 / 250000000000 : ℚ)
  center := (341125000000000001 / 400000000000000000 : ℚ)
  supportValue := (23062758345943957 / 100000000000000000 : ℚ)
  supportSlope := (-4035666626605523 / 5000000000000000 : ℚ)
  oldCenter := (23062758345943957 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1958
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13545 : Cell := { cellDefaults with
  domain := ⟨(170574999999999999 / 200000000000000000 : ℚ), (42649999999999999 / 50000000000000000 : ℚ)⟩
  r := (11208733988659 / 25000000000000 : ℚ)
  w := (325633180873 / 250000000000 : ℚ)
  center := (68234999999999999 / 80000000000000000 : ℚ)
  supportValue := (1152633587524643 / 5000000000000000 : ℚ)
  supportSlope := (-252111776165467 / 312500000000000 : ℚ)
  oldCenter := (1152633587524643 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1958
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600, piece_601]
}

noncomputable def cell_13546 : Cell := { cellDefaults with
  domain := ⟨(42649999999999999 / 50000000000000000 : ℚ), (170624999999999999 / 200000000000000000 : ℚ)⟩
  r := (4481663170601 / 10000000000000 : ℚ)
  w := (13021230709979 / 10000000000000 : ℚ)
  center := (68244999999999999 / 80000000000000000 : ℚ)
  supportValue := (2307041031974093 / 10000000000000000 : ℚ)
  supportSlope := (-8070915230708051 / 10000000000000000 : ℚ)
  oldCenter := (2307041031974093 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1959
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13547 : Cell := { cellDefaults with
  domain := ⟨(170624999999999999 / 200000000000000000 : ℚ), (85325000000000001 / 100000000000000000 : ℚ)⟩
  r := (4481663170601 / 10000000000000 : ℚ)
  w := (13021230709979 / 10000000000000 : ℚ)
  center := (341275000000000001 / 400000000000000000 : ℚ)
  supportValue := (5765081061541267 / 25000000000000000 : ℚ)
  supportSlope := (-2016699654835177 / 2500000000000000 : ℚ)
  oldCenter := (5765081061541267 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1959
  oldLo := (11524999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_601]
}

noncomputable def cell_13548 : Cell := { cellDefaults with
  domain := ⟨(85325000000000001 / 100000000000000000 : ℚ), (34135000000000001 / 40000000000000000 : ℚ)⟩
  r := (4481663170601 / 10000000000000 : ℚ)
  w := (13021230709979 / 10000000000000 : ℚ)
  center := (341325000000000007 / 400000000000000000 : ℚ)
  supportValue := (11525121657965559 / 50000000000000000 : ℚ)
  supportSlope := (-8063415463505229 / 10000000000000000 : ℚ)
  oldCenter := (11525121657965559 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1959
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldHi := (11549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600, piece_601]
}

noncomputable def cell_13549 : Cell := { cellDefaults with
  domain := ⟨(34135000000000001 / 40000000000000000 : ℚ), (21337500000000001 / 25000000000000000 : ℚ)⟩
  r := (4481663170601 / 10000000000000 : ℚ)
  w := (13021230709979 / 10000000000000 : ℚ)
  center := (341375000000000013 / 400000000000000000 : ℚ)
  supportValue := (5760041414378883 / 25000000000000000 : ℚ)
  supportSlope := (-806010278859307 / 1000000000000000 : ℚ)
  oldCenter := (5760041414378883 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1959
  oldLo := (11499999999999999 / 50000000000000000 : ℚ)
  oldHi := (11524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_600]
}

theorem check_13500 : cell_13500.check = true := by
  decide +kernel

theorem check_13501 : cell_13501.check = true := by
  decide +kernel

theorem check_13502 : cell_13502.check = true := by
  decide +kernel

theorem check_13503 : cell_13503.check = true := by
  decide +kernel

theorem check_13504 : cell_13504.check = true := by
  decide +kernel

theorem check_13505 : cell_13505.check = true := by
  decide +kernel

theorem check_13506 : cell_13506.check = true := by
  decide +kernel

theorem check_13507 : cell_13507.check = true := by
  decide +kernel

theorem check_13508 : cell_13508.check = true := by
  decide +kernel

theorem check_13509 : cell_13509.check = true := by
  decide +kernel

theorem check_13510 : cell_13510.check = true := by
  decide +kernel

theorem check_13511 : cell_13511.check = true := by
  decide +kernel

theorem check_13512 : cell_13512.check = true := by
  decide +kernel

theorem check_13513 : cell_13513.check = true := by
  decide +kernel

theorem check_13514 : cell_13514.check = true := by
  decide +kernel

theorem check_13515 : cell_13515.check = true := by
  decide +kernel

theorem check_13516 : cell_13516.check = true := by
  decide +kernel

theorem check_13517 : cell_13517.check = true := by
  decide +kernel

theorem check_13518 : cell_13518.check = true := by
  decide +kernel

theorem check_13519 : cell_13519.check = true := by
  decide +kernel

theorem check_13520 : cell_13520.check = true := by
  decide +kernel

theorem check_13521 : cell_13521.check = true := by
  decide +kernel

theorem check_13522 : cell_13522.check = true := by
  decide +kernel

theorem check_13523 : cell_13523.check = true := by
  decide +kernel

theorem check_13524 : cell_13524.check = true := by
  decide +kernel

theorem check_13525 : cell_13525.check = true := by
  decide +kernel

theorem check_13526 : cell_13526.check = true := by
  decide +kernel

theorem check_13527 : cell_13527.check = true := by
  decide +kernel

theorem check_13528 : cell_13528.check = true := by
  decide +kernel

theorem check_13529 : cell_13529.check = true := by
  decide +kernel

theorem check_13530 : cell_13530.check = true := by
  decide +kernel

theorem check_13531 : cell_13531.check = true := by
  decide +kernel

theorem check_13532 : cell_13532.check = true := by
  decide +kernel

theorem check_13533 : cell_13533.check = true := by
  decide +kernel

theorem check_13534 : cell_13534.check = true := by
  decide +kernel

theorem check_13535 : cell_13535.check = true := by
  decide +kernel

theorem check_13536 : cell_13536.check = true := by
  decide +kernel

theorem check_13537 : cell_13537.check = true := by
  decide +kernel

theorem check_13538 : cell_13538.check = true := by
  decide +kernel

theorem check_13539 : cell_13539.check = true := by
  decide +kernel

theorem check_13540 : cell_13540.check = true := by
  decide +kernel

theorem check_13541 : cell_13541.check = true := by
  decide +kernel

theorem check_13542 : cell_13542.check = true := by
  decide +kernel

theorem check_13543 : cell_13543.check = true := by
  decide +kernel

theorem check_13544 : cell_13544.check = true := by
  decide +kernel

theorem check_13545 : cell_13545.check = true := by
  decide +kernel

theorem check_13546 : cell_13546.check = true := by
  decide +kernel

theorem check_13547 : cell_13547.check = true := by
  decide +kernel

theorem check_13548 : cell_13548.check = true := by
  decide +kernel

theorem check_13549 : cell_13549.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13500, cell_13501, cell_13502, cell_13503, cell_13504, cell_13505, cell_13506, cell_13507, cell_13508, cell_13509, cell_13510, cell_13511, cell_13512, cell_13513, cell_13514, cell_13515, cell_13516, cell_13517, cell_13518, cell_13519, cell_13520, cell_13521, cell_13522, cell_13523, cell_13524, cell_13525, cell_13526, cell_13527, cell_13528, cell_13529, cell_13530, cell_13531, cell_13532, cell_13533, cell_13534, cell_13535, cell_13536, cell_13537, cell_13538, cell_13539, cell_13540, cell_13541, cell_13542, cell_13543, cell_13544, cell_13545, cell_13546, cell_13547, cell_13548, cell_13549]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13500, check_13501, check_13502, check_13503, check_13504, check_13505, check_13506, check_13507, check_13508, check_13509, check_13510, check_13511, check_13512, check_13513, check_13514, check_13515, check_13516, check_13517, check_13518, check_13519, check_13520, check_13521, check_13522, check_13523, check_13524, check_13525, check_13526, check_13527, check_13528, check_13529, check_13530, check_13531, check_13532, check_13533, check_13534, check_13535, check_13536, check_13537, check_13538, check_13539, check_13540, check_13541, check_13542, check_13543, check_13544, check_13545, check_13546, check_13547, check_13548, check_13549, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0270

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0270
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0270
open AnalyticBounds.ExpressionCertificate

theorem linked_13500 : Linked cell_13500 pieces := by
  refine ⟨piece_1946,piece_1946_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13500,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_605_mem

theorem linked_13501 : Linked cell_13501 pieces := by
  refine ⟨piece_1946,piece_1946_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13501,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_604_mem
    · exact piece_605_mem

theorem linked_13502 : Linked cell_13502 pieces := by
  refine ⟨piece_1946,piece_1946_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13502,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_604_mem

theorem linked_13503 : Linked cell_13503 pieces := by
  refine ⟨piece_1947,piece_1947_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13503,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_605_mem

theorem linked_13504 : Linked cell_13504 pieces := by
  refine ⟨piece_1947,piece_1947_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13504,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_604_mem
    · exact piece_605_mem

theorem linked_13505 : Linked cell_13505 pieces := by
  refine ⟨piece_1947,piece_1947_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13505,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_604_mem

theorem linked_13506 : Linked cell_13506 pieces := by
  refine ⟨piece_1947,piece_1947_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13506,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_604_mem

theorem linked_13507 : Linked cell_13507 pieces := by
  refine ⟨piece_1948,piece_1948_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13507,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_604_mem
    · exact piece_605_mem

theorem linked_13508 : Linked cell_13508 pieces := by
  refine ⟨piece_1948,piece_1948_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13508,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_604_mem

theorem linked_13509 : Linked cell_13509 pieces := by
  refine ⟨piece_1948,piece_1948_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13509,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_604_mem

theorem linked_13510 : Linked cell_13510 pieces := by
  refine ⟨piece_1948,piece_1948_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13510,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_604_mem

theorem linked_13511 : Linked cell_13511 pieces := by
  refine ⟨piece_1949,piece_1949_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13511,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_604_mem

theorem linked_13512 : Linked cell_13512 pieces := by
  refine ⟨piece_1949,piece_1949_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13512,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_604_mem

theorem linked_13513 : Linked cell_13513 pieces := by
  refine ⟨piece_1949,piece_1949_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13513,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_604_mem

theorem linked_13514 : Linked cell_13514 pieces := by
  refine ⟨piece_1949,piece_1949_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13514,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_603_mem
    · exact piece_604_mem

theorem linked_13515 : Linked cell_13515 pieces := by
  refine ⟨piece_1950,piece_1950_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13515,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_604_mem

theorem linked_13516 : Linked cell_13516 pieces := by
  refine ⟨piece_1950,piece_1950_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13516,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_604_mem

theorem linked_13517 : Linked cell_13517 pieces := by
  refine ⟨piece_1950,piece_1950_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13517,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_603_mem
    · exact piece_604_mem

theorem linked_13518 : Linked cell_13518 pieces := by
  refine ⟨piece_1950,piece_1950_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13518,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_603_mem

theorem linked_13519 : Linked cell_13519 pieces := by
  refine ⟨piece_1951,piece_1951_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13519,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_604_mem

theorem linked_13520 : Linked cell_13520 pieces := by
  refine ⟨piece_1951,piece_1951_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13520,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_603_mem
    · exact piece_604_mem

theorem linked_13521 : Linked cell_13521 pieces := by
  refine ⟨piece_1951,piece_1951_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13521,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_603_mem

theorem linked_13522 : Linked cell_13522 pieces := by
  refine ⟨piece_1951,piece_1951_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13522,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_603_mem

theorem linked_13523 : Linked cell_13523 pieces := by
  refine ⟨piece_1952,piece_1952_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13523,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_603_mem
    · exact piece_604_mem

theorem linked_13524 : Linked cell_13524 pieces := by
  refine ⟨piece_1952,piece_1952_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13524,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_603_mem

theorem linked_13525 : Linked cell_13525 pieces := by
  refine ⟨piece_1952,piece_1952_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13525,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_602_mem
    · exact piece_603_mem

theorem linked_13526 : Linked cell_13526 pieces := by
  refine ⟨piece_1952,piece_1952_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13526,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_602_mem

theorem linked_13527 : Linked cell_13527 pieces := by
  refine ⟨piece_1953,piece_1953_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13527,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_603_mem

theorem linked_13528 : Linked cell_13528 pieces := by
  refine ⟨piece_1954,piece_1954_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13528,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_602_mem
    · exact piece_603_mem

theorem linked_13529 : Linked cell_13529 pieces := by
  refine ⟨piece_1954,piece_1954_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13529,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_601_mem
    · exact piece_602_mem

theorem linked_13530 : Linked cell_13530 pieces := by
  refine ⟨piece_1955,piece_1955_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13530,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_602_mem
    · exact piece_603_mem

theorem linked_13531 : Linked cell_13531 pieces := by
  refine ⟨piece_1955,piece_1955_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13531,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_602_mem

theorem linked_13532 : Linked cell_13532 pieces := by
  refine ⟨piece_1955,piece_1955_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13532,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_601_mem
    · exact piece_602_mem

theorem linked_13533 : Linked cell_13533 pieces := by
  refine ⟨piece_1955,piece_1955_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13533,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_601_mem

theorem linked_13534 : Linked cell_13534 pieces := by
  refine ⟨piece_1956,piece_1956_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13534,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_602_mem

theorem linked_13535 : Linked cell_13535 pieces := by
  refine ⟨piece_1956,piece_1956_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13535,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_601_mem
    · exact piece_602_mem

theorem linked_13536 : Linked cell_13536 pieces := by
  refine ⟨piece_1956,piece_1956_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13536,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_601_mem

theorem linked_13537 : Linked cell_13537 pieces := by
  refine ⟨piece_1956,piece_1956_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13537,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_601_mem

theorem linked_13538 : Linked cell_13538 pieces := by
  refine ⟨piece_1957,piece_1957_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13538,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_601_mem
    · exact piece_602_mem

theorem linked_13539 : Linked cell_13539 pieces := by
  refine ⟨piece_1957,piece_1957_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13539,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_601_mem

theorem linked_13540 : Linked cell_13540 pieces := by
  refine ⟨piece_1957,piece_1957_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13540,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_601_mem

theorem linked_13541 : Linked cell_13541 pieces := by
  refine ⟨piece_1957,piece_1957_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13541,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_601_mem

theorem linked_13542 : Linked cell_13542 pieces := by
  refine ⟨piece_1958,piece_1958_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13542,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_601_mem

theorem linked_13543 : Linked cell_13543 pieces := by
  refine ⟨piece_1958,piece_1958_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13543,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_601_mem

theorem linked_13544 : Linked cell_13544 pieces := by
  refine ⟨piece_1958,piece_1958_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13544,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_601_mem

theorem linked_13545 : Linked cell_13545 pieces := by
  refine ⟨piece_1958,piece_1958_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13545,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_600_mem
    · exact piece_601_mem

theorem linked_13546 : Linked cell_13546 pieces := by
  refine ⟨piece_1959,piece_1959_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13546,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_601_mem

theorem linked_13547 : Linked cell_13547 pieces := by
  refine ⟨piece_1959,piece_1959_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13547,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_601_mem

theorem linked_13548 : Linked cell_13548 pieces := by
  refine ⟨piece_1959,piece_1959_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13548,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_600_mem
    · exact piece_601_mem

theorem linked_13549 : Linked cell_13549 pieces := by
  refine ⟨piece_1959,piece_1959_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13549,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_600_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0270.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0270.cells,List.forall_mem_cons]
  exact ⟨linked_13500, linked_13501, linked_13502, linked_13503, linked_13504, linked_13505, linked_13506, linked_13507, linked_13508, linked_13509, linked_13510, linked_13511, linked_13512, linked_13513, linked_13514, linked_13515, linked_13516, linked_13517, linked_13518, linked_13519, linked_13520, linked_13521, linked_13522, linked_13523, linked_13524, linked_13525, linked_13526, linked_13527, linked_13528, linked_13529, linked_13530, linked_13531, linked_13532, linked_13533, linked_13534, linked_13535, linked_13536, linked_13537, linked_13538, linked_13539, linked_13540, linked_13541, linked_13542, linked_13543, linked_13544, linked_13545, linked_13546, linked_13547, linked_13548, linked_13549, by simp⟩

theorem covered : covers (33885000000000003 / 40000000000000000 : ℚ) (21337500000000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0270.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0270
