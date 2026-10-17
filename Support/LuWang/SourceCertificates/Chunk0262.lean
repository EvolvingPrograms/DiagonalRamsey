import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0262
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
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

def cell_13100 : Cell := { cellDefaults with
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
  refine ⟨piece_1838,piece_1838_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13100,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_634_mem

theorem linked_13101 : Linked cell_13101 pieces := by
  refine ⟨piece_1838,piece_1838_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13101,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_634_mem

theorem linked_13102 : Linked cell_13102 pieces := by
  refine ⟨piece_1839,piece_1839_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13102,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_635_mem

theorem linked_13103 : Linked cell_13103 pieces := by
  refine ⟨piece_1839,piece_1839_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13103,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_635_mem

theorem linked_13104 : Linked cell_13104 pieces := by
  refine ⟨piece_1839,piece_1839_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13104,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_635_mem

theorem linked_13105 : Linked cell_13105 pieces := by
  refine ⟨piece_1839,piece_1839_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13105,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_635_mem

theorem linked_13106 : Linked cell_13106 pieces := by
  refine ⟨piece_1839,piece_1839_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13106,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_635_mem

theorem linked_13107 : Linked cell_13107 pieces := by
  refine ⟨piece_1839,piece_1839_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13107,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_635_mem

theorem linked_13108 : Linked cell_13108 pieces := by
  refine ⟨piece_1839,piece_1839_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13108,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_634_mem

theorem linked_13109 : Linked cell_13109 pieces := by
  refine ⟨piece_1839,piece_1839_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13109,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_634_mem

theorem linked_13110 : Linked cell_13110 pieces := by
  refine ⟨piece_1839,piece_1839_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13110,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_634_mem

theorem linked_13111 : Linked cell_13111 pieces := by
  refine ⟨piece_1839,piece_1839_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13111,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_634_mem

theorem linked_13112 : Linked cell_13112 pieces := by
  refine ⟨piece_1839,piece_1839_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13112,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_634_mem

theorem linked_13113 : Linked cell_13113 pieces := by
  refine ⟨piece_1840,piece_1840_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13113,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_634_mem

theorem linked_13114 : Linked cell_13114 pieces := by
  refine ⟨piece_1840,piece_1840_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13114,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_634_mem

theorem linked_13115 : Linked cell_13115 pieces := by
  refine ⟨piece_1840,piece_1840_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13115,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_634_mem

theorem linked_13116 : Linked cell_13116 pieces := by
  refine ⟨piece_1840,piece_1840_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13116,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_633_mem
    · exact piece_634_mem

theorem linked_13117 : Linked cell_13117 pieces := by
  refine ⟨piece_1841,piece_1841_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13117,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_634_mem

theorem linked_13118 : Linked cell_13118 pieces := by
  refine ⟨piece_1841,piece_1841_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13118,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_634_mem

theorem linked_13119 : Linked cell_13119 pieces := by
  refine ⟨piece_1841,piece_1841_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13119,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_633_mem
    · exact piece_634_mem

theorem linked_13120 : Linked cell_13120 pieces := by
  refine ⟨piece_1841,piece_1841_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13120,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_633_mem

theorem linked_13121 : Linked cell_13121 pieces := by
  refine ⟨piece_1842,piece_1842_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13121,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_633_mem
    · exact piece_634_mem

theorem linked_13122 : Linked cell_13122 pieces := by
  refine ⟨piece_1842,piece_1842_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13122,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_633_mem

theorem linked_13123 : Linked cell_13123 pieces := by
  refine ⟨piece_1842,piece_1842_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13123,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_633_mem

theorem linked_13124 : Linked cell_13124 pieces := by
  refine ⟨piece_1842,piece_1842_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13124,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_633_mem

theorem linked_13125 : Linked cell_13125 pieces := by
  refine ⟨piece_1843,piece_1843_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13125,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_633_mem

theorem linked_13126 : Linked cell_13126 pieces := by
  refine ⟨piece_1843,piece_1843_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13126,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_633_mem

theorem linked_13127 : Linked cell_13127 pieces := by
  refine ⟨piece_1843,piece_1843_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13127,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_633_mem

theorem linked_13128 : Linked cell_13128 pieces := by
  refine ⟨piece_1843,piece_1843_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13128,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_632_mem
    · exact piece_633_mem

theorem linked_13129 : Linked cell_13129 pieces := by
  refine ⟨piece_1844,piece_1844_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13129,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_633_mem

theorem linked_13130 : Linked cell_13130 pieces := by
  refine ⟨piece_1844,piece_1844_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13130,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_632_mem
    · exact piece_633_mem

theorem linked_13131 : Linked cell_13131 pieces := by
  refine ⟨piece_1845,piece_1845_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13131,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_632_mem

theorem linked_13132 : Linked cell_13132 pieces := by
  refine ⟨piece_1846,piece_1846_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13132,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_633_mem

theorem linked_13133 : Linked cell_13133 pieces := by
  refine ⟨piece_1846,piece_1846_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13133,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_632_mem
    · exact piece_633_mem

theorem linked_13134 : Linked cell_13134 pieces := by
  refine ⟨piece_1846,piece_1846_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13134,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_632_mem

theorem linked_13135 : Linked cell_13135 pieces := by
  refine ⟨piece_1846,piece_1846_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13135,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_632_mem

theorem linked_13136 : Linked cell_13136 pieces := by
  refine ⟨piece_1847,piece_1847_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13136,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_632_mem

theorem linked_13137 : Linked cell_13137 pieces := by
  refine ⟨piece_1847,piece_1847_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13137,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_632_mem

theorem linked_13138 : Linked cell_13138 pieces := by
  refine ⟨piece_1847,piece_1847_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13138,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_632_mem

theorem linked_13139 : Linked cell_13139 pieces := by
  refine ⟨piece_1847,piece_1847_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13139,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_632_mem

theorem linked_13140 : Linked cell_13140 pieces := by
  refine ⟨piece_1848,piece_1848_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13140,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_632_mem

theorem linked_13141 : Linked cell_13141 pieces := by
  refine ⟨piece_1848,piece_1848_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13141,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_632_mem

theorem linked_13142 : Linked cell_13142 pieces := by
  refine ⟨piece_1848,piece_1848_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13142,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_631_mem
    · exact piece_632_mem

theorem linked_13143 : Linked cell_13143 pieces := by
  refine ⟨piece_1848,piece_1848_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13143,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_631_mem

theorem linked_13144 : Linked cell_13144 pieces := by
  refine ⟨piece_1849,piece_1849_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13144,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_632_mem

theorem linked_13145 : Linked cell_13145 pieces := by
  refine ⟨piece_1849,piece_1849_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13145,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_631_mem
    · exact piece_632_mem

theorem linked_13146 : Linked cell_13146 pieces := by
  refine ⟨piece_1849,piece_1849_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13146,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_631_mem

theorem linked_13147 : Linked cell_13147 pieces := by
  refine ⟨piece_1849,piece_1849_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13147,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_631_mem

theorem linked_13148 : Linked cell_13148 pieces := by
  refine ⟨piece_1850,piece_1850_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13148,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_631_mem
    · exact piece_632_mem

theorem linked_13149 : Linked cell_13149 pieces := by
  refine ⟨piece_1850,piece_1850_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_13149,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_631_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0262.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0262.cells,List.forall_mem_cons]
  exact ⟨linked_13100, linked_13101, linked_13102, linked_13103, linked_13104, linked_13105, linked_13106, linked_13107, linked_13108, linked_13109, linked_13110, linked_13111, linked_13112, linked_13113, linked_13114, linked_13115, linked_13116, linked_13117, linked_13118, linked_13119, linked_13120, linked_13121, linked_13122, linked_13123, linked_13124, linked_13125, linked_13126, linked_13127, linked_13128, linked_13129, linked_13130, linked_13131, linked_13132, linked_13133, linked_13134, linked_13135, linked_13136, linked_13137, linked_13138, linked_13139, linked_13140, linked_13141, linked_13142, linked_13143, linked_13144, linked_13145, linked_13146, linked_13147, linked_13148, linked_13149, by simp⟩

theorem covered : covers (159550000000000003 / 200000000000000000 : ℚ) (40162500000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0262.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0262
