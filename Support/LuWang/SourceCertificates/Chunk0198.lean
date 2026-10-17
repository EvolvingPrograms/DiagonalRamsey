import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0198
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(10612500000000001 / 25000000000000000 : ℚ), (10614062500000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (67625576415749 / 100000000000000 : ℚ)
  w := (3860912529771 / 2500000000000 : ℚ)
  center := (10613281250000001 / 25000000000000000 : ℚ)
  supportValue := (5112404390790071 / 10000000000000000 : ℚ)
  supportSlope := (-2873412342356829 / 1000000000000000 : ℚ)
  oldCenter := (5112404390790071 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1026
  oldLo := (10189999999999999 / 20000000000000000 : ℚ)
  oldHi := (51000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1210]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9900 : Cell := { cellDefaults with
  r := (13533607527329 / 20000000000000 : ℚ)
  w := (19312071779 / 12500000000 : ℚ)
  newCoefficients := coefficients_1024
  oldLo := (51100000000000001 / 100000000000000000 : ℚ)
  oldHi := (10229999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1213]
}

def cell_9901 : Cell := { cellDefaults with
  domain := ⟨(10614062500000001 / 25000000000000000 : ℚ), (10615625000000001 / 25000000000000000 : ℚ)⟩
  r := (13533607527329 / 20000000000000 : ℚ)
  w := (19312071779 / 12500000000 : ℚ)
  center := (10614843750000001 / 25000000000000000 : ℚ)
  supportValue := (127765225224677 / 250000000000000 : ℚ)
  supportSlope := (-574380698843413 / 200000000000000 : ℚ)
  oldCenter := (127765225224677 / 250000000000000 : ℚ)
  newCoefficients := coefficients_1024
  oldLo := (10209999999999999 / 20000000000000000 : ℚ)
  oldHi := (10229999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1212, piece_1213]
}

def cell_9902 : Cell := { cellDefaults with
  domain := ⟨(10615625000000001 / 25000000000000000 : ℚ), (10618750000000001 / 25000000000000000 : ℚ)⟩
  r := (13533607527329 / 20000000000000 : ℚ)
  w := (19312071779 / 12500000000 : ℚ)
  center := (10617187500000001 / 25000000000000000 : ℚ)
  supportValue := (5107920963028667 / 10000000000000000 : ℚ)
  supportSlope := (-143499607845321 / 50000000000000 : ℚ)
  oldCenter := (5107920963028667 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1024
  oldLo := (10209999999999999 / 20000000000000000 : ℚ)
  oldHi := (51100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1212]
}

def cell_9903 : Cell := { cellDefaults with
  domain := ⟨(10618750000000001 / 25000000000000000 : ℚ), (424804469273743 / 1000000000000000 : ℚ)⟩
  r := (13533607527329 / 20000000000000 : ℚ)
  w := (19312071779 / 12500000000 : ℚ)
  center := (2654857716480447 / 6250000000000000 : ℚ)
  supportValue := (1021068608517369 / 2000000000000000 : ℚ)
  supportSlope := (-14339287666950251 / 5000000000000000 : ℚ)
  oldCenter := (1021068608517369 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1024
  oldLo := (51000000000000001 / 100000000000000000 : ℚ)
  oldHi := (51100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1211, piece_1212]
}

def cell_9904 : Cell := { cellDefaults with
  domain := ⟨(424804469273743 / 1000000000000000 : ℚ), (2655638966480447 / 6250000000000000 : ℚ)⟩
  r := (13533607527329 / 20000000000000 : ℚ)
  w := (19312071779 / 12500000000 : ℚ)
  center := (21242667597765363 / 50000000000000000 : ℚ)
  supportValue := (5103160595075087 / 10000000000000000 : ℚ)
  supportSlope := (-14331656637744141 / 5000000000000000 : ℚ)
  oldCenter := (5103160595075087 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1025
  oldLo := (51000000000000001 / 100000000000000000 : ℚ)
  oldHi := (10209999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1211]
}

def cell_9905 : Cell := { cellDefaults with
  domain := ⟨(2655638966480447 / 6250000000000000 : ℚ), (10625000000000001 / 25000000000000000 : ℚ)⟩
  r := (13533607527329 / 20000000000000 : ℚ)
  w := (19312071779 / 12500000000 : ℚ)
  center := (21247555865921789 / 50000000000000000 : ℚ)
  supportValue := (510036310997813 / 1000000000000000 : ℚ)
  supportSlope := (-5728095539543241 / 2000000000000000 : ℚ)
  oldCenter := (510036310997813 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1025
  oldHi := (10209999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1210, piece_1211]
}

def cell_9906 : Cell := { cellDefaults with
  domain := ⟨(10625000000000001 / 25000000000000000 : ℚ), (10626562500000001 / 25000000000000000 : ℚ)⟩
  center := (10625781250000001 / 25000000000000000 : ℚ)
  supportValue := (255275116252229 / 500000000000000 : ℚ)
  supportSlope := (-28661243921561663 / 10000000000000000 : ℚ)
  oldCenter := (255275116252229 / 500000000000000 : ℚ)
  oldLo := (51000000000000001 / 100000000000000000 : ℚ)
  oldHi := (51100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1211, piece_1212]
}

def cell_9907 : Cell := { cellDefaults with
  domain := ⟨(10626562500000001 / 25000000000000000 : ℚ), (10628125000000001 / 25000000000000000 : ℚ)⟩
  center := (10627343750000001 / 25000000000000000 : ℚ)
  supportValue := (318981956984853 / 625000000000000 : ℚ)
  supportSlope := (-14324928212072763 / 5000000000000000 : ℚ)
  oldCenter := (318981956984853 / 625000000000000 : ℚ)
  oldLo := (51000000000000001 / 100000000000000000 : ℚ)
  oldHi := (10209999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1211]
}

def cell_9908 : Cell := { cellDefaults with
  domain := ⟨(10628125000000001 / 25000000000000000 : ℚ), (10631250000000001 / 25000000000000000 : ℚ)⟩
  center := (10629687500000001 / 25000000000000000 : ℚ)
  supportValue := (2550515041150783 / 5000000000000000 : ℚ)
  supportSlope := (-7156785095761009 / 2500000000000000 : ℚ)
  oldCenter := (2550515041150783 / 5000000000000000 : ℚ)
  oldHi := (10209999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1210, piece_1211]
}

def cell_9909 : Cell := { cellDefaults with
  domain := ⟨(10631250000000001 / 25000000000000000 : ℚ), (10632812500000001 / 25000000000000000 : ℚ)⟩
  center := (10632031250000001 / 25000000000000000 : ℚ)
  supportValue := (5098343614892903 / 10000000000000000 : ℚ)
  supportSlope := (-446997429384699 / 156250000000000 : ℚ)
  oldCenter := (5098343614892903 / 10000000000000000 : ℚ)
  oldPieces := [piece_1210]
}

def cell_9910 : Cell := { cellDefaults with
  domain := ⟨(10632812500000001 / 25000000000000000 : ℚ), (10634375000000001 / 25000000000000000 : ℚ)⟩
  center := (10633593750000001 / 25000000000000000 : ℚ)
  supportValue := (5096556123941587 / 10000000000000000 : ℚ)
  supportSlope := (-2859186234044131 / 1000000000000000 : ℚ)
  oldCenter := (5096556123941587 / 10000000000000000 : ℚ)
  oldPieces := [piece_1210]
}

def cell_9911 : Cell := { cellDefaults with
  domain := ⟨(10634375000000001 / 25000000000000000 : ℚ), (10635937500000001 / 25000000000000000 : ℚ)⟩
  center := (10635156250000001 / 25000000000000000 : ℚ)
  supportValue := (1273692395609393 / 2500000000000000 : ℚ)
  supportSlope := (-14289825748505791 / 5000000000000000 : ℚ)
  oldCenter := (1273692395609393 / 2500000000000000 : ℚ)
  oldLo := (50900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1209, piece_1210]
}

def cell_9912 : Cell := { cellDefaults with
  domain := ⟨(10635937500000001 / 25000000000000000 : ℚ), (10637500000000001 / 25000000000000000 : ℚ)⟩
  center := (10636718750000001 / 25000000000000000 : ℚ)
  supportValue := (2546491857487317 / 5000000000000000 : ℚ)
  supportSlope := (-3570736012052933 / 1250000000000000 : ℚ)
  oldCenter := (2546491857487317 / 5000000000000000 : ℚ)
  oldLo := (50900000000000001 / 100000000000000000 : ℚ)
  oldHi := (10189999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1209]
}

def cell_9913 : Cell := { cellDefaults with
  domain := ⟨(10637500000000001 / 25000000000000000 : ℚ), (340450000000000033 / 800000000000000000 : ℚ)⟩
  r := (67583172027977 / 100000000000000 : ℚ)
  w := (7718827274607 / 5000000000000 : ℚ)
  center := (136170000000000013 / 320000000000000000 : ℚ)
  supportValue := (5098618561551427 / 10000000000000000 : ℚ)
  supportSlope := (-28591951592566427 / 10000000000000000 : ℚ)
  oldCenter := (5098618561551427 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1027
  oldPieces := [piece_1210]
}

def cell_9914 : Cell := { cellDefaults with
  domain := ⟨(340450000000000033 / 800000000000000000 : ℚ), (170250000000000017 / 400000000000000000 : ℚ)⟩
  r := (67583172027977 / 100000000000000 : ℚ)
  w := (7718827274607 / 5000000000000 : ℚ)
  center := (680950000000000067 / 1600000000000000000 : ℚ)
  supportValue := (5096832062613841 / 10000000000000000 : ℚ)
  supportSlope := (-1428800089493947 / 500000000000000 : ℚ)
  oldCenter := (5096832062613841 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1027
  oldPieces := [piece_1210]
}

def cell_9915 : Cell := { cellDefaults with
  domain := ⟨(170250000000000017 / 400000000000000000 : ℚ), (85150000000000009 / 200000000000000000 : ℚ)⟩
  r := (67583172027977 / 100000000000000 : ℚ)
  w := (7718827274607 / 5000000000000 : ℚ)
  center := (68110000000000007 / 160000000000000000 : ℚ)
  supportValue := (2547078785728689 / 5000000000000000 : ℚ)
  supportSlope := (-142782418320661 / 50000000000000 : ℚ)
  oldCenter := (2547078785728689 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1027
  oldLo := (50900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1209, piece_1210]
}

def cell_9916 : Cell := { cellDefaults with
  domain := ⟨(85150000000000009 / 200000000000000000 : ℚ), (340650000000000037 / 800000000000000000 : ℚ)⟩
  r := (67583172027977 / 100000000000000 : ℚ)
  w := (7718827274607 / 5000000000000 : ℚ)
  center := (681250000000000073 / 1600000000000000000 : ℚ)
  supportValue := (318217363035577 / 625000000000000 : ℚ)
  supportSlope := (-28534146883422693 / 10000000000000000 : ℚ)
  oldCenter := (318217363035577 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1027
  oldLo := (50900000000000001 / 100000000000000000 : ℚ)
  oldHi := (10189999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1209]
}

def cell_9917 : Cell := { cellDefaults with
  domain := ⟨(340650000000000037 / 800000000000000000 : ℚ), (170350000000000019 / 400000000000000000 : ℚ)⟩
  r := (67583172027977 / 100000000000000 : ℚ)
  w := (7718827274607 / 5000000000000 : ℚ)
  center := (27254000000000003 / 64000000000000000 : ℚ)
  supportValue := (5089694857057753 / 10000000000000000 : ℚ)
  supportSlope := (-28522240105849903 / 10000000000000000 : ℚ)
  oldCenter := (5089694857057753 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1027
  oldLo := (10169999999999999 / 20000000000000000 : ℚ)
  oldHi := (10189999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1208, piece_1209]
}

def cell_9918 : Cell := { cellDefaults with
  domain := ⟨(170350000000000019 / 400000000000000000 : ℚ), (340750000000000039 / 800000000000000000 : ℚ)⟩
  r := (67583172027977 / 100000000000000 : ℚ)
  w := (7718827274607 / 5000000000000 : ℚ)
  center := (681450000000000077 / 1600000000000000000 : ℚ)
  supportValue := (2543956295933097 / 5000000000000000 : ℚ)
  supportSlope := (-2850827387700093 / 1000000000000000 : ℚ)
  oldCenter := (2543956295933097 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1027
  oldLo := (10169999999999999 / 20000000000000000 : ℚ)
  oldHi := (50900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1208]
}

def cell_9919 : Cell := { cellDefaults with
  domain := ⟨(340750000000000039 / 800000000000000000 : ℚ), (8520000000000001 / 20000000000000000 : ℚ)⟩
  r := (67583172027977 / 100000000000000 : ℚ)
  w := (7718827274607 / 5000000000000 : ℚ)
  center := (681550000000000079 / 1600000000000000000 : ℚ)
  supportValue := (5086131321470583 / 10000000000000000 : ℚ)
  supportSlope := (-7123091553271479 / 2500000000000000 : ℚ)
  oldCenter := (5086131321470583 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1027
  oldLo := (10169999999999999 / 20000000000000000 : ℚ)
  oldHi := (50900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1208]
}

def cell_9920 : Cell := { cellDefaults with
  domain := ⟨(8520000000000001 / 20000000000000000 : ℚ), (8521250000000001 / 20000000000000000 : ℚ)⟩
  r := (33770413397797 / 50000000000000 : ℚ)
  w := (7715836317767 / 5000000000000 : ℚ)
  center := (8520625000000001 / 20000000000000000 : ℚ)
  supportValue := (5091752228602333 / 10000000000000000 : ℚ)
  supportSlope := (-142591568265793 / 50000000000000 : ℚ)
  oldCenter := (5091752228602333 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1028
  oldLo := (50900000000000001 / 100000000000000000 : ℚ)
  oldHi := (10189999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1209]
}

def cell_9921 : Cell := { cellDefaults with
  domain := ⟨(8521250000000001 / 20000000000000000 : ℚ), (8522500000000001 / 20000000000000000 : ℚ)⟩
  r := (33770413397797 / 50000000000000 : ℚ)
  w := (7715836317767 / 5000000000000 : ℚ)
  center := (8521875000000001 / 20000000000000000 : ℚ)
  supportValue := (1272492580888023 / 2500000000000000 : ℚ)
  supportSlope := (-14252754519805677 / 5000000000000000 : ℚ)
  oldCenter := (1272492580888023 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1028
  oldLo := (10169999999999999 / 20000000000000000 : ℚ)
  oldHi := (10189999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1208, piece_1209]
}

def cell_9922 : Cell := { cellDefaults with
  domain := ⟨(8522500000000001 / 20000000000000000 : ℚ), (8525000000000001 / 20000000000000000 : ℚ)⟩
  r := (33770413397797 / 50000000000000 : ℚ)
  w := (7715836317767 / 5000000000000 : ℚ)
  center := (8523750000000001 / 20000000000000000 : ℚ)
  supportValue := (5087302340413883 / 10000000000000000 : ℚ)
  supportSlope := (-28484546315379333 / 10000000000000000 : ℚ)
  oldCenter := (5087302340413883 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1028
  oldLo := (10169999999999999 / 20000000000000000 : ℚ)
  oldHi := (50900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1208]
}

def cell_9923 : Cell := { cellDefaults with
  domain := ⟨(8525000000000001 / 20000000000000000 : ℚ), (8527500000000001 / 20000000000000000 : ℚ)⟩
  r := (33770413397797 / 50000000000000 : ℚ)
  w := (7715836317767 / 5000000000000 : ℚ)
  center := (8526250000000001 / 20000000000000000 : ℚ)
  supportValue := (1270935872082233 / 2500000000000000 : ℚ)
  supportSlope := (-1778618891258299 / 625000000000000 : ℚ)
  oldCenter := (1270935872082233 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1028
  oldLo := (50800000000000001 / 100000000000000000 : ℚ)
  oldHi := (50900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1207, piece_1208]
}

def cell_9924 : Cell := { cellDefaults with
  domain := ⟨(8527500000000001 / 20000000000000000 : ℚ), (8528750000000001 / 20000000000000000 : ℚ)⟩
  r := (33770413397797 / 50000000000000 : ℚ)
  w := (7715836317767 / 5000000000000 : ℚ)
  center := (8528125000000001 / 20000000000000000 : ℚ)
  supportValue := (5081073035267933 / 10000000000000000 : ℚ)
  supportSlope := (-355437106945633 / 125000000000000 : ℚ)
  oldCenter := (5081073035267933 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1028
  oldLo := (50800000000000001 / 100000000000000000 : ℚ)
  oldHi := (10169999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1207]
}

def cell_9925 : Cell := { cellDefaults with
  domain := ⟨(8528750000000001 / 20000000000000000 : ℚ), (8530000000000001 / 20000000000000000 : ℚ)⟩
  r := (33770413397797 / 50000000000000 : ℚ)
  w := (7715836317767 / 5000000000000 : ℚ)
  center := (8529375000000001 / 20000000000000000 : ℚ)
  supportValue := (634912024473977 / 1250000000000000 : ℚ)
  supportSlope := (-28424492280763047 / 10000000000000000 : ℚ)
  oldCenter := (634912024473977 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1028
  oldLo := (1269413407821229 / 2500000000000000 : ℚ)
  oldHi := (10169999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1206, piece_1207]
}

def cell_9926 : Cell := { cellDefaults with
  domain := ⟨(8530000000000001 / 20000000000000000 : ℚ), (8531250000000001 / 20000000000000000 : ℚ)⟩
  r := (33749270387207 / 50000000000000 : ℚ)
  w := (15425702299927 / 10000000000000 : ℚ)
  center := (8530625000000001 / 20000000000000000 : ℚ)
  supportValue := (635613002511823 / 1250000000000000 : ℚ)
  supportSlope := (-1422413594823979 / 500000000000000 : ℚ)
  oldCenter := (635613002511823 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1029
  oldLo := (50800000000000001 / 100000000000000000 : ℚ)
  oldHi := (50900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1207, piece_1208]
}

def cell_9927 : Cell := { cellDefaults with
  domain := ⟨(8531250000000001 / 20000000000000000 : ℚ), (8532500000000001 / 20000000000000000 : ℚ)⟩
  r := (33749270387207 / 50000000000000 : ℚ)
  w := (15425702299927 / 10000000000000 : ℚ)
  center := (8531875000000001 / 20000000000000000 : ℚ)
  supportValue := (2541563165858329 / 5000000000000000 : ℚ)
  supportSlope := (-444298101762719 / 156250000000000 : ℚ)
  oldCenter := (2541563165858329 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1029
  oldLo := (50800000000000001 / 100000000000000000 : ℚ)
  oldHi := (10169999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1207]
}

def cell_9928 : Cell := { cellDefaults with
  domain := ⟨(8532500000000001 / 20000000000000000 : ℚ), (8535000000000001 / 20000000000000000 : ℚ)⟩
  r := (33749270387207 / 50000000000000 : ℚ)
  w := (15425702299927 / 10000000000000 : ℚ)
  center := (8533750000000001 / 20000000000000000 : ℚ)
  supportValue := (158764537890031 / 312500000000000 : ℚ)
  supportSlope := (-710338594644977 / 250000000000000 : ℚ)
  oldCenter := (158764537890031 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1029
  oldLo := (1269413407821229 / 2500000000000000 : ℚ)
  oldHi := (10169999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1206, piece_1207]
}

def cell_9929 : Cell := { cellDefaults with
  domain := ⟨(8535000000000001 / 20000000000000000 : ℚ), (8537500000000001 / 20000000000000000 : ℚ)⟩
  r := (33749270387207 / 50000000000000 : ℚ)
  w := (15425702299927 / 10000000000000 : ℚ)
  center := (8536250000000001 / 20000000000000000 : ℚ)
  supportValue := (5076915120394467 / 10000000000000000 : ℚ)
  supportSlope := (-14192828621544251 / 5000000000000000 : ℚ)
  oldCenter := (5076915120394467 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1029
  oldLo := (10149999999999999 / 20000000000000000 : ℚ)
  oldHi := (50800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1205, piece_1206]
}

def cell_9930 : Cell := { cellDefaults with
  domain := ⟨(8537500000000001 / 20000000000000000 : ℚ), (8538750000000001 / 20000000000000000 : ℚ)⟩
  r := (33749270387207 / 50000000000000 : ℚ)
  w := (15425702299927 / 10000000000000 : ℚ)
  center := (8538125000000001 / 20000000000000000 : ℚ)
  supportValue := (1268562840872901 / 2500000000000000 : ℚ)
  supportSlope := (-1418374201335837 / 500000000000000 : ℚ)
  oldCenter := (1268562840872901 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1029
  oldLo := (50700000000000001 / 100000000000000000 : ℚ)
  oldHi := (1269413407821229 / 2500000000000000 : ℚ)
  oldPieces := [piece_1204, piece_1205]
}

def cell_9931 : Cell := { cellDefaults with
  domain := ⟨(8538750000000001 / 20000000000000000 : ℚ), (8540000000000001 / 20000000000000000 : ℚ)⟩
  r := (33749270387207 / 50000000000000 : ℚ)
  w := (15425702299927 / 10000000000000 : ℚ)
  center := (8539375000000001 / 20000000000000000 : ℚ)
  supportValue := (2536239430358959 / 5000000000000000 : ℚ)
  supportSlope := (-28352129255146963 / 10000000000000000 : ℚ)
  oldCenter := (2536239430358959 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1029
  oldLo := (50700000000000001 / 100000000000000000 : ℚ)
  oldHi := (10149999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1204]
}

def cell_9932 : Cell := { cellDefaults with
  domain := ⟨(8540000000000001 / 20000000000000000 : ℚ), (8541250000000001 / 20000000000000000 : ℚ)⟩
  r := (67456311597523 / 100000000000000 : ℚ)
  w := (15419744700169 / 10000000000000 : ℚ)
  center := (8540625000000001 / 20000000000000000 : ℚ)
  supportValue := (2539036695909591 / 5000000000000000 : ℚ)
  supportSlope := (-28377843634750377 / 10000000000000000 : ℚ)
  oldCenter := (2539036695909591 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1030
  oldLo := (10149999999999999 / 20000000000000000 : ℚ)
  oldHi := (50800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1205, piece_1206]
}

def cell_9933 : Cell := { cellDefaults with
  domain := ⟨(8541250000000001 / 20000000000000000 : ℚ), (8542500000000001 / 20000000000000000 : ℚ)⟩
  r := (67456311597523 / 100000000000000 : ℚ)
  w := (15419744700169 / 10000000000000 : ℚ)
  center := (8541875000000001 / 20000000000000000 : ℚ)
  supportValue := (1269075067461707 / 2500000000000000 : ℚ)
  supportSlope := (-14181023536199433 / 5000000000000000 : ℚ)
  oldCenter := (1269075067461707 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1030
  oldLo := (10149999999999999 / 20000000000000000 : ℚ)
  oldHi := (1269413407821229 / 2500000000000000 : ℚ)
  oldPieces := [piece_1205]
}

def cell_9934 : Cell := { cellDefaults with
  domain := ⟨(8542500000000001 / 20000000000000000 : ℚ), (8545000000000001 / 20000000000000000 : ℚ)⟩
  r := (67456311597523 / 100000000000000 : ℚ)
  w := (15419744700169 / 10000000000000 : ℚ)
  center := (8543750000000001 / 20000000000000000 : ℚ)
  supportValue := (5073645700541333 / 10000000000000000 : ℚ)
  supportSlope := (-28343673735857777 / 10000000000000000 : ℚ)
  oldCenter := (5073645700541333 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1030
  oldLo := (50700000000000001 / 100000000000000000 : ℚ)
  oldHi := (1269413407821229 / 2500000000000000 : ℚ)
  oldPieces := [piece_1204, piece_1205]
}

def cell_9935 : Cell := { cellDefaults with
  domain := ⟨(8545000000000001 / 20000000000000000 : ℚ), (8546250000000001 / 20000000000000000 : ℚ)⟩
  r := (67456311597523 / 100000000000000 : ℚ)
  w := (15419744700169 / 10000000000000 : ℚ)
  center := (8545625000000001 / 20000000000000000 : ℚ)
  supportValue := (5070985973339769 / 10000000000000000 : ℚ)
  supportSlope := (-566414002206983 / 200000000000000 : ℚ)
  oldCenter := (5070985973339769 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1030
  oldLo := (50700000000000001 / 100000000000000000 : ℚ)
  oldHi := (10149999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1204]
}

def cell_9936 : Cell := { cellDefaults with
  domain := ⟨(8546250000000001 / 20000000000000000 : ℚ), (8547500000000001 / 20000000000000000 : ℚ)⟩
  r := (67456311597523 / 100000000000000 : ℚ)
  w := (15419744700169 / 10000000000000 : ℚ)
  center := (8546875000000001 / 20000000000000000 : ℚ)
  supportValue := (5069216254588501 / 10000000000000000 : ℚ)
  supportSlope := (-707765455430831 / 250000000000000 : ℚ)
  oldCenter := (5069216254588501 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1030
  oldLo := (10129999999999999 / 20000000000000000 : ℚ)
  oldHi := (10149999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1203, piece_1204]
}

def cell_9937 : Cell := { cellDefaults with
  domain := ⟨(8547500000000001 / 20000000000000000 : ℚ), (8548750000000001 / 20000000000000000 : ℚ)⟩
  r := (67456311597523 / 100000000000000 : ℚ)
  w := (15419744700169 / 10000000000000 : ℚ)
  center := (8548125000000001 / 20000000000000000 : ℚ)
  supportValue := (506744731231621 / 1000000000000000 : ℚ)
  supportSlope := (-28295182655249107 / 10000000000000000 : ℚ)
  oldCenter := (506744731231621 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1030
  oldLo := (10129999999999999 / 20000000000000000 : ℚ)
  oldHi := (50700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1203]
}

def cell_9938 : Cell := { cellDefaults with
  domain := ⟨(8548750000000001 / 20000000000000000 : ℚ), (8550000000000001 / 20000000000000000 : ℚ)⟩
  r := (67456311597523 / 100000000000000 : ℚ)
  w := (15419744700169 / 10000000000000 : ℚ)
  center := (8549375000000001 / 20000000000000000 : ℚ)
  supportValue := (5065679355413443 / 10000000000000000 : ℚ)
  supportSlope := (-1414006507920007 / 500000000000000 : ℚ)
  oldCenter := (5065679355413443 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1030
  oldLo := (50600000000000001 / 100000000000000000 : ℚ)
  oldHi := (50700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1202, piece_1203]
}

def cell_9939 : Cell := { cellDefaults with
  domain := ⟨(8550000000000001 / 20000000000000000 : ℚ), (8551250000000001 / 20000000000000000 : ℚ)⟩
  r := (3370707114269 / 5000000000000 : ℚ)
  w := (15413800060619 / 10000000000000 : ℚ)
  center := (8550625000000001 / 20000000000000000 : ℚ)
  supportValue := (2535630077453247 / 5000000000000000 : ℚ)
  supportSlope := (-14152513590151017 / 5000000000000000 : ℚ)
  oldCenter := (2535630077453247 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1031
  oldLo := (50700000000000001 / 100000000000000000 : ℚ)
  oldHi := (10149999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1204]
}

def cell_9940 : Cell := { cellDefaults with
  domain := ⟨(8551250000000001 / 20000000000000000 : ℚ), (8552500000000001 / 20000000000000000 : ℚ)⟩
  r := (3370707114269 / 5000000000000 : ℚ)
  w := (15413800060619 / 10000000000000 : ℚ)
  center := (8551875000000001 / 20000000000000000 : ℚ)
  supportValue := (506949147350011 / 1000000000000000 : ℚ)
  supportSlope := (-28294032982643103 / 10000000000000000 : ℚ)
  oldCenter := (506949147350011 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1031
  oldLo := (10129999999999999 / 20000000000000000 : ℚ)
  oldHi := (10149999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1203, piece_1204]
}

def cell_9941 : Cell := { cellDefaults with
  domain := ⟨(8552500000000001 / 20000000000000000 : ℚ), (8555000000000001 / 20000000000000000 : ℚ)⟩
  r := (3370707114269 / 5000000000000 : ℚ)
  w := (15413800060619 / 10000000000000 : ℚ)
  center := (8553750000000001 / 20000000000000000 : ℚ)
  supportValue := (5066843441876983 / 10000000000000000 : ℚ)
  supportSlope := (-2827169040003241 / 1000000000000000 : ℚ)
  oldCenter := (5066843441876983 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1031
  oldLo := (10129999999999999 / 20000000000000000 : ℚ)
  oldHi := (50700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1203]
}

def cell_9942 : Cell := { cellDefaults with
  domain := ⟨(8555000000000001 / 20000000000000000 : ℚ), (8557500000000001 / 20000000000000000 : ℚ)⟩
  r := (3370707114269 / 5000000000000 : ℚ)
  w := (15413800060619 / 10000000000000 : ℚ)
  center := (8556250000000001 / 20000000000000000 : ℚ)
  supportValue := (5063311081093603 / 10000000000000000 : ℚ)
  supportSlope := (-5649229909735709 / 2000000000000000 : ℚ)
  oldCenter := (5063311081093603 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1031
  oldLo := (50600000000000001 / 100000000000000000 : ℚ)
  oldHi := (50700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1202, piece_1203]
}

def cell_9943 : Cell := { cellDefaults with
  domain := ⟨(8557500000000001 / 20000000000000000 : ℚ), (8558750000000001 / 20000000000000000 : ℚ)⟩
  r := (3370707114269 / 5000000000000 : ℚ)
  w := (15413800060619 / 10000000000000 : ℚ)
  center := (8558125000000001 / 20000000000000000 : ℚ)
  supportValue := (5060660553742363 / 10000000000000000 : ℚ)
  supportSlope := (-2822345851516417 / 1000000000000000 : ℚ)
  oldCenter := (5060660553742363 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1031
  oldLo := (10109999999999999 / 20000000000000000 : ℚ)
  oldHi := (10129999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1201, piece_1202]
}

def cell_9944 : Cell := { cellDefaults with
  domain := ⟨(8558750000000001 / 20000000000000000 : ℚ), (8560000000000001 / 20000000000000000 : ℚ)⟩
  r := (3370707114269 / 5000000000000 : ℚ)
  w := (15413800060619 / 10000000000000 : ℚ)
  center := (8559375000000001 / 20000000000000000 : ℚ)
  supportValue := (5058896888539057 / 10000000000000000 : ℚ)
  supportSlope := (-28213040874831563 / 10000000000000000 : ℚ)
  oldCenter := (5058896888539057 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1031
  oldLo := (10109999999999999 / 20000000000000000 : ℚ)
  oldHi := (50600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1201]
}

def cell_9945 : Cell := { cellDefaults with
  domain := ⟨(8560000000000001 / 20000000000000000 : ℚ), (8561250000000001 / 20000000000000000 : ℚ)⟩
  r := (842150373417 / 1250000000000 : ℚ)
  w := (15407867850839 / 10000000000000 : ℚ)
  center := (8560625000000001 / 20000000000000000 : ℚ)
  supportValue := (202578586114381 / 400000000000000 : ℚ)
  supportSlope := (-1411866913931803 / 500000000000000 : ℚ)
  oldCenter := (202578586114381 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1032
  oldLo := (50600000000000001 / 100000000000000000 : ℚ)
  oldHi := (50700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1202, piece_1203]
}

def cell_9946 : Cell := { cellDefaults with
  domain := ⟨(8561250000000001 / 20000000000000000 : ℚ), (8562500000000001 / 20000000000000000 : ℚ)⟩
  r := (842150373417 / 1250000000000 : ℚ)
  w := (15407867850839 / 10000000000000 : ℚ)
  center := (8561875000000001 / 20000000000000000 : ℚ)
  supportValue := (2531350117879469 / 5000000000000000 : ℚ)
  supportSlope := (-28222812400215957 / 10000000000000000 : ℚ)
  oldCenter := (2531350117879469 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1032
  oldLo := (50600000000000001 / 100000000000000000 : ℚ)
  oldHi := (10129999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1202]
}

def cell_9947 : Cell := { cellDefaults with
  domain := ⟨(8562500000000001 / 20000000000000000 : ℚ), (8565000000000001 / 20000000000000000 : ℚ)⟩
  r := (842150373417 / 1250000000000 : ℚ)
  w := (15407867850839 / 10000000000000 : ℚ)
  center := (8563750000000001 / 20000000000000000 : ℚ)
  supportValue := (202402359670163 / 400000000000000 : ℚ)
  supportSlope := (-5640442742471663 / 2000000000000000 : ℚ)
  oldCenter := (202402359670163 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1032
  oldLo := (10109999999999999 / 20000000000000000 : ℚ)
  oldHi := (10129999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1201, piece_1202]
}

def cell_9948 : Cell := { cellDefaults with
  domain := ⟨(8565000000000001 / 20000000000000000 : ℚ), (8567500000000001 / 20000000000000000 : ℚ)⟩
  r := (842150373417 / 1250000000000 : ℚ)
  w := (15407867850839 / 10000000000000 : ℚ)
  center := (8566250000000001 / 20000000000000000 : ℚ)
  supportValue := (316033455868683 / 625000000000000 : ℚ)
  supportSlope := (-352179545310749 / 125000000000000 : ℚ)
  oldCenter := (316033455868683 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1032
  oldLo := (101 / 200 : ℚ)
  oldHi := (50600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1200, piece_1201]
}

def cell_9949 : Cell := { cellDefaults with
  domain := ⟨(8567500000000001 / 20000000000000000 : ℚ), (8568750000000001 / 20000000000000000 : ℚ)⟩
  r := (842150373417 / 1250000000000 : ℚ)
  w := (15407867850839 / 10000000000000 : ℚ)
  center := (8568125000000001 / 20000000000000000 : ℚ)
  supportValue := (1263472826624891 / 2500000000000000 : ℚ)
  supportSlope := (-281565353662927 / 100000000000000 : ℚ)
  oldCenter := (1263472826624891 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1032
  oldLo := (101 / 200 : ℚ)
  oldHi := (10109999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1200]
}

theorem check_9900 : cell_9900.check = true := by
  decide +kernel

theorem check_9901 : cell_9901.check = true := by
  decide +kernel

theorem check_9902 : cell_9902.check = true := by
  decide +kernel

theorem check_9903 : cell_9903.check = true := by
  decide +kernel

theorem check_9904 : cell_9904.check = true := by
  decide +kernel

theorem check_9905 : cell_9905.check = true := by
  decide +kernel

theorem check_9906 : cell_9906.check = true := by
  decide +kernel

theorem check_9907 : cell_9907.check = true := by
  decide +kernel

theorem check_9908 : cell_9908.check = true := by
  decide +kernel

theorem check_9909 : cell_9909.check = true := by
  decide +kernel

theorem check_9910 : cell_9910.check = true := by
  decide +kernel

theorem check_9911 : cell_9911.check = true := by
  decide +kernel

theorem check_9912 : cell_9912.check = true := by
  decide +kernel

theorem check_9913 : cell_9913.check = true := by
  decide +kernel

theorem check_9914 : cell_9914.check = true := by
  decide +kernel

theorem check_9915 : cell_9915.check = true := by
  decide +kernel

theorem check_9916 : cell_9916.check = true := by
  decide +kernel

theorem check_9917 : cell_9917.check = true := by
  decide +kernel

theorem check_9918 : cell_9918.check = true := by
  decide +kernel

theorem check_9919 : cell_9919.check = true := by
  decide +kernel

theorem check_9920 : cell_9920.check = true := by
  decide +kernel

theorem check_9921 : cell_9921.check = true := by
  decide +kernel

theorem check_9922 : cell_9922.check = true := by
  decide +kernel

theorem check_9923 : cell_9923.check = true := by
  decide +kernel

theorem check_9924 : cell_9924.check = true := by
  decide +kernel

theorem check_9925 : cell_9925.check = true := by
  decide +kernel

theorem check_9926 : cell_9926.check = true := by
  decide +kernel

theorem check_9927 : cell_9927.check = true := by
  decide +kernel

theorem check_9928 : cell_9928.check = true := by
  decide +kernel

theorem check_9929 : cell_9929.check = true := by
  decide +kernel

theorem check_9930 : cell_9930.check = true := by
  decide +kernel

theorem check_9931 : cell_9931.check = true := by
  decide +kernel

theorem check_9932 : cell_9932.check = true := by
  decide +kernel

theorem check_9933 : cell_9933.check = true := by
  decide +kernel

theorem check_9934 : cell_9934.check = true := by
  decide +kernel

theorem check_9935 : cell_9935.check = true := by
  decide +kernel

theorem check_9936 : cell_9936.check = true := by
  decide +kernel

theorem check_9937 : cell_9937.check = true := by
  decide +kernel

theorem check_9938 : cell_9938.check = true := by
  decide +kernel

theorem check_9939 : cell_9939.check = true := by
  decide +kernel

theorem check_9940 : cell_9940.check = true := by
  decide +kernel

theorem check_9941 : cell_9941.check = true := by
  decide +kernel

theorem check_9942 : cell_9942.check = true := by
  decide +kernel

theorem check_9943 : cell_9943.check = true := by
  decide +kernel

theorem check_9944 : cell_9944.check = true := by
  decide +kernel

theorem check_9945 : cell_9945.check = true := by
  decide +kernel

theorem check_9946 : cell_9946.check = true := by
  decide +kernel

theorem check_9947 : cell_9947.check = true := by
  decide +kernel

theorem check_9948 : cell_9948.check = true := by
  decide +kernel

theorem check_9949 : cell_9949.check = true := by
  decide +kernel

def cells : List Cell := [cell_9900, cell_9901, cell_9902, cell_9903, cell_9904, cell_9905, cell_9906, cell_9907, cell_9908, cell_9909, cell_9910, cell_9911, cell_9912, cell_9913, cell_9914, cell_9915, cell_9916, cell_9917, cell_9918, cell_9919, cell_9920, cell_9921, cell_9922, cell_9923, cell_9924, cell_9925, cell_9926, cell_9927, cell_9928, cell_9929, cell_9930, cell_9931, cell_9932, cell_9933, cell_9934, cell_9935, cell_9936, cell_9937, cell_9938, cell_9939, cell_9940, cell_9941, cell_9942, cell_9943, cell_9944, cell_9945, cell_9946, cell_9947, cell_9948, cell_9949]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9900, check_9901, check_9902, check_9903, check_9904, check_9905, check_9906, check_9907, check_9908, check_9909, check_9910, check_9911, check_9912, check_9913, check_9914, check_9915, check_9916, check_9917, check_9918, check_9919, check_9920, check_9921, check_9922, check_9923, check_9924, check_9925, check_9926, check_9927, check_9928, check_9929, check_9930, check_9931, check_9932, check_9933, check_9934, check_9935, check_9936, check_9937, check_9938, check_9939, check_9940, check_9941, check_9942, check_9943, check_9944, check_9945, check_9946, check_9947, check_9948, check_9949, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0198

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0198
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0198
open AnalyticBounds.ExpressionCertificate

theorem linked_9900 : Linked cell_9900 pieces := by
  refine ⟨piece_1024,piece_1024_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9900,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1213_mem

theorem linked_9901 : Linked cell_9901 pieces := by
  refine ⟨piece_1024,piece_1024_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9901,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1212_mem
    · exact piece_1213_mem

theorem linked_9902 : Linked cell_9902 pieces := by
  refine ⟨piece_1024,piece_1024_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9902,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1212_mem

theorem linked_9903 : Linked cell_9903 pieces := by
  refine ⟨piece_1024,piece_1024_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9903,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1211_mem
    · exact piece_1212_mem

theorem linked_9904 : Linked cell_9904 pieces := by
  refine ⟨piece_1025,piece_1025_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9904,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1211_mem

theorem linked_9905 : Linked cell_9905 pieces := by
  refine ⟨piece_1025,piece_1025_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9905,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1210_mem
    · exact piece_1211_mem

theorem linked_9906 : Linked cell_9906 pieces := by
  refine ⟨piece_1026,piece_1026_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9906,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1211_mem
    · exact piece_1212_mem

theorem linked_9907 : Linked cell_9907 pieces := by
  refine ⟨piece_1026,piece_1026_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9907,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1211_mem

theorem linked_9908 : Linked cell_9908 pieces := by
  refine ⟨piece_1026,piece_1026_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9908,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1210_mem
    · exact piece_1211_mem

theorem linked_9909 : Linked cell_9909 pieces := by
  refine ⟨piece_1026,piece_1026_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9909,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1210_mem

theorem linked_9910 : Linked cell_9910 pieces := by
  refine ⟨piece_1026,piece_1026_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9910,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1210_mem

theorem linked_9911 : Linked cell_9911 pieces := by
  refine ⟨piece_1026,piece_1026_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9911,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1209_mem
    · exact piece_1210_mem

theorem linked_9912 : Linked cell_9912 pieces := by
  refine ⟨piece_1026,piece_1026_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9912,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1209_mem

theorem linked_9913 : Linked cell_9913 pieces := by
  refine ⟨piece_1027,piece_1027_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9913,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1210_mem

theorem linked_9914 : Linked cell_9914 pieces := by
  refine ⟨piece_1027,piece_1027_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9914,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1210_mem

theorem linked_9915 : Linked cell_9915 pieces := by
  refine ⟨piece_1027,piece_1027_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9915,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1209_mem
    · exact piece_1210_mem

theorem linked_9916 : Linked cell_9916 pieces := by
  refine ⟨piece_1027,piece_1027_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9916,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1209_mem

theorem linked_9917 : Linked cell_9917 pieces := by
  refine ⟨piece_1027,piece_1027_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9917,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1208_mem
    · exact piece_1209_mem

theorem linked_9918 : Linked cell_9918 pieces := by
  refine ⟨piece_1027,piece_1027_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9918,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1208_mem

theorem linked_9919 : Linked cell_9919 pieces := by
  refine ⟨piece_1027,piece_1027_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9919,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1208_mem

theorem linked_9920 : Linked cell_9920 pieces := by
  refine ⟨piece_1028,piece_1028_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9920,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1209_mem

theorem linked_9921 : Linked cell_9921 pieces := by
  refine ⟨piece_1028,piece_1028_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9921,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1208_mem
    · exact piece_1209_mem

theorem linked_9922 : Linked cell_9922 pieces := by
  refine ⟨piece_1028,piece_1028_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9922,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1208_mem

theorem linked_9923 : Linked cell_9923 pieces := by
  refine ⟨piece_1028,piece_1028_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9923,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1207_mem
    · exact piece_1208_mem

theorem linked_9924 : Linked cell_9924 pieces := by
  refine ⟨piece_1028,piece_1028_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9924,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1207_mem

theorem linked_9925 : Linked cell_9925 pieces := by
  refine ⟨piece_1028,piece_1028_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9925,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1206_mem
    · exact piece_1207_mem

theorem linked_9926 : Linked cell_9926 pieces := by
  refine ⟨piece_1029,piece_1029_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9926,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1207_mem
    · exact piece_1208_mem

theorem linked_9927 : Linked cell_9927 pieces := by
  refine ⟨piece_1029,piece_1029_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9927,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1207_mem

theorem linked_9928 : Linked cell_9928 pieces := by
  refine ⟨piece_1029,piece_1029_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9928,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1206_mem
    · exact piece_1207_mem

theorem linked_9929 : Linked cell_9929 pieces := by
  refine ⟨piece_1029,piece_1029_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9929,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1205_mem
    · exact piece_1206_mem

theorem linked_9930 : Linked cell_9930 pieces := by
  refine ⟨piece_1029,piece_1029_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9930,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1204_mem
    · exact piece_1205_mem

theorem linked_9931 : Linked cell_9931 pieces := by
  refine ⟨piece_1029,piece_1029_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9931,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1204_mem

theorem linked_9932 : Linked cell_9932 pieces := by
  refine ⟨piece_1030,piece_1030_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9932,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1205_mem
    · exact piece_1206_mem

theorem linked_9933 : Linked cell_9933 pieces := by
  refine ⟨piece_1030,piece_1030_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9933,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1205_mem

theorem linked_9934 : Linked cell_9934 pieces := by
  refine ⟨piece_1030,piece_1030_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9934,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1204_mem
    · exact piece_1205_mem

theorem linked_9935 : Linked cell_9935 pieces := by
  refine ⟨piece_1030,piece_1030_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9935,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1204_mem

theorem linked_9936 : Linked cell_9936 pieces := by
  refine ⟨piece_1030,piece_1030_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9936,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1203_mem
    · exact piece_1204_mem

theorem linked_9937 : Linked cell_9937 pieces := by
  refine ⟨piece_1030,piece_1030_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9937,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1203_mem

theorem linked_9938 : Linked cell_9938 pieces := by
  refine ⟨piece_1030,piece_1030_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9938,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1202_mem
    · exact piece_1203_mem

theorem linked_9939 : Linked cell_9939 pieces := by
  refine ⟨piece_1031,piece_1031_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9939,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1204_mem

theorem linked_9940 : Linked cell_9940 pieces := by
  refine ⟨piece_1031,piece_1031_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9940,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1203_mem
    · exact piece_1204_mem

theorem linked_9941 : Linked cell_9941 pieces := by
  refine ⟨piece_1031,piece_1031_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9941,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1203_mem

theorem linked_9942 : Linked cell_9942 pieces := by
  refine ⟨piece_1031,piece_1031_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9942,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1202_mem
    · exact piece_1203_mem

theorem linked_9943 : Linked cell_9943 pieces := by
  refine ⟨piece_1031,piece_1031_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9943,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1201_mem
    · exact piece_1202_mem

theorem linked_9944 : Linked cell_9944 pieces := by
  refine ⟨piece_1031,piece_1031_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9944,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1201_mem

theorem linked_9945 : Linked cell_9945 pieces := by
  refine ⟨piece_1032,piece_1032_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9945,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1202_mem
    · exact piece_1203_mem

theorem linked_9946 : Linked cell_9946 pieces := by
  refine ⟨piece_1032,piece_1032_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9946,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1202_mem

theorem linked_9947 : Linked cell_9947 pieces := by
  refine ⟨piece_1032,piece_1032_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9947,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1201_mem
    · exact piece_1202_mem

theorem linked_9948 : Linked cell_9948 pieces := by
  refine ⟨piece_1032,piece_1032_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9948,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1200_mem
    · exact piece_1201_mem

theorem linked_9949 : Linked cell_9949 pieces := by
  refine ⟨piece_1032,piece_1032_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9949,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1200_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0198.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0198.cells,List.forall_mem_cons]
  exact ⟨linked_9900, linked_9901, linked_9902, linked_9903, linked_9904, linked_9905, linked_9906, linked_9907, linked_9908, linked_9909, linked_9910, linked_9911, linked_9912, linked_9913, linked_9914, linked_9915, linked_9916, linked_9917, linked_9918, linked_9919, linked_9920, linked_9921, linked_9922, linked_9923, linked_9924, linked_9925, linked_9926, linked_9927, linked_9928, linked_9929, linked_9930, linked_9931, linked_9932, linked_9933, linked_9934, linked_9935, linked_9936, linked_9937, linked_9938, linked_9939, linked_9940, linked_9941, linked_9942, linked_9943, linked_9944, linked_9945, linked_9946, linked_9947, linked_9948, linked_9949, by simp⟩

theorem covered : covers (10612500000000001 / 25000000000000000 : ℚ) (8568750000000001 / 20000000000000000 : ℚ)
    (SourceCertificates.Chunk0198.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0198
