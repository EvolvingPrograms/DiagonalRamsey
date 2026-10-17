import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0183
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(6031 / 16000 : ℚ), (377 / 1000 : ℚ)⟩
  branch := .left
  r := (35994998120001 / 50000000000000 : ℚ)
  w := (3216633496867 / 2000000000000 : ℚ)
  center := (12063 / 32000 : ℚ)
  supportValue := (234175012535587 / 400000000000000 : ℚ)
  supportSlope := (-4620396541210603 / 1250000000000000 : ℚ)
  oldCenter := (234175012535587 / 400000000000000 : ℚ)
  newCoefficients := coefficients_921
  oldLo := (58400000000000007 / 100000000000000000 : ℚ)
  oldHi := (29225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1372]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9150 : Cell := { cellDefaults with
  r := (72038761558869 / 100000000000000 : ℚ)
  w := (16090554304407 / 10000000000000 : ℚ)
  newCoefficients := coefficients_920
  oldLo := (585195530726257 / 1000000000000000 : ℚ)
  oldHi := (7325000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1375, piece_1376]
}

def cell_9151 : Cell := { cellDefaults with
  domain := ⟨(377 / 1000 : ℚ), (6033 / 16000 : ℚ)⟩
  center := (2413 / 6400 : ℚ)
  supportValue := (2930781816969729 / 5000000000000000 : ℚ)
  supportSlope := (-7400123813454229 / 2000000000000000 : ℚ)
  oldCenter := (2930781816969729 / 5000000000000000 : ℚ)
  oldLo := (7325000000000001 / 12500000000000000 : ℚ)
  oldHi := (29325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1377]
}

def cell_9152 : Cell := { cellDefaults with
  domain := ⟨(6033 / 16000 : ℚ), (3017 / 8000 : ℚ)⟩
  center := (12067 / 32000 : ℚ)
  supportValue := (5859251708865727 / 10000000000000000 : ℚ)
  supportSlope := (-18490883477255693 / 5000000000000000 : ℚ)
  oldCenter := (5859251708865727 / 10000000000000000 : ℚ)
  oldLo := (29275000000000001 / 50000000000000000 : ℚ)
  oldHi := (29325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1376, piece_1377]
}

def cell_9153 : Cell := { cellDefaults with
  domain := ⟨(3017 / 8000 : ℚ), (1207 / 3200 : ℚ)⟩
  center := (12069 / 32000 : ℚ)
  supportValue := (5856941004674251 / 10000000000000000 : ℚ)
  supportSlope := (-2309996550020621 / 625000000000000 : ℚ)
  oldCenter := (5856941004674251 / 10000000000000000 : ℚ)
  oldLo := (29275000000000001 / 50000000000000000 : ℚ)
  oldHi := (7325000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1376]
}

def cell_9154 : Cell := { cellDefaults with
  domain := ⟨(1207 / 3200 : ℚ), (1509 / 4000 : ℚ)⟩
  center := (12071 / 32000 : ℚ)
  supportValue := (2927315834006217 / 5000000000000000 : ℚ)
  supportSlope := (-18470184210706009 / 5000000000000000 : ℚ)
  oldCenter := (2927315834006217 / 5000000000000000 : ℚ)
  oldLo := (585195530726257 / 1000000000000000 : ℚ)
  oldHi := (7325000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1375, piece_1376]
}

def cell_9155 : Cell := { cellDefaults with
  domain := ⟨(1509 / 4000 : ℚ), (6037 / 16000 : ℚ)⟩
  center := (12073 / 32000 : ℚ)
  supportValue := (2926161751624551 / 5000000000000000 : ℚ)
  supportSlope := (-9229831222805629 / 2500000000000000 : ℚ)
  oldCenter := (2926161751624551 / 5000000000000000 : ℚ)
  oldLo := (7312500000000001 / 12500000000000000 : ℚ)
  oldHi := (29275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1374, piece_1375]
}

def cell_9156 : Cell := { cellDefaults with
  domain := ⟨(6037 / 16000 : ℚ), (3019 / 8000 : ℚ)⟩
  center := (483 / 1280 : ℚ)
  supportValue := (1462504187669709 / 2500000000000000 : ℚ)
  supportSlope := (-7379801729932467 / 2000000000000000 : ℚ)
  oldCenter := (1462504187669709 / 2500000000000000 : ℚ)
  oldLo := (29225000000000001 / 50000000000000000 : ℚ)
  oldHi := (585195530726257 / 1000000000000000 : ℚ)
  oldPieces := [piece_1373, piece_1374]
}

def cell_9157 : Cell := { cellDefaults with
  domain := ⟨(3019 / 8000 : ℚ), (6039 / 16000 : ℚ)⟩
  center := (12077 / 32000 : ℚ)
  supportValue := (2923855561953077 / 5000000000000000 : ℚ)
  supportSlope := (-7375751690950949 / 2000000000000000 : ℚ)
  oldCenter := (2923855561953077 / 5000000000000000 : ℚ)
  oldLo := (29225000000000001 / 50000000000000000 : ℚ)
  oldHi := (7312500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1373]
}

def cell_9158 : Cell := { cellDefaults with
  domain := ⟨(6039 / 16000 : ℚ), (151 / 400 : ℚ)⟩
  center := (12079 / 32000 : ℚ)
  supportValue := (5845406906001831 / 10000000000000000 : ℚ)
  supportSlope := (-36857689634501867 / 10000000000000000 : ℚ)
  oldCenter := (5845406906001831 / 10000000000000000 : ℚ)
  oldHi := (7312500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1372, piece_1373]
}

