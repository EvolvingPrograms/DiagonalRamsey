import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0160
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(6108750000000001 / 20000000000000000 : ℚ), (6110000000000001 / 20000000000000000 : ℚ)⟩
  branch := .left
  r := (79821726781409 / 100000000000000 : ℚ)
  w := (17323004500339 / 10000000000000 : ℚ)
  center := (6109375000000001 / 20000000000000000 : ℚ)
  supportValue := (1872818692798977 / 2500000000000000 : ℚ)
  supportSlope := (-5814090548099671 / 1000000000000000 : ℚ)
  oldCenter := (1872818692798977 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_765
  oldLo := (14970000000000001 / 20000000000000000 : ℚ)
  oldHi := (749 / 1000 : ℚ)
  oldPieces := [piece_1731, piece_1732]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8000 : Cell := { cellDefaults with
  r := (39941788926929 / 50000000000000 : ℚ)
  w := (17333084966771 / 10000000000000 : ℚ)
  newCoefficients := coefficients_764
  oldHi := (37475000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1731, piece_1732]
}

def cell_8001 : Cell := { cellDefaults with
  domain := ⟨(6110000000000001 / 20000000000000000 : ℚ), (6111250000000001 / 20000000000000000 : ℚ)⟩
  center := (6110625000000001 / 20000000000000000 : ℚ)
  supportValue := (7502072164637201 / 10000000000000000 : ℚ)
  supportSlope := (-5822103098328313 / 1000000000000000 : ℚ)
  oldCenter := (7502072164637201 / 10000000000000000 : ℚ)
  oldLo := (3 / 4 : ℚ)
  oldHi := (37525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1734]
}

def cell_8002 : Cell := { cellDefaults with
  domain := ⟨(6111250000000001 / 20000000000000000 : ℚ), (6112500000000001 / 20000000000000000 : ℚ)⟩
  center := (6111875000000001 / 20000000000000000 : ℚ)
  supportValue := (7498439861381919 / 10000000000000000 : ℚ)
  supportSlope := (-581809340997097 / 100000000000000 : ℚ)
  oldCenter := (7498439861381919 / 10000000000000000 : ℚ)
  oldLo := (37475000000000003 / 50000000000000000 : ℚ)
  oldHi := (37525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1733, piece_1734]
}

def cell_8003 : Cell := { cellDefaults with
  domain := ⟨(6112500000000001 / 20000000000000000 : ℚ), (6113750000000001 / 20000000000000000 : ℚ)⟩
  center := (6113125000000001 / 20000000000000000 : ℚ)
  supportValue := (3747399828117897 / 5000000000000000 : ℚ)
  supportSlope := (-5813941383586041 / 1000000000000000 : ℚ)
  oldCenter := (3747399828117897 / 5000000000000000 : ℚ)
  oldLo := (749 / 1000 : ℚ)
  oldHi := (3 / 4 : ℚ)
  oldPieces := [piece_1732, piece_1733]
}

def cell_8004 : Cell := { cellDefaults with
  domain := ⟨(6113750000000001 / 20000000000000000 : ℚ), (6115000000000001 / 20000000000000000 : ℚ)⟩
  center := (6114375000000001 / 20000000000000000 : ℚ)
  supportValue := (3745586221790169 / 5000000000000000 : ℚ)
  supportSlope := (-5809791212797677 / 1000000000000000 : ℚ)
  oldCenter := (3745586221790169 / 5000000000000000 : ℚ)
  oldHi := (37475000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1731, piece_1732]
}

def cell_8005 : Cell := { cellDefaults with
  domain := ⟨(6115000000000001 / 20000000000000000 : ℚ), (6116250000000001 / 20000000000000000 : ℚ)⟩
  center := (6115625000000001 / 20000000000000000 : ℚ)
  supportValue := (116992770620429 / 156250000000000 : ℚ)
  supportSlope := (-362858573800251 / 62500000000000 : ℚ)
  oldCenter := (116992770620429 / 156250000000000 : ℚ)
  oldPieces := [piece_1731]
}

def cell_8006 : Cell := { cellDefaults with
  domain := ⟨(6116250000000001 / 20000000000000000 : ℚ), (6117500000000001 / 20000000000000000 : ℚ)⟩
  center := (6116875000000001 / 20000000000000000 : ℚ)
  supportValue := (3741957635052951 / 5000000000000000 : ℚ)
  supportSlope := (-11603353479053169 / 2000000000000000 : ℚ)
  oldCenter := (3741957635052951 / 5000000000000000 : ℚ)
  oldLo := (187 / 250 : ℚ)
  oldPieces := [piece_1730, piece_1731]
}

def cell_8007 : Cell := { cellDefaults with
  domain := ⟨(6117500000000001 / 20000000000000000 : ℚ), (6118750000000001 / 20000000000000000 : ℚ)⟩
  center := (6118125000000001 / 20000000000000000 : ℚ)
  supportValue := (1496057062083037 / 2000000000000000 : ℚ)
  supportSlope := (-463802674825331 / 80000000000000 : ℚ)
  oldCenter := (1496057062083037 / 2000000000000000 : ℚ)
  oldLo := (14950000000000001 / 20000000000000000 : ℚ)
  oldHi := (14970000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1729, piece_1730]
}

def cell_8008 : Cell := { cellDefaults with
  domain := ⟨(6118750000000001 / 20000000000000000 : ℚ), (6120000000000001 / 20000000000000000 : ℚ)⟩
  center := (6119375000000001 / 20000000000000000 : ℚ)
  supportValue := (116822942541231 / 156250000000000 : ℚ)
  supportSlope := (-1448347978869613 / 250000000000000 : ℚ)
  oldCenter := (116822942541231 / 156250000000000 : ℚ)
  oldLo := (747 / 1000 : ℚ)
  oldHi := (187 / 250 : ℚ)
  oldPieces := [piece_1728, piece_1729]
}

def cell_8009 : Cell := { cellDefaults with
  domain := ⟨(6120000000000001 / 20000000000000000 : ℚ), (6121250000000001 / 20000000000000000 : ℚ)⟩
  r := (127615985589 / 160000000000 : ℚ)
  w := (692517794401 / 400000000000 : ℚ)
  center := (6120625000000001 / 20000000000000000 : ℚ)
  supportValue := (7487432842629923 / 10000000000000000 : ℚ)
  supportSlope := (-725177016588141 / 125000000000000 : ℚ)
  oldCenter := (7487432842629923 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_766
  oldPieces := [piece_1731]
}

def cell_8010 : Cell := { cellDefaults with
  domain := ⟨(6121250000000001 / 20000000000000000 : ℚ), (6122500000000001 / 20000000000000000 : ℚ)⟩
  r := (127615985589 / 160000000000 : ℚ)
  w := (692517794401 / 400000000000 : ℚ)
  center := (6121875000000001 / 20000000000000000 : ℚ)
  supportValue := (3741906740776319 / 5000000000000000 : ℚ)
  supportSlope := (-1159476159973849 / 200000000000000 : ℚ)
  oldCenter := (3741906740776319 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_766
  oldLo := (187 / 250 : ℚ)
  oldPieces := [piece_1730, piece_1731]
}

def cell_8011 : Cell := { cellDefaults with
  domain := ⟨(6122500000000001 / 20000000000000000 : ℚ), (6123750000000001 / 20000000000000000 : ℚ)⟩
  r := (127615985589 / 160000000000 : ℚ)
  w := (692517794401 / 400000000000 : ℚ)
  center := (6123125000000001 / 20000000000000000 : ℚ)
  supportValue := (7480186211564399 / 10000000000000000 : ℚ)
  supportSlope := (-579324880165899 / 100000000000000 : ℚ)
  oldCenter := (7480186211564399 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_766
  oldLo := (14950000000000001 / 20000000000000000 : ℚ)
  oldHi := (14970000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1729, piece_1730]
}

def cell_8012 : Cell := { cellDefaults with
  domain := ⟨(6123750000000001 / 20000000000000000 : ℚ), (6125000000000001 / 20000000000000000 : ℚ)⟩
  r := (127615985589 / 160000000000 : ℚ)
  w := (692517794401 / 400000000000 : ℚ)
  center := (6124375000000001 / 20000000000000000 : ℚ)
  supportValue := (11682143590611 / 15625000000000 : ℚ)
  supportSlope := (-5789118577251173 / 1000000000000000 : ℚ)
  oldCenter := (11682143590611 / 15625000000000 : ℚ)
  newCoefficients := coefficients_766
  oldLo := (747 / 1000 : ℚ)
  oldHi := (187 / 250 : ℚ)
  oldPieces := [piece_1728, piece_1729]
}

def cell_8013 : Cell := { cellDefaults with
  domain := ⟨(6125000000000001 / 20000000000000000 : ℚ), (6126250000000001 / 20000000000000000 : ℚ)⟩
  r := (127615985589 / 160000000000 : ℚ)
  w := (692517794401 / 400000000000 : ℚ)
  center := (6125625000000001 / 20000000000000000 : ℚ)
  supportValue := (3736474848828893 / 5000000000000000 : ℚ)
  supportSlope := (-231405598539709 / 40000000000000 : ℚ)
  oldCenter := (3736474848828893 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_766
  oldLo := (747 / 1000 : ℚ)
  oldHi := (14950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1728]
}

def cell_8014 : Cell := { cellDefaults with
  domain := ⟨(6126250000000001 / 20000000000000000 : ℚ), (6127500000000001 / 20000000000000000 : ℚ)⟩
  r := (127615985589 / 160000000000 : ℚ)
  w := (692517794401 / 400000000000 : ℚ)
  center := (6126875000000001 / 20000000000000000 : ℚ)
  supportValue := (1867335134679689 / 2500000000000000 : ℚ)
  supportSlope := (-2890523341728013 / 500000000000000 : ℚ)
  oldCenter := (1867335134679689 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_766
  oldLo := (14930000000000001 / 20000000000000000 : ℚ)
  oldHi := (14950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1727, piece_1728]
}

def cell_8015 : Cell := { cellDefaults with
  domain := ⟨(6127500000000001 / 20000000000000000 : ℚ), (6128750000000001 / 20000000000000000 : ℚ)⟩
  r := (127615985589 / 160000000000 : ℚ)
  w := (692517794401 / 400000000000 : ℚ)
  center := (6128125000000001 / 20000000000000000 : ℚ)
  supportValue := (3732864333768379 / 5000000000000000 : ℚ)
  supportSlope := (-5776923246980203 / 1000000000000000 : ℚ)
  oldCenter := (3732864333768379 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_766
  oldLo := (373 / 500 : ℚ)
  oldHi := (747 / 1000 : ℚ)
  oldPieces := [piece_1726, piece_1727]
}

def cell_8016 : Cell := { cellDefaults with
  domain := ⟨(6128750000000001 / 20000000000000000 : ℚ), (6130000000000001 / 20000000000000000 : ℚ)⟩
  r := (127615985589 / 160000000000 : ℚ)
  w := (692517794401 / 400000000000 : ℚ)
  center := (6129375000000001 / 20000000000000000 : ℚ)
  supportValue := (3731057047191193 / 5000000000000000 : ℚ)
  supportSlope := (-72160528232601 / 12500000000000 : ℚ)
  oldCenter := (3731057047191193 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_766
  oldLo := (373 / 500 : ℚ)
  oldHi := (14930000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1726]
}

def cell_8017 : Cell := { cellDefaults with
  domain := ⟨(6130000000000001 / 20000000000000000 : ℚ), (6131250000000001 / 20000000000000000 : ℚ)⟩
  r := (19924592593503 / 25000000000000 : ℚ)
  w := (17302905070057 / 10000000000000 : ℚ)
  center := (6130625000000001 / 20000000000000000 : ℚ)
  supportValue := (7472851516281727 / 10000000000000000 : ℚ)
  supportSlope := (-361302823250087 / 62500000000000 : ℚ)
  oldCenter := (7472851516281727 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_767
  oldLo := (747 / 1000 : ℚ)
  oldHi := (14950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1728]
}

def cell_8018 : Cell := { cellDefaults with
  domain := ⟨(6131250000000001 / 20000000000000000 : ℚ), (6132500000000001 / 20000000000000000 : ℚ)⟩
  r := (19924592593503 / 25000000000000 : ℚ)
  w := (17302905070057 / 10000000000000 : ℚ)
  center := (6131875000000001 / 20000000000000000 : ℚ)
  supportValue := (7469245029906021 / 10000000000000000 : ℚ)
  supportSlope := (-5776776330161937 / 1000000000000000 : ℚ)
  oldCenter := (7469245029906021 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_767
  oldLo := (14930000000000001 / 20000000000000000 : ℚ)
  oldHi := (14950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1727, piece_1728]
}

def cell_8019 : Cell := { cellDefaults with
  domain := ⟨(6132500000000001 / 20000000000000000 : ℚ), (6133750000000001 / 20000000000000000 : ℚ)⟩
  r := (19924592593503 / 25000000000000 : ℚ)
  w := (17302905070057 / 10000000000000 : ℚ)
  center := (6133125000000001 / 20000000000000000 : ℚ)
  supportValue := (3732817915934523 / 5000000000000000 : ℚ)
  supportSlope := (-230906571308509 / 40000000000000 : ℚ)
  oldCenter := (3732817915934523 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_767
  oldLo := (373 / 500 : ℚ)
  oldHi := (747 / 1000 : ℚ)
  oldPieces := [piece_1726, piece_1727]
}

def cell_8020 : Cell := { cellDefaults with
  domain := ⟨(6133750000000001 / 20000000000000000 : ℚ), (6135000000000001 / 20000000000000000 : ℚ)⟩
  r := (19924592593503 / 25000000000000 : ℚ)
  w := (17302905070057 / 10000000000000 : ℚ)
  center := (6134375000000001 / 20000000000000000 : ℚ)
  supportValue := (3731011958489549 / 5000000000000000 : ℚ)
  supportSlope := (-5768582971025893 / 1000000000000000 : ℚ)
  oldCenter := (3731011958489549 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_767
  oldLo := (373 / 500 : ℚ)
  oldHi := (14930000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1726]
}

def cell_8021 : Cell := { cellDefaults with
  domain := ⟨(6135000000000001 / 20000000000000000 : ℚ), (6136250000000001 / 20000000000000000 : ℚ)⟩
  r := (19924592593503 / 25000000000000 : ℚ)
  w := (17302905070057 / 10000000000000 : ℚ)
  center := (6135625000000001 / 20000000000000000 : ℚ)
  supportValue := (1864606254210641 / 2500000000000000 : ℚ)
  supportSlope := (-5764630212585331 / 1000000000000000 : ℚ)
  oldCenter := (1864606254210641 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_767
  oldLo := (7455865921787709 / 10000000000000000 : ℚ)
  oldHi := (14930000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1725, piece_1726]
}

def cell_8022 : Cell := { cellDefaults with
  domain := ⟨(6136250000000001 / 20000000000000000 : ℚ), (6137500000000001 / 20000000000000000 : ℚ)⟩
  r := (19924592593503 / 25000000000000 : ℚ)
  w := (17302905070057 / 10000000000000 : ℚ)
  center := (6136875000000001 / 20000000000000000 : ℚ)
  supportValue := (3727409120787211 / 5000000000000000 : ℚ)
  supportSlope := (-5760525410209993 / 1000000000000000 : ℚ)
  oldCenter := (3727409120787211 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_767
  oldLo := (149 / 200 : ℚ)
  oldHi := (373 / 500 : ℚ)
  oldPieces := [piece_1723, piece_1724, piece_1725]
}

def cell_8023 : Cell := { cellDefaults with
  domain := ⟨(6137500000000001 / 20000000000000000 : ℚ), (6138750000000001 / 20000000000000000 : ℚ)⟩
  r := (19924592593503 / 25000000000000 : ℚ)
  w := (17302905070057 / 10000000000000 : ℚ)
  center := (6138125000000001 / 20000000000000000 : ℚ)
  supportValue := (1490244873570591 / 2000000000000000 : ℚ)
  supportSlope := (-5756422129433503 / 1000000000000000 : ℚ)
  oldCenter := (1490244873570591 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_767
  oldLo := (14890000000000001 / 20000000000000000 : ℚ)
  oldHi := (14910000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1722, piece_1723]
}

def cell_8024 : Cell := { cellDefaults with
  domain := ⟨(6138750000000001 / 20000000000000000 : ℚ), (6140000000000001 / 20000000000000000 : ℚ)⟩
  r := (19924592593503 / 25000000000000 : ℚ)
  w := (17302905070057 / 10000000000000 : ℚ)
  center := (6139375000000001 / 20000000000000000 : ℚ)
  supportValue := (465476413184129 / 625000000000000 : ℚ)
  supportSlope := (-115048589631499 / 20000000000000 : ℚ)
  oldCenter := (465476413184129 / 625000000000000 : ℚ)
  newCoefficients := coefficients_767
  oldLo := (14890000000000001 / 20000000000000000 : ℚ)
  oldHi := (149 / 200 : ℚ)
  oldPieces := [piece_1722]
}

def cell_8025 : Cell := { cellDefaults with
  domain := ⟨(6140000000000001 / 20000000000000000 : ℚ), (6141250000000001 / 20000000000000000 : ℚ)⟩
  r := (79636864198251 / 100000000000000 : ℚ)
  w := (17292885901797 / 10000000000000 : ℚ)
  center := (6140625000000001 / 20000000000000000 : ℚ)
  supportValue := (7458332702691253 / 10000000000000000 : ℚ)
  supportSlope := (-5760373199358071 / 1000000000000000 : ℚ)
  oldCenter := (7458332702691253 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_768
  oldLo := (7455865921787709 / 10000000000000000 : ℚ)
  oldHi := (14930000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1725, piece_1726]
}

def cell_8026 : Cell := { cellDefaults with
  domain := ⟨(6141250000000001 / 20000000000000000 : ℚ), (6142500000000001 / 20000000000000000 : ℚ)⟩
  r := (79636864198251 / 100000000000000 : ℚ)
  w := (17292885901797 / 10000000000000 : ℚ)
  center := (6141875000000001 / 20000000000000000 : ℚ)
  supportValue := (372736429231037 / 500000000000000 : ℚ)
  supportSlope := (-1151255979010557 / 200000000000000 : ℚ)
  oldCenter := (372736429231037 / 500000000000000 : ℚ)
  newCoefficients := coefficients_768
  oldLo := (149 / 200 : ℚ)
  oldHi := (373 / 500 : ℚ)
  oldPieces := [piece_1723, piece_1724, piece_1725]
}

def cell_8027 : Cell := { cellDefaults with
  domain := ⟨(6142500000000001 / 20000000000000000 : ℚ), (6143750000000001 / 20000000000000000 : ℚ)⟩
  r := (79636864198251 / 100000000000000 : ℚ)
  w := (17292885901797 / 10000000000000 : ℚ)
  center := (6143125000000001 / 20000000000000000 : ℚ)
  supportValue := (1490227473599777 / 2000000000000000 : ℚ)
  supportSlope := (-1438047017595423 / 250000000000000 : ℚ)
  oldCenter := (1490227473599777 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_768
  oldLo := (14890000000000001 / 20000000000000000 : ℚ)
  oldHi := (14910000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1722, piece_1723]
}

def cell_8028 : Cell := { cellDefaults with
  domain := ⟨(6143750000000001 / 20000000000000000 : ℚ), (6145000000000001 / 20000000000000000 : ℚ)⟩
  r := (79636864198251 / 100000000000000 : ℚ)
  w := (17292885901797 / 10000000000000 : ℚ)
  center := (6144375000000001 / 20000000000000000 : ℚ)
  supportValue := (297901530150409 / 400000000000000 : ℚ)
  supportSlope := (-359262243182501 / 62500000000000 : ℚ)
  oldCenter := (297901530150409 / 400000000000000 : ℚ)
  newCoefficients := coefficients_768
  oldLo := (14890000000000001 / 20000000000000000 : ℚ)
  oldHi := (149 / 200 : ℚ)
  oldPieces := [piece_1722]
}

def cell_8029 : Cell := { cellDefaults with
  domain := ⟨(6145000000000001 / 20000000000000000 : ℚ), (6146250000000001 / 20000000000000000 : ℚ)⟩
  r := (79636864198251 / 100000000000000 : ℚ)
  w := (17292885901797 / 10000000000000 : ℚ)
  center := (6145625000000001 / 20000000000000000 : ℚ)
  supportValue := (7443952121439757 / 10000000000000000 : ℚ)
  supportSlope := (-1148839382534561 / 200000000000000 : ℚ)
  oldCenter := (7443952121439757 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_768
  oldLo := (74399999999999999 / 100000000000000000 : ℚ)
  oldHi := (149 / 200 : ℚ)
  oldPieces := [piece_1721, piece_1722]
}

def cell_8030 : Cell := { cellDefaults with
  domain := ⟨(6146250000000001 / 20000000000000000 : ℚ), (6147500000000001 / 20000000000000000 : ℚ)⟩
  r := (79636864198251 / 100000000000000 : ℚ)
  w := (17292885901797 / 10000000000000 : ℚ)
  center := (6146875000000001 / 20000000000000000 : ℚ)
  supportValue := (7440358092347447 / 10000000000000000 : ℚ)
  supportSlope := (-5740111696784567 / 1000000000000000 : ℚ)
  oldCenter := (7440358092347447 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_768
  oldLo := (14870000000000001 / 20000000000000000 : ℚ)
  oldHi := (14890000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1720, piece_1721]
}

def cell_8031 : Cell := { cellDefaults with
  domain := ⟨(6147500000000001 / 20000000000000000 : ℚ), (6148750000000001 / 20000000000000000 : ℚ)⟩
  r := (79636864198251 / 100000000000000 : ℚ)
  w := (17292885901797 / 10000000000000 : ℚ)
  center := (6148125000000001 / 20000000000000000 : ℚ)
  supportValue := (7436776944899407 / 10000000000000000 : ℚ)
  supportSlope := (-5736028241891233 / 1000000000000000 : ℚ)
  oldCenter := (7436776944899407 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_768
  oldLo := (74299999999999999 / 100000000000000000 : ℚ)
  oldHi := (74399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1719, piece_1720]
}

def cell_8032 : Cell := { cellDefaults with
  domain := ⟨(6148750000000001 / 20000000000000000 : ℚ), (6150000000000001 / 20000000000000000 : ℚ)⟩
  r := (79636864198251 / 100000000000000 : ℚ)
  w := (17292885901797 / 10000000000000 : ℚ)
  center := (6149375000000001 / 20000000000000000 : ℚ)
  supportValue := (3716593968587561 / 5000000000000000 : ℚ)
  supportSlope := (-5732132110654931 / 1000000000000000 : ℚ)
  oldCenter := (3716593968587561 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_768
  oldLo := (74299999999999999 / 100000000000000000 : ℚ)
  oldHi := (14870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1719]
}

def cell_8033 : Cell := { cellDefaults with
  domain := ⟨(6150000000000001 / 20000000000000000 : ℚ), (6151250000000001 / 20000000000000000 : ℚ)⟩
  r := (79575473929811 / 100000000000000 : ℚ)
  w := (4320721639131 / 2500000000000 : ℚ)
  center := (6150625000000001 / 20000000000000000 : ℚ)
  supportValue := (3721932844669451 / 5000000000000000 : ℚ)
  supportSlope := (-2869982206588517 / 500000000000000 : ℚ)
  oldCenter := (3721932844669451 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_769
  oldLo := (74399999999999999 / 100000000000000000 : ℚ)
  oldHi := (149 / 200 : ℚ)
  oldPieces := [piece_1721, piece_1722]
}

def cell_8034 : Cell := { cellDefaults with
  domain := ⟨(6151250000000001 / 20000000000000000 : ℚ), (6152500000000001 / 20000000000000000 : ℚ)⟩
  r := (79575473929811 / 100000000000000 : ℚ)
  w := (4320721639131 / 2500000000000 : ℚ)
  center := (6151875000000001 / 20000000000000000 : ℚ)
  supportValue := (1860068577267743 / 2500000000000000 : ℚ)
  supportSlope := (-2867945335061961 / 500000000000000 : ℚ)
  oldCenter := (1860068577267743 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_769
  oldLo := (14870000000000001 / 20000000000000000 : ℚ)
  oldHi := (14890000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1720, piece_1721]
}

def cell_8035 : Cell := { cellDefaults with
  domain := ⟨(6152500000000001 / 20000000000000000 : ℚ), (6153750000000001 / 20000000000000000 : ℚ)⟩
  r := (79575473929811 / 100000000000000 : ℚ)
  w := (4320721639131 / 2500000000000 : ℚ)
  center := (6153125000000001 / 20000000000000000 : ℚ)
  supportValue := (7436695796028269 / 10000000000000000 : ℚ)
  supportSlope := (-114636373559307 / 20000000000000 : ℚ)
  oldCenter := (7436695796028269 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_769
  oldLo := (74299999999999999 / 100000000000000000 : ℚ)
  oldHi := (74399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1719, piece_1720]
}

def cell_8036 : Cell := { cellDefaults with
  domain := ⟨(6153750000000001 / 20000000000000000 : ℚ), (6155000000000001 / 20000000000000000 : ℚ)⟩
  r := (79575473929811 / 100000000000000 : ℚ)
  w := (4320721639131 / 2500000000000 : ℚ)
  center := (6154375000000001 / 20000000000000000 : ℚ)
  supportValue := (7433109415661471 / 10000000000000000 : ℚ)
  supportSlope := (-5727923719977213 / 1000000000000000 : ℚ)
  oldCenter := (7433109415661471 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_769
  oldLo := (74299999999999999 / 100000000000000000 : ℚ)
  oldHi := (14870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1719]
}

def cell_8037 : Cell := { cellDefaults with
  domain := ⟨(6155000000000001 / 20000000000000000 : ℚ), (6156250000000001 / 20000000000000000 : ℚ)⟩
  r := (79575473929811 / 100000000000000 : ℚ)
  w := (4320721639131 / 2500000000000 : ℚ)
  center := (6155625000000001 / 20000000000000000 : ℚ)
  supportValue := (928691347990343 / 1250000000000000 : ℚ)
  supportSlope := (-5723870116749907 / 1000000000000000 : ℚ)
  oldCenter := (928691347990343 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_769
  oldLo := (14850000000000001 / 20000000000000000 : ℚ)
  oldHi := (14870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1718, piece_1719]
}

def cell_8038 : Cell := { cellDefaults with
  domain := ⟨(6156250000000001 / 20000000000000000 : ℚ), (6157500000000001 / 20000000000000000 : ℚ)⟩
  r := (79575473929811 / 100000000000000 : ℚ)
  w := (4320721639131 / 2500000000000 : ℚ)
  center := (6156875000000001 / 20000000000000000 : ℚ)
  supportValue := (3712979906412991 / 5000000000000000 : ℚ)
  supportSlope := (-2859902475437437 / 500000000000000 : ℚ)
  oldCenter := (3712979906412991 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_769
  oldLo := (74199999999999999 / 100000000000000000 : ℚ)
  oldHi := (74299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1717, piece_1718]
}

def cell_8039 : Cell := { cellDefaults with
  domain := ⟨(6157500000000001 / 20000000000000000 : ℚ), (6158750000000001 / 20000000000000000 : ℚ)⟩
  r := (79575473929811 / 100000000000000 : ℚ)
  w := (4320721639131 / 2500000000000 : ℚ)
  center := (6158125000000001 / 20000000000000000 : ℚ)
  supportValue := (742238094608153 / 1000000000000000 : ℚ)
  supportSlope := (-5715820572429919 / 1000000000000000 : ℚ)
  oldCenter := (742238094608153 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_769
  oldLo := (74199999999999999 / 100000000000000000 : ℚ)
  oldHi := (14850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1717]
}

def cell_8040 : Cell := { cellDefaults with
  domain := ⟨(6158750000000001 / 20000000000000000 : ℚ), (6160000000000001 / 20000000000000000 : ℚ)⟩
  r := (79575473929811 / 100000000000000 : ℚ)
  w := (4320721639131 / 2500000000000 : ℚ)
  center := (6159375000000001 / 20000000000000000 : ℚ)
  supportValue := (7418815009332831 / 10000000000000000 : ℚ)
  supportSlope := (-89247987294927 / 15625000000000 : ℚ)
  oldCenter := (7418815009332831 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_769
  oldLo := (14830000000000001 / 20000000000000000 : ℚ)
  oldHi := (14850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1716, piece_1717]
}

def cell_8041 : Cell := { cellDefaults with
  domain := ⟨(6160000000000001 / 20000000000000000 : ℚ), (49290000000000007 / 160000000000000000 : ℚ)⟩
  r := (79514196704909 / 100000000000000 : ℚ)
  w := (17272908464079 / 10000000000000 : ℚ)
  center := (19714000000000003 / 64000000000000000 : ℚ)
  supportValue := (58042576621601 / 78125000000000 : ℚ)
  supportSlope := (-1429916317510803 / 250000000000000 : ℚ)
  oldCenter := (58042576621601 / 78125000000000 : ℚ)
  newCoefficients := coefficients_770
  oldLo := (14850000000000001 / 20000000000000000 : ℚ)
  oldHi := (14870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1718, piece_1719]
}

def cell_8042 : Cell := { cellDefaults with
  domain := ⟨(49290000000000007 / 160000000000000000 : ℚ), (24650000000000003 / 80000000000000000 : ℚ)⟩
  r := (79514196704909 / 100000000000000 : ℚ)
  w := (17272908464079 / 10000000000000 : ℚ)
  center := (98590000000000013 / 320000000000000000 : ℚ)
  supportValue := (1485176293605833 / 2000000000000000 : ℚ)
  supportSlope := (-1428902451848267 / 250000000000000 : ℚ)
  oldCenter := (1485176293605833 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_770
  oldLo := (74199999999999999 / 100000000000000000 : ℚ)
  oldHi := (74299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1717, piece_1718]
}

def cell_8043 : Cell := { cellDefaults with
  domain := ⟨(24650000000000003 / 80000000000000000 : ℚ), (9862000000000001 / 32000000000000000 : ℚ)⟩
  r := (79514196704909 / 100000000000000 : ℚ)
  w := (17272908464079 / 10000000000000 : ℚ)
  center := (98610000000000011 / 320000000000000000 : ℚ)
  supportValue := (927788152521963 / 1250000000000000 : ℚ)
  supportSlope := (-571162520509873 / 100000000000000 : ℚ)
  oldCenter := (927788152521963 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_770
  oldLo := (74199999999999999 / 100000000000000000 : ℚ)
  oldHi := (14850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1717]
}

def cell_8044 : Cell := { cellDefaults with
  domain := ⟨(9862000000000001 / 32000000000000000 : ℚ), (12330000000000001 / 40000000000000000 : ℚ)⟩
  r := (79514196704909 / 100000000000000 : ℚ)
  w := (17272908464079 / 10000000000000 : ℚ)
  center := (98630000000000009 / 320000000000000000 : ℚ)
  supportValue := (7418741896155423 / 10000000000000000 : ℚ)
  supportSlope := (-2853847870550937 / 500000000000000 : ℚ)
  oldCenter := (7418741896155423 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_770
  oldLo := (14830000000000001 / 20000000000000000 : ℚ)
  oldHi := (14850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1716, piece_1717]
}

def cell_8045 : Cell := { cellDefaults with
  domain := ⟨(12330000000000001 / 40000000000000000 : ℚ), (49330000000000003 / 160000000000000000 : ℚ)⟩
  r := (79514196704909 / 100000000000000 : ℚ)
  w := (17272908464079 / 10000000000000 : ℚ)
  center := (98650000000000007 / 320000000000000000 : ℚ)
  supportValue := (7415170703337213 / 10000000000000000 : ℚ)
  supportSlope := (-11407293776103419 / 2000000000000000 : ℚ)
  oldCenter := (7415170703337213 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_770
  oldLo := (74099999999999999 / 100000000000000000 : ℚ)
  oldHi := (74199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1715, piece_1716]
}

def cell_8046 : Cell := { cellDefaults with
  domain := ⟨(49330000000000003 / 160000000000000000 : ℚ), (24670000000000001 / 80000000000000000 : ℚ)⟩
  r := (79514196704909 / 100000000000000 : ℚ)
  w := (17272908464079 / 10000000000000 : ℚ)
  center := (19734000000000001 / 64000000000000000 : ℚ)
  supportValue := (1482322463215677 / 2000000000000000 : ℚ)
  supportSlope := (-5699599839961281 / 1000000000000000 : ℚ)
  oldCenter := (1482322463215677 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_770
  oldLo := (14810000000000001 / 20000000000000000 : ℚ)
  oldHi := (14830000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1714, piece_1715]
}

def cell_8047 : Cell := { cellDefaults with
  domain := ⟨(24670000000000001 / 80000000000000000 : ℚ), (49350000000000001 / 160000000000000000 : ℚ)⟩
  r := (79514196704909 / 100000000000000 : ℚ)
  w := (17272908464079 / 10000000000000 : ℚ)
  center := (98690000000000003 / 320000000000000000 : ℚ)
  supportValue := (7408046081034287 / 10000000000000000 : ℚ)
  supportSlope := (-56957238594363 / 10000000000000 : ℚ)
  oldCenter := (7408046081034287 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_770
  oldLo := (14810000000000001 / 20000000000000000 : ℚ)
  oldHi := (74099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1714]
}

def cell_8048 : Cell := { cellDefaults with
  domain := ⟨(49350000000000001 / 160000000000000000 : ℚ), (617 / 2000 : ℚ)⟩
  r := (79514196704909 / 100000000000000 : ℚ)
  w := (17272908464079 / 10000000000000 : ℚ)
  center := (98710000000000001 / 320000000000000000 : ℚ)
  supportValue := (3702243780723617 / 5000000000000000 : ℚ)
  supportSlope := (-1138341026013137 / 200000000000000 : ℚ)
  oldCenter := (3702243780723617 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_770
  oldLo := (7400558659217877 / 10000000000000000 : ℚ)
  oldHi := (74099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1713, piece_1714]
}

def cell_8049 : Cell := { cellDefaults with
  domain := ⟨(617 / 2000 : ℚ), (30857960893854747 / 100000000000000000 : ℚ)⟩
  r := (15890606475229 / 20000000000000 : ℚ)
  w := (4315737582303 / 2500000000000 : ℚ)
  center := (61707960893854747 / 200000000000000000 : ℚ)
  supportValue := (7414613353921081 / 10000000000000000 : ℚ)
  supportSlope := (-712365799090469 / 125000000000000 : ℚ)
  oldCenter := (7414613353921081 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_771
  oldLo := (74099999999999999 / 100000000000000000 : ℚ)
  oldHi := (74199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1715, piece_1716]
}

theorem check_8000 : cell_8000.check = true := by
  decide +kernel

theorem check_8001 : cell_8001.check = true := by
  decide +kernel

theorem check_8002 : cell_8002.check = true := by
  decide +kernel

theorem check_8003 : cell_8003.check = true := by
  decide +kernel

theorem check_8004 : cell_8004.check = true := by
  decide +kernel

theorem check_8005 : cell_8005.check = true := by
  decide +kernel

theorem check_8006 : cell_8006.check = true := by
  decide +kernel

theorem check_8007 : cell_8007.check = true := by
  decide +kernel

theorem check_8008 : cell_8008.check = true := by
  decide +kernel

theorem check_8009 : cell_8009.check = true := by
  decide +kernel

theorem check_8010 : cell_8010.check = true := by
  decide +kernel

theorem check_8011 : cell_8011.check = true := by
  decide +kernel

theorem check_8012 : cell_8012.check = true := by
  decide +kernel

theorem check_8013 : cell_8013.check = true := by
  decide +kernel

theorem check_8014 : cell_8014.check = true := by
  decide +kernel

theorem check_8015 : cell_8015.check = true := by
  decide +kernel

theorem check_8016 : cell_8016.check = true := by
  decide +kernel

theorem check_8017 : cell_8017.check = true := by
  decide +kernel

theorem check_8018 : cell_8018.check = true := by
  decide +kernel

theorem check_8019 : cell_8019.check = true := by
  decide +kernel

theorem check_8020 : cell_8020.check = true := by
  decide +kernel

theorem check_8021 : cell_8021.check = true := by
  decide +kernel

theorem check_8022 : cell_8022.check = true := by
  decide +kernel

theorem check_8023 : cell_8023.check = true := by
  decide +kernel

theorem check_8024 : cell_8024.check = true := by
  decide +kernel

theorem check_8025 : cell_8025.check = true := by
  decide +kernel

theorem check_8026 : cell_8026.check = true := by
  decide +kernel

theorem check_8027 : cell_8027.check = true := by
  decide +kernel

theorem check_8028 : cell_8028.check = true := by
  decide +kernel

theorem check_8029 : cell_8029.check = true := by
  decide +kernel

theorem check_8030 : cell_8030.check = true := by
  decide +kernel

theorem check_8031 : cell_8031.check = true := by
  decide +kernel

theorem check_8032 : cell_8032.check = true := by
  decide +kernel

theorem check_8033 : cell_8033.check = true := by
  decide +kernel

theorem check_8034 : cell_8034.check = true := by
  decide +kernel

theorem check_8035 : cell_8035.check = true := by
  decide +kernel

theorem check_8036 : cell_8036.check = true := by
  decide +kernel

theorem check_8037 : cell_8037.check = true := by
  decide +kernel

theorem check_8038 : cell_8038.check = true := by
  decide +kernel

theorem check_8039 : cell_8039.check = true := by
  decide +kernel

theorem check_8040 : cell_8040.check = true := by
  decide +kernel

theorem check_8041 : cell_8041.check = true := by
  decide +kernel

theorem check_8042 : cell_8042.check = true := by
  decide +kernel

theorem check_8043 : cell_8043.check = true := by
  decide +kernel

theorem check_8044 : cell_8044.check = true := by
  decide +kernel

theorem check_8045 : cell_8045.check = true := by
  decide +kernel

theorem check_8046 : cell_8046.check = true := by
  decide +kernel

theorem check_8047 : cell_8047.check = true := by
  decide +kernel

theorem check_8048 : cell_8048.check = true := by
  decide +kernel

theorem check_8049 : cell_8049.check = true := by
  decide +kernel

def cells : List Cell := [cell_8000, cell_8001, cell_8002, cell_8003, cell_8004, cell_8005, cell_8006, cell_8007, cell_8008, cell_8009, cell_8010, cell_8011, cell_8012, cell_8013, cell_8014, cell_8015, cell_8016, cell_8017, cell_8018, cell_8019, cell_8020, cell_8021, cell_8022, cell_8023, cell_8024, cell_8025, cell_8026, cell_8027, cell_8028, cell_8029, cell_8030, cell_8031, cell_8032, cell_8033, cell_8034, cell_8035, cell_8036, cell_8037, cell_8038, cell_8039, cell_8040, cell_8041, cell_8042, cell_8043, cell_8044, cell_8045, cell_8046, cell_8047, cell_8048, cell_8049]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8000, check_8001, check_8002, check_8003, check_8004, check_8005, check_8006, check_8007, check_8008, check_8009, check_8010, check_8011, check_8012, check_8013, check_8014, check_8015, check_8016, check_8017, check_8018, check_8019, check_8020, check_8021, check_8022, check_8023, check_8024, check_8025, check_8026, check_8027, check_8028, check_8029, check_8030, check_8031, check_8032, check_8033, check_8034, check_8035, check_8036, check_8037, check_8038, check_8039, check_8040, check_8041, check_8042, check_8043, check_8044, check_8045, check_8046, check_8047, check_8048, check_8049, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0160

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0160
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0160
open AnalyticBounds.ExpressionCertificate

theorem linked_8000 : Linked cell_8000 pieces := by
  refine ⟨piece_764,piece_764_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8000,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1731_mem
    · exact piece_1732_mem

theorem linked_8001 : Linked cell_8001 pieces := by
  refine ⟨piece_765,piece_765_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8001,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1734_mem

theorem linked_8002 : Linked cell_8002 pieces := by
  refine ⟨piece_765,piece_765_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8002,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1733_mem
    · exact piece_1734_mem

theorem linked_8003 : Linked cell_8003 pieces := by
  refine ⟨piece_765,piece_765_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8003,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1732_mem
    · exact piece_1733_mem

theorem linked_8004 : Linked cell_8004 pieces := by
  refine ⟨piece_765,piece_765_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8004,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1731_mem
    · exact piece_1732_mem

theorem linked_8005 : Linked cell_8005 pieces := by
  refine ⟨piece_765,piece_765_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8005,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1731_mem

theorem linked_8006 : Linked cell_8006 pieces := by
  refine ⟨piece_765,piece_765_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8006,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1730_mem
    · exact piece_1731_mem

theorem linked_8007 : Linked cell_8007 pieces := by
  refine ⟨piece_765,piece_765_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8007,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1729_mem
    · exact piece_1730_mem

theorem linked_8008 : Linked cell_8008 pieces := by
  refine ⟨piece_765,piece_765_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8008,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1728_mem
    · exact piece_1729_mem

theorem linked_8009 : Linked cell_8009 pieces := by
  refine ⟨piece_766,piece_766_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8009,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1731_mem

theorem linked_8010 : Linked cell_8010 pieces := by
  refine ⟨piece_766,piece_766_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8010,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1730_mem
    · exact piece_1731_mem

theorem linked_8011 : Linked cell_8011 pieces := by
  refine ⟨piece_766,piece_766_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8011,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1729_mem
    · exact piece_1730_mem

theorem linked_8012 : Linked cell_8012 pieces := by
  refine ⟨piece_766,piece_766_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8012,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1728_mem
    · exact piece_1729_mem

theorem linked_8013 : Linked cell_8013 pieces := by
  refine ⟨piece_766,piece_766_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8013,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1728_mem

theorem linked_8014 : Linked cell_8014 pieces := by
  refine ⟨piece_766,piece_766_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8014,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1727_mem
    · exact piece_1728_mem

theorem linked_8015 : Linked cell_8015 pieces := by
  refine ⟨piece_766,piece_766_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8015,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1726_mem
    · exact piece_1727_mem

theorem linked_8016 : Linked cell_8016 pieces := by
  refine ⟨piece_766,piece_766_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8016,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1726_mem

theorem linked_8017 : Linked cell_8017 pieces := by
  refine ⟨piece_767,piece_767_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8017,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1728_mem

theorem linked_8018 : Linked cell_8018 pieces := by
  refine ⟨piece_767,piece_767_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8018,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1727_mem
    · exact piece_1728_mem

theorem linked_8019 : Linked cell_8019 pieces := by
  refine ⟨piece_767,piece_767_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8019,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1726_mem
    · exact piece_1727_mem

theorem linked_8020 : Linked cell_8020 pieces := by
  refine ⟨piece_767,piece_767_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8020,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1726_mem

theorem linked_8021 : Linked cell_8021 pieces := by
  refine ⟨piece_767,piece_767_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8021,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1725_mem
    · exact piece_1726_mem

theorem linked_8022 : Linked cell_8022 pieces := by
  refine ⟨piece_767,piece_767_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8022,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1723_mem
    · exact piece_1724_mem
    · exact piece_1725_mem

theorem linked_8023 : Linked cell_8023 pieces := by
  refine ⟨piece_767,piece_767_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8023,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1722_mem
    · exact piece_1723_mem

theorem linked_8024 : Linked cell_8024 pieces := by
  refine ⟨piece_767,piece_767_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8024,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1722_mem

theorem linked_8025 : Linked cell_8025 pieces := by
  refine ⟨piece_768,piece_768_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8025,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1725_mem
    · exact piece_1726_mem

theorem linked_8026 : Linked cell_8026 pieces := by
  refine ⟨piece_768,piece_768_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8026,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1723_mem
    · exact piece_1724_mem
    · exact piece_1725_mem

theorem linked_8027 : Linked cell_8027 pieces := by
  refine ⟨piece_768,piece_768_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8027,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1722_mem
    · exact piece_1723_mem

theorem linked_8028 : Linked cell_8028 pieces := by
  refine ⟨piece_768,piece_768_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8028,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1722_mem

theorem linked_8029 : Linked cell_8029 pieces := by
  refine ⟨piece_768,piece_768_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8029,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1721_mem
    · exact piece_1722_mem

theorem linked_8030 : Linked cell_8030 pieces := by
  refine ⟨piece_768,piece_768_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8030,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1720_mem
    · exact piece_1721_mem

theorem linked_8031 : Linked cell_8031 pieces := by
  refine ⟨piece_768,piece_768_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8031,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1719_mem
    · exact piece_1720_mem

theorem linked_8032 : Linked cell_8032 pieces := by
  refine ⟨piece_768,piece_768_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8032,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1719_mem

theorem linked_8033 : Linked cell_8033 pieces := by
  refine ⟨piece_769,piece_769_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8033,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1721_mem
    · exact piece_1722_mem

theorem linked_8034 : Linked cell_8034 pieces := by
  refine ⟨piece_769,piece_769_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8034,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1720_mem
    · exact piece_1721_mem

theorem linked_8035 : Linked cell_8035 pieces := by
  refine ⟨piece_769,piece_769_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8035,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1719_mem
    · exact piece_1720_mem

theorem linked_8036 : Linked cell_8036 pieces := by
  refine ⟨piece_769,piece_769_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8036,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1719_mem

theorem linked_8037 : Linked cell_8037 pieces := by
  refine ⟨piece_769,piece_769_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8037,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1718_mem
    · exact piece_1719_mem

theorem linked_8038 : Linked cell_8038 pieces := by
  refine ⟨piece_769,piece_769_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8038,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1717_mem
    · exact piece_1718_mem

theorem linked_8039 : Linked cell_8039 pieces := by
  refine ⟨piece_769,piece_769_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8039,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1717_mem

theorem linked_8040 : Linked cell_8040 pieces := by
  refine ⟨piece_769,piece_769_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8040,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1716_mem
    · exact piece_1717_mem

theorem linked_8041 : Linked cell_8041 pieces := by
  refine ⟨piece_770,piece_770_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8041,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1718_mem
    · exact piece_1719_mem

theorem linked_8042 : Linked cell_8042 pieces := by
  refine ⟨piece_770,piece_770_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8042,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1717_mem
    · exact piece_1718_mem

theorem linked_8043 : Linked cell_8043 pieces := by
  refine ⟨piece_770,piece_770_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8043,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1717_mem

theorem linked_8044 : Linked cell_8044 pieces := by
  refine ⟨piece_770,piece_770_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8044,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1716_mem
    · exact piece_1717_mem

theorem linked_8045 : Linked cell_8045 pieces := by
  refine ⟨piece_770,piece_770_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8045,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1715_mem
    · exact piece_1716_mem

theorem linked_8046 : Linked cell_8046 pieces := by
  refine ⟨piece_770,piece_770_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8046,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1714_mem
    · exact piece_1715_mem

theorem linked_8047 : Linked cell_8047 pieces := by
  refine ⟨piece_770,piece_770_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8047,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1714_mem

theorem linked_8048 : Linked cell_8048 pieces := by
  refine ⟨piece_770,piece_770_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8048,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1713_mem
    · exact piece_1714_mem

theorem linked_8049 : Linked cell_8049 pieces := by
  refine ⟨piece_771,piece_771_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8049,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1715_mem
    · exact piece_1716_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0160.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0160.cells,List.forall_mem_cons]
  exact ⟨linked_8000, linked_8001, linked_8002, linked_8003, linked_8004, linked_8005, linked_8006, linked_8007, linked_8008, linked_8009, linked_8010, linked_8011, linked_8012, linked_8013, linked_8014, linked_8015, linked_8016, linked_8017, linked_8018, linked_8019, linked_8020, linked_8021, linked_8022, linked_8023, linked_8024, linked_8025, linked_8026, linked_8027, linked_8028, linked_8029, linked_8030, linked_8031, linked_8032, linked_8033, linked_8034, linked_8035, linked_8036, linked_8037, linked_8038, linked_8039, linked_8040, linked_8041, linked_8042, linked_8043, linked_8044, linked_8045, linked_8046, linked_8047, linked_8048, linked_8049, by simp⟩

theorem covered : covers (6108750000000001 / 20000000000000000 : ℚ) (30857960893854747 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0160.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0160
