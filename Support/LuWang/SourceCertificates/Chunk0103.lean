import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0103
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(1243 / 8000 : ℚ), (4973 / 32000 : ℚ)⟩
  branch := .right
  r := (24379739621701 / 25000000000000 : ℚ)
  w := (1559999321991 / 1562500000000 : ℚ)
  center := (1989 / 12800 : ℚ)
  supportValue := (5544031985096157 / 10000000000000000 : ℚ)
  supportSlope := (1258578048313197 / 250000000000000 : ℚ)
  oldCenter := (5544031985096157 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_438
  oldLo := (55649999999999999 / 100000000000000000 : ℚ)
  oldHi := (11100000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1308]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_5150 : Cell := { cellDefaults with
  r := (12202913218799 / 12500000000000 : ℚ)
  w := (24955551653269 / 25000000000000 : ℚ)
  newCoefficients := coefficients_437
  oldLo := (11080000000000001 / 20000000000000000 : ℚ)
  oldHi := (55449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1307]
}

def cell_5151 : Cell := { cellDefaults with
  domain := ⟨(4973 / 32000 : ℚ), (2487 / 16000 : ℚ)⟩
  r := (12202913218799 / 12500000000000 : ℚ)
  w := (24955551653269 / 25000000000000 : ℚ)
  center := (9947 / 64000 : ℚ)
  supportValue := (2772802630809237 / 5000000000000000 : ℚ)
  supportSlope := (5034572566508189 / 1000000000000000 : ℚ)
  oldCenter := (2772802630809237 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_437
  oldLo := (11080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1307, piece_1308]
}

def cell_5152 : Cell := { cellDefaults with
  domain := ⟨(2487 / 16000 : ℚ), (199 / 1280 : ℚ)⟩
  r := (12202913218799 / 12500000000000 : ℚ)
  w := (24955551653269 / 25000000000000 : ℚ)
  center := (9949 / 64000 : ℚ)
  supportValue := (1109435736409371 / 2000000000000000 : ℚ)
  supportSlope := (19669549864057 / 3906250000000 : ℚ)
  oldCenter := (1109435736409371 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_437
  oldLo := (55449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1308]
}

def cell_5153 : Cell := { cellDefaults with
  domain := ⟨(199 / 1280 : ℚ), (311 / 2000 : ℚ)⟩
  r := (12202913218799 / 12500000000000 : ℚ)
  w := (24955551653269 / 25000000000000 : ℚ)
  center := (9951 / 64000 : ℚ)
  supportValue := (5548752389317757 / 10000000000000000 : ℚ)
  supportSlope := (1007264578036171 / 200000000000000 : ℚ)
  oldCenter := (5548752389317757 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_437
  oldLo := (55449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1308]
}

def cell_5154 : Cell := { cellDefaults with
  domain := ⟨(311 / 2000 : ℚ), (4977 / 32000 : ℚ)⟩
  center := (9953 / 64000 : ℚ)
  supportValue := (5546138533108819 / 10000000000000000 : ℚ)
  supportSlope := (1258042622906963 / 250000000000000 : ℚ)
  oldCenter := (5546138533108819 / 10000000000000000 : ℚ)
  oldLo := (55449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1308]
}

def cell_5155 : Cell := { cellDefaults with
  domain := ⟨(4977 / 32000 : ℚ), (2489 / 16000 : ℚ)⟩
  center := (1991 / 12800 : ℚ)
  supportValue := (8668298796487 / 15625000000000 : ℚ)
  supportSlope := (5033089144109937 / 1000000000000000 : ℚ)
  oldCenter := (8668298796487 / 15625000000000 : ℚ)
  oldLo := (55449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1308]
}

def cell_5156 : Cell := { cellDefaults with
  domain := ⟨(2489 / 16000 : ℚ), (4979 / 32000 : ℚ)⟩
  center := (9957 / 64000 : ℚ)
  supportValue := (22197136854181 / 40000000000000 : ℚ)
  supportSlope := (5033974618356751 / 1000000000000000 : ℚ)
  oldCenter := (22197136854181 / 40000000000000 : ℚ)
  oldLo := (55449999999999999 / 100000000000000000 : ℚ)
  oldHi := (55549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1308, piece_1309]
}

def cell_5157 : Cell := { cellDefaults with
  domain := ⟨(4979 / 32000 : ℚ), (249 / 1600 : ℚ)⟩
  center := (9959 / 64000 : ℚ)
  supportValue := (5550857358148967 / 10000000000000000 : ℚ)
  supportSlope := (503418496924013 / 100000000000000 : ℚ)
  oldCenter := (5550857358148967 / 10000000000000000 : ℚ)
  oldLo := (11100000000000001 / 20000000000000000 : ℚ)
  oldHi := (55549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1309]
}

def cell_5158 : Cell := { cellDefaults with
  domain := ⟨(249 / 1600 : ℚ), (4981 / 32000 : ℚ)⟩
  center := (9961 / 64000 : ℚ)
  supportValue := (694053835516739 / 1250000000000000 : ℚ)
  supportSlope := (2517551227754211 / 500000000000000 : ℚ)
  oldCenter := (694053835516739 / 1250000000000000 : ℚ)
  oldLo := (11100000000000001 / 20000000000000000 : ℚ)
  oldHi := (55549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1309]
}

def cell_5159 : Cell := { cellDefaults with
  domain := ⟨(4981 / 32000 : ℚ), (2491 / 16000 : ℚ)⟩
  center := (9963 / 64000 : ℚ)
  supportValue := (555400429690467 / 1000000000000000 : ℚ)
  supportSlope := (10072040797545867 / 2000000000000000 : ℚ)
  oldCenter := (555400429690467 / 1000000000000000 : ℚ)
  oldLo := (11100000000000001 / 20000000000000000 : ℚ)
  oldHi := (55549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1309]
}

def cell_5160 : Cell := { cellDefaults with
  domain := ⟨(2491 / 16000 : ℚ), (4983 / 32000 : ℚ)⟩
  center := (1993 / 12800 : ℚ)
  supportValue := (2777789055791801 / 5000000000000000 : ℚ)
  supportSlope := (2518148111496643 / 500000000000000 : ℚ)
  oldCenter := (2777789055791801 / 5000000000000000 : ℚ)
  oldLo := (11100000000000001 / 20000000000000000 : ℚ)
  oldHi := (11120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1309, piece_1310]
}

def cell_5161 : Cell := { cellDefaults with
  domain := ⟨(4983 / 32000 : ℚ), (623 / 4000 : ℚ)⟩
  center := (9967 / 64000 : ℚ)
  supportValue := (1111430413317323 / 2000000000000000 : ℚ)
  supportSlope := (314819670375277 / 62500000000000 : ℚ)
  oldCenter := (1111430413317323 / 2000000000000000 : ℚ)
  oldLo := (55549999999999999 / 100000000000000000 : ℚ)
  oldHi := (11120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1310]
}

def cell_5162 : Cell := { cellDefaults with
  domain := ⟨(623 / 4000 : ℚ), (997 / 6400 : ℚ)⟩
  center := (9969 / 64000 : ℚ)
  supportValue := (555872630800801 / 1000000000000000 : ℚ)
  supportSlope := (10076062984047951 / 2000000000000000 : ℚ)
  oldCenter := (555872630800801 / 1000000000000000 : ℚ)
  oldLo := (55549999999999999 / 100000000000000000 : ℚ)
  oldHi := (11120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1310]
}

def cell_5163 : Cell := { cellDefaults with
  domain := ⟨(997 / 6400 : ℚ), (2493 / 16000 : ℚ)⟩
  center := (9971 / 64000 : ℚ)
  supportValue := (69503759898349 / 125000000000000 : ℚ)
  supportSlope := (2519219127187 / 500000000000 : ℚ)
  oldCenter := (69503759898349 / 125000000000000 : ℚ)
  oldLo := (55549999999999999 / 100000000000000000 : ℚ)
  oldHi := (55649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1310, piece_1311]
}

def cell_5164 : Cell := { cellDefaults with
  domain := ⟨(2493 / 16000 : ℚ), (4987 / 32000 : ℚ)⟩
  center := (9973 / 64000 : ℚ)
  supportValue := (5561875375560493 / 10000000000000000 : ℚ)
  supportSlope := (1007825188144551 / 200000000000000 : ℚ)
  oldCenter := (5561875375560493 / 10000000000000000 : ℚ)
  oldLo := (11120000000000001 / 20000000000000000 : ℚ)
  oldHi := (55649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1311]
}

def cell_5165 : Cell := { cellDefaults with
  domain := ⟨(4987 / 32000 : ℚ), (1247 / 8000 : ℚ)⟩
  center := (399 / 2560 : ℚ)
  supportValue := (1390862561325293 / 2500000000000000 : ℚ)
  supportSlope := (504004152039883 / 100000000000000 : ℚ)
  oldCenter := (1390862561325293 / 2500000000000000 : ℚ)
  oldLo := (11120000000000001 / 20000000000000000 : ℚ)
  oldHi := (55649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1311]
}

def cell_5166 : Cell := { cellDefaults with
  domain := ⟨(1247 / 8000 : ℚ), (4989 / 32000 : ℚ)⟩
  center := (9977 / 64000 : ℚ)
  supportValue := (5565025397444271 / 10000000000000000 : ℚ)
  supportSlope := (1260144353588899 / 250000000000000 : ℚ)
  oldCenter := (5565025397444271 / 10000000000000000 : ℚ)
  oldLo := (11120000000000001 / 20000000000000000 : ℚ)
  oldHi := (11140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1311, piece_1312]
}

def cell_5167 : Cell := { cellDefaults with
  domain := ⟨(4989 / 32000 : ℚ), (499 / 3200 : ℚ)⟩
  center := (9979 / 64000 : ℚ)
  supportValue := (1391650152373289 / 2500000000000000 : ℚ)
  supportSlope := (5041136084415143 / 1000000000000000 : ℚ)
  oldCenter := (1391650152373289 / 2500000000000000 : ℚ)
  oldHi := (11140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1312]
}

def cell_5168 : Cell := { cellDefaults with
  domain := ⟨(499 / 3200 : ℚ), (4991 / 32000 : ℚ)⟩
  center := (9981 / 64000 : ℚ)
  supportValue := (5568176107216977 / 10000000000000000 : ℚ)
  supportSlope := (1008410093694323 / 200000000000000 : ℚ)
  oldCenter := (5568176107216977 / 10000000000000000 : ℚ)
  oldHi := (11140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1312]
}

def cell_5169 : Cell := { cellDefaults with
  domain := ⟨(4991 / 32000 : ℚ), (39 / 250 : ℚ)⟩
  center := (9983 / 64000 : ℚ)
  supportValue := (2784875945377941 / 5000000000000000 : ℚ)
  supportSlope := (2521356845498701 / 500000000000000 : ℚ)
  oldCenter := (2784875945377941 / 5000000000000000 : ℚ)
  oldHi := (223 / 400 : ℚ)
  oldPieces := [piece_1312, piece_1313]
}

def cell_5170 : Cell := { cellDefaults with
  domain := ⟨(39 / 250 : ℚ), (4993 / 32000 : ℚ)⟩
  r := (48707445142227 / 50000000000000 : ℚ)
  w := (49928845161501 / 50000000000000 : ℚ)
  center := (1997 / 12800 : ℚ)
  supportValue := (5567126008685909 / 10000000000000000 : ℚ)
  supportSlope := (10077606780200199 / 2000000000000000 : ℚ)
  oldCenter := (5567126008685909 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_439
  oldHi := (11140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1312]
}

def cell_5171 : Cell := { cellDefaults with
  domain := ⟨(4993 / 32000 : ℚ), (2497 / 16000 : ℚ)⟩
  r := (48707445142227 / 50000000000000 : ℚ)
  w := (49928845161501 / 50000000000000 : ℚ)
  center := (9987 / 64000 : ℚ)
  supportValue := (348043798605127 / 625000000000000 : ℚ)
  supportSlope := (2519859652943879 / 500000000000000 : ℚ)
  oldCenter := (348043798605127 / 625000000000000 : ℚ)
  newCoefficients := coefficients_439
  oldHi := (11140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1312]
}

def cell_5172 : Cell := { cellDefaults with
  domain := ⟨(2497 / 16000 : ℚ), (999 / 6400 : ℚ)⟩
  r := (48707445142227 / 50000000000000 : ℚ)
  w := (49928845161501 / 50000000000000 : ℚ)
  center := (9989 / 64000 : ℚ)
  supportValue := (69628447409653 / 125000000000000 : ℚ)
  supportSlope := (5040140035923457 / 1000000000000000 : ℚ)
  oldCenter := (69628447409653 / 125000000000000 : ℚ)
  newCoefficients := coefficients_439
  oldHi := (223 / 400 : ℚ)
  oldPieces := [piece_1312, piece_1313]
}

def cell_5173 : Cell := { cellDefaults with
  domain := ⟨(999 / 6400 : ℚ), (1249 / 8000 : ℚ)⟩
  r := (48707445142227 / 50000000000000 : ℚ)
  w := (49928845161501 / 50000000000000 : ℚ)
  center := (9991 / 64000 : ℚ)
  supportValue := (696481363115771 / 1250000000000000 : ℚ)
  supportSlope := (1008163318046229 / 200000000000000 : ℚ)
  oldCenter := (696481363115771 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_439
  oldLo := (11140000000000001 / 20000000000000000 : ℚ)
  oldHi := (223 / 400 : ℚ)
  oldPieces := [piece_1313]
}

def cell_5174 : Cell := { cellDefaults with
  domain := ⟨(1249 / 8000 : ℚ), (4997 / 32000 : ℚ)⟩
  r := (48707445142227 / 50000000000000 : ℚ)
  w := (49928845161501 / 50000000000000 : ℚ)
  center := (9993 / 64000 : ℚ)
  supportValue := (1393356575715283 / 2500000000000000 : ℚ)
  supportSlope := (10083462628010409 / 2000000000000000 : ℚ)
  oldCenter := (1393356575715283 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_439
  oldLo := (11140000000000001 / 20000000000000000 : ℚ)
  oldHi := (223 / 400 : ℚ)
  oldPieces := [piece_1313]
}

def cell_5175 : Cell := { cellDefaults with
  domain := ⟨(4997 / 32000 : ℚ), (2499 / 16000 : ℚ)⟩
  r := (48707445142227 / 50000000000000 : ℚ)
  w := (49928845161501 / 50000000000000 : ℚ)
  center := (1999 / 12800 : ℚ)
  supportValue := (5575001986348671 / 10000000000000000 : ℚ)
  supportSlope := (1260569883691609 / 250000000000000 : ℚ)
  oldCenter := (5575001986348671 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_439
  oldLo := (11140000000000001 / 20000000000000000 : ℚ)
  oldHi := (11160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1313, piece_1314, piece_1315]
}

def cell_5176 : Cell := { cellDefaults with
  domain := ⟨(2499 / 16000 : ℚ), (4999 / 32000 : ℚ)⟩
  r := (48707445142227 / 50000000000000 : ℚ)
  w := (49928845161501 / 50000000000000 : ℚ)
  center := (9997 / 64000 : ℚ)
  supportValue := (5576577727445009 / 10000000000000000 : ℚ)
  supportSlope := (5042828543832201 / 1000000000000000 : ℚ)
  oldCenter := (5576577727445009 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_439
  oldLo := (174231843575419 / 312500000000000 : ℚ)
  oldHi := (11160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1315]
}

def cell_5177 : Cell := { cellDefaults with
  domain := ⟨(4999 / 32000 : ℚ), (5 / 32 : ℚ)⟩
  r := (48707445142227 / 50000000000000 : ℚ)
  w := (49928845161501 / 50000000000000 : ℚ)
  center := (9999 / 64000 : ℚ)
  supportValue := (69726921923987 / 125000000000000 : ℚ)
  supportSlope := (10087484019123849 / 2000000000000000 : ℚ)
  oldCenter := (69726921923987 / 125000000000000 : ℚ)
  newCoefficients := coefficients_439
  oldLo := (174231843575419 / 312500000000000 : ℚ)
  oldHi := (11160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1315]
}

def cell_5178 : Cell := { cellDefaults with
  domain := ⟨(5 / 32 : ℚ), (5001 / 32000 : ℚ)⟩
  r := (48707445142227 / 50000000000000 : ℚ)
  w := (49928845161501 / 50000000000000 : ℚ)
  center := (10001 / 64000 : ℚ)
  supportValue := (5579730065920601 / 10000000000000000 : ℚ)
  supportSlope := (5044415894563059 / 1000000000000000 : ℚ)
  oldCenter := (5579730065920601 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_439
  oldLo := (174231843575419 / 312500000000000 : ℚ)
  oldHi := (1117 / 2000 : ℚ)
  oldPieces := [piece_1315, piece_1316]
}

def cell_5179 : Cell := { cellDefaults with
  domain := ⟨(5001 / 32000 : ℚ), (2501 / 16000 : ℚ)⟩
  r := (48707445142227 / 50000000000000 : ℚ)
  w := (49928845161501 / 50000000000000 : ℚ)
  center := (10003 / 64000 : ℚ)
  supportValue := (5581306474474479 / 10000000000000000 : ℚ)
  supportSlope := (5044839393509193 / 1000000000000000 : ℚ)
  oldCenter := (5581306474474479 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_439
  oldLo := (11160000000000001 / 20000000000000000 : ℚ)
  oldHi := (1117 / 2000 : ℚ)
  oldPieces := [piece_1316]
}

def cell_5180 : Cell := { cellDefaults with
  domain := ⟨(2501 / 16000 : ℚ), (5003 / 32000 : ℚ)⟩
  r := (48707445142227 / 50000000000000 : ℚ)
  w := (49928845161501 / 50000000000000 : ℚ)
  center := (2001 / 12800 : ℚ)
  supportValue := (2791441564585199 / 5000000000000000 : ℚ)
  supportSlope := (2522875890104359 / 500000000000000 : ℚ)
  oldCenter := (2791441564585199 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_439
  oldLo := (11160000000000001 / 20000000000000000 : ℚ)
  oldHi := (1117 / 2000 : ℚ)
  oldPieces := [piece_1316]
}

def cell_5181 : Cell := { cellDefaults with
  domain := ⟨(5003 / 32000 : ℚ), (1251 / 8000 : ℚ)⟩
  r := (48707445142227 / 50000000000000 : ℚ)
  w := (49928845161501 / 50000000000000 : ℚ)
  center := (10007 / 64000 : ℚ)
  supportValue := (558446006905639 / 1000000000000000 : ℚ)
  supportSlope := (2523274840896761 / 500000000000000 : ℚ)
  oldCenter := (558446006905639 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_439
  oldLo := (11160000000000001 / 20000000000000000 : ℚ)
  oldHi := (11180000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1316, piece_1317]
}

def cell_5182 : Cell := { cellDefaults with
  domain := ⟨(1251 / 8000 : ℚ), (1001 / 6400 : ℚ)⟩
  r := (48707445142227 / 50000000000000 : ℚ)
  w := (49928845161501 / 50000000000000 : ℚ)
  center := (10009 / 64000 : ℚ)
  supportValue := (5586037144586029 / 10000000000000000 : ℚ)
  supportSlope := (5046849185934121 / 1000000000000000 : ℚ)
  oldCenter := (5586037144586029 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_439
  oldLo := (1117 / 2000 : ℚ)
  oldHi := (11180000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1317]
}

def cell_5183 : Cell := { cellDefaults with
  domain := ⟨(1001 / 6400 : ℚ), (2503 / 16000 : ℚ)⟩
  r := (48707445142227 / 50000000000000 : ℚ)
  w := (49928845161501 / 50000000000000 : ℚ)
  center := (10011 / 64000 : ℚ)
  supportValue := (1396903606798279 / 2500000000000000 : ℚ)
  supportSlope := (5047760619063979 / 1000000000000000 : ℚ)
  oldCenter := (1396903606798279 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_439
  oldLo := (1117 / 2000 : ℚ)
  oldHi := (11180000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1317]
}

def cell_5184 : Cell := { cellDefaults with
  domain := ⟨(2503 / 16000 : ℚ), (5007 / 32000 : ℚ)⟩
  r := (48707445142227 / 50000000000000 : ℚ)
  w := (49928845161501 / 50000000000000 : ℚ)
  center := (10013 / 64000 : ℚ)
  supportValue := (698648999336489 / 1250000000000000 : ℚ)
  supportSlope := (1262168123300711 / 250000000000000 : ℚ)
  oldCenter := (698648999336489 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_439
  oldLo := (1117 / 2000 : ℚ)
  oldHi := (11180000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1317]
}

def cell_5185 : Cell := { cellDefaults with
  domain := ⟨(5007 / 32000 : ℚ), (313 / 2000 : ℚ)⟩
  r := (48707445142227 / 50000000000000 : ℚ)
  w := (49928845161501 / 50000000000000 : ℚ)
  center := (2003 / 12800 : ℚ)
  supportValue := (223630789457697 / 400000000000000 : ℚ)
  supportSlope := (631108335641617 / 125000000000000 : ℚ)
  oldCenter := (223630789457697 / 400000000000000 : ℚ)
  newCoefficients := coefficients_439
  oldLo := (1117 / 2000 : ℚ)
  oldHi := (1119 / 2000 : ℚ)
  oldPieces := [piece_1317, piece_1318]
}

def cell_5186 : Cell := { cellDefaults with
  domain := ⟨(313 / 2000 : ℚ), (5009 / 32000 : ℚ)⟩
  r := (48655547784961 / 50000000000000 : ℚ)
  w := (49937700512833 / 50000000000000 : ℚ)
  center := (10017 / 64000 : ℚ)
  supportValue := (17462910982713 / 31250000000000 : ℚ)
  supportSlope := (5045411858635163 / 1000000000000000 : ℚ)
  oldCenter := (17462910982713 / 31250000000000 : ℚ)
  newCoefficients := coefficients_440
  oldLo := (1117 / 2000 : ℚ)
  oldHi := (11180000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1317]
}

def cell_5187 : Cell := { cellDefaults with
  domain := ⟨(5009 / 32000 : ℚ), (501 / 3200 : ℚ)⟩
  r := (48655547784961 / 50000000000000 : ℚ)
  w := (49937700512833 / 50000000000000 : ℚ)
  center := (10019 / 64000 : ℚ)
  supportValue := (5589708348147491 / 10000000000000000 : ℚ)
  supportSlope := (10092191976305287 / 2000000000000000 : ℚ)
  oldCenter := (5589708348147491 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_440
  oldLo := (1117 / 2000 : ℚ)
  oldHi := (1119 / 2000 : ℚ)
  oldPieces := [piece_1317, piece_1318]
}

def cell_5188 : Cell := { cellDefaults with
  domain := ⟨(501 / 3200 : ℚ), (5011 / 32000 : ℚ)⟩
  r := (48655547784961 / 50000000000000 : ℚ)
  w := (49937700512833 / 50000000000000 : ℚ)
  center := (10021 / 64000 : ℚ)
  supportValue := (5591285282176823 / 10000000000000000 : ℚ)
  supportSlope := (5046511127286379 / 1000000000000000 : ℚ)
  oldCenter := (5591285282176823 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_440
  oldLo := (11180000000000001 / 20000000000000000 : ℚ)
  oldHi := (1119 / 2000 : ℚ)
  oldPieces := [piece_1318]
}

def cell_5189 : Cell := { cellDefaults with
  domain := ⟨(5011 / 32000 : ℚ), (1253 / 8000 : ℚ)⟩
  r := (48655547784961 / 50000000000000 : ℚ)
  w := (49937700512833 / 50000000000000 : ℚ)
  center := (10023 / 64000 : ℚ)
  supportValue := (5592862459132671 / 10000000000000000 : ℚ)
  supportSlope := (1261855627418207 / 250000000000000 : ℚ)
  oldCenter := (5592862459132671 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_440
  oldLo := (11180000000000001 / 20000000000000000 : ℚ)
  oldHi := (1119 / 2000 : ℚ)
  oldPieces := [piece_1318]
}

def cell_5190 : Cell := { cellDefaults with
  domain := ⟨(1253 / 8000 : ℚ), (5013 / 32000 : ℚ)⟩
  r := (48655547784961 / 50000000000000 : ℚ)
  w := (49937700512833 / 50000000000000 : ℚ)
  center := (401 / 2560 : ℚ)
  supportValue := (5594439920964349 / 10000000000000000 : ℚ)
  supportSlope := (157757162594363 / 31250000000000 : ℚ)
  oldCenter := (5594439920964349 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_440
  oldLo := (11180000000000001 / 20000000000000000 : ℚ)
  oldHi := (11200000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1318, piece_1319]
}

def cell_5191 : Cell := { cellDefaults with
  domain := ⟨(5013 / 32000 : ℚ), (2507 / 16000 : ℚ)⟩
  r := (48655547784961 / 50000000000000 : ℚ)
  w := (49937700512833 / 50000000000000 : ℚ)
  center := (10027 / 64000 : ℚ)
  supportValue := (5596017521816123 / 10000000000000000 : ℚ)
  supportSlope := (5048521879480461 / 1000000000000000 : ℚ)
  oldCenter := (5596017521816123 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_440
  oldLo := (1119 / 2000 : ℚ)
  oldHi := (11200000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1319]
}

def cell_5192 : Cell := { cellDefaults with
  domain := ⟨(2507 / 16000 : ℚ), (1003 / 6400 : ℚ)⟩
  r := (48655547784961 / 50000000000000 : ℚ)
  w := (49937700512833 / 50000000000000 : ℚ)
  center := (10029 / 64000 : ℚ)
  supportValue := (1119519065390373 / 2000000000000000 : ℚ)
  supportSlope := (5049432108485519 / 1000000000000000 : ℚ)
  oldCenter := (1119519065390373 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_440
  oldLo := (1119 / 2000 : ℚ)
  oldHi := (11200000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1319]
}

def cell_5193 : Cell := { cellDefaults with
  domain := ⟨(1003 / 6400 : ℚ), (627 / 4000 : ℚ)⟩
  r := (48655547784961 / 50000000000000 : ℚ)
  w := (49937700512833 / 50000000000000 : ℚ)
  center := (10031 / 64000 : ℚ)
  supportValue := (5599173416602551 / 10000000000000000 : ℚ)
  supportSlope := (2020137110179121 / 400000000000000 : ℚ)
  oldCenter := (5599173416602551 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_440
  oldLo := (1119 / 2000 : ℚ)
  oldHi := (11200000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1319]
}

def cell_5194 : Cell := { cellDefaults with
  domain := ⟨(627 / 4000 : ℚ), (5017 / 32000 : ℚ)⟩
  r := (48655547784961 / 50000000000000 : ℚ)
  w := (49937700512833 / 50000000000000 : ℚ)
  center := (10033 / 64000 : ℚ)
  supportValue := (1400187920942939 / 2500000000000000 : ℚ)
  supportSlope := (1010110163407063 / 200000000000000 : ℚ)
  oldCenter := (1400187920942939 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_440
  oldLo := (1119 / 2000 : ℚ)
  oldHi := (1121 / 2000 : ℚ)
  oldPieces := [piece_1319, piece_1320]
}

def cell_5195 : Cell := { cellDefaults with
  domain := ⟨(5017 / 32000 : ℚ), (2509 / 16000 : ℚ)⟩
  r := (48655547784961 / 50000000000000 : ℚ)
  w := (49937700512833 / 50000000000000 : ℚ)
  center := (2007 / 12800 : ℚ)
  supportValue := (5602330117520529 / 10000000000000000 : ℚ)
  supportSlope := (10102886163579683 / 2000000000000000 : ℚ)
  oldCenter := (5602330117520529 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_440
  oldLo := (11200000000000001 / 20000000000000000 : ℚ)
  oldHi := (1121 / 2000 : ℚ)
  oldPieces := [piece_1320]
}

def cell_5196 : Cell := { cellDefaults with
  domain := ⟨(2509 / 16000 : ℚ), (5019 / 32000 : ℚ)⟩
  r := (48655547784961 / 50000000000000 : ℚ)
  w := (49937700512833 / 50000000000000 : ℚ)
  center := (10037 / 64000 : ℚ)
  supportValue := (1400977208854039 / 2500000000000000 : ℚ)
  supportSlope := (5052352569407503 / 1000000000000000 : ℚ)
  oldCenter := (1400977208854039 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_440
  oldLo := (11200000000000001 / 20000000000000000 : ℚ)
  oldHi := (1121 / 2000 : ℚ)
  oldPieces := [piece_1320]
}

def cell_5197 : Cell := { cellDefaults with
  domain := ⟨(5019 / 32000 : ℚ), (251 / 1600 : ℚ)⟩
  r := (48655547784961 / 50000000000000 : ℚ)
  w := (49937700512833 / 50000000000000 : ℚ)
  center := (10039 / 64000 : ℚ)
  supportValue := (2802743884026081 / 5000000000000000 : ℚ)
  supportSlope := (505267970120471 / 100000000000000 : ℚ)
  oldCenter := (2802743884026081 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_440
  oldLo := (11200000000000001 / 20000000000000000 : ℚ)
  oldHi := (11220000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1320, piece_1321]
}

def cell_5198 : Cell := { cellDefaults with
  domain := ⟨(251 / 1600 : ℚ), (5021 / 32000 : ℚ)⟩
  r := (48655547784961 / 50000000000000 : ℚ)
  w := (49937700512833 / 50000000000000 : ℚ)
  center := (10041 / 64000 : ℚ)
  supportValue := (28035334146483 / 50000000000000 : ℚ)
  supportSlope := (5053450482169097 / 1000000000000000 : ℚ)
  oldCenter := (28035334146483 / 50000000000000 : ℚ)
  newCoefficients := coefficients_440
  oldLo := (1121 / 2000 : ℚ)
  oldHi := (11220000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1321]
}

def cell_5199 : Cell := { cellDefaults with
  domain := ⟨(5021 / 32000 : ℚ), (2511 / 16000 : ℚ)⟩
  r := (48655547784961 / 50000000000000 : ℚ)
  w := (49937700512833 / 50000000000000 : ℚ)
  center := (10043 / 64000 : ℚ)
  supportValue := (701080771790181 / 1250000000000000 : ℚ)
  supportSlope := (1010871759153531 / 200000000000000 : ℚ)
  oldCenter := (701080771790181 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_440
  oldLo := (1121 / 2000 : ℚ)
  oldHi := (11220000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1321]
}

theorem check_5150 : SourceCertificateFamily.RightNormalized.check cell_5150 = true := by
  decide +kernel

theorem check_5151 : SourceCertificateFamily.RightNormalized.check cell_5151 = true := by
  decide +kernel

theorem check_5152 : SourceCertificateFamily.RightNormalized.check cell_5152 = true := by
  decide +kernel

theorem check_5153 : SourceCertificateFamily.RightNormalized.check cell_5153 = true := by
  decide +kernel

theorem check_5154 : SourceCertificateFamily.RightNormalized.check cell_5154 = true := by
  decide +kernel

theorem check_5155 : SourceCertificateFamily.RightNormalized.check cell_5155 = true := by
  decide +kernel

theorem check_5156 : SourceCertificateFamily.RightNormalized.check cell_5156 = true := by
  decide +kernel

theorem check_5157 : SourceCertificateFamily.RightNormalized.check cell_5157 = true := by
  decide +kernel

theorem check_5158 : SourceCertificateFamily.RightNormalized.check cell_5158 = true := by
  decide +kernel

theorem check_5159 : SourceCertificateFamily.RightNormalized.check cell_5159 = true := by
  decide +kernel

theorem check_5160 : SourceCertificateFamily.RightNormalized.check cell_5160 = true := by
  decide +kernel

theorem check_5161 : SourceCertificateFamily.RightNormalized.check cell_5161 = true := by
  decide +kernel

theorem check_5162 : SourceCertificateFamily.RightNormalized.check cell_5162 = true := by
  decide +kernel

theorem check_5163 : SourceCertificateFamily.RightNormalized.check cell_5163 = true := by
  decide +kernel

theorem check_5164 : SourceCertificateFamily.RightNormalized.check cell_5164 = true := by
  decide +kernel

theorem check_5165 : SourceCertificateFamily.RightNormalized.check cell_5165 = true := by
  decide +kernel

theorem check_5166 : SourceCertificateFamily.RightNormalized.check cell_5166 = true := by
  decide +kernel

theorem check_5167 : SourceCertificateFamily.RightNormalized.check cell_5167 = true := by
  decide +kernel

theorem check_5168 : SourceCertificateFamily.RightNormalized.check cell_5168 = true := by
  decide +kernel

theorem check_5169 : SourceCertificateFamily.RightNormalized.check cell_5169 = true := by
  decide +kernel

theorem check_5170 : SourceCertificateFamily.RightNormalized.check cell_5170 = true := by
  decide +kernel

theorem check_5171 : SourceCertificateFamily.RightNormalized.check cell_5171 = true := by
  decide +kernel

theorem check_5172 : SourceCertificateFamily.RightNormalized.check cell_5172 = true := by
  decide +kernel

theorem check_5173 : SourceCertificateFamily.RightNormalized.check cell_5173 = true := by
  decide +kernel

theorem check_5174 : SourceCertificateFamily.RightNormalized.check cell_5174 = true := by
  decide +kernel

theorem check_5175 : SourceCertificateFamily.RightNormalized.check cell_5175 = true := by
  decide +kernel

theorem check_5176 : SourceCertificateFamily.RightNormalized.check cell_5176 = true := by
  decide +kernel

theorem check_5177 : SourceCertificateFamily.RightNormalized.check cell_5177 = true := by
  decide +kernel

theorem check_5178 : SourceCertificateFamily.RightNormalized.check cell_5178 = true := by
  decide +kernel

theorem check_5179 : SourceCertificateFamily.RightNormalized.check cell_5179 = true := by
  decide +kernel

theorem check_5180 : SourceCertificateFamily.RightNormalized.check cell_5180 = true := by
  decide +kernel

theorem check_5181 : SourceCertificateFamily.RightNormalized.check cell_5181 = true := by
  decide +kernel

theorem check_5182 : SourceCertificateFamily.RightNormalized.check cell_5182 = true := by
  decide +kernel

theorem check_5183 : SourceCertificateFamily.RightNormalized.check cell_5183 = true := by
  decide +kernel

theorem check_5184 : SourceCertificateFamily.RightNormalized.check cell_5184 = true := by
  decide +kernel

theorem check_5185 : SourceCertificateFamily.RightNormalized.check cell_5185 = true := by
  decide +kernel

theorem check_5186 : SourceCertificateFamily.RightNormalized.check cell_5186 = true := by
  decide +kernel

theorem check_5187 : SourceCertificateFamily.RightNormalized.check cell_5187 = true := by
  decide +kernel

theorem check_5188 : SourceCertificateFamily.RightNormalized.check cell_5188 = true := by
  decide +kernel

theorem check_5189 : SourceCertificateFamily.RightNormalized.check cell_5189 = true := by
  decide +kernel

theorem check_5190 : SourceCertificateFamily.RightNormalized.check cell_5190 = true := by
  decide +kernel

theorem check_5191 : SourceCertificateFamily.RightNormalized.check cell_5191 = true := by
  decide +kernel

theorem check_5192 : SourceCertificateFamily.RightNormalized.check cell_5192 = true := by
  decide +kernel

theorem check_5193 : SourceCertificateFamily.RightNormalized.check cell_5193 = true := by
  decide +kernel

theorem check_5194 : SourceCertificateFamily.RightNormalized.check cell_5194 = true := by
  decide +kernel

theorem check_5195 : SourceCertificateFamily.RightNormalized.check cell_5195 = true := by
  decide +kernel

theorem check_5196 : SourceCertificateFamily.RightNormalized.check cell_5196 = true := by
  decide +kernel

theorem check_5197 : SourceCertificateFamily.RightNormalized.check cell_5197 = true := by
  decide +kernel

theorem check_5198 : SourceCertificateFamily.RightNormalized.check cell_5198 = true := by
  decide +kernel

theorem check_5199 : SourceCertificateFamily.RightNormalized.check cell_5199 = true := by
  decide +kernel

def cells : List Cell := [cell_5150, cell_5151, cell_5152, cell_5153, cell_5154, cell_5155, cell_5156, cell_5157, cell_5158, cell_5159, cell_5160, cell_5161, cell_5162, cell_5163, cell_5164, cell_5165, cell_5166, cell_5167, cell_5168, cell_5169, cell_5170, cell_5171, cell_5172, cell_5173, cell_5174, cell_5175, cell_5176, cell_5177, cell_5178, cell_5179, cell_5180, cell_5181, cell_5182, cell_5183, cell_5184, cell_5185, cell_5186, cell_5187, cell_5188, cell_5189, cell_5190, cell_5191, cell_5192, cell_5193, cell_5194, cell_5195, cell_5196, cell_5197, cell_5198, cell_5199]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_5150, SourceCertificateFamily.of_right_checked check_5151, SourceCertificateFamily.of_right_checked check_5152, SourceCertificateFamily.of_right_checked check_5153, SourceCertificateFamily.of_right_checked check_5154, SourceCertificateFamily.of_right_checked check_5155, SourceCertificateFamily.of_right_checked check_5156, SourceCertificateFamily.of_right_checked check_5157, SourceCertificateFamily.of_right_checked check_5158, SourceCertificateFamily.of_right_checked check_5159, SourceCertificateFamily.of_right_checked check_5160, SourceCertificateFamily.of_right_checked check_5161, SourceCertificateFamily.of_right_checked check_5162, SourceCertificateFamily.of_right_checked check_5163, SourceCertificateFamily.of_right_checked check_5164, SourceCertificateFamily.of_right_checked check_5165, SourceCertificateFamily.of_right_checked check_5166, SourceCertificateFamily.of_right_checked check_5167, SourceCertificateFamily.of_right_checked check_5168, SourceCertificateFamily.of_right_checked check_5169, SourceCertificateFamily.of_right_checked check_5170, SourceCertificateFamily.of_right_checked check_5171, SourceCertificateFamily.of_right_checked check_5172, SourceCertificateFamily.of_right_checked check_5173, SourceCertificateFamily.of_right_checked check_5174, SourceCertificateFamily.of_right_checked check_5175, SourceCertificateFamily.of_right_checked check_5176, SourceCertificateFamily.of_right_checked check_5177, SourceCertificateFamily.of_right_checked check_5178, SourceCertificateFamily.of_right_checked check_5179, SourceCertificateFamily.of_right_checked check_5180, SourceCertificateFamily.of_right_checked check_5181, SourceCertificateFamily.of_right_checked check_5182, SourceCertificateFamily.of_right_checked check_5183, SourceCertificateFamily.of_right_checked check_5184, SourceCertificateFamily.of_right_checked check_5185, SourceCertificateFamily.of_right_checked check_5186, SourceCertificateFamily.of_right_checked check_5187, SourceCertificateFamily.of_right_checked check_5188, SourceCertificateFamily.of_right_checked check_5189, SourceCertificateFamily.of_right_checked check_5190, SourceCertificateFamily.of_right_checked check_5191, SourceCertificateFamily.of_right_checked check_5192, SourceCertificateFamily.of_right_checked check_5193, SourceCertificateFamily.of_right_checked check_5194, SourceCertificateFamily.of_right_checked check_5195, SourceCertificateFamily.of_right_checked check_5196, SourceCertificateFamily.of_right_checked check_5197, SourceCertificateFamily.of_right_checked check_5198, SourceCertificateFamily.of_right_checked check_5199, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0103