def cell_9159 : Cell := { cellDefaults with
  domain := ⟨(151 / 400 : ℚ), (6041 / 16000 : ℚ)⟩
  r := (71941304927303 / 100000000000000 : ℚ)
  w := (8037898607431 / 5000000000000 : ℚ)
  center := (12081 / 32000 : ℚ)
  supportValue := (2926288023637037 / 5000000000000000 : ℚ)
  supportSlope := (-3689698362073557 / 1000000000000000 : ℚ)
  oldCenter := (2926288023637037 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_922
  oldLo := (7312500000000001 / 12500000000000000 : ℚ)
  oldHi := (29275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1374, piece_1375]
}

def cell_9160 : Cell := { cellDefaults with
  domain := ⟨(6041 / 16000 : ℚ), (3021 / 8000 : ℚ)⟩
  r := (71941304927303 / 100000000000000 : ℚ)
  w := (8037898607431 / 5000000000000 : ℚ)
  center := (12083 / 32000 : ℚ)
  supportValue := (2925135344844023 / 5000000000000000 : ℚ)
  supportSlope := (-3687620328552299 / 1000000000000000 : ℚ)
  oldCenter := (2925135344844023 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_922
  oldLo := (29225000000000001 / 50000000000000000 : ℚ)
  oldHi := (585195530726257 / 1000000000000000 : ℚ)
  oldPieces := [piece_1373, piece_1374]
}

def cell_9161 : Cell := { cellDefaults with
  domain := ⟨(3021 / 8000 : ℚ), (6043 / 16000 : ℚ)⟩
  r := (71941304927303 / 100000000000000 : ℚ)
  w := (8037898607431 / 5000000000000 : ℚ)
  center := (2417 / 6400 : ℚ)
  supportValue := (5847966486926003 / 10000000000000000 : ℚ)
  supportSlope := (-737130049657253 / 200000000000000 : ℚ)
  oldCenter := (5847966486926003 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_922
  oldLo := (29225000000000001 / 50000000000000000 : ℚ)
  oldHi := (7312500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1373]
}

def cell_9162 : Cell := { cellDefaults with
  domain := ⟨(6043 / 16000 : ℚ), (1511 / 4000 : ℚ)⟩
  r := (71941304927303 / 100000000000000 : ℚ)
  w := (8037898607431 / 5000000000000 : ℚ)
  center := (12087 / 32000 : ℚ)
  supportValue := (2922831829339691 / 5000000000000000 : ℚ)
  supportSlope := (-1473398494006517 / 400000000000000 : ℚ)
  oldCenter := (2922831829339691 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_922
  oldHi := (7312500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1372, piece_1373]
}

def cell_9163 : Cell := { cellDefaults with
  domain := ⟨(1511 / 4000 : ℚ), (1209 / 3200 : ℚ)⟩
  r := (71941304927303 / 100000000000000 : ℚ)
  w := (8037898607431 / 5000000000000 : ℚ)
  center := (12089 / 32000 : ℚ)
  supportValue := (1460840508119021 / 2500000000000000 : ℚ)
  supportSlope := (-3681607666997877 / 1000000000000000 : ℚ)
  oldCenter := (1460840508119021 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_922
  oldPieces := [piece_1372]
}

def cell_9164 : Cell := { cellDefaults with
  domain := ⟨(1209 / 3200 : ℚ), (3023 / 8000 : ℚ)⟩
  r := (71941304927303 / 100000000000000 : ℚ)
  w := (8037898607431 / 5000000000000 : ℚ)
  center := (12091 / 32000 : ℚ)
  supportValue := (584106173013623 / 1000000000000000 : ℚ)
  supportSlope := (-3679376166083159 / 1000000000000000 : ℚ)
  oldCenter := (584106173013623 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_922
  oldLo := (29175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1371, piece_1372]
}

def cell_9165 : Cell := { cellDefaults with
  domain := ⟨(3023 / 8000 : ℚ), (6047 / 16000 : ℚ)⟩
  r := (71941304927303 / 100000000000000 : ℚ)
  w := (8037898607431 / 5000000000000 : ℚ)
  center := (12093 / 32000 : ℚ)
  supportValue := (2919381338945751 / 5000000000000000 : ℚ)
  supportSlope := (-1471028266222163 / 400000000000000 : ℚ)
  oldCenter := (2919381338945751 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_922
  oldLo := (29175000000000001 / 50000000000000000 : ℚ)
  oldHi := (58400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1371]
}

def cell_9166 : Cell := { cellDefaults with
  domain := ⟨(6047 / 16000 : ℚ), (189 / 500 : ℚ)⟩
  r := (71941304927303 / 100000000000000 : ℚ)
  w := (8037898607431 / 5000000000000 : ℚ)
  center := (2419 / 6400 : ℚ)
  supportValue := (729558112270791 / 1250000000000000 : ℚ)
  supportSlope := (-18376614094197663 / 5000000000000000 : ℚ)
  oldCenter := (729558112270791 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_922
  oldLo := (29175000000000001 / 50000000000000000 : ℚ)
  oldHi := (58400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1371]
}

def cell_9167 : Cell := { cellDefaults with
  domain := ⟨(189 / 500 : ℚ), (6049 / 16000 : ℚ)⟩
  r := (17973171774367 / 25000000000000 : ℚ)
  w := (16068441653757 / 10000000000000 : ℚ)
  center := (12097 / 32000 : ℚ)
  supportValue := (5843615764960063 / 10000000000000000 : ℚ)
  supportSlope := (-7358765358645769 / 2000000000000000 : ℚ)
  oldCenter := (5843615764960063 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_923
  oldPieces := [piece_1372]
}

def cell_9168 : Cell := { cellDefaults with
  domain := ⟨(6049 / 16000 : ℚ), (121 / 320 : ℚ)⟩
  r := (17973171774367 / 25000000000000 : ℚ)
  w := (16068441653757 / 10000000000000 : ℚ)
  center := (12099 / 32000 : ℚ)
  supportValue := (5841316851978853 / 10000000000000000 : ℚ)
  supportSlope := (-18385686106920929 / 5000000000000000 : ℚ)
  oldCenter := (5841316851978853 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_923
  oldPieces := [piece_1372]
}

def cell_9169 : Cell := { cellDefaults with
  domain := ⟨(121 / 320 : ℚ), (6051 / 16000 : ℚ)⟩
  r := (17973171774367 / 25000000000000 : ℚ)
  w := (16068441653757 / 10000000000000 : ℚ)
  center := (12101 / 32000 : ℚ)
  supportValue := (1459754804663713 / 2500000000000000 : ℚ)
  supportSlope := (-18376601984115837 / 5000000000000000 : ℚ)
  oldCenter := (1459754804663713 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_923
  oldLo := (29175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1371, piece_1372]
}

def cell_9170 : Cell := { cellDefaults with
  domain := ⟨(6051 / 16000 : ℚ), (1513 / 4000 : ℚ)⟩
  r := (17973171774367 / 25000000000000 : ℚ)
  w := (16068441653757 / 10000000000000 : ℚ)
  center := (12103 / 32000 : ℚ)
  supportValue := (1459180705812317 / 2500000000000000 : ℚ)
  supportSlope := (-1147846849209877 / 312500000000000 : ℚ)
  oldCenter := (1459180705812317 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_923
  oldLo := (29175000000000001 / 50000000000000000 : ℚ)
  oldHi := (58400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1371]
}

def cell_9171 : Cell := { cellDefaults with
  domain := ⟨(1513 / 4000 : ℚ), (6053 / 16000 : ℚ)⟩
  r := (17973171774367 / 25000000000000 : ℚ)
  w := (16068441653757 / 10000000000000 : ℚ)
  center := (2421 / 6400 : ℚ)
  supportValue := (2917213878649067 / 5000000000000000 : ℚ)
  supportSlope := (-917803598036393 / 250000000000000 : ℚ)
  oldCenter := (2917213878649067 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_923
  oldLo := (58300000000000007 / 100000000000000000 : ℚ)
  oldHi := (58400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1370, piece_1371]
}

def cell_9172 : Cell := { cellDefaults with
  domain := ⟨(6053 / 16000 : ℚ), (3027 / 8000 : ℚ)⟩
  r := (17973171774367 / 25000000000000 : ℚ)
  w := (16068441653757 / 10000000000000 : ℚ)
  center := (12107 / 32000 : ℚ)
  supportValue := (2916066938102331 / 5000000000000000 : ℚ)
  supportSlope := (-18345439260656349 / 5000000000000000 : ℚ)
  oldCenter := (2916066938102331 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_923
  oldLo := (58300000000000007 / 100000000000000000 : ℚ)
  oldHi := (29175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1370]
}

def cell_9173 : Cell := { cellDefaults with
  domain := ⟨(3027 / 8000 : ℚ), (1211 / 3200 : ℚ)⟩
  r := (17973171774367 / 25000000000000 : ℚ)
  w := (16068441653757 / 10000000000000 : ℚ)
  center := (12109 / 32000 : ℚ)
  supportValue := (5829841375546081 / 10000000000000000 : ℚ)
  supportSlope := (-91677781047661 / 25000000000000 : ℚ)
  oldCenter := (5829841375546081 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_923
  oldLo := (29125000000000001 / 50000000000000000 : ℚ)
  oldHi := (29175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1369, piece_1370]
}

def cell_9174 : Cell := { cellDefaults with
  domain := ⟨(1211 / 3200 : ℚ), (757 / 2000 : ℚ)⟩
  r := (17973171774367 / 25000000000000 : ℚ)
  w := (16068441653757 / 10000000000000 : ℚ)
  center := (12111 / 32000 : ℚ)
  supportValue := (5827550005717443 / 10000000000000000 : ℚ)
  supportSlope := (-9162679536736107 / 2500000000000000 : ℚ)
  oldCenter := (5827550005717443 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_923
  oldLo := (29125000000000001 / 50000000000000000 : ℚ)
  oldHi := (58300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1369]
}

def cell_9175 : Cell := { cellDefaults with
  domain := ⟨(757 / 2000 : ℚ), (6057 / 16000 : ℚ)⟩
  r := (71844142015583 / 100000000000000 : ℚ)
  w := (8030551981371 / 5000000000000 : ℚ)
  center := (12113 / 32000 : ℚ)
  supportValue := (729335184883833 / 1250000000000000 : ℚ)
  supportSlope := (-3668945871346807 / 1000000000000000 : ℚ)
  oldCenter := (729335184883833 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_924
  oldLo := (58300000000000007 / 100000000000000000 : ℚ)
  oldHi := (58400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1370, piece_1371]
}

def cell_9176 : Cell := { cellDefaults with
  domain := ⟨(6057 / 16000 : ℚ), (3029 / 8000 : ℚ)⟩
  r := (71844142015583 / 100000000000000 : ℚ)
  w := (8030551981371 / 5000000000000 : ℚ)
  center := (2423 / 6400 : ℚ)
  supportValue := (5832388982539973 / 10000000000000000 : ℚ)
  supportSlope := (-1833437352798839 / 500000000000000 : ℚ)
  oldCenter := (5832388982539973 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_924
  oldLo := (58300000000000007 / 100000000000000000 : ℚ)
  oldHi := (29175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1370]
}

def cell_9177 : Cell := { cellDefaults with
  domain := ⟨(3029 / 8000 : ℚ), (6059 / 16000 : ℚ)⟩
  r := (71844142015583 / 100000000000000 : ℚ)
  w := (8030551981371 / 5000000000000 : ℚ)
  center := (12117 / 32000 : ℚ)
  supportValue := (583009788395917 / 1000000000000000 : ℚ)
  supportSlope := (-1832425281564909 / 500000000000000 : ℚ)
  oldCenter := (583009788395917 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_924
  oldLo := (29125000000000001 / 50000000000000000 : ℚ)
  oldHi := (29175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1369, piece_1370]
}

def cell_9178 : Cell := { cellDefaults with
  domain := ⟨(6059 / 16000 : ℚ), (303 / 800 : ℚ)⟩
  r := (71844142015583 / 100000000000000 : ℚ)
  w := (8030551981371 / 5000000000000 : ℚ)
  center := (12119 / 32000 : ℚ)
  supportValue := (2913903952791481 / 5000000000000000 : ℚ)
  supportSlope := (-36628670222604853 / 10000000000000000 : ℚ)
  oldCenter := (2913903952791481 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_924
  oldLo := (29125000000000001 / 50000000000000000 : ℚ)
  oldHi := (58300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1369]
}

def cell_9179 : Cell := { cellDefaults with
  domain := ⟨(303 / 800 : ℚ), (6061 / 16000 : ℚ)⟩
  r := (71844142015583 / 100000000000000 : ℚ)
  w := (8030551981371 / 5000000000000 : ℚ)
  center := (12121 / 32000 : ℚ)
  supportValue := (233020772422749 / 400000000000000 : ℚ)
  supportSlope := (-3660761542771951 / 1000000000000000 : ℚ)
  oldCenter := (233020772422749 / 400000000000000 : ℚ)
  newCoefficients := coefficients_924
  oldLo := (58200000000000007 / 100000000000000000 : ℚ)
  oldHi := (58300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1368, piece_1369]
}

def cell_9180 : Cell := { cellDefaults with
  domain := ⟨(6061 / 16000 : ℚ), (3031 / 8000 : ℚ)⟩
  r := (71844142015583 / 100000000000000 : ℚ)
  w := (8030551981371 / 5000000000000 : ℚ)
  center := (12123 / 32000 : ℚ)
  supportValue := (2911615943530697 / 5000000000000000 : ℚ)
  supportSlope := (-18294326512879877 / 5000000000000000 : ℚ)
  oldCenter := (2911615943530697 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_924
  oldLo := (58200000000000007 / 100000000000000000 : ℚ)
  oldHi := (29125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1368]
}

def cell_9181 : Cell := { cellDefaults with
  domain := ⟨(3031 / 8000 : ℚ), (6063 / 16000 : ℚ)⟩
  r := (71844142015583 / 100000000000000 : ℚ)
  w := (8030551981371 / 5000000000000 : ℚ)
  center := (97 / 256 : ℚ)
  supportValue := (363809112028423 / 625000000000000 : ℚ)
  supportSlope := (-7313351842810789 / 2000000000000000 : ℚ)
  oldCenter := (363809112028423 / 625000000000000 : ℚ)
  newCoefficients := coefficients_924
  oldLo := (29075000000000001 / 50000000000000000 : ℚ)
  oldHi := (29125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1367, piece_1368]
}

def cell_9182 : Cell := { cellDefaults with
  domain := ⟨(6063 / 16000 : ℚ), (379 / 1000 : ℚ)⟩
  r := (71844142015583 / 100000000000000 : ℚ)
  w := (8030551981371 / 5000000000000 : ℚ)
  center := (12127 / 32000 : ℚ)
  supportValue := (5818660921434089 / 10000000000000000 : ℚ)
  supportSlope := (-456858623389067 / 125000000000000 : ℚ)
  oldCenter := (5818660921434089 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_924
  oldLo := (29075000000000001 / 50000000000000000 : ℚ)
  oldHi := (58200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1367]
}

def cell_9183 : Cell := { cellDefaults with
  domain := ⟨(379 / 1000 : ℚ), (1213 / 3200 : ℚ)⟩
  r := (71795670266907 / 100000000000000 : ℚ)
  w := (8026890390199 / 5000000000000 : ℚ)
  center := (12129 / 32000 : ℚ)
  supportValue := (2912887090146919 / 5000000000000000 : ℚ)
  supportSlope := (-36585011748186957 / 10000000000000000 : ℚ)
  oldCenter := (2912887090146919 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_925
  oldLo := (58200000000000007 / 100000000000000000 : ℚ)
  oldHi := (58300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1368, piece_1369]
}

def cell_9184 : Cell := { cellDefaults with
  domain := ⟨(1213 / 3200 : ℚ), (3033 / 8000 : ℚ)⟩
  r := (71795670266907 / 100000000000000 : ℚ)
  w := (8026890390199 / 5000000000000 : ℚ)
  center := (12131 / 32000 : ℚ)
  supportValue := (1455872042056511 / 2500000000000000 : ℚ)
  supportSlope := (-3656660528765343 / 1000000000000000 : ℚ)
  oldCenter := (1455872042056511 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_925
  oldLo := (58200000000000007 / 100000000000000000 : ℚ)
  oldHi := (29125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1368]
}

def cell_9185 : Cell := { cellDefaults with
  domain := ⟨(3033 / 8000 : ℚ), (6067 / 16000 : ℚ)⟩
  r := (71795670266907 / 100000000000000 : ℚ)
  w := (8026890390199 / 5000000000000 : ℚ)
  center := (12133 / 32000 : ℚ)
  supportValue := (5821203450300191 / 10000000000000000 : ℚ)
  supportSlope := (-18272176019582531 / 5000000000000000 : ℚ)
  oldCenter := (5821203450300191 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_925
  oldLo := (58200000000000007 / 100000000000000000 : ℚ)
  oldHi := (29125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1368]
}

def cell_9186 : Cell := { cellDefaults with
  domain := ⟨(6067 / 16000 : ℚ), (1517 / 4000 : ℚ)⟩
  r := (71795670266907 / 100000000000000 : ℚ)
  w := (8026890390199 / 5000000000000 : ℚ)
  center := (2427 / 6400 : ℚ)
  supportValue := (290945999300013 / 500000000000000 : ℚ)
  supportSlope := (-36526604140050267 / 10000000000000000 : ℚ)
  oldCenter := (290945999300013 / 500000000000000 : ℚ)
  newCoefficients := coefficients_925
  oldLo := (29075000000000001 / 50000000000000000 : ℚ)
  oldHi := (29125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1367, piece_1368]
}

def cell_9187 : Cell := { cellDefaults with
  domain := ⟨(1517 / 4000 : ℚ), (6069 / 16000 : ℚ)⟩
  r := (71795670266907 / 100000000000000 : ℚ)
  w := (8026890390199 / 5000000000000 : ℚ)
  center := (12137 / 32000 : ℚ)
  supportValue := (5816637759943907 / 10000000000000000 : ℚ)
  supportSlope := (-912612309096339 / 250000000000000 : ℚ)
  oldCenter := (5816637759943907 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_925
  oldLo := (29075000000000001 / 50000000000000000 : ℚ)
  oldHi := (58200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1367]
}

def cell_9188 : Cell := { cellDefaults with
  domain := ⟨(6069 / 16000 : ℚ), (607 / 1600 : ℚ)⟩
  r := (71795670266907 / 100000000000000 : ℚ)
  w := (8026890390199 / 5000000000000 : ℚ)
  center := (12139 / 32000 : ℚ)
  supportValue := (5814356841084641 / 10000000000000000 : ℚ)
  supportSlope := (-3648589361937127 / 1000000000000000 : ℚ)
  oldCenter := (5814356841084641 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_925
  oldLo := (58100000000000007 / 100000000000000000 : ℚ)
  oldHi := (58200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1366, piece_1367]
}

def cell_9189 : Cell := { cellDefaults with
  domain := ⟨(607 / 1600 : ℚ), (6071 / 16000 : ℚ)⟩
  r := (71795670266907 / 100000000000000 : ℚ)
  w := (8026890390199 / 5000000000000 : ℚ)
  center := (12141 / 32000 : ℚ)
  supportValue := (1162415420710849 / 2000000000000000 : ℚ)
  supportSlope := (-7292937241736297 / 2000000000000000 : ℚ)
  oldCenter := (1162415420710849 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_925
  oldLo := (58100000000000007 / 100000000000000000 : ℚ)
  oldHi := (29075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1366]
}

def cell_9190 : Cell := { cellDefaults with
  domain := ⟨(6071 / 16000 : ℚ), (759 / 2000 : ℚ)⟩
  r := (71795670266907 / 100000000000000 : ℚ)
  w := (8026890390199 / 5000000000000 : ℚ)
  center := (12143 / 32000 : ℚ)
  supportValue := (1452449681950001 / 2500000000000000 : ℚ)
  supportSlope := (-3644522046180043 / 1000000000000000 : ℚ)
  oldCenter := (1452449681950001 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_925
  oldLo := (29025000000000001 / 50000000000000000 : ℚ)
  oldHi := (29075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1365, piece_1366]
}

def cell_9191 : Cell := { cellDefaults with
  domain := ⟨(759 / 2000 : ℚ), (6073 / 16000 : ℚ)⟩
  r := (71747270849383 / 100000000000000 : ℚ)
  w := (16046474998597 / 10000000000000 : ℚ)
  center := (2429 / 6400 : ℚ)
  supportValue := (1454223188618419 / 2500000000000000 : ℚ)
  supportSlope := (-1824124181236897 / 500000000000000 : ℚ)
  oldCenter := (1454223188618419 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_926
  oldLo := (29075000000000001 / 50000000000000000 : ℚ)
  oldHi := (58200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1367]
}

def cell_9192 : Cell := { cellDefaults with
  domain := ⟨(6073 / 16000 : ℚ), (3037 / 8000 : ℚ)⟩
  r := (71747270849383 / 100000000000000 : ℚ)
  w := (16046474998597 / 10000000000000 : ℚ)
  center := (12147 / 32000 : ℚ)
  supportValue := (726826655292619 / 1250000000000000 : ℚ)
  supportSlope := (-3646340613109089 / 1000000000000000 : ℚ)
  oldCenter := (726826655292619 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_926
  oldLo := (58100000000000007 / 100000000000000000 : ℚ)
  oldHi := (58200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1366, piece_1367]
}

def cell_9193 : Cell := { cellDefaults with
  domain := ⟨(3037 / 8000 : ℚ), (243 / 640 : ℚ)⟩
  r := (71747270849383 / 100000000000000 : ℚ)
  w := (16046474998597 / 10000000000000 : ℚ)
  center := (12149 / 32000 : ℚ)
  supportValue := (90817732446439 / 156250000000000 : ℚ)
  supportSlope := (-728855166239839 / 200000000000000 : ℚ)
  oldCenter := (90817732446439 / 156250000000000 : ℚ)
  newCoefficients := coefficients_926
  oldLo := (58100000000000007 / 100000000000000000 : ℚ)
  oldHi := (29075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1366]
}

def cell_9194 : Cell := { cellDefaults with
  domain := ⟨(243 / 640 : ℚ), (1519 / 4000 : ℚ)⟩
  r := (71747270849383 / 100000000000000 : ℚ)
  w := (16046474998597 / 10000000000000 : ℚ)
  center := (12151 / 32000 : ℚ)
  supportValue := (1162011579166861 / 2000000000000000 : ℚ)
  supportSlope := (-36422806132563323 / 10000000000000000 : ℚ)
  oldCenter := (1162011579166861 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_926
  oldLo := (29025000000000001 / 50000000000000000 : ℚ)
  oldHi := (29075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1365, piece_1366]
}

def cell_9195 : Cell := { cellDefaults with
  domain := ⟨(1519 / 4000 : ℚ), (6077 / 16000 : ℚ)⟩
  r := (71747270849383 / 100000000000000 : ℚ)
  w := (16046474998597 / 10000000000000 : ℚ)
  center := (12153 / 32000 : ℚ)
  supportValue := (290389100866783 / 500000000000000 : ℚ)
  supportSlope := (-1820154319354117 / 500000000000000 : ℚ)
  oldCenter := (290389100866783 / 500000000000000 : ℚ)
  newCoefficients := coefficients_926
  oldLo := (29025000000000001 / 50000000000000000 : ℚ)
  oldHi := (58100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1365]
}

def cell_9196 : Cell := { cellDefaults with
  domain := ⟨(6077 / 16000 : ℚ), (3039 / 8000 : ℚ)⟩
  r := (71747270849383 / 100000000000000 : ℚ)
  w := (16046474998597 / 10000000000000 : ℚ)
  center := (2431 / 6400 : ℚ)
  supportValue := (2902753757727833 / 5000000000000000 : ℚ)
  supportSlope := (-227389020321489 / 62500000000000 : ℚ)
  oldCenter := (2902753757727833 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_926
  oldLo := (58000000000000007 / 100000000000000000 : ℚ)
  oldHi := (58100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1364, piece_1365]
}

def cell_9197 : Cell := { cellDefaults with
  domain := ⟨(3039 / 8000 : ℚ), (6079 / 16000 : ℚ)⟩
  r := (71747270849383 / 100000000000000 : ℚ)
  w := (16046474998597 / 10000000000000 : ℚ)
  center := (12157 / 32000 : ℚ)
  supportValue := (5803234171107711 / 10000000000000000 : ℚ)
  supportSlope := (-3636346786180411 / 1000000000000000 : ℚ)
  oldCenter := (5803234171107711 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_926
  oldLo := (58000000000000007 / 100000000000000000 : ℚ)
  oldHi := (29025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1364]
}

def cell_9198 : Cell := { cellDefaults with
  domain := ⟨(6079 / 16000 : ℚ), (19 / 50 : ℚ)⟩
  r := (71747270849383 / 100000000000000 : ℚ)
  w := (16046474998597 / 10000000000000 : ℚ)
  center := (12159 / 32000 : ℚ)
  supportValue := (5800962144746683 / 10000000000000000 : ℚ)
  supportSlope := (-36341717043235633 / 10000000000000000 : ℚ)
  oldCenter := (5800962144746683 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_926
  oldLo := (5796648044692737 / 10000000000000000 : ℚ)
  oldHi := (29025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1363, piece_1364]
}

def cell_9199 : Cell := { cellDefaults with
  domain := ⟨(19 / 50 : ℚ), (6081 / 16000 : ℚ)⟩
  r := (35849472141687 / 50000000000000 : ℚ)
  w := (8019592619969 / 5000000000000 : ℚ)
  center := (12161 / 32000 : ℚ)
  supportValue := (5808037556791237 / 10000000000000000 : ℚ)
  supportSlope := (-1136911244659089 / 312500000000000 : ℚ)
  oldCenter := (5808037556791237 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_927
  oldLo := (29025000000000001 / 50000000000000000 : ℚ)
  oldHi := (58100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1365]
}

theorem check_9150 : cell_9150.check = true := by
  decide +kernel

theorem check_9151 : cell_9151.check = true := by
  decide +kernel

theorem check_9152 : cell_9152.check = true := by
  decide +kernel

theorem check_9153 : cell_9153.check = true := by
  decide +kernel

theorem check_9154 : cell_9154.check = true := by
  decide +kernel

theorem check_9155 : cell_9155.check = true := by
  decide +kernel

theorem check_9156 : cell_9156.check = true := by
  decide +kernel

theorem check_9157 : cell_9157.check = true := by
  decide +kernel

theorem check_9158 : cell_9158.check = true := by
  decide +kernel

theorem check_9159 : cell_9159.check = true := by
  decide +kernel

theorem check_9160 : cell_9160.check = true := by
  decide +kernel

theorem check_9161 : cell_9161.check = true := by
  decide +kernel

theorem check_9162 : cell_9162.check = true := by
  decide +kernel

theorem check_9163 : cell_9163.check = true := by
  decide +kernel

theorem check_9164 : cell_9164.check = true := by
  decide +kernel

theorem check_9165 : cell_9165.check = true := by
  decide +kernel

theorem check_9166 : cell_9166.check = true := by
  decide +kernel

theorem check_9167 : cell_9167.check = true := by
  decide +kernel

theorem check_9168 : cell_9168.check = true := by
  decide +kernel

theorem check_9169 : cell_9169.check = true := by
  decide +kernel

theorem check_9170 : cell_9170.check = true := by
  decide +kernel

theorem check_9171 : cell_9171.check = true := by
  decide +kernel

theorem check_9172 : cell_9172.check = true := by
  decide +kernel

theorem check_9173 : cell_9173.check = true := by
  decide +kernel

theorem check_9174 : cell_9174.check = true := by
  decide +kernel

theorem check_9175 : cell_9175.check = true := by
  decide +kernel

theorem check_9176 : cell_9176.check = true := by
  decide +kernel

theorem check_9177 : cell_9177.check = true := by
  decide +kernel

theorem check_9178 : cell_9178.check = true := by
  decide +kernel

theorem check_9179 : cell_9179.check = true := by
  decide +kernel

theorem check_9180 : cell_9180.check = true := by
  decide +kernel

theorem check_9181 : cell_9181.check = true := by
  decide +kernel

theorem check_9182 : cell_9182.check = true := by
  decide +kernel

theorem check_9183 : cell_9183.check = true := by
  decide +kernel

theorem check_9184 : cell_9184.check = true := by
  decide +kernel

theorem check_9185 : cell_9185.check = true := by
  decide +kernel

theorem check_9186 : cell_9186.check = true := by
  decide +kernel

theorem check_9187 : cell_9187.check = true := by
  decide +kernel

theorem check_9188 : cell_9188.check = true := by
  decide +kernel

theorem check_9189 : cell_9189.check = true := by
  decide +kernel

theorem check_9190 : cell_9190.check = true := by
  decide +kernel

theorem check_9191 : cell_9191.check = true := by
  decide +kernel

theorem check_9192 : cell_9192.check = true := by
  decide +kernel

theorem check_9193 : cell_9193.check = true := by
  decide +kernel

theorem check_9194 : cell_9194.check = true := by
  decide +kernel

theorem check_9195 : cell_9195.check = true := by
  decide +kernel

theorem check_9196 : cell_9196.check = true := by
  decide +kernel

theorem check_9197 : cell_9197.check = true := by
  decide +kernel

theorem check_9198 : cell_9198.check = true := by
  decide +kernel

theorem check_9199 : cell_9199.check = true := by
  decide +kernel

def cells : List Cell := [cell_9150, cell_9151, cell_9152, cell_9153, cell_9154, cell_9155, cell_9156, cell_9157, cell_9158, cell_9159, cell_9160, cell_9161, cell_9162, cell_9163, cell_9164, cell_9165, cell_9166, cell_9167, cell_9168, cell_9169, cell_9170, cell_9171, cell_9172, cell_9173, cell_9174, cell_9175, cell_9176, cell_9177, cell_9178, cell_9179, cell_9180, cell_9181, cell_9182, cell_9183, cell_9184, cell_9185, cell_9186, cell_9187, cell_9188, cell_9189, cell_9190, cell_9191, cell_9192, cell_9193, cell_9194, cell_9195, cell_9196, cell_9197, cell_9198, cell_9199]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9150, check_9151, check_9152, check_9153, check_9154, check_9155, check_9156, check_9157, check_9158, check_9159, check_9160, check_9161, check_9162, check_9163, check_9164, check_9165, check_9166, check_9167, check_9168, check_9169, check_9170, check_9171, check_9172, check_9173, check_9174, check_9175, check_9176, check_9177, check_9178, check_9179, check_9180, check_9181, check_9182, check_9183, check_9184, check_9185, check_9186, check_9187, check_9188, check_9189, check_9190, check_9191, check_9192, check_9193, check_9194, check_9195, check_9196, check_9197, check_9198, check_9199, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0183

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0183
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0183
open AnalyticBounds.ExpressionCertificate

theorem linked_9150 : Linked cell_9150 pieces := by
  refine ⟨piece_920,piece_920_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9150,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1375_mem
    · exact piece_1376_mem

theorem linked_9151 : Linked cell_9151 pieces := by
  refine ⟨piece_921,piece_921_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9151,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1377_mem

theorem linked_9152 : Linked cell_9152 pieces := by
  refine ⟨piece_921,piece_921_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9152,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1376_mem
    · exact piece_1377_mem

theorem linked_9153 : Linked cell_9153 pieces := by
  refine ⟨piece_921,piece_921_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9153,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1376_mem

theorem linked_9154 : Linked cell_9154 pieces := by
  refine ⟨piece_921,piece_921_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9154,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1375_mem
    · exact piece_1376_mem

theorem linked_9155 : Linked cell_9155 pieces := by
  refine ⟨piece_921,piece_921_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9155,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1374_mem
    · exact piece_1375_mem

theorem linked_9156 : Linked cell_9156 pieces := by
  refine ⟨piece_921,piece_921_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9156,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1373_mem
    · exact piece_1374_mem

theorem linked_9157 : Linked cell_9157 pieces := by
  refine ⟨piece_921,piece_921_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9157,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1373_mem

theorem linked_9158 : Linked cell_9158 pieces := by
  refine ⟨piece_921,piece_921_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9158,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1372_mem
    · exact piece_1373_mem

theorem linked_9159 : Linked cell_9159 pieces := by
  refine ⟨piece_922,piece_922_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9159,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1374_mem
    · exact piece_1375_mem

theorem linked_9160 : Linked cell_9160 pieces := by
  refine ⟨piece_922,piece_922_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9160,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1373_mem
    · exact piece_1374_mem

theorem linked_9161 : Linked cell_9161 pieces := by
  refine ⟨piece_922,piece_922_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9161,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1373_mem

theorem linked_9162 : Linked cell_9162 pieces := by
  refine ⟨piece_922,piece_922_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9162,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1372_mem
    · exact piece_1373_mem

theorem linked_9163 : Linked cell_9163 pieces := by
  refine ⟨piece_922,piece_922_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9163,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1372_mem

theorem linked_9164 : Linked cell_9164 pieces := by
  refine ⟨piece_922,piece_922_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9164,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1371_mem
    · exact piece_1372_mem

theorem linked_9165 : Linked cell_9165 pieces := by
  refine ⟨piece_922,piece_922_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9165,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1371_mem

theorem linked_9166 : Linked cell_9166 pieces := by
  refine ⟨piece_922,piece_922_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9166,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1371_mem

theorem linked_9167 : Linked cell_9167 pieces := by
  refine ⟨piece_923,piece_923_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9167,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1372_mem

theorem linked_9168 : Linked cell_9168 pieces := by
  refine ⟨piece_923,piece_923_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9168,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1372_mem

theorem linked_9169 : Linked cell_9169 pieces := by
  refine ⟨piece_923,piece_923_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9169,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1371_mem
    · exact piece_1372_mem

theorem linked_9170 : Linked cell_9170 pieces := by
  refine ⟨piece_923,piece_923_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9170,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1371_mem

theorem linked_9171 : Linked cell_9171 pieces := by
  refine ⟨piece_923,piece_923_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9171,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1370_mem
    · exact piece_1371_mem

theorem linked_9172 : Linked cell_9172 pieces := by
  refine ⟨piece_923,piece_923_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9172,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1370_mem

theorem linked_9173 : Linked cell_9173 pieces := by
  refine ⟨piece_923,piece_923_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9173,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1369_mem
    · exact piece_1370_mem

theorem linked_9174 : Linked cell_9174 pieces := by
  refine ⟨piece_923,piece_923_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9174,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1369_mem

theorem linked_9175 : Linked cell_9175 pieces := by
  refine ⟨piece_924,piece_924_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9175,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1370_mem
    · exact piece_1371_mem

theorem linked_9176 : Linked cell_9176 pieces := by
  refine ⟨piece_924,piece_924_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9176,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1370_mem

theorem linked_9177 : Linked cell_9177 pieces := by
  refine ⟨piece_924,piece_924_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9177,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1369_mem
    · exact piece_1370_mem

theorem linked_9178 : Linked cell_9178 pieces := by
  refine ⟨piece_924,piece_924_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9178,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1369_mem

theorem linked_9179 : Linked cell_9179 pieces := by
  refine ⟨piece_924,piece_924_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9179,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1368_mem
    · exact piece_1369_mem

theorem linked_9180 : Linked cell_9180 pieces := by
  refine ⟨piece_924,piece_924_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9180,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1368_mem

theorem linked_9181 : Linked cell_9181 pieces := by
  refine ⟨piece_924,piece_924_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9181,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1367_mem
    · exact piece_1368_mem

theorem linked_9182 : Linked cell_9182 pieces := by
  refine ⟨piece_924,piece_924_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9182,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1367_mem

theorem linked_9183 : Linked cell_9183 pieces := by
  refine ⟨piece_925,piece_925_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9183,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1368_mem
    · exact piece_1369_mem

theorem linked_9184 : Linked cell_9184 pieces := by
  refine ⟨piece_925,piece_925_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9184,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1368_mem

theorem linked_9185 : Linked cell_9185 pieces := by
  refine ⟨piece_925,piece_925_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9185,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1368_mem

theorem linked_9186 : Linked cell_9186 pieces := by
  refine ⟨piece_925,piece_925_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9186,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1367_mem
    · exact piece_1368_mem

theorem linked_9187 : Linked cell_9187 pieces := by
  refine ⟨piece_925,piece_925_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9187,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1367_mem

theorem linked_9188 : Linked cell_9188 pieces := by
  refine ⟨piece_925,piece_925_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9188,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1366_mem
    · exact piece_1367_mem

theorem linked_9189 : Linked cell_9189 pieces := by
  refine ⟨piece_925,piece_925_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9189,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1366_mem

theorem linked_9190 : Linked cell_9190 pieces := by
  refine ⟨piece_925,piece_925_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9190,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1365_mem
    · exact piece_1366_mem

theorem linked_9191 : Linked cell_9191 pieces := by
  refine ⟨piece_926,piece_926_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9191,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1367_mem

theorem linked_9192 : Linked cell_9192 pieces := by
  refine ⟨piece_926,piece_926_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9192,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1366_mem
    · exact piece_1367_mem

theorem linked_9193 : Linked cell_9193 pieces := by
  refine ⟨piece_926,piece_926_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9193,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1366_mem

theorem linked_9194 : Linked cell_9194 pieces := by
  refine ⟨piece_926,piece_926_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9194,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1365_mem
    · exact piece_1366_mem

theorem linked_9195 : Linked cell_9195 pieces := by
  refine ⟨piece_926,piece_926_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9195,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1365_mem

theorem linked_9196 : Linked cell_9196 pieces := by
  refine ⟨piece_926,piece_926_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9196,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1364_mem
    · exact piece_1365_mem

theorem linked_9197 : Linked cell_9197 pieces := by
  refine ⟨piece_926,piece_926_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9197,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1364_mem

theorem linked_9198 : Linked cell_9198 pieces := by
  refine ⟨piece_926,piece_926_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9198,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1363_mem
    · exact piece_1364_mem

theorem linked_9199 : Linked cell_9199 pieces := by
  refine ⟨piece_927,piece_927_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_9199,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1365_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0183.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0183.cells,List.forall_mem_cons]
  exact ⟨linked_9150, linked_9151, linked_9152, linked_9153, linked_9154, linked_9155, linked_9156, linked_9157, linked_9158, linked_9159, linked_9160, linked_9161, linked_9162, linked_9163, linked_9164, linked_9165, linked_9166, linked_9167, linked_9168, linked_9169, linked_9170, linked_9171, linked_9172, linked_9173, linked_9174, linked_9175, linked_9176, linked_9177, linked_9178, linked_9179, linked_9180, linked_9181, linked_9182, linked_9183, linked_9184, linked_9185, linked_9186, linked_9187, linked_9188, linked_9189, linked_9190, linked_9191, linked_9192, linked_9193, linked_9194, linked_9195, linked_9196, linked_9197, linked_9198, linked_9199, by simp⟩

theorem covered : covers (6031 / 16000 : ℚ) (6081 / 16000 : ℚ)
    (SourceCertificates.Chunk0183.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0183
