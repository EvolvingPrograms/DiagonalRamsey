import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0221
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(111075000000000001 / 200000000000000000 : ℚ), (55549999999999999 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (11623970434831 / 20000000000000 : ℚ)
  w := (14218526939537 / 10000000000000 : ℚ)
  center := (222174999999999999 / 400000000000000000 : ℚ)
  supportValue := (9396801748850661 / 25000000000000000 : ℚ)
  supportSlope := (-16096852486448807 / 10000000000000000 : ℚ)
  oldCenter := (9396801748850661 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1310
  oldLo := (187 / 500 : ℚ)
  oldHi := (47 / 125 : ℚ)
  oldPieces := [piece_918]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_11050 : Cell := { cellDefaults with
  r := (1456795524371 / 2500000000000 : ℚ)
  w := (2847192654303 / 2000000000000 : ℚ)
  newCoefficients := coefficients_1309
  oldLo := (751 / 2000 : ℚ)
  oldPieces := [piece_918]
}

noncomputable def cell_11051 : Cell := { cellDefaults with
  domain := ⟨(55549999999999999 / 100000000000000000 : ℚ), (111125000000000001 / 200000000000000000 : ℚ)⟩
  r := (58241355296037 / 100000000000000 : ℚ)
  w := (7116230688423 / 5000000000000 : ℚ)
  center := (222224999999999999 / 400000000000000000 : ℚ)
  supportValue := (18804551274747 / 50000000000000 : ℚ)
  supportSlope := (-1609427845644247 / 1000000000000000 : ℚ)
  oldCenter := (18804551274747 / 50000000000000 : ℚ)
  oldLo := (751 / 2000 : ℚ)
  oldHi := (753 / 2000 : ℚ)
  oldPieces := [piece_918, piece_919]
}

noncomputable def cell_11052 : Cell := { cellDefaults with
  domain := ⟨(111125000000000001 / 200000000000000000 : ℚ), (27787500000000001 / 50000000000000000 : ℚ)⟩
  r := (58241355296037 / 100000000000000 : ℚ)
  w := (7116230688423 / 5000000000000 : ℚ)
  center := (44455000000000001 / 80000000000000000 : ℚ)
  supportValue := (1879449350117081 / 5000000000000000 : ℚ)
  supportSlope := (-3217969297387993 / 2000000000000000 : ℚ)
  oldCenter := (1879449350117081 / 5000000000000000 : ℚ)
  oldLo := (751 / 2000 : ℚ)
  oldPieces := [piece_918]
}

noncomputable def cell_11053 : Cell := { cellDefaults with
  domain := ⟨(27787500000000001 / 50000000000000000 : ℚ), (111175000000000007 / 200000000000000000 : ℚ)⟩
  r := (58241355296037 / 100000000000000 : ℚ)
  w := (7116230688423 / 5000000000000 : ℚ)
  center := (222325000000000011 / 400000000000000000 : ℚ)
  supportValue := (18784442935491477 / 50000000000000000 : ℚ)
  supportSlope := (-2008993449094979 / 1250000000000000 : ℚ)
  oldCenter := (18784442935491477 / 50000000000000000 : ℚ)
  oldLo := (751 / 2000 : ℚ)
  oldPieces := [piece_918]
}

noncomputable def cell_11054 : Cell := { cellDefaults with
  domain := ⟨(111175000000000007 / 200000000000000000 : ℚ), (11120000000000001 / 20000000000000000 : ℚ)⟩
  r := (58241355296037 / 100000000000000 : ℚ)
  w := (7116230688423 / 5000000000000 : ℚ)
  center := (222375000000000017 / 400000000000000000 : ℚ)
  supportValue := (75097611968013 / 200000000000000 : ℚ)
  supportSlope := (-16062068973743697 / 10000000000000000 : ℚ)
  oldCenter := (75097611968013 / 200000000000000 : ℚ)
  oldLo := (3750279329608939 / 10000000000000000 : ℚ)
  oldPieces := [piece_917, piece_918]
}

noncomputable def cell_11055 : Cell := { cellDefaults with
  domain := ⟨(11120000000000001 / 20000000000000000 : ℚ), (111225000000000007 / 200000000000000000 : ℚ)⟩
  r := (58210925928537 / 100000000000000 : ℚ)
  w := (7114483641367 / 5000000000000 : ℚ)
  center := (222425000000000017 / 400000000000000000 : ℚ)
  supportValue := (1878532462577057 / 5000000000000000 : ℚ)
  supportSlope := (-8032470735091909 / 5000000000000000 : ℚ)
  oldCenter := (1878532462577057 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1311
  oldLo := (751 / 2000 : ℚ)
  oldPieces := [piece_918]
}

noncomputable def cell_11056 : Cell := { cellDefaults with
  domain := ⟨(111225000000000007 / 200000000000000000 : ℚ), (27812500000000001 / 50000000000000000 : ℚ)⟩
  r := (58210925928537 / 100000000000000 : ℚ)
  w := (7114483641367 / 5000000000000 : ℚ)
  center := (222475000000000011 / 400000000000000000 : ℚ)
  supportValue := (37550579202369117 / 100000000000000000 : ℚ)
  supportSlope := (-1003364054997911 / 625000000000000 : ℚ)
  oldCenter := (37550579202369117 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1311
  oldLo := (3750279329608939 / 10000000000000000 : ℚ)
  oldPieces := [piece_917, piece_918]
}

noncomputable def cell_11057 : Cell := { cellDefaults with
  domain := ⟨(27812500000000001 / 50000000000000000 : ℚ), (111275000000000001 / 200000000000000000 : ℚ)⟩
  r := (58210925928537 / 100000000000000 : ℚ)
  w := (7114483641367 / 5000000000000 : ℚ)
  center := (44505000000000001 / 80000000000000000 : ℚ)
  supportValue := (37530514195113523 / 100000000000000000 : ℚ)
  supportSlope := (-1604343044382809 / 1000000000000000 : ℚ)
  oldCenter := (37530514195113523 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1311
  oldLo := (3750279329608939 / 10000000000000000 : ℚ)
  oldHi := (751 / 2000 : ℚ)
  oldPieces := [piece_917]
}

noncomputable def cell_11058 : Cell := { cellDefaults with
  domain := ⟨(111275000000000001 / 200000000000000000 : ℚ), (55649999999999999 / 100000000000000000 : ℚ)⟩
  r := (58210925928537 / 100000000000000 : ℚ)
  w := (7114483641367 / 5000000000000 : ℚ)
  center := (222574999999999999 / 400000000000000000 : ℚ)
  supportValue := (1875523552284583 / 5000000000000000 : ℚ)
  supportSlope := (-16025591411567819 / 10000000000000000 : ℚ)
  oldCenter := (1875523552284583 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1311
  oldLo := (3 / 8 : ℚ)
  oldHi := (751 / 2000 : ℚ)
  oldPieces := [piece_916, piece_917]
}

noncomputable def cell_11059 : Cell := { cellDefaults with
  domain := ⟨(55649999999999999 / 100000000000000000 : ℚ), (111325000000000001 / 200000000000000000 : ℚ)⟩
  r := (1818141656461 / 3125000000000 : ℚ)
  w := (1422548071393 / 1000000000000 : ℚ)
  center := (222624999999999999 / 400000000000000000 : ℚ)
  supportValue := (3753227172635811 / 10000000000000000 : ℚ)
  supportSlope := (-3207288838465387 / 2000000000000000 : ℚ)
  oldCenter := (3753227172635811 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1312
  oldLo := (3750279329608939 / 10000000000000000 : ℚ)
  oldHi := (751 / 2000 : ℚ)
  oldPieces := [piece_917]
}

noncomputable def cell_11060 : Cell := { cellDefaults with
  domain := ⟨(111325000000000001 / 200000000000000000 : ℚ), (27837500000000001 / 50000000000000000 : ℚ)⟩
  r := (1818141656461 / 3125000000000 : ℚ)
  w := (1422548071393 / 1000000000000 : ℚ)
  center := (44535000000000001 / 80000000000000000 : ℚ)
  supportValue := (37512237300766227 / 100000000000000000 : ℚ)
  supportSlope := (-3203724081929209 / 2000000000000000 : ℚ)
  oldCenter := (37512237300766227 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1312
  oldLo := (3 / 8 : ℚ)
  oldHi := (751 / 2000 : ℚ)
  oldPieces := [piece_916, piece_917]
}

noncomputable def cell_11061 : Cell := { cellDefaults with
  domain := ⟨(27837500000000001 / 50000000000000000 : ℚ), (111375000000000007 / 200000000000000000 : ℚ)⟩
  r := (1818141656461 / 3125000000000 : ℚ)
  w := (1422548071393 / 1000000000000 : ℚ)
  center := (222725000000000011 / 400000000000000000 : ℚ)
  supportValue := (3749221817875011 / 10000000000000000 : ℚ)
  supportSlope := (-16013483943140583 / 10000000000000000 : ℚ)
  oldCenter := (3749221817875011 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1312
  oldLo := (749 / 2000 : ℚ)
  oldHi := (3750279329608939 / 10000000000000000 : ℚ)
  oldPieces := [piece_915, piece_916]
}

noncomputable def cell_11062 : Cell := { cellDefaults with
  domain := ⟨(111375000000000007 / 200000000000000000 : ℚ), (11140000000000001 / 20000000000000000 : ℚ)⟩
  r := (1818141656461 / 3125000000000 : ℚ)
  w := (1422548071393 / 1000000000000 : ℚ)
  center := (222775000000000017 / 400000000000000000 : ℚ)
  supportValue := (4684026314082193 / 12500000000000000 : ℚ)
  supportSlope := (-7998602386417737 / 5000000000000000 : ℚ)
  oldCenter := (4684026314082193 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1312
  oldLo := (749 / 2000 : ℚ)
  oldHi := (3 / 8 : ℚ)
  oldPieces := [piece_915]
}

noncomputable def cell_11063 : Cell := { cellDefaults with
  domain := ⟨(11140000000000001 / 20000000000000000 : ℚ), (44570000000000003 / 80000000000000000 : ℚ)⟩
  r := (29075087037179 / 50000000000000 : ℚ)
  w := (14221999528437 / 10000000000000 : ℚ)
  center := (89130000000000007 / 160000000000000000 : ℚ)
  supportValue := (1874698888446153 / 5000000000000000 : ℚ)
  supportSlope := (-16005273008580723 / 10000000000000000 : ℚ)
  oldCenter := (1874698888446153 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1313
  oldLo := (749 / 2000 : ℚ)
  oldHi := (751 / 2000 : ℚ)
  oldPieces := [piece_915, piece_916, piece_917]
}

noncomputable def cell_11064 : Cell := { cellDefaults with
  domain := ⟨(44570000000000003 / 80000000000000000 : ℚ), (22290000000000001 / 40000000000000000 : ℚ)⟩
  r := (29075087037179 / 50000000000000 : ℚ)
  w := (14221999528437 / 10000000000000 : ℚ)
  center := (17830000000000001 / 32000000000000000 : ℚ)
  supportValue := (3747397879493373 / 10000000000000000 : ℚ)
  supportSlope := (-799512912584257 / 500000000000000 : ℚ)
  oldCenter := (3747397879493373 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1313
  oldLo := (749 / 2000 : ℚ)
  oldHi := (3 / 8 : ℚ)
  oldPieces := [piece_915]
}

noncomputable def cell_11065 : Cell := { cellDefaults with
  domain := ⟨(22290000000000001 / 40000000000000000 : ℚ), (44590000000000001 / 80000000000000000 : ℚ)⟩
  r := (29075087037179 / 50000000000000 : ℚ)
  w := (14221999528437 / 10000000000000 : ℚ)
  center := (89170000000000003 / 160000000000000000 : ℚ)
  supportValue := (7490800412660119 / 20000000000000000 : ℚ)
  supportSlope := (-3195359468158507 / 2000000000000000 : ℚ)
  oldCenter := (7490800412660119 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1313
  oldHi := (3 / 8 : ℚ)
  oldPieces := [piece_914, piece_915]
}

noncomputable def cell_11066 : Cell := { cellDefaults with
  domain := ⟨(44590000000000001 / 80000000000000000 : ℚ), (223 / 400 : ℚ)⟩
  r := (29075087037179 / 50000000000000 : ℚ)
  w := (14221999528437 / 10000000000000 : ℚ)
  center := (89190000000000001 / 160000000000000000 : ℚ)
  supportValue := (3743403323545349 / 10000000000000000 : ℚ)
  supportSlope := (-15968974280219859 / 10000000000000000 : ℚ)
  oldCenter := (3743403323545349 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1313
  oldHi := (749 / 2000 : ℚ)
  oldPieces := [piece_914]
}

noncomputable def cell_11067 : Cell := { cellDefaults with
  domain := ⟨(223 / 400 : ℚ), (174231843575419 / 312500000000000 : ℚ)⟩
  center := (348450593575419 / 625000000000000 : ℚ)
  supportValue := (3746235199280723 / 10000000000000000 : ℚ)
  supportSlope := (-1597143733936053 / 1000000000000000 : ℚ)
  oldCenter := (3746235199280723 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1314
  oldLo := (749 / 2000 : ℚ)
  oldHi := (3 / 8 : ℚ)
  oldPieces := [piece_915]
}

noncomputable def cell_11068 : Cell := { cellDefaults with
  domain := ⟨(174231843575419 / 312500000000000 : ℚ), (44612513966480449 / 80000000000000000 : ℚ)⟩
  center := (89215865921787713 / 160000000000000000 : ℚ)
  supportValue := (748997965638079 / 2000000000000000 : ℚ)
  supportSlope := (-1596758751933183 / 1000000000000000 : ℚ)
  oldCenter := (748997965638079 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1315
  oldHi := (3 / 8 : ℚ)
  oldPieces := [piece_914, piece_915]
}

noncomputable def cell_11069 : Cell := { cellDefaults with
  domain := ⟨(44612513966480449 / 80000000000000000 : ℚ), (22310837988826817 / 40000000000000000 : ℚ)⟩
  center := (89234189944134083 / 160000000000000000 : ℚ)
  supportValue := (37431586438864617 / 100000000000000000 : ℚ)
  supportSlope := (-7979158857235983 / 5000000000000000 : ℚ)
  oldCenter := (37431586438864617 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1315
  oldHi := (749 / 2000 : ℚ)
  oldPieces := [piece_914]
}

noncomputable def cell_11070 : Cell := { cellDefaults with
  domain := ⟨(22310837988826817 / 40000000000000000 : ℚ), (44630837988826819 / 80000000000000000 : ℚ)⟩
  center := (89252513966480453 / 160000000000000000 : ℚ)
  supportValue := (37413319469308987 / 100000000000000000 : ℚ)
  supportSlope := (-15942052493359877 / 10000000000000000 : ℚ)
  oldCenter := (37413319469308987 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1315
  oldHi := (749 / 2000 : ℚ)
  oldPieces := [piece_914]
}

noncomputable def cell_11071 : Cell := { cellDefaults with
  domain := ⟨(44630837988826819 / 80000000000000000 : ℚ), (11160000000000001 / 20000000000000000 : ℚ)⟩
  center := (89270837988826823 / 160000000000000000 : ℚ)
  supportValue := (3739509283296681 / 10000000000000000 : ℚ)
  supportSlope := (-1992106270516559 / 1250000000000000 : ℚ)
  oldCenter := (3739509283296681 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1315
  oldLo := (747 / 2000 : ℚ)
  oldHi := (749 / 2000 : ℚ)
  oldPieces := [piece_913, piece_914]
}

noncomputable def cell_11072 : Cell := { cellDefaults with
  domain := ⟨(11160000000000001 / 20000000000000000 : ℚ), (44650000000000003 / 80000000000000000 : ℚ)⟩
  r := (58089566107661 / 100000000000000 : ℚ)
  w := (7107531849771 / 5000000000000 : ℚ)
  center := (89290000000000007 / 160000000000000000 : ℚ)
  supportValue := (3741758939837917 / 10000000000000000 : ℚ)
  supportSlope := (-15937348761598173 / 10000000000000000 : ℚ)
  oldCenter := (3741758939837917 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1316
  oldHi := (749 / 2000 : ℚ)
  oldPieces := [piece_914]
}

noncomputable def cell_11073 : Cell := { cellDefaults with
  domain := ⟨(44650000000000003 / 80000000000000000 : ℚ), (22330000000000001 / 40000000000000000 : ℚ)⟩
  r := (58089566107661 / 100000000000000 : ℚ)
  w := (7107531849771 / 5000000000000 : ℚ)
  center := (17862000000000001 / 32000000000000000 : ℚ)
  supportValue := (149590706538563 / 400000000000000 : ℚ)
  supportSlope := (-15928496610985647 / 10000000000000000 : ℚ)
  oldCenter := (149590706538563 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1316
  oldLo := (747 / 2000 : ℚ)
  oldHi := (749 / 2000 : ℚ)
  oldPieces := [piece_913, piece_914]
}

noncomputable def cell_11074 : Cell := { cellDefaults with
  domain := ⟨(22330000000000001 / 40000000000000000 : ℚ), (44670000000000001 / 80000000000000000 : ℚ)⟩
  r := (58089566107661 / 100000000000000 : ℚ)
  w := (7107531849771 / 5000000000000 : ℚ)
  center := (89330000000000003 / 160000000000000000 : ℚ)
  supportValue := (9344442566213379 / 25000000000000000 : ℚ)
  supportSlope := (-7958101367187793 / 5000000000000000 : ℚ)
  oldCenter := (9344442566213379 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1316
  oldLo := (747 / 2000 : ℚ)
  oldHi := (187 / 500 : ℚ)
  oldPieces := [piece_913]
}

noncomputable def cell_11075 : Cell := { cellDefaults with
  domain := ⟨(44670000000000001 / 80000000000000000 : ℚ), (1117 / 2000 : ℚ)⟩
  r := (58089566107661 / 100000000000000 : ℚ)
  w := (7107531849771 / 5000000000000 : ℚ)
  center := (89350000000000001 / 160000000000000000 : ℚ)
  supportValue := (18678943033987963 / 50000000000000000 : ℚ)
  supportSlope := (-3180001163855513 / 2000000000000000 : ℚ)
  oldCenter := (18678943033987963 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1316
  oldLo := (373 / 1000 : ℚ)
  oldHi := (187 / 500 : ℚ)
  oldPieces := [piece_912, piece_913]
}

noncomputable def cell_11076 : Cell := { cellDefaults with
  domain := ⟨(1117 / 2000 : ℚ), (44690000000000001 / 80000000000000000 : ℚ)⟩
  r := (58059317237387 / 100000000000000 : ℚ)
  w := (14211608207821 / 10000000000000 : ℚ)
  center := (89370000000000001 / 160000000000000000 : ℚ)
  supportValue := (37379501372917423 / 100000000000000000 : ℚ)
  supportSlope := (-15909288918941131 / 10000000000000000 : ℚ)
  oldCenter := (37379501372917423 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1317
  oldLo := (747 / 2000 : ℚ)
  oldHi := (187 / 500 : ℚ)
  oldPieces := [piece_913]
}

noncomputable def cell_11077 : Cell := { cellDefaults with
  domain := ⟨(44690000000000001 / 80000000000000000 : ℚ), (22350000000000001 / 40000000000000000 : ℚ)⟩
  r := (58059317237387 / 100000000000000 : ℚ)
  w := (14211608207821 / 10000000000000 : ℚ)
  center := (89390000000000003 / 160000000000000000 : ℚ)
  supportValue := (1867981290476611 / 5000000000000000 : ℚ)
  supportSlope := (-7945921820859163 / 5000000000000000 : ℚ)
  oldCenter := (1867981290476611 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1317
  oldLo := (373 / 1000 : ℚ)
  oldHi := (187 / 500 : ℚ)
  oldPieces := [piece_912, piece_913]
}

noncomputable def cell_11078 : Cell := { cellDefaults with
  domain := ⟨(22350000000000001 / 40000000000000000 : ℚ), (44710000000000003 / 80000000000000000 : ℚ)⟩
  r := (58059317237387 / 100000000000000 : ℚ)
  w := (14211608207821 / 10000000000000 : ℚ)
  center := (17882000000000001 / 32000000000000000 : ℚ)
  supportValue := (298718104412713 / 800000000000000 : ℚ)
  supportSlope := (-7944133844936291 / 5000000000000000 : ℚ)
  oldCenter := (298718104412713 / 800000000000000 : ℚ)
  newCoefficients := coefficients_1317
  oldLo := (373 / 1000 : ℚ)
  oldHi := (747 / 2000 : ℚ)
  oldPieces := [piece_912]
}

noncomputable def cell_11079 : Cell := { cellDefaults with
  domain := ⟨(44710000000000003 / 80000000000000000 : ℚ), (11180000000000001 / 20000000000000000 : ℚ)⟩
  r := (58059317237387 / 100000000000000 : ℚ)
  w := (14211608207821 / 10000000000000 : ℚ)
  center := (89430000000000007 / 160000000000000000 : ℚ)
  supportValue := (1865994382871297 / 5000000000000000 : ℚ)
  supportSlope := (-1587054900612569 / 1000000000000000 : ℚ)
  oldCenter := (1865994382871297 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1317
  oldLo := (373 / 1000 : ℚ)
  oldHi := (747 / 2000 : ℚ)
  oldPieces := [piece_912]
}

noncomputable def cell_11080 : Cell := { cellDefaults with
  domain := ⟨(11180000000000001 / 20000000000000000 : ℚ), (44730000000000003 / 80000000000000000 : ℚ)⟩
  r := (58029101806379 / 100000000000000 : ℚ)
  w := (7104078509563 / 5000000000000 : ℚ)
  center := (89450000000000007 / 160000000000000000 : ℚ)
  supportValue := (7468299817424231 / 20000000000000000 : ℚ)
  supportSlope := (-7940187722362507 / 5000000000000000 : ℚ)
  oldCenter := (7468299817424231 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1318
  oldLo := (373 / 1000 : ℚ)
  oldHi := (187 / 500 : ℚ)
  oldPieces := [piece_912, piece_913]
}

noncomputable def cell_11081 : Cell := { cellDefaults with
  domain := ⟨(44730000000000003 / 80000000000000000 : ℚ), (22370000000000001 / 40000000000000000 : ℚ)⟩
  r := (58029101806379 / 100000000000000 : ℚ)
  w := (7104078509563 / 5000000000000 : ℚ)
  center := (17894000000000001 / 32000000000000000 : ℚ)
  supportValue := (3732163229018811 / 10000000000000000 : ℚ)
  supportSlope := (-7931838650217753 / 5000000000000000 : ℚ)
  oldCenter := (3732163229018811 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1318
  oldLo := (373 / 1000 : ℚ)
  oldHi := (747 / 2000 : ℚ)
  oldPieces := [piece_912]
}

noncomputable def cell_11082 : Cell := { cellDefaults with
  domain := ⟨(22370000000000001 / 40000000000000000 : ℚ), (44750000000000001 / 80000000000000000 : ℚ)⟩
  r := (58029101806379 / 100000000000000 : ℚ)
  w := (7104078509563 / 5000000000000 : ℚ)
  center := (89490000000000003 / 160000000000000000 : ℚ)
  supportValue := (1865091991711191 / 5000000000000000 : ℚ)
  supportSlope := (-3962980932131051 / 2500000000000000 : ℚ)
  oldCenter := (1865091991711191 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1318
  oldLo := (149 / 400 : ℚ)
  oldHi := (747 / 2000 : ℚ)
  oldPieces := [piece_911, piece_912]
}

noncomputable def cell_11083 : Cell := { cellDefaults with
  domain := ⟨(44750000000000001 / 80000000000000000 : ℚ), (1119 / 2000 : ℚ)⟩
  r := (58029101806379 / 100000000000000 : ℚ)
  w := (7104078509563 / 5000000000000 : ℚ)
  center := (89510000000000001 / 160000000000000000 : ℚ)
  supportValue := (3728200085120023 / 10000000000000000 : ℚ)
  supportSlope := (-7921377857594517 / 5000000000000000 : ℚ)
  oldCenter := (3728200085120023 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1318
  oldLo := (149 / 400 : ℚ)
  oldHi := (373 / 1000 : ℚ)
  oldPieces := [piece_911]
}

noncomputable def cell_11084 : Cell := { cellDefaults with
  domain := ⟨(1119 / 2000 : ℚ), (44770000000000001 / 80000000000000000 : ℚ)⟩
  r := (579989220507 / 1000000000000 : ℚ)
  w := (14204714224147 / 10000000000000 : ℚ)
  center := (89530000000000001 / 160000000000000000 : ℚ)
  supportValue := (9325891645419629 / 25000000000000000 : ℚ)
  supportSlope := (-15843794049617637 / 10000000000000000 : ℚ)
  oldCenter := (9325891645419629 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1319
  oldLo := (149 / 400 : ℚ)
  oldHi := (747 / 2000 : ℚ)
  oldPieces := [piece_911, piece_912]
}

noncomputable def cell_11085 : Cell := { cellDefaults with
  domain := ⟨(44770000000000001 / 80000000000000000 : ℚ), (22390000000000001 / 40000000000000000 : ℚ)⟩
  r := (579989220507 / 1000000000000 : ℚ)
  w := (14204714224147 / 10000000000000 : ℚ)
  center := (89550000000000003 / 160000000000000000 : ℚ)
  supportValue := (3728373774790337 / 10000000000000000 : ℚ)
  supportSlope := (-3167180255161067 / 2000000000000000 : ℚ)
  oldCenter := (3728373774790337 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1319
  oldLo := (149 / 400 : ℚ)
  oldHi := (373 / 1000 : ℚ)
  oldPieces := [piece_911]
}

noncomputable def cell_11086 : Cell := { cellDefaults with
  domain := ⟨(22390000000000001 / 40000000000000000 : ℚ), (44790000000000003 / 80000000000000000 : ℚ)⟩
  r := (579989220507 / 1000000000000 : ℚ)
  w := (14204714224147 / 10000000000000 : ℚ)
  center := (17914000000000001 / 32000000000000000 : ℚ)
  supportValue := (465799423738829 / 1250000000000000 : ℚ)
  supportSlope := (-158182632859811 / 100000000000000 : ℚ)
  oldCenter := (465799423738829 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1319
  oldLo := (149 / 400 : ℚ)
  oldHi := (373 / 1000 : ℚ)
  oldPieces := [piece_911]
}

noncomputable def cell_11087 : Cell := { cellDefaults with
  domain := ⟨(44790000000000003 / 80000000000000000 : ℚ), (11200000000000001 / 20000000000000000 : ℚ)⟩
  r := (579989220507 / 1000000000000 : ℚ)
  w := (14204714224147 / 10000000000000 : ℚ)
  center := (89590000000000007 / 160000000000000000 : ℚ)
  supportValue := (2327763300713781 / 6250000000000000 : ℚ)
  supportSlope := (-3162426642382993 / 2000000000000000 : ℚ)
  oldCenter := (2327763300713781 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1319
  oldLo := (93 / 250 : ℚ)
  oldHi := (373 / 1000 : ℚ)
  oldPieces := [piece_910, piece_911]
}

noncomputable def cell_11088 : Cell := { cellDefaults with
  domain := ⟨(11200000000000001 / 20000000000000000 : ℚ), (44810000000000003 / 80000000000000000 : ℚ)⟩
  r := (57968778781169 / 100000000000000 : ℚ)
  w := (14201280391717 / 10000000000000 : ℚ)
  center := (89610000000000007 / 160000000000000000 : ℚ)
  supportValue := (4658208819327643 / 12500000000000000 : ℚ)
  supportSlope := (-790570175520501 / 500000000000000 : ℚ)
  oldCenter := (4658208819327643 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1320
  oldLo := (149 / 400 : ℚ)
  oldHi := (373 / 1000 : ℚ)
  oldPieces := [piece_911]
}

noncomputable def cell_11089 : Cell := { cellDefaults with
  domain := ⟨(44810000000000003 / 80000000000000000 : ℚ), (22410000000000001 / 40000000000000000 : ℚ)⟩
  r := (57968778781169 / 100000000000000 : ℚ)
  w := (14201280391717 / 10000000000000 : ℚ)
  center := (17926000000000001 / 32000000000000000 : ℚ)
  supportValue := (37245939609009227 / 100000000000000000 : ℚ)
  supportSlope := (-1580403035406677 / 1000000000000000 : ℚ)
  oldCenter := (37245939609009227 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1320
  oldLo := (93 / 250 : ℚ)
  oldHi := (373 / 1000 : ℚ)
  oldPieces := [piece_910, piece_911]
}

noncomputable def cell_11090 : Cell := { cellDefaults with
  domain := ⟨(22410000000000001 / 40000000000000000 : ℚ), (44830000000000001 / 80000000000000000 : ℚ)⟩
  r := (57968778781169 / 100000000000000 : ℚ)
  w := (14201280391717 / 10000000000000 : ℚ)
  center := (89650000000000003 / 160000000000000000 : ℚ)
  supportValue := (37226164236799203 / 100000000000000000 : ℚ)
  supportSlope := (-6316247733779 / 4000000000000 : ℚ)
  oldCenter := (37226164236799203 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1320
  oldLo := (93 / 250 : ℚ)
  oldHi := (149 / 400 : ℚ)
  oldPieces := [piece_910]
}

noncomputable def cell_11091 : Cell := { cellDefaults with
  domain := ⟨(44830000000000001 / 80000000000000000 : ℚ), (1121 / 2000 : ℚ)⟩
  r := (57968778781169 / 100000000000000 : ℚ)
  w := (14201280391717 / 10000000000000 : ℚ)
  center := (89670000000000001 / 160000000000000000 : ℚ)
  supportValue := (372064630011943 / 1000000000000000 : ℚ)
  supportSlope := (-3943889690441299 / 2500000000000000 : ℚ)
  oldCenter := (372064630011943 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1320
  oldLo := (7430000000000001 / 20000000000000000 : ℚ)
  oldHi := (149 / 400 : ℚ)
  oldPieces := [piece_909, piece_910]
}

noncomputable def cell_11092 : Cell := { cellDefaults with
  domain := ⟨(1121 / 2000 : ℚ), (44850000000000001 / 80000000000000000 : ℚ)⟩
  r := (28969336268747 / 50000000000000 : ℚ)
  w := (7098927365123 / 5000000000000 : ℚ)
  center := (89690000000000001 / 160000000000000000 : ℚ)
  supportValue := (18613936041695847 / 50000000000000000 : ℚ)
  supportSlope := (-7891889651378313 / 5000000000000000 : ℚ)
  oldCenter := (18613936041695847 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1321
  oldLo := (93 / 250 : ℚ)
  oldHi := (149 / 400 : ℚ)
  oldPieces := [piece_910]
}

noncomputable def cell_11093 : Cell := { cellDefaults with
  domain := ⟨(44850000000000001 / 80000000000000000 : ℚ), (22430000000000001 / 40000000000000000 : ℚ)⟩
  r := (28969336268747 / 50000000000000 : ℚ)
  w := (7098927365123 / 5000000000000 : ℚ)
  center := (89710000000000003 / 160000000000000000 : ℚ)
  supportValue := (1860408969512403 / 5000000000000000 : ℚ)
  supportSlope := (-788373362644289 / 500000000000000 : ℚ)
  oldCenter := (1860408969512403 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1321
  oldLo := (7430000000000001 / 20000000000000000 : ℚ)
  oldHi := (149 / 400 : ℚ)
  oldPieces := [piece_909, piece_910]
}

noncomputable def cell_11094 : Cell := { cellDefaults with
  domain := ⟨(22430000000000001 / 40000000000000000 : ℚ), (44870000000000003 / 80000000000000000 : ℚ)⟩
  r := (28969336268747 / 50000000000000 : ℚ)
  w := (7098927365123 / 5000000000000 : ℚ)
  center := (17946000000000001 / 32000000000000000 : ℚ)
  supportValue := (464855574022267 / 1250000000000000 : ℚ)
  supportSlope := (-31526239682599 / 20000000000000 : ℚ)
  oldCenter := (464855574022267 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1321
  oldLo := (7430000000000001 / 20000000000000000 : ℚ)
  oldHi := (93 / 250 : ℚ)
  oldPieces := [piece_909]
}

noncomputable def cell_11095 : Cell := { cellDefaults with
  domain := ⟨(44870000000000003 / 80000000000000000 : ℚ), (11220000000000001 / 20000000000000000 : ℚ)⟩
  r := (28969336268747 / 50000000000000 : ℚ)
  w := (7098927365123 / 5000000000000 : ℚ)
  center := (89750000000000007 / 160000000000000000 : ℚ)
  supportValue := (3716875302222537 / 10000000000000000 : ℚ)
  supportSlope := (-314910520317437 / 200000000000000 : ℚ)
  oldCenter := (3716875302222537 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1321
  oldLo := (7430000000000001 / 20000000000000000 : ℚ)
  oldHi := (93 / 250 : ℚ)
  oldPieces := [piece_909]
}

noncomputable def cell_11096 : Cell := { cellDefaults with
  domain := ⟨(11220000000000001 / 20000000000000000 : ℚ), (44890000000000003 / 80000000000000000 : ℚ)⟩
  r := (57908598657623 / 100000000000000 : ℚ)
  w := (14194434126433 / 10000000000000 : ℚ)
  center := (89770000000000007 / 160000000000000000 : ℚ)
  supportValue := (1487607345217993 / 4000000000000000 : ℚ)
  supportSlope := (-393907656400389 / 250000000000000 : ℚ)
  oldCenter := (1487607345217993 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1322
  oldLo := (7430000000000001 / 20000000000000000 : ℚ)
  oldHi := (149 / 400 : ℚ)
  oldPieces := [piece_909, piece_910]
}

noncomputable def cell_11097 : Cell := { cellDefaults with
  domain := ⟨(44890000000000003 / 80000000000000000 : ℚ), (22450000000000001 / 40000000000000000 : ℚ)⟩
  r := (57908598657623 / 100000000000000 : ℚ)
  w := (14194434126433 / 10000000000000 : ℚ)
  center := (17958000000000001 / 32000000000000000 : ℚ)
  supportValue := (18585236603010777 / 50000000000000000 : ℚ)
  supportSlope := (-786936320961463 / 500000000000000 : ℚ)
  oldCenter := (18585236603010777 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1322
  oldLo := (7430000000000001 / 20000000000000000 : ℚ)
  oldHi := (93 / 250 : ℚ)
  oldPieces := [piece_909]
}

noncomputable def cell_11098 : Cell := { cellDefaults with
  domain := ⟨(22450000000000001 / 40000000000000000 : ℚ), (44910000000000001 / 80000000000000000 : ℚ)⟩
  r := (57908598657623 / 100000000000000 : ℚ)
  w := (14194434126433 / 10000000000000 : ℚ)
  center := (89810000000000003 / 160000000000000000 : ℚ)
  supportValue := (37150836755111893 / 100000000000000000 : ℚ)
  supportSlope := (-629115181966063 / 400000000000000 : ℚ)
  oldCenter := (37150836755111893 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1322
  oldLo := (7420000000000001 / 20000000000000000 : ℚ)
  oldHi := (93 / 250 : ℚ)
  oldPieces := [piece_908, piece_909]
}

noncomputable def cell_11099 : Cell := { cellDefaults with
  domain := ⟨(44910000000000001 / 80000000000000000 : ℚ), (1123 / 2000 : ℚ)⟩
  r := (57908598657623 / 100000000000000 : ℚ)
  w := (14194434126433 / 10000000000000 : ℚ)
  center := (89830000000000001 / 160000000000000000 : ℚ)
  supportValue := (928278819552813 / 2500000000000000 : ℚ)
  supportSlope := (-1571816809867223 / 1000000000000000 : ℚ)
  oldCenter := (928278819552813 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1322
  oldLo := (7420000000000001 / 20000000000000000 : ℚ)
  oldHi := (7430000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_908]
}

theorem check_11050 : cell_11050.check = true := by
  decide +kernel

theorem check_11051 : cell_11051.check = true := by
  decide +kernel

theorem check_11052 : cell_11052.check = true := by
  decide +kernel

theorem check_11053 : cell_11053.check = true := by
  decide +kernel

theorem check_11054 : cell_11054.check = true := by
  decide +kernel

theorem check_11055 : cell_11055.check = true := by
  decide +kernel

theorem check_11056 : cell_11056.check = true := by
  decide +kernel

theorem check_11057 : cell_11057.check = true := by
  decide +kernel

theorem check_11058 : cell_11058.check = true := by
  decide +kernel

theorem check_11059 : cell_11059.check = true := by
  decide +kernel

theorem check_11060 : cell_11060.check = true := by
  decide +kernel

theorem check_11061 : cell_11061.check = true := by
  decide +kernel

theorem check_11062 : cell_11062.check = true := by
  decide +kernel

theorem check_11063 : cell_11063.check = true := by
  decide +kernel

theorem check_11064 : cell_11064.check = true := by
  decide +kernel

theorem check_11065 : cell_11065.check = true := by
  decide +kernel

theorem check_11066 : cell_11066.check = true := by
  decide +kernel

theorem check_11067 : cell_11067.check = true := by
  decide +kernel

theorem check_11068 : cell_11068.check = true := by
  decide +kernel

theorem check_11069 : cell_11069.check = true := by
  decide +kernel

theorem check_11070 : cell_11070.check = true := by
  decide +kernel

theorem check_11071 : cell_11071.check = true := by
  decide +kernel

theorem check_11072 : cell_11072.check = true := by
  decide +kernel

theorem check_11073 : cell_11073.check = true := by
  decide +kernel

theorem check_11074 : cell_11074.check = true := by
  decide +kernel

theorem check_11075 : cell_11075.check = true := by
  decide +kernel

theorem check_11076 : cell_11076.check = true := by
  decide +kernel

theorem check_11077 : cell_11077.check = true := by
  decide +kernel

theorem check_11078 : cell_11078.check = true := by
  decide +kernel

theorem check_11079 : cell_11079.check = true := by
  decide +kernel

theorem check_11080 : cell_11080.check = true := by
  decide +kernel

theorem check_11081 : cell_11081.check = true := by
  decide +kernel

theorem check_11082 : cell_11082.check = true := by
  decide +kernel

theorem check_11083 : cell_11083.check = true := by
  decide +kernel

theorem check_11084 : cell_11084.check = true := by
  decide +kernel

theorem check_11085 : cell_11085.check = true := by
  decide +kernel

theorem check_11086 : cell_11086.check = true := by
  decide +kernel

theorem check_11087 : cell_11087.check = true := by
  decide +kernel

theorem check_11088 : cell_11088.check = true := by
  decide +kernel

theorem check_11089 : cell_11089.check = true := by
  decide +kernel

theorem check_11090 : cell_11090.check = true := by
  decide +kernel

theorem check_11091 : cell_11091.check = true := by
  decide +kernel

theorem check_11092 : cell_11092.check = true := by
  decide +kernel

theorem check_11093 : cell_11093.check = true := by
  decide +kernel

theorem check_11094 : cell_11094.check = true := by
  decide +kernel

theorem check_11095 : cell_11095.check = true := by
  decide +kernel

theorem check_11096 : cell_11096.check = true := by
  decide +kernel

theorem check_11097 : cell_11097.check = true := by
  decide +kernel

theorem check_11098 : cell_11098.check = true := by
  decide +kernel

theorem check_11099 : cell_11099.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11050, cell_11051, cell_11052, cell_11053, cell_11054, cell_11055, cell_11056, cell_11057, cell_11058, cell_11059, cell_11060, cell_11061, cell_11062, cell_11063, cell_11064, cell_11065, cell_11066, cell_11067, cell_11068, cell_11069, cell_11070, cell_11071, cell_11072, cell_11073, cell_11074, cell_11075, cell_11076, cell_11077, cell_11078, cell_11079, cell_11080, cell_11081, cell_11082, cell_11083, cell_11084, cell_11085, cell_11086, cell_11087, cell_11088, cell_11089, cell_11090, cell_11091, cell_11092, cell_11093, cell_11094, cell_11095, cell_11096, cell_11097, cell_11098, cell_11099]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11050, check_11051, check_11052, check_11053, check_11054, check_11055, check_11056, check_11057, check_11058, check_11059, check_11060, check_11061, check_11062, check_11063, check_11064, check_11065, check_11066, check_11067, check_11068, check_11069, check_11070, check_11071, check_11072, check_11073, check_11074, check_11075, check_11076, check_11077, check_11078, check_11079, check_11080, check_11081, check_11082, check_11083, check_11084, check_11085, check_11086, check_11087, check_11088, check_11089, check_11090, check_11091, check_11092, check_11093, check_11094, check_11095, check_11096, check_11097, check_11098, check_11099, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0221

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0221
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0221
open AnalyticBounds.ExpressionCertificate

theorem linked_11050 : Linked cell_11050 pieces := by
  refine ⟨piece_1309,piece_1309_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11050,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_918_mem

theorem linked_11051 : Linked cell_11051 pieces := by
  refine ⟨piece_1310,piece_1310_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11051,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_918_mem
    · exact piece_919_mem

theorem linked_11052 : Linked cell_11052 pieces := by
  refine ⟨piece_1310,piece_1310_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11052,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_918_mem

theorem linked_11053 : Linked cell_11053 pieces := by
  refine ⟨piece_1310,piece_1310_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11053,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_918_mem

theorem linked_11054 : Linked cell_11054 pieces := by
  refine ⟨piece_1310,piece_1310_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11054,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_917_mem
    · exact piece_918_mem

theorem linked_11055 : Linked cell_11055 pieces := by
  refine ⟨piece_1311,piece_1311_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11055,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_918_mem

theorem linked_11056 : Linked cell_11056 pieces := by
  refine ⟨piece_1311,piece_1311_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11056,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_917_mem
    · exact piece_918_mem

theorem linked_11057 : Linked cell_11057 pieces := by
  refine ⟨piece_1311,piece_1311_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11057,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_917_mem

theorem linked_11058 : Linked cell_11058 pieces := by
  refine ⟨piece_1311,piece_1311_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11058,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_916_mem
    · exact piece_917_mem

theorem linked_11059 : Linked cell_11059 pieces := by
  refine ⟨piece_1312,piece_1312_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11059,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_917_mem

theorem linked_11060 : Linked cell_11060 pieces := by
  refine ⟨piece_1312,piece_1312_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11060,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_916_mem
    · exact piece_917_mem

theorem linked_11061 : Linked cell_11061 pieces := by
  refine ⟨piece_1312,piece_1312_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11061,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_915_mem
    · exact piece_916_mem

theorem linked_11062 : Linked cell_11062 pieces := by
  refine ⟨piece_1312,piece_1312_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11062,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_915_mem

theorem linked_11063 : Linked cell_11063 pieces := by
  refine ⟨piece_1313,piece_1313_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11063,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_915_mem
    · exact piece_916_mem
    · exact piece_917_mem

theorem linked_11064 : Linked cell_11064 pieces := by
  refine ⟨piece_1313,piece_1313_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11064,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_915_mem

theorem linked_11065 : Linked cell_11065 pieces := by
  refine ⟨piece_1313,piece_1313_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11065,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_914_mem
    · exact piece_915_mem

theorem linked_11066 : Linked cell_11066 pieces := by
  refine ⟨piece_1313,piece_1313_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11066,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_914_mem

theorem linked_11067 : Linked cell_11067 pieces := by
  refine ⟨piece_1314,piece_1314_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11067,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_915_mem

theorem linked_11068 : Linked cell_11068 pieces := by
  refine ⟨piece_1315,piece_1315_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11068,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_914_mem
    · exact piece_915_mem

theorem linked_11069 : Linked cell_11069 pieces := by
  refine ⟨piece_1315,piece_1315_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11069,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_914_mem

theorem linked_11070 : Linked cell_11070 pieces := by
  refine ⟨piece_1315,piece_1315_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11070,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_914_mem

theorem linked_11071 : Linked cell_11071 pieces := by
  refine ⟨piece_1315,piece_1315_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11071,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_913_mem
    · exact piece_914_mem

theorem linked_11072 : Linked cell_11072 pieces := by
  refine ⟨piece_1316,piece_1316_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11072,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_914_mem

theorem linked_11073 : Linked cell_11073 pieces := by
  refine ⟨piece_1316,piece_1316_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11073,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_913_mem
    · exact piece_914_mem

theorem linked_11074 : Linked cell_11074 pieces := by
  refine ⟨piece_1316,piece_1316_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11074,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_913_mem

theorem linked_11075 : Linked cell_11075 pieces := by
  refine ⟨piece_1316,piece_1316_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11075,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_912_mem
    · exact piece_913_mem

theorem linked_11076 : Linked cell_11076 pieces := by
  refine ⟨piece_1317,piece_1317_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11076,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_913_mem

theorem linked_11077 : Linked cell_11077 pieces := by
  refine ⟨piece_1317,piece_1317_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11077,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_912_mem
    · exact piece_913_mem

theorem linked_11078 : Linked cell_11078 pieces := by
  refine ⟨piece_1317,piece_1317_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11078,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_912_mem

theorem linked_11079 : Linked cell_11079 pieces := by
  refine ⟨piece_1317,piece_1317_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11079,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_912_mem

theorem linked_11080 : Linked cell_11080 pieces := by
  refine ⟨piece_1318,piece_1318_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11080,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_912_mem
    · exact piece_913_mem

theorem linked_11081 : Linked cell_11081 pieces := by
  refine ⟨piece_1318,piece_1318_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11081,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_912_mem

theorem linked_11082 : Linked cell_11082 pieces := by
  refine ⟨piece_1318,piece_1318_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11082,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_911_mem
    · exact piece_912_mem

theorem linked_11083 : Linked cell_11083 pieces := by
  refine ⟨piece_1318,piece_1318_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11083,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_911_mem

theorem linked_11084 : Linked cell_11084 pieces := by
  refine ⟨piece_1319,piece_1319_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11084,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_911_mem
    · exact piece_912_mem

theorem linked_11085 : Linked cell_11085 pieces := by
  refine ⟨piece_1319,piece_1319_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11085,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_911_mem

theorem linked_11086 : Linked cell_11086 pieces := by
  refine ⟨piece_1319,piece_1319_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11086,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_911_mem

theorem linked_11087 : Linked cell_11087 pieces := by
  refine ⟨piece_1319,piece_1319_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11087,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_910_mem
    · exact piece_911_mem

theorem linked_11088 : Linked cell_11088 pieces := by
  refine ⟨piece_1320,piece_1320_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11088,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_911_mem

theorem linked_11089 : Linked cell_11089 pieces := by
  refine ⟨piece_1320,piece_1320_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11089,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_910_mem
    · exact piece_911_mem

theorem linked_11090 : Linked cell_11090 pieces := by
  refine ⟨piece_1320,piece_1320_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11090,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_910_mem

theorem linked_11091 : Linked cell_11091 pieces := by
  refine ⟨piece_1320,piece_1320_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11091,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_909_mem
    · exact piece_910_mem

theorem linked_11092 : Linked cell_11092 pieces := by
  refine ⟨piece_1321,piece_1321_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11092,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_910_mem

theorem linked_11093 : Linked cell_11093 pieces := by
  refine ⟨piece_1321,piece_1321_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11093,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_909_mem
    · exact piece_910_mem

theorem linked_11094 : Linked cell_11094 pieces := by
  refine ⟨piece_1321,piece_1321_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11094,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_909_mem

theorem linked_11095 : Linked cell_11095 pieces := by
  refine ⟨piece_1321,piece_1321_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11095,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_909_mem

theorem linked_11096 : Linked cell_11096 pieces := by
  refine ⟨piece_1322,piece_1322_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11096,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_909_mem
    · exact piece_910_mem

theorem linked_11097 : Linked cell_11097 pieces := by
  refine ⟨piece_1322,piece_1322_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11097,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_909_mem

theorem linked_11098 : Linked cell_11098 pieces := by
  refine ⟨piece_1322,piece_1322_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11098,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_908_mem
    · exact piece_909_mem

theorem linked_11099 : Linked cell_11099 pieces := by
  refine ⟨piece_1322,piece_1322_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11099,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_908_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0221.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0221.cells,List.forall_mem_cons]
  exact ⟨linked_11050, linked_11051, linked_11052, linked_11053, linked_11054, linked_11055, linked_11056, linked_11057, linked_11058, linked_11059, linked_11060, linked_11061, linked_11062, linked_11063, linked_11064, linked_11065, linked_11066, linked_11067, linked_11068, linked_11069, linked_11070, linked_11071, linked_11072, linked_11073, linked_11074, linked_11075, linked_11076, linked_11077, linked_11078, linked_11079, linked_11080, linked_11081, linked_11082, linked_11083, linked_11084, linked_11085, linked_11086, linked_11087, linked_11088, linked_11089, linked_11090, linked_11091, linked_11092, linked_11093, linked_11094, linked_11095, linked_11096, linked_11097, linked_11098, linked_11099, by simp⟩

theorem covered : covers (111075000000000001 / 200000000000000000 : ℚ) (1123 / 2000 : ℚ)
    (SourceCertificates.Chunk0221.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0221
