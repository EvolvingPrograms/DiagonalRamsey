import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0134
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(3543 / 16000 : ℚ), (443 / 2000 : ℚ)⟩
  branch := .right
  r := (21464611689727 / 25000000000000 : ℚ)
  w := (321235386537 / 312500000000 : ℚ)
  center := (7087 / 32000 : ℚ)
  supportValue := (1697557562558599 / 2000000000000000 : ℚ)
  supportSlope := (180598816771127 / 31250000000000 : ℚ)
  oldCenter := (1697557562558599 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_582
  oldLo := (21387500000000001 / 25000000000000000 : ℚ)
  oldHi := (42699999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1954, piece_1955]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_6700 : Cell := { cellDefaults with
  r := (17186693181643 / 20000000000000 : ℚ)
  w := (2569192168533 / 2500000000000 : ℚ)
  newCoefficients := coefficients_581
  oldLo := (84850000000000003 / 100000000000000000 : ℚ)
  oldHi := (84900000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1949]
}

def cell_6701 : Cell := { cellDefaults with
  domain := ⟨(443 / 2000 : ℚ), (709 / 3200 : ℚ)⟩
  center := (7089 / 32000 : ℚ)
  supportValue := (8486128263973481 / 10000000000000000 : ℚ)
  supportSlope := (5775419169282259 / 1000000000000000 : ℚ)
  oldCenter := (8486128263973481 / 10000000000000000 : ℚ)
  oldLo := (84800000000000009 / 100000000000000000 : ℚ)
  oldHi := (84900000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1948, piece_1949]
}

def cell_6702 : Cell := { cellDefaults with
  domain := ⟨(709 / 3200 : ℚ), (1773 / 8000 : ℚ)⟩
  center := (7091 / 32000 : ℚ)
  supportValue := (8489738483223929 / 10000000000000000 : ℚ)
  supportSlope := (1155398537493113 / 200000000000000 : ℚ)
  oldCenter := (8489738483223929 / 10000000000000000 : ℚ)
  oldLo := (84850000000000003 / 100000000000000000 : ℚ)
  oldHi := (84950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1949, piece_1950]
}

def cell_6703 : Cell := { cellDefaults with
  domain := ⟨(1773 / 8000 : ℚ), (3547 / 16000 : ℚ)⟩
  center := (7093 / 32000 : ℚ)
  supportValue := (4246674723883343 / 5000000000000000 : ℚ)
  supportSlope := (5778564834146849 / 1000000000000000 : ℚ)
  oldCenter := (4246674723883343 / 5000000000000000 : ℚ)
  oldLo := (84900000000000009 / 100000000000000000 : ℚ)
  oldHi := (85000000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1950, piece_1951]
}

def cell_6704 : Cell := { cellDefaults with
  domain := ⟨(3547 / 16000 : ℚ), (887 / 4000 : ℚ)⟩
  center := (1419 / 6400 : ℚ)
  supportValue := (2124240348857659 / 2500000000000000 : ℚ)
  supportSlope := (28898618100532403 / 5000000000000000 : ℚ)
  oldCenter := (2124240348857659 / 2500000000000000 : ℚ)
  oldLo := (84950000000000003 / 100000000000000000 : ℚ)
  oldHi := (85000000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1951]
}

def cell_6705 : Cell := { cellDefaults with
  domain := ⟨(887 / 4000 : ℚ), (3549 / 16000 : ℚ)⟩
  center := (7097 / 32000 : ℚ)
  supportValue := (2125143581346069 / 2500000000000000 : ℚ)
  supportSlope := (1156248599274079 / 200000000000000 : ℚ)
  oldCenter := (2125143581346069 / 2500000000000000 : ℚ)
  oldLo := (84950000000000003 / 100000000000000000 : ℚ)
  oldHi := (85050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1951, piece_1952]
}

def cell_6706 : Cell := { cellDefaults with
  domain := ⟨(3549 / 16000 : ℚ), (71 / 320 : ℚ)⟩
  center := (7099 / 32000 : ℚ)
  supportValue := (8504188067581187 / 10000000000000000 : ℚ)
  supportSlope := (1156562832980157 / 200000000000000 : ℚ)
  oldCenter := (8504188067581187 / 10000000000000000 : ℚ)
  oldLo := (85000000000000009 / 100000000000000000 : ℚ)
  oldHi := (340268156424581 / 400000000000000 : ℚ)
  oldPieces := [piece_1952, piece_1953]
}

def cell_6707 : Cell := { cellDefaults with
  domain := ⟨(71 / 320 : ℚ), (3551 / 16000 : ℚ)⟩
  center := (7101 / 32000 : ℚ)
  supportValue := (8507802671189527 / 10000000000000000 : ℚ)
  supportSlope := (462740336522387 / 80000000000000 : ℚ)
  oldCenter := (8507802671189527 / 10000000000000000 : ℚ)
  oldLo := (85050000000000003 / 100000000000000000 : ℚ)
  oldHi := (85100000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1953, piece_1954]
}

def cell_6708 : Cell := { cellDefaults with
  domain := ⟨(3551 / 16000 : ℚ), (111 / 500 : ℚ)⟩
  center := (7103 / 32000 : ℚ)
  supportValue := (4255709128070777 / 5000000000000000 : ℚ)
  supportSlope := (231419656944567 / 40000000000000 : ℚ)
  oldCenter := (4255709128070777 / 5000000000000000 : ℚ)
  oldLo := (340268156424581 / 400000000000000 : ℚ)
  oldHi := (85150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1954, piece_1955]
}

def cell_6709 : Cell := { cellDefaults with
  domain := ⟨(111 / 500 : ℚ), (3553 / 16000 : ℚ)⟩
  r := (2680737170517 / 3125000000000 : ℚ)
  w := (2056459322971 / 2000000000000 : ℚ)
  center := (1421 / 6400 : ℚ)
  supportValue := (8509750931443041 / 10000000000000000 : ℚ)
  supportSlope := (11564154631731327 / 2000000000000000 : ℚ)
  oldCenter := (8509750931443041 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_583
  oldLo := (340268156424581 / 400000000000000 : ℚ)
  oldHi := (85150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1954, piece_1955]
}

def cell_6710 : Cell := { cellDefaults with
  domain := ⟨(3553 / 16000 : ℚ), (1777 / 8000 : ℚ)⟩
  r := (2680737170517 / 3125000000000 : ℚ)
  w := (2056459322971 / 2000000000000 : ℚ)
  center := (7107 / 32000 : ℚ)
  supportValue := (8513365074312941 / 10000000000000000 : ℚ)
  supportSlope := (7229557402532727 / 1250000000000000 : ℚ)
  oldCenter := (8513365074312941 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_583
  oldLo := (85100000000000009 / 100000000000000000 : ℚ)
  oldHi := (85200000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1955, piece_1956]
}

def cell_6711 : Cell := { cellDefaults with
  domain := ⟨(1777 / 8000 : ℚ), (711 / 3200 : ℚ)⟩
  r := (2680737170517 / 3125000000000 : ℚ)
  w := (2056459322971 / 2000000000000 : ℚ)
  center := (7109 / 32000 : ℚ)
  supportValue := (851698019808611 / 1000000000000000 : ℚ)
  supportSlope := (5784811374969223 / 1000000000000000 : ℚ)
  oldCenter := (851698019808611 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_583
  oldLo := (85150000000000003 / 100000000000000000 : ℚ)
  oldHi := (85200000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1956]
}

def cell_6712 : Cell := { cellDefaults with
  domain := ⟨(711 / 3200 : ℚ), (889 / 4000 : ℚ)⟩
  r := (2680737170517 / 3125000000000 : ℚ)
  w := (2056459322971 / 2000000000000 : ℚ)
  center := (7111 / 32000 : ℚ)
  supportValue := (8520596301929789 / 10000000000000000 : ℚ)
  supportSlope := (1157264387472523 / 200000000000000 : ℚ)
  oldCenter := (8520596301929789 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_583
  oldLo := (85150000000000003 / 100000000000000000 : ℚ)
  oldHi := (21312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1956, piece_1957]
}

def cell_6713 : Cell := { cellDefaults with
  domain := ⟨(889 / 4000 : ℚ), (3557 / 16000 : ℚ)⟩
  r := (2680737170517 / 3125000000000 : ℚ)
  w := (2056459322971 / 2000000000000 : ℚ)
  center := (7113 / 32000 : ℚ)
  supportValue := (8524213222459179 / 10000000000000000 : ℚ)
  supportSlope := (180871548708883 / 31250000000000 : ℚ)
  oldCenter := (8524213222459179 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_583
  oldLo := (85200000000000009 / 100000000000000000 : ℚ)
  oldHi := (42649999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1957, piece_1958]
}

def cell_6714 : Cell := { cellDefaults with
  domain := ⟨(3557 / 16000 : ℚ), (1779 / 8000 : ℚ)⟩
  r := (2680737170517 / 3125000000000 : ℚ)
  w := (2056459322971 / 2000000000000 : ℚ)
  center := (1423 / 6400 : ℚ)
  supportValue := (8527830998754821 / 10000000000000000 : ℚ)
  supportSlope := (5789337637052583 / 1000000000000000 : ℚ)
  oldCenter := (8527830998754821 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_583
  oldLo := (21312500000000001 / 25000000000000000 : ℚ)
  oldHi := (42649999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1958]
}

def cell_6715 : Cell := { cellDefaults with
  domain := ⟨(1779 / 8000 : ℚ), (3559 / 16000 : ℚ)⟩
  r := (2680737170517 / 3125000000000 : ℚ)
  w := (2056459322971 / 2000000000000 : ℚ)
  center := (7117 / 32000 : ℚ)
  supportValue := (2132862438624823 / 2500000000000000 : ℚ)
  supportSlope := (1447641344295647 / 250000000000000 : ℚ)
  oldCenter := (2132862438624823 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_583
  oldLo := (21312500000000001 / 25000000000000000 : ℚ)
  oldHi := (21337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1958, piece_1959]
}

def cell_6716 : Cell := { cellDefaults with
  domain := ⟨(3559 / 16000 : ℚ), (89 / 400 : ℚ)⟩
  r := (2680737170517 / 3125000000000 : ℚ)
  w := (2056459322971 / 2000000000000 : ℚ)
  center := (7119 / 32000 : ℚ)
  supportValue := (8535069488865201 / 10000000000000000 : ℚ)
  supportSlope := (5792131997660377 / 1000000000000000 : ℚ)
  oldCenter := (8535069488865201 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_583
  oldLo := (42649999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1959, piece_1960]
}

def cell_6717 : Cell := { cellDefaults with
  domain := ⟨(89 / 400 : ℚ), (3561 / 16000 : ℚ)⟩
  r := (3428355761977 / 4000000000000 : ℚ)
  w := (1285632620883 / 1250000000000 : ℚ)
  center := (7121 / 32000 : ℚ)
  supportValue := (341335759260599 / 400000000000000 : ℚ)
  supportSlope := (2894357077369847 / 500000000000000 : ℚ)
  oldCenter := (341335759260599 / 400000000000000 : ℚ)
  newCoefficients := coefficients_584
  oldLo := (42649999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1959, piece_1960]
}

def cell_6718 : Cell := { cellDefaults with
  domain := ⟨(3561 / 16000 : ℚ), (1781 / 8000 : ℚ)⟩
  r := (3428355761977 / 4000000000000 : ℚ)
  w := (1285632620883 / 1250000000000 : ℚ)
  center := (7123 / 32000 : ℚ)
  supportValue := (2134253068339123 / 2500000000000000 : ℚ)
  supportSlope := (2894945284728223 / 500000000000000 : ℚ)
  oldCenter := (2134253068339123 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_584
  oldLo := (21337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1960]
}

def cell_6719 : Cell := { cellDefaults with
  domain := ⟨(1781 / 8000 : ℚ), (3563 / 16000 : ℚ)⟩
  r := (3428355761977 / 4000000000000 : ℚ)
  w := (1285632620883 / 1250000000000 : ℚ)
  center := (57 / 256 : ℚ)
  supportValue := (8540631543072797 / 10000000000000000 : ℚ)
  supportSlope := (5791388016321619 / 1000000000000000 : ℚ)
  oldCenter := (8540631543072797 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_584
  oldLo := (21337500000000001 / 25000000000000000 : ℚ)
  oldHi := (21362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1960, piece_1961]
}

def cell_6720 : Cell := { cellDefaults with
  domain := ⟨(3563 / 16000 : ℚ), (891 / 4000 : ℚ)⟩
  r := (3428355761977 / 4000000000000 : ℚ)
  w := (1285632620883 / 1250000000000 : ℚ)
  center := (7127 / 32000 : ℚ)
  supportValue := (427212581827907 / 500000000000000 : ℚ)
  supportSlope := (579295214867237 / 100000000000000 : ℚ)
  oldCenter := (427212581827907 / 500000000000000 : ℚ)
  newCoefficients := coefficients_584
  oldLo := (42699999999999999 / 50000000000000000 : ℚ)
  oldHi := (42749999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1961, piece_1962]
}

def cell_6721 : Cell := { cellDefaults with
  domain := ⟨(891 / 4000 : ℚ), (713 / 3200 : ℚ)⟩
  r := (3428355761977 / 4000000000000 : ℚ)
  w := (1285632620883 / 1250000000000 : ℚ)
  center := (7129 / 32000 : ℚ)
  supportValue := (8547872577397689 / 10000000000000000 : ℚ)
  supportSlope := (5794411926304477 / 1000000000000000 : ℚ)
  oldCenter := (8547872577397689 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_584
  oldLo := (21362500000000001 / 25000000000000000 : ℚ)
  oldHi := (42749999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1962]
}

def cell_6722 : Cell := { cellDefaults with
  domain := ⟨(713 / 3200 : ℚ), (1783 / 8000 : ℚ)⟩
  r := (3428355761977 / 4000000000000 : ℚ)
  w := (1285632620883 / 1250000000000 : ℚ)
  center := (7131 / 32000 : ℚ)
  supportValue := (8551494495518069 / 10000000000000000 : ℚ)
  supportSlope := (362226616289707 / 62500000000000 : ℚ)
  oldCenter := (8551494495518069 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_584
  oldLo := (21362500000000001 / 25000000000000000 : ℚ)
  oldHi := (21387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1962, piece_1963]
}

def cell_6723 : Cell := { cellDefaults with
  domain := ⟨(1783 / 8000 : ℚ), (3567 / 16000 : ℚ)⟩
  r := (3428355761977 / 4000000000000 : ℚ)
  w := (1285632620883 / 1250000000000 : ℚ)
  center := (7133 / 32000 : ℚ)
  supportValue := (4277558695053497 / 5000000000000000 : ℚ)
  supportSlope := (5797189033890149 / 1000000000000000 : ℚ)
  oldCenter := (4277558695053497 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_584
  oldLo := (42749999999999999 / 50000000000000000 : ℚ)
  oldHi := (42799999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1963, piece_1964]
}

def cell_6724 : Cell := { cellDefaults with
  domain := ⟨(3567 / 16000 : ℚ), (223 / 1000 : ℚ)⟩
  r := (3428355761977 / 4000000000000 : ℚ)
  w := (1285632620883 / 1250000000000 : ℚ)
  center := (1427 / 6400 : ℚ)
  supportValue := (4279370501905923 / 5000000000000000 : ℚ)
  supportSlope := (2319500360383131 / 400000000000000 : ℚ)
  oldCenter := (4279370501905923 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_584
  oldHi := (8562011173184357 / 10000000000000000 : ℚ)
  oldPieces := [piece_1964, piece_1965]
}

def cell_6725 : Cell := { cellDefaults with
  domain := ⟨(223 / 1000 : ℚ), (3569 / 16000 : ℚ)⟩
  r := (42817179992731 / 50000000000000 : ℚ)
  w := (2057565105877 / 2000000000000 : ℚ)
  center := (7137 / 32000 : ℚ)
  supportValue := (42785288188933 / 50000000000000 : ℚ)
  supportSlope := (2897480300286581 / 500000000000000 : ℚ)
  oldCenter := (42785288188933 / 50000000000000 : ℚ)
  newCoefficients := coefficients_585
  oldHi := (42799999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1964]
}

def cell_6726 : Cell := { cellDefaults with
  domain := ⟨(3569 / 16000 : ℚ), (357 / 1600 : ℚ)⟩
  r := (42817179992731 / 50000000000000 : ℚ)
  w := (2057565105877 / 2000000000000 : ℚ)
  center := (7139 / 32000 : ℚ)
  supportValue := (8560680065068829 / 10000000000000000 : ℚ)
  supportSlope := (5796440810502901 / 1000000000000000 : ℚ)
  oldCenter := (8560680065068829 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_585
  oldHi := (21412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1964, piece_1965, piece_1966]
}

def cell_6727 : Cell := { cellDefaults with
  domain := ⟨(357 / 1600 : ℚ), (3571 / 16000 : ℚ)⟩
  r := (42817179992731 / 50000000000000 : ℚ)
  w := (2057565105877 / 2000000000000 : ℚ)
  center := (7141 / 32000 : ℚ)
  supportValue := (8564303325815189 / 10000000000000000 : ℚ)
  supportSlope := (5798001526358121 / 1000000000000000 : ℚ)
  oldCenter := (8564303325815189 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_585
  oldLo := (8562011173184357 / 10000000000000000 : ℚ)
  oldHi := (42849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1966, piece_1967]
}

def cell_6728 : Cell := { cellDefaults with
  domain := ⟨(3571 / 16000 : ℚ), (893 / 4000 : ℚ)⟩
  r := (42817179992731 / 50000000000000 : ℚ)
  w := (2057565105877 / 2000000000000 : ℚ)
  center := (7143 / 32000 : ℚ)
  supportValue := (4283963711457887 / 5000000000000000 : ℚ)
  supportSlope := (11598954016015739 / 2000000000000000 : ℚ)
  oldCenter := (4283963711457887 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_585
  oldLo := (21412500000000001 / 25000000000000000 : ℚ)
  oldHi := (42849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1967]
}

def cell_6729 : Cell := { cellDefaults with
  domain := ⟨(893 / 4000 : ℚ), (3573 / 16000 : ℚ)⟩
  r := (42817179992731 / 50000000000000 : ℚ)
  w := (2057565105877 / 2000000000000 : ℚ)
  center := (1429 / 6400 : ℚ)
  supportValue := (8571552495084783 / 10000000000000000 : ℚ)
  supportSlope := (5800672972831933 / 1000000000000000 : ℚ)
  oldCenter := (8571552495084783 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_585
  oldLo := (21412500000000001 / 25000000000000000 : ℚ)
  oldHi := (21437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1967, piece_1968]
}

def cell_6730 : Cell := { cellDefaults with
  domain := ⟨(3573 / 16000 : ℚ), (1787 / 8000 : ℚ)⟩
  r := (42817179992731 / 50000000000000 : ℚ)
  w := (2057565105877 / 2000000000000 : ℚ)
  center := (7147 / 32000 : ℚ)
  supportValue := (2143794635375103 / 2500000000000000 : ℚ)
  supportSlope := (464178607129071 / 80000000000000 : ℚ)
  oldCenter := (2143794635375103 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_585
  oldLo := (42849999999999999 / 50000000000000000 : ℚ)
  oldHi := (42899999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1968, piece_1969]
}

def cell_6731 : Cell := { cellDefaults with
  domain := ⟨(1787 / 8000 : ℚ), (143 / 640 : ℚ)⟩
  r := (42817179992731 / 50000000000000 : ℚ)
  w := (2057565105877 / 2000000000000 : ℚ)
  center := (7149 / 32000 : ℚ)
  supportValue := (4289402660014233 / 5000000000000000 : ℚ)
  supportSlope := (1160758176006027 / 200000000000000 : ℚ)
  oldCenter := (4289402660014233 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_585
  oldLo := (21437500000000001 / 25000000000000000 : ℚ)
  oldHi := (21462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1969, piece_1970]
}

def cell_6732 : Cell := { cellDefaults with
  domain := ⟨(143 / 640 : ℚ), (447 / 2000 : ℚ)⟩
  r := (42817179992731 / 50000000000000 : ℚ)
  w := (2057565105877 / 2000000000000 : ℚ)
  center := (7151 / 32000 : ℚ)
  supportValue := (858243303621779 / 1000000000000000 : ℚ)
  supportSlope := (5805105471683447 / 1000000000000000 : ℚ)
  oldCenter := (858243303621779 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_585
  oldLo := (42899999999999999 / 50000000000000000 : ℚ)
  oldHi := (21462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1970]
}

def cell_6733 : Cell := { cellDefaults with
  domain := ⟨(447 / 2000 : ℚ), (3577 / 16000 : ℚ)⟩
  r := (85559990237737 / 100000000000000 : ℚ)
  w := (2572647744409 / 2500000000000 : ℚ)
  center := (7153 / 32000 : ℚ)
  supportValue := (8580742511244789 / 10000000000000000 : ℚ)
  supportSlope := (1160296096438529 / 200000000000000 : ℚ)
  oldCenter := (8580742511244789 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_586
  oldLo := (21437500000000001 / 25000000000000000 : ℚ)
  oldHi := (21462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1969, piece_1970]
}

def cell_6734 : Cell := { cellDefaults with
  domain := ⟨(3577 / 16000 : ℚ), (1789 / 8000 : ℚ)⟩
  r := (85559990237737 / 100000000000000 : ℚ)
  w := (2572647744409 / 2500000000000 : ℚ)
  center := (1431 / 6400 : ℚ)
  supportValue := (4292184466832679 / 5000000000000000 : ℚ)
  supportSlope := (11606075420850459 / 2000000000000000 : ℚ)
  oldCenter := (4292184466832679 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_586
  oldLo := (42899999999999999 / 50000000000000000 : ℚ)
  oldHi := (85899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1970, piece_1971]
}

def cell_6735 : Cell := { cellDefaults with
  domain := ⟨(1789 / 8000 : ℚ), (3579 / 16000 : ℚ)⟩
  r := (85559990237737 / 100000000000000 : ℚ)
  w := (2572647744409 / 2500000000000 : ℚ)
  center := (7157 / 32000 : ℚ)
  supportValue := (8587996178789463 / 10000000000000000 : ℚ)
  supportSlope := (2902266593144631 / 500000000000000 : ℚ)
  oldCenter := (8587996178789463 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_586
  oldLo := (21462500000000001 / 25000000000000000 : ℚ)
  oldHi := (85899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1971]
}

def cell_6736 : Cell := { cellDefaults with
  domain := ⟨(3579 / 16000 : ℚ), (179 / 800 : ℚ)⟩
  r := (85559990237737 / 100000000000000 : ℚ)
  w := (2572647744409 / 2500000000000 : ℚ)
  center := (7159 / 32000 : ℚ)
  supportValue := (429581219842347 / 500000000000000 : ℚ)
  supportSlope := (226785431491211 / 39062500000000 : ℚ)
  oldCenter := (429581219842347 / 500000000000000 : ℚ)
  newCoefficients := coefficients_586
  oldLo := (21462500000000001 / 25000000000000000 : ℚ)
  oldHi := (21487500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1971, piece_1972]
}

def cell_6737 : Cell := { cellDefaults with
  domain := ⟨(179 / 800 : ℚ), (3581 / 16000 : ℚ)⟩
  r := (85559990237737 / 100000000000000 : ℚ)
  w := (2572647744409 / 2500000000000 : ℚ)
  center := (7161 / 32000 : ℚ)
  supportValue := (1719050717403453 / 2000000000000000 : ℚ)
  supportSlope := (1451815809576651 / 250000000000000 : ℚ)
  oldCenter := (1719050717403453 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_586
  oldLo := (85899999999999999 / 100000000000000000 : ℚ)
  oldHi := (85999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1972, piece_1973]
}

def cell_6738 : Cell := { cellDefaults with
  domain := ⟨(3581 / 16000 : ℚ), (1791 / 8000 : ℚ)⟩
  r := (85559990237737 / 100000000000000 : ℚ)
  w := (2572647744409 / 2500000000000 : ℚ)
  center := (7163 / 32000 : ℚ)
  supportValue := (537430220307231 / 625000000000000 : ℚ)
  supportSlope := (116176363336713 / 20000000000000 : ℚ)
  oldCenter := (537430220307231 / 625000000000000 : ℚ)
  newCoefficients := coefficients_586
  oldLo := (21487500000000001 / 25000000000000000 : ℚ)
  oldHi := (21512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1973, piece_1974]
}

def cell_6739 : Cell := { cellDefaults with
  domain := ⟨(1791 / 8000 : ℚ), (3583 / 16000 : ℚ)⟩
  r := (85559990237737 / 100000000000000 : ℚ)
  w := (2572647744409 / 2500000000000 : ℚ)
  center := (1433 / 6400 : ℚ)
  supportValue := (8602514383556709 / 10000000000000000 : ℚ)
  supportSlope := (2324063173674773 / 400000000000000 : ℚ)
  oldCenter := (8602514383556709 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_586
  oldLo := (85999999999999999 / 100000000000000000 : ℚ)
  oldHi := (21512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1974]
}

def cell_6740 : Cell := { cellDefaults with
  domain := ⟨(3583 / 16000 : ℚ), (28 / 125 : ℚ)⟩
  r := (85559990237737 / 100000000000000 : ℚ)
  w := (2572647744409 / 2500000000000 : ℚ)
  center := (7167 / 32000 : ℚ)
  supportValue := (8606146213737781 / 10000000000000000 : ℚ)
  supportSlope := (5811487631381951 / 1000000000000000 : ℚ)
  oldCenter := (8606146213737781 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_586
  oldLo := (85999999999999999 / 100000000000000000 : ℚ)
  oldHi := (86099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1974, piece_1975]
}

def cell_6741 : Cell := { cellDefaults with
  domain := ⟨(28 / 125 : ℚ), (179250000000000001 / 800000000000000000 : ℚ)⟩
  r := (85485780025923 / 100000000000000 : ℚ)
  w := (102933575039 / 100000000000 : ℚ)
  center := (358450000000000001 / 1600000000000000000 : ℚ)
  supportValue := (8604448141056101 / 10000000000000000 : ℚ)
  supportSlope := (2904030465793403 / 500000000000000 : ℚ)
  oldCenter := (8604448141056101 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_587
  oldLo := (85999999999999999 / 100000000000000000 : ℚ)
  oldHi := (86099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1974, piece_1975]
}

def cell_6742 : Cell := { cellDefaults with
  domain := ⟨(179250000000000001 / 800000000000000000 : ℚ), (89650000000000001 / 400000000000000000 : ℚ)⟩
  r := (85485780025923 / 100000000000000 : ℚ)
  w := (102933575039 / 100000000000 : ℚ)
  center := (358550000000000003 / 1600000000000000000 : ℚ)
  supportValue := (1721615705218719 / 2000000000000000 : ℚ)
  supportSlope := (5809580367161499 / 1000000000000000 : ℚ)
  oldCenter := (1721615705218719 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_587
  oldLo := (21512500000000001 / 25000000000000000 : ℚ)
  oldHi := (86099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1975]
}

def cell_6743 : Cell := { cellDefaults with
  domain := ⟨(89650000000000001 / 400000000000000000 : ℚ), (179350000000000003 / 800000000000000000 : ℚ)⟩
  r := (85485780025923 / 100000000000000 : ℚ)
  w := (102933575039 / 100000000000 : ℚ)
  center := (71730000000000001 / 320000000000000000 : ℚ)
  supportValue := (8611709881923441 / 10000000000000000 : ℚ)
  supportSlope := (5810728126789283 / 1000000000000000 : ℚ)
  oldCenter := (8611709881923441 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_587
  oldLo := (21512500000000001 / 25000000000000000 : ℚ)
  oldHi := (21537500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1975, piece_1976]
}

def cell_6744 : Cell := { cellDefaults with
  domain := ⟨(179350000000000003 / 800000000000000000 : ℚ), (44850000000000001 / 200000000000000000 : ℚ)⟩
  r := (85485780025923 / 100000000000000 : ℚ)
  w := (102933575039 / 100000000000 : ℚ)
  center := (358750000000000007 / 1600000000000000000 : ℚ)
  supportValue := (2153835551938077 / 2500000000000000 : ℚ)
  supportSlope := (1162456185549109 / 200000000000000 : ℚ)
  oldCenter := (2153835551938077 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_587
  oldLo := (86099999999999999 / 100000000000000000 : ℚ)
  oldHi := (861731843575419 / 1000000000000000 : ℚ)
  oldPieces := [piece_1976, piece_1977]
}

def cell_6745 : Cell := { cellDefaults with
  domain := ⟨(44850000000000001 / 200000000000000000 : ℚ), (35890000000000001 / 160000000000000000 : ℚ)⟩
  r := (85485780025923 / 100000000000000 : ℚ)
  w := (102933575039 / 100000000000 : ℚ)
  center := (358850000000000009 / 1600000000000000000 : ℚ)
  supportValue := (4309487649702317 / 5000000000000000 : ℚ)
  supportSlope := (5813832626989307 / 1000000000000000 : ℚ)
  oldCenter := (4309487649702317 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_587
  oldLo := (21537500000000001 / 25000000000000000 : ℚ)
  oldHi := (21562500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1977, piece_1978, piece_1979]
}

def cell_6746 : Cell := { cellDefaults with
  domain := ⟨(35890000000000001 / 160000000000000000 : ℚ), (89750000000000003 / 400000000000000000 : ℚ)⟩
  r := (85485780025923 / 100000000000000 : ℚ)
  w := (102933575039 / 100000000000 : ℚ)
  center := (358950000000000011 / 1600000000000000000 : ℚ)
  supportValue := (1077826161561509 / 1250000000000000 : ℚ)
  supportSlope := (1163040305747719 / 200000000000000 : ℚ)
  oldCenter := (1077826161561509 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_587
  oldLo := (86199999999999999 / 100000000000000000 : ℚ)
  oldHi := (21562500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1979]
}

def cell_6747 : Cell := { cellDefaults with
  domain := ⟨(89750000000000003 / 400000000000000000 : ℚ), (179550000000000007 / 800000000000000000 : ℚ)⟩
  r := (85485780025923 / 100000000000000 : ℚ)
  w := (102933575039 / 100000000000 : ℚ)
  center := (359050000000000013 / 1600000000000000000 : ℚ)
  supportValue := (215656106375147 / 250000000000000 : ℚ)
  supportSlope := (363531249751407 / 62500000000000 : ℚ)
  oldCenter := (215656106375147 / 250000000000000 : ℚ)
  newCoefficients := coefficients_587
  oldLo := (86199999999999999 / 100000000000000000 : ℚ)
  oldHi := (86299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1979, piece_1980]
}

def cell_6748 : Cell := { cellDefaults with
  domain := ⟨(179550000000000007 / 800000000000000000 : ℚ), (22450000000000001 / 100000000000000000 : ℚ)⟩
  r := (85485780025923 / 100000000000000 : ℚ)
  w := (102933575039 / 100000000000 : ℚ)
  center := (71830000000000003 / 320000000000000000 : ℚ)
  supportValue := (8629880162904463 / 10000000000000000 : ℚ)
  supportSlope := (1454512649161159 / 250000000000000 : ℚ)
  oldCenter := (8629880162904463 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_587
  oldLo := (21562500000000001 / 25000000000000000 : ℚ)
  oldHi := (17270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1980, piece_1981]
}

def cell_6749 : Cell := { cellDefaults with
  domain := ⟨(22450000000000001 / 100000000000000000 : ℚ), (22456250000000001 / 100000000000000000 : ℚ)⟩
  r := (85411729746409 / 100000000000000 : ℚ)
  w := (10296124746127 / 10000000000000 : ℚ)
  center := (22453125000000001 / 100000000000000000 : ℚ)
  supportValue := (1725634864221709 / 2000000000000000 : ℚ)
  supportSlope := (1162923719645903 / 200000000000000 : ℚ)
  oldCenter := (1725634864221709 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_588
  oldLo := (21562500000000001 / 25000000000000000 : ℚ)
  oldHi := (86299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1980]
}

theorem check_6700 : SourceCertificateFamily.RightNormalized.check cell_6700 = true := by
  decide +kernel

theorem check_6701 : SourceCertificateFamily.RightNormalized.check cell_6701 = true := by
  decide +kernel

theorem check_6702 : SourceCertificateFamily.RightNormalized.check cell_6702 = true := by
  decide +kernel

theorem check_6703 : SourceCertificateFamily.RightNormalized.check cell_6703 = true := by
  decide +kernel

theorem check_6704 : SourceCertificateFamily.RightNormalized.check cell_6704 = true := by
  decide +kernel

theorem check_6705 : SourceCertificateFamily.RightNormalized.check cell_6705 = true := by
  decide +kernel

theorem check_6706 : SourceCertificateFamily.RightNormalized.check cell_6706 = true := by
  decide +kernel

theorem check_6707 : SourceCertificateFamily.RightNormalized.check cell_6707 = true := by
  decide +kernel

theorem check_6708 : SourceCertificateFamily.RightNormalized.check cell_6708 = true := by
  decide +kernel

theorem check_6709 : SourceCertificateFamily.RightNormalized.check cell_6709 = true := by
  decide +kernel

theorem check_6710 : SourceCertificateFamily.RightNormalized.check cell_6710 = true := by
  decide +kernel

theorem check_6711 : SourceCertificateFamily.RightNormalized.check cell_6711 = true := by
  decide +kernel

theorem check_6712 : SourceCertificateFamily.RightNormalized.check cell_6712 = true := by
  decide +kernel

theorem check_6713 : SourceCertificateFamily.RightNormalized.check cell_6713 = true := by
  decide +kernel

theorem check_6714 : SourceCertificateFamily.RightNormalized.check cell_6714 = true := by
  decide +kernel

theorem check_6715 : SourceCertificateFamily.RightNormalized.check cell_6715 = true := by
  decide +kernel

theorem check_6716 : SourceCertificateFamily.RightNormalized.check cell_6716 = true := by
  decide +kernel

theorem check_6717 : SourceCertificateFamily.RightNormalized.check cell_6717 = true := by
  decide +kernel

theorem check_6718 : SourceCertificateFamily.RightNormalized.check cell_6718 = true := by
  decide +kernel

theorem check_6719 : SourceCertificateFamily.RightNormalized.check cell_6719 = true := by
  decide +kernel

theorem check_6720 : SourceCertificateFamily.RightNormalized.check cell_6720 = true := by
  decide +kernel

theorem check_6721 : SourceCertificateFamily.RightNormalized.check cell_6721 = true := by
  decide +kernel

theorem check_6722 : SourceCertificateFamily.RightNormalized.check cell_6722 = true := by
  decide +kernel

theorem check_6723 : SourceCertificateFamily.RightNormalized.check cell_6723 = true := by
  decide +kernel

theorem check_6724 : SourceCertificateFamily.RightNormalized.check cell_6724 = true := by
  decide +kernel

theorem check_6725 : SourceCertificateFamily.RightNormalized.check cell_6725 = true := by
  decide +kernel

theorem check_6726 : SourceCertificateFamily.RightNormalized.check cell_6726 = true := by
  decide +kernel

theorem check_6727 : SourceCertificateFamily.RightNormalized.check cell_6727 = true := by
  decide +kernel

theorem check_6728 : SourceCertificateFamily.RightNormalized.check cell_6728 = true := by
  decide +kernel

theorem check_6729 : SourceCertificateFamily.RightNormalized.check cell_6729 = true := by
  decide +kernel

theorem check_6730 : SourceCertificateFamily.RightNormalized.check cell_6730 = true := by
  decide +kernel

theorem check_6731 : SourceCertificateFamily.RightNormalized.check cell_6731 = true := by
  decide +kernel

theorem check_6732 : SourceCertificateFamily.RightNormalized.check cell_6732 = true := by
  decide +kernel

theorem check_6733 : SourceCertificateFamily.RightNormalized.check cell_6733 = true := by
  decide +kernel

theorem check_6734 : SourceCertificateFamily.RightNormalized.check cell_6734 = true := by
  decide +kernel

theorem check_6735 : SourceCertificateFamily.RightNormalized.check cell_6735 = true := by
  decide +kernel

theorem check_6736 : SourceCertificateFamily.RightNormalized.check cell_6736 = true := by
  decide +kernel

theorem check_6737 : SourceCertificateFamily.RightNormalized.check cell_6737 = true := by
  decide +kernel

theorem check_6738 : SourceCertificateFamily.RightNormalized.check cell_6738 = true := by
  decide +kernel

theorem check_6739 : SourceCertificateFamily.RightNormalized.check cell_6739 = true := by
  decide +kernel

theorem check_6740 : SourceCertificateFamily.RightNormalized.check cell_6740 = true := by
  decide +kernel

theorem check_6741 : SourceCertificateFamily.RightNormalized.check cell_6741 = true := by
  decide +kernel

theorem check_6742 : SourceCertificateFamily.RightNormalized.check cell_6742 = true := by
  decide +kernel

theorem check_6743 : SourceCertificateFamily.RightNormalized.check cell_6743 = true := by
  decide +kernel

theorem check_6744 : SourceCertificateFamily.RightNormalized.check cell_6744 = true := by
  decide +kernel

theorem check_6745 : SourceCertificateFamily.RightNormalized.check cell_6745 = true := by
  decide +kernel

theorem check_6746 : SourceCertificateFamily.RightNormalized.check cell_6746 = true := by
  decide +kernel

theorem check_6747 : SourceCertificateFamily.RightNormalized.check cell_6747 = true := by
  decide +kernel

theorem check_6748 : SourceCertificateFamily.RightNormalized.check cell_6748 = true := by
  decide +kernel

theorem check_6749 : SourceCertificateFamily.RightNormalized.check cell_6749 = true := by
  decide +kernel

def cells : List Cell := [cell_6700, cell_6701, cell_6702, cell_6703, cell_6704, cell_6705, cell_6706, cell_6707, cell_6708, cell_6709, cell_6710, cell_6711, cell_6712, cell_6713, cell_6714, cell_6715, cell_6716, cell_6717, cell_6718, cell_6719, cell_6720, cell_6721, cell_6722, cell_6723, cell_6724, cell_6725, cell_6726, cell_6727, cell_6728, cell_6729, cell_6730, cell_6731, cell_6732, cell_6733, cell_6734, cell_6735, cell_6736, cell_6737, cell_6738, cell_6739, cell_6740, cell_6741, cell_6742, cell_6743, cell_6744, cell_6745, cell_6746, cell_6747, cell_6748, cell_6749]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_6700, SourceCertificateFamily.of_right_checked check_6701, SourceCertificateFamily.of_right_checked check_6702, SourceCertificateFamily.of_right_checked check_6703, SourceCertificateFamily.of_right_checked check_6704, SourceCertificateFamily.of_right_checked check_6705, SourceCertificateFamily.of_right_checked check_6706, SourceCertificateFamily.of_right_checked check_6707, SourceCertificateFamily.of_right_checked check_6708, SourceCertificateFamily.of_right_checked check_6709, SourceCertificateFamily.of_right_checked check_6710, SourceCertificateFamily.of_right_checked check_6711, SourceCertificateFamily.of_right_checked check_6712, SourceCertificateFamily.of_right_checked check_6713, SourceCertificateFamily.of_right_checked check_6714, SourceCertificateFamily.of_right_checked check_6715, SourceCertificateFamily.of_right_checked check_6716, SourceCertificateFamily.of_right_checked check_6717, SourceCertificateFamily.of_right_checked check_6718, SourceCertificateFamily.of_right_checked check_6719, SourceCertificateFamily.of_right_checked check_6720, SourceCertificateFamily.of_right_checked check_6721, SourceCertificateFamily.of_right_checked check_6722, SourceCertificateFamily.of_right_checked check_6723, SourceCertificateFamily.of_right_checked check_6724, SourceCertificateFamily.of_right_checked check_6725, SourceCertificateFamily.of_right_checked check_6726, SourceCertificateFamily.of_right_checked check_6727, SourceCertificateFamily.of_right_checked check_6728, SourceCertificateFamily.of_right_checked check_6729, SourceCertificateFamily.of_right_checked check_6730, SourceCertificateFamily.of_right_checked check_6731, SourceCertificateFamily.of_right_checked check_6732, SourceCertificateFamily.of_right_checked check_6733, SourceCertificateFamily.of_right_checked check_6734, SourceCertificateFamily.of_right_checked check_6735, SourceCertificateFamily.of_right_checked check_6736, SourceCertificateFamily.of_right_checked check_6737, SourceCertificateFamily.of_right_checked check_6738, SourceCertificateFamily.of_right_checked check_6739, SourceCertificateFamily.of_right_checked check_6740, SourceCertificateFamily.of_right_checked check_6741, SourceCertificateFamily.of_right_checked check_6742, SourceCertificateFamily.of_right_checked check_6743, SourceCertificateFamily.of_right_checked check_6744, SourceCertificateFamily.of_right_checked check_6745, SourceCertificateFamily.of_right_checked check_6746, SourceCertificateFamily.of_right_checked check_6747, SourceCertificateFamily.of_right_checked check_6748, SourceCertificateFamily.of_right_checked check_6749, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0134

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0134
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0134
open AnalyticBounds.ExpressionCertificate

theorem linked_6700 : Linked cell_6700 pieces := by
  apply Linked.of_piece piece_581 piece_581_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6700, List.cons_subset, List.nil_subset, and_true]
  exact piece_1949_mem

theorem linked_6701 : Linked cell_6701 pieces := by
  apply Linked.of_piece piece_582 piece_582_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6701, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1948_mem, piece_1949_mem⟩

theorem linked_6702 : Linked cell_6702 pieces := by
  apply Linked.of_piece piece_582 piece_582_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6702, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1949_mem, piece_1950_mem⟩

theorem linked_6703 : Linked cell_6703 pieces := by
  apply Linked.of_piece piece_582 piece_582_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6703, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1950_mem, piece_1951_mem⟩

theorem linked_6704 : Linked cell_6704 pieces := by
  apply Linked.of_piece piece_582 piece_582_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6704, List.cons_subset, List.nil_subset, and_true]
  exact piece_1951_mem

theorem linked_6705 : Linked cell_6705 pieces := by
  apply Linked.of_piece piece_582 piece_582_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6705, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1951_mem, piece_1952_mem⟩

theorem linked_6706 : Linked cell_6706 pieces := by
  apply Linked.of_piece piece_582 piece_582_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6706, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1952_mem, piece_1953_mem⟩

theorem linked_6707 : Linked cell_6707 pieces := by
  apply Linked.of_piece piece_582 piece_582_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6707, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1953_mem, piece_1954_mem⟩

theorem linked_6708 : Linked cell_6708 pieces := by
  apply Linked.of_piece piece_582 piece_582_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6708, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1954_mem, piece_1955_mem⟩

theorem linked_6709 : Linked cell_6709 pieces := by
  apply Linked.of_piece piece_583 piece_583_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6709, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1954_mem, piece_1955_mem⟩

theorem linked_6710 : Linked cell_6710 pieces := by
  apply Linked.of_piece piece_583 piece_583_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6710, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1955_mem, piece_1956_mem⟩

theorem linked_6711 : Linked cell_6711 pieces := by
  apply Linked.of_piece piece_583 piece_583_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6711, List.cons_subset, List.nil_subset, and_true]
  exact piece_1956_mem

theorem linked_6712 : Linked cell_6712 pieces := by
  apply Linked.of_piece piece_583 piece_583_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6712, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1956_mem, piece_1957_mem⟩

theorem linked_6713 : Linked cell_6713 pieces := by
  apply Linked.of_piece piece_583 piece_583_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6713, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1957_mem, piece_1958_mem⟩

theorem linked_6714 : Linked cell_6714 pieces := by
  apply Linked.of_piece piece_583 piece_583_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6714, List.cons_subset, List.nil_subset, and_true]
  exact piece_1958_mem

theorem linked_6715 : Linked cell_6715 pieces := by
  apply Linked.of_piece piece_583 piece_583_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6715, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1958_mem, piece_1959_mem⟩

theorem linked_6716 : Linked cell_6716 pieces := by
  apply Linked.of_piece piece_583 piece_583_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6716, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1959_mem, piece_1960_mem⟩

theorem linked_6717 : Linked cell_6717 pieces := by
  apply Linked.of_piece piece_584 piece_584_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6717, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1959_mem, piece_1960_mem⟩

theorem linked_6718 : Linked cell_6718 pieces := by
  apply Linked.of_piece piece_584 piece_584_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6718, List.cons_subset, List.nil_subset, and_true]
  exact piece_1960_mem

theorem linked_6719 : Linked cell_6719 pieces := by
  apply Linked.of_piece piece_584 piece_584_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6719, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1960_mem, piece_1961_mem⟩

theorem linked_6720 : Linked cell_6720 pieces := by
  apply Linked.of_piece piece_584 piece_584_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6720, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1961_mem, piece_1962_mem⟩

theorem linked_6721 : Linked cell_6721 pieces := by
  apply Linked.of_piece piece_584 piece_584_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6721, List.cons_subset, List.nil_subset, and_true]
  exact piece_1962_mem

theorem linked_6722 : Linked cell_6722 pieces := by
  apply Linked.of_piece piece_584 piece_584_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6722, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1962_mem, piece_1963_mem⟩

theorem linked_6723 : Linked cell_6723 pieces := by
  apply Linked.of_piece piece_584 piece_584_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6723, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1963_mem, piece_1964_mem⟩

theorem linked_6724 : Linked cell_6724 pieces := by
  apply Linked.of_piece piece_584 piece_584_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6724, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1964_mem, piece_1965_mem⟩

theorem linked_6725 : Linked cell_6725 pieces := by
  apply Linked.of_piece piece_585 piece_585_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6725, List.cons_subset, List.nil_subset, and_true]
  exact piece_1964_mem

theorem linked_6726 : Linked cell_6726 pieces := by
  apply Linked.of_piece piece_585 piece_585_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6726, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1964_mem, ⟨piece_1965_mem, piece_1966_mem⟩⟩

theorem linked_6727 : Linked cell_6727 pieces := by
  apply Linked.of_piece piece_585 piece_585_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6727, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1966_mem, piece_1967_mem⟩

theorem linked_6728 : Linked cell_6728 pieces := by
  apply Linked.of_piece piece_585 piece_585_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6728, List.cons_subset, List.nil_subset, and_true]
  exact piece_1967_mem

theorem linked_6729 : Linked cell_6729 pieces := by
  apply Linked.of_piece piece_585 piece_585_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6729, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1967_mem, piece_1968_mem⟩

theorem linked_6730 : Linked cell_6730 pieces := by
  apply Linked.of_piece piece_585 piece_585_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6730, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1968_mem, piece_1969_mem⟩

theorem linked_6731 : Linked cell_6731 pieces := by
  apply Linked.of_piece piece_585 piece_585_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6731, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1969_mem, piece_1970_mem⟩

theorem linked_6732 : Linked cell_6732 pieces := by
  apply Linked.of_piece piece_585 piece_585_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6732, List.cons_subset, List.nil_subset, and_true]
  exact piece_1970_mem

theorem linked_6733 : Linked cell_6733 pieces := by
  apply Linked.of_piece piece_586 piece_586_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6733, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1969_mem, piece_1970_mem⟩

theorem linked_6734 : Linked cell_6734 pieces := by
  apply Linked.of_piece piece_586 piece_586_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6734, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1970_mem, piece_1971_mem⟩

theorem linked_6735 : Linked cell_6735 pieces := by
  apply Linked.of_piece piece_586 piece_586_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6735, List.cons_subset, List.nil_subset, and_true]
  exact piece_1971_mem

theorem linked_6736 : Linked cell_6736 pieces := by
  apply Linked.of_piece piece_586 piece_586_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6736, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1971_mem, piece_1972_mem⟩

theorem linked_6737 : Linked cell_6737 pieces := by
  apply Linked.of_piece piece_586 piece_586_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6737, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1972_mem, piece_1973_mem⟩

theorem linked_6738 : Linked cell_6738 pieces := by
  apply Linked.of_piece piece_586 piece_586_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6738, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1973_mem, piece_1974_mem⟩

theorem linked_6739 : Linked cell_6739 pieces := by
  apply Linked.of_piece piece_586 piece_586_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6739, List.cons_subset, List.nil_subset, and_true]
  exact piece_1974_mem

theorem linked_6740 : Linked cell_6740 pieces := by
  apply Linked.of_piece piece_586 piece_586_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6740, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1974_mem, piece_1975_mem⟩

theorem linked_6741 : Linked cell_6741 pieces := by
  apply Linked.of_piece piece_587 piece_587_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6741, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1974_mem, piece_1975_mem⟩

theorem linked_6742 : Linked cell_6742 pieces := by
  apply Linked.of_piece piece_587 piece_587_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6742, List.cons_subset, List.nil_subset, and_true]
  exact piece_1975_mem

theorem linked_6743 : Linked cell_6743 pieces := by
  apply Linked.of_piece piece_587 piece_587_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6743, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1975_mem, piece_1976_mem⟩

theorem linked_6744 : Linked cell_6744 pieces := by
  apply Linked.of_piece piece_587 piece_587_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6744, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1976_mem, piece_1977_mem⟩

theorem linked_6745 : Linked cell_6745 pieces := by
  apply Linked.of_piece piece_587 piece_587_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6745, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1977_mem, ⟨piece_1978_mem, piece_1979_mem⟩⟩

theorem linked_6746 : Linked cell_6746 pieces := by
  apply Linked.of_piece piece_587 piece_587_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6746, List.cons_subset, List.nil_subset, and_true]
  exact piece_1979_mem

theorem linked_6747 : Linked cell_6747 pieces := by
  apply Linked.of_piece piece_587 piece_587_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6747, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1979_mem, piece_1980_mem⟩

theorem linked_6748 : Linked cell_6748 pieces := by
  apply Linked.of_piece piece_587 piece_587_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6748, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1980_mem, piece_1981_mem⟩

theorem linked_6749 : Linked cell_6749 pieces := by
  apply Linked.of_piece piece_588 piece_588_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6749, List.cons_subset, List.nil_subset, and_true]
  exact piece_1980_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0134.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0134.cells,List.forall_mem_cons]
  exact ⟨linked_6700, linked_6701, linked_6702, linked_6703, linked_6704, linked_6705, linked_6706, linked_6707, linked_6708, linked_6709, linked_6710, linked_6711, linked_6712, linked_6713, linked_6714, linked_6715, linked_6716, linked_6717, linked_6718, linked_6719, linked_6720, linked_6721, linked_6722, linked_6723, linked_6724, linked_6725, linked_6726, linked_6727, linked_6728, linked_6729, linked_6730, linked_6731, linked_6732, linked_6733, linked_6734, linked_6735, linked_6736, linked_6737, linked_6738, linked_6739, linked_6740, linked_6741, linked_6742, linked_6743, linked_6744, linked_6745, linked_6746, linked_6747, linked_6748, linked_6749, by simp⟩

theorem covered : covers (3543 / 16000 : ℚ) (22456250000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0134.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0134
