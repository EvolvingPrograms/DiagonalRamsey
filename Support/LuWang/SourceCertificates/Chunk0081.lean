import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0081
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(12103125000000001 / 100000000000000000 : ℚ), (12106250000000001 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (2632299181357 / 2500000000000 : ℚ)
  w := (767698060117 / 781250000000 : ℚ)
  center := (12104687500000001 / 100000000000000000 : ℚ)
  supportValue := (1035642267048013 / 2500000000000000 : ℚ)
  supportSlope := (2244310793327209 / 500000000000000 : ℚ)
  oldCenter := (1035642267048013 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_364
  oldLo := (10400000000000001 / 25000000000000000 : ℚ)
  oldHi := (10412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1006]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_4050 : Cell := { cellDefaults with
  r := (1054171121111 / 1000000000000 : ℚ)
  w := (3069649482831 / 3125000000000 : ℚ)
  newCoefficients := coefficients_363
  oldLo := (41400000000000003 / 100000000000000000 : ℚ)
  oldHi := (10362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1002]
}

def cell_4051 : Cell := { cellDefaults with
  domain := ⟨(12106250000000001 / 100000000000000000 : ℚ), (12109375000000001 / 100000000000000000 : ℚ)⟩
  r := (1054171121111 / 1000000000000 : ℚ)
  w := (3069649482831 / 3125000000000 : ℚ)
  center := (12107812500000001 / 100000000000000000 : ℚ)
  supportValue := (828794400144391 / 2000000000000000 : ℚ)
  supportSlope := (1796059269747019 / 400000000000000 : ℚ)
  oldCenter := (828794400144391 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_363
  oldLo := (41400000000000003 / 100000000000000000 : ℚ)
  oldHi := (10362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1002]
}

def cell_4052 : Cell := { cellDefaults with
  domain := ⟨(12109375000000001 / 100000000000000000 : ℚ), (12112500000000001 / 100000000000000000 : ℚ)⟩
  r := (1054171121111 / 1000000000000 : ℚ)
  w := (3069649482831 / 3125000000000 : ℚ)
  center := (12110937500000001 / 100000000000000000 : ℚ)
  supportValue := (259085898059951 / 625000000000000 : ℚ)
  supportSlope := (8979446315258599 / 2000000000000000 : ℚ)
  oldCenter := (259085898059951 / 625000000000000 : ℚ)
  newCoefficients := coefficients_363
  oldLo := (41400000000000003 / 100000000000000000 : ℚ)
  oldHi := (10375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1002, piece_1003]
}

def cell_4053 : Cell := { cellDefaults with
  domain := ⟨(12112500000000001 / 100000000000000000 : ℚ), (12115625000000001 / 100000000000000000 : ℚ)⟩
  r := (1054171121111 / 1000000000000 : ℚ)
  w := (3069649482831 / 3125000000000 : ℚ)
  center := (12114062500000001 / 100000000000000000 : ℚ)
  supportValue := (1036694572304887 / 2500000000000000 : ℚ)
  supportSlope := (4490651506815269 / 1000000000000000 : ℚ)
  oldCenter := (1036694572304887 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_363
  oldLo := (10362500000000001 / 25000000000000000 : ℚ)
  oldHi := (10375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1003]
}

def cell_4054 : Cell := { cellDefaults with
  domain := ⟨(12115625000000001 / 100000000000000000 : ℚ), (12118750000000001 / 100000000000000000 : ℚ)⟩
  r := (1054171121111 / 1000000000000 : ℚ)
  w := (3069649482831 / 3125000000000 : ℚ)
  center := (12117187500000001 / 100000000000000000 : ℚ)
  supportValue := (4148181855153273 / 10000000000000000 : ℚ)
  supportSlope := (2246086016628901 / 500000000000000 : ℚ)
  oldCenter := (4148181855153273 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_363
  oldLo := (10362500000000001 / 25000000000000000 : ℚ)
  oldHi := (10375000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1003]
}

def cell_4055 : Cell := { cellDefaults with
  domain := ⟨(12118750000000001 / 100000000000000000 : ℚ), (12121875000000001 / 100000000000000000 : ℚ)⟩
  r := (1054171121111 / 1000000000000 : ℚ)
  w := (3069649482831 / 3125000000000 : ℚ)
  center := (12120312500000001 / 100000000000000000 : ℚ)
  supportValue := (8299170133501379 / 20000000000000000 : ℚ)
  supportSlope := (4493175693269791 / 1000000000000000 : ℚ)
  oldCenter := (8299170133501379 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_363
  oldLo := (10362500000000001 / 25000000000000000 : ℚ)
  oldHi := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1003, piece_1004]
}

def cell_4056 : Cell := { cellDefaults with
  domain := ⟨(12121875000000001 / 100000000000000000 : ℚ), (12125000000000001 / 100000000000000000 : ℚ)⟩
  r := (1054171121111 / 1000000000000 : ℚ)
  w := (3069649482831 / 3125000000000 : ℚ)
  center := (12123437500000001 / 100000000000000000 : ℚ)
  supportValue := (8301979712593971 / 20000000000000000 : ℚ)
  supportSlope := (8985367006026479 / 2000000000000000 : ℚ)
  oldCenter := (8301979712593971 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_363
  oldLo := (10375000000000001 / 25000000000000000 : ℚ)
  oldHi := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1004]
}

def cell_4057 : Cell := { cellDefaults with
  domain := ⟨(12125000000000001 / 100000000000000000 : ℚ), (12128125000000001 / 100000000000000000 : ℚ)⟩
  r := (1054171121111 / 1000000000000 : ℚ)
  w := (3069649482831 / 3125000000000 : ℚ)
  center := (12126562500000001 / 100000000000000000 : ℚ)
  supportValue := (8304788112546927 / 20000000000000000 : ℚ)
  supportSlope := (89883958104231 / 20000000000000 : ℚ)
  oldCenter := (8304788112546927 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_363
  oldLo := (10375000000000001 / 25000000000000000 : ℚ)
  oldHi := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1004]
}

def cell_4058 : Cell := { cellDefaults with
  domain := ⟨(12128125000000001 / 100000000000000000 : ℚ), (12131250000000001 / 100000000000000000 : ℚ)⟩
  r := (1054171121111 / 1000000000000 : ℚ)
  w := (3069649482831 / 3125000000000 : ℚ)
  center := (12129687500000001 / 100000000000000000 : ℚ)
  supportValue := (4153798729913401 / 10000000000000000 : ℚ)
  supportSlope := (4495714951202601 / 1000000000000000 : ℚ)
  oldCenter := (4153798729913401 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_363
  oldLo := (10375000000000001 / 25000000000000000 : ℚ)
  oldHi := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1004]
}

def cell_4059 : Cell := { cellDefaults with
  domain := ⟨(12131250000000001 / 100000000000000000 : ℚ), (12134375000000001 / 100000000000000000 : ℚ)⟩
  r := (1054171121111 / 1000000000000 : ℚ)
  w := (3069649482831 / 3125000000000 : ℚ)
  center := (12132812500000001 / 100000000000000000 : ℚ)
  supportValue := (41552029327041057 / 100000000000000000 : ℚ)
  supportSlope := (2247804287883959 / 500000000000000 : ℚ)
  oldCenter := (41552029327041057 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_363
  oldLo := (10375000000000001 / 25000000000000000 : ℚ)
  oldHi := (10400000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1004, piece_1005]
}

def cell_4060 : Cell := { cellDefaults with
  domain := ⟨(12134375000000001 / 100000000000000000 : ℚ), (12137500000000001 / 100000000000000000 : ℚ)⟩
  r := (1054171121111 / 1000000000000 : ℚ)
  w := (3069649482831 / 3125000000000 : ℚ)
  center := (12135937500000001 / 100000000000000000 : ℚ)
  supportValue := (831321719678861 / 2000000000000000 : ℚ)
  supportSlope := (4496225761513983 / 1000000000000000 : ℚ)
  oldCenter := (831321719678861 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_363
  oldLo := (10387500000000001 / 25000000000000000 : ℚ)
  oldHi := (10400000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1005]
}

def cell_4061 : Cell := { cellDefaults with
  domain := ⟨(12137500000000001 / 100000000000000000 : ℚ), (12140625000000001 / 100000000000000000 : ℚ)⟩
  r := (1054171121111 / 1000000000000 : ℚ)
  w := (3069649482831 / 3125000000000 : ℚ)
  center := (12139062500000001 / 100000000000000000 : ℚ)
  supportValue := (4158013904769579 / 10000000000000000 : ℚ)
  supportSlope := (2248868297760609 / 500000000000000 : ℚ)
  oldCenter := (4158013904769579 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_363
  oldLo := (10387500000000001 / 25000000000000000 : ℚ)
  oldHi := (10400000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1005]
}

def cell_4062 : Cell := { cellDefaults with
  domain := ⟨(12140625000000001 / 100000000000000000 : ℚ), (12143750000000001 / 100000000000000000 : ℚ)⟩
  r := (1054171121111 / 1000000000000 : ℚ)
  w := (3069649482831 / 3125000000000 : ℚ)
  center := (12142187500000001 / 100000000000000000 : ℚ)
  supportValue := (8318839367381261 / 20000000000000000 : ℚ)
  supportSlope := (2249515418855097 / 500000000000000 : ℚ)
  oldCenter := (8318839367381261 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_363
  oldLo := (10387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1005, piece_1006]
}

def cell_4063 : Cell := { cellDefaults with
  domain := ⟨(12143750000000001 / 100000000000000000 : ℚ), (12146875000000001 / 100000000000000000 : ℚ)⟩
  r := (1054171121111 / 1000000000000 : ℚ)
  w := (3069649482831 / 3125000000000 : ℚ)
  center := (12145312500000001 / 100000000000000000 : ℚ)
  supportValue := (2080412737874143 / 5000000000000000 : ℚ)
  supportSlope := (4498255570986487 / 1000000000000000 : ℚ)
  oldCenter := (2080412737874143 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_363
  oldPieces := [piece_1006]
}

def cell_4064 : Cell := { cellDefaults with
  domain := ⟨(12146875000000001 / 100000000000000000 : ℚ), (12150000000000001 / 100000000000000000 : ℚ)⟩
  r := (1054171121111 / 1000000000000 : ℚ)
  w := (3069649482831 / 3125000000000 : ℚ)
  center := (12148437500000001 / 100000000000000000 : ℚ)
  supportValue := (8324462830919409 / 20000000000000000 : ℚ)
  supportSlope := (281235008239511 / 62500000000000 : ℚ)
  oldCenter := (8324462830919409 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_363
  oldPieces := [piece_1006]
}

def cell_4065 : Cell := { cellDefaults with
  domain := ⟨(12150000000000001 / 100000000000000000 : ℚ), (12153125000000001 / 100000000000000000 : ℚ)⟩
  center := (12151562500000001 / 100000000000000000 : ℚ)
  supportValue := (4160937740956063 / 10000000000000000 : ℚ)
  supportSlope := (4496933362212019 / 1000000000000000 : ℚ)
  oldCenter := (4160937740956063 / 10000000000000000 : ℚ)
  oldPieces := [piece_1006]
}

def cell_4066 : Cell := { cellDefaults with
  domain := ⟨(12153125000000001 / 100000000000000000 : ℚ), (12156250000000001 / 100000000000000000 : ℚ)⟩
  center := (12154687500000001 / 100000000000000000 : ℚ)
  supportValue := (1040585816998619 / 2500000000000000 : ℚ)
  supportSlope := (899688246995467 / 200000000000000 : ℚ)
  oldCenter := (1040585816998619 / 2500000000000000 : ℚ)
  oldPieces := [piece_1006]
}

def cell_4067 : Cell := { cellDefaults with
  domain := ⟨(12156250000000001 / 100000000000000000 : ℚ), (12159375000000001 / 100000000000000000 : ℚ)⟩
  center := (12157812500000001 / 100000000000000000 : ℚ)
  supportValue := (166549970666029 / 400000000000000 : ℚ)
  supportSlope := (112498792959137 / 25000000000000 : ℚ)
  oldCenter := (166549970666029 / 400000000000000 : ℚ)
  oldPieces := [piece_1006]
}

def cell_4068 : Cell := { cellDefaults with
  domain := ⟨(12159375000000001 / 100000000000000000 : ℚ), (12162500000000001 / 100000000000000000 : ℚ)⟩
  center := (12160937500000001 / 100000000000000000 : ℚ)
  supportValue := (2603221761472441 / 6250000000000000 : ℚ)
  supportSlope := (1124985418279767 / 250000000000000 : ℚ)
  oldCenter := (2603221761472441 / 6250000000000000 : ℚ)
  oldHi := (10425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1006, piece_1007]
}

def cell_4069 : Cell := { cellDefaults with
  domain := ⟨(12162500000000001 / 100000000000000000 : ℚ), (12165625000000001 / 100000000000000000 : ℚ)⟩
  center := (12164062500000001 / 100000000000000000 : ℚ)
  supportValue := (8333123630736149 / 20000000000000000 : ℚ)
  supportSlope := (180019051664857 / 40000000000000 : ℚ)
  oldCenter := (8333123630736149 / 20000000000000000 : ℚ)
  oldLo := (10412500000000001 / 25000000000000000 : ℚ)
  oldHi := (10425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1007]
}

def cell_4070 : Cell := { cellDefaults with
  domain := ⟨(12165625000000001 / 100000000000000000 : ℚ), (12168750000000001 / 100000000000000000 : ℚ)⟩
  center := (12167187500000001 / 100000000000000000 : ℚ)
  supportValue := (10419921122475459 / 25000000000000000 : ℚ)
  supportSlope := (4501980437616737 / 1000000000000000 : ℚ)
  oldCenter := (10419921122475459 / 25000000000000000 : ℚ)
  oldLo := (10412500000000001 / 25000000000000000 : ℚ)
  oldHi := (10425000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1007]
}

def cell_4071 : Cell := { cellDefaults with
  domain := ⟨(12168750000000001 / 100000000000000000 : ℚ), (12171875000000001 / 100000000000000000 : ℚ)⟩
  center := (12170312500000001 / 100000000000000000 : ℚ)
  supportValue := (1042343888265703 / 2500000000000000 : ℚ)
  supportSlope := (4503346993809387 / 1000000000000000 : ℚ)
  oldCenter := (1042343888265703 / 2500000000000000 : ℚ)
  oldLo := (10412500000000001 / 25000000000000000 : ℚ)
  oldHi := (10437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1007, piece_1008]
}

def cell_4072 : Cell := { cellDefaults with
  domain := ⟨(12171875000000001 / 100000000000000000 : ℚ), (12175000000000001 / 100000000000000000 : ℚ)⟩
  center := (12173437500000001 / 100000000000000000 : ℚ)
  supportValue := (2085391348567119 / 5000000000000000 : ℚ)
  supportSlope := (22512566268027 / 5000000000000 : ℚ)
  oldCenter := (2085391348567119 / 5000000000000000 : ℚ)
  oldLo := (10425000000000001 / 25000000000000000 : ℚ)
  oldHi := (10437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1008]
}

def cell_4073 : Cell := { cellDefaults with
  domain := ⟨(12175000000000001 / 100000000000000000 : ℚ), (12178125000000001 / 100000000000000000 : ℚ)⟩
  center := (12176562500000001 / 100000000000000000 : ℚ)
  supportValue := (20860949831540057 / 50000000000000000 : ℚ)
  supportSlope := (1126002750164723 / 250000000000000 : ℚ)
  oldCenter := (20860949831540057 / 50000000000000000 : ℚ)
  oldLo := (10425000000000001 / 25000000000000000 : ℚ)
  oldHi := (10437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1008]
}

def cell_4074 : Cell := { cellDefaults with
  domain := ⟨(12178125000000001 / 100000000000000000 : ℚ), (12181250000000001 / 100000000000000000 : ℚ)⟩
  center := (12179687500000001 / 100000000000000000 : ℚ)
  supportValue := (2086798851964429 / 5000000000000000 : ℚ)
  supportSlope := (4505511316821753 / 1000000000000000 : ℚ)
  oldCenter := (2086798851964429 / 5000000000000000 : ℚ)
  oldLo := (10425000000000001 / 25000000000000000 : ℚ)
  oldHi := (10437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1008]
}

def cell_4075 : Cell := { cellDefaults with
  domain := ⟨(12181250000000001 / 100000000000000000 : ℚ), (12184375000000001 / 100000000000000000 : ℚ)⟩
  center := (12182812500000001 / 100000000000000000 : ℚ)
  supportValue := (10437512680855711 / 25000000000000000 : ℚ)
  supportSlope := (9011540578924837 / 2000000000000000 : ℚ)
  oldCenter := (10437512680855711 / 25000000000000000 : ℚ)
  oldLo := (10425000000000001 / 25000000000000000 : ℚ)
  oldHi := (10450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1008, piece_1009]
}

def cell_4076 : Cell := { cellDefaults with
  domain := ⟨(12184375000000001 / 100000000000000000 : ℚ), (12187500000000001 / 100000000000000000 : ℚ)⟩
  center := (12185937500000001 / 100000000000000000 : ℚ)
  supportValue := (4176413812632807 / 10000000000000000 : ℚ)
  supportSlope := (4506043364068901 / 1000000000000000 : ℚ)
  oldCenter := (4176413812632807 / 10000000000000000 : ℚ)
  oldLo := (10437500000000001 / 25000000000000000 : ℚ)
  oldHi := (10450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1009]
}

def cell_4077 : Cell := { cellDefaults with
  domain := ⟨(12187500000000001 / 100000000000000000 : ℚ), (12190625000000001 / 100000000000000000 : ℚ)⟩
  center := (12189062500000001 / 100000000000000000 : ℚ)
  supportValue := (41778221843632973 / 100000000000000000 : ℚ)
  supportSlope := (901507449893657 / 200000000000000 : ℚ)
  oldCenter := (41778221843632973 / 100000000000000000 : ℚ)
  oldLo := (10437500000000001 / 25000000000000000 : ℚ)
  oldHi := (10450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1009]
}

def cell_4078 : Cell := { cellDefaults with
  domain := ⟨(12190625000000001 / 100000000000000000 : ℚ), (12193750000000001 / 100000000000000000 : ℚ)⟩
  center := (12192187500000001 / 100000000000000000 : ℚ)
  supportValue := (10448077558328349 / 25000000000000000 : ℚ)
  supportSlope := (4509033686353803 / 1000000000000000 : ℚ)
  oldCenter := (10448077558328349 / 25000000000000000 : ℚ)
  oldLo := (10437500000000001 / 25000000000000000 : ℚ)
  oldHi := (10450000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1009]
}

def cell_4079 : Cell := { cellDefaults with
  domain := ⟨(12193750000000001 / 100000000000000000 : ℚ), (12196875000000001 / 100000000000000000 : ℚ)⟩
  center := (12195312500000001 / 100000000000000000 : ℚ)
  supportValue := (4180639981834221 / 10000000000000000 : ℚ)
  supportSlope := (1127046960448741 / 250000000000000 : ℚ)
  oldCenter := (4180639981834221 / 10000000000000000 : ℚ)
  oldLo := (10437500000000001 / 25000000000000000 : ℚ)
  oldHi := (10462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1009, piece_1010]
}

def cell_4080 : Cell := { cellDefaults with
  domain := ⟨(12196875000000001 / 100000000000000000 : ℚ), (12200000000000001 / 100000000000000000 : ℚ)⟩
  center := (12198437500000001 / 100000000000000000 : ℚ)
  supportValue := (20910244940685413 / 50000000000000000 : ℚ)
  supportSlope := (9019130438876033 / 2000000000000000 : ℚ)
  oldCenter := (20910244940685413 / 50000000000000000 : ℚ)
  oldLo := (10450000000000001 / 25000000000000000 : ℚ)
  oldHi := (10462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1010]
}

def cell_4081 : Cell := { cellDefaults with
  domain := ⟨(12200000000000001 / 100000000000000000 : ℚ), (12203125000000001 / 100000000000000000 : ℚ)⟩
  r := (2629178795511 / 2500000000000 : ℚ)
  w := (98301178976293 / 100000000000000 : ℚ)
  center := (12201562500000001 / 100000000000000000 : ℚ)
  supportValue := (20903628968471233 / 50000000000000000 : ℚ)
  supportSlope := (901339309911009 / 200000000000000 : ℚ)
  oldCenter := (20903628968471233 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_365
  oldLo := (10450000000000001 / 25000000000000000 : ℚ)
  oldHi := (10462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1010]
}

def cell_4082 : Cell := { cellDefaults with
  domain := ⟨(12203125000000001 / 100000000000000000 : ℚ), (12206250000000001 / 100000000000000000 : ℚ)⟩
  r := (2629178795511 / 2500000000000 : ℚ)
  w := (98301178976293 / 100000000000000 : ℚ)
  center := (12204687500000001 / 100000000000000000 : ℚ)
  supportValue := (20910671845786827 / 50000000000000000 : ℚ)
  supportSlope := (4508187949447517 / 1000000000000000 : ℚ)
  oldCenter := (20910671845786827 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_365
  oldLo := (10450000000000001 / 25000000000000000 : ℚ)
  oldHi := (10462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1010]
}

def cell_4083 : Cell := { cellDefaults with
  domain := ⟨(12206250000000001 / 100000000000000000 : ℚ), (12209375000000001 / 100000000000000000 : ℚ)⟩
  r := (2629178795511 / 2500000000000 : ℚ)
  w := (98301178976293 / 100000000000000 : ℚ)
  center := (12207812500000001 / 100000000000000000 : ℚ)
  supportValue := (20917717055395607 / 50000000000000000 : ℚ)
  supportSlope := (450968188674139 / 100000000000000 : ℚ)
  oldCenter := (20917717055395607 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_365
  oldLo := (10450000000000001 / 25000000000000000 : ℚ)
  oldHi := (10462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1010]
}

def cell_4084 : Cell := { cellDefaults with
  domain := ⟨(12209375000000001 / 100000000000000000 : ℚ), (12212500000000001 / 100000000000000000 : ℚ)⟩
  r := (2629178795511 / 2500000000000 : ℚ)
  w := (98301178976293 / 100000000000000 : ℚ)
  center := (12210937500000001 / 100000000000000000 : ℚ)
  supportValue := (41849520832627907 / 100000000000000000 : ℚ)
  supportSlope := (2255019465730257 / 500000000000000 : ℚ)
  oldCenter := (41849520832627907 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_365
  oldLo := (10450000000000001 / 25000000000000000 : ℚ)
  oldHi := (10475000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1010, piece_1011]
}

def cell_4085 : Cell := { cellDefaults with
  domain := ⟨(12212500000000001 / 100000000000000000 : ℚ), (12215625000000001 / 100000000000000000 : ℚ)⟩
  r := (2629178795511 / 2500000000000 : ℚ)
  w := (98301178976293 / 100000000000000 : ℚ)
  center := (12214062500000001 / 100000000000000000 : ℚ)
  supportValue := (41863621590114347 / 100000000000000000 : ℚ)
  supportSlope := (902045306694177 / 200000000000000 : ℚ)
  oldCenter := (41863621590114347 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_365
  oldLo := (10462500000000001 / 25000000000000000 : ℚ)
  oldHi := (10475000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1011]
}

def cell_4086 : Cell := { cellDefaults with
  domain := ⟨(12215625000000001 / 100000000000000000 : ℚ), (12218750000000001 / 100000000000000000 : ℚ)⟩
  r := (2629178795511 / 2500000000000 : ℚ)
  w := (98301178976293 / 100000000000000 : ℚ)
  center := (12217187500000001 / 100000000000000000 : ℚ)
  supportValue := (8375543673913699 / 20000000000000000 : ℚ)
  supportSlope := (451171384835547 / 100000000000000 : ℚ)
  oldCenter := (8375543673913699 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_365
  oldLo := (10462500000000001 / 25000000000000000 : ℚ)
  oldHi := (10475000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1011]
}

def cell_4087 : Cell := { cellDefaults with
  domain := ⟨(12218750000000001 / 100000000000000000 : ℚ), (12221875000000001 / 100000000000000000 : ℚ)⟩
  r := (2629178795511 / 2500000000000 : ℚ)
  w := (98301178976293 / 100000000000000 : ℚ)
  center := (12220312500000001 / 100000000000000000 : ℚ)
  supportValue := (2094590990040739 / 5000000000000000 : ℚ)
  supportSlope := (2256601841159167 / 500000000000000 : ℚ)
  oldCenter := (2094590990040739 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_365
  oldLo := (10462500000000001 / 25000000000000000 : ℚ)
  oldHi := (10475000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1011]
}

def cell_4088 : Cell := { cellDefaults with
  domain := ⟨(12221875000000001 / 100000000000000000 : ℚ), (12225000000000001 / 100000000000000000 : ℚ)⟩
  r := (2629178795511 / 2500000000000 : ℚ)
  w := (98301178976293 / 100000000000000 : ℚ)
  center := (12223437500000001 / 100000000000000000 : ℚ)
  supportValue := (4190592270396191 / 10000000000000000 : ℚ)
  supportSlope := (180498377195093 / 40000000000000 : ℚ)
  oldCenter := (4190592270396191 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_365
  oldLo := (10462500000000001 / 25000000000000000 : ℚ)
  oldHi := (2096368715083799 / 5000000000000000 : ℚ)
  oldPieces := [piece_1011, piece_1012]
}

def cell_4089 : Cell := { cellDefaults with
  domain := ⟨(12225000000000001 / 100000000000000000 : ℚ), (12228125000000001 / 100000000000000000 : ℚ)⟩
  r := (2629178795511 / 2500000000000 : ℚ)
  w := (98301178976293 / 100000000000000 : ℚ)
  center := (12226562500000001 / 100000000000000000 : ℚ)
  supportValue := (4192002584847401 / 10000000000000000 : ℚ)
  supportSlope := (9027495197909019 / 2000000000000000 : ℚ)
  oldCenter := (4192002584847401 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_365
  oldLo := (10475000000000001 / 25000000000000000 : ℚ)
  oldHi := (2096368715083799 / 5000000000000000 : ℚ)
  oldPieces := [piece_1012]
}

def cell_4090 : Cell := { cellDefaults with
  domain := ⟨(12228125000000001 / 100000000000000000 : ℚ), (12231250000000001 / 100000000000000000 : ℚ)⟩
  r := (2629178795511 / 2500000000000 : ℚ)
  w := (98301178976293 / 100000000000000 : ℚ)
  center := (12229687500000001 / 100000000000000000 : ℚ)
  supportValue := (4193413362693249 / 10000000000000000 : ℚ)
  supportSlope := (4515232172799699 / 1000000000000000 : ℚ)
  oldCenter := (4193413362693249 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_365
  oldLo := (10475000000000001 / 25000000000000000 : ℚ)
  oldHi := (10487500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1012, piece_1013]
}

def cell_4091 : Cell := { cellDefaults with
  domain := ⟨(12231250000000001 / 100000000000000000 : ℚ), (12234375000000001 / 100000000000000000 : ℚ)⟩
  r := (2629178795511 / 2500000000000 : ℚ)
  w := (98301178976293 / 100000000000000 : ℚ)
  center := (12232812500000001 / 100000000000000000 : ℚ)
  supportValue := (8389647531545481 / 20000000000000000 : ℚ)
  supportSlope := (4515810605886017 / 1000000000000000 : ℚ)
  oldCenter := (8389647531545481 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_365
  oldLo := (2096368715083799 / 5000000000000000 : ℚ)
  oldHi := (10500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1013, piece_1014]
}

def cell_4092 : Cell := { cellDefaults with
  domain := ⟨(12234375000000001 / 100000000000000000 : ℚ), (12237500000000001 / 100000000000000000 : ℚ)⟩
  r := (2629178795511 / 2500000000000 : ℚ)
  w := (98301178976293 / 100000000000000 : ℚ)
  center := (12235937500000001 / 100000000000000000 : ℚ)
  supportValue := (209811782490427 / 500000000000000 : ℚ)
  supportSlope := (1128945971467843 / 250000000000000 : ℚ)
  oldCenter := (209811782490427 / 500000000000000 : ℚ)
  newCoefficients := coefficients_365
  oldLo := (10487500000000001 / 25000000000000000 : ℚ)
  oldHi := (10500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1014]
}

def cell_4093 : Cell := { cellDefaults with
  domain := ⟨(12237500000000001 / 100000000000000000 : ℚ), (12240625000000001 / 100000000000000000 : ℚ)⟩
  r := (2629178795511 / 2500000000000 : ℚ)
  w := (98301178976293 / 100000000000000 : ℚ)
  center := (12239062500000001 / 100000000000000000 : ℚ)
  supportValue := (8395294125943853 / 20000000000000000 : ℚ)
  supportSlope := (2258630941284423 / 500000000000000 : ℚ)
  oldCenter := (8395294125943853 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_365
  oldLo := (10487500000000001 / 25000000000000000 : ℚ)
  oldHi := (10500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1014]
}

def cell_4094 : Cell := { cellDefaults with
  domain := ⟨(12240625000000001 / 100000000000000000 : ℚ), (12243750000000001 / 100000000000000000 : ℚ)⟩
  r := (2629178795511 / 2500000000000 : ℚ)
  w := (98301178976293 / 100000000000000 : ℚ)
  center := (12242187500000001 / 100000000000000000 : ℚ)
  supportValue := (4199058938396651 / 10000000000000000 : ℚ)
  supportSlope := (4518742360298589 / 1000000000000000 : ℚ)
  oldCenter := (4199058938396651 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_365
  oldLo := (10487500000000001 / 25000000000000000 : ℚ)
  oldHi := (10500000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1014]
}

def cell_4095 : Cell := { cellDefaults with
  domain := ⟨(12243750000000001 / 100000000000000000 : ℚ), (12246875000000001 / 100000000000000000 : ℚ)⟩
  r := (2629178795511 / 2500000000000 : ℚ)
  w := (98301178976293 / 100000000000000 : ℚ)
  center := (12245312500000001 / 100000000000000000 : ℚ)
  supportValue := (4200471026164643 / 10000000000000000 : ℚ)
  supportSlope := (180728768732763 / 40000000000000 : ℚ)
  oldCenter := (4200471026164643 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_365
  oldLo := (10487500000000001 / 25000000000000000 : ℚ)
  oldHi := (10512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1014, piece_1015]
}

def cell_4096 : Cell := { cellDefaults with
  domain := ⟨(12246875000000001 / 100000000000000000 : ℚ), (12250000000000001 / 100000000000000000 : ℚ)⟩
  r := (2629178795511 / 2500000000000 : ℚ)
  w := (98301178976293 / 100000000000000 : ℚ)
  center := (12248437500000001 / 100000000000000000 : ℚ)
  supportValue := (4201883074978907 / 10000000000000000 : ℚ)
  supportSlope := (225964653176991 / 50000000000000 : ℚ)
  oldCenter := (4201883074978907 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_365
  oldLo := (10500000000000001 / 25000000000000000 : ℚ)
  oldHi := (10512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1015]
}

def cell_4097 : Cell := { cellDefaults with
  domain := ⟨(12250000000000001 / 100000000000000000 : ℚ), (12253125000000001 / 100000000000000000 : ℚ)⟩
  r := (10504265777957 / 10000000000000 : ℚ)
  w := (3073009387551 / 3125000000000 : ℚ)
  center := (12251562500000001 / 100000000000000000 : ℚ)
  supportValue := (21002654213899183 / 50000000000000000 : ℚ)
  supportSlope := (903336553678713 / 200000000000000 : ℚ)
  oldCenter := (21002654213899183 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_366
  oldLo := (10487500000000001 / 25000000000000000 : ℚ)
  oldHi := (10512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1014, piece_1015]
}

def cell_4098 : Cell := { cellDefaults with
  domain := ⟨(12253125000000001 / 100000000000000000 : ℚ), (12256250000000001 / 100000000000000000 : ℚ)⟩
  r := (10504265777957 / 10000000000000 : ℚ)
  w := (3073009387551 / 3125000000000 : ℚ)
  center := (12254687500000001 / 100000000000000000 : ℚ)
  supportValue := (420194244374839 / 1000000000000000 : ℚ)
  supportSlope := (4517861300433523 / 1000000000000000 : ℚ)
  oldCenter := (420194244374839 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_366
  oldLo := (10500000000000001 / 25000000000000000 : ℚ)
  oldHi := (10512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1015]
}

def cell_4099 : Cell := { cellDefaults with
  domain := ⟨(12256250000000001 / 100000000000000000 : ℚ), (12259375000000001 / 100000000000000000 : ℚ)⟩
  r := (10504265777957 / 10000000000000 : ℚ)
  w := (3073009387551 / 3125000000000 : ℚ)
  center := (12257812500000001 / 100000000000000000 : ℚ)
  supportValue := (5254193132503527 / 12500000000000000 : ℚ)
  supportSlope := (1129834662175977 / 250000000000000 : ℚ)
  oldCenter := (5254193132503527 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_366
  oldLo := (10500000000000001 / 25000000000000000 : ℚ)
  oldHi := (10512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1015]
}

theorem check_4050 : SourceCertificateFamily.RightNormalized.check cell_4050 = true := by
  decide +kernel

theorem check_4051 : SourceCertificateFamily.RightNormalized.check cell_4051 = true := by
  decide +kernel

theorem check_4052 : SourceCertificateFamily.RightNormalized.check cell_4052 = true := by
  decide +kernel

theorem check_4053 : SourceCertificateFamily.RightNormalized.check cell_4053 = true := by
  decide +kernel

theorem check_4054 : SourceCertificateFamily.RightNormalized.check cell_4054 = true := by
  decide +kernel

theorem check_4055 : SourceCertificateFamily.RightNormalized.check cell_4055 = true := by
  decide +kernel

theorem check_4056 : SourceCertificateFamily.RightNormalized.check cell_4056 = true := by
  decide +kernel

theorem check_4057 : SourceCertificateFamily.RightNormalized.check cell_4057 = true := by
  decide +kernel

theorem check_4058 : SourceCertificateFamily.RightNormalized.check cell_4058 = true := by
  decide +kernel

theorem check_4059 : SourceCertificateFamily.RightNormalized.check cell_4059 = true := by
  decide +kernel

theorem check_4060 : SourceCertificateFamily.RightNormalized.check cell_4060 = true := by
  decide +kernel

theorem check_4061 : SourceCertificateFamily.RightNormalized.check cell_4061 = true := by
  decide +kernel

theorem check_4062 : SourceCertificateFamily.RightNormalized.check cell_4062 = true := by
  decide +kernel

theorem check_4063 : SourceCertificateFamily.RightNormalized.check cell_4063 = true := by
  decide +kernel

theorem check_4064 : SourceCertificateFamily.RightNormalized.check cell_4064 = true := by
  decide +kernel

theorem check_4065 : SourceCertificateFamily.RightNormalized.check cell_4065 = true := by
  decide +kernel

theorem check_4066 : SourceCertificateFamily.RightNormalized.check cell_4066 = true := by
  decide +kernel

theorem check_4067 : SourceCertificateFamily.RightNormalized.check cell_4067 = true := by
  decide +kernel

theorem check_4068 : SourceCertificateFamily.RightNormalized.check cell_4068 = true := by
  decide +kernel

theorem check_4069 : SourceCertificateFamily.RightNormalized.check cell_4069 = true := by
  decide +kernel

theorem check_4070 : SourceCertificateFamily.RightNormalized.check cell_4070 = true := by
  decide +kernel

theorem check_4071 : SourceCertificateFamily.RightNormalized.check cell_4071 = true := by
  decide +kernel

theorem check_4072 : SourceCertificateFamily.RightNormalized.check cell_4072 = true := by
  decide +kernel

theorem check_4073 : SourceCertificateFamily.RightNormalized.check cell_4073 = true := by
  decide +kernel

theorem check_4074 : SourceCertificateFamily.RightNormalized.check cell_4074 = true := by
  decide +kernel

theorem check_4075 : SourceCertificateFamily.RightNormalized.check cell_4075 = true := by
  decide +kernel

theorem check_4076 : SourceCertificateFamily.RightNormalized.check cell_4076 = true := by
  decide +kernel

theorem check_4077 : SourceCertificateFamily.RightNormalized.check cell_4077 = true := by
  decide +kernel

theorem check_4078 : SourceCertificateFamily.RightNormalized.check cell_4078 = true := by
  decide +kernel

theorem check_4079 : SourceCertificateFamily.RightNormalized.check cell_4079 = true := by
  decide +kernel

theorem check_4080 : SourceCertificateFamily.RightNormalized.check cell_4080 = true := by
  decide +kernel

theorem check_4081 : SourceCertificateFamily.RightNormalized.check cell_4081 = true := by
  decide +kernel

theorem check_4082 : SourceCertificateFamily.RightNormalized.check cell_4082 = true := by
  decide +kernel

theorem check_4083 : SourceCertificateFamily.RightNormalized.check cell_4083 = true := by
  decide +kernel

theorem check_4084 : SourceCertificateFamily.RightNormalized.check cell_4084 = true := by
  decide +kernel

theorem check_4085 : SourceCertificateFamily.RightNormalized.check cell_4085 = true := by
  decide +kernel

theorem check_4086 : SourceCertificateFamily.RightNormalized.check cell_4086 = true := by
  decide +kernel

theorem check_4087 : SourceCertificateFamily.RightNormalized.check cell_4087 = true := by
  decide +kernel

theorem check_4088 : SourceCertificateFamily.RightNormalized.check cell_4088 = true := by
  decide +kernel

theorem check_4089 : SourceCertificateFamily.RightNormalized.check cell_4089 = true := by
  decide +kernel

theorem check_4090 : SourceCertificateFamily.RightNormalized.check cell_4090 = true := by
  decide +kernel

theorem check_4091 : SourceCertificateFamily.RightNormalized.check cell_4091 = true := by
  decide +kernel

theorem check_4092 : SourceCertificateFamily.RightNormalized.check cell_4092 = true := by
  decide +kernel

theorem check_4093 : SourceCertificateFamily.RightNormalized.check cell_4093 = true := by
  decide +kernel

theorem check_4094 : SourceCertificateFamily.RightNormalized.check cell_4094 = true := by
  decide +kernel

theorem check_4095 : SourceCertificateFamily.RightNormalized.check cell_4095 = true := by
  decide +kernel

theorem check_4096 : SourceCertificateFamily.RightNormalized.check cell_4096 = true := by
  decide +kernel

theorem check_4097 : SourceCertificateFamily.RightNormalized.check cell_4097 = true := by
  decide +kernel

theorem check_4098 : SourceCertificateFamily.RightNormalized.check cell_4098 = true := by
  decide +kernel

theorem check_4099 : SourceCertificateFamily.RightNormalized.check cell_4099 = true := by
  decide +kernel

def cells : List Cell := [cell_4050, cell_4051, cell_4052, cell_4053, cell_4054, cell_4055, cell_4056, cell_4057, cell_4058, cell_4059, cell_4060, cell_4061, cell_4062, cell_4063, cell_4064, cell_4065, cell_4066, cell_4067, cell_4068, cell_4069, cell_4070, cell_4071, cell_4072, cell_4073, cell_4074, cell_4075, cell_4076, cell_4077, cell_4078, cell_4079, cell_4080, cell_4081, cell_4082, cell_4083, cell_4084, cell_4085, cell_4086, cell_4087, cell_4088, cell_4089, cell_4090, cell_4091, cell_4092, cell_4093, cell_4094, cell_4095, cell_4096, cell_4097, cell_4098, cell_4099]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_4050, SourceCertificateFamily.of_right_checked check_4051, SourceCertificateFamily.of_right_checked check_4052, SourceCertificateFamily.of_right_checked check_4053, SourceCertificateFamily.of_right_checked check_4054, SourceCertificateFamily.of_right_checked check_4055, SourceCertificateFamily.of_right_checked check_4056, SourceCertificateFamily.of_right_checked check_4057, SourceCertificateFamily.of_right_checked check_4058, SourceCertificateFamily.of_right_checked check_4059, SourceCertificateFamily.of_right_checked check_4060, SourceCertificateFamily.of_right_checked check_4061, SourceCertificateFamily.of_right_checked check_4062, SourceCertificateFamily.of_right_checked check_4063, SourceCertificateFamily.of_right_checked check_4064, SourceCertificateFamily.of_right_checked check_4065, SourceCertificateFamily.of_right_checked check_4066, SourceCertificateFamily.of_right_checked check_4067, SourceCertificateFamily.of_right_checked check_4068, SourceCertificateFamily.of_right_checked check_4069, SourceCertificateFamily.of_right_checked check_4070, SourceCertificateFamily.of_right_checked check_4071, SourceCertificateFamily.of_right_checked check_4072, SourceCertificateFamily.of_right_checked check_4073, SourceCertificateFamily.of_right_checked check_4074, SourceCertificateFamily.of_right_checked check_4075, SourceCertificateFamily.of_right_checked check_4076, SourceCertificateFamily.of_right_checked check_4077, SourceCertificateFamily.of_right_checked check_4078, SourceCertificateFamily.of_right_checked check_4079, SourceCertificateFamily.of_right_checked check_4080, SourceCertificateFamily.of_right_checked check_4081, SourceCertificateFamily.of_right_checked check_4082, SourceCertificateFamily.of_right_checked check_4083, SourceCertificateFamily.of_right_checked check_4084, SourceCertificateFamily.of_right_checked check_4085, SourceCertificateFamily.of_right_checked check_4086, SourceCertificateFamily.of_right_checked check_4087, SourceCertificateFamily.of_right_checked check_4088, SourceCertificateFamily.of_right_checked check_4089, SourceCertificateFamily.of_right_checked check_4090, SourceCertificateFamily.of_right_checked check_4091, SourceCertificateFamily.of_right_checked check_4092, SourceCertificateFamily.of_right_checked check_4093, SourceCertificateFamily.of_right_checked check_4094, SourceCertificateFamily.of_right_checked check_4095, SourceCertificateFamily.of_right_checked check_4096, SourceCertificateFamily.of_right_checked check_4097, SourceCertificateFamily.of_right_checked check_4098, SourceCertificateFamily.of_right_checked check_4099, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0081

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0081
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0081
open AnalyticBounds.ExpressionCertificate

theorem linked_4050 : Linked cell_4050 pieces := by
  apply Linked.of_piece piece_363 piece_363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4050, List.cons_subset, List.nil_subset, and_true]
  exact piece_1002_mem

theorem linked_4051 : Linked cell_4051 pieces := by
  apply Linked.of_piece piece_363 piece_363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4051, List.cons_subset, List.nil_subset, and_true]
  exact piece_1002_mem

theorem linked_4052 : Linked cell_4052 pieces := by
  apply Linked.of_piece piece_363 piece_363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4052, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1002_mem, piece_1003_mem⟩

theorem linked_4053 : Linked cell_4053 pieces := by
  apply Linked.of_piece piece_363 piece_363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4053, List.cons_subset, List.nil_subset, and_true]
  exact piece_1003_mem

theorem linked_4054 : Linked cell_4054 pieces := by
  apply Linked.of_piece piece_363 piece_363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4054, List.cons_subset, List.nil_subset, and_true]
  exact piece_1003_mem

theorem linked_4055 : Linked cell_4055 pieces := by
  apply Linked.of_piece piece_363 piece_363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4055, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1003_mem, piece_1004_mem⟩

theorem linked_4056 : Linked cell_4056 pieces := by
  apply Linked.of_piece piece_363 piece_363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4056, List.cons_subset, List.nil_subset, and_true]
  exact piece_1004_mem

theorem linked_4057 : Linked cell_4057 pieces := by
  apply Linked.of_piece piece_363 piece_363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4057, List.cons_subset, List.nil_subset, and_true]
  exact piece_1004_mem

theorem linked_4058 : Linked cell_4058 pieces := by
  apply Linked.of_piece piece_363 piece_363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4058, List.cons_subset, List.nil_subset, and_true]
  exact piece_1004_mem

theorem linked_4059 : Linked cell_4059 pieces := by
  apply Linked.of_piece piece_363 piece_363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4059, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1004_mem, piece_1005_mem⟩

theorem linked_4060 : Linked cell_4060 pieces := by
  apply Linked.of_piece piece_363 piece_363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4060, List.cons_subset, List.nil_subset, and_true]
  exact piece_1005_mem

theorem linked_4061 : Linked cell_4061 pieces := by
  apply Linked.of_piece piece_363 piece_363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4061, List.cons_subset, List.nil_subset, and_true]
  exact piece_1005_mem

theorem linked_4062 : Linked cell_4062 pieces := by
  apply Linked.of_piece piece_363 piece_363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4062, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1005_mem, piece_1006_mem⟩

theorem linked_4063 : Linked cell_4063 pieces := by
  apply Linked.of_piece piece_363 piece_363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4063, List.cons_subset, List.nil_subset, and_true]
  exact piece_1006_mem

theorem linked_4064 : Linked cell_4064 pieces := by
  apply Linked.of_piece piece_363 piece_363_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4064, List.cons_subset, List.nil_subset, and_true]
  exact piece_1006_mem

theorem linked_4065 : Linked cell_4065 pieces := by
  apply Linked.of_piece piece_364 piece_364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4065, List.cons_subset, List.nil_subset, and_true]
  exact piece_1006_mem

theorem linked_4066 : Linked cell_4066 pieces := by
  apply Linked.of_piece piece_364 piece_364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4066, List.cons_subset, List.nil_subset, and_true]
  exact piece_1006_mem

theorem linked_4067 : Linked cell_4067 pieces := by
  apply Linked.of_piece piece_364 piece_364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4067, List.cons_subset, List.nil_subset, and_true]
  exact piece_1006_mem

theorem linked_4068 : Linked cell_4068 pieces := by
  apply Linked.of_piece piece_364 piece_364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4068, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1006_mem, piece_1007_mem⟩

theorem linked_4069 : Linked cell_4069 pieces := by
  apply Linked.of_piece piece_364 piece_364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4069, List.cons_subset, List.nil_subset, and_true]
  exact piece_1007_mem

theorem linked_4070 : Linked cell_4070 pieces := by
  apply Linked.of_piece piece_364 piece_364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4070, List.cons_subset, List.nil_subset, and_true]
  exact piece_1007_mem

theorem linked_4071 : Linked cell_4071 pieces := by
  apply Linked.of_piece piece_364 piece_364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4071, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1007_mem, piece_1008_mem⟩

theorem linked_4072 : Linked cell_4072 pieces := by
  apply Linked.of_piece piece_364 piece_364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4072, List.cons_subset, List.nil_subset, and_true]
  exact piece_1008_mem

theorem linked_4073 : Linked cell_4073 pieces := by
  apply Linked.of_piece piece_364 piece_364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4073, List.cons_subset, List.nil_subset, and_true]
  exact piece_1008_mem

theorem linked_4074 : Linked cell_4074 pieces := by
  apply Linked.of_piece piece_364 piece_364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4074, List.cons_subset, List.nil_subset, and_true]
  exact piece_1008_mem

theorem linked_4075 : Linked cell_4075 pieces := by
  apply Linked.of_piece piece_364 piece_364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4075, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1008_mem, piece_1009_mem⟩

theorem linked_4076 : Linked cell_4076 pieces := by
  apply Linked.of_piece piece_364 piece_364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4076, List.cons_subset, List.nil_subset, and_true]
  exact piece_1009_mem

theorem linked_4077 : Linked cell_4077 pieces := by
  apply Linked.of_piece piece_364 piece_364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4077, List.cons_subset, List.nil_subset, and_true]
  exact piece_1009_mem

theorem linked_4078 : Linked cell_4078 pieces := by
  apply Linked.of_piece piece_364 piece_364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4078, List.cons_subset, List.nil_subset, and_true]
  exact piece_1009_mem

theorem linked_4079 : Linked cell_4079 pieces := by
  apply Linked.of_piece piece_364 piece_364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4079, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1009_mem, piece_1010_mem⟩

theorem linked_4080 : Linked cell_4080 pieces := by
  apply Linked.of_piece piece_364 piece_364_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4080, List.cons_subset, List.nil_subset, and_true]
  exact piece_1010_mem

theorem linked_4081 : Linked cell_4081 pieces := by
  apply Linked.of_piece piece_365 piece_365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4081, List.cons_subset, List.nil_subset, and_true]
  exact piece_1010_mem

theorem linked_4082 : Linked cell_4082 pieces := by
  apply Linked.of_piece piece_365 piece_365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4082, List.cons_subset, List.nil_subset, and_true]
  exact piece_1010_mem

theorem linked_4083 : Linked cell_4083 pieces := by
  apply Linked.of_piece piece_365 piece_365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4083, List.cons_subset, List.nil_subset, and_true]
  exact piece_1010_mem

theorem linked_4084 : Linked cell_4084 pieces := by
  apply Linked.of_piece piece_365 piece_365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4084, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1010_mem, piece_1011_mem⟩

theorem linked_4085 : Linked cell_4085 pieces := by
  apply Linked.of_piece piece_365 piece_365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4085, List.cons_subset, List.nil_subset, and_true]
  exact piece_1011_mem

theorem linked_4086 : Linked cell_4086 pieces := by
  apply Linked.of_piece piece_365 piece_365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4086, List.cons_subset, List.nil_subset, and_true]
  exact piece_1011_mem

theorem linked_4087 : Linked cell_4087 pieces := by
  apply Linked.of_piece piece_365 piece_365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4087, List.cons_subset, List.nil_subset, and_true]
  exact piece_1011_mem

