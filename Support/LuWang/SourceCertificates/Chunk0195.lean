import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0195
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(10368750000000001 / 25000000000000000 : ℚ), (10370312500000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (34243069356633 / 50000000000000 : ℚ)
  w := (15566250527517 / 10000000000000 : ℚ)
  center := (10369531250000001 / 25000000000000000 : ℚ)
  supportValue := (5246760683391751 / 10000000000000000 : ℚ)
  supportSlope := (-754237587417883 / 250000000000000 : ℚ)
  oldCenter := (5246760683391751 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1004
  oldLo := (6531250000000001 / 12500000000000000 : ℚ)
  oldHi := (26150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1238]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9750 : Cell := { cellDefaults with
  r := (1370596044833 / 2000000000000 : ℚ)
  w := (486641186983 / 312500000000 : ℚ)
  newCoefficients := coefficients_1003
  oldLo := (6556250000000001 / 12500000000000000 : ℚ)
  oldHi := (26250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1243]
}

def cell_9751 : Cell := { cellDefaults with
  domain := ⟨(10370312500000001 / 25000000000000000 : ℚ), (10371875000000001 / 25000000000000000 : ℚ)⟩
  r := (1370596044833 / 2000000000000 : ℚ)
  w := (486641186983 / 312500000000 : ℚ)
  center := (10371093750000001 / 25000000000000000 : ℚ)
  supportValue := (655609449973187 / 1250000000000000 : ℚ)
  supportSlope := (-7538887893110413 / 2500000000000000 : ℚ)
  oldCenter := (655609449973187 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1003
  oldLo := (5243575418994413 / 10000000000000000 : ℚ)
  oldHi := (26250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1242, piece_1243]
}

def cell_9752 : Cell := { cellDefaults with
  domain := ⟨(10371875000000001 / 25000000000000000 : ℚ), (10373437500000001 / 25000000000000000 : ℚ)⟩
  r := (1370596044833 / 2000000000000 : ℚ)
  w := (486641186983 / 312500000000 : ℚ)
  center := (10372656250000001 / 25000000000000000 : ℚ)
  supportValue := (1310747815386309 / 2500000000000000 : ℚ)
  supportSlope := (-1507042936434999 / 500000000000000 : ℚ)
  oldCenter := (1310747815386309 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1003
  oldLo := (26200000000000001 / 50000000000000000 : ℚ)
  oldHi := (6556250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1241, piece_1242]
}

def cell_9753 : Cell := { cellDefaults with
  domain := ⟨(10373437500000001 / 25000000000000000 : ℚ), (10375000000000001 / 25000000000000000 : ℚ)⟩
  r := (1370596044833 / 2000000000000 : ℚ)
  w := (486641186983 / 312500000000 : ℚ)
  center := (10374218750000001 / 25000000000000000 : ℚ)
  supportValue := (5241107991087529 / 10000000000000000 : ℚ)
  supportSlope := (-30123781884086043 / 10000000000000000 : ℚ)
  oldCenter := (5241107991087529 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1003
  oldLo := (26200000000000001 / 50000000000000000 : ℚ)
  oldHi := (5243575418994413 / 10000000000000000 : ℚ)
  oldPieces := [piece_1241]
}

def cell_9754 : Cell := { cellDefaults with
  domain := ⟨(10375000000000001 / 25000000000000000 : ℚ), (10376562500000001 / 25000000000000000 : ℚ)⟩
  center := (10375781250000001 / 25000000000000000 : ℚ)
  supportValue := (2623517885310929 / 5000000000000000 : ℚ)
  supportSlope := (-3015242860382017 / 1000000000000000 : ℚ)
  oldCenter := (2623517885310929 / 5000000000000000 : ℚ)
  oldLo := (6556250000000001 / 12500000000000000 : ℚ)
  oldHi := (26250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1243]
}

def cell_9755 : Cell := { cellDefaults with
  domain := ⟨(10376562500000001 / 25000000000000000 : ℚ), (10378125000000001 / 25000000000000000 : ℚ)⟩
  center := (10377343750000001 / 25000000000000000 : ℚ)
  supportValue := (5245151776494057 / 10000000000000000 : ℚ)
  supportSlope := (-30137692203062727 / 10000000000000000 : ℚ)
  oldCenter := (5245151776494057 / 10000000000000000 : ℚ)
  oldLo := (5243575418994413 / 10000000000000000 : ℚ)
  oldHi := (26250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1242, piece_1243]
}

def cell_9756 : Cell := { cellDefaults with
  domain := ⟨(10378125000000001 / 25000000000000000 : ℚ), (10379687500000001 / 25000000000000000 : ℚ)⟩
  center := (10378906250000001 / 25000000000000000 : ℚ)
  supportValue := (2621634265265909 / 5000000000000000 : ℚ)
  supportSlope := (-15061918334691171 / 5000000000000000 : ℚ)
  oldCenter := (2621634265265909 / 5000000000000000 : ℚ)
  oldLo := (26200000000000001 / 50000000000000000 : ℚ)
  oldHi := (6556250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1241, piece_1242]
}

def cell_9757 : Cell := { cellDefaults with
  domain := ⟨(10379687500000001 / 25000000000000000 : ℚ), (10381250000000001 / 25000000000000000 : ℚ)⟩
  center := (10380468750000001 / 25000000000000000 : ℚ)
  supportValue := (327586645193897 / 625000000000000 : ℚ)
  supportSlope := (-6021357306579489 / 2000000000000000 : ℚ)
  oldCenter := (327586645193897 / 625000000000000 : ℚ)
  oldLo := (26200000000000001 / 50000000000000000 : ℚ)
  oldHi := (5243575418994413 / 10000000000000000 : ℚ)
  oldPieces := [piece_1241]
}

def cell_9758 : Cell := { cellDefaults with
  domain := ⟨(10381250000000001 / 25000000000000000 : ℚ), (10382812500000001 / 25000000000000000 : ℚ)⟩
  center := (10382031250000001 / 25000000000000000 : ℚ)
  supportValue := (5239505089361519 / 10000000000000000 : ℚ)
  supportSlope := (-3009398231935023 / 1000000000000000 : ℚ)
  oldCenter := (5239505089361519 / 10000000000000000 : ℚ)
  oldLo := (6543750000000001 / 12500000000000000 : ℚ)
  oldHi := (5243575418994413 / 10000000000000000 : ℚ)
  oldPieces := [piece_1240, piece_1241]
}

def cell_9759 : Cell := { cellDefaults with
  domain := ⟨(10382812500000001 / 25000000000000000 : ℚ), (10384375000000001 / 25000000000000000 : ℚ)⟩
  center := (10383593750000001 / 25000000000000000 : ℚ)
  supportValue := (2618812332904273 / 5000000000000000 : ℚ)
  supportSlope := (-6015649544615087 / 2000000000000000 : ℚ)
  oldCenter := (2618812332904273 / 5000000000000000 : ℚ)
  oldLo := (6543750000000001 / 12500000000000000 : ℚ)
  oldHi := (26200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1240]
}

def cell_9760 : Cell := { cellDefaults with
  domain := ⟨(10384375000000001 / 25000000000000000 : ℚ), (10385937500000001 / 25000000000000000 : ℚ)⟩
  center := (10385156250000001 / 25000000000000000 : ℚ)
  supportValue := (1047149061394983 / 2000000000000000 : ℚ)
  supportSlope := (-120247202229109 / 40000000000000 : ℚ)
  oldCenter := (1047149061394983 / 2000000000000000 : ℚ)
  oldLo := (26150000000000001 / 50000000000000000 : ℚ)
  oldHi := (26200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1239, piece_1240]
}

def cell_9761 : Cell := { cellDefaults with
  domain := ⟨(10385937500000001 / 25000000000000000 : ℚ), (10387500000000001 / 25000000000000000 : ℚ)⟩
  center := (10386718750000001 / 25000000000000000 : ℚ)
  supportValue := (2616933401005843 / 5000000000000000 : ℚ)
  supportSlope := (-7512439505639179 / 2500000000000000 : ℚ)
  oldCenter := (2616933401005843 / 5000000000000000 : ℚ)
  oldLo := (26150000000000001 / 50000000000000000 : ℚ)
  oldHi := (6543750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1239]
}

def cell_9762 : Cell := { cellDefaults with
  domain := ⟨(10387500000000001 / 25000000000000000 : ℚ), (10389062500000001 / 25000000000000000 : ℚ)⟩
  r := (8555317146369 / 12500000000000 : ℚ)
  w := (3111999293891 / 2000000000000 : ℚ)
  center := (10388281250000001 / 25000000000000000 : ℚ)
  supportValue := (2619890058123907 / 5000000000000000 : ℚ)
  supportSlope := (-30076155601861387 / 10000000000000000 : ℚ)
  oldCenter := (2619890058123907 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1005
  oldLo := (6543750000000001 / 12500000000000000 : ℚ)
  oldHi := (5243575418994413 / 10000000000000000 : ℚ)
  oldPieces := [piece_1240, piece_1241]
}

def cell_9763 : Cell := { cellDefaults with
  domain := ⟨(10389062500000001 / 25000000000000000 : ℚ), (10390625000000001 / 25000000000000000 : ℚ)⟩
  r := (8555317146369 / 12500000000000 : ℚ)
  w := (3111999293891 / 2000000000000 : ℚ)
  center := (10389843750000001 / 25000000000000000 : ℚ)
  supportValue := (2618950377691243 / 5000000000000000 : ℚ)
  supportSlope := (-6012251564762039 / 2000000000000000 : ℚ)
  oldCenter := (2618950377691243 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1005
  oldLo := (6543750000000001 / 12500000000000000 : ℚ)
  oldHi := (26200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1240]
}

def cell_9764 : Cell := { cellDefaults with
  domain := ⟨(10390625000000001 / 25000000000000000 : ℚ), (10392187500000001 / 25000000000000000 : ℚ)⟩
  r := (8555317146369 / 12500000000000 : ℚ)
  w := (3111999293891 / 2000000000000 : ℚ)
  center := (10391406250000001 / 25000000000000000 : ℚ)
  supportValue := (2618011228799921 / 5000000000000000 : ℚ)
  supportSlope := (-117360382296261 / 39062500000000 : ℚ)
  oldCenter := (2618011228799921 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1005
  oldLo := (6543750000000001 / 12500000000000000 : ℚ)
  oldHi := (26200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1240]
}

def cell_9765 : Cell := { cellDefaults with
  domain := ⟨(10392187500000001 / 25000000000000000 : ℚ), (10393750000000001 / 25000000000000000 : ℚ)⟩
  r := (8555317146369 / 12500000000000 : ℚ)
  w := (3111999293891 / 2000000000000 : ℚ)
  center := (10392968750000001 / 25000000000000000 : ℚ)
  supportValue := (1046829012681733 / 2000000000000000 : ℚ)
  supportSlope := (-15016289125533433 / 5000000000000000 : ℚ)
  oldCenter := (1046829012681733 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1005
  oldLo := (26150000000000001 / 50000000000000000 : ℚ)
  oldHi := (26200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1239, piece_1240]
}

def cell_9766 : Cell := { cellDefaults with
  domain := ⟨(10393750000000001 / 25000000000000000 : ℚ), (10395312500000001 / 25000000000000000 : ℚ)⟩
  r := (8555317146369 / 12500000000000 : ℚ)
  w := (3111999293891 / 2000000000000 : ℚ)
  center := (10394531250000001 / 25000000000000000 : ℚ)
  supportValue := (2616134271358321 / 5000000000000000 : ℚ)
  supportSlope := (-3001582728746399 / 1000000000000000 : ℚ)
  oldCenter := (2616134271358321 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1005
  oldLo := (26150000000000001 / 50000000000000000 : ℚ)
  oldHi := (6543750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1239]
}

def cell_9767 : Cell := { cellDefaults with
  domain := ⟨(10395312500000001 / 25000000000000000 : ℚ), (10396875000000001 / 25000000000000000 : ℚ)⟩
  r := (8555317146369 / 12500000000000 : ℚ)
  w := (3111999293891 / 2000000000000 : ℚ)
  center := (10396093750000001 / 25000000000000000 : ℚ)
  supportValue := (5230393083579489 / 10000000000000000 : ℚ)
  supportSlope := (-15000236738291761 / 5000000000000000 : ℚ)
  oldCenter := (5230393083579489 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1005
  oldHi := (6543750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1238, piece_1239]
}

def cell_9768 : Cell := { cellDefaults with
  domain := ⟨(10396875000000001 / 25000000000000000 : ℚ), (10398437500000001 / 25000000000000000 : ℚ)⟩
  r := (8555317146369 / 12500000000000 : ℚ)
  w := (3111999293891 / 2000000000000 : ℚ)
  center := (10397656250000001 / 25000000000000000 : ℚ)
  supportValue := (1045703681956783 / 2000000000000000 : ℚ)
  supportSlope := (-2998744564987277 / 1000000000000000 : ℚ)
  oldCenter := (1045703681956783 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1005
  oldPieces := [piece_1238]
}

def cell_9769 : Cell := { cellDefaults with
  domain := ⟨(10398437500000001 / 25000000000000000 : ℚ), (10400000000000001 / 25000000000000000 : ℚ)⟩
  r := (8555317146369 / 12500000000000 : ℚ)
  w := (3111999293891 / 2000000000000 : ℚ)
  center := (10399218750000001 / 25000000000000000 : ℚ)
  supportValue := (5226644724243881 / 10000000000000000 : ℚ)
  supportSlope := (-1873154895477569 / 625000000000000 : ℚ)
  oldCenter := (5226644724243881 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1005
  oldPieces := [piece_1238]
}

def cell_9770 : Cell := { cellDefaults with
  domain := ⟨(10400000000000001 / 25000000000000000 : ℚ), (10401562500000001 / 25000000000000000 : ℚ)⟩
  r := (68398996925609 / 100000000000000 : ℚ)
  w := (15553754809227 / 10000000000000 : ℚ)
  center := (10400781250000001 / 25000000000000000 : ℚ)
  supportValue := (1046508773277857 / 2000000000000000 : ℚ)
  supportSlope := (-599977430876919 / 200000000000000 : ℚ)
  oldCenter := (1046508773277857 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1006
  oldLo := (26150000000000001 / 50000000000000000 : ℚ)
  oldHi := (6543750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1239]
}

def cell_9771 : Cell := { cellDefaults with
  domain := ⟨(10401562500000001 / 25000000000000000 : ℚ), (10403125000000001 / 25000000000000000 : ℚ)⟩
  r := (68398996925609 / 100000000000000 : ℚ)
  w := (15553754809227 / 10000000000000 : ℚ)
  center := (10402343750000001 / 25000000000000000 : ℚ)
  supportValue := (5230669466169557 / 10000000000000000 : ℚ)
  supportSlope := (-14991360698157763 / 5000000000000000 : ℚ)
  oldCenter := (5230669466169557 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1006
  oldHi := (6543750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1238, piece_1239]
}

def cell_9772 : Cell := { cellDefaults with
  domain := ⟨(10403125000000001 / 25000000000000000 : ℚ), (10404687500000001 / 25000000000000000 : ℚ)⟩
  r := (68398996925609 / 100000000000000 : ℚ)
  w := (15553754809227 / 10000000000000 : ℚ)
  center := (10403906250000001 / 25000000000000000 : ℚ)
  supportValue := (5228795901041059 / 10000000000000000 : ℚ)
  supportSlope := (-749263571457881 / 250000000000000 : ℚ)
  oldCenter := (5228795901041059 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1006
  oldPieces := [piece_1238]
}

def cell_9773 : Cell := { cellDefaults with
  domain := ⟨(10404687500000001 / 25000000000000000 : ℚ), (10406250000000001 / 25000000000000000 : ℚ)⟩
  r := (68398996925609 / 100000000000000 : ℚ)
  w := (15553754809227 / 10000000000000 : ℚ)
  center := (10405468750000001 / 25000000000000000 : ℚ)
  supportValue := (130673081777763 / 250000000000000 : ℚ)
  supportSlope := (-1198144064650819 / 400000000000000 : ℚ)
  oldCenter := (130673081777763 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1006
  oldPieces := [piece_1238]
}

def cell_9774 : Cell := { cellDefaults with
  domain := ⟨(10406250000000001 / 25000000000000000 : ℚ), (10407812500000001 / 25000000000000000 : ℚ)⟩
  r := (68398996925609 / 100000000000000 : ℚ)
  w := (15553754809227 / 10000000000000 : ℚ)
  center := (10407031250000001 / 25000000000000000 : ℚ)
  supportValue := (2612525849711953 / 5000000000000000 : ℚ)
  supportSlope := (-1496965906193637 / 500000000000000 : ℚ)
  oldCenter := (2612525849711953 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1006
  oldLo := (26100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1237, piece_1238]
}

def cell_9775 : Cell := { cellDefaults with
  domain := ⟨(10407812500000001 / 25000000000000000 : ℚ), (10409375000000001 / 25000000000000000 : ℚ)⟩
  r := (68398996925609 / 100000000000000 : ℚ)
  w := (15553754809227 / 10000000000000 : ℚ)
  center := (10408593750000001 / 25000000000000000 : ℚ)
  supportValue := (522318084607127 / 1000000000000000 : ℚ)
  supportSlope := (-748133222865377 / 250000000000000 : ℚ)
  oldCenter := (522318084607127 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1006
  oldLo := (26100000000000001 / 50000000000000000 : ℚ)
  oldHi := (6531250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1237]
}

def cell_9776 : Cell := { cellDefaults with
  domain := ⟨(10409375000000001 / 25000000000000000 : ℚ), (10410937500000001 / 25000000000000000 : ℚ)⟩
  r := (68398996925609 / 100000000000000 : ℚ)
  w := (15553754809227 / 10000000000000 : ℚ)
  center := (10410156250000001 / 25000000000000000 : ℚ)
  supportValue := (1305327760311883 / 2500000000000000 : ℚ)
  supportSlope := (-74771030421239 / 25000000000000 : ℚ)
  oldCenter := (1305327760311883 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1006
  oldLo := (26100000000000001 / 50000000000000000 : ℚ)
  oldHi := (6531250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1237]
}

def cell_9777 : Cell := { cellDefaults with
  domain := ⟨(10410937500000001 / 25000000000000000 : ℚ), (10412500000000001 / 25000000000000000 : ℚ)⟩
  r := (68398996925609 / 100000000000000 : ℚ)
  w := (15553754809227 / 10000000000000 : ℚ)
  center := (10411718750000001 / 25000000000000000 : ℚ)
  supportValue := (5219442188443671 / 10000000000000000 : ℚ)
  supportSlope := (-14947990440390413 / 5000000000000000 : ℚ)
  oldCenter := (5219442188443671 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1006
  oldLo := (52150000000000007 / 100000000000000000 : ℚ)
  oldHi := (6531250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1236, piece_1237]
}

def cell_9778 : Cell := { cellDefaults with
  domain := ⟨(10412500000000001 / 25000000000000000 : ℚ), (10414062500000001 / 25000000000000000 : ℚ)⟩
  r := (13671103434483 / 20000000000000 : ℚ)
  w := (15547527400993 / 10000000000000 : ℚ)
  center := (10413281250000001 / 25000000000000000 : ℚ)
  supportValue := (1045065346301119 / 2000000000000000 : ℚ)
  supportSlope := (-14960798574570333 / 5000000000000000 : ℚ)
  oldCenter := (1045065346301119 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1007
  oldLo := (26100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1237, piece_1238]
}

def cell_9779 : Cell := { cellDefaults with
  domain := ⟨(10414062500000001 / 25000000000000000 : ℚ), (10415625000000001 / 25000000000000000 : ℚ)⟩
  r := (13671103434483 / 20000000000000 : ℚ)
  w := (15547527400993 / 10000000000000 : ℚ)
  center := (10414843750000001 / 25000000000000000 : ℚ)
  supportValue := (1305864246216707 / 2500000000000000 : ℚ)
  supportSlope := (-2990845585262747 / 1000000000000000 : ℚ)
  oldCenter := (1305864246216707 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1007
  oldLo := (26100000000000001 / 50000000000000000 : ℚ)
  oldHi := (6531250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1237]
}

def cell_9780 : Cell := { cellDefaults with
  domain := ⟨(10415625000000001 / 25000000000000000 : ℚ), (10417187500000001 / 25000000000000000 : ℚ)⟩
  r := (13671103434483 / 20000000000000 : ℚ)
  w := (15547527400993 / 10000000000000 : ℚ)
  center := (10416406250000001 / 25000000000000000 : ℚ)
  supportValue := (5221588233795369 / 10000000000000000 : ℚ)
  supportSlope := (-5978313031619109 / 2000000000000000 : ℚ)
  oldCenter := (5221588233795369 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1007
  oldLo := (26100000000000001 / 50000000000000000 : ℚ)
  oldHi := (6531250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1237]
}

def cell_9781 : Cell := { cellDefaults with
  domain := ⟨(10417187500000001 / 25000000000000000 : ℚ), (10418750000000001 / 25000000000000000 : ℚ)⟩
  r := (13671103434483 / 20000000000000 : ℚ)
  w := (15547527400993 / 10000000000000 : ℚ)
  center := (10417968750000001 / 25000000000000000 : ℚ)
  supportValue := (5219720485182869 / 10000000000000000 : ℚ)
  supportSlope := (-2987832737524343 / 1000000000000000 : ℚ)
  oldCenter := (5219720485182869 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1007
  oldLo := (52150000000000007 / 100000000000000000 : ℚ)
  oldHi := (6531250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1236, piece_1237]
}

def cell_9782 : Cell := { cellDefaults with
  domain := ⟨(10418750000000001 / 25000000000000000 : ℚ), (10420312500000001 / 25000000000000000 : ℚ)⟩
  r := (13671103434483 / 20000000000000 : ℚ)
  w := (15547527400993 / 10000000000000 : ℚ)
  center := (10419531250000001 / 25000000000000000 : ℚ)
  supportValue := (5217853494582219 / 10000000000000000 : ℚ)
  supportSlope := (-29863400488068237 / 10000000000000000 : ℚ)
  oldCenter := (5217853494582219 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1007
  oldLo := (52150000000000007 / 100000000000000000 : ℚ)
  oldHi := (26100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1236]
}

def cell_9783 : Cell := { cellDefaults with
  domain := ⟨(10420312500000001 / 25000000000000000 : ℚ), (10421875000000001 / 25000000000000000 : ℚ)⟩
  r := (13671103434483 / 20000000000000 : ℚ)
  w := (15547527400993 / 10000000000000 : ℚ)
  center := (10421093750000001 / 25000000000000000 : ℚ)
  supportValue := (2607993779355123 / 5000000000000000 : ℚ)
  supportSlope := (-1492326708275371 / 500000000000000 : ℚ)
  oldCenter := (2607993779355123 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1007
  oldLo := (52150000000000007 / 100000000000000000 : ℚ)
  oldHi := (26100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1236]
}

def cell_9784 : Cell := { cellDefaults with
  domain := ⟨(10421875000000001 / 25000000000000000 : ℚ), (10423437500000001 / 25000000000000000 : ℚ)⟩
  r := (13671103434483 / 20000000000000 : ℚ)
  w := (15547527400993 / 10000000000000 : ℚ)
  center := (10422656250000001 / 25000000000000000 : ℚ)
  supportValue := (5214122511253821 / 10000000000000000 : ℚ)
  supportSlope := (-149175620618891 / 50000000000000 : ℚ)
  oldCenter := (5214122511253821 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1007
  oldLo := (26050000000000001 / 50000000000000000 : ℚ)
  oldHi := (26100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1235, piece_1236]
}

def cell_9785 : Cell := { cellDefaults with
  domain := ⟨(10423437500000001 / 25000000000000000 : ℚ), (10425000000000001 / 25000000000000000 : ℚ)⟩
  r := (13671103434483 / 20000000000000 : ℚ)
  w := (15547527400993 / 10000000000000 : ℚ)
  center := (10424218750000001 / 25000000000000000 : ℚ)
  supportValue := (2606129166212139 / 5000000000000000 : ℚ)
  supportSlope := (-1490921219177821 / 500000000000000 : ℚ)
  oldCenter := (2606129166212139 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1007
  oldLo := (26050000000000001 / 50000000000000000 : ℚ)
  oldHi := (52150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1235]
}

def cell_9786 : Cell := { cellDefaults with
  domain := ⟨(10425000000000001 / 25000000000000000 : ℚ), (10426562500000001 / 25000000000000000 : ℚ)⟩
  r := (68312098149389 / 100000000000000 : ℚ)
  w := (1942664130929 / 1250000000000 : ℚ)
  center := (10425781250000001 / 25000000000000000 : ℚ)
  supportValue := (5218128645424909 / 10000000000000000 : ℚ)
  supportSlope := (-746163984542747 / 250000000000000 : ℚ)
  oldCenter := (5218128645424909 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1008
  oldLo := (52150000000000007 / 100000000000000000 : ℚ)
  oldHi := (26100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1236]
}

def cell_9787 : Cell := { cellDefaults with
  domain := ⟨(10426562500000001 / 25000000000000000 : ℚ), (10428125000000001 / 25000000000000000 : ℚ)⟩
  r := (68312098149389 / 100000000000000 : ℚ)
  w := (1942664130929 / 1250000000000 : ℚ)
  center := (10427343750000001 / 25000000000000000 : ℚ)
  supportValue := (5216263761309111 / 10000000000000000 : ℚ)
  supportSlope := (-5965943814985053 / 2000000000000000 : ℚ)
  oldCenter := (5216263761309111 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1008
  oldLo := (52150000000000007 / 100000000000000000 : ℚ)
  oldHi := (26100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1236]
}

def cell_9788 : Cell := { cellDefaults with
  domain := ⟨(10428125000000001 / 25000000000000000 : ℚ), (10429687500000001 / 25000000000000000 : ℚ)⟩
  r := (68312098149389 / 100000000000000 : ℚ)
  w := (1942664130929 / 1250000000000 : ℚ)
  center := (10428906250000001 / 25000000000000000 : ℚ)
  supportValue := (5214399816038627 / 10000000000000000 : ℚ)
  supportSlope := (-3727187834257073 / 1250000000000000 : ℚ)
  oldCenter := (5214399816038627 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1008
  oldLo := (26050000000000001 / 50000000000000000 : ℚ)
  oldHi := (26100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1235, piece_1236]
}

def cell_9789 : Cell := { cellDefaults with
  domain := ⟨(10429687500000001 / 25000000000000000 : ℚ), (10431250000000001 / 25000000000000000 : ℚ)⟩
  r := (68312098149389 / 100000000000000 : ℚ)
  w := (1942664130929 / 1250000000000 : ℚ)
  center := (10430468750000001 / 25000000000000000 : ℚ)
  supportValue := (5212536685650613 / 10000000000000000 : ℚ)
  supportSlope := (-29801662303157173 / 10000000000000000 : ℚ)
  oldCenter := (5212536685650613 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1008
  oldLo := (26050000000000001 / 50000000000000000 : ℚ)
  oldHi := (52150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1235]
}

def cell_9790 : Cell := { cellDefaults with
  domain := ⟨(10431250000000001 / 25000000000000000 : ℚ), (10432812500000001 / 25000000000000000 : ℚ)⟩
  r := (68312098149389 / 100000000000000 : ℚ)
  w := (1942664130929 / 1250000000000 : ℚ)
  center := (10432031250000001 / 25000000000000000 : ℚ)
  supportValue := (5210674606842077 / 10000000000000000 : ℚ)
  supportSlope := (-595712494330769 / 200000000000000 : ℚ)
  oldCenter := (5210674606842077 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1008
  oldLo := (52050000000000007 / 100000000000000000 : ℚ)
  oldHi := (52150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1234, piece_1235]
}

def cell_9791 : Cell := { cellDefaults with
  domain := ⟨(10432812500000001 / 25000000000000000 : ℚ), (10434375000000001 / 25000000000000000 : ℚ)⟩
  r := (68312098149389 / 100000000000000 : ℚ)
  w := (1942664130929 / 1250000000000 : ℚ)
  center := (10433593750000001 / 25000000000000000 : ℚ)
  supportValue := (5208813354380707 / 10000000000000000 : ℚ)
  supportSlope := (-29773654603317823 / 10000000000000000 : ℚ)
  oldCenter := (5208813354380707 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1008
  oldLo := (52050000000000007 / 100000000000000000 : ℚ)
  oldHi := (26050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1234]
}

def cell_9792 : Cell := { cellDefaults with
  domain := ⟨(10434375000000001 / 25000000000000000 : ℚ), (10435937500000001 / 25000000000000000 : ℚ)⟩
  r := (68312098149389 / 100000000000000 : ℚ)
  w := (1942664130929 / 1250000000000 : ℚ)
  center := (10435156250000001 / 25000000000000000 : ℚ)
  supportValue := (1041390605174573 / 2000000000000000 : ℚ)
  supportSlope := (-743921111240553 / 250000000000000 : ℚ)
  oldCenter := (1041390605174573 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1008
  oldLo := (52050000000000007 / 100000000000000000 : ℚ)
  oldHi := (26050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1234]
}

def cell_9793 : Cell := { cellDefaults with
  domain := ⟨(10435937500000001 / 25000000000000000 : ℚ), (10437500000000001 / 25000000000000000 : ℚ)⟩
  r := (68312098149389 / 100000000000000 : ℚ)
  w := (1942664130929 / 1250000000000 : ℚ)
  center := (10436718750000001 / 25000000000000000 : ℚ)
  supportValue := (1041018749483519 / 2000000000000000 : ℚ)
  supportSlope := (-1858911917402839 / 625000000000000 : ℚ)
  oldCenter := (1041018749483519 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1008
  oldLo := (26000000000000001 / 50000000000000000 : ℚ)
  oldHi := (26050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1233, piece_1234]
}

def cell_9794 : Cell := { cellDefaults with
  domain := ⟨(10437500000000001 / 25000000000000000 : ℚ), (10439062500000001 / 25000000000000000 : ℚ)⟩
  r := (17067185358199 / 25000000000000 : ℚ)
  w := (15535112061023 / 10000000000000 : ℚ)
  center := (10438281250000001 / 25000000000000000 : ℚ)
  supportValue := (1302737369827583 / 2500000000000000 : ℚ)
  supportSlope := (-744201523736443 / 250000000000000 : ℚ)
  oldCenter := (1302737369827583 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1009
  oldLo := (26050000000000001 / 50000000000000000 : ℚ)
  oldHi := (52150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1235]
}

def cell_9795 : Cell := { cellDefaults with
  domain := ⟨(10439062500000001 / 25000000000000000 : ℚ), (10440625000000001 / 25000000000000000 : ℚ)⟩
  r := (17067185358199 / 25000000000000 : ℚ)
  w := (15535112061023 / 10000000000000 : ℚ)
  center := (10439843750000001 / 25000000000000000 : ℚ)
  supportValue := (2604544663552509 / 5000000000000000 : ℚ)
  supportSlope := (-743921058592889 / 250000000000000 : ℚ)
  oldCenter := (2604544663552509 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1009
  oldLo := (52050000000000007 / 100000000000000000 : ℚ)
  oldHi := (52150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1234, piece_1235]
}

def cell_9796 : Cell := { cellDefaults with
  domain := ⟨(10440625000000001 / 25000000000000000 : ℚ), (10442187500000001 / 25000000000000000 : ℚ)⟩
  r := (17067185358199 / 25000000000000 : ℚ)
  w := (15535112061023 / 10000000000000 : ℚ)
  center := (10441406250000001 / 25000000000000000 : ℚ)
  supportValue := (5207230045192573 / 10000000000000000 : ℚ)
  supportSlope := (-92937849584529 / 31250000000000 : ℚ)
  oldCenter := (5207230045192573 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1009
  oldLo := (52050000000000007 / 100000000000000000 : ℚ)
  oldHi := (26050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1234]
}

def cell_9797 : Cell := { cellDefaults with
  domain := ⟨(10442187500000001 / 25000000000000000 : ℚ), (10443750000000001 / 25000000000000000 : ℚ)⟩
  r := (17067185358199 / 25000000000000 : ℚ)
  w := (15535112061023 / 10000000000000 : ℚ)
  center := (10442968750000001 / 25000000000000000 : ℚ)
  supportValue := (5205371811715943 / 10000000000000000 : ℚ)
  supportSlope := (-29725039977464007 / 10000000000000000 : ℚ)
  oldCenter := (5205371811715943 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1009
  oldLo := (26000000000000001 / 50000000000000000 : ℚ)
  oldHi := (26050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1233, piece_1234]
}

def cell_9798 : Cell := { cellDefaults with
  domain := ⟨(10443750000000001 / 25000000000000000 : ℚ), (10445312500000001 / 25000000000000000 : ℚ)⟩
  r := (17067185358199 / 25000000000000 : ℚ)
  w := (15535112061023 / 10000000000000 : ℚ)
  center := (10444531250000001 / 25000000000000000 : ℚ)
  supportValue := (104070286880197 / 200000000000000 : ℚ)
  supportSlope := (-29712211805872357 / 10000000000000000 : ℚ)
  oldCenter := (104070286880197 / 200000000000000 : ℚ)
  newCoefficients := coefficients_1009
  oldLo := (26000000000000001 / 50000000000000000 : ℚ)
  oldHi := (52050000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1233]
}

def cell_9799 : Cell := { cellDefaults with
  domain := ⟨(10445312500000001 / 25000000000000000 : ℚ), (10446875000000001 / 25000000000000000 : ℚ)⟩
  r := (17067185358199 / 25000000000000 : ℚ)
  w := (15535112061023 / 10000000000000 : ℚ)
  center := (10446093750000001 / 25000000000000000 : ℚ)
  supportValue := (5201657854105871 / 10000000000000000 : ℚ)
  supportSlope := (-1855965746866417 / 625000000000000 : ℚ)
  oldCenter := (5201657854105871 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1009
  oldLo := (26000000000000001 / 50000000000000000 : ℚ)
  oldHi := (52050000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1233]
}

theorem check_9750 : cell_9750.check = true := by
  decide +kernel

theorem check_9751 : cell_9751.check = true := by
  decide +kernel

theorem check_9752 : cell_9752.check = true := by
  decide +kernel

theorem check_9753 : cell_9753.check = true := by
  decide +kernel

theorem check_9754 : cell_9754.check = true := by
  decide +kernel

theorem check_9755 : cell_9755.check = true := by
  decide +kernel

theorem check_9756 : cell_9756.check = true := by
  decide +kernel

theorem check_9757 : cell_9757.check = true := by
  decide +kernel

theorem check_9758 : cell_9758.check = true := by
  decide +kernel

theorem check_9759 : cell_9759.check = true := by
  decide +kernel

theorem check_9760 : cell_9760.check = true := by
  decide +kernel

theorem check_9761 : cell_9761.check = true := by
  decide +kernel

theorem check_9762 : cell_9762.check = true := by
  decide +kernel

theorem check_9763 : cell_9763.check = true := by
  decide +kernel

theorem check_9764 : cell_9764.check = true := by
  decide +kernel

theorem check_9765 : cell_9765.check = true := by
  decide +kernel

theorem check_9766 : cell_9766.check = true := by
  decide +kernel

theorem check_9767 : cell_9767.check = true := by
  decide +kernel

theorem check_9768 : cell_9768.check = true := by
  decide +kernel

theorem check_9769 : cell_9769.check = true := by
  decide +kernel

theorem check_9770 : cell_9770.check = true := by
  decide +kernel

theorem check_9771 : cell_9771.check = true := by
  decide +kernel

theorem check_9772 : cell_9772.check = true := by
  decide +kernel

theorem check_9773 : cell_9773.check = true := by
  decide +kernel

theorem check_9774 : cell_9774.check = true := by
  decide +kernel

theorem check_9775 : cell_9775.check = true := by
  decide +kernel

theorem check_9776 : cell_9776.check = true := by
  decide +kernel

theorem check_9777 : cell_9777.check = true := by
  decide +kernel

theorem check_9778 : cell_9778.check = true := by
  decide +kernel

theorem check_9779 : cell_9779.check = true := by
  decide +kernel

theorem check_9780 : cell_9780.check = true := by
  decide +kernel

theorem check_9781 : cell_9781.check = true := by
  decide +kernel

theorem check_9782 : cell_9782.check = true := by
  decide +kernel

theorem check_9783 : cell_9783.check = true := by
  decide +kernel

theorem check_9784 : cell_9784.check = true := by
  decide +kernel

theorem check_9785 : cell_9785.check = true := by
  decide +kernel

theorem check_9786 : cell_9786.check = true := by
  decide +kernel

theorem check_9787 : cell_9787.check = true := by
  decide +kernel

theorem check_9788 : cell_9788.check = true := by
  decide +kernel

theorem check_9789 : cell_9789.check = true := by
  decide +kernel

theorem check_9790 : cell_9790.check = true := by
  decide +kernel

theorem check_9791 : cell_9791.check = true := by
  decide +kernel

theorem check_9792 : cell_9792.check = true := by
  decide +kernel

theorem check_9793 : cell_9793.check = true := by
  decide +kernel

theorem check_9794 : cell_9794.check = true := by
  decide +kernel

theorem check_9795 : cell_9795.check = true := by
  decide +kernel

theorem check_9796 : cell_9796.check = true := by
  decide +kernel

theorem check_9797 : cell_9797.check = true := by
  decide +kernel

theorem check_9798 : cell_9798.check = true := by
  decide +kernel

theorem check_9799 : cell_9799.check = true := by
  decide +kernel

def cells : List Cell := [cell_9750, cell_9751, cell_9752, cell_9753, cell_9754, cell_9755, cell_9756, cell_9757, cell_9758, cell_9759, cell_9760, cell_9761, cell_9762, cell_9763, cell_9764, cell_9765, cell_9766, cell_9767, cell_9768, cell_9769, cell_9770, cell_9771, cell_9772, cell_9773, cell_9774, cell_9775, cell_9776, cell_9777, cell_9778, cell_9779, cell_9780, cell_9781, cell_9782, cell_9783, cell_9784, cell_9785, cell_9786, cell_9787, cell_9788, cell_9789, cell_9790, cell_9791, cell_9792, cell_9793, cell_9794, cell_9795, cell_9796, cell_9797, cell_9798, cell_9799]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9750, check_9751, check_9752, check_9753, check_9754, check_9755, check_9756, check_9757, check_9758, check_9759, check_9760, check_9761, check_9762, check_9763, check_9764, check_9765, check_9766, check_9767, check_9768, check_9769, check_9770, check_9771, check_9772, check_9773, check_9774, check_9775, check_9776, check_9777, check_9778, check_9779, check_9780, check_9781, check_9782, check_9783, check_9784, check_9785, check_9786, check_9787, check_9788, check_9789, check_9790, check_9791, check_9792, check_9793, check_9794, check_9795, check_9796, check_9797, check_9798, check_9799, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0195

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0195
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0195
open AnalyticBounds.ExpressionCertificate

theorem linked_9750 : Linked cell_9750 pieces := by
  refine ⟨piece_1003,piece_1003_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9750,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1243_mem

theorem linked_9751 : Linked cell_9751 pieces := by
  refine ⟨piece_1003,piece_1003_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9751,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1242_mem
    · exact piece_1243_mem

theorem linked_9752 : Linked cell_9752 pieces := by
  refine ⟨piece_1003,piece_1003_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9752,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1241_mem
    · exact piece_1242_mem

theorem linked_9753 : Linked cell_9753 pieces := by
  refine ⟨piece_1003,piece_1003_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9753,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1241_mem

theorem linked_9754 : Linked cell_9754 pieces := by
  refine ⟨piece_1004,piece_1004_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9754,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1243_mem

theorem linked_9755 : Linked cell_9755 pieces := by
  refine ⟨piece_1004,piece_1004_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9755,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1242_mem
    · exact piece_1243_mem

theorem linked_9756 : Linked cell_9756 pieces := by
  refine ⟨piece_1004,piece_1004_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9756,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1241_mem
    · exact piece_1242_mem

theorem linked_9757 : Linked cell_9757 pieces := by
  refine ⟨piece_1004,piece_1004_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9757,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1241_mem

theorem linked_9758 : Linked cell_9758 pieces := by
  refine ⟨piece_1004,piece_1004_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9758,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1240_mem
    · exact piece_1241_mem

theorem linked_9759 : Linked cell_9759 pieces := by
  refine ⟨piece_1004,piece_1004_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9759,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1240_mem

theorem linked_9760 : Linked cell_9760 pieces := by
  refine ⟨piece_1004,piece_1004_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9760,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1239_mem
    · exact piece_1240_mem

theorem linked_9761 : Linked cell_9761 pieces := by
  refine ⟨piece_1004,piece_1004_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9761,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1239_mem

theorem linked_9762 : Linked cell_9762 pieces := by
  refine ⟨piece_1005,piece_1005_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9762,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1240_mem
    · exact piece_1241_mem

theorem linked_9763 : Linked cell_9763 pieces := by
  refine ⟨piece_1005,piece_1005_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9763,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1240_mem

theorem linked_9764 : Linked cell_9764 pieces := by
  refine ⟨piece_1005,piece_1005_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9764,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1240_mem

theorem linked_9765 : Linked cell_9765 pieces := by
  refine ⟨piece_1005,piece_1005_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9765,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1239_mem
    · exact piece_1240_mem

theorem linked_9766 : Linked cell_9766 pieces := by
  refine ⟨piece_1005,piece_1005_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9766,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1239_mem

theorem linked_9767 : Linked cell_9767 pieces := by
  refine ⟨piece_1005,piece_1005_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9767,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1238_mem
    · exact piece_1239_mem

theorem linked_9768 : Linked cell_9768 pieces := by
  refine ⟨piece_1005,piece_1005_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9768,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1238_mem

theorem linked_9769 : Linked cell_9769 pieces := by
  refine ⟨piece_1005,piece_1005_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9769,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1238_mem

theorem linked_9770 : Linked cell_9770 pieces := by
  refine ⟨piece_1006,piece_1006_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9770,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1239_mem

theorem linked_9771 : Linked cell_9771 pieces := by
  refine ⟨piece_1006,piece_1006_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9771,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1238_mem
    · exact piece_1239_mem

theorem linked_9772 : Linked cell_9772 pieces := by
  refine ⟨piece_1006,piece_1006_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9772,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1238_mem

theorem linked_9773 : Linked cell_9773 pieces := by
  refine ⟨piece_1006,piece_1006_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9773,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1238_mem

theorem linked_9774 : Linked cell_9774 pieces := by
  refine ⟨piece_1006,piece_1006_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9774,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1237_mem
    · exact piece_1238_mem

theorem linked_9775 : Linked cell_9775 pieces := by
  refine ⟨piece_1006,piece_1006_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9775,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1237_mem

theorem linked_9776 : Linked cell_9776 pieces := by
  refine ⟨piece_1006,piece_1006_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9776,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1237_mem

theorem linked_9777 : Linked cell_9777 pieces := by
  refine ⟨piece_1006,piece_1006_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9777,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1236_mem
    · exact piece_1237_mem

theorem linked_9778 : Linked cell_9778 pieces := by
  refine ⟨piece_1007,piece_1007_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9778,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1237_mem
    · exact piece_1238_mem

theorem linked_9779 : Linked cell_9779 pieces := by
  refine ⟨piece_1007,piece_1007_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9779,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1237_mem

theorem linked_9780 : Linked cell_9780 pieces := by
  refine ⟨piece_1007,piece_1007_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9780,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1237_mem

theorem linked_9781 : Linked cell_9781 pieces := by
  refine ⟨piece_1007,piece_1007_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9781,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1236_mem
    · exact piece_1237_mem

theorem linked_9782 : Linked cell_9782 pieces := by
  refine ⟨piece_1007,piece_1007_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9782,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1236_mem

theorem linked_9783 : Linked cell_9783 pieces := by
  refine ⟨piece_1007,piece_1007_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9783,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1236_mem

theorem linked_9784 : Linked cell_9784 pieces := by
  refine ⟨piece_1007,piece_1007_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9784,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1235_mem
    · exact piece_1236_mem

theorem linked_9785 : Linked cell_9785 pieces := by
  refine ⟨piece_1007,piece_1007_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9785,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1235_mem

theorem linked_9786 : Linked cell_9786 pieces := by
  refine ⟨piece_1008,piece_1008_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9786,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1236_mem

theorem linked_9787 : Linked cell_9787 pieces := by
  refine ⟨piece_1008,piece_1008_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9787,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1236_mem

theorem linked_9788 : Linked cell_9788 pieces := by
  refine ⟨piece_1008,piece_1008_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9788,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1235_mem
    · exact piece_1236_mem

theorem linked_9789 : Linked cell_9789 pieces := by
  refine ⟨piece_1008,piece_1008_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9789,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1235_mem

theorem linked_9790 : Linked cell_9790 pieces := by
  refine ⟨piece_1008,piece_1008_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9790,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1234_mem
    · exact piece_1235_mem

theorem linked_9791 : Linked cell_9791 pieces := by
  refine ⟨piece_1008,piece_1008_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9791,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1234_mem

theorem linked_9792 : Linked cell_9792 pieces := by
  refine ⟨piece_1008,piece_1008_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9792,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1234_mem

theorem linked_9793 : Linked cell_9793 pieces := by
  refine ⟨piece_1008,piece_1008_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9793,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1233_mem
    · exact piece_1234_mem

theorem linked_9794 : Linked cell_9794 pieces := by
  refine ⟨piece_1009,piece_1009_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9794,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1235_mem

theorem linked_9795 : Linked cell_9795 pieces := by
  refine ⟨piece_1009,piece_1009_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9795,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1234_mem
    · exact piece_1235_mem

theorem linked_9796 : Linked cell_9796 pieces := by
  refine ⟨piece_1009,piece_1009_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9796,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1234_mem

theorem linked_9797 : Linked cell_9797 pieces := by
  refine ⟨piece_1009,piece_1009_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9797,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1233_mem
    · exact piece_1234_mem

theorem linked_9798 : Linked cell_9798 pieces := by
  refine ⟨piece_1009,piece_1009_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9798,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1233_mem

theorem linked_9799 : Linked cell_9799 pieces := by
  refine ⟨piece_1009,piece_1009_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9799,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1233_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0195.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0195.cells,List.forall_mem_cons]
  exact ⟨linked_9750, linked_9751, linked_9752, linked_9753, linked_9754, linked_9755, linked_9756, linked_9757, linked_9758, linked_9759, linked_9760, linked_9761, linked_9762, linked_9763, linked_9764, linked_9765, linked_9766, linked_9767, linked_9768, linked_9769, linked_9770, linked_9771, linked_9772, linked_9773, linked_9774, linked_9775, linked_9776, linked_9777, linked_9778, linked_9779, linked_9780, linked_9781, linked_9782, linked_9783, linked_9784, linked_9785, linked_9786, linked_9787, linked_9788, linked_9789, linked_9790, linked_9791, linked_9792, linked_9793, linked_9794, linked_9795, linked_9796, linked_9797, linked_9798, linked_9799, by simp⟩

theorem covered : covers (10368750000000001 / 25000000000000000 : ℚ) (10446875000000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0195.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0195
