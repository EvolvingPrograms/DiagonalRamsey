import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0175
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(8801562500000001 / 25000000000000000 : ℚ), (8803125000000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (74469761997727 / 100000000000000 : ℚ)
  w := (2058121797063 / 1250000000000 : ℚ)
  center := (8802343750000001 / 25000000000000000 : ℚ)
  supportValue := (6345304083340053 / 10000000000000000 : ℚ)
  supportSlope := (-2141433904483847 / 500000000000000 : ℚ)
  oldCenter := (6345304083340053 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_869
  oldLo := (31575000000000003 / 50000000000000000 : ℚ)
  oldHi := (63200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1476]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8750 : Cell := { cellDefaults with
  r := (465764850699 / 625000000000 : ℚ)
  w := (16473205207121 / 10000000000000 : ℚ)
  newCoefficients := coefficients_866
  oldLo := (63400000000000001 / 100000000000000000 : ℚ)
  oldHi := (6349720670391061 / 10000000000000000 : ℚ)
  oldPieces := [piece_1481, piece_1482]
}

def cell_8751 : Cell := { cellDefaults with
  domain := ⟨(8803125000000001 / 25000000000000000 : ℚ), (8804687500000001 / 25000000000000000 : ℚ)⟩
  r := (465764850699 / 625000000000 : ℚ)
  w := (16473205207121 / 10000000000000 : ℚ)
  center := (8803906250000001 / 25000000000000000 : ℚ)
  supportValue := (3171314015143193 / 5000000000000000 : ℚ)
  supportSlope := (-4280326873480789 / 1000000000000000 : ℚ)
  oldCenter := (3171314015143193 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_866
  oldLo := (63400000000000001 / 100000000000000000 : ℚ)
  oldHi := (31725000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1481]
}

def cell_8752 : Cell := { cellDefaults with
  domain := ⟨(8804687500000001 / 25000000000000000 : ℚ), (8806250000000001 / 25000000000000000 : ℚ)⟩
  r := (465764850699 / 625000000000 : ℚ)
  w := (16473205207121 / 10000000000000 : ℚ)
  center := (8805468750000001 / 25000000000000000 : ℚ)
  supportValue := (158498842479841 / 250000000000000 : ℚ)
  supportSlope := (-855549153685331 / 200000000000000 : ℚ)
  oldCenter := (158498842479841 / 250000000000000 : ℚ)
  newCoefficients := coefficients_866
  oldLo := (31675000000000003 / 50000000000000000 : ℚ)
  oldHi := (31725000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1480, piece_1481]
}

def cell_8753 : Cell := { cellDefaults with
  domain := ⟨(8806250000000001 / 25000000000000000 : ℚ), (8807812500000001 / 25000000000000000 : ℚ)⟩
  r := (465764850699 / 625000000000 : ℚ)
  w := (16473205207121 / 10000000000000 : ℚ)
  center := (8807031250000001 / 25000000000000000 : ℚ)
  supportValue := (6337280851382759 / 10000000000000000 : ℚ)
  supportSlope := (-1068787459644227 / 250000000000000 : ℚ)
  oldCenter := (6337280851382759 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_866
  oldLo := (31675000000000003 / 50000000000000000 : ℚ)
  oldHi := (63400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1480]
}

def cell_8754 : Cell := { cellDefaults with
  domain := ⟨(8807812500000001 / 25000000000000000 : ℚ), (8809375000000001 / 25000000000000000 : ℚ)⟩
  r := (465764850699 / 625000000000 : ℚ)
  w := (16473205207121 / 10000000000000 : ℚ)
  center := (8808593750000001 / 25000000000000000 : ℚ)
  supportValue := (6334609718866361 / 10000000000000000 : ℚ)
  supportSlope := (-2136314875444967 / 500000000000000 : ℚ)
  oldCenter := (6334609718866361 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_866
  oldLo := (63300000000000001 / 100000000000000000 : ℚ)
  oldHi := (63400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1479, piece_1480]
}

def cell_8755 : Cell := { cellDefaults with
  domain := ⟨(8809375000000001 / 25000000000000000 : ℚ), (8810937500000001 / 25000000000000000 : ℚ)⟩
  r := (465764850699 / 625000000000 : ℚ)
  w := (16473205207121 / 10000000000000 : ℚ)
  center := (8810156250000001 / 25000000000000000 : ℚ)
  supportValue := (633194010345443 / 1000000000000000 : ℚ)
  supportSlope := (-2134989902103257 / 500000000000000 : ℚ)
  oldCenter := (633194010345443 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_866
  oldLo := (63300000000000001 / 100000000000000000 : ℚ)
  oldHi := (31675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1479]
}

def cell_8756 : Cell := { cellDefaults with
  domain := ⟨(8810937500000001 / 25000000000000000 : ℚ), (8812500000000001 / 25000000000000000 : ℚ)⟩
  r := (465764850699 / 625000000000 : ℚ)
  w := (16473205207121 / 10000000000000 : ℚ)
  center := (8811718750000001 / 25000000000000000 : ℚ)
  supportValue := (6329272165729581 / 10000000000000000 : ℚ)
  supportSlope := (-4267519788424323 / 1000000000000000 : ℚ)
  oldCenter := (6329272165729581 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_866
  oldLo := (31625000000000003 / 50000000000000000 : ℚ)
  oldHi := (31675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1478, piece_1479]
}

def cell_8757 : Cell := { cellDefaults with
  domain := ⟨(8812500000000001 / 25000000000000000 : ℚ), (8814062500000001 / 25000000000000000 : ℚ)⟩
  center := (8813281250000001 / 25000000000000000 : ℚ)
  supportValue := (1584370463461541 / 2500000000000000 : ℚ)
  supportSlope := (-2136215564018329 / 500000000000000 : ℚ)
  oldCenter := (1584370463461541 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_867
  oldLo := (31675000000000003 / 50000000000000000 : ℚ)
  oldHi := (63400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1480]
}

def cell_8758 : Cell := { cellDefaults with
  domain := ⟨(8814062500000001 / 25000000000000000 : ℚ), (8815625000000001 / 25000000000000000 : ℚ)⟩
  center := (8814843750000001 / 25000000000000000 : ℚ)
  supportValue := (3167406219900853 / 5000000000000000 : ℚ)
  supportSlope := (-213494158494143 / 50000000000000 : ℚ)
  oldCenter := (3167406219900853 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_867
  oldLo := (63300000000000001 / 100000000000000000 : ℚ)
  oldHi := (63400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1479, piece_1480]
}

def cell_8759 : Cell := { cellDefaults with
  domain := ⟨(8815625000000001 / 25000000000000000 : ℚ), (8817187500000001 / 25000000000000000 : ℚ)⟩
  center := (8816406250000001 / 25000000000000000 : ℚ)
  supportValue := (6332144517960159 / 10000000000000000 : ℚ)
  supportSlope := (-853454628271777 / 200000000000000 : ℚ)
  oldCenter := (6332144517960159 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_867
  oldLo := (63300000000000001 / 100000000000000000 : ℚ)
  oldHi := (31675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1479]
}

def cell_8760 : Cell := { cellDefaults with
  domain := ⟨(8817187500000001 / 25000000000000000 : ℚ), (8818750000000001 / 25000000000000000 : ℚ)⟩
  center := (8817968750000001 / 25000000000000000 : ℚ)
  supportValue := (6329478291553291 / 10000000000000000 : ℚ)
  supportSlope := (-4264784647165953 / 1000000000000000 : ℚ)
  oldCenter := (6329478291553291 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_867
  oldLo := (31625000000000003 / 50000000000000000 : ℚ)
  oldHi := (31675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1478, piece_1479]
}

def cell_8761 : Cell := { cellDefaults with
  domain := ⟨(8818750000000001 / 25000000000000000 : ℚ), (7056550279329609 / 20000000000000000 : ℚ)⟩
  center := (70557751396648049 / 200000000000000000 : ℚ)
  supportValue := (6326498074474021 / 10000000000000000 : ℚ)
  supportSlope := (-4261807918378021 / 1000000000000000 : ℚ)
  oldCenter := (6326498074474021 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_867
  oldLo := (63200000000000001 / 100000000000000000 : ℚ)
  oldHi := (63300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1477, piece_1478]
}

def cell_8762 : Cell := { cellDefaults with
  domain := ⟨(7056550279329609 / 20000000000000000 : ℚ), (17645251396648043 / 50000000000000000 : ℚ)⟩
  center := (70573254189944131 / 200000000000000000 : ℚ)
  supportValue := (1264638263907059 / 2000000000000000 : ℚ)
  supportSlope := (-4258765485168949 / 1000000000000000 : ℚ)
  oldCenter := (1264638263907059 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_867
  oldLo := (63200000000000001 / 100000000000000000 : ℚ)
  oldHi := (31625000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1477]
}

def cell_8763 : Cell := { cellDefaults with
  domain := ⟨(17645251396648043 / 50000000000000000 : ℚ), (7059050279329609 / 20000000000000000 : ℚ)⟩
  center := (70585754189944131 / 200000000000000000 : ℚ)
  supportValue := (395033153986481 / 625000000000000 : ℚ)
  supportSlope := (-2128038659834709 / 500000000000000 : ℚ)
  oldCenter := (395033153986481 / 625000000000000 : ℚ)
  newCoefficients := coefficients_868
  oldHi := (31625000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1476, piece_1477]
}

def cell_8764 : Cell := { cellDefaults with
  domain := ⟨(7059050279329609 / 20000000000000000 : ℚ), (8825000000000001 / 25000000000000000 : ℚ)⟩
  center := (70595251396648049 / 200000000000000000 : ℚ)
  supportValue := (157962745464931 / 250000000000000 : ℚ)
  supportSlope := (-1063573937619227 / 250000000000000 : ℚ)
  oldCenter := (157962745464931 / 250000000000000 : ℚ)
  newCoefficients := coefficients_868
  oldPieces := [piece_1476]
}

def cell_8765 : Cell := { cellDefaults with
  domain := ⟨(8825000000000001 / 25000000000000000 : ℚ), (8826562500000001 / 25000000000000000 : ℚ)⟩
  r := (1860430774137 / 2500000000000 : ℚ)
  w := (16456761656913 / 10000000000000 : ℚ)
  center := (8825781250000001 / 25000000000000000 : ℚ)
  supportValue := (197719257656709 / 312500000000000 : ℚ)
  supportSlope := (-851882947674909 / 200000000000000 : ℚ)
  oldCenter := (197719257656709 / 312500000000000 : ℚ)
  oldLo := (31625000000000003 / 50000000000000000 : ℚ)
  oldHi := (63300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1478]
}

def cell_8766 : Cell := { cellDefaults with
  domain := ⟨(8826562500000001 / 25000000000000000 : ℚ), (8828125000000001 / 25000000000000000 : ℚ)⟩
  r := (1860430774137 / 2500000000000 : ℚ)
  w := (16456761656913 / 10000000000000 : ℚ)
  center := (8827343750000001 / 25000000000000000 : ℚ)
  supportValue := (6324354914236653 / 10000000000000000 : ℚ)
  supportSlope := (-4256956067969497 / 1000000000000000 : ℚ)
  oldCenter := (6324354914236653 / 10000000000000000 : ℚ)
  oldLo := (63200000000000001 / 100000000000000000 : ℚ)
  oldHi := (63300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1477, piece_1478]
}

def cell_8767 : Cell := { cellDefaults with
  domain := ⟨(8828125000000001 / 25000000000000000 : ℚ), (8829687500000001 / 25000000000000000 : ℚ)⟩
  r := (1860430774137 / 2500000000000 : ℚ)
  w := (16456761656913 / 10000000000000 : ℚ)
  center := (8828906250000001 / 25000000000000000 : ℚ)
  supportValue := (3160847557998069 / 5000000000000000 : ℚ)
  supportSlope := (-4254281750544209 / 1000000000000000 : ℚ)
  oldCenter := (3160847557998069 / 5000000000000000 : ℚ)
  oldLo := (63200000000000001 / 100000000000000000 : ℚ)
  oldHi := (31625000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1477]
}

def cell_8768 : Cell := { cellDefaults with
  domain := ⟨(8829687500000001 / 25000000000000000 : ℚ), (8831250000000001 / 25000000000000000 : ℚ)⟩
  r := (1860430774137 / 2500000000000 : ℚ)
  w := (16456761656913 / 10000000000000 : ℚ)
  center := (8830468750000001 / 25000000000000000 : ℚ)
  supportValue := (315951847940587 / 500000000000000 : ℚ)
  supportSlope := (-8503760038109931 / 2000000000000000 : ℚ)
  oldCenter := (315951847940587 / 500000000000000 : ℚ)
  oldHi := (31625000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1476, piece_1477]
}

def cell_8769 : Cell := { cellDefaults with
  domain := ⟨(8831250000000001 / 25000000000000000 : ℚ), (8832812500000001 / 25000000000000000 : ℚ)⟩
  r := (1860430774137 / 2500000000000 : ℚ)
  w := (16456761656913 / 10000000000000 : ℚ)
  center := (8832031250000001 / 25000000000000000 : ℚ)
  supportValue := (6316380365473531 / 10000000000000000 : ℚ)
  supportSlope := (-1062288913588283 / 250000000000000 : ℚ)
  oldCenter := (6316380365473531 / 10000000000000000 : ℚ)
  oldPieces := [piece_1476]
}

def cell_8770 : Cell := { cellDefaults with
  domain := ⟨(8832812500000001 / 25000000000000000 : ℚ), (8834375000000001 / 25000000000000000 : ℚ)⟩
  r := (1860430774137 / 2500000000000 : ℚ)
  w := (16456761656913 / 10000000000000 : ℚ)
  center := (8833593750000001 / 25000000000000000 : ℚ)
  supportValue := (3156862689082107 / 5000000000000000 : ℚ)
  supportSlope := (-849361983859609 / 200000000000000 : ℚ)
  oldCenter := (3156862689082107 / 5000000000000000 : ℚ)
  oldLo := (63100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1475, piece_1476]
}

def cell_8771 : Cell := { cellDefaults with
  domain := ⟨(8834375000000001 / 25000000000000000 : ℚ), (8835937500000001 / 25000000000000000 : ℚ)⟩
  r := (1860430774137 / 2500000000000 : ℚ)
  w := (16456761656913 / 10000000000000 : ℚ)
  center := (8835156250000001 / 25000000000000000 : ℚ)
  supportValue := (1577767996355671 / 2500000000000000 : ℚ)
  supportSlope := (-8488159103009707 / 2000000000000000 : ℚ)
  oldCenter := (1577767996355671 / 2500000000000000 : ℚ)
  oldLo := (31525000000000003 / 50000000000000000 : ℚ)
  oldHi := (31575000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1474, piece_1475]
}

def cell_8772 : Cell := { cellDefaults with
  domain := ⟨(8835937500000001 / 25000000000000000 : ℚ), (8837500000000001 / 25000000000000000 : ℚ)⟩
  r := (1860430774137 / 2500000000000 : ℚ)
  w := (16456761656913 / 10000000000000 : ℚ)
  center := (8836718750000001 / 25000000000000000 : ℚ)
  supportValue := (6308420164273923 / 10000000000000000 : ℚ)
  supportSlope := (-169668106280767 / 40000000000000 : ℚ)
  oldCenter := (6308420164273923 / 10000000000000000 : ℚ)
  oldLo := (31525000000000003 / 50000000000000000 : ℚ)
  oldHi := (63100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1474]
}

def cell_8773 : Cell := { cellDefaults with
  domain := ⟨(8837500000000001 / 25000000000000000 : ℚ), (8839062500000001 / 25000000000000000 : ℚ)⟩
  r := (929559805219 / 1250000000000 : ℚ)
  w := (16448567582993 / 10000000000000 : ℚ)
  center := (8838281250000001 / 25000000000000000 : ℚ)
  supportValue := (6316584178559587 / 10000000000000000 : ℚ)
  supportSlope := (-2123229659678927 / 500000000000000 : ℚ)
  oldCenter := (6316584178559587 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_870
  oldPieces := [piece_1476]
}

def cell_8774 : Cell := { cellDefaults with
  domain := ⟨(8839062500000001 / 25000000000000000 : ℚ), (8840625000000001 / 25000000000000000 : ℚ)⟩
  r := (929559805219 / 1250000000000 : ℚ)
  w := (16448567582993 / 10000000000000 : ℚ)
  center := (8839843750000001 / 25000000000000000 : ℚ)
  supportValue := (6313930896106303 / 10000000000000000 : ℚ)
  supportSlope := (-132627660819451 / 31250000000000 : ℚ)
  oldCenter := (6313930896106303 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_870
  oldLo := (63100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1475, piece_1476]
}

def cell_8775 : Cell := { cellDefaults with
  domain := ⟨(8840625000000001 / 25000000000000000 : ℚ), (8842187500000001 / 25000000000000000 : ℚ)⟩
  r := (929559805219 / 1250000000000 : ℚ)
  w := (16448567582993 / 10000000000000 : ℚ)
  center := (8841406250000001 / 25000000000000000 : ℚ)
  supportValue := (1577819795727747 / 2500000000000000 : ℚ)
  supportSlope := (-848272062165023 / 200000000000000 : ℚ)
  oldCenter := (1577819795727747 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_870
  oldLo := (31525000000000003 / 50000000000000000 : ℚ)
  oldHi := (31575000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1474, piece_1475]
}

def cell_8776 : Cell := { cellDefaults with
  domain := ⟨(8842187500000001 / 25000000000000000 : ℚ), (8843750000000001 / 25000000000000000 : ℚ)⟩
  r := (929559805219 / 1250000000000 : ℚ)
  w := (16448567582993 / 10000000000000 : ℚ)
  center := (8842968750000001 / 25000000000000000 : ℚ)
  supportValue := (6308629059418099 / 10000000000000000 : ℚ)
  supportSlope := (-264939027117439 / 62500000000000 : ℚ)
  oldCenter := (6308629059418099 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_870
  oldLo := (31525000000000003 / 50000000000000000 : ℚ)
  oldHi := (63100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1474]
}

def cell_8777 : Cell := { cellDefaults with
  domain := ⟨(8843750000000001 / 25000000000000000 : ℚ), (8845312500000001 / 25000000000000000 : ℚ)⟩
  r := (929559805219 / 1250000000000 : ℚ)
  w := (16448567582993 / 10000000000000 : ℚ)
  center := (8844531250000001 / 25000000000000000 : ℚ)
  supportValue := (6305980534944831 / 10000000000000000 : ℚ)
  supportSlope := (-13238469378829 / 3125000000000 : ℚ)
  oldCenter := (6305980534944831 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_870
  oldLo := (63 / 100 : ℚ)
  oldHi := (63100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1473, piece_1474]
}

def cell_8778 : Cell := { cellDefaults with
  domain := ⟨(8845312500000001 / 25000000000000000 : ℚ), (8846875000000001 / 25000000000000000 : ℚ)⟩
  r := (929559805219 / 1250000000000 : ℚ)
  w := (16448567582993 / 10000000000000 : ℚ)
  center := (8846093750000001 / 25000000000000000 : ℚ)
  supportValue := (50426668533707 / 80000000000000 : ℚ)
  supportSlope := (-4233927604296639 / 1000000000000000 : ℚ)
  oldCenter := (50426668533707 / 80000000000000 : ℚ)
  newCoefficients := coefficients_870
  oldLo := (63 / 100 : ℚ)
  oldHi := (31525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1473]
}

def cell_8779 : Cell := { cellDefaults with
  domain := ⟨(8846875000000001 / 25000000000000000 : ℚ), (8848437500000001 / 25000000000000000 : ℚ)⟩
  r := (929559805219 / 1250000000000 : ℚ)
  w := (16448567582993 / 10000000000000 : ℚ)
  center := (8847656250000001 / 25000000000000000 : ℚ)
  supportValue := (6300688226673283 / 10000000000000000 : ℚ)
  supportSlope := (-8462532054153371 / 2000000000000000 : ℚ)
  oldCenter := (6300688226673283 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_870
  oldLo := (31475000000000003 / 50000000000000000 : ℚ)
  oldHi := (31525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1472, piece_1473]
}

def cell_8780 : Cell := { cellDefaults with
  domain := ⟨(8848437500000001 / 25000000000000000 : ℚ), (8850000000000001 / 25000000000000000 : ℚ)⟩
  r := (929559805219 / 1250000000000 : ℚ)
  w := (16448567582993 / 10000000000000 : ℚ)
  center := (8849218750000001 / 25000000000000000 : ℚ)
  supportValue := (1574511102491127 / 2500000000000000 : ℚ)
  supportSlope := (-1057209432262951 / 250000000000000 : ℚ)
  oldCenter := (1574511102491127 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_870
  oldLo := (31475000000000003 / 50000000000000000 : ℚ)
  oldHi := (63 / 100 : ℚ)
  oldPieces := [piece_1472]
}

def cell_8781 : Cell := { cellDefaults with
  domain := ⟨(8850000000000001 / 25000000000000000 : ℚ), (8851562500000001 / 25000000000000000 : ℚ)⟩
  r := (74312421292007 / 100000000000000 : ℚ)
  w := (16440390928621 / 10000000000000 : ℚ)
  center := (8850781250000001 / 25000000000000000 : ℚ)
  supportValue := (1576546524450761 / 2500000000000000 : ℚ)
  supportSlope := (-1058397626804819 / 250000000000000 : ℚ)
  oldCenter := (1576546524450761 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_871
  oldLo := (63 / 100 : ℚ)
  oldHi := (63100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1473, piece_1474]
}

def cell_8782 : Cell := { cellDefaults with
  domain := ⟨(8851562500000001 / 25000000000000000 : ℚ), (8853125000000001 / 25000000000000000 : ℚ)⟩
  r := (74312421292007 / 100000000000000 : ℚ)
  w := (16440390928621 / 10000000000000 : ℚ)
  center := (8852343750000001 / 25000000000000000 : ℚ)
  supportValue := (3151770413791507 / 5000000000000000 : ℚ)
  supportSlope := (-846249693355361 / 200000000000000 : ℚ)
  oldCenter := (3151770413791507 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_871
  oldLo := (63 / 100 : ℚ)
  oldHi := (31525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1473]
}

def cell_8783 : Cell := { cellDefaults with
  domain := ⟨(8853125000000001 / 25000000000000000 : ℚ), (8854687500000001 / 25000000000000000 : ℚ)⟩
  r := (74312421292007 / 100000000000000 : ℚ)
  w := (16440390928621 / 10000000000000 : ℚ)
  center := (8853906250000001 / 25000000000000000 : ℚ)
  supportValue := (1260179432032387 / 2000000000000000 : ℚ)
  supportSlope := (-845711473608901 / 200000000000000 : ℚ)
  oldCenter := (1260179432032387 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_871
  oldLo := (31475000000000003 / 50000000000000000 : ℚ)
  oldHi := (31525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1472, piece_1473]
}

def cell_8784 : Cell := { cellDefaults with
  domain := ⟨(8854687500000001 / 25000000000000000 : ℚ), (8856250000000001 / 25000000000000000 : ℚ)⟩
  r := (74312421292007 / 100000000000000 : ℚ)
  w := (16440390928621 / 10000000000000 : ℚ)
  center := (8855468750000001 / 25000000000000000 : ℚ)
  supportValue := (6298255034570709 / 10000000000000000 : ℚ)
  supportSlope := (-211308511389241 / 50000000000000 : ℚ)
  oldCenter := (6298255034570709 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_871
  oldLo := (31475000000000003 / 50000000000000000 : ℚ)
  oldHi := (63 / 100 : ℚ)
  oldPieces := [piece_1472]
}

def cell_8785 : Cell := { cellDefaults with
  domain := ⟨(8856250000000001 / 25000000000000000 : ℚ), (8857812500000001 / 25000000000000000 : ℚ)⟩
  r := (74312421292007 / 100000000000000 : ℚ)
  w := (16440390928621 / 10000000000000 : ℚ)
  center := (8857031250000001 / 25000000000000000 : ℚ)
  supportValue := (1573903634992033 / 2500000000000000 : ℚ)
  supportSlope := (-1055882547217557 / 250000000000000 : ℚ)
  oldCenter := (1573903634992033 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_871
  oldLo := (629 / 1000 : ℚ)
  oldHi := (63 / 100 : ℚ)
  oldPieces := [piece_1470, piece_1471, piece_1472]
}

def cell_8786 : Cell := { cellDefaults with
  domain := ⟨(8857812500000001 / 25000000000000000 : ℚ), (8859375000000001 / 25000000000000000 : ℚ)⟩
  r := (74312421292007 / 100000000000000 : ℚ)
  w := (16440390928621 / 10000000000000 : ℚ)
  center := (8858593750000001 / 25000000000000000 : ℚ)
  supportValue := (157324388881803 / 250000000000000 : ℚ)
  supportSlope := (-8442197890090597 / 2000000000000000 : ℚ)
  oldCenter := (157324388881803 / 250000000000000 : ℚ)
  newCoefficients := coefficients_871
  oldLo := (629 / 1000 : ℚ)
  oldHi := (6294413407821229 / 10000000000000000 : ℚ)
  oldPieces := [piece_1470]
}

def cell_8787 : Cell := { cellDefaults with
  domain := ⟨(8859375000000001 / 25000000000000000 : ℚ), (8860937500000001 / 25000000000000000 : ℚ)⟩
  r := (74312421292007 / 100000000000000 : ℚ)
  w := (16440390928621 / 10000000000000 : ℚ)
  center := (8860156250000001 / 25000000000000000 : ℚ)
  supportValue := (1258067645828631 / 2000000000000000 : ℚ)
  supportSlope := (-4218508988081737 / 1000000000000000 : ℚ)
  oldCenter := (1258067645828631 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_871
  oldLo := (31425000000000003 / 50000000000000000 : ℚ)
  oldHi := (6294413407821229 / 10000000000000000 : ℚ)
  oldPieces := [piece_1469, piece_1470]
}

def cell_8788 : Cell := { cellDefaults with
  domain := ⟨(8860937500000001 / 25000000000000000 : ℚ), (8862500000000001 / 25000000000000000 : ℚ)⟩
  r := (74312421292007 / 100000000000000 : ℚ)
  w := (16440390928621 / 10000000000000 : ℚ)
  center := (8861718750000001 / 25000000000000000 : ℚ)
  supportValue := (3143851190857657 / 5000000000000000 : ℚ)
  supportSlope := (-2108017139644147 / 500000000000000 : ℚ)
  oldCenter := (3143851190857657 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_871
  oldLo := (31425000000000003 / 50000000000000000 : ℚ)
  oldHi := (629 / 1000 : ℚ)
  oldPieces := [piece_1469]
}

def cell_8789 : Cell := { cellDefaults with
  domain := ⟨(8862500000000001 / 25000000000000000 : ℚ), (8864062500000001 / 25000000000000000 : ℚ)⟩
  r := (74260141413317 / 100000000000000 : ℚ)
  w := (16432232761937 / 10000000000000 : ℚ)
  center := (8863281250000001 / 25000000000000000 : ℚ)
  supportValue := (6295821351153247 / 10000000000000000 : ℚ)
  supportSlope := (-4220821401112573 / 1000000000000000 : ℚ)
  oldCenter := (6295821351153247 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_872
  oldLo := (6294413407821229 / 10000000000000000 : ℚ)
  oldHi := (63 / 100 : ℚ)
  oldPieces := [piece_1471, piece_1472]
}

def cell_8790 : Cell := { cellDefaults with
  domain := ⟨(8864062500000001 / 25000000000000000 : ℚ), (8865625000000001 / 25000000000000000 : ℚ)⟩
  r := (74260141413317 / 100000000000000 : ℚ)
  w := (16432232761937 / 10000000000000 : ℚ)
  center := (8864843750000001 / 25000000000000000 : ℚ)
  supportValue := (3146592028860131 / 5000000000000000 : ℚ)
  supportSlope := (-263651925284103 / 62500000000000 : ℚ)
  oldCenter := (3146592028860131 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_872
  oldLo := (629 / 1000 : ℚ)
  oldHi := (31475000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1470, piece_1471]
}

def cell_8791 : Cell := { cellDefaults with
  domain := ⟨(8865625000000001 / 25000000000000000 : ℚ), (8867187500000001 / 25000000000000000 : ℚ)⟩
  r := (74260141413317 / 100000000000000 : ℚ)
  w := (16432232761937 / 10000000000000 : ℚ)
  center := (8866406250000001 / 25000000000000000 : ℚ)
  supportValue := (6290548397396513 / 10000000000000000 : ℚ)
  supportSlope := (-4215810847465917 / 1000000000000000 : ℚ)
  oldCenter := (6290548397396513 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_872
  oldLo := (31425000000000003 / 50000000000000000 : ℚ)
  oldHi := (6294413407821229 / 10000000000000000 : ℚ)
  oldPieces := [piece_1469, piece_1470]
}

def cell_8792 : Cell := { cellDefaults with
  domain := ⟨(8867187500000001 / 25000000000000000 : ℚ), (8868750000000001 / 25000000000000000 : ℚ)⟩
  r := (74260141413317 / 100000000000000 : ℚ)
  w := (16432232761937 / 10000000000000 : ℚ)
  center := (8867968750000001 / 25000000000000000 : ℚ)
  supportValue := (628791423457731 / 1000000000000000 : ℚ)
  supportSlope := (-2106688684806457 / 500000000000000 : ℚ)
  oldCenter := (628791423457731 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_872
  oldLo := (31425000000000003 / 50000000000000000 : ℚ)
  oldHi := (629 / 1000 : ℚ)
  oldPieces := [piece_1469]
}

def cell_8793 : Cell := { cellDefaults with
  domain := ⟨(8868750000000001 / 25000000000000000 : ℚ), (8870312500000001 / 25000000000000000 : ℚ)⟩
  r := (74260141413317 / 100000000000000 : ℚ)
  w := (16432232761937 / 10000000000000 : ℚ)
  center := (8869531250000001 / 25000000000000000 : ℚ)
  supportValue := (6285281731558681 / 10000000000000000 : ℚ)
  supportSlope := (-1052701491405017 / 250000000000000 : ℚ)
  oldCenter := (6285281731558681 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_872
  oldLo := (157 / 250 : ℚ)
  oldHi := (629 / 1000 : ℚ)
  oldPieces := [piece_1468, piece_1469]
}

def cell_8794 : Cell := { cellDefaults with
  domain := ⟨(8870312500000001 / 25000000000000000 : ℚ), (8871875000000001 / 25000000000000000 : ℚ)⟩
  r := (74260141413317 / 100000000000000 : ℚ)
  w := (16432232761937 / 10000000000000 : ℚ)
  center := (8871093750000001 / 25000000000000000 : ℚ)
  supportValue := (6282650695743909 / 10000000000000000 : ℚ)
  supportSlope := (-420833080363181 / 100000000000000 : ℚ)
  oldCenter := (6282650695743909 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_872
  oldLo := (157 / 250 : ℚ)
  oldHi := (31425000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1468]
}

def cell_8795 : Cell := { cellDefaults with
  domain := ⟨(8871875000000001 / 25000000000000000 : ℚ), (8873437500000001 / 25000000000000000 : ℚ)⟩
  r := (74260141413317 / 100000000000000 : ℚ)
  w := (16432232761937 / 10000000000000 : ℚ)
  center := (8872656250000001 / 25000000000000000 : ℚ)
  supportValue := (1256004269143391 / 2000000000000000 : ℚ)
  supportSlope := (-4205807066551159 / 1000000000000000 : ℚ)
  oldCenter := (1256004269143391 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_872
  oldLo := (31375000000000003 / 50000000000000000 : ℚ)
  oldHi := (31425000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1467, piece_1468]
}

def cell_8796 : Cell := { cellDefaults with
  domain := ⟨(8873437500000001 / 25000000000000000 : ℚ), (8875000000000001 / 25000000000000000 : ℚ)⟩
  r := (74260141413317 / 100000000000000 : ℚ)
  w := (16432232761937 / 10000000000000 : ℚ)
  center := (8874218750000001 / 25000000000000000 : ℚ)
  supportValue := (6277393433180359 / 10000000000000000 : ℚ)
  supportSlope := (-4203291039402757 / 1000000000000000 : ℚ)
  oldCenter := (6277393433180359 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_872
  oldLo := (31375000000000003 / 50000000000000000 : ℚ)
  oldHi := (157 / 250 : ℚ)
  oldPieces := [piece_1467]
}

def cell_8797 : Cell := { cellDefaults with
  domain := ⟨(8875000000000001 / 25000000000000000 : ℚ), (8876562500000001 / 25000000000000000 : ℚ)⟩
  r := (74207944136969 / 100000000000000 : ℚ)
  w := (5255709677 / 3200000000 : ℚ)
  center := (8875781250000001 / 25000000000000000 : ℚ)
  supportValue := (628548995497151 / 1000000000000000 : ℚ)
  supportSlope := (-1052026975550291 / 250000000000000 : ℚ)
  oldCenter := (628548995497151 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_873
  oldLo := (157 / 250 : ℚ)
  oldHi := (629 / 1000 : ℚ)
  oldPieces := [piece_1468, piece_1469]
}

def cell_8798 : Cell := { cellDefaults with
  domain := ⟨(8876562500000001 / 25000000000000000 : ℚ), (8878125000000001 / 25000000000000000 : ℚ)⟩
  r := (74207944136969 / 100000000000000 : ℚ)
  w := (5255709677 / 3200000000 : ℚ)
  center := (8877343750000001 / 25000000000000000 : ℚ)
  supportValue := (3141430301857449 / 5000000000000000 : ℚ)
  supportSlope := (-8411347376814149 / 2000000000000000 : ℚ)
  oldCenter := (3141430301857449 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_873
  oldLo := (157 / 250 : ℚ)
  oldHi := (31425000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1468]
}

def cell_8799 : Cell := { cellDefaults with
  domain := ⟨(8878125000000001 / 25000000000000000 : ℚ), (8879687500000001 / 25000000000000000 : ℚ)⟩
  r := (74207944136969 / 100000000000000 : ℚ)
  w := (5255709677 / 3200000000 : ℚ)
  center := (8878906250000001 / 25000000000000000 : ℚ)
  supportValue := (1570058228151661 / 2500000000000000 : ℚ)
  supportSlope := (-1681247855688639 / 400000000000000 : ℚ)
  oldCenter := (1570058228151661 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_873
  oldLo := (31375000000000003 / 50000000000000000 : ℚ)
  oldHi := (31425000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1467, piece_1468]
}

theorem check_8750 : cell_8750.check = true := by
  decide +kernel

theorem check_8751 : cell_8751.check = true := by
  decide +kernel

theorem check_8752 : cell_8752.check = true := by
  decide +kernel

theorem check_8753 : cell_8753.check = true := by
  decide +kernel

theorem check_8754 : cell_8754.check = true := by
  decide +kernel

theorem check_8755 : cell_8755.check = true := by
  decide +kernel

theorem check_8756 : cell_8756.check = true := by
  decide +kernel

theorem check_8757 : cell_8757.check = true := by
  decide +kernel

theorem check_8758 : cell_8758.check = true := by
  decide +kernel

theorem check_8759 : cell_8759.check = true := by
  decide +kernel

theorem check_8760 : cell_8760.check = true := by
  decide +kernel

theorem check_8761 : cell_8761.check = true := by
  decide +kernel

theorem check_8762 : cell_8762.check = true := by
  decide +kernel

theorem check_8763 : cell_8763.check = true := by
  decide +kernel

theorem check_8764 : cell_8764.check = true := by
  decide +kernel

theorem check_8765 : cell_8765.check = true := by
  decide +kernel

theorem check_8766 : cell_8766.check = true := by
  decide +kernel

theorem check_8767 : cell_8767.check = true := by
  decide +kernel

theorem check_8768 : cell_8768.check = true := by
  decide +kernel

theorem check_8769 : cell_8769.check = true := by
  decide +kernel

theorem check_8770 : cell_8770.check = true := by
  decide +kernel

theorem check_8771 : cell_8771.check = true := by
  decide +kernel

theorem check_8772 : cell_8772.check = true := by
  decide +kernel

theorem check_8773 : cell_8773.check = true := by
  decide +kernel

theorem check_8774 : cell_8774.check = true := by
  decide +kernel

theorem check_8775 : cell_8775.check = true := by
  decide +kernel

theorem check_8776 : cell_8776.check = true := by
  decide +kernel

theorem check_8777 : cell_8777.check = true := by
  decide +kernel

theorem check_8778 : cell_8778.check = true := by
  decide +kernel

theorem check_8779 : cell_8779.check = true := by
  decide +kernel

theorem check_8780 : cell_8780.check = true := by
  decide +kernel

theorem check_8781 : cell_8781.check = true := by
  decide +kernel

theorem check_8782 : cell_8782.check = true := by
  decide +kernel

theorem check_8783 : cell_8783.check = true := by
  decide +kernel

theorem check_8784 : cell_8784.check = true := by
  decide +kernel

theorem check_8785 : cell_8785.check = true := by
  decide +kernel

theorem check_8786 : cell_8786.check = true := by
  decide +kernel

theorem check_8787 : cell_8787.check = true := by
  decide +kernel

theorem check_8788 : cell_8788.check = true := by
  decide +kernel

theorem check_8789 : cell_8789.check = true := by
  decide +kernel

theorem check_8790 : cell_8790.check = true := by
  decide +kernel

theorem check_8791 : cell_8791.check = true := by
  decide +kernel

theorem check_8792 : cell_8792.check = true := by
  decide +kernel

theorem check_8793 : cell_8793.check = true := by
  decide +kernel

theorem check_8794 : cell_8794.check = true := by
  decide +kernel

theorem check_8795 : cell_8795.check = true := by
  decide +kernel

theorem check_8796 : cell_8796.check = true := by
  decide +kernel

theorem check_8797 : cell_8797.check = true := by
  decide +kernel

theorem check_8798 : cell_8798.check = true := by
  decide +kernel

theorem check_8799 : cell_8799.check = true := by
  decide +kernel

def cells : List Cell := [cell_8750, cell_8751, cell_8752, cell_8753, cell_8754, cell_8755, cell_8756, cell_8757, cell_8758, cell_8759, cell_8760, cell_8761, cell_8762, cell_8763, cell_8764, cell_8765, cell_8766, cell_8767, cell_8768, cell_8769, cell_8770, cell_8771, cell_8772, cell_8773, cell_8774, cell_8775, cell_8776, cell_8777, cell_8778, cell_8779, cell_8780, cell_8781, cell_8782, cell_8783, cell_8784, cell_8785, cell_8786, cell_8787, cell_8788, cell_8789, cell_8790, cell_8791, cell_8792, cell_8793, cell_8794, cell_8795, cell_8796, cell_8797, cell_8798, cell_8799]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8750, check_8751, check_8752, check_8753, check_8754, check_8755, check_8756, check_8757, check_8758, check_8759, check_8760, check_8761, check_8762, check_8763, check_8764, check_8765, check_8766, check_8767, check_8768, check_8769, check_8770, check_8771, check_8772, check_8773, check_8774, check_8775, check_8776, check_8777, check_8778, check_8779, check_8780, check_8781, check_8782, check_8783, check_8784, check_8785, check_8786, check_8787, check_8788, check_8789, check_8790, check_8791, check_8792, check_8793, check_8794, check_8795, check_8796, check_8797, check_8798, check_8799, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0175

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0175
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0175
open AnalyticBounds.ExpressionCertificate

theorem linked_8750 : Linked cell_8750 pieces := by
  apply Linked.of_piece piece_866 piece_866_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8750, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1481_mem, piece_1482_mem⟩

theorem linked_8751 : Linked cell_8751 pieces := by
  apply Linked.of_piece piece_866 piece_866_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8751, List.cons_subset, List.nil_subset, and_true]
  exact piece_1481_mem

theorem linked_8752 : Linked cell_8752 pieces := by
  apply Linked.of_piece piece_866 piece_866_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8752, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1480_mem, piece_1481_mem⟩

theorem linked_8753 : Linked cell_8753 pieces := by
  apply Linked.of_piece piece_866 piece_866_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8753, List.cons_subset, List.nil_subset, and_true]
  exact piece_1480_mem

theorem linked_8754 : Linked cell_8754 pieces := by
  apply Linked.of_piece piece_866 piece_866_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8754, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1479_mem, piece_1480_mem⟩

theorem linked_8755 : Linked cell_8755 pieces := by
  apply Linked.of_piece piece_866 piece_866_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8755, List.cons_subset, List.nil_subset, and_true]
  exact piece_1479_mem

theorem linked_8756 : Linked cell_8756 pieces := by
  apply Linked.of_piece piece_866 piece_866_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8756, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1478_mem, piece_1479_mem⟩

theorem linked_8757 : Linked cell_8757 pieces := by
  apply Linked.of_piece piece_867 piece_867_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8757, List.cons_subset, List.nil_subset, and_true]
  exact piece_1480_mem

theorem linked_8758 : Linked cell_8758 pieces := by
  apply Linked.of_piece piece_867 piece_867_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8758, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1479_mem, piece_1480_mem⟩

theorem linked_8759 : Linked cell_8759 pieces := by
  apply Linked.of_piece piece_867 piece_867_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8759, List.cons_subset, List.nil_subset, and_true]
  exact piece_1479_mem

theorem linked_8760 : Linked cell_8760 pieces := by
  apply Linked.of_piece piece_867 piece_867_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8760, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1478_mem, piece_1479_mem⟩

theorem linked_8761 : Linked cell_8761 pieces := by
  apply Linked.of_piece piece_867 piece_867_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8761, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1477_mem, piece_1478_mem⟩

theorem linked_8762 : Linked cell_8762 pieces := by
  apply Linked.of_piece piece_867 piece_867_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8762, List.cons_subset, List.nil_subset, and_true]
  exact piece_1477_mem

theorem linked_8763 : Linked cell_8763 pieces := by
  apply Linked.of_piece piece_868 piece_868_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8763, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1476_mem, piece_1477_mem⟩

theorem linked_8764 : Linked cell_8764 pieces := by
  apply Linked.of_piece piece_868 piece_868_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8764, List.cons_subset, List.nil_subset, and_true]
  exact piece_1476_mem

theorem linked_8765 : Linked cell_8765 pieces := by
  apply Linked.of_piece piece_869 piece_869_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8765, List.cons_subset, List.nil_subset, and_true]
  exact piece_1478_mem

theorem linked_8766 : Linked cell_8766 pieces := by
  apply Linked.of_piece piece_869 piece_869_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8766, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1477_mem, piece_1478_mem⟩

theorem linked_8767 : Linked cell_8767 pieces := by
  apply Linked.of_piece piece_869 piece_869_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8767, List.cons_subset, List.nil_subset, and_true]
  exact piece_1477_mem

theorem linked_8768 : Linked cell_8768 pieces := by
  apply Linked.of_piece piece_869 piece_869_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8768, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1476_mem, piece_1477_mem⟩

theorem linked_8769 : Linked cell_8769 pieces := by
  apply Linked.of_piece piece_869 piece_869_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8769, List.cons_subset, List.nil_subset, and_true]
  exact piece_1476_mem

theorem linked_8770 : Linked cell_8770 pieces := by
  apply Linked.of_piece piece_869 piece_869_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8770, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1475_mem, piece_1476_mem⟩

theorem linked_8771 : Linked cell_8771 pieces := by
  apply Linked.of_piece piece_869 piece_869_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8771, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1474_mem, piece_1475_mem⟩

theorem linked_8772 : Linked cell_8772 pieces := by
  apply Linked.of_piece piece_869 piece_869_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8772, List.cons_subset, List.nil_subset, and_true]
  exact piece_1474_mem

theorem linked_8773 : Linked cell_8773 pieces := by
  apply Linked.of_piece piece_870 piece_870_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8773, List.cons_subset, List.nil_subset, and_true]
  exact piece_1476_mem

theorem linked_8774 : Linked cell_8774 pieces := by
  apply Linked.of_piece piece_870 piece_870_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8774, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1475_mem, piece_1476_mem⟩

theorem linked_8775 : Linked cell_8775 pieces := by
  apply Linked.of_piece piece_870 piece_870_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8775, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1474_mem, piece_1475_mem⟩

theorem linked_8776 : Linked cell_8776 pieces := by
  apply Linked.of_piece piece_870 piece_870_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8776, List.cons_subset, List.nil_subset, and_true]
  exact piece_1474_mem

theorem linked_8777 : Linked cell_8777 pieces := by
  apply Linked.of_piece piece_870 piece_870_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8777, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1473_mem, piece_1474_mem⟩

theorem linked_8778 : Linked cell_8778 pieces := by
  apply Linked.of_piece piece_870 piece_870_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8778, List.cons_subset, List.nil_subset, and_true]
  exact piece_1473_mem

theorem linked_8779 : Linked cell_8779 pieces := by
  apply Linked.of_piece piece_870 piece_870_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8779, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1472_mem, piece_1473_mem⟩

theorem linked_8780 : Linked cell_8780 pieces := by
  apply Linked.of_piece piece_870 piece_870_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8780, List.cons_subset, List.nil_subset, and_true]
  exact piece_1472_mem

theorem linked_8781 : Linked cell_8781 pieces := by
  apply Linked.of_piece piece_871 piece_871_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8781, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1473_mem, piece_1474_mem⟩

theorem linked_8782 : Linked cell_8782 pieces := by
  apply Linked.of_piece piece_871 piece_871_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8782, List.cons_subset, List.nil_subset, and_true]
  exact piece_1473_mem

theorem linked_8783 : Linked cell_8783 pieces := by
  apply Linked.of_piece piece_871 piece_871_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8783, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1472_mem, piece_1473_mem⟩

theorem linked_8784 : Linked cell_8784 pieces := by
  apply Linked.of_piece piece_871 piece_871_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8784, List.cons_subset, List.nil_subset, and_true]
  exact piece_1472_mem

theorem linked_8785 : Linked cell_8785 pieces := by
  apply Linked.of_piece piece_871 piece_871_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8785, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1470_mem, ⟨piece_1471_mem, piece_1472_mem⟩⟩

theorem linked_8786 : Linked cell_8786 pieces := by
  apply Linked.of_piece piece_871 piece_871_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8786, List.cons_subset, List.nil_subset, and_true]
  exact piece_1470_mem

theorem linked_8787 : Linked cell_8787 pieces := by
  apply Linked.of_piece piece_871 piece_871_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8787, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1469_mem, piece_1470_mem⟩

theorem linked_8788 : Linked cell_8788 pieces := by
  apply Linked.of_piece piece_871 piece_871_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8788, List.cons_subset, List.nil_subset, and_true]
  exact piece_1469_mem

theorem linked_8789 : Linked cell_8789 pieces := by
  apply Linked.of_piece piece_872 piece_872_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8789, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1471_mem, piece_1472_mem⟩

theorem linked_8790 : Linked cell_8790 pieces := by
  apply Linked.of_piece piece_872 piece_872_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8790, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1470_mem, piece_1471_mem⟩

theorem linked_8791 : Linked cell_8791 pieces := by
  apply Linked.of_piece piece_872 piece_872_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8791, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1469_mem, piece_1470_mem⟩

theorem linked_8792 : Linked cell_8792 pieces := by
  apply Linked.of_piece piece_872 piece_872_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8792, List.cons_subset, List.nil_subset, and_true]
  exact piece_1469_mem

theorem linked_8793 : Linked cell_8793 pieces := by
  apply Linked.of_piece piece_872 piece_872_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8793, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1468_mem, piece_1469_mem⟩

theorem linked_8794 : Linked cell_8794 pieces := by
  apply Linked.of_piece piece_872 piece_872_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8794, List.cons_subset, List.nil_subset, and_true]
  exact piece_1468_mem

theorem linked_8795 : Linked cell_8795 pieces := by
  apply Linked.of_piece piece_872 piece_872_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8795, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1467_mem, piece_1468_mem⟩

theorem linked_8796 : Linked cell_8796 pieces := by
  apply Linked.of_piece piece_872 piece_872_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8796, List.cons_subset, List.nil_subset, and_true]
  exact piece_1467_mem

theorem linked_8797 : Linked cell_8797 pieces := by
  apply Linked.of_piece piece_873 piece_873_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8797, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1468_mem, piece_1469_mem⟩

theorem linked_8798 : Linked cell_8798 pieces := by
  apply Linked.of_piece piece_873 piece_873_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8798, List.cons_subset, List.nil_subset, and_true]
  exact piece_1468_mem

theorem linked_8799 : Linked cell_8799 pieces := by
  apply Linked.of_piece piece_873 piece_873_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8799, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1467_mem, piece_1468_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0175.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0175.cells,List.forall_mem_cons]
  exact ⟨linked_8750, linked_8751, linked_8752, linked_8753, linked_8754, linked_8755, linked_8756, linked_8757, linked_8758, linked_8759, linked_8760, linked_8761, linked_8762, linked_8763, linked_8764, linked_8765, linked_8766, linked_8767, linked_8768, linked_8769, linked_8770, linked_8771, linked_8772, linked_8773, linked_8774, linked_8775, linked_8776, linked_8777, linked_8778, linked_8779, linked_8780, linked_8781, linked_8782, linked_8783, linked_8784, linked_8785, linked_8786, linked_8787, linked_8788, linked_8789, linked_8790, linked_8791, linked_8792, linked_8793, linked_8794, linked_8795, linked_8796, linked_8797, linked_8798, linked_8799, by simp⟩

theorem covered : covers (8801562500000001 / 25000000000000000 : ℚ) (8879687500000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0175.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0175
