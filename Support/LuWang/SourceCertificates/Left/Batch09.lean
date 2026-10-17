import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData
import Support.LuWang.SourceCertificateAssembly

/-! Independent left-certificate batch: original chunks 0252–0263. -/

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0252
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(14930000000000001 / 20000000000000000 : ℚ), (59730000000000003 / 80000000000000000 : ℚ)⟩
  branch := .left
  r := (48820375960517 / 100000000000000 : ℚ)
  w := (13442333316061 / 10000000000000 : ℚ)
  center := (119450000000000007 / 160000000000000000 : ℚ)
  supportValue := (106942001161867 / 400000000000000 : ℚ)
  supportSlope := (-3974291770055103 / 5000000000000000 : ℚ)
  oldCenter := (106942001161867 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1727
  oldLo := (26600000000000001 / 100000000000000000 : ℚ)
  oldHi := (13350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_680]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12600 : Cell := { cellDefaults with
  oldLo := (13350000000000001 / 50000000000000000 : ℚ)
  oldHi := (13375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_681]
}

noncomputable def cell_12601 : Cell := { cellDefaults with
  domain := ⟨(59730000000000003 / 80000000000000000 : ℚ), (29870000000000001 / 40000000000000000 : ℚ)⟩
  center := (23894000000000001 / 32000000000000000 : ℚ)
  supportValue := (267255697409737 / 1000000000000000 : ℚ)
  supportSlope := (-9925374588161 / 12500000000000 : ℚ)
  oldCenter := (267255697409737 / 1000000000000000 : ℚ)
  oldLo := (13350000000000001 / 50000000000000000 : ℚ)
  oldHi := (13375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_681]
}

noncomputable def cell_12602 : Cell := { cellDefaults with
  domain := ⟨(29870000000000001 / 40000000000000000 : ℚ), (59750000000000001 / 80000000000000000 : ℚ)⟩
  center := (119490000000000003 / 160000000000000000 : ℚ)
  supportValue := (2671564952438541 / 10000000000000000 : ℚ)
  supportSlope := (-7932050840429821 / 10000000000000000 : ℚ)
  oldCenter := (2671564952438541 / 10000000000000000 : ℚ)
  oldLo := (13350000000000001 / 50000000000000000 : ℚ)
  oldHi := (13375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_681]
}

noncomputable def cell_12603 : Cell := { cellDefaults with
  domain := ⟨(59750000000000001 / 80000000000000000 : ℚ), (747 / 1000 : ℚ)⟩
  center := (119510000000000001 / 160000000000000000 : ℚ)
  supportValue := (333821744963059 / 1250000000000000 : ℚ)
  supportSlope := (-1980959205723141 / 2500000000000000 : ℚ)
  oldCenter := (333821744963059 / 1250000000000000 : ℚ)
  oldLo := (13350000000000001 / 50000000000000000 : ℚ)
  oldHi := (13375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_681]
}

noncomputable def cell_12604 : Cell := { cellDefaults with
  domain := ⟨(747 / 1000 : ℚ), (59770000000000001 / 80000000000000000 : ℚ)⟩
  r := (2440035698523 / 5000000000000 : ℚ)
  w := (537677451793 / 400000000000 : ℚ)
  center := (119530000000000001 / 160000000000000000 : ℚ)
  supportValue := (13356895096522947 / 50000000000000000 : ℚ)
  supportSlope := (-1981883435246769 / 2500000000000000 : ℚ)
  oldCenter := (13356895096522947 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1728
  oldLo := (13350000000000001 / 50000000000000000 : ℚ)
  oldHi := (13375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_681]
}

noncomputable def cell_12605 : Cell := { cellDefaults with
  domain := ⟨(59770000000000001 / 80000000000000000 : ℚ), (29890000000000001 / 40000000000000000 : ℚ)⟩
  r := (2440035698523 / 5000000000000 : ℚ)
  w := (537677451793 / 400000000000 : ℚ)
  center := (119550000000000003 / 160000000000000000 : ℚ)
  supportValue := (13351952298421607 / 50000000000000000 : ℚ)
  supportSlope := (-7920934628823691 / 10000000000000000 : ℚ)
  oldCenter := (13351952298421607 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1728
  oldLo := (26650000000000001 / 100000000000000000 : ℚ)
  oldHi := (13375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_680, piece_681]
}

noncomputable def cell_12606 : Cell := { cellDefaults with
  domain := ⟨(29890000000000001 / 40000000000000000 : ℚ), (59790000000000003 / 80000000000000000 : ℚ)⟩
  r := (2440035698523 / 5000000000000 : ℚ)
  w := (537677451793 / 400000000000 : ℚ)
  center := (23914000000000001 / 32000000000000000 : ℚ)
  supportValue := (667349515343419 / 2500000000000000 : ℚ)
  supportSlope := (-7925895298023551 / 10000000000000000 : ℚ)
  oldCenter := (667349515343419 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1728
  oldLo := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_680]
}

noncomputable def cell_12607 : Cell := { cellDefaults with
  domain := ⟨(59790000000000003 / 80000000000000000 : ℚ), (14950000000000001 / 20000000000000000 : ℚ)⟩
  r := (2440035698523 / 5000000000000 : ℚ)
  w := (537677451793 / 400000000000 : ℚ)
  center := (119590000000000007 / 160000000000000000 : ℚ)
  supportValue := (667101960512619 / 2500000000000000 : ℚ)
  supportSlope := (-791761792229649 / 1000000000000000 : ℚ)
  oldCenter := (667101960512619 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1728
  oldLo := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_680]
}

noncomputable def cell_12608 : Cell := { cellDefaults with
  domain := ⟨(14950000000000001 / 20000000000000000 : ℚ), (59810000000000003 / 80000000000000000 : ℚ)⟩
  r := (48781065525591 / 100000000000000 : ℚ)
  w := (13441533261939 / 10000000000000 : ℚ)
  center := (119610000000000007 / 160000000000000000 : ℚ)
  supportValue := (1067685604128227 / 4000000000000000 : ℚ)
  supportSlope := (-792138301360347 / 1000000000000000 : ℚ)
  oldCenter := (1067685604128227 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1729
  oldLo := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_680]
}

noncomputable def cell_12609 : Cell := { cellDefaults with
  domain := ⟨(59810000000000003 / 80000000000000000 : ℚ), (29910000000000001 / 40000000000000000 : ℚ)⟩
  r := (48781065525591 / 100000000000000 : ℚ)
  w := (13441533261939 / 10000000000000 : ℚ)
  center := (23926000000000001 / 32000000000000000 : ℚ)
  supportValue := (1334112177116339 / 5000000000000000 : ℚ)
  supportSlope := (-7913118423862011 / 10000000000000000 : ℚ)
  oldCenter := (1334112177116339 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1729
  oldLo := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_680]
}

noncomputable def cell_12610 : Cell := { cellDefaults with
  domain := ⟨(29910000000000001 / 40000000000000000 : ℚ), (59830000000000001 / 80000000000000000 : ℚ)⟩
  r := (48781065525591 / 100000000000000 : ℚ)
  w := (13441533261939 / 10000000000000 : ℚ)
  center := (119650000000000003 / 160000000000000000 : ℚ)
  supportValue := (266723572902699 / 1000000000000000 : ℚ)
  supportSlope := (-7904888846327021 / 10000000000000000 : ℚ)
  oldCenter := (266723572902699 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1729
  oldLo := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_680]
}

noncomputable def cell_12611 : Cell := { cellDefaults with
  domain := ⟨(59830000000000001 / 80000000000000000 : ℚ), (187 / 250 : ℚ)⟩
  r := (48781065525591 / 100000000000000 : ℚ)
  w := (13441533261939 / 10000000000000 : ℚ)
  center := (119670000000000001 / 160000000000000000 : ℚ)
  supportValue := (1333124065170599 / 5000000000000000 : ℚ)
  supportSlope := (-3948347026963401 / 5000000000000000 : ℚ)
  oldCenter := (1333124065170599 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1729
  oldLo := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_680]
}

noncomputable def cell_12612 : Cell := { cellDefaults with
  domain := ⟨(187 / 250 : ℚ), (59850000000000001 / 80000000000000000 : ℚ)⟩
  r := (48761448532951 / 100000000000000 : ℚ)
  w := (13441156169621 / 10000000000000 : ℚ)
  center := (119690000000000001 / 160000000000000000 : ℚ)
  supportValue := (2667047357833223 / 10000000000000000 : ℚ)
  supportSlope := (-7900366511738631 / 10000000000000000 : ℚ)
  oldCenter := (2667047357833223 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1730
  oldLo := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_680]
}

noncomputable def cell_12613 : Cell := { cellDefaults with
  domain := ⟨(59850000000000001 / 80000000000000000 : ℚ), (29930000000000001 / 40000000000000000 : ℚ)⟩
  r := (48761448532951 / 100000000000000 : ℚ)
  w := (13441156169621 / 10000000000000 : ℚ)
  center := (119710000000000003 / 160000000000000000 : ℚ)
  supportValue := (26660603236384367 / 100000000000000000 : ℚ)
  supportSlope := (-986523064334567 / 1250000000000000 : ℚ)
  oldCenter := (26660603236384367 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1730
  oldLo := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_680]
}

noncomputable def cell_12614 : Cell := { cellDefaults with
  domain := ⟨(29930000000000001 / 40000000000000000 : ℚ), (59870000000000003 / 80000000000000000 : ℚ)⟩
  r := (48761448532951 / 100000000000000 : ℚ)
  w := (13441156169621 / 10000000000000 : ℚ)
  center := (23946000000000001 / 32000000000000000 : ℚ)
  supportValue := (26650761755866403 / 100000000000000000 : ℚ)
  supportSlope := (-3945150000576763 / 5000000000000000 : ℚ)
  oldCenter := (26650761755866403 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1730
  oldPieces := [piece_679, piece_680]
}

noncomputable def cell_12615 : Cell := { cellDefaults with
  domain := ⟨(59870000000000003 / 80000000000000000 : ℚ), (14970000000000001 / 20000000000000000 : ℚ)⟩
  r := (48761448532951 / 100000000000000 : ℚ)
  w := (13441156169621 / 10000000000000 : ℚ)
  center := (119750000000000007 / 160000000000000000 : ℚ)
  supportValue := (2664087613793913 / 10000000000000000 : ℚ)
  supportSlope := (-7890545374093271 / 10000000000000000 : ℚ)
  oldCenter := (2664087613793913 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1730
  oldHi := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_679]
}

noncomputable def cell_12616 : Cell := { cellDefaults with
  domain := ⟨(14970000000000001 / 20000000000000000 : ℚ), (59890000000000003 / 80000000000000000 : ℚ)⟩
  r := (6092731155659 / 12500000000000 : ℚ)
  w := (6720390244071 / 5000000000000 : ℚ)
  center := (119770000000000007 / 160000000000000000 : ℚ)
  supportValue := (532977658809393 / 2000000000000000 : ℚ)
  supportSlope := (-7888597000587871 / 10000000000000000 : ℚ)
  oldCenter := (532977658809393 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1731
  oldPieces := [piece_679, piece_680]
}

noncomputable def cell_12617 : Cell := { cellDefaults with
  domain := ⟨(59890000000000003 / 80000000000000000 : ℚ), (29950000000000001 / 40000000000000000 : ℚ)⟩
  r := (6092731155659 / 12500000000000 : ℚ)
  w := (6720390244071 / 5000000000000 : ℚ)
  center := (23958000000000001 / 32000000000000000 : ℚ)
  supportValue := (13319500800073897 / 50000000000000000 : ℚ)
  supportSlope := (-1577205983943999 / 2000000000000000 : ℚ)
  oldCenter := (13319500800073897 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1731
  oldHi := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_679]
}

noncomputable def cell_12618 : Cell := { cellDefaults with
  domain := ⟨(29950000000000001 / 40000000000000000 : ℚ), (59910000000000001 / 80000000000000000 : ℚ)⟩
  r := (6092731155659 / 12500000000000 : ℚ)
  w := (6720390244071 / 5000000000000 : ℚ)
  center := (119810000000000003 / 160000000000000000 : ℚ)
  supportValue := (2662914919463179 / 10000000000000000 : ℚ)
  supportSlope := (-1575564577606927 / 2000000000000000 : ℚ)
  oldCenter := (2662914919463179 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1731
  oldHi := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_679]
}

noncomputable def cell_12619 : Cell := { cellDefaults with
  domain := ⟨(59910000000000001 / 80000000000000000 : ℚ), (749 / 1000 : ℚ)⟩
  r := (6092731155659 / 12500000000000 : ℚ)
  w := (6720390244071 / 5000000000000 : ℚ)
  center := (119830000000000001 / 160000000000000000 : ℚ)
  supportValue := (33274133782707 / 125000000000000 : ℚ)
  supportSlope := (-491853161777627 / 625000000000000 : ℚ)
  oldCenter := (33274133782707 / 125000000000000 : ℚ)
  newCoefficients := coefficients_1731
  oldHi := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_679]
}

noncomputable def cell_12620 : Cell := { cellDefaults with
  domain := ⟨(749 / 1000 : ℚ), (149825000000000003 / 200000000000000000 : ℚ)⟩
  r := (9744455431987 / 20000000000000 : ℚ)
  w := (2688084708913 / 2000000000000 : ℚ)
  center := (299625000000000003 / 400000000000000000 : ℚ)
  supportValue := (2662724083292341 / 10000000000000000 : ℚ)
  supportSlope := (-7873295653809841 / 10000000000000000 : ℚ)
  oldCenter := (2662724083292341 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1732
  oldHi := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_679]
}

noncomputable def cell_12621 : Cell := { cellDefaults with
  domain := ⟨(149825000000000003 / 200000000000000000 : ℚ), (74925000000000003 / 100000000000000000 : ℚ)⟩
  r := (9744455431987 / 20000000000000 : ℚ)
  w := (2688084708913 / 2000000000000 : ℚ)
  center := (299675000000000009 / 400000000000000000 : ℚ)
  supportValue := (13308702157731117 / 50000000000000000 : ℚ)
  supportSlope := (-786513619677981 / 1000000000000000 : ℚ)
  oldCenter := (13308702157731117 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1732
  oldHi := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_679]
}

noncomputable def cell_12622 : Cell := { cellDefaults with
  domain := ⟨(74925000000000003 / 100000000000000000 : ℚ), (149875000000000009 / 200000000000000000 : ℚ)⟩
  r := (9744455431987 / 20000000000000 : ℚ)
  w := (2688084708913 / 2000000000000 : ℚ)
  center := (59945000000000003 / 80000000000000000 : ℚ)
  supportValue := (5321515595154953 / 20000000000000000 : ℚ)
  supportSlope := (-7857011164985773 / 10000000000000000 : ℚ)
  oldCenter := (5321515595154953 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1732
  oldHi := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_679]
}

noncomputable def cell_12623 : Cell := { cellDefaults with
  domain := ⟨(149875000000000009 / 200000000000000000 : ℚ), (37475000000000003 / 50000000000000000 : ℚ)⟩
  r := (9744455431987 / 20000000000000 : ℚ)
  w := (2688084708913 / 2000000000000 : ℚ)
  center := (299775000000000021 / 400000000000000000 : ℚ)
  supportValue := (13298888097488923 / 50000000000000000 : ℚ)
  supportSlope := (-491223742862753 / 625000000000000 : ℚ)
  oldCenter := (13298888097488923 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1732
  oldLo := (26550000000000001 / 100000000000000000 : ℚ)
  oldHi := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_678, piece_679]
}

noncomputable def cell_12624 : Cell := { cellDefaults with
  domain := ⟨(37475000000000003 / 50000000000000000 : ℚ), (149925000000000009 / 200000000000000000 : ℚ)⟩
  r := (760980145859 / 1562500000000 : ℚ)
  w := (6720040232869 / 5000000000000 : ℚ)
  center := (299825000000000021 / 400000000000000000 : ℚ)
  supportValue := (665141290644849 / 2500000000000000 : ℚ)
  supportSlope := (-3926246263179971 / 5000000000000000 : ℚ)
  oldCenter := (665141290644849 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1733
  oldHi := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_679]
}

noncomputable def cell_12625 : Cell := { cellDefaults with
  domain := ⟨(149925000000000009 / 200000000000000000 : ℚ), (74975000000000003 / 100000000000000000 : ℚ)⟩
  r := (760980145859 / 1562500000000 : ℚ)
  w := (6720040232869 / 5000000000000 : ℚ)
  center := (59975000000000003 / 80000000000000000 : ℚ)
  supportValue := (2659585190374677 / 10000000000000000 : ℚ)
  supportSlope := (-7857922001096417 / 10000000000000000 : ℚ)
  oldCenter := (2659585190374677 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1733
  oldLo := (26550000000000001 / 100000000000000000 : ℚ)
  oldHi := (26650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_678, piece_679]
}

noncomputable def cell_12626 : Cell := { cellDefaults with
  domain := ⟨(74975000000000003 / 100000000000000000 : ℚ), (149975000000000003 / 200000000000000000 : ℚ)⟩
  r := (760980145859 / 1562500000000 : ℚ)
  w := (6720040232869 / 5000000000000 : ℚ)
  center := (299925000000000009 / 400000000000000000 : ℚ)
  supportValue := (13293007310889457 / 50000000000000000 : ℚ)
  supportSlope := (-7850843268589589 / 10000000000000000 : ℚ)
  oldCenter := (13293007310889457 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1733
  oldLo := (26550000000000001 / 100000000000000000 : ℚ)
  oldHi := (26600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_678]
}

noncomputable def cell_12627 : Cell := { cellDefaults with
  domain := ⟨(149975000000000003 / 200000000000000000 : ℚ), (3 / 4 : ℚ)⟩
  r := (760980145859 / 1562500000000 : ℚ)
  w := (6720040232869 / 5000000000000 : ℚ)
  center := (299975000000000003 / 400000000000000000 : ℚ)
  supportValue := (13288103080890093 / 50000000000000000 : ℚ)
  supportSlope := (-3921348328300071 / 5000000000000000 : ℚ)
  oldCenter := (13288103080890093 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1733
  oldLo := (26550000000000001 / 100000000000000000 : ℚ)
  oldHi := (26600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_678]
}

noncomputable def cell_12628 : Cell := { cellDefaults with
  domain := ⟨(3 / 4 : ℚ), (150025000000000003 / 200000000000000000 : ℚ)⟩
  r := (12170800197973 / 25000000000000 : ℚ)
  w := (1679967647691 / 1250000000000 : ℚ)
  center := (300025000000000003 / 400000000000000000 : ℚ)
  supportValue := (664602166354489 / 2500000000000000 : ℚ)
  supportSlope := (-3923157705591569 / 5000000000000000 : ℚ)
  oldCenter := (664602166354489 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1734
  oldLo := (26550000000000001 / 100000000000000000 : ℚ)
  oldHi := (26600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_678]
}

noncomputable def cell_12629 : Cell := { cellDefaults with
  domain := ⟨(150025000000000003 / 200000000000000000 : ℚ), (75025000000000003 / 100000000000000000 : ℚ)⟩
  r := (12170800197973 / 25000000000000 : ℚ)
  w := (1679967647691 / 1250000000000 : ℚ)
  center := (300075000000000009 / 400000000000000000 : ℚ)
  supportValue := (6643570961482849 / 25000000000000000 : ℚ)
  supportSlope := (-7838181695126903 / 10000000000000000 : ℚ)
  oldCenter := (6643570961482849 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1734
  oldLo := (26550000000000001 / 100000000000000000 : ℚ)
  oldHi := (26600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_678]
}

noncomputable def cell_12630 : Cell := { cellDefaults with
  domain := ⟨(75025000000000003 / 100000000000000000 : ℚ), (150075000000000009 / 200000000000000000 : ℚ)⟩
  r := (12170800197973 / 25000000000000 : ℚ)
  w := (1679967647691 / 1250000000000 : ℚ)
  center := (60025000000000003 / 80000000000000000 : ℚ)
  supportValue := (26564491183329697 / 100000000000000000 : ℚ)
  supportSlope := (-1566016465211629 / 2000000000000000 : ℚ)
  oldCenter := (26564491183329697 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1734
  oldLo := (26550000000000001 / 100000000000000000 : ℚ)
  oldHi := (26600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_678]
}

noncomputable def cell_12631 : Cell := { cellDefaults with
  domain := ⟨(150075000000000009 / 200000000000000000 : ℚ), (37525000000000003 / 50000000000000000 : ℚ)⟩
  r := (12170800197973 / 25000000000000 : ℚ)
  w := (1679967647691 / 1250000000000 : ℚ)
  center := (300175000000000021 / 400000000000000000 : ℚ)
  supportValue := (1327736360593503 / 5000000000000000 : ℚ)
  supportSlope := (-7822295872824853 / 10000000000000000 : ℚ)
  oldCenter := (1327736360593503 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1734
  oldLo := (26500000000000001 / 100000000000000000 : ℚ)
  oldHi := (26600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_677, piece_678]
}

noncomputable def cell_12632 : Cell := { cellDefaults with
  domain := ⟨(37525000000000003 / 50000000000000000 : ℚ), (150125000000000009 / 200000000000000000 : ℚ)⟩
  r := (48663703626111 / 100000000000000 : ℚ)
  w := (1343942916813 / 1000000000000 : ℚ)
  center := (300225000000000021 / 400000000000000000 : ℚ)
  supportValue := (664062958572143 / 2500000000000000 : ℚ)
  supportSlope := (-1565108730011221 / 2000000000000000 : ℚ)
  oldCenter := (664062958572143 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1735
  oldLo := (26550000000000001 / 100000000000000000 : ℚ)
  oldHi := (26600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_678]
}

noncomputable def cell_12633 : Cell := { cellDefaults with
  domain := ⟨(150125000000000009 / 200000000000000000 : ℚ), (75075000000000003 / 100000000000000000 : ℚ)⟩
  r := (48663703626111 / 100000000000000 : ℚ)
  w := (1343942916813 / 1000000000000 : ℚ)
  center := (60055000000000003 / 80000000000000000 : ℚ)
  supportValue := (2655276003532791 / 10000000000000000 : ℚ)
  supportSlope := (-3910349214800071 / 5000000000000000 : ℚ)
  oldCenter := (2655276003532791 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1735
  oldLo := (26500000000000001 / 100000000000000000 : ℚ)
  oldHi := (26600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_677, piece_678]
}

noncomputable def cell_12634 : Cell := { cellDefaults with
  domain := ⟨(75075000000000003 / 100000000000000000 : ℚ), (150175000000000003 / 200000000000000000 : ℚ)⟩
  r := (48663703626111 / 100000000000000 : ℚ)
  w := (1343942916813 / 1000000000000 : ℚ)
  center := (300325000000000009 / 400000000000000000 : ℚ)
  supportValue := (2654296151772461 / 10000000000000000 : ℚ)
  supportSlope := (-977994241676667 / 1250000000000000 : ℚ)
  oldCenter := (2654296151772461 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1735
  oldLo := (26500000000000001 / 100000000000000000 : ℚ)
  oldHi := (26550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_677]
}

noncomputable def cell_12635 : Cell := { cellDefaults with
  domain := ⟨(150175000000000003 / 200000000000000000 : ℚ), (751 / 1000 : ℚ)⟩
  r := (48663703626111 / 100000000000000 : ℚ)
  w := (1343942916813 / 1000000000000 : ℚ)
  center := (300375000000000003 / 400000000000000000 : ℚ)
  supportValue := (530663733027803 / 2000000000000000 : ℚ)
  supportSlope := (-7815836119472279 / 10000000000000000 : ℚ)
  oldCenter := (530663733027803 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1735
  oldLo := (26500000000000001 / 100000000000000000 : ℚ)
  oldHi := (26550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_677]
}

noncomputable def cell_12636 : Cell := { cellDefaults with
  domain := ⟨(751 / 1000 : ℚ), (7511173184357541 / 10000000000000000 : ℚ)⟩
  r := (6080527446601 / 12500000000000 : ℚ)
  w := (13439108569981 / 10000000000000 : ℚ)
  center := (15021173184357541 / 20000000000000000 : ℚ)
  supportValue := (26541311836266407 / 100000000000000000 : ℚ)
  supportSlope := (-7819673526525651 / 10000000000000000 : ℚ)
  oldCenter := (26541311836266407 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1736
  oldLo := (26500000000000001 / 100000000000000000 : ℚ)
  oldHi := (26550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_677]
}

noncomputable def cell_12637 : Cell := { cellDefaults with
  domain := ⟨(7511173184357541 / 10000000000000000 : ℚ), (18782716480446927 / 25000000000000000 : ℚ)⟩
  r := (6080527446601 / 12500000000000 : ℚ)
  w := (13439108569981 / 10000000000000 : ℚ)
  center := (75121298882681559 / 100000000000000000 : ℚ)
  supportValue := (2652927005872577 / 10000000000000000 : ℚ)
  supportSlope := (-3904836466093229 / 5000000000000000 : ℚ)
  oldCenter := (2652927005872577 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1737
  oldLo := (26500000000000001 / 100000000000000000 : ℚ)
  oldHi := (26550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_677]
}

noncomputable def cell_12638 : Cell := { cellDefaults with
  domain := ⟨(18782716480446927 / 25000000000000000 : ℚ), (37575000000000003 / 50000000000000000 : ℚ)⟩
  r := (6080527446601 / 12500000000000 : ℚ)
  w := (13439108569981 / 10000000000000 : ℚ)
  center := (75140432960893857 / 100000000000000000 : ℚ)
  supportValue := (1325716938462857 / 5000000000000000 : ℚ)
  supportSlope := (-7797343452762081 / 10000000000000000 : ℚ)
  oldCenter := (1325716938462857 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1737
  oldLo := (26500000000000001 / 100000000000000000 : ℚ)
  oldHi := (26550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_677]
}

noncomputable def cell_12639 : Cell := { cellDefaults with
  domain := ⟨(37575000000000003 / 50000000000000000 : ℚ), (150325000000000009 / 200000000000000000 : ℚ)⟩
  r := (6078095919853 / 12500000000000 : ℚ)
  w := (13438816534709 / 10000000000000 : ℚ)
  center := (300625000000000021 / 400000000000000000 : ℚ)
  supportValue := (2651948600573937 / 10000000000000000 : ℚ)
  supportSlope := (-3899353359720271 / 5000000000000000 : ℚ)
  oldCenter := (2651948600573937 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1738
  oldLo := (26500000000000001 / 100000000000000000 : ℚ)
  oldHi := (26550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_677]
}

noncomputable def cell_12640 : Cell := { cellDefaults with
  domain := ⟨(150325000000000009 / 200000000000000000 : ℚ), (75175000000000003 / 100000000000000000 : ℚ)⟩
  r := (6078095919853 / 12500000000000 : ℚ)
  w := (13438816534709 / 10000000000000 : ℚ)
  center := (60135000000000003 / 80000000000000000 : ℚ)
  supportValue := (2650974263949371 / 10000000000000000 : ℚ)
  supportSlope := (-7790683054516957 / 10000000000000000 : ℚ)
  oldCenter := (2650974263949371 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1738
  oldLo := (26500000000000001 / 100000000000000000 : ℚ)
  oldHi := (26550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_677]
}

noncomputable def cell_12641 : Cell := { cellDefaults with
  domain := ⟨(75175000000000003 / 100000000000000000 : ℚ), (150375000000000003 / 200000000000000000 : ℚ)⟩
  r := (6078095919853 / 12500000000000 : ℚ)
  w := (13438816534709 / 10000000000000 : ℚ)
  center := (300725000000000009 / 400000000000000000 : ℚ)
  supportValue := (2650002783172289 / 10000000000000000 : ℚ)
  supportSlope := (-7789911877456969 / 10000000000000000 : ℚ)
  oldCenter := (2650002783172289 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1738
  oldLo := (26450000000000001 / 100000000000000000 : ℚ)
  oldHi := (26550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_676, piece_677]
}

noncomputable def cell_12642 : Cell := { cellDefaults with
  domain := ⟨(150375000000000003 / 200000000000000000 : ℚ), (94 / 125 : ℚ)⟩
  r := (6078095919853 / 12500000000000 : ℚ)
  w := (13438816534709 / 10000000000000 : ℚ)
  center := (300775000000000003 / 400000000000000000 : ℚ)
  supportValue := (1324513394075881 / 5000000000000000 : ℚ)
  supportSlope := (-38945405328499 / 50000000000000 : ℚ)
  oldCenter := (1324513394075881 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1738
  oldLo := (26450000000000001 / 100000000000000000 : ℚ)
  oldHi := (26500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_676]
}

noncomputable def cell_12643 : Cell := { cellDefaults with
  domain := ⟨(94 / 125 : ℚ), (150425000000000003 / 200000000000000000 : ℚ)⟩
  r := (48605332701547 / 100000000000000 : ℚ)
  w := (13438526091401 / 10000000000000 : ℚ)
  center := (300825000000000003 / 400000000000000000 : ℚ)
  supportValue := (662450845492013 / 2500000000000000 : ℚ)
  supportSlope := (-778833944869901 / 1000000000000000 : ℚ)
  oldCenter := (662450845492013 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1739
  oldLo := (26450000000000001 / 100000000000000000 : ℚ)
  oldHi := (26550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_676, piece_677]
}

noncomputable def cell_12644 : Cell := { cellDefaults with
  domain := ⟨(150425000000000003 / 200000000000000000 : ℚ), (75225000000000003 / 100000000000000000 : ℚ)⟩
  r := (48605332701547 / 100000000000000 : ℚ)
  w := (13438526091401 / 10000000000000 : ℚ)
  center := (300875000000000009 / 400000000000000000 : ℚ)
  supportValue := (26488279544279 / 100000000000000 : ℚ)
  supportSlope := (-3892273437128923 / 5000000000000000 : ℚ)
  oldCenter := (26488279544279 / 100000000000000 : ℚ)
  newCoefficients := coefficients_1739
  oldLo := (26450000000000001 / 100000000000000000 : ℚ)
  oldHi := (26500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_676]
}

noncomputable def cell_12645 : Cell := { cellDefaults with
  domain := ⟨(75225000000000003 / 100000000000000000 : ℚ), (150475000000000009 / 200000000000000000 : ℚ)⟩
  r := (48605332701547 / 100000000000000 : ℚ)
  w := (13438526091401 / 10000000000000 : ℚ)
  center := (60185000000000003 / 80000000000000000 : ℚ)
  supportValue := (6619638471847339 / 25000000000000000 : ℚ)
  supportSlope := (-7776507982856407 / 10000000000000000 : ℚ)
  oldCenter := (6619638471847339 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1739
  oldLo := (26450000000000001 / 100000000000000000 : ℚ)
  oldHi := (26500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_676]
}

noncomputable def cell_12646 : Cell := { cellDefaults with
  domain := ⟨(150475000000000009 / 200000000000000000 : ℚ), (37625000000000003 / 50000000000000000 : ℚ)⟩
  r := (48605332701547 / 100000000000000 : ℚ)
  w := (13438526091401 / 10000000000000 : ℚ)
  center := (300975000000000021 / 400000000000000000 : ℚ)
  supportValue := (2646883825789629 / 10000000000000000 : ℚ)
  supportSlope := (-7768502989690297 / 10000000000000000 : ℚ)
  oldCenter := (2646883825789629 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1739
  oldLo := (26450000000000001 / 100000000000000000 : ℚ)
  oldHi := (26500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_676]
}

noncomputable def cell_12647 : Cell := { cellDefaults with
  domain := ⟨(37625000000000003 / 50000000000000000 : ℚ), (150525000000000009 / 200000000000000000 : ℚ)⟩
  r := (971718503357 / 2000000000000 : ℚ)
  w := (6719127211139 / 5000000000000 : ℚ)
  center := (301025000000000021 / 400000000000000000 : ℚ)
  supportValue := (2647653200035743 / 10000000000000000 : ℚ)
  supportSlope := (-3885981338492183 / 5000000000000000 : ℚ)
  oldCenter := (2647653200035743 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1740
  oldLo := (26450000000000001 / 100000000000000000 : ℚ)
  oldHi := (26500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_676]
}

noncomputable def cell_12648 : Cell := { cellDefaults with
  domain := ⟨(150525000000000009 / 200000000000000000 : ℚ), (75275000000000003 / 100000000000000000 : ℚ)⟩
  r := (971718503357 / 2000000000000 : ℚ)
  w := (6719127211139 / 5000000000000 : ℚ)
  center := (60215000000000003 / 80000000000000000 : ℚ)
  supportValue := (26466822044368343 / 100000000000000000 : ℚ)
  supportSlope := (-3881985335616921 / 5000000000000000 : ℚ)
  oldCenter := (26466822044368343 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1740
  oldLo := (26450000000000001 / 100000000000000000 : ℚ)
  oldHi := (26500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_676]
}

noncomputable def cell_12649 : Cell := { cellDefaults with
  domain := ⟨(75275000000000003 / 100000000000000000 : ℚ), (150575000000000003 / 200000000000000000 : ℚ)⟩
  r := (971718503357 / 2000000000000 : ℚ)
  w := (6719127211139 / 5000000000000 : ℚ)
  center := (301125000000000009 / 400000000000000000 : ℚ)
  supportValue := (26457122057357263 / 100000000000000000 : ℚ)
  supportSlope := (-7756012262821563 / 10000000000000000 : ℚ)
  oldCenter := (26457122057357263 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1740
  oldLo := (26450000000000001 / 100000000000000000 : ℚ)
  oldHi := (26500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_676]
}

theorem check_12600 : cell_12600.check = true := by
  decide +kernel

theorem check_12601 : cell_12601.check = true := by
  decide +kernel

theorem check_12602 : cell_12602.check = true := by
  decide +kernel

theorem check_12603 : cell_12603.check = true := by
  decide +kernel

theorem check_12604 : cell_12604.check = true := by
  decide +kernel

theorem check_12605 : cell_12605.check = true := by
  decide +kernel

theorem check_12606 : cell_12606.check = true := by
  decide +kernel

theorem check_12607 : cell_12607.check = true := by
  decide +kernel

theorem check_12608 : cell_12608.check = true := by
  decide +kernel

theorem check_12609 : cell_12609.check = true := by
  decide +kernel

theorem check_12610 : cell_12610.check = true := by
  decide +kernel

theorem check_12611 : cell_12611.check = true := by
  decide +kernel

theorem check_12612 : cell_12612.check = true := by
  decide +kernel

theorem check_12613 : cell_12613.check = true := by
  decide +kernel

theorem check_12614 : cell_12614.check = true := by
  decide +kernel

theorem check_12615 : cell_12615.check = true := by
  decide +kernel

theorem check_12616 : cell_12616.check = true := by
  decide +kernel

theorem check_12617 : cell_12617.check = true := by
  decide +kernel

theorem check_12618 : cell_12618.check = true := by
  decide +kernel

theorem check_12619 : cell_12619.check = true := by
  decide +kernel

theorem check_12620 : cell_12620.check = true := by
  decide +kernel

theorem check_12621 : cell_12621.check = true := by
  decide +kernel

theorem check_12622 : cell_12622.check = true := by
  decide +kernel

theorem check_12623 : cell_12623.check = true := by
  decide +kernel

theorem check_12624 : cell_12624.check = true := by
  decide +kernel

theorem check_12625 : cell_12625.check = true := by
  decide +kernel

theorem check_12626 : cell_12626.check = true := by
  decide +kernel

theorem check_12627 : cell_12627.check = true := by
  decide +kernel

theorem check_12628 : cell_12628.check = true := by
  decide +kernel

theorem check_12629 : cell_12629.check = true := by
  decide +kernel

theorem check_12630 : cell_12630.check = true := by
  decide +kernel

theorem check_12631 : cell_12631.check = true := by
  decide +kernel

theorem check_12632 : cell_12632.check = true := by
  decide +kernel

theorem check_12633 : cell_12633.check = true := by
  decide +kernel

theorem check_12634 : cell_12634.check = true := by
  decide +kernel

theorem check_12635 : cell_12635.check = true := by
  decide +kernel

theorem check_12636 : cell_12636.check = true := by
  decide +kernel

theorem check_12637 : cell_12637.check = true := by
  decide +kernel

theorem check_12638 : cell_12638.check = true := by
  decide +kernel

theorem check_12639 : cell_12639.check = true := by
  decide +kernel

theorem check_12640 : cell_12640.check = true := by
  decide +kernel

theorem check_12641 : cell_12641.check = true := by
  decide +kernel

theorem check_12642 : cell_12642.check = true := by
  decide +kernel

theorem check_12643 : cell_12643.check = true := by
  decide +kernel

theorem check_12644 : cell_12644.check = true := by
  decide +kernel

theorem check_12645 : cell_12645.check = true := by
  decide +kernel

theorem check_12646 : cell_12646.check = true := by
  decide +kernel

theorem check_12647 : cell_12647.check = true := by
  decide +kernel

theorem check_12648 : cell_12648.check = true := by
  decide +kernel

theorem check_12649 : cell_12649.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12600, cell_12601, cell_12602, cell_12603, cell_12604, cell_12605, cell_12606, cell_12607, cell_12608, cell_12609, cell_12610, cell_12611, cell_12612, cell_12613, cell_12614, cell_12615, cell_12616, cell_12617, cell_12618, cell_12619, cell_12620, cell_12621, cell_12622, cell_12623, cell_12624, cell_12625, cell_12626, cell_12627, cell_12628, cell_12629, cell_12630, cell_12631, cell_12632, cell_12633, cell_12634, cell_12635, cell_12636, cell_12637, cell_12638, cell_12639, cell_12640, cell_12641, cell_12642, cell_12643, cell_12644, cell_12645, cell_12646, cell_12647, cell_12648, cell_12649]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12600, check_12601, check_12602, check_12603, check_12604, check_12605, check_12606, check_12607, check_12608, check_12609, check_12610, check_12611, check_12612, check_12613, check_12614, check_12615, check_12616, check_12617, check_12618, check_12619, check_12620, check_12621, check_12622, check_12623, check_12624, check_12625, check_12626, check_12627, check_12628, check_12629, check_12630, check_12631, check_12632, check_12633, check_12634, check_12635, check_12636, check_12637, check_12638, check_12639, check_12640, check_12641, check_12642, check_12643, check_12644, check_12645, check_12646, check_12647, check_12648, check_12649, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0252

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0252
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0252
open AnalyticBounds.ExpressionCertificate

theorem linked_12600 : Linked cell_12600 pieces := by
  link_source cell_12600 with piece_1727 using piece_1727_mem, piece_681_mem

theorem linked_12601 : Linked cell_12601 pieces := by
  link_source cell_12601 with piece_1727 using piece_1727_mem, piece_681_mem

theorem linked_12602 : Linked cell_12602 pieces := by
  link_source cell_12602 with piece_1727 using piece_1727_mem, piece_681_mem

theorem linked_12603 : Linked cell_12603 pieces := by
  link_source cell_12603 with piece_1727 using piece_1727_mem, piece_681_mem

theorem linked_12604 : Linked cell_12604 pieces := by
  link_source cell_12604 with piece_1728 using piece_1728_mem, piece_681_mem

theorem linked_12605 : Linked cell_12605 pieces := by
  link_source cell_12605 with piece_1728 using piece_1728_mem, ⟨piece_680_mem, piece_681_mem⟩

theorem linked_12606 : Linked cell_12606 pieces := by
  link_source cell_12606 with piece_1728 using piece_1728_mem, piece_680_mem

theorem linked_12607 : Linked cell_12607 pieces := by
  link_source cell_12607 with piece_1728 using piece_1728_mem, piece_680_mem

theorem linked_12608 : Linked cell_12608 pieces := by
  link_source cell_12608 with piece_1729 using piece_1729_mem, piece_680_mem

theorem linked_12609 : Linked cell_12609 pieces := by
  link_source cell_12609 with piece_1729 using piece_1729_mem, piece_680_mem

theorem linked_12610 : Linked cell_12610 pieces := by
  link_source cell_12610 with piece_1729 using piece_1729_mem, piece_680_mem

theorem linked_12611 : Linked cell_12611 pieces := by
  link_source cell_12611 with piece_1729 using piece_1729_mem, piece_680_mem

theorem linked_12612 : Linked cell_12612 pieces := by
  link_source cell_12612 with piece_1730 using piece_1730_mem, piece_680_mem

theorem linked_12613 : Linked cell_12613 pieces := by
  link_source cell_12613 with piece_1730 using piece_1730_mem, piece_680_mem

theorem linked_12614 : Linked cell_12614 pieces := by
  link_source cell_12614 with piece_1730 using piece_1730_mem, ⟨piece_679_mem, piece_680_mem⟩

theorem linked_12615 : Linked cell_12615 pieces := by
  link_source cell_12615 with piece_1730 using piece_1730_mem, piece_679_mem

theorem linked_12616 : Linked cell_12616 pieces := by
  link_source cell_12616 with piece_1731 using piece_1731_mem, ⟨piece_679_mem, piece_680_mem⟩

theorem linked_12617 : Linked cell_12617 pieces := by
  link_source cell_12617 with piece_1731 using piece_1731_mem, piece_679_mem

theorem linked_12618 : Linked cell_12618 pieces := by
  link_source cell_12618 with piece_1731 using piece_1731_mem, piece_679_mem

theorem linked_12619 : Linked cell_12619 pieces := by
  link_source cell_12619 with piece_1731 using piece_1731_mem, piece_679_mem

theorem linked_12620 : Linked cell_12620 pieces := by
  link_source cell_12620 with piece_1732 using piece_1732_mem, piece_679_mem

theorem linked_12621 : Linked cell_12621 pieces := by
  link_source cell_12621 with piece_1732 using piece_1732_mem, piece_679_mem

theorem linked_12622 : Linked cell_12622 pieces := by
  link_source cell_12622 with piece_1732 using piece_1732_mem, piece_679_mem

theorem linked_12623 : Linked cell_12623 pieces := by
  link_source cell_12623 with piece_1732 using piece_1732_mem, ⟨piece_678_mem, piece_679_mem⟩

theorem linked_12624 : Linked cell_12624 pieces := by
  link_source cell_12624 with piece_1733 using piece_1733_mem, piece_679_mem

theorem linked_12625 : Linked cell_12625 pieces := by
  link_source cell_12625 with piece_1733 using piece_1733_mem, ⟨piece_678_mem, piece_679_mem⟩

theorem linked_12626 : Linked cell_12626 pieces := by
  link_source cell_12626 with piece_1733 using piece_1733_mem, piece_678_mem

theorem linked_12627 : Linked cell_12627 pieces := by
  link_source cell_12627 with piece_1733 using piece_1733_mem, piece_678_mem

theorem linked_12628 : Linked cell_12628 pieces := by
  link_source cell_12628 with piece_1734 using piece_1734_mem, piece_678_mem

theorem linked_12629 : Linked cell_12629 pieces := by
  link_source cell_12629 with piece_1734 using piece_1734_mem, piece_678_mem

theorem linked_12630 : Linked cell_12630 pieces := by
  link_source cell_12630 with piece_1734 using piece_1734_mem, piece_678_mem

theorem linked_12631 : Linked cell_12631 pieces := by
  link_source cell_12631 with piece_1734 using piece_1734_mem, ⟨piece_677_mem, piece_678_mem⟩

theorem linked_12632 : Linked cell_12632 pieces := by
  link_source cell_12632 with piece_1735 using piece_1735_mem, piece_678_mem

theorem linked_12633 : Linked cell_12633 pieces := by
  link_source cell_12633 with piece_1735 using piece_1735_mem, ⟨piece_677_mem, piece_678_mem⟩

theorem linked_12634 : Linked cell_12634 pieces := by
  link_source cell_12634 with piece_1735 using piece_1735_mem, piece_677_mem

theorem linked_12635 : Linked cell_12635 pieces := by
  link_source cell_12635 with piece_1735 using piece_1735_mem, piece_677_mem

theorem linked_12636 : Linked cell_12636 pieces := by
  link_source cell_12636 with piece_1736 using piece_1736_mem, piece_677_mem

theorem linked_12637 : Linked cell_12637 pieces := by
  link_source cell_12637 with piece_1737 using piece_1737_mem, piece_677_mem

theorem linked_12638 : Linked cell_12638 pieces := by
  link_source cell_12638 with piece_1737 using piece_1737_mem, piece_677_mem

theorem linked_12639 : Linked cell_12639 pieces := by
  link_source cell_12639 with piece_1738 using piece_1738_mem, piece_677_mem

theorem linked_12640 : Linked cell_12640 pieces := by
  link_source cell_12640 with piece_1738 using piece_1738_mem, piece_677_mem

theorem linked_12641 : Linked cell_12641 pieces := by
  link_source cell_12641 with piece_1738 using piece_1738_mem, ⟨piece_676_mem, piece_677_mem⟩

theorem linked_12642 : Linked cell_12642 pieces := by
  link_source cell_12642 with piece_1738 using piece_1738_mem, piece_676_mem

theorem linked_12643 : Linked cell_12643 pieces := by
  link_source cell_12643 with piece_1739 using piece_1739_mem, ⟨piece_676_mem, piece_677_mem⟩

theorem linked_12644 : Linked cell_12644 pieces := by
  link_source cell_12644 with piece_1739 using piece_1739_mem, piece_676_mem

theorem linked_12645 : Linked cell_12645 pieces := by
  link_source cell_12645 with piece_1739 using piece_1739_mem, piece_676_mem

theorem linked_12646 : Linked cell_12646 pieces := by
  link_source cell_12646 with piece_1739 using piece_1739_mem, piece_676_mem

theorem linked_12647 : Linked cell_12647 pieces := by
  link_source cell_12647 with piece_1740 using piece_1740_mem, piece_676_mem

theorem linked_12648 : Linked cell_12648 pieces := by
  link_source cell_12648 with piece_1740 using piece_1740_mem, piece_676_mem

theorem linked_12649 : Linked cell_12649 pieces := by
  link_source cell_12649 with piece_1740 using piece_1740_mem, piece_676_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0252.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0252.cells,List.forall_mem_cons]
  exact ⟨linked_12600, linked_12601, linked_12602, linked_12603, linked_12604, linked_12605, linked_12606, linked_12607, linked_12608, linked_12609, linked_12610, linked_12611, linked_12612, linked_12613, linked_12614, linked_12615, linked_12616, linked_12617, linked_12618, linked_12619, linked_12620, linked_12621, linked_12622, linked_12623, linked_12624, linked_12625, linked_12626, linked_12627, linked_12628, linked_12629, linked_12630, linked_12631, linked_12632, linked_12633, linked_12634, linked_12635, linked_12636, linked_12637, linked_12638, linked_12639, linked_12640, linked_12641, linked_12642, linked_12643, linked_12644, linked_12645, linked_12646, linked_12647, linked_12648, linked_12649, by simp⟩

theorem covered : covers (14930000000000001 / 20000000000000000 : ℚ) (150575000000000003 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0252.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0252
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0253
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(150575000000000003 / 200000000000000000 : ℚ), (753 / 1000 : ℚ)⟩
  branch := .left
  r := (9713308323023 / 20000000000000 : ℚ)
  w := (6718997685463 / 5000000000000 : ℚ)
  center := (301175000000000003 / 400000000000000000 : ℚ)
  supportValue := (1322372287161481 / 5000000000000000 : ℚ)
  supportSlope := (-7759047957761431 / 10000000000000000 : ℚ)
  oldCenter := (1322372287161481 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1741
  oldLo := (26350000000000001 / 100000000000000000 : ℚ)
  oldHi := (26400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_673]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12650 : Cell := { cellDefaults with
  r := (971718503357 / 2000000000000 : ℚ)
  w := (6719127211139 / 5000000000000 : ℚ)
  newCoefficients := coefficients_1740
  oldLo := (264413407821229 / 1000000000000000 : ℚ)
  oldHi := (26500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_675, piece_676]
}

noncomputable def cell_12651 : Cell := { cellDefaults with
  domain := ⟨(753 / 1000 : ℚ), (150625000000000003 / 200000000000000000 : ℚ)⟩
  center := (301225000000000003 / 400000000000000000 : ℚ)
  supportValue := (13227542265785877 / 50000000000000000 : ℚ)
  supportSlope := (-7751477804037913 / 10000000000000000 : ℚ)
  oldCenter := (13227542265785877 / 50000000000000000 : ℚ)
  oldLo := (26450000000000001 / 100000000000000000 : ℚ)
  oldHi := (26500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_676]
}

noncomputable def cell_12652 : Cell := { cellDefaults with
  domain := ⟨(150625000000000003 / 200000000000000000 : ℚ), (75325000000000003 / 100000000000000000 : ℚ)⟩
  center := (301275000000000009 / 400000000000000000 : ℚ)
  supportValue := (2644541012248183 / 10000000000000000 : ℚ)
  supportSlope := (-7757518399102061 / 10000000000000000 : ℚ)
  oldCenter := (2644541012248183 / 10000000000000000 : ℚ)
  oldLo := (26400000000000001 / 100000000000000000 : ℚ)
  oldHi := (26500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_674, piece_675, piece_676]
}

noncomputable def cell_12653 : Cell := { cellDefaults with
  domain := ⟨(75325000000000003 / 100000000000000000 : ℚ), (150675000000000009 / 200000000000000000 : ℚ)⟩
  center := (60265000000000003 / 80000000000000000 : ℚ)
  supportValue := (2643569924868699 / 10000000000000000 : ℚ)
  supportSlope := (-7749913445022253 / 10000000000000000 : ℚ)
  oldCenter := (2643569924868699 / 10000000000000000 : ℚ)
  oldLo := (26400000000000001 / 100000000000000000 : ℚ)
  oldHi := (264413407821229 / 1000000000000000 : ℚ)
  oldPieces := [piece_674]
}

noncomputable def cell_12654 : Cell := { cellDefaults with
  domain := ⟨(150675000000000009 / 200000000000000000 : ℚ), (37675000000000003 / 50000000000000000 : ℚ)⟩
  center := (301375000000000021 / 400000000000000000 : ℚ)
  supportValue := (1321300842116583 / 5000000000000000 : ℚ)
  supportSlope := (-3870970245451557 / 5000000000000000 : ℚ)
  oldCenter := (1321300842116583 / 5000000000000000 : ℚ)
  oldLo := (26400000000000001 / 100000000000000000 : ℚ)
  oldHi := (264413407821229 / 1000000000000000 : ℚ)
  oldPieces := [piece_674]
}

noncomputable def cell_12655 : Cell := { cellDefaults with
  domain := ⟨(37675000000000003 / 50000000000000000 : ℚ), (150725000000000009 / 200000000000000000 : ℚ)⟩
  r := (4854717777349 / 10000000000000 : ℚ)
  w := (209964719169 / 156250000000 : ℚ)
  center := (301425000000000021 / 400000000000000000 : ℚ)
  supportValue := (330420707892121 / 1250000000000000 : ℚ)
  supportSlope := (-387268393988329 / 500000000000000 : ℚ)
  oldCenter := (330420707892121 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1742
  oldLo := (26400000000000001 / 100000000000000000 : ℚ)
  oldHi := (264413407821229 / 1000000000000000 : ℚ)
  oldPieces := [piece_674]
}

noncomputable def cell_12656 : Cell := { cellDefaults with
  domain := ⟨(150725000000000009 / 200000000000000000 : ℚ), (75375000000000003 / 100000000000000000 : ℚ)⟩
  r := (4854717777349 / 10000000000000 : ℚ)
  w := (209964719169 / 156250000000 : ℚ)
  center := (60295000000000003 / 80000000000000000 : ℚ)
  supportValue := (2642397989881441 / 10000000000000000 : ℚ)
  supportSlope := (-967175994750607 / 1250000000000000 : ℚ)
  oldCenter := (2642397989881441 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1742
  oldLo := (26400000000000001 / 100000000000000000 : ℚ)
  oldHi := (264413407821229 / 1000000000000000 : ℚ)
  oldPieces := [piece_674]
}

noncomputable def cell_12657 : Cell := { cellDefaults with
  domain := ⟨(75375000000000003 / 100000000000000000 : ℚ), (150775000000000003 / 200000000000000000 : ℚ)⟩
  r := (4854717777349 / 10000000000000 : ℚ)
  w := (209964719169 / 156250000000 : ℚ)
  center := (301525000000000009 / 400000000000000000 : ℚ)
  supportValue := (13207156547606333 / 50000000000000000 : ℚ)
  supportSlope := (-966185188123863 / 1250000000000000 : ℚ)
  oldCenter := (13207156547606333 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1742
  oldLo := (26400000000000001 / 100000000000000000 : ℚ)
  oldHi := (264413407821229 / 1000000000000000 : ℚ)
  oldPieces := [piece_674]
}

noncomputable def cell_12658 : Cell := { cellDefaults with
  domain := ⟨(150775000000000003 / 200000000000000000 : ℚ), (377 / 500 : ℚ)⟩
  r := (4854717777349 / 10000000000000 : ℚ)
  w := (209964719169 / 156250000000 : ℚ)
  center := (301575000000000003 / 400000000000000000 : ℚ)
  supportValue := (26404674662116767 / 100000000000000000 : ℚ)
  supportSlope := (-1544369834322453 / 2000000000000000 : ℚ)
  oldCenter := (26404674662116767 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1742
  oldHi := (264413407821229 / 1000000000000000 : ℚ)
  oldPieces := [piece_673, piece_674]
}

noncomputable def cell_12659 : Cell := { cellDefaults with
  domain := ⟨(377 / 500 : ℚ), (150825000000000003 / 200000000000000000 : ℚ)⟩
  r := (12131961013593 / 25000000000000 : ℚ)
  w := (13437515126799 / 10000000000000 : ℚ)
  center := (301625000000000003 / 400000000000000000 : ℚ)
  supportValue := (26412228391951237 / 100000000000000000 : ℚ)
  supportSlope := (-1931231960869741 / 2500000000000000 : ℚ)
  oldCenter := (26412228391951237 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1743
  oldLo := (26400000000000001 / 100000000000000000 : ℚ)
  oldHi := (264413407821229 / 1000000000000000 : ℚ)
  oldPieces := [piece_674]
}

noncomputable def cell_12660 : Cell := { cellDefaults with
  domain := ⟨(150825000000000003 / 200000000000000000 : ℚ), (75425000000000003 / 100000000000000000 : ℚ)⟩
  r := (12131961013593 / 25000000000000 : ℚ)
  w := (13437515126799 / 10000000000000 : ℚ)
  center := (301675000000000009 / 400000000000000000 : ℚ)
  supportValue := (3300324455166883 / 12500000000000000 : ℚ)
  supportSlope := (-3860186956132309 / 5000000000000000 : ℚ)
  oldCenter := (3300324455166883 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1743
  oldHi := (264413407821229 / 1000000000000000 : ℚ)
  oldPieces := [piece_673, piece_674]
}

noncomputable def cell_12661 : Cell := { cellDefaults with
  domain := ⟨(75425000000000003 / 100000000000000000 : ℚ), (150875000000000009 / 200000000000000000 : ℚ)⟩
  r := (12131961013593 / 25000000000000 : ℚ)
  w := (13437515126799 / 10000000000000 : ℚ)
  center := (60345000000000003 / 80000000000000000 : ℚ)
  supportValue := (659823068295709 / 2500000000000000 : ℚ)
  supportSlope := (-7723353349432711 / 10000000000000000 : ℚ)
  oldCenter := (659823068295709 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1743
  oldPieces := [piece_673]
}

noncomputable def cell_12662 : Cell := { cellDefaults with
  domain := ⟨(150875000000000009 / 200000000000000000 : ℚ), (37725000000000003 / 50000000000000000 : ℚ)⟩
  r := (12131961013593 / 25000000000000 : ℚ)
  w := (13437515126799 / 10000000000000 : ℚ)
  center := (301775000000000021 / 400000000000000000 : ℚ)
  supportValue := (26383273512227307 / 100000000000000000 : ℚ)
  supportSlope := (-7715401783564743 / 10000000000000000 : ℚ)
  oldCenter := (26383273512227307 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1743
  oldPieces := [piece_673]
}

noncomputable def cell_12663 : Cell := { cellDefaults with
  domain := ⟨(37725000000000003 / 50000000000000000 : ℚ), (150925000000000009 / 200000000000000000 : ℚ)⟩
  r := (4850852471017 / 10000000000000 : ℚ)
  w := (13437281491967 / 10000000000000 : ℚ)
  center := (301825000000000021 / 400000000000000000 : ℚ)
  supportValue := (13195428283041133 / 50000000000000000 : ℚ)
  supportSlope := (-120606299943441 / 156250000000000 : ℚ)
  oldCenter := (13195428283041133 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1744
  oldPieces := [piece_673]
}

noncomputable def cell_12664 : Cell := { cellDefaults with
  domain := ⟨(150925000000000009 / 200000000000000000 : ℚ), (75475000000000003 / 100000000000000000 : ℚ)⟩
  r := (4850852471017 / 10000000000000 : ℚ)
  w := (13437281491967 / 10000000000000 : ℚ)
  center := (60375000000000003 / 80000000000000000 : ℚ)
  supportValue := (2638121302597709 / 10000000000000000 : ℚ)
  supportSlope := (-1927716181258319 / 2500000000000000 : ℚ)
  oldCenter := (2638121302597709 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1744
  oldPieces := [piece_673]
}

noncomputable def cell_12665 : Cell := { cellDefaults with
  domain := ⟨(75475000000000003 / 100000000000000000 : ℚ), (150975000000000003 / 200000000000000000 : ℚ)⟩
  r := (4850852471017 / 10000000000000 : ℚ)
  w := (13437281491967 / 10000000000000 : ℚ)
  center := (301925000000000009 / 400000000000000000 : ℚ)
  supportValue := (5274315877608553 / 20000000000000000 : ℚ)
  supportSlope := (-962869959232453 / 1250000000000000 : ℚ)
  oldCenter := (5274315877608553 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1744
  oldPieces := [piece_673]
}

noncomputable def cell_12666 : Cell := { cellDefaults with
  domain := ⟨(150975000000000003 / 200000000000000000 : ℚ), (151 / 200 : ℚ)⟩
  r := (4850852471017 / 10000000000000 : ℚ)
  w := (13437281491967 / 10000000000000 : ℚ)
  center := (301975000000000003 / 400000000000000000 : ℚ)
  supportValue := (659048890265963 / 2500000000000000 : ℚ)
  supportSlope := (-7695087828186543 / 10000000000000000 : ℚ)
  oldCenter := (659048890265963 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1744
  oldPieces := [piece_673]
}

noncomputable def cell_12667 : Cell := { cellDefaults with
  domain := ⟨(151 / 200 : ℚ), (151025000000000003 / 200000000000000000 : ℚ)⟩
  r := (6061154708651 / 12500000000000 : ℚ)
  w := (6718538832933 / 5000000000000 : ℚ)
  center := (302025000000000003 / 400000000000000000 : ℚ)
  supportValue := (2636946420983009 / 10000000000000000 : ℚ)
  supportSlope := (-7698396596004429 / 10000000000000000 : ℚ)
  oldCenter := (2636946420983009 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1745
  oldPieces := [piece_673]
}

noncomputable def cell_12668 : Cell := { cellDefaults with
  domain := ⟨(151025000000000003 / 200000000000000000 : ℚ), (75525000000000003 / 100000000000000000 : ℚ)⟩
  r := (6061154708651 / 12500000000000 : ℚ)
  w := (6718538832933 / 5000000000000 : ℚ)
  center := (302075000000000009 / 400000000000000000 : ℚ)
  supportValue := (1317992306403817 / 5000000000000000 : ℚ)
  supportSlope := (-7690537847161637 / 10000000000000000 : ℚ)
  oldCenter := (1317992306403817 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1745
  oldPieces := [piece_673]
}

noncomputable def cell_12669 : Cell := { cellDefaults with
  domain := ⟨(75525000000000003 / 100000000000000000 : ℚ), (151075000000000009 / 200000000000000000 : ℚ)⟩
  r := (6061154708651 / 12500000000000 : ℚ)
  w := (6718538832933 / 5000000000000 : ℚ)
  center := (60425000000000003 / 80000000000000000 : ℚ)
  supportValue := (2635025629432093 / 10000000000000000 : ℚ)
  supportSlope := (-3844727765866623 / 5000000000000000 : ℚ)
  oldCenter := (2635025629432093 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1745
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672, piece_673]
}

noncomputable def cell_12670 : Cell := { cellDefaults with
  domain := ⟨(151075000000000009 / 200000000000000000 : ℚ), (37775000000000003 / 50000000000000000 : ℚ)⟩
  r := (6061154708651 / 12500000000000 : ℚ)
  w := (6718538832933 / 5000000000000 : ℚ)
  center := (302175000000000021 / 400000000000000000 : ℚ)
  supportValue := (1053624883832039 / 4000000000000000 : ℚ)
  supportSlope := (-768897185929781 / 1000000000000000 : ℚ)
  oldCenter := (1053624883832039 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1745
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672]
}

noncomputable def cell_12671 : Cell := { cellDefaults with
  domain := ⟨(37775000000000003 / 50000000000000000 : ℚ), (302250000000000019 / 400000000000000000 : ℚ)⟩
  r := (12117491780197 / 25000000000000 : ℚ)
  w := (2687374680163 / 2000000000000 : ℚ)
  center := (604450000000000043 / 800000000000000000 : ℚ)
  supportValue := (2634814853221509 / 10000000000000000 : ℚ)
  supportSlope := (-7688012639165067 / 10000000000000000 : ℚ)
  oldCenter := (2634814853221509 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1746
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672, piece_673]
}

noncomputable def cell_12672 : Cell := { cellDefaults with
  domain := ⟨(302250000000000019 / 400000000000000000 : ℚ), (151150000000000007 / 200000000000000000 : ℚ)⟩
  r := (12117491780197 / 25000000000000 : ℚ)
  w := (2687374680163 / 2000000000000 : ℚ)
  center := (604550000000000033 / 800000000000000000 : ℚ)
  supportValue := (526770392326957 / 2000000000000000 : ℚ)
  supportSlope := (-3842206720552739 / 5000000000000000 : ℚ)
  oldCenter := (526770392326957 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1746
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672]
}

noncomputable def cell_12673 : Cell := { cellDefaults with
  domain := ⟨(151150000000000007 / 200000000000000000 : ℚ), (302350000000000009 / 400000000000000000 : ℚ)⟩
  r := (12117491780197 / 25000000000000 : ℚ)
  w := (2687374680163 / 2000000000000 : ℚ)
  center := (604650000000000023 / 800000000000000000 : ℚ)
  supportValue := (13164459519349367 / 50000000000000000 : ℚ)
  supportSlope := (-7676514533950453 / 10000000000000000 : ℚ)
  oldCenter := (13164459519349367 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1746
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672]
}

noncomputable def cell_12674 : Cell := { cellDefaults with
  domain := ⟨(302350000000000009 / 400000000000000000 : ℚ), (75600000000000001 / 100000000000000000 : ℚ)⟩
  r := (12117491780197 / 25000000000000 : ℚ)
  w := (2687374680163 / 2000000000000 : ℚ)
  center := (604750000000000013 / 800000000000000000 : ℚ)
  supportValue := (2631932831385827 / 10000000000000000 : ℚ)
  supportSlope := (-1917162224587457 / 2500000000000000 : ℚ)
  oldCenter := (2631932831385827 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1746
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672]
}

noncomputable def cell_12675 : Cell := { cellDefaults with
  domain := ⟨(75600000000000001 / 100000000000000000 : ℚ), (302450000000000009 / 400000000000000000 : ℚ)⟩
  r := (48450723448861 / 100000000000000 : ℚ)
  w := (13436688766839 / 10000000000000 : ℚ)
  center := (604850000000000013 / 800000000000000000 : ℚ)
  supportValue := (1316339109880921 / 5000000000000000 : ℚ)
  supportSlope := (-7671944810886743 / 10000000000000000 : ℚ)
  oldCenter := (1316339109880921 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1747
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672]
}

noncomputable def cell_12676 : Cell := { cellDefaults with
  domain := ⟨(302450000000000009 / 400000000000000000 : ℚ), (151250000000000007 / 200000000000000000 : ℚ)⟩
  r := (48450723448861 / 100000000000000 : ℚ)
  w := (13436688766839 / 10000000000000 : ℚ)
  center := (604950000000000023 / 800000000000000000 : ℚ)
  supportValue := (2631719717667411 / 10000000000000000 : ℚ)
  supportSlope := (-1916023092307459 / 2500000000000000 : ℚ)
  oldCenter := (2631719717667411 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1747
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672]
}

noncomputable def cell_12677 : Cell := { cellDefaults with
  domain := ⟨(151250000000000007 / 200000000000000000 : ℚ), (302550000000000019 / 400000000000000000 : ℚ)⟩
  r := (48450723448861 / 100000000000000 : ℚ)
  w := (13436688766839 / 10000000000000 : ℚ)
  center := (605050000000000033 / 800000000000000000 : ℚ)
  supportValue := (2630762195064287 / 10000000000000000 : ℚ)
  supportSlope := (-7656272901685257 / 10000000000000000 : ℚ)
  oldCenter := (2630762195064287 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1747
  oldLo := (26300000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_672]
}

noncomputable def cell_12678 : Cell := { cellDefaults with
  domain := ⟨(302550000000000019 / 400000000000000000 : ℚ), (37825000000000003 / 50000000000000000 : ℚ)⟩
  r := (48450723448861 / 100000000000000 : ℚ)
  w := (13436688766839 / 10000000000000 : ℚ)
  center := (605150000000000043 / 800000000000000000 : ℚ)
  supportValue := (2629807129390881 / 10000000000000000 : ℚ)
  supportSlope := (-3829192084321037 / 5000000000000000 : ℚ)
  oldCenter := (2629807129390881 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1747
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671, piece_672]
}

noncomputable def cell_12679 : Cell := { cellDefaults with
  domain := ⟨(37825000000000003 / 50000000000000000 : ℚ), (3783240223463687 / 5000000000000000 : ℚ)⟩
  r := (48431504836201 / 100000000000000 : ℚ)
  w := (13436518713027 / 10000000000000 : ℚ)
  center := (75657402234636873 / 100000000000000000 : ℚ)
  supportValue := (26304602556395973 / 100000000000000000 : ℚ)
  supportSlope := (-7652345079362333 / 10000000000000000 : ℚ)
  oldCenter := (26304602556395973 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1748
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671, piece_672]
}

noncomputable def cell_12680 : Cell := { cellDefaults with
  domain := ⟨(3783240223463687 / 5000000000000000 : ℚ), (151364804469273741 / 200000000000000000 : ℚ)⟩
  r := (48431504836201 / 100000000000000 : ℚ)
  w := (13436518713027 / 10000000000000 : ℚ)
  center := (302694413407821221 / 400000000000000000 : ℚ)
  supportValue := (821631277758343 / 3125000000000000 : ℚ)
  supportSlope := (-306197323412773 / 400000000000000 : ℚ)
  oldCenter := (821631277758343 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1749
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671]
}

noncomputable def cell_12681 : Cell := { cellDefaults with
  domain := ⟨(151364804469273741 / 200000000000000000 : ℚ), (75700000000000001 / 100000000000000000 : ℚ)⟩
  r := (48431504836201 / 100000000000000 : ℚ)
  w := (13436518713027 / 10000000000000 : ℚ)
  center := (302764804469273743 / 400000000000000000 : ℚ)
  supportValue := (2627873961493359 / 10000000000000000 : ℚ)
  supportSlope := (-764391193639089 / 1000000000000000 : ℚ)
  oldCenter := (2627873961493359 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1749
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671]
}

noncomputable def cell_12682 : Cell := { cellDefaults with
  domain := ⟨(75700000000000001 / 100000000000000000 : ℚ), (302850000000000009 / 400000000000000000 : ℚ)⟩
  r := (48412304608329 / 100000000000000 : ℚ)
  w := (13436353478547 / 10000000000000 : ℚ)
  center := (605650000000000013 / 800000000000000000 : ℚ)
  supportValue := (3285521496874997 / 12500000000000000 : ℚ)
  supportSlope := (-152911359868553 / 200000000000000 : ℚ)
  oldCenter := (3285521496874997 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1750
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671]
}

noncomputable def cell_12683 : Cell := { cellDefaults with
  domain := ⟨(302850000000000009 / 400000000000000000 : ℚ), (151450000000000007 / 200000000000000000 : ℚ)⟩
  r := (48412304608329 / 100000000000000 : ℚ)
  w := (13436353478547 / 10000000000000 : ℚ)
  center := (605750000000000023 / 800000000000000000 : ℚ)
  supportValue := (656865497336091 / 2500000000000000 : ℚ)
  supportSlope := (-3818883057142459 / 5000000000000000 : ℚ)
  oldCenter := (656865497336091 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1750
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671]
}

noncomputable def cell_12684 : Cell := { cellDefaults with
  domain := ⟨(151450000000000007 / 200000000000000000 : ℚ), (302950000000000019 / 400000000000000000 : ℚ)⟩
  r := (48412304608329 / 100000000000000 : ℚ)
  w := (13436353478547 / 10000000000000 : ℚ)
  center := (605850000000000033 / 800000000000000000 : ℚ)
  supportValue := (1313253877188277 / 5000000000000000 : ℚ)
  supportSlope := (-7629996940465081 / 10000000000000000 : ℚ)
  oldCenter := (1313253877188277 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1750
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671]
}

noncomputable def cell_12685 : Cell := { cellDefaults with
  domain := ⟨(302950000000000019 / 400000000000000000 : ℚ), (37875000000000003 / 50000000000000000 : ℚ)⟩
  r := (48412304608329 / 100000000000000 : ℚ)
  w := (13436353478547 / 10000000000000 : ℚ)
  center := (605950000000000043 / 800000000000000000 : ℚ)
  supportValue := (26255544885214877 / 100000000000000000 : ℚ)
  supportSlope := (-7622260263050811 / 10000000000000000 : ℚ)
  oldCenter := (26255544885214877 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1750
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671]
}

noncomputable def cell_12686 : Cell := { cellDefaults with
  domain := ⟨(37875000000000003 / 50000000000000000 : ℚ), (303050000000000019 / 400000000000000000 : ℚ)⟩
  r := (9678627134683 / 20000000000000 : ℚ)
  w := (6718107244223 / 5000000000000 : ℚ)
  center := (606050000000000043 / 800000000000000000 : ℚ)
  supportValue := (26262876284074443 / 100000000000000000 : ℚ)
  supportSlope := (-476588916529289 / 625000000000000 : ℚ)
  oldCenter := (26262876284074443 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1751
  oldLo := (26250000000000001 / 100000000000000000 : ℚ)
  oldHi := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_671]
}

noncomputable def cell_12687 : Cell := { cellDefaults with
  domain := ⟨(303050000000000019 / 400000000000000000 : ℚ), (151550000000000007 / 200000000000000000 : ℚ)⟩
  r := (9678627134683 / 20000000000000 : ℚ)
  w := (6718107244223 / 5000000000000 : ℚ)
  center := (606150000000000033 / 800000000000000000 : ℚ)
  supportValue := (525067354249381 / 2000000000000000 : ℚ)
  supportSlope := (-30479117142089 / 40000000000000 : ℚ)
  oldCenter := (525067354249381 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1751
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670, piece_671]
}

noncomputable def cell_12688 : Cell := { cellDefaults with
  domain := ⟨(151550000000000007 / 200000000000000000 : ℚ), (303150000000000009 / 400000000000000000 : ℚ)⟩
  r := (9678627134683 / 20000000000000 : ℚ)
  w := (6718107244223 / 5000000000000 : ℚ)
  center := (606250000000000023 / 800000000000000000 : ℚ)
  supportValue := (2624382072492823 / 10000000000000000 : ℚ)
  supportSlope := (-1524776997817209 / 2000000000000000 : ℚ)
  oldCenter := (2624382072492823 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1751
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670]
}

noncomputable def cell_12689 : Cell := { cellDefaults with
  domain := ⟨(303150000000000009 / 400000000000000000 : ℚ), (75800000000000001 / 100000000000000000 : ℚ)⟩
  r := (9678627134683 / 20000000000000 : ℚ)
  w := (6718107244223 / 5000000000000 : ℚ)
  center := (606350000000000013 / 800000000000000000 : ℚ)
  supportValue := (2623429574614387 / 10000000000000000 : ℚ)
  supportSlope := (-190402117932217 / 250000000000000 : ℚ)
  oldCenter := (2623429574614387 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1751
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670]
}

noncomputable def cell_12690 : Cell := { cellDefaults with
  domain := ⟨(75800000000000001 / 100000000000000000 : ℚ), (303250000000000009 / 400000000000000000 : ℚ)⟩
  r := (24186990039289 / 50000000000000 : ℚ)
  w := (13436069657207 / 10000000000000 : ℚ)
  center := (606450000000000013 / 800000000000000000 : ℚ)
  supportValue := (524832744549979 / 2000000000000000 : ℚ)
  supportSlope := (-1523862252596889 / 2000000000000000 : ℚ)
  oldCenter := (524832744549979 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1752
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670]
}

noncomputable def cell_12691 : Cell := { cellDefaults with
  domain := ⟨(303250000000000009 / 400000000000000000 : ℚ), (151650000000000007 / 200000000000000000 : ℚ)⟩
  r := (24186990039289 / 50000000000000 : ℚ)
  w := (13436069657207 / 10000000000000 : ℚ)
  center := (606550000000000023 / 800000000000000000 : ℚ)
  supportValue := (26232117957571527 / 100000000000000000 : ℚ)
  supportSlope := (-1902881063475613 / 2500000000000000 : ℚ)
  oldCenter := (26232117957571527 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1752
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670]
}

noncomputable def cell_12692 : Cell := { cellDefaults with
  domain := ⟨(151650000000000007 / 200000000000000000 : ℚ), (303350000000000019 / 400000000000000000 : ℚ)⟩
  r := (24186990039289 / 50000000000000 : ℚ)
  w := (13436069657207 / 10000000000000 : ℚ)
  center := (606650000000000033 / 800000000000000000 : ℚ)
  supportValue := (65556521002339 / 250000000000000 : ℚ)
  supportSlope := (-7603769948722267 / 10000000000000000 : ℚ)
  oldCenter := (65556521002339 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1752
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670]
}

noncomputable def cell_12693 : Cell := { cellDefaults with
  domain := ⟨(303350000000000019 / 400000000000000000 : ℚ), (37925000000000003 / 50000000000000000 : ℚ)⟩
  r := (24186990039289 / 50000000000000 : ℚ)
  w := (13436069657207 / 10000000000000 : ℚ)
  center := (606750000000000043 / 800000000000000000 : ℚ)
  supportValue := (26213108516842387 / 100000000000000000 : ℚ)
  supportSlope := (-7596048138118001 / 10000000000000000 : ℚ)
  oldCenter := (26213108516842387 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1752
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670]
}

noncomputable def cell_12694 : Cell := { cellDefaults with
  domain := ⟨(37925000000000003 / 50000000000000000 : ℚ), (303450000000000019 / 400000000000000000 : ℚ)⟩
  r := (48354857435107 / 100000000000000 : ℚ)
  w := (6717977759711 / 5000000000000 : ℚ)
  center := (606850000000000043 / 800000000000000000 : ℚ)
  supportValue := (2622037449012681 / 10000000000000000 : ℚ)
  supportSlope := (-1519836612098909 / 2000000000000000 : ℚ)
  oldCenter := (2622037449012681 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1753
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670]
}

noncomputable def cell_12695 : Cell := { cellDefaults with
  domain := ⟨(303450000000000019 / 400000000000000000 : ℚ), (151750000000000007 / 200000000000000000 : ℚ)⟩
  r := (48354857435107 / 100000000000000 : ℚ)
  w := (6717977759711 / 5000000000000 : ℚ)
  center := (606950000000000033 / 800000000000000000 : ℚ)
  supportValue := (3276360041418433 / 12500000000000000 : ℚ)
  supportSlope := (-3795737252941069 / 5000000000000000 : ℚ)
  oldCenter := (3276360041418433 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1753
  oldLo := (26200000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_670]
}

noncomputable def cell_12696 : Cell := { cellDefaults with
  domain := ⟨(151750000000000007 / 200000000000000000 : ℚ), (303550000000000009 / 400000000000000000 : ℚ)⟩
  r := (48354857435107 / 100000000000000 : ℚ)
  w := (6717977759711 / 5000000000000 : ℚ)
  center := (607050000000000023 / 800000000000000000 : ℚ)
  supportValue := (5240282825815299 / 20000000000000000 : ℚ)
  supportSlope := (-3794352817303827 / 5000000000000000 : ℚ)
  oldCenter := (5240282825815299 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1753
  oldLo := (26150000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_669, piece_670]
}

noncomputable def cell_12697 : Cell := { cellDefaults with
  domain := ⟨(303550000000000009 / 400000000000000000 : ℚ), (75900000000000001 / 100000000000000000 : ℚ)⟩
  r := (48354857435107 / 100000000000000 : ℚ)
  w := (6717977759711 / 5000000000000 : ℚ)
  center := (607150000000000013 / 800000000000000000 : ℚ)
  supportValue := (13095953024231363 / 50000000000000000 : ℚ)
  supportSlope := (-7589938990140913 / 10000000000000000 : ℚ)
  oldCenter := (13095953024231363 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1753
  oldLo := (26150000000000001 / 100000000000000000 : ℚ)
  oldHi := (26200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_669]
}

noncomputable def cell_12698 : Cell := { cellDefaults with
  domain := ⟨(75900000000000001 / 100000000000000000 : ℚ), (303650000000000009 / 400000000000000000 : ℚ)⟩
  r := (9667150306417 / 20000000000000 : ℚ)
  w := (13435842535553 / 10000000000000 : ℚ)
  center := (607250000000000013 / 800000000000000000 : ℚ)
  supportValue := (2619918692652009 / 10000000000000000 : ℚ)
  supportSlope := (-1896848573115039 / 2500000000000000 : ℚ)
  oldCenter := (2619918692652009 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1754
  oldLo := (26150000000000001 / 100000000000000000 : ℚ)
  oldHi := (26250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_669, piece_670]
}

noncomputable def cell_12699 : Cell := { cellDefaults with
  domain := ⟨(303650000000000009 / 400000000000000000 : ℚ), (151850000000000007 / 200000000000000000 : ℚ)⟩
  r := (9667150306417 / 20000000000000 : ℚ)
  w := (13435842535553 / 10000000000000 : ℚ)
  center := (607350000000000023 / 800000000000000000 : ℚ)
  supportValue := (2618968203748963 / 10000000000000000 : ℚ)
  supportSlope := (-7585356327179179 / 10000000000000000 : ℚ)
  oldCenter := (2618968203748963 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1754
  oldLo := (26150000000000001 / 100000000000000000 : ℚ)
  oldHi := (26200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_669]
}

theorem check_12650 : cell_12650.check = true := by
  decide +kernel

theorem check_12651 : cell_12651.check = true := by
  decide +kernel

theorem check_12652 : cell_12652.check = true := by
  decide +kernel

theorem check_12653 : cell_12653.check = true := by
  decide +kernel

theorem check_12654 : cell_12654.check = true := by
  decide +kernel

theorem check_12655 : cell_12655.check = true := by
  decide +kernel

theorem check_12656 : cell_12656.check = true := by
  decide +kernel

theorem check_12657 : cell_12657.check = true := by
  decide +kernel

theorem check_12658 : cell_12658.check = true := by
  decide +kernel

theorem check_12659 : cell_12659.check = true := by
  decide +kernel

theorem check_12660 : cell_12660.check = true := by
  decide +kernel

theorem check_12661 : cell_12661.check = true := by
  decide +kernel

theorem check_12662 : cell_12662.check = true := by
  decide +kernel

theorem check_12663 : cell_12663.check = true := by
  decide +kernel

theorem check_12664 : cell_12664.check = true := by
  decide +kernel

theorem check_12665 : cell_12665.check = true := by
  decide +kernel

theorem check_12666 : cell_12666.check = true := by
  decide +kernel

theorem check_12667 : cell_12667.check = true := by
  decide +kernel

theorem check_12668 : cell_12668.check = true := by
  decide +kernel

theorem check_12669 : cell_12669.check = true := by
  decide +kernel

theorem check_12670 : cell_12670.check = true := by
  decide +kernel

theorem check_12671 : cell_12671.check = true := by
  decide +kernel

theorem check_12672 : cell_12672.check = true := by
  decide +kernel

theorem check_12673 : cell_12673.check = true := by
  decide +kernel

theorem check_12674 : cell_12674.check = true := by
  decide +kernel

theorem check_12675 : cell_12675.check = true := by
  decide +kernel

theorem check_12676 : cell_12676.check = true := by
  decide +kernel

theorem check_12677 : cell_12677.check = true := by
  decide +kernel

theorem check_12678 : cell_12678.check = true := by
  decide +kernel

theorem check_12679 : cell_12679.check = true := by
  decide +kernel

theorem check_12680 : cell_12680.check = true := by
  decide +kernel

theorem check_12681 : cell_12681.check = true := by
  decide +kernel

theorem check_12682 : cell_12682.check = true := by
  decide +kernel

theorem check_12683 : cell_12683.check = true := by
  decide +kernel

theorem check_12684 : cell_12684.check = true := by
  decide +kernel

theorem check_12685 : cell_12685.check = true := by
  decide +kernel

theorem check_12686 : cell_12686.check = true := by
  decide +kernel

theorem check_12687 : cell_12687.check = true := by
  decide +kernel

theorem check_12688 : cell_12688.check = true := by
  decide +kernel

theorem check_12689 : cell_12689.check = true := by
  decide +kernel

theorem check_12690 : cell_12690.check = true := by
  decide +kernel

theorem check_12691 : cell_12691.check = true := by
  decide +kernel

theorem check_12692 : cell_12692.check = true := by
  decide +kernel

theorem check_12693 : cell_12693.check = true := by
  decide +kernel

theorem check_12694 : cell_12694.check = true := by
  decide +kernel

theorem check_12695 : cell_12695.check = true := by
  decide +kernel

theorem check_12696 : cell_12696.check = true := by
  decide +kernel

theorem check_12697 : cell_12697.check = true := by
  decide +kernel

theorem check_12698 : cell_12698.check = true := by
  decide +kernel

theorem check_12699 : cell_12699.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12650, cell_12651, cell_12652, cell_12653, cell_12654, cell_12655, cell_12656, cell_12657, cell_12658, cell_12659, cell_12660, cell_12661, cell_12662, cell_12663, cell_12664, cell_12665, cell_12666, cell_12667, cell_12668, cell_12669, cell_12670, cell_12671, cell_12672, cell_12673, cell_12674, cell_12675, cell_12676, cell_12677, cell_12678, cell_12679, cell_12680, cell_12681, cell_12682, cell_12683, cell_12684, cell_12685, cell_12686, cell_12687, cell_12688, cell_12689, cell_12690, cell_12691, cell_12692, cell_12693, cell_12694, cell_12695, cell_12696, cell_12697, cell_12698, cell_12699]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12650, check_12651, check_12652, check_12653, check_12654, check_12655, check_12656, check_12657, check_12658, check_12659, check_12660, check_12661, check_12662, check_12663, check_12664, check_12665, check_12666, check_12667, check_12668, check_12669, check_12670, check_12671, check_12672, check_12673, check_12674, check_12675, check_12676, check_12677, check_12678, check_12679, check_12680, check_12681, check_12682, check_12683, check_12684, check_12685, check_12686, check_12687, check_12688, check_12689, check_12690, check_12691, check_12692, check_12693, check_12694, check_12695, check_12696, check_12697, check_12698, check_12699, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0253

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0253
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0253
open AnalyticBounds.ExpressionCertificate

theorem linked_12650 : Linked cell_12650 pieces := by
  link_source cell_12650 with piece_1740 using piece_1740_mem, ⟨piece_675_mem, piece_676_mem⟩

theorem linked_12651 : Linked cell_12651 pieces := by
  link_source cell_12651 with piece_1741 using piece_1741_mem, piece_676_mem

theorem linked_12652 : Linked cell_12652 pieces := by
  link_source cell_12652 with piece_1741 using piece_1741_mem, ⟨piece_674_mem, ⟨piece_675_mem, piece_676_mem⟩⟩

theorem linked_12653 : Linked cell_12653 pieces := by
  link_source cell_12653 with piece_1741 using piece_1741_mem, piece_674_mem

theorem linked_12654 : Linked cell_12654 pieces := by
  link_source cell_12654 with piece_1741 using piece_1741_mem, piece_674_mem

theorem linked_12655 : Linked cell_12655 pieces := by
  link_source cell_12655 with piece_1742 using piece_1742_mem, piece_674_mem

theorem linked_12656 : Linked cell_12656 pieces := by
  link_source cell_12656 with piece_1742 using piece_1742_mem, piece_674_mem

theorem linked_12657 : Linked cell_12657 pieces := by
  link_source cell_12657 with piece_1742 using piece_1742_mem, piece_674_mem

theorem linked_12658 : Linked cell_12658 pieces := by
  link_source cell_12658 with piece_1742 using piece_1742_mem, ⟨piece_673_mem, piece_674_mem⟩

theorem linked_12659 : Linked cell_12659 pieces := by
  link_source cell_12659 with piece_1743 using piece_1743_mem, piece_674_mem

theorem linked_12660 : Linked cell_12660 pieces := by
  link_source cell_12660 with piece_1743 using piece_1743_mem, ⟨piece_673_mem, piece_674_mem⟩

theorem linked_12661 : Linked cell_12661 pieces := by
  link_source cell_12661 with piece_1743 using piece_1743_mem, piece_673_mem

theorem linked_12662 : Linked cell_12662 pieces := by
  link_source cell_12662 with piece_1743 using piece_1743_mem, piece_673_mem

theorem linked_12663 : Linked cell_12663 pieces := by
  link_source cell_12663 with piece_1744 using piece_1744_mem, piece_673_mem

theorem linked_12664 : Linked cell_12664 pieces := by
  link_source cell_12664 with piece_1744 using piece_1744_mem, piece_673_mem

theorem linked_12665 : Linked cell_12665 pieces := by
  link_source cell_12665 with piece_1744 using piece_1744_mem, piece_673_mem

theorem linked_12666 : Linked cell_12666 pieces := by
  link_source cell_12666 with piece_1744 using piece_1744_mem, piece_673_mem

theorem linked_12667 : Linked cell_12667 pieces := by
  link_source cell_12667 with piece_1745 using piece_1745_mem, piece_673_mem

theorem linked_12668 : Linked cell_12668 pieces := by
  link_source cell_12668 with piece_1745 using piece_1745_mem, piece_673_mem

theorem linked_12669 : Linked cell_12669 pieces := by
  link_source cell_12669 with piece_1745 using piece_1745_mem, ⟨piece_672_mem, piece_673_mem⟩

theorem linked_12670 : Linked cell_12670 pieces := by
  link_source cell_12670 with piece_1745 using piece_1745_mem, piece_672_mem

theorem linked_12671 : Linked cell_12671 pieces := by
  link_source cell_12671 with piece_1746 using piece_1746_mem, ⟨piece_672_mem, piece_673_mem⟩

theorem linked_12672 : Linked cell_12672 pieces := by
  link_source cell_12672 with piece_1746 using piece_1746_mem, piece_672_mem

theorem linked_12673 : Linked cell_12673 pieces := by
  link_source cell_12673 with piece_1746 using piece_1746_mem, piece_672_mem

theorem linked_12674 : Linked cell_12674 pieces := by
  link_source cell_12674 with piece_1746 using piece_1746_mem, piece_672_mem

theorem linked_12675 : Linked cell_12675 pieces := by
  link_source cell_12675 with piece_1747 using piece_1747_mem, piece_672_mem

theorem linked_12676 : Linked cell_12676 pieces := by
  link_source cell_12676 with piece_1747 using piece_1747_mem, piece_672_mem

theorem linked_12677 : Linked cell_12677 pieces := by
  link_source cell_12677 with piece_1747 using piece_1747_mem, piece_672_mem

theorem linked_12678 : Linked cell_12678 pieces := by
  link_source cell_12678 with piece_1747 using piece_1747_mem, ⟨piece_671_mem, piece_672_mem⟩

theorem linked_12679 : Linked cell_12679 pieces := by
  link_source cell_12679 with piece_1748 using piece_1748_mem, ⟨piece_671_mem, piece_672_mem⟩

theorem linked_12680 : Linked cell_12680 pieces := by
  link_source cell_12680 with piece_1749 using piece_1749_mem, piece_671_mem

theorem linked_12681 : Linked cell_12681 pieces := by
  link_source cell_12681 with piece_1749 using piece_1749_mem, piece_671_mem

theorem linked_12682 : Linked cell_12682 pieces := by
  link_source cell_12682 with piece_1750 using piece_1750_mem, piece_671_mem

theorem linked_12683 : Linked cell_12683 pieces := by
  link_source cell_12683 with piece_1750 using piece_1750_mem, piece_671_mem

theorem linked_12684 : Linked cell_12684 pieces := by
  link_source cell_12684 with piece_1750 using piece_1750_mem, piece_671_mem

theorem linked_12685 : Linked cell_12685 pieces := by
  link_source cell_12685 with piece_1750 using piece_1750_mem, piece_671_mem

theorem linked_12686 : Linked cell_12686 pieces := by
  link_source cell_12686 with piece_1751 using piece_1751_mem, piece_671_mem

theorem linked_12687 : Linked cell_12687 pieces := by
  link_source cell_12687 with piece_1751 using piece_1751_mem, ⟨piece_670_mem, piece_671_mem⟩

theorem linked_12688 : Linked cell_12688 pieces := by
  link_source cell_12688 with piece_1751 using piece_1751_mem, piece_670_mem

theorem linked_12689 : Linked cell_12689 pieces := by
  link_source cell_12689 with piece_1751 using piece_1751_mem, piece_670_mem

theorem linked_12690 : Linked cell_12690 pieces := by
  link_source cell_12690 with piece_1752 using piece_1752_mem, piece_670_mem

theorem linked_12691 : Linked cell_12691 pieces := by
  link_source cell_12691 with piece_1752 using piece_1752_mem, piece_670_mem

theorem linked_12692 : Linked cell_12692 pieces := by
  link_source cell_12692 with piece_1752 using piece_1752_mem, piece_670_mem

theorem linked_12693 : Linked cell_12693 pieces := by
  link_source cell_12693 with piece_1752 using piece_1752_mem, piece_670_mem

theorem linked_12694 : Linked cell_12694 pieces := by
  link_source cell_12694 with piece_1753 using piece_1753_mem, piece_670_mem

theorem linked_12695 : Linked cell_12695 pieces := by
  link_source cell_12695 with piece_1753 using piece_1753_mem, piece_670_mem

theorem linked_12696 : Linked cell_12696 pieces := by
  link_source cell_12696 with piece_1753 using piece_1753_mem, ⟨piece_669_mem, piece_670_mem⟩

theorem linked_12697 : Linked cell_12697 pieces := by
  link_source cell_12697 with piece_1753 using piece_1753_mem, piece_669_mem

theorem linked_12698 : Linked cell_12698 pieces := by
  link_source cell_12698 with piece_1754 using piece_1754_mem, ⟨piece_669_mem, piece_670_mem⟩

theorem linked_12699 : Linked cell_12699 pieces := by
  link_source cell_12699 with piece_1754 using piece_1754_mem, piece_669_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0253.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0253.cells,List.forall_mem_cons]
  exact ⟨linked_12650, linked_12651, linked_12652, linked_12653, linked_12654, linked_12655, linked_12656, linked_12657, linked_12658, linked_12659, linked_12660, linked_12661, linked_12662, linked_12663, linked_12664, linked_12665, linked_12666, linked_12667, linked_12668, linked_12669, linked_12670, linked_12671, linked_12672, linked_12673, linked_12674, linked_12675, linked_12676, linked_12677, linked_12678, linked_12679, linked_12680, linked_12681, linked_12682, linked_12683, linked_12684, linked_12685, linked_12686, linked_12687, linked_12688, linked_12689, linked_12690, linked_12691, linked_12692, linked_12693, linked_12694, linked_12695, linked_12696, linked_12697, linked_12698, linked_12699, by simp⟩

theorem covered : covers (150575000000000003 / 200000000000000000 : ℚ) (151850000000000007 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0253.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0253
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0254
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(151850000000000007 / 200000000000000000 : ℚ), (303750000000000019 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (12079167950953 / 25000000000000 : ℚ)
  w := (839734155759 / 625000000000 : ℚ)
  center := (607450000000000033 / 800000000000000000 : ℚ)
  supportValue := (2618020518038539 / 10000000000000000 : ℚ)
  supportSlope := (-3788809318332097 / 5000000000000000 : ℚ)
  oldCenter := (2618020518038539 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1755
  oldLo := (26100000000000001 / 100000000000000000 : ℚ)
  oldHi := (26050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_668]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12700 : Cell := { cellDefaults with
  r := (9667150306417 / 20000000000000 : ℚ)
  w := (13435842535553 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1754
  oldLo := (26150000000000001 / 100000000000000000 : ℚ)
  oldHi := (26200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_669]
}

noncomputable def cell_12701 : Cell := { cellDefaults with
  domain := ⟨(303750000000000019 / 400000000000000000 : ℚ), (37975000000000003 / 50000000000000000 : ℚ)⟩
  r := (9667150306417 / 20000000000000 : ℚ)
  w := (13435842535553 / 10000000000000 : ℚ)
  center := (607550000000000043 / 800000000000000000 : ℚ)
  supportValue := (2617073797506501 / 10000000000000000 : ℚ)
  supportSlope := (-3784956712715347 / 5000000000000000 : ℚ)
  oldCenter := (2617073797506501 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1754
  oldLo := (26150000000000001 / 100000000000000000 : ℚ)
  oldHi := (26200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_669]
}

noncomputable def cell_12702 : Cell := { cellDefaults with
  domain := ⟨(37975000000000003 / 50000000000000000 : ℚ), (303850000000000019 / 400000000000000000 : ℚ)⟩
  center := (607650000000000043 / 800000000000000000 : ℚ)
  supportValue := (13088975879491363 / 50000000000000000 : ℚ)
  supportSlope := (-59164287232397 / 78125000000000 : ℚ)
  oldCenter := (13088975879491363 / 50000000000000000 : ℚ)
  oldLo := (26150000000000001 / 100000000000000000 : ℚ)
  oldHi := (26200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_669]
}

noncomputable def cell_12703 : Cell := { cellDefaults with
  domain := ⟨(303850000000000019 / 400000000000000000 : ℚ), (151950000000000007 / 200000000000000000 : ℚ)⟩
  center := (607750000000000033 / 800000000000000000 : ℚ)
  supportValue := (6542122570660959 / 25000000000000000 : ℚ)
  supportSlope := (-3782668453804861 / 5000000000000000 : ℚ)
  oldCenter := (6542122570660959 / 25000000000000000 : ℚ)
  oldLo := (26150000000000001 / 100000000000000000 : ℚ)
  oldHi := (26200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_669]
}

noncomputable def cell_12704 : Cell := { cellDefaults with
  domain := ⟨(151950000000000007 / 200000000000000000 : ℚ), (303950000000000009 / 400000000000000000 : ℚ)⟩
  center := (607850000000000023 / 800000000000000000 : ℚ)
  supportValue := (65397596002453 / 250000000000000 : ℚ)
  supportSlope := (-7557677236827631 / 10000000000000000 : ℚ)
  oldCenter := (65397596002453 / 250000000000000 : ℚ)
  oldLo := (26150000000000001 / 100000000000000000 : ℚ)
  oldHi := (26200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_669]
}

noncomputable def cell_12705 : Cell := { cellDefaults with
  domain := ⟨(303950000000000009 / 400000000000000000 : ℚ), (76000000000000001 / 100000000000000000 : ℚ)⟩
  center := (607950000000000013 / 800000000000000000 : ℚ)
  supportValue := (2614961362462187 / 10000000000000000 : ℚ)
  supportSlope := (-7557546779005309 / 10000000000000000 : ℚ)
  oldCenter := (2614961362462187 / 10000000000000000 : ℚ)
  oldHi := (26200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_668, piece_669]
}

noncomputable def cell_12706 : Cell := { cellDefaults with
  domain := ⟨(76000000000000001 / 100000000000000000 : ℚ), (304050000000000009 / 400000000000000000 : ℚ)⟩
  r := (9659523528441 / 20000000000000 : ℚ)
  w := (419864656487 / 312500000000 : ℚ)
  center := (608050000000000013 / 800000000000000000 : ℚ)
  supportValue := (1307837972384727 / 5000000000000000 : ℚ)
  supportSlope := (-1510618458020323 / 2000000000000000 : ℚ)
  oldCenter := (1307837972384727 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1756
  oldLo := (26150000000000001 / 100000000000000000 : ℚ)
  oldHi := (26200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_669]
}

noncomputable def cell_12707 : Cell := { cellDefaults with
  domain := ⟨(304050000000000009 / 400000000000000000 : ℚ), (152050000000000007 / 200000000000000000 : ℚ)⟩
  r := (9659523528441 / 20000000000000 : ℚ)
  w := (419864656487 / 312500000000 : ℚ)
  center := (608150000000000023 / 800000000000000000 : ℚ)
  supportValue := (10213803216953 / 39062500000000 : ℚ)
  supportSlope := (-5903345391737 / 7812500000000 : ℚ)
  oldCenter := (10213803216953 / 39062500000000 : ℚ)
  newCoefficients := coefficients_1756
  oldHi := (26200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_668, piece_669]
}

noncomputable def cell_12708 : Cell := { cellDefaults with
  domain := ⟨(152050000000000007 / 200000000000000000 : ℚ), (304150000000000019 / 400000000000000000 : ℚ)⟩
  r := (9659523528441 / 20000000000000 : ℚ)
  w := (419864656487 / 312500000000 : ℚ)
  center := (608250000000000033 / 800000000000000000 : ℚ)
  supportValue := (2613787368018271 / 10000000000000000 : ℚ)
  supportSlope := (-1887886182984999 / 2500000000000000 : ℚ)
  oldCenter := (2613787368018271 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1756
  oldHi := (26150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_668]
}

noncomputable def cell_12709 : Cell := { cellDefaults with
  domain := ⟨(304150000000000019 / 400000000000000000 : ℚ), (38025000000000003 / 50000000000000000 : ℚ)⟩
  r := (9659523528441 / 20000000000000 : ℚ)
  w := (419864656487 / 312500000000 : ℚ)
  center := (608350000000000043 / 800000000000000000 : ℚ)
  supportValue := (2612843905465257 / 10000000000000000 : ℚ)
  supportSlope := (-1508771934170943 / 2000000000000000 : ℚ)
  oldCenter := (2612843905465257 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1756
  oldHi := (26150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_668]
}

noncomputable def cell_12710 : Cell := { cellDefaults with
  domain := ⟨(38025000000000003 / 50000000000000000 : ℚ), (304250000000000019 / 400000000000000000 : ℚ)⟩
  r := (48278581896461 / 100000000000000 : ℚ)
  w := (13435592863207 / 10000000000000 : ℚ)
  center := (608450000000000043 / 800000000000000000 : ℚ)
  supportValue := (326694963816729 / 1250000000000000 : ℚ)
  supportSlope := (-7546950025841469 / 10000000000000000 : ℚ)
  oldCenter := (326694963816729 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1757
  oldHi := (26150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_668]
}

noncomputable def cell_12711 : Cell := { cellDefaults with
  domain := ⟨(304250000000000019 / 400000000000000000 : ℚ), (152150000000000007 / 200000000000000000 : ℚ)⟩
  r := (48278581896461 / 100000000000000 : ℚ)
  w := (13435592863207 / 10000000000000 : ℚ)
  center := (608550000000000033 / 800000000000000000 : ℚ)
  supportValue := (13063084107395573 / 50000000000000000 : ℚ)
  supportSlope := (-7539278385638369 / 10000000000000000 : ℚ)
  oldCenter := (13063084107395573 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1757
  oldHi := (26150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_668]
}

noncomputable def cell_12712 : Cell := { cellDefaults with
  domain := ⟨(152150000000000007 / 200000000000000000 : ℚ), (304350000000000009 / 400000000000000000 : ℚ)⟩
  r := (48278581896461 / 100000000000000 : ℚ)
  w := (13435592863207 / 10000000000000 : ℚ)
  center := (608650000000000023 / 800000000000000000 : ℚ)
  supportValue := (13058374446837323 / 50000000000000000 : ℚ)
  supportSlope := (-1506327777988909 / 2000000000000000 : ℚ)
  oldCenter := (13058374446837323 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1757
  oldHi := (26150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_668]
}

noncomputable def cell_12713 : Cell := { cellDefaults with
  domain := ⟨(304350000000000009 / 400000000000000000 : ℚ), (76100000000000001 / 100000000000000000 : ℚ)⟩
  r := (48278581896461 / 100000000000000 : ℚ)
  w := (13435592863207 / 10000000000000 : ℚ)
  center := (608750000000000013 / 800000000000000000 : ℚ)
  supportValue := (13053669550968247 / 50000000000000000 : ℚ)
  supportSlope := (-3762015666884209 / 5000000000000000 : ℚ)
  oldCenter := (13053669550968247 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1757
  oldHi := (26150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_668]
}

noncomputable def cell_12714 : Cell := { cellDefaults with
  domain := ⟨(76100000000000001 / 100000000000000000 : ℚ), (30445000000000001 / 40000000000000000 : ℚ)⟩
  r := (24129788280761 / 50000000000000 : ℚ)
  w := (13435545326201 / 10000000000000 : ℚ)
  center := (304425000000000007 / 400000000000000000 : ℚ)
  supportValue := (2611442762456753 / 10000000000000000 : ℚ)
  supportSlope := (-1881758891866033 / 2500000000000000 : ℚ)
  oldCenter := (2611442762456753 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1758
  oldHi := (26150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_668]
}

noncomputable def cell_12715 : Cell := { cellDefaults with
  domain := ⟨(30445000000000001 / 40000000000000000 : ℚ), (19031250000000001 / 25000000000000000 : ℚ)⟩
  r := (24129788280761 / 50000000000000 : ℚ)
  w := (13435545326201 / 10000000000000 : ℚ)
  center := (304475000000000013 / 400000000000000000 : ℚ)
  supportValue := (5221004715718871 / 20000000000000000 : ℚ)
  supportSlope := (-1879860353479531 / 2500000000000000 : ℚ)
  oldCenter := (5221004715718871 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1758
  oldHi := (26150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_668]
}

noncomputable def cell_12716 : Cell := { cellDefaults with
  domain := ⟨(19031250000000001 / 25000000000000000 : ℚ), (152275000000000011 / 200000000000000000 : ℚ)⟩
  r := (24129788280761 / 50000000000000 : ℚ)
  w := (13435545326201 / 10000000000000 : ℚ)
  center := (304525000000000019 / 400000000000000000 : ℚ)
  supportValue := (326195491089977 / 1250000000000000 : ℚ)
  supportSlope := (-7525086419403401 / 10000000000000000 : ℚ)
  oldCenter := (326195491089977 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1758
  oldLo := (26050000000000001 / 100000000000000000 : ℚ)
  oldHi := (26150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_667, piece_668]
}

noncomputable def cell_12717 : Cell := { cellDefaults with
  domain := ⟨(152275000000000011 / 200000000000000000 : ℚ), (76150000000000007 / 100000000000000000 : ℚ)⟩
  r := (24129788280761 / 50000000000000 : ℚ)
  w := (13435545326201 / 10000000000000 : ℚ)
  center := (12183000000000001 / 16000000000000000 : ℚ)
  supportValue := (2608621887307331 / 10000000000000000 : ℚ)
  supportSlope := (-751788878077607 / 1000000000000000 : ℚ)
  oldCenter := (2608621887307331 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1758
  oldLo := (26050000000000001 / 100000000000000000 : ℚ)
  oldHi := (26100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_667]
}

noncomputable def cell_12718 : Cell := { cellDefaults with
  domain := ⟨(76150000000000007 / 100000000000000000 : ℚ), (152325000000000011 / 200000000000000000 : ℚ)⟩
  r := (48240586496629 / 100000000000000 : ℚ)
  w := (6717746906949 / 5000000000000 : ℚ)
  center := (12185000000000001 / 16000000000000000 : ℚ)
  supportValue := (2609331274555069 / 10000000000000000 : ℚ)
  supportSlope := (-3760472659953169 / 5000000000000000 : ℚ)
  oldCenter := (2609331274555069 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1759
  oldLo := (26050000000000001 / 100000000000000000 : ℚ)
  oldHi := (26100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_667]
}

noncomputable def cell_12719 : Cell := { cellDefaults with
  domain := ⟨(152325000000000011 / 200000000000000000 : ℚ), (19043750000000001 / 25000000000000000 : ℚ)⟩
  r := (48240586496629 / 100000000000000 : ℚ)
  w := (6717746906949 / 5000000000000 : ℚ)
  center := (304675000000000019 / 400000000000000000 : ℚ)
  supportValue := (2608391634610713 / 10000000000000000 : ℚ)
  supportSlope := (-1878324331035189 / 2500000000000000 : ℚ)
  oldCenter := (2608391634610713 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1759
  oldLo := (26050000000000001 / 100000000000000000 : ℚ)
  oldHi := (26100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_667]
}

noncomputable def cell_12720 : Cell := { cellDefaults with
  domain := ⟨(19043750000000001 / 25000000000000000 : ℚ), (30475000000000001 / 40000000000000000 : ℚ)⟩
  r := (48240586496629 / 100000000000000 : ℚ)
  w := (6717746906949 / 5000000000000 : ℚ)
  center := (304725000000000013 / 400000000000000000 : ℚ)
  supportValue := (2607452948658177 / 10000000000000000 : ℚ)
  supportSlope := (-7505681403944043 / 10000000000000000 : ℚ)
  oldCenter := (2607452948658177 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1759
  oldLo := (26050000000000001 / 100000000000000000 : ℚ)
  oldHi := (26100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_667]
}

noncomputable def cell_12721 : Cell := { cellDefaults with
  domain := ⟨(30475000000000001 / 40000000000000000 : ℚ), (76200000000000001 / 100000000000000000 : ℚ)⟩
  r := (48240586496629 / 100000000000000 : ℚ)
  w := (6717746906949 / 5000000000000 : ℚ)
  center := (304775000000000007 / 400000000000000000 : ℚ)
  supportValue := (203634000992253 / 781250000000000 : ℚ)
  supportSlope := (-3749048677313299 / 5000000000000000 : ℚ)
  oldCenter := (203634000992253 / 781250000000000 : ℚ)
  newCoefficients := coefficients_1759
  oldLo := (26050000000000001 / 100000000000000000 : ℚ)
  oldHi := (26100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_667]
}

noncomputable def cell_12722 : Cell := { cellDefaults with
  domain := ⟨(76200000000000001 / 100000000000000000 : ℚ), (3810893854748603 / 5000000000000000 : ℚ)⟩
  r := (24110813056529 / 50000000000000 : ℚ)
  w := (2687093768041 / 2000000000000 : ℚ)
  center := (152417877094972061 / 200000000000000000 : ℚ)
  supportValue := (2607018213698209 / 10000000000000000 : ℚ)
  supportSlope := (-7499441160608619 / 10000000000000000 : ℚ)
  oldCenter := (2607018213698209 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1760
  oldLo := (26050000000000001 / 100000000000000000 : ℚ)
  oldHi := (26100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_667]
}

noncomputable def cell_12723 : Cell := { cellDefaults with
  domain := ⟨(3810893854748603 / 5000000000000000 : ℚ), (152467877094972067 / 200000000000000000 : ℚ)⟩
  r := (24110813056529 / 50000000000000 : ℚ)
  w := (2687093768041 / 2000000000000 : ℚ)
  center := (304903631284916187 / 400000000000000000 : ℚ)
  supportValue := (6514366209055271 / 25000000000000000 : ℚ)
  supportSlope := (-3744589771019213 / 5000000000000000 : ℚ)
  oldCenter := (6514366209055271 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1761
  oldLo := (26050000000000001 / 100000000000000000 : ℚ)
  oldHi := (26100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_667]
}

noncomputable def cell_12724 : Cell := { cellDefaults with
  domain := ⟨(152467877094972067 / 200000000000000000 : ℚ), (304967877094972081 / 400000000000000000 : ℚ)⟩
  r := (24110813056529 / 50000000000000 : ℚ)
  w := (2687093768041 / 2000000000000 : ℚ)
  center := (121980726256983243 / 160000000000000000 : ℚ)
  supportValue := (13024222396678753 / 50000000000000000 : ℚ)
  supportSlope := (-299691985284883 / 400000000000000 : ℚ)
  oldCenter := (13024222396678753 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1761
  oldLo := (26000000000000001 / 100000000000000000 : ℚ)
  oldHi := (26100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_666, piece_667]
}

noncomputable def cell_12725 : Cell := { cellDefaults with
  domain := ⟨(304967877094972081 / 400000000000000000 : ℚ), (76250000000000007 / 100000000000000000 : ℚ)⟩
  r := (24110813056529 / 50000000000000 : ℚ)
  w := (2687093768041 / 2000000000000 : ℚ)
  center := (609967877094972109 / 800000000000000000 : ℚ)
  supportValue := (3255300482122643 / 12500000000000000 : ℚ)
  supportSlope := (-3745319410476317 / 5000000000000000 : ℚ)
  oldCenter := (3255300482122643 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1761
  oldLo := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_666]
}

noncomputable def cell_12726 : Cell := { cellDefaults with
  domain := ⟨(76250000000000007 / 100000000000000000 : ℚ), (152525000000000011 / 200000000000000000 : ℚ)⟩
  r := (48202686511531 / 100000000000000 : ℚ)
  w := (13435452013531 / 10000000000000 : ℚ)
  center := (12201000000000001 / 16000000000000000 : ℚ)
  supportValue := (1302555503519129 / 5000000000000000 : ℚ)
  supportSlope := (-3743296226841779 / 5000000000000000 : ℚ)
  oldCenter := (1302555503519129 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1762
  oldLo := (26000000000000001 / 100000000000000000 : ℚ)
  oldHi := (26100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_666, piece_667]
}

noncomputable def cell_12727 : Cell := { cellDefaults with
  domain := ⟨(152525000000000011 / 200000000000000000 : ℚ), (19068750000000001 / 25000000000000000 : ℚ)⟩
  r := (48202686511531 / 100000000000000 : ℚ)
  w := (13435452013531 / 10000000000000 : ℚ)
  center := (305075000000000019 / 400000000000000000 : ℚ)
  supportValue := (5208345963132579 / 20000000000000000 : ℚ)
  supportSlope := (-1871846640553401 / 2500000000000000 : ℚ)
  oldCenter := (5208345963132579 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1762
  oldLo := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_666]
}

noncomputable def cell_12728 : Cell := { cellDefaults with
  domain := ⟨(19068750000000001 / 25000000000000000 : ℚ), (30515000000000001 / 40000000000000000 : ℚ)⟩
  r := (48202686511531 / 100000000000000 : ℚ)
  w := (13435452013531 / 10000000000000 : ℚ)
  center := (305125000000000013 / 400000000000000000 : ℚ)
  supportValue := (2603237532776289 / 10000000000000000 : ℚ)
  supportSlope := (-3739898778643451 / 5000000000000000 : ℚ)
  oldCenter := (2603237532776289 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1762
  oldLo := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_666]
}

noncomputable def cell_12729 : Cell := { cellDefaults with
  domain := ⟨(30515000000000001 / 40000000000000000 : ℚ), (76300000000000001 / 100000000000000000 : ℚ)⟩
  r := (48202686511531 / 100000000000000 : ℚ)
  w := (13435452013531 / 10000000000000 : ℚ)
  center := (305175000000000007 / 400000000000000000 : ℚ)
  supportValue := (26023030306229583 / 100000000000000000 : ℚ)
  supportSlope := (-7472240329270193 / 10000000000000000 : ℚ)
  oldCenter := (26023030306229583 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1762
  oldLo := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_666]
}

noncomputable def cell_12730 : Cell := { cellDefaults with
  domain := ⟨(76300000000000001 / 100000000000000000 : ℚ), (30525000000000001 / 40000000000000000 : ℚ)⟩
  r := (6022971394893 / 12500000000000 : ℚ)
  w := (839715555509 / 625000000000 : ℚ)
  center := (305225000000000007 / 400000000000000000 : ℚ)
  supportValue := (13014999693650897 / 50000000000000000 : ℚ)
  supportSlope := (-3737590604874881 / 5000000000000000 : ℚ)
  oldCenter := (13014999693650897 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1763
  oldLo := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_666]
}

noncomputable def cell_12731 : Cell := { cellDefaults with
  domain := ⟨(30525000000000001 / 40000000000000000 : ℚ), (19081250000000001 / 25000000000000000 : ℚ)⟩
  r := (6022971394893 / 12500000000000 : ℚ)
  w := (839715555509 / 625000000000 : ℚ)
  center := (305275000000000013 / 400000000000000000 : ℚ)
  supportValue := (13010330063885203 / 50000000000000000 : ℚ)
  supportSlope := (-746763745514211 / 1000000000000000 : ℚ)
  oldCenter := (13010330063885203 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1763
  oldLo := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_666]
}

noncomputable def cell_12732 : Cell := { cellDefaults with
  domain := ⟨(19081250000000001 / 25000000000000000 : ℚ), (152675000000000011 / 200000000000000000 : ℚ)⟩
  r := (6022971394893 / 12500000000000 : ℚ)
  w := (839715555509 / 625000000000 : ℚ)
  center := (305325000000000019 / 400000000000000000 : ℚ)
  supportValue := (1300566513911139 / 5000000000000000 : ℚ)
  supportSlope := (-7460125190065441 / 10000000000000000 : ℚ)
  oldCenter := (1300566513911139 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1763
  oldLo := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_666]
}

noncomputable def cell_12733 : Cell := { cellDefaults with
  domain := ⟨(152675000000000011 / 200000000000000000 : ℚ), (76350000000000007 / 100000000000000000 : ℚ)⟩
  r := (6022971394893 / 12500000000000 : ℚ)
  w := (839715555509 / 625000000000 : ℚ)
  center := (12215000000000001 / 16000000000000000 : ℚ)
  supportValue := (2600202800082351 / 10000000000000000 : ℚ)
  supportSlope := (-932061310776499 / 1250000000000000 : ℚ)
  oldCenter := (2600202800082351 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1763
  oldLo := (25950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_665, piece_666]
}

noncomputable def cell_12734 : Cell := { cellDefaults with
  domain := ⟨(76350000000000007 / 100000000000000000 : ℚ), (152725000000000011 / 200000000000000000 : ℚ)⟩
  r := (6020610304577 / 12500000000000 : ℚ)
  w := (6717733598081 / 5000000000000 : ℚ)
  center := (12217000000000001 / 16000000000000000 : ℚ)
  supportValue := (2600892393641171 / 10000000000000000 : ℚ)
  supportSlope := (-7455510924129 / 10000000000000 : ℚ)
  oldCenter := (2600892393641171 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1764
  oldLo := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_666]
}

noncomputable def cell_12735 : Cell := { cellDefaults with
  domain := ⟨(152725000000000011 / 200000000000000000 : ℚ), (19093750000000001 / 25000000000000000 : ℚ)⟩
  r := (6020610304577 / 12500000000000 : ℚ)
  w := (6717733598081 / 5000000000000 : ℚ)
  center := (305475000000000019 / 400000000000000000 : ℚ)
  supportValue := (1299981334708899 / 5000000000000000 : ℚ)
  supportSlope := (-7455355927091573 / 10000000000000000 : ℚ)
  oldCenter := (1299981334708899 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1764
  oldLo := (25950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_665, piece_666]
}

noncomputable def cell_12736 : Cell := { cellDefaults with
  domain := ⟨(19093750000000001 / 25000000000000000 : ℚ), (30555000000000001 / 40000000000000000 : ℚ)⟩
  r := (6020610304577 / 12500000000000 : ℚ)
  w := (6717733598081 / 5000000000000 : ℚ)
  center := (305525000000000013 / 400000000000000000 : ℚ)
  supportValue := (129951431460717 / 500000000000000 : ℚ)
  supportSlope := (-116468501528147 / 156250000000000 : ℚ)
  oldCenter := (129951431460717 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1764
  oldLo := (25950000000000001 / 100000000000000000 : ℚ)
  oldHi := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_665]
}

noncomputable def cell_12737 : Cell := { cellDefaults with
  domain := ⟨(30555000000000001 / 40000000000000000 : ℚ), (76400000000000001 / 100000000000000000 : ℚ)⟩
  r := (6020610304577 / 12500000000000 : ℚ)
  w := (6717733598081 / 5000000000000 : ℚ)
  center := (305575000000000007 / 400000000000000000 : ℚ)
  supportValue := (5196194703745819 / 20000000000000000 : ℚ)
  supportSlope := (-3723228392194413 / 5000000000000000 : ℚ)
  oldCenter := (5196194703745819 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1764
  oldLo := (25950000000000001 / 100000000000000000 : ℚ)
  oldHi := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_665]
}

noncomputable def cell_12738 : Cell := { cellDefaults with
  domain := ⟨(76400000000000001 / 100000000000000000 : ℚ), (30565000000000001 / 40000000000000000 : ℚ)⟩
  r := (48146009948279 / 100000000000000 : ℚ)
  w := (13435483610913 / 10000000000000 : ℚ)
  center := (305625000000000007 / 400000000000000000 : ℚ)
  supportValue := (649697221328437 / 2500000000000000 : ℚ)
  supportSlope := (-1489873289523479 / 2000000000000000 : ℚ)
  oldCenter := (649697221328437 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1765
  oldLo := (25950000000000001 / 100000000000000000 : ℚ)
  oldHi := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_665]
}

noncomputable def cell_12739 : Cell := { cellDefaults with
  domain := ⟨(30565000000000001 / 40000000000000000 : ℚ), (19106250000000001 / 25000000000000000 : ℚ)⟩
  r := (48146009948279 / 100000000000000 : ℚ)
  w := (13435483610913 / 10000000000000 : ℚ)
  center := (305675000000000013 / 400000000000000000 : ℚ)
  supportValue := (519571636865617 / 2000000000000000 : ℚ)
  supportSlope := (-7441852723583327 / 10000000000000000 : ℚ)
  oldCenter := (519571636865617 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1765
  oldLo := (25950000000000001 / 100000000000000000 : ℚ)
  oldHi := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_665]
}

noncomputable def cell_12740 : Cell := { cellDefaults with
  domain := ⟨(19106250000000001 / 25000000000000000 : ℚ), (152875000000000011 / 200000000000000000 : ℚ)⟩
  r := (48146009948279 / 100000000000000 : ℚ)
  w := (13435483610913 / 10000000000000 : ℚ)
  center := (305725000000000019 / 400000000000000000 : ℚ)
  supportValue := (3246160525742927 / 12500000000000000 : ℚ)
  supportSlope := (-3717185185702741 / 5000000000000000 : ℚ)
  oldCenter := (3246160525742927 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1765
  oldLo := (25950000000000001 / 100000000000000000 : ℚ)
  oldHi := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_665]
}

noncomputable def cell_12741 : Cell := { cellDefaults with
  domain := ⟨(152875000000000011 / 200000000000000000 : ℚ), (76450000000000007 / 100000000000000000 : ℚ)⟩
  r := (48146009948279 / 100000000000000 : ℚ)
  w := (13435483610913 / 10000000000000 : ℚ)
  center := (12231000000000001 / 16000000000000000 : ℚ)
  supportValue := (519199918040701 / 2000000000000000 : ℚ)
  supportSlope := (-1485383838415721 / 2000000000000000 : ℚ)
  oldCenter := (519199918040701 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1765
  oldLo := (25950000000000001 / 100000000000000000 : ℚ)
  oldHi := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_665]
}

noncomputable def cell_12742 : Cell := { cellDefaults with
  domain := ⟨(76450000000000007 / 100000000000000000 : ℚ), (152925000000000011 / 200000000000000000 : ℚ)⟩
  r := (24063584653689 / 50000000000000 : ℚ)
  w := (13435530448487 / 10000000000000 : ℚ)
  center := (12233000000000001 / 16000000000000000 : ℚ)
  supportValue := (12983419313054023 / 50000000000000000 : ℚ)
  supportSlope := (-7429742465046909 / 10000000000000000 : ℚ)
  oldCenter := (12983419313054023 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1766
  oldLo := (25950000000000001 / 100000000000000000 : ℚ)
  oldHi := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_665]
}

noncomputable def cell_12743 : Cell := { cellDefaults with
  domain := ⟨(152925000000000011 / 200000000000000000 : ℚ), (19118750000000001 / 25000000000000000 : ℚ)⟩
  r := (24063584653689 / 50000000000000 : ℚ)
  w := (13435530448487 / 10000000000000 : ℚ)
  center := (305875000000000019 / 400000000000000000 : ℚ)
  supportValue := (12978778049296927 / 50000000000000000 : ℚ)
  supportSlope := (-7422304849199259 / 10000000000000000 : ℚ)
  oldCenter := (12978778049296927 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1766
  oldLo := (25950000000000001 / 100000000000000000 : ℚ)
  oldHi := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_665]
}

noncomputable def cell_12744 : Cell := { cellDefaults with
  domain := ⟨(19118750000000001 / 25000000000000000 : ℚ), (30595000000000001 / 40000000000000000 : ℚ)⟩
  r := (24063584653689 / 50000000000000 : ℚ)
  w := (13435530448487 / 10000000000000 : ℚ)
  center := (305925000000000013 / 400000000000000000 : ℚ)
  supportValue := (25948297903901407 / 100000000000000000 : ℚ)
  supportSlope := (-7424046853704349 / 10000000000000000 : ℚ)
  oldCenter := (25948297903901407 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1766
  oldLo := (25900000000000001 / 100000000000000000 : ℚ)
  oldHi := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_664, piece_665]
}

noncomputable def cell_12745 : Cell := { cellDefaults with
  domain := ⟨(30595000000000001 / 40000000000000000 : ℚ), (76500000000000001 / 100000000000000000 : ℚ)⟩
  r := (24063584653689 / 50000000000000 : ℚ)
  w := (13435530448487 / 10000000000000 : ℚ)
  center := (305975000000000007 / 400000000000000000 : ℚ)
  supportValue := (25938999111873673 / 100000000000000000 : ℚ)
  supportSlope := (-742075720178459 / 1000000000000000 : ℚ)
  oldCenter := (25938999111873673 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1766
  oldLo := (25900000000000001 / 100000000000000000 : ℚ)
  oldHi := (25950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_664]
}

noncomputable def cell_12746 : Cell := { cellDefaults with
  domain := ⟨(76500000000000001 / 100000000000000000 : ℚ), (30605000000000001 / 40000000000000000 : ℚ)⟩
  r := (48108343648917 / 100000000000000 : ℚ)
  w := (13435574626247 / 10000000000000 : ℚ)
  center := (306025000000000007 / 400000000000000000 : ℚ)
  supportValue := (2594586337193257 / 10000000000000000 : ℚ)
  supportSlope := (-7422933079838321 / 10000000000000000 : ℚ)
  oldCenter := (2594586337193257 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1767
  oldLo := (25900000000000001 / 100000000000000000 : ℚ)
  oldHi := (26000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_664, piece_665]
}

noncomputable def cell_12747 : Cell := { cellDefaults with
  domain := ⟨(30605000000000001 / 40000000000000000 : ℚ), (19131250000000001 / 25000000000000000 : ℚ)⟩
  r := (48108343648917 / 100000000000000 : ℚ)
  w := (13435574626247 / 10000000000000 : ℚ)
  center := (306075000000000013 / 400000000000000000 : ℚ)
  supportValue := (2593657035958747 / 10000000000000000 : ℚ)
  supportSlope := (-92701770448389 / 125000000000000 : ℚ)
  oldCenter := (2593657035958747 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1767
  oldLo := (25900000000000001 / 100000000000000000 : ℚ)
  oldHi := (25950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_664]
}

noncomputable def cell_12748 : Cell := { cellDefaults with
  domain := ⟨(19131250000000001 / 25000000000000000 : ℚ), (153075000000000011 / 200000000000000000 : ℚ)⟩
  r := (48108343648917 / 100000000000000 : ℚ)
  w := (13435574626247 / 10000000000000 : ℚ)
  center := (306125000000000019 / 400000000000000000 : ℚ)
  supportValue := (25927304840435167 / 100000000000000000 : ℚ)
  supportSlope := (-7408692343061851 / 10000000000000000 : ℚ)
  oldCenter := (25927304840435167 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1767
  oldLo := (25900000000000001 / 100000000000000000 : ℚ)
  oldHi := (25950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_664]
}

noncomputable def cell_12749 : Cell := { cellDefaults with
  domain := ⟨(153075000000000011 / 200000000000000000 : ℚ), (76550000000000007 / 100000000000000000 : ℚ)⟩
  r := (48108343648917 / 100000000000000 : ℚ)
  w := (13435574626247 / 10000000000000 : ℚ)
  center := (12247000000000001 / 16000000000000000 : ℚ)
  supportValue := (2591804861347579 / 10000000000000000 : ℚ)
  supportSlope := (-3700637041194721 / 5000000000000000 : ℚ)
  oldCenter := (2591804861347579 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1767
  oldLo := (25900000000000001 / 100000000000000000 : ℚ)
  oldHi := (25950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_664]
}

theorem check_12700 : cell_12700.check = true := by
  decide +kernel

theorem check_12701 : cell_12701.check = true := by
  decide +kernel

theorem check_12702 : cell_12702.check = true := by
  decide +kernel

theorem check_12703 : cell_12703.check = true := by
  decide +kernel

theorem check_12704 : cell_12704.check = true := by
  decide +kernel

theorem check_12705 : cell_12705.check = true := by
  decide +kernel

theorem check_12706 : cell_12706.check = true := by
  decide +kernel

theorem check_12707 : cell_12707.check = true := by
  decide +kernel

theorem check_12708 : cell_12708.check = true := by
  decide +kernel

theorem check_12709 : cell_12709.check = true := by
  decide +kernel

theorem check_12710 : cell_12710.check = true := by
  decide +kernel

theorem check_12711 : cell_12711.check = true := by
  decide +kernel

theorem check_12712 : cell_12712.check = true := by
  decide +kernel

theorem check_12713 : cell_12713.check = true := by
  decide +kernel

theorem check_12714 : cell_12714.check = true := by
  decide +kernel

theorem check_12715 : cell_12715.check = true := by
  decide +kernel

theorem check_12716 : cell_12716.check = true := by
  decide +kernel

theorem check_12717 : cell_12717.check = true := by
  decide +kernel

theorem check_12718 : cell_12718.check = true := by
  decide +kernel

theorem check_12719 : cell_12719.check = true := by
  decide +kernel

theorem check_12720 : cell_12720.check = true := by
  decide +kernel

theorem check_12721 : cell_12721.check = true := by
  decide +kernel

theorem check_12722 : cell_12722.check = true := by
  decide +kernel

theorem check_12723 : cell_12723.check = true := by
  decide +kernel

theorem check_12724 : cell_12724.check = true := by
  decide +kernel

theorem check_12725 : cell_12725.check = true := by
  decide +kernel

theorem check_12726 : cell_12726.check = true := by
  decide +kernel

theorem check_12727 : cell_12727.check = true := by
  decide +kernel

theorem check_12728 : cell_12728.check = true := by
  decide +kernel

theorem check_12729 : cell_12729.check = true := by
  decide +kernel

theorem check_12730 : cell_12730.check = true := by
  decide +kernel

theorem check_12731 : cell_12731.check = true := by
  decide +kernel

theorem check_12732 : cell_12732.check = true := by
  decide +kernel

theorem check_12733 : cell_12733.check = true := by
  decide +kernel

theorem check_12734 : cell_12734.check = true := by
  decide +kernel

theorem check_12735 : cell_12735.check = true := by
  decide +kernel

theorem check_12736 : cell_12736.check = true := by
  decide +kernel

theorem check_12737 : cell_12737.check = true := by
  decide +kernel

theorem check_12738 : cell_12738.check = true := by
  decide +kernel

theorem check_12739 : cell_12739.check = true := by
  decide +kernel

theorem check_12740 : cell_12740.check = true := by
  decide +kernel

theorem check_12741 : cell_12741.check = true := by
  decide +kernel

theorem check_12742 : cell_12742.check = true := by
  decide +kernel

theorem check_12743 : cell_12743.check = true := by
  decide +kernel

theorem check_12744 : cell_12744.check = true := by
  decide +kernel

theorem check_12745 : cell_12745.check = true := by
  decide +kernel

theorem check_12746 : cell_12746.check = true := by
  decide +kernel

theorem check_12747 : cell_12747.check = true := by
  decide +kernel

theorem check_12748 : cell_12748.check = true := by
  decide +kernel

theorem check_12749 : cell_12749.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12700, cell_12701, cell_12702, cell_12703, cell_12704, cell_12705, cell_12706, cell_12707, cell_12708, cell_12709, cell_12710, cell_12711, cell_12712, cell_12713, cell_12714, cell_12715, cell_12716, cell_12717, cell_12718, cell_12719, cell_12720, cell_12721, cell_12722, cell_12723, cell_12724, cell_12725, cell_12726, cell_12727, cell_12728, cell_12729, cell_12730, cell_12731, cell_12732, cell_12733, cell_12734, cell_12735, cell_12736, cell_12737, cell_12738, cell_12739, cell_12740, cell_12741, cell_12742, cell_12743, cell_12744, cell_12745, cell_12746, cell_12747, cell_12748, cell_12749]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12700, check_12701, check_12702, check_12703, check_12704, check_12705, check_12706, check_12707, check_12708, check_12709, check_12710, check_12711, check_12712, check_12713, check_12714, check_12715, check_12716, check_12717, check_12718, check_12719, check_12720, check_12721, check_12722, check_12723, check_12724, check_12725, check_12726, check_12727, check_12728, check_12729, check_12730, check_12731, check_12732, check_12733, check_12734, check_12735, check_12736, check_12737, check_12738, check_12739, check_12740, check_12741, check_12742, check_12743, check_12744, check_12745, check_12746, check_12747, check_12748, check_12749, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0254

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0254
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0254
open AnalyticBounds.ExpressionCertificate

theorem linked_12700 : Linked cell_12700 pieces := by
  link_source cell_12700 with piece_1754 using piece_1754_mem, piece_669_mem

theorem linked_12701 : Linked cell_12701 pieces := by
  link_source cell_12701 with piece_1754 using piece_1754_mem, piece_669_mem

theorem linked_12702 : Linked cell_12702 pieces := by
  link_source cell_12702 with piece_1755 using piece_1755_mem, piece_669_mem

theorem linked_12703 : Linked cell_12703 pieces := by
  link_source cell_12703 with piece_1755 using piece_1755_mem, piece_669_mem

theorem linked_12704 : Linked cell_12704 pieces := by
  link_source cell_12704 with piece_1755 using piece_1755_mem, piece_669_mem

theorem linked_12705 : Linked cell_12705 pieces := by
  link_source cell_12705 with piece_1755 using piece_1755_mem, ⟨piece_668_mem, piece_669_mem⟩

theorem linked_12706 : Linked cell_12706 pieces := by
  link_source cell_12706 with piece_1756 using piece_1756_mem, piece_669_mem

theorem linked_12707 : Linked cell_12707 pieces := by
  link_source cell_12707 with piece_1756 using piece_1756_mem, ⟨piece_668_mem, piece_669_mem⟩

theorem linked_12708 : Linked cell_12708 pieces := by
  link_source cell_12708 with piece_1756 using piece_1756_mem, piece_668_mem

theorem linked_12709 : Linked cell_12709 pieces := by
  link_source cell_12709 with piece_1756 using piece_1756_mem, piece_668_mem

theorem linked_12710 : Linked cell_12710 pieces := by
  link_source cell_12710 with piece_1757 using piece_1757_mem, piece_668_mem

theorem linked_12711 : Linked cell_12711 pieces := by
  link_source cell_12711 with piece_1757 using piece_1757_mem, piece_668_mem

theorem linked_12712 : Linked cell_12712 pieces := by
  link_source cell_12712 with piece_1757 using piece_1757_mem, piece_668_mem

theorem linked_12713 : Linked cell_12713 pieces := by
  link_source cell_12713 with piece_1757 using piece_1757_mem, piece_668_mem

theorem linked_12714 : Linked cell_12714 pieces := by
  link_source cell_12714 with piece_1758 using piece_1758_mem, piece_668_mem

theorem linked_12715 : Linked cell_12715 pieces := by
  link_source cell_12715 with piece_1758 using piece_1758_mem, piece_668_mem

theorem linked_12716 : Linked cell_12716 pieces := by
  link_source cell_12716 with piece_1758 using piece_1758_mem, ⟨piece_667_mem, piece_668_mem⟩

theorem linked_12717 : Linked cell_12717 pieces := by
  link_source cell_12717 with piece_1758 using piece_1758_mem, piece_667_mem

theorem linked_12718 : Linked cell_12718 pieces := by
  link_source cell_12718 with piece_1759 using piece_1759_mem, piece_667_mem

theorem linked_12719 : Linked cell_12719 pieces := by
  link_source cell_12719 with piece_1759 using piece_1759_mem, piece_667_mem

theorem linked_12720 : Linked cell_12720 pieces := by
  link_source cell_12720 with piece_1759 using piece_1759_mem, piece_667_mem

theorem linked_12721 : Linked cell_12721 pieces := by
  link_source cell_12721 with piece_1759 using piece_1759_mem, piece_667_mem

theorem linked_12722 : Linked cell_12722 pieces := by
  link_source cell_12722 with piece_1760 using piece_1760_mem, piece_667_mem

theorem linked_12723 : Linked cell_12723 pieces := by
  link_source cell_12723 with piece_1761 using piece_1761_mem, piece_667_mem

theorem linked_12724 : Linked cell_12724 pieces := by
  link_source cell_12724 with piece_1761 using piece_1761_mem, ⟨piece_666_mem, piece_667_mem⟩

theorem linked_12725 : Linked cell_12725 pieces := by
  link_source cell_12725 with piece_1761 using piece_1761_mem, piece_666_mem

theorem linked_12726 : Linked cell_12726 pieces := by
  link_source cell_12726 with piece_1762 using piece_1762_mem, ⟨piece_666_mem, piece_667_mem⟩

theorem linked_12727 : Linked cell_12727 pieces := by
  link_source cell_12727 with piece_1762 using piece_1762_mem, piece_666_mem

theorem linked_12728 : Linked cell_12728 pieces := by
  link_source cell_12728 with piece_1762 using piece_1762_mem, piece_666_mem

theorem linked_12729 : Linked cell_12729 pieces := by
  link_source cell_12729 with piece_1762 using piece_1762_mem, piece_666_mem

theorem linked_12730 : Linked cell_12730 pieces := by
  link_source cell_12730 with piece_1763 using piece_1763_mem, piece_666_mem

theorem linked_12731 : Linked cell_12731 pieces := by
  link_source cell_12731 with piece_1763 using piece_1763_mem, piece_666_mem

theorem linked_12732 : Linked cell_12732 pieces := by
  link_source cell_12732 with piece_1763 using piece_1763_mem, piece_666_mem

theorem linked_12733 : Linked cell_12733 pieces := by
  link_source cell_12733 with piece_1763 using piece_1763_mem, ⟨piece_665_mem, piece_666_mem⟩

theorem linked_12734 : Linked cell_12734 pieces := by
  link_source cell_12734 with piece_1764 using piece_1764_mem, piece_666_mem

theorem linked_12735 : Linked cell_12735 pieces := by
  link_source cell_12735 with piece_1764 using piece_1764_mem, ⟨piece_665_mem, piece_666_mem⟩

theorem linked_12736 : Linked cell_12736 pieces := by
  link_source cell_12736 with piece_1764 using piece_1764_mem, piece_665_mem

theorem linked_12737 : Linked cell_12737 pieces := by
  link_source cell_12737 with piece_1764 using piece_1764_mem, piece_665_mem

theorem linked_12738 : Linked cell_12738 pieces := by
  link_source cell_12738 with piece_1765 using piece_1765_mem, piece_665_mem

theorem linked_12739 : Linked cell_12739 pieces := by
  link_source cell_12739 with piece_1765 using piece_1765_mem, piece_665_mem

theorem linked_12740 : Linked cell_12740 pieces := by
  link_source cell_12740 with piece_1765 using piece_1765_mem, piece_665_mem

theorem linked_12741 : Linked cell_12741 pieces := by
  link_source cell_12741 with piece_1765 using piece_1765_mem, piece_665_mem

theorem linked_12742 : Linked cell_12742 pieces := by
  link_source cell_12742 with piece_1766 using piece_1766_mem, piece_665_mem

theorem linked_12743 : Linked cell_12743 pieces := by
  link_source cell_12743 with piece_1766 using piece_1766_mem, piece_665_mem

theorem linked_12744 : Linked cell_12744 pieces := by
  link_source cell_12744 with piece_1766 using piece_1766_mem, ⟨piece_664_mem, piece_665_mem⟩

theorem linked_12745 : Linked cell_12745 pieces := by
  link_source cell_12745 with piece_1766 using piece_1766_mem, piece_664_mem

theorem linked_12746 : Linked cell_12746 pieces := by
  link_source cell_12746 with piece_1767 using piece_1767_mem, ⟨piece_664_mem, piece_665_mem⟩

theorem linked_12747 : Linked cell_12747 pieces := by
  link_source cell_12747 with piece_1767 using piece_1767_mem, piece_664_mem

theorem linked_12748 : Linked cell_12748 pieces := by
  link_source cell_12748 with piece_1767 using piece_1767_mem, piece_664_mem

theorem linked_12749 : Linked cell_12749 pieces := by
  link_source cell_12749 with piece_1767 using piece_1767_mem, piece_664_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0254.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0254.cells,List.forall_mem_cons]
  exact ⟨linked_12700, linked_12701, linked_12702, linked_12703, linked_12704, linked_12705, linked_12706, linked_12707, linked_12708, linked_12709, linked_12710, linked_12711, linked_12712, linked_12713, linked_12714, linked_12715, linked_12716, linked_12717, linked_12718, linked_12719, linked_12720, linked_12721, linked_12722, linked_12723, linked_12724, linked_12725, linked_12726, linked_12727, linked_12728, linked_12729, linked_12730, linked_12731, linked_12732, linked_12733, linked_12734, linked_12735, linked_12736, linked_12737, linked_12738, linked_12739, linked_12740, linked_12741, linked_12742, linked_12743, linked_12744, linked_12745, linked_12746, linked_12747, linked_12748, linked_12749, by simp⟩

theorem covered : covers (151850000000000007 / 200000000000000000 : ℚ) (76550000000000007 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0254.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0254
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0255
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(76550000000000007 / 100000000000000000 : ℚ), (153125000000000011 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (12022386682983 / 25000000000000 : ℚ)
  w := (13435642721431 / 10000000000000 : ℚ)
  center := (12249000000000001 / 16000000000000000 : ℚ)
  supportValue := (103699338406457 / 400000000000000 : ℚ)
  supportSlope := (-7404061862415823 / 10000000000000000 : ℚ)
  oldCenter := (103699338406457 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1768
  oldLo := (25750000000000001 / 100000000000000000 : ℚ)
  oldHi := (25850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_661]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12750 : Cell := { cellDefaults with
  oldLo := (25900000000000001 / 100000000000000000 : ℚ)
  oldHi := (25950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_664]
}

noncomputable def cell_12751 : Cell := { cellDefaults with
  domain := ⟨(153125000000000011 / 200000000000000000 : ℚ), (19143750000000001 / 25000000000000000 : ℚ)⟩
  center := (306275000000000019 / 400000000000000000 : ℚ)
  supportValue := (1295779207712171 / 5000000000000000 : ℚ)
  supportSlope := (-462291075170651 / 625000000000000 : ℚ)
  oldCenter := (1295779207712171 / 5000000000000000 : ℚ)
  oldLo := (25900000000000001 / 100000000000000000 : ℚ)
  oldHi := (25950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_664]
}

noncomputable def cell_12752 : Cell := { cellDefaults with
  domain := ⟨(19143750000000001 / 25000000000000000 : ℚ), (30635000000000001 / 40000000000000000 : ℚ)⟩
  center := (306325000000000013 / 400000000000000000 : ℚ)
  supportValue := (647658573586259 / 2500000000000000 : ℚ)
  supportSlope := (-7389283293798063 / 10000000000000000 : ℚ)
  oldCenter := (647658573586259 / 2500000000000000 : ℚ)
  oldLo := (25900000000000001 / 100000000000000000 : ℚ)
  oldHi := (25950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_664]
}

noncomputable def cell_12753 : Cell := { cellDefaults with
  domain := ⟨(30635000000000001 / 40000000000000000 : ℚ), (76600000000000001 / 100000000000000000 : ℚ)⟩
  center := (306375000000000007 / 400000000000000000 : ℚ)
  supportValue := (1618570241452149 / 6250000000000000 : ℚ)
  supportSlope := (-3696345377357967 / 5000000000000000 : ℚ)
  oldCenter := (1618570241452149 / 6250000000000000 : ℚ)
  oldLo := (1294413407821229 / 5000000000000000 : ℚ)
  oldHi := (25950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_663, piece_664]
}

noncomputable def cell_12754 : Cell := { cellDefaults with
  domain := ⟨(76600000000000001 / 100000000000000000 : ℚ), (30645000000000001 / 40000000000000000 : ℚ)⟩
  r := (48070773471301 / 100000000000000 : ℚ)
  w := (6717862709397 / 5000000000000 : ℚ)
  center := (306425000000000007 / 400000000000000000 : ℚ)
  supportValue := (1295193666407019 / 5000000000000000 : ℚ)
  supportSlope := (-184644146996571 / 250000000000000 : ℚ)
  oldCenter := (1295193666407019 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1769
  oldLo := (1294413407821229 / 5000000000000000 : ℚ)
  oldHi := (25950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_663, piece_664]
}

noncomputable def cell_12755 : Cell := { cellDefaults with
  domain := ⟨(30645000000000001 / 40000000000000000 : ℚ), (19156250000000001 / 25000000000000000 : ℚ)⟩
  r := (48070773471301 / 100000000000000 : ℚ)
  w := (6717862709397 / 5000000000000 : ℚ)
  center := (306475000000000013 / 400000000000000000 : ℚ)
  supportValue := (1294730965619247 / 5000000000000000 : ℚ)
  supportSlope := (-230953624822089 / 312500000000000 : ℚ)
  oldCenter := (1294730965619247 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1769
  oldLo := (1294413407821229 / 5000000000000000 : ℚ)
  oldHi := (25900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_663]
}

noncomputable def cell_12756 : Cell := { cellDefaults with
  domain := ⟨(19156250000000001 / 25000000000000000 : ℚ), (153275000000000011 / 200000000000000000 : ℚ)⟩
  r := (48070773471301 / 100000000000000 : ℚ)
  w := (6717862709397 / 5000000000000 : ℚ)
  center := (306525000000000019 / 400000000000000000 : ℚ)
  supportValue := (2588538564152819 / 10000000000000000 : ℚ)
  supportSlope := (-7383437081135649 / 10000000000000000 : ℚ)
  oldCenter := (2588538564152819 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1769
  oldLo := (25850000000000001 / 100000000000000000 : ℚ)
  oldHi := (25900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_662, piece_663]
}

noncomputable def cell_12757 : Cell := { cellDefaults with
  domain := ⟨(153275000000000011 / 200000000000000000 : ℚ), (76650000000000007 / 100000000000000000 : ℚ)⟩
  r := (48070773471301 / 100000000000000 : ℚ)
  w := (6717862709397 / 5000000000000 : ℚ)
  center := (12263000000000001 / 16000000000000000 : ℚ)
  supportValue := (80863002765341 / 312500000000000 : ℚ)
  supportSlope := (-3688046764160459 / 5000000000000000 : ℚ)
  oldCenter := (80863002765341 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1769
  oldLo := (25850000000000001 / 100000000000000000 : ℚ)
  oldHi := (1294413407821229 / 5000000000000000 : ℚ)
  oldPieces := [piece_662]
}

noncomputable def cell_12758 : Cell := { cellDefaults with
  domain := ⟨(76650000000000007 / 100000000000000000 : ℚ), (306650000000000023 / 400000000000000000 : ℚ)⟩
  r := (48052020525667 / 100000000000000 : ℚ)
  w := (13435815555927 / 10000000000000 : ℚ)
  center := (613250000000000051 / 800000000000000000 : ℚ)
  supportValue := (5176577850609333 / 20000000000000000 : ℚ)
  supportSlope := (-1844718747272729 / 2500000000000000 : ℚ)
  oldCenter := (5176577850609333 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1770
  oldLo := (25850000000000001 / 100000000000000000 : ℚ)
  oldHi := (1294413407821229 / 5000000000000000 : ℚ)
  oldPieces := [piece_662]
}

noncomputable def cell_12759 : Cell := { cellDefaults with
  domain := ⟨(306650000000000023 / 400000000000000000 : ℚ), (153350000000000009 / 200000000000000000 : ℚ)⟩
  r := (48052020525667 / 100000000000000 : ℚ)
  w := (13435815555927 / 10000000000000 : ℚ)
  center := (613350000000000041 / 800000000000000000 : ℚ)
  supportValue := (3234208786824317 / 12500000000000000 : ℚ)
  supportSlope := (-460716366396709 / 625000000000000 : ℚ)
  oldCenter := (3234208786824317 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1770
  oldLo := (25850000000000001 / 100000000000000000 : ℚ)
  oldHi := (1294413407821229 / 5000000000000000 : ℚ)
  oldPieces := [piece_662]
}

noncomputable def cell_12760 : Cell := { cellDefaults with
  domain := ⟨(153350000000000009 / 200000000000000000 : ℚ), (306750000000000013 / 400000000000000000 : ℚ)⟩
  r := (48052020525667 / 100000000000000 : ℚ)
  w := (13435815555927 / 10000000000000 : ℚ)
  center := (613450000000000031 / 800000000000000000 : ℚ)
  supportValue := (808264393225047 / 3125000000000000 : ℚ)
  supportSlope := (-736407964985271 / 1000000000000000 : ℚ)
  oldCenter := (808264393225047 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1770
  oldLo := (25850000000000001 / 100000000000000000 : ℚ)
  oldHi := (1294413407821229 / 5000000000000000 : ℚ)
  oldPieces := [piece_662]
}

noncomputable def cell_12761 : Cell := { cellDefaults with
  domain := ⟨(306750000000000013 / 400000000000000000 : ℚ), (38350000000000001 / 50000000000000000 : ℚ)⟩
  r := (48052020525667 / 100000000000000 : ℚ)
  w := (13435815555927 / 10000000000000 : ℚ)
  center := (613550000000000021 / 800000000000000000 : ℚ)
  supportValue := (12927630040173657 / 50000000000000000 : ℚ)
  supportSlope := (-7356728155967953 / 10000000000000000 : ℚ)
  oldCenter := (12927630040173657 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1770
  oldLo := (25850000000000001 / 100000000000000000 : ℚ)
  oldHi := (1294413407821229 / 5000000000000000 : ℚ)
  oldPieces := [piece_662]
}

noncomputable def cell_12762 : Cell := { cellDefaults with
  domain := ⟨(38350000000000001 / 50000000000000000 : ℚ), (306850000000000013 / 400000000000000000 : ℚ)⟩
  r := (9606659684127 / 20000000000000 : ℚ)
  w := (13435932821923 / 10000000000000 : ℚ)
  center := (613650000000000021 / 800000000000000000 : ℚ)
  supportValue := (2586192218222707 / 10000000000000000 : ℚ)
  supportSlope := (-735942894455481 / 1000000000000000 : ℚ)
  oldCenter := (2586192218222707 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1771
  oldLo := (25850000000000001 / 100000000000000000 : ℚ)
  oldHi := (1294413407821229 / 5000000000000000 : ℚ)
  oldPieces := [piece_662]
}

noncomputable def cell_12763 : Cell := { cellDefaults with
  domain := ⟨(306850000000000013 / 400000000000000000 : ℚ), (153450000000000009 / 200000000000000000 : ℚ)⟩
  r := (9606659684127 / 20000000000000 : ℚ)
  w := (13435932821923 / 10000000000000 : ℚ)
  center := (613750000000000031 / 800000000000000000 : ℚ)
  supportValue := (25852745581071773 / 100000000000000000 : ℚ)
  supportSlope := (-3677390401448287 / 5000000000000000 : ℚ)
  oldCenter := (25852745581071773 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1771
  oldLo := (25800000000000001 / 100000000000000000 : ℚ)
  oldHi := (1294413407821229 / 5000000000000000 : ℚ)
  oldPieces := [piece_661, piece_662]
}

noncomputable def cell_12764 : Cell := { cellDefaults with
  domain := ⟨(153450000000000009 / 200000000000000000 : ℚ), (306950000000000023 / 400000000000000000 : ℚ)⟩
  r := (9606659684127 / 20000000000000 : ℚ)
  w := (13435932821923 / 10000000000000 : ℚ)
  center := (613850000000000041 / 800000000000000000 : ℚ)
  supportValue := (516870607397671 / 2000000000000000 : ℚ)
  supportSlope := (-7357878973150253 / 10000000000000000 : ℚ)
  oldCenter := (516870607397671 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1771
  oldLo := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_661]
}

noncomputable def cell_12765 : Cell := { cellDefaults with
  domain := ⟨(306950000000000023 / 400000000000000000 : ℚ), (76750000000000007 / 100000000000000000 : ℚ)⟩
  r := (9606659684127 / 20000000000000 : ℚ)
  w := (13435932821923 / 10000000000000 : ℚ)
  center := (613950000000000051 / 800000000000000000 : ℚ)
  supportValue := (25834337662684187 / 100000000000000000 : ℚ)
  supportSlope := (-3675227963552873 / 5000000000000000 : ℚ)
  oldCenter := (25834337662684187 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1771
  oldLo := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_661]
}

noncomputable def cell_12766 : Cell := { cellDefaults with
  domain := ⟨(76750000000000007 / 100000000000000000 : ℚ), (153520949720670397 / 200000000000000000 : ℚ)⟩
  r := (24007294492393 / 50000000000000 : ℚ)
  w := (671802262913 / 500000000000 : ℚ)
  center := (307020949720670411 / 400000000000000000 : ℚ)
  supportValue := (2584175265560987 / 10000000000000000 : ℚ)
  supportSlope := (-1838455770936269 / 2500000000000000 : ℚ)
  oldCenter := (2584175265560987 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1772
  oldLo := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_661]
}

noncomputable def cell_12767 : Cell := { cellDefaults with
  domain := ⟨(153520949720670397 / 200000000000000000 : ℚ), (7677094972067039 / 10000000000000000 : ℚ)⟩
  r := (24007294492393 / 50000000000000 : ℚ)
  w := (671802262913 / 500000000000 : ℚ)
  center := (307062849162011177 / 400000000000000000 : ℚ)
  supportValue := (25834052883213987 / 100000000000000000 : ℚ)
  supportSlope := (-459225628972181 / 625000000000000 : ℚ)
  oldCenter := (25834052883213987 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1772
  oldLo := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_661]
}

noncomputable def cell_12768 : Cell := { cellDefaults with
  domain := ⟨(7677094972067039 / 10000000000000000 : ℚ), (19196368715083799 / 25000000000000000 : ℚ)⟩
  r := (24007294492393 / 50000000000000 : ℚ)
  w := (671802262913 / 500000000000 : ℚ)
  center := (76778212290502793 / 100000000000000000 : ℚ)
  supportValue := (12912436494349 / 50000000000000 : ℚ)
  supportSlope := (-7340224643671391 / 10000000000000000 : ℚ)
  oldCenter := (12912436494349 / 50000000000000 : ℚ)
  newCoefficients := coefficients_1773
  oldLo := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_661]
}

noncomputable def cell_12769 : Cell := { cellDefaults with
  domain := ⟨(19196368715083799 / 25000000000000000 : ℚ), (38400000000000001 / 50000000000000000 : ℚ)⟩
  r := (24007294492393 / 50000000000000 : ℚ)
  w := (671802262913 / 500000000000 : ℚ)
  center := (76792737430167599 / 100000000000000000 : ℚ)
  supportValue := (2581421741903119 / 10000000000000000 : ℚ)
  supportSlope := (-3665840549344339 / 5000000000000000 : ℚ)
  oldCenter := (2581421741903119 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1773
  oldLo := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_661]
}

noncomputable def cell_12770 : Cell := { cellDefaults with
  domain := ⟨(38400000000000001 / 50000000000000000 : ℚ), (307250000000000013 / 400000000000000000 : ℚ)⟩
  r := (5999488987731 / 12500000000000 : ℚ)
  w := (13436187349729 / 10000000000000 : ℚ)
  center := (614450000000000021 / 800000000000000000 : ℚ)
  supportValue := (516401486477417 / 2000000000000000 : ℚ)
  supportSlope := (-3666884191368591 / 5000000000000000 : ℚ)
  oldCenter := (516401486477417 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1774
  oldLo := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_661]
}

noncomputable def cell_12771 : Cell := { cellDefaults with
  domain := ⟨(307250000000000013 / 400000000000000000 : ℚ), (153650000000000009 / 200000000000000000 : ℚ)⟩
  r := (5999488987731 / 12500000000000 : ℚ)
  w := (13436187349729 / 10000000000000 : ℚ)
  center := (614550000000000031 / 800000000000000000 : ℚ)
  supportValue := (161318198118019 / 625000000000000 : ℚ)
  supportSlope := (-1465286970272781 / 2000000000000000 : ℚ)
  oldCenter := (161318198118019 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1774
  oldLo := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_661]
}

noncomputable def cell_12772 : Cell := { cellDefaults with
  domain := ⟨(153650000000000009 / 200000000000000000 : ℚ), (307350000000000023 / 400000000000000000 : ℚ)⟩
  r := (5999488987731 / 12500000000000 : ℚ)
  w := (13436187349729 / 10000000000000 : ℚ)
  center := (614650000000000041 / 800000000000000000 : ℚ)
  supportValue := (516035525658773 / 2000000000000000 : ℚ)
  supportSlope := (-7323163663456689 / 10000000000000000 : ℚ)
  oldCenter := (516035525658773 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1774
  oldPieces := [piece_660, piece_661]
}

noncomputable def cell_12773 : Cell := { cellDefaults with
  domain := ⟨(307350000000000023 / 400000000000000000 : ℚ), (76850000000000007 / 100000000000000000 : ℚ)⟩
  r := (5999488987731 / 12500000000000 : ℚ)
  w := (13436187349729 / 10000000000000 : ℚ)
  center := (614750000000000051 / 800000000000000000 : ℚ)
  supportValue := (6448150168839549 / 25000000000000000 : ℚ)
  supportSlope := (-1831214275709131 / 2500000000000000 : ℚ)
  oldCenter := (6448150168839549 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1774
  oldHi := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_660]
}

noncomputable def cell_12774 : Cell := { cellDefaults with
  domain := ⟨(76850000000000007 / 100000000000000000 : ℚ), (307450000000000023 / 400000000000000000 : ℚ)⟩
  r := (23988626399231 / 50000000000000 : ℚ)
  w := (2687266829177 / 2000000000000 : ℚ)
  center := (614850000000000051 / 800000000000000000 : ℚ)
  supportValue := (25799207709285027 / 100000000000000000 : ℚ)
  supportSlope := (-7322179245444381 / 10000000000000000 : ℚ)
  oldCenter := (25799207709285027 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1775
  oldPieces := [piece_660, piece_661]
}

noncomputable def cell_12775 : Cell := { cellDefaults with
  domain := ⟨(307450000000000023 / 400000000000000000 : ℚ), (153750000000000009 / 200000000000000000 : ℚ)⟩
  r := (23988626399231 / 50000000000000 : ℚ)
  w := (2687266829177 / 2000000000000 : ℚ)
  center := (614950000000000041 / 800000000000000000 : ℚ)
  supportValue := (25790034804733863 / 100000000000000000 : ℚ)
  supportSlope := (-1830049685616247 / 2500000000000000 : ℚ)
  oldCenter := (25790034804733863 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1775
  oldHi := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_660]
}

noncomputable def cell_12776 : Cell := { cellDefaults with
  domain := ⟨(153750000000000009 / 200000000000000000 : ℚ), (307550000000000013 / 400000000000000000 : ℚ)⟩
  r := (23988626399231 / 50000000000000 : ℚ)
  w := (2687266829177 / 2000000000000 : ℚ)
  center := (615050000000000031 / 800000000000000000 : ℚ)
  supportValue := (644522228447841 / 2500000000000000 : ℚ)
  supportSlope := (-1828217858464059 / 2500000000000000 : ℚ)
  oldCenter := (644522228447841 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1775
  oldHi := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_660]
}

noncomputable def cell_12777 : Cell := { cellDefaults with
  domain := ⟨(307550000000000013 / 400000000000000000 : ℚ), (38450000000000001 / 50000000000000000 : ℚ)⟩
  r := (23988626399231 / 50000000000000 : ℚ)
  w := (2687266829177 / 2000000000000 : ℚ)
  center := (615150000000000021 / 800000000000000000 : ℚ)
  supportValue := (161073453819547 / 625000000000000 : ℚ)
  supportSlope := (-7305574643857347 / 10000000000000000 : ℚ)
  oldCenter := (161073453819547 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1775
  oldHi := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_660]
}

noncomputable def cell_12778 : Cell := { cellDefaults with
  domain := ⟨(38450000000000001 / 50000000000000000 : ℚ), (307650000000000013 / 400000000000000000 : ℚ)⟩
  r := (23979309775009 / 50000000000000 : ℚ)
  w := (839781127657 / 625000000000 : ℚ)
  center := (615250000000000021 / 800000000000000000 : ℚ)
  supportValue := (1611143415300309 / 6250000000000000 : ℚ)
  supportSlope := (-456762988791891 / 625000000000000 : ℚ)
  oldCenter := (1611143415300309 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1776
  oldHi := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_660]
}

noncomputable def cell_12779 : Cell := { cellDefaults with
  domain := ⟨(307650000000000013 / 400000000000000000 : ℚ), (153850000000000009 / 200000000000000000 : ℚ)⟩
  r := (23979309775009 / 50000000000000 : ℚ)
  w := (839781127657 / 625000000000 : ℚ)
  center := (615350000000000031 / 800000000000000000 : ℚ)
  supportValue := (2576916393887293 / 10000000000000000 : ℚ)
  supportSlope := (-11681479794517 / 16000000000000 : ℚ)
  oldCenter := (2576916393887293 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1776
  oldHi := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_660]
}

noncomputable def cell_12780 : Cell := { cellDefaults with
  domain := ⟨(153850000000000009 / 200000000000000000 : ℚ), (307750000000000023 / 400000000000000000 : ℚ)⟩
  r := (23979309775009 / 50000000000000 : ℚ)
  w := (839781127657 / 625000000000 : ℚ)
  center := (615450000000000041 / 800000000000000000 : ℚ)
  supportValue := (2576004231770057 / 10000000000000000 : ℚ)
  supportSlope := (-7293672161744861 / 10000000000000000 : ℚ)
  oldCenter := (2576004231770057 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1776
  oldHi := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_660]
}

noncomputable def cell_12781 : Cell := { cellDefaults with
  domain := ⟨(307750000000000023 / 400000000000000000 : ℚ), (76950000000000007 / 100000000000000000 : ℚ)⟩
  r := (23979309775009 / 50000000000000 : ℚ)
  w := (839781127657 / 625000000000 : ℚ)
  center := (615550000000000051 / 800000000000000000 : ℚ)
  supportValue := (12875473884626687 / 50000000000000000 : ℚ)
  supportSlope := (-729159919358329 / 1000000000000000 : ℚ)
  oldCenter := (12875473884626687 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1776
  oldLo := (25700000000000001 / 100000000000000000 : ℚ)
  oldHi := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_659, piece_660]
}

noncomputable def cell_12782 : Cell := { cellDefaults with
  domain := ⟨(76950000000000007 / 100000000000000000 : ℚ), (307850000000000023 / 400000000000000000 : ℚ)⟩
  r := (47940013384111 / 100000000000000 : ℚ)
  w := (13436683635673 / 10000000000000 : ℚ)
  center := (615650000000000051 / 800000000000000000 : ℚ)
  supportValue := (5151483462682519 / 20000000000000000 : ℚ)
  supportSlope := (-7289011812999409 / 10000000000000000 : ℚ)
  oldCenter := (5151483462682519 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1777
  oldHi := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_660]
}

noncomputable def cell_12783 : Cell := { cellDefaults with
  domain := ⟨(307850000000000023 / 400000000000000000 : ℚ), (153950000000000009 / 200000000000000000 : ℚ)⟩
  r := (47940013384111 / 100000000000000 : ℚ)
  w := (13436683635673 / 10000000000000 : ℚ)
  center := (615750000000000041 / 800000000000000000 : ℚ)
  supportValue := (3218540696004283 / 12500000000000000 : ℚ)
  supportSlope := (-7290651196943561 / 10000000000000000 : ℚ)
  oldCenter := (3218540696004283 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1777
  oldLo := (25700000000000001 / 100000000000000000 : ℚ)
  oldHi := (25800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_659, piece_660]
}

noncomputable def cell_12784 : Cell := { cellDefaults with
  domain := ⟨(153950000000000009 / 200000000000000000 : ℚ), (307950000000000013 / 400000000000000000 : ℚ)⟩
  r := (47940013384111 / 100000000000000 : ℚ)
  w := (13436683635673 / 10000000000000 : ℚ)
  center := (615850000000000031 / 800000000000000000 : ℚ)
  supportValue := (2573919372476907 / 10000000000000000 : ℚ)
  supportSlope := (-56932813377117 / 78125000000000 : ℚ)
  oldCenter := (2573919372476907 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1777
  oldLo := (25700000000000001 / 100000000000000000 : ℚ)
  oldHi := (25750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_659]
}

noncomputable def cell_12785 : Cell := { cellDefaults with
  domain := ⟨(307950000000000013 / 400000000000000000 : ℚ), (38500000000000001 / 50000000000000000 : ℚ)⟩
  r := (47940013384111 / 100000000000000 : ℚ)
  w := (13436683635673 / 10000000000000 : ℚ)
  center := (615950000000000021 / 800000000000000000 : ℚ)
  supportValue := (2573008902893959 / 10000000000000000 : ℚ)
  supportSlope := (-1820029112809167 / 2500000000000000 : ℚ)
  oldCenter := (2573008902893959 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1777
  oldLo := (25700000000000001 / 100000000000000000 : ℚ)
  oldHi := (25750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_659]
}

noncomputable def cell_12786 : Cell := { cellDefaults with
  domain := ⟨(38500000000000001 / 50000000000000000 : ℚ), (308050000000000013 / 400000000000000000 : ℚ)⟩
  r := (9584284431693 / 20000000000000 : ℚ)
  w := (13436868383473 / 10000000000000 : ℚ)
  center := (616050000000000021 / 800000000000000000 : ℚ)
  supportValue := (1286828844688207 / 5000000000000000 : ℚ)
  supportSlope := (-7282729859622687 / 10000000000000000 : ℚ)
  oldCenter := (1286828844688207 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1778
  oldLo := (25700000000000001 / 100000000000000000 : ℚ)
  oldHi := (25750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_659]
}

noncomputable def cell_12787 : Cell := { cellDefaults with
  domain := ⟨(308050000000000013 / 400000000000000000 : ℚ), (154050000000000009 / 200000000000000000 : ℚ)⟩
  r := (9584284431693 / 20000000000000 : ℚ)
  w := (13436868383473 / 10000000000000 : ℚ)
  center := (616150000000000031 / 800000000000000000 : ℚ)
  supportValue := (12863739013515857 / 50000000000000000 : ℚ)
  supportSlope := (-7275460129533667 / 10000000000000000 : ℚ)
  oldCenter := (12863739013515857 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1778
  oldLo := (25700000000000001 / 100000000000000000 : ℚ)
  oldHi := (25750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_659]
}

noncomputable def cell_12788 : Cell := { cellDefaults with
  domain := ⟨(154050000000000009 / 200000000000000000 : ℚ), (308150000000000023 / 400000000000000000 : ℚ)⟩
  r := (9584284431693 / 20000000000000 : ℚ)
  w := (13436868383473 / 10000000000000 : ℚ)
  center := (616250000000000041 / 800000000000000000 : ℚ)
  supportValue := (2571838822853281 / 10000000000000000 : ℚ)
  supportSlope := (-908527580306593 / 1250000000000000 : ℚ)
  oldCenter := (2571838822853281 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1778
  oldLo := (25700000000000001 / 100000000000000000 : ℚ)
  oldHi := (25750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_659]
}

noncomputable def cell_12789 : Cell := { cellDefaults with
  domain := ⟨(308150000000000023 / 400000000000000000 : ℚ), (77050000000000007 / 100000000000000000 : ℚ)⟩
  r := (9584284431693 / 20000000000000 : ℚ)
  w := (13436868383473 / 10000000000000 : ℚ)
  center := (616350000000000051 / 800000000000000000 : ℚ)
  supportValue := (2570930746058307 / 10000000000000000 : ℚ)
  supportSlope := (-7261011207776831 / 10000000000000000 : ℚ)
  oldCenter := (2570930746058307 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1778
  oldLo := (25700000000000001 / 100000000000000000 : ℚ)
  oldHi := (25750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_659]
}

noncomputable def cell_12790 : Cell := { cellDefaults with
  domain := ⟨(77050000000000007 / 100000000000000000 : ℚ), (308250000000000023 / 400000000000000000 : ℚ)⟩
  r := (1496964497897 / 3125000000000 : ℚ)
  w := (1343708563103 / 1000000000000 : ℚ)
  center := (616450000000000051 / 800000000000000000 : ℚ)
  supportValue := (642893005066319 / 2500000000000000 : ℚ)
  supportSlope := (-226985605559527 / 312500000000000 : ℚ)
  oldCenter := (642893005066319 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1779
  oldLo := (25700000000000001 / 100000000000000000 : ℚ)
  oldHi := (25750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_659]
}

noncomputable def cell_12791 : Cell := { cellDefaults with
  domain := ⟨(308250000000000023 / 400000000000000000 : ℚ), (154150000000000009 / 200000000000000000 : ℚ)⟩
  r := (1496964497897 / 3125000000000 : ℚ)
  w := (1343708563103 / 1000000000000 : ℚ)
  center := (616550000000000041 / 800000000000000000 : ℚ)
  supportValue := (12853322638785747 / 50000000000000000 : ℚ)
  supportSlope := (-1451268772754733 / 2000000000000000 : ℚ)
  oldCenter := (12853322638785747 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1779
  oldLo := (25700000000000001 / 100000000000000000 : ℚ)
  oldHi := (25750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_659]
}

noncomputable def cell_12792 : Cell := { cellDefaults with
  domain := ⟨(154150000000000009 / 200000000000000000 : ℚ), (308350000000000013 / 400000000000000000 : ℚ)⟩
  r := (1496964497897 / 3125000000000 : ℚ)
  w := (1343708563103 / 1000000000000 : ℚ)
  center := (616650000000000031 / 800000000000000000 : ℚ)
  supportValue := (25697593014485487 / 100000000000000000 : ℚ)
  supportSlope := (-7259016323662607 / 10000000000000000 : ℚ)
  oldCenter := (25697593014485487 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1779
  oldLo := (25650000000000001 / 100000000000000000 : ℚ)
  oldHi := (25750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_658, piece_659]
}

noncomputable def cell_12793 : Cell := { cellDefaults with
  domain := ⟨(308350000000000013 / 400000000000000000 : ℚ), (38550000000000001 / 50000000000000000 : ℚ)⟩
  r := (1496964497897 / 3125000000000 : ℚ)
  w := (1343708563103 / 1000000000000 : ℚ)
  center := (616750000000000021 / 800000000000000000 : ℚ)
  supportValue := (321106275819377 / 1250000000000000 : ℚ)
  supportSlope := (-362736789349097 / 500000000000000 : ℚ)
  oldCenter := (321106275819377 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1779
  oldLo := (25650000000000001 / 100000000000000000 : ℚ)
  oldHi := (25700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_658]
}

noncomputable def cell_12794 : Cell := { cellDefaults with
  domain := ⟨(38550000000000001 / 50000000000000000 : ℚ), (308450000000000013 / 400000000000000000 : ℚ)⟩
  r := (9576864218201 / 20000000000000 : ℚ)
  w := (13437301126611 / 10000000000000 : ℚ)
  center := (616850000000000021 / 800000000000000000 : ℚ)
  supportValue := (1605932252917611 / 6250000000000000 : ℚ)
  supportSlope := (-7257314084582573 / 10000000000000000 : ℚ)
  oldCenter := (1605932252917611 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1780
  oldLo := (25650000000000001 / 100000000000000000 : ℚ)
  oldHi := (25700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_658]
}

noncomputable def cell_12795 : Cell := { cellDefaults with
  domain := ⟨(308450000000000013 / 400000000000000000 : ℚ), (154250000000000009 / 200000000000000000 : ℚ)⟩
  r := (9576864218201 / 20000000000000 : ℚ)
  w := (13437301126611 / 10000000000000 : ℚ)
  center := (616950000000000031 / 800000000000000000 : ℚ)
  supportValue := (25685848940234757 / 100000000000000000 : ℚ)
  supportSlope := (-362502973027609 / 500000000000000 : ℚ)
  oldCenter := (25685848940234757 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1780
  oldLo := (25650000000000001 / 100000000000000000 : ℚ)
  oldHi := (25700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_658]
}

noncomputable def cell_12796 : Cell := { cellDefaults with
  domain := ⟨(154250000000000009 / 200000000000000000 : ℚ), (308550000000000023 / 400000000000000000 : ℚ)⟩
  r := (9576864218201 / 20000000000000 : ℚ)
  w := (13437301126611 / 10000000000000 : ℚ)
  center := (617050000000000041 / 800000000000000000 : ℚ)
  supportValue := (5135358176629039 / 20000000000000000 : ℚ)
  supportSlope := (-7242835069076023 / 10000000000000000 : ℚ)
  oldCenter := (5135358176629039 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1780
  oldLo := (25650000000000001 / 100000000000000000 : ℚ)
  oldHi := (25700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_658]
}

noncomputable def cell_12797 : Cell := { cellDefaults with
  domain := ⟨(308550000000000023 / 400000000000000000 : ℚ), (77150000000000007 / 100000000000000000 : ℚ)⟩
  r := (9576864218201 / 20000000000000 : ℚ)
  w := (13437301126611 / 10000000000000 : ℚ)
  center := (617150000000000051 / 800000000000000000 : ℚ)
  supportValue := (2566774183774199 / 10000000000000000 : ℚ)
  supportSlope := (-3617820359593431 / 5000000000000000 : ℚ)
  oldCenter := (2566774183774199 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1780
  oldLo := (25650000000000001 / 100000000000000000 : ℚ)
  oldHi := (25700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_658]
}

noncomputable def cell_12798 : Cell := { cellDefaults with
  domain := ⟨(77150000000000007 / 100000000000000000 : ℚ), (308650000000000023 / 400000000000000000 : ℚ)⟩
  r := (23932903837053 / 50000000000000 : ℚ)
  w := (2687508196949 / 2000000000000 : ℚ)
  center := (617250000000000051 / 800000000000000000 : ℚ)
  supportValue := (2567409575918303 / 10000000000000000 : ℚ)
  supportSlope := (-361907224243599 / 500000000000000 : ℚ)
  oldCenter := (2567409575918303 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1781
  oldLo := (25650000000000001 / 100000000000000000 : ℚ)
  oldHi := (25700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_658]
}

noncomputable def cell_12799 : Cell := { cellDefaults with
  domain := ⟨(308650000000000023 / 400000000000000000 : ℚ), (154350000000000009 / 200000000000000000 : ℚ)⟩
  r := (23932903837053 / 50000000000000 : ℚ)
  w := (2687508196949 / 2000000000000 : ℚ)
  center := (617350000000000041 / 800000000000000000 : ℚ)
  supportValue := (6416263142059861 / 25000000000000000 : ℚ)
  supportSlope := (-3615482074437543 / 5000000000000000 : ℚ)
  oldCenter := (6416263142059861 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1781
  oldLo := (25650000000000001 / 100000000000000000 : ℚ)
  oldHi := (25700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_658]
}

theorem check_12750 : cell_12750.check = true := by
  decide +kernel

theorem check_12751 : cell_12751.check = true := by
  decide +kernel

theorem check_12752 : cell_12752.check = true := by
  decide +kernel

theorem check_12753 : cell_12753.check = true := by
  decide +kernel

theorem check_12754 : cell_12754.check = true := by
  decide +kernel

theorem check_12755 : cell_12755.check = true := by
  decide +kernel

theorem check_12756 : cell_12756.check = true := by
  decide +kernel

theorem check_12757 : cell_12757.check = true := by
  decide +kernel

theorem check_12758 : cell_12758.check = true := by
  decide +kernel

theorem check_12759 : cell_12759.check = true := by
  decide +kernel

theorem check_12760 : cell_12760.check = true := by
  decide +kernel

theorem check_12761 : cell_12761.check = true := by
  decide +kernel

theorem check_12762 : cell_12762.check = true := by
  decide +kernel

theorem check_12763 : cell_12763.check = true := by
  decide +kernel

theorem check_12764 : cell_12764.check = true := by
  decide +kernel

theorem check_12765 : cell_12765.check = true := by
  decide +kernel

theorem check_12766 : cell_12766.check = true := by
  decide +kernel

theorem check_12767 : cell_12767.check = true := by
  decide +kernel

theorem check_12768 : cell_12768.check = true := by
  decide +kernel

theorem check_12769 : cell_12769.check = true := by
  decide +kernel

theorem check_12770 : cell_12770.check = true := by
  decide +kernel

theorem check_12771 : cell_12771.check = true := by
  decide +kernel

theorem check_12772 : cell_12772.check = true := by
  decide +kernel

theorem check_12773 : cell_12773.check = true := by
  decide +kernel

theorem check_12774 : cell_12774.check = true := by
  decide +kernel

theorem check_12775 : cell_12775.check = true := by
  decide +kernel

theorem check_12776 : cell_12776.check = true := by
  decide +kernel

theorem check_12777 : cell_12777.check = true := by
  decide +kernel

theorem check_12778 : cell_12778.check = true := by
  decide +kernel

theorem check_12779 : cell_12779.check = true := by
  decide +kernel

theorem check_12780 : cell_12780.check = true := by
  decide +kernel

theorem check_12781 : cell_12781.check = true := by
  decide +kernel

theorem check_12782 : cell_12782.check = true := by
  decide +kernel

theorem check_12783 : cell_12783.check = true := by
  decide +kernel

theorem check_12784 : cell_12784.check = true := by
  decide +kernel

theorem check_12785 : cell_12785.check = true := by
  decide +kernel

theorem check_12786 : cell_12786.check = true := by
  decide +kernel

theorem check_12787 : cell_12787.check = true := by
  decide +kernel

theorem check_12788 : cell_12788.check = true := by
  decide +kernel

theorem check_12789 : cell_12789.check = true := by
  decide +kernel

theorem check_12790 : cell_12790.check = true := by
  decide +kernel

theorem check_12791 : cell_12791.check = true := by
  decide +kernel

theorem check_12792 : cell_12792.check = true := by
  decide +kernel

theorem check_12793 : cell_12793.check = true := by
  decide +kernel

theorem check_12794 : cell_12794.check = true := by
  decide +kernel

theorem check_12795 : cell_12795.check = true := by
  decide +kernel

theorem check_12796 : cell_12796.check = true := by
  decide +kernel

theorem check_12797 : cell_12797.check = true := by
  decide +kernel

theorem check_12798 : cell_12798.check = true := by
  decide +kernel

theorem check_12799 : cell_12799.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12750, cell_12751, cell_12752, cell_12753, cell_12754, cell_12755, cell_12756, cell_12757, cell_12758, cell_12759, cell_12760, cell_12761, cell_12762, cell_12763, cell_12764, cell_12765, cell_12766, cell_12767, cell_12768, cell_12769, cell_12770, cell_12771, cell_12772, cell_12773, cell_12774, cell_12775, cell_12776, cell_12777, cell_12778, cell_12779, cell_12780, cell_12781, cell_12782, cell_12783, cell_12784, cell_12785, cell_12786, cell_12787, cell_12788, cell_12789, cell_12790, cell_12791, cell_12792, cell_12793, cell_12794, cell_12795, cell_12796, cell_12797, cell_12798, cell_12799]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12750, check_12751, check_12752, check_12753, check_12754, check_12755, check_12756, check_12757, check_12758, check_12759, check_12760, check_12761, check_12762, check_12763, check_12764, check_12765, check_12766, check_12767, check_12768, check_12769, check_12770, check_12771, check_12772, check_12773, check_12774, check_12775, check_12776, check_12777, check_12778, check_12779, check_12780, check_12781, check_12782, check_12783, check_12784, check_12785, check_12786, check_12787, check_12788, check_12789, check_12790, check_12791, check_12792, check_12793, check_12794, check_12795, check_12796, check_12797, check_12798, check_12799, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0255

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0255
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0255
open AnalyticBounds.ExpressionCertificate

theorem linked_12750 : Linked cell_12750 pieces := by
  link_source cell_12750 with piece_1768 using piece_1768_mem, piece_664_mem

theorem linked_12751 : Linked cell_12751 pieces := by
  link_source cell_12751 with piece_1768 using piece_1768_mem, piece_664_mem

theorem linked_12752 : Linked cell_12752 pieces := by
  link_source cell_12752 with piece_1768 using piece_1768_mem, piece_664_mem

theorem linked_12753 : Linked cell_12753 pieces := by
  link_source cell_12753 with piece_1768 using piece_1768_mem, ⟨piece_663_mem, piece_664_mem⟩

theorem linked_12754 : Linked cell_12754 pieces := by
  link_source cell_12754 with piece_1769 using piece_1769_mem, ⟨piece_663_mem, piece_664_mem⟩

theorem linked_12755 : Linked cell_12755 pieces := by
  link_source cell_12755 with piece_1769 using piece_1769_mem, piece_663_mem

theorem linked_12756 : Linked cell_12756 pieces := by
  link_source cell_12756 with piece_1769 using piece_1769_mem, ⟨piece_662_mem, piece_663_mem⟩

theorem linked_12757 : Linked cell_12757 pieces := by
  link_source cell_12757 with piece_1769 using piece_1769_mem, piece_662_mem

theorem linked_12758 : Linked cell_12758 pieces := by
  link_source cell_12758 with piece_1770 using piece_1770_mem, piece_662_mem

theorem linked_12759 : Linked cell_12759 pieces := by
  link_source cell_12759 with piece_1770 using piece_1770_mem, piece_662_mem

theorem linked_12760 : Linked cell_12760 pieces := by
  link_source cell_12760 with piece_1770 using piece_1770_mem, piece_662_mem

theorem linked_12761 : Linked cell_12761 pieces := by
  link_source cell_12761 with piece_1770 using piece_1770_mem, piece_662_mem

theorem linked_12762 : Linked cell_12762 pieces := by
  link_source cell_12762 with piece_1771 using piece_1771_mem, piece_662_mem

theorem linked_12763 : Linked cell_12763 pieces := by
  link_source cell_12763 with piece_1771 using piece_1771_mem, ⟨piece_661_mem, piece_662_mem⟩

theorem linked_12764 : Linked cell_12764 pieces := by
  link_source cell_12764 with piece_1771 using piece_1771_mem, piece_661_mem

theorem linked_12765 : Linked cell_12765 pieces := by
  link_source cell_12765 with piece_1771 using piece_1771_mem, piece_661_mem

theorem linked_12766 : Linked cell_12766 pieces := by
  link_source cell_12766 with piece_1772 using piece_1772_mem, piece_661_mem

theorem linked_12767 : Linked cell_12767 pieces := by
  link_source cell_12767 with piece_1772 using piece_1772_mem, piece_661_mem

theorem linked_12768 : Linked cell_12768 pieces := by
  link_source cell_12768 with piece_1773 using piece_1773_mem, piece_661_mem

theorem linked_12769 : Linked cell_12769 pieces := by
  link_source cell_12769 with piece_1773 using piece_1773_mem, piece_661_mem

theorem linked_12770 : Linked cell_12770 pieces := by
  link_source cell_12770 with piece_1774 using piece_1774_mem, piece_661_mem

theorem linked_12771 : Linked cell_12771 pieces := by
  link_source cell_12771 with piece_1774 using piece_1774_mem, piece_661_mem

theorem linked_12772 : Linked cell_12772 pieces := by
  link_source cell_12772 with piece_1774 using piece_1774_mem, ⟨piece_660_mem, piece_661_mem⟩

theorem linked_12773 : Linked cell_12773 pieces := by
  link_source cell_12773 with piece_1774 using piece_1774_mem, piece_660_mem

theorem linked_12774 : Linked cell_12774 pieces := by
  link_source cell_12774 with piece_1775 using piece_1775_mem, ⟨piece_660_mem, piece_661_mem⟩

theorem linked_12775 : Linked cell_12775 pieces := by
  link_source cell_12775 with piece_1775 using piece_1775_mem, piece_660_mem

theorem linked_12776 : Linked cell_12776 pieces := by
  link_source cell_12776 with piece_1775 using piece_1775_mem, piece_660_mem

theorem linked_12777 : Linked cell_12777 pieces := by
  link_source cell_12777 with piece_1775 using piece_1775_mem, piece_660_mem

theorem linked_12778 : Linked cell_12778 pieces := by
  link_source cell_12778 with piece_1776 using piece_1776_mem, piece_660_mem

theorem linked_12779 : Linked cell_12779 pieces := by
  link_source cell_12779 with piece_1776 using piece_1776_mem, piece_660_mem

theorem linked_12780 : Linked cell_12780 pieces := by
  link_source cell_12780 with piece_1776 using piece_1776_mem, piece_660_mem

theorem linked_12781 : Linked cell_12781 pieces := by
  link_source cell_12781 with piece_1776 using piece_1776_mem, ⟨piece_659_mem, piece_660_mem⟩

theorem linked_12782 : Linked cell_12782 pieces := by
  link_source cell_12782 with piece_1777 using piece_1777_mem, piece_660_mem

theorem linked_12783 : Linked cell_12783 pieces := by
  link_source cell_12783 with piece_1777 using piece_1777_mem, ⟨piece_659_mem, piece_660_mem⟩

theorem linked_12784 : Linked cell_12784 pieces := by
  link_source cell_12784 with piece_1777 using piece_1777_mem, piece_659_mem

theorem linked_12785 : Linked cell_12785 pieces := by
  link_source cell_12785 with piece_1777 using piece_1777_mem, piece_659_mem

theorem linked_12786 : Linked cell_12786 pieces := by
  link_source cell_12786 with piece_1778 using piece_1778_mem, piece_659_mem

theorem linked_12787 : Linked cell_12787 pieces := by
  link_source cell_12787 with piece_1778 using piece_1778_mem, piece_659_mem

theorem linked_12788 : Linked cell_12788 pieces := by
  link_source cell_12788 with piece_1778 using piece_1778_mem, piece_659_mem

theorem linked_12789 : Linked cell_12789 pieces := by
  link_source cell_12789 with piece_1778 using piece_1778_mem, piece_659_mem

theorem linked_12790 : Linked cell_12790 pieces := by
  link_source cell_12790 with piece_1779 using piece_1779_mem, piece_659_mem

theorem linked_12791 : Linked cell_12791 pieces := by
  link_source cell_12791 with piece_1779 using piece_1779_mem, piece_659_mem

theorem linked_12792 : Linked cell_12792 pieces := by
  link_source cell_12792 with piece_1779 using piece_1779_mem, ⟨piece_658_mem, piece_659_mem⟩

theorem linked_12793 : Linked cell_12793 pieces := by
  link_source cell_12793 with piece_1779 using piece_1779_mem, piece_658_mem

theorem linked_12794 : Linked cell_12794 pieces := by
  link_source cell_12794 with piece_1780 using piece_1780_mem, piece_658_mem

theorem linked_12795 : Linked cell_12795 pieces := by
  link_source cell_12795 with piece_1780 using piece_1780_mem, piece_658_mem

theorem linked_12796 : Linked cell_12796 pieces := by
  link_source cell_12796 with piece_1780 using piece_1780_mem, piece_658_mem

theorem linked_12797 : Linked cell_12797 pieces := by
  link_source cell_12797 with piece_1780 using piece_1780_mem, piece_658_mem

theorem linked_12798 : Linked cell_12798 pieces := by
  link_source cell_12798 with piece_1781 using piece_1781_mem, piece_658_mem

theorem linked_12799 : Linked cell_12799 pieces := by
  link_source cell_12799 with piece_1781 using piece_1781_mem, piece_658_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0255.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0255.cells,List.forall_mem_cons]
  exact ⟨linked_12750, linked_12751, linked_12752, linked_12753, linked_12754, linked_12755, linked_12756, linked_12757, linked_12758, linked_12759, linked_12760, linked_12761, linked_12762, linked_12763, linked_12764, linked_12765, linked_12766, linked_12767, linked_12768, linked_12769, linked_12770, linked_12771, linked_12772, linked_12773, linked_12774, linked_12775, linked_12776, linked_12777, linked_12778, linked_12779, linked_12780, linked_12781, linked_12782, linked_12783, linked_12784, linked_12785, linked_12786, linked_12787, linked_12788, linked_12789, linked_12790, linked_12791, linked_12792, linked_12793, linked_12794, linked_12795, linked_12796, linked_12797, linked_12798, linked_12799, by simp⟩

theorem covered : covers (76550000000000007 / 100000000000000000 : ℚ) (154350000000000009 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0255.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0255
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0256
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(154350000000000009 / 200000000000000000 : ℚ), (308750000000000013 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (47847316105139 / 100000000000000 : ℚ)
  w := (13437794395713 / 10000000000000 : ℚ)
  center := (617450000000000031 / 800000000000000000 : ℚ)
  supportValue := (5131203666817229 / 20000000000000000 : ℚ)
  supportSlope := (-3527252723547 / 4882812500000 : ℚ)
  oldCenter := (5131203666817229 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1782
  oldLo := (25600000000000001 / 100000000000000000 : ℚ)
  oldHi := (25600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_657]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12800 : Cell := { cellDefaults with
  r := (23932903837053 / 50000000000000 : ℚ)
  w := (2687508196949 / 2000000000000 : ℚ)
  newCoefficients := coefficients_1781
  oldLo := (25650000000000001 / 100000000000000000 : ℚ)
  oldHi := (25700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_658]
}

noncomputable def cell_12801 : Cell := { cellDefaults with
  domain := ⟨(308750000000000013 / 400000000000000000 : ℚ), (38600000000000001 / 50000000000000000 : ℚ)⟩
  r := (23932903837053 / 50000000000000 : ℚ)
  w := (2687508196949 / 2000000000000 : ℚ)
  center := (617550000000000021 / 800000000000000000 : ℚ)
  supportValue := (2564700564577587 / 10000000000000000 : ℚ)
  supportSlope := (-3613651979357619 / 5000000000000000 : ℚ)
  oldCenter := (2564700564577587 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1781
  oldHi := (25700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_657, piece_658]
}

noncomputable def cell_12802 : Cell := { cellDefaults with
  domain := ⟨(38600000000000001 / 50000000000000000 : ℚ), (154425000000000007 / 200000000000000000 : ℚ)⟩
  center := (308825000000000011 / 400000000000000000 : ℚ)
  supportValue := (1282666361352509 / 5000000000000000 : ℚ)
  supportSlope := (-7220849188359879 / 10000000000000000 : ℚ)
  oldCenter := (1282666361352509 / 5000000000000000 : ℚ)
  oldHi := (25700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_657, piece_658]
}

noncomputable def cell_12803 : Cell := { cellDefaults with
  domain := ⟨(154425000000000007 / 200000000000000000 : ℚ), (15445000000000001 / 20000000000000000 : ℚ)⟩
  center := (308875000000000017 / 400000000000000000 : ℚ)
  supportValue := (2564427970133193 / 10000000000000000 : ℚ)
  supportSlope := (-903090038479773 / 1250000000000000 : ℚ)
  oldCenter := (2564427970133193 / 10000000000000000 : ℚ)
  oldHi := (25650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_657]
}

noncomputable def cell_12804 : Cell := { cellDefaults with
  domain := ⟨(15445000000000001 / 20000000000000000 : ℚ), (154475000000000013 / 200000000000000000 : ℚ)⟩
  center := (308925000000000023 / 400000000000000000 : ℚ)
  supportValue := (25635253306397593 / 100000000000000000 : ℚ)
  supportSlope := (-288700591156009 / 400000000000000 : ℚ)
  oldCenter := (25635253306397593 / 100000000000000000 : ℚ)
  oldHi := (25650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_657]
}

noncomputable def cell_12805 : Cell := { cellDefaults with
  domain := ⟨(154475000000000013 / 200000000000000000 : ℚ), (9656250000000001 / 12500000000000000 : ℚ)⟩
  center := (308975000000000029 / 400000000000000000 : ℚ)
  supportValue := (12813117949797803 / 50000000000000000 : ℚ)
  supportSlope := (-7210339252913501 / 10000000000000000 : ℚ)
  oldCenter := (12813117949797803 / 50000000000000000 : ℚ)
  oldHi := (25650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_657]
}

noncomputable def cell_12806 : Cell := { cellDefaults with
  domain := ⟨(9656250000000001 / 12500000000000000 : ℚ), (154525000000000013 / 200000000000000000 : ℚ)⟩
  r := (47828845899539 / 100000000000000 : ℚ)
  w := (2687611583939 / 2000000000000 : ℚ)
  center := (309025000000000029 / 400000000000000000 : ℚ)
  supportValue := (12816265479088687 / 50000000000000000 : ℚ)
  supportSlope := (-721281565590901 / 1000000000000000 : ℚ)
  oldCenter := (12816265479088687 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1783
  oldHi := (25650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_657]
}

noncomputable def cell_12807 : Cell := { cellDefaults with
  domain := ⟨(154525000000000013 / 200000000000000000 : ℚ), (15455000000000001 / 20000000000000000 : ℚ)⟩
  r := (47828845899539 / 100000000000000 : ℚ)
  w := (2687611583939 / 2000000000000 : ℚ)
  center := (309075000000000023 / 400000000000000000 : ℚ)
  supportValue := (25623519416454393 / 100000000000000000 : ℚ)
  supportSlope := (-450353389386869 / 625000000000000 : ℚ)
  oldCenter := (25623519416454393 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1783
  oldHi := (25650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_657]
}

noncomputable def cell_12808 : Cell := { cellDefaults with
  domain := ⟨(15455000000000001 / 20000000000000000 : ℚ), (154575000000000007 / 200000000000000000 : ℚ)⟩
  r := (47828845899539 / 100000000000000 : ℚ)
  w := (2687611583939 / 2000000000000 : ℚ)
  center := (309125000000000017 / 400000000000000000 : ℚ)
  supportValue := (64036292019771 / 250000000000000 : ℚ)
  supportSlope := (-449907658134961 / 625000000000000 : ℚ)
  oldCenter := (64036292019771 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1783
  oldHi := (25650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_657]
}

noncomputable def cell_12809 : Cell := { cellDefaults with
  domain := ⟨(154575000000000007 / 200000000000000000 : ℚ), (38650000000000001 / 50000000000000000 : ℚ)⟩
  r := (47828845899539 / 100000000000000 : ℚ)
  w := (2687611583939 / 2000000000000 : ℚ)
  center := (309175000000000011 / 400000000000000000 : ℚ)
  supportValue := (640138077387481 / 2500000000000000 : ℚ)
  supportSlope := (-1797855092262817 / 2500000000000000 : ℚ)
  oldCenter := (640138077387481 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1783
  oldHi := (25650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_657]
}

noncomputable def cell_12810 : Cell := { cellDefaults with
  domain := ⟨(38650000000000001 / 50000000000000000 : ℚ), (19328002793296089 / 25000000000000000 : ℚ)⟩
  r := (47810406279303 / 100000000000000 : ℚ)
  w := (107506795741 / 80000000000 : ℚ)
  center := (77306005586592179 / 100000000000000000 : ℚ)
  supportValue := (400186376235309 / 1562500000000000 : ℚ)
  supportSlope := (-7193958074764143 / 10000000000000000 : ℚ)
  oldCenter := (400186376235309 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_1784
  oldHi := (25650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_657]
}

noncomputable def cell_12811 : Cell := { cellDefaults with
  domain := ⟨(19328002793296089 / 25000000000000000 : ℚ), (7732402234636871 / 10000000000000000 : ℚ)⟩
  r := (47810406279303 / 100000000000000 : ℚ)
  w := (107506795741 / 80000000000 : ℚ)
  center := (77318016759776533 / 100000000000000000 : ℚ)
  supportValue := (1280165465309297 / 5000000000000000 : ℚ)
  supportSlope := (-7188659716752277 / 10000000000000000 : ℚ)
  oldCenter := (1280165465309297 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1784
  oldLo := (511 / 2000 : ℚ)
  oldHi := (25650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_656, piece_657]
}

noncomputable def cell_12812 : Cell := { cellDefaults with
  domain := ⟨(7732402234636871 / 10000000000000000 : ℚ), (77337011173184359 / 100000000000000000 : ℚ)⟩
  r := (47810406279303 / 100000000000000 : ℚ)
  w := (107506795741 / 80000000000 : ℚ)
  center := (154661033519553069 / 200000000000000000 : ℚ)
  supportValue := (12797150925324313 / 50000000000000000 : ℚ)
  supportSlope := (-89908443624381 / 125000000000000 : ℚ)
  oldCenter := (12797150925324313 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1785
  oldLo := (511 / 2000 : ℚ)
  oldPieces := [piece_656]
}

noncomputable def cell_12813 : Cell := { cellDefaults with
  domain := ⟨(77337011173184359 / 100000000000000000 : ℚ), (9668750000000001 / 12500000000000000 : ℚ)⟩
  r := (47810406279303 / 100000000000000 : ℚ)
  w := (107506795741 / 80000000000 : ℚ)
  center := (154687011173184367 / 200000000000000000 : ℚ)
  supportValue := (25584964239350383 / 100000000000000000 : ℚ)
  supportSlope := (-7185241564821007 / 10000000000000000 : ℚ)
  oldCenter := (25584964239350383 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1785
  oldLo := (511 / 2000 : ℚ)
  oldPieces := [piece_656]
}

noncomputable def cell_12814 : Cell := { cellDefaults with
  domain := ⟨(9668750000000001 / 12500000000000000 : ℚ), (154725000000000013 / 200000000000000000 : ℚ)⟩
  r := (5973997528371 / 12500000000000 : ℚ)
  w := (13438636706049 / 10000000000000 : ℚ)
  center := (309425000000000029 / 400000000000000000 : ℚ)
  supportValue := (51182048160349 / 200000000000000 : ℚ)
  supportSlope := (-7187547682542013 / 10000000000000000 : ℚ)
  oldCenter := (51182048160349 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1786
  oldLo := (511 / 2000 : ℚ)
  oldPieces := [piece_656]
}

noncomputable def cell_12815 : Cell := { cellDefaults with
  domain := ⟨(154725000000000013 / 200000000000000000 : ℚ), (15475000000000001 / 20000000000000000 : ℚ)⟩
  r := (5973997528371 / 12500000000000 : ℚ)
  w := (13438636706049 / 10000000000000 : ℚ)
  center := (309475000000000023 / 400000000000000000 : ℚ)
  supportValue := (5116408821857309 / 20000000000000000 : ℚ)
  supportSlope := (-3590204433004271 / 5000000000000000 : ℚ)
  oldCenter := (5116408821857309 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1786
  oldLo := (511 / 2000 : ℚ)
  oldPieces := [piece_656]
}

noncomputable def cell_12816 : Cell := { cellDefaults with
  domain := ⟨(15475000000000001 / 20000000000000000 : ℚ), (154775000000000007 / 200000000000000000 : ℚ)⟩
  r := (5973997528371 / 12500000000000 : ℚ)
  w := (13438636706049 / 10000000000000 : ℚ)
  center := (309525000000000017 / 400000000000000000 : ℚ)
  supportValue := (2557307304335571 / 10000000000000000 : ℚ)
  supportSlope := (-7173299708612441 / 10000000000000000 : ℚ)
  oldCenter := (2557307304335571 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1786
  oldLo := (511 / 2000 : ℚ)
  oldPieces := [piece_656]
}

noncomputable def cell_12817 : Cell := { cellDefaults with
  domain := ⟨(154775000000000007 / 200000000000000000 : ℚ), (38700000000000001 / 50000000000000000 : ℚ)⟩
  r := (5973997528371 / 12500000000000 : ℚ)
  w := (13438636706049 / 10000000000000 : ℚ)
  center := (309575000000000011 / 400000000000000000 : ℚ)
  supportValue := (1278205542271243 / 5000000000000000 : ℚ)
  supportSlope := (-7166220023898411 / 10000000000000000 : ℚ)
  oldCenter := (1278205542271243 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1786
  oldLo := (511 / 2000 : ℚ)
  oldPieces := [piece_656]
}

noncomputable def cell_12818 : Cell := { cellDefaults with
  domain := ⟨(38700000000000001 / 50000000000000000 : ℚ), (154825000000000007 / 200000000000000000 : ℚ)⟩
  r := (47773585809783 / 100000000000000 : ℚ)
  w := (1343895402001 / 1000000000000 : ℚ)
  center := (309625000000000011 / 400000000000000000 : ℚ)
  supportValue := (1278513836330767 / 5000000000000000 : ℚ)
  supportSlope := (-179214651108129 / 250000000000000 : ℚ)
  oldCenter := (1278513836330767 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1787
  oldLo := (511 / 2000 : ℚ)
  oldPieces := [piece_656]
}

noncomputable def cell_12819 : Cell := { cellDefaults with
  domain := ⟨(154825000000000007 / 200000000000000000 : ℚ), (15485000000000001 / 20000000000000000 : ℚ)⟩
  r := (47773585809783 / 100000000000000 : ℚ)
  w := (1343895402001 / 1000000000000 : ℚ)
  center := (309675000000000017 / 400000000000000000 : ℚ)
  supportValue := (2556132041192169 / 10000000000000000 : ℚ)
  supportSlope := (-7161520489446211 / 10000000000000000 : ℚ)
  oldCenter := (2556132041192169 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1787
  oldLo := (511 / 2000 : ℚ)
  oldPieces := [piece_656]
}

noncomputable def cell_12820 : Cell := { cellDefaults with
  domain := ⟨(15485000000000001 / 20000000000000000 : ℚ), (154875000000000013 / 200000000000000000 : ℚ)⟩
  r := (47773585809783 / 100000000000000 : ℚ)
  w := (1343895402001 / 1000000000000 : ℚ)
  center := (309725000000000023 / 400000000000000000 : ℚ)
  supportValue := (1277619539877563 / 5000000000000000 : ℚ)
  supportSlope := (-357871818342083 / 500000000000000 : ℚ)
  oldCenter := (1277619539877563 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1787
  oldLo := (51 / 200 : ℚ)
  oldPieces := [piece_655, piece_656]
}

noncomputable def cell_12821 : Cell := { cellDefaults with
  domain := ⟨(154875000000000013 / 200000000000000000 : ℚ), (9681250000000001 / 12500000000000000 : ℚ)⟩
  r := (47773585809783 / 100000000000000 : ℚ)
  w := (1343895402001 / 1000000000000 : ℚ)
  center := (309775000000000029 / 400000000000000000 : ℚ)
  supportValue := (510868453779271 / 2000000000000000 : ℚ)
  supportSlope := (-894992450879321 / 1250000000000000 : ℚ)
  oldCenter := (510868453779271 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1787
  oldLo := (51 / 200 : ℚ)
  oldHi := (511 / 2000 : ℚ)
  oldPieces := [piece_655]
}

noncomputable def cell_12822 : Cell := { cellDefaults with
  domain := ⟨(9681250000000001 / 12500000000000000 : ℚ), (154925000000000013 / 200000000000000000 : ℚ)⟩
  r := (1193880250947 / 2500000000000 : ℚ)
  w := (13439277391211 / 10000000000000 : ℚ)
  center := (309825000000000029 / 400000000000000000 : ℚ)
  supportValue := (2554959348018153 / 10000000000000000 : ℚ)
  supportSlope := (-7156656365855133 / 10000000000000000 : ℚ)
  oldCenter := (2554959348018153 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1788
  oldLo := (51 / 200 : ℚ)
  oldPieces := [piece_655, piece_656]
}

noncomputable def cell_12823 : Cell := { cellDefaults with
  domain := ⟨(154925000000000013 / 200000000000000000 : ℚ), (15495000000000001 / 20000000000000000 : ℚ)⟩
  r := (1193880250947 / 2500000000000 : ℚ)
  w := (13439277391211 / 10000000000000 : ℚ)
  center := (309875000000000023 / 400000000000000000 : ℚ)
  supportValue := (638515678062483 / 2500000000000000 : ℚ)
  supportSlope := (-357761179530723 / 500000000000000 : ℚ)
  oldCenter := (638515678062483 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1788
  oldLo := (51 / 200 : ℚ)
  oldHi := (511 / 2000 : ℚ)
  oldPieces := [piece_655]
}

noncomputable def cell_12824 : Cell := { cellDefaults with
  domain := ⟨(15495000000000001 / 20000000000000000 : ℚ), (154975000000000007 / 200000000000000000 : ℚ)⟩
  r := (1193880250947 / 2500000000000 : ℚ)
  w := (13439277391211 / 10000000000000 : ℚ)
  center := (309925000000000017 / 400000000000000000 : ℚ)
  supportValue := (510633750438031 / 2000000000000000 : ℚ)
  supportSlope := (-7148140443097053 / 10000000000000000 : ℚ)
  oldCenter := (510633750438031 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1788
  oldLo := (51 / 200 : ℚ)
  oldHi := (511 / 2000 : ℚ)
  oldPieces := [piece_655]
}

noncomputable def cell_12825 : Cell := { cellDefaults with
  domain := ⟨(154975000000000007 / 200000000000000000 : ℚ), (38750000000000001 / 50000000000000000 : ℚ)⟩
  r := (1193880250947 / 2500000000000 : ℚ)
  w := (13439277391211 / 10000000000000 : ℚ)
  center := (309975000000000011 / 400000000000000000 : ℚ)
  supportValue := (1276137837842457 / 5000000000000000 : ℚ)
  supportSlope := (-3570543338003313 / 5000000000000000 : ℚ)
  oldCenter := (1276137837842457 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1788
  oldLo := (51 / 200 : ℚ)
  oldHi := (511 / 2000 : ℚ)
  oldPieces := [piece_655]
}

noncomputable def cell_12826 : Cell := { cellDefaults with
  domain := ⟨(38750000000000001 / 50000000000000000 : ℚ), (155025000000000007 / 200000000000000000 : ℚ)⟩
  r := (47736859259743 / 100000000000000 : ℚ)
  w := (13439618085549 / 10000000000000 : ℚ)
  center := (310025000000000011 / 400000000000000000 : ℚ)
  supportValue := (2552886427379629 / 10000000000000000 : ℚ)
  supportSlope := (-7143420712107083 / 10000000000000000 : ℚ)
  oldCenter := (2552886427379629 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1789
  oldLo := (51 / 200 : ℚ)
  oldHi := (511 / 2000 : ℚ)
  oldPieces := [piece_655]
}

noncomputable def cell_12827 : Cell := { cellDefaults with
  domain := ⟨(155025000000000007 / 200000000000000000 : ℚ), (15505000000000001 / 20000000000000000 : ℚ)⟩
  r := (47736859259743 / 100000000000000 : ℚ)
  w := (13439618085549 / 10000000000000 : ℚ)
  center := (310075000000000017 / 400000000000000000 : ℚ)
  supportValue := (510398787990293 / 2000000000000000 : ℚ)
  supportSlope := (-7136381154379233 / 10000000000000000 : ℚ)
  oldCenter := (510398787990293 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1789
  oldLo := (51 / 200 : ℚ)
  oldHi := (511 / 2000 : ℚ)
  oldPieces := [piece_655]
}

noncomputable def cell_12828 : Cell := { cellDefaults with
  domain := ⟨(15505000000000001 / 20000000000000000 : ℚ), (155075000000000013 / 200000000000000000 : ℚ)⟩
  r := (47736859259743 / 100000000000000 : ℚ)
  w := (13439618085549 / 10000000000000 : ℚ)
  center := (310125000000000023 / 400000000000000000 : ℚ)
  supportValue := (318887791330773 / 1250000000000000 : ℚ)
  supportSlope := (-445585669033801 / 625000000000000 : ℚ)
  oldCenter := (318887791330773 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1789
  oldLo := (51 / 200 : ℚ)
  oldHi := (511 / 2000 : ℚ)
  oldPieces := [piece_655]
}

noncomputable def cell_12829 : Cell := { cellDefaults with
  domain := ⟨(155075000000000013 / 200000000000000000 : ℚ), (9693750000000001 / 12500000000000000 : ℚ)⟩
  r := (47736859259743 / 100000000000000 : ℚ)
  w := (13439618085549 / 10000000000000 : ℚ)
  center := (310175000000000029 / 400000000000000000 : ℚ)
  supportValue := (102008535239371 / 400000000000000 : ℚ)
  supportSlope := (-1425130665603731 / 2000000000000000 : ℚ)
  oldCenter := (102008535239371 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1789
  oldLo := (509 / 2000 : ℚ)
  oldHi := (511 / 2000 : ℚ)
  oldPieces := [piece_654, piece_655]
}

noncomputable def cell_12830 : Cell := { cellDefaults with
  domain := ⟨(9693750000000001 / 12500000000000000 : ℚ), (155125000000000013 / 200000000000000000 : ℚ)⟩
  r := (47718535831359 / 100000000000000 : ℚ)
  w := (13439981866259 / 10000000000000 : ℚ)
  center := (310225000000000029 / 400000000000000000 : ℚ)
  supportValue := (1275408402782251 / 5000000000000000 : ℚ)
  supportSlope := (-3562327253812541 / 5000000000000000 : ℚ)
  oldCenter := (1275408402782251 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1790
  oldLo := (51 / 200 : ℚ)
  oldHi := (511 / 2000 : ℚ)
  oldPieces := [piece_655]
}

noncomputable def cell_12831 : Cell := { cellDefaults with
  domain := ⟨(155125000000000013 / 200000000000000000 : ℚ), (15515000000000001 / 20000000000000000 : ℚ)⟩
  r := (47718535831359 / 100000000000000 : ℚ)
  w := (13439981866259 / 10000000000000 : ℚ)
  center := (310275000000000023 / 400000000000000000 : ℚ)
  supportValue := (1274964157573269 / 5000000000000000 : ℚ)
  supportSlope := (-7124908669534379 / 10000000000000000 : ℚ)
  oldCenter := (1274964157573269 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1790
  oldLo := (509 / 2000 : ℚ)
  oldHi := (511 / 2000 : ℚ)
  oldPieces := [piece_654, piece_655]
}

noncomputable def cell_12832 : Cell := { cellDefaults with
  domain := ⟨(15515000000000001 / 20000000000000000 : ℚ), (155175000000000007 / 200000000000000000 : ℚ)⟩
  r := (47718535831359 / 100000000000000 : ℚ)
  w := (13439981866259 / 10000000000000 : ℚ)
  center := (310325000000000017 / 400000000000000000 : ℚ)
  supportValue := (5098071419510991 / 20000000000000000 : ℚ)
  supportSlope := (-7123038241659573 / 10000000000000000 : ℚ)
  oldCenter := (5098071419510991 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1790
  oldLo := (509 / 2000 : ℚ)
  oldHi := (51 / 200 : ℚ)
  oldPieces := [piece_654]
}

noncomputable def cell_12833 : Cell := { cellDefaults with
  domain := ⟨(155175000000000007 / 200000000000000000 : ℚ), (38800000000000001 / 50000000000000000 : ℚ)⟩
  r := (47718535831359 / 100000000000000 : ℚ)
  w := (13439981866259 / 10000000000000 : ℚ)
  center := (310375000000000011 / 400000000000000000 : ℚ)
  supportValue := (12740728845947033 / 50000000000000000 : ℚ)
  supportSlope := (-7116013836699651 / 10000000000000000 : ℚ)
  oldCenter := (12740728845947033 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1790
  oldLo := (509 / 2000 : ℚ)
  oldHi := (51 / 200 : ℚ)
  oldPieces := [piece_654]
}

noncomputable def cell_12834 : Cell := { cellDefaults with
  domain := ⟨(38800000000000001 / 50000000000000000 : ℚ), (155225000000000007 / 200000000000000000 : ℚ)⟩
  r := (1908009158721 / 4000000000000 : ℚ)
  w := (6720173575497 / 5000000000000 : ℚ)
  center := (310425000000000011 / 400000000000000000 : ℚ)
  supportValue := (25487505005325833 / 100000000000000000 : ℚ)
  supportSlope := (-444894510558349 / 625000000000000 : ℚ)
  oldCenter := (25487505005325833 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1791
  oldLo := (509 / 2000 : ℚ)
  oldHi := (51 / 200 : ℚ)
  oldPieces := [piece_654]
}

noncomputable def cell_12835 : Cell := { cellDefaults with
  domain := ⟨(155225000000000007 / 200000000000000000 : ℚ), (15525000000000001 / 20000000000000000 : ℚ)⟩
  r := (1908009158721 / 4000000000000 : ℚ)
  w := (6720173575497 / 5000000000000 : ℚ)
  center := (310475000000000017 / 400000000000000000 : ℚ)
  supportValue := (509572229966557 / 2000000000000000 : ℚ)
  supportSlope := (-11378083246909 / 16000000000000 : ℚ)
  oldCenter := (509572229966557 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1791
  oldLo := (509 / 2000 : ℚ)
  oldHi := (51 / 200 : ℚ)
  oldPieces := [piece_654]
}

noncomputable def cell_12836 : Cell := { cellDefaults with
  domain := ⟨(15525000000000001 / 20000000000000000 : ℚ), (155275000000000013 / 200000000000000000 : ℚ)⟩
  r := (1908009158721 / 4000000000000 : ℚ)
  w := (6720173575497 / 5000000000000 : ℚ)
  center := (310525000000000023 / 400000000000000000 : ℚ)
  supportValue := (25469726735859527 / 100000000000000000 : ℚ)
  supportSlope := (-177608022005483 / 250000000000000 : ℚ)
  oldCenter := (25469726735859527 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1791
  oldLo := (509 / 2000 : ℚ)
  oldHi := (51 / 200 : ℚ)
  oldPieces := [piece_654]
}

noncomputable def cell_12837 : Cell := { cellDefaults with
  domain := ⟨(155275000000000013 / 200000000000000000 : ℚ), (9706250000000001 / 12500000000000000 : ℚ)⟩
  r := (1908009158721 / 4000000000000 : ℚ)
  w := (6720173575497 / 5000000000000 : ℚ)
  center := (310575000000000029 / 400000000000000000 : ℚ)
  supportValue := (2546085068179617 / 10000000000000000 : ℚ)
  supportSlope := (-3548684270242149 / 5000000000000000 : ℚ)
  oldCenter := (2546085068179617 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1791
  oldLo := (509 / 2000 : ℚ)
  oldHi := (51 / 200 : ℚ)
  oldPieces := [piece_654]
}

noncomputable def cell_12838 : Cell := { cellDefaults with
  domain := ⟨(9706250000000001 / 12500000000000000 : ℚ), (155325000000000013 / 200000000000000000 : ℚ)⟩
  r := (47681954455901 / 100000000000000 : ℚ)
  w := (840046555787 / 625000000000 : ℚ)
  center := (310625000000000029 / 400000000000000000 : ℚ)
  supportValue := (5093365023379457 / 20000000000000000 : ℚ)
  supportSlope := (-7099586471134031 / 10000000000000000 : ℚ)
  oldCenter := (5093365023379457 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1792
  oldLo := (509 / 2000 : ℚ)
  oldHi := (51 / 200 : ℚ)
  oldPieces := [piece_654]
}

noncomputable def cell_12839 : Cell := { cellDefaults with
  domain := ⟨(155325000000000013 / 200000000000000000 : ℚ), (15535000000000001 / 20000000000000000 : ℚ)⟩
  r := (47681954455901 / 100000000000000 : ℚ)
  w := (840046555787 / 625000000000 : ℚ)
  center := (310675000000000023 / 400000000000000000 : ℚ)
  supportValue := (12728977485966153 / 50000000000000000 : ℚ)
  supportSlope := (-7092648372922523 / 10000000000000000 : ℚ)
  oldCenter := (12728977485966153 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1792
  oldLo := (509 / 2000 : ℚ)
  oldHi := (51 / 200 : ℚ)
  oldPieces := [piece_654]
}

noncomputable def cell_12840 : Cell := { cellDefaults with
  domain := ⟨(15535000000000001 / 20000000000000000 : ℚ), (155375000000000007 / 200000000000000000 : ℚ)⟩
  r := (47681954455901 / 100000000000000 : ℚ)
  w := (840046555787 / 625000000000 : ℚ)
  center := (310725000000000017 / 400000000000000000 : ℚ)
  supportValue := (12724554857070383 / 50000000000000000 : ℚ)
  supportSlope := (-354655945551439 / 500000000000000 : ℚ)
  oldCenter := (12724554857070383 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1792
  oldLo := (127 / 500 : ℚ)
  oldHi := (51 / 200 : ℚ)
  oldPieces := [piece_653, piece_654]
}

noncomputable def cell_12841 : Cell := { cellDefaults with
  domain := ⟨(155375000000000007 / 200000000000000000 : ℚ), (38850000000000001 / 50000000000000000 : ℚ)⟩
  r := (47681954455901 / 100000000000000 : ℚ)
  w := (840046555787 / 625000000000 : ℚ)
  center := (310775000000000011 / 400000000000000000 : ℚ)
  supportValue := (508804475539199 / 2000000000000000 : ℚ)
  supportSlope := (-1772750972590877 / 2500000000000000 : ℚ)
  oldCenter := (508804475539199 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1792
  oldLo := (127 / 500 : ℚ)
  oldHi := (509 / 2000 : ℚ)
  oldPieces := [piece_653]
}

noncomputable def cell_12842 : Cell := { cellDefaults with
  domain := ⟨(38850000000000001 / 50000000000000000 : ℚ), (155425000000000007 / 200000000000000000 : ℚ)⟩
  r := (11915923958477 / 25000000000000 : ℚ)
  w := (3360285455429 / 2500000000000 : ℚ)
  center := (310825000000000011 / 400000000000000000 : ℚ)
  supportValue := (50892430201039 / 200000000000000 : ℚ)
  supportSlope := (-7092391835551697 / 10000000000000000 : ℚ)
  oldCenter := (50892430201039 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1793
  oldLo := (127 / 500 : ℚ)
  oldHi := (51 / 200 : ℚ)
  oldPieces := [piece_653, piece_654]
}

noncomputable def cell_12843 : Cell := { cellDefaults with
  domain := ⟨(155425000000000007 / 200000000000000000 : ℚ), (15545000000000001 / 20000000000000000 : ℚ)⟩
  r := (11915923958477 / 25000000000000 : ℚ)
  w := (3360285455429 / 2500000000000 : ℚ)
  center := (310875000000000017 / 400000000000000000 : ℚ)
  supportValue := (25437335082342677 / 100000000000000000 : ℚ)
  supportSlope := (-708627747507599 / 1000000000000000 : ℚ)
  oldCenter := (25437335082342677 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1793
  oldLo := (127 / 500 : ℚ)
  oldHi := (509 / 2000 : ℚ)
  oldPieces := [piece_653]
}

noncomputable def cell_12844 : Cell := { cellDefaults with
  domain := ⟨(15545000000000001 / 20000000000000000 : ℚ), (155475000000000013 / 200000000000000000 : ℚ)⟩
  r := (11915923958477 / 25000000000000 : ℚ)
  w := (3360285455429 / 2500000000000 : ℚ)
  center := (310925000000000023 / 400000000000000000 : ℚ)
  supportValue := (2542848158016917 / 10000000000000000 : ℚ)
  supportSlope := (-353966447119671 / 500000000000000 : ℚ)
  oldCenter := (2542848158016917 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1793
  oldLo := (127 / 500 : ℚ)
  oldHi := (509 / 2000 : ℚ)
  oldPieces := [piece_653]
}

noncomputable def cell_12845 : Cell := { cellDefaults with
  domain := ⟨(155475000000000013 / 200000000000000000 : ℚ), (9718750000000001 / 12500000000000000 : ℚ)⟩
  r := (11915923958477 / 25000000000000 : ℚ)
  w := (3360285455429 / 2500000000000 : ℚ)
  center := (310975000000000029 / 400000000000000000 : ℚ)
  supportValue := (25419636745718327 / 100000000000000000 : ℚ)
  supportSlope := (-1414481815631249 / 2000000000000000 : ℚ)
  oldCenter := (25419636745718327 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1793
  oldLo := (127 / 500 : ℚ)
  oldHi := (509 / 2000 : ℚ)
  oldPieces := [piece_653]
}

noncomputable def cell_12846 : Cell := { cellDefaults with
  domain := ⟨(9718750000000001 / 12500000000000000 : ℚ), (155525000000000013 / 200000000000000000 : ℚ)⟩
  r := (23822732236321 / 50000000000000 : ℚ)
  w := (134415631331 / 100000000000 : ℚ)
  center := (311025000000000029 / 400000000000000000 : ℚ)
  supportValue := (79454854469819 / 312500000000000 : ℚ)
  supportSlope := (-7074591039249749 / 10000000000000000 : ℚ)
  oldCenter := (79454854469819 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1794
  oldLo := (127 / 500 : ℚ)
  oldHi := (509 / 2000 : ℚ)
  oldPieces := [piece_653]
}

noncomputable def cell_12847 : Cell := { cellDefaults with
  domain := ⟨(155525000000000013 / 200000000000000000 : ℚ), (15555000000000001 / 20000000000000000 : ℚ)⟩
  r := (23822732236321 / 50000000000000 : ℚ)
  w := (134415631331 / 100000000000 : ℚ)
  center := (311075000000000023 / 400000000000000000 : ℚ)
  supportValue := (101666858037333 / 400000000000000 : ℚ)
  supportSlope := (-7067685454781051 / 10000000000000000 : ℚ)
  oldCenter := (101666858037333 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1794
  oldLo := (127 / 500 : ℚ)
  oldHi := (509 / 2000 : ℚ)
  oldPieces := [piece_653]
}

noncomputable def cell_12848 : Cell := { cellDefaults with
  domain := ⟨(15555000000000001 / 20000000000000000 : ℚ), (155575000000000007 / 200000000000000000 : ℚ)⟩
  r := (23822732236321 / 50000000000000 : ℚ)
  w := (134415631331 / 100000000000 : ℚ)
  center := (311125000000000017 / 400000000000000000 : ℚ)
  supportValue := (12703942101264437 / 50000000000000000 : ℚ)
  supportSlope := (-7060808272002241 / 10000000000000000 : ℚ)
  oldCenter := (12703942101264437 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1794
  oldLo := (127 / 500 : ℚ)
  oldHi := (509 / 2000 : ℚ)
  oldPieces := [piece_653]
}

noncomputable def cell_12849 : Cell := { cellDefaults with
  domain := ⟨(155575000000000007 / 200000000000000000 : ℚ), (38900000000000001 / 50000000000000000 : ℚ)⟩
  r := (23822732236321 / 50000000000000 : ℚ)
  w := (134415631331 / 100000000000 : ℚ)
  center := (311175000000000011 / 400000000000000000 : ℚ)
  supportValue := (2539907862795193 / 10000000000000000 : ℚ)
  supportSlope := (-3530654448705019 / 5000000000000000 : ℚ)
  oldCenter := (2539907862795193 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1794
  oldLo := (507 / 2000 : ℚ)
  oldHi := (509 / 2000 : ℚ)
  oldPieces := [piece_652, piece_653]
}

theorem check_12800 : cell_12800.check = true := by
  decide +kernel

theorem check_12801 : cell_12801.check = true := by
  decide +kernel

theorem check_12802 : cell_12802.check = true := by
  decide +kernel

theorem check_12803 : cell_12803.check = true := by
  decide +kernel

theorem check_12804 : cell_12804.check = true := by
  decide +kernel

theorem check_12805 : cell_12805.check = true := by
  decide +kernel

theorem check_12806 : cell_12806.check = true := by
  decide +kernel

theorem check_12807 : cell_12807.check = true := by
  decide +kernel

theorem check_12808 : cell_12808.check = true := by
  decide +kernel

theorem check_12809 : cell_12809.check = true := by
  decide +kernel

theorem check_12810 : cell_12810.check = true := by
  decide +kernel

theorem check_12811 : cell_12811.check = true := by
  decide +kernel

theorem check_12812 : cell_12812.check = true := by
  decide +kernel

theorem check_12813 : cell_12813.check = true := by
  decide +kernel

theorem check_12814 : cell_12814.check = true := by
  decide +kernel

theorem check_12815 : cell_12815.check = true := by
  decide +kernel

theorem check_12816 : cell_12816.check = true := by
  decide +kernel

theorem check_12817 : cell_12817.check = true := by
  decide +kernel

theorem check_12818 : cell_12818.check = true := by
  decide +kernel

theorem check_12819 : cell_12819.check = true := by
  decide +kernel

theorem check_12820 : cell_12820.check = true := by
  decide +kernel

theorem check_12821 : cell_12821.check = true := by
  decide +kernel

theorem check_12822 : cell_12822.check = true := by
  decide +kernel

theorem check_12823 : cell_12823.check = true := by
  decide +kernel

theorem check_12824 : cell_12824.check = true := by
  decide +kernel

theorem check_12825 : cell_12825.check = true := by
  decide +kernel

theorem check_12826 : cell_12826.check = true := by
  decide +kernel

theorem check_12827 : cell_12827.check = true := by
  decide +kernel

theorem check_12828 : cell_12828.check = true := by
  decide +kernel

theorem check_12829 : cell_12829.check = true := by
  decide +kernel

theorem check_12830 : cell_12830.check = true := by
  decide +kernel

theorem check_12831 : cell_12831.check = true := by
  decide +kernel

theorem check_12832 : cell_12832.check = true := by
  decide +kernel

theorem check_12833 : cell_12833.check = true := by
  decide +kernel

theorem check_12834 : cell_12834.check = true := by
  decide +kernel

theorem check_12835 : cell_12835.check = true := by
  decide +kernel

theorem check_12836 : cell_12836.check = true := by
  decide +kernel

theorem check_12837 : cell_12837.check = true := by
  decide +kernel

theorem check_12838 : cell_12838.check = true := by
  decide +kernel

theorem check_12839 : cell_12839.check = true := by
  decide +kernel

theorem check_12840 : cell_12840.check = true := by
  decide +kernel

theorem check_12841 : cell_12841.check = true := by
  decide +kernel

theorem check_12842 : cell_12842.check = true := by
  decide +kernel

theorem check_12843 : cell_12843.check = true := by
  decide +kernel

theorem check_12844 : cell_12844.check = true := by
  decide +kernel

theorem check_12845 : cell_12845.check = true := by
  decide +kernel

theorem check_12846 : cell_12846.check = true := by
  decide +kernel

theorem check_12847 : cell_12847.check = true := by
  decide +kernel

theorem check_12848 : cell_12848.check = true := by
  decide +kernel

theorem check_12849 : cell_12849.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12800, cell_12801, cell_12802, cell_12803, cell_12804, cell_12805, cell_12806, cell_12807, cell_12808, cell_12809, cell_12810, cell_12811, cell_12812, cell_12813, cell_12814, cell_12815, cell_12816, cell_12817, cell_12818, cell_12819, cell_12820, cell_12821, cell_12822, cell_12823, cell_12824, cell_12825, cell_12826, cell_12827, cell_12828, cell_12829, cell_12830, cell_12831, cell_12832, cell_12833, cell_12834, cell_12835, cell_12836, cell_12837, cell_12838, cell_12839, cell_12840, cell_12841, cell_12842, cell_12843, cell_12844, cell_12845, cell_12846, cell_12847, cell_12848, cell_12849]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12800, check_12801, check_12802, check_12803, check_12804, check_12805, check_12806, check_12807, check_12808, check_12809, check_12810, check_12811, check_12812, check_12813, check_12814, check_12815, check_12816, check_12817, check_12818, check_12819, check_12820, check_12821, check_12822, check_12823, check_12824, check_12825, check_12826, check_12827, check_12828, check_12829, check_12830, check_12831, check_12832, check_12833, check_12834, check_12835, check_12836, check_12837, check_12838, check_12839, check_12840, check_12841, check_12842, check_12843, check_12844, check_12845, check_12846, check_12847, check_12848, check_12849, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0256

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0256
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0256
open AnalyticBounds.ExpressionCertificate

theorem linked_12800 : Linked cell_12800 pieces := by
  link_source cell_12800 with piece_1781 using piece_1781_mem, piece_658_mem

theorem linked_12801 : Linked cell_12801 pieces := by
  link_source cell_12801 with piece_1781 using piece_1781_mem, ⟨piece_657_mem, piece_658_mem⟩

theorem linked_12802 : Linked cell_12802 pieces := by
  link_source cell_12802 with piece_1782 using piece_1782_mem, ⟨piece_657_mem, piece_658_mem⟩

theorem linked_12803 : Linked cell_12803 pieces := by
  link_source cell_12803 with piece_1782 using piece_1782_mem, piece_657_mem

theorem linked_12804 : Linked cell_12804 pieces := by
  link_source cell_12804 with piece_1782 using piece_1782_mem, piece_657_mem

theorem linked_12805 : Linked cell_12805 pieces := by
  link_source cell_12805 with piece_1782 using piece_1782_mem, piece_657_mem

theorem linked_12806 : Linked cell_12806 pieces := by
  link_source cell_12806 with piece_1783 using piece_1783_mem, piece_657_mem

theorem linked_12807 : Linked cell_12807 pieces := by
  link_source cell_12807 with piece_1783 using piece_1783_mem, piece_657_mem

theorem linked_12808 : Linked cell_12808 pieces := by
  link_source cell_12808 with piece_1783 using piece_1783_mem, piece_657_mem

theorem linked_12809 : Linked cell_12809 pieces := by
  link_source cell_12809 with piece_1783 using piece_1783_mem, piece_657_mem

theorem linked_12810 : Linked cell_12810 pieces := by
  link_source cell_12810 with piece_1784 using piece_1784_mem, piece_657_mem

theorem linked_12811 : Linked cell_12811 pieces := by
  link_source cell_12811 with piece_1784 using piece_1784_mem, ⟨piece_656_mem, piece_657_mem⟩

theorem linked_12812 : Linked cell_12812 pieces := by
  link_source cell_12812 with piece_1785 using piece_1785_mem, piece_656_mem

theorem linked_12813 : Linked cell_12813 pieces := by
  link_source cell_12813 with piece_1785 using piece_1785_mem, piece_656_mem

theorem linked_12814 : Linked cell_12814 pieces := by
  link_source cell_12814 with piece_1786 using piece_1786_mem, piece_656_mem

theorem linked_12815 : Linked cell_12815 pieces := by
  link_source cell_12815 with piece_1786 using piece_1786_mem, piece_656_mem

theorem linked_12816 : Linked cell_12816 pieces := by
  link_source cell_12816 with piece_1786 using piece_1786_mem, piece_656_mem

theorem linked_12817 : Linked cell_12817 pieces := by
  link_source cell_12817 with piece_1786 using piece_1786_mem, piece_656_mem

theorem linked_12818 : Linked cell_12818 pieces := by
  link_source cell_12818 with piece_1787 using piece_1787_mem, piece_656_mem

theorem linked_12819 : Linked cell_12819 pieces := by
  link_source cell_12819 with piece_1787 using piece_1787_mem, piece_656_mem

theorem linked_12820 : Linked cell_12820 pieces := by
  link_source cell_12820 with piece_1787 using piece_1787_mem, ⟨piece_655_mem, piece_656_mem⟩

theorem linked_12821 : Linked cell_12821 pieces := by
  link_source cell_12821 with piece_1787 using piece_1787_mem, piece_655_mem

theorem linked_12822 : Linked cell_12822 pieces := by
  link_source cell_12822 with piece_1788 using piece_1788_mem, ⟨piece_655_mem, piece_656_mem⟩

theorem linked_12823 : Linked cell_12823 pieces := by
  link_source cell_12823 with piece_1788 using piece_1788_mem, piece_655_mem

theorem linked_12824 : Linked cell_12824 pieces := by
  link_source cell_12824 with piece_1788 using piece_1788_mem, piece_655_mem

theorem linked_12825 : Linked cell_12825 pieces := by
  link_source cell_12825 with piece_1788 using piece_1788_mem, piece_655_mem

theorem linked_12826 : Linked cell_12826 pieces := by
  link_source cell_12826 with piece_1789 using piece_1789_mem, piece_655_mem

theorem linked_12827 : Linked cell_12827 pieces := by
  link_source cell_12827 with piece_1789 using piece_1789_mem, piece_655_mem

theorem linked_12828 : Linked cell_12828 pieces := by
  link_source cell_12828 with piece_1789 using piece_1789_mem, piece_655_mem

theorem linked_12829 : Linked cell_12829 pieces := by
  link_source cell_12829 with piece_1789 using piece_1789_mem, ⟨piece_654_mem, piece_655_mem⟩

theorem linked_12830 : Linked cell_12830 pieces := by
  link_source cell_12830 with piece_1790 using piece_1790_mem, piece_655_mem

theorem linked_12831 : Linked cell_12831 pieces := by
  link_source cell_12831 with piece_1790 using piece_1790_mem, ⟨piece_654_mem, piece_655_mem⟩

theorem linked_12832 : Linked cell_12832 pieces := by
  link_source cell_12832 with piece_1790 using piece_1790_mem, piece_654_mem

theorem linked_12833 : Linked cell_12833 pieces := by
  link_source cell_12833 with piece_1790 using piece_1790_mem, piece_654_mem

theorem linked_12834 : Linked cell_12834 pieces := by
  link_source cell_12834 with piece_1791 using piece_1791_mem, piece_654_mem

theorem linked_12835 : Linked cell_12835 pieces := by
  link_source cell_12835 with piece_1791 using piece_1791_mem, piece_654_mem

theorem linked_12836 : Linked cell_12836 pieces := by
  link_source cell_12836 with piece_1791 using piece_1791_mem, piece_654_mem

theorem linked_12837 : Linked cell_12837 pieces := by
  link_source cell_12837 with piece_1791 using piece_1791_mem, piece_654_mem

theorem linked_12838 : Linked cell_12838 pieces := by
  link_source cell_12838 with piece_1792 using piece_1792_mem, piece_654_mem

theorem linked_12839 : Linked cell_12839 pieces := by
  link_source cell_12839 with piece_1792 using piece_1792_mem, piece_654_mem

theorem linked_12840 : Linked cell_12840 pieces := by
  link_source cell_12840 with piece_1792 using piece_1792_mem, ⟨piece_653_mem, piece_654_mem⟩

theorem linked_12841 : Linked cell_12841 pieces := by
  link_source cell_12841 with piece_1792 using piece_1792_mem, piece_653_mem

theorem linked_12842 : Linked cell_12842 pieces := by
  link_source cell_12842 with piece_1793 using piece_1793_mem, ⟨piece_653_mem, piece_654_mem⟩

theorem linked_12843 : Linked cell_12843 pieces := by
  link_source cell_12843 with piece_1793 using piece_1793_mem, piece_653_mem

theorem linked_12844 : Linked cell_12844 pieces := by
  link_source cell_12844 with piece_1793 using piece_1793_mem, piece_653_mem

theorem linked_12845 : Linked cell_12845 pieces := by
  link_source cell_12845 with piece_1793 using piece_1793_mem, piece_653_mem

theorem linked_12846 : Linked cell_12846 pieces := by
  link_source cell_12846 with piece_1794 using piece_1794_mem, piece_653_mem

theorem linked_12847 : Linked cell_12847 pieces := by
  link_source cell_12847 with piece_1794 using piece_1794_mem, piece_653_mem

theorem linked_12848 : Linked cell_12848 pieces := by
  link_source cell_12848 with piece_1794 using piece_1794_mem, piece_653_mem

theorem linked_12849 : Linked cell_12849 pieces := by
  link_source cell_12849 with piece_1794 using piece_1794_mem, ⟨piece_652_mem, piece_653_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0256.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0256.cells,List.forall_mem_cons]
  exact ⟨linked_12800, linked_12801, linked_12802, linked_12803, linked_12804, linked_12805, linked_12806, linked_12807, linked_12808, linked_12809, linked_12810, linked_12811, linked_12812, linked_12813, linked_12814, linked_12815, linked_12816, linked_12817, linked_12818, linked_12819, linked_12820, linked_12821, linked_12822, linked_12823, linked_12824, linked_12825, linked_12826, linked_12827, linked_12828, linked_12829, linked_12830, linked_12831, linked_12832, linked_12833, linked_12834, linked_12835, linked_12836, linked_12837, linked_12838, linked_12839, linked_12840, linked_12841, linked_12842, linked_12843, linked_12844, linked_12845, linked_12846, linked_12847, linked_12848, linked_12849, by simp⟩

theorem covered : covers (154350000000000009 / 200000000000000000 : ℚ) (38900000000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0256.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0256
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0257
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(38900000000000001 / 50000000000000000 : ℚ), (155625000000000007 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (2976703630983 / 6250000000000 : ℚ)
  w := (3360500419017 / 2500000000000 : ℚ)
  center := (311225000000000011 / 400000000000000000 : ℚ)
  supportValue := (12702467349342053 / 50000000000000000 : ℚ)
  supportSlope := (-3528040875870463 / 5000000000000000 : ℚ)
  oldCenter := (12702467349342053 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1795
  oldLo := (101 / 400 : ℚ)
  oldHi := (101 / 400 : ℚ)
  oldPieces := [piece_652]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12850 : Cell := { cellDefaults with
  oldLo := (127 / 500 : ℚ)
  oldHi := (509 / 2000 : ℚ)
  oldPieces := [piece_653]
}

noncomputable def cell_12851 : Cell := { cellDefaults with
  domain := ⟨(155625000000000007 / 200000000000000000 : ℚ), (15565000000000001 / 20000000000000000 : ℚ)⟩
  center := (311275000000000017 / 400000000000000000 : ℚ)
  supportValue := (25396129967835707 / 100000000000000000 : ℚ)
  supportSlope := (-1765154136032853 / 2500000000000000 : ℚ)
  oldCenter := (25396129967835707 / 100000000000000000 : ℚ)
  oldLo := (507 / 2000 : ℚ)
  oldHi := (509 / 2000 : ℚ)
  oldPieces := [piece_652, piece_653]
}

noncomputable def cell_12852 : Cell := { cellDefaults with
  domain := ⟨(15565000000000001 / 20000000000000000 : ℚ), (155675000000000013 / 200000000000000000 : ℚ)⟩
  center := (311325000000000023 / 400000000000000000 : ℚ)
  supportValue := (25387289861358797 / 100000000000000000 : ℚ)
  supportSlope := (-352719977888729 / 500000000000000 : ℚ)
  oldCenter := (25387289861358797 / 100000000000000000 : ℚ)
  oldLo := (507 / 2000 : ℚ)
  oldHi := (127 / 500 : ℚ)
  oldPieces := [piece_652]
}

noncomputable def cell_12853 : Cell := { cellDefaults with
  domain := ⟨(155675000000000013 / 200000000000000000 : ℚ), (9731250000000001 / 12500000000000000 : ℚ)⟩
  center := (311375000000000029 / 400000000000000000 : ℚ)
  supportValue := (79307738054467 / 312500000000000 : ℚ)
  supportSlope := (-7047497634581611 / 10000000000000000 : ℚ)
  oldCenter := (79307738054467 / 312500000000000 : ℚ)
  oldLo := (507 / 2000 : ℚ)
  oldHi := (127 / 500 : ℚ)
  oldPieces := [piece_652]
}

noncomputable def cell_12854 : Cell := { cellDefaults with
  domain := ⟨(9731250000000001 / 12500000000000000 : ℚ), (19465886871508381 / 25000000000000000 : ℚ)⟩
  r := (9521814198411 / 20000000000000 : ℚ)
  w := (840152940267 / 625000000000 : ℚ)
  center := (38928386871508383 / 50000000000000000 : ℚ)
  supportValue := (25383964400562187 / 100000000000000000 : ℚ)
  supportSlope := (-7049363283172179 / 10000000000000000 : ℚ)
  oldCenter := (25383964400562187 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1796
  oldLo := (507 / 2000 : ℚ)
  oldHi := (127 / 500 : ℚ)
  oldPieces := [piece_652]
}

noncomputable def cell_12855 : Cell := { cellDefaults with
  domain := ⟨(19465886871508381 / 25000000000000000 : ℚ), (486731843575419 / 625000000000000 : ℚ)⟩
  r := (9521814198411 / 20000000000000 : ℚ)
  w := (840152940267 / 625000000000 : ℚ)
  center := (38935160614525141 / 50000000000000000 : ℚ)
  supportValue := (5074883868587431 / 20000000000000000 : ℚ)
  supportSlope := (-35209505848819 / 50000000000000 : ℚ)
  oldCenter := (5074883868587431 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1796
  oldLo := (507 / 2000 : ℚ)
  oldHi := (127 / 500 : ℚ)
  oldPieces := [piece_652]
}

noncomputable def cell_12856 : Cell := { cellDefaults with
  domain := ⟨(486731843575419 / 625000000000000 : ℚ), (155777094972067043 / 200000000000000000 : ℚ)⟩
  r := (9521814198411 / 20000000000000 : ℚ)
  w := (840152940267 / 625000000000 : ℚ)
  center := (311531284916201123 / 400000000000000000 : ℚ)
  supportValue := (25365621251834447 / 100000000000000000 : ℚ)
  supportSlope := (-7035047640110131 / 10000000000000000 : ℚ)
  oldCenter := (25365621251834447 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1797
  oldLo := (507 / 2000 : ℚ)
  oldHi := (127 / 500 : ℚ)
  oldPieces := [piece_652]
}

noncomputable def cell_12857 : Cell := { cellDefaults with
  domain := ⟨(155777094972067043 / 200000000000000000 : ℚ), (77900000000000003 / 100000000000000000 : ℚ)⟩
  r := (9521814198411 / 20000000000000 : ℚ)
  w := (840152940267 / 625000000000 : ℚ)
  center := (311577094972067049 / 400000000000000000 : ℚ)
  supportValue := (25357567937275577 / 100000000000000000 : ℚ)
  supportSlope := (-54912430993669 / 78125000000000 : ℚ)
  oldCenter := (25357567937275577 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1797
  oldLo := (507 / 2000 : ℚ)
  oldHi := (127 / 500 : ℚ)
  oldPieces := [piece_652]
}

noncomputable def cell_12858 : Cell := { cellDefaults with
  domain := ⟨(77900000000000003 / 100000000000000000 : ℚ), (311650000000000017 / 400000000000000000 : ℚ)⟩
  r := (23795457682951 / 50000000000000 : ℚ)
  w := (3360730757647 / 2500000000000 : ℚ)
  center := (623250000000000029 / 800000000000000000 : ℚ)
  supportValue := (2536372470270519 / 10000000000000000 : ℚ)
  supportSlope := (-878894432876277 / 1250000000000000 : ℚ)
  oldCenter := (2536372470270519 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1798
  oldLo := (507 / 2000 : ℚ)
  oldHi := (127 / 500 : ℚ)
  oldPieces := [piece_652]
}

noncomputable def cell_12859 : Cell := { cellDefaults with
  domain := ⟨(311650000000000017 / 400000000000000000 : ℚ), (155850000000000011 / 200000000000000000 : ℚ)⟩
  r := (23795457682951 / 50000000000000 : ℚ)
  w := (3360730757647 / 2500000000000 : ℚ)
  center := (623350000000000039 / 800000000000000000 : ℚ)
  supportValue := (633873500514453 / 2500000000000000 : ℚ)
  supportSlope := (-7024338727070053 / 10000000000000000 : ℚ)
  oldCenter := (633873500514453 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1798
  oldLo := (507 / 2000 : ℚ)
  oldHi := (127 / 500 : ℚ)
  oldPieces := [piece_652]
}

noncomputable def cell_12860 : Cell := { cellDefaults with
  domain := ⟨(155850000000000011 / 200000000000000000 : ℚ), (311750000000000027 / 400000000000000000 : ℚ)⟩
  r := (23795457682951 / 50000000000000 : ℚ)
  w := (3360730757647 / 2500000000000 : ℚ)
  center := (623450000000000049 / 800000000000000000 : ℚ)
  supportValue := (12673087495804697 / 50000000000000000 : ℚ)
  supportSlope := (-7028810362167811 / 10000000000000000 : ℚ)
  oldCenter := (12673087495804697 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1798
  oldLo := (25335195530726257 / 100000000000000000 : ℚ)
  oldHi := (127 / 500 : ℚ)
  oldPieces := [piece_651, piece_652]
}

noncomputable def cell_12861 : Cell := { cellDefaults with
  domain := ⟨(311750000000000027 / 400000000000000000 : ℚ), (9743750000000001 / 12500000000000000 : ℚ)⟩
  r := (23795457682951 / 50000000000000 : ℚ)
  w := (3360730757647 / 2500000000000 : ℚ)
  center := (623550000000000059 / 800000000000000000 : ℚ)
  supportValue := (1013495694128423 / 4000000000000000 : ℚ)
  supportSlope := (-351210275653067 / 500000000000000 : ℚ)
  oldCenter := (1013495694128423 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1798
  oldLo := (253 / 1000 : ℚ)
  oldHi := (507 / 2000 : ℚ)
  oldPieces := [piece_650, piece_651]
}

noncomputable def cell_12862 : Cell := { cellDefaults with
  domain := ⟨(9743750000000001 / 12500000000000000 : ℚ), (311850000000000027 / 400000000000000000 : ℚ)⟩
  r := (47572773311247 / 100000000000000 : ℚ)
  w := (13443396981501 / 10000000000000 : ℚ)
  center := (623650000000000059 / 800000000000000000 : ℚ)
  supportValue := (1583947866527469 / 6250000000000000 : ℚ)
  supportSlope := (-3512395032659117 / 5000000000000000 : ℚ)
  oldCenter := (1583947866527469 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1799
  oldLo := (25335195530726257 / 100000000000000000 : ℚ)
  oldHi := (507 / 2000 : ℚ)
  oldPieces := [piece_651]
}

noncomputable def cell_12863 : Cell := { cellDefaults with
  domain := ⟨(311850000000000027 / 400000000000000000 : ℚ), (155950000000000011 / 200000000000000000 : ℚ)⟩
  r := (47572773311247 / 100000000000000 : ℚ)
  w := (13443396981501 / 10000000000000 : ℚ)
  center := (623750000000000049 / 800000000000000000 : ℚ)
  supportValue := (12667203101141303 / 50000000000000000 : ℚ)
  supportSlope := (-438843547700451 / 625000000000000 : ℚ)
  oldCenter := (12667203101141303 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1799
  oldLo := (253 / 1000 : ℚ)
  oldHi := (507 / 2000 : ℚ)
  oldPieces := [piece_650, piece_651]
}

noncomputable def cell_12864 : Cell := { cellDefaults with
  domain := ⟨(155950000000000011 / 200000000000000000 : ℚ), (311950000000000017 / 400000000000000000 : ℚ)⟩
  r := (47572773311247 / 100000000000000 : ℚ)
  w := (13443396981501 / 10000000000000 : ℚ)
  center := (623850000000000039 / 800000000000000000 : ℚ)
  supportValue := (2532561294673831 / 10000000000000000 : ℚ)
  supportSlope := (-7016791818515591 / 10000000000000000 : ℚ)
  oldCenter := (2532561294673831 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1799
  oldLo := (253 / 1000 : ℚ)
  oldHi := (25335195530726257 / 100000000000000000 : ℚ)
  oldPieces := [piece_650]
}

noncomputable def cell_12865 : Cell := { cellDefaults with
  domain := ⟨(311950000000000017 / 400000000000000000 : ℚ), (78000000000000003 / 100000000000000000 : ℚ)⟩
  r := (47572773311247 / 100000000000000 : ℚ)
  w := (13443396981501 / 10000000000000 : ℚ)
  center := (623950000000000029 / 800000000000000000 : ℚ)
  supportValue := (6329211618416461 / 25000000000000000 : ℚ)
  supportSlope := (-3504784328529981 / 5000000000000000 : ℚ)
  oldCenter := (6329211618416461 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1799
  oldLo := (253 / 1000 : ℚ)
  oldHi := (25335195530726257 / 100000000000000000 : ℚ)
  oldPieces := [piece_650]
}

noncomputable def cell_12866 : Cell := { cellDefaults with
  domain := ⟨(78000000000000003 / 100000000000000000 : ℚ), (312050000000000017 / 400000000000000000 : ℚ)⟩
  r := (47554661839587 / 100000000000000 : ℚ)
  w := (6721949159277 / 5000000000000 : ℚ)
  center := (624050000000000029 / 800000000000000000 : ℚ)
  supportValue := (12661289445101337 / 50000000000000000 : ℚ)
  supportSlope := (-43824261385157 / 62500000000000 : ℚ)
  oldCenter := (12661289445101337 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1800
  oldLo := (253 / 1000 : ℚ)
  oldHi := (25335195530726257 / 100000000000000000 : ℚ)
  oldPieces := [piece_650]
}

noncomputable def cell_12867 : Cell := { cellDefaults with
  domain := ⟨(312050000000000017 / 400000000000000000 : ℚ), (156050000000000011 / 200000000000000000 : ℚ)⟩
  r := (47554661839587 / 100000000000000 : ℚ)
  w := (6721949159277 / 5000000000000 : ℚ)
  center := (624150000000000039 / 800000000000000000 : ℚ)
  supportValue := (6328454636177129 / 25000000000000000 : ℚ)
  supportSlope := (-700467450601857 / 1000000000000000 : ℚ)
  oldCenter := (6328454636177129 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1800
  oldLo := (253 / 1000 : ℚ)
  oldHi := (25335195530726257 / 100000000000000000 : ℚ)
  oldPieces := [piece_650]
}

noncomputable def cell_12868 : Cell := { cellDefaults with
  domain := ⟨(156050000000000011 / 200000000000000000 : ℚ), (312150000000000027 / 400000000000000000 : ℚ)⟩
  r := (47554661839587 / 100000000000000 : ℚ)
  w := (6721949159277 / 5000000000000 : ℚ)
  center := (624250000000000049 / 800000000000000000 : ℚ)
  supportValue := (5061013437807631 / 20000000000000000 : ℚ)
  supportSlope := (-349874902878487 / 500000000000000 : ℚ)
  oldCenter := (5061013437807631 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1800
  oldLo := (253 / 1000 : ℚ)
  oldHi := (25335195530726257 / 100000000000000000 : ℚ)
  oldPieces := [piece_650]
}

noncomputable def cell_12869 : Cell := { cellDefaults with
  domain := ⟨(312150000000000027 / 400000000000000000 : ℚ), (9756250000000001 / 12500000000000000 : ℚ)⟩
  r := (47554661839587 / 100000000000000 : ℚ)
  w := (6721949159277 / 5000000000000 : ℚ)
  center := (624350000000000059 / 800000000000000000 : ℚ)
  supportValue := (252963362072813 / 1000000000000000 : ℚ)
  supportSlope := (-3500662425927819 / 5000000000000000 : ℚ)
  oldCenter := (252963362072813 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1800
  oldHi := (25335195530726257 / 100000000000000000 : ℚ)
  oldPieces := [piece_649, piece_650]
}

noncomputable def cell_12870 : Cell := { cellDefaults with
  domain := ⟨(9756250000000001 / 12500000000000000 : ℚ), (312250000000000027 / 400000000000000000 : ℚ)⟩
  r := (23768285998981 / 50000000000000 : ℚ)
  w := (6722206346017 / 5000000000000 : ℚ)
  center := (624450000000000059 / 800000000000000000 : ℚ)
  supportValue := (506040778134017 / 2000000000000000 : ℚ)
  supportSlope := (-21861964852351 / 31250000000000 : ℚ)
  oldCenter := (506040778134017 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1801
  oldHi := (25335195530726257 / 100000000000000000 : ℚ)
  oldPieces := [piece_649, piece_650]
}

noncomputable def cell_12871 : Cell := { cellDefaults with
  domain := ⟨(312250000000000027 / 400000000000000000 : ℚ), (156150000000000011 / 200000000000000000 : ℚ)⟩
  r := (23768285998981 / 50000000000000 : ℚ)
  w := (6722206346017 / 5000000000000 : ℚ)
  center := (624550000000000049 / 800000000000000000 : ℚ)
  supportValue := (632331835769903 / 2500000000000000 : ℚ)
  supportSlope := (-3498678581719611 / 5000000000000000 : ℚ)
  oldCenter := (632331835769903 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1801
  oldHi := (253 / 1000 : ℚ)
  oldPieces := [piece_649]
}

noncomputable def cell_12872 : Cell := { cellDefaults with
  domain := ⟨(156150000000000011 / 200000000000000000 : ℚ), (312350000000000017 / 400000000000000000 : ℚ)⟩
  r := (23768285998981 / 50000000000000 : ℚ)
  w := (6722206346017 / 5000000000000 : ℚ)
  center := (624650000000000039 / 800000000000000000 : ℚ)
  supportValue := (12642265615646617 / 50000000000000000 : ℚ)
  supportSlope := (-6990165572312167 / 10000000000000000 : ℚ)
  oldCenter := (12642265615646617 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1801
  oldHi := (253 / 1000 : ℚ)
  oldPieces := [piece_649]
}

noncomputable def cell_12873 : Cell := { cellDefaults with
  domain := ⟨(312350000000000017 / 400000000000000000 : ℚ), (78100000000000003 / 100000000000000000 : ℚ)⟩
  r := (23768285998981 / 50000000000000 : ℚ)
  w := (6722206346017 / 5000000000000 : ℚ)
  center := (624750000000000029 / 800000000000000000 : ℚ)
  supportValue := (12637899000997477 / 50000000000000000 : ℚ)
  supportSlope := (-13966009580281 / 20000000000000 : ℚ)
  oldCenter := (12637899000997477 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1801
  oldHi := (253 / 1000 : ℚ)
  oldPieces := [piece_649]
}

noncomputable def cell_12874 : Cell := { cellDefaults with
  domain := ⟨(78100000000000003 / 100000000000000000 : ℚ), (312450000000000017 / 400000000000000000 : ℚ)⟩
  r := (5939813133761 / 12500000000000 : ℚ)
  w := (13444940108867 / 10000000000000 : ℚ)
  center := (624850000000000029 / 800000000000000000 : ℚ)
  supportValue := (25281467040783207 / 100000000000000000 : ℚ)
  supportSlope := (-3492630792858093 / 5000000000000000 : ℚ)
  oldCenter := (25281467040783207 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1802
  oldHi := (253 / 1000 : ℚ)
  oldPieces := [piece_649]
}

noncomputable def cell_12875 : Cell := { cellDefaults with
  domain := ⟨(312450000000000017 / 400000000000000000 : ℚ), (156250000000000011 / 200000000000000000 : ℚ)⟩
  r := (5939813133761 / 12500000000000 : ℚ)
  w := (13444940108867 / 10000000000000 : ℚ)
  center := (624950000000000039 / 800000000000000000 : ℚ)
  supportValue := (25272739931637567 / 100000000000000000 : ℚ)
  supportSlope := (-1395623302009457 / 2000000000000000 : ℚ)
  oldCenter := (25272739931637567 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1802
  oldHi := (253 / 1000 : ℚ)
  oldPieces := [piece_649]
}

noncomputable def cell_12876 : Cell := { cellDefaults with
  domain := ⟨(156250000000000011 / 200000000000000000 : ℚ), (312550000000000027 / 400000000000000000 : ℚ)⟩
  r := (5939813133761 / 12500000000000 : ℚ)
  w := (13444940108867 / 10000000000000 : ℚ)
  center := (625050000000000049 / 800000000000000000 : ℚ)
  supportValue := (5052804346948151 / 20000000000000000 : ℚ)
  supportSlope := (-3485500971160611 / 5000000000000000 : ℚ)
  oldCenter := (5052804346948151 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1802
  oldHi := (253 / 1000 : ℚ)
  oldPieces := [piece_649]
}

noncomputable def cell_12877 : Cell := { cellDefaults with
  domain := ⟨(312550000000000027 / 400000000000000000 : ℚ), (9768750000000001 / 12500000000000000 : ℚ)⟩
  r := (5939813133761 / 12500000000000 : ℚ)
  w := (13444940108867 / 10000000000000 : ℚ)
  center := (625150000000000059 / 800000000000000000 : ℚ)
  supportValue := (2525531241208147 / 10000000000000000 : ℚ)
  supportSlope := (-6963917685211399 / 10000000000000000 : ℚ)
  oldCenter := (2525531241208147 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1802
  oldHi := (253 / 1000 : ℚ)
  oldPieces := [piece_649]
}

noncomputable def cell_12878 : Cell := { cellDefaults with
  domain := ⟨(9768750000000001 / 12500000000000000 : ℚ), (312650000000000027 / 400000000000000000 : ℚ)⟩
  r := (47500467638431 / 100000000000000 : ℚ)
  w := (6722748286067 / 5000000000000 : ℚ)
  center := (625250000000000059 / 800000000000000000 : ℚ)
  supportValue := (25260916490897567 / 100000000000000000 : ℚ)
  supportSlope := (-870762121474387 / 1250000000000000 : ℚ)
  oldCenter := (25260916490897567 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1803
  oldHi := (253 / 1000 : ℚ)
  oldPieces := [piece_649]
}

noncomputable def cell_12879 : Cell := { cellDefaults with
  domain := ⟨(312650000000000027 / 400000000000000000 : ℚ), (156350000000000011 / 200000000000000000 : ℚ)⟩
  r := (47500467638431 / 100000000000000 : ℚ)
  w := (6722748286067 / 5000000000000 : ℚ)
  center := (625350000000000049 / 800000000000000000 : ℚ)
  supportValue := (12626115483103473 / 50000000000000000 : ℚ)
  supportSlope := (-6961928985172591 / 10000000000000000 : ℚ)
  oldCenter := (12626115483103473 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1803
  oldLo := (63 / 250 : ℚ)
  oldHi := (253 / 1000 : ℚ)
  oldPieces := [piece_648, piece_649]
}

noncomputable def cell_12880 : Cell := { cellDefaults with
  domain := ⟨(156350000000000011 / 200000000000000000 : ℚ), (312750000000000017 / 400000000000000000 : ℚ)⟩
  r := (47500467638431 / 100000000000000 : ℚ)
  w := (6722748286067 / 5000000000000 : ℚ)
  center := (625450000000000039 / 800000000000000000 : ℚ)
  supportValue := (1262175397629611 / 5000000000000000 : ℚ)
  supportSlope := (-3481840229735759 / 5000000000000000 : ℚ)
  oldCenter := (1262175397629611 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1803
  oldLo := (63 / 250 : ℚ)
  oldPieces := [piece_648]
}

noncomputable def cell_12881 : Cell := { cellDefaults with
  domain := ⟨(312750000000000017 / 400000000000000000 : ℚ), (78200000000000003 / 100000000000000000 : ℚ)⟩
  r := (47500467638431 / 100000000000000 : ℚ)
  w := (6722748286067 / 5000000000000 : ℚ)
  center := (625550000000000029 / 800000000000000000 : ℚ)
  supportValue := (2523480781574221 / 10000000000000000 : ℚ)
  supportSlope := (-1739135496610263 / 2500000000000000 : ℚ)
  oldCenter := (2523480781574221 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1803
  oldLo := (63 / 250 : ℚ)
  oldPieces := [piece_648]
}

noncomputable def cell_12882 : Cell := { cellDefaults with
  domain := ⟨(78200000000000003 / 100000000000000000 : ℚ), (312850000000000017 / 400000000000000000 : ℚ)⟩
  r := (47482444702689 / 100000000000000 : ℚ)
  w := (420189077181 / 312500000000 : ℚ)
  center := (625650000000000029 / 800000000000000000 : ℚ)
  supportValue := (2524041359353859 / 10000000000000000 : ℚ)
  supportSlope := (-1391753070494633 / 2000000000000000 : ℚ)
  oldCenter := (2524041359353859 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1804
  oldLo := (63 / 250 : ℚ)
  oldPieces := [piece_648]
}

noncomputable def cell_12883 : Cell := { cellDefaults with
  domain := ⟨(312850000000000017 / 400000000000000000 : ℚ), (156450000000000011 / 200000000000000000 : ℚ)⟩
  r := (47482444702689 / 100000000000000 : ℚ)
  w := (420189077181 / 312500000000 : ℚ)
  center := (625750000000000039 / 800000000000000000 : ℚ)
  supportValue := (5046343918136269 / 20000000000000000 : ℚ)
  supportSlope := (-173791067059819 / 250000000000000 : ℚ)
  oldCenter := (5046343918136269 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1804
  oldLo := (63 / 250 : ℚ)
  oldPieces := [piece_648]
}

noncomputable def cell_12884 : Cell := { cellDefaults with
  domain := ⟨(156450000000000011 / 200000000000000000 : ℚ), (312950000000000027 / 400000000000000000 : ℚ)⟩
  r := (47482444702689 / 100000000000000 : ℚ)
  w := (420189077181 / 312500000000 : ℚ)
  center := (625850000000000049 / 800000000000000000 : ℚ)
  supportValue := (504460689442087 / 2000000000000000 : ℚ)
  supportSlope := (-868068807354707 / 1250000000000000 : ℚ)
  oldCenter := (504460689442087 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1804
  oldLo := (63 / 250 : ℚ)
  oldPieces := [piece_648]
}

noncomputable def cell_12885 : Cell := { cellDefaults with
  domain := ⟨(312950000000000027 / 400000000000000000 : ℚ), (9781250000000001 / 12500000000000000 : ℚ)⟩
  r := (47482444702689 / 100000000000000 : ℚ)
  w := (420189077181 / 312500000000 : ℚ)
  center := (625950000000000059 / 800000000000000000 : ℚ)
  supportValue := (2521435819987293 / 10000000000000000 : ℚ)
  supportSlope := (-6937488484712179 / 10000000000000000 : ℚ)
  oldCenter := (2521435819987293 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1804
  oldLo := (63 / 250 : ℚ)
  oldPieces := [piece_648]
}

noncomputable def cell_12886 : Cell := { cellDefaults with
  domain := ⟨(9781250000000001 / 12500000000000000 : ℚ), (313050000000000027 / 400000000000000000 : ℚ)⟩
  r := (23732226847873 / 50000000000000 : ℚ)
  w := (210103703173 / 156250000000 : ℚ)
  center := (626050000000000059 / 800000000000000000 : ℚ)
  supportValue := (1260994607304231 / 5000000000000000 : ℚ)
  supportSlope := (-6939629641574269 / 10000000000000000 : ℚ)
  oldCenter := (1260994607304231 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1805
  oldLo := (63 / 250 : ℚ)
  oldPieces := [piece_648]
}

noncomputable def cell_12887 : Cell := { cellDefaults with
  domain := ⟨(313050000000000027 / 400000000000000000 : ℚ), (156550000000000011 / 200000000000000000 : ℚ)⟩
  r := (23732226847873 / 50000000000000 : ℚ)
  w := (210103703173 / 156250000000 : ℚ)
  center := (626150000000000049 / 800000000000000000 : ℚ)
  supportValue := (12605611007506057 / 50000000000000000 : ℚ)
  supportSlope := (-6932583425314913 / 10000000000000000 : ℚ)
  oldCenter := (12605611007506057 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1805
  oldLo := (63 / 250 : ℚ)
  oldPieces := [piece_648]
}

noncomputable def cell_12888 : Cell := { cellDefaults with
  domain := ⟨(156550000000000011 / 200000000000000000 : ℚ), (313150000000000017 / 400000000000000000 : ℚ)⟩
  r := (23732226847873 / 50000000000000 : ℚ)
  w := (210103703173 / 156250000000 : ℚ)
  center := (626250000000000039 / 800000000000000000 : ℚ)
  supportValue := (252025783147487 / 1000000000000000 : ℚ)
  supportSlope := (-865995375903903 / 1250000000000000 : ℚ)
  oldCenter := (252025783147487 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1805
  oldLo := (503 / 2000 : ℚ)
  oldPieces := [piece_647, piece_648]
}

noncomputable def cell_12889 : Cell := { cellDefaults with
  domain := ⟨(313150000000000017 / 400000000000000000 : ℚ), (78300000000000003 / 100000000000000000 : ℚ)⟩
  r := (23732226847873 / 50000000000000 : ℚ)
  w := (210103703173 / 156250000000 : ℚ)
  center := (626350000000000029 / 800000000000000000 : ℚ)
  supportValue := (25193897812830507 / 100000000000000000 : ℚ)
  supportSlope := (-3465094377550839 / 5000000000000000 : ℚ)
  oldCenter := (25193897812830507 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1805
  oldLo := (503 / 2000 : ℚ)
  oldHi := (63 / 250 : ℚ)
  oldPieces := [piece_647]
}

noncomputable def cell_12890 : Cell := { cellDefaults with
  domain := ⟨(78300000000000003 / 100000000000000000 : ℚ), (156625000000000009 / 200000000000000000 : ℚ)⟩
  r := (4744648163343 / 10000000000000 : ℚ)
  w := (13447230195497 / 10000000000000 : ℚ)
  center := (62645000000000003 / 80000000000000000 : ℚ)
  supportValue := (2519943444092079 / 10000000000000000 : ℚ)
  supportSlope := (-3463649223664629 / 5000000000000000 : ℚ)
  oldCenter := (2519943444092079 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1806
  oldLo := (503 / 2000 : ℚ)
  oldPieces := [piece_647, piece_648]
}

noncomputable def cell_12891 : Cell := { cellDefaults with
  domain := ⟨(156625000000000009 / 200000000000000000 : ℚ), (39162500000000003 / 50000000000000000 : ℚ)⟩
  r := (4744648163343 / 10000000000000 : ℚ)
  w := (13447230195497 / 10000000000000 : ℚ)
  center := (313275000000000021 / 400000000000000000 : ℚ)
  supportValue := (503815115793107 / 2000000000000000 : ℚ)
  supportSlope := (-3462630941743623 / 5000000000000000 : ℚ)
  oldCenter := (503815115793107 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1806
  oldLo := (503 / 2000 : ℚ)
  oldHi := (63 / 250 : ℚ)
  oldPieces := [piece_647]
}

noncomputable def cell_12892 : Cell := { cellDefaults with
  domain := ⟨(39162500000000003 / 50000000000000000 : ℚ), (31335000000000003 / 40000000000000000 : ℚ)⟩
  r := (4744648163343 / 10000000000000 : ℚ)
  w := (13447230195497 / 10000000000000 : ℚ)
  center := (313325000000000027 / 400000000000000000 : ℚ)
  supportValue := (314776295399261 / 1250000000000000 : ℚ)
  supportSlope := (-216193558580909 / 312500000000000 : ℚ)
  oldCenter := (314776295399261 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1806
  oldLo := (503 / 2000 : ℚ)
  oldHi := (63 / 250 : ℚ)
  oldPieces := [piece_647]
}

noncomputable def cell_12893 : Cell := { cellDefaults with
  domain := ⟨(31335000000000003 / 40000000000000000 : ℚ), (78350000000000009 / 100000000000000000 : ℚ)⟩
  r := (4744648163343 / 10000000000000 : ℚ)
  w := (13447230195497 / 10000000000000 : ℚ)
  center := (313375000000000033 / 400000000000000000 : ℚ)
  supportValue := (157334126814693 / 625000000000000 : ℚ)
  supportSlope := (-3455578019830459 / 5000000000000000 : ℚ)
  oldCenter := (157334126814693 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1806
  oldLo := (503 / 2000 : ℚ)
  oldHi := (63 / 250 : ℚ)
  oldPieces := [piece_647]
}

noncomputable def cell_12894 : Cell := { cellDefaults with
  domain := ⟨(78350000000000009 / 100000000000000000 : ℚ), (31345000000000003 / 40000000000000000 : ℚ)⟩
  r := (23714267205171 / 50000000000000 : ℚ)
  w := (6723921243579 / 5000000000000 : ℚ)
  center := (313425000000000033 / 400000000000000000 : ℚ)
  supportValue := (1258946629922141 / 5000000000000000 : ℚ)
  supportSlope := (-691326373436579 / 1000000000000000 : ℚ)
  oldCenter := (1258946629922141 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1807
  oldLo := (503 / 2000 : ℚ)
  oldHi := (63 / 250 : ℚ)
  oldPieces := [piece_647]
}

noncomputable def cell_12895 : Cell := { cellDefaults with
  domain := ⟨(31345000000000003 / 40000000000000000 : ℚ), (39187500000000003 / 50000000000000000 : ℚ)⟩
  r := (23714267205171 / 50000000000000 : ℚ)
  w := (6723921243579 / 5000000000000 : ℚ)
  center := (313475000000000027 / 400000000000000000 : ℚ)
  supportValue := (12585147704796257 / 50000000000000000 : ℚ)
  supportSlope := (-6906241773814987 / 10000000000000000 : ℚ)
  oldCenter := (12585147704796257 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1807
  oldLo := (503 / 2000 : ℚ)
  oldHi := (63 / 250 : ℚ)
  oldPieces := [piece_647]
}

noncomputable def cell_12896 : Cell := { cellDefaults with
  domain := ⟨(39187500000000003 / 50000000000000000 : ℚ), (156775000000000009 / 200000000000000000 : ℚ)⟩
  r := (23714267205171 / 50000000000000 : ℚ)
  w := (6723921243579 / 5000000000000 : ℚ)
  center := (313525000000000021 / 400000000000000000 : ℚ)
  supportValue := (12580833489745963 / 50000000000000000 : ℚ)
  supportSlope := (-3449624845371227 / 5000000000000000 : ℚ)
  oldCenter := (12580833489745963 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1807
  oldLo := (503 / 2000 : ℚ)
  oldHi := (63 / 250 : ℚ)
  oldPieces := [piece_647]
}

noncomputable def cell_12897 : Cell := { cellDefaults with
  domain := ⟨(156775000000000009 / 200000000000000000 : ℚ), (78400000000000003 / 100000000000000000 : ℚ)⟩
  r := (23714267205171 / 50000000000000 : ℚ)
  w := (6723921243579 / 5000000000000 : ℚ)
  center := (62715000000000003 / 80000000000000000 : ℚ)
  supportValue := (25153064878042447 / 100000000000000000 : ℚ)
  supportSlope := (-6893991697510531 / 10000000000000000 : ℚ)
  oldCenter := (25153064878042447 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1807
  oldLo := (251 / 1000 : ℚ)
  oldHi := (63 / 250 : ℚ)
  oldPieces := [piece_646, piece_647]
}

noncomputable def cell_12898 : Cell := { cellDefaults with
  domain := ⟨(78400000000000003 / 100000000000000000 : ℚ), (156830167597765353 / 200000000000000000 : ℚ)⟩
  r := (23705308212617 / 50000000000000 : ℚ)
  w := (1681060112077 / 1250000000000 : ℚ)
  center := (313630167597765359 / 400000000000000000 : ℚ)
  supportValue := (6289392259517411 / 25000000000000000 : ℚ)
  supportSlope := (-6893604016301237 / 10000000000000000 : ℚ)
  oldCenter := (6289392259517411 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1808
  oldLo := (503 / 2000 : ℚ)
  oldHi := (63 / 250 : ℚ)
  oldPieces := [piece_647]
}

noncomputable def cell_12899 : Cell := { cellDefaults with
  domain := ⟨(156830167597765353 / 200000000000000000 : ℚ), (1568603351955307 / 2000000000000000 : ℚ)⟩
  r := (23705308212617 / 50000000000000 : ℚ)
  w := (1681060112077 / 1250000000000 : ℚ)
  center := (313690502793296053 / 400000000000000000 : ℚ)
  supportValue := (3143398754149733 / 12500000000000000 : ℚ)
  supportSlope := (-6894138425216629 / 10000000000000000 : ℚ)
  oldCenter := (3143398754149733 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1808
  oldLo := (251 / 1000 : ℚ)
  oldHi := (63 / 250 : ℚ)
  oldPieces := [piece_646, piece_647]
}

theorem check_12850 : cell_12850.check = true := by
  decide +kernel

theorem check_12851 : cell_12851.check = true := by
  decide +kernel

theorem check_12852 : cell_12852.check = true := by
  decide +kernel

theorem check_12853 : cell_12853.check = true := by
  decide +kernel

theorem check_12854 : cell_12854.check = true := by
  decide +kernel

theorem check_12855 : cell_12855.check = true := by
  decide +kernel

theorem check_12856 : cell_12856.check = true := by
  decide +kernel

theorem check_12857 : cell_12857.check = true := by
  decide +kernel

theorem check_12858 : cell_12858.check = true := by
  decide +kernel

theorem check_12859 : cell_12859.check = true := by
  decide +kernel

theorem check_12860 : cell_12860.check = true := by
  decide +kernel

theorem check_12861 : cell_12861.check = true := by
  decide +kernel

theorem check_12862 : cell_12862.check = true := by
  decide +kernel

theorem check_12863 : cell_12863.check = true := by
  decide +kernel

theorem check_12864 : cell_12864.check = true := by
  decide +kernel

theorem check_12865 : cell_12865.check = true := by
  decide +kernel

theorem check_12866 : cell_12866.check = true := by
  decide +kernel

theorem check_12867 : cell_12867.check = true := by
  decide +kernel

theorem check_12868 : cell_12868.check = true := by
  decide +kernel

theorem check_12869 : cell_12869.check = true := by
  decide +kernel

theorem check_12870 : cell_12870.check = true := by
  decide +kernel

theorem check_12871 : cell_12871.check = true := by
  decide +kernel

theorem check_12872 : cell_12872.check = true := by
  decide +kernel

theorem check_12873 : cell_12873.check = true := by
  decide +kernel

theorem check_12874 : cell_12874.check = true := by
  decide +kernel

theorem check_12875 : cell_12875.check = true := by
  decide +kernel

theorem check_12876 : cell_12876.check = true := by
  decide +kernel

theorem check_12877 : cell_12877.check = true := by
  decide +kernel

theorem check_12878 : cell_12878.check = true := by
  decide +kernel

theorem check_12879 : cell_12879.check = true := by
  decide +kernel

theorem check_12880 : cell_12880.check = true := by
  decide +kernel

theorem check_12881 : cell_12881.check = true := by
  decide +kernel

theorem check_12882 : cell_12882.check = true := by
  decide +kernel

theorem check_12883 : cell_12883.check = true := by
  decide +kernel

theorem check_12884 : cell_12884.check = true := by
  decide +kernel

theorem check_12885 : cell_12885.check = true := by
  decide +kernel

theorem check_12886 : cell_12886.check = true := by
  decide +kernel

theorem check_12887 : cell_12887.check = true := by
  decide +kernel

theorem check_12888 : cell_12888.check = true := by
  decide +kernel

theorem check_12889 : cell_12889.check = true := by
  decide +kernel

theorem check_12890 : cell_12890.check = true := by
  decide +kernel

theorem check_12891 : cell_12891.check = true := by
  decide +kernel

theorem check_12892 : cell_12892.check = true := by
  decide +kernel

theorem check_12893 : cell_12893.check = true := by
  decide +kernel

theorem check_12894 : cell_12894.check = true := by
  decide +kernel

theorem check_12895 : cell_12895.check = true := by
  decide +kernel

theorem check_12896 : cell_12896.check = true := by
  decide +kernel

theorem check_12897 : cell_12897.check = true := by
  decide +kernel

theorem check_12898 : cell_12898.check = true := by
  decide +kernel

theorem check_12899 : cell_12899.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12850, cell_12851, cell_12852, cell_12853, cell_12854, cell_12855, cell_12856, cell_12857, cell_12858, cell_12859, cell_12860, cell_12861, cell_12862, cell_12863, cell_12864, cell_12865, cell_12866, cell_12867, cell_12868, cell_12869, cell_12870, cell_12871, cell_12872, cell_12873, cell_12874, cell_12875, cell_12876, cell_12877, cell_12878, cell_12879, cell_12880, cell_12881, cell_12882, cell_12883, cell_12884, cell_12885, cell_12886, cell_12887, cell_12888, cell_12889, cell_12890, cell_12891, cell_12892, cell_12893, cell_12894, cell_12895, cell_12896, cell_12897, cell_12898, cell_12899]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12850, check_12851, check_12852, check_12853, check_12854, check_12855, check_12856, check_12857, check_12858, check_12859, check_12860, check_12861, check_12862, check_12863, check_12864, check_12865, check_12866, check_12867, check_12868, check_12869, check_12870, check_12871, check_12872, check_12873, check_12874, check_12875, check_12876, check_12877, check_12878, check_12879, check_12880, check_12881, check_12882, check_12883, check_12884, check_12885, check_12886, check_12887, check_12888, check_12889, check_12890, check_12891, check_12892, check_12893, check_12894, check_12895, check_12896, check_12897, check_12898, check_12899, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0257

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0257
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0257
open AnalyticBounds.ExpressionCertificate

theorem linked_12850 : Linked cell_12850 pieces := by
  link_source cell_12850 with piece_1795 using piece_1795_mem, piece_653_mem

theorem linked_12851 : Linked cell_12851 pieces := by
  link_source cell_12851 with piece_1795 using piece_1795_mem, ⟨piece_652_mem, piece_653_mem⟩

theorem linked_12852 : Linked cell_12852 pieces := by
  link_source cell_12852 with piece_1795 using piece_1795_mem, piece_652_mem

theorem linked_12853 : Linked cell_12853 pieces := by
  link_source cell_12853 with piece_1795 using piece_1795_mem, piece_652_mem

theorem linked_12854 : Linked cell_12854 pieces := by
  link_source cell_12854 with piece_1796 using piece_1796_mem, piece_652_mem

theorem linked_12855 : Linked cell_12855 pieces := by
  link_source cell_12855 with piece_1796 using piece_1796_mem, piece_652_mem

theorem linked_12856 : Linked cell_12856 pieces := by
  link_source cell_12856 with piece_1797 using piece_1797_mem, piece_652_mem

theorem linked_12857 : Linked cell_12857 pieces := by
  link_source cell_12857 with piece_1797 using piece_1797_mem, piece_652_mem

theorem linked_12858 : Linked cell_12858 pieces := by
  link_source cell_12858 with piece_1798 using piece_1798_mem, piece_652_mem

theorem linked_12859 : Linked cell_12859 pieces := by
  link_source cell_12859 with piece_1798 using piece_1798_mem, piece_652_mem

theorem linked_12860 : Linked cell_12860 pieces := by
  link_source cell_12860 with piece_1798 using piece_1798_mem, ⟨piece_651_mem, piece_652_mem⟩

theorem linked_12861 : Linked cell_12861 pieces := by
  link_source cell_12861 with piece_1798 using piece_1798_mem, ⟨piece_650_mem, piece_651_mem⟩

theorem linked_12862 : Linked cell_12862 pieces := by
  link_source cell_12862 with piece_1799 using piece_1799_mem, piece_651_mem

theorem linked_12863 : Linked cell_12863 pieces := by
  link_source cell_12863 with piece_1799 using piece_1799_mem, ⟨piece_650_mem, piece_651_mem⟩

theorem linked_12864 : Linked cell_12864 pieces := by
  link_source cell_12864 with piece_1799 using piece_1799_mem, piece_650_mem

theorem linked_12865 : Linked cell_12865 pieces := by
  link_source cell_12865 with piece_1799 using piece_1799_mem, piece_650_mem

theorem linked_12866 : Linked cell_12866 pieces := by
  link_source cell_12866 with piece_1800 using piece_1800_mem, piece_650_mem

theorem linked_12867 : Linked cell_12867 pieces := by
  link_source cell_12867 with piece_1800 using piece_1800_mem, piece_650_mem

theorem linked_12868 : Linked cell_12868 pieces := by
  link_source cell_12868 with piece_1800 using piece_1800_mem, piece_650_mem

theorem linked_12869 : Linked cell_12869 pieces := by
  link_source cell_12869 with piece_1800 using piece_1800_mem, ⟨piece_649_mem, piece_650_mem⟩

theorem linked_12870 : Linked cell_12870 pieces := by
  link_source cell_12870 with piece_1801 using piece_1801_mem, ⟨piece_649_mem, piece_650_mem⟩

theorem linked_12871 : Linked cell_12871 pieces := by
  link_source cell_12871 with piece_1801 using piece_1801_mem, piece_649_mem

theorem linked_12872 : Linked cell_12872 pieces := by
  link_source cell_12872 with piece_1801 using piece_1801_mem, piece_649_mem

theorem linked_12873 : Linked cell_12873 pieces := by
  link_source cell_12873 with piece_1801 using piece_1801_mem, piece_649_mem

theorem linked_12874 : Linked cell_12874 pieces := by
  link_source cell_12874 with piece_1802 using piece_1802_mem, piece_649_mem

theorem linked_12875 : Linked cell_12875 pieces := by
  link_source cell_12875 with piece_1802 using piece_1802_mem, piece_649_mem

theorem linked_12876 : Linked cell_12876 pieces := by
  link_source cell_12876 with piece_1802 using piece_1802_mem, piece_649_mem

theorem linked_12877 : Linked cell_12877 pieces := by
  link_source cell_12877 with piece_1802 using piece_1802_mem, piece_649_mem

theorem linked_12878 : Linked cell_12878 pieces := by
  link_source cell_12878 with piece_1803 using piece_1803_mem, piece_649_mem

theorem linked_12879 : Linked cell_12879 pieces := by
  link_source cell_12879 with piece_1803 using piece_1803_mem, ⟨piece_648_mem, piece_649_mem⟩

theorem linked_12880 : Linked cell_12880 pieces := by
  link_source cell_12880 with piece_1803 using piece_1803_mem, piece_648_mem

theorem linked_12881 : Linked cell_12881 pieces := by
  link_source cell_12881 with piece_1803 using piece_1803_mem, piece_648_mem

theorem linked_12882 : Linked cell_12882 pieces := by
  link_source cell_12882 with piece_1804 using piece_1804_mem, piece_648_mem

theorem linked_12883 : Linked cell_12883 pieces := by
  link_source cell_12883 with piece_1804 using piece_1804_mem, piece_648_mem

theorem linked_12884 : Linked cell_12884 pieces := by
  link_source cell_12884 with piece_1804 using piece_1804_mem, piece_648_mem

theorem linked_12885 : Linked cell_12885 pieces := by
  link_source cell_12885 with piece_1804 using piece_1804_mem, piece_648_mem

theorem linked_12886 : Linked cell_12886 pieces := by
  link_source cell_12886 with piece_1805 using piece_1805_mem, piece_648_mem

theorem linked_12887 : Linked cell_12887 pieces := by
  link_source cell_12887 with piece_1805 using piece_1805_mem, piece_648_mem

theorem linked_12888 : Linked cell_12888 pieces := by
  link_source cell_12888 with piece_1805 using piece_1805_mem, ⟨piece_647_mem, piece_648_mem⟩

theorem linked_12889 : Linked cell_12889 pieces := by
  link_source cell_12889 with piece_1805 using piece_1805_mem, piece_647_mem

theorem linked_12890 : Linked cell_12890 pieces := by
  link_source cell_12890 with piece_1806 using piece_1806_mem, ⟨piece_647_mem, piece_648_mem⟩

theorem linked_12891 : Linked cell_12891 pieces := by
  link_source cell_12891 with piece_1806 using piece_1806_mem, piece_647_mem

theorem linked_12892 : Linked cell_12892 pieces := by
  link_source cell_12892 with piece_1806 using piece_1806_mem, piece_647_mem

theorem linked_12893 : Linked cell_12893 pieces := by
  link_source cell_12893 with piece_1806 using piece_1806_mem, piece_647_mem

theorem linked_12894 : Linked cell_12894 pieces := by
  link_source cell_12894 with piece_1807 using piece_1807_mem, piece_647_mem

theorem linked_12895 : Linked cell_12895 pieces := by
  link_source cell_12895 with piece_1807 using piece_1807_mem, piece_647_mem

theorem linked_12896 : Linked cell_12896 pieces := by
  link_source cell_12896 with piece_1807 using piece_1807_mem, piece_647_mem

theorem linked_12897 : Linked cell_12897 pieces := by
  link_source cell_12897 with piece_1807 using piece_1807_mem, ⟨piece_646_mem, piece_647_mem⟩

theorem linked_12898 : Linked cell_12898 pieces := by
  link_source cell_12898 with piece_1808 using piece_1808_mem, piece_647_mem

theorem linked_12899 : Linked cell_12899 pieces := by
  link_source cell_12899 with piece_1808 using piece_1808_mem, ⟨piece_646_mem, piece_647_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0257.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0257.cells,List.forall_mem_cons]
  exact ⟨linked_12850, linked_12851, linked_12852, linked_12853, linked_12854, linked_12855, linked_12856, linked_12857, linked_12858, linked_12859, linked_12860, linked_12861, linked_12862, linked_12863, linked_12864, linked_12865, linked_12866, linked_12867, linked_12868, linked_12869, linked_12870, linked_12871, linked_12872, linked_12873, linked_12874, linked_12875, linked_12876, linked_12877, linked_12878, linked_12879, linked_12880, linked_12881, linked_12882, linked_12883, linked_12884, linked_12885, linked_12886, linked_12887, linked_12888, linked_12889, linked_12890, linked_12891, linked_12892, linked_12893, linked_12894, linked_12895, linked_12896, linked_12897, linked_12898, linked_12899, by simp⟩

theorem covered : covers (38900000000000001 / 50000000000000000 : ℚ) (1568603351955307 / 2000000000000000 : ℚ)
    (SourceCertificates.Chunk0257.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0257
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0258
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(1568603351955307 / 2000000000000000 : ℚ), (78450000000000009 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (23696356651357 / 50000000000000 : ℚ)
  w := (13449118777669 / 10000000000000 : ℚ)
  center := (156880167597765359 / 200000000000000000 : ℚ)
  supportValue := (2513515812615649 / 10000000000000000 : ℚ)
  supportSlope := (-6886973677503829 / 10000000000000000 : ℚ)
  oldCenter := (2513515812615649 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1810
  oldLo := (501 / 2000 : ℚ)
  oldHi := (1 / 4 : ℚ)
  oldPieces := [piece_643]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12900 : Cell := { cellDefaults with
  r := (23705308212617 / 50000000000000 : ℚ)
  w := (1681060112077 / 1250000000000 : ℚ)
  newCoefficients := coefficients_1809
  oldLo := (251 / 1000 : ℚ)
  oldHi := (503 / 2000 : ℚ)
  oldPieces := [piece_646]
}

noncomputable def cell_12901 : Cell := { cellDefaults with
  domain := ⟨(78450000000000009 / 100000000000000000 : ℚ), (31385000000000003 / 40000000000000000 : ℚ)⟩
  center := (313825000000000033 / 400000000000000000 : ℚ)
  supportValue := (2513802684406321 / 10000000000000000 : ℚ)
  supportSlope := (-1721747672354319 / 2500000000000000 : ℚ)
  oldCenter := (2513802684406321 / 10000000000000000 : ℚ)
  oldLo := (251 / 1000 : ℚ)
  oldHi := (503 / 2000 : ℚ)
  oldPieces := [piece_646]
}

noncomputable def cell_12902 : Cell := { cellDefaults with
  domain := ⟨(31385000000000003 / 40000000000000000 : ℚ), (39237500000000003 / 50000000000000000 : ℚ)⟩
  center := (313875000000000027 / 400000000000000000 : ℚ)
  supportValue := (3141177809885027 / 12500000000000000 : ℚ)
  supportSlope := (-1719999155163283 / 2500000000000000 : ℚ)
  oldCenter := (3141177809885027 / 12500000000000000 : ℚ)
  oldLo := (251 / 1000 : ℚ)
  oldHi := (503 / 2000 : ℚ)
  oldPieces := [piece_646]
}

noncomputable def cell_12903 : Cell := { cellDefaults with
  domain := ⟨(39237500000000003 / 50000000000000000 : ℚ), (156975000000000009 / 200000000000000000 : ℚ)⟩
  center := (313925000000000021 / 400000000000000000 : ℚ)
  supportValue := (2512082683804749 / 10000000000000000 : ℚ)
  supportSlope := (-1374606465024351 / 2000000000000000 : ℚ)
  oldCenter := (2512082683804749 / 10000000000000000 : ℚ)
  oldLo := (251 / 1000 : ℚ)
  oldHi := (503 / 2000 : ℚ)
  oldPieces := [piece_646]
}

noncomputable def cell_12904 : Cell := { cellDefaults with
  domain := ⟨(156975000000000009 / 200000000000000000 : ℚ), (78500000000000003 / 100000000000000000 : ℚ)⟩
  center := (62795000000000003 / 80000000000000000 : ℚ)
  supportValue := (2511223988386843 / 10000000000000000 : ℚ)
  supportSlope := (-214565550350513 / 312500000000000 : ℚ)
  oldCenter := (2511223988386843 / 10000000000000000 : ℚ)
  oldLo := (251 / 1000 : ℚ)
  oldHi := (503 / 2000 : ℚ)
  oldPieces := [piece_646]
}

noncomputable def cell_12905 : Cell := { cellDefaults with
  domain := ⟨(78500000000000003 / 100000000000000000 : ℚ), (157025000000000009 / 200000000000000000 : ℚ)⟩
  r := (47374842340163 / 100000000000000 : ℚ)
  w := (13449791089483 / 10000000000000 : ℚ)
  center := (62805000000000003 / 80000000000000000 : ℚ)
  supportValue := (502351539973239 / 2000000000000000 : ℚ)
  supportSlope := (-1373617511544913 / 2000000000000000 : ℚ)
  oldCenter := (502351539973239 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1811
  oldLo := (251 / 1000 : ℚ)
  oldHi := (503 / 2000 : ℚ)
  oldPieces := [piece_646]
}

noncomputable def cell_12906 : Cell := { cellDefaults with
  domain := ⟨(157025000000000009 / 200000000000000000 : ℚ), (39262500000000003 / 50000000000000000 : ℚ)⟩
  r := (47374842340163 / 100000000000000 : ℚ)
  w := (13449791089483 / 10000000000000 : ℚ)
  center := (314075000000000021 / 400000000000000000 : ℚ)
  supportValue := (25108996215502427 / 100000000000000000 : ℚ)
  supportSlope := (-3430584362477817 / 5000000000000000 : ℚ)
  oldCenter := (25108996215502427 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1811
  oldLo := (251 / 1000 : ℚ)
  oldHi := (503 / 2000 : ℚ)
  oldPieces := [piece_646]
}

noncomputable def cell_12907 : Cell := { cellDefaults with
  domain := ⟨(39262500000000003 / 50000000000000000 : ℚ), (31415000000000003 / 40000000000000000 : ℚ)⟩
  r := (47374842340163 / 100000000000000 : ℚ)
  w := (13449791089483 / 10000000000000 : ℚ)
  center := (314125000000000027 / 400000000000000000 : ℚ)
  supportValue := (2510044163284193 / 10000000000000000 : ℚ)
  supportSlope := (-3429722492791087 / 5000000000000000 : ℚ)
  oldCenter := (2510044163284193 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1811
  oldHi := (503 / 2000 : ℚ)
  oldPieces := [piece_645, piece_646]
}

noncomputable def cell_12908 : Cell := { cellDefaults with
  domain := ⟨(31415000000000003 / 40000000000000000 : ℚ), (78550000000000009 / 100000000000000000 : ℚ)⟩
  r := (47374842340163 / 100000000000000 : ℚ)
  w := (13449791089483 / 10000000000000 : ℚ)
  center := (314175000000000033 / 400000000000000000 : ℚ)
  supportValue := (25091846928381417 / 100000000000000000 : ℚ)
  supportSlope := (-6858777626676259 / 10000000000000000 : ℚ)
  oldCenter := (25091846928381417 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1811
  oldHi := (251 / 1000 : ℚ)
  oldPieces := [piece_645]
}

noncomputable def cell_12909 : Cell := { cellDefaults with
  domain := ⟨(78550000000000009 / 100000000000000000 : ℚ), (31425000000000003 / 40000000000000000 : ℚ)⟩
  r := (9471397595021 / 20000000000000 : ℚ)
  w := (6725232727967 / 5000000000000 : ℚ)
  center := (314225000000000033 / 400000000000000000 : ℚ)
  supportValue := (1254859751505007 / 5000000000000000 : ℚ)
  supportSlope := (-3429422929040327 / 5000000000000000 : ℚ)
  oldCenter := (1254859751505007 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1812
  oldHi := (503 / 2000 : ℚ)
  oldPieces := [piece_645, piece_646]
}

noncomputable def cell_12910 : Cell := { cellDefaults with
  domain := ⟨(31425000000000003 / 40000000000000000 : ℚ), (39287500000000003 / 50000000000000000 : ℚ)⟩
  r := (9471397595021 / 20000000000000 : ℚ)
  w := (6725232727967 / 5000000000000 : ℚ)
  center := (314275000000000027 / 400000000000000000 : ℚ)
  supportValue := (5017721163716683 / 20000000000000000 : ℚ)
  supportSlope := (-3426917636160509 / 5000000000000000 : ℚ)
  oldCenter := (5017721163716683 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1812
  oldHi := (251 / 1000 : ℚ)
  oldPieces := [piece_645]
}

noncomputable def cell_12911 : Cell := { cellDefaults with
  domain := ⟨(39287500000000003 / 50000000000000000 : ℚ), (157175000000000009 / 200000000000000000 : ℚ)⟩
  r := (9471397595021 / 20000000000000 : ℚ)
  w := (6725232727967 / 5000000000000 : ℚ)
  center := (314325000000000021 / 400000000000000000 : ℚ)
  supportValue := (25080042859497303 / 100000000000000000 : ℚ)
  supportSlope := (-6846902541531573 / 10000000000000000 : ℚ)
  oldCenter := (25080042859497303 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1812
  oldHi := (251 / 1000 : ℚ)
  oldPieces := [piece_645]
}

noncomputable def cell_12912 : Cell := { cellDefaults with
  domain := ⟨(157175000000000009 / 200000000000000000 : ℚ), (78600000000000003 / 100000000000000000 : ℚ)⟩
  r := (9471397595021 / 20000000000000 : ℚ)
  w := (6725232727967 / 5000000000000 : ℚ)
  center := (62875000000000003 / 80000000000000000 : ℚ)
  supportValue := (250714885478913 / 1000000000000000 : ℚ)
  supportSlope := (-854999907599177 / 1250000000000000 : ℚ)
  oldCenter := (250714885478913 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1812
  oldHi := (251 / 1000 : ℚ)
  oldPieces := [piece_645]
}

noncomputable def cell_12913 : Cell := { cellDefaults with
  domain := ⟨(78600000000000003 / 100000000000000000 : ℚ), (157225000000000009 / 200000000000000000 : ℚ)⟩
  r := (47339161224923 / 100000000000000 : ℚ)
  w := (6725582051243 / 5000000000000 : ℚ)
  center := (62885000000000003 / 80000000000000000 : ℚ)
  supportValue := (2507676351697207 / 10000000000000000 : ℚ)
  supportSlope := (-3420975434286911 / 5000000000000000 : ℚ)
  oldCenter := (2507676351697207 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1813
  oldHi := (251 / 1000 : ℚ)
  oldPieces := [piece_645]
}

noncomputable def cell_12914 : Cell := { cellDefaults with
  domain := ⟨(157225000000000009 / 200000000000000000 : ℚ), (39312500000000003 / 50000000000000000 : ℚ)⟩
  r := (47339161224923 / 100000000000000 : ℚ)
  w := (6725582051243 / 5000000000000 : ℚ)
  center := (314475000000000021 / 400000000000000000 : ℚ)
  supportValue := (1002728615399217 / 4000000000000000 : ℚ)
  supportSlope := (-683506352830239 / 1000000000000000 : ℚ)
  oldCenter := (1002728615399217 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1813
  oldHi := (251 / 1000 : ℚ)
  oldPieces := [piece_645]
}

noncomputable def cell_12915 : Cell := { cellDefaults with
  domain := ⟨(39312500000000003 / 50000000000000000 : ℚ), (31455000000000003 / 40000000000000000 : ℚ)⟩
  r := (47339161224923 / 100000000000000 : ℚ)
  w := (6725582051243 / 5000000000000 : ℚ)
  center := (314525000000000027 / 400000000000000000 : ℚ)
  supportValue := (626491896097817 / 2500000000000000 : ℚ)
  supportSlope := (-6828205347612373 / 10000000000000000 : ℚ)
  oldCenter := (626491896097817 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1813
  oldHi := (251 / 1000 : ℚ)
  oldPieces := [piece_645]
}

noncomputable def cell_12916 : Cell := { cellDefaults with
  domain := ⟨(31455000000000003 / 40000000000000000 : ℚ), (78650000000000009 / 100000000000000000 : ℚ)⟩
  r := (47339161224923 / 100000000000000 : ℚ)
  w := (6725582051243 / 5000000000000 : ℚ)
  center := (314575000000000033 / 400000000000000000 : ℚ)
  supportValue := (313139529915403 / 1250000000000000 : ℚ)
  supportSlope := (-1706380992793983 / 2500000000000000 : ℚ)
  oldCenter := (313139529915403 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1813
  oldLo := (1 / 4 : ℚ)
  oldHi := (251 / 1000 : ℚ)
  oldPieces := [piece_644, piece_645]
}

noncomputable def cell_12917 : Cell := { cellDefaults with
  domain := ⟨(78650000000000009 / 100000000000000000 : ℚ), (31465000000000003 / 40000000000000000 : ℚ)⟩
  r := (2957585106837 / 6250000000000 : ℚ)
  w := (1345188545267 / 1000000000000 : ℚ)
  center := (314625000000000033 / 400000000000000000 : ℚ)
  supportValue := (626409176016567 / 2500000000000000 : ℚ)
  supportSlope := (-1364652473503533 / 2000000000000000 : ℚ)
  oldCenter := (626409176016567 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1814
  oldHi := (251 / 1000 : ℚ)
  oldPieces := [piece_645]
}

noncomputable def cell_12918 : Cell := { cellDefaults with
  domain := ⟨(31465000000000003 / 40000000000000000 : ℚ), (39337500000000003 / 50000000000000000 : ℚ)⟩
  r := (2957585106837 / 6250000000000 : ℚ)
  w := (1345188545267 / 1000000000000 : ℚ)
  center := (314675000000000027 / 400000000000000000 : ℚ)
  supportValue := (6261964040525199 / 25000000000000000 : ℚ)
  supportSlope := (-1364992304349663 / 2000000000000000 : ℚ)
  oldCenter := (6261964040525199 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1814
  oldLo := (1 / 4 : ℚ)
  oldHi := (251 / 1000 : ℚ)
  oldPieces := [piece_644, piece_645]
}

noncomputable def cell_12919 : Cell := { cellDefaults with
  domain := ⟨(39337500000000003 / 50000000000000000 : ℚ), (157375000000000009 / 200000000000000000 : ℚ)⟩
  r := (2957585106837 / 6250000000000 : ℚ)
  w := (1345188545267 / 1000000000000 : ℚ)
  center := (314725000000000021 / 400000000000000000 : ℚ)
  supportValue := (25039308252436987 / 100000000000000000 : ℚ)
  supportSlope := (-3410426891288641 / 5000000000000000 : ℚ)
  oldCenter := (25039308252436987 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1814
  oldLo := (1 / 4 : ℚ)
  oldHi := (501 / 2000 : ℚ)
  oldPieces := [piece_644]
}

noncomputable def cell_12920 : Cell := { cellDefaults with
  domain := ⟨(157375000000000009 / 200000000000000000 : ℚ), (78700000000000003 / 100000000000000000 : ℚ)⟩
  r := (2957585106837 / 6250000000000 : ℚ)
  w := (1345188545267 / 1000000000000 : ℚ)
  center := (62955000000000003 / 80000000000000000 : ℚ)
  supportValue := (1251539323994671 / 5000000000000000 : ℚ)
  supportSlope := (-6813985496006687 / 10000000000000000 : ℚ)
  oldCenter := (1251539323994671 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1814
  oldLo := (1 / 4 : ℚ)
  oldHi := (501 / 2000 : ℚ)
  oldPieces := [piece_644]
}

noncomputable def cell_12921 : Cell := { cellDefaults with
  domain := ⟨(78700000000000003 / 100000000000000000 : ℚ), (157425000000000009 / 200000000000000000 : ℚ)⟩
  r := (11825894644413 / 25000000000000 : ℚ)
  w := (13452610961661 / 10000000000000 : ℚ)
  center := (62965000000000003 / 80000000000000000 : ℚ)
  supportValue := (25035999268475373 / 100000000000000000 : ℚ)
  supportSlope := (-1703974113460367 / 2500000000000000 : ℚ)
  oldCenter := (25035999268475373 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1815
  oldLo := (1 / 4 : ℚ)
  oldHi := (501 / 2000 : ℚ)
  oldPieces := [piece_644]
}

noncomputable def cell_12922 : Cell := { cellDefaults with
  domain := ⟨(157425000000000009 / 200000000000000000 : ℚ), (39362500000000003 / 50000000000000000 : ℚ)⟩
  r := (11825894644413 / 25000000000000 : ℚ)
  w := (13452610961661 / 10000000000000 : ℚ)
  center := (314875000000000021 / 400000000000000000 : ℚ)
  supportValue := (5005496736517303 / 20000000000000000 : ℚ)
  supportSlope := (-6809044154571247 / 10000000000000000 : ℚ)
  oldCenter := (5005496736517303 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1815
  oldLo := (1 / 4 : ℚ)
  oldHi := (501 / 2000 : ℚ)
  oldPieces := [piece_644]
}

noncomputable def cell_12923 : Cell := { cellDefaults with
  domain := ⟨(39362500000000003 / 50000000000000000 : ℚ), (31495000000000003 / 40000000000000000 : ℚ)⟩
  r := (11825894644413 / 25000000000000 : ℚ)
  w := (13452610961661 / 10000000000000 : ℚ)
  center := (314925000000000027 / 400000000000000000 : ℚ)
  supportValue := (12509488321959547 / 50000000000000000 : ℚ)
  supportSlope := (-6802220857159719 / 10000000000000000 : ℚ)
  oldCenter := (12509488321959547 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1815
  oldLo := (1 / 4 : ℚ)
  oldHi := (501 / 2000 : ℚ)
  oldPieces := [piece_644]
}

noncomputable def cell_12924 : Cell := { cellDefaults with
  domain := ⟨(31495000000000003 / 40000000000000000 : ℚ), (78750000000000009 / 100000000000000000 : ℚ)⟩
  r := (11825894644413 / 25000000000000 : ℚ)
  w := (13452610961661 / 10000000000000 : ℚ)
  center := (314975000000000033 / 400000000000000000 : ℚ)
  supportValue := (3126309764542097 / 12500000000000000 : ℚ)
  supportSlope := (-6795426376421683 / 10000000000000000 : ℚ)
  oldCenter := (3126309764542097 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1815
  oldLo := (1 / 4 : ℚ)
  oldHi := (501 / 2000 : ℚ)
  oldPieces := [piece_644]
}

noncomputable def cell_12925 : Cell := { cellDefaults with
  domain := ⟨(78750000000000009 / 100000000000000000 : ℚ), (31505000000000003 / 40000000000000000 : ℚ)⟩
  r := (47285827685727 / 100000000000000 : ℚ)
  w := (13453369402219 / 10000000000000 : ℚ)
  center := (315025000000000033 / 400000000000000000 : ℚ)
  supportValue := (2501562004187081 / 10000000000000000 : ℚ)
  supportSlope := (-1699314892476193 / 2500000000000000 : ℚ)
  oldCenter := (2501562004187081 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1816
  oldLo := (1 / 4 : ℚ)
  oldHi := (501 / 2000 : ℚ)
  oldPieces := [piece_644]
}

noncomputable def cell_12926 : Cell := { cellDefaults with
  domain := ⟨(31505000000000003 / 40000000000000000 : ℚ), (39387500000000003 / 50000000000000000 : ℚ)⟩
  r := (47285827685727 / 100000000000000 : ℚ)
  w := (13453369402219 / 10000000000000 : ℚ)
  center := (315075000000000027 / 400000000000000000 : ℚ)
  supportValue := (250071277059247 / 1000000000000000 : ℚ)
  supportSlope := (-1697620255847391 / 2500000000000000 : ℚ)
  oldCenter := (250071277059247 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1816
  oldLo := (1 / 4 : ℚ)
  oldHi := (501 / 2000 : ℚ)
  oldPieces := [piece_644]
}

noncomputable def cell_12927 : Cell := { cellDefaults with
  domain := ⟨(39387500000000003 / 50000000000000000 : ℚ), (157575000000000009 / 200000000000000000 : ℚ)⟩
  r := (47285827685727 / 100000000000000 : ℚ)
  w := (13453369402219 / 10000000000000 : ℚ)
  center := (315125000000000021 / 400000000000000000 : ℚ)
  supportValue := (12499322407325057 / 50000000000000000 : ℚ)
  supportSlope := (-339025848271431 / 500000000000000 : ℚ)
  oldCenter := (12499322407325057 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1816
  oldLo := (499 / 2000 : ℚ)
  oldHi := (501 / 2000 : ℚ)
  oldPieces := [piece_643, piece_644]
}

noncomputable def cell_12928 : Cell := { cellDefaults with
  domain := ⟨(157575000000000009 / 200000000000000000 : ℚ), (78800000000000003 / 100000000000000000 : ℚ)⟩
  r := (47285827685727 / 100000000000000 : ℚ)
  w := (13453369402219 / 10000000000000 : ℚ)
  center := (63035000000000003 / 80000000000000000 : ℚ)
  supportValue := (24990175337723047 / 100000000000000000 : ℚ)
  supportSlope := (-3386168998753953 / 5000000000000000 : ℚ)
  oldCenter := (24990175337723047 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1816
  oldLo := (499 / 2000 : ℚ)
  oldPieces := [piece_643]
}

noncomputable def cell_12929 : Cell := { cellDefaults with
  domain := ⟨(78800000000000003 / 100000000000000000 : ℚ), (315250000000000007 / 400000000000000000 : ℚ)⟩
  r := (2363404665887 / 5000000000000 : ℚ)
  w := (672706477649 / 500000000000 : ℚ)
  center := (630450000000000019 / 800000000000000000 : ℚ)
  supportValue := (6248824795906037 / 25000000000000000 : ℚ)
  supportSlope := (-6773995485117157 / 10000000000000000 : ℚ)
  oldCenter := (6248824795906037 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1817
  oldLo := (499 / 2000 : ℚ)
  oldPieces := [piece_643]
}

noncomputable def cell_12930 : Cell := { cellDefaults with
  domain := ⟨(315250000000000007 / 400000000000000000 : ℚ), (157650000000000001 / 200000000000000000 : ℚ)⟩
  r := (2363404665887 / 5000000000000 : ℚ)
  w := (672706477649 / 500000000000 : ℚ)
  center := (630550000000000009 / 800000000000000000 : ℚ)
  supportValue := (2498683573758307 / 10000000000000000 : ℚ)
  supportSlope := (-1353504149417397 / 2000000000000000 : ℚ)
  oldCenter := (2498683573758307 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1817
  oldLo := (499 / 2000 : ℚ)
  oldPieces := [piece_643]
}

noncomputable def cell_12931 : Cell := { cellDefaults with
  domain := ⟨(157650000000000001 / 200000000000000000 : ℚ), (315349999999999997 / 400000000000000000 : ℚ)⟩
  r := (2363404665887 / 5000000000000 : ℚ)
  w := (672706477649 / 500000000000 : ℚ)
  center := (630649999999999999 / 800000000000000000 : ℚ)
  supportValue := (999135214736801 / 4000000000000000 : ℚ)
  supportSlope := (-845134055444481 / 1250000000000000 : ℚ)
  oldCenter := (999135214736801 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1817
  oldLo := (499 / 2000 : ℚ)
  oldPieces := [piece_643]
}

noncomputable def cell_12932 : Cell := { cellDefaults with
  domain := ⟨(315349999999999997 / 400000000000000000 : ℚ), (39424999999999999 / 50000000000000000 : ℚ)⟩
  r := (2363404665887 / 5000000000000 : ℚ)
  w := (672706477649 / 500000000000 : ℚ)
  center := (630749999999999989 / 800000000000000000 : ℚ)
  supportValue := (1248496652159661 / 5000000000000000 : ℚ)
  supportSlope := (-3377325206324393 / 5000000000000000 : ℚ)
  oldCenter := (1248496652159661 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1817
  oldLo := (499 / 2000 : ℚ)
  oldPieces := [piece_643]
}

noncomputable def cell_12933 : Cell := { cellDefaults with
  domain := ⟨(39424999999999999 / 50000000000000000 : ℚ), (315449999999999997 / 400000000000000000 : ℚ)⟩
  r := (1476574598551 / 3125000000000 : ℚ)
  w := (6727458172571 / 5000000000000 : ℚ)
  center := (630849999999999989 / 800000000000000000 : ℚ)
  supportValue := (2497499902285689 / 10000000000000000 : ℚ)
  supportSlope := (-3378122157340009 / 5000000000000000 : ℚ)
  oldCenter := (2497499902285689 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1818
  oldLo := (499 / 2000 : ℚ)
  oldPieces := [piece_643]
}

noncomputable def cell_12934 : Cell := { cellDefaults with
  domain := ⟨(315449999999999997 / 400000000000000000 : ℚ), (157750000000000001 / 200000000000000000 : ℚ)⟩
  r := (1476574598551 / 3125000000000 : ℚ)
  w := (6727458172571 / 5000000000000 : ℚ)
  center := (630949999999999999 / 800000000000000000 : ℚ)
  supportValue := (6241639430881353 / 25000000000000000 : ℚ)
  supportSlope := (-674983708928977 / 1000000000000000 : ℚ)
  oldCenter := (6241639430881353 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1818
  oldLo := (499 / 2000 : ℚ)
  oldPieces := [piece_643]
}

noncomputable def cell_12935 : Cell := { cellDefaults with
  domain := ⟨(157750000000000001 / 200000000000000000 : ℚ), (315550000000000007 / 400000000000000000 : ℚ)⟩
  r := (1476574598551 / 3125000000000 : ℚ)
  w := (6727458172571 / 5000000000000 : ℚ)
  center := (631050000000000009 / 800000000000000000 : ℚ)
  supportValue := (24958124416939353 / 100000000000000000 : ℚ)
  supportSlope := (-337172794306639 / 500000000000000 : ℚ)
  oldCenter := (24958124416939353 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1818
  oldLo := (499 / 2000 : ℚ)
  oldPieces := [piece_643]
}

noncomputable def cell_12936 : Cell := { cellDefaults with
  domain := ⟨(315550000000000007 / 400000000000000000 : ℚ), (78900000000000003 / 100000000000000000 : ℚ)⟩
  r := (1476574598551 / 3125000000000 : ℚ)
  w := (6727458172571 / 5000000000000 : ℚ)
  center := (631150000000000019 / 800000000000000000 : ℚ)
  supportValue := (12474858016764419 / 50000000000000000 : ℚ)
  supportSlope := (-6742970635750681 / 10000000000000000 : ℚ)
  oldCenter := (12474858016764419 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1818
  oldLo := (249 / 1000 : ℚ)
  oldPieces := [piece_642, piece_643]
}

noncomputable def cell_12937 : Cell := { cellDefaults with
  domain := ⟨(78900000000000003 / 100000000000000000 : ℚ), (315650000000000007 / 400000000000000000 : ℚ)⟩
  r := (4723270607819 / 10000000000000 : ℚ)
  w := (1345572255769 / 1000000000000 : ℚ)
  center := (631250000000000019 / 800000000000000000 : ℚ)
  supportValue := (6238679980372567 / 25000000000000000 : ℚ)
  supportSlope := (-3369320149236081 / 5000000000000000 : ℚ)
  oldCenter := (6238679980372567 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1819
  oldLo := (499 / 2000 : ℚ)
  oldPieces := [piece_643]
}

noncomputable def cell_12938 : Cell := { cellDefaults with
  domain := ⟨(315650000000000007 / 400000000000000000 : ℚ), (157850000000000001 / 200000000000000000 : ℚ)⟩
  r := (4723270607819 / 10000000000000 : ℚ)
  w := (1345572255769 / 1000000000000 : ℚ)
  center := (631350000000000009 / 800000000000000000 : ℚ)
  supportValue := (24946312025316883 / 100000000000000000 : ℚ)
  supportSlope := (-6742563976201551 / 10000000000000000 : ℚ)
  oldCenter := (24946312025316883 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1819
  oldLo := (249 / 1000 : ℚ)
  oldPieces := [piece_642, piece_643]
}

noncomputable def cell_12939 : Cell := { cellDefaults with
  domain := ⟨(157850000000000001 / 200000000000000000 : ℚ), (315749999999999997 / 400000000000000000 : ℚ)⟩
  r := (4723270607819 / 10000000000000 : ℚ)
  w := (1345572255769 / 1000000000000 : ℚ)
  center := (631449999999999999 / 800000000000000000 : ℚ)
  supportValue := (498757391053841 / 2000000000000000 : ℚ)
  supportSlope := (-6736801339447103 / 10000000000000000 : ℚ)
  oldCenter := (498757391053841 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1819
  oldLo := (249 / 1000 : ℚ)
  oldHi := (499 / 2000 : ℚ)
  oldPieces := [piece_642]
}

noncomputable def cell_12940 : Cell := { cellDefaults with
  domain := ⟨(315749999999999997 / 400000000000000000 : ℚ), (39474999999999999 / 50000000000000000 : ℚ)⟩
  r := (4723270607819 / 10000000000000 : ℚ)
  w := (1345572255769 / 1000000000000 : ℚ)
  center := (631549999999999989 / 800000000000000000 : ℚ)
  supportValue := (24929452546348457 / 100000000000000000 : ℚ)
  supportSlope := (-841301410395929 / 1250000000000000 : ℚ)
  oldCenter := (24929452546348457 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1819
  oldLo := (249 / 1000 : ℚ)
  oldHi := (499 / 2000 : ℚ)
  oldPieces := [piece_642]
}

noncomputable def cell_12941 : Cell := { cellDefaults with
  domain := ⟨(39474999999999999 / 50000000000000000 : ℚ), (78966620111731839 / 100000000000000000 : ℚ)⟩
  r := (737735068141 / 1562500000000 : ℚ)
  w := (13456537803407 / 10000000000000 : ℚ)
  center := (157916620111731837 / 200000000000000000 : ℚ)
  supportValue := (1558317883602919 / 6250000000000000 : ℚ)
  supportSlope := (-6730914649196307 / 10000000000000000 : ℚ)
  oldCenter := (1558317883602919 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1820
  oldLo := (249 / 1000 : ℚ)
  oldHi := (499 / 2000 : ℚ)
  oldPieces := [piece_642]
}

noncomputable def cell_12942 : Cell := { cellDefaults with
  domain := ⟨(78966620111731839 / 100000000000000000 : ℚ), (61705656424581 / 78125000000000 : ℚ)⟩
  r := (737735068141 / 1562500000000 : ℚ)
  w := (13456537803407 / 10000000000000 : ℚ)
  center := (157949860335195519 / 200000000000000000 : ℚ)
  supportValue := (778809572350173 / 3125000000000000 : ℚ)
  supportSlope := (-6722449512977869 / 10000000000000000 : ℚ)
  oldCenter := (778809572350173 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1820
  oldLo := (249 / 1000 : ℚ)
  oldHi := (499 / 2000 : ℚ)
  oldPieces := [piece_642]
}

noncomputable def cell_12943 : Cell := { cellDefaults with
  domain := ⟨(61705656424581 / 78125000000000 : ℚ), (19750000000000001 / 25000000000000000 : ℚ)⟩
  r := (737735068141 / 1562500000000 : ℚ)
  w := (13456537803407 / 10000000000000 : ℚ)
  center := (39495810055865921 / 50000000000000000 : ℚ)
  supportValue := (6227673389906467 / 25000000000000000 : ℚ)
  supportSlope := (-6714087388448153 / 10000000000000000 : ℚ)
  oldCenter := (6227673389906467 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1821
  oldLo := (249 / 1000 : ℚ)
  oldHi := (499 / 2000 : ℚ)
  oldPieces := [piece_642]
}

noncomputable def cell_12944 : Cell := { cellDefaults with
  domain := ⟨(19750000000000001 / 25000000000000000 : ℚ), (31605000000000001 / 40000000000000000 : ℚ)⟩
  r := (47197414376059 / 100000000000000 : ℚ)
  w := (13457385331489 / 10000000000000 : ℚ)
  center := (316025000000000013 / 400000000000000000 : ℚ)
  supportValue := (3114272620682813 / 12500000000000000 : ℚ)
  supportSlope := (-6714451779755409 / 10000000000000000 : ℚ)
  oldCenter := (3114272620682813 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1822
  oldLo := (249 / 1000 : ℚ)
  oldHi := (499 / 2000 : ℚ)
  oldPieces := [piece_642]
}

noncomputable def cell_12945 : Cell := { cellDefaults with
  domain := ⟨(31605000000000001 / 40000000000000000 : ℚ), (79025000000000001 / 100000000000000000 : ℚ)⟩
  r := (47197414376059 / 100000000000000 : ℚ)
  w := (13457385331489 / 10000000000000 : ℚ)
  center := (316075000000000007 / 400000000000000000 : ℚ)
  supportValue := (24905791846554487 / 100000000000000000 : ℚ)
  supportSlope := (-6708140836973713 / 10000000000000000 : ℚ)
  oldCenter := (24905791846554487 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1822
  oldLo := (249 / 1000 : ℚ)
  oldHi := (499 / 2000 : ℚ)
  oldPieces := [piece_642]
}

noncomputable def cell_12946 : Cell := { cellDefaults with
  domain := ⟨(79025000000000001 / 100000000000000000 : ℚ), (158074999999999999 / 200000000000000000 : ℚ)⟩
  r := (47197414376059 / 100000000000000 : ℚ)
  w := (13457385331489 / 10000000000000 : ℚ)
  center := (316125000000000001 / 400000000000000000 : ℚ)
  supportValue := (12448711923029293 / 50000000000000000 : ℚ)
  supportSlope := (-167764423618897 / 250000000000000 : ℚ)
  oldCenter := (12448711923029293 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1822
  oldLo := (497 / 2000 : ℚ)
  oldHi := (499 / 2000 : ℚ)
  oldPieces := [piece_641, piece_642]
}

noncomputable def cell_12947 : Cell := { cellDefaults with
  domain := ⟨(158074999999999999 / 200000000000000000 : ℚ), (39524999999999999 / 50000000000000000 : ℚ)⟩
  r := (47197414376059 / 100000000000000 : ℚ)
  w := (13457385331489 / 10000000000000 : ℚ)
  center := (63234999999999999 / 80000000000000000 : ℚ)
  supportValue := (6222254901970447 / 25000000000000000 : ℚ)
  supportSlope := (-1341252908287399 / 2000000000000000 : ℚ)
  oldCenter := (6222254901970447 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1822
  oldLo := (497 / 2000 : ℚ)
  oldHi := (249 / 1000 : ℚ)
  oldPieces := [piece_641]
}

noncomputable def cell_12948 : Cell := { cellDefaults with
  domain := ⟨(39524999999999999 / 50000000000000000 : ℚ), (158124999999999999 / 200000000000000000 : ℚ)⟩
  r := (2358989962403 / 5000000000000 : ℚ)
  w := (269164667073 / 200000000000 : ℚ)
  center := (63244999999999999 / 80000000000000000 : ℚ)
  supportValue := (24893951794175603 / 100000000000000000 : ℚ)
  supportSlope := (-6707778814235871 / 10000000000000000 : ℚ)
  oldCenter := (24893951794175603 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1823
  oldLo := (497 / 2000 : ℚ)
  oldHi := (249 / 1000 : ℚ)
  oldPieces := [piece_641]
}

noncomputable def cell_12949 : Cell := { cellDefaults with
  domain := ⟨(158124999999999999 / 200000000000000000 : ℚ), (79075000000000001 / 100000000000000000 : ℚ)⟩
  r := (2358989962403 / 5000000000000 : ℚ)
  w := (269164667073 / 200000000000 : ℚ)
  center := (316275000000000001 / 400000000000000000 : ℚ)
  supportValue := (6221392760920847 / 25000000000000000 : ℚ)
  supportSlope := (-6701424423169207 / 10000000000000000 : ℚ)
  oldCenter := (6221392760920847 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1823
  oldLo := (497 / 2000 : ℚ)
  oldHi := (249 / 1000 : ℚ)
  oldPieces := [piece_641]
}

theorem check_12900 : cell_12900.check = true := by
  decide +kernel

theorem check_12901 : cell_12901.check = true := by
  decide +kernel

theorem check_12902 : cell_12902.check = true := by
  decide +kernel

theorem check_12903 : cell_12903.check = true := by
  decide +kernel

theorem check_12904 : cell_12904.check = true := by
  decide +kernel

theorem check_12905 : cell_12905.check = true := by
  decide +kernel

theorem check_12906 : cell_12906.check = true := by
  decide +kernel

theorem check_12907 : cell_12907.check = true := by
  decide +kernel

theorem check_12908 : cell_12908.check = true := by
  decide +kernel

theorem check_12909 : cell_12909.check = true := by
  decide +kernel

theorem check_12910 : cell_12910.check = true := by
  decide +kernel

theorem check_12911 : cell_12911.check = true := by
  decide +kernel

theorem check_12912 : cell_12912.check = true := by
  decide +kernel

theorem check_12913 : cell_12913.check = true := by
  decide +kernel

theorem check_12914 : cell_12914.check = true := by
  decide +kernel

theorem check_12915 : cell_12915.check = true := by
  decide +kernel

theorem check_12916 : cell_12916.check = true := by
  decide +kernel

theorem check_12917 : cell_12917.check = true := by
  decide +kernel

theorem check_12918 : cell_12918.check = true := by
  decide +kernel

theorem check_12919 : cell_12919.check = true := by
  decide +kernel

theorem check_12920 : cell_12920.check = true := by
  decide +kernel

theorem check_12921 : cell_12921.check = true := by
  decide +kernel

theorem check_12922 : cell_12922.check = true := by
  decide +kernel

theorem check_12923 : cell_12923.check = true := by
  decide +kernel

theorem check_12924 : cell_12924.check = true := by
  decide +kernel

theorem check_12925 : cell_12925.check = true := by
  decide +kernel

theorem check_12926 : cell_12926.check = true := by
  decide +kernel

theorem check_12927 : cell_12927.check = true := by
  decide +kernel

theorem check_12928 : cell_12928.check = true := by
  decide +kernel

theorem check_12929 : cell_12929.check = true := by
  decide +kernel

theorem check_12930 : cell_12930.check = true := by
  decide +kernel

theorem check_12931 : cell_12931.check = true := by
  decide +kernel

theorem check_12932 : cell_12932.check = true := by
  decide +kernel

theorem check_12933 : cell_12933.check = true := by
  decide +kernel

theorem check_12934 : cell_12934.check = true := by
  decide +kernel

theorem check_12935 : cell_12935.check = true := by
  decide +kernel

theorem check_12936 : cell_12936.check = true := by
  decide +kernel

theorem check_12937 : cell_12937.check = true := by
  decide +kernel

theorem check_12938 : cell_12938.check = true := by
  decide +kernel

theorem check_12939 : cell_12939.check = true := by
  decide +kernel

theorem check_12940 : cell_12940.check = true := by
  decide +kernel

theorem check_12941 : cell_12941.check = true := by
  decide +kernel

theorem check_12942 : cell_12942.check = true := by
  decide +kernel

theorem check_12943 : cell_12943.check = true := by
  decide +kernel

theorem check_12944 : cell_12944.check = true := by
  decide +kernel

theorem check_12945 : cell_12945.check = true := by
  decide +kernel

theorem check_12946 : cell_12946.check = true := by
  decide +kernel

theorem check_12947 : cell_12947.check = true := by
  decide +kernel

theorem check_12948 : cell_12948.check = true := by
  decide +kernel

theorem check_12949 : cell_12949.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12900, cell_12901, cell_12902, cell_12903, cell_12904, cell_12905, cell_12906, cell_12907, cell_12908, cell_12909, cell_12910, cell_12911, cell_12912, cell_12913, cell_12914, cell_12915, cell_12916, cell_12917, cell_12918, cell_12919, cell_12920, cell_12921, cell_12922, cell_12923, cell_12924, cell_12925, cell_12926, cell_12927, cell_12928, cell_12929, cell_12930, cell_12931, cell_12932, cell_12933, cell_12934, cell_12935, cell_12936, cell_12937, cell_12938, cell_12939, cell_12940, cell_12941, cell_12942, cell_12943, cell_12944, cell_12945, cell_12946, cell_12947, cell_12948, cell_12949]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12900, check_12901, check_12902, check_12903, check_12904, check_12905, check_12906, check_12907, check_12908, check_12909, check_12910, check_12911, check_12912, check_12913, check_12914, check_12915, check_12916, check_12917, check_12918, check_12919, check_12920, check_12921, check_12922, check_12923, check_12924, check_12925, check_12926, check_12927, check_12928, check_12929, check_12930, check_12931, check_12932, check_12933, check_12934, check_12935, check_12936, check_12937, check_12938, check_12939, check_12940, check_12941, check_12942, check_12943, check_12944, check_12945, check_12946, check_12947, check_12948, check_12949, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0258

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0258
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0258
open AnalyticBounds.ExpressionCertificate

theorem linked_12900 : Linked cell_12900 pieces := by
  link_source cell_12900 with piece_1809 using piece_1809_mem, piece_646_mem

theorem linked_12901 : Linked cell_12901 pieces := by
  link_source cell_12901 with piece_1810 using piece_1810_mem, piece_646_mem

theorem linked_12902 : Linked cell_12902 pieces := by
  link_source cell_12902 with piece_1810 using piece_1810_mem, piece_646_mem

theorem linked_12903 : Linked cell_12903 pieces := by
  link_source cell_12903 with piece_1810 using piece_1810_mem, piece_646_mem

theorem linked_12904 : Linked cell_12904 pieces := by
  link_source cell_12904 with piece_1810 using piece_1810_mem, piece_646_mem

theorem linked_12905 : Linked cell_12905 pieces := by
  link_source cell_12905 with piece_1811 using piece_1811_mem, piece_646_mem

theorem linked_12906 : Linked cell_12906 pieces := by
  link_source cell_12906 with piece_1811 using piece_1811_mem, piece_646_mem

theorem linked_12907 : Linked cell_12907 pieces := by
  link_source cell_12907 with piece_1811 using piece_1811_mem, ⟨piece_645_mem, piece_646_mem⟩

theorem linked_12908 : Linked cell_12908 pieces := by
  link_source cell_12908 with piece_1811 using piece_1811_mem, piece_645_mem

theorem linked_12909 : Linked cell_12909 pieces := by
  link_source cell_12909 with piece_1812 using piece_1812_mem, ⟨piece_645_mem, piece_646_mem⟩

theorem linked_12910 : Linked cell_12910 pieces := by
  link_source cell_12910 with piece_1812 using piece_1812_mem, piece_645_mem

theorem linked_12911 : Linked cell_12911 pieces := by
  link_source cell_12911 with piece_1812 using piece_1812_mem, piece_645_mem

theorem linked_12912 : Linked cell_12912 pieces := by
  link_source cell_12912 with piece_1812 using piece_1812_mem, piece_645_mem

theorem linked_12913 : Linked cell_12913 pieces := by
  link_source cell_12913 with piece_1813 using piece_1813_mem, piece_645_mem

theorem linked_12914 : Linked cell_12914 pieces := by
  link_source cell_12914 with piece_1813 using piece_1813_mem, piece_645_mem

theorem linked_12915 : Linked cell_12915 pieces := by
  link_source cell_12915 with piece_1813 using piece_1813_mem, piece_645_mem

theorem linked_12916 : Linked cell_12916 pieces := by
  link_source cell_12916 with piece_1813 using piece_1813_mem, ⟨piece_644_mem, piece_645_mem⟩

theorem linked_12917 : Linked cell_12917 pieces := by
  link_source cell_12917 with piece_1814 using piece_1814_mem, piece_645_mem

theorem linked_12918 : Linked cell_12918 pieces := by
  link_source cell_12918 with piece_1814 using piece_1814_mem, ⟨piece_644_mem, piece_645_mem⟩

theorem linked_12919 : Linked cell_12919 pieces := by
  link_source cell_12919 with piece_1814 using piece_1814_mem, piece_644_mem

theorem linked_12920 : Linked cell_12920 pieces := by
  link_source cell_12920 with piece_1814 using piece_1814_mem, piece_644_mem

theorem linked_12921 : Linked cell_12921 pieces := by
  link_source cell_12921 with piece_1815 using piece_1815_mem, piece_644_mem

theorem linked_12922 : Linked cell_12922 pieces := by
  link_source cell_12922 with piece_1815 using piece_1815_mem, piece_644_mem

theorem linked_12923 : Linked cell_12923 pieces := by
  link_source cell_12923 with piece_1815 using piece_1815_mem, piece_644_mem

theorem linked_12924 : Linked cell_12924 pieces := by
  link_source cell_12924 with piece_1815 using piece_1815_mem, piece_644_mem

theorem linked_12925 : Linked cell_12925 pieces := by
  link_source cell_12925 with piece_1816 using piece_1816_mem, piece_644_mem

theorem linked_12926 : Linked cell_12926 pieces := by
  link_source cell_12926 with piece_1816 using piece_1816_mem, piece_644_mem

theorem linked_12927 : Linked cell_12927 pieces := by
  link_source cell_12927 with piece_1816 using piece_1816_mem, ⟨piece_643_mem, piece_644_mem⟩

theorem linked_12928 : Linked cell_12928 pieces := by
  link_source cell_12928 with piece_1816 using piece_1816_mem, piece_643_mem

theorem linked_12929 : Linked cell_12929 pieces := by
  link_source cell_12929 with piece_1817 using piece_1817_mem, piece_643_mem

theorem linked_12930 : Linked cell_12930 pieces := by
  link_source cell_12930 with piece_1817 using piece_1817_mem, piece_643_mem

theorem linked_12931 : Linked cell_12931 pieces := by
  link_source cell_12931 with piece_1817 using piece_1817_mem, piece_643_mem

theorem linked_12932 : Linked cell_12932 pieces := by
  link_source cell_12932 with piece_1817 using piece_1817_mem, piece_643_mem

theorem linked_12933 : Linked cell_12933 pieces := by
  link_source cell_12933 with piece_1818 using piece_1818_mem, piece_643_mem

theorem linked_12934 : Linked cell_12934 pieces := by
  link_source cell_12934 with piece_1818 using piece_1818_mem, piece_643_mem

theorem linked_12935 : Linked cell_12935 pieces := by
  link_source cell_12935 with piece_1818 using piece_1818_mem, piece_643_mem

theorem linked_12936 : Linked cell_12936 pieces := by
  link_source cell_12936 with piece_1818 using piece_1818_mem, ⟨piece_642_mem, piece_643_mem⟩

theorem linked_12937 : Linked cell_12937 pieces := by
  link_source cell_12937 with piece_1819 using piece_1819_mem, piece_643_mem

theorem linked_12938 : Linked cell_12938 pieces := by
  link_source cell_12938 with piece_1819 using piece_1819_mem, ⟨piece_642_mem, piece_643_mem⟩

theorem linked_12939 : Linked cell_12939 pieces := by
  link_source cell_12939 with piece_1819 using piece_1819_mem, piece_642_mem

theorem linked_12940 : Linked cell_12940 pieces := by
  link_source cell_12940 with piece_1819 using piece_1819_mem, piece_642_mem

theorem linked_12941 : Linked cell_12941 pieces := by
  link_source cell_12941 with piece_1820 using piece_1820_mem, piece_642_mem

theorem linked_12942 : Linked cell_12942 pieces := by
  link_source cell_12942 with piece_1820 using piece_1820_mem, piece_642_mem

theorem linked_12943 : Linked cell_12943 pieces := by
  link_source cell_12943 with piece_1821 using piece_1821_mem, piece_642_mem

theorem linked_12944 : Linked cell_12944 pieces := by
  link_source cell_12944 with piece_1822 using piece_1822_mem, piece_642_mem

theorem linked_12945 : Linked cell_12945 pieces := by
  link_source cell_12945 with piece_1822 using piece_1822_mem, piece_642_mem

theorem linked_12946 : Linked cell_12946 pieces := by
  link_source cell_12946 with piece_1822 using piece_1822_mem, ⟨piece_641_mem, piece_642_mem⟩

theorem linked_12947 : Linked cell_12947 pieces := by
  link_source cell_12947 with piece_1822 using piece_1822_mem, piece_641_mem

theorem linked_12948 : Linked cell_12948 pieces := by
  link_source cell_12948 with piece_1823 using piece_1823_mem, piece_641_mem

theorem linked_12949 : Linked cell_12949 pieces := by
  link_source cell_12949 with piece_1823 using piece_1823_mem, piece_641_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0258.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0258.cells,List.forall_mem_cons]
  exact ⟨linked_12900, linked_12901, linked_12902, linked_12903, linked_12904, linked_12905, linked_12906, linked_12907, linked_12908, linked_12909, linked_12910, linked_12911, linked_12912, linked_12913, linked_12914, linked_12915, linked_12916, linked_12917, linked_12918, linked_12919, linked_12920, linked_12921, linked_12922, linked_12923, linked_12924, linked_12925, linked_12926, linked_12927, linked_12928, linked_12929, linked_12930, linked_12931, linked_12932, linked_12933, linked_12934, linked_12935, linked_12936, linked_12937, linked_12938, linked_12939, linked_12940, linked_12941, linked_12942, linked_12943, linked_12944, linked_12945, linked_12946, linked_12947, linked_12948, linked_12949, by simp⟩

theorem covered : covers (1568603351955307 / 2000000000000000 : ℚ) (79075000000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0258.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0258
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0259
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(79075000000000001 / 100000000000000000 : ℚ), (31635000000000001 / 40000000000000000 : ℚ)⟩
  branch := .left
  r := (1880900839821 / 4000000000000 : ℚ)
  w := (1346702021583 / 1000000000000 : ℚ)
  center := (316325000000000007 / 400000000000000000 : ℚ)
  supportValue := (49754396440051 / 200000000000000 : ℚ)
  supportSlope := (-1339019168738193 / 2000000000000000 : ℚ)
  oldCenter := (49754396440051 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1832
  oldLo := (247 / 1000 : ℚ)
  oldHi := (99 / 400 : ℚ)
  oldPieces := [piece_637]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_12950 : Cell := { cellDefaults with
  r := (2358989962403 / 5000000000000 : ℚ)
  w := (269164667073 / 200000000000 : ℚ)
  newCoefficients := coefficients_1823
  oldLo := (497 / 2000 : ℚ)
  oldHi := (249 / 1000 : ℚ)
  oldPieces := [piece_641]
}

noncomputable def cell_12951 : Cell := { cellDefaults with
  domain := ⟨(31635000000000001 / 40000000000000000 : ℚ), (19775000000000001 / 25000000000000000 : ℚ)⟩
  r := (2358989962403 / 5000000000000 : ℚ)
  w := (269164667073 / 200000000000 : ℚ)
  center := (316375000000000013 / 400000000000000000 : ℚ)
  supportValue := (777151040344869 / 3125000000000000 : ℚ)
  supportSlope := (-3344396459403363 / 5000000000000000 : ℚ)
  oldCenter := (777151040344869 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1823
  oldLo := (497 / 2000 : ℚ)
  oldHi := (249 / 1000 : ℚ)
  oldPieces := [piece_641]
}

noncomputable def cell_12952 : Cell := { cellDefaults with
  domain := ⟨(19775000000000001 / 25000000000000000 : ℚ), (31645000000000001 / 40000000000000000 : ℚ)⟩
  r := (5895276827669 / 12500000000000 : ℚ)
  w := (1682388951621 / 1250000000000 : ℚ)
  center := (316425000000000013 / 400000000000000000 : ℚ)
  supportValue := (12436850751835167 / 50000000000000000 : ℚ)
  supportSlope := (-6690241214385131 / 10000000000000000 : ℚ)
  oldCenter := (12436850751835167 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1824
  oldLo := (497 / 2000 : ℚ)
  oldHi := (249 / 1000 : ℚ)
  oldPieces := [piece_641]
}

noncomputable def cell_12953 : Cell := { cellDefaults with
  domain := ⟨(31645000000000001 / 40000000000000000 : ℚ), (79125000000000001 / 100000000000000000 : ℚ)⟩
  r := (5895276827669 / 12500000000000 : ℚ)
  w := (1682388951621 / 1250000000000 : ℚ)
  center := (316475000000000007 / 400000000000000000 : ℚ)
  supportValue := (24865342633626877 / 100000000000000000 : ℚ)
  supportSlope := (-6683953214402207 / 10000000000000000 : ℚ)
  oldCenter := (24865342633626877 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1824
  oldLo := (497 / 2000 : ℚ)
  oldHi := (249 / 1000 : ℚ)
  oldPieces := [piece_641]
}

noncomputable def cell_12954 : Cell := { cellDefaults with
  domain := ⟨(79125000000000001 / 100000000000000000 : ℚ), (158274999999999999 / 200000000000000000 : ℚ)⟩
  r := (5895276827669 / 12500000000000 : ℚ)
  w := (1682388951621 / 1250000000000 : ℚ)
  center := (316525000000000001 / 400000000000000000 : ℚ)
  supportValue := (24856991607681087 / 100000000000000000 : ℚ)
  supportSlope := (-3338845311684891 / 5000000000000000 : ℚ)
  oldCenter := (24856991607681087 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1824
  oldLo := (497 / 2000 : ℚ)
  oldHi := (249 / 1000 : ℚ)
  oldPieces := [piece_641]
}

noncomputable def cell_12955 : Cell := { cellDefaults with
  domain := ⟨(158274999999999999 / 200000000000000000 : ℚ), (39574999999999999 / 50000000000000000 : ℚ)⟩
  r := (5895276827669 / 12500000000000 : ℚ)
  w := (1682388951621 / 1250000000000 : ℚ)
  center := (63314999999999999 / 80000000000000000 : ℚ)
  supportValue := (24848663603741059 / 100000000000000000 : ℚ)
  supportSlope := (-3339270081253299 / 5000000000000000 : ℚ)
  oldCenter := (24848663603741059 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1824
  oldLo := (31 / 125 : ℚ)
  oldHi := (249 / 1000 : ℚ)
  oldPieces := [piece_640, piece_641]
}

noncomputable def cell_12956 : Cell := { cellDefaults with
  domain := ⟨(39574999999999999 / 50000000000000000 : ℚ), (158324999999999999 / 200000000000000000 : ℚ)⟩
  r := (2357232677191 / 5000000000000 : ℚ)
  w := (13460006668069 / 10000000000000 : ℚ)
  center := (63324999999999999 / 80000000000000000 : ℚ)
  supportValue := (4970698861820313 / 20000000000000000 : ℚ)
  supportSlope := (-1334750631442123 / 2000000000000000 : ℚ)
  oldCenter := (4970698861820313 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1825
  oldLo := (31 / 125 : ℚ)
  oldHi := (249 / 1000 : ℚ)
  oldPieces := [piece_640, piece_641]
}

noncomputable def cell_12957 : Cell := { cellDefaults with
  domain := ⟨(158324999999999999 / 200000000000000000 : ℚ), (79175000000000001 / 100000000000000000 : ℚ)⟩
  r := (2357232677191 / 5000000000000 : ℚ)
  w := (13460006668069 / 10000000000000 : ℚ)
  center := (316675000000000001 / 400000000000000000 : ℚ)
  supportValue := (388205186438119 / 1562500000000000 : ℚ)
  supportSlope := (-667728161919987 / 1000000000000000 : ℚ)
  oldCenter := (388205186438119 / 1562500000000000 : ℚ)
  newCoefficients := coefficients_1825
  oldLo := (31 / 125 : ℚ)
  oldHi := (497 / 2000 : ℚ)
  oldPieces := [piece_640]
}

noncomputable def cell_12958 : Cell := { cellDefaults with
  domain := ⟨(79175000000000001 / 100000000000000000 : ℚ), (31675000000000001 / 40000000000000000 : ℚ)⟩
  r := (2357232677191 / 5000000000000 : ℚ)
  w := (13460006668069 / 10000000000000 : ℚ)
  center := (316725000000000007 / 400000000000000000 : ℚ)
  supportValue := (620919732257931 / 2500000000000000 : ℚ)
  supportSlope := (-3335473798011401 / 5000000000000000 : ℚ)
  oldCenter := (620919732257931 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1825
  oldLo := (31 / 125 : ℚ)
  oldHi := (497 / 2000 : ℚ)
  oldPieces := [piece_640]
}

noncomputable def cell_12959 : Cell := { cellDefaults with
  domain := ⟨(31675000000000001 / 40000000000000000 : ℚ), (19800000000000001 / 25000000000000000 : ℚ)⟩
  r := (2357232677191 / 5000000000000 : ℚ)
  w := (13460006668069 / 10000000000000 : ℚ)
  center := (316775000000000013 / 400000000000000000 : ℚ)
  supportValue := (24828454549991127 / 100000000000000000 : ℚ)
  supportSlope := (-666463934955539 / 1000000000000000 : ℚ)
  oldCenter := (24828454549991127 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1825
  oldLo := (31 / 125 : ℚ)
  oldHi := (497 / 2000 : ℚ)
  oldPieces := [piece_640]
}

noncomputable def cell_12960 : Cell := { cellDefaults with
  domain := ⟨(19800000000000001 / 25000000000000000 : ℚ), (31685000000000001 / 40000000000000000 : ℚ)⟩
  r := (47127113317847 / 100000000000000 : ℚ)
  w := (336522851803 / 250000000000 : ℚ)
  center := (316825000000000013 / 400000000000000000 : ℚ)
  supportValue := (12416629661845767 / 50000000000000000 : ℚ)
  supportSlope := (-1666517561250891 / 2500000000000000 : ℚ)
  oldCenter := (12416629661845767 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1826
  oldLo := (31 / 125 : ℚ)
  oldHi := (497 / 2000 : ℚ)
  oldPieces := [piece_640]
}

noncomputable def cell_12961 : Cell := { cellDefaults with
  domain := ⟨(31685000000000001 / 40000000000000000 : ℚ), (79225000000000001 / 100000000000000000 : ℚ)⟩
  r := (47127113317847 / 100000000000000 : ℚ)
  w := (336522851803 / 250000000000 : ℚ)
  center := (316875000000000007 / 400000000000000000 : ℚ)
  supportValue := (6206232667649817 / 25000000000000000 : ℚ)
  supportSlope := (-6659777106362251 / 10000000000000000 : ℚ)
  oldCenter := (6206232667649817 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1826
  oldLo := (31 / 125 : ℚ)
  oldHi := (497 / 2000 : ℚ)
  oldPieces := [piece_640]
}

noncomputable def cell_12962 : Cell := { cellDefaults with
  domain := ⟨(79225000000000001 / 100000000000000000 : ℚ), (158474999999999999 / 200000000000000000 : ℚ)⟩
  r := (47127113317847 / 100000000000000 : ℚ)
  w := (336522851803 / 250000000000 : ℚ)
  center := (316925000000000001 / 400000000000000000 : ℚ)
  supportValue := (99266439471813 / 400000000000000 : ℚ)
  supportSlope := (-3326754747959137 / 5000000000000000 : ℚ)
  oldCenter := (99266439471813 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1826
  oldLo := (31 / 125 : ℚ)
  oldHi := (497 / 2000 : ℚ)
  oldPieces := [piece_640]
}

noncomputable def cell_12963 : Cell := { cellDefaults with
  domain := ⟨(158474999999999999 / 200000000000000000 : ℚ), (39624999999999999 / 50000000000000000 : ℚ)⟩
  r := (47127113317847 / 100000000000000 : ℚ)
  w := (336522851803 / 250000000000 : ℚ)
  center := (63394999999999999 / 80000000000000000 : ℚ)
  supportValue := (24808296883940217 / 100000000000000000 : ℚ)
  supportSlope := (-664726725875999 / 1000000000000000 : ℚ)
  oldCenter := (24808296883940217 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1826
  oldLo := (31 / 125 : ℚ)
  oldHi := (497 / 2000 : ℚ)
  oldPieces := [piece_640]
}

noncomputable def cell_12964 : Cell := { cellDefaults with
  domain := ⟨(39624999999999999 / 50000000000000000 : ℚ), (158524999999999999 / 200000000000000000 : ℚ)⟩
  r := (11777401090987 / 25000000000000 : ℚ)
  w := (3365463411687 / 2500000000000 : ℚ)
  center := (63404999999999999 / 80000000000000000 : ℚ)
  supportValue := (24813034875403 / 100000000000000 : ℚ)
  supportSlope := (-6648631961309361 / 10000000000000000 : ℚ)
  oldCenter := (24813034875403 / 100000000000000 : ℚ)
  newCoefficients := coefficients_1827
  oldLo := (31 / 125 : ℚ)
  oldHi := (497 / 2000 : ℚ)
  oldPieces := [piece_640]
}

noncomputable def cell_12965 : Cell := { cellDefaults with
  domain := ⟨(158524999999999999 / 200000000000000000 : ℚ), (79275000000000001 / 100000000000000000 : ℚ)⟩
  r := (11777401090987 / 25000000000000 : ℚ)
  w := (3365463411687 / 2500000000000 : ℚ)
  center := (317075000000000001 / 400000000000000000 : ℚ)
  supportValue := (1984378238359 / 8000000000000 : ℚ)
  supportSlope := (-6642403818068223 / 10000000000000000 : ℚ)
  oldCenter := (1984378238359 / 8000000000000 : ℚ)
  newCoefficients := coefficients_1827
  oldLo := (31 / 125 : ℚ)
  oldHi := (497 / 2000 : ℚ)
  oldPieces := [piece_640]
}

noncomputable def cell_12966 : Cell := { cellDefaults with
  domain := ⟨(79275000000000001 / 100000000000000000 : ℚ), (31715000000000001 / 40000000000000000 : ℚ)⟩
  r := (11777401090987 / 25000000000000 : ℚ)
  w := (3365463411687 / 2500000000000 : ℚ)
  center := (317125000000000007 / 400000000000000000 : ℚ)
  supportValue := (3099555061193289 / 12500000000000000 : ℚ)
  supportSlope := (-830757511310243 / 1250000000000000 : ℚ)
  oldCenter := (3099555061193289 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1827
  oldLo := (2478212290502793 / 10000000000000000 : ℚ)
  oldHi := (497 / 2000 : ℚ)
  oldPieces := [piece_639, piece_640]
}

noncomputable def cell_12967 : Cell := { cellDefaults with
  domain := ⟨(31715000000000001 / 40000000000000000 : ℚ), (19825000000000001 / 25000000000000000 : ℚ)⟩
  r := (11777401090987 / 25000000000000 : ℚ)
  w := (3365463411687 / 2500000000000 : ℚ)
  center := (317175000000000013 / 400000000000000000 : ℚ)
  supportValue := (12394059284166341 / 50000000000000000 : ℚ)
  supportSlope := (-207516054113291 / 312500000000000 : ℚ)
  oldCenter := (12394059284166341 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1827
  oldLo := (2478212290502793 / 10000000000000000 : ℚ)
  oldHi := (31 / 125 : ℚ)
  oldPieces := [piece_639]
}

noncomputable def cell_12968 : Cell := { cellDefaults with
  domain := ⟨(19825000000000001 / 25000000000000000 : ℚ), (31725000000000001 / 40000000000000000 : ℚ)⟩
  r := (47092109956539 / 100000000000000 : ℚ)
  w := (6731396590803 / 5000000000000 : ℚ)
  center := (317225000000000013 / 400000000000000000 : ℚ)
  supportValue := (309910685650347 / 1250000000000000 : ℚ)
  supportSlope := (-6641913590717771 / 10000000000000000 : ℚ)
  oldCenter := (309910685650347 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1828
  oldLo := (2478212290502793 / 10000000000000000 : ℚ)
  oldHi := (31 / 125 : ℚ)
  oldPieces := [piece_639]
}

noncomputable def cell_12969 : Cell := { cellDefaults with
  domain := ⟨(31725000000000001 / 40000000000000000 : ℚ), (317275000000000007 / 400000000000000000 : ℚ)⟩
  r := (47092109956539 / 100000000000000 : ℚ)
  w := (6731396590803 / 5000000000000 : ℚ)
  center := (634525000000000017 / 800000000000000000 : ℚ)
  supportValue := (991465012306613 / 4000000000000000 : ℚ)
  supportSlope := (-829650645274393 / 1250000000000000 : ℚ)
  oldCenter := (991465012306613 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1828
  oldLo := (2478212290502793 / 10000000000000000 : ℚ)
  oldHi := (31 / 125 : ℚ)
  oldPieces := [piece_639]
}

noncomputable def cell_12970 : Cell := { cellDefaults with
  domain := ⟨(317275000000000007 / 400000000000000000 : ℚ), (79325000000000001 / 100000000000000000 : ℚ)⟩
  r := (47092109956539 / 100000000000000 : ℚ)
  w := (6731396590803 / 5000000000000 : ℚ)
  center := (634575000000000011 / 800000000000000000 : ℚ)
  supportValue := (24782500337017643 / 100000000000000000 : ℚ)
  supportSlope := (-1664045938214653 / 2500000000000000 : ℚ)
  oldCenter := (24782500337017643 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1828
  oldLo := (99 / 400 : ℚ)
  oldHi := (31 / 125 : ℚ)
  oldPieces := [piece_638, piece_639]
}

noncomputable def cell_12971 : Cell := { cellDefaults with
  domain := ⟨(79325000000000001 / 100000000000000000 : ℚ), (158674999999999999 / 200000000000000000 : ℚ)⟩
  r := (47092109956539 / 100000000000000 : ℚ)
  w := (6731396590803 / 5000000000000 : ℚ)
  center := (317325000000000001 / 400000000000000000 : ℚ)
  supportValue := (24776218746192621 / 100000000000000000 : ℚ)
  supportSlope := (-133646586357477 / 200000000000000 : ℚ)
  oldCenter := (24776218746192621 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1828
  oldLo := (99 / 400 : ℚ)
  oldHi := (2478212290502793 / 10000000000000000 : ℚ)
  oldPieces := [piece_638]
}

noncomputable def cell_12972 : Cell := { cellDefaults with
  domain := ⟨(158674999999999999 / 200000000000000000 : ℚ), (39674999999999999 / 50000000000000000 : ℚ)⟩
  r := (47092109956539 / 100000000000000 : ℚ)
  w := (6731396590803 / 5000000000000 : ℚ)
  center := (63474999999999999 / 80000000000000000 : ℚ)
  supportValue := (1238393504015867 / 5000000000000000 : ℚ)
  supportSlope := (-6675539345396243 / 10000000000000000 : ℚ)
  oldCenter := (1238393504015867 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1828
  oldLo := (99 / 400 : ℚ)
  oldHi := (2478212290502793 / 10000000000000000 : ℚ)
  oldPieces := [piece_638]
}

noncomputable def cell_12973 : Cell := { cellDefaults with
  domain := ⟨(39674999999999999 / 50000000000000000 : ℚ), (158724999999999999 / 200000000000000000 : ℚ)⟩
  r := (9414929445013 / 20000000000000 : ℚ)
  w := (13463765571543 / 10000000000000 : ℚ)
  center := (63484999999999999 / 80000000000000000 : ℚ)
  supportValue := (24772575632611743 / 100000000000000000 : ℚ)
  supportSlope := (-3338580943736557 / 5000000000000000 : ℚ)
  oldCenter := (24772575632611743 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1829
  oldLo := (99 / 400 : ℚ)
  oldHi := (2478212290502793 / 10000000000000000 : ℚ)
  oldPieces := [piece_638]
}

noncomputable def cell_12974 : Cell := { cellDefaults with
  domain := ⟨(158724999999999999 / 200000000000000000 : ℚ), (79375000000000001 / 100000000000000000 : ℚ)⟩
  r := (9414929445013 / 20000000000000 : ℚ)
  w := (13463765571543 / 10000000000000 : ℚ)
  center := (317475000000000001 / 400000000000000000 : ℚ)
  supportValue := (24764233398795787 / 100000000000000000 : ℚ)
  supportSlope := (-6670415438966603 / 10000000000000000 : ℚ)
  oldCenter := (24764233398795787 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1829
  oldLo := (99 / 400 : ℚ)
  oldHi := (2478212290502793 / 10000000000000000 : ℚ)
  oldPieces := [piece_638]
}

noncomputable def cell_12975 : Cell := { cellDefaults with
  domain := ⟨(79375000000000001 / 100000000000000000 : ℚ), (31755000000000001 / 40000000000000000 : ℚ)⟩
  r := (9414929445013 / 20000000000000 : ℚ)
  w := (13463765571543 / 10000000000000 : ℚ)
  center := (317525000000000007 / 400000000000000000 : ℚ)
  supportValue := (24755899580009233 / 100000000000000000 : ℚ)
  supportSlope := (-1665924449478573 / 2500000000000000 : ℚ)
  oldCenter := (24755899580009233 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1829
  oldLo := (99 / 400 : ℚ)
  oldHi := (2478212290502793 / 10000000000000000 : ℚ)
  oldPieces := [piece_638]
}

noncomputable def cell_12976 : Cell := { cellDefaults with
  domain := ⟨(31755000000000001 / 40000000000000000 : ℚ), (317575000000000013 / 400000000000000000 : ℚ)⟩
  r := (9414929445013 / 20000000000000 : ℚ)
  w := (13463765571543 / 10000000000000 : ℚ)
  center := (635125000000000023 / 800000000000000000 : ℚ)
  supportValue := (12374857913947229 / 50000000000000000 : ℚ)
  supportSlope := (-419876148216541 / 625000000000000 : ℚ)
  oldCenter := (12374857913947229 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1829
  oldHi := (2478212290502793 / 10000000000000000 : ℚ)
  oldPieces := [piece_637, piece_638]
}

noncomputable def cell_12977 : Cell := { cellDefaults with
  domain := ⟨(317575000000000013 / 400000000000000000 : ℚ), (19850000000000001 / 25000000000000000 : ℚ)⟩
  r := (9414929445013 / 20000000000000 : ℚ)
  w := (13463765571543 / 10000000000000 : ℚ)
  center := (635175000000000029 / 800000000000000000 : ℚ)
  supportValue := (12372714791647571 / 50000000000000000 : ℚ)
  supportSlope := (-3368387246260469 / 5000000000000000 : ℚ)
  oldCenter := (12372714791647571 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1829
  oldPieces := [piece_637]
}

noncomputable def cell_12978 : Cell := { cellDefaults with
  domain := ⟨(19850000000000001 / 25000000000000000 : ℚ), (317625000000000013 / 400000000000000000 : ℚ)⟩
  r := (23528571818273 / 50000000000000 : ℚ)
  w := (13464630990697 / 10000000000000 : ℚ)
  center := (635225000000000029 / 800000000000000000 : ℚ)
  supportValue := (154715855054921 / 625000000000000 : ℚ)
  supportSlope := (-3330188812289813 / 5000000000000000 : ℚ)
  oldCenter := (154715855054921 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1830
  oldLo := (99 / 400 : ℚ)
  oldHi := (2478212290502793 / 10000000000000000 : ℚ)
  oldPieces := [piece_638]
}

noncomputable def cell_12979 : Cell := { cellDefaults with
  domain := ⟨(317625000000000013 / 400000000000000000 : ℚ), (31765000000000001 / 40000000000000000 : ℚ)⟩
  r := (23528571818273 / 50000000000000 : ℚ)
  w := (13464630990697 / 10000000000000 : ℚ)
  center := (635275000000000023 / 800000000000000000 : ℚ)
  supportValue := (12375223446417097 / 50000000000000000 : ℚ)
  supportSlope := (-6699585406018919 / 10000000000000000 : ℚ)
  oldCenter := (12375223446417097 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1830
  oldHi := (2478212290502793 / 10000000000000000 : ℚ)
  oldPieces := [piece_637, piece_638]
}

noncomputable def cell_12980 : Cell := { cellDefaults with
  domain := ⟨(31765000000000001 / 40000000000000000 : ℚ), (79425000000000001 / 100000000000000000 : ℚ)⟩
  r := (23528571818273 / 50000000000000 : ℚ)
  w := (13464630990697 / 10000000000000 : ℚ)
  center := (317675000000000007 / 400000000000000000 : ℚ)
  supportValue := (2474407853621319 / 10000000000000000 : ℚ)
  supportSlope := (-6725333684688113 / 10000000000000000 : ℚ)
  oldCenter := (2474407853621319 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1830
  oldPieces := [piece_637]
}

noncomputable def cell_12981 : Cell := { cellDefaults with
  domain := ⟨(79425000000000001 / 100000000000000000 : ℚ), (158874999999999999 / 200000000000000000 : ℚ)⟩
  r := (23528571818273 / 50000000000000 : ℚ)
  w := (13464630990697 / 10000000000000 : ℚ)
  center := (317725000000000001 / 400000000000000000 : ℚ)
  supportValue := (6183926766763867 / 25000000000000000 : ℚ)
  supportSlope := (-3334686623004801 / 5000000000000000 : ℚ)
  oldCenter := (6183926766763867 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1830
  oldPieces := [piece_637]
}

noncomputable def cell_12982 : Cell := { cellDefaults with
  domain := ⟨(158874999999999999 / 200000000000000000 : ℚ), (39724999999999999 / 50000000000000000 : ℚ)⟩
  r := (23528571818273 / 50000000000000 : ℚ)
  w := (13464630990697 / 10000000000000 : ℚ)
  center := (63554999999999999 / 80000000000000000 : ℚ)
  supportValue := (494548092686061 / 2000000000000000 : ℚ)
  supportSlope := (-6614859833954061 / 10000000000000000 : ℚ)
  oldCenter := (494548092686061 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1830
  oldPieces := [piece_637]
}

noncomputable def cell_12983 : Cell := { cellDefaults with
  domain := ⟨(39724999999999999 / 50000000000000000 : ℚ), (158924999999999999 / 200000000000000000 : ℚ)⟩
  r := (47039764479407 / 100000000000000 : ℚ)
  w := (67328541407 / 50000000000 : ℚ)
  center := (63564999999999999 / 80000000000000000 : ℚ)
  supportValue := (12365947709249607 / 50000000000000000 : ℚ)
  supportSlope := (-6642043025858781 / 10000000000000000 : ℚ)
  oldCenter := (12365947709249607 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1831
  oldPieces := [piece_637]
}

noncomputable def cell_12984 : Cell := { cellDefaults with
  domain := ⟨(158924999999999999 / 200000000000000000 : ℚ), (79475000000000001 / 100000000000000000 : ℚ)⟩
  r := (47039764479407 / 100000000000000 : ℚ)
  w := (67328541407 / 50000000000 : ℚ)
  center := (317875000000000001 / 400000000000000000 : ℚ)
  supportValue := (12361813361483881 / 50000000000000000 : ℚ)
  supportSlope := (-3294101675263721 / 5000000000000000 : ℚ)
  oldCenter := (12361813361483881 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1831
  oldPieces := [piece_637]
}

noncomputable def cell_12985 : Cell := { cellDefaults with
  domain := ⟨(79475000000000001 / 100000000000000000 : ℚ), (31795000000000001 / 40000000000000000 : ℚ)⟩
  r := (47039764479407 / 100000000000000 : ℚ)
  w := (67328541407 / 50000000000 : ℚ)
  center := (317925000000000007 / 400000000000000000 : ℚ)
  supportValue := (12357712234663251 / 50000000000000000 : ℚ)
  supportSlope := (-6535721729567283 / 10000000000000000 : ℚ)
  oldCenter := (12357712234663251 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1831
  oldPieces := [piece_637]
}

noncomputable def cell_12986 : Cell := { cellDefaults with
  domain := ⟨(31795000000000001 / 40000000000000000 : ℚ), (19875000000000001 / 25000000000000000 : ℚ)⟩
  r := (47039764479407 / 100000000000000 : ℚ)
  w := (67328541407 / 50000000000 : ℚ)
  center := (317975000000000013 / 400000000000000000 : ℚ)
  supportValue := (24707286995429031 / 100000000000000000 : ℚ)
  supportSlope := (-324227115324277 / 500000000000000 : ℚ)
  oldCenter := (24707286995429031 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1831
  oldPieces := [piece_637]
}

noncomputable def cell_12987 : Cell := { cellDefaults with
  domain := ⟨(19875000000000001 / 25000000000000000 : ℚ), (79509078212290503 / 100000000000000000 : ℚ)⟩
  center := (159009078212290507 / 200000000000000000 : ℚ)
  supportValue := (96532795850477 / 390625000000000 : ℚ)
  supportSlope := (-6514447201574729 / 10000000000000000 : ℚ)
  oldCenter := (96532795850477 / 390625000000000 : ℚ)
  oldPieces := [piece_637]
}

noncomputable def cell_12988 : Cell := { cellDefaults with
  domain := ⟨(79509078212290503 / 100000000000000000 : ℚ), (39759078212290501 / 50000000000000000 : ℚ)⟩
  center := (31805446927374301 / 40000000000000000 : ℚ)
  supportValue := (12353249308587713 / 50000000000000000 : ℚ)
  supportSlope := (-6477516379364521 / 10000000000000000 : ℚ)
  oldCenter := (12353249308587713 / 50000000000000000 : ℚ)
  oldPieces := [piece_637]
}

noncomputable def cell_12989 : Cell := { cellDefaults with
  domain := ⟨(39759078212290501 / 50000000000000000 : ℚ), (159045391061452503 / 200000000000000000 : ℚ)⟩
  center := (318081703910614507 / 400000000000000000 : ℚ)
  supportValue := (12351037691165713 / 50000000000000000 : ℚ)
  supportSlope := (-645022961444687 / 1000000000000000 : ℚ)
  oldCenter := (12351037691165713 / 50000000000000000 : ℚ)
  oldPieces := [piece_637]
}

noncomputable def cell_12990 : Cell := { cellDefaults with
  domain := ⟨(159045391061452503 / 200000000000000000 : ℚ), (1272372206703910523 / 1600000000000000000 : ℚ)⟩
  center := (2544735335195530547 / 3200000000000000000 : ℚ)
  supportValue := (4940085955053417 / 20000000000000000 : ℚ)
  supportSlope := (-6440091669572917 / 10000000000000000 : ℚ)
  oldCenter := (4940085955053417 / 20000000000000000 : ℚ)
  oldPieces := [piece_637]
}

noncomputable def cell_12991 : Cell := { cellDefaults with
  domain := ⟨(1272372206703910523 / 1600000000000000000 : ℚ), (636190642458100511 / 800000000000000000 : ℚ)⟩
  center := (508950698324022309 / 640000000000000000 : ℚ)
  supportValue := (12350068032929523 / 50000000000000000 : ℚ)
  supportSlope := (-6824804125423949 / 10000000000000000 : ℚ)
  oldCenter := (12350068032929523 / 50000000000000000 : ℚ)
  oldLo := (493 / 2000 : ℚ)
  oldPieces := [piece_636, piece_637]
}

noncomputable def cell_12992 : Cell := { cellDefaults with
  domain := ⟨(636190642458100511 / 800000000000000000 : ℚ), (63619972067039101 / 80000000000000000 : ℚ)⟩
  center := (1272390363128491521 / 1600000000000000000 : ℚ)
  supportValue := (24699429401162573 / 100000000000000000 : ℚ)
  supportSlope := (-1892604214794327 / 2500000000000000 : ℚ)
  oldCenter := (24699429401162573 / 100000000000000000 : ℚ)
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_12993 : Cell := { cellDefaults with
  domain := ⟨(63619972067039101 / 80000000000000000 : ℚ), (79527234636871501 / 100000000000000000 : ℚ)⟩
  center := (636208798882681509 / 800000000000000000 : ℚ)
  supportValue := (24698153920534827 / 100000000000000000 : ℚ)
  supportSlope := (-3737566310660543 / 5000000000000000 : ℚ)
  oldCenter := (24698153920534827 / 100000000000000000 : ℚ)
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_12994 : Cell := { cellDefaults with
  domain := ⟨(79527234636871501 / 100000000000000000 : ℚ), (159063547486033501 / 200000000000000000 : ℚ)⟩
  center := (318118016759776503 / 400000000000000000 : ℚ)
  supportValue := (2469570701455469 / 10000000000000000 : ℚ)
  supportSlope := (-1823814295648333 / 2500000000000000 : ℚ)
  oldCenter := (2469570701455469 / 10000000000000000 : ℚ)
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_12995 : Cell := { cellDefaults with
  domain := ⟨(159063547486033501 / 200000000000000000 : ℚ), (39768156424581 / 50000000000000 : ℚ)⟩
  center := (318136173184357501 / 400000000000000000 : ℚ)
  supportValue := (24692397685897297 / 100000000000000000 : ℚ)
  supportSlope := (-88420872382763 / 125000000000000 : ℚ)
  oldCenter := (24692397685897297 / 100000000000000000 : ℚ)
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_12996 : Cell := { cellDefaults with
  domain := ⟨(39768156424581 / 50000000000000 : ℚ), (159079469273742999 / 200000000000000000 : ℚ)⟩
  center := (318152094972066999 / 400000000000000000 : ℚ)
  supportValue := (12344809148176737 / 50000000000000000 : ℚ)
  supportSlope := (-107734845886251 / 156250000000000 : ℚ)
  oldCenter := (12344809148176737 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1833
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_12997 : Cell := { cellDefaults with
  domain := ⟨(159079469273742999 / 200000000000000000 : ℚ), (79543156424580999 / 100000000000000000 : ℚ)⟩
  center := (318165782122904997 / 400000000000000000 : ℚ)
  supportValue := (24687283813149707 / 100000000000000000 : ℚ)
  supportSlope := (-1350406725504677 / 2000000000000000 : ℚ)
  oldCenter := (24687283813149707 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1833
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_12998 : Cell := { cellDefaults with
  domain := ⟨(79543156424580999 / 100000000000000000 : ℚ), (159093156424580997 / 200000000000000000 : ℚ)⟩
  center := (63635893854748599 / 80000000000000000 : ℚ)
  supportValue := (24684996752157223 / 100000000000000000 : ℚ)
  supportSlope := (-6617630571582991 / 10000000000000000 : ℚ)
  oldCenter := (24684996752157223 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1833
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_12999 : Cell := { cellDefaults with
  domain := ⟨(159093156424580997 / 200000000000000000 : ℚ), (39774999999999999 / 50000000000000000 : ℚ)⟩
  center := (318193156424580993 / 400000000000000000 : ℚ)
  supportValue := (12341377159730013 / 50000000000000000 : ℚ)
  supportSlope := (-32454967605093 / 50000000000000 : ℚ)
  oldCenter := (12341377159730013 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1833
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

theorem check_12950 : cell_12950.check = true := by
  decide +kernel

theorem check_12951 : cell_12951.check = true := by
  decide +kernel

theorem check_12952 : cell_12952.check = true := by
  decide +kernel

theorem check_12953 : cell_12953.check = true := by
  decide +kernel

theorem check_12954 : cell_12954.check = true := by
  decide +kernel

theorem check_12955 : cell_12955.check = true := by
  decide +kernel

theorem check_12956 : cell_12956.check = true := by
  decide +kernel

theorem check_12957 : cell_12957.check = true := by
  decide +kernel

theorem check_12958 : cell_12958.check = true := by
  decide +kernel

theorem check_12959 : cell_12959.check = true := by
  decide +kernel

theorem check_12960 : cell_12960.check = true := by
  decide +kernel

theorem check_12961 : cell_12961.check = true := by
  decide +kernel

theorem check_12962 : cell_12962.check = true := by
  decide +kernel

theorem check_12963 : cell_12963.check = true := by
  decide +kernel

theorem check_12964 : cell_12964.check = true := by
  decide +kernel

theorem check_12965 : cell_12965.check = true := by
  decide +kernel

theorem check_12966 : cell_12966.check = true := by
  decide +kernel

theorem check_12967 : cell_12967.check = true := by
  decide +kernel

theorem check_12968 : cell_12968.check = true := by
  decide +kernel

theorem check_12969 : cell_12969.check = true := by
  decide +kernel

theorem check_12970 : cell_12970.check = true := by
  decide +kernel

theorem check_12971 : cell_12971.check = true := by
  decide +kernel

theorem check_12972 : cell_12972.check = true := by
  decide +kernel

theorem check_12973 : cell_12973.check = true := by
  decide +kernel

theorem check_12974 : cell_12974.check = true := by
  decide +kernel

theorem check_12975 : cell_12975.check = true := by
  decide +kernel

theorem check_12976 : cell_12976.check = true := by
  decide +kernel

theorem check_12977 : cell_12977.check = true := by
  decide +kernel

theorem check_12978 : cell_12978.check = true := by
  decide +kernel

theorem check_12979 : cell_12979.check = true := by
  decide +kernel

theorem check_12980 : cell_12980.check = true := by
  decide +kernel

theorem check_12981 : cell_12981.check = true := by
  decide +kernel

theorem check_12982 : cell_12982.check = true := by
  decide +kernel

theorem check_12983 : cell_12983.check = true := by
  decide +kernel

theorem check_12984 : cell_12984.check = true := by
  decide +kernel

theorem check_12985 : cell_12985.check = true := by
  decide +kernel

theorem check_12986 : cell_12986.check = true := by
  decide +kernel

theorem check_12987 : cell_12987.check = true := by
  decide +kernel

theorem check_12988 : cell_12988.check = true := by
  decide +kernel

theorem check_12989 : cell_12989.check = true := by
  decide +kernel

theorem check_12990 : cell_12990.check = true := by
  decide +kernel

theorem check_12991 : cell_12991.check = true := by
  decide +kernel

theorem check_12992 : cell_12992.check = true := by
  decide +kernel

theorem check_12993 : cell_12993.check = true := by
  decide +kernel

theorem check_12994 : cell_12994.check = true := by
  decide +kernel

theorem check_12995 : cell_12995.check = true := by
  decide +kernel

theorem check_12996 : cell_12996.check = true := by
  decide +kernel

theorem check_12997 : cell_12997.check = true := by
  decide +kernel

theorem check_12998 : cell_12998.check = true := by
  decide +kernel

theorem check_12999 : cell_12999.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12950, cell_12951, cell_12952, cell_12953, cell_12954, cell_12955, cell_12956, cell_12957, cell_12958, cell_12959, cell_12960, cell_12961, cell_12962, cell_12963, cell_12964, cell_12965, cell_12966, cell_12967, cell_12968, cell_12969, cell_12970, cell_12971, cell_12972, cell_12973, cell_12974, cell_12975, cell_12976, cell_12977, cell_12978, cell_12979, cell_12980, cell_12981, cell_12982, cell_12983, cell_12984, cell_12985, cell_12986, cell_12987, cell_12988, cell_12989, cell_12990, cell_12991, cell_12992, cell_12993, cell_12994, cell_12995, cell_12996, cell_12997, cell_12998, cell_12999]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12950, check_12951, check_12952, check_12953, check_12954, check_12955, check_12956, check_12957, check_12958, check_12959, check_12960, check_12961, check_12962, check_12963, check_12964, check_12965, check_12966, check_12967, check_12968, check_12969, check_12970, check_12971, check_12972, check_12973, check_12974, check_12975, check_12976, check_12977, check_12978, check_12979, check_12980, check_12981, check_12982, check_12983, check_12984, check_12985, check_12986, check_12987, check_12988, check_12989, check_12990, check_12991, check_12992, check_12993, check_12994, check_12995, check_12996, check_12997, check_12998, check_12999, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0259

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0259
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0259
open AnalyticBounds.ExpressionCertificate

theorem linked_12950 : Linked cell_12950 pieces := by
  link_source cell_12950 with piece_1823 using piece_1823_mem, piece_641_mem

theorem linked_12951 : Linked cell_12951 pieces := by
  link_source cell_12951 with piece_1823 using piece_1823_mem, piece_641_mem

theorem linked_12952 : Linked cell_12952 pieces := by
  link_source cell_12952 with piece_1824 using piece_1824_mem, piece_641_mem

theorem linked_12953 : Linked cell_12953 pieces := by
  link_source cell_12953 with piece_1824 using piece_1824_mem, piece_641_mem

theorem linked_12954 : Linked cell_12954 pieces := by
  link_source cell_12954 with piece_1824 using piece_1824_mem, piece_641_mem

theorem linked_12955 : Linked cell_12955 pieces := by
  link_source cell_12955 with piece_1824 using piece_1824_mem, ⟨piece_640_mem, piece_641_mem⟩

theorem linked_12956 : Linked cell_12956 pieces := by
  link_source cell_12956 with piece_1825 using piece_1825_mem, ⟨piece_640_mem, piece_641_mem⟩

theorem linked_12957 : Linked cell_12957 pieces := by
  link_source cell_12957 with piece_1825 using piece_1825_mem, piece_640_mem

theorem linked_12958 : Linked cell_12958 pieces := by
  link_source cell_12958 with piece_1825 using piece_1825_mem, piece_640_mem

theorem linked_12959 : Linked cell_12959 pieces := by
  link_source cell_12959 with piece_1825 using piece_1825_mem, piece_640_mem

theorem linked_12960 : Linked cell_12960 pieces := by
  link_source cell_12960 with piece_1826 using piece_1826_mem, piece_640_mem

theorem linked_12961 : Linked cell_12961 pieces := by
  link_source cell_12961 with piece_1826 using piece_1826_mem, piece_640_mem

theorem linked_12962 : Linked cell_12962 pieces := by
  link_source cell_12962 with piece_1826 using piece_1826_mem, piece_640_mem

theorem linked_12963 : Linked cell_12963 pieces := by
  link_source cell_12963 with piece_1826 using piece_1826_mem, piece_640_mem

theorem linked_12964 : Linked cell_12964 pieces := by
  link_source cell_12964 with piece_1827 using piece_1827_mem, piece_640_mem

theorem linked_12965 : Linked cell_12965 pieces := by
  link_source cell_12965 with piece_1827 using piece_1827_mem, piece_640_mem

theorem linked_12966 : Linked cell_12966 pieces := by
  link_source cell_12966 with piece_1827 using piece_1827_mem, ⟨piece_639_mem, piece_640_mem⟩

theorem linked_12967 : Linked cell_12967 pieces := by
  link_source cell_12967 with piece_1827 using piece_1827_mem, piece_639_mem

theorem linked_12968 : Linked cell_12968 pieces := by
  link_source cell_12968 with piece_1828 using piece_1828_mem, piece_639_mem

theorem linked_12969 : Linked cell_12969 pieces := by
  link_source cell_12969 with piece_1828 using piece_1828_mem, piece_639_mem

theorem linked_12970 : Linked cell_12970 pieces := by
  link_source cell_12970 with piece_1828 using piece_1828_mem, ⟨piece_638_mem, piece_639_mem⟩

theorem linked_12971 : Linked cell_12971 pieces := by
  link_source cell_12971 with piece_1828 using piece_1828_mem, piece_638_mem

theorem linked_12972 : Linked cell_12972 pieces := by
  link_source cell_12972 with piece_1828 using piece_1828_mem, piece_638_mem

theorem linked_12973 : Linked cell_12973 pieces := by
  link_source cell_12973 with piece_1829 using piece_1829_mem, piece_638_mem

theorem linked_12974 : Linked cell_12974 pieces := by
  link_source cell_12974 with piece_1829 using piece_1829_mem, piece_638_mem

theorem linked_12975 : Linked cell_12975 pieces := by
  link_source cell_12975 with piece_1829 using piece_1829_mem, piece_638_mem

theorem linked_12976 : Linked cell_12976 pieces := by
  link_source cell_12976 with piece_1829 using piece_1829_mem, ⟨piece_637_mem, piece_638_mem⟩

theorem linked_12977 : Linked cell_12977 pieces := by
  link_source cell_12977 with piece_1829 using piece_1829_mem, piece_637_mem

theorem linked_12978 : Linked cell_12978 pieces := by
  link_source cell_12978 with piece_1830 using piece_1830_mem, piece_638_mem

theorem linked_12979 : Linked cell_12979 pieces := by
  link_source cell_12979 with piece_1830 using piece_1830_mem, ⟨piece_637_mem, piece_638_mem⟩

theorem linked_12980 : Linked cell_12980 pieces := by
  link_source cell_12980 with piece_1830 using piece_1830_mem, piece_637_mem

theorem linked_12981 : Linked cell_12981 pieces := by
  link_source cell_12981 with piece_1830 using piece_1830_mem, piece_637_mem

theorem linked_12982 : Linked cell_12982 pieces := by
  link_source cell_12982 with piece_1830 using piece_1830_mem, piece_637_mem

theorem linked_12983 : Linked cell_12983 pieces := by
  link_source cell_12983 with piece_1831 using piece_1831_mem, piece_637_mem

theorem linked_12984 : Linked cell_12984 pieces := by
  link_source cell_12984 with piece_1831 using piece_1831_mem, piece_637_mem

theorem linked_12985 : Linked cell_12985 pieces := by
  link_source cell_12985 with piece_1831 using piece_1831_mem, piece_637_mem

theorem linked_12986 : Linked cell_12986 pieces := by
  link_source cell_12986 with piece_1831 using piece_1831_mem, piece_637_mem

theorem linked_12987 : Linked cell_12987 pieces := by
  link_source cell_12987 with piece_1832 using piece_1832_mem, piece_637_mem

theorem linked_12988 : Linked cell_12988 pieces := by
  link_source cell_12988 with piece_1832 using piece_1832_mem, piece_637_mem

theorem linked_12989 : Linked cell_12989 pieces := by
  link_source cell_12989 with piece_1832 using piece_1832_mem, piece_637_mem

theorem linked_12990 : Linked cell_12990 pieces := by
  link_source cell_12990 with piece_1832 using piece_1832_mem, piece_637_mem

theorem linked_12991 : Linked cell_12991 pieces := by
  link_source cell_12991 with piece_1832 using piece_1832_mem, ⟨piece_636_mem, piece_637_mem⟩

theorem linked_12992 : Linked cell_12992 pieces := by
  link_source cell_12992 with piece_1832 using piece_1832_mem, piece_636_mem

theorem linked_12993 : Linked cell_12993 pieces := by
  link_source cell_12993 with piece_1832 using piece_1832_mem, piece_636_mem

theorem linked_12994 : Linked cell_12994 pieces := by
  link_source cell_12994 with piece_1832 using piece_1832_mem, piece_636_mem

theorem linked_12995 : Linked cell_12995 pieces := by
  link_source cell_12995 with piece_1832 using piece_1832_mem, piece_636_mem

theorem linked_12996 : Linked cell_12996 pieces := by
  link_source cell_12996 with piece_1833 using piece_1833_mem, piece_636_mem

theorem linked_12997 : Linked cell_12997 pieces := by
  link_source cell_12997 with piece_1833 using piece_1833_mem, piece_636_mem

theorem linked_12998 : Linked cell_12998 pieces := by
  link_source cell_12998 with piece_1833 using piece_1833_mem, piece_636_mem

theorem linked_12999 : Linked cell_12999 pieces := by
  link_source cell_12999 with piece_1833 using piece_1833_mem, piece_636_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0259.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0259.cells,List.forall_mem_cons]
  exact ⟨linked_12950, linked_12951, linked_12952, linked_12953, linked_12954, linked_12955, linked_12956, linked_12957, linked_12958, linked_12959, linked_12960, linked_12961, linked_12962, linked_12963, linked_12964, linked_12965, linked_12966, linked_12967, linked_12968, linked_12969, linked_12970, linked_12971, linked_12972, linked_12973, linked_12974, linked_12975, linked_12976, linked_12977, linked_12978, linked_12979, linked_12980, linked_12981, linked_12982, linked_12983, linked_12984, linked_12985, linked_12986, linked_12987, linked_12988, linked_12989, linked_12990, linked_12991, linked_12992, linked_12993, linked_12994, linked_12995, linked_12996, linked_12997, linked_12998, linked_12999, by simp⟩

theorem covered : covers (79075000000000001 / 100000000000000000 : ℚ) (39774999999999999 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0259.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0259
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0260
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(39774999999999999 / 50000000000000000 : ℚ), (636424999999999987 / 800000000000000000 : ℚ)⟩
  branch := .left
  r := (5872176374963 / 12500000000000 : ℚ)
  w := (13483595417257 / 10000000000000 : ℚ)
  center := (1272824999999999971 / 1600000000000000000 : ℚ)
  supportValue := (12347641974733631 / 50000000000000000 : ℚ)
  supportSlope := (-726628616883131 / 1000000000000000 : ℚ)
  oldCenter := (12347641974733631 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1836
  oldLo := (123 / 500 : ℚ)
  oldHi := (493 / 2000 : ℚ)
  oldPieces := [piece_635]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13000 : Cell := { cellDefaults with
  r := (23502367063709 / 50000000000000 : ℚ)
  w := (3366813674149 / 2500000000000 : ℚ)
  newCoefficients := coefficients_1834
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13001 : Cell := { cellDefaults with
  domain := ⟨(636424999999999987 / 800000000000000000 : ℚ), (63644999999999999 / 80000000000000000 : ℚ)⟩
  r := (23502367063709 / 50000000000000 : ℚ)
  w := (3366813674149 / 2500000000000 : ℚ)
  center := (1272874999999999977 / 1600000000000000000 : ℚ)
  supportValue := (24693037517501337 / 100000000000000000 : ℚ)
  supportSlope := (-71133188781927 / 100000000000000 : ℚ)
  oldCenter := (24693037517501337 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1834
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13002 : Cell := { cellDefaults with
  domain := ⟨(63644999999999999 / 80000000000000000 : ℚ), (636474999999999993 / 800000000000000000 : ℚ)⟩
  r := (23502367063709 / 50000000000000 : ℚ)
  w := (3366813674149 / 2500000000000 : ℚ)
  center := (1272924999999999983 / 1600000000000000000 : ℚ)
  supportValue := (24690837393134427 / 100000000000000000 : ℚ)
  supportSlope := (-871209207215957 / 1250000000000000 : ℚ)
  oldCenter := (24690837393134427 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1834
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13003 : Cell := { cellDefaults with
  domain := ⟨(636474999999999993 / 800000000000000000 : ℚ), (159124999999999999 / 200000000000000000 : ℚ)⟩
  r := (23502367063709 / 50000000000000 : ℚ)
  w := (3366813674149 / 2500000000000 : ℚ)
  center := (1272974999999999989 / 1600000000000000000 : ℚ)
  supportValue := (12344340405240013 / 50000000000000000 : ℚ)
  supportSlope := (-6834440723081661 / 10000000000000000 : ℚ)
  oldCenter := (12344340405240013 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1834
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13004 : Cell := { cellDefaults with
  domain := ⟨(159124999999999999 / 200000000000000000 : ℚ), (636524999999999999 / 800000000000000000 : ℚ)⟩
  r := (23502367063709 / 50000000000000 : ℚ)
  w := (3366813674149 / 2500000000000 : ℚ)
  center := (254604999999999999 / 320000000000000000 : ℚ)
  supportValue := (1234328263420819 / 5000000000000000 : ℚ)
  supportSlope := (-3353414971076371 / 5000000000000000 : ℚ)
  oldCenter := (1234328263420819 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1834
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13005 : Cell := { cellDefaults with
  domain := ⟨(636524999999999999 / 800000000000000000 : ℚ), (318275000000000001 / 400000000000000000 : ℚ)⟩
  r := (23502367063709 / 50000000000000 : ℚ)
  w := (3366813674149 / 2500000000000 : ℚ)
  center := (1273075000000000001 / 1600000000000000000 : ℚ)
  supportValue := (12342244248204143 / 50000000000000000 : ℚ)
  supportSlope := (-6586151332753963 / 10000000000000000 : ℚ)
  oldCenter := (12342244248204143 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1834
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13006 : Cell := { cellDefaults with
  domain := ⟨(318275000000000001 / 400000000000000000 : ℚ), (127315000000000001 / 160000000000000000 : ℚ)⟩
  r := (23502367063709 / 50000000000000 : ℚ)
  w := (3366813674149 / 2500000000000 : ℚ)
  center := (1273125000000000007 / 1600000000000000000 : ℚ)
  supportValue := (6170612106450027 / 25000000000000000 : ℚ)
  supportSlope := (-3235899654736197 / 5000000000000000 : ℚ)
  oldCenter := (6170612106450027 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1834
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13007 : Cell := { cellDefaults with
  domain := ⟨(127315000000000001 / 160000000000000000 : ℚ), (79575000000000001 / 100000000000000000 : ℚ)⟩
  r := (23502367063709 / 50000000000000 : ℚ)
  w := (3366813674149 / 2500000000000 : ℚ)
  center := (1273175000000000013 / 1600000000000000000 : ℚ)
  supportValue := (315909672519 / 1280000000000 : ℚ)
  supportSlope := (-3181619928831099 / 5000000000000000 : ℚ)
  oldCenter := (315909672519 / 1280000000000 : ℚ)
  newCoefficients := coefficients_1834
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13008 : Cell := { cellDefaults with
  domain := ⟨(79575000000000001 / 100000000000000000 : ℚ), (636625000000000011 / 800000000000000000 : ℚ)⟩
  r := (23502367063709 / 50000000000000 : ℚ)
  w := (3366813674149 / 2500000000000 : ℚ)
  center := (1273225000000000019 / 1600000000000000000 : ℚ)
  supportValue := (24678470981572143 / 100000000000000000 : ℚ)
  supportSlope := (-782500001525927 / 1250000000000000 : ℚ)
  oldCenter := (24678470981572143 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1834
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13009 : Cell := { cellDefaults with
  domain := ⟨(636625000000000011 / 800000000000000000 : ℚ), (318325000000000007 / 400000000000000000 : ℚ)⟩
  r := (23502367063709 / 50000000000000 : ℚ)
  w := (3366813674149 / 2500000000000 : ℚ)
  center := (50931000000000001 / 64000000000000000 : ℚ)
  supportValue := (24676530279111633 / 100000000000000000 : ℚ)
  supportSlope := (-6161659167033633 / 10000000000000000 : ℚ)
  oldCenter := (24676530279111633 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1834
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13010 : Cell := { cellDefaults with
  domain := ⟨(318325000000000007 / 400000000000000000 : ℚ), (636675000000000017 / 800000000000000000 : ℚ)⟩
  r := (23502367063709 / 50000000000000 : ℚ)
  w := (3366813674149 / 2500000000000 : ℚ)
  center := (1273325000000000031 / 1600000000000000000 : ℚ)
  supportValue := (24674602315314567 / 100000000000000000 : ℚ)
  supportSlope := (-758480231279799 / 1250000000000000 : ℚ)
  oldCenter := (24674602315314567 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1834
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13011 : Cell := { cellDefaults with
  domain := ⟨(636675000000000017 / 800000000000000000 : ℚ), (31835000000000001 / 40000000000000000 : ℚ)⟩
  r := (23502367063709 / 50000000000000 : ℚ)
  w := (3366813674149 / 2500000000000 : ℚ)
  center := (1273375000000000037 / 1600000000000000000 : ℚ)
  supportValue := (12336360138154051 / 50000000000000000 : ℚ)
  supportSlope := (-298910584095999 / 500000000000000 : ℚ)
  oldCenter := (12336360138154051 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1834
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13012 : Cell := { cellDefaults with
  domain := ⟨(31835000000000001 / 40000000000000000 : ℚ), (636725000000000023 / 800000000000000000 : ℚ)⟩
  r := (23502367063709 / 50000000000000 : ℚ)
  w := (3366813674149 / 2500000000000 : ℚ)
  center := (1273425000000000043 / 1600000000000000000 : ℚ)
  supportValue := (12335432814269359 / 50000000000000000 : ℚ)
  supportSlope := (-736558286513667 / 1250000000000000 : ℚ)
  oldCenter := (12335432814269359 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1834
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13013 : Cell := { cellDefaults with
  domain := ⟨(636725000000000023 / 800000000000000000 : ℚ), (318375000000000013 / 400000000000000000 : ℚ)⟩
  r := (23502367063709 / 50000000000000 : ℚ)
  w := (3366813674149 / 2500000000000 : ℚ)
  center := (1273475000000000049 / 1600000000000000000 : ℚ)
  supportValue := (12334518600850311 / 50000000000000000 : ℚ)
  supportSlope := (-290516651150839 / 500000000000000 : ℚ)
  oldCenter := (12334518600850311 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1834
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13014 : Cell := { cellDefaults with
  domain := ⟨(318375000000000013 / 400000000000000000 : ℚ), (19900000000000001 / 25000000000000000 : ℚ)⟩
  r := (23502367063709 / 50000000000000 : ℚ)
  w := (3366813674149 / 2500000000000 : ℚ)
  center := (636775000000000029 / 800000000000000000 : ℚ)
  supportValue := (24666358629521667 / 100000000000000000 : ℚ)
  supportSlope := (-711719042580853 / 1250000000000000 : ℚ)
  oldCenter := (24666358629521667 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1834
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13015 : Cell := { cellDefaults with
  domain := ⟨(19900000000000001 / 25000000000000000 : ℚ), (1273650000000000059 / 1600000000000000000 : ℚ)⟩
  r := (46989628593289 / 100000000000000 : ℚ)
  w := (3368160298143 / 2500000000000 : ℚ)
  center := (2547250000000000123 / 3200000000000000000 : ℚ)
  supportValue := (6167017564705287 / 25000000000000000 : ℚ)
  supportSlope := (-576655497939229 / 1000000000000000 : ℚ)
  oldCenter := (6167017564705287 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1835
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13016 : Cell := { cellDefaults with
  domain := ⟨(1273650000000000059 / 1600000000000000000 : ℚ), (636850000000000027 / 800000000000000000 : ℚ)⟩
  r := (46989628593289 / 100000000000000 : ℚ)
  w := (3368160298143 / 2500000000000 : ℚ)
  center := (2547350000000000113 / 3200000000000000000 : ℚ)
  supportValue := (6166570091990807 / 25000000000000000 : ℚ)
  supportSlope := (-5689525887966909 / 10000000000000000 : ℚ)
  oldCenter := (6166570091990807 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1835
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13017 : Cell := { cellDefaults with
  domain := ⟨(636850000000000027 / 800000000000000000 : ℚ), (318450000000000011 / 400000000000000000 : ℚ)⟩
  r := (46989628593289 / 100000000000000 : ℚ)
  w := (3368160298143 / 2500000000000 : ℚ)
  center := (1273750000000000049 / 1600000000000000000 : ℚ)
  supportValue := (24663656739833917 / 100000000000000000 : ℚ)
  supportSlope := (-2789971650614399 / 5000000000000000 : ℚ)
  oldCenter := (24663656739833917 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1835
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13018 : Cell := { cellDefaults with
  domain := ⟨(318450000000000011 / 400000000000000000 : ℚ), (636950000000000017 / 800000000000000000 : ℚ)⟩
  r := (46989628593289 / 100000000000000 : ℚ)
  w := (3368160298143 / 2500000000000 : ℚ)
  center := (1273850000000000039 / 1600000000000000000 : ℚ)
  supportValue := (1233010645941757 / 5000000000000000 : ℚ)
  supportSlope := (-5442851135671323 / 10000000000000000 : ℚ)
  oldCenter := (1233010645941757 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1835
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13019 : Cell := { cellDefaults with
  domain := ⟨(636950000000000017 / 800000000000000000 : ℚ), (159250000000000003 / 200000000000000000 : ℚ)⟩
  r := (46989628593289 / 100000000000000 : ℚ)
  w := (3368160298143 / 2500000000000 : ℚ)
  center := (1273950000000000029 / 1600000000000000000 : ℚ)
  supportValue := (12328425827220371 / 50000000000000000 : ℚ)
  supportSlope := (-531546555575577 / 1000000000000000 : ℚ)
  oldCenter := (12328425827220371 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1835
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13020 : Cell := { cellDefaults with
  domain := ⟨(159250000000000003 / 200000000000000000 : ℚ), (637050000000000007 / 800000000000000000 : ℚ)⟩
  r := (46989628593289 / 100000000000000 : ℚ)
  w := (3368160298143 / 2500000000000 : ℚ)
  center := (1274050000000000019 / 1600000000000000000 : ℚ)
  supportValue := (192605994031709 / 781250000000000 : ℚ)
  supportSlope := (-2598346506857123 / 5000000000000000 : ℚ)
  oldCenter := (192605994031709 / 781250000000000 : ℚ)
  newCoefficients := coefficients_1835
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13021 : Cell := { cellDefaults with
  domain := ⟨(637050000000000007 / 800000000000000000 : ℚ), (1274150000000000009 / 1600000000000000000 : ℚ)⟩
  r := (46989628593289 / 100000000000000 : ℚ)
  w := (3368160298143 / 2500000000000 : ℚ)
  center := (2548250000000000023 / 3200000000000000000 : ℚ)
  supportValue := (2465113401896019 / 10000000000000000 : ℚ)
  supportSlope := (-2556240645566177 / 5000000000000000 : ℚ)
  oldCenter := (2465113401896019 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1835
  oldLo := (493 / 2000 : ℚ)
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_636]
}

noncomputable def cell_13022 : Cell := { cellDefaults with
  domain := ⟨(1274150000000000009 / 1600000000000000000 : ℚ), (5096650000000000031 / 6400000000000000000 : ℚ)⟩
  r := (46989628593289 / 100000000000000 : ℚ)
  w := (3368160298143 / 2500000000000 : ℚ)
  center := (10193250000000000067 / 12800000000000000000 : ℚ)
  supportValue := (24650138812764333 / 100000000000000000 : ℚ)
  supportSlope := (-4918223593293683 / 10000000000000000 : ℚ)
  oldCenter := (24650138812764333 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1835
  oldHi := (247 / 1000 : ℚ)
  oldPieces := [piece_635, piece_636]
}

noncomputable def cell_13023 : Cell := { cellDefaults with
  domain := ⟨(5096650000000000031 / 6400000000000000000 : ℚ), (2548350000000000013 / 3200000000000000000 : ℚ)⟩
  r := (46989628593289 / 100000000000000 : ℚ)
  w := (3368160298143 / 2500000000000 : ℚ)
  center := (10193350000000000057 / 12800000000000000000 : ℚ)
  supportValue := (12324893430283547 / 50000000000000000 : ℚ)
  supportSlope := (-5168531316180297 / 12500000000000000 : ℚ)
  oldCenter := (12324893430283547 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1835
  oldPieces := [piece_635]
}

noncomputable def cell_13024 : Cell := { cellDefaults with
  domain := ⟨(2548350000000000013 / 3200000000000000000 : ℚ), (318550000000000001 / 400000000000000000 : ℚ)⟩
  r := (46989628593289 / 100000000000000 : ℚ)
  w := (3368160298143 / 2500000000000 : ℚ)
  center := (5096750000000000021 / 6400000000000000000 : ℚ)
  supportValue := (123246501742211 / 500000000000000 : ℚ)
  supportSlope := (-1667410683595161 / 4000000000000000 : ℚ)
  oldCenter := (123246501742211 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1835
  oldPieces := [piece_635]
}

noncomputable def cell_13025 : Cell := { cellDefaults with
  domain := ⟨(318550000000000001 / 400000000000000000 : ℚ), (1274249999999999999 / 1600000000000000000 : ℚ)⟩
  r := (46989628593289 / 100000000000000 : ℚ)
  w := (3368160298143 / 2500000000000 : ℚ)
  center := (2548450000000000003 / 3200000000000000000 : ℚ)
  supportValue := (6162084357766271 / 25000000000000000 : ℚ)
  supportSlope := (-1059643501708613 / 2500000000000000 : ℚ)
  oldCenter := (6162084357766271 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1835
  oldPieces := [piece_635]
}

noncomputable def cell_13026 : Cell := { cellDefaults with
  domain := ⟨(1274249999999999999 / 1600000000000000000 : ℚ), (637149999999999997 / 800000000000000000 : ℚ)⟩
  r := (46989628593289 / 100000000000000 : ℚ)
  w := (3368160298143 / 2500000000000 : ℚ)
  center := (2548549999999999993 / 3200000000000000000 : ℚ)
  supportValue := (6161749424511187 / 25000000000000000 : ℚ)
  supportSlope := (-43374113749376947 / 100000000000000000 : ℚ)
  oldCenter := (6161749424511187 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1835
  oldPieces := [piece_635]
}

noncomputable def cell_13027 : Cell := { cellDefaults with
  domain := ⟨(637149999999999997 / 800000000000000000 : ℚ), (1274349999999999989 / 1600000000000000000 : ℚ)⟩
  r := (46989628593289 / 100000000000000 : ℚ)
  w := (3368160298143 / 2500000000000 : ℚ)
  center := (2548649999999999983 / 3200000000000000000 : ℚ)
  supportValue := (12322812991163473 / 50000000000000000 : ℚ)
  supportSlope := (-2221737818333347 / 5000000000000000 : ℚ)
  oldCenter := (12322812991163473 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1835
  oldPieces := [piece_635]
}

noncomputable def cell_13028 : Cell := { cellDefaults with
  domain := ⟨(1274349999999999989 / 1600000000000000000 : ℚ), (79649999999999999 / 100000000000000000 : ℚ)⟩
  r := (46989628593289 / 100000000000000 : ℚ)
  w := (3368160298143 / 2500000000000 : ℚ)
  center := (2548749999999999973 / 3200000000000000000 : ℚ)
  supportValue := (1540263742929311 / 6250000000000000 : ℚ)
  supportSlope := (-569711646545347 / 1250000000000000 : ℚ)
  oldCenter := (1540263742929311 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1835
  oldPieces := [piece_635]
}

noncomputable def cell_13029 : Cell := { cellDefaults with
  domain := ⟨(79649999999999999 / 100000000000000000 : ℚ), (1274449999999999989 / 1600000000000000000 : ℚ)⟩
  center := (2548849999999999973 / 3200000000000000000 : ℚ)
  supportValue := (153995410845369 / 625000000000000 : ℚ)
  supportSlope := (-25054487469853 / 50000000000000 : ℚ)
  oldCenter := (153995410845369 / 625000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13030 : Cell := { cellDefaults with
  domain := ⟨(1274449999999999989 / 1600000000000000000 : ℚ), (637249999999999997 / 800000000000000000 : ℚ)⟩
  center := (2548949999999999983 / 3200000000000000000 : ℚ)
  supportValue := (12318837307603407 / 50000000000000000 : ℚ)
  supportSlope := (-323517313744993 / 625000000000000 : ℚ)
  oldCenter := (12318837307603407 / 50000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13031 : Cell := { cellDefaults with
  domain := ⟨(637249999999999997 / 800000000000000000 : ℚ), (1274549999999999999 / 1600000000000000000 : ℚ)⟩
  center := (2549049999999999993 / 3200000000000000000 : ℚ)
  supportValue := (1231801459799829 / 5000000000000000 : ℚ)
  supportSlope := (-5359144474680907 / 10000000000000000 : ℚ)
  oldCenter := (1231801459799829 / 5000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13032 : Cell := { cellDefaults with
  domain := ⟨(1274549999999999999 / 1600000000000000000 : ℚ), (318650000000000001 / 400000000000000000 : ℚ)⟩
  center := (2549150000000000003 / 3200000000000000000 : ℚ)
  supportValue := (6158580881404637 / 25000000000000000 : ℚ)
  supportSlope := (-1390704675778703 / 2500000000000000 : ℚ)
  oldCenter := (6158580881404637 / 25000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13033 : Cell := { cellDefaults with
  domain := ⟨(318650000000000001 / 400000000000000000 : ℚ), (1274650000000000009 / 1600000000000000000 : ℚ)⟩
  center := (2549250000000000013 / 3200000000000000000 : ℚ)
  supportValue := (24632550477824297 / 100000000000000000 : ℚ)
  supportSlope := (-723946700575889 / 1250000000000000 : ℚ)
  oldCenter := (24632550477824297 / 100000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13034 : Cell := { cellDefaults with
  domain := ⟨(1274650000000000009 / 1600000000000000000 : ℚ), (637350000000000007 / 800000000000000000 : ℚ)⟩
  center := (2549350000000000023 / 3200000000000000000 : ℚ)
  supportValue := (6157675349921407 / 25000000000000000 : ℚ)
  supportSlope := (-3025511767056041 / 5000000000000000 : ℚ)
  oldCenter := (6157675349921407 / 25000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13035 : Cell := { cellDefaults with
  domain := ⟨(637350000000000007 / 800000000000000000 : ℚ), (2549450000000000033 / 3200000000000000000 : ℚ)⟩
  center := (5098850000000000061 / 6400000000000000000 : ℚ)
  supportValue := (39406785800879 / 160000000000000 : ℚ)
  supportSlope := (-6268783523246041 / 10000000000000000 : ℚ)
  oldCenter := (39406785800879 / 160000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13036 : Cell := { cellDefaults with
  domain := ⟨(2549450000000000033 / 3200000000000000000 : ℚ), (1274750000000000019 / 1600000000000000000 : ℚ)⟩
  center := (5098950000000000071 / 6400000000000000000 : ℚ)
  supportValue := (1231412468674743 / 5000000000000000 : ℚ)
  supportSlope := (-6428652007314707 / 10000000000000000 : ℚ)
  oldCenter := (1231412468674743 / 5000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13037 : Cell := { cellDefaults with
  domain := ⟨(1274750000000000019 / 1600000000000000000 : ℚ), (2549550000000000043 / 3200000000000000000 : ℚ)⟩
  center := (5099050000000000081 / 6400000000000000000 : ℚ)
  supportValue := (1231361583472903 / 5000000000000000 : ℚ)
  supportSlope := (-412586479041591 / 625000000000000 : ℚ)
  oldCenter := (1231361583472903 / 5000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13038 : Cell := { cellDefaults with
  domain := ⟨(2549550000000000043 / 3200000000000000000 : ℚ), (159350000000000003 / 200000000000000000 : ℚ)⟩
  center := (5099150000000000091 / 6400000000000000000 : ℚ)
  supportValue := (24626203106028427 / 100000000000000000 : ℚ)
  supportSlope := (-6788802190768483 / 10000000000000000 : ℚ)
  oldCenter := (24626203106028427 / 100000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13039 : Cell := { cellDefaults with
  domain := ⟨(159350000000000003 / 200000000000000000 : ℚ), (1274850000000000029 / 1600000000000000000 : ℚ)⟩
  center := (2549650000000000053 / 3200000000000000000 : ℚ)
  supportValue := (24624625487472387 / 100000000000000000 : ℚ)
  supportSlope := (-3552535015866809 / 5000000000000000 : ℚ)
  oldCenter := (24624625487472387 / 100000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13040 : Cell := { cellDefaults with
  domain := ⟨(1274850000000000029 / 1600000000000000000 : ℚ), (637450000000000017 / 800000000000000000 : ℚ)⟩
  center := (2549750000000000063 / 3200000000000000000 : ℚ)
  supportValue := (2462233158918359 / 10000000000000000 : ℚ)
  supportSlope := (-1520177080848687 / 2000000000000000 : ℚ)
  oldCenter := (2462233158918359 / 10000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13041 : Cell := { cellDefaults with
  domain := ⟨(637450000000000017 / 800000000000000000 : ℚ), (2549850000000000073 / 3200000000000000000 : ℚ)⟩
  center := (5099650000000000141 / 6400000000000000000 : ℚ)
  supportValue := (769389099063359 / 3125000000000000 : ℚ)
  supportSlope := (-125694278254583 / 156250000000000 : ℚ)
  oldCenter := (769389099063359 / 3125000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13042 : Cell := { cellDefaults with
  domain := ⟨(2549850000000000073 / 3200000000000000000 : ℚ), (1274950000000000039 / 1600000000000000000 : ℚ)⟩
  center := (5099750000000000151 / 6400000000000000000 : ℚ)
  supportValue := (12309584020932393 / 50000000000000000 : ℚ)
  supportSlope := (-1048813439607949 / 1250000000000000 : ℚ)
  oldCenter := (12309584020932393 / 50000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13043 : Cell := { cellDefaults with
  domain := ⟨(1274950000000000039 / 1600000000000000000 : ℚ), (2549950000000000083 / 3200000000000000000 : ℚ)⟩
  center := (5099850000000000161 / 6400000000000000000 : ℚ)
  supportValue := (4923565446838511 / 20000000000000000 : ℚ)
  supportSlope := (-4392709058577809 / 5000000000000000 : ℚ)
  oldCenter := (4923565446838511 / 20000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13044 : Cell := { cellDefaults with
  domain := ⟨(2549950000000000083 / 3200000000000000000 : ℚ), (318750000000000011 / 400000000000000000 : ℚ)⟩
  center := (5099950000000000171 / 6400000000000000000 : ℚ)
  supportValue := (24616420204533707 / 100000000000000000 : ℚ)
  supportSlope := (-9241862676033961 / 10000000000000000 : ℚ)
  oldCenter := (24616420204533707 / 100000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13045 : Cell := { cellDefaults with
  domain := ⟨(318750000000000011 / 400000000000000000 : ℚ), (2550050000000000093 / 3200000000000000000 : ℚ)⟩
  center := (5100050000000000181 / 6400000000000000000 : ℚ)
  supportValue := (24614936067125837 / 100000000000000000 : ℚ)
  supportSlope := (-15277663946099 / 15625000000000 : ℚ)
  oldCenter := (24614936067125837 / 100000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13046 : Cell := { cellDefaults with
  domain := ⟨(2550050000000000093 / 3200000000000000000 : ℚ), (1275050000000000049 / 1600000000000000000 : ℚ)⟩
  center := (5100150000000000191 / 6400000000000000000 : ℚ)
  supportValue := (2461340980685797 / 10000000000000000 : ℚ)
  supportSlope := (-20349688579361 / 19531250000000 : ℚ)
  oldCenter := (2461340980685797 / 10000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13047 : Cell := { cellDefaults with
  domain := ⟨(1275050000000000049 / 1600000000000000000 : ℚ), (2550150000000000103 / 3200000000000000000 : ℚ)⟩
  center := (5100250000000000201 / 6400000000000000000 : ℚ)
  supportValue := (24611723712871067 / 100000000000000000 : ℚ)
  supportSlope := (-2801457507714819 / 2500000000000000 : ℚ)
  oldCenter := (24611723712871067 / 100000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13048 : Cell := { cellDefaults with
  domain := ⟨(2550150000000000103 / 3200000000000000000 : ℚ), (637550000000000027 / 800000000000000000 : ℚ)⟩
  center := (5100350000000000211 / 6400000000000000000 : ℚ)
  supportValue := (4921979972885449 / 20000000000000000 : ℚ)
  supportSlope := (-76269431569901 / 62500000000000 : ℚ)
  oldCenter := (4921979972885449 / 20000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13049 : Cell := { cellDefaults with
  domain := ⟨(637550000000000027 / 800000000000000000 : ℚ), (2550250000000000113 / 3200000000000000000 : ℚ)⟩
  center := (5100450000000000221 / 6400000000000000000 : ℚ)
  supportValue := (6151974441280121 / 25000000000000000 : ℚ)
  supportSlope := (-2705156659991999 / 2000000000000000 : ℚ)
  oldCenter := (6151974441280121 / 25000000000000000 : ℚ)
  oldPieces := [piece_635]
}

theorem check_13000 : cell_13000.check = true := by
  decide +kernel

theorem check_13001 : cell_13001.check = true := by
  decide +kernel

theorem check_13002 : cell_13002.check = true := by
  decide +kernel

theorem check_13003 : cell_13003.check = true := by
  decide +kernel

theorem check_13004 : cell_13004.check = true := by
  decide +kernel

theorem check_13005 : cell_13005.check = true := by
  decide +kernel

theorem check_13006 : cell_13006.check = true := by
  decide +kernel

theorem check_13007 : cell_13007.check = true := by
  decide +kernel

theorem check_13008 : cell_13008.check = true := by
  decide +kernel

theorem check_13009 : cell_13009.check = true := by
  decide +kernel

theorem check_13010 : cell_13010.check = true := by
  decide +kernel

theorem check_13011 : cell_13011.check = true := by
  decide +kernel

theorem check_13012 : cell_13012.check = true := by
  decide +kernel

theorem check_13013 : cell_13013.check = true := by
  decide +kernel

theorem check_13014 : cell_13014.check = true := by
  decide +kernel

theorem check_13015 : cell_13015.check = true := by
  decide +kernel

theorem check_13016 : cell_13016.check = true := by
  decide +kernel

theorem check_13017 : cell_13017.check = true := by
  decide +kernel

theorem check_13018 : cell_13018.check = true := by
  decide +kernel

theorem check_13019 : cell_13019.check = true := by
  decide +kernel

theorem check_13020 : cell_13020.check = true := by
  decide +kernel

theorem check_13021 : cell_13021.check = true := by
  decide +kernel

theorem check_13022 : cell_13022.check = true := by
  decide +kernel

theorem check_13023 : cell_13023.check = true := by
  decide +kernel

theorem check_13024 : cell_13024.check = true := by
  decide +kernel

theorem check_13025 : cell_13025.check = true := by
  decide +kernel

theorem check_13026 : cell_13026.check = true := by
  decide +kernel

theorem check_13027 : cell_13027.check = true := by
  decide +kernel

theorem check_13028 : cell_13028.check = true := by
  decide +kernel

theorem check_13029 : cell_13029.check = true := by
  decide +kernel

theorem check_13030 : cell_13030.check = true := by
  decide +kernel

theorem check_13031 : cell_13031.check = true := by
  decide +kernel

theorem check_13032 : cell_13032.check = true := by
  decide +kernel

theorem check_13033 : cell_13033.check = true := by
  decide +kernel

theorem check_13034 : cell_13034.check = true := by
  decide +kernel

theorem check_13035 : cell_13035.check = true := by
  decide +kernel

theorem check_13036 : cell_13036.check = true := by
  decide +kernel

theorem check_13037 : cell_13037.check = true := by
  decide +kernel

theorem check_13038 : cell_13038.check = true := by
  decide +kernel

theorem check_13039 : cell_13039.check = true := by
  decide +kernel

theorem check_13040 : cell_13040.check = true := by
  decide +kernel

theorem check_13041 : cell_13041.check = true := by
  decide +kernel

theorem check_13042 : cell_13042.check = true := by
  decide +kernel

theorem check_13043 : cell_13043.check = true := by
  decide +kernel

theorem check_13044 : cell_13044.check = true := by
  decide +kernel

theorem check_13045 : cell_13045.check = true := by
  decide +kernel

theorem check_13046 : cell_13046.check = true := by
  decide +kernel

theorem check_13047 : cell_13047.check = true := by
  decide +kernel

theorem check_13048 : cell_13048.check = true := by
  decide +kernel

theorem check_13049 : cell_13049.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13000, cell_13001, cell_13002, cell_13003, cell_13004, cell_13005, cell_13006, cell_13007, cell_13008, cell_13009, cell_13010, cell_13011, cell_13012, cell_13013, cell_13014, cell_13015, cell_13016, cell_13017, cell_13018, cell_13019, cell_13020, cell_13021, cell_13022, cell_13023, cell_13024, cell_13025, cell_13026, cell_13027, cell_13028, cell_13029, cell_13030, cell_13031, cell_13032, cell_13033, cell_13034, cell_13035, cell_13036, cell_13037, cell_13038, cell_13039, cell_13040, cell_13041, cell_13042, cell_13043, cell_13044, cell_13045, cell_13046, cell_13047, cell_13048, cell_13049]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13000, check_13001, check_13002, check_13003, check_13004, check_13005, check_13006, check_13007, check_13008, check_13009, check_13010, check_13011, check_13012, check_13013, check_13014, check_13015, check_13016, check_13017, check_13018, check_13019, check_13020, check_13021, check_13022, check_13023, check_13024, check_13025, check_13026, check_13027, check_13028, check_13029, check_13030, check_13031, check_13032, check_13033, check_13034, check_13035, check_13036, check_13037, check_13038, check_13039, check_13040, check_13041, check_13042, check_13043, check_13044, check_13045, check_13046, check_13047, check_13048, check_13049, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0260

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0260
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0260
open AnalyticBounds.ExpressionCertificate

theorem linked_13000 : Linked cell_13000 pieces := by
  link_source cell_13000 with piece_1834 using piece_1834_mem, piece_636_mem

theorem linked_13001 : Linked cell_13001 pieces := by
  link_source cell_13001 with piece_1834 using piece_1834_mem, piece_636_mem

theorem linked_13002 : Linked cell_13002 pieces := by
  link_source cell_13002 with piece_1834 using piece_1834_mem, piece_636_mem

theorem linked_13003 : Linked cell_13003 pieces := by
  link_source cell_13003 with piece_1834 using piece_1834_mem, piece_636_mem

theorem linked_13004 : Linked cell_13004 pieces := by
  link_source cell_13004 with piece_1834 using piece_1834_mem, piece_636_mem

theorem linked_13005 : Linked cell_13005 pieces := by
  link_source cell_13005 with piece_1834 using piece_1834_mem, piece_636_mem

theorem linked_13006 : Linked cell_13006 pieces := by
  link_source cell_13006 with piece_1834 using piece_1834_mem, piece_636_mem

theorem linked_13007 : Linked cell_13007 pieces := by
  link_source cell_13007 with piece_1834 using piece_1834_mem, piece_636_mem

theorem linked_13008 : Linked cell_13008 pieces := by
  link_source cell_13008 with piece_1834 using piece_1834_mem, piece_636_mem

theorem linked_13009 : Linked cell_13009 pieces := by
  link_source cell_13009 with piece_1834 using piece_1834_mem, piece_636_mem

theorem linked_13010 : Linked cell_13010 pieces := by
  link_source cell_13010 with piece_1834 using piece_1834_mem, piece_636_mem

theorem linked_13011 : Linked cell_13011 pieces := by
  link_source cell_13011 with piece_1834 using piece_1834_mem, piece_636_mem

theorem linked_13012 : Linked cell_13012 pieces := by
  link_source cell_13012 with piece_1834 using piece_1834_mem, piece_636_mem

theorem linked_13013 : Linked cell_13013 pieces := by
  link_source cell_13013 with piece_1834 using piece_1834_mem, piece_636_mem

theorem linked_13014 : Linked cell_13014 pieces := by
  link_source cell_13014 with piece_1834 using piece_1834_mem, piece_636_mem

theorem linked_13015 : Linked cell_13015 pieces := by
  link_source cell_13015 with piece_1835 using piece_1835_mem, piece_636_mem

theorem linked_13016 : Linked cell_13016 pieces := by
  link_source cell_13016 with piece_1835 using piece_1835_mem, piece_636_mem

theorem linked_13017 : Linked cell_13017 pieces := by
  link_source cell_13017 with piece_1835 using piece_1835_mem, piece_636_mem

theorem linked_13018 : Linked cell_13018 pieces := by
  link_source cell_13018 with piece_1835 using piece_1835_mem, piece_636_mem

theorem linked_13019 : Linked cell_13019 pieces := by
  link_source cell_13019 with piece_1835 using piece_1835_mem, piece_636_mem

theorem linked_13020 : Linked cell_13020 pieces := by
  link_source cell_13020 with piece_1835 using piece_1835_mem, piece_636_mem

theorem linked_13021 : Linked cell_13021 pieces := by
  link_source cell_13021 with piece_1835 using piece_1835_mem, piece_636_mem

theorem linked_13022 : Linked cell_13022 pieces := by
  link_source cell_13022 with piece_1835 using piece_1835_mem, ⟨piece_635_mem, piece_636_mem⟩

theorem linked_13023 : Linked cell_13023 pieces := by
  link_source cell_13023 with piece_1835 using piece_1835_mem, piece_635_mem

theorem linked_13024 : Linked cell_13024 pieces := by
  link_source cell_13024 with piece_1835 using piece_1835_mem, piece_635_mem

theorem linked_13025 : Linked cell_13025 pieces := by
  link_source cell_13025 with piece_1835 using piece_1835_mem, piece_635_mem

theorem linked_13026 : Linked cell_13026 pieces := by
  link_source cell_13026 with piece_1835 using piece_1835_mem, piece_635_mem

theorem linked_13027 : Linked cell_13027 pieces := by
  link_source cell_13027 with piece_1835 using piece_1835_mem, piece_635_mem

theorem linked_13028 : Linked cell_13028 pieces := by
  link_source cell_13028 with piece_1835 using piece_1835_mem, piece_635_mem

theorem linked_13029 : Linked cell_13029 pieces := by
  link_source cell_13029 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13030 : Linked cell_13030 pieces := by
  link_source cell_13030 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13031 : Linked cell_13031 pieces := by
  link_source cell_13031 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13032 : Linked cell_13032 pieces := by
  link_source cell_13032 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13033 : Linked cell_13033 pieces := by
  link_source cell_13033 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13034 : Linked cell_13034 pieces := by
  link_source cell_13034 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13035 : Linked cell_13035 pieces := by
  link_source cell_13035 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13036 : Linked cell_13036 pieces := by
  link_source cell_13036 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13037 : Linked cell_13037 pieces := by
  link_source cell_13037 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13038 : Linked cell_13038 pieces := by
  link_source cell_13038 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13039 : Linked cell_13039 pieces := by
  link_source cell_13039 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13040 : Linked cell_13040 pieces := by
  link_source cell_13040 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13041 : Linked cell_13041 pieces := by
  link_source cell_13041 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13042 : Linked cell_13042 pieces := by
  link_source cell_13042 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13043 : Linked cell_13043 pieces := by
  link_source cell_13043 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13044 : Linked cell_13044 pieces := by
  link_source cell_13044 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13045 : Linked cell_13045 pieces := by
  link_source cell_13045 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13046 : Linked cell_13046 pieces := by
  link_source cell_13046 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13047 : Linked cell_13047 pieces := by
  link_source cell_13047 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13048 : Linked cell_13048 pieces := by
  link_source cell_13048 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13049 : Linked cell_13049 pieces := by
  link_source cell_13049 with piece_1836 using piece_1836_mem, piece_635_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0260.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0260.cells,List.forall_mem_cons]
  exact ⟨linked_13000, linked_13001, linked_13002, linked_13003, linked_13004, linked_13005, linked_13006, linked_13007, linked_13008, linked_13009, linked_13010, linked_13011, linked_13012, linked_13013, linked_13014, linked_13015, linked_13016, linked_13017, linked_13018, linked_13019, linked_13020, linked_13021, linked_13022, linked_13023, linked_13024, linked_13025, linked_13026, linked_13027, linked_13028, linked_13029, linked_13030, linked_13031, linked_13032, linked_13033, linked_13034, linked_13035, linked_13036, linked_13037, linked_13038, linked_13039, linked_13040, linked_13041, linked_13042, linked_13043, linked_13044, linked_13045, linked_13046, linked_13047, linked_13048, linked_13049, by simp⟩

theorem covered : covers (39774999999999999 / 50000000000000000 : ℚ) (2550250000000000113 / 3200000000000000000 : ℚ)
    (SourceCertificates.Chunk0260.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0260
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0261
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(2550250000000000113 / 3200000000000000000 : ℚ), (5100550000000000231 / 6400000000000000000 : ℚ)⟩
  branch := .left
  r := (23478871961343 / 50000000000000 : ℚ)
  w := (13480109897209 / 10000000000000 : ℚ)
  center := (10201050000000000457 / 12800000000000000000 : ℚ)
  supportValue := (76894350716157 / 312500000000000 : ℚ)
  supportSlope := (-14834227944361027 / 10000000000000000 : ℚ)
  oldCenter := (76894350716157 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1837
  oldLo := (123 / 500 : ℚ)
  oldHi := (493 / 2000 : ℚ)
  oldPieces := [piece_635]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13050 : Cell := { cellDefaults with
  r := (5872176374963 / 12500000000000 : ℚ)
  w := (13483595417257 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1836
  oldPieces := [piece_635]
}

noncomputable def cell_13051 : Cell := { cellDefaults with
  domain := ⟨(5100550000000000231 / 6400000000000000000 : ℚ), (1275150000000000059 / 1600000000000000000 : ℚ)⟩
  r := (5872176374963 / 12500000000000 : ℚ)
  w := (13483595417257 / 10000000000000 : ℚ)
  center := (10201150000000000467 / 12800000000000000000 : ℚ)
  supportValue := (24605040596204383 / 100000000000000000 : ℚ)
  supportSlope := (-15970168292865419 / 10000000000000000 : ℚ)
  oldCenter := (24605040596204383 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1836
  oldPieces := [piece_635]
}

noncomputable def cell_13052 : Cell := { cellDefaults with
  domain := ⟨(1275150000000000059 / 1600000000000000000 : ℚ), (5100650000000000241 / 6400000000000000000 : ℚ)⟩
  r := (5872176374963 / 12500000000000 : ℚ)
  w := (13483595417257 / 10000000000000 : ℚ)
  center := (10201250000000000477 / 12800000000000000000 : ℚ)
  supportValue := (6150935035641899 / 25000000000000000 : ℚ)
  supportSlope := (-8707616426483451 / 5000000000000000 : ℚ)
  oldCenter := (6150935035641899 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1836
  oldPieces := [piece_635]
}

noncomputable def cell_13053 : Cell := { cellDefaults with
  domain := ⟨(5100650000000000241 / 6400000000000000000 : ℚ), (2550350000000000123 / 3200000000000000000 : ℚ)⟩
  r := (5872176374963 / 12500000000000 : ℚ)
  w := (13483595417257 / 10000000000000 : ℚ)
  center := (10201350000000000487 / 12800000000000000000 : ℚ)
  supportValue := (3075288780394957 / 12500000000000000 : ℚ)
  supportSlope := (-19341755676334513 / 10000000000000000 : ℚ)
  oldCenter := (3075288780394957 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1836
  oldPieces := [piece_635]
}

noncomputable def cell_13054 : Cell := { cellDefaults with
  domain := ⟨(2550350000000000123 / 3200000000000000000 : ℚ), (10201450000000000497 / 12800000000000000000 : ℚ)⟩
  r := (5872176374963 / 12500000000000 : ℚ)
  w := (13483595417257 / 10000000000000 : ℚ)
  center := (20402850000000000989 / 25600000000000000000 : ℚ)
  supportValue := (1230053780571357 / 5000000000000000 : ℚ)
  supportSlope := (-21259007772867027 / 10000000000000000 : ℚ)
  oldCenter := (1230053780571357 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1836
  oldPieces := [piece_635]
}

noncomputable def cell_13055 : Cell := { cellDefaults with
  domain := ⟨(10201450000000000497 / 12800000000000000000 : ℚ), (5100750000000000251 / 6400000000000000000 : ℚ)⟩
  r := (5872176374963 / 12500000000000 : ℚ)
  w := (13483595417257 / 10000000000000 : ℚ)
  center := (20402950000000000999 / 25600000000000000000 : ℚ)
  supportValue := (4920087142621033 / 20000000000000000 : ℚ)
  supportSlope := (-18738330031593877 / 10000000000000000 : ℚ)
  oldCenter := (4920087142621033 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1836
  oldPieces := [piece_635]
}

noncomputable def cell_13056 : Cell := { cellDefaults with
  domain := ⟨(5100750000000000251 / 6400000000000000000 : ℚ), (19925000000000001 / 25000000000000000 : ℚ)⟩
  r := (5872176374963 / 12500000000000 : ℚ)
  w := (13483595417257 / 10000000000000 : ℚ)
  center := (10201550000000000507 / 12800000000000000000 : ℚ)
  supportValue := (491990841929407 / 2000000000000000 : ℚ)
  supportSlope := (-9136474288879067 / 10000000000000000 : ℚ)
  oldCenter := (491990841929407 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1836
  oldLo := (491 / 2000 : ℚ)
  oldHi := (123 / 500 : ℚ)
  oldPieces := [piece_634]
}

noncomputable def cell_13057 : Cell := { cellDefaults with
  domain := ⟨(19925000000000001 / 25000000000000000 : ℚ), (2550450000000000123 / 3200000000000000000 : ℚ)⟩
  center := (5100850000000000251 / 6400000000000000000 : ℚ)
  supportValue := (12314718956979777 / 50000000000000000 : ℚ)
  supportSlope := (-779409977664869 / 1250000000000000 : ℚ)
  oldCenter := (12314718956979777 / 50000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13058 : Cell := { cellDefaults with
  domain := ⟨(2550450000000000123 / 3200000000000000000 : ℚ), (1275250000000000059 / 1600000000000000000 : ℚ)⟩
  center := (5100950000000000241 / 6400000000000000000 : ℚ)
  supportValue := (12314225794512791 / 50000000000000000 : ℚ)
  supportSlope := (-6392609687467327 / 10000000000000000 : ℚ)
  oldCenter := (12314225794512791 / 50000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13059 : Cell := { cellDefaults with
  domain := ⟨(1275250000000000059 / 1600000000000000000 : ℚ), (2550550000000000113 / 3200000000000000000 : ℚ)⟩
  center := (5101050000000000231 / 6400000000000000000 : ℚ)
  supportValue := (24627439734565257 / 100000000000000000 : ℚ)
  supportSlope := (-26249828143821 / 40000000000000 : ℚ)
  oldCenter := (24627439734565257 / 100000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13060 : Cell := { cellDefaults with
  domain := ⟨(2550550000000000113 / 3200000000000000000 : ℚ), (637650000000000027 / 800000000000000000 : ℚ)⟩
  center := (5101150000000000221 / 6400000000000000000 : ℚ)
  supportValue := (4925283500494857 / 20000000000000000 : ℚ)
  supportSlope := (-6746575597383461 / 10000000000000000 : ℚ)
  oldCenter := (4925283500494857 / 20000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13061 : Cell := { cellDefaults with
  domain := ⟨(637650000000000027 / 800000000000000000 : ℚ), (1275350000000000049 / 1600000000000000000 : ℚ)⟩
  center := (2550650000000000103 / 3200000000000000000 : ℚ)
  supportValue := (984994017790899 / 4000000000000000 : ℚ)
  supportSlope := (-1764206432266667 / 2500000000000000 : ℚ)
  oldCenter := (984994017790899 / 4000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13062 : Cell := { cellDefaults with
  domain := ⟨(1275350000000000049 / 1600000000000000000 : ℚ), (318850000000000011 / 400000000000000000 : ℚ)⟩
  center := (2550750000000000093 / 3200000000000000000 : ℚ)
  supportValue := (12311286563300951 / 50000000000000000 : ℚ)
  supportSlope := (-58922989516769 / 78125000000000 : ℚ)
  oldCenter := (12311286563300951 / 50000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13063 : Cell := { cellDefaults with
  domain := ⟨(318850000000000011 / 400000000000000000 : ℚ), (1275450000000000039 / 1600000000000000000 : ℚ)⟩
  center := (2550850000000000083 / 3200000000000000000 : ℚ)
  supportValue := (4924025522777719 / 20000000000000000 : ℚ)
  supportSlope := (-814367335626979 / 1000000000000000 : ℚ)
  oldCenter := (4924025522777719 / 20000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13064 : Cell := { cellDefaults with
  domain := ⟨(1275450000000000039 / 1600000000000000000 : ℚ), (2550950000000000073 / 3200000000000000000 : ℚ)⟩
  center := (5101850000000000151 / 6400000000000000000 : ℚ)
  supportValue := (49236216497363 / 200000000000000 : ℚ)
  supportSlope := (-8695802645669363 / 10000000000000000 : ℚ)
  oldCenter := (49236216497363 / 200000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13065 : Cell := { cellDefaults with
  domain := ⟨(2550950000000000073 / 3200000000000000000 : ℚ), (637750000000000017 / 800000000000000000 : ℚ)⟩
  center := (5101950000000000141 / 6400000000000000000 : ℚ)
  supportValue := (24616716270437553 / 100000000000000000 : ℚ)
  supportSlope := (-4568963133380523 / 5000000000000000 : ℚ)
  oldCenter := (24616716270437553 / 100000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13066 : Cell := { cellDefaults with
  domain := ⟨(637750000000000017 / 800000000000000000 : ℚ), (2551050000000000063 / 3200000000000000000 : ℚ)⟩
  center := (5102050000000000131 / 6400000000000000000 : ℚ)
  supportValue := (6153812432259939 / 25000000000000000 : ℚ)
  supportSlope := (-15448188846223 / 16000000000000 : ℚ)
  oldCenter := (6153812432259939 / 25000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13067 : Cell := { cellDefaults with
  domain := ⟨(2551050000000000063 / 3200000000000000000 : ℚ), (1275550000000000029 / 1600000000000000000 : ℚ)⟩
  center := (5102150000000000121 / 6400000000000000000 : ℚ)
  supportValue := (24613744429217163 / 100000000000000000 : ℚ)
  supportSlope := (-2567845704515549 / 2500000000000000 : ℚ)
  oldCenter := (24613744429217163 / 100000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13068 : Cell := { cellDefaults with
  domain := ⟨(1275550000000000029 / 1600000000000000000 : ℚ), (2551150000000000053 / 3200000000000000000 : ℚ)⟩
  center := (5102250000000000111 / 6400000000000000000 : ℚ)
  supportValue := (615302097576267 / 2500000000000000 : ℚ)
  supportSlope := (-5511540736709559 / 5000000000000000 : ℚ)
  oldCenter := (615302097576267 / 2500000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13069 : Cell := { cellDefaults with
  domain := ⟨(2551150000000000053 / 3200000000000000000 : ℚ), (159450000000000003 / 200000000000000000 : ℚ)⟩
  center := (5102350000000000101 / 6400000000000000000 : ℚ)
  supportValue := (12305146116674591 / 50000000000000000 : ℚ)
  supportSlope := (-598427652020621 / 500000000000000 : ℚ)
  oldCenter := (12305146116674591 / 50000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13070 : Cell := { cellDefaults with
  domain := ⟨(159450000000000003 / 200000000000000000 : ℚ), (2551250000000000043 / 3200000000000000000 : ℚ)⟩
  center := (5102450000000000091 / 6400000000000000000 : ℚ)
  supportValue := (3076041550943337 / 12500000000000000 : ℚ)
  supportSlope := (-20638861896851 / 15625000000000 : ℚ)
  oldCenter := (3076041550943337 / 12500000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13071 : Cell := { cellDefaults with
  domain := ⟨(2551250000000000043 / 3200000000000000000 : ℚ), (5102550000000000081 / 6400000000000000000 : ℚ)⟩
  center := (10205050000000000167 / 12800000000000000000 : ℚ)
  supportValue := (12303334517337247 / 50000000000000000 : ℚ)
  supportSlope := (-7210285803900983 / 5000000000000000 : ℚ)
  oldCenter := (12303334517337247 / 50000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13072 : Cell := { cellDefaults with
  domain := ⟨(5102550000000000081 / 6400000000000000000 : ℚ), (1275650000000000019 / 1600000000000000000 : ℚ)⟩
  center := (10205150000000000157 / 12800000000000000000 : ℚ)
  supportValue := (768922000610661 / 3125000000000000 : ℚ)
  supportSlope := (-7728901571334097 / 5000000000000000 : ℚ)
  oldCenter := (768922000610661 / 3125000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13073 : Cell := { cellDefaults with
  domain := ⟨(1275650000000000019 / 1600000000000000000 : ℚ), (5102650000000000071 / 6400000000000000000 : ℚ)⟩
  center := (10205250000000000147 / 12800000000000000000 : ℚ)
  supportValue := (12302148951493831 / 50000000000000000 : ℚ)
  supportSlope := (-4189282903741961 / 2500000000000000 : ℚ)
  oldCenter := (12302148951493831 / 50000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13074 : Cell := { cellDefaults with
  domain := ⟨(5102650000000000071 / 6400000000000000000 : ℚ), (2551350000000000033 / 3200000000000000000 : ℚ)⟩
  center := (10205350000000000137 / 12800000000000000000 : ℚ)
  supportValue := (2460292732816401 / 10000000000000000 : ℚ)
  supportSlope := (-9225992790292493 / 5000000000000000 : ℚ)
  oldCenter := (2460292732816401 / 10000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13075 : Cell := { cellDefaults with
  domain := ⟨(2551350000000000033 / 3200000000000000000 : ℚ), (5102750000000000061 / 6400000000000000000 : ℚ)⟩
  center := (10205450000000000127 / 12800000000000000000 : ℚ)
  supportValue := (123007012064683 / 500000000000000 : ℚ)
  supportSlope := (-20796176185344653 / 10000000000000000 : ℚ)
  oldCenter := (123007012064683 / 500000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13076 : Cell := { cellDefaults with
  domain := ⟨(5102750000000000061 / 6400000000000000000 : ℚ), (20411050000000000239 / 25600000000000000000 : ℚ)⟩
  center := (40822050000000000483 / 51200000000000000000 : ℚ)
  supportValue := (12300138219885823 / 50000000000000000 : ℚ)
  supportSlope := (-11372831119019793 / 5000000000000000 : ℚ)
  oldCenter := (12300138219885823 / 50000000000000000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13077 : Cell := { cellDefaults with
  domain := ⟨(20411050000000000239 / 25600000000000000000 : ℚ), (10205550000000000117 / 12800000000000000000 : ℚ)⟩
  center := (40822150000000000473 / 51200000000000000000 : ℚ)
  supportValue := (2459995296305659 / 10000000000000000 : ℚ)
  supportSlope := (-1052272504722501 / 1000000000000000 : ℚ)
  oldCenter := (2459995296305659 / 10000000000000000 : ℚ)
  oldLo := (491 / 2000 : ℚ)
  oldPieces := [piece_634, piece_635]
}

noncomputable def cell_13078 : Cell := { cellDefaults with
  domain := ⟨(10205550000000000117 / 12800000000000000000 : ℚ), (637850000000000007 / 800000000000000000 : ℚ)⟩
  center := (20411150000000000229 / 25600000000000000000 : ℚ)
  supportValue := (614991581650739 / 2500000000000000 : ℚ)
  supportSlope := (-1141567932663293 / 1250000000000000 : ℚ)
  oldCenter := (614991581650739 / 2500000000000000 : ℚ)
  oldLo := (491 / 2000 : ℚ)
  oldHi := (123 / 500 : ℚ)
  oldPieces := [piece_634]
}

noncomputable def cell_13079 : Cell := { cellDefaults with
  domain := ⟨(637850000000000007 / 800000000000000000 : ℚ), (318950000000000001 / 400000000000000000 : ℚ)⟩
  center := (1275750000000000009 / 1600000000000000000 : ℚ)
  supportValue := (12298315621545189 / 50000000000000000 : ℚ)
  supportSlope := (-4565467154780579 / 5000000000000000 : ℚ)
  oldCenter := (12298315621545189 / 50000000000000000 : ℚ)
  oldLo := (491 / 2000 : ℚ)
  oldHi := (123 / 500 : ℚ)
  oldPieces := [piece_634]
}

noncomputable def cell_13080 : Cell := { cellDefaults with
  domain := ⟨(318950000000000001 / 400000000000000000 : ℚ), (79749999999999999 / 100000000000000000 : ℚ)⟩
  center := (637949999999999997 / 800000000000000000 : ℚ)
  supportValue := (39340924859943 / 160000000000000 : ℚ)
  supportSlope := (-91263950548113 / 100000000000000 : ℚ)
  oldCenter := (39340924859943 / 160000000000000 : ℚ)
  oldLo := (491 / 2000 : ℚ)
  oldHi := (123 / 500 : ℚ)
  oldPieces := [piece_634]
}

noncomputable def cell_13081 : Cell := { cellDefaults with
  domain := ⟨(79749999999999999 / 100000000000000000 : ℚ), (2552049999999999973 / 3200000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (5104049999999999941 / 6400000000000000000 : ℚ)
  supportValue := (6155846769159859 / 25000000000000000 : ℚ)
  supportSlope := (-7343563510175221 / 10000000000000000 : ℚ)
  oldCenter := (6155846769159859 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldPieces := [piece_635]
}

noncomputable def cell_13082 : Cell := { cellDefaults with
  domain := ⟨(2552049999999999973 / 3200000000000000000 : ℚ), (1276049999999999989 / 1600000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (5104149999999999951 / 6400000000000000000 : ℚ)
  supportValue := (12311109901041463 / 50000000000000000 : ℚ)
  supportSlope := (-7604349977049857 / 10000000000000000 : ℚ)
  oldCenter := (12311109901041463 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldPieces := [piece_635]
}

noncomputable def cell_13083 : Cell := { cellDefaults with
  domain := ⟨(1276049999999999989 / 1600000000000000000 : ℚ), (638049999999999997 / 800000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (2552149999999999983 / 3200000000000000000 : ℚ)
  supportValue := (2462043599070213 / 10000000000000000 : ℚ)
  supportSlope := (-8058362433746329 / 10000000000000000 : ℚ)
  oldCenter := (2462043599070213 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldPieces := [piece_635]
}

noncomputable def cell_13084 : Cell := { cellDefaults with
  domain := ⟨(638049999999999997 / 800000000000000000 : ℚ), (2552249999999999993 / 3200000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (5104449999999999981 / 6400000000000000000 : ℚ)
  supportValue := (615460963575581 / 2500000000000000 : ℚ)
  supportSlope := (-8592610853170009 / 10000000000000000 : ℚ)
  oldCenter := (615460963575581 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldPieces := [piece_635]
}

noncomputable def cell_13085 : Cell := { cellDefaults with
  domain := ⟨(2552249999999999993 / 3200000000000000000 : ℚ), (1276149999999999999 / 1600000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (5104549999999999991 / 6400000000000000000 : ℚ)
  supportValue := (246170638684583 / 1000000000000000 : ℚ)
  supportSlope := (-4509324937078223 / 5000000000000000 : ℚ)
  oldCenter := (246170638684583 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldPieces := [piece_635]
}

noncomputable def cell_13086 : Cell := { cellDefaults with
  domain := ⟨(1276149999999999999 / 1600000000000000000 : ℚ), (2552350000000000003 / 3200000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (5104650000000000001 / 6400000000000000000 : ℚ)
  supportValue := (24615617480130753 / 100000000000000000 : ℚ)
  supportSlope := (-9515026822127951 / 10000000000000000 : ℚ)
  oldCenter := (24615617480130753 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldPieces := [piece_635]
}

noncomputable def cell_13087 : Cell := { cellDefaults with
  domain := ⟨(2552350000000000003 / 3200000000000000000 : ℚ), (319050000000000001 / 400000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (5104750000000000011 / 6400000000000000000 : ℚ)
  supportValue := (6153534018570101 / 25000000000000000 : ℚ)
  supportSlope := (-126294159667127 / 125000000000000 : ℚ)
  oldCenter := (6153534018570101 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldPieces := [piece_635]
}

noncomputable def cell_13088 : Cell := { cellDefaults with
  domain := ⟨(319050000000000001 / 400000000000000000 : ℚ), (2552450000000000013 / 3200000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (5104850000000000021 / 6400000000000000000 : ℚ)
  supportValue := (307656306488831 / 1250000000000000 : ℚ)
  supportSlope := (-5408387047828881 / 5000000000000000 : ℚ)
  oldCenter := (307656306488831 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldPieces := [piece_635]
}

noncomputable def cell_13089 : Cell := { cellDefaults with
  domain := ⟨(2552450000000000013 / 3200000000000000000 : ℚ), (1276250000000000009 / 1600000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (5104950000000000031 / 6400000000000000000 : ℚ)
  supportValue := (984429960796119 / 4000000000000000 : ℚ)
  supportSlope := (-11706241506316213 / 10000000000000000 : ℚ)
  oldCenter := (984429960796119 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldPieces := [piece_635]
}

noncomputable def cell_13090 : Cell := { cellDefaults with
  domain := ⟨(1276250000000000009 / 1600000000000000000 : ℚ), (2552550000000000023 / 3200000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (5105050000000000041 / 6400000000000000000 : ℚ)
  supportValue := (12304418090846181 / 50000000000000000 : ℚ)
  supportSlope := (-100462829425153 / 78125000000000 : ℚ)
  oldCenter := (12304418090846181 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldPieces := [piece_635]
}

noncomputable def cell_13091 : Cell := { cellDefaults with
  domain := ⟨(2552550000000000023 / 3200000000000000000 : ℚ), (5105150000000000051 / 6400000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (10210250000000000097 / 12800000000000000000 : ℚ)
  supportValue := (615180475725209 / 2500000000000000 : ℚ)
  supportSlope := (-873159992855667 / 625000000000000 : ℚ)
  oldCenter := (615180475725209 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldPieces := [piece_635]
}

noncomputable def cell_13092 : Cell := { cellDefaults with
  domain := ⟨(5105150000000000051 / 6400000000000000000 : ℚ), (638150000000000007 / 800000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (10210350000000000107 / 12800000000000000000 : ℚ)
  supportValue := (2460609274923941 / 10000000000000000 : ℚ)
  supportSlope := (-14907798424273653 / 10000000000000000 : ℚ)
  oldCenter := (2460609274923941 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldPieces := [piece_635]
}

noncomputable def cell_13093 : Cell := { cellDefaults with
  domain := ⟨(638150000000000007 / 800000000000000000 : ℚ), (5105250000000000061 / 6400000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (10210450000000000117 / 12800000000000000000 : ℚ)
  supportValue := (24604934674597767 / 100000000000000000 : ℚ)
  supportSlope := (-8031669248572989 / 5000000000000000 : ℚ)
  oldCenter := (24604934674597767 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldPieces := [piece_635]
}

noncomputable def cell_13094 : Cell := { cellDefaults with
  domain := ⟨(5105250000000000061 / 6400000000000000000 : ℚ), (2552650000000000033 / 3200000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (10210550000000000127 / 12800000000000000000 : ℚ)
  supportValue := (3075453239460129 / 12500000000000000 : ℚ)
  supportSlope := (-8768964742777119 / 5000000000000000 : ℚ)
  oldCenter := (3075453239460129 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldPieces := [piece_635]
}

noncomputable def cell_13095 : Cell := { cellDefaults with
  domain := ⟨(2552650000000000033 / 3200000000000000000 : ℚ), (5105350000000000071 / 6400000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (10210650000000000137 / 12800000000000000000 : ℚ)
  supportValue := (24602184798696167 / 100000000000000000 : ℚ)
  supportSlope := (-195126635352219 / 100000000000000 : ℚ)
  oldCenter := (24602184798696167 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldPieces := [piece_635]
}

noncomputable def cell_13096 : Cell := { cellDefaults with
  domain := ⟨(5105350000000000071 / 6400000000000000000 : ℚ), (10210750000000000147 / 12800000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (20421450000000000289 / 25600000000000000000 : ℚ)
  supportValue := (24600938652269233 / 100000000000000000 : ℚ)
  supportSlope := (-67150599573289 / 31250000000000 : ℚ)
  oldCenter := (24600938652269233 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldPieces := [piece_635]
}

noncomputable def cell_13097 : Cell := { cellDefaults with
  domain := ⟨(10210750000000000147 / 12800000000000000000 : ℚ), (20421550000000000299 / 25600000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (40843050000000000593 / 51200000000000000000 : ℚ)
  supportValue := (24600274382380813 / 100000000000000000 : ℚ)
  supportSlope := (-1136899742036121 / 500000000000000 : ℚ)
  oldCenter := (24600274382380813 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldPieces := [piece_635]
}

noncomputable def cell_13098 : Cell := { cellDefaults with
  domain := ⟨(20421550000000000299 / 25600000000000000000 : ℚ), (1276350000000000019 / 1600000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (40843150000000000603 / 51200000000000000000 : ℚ)
  supportValue := (24599952230249753 / 100000000000000000 : ℚ)
  supportSlope := (-326762682725213 / 312500000000000 : ℚ)
  oldCenter := (24599952230249753 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldLo := (491 / 2000 : ℚ)
  oldPieces := [piece_634, piece_635]
}

noncomputable def cell_13099 : Cell := { cellDefaults with
  domain := ⟨(1276350000000000019 / 1600000000000000000 : ℚ), (159550000000000003 / 200000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (2552750000000000043 / 3200000000000000000 : ℚ)
  supportValue := (24598414782118103 / 100000000000000000 : ℚ)
  supportSlope := (-9127099908673639 / 10000000000000000 : ℚ)
  oldCenter := (24598414782118103 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldLo := (491 / 2000 : ℚ)
  oldHi := (123 / 500 : ℚ)
  oldPieces := [piece_634]
}

theorem check_13050 : cell_13050.check = true := by
  decide +kernel

theorem check_13051 : cell_13051.check = true := by
  decide +kernel

theorem check_13052 : cell_13052.check = true := by
  decide +kernel

theorem check_13053 : cell_13053.check = true := by
  decide +kernel

theorem check_13054 : cell_13054.check = true := by
  decide +kernel

theorem check_13055 : cell_13055.check = true := by
  decide +kernel

theorem check_13056 : cell_13056.check = true := by
  decide +kernel

theorem check_13057 : cell_13057.check = true := by
  decide +kernel

theorem check_13058 : cell_13058.check = true := by
  decide +kernel

theorem check_13059 : cell_13059.check = true := by
  decide +kernel

theorem check_13060 : cell_13060.check = true := by
  decide +kernel

theorem check_13061 : cell_13061.check = true := by
  decide +kernel

theorem check_13062 : cell_13062.check = true := by
  decide +kernel

theorem check_13063 : cell_13063.check = true := by
  decide +kernel

theorem check_13064 : cell_13064.check = true := by
  decide +kernel

theorem check_13065 : cell_13065.check = true := by
  decide +kernel

theorem check_13066 : cell_13066.check = true := by
  decide +kernel

theorem check_13067 : cell_13067.check = true := by
  decide +kernel

theorem check_13068 : cell_13068.check = true := by
  decide +kernel

theorem check_13069 : cell_13069.check = true := by
  decide +kernel

theorem check_13070 : cell_13070.check = true := by
  decide +kernel

theorem check_13071 : cell_13071.check = true := by
  decide +kernel

theorem check_13072 : cell_13072.check = true := by
  decide +kernel

theorem check_13073 : cell_13073.check = true := by
  decide +kernel

theorem check_13074 : cell_13074.check = true := by
  decide +kernel

theorem check_13075 : cell_13075.check = true := by
  decide +kernel

theorem check_13076 : cell_13076.check = true := by
  decide +kernel

theorem check_13077 : cell_13077.check = true := by
  decide +kernel

theorem check_13078 : cell_13078.check = true := by
  decide +kernel

theorem check_13079 : cell_13079.check = true := by
  decide +kernel

theorem check_13080 : cell_13080.check = true := by
  decide +kernel

theorem check_13081 : cell_13081.check = true := by
  decide +kernel

theorem check_13082 : cell_13082.check = true := by
  decide +kernel

theorem check_13083 : cell_13083.check = true := by
  decide +kernel

theorem check_13084 : cell_13084.check = true := by
  decide +kernel

theorem check_13085 : cell_13085.check = true := by
  decide +kernel

theorem check_13086 : cell_13086.check = true := by
  decide +kernel

theorem check_13087 : cell_13087.check = true := by
  decide +kernel

theorem check_13088 : cell_13088.check = true := by
  decide +kernel

theorem check_13089 : cell_13089.check = true := by
  decide +kernel

theorem check_13090 : cell_13090.check = true := by
  decide +kernel

theorem check_13091 : cell_13091.check = true := by
  decide +kernel

theorem check_13092 : cell_13092.check = true := by
  decide +kernel

theorem check_13093 : cell_13093.check = true := by
  decide +kernel

theorem check_13094 : cell_13094.check = true := by
  decide +kernel

theorem check_13095 : cell_13095.check = true := by
  decide +kernel

theorem check_13096 : cell_13096.check = true := by
  decide +kernel

theorem check_13097 : cell_13097.check = true := by
  decide +kernel

theorem check_13098 : cell_13098.check = true := by
  decide +kernel

theorem check_13099 : cell_13099.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13050, cell_13051, cell_13052, cell_13053, cell_13054, cell_13055, cell_13056, cell_13057, cell_13058, cell_13059, cell_13060, cell_13061, cell_13062, cell_13063, cell_13064, cell_13065, cell_13066, cell_13067, cell_13068, cell_13069, cell_13070, cell_13071, cell_13072, cell_13073, cell_13074, cell_13075, cell_13076, cell_13077, cell_13078, cell_13079, cell_13080, cell_13081, cell_13082, cell_13083, cell_13084, cell_13085, cell_13086, cell_13087, cell_13088, cell_13089, cell_13090, cell_13091, cell_13092, cell_13093, cell_13094, cell_13095, cell_13096, cell_13097, cell_13098, cell_13099]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13050, check_13051, check_13052, check_13053, check_13054, check_13055, check_13056, check_13057, check_13058, check_13059, check_13060, check_13061, check_13062, check_13063, check_13064, check_13065, check_13066, check_13067, check_13068, check_13069, check_13070, check_13071, check_13072, check_13073, check_13074, check_13075, check_13076, check_13077, check_13078, check_13079, check_13080, check_13081, check_13082, check_13083, check_13084, check_13085, check_13086, check_13087, check_13088, check_13089, check_13090, check_13091, check_13092, check_13093, check_13094, check_13095, check_13096, check_13097, check_13098, check_13099, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0261

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0261
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0261
open AnalyticBounds.ExpressionCertificate

theorem linked_13050 : Linked cell_13050 pieces := by
  link_source cell_13050 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13051 : Linked cell_13051 pieces := by
  link_source cell_13051 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13052 : Linked cell_13052 pieces := by
  link_source cell_13052 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13053 : Linked cell_13053 pieces := by
  link_source cell_13053 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13054 : Linked cell_13054 pieces := by
  link_source cell_13054 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13055 : Linked cell_13055 pieces := by
  link_source cell_13055 with piece_1836 using piece_1836_mem, piece_635_mem

theorem linked_13056 : Linked cell_13056 pieces := by
  link_source cell_13056 with piece_1836 using piece_1836_mem, piece_634_mem

theorem linked_13057 : Linked cell_13057 pieces := by
  link_source cell_13057 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13058 : Linked cell_13058 pieces := by
  link_source cell_13058 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13059 : Linked cell_13059 pieces := by
  link_source cell_13059 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13060 : Linked cell_13060 pieces := by
  link_source cell_13060 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13061 : Linked cell_13061 pieces := by
  link_source cell_13061 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13062 : Linked cell_13062 pieces := by
  link_source cell_13062 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13063 : Linked cell_13063 pieces := by
  link_source cell_13063 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13064 : Linked cell_13064 pieces := by
  link_source cell_13064 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13065 : Linked cell_13065 pieces := by
  link_source cell_13065 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13066 : Linked cell_13066 pieces := by
  link_source cell_13066 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13067 : Linked cell_13067 pieces := by
  link_source cell_13067 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13068 : Linked cell_13068 pieces := by
  link_source cell_13068 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13069 : Linked cell_13069 pieces := by
  link_source cell_13069 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13070 : Linked cell_13070 pieces := by
  link_source cell_13070 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13071 : Linked cell_13071 pieces := by
  link_source cell_13071 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13072 : Linked cell_13072 pieces := by
  link_source cell_13072 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13073 : Linked cell_13073 pieces := by
  link_source cell_13073 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13074 : Linked cell_13074 pieces := by
  link_source cell_13074 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13075 : Linked cell_13075 pieces := by
  link_source cell_13075 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13076 : Linked cell_13076 pieces := by
  link_source cell_13076 with piece_1837 using piece_1837_mem, piece_635_mem

theorem linked_13077 : Linked cell_13077 pieces := by
  link_source cell_13077 with piece_1837 using piece_1837_mem, ⟨piece_634_mem, piece_635_mem⟩

theorem linked_13078 : Linked cell_13078 pieces := by
  link_source cell_13078 with piece_1837 using piece_1837_mem, piece_634_mem

theorem linked_13079 : Linked cell_13079 pieces := by
  link_source cell_13079 with piece_1837 using piece_1837_mem, piece_634_mem

theorem linked_13080 : Linked cell_13080 pieces := by
  link_source cell_13080 with piece_1837 using piece_1837_mem, piece_634_mem

theorem linked_13081 : Linked cell_13081 pieces := by
  link_source cell_13081 with piece_1838 using piece_1838_mem, piece_635_mem

theorem linked_13082 : Linked cell_13082 pieces := by
  link_source cell_13082 with piece_1838 using piece_1838_mem, piece_635_mem

theorem linked_13083 : Linked cell_13083 pieces := by
  link_source cell_13083 with piece_1838 using piece_1838_mem, piece_635_mem

theorem linked_13084 : Linked cell_13084 pieces := by
  link_source cell_13084 with piece_1838 using piece_1838_mem, piece_635_mem

theorem linked_13085 : Linked cell_13085 pieces := by
  link_source cell_13085 with piece_1838 using piece_1838_mem, piece_635_mem

theorem linked_13086 : Linked cell_13086 pieces := by
  link_source cell_13086 with piece_1838 using piece_1838_mem, piece_635_mem

theorem linked_13087 : Linked cell_13087 pieces := by
  link_source cell_13087 with piece_1838 using piece_1838_mem, piece_635_mem

theorem linked_13088 : Linked cell_13088 pieces := by
  link_source cell_13088 with piece_1838 using piece_1838_mem, piece_635_mem

theorem linked_13089 : Linked cell_13089 pieces := by
  link_source cell_13089 with piece_1838 using piece_1838_mem, piece_635_mem

theorem linked_13090 : Linked cell_13090 pieces := by
  link_source cell_13090 with piece_1838 using piece_1838_mem, piece_635_mem

theorem linked_13091 : Linked cell_13091 pieces := by
  link_source cell_13091 with piece_1838 using piece_1838_mem, piece_635_mem

theorem linked_13092 : Linked cell_13092 pieces := by
  link_source cell_13092 with piece_1838 using piece_1838_mem, piece_635_mem

theorem linked_13093 : Linked cell_13093 pieces := by
  link_source cell_13093 with piece_1838 using piece_1838_mem, piece_635_mem

theorem linked_13094 : Linked cell_13094 pieces := by
  link_source cell_13094 with piece_1838 using piece_1838_mem, piece_635_mem

theorem linked_13095 : Linked cell_13095 pieces := by
  link_source cell_13095 with piece_1838 using piece_1838_mem, piece_635_mem

theorem linked_13096 : Linked cell_13096 pieces := by
  link_source cell_13096 with piece_1838 using piece_1838_mem, piece_635_mem

theorem linked_13097 : Linked cell_13097 pieces := by
  link_source cell_13097 with piece_1838 using piece_1838_mem, piece_635_mem

theorem linked_13098 : Linked cell_13098 pieces := by
  link_source cell_13098 with piece_1838 using piece_1838_mem, ⟨piece_634_mem, piece_635_mem⟩

theorem linked_13099 : Linked cell_13099 pieces := by
  link_source cell_13099 with piece_1838 using piece_1838_mem, piece_634_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0261.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0261.cells,List.forall_mem_cons]
  exact ⟨linked_13050, linked_13051, linked_13052, linked_13053, linked_13054, linked_13055, linked_13056, linked_13057, linked_13058, linked_13059, linked_13060, linked_13061, linked_13062, linked_13063, linked_13064, linked_13065, linked_13066, linked_13067, linked_13068, linked_13069, linked_13070, linked_13071, linked_13072, linked_13073, linked_13074, linked_13075, linked_13076, linked_13077, linked_13078, linked_13079, linked_13080, linked_13081, linked_13082, linked_13083, linked_13084, linked_13085, linked_13086, linked_13087, linked_13088, linked_13089, linked_13090, linked_13091, linked_13092, linked_13093, linked_13094, linked_13095, linked_13096, linked_13097, linked_13098, linked_13099, by simp⟩

theorem covered : covers (2550250000000000113 / 3200000000000000000 : ℚ) (159550000000000003 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0261.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0261
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0262
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(159550000000000003 / 200000000000000000 : ℚ), (319150000000000011 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (11729097901171 / 25000000000000 : ℚ)
  w := (3367286087687 / 2500000000000 : ℚ)
  center := (638250000000000017 / 800000000000000000 : ℚ)
  supportValue := (12295645316354127 / 50000000000000000 : ℚ)
  supportSlope := (-9123312701747797 / 10000000000000000 : ℚ)
  oldCenter := (12295645316354127 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1839
  oldLo := (489 / 2000 : ℚ)
  oldHi := (123 / 500 : ℚ)
  oldPieces := [piece_634]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13100 : Cell := { cellDefaults with
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldLo := (491 / 2000 : ℚ)
  oldPieces := [piece_634]
}

noncomputable def cell_13101 : Cell := { cellDefaults with
  domain := ⟨(319150000000000011 / 400000000000000000 : ℚ), (19950000000000001 / 25000000000000000 : ℚ)⟩
  r := (46936280341321 / 100000000000000 : ℚ)
  w := (3368279920997 / 2500000000000 : ℚ)
  center := (638350000000000027 / 800000000000000000 : ℚ)
  supportValue := (12289945136082829 / 50000000000000000 : ℚ)
  supportSlope := (-2279315362902817 / 2500000000000000 : ℚ)
  oldCenter := (12289945136082829 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1838
  oldLo := (491 / 2000 : ℚ)
  oldPieces := [piece_634]
}

noncomputable def cell_13102 : Cell := { cellDefaults with
  domain := ⟨(19950000000000001 / 25000000000000000 : ℚ), (5107250000000000251 / 6400000000000000000 : ℚ)⟩
  center := (10214450000000000507 / 12800000000000000000 : ℚ)
  supportValue := (12303672832633761 / 50000000000000000 : ℚ)
  supportSlope := (-13866635533547331 / 10000000000000000 : ℚ)
  oldCenter := (12303672832633761 / 50000000000000000 : ℚ)
  oldLo := (123 / 500 : ℚ)
  oldHi := (493 / 2000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13103 : Cell := { cellDefaults with
  domain := ⟨(5107250000000000251 / 6400000000000000000 : ℚ), (2553650000000000123 / 3200000000000000000 : ℚ)⟩
  center := (10214550000000000497 / 12800000000000000000 : ℚ)
  supportValue := (24606228286462417 / 100000000000000000 : ℚ)
  supportSlope := (-7391056287745129 / 5000000000000000 : ℚ)
  oldCenter := (24606228286462417 / 100000000000000000 : ℚ)
  oldLo := (123 / 500 : ℚ)
  oldHi := (493 / 2000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13104 : Cell := { cellDefaults with
  domain := ⟨(2553650000000000123 / 3200000000000000000 : ℚ), (5107350000000000241 / 6400000000000000000 : ℚ)⟩
  center := (10214650000000000487 / 12800000000000000000 : ℚ)
  supportValue := (2460508112193773 / 10000000000000000 : ℚ)
  supportSlope := (-3976724327455059 / 2500000000000000 : ℚ)
  oldCenter := (2460508112193773 / 10000000000000000 : ℚ)
  oldLo := (123 / 500 : ℚ)
  oldHi := (493 / 2000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13105 : Cell := { cellDefaults with
  domain := ⟨(5107350000000000241 / 6400000000000000000 : ℚ), (1276850000000000059 / 1600000000000000000 : ℚ)⟩
  center := (10214750000000000477 / 12800000000000000000 : ℚ)
  supportValue := (61509465469113 / 250000000000000 : ℚ)
  supportSlope := (-17335472837702381 / 10000000000000000 : ℚ)
  oldCenter := (61509465469113 / 250000000000000 : ℚ)
  oldLo := (123 / 500 : ℚ)
  oldHi := (493 / 2000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13106 : Cell := { cellDefaults with
  domain := ⟨(1276850000000000059 / 1600000000000000000 : ℚ), (5107450000000000231 / 6400000000000000000 : ℚ)⟩
  center := (10214850000000000467 / 12800000000000000000 : ℚ)
  supportValue := (2460236341751903 / 10000000000000000 : ℚ)
  supportSlope := (-19235629858231609 / 10000000000000000 : ℚ)
  oldCenter := (2460236341751903 / 10000000000000000 : ℚ)
  oldLo := (123 / 500 : ℚ)
  oldHi := (493 / 2000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13107 : Cell := { cellDefaults with
  domain := ⟨(5107450000000000231 / 6400000000000000000 : ℚ), (2553750000000000113 / 3200000000000000000 : ℚ)⟩
  center := (10214950000000000457 / 12800000000000000000 : ℚ)
  supportValue := (2460093752325647 / 10000000000000000 : ℚ)
  supportSlope := (-2039482665076013 / 1000000000000000 : ℚ)
  oldCenter := (2460093752325647 / 10000000000000000 : ℚ)
  oldLo := (123 / 500 : ℚ)
  oldHi := (493 / 2000 : ℚ)
  oldPieces := [piece_635]
}

noncomputable def cell_13108 : Cell := { cellDefaults with
  domain := ⟨(2553750000000000113 / 3200000000000000000 : ℚ), (638450000000000027 / 800000000000000000 : ℚ)⟩
  center := (5107550000000000221 / 6400000000000000000 : ℚ)
  supportValue := (12299606448585293 / 50000000000000000 : ℚ)
  supportSlope := (-9123590963043627 / 10000000000000000 : ℚ)
  oldCenter := (12299606448585293 / 50000000000000000 : ℚ)
  oldLo := (491 / 2000 : ℚ)
  oldPieces := [piece_634]
}

noncomputable def cell_13109 : Cell := { cellDefaults with
  domain := ⟨(638450000000000027 / 800000000000000000 : ℚ), (319250000000000011 / 400000000000000000 : ℚ)⟩
  center := (1276950000000000049 / 1600000000000000000 : ℚ)
  supportValue := (12297824687325201 / 50000000000000000 : ℚ)
  supportSlope := (-4560821412864969 / 5000000000000000 : ℚ)
  oldCenter := (12297824687325201 / 50000000000000000 : ℚ)
  oldLo := (491 / 2000 : ℚ)
  oldPieces := [piece_634]
}

noncomputable def cell_13110 : Cell := { cellDefaults with
  domain := ⟨(319250000000000011 / 400000000000000000 : ℚ), (159650000000000003 / 200000000000000000 : ℚ)⟩
  center := (638550000000000017 / 800000000000000000 : ℚ)
  supportValue := (4917420988267529 / 20000000000000000 : ℚ)
  supportSlope := (-9116971895394089 / 10000000000000000 : ℚ)
  oldCenter := (4917420988267529 / 20000000000000000 : ℚ)
  oldLo := (491 / 2000 : ℚ)
  oldPieces := [piece_634]
}

noncomputable def cell_13111 : Cell := { cellDefaults with
  domain := ⟨(159650000000000003 / 200000000000000000 : ℚ), (319350000000000001 / 400000000000000000 : ℚ)⟩
  center := (638650000000000007 / 800000000000000000 : ℚ)
  supportValue := (9830285044549 / 40000000000000 : ℚ)
  supportSlope := (-569422087546069 / 625000000000000 : ℚ)
  oldCenter := (9830285044549 / 40000000000000 : ℚ)
  oldLo := (491 / 2000 : ℚ)
  oldPieces := [piece_634]
}

noncomputable def cell_13112 : Cell := { cellDefaults with
  domain := ⟨(319350000000000001 / 400000000000000000 : ℚ), (79849999999999999 / 100000000000000000 : ℚ)⟩
  center := (638749999999999997 / 800000000000000000 : ℚ)
  supportValue := (12282164023741711 / 50000000000000000 : ℚ)
  supportSlope := (-1138068270982287 / 1250000000000000 : ℚ)
  oldCenter := (12282164023741711 / 50000000000000000 : ℚ)
  oldLo := (491 / 2000 : ℚ)
  oldPieces := [piece_634]
}

noncomputable def cell_13113 : Cell := { cellDefaults with
  domain := ⟨(79849999999999999 / 100000000000000000 : ℚ), (319450000000000001 / 400000000000000000 : ℚ)⟩
  r := (9379294665543 / 20000000000000 : ℚ)
  w := (1683135218573 / 1250000000000 : ℚ)
  center := (638849999999999997 / 800000000000000000 : ℚ)
  supportValue := (4916628484717347 / 20000000000000000 : ℚ)
  supportSlope := (-911072879516881 / 1000000000000000 : ℚ)
  oldCenter := (4916628484717347 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1840
  oldLo := (491 / 2000 : ℚ)
  oldPieces := [piece_634]
}

noncomputable def cell_13114 : Cell := { cellDefaults with
  domain := ⟨(319450000000000001 / 400000000000000000 : ℚ), (159750000000000003 / 200000000000000000 : ℚ)⟩
  r := (9379294665543 / 20000000000000 : ℚ)
  w := (1683135218573 / 1250000000000 : ℚ)
  center := (638950000000000007 / 800000000000000000 : ℚ)
  supportValue := (12285878954363147 / 50000000000000000 : ℚ)
  supportSlope := (-9104492340886927 / 10000000000000000 : ℚ)
  oldCenter := (12285878954363147 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1840
  oldLo := (491 / 2000 : ℚ)
  oldPieces := [piece_634]
}

noncomputable def cell_13115 : Cell := { cellDefaults with
  domain := ⟨(159750000000000003 / 200000000000000000 : ℚ), (319550000000000011 / 400000000000000000 : ℚ)⟩
  r := (9379294665543 / 20000000000000 : ℚ)
  w := (1683135218573 / 1250000000000 : ℚ)
  center := (639050000000000017 / 800000000000000000 : ℚ)
  supportValue := (12280190591191033 / 50000000000000000 : ℚ)
  supportSlope := (-4549133581747789 / 5000000000000000 : ℚ)
  oldCenter := (12280190591191033 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1840
  oldLo := (491 / 2000 : ℚ)
  oldPieces := [piece_634]
}

noncomputable def cell_13116 : Cell := { cellDefaults with
  domain := ⟨(319550000000000011 / 400000000000000000 : ℚ), (19975000000000001 / 25000000000000000 : ℚ)⟩
  r := (9379294665543 / 20000000000000 : ℚ)
  w := (1683135218573 / 1250000000000 : ℚ)
  center := (639150000000000027 / 800000000000000000 : ℚ)
  supportValue := (3068626505507889 / 12500000000000000 : ℚ)
  supportSlope := (-1818610520941273 / 2000000000000000 : ℚ)
  oldCenter := (3068626505507889 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1840
  oldLo := (49 / 200 : ℚ)
  oldPieces := [piece_633, piece_634]
}

noncomputable def cell_13117 : Cell := { cellDefaults with
  domain := ⟨(19975000000000001 / 25000000000000000 : ℚ), (319650000000000011 / 400000000000000000 : ℚ)⟩
  r := (1875062892459 / 4000000000000 : ℚ)
  w := (6730510706903 / 5000000000000 : ℚ)
  center := (639250000000000027 / 800000000000000000 : ℚ)
  supportValue := (12283902912046883 / 50000000000000000 : ℚ)
  supportSlope := (-1137275229823989 / 1250000000000000 : ℚ)
  oldCenter := (12283902912046883 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1841
  oldLo := (491 / 2000 : ℚ)
  oldPieces := [piece_634]
}

noncomputable def cell_13118 : Cell := { cellDefaults with
  domain := ⟨(319650000000000011 / 400000000000000000 : ℚ), (159850000000000003 / 200000000000000000 : ℚ)⟩
  r := (1875062892459 / 4000000000000 : ℚ)
  w := (6730510706903 / 5000000000000 : ℚ)
  center := (639350000000000017 / 800000000000000000 : ℚ)
  supportValue := (1534777308161373 / 6250000000000000 : ℚ)
  supportSlope := (-909202511519249 / 1000000000000000 : ℚ)
  oldCenter := (1534777308161373 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1841
  oldLo := (491 / 2000 : ℚ)
  oldPieces := [piece_634]
}

noncomputable def cell_13119 : Cell := { cellDefaults with
  domain := ⟨(159850000000000003 / 200000000000000000 : ℚ), (319750000000000001 / 400000000000000000 : ℚ)⟩
  r := (1875062892459 / 4000000000000 : ℚ)
  w := (6730510706903 / 5000000000000 : ℚ)
  center := (639450000000000007 / 800000000000000000 : ℚ)
  supportValue := (1227253741397091 / 5000000000000000 : ℚ)
  supportSlope := (-9087446223726501 / 10000000000000000 : ℚ)
  oldCenter := (1227253741397091 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1841
  oldLo := (49 / 200 : ℚ)
  oldPieces := [piece_633, piece_634]
}

noncomputable def cell_13120 : Cell := { cellDefaults with
  domain := ⟨(319750000000000001 / 400000000000000000 : ℚ), (79949999999999999 / 100000000000000000 : ℚ)⟩
  r := (1875062892459 / 4000000000000 : ℚ)
  w := (6730510706903 / 5000000000000 : ℚ)
  center := (639549999999999997 / 800000000000000000 : ℚ)
  supportValue := (12266859615367147 / 50000000000000000 : ℚ)
  supportSlope := (-9081394499142823 / 10000000000000000 : ℚ)
  oldCenter := (12266859615367147 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1841
  oldLo := (49 / 200 : ℚ)
  oldHi := (491 / 2000 : ℚ)
  oldPieces := [piece_633]
}

noncomputable def cell_13121 : Cell := { cellDefaults with
  domain := ⟨(79949999999999999 / 100000000000000000 : ℚ), (319850000000000001 / 400000000000000000 : ℚ)⟩
  r := (5857085730723 / 12500000000000 : ℚ)
  w := (13456957904309 / 10000000000000 : ℚ)
  center := (639649999999999997 / 800000000000000000 : ℚ)
  supportValue := (24552508208134113 / 100000000000000000 : ℚ)
  supportSlope := (-9086277803008949 / 10000000000000000 : ℚ)
  oldCenter := (24552508208134113 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1842
  oldLo := (49 / 200 : ℚ)
  oldPieces := [piece_633, piece_634]
}

noncomputable def cell_13122 : Cell := { cellDefaults with
  domain := ⟨(319850000000000001 / 400000000000000000 : ℚ), (159950000000000003 / 200000000000000000 : ℚ)⟩
  r := (5857085730723 / 12500000000000 : ℚ)
  w := (13456957904309 / 10000000000000 : ℚ)
  center := (639750000000000007 / 800000000000000000 : ℚ)
  supportValue := (613528828635341 / 2500000000000000 : ℚ)
  supportSlope := (-2270335413800723 / 2500000000000000 : ℚ)
  oldCenter := (613528828635341 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1842
  oldLo := (49 / 200 : ℚ)
  oldHi := (491 / 2000 : ℚ)
  oldPieces := [piece_633]
}

noncomputable def cell_13123 : Cell := { cellDefaults with
  domain := ⟨(159950000000000003 / 200000000000000000 : ℚ), (319950000000000011 / 400000000000000000 : ℚ)⟩
  r := (5857085730723 / 12500000000000 : ℚ)
  w := (13456957904309 / 10000000000000 : ℚ)
  center := (639850000000000017 / 800000000000000000 : ℚ)
  supportValue := (1226490265627159 / 5000000000000000 : ℚ)
  supportSlope := (-9075188266653081 / 10000000000000000 : ℚ)
  oldCenter := (1226490265627159 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1842
  oldLo := (49 / 200 : ℚ)
  oldHi := (491 / 2000 : ℚ)
  oldPieces := [piece_633]
}

noncomputable def cell_13124 : Cell := { cellDefaults with
  domain := ⟨(319950000000000011 / 400000000000000000 : ℚ), (20000000000000001 / 25000000000000000 : ℚ)⟩
  r := (5857085730723 / 12500000000000 : ℚ)
  w := (13456957904309 / 10000000000000 : ℚ)
  center := (639950000000000027 / 800000000000000000 : ℚ)
  supportValue := (612961629111907 / 2500000000000000 : ℚ)
  supportSlope := (-9069045963893333 / 10000000000000000 : ℚ)
  oldCenter := (612961629111907 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1842
  oldLo := (49 / 200 : ℚ)
  oldHi := (491 / 2000 : ℚ)
  oldPieces := [piece_633]
}

noncomputable def cell_13125 : Cell := { cellDefaults with
  domain := ⟨(20000000000000001 / 25000000000000000 : ℚ), (320050000000000011 / 400000000000000000 : ℚ)⟩
  r := (2341840842909 / 5000000000000 : ℚ)
  w := (6726448870887 / 5000000000000 : ℚ)
  center := (640050000000000027 / 800000000000000000 : ℚ)
  supportValue := (6134307889874617 / 25000000000000000 : ℚ)
  supportSlope := (-2268757307331231 / 2500000000000000 : ℚ)
  oldCenter := (6134307889874617 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1843
  oldLo := (49 / 200 : ℚ)
  oldHi := (491 / 2000 : ℚ)
  oldPieces := [piece_633]
}

noncomputable def cell_13126 : Cell := { cellDefaults with
  domain := ⟨(320050000000000011 / 400000000000000000 : ℚ), (160050000000000003 / 200000000000000000 : ℚ)⟩
  r := (2341840842909 / 5000000000000 : ℚ)
  w := (6726448870887 / 5000000000000 : ℚ)
  center := (640150000000000017 / 800000000000000000 : ℚ)
  supportValue := (12262945806039467 / 50000000000000000 : ℚ)
  supportSlope := (-2267220992082879 / 2500000000000000 : ℚ)
  oldCenter := (12262945806039467 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1843
  oldLo := (49 / 200 : ℚ)
  oldHi := (491 / 2000 : ℚ)
  oldPieces := [piece_633]
}

noncomputable def cell_13127 : Cell := { cellDefaults with
  domain := ⟨(160050000000000003 / 200000000000000000 : ℚ), (320150000000000001 / 400000000000000000 : ℚ)⟩
  r := (2341840842909 / 5000000000000 : ℚ)
  w := (6726448870887 / 5000000000000 : ℚ)
  center := (640250000000000007 / 800000000000000000 : ℚ)
  supportValue := (2451455933931979 / 10000000000000000 : ℚ)
  supportSlope := (-1812549953430679 / 2000000000000000 : ℚ)
  oldCenter := (2451455933931979 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1843
  oldLo := (49 / 200 : ℚ)
  oldHi := (491 / 2000 : ℚ)
  oldPieces := [piece_633]
}

noncomputable def cell_13128 : Cell := { cellDefaults with
  domain := ⟨(320150000000000001 / 400000000000000000 : ℚ), (80049999999999999 / 100000000000000000 : ℚ)⟩
  r := (2341840842909 / 5000000000000 : ℚ)
  w := (6726448870887 / 5000000000000 : ℚ)
  center := (640349999999999997 / 800000000000000000 : ℚ)
  supportValue := (1531452170463711 / 6250000000000000 : ℚ)
  supportSlope := (-4528495602694091 / 5000000000000000 : ℚ)
  oldCenter := (1531452170463711 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1843
  oldHi := (491 / 2000 : ℚ)
  oldPieces := [piece_632, piece_633]
}

noncomputable def cell_13129 : Cell := { cellDefaults with
  domain := ⟨(80049999999999999 / 100000000000000000 : ℚ), (160139385474860329 / 200000000000000000 : ℚ)⟩
  r := (46816962794763 / 100000000000000 : ℚ)
  w := (107590677329 / 80000000000 : ℚ)
  center := (320239385474860327 / 400000000000000000 : ℚ)
  supportValue := (3064843859623621 / 12500000000000000 : ℚ)
  supportSlope := (-9060926031599297 / 10000000000000000 : ℚ)
  oldCenter := (3064843859623621 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1844
  oldLo := (49 / 200 : ℚ)
  oldHi := (491 / 2000 : ℚ)
  oldPieces := [piece_633]
}

noncomputable def cell_13130 : Cell := { cellDefaults with
  domain := ⟨(160139385474860329 / 200000000000000000 : ℚ), (8008938547486033 / 10000000000000000 : ℚ)⟩
  r := (46816962794763 / 100000000000000 : ℚ)
  w := (107590677329 / 80000000000 : ℚ)
  center := (320318156424580989 / 400000000000000000 : ℚ)
  supportValue := (24500916911657647 / 100000000000000000 : ℚ)
  supportSlope := (-4526025266141041 / 5000000000000000 : ℚ)
  oldCenter := (24500916911657647 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1844
  oldHi := (491 / 2000 : ℚ)
  oldPieces := [piece_632, piece_633]
}

noncomputable def cell_13131 : Cell := { cellDefaults with
  domain := ⟨(8008938547486033 / 10000000000000000 : ℚ), (16020000000000001 / 20000000000000000 : ℚ)⟩
  r := (46816962794763 / 100000000000000 : ℚ)
  w := (107590677329 / 80000000000 : ℚ)
  center := (32037877094972067 / 40000000000000000 : ℚ)
  supportValue := (1224359348820369 / 5000000000000000 : ℚ)
  supportSlope := (-9045583836656563 / 10000000000000000 : ℚ)
  oldCenter := (1224359348820369 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1845
  oldHi := (49 / 200 : ℚ)
  oldPieces := [piece_632]
}

noncomputable def cell_13132 : Cell := { cellDefaults with
  domain := ⟨(16020000000000001 / 20000000000000000 : ℚ), (160225000000000007 / 200000000000000000 : ℚ)⟩
  r := (23398563127661 / 50000000000000 : ℚ)
  w := (107558194669 / 80000000000 : ℚ)
  center := (320425000000000017 / 400000000000000000 : ℚ)
  supportValue := (12253388984662847 / 50000000000000000 : ℚ)
  supportSlope := (-2262598576927837 / 2500000000000000 : ℚ)
  oldCenter := (12253388984662847 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1846
  oldLo := (49 / 200 : ℚ)
  oldHi := (491 / 2000 : ℚ)
  oldPieces := [piece_633]
}

noncomputable def cell_13133 : Cell := { cellDefaults with
  domain := ⟨(160225000000000007 / 200000000000000000 : ℚ), (40062500000000001 / 50000000000000000 : ℚ)⟩
  r := (23398563127661 / 50000000000000 : ℚ)
  w := (107558194669 / 80000000000 : ℚ)
  center := (320475000000000011 / 400000000000000000 : ℚ)
  supportValue := (24495467937509213 / 100000000000000000 : ℚ)
  supportSlope := (-1809163784122209 / 2000000000000000 : ℚ)
  oldCenter := (24495467937509213 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1846
  oldHi := (491 / 2000 : ℚ)
  oldPieces := [piece_632, piece_633]
}

noncomputable def cell_13134 : Cell := { cellDefaults with
  domain := ⟨(40062500000000001 / 50000000000000000 : ℚ), (160275000000000001 / 200000000000000000 : ℚ)⟩
  r := (23398563127661 / 50000000000000 : ℚ)
  w := (107558194669 / 80000000000 : ℚ)
  center := (64105000000000001 / 80000000000000000 : ℚ)
  supportValue := (24484164264830077 / 100000000000000000 : ℚ)
  supportSlope := (-903988737989911 / 1000000000000000 : ℚ)
  oldCenter := (24484164264830077 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1846
  oldHi := (49 / 200 : ℚ)
  oldPieces := [piece_632]
}

noncomputable def cell_13135 : Cell := { cellDefaults with
  domain := ⟨(160275000000000001 / 200000000000000000 : ℚ), (80149999999999999 / 100000000000000000 : ℚ)⟩
  r := (23398563127661 / 50000000000000 : ℚ)
  w := (107558194669 / 80000000000 : ℚ)
  center := (320574999999999999 / 400000000000000000 : ℚ)
  supportValue := (12236434104432367 / 50000000000000000 : ℚ)
  supportSlope := (-4516899734945943 / 5000000000000000 : ℚ)
  oldCenter := (12236434104432367 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1846
  oldHi := (49 / 200 : ℚ)
  oldPieces := [piece_632]
}

noncomputable def cell_13136 : Cell := { cellDefaults with
  domain := ⟨(80149999999999999 / 100000000000000000 : ℚ), (160325000000000001 / 200000000000000000 : ℚ)⟩
  r := (46777303725953 / 100000000000000 : ℚ)
  w := (6720355894611 / 5000000000000 : ℚ)
  center := (320624999999999999 / 400000000000000000 : ℚ)
  supportValue := (4898319784684329 / 20000000000000000 : ℚ)
  supportSlope := (-903983072111261 / 1000000000000000 : ℚ)
  oldCenter := (4898319784684329 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1847
  oldHi := (49 / 200 : ℚ)
  oldPieces := [piece_632]
}

noncomputable def cell_13137 : Cell := { cellDefaults with
  domain := ⟨(160325000000000001 / 200000000000000000 : ℚ), (40087500000000001 / 50000000000000000 : ℚ)⟩
  r := (46777303725953 / 100000000000000 : ℚ)
  w := (6720355894611 / 5000000000000 : ℚ)
  center := (64135000000000001 / 80000000000000000 : ℚ)
  supportValue := (1224015146932969 / 5000000000000000 : ℚ)
  supportSlope := (-4516871102814859 / 5000000000000000 : ℚ)
  oldCenter := (1224015146932969 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1847
  oldHi := (49 / 200 : ℚ)
  oldPieces := [piece_632]
}

noncomputable def cell_13138 : Cell := { cellDefaults with
  domain := ⟨(40087500000000001 / 50000000000000000 : ℚ), (160375000000000007 / 200000000000000000 : ℚ)⟩
  r := (46777303725953 / 100000000000000 : ℚ)
  w := (6720355894611 / 5000000000000 : ℚ)
  center := (320725000000000011 / 400000000000000000 : ℚ)
  supportValue := (12234507278863223 / 50000000000000000 : ℚ)
  supportSlope := (-9027664588753287 / 10000000000000000 : ℚ)
  oldCenter := (12234507278863223 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1847
  oldHi := (49 / 200 : ℚ)
  oldPieces := [piece_632]
}

noncomputable def cell_13139 : Cell := { cellDefaults with
  domain := ⟨(160375000000000007 / 200000000000000000 : ℚ), (16040000000000001 / 20000000000000000 : ℚ)⟩
  r := (46777303725953 / 100000000000000 : ℚ)
  w := (6720355894611 / 5000000000000 : ℚ)
  center := (320775000000000017 / 400000000000000000 : ℚ)
  supportValue := (12228866883511129 / 50000000000000000 : ℚ)
  supportSlope := (-9021597834245637 / 10000000000000000 : ℚ)
  oldCenter := (12228866883511129 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1847
  oldHi := (49 / 200 : ℚ)
  oldPieces := [piece_632]
}

noncomputable def cell_13140 : Cell := { cellDefaults with
  domain := ⟨(16040000000000001 / 20000000000000000 : ℚ), (160425000000000007 / 200000000000000000 : ℚ)⟩
  r := (46757498803269 / 100000000000000 : ℚ)
  w := (13436651462569 / 10000000000000 : ℚ)
  center := (320825000000000017 / 400000000000000000 : ℚ)
  supportValue := (2447644342645059 / 10000000000000000 : ℚ)
  supportSlope := (-451380174702197 / 500000000000000 : ℚ)
  oldCenter := (2447644342645059 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1848
  oldHi := (49 / 200 : ℚ)
  oldPieces := [piece_632]
}

noncomputable def cell_13141 : Cell := { cellDefaults with
  domain := ⟨(160425000000000007 / 200000000000000000 : ℚ), (40112500000000001 / 50000000000000000 : ℚ)⟩
  r := (46757498803269 / 100000000000000 : ℚ)
  w := (13436651462569 / 10000000000000 : ℚ)
  center := (320875000000000011 / 400000000000000000 : ℚ)
  supportValue := (12232581356241641 / 50000000000000000 : ℚ)
  supportSlope := (-2255384037956047 / 2500000000000000 : ℚ)
  oldCenter := (12232581356241641 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1848
  oldHi := (49 / 200 : ℚ)
  oldPieces := [piece_632]
}

noncomputable def cell_13142 : Cell := { cellDefaults with
  domain := ⟨(40112500000000001 / 50000000000000000 : ℚ), (160475000000000001 / 200000000000000000 : ℚ)⟩
  r := (46757498803269 / 100000000000000 : ℚ)
  w := (13436651462569 / 10000000000000 : ℚ)
  center := (64185000000000001 / 80000000000000000 : ℚ)
  supportValue := (24453889575919327 / 100000000000000000 : ℚ)
  supportSlope := (-9015742371191153 / 10000000000000000 : ℚ)
  oldCenter := (24453889575919327 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1848
  oldLo := (24399999999999999 / 100000000000000000 : ℚ)
  oldHi := (49 / 200 : ℚ)
  oldPieces := [piece_631, piece_632]
}

noncomputable def cell_13143 : Cell := { cellDefaults with
  domain := ⟨(160475000000000001 / 200000000000000000 : ℚ), (80249999999999999 / 100000000000000000 : ℚ)⟩
  r := (46757498803269 / 100000000000000 : ℚ)
  w := (13436651462569 / 10000000000000 : ℚ)
  center := (320974999999999999 / 400000000000000000 : ℚ)
  supportValue := (12221311310224467 / 50000000000000000 : ℚ)
  supportSlope := (-9011118698275503 / 10000000000000000 : ℚ)
  oldCenter := (12221311310224467 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1848
  oldLo := (24399999999999999 / 100000000000000000 : ℚ)
  oldHi := (489 / 2000 : ℚ)
  oldPieces := [piece_631]
}

noncomputable def cell_13144 : Cell := { cellDefaults with
  domain := ⟨(80249999999999999 / 100000000000000000 : ℚ), (160525000000000001 / 200000000000000000 : ℚ)⟩
  r := (23368854275097 / 50000000000000 : ℚ)
  w := (13432589758493 / 10000000000000 : ℚ)
  center := (321024999999999999 / 400000000000000000 : ℚ)
  supportValue := (12230661321749603 / 50000000000000000 : ℚ)
  supportSlope := (-4507709208755887 / 5000000000000000 : ℚ)
  oldCenter := (12230661321749603 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1849
  oldHi := (49 / 200 : ℚ)
  oldPieces := [piece_632]
}

noncomputable def cell_13145 : Cell := { cellDefaults with
  domain := ⟨(160525000000000001 / 200000000000000000 : ℚ), (40137500000000001 / 50000000000000000 : ℚ)⟩
  r := (23368854275097 / 50000000000000 : ℚ)
  w := (13432589758493 / 10000000000000 : ℚ)
  center := (64215000000000001 / 80000000000000000 : ℚ)
  supportValue := (244500571477587 / 1000000000000000 : ℚ)
  supportSlope := (-9010208424896667 / 10000000000000000 : ℚ)
  oldCenter := (244500571477587 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1849
  oldLo := (24399999999999999 / 100000000000000000 : ℚ)
  oldHi := (49 / 200 : ℚ)
  oldPieces := [piece_631, piece_632]
}

noncomputable def cell_13146 : Cell := { cellDefaults with
  domain := ⟨(40137500000000001 / 50000000000000000 : ℚ), (160575000000000007 / 200000000000000000 : ℚ)⟩
  r := (23368854275097 / 50000000000000 : ℚ)
  w := (13432589758493 / 10000000000000 : ℚ)
  center := (321125000000000011 / 400000000000000000 : ℚ)
  supportValue := (24438797105772297 / 100000000000000000 : ℚ)
  supportSlope := (-1801003486260339 / 2000000000000000 : ℚ)
  oldCenter := (24438797105772297 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1849
  oldLo := (24399999999999999 / 100000000000000000 : ℚ)
  oldHi := (489 / 2000 : ℚ)
  oldPieces := [piece_631]
}

noncomputable def cell_13147 : Cell := { cellDefaults with
  domain := ⟨(160575000000000007 / 200000000000000000 : ℚ), (16060000000000001 / 20000000000000000 : ℚ)⟩
  r := (23368854275097 / 50000000000000 : ℚ)
  w := (13432589758493 / 10000000000000 : ℚ)
  center := (321175000000000017 / 400000000000000000 : ℚ)
  supportValue := (24427544603404067 / 100000000000000000 : ℚ)
  supportSlope := (-8998983645088807 / 10000000000000000 : ℚ)
  oldCenter := (24427544603404067 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1849
  oldLo := (24399999999999999 / 100000000000000000 : ℚ)
  oldHi := (489 / 2000 : ℚ)
  oldPieces := [piece_631]
}

noncomputable def cell_13148 : Cell := { cellDefaults with
  domain := ⟨(16060000000000001 / 20000000000000000 : ℚ), (160625000000000007 / 200000000000000000 : ℚ)⟩
  r := (5839741903677 / 12500000000000 : ℚ)
  w := (2685705663787 / 2000000000000 : ℚ)
  center := (321225000000000017 / 400000000000000000 : ℚ)
  supportValue := (12223115060834633 / 50000000000000000 : ℚ)
  supportSlope := (-9004682583914039 / 10000000000000000 : ℚ)
  oldCenter := (12223115060834633 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1850
  oldLo := (24399999999999999 / 100000000000000000 : ℚ)
  oldHi := (49 / 200 : ℚ)
  oldPieces := [piece_631, piece_632]
}

noncomputable def cell_13149 : Cell := { cellDefaults with
  domain := ⟨(160625000000000007 / 200000000000000000 : ℚ), (40162500000000001 / 50000000000000000 : ℚ)⟩
  r := (5839741903677 / 12500000000000 : ℚ)
  w := (2685705663787 / 2000000000000 : ℚ)
  center := (321275000000000011 / 400000000000000000 : ℚ)
  supportValue := (4886995538409571 / 20000000000000000 : ℚ)
  supportSlope := (-1124865520787523 / 1250000000000000 : ℚ)
  oldCenter := (4886995538409571 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1850
  oldLo := (24399999999999999 / 100000000000000000 : ℚ)
  oldHi := (489 / 2000 : ℚ)
  oldPieces := [piece_631]
}

theorem check_13100 : cell_13100.check = true := by
  decide +kernel

theorem check_13101 : cell_13101.check = true := by
  decide +kernel

theorem check_13102 : cell_13102.check = true := by
  decide +kernel

theorem check_13103 : cell_13103.check = true := by
  decide +kernel

theorem check_13104 : cell_13104.check = true := by
  decide +kernel

theorem check_13105 : cell_13105.check = true := by
  decide +kernel

theorem check_13106 : cell_13106.check = true := by
  decide +kernel

theorem check_13107 : cell_13107.check = true := by
  decide +kernel

theorem check_13108 : cell_13108.check = true := by
  decide +kernel

theorem check_13109 : cell_13109.check = true := by
  decide +kernel

theorem check_13110 : cell_13110.check = true := by
  decide +kernel

theorem check_13111 : cell_13111.check = true := by
  decide +kernel

theorem check_13112 : cell_13112.check = true := by
  decide +kernel

theorem check_13113 : cell_13113.check = true := by
  decide +kernel

theorem check_13114 : cell_13114.check = true := by
  decide +kernel

theorem check_13115 : cell_13115.check = true := by
  decide +kernel

theorem check_13116 : cell_13116.check = true := by
  decide +kernel

theorem check_13117 : cell_13117.check = true := by
  decide +kernel

theorem check_13118 : cell_13118.check = true := by
  decide +kernel

theorem check_13119 : cell_13119.check = true := by
  decide +kernel

theorem check_13120 : cell_13120.check = true := by
  decide +kernel

theorem check_13121 : cell_13121.check = true := by
  decide +kernel

theorem check_13122 : cell_13122.check = true := by
  decide +kernel

theorem check_13123 : cell_13123.check = true := by
  decide +kernel

theorem check_13124 : cell_13124.check = true := by
  decide +kernel

theorem check_13125 : cell_13125.check = true := by
  decide +kernel

theorem check_13126 : cell_13126.check = true := by
  decide +kernel

theorem check_13127 : cell_13127.check = true := by
  decide +kernel

theorem check_13128 : cell_13128.check = true := by
  decide +kernel

theorem check_13129 : cell_13129.check = true := by
  decide +kernel

theorem check_13130 : cell_13130.check = true := by
  decide +kernel

theorem check_13131 : cell_13131.check = true := by
  decide +kernel

theorem check_13132 : cell_13132.check = true := by
  decide +kernel

theorem check_13133 : cell_13133.check = true := by
  decide +kernel

theorem check_13134 : cell_13134.check = true := by
  decide +kernel

theorem check_13135 : cell_13135.check = true := by
  decide +kernel

theorem check_13136 : cell_13136.check = true := by
  decide +kernel

theorem check_13137 : cell_13137.check = true := by
  decide +kernel

theorem check_13138 : cell_13138.check = true := by
  decide +kernel

theorem check_13139 : cell_13139.check = true := by
  decide +kernel

theorem check_13140 : cell_13140.check = true := by
  decide +kernel

theorem check_13141 : cell_13141.check = true := by
  decide +kernel

theorem check_13142 : cell_13142.check = true := by
  decide +kernel

theorem check_13143 : cell_13143.check = true := by
  decide +kernel

theorem check_13144 : cell_13144.check = true := by
  decide +kernel

theorem check_13145 : cell_13145.check = true := by
  decide +kernel

theorem check_13146 : cell_13146.check = true := by
  decide +kernel

theorem check_13147 : cell_13147.check = true := by
  decide +kernel

theorem check_13148 : cell_13148.check = true := by
  decide +kernel

theorem check_13149 : cell_13149.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13100, cell_13101, cell_13102, cell_13103, cell_13104, cell_13105, cell_13106, cell_13107, cell_13108, cell_13109, cell_13110, cell_13111, cell_13112, cell_13113, cell_13114, cell_13115, cell_13116, cell_13117, cell_13118, cell_13119, cell_13120, cell_13121, cell_13122, cell_13123, cell_13124, cell_13125, cell_13126, cell_13127, cell_13128, cell_13129, cell_13130, cell_13131, cell_13132, cell_13133, cell_13134, cell_13135, cell_13136, cell_13137, cell_13138, cell_13139, cell_13140, cell_13141, cell_13142, cell_13143, cell_13144, cell_13145, cell_13146, cell_13147, cell_13148, cell_13149]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13100, check_13101, check_13102, check_13103, check_13104, check_13105, check_13106, check_13107, check_13108, check_13109, check_13110, check_13111, check_13112, check_13113, check_13114, check_13115, check_13116, check_13117, check_13118, check_13119, check_13120, check_13121, check_13122, check_13123, check_13124, check_13125, check_13126, check_13127, check_13128, check_13129, check_13130, check_13131, check_13132, check_13133, check_13134, check_13135, check_13136, check_13137, check_13138, check_13139, check_13140, check_13141, check_13142, check_13143, check_13144, check_13145, check_13146, check_13147, check_13148, check_13149, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0262

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0262
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0262
open AnalyticBounds.ExpressionCertificate

theorem linked_13100 : Linked cell_13100 pieces := by
  link_source cell_13100 with piece_1838 using piece_1838_mem, piece_634_mem

theorem linked_13101 : Linked cell_13101 pieces := by
  link_source cell_13101 with piece_1838 using piece_1838_mem, piece_634_mem

theorem linked_13102 : Linked cell_13102 pieces := by
  link_source cell_13102 with piece_1839 using piece_1839_mem, piece_635_mem

theorem linked_13103 : Linked cell_13103 pieces := by
  link_source cell_13103 with piece_1839 using piece_1839_mem, piece_635_mem

theorem linked_13104 : Linked cell_13104 pieces := by
  link_source cell_13104 with piece_1839 using piece_1839_mem, piece_635_mem

theorem linked_13105 : Linked cell_13105 pieces := by
  link_source cell_13105 with piece_1839 using piece_1839_mem, piece_635_mem

theorem linked_13106 : Linked cell_13106 pieces := by
  link_source cell_13106 with piece_1839 using piece_1839_mem, piece_635_mem

theorem linked_13107 : Linked cell_13107 pieces := by
  link_source cell_13107 with piece_1839 using piece_1839_mem, piece_635_mem

theorem linked_13108 : Linked cell_13108 pieces := by
  link_source cell_13108 with piece_1839 using piece_1839_mem, piece_634_mem

theorem linked_13109 : Linked cell_13109 pieces := by
  link_source cell_13109 with piece_1839 using piece_1839_mem, piece_634_mem

theorem linked_13110 : Linked cell_13110 pieces := by
  link_source cell_13110 with piece_1839 using piece_1839_mem, piece_634_mem

theorem linked_13111 : Linked cell_13111 pieces := by
  link_source cell_13111 with piece_1839 using piece_1839_mem, piece_634_mem

theorem linked_13112 : Linked cell_13112 pieces := by
  link_source cell_13112 with piece_1839 using piece_1839_mem, piece_634_mem

theorem linked_13113 : Linked cell_13113 pieces := by
  link_source cell_13113 with piece_1840 using piece_1840_mem, piece_634_mem

theorem linked_13114 : Linked cell_13114 pieces := by
  link_source cell_13114 with piece_1840 using piece_1840_mem, piece_634_mem

theorem linked_13115 : Linked cell_13115 pieces := by
  link_source cell_13115 with piece_1840 using piece_1840_mem, piece_634_mem

theorem linked_13116 : Linked cell_13116 pieces := by
  link_source cell_13116 with piece_1840 using piece_1840_mem, ⟨piece_633_mem, piece_634_mem⟩

theorem linked_13117 : Linked cell_13117 pieces := by
  link_source cell_13117 with piece_1841 using piece_1841_mem, piece_634_mem

theorem linked_13118 : Linked cell_13118 pieces := by
  link_source cell_13118 with piece_1841 using piece_1841_mem, piece_634_mem

theorem linked_13119 : Linked cell_13119 pieces := by
  link_source cell_13119 with piece_1841 using piece_1841_mem, ⟨piece_633_mem, piece_634_mem⟩

theorem linked_13120 : Linked cell_13120 pieces := by
  link_source cell_13120 with piece_1841 using piece_1841_mem, piece_633_mem

theorem linked_13121 : Linked cell_13121 pieces := by
  link_source cell_13121 with piece_1842 using piece_1842_mem, ⟨piece_633_mem, piece_634_mem⟩

theorem linked_13122 : Linked cell_13122 pieces := by
  link_source cell_13122 with piece_1842 using piece_1842_mem, piece_633_mem

theorem linked_13123 : Linked cell_13123 pieces := by
  link_source cell_13123 with piece_1842 using piece_1842_mem, piece_633_mem

theorem linked_13124 : Linked cell_13124 pieces := by
  link_source cell_13124 with piece_1842 using piece_1842_mem, piece_633_mem

theorem linked_13125 : Linked cell_13125 pieces := by
  link_source cell_13125 with piece_1843 using piece_1843_mem, piece_633_mem

theorem linked_13126 : Linked cell_13126 pieces := by
  link_source cell_13126 with piece_1843 using piece_1843_mem, piece_633_mem

theorem linked_13127 : Linked cell_13127 pieces := by
  link_source cell_13127 with piece_1843 using piece_1843_mem, piece_633_mem

theorem linked_13128 : Linked cell_13128 pieces := by
  link_source cell_13128 with piece_1843 using piece_1843_mem, ⟨piece_632_mem, piece_633_mem⟩

theorem linked_13129 : Linked cell_13129 pieces := by
  link_source cell_13129 with piece_1844 using piece_1844_mem, piece_633_mem

theorem linked_13130 : Linked cell_13130 pieces := by
  link_source cell_13130 with piece_1844 using piece_1844_mem, ⟨piece_632_mem, piece_633_mem⟩

theorem linked_13131 : Linked cell_13131 pieces := by
  link_source cell_13131 with piece_1845 using piece_1845_mem, piece_632_mem

theorem linked_13132 : Linked cell_13132 pieces := by
  link_source cell_13132 with piece_1846 using piece_1846_mem, piece_633_mem

theorem linked_13133 : Linked cell_13133 pieces := by
  link_source cell_13133 with piece_1846 using piece_1846_mem, ⟨piece_632_mem, piece_633_mem⟩

theorem linked_13134 : Linked cell_13134 pieces := by
  link_source cell_13134 with piece_1846 using piece_1846_mem, piece_632_mem

theorem linked_13135 : Linked cell_13135 pieces := by
  link_source cell_13135 with piece_1846 using piece_1846_mem, piece_632_mem

theorem linked_13136 : Linked cell_13136 pieces := by
  link_source cell_13136 with piece_1847 using piece_1847_mem, piece_632_mem

theorem linked_13137 : Linked cell_13137 pieces := by
  link_source cell_13137 with piece_1847 using piece_1847_mem, piece_632_mem

theorem linked_13138 : Linked cell_13138 pieces := by
  link_source cell_13138 with piece_1847 using piece_1847_mem, piece_632_mem

theorem linked_13139 : Linked cell_13139 pieces := by
  link_source cell_13139 with piece_1847 using piece_1847_mem, piece_632_mem

theorem linked_13140 : Linked cell_13140 pieces := by
  link_source cell_13140 with piece_1848 using piece_1848_mem, piece_632_mem

theorem linked_13141 : Linked cell_13141 pieces := by
  link_source cell_13141 with piece_1848 using piece_1848_mem, piece_632_mem

theorem linked_13142 : Linked cell_13142 pieces := by
  link_source cell_13142 with piece_1848 using piece_1848_mem, ⟨piece_631_mem, piece_632_mem⟩

theorem linked_13143 : Linked cell_13143 pieces := by
  link_source cell_13143 with piece_1848 using piece_1848_mem, piece_631_mem

theorem linked_13144 : Linked cell_13144 pieces := by
  link_source cell_13144 with piece_1849 using piece_1849_mem, piece_632_mem

theorem linked_13145 : Linked cell_13145 pieces := by
  link_source cell_13145 with piece_1849 using piece_1849_mem, ⟨piece_631_mem, piece_632_mem⟩

theorem linked_13146 : Linked cell_13146 pieces := by
  link_source cell_13146 with piece_1849 using piece_1849_mem, piece_631_mem

theorem linked_13147 : Linked cell_13147 pieces := by
  link_source cell_13147 with piece_1849 using piece_1849_mem, piece_631_mem

theorem linked_13148 : Linked cell_13148 pieces := by
  link_source cell_13148 with piece_1850 using piece_1850_mem, ⟨piece_631_mem, piece_632_mem⟩

theorem linked_13149 : Linked cell_13149 pieces := by
  link_source cell_13149 with piece_1850 using piece_1850_mem, piece_631_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0262.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0262.cells,List.forall_mem_cons]
  exact ⟨linked_13100, linked_13101, linked_13102, linked_13103, linked_13104, linked_13105, linked_13106, linked_13107, linked_13108, linked_13109, linked_13110, linked_13111, linked_13112, linked_13113, linked_13114, linked_13115, linked_13116, linked_13117, linked_13118, linked_13119, linked_13120, linked_13121, linked_13122, linked_13123, linked_13124, linked_13125, linked_13126, linked_13127, linked_13128, linked_13129, linked_13130, linked_13131, linked_13132, linked_13133, linked_13134, linked_13135, linked_13136, linked_13137, linked_13138, linked_13139, linked_13140, linked_13141, linked_13142, linked_13143, linked_13144, linked_13145, linked_13146, linked_13147, linked_13148, linked_13149, by simp⟩

theorem covered : covers (159550000000000003 / 200000000000000000 : ℚ) (40162500000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0262.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0262
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0263
open SourceCertificate CurrentSourceData

private noncomputable def cellDefaults : Cell := {
  domain := ⟨(40162500000000001 / 50000000000000000 : ℚ), (160675000000000001 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (2334908850657 / 5000000000000 : ℚ)
  w := (6712233541141 / 5000000000000 : ℚ)
  center := (64265000000000001 / 80000000000000000 : ℚ)
  supportValue := (2442373280114611 / 10000000000000000 : ℚ)
  supportSlope := (-8992898561076513 / 10000000000000000 : ℚ)
  oldCenter := (2442373280114611 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1851
  oldLo := (24249999999999999 / 100000000000000000 : ℚ)
  oldHi := (24299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_628]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

noncomputable def cell_13150 : Cell := { cellDefaults with
  r := (5839741903677 / 12500000000000 : ℚ)
  w := (2685705663787 / 2000000000000 : ℚ)
  newCoefficients := coefficients_1850
  oldLo := (24399999999999999 / 100000000000000000 : ℚ)
  oldHi := (489 / 2000 : ℚ)
  oldPieces := [piece_631]
}

noncomputable def cell_13151 : Cell := { cellDefaults with
  domain := ⟨(160675000000000001 / 200000000000000000 : ℚ), (80349999999999999 / 100000000000000000 : ℚ)⟩
  r := (5839741903677 / 12500000000000 : ℚ)
  w := (2685705663787 / 2000000000000 : ℚ)
  center := (321374999999999999 / 400000000000000000 : ℚ)
  supportValue := (12206247717776693 / 50000000000000000 : ℚ)
  supportSlope := (-4493441833278139 / 5000000000000000 : ℚ)
  oldCenter := (12206247717776693 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1850
  oldLo := (24399999999999999 / 100000000000000000 : ℚ)
  oldHi := (489 / 2000 : ℚ)
  oldPieces := [piece_631]
}

noncomputable def cell_13152 : Cell := { cellDefaults with
  domain := ⟨(80349999999999999 / 100000000000000000 : ℚ), (160725000000000001 / 200000000000000000 : ℚ)⟩
  center := (321424999999999999 / 400000000000000000 : ℚ)
  supportValue := (12215583269122207 / 50000000000000000 : ℚ)
  supportSlope := (-562052513654531 / 625000000000000 : ℚ)
  oldCenter := (12215583269122207 / 50000000000000000 : ℚ)
  oldLo := (24399999999999999 / 100000000000000000 : ℚ)
  oldHi := (489 / 2000 : ℚ)
  oldPieces := [piece_631]
}

noncomputable def cell_13153 : Cell := { cellDefaults with
  domain := ⟨(160725000000000001 / 200000000000000000 : ℚ), (40187500000000001 / 50000000000000000 : ℚ)⟩
  center := (64295000000000001 / 80000000000000000 : ℚ)
  supportValue := (24419929246399247 / 100000000000000000 : ℚ)
  supportSlope := (-2246706003819773 / 2500000000000000 : ℚ)
  oldCenter := (24419929246399247 / 100000000000000000 : ℚ)
  oldLo := (24399999999999999 / 100000000000000000 : ℚ)
  oldHi := (489 / 2000 : ℚ)
  oldPieces := [piece_631]
}

noncomputable def cell_13154 : Cell := { cellDefaults with
  domain := ⟨(40187500000000001 / 50000000000000000 : ℚ), (160775000000000007 / 200000000000000000 : ℚ)⟩
  center := (321525000000000011 / 400000000000000000 : ℚ)
  supportValue := (12204349734063713 / 50000000000000000 : ℚ)
  supportSlope := (-1122602311975783 / 1250000000000000 : ℚ)
  oldCenter := (12204349734063713 / 50000000000000000 : ℚ)
  oldLo := (24399999999999999 / 100000000000000000 : ℚ)
  oldHi := (489 / 2000 : ℚ)
  oldPieces := [piece_631]
}

noncomputable def cell_13155 : Cell := { cellDefaults with
  domain := ⟨(160775000000000007 / 200000000000000000 : ℚ), (16080000000000001 / 20000000000000000 : ℚ)⟩
  center := (321575000000000017 / 400000000000000000 : ℚ)
  supportValue := (24397476715626099 / 100000000000000000 : ℚ)
  supportSlope := (-8976043168055259 / 10000000000000000 : ℚ)
  oldCenter := (24397476715626099 / 100000000000000000 : ℚ)
  oldLo := (24349999999999999 / 100000000000000000 : ℚ)
  oldHi := (489 / 2000 : ℚ)
  oldPieces := [piece_630, piece_631]
}

noncomputable def cell_13156 : Cell := { cellDefaults with
  domain := ⟨(16080000000000001 / 20000000000000000 : ℚ), (160825000000000007 / 200000000000000000 : ℚ)⟩
  r := (46678435292541 / 100000000000000 : ℚ)
  w := (13420406508609 / 10000000000000 : ℚ)
  center := (321625000000000017 / 400000000000000000 : ℚ)
  supportValue := (4883226295089243 / 20000000000000000 : ℚ)
  supportSlope := (-8980757543880469 / 10000000000000000 : ℚ)
  oldCenter := (4883226295089243 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1852
  oldLo := (24399999999999999 / 100000000000000000 : ℚ)
  oldHi := (489 / 2000 : ℚ)
  oldPieces := [piece_631]
}

noncomputable def cell_13157 : Cell := { cellDefaults with
  domain := ⟨(160825000000000007 / 200000000000000000 : ℚ), (40212500000000001 / 50000000000000000 : ℚ)⟩
  r := (46678435292541 / 100000000000000 : ℚ)
  w := (13420406508609 / 10000000000000 : ℚ)
  center := (321675000000000011 / 400000000000000000 : ℚ)
  supportValue := (2440490927407849 / 10000000000000000 : ℚ)
  supportSlope := (-8974867923666717 / 10000000000000000 : ℚ)
  oldCenter := (2440490927407849 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1852
  oldLo := (24349999999999999 / 100000000000000000 : ℚ)
  oldHi := (489 / 2000 : ℚ)
  oldPieces := [piece_630, piece_631]
}

noncomputable def cell_13158 : Cell := { cellDefaults with
  domain := ⟨(40212500000000001 / 50000000000000000 : ℚ), (160875000000000001 / 200000000000000000 : ℚ)⟩
  r := (46678435292541 / 100000000000000 : ℚ)
  w := (13420406508609 / 10000000000000 : ℚ)
  center := (64345000000000001 / 80000000000000000 : ℚ)
  supportValue := (2439369337770407 / 10000000000000000 : ℚ)
  supportSlope := (-8970455319100533 / 10000000000000000 : ℚ)
  oldCenter := (2439369337770407 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1852
  oldLo := (24349999999999999 / 100000000000000000 : ℚ)
  oldHi := (24399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_630]
}

noncomputable def cell_13159 : Cell := { cellDefaults with
  domain := ⟨(160875000000000001 / 200000000000000000 : ℚ), (80449999999999999 / 100000000000000000 : ℚ)⟩
  r := (46678435292541 / 100000000000000 : ℚ)
  w := (13420406508609 / 10000000000000 : ℚ)
  center := (321774999999999999 / 400000000000000000 : ℚ)
  supportValue := (1219124202319667 / 5000000000000000 : ℚ)
  supportSlope := (-8964472048950087 / 10000000000000000 : ℚ)
  oldCenter := (1219124202319667 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1852
  oldLo := (24349999999999999 / 100000000000000000 : ℚ)
  oldHi := (24399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_630]
}

noncomputable def cell_13160 : Cell := { cellDefaults with
  domain := ⟨(80449999999999999 / 100000000000000000 : ℚ), (160925000000000001 / 200000000000000000 : ℚ)⟩
  r := (11664677015007 / 25000000000000 : ℚ)
  w := (13416344295489 / 10000000000000 : ℚ)
  center := (321824999999999999 / 400000000000000000 : ℚ)
  supportValue := (12200565676888951 / 50000000000000000 : ℚ)
  supportSlope := (-448469421835131 / 500000000000000 : ℚ)
  oldCenter := (12200565676888951 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1853
  oldLo := (24349999999999999 / 100000000000000000 : ℚ)
  oldHi := (489 / 2000 : ℚ)
  oldPieces := [piece_630, piece_631]
}

noncomputable def cell_13161 : Cell := { cellDefaults with
  domain := ⟨(160925000000000001 / 200000000000000000 : ℚ), (40237500000000001 / 50000000000000000 : ℚ)⟩
  r := (11664677015007 / 25000000000000 : ℚ)
  w := (13416344295489 / 10000000000000 : ℚ)
  center := (64375000000000001 / 80000000000000000 : ℚ)
  supportValue := (12194961151605689 / 50000000000000000 : ℚ)
  supportSlope := (-2241103904635231 / 2500000000000000 : ℚ)
  oldCenter := (12194961151605689 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1853
  oldLo := (24349999999999999 / 100000000000000000 : ℚ)
  oldHi := (24399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_630]
}

noncomputable def cell_13162 : Cell := { cellDefaults with
  domain := ⟨(40237500000000001 / 50000000000000000 : ℚ), (160975000000000007 / 200000000000000000 : ℚ)⟩
  r := (11664677015007 / 25000000000000 : ℚ)
  w := (13416344295489 / 10000000000000 : ℚ)
  center := (321925000000000011 / 400000000000000000 : ℚ)
  supportValue := (6094680128910817 / 25000000000000000 : ℚ)
  supportSlope := (-4479220879136121 / 5000000000000000 : ℚ)
  oldCenter := (6094680128910817 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1853
  oldLo := (24349999999999999 / 100000000000000000 : ℚ)
  oldHi := (24399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_630]
}

noncomputable def cell_13163 : Cell := { cellDefaults with
  domain := ⟨(160975000000000007 / 200000000000000000 : ℚ), (16100000000000001 / 20000000000000000 : ℚ)⟩
  r := (11664677015007 / 25000000000000 : ℚ)
  w := (13416344295489 / 10000000000000 : ℚ)
  center := (321975000000000017 / 400000000000000000 : ℚ)
  supportValue := (2436752618879647 / 10000000000000000 : ℚ)
  supportSlope := (-8952478459288741 / 10000000000000000 : ℚ)
  oldCenter := (2436752618879647 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1853
  oldLo := (24349999999999999 / 100000000000000000 : ℚ)
  oldHi := (24399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_630]
}

noncomputable def cell_13164 : Cell := { cellDefaults with
  domain := ⟨(16100000000000001 / 20000000000000000 : ℚ), (161025000000000007 / 200000000000000000 : ℚ)⟩
  r := (46638998390351 / 100000000000000 : ℚ)
  w := (6706141836567 / 5000000000000 : ℚ)
  center := (322025000000000017 / 400000000000000000 : ℚ)
  supportValue := (3048269249248059 / 12500000000000000 : ℚ)
  supportSlope := (-4479191532789621 / 5000000000000000 : ℚ)
  oldCenter := (3048269249248059 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1854
  oldLo := (24349999999999999 / 100000000000000000 : ℚ)
  oldHi := (24399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_630]
}

noncomputable def cell_13165 : Cell := { cellDefaults with
  domain := ⟨(161025000000000007 / 200000000000000000 : ℚ), (40262500000000001 / 50000000000000000 : ℚ)⟩
  r := (46638998390351 / 100000000000000 : ℚ)
  w := (6706141836567 / 5000000000000 : ℚ)
  center := (322075000000000011 / 400000000000000000 : ℚ)
  supportValue := (12187479870617751 / 50000000000000000 : ℚ)
  supportSlope := (-4476209298783211 / 5000000000000000 : ℚ)
  oldCenter := (12187479870617751 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1854
  oldLo := (24349999999999999 / 100000000000000000 : ℚ)
  oldHi := (24399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_630]
}

noncomputable def cell_13166 : Cell := { cellDefaults with
  domain := ⟨(40262500000000001 / 50000000000000000 : ℚ), (161075000000000001 / 200000000000000000 : ℚ)⟩
  r := (46638998390351 / 100000000000000 : ℚ)
  w := (6706141836567 / 5000000000000 : ℚ)
  center := (64425000000000001 / 80000000000000000 : ℚ)
  supportValue := (12181886468742077 / 50000000000000000 : ℚ)
  supportSlope := (-8946464664242277 / 10000000000000000 : ℚ)
  oldCenter := (12181886468742077 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1854
  oldLo := (24349999999999999 / 100000000000000000 : ℚ)
  oldHi := (24399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_630]
}

noncomputable def cell_13167 : Cell := { cellDefaults with
  domain := ⟨(161075000000000001 / 200000000000000000 : ℚ), (80549999999999999 / 100000000000000000 : ℚ)⟩
  r := (46638998390351 / 100000000000000 : ℚ)
  w := (6706141836567 / 5000000000000 : ℚ)
  center := (322174999999999999 / 400000000000000000 : ℚ)
  supportValue := (2435259356958377 / 10000000000000000 : ℚ)
  supportSlope := (-8940971458236653 / 10000000000000000 : ℚ)
  oldCenter := (2435259356958377 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1854
  oldLo := (24299999999999999 / 100000000000000000 : ℚ)
  oldHi := (24399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_629, piece_630]
}

noncomputable def cell_13168 : Cell := { cellDefaults with
  domain := ⟨(80549999999999999 / 100000000000000000 : ℚ), (161125000000000001 / 200000000000000000 : ℚ)⟩
  r := (46619302846839 / 100000000000000 : ℚ)
  w := (1676027786607 / 1250000000000 : ℚ)
  center := (322224999999999999 / 400000000000000000 : ℚ)
  supportValue := (12185604961999197 / 50000000000000000 : ℚ)
  supportSlope := (-34946897925453 / 39062500000000 : ℚ)
  oldCenter := (12185604961999197 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1855
  oldLo := (24349999999999999 / 100000000000000000 : ℚ)
  oldHi := (24399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_630]
}

noncomputable def cell_13169 : Cell := { cellDefaults with
  domain := ⟨(161125000000000001 / 200000000000000000 : ℚ), (40287500000000001 / 50000000000000000 : ℚ)⟩
  r := (46619302846839 / 100000000000000 : ℚ)
  w := (1676027786607 / 1250000000000 : ℚ)
  center := (64455000000000001 / 80000000000000000 : ℚ)
  supportValue := (1218001531515943 / 5000000000000000 : ℚ)
  supportSlope := (-357618450998977 / 400000000000000 : ℚ)
  oldCenter := (1218001531515943 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1855
  oldLo := (24349999999999999 / 100000000000000000 : ℚ)
  oldHi := (24399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_630]
}

noncomputable def cell_13170 : Cell := { cellDefaults with
  domain := ⟨(40287500000000001 / 50000000000000000 : ℚ), (161175000000000007 / 200000000000000000 : ℚ)⟩
  r := (46619302846839 / 100000000000000 : ℚ)
  w := (1676027786607 / 1250000000000 : ℚ)
  center := (322325000000000011 / 400000000000000000 : ℚ)
  supportValue := (12174429272667743 / 50000000000000000 : ℚ)
  supportSlope := (-4467768216415721 / 5000000000000000 : ℚ)
  oldCenter := (12174429272667743 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1855
  oldLo := (24299999999999999 / 100000000000000000 : ℚ)
  oldHi := (24399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_629, piece_630]
}

noncomputable def cell_13171 : Cell := { cellDefaults with
  domain := ⟨(161175000000000007 / 200000000000000000 : ℚ), (16120000000000001 / 20000000000000000 : ℚ)⟩
  r := (46619302846839 / 100000000000000 : ℚ)
  w := (1676027786607 / 1250000000000 : ℚ)
  center := (322375000000000017 / 400000000000000000 : ℚ)
  supportValue := (24337691997511549 / 100000000000000000 : ℚ)
  supportSlope := (-8930270659449663 / 10000000000000000 : ℚ)
  oldCenter := (24337691997511549 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1855
  oldLo := (24299999999999999 / 100000000000000000 : ℚ)
  oldHi := (24349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_629]
}

noncomputable def cell_13172 : Cell := { cellDefaults with
  domain := ⟨(16120000000000001 / 20000000000000000 : ℚ), (32248491620111733 / 40000000000000000 : ℚ)⟩
  r := (23299812133659 / 50000000000000 : ℚ)
  w := (2680832210331 / 2000000000000 : ℚ)
  center := (12897698324022347 / 16000000000000000 : ℚ)
  supportValue := (12176206194651447 / 50000000000000000 : ℚ)
  supportSlope := (-8933023208600203 / 10000000000000000 : ℚ)
  oldCenter := (12176206194651447 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1856
  oldLo := (24299999999999999 / 100000000000000000 : ℚ)
  oldHi := (24399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_629, piece_630]
}

noncomputable def cell_13173 : Cell := { cellDefaults with
  domain := ⟨(32248491620111733 / 40000000000000000 : ℚ), (4032122905027933 / 5000000000000000 : ℚ)⟩
  r := (23299812133659 / 50000000000000 : ℚ)
  w := (2680832210331 / 2000000000000 : ℚ)
  center := (64505474860335197 / 80000000000000000 : ℚ)
  supportValue := (1520841082293853 / 6250000000000000 : ℚ)
  supportSlope := (-4462005236523249 / 5000000000000000 : ℚ)
  oldCenter := (1520841082293853 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1856
  oldLo := (24299999999999999 / 100000000000000000 : ℚ)
  oldHi := (24349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_629]
}

noncomputable def cell_13174 : Cell := { cellDefaults with
  domain := ⟨(4032122905027933 / 5000000000000000 : ℚ), (80649999999999999 / 100000000000000000 : ℚ)⟩
  r := (23299812133659 / 50000000000000 : ℚ)
  w := (2680832210331 / 2000000000000 : ℚ)
  center := (161292458100558659 / 200000000000000000 : ℚ)
  supportValue := (6080150674999317 / 25000000000000000 : ℚ)
  supportSlope := (-4458602179009731 / 5000000000000000 : ℚ)
  oldCenter := (6080150674999317 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1857
  oldLo := (24299999999999999 / 100000000000000000 : ℚ)
  oldHi := (24349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_629]
}

noncomputable def cell_13175 : Cell := { cellDefaults with
  domain := ⟨(80649999999999999 / 100000000000000000 : ℚ), (161325000000000001 / 200000000000000000 : ℚ)⟩
  r := (46579959647127 / 100000000000000 : ℚ)
  w := (536003964691 / 400000000000 : ℚ)
  center := (322624999999999999 / 400000000000000000 : ℚ)
  supportValue := (1521338157631911 / 6250000000000000 : ℚ)
  supportSlope := (-892423326165019 / 1000000000000000 : ℚ)
  oldCenter := (1521338157631911 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1858
  oldLo := (24299999999999999 / 100000000000000000 : ℚ)
  oldHi := (24349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_629]
}

noncomputable def cell_13176 : Cell := { cellDefaults with
  domain := ⟨(161325000000000001 / 200000000000000000 : ℚ), (40337500000000001 / 50000000000000000 : ℚ)⟩
  r := (46579959647127 / 100000000000000 : ℚ)
  w := (536003964691 / 400000000000 : ℚ)
  center := (64535000000000001 / 80000000000000000 : ℚ)
  supportValue := (6082564731202239 / 25000000000000000 : ℚ)
  supportSlope := (-8918319669620797 / 10000000000000000 : ℚ)
  oldCenter := (6082564731202239 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1858
  oldLo := (24299999999999999 / 100000000000000000 : ℚ)
  oldHi := (24349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_629]
}

noncomputable def cell_13177 : Cell := { cellDefaults with
  domain := ⟨(40337500000000001 / 50000000000000000 : ℚ), (161375000000000007 / 200000000000000000 : ℚ)⟩
  r := (46579959647127 / 100000000000000 : ℚ)
  w := (536003964691 / 400000000000 : ℚ)
  center := (322725000000000011 / 400000000000000000 : ℚ)
  supportValue := (6079778678250311 / 25000000000000000 : ℚ)
  supportSlope := (-8912416466418979 / 10000000000000000 : ℚ)
  oldCenter := (6079778678250311 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1858
  oldLo := (24299999999999999 / 100000000000000000 : ℚ)
  oldHi := (24349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_629]
}

noncomputable def cell_13178 : Cell := { cellDefaults with
  domain := ⟨(161375000000000007 / 200000000000000000 : ℚ), (16140000000000001 / 20000000000000000 : ℚ)⟩
  r := (46579959647127 / 100000000000000 : ℚ)
  w := (536003964691 / 400000000000 : ℚ)
  center := (322775000000000017 / 400000000000000000 : ℚ)
  supportValue := (12153988936861379 / 50000000000000000 : ℚ)
  supportSlope := (-4453261808969343 / 5000000000000000 : ℚ)
  oldCenter := (12153988936861379 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1858
  oldLo := (24299999999999999 / 100000000000000000 : ℚ)
  oldHi := (24349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_629]
}

noncomputable def cell_13179 : Cell := { cellDefaults with
  domain := ⟨(16140000000000001 / 20000000000000000 : ℚ), (64570000000000003 / 80000000000000000 : ℚ)⟩
  r := (46560312931671 / 100000000000000 : ℚ)
  w := (418626196799 / 312500000000 : ℚ)
  center := (129130000000000007 / 160000000000000000 : ℚ)
  supportValue := (3040818866667469 / 12500000000000000 : ℚ)
  supportSlope := (-2228089536369327 / 2500000000000000 : ℚ)
  oldCenter := (3040818866667469 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1859
  oldLo := (24299999999999999 / 100000000000000000 : ℚ)
  oldHi := (24349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_629]
}

noncomputable def cell_13180 : Cell := { cellDefaults with
  domain := ⟨(64570000000000003 / 80000000000000000 : ℚ), (32290000000000001 / 40000000000000000 : ℚ)⟩
  r := (46560312931671 / 100000000000000 : ℚ)
  w := (418626196799 / 312500000000 : ℚ)
  center := (25830000000000001 / 32000000000000000 : ℚ)
  supportValue := (24315414167674243 / 100000000000000000 : ℚ)
  supportSlope := (-222661604003549 / 250000000000000 : ℚ)
  oldCenter := (24315414167674243 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1859
  oldLo := (24299999999999999 / 100000000000000000 : ℚ)
  oldHi := (24349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_629]
}

noncomputable def cell_13181 : Cell := { cellDefaults with
  domain := ⟨(32290000000000001 / 40000000000000000 : ℚ), (64590000000000001 / 80000000000000000 : ℚ)⟩
  r := (46560312931671 / 100000000000000 : ℚ)
  w := (418626196799 / 312500000000 : ℚ)
  center := (129170000000000003 / 160000000000000000 : ℚ)
  supportValue := (12152142381515889 / 50000000000000000 : ℚ)
  supportSlope := (-278149166724917 / 312500000000000 : ℚ)
  oldCenter := (12152142381515889 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1859
  oldHi := (24349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_628, piece_629]
}

noncomputable def cell_13182 : Cell := { cellDefaults with
  domain := ⟨(64590000000000001 / 80000000000000000 : ℚ), (323 / 400 : ℚ)⟩
  r := (46560312931671 / 100000000000000 : ℚ)
  w := (418626196799 / 312500000000 : ℚ)
  center := (129190000000000001 / 160000000000000000 : ℚ)
  supportValue := (485863228471063 / 2000000000000000 : ℚ)
  supportSlope := (-1779274411890697 / 2000000000000000 : ℚ)
  oldCenter := (485863228471063 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1859
  oldPieces := [piece_628]
}

noncomputable def cell_13183 : Cell := { cellDefaults with
  domain := ⟨(323 / 400 : ℚ), (64610000000000001 / 80000000000000000 : ℚ)⟩
  r := (11635170073163 / 25000000000000 : ℚ)
  w := (836998492253 / 625000000000 : ℚ)
  center := (129210000000000001 / 160000000000000000 : ℚ)
  supportValue := (1215586299985049 / 5000000000000000 : ℚ)
  supportSlope := (-2225130698128907 / 2500000000000000 : ℚ)
  oldCenter := (1215586299985049 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1860
  oldLo := (24299999999999999 / 100000000000000000 : ℚ)
  oldHi := (24349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_629]
}

noncomputable def cell_13184 : Cell := { cellDefaults with
  domain := ⟨(64610000000000001 / 80000000000000000 : ℚ), (32310000000000001 / 40000000000000000 : ℚ)⟩
  r := (11635170073163 / 25000000000000 : ℚ)
  w := (836998492253 / 625000000000 : ℚ)
  center := (129230000000000003 / 160000000000000000 : ℚ)
  supportValue := (12150302008021639 / 50000000000000000 : ℚ)
  supportSlope := (-4447696290039271 / 5000000000000000 : ℚ)
  oldCenter := (12150302008021639 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1860
  oldHi := (24349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_628, piece_629]
}

noncomputable def cell_13185 : Cell := { cellDefaults with
  domain := ⟨(32310000000000001 / 40000000000000000 : ℚ), (64630000000000003 / 80000000000000000 : ℚ)⟩
  r := (11635170073163 / 25000000000000 : ℚ)
  w := (836998492253 / 625000000000 : ℚ)
  center := (25850000000000001 / 32000000000000000 : ℚ)
  supportValue := (12144743699529717 / 50000000000000000 : ℚ)
  supportSlope := (-8890445368931131 / 10000000000000000 : ℚ)
  oldCenter := (12144743699529717 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1860
  oldPieces := [piece_628]
}

noncomputable def cell_13186 : Cell := { cellDefaults with
  domain := ⟨(64630000000000003 / 80000000000000000 : ℚ), (16160000000000001 / 20000000000000000 : ℚ)⟩
  r := (11635170073163 / 25000000000000 : ℚ)
  w := (836998492253 / 625000000000 : ℚ)
  center := (129270000000000007 / 160000000000000000 : ℚ)
  supportValue := (485567560095313 / 2000000000000000 : ℚ)
  supportSlope := (-2221145683093173 / 2500000000000000 : ℚ)
  oldCenter := (485567560095313 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1860
  oldPieces := [piece_628]
}

noncomputable def cell_13187 : Cell := { cellDefaults with
  domain := ⟨(16160000000000001 / 20000000000000000 : ℚ), (64650000000000003 / 80000000000000000 : ℚ)⟩
  r := (23260531740153 / 50000000000000 : ℚ)
  w := (2677583025817 / 2000000000000 : ℚ)
  center := (129290000000000007 / 160000000000000000 : ℚ)
  supportValue := (151855793757151 / 625000000000000 : ℚ)
  supportSlope := (-1778003589567767 / 2000000000000000 : ℚ)
  oldCenter := (151855793757151 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1861
  oldHi := (24349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_628, piece_629]
}

noncomputable def cell_13188 : Cell := { cellDefaults with
  domain := ⟨(64650000000000003 / 80000000000000000 : ℚ), (32330000000000001 / 40000000000000000 : ℚ)⟩
  r := (23260531740153 / 50000000000000 : ℚ)
  w := (2677583025817 / 2000000000000 : ℚ)
  center := (25862000000000001 / 32000000000000000 : ℚ)
  supportValue := (12142908838400697 / 50000000000000000 : ℚ)
  supportSlope := (-111056576742663 / 125000000000000 : ℚ)
  oldCenter := (12142908838400697 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1861
  oldPieces := [piece_628]
}

noncomputable def cell_13189 : Cell := { cellDefaults with
  domain := ⟨(32330000000000001 / 40000000000000000 : ℚ), (64670000000000001 / 80000000000000000 : ℚ)⟩
  r := (23260531740153 / 50000000000000 : ℚ)
  w := (2677583025817 / 2000000000000 : ℚ)
  center := (129330000000000003 / 160000000000000000 : ℚ)
  supportValue := (2427471567593023 / 10000000000000000 : ℚ)
  supportSlope := (-4439336241466751 / 5000000000000000 : ℚ)
  oldCenter := (2427471567593023 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1861
  oldPieces := [piece_628]
}

noncomputable def cell_13190 : Cell := { cellDefaults with
  domain := ⟨(64670000000000001 / 80000000000000000 : ℚ), (1617 / 2000 : ℚ)⟩
  r := (23260531740153 / 50000000000000 : ℚ)
  w := (2677583025817 / 2000000000000 : ℚ)
  center := (129350000000000001 / 160000000000000000 : ℚ)
  supportValue := (24263620985743461 / 100000000000000000 : ℚ)
  supportSlope := (-4436414519773279 / 5000000000000000 : ℚ)
  oldCenter := (24263620985743461 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1861
  oldPieces := [piece_628]
}

noncomputable def cell_13191 : Cell := { cellDefaults with
  domain := ⟨(1617 / 2000 : ℚ), (64690000000000001 / 80000000000000000 : ℚ)⟩
  r := (46501462543813 / 100000000000000 : ℚ)
  w := (13383853085151 / 10000000000000 : ℚ)
  center := (129370000000000001 / 160000000000000000 : ℚ)
  supportValue := (12141078821538197 / 50000000000000000 : ℚ)
  supportSlope := (-4439308298513467 / 5000000000000000 : ℚ)
  oldCenter := (12141078821538197 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1862
  oldPieces := [piece_628]
}

noncomputable def cell_13192 : Cell := { cellDefaults with
  domain := ⟨(64690000000000001 / 80000000000000000 : ℚ), (32350000000000001 / 40000000000000000 : ℚ)⟩
  r := (46501462543813 / 100000000000000 : ℚ)
  w := (13383853085151 / 10000000000000 : ℚ)
  center := (129390000000000003 / 160000000000000000 : ℚ)
  supportValue := (2427106302332807 / 10000000000000000 : ℚ)
  supportSlope := (-1774554445170651 / 2000000000000000 : ℚ)
  oldCenter := (2427106302332807 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1862
  oldPieces := [piece_628]
}

noncomputable def cell_13193 : Cell := { cellDefaults with
  domain := ⟨(32350000000000001 / 40000000000000000 : ℚ), (64710000000000003 / 80000000000000000 : ℚ)⟩
  r := (46501462543813 / 100000000000000 : ℚ)
  w := (13383853085151 / 10000000000000 : ℚ)
  center := (25882000000000001 / 32000000000000000 : ℚ)
  supportValue := (194079805621389 / 800000000000000 : ℚ)
  supportSlope := (-8866938042046081 / 10000000000000000 : ℚ)
  oldCenter := (194079805621389 / 800000000000000 : ℚ)
  newCoefficients := coefficients_1862
  oldPieces := [piece_628]
}

noncomputable def cell_13194 : Cell := { cellDefaults with
  domain := ⟨(64710000000000003 / 80000000000000000 : ℚ), (16180000000000001 / 20000000000000000 : ℚ)⟩
  r := (46501462543813 / 100000000000000 : ℚ)
  w := (13383853085151 / 10000000000000 : ℚ)
  center := (129430000000000007 / 160000000000000000 : ℚ)
  supportValue := (484977909195277 / 2000000000000000 : ℚ)
  supportSlope := (-1772422244360961 / 2000000000000000 : ℚ)
  oldCenter := (484977909195277 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1862
  oldLo := (2422905027932961 / 10000000000000000 : ℚ)
  oldPieces := [piece_627, piece_628]
}

noncomputable def cell_13195 : Cell := { cellDefaults with
  domain := ⟨(16180000000000001 / 20000000000000000 : ℚ), (64730000000000003 / 80000000000000000 : ℚ)⟩
  r := (46481877534829 / 100000000000000 : ℚ)
  w := (1672474091771 / 1250000000000 : ℚ)
  center := (129450000000000007 / 160000000000000000 : ℚ)
  supportValue := (24267414447201527 / 100000000000000000 : ℚ)
  supportSlope := (-4433439660310067 / 5000000000000000 : ℚ)
  oldCenter := (24267414447201527 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1863
  oldPieces := [piece_628]
}

noncomputable def cell_13196 : Cell := { cellDefaults with
  domain := ⟨(64730000000000003 / 80000000000000000 : ℚ), (32370000000000001 / 40000000000000000 : ℚ)⟩
  r := (46481877534829 / 100000000000000 : ℚ)
  w := (1672474091771 / 1250000000000 : ℚ)
  center := (25894000000000001 / 32000000000000000 : ℚ)
  supportValue := (2425633448700279 / 10000000000000000 : ℚ)
  supportSlope := (-1772210843063959 / 2000000000000000 : ℚ)
  oldCenter := (2425633448700279 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1863
  oldPieces := [piece_628]
}

noncomputable def cell_13197 : Cell := { cellDefaults with
  domain := ⟨(32370000000000001 / 40000000000000000 : ℚ), (64750000000000001 / 80000000000000000 : ℚ)⟩
  r := (46481877534829 / 100000000000000 : ℚ)
  w := (1672474091771 / 1250000000000 : ℚ)
  center := (129490000000000003 / 160000000000000000 : ℚ)
  supportValue := (24245260911841593 / 100000000000000000 : ℚ)
  supportSlope := (-2214194942037561 / 2500000000000000 : ℚ)
  oldCenter := (24245260911841593 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1863
  oldLo := (2422905027932961 / 10000000000000000 : ℚ)
  oldPieces := [piece_627, piece_628]
}

noncomputable def cell_13198 : Cell := { cellDefaults with
  domain := ⟨(64750000000000001 / 80000000000000000 : ℚ), (1619 / 2000 : ℚ)⟩
  r := (46481877534829 / 100000000000000 : ℚ)
  w := (1672474091771 / 1250000000000 : ℚ)
  center := (129510000000000001 / 160000000000000000 : ℚ)
  supportValue := (1211709671023639 / 5000000000000000 : ℚ)
  supportSlope := (-4425369510757003 / 5000000000000000 : ℚ)
  oldCenter := (1211709671023639 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1863
  oldLo := (24199999999999999 / 100000000000000000 : ℚ)
  oldHi := (24249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_626, piece_627]
}

noncomputable def cell_13199 : Cell := { cellDefaults with
  domain := ⟨(1619 / 2000 : ℚ), (64770000000000001 / 80000000000000000 : ℚ)⟩
  r := (11615576856203 / 25000000000000 : ℚ)
  w := (13375729020663 / 10000000000000 : ℚ)
  center := (129530000000000001 / 160000000000000000 : ℚ)
  supportValue := (12126353883477571 / 50000000000000000 : ℚ)
  supportSlope := (-8855607516621513 / 10000000000000000 : ℚ)
  oldCenter := (12126353883477571 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1864
  oldLo := (2422905027932961 / 10000000000000000 : ℚ)
  oldPieces := [piece_627, piece_628]
}

theorem check_13150 : cell_13150.check = true := by
  decide +kernel

theorem check_13151 : cell_13151.check = true := by
  decide +kernel

theorem check_13152 : cell_13152.check = true := by
  decide +kernel

theorem check_13153 : cell_13153.check = true := by
  decide +kernel

theorem check_13154 : cell_13154.check = true := by
  decide +kernel

theorem check_13155 : cell_13155.check = true := by
  decide +kernel

theorem check_13156 : cell_13156.check = true := by
  decide +kernel

theorem check_13157 : cell_13157.check = true := by
  decide +kernel

theorem check_13158 : cell_13158.check = true := by
  decide +kernel

theorem check_13159 : cell_13159.check = true := by
  decide +kernel

theorem check_13160 : cell_13160.check = true := by
  decide +kernel

theorem check_13161 : cell_13161.check = true := by
  decide +kernel

theorem check_13162 : cell_13162.check = true := by
  decide +kernel

theorem check_13163 : cell_13163.check = true := by
  decide +kernel

theorem check_13164 : cell_13164.check = true := by
  decide +kernel

theorem check_13165 : cell_13165.check = true := by
  decide +kernel

theorem check_13166 : cell_13166.check = true := by
  decide +kernel

theorem check_13167 : cell_13167.check = true := by
  decide +kernel

theorem check_13168 : cell_13168.check = true := by
  decide +kernel

theorem check_13169 : cell_13169.check = true := by
  decide +kernel

theorem check_13170 : cell_13170.check = true := by
  decide +kernel

theorem check_13171 : cell_13171.check = true := by
  decide +kernel

theorem check_13172 : cell_13172.check = true := by
  decide +kernel

theorem check_13173 : cell_13173.check = true := by
  decide +kernel

theorem check_13174 : cell_13174.check = true := by
  decide +kernel

theorem check_13175 : cell_13175.check = true := by
  decide +kernel

theorem check_13176 : cell_13176.check = true := by
  decide +kernel

theorem check_13177 : cell_13177.check = true := by
  decide +kernel

theorem check_13178 : cell_13178.check = true := by
  decide +kernel

theorem check_13179 : cell_13179.check = true := by
  decide +kernel

theorem check_13180 : cell_13180.check = true := by
  decide +kernel

theorem check_13181 : cell_13181.check = true := by
  decide +kernel

theorem check_13182 : cell_13182.check = true := by
  decide +kernel

theorem check_13183 : cell_13183.check = true := by
  decide +kernel

theorem check_13184 : cell_13184.check = true := by
  decide +kernel

theorem check_13185 : cell_13185.check = true := by
  decide +kernel

theorem check_13186 : cell_13186.check = true := by
  decide +kernel

theorem check_13187 : cell_13187.check = true := by
  decide +kernel

theorem check_13188 : cell_13188.check = true := by
  decide +kernel

theorem check_13189 : cell_13189.check = true := by
  decide +kernel

theorem check_13190 : cell_13190.check = true := by
  decide +kernel

theorem check_13191 : cell_13191.check = true := by
  decide +kernel

theorem check_13192 : cell_13192.check = true := by
  decide +kernel

theorem check_13193 : cell_13193.check = true := by
  decide +kernel

theorem check_13194 : cell_13194.check = true := by
  decide +kernel

theorem check_13195 : cell_13195.check = true := by
  decide +kernel

theorem check_13196 : cell_13196.check = true := by
  decide +kernel

theorem check_13197 : cell_13197.check = true := by
  decide +kernel

theorem check_13198 : cell_13198.check = true := by
  decide +kernel

theorem check_13199 : cell_13199.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_13150, cell_13151, cell_13152, cell_13153, cell_13154, cell_13155, cell_13156, cell_13157, cell_13158, cell_13159, cell_13160, cell_13161, cell_13162, cell_13163, cell_13164, cell_13165, cell_13166, cell_13167, cell_13168, cell_13169, cell_13170, cell_13171, cell_13172, cell_13173, cell_13174, cell_13175, cell_13176, cell_13177, cell_13178, cell_13179, cell_13180, cell_13181, cell_13182, cell_13183, cell_13184, cell_13185, cell_13186, cell_13187, cell_13188, cell_13189, cell_13190, cell_13191, cell_13192, cell_13193, cell_13194, cell_13195, cell_13196, cell_13197, cell_13198, cell_13199]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_13150, check_13151, check_13152, check_13153, check_13154, check_13155, check_13156, check_13157, check_13158, check_13159, check_13160, check_13161, check_13162, check_13163, check_13164, check_13165, check_13166, check_13167, check_13168, check_13169, check_13170, check_13171, check_13172, check_13173, check_13174, check_13175, check_13176, check_13177, check_13178, check_13179, check_13180, check_13181, check_13182, check_13183, check_13184, check_13185, check_13186, check_13187, check_13188, check_13189, check_13190, check_13191, check_13192, check_13193, check_13194, check_13195, check_13196, check_13197, check_13198, check_13199, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0263

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0263
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0263
open AnalyticBounds.ExpressionCertificate

theorem linked_13150 : Linked cell_13150 pieces := by
  link_source cell_13150 with piece_1850 using piece_1850_mem, piece_631_mem

theorem linked_13151 : Linked cell_13151 pieces := by
  link_source cell_13151 with piece_1850 using piece_1850_mem, piece_631_mem

theorem linked_13152 : Linked cell_13152 pieces := by
  link_source cell_13152 with piece_1851 using piece_1851_mem, piece_631_mem

theorem linked_13153 : Linked cell_13153 pieces := by
  link_source cell_13153 with piece_1851 using piece_1851_mem, piece_631_mem

theorem linked_13154 : Linked cell_13154 pieces := by
  link_source cell_13154 with piece_1851 using piece_1851_mem, piece_631_mem

theorem linked_13155 : Linked cell_13155 pieces := by
  link_source cell_13155 with piece_1851 using piece_1851_mem, ⟨piece_630_mem, piece_631_mem⟩

theorem linked_13156 : Linked cell_13156 pieces := by
  link_source cell_13156 with piece_1852 using piece_1852_mem, piece_631_mem

theorem linked_13157 : Linked cell_13157 pieces := by
  link_source cell_13157 with piece_1852 using piece_1852_mem, ⟨piece_630_mem, piece_631_mem⟩

theorem linked_13158 : Linked cell_13158 pieces := by
  link_source cell_13158 with piece_1852 using piece_1852_mem, piece_630_mem

theorem linked_13159 : Linked cell_13159 pieces := by
  link_source cell_13159 with piece_1852 using piece_1852_mem, piece_630_mem

theorem linked_13160 : Linked cell_13160 pieces := by
  link_source cell_13160 with piece_1853 using piece_1853_mem, ⟨piece_630_mem, piece_631_mem⟩

theorem linked_13161 : Linked cell_13161 pieces := by
  link_source cell_13161 with piece_1853 using piece_1853_mem, piece_630_mem

theorem linked_13162 : Linked cell_13162 pieces := by
  link_source cell_13162 with piece_1853 using piece_1853_mem, piece_630_mem

theorem linked_13163 : Linked cell_13163 pieces := by
  link_source cell_13163 with piece_1853 using piece_1853_mem, piece_630_mem

theorem linked_13164 : Linked cell_13164 pieces := by
  link_source cell_13164 with piece_1854 using piece_1854_mem, piece_630_mem

theorem linked_13165 : Linked cell_13165 pieces := by
  link_source cell_13165 with piece_1854 using piece_1854_mem, piece_630_mem

theorem linked_13166 : Linked cell_13166 pieces := by
  link_source cell_13166 with piece_1854 using piece_1854_mem, piece_630_mem

theorem linked_13167 : Linked cell_13167 pieces := by
  link_source cell_13167 with piece_1854 using piece_1854_mem, ⟨piece_629_mem, piece_630_mem⟩

theorem linked_13168 : Linked cell_13168 pieces := by
  link_source cell_13168 with piece_1855 using piece_1855_mem, piece_630_mem

theorem linked_13169 : Linked cell_13169 pieces := by
  link_source cell_13169 with piece_1855 using piece_1855_mem, piece_630_mem

theorem linked_13170 : Linked cell_13170 pieces := by
  link_source cell_13170 with piece_1855 using piece_1855_mem, ⟨piece_629_mem, piece_630_mem⟩

theorem linked_13171 : Linked cell_13171 pieces := by
  link_source cell_13171 with piece_1855 using piece_1855_mem, piece_629_mem

theorem linked_13172 : Linked cell_13172 pieces := by
  link_source cell_13172 with piece_1856 using piece_1856_mem, ⟨piece_629_mem, piece_630_mem⟩

theorem linked_13173 : Linked cell_13173 pieces := by
  link_source cell_13173 with piece_1856 using piece_1856_mem, piece_629_mem

theorem linked_13174 : Linked cell_13174 pieces := by
  link_source cell_13174 with piece_1857 using piece_1857_mem, piece_629_mem

theorem linked_13175 : Linked cell_13175 pieces := by
  link_source cell_13175 with piece_1858 using piece_1858_mem, piece_629_mem

theorem linked_13176 : Linked cell_13176 pieces := by
  link_source cell_13176 with piece_1858 using piece_1858_mem, piece_629_mem

theorem linked_13177 : Linked cell_13177 pieces := by
  link_source cell_13177 with piece_1858 using piece_1858_mem, piece_629_mem

theorem linked_13178 : Linked cell_13178 pieces := by
  link_source cell_13178 with piece_1858 using piece_1858_mem, piece_629_mem

theorem linked_13179 : Linked cell_13179 pieces := by
  link_source cell_13179 with piece_1859 using piece_1859_mem, piece_629_mem

theorem linked_13180 : Linked cell_13180 pieces := by
  link_source cell_13180 with piece_1859 using piece_1859_mem, piece_629_mem

theorem linked_13181 : Linked cell_13181 pieces := by
  link_source cell_13181 with piece_1859 using piece_1859_mem, ⟨piece_628_mem, piece_629_mem⟩

theorem linked_13182 : Linked cell_13182 pieces := by
  link_source cell_13182 with piece_1859 using piece_1859_mem, piece_628_mem

theorem linked_13183 : Linked cell_13183 pieces := by
  link_source cell_13183 with piece_1860 using piece_1860_mem, piece_629_mem

theorem linked_13184 : Linked cell_13184 pieces := by
  link_source cell_13184 with piece_1860 using piece_1860_mem, ⟨piece_628_mem, piece_629_mem⟩

theorem linked_13185 : Linked cell_13185 pieces := by
  link_source cell_13185 with piece_1860 using piece_1860_mem, piece_628_mem

theorem linked_13186 : Linked cell_13186 pieces := by
  link_source cell_13186 with piece_1860 using piece_1860_mem, piece_628_mem

theorem linked_13187 : Linked cell_13187 pieces := by
  link_source cell_13187 with piece_1861 using piece_1861_mem, ⟨piece_628_mem, piece_629_mem⟩

theorem linked_13188 : Linked cell_13188 pieces := by
  link_source cell_13188 with piece_1861 using piece_1861_mem, piece_628_mem

theorem linked_13189 : Linked cell_13189 pieces := by
  link_source cell_13189 with piece_1861 using piece_1861_mem, piece_628_mem

theorem linked_13190 : Linked cell_13190 pieces := by
  link_source cell_13190 with piece_1861 using piece_1861_mem, piece_628_mem

theorem linked_13191 : Linked cell_13191 pieces := by
  link_source cell_13191 with piece_1862 using piece_1862_mem, piece_628_mem

theorem linked_13192 : Linked cell_13192 pieces := by
  link_source cell_13192 with piece_1862 using piece_1862_mem, piece_628_mem

theorem linked_13193 : Linked cell_13193 pieces := by
  link_source cell_13193 with piece_1862 using piece_1862_mem, piece_628_mem

theorem linked_13194 : Linked cell_13194 pieces := by
  link_source cell_13194 with piece_1862 using piece_1862_mem, ⟨piece_627_mem, piece_628_mem⟩

theorem linked_13195 : Linked cell_13195 pieces := by
  link_source cell_13195 with piece_1863 using piece_1863_mem, piece_628_mem

theorem linked_13196 : Linked cell_13196 pieces := by
  link_source cell_13196 with piece_1863 using piece_1863_mem, piece_628_mem

theorem linked_13197 : Linked cell_13197 pieces := by
  link_source cell_13197 with piece_1863 using piece_1863_mem, ⟨piece_627_mem, piece_628_mem⟩

theorem linked_13198 : Linked cell_13198 pieces := by
  link_source cell_13198 with piece_1863 using piece_1863_mem, ⟨piece_626_mem, piece_627_mem⟩

theorem linked_13199 : Linked cell_13199 pieces := by
  link_source cell_13199 with piece_1864 using piece_1864_mem, ⟨piece_627_mem, piece_628_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0263.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0263.cells,List.forall_mem_cons]
  exact ⟨linked_13150, linked_13151, linked_13152, linked_13153, linked_13154, linked_13155, linked_13156, linked_13157, linked_13158, linked_13159, linked_13160, linked_13161, linked_13162, linked_13163, linked_13164, linked_13165, linked_13166, linked_13167, linked_13168, linked_13169, linked_13170, linked_13171, linked_13172, linked_13173, linked_13174, linked_13175, linked_13176, linked_13177, linked_13178, linked_13179, linked_13180, linked_13181, linked_13182, linked_13183, linked_13184, linked_13185, linked_13186, linked_13187, linked_13188, linked_13189, linked_13190, linked_13191, linked_13192, linked_13193, linked_13194, linked_13195, linked_13196, linked_13197, linked_13198, linked_13199, by simp⟩

theorem covered : covers (40162500000000001 / 50000000000000000 : ℚ) (64770000000000001 / 80000000000000000 : ℚ)
    (SourceCertificates.Chunk0263.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0263
end
