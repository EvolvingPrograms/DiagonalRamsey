import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0156
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(7323437500000001 / 25000000000000000 : ℚ), (7325000000000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (40702043126159 / 50000000000000 : ℚ)
  w := (4395249373917 / 2500000000000 : ℚ)
  center := (7324218750000001 / 25000000000000000 : ℚ)
  supportValue := (393816164283943 / 500000000000000 : ℚ)
  supportSlope := (-6369286035457833 / 1000000000000000 : ℚ)
  oldCenter := (393816164283943 / 500000000000000 : ℚ)
  newCoefficients := coefficients_738
  oldLo := (78450000000000009 / 100000000000000000 : ℚ)
  oldHi := (78500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1815, piece_1816]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7800 : Cell := { cellDefaults with
  r := (20367250627933 / 25000000000000 : ℚ)
  w := (8795785491231 / 5000000000000 : ℚ)
  newCoefficients := coefficients_737
  oldLo := (78700000000000003 / 100000000000000000 : ℚ)
  oldHi := (78800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1815, piece_1816]
}

def cell_7801 : Cell := { cellDefaults with
  domain := ⟨(7325000000000001 / 25000000000000000 : ℚ), (7326562500000001 / 25000000000000000 : ℚ)⟩
  center := (7325781250000001 / 25000000000000000 : ℚ)
  supportValue := (1971994609957139 / 2500000000000000 : ℚ)
  supportSlope := (-3189140221488529 / 500000000000000 : ℚ)
  oldCenter := (1971994609957139 / 2500000000000000 : ℚ)
  oldLo := (39424999999999999 / 50000000000000000 : ℚ)
  oldHi := (78900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1818]
}

def cell_7802 : Cell := { cellDefaults with
  domain := ⟨(7326562500000001 / 25000000000000000 : ℚ), (7328125000000001 / 25000000000000000 : ℚ)⟩
  center := (7327343750000001 / 25000000000000000 : ℚ)
  supportValue := (1576798701559523 / 2000000000000000 : ℚ)
  supportSlope := (-6373594951117667 / 1000000000000000 : ℚ)
  oldCenter := (1576798701559523 / 2000000000000000 : ℚ)
  oldLo := (78800000000000003 / 100000000000000000 : ℚ)
  oldHi := (78900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1817, piece_1818]
}

def cell_7803 : Cell := { cellDefaults with
  domain := ⟨(7328125000000001 / 25000000000000000 : ℚ), (7329687500000001 / 25000000000000000 : ℚ)⟩
  center := (7328906250000001 / 25000000000000000 : ℚ)
  supportValue := (1576002301224907 / 2000000000000000 : ℚ)
  supportSlope := (-3184453814681021 / 500000000000000 : ℚ)
  oldCenter := (1576002301224907 / 2000000000000000 : ℚ)
  oldLo := (78750000000000009 / 100000000000000000 : ℚ)
  oldHi := (39424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1816, piece_1817]
}

def cell_7804 : Cell := { cellDefaults with
  domain := ⟨(7329687500000001 / 25000000000000000 : ℚ), (7331250000000001 / 25000000000000000 : ℚ)⟩
  center := (7330468750000001 / 25000000000000000 : ℚ)
  supportValue := (787603236492379 / 1000000000000000 : ℚ)
  supportSlope := (-3182110991879483 / 500000000000000 : ℚ)
  oldCenter := (787603236492379 / 1000000000000000 : ℚ)
  oldLo := (78700000000000003 / 100000000000000000 : ℚ)
  oldHi := (78800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1815, piece_1816]
}

def cell_7805 : Cell := { cellDefaults with
  domain := ⟨(7331250000000001 / 25000000000000000 : ℚ), (7332812500000001 / 25000000000000000 : ℚ)⟩
  center := (7332031250000001 / 25000000000000000 : ℚ)
  supportValue := (7872056151231087 / 10000000000000000 : ℚ)
  supportSlope := (-6359544979485321 / 1000000000000000 : ℚ)
  oldCenter := (7872056151231087 / 10000000000000000 : ℚ)
  oldLo := (78700000000000003 / 100000000000000000 : ℚ)
  oldHi := (78750000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1815]
}

def cell_7806 : Cell := { cellDefaults with
  domain := ⟨(7332812500000001 / 25000000000000000 : ℚ), (7334375000000001 / 25000000000000000 : ℚ)⟩
  center := (7333593750000001 / 25000000000000000 : ℚ)
  supportValue := (1573616572768021 / 2000000000000000 : ℚ)
  supportSlope := (-12709937926040027 / 2000000000000000 : ℚ)
  oldCenter := (1573616572768021 / 2000000000000000 : ℚ)
  oldLo := (78650000000000009 / 100000000000000000 : ℚ)
  oldHi := (78750000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1814, piece_1815]
}

def cell_7807 : Cell := { cellDefaults with
  domain := ⟨(7334375000000001 / 25000000000000000 : ℚ), (7335937500000001 / 25000000000000000 : ℚ)⟩
  center := (7335156250000001 / 25000000000000000 : ℚ)
  supportValue := (7864112501534591 / 10000000000000000 : ℚ)
  supportSlope := (-6350290433850603 / 1000000000000000 : ℚ)
  oldCenter := (7864112501534591 / 10000000000000000 : ℚ)
  oldLo := (78600000000000003 / 100000000000000000 : ℚ)
  oldHi := (78700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1813, piece_1814]
}

def cell_7808 : Cell := { cellDefaults with
  domain := ⟨(7335937500000001 / 25000000000000000 : ℚ), (7337500000000001 / 25000000000000000 : ℚ)⟩
  center := (7336718750000001 / 25000000000000000 : ℚ)
  supportValue := (3930072526853153 / 5000000000000000 : ℚ)
  supportSlope := (-6345613846992393 / 1000000000000000 : ℚ)
  oldCenter := (3930072526853153 / 5000000000000000 : ℚ)
  oldLo := (78550000000000009 / 100000000000000000 : ℚ)
  oldHi := (78650000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1812, piece_1813]
}

def cell_7809 : Cell := { cellDefaults with
  domain := ⟨(7337500000000001 / 25000000000000000 : ℚ), (7339062500000001 / 25000000000000000 : ℚ)⟩
  r := (40669650756699 / 50000000000000 : ℚ)
  w := (2196305298813 / 1250000000000 : ℚ)
  center := (7338281250000001 / 25000000000000000 : ℚ)
  supportValue := (3935882413240751 / 5000000000000000 : ℚ)
  supportSlope := (-6354469548313091 / 1000000000000000 : ℚ)
  oldCenter := (3935882413240751 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_739
  oldLo := (78650000000000009 / 100000000000000000 : ℚ)
  oldHi := (78750000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1814, piece_1815]
}

def cell_7810 : Cell := { cellDefaults with
  domain := ⟨(7339062500000001 / 25000000000000000 : ℚ), (7340625000000001 / 25000000000000000 : ℚ)⟩
  r := (40669650756699 / 50000000000000 : ℚ)
  w := (2196305298813 / 1250000000000 : ℚ)
  center := (7339843750000001 / 25000000000000000 : ℚ)
  supportValue := (7867794702255687 / 10000000000000000 : ℚ)
  supportSlope := (-1587472686930269 / 250000000000000 : ℚ)
  oldCenter := (7867794702255687 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_739
  oldLo := (78650000000000009 / 100000000000000000 : ℚ)
  oldHi := (78700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1814]
}

def cell_7811 : Cell := { cellDefaults with
  domain := ⟨(7340625000000001 / 25000000000000000 : ℚ), (7342187500000001 / 25000000000000000 : ℚ)⟩
  r := (40669650756699 / 50000000000000 : ℚ)
  w := (2196305298813 / 1250000000000 : ℚ)
  center := (7341406250000001 / 25000000000000000 : ℚ)
  supportValue := (7863827493612371 / 10000000000000000 : ℚ)
  supportSlope := (-1269050454126841 / 200000000000000 : ℚ)
  oldCenter := (7863827493612371 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_739
  oldLo := (78600000000000003 / 100000000000000000 : ℚ)
  oldHi := (78700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1813, piece_1814]
}

def cell_7812 : Cell := { cellDefaults with
  domain := ⟨(7342187500000001 / 25000000000000000 : ℚ), (7343750000000001 / 25000000000000000 : ℚ)⟩
  r := (40669650756699 / 50000000000000 : ℚ)
  w := (2196305298813 / 1250000000000 : ℚ)
  center := (7342968750000001 / 25000000000000000 : ℚ)
  supportValue := (3929931599673271 / 5000000000000000 : ℚ)
  supportSlope := (-1268118174176891 / 200000000000000 : ℚ)
  oldCenter := (3929931599673271 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_739
  oldLo := (78550000000000009 / 100000000000000000 : ℚ)
  oldHi := (78650000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1812, piece_1813]
}

def cell_7813 : Cell := { cellDefaults with
  domain := ⟨(7343750000000001 / 25000000000000000 : ℚ), (7345312500000001 / 25000000000000000 : ℚ)⟩
  r := (40669650756699 / 50000000000000 : ℚ)
  w := (2196305298813 / 1250000000000 : ℚ)
  center := (7344531250000001 / 25000000000000000 : ℚ)
  supportValue := (7855901756793003 / 10000000000000000 : ℚ)
  supportSlope := (-1583982851204091 / 250000000000000 : ℚ)
  oldCenter := (7855901756793003 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_739
  oldLo := (78500000000000003 / 100000000000000000 : ℚ)
  oldHi := (78600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1811, piece_1812]
}

def cell_7814 : Cell := { cellDefaults with
  domain := ⟨(7345312500000001 / 25000000000000000 : ℚ), (7346875000000001 / 25000000000000000 : ℚ)⟩
  r := (40669650756699 / 50000000000000 : ℚ)
  w := (2196305298813 / 1250000000000 : ℚ)
  center := (7346093750000001 / 25000000000000000 : ℚ)
  supportValue := (1962985803875863 / 2500000000000000 : ℚ)
  supportSlope := (-15828184676287549 / 2500000000000000 : ℚ)
  oldCenter := (1962985803875863 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_739
  oldHi := (78550000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1810, piece_1811]
}

def cell_7815 : Cell := { cellDefaults with
  domain := ⟨(7346875000000001 / 25000000000000000 : ℚ), (7348437500000001 / 25000000000000000 : ℚ)⟩
  r := (40669650756699 / 50000000000000 : ℚ)
  w := (2196305298813 / 1250000000000 : ℚ)
  center := (7347656250000001 / 25000000000000000 : ℚ)
  supportValue := (7847987584173101 / 10000000000000000 : ℚ)
  supportSlope := (-3163364674565017 / 500000000000000 : ℚ)
  oldCenter := (7847987584173101 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_739
  oldPieces := [piece_1810]
}

def cell_7816 : Cell := { cellDefaults with
  domain := ⟨(7348437500000001 / 25000000000000000 : ℚ), (7350000000000001 / 25000000000000000 : ℚ)⟩
  r := (40669650756699 / 50000000000000 : ℚ)
  w := (2196305298813 / 1250000000000 : ℚ)
  center := (7349218750000001 / 25000000000000000 : ℚ)
  supportValue := (7844034861592127 / 10000000000000000 : ℚ)
  supportSlope := (-3161042519094437 / 500000000000000 : ℚ)
  oldCenter := (7844034861592127 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_739
  oldLo := (78400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1808, piece_1809, piece_1810]
}

def cell_7817 : Cell := { cellDefaults with
  domain := ⟨(7350000000000001 / 25000000000000000 : ℚ), (7351562500000001 / 25000000000000000 : ℚ)⟩
  r := (81274643002433 / 100000000000000 : ℚ)
  w := (2194988375117 / 1250000000000 : ℚ)
  center := (7350781250000001 / 25000000000000000 : ℚ)
  supportValue := (7855619496080811 / 10000000000000000 : ℚ)
  supportSlope := (-3165449209781457 / 500000000000000 : ℚ)
  oldCenter := (7855619496080811 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_740
  oldLo := (78500000000000003 / 100000000000000000 : ℚ)
  oldHi := (78600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1811, piece_1812]
}

def cell_7818 : Cell := { cellDefaults with
  domain := ⟨(7351562500000001 / 25000000000000000 : ℚ), (7353125000000001 / 25000000000000000 : ℚ)⟩
  r := (81274643002433 / 100000000000000 : ℚ)
  w := (2194988375117 / 1250000000000 : ℚ)
  center := (7352343750000001 / 25000000000000000 : ℚ)
  supportValue := (3925832047990229 / 5000000000000000 : ℚ)
  supportSlope := (-1581563716592349 / 250000000000000 : ℚ)
  oldCenter := (3925832047990229 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_740
  oldHi := (78550000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1810, piece_1811]
}

def cell_7819 : Cell := { cellDefaults with
  domain := ⟨(7353125000000001 / 25000000000000000 : ℚ), (7354687500000001 / 25000000000000000 : ℚ)⟩
  r := (81274643002433 / 100000000000000 : ℚ)
  w := (2194988375117 / 1250000000000 : ℚ)
  center := (7353906250000001 / 25000000000000000 : ℚ)
  supportValue := (313908463884159 / 400000000000000 : ℚ)
  supportSlope := (-6321693906738091 / 1000000000000000 : ℚ)
  oldCenter := (313908463884159 / 400000000000000 : ℚ)
  newCoefficients := coefficients_740
  oldPieces := [piece_1810]
}

def cell_7820 : Cell := { cellDefaults with
  domain := ⟨(7354687500000001 / 25000000000000000 : ℚ), (7356250000000001 / 25000000000000000 : ℚ)⟩
  r := (81274643002433 / 100000000000000 : ℚ)
  w := (2194988375117 / 1250000000000 : ℚ)
  center := (7355468750000001 / 25000000000000000 : ℚ)
  supportValue := (1568752399649789 / 2000000000000000 : ℚ)
  supportSlope := (-1579273778196999 / 250000000000000 : ℚ)
  oldCenter := (1568752399649789 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_740
  oldLo := (78400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1808, piece_1809, piece_1810]
}

def cell_7821 : Cell := { cellDefaults with
  domain := ⟨(7356250000000001 / 25000000000000000 : ℚ), (7357812500000001 / 25000000000000000 : ℚ)⟩
  r := (81274643002433 / 100000000000000 : ℚ)
  w := (2194988375117 / 1250000000000 : ℚ)
  center := (7357031250000001 / 25000000000000000 : ℚ)
  supportValue := (7839815291081339 / 10000000000000000 : ℚ)
  supportSlope := (-631246874456437 / 100000000000000 : ℚ)
  oldCenter := (7839815291081339 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_740
  oldLo := (78350000000000009 / 100000000000000000 : ℚ)
  oldHi := (1568603351955307 / 2000000000000000 : ℚ)
  oldPieces := [piece_1807, piece_1808]
}

def cell_7822 : Cell := { cellDefaults with
  domain := ⟨(7357812500000001 / 25000000000000000 : ℚ), (7359375000000001 / 25000000000000000 : ℚ)⟩
  r := (81274643002433 / 100000000000000 : ℚ)
  w := (2194988375117 / 1250000000000 : ℚ)
  center := (7358593750000001 / 25000000000000000 : ℚ)
  supportValue := (489741963696441 / 625000000000000 : ℚ)
  supportSlope := (-6307835241084803 / 1000000000000000 : ℚ)
  oldCenter := (489741963696441 / 625000000000000 : ℚ)
  newCoefficients := coefficients_740
  oldLo := (78300000000000003 / 100000000000000000 : ℚ)
  oldHi := (78400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1806, piece_1807]
}

def cell_7823 : Cell := { cellDefaults with
  domain := ⟨(7359375000000001 / 25000000000000000 : ℚ), (7360937500000001 / 25000000000000000 : ℚ)⟩
  r := (81274643002433 / 100000000000000 : ℚ)
  w := (2194988375117 / 1250000000000 : ℚ)
  center := (7360156250000001 / 25000000000000000 : ℚ)
  supportValue := (978991303599901 / 1250000000000000 : ℚ)
  supportSlope := (-12606407083787019 / 2000000000000000 : ℚ)
  oldCenter := (978991303599901 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_740
  oldLo := (9781250000000001 / 12500000000000000 : ℚ)
  oldHi := (78350000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1805, piece_1806]
}

def cell_7824 : Cell := { cellDefaults with
  domain := ⟨(7360937500000001 / 25000000000000000 : ℚ), (7362500000000001 / 25000000000000000 : ℚ)⟩
  r := (81274643002433 / 100000000000000 : ℚ)
  w := (2194988375117 / 1250000000000 : ℚ)
  center := (7361718750000001 / 25000000000000000 : ℚ)
  supportValue := (7827992332251831 / 10000000000000000 : ℚ)
  supportSlope := (-251947513253441 / 40000000000000 : ℚ)
  oldCenter := (7827992332251831 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_740
  oldLo := (9781250000000001 / 12500000000000000 : ℚ)
  oldHi := (78300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1805]
}

def cell_7825 : Cell := { cellDefaults with
  domain := ⟨(7362500000000001 / 25000000000000000 : ℚ), (7364062500000001 / 25000000000000000 : ℚ)⟩
  r := (40605057519317 / 50000000000000 : ℚ)
  w := (4387347494831 / 2500000000000 : ℚ)
  center := (7363281250000001 / 25000000000000000 : ℚ)
  supportValue := (7839541898174597 / 10000000000000000 : ℚ)
  supportSlope := (-630747239882723 / 100000000000000 : ℚ)
  oldCenter := (7839541898174597 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_741
  oldLo := (78350000000000009 / 100000000000000000 : ℚ)
  oldHi := (1568603351955307 / 2000000000000000 : ℚ)
  oldPieces := [piece_1807, piece_1808]
}

def cell_7826 : Cell := { cellDefaults with
  domain := ⟨(7364062500000001 / 25000000000000000 : ℚ), (7365625000000001 / 25000000000000000 : ℚ)⟩
  r := (40605057519317 / 50000000000000 : ℚ)
  w := (4387347494831 / 2500000000000 : ℚ)
  center := (7364843750000001 / 25000000000000000 : ℚ)
  supportValue := (3917800581910869 / 5000000000000000 : ℚ)
  supportSlope := (-78785647348667 / 12500000000000 : ℚ)
  oldCenter := (3917800581910869 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_741
  oldLo := (78300000000000003 / 100000000000000000 : ℚ)
  oldHi := (78400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1806, piece_1807]
}

def cell_7827 : Cell := { cellDefaults with
  domain := ⟨(7365625000000001 / 25000000000000000 : ℚ), (7367187500000001 / 25000000000000000 : ℚ)⟩
  r := (40605057519317 / 50000000000000 : ℚ)
  w := (4387347494831 / 2500000000000 : ℚ)
  center := (7366406250000001 / 25000000000000000 : ℚ)
  supportValue := (7831663284056077 / 10000000000000000 : ℚ)
  supportSlope := (-12596465946934643 / 2000000000000000 : ℚ)
  oldCenter := (7831663284056077 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_741
  oldLo := (9781250000000001 / 12500000000000000 : ℚ)
  oldHi := (78350000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1805, piece_1806]
}

def cell_7828 : Cell := { cellDefaults with
  domain := ⟨(7367187500000001 / 25000000000000000 : ℚ), (7368750000000001 / 25000000000000000 : ℚ)⟩
  r := (40605057519317 / 50000000000000 : ℚ)
  w := (4387347494831 / 2500000000000 : ℚ)
  center := (7367968750000001 / 25000000000000000 : ℚ)
  supportValue := (122308254531863 / 156250000000000 : ℚ)
  supportSlope := (-629370062170409 / 100000000000000 : ℚ)
  oldCenter := (122308254531863 / 156250000000000 : ℚ)
  newCoefficients := coefficients_741
  oldLo := (9781250000000001 / 12500000000000000 : ℚ)
  oldHi := (78300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1805]
}

def cell_7829 : Cell := { cellDefaults with
  domain := ⟨(7368750000000001 / 25000000000000000 : ℚ), (7370312500000001 / 25000000000000000 : ℚ)⟩
  r := (40605057519317 / 50000000000000 : ℚ)
  w := (4387347494831 / 2500000000000 : ℚ)
  center := (7369531250000001 / 25000000000000000 : ℚ)
  supportValue := (1955949045173983 / 2500000000000000 : ℚ)
  supportSlope := (-6289121723369817 / 1000000000000000 : ℚ)
  oldCenter := (1955949045173983 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_741
  oldLo := (78200000000000003 / 100000000000000000 : ℚ)
  oldHi := (78300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1804, piece_1805]
}

def cell_7830 : Cell := { cellDefaults with
  domain := ⟨(7370312500000001 / 25000000000000000 : ℚ), (7371875000000001 / 25000000000000000 : ℚ)⟩
  r := (40605057519317 / 50000000000000 : ℚ)
  w := (4387347494831 / 2500000000000 : ℚ)
  center := (7371093750000001 / 25000000000000000 : ℚ)
  supportValue := (7819866954773483 / 10000000000000000 : ℚ)
  supportSlope := (-392781865787617 / 62500000000000 : ℚ)
  oldCenter := (7819866954773483 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_741
  oldLo := (9768750000000001 / 12500000000000000 : ℚ)
  oldHi := (9781250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1803, piece_1804]
}

def cell_7831 : Cell := { cellDefaults with
  domain := ⟨(7371875000000001 / 25000000000000000 : ℚ), (7373437500000001 / 25000000000000000 : ℚ)⟩
  r := (40605057519317 / 50000000000000 : ℚ)
  w := (4387347494831 / 2500000000000 : ℚ)
  center := (7372656250000001 / 25000000000000000 : ℚ)
  supportValue := (7815940545195833 / 10000000000000000 : ℚ)
  supportSlope := (-2511959981815437 / 400000000000000 : ℚ)
  oldCenter := (7815940545195833 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_741
  oldLo := (78100000000000003 / 100000000000000000 : ℚ)
  oldHi := (78200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1802, piece_1803]
}

def cell_7832 : Cell := { cellDefaults with
  domain := ⟨(7373437500000001 / 25000000000000000 : ℚ), (7375000000000001 / 25000000000000000 : ℚ)⟩
  r := (40605057519317 / 50000000000000 : ℚ)
  w := (4387347494831 / 2500000000000 : ℚ)
  center := (7374218750000001 / 25000000000000000 : ℚ)
  supportValue := (3906008502950417 / 5000000000000000 : ℚ)
  supportSlope := (-6275297520240031 / 1000000000000000 : ℚ)
  oldCenter := (3906008502950417 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_741
  oldLo := (78100000000000003 / 100000000000000000 : ℚ)
  oldHi := (9768750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1802]
}

def cell_7833 : Cell := { cellDefaults with
  domain := ⟨(7375000000000001 / 25000000000000000 : ℚ), (7376562500000001 / 25000000000000000 : ℚ)⟩
  r := (20286428188629 / 25000000000000 : ℚ)
  w := (4384723141629 / 2500000000000 : ℚ)
  center := (7375781250000001 / 25000000000000000 : ℚ)
  supportValue := (3911765802683511 / 5000000000000000 : ℚ)
  supportSlope := (-6284160131940553 / 1000000000000000 : ℚ)
  oldCenter := (3911765802683511 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_742
  oldLo := (78200000000000003 / 100000000000000000 : ℚ)
  oldHi := (78300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1804, piece_1805]
}

def cell_7834 : Cell := { cellDefaults with
  domain := ⟨(7376562500000001 / 25000000000000000 : ℚ), (7378125000000001 / 25000000000000000 : ℚ)⟩
  r := (20286428188629 / 25000000000000 : ℚ)
  w := (4384723141629 / 2500000000000 : ℚ)
  center := (7377343750000001 / 25000000000000000 : ℚ)
  supportValue := (7819605476437829 / 10000000000000000 : ℚ)
  supportSlope := (-6279561286145707 / 1000000000000000 : ℚ)
  oldCenter := (7819605476437829 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_742
  oldLo := (9768750000000001 / 12500000000000000 : ℚ)
  oldHi := (9781250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1803, piece_1804]
}

def cell_7835 : Cell := { cellDefaults with
  domain := ⟨(7378125000000001 / 25000000000000000 : ℚ), (7379687500000001 / 25000000000000000 : ℚ)⟩
  r := (20286428188629 / 25000000000000 : ℚ)
  w := (4384723141629 / 2500000000000 : ℚ)
  center := (7378906250000001 / 25000000000000000 : ℚ)
  supportValue := (7815682173965681 / 10000000000000000 : ℚ)
  supportSlope := (-6274964401502103 / 1000000000000000 : ℚ)
  oldCenter := (7815682173965681 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_742
  oldLo := (78100000000000003 / 100000000000000000 : ℚ)
  oldHi := (78200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1802, piece_1803]
}

def cell_7836 : Cell := { cellDefaults with
  domain := ⟨(7379687500000001 / 25000000000000000 : ℚ), (7381250000000001 / 25000000000000000 : ℚ)⟩
  r := (20286428188629 / 25000000000000 : ℚ)
  w := (4384723141629 / 2500000000000 : ℚ)
  center := (7380468750000001 / 25000000000000000 : ℚ)
  supportValue := (781176171526289 / 1000000000000000 : ℚ)
  supportSlope := (-6270369473213577 / 1000000000000000 : ℚ)
  oldCenter := (781176171526289 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_742
  oldLo := (9756250000000001 / 12500000000000000 : ℚ)
  oldHi := (9768750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1801, piece_1802]
}

def cell_7837 : Cell := { cellDefaults with
  domain := ⟨(7381250000000001 / 25000000000000000 : ℚ), (7382812500000001 / 25000000000000000 : ℚ)⟩
  r := (20286428188629 / 25000000000000 : ℚ)
  w := (4384723141629 / 2500000000000 : ℚ)
  center := (7382031250000001 / 25000000000000000 : ℚ)
  supportValue := (1951961031848673 / 2500000000000000 : ℚ)
  supportSlope := (-6265876319897501 / 1000000000000000 : ℚ)
  oldCenter := (1951961031848673 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_742
  oldLo := (9756250000000001 / 12500000000000000 : ℚ)
  oldHi := (78100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1801]
}

def cell_7838 : Cell := { cellDefaults with
  domain := ⟨(7382812500000001 / 25000000000000000 : ℚ), (7384375000000001 / 25000000000000000 : ℚ)⟩
  r := (20286428188629 / 25000000000000 : ℚ)
  w := (4384723141629 / 2500000000000 : ℚ)
  center := (7383593750000001 / 25000000000000000 : ℚ)
  supportValue := (7803929409135789 / 10000000000000000 : ℚ)
  supportSlope := (-6261309774338031 / 1000000000000000 : ℚ)
  oldCenter := (7803929409135789 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_742
  oldLo := (78000000000000003 / 100000000000000000 : ℚ)
  oldHi := (78100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1800, piece_1801]
}

def cell_7839 : Cell := { cellDefaults with
  domain := ⟨(7384375000000001 / 25000000000000000 : ℚ), (7385937500000001 / 25000000000000000 : ℚ)⟩
  r := (20286428188629 / 25000000000000 : ℚ)
  w := (4384723141629 / 2500000000000 : ℚ)
  center := (7385156250000001 / 25000000000000000 : ℚ)
  supportValue := (7800017558566059 / 10000000000000000 : ℚ)
  supportSlope := (-6256716964212927 / 1000000000000000 : ℚ)
  oldCenter := (7800017558566059 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_742
  oldLo := (9743750000000001 / 12500000000000000 : ℚ)
  oldHi := (9756250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1799, piece_1800]
}

def cell_7840 : Cell := { cellDefaults with
  domain := ⟨(7385937500000001 / 25000000000000000 : ℚ), (7387500000000001 / 25000000000000000 : ℚ)⟩
  r := (20286428188629 / 25000000000000 : ℚ)
  w := (4384723141629 / 2500000000000 : ℚ)
  center := (7386718750000001 / 25000000000000000 : ℚ)
  supportValue := (7796108504349087 / 10000000000000000 : ℚ)
  supportSlope := (-3126062660196993 / 500000000000000 : ℚ)
  oldCenter := (7796108504349087 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_742
  oldLo := (77900000000000003 / 100000000000000000 : ℚ)
  oldHi := (78000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1798, piece_1799]
}

def cell_7841 : Cell := { cellDefaults with
  domain := ⟨(7387500000000001 / 25000000000000000 : ℚ), (7389062500000001 / 25000000000000000 : ℚ)⟩
  r := (20270359297103 / 25000000000000 : ℚ)
  w := (8764207435519 / 5000000000000 : ℚ)
  center := (7388281250000001 / 25000000000000000 : ℚ)
  supportValue := (1561517592195179 / 2000000000000000 : ℚ)
  supportSlope := (-6260919425518097 / 1000000000000000 : ℚ)
  oldCenter := (1561517592195179 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_743
  oldLo := (9756250000000001 / 12500000000000000 : ℚ)
  oldHi := (78100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1801]
}

def cell_7842 : Cell := { cellDefaults with
  domain := ⟨(7389062500000001 / 25000000000000000 : ℚ), (7390625000000001 / 25000000000000000 : ℚ)⟩
  r := (20270359297103 / 25000000000000 : ℚ)
  w := (8764207435519 / 5000000000000 : ℚ)
  center := (7389843750000001 / 25000000000000000 : ℚ)
  supportValue := (7803676318510931 / 10000000000000000 : ℚ)
  supportSlope := (-3128197597973781 / 500000000000000 : ℚ)
  oldCenter := (7803676318510931 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_743
  oldLo := (78000000000000003 / 100000000000000000 : ℚ)
  oldHi := (78100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1800, piece_1801]
}

def cell_7843 : Cell := { cellDefaults with
  domain := ⟨(7390625000000001 / 25000000000000000 : ℚ), (7392187500000001 / 25000000000000000 : ℚ)⟩
  r := (20270359297103 / 25000000000000 : ℚ)
  w := (8764207435519 / 5000000000000 : ℚ)
  center := (7391406250000001 / 25000000000000000 : ℚ)
  supportValue := (7799767536587333 / 10000000000000000 : ℚ)
  supportSlope := (-3125907438127129 / 500000000000000 : ℚ)
  oldCenter := (7799767536587333 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_743
  oldLo := (9743750000000001 / 12500000000000000 : ℚ)
  oldHi := (9756250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1799, piece_1800]
}

def cell_7844 : Cell := { cellDefaults with
  domain := ⟨(7392187500000001 / 25000000000000000 : ℚ), (7393750000000001 / 25000000000000000 : ℚ)⟩
  r := (20270359297103 / 25000000000000 : ℚ)
  w := (8764207435519 / 5000000000000 : ℚ)
  center := (7392968750000001 / 25000000000000000 : ℚ)
  supportValue := (1559172311747289 / 2000000000000000 : ℚ)
  supportSlope := (-6247236970619241 / 1000000000000000 : ℚ)
  oldCenter := (1559172311747289 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_743
  oldLo := (77900000000000003 / 100000000000000000 : ℚ)
  oldHi := (78000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1798, piece_1799]
}

def cell_7845 : Cell := { cellDefaults with
  domain := ⟨(7393750000000001 / 25000000000000000 : ℚ), (7395312500000001 / 25000000000000000 : ℚ)⟩
  r := (20270359297103 / 25000000000000 : ℚ)
  w := (8764207435519 / 5000000000000 : ℚ)
  center := (7394531250000001 / 25000000000000000 : ℚ)
  supportValue := (38959792106793 / 50000000000000 : ℚ)
  supportSlope := (-7803331554741 / 1250000000000 : ℚ)
  oldCenter := (38959792106793 / 50000000000000 : ℚ)
  newCoefficients := coefficients_743
  oldLo := (77900000000000003 / 100000000000000000 : ℚ)
  oldHi := (9743750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1798]
}

def cell_7846 : Cell := { cellDefaults with
  domain := ⟨(7395312500000001 / 25000000000000000 : ℚ), (7396875000000001 / 25000000000000000 : ℚ)⟩
  r := (20270359297103 / 25000000000000 : ℚ)
  w := (8764207435519 / 5000000000000 : ℚ)
  center := (7396093750000001 / 25000000000000000 : ℚ)
  supportValue := (7788058140324857 / 10000000000000000 : ℚ)
  supportSlope := (-6238225477176229 / 1000000000000000 : ℚ)
  oldCenter := (7788058140324857 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_743
  oldLo := (9731250000000001 / 12500000000000000 : ℚ)
  oldHi := (9743750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1796, piece_1797, piece_1798]
}

def cell_7847 : Cell := { cellDefaults with
  domain := ⟨(7396875000000001 / 25000000000000000 : ℚ), (7398437500000001 / 25000000000000000 : ℚ)⟩
  r := (20270359297103 / 25000000000000 : ℚ)
  w := (8764207435519 / 5000000000000 : ℚ)
  center := (7397656250000001 / 25000000000000000 : ℚ)
  supportValue := (97302008868021 / 125000000000000 : ℚ)
  supportSlope := (-77920806623899 / 12500000000000 : ℚ)
  oldCenter := (97302008868021 / 125000000000000 : ℚ)
  newCoefficients := coefficients_743
  oldLo := (38900000000000001 / 50000000000000000 : ℚ)
  oldHi := (486731843575419 / 625000000000000 : ℚ)
  oldPieces := [piece_1795, piece_1796]
}

def cell_7848 : Cell := { cellDefaults with
  domain := ⟨(7398437500000001 / 25000000000000000 : ℚ), (7400000000000001 / 25000000000000000 : ℚ)⟩
  r := (20270359297103 / 25000000000000 : ℚ)
  w := (8764207435519 / 5000000000000 : ℚ)
  center := (7399218750000001 / 25000000000000000 : ℚ)
  supportValue := (7780266112885639 / 10000000000000000 : ℚ)
  supportSlope := (-1557275184134177 / 250000000000000 : ℚ)
  oldCenter := (7780266112885639 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_743
  oldLo := (9718750000000001 / 12500000000000000 : ℚ)
  oldHi := (9731250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1794, piece_1795]
}

def cell_7849 : Cell := { cellDefaults with
  domain := ⟨(7400000000000001 / 25000000000000000 : ℚ), (7401562500000001 / 25000000000000000 : ℚ)⟩
  r := (16203457630077 / 20000000000000 : ℚ)
  w := (8758978200819 / 5000000000000 : ℚ)
  center := (7400781250000001 / 25000000000000000 : ℚ)
  supportValue := (7791710755672393 / 10000000000000000 : ℚ)
  supportSlope := (-1247554095944281 / 200000000000000 : ℚ)
  oldCenter := (7791710755672393 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_744
  oldLo := (486731843575419 / 625000000000000 : ℚ)
  oldHi := (9743750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1797, piece_1798]
}

theorem check_7800 : cell_7800.check = true := by
  decide +kernel

theorem check_7801 : cell_7801.check = true := by
  decide +kernel

theorem check_7802 : cell_7802.check = true := by
  decide +kernel

theorem check_7803 : cell_7803.check = true := by
  decide +kernel

theorem check_7804 : cell_7804.check = true := by
  decide +kernel

theorem check_7805 : cell_7805.check = true := by
  decide +kernel

theorem check_7806 : cell_7806.check = true := by
  decide +kernel

theorem check_7807 : cell_7807.check = true := by
  decide +kernel

theorem check_7808 : cell_7808.check = true := by
  decide +kernel

theorem check_7809 : cell_7809.check = true := by
  decide +kernel

theorem check_7810 : cell_7810.check = true := by
  decide +kernel

theorem check_7811 : cell_7811.check = true := by
  decide +kernel

theorem check_7812 : cell_7812.check = true := by
  decide +kernel

theorem check_7813 : cell_7813.check = true := by
  decide +kernel

theorem check_7814 : cell_7814.check = true := by
  decide +kernel

theorem check_7815 : cell_7815.check = true := by
  decide +kernel

theorem check_7816 : cell_7816.check = true := by
  decide +kernel

theorem check_7817 : cell_7817.check = true := by
  decide +kernel

theorem check_7818 : cell_7818.check = true := by
  decide +kernel

theorem check_7819 : cell_7819.check = true := by
  decide +kernel

theorem check_7820 : cell_7820.check = true := by
  decide +kernel

theorem check_7821 : cell_7821.check = true := by
  decide +kernel

theorem check_7822 : cell_7822.check = true := by
  decide +kernel

theorem check_7823 : cell_7823.check = true := by
  decide +kernel

theorem check_7824 : cell_7824.check = true := by
  decide +kernel

theorem check_7825 : cell_7825.check = true := by
  decide +kernel

theorem check_7826 : cell_7826.check = true := by
  decide +kernel

theorem check_7827 : cell_7827.check = true := by
  decide +kernel

theorem check_7828 : cell_7828.check = true := by
  decide +kernel

theorem check_7829 : cell_7829.check = true := by
  decide +kernel

theorem check_7830 : cell_7830.check = true := by
  decide +kernel

theorem check_7831 : cell_7831.check = true := by
  decide +kernel

theorem check_7832 : cell_7832.check = true := by
  decide +kernel

theorem check_7833 : cell_7833.check = true := by
  decide +kernel

theorem check_7834 : cell_7834.check = true := by
  decide +kernel

theorem check_7835 : cell_7835.check = true := by
  decide +kernel

theorem check_7836 : cell_7836.check = true := by
  decide +kernel

theorem check_7837 : cell_7837.check = true := by
  decide +kernel

theorem check_7838 : cell_7838.check = true := by
  decide +kernel

theorem check_7839 : cell_7839.check = true := by
  decide +kernel

theorem check_7840 : cell_7840.check = true := by
  decide +kernel

theorem check_7841 : cell_7841.check = true := by
  decide +kernel

theorem check_7842 : cell_7842.check = true := by
  decide +kernel

theorem check_7843 : cell_7843.check = true := by
  decide +kernel

theorem check_7844 : cell_7844.check = true := by
  decide +kernel

theorem check_7845 : cell_7845.check = true := by
  decide +kernel

theorem check_7846 : cell_7846.check = true := by
  decide +kernel

theorem check_7847 : cell_7847.check = true := by
  decide +kernel

theorem check_7848 : cell_7848.check = true := by
  decide +kernel

theorem check_7849 : cell_7849.check = true := by
  decide +kernel

def cells : List Cell := [cell_7800, cell_7801, cell_7802, cell_7803, cell_7804, cell_7805, cell_7806, cell_7807, cell_7808, cell_7809, cell_7810, cell_7811, cell_7812, cell_7813, cell_7814, cell_7815, cell_7816, cell_7817, cell_7818, cell_7819, cell_7820, cell_7821, cell_7822, cell_7823, cell_7824, cell_7825, cell_7826, cell_7827, cell_7828, cell_7829, cell_7830, cell_7831, cell_7832, cell_7833, cell_7834, cell_7835, cell_7836, cell_7837, cell_7838, cell_7839, cell_7840, cell_7841, cell_7842, cell_7843, cell_7844, cell_7845, cell_7846, cell_7847, cell_7848, cell_7849]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7800, check_7801, check_7802, check_7803, check_7804, check_7805, check_7806, check_7807, check_7808, check_7809, check_7810, check_7811, check_7812, check_7813, check_7814, check_7815, check_7816, check_7817, check_7818, check_7819, check_7820, check_7821, check_7822, check_7823, check_7824, check_7825, check_7826, check_7827, check_7828, check_7829, check_7830, check_7831, check_7832, check_7833, check_7834, check_7835, check_7836, check_7837, check_7838, check_7839, check_7840, check_7841, check_7842, check_7843, check_7844, check_7845, check_7846, check_7847, check_7848, check_7849, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0156

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0156
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0156
open AnalyticBounds.ExpressionCertificate

theorem linked_7800 : Linked cell_7800 pieces := by
  refine ⟨piece_737,piece_737_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7800,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1815_mem
    · exact piece_1816_mem

theorem linked_7801 : Linked cell_7801 pieces := by
  refine ⟨piece_738,piece_738_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7801,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1818_mem

theorem linked_7802 : Linked cell_7802 pieces := by
  refine ⟨piece_738,piece_738_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7802,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1817_mem
    · exact piece_1818_mem

theorem linked_7803 : Linked cell_7803 pieces := by
  refine ⟨piece_738,piece_738_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7803,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1816_mem
    · exact piece_1817_mem

theorem linked_7804 : Linked cell_7804 pieces := by
  refine ⟨piece_738,piece_738_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7804,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1815_mem
    · exact piece_1816_mem

theorem linked_7805 : Linked cell_7805 pieces := by
  refine ⟨piece_738,piece_738_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7805,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1815_mem

theorem linked_7806 : Linked cell_7806 pieces := by
  refine ⟨piece_738,piece_738_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7806,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1814_mem
    · exact piece_1815_mem

theorem linked_7807 : Linked cell_7807 pieces := by
  refine ⟨piece_738,piece_738_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7807,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1813_mem
    · exact piece_1814_mem

theorem linked_7808 : Linked cell_7808 pieces := by
  refine ⟨piece_738,piece_738_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7808,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1812_mem
    · exact piece_1813_mem

theorem linked_7809 : Linked cell_7809 pieces := by
  refine ⟨piece_739,piece_739_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7809,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1814_mem
    · exact piece_1815_mem

theorem linked_7810 : Linked cell_7810 pieces := by
  refine ⟨piece_739,piece_739_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7810,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1814_mem

theorem linked_7811 : Linked cell_7811 pieces := by
  refine ⟨piece_739,piece_739_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7811,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1813_mem
    · exact piece_1814_mem

theorem linked_7812 : Linked cell_7812 pieces := by
  refine ⟨piece_739,piece_739_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7812,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1812_mem
    · exact piece_1813_mem

theorem linked_7813 : Linked cell_7813 pieces := by
  refine ⟨piece_739,piece_739_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7813,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1811_mem
    · exact piece_1812_mem

theorem linked_7814 : Linked cell_7814 pieces := by
  refine ⟨piece_739,piece_739_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7814,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1810_mem
    · exact piece_1811_mem

theorem linked_7815 : Linked cell_7815 pieces := by
  refine ⟨piece_739,piece_739_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7815,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1810_mem

theorem linked_7816 : Linked cell_7816 pieces := by
  refine ⟨piece_739,piece_739_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7816,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1808_mem
    · exact piece_1809_mem
    · exact piece_1810_mem

theorem linked_7817 : Linked cell_7817 pieces := by
  refine ⟨piece_740,piece_740_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7817,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1811_mem
    · exact piece_1812_mem

theorem linked_7818 : Linked cell_7818 pieces := by
  refine ⟨piece_740,piece_740_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7818,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1810_mem
    · exact piece_1811_mem

theorem linked_7819 : Linked cell_7819 pieces := by
  refine ⟨piece_740,piece_740_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7819,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1810_mem

theorem linked_7820 : Linked cell_7820 pieces := by
  refine ⟨piece_740,piece_740_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7820,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1808_mem
    · exact piece_1809_mem
    · exact piece_1810_mem

theorem linked_7821 : Linked cell_7821 pieces := by
  refine ⟨piece_740,piece_740_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7821,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1807_mem
    · exact piece_1808_mem

theorem linked_7822 : Linked cell_7822 pieces := by
  refine ⟨piece_740,piece_740_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7822,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1806_mem
    · exact piece_1807_mem

theorem linked_7823 : Linked cell_7823 pieces := by
  refine ⟨piece_740,piece_740_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7823,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1805_mem
    · exact piece_1806_mem

theorem linked_7824 : Linked cell_7824 pieces := by
  refine ⟨piece_740,piece_740_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7824,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1805_mem

theorem linked_7825 : Linked cell_7825 pieces := by
  refine ⟨piece_741,piece_741_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7825,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1807_mem
    · exact piece_1808_mem

theorem linked_7826 : Linked cell_7826 pieces := by
  refine ⟨piece_741,piece_741_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7826,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1806_mem
    · exact piece_1807_mem

theorem linked_7827 : Linked cell_7827 pieces := by
  refine ⟨piece_741,piece_741_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7827,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1805_mem
    · exact piece_1806_mem

theorem linked_7828 : Linked cell_7828 pieces := by
  refine ⟨piece_741,piece_741_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7828,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1805_mem

theorem linked_7829 : Linked cell_7829 pieces := by
  refine ⟨piece_741,piece_741_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7829,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1804_mem
    · exact piece_1805_mem

theorem linked_7830 : Linked cell_7830 pieces := by
  refine ⟨piece_741,piece_741_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7830,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1803_mem
    · exact piece_1804_mem

theorem linked_7831 : Linked cell_7831 pieces := by
  refine ⟨piece_741,piece_741_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7831,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1802_mem
    · exact piece_1803_mem

theorem linked_7832 : Linked cell_7832 pieces := by
  refine ⟨piece_741,piece_741_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7832,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1802_mem

theorem linked_7833 : Linked cell_7833 pieces := by
  refine ⟨piece_742,piece_742_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7833,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1804_mem
    · exact piece_1805_mem

theorem linked_7834 : Linked cell_7834 pieces := by
  refine ⟨piece_742,piece_742_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7834,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1803_mem
    · exact piece_1804_mem

theorem linked_7835 : Linked cell_7835 pieces := by
  refine ⟨piece_742,piece_742_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7835,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1802_mem
    · exact piece_1803_mem

theorem linked_7836 : Linked cell_7836 pieces := by
  refine ⟨piece_742,piece_742_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7836,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1801_mem
    · exact piece_1802_mem

theorem linked_7837 : Linked cell_7837 pieces := by
  refine ⟨piece_742,piece_742_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7837,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1801_mem

theorem linked_7838 : Linked cell_7838 pieces := by
  refine ⟨piece_742,piece_742_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7838,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1800_mem
    · exact piece_1801_mem

theorem linked_7839 : Linked cell_7839 pieces := by
  refine ⟨piece_742,piece_742_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7839,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1799_mem
    · exact piece_1800_mem

theorem linked_7840 : Linked cell_7840 pieces := by
  refine ⟨piece_742,piece_742_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7840,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1798_mem
    · exact piece_1799_mem

theorem linked_7841 : Linked cell_7841 pieces := by
  refine ⟨piece_743,piece_743_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7841,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1801_mem

theorem linked_7842 : Linked cell_7842 pieces := by
  refine ⟨piece_743,piece_743_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7842,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1800_mem
    · exact piece_1801_mem

theorem linked_7843 : Linked cell_7843 pieces := by
  refine ⟨piece_743,piece_743_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7843,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1799_mem
    · exact piece_1800_mem

theorem linked_7844 : Linked cell_7844 pieces := by
  refine ⟨piece_743,piece_743_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7844,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1798_mem
    · exact piece_1799_mem

theorem linked_7845 : Linked cell_7845 pieces := by
  refine ⟨piece_743,piece_743_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7845,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1798_mem

theorem linked_7846 : Linked cell_7846 pieces := by
  refine ⟨piece_743,piece_743_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7846,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1796_mem
    · exact piece_1797_mem
    · exact piece_1798_mem

theorem linked_7847 : Linked cell_7847 pieces := by
  refine ⟨piece_743,piece_743_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7847,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1795_mem
    · exact piece_1796_mem

theorem linked_7848 : Linked cell_7848 pieces := by
  refine ⟨piece_743,piece_743_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7848,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1794_mem
    · exact piece_1795_mem

theorem linked_7849 : Linked cell_7849 pieces := by
  refine ⟨piece_744,piece_744_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_7849,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1797_mem
    · exact piece_1798_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0156.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0156.cells,List.forall_mem_cons]
  exact ⟨linked_7800, linked_7801, linked_7802, linked_7803, linked_7804, linked_7805, linked_7806, linked_7807, linked_7808, linked_7809, linked_7810, linked_7811, linked_7812, linked_7813, linked_7814, linked_7815, linked_7816, linked_7817, linked_7818, linked_7819, linked_7820, linked_7821, linked_7822, linked_7823, linked_7824, linked_7825, linked_7826, linked_7827, linked_7828, linked_7829, linked_7830, linked_7831, linked_7832, linked_7833, linked_7834, linked_7835, linked_7836, linked_7837, linked_7838, linked_7839, linked_7840, linked_7841, linked_7842, linked_7843, linked_7844, linked_7845, linked_7846, linked_7847, linked_7848, linked_7849, by simp⟩

theorem covered : covers (7323437500000001 / 25000000000000000 : ℚ) (7401562500000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0156.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0156
