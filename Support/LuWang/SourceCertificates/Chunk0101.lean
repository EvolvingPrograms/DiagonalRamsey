import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0101
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(4871 / 32000 : ℚ), (609 / 4000 : ℚ)⟩
  branch := .right
  r := (1533581781317 / 1562500000000 : ℚ)
  w := (99733033738757 / 100000000000000 : ℚ)
  center := (9743 / 64000 : ℚ)
  supportValue := (2705326575539219 / 5000000000000000 : ℚ)
  supportSlope := (2495397576105063 / 500000000000000 : ℚ)
  oldCenter := (2705326575539219 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_431
  oldLo := (13600000000000001 / 25000000000000000 : ℚ)
  oldHi := (27124999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1285]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_5050 : Cell := { cellDefaults with
  r := (98255264352131 / 100000000000000 : ℚ)
  w := (99715086901847 / 100000000000000 : ℚ)
  newCoefficients := coefficients_430
  oldLo := (540949720670391 / 1000000000000000 : ℚ)
  oldHi := (27074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1278, piece_1279]
}

def cell_5051 : Cell := { cellDefaults with
  domain := ⟨(609 / 4000 : ℚ), (4873 / 32000 : ℚ)⟩
  r := (98255264352131 / 100000000000000 : ℚ)
  w := (99715086901847 / 100000000000000 : ℚ)
  center := (1949 / 12800 : ℚ)
  supportValue := (5412212901323109 / 10000000000000000 : ℚ)
  supportSlope := (1247918217183397 / 250000000000000 : ℚ)
  oldCenter := (5412212901323109 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_430
  oldLo := (13525000000000001 / 25000000000000000 : ℚ)
  oldHi := (27074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1279]
}

def cell_5052 : Cell := { cellDefaults with
  domain := ⟨(4873 / 32000 : ℚ), (2437 / 16000 : ℚ)⟩
  r := (98255264352131 / 100000000000000 : ℚ)
  w := (99715086901847 / 100000000000000 : ℚ)
  center := (9747 / 64000 : ℚ)
  supportValue := (42295101143363 / 78125000000000 : ℚ)
  supportSlope := (199704657446631 / 40000000000000 : ℚ)
  oldCenter := (42295101143363 / 78125000000000 : ℚ)
  newCoefficients := coefficients_430
  oldLo := (13525000000000001 / 25000000000000000 : ℚ)
  oldHi := (27074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1279]
}

def cell_5053 : Cell := { cellDefaults with
  domain := ⟨(2437 / 16000 : ℚ), (39 / 256 : ℚ)⟩
  r := (98255264352131 / 100000000000000 : ℚ)
  w := (99715086901847 / 100000000000000 : ℚ)
  center := (9749 / 64000 : ℚ)
  supportValue := (1083066646489277 / 2000000000000000 : ℚ)
  supportSlope := (2496492310609 / 500000000000 : ℚ)
  oldCenter := (1083066646489277 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_430
  oldLo := (13525000000000001 / 25000000000000000 : ℚ)
  oldHi := (13550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1279, piece_1280]
}

def cell_5054 : Cell := { cellDefaults with
  domain := ⟨(39 / 256 : ℚ), (1219 / 8000 : ℚ)⟩
  r := (98255264352131 / 100000000000000 : ℚ)
  w := (99715086901847 / 100000000000000 : ℚ)
  center := (9751 / 64000 : ℚ)
  supportValue := (5416893615111413 / 10000000000000000 : ℚ)
  supportSlope := (4993695900072481 / 1000000000000000 : ℚ)
  oldCenter := (5416893615111413 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_430
  oldLo := (27074999999999999 / 50000000000000000 : ℚ)
  oldHi := (13550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1280]
}

def cell_5055 : Cell := { cellDefaults with
  domain := ⟨(1219 / 8000 : ℚ), (4877 / 32000 : ℚ)⟩
  r := (98255264352131 / 100000000000000 : ℚ)
  w := (99715086901847 / 100000000000000 : ℚ)
  center := (9753 / 64000 : ℚ)
  supportValue := (1354613573028147 / 2500000000000000 : ℚ)
  supportSlope := (4994638036787791 / 1000000000000000 : ℚ)
  oldCenter := (1354613573028147 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_430
  oldLo := (27074999999999999 / 50000000000000000 : ℚ)
  oldHi := (13550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1280]
}

def cell_5056 : Cell := { cellDefaults with
  domain := ⟨(4877 / 32000 : ℚ), (2439 / 16000 : ℚ)⟩
  r := (98255264352131 / 100000000000000 : ℚ)
  w := (99715086901847 / 100000000000000 : ℚ)
  center := (1951 / 12800 : ℚ)
  supportValue := (5420015261072333 / 10000000000000000 : ℚ)
  supportSlope := (2497585333838259 / 500000000000000 : ℚ)
  oldCenter := (5420015261072333 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_430
  oldLo := (27074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1280, piece_1281]
}

def cell_5057 : Cell := { cellDefaults with
  domain := ⟨(2439 / 16000 : ℚ), (4879 / 32000 : ℚ)⟩
  r := (98255264352131 / 100000000000000 : ℚ)
  w := (99715086901847 / 100000000000000 : ℚ)
  center := (9757 / 64000 : ℚ)
  supportValue := (2710788137907303 / 5000000000000000 : ℚ)
  supportSlope := (2497858914376039 / 500000000000000 : ℚ)
  oldCenter := (2710788137907303 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_430
  oldLo := (13550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1281]
}

def cell_5058 : Cell := { cellDefaults with
  domain := ⟨(4879 / 32000 : ℚ), (61 / 400 : ℚ)⟩
  r := (98255264352131 / 100000000000000 : ℚ)
  w := (99715086901847 / 100000000000000 : ℚ)
  center := (9759 / 64000 : ℚ)
  supportValue := (5423137584443559 / 10000000000000000 : ℚ)
  supportSlope := (2498329262698107 / 500000000000000 : ℚ)
  oldCenter := (5423137584443559 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_430
  oldLo := (13550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1281]
}

def cell_5059 : Cell := { cellDefaults with
  domain := ⟨(61 / 400 : ℚ), (4881 / 32000 : ℚ)⟩
  center := (9761 / 64000 : ℚ)
  supportValue := (1084119944716161 / 2000000000000000 : ℚ)
  supportSlope := (9985306096389479 / 2000000000000000 : ℚ)
  oldCenter := (1084119944716161 / 2000000000000000 : ℚ)
  oldLo := (27074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1280, piece_1281]
}

def cell_5060 : Cell := { cellDefaults with
  domain := ⟨(4881 / 32000 : ℚ), (2441 / 16000 : ℚ)⟩
  center := (9763 / 64000 : ℚ)
  supportValue := (677770005711647 / 1250000000000000 : ℚ)
  supportSlope := (998700414920961 / 200000000000000 : ℚ)
  oldCenter := (677770005711647 / 1250000000000000 : ℚ)
  oldLo := (13550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1281]
}

def cell_5061 : Cell := { cellDefaults with
  domain := ⟨(2441 / 16000 : ℚ), (4883 / 32000 : ℚ)⟩
  center := (1953 / 12800 : ℚ)
  supportValue := (5423720662106047 / 10000000000000000 : ℚ)
  supportSlope := (998888819379573 / 200000000000000 : ℚ)
  oldCenter := (5423720662106047 / 10000000000000000 : ℚ)
  oldLo := (13550000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1281]
}

def cell_5062 : Cell := { cellDefaults with
  domain := ⟨(4883 / 32000 : ℚ), (1221 / 8000 : ℚ)⟩
  center := (9767 / 64000 : ℚ)
  supportValue := (5425281527785657 / 10000000000000000 : ℚ)
  supportSlope := (9989682725446869 / 2000000000000000 : ℚ)
  oldCenter := (5425281527785657 / 10000000000000000 : ℚ)
  oldLo := (13550000000000001 / 25000000000000000 : ℚ)
  oldHi := (13575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1281, piece_1282]
}

def cell_5063 : Cell := { cellDefaults with
  domain := ⟨(1221 / 8000 : ℚ), (977 / 6400 : ℚ)⟩
  center := (9769 / 64000 : ℚ)
  supportValue := (5426842482649109 / 10000000000000000 : ℚ)
  supportSlope := (62444077037771 / 12500000000000 : ℚ)
  oldCenter := (5426842482649109 / 10000000000000000 : ℚ)
  oldLo := (27124999999999999 / 50000000000000000 : ℚ)
  oldHi := (13575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1282]
}

def cell_5064 : Cell := { cellDefaults with
  domain := ⟨(977 / 6400 : ℚ), (2443 / 16000 : ℚ)⟩
  center := (9771 / 64000 : ℚ)
  supportValue := (5428403731365751 / 10000000000000000 : ℚ)
  supportSlope := (9992933504278767 / 2000000000000000 : ℚ)
  oldCenter := (5428403731365751 / 10000000000000000 : ℚ)
  oldLo := (27124999999999999 / 50000000000000000 : ℚ)
  oldHi := (13575000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1282]
}

def cell_5065 : Cell := { cellDefaults with
  domain := ⟨(2443 / 16000 : ℚ), (4887 / 32000 : ℚ)⟩
  center := (9773 / 64000 : ℚ)
  supportValue := (5429965274097391 / 10000000000000000 : ℚ)
  supportSlope := (9994052370828399 / 2000000000000000 : ℚ)
  oldCenter := (5429965274097391 / 10000000000000000 : ℚ)
  oldLo := (27124999999999999 / 50000000000000000 : ℚ)
  oldHi := (27174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1282, piece_1283]
}

def cell_5066 : Cell := { cellDefaults with
  domain := ⟨(4887 / 32000 : ℚ), (611 / 4000 : ℚ)⟩
  center := (391 / 2560 : ℚ)
  supportValue := (27157634333933 / 50000000000000 : ℚ)
  supportSlope := (1999019652683387 / 400000000000000 : ℚ)
  oldCenter := (27157634333933 / 50000000000000 : ℚ)
  oldLo := (13575000000000001 / 25000000000000000 : ℚ)
  oldHi := (27174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1283]
}

def cell_5067 : Cell := { cellDefaults with
  domain := ⟨(611 / 4000 : ℚ), (4889 / 32000 : ℚ)⟩
  center := (9777 / 64000 : ℚ)
  supportValue := (5433088747488207 / 10000000000000000 : ℚ)
  supportSlope := (4998488486879893 / 1000000000000000 : ℚ)
  oldCenter := (5433088747488207 / 10000000000000000 : ℚ)
  oldLo := (13575000000000001 / 25000000000000000 : ℚ)
  oldHi := (27174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1283]
}

def cell_5068 : Cell := { cellDefaults with
  domain := ⟨(4889 / 32000 : ℚ), (489 / 3200 : ℚ)⟩
  center := (9779 / 64000 : ℚ)
  supportValue := (5434650921818719 / 10000000000000000 : ℚ)
  supportSlope := (1249802006257461 / 250000000000000 : ℚ)
  oldCenter := (5434650921818719 / 10000000000000000 : ℚ)
  oldLo := (13575000000000001 / 25000000000000000 : ℚ)
  oldHi := (13600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1283, piece_1284]
}

def cell_5069 : Cell := { cellDefaults with
  domain := ⟨(489 / 3200 : ℚ), (4891 / 32000 : ℚ)⟩
  center := (9781 / 64000 : ℚ)
  supportValue := (5436213196582513 / 10000000000000000 : ℚ)
  supportSlope := (4999571178252893 / 1000000000000000 : ℚ)
  oldCenter := (5436213196582513 / 10000000000000000 : ℚ)
  oldLo := (27174999999999999 / 50000000000000000 : ℚ)
  oldHi := (13600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1284]
}

def cell_5070 : Cell := { cellDefaults with
  domain := ⟨(4891 / 32000 : ℚ), (1223 / 8000 : ℚ)⟩
  center := (9783 / 64000 : ℚ)
  supportValue := (679721963618611 / 1250000000000000 : ℚ)
  supportSlope := (2500254547166847 / 500000000000000 : ℚ)
  oldCenter := (679721963618611 / 1250000000000000 : ℚ)
  oldLo := (27174999999999999 / 50000000000000000 : ℚ)
  oldHi := (13600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1284]
}

def cell_5071 : Cell := { cellDefaults with
  domain := ⟨(1223 / 8000 : ℚ), (4893 / 32000 : ℚ)⟩
  center := (1957 / 12800 : ℚ)
  supportValue := (5439338514493883 / 10000000000000000 : ℚ)
  supportSlope := (312586647825297 / 62500000000000 : ℚ)
  oldCenter := (5439338514493883 / 10000000000000000 : ℚ)
  oldLo := (27174999999999999 / 50000000000000000 : ℚ)
  oldHi := (27224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1284, piece_1285]
}

def cell_5072 : Cell := { cellDefaults with
  domain := ⟨(4893 / 32000 : ℚ), (2447 / 16000 : ℚ)⟩
  center := (9787 / 64000 : ℚ)
  supportValue := (5440901470254677 / 10000000000000000 : ℚ)
  supportSlope := (10003184124130371 / 2000000000000000 : ℚ)
  oldCenter := (5440901470254677 / 10000000000000000 : ℚ)
  oldHi := (27224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1285]
}

def cell_5073 : Cell := { cellDefaults with
  domain := ⟨(2447 / 16000 : ℚ), (979 / 6400 : ℚ)⟩
  center := (9789 / 64000 : ℚ)
  supportValue := (2721232306966349 / 5000000000000000 : ℚ)
  supportSlope := (2501264302292583 / 500000000000000 : ℚ)
  oldCenter := (2721232306966349 / 5000000000000000 : ℚ)
  oldHi := (27224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1285]
}

def cell_5074 : Cell := { cellDefaults with
  domain := ⟨(979 / 6400 : ℚ), (153 / 1000 : ℚ)⟩
  center := (9791 / 64000 : ℚ)
  supportValue := (5444028050359563 / 10000000000000000 : ℚ)
  supportSlope := (200138626199049 / 40000000000000 : ℚ)
  oldCenter := (5444028050359563 / 10000000000000000 : ℚ)
  oldHi := (27224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1285]
}

def cell_5075 : Cell := { cellDefaults with
  domain := ⟨(153 / 1000 : ℚ), (4897 / 32000 : ℚ)⟩
  r := (4902174324609 / 5000000000000 : ℚ)
  w := (24937735548371 / 25000000000000 : ℚ)
  center := (9793 / 64000 : ℚ)
  supportValue := (5441477229901897 / 10000000000000000 : ℚ)
  supportSlope := (4999358111966501 / 1000000000000000 : ℚ)
  oldCenter := (5441477229901897 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_432
  oldHi := (27224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1285]
}

def cell_5076 : Cell := { cellDefaults with
  domain := ⟨(4897 / 32000 : ℚ), (2449 / 16000 : ℚ)⟩
  r := (4902174324609 / 5000000000000 : ℚ)
  w := (24937735548371 / 25000000000000 : ℚ)
  center := (1959 / 12800 : ℚ)
  supportValue := (5443039675678719 / 10000000000000000 : ℚ)
  supportSlope := (5000295987255043 / 1000000000000000 : ℚ)
  oldCenter := (5443039675678719 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_432
  oldHi := (27224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1285]
}

def cell_5077 : Cell := { cellDefaults with
  domain := ⟨(2449 / 16000 : ℚ), (4899 / 32000 : ℚ)⟩
  r := (4902174324609 / 5000000000000 : ℚ)
  w := (24937735548371 / 25000000000000 : ℚ)
  center := (9797 / 64000 : ℚ)
  supportValue := (217784096584853 / 400000000000000 : ℚ)
  supportSlope := (1000207998702507 / 200000000000000 : ℚ)
  oldCenter := (217784096584853 / 400000000000000 : ℚ)
  newCoefficients := coefficients_432
  oldHi := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1285, piece_1286]
}

def cell_5078 : Cell := { cellDefaults with
  domain := ⟨(4899 / 32000 : ℚ), (49 / 320 : ℚ)⟩
  r := (4902174324609 / 5000000000000 : ℚ)
  w := (24937735548371 / 25000000000000 : ℚ)
  center := (9799 / 64000 : ℚ)
  supportValue := (5446165262499439 / 10000000000000000 : ℚ)
  supportSlope := (200055249087967 / 40000000000000 : ℚ)
  oldCenter := (5446165262499439 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_432
  oldLo := (27224999999999999 / 50000000000000000 : ℚ)
  oldHi := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1286]
}

def cell_5079 : Cell := { cellDefaults with
  domain := ⟨(49 / 320 : ℚ), (4901 / 32000 : ℚ)⟩
  r := (4902174324609 / 5000000000000 : ℚ)
  w := (24937735548371 / 25000000000000 : ℚ)
  center := (9801 / 64000 : ℚ)
  supportValue := (5447728340297149 / 10000000000000000 : ℚ)
  supportSlope := (2501158902656897 / 500000000000000 : ℚ)
  oldCenter := (5447728340297149 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_432
  oldLo := (27224999999999999 / 50000000000000000 : ℚ)
  oldHi := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1286]
}

def cell_5080 : Cell := { cellDefaults with
  domain := ⟨(4901 / 32000 : ℚ), (2451 / 16000 : ℚ)⟩
  r := (4902174324609 / 5000000000000 : ℚ)
  w := (24937735548371 / 25000000000000 : ℚ)
  center := (9803 / 64000 : ℚ)
  supportValue := (2724645855427381 / 5000000000000000 : ℚ)
  supportSlope := (5003217587852049 / 1000000000000000 : ℚ)
  oldCenter := (2724645855427381 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_432
  oldLo := (27224999999999999 / 50000000000000000 : ℚ)
  oldHi := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1286, piece_1287]
}

def cell_5081 : Cell := { cellDefaults with
  domain := ⟨(2451 / 16000 : ℚ), (4903 / 32000 : ℚ)⟩
  r := (4902174324609 / 5000000000000 : ℚ)
  w := (24937735548371 / 25000000000000 : ℚ)
  center := (1961 / 12800 : ℚ)
  supportValue := (2725427619738231 / 5000000000000000 : ℚ)
  supportSlope := (5003403314944421 / 1000000000000000 : ℚ)
  oldCenter := (2725427619738231 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_432
  oldLo := (13625000000000001 / 25000000000000000 : ℚ)
  oldHi := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1287]
}

def cell_5082 : Cell := { cellDefaults with
  domain := ⟨(4903 / 32000 : ℚ), (613 / 4000 : ℚ)⟩
  r := (4902174324609 / 5000000000000 : ℚ)
  w := (24937735548371 / 25000000000000 : ℚ)
  center := (9807 / 64000 : ℚ)
  supportValue := (5452418948972623 / 10000000000000000 : ℚ)
  supportSlope := (1251084646810341 / 250000000000000 : ℚ)
  oldCenter := (5452418948972623 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_432
  oldLo := (13625000000000001 / 25000000000000000 : ℚ)
  oldHi := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1287]
}

def cell_5083 : Cell := { cellDefaults with
  domain := ⟨(613 / 4000 : ℚ), (981 / 6400 : ℚ)⟩
  r := (4902174324609 / 5000000000000 : ℚ)
  w := (24937735548371 / 25000000000000 : ℚ)
  center := (9809 / 64000 : ℚ)
  supportValue := (545398295082011 / 1000000000000000 : ℚ)
  supportSlope := (1001054872751439 / 200000000000000 : ℚ)
  oldCenter := (545398295082011 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_432
  oldLo := (13625000000000001 / 25000000000000000 : ℚ)
  oldHi := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1287]
}

def cell_5084 : Cell := { cellDefaults with
  domain := ⟨(981 / 6400 : ℚ), (2453 / 16000 : ℚ)⟩
  r := (4902174324609 / 5000000000000 : ℚ)
  w := (24937735548371 / 25000000000000 : ℚ)
  center := (9811 / 64000 : ℚ)
  supportValue := (5455547159190997 / 10000000000000000 : ℚ)
  supportSlope := (10011083991059877 / 2000000000000000 : ℚ)
  oldCenter := (5455547159190997 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_432
  oldLo := (13625000000000001 / 25000000000000000 : ℚ)
  oldHi := (13650000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1287, piece_1288]
}

def cell_5085 : Cell := { cellDefaults with
  domain := ⟨(2453 / 16000 : ℚ), (4907 / 32000 : ℚ)⟩
  r := (4902174324609 / 5000000000000 : ℚ)
  w := (24937735548371 / 25000000000000 : ℚ)
  center := (9813 / 64000 : ℚ)
  supportValue := (2728555750029183 / 5000000000000000 : ℚ)
  supportSlope := (5006358316641979 / 1000000000000000 : ℚ)
  oldCenter := (2728555750029183 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_432
  oldLo := (27274999999999999 / 50000000000000000 : ℚ)
  oldHi := (13650000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1288]
}

def cell_5086 : Cell := { cellDefaults with
  domain := ⟨(4907 / 32000 : ℚ), (1227 / 8000 : ℚ)⟩
  r := (4902174324609 / 5000000000000 : ℚ)
  w := (24937735548371 / 25000000000000 : ℚ)
  center := (1963 / 12800 : ℚ)
  supportValue := (1091735226573027 / 2000000000000000 : ℚ)
  supportSlope := (5007292773335337 / 1000000000000000 : ℚ)
  oldCenter := (1091735226573027 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_432
  oldLo := (27274999999999999 / 50000000000000000 : ℚ)
  oldHi := (13650000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1288]
}

def cell_5087 : Cell := { cellDefaults with
  domain := ⟨(1227 / 8000 : ℚ), (4909 / 32000 : ℚ)⟩
  r := (4902174324609 / 5000000000000 : ℚ)
  w := (24937735548371 / 25000000000000 : ℚ)
  center := (9817 / 64000 : ℚ)
  supportValue := (1365060254996591 / 2500000000000000 : ℚ)
  supportSlope := (500771478466433 / 100000000000000 : ℚ)
  oldCenter := (1365060254996591 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_432
  oldLo := (27274999999999999 / 50000000000000000 : ℚ)
  oldHi := (5464804469273743 / 10000000000000000 : ℚ)
  oldPieces := [piece_1288, piece_1289]
}

def cell_5088 : Cell := { cellDefaults with
  domain := ⟨(4909 / 32000 : ℚ), (491 / 3200 : ℚ)⟩
  r := (4902174324609 / 5000000000000 : ℚ)
  w := (24937735548371 / 25000000000000 : ℚ)
  center := (9819 / 64000 : ℚ)
  supportValue := (2730902995946119 / 5000000000000000 : ℚ)
  supportSlope := (2504188488380521 / 500000000000000 : ℚ)
  oldCenter := (2730902995946119 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_432
  oldLo := (13650000000000001 / 25000000000000000 : ℚ)
  oldHi := (5464804469273743 / 10000000000000000 : ℚ)
  oldPieces := [piece_1289]
}

def cell_5089 : Cell := { cellDefaults with
  domain := ⟨(491 / 3200 : ℚ), (4911 / 32000 : ℚ)⟩
  r := (4902174324609 / 5000000000000 : ℚ)
  w := (24937735548371 / 25000000000000 : ℚ)
  center := (9821 / 64000 : ℚ)
  supportValue := (1365842813830673 / 2500000000000000 : ℚ)
  supportSlope := (1001862020869737 / 200000000000000 : ℚ)
  oldCenter := (1365842813830673 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_432
  oldLo := (13650000000000001 / 25000000000000000 : ℚ)
  oldHi := (5464804469273743 / 10000000000000000 : ℚ)
  oldPieces := [piece_1289]
}

def cell_5090 : Cell := { cellDefaults with
  domain := ⟨(4911 / 32000 : ℚ), (307 / 2000 : ℚ)⟩
  r := (4902174324609 / 5000000000000 : ℚ)
  w := (24937735548371 / 25000000000000 : ℚ)
  center := (9823 / 64000 : ℚ)
  supportValue := (2732468405217761 / 5000000000000000 : ℚ)
  supportSlope := (5009884419457933 / 1000000000000000 : ℚ)
  oldCenter := (2732468405217761 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_432
  oldLo := (13650000000000001 / 25000000000000000 : ℚ)
  oldHi := (13675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1289, piece_1290, piece_1291]
}

def cell_5091 : Cell := { cellDefaults with
  domain := ⟨(307 / 2000 : ℚ), (4913 / 32000 : ℚ)⟩
  r := (97938021330947 / 100000000000000 : ℚ)
  w := (49884402961557 / 50000000000000 : ℚ)
  center := (393 / 2560 : ℚ)
  supportValue := (5462372852339361 / 10000000000000000 : ℚ)
  supportSlope := (5006125813501683 / 1000000000000000 : ℚ)
  oldCenter := (5462372852339361 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_433
  oldLo := (13650000000000001 / 25000000000000000 : ℚ)
  oldHi := (5464804469273743 / 10000000000000000 : ℚ)
  oldPieces := [piece_1289]
}

def cell_5092 : Cell := { cellDefaults with
  domain := ⟨(4913 / 32000 : ℚ), (2457 / 16000 : ℚ)⟩
  r := (97938021330947 / 100000000000000 : ℚ)
  w := (49884402961557 / 50000000000000 : ℚ)
  center := (9827 / 64000 : ℚ)
  supportValue := (5463937412491043 / 10000000000000000 : ℚ)
  supportSlope := (2503530141881427 / 500000000000000 : ℚ)
  oldCenter := (5463937412491043 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_433
  oldLo := (13650000000000001 / 25000000000000000 : ℚ)
  oldHi := (5464804469273743 / 10000000000000000 : ℚ)
  oldPieces := [piece_1289]
}

def cell_5093 : Cell := { cellDefaults with
  domain := ⟨(2457 / 16000 : ℚ), (983 / 6400 : ℚ)⟩
  r := (97938021330947 / 100000000000000 : ℚ)
  w := (49884402961557 / 50000000000000 : ℚ)
  center := (9829 / 64000 : ℚ)
  supportValue := (683187773296911 / 1250000000000000 : ℚ)
  supportSlope := (19559975098421 / 3906250000000 : ℚ)
  oldCenter := (683187773296911 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_433
  oldLo := (13650000000000001 / 25000000000000000 : ℚ)
  oldHi := (13675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1289, piece_1290, piece_1291]
}

def cell_5094 : Cell := { cellDefaults with
  domain := ⟨(983 / 6400 : ℚ), (1229 / 8000 : ℚ)⟩
  r := (97938021330947 / 100000000000000 : ℚ)
  w := (49884402961557 / 50000000000000 : ℚ)
  center := (9831 / 64000 : ℚ)
  supportValue := (2733533543190209 / 5000000000000000 : ℚ)
  supportSlope := (5008146906270383 / 1000000000000000 : ℚ)
  oldCenter := (2733533543190209 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_433
  oldLo := (54649999999999999 / 100000000000000000 : ℚ)
  oldHi := (13675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1291]
}

def cell_5095 : Cell := { cellDefaults with
  domain := ⟨(1229 / 8000 : ℚ), (4917 / 32000 : ℚ)⟩
  r := (97938021330947 / 100000000000000 : ℚ)
  w := (49884402961557 / 50000000000000 : ℚ)
  center := (9833 / 64000 : ℚ)
  supportValue := (5468632277917539 / 10000000000000000 : ℚ)
  supportSlope := (626135007177453 / 125000000000000 : ℚ)
  oldCenter := (5468632277917539 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_433
  oldLo := (54649999999999999 / 100000000000000000 : ℚ)
  oldHi := (13675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1291]
}

def cell_5096 : Cell := { cellDefaults with
  domain := ⟨(4917 / 32000 : ℚ), (2459 / 16000 : ℚ)⟩
  r := (97938021330947 / 100000000000000 : ℚ)
  w := (49884402961557 / 50000000000000 : ℚ)
  center := (1967 / 12800 : ℚ)
  supportValue := (136754943258683 / 250000000000000 : ℚ)
  supportSlope := (2504762863946297 / 500000000000000 : ℚ)
  oldCenter := (136754943258683 / 250000000000000 : ℚ)
  newCoefficients := coefficients_433
  oldLo := (54649999999999999 / 100000000000000000 : ℚ)
  oldHi := (54749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1291, piece_1292]
}

def cell_5097 : Cell := { cellDefaults with
  domain := ⟨(2459 / 16000 : ℚ), (4919 / 32000 : ℚ)⟩
  r := (97938021330947 / 100000000000000 : ℚ)
  w := (49884402961557 / 50000000000000 : ℚ)
  center := (9837 / 64000 : ℚ)
  supportValue := (1094352652359413 / 2000000000000000 : ℚ)
  supportSlope := (2505083430378363 / 500000000000000 : ℚ)
  oldCenter := (1094352652359413 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_433
  oldLo := (13675000000000001 / 25000000000000000 : ℚ)
  oldHi := (54749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1292]
}

def cell_5098 : Cell := { cellDefaults with
  domain := ⟨(4919 / 32000 : ℚ), (123 / 800 : ℚ)⟩
  r := (97938021330947 / 100000000000000 : ℚ)
  w := (49884402961557 / 50000000000000 : ℚ)
  center := (9839 / 64000 : ℚ)
  supportValue := (5473329084360743 / 10000000000000000 : ℚ)
  supportSlope := (20044394689819 / 4000000000000 : ℚ)
  oldCenter := (5473329084360743 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_433
  oldLo := (13675000000000001 / 25000000000000000 : ℚ)
  oldHi := (54749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1292]
}

def cell_5099 : Cell := { cellDefaults with
  domain := ⟨(123 / 800 : ℚ), (615195530726257 / 4000000000000000 : ℚ)⟩
  r := (97938021330947 / 100000000000000 : ℚ)
  w := (49884402961557 / 50000000000000 : ℚ)
  center := (1230195530726257 / 8000000000000000 : ℚ)
  supportValue := (2737667970076953 / 5000000000000000 : ℚ)
  supportSlope := (501179865936763 / 100000000000000 : ℚ)
  oldCenter := (2737667970076953 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_433
  oldLo := (13675000000000001 / 25000000000000000 : ℚ)
  oldHi := (13700000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1292, piece_1293]
}

theorem check_5050 : SourceCertificateFamily.RightNormalized.check cell_5050 = true := by
  decide +kernel

theorem check_5051 : SourceCertificateFamily.RightNormalized.check cell_5051 = true := by
  decide +kernel

theorem check_5052 : SourceCertificateFamily.RightNormalized.check cell_5052 = true := by
  decide +kernel

theorem check_5053 : SourceCertificateFamily.RightNormalized.check cell_5053 = true := by
  decide +kernel

theorem check_5054 : SourceCertificateFamily.RightNormalized.check cell_5054 = true := by
  decide +kernel

theorem check_5055 : SourceCertificateFamily.RightNormalized.check cell_5055 = true := by
  decide +kernel

theorem check_5056 : SourceCertificateFamily.RightNormalized.check cell_5056 = true := by
  decide +kernel

theorem check_5057 : SourceCertificateFamily.RightNormalized.check cell_5057 = true := by
  decide +kernel

theorem check_5058 : SourceCertificateFamily.RightNormalized.check cell_5058 = true := by
  decide +kernel

theorem check_5059 : SourceCertificateFamily.RightNormalized.check cell_5059 = true := by
  decide +kernel

theorem check_5060 : SourceCertificateFamily.RightNormalized.check cell_5060 = true := by
  decide +kernel

theorem check_5061 : SourceCertificateFamily.RightNormalized.check cell_5061 = true := by
  decide +kernel

theorem check_5062 : SourceCertificateFamily.RightNormalized.check cell_5062 = true := by
  decide +kernel

theorem check_5063 : SourceCertificateFamily.RightNormalized.check cell_5063 = true := by
  decide +kernel

theorem check_5064 : SourceCertificateFamily.RightNormalized.check cell_5064 = true := by
  decide +kernel

theorem check_5065 : SourceCertificateFamily.RightNormalized.check cell_5065 = true := by
  decide +kernel

theorem check_5066 : SourceCertificateFamily.RightNormalized.check cell_5066 = true := by
  decide +kernel

theorem check_5067 : SourceCertificateFamily.RightNormalized.check cell_5067 = true := by
  decide +kernel

theorem check_5068 : SourceCertificateFamily.RightNormalized.check cell_5068 = true := by
  decide +kernel

theorem check_5069 : SourceCertificateFamily.RightNormalized.check cell_5069 = true := by
  decide +kernel

theorem check_5070 : SourceCertificateFamily.RightNormalized.check cell_5070 = true := by
  decide +kernel

theorem check_5071 : SourceCertificateFamily.RightNormalized.check cell_5071 = true := by
  decide +kernel

theorem check_5072 : SourceCertificateFamily.RightNormalized.check cell_5072 = true := by
  decide +kernel

theorem check_5073 : SourceCertificateFamily.RightNormalized.check cell_5073 = true := by
  decide +kernel

theorem check_5074 : SourceCertificateFamily.RightNormalized.check cell_5074 = true := by
  decide +kernel

theorem check_5075 : SourceCertificateFamily.RightNormalized.check cell_5075 = true := by
  decide +kernel

theorem check_5076 : SourceCertificateFamily.RightNormalized.check cell_5076 = true := by
  decide +kernel

theorem check_5077 : SourceCertificateFamily.RightNormalized.check cell_5077 = true := by
  decide +kernel

theorem check_5078 : SourceCertificateFamily.RightNormalized.check cell_5078 = true := by
  decide +kernel

theorem check_5079 : SourceCertificateFamily.RightNormalized.check cell_5079 = true := by
  decide +kernel

theorem check_5080 : SourceCertificateFamily.RightNormalized.check cell_5080 = true := by
  decide +kernel

theorem check_5081 : SourceCertificateFamily.RightNormalized.check cell_5081 = true := by
  decide +kernel

theorem check_5082 : SourceCertificateFamily.RightNormalized.check cell_5082 = true := by
  decide +kernel

theorem check_5083 : SourceCertificateFamily.RightNormalized.check cell_5083 = true := by
  decide +kernel

theorem check_5084 : SourceCertificateFamily.RightNormalized.check cell_5084 = true := by
  decide +kernel

theorem check_5085 : SourceCertificateFamily.RightNormalized.check cell_5085 = true := by
  decide +kernel

theorem check_5086 : SourceCertificateFamily.RightNormalized.check cell_5086 = true := by
  decide +kernel

theorem check_5087 : SourceCertificateFamily.RightNormalized.check cell_5087 = true := by
  decide +kernel

theorem check_5088 : SourceCertificateFamily.RightNormalized.check cell_5088 = true := by
  decide +kernel

theorem check_5089 : SourceCertificateFamily.RightNormalized.check cell_5089 = true := by
  decide +kernel

theorem check_5090 : SourceCertificateFamily.RightNormalized.check cell_5090 = true := by
  decide +kernel

theorem check_5091 : SourceCertificateFamily.RightNormalized.check cell_5091 = true := by
  decide +kernel

theorem check_5092 : SourceCertificateFamily.RightNormalized.check cell_5092 = true := by
  decide +kernel

theorem check_5093 : SourceCertificateFamily.RightNormalized.check cell_5093 = true := by
  decide +kernel

theorem check_5094 : SourceCertificateFamily.RightNormalized.check cell_5094 = true := by
  decide +kernel

theorem check_5095 : SourceCertificateFamily.RightNormalized.check cell_5095 = true := by
  decide +kernel

theorem check_5096 : SourceCertificateFamily.RightNormalized.check cell_5096 = true := by
  decide +kernel

theorem check_5097 : SourceCertificateFamily.RightNormalized.check cell_5097 = true := by
  decide +kernel

theorem check_5098 : SourceCertificateFamily.RightNormalized.check cell_5098 = true := by
  decide +kernel

theorem check_5099 : SourceCertificateFamily.RightNormalized.check cell_5099 = true := by
  decide +kernel

def cells : List Cell := [cell_5050, cell_5051, cell_5052, cell_5053, cell_5054, cell_5055, cell_5056, cell_5057, cell_5058, cell_5059, cell_5060, cell_5061, cell_5062, cell_5063, cell_5064, cell_5065, cell_5066, cell_5067, cell_5068, cell_5069, cell_5070, cell_5071, cell_5072, cell_5073, cell_5074, cell_5075, cell_5076, cell_5077, cell_5078, cell_5079, cell_5080, cell_5081, cell_5082, cell_5083, cell_5084, cell_5085, cell_5086, cell_5087, cell_5088, cell_5089, cell_5090, cell_5091, cell_5092, cell_5093, cell_5094, cell_5095, cell_5096, cell_5097, cell_5098, cell_5099]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_5050, SourceCertificateFamily.of_right_checked check_5051, SourceCertificateFamily.of_right_checked check_5052, SourceCertificateFamily.of_right_checked check_5053, SourceCertificateFamily.of_right_checked check_5054, SourceCertificateFamily.of_right_checked check_5055, SourceCertificateFamily.of_right_checked check_5056, SourceCertificateFamily.of_right_checked check_5057, SourceCertificateFamily.of_right_checked check_5058, SourceCertificateFamily.of_right_checked check_5059, SourceCertificateFamily.of_right_checked check_5060, SourceCertificateFamily.of_right_checked check_5061, SourceCertificateFamily.of_right_checked check_5062, SourceCertificateFamily.of_right_checked check_5063, SourceCertificateFamily.of_right_checked check_5064, SourceCertificateFamily.of_right_checked check_5065, SourceCertificateFamily.of_right_checked check_5066, SourceCertificateFamily.of_right_checked check_5067, SourceCertificateFamily.of_right_checked check_5068, SourceCertificateFamily.of_right_checked check_5069, SourceCertificateFamily.of_right_checked check_5070, SourceCertificateFamily.of_right_checked check_5071, SourceCertificateFamily.of_right_checked check_5072, SourceCertificateFamily.of_right_checked check_5073, SourceCertificateFamily.of_right_checked check_5074, SourceCertificateFamily.of_right_checked check_5075, SourceCertificateFamily.of_right_checked check_5076, SourceCertificateFamily.of_right_checked check_5077, SourceCertificateFamily.of_right_checked check_5078, SourceCertificateFamily.of_right_checked check_5079, SourceCertificateFamily.of_right_checked check_5080, SourceCertificateFamily.of_right_checked check_5081, SourceCertificateFamily.of_right_checked check_5082, SourceCertificateFamily.of_right_checked check_5083, SourceCertificateFamily.of_right_checked check_5084, SourceCertificateFamily.of_right_checked check_5085, SourceCertificateFamily.of_right_checked check_5086, SourceCertificateFamily.of_right_checked check_5087, SourceCertificateFamily.of_right_checked check_5088, SourceCertificateFamily.of_right_checked check_5089, SourceCertificateFamily.of_right_checked check_5090, SourceCertificateFamily.of_right_checked check_5091, SourceCertificateFamily.of_right_checked check_5092, SourceCertificateFamily.of_right_checked check_5093, SourceCertificateFamily.of_right_checked check_5094, SourceCertificateFamily.of_right_checked check_5095, SourceCertificateFamily.of_right_checked check_5096, SourceCertificateFamily.of_right_checked check_5097, SourceCertificateFamily.of_right_checked check_5098, SourceCertificateFamily.of_right_checked check_5099, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0101