theorem linked_4088 : Linked cell_4088 pieces := by
  apply Linked.of_piece piece_365 piece_365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4088, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1011_mem, piece_1012_mem⟩

theorem linked_4089 : Linked cell_4089 pieces := by
  apply Linked.of_piece piece_365 piece_365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4089, List.cons_subset, List.nil_subset, and_true]
  exact piece_1012_mem

theorem linked_4090 : Linked cell_4090 pieces := by
  apply Linked.of_piece piece_365 piece_365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4090, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1012_mem, piece_1013_mem⟩

theorem linked_4091 : Linked cell_4091 pieces := by
  apply Linked.of_piece piece_365 piece_365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4091, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1013_mem, piece_1014_mem⟩

theorem linked_4092 : Linked cell_4092 pieces := by
  apply Linked.of_piece piece_365 piece_365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4092, List.cons_subset, List.nil_subset, and_true]
  exact piece_1014_mem

theorem linked_4093 : Linked cell_4093 pieces := by
  apply Linked.of_piece piece_365 piece_365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4093, List.cons_subset, List.nil_subset, and_true]
  exact piece_1014_mem

theorem linked_4094 : Linked cell_4094 pieces := by
  apply Linked.of_piece piece_365 piece_365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4094, List.cons_subset, List.nil_subset, and_true]
  exact piece_1014_mem

