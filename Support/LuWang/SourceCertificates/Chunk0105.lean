import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0105
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(317 / 2000 : ℚ), (5073 / 32000 : ℚ)⟩
  branch := .right
  r := (12112333949341 / 12500000000000 : ℚ)
  w := (99946179939733 / 100000000000000 : ℚ)
  center := (2029 / 12800 : ℚ)
  supportValue := (2836169523495599 / 5000000000000000 : ℚ)
  supportSlope := (10141773656840769 / 2000000000000000 : ℚ)
  oldCenter := (2836169523495599 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_444
  oldLo := (28450000000000003 / 50000000000000000 : ℚ)
  oldHi := (57400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1349]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_5250 : Cell := { cellDefaults with
  oldLo := (28350000000000003 / 50000000000000000 : ℚ)
  oldHi := (227 / 400 : ℚ)
  oldPieces := [piece_1335]
}

def cell_5251 : Cell := { cellDefaults with
  domain := ⟨(5073 / 32000 : ℚ), (2537 / 16000 : ℚ)⟩
  center := (10147 / 64000 : ℚ)
  supportValue := (709240479928503 / 1250000000000000 : ℚ)
  supportSlope := (5071785883824731 / 1000000000000000 : ℚ)
  oldCenter := (709240479928503 / 1250000000000000 : ℚ)
  oldLo := (28350000000000003 / 50000000000000000 : ℚ)
  oldHi := (227 / 400 : ℚ)
  oldPieces := [piece_1335]
}

def cell_5252 : Cell := { cellDefaults with
  domain := ⟨(2537 / 16000 : ℚ), (203 / 1280 : ℚ)⟩
  center := (10149 / 64000 : ℚ)
  supportValue := (5675508843312783 / 10000000000000000 : ℚ)
  supportSlope := (1014423182936497 / 200000000000000 : ℚ)
  oldCenter := (5675508843312783 / 10000000000000000 : ℚ)
  oldLo := (28350000000000003 / 50000000000000000 : ℚ)
  oldHi := (28400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1335, piece_1336]
}

def cell_5253 : Cell := { cellDefaults with
  domain := ⟨(203 / 1280 : ℚ), (1269 / 8000 : ℚ)⟩
  center := (10151 / 64000 : ℚ)
  supportValue := (1419273495245073 / 2500000000000000 : ℚ)
  supportSlope := (634111234739887 / 125000000000000 : ℚ)
  oldCenter := (1419273495245073 / 2500000000000000 : ℚ)
  oldLo := (227 / 400 : ℚ)
  oldHi := (28400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1336]
}

def cell_5254 : Cell := { cellDefaults with
  domain := ⟨(1269 / 8000 : ℚ), (5077 / 32000 : ℚ)⟩
  center := (10153 / 64000 : ℚ)
  supportValue := (5678679399201181 / 10000000000000000 : ℚ)
  supportSlope := (5073787852079903 / 1000000000000000 : ℚ)
  oldCenter := (5678679399201181 / 10000000000000000 : ℚ)
  oldLo := (227 / 400 : ℚ)
  oldHi := (28400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1336]
}

def cell_5255 : Cell := { cellDefaults with
  domain := ⟨(5077 / 32000 : ℚ), (2539 / 16000 : ℚ)⟩
  center := (2031 / 12800 : ℚ)
  supportValue := (710033132741489 / 1250000000000000 : ℚ)
  supportSlope := (1268556172397517 / 250000000000000 : ℚ)
  oldCenter := (710033132741489 / 1250000000000000 : ℚ)
  oldLo := (227 / 400 : ℚ)
  oldHi := (56850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1336, piece_1337]
}

def cell_5256 : Cell := { cellDefaults with
  domain := ⟨(2539 / 16000 : ℚ), (5079 / 32000 : ℚ)⟩
  center := (10157 / 64000 : ℚ)
  supportValue := (1136370165071467 / 2000000000000000 : ℚ)
  supportSlope := (2537445944319927 / 500000000000000 : ℚ)
  oldCenter := (1136370165071467 / 2000000000000000 : ℚ)
  oldLo := (28400000000000003 / 50000000000000000 : ℚ)
  oldHi := (56850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1337]
}

def cell_5257 : Cell := { cellDefaults with
  domain := ⟨(5079 / 32000 : ℚ), (127 / 800 : ℚ)⟩
  center := (10159 / 64000 : ℚ)
  supportValue := (5683436869076719 / 10000000000000000 : ℚ)
  supportSlope := (79309203619371 / 15625000000000 : ℚ)
  oldCenter := (5683436869076719 / 10000000000000000 : ℚ)
  oldLo := (28400000000000003 / 50000000000000000 : ℚ)
  oldHi := (56850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1337]
}

def cell_5258 : Cell := { cellDefaults with
  domain := ⟨(127 / 800 : ℚ), (5081 / 32000 : ℚ)⟩
  center := (10161 / 64000 : ℚ)
  supportValue := (2842511594994329 / 5000000000000000 : ℚ)
  supportSlope := (5076331195123629 / 1000000000000000 : ℚ)
  oldCenter := (2842511594994329 / 5000000000000000 : ℚ)
  oldLo := (28400000000000003 / 50000000000000000 : ℚ)
  oldHi := (355377094972067 / 625000000000000 : ℚ)
  oldPieces := [piece_1337, piece_1338]
}

def cell_5259 : Cell := { cellDefaults with
  domain := ⟨(5081 / 32000 : ℚ), (2541 / 16000 : ℚ)⟩
  center := (10163 / 64000 : ℚ)
  supportValue := (5686609578804901 / 10000000000000000 : ℚ)
  supportSlope := (2538446250241577 / 500000000000000 : ℚ)
  oldCenter := (5686609578804901 / 10000000000000000 : ℚ)
  oldLo := (56850000000000001 / 100000000000000000 : ℚ)
  oldHi := (28450000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1338, piece_1339]
}

def cell_5260 : Cell := { cellDefaults with
  domain := ⟨(2541 / 16000 : ℚ), (5083 / 32000 : ℚ)⟩
  center := (2033 / 12800 : ℚ)
  supportValue := (227527849902837 / 400000000000000 : ℚ)
  supportSlope := (5077788790831761 / 1000000000000000 : ℚ)
  oldCenter := (227527849902837 / 400000000000000 : ℚ)
  oldLo := (355377094972067 / 625000000000000 : ℚ)
  oldHi := (28450000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1339]
}

def cell_5261 : Cell := { cellDefaults with
  domain := ⟨(5083 / 32000 : ℚ), (1271 / 8000 : ℚ)⟩
  center := (10167 / 64000 : ℚ)
  supportValue := (2844891598256639 / 5000000000000000 : ℚ)
  supportSlope := (5078435033475159 / 1000000000000000 : ℚ)
  oldCenter := (2844891598256639 / 5000000000000000 : ℚ)
  oldLo := (355377094972067 / 625000000000000 : ℚ)
  oldHi := (56950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1339, piece_1340]
}

def cell_5262 : Cell := { cellDefaults with
  domain := ⟨(1271 / 8000 : ℚ), (1017 / 6400 : ℚ)⟩
  center := (10169 / 64000 : ℚ)
  supportValue := (1422842559927391 / 2500000000000000 : ℚ)
  supportSlope := (25394462559180653 / 5000000000000000 : ℚ)
  oldCenter := (1422842559927391 / 2500000000000000 : ℚ)
  oldHi := (56950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1340]
}

def cell_5263 : Cell := { cellDefaults with
  domain := ⟨(1017 / 6400 : ℚ), (2543 / 16000 : ℚ)⟩
  center := (10171 / 64000 : ℚ)
  supportValue := (113859150666929 / 200000000000000 : ℚ)
  supportSlope := (5079787880156061 / 1000000000000000 : ℚ)
  oldCenter := (113859150666929 / 200000000000000 : ℚ)
  oldHi := (56950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1340]
}

def cell_5264 : Cell := { cellDefaults with
  domain := ⟨(2543 / 16000 : ℚ), (5087 / 32000 : ℚ)⟩
  center := (10173 / 64000 : ℚ)
  supportValue := (1138909021369691 / 2000000000000000 : ℚ)
  supportSlope := (9922923343543 / 1953125000000 : ℚ)
  oldCenter := (1138909021369691 / 2000000000000000 : ℚ)
  oldHi := (28500000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1340, piece_1341]
}

def cell_5265 : Cell := { cellDefaults with
  domain := ⟨(5087 / 32000 : ℚ), (159 / 1000 : ℚ)⟩
  center := (407 / 2560 : ℚ)
  supportValue := (1424033201746161 / 2500000000000000 : ℚ)
  supportSlope := (1270222894192763 / 250000000000000 : ℚ)
  oldCenter := (1424033201746161 / 2500000000000000 : ℚ)
  oldLo := (56950000000000001 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1341]
}

def cell_5266 : Cell := { cellDefaults with
  domain := ⟨(159 / 1000 : ℚ), (5089 / 32000 : ℚ)⟩
  r := (6049765444489 / 6250000000000 : ℚ)
  w := (49981934378431 / 50000000000000 : ℚ)
  center := (10177 / 64000 : ℚ)
  supportValue := (5693437062294111 / 10000000000000000 : ℚ)
  supportSlope := (10154740973618459 / 2000000000000000 : ℚ)
  oldCenter := (5693437062294111 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_445
  oldHi := (56950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1340]
}

def cell_5267 : Cell := { cellDefaults with
  domain := ⟨(5089 / 32000 : ℚ), (509 / 3200 : ℚ)⟩
  r := (6049765444489 / 6250000000000 : ℚ)
  w := (49981934378431 / 50000000000000 : ℚ)
  center := (10179 / 64000 : ℚ)
  supportValue := (142375596930577 / 250000000000000 : ℚ)
  supportSlope := (5077913308600301 / 1000000000000000 : ℚ)
  oldCenter := (142375596930577 / 250000000000000 : ℚ)
  newCoefficients := coefficients_445
  oldHi := (28500000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1340, piece_1341]
}

def cell_5268 : Cell := { cellDefaults with
  domain := ⟨(509 / 3200 : ℚ), (5091 / 32000 : ℚ)⟩
  r := (6049765444489 / 6250000000000 : ℚ)
  w := (49981934378431 / 50000000000000 : ℚ)
  center := (10181 / 64000 : ℚ)
  supportValue := (5696610760956843 / 10000000000000000 : ℚ)
  supportSlope := (15870237544513 / 3125000000000 : ℚ)
  oldCenter := (5696610760956843 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_445
  oldLo := (56950000000000001 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1341]
}

def cell_5269 : Cell := { cellDefaults with
  domain := ⟨(5091 / 32000 : ℚ), (1273 / 8000 : ℚ)⟩
  r := (6049765444489 / 6250000000000 : ℚ)
  w := (49981934378431 / 50000000000000 : ℚ)
  center := (10183 / 64000 : ℚ)
  supportValue := (2849098962222919 / 5000000000000000 : ℚ)
  supportSlope := (203174857247177 / 40000000000000 : ℚ)
  oldCenter := (2849098962222919 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_445
  oldLo := (56950000000000001 / 100000000000000000 : ℚ)
  oldHi := (28500000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1341]
}

def cell_5270 : Cell := { cellDefaults with
  domain := ⟨(1273 / 8000 : ℚ), (5093 / 32000 : ℚ)⟩
  r := (6049765444489 / 6250000000000 : ℚ)
  w := (49981934378431 / 50000000000000 : ℚ)
  center := (2037 / 12800 : ℚ)
  supportValue := (1424946341953789 / 2500000000000000 : ℚ)
  supportSlope := (2540008766729329 / 500000000000000 : ℚ)
  oldCenter := (1424946341953789 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_445
  oldLo := (56950000000000001 / 100000000000000000 : ℚ)
  oldHi := (57050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1341, piece_1342]
}

def cell_5271 : Cell := { cellDefaults with
  domain := ⟨(5093 / 32000 : ℚ), (2547 / 16000 : ℚ)⟩
  r := (6049765444489 / 6250000000000 : ℚ)
  w := (49981934378431 / 50000000000000 : ℚ)
  center := (10187 / 64000 : ℚ)
  supportValue := (570137290615581 / 1000000000000000 : ℚ)
  supportSlope := (1270119532272851 / 250000000000000 : ℚ)
  oldCenter := (570137290615581 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_445
  oldLo := (28500000000000003 / 50000000000000000 : ℚ)
  oldHi := (57050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1342]
}

def cell_5272 : Cell := { cellDefaults with
  domain := ⟨(2547 / 16000 : ℚ), (1019 / 6400 : ℚ)⟩
  r := (6049765444489 / 6250000000000 : ℚ)
  w := (49981934378431 / 50000000000000 : ℚ)
  center := (10189 / 64000 : ℚ)
  supportValue := (712870086893773 / 1250000000000000 : ℚ)
  supportSlope := (10162745101141013 / 2000000000000000 : ℚ)
  oldCenter := (712870086893773 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_445
  oldLo := (28500000000000003 / 50000000000000000 : ℚ)
  oldHi := (57050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1342]
}

def cell_5273 : Cell := { cellDefaults with
  domain := ⟨(1019 / 6400 : ℚ), (637 / 4000 : ℚ)⟩
  r := (6049765444489 / 6250000000000 : ℚ)
  w := (49981934378431 / 50000000000000 : ℚ)
  center := (10191 / 64000 : ℚ)
  supportValue := (2852274381856713 / 5000000000000000 : ℚ)
  supportSlope := (5082119642732863 / 1000000000000000 : ℚ)
  oldCenter := (2852274381856713 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_445
  oldLo := (28500000000000003 / 50000000000000000 : ℚ)
  oldHi := (28550000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1342, piece_1343]
}

def cell_5274 : Cell := { cellDefaults with
  domain := ⟨(637 / 4000 : ℚ), (31857960893854747 / 200000000000000000 : ℚ)⟩
  r := (6049765444489 / 6250000000000 : ℚ)
  w := (49981934378431 / 50000000000000 : ℚ)
  center := (63707960893854747 / 400000000000000000 : ℚ)
  supportValue := (285317717552359 / 500000000000000 : ℚ)
  supportSlope := (5082600369162111 / 1000000000000000 : ℚ)
  oldCenter := (285317717552359 / 500000000000000 : ℚ)
  newCoefficients := coefficients_445
  oldLo := (57050000000000001 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1343]
}

def cell_5275 : Cell := { cellDefaults with
  domain := ⟨(31857960893854747 / 200000000000000000 : ℚ), (15932960893854747 / 100000000000000000 : ℚ)⟩
  r := (6049765444489 / 6250000000000 : ℚ)
  w := (49981934378431 / 50000000000000 : ℚ)
  center := (63723882681564241 / 400000000000000000 : ℚ)
  supportValue := (2854188839710017 / 5000000000000000 : ℚ)
  supportSlope := (2541869228380513 / 500000000000000 : ℚ)
  oldCenter := (2854188839710017 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_445
  oldLo := (57050000000000001 / 100000000000000000 : ℚ)
  oldHi := (28550000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1343]
}

def cell_5276 : Cell := { cellDefaults with
  domain := ⟨(15932960893854747 / 100000000000000000 : ℚ), (51 / 320 : ℚ)⟩
  r := (6049765444489 / 6250000000000 : ℚ)
  w := (49981934378431 / 50000000000000 : ℚ)
  center := (31870460893854747 / 200000000000000000 : ℚ)
  supportValue := (178454446346959 / 312500000000000 : ℚ)
  supportSlope := (79444640532353 / 15625000000000 : ℚ)
  oldCenter := (178454446346959 / 312500000000000 : ℚ)
  newCoefficients := coefficients_446
  oldLo := (57050000000000001 / 100000000000000000 : ℚ)
  oldHi := (57150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1343, piece_1344]
}

def cell_5277 : Cell := { cellDefaults with
  domain := ⟨(51 / 320 : ℚ), (5101 / 32000 : ℚ)⟩
  r := (6049765444489 / 6250000000000 : ℚ)
  w := (49981934378431 / 50000000000000 : ℚ)
  center := (10201 / 64000 : ℚ)
  supportValue := (571249195660301 / 1000000000000000 : ℚ)
  supportSlope := (2542685642032083 / 500000000000000 : ℚ)
  oldCenter := (571249195660301 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_446
  oldLo := (28550000000000003 / 50000000000000000 : ℚ)
  oldHi := (57150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1344]
}

def cell_5278 : Cell := { cellDefaults with
  domain := ⟨(5101 / 32000 : ℚ), (2551 / 16000 : ℚ)⟩
  r := (6049765444489 / 6250000000000 : ℚ)
  w := (49981934378431 / 50000000000000 : ℚ)
  center := (10203 / 64000 : ℚ)
  supportValue := (714260159306019 / 1250000000000000 : ℚ)
  supportSlope := (5086264040372157 / 1000000000000000 : ℚ)
  oldCenter := (714260159306019 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_446
  oldLo := (28550000000000003 / 50000000000000000 : ℚ)
  oldHi := (57150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1344]
}

def cell_5279 : Cell := { cellDefaults with
  domain := ⟨(2551 / 16000 : ℚ), (5103 / 32000 : ℚ)⟩
  r := (6049765444489 / 6250000000000 : ℚ)
  w := (49981934378431 / 50000000000000 : ℚ)
  center := (2041 / 12800 : ℚ)
  supportValue := (2857835390798441 / 5000000000000000 : ℚ)
  supportSlope := (5086529536672657 / 1000000000000000 : ℚ)
  oldCenter := (2857835390798441 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_446
  oldLo := (28550000000000003 / 50000000000000000 : ℚ)
  oldHi := (28600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1344, piece_1345]
}

def cell_5280 : Cell := { cellDefaults with
  domain := ⟨(5103 / 32000 : ℚ), (319 / 2000 : ℚ)⟩
  r := (6049765444489 / 6250000000000 : ℚ)
  w := (49981934378431 / 50000000000000 : ℚ)
  center := (10207 / 64000 : ℚ)
  supportValue := (1143452088938337 / 2000000000000000 : ℚ)
  supportSlope := (5087368119330193 / 1000000000000000 : ℚ)
  oldCenter := (1143452088938337 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_446
  oldLo := (57150000000000001 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1345]
}

def cell_5281 : Cell := { cellDefaults with
  domain := ⟨(319 / 2000 : ℚ), (1021 / 6400 : ℚ)⟩
  r := (96694094164531 / 100000000000000 : ℚ)
  w := (49990782580691 / 50000000000000 : ℚ)
  center := (10209 / 64000 : ℚ)
  supportValue := (5714553765490581 / 10000000000000000 : ℚ)
  supportSlope := (5083684079913553 / 1000000000000000 : ℚ)
  oldCenter := (5714553765490581 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_447
  oldLo := (28550000000000003 / 50000000000000000 : ℚ)
  oldHi := (28600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1344, piece_1345]
}

def cell_5282 : Cell := { cellDefaults with
  domain := ⟨(1021 / 6400 : ℚ), (2553 / 16000 : ℚ)⟩
  r := (96694094164531 / 100000000000000 : ℚ)
  w := (49990782580691 / 50000000000000 : ℚ)
  center := (10211 / 64000 : ℚ)
  supportValue := (5716142450043693 / 10000000000000000 : ℚ)
  supportSlope := (2033618689453931 / 400000000000000 : ℚ)
  oldCenter := (5716142450043693 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_447
  oldLo := (57150000000000001 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1345]
}

def cell_5283 : Cell := { cellDefaults with
  domain := ⟨(2553 / 16000 : ℚ), (5107 / 32000 : ℚ)⟩
  r := (96694094164531 / 100000000000000 : ℚ)
  w := (49990782580691 / 50000000000000 : ℚ)
  center := (10213 / 64000 : ℚ)
  supportValue := (5717731353907773 / 10000000000000000 : ℚ)
  supportSlope := (2542469560822269 / 500000000000000 : ℚ)
  oldCenter := (5717731353907773 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_447
  oldLo := (57150000000000001 / 100000000000000000 : ℚ)
  oldHi := (28600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1345]
}

def cell_5284 : Cell := { cellDefaults with
  domain := ⟨(5107 / 32000 : ℚ), (1277 / 8000 : ℚ)⟩
  r := (96694094164531 / 100000000000000 : ℚ)
  w := (49990782580691 / 50000000000000 : ℚ)
  center := (2043 / 12800 : ℚ)
  supportValue := (357457533544227 / 625000000000000 : ℚ)
  supportSlope := (5085782556459861 / 1000000000000000 : ℚ)
  oldCenter := (357457533544227 / 625000000000000 : ℚ)
  newCoefficients := coefficients_447
  oldLo := (57150000000000001 / 100000000000000000 : ℚ)
  oldHi := (57250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1345, piece_1346]
}

def cell_5285 : Cell := { cellDefaults with
  domain := ⟨(1277 / 8000 : ℚ), (5109 / 32000 : ℚ)⟩
  r := (96694094164531 / 100000000000000 : ℚ)
  w := (49990782580691 / 50000000000000 : ℚ)
  center := (10217 / 64000 : ℚ)
  supportValue := (2860454938597203 / 5000000000000000 : ℚ)
  supportSlope := (5086046474993111 / 1000000000000000 : ℚ)
  oldCenter := (2860454938597203 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_447
  oldLo := (28600000000000003 / 50000000000000000 : ℚ)
  oldHi := (57250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1346]
}

def cell_5286 : Cell := { cellDefaults with
  domain := ⟨(5109 / 32000 : ℚ), (511 / 3200 : ℚ)⟩
  r := (96694094164531 / 100000000000000 : ℚ)
  w := (49990782580691 / 50000000000000 : ℚ)
  center := (10219 / 64000 : ℚ)
  supportValue := (2861249702908793 / 5000000000000000 : ℚ)
  supportSlope := (10173875656612097 / 2000000000000000 : ℚ)
  oldCenter := (2861249702908793 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_447
  oldLo := (28600000000000003 / 50000000000000000 : ℚ)
  oldHi := (57250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1346]
}

def cell_5287 : Cell := { cellDefaults with
  domain := ⟨(511 / 3200 : ℚ), (5111 / 32000 : ℚ)⟩
  r := (96694094164531 / 100000000000000 : ℚ)
  w := (49990782580691 / 50000000000000 : ℚ)
  center := (10221 / 64000 : ℚ)
  supportValue := (5724089213049689 / 10000000000000000 : ℚ)
  supportSlope := (1271957393086609 / 250000000000000 : ℚ)
  oldCenter := (5724089213049689 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_447
  oldLo := (28600000000000003 / 50000000000000000 : ℚ)
  oldHi := (57250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1346]
}

def cell_5288 : Cell := { cellDefaults with
  domain := ⟨(5111 / 32000 : ℚ), (639 / 4000 : ℚ)⟩
  r := (96694094164531 / 100000000000000 : ℚ)
  w := (49990782580691 / 50000000000000 : ℚ)
  center := (10223 / 64000 : ℚ)
  supportValue := (2862839604340821 / 5000000000000000 : ℚ)
  supportSlope := (1017618818322319 / 200000000000000 : ℚ)
  oldCenter := (2862839604340821 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_447
  oldLo := (28600000000000003 / 50000000000000000 : ℚ)
  oldHi := (28650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1346, piece_1347]
}

def cell_5289 : Cell := { cellDefaults with
  domain := ⟨(639 / 4000 : ℚ), (5113 / 32000 : ℚ)⟩
  r := (96694094164531 / 100000000000000 : ℚ)
  w := (49990782580691 / 50000000000000 : ℚ)
  center := (409 / 2560 : ℚ)
  supportValue := (5727269361728217 / 10000000000000000 : ℚ)
  supportSlope := (5088935465511923 / 1000000000000000 : ℚ)
  oldCenter := (5727269361728217 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_447
  oldLo := (57250000000000001 / 100000000000000000 : ℚ)
  oldHi := (28650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1347]
}

def cell_5290 : Cell := { cellDefaults with
  domain := ⟨(5113 / 32000 : ℚ), (2557 / 16000 : ℚ)⟩
  r := (96694094164531 / 100000000000000 : ℚ)
  w := (49990782580691 / 50000000000000 : ℚ)
  center := (10227 / 64000 : ℚ)
  supportValue := (716107474132483 / 1250000000000000 : ℚ)
  supportSlope := (1272456543008893 / 250000000000000 : ℚ)
  oldCenter := (716107474132483 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_447
  oldLo := (57250000000000001 / 100000000000000000 : ℚ)
  oldHi := (28650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1347]
}

def cell_5291 : Cell := { cellDefaults with
  domain := ⟨(2557 / 16000 : ℚ), (1023 / 6400 : ℚ)⟩
  r := (96694094164531 / 100000000000000 : ℚ)
  w := (49990782580691 / 50000000000000 : ℚ)
  center := (10229 / 64000 : ℚ)
  supportValue := (573045044302417 / 1000000000000000 : ℚ)
  supportSlope := (12725470879138001 / 2500000000000000 : ℚ)
  oldCenter := (573045044302417 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_447
  oldLo := (57250000000000001 / 100000000000000000 : ℚ)
  oldHi := (57350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1347, piece_1348]
}

def cell_5292 : Cell := { cellDefaults with
  domain := ⟨(1023 / 6400 : ℚ), (1279 / 8000 : ℚ)⟩
  r := (96694094164531 / 100000000000000 : ℚ)
  w := (49990782580691 / 50000000000000 : ℚ)
  center := (10231 / 64000 : ℚ)
  supportValue := (1433010305031287 / 2500000000000000 : ℚ)
  supportSlope := (254546606145567 / 50000000000000 : ℚ)
  oldCenter := (1433010305031287 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_447
  oldLo := (28650000000000003 / 50000000000000000 : ℚ)
  oldHi := (57350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1348]
}

def cell_5293 : Cell := { cellDefaults with
  domain := ⟨(1279 / 8000 : ℚ), (5117 / 32000 : ℚ)⟩
  r := (96694094164531 / 100000000000000 : ℚ)
  w := (49990782580691 / 50000000000000 : ℚ)
  center := (10233 / 64000 : ℚ)
  supportValue := (2866816137656509 / 5000000000000000 : ℚ)
  supportSlope := (5091822194419393 / 1000000000000000 : ℚ)
  oldCenter := (2866816137656509 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_447
  oldLo := (28650000000000003 / 50000000000000000 : ℚ)
  oldHi := (57350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1348]
}

def cell_5294 : Cell := { cellDefaults with
  domain := ⟨(5117 / 32000 : ℚ), (2559 / 16000 : ℚ)⟩
  r := (96694094164531 / 100000000000000 : ℚ)
  w := (49990782580691 / 50000000000000 : ℚ)
  center := (2047 / 12800 : ℚ)
  supportValue := (2867611789536379 / 5000000000000000 : ℚ)
  supportSlope := (5092280860861109 / 1000000000000000 : ℚ)
  oldCenter := (2867611789536379 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_447
  oldLo := (28650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1348, piece_1349]
}

def cell_5295 : Cell := { cellDefaults with
  domain := ⟨(2559 / 16000 : ℚ), (5119 / 32000 : ℚ)⟩
  r := (96694094164531 / 100000000000000 : ℚ)
  w := (49990782580691 / 50000000000000 : ℚ)
  center := (10237 / 64000 : ℚ)
  supportValue := (5736814980030981 / 10000000000000000 : ℚ)
  supportSlope := (1273231992889201 / 250000000000000 : ℚ)
  oldCenter := (5736814980030981 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_447
  oldLo := (57350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1349]
}

def cell_5296 : Cell := { cellDefaults with
  domain := ⟨(5119 / 32000 : ℚ), (4 / 25 : ℚ)⟩
  r := (96694094164531 / 100000000000000 : ℚ)
  w := (49990782580691 / 50000000000000 : ℚ)
  center := (10239 / 64000 : ℚ)
  supportValue := (5738406658766699 / 10000000000000000 : ℚ)
  supportSlope := (10187634103672849 / 2000000000000000 : ℚ)
  oldCenter := (5738406658766699 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_447
  oldLo := (57350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1349]
}

def cell_5297 : Cell := { cellDefaults with
  domain := ⟨(4 / 25 : ℚ), (5121 / 32000 : ℚ)⟩
  r := (48296105688371 / 50000000000000 : ℚ)
  w := (49999634199457 / 50000000000000 : ℚ)
  center := (10241 / 64000 : ℚ)
  supportValue := (1433922232876573 / 2500000000000000 : ℚ)
  supportSlope := (10179278941492953 / 2000000000000000 : ℚ)
  oldCenter := (1433922232876573 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_448
  oldLo := (28650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1348, piece_1349]
}

def cell_5298 : Cell := { cellDefaults with
  domain := ⟨(5121 / 32000 : ℚ), (2561 / 16000 : ℚ)⟩
  r := (48296105688371 / 50000000000000 : ℚ)
  w := (49999634199457 / 50000000000000 : ℚ)
  center := (10243 / 64000 : ℚ)
  supportValue := (5737279568709969 / 10000000000000000 : ℚ)
  supportSlope := (101809689142911 / 20000000000000 : ℚ)
  oldCenter := (5737279568709969 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_448
  oldLo := (57350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1349]
}

def cell_5299 : Cell := { cellDefaults with
  domain := ⟨(2561 / 16000 : ℚ), (5123 / 32000 : ℚ)⟩
  r := (48296105688371 / 50000000000000 : ℚ)
  w := (49999634199457 / 50000000000000 : ℚ)
  center := (2049 / 12800 : ℚ)
  supportValue := (573887048400407 / 1000000000000000 : ℚ)
  supportSlope := (101827490800801 / 20000000000000 : ℚ)
  oldCenter := (573887048400407 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_448
  oldLo := (57350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1349]
}

theorem check_5250 : SourceCertificateFamily.RightNormalized.check cell_5250 = true := by
  decide +kernel

theorem check_5251 : SourceCertificateFamily.RightNormalized.check cell_5251 = true := by
  decide +kernel

theorem check_5252 : SourceCertificateFamily.RightNormalized.check cell_5252 = true := by
  decide +kernel

theorem check_5253 : SourceCertificateFamily.RightNormalized.check cell_5253 = true := by
  decide +kernel

theorem check_5254 : SourceCertificateFamily.RightNormalized.check cell_5254 = true := by
  decide +kernel

theorem check_5255 : SourceCertificateFamily.RightNormalized.check cell_5255 = true := by
  decide +kernel

theorem check_5256 : SourceCertificateFamily.RightNormalized.check cell_5256 = true := by
  decide +kernel

theorem check_5257 : SourceCertificateFamily.RightNormalized.check cell_5257 = true := by
  decide +kernel

theorem check_5258 : SourceCertificateFamily.RightNormalized.check cell_5258 = true := by
  decide +kernel

theorem check_5259 : SourceCertificateFamily.RightNormalized.check cell_5259 = true := by
  decide +kernel

theorem check_5260 : SourceCertificateFamily.RightNormalized.check cell_5260 = true := by
  decide +kernel

theorem check_5261 : SourceCertificateFamily.RightNormalized.check cell_5261 = true := by
  decide +kernel

theorem check_5262 : SourceCertificateFamily.RightNormalized.check cell_5262 = true := by
  decide +kernel

theorem check_5263 : SourceCertificateFamily.RightNormalized.check cell_5263 = true := by
  decide +kernel

theorem check_5264 : SourceCertificateFamily.RightNormalized.check cell_5264 = true := by
  decide +kernel

theorem check_5265 : SourceCertificateFamily.RightNormalized.check cell_5265 = true := by
  decide +kernel

theorem check_5266 : SourceCertificateFamily.RightNormalized.check cell_5266 = true := by
  decide +kernel

theorem check_5267 : SourceCertificateFamily.RightNormalized.check cell_5267 = true := by
  decide +kernel

theorem check_5268 : SourceCertificateFamily.RightNormalized.check cell_5268 = true := by
  decide +kernel

theorem check_5269 : SourceCertificateFamily.RightNormalized.check cell_5269 = true := by
  decide +kernel

theorem check_5270 : SourceCertificateFamily.RightNormalized.check cell_5270 = true := by
  decide +kernel

theorem check_5271 : SourceCertificateFamily.RightNormalized.check cell_5271 = true := by
  decide +kernel

theorem check_5272 : SourceCertificateFamily.RightNormalized.check cell_5272 = true := by
  decide +kernel

theorem check_5273 : SourceCertificateFamily.RightNormalized.check cell_5273 = true := by
  decide +kernel

theorem check_5274 : SourceCertificateFamily.RightNormalized.check cell_5274 = true := by
  decide +kernel

theorem check_5275 : SourceCertificateFamily.RightNormalized.check cell_5275 = true := by
  decide +kernel

theorem check_5276 : SourceCertificateFamily.RightNormalized.check cell_5276 = true := by
  decide +kernel

theorem check_5277 : SourceCertificateFamily.RightNormalized.check cell_5277 = true := by
  decide +kernel

theorem check_5278 : SourceCertificateFamily.RightNormalized.check cell_5278 = true := by
  decide +kernel

theorem check_5279 : SourceCertificateFamily.RightNormalized.check cell_5279 = true := by
  decide +kernel

theorem check_5280 : SourceCertificateFamily.RightNormalized.check cell_5280 = true := by
  decide +kernel

theorem check_5281 : SourceCertificateFamily.RightNormalized.check cell_5281 = true := by
  decide +kernel

theorem check_5282 : SourceCertificateFamily.RightNormalized.check cell_5282 = true := by
  decide +kernel

theorem check_5283 : SourceCertificateFamily.RightNormalized.check cell_5283 = true := by
  decide +kernel

theorem check_5284 : SourceCertificateFamily.RightNormalized.check cell_5284 = true := by
  decide +kernel

theorem check_5285 : SourceCertificateFamily.RightNormalized.check cell_5285 = true := by
  decide +kernel

theorem check_5286 : SourceCertificateFamily.RightNormalized.check cell_5286 = true := by
  decide +kernel

theorem check_5287 : SourceCertificateFamily.RightNormalized.check cell_5287 = true := by
  decide +kernel

theorem check_5288 : SourceCertificateFamily.RightNormalized.check cell_5288 = true := by
  decide +kernel

theorem check_5289 : SourceCertificateFamily.RightNormalized.check cell_5289 = true := by
  decide +kernel

theorem check_5290 : SourceCertificateFamily.RightNormalized.check cell_5290 = true := by
  decide +kernel

theorem check_5291 : SourceCertificateFamily.RightNormalized.check cell_5291 = true := by
  decide +kernel

theorem check_5292 : SourceCertificateFamily.RightNormalized.check cell_5292 = true := by
  decide +kernel

theorem check_5293 : SourceCertificateFamily.RightNormalized.check cell_5293 = true := by
  decide +kernel

theorem check_5294 : SourceCertificateFamily.RightNormalized.check cell_5294 = true := by
  decide +kernel

theorem check_5295 : SourceCertificateFamily.RightNormalized.check cell_5295 = true := by
  decide +kernel

theorem check_5296 : SourceCertificateFamily.RightNormalized.check cell_5296 = true := by
  decide +kernel

theorem check_5297 : SourceCertificateFamily.RightNormalized.check cell_5297 = true := by
  decide +kernel

theorem check_5298 : SourceCertificateFamily.RightNormalized.check cell_5298 = true := by
  decide +kernel

theorem check_5299 : SourceCertificateFamily.RightNormalized.check cell_5299 = true := by
  decide +kernel

def cells : List Cell := [cell_5250, cell_5251, cell_5252, cell_5253, cell_5254, cell_5255, cell_5256, cell_5257, cell_5258, cell_5259, cell_5260, cell_5261, cell_5262, cell_5263, cell_5264, cell_5265, cell_5266, cell_5267, cell_5268, cell_5269, cell_5270, cell_5271, cell_5272, cell_5273, cell_5274, cell_5275, cell_5276, cell_5277, cell_5278, cell_5279, cell_5280, cell_5281, cell_5282, cell_5283, cell_5284, cell_5285, cell_5286, cell_5287, cell_5288, cell_5289, cell_5290, cell_5291, cell_5292, cell_5293, cell_5294, cell_5295, cell_5296, cell_5297, cell_5298, cell_5299]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_5250, SourceCertificateFamily.of_right_checked check_5251, SourceCertificateFamily.of_right_checked check_5252, SourceCertificateFamily.of_right_checked check_5253, SourceCertificateFamily.of_right_checked check_5254, SourceCertificateFamily.of_right_checked check_5255, SourceCertificateFamily.of_right_checked check_5256, SourceCertificateFamily.of_right_checked check_5257, SourceCertificateFamily.of_right_checked check_5258, SourceCertificateFamily.of_right_checked check_5259, SourceCertificateFamily.of_right_checked check_5260, SourceCertificateFamily.of_right_checked check_5261, SourceCertificateFamily.of_right_checked check_5262, SourceCertificateFamily.of_right_checked check_5263, SourceCertificateFamily.of_right_checked check_5264, SourceCertificateFamily.of_right_checked check_5265, SourceCertificateFamily.of_right_checked check_5266, SourceCertificateFamily.of_right_checked check_5267, SourceCertificateFamily.of_right_checked check_5268, SourceCertificateFamily.of_right_checked check_5269, SourceCertificateFamily.of_right_checked check_5270, SourceCertificateFamily.of_right_checked check_5271, SourceCertificateFamily.of_right_checked check_5272, SourceCertificateFamily.of_right_checked check_5273, SourceCertificateFamily.of_right_checked check_5274, SourceCertificateFamily.of_right_checked check_5275, SourceCertificateFamily.of_right_checked check_5276, SourceCertificateFamily.of_right_checked check_5277, SourceCertificateFamily.of_right_checked check_5278, SourceCertificateFamily.of_right_checked check_5279, SourceCertificateFamily.of_right_checked check_5280, SourceCertificateFamily.of_right_checked check_5281, SourceCertificateFamily.of_right_checked check_5282, SourceCertificateFamily.of_right_checked check_5283, SourceCertificateFamily.of_right_checked check_5284, SourceCertificateFamily.of_right_checked check_5285, SourceCertificateFamily.of_right_checked check_5286, SourceCertificateFamily.of_right_checked check_5287, SourceCertificateFamily.of_right_checked check_5288, SourceCertificateFamily.of_right_checked check_5289, SourceCertificateFamily.of_right_checked check_5290, SourceCertificateFamily.of_right_checked check_5291, SourceCertificateFamily.of_right_checked check_5292, SourceCertificateFamily.of_right_checked check_5293, SourceCertificateFamily.of_right_checked check_5294, SourceCertificateFamily.of_right_checked check_5295, SourceCertificateFamily.of_right_checked check_5296, SourceCertificateFamily.of_right_checked check_5297, SourceCertificateFamily.of_right_checked check_5298, SourceCertificateFamily.of_right_checked check_5299, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0105
