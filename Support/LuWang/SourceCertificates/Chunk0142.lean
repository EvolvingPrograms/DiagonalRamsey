import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0142
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(2007 / 8000 : ℚ), (803 / 3200 : ℚ)⟩
  branch := .left
  r := (43622198845071 / 50000000000000 : ℚ)
  w := (18535557924149 / 10000000000000 : ℚ)
  center := (8029 / 32000 : ℚ)
  supportValue := (954401071192743 / 1000000000000000 : ℚ)
  supportSlope := (-4637763413727569 / 500000000000000 : ℚ)
  oldCenter := (954401071192743 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_648
  oldLo := (94850000000000001 / 100000000000000000 : ℚ)
  oldHi := (94850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2176, piece_2177]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7100 : Cell := { cellDefaults with
  r := (8748183109071 / 10000000000000 : ℚ)
  w := (2321723899501 / 1250000000000 : ℚ)
  newCoefficients := coefficients_645
  oldLo := (95400000000000007 / 100000000000000000 : ℚ)
  oldHi := (95500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2179, piece_2180]
}

def cell_7101 : Cell := { cellDefaults with
  domain := ⟨(803 / 3200 : ℚ), (251 / 1000 : ℚ)⟩
  r := (8748183109071 / 10000000000000 : ℚ)
  w := (2321723899501 / 1250000000000 : ℚ)
  center := (8031 / 32000 : ℚ)
  supportValue := (1907643257558527 / 2000000000000000 : ℚ)
  supportSlope := (-9266456573204351 / 1000000000000000 : ℚ)
  oldCenter := (1907643257558527 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_645
  oldLo := (95350000000000001 / 100000000000000000 : ℚ)
  oldHi := (47725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2178, piece_2179]
}

def cell_7102 : Cell := { cellDefaults with
  domain := ⟨(251 / 1000 : ℚ), (4017 / 16000 : ℚ)⟩
  r := (43701230631609 / 50000000000000 : ℚ)
  w := (1856102428003 / 1000000000000 : ℚ)
  center := (8033 / 32000 : ℚ)
  supportValue := (9554478433469019 / 10000000000000000 : ℚ)
  supportSlope := (-4641124425770471 / 500000000000000 : ℚ)
  oldCenter := (9554478433469019 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_646
  oldLo := (95500000000000007 / 100000000000000000 : ℚ)
  oldHi := (9557541899441341 / 10000000000000000 : ℚ)
  oldPieces := [piece_2181, piece_2182]
}

def cell_7103 : Cell := { cellDefaults with
  domain := ⟨(4017 / 16000 : ℚ), (2009 / 8000 : ℚ)⟩
  r := (43701230631609 / 50000000000000 : ℚ)
  w := (1856102428003 / 1000000000000 : ℚ)
  center := (1607 / 6400 : ℚ)
  supportValue := (9548679802012713 / 10000000000000000 : ℚ)
  supportSlope := (-4636599191250923 / 500000000000000 : ℚ)
  oldCenter := (9548679802012713 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_646
  oldLo := (47725000000000001 / 50000000000000000 : ℚ)
  oldHi := (47775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2180, piece_2181]
}

def cell_7104 : Cell := { cellDefaults with
  domain := ⟨(2009 / 8000 : ℚ), (4019 / 16000 : ℚ)⟩
  r := (43701230631609 / 50000000000000 : ℚ)
  w := (1856102428003 / 1000000000000 : ℚ)
  center := (8037 / 32000 : ℚ)
  supportValue := (9542886824859391 / 10000000000000000 : ℚ)
  supportSlope := (-9264158718725213 / 1000000000000000 : ℚ)
  oldCenter := (9542886824859391 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_646
  oldLo := (95350000000000001 / 100000000000000000 : ℚ)
  oldHi := (95500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2178, piece_2179, piece_2180]
}

def cell_7105 : Cell := { cellDefaults with
  domain := ⟨(4019 / 16000 : ℚ), (201 / 800 : ℚ)⟩
  r := (43701230631609 / 50000000000000 : ℚ)
  w := (1856102428003 / 1000000000000 : ℚ)
  center := (8039 / 32000 : ℚ)
  supportValue := (9537099497356181 / 10000000000000000 : ℚ)
  supportSlope := (-4627637716414057 / 500000000000000 : ℚ)
  oldCenter := (9537099497356181 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_646
  oldLo := (95300000000000007 / 100000000000000000 : ℚ)
  oldHi := (95400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2177, piece_2178]
}

def cell_7106 : Cell := { cellDefaults with
  domain := ⟨(201 / 800 : ℚ), (4021 / 16000 : ℚ)⟩
  r := (43701230631609 / 50000000000000 : ℚ)
  w := (1856102428003 / 1000000000000 : ℚ)
  center := (8041 / 32000 : ℚ)
  supportValue := (9531317814894079 / 10000000000000000 : ℚ)
  supportSlope := (-1155780858806299 / 125000000000000 : ℚ)
  oldCenter := (9531317814894079 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_646
  oldLo := (95250000000000001 / 100000000000000000 : ℚ)
  oldHi := (95350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2176, piece_2177]
}

def cell_7107 : Cell := { cellDefaults with
  domain := ⟨(4021 / 16000 : ℚ), (2011 / 8000 : ℚ)⟩
  r := (43701230631609 / 50000000000000 : ℚ)
  w := (1856102428003 / 1000000000000 : ℚ)
  center := (8043 / 32000 : ℚ)
  supportValue := (9525541772908301 / 10000000000000000 : ℚ)
  supportSlope := (-9237225756415057 / 1000000000000000 : ℚ)
  oldCenter := (9525541772908301 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_646
  oldLo := (95200000000000007 / 100000000000000000 : ℚ)
  oldHi := (95300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2175, piece_2176]
}

def cell_7108 : Cell := { cellDefaults with
  domain := ⟨(2011 / 8000 : ℚ), (4023 / 16000 : ℚ)⟩
  r := (43701230631609 / 50000000000000 : ℚ)
  w := (1856102428003 / 1000000000000 : ℚ)
  center := (1609 / 6400 : ℚ)
  supportValue := (1189971417108737 / 1250000000000000 : ℚ)
  supportSlope := (-9228212054914309 / 1000000000000000 : ℚ)
  oldCenter := (1189971417108737 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_646
  oldLo := (95150000000000001 / 100000000000000000 : ℚ)
  oldHi := (95250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2174, piece_2175]
}

def cell_7109 : Cell := { cellDefaults with
  domain := ⟨(4023 / 16000 : ℚ), (503 / 2000 : ℚ)⟩
  r := (43701230631609 / 50000000000000 : ℚ)
  w := (1856102428003 / 1000000000000 : ℚ)
  center := (8047 / 32000 : ℚ)
  supportValue := (9514006465664787 / 10000000000000000 : ℚ)
  supportSlope := (-2304801438731019 / 250000000000000 : ℚ)
  oldCenter := (9514006465664787 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_646
  oldLo := (95100000000000007 / 100000000000000000 : ℚ)
  oldHi := (95200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2173, piece_2174]
}

def cell_7110 : Cell := { cellDefaults with
  domain := ⟨(503 / 2000 : ℚ), (161 / 640 : ℚ)⟩
  r := (873233177729 / 1000000000000 : ℚ)
  w := (18548279655647 / 10000000000000 : ℚ)
  center := (8049 / 32000 : ℚ)
  supportValue := (297818764418661 / 312500000000000 : ℚ)
  supportSlope := (-2308731938891917 / 250000000000000 : ℚ)
  oldCenter := (297818764418661 / 312500000000000 : ℚ)
  newCoefficients := coefficients_647
  oldLo := (95250000000000001 / 100000000000000000 : ℚ)
  oldHi := (95350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2176, piece_2177]
}

def cell_7111 : Cell := { cellDefaults with
  domain := ⟨(161 / 640 : ℚ), (2013 / 8000 : ℚ)⟩
  r := (873233177729 / 1000000000000 : ℚ)
  w := (18548279655647 / 10000000000000 : ℚ)
  center := (8051 / 32000 : ℚ)
  supportValue := (9524431410251649 / 10000000000000000 : ℚ)
  supportSlope := (-46129711391103 / 5000000000000 : ℚ)
  oldCenter := (9524431410251649 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_647
  oldLo := (95200000000000007 / 100000000000000000 : ℚ)
  oldHi := (95300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2175, piece_2176]
}

def cell_7112 : Cell := { cellDefaults with
  domain := ⟨(2013 / 8000 : ℚ), (4027 / 16000 : ℚ)⟩
  r := (873233177729 / 1000000000000 : ℚ)
  w := (18548279655647 / 10000000000000 : ℚ)
  center := (8053 / 32000 : ℚ)
  supportValue := (1189833493630621 / 1250000000000000 : ℚ)
  supportSlope := (-9216964160444263 / 1000000000000000 : ℚ)
  oldCenter := (1189833493630621 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_647
  oldLo := (95150000000000001 / 100000000000000000 : ℚ)
  oldHi := (95250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2174, piece_2175]
}

def cell_7113 : Cell := { cellDefaults with
  domain := ⟨(4027 / 16000 : ℚ), (1007 / 4000 : ℚ)⟩
  r := (873233177729 / 1000000000000 : ℚ)
  w := (18548279655647 / 10000000000000 : ℚ)
  center := (1611 / 6400 : ℚ)
  supportValue := (95129100969541 / 100000000000000 : ℚ)
  supportSlope := (-2301998352534973 / 250000000000000 : ℚ)
  oldCenter := (95129100969541 / 100000000000000 : ℚ)
  newCoefficients := coefficients_647
  oldLo := (95100000000000007 / 100000000000000000 : ℚ)
  oldHi := (95200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2173, piece_2174]
}

def cell_7114 : Cell := { cellDefaults with
  domain := ⟨(1007 / 4000 : ℚ), (4029 / 16000 : ℚ)⟩
  r := (873233177729 / 1000000000000 : ℚ)
  w := (18548279655647 / 10000000000000 : ℚ)
  center := (8057 / 32000 : ℚ)
  supportValue := (190143156987497 / 200000000000000 : ℚ)
  supportSlope := (-2299794219209339 / 250000000000000 : ℚ)
  oldCenter := (190143156987497 / 200000000000000 : ℚ)
  newCoefficients := coefficients_647
  oldLo := (2375558659217877 / 2500000000000000 : ℚ)
  oldHi := (95150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2171, piece_2172, piece_2173]
}

def cell_7115 : Cell := { cellDefaults with
  domain := ⟨(4029 / 16000 : ℚ), (403 / 1600 : ℚ)⟩
  r := (873233177729 / 1000000000000 : ℚ)
  w := (18548279655647 / 10000000000000 : ℚ)
  center := (8059 / 32000 : ℚ)
  supportValue := (4750705600772331 / 5000000000000000 : ℚ)
  supportSlope := (-2297556681845947 / 250000000000000 : ℚ)
  oldCenter := (4750705600772331 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_647
  oldLo := (94950000000000001 / 100000000000000000 : ℚ)
  oldHi := (95050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2169, piece_2170, piece_2171]
}

def cell_7116 : Cell := { cellDefaults with
  domain := ⟨(403 / 1600 : ℚ), (8061 / 32000 : ℚ)⟩
  r := (873233177729 / 1000000000000 : ℚ)
  w := (18548279655647 / 10000000000000 : ℚ)
  center := (16121 / 64000 : ℚ)
  supportValue := (379883928244633 / 400000000000000 : ℚ)
  supportSlope := (-4591697527317251 / 500000000000000 : ℚ)
  oldCenter := (379883928244633 / 400000000000000 : ℚ)
  newCoefficients := coefficients_647
  oldLo := (94950000000000001 / 100000000000000000 : ℚ)
  oldHi := (95000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2169]
}

def cell_7117 : Cell := { cellDefaults with
  domain := ⟨(8061 / 32000 : ℚ), (4031 / 16000 : ℚ)⟩
  r := (873233177729 / 1000000000000 : ℚ)
  w := (18548279655647 / 10000000000000 : ℚ)
  center := (16123 / 64000 : ℚ)
  supportValue := (9494229097587557 / 10000000000000000 : ℚ)
  supportSlope := (-9179163160055737 / 1000000000000000 : ℚ)
  oldCenter := (9494229097587557 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_647
  oldLo := (94900000000000007 / 100000000000000000 : ℚ)
  oldHi := (95000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2168, piece_2169]
}

def cell_7118 : Cell := { cellDefaults with
  domain := ⟨(4031 / 16000 : ℚ), (8063 / 32000 : ℚ)⟩
  r := (873233177729 / 1000000000000 : ℚ)
  w := (18548279655647 / 10000000000000 : ℚ)
  center := (129 / 512 : ℚ)
  supportValue := (1186420165747489 / 1250000000000000 : ℚ)
  supportSlope := (-2293582962030527 / 250000000000000 : ℚ)
  oldCenter := (1186420165747489 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_647
  oldHi := (94950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2167, piece_2168]
}

def cell_7119 : Cell := { cellDefaults with
  domain := ⟨(8063 / 32000 : ℚ), (63 / 250 : ℚ)⟩
  r := (873233177729 / 1000000000000 : ℚ)
  w := (18548279655647 / 10000000000000 : ℚ)
  center := (16127 / 64000 : ℚ)
  supportValue := (2372123741201403 / 2500000000000000 : ℚ)
  supportSlope := (-2292585832828209 / 250000000000000 : ℚ)
  oldCenter := (2372123741201403 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_647
  oldHi := (94900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2167]
}

def cell_7120 : Cell := { cellDefaults with
  domain := ⟨(63 / 250 : ℚ), (1613 / 6400 : ℚ)⟩
  center := (16129 / 64000 : ℚ)
  supportValue := (950748989037553 / 1000000000000000 : ℚ)
  supportSlope := (-4595085343279237 / 500000000000000 : ℚ)
  oldCenter := (950748989037553 / 1000000000000000 : ℚ)
  oldLo := (95050000000000001 / 100000000000000000 : ℚ)
  oldHi := (95100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2172]
}

def cell_7121 : Cell := { cellDefaults with
  domain := ⟨(1613 / 6400 : ℚ), (4033 / 16000 : ℚ)⟩
  center := (16131 / 64000 : ℚ)
  supportValue := (9504618712160163 / 10000000000000000 : ℚ)
  supportSlope := (-918579016560983 / 100000000000000 : ℚ)
  oldCenter := (9504618712160163 / 10000000000000000 : ℚ)
  oldLo := (2375558659217877 / 2500000000000000 : ℚ)
  oldHi := (95100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2171, piece_2172]
}

def cell_7122 : Cell := { cellDefaults with
  domain := ⟨(4033 / 16000 : ℚ), (8067 / 32000 : ℚ)⟩
  center := (16133 / 64000 : ℚ)
  supportValue := (148464825287151 / 156250000000000 : ℚ)
  supportSlope := (-4590550041292829 / 500000000000000 : ℚ)
  oldCenter := (148464825287151 / 156250000000000 : ℚ)
  oldLo := (95000000000000007 / 100000000000000000 : ℚ)
  oldHi := (95050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2170, piece_2171]
}

def cell_7123 : Cell := { cellDefaults with
  domain := ⟨(8067 / 32000 : ℚ), (2017 / 8000 : ℚ)⟩
  center := (3227 / 12800 : ℚ)
  supportValue := (9498880380165053 / 10000000000000000 : ℚ)
  supportSlope := (-1147128112509499 / 125000000000000 : ℚ)
  oldCenter := (9498880380165053 / 10000000000000000 : ℚ)
  oldLo := (94950000000000001 / 100000000000000000 : ℚ)
  oldHi := (2375558659217877 / 2500000000000000 : ℚ)
  oldPieces := [piece_2169, piece_2170]
}

def cell_7124 : Cell := { cellDefaults with
  domain := ⟨(2017 / 8000 : ℚ), (8069 / 32000 : ℚ)⟩
  center := (16137 / 64000 : ℚ)
  supportValue := (9496013318665281 / 10000000000000000 : ℚ)
  supportSlope := (-1834441922657959 / 200000000000000 : ℚ)
  oldCenter := (9496013318665281 / 10000000000000000 : ℚ)
  oldLo := (94900000000000007 / 100000000000000000 : ℚ)
  oldHi := (95000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2168, piece_2169]
}

def cell_7125 : Cell := { cellDefaults with
  domain := ⟨(8069 / 32000 : ℚ), (807 / 3200 : ℚ)⟩
  center := (16139 / 64000 : ℚ)
  supportValue := (9493147618727437 / 10000000000000000 : ℚ)
  supportSlope := (-9168092116006221 / 1000000000000000 : ℚ)
  oldCenter := (9493147618727437 / 10000000000000000 : ℚ)
  oldLo := (94900000000000007 / 100000000000000000 : ℚ)
  oldHi := (94950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2168]
}

def cell_7126 : Cell := { cellDefaults with
  domain := ⟨(807 / 3200 : ℚ), (8071 / 32000 : ℚ)⟩
  center := (16141 / 64000 : ℚ)
  supportValue := (9490283387840557 / 10000000000000000 : ℚ)
  supportSlope := (-22908628322309 / 2500000000000 : ℚ)
  oldCenter := (9490283387840557 / 10000000000000000 : ℚ)
  oldHi := (94950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2167, piece_2168]
}

def cell_7127 : Cell := { cellDefaults with
  domain := ⟨(8071 / 32000 : ℚ), (1009 / 4000 : ℚ)⟩
  center := (16143 / 64000 : ℚ)
  supportValue := (2371855106038489 / 2500000000000000 : ℚ)
  supportSlope := (-9159040264258067 / 1000000000000000 : ℚ)
  oldCenter := (2371855106038489 / 2500000000000000 : ℚ)
  oldHi := (94900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2167]
}

def cell_7128 : Cell := { cellDefaults with
  domain := ⟨(1009 / 4000 : ℚ), (8073 / 32000 : ℚ)⟩
  center := (3229 / 12800 : ℚ)
  supportValue := (9484558964617307 / 10000000000000000 : ℚ)
  supportSlope := (-457735001233317 / 50000000000000 : ℚ)
  oldCenter := (9484558964617307 / 10000000000000000 : ℚ)
  oldLo := (47400000000000003 / 50000000000000000 : ℚ)
  oldHi := (94900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2166, piece_2167]
}

def cell_7129 : Cell := { cellDefaults with
  domain := ⟨(8073 / 32000 : ℚ), (4037 / 16000 : ℚ)⟩
  center := (16147 / 64000 : ℚ)
  supportValue := (1896339758375491 / 2000000000000000 : ℚ)
  supportSlope := (-9149996032739693 / 1000000000000000 : ℚ)
  oldCenter := (1896339758375491 / 2000000000000000 : ℚ)
  oldLo := (47400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2166]
}

def cell_7130 : Cell := { cellDefaults with
  domain := ⟨(4037 / 16000 : ℚ), (323 / 1280 : ℚ)⟩
  center := (16149 / 64000 : ℚ)
  supportValue := (4739420032835499 / 5000000000000000 : ℚ)
  supportSlope := (-2286488916094953 / 250000000000000 : ℚ)
  oldCenter := (4739420032835499 / 5000000000000000 : ℚ)
  oldLo := (94750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2165, piece_2166]
}

def cell_7131 : Cell := { cellDefaults with
  domain := ⟨(323 / 1280 : ℚ), (2019 / 8000 : ℚ)⟩
  center := (16151 / 64000 : ℚ)
  supportValue := (118449783966589 / 125000000000000 : ℚ)
  supportSlope := (-1828228909766949 / 200000000000000 : ℚ)
  oldCenter := (118449783966589 / 125000000000000 : ℚ)
  oldLo := (47350000000000003 / 50000000000000000 : ℚ)
  oldHi := (47400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2164, piece_2165]
}

def cell_7132 : Cell := { cellDefaults with
  domain := ⟨(2019 / 8000 : ℚ), (8077 / 32000 : ℚ)⟩
  center := (16153 / 64000 : ℚ)
  supportValue := (1184140840277259 / 1250000000000000 : ℚ)
  supportSlope := (-9137033477571777 / 1000000000000000 : ℚ)
  oldCenter := (1184140840277259 / 1250000000000000 : ℚ)
  oldLo := (47350000000000003 / 50000000000000000 : ℚ)
  oldHi := (94750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2164]
}

def cell_7133 : Cell := { cellDefaults with
  domain := ⟨(8077 / 32000 : ℚ), (4039 / 16000 : ℚ)⟩
  center := (3231 / 12800 : ℚ)
  supportValue := (9470272195844669 / 10000000000000000 : ℚ)
  supportSlope := (-9132409696441357 / 1000000000000000 : ℚ)
  oldCenter := (9470272195844669 / 10000000000000000 : ℚ)
  oldLo := (94650000000000001 / 100000000000000000 : ℚ)
  oldHi := (94750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2163, piece_2164]
}

def cell_7134 : Cell := { cellDefaults with
  domain := ⟨(4039 / 16000 : ℚ), (8079 / 32000 : ℚ)⟩
  center := (16157 / 64000 : ℚ)
  supportValue := (9467418929661817 / 10000000000000000 : ℚ)
  supportSlope := (-1825601860807069 / 200000000000000 : ℚ)
  oldCenter := (9467418929661817 / 10000000000000000 : ℚ)
  oldLo := (94650000000000001 / 100000000000000000 : ℚ)
  oldHi := (47350000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2163]
}

def cell_7135 : Cell := { cellDefaults with
  domain := ⟨(8079 / 32000 : ℚ), (101 / 400 : ℚ)⟩
  center := (16159 / 64000 : ℚ)
  supportValue := (378582686653191 / 400000000000000 : ℚ)
  supportSlope := (-9123681811239237 / 1000000000000000 : ℚ)
  oldCenter := (378582686653191 / 400000000000000 : ℚ)
  oldLo := (47300000000000003 / 50000000000000000 : ℚ)
  oldHi := (47350000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2162, piece_2163]
}

def cell_7136 : Cell := { cellDefaults with
  domain := ⟨(101 / 400 : ℚ), (8081 / 32000 : ℚ)⟩
  r := (43582850039339 / 50000000000000 : ℚ)
  w := (1852285863999 / 1000000000000 : ℚ)
  center := (16161 / 64000 : ℚ)
  supportValue := (4741740171136413 / 5000000000000000 : ℚ)
  supportSlope := (-9143788460285407 / 1000000000000000 : ℚ)
  oldCenter := (4741740171136413 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_649
  oldLo := (47400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2166]
}

def cell_7137 : Cell := { cellDefaults with
  domain := ⟨(8081 / 32000 : ℚ), (4041 / 16000 : ℚ)⟩
  r := (43582850039339 / 50000000000000 : ℚ)
  w := (1852285863999 / 1000000000000 : ℚ)
  center := (16163 / 64000 : ℚ)
  supportValue := (1185077962846503 / 1250000000000000 : ℚ)
  supportSlope := (-4569515858236173 / 500000000000000 : ℚ)
  oldCenter := (1185077962846503 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_649
  oldLo := (94750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2165, piece_2166]
}

def cell_7138 : Cell := { cellDefaults with
  domain := ⟨(4041 / 16000 : ℚ), (2021 / 8000 : ℚ)⟩
  r := (43582850039339 / 50000000000000 : ℚ)
  w := (1852285863999 / 1000000000000 : ℚ)
  center := (8083 / 32000 : ℚ)
  supportValue := (2369086971817709 / 2500000000000000 : ℚ)
  supportSlope := (-913255613800601 / 100000000000000 : ℚ)
  oldCenter := (2369086971817709 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_649
  oldLo := (47350000000000003 / 50000000000000000 : ℚ)
  oldHi := (47400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2164, piece_2165]
}

def cell_7139 : Cell := { cellDefaults with
  domain := ⟨(2021 / 8000 : ℚ), (4043 / 16000 : ℚ)⟩
  r := (43582850039339 / 50000000000000 : ℚ)
  w := (1852285863999 / 1000000000000 : ℚ)
  center := (1617 / 6400 : ℚ)
  supportValue := (189412856893241 / 200000000000000 : ℚ)
  supportSlope := (-9123709515304057 / 1000000000000000 : ℚ)
  oldCenter := (189412856893241 / 200000000000000 : ℚ)
  newCoefficients := coefficients_649
  oldLo := (94650000000000001 / 100000000000000000 : ℚ)
  oldHi := (94750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2163, piece_2164]
}

def cell_7140 : Cell := { cellDefaults with
  domain := ⟨(4043 / 16000 : ℚ), (1011 / 4000 : ℚ)⟩
  r := (43582850039339 / 50000000000000 : ℚ)
  w := (1852285863999 / 1000000000000 : ℚ)
  center := (8087 / 32000 : ℚ)
  supportValue := (4732471660113123 / 5000000000000000 : ℚ)
  supportSlope := (-22787175442609 / 2500000000000 : ℚ)
  oldCenter := (4732471660113123 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_649
  oldLo := (47300000000000003 / 50000000000000000 : ℚ)
  oldHi := (47350000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2162, piece_2163]
}

def cell_7141 : Cell := { cellDefaults with
  domain := ⟨(1011 / 4000 : ℚ), (809 / 3200 : ℚ)⟩
  r := (43582850039339 / 50000000000000 : ℚ)
  w := (1852285863999 / 1000000000000 : ℚ)
  center := (8089 / 32000 : ℚ)
  supportValue := (472962461811451 / 500000000000000 : ℚ)
  supportSlope := (-9106038127264071 / 1000000000000000 : ℚ)
  oldCenter := (472962461811451 / 500000000000000 : ℚ)
  newCoefficients := coefficients_649
  oldLo := (94550000000000001 / 100000000000000000 : ℚ)
  oldHi := (94650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2161, piece_2162]
}

def cell_7142 : Cell := { cellDefaults with
  domain := ⟨(809 / 3200 : ℚ), (2023 / 8000 : ℚ)⟩
  r := (43582850039339 / 50000000000000 : ℚ)
  w := (1852285863999 / 1000000000000 : ℚ)
  center := (8091 / 32000 : ℚ)
  supportValue := (9453560670104649 / 10000000000000000 : ℚ)
  supportSlope := (-9097213376797697 / 1000000000000000 : ℚ)
  oldCenter := (9453560670104649 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_649
  oldLo := (47250000000000003 / 50000000000000000 : ℚ)
  oldHi := (47300000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2160, piece_2161]
}

def cell_7143 : Cell := { cellDefaults with
  domain := ⟨(2023 / 8000 : ℚ), (4047 / 16000 : ℚ)⟩
  r := (43582850039339 / 50000000000000 : ℚ)
  w := (1852285863999 / 1000000000000 : ℚ)
  center := (8093 / 32000 : ℚ)
  supportValue := (4723938808647857 / 5000000000000000 : ℚ)
  supportSlope := (-4544198138070499 / 500000000000000 : ℚ)
  oldCenter := (4723938808647857 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_649
  oldLo := (94450000000000001 / 100000000000000000 : ℚ)
  oldHi := (94550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2158, piece_2159, piece_2160]
}

def cell_7144 : Cell := { cellDefaults with
  domain := ⟨(4047 / 16000 : ℚ), (253 / 1000 : ℚ)⟩
  r := (43582850039339 / 50000000000000 : ℚ)
  w := (1852285863999 / 1000000000000 : ℚ)
  center := (1619 / 6400 : ℚ)
  supportValue := (9442200072662289 / 10000000000000000 : ℚ)
  supportSlope := (-113496539828839 / 12500000000000 : ℚ)
  oldCenter := (9442200072662289 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_649
  oldLo := (94350000000000001 / 100000000000000000 : ℚ)
  oldHi := (2361731843575419 / 2500000000000000 : ℚ)
  oldPieces := [piece_2156, piece_2157, piece_2158]
}

def cell_7145 : Cell := { cellDefaults with
  domain := ⟨(253 / 1000 : ℚ), (4049 / 16000 : ℚ)⟩
  r := (17417444787251 / 20000000000000 : ℚ)
  w := (4627545598899 / 2500000000000 : ℚ)
  center := (8097 / 32000 : ℚ)
  supportValue := (4729095942007653 / 5000000000000000 : ℚ)
  supportSlope := (-2273773412409419 / 250000000000000 : ℚ)
  oldCenter := (4729095942007653 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_650
  oldLo := (94550000000000001 / 100000000000000000 : ℚ)
  oldHi := (94650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2161, piece_2162]
}

def cell_7146 : Cell := { cellDefaults with
  domain := ⟨(4049 / 16000 : ℚ), (81 / 320 : ℚ)⟩
  r := (17417444787251 / 20000000000000 : ℚ)
  w := (4627545598899 / 2500000000000 : ℚ)
  center := (8099 / 32000 : ℚ)
  supportValue := (9452510150933969 / 10000000000000000 : ℚ)
  supportSlope := (-908636391132589 / 100000000000000 : ℚ)
  oldCenter := (9452510150933969 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_650
  oldLo := (2361731843575419 / 2500000000000000 : ℚ)
  oldHi := (47300000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2159, piece_2160, piece_2161]
}

def cell_7147 : Cell := { cellDefaults with
  domain := ⟨(81 / 320 : ℚ), (4051 / 16000 : ℚ)⟩
  r := (17417444787251 / 20000000000000 : ℚ)
  w := (4627545598899 / 2500000000000 : ℚ)
  center := (8101 / 32000 : ℚ)
  supportValue := (9446833916061033 / 10000000000000000 : ℚ)
  supportSlope := (-9077642033457067 / 1000000000000000 : ℚ)
  oldCenter := (9446833916061033 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_650
  oldLo := (47200000000000003 / 50000000000000000 : ℚ)
  oldHi := (47250000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2157, piece_2158, piece_2159]
}

def cell_7148 : Cell := { cellDefaults with
  domain := ⟨(4051 / 16000 : ℚ), (1013 / 4000 : ℚ)⟩
  r := (17417444787251 / 20000000000000 : ℚ)
  w := (4627545598899 / 2500000000000 : ℚ)
  center := (8103 / 32000 : ℚ)
  supportValue := (1180145396770791 / 1250000000000000 : ℚ)
  supportSlope := (-9068856285825433 / 1000000000000000 : ℚ)
  oldCenter := (1180145396770791 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_650
  oldLo := (94350000000000001 / 100000000000000000 : ℚ)
  oldHi := (94450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2156, piece_2157]
}

def cell_7149 : Cell := { cellDefaults with
  domain := ⟨(1013 / 4000 : ℚ), (50660195530726257 / 200000000000000000 : ℚ)⟩
  r := (17417444787251 / 20000000000000 : ℚ)
  w := (4627545598899 / 2500000000000 : ℚ)
  center := (101310195530726257 / 400000000000000000 : ℚ)
  supportValue := (4718009943408521 / 5000000000000000 : ℚ)
  supportSlope := (-9060850854714223 / 1000000000000000 : ℚ)
  oldCenter := (4718009943408521 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_650
  oldLo := (47150000000000003 / 50000000000000000 : ℚ)
  oldHi := (47200000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2155, piece_2156]
}

theorem check_7100 : cell_7100.check = true := by
  decide +kernel

theorem check_7101 : cell_7101.check = true := by
  decide +kernel

theorem check_7102 : cell_7102.check = true := by
  decide +kernel

theorem check_7103 : cell_7103.check = true := by
  decide +kernel

theorem check_7104 : cell_7104.check = true := by
  decide +kernel

theorem check_7105 : cell_7105.check = true := by
  decide +kernel

theorem check_7106 : cell_7106.check = true := by
  decide +kernel

theorem check_7107 : cell_7107.check = true := by
  decide +kernel

theorem check_7108 : cell_7108.check = true := by
  decide +kernel

theorem check_7109 : cell_7109.check = true := by
  decide +kernel

theorem check_7110 : cell_7110.check = true := by
  decide +kernel

theorem check_7111 : cell_7111.check = true := by
  decide +kernel

theorem check_7112 : cell_7112.check = true := by
  decide +kernel

theorem check_7113 : cell_7113.check = true := by
  decide +kernel

theorem check_7114 : cell_7114.check = true := by
  decide +kernel

theorem check_7115 : cell_7115.check = true := by
  decide +kernel

theorem check_7116 : cell_7116.check = true := by
  decide +kernel

theorem check_7117 : cell_7117.check = true := by
  decide +kernel

theorem check_7118 : cell_7118.check = true := by
  decide +kernel

theorem check_7119 : cell_7119.check = true := by
  decide +kernel

theorem check_7120 : cell_7120.check = true := by
  decide +kernel

theorem check_7121 : cell_7121.check = true := by
  decide +kernel

theorem check_7122 : cell_7122.check = true := by
  decide +kernel

theorem check_7123 : cell_7123.check = true := by
  decide +kernel

theorem check_7124 : cell_7124.check = true := by
  decide +kernel

theorem check_7125 : cell_7125.check = true := by
  decide +kernel

theorem check_7126 : cell_7126.check = true := by
  decide +kernel

theorem check_7127 : cell_7127.check = true := by
  decide +kernel

theorem check_7128 : cell_7128.check = true := by
  decide +kernel

theorem check_7129 : cell_7129.check = true := by
  decide +kernel

theorem check_7130 : cell_7130.check = true := by
  decide +kernel

theorem check_7131 : cell_7131.check = true := by
  decide +kernel

theorem check_7132 : cell_7132.check = true := by
  decide +kernel

theorem check_7133 : cell_7133.check = true := by
  decide +kernel

theorem check_7134 : cell_7134.check = true := by
  decide +kernel

theorem check_7135 : cell_7135.check = true := by
  decide +kernel

theorem check_7136 : cell_7136.check = true := by
  decide +kernel

theorem check_7137 : cell_7137.check = true := by
  decide +kernel

theorem check_7138 : cell_7138.check = true := by
  decide +kernel

theorem check_7139 : cell_7139.check = true := by
  decide +kernel

theorem check_7140 : cell_7140.check = true := by
  decide +kernel

theorem check_7141 : cell_7141.check = true := by
  decide +kernel

theorem check_7142 : cell_7142.check = true := by
  decide +kernel

theorem check_7143 : cell_7143.check = true := by
  decide +kernel

theorem check_7144 : cell_7144.check = true := by
  decide +kernel

theorem check_7145 : cell_7145.check = true := by
  decide +kernel

theorem check_7146 : cell_7146.check = true := by
  decide +kernel

theorem check_7147 : cell_7147.check = true := by
  decide +kernel

theorem check_7148 : cell_7148.check = true := by
  decide +kernel

theorem check_7149 : cell_7149.check = true := by
  decide +kernel

def cells : List Cell := [cell_7100, cell_7101, cell_7102, cell_7103, cell_7104, cell_7105, cell_7106, cell_7107, cell_7108, cell_7109, cell_7110, cell_7111, cell_7112, cell_7113, cell_7114, cell_7115, cell_7116, cell_7117, cell_7118, cell_7119, cell_7120, cell_7121, cell_7122, cell_7123, cell_7124, cell_7125, cell_7126, cell_7127, cell_7128, cell_7129, cell_7130, cell_7131, cell_7132, cell_7133, cell_7134, cell_7135, cell_7136, cell_7137, cell_7138, cell_7139, cell_7140, cell_7141, cell_7142, cell_7143, cell_7144, cell_7145, cell_7146, cell_7147, cell_7148, cell_7149]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7100, check_7101, check_7102, check_7103, check_7104, check_7105, check_7106, check_7107, check_7108, check_7109, check_7110, check_7111, check_7112, check_7113, check_7114, check_7115, check_7116, check_7117, check_7118, check_7119, check_7120, check_7121, check_7122, check_7123, check_7124, check_7125, check_7126, check_7127, check_7128, check_7129, check_7130, check_7131, check_7132, check_7133, check_7134, check_7135, check_7136, check_7137, check_7138, check_7139, check_7140, check_7141, check_7142, check_7143, check_7144, check_7145, check_7146, check_7147, check_7148, check_7149, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0142

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0142
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0142
open AnalyticBounds.ExpressionCertificate

theorem linked_7100 : Linked cell_7100 pieces := by
  apply Linked.of_piece piece_645 piece_645_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7100, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2179_mem, piece_2180_mem⟩

theorem linked_7101 : Linked cell_7101 pieces := by
  apply Linked.of_piece piece_645 piece_645_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7101, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2178_mem, piece_2179_mem⟩

theorem linked_7102 : Linked cell_7102 pieces := by
  apply Linked.of_piece piece_646 piece_646_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7102, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2181_mem, piece_2182_mem⟩

theorem linked_7103 : Linked cell_7103 pieces := by
  apply Linked.of_piece piece_646 piece_646_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7103, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2180_mem, piece_2181_mem⟩

theorem linked_7104 : Linked cell_7104 pieces := by
  apply Linked.of_piece piece_646 piece_646_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7104, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2178_mem, ⟨piece_2179_mem, piece_2180_mem⟩⟩

theorem linked_7105 : Linked cell_7105 pieces := by
  apply Linked.of_piece piece_646 piece_646_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7105, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2177_mem, piece_2178_mem⟩

theorem linked_7106 : Linked cell_7106 pieces := by
  apply Linked.of_piece piece_646 piece_646_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7106, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2176_mem, piece_2177_mem⟩

theorem linked_7107 : Linked cell_7107 pieces := by
  apply Linked.of_piece piece_646 piece_646_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7107, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2175_mem, piece_2176_mem⟩

theorem linked_7108 : Linked cell_7108 pieces := by
  apply Linked.of_piece piece_646 piece_646_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7108, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2174_mem, piece_2175_mem⟩

theorem linked_7109 : Linked cell_7109 pieces := by
  apply Linked.of_piece piece_646 piece_646_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7109, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2173_mem, piece_2174_mem⟩

theorem linked_7110 : Linked cell_7110 pieces := by
  apply Linked.of_piece piece_647 piece_647_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7110, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2176_mem, piece_2177_mem⟩

theorem linked_7111 : Linked cell_7111 pieces := by
  apply Linked.of_piece piece_647 piece_647_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7111, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2175_mem, piece_2176_mem⟩

theorem linked_7112 : Linked cell_7112 pieces := by
  apply Linked.of_piece piece_647 piece_647_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7112, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2174_mem, piece_2175_mem⟩

theorem linked_7113 : Linked cell_7113 pieces := by
  apply Linked.of_piece piece_647 piece_647_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7113, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2173_mem, piece_2174_mem⟩

theorem linked_7114 : Linked cell_7114 pieces := by
  apply Linked.of_piece piece_647 piece_647_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7114, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2171_mem, ⟨piece_2172_mem, piece_2173_mem⟩⟩

theorem linked_7115 : Linked cell_7115 pieces := by
  apply Linked.of_piece piece_647 piece_647_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7115, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2169_mem, ⟨piece_2170_mem, piece_2171_mem⟩⟩

theorem linked_7116 : Linked cell_7116 pieces := by
  apply Linked.of_piece piece_647 piece_647_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7116, List.cons_subset, List.nil_subset, and_true]
  exact piece_2169_mem

theorem linked_7117 : Linked cell_7117 pieces := by
  apply Linked.of_piece piece_647 piece_647_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7117, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2168_mem, piece_2169_mem⟩

theorem linked_7118 : Linked cell_7118 pieces := by
  apply Linked.of_piece piece_647 piece_647_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7118, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2167_mem, piece_2168_mem⟩

theorem linked_7119 : Linked cell_7119 pieces := by
  apply Linked.of_piece piece_647 piece_647_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7119, List.cons_subset, List.nil_subset, and_true]
  exact piece_2167_mem

theorem linked_7120 : Linked cell_7120 pieces := by
  apply Linked.of_piece piece_648 piece_648_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7120, List.cons_subset, List.nil_subset, and_true]
  exact piece_2172_mem

theorem linked_7121 : Linked cell_7121 pieces := by
  apply Linked.of_piece piece_648 piece_648_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7121, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2171_mem, piece_2172_mem⟩

theorem linked_7122 : Linked cell_7122 pieces := by
  apply Linked.of_piece piece_648 piece_648_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7122, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2170_mem, piece_2171_mem⟩

theorem linked_7123 : Linked cell_7123 pieces := by
  apply Linked.of_piece piece_648 piece_648_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7123, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2169_mem, piece_2170_mem⟩

theorem linked_7124 : Linked cell_7124 pieces := by
  apply Linked.of_piece piece_648 piece_648_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7124, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2168_mem, piece_2169_mem⟩

theorem linked_7125 : Linked cell_7125 pieces := by
  apply Linked.of_piece piece_648 piece_648_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7125, List.cons_subset, List.nil_subset, and_true]
  exact piece_2168_mem

theorem linked_7126 : Linked cell_7126 pieces := by
  apply Linked.of_piece piece_648 piece_648_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7126, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2167_mem, piece_2168_mem⟩

theorem linked_7127 : Linked cell_7127 pieces := by
  apply Linked.of_piece piece_648 piece_648_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7127, List.cons_subset, List.nil_subset, and_true]
  exact piece_2167_mem

theorem linked_7128 : Linked cell_7128 pieces := by
  apply Linked.of_piece piece_648 piece_648_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7128, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2166_mem, piece_2167_mem⟩

theorem linked_7129 : Linked cell_7129 pieces := by
  apply Linked.of_piece piece_648 piece_648_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7129, List.cons_subset, List.nil_subset, and_true]
  exact piece_2166_mem

theorem linked_7130 : Linked cell_7130 pieces := by
  apply Linked.of_piece piece_648 piece_648_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7130, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2165_mem, piece_2166_mem⟩

theorem linked_7131 : Linked cell_7131 pieces := by
  apply Linked.of_piece piece_648 piece_648_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7131, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2164_mem, piece_2165_mem⟩

theorem linked_7132 : Linked cell_7132 pieces := by
  apply Linked.of_piece piece_648 piece_648_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7132, List.cons_subset, List.nil_subset, and_true]
  exact piece_2164_mem

theorem linked_7133 : Linked cell_7133 pieces := by
  apply Linked.of_piece piece_648 piece_648_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7133, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2163_mem, piece_2164_mem⟩

theorem linked_7134 : Linked cell_7134 pieces := by
  apply Linked.of_piece piece_648 piece_648_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7134, List.cons_subset, List.nil_subset, and_true]
  exact piece_2163_mem

theorem linked_7135 : Linked cell_7135 pieces := by
  apply Linked.of_piece piece_648 piece_648_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7135, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2162_mem, piece_2163_mem⟩

theorem linked_7136 : Linked cell_7136 pieces := by
  apply Linked.of_piece piece_649 piece_649_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7136, List.cons_subset, List.nil_subset, and_true]
  exact piece_2166_mem

theorem linked_7137 : Linked cell_7137 pieces := by
  apply Linked.of_piece piece_649 piece_649_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7137, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2165_mem, piece_2166_mem⟩

theorem linked_7138 : Linked cell_7138 pieces := by
  apply Linked.of_piece piece_649 piece_649_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7138, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2164_mem, piece_2165_mem⟩

theorem linked_7139 : Linked cell_7139 pieces := by
  apply Linked.of_piece piece_649 piece_649_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7139, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2163_mem, piece_2164_mem⟩

theorem linked_7140 : Linked cell_7140 pieces := by
  apply Linked.of_piece piece_649 piece_649_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7140, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2162_mem, piece_2163_mem⟩

theorem linked_7141 : Linked cell_7141 pieces := by
  apply Linked.of_piece piece_649 piece_649_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7141, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2161_mem, piece_2162_mem⟩

theorem linked_7142 : Linked cell_7142 pieces := by
  apply Linked.of_piece piece_649 piece_649_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7142, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2160_mem, piece_2161_mem⟩

theorem linked_7143 : Linked cell_7143 pieces := by
  apply Linked.of_piece piece_649 piece_649_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7143, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2158_mem, ⟨piece_2159_mem, piece_2160_mem⟩⟩

theorem linked_7144 : Linked cell_7144 pieces := by
  apply Linked.of_piece piece_649 piece_649_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7144, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2156_mem, ⟨piece_2157_mem, piece_2158_mem⟩⟩

theorem linked_7145 : Linked cell_7145 pieces := by
  apply Linked.of_piece piece_650 piece_650_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7145, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2161_mem, piece_2162_mem⟩

theorem linked_7146 : Linked cell_7146 pieces := by
  apply Linked.of_piece piece_650 piece_650_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7146, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2159_mem, ⟨piece_2160_mem, piece_2161_mem⟩⟩

theorem linked_7147 : Linked cell_7147 pieces := by
  apply Linked.of_piece piece_650 piece_650_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7147, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2157_mem, ⟨piece_2158_mem, piece_2159_mem⟩⟩

theorem linked_7148 : Linked cell_7148 pieces := by
  apply Linked.of_piece piece_650 piece_650_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7148, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2156_mem, piece_2157_mem⟩

theorem linked_7149 : Linked cell_7149 pieces := by
  apply Linked.of_piece piece_650 piece_650_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7149, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2155_mem, piece_2156_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0142.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0142.cells,List.forall_mem_cons]
  exact ⟨linked_7100, linked_7101, linked_7102, linked_7103, linked_7104, linked_7105, linked_7106, linked_7107, linked_7108, linked_7109, linked_7110, linked_7111, linked_7112, linked_7113, linked_7114, linked_7115, linked_7116, linked_7117, linked_7118, linked_7119, linked_7120, linked_7121, linked_7122, linked_7123, linked_7124, linked_7125, linked_7126, linked_7127, linked_7128, linked_7129, linked_7130, linked_7131, linked_7132, linked_7133, linked_7134, linked_7135, linked_7136, linked_7137, linked_7138, linked_7139, linked_7140, linked_7141, linked_7142, linked_7143, linked_7144, linked_7145, linked_7146, linked_7147, linked_7148, linked_7149, by simp⟩

theorem covered : covers (2007 / 8000 : ℚ) (50660195530726257 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0142.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0142
