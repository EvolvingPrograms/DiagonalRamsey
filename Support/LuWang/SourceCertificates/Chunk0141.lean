import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0141
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(3941 / 16000 : ℚ), (1971 / 8000 : ℚ)⟩
  branch := .left
  r := (22031266348427 / 25000000000000 : ℚ)
  w := (18676629502281 / 10000000000000 : ℚ)
  center := (7883 / 32000 : ℚ)
  supportValue := (4887002893165429 / 5000000000000000 : ℚ)
  supportSlope := (-10315293247870727 / 1000000000000000 : ℚ)
  oldCenter := (4887002893165429 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_636
  oldLo := (97500000000000009 / 100000000000000000 : ℚ)
  oldHi := (97550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2229, piece_2230]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7050 : Cell := { cellDefaults with
  r := (44106298481413 / 50000000000000 : ℚ)
  w := (18694367881099 / 10000000000000 : ℚ)
  newCoefficients := coefficients_635
  oldLo := (97700000000000009 / 100000000000000000 : ℚ)
  oldHi := (977877094972067 / 1000000000000000 : ℚ)
  oldPieces := [piece_2229, piece_2230]
}

def cell_7051 : Cell := { cellDefaults with
  domain := ⟨(1971 / 8000 : ℚ), (3943 / 16000 : ℚ)⟩
  r := (44106298481413 / 50000000000000 : ℚ)
  w := (18694367881099 / 10000000000000 : ℚ)
  center := (1577 / 6400 : ℚ)
  supportValue := (9767393095592489 / 10000000000000000 : ℚ)
  supportSlope := (-5422444921610037 / 500000000000000 : ℚ)
  oldCenter := (9767393095592489 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_635
  oldLo := (97600000000000009 / 100000000000000000 : ℚ)
  oldHi := (24437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2227, piece_2228, piece_2229]
}

def cell_7052 : Cell := { cellDefaults with
  domain := ⟨(3943 / 16000 : ℚ), (493 / 2000 : ℚ)⟩
  r := (44106298481413 / 50000000000000 : ℚ)
  w := (18694367881099 / 10000000000000 : ℚ)
  center := (7887 / 32000 : ℚ)
  supportValue := (1220056209620447 / 1250000000000000 : ℚ)
  supportSlope := (-5686952960251901 / 500000000000000 : ℚ)
  oldCenter := (1220056209620447 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_635
  oldLo := (97550000000000003 / 100000000000000000 : ℚ)
  oldHi := (97650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2226, piece_2227]
}

def cell_7053 : Cell := { cellDefaults with
  domain := ⟨(493 / 2000 : ℚ), (789 / 3200 : ℚ)⟩
  center := (7889 / 32000 : ℚ)
  supportValue := (4890322598672853 / 5000000000000000 : ℚ)
  supportSlope := (-2648756581424827 / 250000000000000 : ℚ)
  oldCenter := (4890322598672853 / 5000000000000000 : ℚ)
  oldLo := (24437500000000001 / 25000000000000000 : ℚ)
  oldHi := (24462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2230, piece_2231, piece_2232]
}

def cell_7054 : Cell := { cellDefaults with
  domain := ⟨(789 / 3200 : ℚ), (1973 / 8000 : ℚ)⟩
  center := (7891 / 32000 : ℚ)
  supportValue := (610880053831091 / 625000000000000 : ℚ)
  supportSlope := (-10410606715410609 / 1000000000000000 : ℚ)
  oldCenter := (610880053831091 / 625000000000000 : ℚ)
  oldLo := (97700000000000009 / 100000000000000000 : ℚ)
  oldHi := (977877094972067 / 1000000000000000 : ℚ)
  oldPieces := [piece_2229, piece_2230]
}

def cell_7055 : Cell := { cellDefaults with
  domain := ⟨(1973 / 8000 : ℚ), (3947 / 16000 : ℚ)⟩
  center := (7893 / 32000 : ℚ)
  supportValue := (4883815839857097 / 5000000000000000 : ℚ)
  supportSlope := (-1022647981780267 / 100000000000000 : ℚ)
  oldCenter := (4883815839857097 / 5000000000000000 : ℚ)
  oldLo := (97600000000000009 / 100000000000000000 : ℚ)
  oldHi := (24437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2227, piece_2228, piece_2229]
}

def cell_7056 : Cell := { cellDefaults with
  domain := ⟨(3947 / 16000 : ℚ), (987 / 4000 : ℚ)⟩
  center := (1579 / 6400 : ℚ)
  supportValue := (610081099701779 / 625000000000000 : ℚ)
  supportSlope := (-502126634787281 / 50000000000000 : ℚ)
  oldCenter := (610081099701779 / 625000000000000 : ℚ)
  oldLo := (97550000000000003 / 100000000000000000 : ℚ)
  oldHi := (97650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2226, piece_2227]
}

def cell_7057 : Cell := { cellDefaults with
  domain := ⟨(987 / 4000 : ℚ), (7897 / 32000 : ℚ)⟩
  center := (15793 / 64000 : ℚ)
  supportValue := (4878267322624061 / 5000000000000000 : ℚ)
  supportSlope := (-4952191381075721 / 500000000000000 : ℚ)
  oldCenter := (4878267322624061 / 5000000000000000 : ℚ)
  oldHi := (97600000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2225, piece_2226]
}

def cell_7058 : Cell := { cellDefaults with
  domain := ⟨(7897 / 32000 : ℚ), (3949 / 16000 : ℚ)⟩
  center := (3159 / 12800 : ℚ)
  supportValue := (9753453817713559 / 10000000000000000 : ℚ)
  supportSlope := (-1962579766072281 / 200000000000000 : ℚ)
  oldCenter := (9753453817713559 / 10000000000000000 : ℚ)
  oldPieces := [piece_2225]
}

def cell_7059 : Cell := { cellDefaults with
  domain := ⟨(3949 / 16000 : ℚ), (15797 / 64000 : ℚ)⟩
  center := (31593 / 128000 : ℚ)
  supportValue := (2437788805123979 / 2500000000000000 : ℚ)
  supportSlope := (-974353979074749 / 100000000000000 : ℚ)
  oldCenter := (2437788805123979 / 2500000000000000 : ℚ)
  oldPieces := [piece_2225]
}

def cell_7060 : Cell := { cellDefaults with
  domain := ⟨(15797 / 64000 : ℚ), (7899 / 32000 : ℚ)⟩
  center := (6319 / 25600 : ℚ)
  supportValue := (4874818182073111 / 5000000000000000 : ℚ)
  supportSlope := (-4849042275331783 / 500000000000000 : ℚ)
  oldCenter := (4874818182073111 / 5000000000000000 : ℚ)
  oldLo := (97450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2224, piece_2225]
}

def cell_7061 : Cell := { cellDefaults with
  domain := ⟨(7899 / 32000 : ℚ), (15799 / 64000 : ℚ)⟩
  center := (31597 / 128000 : ℚ)
  supportValue := (4874062303415931 / 5000000000000000 : ℚ)
  supportSlope := (-1206517513107741 / 125000000000000 : ℚ)
  oldCenter := (4874062303415931 / 5000000000000000 : ℚ)
  oldLo := (97450000000000003 / 100000000000000000 : ℚ)
  oldHi := (97500000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2224]
}

def cell_7062 : Cell := { cellDefaults with
  domain := ⟨(15799 / 64000 : ℚ), (79 / 320 : ℚ)⟩
  center := (31599 / 128000 : ℚ)
  supportValue := (4873310034436213 / 5000000000000000 : ℚ)
  supportSlope := (-4802971872287287 / 500000000000000 : ℚ)
  oldCenter := (4873310034436213 / 5000000000000000 : ℚ)
  oldLo := (97450000000000003 / 100000000000000000 : ℚ)
  oldHi := (97500000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2224]
}

def cell_7063 : Cell := { cellDefaults with
  domain := ⟨(79 / 320 : ℚ), (7901 / 32000 : ℚ)⟩
  center := (15801 / 64000 : ℚ)
  supportValue := (97443835473353 / 100000000000000 : ℚ)
  supportSlope := (-9537399931673463 / 1000000000000000 : ℚ)
  oldCenter := (97443835473353 / 100000000000000 : ℚ)
  oldLo := (97400000000000009 / 100000000000000000 : ℚ)
  oldHi := (97500000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2223, piece_2224]
}

def cell_7064 : Cell := { cellDefaults with
  domain := ⟨(7901 / 32000 : ℚ), (3951 / 16000 : ℚ)⟩
  center := (15803 / 64000 : ℚ)
  supportValue := (1217677180136331 / 1250000000000000 : ℚ)
  supportSlope := (-236135036116103 / 25000000000000 : ℚ)
  oldCenter := (1217677180136331 / 1250000000000000 : ℚ)
  oldLo := (97350000000000003 / 100000000000000000 : ℚ)
  oldHi := (97450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2222, piece_2223]
}

def cell_7065 : Cell := { cellDefaults with
  domain := ⟨(3951 / 16000 : ℚ), (247 / 1000 : ℚ)⟩
  center := (7903 / 32000 : ℚ)
  supportValue := (9737109664248133 / 10000000000000000 : ℚ)
  supportSlope := (-9308167343068163 / 1000000000000000 : ℚ)
  oldCenter := (9737109664248133 / 10000000000000000 : ℚ)
  oldLo := (97300000000000009 / 100000000000000000 : ℚ)
  oldHi := (97450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2221, piece_2222, piece_2223]
}

def cell_7066 : Cell := { cellDefaults with
  domain := ⟨(247 / 1000 : ℚ), (1977 / 8000 : ℚ)⟩
  r := (1375685305503 / 1562500000000 : ℚ)
  w := (9331862546831 / 5000000000000 : ℚ)
  center := (3953 / 16000 : ℚ)
  supportValue := (1218870473902121 / 1250000000000000 : ℚ)
  supportSlope := (-2431183953554239 / 250000000000000 : ℚ)
  oldCenter := (1218870473902121 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_637
  oldLo := (97400000000000009 / 100000000000000000 : ℚ)
  oldHi := (97600000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2223, piece_2224, piece_2225, piece_2226]
}

def cell_7067 : Cell := { cellDefaults with
  domain := ⟨(1977 / 8000 : ℚ), (989 / 4000 : ℚ)⟩
  r := (1375685305503 / 1562500000000 : ℚ)
  w := (9331862546831 / 5000000000000 : ℚ)
  center := (791 / 3200 : ℚ)
  supportValue := (4869420796216221 / 5000000000000000 : ℚ)
  supportSlope := (-4835297307967501 / 500000000000000 : ℚ)
  oldCenter := (4869420796216221 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_637
  oldLo := (97300000000000009 / 100000000000000000 : ℚ)
  oldHi := (97450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2221, piece_2222, piece_2223]
}

def cell_7068 : Cell := { cellDefaults with
  domain := ⟨(989 / 4000 : ℚ), (1979 / 8000 : ℚ)⟩
  r := (1375685305503 / 1562500000000 : ℚ)
  w := (9331862546831 / 5000000000000 : ℚ)
  center := (3957 / 16000 : ℚ)
  supportValue := (9726787124509487 / 10000000000000000 : ℚ)
  supportSlope := (-9616385739413147 / 1000000000000000 : ℚ)
  oldCenter := (9726787124509487 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_637
  oldLo := (97200000000000009 / 100000000000000000 : ℚ)
  oldHi := (97350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2218, piece_2219, piece_2220, piece_2221]
}

def cell_7069 : Cell := { cellDefaults with
  domain := ⟨(1979 / 8000 : ℚ), (99 / 400 : ℚ)⟩
  r := (1375685305503 / 1562500000000 : ℚ)
  w := (9331862546831 / 5000000000000 : ℚ)
  center := (3959 / 16000 : ℚ)
  supportValue := (2428700081143703 / 2500000000000000 : ℚ)
  supportSlope := (-9562385846461297 / 1000000000000000 : ℚ)
  oldCenter := (2428700081143703 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_637
  oldLo := (97050000000000003 / 100000000000000000 : ℚ)
  oldHi := (9723463687150837 / 10000000000000000 : ℚ)
  oldPieces := [piece_2215, piece_2216, piece_2217, piece_2218]
}

def cell_7070 : Cell := { cellDefaults with
  domain := ⟨(99 / 400 : ℚ), (1981 / 8000 : ℚ)⟩
  r := (17592580372279 / 20000000000000 : ℚ)
  w := (1865084626107 / 1000000000000 : ℚ)
  center := (3961 / 16000 : ℚ)
  supportValue := (1945098024909287 / 2000000000000000 : ℚ)
  supportSlope := (-9598047221647477 / 1000000000000000 : ℚ)
  oldCenter := (1945098024909287 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_638
  oldLo := (97150000000000003 / 100000000000000000 : ℚ)
  oldHi := (97350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2217, piece_2218, piece_2219, piece_2220, piece_2221]
}

def cell_7071 : Cell := { cellDefaults with
  domain := ⟨(1981 / 8000 : ℚ), (991 / 4000 : ℚ)⟩
  r := (17592580372279 / 20000000000000 : ℚ)
  w := (1865084626107 / 1000000000000 : ℚ)
  center := (3963 / 16000 : ℚ)
  supportValue := (1942700866050899 / 2000000000000000 : ℚ)
  supportSlope := (-1197390882435867 / 125000000000000 : ℚ)
  oldCenter := (1942700866050899 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_638
  oldLo := (97050000000000003 / 100000000000000000 : ℚ)
  oldHi := (97200000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2215, piece_2216, piece_2217]
}

def cell_7072 : Cell := { cellDefaults with
  domain := ⟨(991 / 4000 : ℚ), (2478212290502793 / 10000000000000000 : ℚ)⟩
  r := (17592580372279 / 20000000000000 : ℚ)
  w := (1865084626107 / 1000000000000 : ℚ)
  center := (4955712290502793 / 20000000000000000 : ℚ)
  supportValue := (9704093729404359 / 10000000000000000 : ℚ)
  supportSlope := (-239104133377313 / 25000000000000 : ℚ)
  oldCenter := (9704093729404359 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_638
  oldLo := (12125000000000001 / 12500000000000000 : ℚ)
  oldHi := (97100000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2214, piece_2215]
}

def cell_7073 : Cell := { cellDefaults with
  domain := ⟨(2478212290502793 / 10000000000000000 : ℚ), (31 / 125 : ℚ)⟩
  r := (17592580372279 / 20000000000000 : ℚ)
  w := (1865084626107 / 1000000000000 : ℚ)
  center := (4958212290502793 / 20000000000000000 : ℚ)
  supportValue := (9692214382267783 / 10000000000000000 : ℚ)
  supportSlope := (-957123281550921 / 100000000000000 : ℚ)
  oldCenter := (9692214382267783 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_639
  oldLo := (12100000000000001 / 12500000000000000 : ℚ)
  oldHi := (97050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2210, piece_2211, piece_2212, piece_2213, piece_2214]
}

def cell_7074 : Cell := { cellDefaults with
  domain := ⟨(31 / 125 : ℚ), (397 / 1600 : ℚ)⟩
  r := (87882136158491 / 100000000000000 : ℚ)
  w := (3727590233407 / 2000000000000 : ℚ)
  center := (3969 / 16000 : ℚ)
  supportValue := (4850134125408417 / 5000000000000000 : ℚ)
  supportSlope := (-1196760867053559 / 125000000000000 : ℚ)
  oldCenter := (4850134125408417 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_640
  oldLo := (12112500000000001 / 12500000000000000 : ℚ)
  oldHi := (97100000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2212, piece_2213, piece_2214, piece_2215]
}

def cell_7075 : Cell := { cellDefaults with
  domain := ⟨(397 / 1600 : ℚ), (993 / 4000 : ℚ)⟩
  r := (87882136158491 / 100000000000000 : ℚ)
  w := (3727590233407 / 2000000000000 : ℚ)
  center := (3971 / 16000 : ℚ)
  supportValue := (9688312182291307 / 10000000000000000 : ℚ)
  supportSlope := (-1194438357614791 / 125000000000000 : ℚ)
  oldCenter := (9688312182291307 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_640
  oldLo := (12100000000000001 / 12500000000000000 : ℚ)
  oldHi := (96950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2210, piece_2211, piece_2212]
}

def cell_7076 : Cell := { cellDefaults with
  domain := ⟨(993 / 4000 : ℚ), (1987 / 8000 : ℚ)⟩
  r := (87882136158491 / 100000000000000 : ℚ)
  w := (3727590233407 / 2000000000000 : ℚ)
  center := (3973 / 16000 : ℚ)
  supportValue := (9676379428989689 / 10000000000000000 : ℚ)
  supportSlope := (-4768424216934797 / 500000000000000 : ℚ)
  oldCenter := (9676379428989689 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_640
  oldLo := (12087500000000001 / 12500000000000000 : ℚ)
  oldHi := (96850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2208, piece_2209, piece_2210]
}

def cell_7077 : Cell := { cellDefaults with
  domain := ⟨(1987 / 8000 : ℚ), (497 / 2000 : ℚ)⟩
  r := (87882136158491 / 100000000000000 : ℚ)
  w := (3727590233407 / 2000000000000 : ℚ)
  center := (159 / 640 : ℚ)
  supportValue := (9664469917003919 / 10000000000000000 : ℚ)
  supportSlope := (-297448646708387 / 31250000000000 : ℚ)
  oldCenter := (9664469917003919 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_640
  oldLo := (48275000000000001 / 50000000000000000 : ℚ)
  oldHi := (96750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2204, piece_2205, piece_2206, piece_2207, piece_2208]
}

def cell_7078 : Cell := { cellDefaults with
  domain := ⟨(497 / 2000 : ℚ), (1989 / 8000 : ℚ)⟩
  r := (87801608534699 / 100000000000000 : ℚ)
  w := (1862507653571 / 1000000000000 : ℚ)
  center := (3977 / 16000 : ℚ)
  supportValue := (96751240597711 / 100000000000000 : ℚ)
  supportSlope := (-9525216686077087 / 1000000000000000 : ℚ)
  oldCenter := (96751240597711 / 100000000000000 : ℚ)
  newCoefficients := coefficients_641
  oldLo := (1933631284916201 / 2000000000000000 : ℚ)
  oldHi := (96850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2207, piece_2208, piece_2209, piece_2210]
}

def cell_7079 : Cell := { cellDefaults with
  domain := ⟨(1989 / 8000 : ℚ), (199 / 800 : ℚ)⟩
  r := (87801608534699 / 100000000000000 : ℚ)
  w := (1862507653571 / 1000000000000 : ℚ)
  center := (3979 / 16000 : ℚ)
  supportValue := (1932645797216777 / 2000000000000000 : ℚ)
  supportSlope := (-2376693577619271 / 250000000000000 : ℚ)
  oldCenter := (1932645797216777 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_641
  oldLo := (48275000000000001 / 50000000000000000 : ℚ)
  oldHi := (12087500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2204, piece_2205, piece_2206, piece_2207]
}

def cell_7080 : Cell := { cellDefaults with
  domain := ⟨(199 / 800 : ℚ), (1991 / 8000 : ℚ)⟩
  r := (87801608534699 / 100000000000000 : ℚ)
  w := (1862507653571 / 1000000000000 : ℚ)
  center := (3981 / 16000 : ℚ)
  supportValue := (965135705438463 / 1000000000000000 : ℚ)
  supportSlope := (-4744133417533547 / 500000000000000 : ℚ)
  oldCenter := (965135705438463 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_641
  oldLo := (48225000000000001 / 50000000000000000 : ℚ)
  oldHi := (12075000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2202, piece_2203, piece_2204]
}

def cell_7081 : Cell := { cellDefaults with
  domain := ⟨(1991 / 8000 : ℚ), (249 / 1000 : ℚ)⟩
  r := (87801608534699 / 100000000000000 : ℚ)
  w := (1862507653571 / 1000000000000 : ℚ)
  center := (3983 / 16000 : ℚ)
  supportValue := (9639508178395713 / 10000000000000000 : ℚ)
  supportSlope := (-2367480555566459 / 250000000000000 : ℚ)
  oldCenter := (9639508178395713 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_641
  oldLo := (12037500000000001 / 12500000000000000 : ℚ)
  oldHi := (12062500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2199, piece_2200, piece_2201, piece_2202]
}

def cell_7082 : Cell := { cellDefaults with
  domain := ⟨(249 / 1000 : ℚ), (1993 / 8000 : ℚ)⟩
  r := (87721315545603 / 100000000000000 : ℚ)
  w := (9306111497321 / 5000000000000 : ℚ)
  center := (797 / 3200 : ℚ)
  supportValue := (9650122144934669 / 10000000000000000 : ℚ)
  supportSlope := (-9476774521640863 / 1000000000000000 : ℚ)
  oldCenter := (9650122144934669 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_642
  oldLo := (12050000000000001 / 12500000000000000 : ℚ)
  oldHi := (12075000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2201, piece_2202, piece_2203, piece_2204]
}

def cell_7083 : Cell := { cellDefaults with
  domain := ⟨(1993 / 8000 : ℚ), (997 / 4000 : ℚ)⟩
  r := (87721315545603 / 100000000000000 : ℚ)
  w := (9306111497321 / 5000000000000 : ℚ)
  center := (3987 / 16000 : ℚ)
  supportValue := (9638287544471813 / 10000000000000000 : ℚ)
  supportSlope := (-1182307593253551 / 125000000000000 : ℚ)
  oldCenter := (9638287544471813 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_642
  oldLo := (12037500000000001 / 12500000000000000 : ℚ)
  oldHi := (48225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2199, piece_2200, piece_2201]
}

def cell_7084 : Cell := { cellDefaults with
  domain := ⟨(997 / 4000 : ℚ), (399 / 1600 : ℚ)⟩
  r := (87721315545603 / 100000000000000 : ℚ)
  w := (9306111497321 / 5000000000000 : ℚ)
  center := (3989 / 16000 : ℚ)
  supportValue := (4813237961828139 / 5000000000000000 : ℚ)
  supportSlope := (-2360020771559057 / 250000000000000 : ℚ)
  oldCenter := (4813237961828139 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_642
  oldLo := (12025000000000001 / 12500000000000000 : ℚ)
  oldHi := (48175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2197, piece_2198, piece_2199]
}

def cell_7085 : Cell := { cellDefaults with
  domain := ⟨(399 / 1600 : ℚ), (499 / 2000 : ℚ)⟩
  r := (87721315545603 / 100000000000000 : ℚ)
  w := (9306111497321 / 5000000000000 : ℚ)
  center := (3991 / 16000 : ℚ)
  supportValue := (4807343608313441 / 5000000000000000 : ℚ)
  supportSlope := (-9421850687170163 / 1000000000000000 : ℚ)
  oldCenter := (4807343608313441 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_642
  oldLo := (48025000000000001 / 50000000000000000 : ℚ)
  oldHi := (48125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2193, piece_2194, piece_2195, piece_2196, piece_2197]
}

def cell_7086 : Cell := { cellDefaults with
  domain := ⟨(499 / 2000 : ℚ), (1997 / 8000 : ℚ)⟩
  r := (43820628035793 / 50000000000000 : ℚ)
  w := (2324923870029 / 1250000000000 : ℚ)
  center := (3993 / 16000 : ℚ)
  supportValue := (4812630443488829 / 5000000000000000 : ℚ)
  supportSlope := (-9428716161758999 / 1000000000000000 : ℚ)
  oldCenter := (4812630443488829 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_643
  oldLo := (48075000000000001 / 50000000000000000 : ℚ)
  oldHi := (48175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2196, piece_2197, piece_2198, piece_2199]
}

def cell_7087 : Cell := { cellDefaults with
  domain := ⟨(1997 / 8000 : ℚ), (999 / 4000 : ℚ)⟩
  r := (43820628035793 / 50000000000000 : ℚ)
  w := (2324923870029 / 1250000000000 : ℚ)
  center := (799 / 3200 : ℚ)
  supportValue := (9613486284816849 / 10000000000000000 : ℚ)
  supportSlope := (-4705268351059111 / 500000000000000 : ℚ)
  oldCenter := (9613486284816849 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_643
  oldLo := (48025000000000001 / 50000000000000000 : ℚ)
  oldHi := (12025000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2193, piece_2194, piece_2195, piece_2196]
}

def cell_7088 : Cell := { cellDefaults with
  domain := ⟨(999 / 4000 : ℚ), (1999 / 8000 : ℚ)⟩
  r := (43820628035793 / 50000000000000 : ℚ)
  w := (2324923870029 / 1250000000000 : ℚ)
  center := (3997 / 16000 : ℚ)
  supportValue := (9601734492493669 / 10000000000000000 : ℚ)
  supportSlope := (-4696140980980701 / 500000000000000 : ℚ)
  oldCenter := (9601734492493669 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_643
  oldLo := (47975000000000001 / 50000000000000000 : ℚ)
  oldHi := (12012500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2191, piece_2192, piece_2193]
}

def cell_7089 : Cell := { cellDefaults with
  domain := ⟨(1999 / 8000 : ℚ), (1 / 4 : ℚ)⟩
  r := (43820628035793 / 50000000000000 : ℚ)
  w := (2324923870029 / 1250000000000 : ℚ)
  center := (3999 / 16000 : ℚ)
  supportValue := (1918001099474783 / 2000000000000000 : ℚ)
  supportSlope := (-4687070520017933 / 500000000000000 : ℚ)
  oldCenter := (1918001099474783 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_643
  oldLo := (95800000000000007 / 100000000000000000 : ℚ)
  oldHi := (12000000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2188, piece_2189, piece_2190, piece_2191]
}

def cell_7090 : Cell := { cellDefaults with
  domain := ⟨(1 / 4 : ℚ), (2001 / 8000 : ℚ)⟩
  r := (2189035725487 / 2500000000000 : ℚ)
  w := (18586579752049 / 10000000000000 : ℚ)
  center := (4001 / 16000 : ℚ)
  supportValue := (2400136036681019 / 2500000000000000 : ℚ)
  supportSlope := (-9373457268150531 / 1000000000000000 : ℚ)
  oldCenter := (2400136036681019 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_644
  oldLo := (95900000000000007 / 100000000000000000 : ℚ)
  oldHi := (12012500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2190, piece_2191, piece_2192, piece_2193]
}

def cell_7091 : Cell := { cellDefaults with
  domain := ⟨(2001 / 8000 : ℚ), (1001 / 4000 : ℚ)⟩
  r := (2189035725487 / 2500000000000 : ℚ)
  w := (18586579752049 / 10000000000000 : ℚ)
  center := (4003 / 16000 : ℚ)
  supportValue := (599302415986877 / 625000000000000 : ℚ)
  supportSlope := (-9355246755221813 / 1000000000000000 : ℚ)
  oldCenter := (599302415986877 / 625000000000000 : ℚ)
  newCoefficients := coefficients_644
  oldLo := (95800000000000007 / 100000000000000000 : ℚ)
  oldHi := (47975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2188, piece_2189, piece_2190]
}

def cell_7092 : Cell := { cellDefaults with
  domain := ⟨(1001 / 4000 : ℚ), (2003 / 8000 : ℚ)⟩
  r := (2189035725487 / 2500000000000 : ℚ)
  w := (18586579752049 / 10000000000000 : ℚ)
  center := (801 / 3200 : ℚ)
  supportValue := (119714450145187 / 125000000000000 : ℚ)
  supportSlope := (-1867387028875811 / 200000000000000 : ℚ)
  oldCenter := (119714450145187 / 125000000000000 : ℚ)
  newCoefficients := coefficients_644
  oldLo := (95700000000000007 / 100000000000000000 : ℚ)
  oldHi := (47925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2186, piece_2187, piece_2188]
}

def cell_7093 : Cell := { cellDefaults with
  domain := ⟨(2003 / 8000 : ℚ), (501 / 2000 : ℚ)⟩
  r := (2189035725487 / 2500000000000 : ℚ)
  w := (18586579752049 / 10000000000000 : ℚ)
  center := (4007 / 16000 : ℚ)
  supportValue := (9565496238715057 / 10000000000000000 : ℚ)
  supportSlope := (-9318687556367777 / 1000000000000000 : ℚ)
  oldCenter := (9565496238715057 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_644
  oldLo := (9557541899441341 / 10000000000000000 : ℚ)
  oldHi := (47875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2183, piece_2184, piece_2185, piece_2186]
}

def cell_7094 : Cell := { cellDefaults with
  domain := ⟨(501 / 2000 : ℚ), (4009 / 16000 : ℚ)⟩
  r := (8748183109071 / 10000000000000 : ℚ)
  w := (2321723899501 / 1250000000000 : ℚ)
  center := (8017 / 32000 : ℚ)
  supportValue := (9578896041091707 / 10000000000000000 : ℚ)
  supportSlope := (-9329942589388907 / 1000000000000000 : ℚ)
  oldCenter := (9578896041091707 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_645
  oldLo := (47875000000000001 / 50000000000000000 : ℚ)
  oldHi := (47925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2187, piece_2188]
}

def cell_7095 : Cell := { cellDefaults with
  domain := ⟨(4009 / 16000 : ℚ), (401 / 1600 : ℚ)⟩
  r := (8748183109071 / 10000000000000 : ℚ)
  w := (2321723899501 / 1250000000000 : ℚ)
  center := (8019 / 32000 : ℚ)
  supportValue := (9573067620043999 / 10000000000000000 : ℚ)
  supportSlope := (-4660413918006867 / 500000000000000 : ℚ)
  oldCenter := (9573067620043999 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_645
  oldLo := (95700000000000007 / 100000000000000000 : ℚ)
  oldHi := (95800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2186, piece_2187]
}

def cell_7096 : Cell := { cellDefaults with
  domain := ⟨(401 / 1600 : ℚ), (4011 / 16000 : ℚ)⟩
  r := (8748183109071 / 10000000000000 : ℚ)
  w := (2321723899501 / 1250000000000 : ℚ)
  center := (8021 / 32000 : ℚ)
  supportValue := (191344897868899 / 200000000000000 : ℚ)
  supportSlope := (-9311851660136483 / 1000000000000000 : ℚ)
  oldCenter := (191344897868899 / 200000000000000 : ℚ)
  newCoefficients := coefficients_645
  oldLo := (95600000000000007 / 100000000000000000 : ℚ)
  oldHi := (47875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2184, piece_2185, piece_2186]
}

def cell_7097 : Cell := { cellDefaults with
  domain := ⟨(4011 / 16000 : ℚ), (1003 / 4000 : ℚ)⟩
  r := (8748183109071 / 10000000000000 : ℚ)
  w := (2321723899501 / 1250000000000 : ℚ)
  center := (8023 / 32000 : ℚ)
  supportValue := (2390356964159397 / 2500000000000000 : ℚ)
  supportSlope := (-465138997817327 / 50000000000000 : ℚ)
  oldCenter := (2390356964159397 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_645
  oldLo := (9557541899441341 / 10000000000000000 : ℚ)
  oldHi := (47825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2183, piece_2184]
}

def cell_7098 : Cell := { cellDefaults with
  domain := ⟨(1003 / 4000 : ℚ), (4013 / 16000 : ℚ)⟩
  r := (8748183109071 / 10000000000000 : ℚ)
  w := (2321723899501 / 1250000000000 : ℚ)
  center := (321 / 1280 : ℚ)
  supportValue := (597226031529109 / 625000000000000 : ℚ)
  supportSlope := (-9293689341507871 / 1000000000000000 : ℚ)
  oldCenter := (597226031529109 / 625000000000000 : ℚ)
  newCoefficients := coefficients_645
  oldLo := (95500000000000007 / 100000000000000000 : ℚ)
  oldHi := (95600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2181, piece_2182, piece_2183]
}

def cell_7099 : Cell := { cellDefaults with
  domain := ⟨(4013 / 16000 : ℚ), (2007 / 8000 : ℚ)⟩
  r := (8748183109071 / 10000000000000 : ℚ)
  w := (2321723899501 / 1250000000000 : ℚ)
  center := (8027 / 32000 : ℚ)
  supportValue := (954981080738191 / 1000000000000000 : ℚ)
  supportSlope := (-2321151137255839 / 250000000000000 : ℚ)
  oldCenter := (954981080738191 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_645
  oldLo := (47725000000000001 / 50000000000000000 : ℚ)
  oldHi := (47775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2180, piece_2181]
}

theorem check_7050 : cell_7050.check = true := by
  decide +kernel

theorem check_7051 : cell_7051.check = true := by
  decide +kernel

theorem check_7052 : cell_7052.check = true := by
  decide +kernel

theorem check_7053 : cell_7053.check = true := by
  decide +kernel

theorem check_7054 : cell_7054.check = true := by
  decide +kernel

theorem check_7055 : cell_7055.check = true := by
  decide +kernel

theorem check_7056 : cell_7056.check = true := by
  decide +kernel

theorem check_7057 : cell_7057.check = true := by
  decide +kernel

theorem check_7058 : cell_7058.check = true := by
  decide +kernel

theorem check_7059 : cell_7059.check = true := by
  decide +kernel

theorem check_7060 : cell_7060.check = true := by
  decide +kernel

theorem check_7061 : cell_7061.check = true := by
  decide +kernel

theorem check_7062 : cell_7062.check = true := by
  decide +kernel

theorem check_7063 : cell_7063.check = true := by
  decide +kernel

theorem check_7064 : cell_7064.check = true := by
  decide +kernel

theorem check_7065 : cell_7065.check = true := by
  decide +kernel

theorem check_7066 : cell_7066.check = true := by
  decide +kernel

theorem check_7067 : cell_7067.check = true := by
  decide +kernel

theorem check_7068 : cell_7068.check = true := by
  decide +kernel

theorem check_7069 : cell_7069.check = true := by
  decide +kernel

theorem check_7070 : cell_7070.check = true := by
  decide +kernel

theorem check_7071 : cell_7071.check = true := by
  decide +kernel

theorem check_7072 : cell_7072.check = true := by
  decide +kernel

theorem check_7073 : cell_7073.check = true := by
  decide +kernel

theorem check_7074 : cell_7074.check = true := by
  decide +kernel

theorem check_7075 : cell_7075.check = true := by
  decide +kernel

theorem check_7076 : cell_7076.check = true := by
  decide +kernel

theorem check_7077 : cell_7077.check = true := by
  decide +kernel

theorem check_7078 : cell_7078.check = true := by
  decide +kernel

theorem check_7079 : cell_7079.check = true := by
  decide +kernel

theorem check_7080 : cell_7080.check = true := by
  decide +kernel

theorem check_7081 : cell_7081.check = true := by
  decide +kernel

theorem check_7082 : cell_7082.check = true := by
  decide +kernel

theorem check_7083 : cell_7083.check = true := by
  decide +kernel

theorem check_7084 : cell_7084.check = true := by
  decide +kernel

theorem check_7085 : cell_7085.check = true := by
  decide +kernel

theorem check_7086 : cell_7086.check = true := by
  decide +kernel

theorem check_7087 : cell_7087.check = true := by
  decide +kernel

theorem check_7088 : cell_7088.check = true := by
  decide +kernel

theorem check_7089 : cell_7089.check = true := by
  decide +kernel

theorem check_7090 : cell_7090.check = true := by
  decide +kernel

theorem check_7091 : cell_7091.check = true := by
  decide +kernel

theorem check_7092 : cell_7092.check = true := by
  decide +kernel

theorem check_7093 : cell_7093.check = true := by
  decide +kernel

theorem check_7094 : cell_7094.check = true := by
  decide +kernel

theorem check_7095 : cell_7095.check = true := by
  decide +kernel

theorem check_7096 : cell_7096.check = true := by
  decide +kernel

theorem check_7097 : cell_7097.check = true := by
  decide +kernel

theorem check_7098 : cell_7098.check = true := by
  decide +kernel

theorem check_7099 : cell_7099.check = true := by
  decide +kernel

def cells : List Cell := [cell_7050, cell_7051, cell_7052, cell_7053, cell_7054, cell_7055, cell_7056, cell_7057, cell_7058, cell_7059, cell_7060, cell_7061, cell_7062, cell_7063, cell_7064, cell_7065, cell_7066, cell_7067, cell_7068, cell_7069, cell_7070, cell_7071, cell_7072, cell_7073, cell_7074, cell_7075, cell_7076, cell_7077, cell_7078, cell_7079, cell_7080, cell_7081, cell_7082, cell_7083, cell_7084, cell_7085, cell_7086, cell_7087, cell_7088, cell_7089, cell_7090, cell_7091, cell_7092, cell_7093, cell_7094, cell_7095, cell_7096, cell_7097, cell_7098, cell_7099]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7050, check_7051, check_7052, check_7053, check_7054, check_7055, check_7056, check_7057, check_7058, check_7059, check_7060, check_7061, check_7062, check_7063, check_7064, check_7065, check_7066, check_7067, check_7068, check_7069, check_7070, check_7071, check_7072, check_7073, check_7074, check_7075, check_7076, check_7077, check_7078, check_7079, check_7080, check_7081, check_7082, check_7083, check_7084, check_7085, check_7086, check_7087, check_7088, check_7089, check_7090, check_7091, check_7092, check_7093, check_7094, check_7095, check_7096, check_7097, check_7098, check_7099, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0141

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0141
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0141
open AnalyticBounds.ExpressionCertificate

theorem linked_7050 : Linked cell_7050 pieces := by
  refine ⟨piece_635,piece_635_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7050,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2229_mem
    · exact piece_2230_mem

theorem linked_7051 : Linked cell_7051 pieces := by
  refine ⟨piece_635,piece_635_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7051,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2227_mem
    · exact piece_2228_mem
    · exact piece_2229_mem

theorem linked_7052 : Linked cell_7052 pieces := by
  refine ⟨piece_635,piece_635_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7052,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2226_mem
    · exact piece_2227_mem

theorem linked_7053 : Linked cell_7053 pieces := by
  refine ⟨piece_636,piece_636_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7053,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2230_mem
    · exact piece_2231_mem
    · exact piece_2232_mem

theorem linked_7054 : Linked cell_7054 pieces := by
  refine ⟨piece_636,piece_636_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7054,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2229_mem
    · exact piece_2230_mem

theorem linked_7055 : Linked cell_7055 pieces := by
  refine ⟨piece_636,piece_636_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7055,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2227_mem
    · exact piece_2228_mem
    · exact piece_2229_mem

theorem linked_7056 : Linked cell_7056 pieces := by
  refine ⟨piece_636,piece_636_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7056,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2226_mem
    · exact piece_2227_mem

theorem linked_7057 : Linked cell_7057 pieces := by
  refine ⟨piece_636,piece_636_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7057,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2225_mem
    · exact piece_2226_mem

theorem linked_7058 : Linked cell_7058 pieces := by
  refine ⟨piece_636,piece_636_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7058,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2225_mem

theorem linked_7059 : Linked cell_7059 pieces := by
  refine ⟨piece_636,piece_636_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7059,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2225_mem

theorem linked_7060 : Linked cell_7060 pieces := by
  refine ⟨piece_636,piece_636_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7060,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2224_mem
    · exact piece_2225_mem

theorem linked_7061 : Linked cell_7061 pieces := by
  refine ⟨piece_636,piece_636_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7061,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2224_mem

theorem linked_7062 : Linked cell_7062 pieces := by
  refine ⟨piece_636,piece_636_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7062,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_2224_mem

theorem linked_7063 : Linked cell_7063 pieces := by
  refine ⟨piece_636,piece_636_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7063,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2223_mem
    · exact piece_2224_mem

theorem linked_7064 : Linked cell_7064 pieces := by
  refine ⟨piece_636,piece_636_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7064,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2222_mem
    · exact piece_2223_mem

theorem linked_7065 : Linked cell_7065 pieces := by
  refine ⟨piece_636,piece_636_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7065,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2221_mem
    · exact piece_2222_mem
    · exact piece_2223_mem

theorem linked_7066 : Linked cell_7066 pieces := by
  refine ⟨piece_637,piece_637_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7066,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl
    · exact piece_2223_mem
    · exact piece_2224_mem
    · exact piece_2225_mem
    · exact piece_2226_mem

theorem linked_7067 : Linked cell_7067 pieces := by
  refine ⟨piece_637,piece_637_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7067,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2221_mem
    · exact piece_2222_mem
    · exact piece_2223_mem

theorem linked_7068 : Linked cell_7068 pieces := by
  refine ⟨piece_637,piece_637_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7068,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl
    · exact piece_2218_mem
    · exact piece_2219_mem
    · exact piece_2220_mem
    · exact piece_2221_mem

theorem linked_7069 : Linked cell_7069 pieces := by
  refine ⟨piece_637,piece_637_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7069,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl
    · exact piece_2215_mem
    · exact piece_2216_mem
    · exact piece_2217_mem
    · exact piece_2218_mem

theorem linked_7070 : Linked cell_7070 pieces := by
  refine ⟨piece_638,piece_638_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7070,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl
    · exact piece_2217_mem
    · exact piece_2218_mem
    · exact piece_2219_mem
    · exact piece_2220_mem
    · exact piece_2221_mem

theorem linked_7071 : Linked cell_7071 pieces := by
  refine ⟨piece_638,piece_638_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7071,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2215_mem
    · exact piece_2216_mem
    · exact piece_2217_mem

theorem linked_7072 : Linked cell_7072 pieces := by
  refine ⟨piece_638,piece_638_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7072,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2214_mem
    · exact piece_2215_mem

theorem linked_7073 : Linked cell_7073 pieces := by
  refine ⟨piece_639,piece_639_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7073,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl
    · exact piece_2210_mem
    · exact piece_2211_mem
    · exact piece_2212_mem
    · exact piece_2213_mem
    · exact piece_2214_mem

theorem linked_7074 : Linked cell_7074 pieces := by
  refine ⟨piece_640,piece_640_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7074,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl
    · exact piece_2212_mem
    · exact piece_2213_mem
    · exact piece_2214_mem
    · exact piece_2215_mem

theorem linked_7075 : Linked cell_7075 pieces := by
  refine ⟨piece_640,piece_640_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7075,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2210_mem
    · exact piece_2211_mem
    · exact piece_2212_mem

theorem linked_7076 : Linked cell_7076 pieces := by
  refine ⟨piece_640,piece_640_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7076,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2208_mem
    · exact piece_2209_mem
    · exact piece_2210_mem

theorem linked_7077 : Linked cell_7077 pieces := by
  refine ⟨piece_640,piece_640_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7077,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl
    · exact piece_2204_mem
    · exact piece_2205_mem
    · exact piece_2206_mem
    · exact piece_2207_mem
    · exact piece_2208_mem

theorem linked_7078 : Linked cell_7078 pieces := by
  refine ⟨piece_641,piece_641_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7078,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl
    · exact piece_2207_mem
    · exact piece_2208_mem
    · exact piece_2209_mem
    · exact piece_2210_mem

theorem linked_7079 : Linked cell_7079 pieces := by
  refine ⟨piece_641,piece_641_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7079,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl
    · exact piece_2204_mem
    · exact piece_2205_mem
    · exact piece_2206_mem
    · exact piece_2207_mem

theorem linked_7080 : Linked cell_7080 pieces := by
  refine ⟨piece_641,piece_641_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7080,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2202_mem
    · exact piece_2203_mem
    · exact piece_2204_mem

theorem linked_7081 : Linked cell_7081 pieces := by
  refine ⟨piece_641,piece_641_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7081,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl
    · exact piece_2199_mem
    · exact piece_2200_mem
    · exact piece_2201_mem
    · exact piece_2202_mem

theorem linked_7082 : Linked cell_7082 pieces := by
  refine ⟨piece_642,piece_642_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7082,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl
    · exact piece_2201_mem
    · exact piece_2202_mem
    · exact piece_2203_mem
    · exact piece_2204_mem

theorem linked_7083 : Linked cell_7083 pieces := by
  refine ⟨piece_642,piece_642_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7083,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2199_mem
    · exact piece_2200_mem
    · exact piece_2201_mem

theorem linked_7084 : Linked cell_7084 pieces := by
  refine ⟨piece_642,piece_642_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7084,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2197_mem
    · exact piece_2198_mem
    · exact piece_2199_mem

theorem linked_7085 : Linked cell_7085 pieces := by
  refine ⟨piece_642,piece_642_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7085,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl | rfl
    · exact piece_2193_mem
    · exact piece_2194_mem
    · exact piece_2195_mem
    · exact piece_2196_mem
    · exact piece_2197_mem

theorem linked_7086 : Linked cell_7086 pieces := by
  refine ⟨piece_643,piece_643_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7086,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl
    · exact piece_2196_mem
    · exact piece_2197_mem
    · exact piece_2198_mem
    · exact piece_2199_mem

theorem linked_7087 : Linked cell_7087 pieces := by
  refine ⟨piece_643,piece_643_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7087,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl
    · exact piece_2193_mem
    · exact piece_2194_mem
    · exact piece_2195_mem
    · exact piece_2196_mem

theorem linked_7088 : Linked cell_7088 pieces := by
  refine ⟨piece_643,piece_643_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7088,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2191_mem
    · exact piece_2192_mem
    · exact piece_2193_mem

theorem linked_7089 : Linked cell_7089 pieces := by
  refine ⟨piece_643,piece_643_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7089,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl
    · exact piece_2188_mem
    · exact piece_2189_mem
    · exact piece_2190_mem
    · exact piece_2191_mem

theorem linked_7090 : Linked cell_7090 pieces := by
  refine ⟨piece_644,piece_644_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7090,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl
    · exact piece_2190_mem
    · exact piece_2191_mem
    · exact piece_2192_mem
    · exact piece_2193_mem

theorem linked_7091 : Linked cell_7091 pieces := by
  refine ⟨piece_644,piece_644_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7091,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2188_mem
    · exact piece_2189_mem
    · exact piece_2190_mem

theorem linked_7092 : Linked cell_7092 pieces := by
  refine ⟨piece_644,piece_644_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7092,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2186_mem
    · exact piece_2187_mem
    · exact piece_2188_mem

theorem linked_7093 : Linked cell_7093 pieces := by
  refine ⟨piece_644,piece_644_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7093,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl
    · exact piece_2183_mem
    · exact piece_2184_mem
    · exact piece_2185_mem
    · exact piece_2186_mem

theorem linked_7094 : Linked cell_7094 pieces := by
  refine ⟨piece_645,piece_645_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7094,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2187_mem
    · exact piece_2188_mem

theorem linked_7095 : Linked cell_7095 pieces := by
  refine ⟨piece_645,piece_645_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7095,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2186_mem
    · exact piece_2187_mem

theorem linked_7096 : Linked cell_7096 pieces := by
  refine ⟨piece_645,piece_645_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7096,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2184_mem
    · exact piece_2185_mem
    · exact piece_2186_mem

theorem linked_7097 : Linked cell_7097 pieces := by
  refine ⟨piece_645,piece_645_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7097,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2183_mem
    · exact piece_2184_mem

theorem linked_7098 : Linked cell_7098 pieces := by
  refine ⟨piece_645,piece_645_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7098,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_2181_mem
    · exact piece_2182_mem
    · exact piece_2183_mem

theorem linked_7099 : Linked cell_7099 pieces := by
  refine ⟨piece_645,piece_645_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7099,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_2180_mem
    · exact piece_2181_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0141.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0141.cells,List.forall_mem_cons]
  exact ⟨linked_7050, linked_7051, linked_7052, linked_7053, linked_7054, linked_7055, linked_7056, linked_7057, linked_7058, linked_7059, linked_7060, linked_7061, linked_7062, linked_7063, linked_7064, linked_7065, linked_7066, linked_7067, linked_7068, linked_7069, linked_7070, linked_7071, linked_7072, linked_7073, linked_7074, linked_7075, linked_7076, linked_7077, linked_7078, linked_7079, linked_7080, linked_7081, linked_7082, linked_7083, linked_7084, linked_7085, linked_7086, linked_7087, linked_7088, linked_7089, linked_7090, linked_7091, linked_7092, linked_7093, linked_7094, linked_7095, linked_7096, linked_7097, linked_7098, linked_7099, by simp⟩

theorem covered : covers (3941 / 16000 : ℚ) (2007 / 8000 : ℚ)
    (SourceCertificates.Chunk0141.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0141
