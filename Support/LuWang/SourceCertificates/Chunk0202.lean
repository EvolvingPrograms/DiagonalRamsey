import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0202
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(441 / 1000 : ℚ), (3529 / 8000 : ℚ)⟩
  branch := .left
  r := (207178404507 / 312500000000 : ℚ)
  w := (3814476721577 / 2500000000000 : ℚ)
  center := (7057 / 16000 : ℚ)
  supportValue := (244645010762443 / 500000000000000 : ℚ)
  supportSlope := (-26486627823691933 / 10000000000000000 : ℚ)
  oldCenter := (244645010762443 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1062
  oldLo := (12187500000000001 / 25000000000000000 : ℚ)
  oldHi := (12200000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1162]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_10100 : Cell := { cellDefaults with
  newCoefficients := coefficients_1060
  oldLo := (9780000000000001 / 20000000000000000 : ℚ)
  oldHi := (9790000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1165]
}

def cell_10101 : Cell := { cellDefaults with
  domain := ⟨(3529 / 8000 : ℚ), (353 / 800 : ℚ)⟩
  center := (7059 / 16000 : ℚ)
  supportValue := (4889591095679343 / 10000000000000000 : ℚ)
  supportSlope := (-2646173651224437 / 1000000000000000 : ℚ)
  oldCenter := (4889591095679343 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1060
  oldLo := (9770000000000001 / 20000000000000000 : ℚ)
  oldHi := (9790000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1164, piece_1165]
}

def cell_10102 : Cell := { cellDefaults with
  domain := ⟨(353 / 800 : ℚ), (8826466480446927 / 20000000000000000 : ℚ)⟩
  center := (17651466480446927 / 40000000000000000 : ℚ)
  supportValue := (3054352855189171 / 6250000000000000 : ℚ)
  supportSlope := (-413143561755809 / 156250000000000 : ℚ)
  oldCenter := (3054352855189171 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1060
  oldLo := (9770000000000001 / 20000000000000000 : ℚ)
  oldHi := (9780000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1164]
}

def cell_10103 : Cell := { cellDefaults with
  domain := ⟨(8826466480446927 / 20000000000000000 : ℚ), (4413966480446927 / 10000000000000000 : ℚ)⟩
  center := (17654399441340781 / 40000000000000000 : ℚ)
  supportValue := (12212566043964579 / 25000000000000000 : ℚ)
  supportSlope := (-2642742562373101 / 1000000000000000 : ℚ)
  oldCenter := (12212566043964579 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1060
  oldLo := (12200000000000001 / 25000000000000000 : ℚ)
  oldHi := (9780000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1163, piece_1164]
}

def cell_10104 : Cell := { cellDefaults with
  domain := ⟨(4413966480446927 / 10000000000000000 : ℚ), (883 / 2000 : ℚ)⟩
  center := (8828966480446927 / 20000000000000000 : ℚ)
  supportValue := (4882692480628173 / 10000000000000000 : ℚ)
  supportSlope := (-26410341738760943 / 10000000000000000 : ℚ)
  oldCenter := (4882692480628173 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1061
  oldLo := (12200000000000001 / 25000000000000000 : ℚ)
  oldHi := (9770000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1163]
}

def cell_10105 : Cell := { cellDefaults with
  domain := ⟨(883 / 2000 : ℚ), (3533 / 8000 : ℚ)⟩
  r := (66256499405771 / 100000000000000 : ℚ)
  w := (15252300534147 / 10000000000000 : ℚ)
  center := (1413 / 3200 : ℚ)
  supportValue := (977311135658997 / 2000000000000000 : ℚ)
  supportSlope := (-660528674900851 / 250000000000000 : ℚ)
  oldCenter := (977311135658997 / 2000000000000000 : ℚ)
  oldLo := (12200000000000001 / 25000000000000000 : ℚ)
  oldHi := (9780000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1163, piece_1164]
}

def cell_10106 : Cell := { cellDefaults with
  domain := ⟨(3533 / 8000 : ℚ), (1767 / 4000 : ℚ)⟩
  r := (66256499405771 / 100000000000000 : ℚ)
  w := (15252300534147 / 10000000000000 : ℚ)
  center := (7067 / 16000 : ℚ)
  supportValue := (9766508849801343 / 20000000000000000 : ℚ)
  supportSlope := (-6599662410600171 / 2500000000000000 : ℚ)
  oldCenter := (9766508849801343 / 20000000000000000 : ℚ)
  oldLo := (12200000000000001 / 25000000000000000 : ℚ)
  oldHi := (9770000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1163]
}

def cell_10107 : Cell := { cellDefaults with
  domain := ⟨(1767 / 4000 : ℚ), (707 / 1600 : ℚ)⟩
  r := (66256499405771 / 100000000000000 : ℚ)
  w := (15252300534147 / 10000000000000 : ℚ)
  center := (7069 / 16000 : ℚ)
  supportValue := (9759912777202977 / 20000000000000000 : ℚ)
  supportSlope := (-5274628703821449 / 2000000000000000 : ℚ)
  oldCenter := (9759912777202977 / 20000000000000000 : ℚ)
  oldHi := (9770000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1162, piece_1163]
}

def cell_10108 : Cell := { cellDefaults with
  domain := ⟨(707 / 1600 : ℚ), (7071 / 16000 : ℚ)⟩
  r := (66256499405771 / 100000000000000 : ℚ)
  w := (15252300534147 / 10000000000000 : ℚ)
  center := (14141 / 32000 : ℚ)
  supportValue := (4877481202313181 / 10000000000000000 : ℚ)
  supportSlope := (-2635468527239837 / 1000000000000000 : ℚ)
  oldCenter := (4877481202313181 / 10000000000000000 : ℚ)
  oldPieces := [piece_1162]
}

def cell_10109 : Cell := { cellDefaults with
  domain := ⟨(7071 / 16000 : ℚ), (221 / 500 : ℚ)⟩
  r := (66256499405771 / 100000000000000 : ℚ)
  w := (15252300534147 / 10000000000000 : ℚ)
  center := (14143 / 32000 : ℚ)
  supportValue := (2437917242991549 / 5000000000000000 : ℚ)
  supportSlope := (-26340225833560993 / 10000000000000000 : ℚ)
  oldCenter := (2437917242991549 / 5000000000000000 : ℚ)
  oldPieces := [piece_1162]
}

def cell_10110 : Cell := { cellDefaults with
  domain := ⟨(221 / 500 : ℚ), (3537 / 8000 : ℚ)⟩
  r := (66215963092091 / 100000000000000 : ℚ)
  w := (3811676246707 / 2500000000000 : ℚ)
  center := (7073 / 16000 : ℚ)
  supportValue := (24401136977029697 / 50000000000000000 : ℚ)
  supportSlope := (-2635839446841537 / 1000000000000000 : ℚ)
  oldCenter := (24401136977029697 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1063
  oldHi := (9770000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1162, piece_1163]
}

def cell_10111 : Cell := { cellDefaults with
  domain := ⟨(3537 / 8000 : ℚ), (1769 / 4000 : ℚ)⟩
  r := (66215963092091 / 100000000000000 : ℚ)
  w := (3811676246707 / 2500000000000 : ℚ)
  center := (283 / 640 : ℚ)
  supportValue := (48769339803849693 / 100000000000000000 : ℚ)
  supportSlope := (-5266659697776177 / 2000000000000000 : ℚ)
  oldCenter := (48769339803849693 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1063
  oldPieces := [piece_1162]
}

def cell_10112 : Cell := { cellDefaults with
  domain := ⟨(1769 / 4000 : ℚ), (3539 / 8000 : ℚ)⟩
  r := (66215963092091 / 100000000000000 : ℚ)
  w := (3811676246707 / 2500000000000 : ℚ)
  center := (7077 / 16000 : ℚ)
  supportValue := (609205471431839 / 1250000000000000 : ℚ)
  supportSlope := (-1644410650998851 / 625000000000000 : ℚ)
  oldCenter := (609205471431839 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1063
  oldLo := (12175000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1161, piece_1162]
}

def cell_10113 : Cell := { cellDefaults with
  domain := ⟨(3539 / 8000 : ℚ), (7079 / 16000 : ℚ)⟩
  r := (66215963092091 / 100000000000000 : ℚ)
  w := (3811676246707 / 2500000000000 : ℚ)
  center := (14157 / 32000 : ℚ)
  supportValue := (4871174704000787 / 10000000000000000 : ℚ)
  supportSlope := (-2628950259726537 / 1000000000000000 : ℚ)
  oldCenter := (4871174704000787 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1063
  oldLo := (12175000000000001 / 25000000000000000 : ℚ)
  oldHi := (12187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1161]
}

def cell_10114 : Cell := { cellDefaults with
  domain := ⟨(7079 / 16000 : ℚ), (177 / 400 : ℚ)⟩
  r := (66215963092091 / 100000000000000 : ℚ)
  w := (3811676246707 / 2500000000000 : ℚ)
  center := (14159 / 32000 : ℚ)
  supportValue := (12173829848642681 / 25000000000000000 : ℚ)
  supportSlope := (-13140194631766633 / 5000000000000000 : ℚ)
  oldCenter := (12173829848642681 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1063
  oldLo := (12162500000000001 / 25000000000000000 : ℚ)
  oldHi := (12187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1160, piece_1161]
}

def cell_10115 : Cell := { cellDefaults with
  domain := ⟨(177 / 400 : ℚ), (3541 / 8000 : ℚ)⟩
  r := (66175481791583 / 100000000000000 : ℚ)
  w := (7620560689117 / 5000000000000 : ℚ)
  center := (7081 / 16000 : ℚ)
  supportValue := (389913157545219 / 800000000000000 : ℚ)
  supportSlope := (-525917348897309 / 200000000000000 : ℚ)
  oldCenter := (389913157545219 / 800000000000000 : ℚ)
  newCoefficients := coefficients_1064
  oldLo := (12175000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1161, piece_1162]
}

def cell_10116 : Cell := { cellDefaults with
  domain := ⟨(3541 / 8000 : ℚ), (1771 / 4000 : ℚ)⟩
  r := (66175481791583 / 100000000000000 : ℚ)
  w := (7620560689117 / 5000000000000 : ℚ)
  center := (7083 / 16000 : ℚ)
  supportValue := (4870629142905007 / 10000000000000000 : ℚ)
  supportSlope := (-26270274544204497 / 10000000000000000 : ℚ)
  oldCenter := (4870629142905007 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1064
  oldLo := (12162500000000001 / 25000000000000000 : ℚ)
  oldHi := (12187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1160, piece_1161]
}

def cell_10117 : Cell := { cellDefaults with
  domain := ⟨(1771 / 4000 : ℚ), (3543 / 8000 : ℚ)⟩
  r := (66175481791583 / 100000000000000 : ℚ)
  w := (7620560689117 / 5000000000000 : ℚ)
  center := (1417 / 3200 : ℚ)
  supportValue := (48673467337547227 / 100000000000000000 : ℚ)
  supportSlope := (-6561532345619181 / 2500000000000000 : ℚ)
  oldCenter := (48673467337547227 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1064
  oldLo := (12162500000000001 / 25000000000000000 : ℚ)
  oldHi := (12175000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1160]
}

def cell_10118 : Cell := { cellDefaults with
  domain := ⟨(3543 / 8000 : ℚ), (7087 / 16000 : ℚ)⟩
  r := (66175481791583 / 100000000000000 : ℚ)
  w := (7620560689117 / 5000000000000 : ℚ)
  center := (14173 / 32000 : ℚ)
  supportValue := (2432441866286443 / 5000000000000000 : ℚ)
  supportSlope := (-1049136946767959 / 400000000000000 : ℚ)
  oldCenter := (2432441866286443 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1064
  oldLo := (12150000000000001 / 25000000000000000 : ℚ)
  oldHi := (12175000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1159, piece_1160]
}

def cell_10119 : Cell := { cellDefaults with
  domain := ⟨(7087 / 16000 : ℚ), (443 / 1000 : ℚ)⟩
  r := (66175481791583 / 100000000000000 : ℚ)
  w := (7620560689117 / 5000000000000 : ℚ)
  center := (567 / 1280 : ℚ)
  supportValue := (2431622362068657 / 5000000000000000 : ℚ)
  supportSlope := (-13108465178754969 / 5000000000000000 : ℚ)
  oldCenter := (2431622362068657 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1064
  oldLo := (12150000000000001 / 25000000000000000 : ℚ)
  oldHi := (12162500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1159]
}

def cell_10120 : Cell := { cellDefaults with
  domain := ⟨(443 / 1000 : ℚ), (177250000000000001 / 400000000000000000 : ℚ)⟩
  r := (3306752744663 / 5000000000000 : ℚ)
  w := (7617774692529 / 5000000000000 : ℚ)
  center := (354450000000000001 / 800000000000000000 : ℚ)
  supportValue := (4867617221909737 / 10000000000000000 : ℚ)
  supportSlope := (-6558006635444127 / 2500000000000000 : ℚ)
  oldCenter := (4867617221909737 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1065
  oldLo := (12162500000000001 / 25000000000000000 : ℚ)
  oldHi := (12175000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1160]
}

def cell_10121 : Cell := { cellDefaults with
  domain := ⟨(177250000000000001 / 400000000000000000 : ℚ), (88650000000000001 / 200000000000000000 : ℚ)⟩
  r := (3306752744663 / 5000000000000 : ℚ)
  w := (7617774692529 / 5000000000000 : ℚ)
  center := (354550000000000003 / 800000000000000000 : ℚ)
  supportValue := (12160849598800931 / 25000000000000000 : ℚ)
  supportSlope := (-524161035740523 / 200000000000000 : ℚ)
  oldCenter := (12160849598800931 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1065
  oldLo := (12150000000000001 / 25000000000000000 : ℚ)
  oldHi := (12175000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1159, piece_1160]
}

def cell_10122 : Cell := { cellDefaults with
  domain := ⟨(88650000000000001 / 200000000000000000 : ℚ), (177350000000000003 / 400000000000000000 : ℚ)⟩
  r := (3306752744663 / 5000000000000 : ℚ)
  w := (7617774692529 / 5000000000000 : ℚ)
  center := (70930000000000001 / 160000000000000000 : ℚ)
  supportValue := (4861065374236123 / 10000000000000000 : ℚ)
  supportSlope := (-5236507426291121 / 2000000000000000 : ℚ)
  oldCenter := (4861065374236123 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1065
  oldLo := (2428212290502793 / 5000000000000000 : ℚ)
  oldHi := (12162500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1158, piece_1159]
}

def cell_10123 : Cell := { cellDefaults with
  domain := ⟨(177350000000000003 / 400000000000000000 : ℚ), (354750000000000007 / 800000000000000000 : ℚ)⟩
  r := (3306752744663 / 5000000000000 : ℚ)
  w := (7617774692529 / 5000000000000 : ℚ)
  center := (709450000000000013 / 1600000000000000000 : ℚ)
  supportValue := (4858608117216399 / 10000000000000000 : ℚ)
  supportSlope := (-6541651533589079 / 2500000000000000 : ℚ)
  oldCenter := (4858608117216399 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1065
  oldLo := (2428212290502793 / 5000000000000000 : ℚ)
  oldHi := (12150000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1158]
}

def cell_10124 : Cell := { cellDefaults with
  domain := ⟨(354750000000000007 / 800000000000000000 : ℚ), (44350000000000001 / 100000000000000000 : ℚ)⟩
  r := (3306752744663 / 5000000000000 : ℚ)
  w := (7617774692529 / 5000000000000 : ℚ)
  center := (141910000000000003 / 320000000000000000 : ℚ)
  supportValue := (1214243288089771 / 2500000000000000 : ℚ)
  supportSlope := (-2615225827708959 / 1000000000000000 : ℚ)
  oldCenter := (1214243288089771 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1065
  oldLo := (12137500000000001 / 25000000000000000 : ℚ)
  oldHi := (12150000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1157, piece_1158]
}

def cell_10125 : Cell := { cellDefaults with
  domain := ⟨(44350000000000001 / 100000000000000000 : ℚ), (44362500000000001 / 100000000000000000 : ℚ)⟩
  r := (6609468322653 / 10000000000000 : ℚ)
  w := (15229989061737 / 10000000000000 : ℚ)
  center := (44356250000000001 / 100000000000000000 : ℚ)
  supportValue := (9722671013389731 / 20000000000000000 : ℚ)
  supportSlope := (-26167917388217887 / 10000000000000000 : ℚ)
  oldCenter := (9722671013389731 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1066
  oldLo := (2428212290502793 / 5000000000000000 : ℚ)
  oldHi := (12162500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1158, piece_1159]
}

def cell_10126 : Cell := { cellDefaults with
  domain := ⟨(44362500000000001 / 100000000000000000 : ℚ), (44375000000000001 / 100000000000000000 : ℚ)⟩
  r := (6609468322653 / 10000000000000 : ℚ)
  w := (15229989061737 / 10000000000000 : ℚ)
  center := (44368750000000001 / 100000000000000000 : ℚ)
  supportValue := (48580658805083343 / 100000000000000000 : ℚ)
  supportSlope := (-6536353858661581 / 2500000000000000 : ℚ)
  oldCenter := (48580658805083343 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1066
  oldLo := (2428212290502793 / 5000000000000000 : ℚ)
  oldHi := (12150000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1158]
}

def cell_10127 : Cell := { cellDefaults with
  domain := ⟨(44375000000000001 / 100000000000000000 : ℚ), (44387500000000001 / 100000000000000000 : ℚ)⟩
  r := (6609468322653 / 10000000000000 : ℚ)
  w := (15229989061737 / 10000000000000 : ℚ)
  center := (44381250000000001 / 100000000000000000 : ℚ)
  supportValue := (9709598873272729 / 20000000000000000 : ℚ)
  supportSlope := (-2612061831928969 / 1000000000000000 : ℚ)
  oldCenter := (9709598873272729 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1066
  oldLo := (12125000000000001 / 25000000000000000 : ℚ)
  oldHi := (12150000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1156, piece_1157, piece_1158]
}

def cell_10128 : Cell := { cellDefaults with
  domain := ⟨(44387500000000001 / 100000000000000000 : ℚ), (44393750000000001 / 100000000000000000 : ℚ)⟩
  r := (6609468322653 / 10000000000000 : ℚ)
  w := (15229989061737 / 10000000000000 : ℚ)
  center := (44390625000000001 / 100000000000000000 : ℚ)
  supportValue := (4852347957065479 / 10000000000000000 : ℚ)
  supportSlope := (-1305106135535361 / 500000000000000 : ℚ)
  oldCenter := (4852347957065479 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1066
  oldLo := (12125000000000001 / 25000000000000000 : ℚ)
  oldHi := (12137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1156]
}

def cell_10129 : Cell := { cellDefaults with
  domain := ⟨(44393750000000001 / 100000000000000000 : ℚ), (44400000000000001 / 100000000000000000 : ℚ)⟩
  r := (6609468322653 / 10000000000000 : ℚ)
  w := (15229989061737 / 10000000000000 : ℚ)
  center := (44396875000000001 / 100000000000000000 : ℚ)
  supportValue := (1212679255213159 / 2500000000000000 : ℚ)
  supportSlope := (-26088242398127903 / 10000000000000000 : ℚ)
  oldCenter := (1212679255213159 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1066
  oldLo := (12112500000000001 / 25000000000000000 : ℚ)
  oldHi := (12137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1155, piece_1156]
}

def cell_10130 : Cell := { cellDefaults with
  domain := ⟨(44400000000000001 / 100000000000000000 : ℚ), (44412500000000001 / 100000000000000000 : ℚ)⟩
  r := (33027182333121 / 50000000000000 : ℚ)
  w := (7612220443129 / 5000000000000 : ℚ)
  center := (44406250000000001 / 100000000000000000 : ℚ)
  supportValue := (4855069346051199 / 10000000000000000 : ℚ)
  supportSlope := (-26106044290310493 / 10000000000000000 : ℚ)
  oldCenter := (4855069346051199 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1067
  oldLo := (12125000000000001 / 25000000000000000 : ℚ)
  oldHi := (12150000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1156, piece_1157, piece_1158]
}

def cell_10131 : Cell := { cellDefaults with
  domain := ⟨(44412500000000001 / 100000000000000000 : ℚ), (44425000000000001 / 100000000000000000 : ℚ)⟩
  r := (33027182333121 / 50000000000000 : ℚ)
  w := (7612220443129 / 5000000000000 : ℚ)
  center := (44418750000000001 / 100000000000000000 : ℚ)
  supportValue := (1516189827622157 / 3125000000000000 : ℚ)
  supportSlope := (-2608100230297339 / 1000000000000000 : ℚ)
  oldCenter := (1516189827622157 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1067
  oldLo := (12125000000000001 / 25000000000000000 : ℚ)
  oldHi := (12137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1156]
}

def cell_10132 : Cell := { cellDefaults with
  domain := ⟨(44425000000000001 / 100000000000000000 : ℚ), (44437500000000001 / 100000000000000000 : ℚ)⟩
  r := (33027182333121 / 50000000000000 : ℚ)
  w := (7612220443129 / 5000000000000 : ℚ)
  center := (44431250000000001 / 100000000000000000 : ℚ)
  supportValue := (1939419489123003 / 4000000000000000 : ℚ)
  supportSlope := (-2605891590642173 / 1000000000000000 : ℚ)
  oldCenter := (1939419489123003 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1067
  oldLo := (12112500000000001 / 25000000000000000 : ℚ)
  oldHi := (12137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1155, piece_1156]
}

def cell_10133 : Cell := { cellDefaults with
  domain := ⟨(44437500000000001 / 100000000000000000 : ℚ), (44443750000000001 / 100000000000000000 : ℚ)⟩
  r := (33027182333121 / 50000000000000 : ℚ)
  w := (7612220443129 / 5000000000000 : ℚ)
  center := (44440625000000001 / 100000000000000000 : ℚ)
  supportValue := (2423051637307341 / 5000000000000000 : ℚ)
  supportSlope := (-13018936091313549 / 5000000000000000 : ℚ)
  oldCenter := (2423051637307341 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1067
  oldLo := (12112500000000001 / 25000000000000000 : ℚ)
  oldHi := (12125000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1155]
}

def cell_10134 : Cell := { cellDefaults with
  domain := ⟨(44443750000000001 / 100000000000000000 : ℚ), (44450000000000001 / 100000000000000000 : ℚ)⟩
  r := (33027182333121 / 50000000000000 : ℚ)
  w := (7612220443129 / 5000000000000 : ℚ)
  center := (44446875000000001 / 100000000000000000 : ℚ)
  supportValue := (6055595267840843 / 12500000000000000 : ℚ)
  supportSlope := (-2602925346332441 / 1000000000000000 : ℚ)
  oldCenter := (6055595267840843 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1067
  oldLo := (12100000000000001 / 25000000000000000 : ℚ)
  oldHi := (12125000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1154, piece_1155]
}

def cell_10135 : Cell := { cellDefaults with
  domain := ⟨(44450000000000001 / 100000000000000000 : ℚ), (44462500000000001 / 100000000000000000 : ℚ)⟩
  r := (8251762535823 / 12500000000000 : ℚ)
  w := (15218903251947 / 10000000000000 : ℚ)
  center := (44456250000000001 / 100000000000000000 : ℚ)
  supportValue := (484881874166879 / 1000000000000000 : ℚ)
  supportSlope := (-26044389819661617 / 10000000000000000 : ℚ)
  oldCenter := (484881874166879 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1068
  oldLo := (12112500000000001 / 25000000000000000 : ℚ)
  oldHi := (12137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1155, piece_1156]
}

def cell_10136 : Cell := { cellDefaults with
  domain := ⟨(44462500000000001 / 100000000000000000 : ℚ), (44475000000000001 / 100000000000000000 : ℚ)⟩
  r := (8251762535823 / 12500000000000 : ℚ)
  w := (15218903251947 / 10000000000000 : ℚ)
  center := (44468750000000001 / 100000000000000000 : ℚ)
  supportValue := (9691129711200639 / 20000000000000000 : ℚ)
  supportSlope := (-2601906684180477 / 1000000000000000 : ℚ)
  oldCenter := (9691129711200639 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1068
  oldLo := (12100000000000001 / 25000000000000000 : ℚ)
  oldHi := (12125000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1154, piece_1155]
}

def cell_10137 : Cell := { cellDefaults with
  domain := ⟨(44475000000000001 / 100000000000000000 : ℚ), (44487500000000001 / 100000000000000000 : ℚ)⟩
  r := (8251762535823 / 12500000000000 : ℚ)
  w := (15218903251947 / 10000000000000 : ℚ)
  center := (44481250000000001 / 100000000000000000 : ℚ)
  supportValue := (12105784552557379 / 25000000000000000 : ℚ)
  supportSlope := (-519903806837263 / 200000000000000 : ℚ)
  oldCenter := (12105784552557379 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1068
  oldLo := (12100000000000001 / 25000000000000000 : ℚ)
  oldHi := (12112500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1154]
}

def cell_10138 : Cell := { cellDefaults with
  domain := ⟨(44487500000000001 / 100000000000000000 : ℚ), (44493750000000001 / 100000000000000000 : ℚ)⟩
  r := (8251762535823 / 12500000000000 : ℚ)
  w := (15218903251947 / 10000000000000 : ℚ)
  center := (44490625000000001 / 100000000000000000 : ℚ)
  supportValue := (24199371741803147 / 50000000000000000 : ℚ)
  supportSlope := (-2597782847242769 / 1000000000000000 : ℚ)
  oldCenter := (24199371741803147 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1068
  oldLo := (12087500000000001 / 25000000000000000 : ℚ)
  oldHi := (12112500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1153, piece_1154]
}

def cell_10139 : Cell := { cellDefaults with
  domain := ⟨(44493750000000001 / 100000000000000000 : ℚ), (44500000000000001 / 100000000000000000 : ℚ)⟩
  r := (8251762535823 / 12500000000000 : ℚ)
  w := (15218903251947 / 10000000000000 : ℚ)
  center := (44496875000000001 / 100000000000000000 : ℚ)
  supportValue := (48382509971735277 / 100000000000000000 : ℚ)
  supportSlope := (-649162363824729 / 250000000000000 : ℚ)
  oldCenter := (48382509971735277 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1068
  oldLo := (12087500000000001 / 25000000000000000 : ℚ)
  oldHi := (12100000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1153]
}

def cell_10140 : Cell := { cellDefaults with
  domain := ⟨(44500000000000001 / 100000000000000000 : ℚ), (44512500000000001 / 100000000000000000 : ℚ)⟩
  r := (65973890516971 / 100000000000000 : ℚ)
  w := (15213376807411 / 10000000000000 : ℚ)
  center := (44506250000000001 / 100000000000000000 : ℚ)
  supportValue := (193703345622699 / 400000000000000 : ℚ)
  supportSlope := (-2598127546253437 / 1000000000000000 : ℚ)
  oldCenter := (193703345622699 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1069
  oldLo := (12100000000000001 / 25000000000000000 : ℚ)
  oldHi := (12112500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1154]
}

def cell_10141 : Cell := { cellDefaults with
  domain := ⟨(44512500000000001 / 100000000000000000 : ℚ), (44525000000000001 / 100000000000000000 : ℚ)⟩
  r := (65973890516971 / 100000000000000 : ℚ)
  w := (15213376807411 / 10000000000000 : ℚ)
  center := (44518750000000001 / 100000000000000000 : ℚ)
  supportValue := (1209834394287409 / 2500000000000000 : ℚ)
  supportSlope := (-12978855802647793 / 5000000000000000 : ℚ)
  oldCenter := (1209834394287409 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1069
  oldLo := (12087500000000001 / 25000000000000000 : ℚ)
  oldHi := (12112500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1153, piece_1154]
}

def cell_10142 : Cell := { cellDefaults with
  domain := ⟨(44525000000000001 / 100000000000000000 : ℚ), (44537500000000001 / 100000000000000000 : ℚ)⟩
  r := (65973890516971 / 100000000000000 : ℚ)
  w := (15213376807411 / 10000000000000 : ℚ)
  center := (44531250000000001 / 100000000000000000 : ℚ)
  supportValue := (1209023595724199 / 2500000000000000 : ℚ)
  supportSlope := (-25932464072635497 / 10000000000000000 : ℚ)
  oldCenter := (1209023595724199 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1069
  oldLo := (12075000000000001 / 25000000000000000 : ℚ)
  oldHi := (12100000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1152, piece_1153]
}

def cell_10143 : Cell := { cellDefaults with
  domain := ⟨(44537500000000001 / 100000000000000000 : ℚ), (44543750000000001 / 100000000000000000 : ℚ)⟩
  r := (65973890516971 / 100000000000000 : ℚ)
  w := (15213376807411 / 10000000000000 : ℚ)
  center := (44540625000000001 / 100000000000000000 : ℚ)
  supportValue := (4833660575263581 / 10000000000000000 : ℚ)
  supportSlope := (-2591694124653543 / 1000000000000000 : ℚ)
  oldCenter := (4833660575263581 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1069
  oldLo := (12075000000000001 / 25000000000000000 : ℚ)
  oldHi := (12087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1152]
}

def cell_10144 : Cell := { cellDefaults with
  domain := ⟨(44543750000000001 / 100000000000000000 : ℚ), (44550000000000001 / 100000000000000000 : ℚ)⟩
  r := (65973890516971 / 100000000000000 : ℚ)
  w := (15213376807411 / 10000000000000 : ℚ)
  center := (44546875000000001 / 100000000000000000 : ℚ)
  supportValue := (48320412095126647 / 100000000000000000 : ℚ)
  supportSlope := (-12951375784391317 / 5000000000000000 : ℚ)
  oldCenter := (48320412095126647 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1069
  oldLo := (12075000000000001 / 25000000000000000 : ℚ)
  oldHi := (12087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1152]
}

def cell_10145 : Cell := { cellDefaults with
  domain := ⟨(44550000000000001 / 100000000000000000 : ℚ), (44562500000000001 / 100000000000000000 : ℚ)⟩
  r := (3296686734639 / 5000000000000 : ℚ)
  w := (7603931036811 / 5000000000000 : ℚ)
  center := (44556250000000001 / 100000000000000000 : ℚ)
  supportValue := (302272743047629 / 625000000000000 : ℚ)
  supportSlope := (-25918019658472957 / 10000000000000000 : ℚ)
  oldCenter := (302272743047629 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1070
  oldLo := (12075000000000001 / 25000000000000000 : ℚ)
  oldHi := (12100000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1152, piece_1153]
}

def cell_10146 : Cell := { cellDefaults with
  domain := ⟨(44562500000000001 / 100000000000000000 : ℚ), (44575000000000001 / 100000000000000000 : ℚ)⟩
  r := (3296686734639 / 5000000000000 : ℚ)
  w := (7603931036811 / 5000000000000 : ℚ)
  center := (44568750000000001 / 100000000000000000 : ℚ)
  supportValue := (2416562736727927 / 5000000000000000 : ℚ)
  supportSlope := (-323700208401001 / 125000000000000 : ℚ)
  oldCenter := (2416562736727927 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1070
  oldLo := (12075000000000001 / 25000000000000000 : ℚ)
  oldHi := (12087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1152]
}

def cell_10147 : Cell := { cellDefaults with
  domain := ⟨(44575000000000001 / 100000000000000000 : ℚ), (44587500000000001 / 100000000000000000 : ℚ)⟩
  r := (3296686734639 / 5000000000000 : ℚ)
  w := (7603931036811 / 5000000000000 : ℚ)
  center := (44581250000000001 / 100000000000000000 : ℚ)
  supportValue := (482989020779133 / 1000000000000000 : ℚ)
  supportSlope := (-25871402437145363 / 10000000000000000 : ℚ)
  oldCenter := (482989020779133 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1070
  oldLo := (12062500000000001 / 25000000000000000 : ℚ)
  oldHi := (12087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1151, piece_1152]
}

def cell_10148 : Cell := { cellDefaults with
  domain := ⟨(44587500000000001 / 100000000000000000 : ℚ), (44593750000000001 / 100000000000000000 : ℚ)⟩
  r := (3296686734639 / 5000000000000 : ℚ)
  w := (7603931036811 / 5000000000000 : ℚ)
  center := (44590625000000001 / 100000000000000000 : ℚ)
  supportValue := (48274620763914533 / 100000000000000000 : ℚ)
  supportSlope := (-12926690379488903 / 5000000000000000 : ℚ)
  oldCenter := (48274620763914533 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1070
  oldLo := (12062500000000001 / 25000000000000000 : ℚ)
  oldHi := (12075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1151]
}

def cell_10149 : Cell := { cellDefaults with
  domain := ⟨(44593750000000001 / 100000000000000000 : ℚ), (44600000000000001 / 100000000000000000 : ℚ)⟩
  r := (3296686734639 / 5000000000000 : ℚ)
  w := (7603931036811 / 5000000000000 : ℚ)
  center := (44596875000000001 / 100000000000000000 : ℚ)
  supportValue := (2412923340796253 / 5000000000000000 : ℚ)
  supportSlope := (-2583924161756457 / 1000000000000000 : ℚ)
  oldCenter := (2412923340796253 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1070
  oldLo := (12062500000000001 / 25000000000000000 : ℚ)
  oldHi := (12075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1151]
}

theorem check_10100 : cell_10100.check = true := by
  decide +kernel

theorem check_10101 : cell_10101.check = true := by
  decide +kernel

theorem check_10102 : cell_10102.check = true := by
  decide +kernel

theorem check_10103 : cell_10103.check = true := by
  decide +kernel

theorem check_10104 : cell_10104.check = true := by
  decide +kernel

theorem check_10105 : cell_10105.check = true := by
  decide +kernel

theorem check_10106 : cell_10106.check = true := by
  decide +kernel

theorem check_10107 : cell_10107.check = true := by
  decide +kernel

theorem check_10108 : cell_10108.check = true := by
  decide +kernel

theorem check_10109 : cell_10109.check = true := by
  decide +kernel

theorem check_10110 : cell_10110.check = true := by
  decide +kernel

theorem check_10111 : cell_10111.check = true := by
  decide +kernel

theorem check_10112 : cell_10112.check = true := by
  decide +kernel

theorem check_10113 : cell_10113.check = true := by
  decide +kernel

theorem check_10114 : cell_10114.check = true := by
  decide +kernel

theorem check_10115 : cell_10115.check = true := by
  decide +kernel

theorem check_10116 : cell_10116.check = true := by
  decide +kernel

theorem check_10117 : cell_10117.check = true := by
  decide +kernel

theorem check_10118 : cell_10118.check = true := by
  decide +kernel

theorem check_10119 : cell_10119.check = true := by
  decide +kernel

theorem check_10120 : cell_10120.check = true := by
  decide +kernel

theorem check_10121 : cell_10121.check = true := by
  decide +kernel

theorem check_10122 : cell_10122.check = true := by
  decide +kernel

theorem check_10123 : cell_10123.check = true := by
  decide +kernel

theorem check_10124 : cell_10124.check = true := by
  decide +kernel

theorem check_10125 : cell_10125.check = true := by
  decide +kernel

theorem check_10126 : cell_10126.check = true := by
  decide +kernel

theorem check_10127 : cell_10127.check = true := by
  decide +kernel

theorem check_10128 : cell_10128.check = true := by
  decide +kernel

theorem check_10129 : cell_10129.check = true := by
  decide +kernel

theorem check_10130 : cell_10130.check = true := by
  decide +kernel

theorem check_10131 : cell_10131.check = true := by
  decide +kernel

theorem check_10132 : cell_10132.check = true := by
  decide +kernel

theorem check_10133 : cell_10133.check = true := by
  decide +kernel

theorem check_10134 : cell_10134.check = true := by
  decide +kernel

theorem check_10135 : cell_10135.check = true := by
  decide +kernel

theorem check_10136 : cell_10136.check = true := by
  decide +kernel

theorem check_10137 : cell_10137.check = true := by
  decide +kernel

theorem check_10138 : cell_10138.check = true := by
  decide +kernel

theorem check_10139 : cell_10139.check = true := by
  decide +kernel

theorem check_10140 : cell_10140.check = true := by
  decide +kernel

theorem check_10141 : cell_10141.check = true := by
  decide +kernel

theorem check_10142 : cell_10142.check = true := by
  decide +kernel

theorem check_10143 : cell_10143.check = true := by
  decide +kernel

theorem check_10144 : cell_10144.check = true := by
  decide +kernel

theorem check_10145 : cell_10145.check = true := by
  decide +kernel

theorem check_10146 : cell_10146.check = true := by
  decide +kernel

theorem check_10147 : cell_10147.check = true := by
  decide +kernel

theorem check_10148 : cell_10148.check = true := by
  decide +kernel

theorem check_10149 : cell_10149.check = true := by
  decide +kernel

def cells : List Cell := [cell_10100, cell_10101, cell_10102, cell_10103, cell_10104, cell_10105, cell_10106, cell_10107, cell_10108, cell_10109, cell_10110, cell_10111, cell_10112, cell_10113, cell_10114, cell_10115, cell_10116, cell_10117, cell_10118, cell_10119, cell_10120, cell_10121, cell_10122, cell_10123, cell_10124, cell_10125, cell_10126, cell_10127, cell_10128, cell_10129, cell_10130, cell_10131, cell_10132, cell_10133, cell_10134, cell_10135, cell_10136, cell_10137, cell_10138, cell_10139, cell_10140, cell_10141, cell_10142, cell_10143, cell_10144, cell_10145, cell_10146, cell_10147, cell_10148, cell_10149]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_10100, check_10101, check_10102, check_10103, check_10104, check_10105, check_10106, check_10107, check_10108, check_10109, check_10110, check_10111, check_10112, check_10113, check_10114, check_10115, check_10116, check_10117, check_10118, check_10119, check_10120, check_10121, check_10122, check_10123, check_10124, check_10125, check_10126, check_10127, check_10128, check_10129, check_10130, check_10131, check_10132, check_10133, check_10134, check_10135, check_10136, check_10137, check_10138, check_10139, check_10140, check_10141, check_10142, check_10143, check_10144, check_10145, check_10146, check_10147, check_10148, check_10149, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0202
