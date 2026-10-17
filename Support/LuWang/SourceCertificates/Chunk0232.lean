import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0232
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(49870000000000003 / 80000000000000000 : ℚ), (12470000000000001 / 20000000000000000 : ℚ)⟩
  branch := .left
  r := (27205756270571 / 50000000000000 : ℚ)
  w := (1728025748159 / 1250000000000 : ℚ)
  center := (99750000000000007 / 160000000000000000 : ℚ)
  supportValue := (32959841034361387 / 100000000000000000 : ℚ)
  supportSlope := (-1240683799257223 / 1000000000000000 : ℚ)
  oldCenter := (32959841034361387 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1458
  oldLo := (32800000000000001 / 100000000000000000 : ℚ)
  oldHi := (32850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_814]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_11600 : Cell := { cellDefaults with
  r := (27218774767471 / 50000000000000 : ℚ)
  w := (13826721872869 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1457
  oldLo := (16475000000000001 / 50000000000000000 : ℚ)
  oldHi := (16500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_817]
}

noncomputable def cell_11601 : Cell := { cellDefaults with
  domain := ⟨(12470000000000001 / 20000000000000000 : ℚ), (9977642458100559 / 16000000000000000 : ℚ)⟩
  center := (99768212290502799 / 160000000000000000 : ℚ)
  supportValue := (659551865000951 / 2000000000000000 : ℚ)
  supportSlope := (-776071995629887 / 625000000000000 : ℚ)
  oldCenter := (659551865000951 / 2000000000000000 : ℚ)
  oldLo := (16475000000000001 / 50000000000000000 : ℚ)
  oldHi := (16500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_817]
}

noncomputable def cell_11602 : Cell := { cellDefaults with
  domain := ⟨(9977642458100559 / 16000000000000000 : ℚ), (24948212290502793 / 40000000000000000 : ℚ)⟩
  center := (99784636871508381 / 160000000000000000 : ℚ)
  supportValue := (3296485258074073 / 10000000000000000 : ℚ)
  supportSlope := (-6202743910384043 / 5000000000000000 : ℚ)
  oldCenter := (3296485258074073 / 10000000000000000 : ℚ)
  oldLo := (16475000000000001 / 50000000000000000 : ℚ)
  oldHi := (16500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_817]
}

noncomputable def cell_11603 : Cell := { cellDefaults with
  domain := ⟨(24948212290502793 / 40000000000000000 : ℚ), (49904636871508377 / 80000000000000000 : ℚ)⟩
  center := (99801061452513963 / 160000000000000000 : ℚ)
  supportValue := (32952146931344883 / 100000000000000000 : ℚ)
  supportSlope := (-12399735069772153 / 10000000000000000 : ℚ)
  oldCenter := (32952146931344883 / 100000000000000000 : ℚ)
  oldLo := (32900000000000001 / 100000000000000000 : ℚ)
  oldHi := (16500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_816, piece_817]
}

noncomputable def cell_11604 : Cell := { cellDefaults with
  domain := ⟨(49904636871508377 / 80000000000000000 : ℚ), (1559776536312849 / 2500000000000000 : ℚ)⟩
  center := (19963497206703909 / 32000000000000000 : ℚ)
  supportValue := (16469696017439217 / 50000000000000000 : ℚ)
  supportSlope := (-2479955434678177 / 2000000000000000 : ℚ)
  oldCenter := (16469696017439217 / 50000000000000000 : ℚ)
  oldLo := (32900000000000001 / 100000000000000000 : ℚ)
  oldHi := (16475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_816]
}

noncomputable def cell_11605 : Cell := { cellDefaults with
  domain := ⟨(1559776536312849 / 2500000000000000 : ℚ), (78 / 125 : ℚ)⟩
  center := (3119776536312849 / 5000000000000000 : ℚ)
  supportValue := (1646374553572369 / 5000000000000000 : ℚ)
  supportSlope := (-12388848970242807 / 10000000000000000 : ℚ)
  oldCenter := (1646374553572369 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1459
  oldLo := (32900000000000001 / 100000000000000000 : ℚ)
  oldHi := (16475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_816]
}

noncomputable def cell_11606 : Cell := { cellDefaults with
  domain := ⟨(78 / 125 : ℚ), (124825000000000003 / 200000000000000000 : ℚ)⟩
  r := (10877100351159 / 20000000000000 : ℚ)
  w := (13821690290127 / 10000000000000 : ℚ)
  center := (249625000000000003 / 400000000000000000 : ℚ)
  supportValue := (4118259508006307 / 12500000000000000 : ℚ)
  supportSlope := (-12395664292011621 / 10000000000000000 : ℚ)
  oldCenter := (4118259508006307 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1460
  oldLo := (32900000000000001 / 100000000000000000 : ℚ)
  oldHi := (16500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_816, piece_817]
}

noncomputable def cell_11607 : Cell := { cellDefaults with
  domain := ⟨(124825000000000003 / 200000000000000000 : ℚ), (62425000000000003 / 100000000000000000 : ℚ)⟩
  r := (10877100351159 / 20000000000000 : ℚ)
  w := (13821690290127 / 10000000000000 : ℚ)
  center := (249675000000000009 / 400000000000000000 : ℚ)
  supportValue := (32930561927890617 / 100000000000000000 : ℚ)
  supportSlope := (-774109226338489 / 625000000000000 : ℚ)
  oldCenter := (32930561927890617 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1460
  oldLo := (32900000000000001 / 100000000000000000 : ℚ)
  oldHi := (16475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_816]
}

noncomputable def cell_11608 : Cell := { cellDefaults with
  domain := ⟨(62425000000000003 / 100000000000000000 : ℚ), (124875000000000009 / 200000000000000000 : ℚ)⟩
  r := (10877100351159 / 20000000000000 : ℚ)
  w := (13821690290127 / 10000000000000 : ℚ)
  center := (49945000000000003 / 80000000000000000 : ℚ)
  supportValue := (4114386075646137 / 12500000000000000 : ℚ)
  supportSlope := (-193305873501919 / 156250000000000 : ℚ)
  oldCenter := (4114386075646137 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1460
  oldLo := (32900000000000001 / 100000000000000000 : ℚ)
  oldHi := (16475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_816]
}

noncomputable def cell_11609 : Cell := { cellDefaults with
  domain := ⟨(124875000000000009 / 200000000000000000 : ℚ), (31225000000000003 / 50000000000000000 : ℚ)⟩
  r := (10877100351159 / 20000000000000 : ℚ)
  w := (13821690290127 / 10000000000000 : ℚ)
  center := (249775000000000021 / 400000000000000000 : ℚ)
  supportValue := (32899655452467497 / 100000000000000000 : ℚ)
  supportSlope := (-6183344380480773 / 5000000000000000 : ℚ)
  oldCenter := (32899655452467497 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1460
  oldLo := (32850000000000001 / 100000000000000000 : ℚ)
  oldHi := (16475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_815, piece_816]
}

noncomputable def cell_11610 : Cell := { cellDefaults with
  domain := ⟨(31225000000000003 / 50000000000000000 : ℚ), (124925000000000009 / 200000000000000000 : ℚ)⟩
  r := (13589881324651 / 25000000000000 : ℚ)
  w := (13819188853799 / 10000000000000 : ℚ)
  center := (249825000000000021 / 400000000000000000 : ℚ)
  supportValue := (3291591807994933 / 10000000000000000 : ℚ)
  supportSlope := (-3019148294237 / 2441406250000 : ℚ)
  oldCenter := (3291591807994933 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1461
  oldLo := (32900000000000001 / 100000000000000000 : ℚ)
  oldHi := (16475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_816]
}

noncomputable def cell_11611 : Cell := { cellDefaults with
  domain := ⟨(124925000000000009 / 200000000000000000 : ℚ), (62475000000000003 / 100000000000000000 : ℚ)⟩
  r := (13589881324651 / 25000000000000 : ℚ)
  w := (13819188853799 / 10000000000000 : ℚ)
  center := (49975000000000003 / 80000000000000000 : ℚ)
  supportValue := (6580098377948913 / 20000000000000000 : ℚ)
  supportSlope := (-12360600794140513 / 10000000000000000 : ℚ)
  oldCenter := (6580098377948913 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1461
  oldLo := (32850000000000001 / 100000000000000000 : ℚ)
  oldHi := (16475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_815, piece_816]
}

noncomputable def cell_11612 : Cell := { cellDefaults with
  domain := ⟨(62475000000000003 / 100000000000000000 : ℚ), (124975000000000003 / 200000000000000000 : ℚ)⟩
  r := (13589881324651 / 25000000000000 : ℚ)
  w := (13819188853799 / 10000000000000 : ℚ)
  center := (249925000000000009 / 400000000000000000 : ℚ)
  supportValue := (3288501594886837 / 10000000000000000 : ℚ)
  supportSlope := (-6177874085238807 / 5000000000000000 : ℚ)
  oldCenter := (3288501594886837 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1461
  oldLo := (32850000000000001 / 100000000000000000 : ℚ)
  oldHi := (32900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_815]
}

noncomputable def cell_11613 : Cell := { cellDefaults with
  domain := ⟨(124975000000000003 / 200000000000000000 : ℚ), (5 / 8 : ℚ)⟩
  r := (13589881324651 / 25000000000000 : ℚ)
  w := (13819188853799 / 10000000000000 : ℚ)
  center := (249975000000000003 / 400000000000000000 : ℚ)
  supportValue := (32869580116629593 / 100000000000000000 : ℚ)
  supportSlope := (-6170795309562067 / 5000000000000000 : ℚ)
  oldCenter := (32869580116629593 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1461
  oldLo := (32850000000000001 / 100000000000000000 : ℚ)
  oldHi := (32900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_815]
}

noncomputable def cell_11614 : Cell := { cellDefaults with
  domain := ⟨(5 / 8 : ℚ), (125025000000000003 / 200000000000000000 : ℚ)⟩
  r := (5433357333859 / 10000000000000 : ℚ)
  w := (13816688515747 / 10000000000000 : ℚ)
  center := (250025000000000003 / 400000000000000000 : ℚ)
  supportValue := (3288585576744649 / 10000000000000000 : ℚ)
  supportSlope := (-3087656651447797 / 2500000000000000 : ℚ)
  oldCenter := (3288585576744649 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1462
  oldLo := (32850000000000001 / 100000000000000000 : ℚ)
  oldHi := (32900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_815]
}

noncomputable def cell_11615 : Cell := { cellDefaults with
  domain := ⟨(125025000000000003 / 200000000000000000 : ℚ), (62525000000000003 / 100000000000000000 : ℚ)⟩
  r := (5433357333859 / 10000000000000 : ℚ)
  w := (13816688515747 / 10000000000000 : ℚ)
  center := (250075000000000009 / 400000000000000000 : ℚ)
  supportValue := (821760658263731 / 2500000000000000 : ℚ)
  supportSlope := (-12336479624613559 / 10000000000000000 : ℚ)
  oldCenter := (821760658263731 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1462
  oldLo := (32850000000000001 / 100000000000000000 : ℚ)
  oldHi := (32900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_815]
}

noncomputable def cell_11616 : Cell := { cellDefaults with
  domain := ⟨(62525000000000003 / 100000000000000000 : ℚ), (125075000000000009 / 200000000000000000 : ℚ)⟩
  r := (5433357333859 / 10000000000000 : ℚ)
  w := (13816688515747 / 10000000000000 : ℚ)
  center := (50025000000000003 / 80000000000000000 : ℚ)
  supportValue := (6571007507888993 / 20000000000000000 : ℚ)
  supportSlope := (-154068514841547 / 125000000000000 : ℚ)
  oldCenter := (6571007507888993 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1462
  oldHi := (32900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_814, piece_815]
}

noncomputable def cell_11617 : Cell := { cellDefaults with
  domain := ⟨(125075000000000009 / 200000000000000000 : ℚ), (31275000000000003 / 50000000000000000 : ℚ)⟩
  r := (5433357333859 / 10000000000000 : ℚ)
  w := (13816688515747 / 10000000000000 : ℚ)
  center := (250175000000000021 / 400000000000000000 : ℚ)
  supportValue := (3283960546559707 / 10000000000000000 : ℚ)
  supportSlope := (-3081477828871989 / 2500000000000000 : ℚ)
  oldCenter := (3283960546559707 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1462
  oldPieces := [piece_814]
}

noncomputable def cell_11618 : Cell := { cellDefaults with
  domain := ⟨(31275000000000003 / 50000000000000000 : ℚ), (125125000000000009 / 200000000000000000 : ℚ)⟩
  r := (27153826375151 / 50000000000000 : ℚ)
  w := (13814198232813 / 10000000000000 : ℚ)
  center := (250225000000000021 / 400000000000000000 : ℚ)
  supportValue := (410698256586917 / 1250000000000000 : ℚ)
  supportSlope := (-3079853611951769 / 2500000000000000 : ℚ)
  oldCenter := (410698256586917 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1463
  oldHi := (32900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_814, piece_815]
}

noncomputable def cell_11619 : Cell := { cellDefaults with
  domain := ⟨(125125000000000009 / 200000000000000000 : ℚ), (62575000000000003 / 100000000000000000 : ℚ)⟩
  r := (27153826375151 / 50000000000000 : ℚ)
  w := (13814198232813 / 10000000000000 : ℚ)
  center := (50055000000000003 / 80000000000000000 : ℚ)
  supportValue := (821010900714413 / 2500000000000000 : ℚ)
  supportSlope := (-1232080338733047 / 1000000000000000 : ℚ)
  oldCenter := (821010900714413 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1463
  oldPieces := [piece_814]
}

noncomputable def cell_11620 : Cell := { cellDefaults with
  domain := ⟨(62575000000000003 / 100000000000000000 : ℚ), (125175000000000003 / 200000000000000000 : ℚ)⟩
  r := (27153826375151 / 50000000000000 : ℚ)
  w := (13814198232813 / 10000000000000 : ℚ)
  center := (250325000000000009 / 400000000000000000 : ℚ)
  supportValue := (8206260966774781 / 25000000000000000 : ℚ)
  supportSlope := (-2461332444992987 / 2000000000000000 : ℚ)
  oldCenter := (8206260966774781 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1463
  oldPieces := [piece_814]
}

noncomputable def cell_11621 : Cell := { cellDefaults with
  domain := ⟨(125175000000000003 / 200000000000000000 : ℚ), (313 / 500 : ℚ)⟩
  r := (27153826375151 / 50000000000000 : ℚ)
  w := (13814198232813 / 10000000000000 : ℚ)
  center := (250375000000000003 / 400000000000000000 : ℚ)
  supportValue := (1640483467277437 / 5000000000000000 : ℚ)
  supportSlope := (-2458515883193197 / 2000000000000000 : ℚ)
  oldCenter := (1640483467277437 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1463
  oldPieces := [piece_814]
}

noncomputable def cell_11622 : Cell := { cellDefaults with
  domain := ⟨(313 / 500 : ℚ), (125225000000000003 / 200000000000000000 : ℚ)⟩
  r := (6785220391277 / 12500000000000 : ℚ)
  w := (1726464636747 / 1250000000000 : ℚ)
  center := (250425000000000003 / 400000000000000000 : ℚ)
  supportValue := (32825853496087737 / 100000000000000000 : ℚ)
  supportSlope := (-6150773638874769 / 5000000000000000 : ℚ)
  oldCenter := (32825853496087737 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1464
  oldPieces := [piece_814]
}

noncomputable def cell_11623 : Cell := { cellDefaults with
  domain := ⟨(125225000000000003 / 200000000000000000 : ℚ), (62625000000000003 / 100000000000000000 : ℚ)⟩
  r := (6785220391277 / 12500000000000 : ℚ)
  w := (1726464636747 / 1250000000000 : ℚ)
  center := (250475000000000009 / 400000000000000000 : ℚ)
  supportValue := (328104853615947 / 1000000000000000 : ℚ)
  supportSlope := (-1535934382328279 / 1250000000000000 : ℚ)
  oldCenter := (328104853615947 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1464
  oldPieces := [piece_814]
}

noncomputable def cell_11624 : Cell := { cellDefaults with
  domain := ⟨(62625000000000003 / 100000000000000000 : ℚ), (125275000000000009 / 200000000000000000 : ℚ)⟩
  r := (6785220391277 / 12500000000000 : ℚ)
  w := (1726464636747 / 1250000000000 : ℚ)
  center := (50105000000000003 / 80000000000000000 : ℚ)
  supportValue := (32795150722889127 / 100000000000000000 : ℚ)
  supportSlope := (-12287872494275067 / 10000000000000000 : ℚ)
  oldCenter := (32795150722889127 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1464
  oldLo := (32750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_813, piece_814]
}

noncomputable def cell_11625 : Cell := { cellDefaults with
  domain := ⟨(125275000000000009 / 200000000000000000 : ℚ), (31325000000000003 / 50000000000000000 : ℚ)⟩
  r := (6785220391277 / 12500000000000 : ℚ)
  w := (1726464636747 / 1250000000000 : ℚ)
  center := (250575000000000021 / 400000000000000000 : ℚ)
  supportValue := (3277977271670853 / 10000000000000000 : ℚ)
  supportSlope := (-613849348070887 / 500000000000000 : ℚ)
  oldCenter := (3277977271670853 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1464
  oldLo := (32750000000000001 / 100000000000000000 : ℚ)
  oldHi := (32800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_813]
}

noncomputable def cell_11626 : Cell := { cellDefaults with
  domain := ⟨(31325000000000003 / 50000000000000000 : ℚ), (125325000000000009 / 200000000000000000 : ℚ)⟩
  r := (27127949691509 / 50000000000000 : ℚ)
  w := (13809237662897 / 10000000000000 : ℚ)
  center := (250625000000000021 / 400000000000000000 : ℚ)
  supportValue := (32795967800021303 / 100000000000000000 : ℚ)
  supportSlope := (-1535229886762319 / 1250000000000000 : ℚ)
  oldCenter := (32795967800021303 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1465
  oldLo := (32750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_813, piece_814]
}

noncomputable def cell_11627 : Cell := { cellDefaults with
  domain := ⟨(125325000000000009 / 200000000000000000 : ℚ), (62675000000000003 / 100000000000000000 : ℚ)⟩
  r := (27127949691509 / 50000000000000 : ℚ)
  w := (13809237662897 / 10000000000000 : ℚ)
  center := (50135000000000003 / 80000000000000000 : ℚ)
  supportValue := (32780596155647157 / 100000000000000000 : ℚ)
  supportSlope := (-6135951166848689 / 5000000000000000 : ℚ)
  oldCenter := (32780596155647157 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1465
  oldLo := (32750000000000001 / 100000000000000000 : ℚ)
  oldHi := (32800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_813]
}

noncomputable def cell_11628 : Cell := { cellDefaults with
  domain := ⟨(62675000000000003 / 100000000000000000 : ℚ), (125375000000000003 / 200000000000000000 : ℚ)⟩
  r := (27127949691509 / 50000000000000 : ℚ)
  w := (13809237662897 / 10000000000000 : ℚ)
  center := (250725000000000009 / 400000000000000000 : ℚ)
  supportValue := (655305301192571 / 2000000000000000 : ℚ)
  supportSlope := (-1532232306131937 / 1250000000000000 : ℚ)
  oldCenter := (655305301192571 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1465
  oldLo := (32750000000000001 / 100000000000000000 : ℚ)
  oldHi := (32800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_813]
}

noncomputable def cell_11629 : Cell := { cellDefaults with
  domain := ⟨(125375000000000003 / 200000000000000000 : ℚ), (627 / 1000 : ℚ)⟩
  r := (27127949691509 / 50000000000000 : ℚ)
  w := (13809237662897 / 10000000000000 : ℚ)
  center := (250775000000000003 / 400000000000000000 : ℚ)
  supportValue := (3274997432283287 / 10000000000000000 : ℚ)
  supportSlope := (-12252771682216639 / 10000000000000000 : ℚ)
  oldCenter := (3274997432283287 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1465
  oldLo := (32700000000000001 / 100000000000000000 : ℚ)
  oldHi := (32800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_812, piece_813]
}

noncomputable def cell_11630 : Cell := { cellDefaults with
  domain := ⟨(627 / 1000 : ℚ), (125425000000000003 / 200000000000000000 : ℚ)⟩
  r := (1355751720087 / 2500000000000 : ℚ)
  w := (431461634971 / 312500000000 : ℚ)
  center := (250825000000000003 / 400000000000000000 : ℚ)
  supportValue := (3276605487763197 / 10000000000000000 : ℚ)
  supportSlope := (-98022054581423 / 80000000000000 : ℚ)
  oldCenter := (3276605487763197 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1466
  oldLo := (32750000000000001 / 100000000000000000 : ℚ)
  oldHi := (32800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_813]
}

noncomputable def cell_11631 : Cell := { cellDefaults with
  domain := ⟨(125425000000000003 / 200000000000000000 : ℚ), (62725000000000003 / 100000000000000000 : ℚ)⟩
  r := (1355751720087 / 2500000000000 : ℚ)
  w := (431461634971 / 312500000000 : ℚ)
  center := (250875000000000009 / 400000000000000000 : ℚ)
  supportValue := (32750770596194323 / 100000000000000000 : ℚ)
  supportSlope := (-1224675960199337 / 1000000000000000 : ℚ)
  oldCenter := (32750770596194323 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1466
  oldLo := (32700000000000001 / 100000000000000000 : ℚ)
  oldHi := (32800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_812, piece_813]
}

noncomputable def cell_11632 : Cell := { cellDefaults with
  domain := ⟨(62725000000000003 / 100000000000000000 : ℚ), (125475000000000009 / 200000000000000000 : ℚ)⟩
  r := (1355751720087 / 2500000000000 : ℚ)
  w := (431461634971 / 312500000000 : ℚ)
  center := (50185000000000003 / 80000000000000000 : ℚ)
  supportValue := (3273543693863409 / 10000000000000000 : ℚ)
  supportSlope := (-1224239696351179 / 1000000000000000 : ℚ)
  oldCenter := (3273543693863409 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1466
  oldLo := (32700000000000001 / 100000000000000000 : ℚ)
  oldHi := (32750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_812]
}

noncomputable def cell_11633 : Cell := { cellDefaults with
  domain := ⟨(125475000000000009 / 200000000000000000 : ℚ), (31375000000000003 / 50000000000000000 : ℚ)⟩
  r := (1355751720087 / 2500000000000 : ℚ)
  w := (431461634971 / 312500000000 : ℚ)
  center := (250975000000000021 / 400000000000000000 : ℚ)
  supportValue := (1636007135909791 / 5000000000000000 : ℚ)
  supportSlope := (-3057090733715373 / 2500000000000000 : ℚ)
  oldCenter := (1636007135909791 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1466
  oldLo := (32700000000000001 / 100000000000000000 : ℚ)
  oldHi := (32750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_812]
}

noncomputable def cell_11634 : Cell := { cellDefaults with
  domain := ⟨(31375000000000003 / 50000000000000000 : ℚ), (125525000000000009 / 200000000000000000 : ℚ)⟩
  r := (3387766461173 / 6250000000000 : ℚ)
  w := (862769189547 / 625000000000 : ℚ)
  center := (251025000000000021 / 400000000000000000 : ℚ)
  supportValue := (3273623825924611 / 10000000000000000 : ℚ)
  supportSlope := (-3059329772057507 / 2500000000000000 : ℚ)
  oldCenter := (3273623825924611 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1467
  oldLo := (32700000000000001 / 100000000000000000 : ℚ)
  oldHi := (32750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_812]
}

noncomputable def cell_11635 : Cell := { cellDefaults with
  domain := ⟨(125525000000000009 / 200000000000000000 : ℚ), (62775000000000003 / 100000000000000000 : ℚ)⟩
  r := (3387766461173 / 6250000000000 : ℚ)
  w := (862769189547 / 625000000000 : ℚ)
  center := (50215000000000003 / 80000000000000000 : ℚ)
  supportValue := (654419007591207 / 2000000000000000 : ℚ)
  supportSlope := (-6111647796696773 / 5000000000000000 : ℚ)
  oldCenter := (654419007591207 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1467
  oldLo := (32700000000000001 / 100000000000000000 : ℚ)
  oldHi := (32750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_812]
}

noncomputable def cell_11636 : Cell := { cellDefaults with
  domain := ⟨(62775000000000003 / 100000000000000000 : ℚ), (125575000000000003 / 200000000000000000 : ℚ)⟩
  r := (3387766461173 / 6250000000000 : ℚ)
  w := (862769189547 / 625000000000 : ℚ)
  center := (251125000000000009 / 400000000000000000 : ℚ)
  supportValue := (3270570288697111 / 10000000000000000 : ℚ)
  supportSlope := (-6105802901013767 / 5000000000000000 : ℚ)
  oldCenter := (3270570288697111 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1467
  oldLo := (32650000000000001 / 100000000000000000 : ℚ)
  oldHi := (32750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_811, piece_812]
}

noncomputable def cell_11637 : Cell := { cellDefaults with
  domain := ⟨(125575000000000003 / 200000000000000000 : ℚ), (157 / 250 : ℚ)⟩
  r := (3387766461173 / 6250000000000 : ℚ)
  w := (862769189547 / 625000000000 : ℚ)
  center := (251175000000000003 / 400000000000000000 : ℚ)
  supportValue := (3269041313827569 / 10000000000000000 : ℚ)
  supportSlope := (-6106524794083533 / 5000000000000000 : ℚ)
  oldCenter := (3269041313827569 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1467
  oldLo := (32650000000000001 / 100000000000000000 : ℚ)
  oldHi := (32700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_811]
}

noncomputable def cell_11638 : Cell := { cellDefaults with
  domain := ⟨(157 / 250 : ℚ), (125625000000000003 / 200000000000000000 : ℚ)⟩
  r := (2708924456541 / 5000000000000 : ℚ)
  w := (690092617821 / 500000000000 : ℚ)
  center := (251225000000000003 / 400000000000000000 : ℚ)
  supportValue := (408831077747831 / 1250000000000000 : ℚ)
  supportSlope := (-6102807527525279 / 5000000000000000 : ℚ)
  oldCenter := (408831077747831 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1468
  oldLo := (32650000000000001 / 100000000000000000 : ℚ)
  oldHi := (32750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_811, piece_812]
}

noncomputable def cell_11639 : Cell := { cellDefaults with
  domain := ⟨(125625000000000003 / 200000000000000000 : ℚ), (62825000000000003 / 100000000000000000 : ℚ)⟩
  r := (2708924456541 / 5000000000000 : ℚ)
  w := (690092617821 / 500000000000 : ℚ)
  center := (251275000000000009 / 400000000000000000 : ℚ)
  supportValue := (32691203952041553 / 100000000000000000 : ℚ)
  supportSlope := (-12207983649553313 / 10000000000000000 : ℚ)
  oldCenter := (32691203952041553 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1468
  oldLo := (32650000000000001 / 100000000000000000 : ℚ)
  oldHi := (32700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_811]
}

noncomputable def cell_11640 : Cell := { cellDefaults with
  domain := ⟨(62825000000000003 / 100000000000000000 : ℚ), (125675000000000009 / 200000000000000000 : ℚ)⟩
  r := (2708924456541 / 5000000000000 : ℚ)
  w := (690092617821 / 500000000000 : ℚ)
  center := (50265000000000003 / 80000000000000000 : ℚ)
  supportValue := (408449409190469 / 1250000000000000 : ℚ)
  supportSlope := (-2438794092833581 / 2000000000000000 : ℚ)
  oldCenter := (408449409190469 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1468
  oldLo := (32650000000000001 / 100000000000000000 : ℚ)
  oldHi := (32700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_811]
}

noncomputable def cell_11641 : Cell := { cellDefaults with
  domain := ⟨(125675000000000009 / 200000000000000000 : ℚ), (31425000000000003 / 50000000000000000 : ℚ)⟩
  r := (2708924456541 / 5000000000000 : ℚ)
  w := (690092617821 / 500000000000 : ℚ)
  center := (251375000000000021 / 400000000000000000 : ℚ)
  supportValue := (3266071899861113 / 10000000000000000 : ℚ)
  supportSlope := (-3045003819381521 / 2500000000000000 : ℚ)
  oldCenter := (3266071899861113 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1468
  oldLo := (32650000000000001 / 100000000000000000 : ℚ)
  oldHi := (32700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_811]
}

noncomputable def cell_11642 : Cell := { cellDefaults with
  domain := ⟨(31425000000000003 / 50000000000000000 : ℚ), (125725000000000009 / 200000000000000000 : ℚ)⟩
  r := (13538186281219 / 25000000000000 : ℚ)
  w := (13799406831609 / 10000000000000 : ℚ)
  center := (251425000000000021 / 400000000000000000 : ℚ)
  supportValue := (3267672318981259 / 10000000000000000 : ℚ)
  supportSlope := (-1523612230862797 / 1250000000000000 : ℚ)
  oldCenter := (3267672318981259 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1469
  oldLo := (32650000000000001 / 100000000000000000 : ℚ)
  oldHi := (32700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_811]
}

noncomputable def cell_11643 : Cell := { cellDefaults with
  domain := ⟨(125725000000000009 / 200000000000000000 : ℚ), (62875000000000003 / 100000000000000000 : ℚ)⟩
  r := (13538186281219 / 25000000000000 : ℚ)
  w := (13799406831609 / 10000000000000 : ℚ)
  center := (50295000000000003 / 80000000000000000 : ℚ)
  supportValue := (16330747893695813 / 50000000000000000 : ℚ)
  supportSlope := (-2434990630654291 / 2000000000000000 : ℚ)
  oldCenter := (16330747893695813 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1469
  oldLo := (32650000000000001 / 100000000000000000 : ℚ)
  oldHi := (32700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_811]
}

noncomputable def cell_11644 : Cell := { cellDefaults with
  domain := ⟨(62875000000000003 / 100000000000000000 : ℚ), (125775000000000003 / 200000000000000000 : ℚ)⟩
  r := (13538186281219 / 25000000000000 : ℚ)
  w := (13799406831609 / 10000000000000 : ℚ)
  center := (251525000000000009 / 400000000000000000 : ℚ)
  supportValue := (32646303200140503 / 100000000000000000 : ℚ)
  supportSlope := (-12174250254092593 / 10000000000000000 : ℚ)
  oldCenter := (32646303200140503 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1469
  oldLo := (32600000000000001 / 100000000000000000 : ℚ)
  oldHi := (32700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_810, piece_811]
}

noncomputable def cell_11645 : Cell := { cellDefaults with
  domain := ⟨(125775000000000003 / 200000000000000000 : ℚ), (629 / 1000 : ℚ)⟩
  r := (13538186281219 / 25000000000000 : ℚ)
  w := (13799406831609 / 10000000000000 : ℚ)
  center := (251575000000000003 / 400000000000000000 : ℚ)
  supportValue := (1631553281022163 / 5000000000000000 : ℚ)
  supportSlope := (-6082392349991591 / 5000000000000000 : ℚ)
  oldCenter := (1631553281022163 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1469
  oldLo := (32600000000000001 / 100000000000000000 : ℚ)
  oldHi := (32650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_810]
}

noncomputable def cell_11646 : Cell := { cellDefaults with
  domain := ⟨(629 / 1000 : ℚ), (25164413407821229 / 40000000000000000 : ℚ)⟩
  r := (54127026764491 / 100000000000000 : ℚ)
  w := (3449240859187 / 2500000000000 : ℚ)
  center := (50324413407821229 / 80000000000000000 : ℚ)
  supportValue := (3264797276217097 / 10000000000000000 : ℚ)
  supportSlope := (-3042097800530289 / 2500000000000000 : ℚ)
  oldCenter := (3264797276217097 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1470
  oldLo := (32600000000000001 / 100000000000000000 : ℚ)
  oldHi := (32700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_810, piece_811]
}

noncomputable def cell_11647 : Cell := { cellDefaults with
  domain := ⟨(25164413407821229 / 40000000000000000 : ℚ), (12584413407821229 / 20000000000000000 : ℚ)⟩
  r := (54127026764491 / 100000000000000 : ℚ)
  w := (3449240859187 / 2500000000000 : ℚ)
  center := (50333240223463687 / 80000000000000000 : ℚ)
  supportValue := (1631726195403337 / 5000000000000000 : ℚ)
  supportSlope := (-1520274920509837 / 1250000000000000 : ℚ)
  oldCenter := (1631726195403337 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1470
  oldLo := (32600000000000001 / 100000000000000000 : ℚ)
  oldHi := (32650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_810]
}

noncomputable def cell_11648 : Cell := { cellDefaults with
  domain := ⟨(12584413407821229 / 20000000000000000 : ℚ), (25173240223463687 / 40000000000000000 : ℚ)⟩
  r := (54127026764491 / 100000000000000 : ℚ)
  w := (3449240859187 / 2500000000000 : ℚ)
  center := (10068413407821229 / 16000000000000000 : ℚ)
  supportValue := (3262111151517851 / 10000000000000000 : ℚ)
  supportSlope := (-12149888948244807 / 10000000000000000 : ℚ)
  oldCenter := (3262111151517851 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1470
  oldLo := (32600000000000001 / 100000000000000000 : ℚ)
  oldHi := (32650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_810]
}

noncomputable def cell_11649 : Cell := { cellDefaults with
  domain := ⟨(25173240223463687 / 40000000000000000 : ℚ), (6294413407821229 / 10000000000000000 : ℚ)⟩
  r := (54127026764491 / 100000000000000 : ℚ)
  w := (3449240859187 / 2500000000000 : ℚ)
  center := (50350893854748603 / 80000000000000000 : ℚ)
  supportValue := (208689361153 / 640000000000 : ℚ)
  supportSlope := (-242752470563311 / 200000000000000 : ℚ)
  oldCenter := (208689361153 / 640000000000 : ℚ)
  newCoefficients := coefficients_1470
  oldLo := (32600000000000001 / 100000000000000000 : ℚ)
  oldHi := (32650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_810]
}

theorem check_11600 : cell_11600.check = true := by
  decide +kernel

theorem check_11601 : cell_11601.check = true := by
  decide +kernel

theorem check_11602 : cell_11602.check = true := by
  decide +kernel

theorem check_11603 : cell_11603.check = true := by
  decide +kernel

theorem check_11604 : cell_11604.check = true := by
  decide +kernel

theorem check_11605 : cell_11605.check = true := by
  decide +kernel

theorem check_11606 : cell_11606.check = true := by
  decide +kernel

theorem check_11607 : cell_11607.check = true := by
  decide +kernel

theorem check_11608 : cell_11608.check = true := by
  decide +kernel

theorem check_11609 : cell_11609.check = true := by
  decide +kernel

theorem check_11610 : cell_11610.check = true := by
  decide +kernel

theorem check_11611 : cell_11611.check = true := by
  decide +kernel

theorem check_11612 : cell_11612.check = true := by
  decide +kernel

theorem check_11613 : cell_11613.check = true := by
  decide +kernel

theorem check_11614 : cell_11614.check = true := by
  decide +kernel

theorem check_11615 : cell_11615.check = true := by
  decide +kernel

theorem check_11616 : cell_11616.check = true := by
  decide +kernel

theorem check_11617 : cell_11617.check = true := by
  decide +kernel

theorem check_11618 : cell_11618.check = true := by
  decide +kernel

theorem check_11619 : cell_11619.check = true := by
  decide +kernel

theorem check_11620 : cell_11620.check = true := by
  decide +kernel

theorem check_11621 : cell_11621.check = true := by
  decide +kernel

theorem check_11622 : cell_11622.check = true := by
  decide +kernel

theorem check_11623 : cell_11623.check = true := by
  decide +kernel

theorem check_11624 : cell_11624.check = true := by
  decide +kernel

theorem check_11625 : cell_11625.check = true := by
  decide +kernel

theorem check_11626 : cell_11626.check = true := by
  decide +kernel

theorem check_11627 : cell_11627.check = true := by
  decide +kernel

theorem check_11628 : cell_11628.check = true := by
  decide +kernel

theorem check_11629 : cell_11629.check = true := by
  decide +kernel

theorem check_11630 : cell_11630.check = true := by
  decide +kernel

theorem check_11631 : cell_11631.check = true := by
  decide +kernel

theorem check_11632 : cell_11632.check = true := by
  decide +kernel

theorem check_11633 : cell_11633.check = true := by
  decide +kernel

theorem check_11634 : cell_11634.check = true := by
  decide +kernel

theorem check_11635 : cell_11635.check = true := by
  decide +kernel

theorem check_11636 : cell_11636.check = true := by
  decide +kernel

theorem check_11637 : cell_11637.check = true := by
  decide +kernel

theorem check_11638 : cell_11638.check = true := by
  decide +kernel

theorem check_11639 : cell_11639.check = true := by
  decide +kernel

theorem check_11640 : cell_11640.check = true := by
  decide +kernel

theorem check_11641 : cell_11641.check = true := by
  decide +kernel

theorem check_11642 : cell_11642.check = true := by
  decide +kernel

theorem check_11643 : cell_11643.check = true := by
  decide +kernel

theorem check_11644 : cell_11644.check = true := by
  decide +kernel

theorem check_11645 : cell_11645.check = true := by
  decide +kernel

theorem check_11646 : cell_11646.check = true := by
  decide +kernel

theorem check_11647 : cell_11647.check = true := by
  decide +kernel

theorem check_11648 : cell_11648.check = true := by
  decide +kernel

theorem check_11649 : cell_11649.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11600, cell_11601, cell_11602, cell_11603, cell_11604, cell_11605, cell_11606, cell_11607, cell_11608, cell_11609, cell_11610, cell_11611, cell_11612, cell_11613, cell_11614, cell_11615, cell_11616, cell_11617, cell_11618, cell_11619, cell_11620, cell_11621, cell_11622, cell_11623, cell_11624, cell_11625, cell_11626, cell_11627, cell_11628, cell_11629, cell_11630, cell_11631, cell_11632, cell_11633, cell_11634, cell_11635, cell_11636, cell_11637, cell_11638, cell_11639, cell_11640, cell_11641, cell_11642, cell_11643, cell_11644, cell_11645, cell_11646, cell_11647, cell_11648, cell_11649]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11600, check_11601, check_11602, check_11603, check_11604, check_11605, check_11606, check_11607, check_11608, check_11609, check_11610, check_11611, check_11612, check_11613, check_11614, check_11615, check_11616, check_11617, check_11618, check_11619, check_11620, check_11621, check_11622, check_11623, check_11624, check_11625, check_11626, check_11627, check_11628, check_11629, check_11630, check_11631, check_11632, check_11633, check_11634, check_11635, check_11636, check_11637, check_11638, check_11639, check_11640, check_11641, check_11642, check_11643, check_11644, check_11645, check_11646, check_11647, check_11648, check_11649, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0232

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0232
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0232
open AnalyticBounds.ExpressionCertificate

theorem linked_11600 : Linked cell_11600 pieces := by
  refine ⟨piece_1457,piece_1457_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11600,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_817_mem

theorem linked_11601 : Linked cell_11601 pieces := by
  refine ⟨piece_1458,piece_1458_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11601,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_817_mem

theorem linked_11602 : Linked cell_11602 pieces := by
  refine ⟨piece_1458,piece_1458_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11602,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_817_mem

theorem linked_11603 : Linked cell_11603 pieces := by
  refine ⟨piece_1458,piece_1458_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11603,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_816_mem
    · exact piece_817_mem

theorem linked_11604 : Linked cell_11604 pieces := by
  refine ⟨piece_1458,piece_1458_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11604,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_816_mem

theorem linked_11605 : Linked cell_11605 pieces := by
  refine ⟨piece_1459,piece_1459_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11605,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_816_mem

theorem linked_11606 : Linked cell_11606 pieces := by
  refine ⟨piece_1460,piece_1460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11606,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_816_mem
    · exact piece_817_mem

theorem linked_11607 : Linked cell_11607 pieces := by
  refine ⟨piece_1460,piece_1460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11607,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_816_mem

theorem linked_11608 : Linked cell_11608 pieces := by
  refine ⟨piece_1460,piece_1460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11608,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_816_mem

theorem linked_11609 : Linked cell_11609 pieces := by
  refine ⟨piece_1460,piece_1460_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11609,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_815_mem
    · exact piece_816_mem

theorem linked_11610 : Linked cell_11610 pieces := by
  refine ⟨piece_1461,piece_1461_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11610,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_816_mem

theorem linked_11611 : Linked cell_11611 pieces := by
  refine ⟨piece_1461,piece_1461_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11611,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_815_mem
    · exact piece_816_mem

theorem linked_11612 : Linked cell_11612 pieces := by
  refine ⟨piece_1461,piece_1461_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11612,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_815_mem

theorem linked_11613 : Linked cell_11613 pieces := by
  refine ⟨piece_1461,piece_1461_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11613,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_815_mem

theorem linked_11614 : Linked cell_11614 pieces := by
  refine ⟨piece_1462,piece_1462_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11614,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_815_mem

theorem linked_11615 : Linked cell_11615 pieces := by
  refine ⟨piece_1462,piece_1462_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11615,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_815_mem

theorem linked_11616 : Linked cell_11616 pieces := by
  refine ⟨piece_1462,piece_1462_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11616,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_814_mem
    · exact piece_815_mem

theorem linked_11617 : Linked cell_11617 pieces := by
  refine ⟨piece_1462,piece_1462_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11617,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_814_mem

theorem linked_11618 : Linked cell_11618 pieces := by
  refine ⟨piece_1463,piece_1463_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11618,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_814_mem
    · exact piece_815_mem

theorem linked_11619 : Linked cell_11619 pieces := by
  refine ⟨piece_1463,piece_1463_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11619,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_814_mem

theorem linked_11620 : Linked cell_11620 pieces := by
  refine ⟨piece_1463,piece_1463_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11620,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_814_mem

theorem linked_11621 : Linked cell_11621 pieces := by
  refine ⟨piece_1463,piece_1463_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11621,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_814_mem

theorem linked_11622 : Linked cell_11622 pieces := by
  refine ⟨piece_1464,piece_1464_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11622,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_814_mem

theorem linked_11623 : Linked cell_11623 pieces := by
  refine ⟨piece_1464,piece_1464_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11623,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_814_mem

theorem linked_11624 : Linked cell_11624 pieces := by
  refine ⟨piece_1464,piece_1464_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11624,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_813_mem
    · exact piece_814_mem

theorem linked_11625 : Linked cell_11625 pieces := by
  refine ⟨piece_1464,piece_1464_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11625,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_813_mem

theorem linked_11626 : Linked cell_11626 pieces := by
  refine ⟨piece_1465,piece_1465_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11626,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_813_mem
    · exact piece_814_mem

theorem linked_11627 : Linked cell_11627 pieces := by
  refine ⟨piece_1465,piece_1465_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11627,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_813_mem

theorem linked_11628 : Linked cell_11628 pieces := by
  refine ⟨piece_1465,piece_1465_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11628,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_813_mem

theorem linked_11629 : Linked cell_11629 pieces := by
  refine ⟨piece_1465,piece_1465_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11629,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_812_mem
    · exact piece_813_mem

theorem linked_11630 : Linked cell_11630 pieces := by
  refine ⟨piece_1466,piece_1466_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11630,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_813_mem

theorem linked_11631 : Linked cell_11631 pieces := by
  refine ⟨piece_1466,piece_1466_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11631,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_812_mem
    · exact piece_813_mem

theorem linked_11632 : Linked cell_11632 pieces := by
  refine ⟨piece_1466,piece_1466_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11632,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_812_mem

theorem linked_11633 : Linked cell_11633 pieces := by
  refine ⟨piece_1466,piece_1466_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11633,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_812_mem

theorem linked_11634 : Linked cell_11634 pieces := by
  refine ⟨piece_1467,piece_1467_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11634,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_812_mem

theorem linked_11635 : Linked cell_11635 pieces := by
  refine ⟨piece_1467,piece_1467_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11635,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_812_mem

theorem linked_11636 : Linked cell_11636 pieces := by
  refine ⟨piece_1467,piece_1467_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11636,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_811_mem
    · exact piece_812_mem

theorem linked_11637 : Linked cell_11637 pieces := by
  refine ⟨piece_1467,piece_1467_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11637,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_811_mem

theorem linked_11638 : Linked cell_11638 pieces := by
  refine ⟨piece_1468,piece_1468_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11638,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_811_mem
    · exact piece_812_mem

theorem linked_11639 : Linked cell_11639 pieces := by
  refine ⟨piece_1468,piece_1468_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11639,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_811_mem

theorem linked_11640 : Linked cell_11640 pieces := by
  refine ⟨piece_1468,piece_1468_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11640,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_811_mem

theorem linked_11641 : Linked cell_11641 pieces := by
  refine ⟨piece_1468,piece_1468_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11641,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_811_mem

theorem linked_11642 : Linked cell_11642 pieces := by
  refine ⟨piece_1469,piece_1469_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11642,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_811_mem

theorem linked_11643 : Linked cell_11643 pieces := by
  refine ⟨piece_1469,piece_1469_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11643,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_811_mem

theorem linked_11644 : Linked cell_11644 pieces := by
  refine ⟨piece_1469,piece_1469_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11644,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_810_mem
    · exact piece_811_mem

theorem linked_11645 : Linked cell_11645 pieces := by
  refine ⟨piece_1469,piece_1469_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11645,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_810_mem

theorem linked_11646 : Linked cell_11646 pieces := by
  refine ⟨piece_1470,piece_1470_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11646,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_810_mem
    · exact piece_811_mem

theorem linked_11647 : Linked cell_11647 pieces := by
  refine ⟨piece_1470,piece_1470_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11647,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_810_mem

theorem linked_11648 : Linked cell_11648 pieces := by
  refine ⟨piece_1470,piece_1470_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11648,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_810_mem

theorem linked_11649 : Linked cell_11649 pieces := by
  refine ⟨piece_1470,piece_1470_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11649,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_810_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0232.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0232.cells,List.forall_mem_cons]
  exact ⟨linked_11600, linked_11601, linked_11602, linked_11603, linked_11604, linked_11605, linked_11606, linked_11607, linked_11608, linked_11609, linked_11610, linked_11611, linked_11612, linked_11613, linked_11614, linked_11615, linked_11616, linked_11617, linked_11618, linked_11619, linked_11620, linked_11621, linked_11622, linked_11623, linked_11624, linked_11625, linked_11626, linked_11627, linked_11628, linked_11629, linked_11630, linked_11631, linked_11632, linked_11633, linked_11634, linked_11635, linked_11636, linked_11637, linked_11638, linked_11639, linked_11640, linked_11641, linked_11642, linked_11643, linked_11644, linked_11645, linked_11646, linked_11647, linked_11648, linked_11649, by simp⟩

theorem covered : covers (49870000000000003 / 80000000000000000 : ℚ) (6294413407821229 / 10000000000000000 : ℚ)
    (SourceCertificates.Chunk0232.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0232
