import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0182
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(2991 / 8000 : ℚ), (5983 / 16000 : ℚ)⟩
  branch := .left
  r := (2887419918039 / 4000000000000 : ℚ)
  w := (16112812780573 / 10000000000000 : ℚ)
  center := (2393 / 6400 : ℚ)
  supportValue := (5911103659881033 / 10000000000000000 : ℚ)
  supportSlope := (-3761810532864729 / 1000000000000000 : ℚ)
  oldCenter := (5911103659881033 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_914
  oldLo := (29475000000000001 / 50000000000000000 : ℚ)
  oldHi := (7375000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1384]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9100 : Cell := { cellDefaults with
  r := (4520806419173 / 6250000000000 : ℚ)
  w := (16135218025997 / 10000000000000 : ℚ)
  newCoefficients := coefficients_913
  oldLo := (2953631284916201 / 5000000000000000 : ℚ)
  oldHi := (59150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1387, piece_1388]
}

def cell_9101 : Cell := { cellDefaults with
  domain := ⟨(5983 / 16000 : ℚ), (187 / 500 : ℚ)⟩
  r := (4520806419173 / 6250000000000 : ℚ)
  w := (16135218025997 / 10000000000000 : ℚ)
  center := (11967 / 32000 : ℚ)
  supportValue := (5908753110907963 / 10000000000000000 : ℚ)
  supportSlope := (-1879964845723947 / 500000000000000 : ℚ)
  oldCenter := (5908753110907963 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_913
  oldLo := (2953631284916201 / 5000000000000000 : ℚ)
  oldHi := (7387500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1387]
}

def cell_9102 : Cell := { cellDefaults with
  domain := ⟨(187 / 500 : ℚ), (1197 / 3200 : ℚ)⟩
  r := (72283692492149 / 100000000000000 : ℚ)
  w := (4031933283061 / 2500000000000 : ℚ)
  center := (11969 / 32000 : ℚ)
  supportValue := (739507082519127 / 1250000000000000 : ℚ)
  supportSlope := (-37637198952609197 / 10000000000000000 : ℚ)
  oldCenter := (739507082519127 / 1250000000000000 : ℚ)
  oldLo := (7387500000000001 / 12500000000000000 : ℚ)
  oldHi := (7400000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1388, piece_1389]
}

def cell_9103 : Cell := { cellDefaults with
  domain := ⟨(1197 / 3200 : ℚ), (2993 / 8000 : ℚ)⟩
  r := (72283692492149 / 100000000000000 : ℚ)
  w := (4031933283061 / 2500000000000 : ℚ)
  center := (11971 / 32000 : ℚ)
  supportValue := (1182740983489977 / 2000000000000000 : ℚ)
  supportSlope := (-3761831077330413 / 1000000000000000 : ℚ)
  oldCenter := (1182740983489977 / 2000000000000000 : ℚ)
  oldLo := (7387500000000001 / 12500000000000000 : ℚ)
  oldHi := (59150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1388]
}

def cell_9104 : Cell := { cellDefaults with
  domain := ⟨(2993 / 8000 : ℚ), (5987 / 16000 : ℚ)⟩
  r := (72283692492149 / 100000000000000 : ℚ)
  w := (4031933283061 / 2500000000000 : ℚ)
  center := (11973 / 32000 : ℚ)
  supportValue := (5911354497339477 / 10000000000000000 : ℚ)
  supportSlope := (-37595116031212683 / 10000000000000000 : ℚ)
  oldCenter := (5911354497339477 / 10000000000000000 : ℚ)
  oldLo := (7387500000000001 / 12500000000000000 : ℚ)
  oldHi := (59150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1388]
}

def cell_9105 : Cell := { cellDefaults with
  domain := ⟨(5987 / 16000 : ℚ), (1497 / 4000 : ℚ)⟩
  r := (72283692492149 / 100000000000000 : ℚ)
  w := (4031933283061 / 2500000000000 : ℚ)
  center := (479 / 1280 : ℚ)
  supportValue := (5909005405430001 / 10000000000000000 : ℚ)
  supportSlope := (-375761484621151 / 100000000000000 : ℚ)
  oldCenter := (5909005405430001 / 10000000000000000 : ℚ)
  oldLo := (2953631284916201 / 5000000000000000 : ℚ)
  oldHi := (59150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1387, piece_1388]
}

def cell_9106 : Cell := { cellDefaults with
  domain := ⟨(1497 / 4000 : ℚ), (5989 / 16000 : ℚ)⟩
  r := (72283692492149 / 100000000000000 : ℚ)
  w := (4031933283061 / 2500000000000 : ℚ)
  center := (11977 / 32000 : ℚ)
  supportValue := (5906657598196997 / 10000000000000000 : ℚ)
  supportSlope := (-18776659557211417 / 5000000000000000 : ℚ)
  oldCenter := (5906657598196997 / 10000000000000000 : ℚ)
  oldLo := (29525000000000001 / 50000000000000000 : ℚ)
  oldHi := (7387500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1386, piece_1387]
}

def cell_9107 : Cell := { cellDefaults with
  domain := ⟨(5989 / 16000 : ℚ), (599 / 1600 : ℚ)⟩
  r := (72283692492149 / 100000000000000 : ℚ)
  w := (4031933283061 / 2500000000000 : ℚ)
  center := (11979 / 32000 : ℚ)
  supportValue := (295215557738729 / 500000000000000 : ℚ)
  supportSlope := (-37533788522452483 / 10000000000000000 : ℚ)
  oldCenter := (295215557738729 / 500000000000000 : ℚ)
  oldLo := (7375000000000001 / 12500000000000000 : ℚ)
  oldHi := (2953631284916201 / 5000000000000000 : ℚ)
  oldPieces := [piece_1385, piece_1386]
}

def cell_9108 : Cell := { cellDefaults with
  domain := ⟨(599 / 1600 : ℚ), (5991 / 16000 : ℚ)⟩
  r := (72283692492149 / 100000000000000 : ℚ)
  w := (4031933283061 / 2500000000000 : ℚ)
  center := (11981 / 32000 : ℚ)
  supportValue := (2950982978549273 / 5000000000000000 : ℚ)
  supportSlope := (-3751158159360557 / 1000000000000000 : ℚ)
  oldCenter := (2950982978549273 / 5000000000000000 : ℚ)
  oldLo := (7375000000000001 / 12500000000000000 : ℚ)
  oldHi := (29525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1385]
}

def cell_9109 : Cell := { cellDefaults with
  domain := ⟨(5991 / 16000 : ℚ), (749 / 2000 : ℚ)⟩
  r := (72283692492149 / 100000000000000 : ℚ)
  w := (4031933283061 / 2500000000000 : ℚ)
  center := (11983 / 32000 : ℚ)
  supportValue := (1474905539773683 / 2500000000000000 : ℚ)
  supportSlope := (-37491476958813053 / 10000000000000000 : ℚ)
  oldCenter := (1474905539773683 / 2500000000000000 : ℚ)
  oldHi := (29525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1384, piece_1385]
}

def cell_9110 : Cell := { cellDefaults with
  domain := ⟨(749 / 2000 : ℚ), (5993 / 16000 : ℚ)⟩
  r := (9029319763687 / 12500000000000 : ℚ)
  w := (3224052913747 / 2000000000000 : ℚ)
  center := (2397 / 6400 : ℚ)
  supportValue := (590690615656421 / 1000000000000000 : ℚ)
  supportSlope := (-3753047208178373 / 1000000000000000 : ℚ)
  oldCenter := (590690615656421 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_915
  oldLo := (29525000000000001 / 50000000000000000 : ℚ)
  oldHi := (7387500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1386, piece_1387]
}

def cell_9111 : Cell := { cellDefaults with
  domain := ⟨(5993 / 16000 : ℚ), (2997 / 8000 : ℚ)⟩
  r := (9029319763687 / 12500000000000 : ℚ)
  w := (3224052913747 / 2000000000000 : ℚ)
  center := (11987 / 32000 : ℚ)
  supportValue := (184517536566437 / 312500000000000 : ℚ)
  supportSlope := (-4688812263267117 / 1250000000000000 : ℚ)
  oldCenter := (184517536566437 / 312500000000000 : ℚ)
  newCoefficients := coefficients_915
  oldLo := (7375000000000001 / 12500000000000000 : ℚ)
  oldHi := (2953631284916201 / 5000000000000000 : ℚ)
  oldPieces := [piece_1385, piece_1386]
}

def cell_9112 : Cell := { cellDefaults with
  domain := ⟨(2997 / 8000 : ℚ), (1199 / 3200 : ℚ)⟩
  r := (9029319763687 / 12500000000000 : ℚ)
  w := (3224052913747 / 2000000000000 : ℚ)
  center := (11989 / 32000 : ℚ)
  supportValue := (5902217396410367 / 10000000000000000 : ℚ)
  supportSlope := (-3748881989537267 / 1000000000000000 : ℚ)
  oldCenter := (5902217396410367 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_915
  oldLo := (7375000000000001 / 12500000000000000 : ℚ)
  oldHi := (29525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1385]
}

def cell_9113 : Cell := { cellDefaults with
  domain := ⟨(1199 / 3200 : ℚ), (1499 / 4000 : ℚ)⟩
  r := (9029319763687 / 12500000000000 : ℚ)
  w := (3224052913747 / 2000000000000 : ℚ)
  center := (11991 / 32000 : ℚ)
  supportValue := (1179975010088187 / 2000000000000000 : ℚ)
  supportSlope := (-1873413285363057 / 500000000000000 : ℚ)
  oldCenter := (1179975010088187 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_915
  oldHi := (29525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1384, piece_1385]
}

def cell_9114 : Cell := { cellDefaults with
  domain := ⟨(1499 / 4000 : ℚ), (5997 / 16000 : ℚ)⟩
  r := (9029319763687 / 12500000000000 : ℚ)
  w := (3224052913747 / 2000000000000 : ℚ)
  center := (11993 / 32000 : ℚ)
  supportValue := (5897533877201853 / 10000000000000000 : ℚ)
  supportSlope := (-7489444903455933 / 2000000000000000 : ℚ)
  oldCenter := (5897533877201853 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_915
  oldPieces := [piece_1384]
}

def cell_9115 : Cell := { cellDefaults with
  domain := ⟨(5997 / 16000 : ℚ), (2999 / 8000 : ℚ)⟩
  r := (9029319763687 / 12500000000000 : ℚ)
  w := (3224052913747 / 2000000000000 : ℚ)
  center := (2399 / 6400 : ℚ)
  supportValue := (2947597072804411 / 5000000000000000 : ℚ)
  supportSlope := (-467825955625667 / 125000000000000 : ℚ)
  oldCenter := (2947597072804411 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_915
  oldLo := (7362500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1383, piece_1384]
}

def cell_9116 : Cell := { cellDefaults with
  domain := ⟨(2999 / 8000 : ℚ), (5999 / 16000 : ℚ)⟩
  r := (9029319763687 / 12500000000000 : ℚ)
  w := (3224052913747 / 2000000000000 : ℚ)
  center := (11997 / 32000 : ℚ)
  supportValue := (1178571118546577 / 2000000000000000 : ℚ)
  supportSlope := (-18702843395637103 / 5000000000000000 : ℚ)
  oldCenter := (1178571118546577 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_915
  oldLo := (7362500000000001 / 12500000000000000 : ℚ)
  oldHi := (29475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1383]
}

def cell_9117 : Cell := { cellDefaults with
  domain := ⟨(5999 / 16000 : ℚ), (3 / 8 : ℚ)⟩
  r := (9029319763687 / 12500000000000 : ℚ)
  w := (3224052913747 / 2000000000000 : ℚ)
  center := (11999 / 32000 : ℚ)
  supportValue := (5890518456484419 / 10000000000000000 : ℚ)
  supportSlope := (-1869196572526377 / 500000000000000 : ℚ)
  oldCenter := (5890518456484419 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_915
  oldLo := (29425000000000001 / 50000000000000000 : ℚ)
  oldHi := (29475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1382, piece_1383]
}

def cell_9118 : Cell := { cellDefaults with
  domain := ⟨(3 / 8 : ℚ), (3750279329608939 / 10000000000000000 : ℚ)⟩
  center := (7500279329608939 / 20000000000000000 : ℚ)
  supportValue := (2949214367853339 / 5000000000000000 : ℚ)
  supportSlope := (-3743082901646997 / 1000000000000000 : ℚ)
  oldCenter := (2949214367853339 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_916
  oldPieces := [piece_1384]
}

def cell_9119 : Cell := { cellDefaults with
  domain := ⟨(3750279329608939 / 10000000000000000 : ℚ), (15003337988826817 / 40000000000000000 : ℚ)⟩
  center := (30004455307262573 / 80000000000000000 : ℚ)
  supportValue := (2948434219844671 / 5000000000000000 : ℚ)
  supportSlope := (-3741545333985911 / 1000000000000000 : ℚ)
  oldCenter := (2948434219844671 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_917
  oldPieces := [piece_1384]
}

def cell_9120 : Cell := { cellDefaults with
  domain := ⟨(15003337988826817 / 40000000000000000 : ℚ), (7502779329608939 / 20000000000000000 : ℚ)⟩
  center := (6001779329608939 / 16000000000000000 : ℚ)
  supportValue := (589479179602941 / 1000000000000000 : ℚ)
  supportSlope := (-149591043695219 / 40000000000000 : ℚ)
  oldCenter := (589479179602941 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_917
  oldLo := (7362500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1383, piece_1384]
}

def cell_9121 : Cell := { cellDefaults with
  domain := ⟨(7502779329608939 / 20000000000000000 : ℚ), (15007779329608939 / 40000000000000000 : ℚ)⟩
  center := (30013337988826817 / 80000000000000000 : ℚ)
  supportValue := (2946358029534241 / 5000000000000000 : ℚ)
  supportSlope := (-9344787237974329 / 2500000000000000 : ℚ)
  oldCenter := (2946358029534241 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_917
  oldLo := (7362500000000001 / 12500000000000000 : ℚ)
  oldHi := (29475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1383]
}

def cell_9122 : Cell := { cellDefaults with
  domain := ⟨(15007779329608939 / 40000000000000000 : ℚ), (1501 / 4000 : ℚ)⟩
  center := (30017779329608939 / 80000000000000000 : ℚ)
  supportValue := (5890641456064523 / 10000000000000000 : ℚ)
  supportSlope := (-116748775297623 / 31250000000000 : ℚ)
  oldCenter := (5890641456064523 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_917
  oldLo := (29425000000000001 / 50000000000000000 : ℚ)
  oldHi := (29475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1382, piece_1383]
}

def cell_9123 : Cell := { cellDefaults with
  domain := ⟨(1501 / 4000 : ℚ), (1201 / 3200 : ℚ)⟩
  center := (12009 / 32000 : ℚ)
  supportValue := (2944218712882519 / 5000000000000000 : ℚ)
  supportSlope := (-18670803833717997 / 5000000000000000 : ℚ)
  oldCenter := (2944218712882519 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_917
  oldLo := (29425000000000001 / 50000000000000000 : ℚ)
  oldHi := (7362500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1382]
}

def cell_9124 : Cell := { cellDefaults with
  domain := ⟨(1201 / 3200 : ℚ), (3003 / 8000 : ℚ)⟩
  center := (12011 / 32000 : ℚ)
  supportValue := (1177220858497227 / 2000000000000000 : ℚ)
  supportSlope := (-932969137577011 / 250000000000000 : ℚ)
  oldCenter := (1177220858497227 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_917
  oldLo := (7350000000000001 / 12500000000000000 : ℚ)
  oldHi := (7362500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1381, piece_1382]
}

def cell_9125 : Cell := { cellDefaults with
  domain := ⟨(3003 / 8000 : ℚ), (6007 / 16000 : ℚ)⟩
  center := (12013 / 32000 : ℚ)
  supportValue := (5883772443092037 / 10000000000000000 : ℚ)
  supportSlope := (-1865013325613063 / 500000000000000 : ℚ)
  oldCenter := (5883772443092037 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_917
  oldLo := (7350000000000001 / 12500000000000000 : ℚ)
  oldHi := (29425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1381]
}

def cell_9126 : Cell := { cellDefaults with
  domain := ⟨(6007 / 16000 : ℚ), (751 / 2000 : ℚ)⟩
  center := (2403 / 6400 : ℚ)
  supportValue := (5881441893081731 / 10000000000000000 : ℚ)
  supportSlope := (-1164916163822749 / 312500000000000 : ℚ)
  oldCenter := (5881441893081731 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_917
  oldLo := (7350000000000001 / 12500000000000000 : ℚ)
  oldHi := (29425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1381]
}

def cell_9127 : Cell := { cellDefaults with
  domain := ⟨(751 / 2000 : ℚ), (6009 / 16000 : ℚ)⟩
  r := (72136511727617 / 100000000000000 : ℚ)
  w := (16105376379933 / 10000000000000 : ℚ)
  center := (12017 / 32000 : ℚ)
  supportValue := (5888687718389293 / 10000000000000000 : ℚ)
  supportSlope := (-3731893418372323 / 1000000000000000 : ℚ)
  oldCenter := (5888687718389293 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_918
  oldLo := (29425000000000001 / 50000000000000000 : ℚ)
  oldHi := (7362500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1382]
}

def cell_9128 : Cell := { cellDefaults with
  domain := ⟨(6009 / 16000 : ℚ), (601 / 1600 : ℚ)⟩
  r := (72136511727617 / 100000000000000 : ℚ)
  w := (16105376379933 / 10000000000000 : ℚ)
  center := (12019 / 32000 : ℚ)
  supportValue := (1471589000212557 / 2500000000000000 : ℚ)
  supportSlope := (-37296010460536877 / 10000000000000000 : ℚ)
  oldCenter := (1471589000212557 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_918
  oldLo := (29425000000000001 / 50000000000000000 : ℚ)
  oldHi := (7362500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1382]
}

def cell_9129 : Cell := { cellDefaults with
  domain := ⟨(601 / 1600 : ℚ), (6011 / 16000 : ℚ)⟩
  r := (72136511727617 / 100000000000000 : ℚ)
  w := (16105376379933 / 10000000000000 : ℚ)
  center := (12021 / 32000 : ℚ)
  supportValue := (5884025595515623 / 10000000000000000 : ℚ)
  supportSlope := (-9319327011674261 / 2500000000000000 : ℚ)
  oldCenter := (5884025595515623 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_918
  oldLo := (7350000000000001 / 12500000000000000 : ℚ)
  oldHi := (7362500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1381, piece_1382]
}

def cell_9130 : Cell := { cellDefaults with
  domain := ⟨(6011 / 16000 : ℚ), (1503 / 4000 : ℚ)⟩
  r := (72136511727617 / 100000000000000 : ℚ)
  w := (16105376379933 / 10000000000000 : ℚ)
  center := (12023 / 32000 : ℚ)
  supportValue := (2940848227919021 / 5000000000000000 : ℚ)
  supportSlope := (-18627386761203013 / 5000000000000000 : ℚ)
  oldCenter := (2940848227919021 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_918
  oldLo := (7350000000000001 / 12500000000000000 : ℚ)
  oldHi := (29425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1381]
}

def cell_9131 : Cell := { cellDefaults with
  domain := ⟨(1503 / 4000 : ℚ), (6013 / 16000 : ℚ)⟩
  r := (72136511727617 / 100000000000000 : ℚ)
  w := (16105376379933 / 10000000000000 : ℚ)
  center := (481 / 1280 : ℚ)
  supportValue := (5879368669171363 / 10000000000000000 : ℚ)
  supportSlope := (-372354254906071 / 100000000000000 : ℚ)
  oldCenter := (5879368669171363 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_918
  oldLo := (29375000000000001 / 50000000000000000 : ℚ)
  oldHi := (29425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1380, piece_1381]
}

def cell_9132 : Cell := { cellDefaults with
  domain := ⟨(6013 / 16000 : ℚ), (3007 / 8000 : ℚ)⟩
  r := (72136511727617 / 100000000000000 : ℚ)
  w := (16105376379933 / 10000000000000 : ℚ)
  center := (12027 / 32000 : ℚ)
  supportValue := (5877042103983653 / 10000000000000000 : ℚ)
  supportSlope := (-1860679930357989 / 500000000000000 : ℚ)
  oldCenter := (5877042103983653 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_918
  oldLo := (29375000000000001 / 50000000000000000 : ℚ)
  oldHi := (7350000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1380]
}

def cell_9133 : Cell := { cellDefaults with
  domain := ⟨(3007 / 8000 : ℚ), (1203 / 3200 : ℚ)⟩
  r := (72136511727617 / 100000000000000 : ℚ)
  w := (16105376379933 / 10000000000000 : ℚ)
  center := (12029 / 32000 : ℚ)
  supportValue := (1174943386503753 / 2000000000000000 : ℚ)
  supportSlope := (-7438719407595329 / 2000000000000000 : ℚ)
  oldCenter := (1174943386503753 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_918
  oldLo := (7337500000000001 / 12500000000000000 : ℚ)
  oldHi := (7350000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1379, piece_1380]
}

def cell_9134 : Cell := { cellDefaults with
  domain := ⟨(1203 / 3200 : ℚ), (47 / 125 : ℚ)⟩
  r := (72136511727617 / 100000000000000 : ℚ)
  w := (16105376379933 / 10000000000000 : ℚ)
  center := (12031 / 32000 : ℚ)
  supportValue := (1174478587604897 / 2000000000000000 : ℚ)
  supportSlope := (-3717247923095357 / 1000000000000000 : ℚ)
  oldCenter := (1174478587604897 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_918
  oldLo := (7337500000000001 / 12500000000000000 : ℚ)
  oldHi := (29375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1379]
}

def cell_9135 : Cell := { cellDefaults with
  domain := ⟨(47 / 125 : ℚ), (6017 / 16000 : ℚ)⟩
  r := (1441751991931 / 2000000000000 : ℚ)
  w := (8048978400517 / 5000000000000 : ℚ)
  center := (12033 / 32000 : ℚ)
  supportValue := (5879619449828631 / 10000000000000000 : ℚ)
  supportSlope := (-232577138436163 / 62500000000000 : ℚ)
  oldCenter := (5879619449828631 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_919
  oldLo := (29375000000000001 / 50000000000000000 : ℚ)
  oldHi := (29425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1380, piece_1381]
}

def cell_9136 : Cell := { cellDefaults with
  domain := ⟨(6017 / 16000 : ℚ), (3009 / 8000 : ℚ)⟩
  r := (1441751991931 / 2000000000000 : ℚ)
  w := (8048978400517 / 5000000000000 : ℚ)
  center := (2407 / 6400 : ℚ)
  supportValue := (23509177180809 / 40000000000000 : ℚ)
  supportSlope := (-3719105125092881 / 1000000000000000 : ℚ)
  oldCenter := (23509177180809 / 40000000000000 : ℚ)
  newCoefficients := coefficients_919
  oldLo := (29375000000000001 / 50000000000000000 : ℚ)
  oldHi := (7350000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1380]
}

def cell_9137 : Cell := { cellDefaults with
  domain := ⟨(3009 / 8000 : ℚ), (6019 / 16000 : ℚ)⟩
  r := (1441751991931 / 2000000000000 : ℚ)
  w := (8048978400517 / 5000000000000 : ℚ)
  center := (12037 / 32000 : ℚ)
  supportValue := (2937485281412787 / 5000000000000000 : ℚ)
  supportSlope := (-232316205793337 / 62500000000000 : ℚ)
  oldCenter := (2937485281412787 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_919
  oldLo := (7337500000000001 / 12500000000000000 : ℚ)
  oldHi := (7350000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1379, piece_1380]
}

def cell_9138 : Cell := { cellDefaults with
  domain := ⟨(6019 / 16000 : ℚ), (301 / 800 : ℚ)⟩
  r := (1441751991931 / 2000000000000 : ℚ)
  w := (8048978400517 / 5000000000000 : ℚ)
  center := (12039 / 32000 : ℚ)
  supportValue := (5872647973530051 / 10000000000000000 : ℚ)
  supportSlope := (-18575008815933103 / 5000000000000000 : ℚ)
  oldCenter := (5872647973530051 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_919
  oldLo := (7337500000000001 / 12500000000000000 : ℚ)
  oldHi := (29375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1379]
}

def cell_9139 : Cell := { cellDefaults with
  domain := ⟨(301 / 800 : ℚ), (6021 / 16000 : ℚ)⟩
  r := (1441751991931 / 2000000000000 : ℚ)
  w := (8048978400517 / 5000000000000 : ℚ)
  center := (12041 / 32000 : ℚ)
  supportValue := (1467581702217251 / 2500000000000000 : ℚ)
  supportSlope := (-1485155330377097 / 400000000000000 : ℚ)
  oldCenter := (1467581702217251 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_919
  oldLo := (29325000000000001 / 50000000000000000 : ℚ)
  oldHi := (29375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1378, piece_1379]
}

def cell_9140 : Cell := { cellDefaults with
  domain := ⟨(6021 / 16000 : ℚ), (3011 / 8000 : ℚ)⟩
  r := (1441751991931 / 2000000000000 : ℚ)
  w := (8048978400517 / 5000000000000 : ℚ)
  center := (12043 / 32000 : ℚ)
  supportValue := (5868006821586209 / 10000000000000000 : ℚ)
  supportSlope := (-18554519600986197 / 5000000000000000 : ℚ)
  oldCenter := (5868006821586209 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_919
  oldLo := (29325000000000001 / 50000000000000000 : ℚ)
  oldHi := (7337500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1378]
}

def cell_9141 : Cell := { cellDefaults with
  domain := ⟨(3011 / 8000 : ℚ), (6023 / 16000 : ℚ)⟩
  r := (1441751991931 / 2000000000000 : ℚ)
  w := (8048978400517 / 5000000000000 : ℚ)
  center := (2409 / 6400 : ℚ)
  supportValue := (1466422054341179 / 2500000000000000 : ℚ)
  supportSlope := (-7417442866127999 / 2000000000000000 : ℚ)
  oldCenter := (1466422054341179 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_919
  oldLo := (7325000000000001 / 12500000000000000 : ℚ)
  oldHi := (7337500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1377, piece_1378]
}

def cell_9142 : Cell := { cellDefaults with
  domain := ⟨(6023 / 16000 : ℚ), (753 / 2000 : ℚ)⟩
  r := (1441751991931 / 2000000000000 : ℚ)
  w := (8048978400517 / 5000000000000 : ℚ)
  center := (12047 / 32000 : ℚ)
  supportValue := (5863370833383407 / 10000000000000000 : ℚ)
  supportSlope := (-11583786195557 / 3125000000000 : ℚ)
  oldCenter := (5863370833383407 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_919
  oldLo := (7325000000000001 / 12500000000000000 : ℚ)
  oldHi := (29325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1377]
}

def cell_9143 : Cell := { cellDefaults with
  domain := ⟨(753 / 2000 : ℚ), (241 / 640 : ℚ)⟩
  r := (72038761558869 / 100000000000000 : ℚ)
  w := (16090554304407 / 10000000000000 : ℚ)
  center := (12049 / 32000 : ℚ)
  supportValue := (5870577889260977 / 10000000000000000 : ℚ)
  supportSlope := (-7421175625680121 / 2000000000000000 : ℚ)
  oldCenter := (5870577889260977 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_920
  oldLo := (29325000000000001 / 50000000000000000 : ℚ)
  oldHi := (29375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1378, piece_1379]
}

def cell_9144 : Cell := { cellDefaults with
  domain := ⟨(241 / 640 : ℚ), (3013 / 8000 : ℚ)⟩
  r := (72038761558869 / 100000000000000 : ℚ)
  w := (16090554304407 / 10000000000000 : ℚ)
  center := (12051 / 32000 : ℚ)
  supportValue := (586825933846661 / 1000000000000000 : ℚ)
  supportSlope := (-1854328672349581 / 500000000000000 : ℚ)
  oldCenter := (586825933846661 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_920
  oldLo := (29325000000000001 / 50000000000000000 : ℚ)
  oldHi := (7337500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1378]
}

def cell_9145 : Cell := { cellDefaults with
  domain := ⟨(3013 / 8000 : ℚ), (6027 / 16000 : ℚ)⟩
  r := (72038761558869 / 100000000000000 : ℚ)
  w := (16090554304407 / 10000000000000 : ℚ)
  center := (12053 / 32000 : ℚ)
  supportValue := (2932971068503023 / 5000000000000000 : ℚ)
  supportSlope := (-7412857562052011 / 2000000000000000 : ℚ)
  oldCenter := (2932971068503023 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_920
  oldLo := (7325000000000001 / 12500000000000000 : ℚ)
  oldHi := (7337500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1377, piece_1378]
}

def cell_9146 : Cell := { cellDefaults with
  domain := ⟨(6027 / 16000 : ℚ), (1507 / 4000 : ℚ)⟩
  r := (72038761558869 / 100000000000000 : ℚ)
  w := (16090554304407 / 10000000000000 : ℚ)
  center := (2411 / 6400 : ℚ)
  supportValue := (1465906546150467 / 2500000000000000 : ℚ)
  supportSlope := (-23153584880653 / 6250000000000 : ℚ)
  oldCenter := (1465906546150467 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_920
  oldLo := (7325000000000001 / 12500000000000000 : ℚ)
  oldHi := (29325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1377]
}

def cell_9147 : Cell := { cellDefaults with
  domain := ⟨(1507 / 4000 : ℚ), (6029 / 16000 : ℚ)⟩
  r := (72038761558869 / 100000000000000 : ℚ)
  w := (16090554304407 / 10000000000000 : ℚ)
  center := (12057 / 32000 : ℚ)
  supportValue := (5861311534784089 / 10000000000000000 : ℚ)
  supportSlope := (-925576046761023 / 250000000000000 : ℚ)
  oldCenter := (5861311534784089 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_920
  oldLo := (7325000000000001 / 12500000000000000 : ℚ)
  oldHi := (29325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1377]
}

def cell_9148 : Cell := { cellDefaults with
  domain := ⟨(6029 / 16000 : ℚ), (603 / 1600 : ℚ)⟩
  r := (72038761558869 / 100000000000000 : ℚ)
  w := (16090554304407 / 10000000000000 : ℚ)
  center := (12059 / 32000 : ℚ)
  supportValue := (292949908911601 / 500000000000000 : ℚ)
  supportSlope := (-18502324653137947 / 5000000000000000 : ℚ)
  oldCenter := (292949908911601 / 500000000000000 : ℚ)
  newCoefficients := coefficients_920
  oldLo := (29275000000000001 / 50000000000000000 : ℚ)
  oldHi := (29325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1376, piece_1377]
}

def cell_9149 : Cell := { cellDefaults with
  domain := ⟨(603 / 1600 : ℚ), (6031 / 16000 : ℚ)⟩
  r := (72038761558869 / 100000000000000 : ℚ)
  w := (16090554304407 / 10000000000000 : ℚ)
  center := (12061 / 32000 : ℚ)
  supportValue := (14641715191563 / 25000000000000 : ℚ)
  supportSlope := (-18491140943091011 / 5000000000000000 : ℚ)
  oldCenter := (14641715191563 / 25000000000000 : ℚ)
  newCoefficients := coefficients_920
  oldLo := (29275000000000001 / 50000000000000000 : ℚ)
  oldHi := (7325000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1376]
}

theorem check_9100 : cell_9100.check = true := by
  decide +kernel

theorem check_9101 : cell_9101.check = true := by
  decide +kernel

theorem check_9102 : cell_9102.check = true := by
  decide +kernel

theorem check_9103 : cell_9103.check = true := by
  decide +kernel

theorem check_9104 : cell_9104.check = true := by
  decide +kernel

theorem check_9105 : cell_9105.check = true := by
  decide +kernel

theorem check_9106 : cell_9106.check = true := by
  decide +kernel

theorem check_9107 : cell_9107.check = true := by
  decide +kernel

theorem check_9108 : cell_9108.check = true := by
  decide +kernel

theorem check_9109 : cell_9109.check = true := by
  decide +kernel

theorem check_9110 : cell_9110.check = true := by
  decide +kernel

theorem check_9111 : cell_9111.check = true := by
  decide +kernel

theorem check_9112 : cell_9112.check = true := by
  decide +kernel

theorem check_9113 : cell_9113.check = true := by
  decide +kernel

theorem check_9114 : cell_9114.check = true := by
  decide +kernel

theorem check_9115 : cell_9115.check = true := by
  decide +kernel

theorem check_9116 : cell_9116.check = true := by
  decide +kernel

theorem check_9117 : cell_9117.check = true := by
  decide +kernel

theorem check_9118 : cell_9118.check = true := by
  decide +kernel

theorem check_9119 : cell_9119.check = true := by
  decide +kernel

theorem check_9120 : cell_9120.check = true := by
  decide +kernel

theorem check_9121 : cell_9121.check = true := by
  decide +kernel

theorem check_9122 : cell_9122.check = true := by
  decide +kernel

theorem check_9123 : cell_9123.check = true := by
  decide +kernel

theorem check_9124 : cell_9124.check = true := by
  decide +kernel

theorem check_9125 : cell_9125.check = true := by
  decide +kernel

theorem check_9126 : cell_9126.check = true := by
  decide +kernel

theorem check_9127 : cell_9127.check = true := by
  decide +kernel

theorem check_9128 : cell_9128.check = true := by
  decide +kernel

theorem check_9129 : cell_9129.check = true := by
  decide +kernel

theorem check_9130 : cell_9130.check = true := by
  decide +kernel

theorem check_9131 : cell_9131.check = true := by
  decide +kernel

theorem check_9132 : cell_9132.check = true := by
  decide +kernel

theorem check_9133 : cell_9133.check = true := by
  decide +kernel

theorem check_9134 : cell_9134.check = true := by
  decide +kernel

theorem check_9135 : cell_9135.check = true := by
  decide +kernel

theorem check_9136 : cell_9136.check = true := by
  decide +kernel

theorem check_9137 : cell_9137.check = true := by
  decide +kernel

theorem check_9138 : cell_9138.check = true := by
  decide +kernel

theorem check_9139 : cell_9139.check = true := by
  decide +kernel

theorem check_9140 : cell_9140.check = true := by
  decide +kernel

theorem check_9141 : cell_9141.check = true := by
  decide +kernel

theorem check_9142 : cell_9142.check = true := by
  decide +kernel

theorem check_9143 : cell_9143.check = true := by
  decide +kernel

theorem check_9144 : cell_9144.check = true := by
  decide +kernel

theorem check_9145 : cell_9145.check = true := by
  decide +kernel

theorem check_9146 : cell_9146.check = true := by
  decide +kernel

theorem check_9147 : cell_9147.check = true := by
  decide +kernel

theorem check_9148 : cell_9148.check = true := by
  decide +kernel

theorem check_9149 : cell_9149.check = true := by
  decide +kernel

def cells : List Cell := [cell_9100, cell_9101, cell_9102, cell_9103, cell_9104, cell_9105, cell_9106, cell_9107, cell_9108, cell_9109, cell_9110, cell_9111, cell_9112, cell_9113, cell_9114, cell_9115, cell_9116, cell_9117, cell_9118, cell_9119, cell_9120, cell_9121, cell_9122, cell_9123, cell_9124, cell_9125, cell_9126, cell_9127, cell_9128, cell_9129, cell_9130, cell_9131, cell_9132, cell_9133, cell_9134, cell_9135, cell_9136, cell_9137, cell_9138, cell_9139, cell_9140, cell_9141, cell_9142, cell_9143, cell_9144, cell_9145, cell_9146, cell_9147, cell_9148, cell_9149]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9100, check_9101, check_9102, check_9103, check_9104, check_9105, check_9106, check_9107, check_9108, check_9109, check_9110, check_9111, check_9112, check_9113, check_9114, check_9115, check_9116, check_9117, check_9118, check_9119, check_9120, check_9121, check_9122, check_9123, check_9124, check_9125, check_9126, check_9127, check_9128, check_9129, check_9130, check_9131, check_9132, check_9133, check_9134, check_9135, check_9136, check_9137, check_9138, check_9139, check_9140, check_9141, check_9142, check_9143, check_9144, check_9145, check_9146, check_9147, check_9148, check_9149, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0182

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0182
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0182
open AnalyticBounds.ExpressionCertificate

theorem linked_9100 : Linked cell_9100 pieces := by
  apply Linked.of_piece piece_913 piece_913_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9100, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1387_mem, piece_1388_mem⟩

theorem linked_9101 : Linked cell_9101 pieces := by
  apply Linked.of_piece piece_913 piece_913_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9101, List.cons_subset, List.nil_subset, and_true]
  exact piece_1387_mem

theorem linked_9102 : Linked cell_9102 pieces := by
  apply Linked.of_piece piece_914 piece_914_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9102, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1388_mem, piece_1389_mem⟩

theorem linked_9103 : Linked cell_9103 pieces := by
  apply Linked.of_piece piece_914 piece_914_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9103, List.cons_subset, List.nil_subset, and_true]
  exact piece_1388_mem

theorem linked_9104 : Linked cell_9104 pieces := by
  apply Linked.of_piece piece_914 piece_914_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9104, List.cons_subset, List.nil_subset, and_true]
  exact piece_1388_mem

theorem linked_9105 : Linked cell_9105 pieces := by
  apply Linked.of_piece piece_914 piece_914_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9105, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1387_mem, piece_1388_mem⟩

theorem linked_9106 : Linked cell_9106 pieces := by
  apply Linked.of_piece piece_914 piece_914_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9106, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1386_mem, piece_1387_mem⟩

theorem linked_9107 : Linked cell_9107 pieces := by
  apply Linked.of_piece piece_914 piece_914_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9107, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1385_mem, piece_1386_mem⟩

theorem linked_9108 : Linked cell_9108 pieces := by
  apply Linked.of_piece piece_914 piece_914_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9108, List.cons_subset, List.nil_subset, and_true]
  exact piece_1385_mem

theorem linked_9109 : Linked cell_9109 pieces := by
  apply Linked.of_piece piece_914 piece_914_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9109, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1384_mem, piece_1385_mem⟩

theorem linked_9110 : Linked cell_9110 pieces := by
  apply Linked.of_piece piece_915 piece_915_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9110, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1386_mem, piece_1387_mem⟩

theorem linked_9111 : Linked cell_9111 pieces := by
  apply Linked.of_piece piece_915 piece_915_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9111, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1385_mem, piece_1386_mem⟩

theorem linked_9112 : Linked cell_9112 pieces := by
  apply Linked.of_piece piece_915 piece_915_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9112, List.cons_subset, List.nil_subset, and_true]
  exact piece_1385_mem

theorem linked_9113 : Linked cell_9113 pieces := by
  apply Linked.of_piece piece_915 piece_915_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9113, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1384_mem, piece_1385_mem⟩

theorem linked_9114 : Linked cell_9114 pieces := by
  apply Linked.of_piece piece_915 piece_915_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9114, List.cons_subset, List.nil_subset, and_true]
  exact piece_1384_mem

theorem linked_9115 : Linked cell_9115 pieces := by
  apply Linked.of_piece piece_915 piece_915_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9115, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1383_mem, piece_1384_mem⟩

theorem linked_9116 : Linked cell_9116 pieces := by
  apply Linked.of_piece piece_915 piece_915_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9116, List.cons_subset, List.nil_subset, and_true]
  exact piece_1383_mem

theorem linked_9117 : Linked cell_9117 pieces := by
  apply Linked.of_piece piece_915 piece_915_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9117, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1382_mem, piece_1383_mem⟩

theorem linked_9118 : Linked cell_9118 pieces := by
  apply Linked.of_piece piece_916 piece_916_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9118, List.cons_subset, List.nil_subset, and_true]
  exact piece_1384_mem

theorem linked_9119 : Linked cell_9119 pieces := by
  apply Linked.of_piece piece_917 piece_917_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9119, List.cons_subset, List.nil_subset, and_true]
  exact piece_1384_mem

theorem linked_9120 : Linked cell_9120 pieces := by
  apply Linked.of_piece piece_917 piece_917_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9120, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1383_mem, piece_1384_mem⟩

theorem linked_9121 : Linked cell_9121 pieces := by
  apply Linked.of_piece piece_917 piece_917_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9121, List.cons_subset, List.nil_subset, and_true]
  exact piece_1383_mem

theorem linked_9122 : Linked cell_9122 pieces := by
  apply Linked.of_piece piece_917 piece_917_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9122, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1382_mem, piece_1383_mem⟩

theorem linked_9123 : Linked cell_9123 pieces := by
  apply Linked.of_piece piece_917 piece_917_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9123, List.cons_subset, List.nil_subset, and_true]
  exact piece_1382_mem

theorem linked_9124 : Linked cell_9124 pieces := by
  apply Linked.of_piece piece_917 piece_917_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9124, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1381_mem, piece_1382_mem⟩

theorem linked_9125 : Linked cell_9125 pieces := by
  apply Linked.of_piece piece_917 piece_917_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9125, List.cons_subset, List.nil_subset, and_true]
  exact piece_1381_mem

theorem linked_9126 : Linked cell_9126 pieces := by
  apply Linked.of_piece piece_917 piece_917_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9126, List.cons_subset, List.nil_subset, and_true]
  exact piece_1381_mem

theorem linked_9127 : Linked cell_9127 pieces := by
  apply Linked.of_piece piece_918 piece_918_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9127, List.cons_subset, List.nil_subset, and_true]
  exact piece_1382_mem

theorem linked_9128 : Linked cell_9128 pieces := by
  apply Linked.of_piece piece_918 piece_918_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9128, List.cons_subset, List.nil_subset, and_true]
  exact piece_1382_mem

theorem linked_9129 : Linked cell_9129 pieces := by
  apply Linked.of_piece piece_918 piece_918_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9129, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1381_mem, piece_1382_mem⟩

theorem linked_9130 : Linked cell_9130 pieces := by
  apply Linked.of_piece piece_918 piece_918_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9130, List.cons_subset, List.nil_subset, and_true]
  exact piece_1381_mem

theorem linked_9131 : Linked cell_9131 pieces := by
  apply Linked.of_piece piece_918 piece_918_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9131, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1380_mem, piece_1381_mem⟩

theorem linked_9132 : Linked cell_9132 pieces := by
  apply Linked.of_piece piece_918 piece_918_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9132, List.cons_subset, List.nil_subset, and_true]
  exact piece_1380_mem

theorem linked_9133 : Linked cell_9133 pieces := by
  apply Linked.of_piece piece_918 piece_918_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9133, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1379_mem, piece_1380_mem⟩

theorem linked_9134 : Linked cell_9134 pieces := by
  apply Linked.of_piece piece_918 piece_918_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9134, List.cons_subset, List.nil_subset, and_true]
  exact piece_1379_mem

theorem linked_9135 : Linked cell_9135 pieces := by
  apply Linked.of_piece piece_919 piece_919_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9135, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1380_mem, piece_1381_mem⟩

theorem linked_9136 : Linked cell_9136 pieces := by
  apply Linked.of_piece piece_919 piece_919_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9136, List.cons_subset, List.nil_subset, and_true]
  exact piece_1380_mem

theorem linked_9137 : Linked cell_9137 pieces := by
  apply Linked.of_piece piece_919 piece_919_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9137, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1379_mem, piece_1380_mem⟩

theorem linked_9138 : Linked cell_9138 pieces := by
  apply Linked.of_piece piece_919 piece_919_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9138, List.cons_subset, List.nil_subset, and_true]
  exact piece_1379_mem

theorem linked_9139 : Linked cell_9139 pieces := by
  apply Linked.of_piece piece_919 piece_919_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9139, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1378_mem, piece_1379_mem⟩

theorem linked_9140 : Linked cell_9140 pieces := by
  apply Linked.of_piece piece_919 piece_919_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9140, List.cons_subset, List.nil_subset, and_true]
  exact piece_1378_mem

theorem linked_9141 : Linked cell_9141 pieces := by
  apply Linked.of_piece piece_919 piece_919_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9141, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1377_mem, piece_1378_mem⟩

theorem linked_9142 : Linked cell_9142 pieces := by
  apply Linked.of_piece piece_919 piece_919_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9142, List.cons_subset, List.nil_subset, and_true]
  exact piece_1377_mem

theorem linked_9143 : Linked cell_9143 pieces := by
  apply Linked.of_piece piece_920 piece_920_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9143, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1378_mem, piece_1379_mem⟩

theorem linked_9144 : Linked cell_9144 pieces := by
  apply Linked.of_piece piece_920 piece_920_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9144, List.cons_subset, List.nil_subset, and_true]
  exact piece_1378_mem

theorem linked_9145 : Linked cell_9145 pieces := by
  apply Linked.of_piece piece_920 piece_920_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9145, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1377_mem, piece_1378_mem⟩

theorem linked_9146 : Linked cell_9146 pieces := by
  apply Linked.of_piece piece_920 piece_920_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9146, List.cons_subset, List.nil_subset, and_true]
  exact piece_1377_mem

theorem linked_9147 : Linked cell_9147 pieces := by
  apply Linked.of_piece piece_920 piece_920_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9147, List.cons_subset, List.nil_subset, and_true]
  exact piece_1377_mem

theorem linked_9148 : Linked cell_9148 pieces := by
  apply Linked.of_piece piece_920 piece_920_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9148, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1376_mem, piece_1377_mem⟩

theorem linked_9149 : Linked cell_9149 pieces := by
  apply Linked.of_piece piece_920 piece_920_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9149, List.cons_subset, List.nil_subset, and_true]
  exact piece_1376_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0182.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0182.cells,List.forall_mem_cons]
  exact ⟨linked_9100, linked_9101, linked_9102, linked_9103, linked_9104, linked_9105, linked_9106, linked_9107, linked_9108, linked_9109, linked_9110, linked_9111, linked_9112, linked_9113, linked_9114, linked_9115, linked_9116, linked_9117, linked_9118, linked_9119, linked_9120, linked_9121, linked_9122, linked_9123, linked_9124, linked_9125, linked_9126, linked_9127, linked_9128, linked_9129, linked_9130, linked_9131, linked_9132, linked_9133, linked_9134, linked_9135, linked_9136, linked_9137, linked_9138, linked_9139, linked_9140, linked_9141, linked_9142, linked_9143, linked_9144, linked_9145, linked_9146, linked_9147, linked_9148, linked_9149, by simp⟩

theorem covered : covers (2991 / 8000 : ℚ) (6031 / 16000 : ℚ)
    (SourceCertificates.Chunk0182.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0182
