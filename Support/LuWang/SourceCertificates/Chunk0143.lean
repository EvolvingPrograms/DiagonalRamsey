import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0143
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(50660195530726257 / 200000000000000000 : ℚ), (25335195530726257 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (21752241652407 / 25000000000000 : ℚ)
  w := (9248764613827 / 5000000000000 : ℚ)
  center := (101330586592178771 / 400000000000000000 : ℚ)
  supportValue := (188628053400987 / 200000000000000 : ℚ)
  supportSlope := (-4526851226936489 / 500000000000000 : ℚ)
  oldCenter := (188628053400987 / 200000000000000 : ℚ)
  newCoefficients := coefficients_652
  oldLo := (377 / 400 : ℚ)
  oldHi := (47150000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2154, piece_2155]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7150 : Cell := { cellDefaults with
  r := (17417444787251 / 20000000000000 : ℚ)
  w := (4627545598899 / 2500000000000 : ℚ)
  newCoefficients := coefficients_650
  oldHi := (94350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2154, piece_2155]
}

def cell_7151 : Cell := { cellDefaults with
  domain := ⟨(25335195530726257 / 100000000000000000 : ℚ), (2027 / 8000 : ℚ)⟩
  r := (17417444787251 / 20000000000000 : ℚ)
  w := (4627545598899 / 2500000000000 : ℚ)
  center := (50672695530726257 / 200000000000000000 : ℚ)
  supportValue := (4714021964741423 / 5000000000000000 : ℚ)
  supportSlope := (-1810270186655491 / 200000000000000 : ℚ)
  oldCenter := (4714021964741423 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_651
  oldPieces := [piece_2154]
}

def cell_7152 : Cell := { cellDefaults with
  domain := ⟨(2027 / 8000 : ℚ), (811 / 3200 : ℚ)⟩
  r := (17417444787251 / 20000000000000 : ℚ)
  w := (4627545598899 / 2500000000000 : ℚ)
  center := (8109 / 32000 : ℚ)
  supportValue := (294505696505733 / 312500000000000 : ℚ)
  supportSlope := (-4522645138166581 / 500000000000000 : ℚ)
  oldCenter := (294505696505733 / 312500000000000 : ℚ)
  newCoefficients := coefficients_651
  oldLo := (47100000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2153, piece_2154]
}

def cell_7153 : Cell := { cellDefaults with
  domain := ⟨(811 / 3200 : ℚ), (507 / 2000 : ℚ)⟩
  r := (17417444787251 / 20000000000000 : ℚ)
  w := (4627545598899 / 2500000000000 : ℚ)
  center := (8111 / 32000 : ℚ)
  supportValue := (4709265817393637 / 5000000000000000 : ℚ)
  supportSlope := (-4518322763868099 / 500000000000000 : ℚ)
  oldCenter := (4709265817393637 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_651
  oldLo := (1883 / 2000 : ℚ)
  oldHi := (377 / 400 : ℚ)
  oldPieces := [piece_2152, piece_2153]
}

def cell_7154 : Cell := { cellDefaults with
  domain := ⟨(507 / 2000 : ℚ), (4057 / 16000 : ℚ)⟩
  center := (8113 / 32000 : ℚ)
  supportValue := (9434455139485873 / 10000000000000000 : ℚ)
  supportSlope := (-9052211087105633 / 1000000000000000 : ℚ)
  oldCenter := (9434455139485873 / 10000000000000000 : ℚ)
  oldLo := (47150000000000003 / 50000000000000000 : ℚ)
  oldHi := (47200000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2155, piece_2156]
}

def cell_7155 : Cell := { cellDefaults with
  domain := ⟨(4057 / 16000 : ℚ), (2029 / 8000 : ℚ)⟩
  center := (1623 / 6400 : ℚ)
  supportValue := (188576003057163 / 200000000000000 : ℚ)
  supportSlope := (-9043591065822199 / 1000000000000000 : ℚ)
  oldCenter := (188576003057163 / 200000000000000 : ℚ)
  oldHi := (94350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2154, piece_2155]
}

def cell_7156 : Cell := { cellDefaults with
  domain := ⟨(2029 / 8000 : ℚ), (4059 / 16000 : ℚ)⟩
  center := (8117 / 32000 : ℚ)
  supportValue := (9423150551688163 / 10000000000000000 : ℚ)
  supportSlope := (-4517489039310263 / 500000000000000 : ℚ)
  oldCenter := (9423150551688163 / 10000000000000000 : ℚ)
  oldLo := (47100000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2153, piece_2154]
}

def cell_7157 : Cell := { cellDefaults with
  domain := ⟨(4059 / 16000 : ℚ), (203 / 800 : ℚ)⟩
  center := (8119 / 32000 : ℚ)
  supportValue := (4708753165770541 / 5000000000000000 : ℚ)
  supportSlope := (-9026441409769603 / 1000000000000000 : ℚ)
  oldCenter := (4708753165770541 / 5000000000000000 : ℚ)
  oldLo := (47050000000000003 / 50000000000000000 : ℚ)
  oldHi := (377 / 400 : ℚ)
  oldPieces := [piece_2151, piece_2152, piece_2153]
}

def cell_7158 : Cell := { cellDefaults with
  domain := ⟨(203 / 800 : ℚ), (4061 / 16000 : ℚ)⟩
  center := (8121 / 32000 : ℚ)
  supportValue := (1176483435995233 / 1250000000000000 : ℚ)
  supportSlope := (-9017910269808027 / 1000000000000000 : ℚ)
  oldCenter := (1176483435995233 / 1250000000000000 : ℚ)
  oldLo := (1881 / 2000 : ℚ)
  oldHi := (1883 / 2000 : ℚ)
  oldPieces := [piece_2150, piece_2151]
}

def cell_7159 : Cell := { cellDefaults with
  domain := ⟨(4061 / 16000 : ℚ), (2031 / 8000 : ℚ)⟩
  center := (8123 / 32000 : ℚ)
  supportValue := (9406234016489241 / 10000000000000000 : ℚ)
  supportSlope := (-9009318249347587 / 1000000000000000 : ℚ)
  oldCenter := (9406234016489241 / 10000000000000000 : ℚ)
  oldLo := (47000000000000003 / 50000000000000000 : ℚ)
  oldHi := (47050000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2149, piece_2150]
}

def cell_7160 : Cell := { cellDefaults with
  domain := ⟨(2031 / 8000 : ℚ), (4063 / 16000 : ℚ)⟩
  center := (65 / 256 : ℚ)
  supportValue := (9400605912664881 / 10000000000000000 : ℚ)
  supportSlope := (-1125091660019617 / 125000000000000 : ℚ)
  oldCenter := (9400605912664881 / 10000000000000000 : ℚ)
  oldLo := (1879 / 2000 : ℚ)
  oldHi := (1881 / 2000 : ℚ)
  oldPieces := [piece_2148, piece_2149]
}

def cell_7161 : Cell := { cellDefaults with
  domain := ⟨(4063 / 16000 : ℚ), (127 / 500 : ℚ)⟩
  center := (8127 / 32000 : ℚ)
  supportValue := (9394983168595133 / 10000000000000000 : ℚ)
  supportSlope := (-8992155407561597 / 1000000000000000 : ℚ)
  oldCenter := (9394983168595133 / 10000000000000000 : ℚ)
  oldLo := (9391620111731843 / 10000000000000000 : ℚ)
  oldHi := (47000000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2147, piece_2148]
}

def cell_7162 : Cell := { cellDefaults with
  domain := ⟨(127 / 500 : ℚ), (813 / 3200 : ℚ)⟩
  r := (21732731484049 / 25000000000000 : ℚ)
  w := (9242449833 / 5000000000 : ℚ)
  center := (8129 / 32000 : ℚ)
  supportValue := (2352709923584571 / 2500000000000000 : ℚ)
  supportSlope := (-9007637965869009 / 1000000000000000 : ℚ)
  oldCenter := (2352709923584571 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_653
  oldLo := (1881 / 2000 : ℚ)
  oldHi := (1883 / 2000 : ℚ)
  oldPieces := [piece_2150, piece_2151]
}

def cell_7163 : Cell := { cellDefaults with
  domain := ⟨(813 / 3200 : ℚ), (2033 / 8000 : ℚ)⟩
  r := (21732731484049 / 25000000000000 : ℚ)
  w := (9242449833 / 5000000000 : ℚ)
  center := (8131 / 32000 : ℚ)
  supportValue := (4702606316158683 / 5000000000000000 : ℚ)
  supportSlope := (-1799815886175793 / 200000000000000 : ℚ)
  oldCenter := (4702606316158683 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_653
  oldLo := (47000000000000003 / 50000000000000000 : ℚ)
  oldHi := (47050000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2149, piece_2150]
}

def cell_7164 : Cell := { cellDefaults with
  domain := ⟨(2033 / 8000 : ℚ), (4067 / 16000 : ℚ)⟩
  r := (21732731484049 / 25000000000000 : ℚ)
  w := (9242449833 / 5000000000 : ℚ)
  center := (8133 / 32000 : ℚ)
  supportValue := (293737214391243 / 312500000000000 : ℚ)
  supportSlope := (-8990527874868093 / 1000000000000000 : ℚ)
  oldCenter := (293737214391243 / 312500000000000 : ℚ)
  newCoefficients := coefficients_653
  oldLo := (1879 / 2000 : ℚ)
  oldHi := (1881 / 2000 : ℚ)
  oldPieces := [piece_2148, piece_2149]
}

def cell_7165 : Cell := { cellDefaults with
  domain := ⟨(4067 / 16000 : ℚ), (1017 / 4000 : ℚ)⟩
  r := (21732731484049 / 25000000000000 : ℚ)
  w := (9242449833 / 5000000000 : ℚ)
  center := (1627 / 6400 : ℚ)
  supportValue := (9393974404049403 / 10000000000000000 : ℚ)
  supportSlope := (-8981983483941747 / 1000000000000000 : ℚ)
  oldCenter := (9393974404049403 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_653
  oldLo := (46950000000000003 / 50000000000000000 : ℚ)
  oldHi := (47000000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2146, piece_2147, piece_2148]
}

def cell_7166 : Cell := { cellDefaults with
  domain := ⟨(1017 / 4000 : ℚ), (4069 / 16000 : ℚ)⟩
  r := (21732731484049 / 25000000000000 : ℚ)
  w := (9242449833 / 5000000000 : ℚ)
  center := (8137 / 32000 : ℚ)
  supportValue := (9388363285620543 / 10000000000000000 : ℚ)
  supportSlope := (-4486723242758117 / 500000000000000 : ℚ)
  oldCenter := (9388363285620543 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_653
  oldLo := (1877 / 2000 : ℚ)
  oldHi := (9391620111731843 / 10000000000000000 : ℚ)
  oldPieces := [piece_2145, piece_2146]
}

def cell_7167 : Cell := { cellDefaults with
  domain := ⟨(4069 / 16000 : ℚ), (407 / 1600 : ℚ)⟩
  r := (21732731484049 / 25000000000000 : ℚ)
  w := (9242449833 / 5000000000 : ℚ)
  center := (8139 / 32000 : ℚ)
  supportValue := (2345689375205231 / 2500000000000000 : ℚ)
  supportSlope := (-8964927895547703 / 1000000000000000 : ℚ)
  oldCenter := (2345689375205231 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_653
  oldLo := (15 / 16 : ℚ)
  oldHi := (46950000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2143, piece_2144, piece_2145]
}

def cell_7168 : Cell := { cellDefaults with
  domain := ⟨(407 / 1600 : ℚ), (4071 / 16000 : ℚ)⟩
  r := (21732731484049 / 25000000000000 : ℚ)
  w := (9242449833 / 5000000000 : ℚ)
  center := (8141 / 32000 : ℚ)
  supportValue := (234428926132123 / 250000000000000 : ℚ)
  supportSlope := (-895652443465167 / 100000000000000 : ℚ)
  oldCenter := (234428926132123 / 250000000000000 : ℚ)
  newCoefficients := coefficients_653
  oldLo := (46850000000000003 / 50000000000000000 : ℚ)
  oldHi := (46900000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2142, piece_2143]
}

def cell_7169 : Cell := { cellDefaults with
  domain := ⟨(4071 / 16000 : ℚ), (509 / 2000 : ℚ)⟩
  r := (21732731484049 / 25000000000000 : ℚ)
  w := (9242449833 / 5000000000 : ℚ)
  center := (8143 / 32000 : ℚ)
  supportValue := (468578095730121 / 500000000000000 : ℚ)
  supportSlope := (-4474003988157449 / 500000000000000 : ℚ)
  oldCenter := (468578095730121 / 500000000000000 : ℚ)
  newCoefficients := coefficients_653
  oldLo := (1873 / 2000 : ℚ)
  oldHi := (15 / 16 : ℚ)
  oldPieces := [piece_2141, piece_2142]
}

def cell_7170 : Cell := { cellDefaults with
  domain := ⟨(509 / 2000 : ℚ), (4073 / 16000 : ℚ)⟩
  r := (21713275154641 / 25000000000000 : ℚ)
  w := (18472294104123 / 10000000000000 : ℚ)
  center := (1629 / 6400 : ℚ)
  supportValue := (1173418967894073 / 1250000000000000 : ℚ)
  supportSlope := (-448169778204921 / 50000000000000 : ℚ)
  oldCenter := (1173418967894073 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_654
  oldLo := (46900000000000003 / 50000000000000000 : ℚ)
  oldHi := (9391620111731843 / 10000000000000000 : ℚ)
  oldPieces := [piece_2144, piece_2145, piece_2146]
}

def cell_7171 : Cell := { cellDefaults with
  domain := ⟨(4073 / 16000 : ℚ), (2037 / 8000 : ℚ)⟩
  r := (21713275154641 / 25000000000000 : ℚ)
  w := (18472294104123 / 10000000000000 : ℚ)
  center := (8147 / 32000 : ℚ)
  supportValue := (4690876146921979 / 5000000000000000 : ℚ)
  supportSlope := (-4477462576966573 / 500000000000000 : ℚ)
  oldCenter := (4690876146921979 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_654
  oldLo := (15 / 16 : ℚ)
  oldHi := (1877 / 2000 : ℚ)
  oldPieces := [piece_2143, piece_2144]
}

def cell_7172 : Cell := { cellDefaults with
  domain := ⟨(2037 / 8000 : ℚ), (163 / 640 : ℚ)⟩
  r := (21713275154641 / 25000000000000 : ℚ)
  w := (18472294104123 / 10000000000000 : ℚ)
  center := (8149 / 32000 : ℚ)
  supportValue := (4688079077893953 / 5000000000000000 : ℚ)
  supportSlope := (-1789286085157471 / 200000000000000 : ℚ)
  oldCenter := (4688079077893953 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_654
  oldLo := (46850000000000003 / 50000000000000000 : ℚ)
  oldHi := (46900000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2142, piece_2143]
}

def cell_7173 : Cell := { cellDefaults with
  domain := ⟨(163 / 640 : ℚ), (1019 / 4000 : ℚ)⟩
  r := (21713275154641 / 25000000000000 : ℚ)
  w := (18472294104123 / 10000000000000 : ℚ)
  center := (8151 / 32000 : ℚ)
  supportValue := (9370569324590349 / 10000000000000000 : ℚ)
  supportSlope := (-1117242843154731 / 125000000000000 : ℚ)
  oldCenter := (9370569324590349 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_654
  oldLo := (1873 / 2000 : ℚ)
  oldHi := (15 / 16 : ℚ)
  oldPieces := [piece_2141, piece_2142]
}

def cell_7174 : Cell := { cellDefaults with
  domain := ⟨(1019 / 4000 : ℚ), (4077 / 16000 : ℚ)⟩
  r := (21713275154641 / 25000000000000 : ℚ)
  w := (18472294104123 / 10000000000000 : ℚ)
  center := (8153 / 32000 : ℚ)
  supportValue := (9364985792584017 / 10000000000000000 : ℚ)
  supportSlope := (-8929462128271837 / 1000000000000000 : ℚ)
  oldCenter := (9364985792584017 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_654
  oldLo := (18720000000000001 / 20000000000000000 : ℚ)
  oldHi := (46850000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2140, piece_2141]
}

def cell_7175 : Cell := { cellDefaults with
  domain := ⟨(4077 / 16000 : ℚ), (2039 / 8000 : ℚ)⟩
  r := (21713275154641 / 25000000000000 : ℚ)
  w := (18472294104123 / 10000000000000 : ℚ)
  center := (1631 / 6400 : ℚ)
  supportValue := (4679703740944477 / 5000000000000000 : ℚ)
  supportSlope := (-8920988582495681 / 1000000000000000 : ℚ)
  oldCenter := (4679703740944477 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_654
  oldLo := (1871 / 2000 : ℚ)
  oldHi := (1873 / 2000 : ℚ)
  oldPieces := [piece_2139, piece_2140]
}

def cell_7176 : Cell := { cellDefaults with
  domain := ⟨(2039 / 8000 : ℚ), (4079 / 16000 : ℚ)⟩
  r := (21713275154641 / 25000000000000 : ℚ)
  w := (18472294104123 / 10000000000000 : ℚ)
  center := (8157 / 32000 : ℚ)
  supportValue := (4676917232560139 / 5000000000000000 : ℚ)
  supportSlope := (-4456261052730781 / 500000000000000 : ℚ)
  oldCenter := (4676917232560139 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_654
  oldLo := (18700000000000001 / 20000000000000000 : ℚ)
  oldHi := (18720000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2138, piece_2139]
}

def cell_7177 : Cell := { cellDefaults with
  domain := ⟨(4079 / 16000 : ℚ), (51 / 200 : ℚ)⟩
  r := (21713275154641 / 25000000000000 : ℚ)
  w := (18472294104123 / 10000000000000 : ℚ)
  center := (8159 / 32000 : ℚ)
  supportValue := (4674133368930387 / 5000000000000000 : ℚ)
  supportSlope := (-4452031352514041 / 500000000000000 : ℚ)
  oldCenter := (4674133368930387 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_654
  oldLo := (1869 / 2000 : ℚ)
  oldHi := (1871 / 2000 : ℚ)
  oldPieces := [piece_2137, piece_2138]
}

def cell_7178 : Cell := { cellDefaults with
  domain := ⟨(51 / 200 : ℚ), (4081 / 16000 : ℚ)⟩
  r := (43387744654937 / 50000000000000 : ℚ)
  w := (18459711660703 / 10000000000000 : ℚ)
  center := (8161 / 32000 : ℚ)
  supportValue := (4681995419455497 / 5000000000000000 : ℚ)
  supportSlope := (-4459712462423937 / 500000000000000 : ℚ)
  oldCenter := (4681995419455497 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_655
  oldLo := (18720000000000001 / 20000000000000000 : ℚ)
  oldHi := (46850000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2140, piece_2141]
}

def cell_7179 : Cell := { cellDefaults with
  domain := ⟨(4081 / 16000 : ℚ), (2041 / 8000 : ℚ)⟩
  r := (43387744654937 / 50000000000000 : ℚ)
  w := (18459711660703 / 10000000000000 : ℚ)
  center := (8163 / 32000 : ℚ)
  supportValue := (1871683758503687 / 2000000000000000 : ℚ)
  supportSlope := (-2227745233741807 / 250000000000000 : ℚ)
  oldCenter := (1871683758503687 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_655
  oldLo := (1871 / 2000 : ℚ)
  oldHi := (1873 / 2000 : ℚ)
  oldPieces := [piece_2139, piece_2140]
}

def cell_7180 : Cell := { cellDefaults with
  domain := ⟨(2041 / 8000 : ℚ), (4083 / 16000 : ℚ)⟩
  r := (43387744654937 / 50000000000000 : ℚ)
  w := (18459711660703 / 10000000000000 : ℚ)
  center := (1633 / 6400 : ℚ)
  supportValue := (292276625674687 / 312500000000000 : ℚ)
  supportSlope := (-8902543984078193 / 1000000000000000 : ℚ)
  oldCenter := (292276625674687 / 312500000000000 : ℚ)
  newCoefficients := coefficients_655
  oldLo := (18700000000000001 / 20000000000000000 : ℚ)
  oldHi := (18720000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2138, piece_2139]
}

def cell_7181 : Cell := { cellDefaults with
  domain := ⟨(4083 / 16000 : ℚ), (1021 / 4000 : ℚ)⟩
  r := (43387744654937 / 50000000000000 : ℚ)
  w := (18459711660703 / 10000000000000 : ℚ)
  center := (8167 / 32000 : ℚ)
  supportValue := (4673645260863381 / 5000000000000000 : ℚ)
  supportSlope := (-1778845021240727 / 200000000000000 : ℚ)
  oldCenter := (4673645260863381 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_655
  oldLo := (18680000000000001 / 20000000000000000 : ℚ)
  oldHi := (1871 / 2000 : ℚ)
  oldPieces := [piece_2136, piece_2137, piece_2138]
}

def cell_7182 : Cell := { cellDefaults with
  domain := ⟨(1021 / 4000 : ℚ), (817 / 3200 : ℚ)⟩
  r := (43387744654937 / 50000000000000 : ℚ)
  w := (18459711660703 / 10000000000000 : ℚ)
  center := (8169 / 32000 : ℚ)
  supportValue := (1167716786065483 / 1250000000000000 : ℚ)
  supportSlope := (-1110726921090599 / 125000000000000 : ℚ)
  oldCenter := (1167716786065483 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_655
  oldLo := (9336312849162011 / 10000000000000000 : ℚ)
  oldHi := (1869 / 2000 : ℚ)
  oldPieces := [piece_2135, piece_2136]
}

def cell_7183 : Cell := { cellDefaults with
  domain := ⟨(817 / 3200 : ℚ), (2043 / 8000 : ℚ)⟩
  r := (43387744654937 / 50000000000000 : ℚ)
  w := (18459711660703 / 10000000000000 : ℚ)
  center := (8171 / 32000 : ℚ)
  supportValue := (2334045829395839 / 2500000000000000 : ℚ)
  supportSlope := (-8877398925132951 / 1000000000000000 : ℚ)
  oldCenter := (2334045829395839 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_655
  oldLo := (18660000000000001 / 20000000000000000 : ℚ)
  oldHi := (18680000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2133, piece_2134, piece_2135]
}

def cell_7184 : Cell := { cellDefaults with
  domain := ⟨(2043 / 8000 : ℚ), (4087 / 16000 : ℚ)⟩
  r := (43387744654937 / 50000000000000 : ℚ)
  w := (18459711660703 / 10000000000000 : ℚ)
  center := (8173 / 32000 : ℚ)
  supportValue := (2332659401153157 / 2500000000000000 : ℚ)
  supportSlope := (-1773797882560757 / 200000000000000 : ℚ)
  oldCenter := (2332659401153157 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_655
  oldLo := (373 / 400 : ℚ)
  oldHi := (1867 / 2000 : ℚ)
  oldPieces := [piece_2132, piece_2133]
}

def cell_7185 : Cell := { cellDefaults with
  domain := ⟨(4087 / 16000 : ℚ), (511 / 2000 : ℚ)⟩
  r := (43387744654937 / 50000000000000 : ℚ)
  w := (18459711660703 / 10000000000000 : ℚ)
  center := (327 / 1280 : ℚ)
  supportValue := (233127428629069 / 250000000000000 : ℚ)
  supportSlope := (-4430293551152431 / 500000000000000 : ℚ)
  oldCenter := (233127428629069 / 250000000000000 : ℚ)
  newCoefficients := coefficients_655
  oldLo := (18640000000000001 / 20000000000000000 : ℚ)
  oldHi := (18660000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2131, piece_2132]
}

def cell_7186 : Cell := { cellDefaults with
  domain := ⟨(511 / 2000 : ℚ), (204450000000000001 / 800000000000000000 : ℚ)⟩
  r := (86698091000847 / 100000000000000 : ℚ)
  w := (737886119487 / 400000000000 : ℚ)
  center := (408850000000000001 / 1600000000000000000 : ℚ)
  supportValue := (4670377691656559 / 5000000000000000 : ℚ)
  supportSlope := (-443794405960487 / 50000000000000 : ℚ)
  oldCenter := (4670377691656559 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_656
  oldLo := (9336312849162011 / 10000000000000000 : ℚ)
  oldHi := (1869 / 2000 : ℚ)
  oldPieces := [piece_2135, piece_2136]
}

def cell_7187 : Cell := { cellDefaults with
  domain := ⟨(204450000000000001 / 800000000000000000 : ℚ), (102250000000000001 / 400000000000000000 : ℚ)⟩
  r := (86698091000847 / 100000000000000 : ℚ)
  w := (737886119487 / 400000000000 : ℚ)
  center := (408950000000000003 / 1600000000000000000 : ℚ)
  supportValue := (9335210607183799 / 10000000000000000 : ℚ)
  supportSlope := (-4433750957392757 / 500000000000000 : ℚ)
  oldCenter := (9335210607183799 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_656
  oldLo := (18660000000000001 / 20000000000000000 : ℚ)
  oldHi := (18680000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2133, piece_2134, piece_2135]
}

def cell_7188 : Cell := { cellDefaults with
  domain := ⟨(102250000000000001 / 400000000000000000 : ℚ), (204550000000000003 / 800000000000000000 : ℚ)⟩
  r := (86698091000847 / 100000000000000 : ℚ)
  w := (737886119487 / 400000000000 : ℚ)
  center := (81810000000000001 / 320000000000000000 : ℚ)
  supportValue := (93296710225141 / 100000000000000 : ℚ)
  supportSlope := (-2214780664131899 / 250000000000000 : ℚ)
  oldCenter := (93296710225141 / 100000000000000 : ℚ)
  newCoefficients := coefficients_656
  oldLo := (373 / 400 : ℚ)
  oldHi := (1867 / 2000 : ℚ)
  oldPieces := [piece_2132, piece_2133]
}

def cell_7189 : Cell := { cellDefaults with
  domain := ⟨(204550000000000003 / 800000000000000000 : ℚ), (51150000000000001 / 200000000000000000 : ℚ)⟩
  r := (86698091000847 / 100000000000000 : ℚ)
  w := (737886119487 / 400000000000 : ℚ)
  center := (409150000000000007 / 1600000000000000000 : ℚ)
  supportValue := (9324136644557793 / 10000000000000000 : ℚ)
  supportSlope := (-2212687640799471 / 250000000000000 : ℚ)
  oldCenter := (9324136644557793 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_656
  oldLo := (18640000000000001 / 20000000000000000 : ℚ)
  oldHi := (18660000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2131, piece_2132]
}

def cell_7190 : Cell := { cellDefaults with
  domain := ⟨(51150000000000001 / 200000000000000000 : ℚ), (40930000000000001 / 160000000000000000 : ℚ)⟩
  r := (86698091000847 / 100000000000000 : ℚ)
  w := (737886119487 / 400000000000 : ℚ)
  center := (409250000000000009 / 1600000000000000000 : ℚ)
  supportValue := (9318607497170363 / 10000000000000000 : ℚ)
  supportSlope := (-2210596359086337 / 250000000000000 : ℚ)
  oldCenter := (9318607497170363 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_656
  oldLo := (93149999999999999 / 100000000000000000 : ℚ)
  oldHi := (373 / 400 : ℚ)
  oldPieces := [piece_2130, piece_2131]
}

def cell_7191 : Cell := { cellDefaults with
  domain := ⟨(40930000000000001 / 160000000000000000 : ℚ), (102350000000000003 / 400000000000000000 : ℚ)⟩
  r := (86698091000847 / 100000000000000 : ℚ)
  w := (737886119487 / 400000000000 : ℚ)
  center := (409350000000000011 / 1600000000000000000 : ℚ)
  supportValue := (1862616715198969 / 2000000000000000 : ℚ)
  supportSlope := (-1766805456669083 / 200000000000000 : ℚ)
  oldCenter := (1862616715198969 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_656
  oldLo := (18620000000000001 / 20000000000000000 : ℚ)
  oldHi := (18640000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2129, piece_2130]
}

def cell_7192 : Cell := { cellDefaults with
  domain := ⟨(102350000000000003 / 400000000000000000 : ℚ), (204750000000000007 / 800000000000000000 : ℚ)⟩
  r := (86698091000847 / 100000000000000 : ℚ)
  w := (737886119487 / 400000000000 : ℚ)
  center := (409450000000000013 / 1600000000000000000 : ℚ)
  supportValue := (9307564876673179 / 10000000000000000 : ℚ)
  supportSlope := (-110321527294619 / 12500000000000 : ℚ)
  oldCenter := (9307564876673179 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_656
  oldLo := (18600000000000001 / 20000000000000000 : ℚ)
  oldHi := (93149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2127, piece_2128, piece_2129]
}

def cell_7193 : Cell := { cellDefaults with
  domain := ⟨(204750000000000007 / 800000000000000000 : ℚ), (25600000000000001 / 100000000000000000 : ℚ)⟩
  r := (86698091000847 / 100000000000000 : ℚ)
  w := (737886119487 / 400000000000 : ℚ)
  center := (81910000000000003 / 320000000000000000 : ℚ)
  supportValue := (1860410278968853 / 2000000000000000 : ℚ)
  supportSlope := (-8817448996101087 / 1000000000000000 : ℚ)
  oldCenter := (1860410278968853 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_656
  oldLo := (92949999999999999 / 100000000000000000 : ℚ)
  oldHi := (93049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2126, piece_2127]
}

def cell_7194 : Cell := { cellDefaults with
  domain := ⟨(25600000000000001 / 100000000000000000 : ℚ), (25606250000000001 / 100000000000000000 : ℚ)⟩
  r := (43310450736087 / 50000000000000 : ℚ)
  w := (18434619505477 / 10000000000000 : ℚ)
  center := (25603125000000001 / 100000000000000000 : ℚ)
  supportValue := (465882195798147 / 500000000000000 : ℚ)
  supportSlope := (-8832593805539801 / 1000000000000000 : ℚ)
  oldCenter := (465882195798147 / 500000000000000 : ℚ)
  newCoefficients := coefficients_657
  oldLo := (18620000000000001 / 20000000000000000 : ℚ)
  oldHi := (373 / 400 : ℚ)
  oldPieces := [piece_2129, piece_2130, piece_2131]
}

def cell_7195 : Cell := { cellDefaults with
  domain := ⟨(25606250000000001 / 100000000000000000 : ℚ), (25612500000000001 / 100000000000000000 : ℚ)⟩
  r := (43310450736087 / 50000000000000 : ℚ)
  w := (18434619505477 / 10000000000000 : ℚ)
  center := (25609375000000001 / 100000000000000000 : ℚ)
  supportValue := (2328031530721129 / 2500000000000000 : ℚ)
  supportSlope := (-8824355648012983 / 1000000000000000 : ℚ)
  oldCenter := (2328031530721129 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_657
  oldLo := (93049999999999999 / 100000000000000000 : ℚ)
  oldHi := (93149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2128, piece_2129]
}

def cell_7196 : Cell := { cellDefaults with
  domain := ⟨(25612500000000001 / 100000000000000000 : ℚ), (25618750000000001 / 100000000000000000 : ℚ)⟩
  r := (43310450736087 / 50000000000000 : ℚ)
  w := (18434619505477 / 10000000000000 : ℚ)
  center := (25615625000000001 / 100000000000000000 : ℚ)
  supportValue := (581663345769143 / 625000000000000 : ℚ)
  supportSlope := (-2204008707549221 / 250000000000000 : ℚ)
  oldCenter := (581663345769143 / 625000000000000 : ℚ)
  newCoefficients := coefficients_657
  oldLo := (18600000000000001 / 20000000000000000 : ℚ)
  oldHi := (18620000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2127, piece_2128]
}

def cell_7197 : Cell := { cellDefaults with
  domain := ⟨(25618750000000001 / 100000000000000000 : ℚ), (25625000000000001 / 100000000000000000 : ℚ)⟩
  r := (43310450736087 / 50000000000000 : ℚ)
  w := (18434619505477 / 10000000000000 : ℚ)
  center := (25621875000000001 / 100000000000000000 : ℚ)
  supportValue := (116263826748587 / 125000000000000 : ℚ)
  supportSlope := (-1761544186483377 / 200000000000000 : ℚ)
  oldCenter := (116263826748587 / 125000000000000 : ℚ)
  newCoefficients := coefficients_657
  oldLo := (92949999999999999 / 100000000000000000 : ℚ)
  oldHi := (93049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2126, piece_2127]
}

def cell_7198 : Cell := { cellDefaults with
  domain := ⟨(25625000000000001 / 100000000000000000 : ℚ), (25631250000000001 / 100000000000000000 : ℚ)⟩
  r := (43310450736087 / 50000000000000 : ℚ)
  w := (18434619505477 / 10000000000000 : ℚ)
  center := (25628125000000001 / 100000000000000000 : ℚ)
  supportValue := (9295603941324623 / 10000000000000000 : ℚ)
  supportSlope := (-1759882787465017 / 200000000000000 : ℚ)
  oldCenter := (9295603941324623 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_657
  oldLo := (18580000000000001 / 20000000000000000 : ℚ)
  oldHi := (18600000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2125, piece_2126]
}

def cell_7199 : Cell := { cellDefaults with
  domain := ⟨(25631250000000001 / 100000000000000000 : ℚ), (25637500000000001 / 100000000000000000 : ℚ)⟩
  r := (43310450736087 / 50000000000000 : ℚ)
  w := (18434619505477 / 10000000000000 : ℚ)
  center := (25634375000000001 / 100000000000000000 : ℚ)
  supportValue := (4645053466126491 / 5000000000000000 : ℚ)
  supportSlope := (-2197778486629609 / 250000000000000 : ℚ)
  oldCenter := (4645053466126491 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_657
  oldLo := (92849999999999999 / 100000000000000000 : ℚ)
  oldHi := (92949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2124, piece_2125]
}

theorem check_7150 : cell_7150.check = true := by
  decide +kernel

theorem check_7151 : cell_7151.check = true := by
  decide +kernel

theorem check_7152 : cell_7152.check = true := by
  decide +kernel

theorem check_7153 : cell_7153.check = true := by
  decide +kernel

theorem check_7154 : cell_7154.check = true := by
  decide +kernel

theorem check_7155 : cell_7155.check = true := by
  decide +kernel

theorem check_7156 : cell_7156.check = true := by
  decide +kernel

theorem check_7157 : cell_7157.check = true := by
  decide +kernel

theorem check_7158 : cell_7158.check = true := by
  decide +kernel

theorem check_7159 : cell_7159.check = true := by
  decide +kernel

theorem check_7160 : cell_7160.check = true := by
  decide +kernel

theorem check_7161 : cell_7161.check = true := by
  decide +kernel

theorem check_7162 : cell_7162.check = true := by
  decide +kernel

theorem check_7163 : cell_7163.check = true := by
  decide +kernel

theorem check_7164 : cell_7164.check = true := by
  decide +kernel

theorem check_7165 : cell_7165.check = true := by
  decide +kernel

theorem check_7166 : cell_7166.check = true := by
  decide +kernel

theorem check_7167 : cell_7167.check = true := by
  decide +kernel

theorem check_7168 : cell_7168.check = true := by
  decide +kernel

theorem check_7169 : cell_7169.check = true := by
  decide +kernel

theorem check_7170 : cell_7170.check = true := by
  decide +kernel

theorem check_7171 : cell_7171.check = true := by
  decide +kernel

theorem check_7172 : cell_7172.check = true := by
  decide +kernel

theorem check_7173 : cell_7173.check = true := by
  decide +kernel

theorem check_7174 : cell_7174.check = true := by
  decide +kernel

theorem check_7175 : cell_7175.check = true := by
  decide +kernel

theorem check_7176 : cell_7176.check = true := by
  decide +kernel

theorem check_7177 : cell_7177.check = true := by
  decide +kernel

theorem check_7178 : cell_7178.check = true := by
  decide +kernel

theorem check_7179 : cell_7179.check = true := by
  decide +kernel

theorem check_7180 : cell_7180.check = true := by
  decide +kernel

theorem check_7181 : cell_7181.check = true := by
  decide +kernel

theorem check_7182 : cell_7182.check = true := by
  decide +kernel

theorem check_7183 : cell_7183.check = true := by
  decide +kernel

theorem check_7184 : cell_7184.check = true := by
  decide +kernel

theorem check_7185 : cell_7185.check = true := by
  decide +kernel

theorem check_7186 : cell_7186.check = true := by
  decide +kernel

theorem check_7187 : cell_7187.check = true := by
  decide +kernel

theorem check_7188 : cell_7188.check = true := by
  decide +kernel

theorem check_7189 : cell_7189.check = true := by
  decide +kernel

theorem check_7190 : cell_7190.check = true := by
  decide +kernel

theorem check_7191 : cell_7191.check = true := by
  decide +kernel

theorem check_7192 : cell_7192.check = true := by
  decide +kernel

theorem check_7193 : cell_7193.check = true := by
  decide +kernel

theorem check_7194 : cell_7194.check = true := by
  decide +kernel

theorem check_7195 : cell_7195.check = true := by
  decide +kernel

theorem check_7196 : cell_7196.check = true := by
  decide +kernel

theorem check_7197 : cell_7197.check = true := by
  decide +kernel

theorem check_7198 : cell_7198.check = true := by
  decide +kernel

theorem check_7199 : cell_7199.check = true := by
  decide +kernel

def cells : List Cell := [cell_7150, cell_7151, cell_7152, cell_7153, cell_7154, cell_7155, cell_7156, cell_7157, cell_7158, cell_7159, cell_7160, cell_7161, cell_7162, cell_7163, cell_7164, cell_7165, cell_7166, cell_7167, cell_7168, cell_7169, cell_7170, cell_7171, cell_7172, cell_7173, cell_7174, cell_7175, cell_7176, cell_7177, cell_7178, cell_7179, cell_7180, cell_7181, cell_7182, cell_7183, cell_7184, cell_7185, cell_7186, cell_7187, cell_7188, cell_7189, cell_7190, cell_7191, cell_7192, cell_7193, cell_7194, cell_7195, cell_7196, cell_7197, cell_7198, cell_7199]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7150, check_7151, check_7152, check_7153, check_7154, check_7155, check_7156, check_7157, check_7158, check_7159, check_7160, check_7161, check_7162, check_7163, check_7164, check_7165, check_7166, check_7167, check_7168, check_7169, check_7170, check_7171, check_7172, check_7173, check_7174, check_7175, check_7176, check_7177, check_7178, check_7179, check_7180, check_7181, check_7182, check_7183, check_7184, check_7185, check_7186, check_7187, check_7188, check_7189, check_7190, check_7191, check_7192, check_7193, check_7194, check_7195, check_7196, check_7197, check_7198, check_7199, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0143

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0143
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0143
open AnalyticBounds.ExpressionCertificate

theorem linked_7150 : Linked cell_7150 pieces := by
  refine ⟨piece_650,piece_650_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7150,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2154_mem
    · exact piece_2155_mem

theorem linked_7151 : Linked cell_7151 pieces := by
  refine ⟨piece_651,piece_651_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7151,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2154_mem

theorem linked_7152 : Linked cell_7152 pieces := by
  refine ⟨piece_651,piece_651_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7152,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2153_mem
    · exact piece_2154_mem

theorem linked_7153 : Linked cell_7153 pieces := by
  refine ⟨piece_651,piece_651_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7153,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2152_mem
    · exact piece_2153_mem

theorem linked_7154 : Linked cell_7154 pieces := by
  refine ⟨piece_652,piece_652_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7154,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2155_mem
    · exact piece_2156_mem

theorem linked_7155 : Linked cell_7155 pieces := by
  refine ⟨piece_652,piece_652_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7155,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2154_mem
    · exact piece_2155_mem

theorem linked_7156 : Linked cell_7156 pieces := by
  refine ⟨piece_652,piece_652_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7156,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2153_mem
    · exact piece_2154_mem

theorem linked_7157 : Linked cell_7157 pieces := by
  refine ⟨piece_652,piece_652_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7157,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2151_mem
    · exact piece_2152_mem
    · exact piece_2153_mem

theorem linked_7158 : Linked cell_7158 pieces := by
  refine ⟨piece_652,piece_652_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7158,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2150_mem
    · exact piece_2151_mem

theorem linked_7159 : Linked cell_7159 pieces := by
  refine ⟨piece_652,piece_652_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7159,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2149_mem
    · exact piece_2150_mem

theorem linked_7160 : Linked cell_7160 pieces := by
  refine ⟨piece_652,piece_652_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7160,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2148_mem
    · exact piece_2149_mem

theorem linked_7161 : Linked cell_7161 pieces := by
  refine ⟨piece_652,piece_652_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7161,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2147_mem
    · exact piece_2148_mem

theorem linked_7162 : Linked cell_7162 pieces := by
  refine ⟨piece_653,piece_653_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7162,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2150_mem
    · exact piece_2151_mem

theorem linked_7163 : Linked cell_7163 pieces := by
  refine ⟨piece_653,piece_653_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7163,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2149_mem
    · exact piece_2150_mem

theorem linked_7164 : Linked cell_7164 pieces := by
  refine ⟨piece_653,piece_653_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7164,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2148_mem
    · exact piece_2149_mem

theorem linked_7165 : Linked cell_7165 pieces := by
  refine ⟨piece_653,piece_653_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7165,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2146_mem
    · exact piece_2147_mem
    · exact piece_2148_mem

theorem linked_7166 : Linked cell_7166 pieces := by
  refine ⟨piece_653,piece_653_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7166,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2145_mem
    · exact piece_2146_mem

theorem linked_7167 : Linked cell_7167 pieces := by
  refine ⟨piece_653,piece_653_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7167,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2143_mem
    · exact piece_2144_mem
    · exact piece_2145_mem

theorem linked_7168 : Linked cell_7168 pieces := by
  refine ⟨piece_653,piece_653_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7168,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2142_mem
    · exact piece_2143_mem

theorem linked_7169 : Linked cell_7169 pieces := by
  refine ⟨piece_653,piece_653_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7169,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2141_mem
    · exact piece_2142_mem

theorem linked_7170 : Linked cell_7170 pieces := by
  refine ⟨piece_654,piece_654_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7170,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2144_mem
    · exact piece_2145_mem
    · exact piece_2146_mem

theorem linked_7171 : Linked cell_7171 pieces := by
  refine ⟨piece_654,piece_654_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7171,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2143_mem
    · exact piece_2144_mem

theorem linked_7172 : Linked cell_7172 pieces := by
  refine ⟨piece_654,piece_654_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7172,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2142_mem
    · exact piece_2143_mem

theorem linked_7173 : Linked cell_7173 pieces := by
  refine ⟨piece_654,piece_654_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7173,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2141_mem
    · exact piece_2142_mem

theorem linked_7174 : Linked cell_7174 pieces := by
  refine ⟨piece_654,piece_654_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7174,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2140_mem
    · exact piece_2141_mem

theorem linked_7175 : Linked cell_7175 pieces := by
  refine ⟨piece_654,piece_654_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7175,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2139_mem
    · exact piece_2140_mem

theorem linked_7176 : Linked cell_7176 pieces := by
  refine ⟨piece_654,piece_654_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7176,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2138_mem
    · exact piece_2139_mem

theorem linked_7177 : Linked cell_7177 pieces := by
  refine ⟨piece_654,piece_654_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7177,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2137_mem
    · exact piece_2138_mem

theorem linked_7178 : Linked cell_7178 pieces := by
  refine ⟨piece_655,piece_655_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7178,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2140_mem
    · exact piece_2141_mem

theorem linked_7179 : Linked cell_7179 pieces := by
  refine ⟨piece_655,piece_655_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7179,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2139_mem
    · exact piece_2140_mem

theorem linked_7180 : Linked cell_7180 pieces := by
  refine ⟨piece_655,piece_655_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7180,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2138_mem
    · exact piece_2139_mem

theorem linked_7181 : Linked cell_7181 pieces := by
  refine ⟨piece_655,piece_655_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7181,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2136_mem
    · exact piece_2137_mem
    · exact piece_2138_mem

theorem linked_7182 : Linked cell_7182 pieces := by
  refine ⟨piece_655,piece_655_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7182,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2135_mem
    · exact piece_2136_mem

theorem linked_7183 : Linked cell_7183 pieces := by
  refine ⟨piece_655,piece_655_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7183,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2133_mem
    · exact piece_2134_mem
    · exact piece_2135_mem

theorem linked_7184 : Linked cell_7184 pieces := by
  refine ⟨piece_655,piece_655_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7184,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2132_mem
    · exact piece_2133_mem

theorem linked_7185 : Linked cell_7185 pieces := by
  refine ⟨piece_655,piece_655_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7185,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2131_mem
    · exact piece_2132_mem

theorem linked_7186 : Linked cell_7186 pieces := by
  refine ⟨piece_656,piece_656_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7186,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2135_mem
    · exact piece_2136_mem

theorem linked_7187 : Linked cell_7187 pieces := by
  refine ⟨piece_656,piece_656_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7187,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2133_mem
    · exact piece_2134_mem
    · exact piece_2135_mem

theorem linked_7188 : Linked cell_7188 pieces := by
  refine ⟨piece_656,piece_656_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7188,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2132_mem
    · exact piece_2133_mem

theorem linked_7189 : Linked cell_7189 pieces := by
  refine ⟨piece_656,piece_656_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7189,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2131_mem
    · exact piece_2132_mem

theorem linked_7190 : Linked cell_7190 pieces := by
  refine ⟨piece_656,piece_656_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7190,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2130_mem
    · exact piece_2131_mem

theorem linked_7191 : Linked cell_7191 pieces := by
  refine ⟨piece_656,piece_656_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7191,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2129_mem
    · exact piece_2130_mem

theorem linked_7192 : Linked cell_7192 pieces := by
  refine ⟨piece_656,piece_656_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7192,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2127_mem
    · exact piece_2128_mem
    · exact piece_2129_mem

theorem linked_7193 : Linked cell_7193 pieces := by
  refine ⟨piece_656,piece_656_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7193,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2126_mem
    · exact piece_2127_mem

theorem linked_7194 : Linked cell_7194 pieces := by
  refine ⟨piece_657,piece_657_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7194,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2129_mem
    · exact piece_2130_mem
    · exact piece_2131_mem

theorem linked_7195 : Linked cell_7195 pieces := by
  refine ⟨piece_657,piece_657_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7195,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2128_mem
    · exact piece_2129_mem

theorem linked_7196 : Linked cell_7196 pieces := by
  refine ⟨piece_657,piece_657_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7196,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2127_mem
    · exact piece_2128_mem

theorem linked_7197 : Linked cell_7197 pieces := by
  refine ⟨piece_657,piece_657_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7197,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2126_mem
    · exact piece_2127_mem

theorem linked_7198 : Linked cell_7198 pieces := by
  refine ⟨piece_657,piece_657_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7198,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2125_mem
    · exact piece_2126_mem

theorem linked_7199 : Linked cell_7199 pieces := by
  refine ⟨piece_657,piece_657_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7199,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2124_mem
    · exact piece_2125_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0143.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0143.cells,List.forall_mem_cons]
  exact ⟨linked_7150, linked_7151, linked_7152, linked_7153, linked_7154, linked_7155, linked_7156, linked_7157, linked_7158, linked_7159, linked_7160, linked_7161, linked_7162, linked_7163, linked_7164, linked_7165, linked_7166, linked_7167, linked_7168, linked_7169, linked_7170, linked_7171, linked_7172, linked_7173, linked_7174, linked_7175, linked_7176, linked_7177, linked_7178, linked_7179, linked_7180, linked_7181, linked_7182, linked_7183, linked_7184, linked_7185, linked_7186, linked_7187, linked_7188, linked_7189, linked_7190, linked_7191, linked_7192, linked_7193, linked_7194, linked_7195, linked_7196, linked_7197, linked_7198, linked_7199, by simp⟩

theorem covered : covers (50660195530726257 / 200000000000000000 : ℚ) (25637500000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0143.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0143