theorem linked_4095 : Linked cell_4095 pieces := by
  apply Linked.of_piece piece_365 piece_365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4095, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1014_mem, piece_1015_mem⟩

theorem linked_4096 : Linked cell_4096 pieces := by
  apply Linked.of_piece piece_365 piece_365_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4096, List.cons_subset, List.nil_subset, and_true]
  exact piece_1015_mem

theorem linked_4097 : Linked cell_4097 pieces := by
  apply Linked.of_piece piece_366 piece_366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4097, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1014_mem, piece_1015_mem⟩

theorem linked_4098 : Linked cell_4098 pieces := by
  apply Linked.of_piece piece_366 piece_366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4098, List.cons_subset, List.nil_subset, and_true]
  exact piece_1015_mem

theorem linked_4099 : Linked cell_4099 pieces := by
  apply Linked.of_piece piece_366 piece_366_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4099, List.cons_subset, List.nil_subset, and_true]
  exact piece_1015_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0081.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0081.cells,List.forall_mem_cons]
  exact ⟨linked_4050, linked_4051, linked_4052, linked_4053, linked_4054, linked_4055, linked_4056, linked_4057, linked_4058, linked_4059, linked_4060, linked_4061, linked_4062, linked_4063, linked_4064, linked_4065, linked_4066, linked_4067, linked_4068, linked_4069, linked_4070, linked_4071, linked_4072, linked_4073, linked_4074, linked_4075, linked_4076, linked_4077, linked_4078, linked_4079, linked_4080, linked_4081, linked_4082, linked_4083, linked_4084, linked_4085, linked_4086, linked_4087, linked_4088, linked_4089, linked_4090, linked_4091, linked_4092, linked_4093, linked_4094, linked_4095, linked_4096, linked_4097, linked_4098, linked_4099, by simp⟩

theorem covered : covers (12103125000000001 / 100000000000000000 : ℚ) (12259375000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0081.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0081
