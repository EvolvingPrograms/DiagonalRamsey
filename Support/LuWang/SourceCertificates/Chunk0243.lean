import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0243
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(138225000000000009 / 200000000000000000 : ℚ), (69125000000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (10225925370237 / 20000000000000 : ℚ)
  w := (13550175754727 / 10000000000000 : ℚ)
  center := (55295000000000003 / 80000000000000000 : ℚ)
  supportValue := (1464270955905327 / 5000000000000000 : ℚ)
  supportSlope := (-9711572914091803 / 10000000000000000 : ℚ)
  oldCenter := (1464270955905327 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1607
  oldLo := (7287500000000001 / 25000000000000000 : ℚ)
  oldHi := (7300000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_734]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_12150 : Cell := { cellDefaults with
  r := (25575986778079 / 50000000000000 : ℚ)
  w := (677583081549 / 500000000000 : ℚ)
  newCoefficients := coefficients_1606
  oldLo := (7312500000000001 / 25000000000000000 : ℚ)
  oldHi := (7325000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_737]
}

noncomputable def cell_12151 : Cell := { cellDefaults with
  domain := ⟨(69125000000000003 / 100000000000000000 : ℚ), (138275000000000003 / 200000000000000000 : ℚ)⟩
  r := (25575986778079 / 50000000000000 : ℚ)
  w := (677583081549 / 500000000000 : ℚ)
  center := (276525000000000009 / 400000000000000000 : ℚ)
  supportValue := (731832160904223 / 2500000000000000 : ℚ)
  supportSlope := (-9700724046793949 / 10000000000000000 : ℚ)
  oldCenter := (731832160904223 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1606
  oldLo := (7312500000000001 / 25000000000000000 : ℚ)
  oldHi := (7325000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_737]
}

noncomputable def cell_12152 : Cell := { cellDefaults with
  domain := ⟨(138275000000000003 / 200000000000000000 : ℚ), (1383 / 2000 : ℚ)⟩
  r := (25575986778079 / 50000000000000 : ℚ)
  w := (677583081549 / 500000000000 : ℚ)
  center := (276575000000000003 / 400000000000000000 : ℚ)
  supportValue := (365764591076971 / 1250000000000000 : ℚ)
  supportSlope := (-387596870398401 / 400000000000000 : ℚ)
  oldCenter := (365764591076971 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1606
  oldLo := (7312500000000001 / 25000000000000000 : ℚ)
  oldHi := (7325000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_737]
}

noncomputable def cell_12153 : Cell := { cellDefaults with
  domain := ⟨(1383 / 2000 : ℚ), (138325000000000003 / 200000000000000000 : ℚ)⟩
  center := (276625000000000003 / 400000000000000000 : ℚ)
  supportValue := (7318219650631451 / 25000000000000000 : ℚ)
  supportSlope := (-303008055041151 / 312500000000000 : ℚ)
  oldCenter := (7318219650631451 / 25000000000000000 : ℚ)
  oldLo := (7312500000000001 / 25000000000000000 : ℚ)
  oldHi := (7325000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_737]
}

noncomputable def cell_12154 : Cell := { cellDefaults with
  domain := ⟨(138325000000000003 / 200000000000000000 : ℚ), (69175000000000003 / 100000000000000000 : ℚ)⟩
  center := (276675000000000009 / 400000000000000000 : ℚ)
  supportValue := (1463038251432013 / 5000000000000000 : ℚ)
  supportSlope := (-9685466229613031 / 10000000000000000 : ℚ)
  oldCenter := (1463038251432013 / 5000000000000000 : ℚ)
  oldLo := (7312500000000001 / 25000000000000000 : ℚ)
  oldHi := (7325000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_737]
}

noncomputable def cell_12155 : Cell := { cellDefaults with
  domain := ⟨(69175000000000003 / 100000000000000000 : ℚ), (138375000000000009 / 200000000000000000 : ℚ)⟩
  center := (55345000000000003 / 80000000000000000 : ℚ)
  supportValue := (2924868294553231 / 10000000000000000 : ℚ)
  supportSlope := (-2421361855422231 / 2500000000000000 : ℚ)
  oldCenter := (2924868294553231 / 10000000000000000 : ℚ)
  oldLo := (29206703910614523 / 100000000000000000 : ℚ)
  oldHi := (7325000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_736, piece_737]
}

noncomputable def cell_12156 : Cell := { cellDefaults with
  domain := ⟨(138375000000000009 / 200000000000000000 : ℚ), (34600000000000003 / 50000000000000000 : ℚ)⟩
  center := (276775000000000021 / 400000000000000000 : ℚ)
  supportValue := (5847310776917909 / 20000000000000000 : ℚ)
  supportSlope := (-9681439022201037 / 10000000000000000 : ℚ)
  oldCenter := (5847310776917909 / 20000000000000000 : ℚ)
  oldLo := (29206703910614523 / 100000000000000000 : ℚ)
  oldHi := (7312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_736]
}

noncomputable def cell_12157 : Cell := { cellDefaults with
  domain := ⟨(34600000000000003 / 50000000000000000 : ℚ), (138425000000000009 / 200000000000000000 : ℚ)⟩
  r := (6388412467803 / 12500000000000 : ℚ)
  w := (2709737453283 / 2000000000000 : ℚ)
  center := (276825000000000021 / 400000000000000000 : ℚ)
  supportValue := (7312072200774171 / 25000000000000000 : ℚ)
  supportSlope := (-9681574131966737 / 10000000000000000 : ℚ)
  oldCenter := (7312072200774171 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1608
  oldLo := (29206703910614523 / 100000000000000000 : ℚ)
  oldHi := (7325000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_736, piece_737]
}

noncomputable def cell_12158 : Cell := { cellDefaults with
  domain := ⟨(138425000000000009 / 200000000000000000 : ℚ), (69225000000000003 / 100000000000000000 : ℚ)⟩
  r := (6388412467803 / 12500000000000 : ℚ)
  w := (2709737453283 / 2000000000000 : ℚ)
  center := (55375000000000003 / 80000000000000000 : ℚ)
  supportValue := (91363016563729 / 312500000000000 : ℚ)
  supportSlope := (-4838499015532041 / 5000000000000000 : ℚ)
  oldCenter := (91363016563729 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1608
  oldLo := (29206703910614523 / 100000000000000000 : ℚ)
  oldHi := (7312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_736]
}

noncomputable def cell_12159 : Cell := { cellDefaults with
  domain := ⟨(69225000000000003 / 100000000000000000 : ℚ), (138475000000000003 / 200000000000000000 : ℚ)⟩
  r := (6388412467803 / 12500000000000 : ℚ)
  w := (2709737453283 / 2000000000000 : ℚ)
  center := (276925000000000009 / 400000000000000000 : ℚ)
  supportValue := (1461203790618333 / 5000000000000000 : ℚ)
  supportSlope := (-9666188659408541 / 10000000000000000 : ℚ)
  oldCenter := (1461203790618333 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1608
  oldLo := (29206703910614523 / 100000000000000000 : ℚ)
  oldHi := (7312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_736]
}

noncomputable def cell_12160 : Cell := { cellDefaults with
  domain := ⟨(138475000000000003 / 200000000000000000 : ℚ), (277 / 400 : ℚ)⟩
  r := (6388412467803 / 12500000000000 : ℚ)
  w := (2709737453283 / 2000000000000 : ℚ)
  center := (276975000000000003 / 400000000000000000 : ℚ)
  supportValue := (2921199980698057 / 10000000000000000 : ℚ)
  supportSlope := (-4827712713222933 / 5000000000000000 : ℚ)
  oldCenter := (2921199980698057 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1608
  oldLo := (7300000000000001 / 25000000000000000 : ℚ)
  oldHi := (7312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_735, piece_736]
}

noncomputable def cell_12161 : Cell := { cellDefaults with
  domain := ⟨(277 / 400 : ℚ), (138525000000000003 / 200000000000000000 : ℚ)⟩
  r := (12771250548993 / 25000000000000 : ℚ)
  w := (13547217105223 / 10000000000000 : ℚ)
  center := (277025000000000003 / 400000000000000000 : ℚ)
  supportValue := (584472979935141 / 2000000000000000 : ℚ)
  supportSlope := (-193234553253573 / 200000000000000 : ℚ)
  oldCenter := (584472979935141 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1609
  oldLo := (29206703910614523 / 100000000000000000 : ℚ)
  oldHi := (7312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_736]
}

noncomputable def cell_12162 : Cell := { cellDefaults with
  domain := ⟨(138525000000000003 / 200000000000000000 : ℚ), (69275000000000003 / 100000000000000000 : ℚ)⟩
  r := (12771250548993 / 25000000000000 : ℚ)
  w := (13547217105223 / 10000000000000 : ℚ)
  center := (277075000000000009 / 400000000000000000 : ℚ)
  supportValue := (730289464021791 / 2500000000000000 : ℚ)
  supportSlope := (-4825487516919001 / 5000000000000000 : ℚ)
  oldCenter := (730289464021791 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1609
  oldLo := (7300000000000001 / 25000000000000000 : ℚ)
  oldHi := (7312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_735, piece_736]
}

noncomputable def cell_12163 : Cell := { cellDefaults with
  domain := ⟨(69275000000000003 / 100000000000000000 : ℚ), (138575000000000009 / 200000000000000000 : ℚ)⟩
  r := (12771250548993 / 25000000000000 : ℚ)
  w := (13547217105223 / 10000000000000 : ℚ)
  center := (55425000000000003 / 80000000000000000 : ℚ)
  supportValue := (5839908218195039 / 20000000000000000 : ℚ)
  supportSlope := (-9649746023264691 / 10000000000000000 : ℚ)
  oldCenter := (5839908218195039 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1609
  oldHi := (29206703910614523 / 100000000000000000 : ℚ)
  oldPieces := [piece_734, piece_735]
}

noncomputable def cell_12164 : Cell := { cellDefaults with
  domain := ⟨(138575000000000009 / 200000000000000000 : ℚ), (34650000000000003 / 50000000000000000 : ℚ)⟩
  r := (12771250548993 / 25000000000000 : ℚ)
  w := (13547217105223 / 10000000000000 : ℚ)
  center := (277175000000000021 / 400000000000000000 : ℚ)
  supportValue := (2918745511251307 / 10000000000000000 : ℚ)
  supportSlope := (-2411755154571859 / 2500000000000000 : ℚ)
  oldCenter := (2918745511251307 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1609
  oldPieces := [piece_734]
}

noncomputable def cell_12165 : Cell := { cellDefaults with
  domain := ⟨(34650000000000003 / 50000000000000000 : ℚ), (277250000000000019 / 400000000000000000 : ℚ)⟩
  r := (5106272502291 / 10000000000000 : ℚ)
  w := (13545746564083 / 10000000000000 : ℚ)
  center := (554450000000000043 / 800000000000000000 : ℚ)
  supportValue := (2919912310835847 / 10000000000000000 : ℚ)
  supportSlope := (-2411477714954443 / 2500000000000000 : ℚ)
  oldCenter := (2919912310835847 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1610
  oldHi := (29206703910614523 / 100000000000000000 : ℚ)
  oldPieces := [piece_734, piece_735]
}

noncomputable def cell_12166 : Cell := { cellDefaults with
  domain := ⟨(277250000000000019 / 400000000000000000 : ℚ), (138650000000000007 / 200000000000000000 : ℚ)⟩
  r := (5106272502291 / 10000000000000 : ℚ)
  w := (13545746564083 / 10000000000000 : ℚ)
  center := (554550000000000033 / 800000000000000000 : ℚ)
  supportValue := (1824190167906619 / 6250000000000000 : ℚ)
  supportSlope := (-96425809717103 / 100000000000000 : ℚ)
  oldCenter := (1824190167906619 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1610
  oldPieces := [piece_734]
}

noncomputable def cell_12167 : Cell := { cellDefaults with
  domain := ⟨(138650000000000007 / 200000000000000000 : ℚ), (277350000000000009 / 400000000000000000 : ℚ)⟩
  r := (5106272502291 / 10000000000000 : ℚ)
  w := (13545746564083 / 10000000000000 : ℚ)
  center := (554650000000000023 / 800000000000000000 : ℚ)
  supportValue := (5834999238952493 / 20000000000000000 : ℚ)
  supportSlope := (-9631811651385899 / 10000000000000000 : ℚ)
  oldCenter := (5834999238952493 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1610
  oldPieces := [piece_734]
}

noncomputable def cell_12168 : Cell := { cellDefaults with
  domain := ⟨(277350000000000009 / 400000000000000000 : ℚ), (69350000000000001 / 100000000000000000 : ℚ)⟩
  r := (5106272502291 / 10000000000000 : ℚ)
  w := (13545746564083 / 10000000000000 : ℚ)
  center := (554750000000000013 / 800000000000000000 : ℚ)
  supportValue := (583259262713653 / 2000000000000000 : ℚ)
  supportSlope := (-962108863824181 / 1000000000000000 : ℚ)
  oldCenter := (583259262713653 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1610
  oldPieces := [piece_734]
}

noncomputable def cell_12169 : Cell := { cellDefaults with
  domain := ⟨(69350000000000001 / 100000000000000000 : ℚ), (277450000000000009 / 400000000000000000 : ℚ)⟩
  r := (255202387273 / 500000000000 : ℚ)
  w := (13544291868681 / 10000000000000 : ℚ)
  center := (554850000000000013 / 800000000000000000 : ℚ)
  supportValue := (2917454997440527 / 10000000000000000 : ℚ)
  supportSlope := (-9627355526288387 / 10000000000000000 : ℚ)
  oldCenter := (2917454997440527 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1611
  oldPieces := [piece_734]
}

noncomputable def cell_12170 : Cell := { cellDefaults with
  domain := ⟨(277450000000000009 / 400000000000000000 : ℚ), (138750000000000007 / 200000000000000000 : ℚ)⟩
  r := (255202387273 / 500000000000 : ℚ)
  w := (13544291868681 / 10000000000000 : ℚ)
  center := (554950000000000023 / 800000000000000000 : ℚ)
  supportValue := (2916252247867629 / 10000000000000000 : ℚ)
  supportSlope := (-300520105848937 / 312500000000000 : ℚ)
  oldCenter := (2916252247867629 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1611
  oldPieces := [piece_734]
}

noncomputable def cell_12171 : Cell := { cellDefaults with
  domain := ⟨(138750000000000007 / 200000000000000000 : ℚ), (277550000000000019 / 400000000000000000 : ℚ)⟩
  r := (255202387273 / 500000000000 : ℚ)
  w := (13544291868681 / 10000000000000 : ℚ)
  center := (555050000000000033 / 800000000000000000 : ℚ)
  supportValue := (2915052874972253 / 10000000000000000 : ℚ)
  supportSlope := (-9614013724420649 / 10000000000000000 : ℚ)
  oldCenter := (2915052874972253 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1611
  oldLo := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_733, piece_734]
}

noncomputable def cell_12172 : Cell := { cellDefaults with
  domain := ⟨(277550000000000019 / 400000000000000000 : ℚ), (34700000000000003 / 50000000000000000 : ℚ)⟩
  r := (255202387273 / 500000000000 : ℚ)
  w := (13544291868681 / 10000000000000 : ℚ)
  center := (555150000000000043 / 800000000000000000 : ℚ)
  supportValue := (1165539462398709 / 4000000000000000 : ℚ)
  supportSlope := (-9612769683932247 / 10000000000000000 : ℚ)
  oldCenter := (1165539462398709 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1611
  oldLo := (7275000000000001 / 25000000000000000 : ℚ)
  oldHi := (7287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_733]
}

noncomputable def cell_12173 : Cell := { cellDefaults with
  domain := ⟨(34700000000000003 / 50000000000000000 : ℚ), (277650000000000019 / 400000000000000000 : ℚ)⟩
  r := (25509125737799 / 50000000000000 : ℚ)
  w := (6771419778081 / 5000000000000 : ℚ)
  center := (555250000000000043 / 800000000000000000 : ℚ)
  supportValue := (29150085969974143 / 100000000000000000 : ℚ)
  supportSlope := (-4805108980257469 / 5000000000000000 : ℚ)
  oldCenter := (29150085969974143 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1612
  oldLo := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_733, piece_734]
}

noncomputable def cell_12174 : Cell := { cellDefaults with
  domain := ⟨(277650000000000019 / 400000000000000000 : ℚ), (138850000000000007 / 200000000000000000 : ℚ)⟩
  r := (25509125737799 / 50000000000000 : ℚ)
  w := (6771419778081 / 5000000000000 : ℚ)
  center := (555350000000000033 / 800000000000000000 : ℚ)
  supportValue := (1821128032928861 / 6250000000000000 : ℚ)
  supportSlope := (-960833000797397 / 1000000000000000 : ℚ)
  oldCenter := (1821128032928861 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1612
  oldLo := (7275000000000001 / 25000000000000000 : ℚ)
  oldHi := (7287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_733]
}

noncomputable def cell_12175 : Cell := { cellDefaults with
  domain := ⟨(138850000000000007 / 200000000000000000 : ℚ), (277750000000000009 / 400000000000000000 : ℚ)⟩
  r := (25509125737799 / 50000000000000 : ℚ)
  w := (6771419778081 / 5000000000000 : ℚ)
  center := (555450000000000023 / 800000000000000000 : ℚ)
  supportValue := (29126044822122127 / 100000000000000000 : ℚ)
  supportSlope := (-959760338898537 / 1000000000000000 : ℚ)
  oldCenter := (29126044822122127 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1612
  oldLo := (7275000000000001 / 25000000000000000 : ℚ)
  oldHi := (7287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_733]
}

noncomputable def cell_12176 : Cell := { cellDefaults with
  domain := ⟨(277750000000000009 / 400000000000000000 : ℚ), (69450000000000001 / 100000000000000000 : ℚ)⟩
  r := (25509125737799 / 50000000000000 : ℚ)
  w := (6771419778081 / 5000000000000 : ℚ)
  center := (555550000000000013 / 800000000000000000 : ℚ)
  supportValue := (727851362419269 / 2500000000000000 : ℚ)
  supportSlope := (-119836536440999 / 125000000000000 : ℚ)
  oldCenter := (727851362419269 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1612
  oldLo := (7275000000000001 / 25000000000000000 : ℚ)
  oldHi := (7287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_733]
}

noncomputable def cell_12177 : Cell := { cellDefaults with
  domain := ⟨(69450000000000001 / 100000000000000000 : ℚ), (277850000000000009 / 400000000000000000 : ℚ)⟩
  r := (12749013321537 / 25000000000000 : ℚ)
  w := (3385350150989 / 2500000000000 : ℚ)
  center := (555650000000000013 / 800000000000000000 : ℚ)
  supportValue := (29125579171802063 / 100000000000000000 : ℚ)
  supportSlope := (-9593152127313083 / 10000000000000000 : ℚ)
  oldCenter := (29125579171802063 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1613
  oldLo := (7275000000000001 / 25000000000000000 : ℚ)
  oldHi := (7287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_733]
}

noncomputable def cell_12178 : Cell := { cellDefaults with
  domain := ⟨(277850000000000009 / 400000000000000000 : ℚ), (138950000000000007 / 200000000000000000 : ℚ)⟩
  r := (12749013321537 / 25000000000000 : ℚ)
  w := (3385350150989 / 2500000000000 : ℚ)
  center := (555750000000000023 / 800000000000000000 : ℚ)
  supportValue := (1455679720187847 / 5000000000000000 : ℚ)
  supportSlope := (-958248247213593 / 1000000000000000 : ℚ)
  oldCenter := (1455679720187847 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1613
  oldLo := (7275000000000001 / 25000000000000000 : ℚ)
  oldHi := (7287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_733]
}

noncomputable def cell_12179 : Cell := { cellDefaults with
  domain := ⟨(138950000000000007 / 200000000000000000 : ℚ), (277950000000000019 / 400000000000000000 : ℚ)⟩
  r := (12749013321537 / 25000000000000 : ℚ)
  w := (3385350150989 / 2500000000000 : ℚ)
  center := (555850000000000033 / 800000000000000000 : ℚ)
  supportValue := (2910164331526303 / 10000000000000000 : ℚ)
  supportSlope := (-383130069263477 / 400000000000000 : ℚ)
  oldCenter := (2910164331526303 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1613
  oldLo := (7262500000000001 / 25000000000000000 : ℚ)
  oldHi := (7287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_732, piece_733]
}

noncomputable def cell_12180 : Cell := { cellDefaults with
  domain := ⟨(277950000000000019 / 400000000000000000 : ℚ), (34750000000000003 / 50000000000000000 : ℚ)⟩
  r := (12749013321537 / 25000000000000 : ℚ)
  w := (3385350150989 / 2500000000000 : ℚ)
  center := (555950000000000043 / 800000000000000000 : ℚ)
  supportValue := (2908964584300017 / 10000000000000000 : ℚ)
  supportSlope := (-1915736501689999 / 2000000000000000 : ℚ)
  oldCenter := (2908964584300017 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1613
  oldLo := (7262500000000001 / 25000000000000000 : ℚ)
  oldHi := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_732]
}

noncomputable def cell_12181 : Cell := { cellDefaults with
  domain := ⟨(34750000000000003 / 50000000000000000 : ℚ), (278050000000000019 / 400000000000000000 : ℚ)⟩
  r := (50973878196577 / 100000000000000 : ℚ)
  w := (270799316473 / 200000000000 : ℚ)
  center := (556050000000000043 / 800000000000000000 : ℚ)
  supportValue := (14550588219305677 / 50000000000000000 : ℚ)
  supportSlope := (-4787247192883849 / 5000000000000000 : ℚ)
  oldCenter := (14550588219305677 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1614
  oldLo := (7262500000000001 / 25000000000000000 : ℚ)
  oldHi := (7287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_732, piece_733]
}

noncomputable def cell_12182 : Cell := { cellDefaults with
  domain := ⟨(278050000000000019 / 400000000000000000 : ℚ), (139050000000000007 / 200000000000000000 : ℚ)⟩
  r := (50973878196577 / 100000000000000 : ℚ)
  w := (270799316473 / 200000000000 : ℚ)
  center := (556150000000000033 / 800000000000000000 : ℚ)
  supportValue := (29089183665111357 / 100000000000000000 : ℚ)
  supportSlope := (-1914848797533089 / 2000000000000000 : ℚ)
  oldCenter := (29089183665111357 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1614
  oldLo := (7262500000000001 / 25000000000000000 : ℚ)
  oldHi := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_732]
}

noncomputable def cell_12183 : Cell := { cellDefaults with
  domain := ⟨(139050000000000007 / 200000000000000000 : ℚ), (278150000000000009 / 400000000000000000 : ℚ)⟩
  r := (50973878196577 / 100000000000000 : ℚ)
  w := (270799316473 / 200000000000 : ℚ)
  center := (556250000000000023 / 800000000000000000 : ℚ)
  supportValue := (363465281748889 / 1250000000000000 : ℚ)
  supportSlope := (-9563562121385051 / 10000000000000000 : ℚ)
  oldCenter := (363465281748889 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1614
  oldLo := (7262500000000001 / 25000000000000000 : ℚ)
  oldHi := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_732]
}

noncomputable def cell_12184 : Cell := { cellDefaults with
  domain := ⟨(278150000000000009 / 400000000000000000 : ℚ), (69550000000000001 / 100000000000000000 : ℚ)⟩
  r := (50973878196577 / 100000000000000 : ℚ)
  w := (270799316473 / 200000000000 : ℚ)
  center := (556350000000000013 / 800000000000000000 : ℚ)
  supportValue := (2906527473827127 / 10000000000000000 : ℚ)
  supportSlope := (-2388231554993031 / 2500000000000000 : ℚ)
  oldCenter := (2906527473827127 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1614
  oldLo := (7262500000000001 / 25000000000000000 : ℚ)
  oldHi := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_732]
}

noncomputable def cell_12185 : Cell := { cellDefaults with
  domain := ⟨(69550000000000001 / 100000000000000000 : ℚ), (139131005586592171 / 200000000000000000 : ℚ)⟩
  r := (50951729089303 / 100000000000000 : ℚ)
  w := (13538542578837 / 10000000000000 : ℚ)
  center := (278231005586592173 / 400000000000000000 : ℚ)
  supportValue := (581506459140553 / 2000000000000000 : ℚ)
  supportSlope := (-9557838296016437 / 10000000000000000 : ℚ)
  oldCenter := (581506459140553 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1615
  oldLo := (7262500000000001 / 25000000000000000 : ℚ)
  oldHi := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_732]
}

noncomputable def cell_12186 : Cell := { cellDefaults with
  domain := ⟨(139131005586592171 / 200000000000000000 : ℚ), (6958100558659217 / 10000000000000000 : ℚ)⟩
  r := (50951729089303 / 100000000000000 : ℚ)
  w := (13538542578837 / 10000000000000 : ℚ)
  center := (278293016759776511 / 400000000000000000 : ℚ)
  supportValue := (726512896012801 / 2500000000000000 : ℚ)
  supportSlope := (-9544674441433789 / 10000000000000000 : ℚ)
  oldCenter := (726512896012801 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1615
  oldLo := (7262500000000001 / 25000000000000000 : ℚ)
  oldHi := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_732]
}

noncomputable def cell_12187 : Cell := { cellDefaults with
  domain := ⟨(6958100558659217 / 10000000000000000 : ℚ), (8698812849162011 / 12500000000000000 : ℚ)⟩
  r := (50951729089303 / 100000000000000 : ℚ)
  w := (13538542578837 / 10000000000000 : ℚ)
  center := (69585754189944129 / 100000000000000000 : ℚ)
  supportValue := (2904858895823527 / 10000000000000000 : ℚ)
  supportSlope := (-190912292519893 / 200000000000000 : ℚ)
  oldCenter := (2904858895823527 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1616
  oldLo := (7250000000000001 / 25000000000000000 : ℚ)
  oldHi := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_731, piece_732]
}

noncomputable def cell_12188 : Cell := { cellDefaults with
  domain := ⟨(8698812849162011 / 12500000000000000 : ℚ), (34800000000000003 / 50000000000000000 : ℚ)⟩
  r := (50951729089303 / 100000000000000 : ℚ)
  w := (13538542578837 / 10000000000000 : ℚ)
  center := (69595251396648047 / 100000000000000000 : ℚ)
  supportValue := (2903950113077269 / 10000000000000000 : ℚ)
  supportSlope := (-1908696030665521 / 2000000000000000 : ℚ)
  oldCenter := (2903950113077269 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1616
  oldLo := (7250000000000001 / 25000000000000000 : ℚ)
  oldHi := (7262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_731]
}

noncomputable def cell_12189 : Cell := { cellDefaults with
  domain := ⟨(34800000000000003 / 50000000000000000 : ℚ), (278450000000000019 / 400000000000000000 : ℚ)⟩
  r := (12732401061537 / 25000000000000 : ℚ)
  w := (676856324681 / 500000000000 : ℚ)
  center := (556850000000000043 / 800000000000000000 : ℚ)
  supportValue := (29052394291087497 / 100000000000000000 : ℚ)
  supportSlope := (-2384686000320951 / 2500000000000000 : ℚ)
  oldCenter := (29052394291087497 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1617
  oldLo := (7250000000000001 / 25000000000000000 : ℚ)
  oldHi := (7275000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_731, piece_732]
}

noncomputable def cell_12190 : Cell := { cellDefaults with
  domain := ⟨(278450000000000019 / 400000000000000000 : ℚ), (139250000000000007 / 200000000000000000 : ℚ)⟩
  r := (12732401061537 / 25000000000000 : ℚ)
  w := (676856324681 / 500000000000 : ℚ)
  center := (556950000000000033 / 800000000000000000 : ℚ)
  supportValue := (2904044622353847 / 10000000000000000 : ℚ)
  supportSlope := (-4770161710437237 / 5000000000000000 : ℚ)
  oldCenter := (2904044622353847 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1617
  oldLo := (7250000000000001 / 25000000000000000 : ℚ)
  oldHi := (7262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_731]
}

noncomputable def cell_12191 : Cell := { cellDefaults with
  domain := ⟨(139250000000000007 / 200000000000000000 : ℚ), (278550000000000009 / 400000000000000000 : ℚ)⟩
  r := (12732401061537 / 25000000000000 : ℚ)
  w := (676856324681 / 500000000000 : ℚ)
  center := (557050000000000023 / 800000000000000000 : ℚ)
  supportValue := (29028527469767923 / 100000000000000000 : ℚ)
  supportSlope := (-1191211046400861 / 1250000000000000 : ℚ)
  oldCenter := (29028527469767923 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1617
  oldLo := (7250000000000001 / 25000000000000000 : ℚ)
  oldHi := (7262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_731]
}

noncomputable def cell_12192 : Cell := { cellDefaults with
  domain := ⟨(278550000000000009 / 400000000000000000 : ℚ), (69650000000000001 / 100000000000000000 : ℚ)⟩
  r := (12732401061537 / 25000000000000 : ℚ)
  w := (676856324681 / 500000000000 : ℚ)
  center := (557150000000000013 / 800000000000000000 : ℚ)
  supportValue := (3627077747645157 / 12500000000000000 : ℚ)
  supportSlope := (-4759549543931683 / 5000000000000000 : ℚ)
  oldCenter := (3627077747645157 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1617
  oldLo := (7250000000000001 / 25000000000000000 : ℚ)
  oldHi := (7262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_731]
}

noncomputable def cell_12193 : Cell := { cellDefaults with
  domain := ⟨(69650000000000001 / 100000000000000000 : ℚ), (278650000000000009 / 400000000000000000 : ℚ)⟩
  r := (50907504932161 / 100000000000000 : ℚ)
  w := (6767859873653 / 5000000000000 : ℚ)
  center := (557250000000000013 / 800000000000000000 : ℚ)
  supportValue := (2902802129457043 / 10000000000000000 : ℚ)
  supportSlope := (-4762622730764633 / 5000000000000000 : ℚ)
  oldCenter := (2902802129457043 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1618
  oldLo := (7250000000000001 / 25000000000000000 : ℚ)
  oldHi := (7262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_731]
}

noncomputable def cell_12194 : Cell := { cellDefaults with
  domain := ⟨(278650000000000009 / 400000000000000000 : ℚ), (139350000000000007 / 200000000000000000 : ℚ)⟩
  r := (50907504932161 / 100000000000000 : ℚ)
  w := (6767859873653 / 5000000000000 : ℚ)
  center := (557350000000000023 / 800000000000000000 : ℚ)
  supportValue := (29016121352803653 / 100000000000000000 : ℚ)
  supportSlope := (-4757333519375763 / 5000000000000000 : ℚ)
  oldCenter := (29016121352803653 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1618
  oldLo := (7250000000000001 / 25000000000000000 : ℚ)
  oldHi := (7262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_731]
}

noncomputable def cell_12195 : Cell := { cellDefaults with
  domain := ⟨(139350000000000007 / 200000000000000000 : ℚ), (278750000000000019 / 400000000000000000 : ℚ)⟩
  r := (50907504932161 / 100000000000000 : ℚ)
  w := (6767859873653 / 5000000000000 : ℚ)
  center := (557450000000000033 / 800000000000000000 : ℚ)
  supportValue := (2900425490861163 / 10000000000000000 : ℚ)
  supportSlope := (-9506650605945071 / 10000000000000000 : ℚ)
  oldCenter := (2900425490861163 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1618
  oldLo := (7237500000000001 / 25000000000000000 : ℚ)
  oldHi := (7262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_730, piece_731]
}

noncomputable def cell_12196 : Cell := { cellDefaults with
  domain := ⟨(278750000000000019 / 400000000000000000 : ℚ), (34850000000000003 / 50000000000000000 : ℚ)⟩
  r := (50907504932161 / 100000000000000 : ℚ)
  w := (6767859873653 / 5000000000000 : ℚ)
  center := (557550000000000043 / 800000000000000000 : ℚ)
  supportValue := (724808674396559 / 2500000000000000 : ℚ)
  supportSlope := (-9511007358237337 / 10000000000000000 : ℚ)
  oldCenter := (724808674396559 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1618
  oldLo := (7237500000000001 / 25000000000000000 : ℚ)
  oldHi := (7250000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_730]
}

noncomputable def cell_12197 : Cell := { cellDefaults with
  domain := ⟨(34850000000000003 / 50000000000000000 : ℚ), (278850000000000019 / 400000000000000000 : ℚ)⟩
  r := (12721357641411 / 25000000000000 : ℚ)
  w := (13534320858509 / 10000000000000 : ℚ)
  center := (557650000000000043 / 800000000000000000 : ℚ)
  supportValue := (45318342418019 / 156250000000000 : ℚ)
  supportSlope := (-9502970171039021 / 10000000000000000 : ℚ)
  oldCenter := (45318342418019 / 156250000000000 : ℚ)
  newCoefficients := coefficients_1619
  oldLo := (7237500000000001 / 25000000000000000 : ℚ)
  oldHi := (7262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_730, piece_731]
}

noncomputable def cell_12198 : Cell := { cellDefaults with
  domain := ⟨(278850000000000019 / 400000000000000000 : ℚ), (139450000000000007 / 200000000000000000 : ℚ)⟩
  r := (12721357641411 / 25000000000000 : ℚ)
  w := (13534320858509 / 10000000000000 : ℚ)
  center := (557750000000000033 / 800000000000000000 : ℚ)
  supportValue := (579836716353177 / 2000000000000000 : ℚ)
  supportSlope := (-9506570500033957 / 10000000000000000 : ℚ)
  oldCenter := (579836716353177 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1619
  oldLo := (7237500000000001 / 25000000000000000 : ℚ)
  oldHi := (7250000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_730]
}

noncomputable def cell_12199 : Cell := { cellDefaults with
  domain := ⟨(139450000000000007 / 200000000000000000 : ℚ), (278950000000000009 / 400000000000000000 : ℚ)⟩
  r := (12721357641411 / 25000000000000 : ℚ)
  w := (13534320858509 / 10000000000000 : ℚ)
  center := (557850000000000023 / 800000000000000000 : ℚ)
  supportValue := (14489979612248813 / 50000000000000000 : ℚ)
  supportSlope := (-2373996070799371 / 2500000000000000 : ℚ)
  oldCenter := (14489979612248813 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1619
  oldLo := (7237500000000001 / 25000000000000000 : ℚ)
  oldHi := (7250000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_730]
}

theorem check_12150 : cell_12150.check = true := by
  decide +kernel

theorem check_12151 : cell_12151.check = true := by
  decide +kernel

theorem check_12152 : cell_12152.check = true := by
  decide +kernel

theorem check_12153 : cell_12153.check = true := by
  decide +kernel

theorem check_12154 : cell_12154.check = true := by
  decide +kernel

theorem check_12155 : cell_12155.check = true := by
  decide +kernel

theorem check_12156 : cell_12156.check = true := by
  decide +kernel

theorem check_12157 : cell_12157.check = true := by
  decide +kernel

theorem check_12158 : cell_12158.check = true := by
  decide +kernel

theorem check_12159 : cell_12159.check = true := by
  decide +kernel

theorem check_12160 : cell_12160.check = true := by
  decide +kernel

theorem check_12161 : cell_12161.check = true := by
  decide +kernel

theorem check_12162 : cell_12162.check = true := by
  decide +kernel

theorem check_12163 : cell_12163.check = true := by
  decide +kernel

theorem check_12164 : cell_12164.check = true := by
  decide +kernel

theorem check_12165 : cell_12165.check = true := by
  decide +kernel

theorem check_12166 : cell_12166.check = true := by
  decide +kernel

theorem check_12167 : cell_12167.check = true := by
  decide +kernel

theorem check_12168 : cell_12168.check = true := by
  decide +kernel

theorem check_12169 : cell_12169.check = true := by
  decide +kernel

theorem check_12170 : cell_12170.check = true := by
  decide +kernel

theorem check_12171 : cell_12171.check = true := by
  decide +kernel

theorem check_12172 : cell_12172.check = true := by
  decide +kernel

theorem check_12173 : cell_12173.check = true := by
  decide +kernel

theorem check_12174 : cell_12174.check = true := by
  decide +kernel

theorem check_12175 : cell_12175.check = true := by
  decide +kernel

theorem check_12176 : cell_12176.check = true := by
  decide +kernel

theorem check_12177 : cell_12177.check = true := by
  decide +kernel

theorem check_12178 : cell_12178.check = true := by
  decide +kernel

theorem check_12179 : cell_12179.check = true := by
  decide +kernel

theorem check_12180 : cell_12180.check = true := by
  decide +kernel

theorem check_12181 : cell_12181.check = true := by
  decide +kernel

theorem check_12182 : cell_12182.check = true := by
  decide +kernel

theorem check_12183 : cell_12183.check = true := by
  decide +kernel

theorem check_12184 : cell_12184.check = true := by
  decide +kernel

theorem check_12185 : cell_12185.check = true := by
  decide +kernel

theorem check_12186 : cell_12186.check = true := by
  decide +kernel

theorem check_12187 : cell_12187.check = true := by
  decide +kernel

theorem check_12188 : cell_12188.check = true := by
  decide +kernel

theorem check_12189 : cell_12189.check = true := by
  decide +kernel

theorem check_12190 : cell_12190.check = true := by
  decide +kernel

theorem check_12191 : cell_12191.check = true := by
  decide +kernel

theorem check_12192 : cell_12192.check = true := by
  decide +kernel

theorem check_12193 : cell_12193.check = true := by
  decide +kernel

theorem check_12194 : cell_12194.check = true := by
  decide +kernel

theorem check_12195 : cell_12195.check = true := by
  decide +kernel

theorem check_12196 : cell_12196.check = true := by
  decide +kernel

theorem check_12197 : cell_12197.check = true := by
  decide +kernel

theorem check_12198 : cell_12198.check = true := by
  decide +kernel

theorem check_12199 : cell_12199.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12150, cell_12151, cell_12152, cell_12153, cell_12154, cell_12155, cell_12156, cell_12157, cell_12158, cell_12159, cell_12160, cell_12161, cell_12162, cell_12163, cell_12164, cell_12165, cell_12166, cell_12167, cell_12168, cell_12169, cell_12170, cell_12171, cell_12172, cell_12173, cell_12174, cell_12175, cell_12176, cell_12177, cell_12178, cell_12179, cell_12180, cell_12181, cell_12182, cell_12183, cell_12184, cell_12185, cell_12186, cell_12187, cell_12188, cell_12189, cell_12190, cell_12191, cell_12192, cell_12193, cell_12194, cell_12195, cell_12196, cell_12197, cell_12198, cell_12199]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12150, check_12151, check_12152, check_12153, check_12154, check_12155, check_12156, check_12157, check_12158, check_12159, check_12160, check_12161, check_12162, check_12163, check_12164, check_12165, check_12166, check_12167, check_12168, check_12169, check_12170, check_12171, check_12172, check_12173, check_12174, check_12175, check_12176, check_12177, check_12178, check_12179, check_12180, check_12181, check_12182, check_12183, check_12184, check_12185, check_12186, check_12187, check_12188, check_12189, check_12190, check_12191, check_12192, check_12193, check_12194, check_12195, check_12196, check_12197, check_12198, check_12199, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0243

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0243
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0243
open AnalyticBounds.ExpressionCertificate

theorem linked_12150 : Linked cell_12150 pieces := by
  apply Linked.of_piece piece_1606 piece_1606_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12150, List.cons_subset, List.nil_subset, and_true]
  exact piece_737_mem

theorem linked_12151 : Linked cell_12151 pieces := by
  apply Linked.of_piece piece_1606 piece_1606_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12151, List.cons_subset, List.nil_subset, and_true]
  exact piece_737_mem

theorem linked_12152 : Linked cell_12152 pieces := by
  apply Linked.of_piece piece_1606 piece_1606_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12152, List.cons_subset, List.nil_subset, and_true]
  exact piece_737_mem

theorem linked_12153 : Linked cell_12153 pieces := by
  apply Linked.of_piece piece_1607 piece_1607_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12153, List.cons_subset, List.nil_subset, and_true]
  exact piece_737_mem

theorem linked_12154 : Linked cell_12154 pieces := by
  apply Linked.of_piece piece_1607 piece_1607_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12154, List.cons_subset, List.nil_subset, and_true]
  exact piece_737_mem

theorem linked_12155 : Linked cell_12155 pieces := by
  apply Linked.of_piece piece_1607 piece_1607_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12155, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_736_mem, piece_737_mem⟩

theorem linked_12156 : Linked cell_12156 pieces := by
  apply Linked.of_piece piece_1607 piece_1607_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12156, List.cons_subset, List.nil_subset, and_true]
  exact piece_736_mem

theorem linked_12157 : Linked cell_12157 pieces := by
  apply Linked.of_piece piece_1608 piece_1608_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12157, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_736_mem, piece_737_mem⟩

theorem linked_12158 : Linked cell_12158 pieces := by
  apply Linked.of_piece piece_1608 piece_1608_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12158, List.cons_subset, List.nil_subset, and_true]
  exact piece_736_mem

theorem linked_12159 : Linked cell_12159 pieces := by
  apply Linked.of_piece piece_1608 piece_1608_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12159, List.cons_subset, List.nil_subset, and_true]
  exact piece_736_mem

theorem linked_12160 : Linked cell_12160 pieces := by
  apply Linked.of_piece piece_1608 piece_1608_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12160, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_735_mem, piece_736_mem⟩

theorem linked_12161 : Linked cell_12161 pieces := by
  apply Linked.of_piece piece_1609 piece_1609_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12161, List.cons_subset, List.nil_subset, and_true]
  exact piece_736_mem

theorem linked_12162 : Linked cell_12162 pieces := by
  apply Linked.of_piece piece_1609 piece_1609_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12162, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_735_mem, piece_736_mem⟩

theorem linked_12163 : Linked cell_12163 pieces := by
  apply Linked.of_piece piece_1609 piece_1609_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12163, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_734_mem, piece_735_mem⟩

theorem linked_12164 : Linked cell_12164 pieces := by
  apply Linked.of_piece piece_1609 piece_1609_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12164, List.cons_subset, List.nil_subset, and_true]
  exact piece_734_mem

theorem linked_12165 : Linked cell_12165 pieces := by
  apply Linked.of_piece piece_1610 piece_1610_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12165, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_734_mem, piece_735_mem⟩

theorem linked_12166 : Linked cell_12166 pieces := by
  apply Linked.of_piece piece_1610 piece_1610_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12166, List.cons_subset, List.nil_subset, and_true]
  exact piece_734_mem

theorem linked_12167 : Linked cell_12167 pieces := by
  apply Linked.of_piece piece_1610 piece_1610_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12167, List.cons_subset, List.nil_subset, and_true]
  exact piece_734_mem

theorem linked_12168 : Linked cell_12168 pieces := by
  apply Linked.of_piece piece_1610 piece_1610_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12168, List.cons_subset, List.nil_subset, and_true]
  exact piece_734_mem

theorem linked_12169 : Linked cell_12169 pieces := by
  apply Linked.of_piece piece_1611 piece_1611_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12169, List.cons_subset, List.nil_subset, and_true]
  exact piece_734_mem

theorem linked_12170 : Linked cell_12170 pieces := by
  apply Linked.of_piece piece_1611 piece_1611_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12170, List.cons_subset, List.nil_subset, and_true]
  exact piece_734_mem

theorem linked_12171 : Linked cell_12171 pieces := by
  apply Linked.of_piece piece_1611 piece_1611_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12171, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_733_mem, piece_734_mem⟩

theorem linked_12172 : Linked cell_12172 pieces := by
  apply Linked.of_piece piece_1611 piece_1611_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12172, List.cons_subset, List.nil_subset, and_true]
  exact piece_733_mem

theorem linked_12173 : Linked cell_12173 pieces := by
  apply Linked.of_piece piece_1612 piece_1612_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12173, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_733_mem, piece_734_mem⟩

theorem linked_12174 : Linked cell_12174 pieces := by
  apply Linked.of_piece piece_1612 piece_1612_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12174, List.cons_subset, List.nil_subset, and_true]
  exact piece_733_mem

theorem linked_12175 : Linked cell_12175 pieces := by
  apply Linked.of_piece piece_1612 piece_1612_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12175, List.cons_subset, List.nil_subset, and_true]
  exact piece_733_mem

theorem linked_12176 : Linked cell_12176 pieces := by
  apply Linked.of_piece piece_1612 piece_1612_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12176, List.cons_subset, List.nil_subset, and_true]
  exact piece_733_mem

theorem linked_12177 : Linked cell_12177 pieces := by
  apply Linked.of_piece piece_1613 piece_1613_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12177, List.cons_subset, List.nil_subset, and_true]
  exact piece_733_mem

theorem linked_12178 : Linked cell_12178 pieces := by
  apply Linked.of_piece piece_1613 piece_1613_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12178, List.cons_subset, List.nil_subset, and_true]
  exact piece_733_mem

theorem linked_12179 : Linked cell_12179 pieces := by
  apply Linked.of_piece piece_1613 piece_1613_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12179, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_732_mem, piece_733_mem⟩

theorem linked_12180 : Linked cell_12180 pieces := by
  apply Linked.of_piece piece_1613 piece_1613_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12180, List.cons_subset, List.nil_subset, and_true]
  exact piece_732_mem

theorem linked_12181 : Linked cell_12181 pieces := by
  apply Linked.of_piece piece_1614 piece_1614_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12181, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_732_mem, piece_733_mem⟩

theorem linked_12182 : Linked cell_12182 pieces := by
  apply Linked.of_piece piece_1614 piece_1614_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12182, List.cons_subset, List.nil_subset, and_true]
  exact piece_732_mem

theorem linked_12183 : Linked cell_12183 pieces := by
  apply Linked.of_piece piece_1614 piece_1614_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12183, List.cons_subset, List.nil_subset, and_true]
  exact piece_732_mem

theorem linked_12184 : Linked cell_12184 pieces := by
  apply Linked.of_piece piece_1614 piece_1614_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12184, List.cons_subset, List.nil_subset, and_true]
  exact piece_732_mem

theorem linked_12185 : Linked cell_12185 pieces := by
  apply Linked.of_piece piece_1615 piece_1615_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12185, List.cons_subset, List.nil_subset, and_true]
  exact piece_732_mem

theorem linked_12186 : Linked cell_12186 pieces := by
  apply Linked.of_piece piece_1615 piece_1615_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12186, List.cons_subset, List.nil_subset, and_true]
  exact piece_732_mem

theorem linked_12187 : Linked cell_12187 pieces := by
  apply Linked.of_piece piece_1616 piece_1616_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12187, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_731_mem, piece_732_mem⟩

theorem linked_12188 : Linked cell_12188 pieces := by
  apply Linked.of_piece piece_1616 piece_1616_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12188, List.cons_subset, List.nil_subset, and_true]
  exact piece_731_mem

theorem linked_12189 : Linked cell_12189 pieces := by
  apply Linked.of_piece piece_1617 piece_1617_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12189, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_731_mem, piece_732_mem⟩

theorem linked_12190 : Linked cell_12190 pieces := by
  apply Linked.of_piece piece_1617 piece_1617_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12190, List.cons_subset, List.nil_subset, and_true]
  exact piece_731_mem

theorem linked_12191 : Linked cell_12191 pieces := by
  apply Linked.of_piece piece_1617 piece_1617_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12191, List.cons_subset, List.nil_subset, and_true]
  exact piece_731_mem

theorem linked_12192 : Linked cell_12192 pieces := by
  apply Linked.of_piece piece_1617 piece_1617_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12192, List.cons_subset, List.nil_subset, and_true]
  exact piece_731_mem

theorem linked_12193 : Linked cell_12193 pieces := by
  apply Linked.of_piece piece_1618 piece_1618_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12193, List.cons_subset, List.nil_subset, and_true]
  exact piece_731_mem

theorem linked_12194 : Linked cell_12194 pieces := by
  apply Linked.of_piece piece_1618 piece_1618_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12194, List.cons_subset, List.nil_subset, and_true]
  exact piece_731_mem

theorem linked_12195 : Linked cell_12195 pieces := by
  apply Linked.of_piece piece_1618 piece_1618_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12195, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_730_mem, piece_731_mem⟩

theorem linked_12196 : Linked cell_12196 pieces := by
  apply Linked.of_piece piece_1618 piece_1618_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12196, List.cons_subset, List.nil_subset, and_true]
  exact piece_730_mem

theorem linked_12197 : Linked cell_12197 pieces := by
  apply Linked.of_piece piece_1619 piece_1619_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12197, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_730_mem, piece_731_mem⟩

theorem linked_12198 : Linked cell_12198 pieces := by
  apply Linked.of_piece piece_1619 piece_1619_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12198, List.cons_subset, List.nil_subset, and_true]
  exact piece_730_mem

theorem linked_12199 : Linked cell_12199 pieces := by
  apply Linked.of_piece piece_1619 piece_1619_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12199, List.cons_subset, List.nil_subset, and_true]
  exact piece_730_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0243.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0243.cells,List.forall_mem_cons]
  exact ⟨linked_12150, linked_12151, linked_12152, linked_12153, linked_12154, linked_12155, linked_12156, linked_12157, linked_12158, linked_12159, linked_12160, linked_12161, linked_12162, linked_12163, linked_12164, linked_12165, linked_12166, linked_12167, linked_12168, linked_12169, linked_12170, linked_12171, linked_12172, linked_12173, linked_12174, linked_12175, linked_12176, linked_12177, linked_12178, linked_12179, linked_12180, linked_12181, linked_12182, linked_12183, linked_12184, linked_12185, linked_12186, linked_12187, linked_12188, linked_12189, linked_12190, linked_12191, linked_12192, linked_12193, linked_12194, linked_12195, linked_12196, linked_12197, linked_12198, linked_12199, by simp⟩

theorem covered : covers (138225000000000009 / 200000000000000000 : ℚ) (278950000000000009 / 400000000000000000 : ℚ)
    (SourceCertificates.Chunk0243.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0243
