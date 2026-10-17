import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData
import Support.LuWang.SourceCertificateAssembly

/-! Independent left-certificate batch: original chunks 0156–0167. -/

section
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
  link_source cell_7800 with piece_737 using piece_737_mem, ⟨piece_1815_mem, piece_1816_mem⟩

theorem linked_7801 : Linked cell_7801 pieces := by
  link_source cell_7801 with piece_738 using piece_738_mem, piece_1818_mem

theorem linked_7802 : Linked cell_7802 pieces := by
  link_source cell_7802 with piece_738 using piece_738_mem, ⟨piece_1817_mem, piece_1818_mem⟩

theorem linked_7803 : Linked cell_7803 pieces := by
  link_source cell_7803 with piece_738 using piece_738_mem, ⟨piece_1816_mem, piece_1817_mem⟩

theorem linked_7804 : Linked cell_7804 pieces := by
  link_source cell_7804 with piece_738 using piece_738_mem, ⟨piece_1815_mem, piece_1816_mem⟩

theorem linked_7805 : Linked cell_7805 pieces := by
  link_source cell_7805 with piece_738 using piece_738_mem, piece_1815_mem

theorem linked_7806 : Linked cell_7806 pieces := by
  link_source cell_7806 with piece_738 using piece_738_mem, ⟨piece_1814_mem, piece_1815_mem⟩

theorem linked_7807 : Linked cell_7807 pieces := by
  link_source cell_7807 with piece_738 using piece_738_mem, ⟨piece_1813_mem, piece_1814_mem⟩

theorem linked_7808 : Linked cell_7808 pieces := by
  link_source cell_7808 with piece_738 using piece_738_mem, ⟨piece_1812_mem, piece_1813_mem⟩

theorem linked_7809 : Linked cell_7809 pieces := by
  link_source cell_7809 with piece_739 using piece_739_mem, ⟨piece_1814_mem, piece_1815_mem⟩

theorem linked_7810 : Linked cell_7810 pieces := by
  link_source cell_7810 with piece_739 using piece_739_mem, piece_1814_mem

theorem linked_7811 : Linked cell_7811 pieces := by
  link_source cell_7811 with piece_739 using piece_739_mem, ⟨piece_1813_mem, piece_1814_mem⟩

theorem linked_7812 : Linked cell_7812 pieces := by
  link_source cell_7812 with piece_739 using piece_739_mem, ⟨piece_1812_mem, piece_1813_mem⟩

theorem linked_7813 : Linked cell_7813 pieces := by
  link_source cell_7813 with piece_739 using piece_739_mem, ⟨piece_1811_mem, piece_1812_mem⟩

theorem linked_7814 : Linked cell_7814 pieces := by
  link_source cell_7814 with piece_739 using piece_739_mem, ⟨piece_1810_mem, piece_1811_mem⟩

theorem linked_7815 : Linked cell_7815 pieces := by
  link_source cell_7815 with piece_739 using piece_739_mem, piece_1810_mem

theorem linked_7816 : Linked cell_7816 pieces := by
  link_source cell_7816 with piece_739 using piece_739_mem, ⟨piece_1808_mem, ⟨piece_1809_mem, piece_1810_mem⟩⟩

theorem linked_7817 : Linked cell_7817 pieces := by
  link_source cell_7817 with piece_740 using piece_740_mem, ⟨piece_1811_mem, piece_1812_mem⟩

theorem linked_7818 : Linked cell_7818 pieces := by
  link_source cell_7818 with piece_740 using piece_740_mem, ⟨piece_1810_mem, piece_1811_mem⟩

theorem linked_7819 : Linked cell_7819 pieces := by
  link_source cell_7819 with piece_740 using piece_740_mem, piece_1810_mem

theorem linked_7820 : Linked cell_7820 pieces := by
  link_source cell_7820 with piece_740 using piece_740_mem, ⟨piece_1808_mem, ⟨piece_1809_mem, piece_1810_mem⟩⟩

theorem linked_7821 : Linked cell_7821 pieces := by
  link_source cell_7821 with piece_740 using piece_740_mem, ⟨piece_1807_mem, piece_1808_mem⟩

theorem linked_7822 : Linked cell_7822 pieces := by
  link_source cell_7822 with piece_740 using piece_740_mem, ⟨piece_1806_mem, piece_1807_mem⟩

theorem linked_7823 : Linked cell_7823 pieces := by
  link_source cell_7823 with piece_740 using piece_740_mem, ⟨piece_1805_mem, piece_1806_mem⟩

theorem linked_7824 : Linked cell_7824 pieces := by
  link_source cell_7824 with piece_740 using piece_740_mem, piece_1805_mem

theorem linked_7825 : Linked cell_7825 pieces := by
  link_source cell_7825 with piece_741 using piece_741_mem, ⟨piece_1807_mem, piece_1808_mem⟩

theorem linked_7826 : Linked cell_7826 pieces := by
  link_source cell_7826 with piece_741 using piece_741_mem, ⟨piece_1806_mem, piece_1807_mem⟩

theorem linked_7827 : Linked cell_7827 pieces := by
  link_source cell_7827 with piece_741 using piece_741_mem, ⟨piece_1805_mem, piece_1806_mem⟩

theorem linked_7828 : Linked cell_7828 pieces := by
  link_source cell_7828 with piece_741 using piece_741_mem, piece_1805_mem

theorem linked_7829 : Linked cell_7829 pieces := by
  link_source cell_7829 with piece_741 using piece_741_mem, ⟨piece_1804_mem, piece_1805_mem⟩

theorem linked_7830 : Linked cell_7830 pieces := by
  link_source cell_7830 with piece_741 using piece_741_mem, ⟨piece_1803_mem, piece_1804_mem⟩

theorem linked_7831 : Linked cell_7831 pieces := by
  link_source cell_7831 with piece_741 using piece_741_mem, ⟨piece_1802_mem, piece_1803_mem⟩

theorem linked_7832 : Linked cell_7832 pieces := by
  link_source cell_7832 with piece_741 using piece_741_mem, piece_1802_mem

theorem linked_7833 : Linked cell_7833 pieces := by
  link_source cell_7833 with piece_742 using piece_742_mem, ⟨piece_1804_mem, piece_1805_mem⟩

theorem linked_7834 : Linked cell_7834 pieces := by
  link_source cell_7834 with piece_742 using piece_742_mem, ⟨piece_1803_mem, piece_1804_mem⟩

theorem linked_7835 : Linked cell_7835 pieces := by
  link_source cell_7835 with piece_742 using piece_742_mem, ⟨piece_1802_mem, piece_1803_mem⟩

theorem linked_7836 : Linked cell_7836 pieces := by
  link_source cell_7836 with piece_742 using piece_742_mem, ⟨piece_1801_mem, piece_1802_mem⟩

theorem linked_7837 : Linked cell_7837 pieces := by
  link_source cell_7837 with piece_742 using piece_742_mem, piece_1801_mem

theorem linked_7838 : Linked cell_7838 pieces := by
  link_source cell_7838 with piece_742 using piece_742_mem, ⟨piece_1800_mem, piece_1801_mem⟩

theorem linked_7839 : Linked cell_7839 pieces := by
  link_source cell_7839 with piece_742 using piece_742_mem, ⟨piece_1799_mem, piece_1800_mem⟩

theorem linked_7840 : Linked cell_7840 pieces := by
  link_source cell_7840 with piece_742 using piece_742_mem, ⟨piece_1798_mem, piece_1799_mem⟩

theorem linked_7841 : Linked cell_7841 pieces := by
  link_source cell_7841 with piece_743 using piece_743_mem, piece_1801_mem

theorem linked_7842 : Linked cell_7842 pieces := by
  link_source cell_7842 with piece_743 using piece_743_mem, ⟨piece_1800_mem, piece_1801_mem⟩

theorem linked_7843 : Linked cell_7843 pieces := by
  link_source cell_7843 with piece_743 using piece_743_mem, ⟨piece_1799_mem, piece_1800_mem⟩

theorem linked_7844 : Linked cell_7844 pieces := by
  link_source cell_7844 with piece_743 using piece_743_mem, ⟨piece_1798_mem, piece_1799_mem⟩

theorem linked_7845 : Linked cell_7845 pieces := by
  link_source cell_7845 with piece_743 using piece_743_mem, piece_1798_mem

theorem linked_7846 : Linked cell_7846 pieces := by
  link_source cell_7846 with piece_743 using piece_743_mem, ⟨piece_1796_mem, ⟨piece_1797_mem, piece_1798_mem⟩⟩

theorem linked_7847 : Linked cell_7847 pieces := by
  link_source cell_7847 with piece_743 using piece_743_mem, ⟨piece_1795_mem, piece_1796_mem⟩

theorem linked_7848 : Linked cell_7848 pieces := by
  link_source cell_7848 with piece_743 using piece_743_mem, ⟨piece_1794_mem, piece_1795_mem⟩

theorem linked_7849 : Linked cell_7849 pieces := by
  link_source cell_7849 with piece_744 using piece_744_mem, ⟨piece_1797_mem, piece_1798_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0156.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0156.cells,List.forall_mem_cons]
  exact ⟨linked_7800, linked_7801, linked_7802, linked_7803, linked_7804, linked_7805, linked_7806, linked_7807, linked_7808, linked_7809, linked_7810, linked_7811, linked_7812, linked_7813, linked_7814, linked_7815, linked_7816, linked_7817, linked_7818, linked_7819, linked_7820, linked_7821, linked_7822, linked_7823, linked_7824, linked_7825, linked_7826, linked_7827, linked_7828, linked_7829, linked_7830, linked_7831, linked_7832, linked_7833, linked_7834, linked_7835, linked_7836, linked_7837, linked_7838, linked_7839, linked_7840, linked_7841, linked_7842, linked_7843, linked_7844, linked_7845, linked_7846, linked_7847, linked_7848, linked_7849, by simp⟩

theorem covered : covers (7323437500000001 / 25000000000000000 : ℚ) (7401562500000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0156.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0156
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0157
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(7401562500000001 / 25000000000000000 : ℚ), (7403125000000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (80953264719477 / 100000000000000 : ℚ)
  w := (8753758759831 / 5000000000000 : ℚ)
  center := (7402343750000001 / 25000000000000000 : ℚ)
  supportValue := (7787813529631727 / 10000000000000000 : ℚ)
  supportSlope := (-7791645789887447 / 1250000000000000 : ℚ)
  oldCenter := (7787813529631727 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_745
  oldLo := (38850000000000001 / 50000000000000000 : ℚ)
  oldHi := (9718750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1793, piece_1794]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7850 : Cell := { cellDefaults with
  r := (16203457630077 / 20000000000000 : ℚ)
  w := (8758978200819 / 5000000000000 : ℚ)
  newCoefficients := coefficients_744
  oldLo := (9731250000000001 / 12500000000000000 : ℚ)
  oldHi := (77900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1796, piece_1797]
}

def cell_7851 : Cell := { cellDefaults with
  domain := ⟨(7403125000000001 / 25000000000000000 : ℚ), (7404687500000001 / 25000000000000000 : ℚ)⟩
  r := (16203457630077 / 20000000000000 : ℚ)
  w := (8758978200819 / 5000000000000 : ℚ)
  center := (7403906250000001 / 25000000000000000 : ℚ)
  supportValue := (7783919145081647 / 10000000000000000 : ℚ)
  supportSlope := (-6228796629795141 / 1000000000000000 : ℚ)
  oldCenter := (7783919145081647 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_744
  oldLo := (38900000000000001 / 50000000000000000 : ℚ)
  oldHi := (486731843575419 / 625000000000000 : ℚ)
  oldPieces := [piece_1795, piece_1796]
}

def cell_7852 : Cell := { cellDefaults with
  domain := ⟨(7404687500000001 / 25000000000000000 : ℚ), (7406250000000001 / 25000000000000000 : ℚ)⟩
  r := (16203457630077 / 20000000000000 : ℚ)
  w := (8758978200819 / 5000000000000 : ℚ)
  center := (7405468750000001 / 25000000000000000 : ℚ)
  supportValue := (778002760406681 / 1000000000000000 : ℚ)
  supportSlope := (-1244849221453137 / 200000000000000 : ℚ)
  oldCenter := (778002760406681 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_744
  oldLo := (9718750000000001 / 12500000000000000 : ℚ)
  oldHi := (9731250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1794, piece_1795]
}

def cell_7853 : Cell := { cellDefaults with
  domain := ⟨(7406250000000001 / 25000000000000000 : ℚ), (7407812500000001 / 25000000000000000 : ℚ)⟩
  r := (16203457630077 / 20000000000000 : ℚ)
  w := (8758978200819 / 5000000000000 : ℚ)
  center := (7407031250000001 / 25000000000000000 : ℚ)
  supportValue := (3888069414021249 / 5000000000000000 : ℚ)
  supportSlope := (-6219697392864987 / 1000000000000000 : ℚ)
  oldCenter := (3888069414021249 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_744
  oldHi := (38900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1793, piece_1794]
}

def cell_7854 : Cell := { cellDefaults with
  domain := ⟨(7407812500000001 / 25000000000000000 : ℚ), (7409375000000001 / 25000000000000000 : ℚ)⟩
  r := (16203457630077 / 20000000000000 : ℚ)
  w := (8758978200819 / 5000000000000 : ℚ)
  center := (7408593750000001 / 25000000000000000 : ℚ)
  supportValue := (7772252893951971 / 10000000000000000 : ℚ)
  supportSlope := (-1243037165421157 / 200000000000000 : ℚ)
  oldCenter := (7772252893951971 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_744
  oldPieces := [piece_1793]
}

def cell_7855 : Cell := { cellDefaults with
  domain := ⟨(7409375000000001 / 25000000000000000 : ℚ), (7410937500000001 / 25000000000000000 : ℚ)⟩
  r := (16203457630077 / 20000000000000 : ℚ)
  w := (8758978200819 / 5000000000000 : ℚ)
  center := (7410156250000001 / 25000000000000000 : ℚ)
  supportValue := (7768369800566971 / 10000000000000000 : ℚ)
  supportSlope := (-3105368066561809 / 500000000000000 : ℚ)
  oldCenter := (7768369800566971 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_744
  oldLo := (9706250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1792, piece_1793]
}

def cell_7856 : Cell := { cellDefaults with
  domain := ⟨(7410937500000001 / 25000000000000000 : ℚ), (7412500000000001 / 25000000000000000 : ℚ)⟩
  r := (16203457630077 / 20000000000000 : ℚ)
  w := (8758978200819 / 5000000000000 : ℚ)
  center := (7411718750000001 / 25000000000000000 : ℚ)
  supportValue := (776448954665713 / 1000000000000000 : ℚ)
  supportSlope := (-6206194578052049 / 1000000000000000 : ℚ)
  oldCenter := (776448954665713 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_744
  oldLo := (38800000000000001 / 50000000000000000 : ℚ)
  oldHi := (38850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1791, piece_1792]
}

def cell_7857 : Cell := { cellDefaults with
  domain := ⟨(7412500000000001 / 25000000000000000 : ℚ), (7414062500000001 / 25000000000000000 : ℚ)⟩
  center := (7413281250000001 / 25000000000000000 : ℚ)
  supportValue := (1555179885878329 / 2000000000000000 : ℚ)
  supportSlope := (-776854393249593 / 125000000000000 : ℚ)
  oldCenter := (1555179885878329 / 2000000000000000 : ℚ)
  oldHi := (38900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1793, piece_1794]
}

def cell_7858 : Cell := { cellDefaults with
  domain := ⟨(7414062500000001 / 25000000000000000 : ℚ), (7415625000000001 / 25000000000000000 : ℚ)⟩
  center := (7414843750000001 / 25000000000000000 : ℚ)
  supportValue := (971502066242569 / 1250000000000000 : ℚ)
  supportSlope := (-12420619550496781 / 2000000000000000 : ℚ)
  oldCenter := (971502066242569 / 1250000000000000 : ℚ)
  oldPieces := [piece_1793]
}

def cell_7859 : Cell := { cellDefaults with
  domain := ⟨(7415625000000001 / 25000000000000000 : ℚ), (7417187500000001 / 25000000000000000 : ℚ)⟩
  center := (7416406250000001 / 25000000000000000 : ℚ)
  supportValue := (7768136462809313 / 10000000000000000 : ℚ)
  supportSlope := (-77573761914973 / 12500000000000 : ℚ)
  oldCenter := (7768136462809313 / 10000000000000000 : ℚ)
  oldLo := (9706250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1792, piece_1793]
}

def cell_7860 : Cell := { cellDefaults with
  domain := ⟨(7417187500000001 / 25000000000000000 : ℚ), (7418750000000001 / 25000000000000000 : ℚ)⟩
  center := (7417968750000001 / 25000000000000000 : ℚ)
  supportValue := (7764259226774887 / 10000000000000000 : ℚ)
  supportSlope := (-620137279853239 / 100000000000000 : ℚ)
  oldCenter := (7764259226774887 / 10000000000000000 : ℚ)
  oldLo := (38800000000000001 / 50000000000000000 : ℚ)
  oldHi := (38850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1791, piece_1792]
}

def cell_7861 : Cell := { cellDefaults with
  domain := ⟨(7418750000000001 / 25000000000000000 : ℚ), (7420312500000001 / 25000000000000000 : ℚ)⟩
  center := (7419531250000001 / 25000000000000000 : ℚ)
  supportValue := (310415391725969 / 400000000000000 : ℚ)
  supportSlope := (-484128640557413 / 78125000000000 : ℚ)
  oldCenter := (310415391725969 / 400000000000000 : ℚ)
  oldLo := (9693750000000001 / 12500000000000000 : ℚ)
  oldHi := (9706250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1790, piece_1791]
}

def cell_7862 : Cell := { cellDefaults with
  domain := ⟨(7420312500000001 / 25000000000000000 : ℚ), (7421875000000001 / 25000000000000000 : ℚ)⟩
  center := (7421093750000001 / 25000000000000000 : ℚ)
  supportValue := (7756513133064847 / 10000000000000000 : ℚ)
  supportSlope := (-6192322358980817 / 1000000000000000 : ℚ)
  oldCenter := (7756513133064847 / 10000000000000000 : ℚ)
  oldLo := (38750000000000001 / 50000000000000000 : ℚ)
  oldHi := (38800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1789, piece_1790]
}

def cell_7863 : Cell := { cellDefaults with
  domain := ⟨(7421875000000001 / 25000000000000000 : ℚ), (7423437500000001 / 25000000000000000 : ℚ)⟩
  center := (7422656250000001 / 25000000000000000 : ℚ)
  supportValue := (775264429963403 / 1000000000000000 : ℚ)
  supportSlope := (-12375764984291493 / 2000000000000000 : ℚ)
  oldCenter := (775264429963403 / 1000000000000000 : ℚ)
  oldLo := (38750000000000001 / 50000000000000000 : ℚ)
  oldHi := (9693750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1789]
}

def cell_7864 : Cell := { cellDefaults with
  domain := ⟨(7423437500000001 / 25000000000000000 : ℚ), (7425000000000001 / 25000000000000000 : ℚ)⟩
  center := (7424218750000001 / 25000000000000000 : ℚ)
  supportValue := (1549755658326887 / 2000000000000000 : ℚ)
  supportSlope := (-6183413553191741 / 1000000000000000 : ℚ)
  oldCenter := (1549755658326887 / 2000000000000000 : ℚ)
  oldLo := (9681250000000001 / 12500000000000000 : ℚ)
  oldHi := (9693750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1788, piece_1789]
}

def cell_7865 : Cell := { cellDefaults with
  domain := ⟨(7425000000000001 / 25000000000000000 : ℚ), (7426562500000001 / 25000000000000000 : ℚ)⟩
  r := (80889366706083 / 100000000000000 : ℚ)
  w := (17497098033299 / 10000000000000 : ℚ)
  center := (7425781250000001 / 25000000000000000 : ℚ)
  supportValue := (485009599945473 / 625000000000000 : ℚ)
  supportSlope := (-193500503783417 / 31250000000000 : ℚ)
  oldCenter := (485009599945473 / 625000000000000 : ℚ)
  newCoefficients := coefficients_746
  oldLo := (9693750000000001 / 12500000000000000 : ℚ)
  oldHi := (9706250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1790, piece_1791]
}

def cell_7866 : Cell := { cellDefaults with
  domain := ⟨(7426562500000001 / 25000000000000000 : ℚ), (7428125000000001 / 25000000000000000 : ℚ)⟩
  r := (80889366706083 / 100000000000000 : ℚ)
  w := (17497098033299 / 10000000000000 : ℚ)
  center := (7427343750000001 / 25000000000000000 : ℚ)
  supportValue := (969535619223071 / 1250000000000000 : ℚ)
  supportSlope := (-1237501086839643 / 200000000000000 : ℚ)
  oldCenter := (969535619223071 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_746
  oldLo := (38750000000000001 / 50000000000000000 : ℚ)
  oldHi := (38800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1789, piece_1790]
}

def cell_7867 : Cell := { cellDefaults with
  domain := ⟨(7428125000000001 / 25000000000000000 : ℚ), (7429687500000001 / 25000000000000000 : ℚ)⟩
  r := (80889366706083 / 100000000000000 : ℚ)
  w := (17497098033299 / 10000000000000 : ℚ)
  center := (7428906250000001 / 25000000000000000 : ℚ)
  supportValue := (7752419126627513 / 10000000000000000 : ℚ)
  supportSlope := (-1236610577147701 / 200000000000000 : ℚ)
  oldCenter := (7752419126627513 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_746
  oldLo := (38750000000000001 / 50000000000000000 : ℚ)
  oldHi := (9693750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1789]
}

def cell_7868 : Cell := { cellDefaults with
  domain := ⟨(7429687500000001 / 25000000000000000 : ℚ), (7431250000000001 / 25000000000000000 : ℚ)⟩
  r := (80889366706083 / 100000000000000 : ℚ)
  w := (17497098033299 / 10000000000000 : ℚ)
  center := (7430468750000001 / 25000000000000000 : ℚ)
  supportValue := (774855611644137 / 1000000000000000 : ℚ)
  supportSlope := (-6178623940414241 / 1000000000000000 : ℚ)
  oldCenter := (774855611644137 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_746
  oldLo := (9681250000000001 / 12500000000000000 : ℚ)
  oldHi := (9693750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1788, piece_1789]
}

def cell_7869 : Cell := { cellDefaults with
  domain := ⟨(7431250000000001 / 25000000000000000 : ℚ), (7432812500000001 / 25000000000000000 : ℚ)⟩
  r := (80889366706083 / 100000000000000 : ℚ)
  w := (17497098033299 / 10000000000000 : ℚ)
  center := (7432031250000001 / 25000000000000000 : ℚ)
  supportValue := (7744695922009999 / 10000000000000000 : ℚ)
  supportSlope := (-96470630217671 / 15625000000000 : ℚ)
  oldCenter := (7744695922009999 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_746
  oldLo := (38700000000000001 / 50000000000000000 : ℚ)
  oldHi := (38750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1787, piece_1788]
}

def cell_7870 : Cell := { cellDefaults with
  domain := ⟨(7432812500000001 / 25000000000000000 : ℚ), (7434375000000001 / 25000000000000000 : ℚ)⟩
  r := (80889366706083 / 100000000000000 : ℚ)
  w := (17497098033299 / 10000000000000 : ℚ)
  center := (7433593750000001 / 25000000000000000 : ℚ)
  supportValue := (1548167696187959 / 2000000000000000 : ℚ)
  supportSlope := (-3084809330205829 / 500000000000000 : ℚ)
  oldCenter := (1548167696187959 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_746
  oldLo := (9668750000000001 / 12500000000000000 : ℚ)
  oldHi := (9681250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1786, piece_1787]
}

def cell_7871 : Cell := { cellDefaults with
  domain := ⟨(7434375000000001 / 25000000000000000 : ℚ), (7435937500000001 / 25000000000000000 : ℚ)⟩
  r := (80889366706083 / 100000000000000 : ℚ)
  w := (17497098033299 / 10000000000000 : ℚ)
  center := (7435156250000001 / 25000000000000000 : ℚ)
  supportValue := (241780744672821 / 312500000000000 : ℚ)
  supportSlope := (-3082562457635163 / 500000000000000 : ℚ)
  oldCenter := (241780744672821 / 312500000000000 : ℚ)
  newCoefficients := coefficients_746
  oldLo := (9668750000000001 / 12500000000000000 : ℚ)
  oldHi := (38700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1786]
}

def cell_7872 : Cell := { cellDefaults with
  domain := ⟨(7435937500000001 / 25000000000000000 : ℚ), (7437500000000001 / 25000000000000000 : ℚ)⟩
  r := (80889366706083 / 100000000000000 : ℚ)
  w := (17497098033299 / 10000000000000 : ℚ)
  center := (7436718750000001 / 25000000000000000 : ℚ)
  supportValue := (3866565994698913 / 5000000000000000 : ℚ)
  supportSlope := (-6160757648416393 / 1000000000000000 : ℚ)
  oldCenter := (3866565994698913 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_746
  oldLo := (38650000000000001 / 50000000000000000 : ℚ)
  oldHi := (38700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1784, piece_1785, piece_1786]
}

def cell_7873 : Cell := { cellDefaults with
  domain := ⟨(7437500000000001 / 25000000000000000 : ℚ), (29754888268156427 / 100000000000000000 : ℚ)⟩
  r := (5051599562657 / 6250000000000 : ℚ)
  w := (17486697941753 / 10000000000000 : ℚ)
  center := (59504888268156431 / 200000000000000000 : ℚ)
  supportValue := (3872443777059167 / 5000000000000000 : ℚ)
  supportSlope := (-3084899710601297 / 500000000000000 : ℚ)
  oldCenter := (3872443777059167 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_747
  oldLo := (38700000000000001 / 50000000000000000 : ℚ)
  oldHi := (38750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1787, piece_1788]
}

def cell_7874 : Cell := { cellDefaults with
  domain := ⟨(29754888268156427 / 100000000000000000 : ℚ), (595195530726257 / 2000000000000000 : ℚ)⟩
  r := (5051599562657 / 6250000000000 : ℚ)
  w := (17486697941753 / 10000000000000 : ℚ)
  center := (59514664804469277 / 200000000000000000 : ℚ)
  supportValue := (154837448132441 / 200000000000000 : ℚ)
  supportSlope := (-308312435840417 / 50000000000000 : ℚ)
  oldCenter := (154837448132441 / 200000000000000 : ℚ)
  newCoefficients := coefficients_747
  oldLo := (38700000000000001 / 50000000000000000 : ℚ)
  oldHi := (9681250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1787]
}

def cell_7875 : Cell := { cellDefaults with
  domain := ⟨(595195530726257 / 2000000000000000 : ℚ), (29767388268156427 / 100000000000000000 : ℚ)⟩
  r := (5051599562657 / 6250000000000 : ℚ)
  w := (17486697941753 / 10000000000000 : ℚ)
  center := (59527164804469277 / 200000000000000000 : ℚ)
  supportValue := (3869012636839597 / 5000000000000000 : ℚ)
  supportSlope := (-1232371786229457 / 200000000000000 : ℚ)
  oldCenter := (3869012636839597 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_748
  oldLo := (9668750000000001 / 12500000000000000 : ℚ)
  oldHi := (9681250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1786, piece_1787]
}

def cell_7876 : Cell := { cellDefaults with
  domain := ⟨(29767388268156427 / 100000000000000000 : ℚ), (7443750000000001 / 25000000000000000 : ℚ)⟩
  r := (5051599562657 / 6250000000000 : ℚ)
  w := (17486697941753 / 10000000000000 : ℚ)
  center := (59542388268156431 / 200000000000000000 : ℚ)
  supportValue := (1933334275881513 / 2500000000000000 : ℚ)
  supportSlope := (-1539108607968199 / 250000000000000 : ℚ)
  oldCenter := (1933334275881513 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_748
  oldLo := (38650000000000001 / 50000000000000000 : ℚ)
  oldHi := (38700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1784, piece_1785, piece_1786]
}

def cell_7877 : Cell := { cellDefaults with
  domain := ⟨(7443750000000001 / 25000000000000000 : ℚ), (7445312500000001 / 25000000000000000 : ℚ)⟩
  r := (5051599562657 / 6250000000000 : ℚ)
  w := (17486697941753 / 10000000000000 : ℚ)
  center := (7444531250000001 / 25000000000000000 : ℚ)
  supportValue := (7729071887281843 / 10000000000000000 : ℚ)
  supportSlope := (-6151515563576737 / 1000000000000000 : ℚ)
  oldCenter := (7729071887281843 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_748
  oldLo := (9656250000000001 / 12500000000000000 : ℚ)
  oldHi := (7732402234636871 / 10000000000000000 : ℚ)
  oldPieces := [piece_1783, piece_1784]
}

def cell_7878 : Cell := { cellDefaults with
  domain := ⟨(7445312500000001 / 25000000000000000 : ℚ), (7446875000000001 / 25000000000000000 : ℚ)⟩
  r := (5051599562657 / 6250000000000 : ℚ)
  w := (17486697941753 / 10000000000000 : ℚ)
  center := (7446093750000001 / 25000000000000000 : ℚ)
  supportValue := (7725228612763757 / 10000000000000000 : ℚ)
  supportSlope := (-192094886014349 / 31250000000000 : ℚ)
  oldCenter := (7725228612763757 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_748
  oldLo := (38600000000000001 / 50000000000000000 : ℚ)
  oldHi := (38650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1782, piece_1783]
}

def cell_7879 : Cell := { cellDefaults with
  domain := ⟨(7446875000000001 / 25000000000000000 : ℚ), (7448437500000001 / 25000000000000000 : ℚ)⟩
  r := (5051599562657 / 6250000000000 : ℚ)
  w := (17486697941753 / 10000000000000 : ℚ)
  center := (7447656250000001 / 25000000000000000 : ℚ)
  supportValue := (7721388067506467 / 10000000000000000 : ℚ)
  supportSlope := (-6142559142304549 / 1000000000000000 : ℚ)
  oldCenter := (7721388067506467 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_748
  oldLo := (77150000000000007 / 100000000000000000 : ℚ)
  oldHi := (9656250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1781, piece_1782]
}

def cell_7880 : Cell := { cellDefaults with
  domain := ⟨(7448437500000001 / 25000000000000000 : ℚ), (7450000000000001 / 25000000000000000 : ℚ)⟩
  r := (5051599562657 / 6250000000000 : ℚ)
  w := (17486697941753 / 10000000000000 : ℚ)
  center := (7449218750000001 / 25000000000000000 : ℚ)
  supportValue := (482346894969457 / 625000000000000 : ℚ)
  supportSlope := (-122763169552087 / 20000000000000 : ℚ)
  oldCenter := (482346894969457 / 625000000000000 : ℚ)
  newCoefficients := coefficients_748
  oldLo := (77150000000000007 / 100000000000000000 : ℚ)
  oldHi := (38600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1781]
}

def cell_7881 : Cell := { cellDefaults with
  domain := ⟨(7450000000000001 / 25000000000000000 : ℚ), (7451562500000001 / 25000000000000000 : ℚ)⟩
  r := (1009524296223 / 1250000000000 : ℚ)
  w := (1092269861079 / 625000000000 : ℚ)
  center := (7450781250000001 / 25000000000000000 : ℚ)
  supportValue := (7728856582367217 / 10000000000000000 : ℚ)
  supportSlope := (-6146752266932509 / 1000000000000000 : ℚ)
  oldCenter := (7728856582367217 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_749
  oldLo := (9656250000000001 / 12500000000000000 : ℚ)
  oldHi := (7732402234636871 / 10000000000000000 : ℚ)
  oldPieces := [piece_1783, piece_1784]
}

def cell_7882 : Cell := { cellDefaults with
  domain := ⟨(7451562500000001 / 25000000000000000 : ℚ), (7453125000000001 / 25000000000000000 : ℚ)⟩
  r := (1009524296223 / 1250000000000 : ℚ)
  w := (1092269861079 / 625000000000 : ℚ)
  center := (7452343750000001 / 25000000000000000 : ℚ)
  supportValue := (7725016297255413 / 10000000000000000 : ℚ)
  supportSlope := (-6142284222239169 / 1000000000000000 : ℚ)
  oldCenter := (7725016297255413 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_749
  oldLo := (38600000000000001 / 50000000000000000 : ℚ)
  oldHi := (38650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1782, piece_1783]
}

def cell_7883 : Cell := { cellDefaults with
  domain := ⟨(7453125000000001 / 25000000000000000 : ℚ), (7454687500000001 / 25000000000000000 : ℚ)⟩
  r := (1009524296223 / 1250000000000 : ℚ)
  w := (1092269861079 / 625000000000 : ℚ)
  center := (7453906250000001 / 25000000000000000 : ℚ)
  supportValue := (7721178718519549 / 10000000000000000 : ℚ)
  supportSlope := (-6137818160638631 / 1000000000000000 : ℚ)
  oldCenter := (7721178718519549 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_749
  oldLo := (77150000000000007 / 100000000000000000 : ℚ)
  oldHi := (9656250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1781, piece_1782]
}

def cell_7884 : Cell := { cellDefaults with
  domain := ⟨(7454687500000001 / 25000000000000000 : ℚ), (7456250000000001 / 25000000000000000 : ℚ)⟩
  r := (1009524296223 / 1250000000000 : ℚ)
  w := (1092269861079 / 625000000000 : ℚ)
  center := (7455468750000001 / 25000000000000000 : ℚ)
  supportValue := (7717343930080043 / 10000000000000000 : ℚ)
  supportSlope := (-6133404170650891 / 1000000000000000 : ℚ)
  oldCenter := (7717343930080043 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_749
  oldLo := (77150000000000007 / 100000000000000000 : ℚ)
  oldHi := (38600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1781]
}

def cell_7885 : Cell := { cellDefaults with
  domain := ⟨(7456250000000001 / 25000000000000000 : ℚ), (7457812500000001 / 25000000000000000 : ℚ)⟩
  r := (1009524296223 / 1250000000000 : ℚ)
  w := (1092269861079 / 625000000000 : ℚ)
  center := (7457031250000001 / 25000000000000000 : ℚ)
  supportValue := (964188991339027 / 1250000000000000 : ℚ)
  supportSlope := (-6129032073012297 / 1000000000000000 : ℚ)
  oldCenter := (964188991339027 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_749
  oldLo := (38550000000000001 / 50000000000000000 : ℚ)
  oldHi := (38600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1780, piece_1781]
}

def cell_7886 : Cell := { cellDefaults with
  domain := ⟨(7457812500000001 / 25000000000000000 : ℚ), (7459375000000001 / 25000000000000000 : ℚ)⟩
  r := (1009524296223 / 1250000000000 : ℚ)
  w := (1092269861079 / 625000000000 : ℚ)
  center := (7458593750000001 / 25000000000000000 : ℚ)
  supportValue := (1541936543838779 / 2000000000000000 : ℚ)
  supportSlope := (-6124573109737241 / 1000000000000000 : ℚ)
  oldCenter := (1541936543838779 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_749
  oldLo := (77050000000000007 / 100000000000000000 : ℚ)
  oldHi := (77150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1779, piece_1780]
}

def cell_7887 : Cell := { cellDefaults with
  domain := ⟨(7459375000000001 / 25000000000000000 : ℚ), (7460937500000001 / 25000000000000000 : ℚ)⟩
  r := (1009524296223 / 1250000000000 : ℚ)
  w := (1092269861079 / 625000000000 : ℚ)
  center := (7460156250000001 / 25000000000000000 : ℚ)
  supportValue := (7705856230690119 / 10000000000000000 : ℚ)
  supportSlope := (-1530029026765689 / 250000000000000 : ℚ)
  oldCenter := (7705856230690119 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_749
  oldLo := (38500000000000001 / 50000000000000000 : ℚ)
  oldHi := (38550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1778, piece_1779]
}

def cell_7888 : Cell := { cellDefaults with
  domain := ⟨(7460937500000001 / 25000000000000000 : ℚ), (7462500000000001 / 25000000000000000 : ℚ)⟩
  r := (1009524296223 / 1250000000000 : ℚ)
  w := (1092269861079 / 625000000000 : ℚ)
  center := (7461718750000001 / 25000000000000000 : ℚ)
  supportValue := (7702032502536247 / 10000000000000000 : ℚ)
  supportSlope := (-3057837380907813 / 500000000000000 : ℚ)
  oldCenter := (7702032502536247 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_749
  oldLo := (38500000000000001 / 50000000000000000 : ℚ)
  oldHi := (77050000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1778]
}

def cell_7889 : Cell := { cellDefaults with
  domain := ⟨(7462500000000001 / 25000000000000000 : ℚ), (7464062500000001 / 25000000000000000 : ℚ)⟩
  r := (4034920876287 / 5000000000000 : ℚ)
  w := (17465957041269 / 10000000000000 : ℚ)
  center := (7463281250000001 / 25000000000000000 : ℚ)
  supportValue := (7713304621921001 / 10000000000000000 : ℚ)
  supportSlope := (-765537034555841 / 125000000000000 : ℚ)
  oldCenter := (7713304621921001 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_750
  oldLo := (38550000000000001 / 50000000000000000 : ℚ)
  oldHi := (38600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1780, piece_1781]
}

def cell_7890 : Cell := { cellDefaults with
  domain := ⟨(7464062500000001 / 25000000000000000 : ℚ), (7465625000000001 / 25000000000000000 : ℚ)⟩
  r := (4034920876287 / 5000000000000 : ℚ)
  w := (17465957041269 / 10000000000000 : ℚ)
  center := (7464843750000001 / 25000000000000000 : ℚ)
  supportValue := (1927369591499201 / 2500000000000000 : ℚ)
  supportSlope := (-6119851266799259 / 1000000000000000 : ℚ)
  oldCenter := (1927369591499201 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_750
  oldLo := (77050000000000007 / 100000000000000000 : ℚ)
  oldHi := (77150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1779, piece_1780]
}

def cell_7891 : Cell := { cellDefaults with
  domain := ⟨(7465625000000001 / 25000000000000000 : ℚ), (7467187500000001 / 25000000000000000 : ℚ)⟩
  r := (4034920876287 / 5000000000000 : ℚ)
  w := (17465957041269 / 10000000000000 : ℚ)
  center := (7466406250000001 / 25000000000000000 : ℚ)
  supportValue := (61645238715797 / 80000000000000 : ℚ)
  supportSlope := (-12230816411161527 / 2000000000000000 : ℚ)
  oldCenter := (61645238715797 / 80000000000000 : ℚ)
  newCoefficients := coefficients_750
  oldLo := (38500000000000001 / 50000000000000000 : ℚ)
  oldHi := (38550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1778, piece_1779]
}

def cell_7892 : Cell := { cellDefaults with
  domain := ⟨(7467187500000001 / 25000000000000000 : ℚ), (7468750000000001 / 25000000000000000 : ℚ)⟩
  r := (4034920876287 / 5000000000000 : ℚ)
  w := (17465957041269 / 10000000000000 : ℚ)
  center := (7467968750000001 / 25000000000000000 : ℚ)
  supportValue := (3850917024664001 / 5000000000000000 : ℚ)
  supportSlope := (-1222193417671491 / 200000000000000 : ℚ)
  oldCenter := (3850917024664001 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_750
  oldLo := (76950000000000007 / 100000000000000000 : ℚ)
  oldHi := (77050000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1777, piece_1778]
}

def cell_7893 : Cell := { cellDefaults with
  domain := ⟨(7468750000000001 / 25000000000000000 : ℚ), (7470312500000001 / 25000000000000000 : ℚ)⟩
  r := (4034920876287 / 5000000000000 : ℚ)
  w := (17465957041269 / 10000000000000 : ℚ)
  center := (7469531250000001 / 25000000000000000 : ℚ)
  supportValue := (3849008016935563 / 5000000000000000 : ℚ)
  supportSlope := (-122133212131601 / 20000000000000 : ℚ)
  oldCenter := (3849008016935563 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_750
  oldLo := (76950000000000007 / 100000000000000000 : ℚ)
  oldHi := (38500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1777]
}

def cell_7894 : Cell := { cellDefaults with
  domain := ⟨(7470312500000001 / 25000000000000000 : ℚ), (7471875000000001 / 25000000000000000 : ℚ)⟩
  r := (4034920876287 / 5000000000000 : ℚ)
  w := (17465957041269 / 10000000000000 : ℚ)
  center := (7471093750000001 / 25000000000000000 : ℚ)
  supportValue := (1923550197972571 / 2500000000000000 : ℚ)
  supportSlope := (-6102234578325039 / 1000000000000000 : ℚ)
  oldCenter := (1923550197972571 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_750
  oldLo := (38450000000000001 / 50000000000000000 : ℚ)
  oldHi := (38500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1776, piece_1777]
}

def cell_7895 : Cell := { cellDefaults with
  domain := ⟨(7471875000000001 / 25000000000000000 : ℚ), (7473437500000001 / 25000000000000000 : ℚ)⟩
  r := (4034920876287 / 5000000000000 : ℚ)
  w := (17465957041269 / 10000000000000 : ℚ)
  center := (7472656250000001 / 25000000000000000 : ℚ)
  supportValue := (1922597073365409 / 2500000000000000 : ℚ)
  supportSlope := (-6097800524230479 / 1000000000000000 : ℚ)
  oldCenter := (1922597073365409 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_750
  oldLo := (76850000000000007 / 100000000000000000 : ℚ)
  oldHi := (76950000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1775, piece_1776]
}

def cell_7896 : Cell := { cellDefaults with
  domain := ⟨(7473437500000001 / 25000000000000000 : ℚ), (7475000000000001 / 25000000000000000 : ℚ)⟩
  r := (4034920876287 / 5000000000000 : ℚ)
  w := (17465957041269 / 10000000000000 : ℚ)
  center := (7474218750000001 / 25000000000000000 : ℚ)
  supportValue := (1921644626154233 / 2500000000000000 : ℚ)
  supportSlope := (-3046684220217699 / 500000000000000 : ℚ)
  oldCenter := (1921644626154233 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_750
  oldLo := (38400000000000001 / 50000000000000000 : ℚ)
  oldHi := (38450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1774, piece_1775]
}

def cell_7897 : Cell := { cellDefaults with
  domain := ⟨(7475000000000001 / 25000000000000000 : ℚ), (7476562500000001 / 25000000000000000 : ℚ)⟩
  r := (80635014821677 / 100000000000000 : ℚ)
  w := (17455616251389 / 10000000000000 : ℚ)
  center := (7475781250000001 / 25000000000000000 : ℚ)
  supportValue := (7697816210027567 / 10000000000000000 : ℚ)
  supportSlope := (-6101932032695601 / 1000000000000000 : ℚ)
  oldCenter := (7697816210027567 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_751
  oldLo := (76950000000000007 / 100000000000000000 : ℚ)
  oldHi := (38500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1777]
}

def cell_7898 : Cell := { cellDefaults with
  domain := ⟨(7476562500000001 / 25000000000000000 : ℚ), (7478125000000001 / 25000000000000000 : ℚ)⟩
  r := (80635014821677 / 100000000000000 : ℚ)
  w := (17455616251389 / 10000000000000 : ℚ)
  center := (7477343750000001 / 25000000000000000 : ℚ)
  supportValue := (7694003904356553 / 10000000000000000 : ℚ)
  supportSlope := (-190548220152853 / 31250000000000 : ℚ)
  oldCenter := (7694003904356553 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_751
  oldLo := (38450000000000001 / 50000000000000000 : ℚ)
  oldHi := (38500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1776, piece_1777]
}

def cell_7899 : Cell := { cellDefaults with
  domain := ⟨(7478125000000001 / 25000000000000000 : ℚ), (7479687500000001 / 25000000000000000 : ℚ)⟩
  r := (80635014821677 / 100000000000000 : ℚ)
  w := (17455616251389 / 10000000000000 : ℚ)
  center := (7478906250000001 / 25000000000000000 : ℚ)
  supportValue := (3845097174422243 / 5000000000000000 : ℚ)
  supportSlope := (-1218624367753307 / 200000000000000 : ℚ)
  oldCenter := (3845097174422243 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_751
  oldLo := (76850000000000007 / 100000000000000000 : ℚ)
  oldHi := (76950000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1775, piece_1776]
}

theorem check_7850 : cell_7850.check = true := by
  decide +kernel

theorem check_7851 : cell_7851.check = true := by
  decide +kernel

theorem check_7852 : cell_7852.check = true := by
  decide +kernel

theorem check_7853 : cell_7853.check = true := by
  decide +kernel

theorem check_7854 : cell_7854.check = true := by
  decide +kernel

theorem check_7855 : cell_7855.check = true := by
  decide +kernel

theorem check_7856 : cell_7856.check = true := by
  decide +kernel

theorem check_7857 : cell_7857.check = true := by
  decide +kernel

theorem check_7858 : cell_7858.check = true := by
  decide +kernel

theorem check_7859 : cell_7859.check = true := by
  decide +kernel

theorem check_7860 : cell_7860.check = true := by
  decide +kernel

theorem check_7861 : cell_7861.check = true := by
  decide +kernel

theorem check_7862 : cell_7862.check = true := by
  decide +kernel

theorem check_7863 : cell_7863.check = true := by
  decide +kernel

theorem check_7864 : cell_7864.check = true := by
  decide +kernel

theorem check_7865 : cell_7865.check = true := by
  decide +kernel

theorem check_7866 : cell_7866.check = true := by
  decide +kernel

theorem check_7867 : cell_7867.check = true := by
  decide +kernel

theorem check_7868 : cell_7868.check = true := by
  decide +kernel

theorem check_7869 : cell_7869.check = true := by
  decide +kernel

theorem check_7870 : cell_7870.check = true := by
  decide +kernel

theorem check_7871 : cell_7871.check = true := by
  decide +kernel

theorem check_7872 : cell_7872.check = true := by
  decide +kernel

theorem check_7873 : cell_7873.check = true := by
  decide +kernel

theorem check_7874 : cell_7874.check = true := by
  decide +kernel

theorem check_7875 : cell_7875.check = true := by
  decide +kernel

theorem check_7876 : cell_7876.check = true := by
  decide +kernel

theorem check_7877 : cell_7877.check = true := by
  decide +kernel

theorem check_7878 : cell_7878.check = true := by
  decide +kernel

theorem check_7879 : cell_7879.check = true := by
  decide +kernel

theorem check_7880 : cell_7880.check = true := by
  decide +kernel

theorem check_7881 : cell_7881.check = true := by
  decide +kernel

theorem check_7882 : cell_7882.check = true := by
  decide +kernel

theorem check_7883 : cell_7883.check = true := by
  decide +kernel

theorem check_7884 : cell_7884.check = true := by
  decide +kernel

theorem check_7885 : cell_7885.check = true := by
  decide +kernel

theorem check_7886 : cell_7886.check = true := by
  decide +kernel

theorem check_7887 : cell_7887.check = true := by
  decide +kernel

theorem check_7888 : cell_7888.check = true := by
  decide +kernel

theorem check_7889 : cell_7889.check = true := by
  decide +kernel

theorem check_7890 : cell_7890.check = true := by
  decide +kernel

theorem check_7891 : cell_7891.check = true := by
  decide +kernel

theorem check_7892 : cell_7892.check = true := by
  decide +kernel

theorem check_7893 : cell_7893.check = true := by
  decide +kernel

theorem check_7894 : cell_7894.check = true := by
  decide +kernel

theorem check_7895 : cell_7895.check = true := by
  decide +kernel

theorem check_7896 : cell_7896.check = true := by
  decide +kernel

theorem check_7897 : cell_7897.check = true := by
  decide +kernel

theorem check_7898 : cell_7898.check = true := by
  decide +kernel

theorem check_7899 : cell_7899.check = true := by
  decide +kernel

def cells : List Cell := [cell_7850, cell_7851, cell_7852, cell_7853, cell_7854, cell_7855, cell_7856, cell_7857, cell_7858, cell_7859, cell_7860, cell_7861, cell_7862, cell_7863, cell_7864, cell_7865, cell_7866, cell_7867, cell_7868, cell_7869, cell_7870, cell_7871, cell_7872, cell_7873, cell_7874, cell_7875, cell_7876, cell_7877, cell_7878, cell_7879, cell_7880, cell_7881, cell_7882, cell_7883, cell_7884, cell_7885, cell_7886, cell_7887, cell_7888, cell_7889, cell_7890, cell_7891, cell_7892, cell_7893, cell_7894, cell_7895, cell_7896, cell_7897, cell_7898, cell_7899]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7850, check_7851, check_7852, check_7853, check_7854, check_7855, check_7856, check_7857, check_7858, check_7859, check_7860, check_7861, check_7862, check_7863, check_7864, check_7865, check_7866, check_7867, check_7868, check_7869, check_7870, check_7871, check_7872, check_7873, check_7874, check_7875, check_7876, check_7877, check_7878, check_7879, check_7880, check_7881, check_7882, check_7883, check_7884, check_7885, check_7886, check_7887, check_7888, check_7889, check_7890, check_7891, check_7892, check_7893, check_7894, check_7895, check_7896, check_7897, check_7898, check_7899, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0157

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0157
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0157
open AnalyticBounds.ExpressionCertificate

theorem linked_7850 : Linked cell_7850 pieces := by
  link_source cell_7850 with piece_744 using piece_744_mem, ⟨piece_1796_mem, piece_1797_mem⟩

theorem linked_7851 : Linked cell_7851 pieces := by
  link_source cell_7851 with piece_744 using piece_744_mem, ⟨piece_1795_mem, piece_1796_mem⟩

theorem linked_7852 : Linked cell_7852 pieces := by
  link_source cell_7852 with piece_744 using piece_744_mem, ⟨piece_1794_mem, piece_1795_mem⟩

theorem linked_7853 : Linked cell_7853 pieces := by
  link_source cell_7853 with piece_744 using piece_744_mem, ⟨piece_1793_mem, piece_1794_mem⟩

theorem linked_7854 : Linked cell_7854 pieces := by
  link_source cell_7854 with piece_744 using piece_744_mem, piece_1793_mem

theorem linked_7855 : Linked cell_7855 pieces := by
  link_source cell_7855 with piece_744 using piece_744_mem, ⟨piece_1792_mem, piece_1793_mem⟩

theorem linked_7856 : Linked cell_7856 pieces := by
  link_source cell_7856 with piece_744 using piece_744_mem, ⟨piece_1791_mem, piece_1792_mem⟩

theorem linked_7857 : Linked cell_7857 pieces := by
  link_source cell_7857 with piece_745 using piece_745_mem, ⟨piece_1793_mem, piece_1794_mem⟩

theorem linked_7858 : Linked cell_7858 pieces := by
  link_source cell_7858 with piece_745 using piece_745_mem, piece_1793_mem

theorem linked_7859 : Linked cell_7859 pieces := by
  link_source cell_7859 with piece_745 using piece_745_mem, ⟨piece_1792_mem, piece_1793_mem⟩

theorem linked_7860 : Linked cell_7860 pieces := by
  link_source cell_7860 with piece_745 using piece_745_mem, ⟨piece_1791_mem, piece_1792_mem⟩

theorem linked_7861 : Linked cell_7861 pieces := by
  link_source cell_7861 with piece_745 using piece_745_mem, ⟨piece_1790_mem, piece_1791_mem⟩

theorem linked_7862 : Linked cell_7862 pieces := by
  link_source cell_7862 with piece_745 using piece_745_mem, ⟨piece_1789_mem, piece_1790_mem⟩

theorem linked_7863 : Linked cell_7863 pieces := by
  link_source cell_7863 with piece_745 using piece_745_mem, piece_1789_mem

theorem linked_7864 : Linked cell_7864 pieces := by
  link_source cell_7864 with piece_745 using piece_745_mem, ⟨piece_1788_mem, piece_1789_mem⟩

theorem linked_7865 : Linked cell_7865 pieces := by
  link_source cell_7865 with piece_746 using piece_746_mem, ⟨piece_1790_mem, piece_1791_mem⟩

theorem linked_7866 : Linked cell_7866 pieces := by
  link_source cell_7866 with piece_746 using piece_746_mem, ⟨piece_1789_mem, piece_1790_mem⟩

theorem linked_7867 : Linked cell_7867 pieces := by
  link_source cell_7867 with piece_746 using piece_746_mem, piece_1789_mem

theorem linked_7868 : Linked cell_7868 pieces := by
  link_source cell_7868 with piece_746 using piece_746_mem, ⟨piece_1788_mem, piece_1789_mem⟩

theorem linked_7869 : Linked cell_7869 pieces := by
  link_source cell_7869 with piece_746 using piece_746_mem, ⟨piece_1787_mem, piece_1788_mem⟩

theorem linked_7870 : Linked cell_7870 pieces := by
  link_source cell_7870 with piece_746 using piece_746_mem, ⟨piece_1786_mem, piece_1787_mem⟩

theorem linked_7871 : Linked cell_7871 pieces := by
  link_source cell_7871 with piece_746 using piece_746_mem, piece_1786_mem

theorem linked_7872 : Linked cell_7872 pieces := by
  link_source cell_7872 with piece_746 using piece_746_mem, ⟨piece_1784_mem, ⟨piece_1785_mem, piece_1786_mem⟩⟩

theorem linked_7873 : Linked cell_7873 pieces := by
  link_source cell_7873 with piece_747 using piece_747_mem, ⟨piece_1787_mem, piece_1788_mem⟩

theorem linked_7874 : Linked cell_7874 pieces := by
  link_source cell_7874 with piece_747 using piece_747_mem, piece_1787_mem

theorem linked_7875 : Linked cell_7875 pieces := by
  link_source cell_7875 with piece_748 using piece_748_mem, ⟨piece_1786_mem, piece_1787_mem⟩

theorem linked_7876 : Linked cell_7876 pieces := by
  link_source cell_7876 with piece_748 using piece_748_mem, ⟨piece_1784_mem, ⟨piece_1785_mem, piece_1786_mem⟩⟩

theorem linked_7877 : Linked cell_7877 pieces := by
  link_source cell_7877 with piece_748 using piece_748_mem, ⟨piece_1783_mem, piece_1784_mem⟩

theorem linked_7878 : Linked cell_7878 pieces := by
  link_source cell_7878 with piece_748 using piece_748_mem, ⟨piece_1782_mem, piece_1783_mem⟩

theorem linked_7879 : Linked cell_7879 pieces := by
  link_source cell_7879 with piece_748 using piece_748_mem, ⟨piece_1781_mem, piece_1782_mem⟩

theorem linked_7880 : Linked cell_7880 pieces := by
  link_source cell_7880 with piece_748 using piece_748_mem, piece_1781_mem

theorem linked_7881 : Linked cell_7881 pieces := by
  link_source cell_7881 with piece_749 using piece_749_mem, ⟨piece_1783_mem, piece_1784_mem⟩

theorem linked_7882 : Linked cell_7882 pieces := by
  link_source cell_7882 with piece_749 using piece_749_mem, ⟨piece_1782_mem, piece_1783_mem⟩

theorem linked_7883 : Linked cell_7883 pieces := by
  link_source cell_7883 with piece_749 using piece_749_mem, ⟨piece_1781_mem, piece_1782_mem⟩

theorem linked_7884 : Linked cell_7884 pieces := by
  link_source cell_7884 with piece_749 using piece_749_mem, piece_1781_mem

theorem linked_7885 : Linked cell_7885 pieces := by
  link_source cell_7885 with piece_749 using piece_749_mem, ⟨piece_1780_mem, piece_1781_mem⟩

theorem linked_7886 : Linked cell_7886 pieces := by
  link_source cell_7886 with piece_749 using piece_749_mem, ⟨piece_1779_mem, piece_1780_mem⟩

theorem linked_7887 : Linked cell_7887 pieces := by
  link_source cell_7887 with piece_749 using piece_749_mem, ⟨piece_1778_mem, piece_1779_mem⟩

theorem linked_7888 : Linked cell_7888 pieces := by
  link_source cell_7888 with piece_749 using piece_749_mem, piece_1778_mem

theorem linked_7889 : Linked cell_7889 pieces := by
  link_source cell_7889 with piece_750 using piece_750_mem, ⟨piece_1780_mem, piece_1781_mem⟩

theorem linked_7890 : Linked cell_7890 pieces := by
  link_source cell_7890 with piece_750 using piece_750_mem, ⟨piece_1779_mem, piece_1780_mem⟩

theorem linked_7891 : Linked cell_7891 pieces := by
  link_source cell_7891 with piece_750 using piece_750_mem, ⟨piece_1778_mem, piece_1779_mem⟩

theorem linked_7892 : Linked cell_7892 pieces := by
  link_source cell_7892 with piece_750 using piece_750_mem, ⟨piece_1777_mem, piece_1778_mem⟩

theorem linked_7893 : Linked cell_7893 pieces := by
  link_source cell_7893 with piece_750 using piece_750_mem, piece_1777_mem

theorem linked_7894 : Linked cell_7894 pieces := by
  link_source cell_7894 with piece_750 using piece_750_mem, ⟨piece_1776_mem, piece_1777_mem⟩

theorem linked_7895 : Linked cell_7895 pieces := by
  link_source cell_7895 with piece_750 using piece_750_mem, ⟨piece_1775_mem, piece_1776_mem⟩

theorem linked_7896 : Linked cell_7896 pieces := by
  link_source cell_7896 with piece_750 using piece_750_mem, ⟨piece_1774_mem, piece_1775_mem⟩

theorem linked_7897 : Linked cell_7897 pieces := by
  link_source cell_7897 with piece_751 using piece_751_mem, piece_1777_mem

theorem linked_7898 : Linked cell_7898 pieces := by
  link_source cell_7898 with piece_751 using piece_751_mem, ⟨piece_1776_mem, piece_1777_mem⟩

theorem linked_7899 : Linked cell_7899 pieces := by
  link_source cell_7899 with piece_751 using piece_751_mem, ⟨piece_1775_mem, piece_1776_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0157.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0157.cells,List.forall_mem_cons]
  exact ⟨linked_7850, linked_7851, linked_7852, linked_7853, linked_7854, linked_7855, linked_7856, linked_7857, linked_7858, linked_7859, linked_7860, linked_7861, linked_7862, linked_7863, linked_7864, linked_7865, linked_7866, linked_7867, linked_7868, linked_7869, linked_7870, linked_7871, linked_7872, linked_7873, linked_7874, linked_7875, linked_7876, linked_7877, linked_7878, linked_7879, linked_7880, linked_7881, linked_7882, linked_7883, linked_7884, linked_7885, linked_7886, linked_7887, linked_7888, linked_7889, linked_7890, linked_7891, linked_7892, linked_7893, linked_7894, linked_7895, linked_7896, linked_7897, linked_7898, linked_7899, by simp⟩

theorem covered : covers (7401562500000001 / 25000000000000000 : ℚ) (7479687500000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0157.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0157
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0158
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(7479687500000001 / 25000000000000000 : ℚ), (7481250000000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (10071466718731 / 12500000000000 : ℚ)
  w := (272582738229 / 156250000000 : ℚ)
  center := (7480468750000001 / 25000000000000000 : ℚ)
  supportValue := (7686387480086593 / 10000000000000000 : ℚ)
  supportSlope := (-3044351295089953 / 500000000000000 : ℚ)
  oldCenter := (7686387480086593 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_752
  oldLo := (76650000000000007 / 100000000000000000 : ℚ)
  oldHi := (76850000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1774]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7900 : Cell := { cellDefaults with
  r := (80635014821677 / 100000000000000 : ℚ)
  w := (17455616251389 / 10000000000000 : ℚ)
  newCoefficients := coefficients_751
  oldLo := (38400000000000001 / 50000000000000000 : ℚ)
  oldHi := (38450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1774, piece_1775]
}

def cell_7901 : Cell := { cellDefaults with
  domain := ⟨(7481250000000001 / 25000000000000000 : ℚ), (7482812500000001 / 25000000000000000 : ℚ)⟩
  r := (80635014821677 / 100000000000000 : ℚ)
  w := (17455616251389 / 10000000000000 : ℚ)
  center := (7482031250000001 / 25000000000000000 : ℚ)
  supportValue := (1536516674474641 / 2000000000000000 : ℚ)
  supportSlope := (-3042183583252367 / 500000000000000 : ℚ)
  oldCenter := (1536516674474641 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_751
  oldLo := (38400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1774]
}

def cell_7902 : Cell := { cellDefaults with
  domain := ⟨(7482812500000001 / 25000000000000000 : ℚ), (7484375000000001 / 25000000000000000 : ℚ)⟩
  r := (80635014821677 / 100000000000000 : ℚ)
  w := (17455616251389 / 10000000000000 : ℚ)
  center := (7483593750000001 / 25000000000000000 : ℚ)
  supportValue := (3839391012227693 / 5000000000000000 : ℚ)
  supportSlope := (-3040008082951573 / 500000000000000 : ℚ)
  oldCenter := (3839391012227693 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_751
  oldLo := (76750000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1772, piece_1773, piece_1774]
}

def cell_7903 : Cell := { cellDefaults with
  domain := ⟨(7484375000000001 / 25000000000000000 : ℚ), (7485937500000001 / 25000000000000000 : ℚ)⟩
  r := (80635014821677 / 100000000000000 : ℚ)
  w := (17455616251389 / 10000000000000 : ℚ)
  center := (7485156250000001 / 25000000000000000 : ℚ)
  supportValue := (306999337429739 / 400000000000000 : ℚ)
  supportSlope := (-6075602406202307 / 1000000000000000 : ℚ)
  oldCenter := (306999337429739 / 400000000000000 : ℚ)
  newCoefficients := coefficients_751
  oldLo := (38350000000000001 / 50000000000000000 : ℚ)
  oldHi := (7677094972067039 / 10000000000000000 : ℚ)
  oldPieces := [piece_1771, piece_1772]
}

def cell_7904 : Cell := { cellDefaults with
  domain := ⟨(7485937500000001 / 25000000000000000 : ℚ), (7487500000000001 / 25000000000000000 : ℚ)⟩
  r := (80635014821677 / 100000000000000 : ℚ)
  w := (17455616251389 / 10000000000000 : ℚ)
  center := (7486718750000001 / 25000000000000000 : ℚ)
  supportValue := (958898439369139 / 1250000000000000 : ℚ)
  supportSlope := (-3035596114955297 / 500000000000000 : ℚ)
  oldCenter := (958898439369139 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_751
  oldHi := (76750000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1770, piece_1771]
}

def cell_7905 : Cell := { cellDefaults with
  domain := ⟨(7487500000000001 / 25000000000000000 : ℚ), (7489062500000001 / 25000000000000000 : ℚ)⟩
  center := (7488281250000001 / 25000000000000000 : ℚ)
  supportValue := (7682391219791217 / 10000000000000000 : ℚ)
  supportSlope := (-3039835748639419 / 500000000000000 : ℚ)
  oldCenter := (7682391219791217 / 10000000000000000 : ℚ)
  oldLo := (38400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1774]
}

def cell_7906 : Cell := { cellDefaults with
  domain := ⟨(7489062500000001 / 25000000000000000 : ℚ), (7490625000000001 / 25000000000000000 : ℚ)⟩
  center := (7489843750000001 / 25000000000000000 : ℚ)
  supportValue := (7678592788390397 / 10000000000000000 : ℚ)
  supportSlope := (-1215071152237357 / 200000000000000 : ℚ)
  oldCenter := (7678592788390397 / 10000000000000000 : ℚ)
  oldLo := (76750000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1772, piece_1773, piece_1774]
}

def cell_7907 : Cell := { cellDefaults with
  domain := ⟨(7490625000000001 / 25000000000000000 : ℚ), (7492187500000001 / 25000000000000000 : ℚ)⟩
  center := (7491406250000001 / 25000000000000000 : ℚ)
  supportValue := (14989838103093 / 19531250000000 : ℚ)
  supportSlope := (-1214190805671933 / 200000000000000 : ℚ)
  oldCenter := (14989838103093 / 19531250000000 : ℚ)
  oldLo := (38350000000000001 / 50000000000000000 : ℚ)
  oldHi := (7677094972067039 / 10000000000000000 : ℚ)
  oldPieces := [piece_1771, piece_1772]
}

def cell_7908 : Cell := { cellDefaults with
  domain := ⟨(7492187500000001 / 25000000000000000 : ℚ), (7493750000000001 / 25000000000000000 : ℚ)⟩
  center := (7492968750000001 / 25000000000000000 : ℚ)
  supportValue := (958875512946749 / 1250000000000000 : ℚ)
  supportSlope := (-3033277888931707 / 500000000000000 : ℚ)
  oldCenter := (958875512946749 / 1250000000000000 : ℚ)
  oldHi := (76750000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1770, piece_1771]
}

def cell_7909 : Cell := { cellDefaults with
  domain := ⟨(7493750000000001 / 25000000000000000 : ℚ), (7495312500000001 / 25000000000000000 : ℚ)⟩
  center := (7494531250000001 / 25000000000000000 : ℚ)
  supportValue := (239600432196551 / 312500000000000 : ℚ)
  supportSlope := (-242487902935693 / 40000000000000 : ℚ)
  oldCenter := (239600432196551 / 312500000000000 : ℚ)
  oldHi := (38350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1770]
}

def cell_7910 : Cell := { cellDefaults with
  domain := ⟨(7495312500000001 / 25000000000000000 : ℚ), (7496875000000001 / 25000000000000000 : ℚ)⟩
  center := (7496093750000001 / 25000000000000000 : ℚ)
  supportValue := (1915856575929433 / 2500000000000000 : ℚ)
  supportSlope := (-3028956939864713 / 500000000000000 : ℚ)
  oldCenter := (1915856575929433 / 2500000000000000 : ℚ)
  oldLo := (76600000000000001 / 100000000000000000 : ℚ)
  oldHi := (38350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1769, piece_1770]
}

def cell_7911 : Cell := { cellDefaults with
  domain := ⟨(7496875000000001 / 25000000000000000 : ℚ), (7498437500000001 / 25000000000000000 : ℚ)⟩
  center := (7497656250000001 / 25000000000000000 : ℚ)
  supportValue := (3829820761325621 / 5000000000000000 : ℚ)
  supportSlope := (-1513380665485009 / 250000000000000 : ℚ)
  oldCenter := (3829820761325621 / 5000000000000000 : ℚ)
  oldLo := (76550000000000007 / 100000000000000000 : ℚ)
  oldHi := (76650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1768, piece_1769]
}

def cell_7912 : Cell := { cellDefaults with
  domain := ⟨(7498437500000001 / 25000000000000000 : ℚ), (7500000000000001 / 25000000000000000 : ℚ)⟩
  center := (7499218750000001 / 25000000000000000 : ℚ)
  supportValue := (7655859420551193 / 10000000000000000 : ℚ)
  supportSlope := (-6049133377633353 / 1000000000000000 : ℚ)
  oldCenter := (7655859420551193 / 10000000000000000 : ℚ)
  oldLo := (76500000000000001 / 100000000000000000 : ℚ)
  oldHi := (76600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1767, piece_1768]
}

def cell_7913 : Cell := { cellDefaults with
  domain := ⟨(7500000000000001 / 25000000000000000 : ℚ), (7501562500000001 / 25000000000000000 : ℚ)⟩
  r := (80508575041999 / 100000000000000 : ℚ)
  w := (8717496815041 / 5000000000000 : ℚ)
  center := (7500781250000001 / 25000000000000000 : ℚ)
  supportValue := (7667029264856833 / 10000000000000000 : ℚ)
  supportSlope := (-3028766636640867 / 500000000000000 : ℚ)
  oldCenter := (7667029264856833 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_753
  oldHi := (38350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1770]
}

def cell_7914 : Cell := { cellDefaults with
  domain := ⟨(7501562500000001 / 25000000000000000 : ℚ), (7503125000000001 / 25000000000000000 : ℚ)⟩
  r := (80508575041999 / 100000000000000 : ℚ)
  w := (8717496815041 / 5000000000000 : ℚ)
  center := (7502343750000001 / 25000000000000000 : ℚ)
  supportValue := (7663244635645047 / 10000000000000000 : ℚ)
  supportSlope := (-3026642134472013 / 500000000000000 : ℚ)
  oldCenter := (7663244635645047 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_753
  oldLo := (76600000000000001 / 100000000000000000 : ℚ)
  oldHi := (38350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1769, piece_1770]
}

def cell_7915 : Cell := { cellDefaults with
  domain := ⟨(7503125000000001 / 25000000000000000 : ℚ), (7504687500000001 / 25000000000000000 : ℚ)⟩
  r := (80508575041999 / 100000000000000 : ℚ)
  w := (8717496815041 / 5000000000000 : ℚ)
  center := (7503906250000001 / 25000000000000000 : ℚ)
  supportValue := (7659462744406617 / 10000000000000000 : ℚ)
  supportSlope := (-6048905097930657 / 1000000000000000 : ℚ)
  oldCenter := (7659462744406617 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_753
  oldLo := (76550000000000007 / 100000000000000000 : ℚ)
  oldHi := (76650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1768, piece_1769]
}

def cell_7916 : Cell := { cellDefaults with
  domain := ⟨(7504687500000001 / 25000000000000000 : ℚ), (7506250000000001 / 25000000000000000 : ℚ)⟩
  r := (80508575041999 / 100000000000000 : ℚ)
  w := (8717496815041 / 5000000000000 : ℚ)
  center := (7505468750000001 / 25000000000000000 : ℚ)
  supportValue := (3827841769052911 / 5000000000000000 : ℚ)
  supportSlope := (-6044527849407899 / 1000000000000000 : ℚ)
  oldCenter := (3827841769052911 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_753
  oldLo := (76500000000000001 / 100000000000000000 : ℚ)
  oldHi := (76600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1767, piece_1768]
}

def cell_7917 : Cell := { cellDefaults with
  domain := ⟨(7506250000000001 / 25000000000000000 : ℚ), (7507812500000001 / 25000000000000000 : ℚ)⟩
  r := (80508575041999 / 100000000000000 : ℚ)
  w := (8717496815041 / 5000000000000 : ℚ)
  center := (7507031250000001 / 25000000000000000 : ℚ)
  supportValue := (1530381404987627 / 2000000000000000 : ℚ)
  supportSlope := (-6040154017302513 / 1000000000000000 : ℚ)
  oldCenter := (1530381404987627 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_753
  oldLo := (76500000000000001 / 100000000000000000 : ℚ)
  oldHi := (76550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1767]
}

def cell_7918 : Cell := { cellDefaults with
  domain := ⟨(7507812500000001 / 25000000000000000 : ℚ), (7509375000000001 / 25000000000000000 : ℚ)⟩
  r := (80508575041999 / 100000000000000 : ℚ)
  w := (8717496815041 / 5000000000000 : ℚ)
  center := (7508593750000001 / 25000000000000000 : ℚ)
  supportValue := (764813324536491 / 1000000000000000 : ℚ)
  supportSlope := (-6035930467316319 / 1000000000000000 : ℚ)
  oldCenter := (764813324536491 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_753
  oldLo := (76450000000000007 / 100000000000000000 : ℚ)
  oldHi := (76550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1766, piece_1767]
}

def cell_7919 : Cell := { cellDefaults with
  domain := ⟨(7509375000000001 / 25000000000000000 : ℚ), (7510937500000001 / 25000000000000000 : ℚ)⟩
  r := (80508575041999 / 100000000000000 : ℚ)
  w := (8717496815041 / 5000000000000 : ℚ)
  center := (7510156250000001 / 25000000000000000 : ℚ)
  supportValue := (3822181099092763 / 5000000000000000 : ℚ)
  supportSlope := (-6031560226610111 / 1000000000000000 : ℚ)
  oldCenter := (3822181099092763 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_753
  oldLo := (76400000000000001 / 100000000000000000 : ℚ)
  oldHi := (76500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1765, piece_1766]
}

def cell_7920 : Cell := { cellDefaults with
  domain := ⟨(7510937500000001 / 25000000000000000 : ℚ), (7512500000000001 / 25000000000000000 : ℚ)⟩
  r := (80508575041999 / 100000000000000 : ℚ)
  w := (8717496815041 / 5000000000000 : ℚ)
  center := (7511718750000001 / 25000000000000000 : ℚ)
  supportValue := (7640593836947841 / 10000000000000000 : ℚ)
  supportSlope := (-1506797979192953 / 250000000000000 : ℚ)
  oldCenter := (7640593836947841 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_753
  oldLo := (76350000000000007 / 100000000000000000 : ℚ)
  oldHi := (76450000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1764, piece_1765]
}

def cell_7921 : Cell := { cellDefaults with
  domain := ⟨(7512500000000001 / 25000000000000000 : ℚ), (240450000000000033 / 800000000000000000 : ℚ)⟩
  r := (16089107542023 / 20000000000000 : ℚ)
  w := (17424712780417 / 10000000000000 : ℚ)
  center := (96170000000000013 / 320000000000000000 : ℚ)
  supportValue := (7651729328115753 / 10000000000000000 : ℚ)
  supportSlope := (-6035540277814157 / 1000000000000000 : ℚ)
  oldCenter := (7651729328115753 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_754
  oldLo := (76450000000000007 / 100000000000000000 : ℚ)
  oldHi := (76550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1766, piece_1767]
}

def cell_7922 : Cell := { cellDefaults with
  domain := ⟨(240450000000000033 / 800000000000000000 : ℚ), (120250000000000017 / 400000000000000000 : ℚ)⟩
  r := (16089107542023 / 20000000000000 : ℚ)
  w := (17424712780417 / 10000000000000 : ℚ)
  center := (480950000000000067 / 1600000000000000000 : ℚ)
  supportValue := (1911989606827677 / 2500000000000000 : ℚ)
  supportSlope := (-1507827622938299 / 250000000000000 : ℚ)
  oldCenter := (1911989606827677 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_754
  oldLo := (76450000000000007 / 100000000000000000 : ℚ)
  oldHi := (76500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1766]
}

def cell_7923 : Cell := { cellDefaults with
  domain := ⟨(120250000000000017 / 400000000000000000 : ℚ), (48110000000000007 / 160000000000000000 : ℚ)⟩
  r := (16089107542023 / 20000000000000 : ℚ)
  w := (17424712780417 / 10000000000000 : ℚ)
  center := (481050000000000069 / 1600000000000000000 : ℚ)
  supportValue := (9555237814129 / 12500000000000 : ℚ)
  supportSlope := (-3013486282618711 / 500000000000000 : ℚ)
  oldCenter := (9555237814129 / 12500000000000 : ℚ)
  newCoefficients := coefficients_754
  oldLo := (76400000000000001 / 100000000000000000 : ℚ)
  oldHi := (76500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1765, piece_1766]
}

def cell_7924 : Cell := { cellDefaults with
  domain := ⟨(48110000000000007 / 160000000000000000 : ℚ), (60150000000000009 / 200000000000000000 : ℚ)⟩
  r := (16089107542023 / 20000000000000 : ℚ)
  w := (17424712780417 / 10000000000000 : ℚ)
  center := (481150000000000071 / 1600000000000000000 : ℚ)
  supportValue := (3820212383351767 / 5000000000000000 : ℚ)
  supportSlope := (-1505654098544943 / 250000000000000 : ℚ)
  oldCenter := (3820212383351767 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_754
  oldLo := (76350000000000007 / 100000000000000000 : ℚ)
  oldHi := (76450000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1764, piece_1765]
}

def cell_7925 : Cell := { cellDefaults with
  domain := ⟨(60150000000000009 / 200000000000000000 : ℚ), (240650000000000037 / 800000000000000000 : ℚ)⟩
  r := (16089107542023 / 20000000000000 : ℚ)
  w := (17424712780417 / 10000000000000 : ℚ)
  center := (481250000000000073 / 1600000000000000000 : ℚ)
  supportValue := (1909165485208339 / 2500000000000000 : ℚ)
  supportSlope := (-12036524109177309 / 2000000000000000 : ℚ)
  oldCenter := (1909165485208339 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_754
  oldLo := (76300000000000001 / 100000000000000000 : ℚ)
  oldHi := (76400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1763, piece_1764]
}

def cell_7926 : Cell := { cellDefaults with
  domain := ⟨(240650000000000037 / 800000000000000000 : ℚ), (120350000000000019 / 400000000000000000 : ℚ)⟩
  r := (16089107542023 / 20000000000000 : ℚ)
  w := (17424712780417 / 10000000000000 : ℚ)
  center := (19254000000000003 / 64000000000000000 : ℚ)
  supportValue := (7632896492412623 / 10000000000000000 : ℚ)
  supportSlope := (-6014035652260099 / 1000000000000000 : ℚ)
  oldCenter := (7632896492412623 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_754
  oldLo := (76300000000000001 / 100000000000000000 : ℚ)
  oldHi := (76350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1763]
}

def cell_7927 : Cell := { cellDefaults with
  domain := ⟨(120350000000000019 / 400000000000000000 : ℚ), (240750000000000039 / 800000000000000000 : ℚ)⟩
  r := (16089107542023 / 20000000000000 : ℚ)
  w := (17424712780417 / 10000000000000 : ℚ)
  center := (481450000000000077 / 1600000000000000000 : ℚ)
  supportValue := (953643056165529 / 1250000000000000 : ℚ)
  supportSlope := (-6009714362733001 / 1000000000000000 : ℚ)
  oldCenter := (953643056165529 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_754
  oldLo := (76250000000000007 / 100000000000000000 : ℚ)
  oldHi := (76350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1762, piece_1763]
}

def cell_7928 : Cell := { cellDefaults with
  domain := ⟨(240750000000000039 / 800000000000000000 : ℚ), (6020000000000001 / 20000000000000000 : ℚ)⟩
  r := (16089107542023 / 20000000000000 : ℚ)
  w := (17424712780417 / 10000000000000 : ℚ)
  center := (481550000000000079 / 1600000000000000000 : ℚ)
  supportValue := (3812694875726389 / 5000000000000000 : ℚ)
  supportSlope := (-6005367327428837 / 1000000000000000 : ℚ)
  oldCenter := (3812694875726389 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_754
  oldLo := (3810893854748603 / 5000000000000000 : ℚ)
  oldHi := (76300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1761, piece_1762]
}

def cell_7929 : Cell := { cellDefaults with
  domain := ⟨(6020000000000001 / 20000000000000000 : ℚ), (6021250000000001 / 20000000000000000 : ℚ)⟩
  r := (80382621498347 / 100000000000000 : ℚ)
  w := (3482890383523 / 2000000000000 : ℚ)
  center := (6020625000000001 / 20000000000000000 : ℚ)
  supportValue := (1527298274696077 / 2000000000000000 : ℚ)
  supportSlope := (-6013679035721253 / 1000000000000000 : ℚ)
  oldCenter := (1527298274696077 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_755
  oldLo := (76300000000000001 / 100000000000000000 : ℚ)
  oldHi := (76400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1763, piece_1764]
}

def cell_7930 : Cell := { cellDefaults with
  domain := ⟨(6021250000000001 / 20000000000000000 : ℚ), (6022500000000001 / 20000000000000000 : ℚ)⟩
  r := (80382621498347 / 100000000000000 : ℚ)
  w := (3482890383523 / 2000000000000 : ℚ)
  center := (6021875000000001 / 20000000000000000 : ℚ)
  supportValue := (3816364392823197 / 5000000000000000 : ℚ)
  supportSlope := (-12018888504563563 / 2000000000000000 : ℚ)
  oldCenter := (3816364392823197 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_755
  oldLo := (76300000000000001 / 100000000000000000 : ℚ)
  oldHi := (76350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1763]
}

def cell_7931 : Cell := { cellDefaults with
  domain := ⟨(6022500000000001 / 20000000000000000 : ℚ), (6023750000000001 / 20000000000000000 : ℚ)⟩
  r := (80382621498347 / 100000000000000 : ℚ)
  w := (3482890383523 / 2000000000000 : ℚ)
  center := (6023125000000001 / 20000000000000000 : ℚ)
  supportValue := (7628979595250723 / 10000000000000000 : ℚ)
  supportSlope := (-120103122944073 / 20000000000000 : ℚ)
  oldCenter := (7628979595250723 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_755
  oldLo := (76250000000000007 / 100000000000000000 : ℚ)
  oldHi := (76350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1762, piece_1763]
}

def cell_7932 : Cell := { cellDefaults with
  domain := ⟨(6023750000000001 / 20000000000000000 : ℚ), (6025000000000001 / 20000000000000000 : ℚ)⟩
  r := (80382621498347 / 100000000000000 : ℚ)
  w := (3482890383523 / 2000000000000 : ℚ)
  center := (6024375000000001 / 20000000000000000 : ℚ)
  supportValue := (953153469388079 / 1250000000000000 : ℚ)
  supportSlope := (-6000821350589547 / 1000000000000000 : ℚ)
  oldCenter := (953153469388079 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_755
  oldLo := (3810893854748603 / 5000000000000000 : ℚ)
  oldHi := (76300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1761, piece_1762]
}

def cell_7933 : Cell := { cellDefaults with
  domain := ⟨(6025000000000001 / 20000000000000000 : ℚ), (6026250000000001 / 20000000000000000 : ℚ)⟩
  r := (80382621498347 / 100000000000000 : ℚ)
  w := (3482890383523 / 2000000000000 : ℚ)
  center := (6025625000000001 / 20000000000000000 : ℚ)
  supportValue := (7621478543807371 / 10000000000000000 : ℚ)
  supportSlope := (-599648730501201 / 100000000000000 : ℚ)
  oldCenter := (7621478543807371 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_755
  oldLo := (76150000000000007 / 100000000000000000 : ℚ)
  oldHi := (76250000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1759, piece_1760, piece_1761]
}

def cell_7934 : Cell := { cellDefaults with
  domain := ⟨(6026250000000001 / 20000000000000000 : ℚ), (6027500000000001 / 20000000000000000 : ℚ)⟩
  r := (80382621498347 / 100000000000000 : ℚ)
  w := (3482890383523 / 2000000000000 : ℚ)
  center := (6026875000000001 / 20000000000000000 : ℚ)
  supportValue := (7617726708309909 / 10000000000000000 : ℚ)
  supportSlope := (-1498065429586859 / 250000000000000 : ℚ)
  oldCenter := (7617726708309909 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_755
  oldLo := (76150000000000007 / 100000000000000000 : ℚ)
  oldHi := (76200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1759]
}

def cell_7935 : Cell := { cellDefaults with
  domain := ⟨(6027500000000001 / 20000000000000000 : ℚ), (6028750000000001 / 20000000000000000 : ℚ)⟩
  r := (80382621498347 / 100000000000000 : ℚ)
  w := (3482890383523 / 2000000000000 : ℚ)
  center := (6028125000000001 / 20000000000000000 : ℚ)
  supportValue := (1903497060899569 / 2500000000000000 : ℚ)
  supportSlope := (-5987983826575061 / 1000000000000000 : ℚ)
  oldCenter := (1903497060899569 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_755
  oldLo := (76100000000000001 / 100000000000000000 : ℚ)
  oldHi := (76200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1758, piece_1759]
}

def cell_7936 : Cell := { cellDefaults with
  domain := ⟨(6028750000000001 / 20000000000000000 : ℚ), (6030000000000001 / 20000000000000000 : ℚ)⟩
  r := (80382621498347 / 100000000000000 : ℚ)
  w := (3482890383523 / 2000000000000 : ℚ)
  center := (6029375000000001 / 20000000000000000 : ℚ)
  supportValue := (761024713255967 / 1000000000000000 : ℚ)
  supportSlope := (-2991828875394731 / 500000000000000 : ℚ)
  oldCenter := (761024713255967 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_755
  oldLo := (38025000000000003 / 50000000000000000 : ℚ)
  oldHi := (76150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1757, piece_1758]
}

def cell_7937 : Cell := { cellDefaults with
  domain := ⟨(6030000000000001 / 20000000000000000 : ℚ), (6031250000000001 / 20000000000000000 : ℚ)⟩
  r := (20079956378087 / 25000000000000 : ℚ)
  w := (17404210436769 / 10000000000000 : ℚ)
  center := (6030625000000001 / 20000000000000000 : ℚ)
  supportValue := (7621315375287869 / 10000000000000000 : ℚ)
  supportSlope := (-1198386609581803 / 200000000000000 : ℚ)
  oldCenter := (7621315375287869 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_756
  oldLo := (76150000000000007 / 100000000000000000 : ℚ)
  oldHi := (76250000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1759, piece_1760, piece_1761]
}

def cell_7938 : Cell := { cellDefaults with
  domain := ⟨(6031250000000001 / 20000000000000000 : ℚ), (6032500000000001 / 20000000000000000 : ℚ)⟩
  r := (20079956378087 / 25000000000000 : ℚ)
  w := (17404210436769 / 10000000000000 : ℚ)
  center := (6031875000000001 / 20000000000000000 : ℚ)
  supportValue := (1523513276462539 / 2000000000000000 : ℚ)
  supportSlope := (-2993850039169743 / 500000000000000 : ℚ)
  oldCenter := (1523513276462539 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_756
  oldLo := (76150000000000007 / 100000000000000000 : ℚ)
  oldHi := (76200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1759]
}

def cell_7939 : Cell := { cellDefaults with
  domain := ⟨(6032500000000001 / 20000000000000000 : ℚ), (6033750000000001 / 20000000000000000 : ℚ)⟩
  r := (20079956378087 / 25000000000000 : ℚ)
  w := (17404210436769 / 10000000000000 : ℚ)
  center := (6033125000000001 / 20000000000000000 : ℚ)
  supportValue := (190345768804279 / 250000000000000 : ℚ)
  supportSlope := (-5983454656547593 / 1000000000000000 : ℚ)
  oldCenter := (190345768804279 / 250000000000000 : ℚ)
  newCoefficients := coefficients_756
  oldLo := (76100000000000001 / 100000000000000000 : ℚ)
  oldHi := (76200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1758, piece_1759]
}

def cell_7940 : Cell := { cellDefaults with
  domain := ⟨(6033750000000001 / 20000000000000000 : ℚ), (6035000000000001 / 20000000000000000 : ℚ)⟩
  r := (20079956378087 / 25000000000000 : ℚ)
  w := (17404210436769 / 10000000000000 : ℚ)
  center := (6034375000000001 / 20000000000000000 : ℚ)
  supportValue := (3805046240087227 / 5000000000000000 : ℚ)
  supportSlope := (-1195828185826997 / 200000000000000 : ℚ)
  oldCenter := (3805046240087227 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_756
  oldLo := (38025000000000003 / 50000000000000000 : ℚ)
  oldHi := (76150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1757, piece_1758]
}

def cell_7941 : Cell := { cellDefaults with
  domain := ⟨(6035000000000001 / 20000000000000000 : ℚ), (6036250000000001 / 20000000000000000 : ℚ)⟩
  r := (20079956378087 / 25000000000000 : ℚ)
  w := (17404210436769 / 10000000000000 : ℚ)
  center := (6035625000000001 / 20000000000000000 : ℚ)
  supportValue := (1521271362328047 / 2000000000000000 : ℚ)
  supportSlope := (-597482908662883 / 100000000000000 : ℚ)
  oldCenter := (1521271362328047 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_756
  oldLo := (76000000000000001 / 100000000000000000 : ℚ)
  oldHi := (76100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1756, piece_1757]
}

def cell_7942 : Cell := { cellDefaults with
  domain := ⟨(6036250000000001 / 20000000000000000 : ℚ), (6037500000000001 / 20000000000000000 : ℚ)⟩
  r := (20079956378087 / 25000000000000 : ℚ)
  w := (17404210436769 / 10000000000000 : ℚ)
  center := (6036875000000001 / 20000000000000000 : ℚ)
  supportValue := (7602618515192507 / 10000000000000000 : ℚ)
  supportSlope := (-5970613384494783 / 1000000000000000 : ℚ)
  oldCenter := (7602618515192507 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_756
  oldLo := (76000000000000001 / 100000000000000000 : ℚ)
  oldHi := (38025000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1756]
}

def cell_7943 : Cell := { cellDefaults with
  domain := ⟨(6037500000000001 / 20000000000000000 : ℚ), (6038750000000001 / 20000000000000000 : ℚ)⟩
  r := (20079956378087 / 25000000000000 : ℚ)
  w := (17404210436769 / 10000000000000 : ℚ)
  center := (6038125000000001 / 20000000000000000 : ℚ)
  supportValue := (7598893555121067 / 10000000000000000 : ℚ)
  supportSlope := (-119327429663727 / 20000000000000 : ℚ)
  oldCenter := (7598893555121067 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_756
  oldLo := (37975000000000003 / 50000000000000000 : ℚ)
  oldHi := (38025000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1755, piece_1756]
}

def cell_7944 : Cell := { cellDefaults with
  domain := ⟨(6038750000000001 / 20000000000000000 : ℚ), (6040000000000001 / 20000000000000000 : ℚ)⟩
  r := (20079956378087 / 25000000000000 : ℚ)
  w := (17404210436769 / 10000000000000 : ℚ)
  center := (6039375000000001 / 20000000000000000 : ℚ)
  supportValue := (1898791488067403 / 2500000000000000 : ℚ)
  supportSlope := (-298103330109889 / 50000000000000 : ℚ)
  oldCenter := (1898791488067403 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_756
  oldLo := (75900000000000001 / 100000000000000000 : ℚ)
  oldHi := (76000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1754, piece_1755]
}

def cell_7945 : Cell := { cellDefaults with
  domain := ⟨(6040000000000001 / 20000000000000000 : ℚ), (6041250000000001 / 20000000000000000 : ℚ)⟩
  r := (80257148399247 / 100000000000000 : ℚ)
  w := (1087124360923 / 625000000000 : ℚ)
  center := (6040625000000001 / 20000000000000000 : ℚ)
  supportValue := (7606200353945943 / 10000000000000000 : ℚ)
  supportSlope := (-746287839464177 / 125000000000000 : ℚ)
  oldCenter := (7606200353945943 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_757
  oldLo := (76000000000000001 / 100000000000000000 : ℚ)
  oldHi := (76100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1756, piece_1757]
}

def cell_7946 : Cell := { cellDefaults with
  domain := ⟨(6041250000000001 / 20000000000000000 : ℚ), (6042500000000001 / 20000000000000000 : ℚ)⟩
  r := (80257148399247 / 100000000000000 : ℚ)
  w := (1087124360923 / 625000000000 : ℚ)
  center := (6041875000000001 / 20000000000000000 : ℚ)
  supportValue := (3801232441301893 / 5000000000000000 : ℚ)
  supportSlope := (-5966080369585569 / 1000000000000000 : ℚ)
  oldCenter := (3801232441301893 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_757
  oldLo := (76000000000000001 / 100000000000000000 : ℚ)
  oldHi := (38025000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1756]
}

def cell_7947 : Cell := { cellDefaults with
  domain := ⟨(6042500000000001 / 20000000000000000 : ℚ), (6043750000000001 / 20000000000000000 : ℚ)⟩
  r := (80257148399247 / 100000000000000 : ℚ)
  w := (1087124360923 / 625000000000 : ℚ)
  center := (6043125000000001 / 20000000000000000 : ℚ)
  supportValue := (7598742739626203 / 10000000000000000 : ℚ)
  supportSlope := (-5961870336545161 / 1000000000000000 : ℚ)
  oldCenter := (7598742739626203 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_757
  oldLo := (37975000000000003 / 50000000000000000 : ℚ)
  oldHi := (38025000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1755, piece_1756]
}

def cell_7948 : Cell := { cellDefaults with
  domain := ⟨(6043750000000001 / 20000000000000000 : ℚ), (6045000000000001 / 20000000000000000 : ℚ)⟩
  r := (80257148399247 / 100000000000000 : ℚ)
  w := (1087124360923 / 625000000000 : ℚ)
  center := (6044375000000001 / 20000000000000000 : ℚ)
  supportValue := (3797508978913129 / 5000000000000000 : ℚ)
  supportSlope := (-148939447564711 / 25000000000000 : ℚ)
  oldCenter := (3797508978913129 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_757
  oldLo := (75900000000000001 / 100000000000000000 : ℚ)
  oldHi := (76000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1754, piece_1755]
}

def cell_7949 : Cell := { cellDefaults with
  domain := ⟨(6045000000000001 / 20000000000000000 : ℚ), (6046250000000001 / 20000000000000000 : ℚ)⟩
  r := (80257148399247 / 100000000000000 : ℚ)
  w := (1087124360923 / 625000000000 : ℚ)
  center := (6045625000000001 / 20000000000000000 : ℚ)
  supportValue := (7591295758719729 / 10000000000000000 : ℚ)
  supportSlope := (-5953287314351741 / 1000000000000000 : ℚ)
  oldCenter := (7591295758719729 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_757
  oldLo := (37925000000000003 / 50000000000000000 : ℚ)
  oldHi := (37975000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1753, piece_1754]
}

theorem check_7900 : cell_7900.check = true := by
  decide +kernel

theorem check_7901 : cell_7901.check = true := by
  decide +kernel

theorem check_7902 : cell_7902.check = true := by
  decide +kernel

theorem check_7903 : cell_7903.check = true := by
  decide +kernel

theorem check_7904 : cell_7904.check = true := by
  decide +kernel

theorem check_7905 : cell_7905.check = true := by
  decide +kernel

theorem check_7906 : cell_7906.check = true := by
  decide +kernel

theorem check_7907 : cell_7907.check = true := by
  decide +kernel

theorem check_7908 : cell_7908.check = true := by
  decide +kernel

theorem check_7909 : cell_7909.check = true := by
  decide +kernel

theorem check_7910 : cell_7910.check = true := by
  decide +kernel

theorem check_7911 : cell_7911.check = true := by
  decide +kernel

theorem check_7912 : cell_7912.check = true := by
  decide +kernel

theorem check_7913 : cell_7913.check = true := by
  decide +kernel

theorem check_7914 : cell_7914.check = true := by
  decide +kernel

theorem check_7915 : cell_7915.check = true := by
  decide +kernel

theorem check_7916 : cell_7916.check = true := by
  decide +kernel

theorem check_7917 : cell_7917.check = true := by
  decide +kernel

theorem check_7918 : cell_7918.check = true := by
  decide +kernel

theorem check_7919 : cell_7919.check = true := by
  decide +kernel

theorem check_7920 : cell_7920.check = true := by
  decide +kernel

theorem check_7921 : cell_7921.check = true := by
  decide +kernel

theorem check_7922 : cell_7922.check = true := by
  decide +kernel

theorem check_7923 : cell_7923.check = true := by
  decide +kernel

theorem check_7924 : cell_7924.check = true := by
  decide +kernel

theorem check_7925 : cell_7925.check = true := by
  decide +kernel

theorem check_7926 : cell_7926.check = true := by
  decide +kernel

theorem check_7927 : cell_7927.check = true := by
  decide +kernel

theorem check_7928 : cell_7928.check = true := by
  decide +kernel

theorem check_7929 : cell_7929.check = true := by
  decide +kernel

theorem check_7930 : cell_7930.check = true := by
  decide +kernel

theorem check_7931 : cell_7931.check = true := by
  decide +kernel

theorem check_7932 : cell_7932.check = true := by
  decide +kernel

theorem check_7933 : cell_7933.check = true := by
  decide +kernel

theorem check_7934 : cell_7934.check = true := by
  decide +kernel

theorem check_7935 : cell_7935.check = true := by
  decide +kernel

theorem check_7936 : cell_7936.check = true := by
  decide +kernel

theorem check_7937 : cell_7937.check = true := by
  decide +kernel

theorem check_7938 : cell_7938.check = true := by
  decide +kernel

theorem check_7939 : cell_7939.check = true := by
  decide +kernel

theorem check_7940 : cell_7940.check = true := by
  decide +kernel

theorem check_7941 : cell_7941.check = true := by
  decide +kernel

theorem check_7942 : cell_7942.check = true := by
  decide +kernel

theorem check_7943 : cell_7943.check = true := by
  decide +kernel

theorem check_7944 : cell_7944.check = true := by
  decide +kernel

theorem check_7945 : cell_7945.check = true := by
  decide +kernel

theorem check_7946 : cell_7946.check = true := by
  decide +kernel

theorem check_7947 : cell_7947.check = true := by
  decide +kernel

theorem check_7948 : cell_7948.check = true := by
  decide +kernel

theorem check_7949 : cell_7949.check = true := by
  decide +kernel

def cells : List Cell := [cell_7900, cell_7901, cell_7902, cell_7903, cell_7904, cell_7905, cell_7906, cell_7907, cell_7908, cell_7909, cell_7910, cell_7911, cell_7912, cell_7913, cell_7914, cell_7915, cell_7916, cell_7917, cell_7918, cell_7919, cell_7920, cell_7921, cell_7922, cell_7923, cell_7924, cell_7925, cell_7926, cell_7927, cell_7928, cell_7929, cell_7930, cell_7931, cell_7932, cell_7933, cell_7934, cell_7935, cell_7936, cell_7937, cell_7938, cell_7939, cell_7940, cell_7941, cell_7942, cell_7943, cell_7944, cell_7945, cell_7946, cell_7947, cell_7948, cell_7949]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7900, check_7901, check_7902, check_7903, check_7904, check_7905, check_7906, check_7907, check_7908, check_7909, check_7910, check_7911, check_7912, check_7913, check_7914, check_7915, check_7916, check_7917, check_7918, check_7919, check_7920, check_7921, check_7922, check_7923, check_7924, check_7925, check_7926, check_7927, check_7928, check_7929, check_7930, check_7931, check_7932, check_7933, check_7934, check_7935, check_7936, check_7937, check_7938, check_7939, check_7940, check_7941, check_7942, check_7943, check_7944, check_7945, check_7946, check_7947, check_7948, check_7949, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0158

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0158
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0158
open AnalyticBounds.ExpressionCertificate

theorem linked_7900 : Linked cell_7900 pieces := by
  link_source cell_7900 with piece_751 using piece_751_mem, ⟨piece_1774_mem, piece_1775_mem⟩

theorem linked_7901 : Linked cell_7901 pieces := by
  link_source cell_7901 with piece_751 using piece_751_mem, piece_1774_mem

theorem linked_7902 : Linked cell_7902 pieces := by
  link_source cell_7902 with piece_751 using piece_751_mem, ⟨piece_1772_mem, ⟨piece_1773_mem, piece_1774_mem⟩⟩

theorem linked_7903 : Linked cell_7903 pieces := by
  link_source cell_7903 with piece_751 using piece_751_mem, ⟨piece_1771_mem, piece_1772_mem⟩

theorem linked_7904 : Linked cell_7904 pieces := by
  link_source cell_7904 with piece_751 using piece_751_mem, ⟨piece_1770_mem, piece_1771_mem⟩

theorem linked_7905 : Linked cell_7905 pieces := by
  link_source cell_7905 with piece_752 using piece_752_mem, piece_1774_mem

theorem linked_7906 : Linked cell_7906 pieces := by
  link_source cell_7906 with piece_752 using piece_752_mem, ⟨piece_1772_mem, ⟨piece_1773_mem, piece_1774_mem⟩⟩

theorem linked_7907 : Linked cell_7907 pieces := by
  link_source cell_7907 with piece_752 using piece_752_mem, ⟨piece_1771_mem, piece_1772_mem⟩

theorem linked_7908 : Linked cell_7908 pieces := by
  link_source cell_7908 with piece_752 using piece_752_mem, ⟨piece_1770_mem, piece_1771_mem⟩

theorem linked_7909 : Linked cell_7909 pieces := by
  link_source cell_7909 with piece_752 using piece_752_mem, piece_1770_mem

theorem linked_7910 : Linked cell_7910 pieces := by
  link_source cell_7910 with piece_752 using piece_752_mem, ⟨piece_1769_mem, piece_1770_mem⟩

theorem linked_7911 : Linked cell_7911 pieces := by
  link_source cell_7911 with piece_752 using piece_752_mem, ⟨piece_1768_mem, piece_1769_mem⟩

theorem linked_7912 : Linked cell_7912 pieces := by
  link_source cell_7912 with piece_752 using piece_752_mem, ⟨piece_1767_mem, piece_1768_mem⟩

theorem linked_7913 : Linked cell_7913 pieces := by
  link_source cell_7913 with piece_753 using piece_753_mem, piece_1770_mem

theorem linked_7914 : Linked cell_7914 pieces := by
  link_source cell_7914 with piece_753 using piece_753_mem, ⟨piece_1769_mem, piece_1770_mem⟩

theorem linked_7915 : Linked cell_7915 pieces := by
  link_source cell_7915 with piece_753 using piece_753_mem, ⟨piece_1768_mem, piece_1769_mem⟩

theorem linked_7916 : Linked cell_7916 pieces := by
  link_source cell_7916 with piece_753 using piece_753_mem, ⟨piece_1767_mem, piece_1768_mem⟩

theorem linked_7917 : Linked cell_7917 pieces := by
  link_source cell_7917 with piece_753 using piece_753_mem, piece_1767_mem

theorem linked_7918 : Linked cell_7918 pieces := by
  link_source cell_7918 with piece_753 using piece_753_mem, ⟨piece_1766_mem, piece_1767_mem⟩

theorem linked_7919 : Linked cell_7919 pieces := by
  link_source cell_7919 with piece_753 using piece_753_mem, ⟨piece_1765_mem, piece_1766_mem⟩

theorem linked_7920 : Linked cell_7920 pieces := by
  link_source cell_7920 with piece_753 using piece_753_mem, ⟨piece_1764_mem, piece_1765_mem⟩

theorem linked_7921 : Linked cell_7921 pieces := by
  link_source cell_7921 with piece_754 using piece_754_mem, ⟨piece_1766_mem, piece_1767_mem⟩

theorem linked_7922 : Linked cell_7922 pieces := by
  link_source cell_7922 with piece_754 using piece_754_mem, piece_1766_mem

theorem linked_7923 : Linked cell_7923 pieces := by
  link_source cell_7923 with piece_754 using piece_754_mem, ⟨piece_1765_mem, piece_1766_mem⟩

theorem linked_7924 : Linked cell_7924 pieces := by
  link_source cell_7924 with piece_754 using piece_754_mem, ⟨piece_1764_mem, piece_1765_mem⟩

theorem linked_7925 : Linked cell_7925 pieces := by
  link_source cell_7925 with piece_754 using piece_754_mem, ⟨piece_1763_mem, piece_1764_mem⟩

theorem linked_7926 : Linked cell_7926 pieces := by
  link_source cell_7926 with piece_754 using piece_754_mem, piece_1763_mem

theorem linked_7927 : Linked cell_7927 pieces := by
  link_source cell_7927 with piece_754 using piece_754_mem, ⟨piece_1762_mem, piece_1763_mem⟩

theorem linked_7928 : Linked cell_7928 pieces := by
  link_source cell_7928 with piece_754 using piece_754_mem, ⟨piece_1761_mem, piece_1762_mem⟩

theorem linked_7929 : Linked cell_7929 pieces := by
  link_source cell_7929 with piece_755 using piece_755_mem, ⟨piece_1763_mem, piece_1764_mem⟩

theorem linked_7930 : Linked cell_7930 pieces := by
  link_source cell_7930 with piece_755 using piece_755_mem, piece_1763_mem

theorem linked_7931 : Linked cell_7931 pieces := by
  link_source cell_7931 with piece_755 using piece_755_mem, ⟨piece_1762_mem, piece_1763_mem⟩

theorem linked_7932 : Linked cell_7932 pieces := by
  link_source cell_7932 with piece_755 using piece_755_mem, ⟨piece_1761_mem, piece_1762_mem⟩

theorem linked_7933 : Linked cell_7933 pieces := by
  link_source cell_7933 with piece_755 using piece_755_mem, ⟨piece_1759_mem, ⟨piece_1760_mem, piece_1761_mem⟩⟩

theorem linked_7934 : Linked cell_7934 pieces := by
  link_source cell_7934 with piece_755 using piece_755_mem, piece_1759_mem

theorem linked_7935 : Linked cell_7935 pieces := by
  link_source cell_7935 with piece_755 using piece_755_mem, ⟨piece_1758_mem, piece_1759_mem⟩

theorem linked_7936 : Linked cell_7936 pieces := by
  link_source cell_7936 with piece_755 using piece_755_mem, ⟨piece_1757_mem, piece_1758_mem⟩

theorem linked_7937 : Linked cell_7937 pieces := by
  link_source cell_7937 with piece_756 using piece_756_mem, ⟨piece_1759_mem, ⟨piece_1760_mem, piece_1761_mem⟩⟩

theorem linked_7938 : Linked cell_7938 pieces := by
  link_source cell_7938 with piece_756 using piece_756_mem, piece_1759_mem

theorem linked_7939 : Linked cell_7939 pieces := by
  link_source cell_7939 with piece_756 using piece_756_mem, ⟨piece_1758_mem, piece_1759_mem⟩

theorem linked_7940 : Linked cell_7940 pieces := by
  link_source cell_7940 with piece_756 using piece_756_mem, ⟨piece_1757_mem, piece_1758_mem⟩

theorem linked_7941 : Linked cell_7941 pieces := by
  link_source cell_7941 with piece_756 using piece_756_mem, ⟨piece_1756_mem, piece_1757_mem⟩

theorem linked_7942 : Linked cell_7942 pieces := by
  link_source cell_7942 with piece_756 using piece_756_mem, piece_1756_mem

theorem linked_7943 : Linked cell_7943 pieces := by
  link_source cell_7943 with piece_756 using piece_756_mem, ⟨piece_1755_mem, piece_1756_mem⟩

theorem linked_7944 : Linked cell_7944 pieces := by
  link_source cell_7944 with piece_756 using piece_756_mem, ⟨piece_1754_mem, piece_1755_mem⟩

theorem linked_7945 : Linked cell_7945 pieces := by
  link_source cell_7945 with piece_757 using piece_757_mem, ⟨piece_1756_mem, piece_1757_mem⟩

theorem linked_7946 : Linked cell_7946 pieces := by
  link_source cell_7946 with piece_757 using piece_757_mem, piece_1756_mem

theorem linked_7947 : Linked cell_7947 pieces := by
  link_source cell_7947 with piece_757 using piece_757_mem, ⟨piece_1755_mem, piece_1756_mem⟩

theorem linked_7948 : Linked cell_7948 pieces := by
  link_source cell_7948 with piece_757 using piece_757_mem, ⟨piece_1754_mem, piece_1755_mem⟩

theorem linked_7949 : Linked cell_7949 pieces := by
  link_source cell_7949 with piece_757 using piece_757_mem, ⟨piece_1753_mem, piece_1754_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0158.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0158.cells,List.forall_mem_cons]
  exact ⟨linked_7900, linked_7901, linked_7902, linked_7903, linked_7904, linked_7905, linked_7906, linked_7907, linked_7908, linked_7909, linked_7910, linked_7911, linked_7912, linked_7913, linked_7914, linked_7915, linked_7916, linked_7917, linked_7918, linked_7919, linked_7920, linked_7921, linked_7922, linked_7923, linked_7924, linked_7925, linked_7926, linked_7927, linked_7928, linked_7929, linked_7930, linked_7931, linked_7932, linked_7933, linked_7934, linked_7935, linked_7936, linked_7937, linked_7938, linked_7939, linked_7940, linked_7941, linked_7942, linked_7943, linked_7944, linked_7945, linked_7946, linked_7947, linked_7948, linked_7949, by simp⟩

theorem covered : covers (7479687500000001 / 25000000000000000 : ℚ) (6046250000000001 / 20000000000000000 : ℚ)
    (SourceCertificates.Chunk0158.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0158
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0159
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(6046250000000001 / 20000000000000000 : ℚ), (6047500000000001 / 20000000000000000 : ℚ)⟩
  branch := .left
  r := (80194592147407 / 100000000000000 : ℚ)
  w := (17383788148883 / 10000000000000 : ℚ)
  center := (6046875000000001 / 20000000000000000 : ℚ)
  supportValue := (7587570928950723 / 10000000000000000 : ℚ)
  supportSlope := (-5949088297214189 / 1000000000000000 : ℚ)
  oldCenter := (7587570928950723 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_758
  oldLo := (75700000000000001 / 100000000000000000 : ℚ)
  oldHi := (75900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1753]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7950 : Cell := { cellDefaults with
  r := (80257148399247 / 100000000000000 : ℚ)
  w := (1087124360923 / 625000000000 : ℚ)
  newCoefficients := coefficients_757
  oldLo := (37925000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1753]
}

def cell_7951 : Cell := { cellDefaults with
  domain := ⟨(6047500000000001 / 20000000000000000 : ℚ), (6048750000000001 / 20000000000000000 : ℚ)⟩
  r := (80257148399247 / 100000000000000 : ℚ)
  w := (1087124360923 / 625000000000 : ℚ)
  center := (6048125000000001 / 20000000000000000 : ℚ)
  supportValue := (947982425155609 / 1250000000000000 : ℚ)
  supportSlope := (-297243738539521 / 50000000000000 : ℚ)
  oldCenter := (947982425155609 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_757
  oldLo := (75800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1752, piece_1753]
}

def cell_7952 : Cell := { cellDefaults with
  domain := ⟨(6048750000000001 / 20000000000000000 : ℚ), (6050000000000001 / 20000000000000000 : ℚ)⟩
  r := (80257148399247 / 100000000000000 : ℚ)
  w := (1087124360923 / 625000000000 : ℚ)
  center := (6049375000000001 / 20000000000000000 : ℚ)
  supportValue := (7580145229562919 / 10000000000000000 : ℚ)
  supportSlope := (-1188118241672953 / 200000000000000 : ℚ)
  oldCenter := (7580145229562919 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_757
  oldLo := (37875000000000003 / 50000000000000000 : ℚ)
  oldHi := (37925000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1751, piece_1752]
}

def cell_7953 : Cell := { cellDefaults with
  domain := ⟨(6050000000000001 / 20000000000000000 : ℚ), (6051250000000001 / 20000000000000000 : ℚ)⟩
  center := (6050625000000001 / 20000000000000000 : ℚ)
  supportValue := (3795573214759263 / 5000000000000000 : ℚ)
  supportSlope := (-59487887604881 / 10000000000000 : ℚ)
  oldCenter := (3795573214759263 / 5000000000000000 : ℚ)
  oldLo := (37925000000000003 / 50000000000000000 : ℚ)
  oldHi := (37975000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1753, piece_1754]
}

def cell_7954 : Cell := { cellDefaults with
  domain := ⟨(6051250000000001 / 20000000000000000 : ℚ), (6052500000000001 / 20000000000000000 : ℚ)⟩
  center := (6051875000000001 / 20000000000000000 : ℚ)
  supportValue := (7587424407463929 / 10000000000000000 : ℚ)
  supportSlope := (-2972291937998861 / 500000000000000 : ℚ)
  oldCenter := (7587424407463929 / 10000000000000000 : ℚ)
  oldLo := (37925000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1753]
}

def cell_7955 : Cell := { cellDefaults with
  domain := ⟨(6052500000000001 / 20000000000000000 : ℚ), (6053750000000001 / 20000000000000000 : ℚ)⟩
  center := (6053125000000001 / 20000000000000000 : ℚ)
  supportValue := (3791857839738649 / 5000000000000000 : ℚ)
  supportSlope := (-928187724481 / 156250000000 : ℚ)
  oldCenter := (3791857839738649 / 5000000000000000 : ℚ)
  oldLo := (75800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1752, piece_1753]
}

def cell_7956 : Cell := { cellDefaults with
  domain := ⟨(6053750000000001 / 20000000000000000 : ℚ), (6055000000000001 / 20000000000000000 : ℚ)⟩
  center := (6054375000000001 / 20000000000000000 : ℚ)
  supportValue := (7580004310712471 / 10000000000000000 : ℚ)
  supportSlope := (-742016290104619 / 125000000000000 : ℚ)
  oldCenter := (7580004310712471 / 10000000000000000 : ℚ)
  oldLo := (37875000000000003 / 50000000000000000 : ℚ)
  oldHi := (37925000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1751, piece_1752]
}

def cell_7957 : Cell := { cellDefaults with
  domain := ⟨(6055000000000001 / 20000000000000000 : ℚ), (6056250000000001 / 20000000000000000 : ℚ)⟩
  center := (6055625000000001 / 20000000000000000 : ℚ)
  supportValue := (47351846931989 / 62500000000000 : ℚ)
  supportSlope := (-1186372231158117 / 200000000000000 : ℚ)
  oldCenter := (47351846931989 / 62500000000000 : ℚ)
  oldHi := (75800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1750, piece_1751]
}

def cell_7958 : Cell := { cellDefaults with
  domain := ⟨(6056250000000001 / 20000000000000000 : ℚ), (6057500000000001 / 20000000000000000 : ℚ)⟩
  center := (6056875000000001 / 20000000000000000 : ℚ)
  supportValue := (7572584073719141 / 10000000000000000 : ℚ)
  supportSlope := (-5927686544460187 / 1000000000000000 : ℚ)
  oldCenter := (7572584073719141 / 10000000000000000 : ℚ)
  oldHi := (37875000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1750]
}

def cell_7959 : Cell := { cellDefaults with
  domain := ⟨(6057500000000001 / 20000000000000000 : ℚ), (6058750000000001 / 20000000000000000 : ℚ)⟩
  center := (6058125000000001 / 20000000000000000 : ℚ)
  supportValue := (473055369124917 / 625000000000000 : ℚ)
  supportSlope := (-5923493996757401 / 1000000000000000 : ℚ)
  oldCenter := (473055369124917 / 625000000000000 : ℚ)
  oldLo := (3783240223463687 / 5000000000000000 : ℚ)
  oldHi := (37875000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1749, piece_1750]
}

def cell_7960 : Cell := { cellDefaults with
  domain := ⟨(6058750000000001 / 20000000000000000 : ℚ), (6060000000000001 / 20000000000000000 : ℚ)⟩
  center := (6059375000000001 / 20000000000000000 : ℚ)
  supportValue := (7565185088239209 / 10000000000000000 : ℚ)
  supportSlope := (-5919231727997243 / 1000000000000000 : ℚ)
  oldCenter := (7565185088239209 / 10000000000000000 : ℚ)
  oldLo := (75600000000000001 / 100000000000000000 : ℚ)
  oldHi := (75700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1747, piece_1748, piece_1749]
}

def cell_7961 : Cell := { cellDefaults with
  domain := ⟨(6060000000000001 / 20000000000000000 : ℚ), (60612849162011179 / 200000000000000000 : ℚ)⟩
  r := (80132152928613 / 100000000000000 : ℚ)
  w := (17373607268433 / 10000000000000 : ℚ)
  center := (121212849162011189 / 400000000000000000 : ℚ)
  supportValue := (1515220225193063 / 2000000000000000 : ℚ)
  supportSlope := (-1185468142508213 / 200000000000000 : ℚ)
  oldCenter := (1515220225193063 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_759
  oldHi := (75800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1750, piece_1751]
}

def cell_7962 : Cell := { cellDefaults with
  domain := ⟨(60612849162011179 / 200000000000000000 : ℚ), (15156424581005587 / 50000000000000000 : ℚ)⟩
  r := (80132152928613 / 100000000000000 : ℚ)
  w := (17373607268433 / 10000000000000 : ℚ)
  center := (121238547486033527 / 400000000000000000 : ℚ)
  supportValue := (7572294409742801 / 10000000000000000 : ℚ)
  supportSlope := (-5923021275143411 / 1000000000000000 : ℚ)
  oldCenter := (7572294409742801 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_759
  oldHi := (37875000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1750]
}

def cell_7963 : Cell := { cellDefaults with
  domain := ⟨(15156424581005587 / 50000000000000000 : ℚ), (60637849162011179 / 200000000000000000 : ℚ)⟩
  r := (80132152928613 / 100000000000000 : ℚ)
  w := (17373607268433 / 10000000000000 : ℚ)
  center := (121263547486033527 / 400000000000000000 : ℚ)
  supportValue := (1892148457814859 / 2500000000000000 : ℚ)
  supportSlope := (-1183775786797201 / 200000000000000 : ℚ)
  oldCenter := (1892148457814859 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_760
  oldLo := (3783240223463687 / 5000000000000000 : ℚ)
  oldHi := (37875000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1749, piece_1750]
}

def cell_7964 : Cell := { cellDefaults with
  domain := ⟨(60637849162011179 / 200000000000000000 : ℚ), (6065000000000001 / 20000000000000000 : ℚ)⟩
  r := (80132152928613 / 100000000000000 : ℚ)
  w := (17373607268433 / 10000000000000 : ℚ)
  center := (121287849162011189 / 400000000000000000 : ℚ)
  supportValue := (1891248469918661 / 2500000000000000 : ℚ)
  supportSlope := (-11829472335670033 / 2000000000000000 : ℚ)
  oldCenter := (1891248469918661 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_760
  oldLo := (75600000000000001 / 100000000000000000 : ℚ)
  oldHi := (75700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1747, piece_1748, piece_1749]
}

def cell_7965 : Cell := { cellDefaults with
  domain := ⟨(6065000000000001 / 20000000000000000 : ℚ), (6066250000000001 / 20000000000000000 : ℚ)⟩
  r := (80132152928613 / 100000000000000 : ℚ)
  w := (17373607268433 / 10000000000000 : ℚ)
  center := (6065625000000001 / 20000000000000000 : ℚ)
  supportValue := (59073088524987 / 78125000000000 : ℚ)
  supportSlope := (-1477635793730947 / 250000000000000 : ℚ)
  oldCenter := (59073088524987 / 78125000000000 : ℚ)
  newCoefficients := coefficients_760
  oldLo := (37775000000000003 / 50000000000000000 : ℚ)
  oldHi := (37825000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1746, piece_1747]
}

def cell_7966 : Cell := { cellDefaults with
  domain := ⟨(6066250000000001 / 20000000000000000 : ℚ), (6067500000000001 / 20000000000000000 : ℚ)⟩
  r := (80132152928613 / 100000000000000 : ℚ)
  w := (17373607268433 / 10000000000000 : ℚ)
  center := (6066875000000001 / 20000000000000000 : ℚ)
  supportValue := (236176788224849 / 312500000000000 : ℚ)
  supportSlope := (-7382998007781083 / 1250000000000000 : ℚ)
  oldCenter := (236176788224849 / 312500000000000 : ℚ)
  newCoefficients := coefficients_760
  oldLo := (37775000000000003 / 50000000000000000 : ℚ)
  oldHi := (75600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1746]
}

def cell_7967 : Cell := { cellDefaults with
  domain := ⟨(6067500000000001 / 20000000000000000 : ℚ), (6068750000000001 / 20000000000000000 : ℚ)⟩
  r := (80132152928613 / 100000000000000 : ℚ)
  w := (17373607268433 / 10000000000000 : ℚ)
  center := (6068125000000001 / 20000000000000000 : ℚ)
  supportValue := (7553972350010083 / 10000000000000000 : ℚ)
  supportSlope := (-2951108463907559 / 500000000000000 : ℚ)
  oldCenter := (7553972350010083 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_760
  oldLo := (151 / 200 : ℚ)
  oldHi := (75600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1745, piece_1746]
}

def cell_7968 : Cell := { cellDefaults with
  domain := ⟨(6068750000000001 / 20000000000000000 : ℚ), (6070000000000001 / 20000000000000000 : ℚ)⟩
  r := (80132152928613 / 100000000000000 : ℚ)
  w := (17373607268433 / 10000000000000 : ℚ)
  center := (6069375000000001 / 20000000000000000 : ℚ)
  supportValue := (377514240861293 / 500000000000000 : ℚ)
  supportSlope := (-1474493456719017 / 250000000000000 : ℚ)
  oldCenter := (377514240861293 / 500000000000000 : ℚ)
  newCoefficients := coefficients_760
  oldLo := (37725000000000003 / 50000000000000000 : ℚ)
  oldHi := (37775000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1744, piece_1745]
}

def cell_7969 : Cell := { cellDefaults with
  domain := ⟨(6070000000000001 / 20000000000000000 : ℚ), (6071250000000001 / 20000000000000000 : ℚ)⟩
  r := (40034916336337 / 50000000000000 : ℚ)
  w := (4340861589881 / 2500000000000 : ℚ)
  center := (6070625000000001 / 20000000000000000 : ℚ)
  supportValue := (756121932174041 / 1000000000000000 : ℚ)
  supportSlope := (-2953050176049743 / 500000000000000 : ℚ)
  oldCenter := (756121932174041 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_761
  oldLo := (37775000000000003 / 50000000000000000 : ℚ)
  oldHi := (37825000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1746, piece_1747]
}

def cell_7970 : Cell := { cellDefaults with
  domain := ⟨(6071250000000001 / 20000000000000000 : ℚ), (6072500000000001 / 20000000000000000 : ℚ)⟩
  r := (40034916336337 / 50000000000000 : ℚ)
  w := (4340861589881 / 2500000000000 : ℚ)
  center := (6071875000000001 / 20000000000000000 : ℚ)
  supportValue := (7557523986506427 / 10000000000000000 : ℚ)
  supportSlope := (-2950975769438813 / 500000000000000 : ℚ)
  oldCenter := (7557523986506427 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_761
  oldLo := (37775000000000003 / 50000000000000000 : ℚ)
  oldHi := (75600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1746]
}

def cell_7971 : Cell := { cellDefaults with
  domain := ⟨(6072500000000001 / 20000000000000000 : ℚ), (6073750000000001 / 20000000000000000 : ℚ)⟩
  r := (40034916336337 / 50000000000000 : ℚ)
  w := (4340861589881 / 2500000000000 : ℚ)
  center := (6073125000000001 / 20000000000000000 : ℚ)
  supportValue := (1510768375582187 / 2000000000000000 : ℚ)
  supportSlope := (-737224997174657 / 125000000000000 : ℚ)
  oldCenter := (1510768375582187 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_761
  oldLo := (151 / 200 : ℚ)
  oldHi := (75600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1745, piece_1746]
}

def cell_7972 : Cell := { cellDefaults with
  domain := ⟨(6073750000000001 / 20000000000000000 : ℚ), (6075000000000001 / 20000000000000000 : ℚ)⟩
  r := (40034916336337 / 50000000000000 : ℚ)
  w := (4340861589881 / 2500000000000 : ℚ)
  center := (6074375000000001 / 20000000000000000 : ℚ)
  supportValue := (377507855601447 / 500000000000000 : ℚ)
  supportSlope := (-1178713929764541 / 200000000000000 : ℚ)
  oldCenter := (377507855601447 / 500000000000000 : ℚ)
  newCoefficients := coefficients_761
  oldLo := (37725000000000003 / 50000000000000000 : ℚ)
  oldHi := (37775000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1744, piece_1745]
}

def cell_7973 : Cell := { cellDefaults with
  domain := ⟨(6075000000000001 / 20000000000000000 : ℚ), (6076250000000001 / 20000000000000000 : ℚ)⟩
  r := (40034916336337 / 50000000000000 : ℚ)
  w := (4340861589881 / 2500000000000 : ℚ)
  center := (6075625000000001 / 20000000000000000 : ℚ)
  supportValue := (7546474896248317 / 10000000000000000 : ℚ)
  supportSlope := (-5889341212863997 / 1000000000000000 : ℚ)
  oldCenter := (7546474896248317 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_761
  oldLo := (377 / 500 : ℚ)
  oldHi := (151 / 200 : ℚ)
  oldPieces := [piece_1743, piece_1744]
}

def cell_7974 : Cell := { cellDefaults with
  domain := ⟨(6076250000000001 / 20000000000000000 : ℚ), (6077500000000001 / 20000000000000000 : ℚ)⟩
  r := (40034916336337 / 50000000000000 : ℚ)
  w := (4340861589881 / 2500000000000 : ℚ)
  center := (6076875000000001 / 20000000000000000 : ℚ)
  supportValue := (14732011801407 / 19531250000000 : ℚ)
  supportSlope := (-1177047295369249 / 200000000000000 : ℚ)
  oldCenter := (14732011801407 / 19531250000000 : ℚ)
  newCoefficients := coefficients_761
  oldLo := (377 / 500 : ℚ)
  oldHi := (37725000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1743]
}

def cell_7975 : Cell := { cellDefaults with
  domain := ⟨(6077500000000001 / 20000000000000000 : ℚ), (6078750000000001 / 20000000000000000 : ℚ)⟩
  r := (40034916336337 / 50000000000000 : ℚ)
  w := (4340861589881 / 2500000000000 : ℚ)
  center := (6078125000000001 / 20000000000000000 : ℚ)
  supportValue := (3769559194460063 / 5000000000000000 : ℚ)
  supportSlope := (-5881060751537603 / 1000000000000000 : ℚ)
  oldCenter := (3769559194460063 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_761
  oldLo := (37675000000000003 / 50000000000000000 : ℚ)
  oldHi := (37725000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1742, piece_1743]
}

def cell_7976 : Cell := { cellDefaults with
  domain := ⟨(6078750000000001 / 20000000000000000 : ℚ), (6080000000000001 / 20000000000000000 : ℚ)⟩
  r := (40034916336337 / 50000000000000 : ℚ)
  w := (4340861589881 / 2500000000000 : ℚ)
  center := (6079375000000001 / 20000000000000000 : ℚ)
  supportValue := (1507088811988247 / 2000000000000000 : ℚ)
  supportSlope := (-5876839203988737 / 1000000000000000 : ℚ)
  oldCenter := (1507088811988247 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_761
  oldLo := (753 / 1000 : ℚ)
  oldHi := (377 / 500 : ℚ)
  oldPieces := [piece_1741, piece_1742]
}

def cell_7977 : Cell := { cellDefaults with
  domain := ⟨(6080000000000001 / 20000000000000000 : ℚ), (6081250000000001 / 20000000000000000 : ℚ)⟩
  r := (40003815620231 / 50000000000000 : ℚ)
  w := (4338326441541 / 2500000000000 : ℚ)
  center := (6080625000000001 / 20000000000000000 : ℚ)
  supportValue := (754634518600217 / 1000000000000000 : ℚ)
  supportSlope := (-735615756619179 / 125000000000000 : ℚ)
  oldCenter := (754634518600217 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_762
  oldLo := (377 / 500 : ℚ)
  oldHi := (151 / 200 : ℚ)
  oldPieces := [piece_1743, piece_1744]
}

def cell_7978 : Cell := { cellDefaults with
  domain := ⟨(6081250000000001 / 20000000000000000 : ℚ), (6082500000000001 / 20000000000000000 : ℚ)⟩
  r := (40003815620231 / 50000000000000 : ℚ)
  w := (4338326441541 / 2500000000000 : ℚ)
  center := (6081875000000001 / 20000000000000000 : ℚ)
  supportValue := (7542663087843541 / 10000000000000000 : ℚ)
  supportSlope := (-14702042603707 / 2500000000000 : ℚ)
  oldCenter := (7542663087843541 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_762
  oldLo := (377 / 500 : ℚ)
  oldHi := (37725000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1743]
}

def cell_7979 : Cell := { cellDefaults with
  domain := ⟨(6082500000000001 / 20000000000000000 : ℚ), (6083750000000001 / 20000000000000000 : ℚ)⟩
  r := (40003815620231 / 50000000000000 : ℚ)
  w := (4338326441541 / 2500000000000 : ℚ)
  center := (6083125000000001 / 20000000000000000 : ℚ)
  supportValue := (7538994182630641 / 10000000000000000 : ℚ)
  supportSlope := (-2938334791128483 / 500000000000000 : ℚ)
  oldCenter := (7538994182630641 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_762
  oldLo := (37675000000000003 / 50000000000000000 : ℚ)
  oldHi := (37725000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1742, piece_1743]
}

def cell_7980 : Cell := { cellDefaults with
  domain := ⟨(6083750000000001 / 20000000000000000 : ℚ), (6085000000000001 / 20000000000000000 : ℚ)⟩
  r := (40003815620231 / 50000000000000 : ℚ)
  w := (4338326441541 / 2500000000000 : ℚ)
  center := (6084375000000001 / 20000000000000000 : ℚ)
  supportValue := (1507064520858093 / 2000000000000000 : ℚ)
  supportSlope := (-46979678926931 / 8000000000000 : ℚ)
  oldCenter := (1507064520858093 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_762
  oldLo := (753 / 1000 : ℚ)
  oldHi := (377 / 500 : ℚ)
  oldPieces := [piece_1741, piece_1742]
}

def cell_7981 : Cell := { cellDefaults with
  domain := ⟨(6085000000000001 / 20000000000000000 : ℚ), (6086250000000001 / 20000000000000000 : ℚ)⟩
  r := (40003815620231 / 50000000000000 : ℚ)
  w := (4338326441541 / 2500000000000 : ℚ)
  center := (6085625000000001 / 20000000000000000 : ℚ)
  supportValue := (1506330714973567 / 2000000000000000 : ℚ)
  supportSlope := (-1173650399991999 / 200000000000000 : ℚ)
  oldCenter := (1506330714973567 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_762
  oldLo := (37625000000000003 / 50000000000000000 : ℚ)
  oldHi := (37675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1740, piece_1741]
}

def cell_7982 : Cell := { cellDefaults with
  domain := ⟨(6086250000000001 / 20000000000000000 : ℚ), (6087500000000001 / 20000000000000000 : ℚ)⟩
  r := (40003815620231 / 50000000000000 : ℚ)
  w := (4338326441541 / 2500000000000 : ℚ)
  center := (6086875000000001 / 20000000000000000 : ℚ)
  supportValue := (7527981904807521 / 10000000000000000 : ℚ)
  supportSlope := (-5864194112518817 / 1000000000000000 : ℚ)
  oldCenter := (7527981904807521 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_762
  oldLo := (37625000000000003 / 50000000000000000 : ℚ)
  oldHi := (753 / 1000 : ℚ)
  oldPieces := [piece_1740]
}

def cell_7983 : Cell := { cellDefaults with
  domain := ⟨(6087500000000001 / 20000000000000000 : ℚ), (6088750000000001 / 20000000000000000 : ℚ)⟩
  r := (40003815620231 / 50000000000000 : ℚ)
  w := (4338326441541 / 2500000000000 : ℚ)
  center := (6088125000000001 / 20000000000000000 : ℚ)
  supportValue := (3762161700848017 / 5000000000000000 : ℚ)
  supportSlope := (-2930007676139823 / 500000000000000 : ℚ)
  oldCenter := (3762161700848017 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_762
  oldLo := (94 / 125 : ℚ)
  oldHi := (753 / 1000 : ℚ)
  oldPieces := [piece_1739, piece_1740]
}

def cell_7984 : Cell := { cellDefaults with
  domain := ⟨(6088750000000001 / 20000000000000000 : ℚ), (6090000000000001 / 20000000000000000 : ℚ)⟩
  r := (40003815620231 / 50000000000000 : ℚ)
  w := (4338326441541 / 2500000000000 : ℚ)
  center := (6089375000000001 / 20000000000000000 : ℚ)
  supportValue := (3760331101351197 / 5000000000000000 : ℚ)
  supportSlope := (-5855814367190959 / 1000000000000000 : ℚ)
  oldCenter := (3760331101351197 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_762
  oldLo := (37575000000000003 / 50000000000000000 : ℚ)
  oldHi := (37625000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1738, piece_1739]
}

def cell_7985 : Cell := { cellDefaults with
  domain := ⟨(6090000000000001 / 20000000000000000 : ℚ), (6091250000000001 / 20000000000000000 : ℚ)⟩
  r := (15989109259813 / 20000000000000 : ℚ)
  w := (4335796310553 / 2500000000000 : ℚ)
  center := (6090625000000001 / 20000000000000000 : ℚ)
  supportValue := (7531530480822657 / 10000000000000000 : ℚ)
  supportSlope := (-366491575645167 / 62500000000000 : ℚ)
  oldCenter := (7531530480822657 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_763
  oldLo := (37625000000000003 / 50000000000000000 : ℚ)
  oldHi := (37675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1740, piece_1741]
}

def cell_7986 : Cell := { cellDefaults with
  domain := ⟨(6091250000000001 / 20000000000000000 : ℚ), (6092500000000001 / 20000000000000000 : ℚ)⟩
  r := (15989109259813 / 20000000000000 : ℚ)
  w := (4335796310553 / 2500000000000 : ℚ)
  center := (6091875000000001 / 20000000000000000 : ℚ)
  supportValue := (470491346815049 / 625000000000000 : ℚ)
  supportSlope := (-5859803020207721 / 1000000000000000 : ℚ)
  oldCenter := (470491346815049 / 625000000000000 : ℚ)
  newCoefficients := coefficients_763
  oldLo := (37625000000000003 / 50000000000000000 : ℚ)
  oldHi := (753 / 1000 : ℚ)
  oldPieces := [piece_1740]
}

def cell_7987 : Cell := { cellDefaults with
  domain := ⟨(6092500000000001 / 20000000000000000 : ℚ), (6093750000000001 / 20000000000000000 : ℚ)⟩
  r := (15989109259813 / 20000000000000 : ℚ)
  w := (4335796310553 / 2500000000000 : ℚ)
  center := (6093125000000001 / 20000000000000000 : ℚ)
  supportValue := (376210288856359 / 500000000000000 : ℚ)
  supportSlope := (-117113019648869 / 20000000000000 : ℚ)
  oldCenter := (376210288856359 / 500000000000000 : ℚ)
  newCoefficients := coefficients_763
  oldLo := (94 / 125 : ℚ)
  oldHi := (753 / 1000 : ℚ)
  oldPieces := [piece_1739, piece_1740]
}

def cell_7988 : Cell := { cellDefaults with
  domain := ⟨(6093750000000001 / 20000000000000000 : ℚ), (6095000000000001 / 20000000000000000 : ℚ)⟩
  r := (15989109259813 / 20000000000000 : ℚ)
  w := (4335796310553 / 2500000000000 : ℚ)
  center := (6094375000000001 / 20000000000000000 : ℚ)
  supportValue := (940068413974123 / 1250000000000000 : ℚ)
  supportSlope := (-292573052086631 / 50000000000000 : ℚ)
  oldCenter := (940068413974123 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_763
  oldLo := (37575000000000003 / 50000000000000000 : ℚ)
  oldHi := (37625000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1738, piece_1739]
}

def cell_7989 : Cell := { cellDefaults with
  domain := ⟨(6095000000000001 / 20000000000000000 : ℚ), (6096250000000001 / 20000000000000000 : ℚ)⟩
  r := (15989109259813 / 20000000000000 : ℚ)
  w := (4335796310553 / 2500000000000 : ℚ)
  center := (6095625000000001 / 20000000000000000 : ℚ)
  supportValue := (7516886137803201 / 10000000000000000 : ℚ)
  supportSlope := (-1169456072606323 / 200000000000000 : ℚ)
  oldCenter := (7516886137803201 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_763
  oldLo := (37575000000000003 / 50000000000000000 : ℚ)
  oldHi := (94 / 125 : ℚ)
  oldPieces := [piece_1738]
}

def cell_7990 : Cell := { cellDefaults with
  domain := ⟨(6096250000000001 / 20000000000000000 : ℚ), (6097500000000001 / 20000000000000000 : ℚ)⟩
  r := (15989109259813 / 20000000000000 : ℚ)
  w := (4335796310553 / 2500000000000 : ℚ)
  center := (6096875000000001 / 20000000000000000 : ℚ)
  supportValue := (3756619052010919 / 5000000000000000 : ℚ)
  supportSlope := (-11686523410723737 / 2000000000000000 : ℚ)
  oldCenter := (3756619052010919 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_763
  oldLo := (7511173184357541 / 10000000000000000 : ℚ)
  oldHi := (94 / 125 : ℚ)
  oldPieces := [piece_1737, piece_1738]
}

def cell_7991 : Cell := { cellDefaults with
  domain := ⟨(6097500000000001 / 20000000000000000 : ℚ), (6098750000000001 / 20000000000000000 : ℚ)⟩
  r := (15989109259813 / 20000000000000 : ℚ)
  w := (4335796310553 / 2500000000000 : ℚ)
  center := (6098125000000001 / 20000000000000000 : ℚ)
  supportValue := (3754793711819177 / 5000000000000000 : ℚ)
  supportSlope := (-583907921377147 / 100000000000000 : ℚ)
  oldCenter := (3754793711819177 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_763
  oldLo := (37525000000000003 / 50000000000000000 : ℚ)
  oldHi := (37575000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1735, piece_1736, piece_1737]
}

def cell_7992 : Cell := { cellDefaults with
  domain := ⟨(6098750000000001 / 20000000000000000 : ℚ), (6100000000000001 / 20000000000000000 : ℚ)⟩
  r := (15989109259813 / 20000000000000 : ℚ)
  w := (4335796310553 / 2500000000000 : ℚ)
  center := (6099375000000001 / 20000000000000000 : ℚ)
  supportValue := (1876484820401091 / 2500000000000000 : ℚ)
  supportSlope := (-145872451302953 / 25000000000000 : ℚ)
  oldCenter := (1876484820401091 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_763
  oldLo := (3 / 4 : ℚ)
  oldHi := (751 / 1000 : ℚ)
  oldPieces := [piece_1734, piece_1735]
}

def cell_7993 : Cell := { cellDefaults with
  domain := ⟨(6100000000000001 / 20000000000000000 : ℚ), (6101250000000001 / 20000000000000000 : ℚ)⟩
  r := (39941788926929 / 50000000000000 : ℚ)
  w := (17333084966771 / 10000000000000 : ℚ)
  center := (6100625000000001 / 20000000000000000 : ℚ)
  supportValue := (1879193668724477 / 2500000000000000 : ℚ)
  supportSlope := (-5842913198797817 / 1000000000000000 : ℚ)
  oldCenter := (1879193668724477 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_764
  oldLo := (7511173184357541 / 10000000000000000 : ℚ)
  oldHi := (94 / 125 : ℚ)
  oldPieces := [piece_1737, piece_1738]
}

def cell_7994 : Cell := { cellDefaults with
  domain := ⟨(6101250000000001 / 20000000000000000 : ℚ), (6102500000000001 / 20000000000000000 : ℚ)⟩
  r := (39941788926929 / 50000000000000 : ℚ)
  w := (17333084966771 / 10000000000000 : ℚ)
  center := (6101875000000001 / 20000000000000000 : ℚ)
  supportValue := (1878279710352591 / 2500000000000000 : ℚ)
  supportSlope := (-182465806485399 / 31250000000000 : ℚ)
  oldCenter := (1878279710352591 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_764
  oldLo := (7511173184357541 / 10000000000000000 : ℚ)
  oldHi := (37575000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1737]
}

def cell_7995 : Cell := { cellDefaults with
  domain := ⟨(6102500000000001 / 20000000000000000 : ℚ), (6103750000000001 / 20000000000000000 : ℚ)⟩
  r := (39941788926929 / 50000000000000 : ℚ)
  w := (17333084966771 / 10000000000000 : ℚ)
  center := (6103125000000001 / 20000000000000000 : ℚ)
  supportValue := (7509476134525963 / 10000000000000000 : ℚ)
  supportSlope := (-1458685507539137 / 250000000000000 : ℚ)
  oldCenter := (7509476134525963 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_764
  oldLo := (37525000000000003 / 50000000000000000 : ℚ)
  oldHi := (37575000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1735, piece_1736, piece_1737]
}

def cell_7996 : Cell := { cellDefaults with
  domain := ⟨(6103750000000001 / 20000000000000000 : ℚ), (6105000000000001 / 20000000000000000 : ℚ)⟩
  r := (39941788926929 / 50000000000000 : ℚ)
  w := (17333084966771 / 10000000000000 : ℚ)
  center := (6104375000000001 / 20000000000000000 : ℚ)
  supportValue := (7505830708682057 / 10000000000000000 : ℚ)
  supportSlope := (-91102687149347 / 15625000000000 : ℚ)
  oldCenter := (7505830708682057 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_764
  oldLo := (3 / 4 : ℚ)
  oldHi := (751 / 1000 : ℚ)
  oldPieces := [piece_1734, piece_1735]
}

def cell_7997 : Cell := { cellDefaults with
  domain := ⟨(6105000000000001 / 20000000000000000 : ℚ), (6106250000000001 / 20000000000000000 : ℚ)⟩
  r := (39941788926929 / 50000000000000 : ℚ)
  w := (17333084966771 / 10000000000000 : ℚ)
  center := (6105625000000001 / 20000000000000000 : ℚ)
  supportValue := (3751091296811977 / 5000000000000000 : ℚ)
  supportSlope := (-11652901188334397 / 2000000000000000 : ℚ)
  oldCenter := (3751091296811977 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_764
  oldLo := (3 / 4 : ℚ)
  oldHi := (37525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1734]
}

def cell_7998 : Cell := { cellDefaults with
  domain := ⟨(6106250000000001 / 20000000000000000 : ℚ), (6107500000000001 / 20000000000000000 : ℚ)⟩
  r := (39941788926929 / 50000000000000 : ℚ)
  w := (17333084966771 / 10000000000000 : ℚ)
  center := (6106875000000001 / 20000000000000000 : ℚ)
  supportValue := (3749273792867727 / 5000000000000000 : ℚ)
  supportSlope := (-1455603793689697 / 250000000000000 : ℚ)
  oldCenter := (3749273792867727 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_764
  oldLo := (37475000000000003 / 50000000000000000 : ℚ)
  oldHi := (37525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1733, piece_1734]
}

def cell_7999 : Cell := { cellDefaults with
  domain := ⟨(6107500000000001 / 20000000000000000 : ℚ), (6108750000000001 / 20000000000000000 : ℚ)⟩
  r := (39941788926929 / 50000000000000 : ℚ)
  w := (17333084966771 / 10000000000000 : ℚ)
  center := (6108125000000001 / 20000000000000000 : ℚ)
  supportValue := (1873726170704683 / 2500000000000000 : ℚ)
  supportSlope := (-11636503861971903 / 2000000000000000 : ℚ)
  oldCenter := (1873726170704683 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_764
  oldLo := (749 / 1000 : ℚ)
  oldHi := (3 / 4 : ℚ)
  oldPieces := [piece_1732, piece_1733]
}

theorem check_7950 : cell_7950.check = true := by
  decide +kernel

theorem check_7951 : cell_7951.check = true := by
  decide +kernel

theorem check_7952 : cell_7952.check = true := by
  decide +kernel

theorem check_7953 : cell_7953.check = true := by
  decide +kernel

theorem check_7954 : cell_7954.check = true := by
  decide +kernel

theorem check_7955 : cell_7955.check = true := by
  decide +kernel

theorem check_7956 : cell_7956.check = true := by
  decide +kernel

theorem check_7957 : cell_7957.check = true := by
  decide +kernel

theorem check_7958 : cell_7958.check = true := by
  decide +kernel

theorem check_7959 : cell_7959.check = true := by
  decide +kernel

theorem check_7960 : cell_7960.check = true := by
  decide +kernel

theorem check_7961 : cell_7961.check = true := by
  decide +kernel

theorem check_7962 : cell_7962.check = true := by
  decide +kernel

theorem check_7963 : cell_7963.check = true := by
  decide +kernel

theorem check_7964 : cell_7964.check = true := by
  decide +kernel

theorem check_7965 : cell_7965.check = true := by
  decide +kernel

theorem check_7966 : cell_7966.check = true := by
  decide +kernel

theorem check_7967 : cell_7967.check = true := by
  decide +kernel

theorem check_7968 : cell_7968.check = true := by
  decide +kernel

theorem check_7969 : cell_7969.check = true := by
  decide +kernel

theorem check_7970 : cell_7970.check = true := by
  decide +kernel

theorem check_7971 : cell_7971.check = true := by
  decide +kernel

theorem check_7972 : cell_7972.check = true := by
  decide +kernel

theorem check_7973 : cell_7973.check = true := by
  decide +kernel

theorem check_7974 : cell_7974.check = true := by
  decide +kernel

theorem check_7975 : cell_7975.check = true := by
  decide +kernel

theorem check_7976 : cell_7976.check = true := by
  decide +kernel

theorem check_7977 : cell_7977.check = true := by
  decide +kernel

theorem check_7978 : cell_7978.check = true := by
  decide +kernel

theorem check_7979 : cell_7979.check = true := by
  decide +kernel

theorem check_7980 : cell_7980.check = true := by
  decide +kernel

theorem check_7981 : cell_7981.check = true := by
  decide +kernel

theorem check_7982 : cell_7982.check = true := by
  decide +kernel

theorem check_7983 : cell_7983.check = true := by
  decide +kernel

theorem check_7984 : cell_7984.check = true := by
  decide +kernel

theorem check_7985 : cell_7985.check = true := by
  decide +kernel

theorem check_7986 : cell_7986.check = true := by
  decide +kernel

theorem check_7987 : cell_7987.check = true := by
  decide +kernel

theorem check_7988 : cell_7988.check = true := by
  decide +kernel

theorem check_7989 : cell_7989.check = true := by
  decide +kernel

theorem check_7990 : cell_7990.check = true := by
  decide +kernel

theorem check_7991 : cell_7991.check = true := by
  decide +kernel

theorem check_7992 : cell_7992.check = true := by
  decide +kernel

theorem check_7993 : cell_7993.check = true := by
  decide +kernel

theorem check_7994 : cell_7994.check = true := by
  decide +kernel

theorem check_7995 : cell_7995.check = true := by
  decide +kernel

theorem check_7996 : cell_7996.check = true := by
  decide +kernel

theorem check_7997 : cell_7997.check = true := by
  decide +kernel

theorem check_7998 : cell_7998.check = true := by
  decide +kernel

theorem check_7999 : cell_7999.check = true := by
  decide +kernel

def cells : List Cell := [cell_7950, cell_7951, cell_7952, cell_7953, cell_7954, cell_7955, cell_7956, cell_7957, cell_7958, cell_7959, cell_7960, cell_7961, cell_7962, cell_7963, cell_7964, cell_7965, cell_7966, cell_7967, cell_7968, cell_7969, cell_7970, cell_7971, cell_7972, cell_7973, cell_7974, cell_7975, cell_7976, cell_7977, cell_7978, cell_7979, cell_7980, cell_7981, cell_7982, cell_7983, cell_7984, cell_7985, cell_7986, cell_7987, cell_7988, cell_7989, cell_7990, cell_7991, cell_7992, cell_7993, cell_7994, cell_7995, cell_7996, cell_7997, cell_7998, cell_7999]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7950, check_7951, check_7952, check_7953, check_7954, check_7955, check_7956, check_7957, check_7958, check_7959, check_7960, check_7961, check_7962, check_7963, check_7964, check_7965, check_7966, check_7967, check_7968, check_7969, check_7970, check_7971, check_7972, check_7973, check_7974, check_7975, check_7976, check_7977, check_7978, check_7979, check_7980, check_7981, check_7982, check_7983, check_7984, check_7985, check_7986, check_7987, check_7988, check_7989, check_7990, check_7991, check_7992, check_7993, check_7994, check_7995, check_7996, check_7997, check_7998, check_7999, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0159

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0159
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0159
open AnalyticBounds.ExpressionCertificate

theorem linked_7950 : Linked cell_7950 pieces := by
  link_source cell_7950 with piece_757 using piece_757_mem, piece_1753_mem

theorem linked_7951 : Linked cell_7951 pieces := by
  link_source cell_7951 with piece_757 using piece_757_mem, ⟨piece_1752_mem, piece_1753_mem⟩

theorem linked_7952 : Linked cell_7952 pieces := by
  link_source cell_7952 with piece_757 using piece_757_mem, ⟨piece_1751_mem, piece_1752_mem⟩

theorem linked_7953 : Linked cell_7953 pieces := by
  link_source cell_7953 with piece_758 using piece_758_mem, ⟨piece_1753_mem, piece_1754_mem⟩

theorem linked_7954 : Linked cell_7954 pieces := by
  link_source cell_7954 with piece_758 using piece_758_mem, piece_1753_mem

theorem linked_7955 : Linked cell_7955 pieces := by
  link_source cell_7955 with piece_758 using piece_758_mem, ⟨piece_1752_mem, piece_1753_mem⟩

theorem linked_7956 : Linked cell_7956 pieces := by
  link_source cell_7956 with piece_758 using piece_758_mem, ⟨piece_1751_mem, piece_1752_mem⟩

theorem linked_7957 : Linked cell_7957 pieces := by
  link_source cell_7957 with piece_758 using piece_758_mem, ⟨piece_1750_mem, piece_1751_mem⟩

theorem linked_7958 : Linked cell_7958 pieces := by
  link_source cell_7958 with piece_758 using piece_758_mem, piece_1750_mem

theorem linked_7959 : Linked cell_7959 pieces := by
  link_source cell_7959 with piece_758 using piece_758_mem, ⟨piece_1749_mem, piece_1750_mem⟩

theorem linked_7960 : Linked cell_7960 pieces := by
  link_source cell_7960 with piece_758 using piece_758_mem, ⟨piece_1747_mem, ⟨piece_1748_mem, piece_1749_mem⟩⟩

theorem linked_7961 : Linked cell_7961 pieces := by
  link_source cell_7961 with piece_759 using piece_759_mem, ⟨piece_1750_mem, piece_1751_mem⟩

theorem linked_7962 : Linked cell_7962 pieces := by
  link_source cell_7962 with piece_759 using piece_759_mem, piece_1750_mem

theorem linked_7963 : Linked cell_7963 pieces := by
  link_source cell_7963 with piece_760 using piece_760_mem, ⟨piece_1749_mem, piece_1750_mem⟩

theorem linked_7964 : Linked cell_7964 pieces := by
  link_source cell_7964 with piece_760 using piece_760_mem, ⟨piece_1747_mem, ⟨piece_1748_mem, piece_1749_mem⟩⟩

theorem linked_7965 : Linked cell_7965 pieces := by
  link_source cell_7965 with piece_760 using piece_760_mem, ⟨piece_1746_mem, piece_1747_mem⟩

theorem linked_7966 : Linked cell_7966 pieces := by
  link_source cell_7966 with piece_760 using piece_760_mem, piece_1746_mem

theorem linked_7967 : Linked cell_7967 pieces := by
  link_source cell_7967 with piece_760 using piece_760_mem, ⟨piece_1745_mem, piece_1746_mem⟩

theorem linked_7968 : Linked cell_7968 pieces := by
  link_source cell_7968 with piece_760 using piece_760_mem, ⟨piece_1744_mem, piece_1745_mem⟩

theorem linked_7969 : Linked cell_7969 pieces := by
  link_source cell_7969 with piece_761 using piece_761_mem, ⟨piece_1746_mem, piece_1747_mem⟩

theorem linked_7970 : Linked cell_7970 pieces := by
  link_source cell_7970 with piece_761 using piece_761_mem, piece_1746_mem

theorem linked_7971 : Linked cell_7971 pieces := by
  link_source cell_7971 with piece_761 using piece_761_mem, ⟨piece_1745_mem, piece_1746_mem⟩

theorem linked_7972 : Linked cell_7972 pieces := by
  link_source cell_7972 with piece_761 using piece_761_mem, ⟨piece_1744_mem, piece_1745_mem⟩

theorem linked_7973 : Linked cell_7973 pieces := by
  link_source cell_7973 with piece_761 using piece_761_mem, ⟨piece_1743_mem, piece_1744_mem⟩

theorem linked_7974 : Linked cell_7974 pieces := by
  link_source cell_7974 with piece_761 using piece_761_mem, piece_1743_mem

theorem linked_7975 : Linked cell_7975 pieces := by
  link_source cell_7975 with piece_761 using piece_761_mem, ⟨piece_1742_mem, piece_1743_mem⟩

theorem linked_7976 : Linked cell_7976 pieces := by
  link_source cell_7976 with piece_761 using piece_761_mem, ⟨piece_1741_mem, piece_1742_mem⟩

theorem linked_7977 : Linked cell_7977 pieces := by
  link_source cell_7977 with piece_762 using piece_762_mem, ⟨piece_1743_mem, piece_1744_mem⟩

theorem linked_7978 : Linked cell_7978 pieces := by
  link_source cell_7978 with piece_762 using piece_762_mem, piece_1743_mem

theorem linked_7979 : Linked cell_7979 pieces := by
  link_source cell_7979 with piece_762 using piece_762_mem, ⟨piece_1742_mem, piece_1743_mem⟩

theorem linked_7980 : Linked cell_7980 pieces := by
  link_source cell_7980 with piece_762 using piece_762_mem, ⟨piece_1741_mem, piece_1742_mem⟩

theorem linked_7981 : Linked cell_7981 pieces := by
  link_source cell_7981 with piece_762 using piece_762_mem, ⟨piece_1740_mem, piece_1741_mem⟩

theorem linked_7982 : Linked cell_7982 pieces := by
  link_source cell_7982 with piece_762 using piece_762_mem, piece_1740_mem

theorem linked_7983 : Linked cell_7983 pieces := by
  link_source cell_7983 with piece_762 using piece_762_mem, ⟨piece_1739_mem, piece_1740_mem⟩

theorem linked_7984 : Linked cell_7984 pieces := by
  link_source cell_7984 with piece_762 using piece_762_mem, ⟨piece_1738_mem, piece_1739_mem⟩

theorem linked_7985 : Linked cell_7985 pieces := by
  link_source cell_7985 with piece_763 using piece_763_mem, ⟨piece_1740_mem, piece_1741_mem⟩

theorem linked_7986 : Linked cell_7986 pieces := by
  link_source cell_7986 with piece_763 using piece_763_mem, piece_1740_mem

theorem linked_7987 : Linked cell_7987 pieces := by
  link_source cell_7987 with piece_763 using piece_763_mem, ⟨piece_1739_mem, piece_1740_mem⟩

theorem linked_7988 : Linked cell_7988 pieces := by
  link_source cell_7988 with piece_763 using piece_763_mem, ⟨piece_1738_mem, piece_1739_mem⟩

theorem linked_7989 : Linked cell_7989 pieces := by
  link_source cell_7989 with piece_763 using piece_763_mem, piece_1738_mem

theorem linked_7990 : Linked cell_7990 pieces := by
  link_source cell_7990 with piece_763 using piece_763_mem, ⟨piece_1737_mem, piece_1738_mem⟩

theorem linked_7991 : Linked cell_7991 pieces := by
  link_source cell_7991 with piece_763 using piece_763_mem, ⟨piece_1735_mem, ⟨piece_1736_mem, piece_1737_mem⟩⟩

theorem linked_7992 : Linked cell_7992 pieces := by
  link_source cell_7992 with piece_763 using piece_763_mem, ⟨piece_1734_mem, piece_1735_mem⟩

theorem linked_7993 : Linked cell_7993 pieces := by
  link_source cell_7993 with piece_764 using piece_764_mem, ⟨piece_1737_mem, piece_1738_mem⟩

theorem linked_7994 : Linked cell_7994 pieces := by
  link_source cell_7994 with piece_764 using piece_764_mem, piece_1737_mem

theorem linked_7995 : Linked cell_7995 pieces := by
  link_source cell_7995 with piece_764 using piece_764_mem, ⟨piece_1735_mem, ⟨piece_1736_mem, piece_1737_mem⟩⟩

theorem linked_7996 : Linked cell_7996 pieces := by
  link_source cell_7996 with piece_764 using piece_764_mem, ⟨piece_1734_mem, piece_1735_mem⟩

theorem linked_7997 : Linked cell_7997 pieces := by
  link_source cell_7997 with piece_764 using piece_764_mem, piece_1734_mem

theorem linked_7998 : Linked cell_7998 pieces := by
  link_source cell_7998 with piece_764 using piece_764_mem, ⟨piece_1733_mem, piece_1734_mem⟩

theorem linked_7999 : Linked cell_7999 pieces := by
  link_source cell_7999 with piece_764 using piece_764_mem, ⟨piece_1732_mem, piece_1733_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0159.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0159.cells,List.forall_mem_cons]
  exact ⟨linked_7950, linked_7951, linked_7952, linked_7953, linked_7954, linked_7955, linked_7956, linked_7957, linked_7958, linked_7959, linked_7960, linked_7961, linked_7962, linked_7963, linked_7964, linked_7965, linked_7966, linked_7967, linked_7968, linked_7969, linked_7970, linked_7971, linked_7972, linked_7973, linked_7974, linked_7975, linked_7976, linked_7977, linked_7978, linked_7979, linked_7980, linked_7981, linked_7982, linked_7983, linked_7984, linked_7985, linked_7986, linked_7987, linked_7988, linked_7989, linked_7990, linked_7991, linked_7992, linked_7993, linked_7994, linked_7995, linked_7996, linked_7997, linked_7998, linked_7999, by simp⟩

theorem covered : covers (6046250000000001 / 20000000000000000 : ℚ) (6108750000000001 / 20000000000000000 : ℚ)
    (SourceCertificates.Chunk0159.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0159
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0160
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(6108750000000001 / 20000000000000000 : ℚ), (6110000000000001 / 20000000000000000 : ℚ)⟩
  branch := .left
  r := (79821726781409 / 100000000000000 : ℚ)
  w := (17323004500339 / 10000000000000 : ℚ)
  center := (6109375000000001 / 20000000000000000 : ℚ)
  supportValue := (1872818692798977 / 2500000000000000 : ℚ)
  supportSlope := (-5814090548099671 / 1000000000000000 : ℚ)
  oldCenter := (1872818692798977 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_765
  oldLo := (14970000000000001 / 20000000000000000 : ℚ)
  oldHi := (749 / 1000 : ℚ)
  oldPieces := [piece_1731, piece_1732]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8000 : Cell := { cellDefaults with
  r := (39941788926929 / 50000000000000 : ℚ)
  w := (17333084966771 / 10000000000000 : ℚ)
  newCoefficients := coefficients_764
  oldHi := (37475000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1731, piece_1732]
}

def cell_8001 : Cell := { cellDefaults with
  domain := ⟨(6110000000000001 / 20000000000000000 : ℚ), (6111250000000001 / 20000000000000000 : ℚ)⟩
  center := (6110625000000001 / 20000000000000000 : ℚ)
  supportValue := (7502072164637201 / 10000000000000000 : ℚ)
  supportSlope := (-5822103098328313 / 1000000000000000 : ℚ)
  oldCenter := (7502072164637201 / 10000000000000000 : ℚ)
  oldLo := (3 / 4 : ℚ)
  oldHi := (37525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1734]
}

def cell_8002 : Cell := { cellDefaults with
  domain := ⟨(6111250000000001 / 20000000000000000 : ℚ), (6112500000000001 / 20000000000000000 : ℚ)⟩
  center := (6111875000000001 / 20000000000000000 : ℚ)
  supportValue := (7498439861381919 / 10000000000000000 : ℚ)
  supportSlope := (-581809340997097 / 100000000000000 : ℚ)
  oldCenter := (7498439861381919 / 10000000000000000 : ℚ)
  oldLo := (37475000000000003 / 50000000000000000 : ℚ)
  oldHi := (37525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1733, piece_1734]
}

def cell_8003 : Cell := { cellDefaults with
  domain := ⟨(6112500000000001 / 20000000000000000 : ℚ), (6113750000000001 / 20000000000000000 : ℚ)⟩
  center := (6113125000000001 / 20000000000000000 : ℚ)
  supportValue := (3747399828117897 / 5000000000000000 : ℚ)
  supportSlope := (-5813941383586041 / 1000000000000000 : ℚ)
  oldCenter := (3747399828117897 / 5000000000000000 : ℚ)
  oldLo := (749 / 1000 : ℚ)
  oldHi := (3 / 4 : ℚ)
  oldPieces := [piece_1732, piece_1733]
}

def cell_8004 : Cell := { cellDefaults with
  domain := ⟨(6113750000000001 / 20000000000000000 : ℚ), (6115000000000001 / 20000000000000000 : ℚ)⟩
  center := (6114375000000001 / 20000000000000000 : ℚ)
  supportValue := (3745586221790169 / 5000000000000000 : ℚ)
  supportSlope := (-5809791212797677 / 1000000000000000 : ℚ)
  oldCenter := (3745586221790169 / 5000000000000000 : ℚ)
  oldHi := (37475000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1731, piece_1732]
}

def cell_8005 : Cell := { cellDefaults with
  domain := ⟨(6115000000000001 / 20000000000000000 : ℚ), (6116250000000001 / 20000000000000000 : ℚ)⟩
  center := (6115625000000001 / 20000000000000000 : ℚ)
  supportValue := (116992770620429 / 156250000000000 : ℚ)
  supportSlope := (-362858573800251 / 62500000000000 : ℚ)
  oldCenter := (116992770620429 / 156250000000000 : ℚ)
  oldPieces := [piece_1731]
}

def cell_8006 : Cell := { cellDefaults with
  domain := ⟨(6116250000000001 / 20000000000000000 : ℚ), (6117500000000001 / 20000000000000000 : ℚ)⟩
  center := (6116875000000001 / 20000000000000000 : ℚ)
  supportValue := (3741957635052951 / 5000000000000000 : ℚ)
  supportSlope := (-11603353479053169 / 2000000000000000 : ℚ)
  oldCenter := (3741957635052951 / 5000000000000000 : ℚ)
  oldLo := (187 / 250 : ℚ)
  oldPieces := [piece_1730, piece_1731]
}

def cell_8007 : Cell := { cellDefaults with
  domain := ⟨(6117500000000001 / 20000000000000000 : ℚ), (6118750000000001 / 20000000000000000 : ℚ)⟩
  center := (6118125000000001 / 20000000000000000 : ℚ)
  supportValue := (1496057062083037 / 2000000000000000 : ℚ)
  supportSlope := (-463802674825331 / 80000000000000 : ℚ)
  oldCenter := (1496057062083037 / 2000000000000000 : ℚ)
  oldLo := (14950000000000001 / 20000000000000000 : ℚ)
  oldHi := (14970000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1729, piece_1730]
}

def cell_8008 : Cell := { cellDefaults with
  domain := ⟨(6118750000000001 / 20000000000000000 : ℚ), (6120000000000001 / 20000000000000000 : ℚ)⟩
  center := (6119375000000001 / 20000000000000000 : ℚ)
  supportValue := (116822942541231 / 156250000000000 : ℚ)
  supportSlope := (-1448347978869613 / 250000000000000 : ℚ)
  oldCenter := (116822942541231 / 156250000000000 : ℚ)
  oldLo := (747 / 1000 : ℚ)
  oldHi := (187 / 250 : ℚ)
  oldPieces := [piece_1728, piece_1729]
}

def cell_8009 : Cell := { cellDefaults with
  domain := ⟨(6120000000000001 / 20000000000000000 : ℚ), (6121250000000001 / 20000000000000000 : ℚ)⟩
  r := (127615985589 / 160000000000 : ℚ)
  w := (692517794401 / 400000000000 : ℚ)
  center := (6120625000000001 / 20000000000000000 : ℚ)
  supportValue := (7487432842629923 / 10000000000000000 : ℚ)
  supportSlope := (-725177016588141 / 125000000000000 : ℚ)
  oldCenter := (7487432842629923 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_766
  oldPieces := [piece_1731]
}

def cell_8010 : Cell := { cellDefaults with
  domain := ⟨(6121250000000001 / 20000000000000000 : ℚ), (6122500000000001 / 20000000000000000 : ℚ)⟩
  r := (127615985589 / 160000000000 : ℚ)
  w := (692517794401 / 400000000000 : ℚ)
  center := (6121875000000001 / 20000000000000000 : ℚ)
  supportValue := (3741906740776319 / 5000000000000000 : ℚ)
  supportSlope := (-1159476159973849 / 200000000000000 : ℚ)
  oldCenter := (3741906740776319 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_766
  oldLo := (187 / 250 : ℚ)
  oldPieces := [piece_1730, piece_1731]
}

def cell_8011 : Cell := { cellDefaults with
  domain := ⟨(6122500000000001 / 20000000000000000 : ℚ), (6123750000000001 / 20000000000000000 : ℚ)⟩
  r := (127615985589 / 160000000000 : ℚ)
  w := (692517794401 / 400000000000 : ℚ)
  center := (6123125000000001 / 20000000000000000 : ℚ)
  supportValue := (7480186211564399 / 10000000000000000 : ℚ)
  supportSlope := (-579324880165899 / 100000000000000 : ℚ)
  oldCenter := (7480186211564399 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_766
  oldLo := (14950000000000001 / 20000000000000000 : ℚ)
  oldHi := (14970000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1729, piece_1730]
}

def cell_8012 : Cell := { cellDefaults with
  domain := ⟨(6123750000000001 / 20000000000000000 : ℚ), (6125000000000001 / 20000000000000000 : ℚ)⟩
  r := (127615985589 / 160000000000 : ℚ)
  w := (692517794401 / 400000000000 : ℚ)
  center := (6124375000000001 / 20000000000000000 : ℚ)
  supportValue := (11682143590611 / 15625000000000 : ℚ)
  supportSlope := (-5789118577251173 / 1000000000000000 : ℚ)
  oldCenter := (11682143590611 / 15625000000000 : ℚ)
  newCoefficients := coefficients_766
  oldLo := (747 / 1000 : ℚ)
  oldHi := (187 / 250 : ℚ)
  oldPieces := [piece_1728, piece_1729]
}

def cell_8013 : Cell := { cellDefaults with
  domain := ⟨(6125000000000001 / 20000000000000000 : ℚ), (6126250000000001 / 20000000000000000 : ℚ)⟩
  r := (127615985589 / 160000000000 : ℚ)
  w := (692517794401 / 400000000000 : ℚ)
  center := (6125625000000001 / 20000000000000000 : ℚ)
  supportValue := (3736474848828893 / 5000000000000000 : ℚ)
  supportSlope := (-231405598539709 / 40000000000000 : ℚ)
  oldCenter := (3736474848828893 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_766
  oldLo := (747 / 1000 : ℚ)
  oldHi := (14950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1728]
}

def cell_8014 : Cell := { cellDefaults with
  domain := ⟨(6126250000000001 / 20000000000000000 : ℚ), (6127500000000001 / 20000000000000000 : ℚ)⟩
  r := (127615985589 / 160000000000 : ℚ)
  w := (692517794401 / 400000000000 : ℚ)
  center := (6126875000000001 / 20000000000000000 : ℚ)
  supportValue := (1867335134679689 / 2500000000000000 : ℚ)
  supportSlope := (-2890523341728013 / 500000000000000 : ℚ)
  oldCenter := (1867335134679689 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_766
  oldLo := (14930000000000001 / 20000000000000000 : ℚ)
  oldHi := (14950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1727, piece_1728]
}

def cell_8015 : Cell := { cellDefaults with
  domain := ⟨(6127500000000001 / 20000000000000000 : ℚ), (6128750000000001 / 20000000000000000 : ℚ)⟩
  r := (127615985589 / 160000000000 : ℚ)
  w := (692517794401 / 400000000000 : ℚ)
  center := (6128125000000001 / 20000000000000000 : ℚ)
  supportValue := (3732864333768379 / 5000000000000000 : ℚ)
  supportSlope := (-5776923246980203 / 1000000000000000 : ℚ)
  oldCenter := (3732864333768379 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_766
  oldLo := (373 / 500 : ℚ)
  oldHi := (747 / 1000 : ℚ)
  oldPieces := [piece_1726, piece_1727]
}

def cell_8016 : Cell := { cellDefaults with
  domain := ⟨(6128750000000001 / 20000000000000000 : ℚ), (6130000000000001 / 20000000000000000 : ℚ)⟩
  r := (127615985589 / 160000000000 : ℚ)
  w := (692517794401 / 400000000000 : ℚ)
  center := (6129375000000001 / 20000000000000000 : ℚ)
  supportValue := (3731057047191193 / 5000000000000000 : ℚ)
  supportSlope := (-72160528232601 / 12500000000000 : ℚ)
  oldCenter := (3731057047191193 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_766
  oldLo := (373 / 500 : ℚ)
  oldHi := (14930000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1726]
}

def cell_8017 : Cell := { cellDefaults with
  domain := ⟨(6130000000000001 / 20000000000000000 : ℚ), (6131250000000001 / 20000000000000000 : ℚ)⟩
  r := (19924592593503 / 25000000000000 : ℚ)
  w := (17302905070057 / 10000000000000 : ℚ)
  center := (6130625000000001 / 20000000000000000 : ℚ)
  supportValue := (7472851516281727 / 10000000000000000 : ℚ)
  supportSlope := (-361302823250087 / 62500000000000 : ℚ)
  oldCenter := (7472851516281727 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_767
  oldLo := (747 / 1000 : ℚ)
  oldHi := (14950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1728]
}

def cell_8018 : Cell := { cellDefaults with
  domain := ⟨(6131250000000001 / 20000000000000000 : ℚ), (6132500000000001 / 20000000000000000 : ℚ)⟩
  r := (19924592593503 / 25000000000000 : ℚ)
  w := (17302905070057 / 10000000000000 : ℚ)
  center := (6131875000000001 / 20000000000000000 : ℚ)
  supportValue := (7469245029906021 / 10000000000000000 : ℚ)
  supportSlope := (-5776776330161937 / 1000000000000000 : ℚ)
  oldCenter := (7469245029906021 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_767
  oldLo := (14930000000000001 / 20000000000000000 : ℚ)
  oldHi := (14950000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1727, piece_1728]
}

def cell_8019 : Cell := { cellDefaults with
  domain := ⟨(6132500000000001 / 20000000000000000 : ℚ), (6133750000000001 / 20000000000000000 : ℚ)⟩
  r := (19924592593503 / 25000000000000 : ℚ)
  w := (17302905070057 / 10000000000000 : ℚ)
  center := (6133125000000001 / 20000000000000000 : ℚ)
  supportValue := (3732817915934523 / 5000000000000000 : ℚ)
  supportSlope := (-230906571308509 / 40000000000000 : ℚ)
  oldCenter := (3732817915934523 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_767
  oldLo := (373 / 500 : ℚ)
  oldHi := (747 / 1000 : ℚ)
  oldPieces := [piece_1726, piece_1727]
}

def cell_8020 : Cell := { cellDefaults with
  domain := ⟨(6133750000000001 / 20000000000000000 : ℚ), (6135000000000001 / 20000000000000000 : ℚ)⟩
  r := (19924592593503 / 25000000000000 : ℚ)
  w := (17302905070057 / 10000000000000 : ℚ)
  center := (6134375000000001 / 20000000000000000 : ℚ)
  supportValue := (3731011958489549 / 5000000000000000 : ℚ)
  supportSlope := (-5768582971025893 / 1000000000000000 : ℚ)
  oldCenter := (3731011958489549 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_767
  oldLo := (373 / 500 : ℚ)
  oldHi := (14930000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1726]
}

def cell_8021 : Cell := { cellDefaults with
  domain := ⟨(6135000000000001 / 20000000000000000 : ℚ), (6136250000000001 / 20000000000000000 : ℚ)⟩
  r := (19924592593503 / 25000000000000 : ℚ)
  w := (17302905070057 / 10000000000000 : ℚ)
  center := (6135625000000001 / 20000000000000000 : ℚ)
  supportValue := (1864606254210641 / 2500000000000000 : ℚ)
  supportSlope := (-5764630212585331 / 1000000000000000 : ℚ)
  oldCenter := (1864606254210641 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_767
  oldLo := (7455865921787709 / 10000000000000000 : ℚ)
  oldHi := (14930000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1725, piece_1726]
}

def cell_8022 : Cell := { cellDefaults with
  domain := ⟨(6136250000000001 / 20000000000000000 : ℚ), (6137500000000001 / 20000000000000000 : ℚ)⟩
  r := (19924592593503 / 25000000000000 : ℚ)
  w := (17302905070057 / 10000000000000 : ℚ)
  center := (6136875000000001 / 20000000000000000 : ℚ)
  supportValue := (3727409120787211 / 5000000000000000 : ℚ)
  supportSlope := (-5760525410209993 / 1000000000000000 : ℚ)
  oldCenter := (3727409120787211 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_767
  oldLo := (149 / 200 : ℚ)
  oldHi := (373 / 500 : ℚ)
  oldPieces := [piece_1723, piece_1724, piece_1725]
}

def cell_8023 : Cell := { cellDefaults with
  domain := ⟨(6137500000000001 / 20000000000000000 : ℚ), (6138750000000001 / 20000000000000000 : ℚ)⟩
  r := (19924592593503 / 25000000000000 : ℚ)
  w := (17302905070057 / 10000000000000 : ℚ)
  center := (6138125000000001 / 20000000000000000 : ℚ)
  supportValue := (1490244873570591 / 2000000000000000 : ℚ)
  supportSlope := (-5756422129433503 / 1000000000000000 : ℚ)
  oldCenter := (1490244873570591 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_767
  oldLo := (14890000000000001 / 20000000000000000 : ℚ)
  oldHi := (14910000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1722, piece_1723]
}

def cell_8024 : Cell := { cellDefaults with
  domain := ⟨(6138750000000001 / 20000000000000000 : ℚ), (6140000000000001 / 20000000000000000 : ℚ)⟩
  r := (19924592593503 / 25000000000000 : ℚ)
  w := (17302905070057 / 10000000000000 : ℚ)
  center := (6139375000000001 / 20000000000000000 : ℚ)
  supportValue := (465476413184129 / 625000000000000 : ℚ)
  supportSlope := (-115048589631499 / 20000000000000 : ℚ)
  oldCenter := (465476413184129 / 625000000000000 : ℚ)
  newCoefficients := coefficients_767
  oldLo := (14890000000000001 / 20000000000000000 : ℚ)
  oldHi := (149 / 200 : ℚ)
  oldPieces := [piece_1722]
}

def cell_8025 : Cell := { cellDefaults with
  domain := ⟨(6140000000000001 / 20000000000000000 : ℚ), (6141250000000001 / 20000000000000000 : ℚ)⟩
  r := (79636864198251 / 100000000000000 : ℚ)
  w := (17292885901797 / 10000000000000 : ℚ)
  center := (6140625000000001 / 20000000000000000 : ℚ)
  supportValue := (7458332702691253 / 10000000000000000 : ℚ)
  supportSlope := (-5760373199358071 / 1000000000000000 : ℚ)
  oldCenter := (7458332702691253 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_768
  oldLo := (7455865921787709 / 10000000000000000 : ℚ)
  oldHi := (14930000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1725, piece_1726]
}

def cell_8026 : Cell := { cellDefaults with
  domain := ⟨(6141250000000001 / 20000000000000000 : ℚ), (6142500000000001 / 20000000000000000 : ℚ)⟩
  r := (79636864198251 / 100000000000000 : ℚ)
  w := (17292885901797 / 10000000000000 : ℚ)
  center := (6141875000000001 / 20000000000000000 : ℚ)
  supportValue := (372736429231037 / 500000000000000 : ℚ)
  supportSlope := (-1151255979010557 / 200000000000000 : ℚ)
  oldCenter := (372736429231037 / 500000000000000 : ℚ)
  newCoefficients := coefficients_768
  oldLo := (149 / 200 : ℚ)
  oldHi := (373 / 500 : ℚ)
  oldPieces := [piece_1723, piece_1724, piece_1725]
}

def cell_8027 : Cell := { cellDefaults with
  domain := ⟨(6142500000000001 / 20000000000000000 : ℚ), (6143750000000001 / 20000000000000000 : ℚ)⟩
  r := (79636864198251 / 100000000000000 : ℚ)
  w := (17292885901797 / 10000000000000 : ℚ)
  center := (6143125000000001 / 20000000000000000 : ℚ)
  supportValue := (1490227473599777 / 2000000000000000 : ℚ)
  supportSlope := (-1438047017595423 / 250000000000000 : ℚ)
  oldCenter := (1490227473599777 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_768
  oldLo := (14890000000000001 / 20000000000000000 : ℚ)
  oldHi := (14910000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1722, piece_1723]
}

def cell_8028 : Cell := { cellDefaults with
  domain := ⟨(6143750000000001 / 20000000000000000 : ℚ), (6145000000000001 / 20000000000000000 : ℚ)⟩
  r := (79636864198251 / 100000000000000 : ℚ)
  w := (17292885901797 / 10000000000000 : ℚ)
  center := (6144375000000001 / 20000000000000000 : ℚ)
  supportValue := (297901530150409 / 400000000000000 : ℚ)
  supportSlope := (-359262243182501 / 62500000000000 : ℚ)
  oldCenter := (297901530150409 / 400000000000000 : ℚ)
  newCoefficients := coefficients_768
  oldLo := (14890000000000001 / 20000000000000000 : ℚ)
  oldHi := (149 / 200 : ℚ)
  oldPieces := [piece_1722]
}

def cell_8029 : Cell := { cellDefaults with
  domain := ⟨(6145000000000001 / 20000000000000000 : ℚ), (6146250000000001 / 20000000000000000 : ℚ)⟩
  r := (79636864198251 / 100000000000000 : ℚ)
  w := (17292885901797 / 10000000000000 : ℚ)
  center := (6145625000000001 / 20000000000000000 : ℚ)
  supportValue := (7443952121439757 / 10000000000000000 : ℚ)
  supportSlope := (-1148839382534561 / 200000000000000 : ℚ)
  oldCenter := (7443952121439757 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_768
  oldLo := (74399999999999999 / 100000000000000000 : ℚ)
  oldHi := (149 / 200 : ℚ)
  oldPieces := [piece_1721, piece_1722]
}

def cell_8030 : Cell := { cellDefaults with
  domain := ⟨(6146250000000001 / 20000000000000000 : ℚ), (6147500000000001 / 20000000000000000 : ℚ)⟩
  r := (79636864198251 / 100000000000000 : ℚ)
  w := (17292885901797 / 10000000000000 : ℚ)
  center := (6146875000000001 / 20000000000000000 : ℚ)
  supportValue := (7440358092347447 / 10000000000000000 : ℚ)
  supportSlope := (-5740111696784567 / 1000000000000000 : ℚ)
  oldCenter := (7440358092347447 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_768
  oldLo := (14870000000000001 / 20000000000000000 : ℚ)
  oldHi := (14890000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1720, piece_1721]
}

def cell_8031 : Cell := { cellDefaults with
  domain := ⟨(6147500000000001 / 20000000000000000 : ℚ), (6148750000000001 / 20000000000000000 : ℚ)⟩
  r := (79636864198251 / 100000000000000 : ℚ)
  w := (17292885901797 / 10000000000000 : ℚ)
  center := (6148125000000001 / 20000000000000000 : ℚ)
  supportValue := (7436776944899407 / 10000000000000000 : ℚ)
  supportSlope := (-5736028241891233 / 1000000000000000 : ℚ)
  oldCenter := (7436776944899407 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_768
  oldLo := (74299999999999999 / 100000000000000000 : ℚ)
  oldHi := (74399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1719, piece_1720]
}

def cell_8032 : Cell := { cellDefaults with
  domain := ⟨(6148750000000001 / 20000000000000000 : ℚ), (6150000000000001 / 20000000000000000 : ℚ)⟩
  r := (79636864198251 / 100000000000000 : ℚ)
  w := (17292885901797 / 10000000000000 : ℚ)
  center := (6149375000000001 / 20000000000000000 : ℚ)
  supportValue := (3716593968587561 / 5000000000000000 : ℚ)
  supportSlope := (-5732132110654931 / 1000000000000000 : ℚ)
  oldCenter := (3716593968587561 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_768
  oldLo := (74299999999999999 / 100000000000000000 : ℚ)
  oldHi := (14870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1719]
}

def cell_8033 : Cell := { cellDefaults with
  domain := ⟨(6150000000000001 / 20000000000000000 : ℚ), (6151250000000001 / 20000000000000000 : ℚ)⟩
  r := (79575473929811 / 100000000000000 : ℚ)
  w := (4320721639131 / 2500000000000 : ℚ)
  center := (6150625000000001 / 20000000000000000 : ℚ)
  supportValue := (3721932844669451 / 5000000000000000 : ℚ)
  supportSlope := (-2869982206588517 / 500000000000000 : ℚ)
  oldCenter := (3721932844669451 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_769
  oldLo := (74399999999999999 / 100000000000000000 : ℚ)
  oldHi := (149 / 200 : ℚ)
  oldPieces := [piece_1721, piece_1722]
}

def cell_8034 : Cell := { cellDefaults with
  domain := ⟨(6151250000000001 / 20000000000000000 : ℚ), (6152500000000001 / 20000000000000000 : ℚ)⟩
  r := (79575473929811 / 100000000000000 : ℚ)
  w := (4320721639131 / 2500000000000 : ℚ)
  center := (6151875000000001 / 20000000000000000 : ℚ)
  supportValue := (1860068577267743 / 2500000000000000 : ℚ)
  supportSlope := (-2867945335061961 / 500000000000000 : ℚ)
  oldCenter := (1860068577267743 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_769
  oldLo := (14870000000000001 / 20000000000000000 : ℚ)
  oldHi := (14890000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1720, piece_1721]
}

def cell_8035 : Cell := { cellDefaults with
  domain := ⟨(6152500000000001 / 20000000000000000 : ℚ), (6153750000000001 / 20000000000000000 : ℚ)⟩
  r := (79575473929811 / 100000000000000 : ℚ)
  w := (4320721639131 / 2500000000000 : ℚ)
  center := (6153125000000001 / 20000000000000000 : ℚ)
  supportValue := (7436695796028269 / 10000000000000000 : ℚ)
  supportSlope := (-114636373559307 / 20000000000000 : ℚ)
  oldCenter := (7436695796028269 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_769
  oldLo := (74299999999999999 / 100000000000000000 : ℚ)
  oldHi := (74399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1719, piece_1720]
}

def cell_8036 : Cell := { cellDefaults with
  domain := ⟨(6153750000000001 / 20000000000000000 : ℚ), (6155000000000001 / 20000000000000000 : ℚ)⟩
  r := (79575473929811 / 100000000000000 : ℚ)
  w := (4320721639131 / 2500000000000 : ℚ)
  center := (6154375000000001 / 20000000000000000 : ℚ)
  supportValue := (7433109415661471 / 10000000000000000 : ℚ)
  supportSlope := (-5727923719977213 / 1000000000000000 : ℚ)
  oldCenter := (7433109415661471 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_769
  oldLo := (74299999999999999 / 100000000000000000 : ℚ)
  oldHi := (14870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1719]
}

def cell_8037 : Cell := { cellDefaults with
  domain := ⟨(6155000000000001 / 20000000000000000 : ℚ), (6156250000000001 / 20000000000000000 : ℚ)⟩
  r := (79575473929811 / 100000000000000 : ℚ)
  w := (4320721639131 / 2500000000000 : ℚ)
  center := (6155625000000001 / 20000000000000000 : ℚ)
  supportValue := (928691347990343 / 1250000000000000 : ℚ)
  supportSlope := (-5723870116749907 / 1000000000000000 : ℚ)
  oldCenter := (928691347990343 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_769
  oldLo := (14850000000000001 / 20000000000000000 : ℚ)
  oldHi := (14870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1718, piece_1719]
}

def cell_8038 : Cell := { cellDefaults with
  domain := ⟨(6156250000000001 / 20000000000000000 : ℚ), (6157500000000001 / 20000000000000000 : ℚ)⟩
  r := (79575473929811 / 100000000000000 : ℚ)
  w := (4320721639131 / 2500000000000 : ℚ)
  center := (6156875000000001 / 20000000000000000 : ℚ)
  supportValue := (3712979906412991 / 5000000000000000 : ℚ)
  supportSlope := (-2859902475437437 / 500000000000000 : ℚ)
  oldCenter := (3712979906412991 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_769
  oldLo := (74199999999999999 / 100000000000000000 : ℚ)
  oldHi := (74299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1717, piece_1718]
}

def cell_8039 : Cell := { cellDefaults with
  domain := ⟨(6157500000000001 / 20000000000000000 : ℚ), (6158750000000001 / 20000000000000000 : ℚ)⟩
  r := (79575473929811 / 100000000000000 : ℚ)
  w := (4320721639131 / 2500000000000 : ℚ)
  center := (6158125000000001 / 20000000000000000 : ℚ)
  supportValue := (742238094608153 / 1000000000000000 : ℚ)
  supportSlope := (-5715820572429919 / 1000000000000000 : ℚ)
  oldCenter := (742238094608153 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_769
  oldLo := (74199999999999999 / 100000000000000000 : ℚ)
  oldHi := (14850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1717]
}

def cell_8040 : Cell := { cellDefaults with
  domain := ⟨(6158750000000001 / 20000000000000000 : ℚ), (6160000000000001 / 20000000000000000 : ℚ)⟩
  r := (79575473929811 / 100000000000000 : ℚ)
  w := (4320721639131 / 2500000000000 : ℚ)
  center := (6159375000000001 / 20000000000000000 : ℚ)
  supportValue := (7418815009332831 / 10000000000000000 : ℚ)
  supportSlope := (-89247987294927 / 15625000000000 : ℚ)
  oldCenter := (7418815009332831 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_769
  oldLo := (14830000000000001 / 20000000000000000 : ℚ)
  oldHi := (14850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1716, piece_1717]
}

def cell_8041 : Cell := { cellDefaults with
  domain := ⟨(6160000000000001 / 20000000000000000 : ℚ), (49290000000000007 / 160000000000000000 : ℚ)⟩
  r := (79514196704909 / 100000000000000 : ℚ)
  w := (17272908464079 / 10000000000000 : ℚ)
  center := (19714000000000003 / 64000000000000000 : ℚ)
  supportValue := (58042576621601 / 78125000000000 : ℚ)
  supportSlope := (-1429916317510803 / 250000000000000 : ℚ)
  oldCenter := (58042576621601 / 78125000000000 : ℚ)
  newCoefficients := coefficients_770
  oldLo := (14850000000000001 / 20000000000000000 : ℚ)
  oldHi := (14870000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1718, piece_1719]
}

def cell_8042 : Cell := { cellDefaults with
  domain := ⟨(49290000000000007 / 160000000000000000 : ℚ), (24650000000000003 / 80000000000000000 : ℚ)⟩
  r := (79514196704909 / 100000000000000 : ℚ)
  w := (17272908464079 / 10000000000000 : ℚ)
  center := (98590000000000013 / 320000000000000000 : ℚ)
  supportValue := (1485176293605833 / 2000000000000000 : ℚ)
  supportSlope := (-1428902451848267 / 250000000000000 : ℚ)
  oldCenter := (1485176293605833 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_770
  oldLo := (74199999999999999 / 100000000000000000 : ℚ)
  oldHi := (74299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1717, piece_1718]
}

def cell_8043 : Cell := { cellDefaults with
  domain := ⟨(24650000000000003 / 80000000000000000 : ℚ), (9862000000000001 / 32000000000000000 : ℚ)⟩
  r := (79514196704909 / 100000000000000 : ℚ)
  w := (17272908464079 / 10000000000000 : ℚ)
  center := (98610000000000011 / 320000000000000000 : ℚ)
  supportValue := (927788152521963 / 1250000000000000 : ℚ)
  supportSlope := (-571162520509873 / 100000000000000 : ℚ)
  oldCenter := (927788152521963 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_770
  oldLo := (74199999999999999 / 100000000000000000 : ℚ)
  oldHi := (14850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1717]
}

def cell_8044 : Cell := { cellDefaults with
  domain := ⟨(9862000000000001 / 32000000000000000 : ℚ), (12330000000000001 / 40000000000000000 : ℚ)⟩
  r := (79514196704909 / 100000000000000 : ℚ)
  w := (17272908464079 / 10000000000000 : ℚ)
  center := (98630000000000009 / 320000000000000000 : ℚ)
  supportValue := (7418741896155423 / 10000000000000000 : ℚ)
  supportSlope := (-2853847870550937 / 500000000000000 : ℚ)
  oldCenter := (7418741896155423 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_770
  oldLo := (14830000000000001 / 20000000000000000 : ℚ)
  oldHi := (14850000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1716, piece_1717]
}

def cell_8045 : Cell := { cellDefaults with
  domain := ⟨(12330000000000001 / 40000000000000000 : ℚ), (49330000000000003 / 160000000000000000 : ℚ)⟩
  r := (79514196704909 / 100000000000000 : ℚ)
  w := (17272908464079 / 10000000000000 : ℚ)
  center := (98650000000000007 / 320000000000000000 : ℚ)
  supportValue := (7415170703337213 / 10000000000000000 : ℚ)
  supportSlope := (-11407293776103419 / 2000000000000000 : ℚ)
  oldCenter := (7415170703337213 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_770
  oldLo := (74099999999999999 / 100000000000000000 : ℚ)
  oldHi := (74199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1715, piece_1716]
}

def cell_8046 : Cell := { cellDefaults with
  domain := ⟨(49330000000000003 / 160000000000000000 : ℚ), (24670000000000001 / 80000000000000000 : ℚ)⟩
  r := (79514196704909 / 100000000000000 : ℚ)
  w := (17272908464079 / 10000000000000 : ℚ)
  center := (19734000000000001 / 64000000000000000 : ℚ)
  supportValue := (1482322463215677 / 2000000000000000 : ℚ)
  supportSlope := (-5699599839961281 / 1000000000000000 : ℚ)
  oldCenter := (1482322463215677 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_770
  oldLo := (14810000000000001 / 20000000000000000 : ℚ)
  oldHi := (14830000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1714, piece_1715]
}

def cell_8047 : Cell := { cellDefaults with
  domain := ⟨(24670000000000001 / 80000000000000000 : ℚ), (49350000000000001 / 160000000000000000 : ℚ)⟩
  r := (79514196704909 / 100000000000000 : ℚ)
  w := (17272908464079 / 10000000000000 : ℚ)
  center := (98690000000000003 / 320000000000000000 : ℚ)
  supportValue := (7408046081034287 / 10000000000000000 : ℚ)
  supportSlope := (-56957238594363 / 10000000000000 : ℚ)
  oldCenter := (7408046081034287 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_770
  oldLo := (14810000000000001 / 20000000000000000 : ℚ)
  oldHi := (74099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1714]
}

def cell_8048 : Cell := { cellDefaults with
  domain := ⟨(49350000000000001 / 160000000000000000 : ℚ), (617 / 2000 : ℚ)⟩
  r := (79514196704909 / 100000000000000 : ℚ)
  w := (17272908464079 / 10000000000000 : ℚ)
  center := (98710000000000001 / 320000000000000000 : ℚ)
  supportValue := (3702243780723617 / 5000000000000000 : ℚ)
  supportSlope := (-1138341026013137 / 200000000000000 : ℚ)
  oldCenter := (3702243780723617 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_770
  oldLo := (7400558659217877 / 10000000000000000 : ℚ)
  oldHi := (74099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1713, piece_1714]
}

def cell_8049 : Cell := { cellDefaults with
  domain := ⟨(617 / 2000 : ℚ), (30857960893854747 / 100000000000000000 : ℚ)⟩
  r := (15890606475229 / 20000000000000 : ℚ)
  w := (4315737582303 / 2500000000000 : ℚ)
  center := (61707960893854747 / 200000000000000000 : ℚ)
  supportValue := (7414613353921081 / 10000000000000000 : ℚ)
  supportSlope := (-712365799090469 / 125000000000000 : ℚ)
  oldCenter := (7414613353921081 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_771
  oldLo := (74099999999999999 / 100000000000000000 : ℚ)
  oldHi := (74199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1715, piece_1716]
}

theorem check_8000 : cell_8000.check = true := by
  decide +kernel

theorem check_8001 : cell_8001.check = true := by
  decide +kernel

theorem check_8002 : cell_8002.check = true := by
  decide +kernel

theorem check_8003 : cell_8003.check = true := by
  decide +kernel

theorem check_8004 : cell_8004.check = true := by
  decide +kernel

theorem check_8005 : cell_8005.check = true := by
  decide +kernel

theorem check_8006 : cell_8006.check = true := by
  decide +kernel

theorem check_8007 : cell_8007.check = true := by
  decide +kernel

theorem check_8008 : cell_8008.check = true := by
  decide +kernel

theorem check_8009 : cell_8009.check = true := by
  decide +kernel

theorem check_8010 : cell_8010.check = true := by
  decide +kernel

theorem check_8011 : cell_8011.check = true := by
  decide +kernel

theorem check_8012 : cell_8012.check = true := by
  decide +kernel

theorem check_8013 : cell_8013.check = true := by
  decide +kernel

theorem check_8014 : cell_8014.check = true := by
  decide +kernel

theorem check_8015 : cell_8015.check = true := by
  decide +kernel

theorem check_8016 : cell_8016.check = true := by
  decide +kernel

theorem check_8017 : cell_8017.check = true := by
  decide +kernel

theorem check_8018 : cell_8018.check = true := by
  decide +kernel

theorem check_8019 : cell_8019.check = true := by
  decide +kernel

theorem check_8020 : cell_8020.check = true := by
  decide +kernel

theorem check_8021 : cell_8021.check = true := by
  decide +kernel

theorem check_8022 : cell_8022.check = true := by
  decide +kernel

theorem check_8023 : cell_8023.check = true := by
  decide +kernel

theorem check_8024 : cell_8024.check = true := by
  decide +kernel

theorem check_8025 : cell_8025.check = true := by
  decide +kernel

theorem check_8026 : cell_8026.check = true := by
  decide +kernel

theorem check_8027 : cell_8027.check = true := by
  decide +kernel

theorem check_8028 : cell_8028.check = true := by
  decide +kernel

theorem check_8029 : cell_8029.check = true := by
  decide +kernel

theorem check_8030 : cell_8030.check = true := by
  decide +kernel

theorem check_8031 : cell_8031.check = true := by
  decide +kernel

theorem check_8032 : cell_8032.check = true := by
  decide +kernel

theorem check_8033 : cell_8033.check = true := by
  decide +kernel

theorem check_8034 : cell_8034.check = true := by
  decide +kernel

theorem check_8035 : cell_8035.check = true := by
  decide +kernel

theorem check_8036 : cell_8036.check = true := by
  decide +kernel

theorem check_8037 : cell_8037.check = true := by
  decide +kernel

theorem check_8038 : cell_8038.check = true := by
  decide +kernel

theorem check_8039 : cell_8039.check = true := by
  decide +kernel

theorem check_8040 : cell_8040.check = true := by
  decide +kernel

theorem check_8041 : cell_8041.check = true := by
  decide +kernel

theorem check_8042 : cell_8042.check = true := by
  decide +kernel

theorem check_8043 : cell_8043.check = true := by
  decide +kernel

theorem check_8044 : cell_8044.check = true := by
  decide +kernel

theorem check_8045 : cell_8045.check = true := by
  decide +kernel

theorem check_8046 : cell_8046.check = true := by
  decide +kernel

theorem check_8047 : cell_8047.check = true := by
  decide +kernel

theorem check_8048 : cell_8048.check = true := by
  decide +kernel

theorem check_8049 : cell_8049.check = true := by
  decide +kernel

def cells : List Cell := [cell_8000, cell_8001, cell_8002, cell_8003, cell_8004, cell_8005, cell_8006, cell_8007, cell_8008, cell_8009, cell_8010, cell_8011, cell_8012, cell_8013, cell_8014, cell_8015, cell_8016, cell_8017, cell_8018, cell_8019, cell_8020, cell_8021, cell_8022, cell_8023, cell_8024, cell_8025, cell_8026, cell_8027, cell_8028, cell_8029, cell_8030, cell_8031, cell_8032, cell_8033, cell_8034, cell_8035, cell_8036, cell_8037, cell_8038, cell_8039, cell_8040, cell_8041, cell_8042, cell_8043, cell_8044, cell_8045, cell_8046, cell_8047, cell_8048, cell_8049]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8000, check_8001, check_8002, check_8003, check_8004, check_8005, check_8006, check_8007, check_8008, check_8009, check_8010, check_8011, check_8012, check_8013, check_8014, check_8015, check_8016, check_8017, check_8018, check_8019, check_8020, check_8021, check_8022, check_8023, check_8024, check_8025, check_8026, check_8027, check_8028, check_8029, check_8030, check_8031, check_8032, check_8033, check_8034, check_8035, check_8036, check_8037, check_8038, check_8039, check_8040, check_8041, check_8042, check_8043, check_8044, check_8045, check_8046, check_8047, check_8048, check_8049, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0160

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0160
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0160
open AnalyticBounds.ExpressionCertificate

theorem linked_8000 : Linked cell_8000 pieces := by
  link_source cell_8000 with piece_764 using piece_764_mem, ⟨piece_1731_mem, piece_1732_mem⟩

theorem linked_8001 : Linked cell_8001 pieces := by
  link_source cell_8001 with piece_765 using piece_765_mem, piece_1734_mem

theorem linked_8002 : Linked cell_8002 pieces := by
  link_source cell_8002 with piece_765 using piece_765_mem, ⟨piece_1733_mem, piece_1734_mem⟩

theorem linked_8003 : Linked cell_8003 pieces := by
  link_source cell_8003 with piece_765 using piece_765_mem, ⟨piece_1732_mem, piece_1733_mem⟩

theorem linked_8004 : Linked cell_8004 pieces := by
  link_source cell_8004 with piece_765 using piece_765_mem, ⟨piece_1731_mem, piece_1732_mem⟩

theorem linked_8005 : Linked cell_8005 pieces := by
  link_source cell_8005 with piece_765 using piece_765_mem, piece_1731_mem

theorem linked_8006 : Linked cell_8006 pieces := by
  link_source cell_8006 with piece_765 using piece_765_mem, ⟨piece_1730_mem, piece_1731_mem⟩

theorem linked_8007 : Linked cell_8007 pieces := by
  link_source cell_8007 with piece_765 using piece_765_mem, ⟨piece_1729_mem, piece_1730_mem⟩

theorem linked_8008 : Linked cell_8008 pieces := by
  link_source cell_8008 with piece_765 using piece_765_mem, ⟨piece_1728_mem, piece_1729_mem⟩

theorem linked_8009 : Linked cell_8009 pieces := by
  link_source cell_8009 with piece_766 using piece_766_mem, piece_1731_mem

theorem linked_8010 : Linked cell_8010 pieces := by
  link_source cell_8010 with piece_766 using piece_766_mem, ⟨piece_1730_mem, piece_1731_mem⟩

theorem linked_8011 : Linked cell_8011 pieces := by
  link_source cell_8011 with piece_766 using piece_766_mem, ⟨piece_1729_mem, piece_1730_mem⟩

theorem linked_8012 : Linked cell_8012 pieces := by
  link_source cell_8012 with piece_766 using piece_766_mem, ⟨piece_1728_mem, piece_1729_mem⟩

theorem linked_8013 : Linked cell_8013 pieces := by
  link_source cell_8013 with piece_766 using piece_766_mem, piece_1728_mem

theorem linked_8014 : Linked cell_8014 pieces := by
  link_source cell_8014 with piece_766 using piece_766_mem, ⟨piece_1727_mem, piece_1728_mem⟩

theorem linked_8015 : Linked cell_8015 pieces := by
  link_source cell_8015 with piece_766 using piece_766_mem, ⟨piece_1726_mem, piece_1727_mem⟩

theorem linked_8016 : Linked cell_8016 pieces := by
  link_source cell_8016 with piece_766 using piece_766_mem, piece_1726_mem

theorem linked_8017 : Linked cell_8017 pieces := by
  link_source cell_8017 with piece_767 using piece_767_mem, piece_1728_mem

theorem linked_8018 : Linked cell_8018 pieces := by
  link_source cell_8018 with piece_767 using piece_767_mem, ⟨piece_1727_mem, piece_1728_mem⟩

theorem linked_8019 : Linked cell_8019 pieces := by
  link_source cell_8019 with piece_767 using piece_767_mem, ⟨piece_1726_mem, piece_1727_mem⟩

theorem linked_8020 : Linked cell_8020 pieces := by
  link_source cell_8020 with piece_767 using piece_767_mem, piece_1726_mem

theorem linked_8021 : Linked cell_8021 pieces := by
  link_source cell_8021 with piece_767 using piece_767_mem, ⟨piece_1725_mem, piece_1726_mem⟩

theorem linked_8022 : Linked cell_8022 pieces := by
  link_source cell_8022 with piece_767 using piece_767_mem, ⟨piece_1723_mem, ⟨piece_1724_mem, piece_1725_mem⟩⟩

theorem linked_8023 : Linked cell_8023 pieces := by
  link_source cell_8023 with piece_767 using piece_767_mem, ⟨piece_1722_mem, piece_1723_mem⟩

theorem linked_8024 : Linked cell_8024 pieces := by
  link_source cell_8024 with piece_767 using piece_767_mem, piece_1722_mem

theorem linked_8025 : Linked cell_8025 pieces := by
  link_source cell_8025 with piece_768 using piece_768_mem, ⟨piece_1725_mem, piece_1726_mem⟩

theorem linked_8026 : Linked cell_8026 pieces := by
  link_source cell_8026 with piece_768 using piece_768_mem, ⟨piece_1723_mem, ⟨piece_1724_mem, piece_1725_mem⟩⟩

theorem linked_8027 : Linked cell_8027 pieces := by
  link_source cell_8027 with piece_768 using piece_768_mem, ⟨piece_1722_mem, piece_1723_mem⟩

theorem linked_8028 : Linked cell_8028 pieces := by
  link_source cell_8028 with piece_768 using piece_768_mem, piece_1722_mem

theorem linked_8029 : Linked cell_8029 pieces := by
  link_source cell_8029 with piece_768 using piece_768_mem, ⟨piece_1721_mem, piece_1722_mem⟩

theorem linked_8030 : Linked cell_8030 pieces := by
  link_source cell_8030 with piece_768 using piece_768_mem, ⟨piece_1720_mem, piece_1721_mem⟩

theorem linked_8031 : Linked cell_8031 pieces := by
  link_source cell_8031 with piece_768 using piece_768_mem, ⟨piece_1719_mem, piece_1720_mem⟩

theorem linked_8032 : Linked cell_8032 pieces := by
  link_source cell_8032 with piece_768 using piece_768_mem, piece_1719_mem

theorem linked_8033 : Linked cell_8033 pieces := by
  link_source cell_8033 with piece_769 using piece_769_mem, ⟨piece_1721_mem, piece_1722_mem⟩

theorem linked_8034 : Linked cell_8034 pieces := by
  link_source cell_8034 with piece_769 using piece_769_mem, ⟨piece_1720_mem, piece_1721_mem⟩

theorem linked_8035 : Linked cell_8035 pieces := by
  link_source cell_8035 with piece_769 using piece_769_mem, ⟨piece_1719_mem, piece_1720_mem⟩

theorem linked_8036 : Linked cell_8036 pieces := by
  link_source cell_8036 with piece_769 using piece_769_mem, piece_1719_mem

theorem linked_8037 : Linked cell_8037 pieces := by
  link_source cell_8037 with piece_769 using piece_769_mem, ⟨piece_1718_mem, piece_1719_mem⟩

theorem linked_8038 : Linked cell_8038 pieces := by
  link_source cell_8038 with piece_769 using piece_769_mem, ⟨piece_1717_mem, piece_1718_mem⟩

theorem linked_8039 : Linked cell_8039 pieces := by
  link_source cell_8039 with piece_769 using piece_769_mem, piece_1717_mem

theorem linked_8040 : Linked cell_8040 pieces := by
  link_source cell_8040 with piece_769 using piece_769_mem, ⟨piece_1716_mem, piece_1717_mem⟩

theorem linked_8041 : Linked cell_8041 pieces := by
  link_source cell_8041 with piece_770 using piece_770_mem, ⟨piece_1718_mem, piece_1719_mem⟩

theorem linked_8042 : Linked cell_8042 pieces := by
  link_source cell_8042 with piece_770 using piece_770_mem, ⟨piece_1717_mem, piece_1718_mem⟩

theorem linked_8043 : Linked cell_8043 pieces := by
  link_source cell_8043 with piece_770 using piece_770_mem, piece_1717_mem

theorem linked_8044 : Linked cell_8044 pieces := by
  link_source cell_8044 with piece_770 using piece_770_mem, ⟨piece_1716_mem, piece_1717_mem⟩

theorem linked_8045 : Linked cell_8045 pieces := by
  link_source cell_8045 with piece_770 using piece_770_mem, ⟨piece_1715_mem, piece_1716_mem⟩

theorem linked_8046 : Linked cell_8046 pieces := by
  link_source cell_8046 with piece_770 using piece_770_mem, ⟨piece_1714_mem, piece_1715_mem⟩

theorem linked_8047 : Linked cell_8047 pieces := by
  link_source cell_8047 with piece_770 using piece_770_mem, piece_1714_mem

theorem linked_8048 : Linked cell_8048 pieces := by
  link_source cell_8048 with piece_770 using piece_770_mem, ⟨piece_1713_mem, piece_1714_mem⟩

theorem linked_8049 : Linked cell_8049 pieces := by
  link_source cell_8049 with piece_771 using piece_771_mem, ⟨piece_1715_mem, piece_1716_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0160.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0160.cells,List.forall_mem_cons]
  exact ⟨linked_8000, linked_8001, linked_8002, linked_8003, linked_8004, linked_8005, linked_8006, linked_8007, linked_8008, linked_8009, linked_8010, linked_8011, linked_8012, linked_8013, linked_8014, linked_8015, linked_8016, linked_8017, linked_8018, linked_8019, linked_8020, linked_8021, linked_8022, linked_8023, linked_8024, linked_8025, linked_8026, linked_8027, linked_8028, linked_8029, linked_8030, linked_8031, linked_8032, linked_8033, linked_8034, linked_8035, linked_8036, linked_8037, linked_8038, linked_8039, linked_8040, linked_8041, linked_8042, linked_8043, linked_8044, linked_8045, linked_8046, linked_8047, linked_8048, linked_8049, by simp⟩

theorem covered : covers (6108750000000001 / 20000000000000000 : ℚ) (30857960893854747 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0160.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0160
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0161
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(30857960893854747 / 100000000000000000 : ℚ), (15432960893854747 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (79391982211097 / 100000000000000 : ℚ)
  w := (3450602449589 / 2000000000000 : ℚ)
  center := (61723882681564241 / 200000000000000000 : ℚ)
  supportValue := (7410078527783089 / 10000000000000000 : ℚ)
  supportSlope := (-2846926709732237 / 500000000000000 : ℚ)
  oldCenter := (7410078527783089 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_773
  oldLo := (14790000000000001 / 20000000000000000 : ℚ)
  oldHi := (73999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1711, piece_1712, piece_1713]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8050 : Cell := { cellDefaults with
  r := (15890606475229 / 20000000000000 : ℚ)
  w := (4315737582303 / 2500000000000 : ℚ)
  newCoefficients := coefficients_771
  oldLo := (14810000000000001 / 20000000000000000 : ℚ)
  oldHi := (14830000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1714, piece_1715]
}

def cell_8051 : Cell := { cellDefaults with
  domain := ⟨(15432960893854747 / 50000000000000000 : ℚ), (30870460893854747 / 100000000000000000 : ℚ)⟩
  r := (15890606475229 / 20000000000000 : ℚ)
  w := (4315737582303 / 2500000000000 : ℚ)
  center := (61736382681564241 / 200000000000000000 : ℚ)
  supportValue := (1851628970796519 / 2500000000000000 : ℚ)
  supportSlope := (-711222645752163 / 125000000000000 : ℚ)
  oldCenter := (1851628970796519 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_772
  oldLo := (14810000000000001 / 20000000000000000 : ℚ)
  oldHi := (74099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1714]
}

def cell_8052 : Cell := { cellDefaults with
  domain := ⟨(30870460893854747 / 100000000000000000 : ℚ), (247 / 800 : ℚ)⟩
  r := (15890606475229 / 20000000000000 : ℚ)
  w := (4315737582303 / 2500000000000 : ℚ)
  center := (61745460893854747 / 200000000000000000 : ℚ)
  supportValue := (1850983462964731 / 2500000000000000 : ℚ)
  supportSlope := (-5687083805924043 / 1000000000000000 : ℚ)
  oldCenter := (1850983462964731 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_772
  oldLo := (7400558659217877 / 10000000000000000 : ℚ)
  oldHi := (74099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1713, piece_1714]
}

def cell_8053 : Cell := { cellDefaults with
  domain := ⟨(247 / 800 : ℚ), (4941 / 16000 : ℚ)⟩
  r := (15890606475229 / 20000000000000 : ℚ)
  w := (4315737582303 / 2500000000000 : ℚ)
  center := (9881 / 32000 : ℚ)
  supportValue := (370043604280251 / 500000000000000 : ℚ)
  supportSlope := (-5683526176518683 / 1000000000000000 : ℚ)
  oldCenter := (370043604280251 / 500000000000000 : ℚ)
  newCoefficients := coefficients_772
  oldHi := (14810000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1711, piece_1712, piece_1713]
}

def cell_8054 : Cell := { cellDefaults with
  domain := ⟨(4941 / 16000 : ℚ), (2471 / 8000 : ℚ)⟩
  r := (15890606475229 / 20000000000000 : ℚ)
  w := (4315737582303 / 2500000000000 : ℚ)
  center := (9883 / 32000 : ℚ)
  supportValue := (7397315897886809 / 10000000000000000 : ℚ)
  supportSlope := (-1419892958122837 / 250000000000000 : ℚ)
  oldCenter := (7397315897886809 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_772
  oldPieces := [piece_1711]
}

def cell_8055 : Cell := { cellDefaults with
  domain := ⟨(2471 / 8000 : ℚ), (4943 / 16000 : ℚ)⟩
  r := (15890606475229 / 20000000000000 : ℚ)
  w := (4315737582303 / 2500000000000 : ℚ)
  center := (1977 / 6400 : ℚ)
  supportValue := (7393772582154227 / 10000000000000000 : ℚ)
  supportSlope := (-5675669960133689 / 1000000000000000 : ℚ)
  oldCenter := (7393772582154227 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_772
  oldLo := (73899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1710, piece_1711]
}

def cell_8056 : Cell := { cellDefaults with
  domain := ⟨(4943 / 16000 : ℚ), (309 / 1000 : ℚ)⟩
  r := (15890606475229 / 20000000000000 : ℚ)
  w := (4315737582303 / 2500000000000 : ℚ)
  center := (9887 / 32000 : ℚ)
  supportValue := (7390221411480019 / 10000000000000000 : ℚ)
  supportSlope := (-5671647864478047 / 1000000000000000 : ℚ)
  oldCenter := (7390221411480019 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_772
  oldLo := (14770000000000001 / 20000000000000000 : ℚ)
  oldHi := (14790000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1709, piece_1710]
}

def cell_8057 : Cell := { cellDefaults with
  domain := ⟨(309 / 1000 : ℚ), (989 / 3200 : ℚ)⟩
  center := (9889 / 32000 : ℚ)
  supportValue := (370040133805597 / 500000000000000 : ℚ)
  supportSlope := (-5679367761569409 / 1000000000000000 : ℚ)
  oldCenter := (370040133805597 / 500000000000000 : ℚ)
  oldHi := (14810000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1711, piece_1712, piece_1713]
}

def cell_8058 : Cell := { cellDefaults with
  domain := ⟨(989 / 3200 : ℚ), (2473 / 8000 : ℚ)⟩
  center := (9891 / 32000 : ℚ)
  supportValue := (739724908393793 / 1000000000000000 : ℚ)
  supportSlope := (-113508310923649 / 20000000000000 : ℚ)
  oldCenter := (739724908393793 / 1000000000000000 : ℚ)
  oldPieces := [piece_1711]
}

def cell_8059 : Cell := { cellDefaults with
  domain := ⟨(2473 / 8000 : ℚ), (4947 / 16000 : ℚ)⟩
  center := (9893 / 32000 : ℚ)
  supportValue := (739370835683173 / 1000000000000000 : ℚ)
  supportSlope := (-2835766851431387 / 500000000000000 : ℚ)
  oldCenter := (739370835683173 / 1000000000000000 : ℚ)
  oldLo := (73899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1710, piece_1711]
}

def cell_8060 : Cell := { cellDefaults with
  domain := ⟨(4947 / 16000 : ℚ), (1237 / 4000 : ℚ)⟩
  center := (1979 / 6400 : ℚ)
  supportValue := (7390159773233079 / 10000000000000000 : ℚ)
  supportSlope := (-2833761255585543 / 500000000000000 : ℚ)
  oldCenter := (7390159773233079 / 10000000000000000 : ℚ)
  oldLo := (14770000000000001 / 20000000000000000 : ℚ)
  oldHi := (14790000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1709, piece_1710]
}

def cell_8061 : Cell := { cellDefaults with
  domain := ⟨(1237 / 4000 : ℚ), (4949 / 16000 : ℚ)⟩
  center := (9897 / 32000 : ℚ)
  supportValue := (230831997908159 / 312500000000000 : ℚ)
  supportSlope := (-1415878305757623 / 250000000000000 : ℚ)
  oldCenter := (230831997908159 / 312500000000000 : ℚ)
  oldLo := (73799999999999999 / 100000000000000000 : ℚ)
  oldHi := (73899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1708, piece_1709]
}

def cell_8062 : Cell := { cellDefaults with
  domain := ⟨(4949 / 16000 : ℚ), (99 / 320 : ℚ)⟩
  center := (9899 / 32000 : ℚ)
  supportValue := (7383080256514903 / 10000000000000000 : ℚ)
  supportSlope := (-5659682250108489 / 1000000000000000 : ℚ)
  oldCenter := (7383080256514903 / 10000000000000000 : ℚ)
  oldLo := (73799999999999999 / 100000000000000000 : ℚ)
  oldHi := (14770000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1708]
}

def cell_8063 : Cell := { cellDefaults with
  domain := ⟨(99 / 320 : ℚ), (4951 / 16000 : ℚ)⟩
  center := (9901 / 32000 : ℚ)
  supportValue := (7379544254282421 / 10000000000000000 : ℚ)
  supportSlope := (-5655698424906319 / 1000000000000000 : ℚ)
  oldCenter := (7379544254282421 / 10000000000000000 : ℚ)
  oldLo := (18437500000000001 / 25000000000000000 : ℚ)
  oldHi := (14770000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1707, piece_1708]
}

def cell_8064 : Cell := { cellDefaults with
  domain := ⟨(4951 / 16000 : ℚ), (619 / 2000 : ℚ)⟩
  center := (9903 / 32000 : ℚ)
  supportValue := (1475203166579219 / 2000000000000000 : ℚ)
  supportSlope := (-1412923871085603 / 250000000000000 : ℚ)
  oldCenter := (1475203166579219 / 2000000000000000 : ℚ)
  oldLo := (73699999999999999 / 100000000000000000 : ℚ)
  oldHi := (73799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1706, piece_1707]
}

def cell_8065 : Cell := { cellDefaults with
  domain := ⟨(619 / 2000 : ℚ), (4953 / 16000 : ℚ)⟩
  r := (15866208783861 / 20000000000000 : ℚ)
  w := (17243094923201 / 10000000000000 : ℚ)
  center := (1981 / 6400 : ℚ)
  supportValue := (369327997703379 / 500000000000000 : ℚ)
  supportSlope := (-88427809138647 / 15625000000000 : ℚ)
  oldCenter := (369327997703379 / 500000000000000 : ℚ)
  newCoefficients := coefficients_774
  oldLo := (73799999999999999 / 100000000000000000 : ℚ)
  oldHi := (73899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1708, piece_1709]
}

def cell_8066 : Cell := { cellDefaults with
  domain := ⟨(4953 / 16000 : ℚ), (2477 / 8000 : ℚ)⟩
  r := (15866208783861 / 20000000000000 : ℚ)
  w := (17243094923201 / 10000000000000 : ℚ)
  center := (9907 / 32000 : ℚ)
  supportValue := (3691509428831067 / 5000000000000000 : ℚ)
  supportSlope := (-5655550953406419 / 1000000000000000 : ℚ)
  oldCenter := (3691509428831067 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_774
  oldLo := (73799999999999999 / 100000000000000000 : ℚ)
  oldHi := (14770000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1708]
}

def cell_8067 : Cell := { cellDefaults with
  domain := ⟨(2477 / 8000 : ℚ), (991 / 3200 : ℚ)⟩
  r := (15866208783861 / 20000000000000 : ℚ)
  w := (17243094923201 / 10000000000000 : ℚ)
  center := (9909 / 32000 : ℚ)
  supportValue := (59035883432991 / 80000000000000 : ℚ)
  supportSlope := (-1130317157726779 / 200000000000000 : ℚ)
  oldCenter := (59035883432991 / 80000000000000 : ℚ)
  newCoefficients := coefficients_774
  oldLo := (18437500000000001 / 25000000000000000 : ℚ)
  oldHi := (14770000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1707, piece_1708]
}

def cell_8068 : Cell := { cellDefaults with
  domain := ⟨(991 / 3200 : ℚ), (1239 / 4000 : ℚ)⟩
  r := (15866208783861 / 20000000000000 : ℚ)
  w := (17243094923201 / 10000000000000 : ℚ)
  center := (9911 / 32000 : ℚ)
  supportValue := (7375959579750709 / 10000000000000000 : ℚ)
  supportSlope := (-2823796537352763 / 500000000000000 : ℚ)
  oldCenter := (7375959579750709 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_774
  oldLo := (73699999999999999 / 100000000000000000 : ℚ)
  oldHi := (73799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1706, piece_1707]
}

def cell_8069 : Cell := { cellDefaults with
  domain := ⟨(1239 / 4000 : ℚ), (4957 / 16000 : ℚ)⟩
  r := (15866208783861 / 20000000000000 : ℚ)
  w := (17243094923201 / 10000000000000 : ℚ)
  center := (9913 / 32000 : ℚ)
  supportValue := (921553231876441 / 1250000000000000 : ℚ)
  supportSlope := (-1128738296402787 / 200000000000000 : ℚ)
  oldCenter := (921553231876441 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_774
  oldLo := (73699999999999999 / 100000000000000000 : ℚ)
  oldHi := (18437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1706]
}

def cell_8070 : Cell := { cellDefaults with
  domain := ⟨(4957 / 16000 : ℚ), (2479 / 8000 : ℚ)⟩
  r := (15866208783861 / 20000000000000 : ℚ)
  w := (17243094923201 / 10000000000000 : ℚ)
  center := (1983 / 6400 : ℚ)
  supportValue := (3684452472509917 / 5000000000000000 : ℚ)
  supportSlope := (-5639813171050889 / 1000000000000000 : ℚ)
  oldCenter := (3684452472509917 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_774
  oldLo := (18412500000000001 / 25000000000000000 : ℚ)
  oldHi := (18437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1705, piece_1706]
}

def cell_8071 : Cell := { cellDefaults with
  domain := ⟨(2479 / 8000 : ℚ), (4959 / 16000 : ℚ)⟩
  r := (15866208783861 / 20000000000000 : ℚ)
  w := (17243094923201 / 10000000000000 : ℚ)
  center := (9917 / 32000 : ℚ)
  supportValue := (147307523583159 / 200000000000000 : ℚ)
  supportSlope := (-5635827115657577 / 1000000000000000 : ℚ)
  oldCenter := (147307523583159 / 200000000000000 : ℚ)
  newCoefficients := coefficients_774
  oldLo := (73599999999999999 / 100000000000000000 : ℚ)
  oldHi := (73699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1704, piece_1705]
}

def cell_8072 : Cell := { cellDefaults with
  domain := ⟨(4959 / 16000 : ℚ), (31 / 100 : ℚ)⟩
  r := (15866208783861 / 20000000000000 : ℚ)
  w := (17243094923201 / 10000000000000 : ℚ)
  center := (9919 / 32000 : ℚ)
  supportValue := (1840463742214221 / 2500000000000000 : ℚ)
  supportSlope := (-1407963874330953 / 250000000000000 : ℚ)
  oldCenter := (1840463742214221 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_774
  oldLo := (73599999999999999 / 100000000000000000 : ℚ)
  oldHi := (18412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1704]
}

def cell_8073 : Cell := { cellDefaults with
  domain := ⟨(31 / 100 : ℚ), (4961 / 16000 : ℚ)⟩
  r := (39635108897467 / 50000000000000 : ℚ)
  w := (4308299349513 / 2500000000000 : ℚ)
  center := (9921 / 32000 : ℚ)
  supportValue := (737236758738653 / 1000000000000000 : ℚ)
  supportSlope := (-2819787146604469 / 500000000000000 : ℚ)
  oldCenter := (737236758738653 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_775
  oldLo := (73699999999999999 / 100000000000000000 : ℚ)
  oldHi := (18437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1706]
}

def cell_8074 : Cell := { cellDefaults with
  domain := ⟨(4961 / 16000 : ℚ), (2481 / 8000 : ℚ)⟩
  r := (39635108897467 / 50000000000000 : ℚ)
  w := (4308299349513 / 2500000000000 : ℚ)
  center := (9923 / 32000 : ℚ)
  supportValue := (1473769848491761 / 2000000000000000 : ℚ)
  supportSlope := (-5635714326178487 / 1000000000000000 : ℚ)
  oldCenter := (1473769848491761 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_775
  oldLo := (18412500000000001 / 25000000000000000 : ℚ)
  oldHi := (18437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1705, piece_1706]
}

def cell_8075 : Cell := { cellDefaults with
  domain := ⟨(2481 / 8000 : ℚ), (4963 / 16000 : ℚ)⟩
  r := (39635108897467 / 50000000000000 : ℚ)
  w := (4308299349513 / 2500000000000 : ℚ)
  center := (397 / 1280 : ℚ)
  supportValue := (3682661519894817 / 5000000000000000 : ℚ)
  supportSlope := (-5631738576123979 / 1000000000000000 : ℚ)
  oldCenter := (3682661519894817 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_775
  oldLo := (73599999999999999 / 100000000000000000 : ℚ)
  oldHi := (73699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1704, piece_1705]
}

def cell_8076 : Cell := { cellDefaults with
  domain := ⟨(4963 / 16000 : ℚ), (1241 / 4000 : ℚ)⟩
  r := (39635108897467 / 50000000000000 : ℚ)
  w := (4308299349513 / 2500000000000 : ℚ)
  center := (9927 / 32000 : ℚ)
  supportValue := (736180438150671 / 1000000000000000 : ℚ)
  supportSlope := (-1406942643614073 / 250000000000000 : ℚ)
  oldCenter := (736180438150671 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_775
  oldLo := (73599999999999999 / 100000000000000000 : ℚ)
  oldHi := (18412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1704]
}

def cell_8077 : Cell := { cellDefaults with
  domain := ⟨(1241 / 4000 : ℚ), (993 / 3200 : ℚ)⟩
  r := (39635108897467 / 50000000000000 : ℚ)
  w := (4308299349513 / 2500000000000 : ℚ)
  center := (9929 / 32000 : ℚ)
  supportValue := (919786669601787 / 1250000000000000 : ℚ)
  supportSlope := (-2811997023220769 / 500000000000000 : ℚ)
  oldCenter := (919786669601787 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_775
  oldLo := (18387500000000001 / 25000000000000000 : ℚ)
  oldHi := (18412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1703, piece_1704]
}

def cell_8078 : Cell := { cellDefaults with
  domain := ⟨(993 / 3200 : ℚ), (2483 / 8000 : ℚ)⟩
  r := (39635108897467 / 50000000000000 : ℚ)
  w := (4308299349513 / 2500000000000 : ℚ)
  center := (9931 / 32000 : ℚ)
  supportValue := (11767639219483 / 16000000000000 : ℚ)
  supportSlope := (-5620024873220331 / 1000000000000000 : ℚ)
  oldCenter := (11767639219483 / 16000000000000 : ℚ)
  newCoefficients := coefficients_775
  oldLo := (73499999999999999 / 100000000000000000 : ℚ)
  oldHi := (73599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1702, piece_1703]
}

def cell_8079 : Cell := { cellDefaults with
  domain := ⟨(2483 / 8000 : ℚ), (4967 / 16000 : ℚ)⟩
  r := (39635108897467 / 50000000000000 : ℚ)
  w := (4308299349513 / 2500000000000 : ℚ)
  center := (9933 / 32000 : ℚ)
  supportValue := (1470253667537511 / 2000000000000000 : ℚ)
  supportSlope := (-5616057508586181 / 1000000000000000 : ℚ)
  oldCenter := (1470253667537511 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_775
  oldLo := (1469050279329609 / 2000000000000000 : ℚ)
  oldHi := (18387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1701, piece_1702]
}

def cell_8080 : Cell := { cellDefaults with
  domain := ⟨(4967 / 16000 : ℚ), (621 / 2000 : ℚ)⟩
  r := (39635108897467 / 50000000000000 : ℚ)
  w := (4308299349513 / 2500000000000 : ℚ)
  center := (1987 / 6400 : ℚ)
  supportValue := (146955086616469 / 200000000000000 : ℚ)
  supportSlope := (-561222775030501 / 100000000000000 : ℚ)
  oldCenter := (146955086616469 / 200000000000000 : ℚ)
  newCoefficients := coefficients_775
  oldLo := (1469050279329609 / 2000000000000000 : ℚ)
  oldHi := (73499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1701]
}

def cell_8081 : Cell := { cellDefaults with
  domain := ⟨(621 / 2000 : ℚ), (4969 / 16000 : ℚ)⟩
  r := (79209504449199 / 100000000000000 : ℚ)
  w := (4305830117201 / 2500000000000 : ℚ)
  center := (9937 / 32000 : ℚ)
  supportValue := (3679117511867299 / 5000000000000000 : ℚ)
  supportSlope := (-5619906965900867 / 1000000000000000 : ℚ)
  oldCenter := (3679117511867299 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_776
  oldLo := (18387500000000001 / 25000000000000000 : ℚ)
  oldHi := (73599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1703]
}

def cell_8082 : Cell := { cellDefaults with
  domain := ⟨(4969 / 16000 : ℚ), (497 / 1600 : ℚ)⟩
  r := (79209504449199 / 100000000000000 : ℚ)
  w := (4305830117201 / 2500000000000 : ℚ)
  center := (9939 / 32000 : ℚ)
  supportValue := (3677361940140887 / 5000000000000000 : ℚ)
  supportSlope := (-561594960995393 / 100000000000000 : ℚ)
  oldCenter := (3677361940140887 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_776
  oldLo := (73499999999999999 / 100000000000000000 : ℚ)
  oldHi := (73599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1702, piece_1703]
}

def cell_8083 : Cell := { cellDefaults with
  domain := ⟨(497 / 1600 : ℚ), (4971 / 16000 : ℚ)⟩
  r := (79209504449199 / 100000000000000 : ℚ)
  w := (4305830117201 / 2500000000000 : ℚ)
  center := (9941 / 32000 : ℚ)
  supportValue := (1470244050749149 / 2000000000000000 : ℚ)
  supportSlope := (-5611992613005157 / 1000000000000000 : ℚ)
  oldCenter := (1470244050749149 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_776
  oldLo := (1469050279329609 / 2000000000000000 : ℚ)
  oldHi := (18387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1701, piece_1702]
}

def cell_8084 : Cell := { cellDefaults with
  domain := ⟨(4971 / 16000 : ℚ), (1243 / 4000 : ℚ)⟩
  r := (79209504449199 / 100000000000000 : ℚ)
  w := (4305830117201 / 2500000000000 : ℚ)
  center := (9943 / 32000 : ℚ)
  supportValue := (1836927196033997 / 2500000000000000 : ℚ)
  supportSlope := (-17525522463957 / 3125000000000 : ℚ)
  oldCenter := (1836927196033997 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_776
  oldLo := (1469050279329609 / 2000000000000000 : ℚ)
  oldHi := (73499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1701]
}

def cell_8085 : Cell := { cellDefaults with
  domain := ⟨(1243 / 4000 : ℚ), (4973 / 16000 : ℚ)⟩
  r := (79209504449199 / 100000000000000 : ℚ)
  w := (4305830117201 / 2500000000000 : ℚ)
  center := (1989 / 6400 : ℚ)
  supportValue := (1836051232869867 / 2500000000000000 : ℚ)
  supportSlope := (-140107204078177 / 25000000000000 : ℚ)
  oldCenter := (1836051232869867 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_776
  oldLo := (73399999999999999 / 100000000000000000 : ℚ)
  oldHi := (73499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1699, piece_1700, piece_1701]
}

def cell_8086 : Cell := { cellDefaults with
  domain := ⟨(4973 / 16000 : ℚ), (2487 / 8000 : ℚ)⟩
  r := (79209504449199 / 100000000000000 : ℚ)
  w := (4305830117201 / 2500000000000 : ℚ)
  center := (9947 / 32000 : ℚ)
  supportValue := (7340703489197303 / 10000000000000000 : ℚ)
  supportSlope := (-1400084413625713 / 250000000000000 : ℚ)
  oldCenter := (7340703489197303 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_776
  oldLo := (18337500000000001 / 25000000000000000 : ℚ)
  oldHi := (18362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1698, piece_1699]
}

def cell_8087 : Cell := { cellDefaults with
  domain := ⟨(2487 / 8000 : ℚ), (199 / 640 : ℚ)⟩
  r := (79209504449199 / 100000000000000 : ℚ)
  w := (4305830117201 / 2500000000000 : ℚ)
  center := (9949 / 32000 : ℚ)
  supportValue := (3668602223684999 / 5000000000000000 : ℚ)
  supportSlope := (-1119290132806583 / 200000000000000 : ℚ)
  oldCenter := (3668602223684999 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_776
  oldLo := (18337500000000001 / 25000000000000000 : ℚ)
  oldHi := (73399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1698]
}

def cell_8088 : Cell := { cellDefaults with
  domain := ⟨(199 / 640 : ℚ), (311 / 1000 : ℚ)⟩
  r := (79209504449199 / 100000000000000 : ℚ)
  w := (4305830117201 / 2500000000000 : ℚ)
  center := (9951 / 32000 : ℚ)
  supportValue := (3666856503108971 / 5000000000000000 : ℚ)
  supportSlope := (-1398161859377467 / 250000000000000 : ℚ)
  oldCenter := (3666856503108971 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_776
  oldLo := (36649999999999999 / 50000000000000000 : ℚ)
  oldHi := (73399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1697, piece_1698]
}

def cell_8089 : Cell := { cellDefaults with
  domain := ⟨(311 / 1000 : ℚ), (4977 / 16000 : ℚ)⟩
  r := (79148901703839 / 100000000000000 : ℚ)
  w := (17213464343781 / 10000000000000 : ℚ)
  center := (9953 / 32000 : ℚ)
  supportValue := (7344156918337499 / 10000000000000000 : ℚ)
  supportSlope := (-5600225454756469 / 1000000000000000 : ℚ)
  oldCenter := (7344156918337499 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_777
  oldLo := (73399999999999999 / 100000000000000000 : ℚ)
  oldHi := (73499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1699, piece_1700, piece_1701]
}

def cell_8090 : Cell := { cellDefaults with
  domain := ⟨(4977 / 16000 : ℚ), (2489 / 8000 : ℚ)⟩
  r := (79148901703839 / 100000000000000 : ℚ)
  w := (17213464343781 / 10000000000000 : ℚ)
  center := (1991 / 6400 : ℚ)
  supportValue := (7340658015955653 / 10000000000000000 : ℚ)
  supportSlope := (-2798142695889183 / 500000000000000 : ℚ)
  oldCenter := (7340658015955653 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_777
  oldLo := (18337500000000001 / 25000000000000000 : ℚ)
  oldHi := (18362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1698, piece_1699]
}

def cell_8091 : Cell := { cellDefaults with
  domain := ⟨(2489 / 8000 : ℚ), (4979 / 16000 : ℚ)⟩
  r := (79148901703839 / 100000000000000 : ℚ)
  w := (17213464343781 / 10000000000000 : ℚ)
  center := (9957 / 32000 : ℚ)
  supportValue := (7337161503430583 / 10000000000000000 : ℚ)
  supportSlope := (-5592403151393199 / 1000000000000000 : ℚ)
  oldCenter := (7337161503430583 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_777
  oldLo := (18337500000000001 / 25000000000000000 : ℚ)
  oldHi := (73399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1698]
}

def cell_8092 : Cell := { cellDefaults with
  domain := ⟨(4979 / 16000 : ℚ), (249 / 800 : ℚ)⟩
  r := (79148901703839 / 100000000000000 : ℚ)
  w := (17213464343781 / 10000000000000 : ℚ)
  center := (9959 / 32000 : ℚ)
  supportValue := (458354536564591 / 625000000000000 : ℚ)
  supportSlope := (-11177232717486163 / 2000000000000000 : ℚ)
  oldCenter := (458354536564591 / 625000000000000 : ℚ)
  newCoefficients := coefficients_777
  oldLo := (36649999999999999 / 50000000000000000 : ℚ)
  oldHi := (73399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1697, piece_1698]
}

def cell_8093 : Cell := { cellDefaults with
  domain := ⟨(249 / 800 : ℚ), (4981 / 16000 : ℚ)⟩
  r := (79148901703839 / 100000000000000 : ℚ)
  w := (17213464343781 / 10000000000000 : ℚ)
  center := (9961 / 32000 : ℚ)
  supportValue := (916271980531429 / 1250000000000000 : ℚ)
  supportSlope := (-27923412410721937 / 5000000000000000 : ℚ)
  oldCenter := (916271980531429 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_777
  oldLo := (18312500000000001 / 25000000000000000 : ℚ)
  oldHi := (18337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1696, piece_1697]
}

def cell_8094 : Cell := { cellDefaults with
  domain := ⟨(4981 / 16000 : ℚ), (2491 / 8000 : ℚ)⟩
  r := (79148901703839 / 100000000000000 : ℚ)
  w := (17213464343781 / 10000000000000 : ℚ)
  center := (9963 / 32000 : ℚ)
  supportValue := (1465338341952329 / 2000000000000000 : ℚ)
  supportSlope := (-1395187687159627 / 250000000000000 : ℚ)
  oldCenter := (1465338341952329 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_777
  oldLo := (36599999999999999 / 50000000000000000 : ℚ)
  oldHi := (36649999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1695, piece_1696]
}

def cell_8095 : Cell := { cellDefaults with
  domain := ⟨(2491 / 8000 : ℚ), (4983 / 16000 : ℚ)⟩
  r := (79148901703839 / 100000000000000 : ℚ)
  w := (17213464343781 / 10000000000000 : ℚ)
  center := (1993 / 6400 : ℚ)
  supportValue := (7323199774355403 / 10000000000000000 : ℚ)
  supportSlope := (-5577019799012817 / 1000000000000000 : ℚ)
  oldCenter := (7323199774355403 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_777
  oldLo := (36599999999999999 / 50000000000000000 : ℚ)
  oldHi := (18312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1695]
}

def cell_8096 : Cell := { cellDefaults with
  domain := ⟨(4983 / 16000 : ℚ), (623 / 2000 : ℚ)⟩
  r := (79148901703839 / 100000000000000 : ℚ)
  w := (17213464343781 / 10000000000000 : ℚ)
  center := (9967 / 32000 : ℚ)
  supportValue := (7319715422992383 / 10000000000000000 : ℚ)
  supportSlope := (-5573100792098273 / 1000000000000000 : ℚ)
  oldCenter := (7319715422992383 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_777
  oldLo := (18287500000000001 / 25000000000000000 : ℚ)
  oldHi := (18312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1694, piece_1695]
}

def cell_8097 : Cell := { cellDefaults with
  domain := ⟨(623 / 2000 : ℚ), (997 / 3200 : ℚ)⟩
  r := (15817681959371 / 20000000000000 : ℚ)
  w := (4300907144377 / 2500000000000 : ℚ)
  center := (9969 / 32000 : ℚ)
  supportValue := (7330133041576157 / 10000000000000000 : ℚ)
  supportSlope := (-11161284675822003 / 2000000000000000 : ℚ)
  oldCenter := (7330133041576157 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_778
  oldLo := (18312500000000001 / 25000000000000000 : ℚ)
  oldHi := (18337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1696, piece_1697]
}

def cell_8098 : Cell := { cellDefaults with
  domain := ⟨(997 / 3200 : ℚ), (2493 / 8000 : ℚ)⟩
  r := (15817681959371 / 20000000000000 : ℚ)
  w := (4300907144377 / 2500000000000 : ℚ)
  center := (9971 / 32000 : ℚ)
  supportValue := (7326651428759883 / 10000000000000000 : ℚ)
  supportSlope := (-697090139236689 / 125000000000000 : ℚ)
  oldCenter := (7326651428759883 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_778
  oldLo := (36599999999999999 / 50000000000000000 : ℚ)
  oldHi := (36649999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1695, piece_1696]
}

def cell_8099 : Cell := { cellDefaults with
  domain := ⟨(2493 / 8000 : ℚ), (4987 / 16000 : ℚ)⟩
  r := (15817681959371 / 20000000000000 : ℚ)
  w := (4300907144377 / 2500000000000 : ℚ)
  center := (9973 / 32000 : ℚ)
  supportValue := (7323162008520083 / 10000000000000000 : ℚ)
  supportSlope := (-11145991326912963 / 2000000000000000 : ℚ)
  oldCenter := (7323162008520083 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_778
  oldLo := (36599999999999999 / 50000000000000000 : ℚ)
  oldHi := (18312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1695]
}

theorem check_8050 : cell_8050.check = true := by
  decide +kernel

theorem check_8051 : cell_8051.check = true := by
  decide +kernel

theorem check_8052 : cell_8052.check = true := by
  decide +kernel

theorem check_8053 : cell_8053.check = true := by
  decide +kernel

theorem check_8054 : cell_8054.check = true := by
  decide +kernel

theorem check_8055 : cell_8055.check = true := by
  decide +kernel

theorem check_8056 : cell_8056.check = true := by
  decide +kernel

theorem check_8057 : cell_8057.check = true := by
  decide +kernel

theorem check_8058 : cell_8058.check = true := by
  decide +kernel

theorem check_8059 : cell_8059.check = true := by
  decide +kernel

theorem check_8060 : cell_8060.check = true := by
  decide +kernel

theorem check_8061 : cell_8061.check = true := by
  decide +kernel

theorem check_8062 : cell_8062.check = true := by
  decide +kernel

theorem check_8063 : cell_8063.check = true := by
  decide +kernel

theorem check_8064 : cell_8064.check = true := by
  decide +kernel

theorem check_8065 : cell_8065.check = true := by
  decide +kernel

theorem check_8066 : cell_8066.check = true := by
  decide +kernel

theorem check_8067 : cell_8067.check = true := by
  decide +kernel

theorem check_8068 : cell_8068.check = true := by
  decide +kernel

theorem check_8069 : cell_8069.check = true := by
  decide +kernel

theorem check_8070 : cell_8070.check = true := by
  decide +kernel

theorem check_8071 : cell_8071.check = true := by
  decide +kernel

theorem check_8072 : cell_8072.check = true := by
  decide +kernel

theorem check_8073 : cell_8073.check = true := by
  decide +kernel

theorem check_8074 : cell_8074.check = true := by
  decide +kernel

theorem check_8075 : cell_8075.check = true := by
  decide +kernel

theorem check_8076 : cell_8076.check = true := by
  decide +kernel

theorem check_8077 : cell_8077.check = true := by
  decide +kernel

theorem check_8078 : cell_8078.check = true := by
  decide +kernel

theorem check_8079 : cell_8079.check = true := by
  decide +kernel

theorem check_8080 : cell_8080.check = true := by
  decide +kernel

theorem check_8081 : cell_8081.check = true := by
  decide +kernel

theorem check_8082 : cell_8082.check = true := by
  decide +kernel

theorem check_8083 : cell_8083.check = true := by
  decide +kernel

theorem check_8084 : cell_8084.check = true := by
  decide +kernel

theorem check_8085 : cell_8085.check = true := by
  decide +kernel

theorem check_8086 : cell_8086.check = true := by
  decide +kernel

theorem check_8087 : cell_8087.check = true := by
  decide +kernel

theorem check_8088 : cell_8088.check = true := by
  decide +kernel

theorem check_8089 : cell_8089.check = true := by
  decide +kernel

theorem check_8090 : cell_8090.check = true := by
  decide +kernel

theorem check_8091 : cell_8091.check = true := by
  decide +kernel

theorem check_8092 : cell_8092.check = true := by
  decide +kernel

theorem check_8093 : cell_8093.check = true := by
  decide +kernel

theorem check_8094 : cell_8094.check = true := by
  decide +kernel

theorem check_8095 : cell_8095.check = true := by
  decide +kernel

theorem check_8096 : cell_8096.check = true := by
  decide +kernel

theorem check_8097 : cell_8097.check = true := by
  decide +kernel

theorem check_8098 : cell_8098.check = true := by
  decide +kernel

theorem check_8099 : cell_8099.check = true := by
  decide +kernel

def cells : List Cell := [cell_8050, cell_8051, cell_8052, cell_8053, cell_8054, cell_8055, cell_8056, cell_8057, cell_8058, cell_8059, cell_8060, cell_8061, cell_8062, cell_8063, cell_8064, cell_8065, cell_8066, cell_8067, cell_8068, cell_8069, cell_8070, cell_8071, cell_8072, cell_8073, cell_8074, cell_8075, cell_8076, cell_8077, cell_8078, cell_8079, cell_8080, cell_8081, cell_8082, cell_8083, cell_8084, cell_8085, cell_8086, cell_8087, cell_8088, cell_8089, cell_8090, cell_8091, cell_8092, cell_8093, cell_8094, cell_8095, cell_8096, cell_8097, cell_8098, cell_8099]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8050, check_8051, check_8052, check_8053, check_8054, check_8055, check_8056, check_8057, check_8058, check_8059, check_8060, check_8061, check_8062, check_8063, check_8064, check_8065, check_8066, check_8067, check_8068, check_8069, check_8070, check_8071, check_8072, check_8073, check_8074, check_8075, check_8076, check_8077, check_8078, check_8079, check_8080, check_8081, check_8082, check_8083, check_8084, check_8085, check_8086, check_8087, check_8088, check_8089, check_8090, check_8091, check_8092, check_8093, check_8094, check_8095, check_8096, check_8097, check_8098, check_8099, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0161

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0161
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0161
open AnalyticBounds.ExpressionCertificate

theorem linked_8050 : Linked cell_8050 pieces := by
  link_source cell_8050 with piece_771 using piece_771_mem, ⟨piece_1714_mem, piece_1715_mem⟩

theorem linked_8051 : Linked cell_8051 pieces := by
  link_source cell_8051 with piece_772 using piece_772_mem, piece_1714_mem

theorem linked_8052 : Linked cell_8052 pieces := by
  link_source cell_8052 with piece_772 using piece_772_mem, ⟨piece_1713_mem, piece_1714_mem⟩

theorem linked_8053 : Linked cell_8053 pieces := by
  link_source cell_8053 with piece_772 using piece_772_mem, ⟨piece_1711_mem, ⟨piece_1712_mem, piece_1713_mem⟩⟩

theorem linked_8054 : Linked cell_8054 pieces := by
  link_source cell_8054 with piece_772 using piece_772_mem, piece_1711_mem

theorem linked_8055 : Linked cell_8055 pieces := by
  link_source cell_8055 with piece_772 using piece_772_mem, ⟨piece_1710_mem, piece_1711_mem⟩

theorem linked_8056 : Linked cell_8056 pieces := by
  link_source cell_8056 with piece_772 using piece_772_mem, ⟨piece_1709_mem, piece_1710_mem⟩

theorem linked_8057 : Linked cell_8057 pieces := by
  link_source cell_8057 with piece_773 using piece_773_mem, ⟨piece_1711_mem, ⟨piece_1712_mem, piece_1713_mem⟩⟩

theorem linked_8058 : Linked cell_8058 pieces := by
  link_source cell_8058 with piece_773 using piece_773_mem, piece_1711_mem

theorem linked_8059 : Linked cell_8059 pieces := by
  link_source cell_8059 with piece_773 using piece_773_mem, ⟨piece_1710_mem, piece_1711_mem⟩

theorem linked_8060 : Linked cell_8060 pieces := by
  link_source cell_8060 with piece_773 using piece_773_mem, ⟨piece_1709_mem, piece_1710_mem⟩

theorem linked_8061 : Linked cell_8061 pieces := by
  link_source cell_8061 with piece_773 using piece_773_mem, ⟨piece_1708_mem, piece_1709_mem⟩

theorem linked_8062 : Linked cell_8062 pieces := by
  link_source cell_8062 with piece_773 using piece_773_mem, piece_1708_mem

theorem linked_8063 : Linked cell_8063 pieces := by
  link_source cell_8063 with piece_773 using piece_773_mem, ⟨piece_1707_mem, piece_1708_mem⟩

theorem linked_8064 : Linked cell_8064 pieces := by
  link_source cell_8064 with piece_773 using piece_773_mem, ⟨piece_1706_mem, piece_1707_mem⟩

theorem linked_8065 : Linked cell_8065 pieces := by
  link_source cell_8065 with piece_774 using piece_774_mem, ⟨piece_1708_mem, piece_1709_mem⟩

theorem linked_8066 : Linked cell_8066 pieces := by
  link_source cell_8066 with piece_774 using piece_774_mem, piece_1708_mem

theorem linked_8067 : Linked cell_8067 pieces := by
  link_source cell_8067 with piece_774 using piece_774_mem, ⟨piece_1707_mem, piece_1708_mem⟩

theorem linked_8068 : Linked cell_8068 pieces := by
  link_source cell_8068 with piece_774 using piece_774_mem, ⟨piece_1706_mem, piece_1707_mem⟩

theorem linked_8069 : Linked cell_8069 pieces := by
  link_source cell_8069 with piece_774 using piece_774_mem, piece_1706_mem

theorem linked_8070 : Linked cell_8070 pieces := by
  link_source cell_8070 with piece_774 using piece_774_mem, ⟨piece_1705_mem, piece_1706_mem⟩

theorem linked_8071 : Linked cell_8071 pieces := by
  link_source cell_8071 with piece_774 using piece_774_mem, ⟨piece_1704_mem, piece_1705_mem⟩

theorem linked_8072 : Linked cell_8072 pieces := by
  link_source cell_8072 with piece_774 using piece_774_mem, piece_1704_mem

theorem linked_8073 : Linked cell_8073 pieces := by
  link_source cell_8073 with piece_775 using piece_775_mem, piece_1706_mem

theorem linked_8074 : Linked cell_8074 pieces := by
  link_source cell_8074 with piece_775 using piece_775_mem, ⟨piece_1705_mem, piece_1706_mem⟩

theorem linked_8075 : Linked cell_8075 pieces := by
  link_source cell_8075 with piece_775 using piece_775_mem, ⟨piece_1704_mem, piece_1705_mem⟩

theorem linked_8076 : Linked cell_8076 pieces := by
  link_source cell_8076 with piece_775 using piece_775_mem, piece_1704_mem

theorem linked_8077 : Linked cell_8077 pieces := by
  link_source cell_8077 with piece_775 using piece_775_mem, ⟨piece_1703_mem, piece_1704_mem⟩

theorem linked_8078 : Linked cell_8078 pieces := by
  link_source cell_8078 with piece_775 using piece_775_mem, ⟨piece_1702_mem, piece_1703_mem⟩

theorem linked_8079 : Linked cell_8079 pieces := by
  link_source cell_8079 with piece_775 using piece_775_mem, ⟨piece_1701_mem, piece_1702_mem⟩

theorem linked_8080 : Linked cell_8080 pieces := by
  link_source cell_8080 with piece_775 using piece_775_mem, piece_1701_mem

theorem linked_8081 : Linked cell_8081 pieces := by
  link_source cell_8081 with piece_776 using piece_776_mem, piece_1703_mem

theorem linked_8082 : Linked cell_8082 pieces := by
  link_source cell_8082 with piece_776 using piece_776_mem, ⟨piece_1702_mem, piece_1703_mem⟩

theorem linked_8083 : Linked cell_8083 pieces := by
  link_source cell_8083 with piece_776 using piece_776_mem, ⟨piece_1701_mem, piece_1702_mem⟩

theorem linked_8084 : Linked cell_8084 pieces := by
  link_source cell_8084 with piece_776 using piece_776_mem, piece_1701_mem

theorem linked_8085 : Linked cell_8085 pieces := by
  link_source cell_8085 with piece_776 using piece_776_mem, ⟨piece_1699_mem, ⟨piece_1700_mem, piece_1701_mem⟩⟩

theorem linked_8086 : Linked cell_8086 pieces := by
  link_source cell_8086 with piece_776 using piece_776_mem, ⟨piece_1698_mem, piece_1699_mem⟩

theorem linked_8087 : Linked cell_8087 pieces := by
  link_source cell_8087 with piece_776 using piece_776_mem, piece_1698_mem

theorem linked_8088 : Linked cell_8088 pieces := by
  link_source cell_8088 with piece_776 using piece_776_mem, ⟨piece_1697_mem, piece_1698_mem⟩

theorem linked_8089 : Linked cell_8089 pieces := by
  link_source cell_8089 with piece_777 using piece_777_mem, ⟨piece_1699_mem, ⟨piece_1700_mem, piece_1701_mem⟩⟩

theorem linked_8090 : Linked cell_8090 pieces := by
  link_source cell_8090 with piece_777 using piece_777_mem, ⟨piece_1698_mem, piece_1699_mem⟩

theorem linked_8091 : Linked cell_8091 pieces := by
  link_source cell_8091 with piece_777 using piece_777_mem, piece_1698_mem

theorem linked_8092 : Linked cell_8092 pieces := by
  link_source cell_8092 with piece_777 using piece_777_mem, ⟨piece_1697_mem, piece_1698_mem⟩

theorem linked_8093 : Linked cell_8093 pieces := by
  link_source cell_8093 with piece_777 using piece_777_mem, ⟨piece_1696_mem, piece_1697_mem⟩

theorem linked_8094 : Linked cell_8094 pieces := by
  link_source cell_8094 with piece_777 using piece_777_mem, ⟨piece_1695_mem, piece_1696_mem⟩

theorem linked_8095 : Linked cell_8095 pieces := by
  link_source cell_8095 with piece_777 using piece_777_mem, piece_1695_mem

theorem linked_8096 : Linked cell_8096 pieces := by
  link_source cell_8096 with piece_777 using piece_777_mem, ⟨piece_1694_mem, piece_1695_mem⟩

theorem linked_8097 : Linked cell_8097 pieces := by
  link_source cell_8097 with piece_778 using piece_778_mem, ⟨piece_1696_mem, piece_1697_mem⟩

theorem linked_8098 : Linked cell_8098 pieces := by
  link_source cell_8098 with piece_778 using piece_778_mem, ⟨piece_1695_mem, piece_1696_mem⟩

theorem linked_8099 : Linked cell_8099 pieces := by
  link_source cell_8099 with piece_778 using piece_778_mem, piece_1695_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0161.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0161.cells,List.forall_mem_cons]
  exact ⟨linked_8050, linked_8051, linked_8052, linked_8053, linked_8054, linked_8055, linked_8056, linked_8057, linked_8058, linked_8059, linked_8060, linked_8061, linked_8062, linked_8063, linked_8064, linked_8065, linked_8066, linked_8067, linked_8068, linked_8069, linked_8070, linked_8071, linked_8072, linked_8073, linked_8074, linked_8075, linked_8076, linked_8077, linked_8078, linked_8079, linked_8080, linked_8081, linked_8082, linked_8083, linked_8084, linked_8085, linked_8086, linked_8087, linked_8088, linked_8089, linked_8090, linked_8091, linked_8092, linked_8093, linked_8094, linked_8095, linked_8096, linked_8097, linked_8098, linked_8099, by simp⟩

theorem covered : covers (30857960893854747 / 100000000000000000 : ℚ) (4987 / 16000 : ℚ)
    (SourceCertificates.Chunk0161.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0161
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0162
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(4987 / 16000 : ℚ), (1247 / 4000 : ℚ)⟩
  branch := .left
  r := (2462112438053 / 3125000000000 : ℚ)
  w := (4288688506059 / 2500000000000 : ℚ)
  center := (399 / 1280 : ℚ)
  supportValue := (7319680165736079 / 10000000000000000 : ℚ)
  supportSlope := (-5569092474562609 / 1000000000000000 : ℚ)
  oldCenter := (7319680165736079 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_779
  oldLo := (36549999999999999 / 50000000000000000 : ℚ)
  oldHi := (18287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1693, piece_1694]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8100 : Cell := { cellDefaults with
  r := (15817681959371 / 20000000000000 : ℚ)
  w := (4300907144377 / 2500000000000 : ℚ)
  newCoefficients := coefficients_778
  oldLo := (18287500000000001 / 25000000000000000 : ℚ)
  oldHi := (18312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1694, piece_1695]
}

def cell_8101 : Cell := { cellDefaults with
  domain := ⟨(1247 / 4000 : ℚ), (4989 / 16000 : ℚ)⟩
  r := (15817681959371 / 20000000000000 : ℚ)
  w := (4300907144377 / 2500000000000 : ℚ)
  center := (9977 / 32000 : ℚ)
  supportValue := (22863143091897 / 31250000000000 : ℚ)
  supportSlope := (-556517757111763 / 100000000000000 : ℚ)
  oldCenter := (22863143091897 / 31250000000000 : ℚ)
  newCoefficients := coefficients_778
  oldHi := (36599999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1693, piece_1694]
}

def cell_8102 : Cell := { cellDefaults with
  domain := ⟨(4989 / 16000 : ℚ), (499 / 1600 : ℚ)⟩
  r := (15817681959371 / 20000000000000 : ℚ)
  w := (4300907144377 / 2500000000000 : ℚ)
  center := (9979 / 32000 : ℚ)
  supportValue := (7312723588778177 / 10000000000000000 : ℚ)
  supportSlope := (-2780699660517527 / 500000000000000 : ℚ)
  oldCenter := (7312723588778177 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_778
  oldPieces := [piece_1693]
}

def cell_8103 : Cell := { cellDefaults with
  domain := ⟨(499 / 1600 : ℚ), (4991 / 16000 : ℚ)⟩
  r := (15817681959371 / 20000000000000 : ℚ)
  w := (4300907144377 / 2500000000000 : ℚ)
  center := (9981 / 32000 : ℚ)
  supportValue := (3654624477156127 / 5000000000000000 : ℚ)
  supportSlope := (-1389390758502529 / 250000000000000 : ℚ)
  oldCenter := (3654624477156127 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_778
  oldLo := (18262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1692, piece_1693]
}

def cell_8104 : Cell := { cellDefaults with
  domain := ⟨(4991 / 16000 : ℚ), (39 / 125 : ℚ)⟩
  r := (15817681959371 / 20000000000000 : ℚ)
  w := (4300907144377 / 2500000000000 : ℚ)
  center := (9983 / 32000 : ℚ)
  supportValue := (3652888348562987 / 5000000000000000 : ℚ)
  supportSlope := (-5553654499276917 / 1000000000000000 : ℚ)
  oldCenter := (3652888348562987 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_778
  oldLo := (36499999999999999 / 50000000000000000 : ℚ)
  oldHi := (36549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1691, piece_1692]
}

def cell_8105 : Cell := { cellDefaults with
  domain := ⟨(39 / 125 : ℚ), (4993 / 16000 : ℚ)⟩
  r := (79028028038861 / 100000000000000 : ℚ)
  w := (3438762611511 / 2000000000000 : ℚ)
  center := (1997 / 6400 : ℚ)
  supportValue := (1463232617384457 / 2000000000000000 : ℚ)
  supportSlope := (-5561159589014153 / 1000000000000000 : ℚ)
  oldCenter := (1463232617384457 / 2000000000000000 : ℚ)
  oldHi := (36599999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1693, piece_1694]
}

def cell_8106 : Cell := { cellDefaults with
  domain := ⟨(4993 / 16000 : ℚ), (2497 / 8000 : ℚ)⟩
  r := (79028028038861 / 100000000000000 : ℚ)
  w := (3438762611511 / 2000000000000 : ℚ)
  center := (9987 / 32000 : ℚ)
  supportValue := (3656344257732087 / 5000000000000000 : ℚ)
  supportSlope := (-27786936355376213 / 5000000000000000 : ℚ)
  oldCenter := (3656344257732087 / 5000000000000000 : ℚ)
  oldPieces := [piece_1693]
}

def cell_8107 : Cell := { cellDefaults with
  domain := ⟨(2497 / 8000 : ℚ), (999 / 3200 : ℚ)⟩
  r := (79028028038861 / 100000000000000 : ℚ)
  w := (3438762611511 / 2000000000000 : ℚ)
  center := (9989 / 32000 : ℚ)
  supportValue := (456826023889009 / 625000000000000 : ℚ)
  supportSlope := (-5553566519239439 / 1000000000000000 : ℚ)
  oldCenter := (456826023889009 / 625000000000000 : ℚ)
  oldLo := (18262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1692, piece_1693]
}

def cell_8108 : Cell := { cellDefaults with
  domain := ⟨(999 / 3200 : ℚ), (1249 / 4000 : ℚ)⟩
  r := (79028028038861 / 100000000000000 : ℚ)
  w := (3438762611511 / 2000000000000 : ℚ)
  center := (9991 / 32000 : ℚ)
  supportValue := (3652873311123359 / 5000000000000000 : ℚ)
  supportSlope := (-11099337079016891 / 2000000000000000 : ℚ)
  oldCenter := (3652873311123359 / 5000000000000000 : ℚ)
  oldLo := (36499999999999999 / 50000000000000000 : ℚ)
  oldHi := (36549999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1691, piece_1692]
}

def cell_8109 : Cell := { cellDefaults with
  domain := ⟨(1249 / 4000 : ℚ), (4997 / 16000 : ℚ)⟩
  r := (79028028038861 / 100000000000000 : ℚ)
  w := (3438762611511 / 2000000000000 : ℚ)
  center := (9993 / 32000 : ℚ)
  supportValue := (292091169211577 / 400000000000000 : ℚ)
  supportSlope := (-2772923546300987 / 500000000000000 : ℚ)
  oldCenter := (292091169211577 / 400000000000000 : ℚ)
  oldLo := (36499999999999999 / 50000000000000000 : ℚ)
  oldHi := (18262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1691]
}

def cell_8110 : Cell := { cellDefaults with
  domain := ⟨(4997 / 16000 : ℚ), (2499 / 8000 : ℚ)⟩
  r := (79028028038861 / 100000000000000 : ℚ)
  w := (3438762611511 / 2000000000000 : ℚ)
  center := (1999 / 6400 : ℚ)
  supportValue := (1824703568120751 / 2500000000000000 : ℚ)
  supportSlope := (-554208993822769 / 100000000000000 : ℚ)
  oldCenter := (1824703568120751 / 2500000000000000 : ℚ)
  oldLo := (18237500000000001 / 25000000000000000 : ℚ)
  oldHi := (18262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1690, piece_1691]
}

def cell_8111 : Cell := { cellDefaults with
  domain := ⟨(2499 / 8000 : ℚ), (4999 / 16000 : ℚ)⟩
  r := (79028028038861 / 100000000000000 : ℚ)
  w := (3438762611511 / 2000000000000 : ℚ)
  center := (9997 / 32000 : ℚ)
  supportValue := (3647675858790879 / 5000000000000000 : ℚ)
  supportSlope := (-5538198414821949 / 1000000000000000 : ℚ)
  oldCenter := (3647675858790879 / 5000000000000000 : ℚ)
  oldLo := (36449999999999999 / 50000000000000000 : ℚ)
  oldHi := (36499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1689, piece_1690]
}

def cell_8112 : Cell := { cellDefaults with
  domain := ⟨(4999 / 16000 : ℚ), (5 / 16 : ℚ)⟩
  r := (79028028038861 / 100000000000000 : ℚ)
  w := (3438762611511 / 2000000000000 : ℚ)
  center := (9999 / 32000 : ℚ)
  supportValue := (3645945746016051 / 5000000000000000 : ℚ)
  supportSlope := (-110686611582409 / 20000000000000 : ℚ)
  oldCenter := (3645945746016051 / 5000000000000000 : ℚ)
  oldLo := (36449999999999999 / 50000000000000000 : ℚ)
  oldHi := (18237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1689]
}

def cell_8113 : Cell := { cellDefaults with
  domain := ⟨(5 / 16 : ℚ), (5001 / 16000 : ℚ)⟩
  r := (39483878359471 / 50000000000000 : ℚ)
  w := (4296004467093 / 2500000000000 : ℚ)
  center := (10001 / 32000 : ℚ)
  supportValue := (7302246642795927 / 10000000000000000 : ℚ)
  supportSlope := (-5541846593455801 / 1000000000000000 : ℚ)
  oldCenter := (7302246642795927 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_780
  oldLo := (36499999999999999 / 50000000000000000 : ℚ)
  oldHi := (18262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1691]
}

def cell_8114 : Cell := { cellDefaults with
  domain := ⟨(5001 / 16000 : ℚ), (2501 / 8000 : ℚ)⟩
  r := (39483878359471 / 50000000000000 : ℚ)
  w := (4296004467093 / 2500000000000 : ℚ)
  center := (10003 / 32000 : ℚ)
  supportValue := (7298784179201551 / 10000000000000000 : ℚ)
  supportSlope := (-27690523220496033 / 5000000000000000 : ℚ)
  oldCenter := (7298784179201551 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_780
  oldLo := (18237500000000001 / 25000000000000000 : ℚ)
  oldHi := (18262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1690, piece_1691]
}

def cell_8115 : Cell := { cellDefaults with
  domain := ⟨(2501 / 8000 : ℚ), (5003 / 16000 : ℚ)⟩
  r := (39483878359471 / 50000000000000 : ℚ)
  w := (4296004467093 / 2500000000000 : ℚ)
  center := (2001 / 6400 : ℚ)
  supportValue := (1459064822858649 / 2000000000000000 : ℚ)
  supportSlope := (-5534223667503113 / 1000000000000000 : ℚ)
  oldCenter := (1459064822858649 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_780
  oldLo := (36449999999999999 / 50000000000000000 : ℚ)
  oldHi := (36499999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1689, piece_1690]
}

def cell_8116 : Cell := { cellDefaults with
  domain := ⟨(5003 / 16000 : ℚ), (1251 / 4000 : ℚ)⟩
  r := (39483878359471 / 50000000000000 : ℚ)
  w := (4296004467093 / 2500000000000 : ℚ)
  center := (10007 / 32000 : ℚ)
  supportValue := (1822966592390823 / 2500000000000000 : ℚ)
  supportSlope := (-11060726161645107 / 2000000000000000 : ℚ)
  oldCenter := (1822966592390823 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_780
  oldLo := (36449999999999999 / 50000000000000000 : ℚ)
  oldHi := (18237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1689]
}

def cell_8117 : Cell := { cellDefaults with
  domain := ⟨(1251 / 4000 : ℚ), (1001 / 3200 : ℚ)⟩
  r := (39483878359471 / 50000000000000 : ℚ)
  w := (4296004467093 / 2500000000000 : ℚ)
  center := (10009 / 32000 : ℚ)
  supportValue := (7288416150616751 / 10000000000000000 : ℚ)
  supportSlope := (-10794295922191 / 1953125000000 : ℚ)
  oldCenter := (7288416150616751 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_780
  oldLo := (18212500000000001 / 25000000000000000 : ℚ)
  oldHi := (18237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1687, piece_1688, piece_1689]
}

def cell_8118 : Cell := { cellDefaults with
  domain := ⟨(1001 / 3200 : ℚ), (2503 / 8000 : ℚ)⟩
  r := (39483878359471 / 50000000000000 : ℚ)
  w := (4296004467093 / 2500000000000 : ℚ)
  center := (10011 / 32000 : ℚ)
  supportValue := (3642479075346603 / 5000000000000000 : ℚ)
  supportSlope := (-5522804816546767 / 1000000000000000 : ℚ)
  oldCenter := (3642479075346603 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_780
  oldLo := (36399999999999999 / 50000000000000000 : ℚ)
  oldHi := (1822486033519553 / 2500000000000000 : ℚ)
  oldPieces := [piece_1686, piece_1687]
}

def cell_8119 : Cell := { cellDefaults with
  domain := ⟨(2503 / 8000 : ℚ), (5007 / 16000 : ℚ)⟩
  r := (39483878359471 / 50000000000000 : ℚ)
  w := (4296004467093 / 2500000000000 : ℚ)
  center := (10013 / 32000 : ℚ)
  supportValue := (728151264115357 / 1000000000000000 : ℚ)
  supportSlope := (-110378641635549 / 20000000000000 : ℚ)
  oldCenter := (728151264115357 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_780
  oldLo := (18187500000000001 / 25000000000000000 : ℚ)
  oldHi := (18212500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1685, piece_1686]
}

def cell_8120 : Cell := { cellDefaults with
  domain := ⟨(5007 / 16000 : ℚ), (313 / 1000 : ℚ)⟩
  r := (39483878359471 / 50000000000000 : ℚ)
  w := (4296004467093 / 2500000000000 : ℚ)
  center := (2003 / 6400 : ℚ)
  supportValue := (11644894965213 / 16000000000000 : ℚ)
  supportSlope := (-1378811355494669 / 250000000000000 : ℚ)
  oldCenter := (11644894965213 / 16000000000000 : ℚ)
  newCoefficients := coefficients_780
  oldLo := (18187500000000001 / 25000000000000000 : ℚ)
  oldHi := (36399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1685]
}

def cell_8121 : Cell := { cellDefaults with
  domain := ⟨(313 / 1000 : ℚ), (5009 / 16000 : ℚ)⟩
  r := (39453797657631 / 50000000000000 : ℚ)
  w := (17174242255707 / 10000000000000 : ℚ)
  center := (10017 / 32000 : ℚ)
  supportValue := (728838885701483 / 1000000000000000 : ℚ)
  supportSlope := (-552270861641091 / 100000000000000 : ℚ)
  oldCenter := (728838885701483 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_781
  oldLo := (18212500000000001 / 25000000000000000 : ℚ)
  oldHi := (18237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1687, piece_1688, piece_1689]
}

def cell_8122 : Cell := { cellDefaults with
  domain := ⟨(5009 / 16000 : ℚ), (501 / 1600 : ℚ)⟩
  r := (39453797657631 / 50000000000000 : ℚ)
  w := (17174242255707 / 10000000000000 : ℚ)
  center := (10019 / 32000 : ℚ)
  supportValue := (7284933336197611 / 10000000000000000 : ℚ)
  supportSlope := (-5518842961443227 / 1000000000000000 : ℚ)
  oldCenter := (7284933336197611 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_781
  oldLo := (36399999999999999 / 50000000000000000 : ℚ)
  oldHi := (1822486033519553 / 2500000000000000 : ℚ)
  oldPieces := [piece_1686, piece_1687]
}

def cell_8123 : Cell := { cellDefaults with
  domain := ⟨(501 / 1600 : ℚ), (5011 / 16000 : ℚ)⟩
  r := (39453797657631 / 50000000000000 : ℚ)
  w := (17174242255707 / 10000000000000 : ℚ)
  center := (10021 / 32000 : ℚ)
  supportValue := (910186287751899 / 1250000000000000 : ℚ)
  supportSlope := (-551497925399147 / 100000000000000 : ℚ)
  oldCenter := (910186287751899 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_781
  oldLo := (18187500000000001 / 25000000000000000 : ℚ)
  oldHi := (18212500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1685, piece_1686]
}

def cell_8124 : Cell := { cellDefaults with
  domain := ⟨(5011 / 16000 : ℚ), (1253 / 4000 : ℚ)⟩
  r := (39453797657631 / 50000000000000 : ℚ)
  w := (17174242255707 / 10000000000000 : ℚ)
  center := (10023 / 32000 : ℚ)
  supportValue := (3639019740865923 / 5000000000000000 : ℚ)
  supportSlope := (-2755649514202929 / 500000000000000 : ℚ)
  oldCenter := (3639019740865923 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_781
  oldLo := (18187500000000001 / 25000000000000000 : ℚ)
  oldHi := (36399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1685]
}

def cell_8125 : Cell := { cellDefaults with
  domain := ⟨(1253 / 4000 : ℚ), (5013 / 16000 : ℚ)⟩
  r := (39453797657631 / 50000000000000 : ℚ)
  w := (17174242255707 / 10000000000000 : ℚ)
  center := (401 / 1280 : ℚ)
  supportValue := (3637298085762641 / 5000000000000000 : ℚ)
  supportSlope := (-5507472832647409 / 1000000000000000 : ℚ)
  oldCenter := (3637298085762641 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_781
  oldLo := (36349999999999999 / 50000000000000000 : ℚ)
  oldHi := (36399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1684, piece_1685]
}

def cell_8126 : Cell := { cellDefaults with
  domain := ⟨(5013 / 16000 : ℚ), (2507 / 8000 : ℚ)⟩
  r := (39453797657631 / 50000000000000 : ℚ)
  w := (17174242255707 / 10000000000000 : ℚ)
  center := (10027 / 32000 : ℚ)
  supportValue := (1817788793354151 / 2500000000000000 : ℚ)
  supportSlope := (-1100723038344853 / 200000000000000 : ℚ)
  oldCenter := (1817788793354151 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_781
  oldLo := (72650000000000003 / 100000000000000000 : ℚ)
  oldHi := (18187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1683, piece_1684]
}

def cell_8127 : Cell := { cellDefaults with
  domain := ⟨(2507 / 8000 : ℚ), (1003 / 3200 : ℚ)⟩
  r := (39453797657631 / 50000000000000 : ℚ)
  w := (17174242255707 / 10000000000000 : ℚ)
  center := (10029 / 32000 : ℚ)
  supportValue := (7267716550345651 / 10000000000000000 : ℚ)
  supportSlope := (-2749948696985527 / 500000000000000 : ℚ)
  oldCenter := (7267716550345651 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_781
  oldLo := (72650000000000003 / 100000000000000000 : ℚ)
  oldHi := (36349999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1683]
}

def cell_8128 : Cell := { cellDefaults with
  domain := ⟨(1003 / 3200 : ℚ), (627 / 2000 : ℚ)⟩
  r := (39453797657631 / 50000000000000 : ℚ)
  w := (17174242255707 / 10000000000000 : ℚ)
  center := (10031 / 32000 : ℚ)
  supportValue := (7264280336316447 / 10000000000000000 : ℚ)
  supportSlope := (-2748061393065271 / 500000000000000 : ℚ)
  oldCenter := (7264280336316447 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_781
  oldLo := (36299999999999999 / 50000000000000000 : ℚ)
  oldHi := (36349999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1682, piece_1683]
}

def cell_8129 : Cell := { cellDefaults with
  domain := ⟨(627 / 2000 : ℚ), (5017 / 16000 : ℚ)⟩
  r := (15769508323023 / 20000000000000 : ℚ)
  w := (17164488127759 / 10000000000000 : ℚ)
  center := (10033 / 32000 : ℚ)
  supportValue := (1818643363603979 / 2500000000000000 : ℚ)
  supportSlope := (-5503521064177619 / 1000000000000000 : ℚ)
  oldCenter := (1818643363603979 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_782
  oldLo := (36349999999999999 / 50000000000000000 : ℚ)
  oldHi := (36399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1684, piece_1685]
}

def cell_8130 : Cell := { cellDefaults with
  domain := ⟨(5017 / 16000 : ℚ), (2509 / 8000 : ℚ)⟩
  r := (15769508323023 / 20000000000000 : ℚ)
  w := (17164488127759 / 10000000000000 : ℚ)
  center := (2007 / 6400 : ℚ)
  supportValue := (7271134924653181 / 10000000000000000 : ℚ)
  supportSlope := (-5499674200486027 / 1000000000000000 : ℚ)
  oldCenter := (7271134924653181 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_782
  oldLo := (72650000000000003 / 100000000000000000 : ℚ)
  oldHi := (18187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1683, piece_1684]
}

def cell_8131 : Cell := { cellDefaults with
  domain := ⟨(2509 / 8000 : ℚ), (5019 / 16000 : ℚ)⟩
  r := (15769508323023 / 20000000000000 : ℚ)
  w := (17164488127759 / 10000000000000 : ℚ)
  center := (10037 / 32000 : ℚ)
  supportValue := (90846234515409 / 125000000000000 : ℚ)
  supportSlope := (-2747982436082097 / 500000000000000 : ℚ)
  oldCenter := (90846234515409 / 125000000000000 : ℚ)
  newCoefficients := coefficients_782
  oldLo := (72650000000000003 / 100000000000000000 : ℚ)
  oldHi := (36349999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1683]
}

def cell_8132 : Cell := { cellDefaults with
  domain := ⟨(5019 / 16000 : ℚ), (251 / 800 : ℚ)⟩
  r := (15769508323023 / 20000000000000 : ℚ)
  w := (17164488127759 / 10000000000000 : ℚ)
  center := (10039 / 32000 : ℚ)
  supportValue := (3632132500063683 / 5000000000000000 : ℚ)
  supportSlope := (-2196881461452449 / 400000000000000 : ℚ)
  oldCenter := (3632132500063683 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_782
  oldLo := (36299999999999999 / 50000000000000000 : ℚ)
  oldHi := (36349999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1682, piece_1683]
}

def cell_8133 : Cell := { cellDefaults with
  domain := ⟨(251 / 800 : ℚ), (5021 / 16000 : ℚ)⟩
  r := (15769508323023 / 20000000000000 : ℚ)
  w := (17164488127759 / 10000000000000 : ℚ)
  center := (10041 / 32000 : ℚ)
  supportValue := (453802098008557 / 625000000000000 : ℚ)
  supportSlope := (-1372090777443269 / 250000000000000 : ℚ)
  oldCenter := (453802098008557 / 625000000000000 : ℚ)
  newCoefficients := coefficients_782
  oldLo := (72550000000000003 / 100000000000000000 : ℚ)
  oldHi := (72650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1681, piece_1682]
}

def cell_8134 : Cell := { cellDefaults with
  domain := ⟨(5021 / 16000 : ℚ), (2511 / 8000 : ℚ)⟩
  r := (15769508323023 / 20000000000000 : ℚ)
  w := (17164488127759 / 10000000000000 : ℚ)
  center := (10043 / 32000 : ℚ)
  supportValue := (7257404471762341 / 10000000000000000 : ℚ)
  supportSlope := (-5484619967383253 / 1000000000000000 : ℚ)
  oldCenter := (7257404471762341 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_782
  oldLo := (72550000000000003 / 100000000000000000 : ℚ)
  oldHi := (36299999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1681]
}

def cell_8135 : Cell := { cellDefaults with
  domain := ⟨(2511 / 8000 : ℚ), (5023 / 16000 : ℚ)⟩
  r := (15769508323023 / 20000000000000 : ℚ)
  w := (17164488127759 / 10000000000000 : ℚ)
  center := (2009 / 6400 : ℚ)
  supportValue := (7253977773754703 / 10000000000000000 : ℚ)
  supportSlope := (-2740453260642539 / 500000000000000 : ℚ)
  oldCenter := (7253977773754703 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_782
  oldLo := (36249999999999999 / 50000000000000000 : ℚ)
  oldHi := (36299999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1680, piece_1681]
}

def cell_8136 : Cell := { cellDefaults with
  domain := ⟨(5023 / 16000 : ℚ), (157 / 500 : ℚ)⟩
  r := (15769508323023 / 20000000000000 : ℚ)
  w := (17164488127759 / 10000000000000 : ℚ)
  center := (10047 / 32000 : ℚ)
  supportValue := (7250553425126993 / 10000000000000000 : ℚ)
  supportSlope := (-5477072289078677 / 1000000000000000 : ℚ)
  oldCenter := (7250553425126993 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_782
  oldLo := (72450000000000003 / 100000000000000000 : ℚ)
  oldHi := (72550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1679, piece_1680]
}

def cell_8137 : Cell := { cellDefaults with
  domain := ⟨(157 / 500 : ℚ), (6280949720670391 / 20000000000000000 : ℚ)⟩
  center := (12560949720670391 / 40000000000000000 : ℚ)
  supportValue := (7261227352881233 / 10000000000000000 : ℚ)
  supportSlope := (-5484813287044279 / 1000000000000000 : ℚ)
  oldCenter := (7261227352881233 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_783
  oldLo := (72550000000000003 / 100000000000000000 : ℚ)
  oldHi := (72650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1681, piece_1682]
}

def cell_8138 : Cell := { cellDefaults with
  domain := ⟨(6280949720670391 / 20000000000000000 : ℚ), (3140949720670391 / 10000000000000000 : ℚ)⟩
  center := (12562849162011173 / 40000000000000000 : ℚ)
  supportValue := (7258623456094003 / 10000000000000000 : ℚ)
  supportSlope := (-5482170141574021 / 1000000000000000 : ℚ)
  oldCenter := (7258623456094003 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_783
  oldLo := (72550000000000003 / 100000000000000000 : ℚ)
  oldHi := (36299999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1681]
}

def cell_8139 : Cell := { cellDefaults with
  domain := ⟨(3140949720670391 / 10000000000000000 : ℚ), (6282849162011173 / 20000000000000000 : ℚ)⟩
  center := (2512949720670391 / 8000000000000000 : ℚ)
  supportValue := (7256020927053151 / 10000000000000000 : ℚ)
  supportSlope := (-273955932047339 / 50000000000000 : ℚ)
  oldCenter := (7256020927053151 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_783
  oldLo := (36249999999999999 / 50000000000000000 : ℚ)
  oldHi := (36299999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1680, piece_1681]
}

def cell_8140 : Cell := { cellDefaults with
  domain := ⟨(6282849162011173 / 20000000000000000 : ℚ), (1570949720670391 / 5000000000000000 : ℚ)⟩
  center := (12566648044692737 / 40000000000000000 : ℚ)
  supportValue := (7253419733740719 / 10000000000000000 : ℚ)
  supportSlope := (-438115271824663 / 80000000000000 : ℚ)
  oldCenter := (7253419733740719 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_783
  oldLo := (36249999999999999 / 50000000000000000 : ℚ)
  oldHi := (72550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1680]
}

def cell_8141 : Cell := { cellDefaults with
  domain := ⟨(1570949720670391 / 5000000000000000 : ℚ), (1257 / 4000 : ℚ)⟩
  center := (3142199720670391 / 10000000000000000 : ℚ)
  supportValue := (3625237971521381 / 5000000000000000 : ℚ)
  supportSlope := (-10946196024768117 / 2000000000000000 : ℚ)
  oldCenter := (3625237971521381 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_784
  oldLo := (72450000000000003 / 100000000000000000 : ℚ)
  oldHi := (72550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1679, piece_1680]
}

def cell_8142 : Cell := { cellDefaults with
  domain := ⟨(1257 / 4000 : ℚ), (5029 / 16000 : ℚ)⟩
  center := (10057 / 32000 : ℚ)
  supportValue := (7247123219381639 / 10000000000000000 : ℚ)
  supportSlope := (-5469406041115121 / 1000000000000000 : ℚ)
  oldCenter := (7247123219381639 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_784
  oldLo := (72450000000000003 / 100000000000000000 : ℚ)
  oldHi := (36249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1679]
}

def cell_8143 : Cell := { cellDefaults with
  domain := ⟨(5029 / 16000 : ℚ), (503 / 1600 : ℚ)⟩
  center := (10059 / 32000 : ℚ)
  supportValue := (1448741200103543 / 2000000000000000 : ℚ)
  supportSlope := (-10931497780660493 / 2000000000000000 : ℚ)
  oldCenter := (1448741200103543 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_784
  oldLo := (36199999999999999 / 50000000000000000 : ℚ)
  oldHi := (36249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1678, piece_1679]
}

def cell_8144 : Cell := { cellDefaults with
  domain := ⟨(503 / 1600 : ℚ), (5031 / 16000 : ℚ)⟩
  center := (10061 / 32000 : ℚ)
  supportValue := (3620145571792513 / 5000000000000000 : ℚ)
  supportSlope := (-1365482747388569 / 250000000000000 : ℚ)
  oldCenter := (3620145571792513 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_784
  oldLo := (72350000000000003 / 100000000000000000 : ℚ)
  oldHi := (72450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1677, piece_1678]
}

def cell_8145 : Cell := { cellDefaults with
  domain := ⟨(5031 / 16000 : ℚ), (629 / 2000 : ℚ)⟩
  center := (10063 / 32000 : ℚ)
  supportValue := (723687855929521 / 1000000000000000 : ℚ)
  supportSlope := (-2729069266502293 / 500000000000000 : ℚ)
  oldCenter := (723687855929521 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_784
  oldLo := (72350000000000003 / 100000000000000000 : ℚ)
  oldHi := (36199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1677]
}

def cell_8146 : Cell := { cellDefaults with
  domain := ⟨(629 / 2000 : ℚ), (5033 / 16000 : ℚ)⟩
  r := (78727761726239 / 100000000000000 : ℚ)
  w := (17145040297769 / 10000000000000 : ℚ)
  center := (2013 / 6400 : ℚ)
  supportValue := (289884406928673 / 400000000000000 : ℚ)
  supportSlope := (-10930993811896883 / 2000000000000000 : ℚ)
  oldCenter := (289884406928673 / 400000000000000 : ℚ)
  newCoefficients := coefficients_785
  oldLo := (72450000000000003 / 100000000000000000 : ℚ)
  oldHi := (36249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1679]
}

def cell_8147 : Cell := { cellDefaults with
  domain := ⟨(5033 / 16000 : ℚ), (2517 / 8000 : ℚ)⟩
  r := (78727761726239 / 100000000000000 : ℚ)
  w := (17145040297769 / 10000000000000 : ℚ)
  center := (10067 / 32000 : ℚ)
  supportValue := (28295685130721 / 39062500000000 : ℚ)
  supportSlope := (-2730925610794799 / 500000000000000 : ℚ)
  oldCenter := (28295685130721 / 39062500000000 : ℚ)
  newCoefficients := coefficients_785
  oldLo := (36199999999999999 / 50000000000000000 : ℚ)
  oldHi := (36249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1678, piece_1679]
}

def cell_8148 : Cell := { cellDefaults with
  domain := ⟨(2517 / 8000 : ℚ), (1007 / 3200 : ℚ)⟩
  r := (78727761726239 / 100000000000000 : ℚ)
  w := (17145040297769 / 10000000000000 : ℚ)
  center := (10069 / 32000 : ℚ)
  supportValue := (7240282970430323 / 10000000000000000 : ℚ)
  supportSlope := (-136451069924437 / 25000000000000 : ℚ)
  oldCenter := (7240282970430323 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_785
  oldLo := (72350000000000003 / 100000000000000000 : ℚ)
  oldHi := (72450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1677, piece_1678]
}

def cell_8149 : Cell := { cellDefaults with
  domain := ⟨(1007 / 3200 : ℚ), (1259 / 4000 : ℚ)⟩
  r := (78727761726239 / 100000000000000 : ℚ)
  w := (17145040297769 / 10000000000000 : ℚ)
  center := (10071 / 32000 : ℚ)
  supportValue := (3618436406598863 / 5000000000000000 : ℚ)
  supportSlope := (-1090851834905493 / 200000000000000 : ℚ)
  oldCenter := (3618436406598863 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_785
  oldLo := (72350000000000003 / 100000000000000000 : ℚ)
  oldHi := (36199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1677]
}

theorem check_8100 : cell_8100.check = true := by
  decide +kernel

theorem check_8101 : cell_8101.check = true := by
  decide +kernel

theorem check_8102 : cell_8102.check = true := by
  decide +kernel

theorem check_8103 : cell_8103.check = true := by
  decide +kernel

theorem check_8104 : cell_8104.check = true := by
  decide +kernel

theorem check_8105 : cell_8105.check = true := by
  decide +kernel

theorem check_8106 : cell_8106.check = true := by
  decide +kernel

theorem check_8107 : cell_8107.check = true := by
  decide +kernel

theorem check_8108 : cell_8108.check = true := by
  decide +kernel

theorem check_8109 : cell_8109.check = true := by
  decide +kernel

theorem check_8110 : cell_8110.check = true := by
  decide +kernel

theorem check_8111 : cell_8111.check = true := by
  decide +kernel

theorem check_8112 : cell_8112.check = true := by
  decide +kernel

theorem check_8113 : cell_8113.check = true := by
  decide +kernel

theorem check_8114 : cell_8114.check = true := by
  decide +kernel

theorem check_8115 : cell_8115.check = true := by
  decide +kernel

theorem check_8116 : cell_8116.check = true := by
  decide +kernel

theorem check_8117 : cell_8117.check = true := by
  decide +kernel

theorem check_8118 : cell_8118.check = true := by
  decide +kernel

theorem check_8119 : cell_8119.check = true := by
  decide +kernel

theorem check_8120 : cell_8120.check = true := by
  decide +kernel

theorem check_8121 : cell_8121.check = true := by
  decide +kernel

theorem check_8122 : cell_8122.check = true := by
  decide +kernel

theorem check_8123 : cell_8123.check = true := by
  decide +kernel

theorem check_8124 : cell_8124.check = true := by
  decide +kernel

theorem check_8125 : cell_8125.check = true := by
  decide +kernel

theorem check_8126 : cell_8126.check = true := by
  decide +kernel

theorem check_8127 : cell_8127.check = true := by
  decide +kernel

theorem check_8128 : cell_8128.check = true := by
  decide +kernel

theorem check_8129 : cell_8129.check = true := by
  decide +kernel

theorem check_8130 : cell_8130.check = true := by
  decide +kernel

theorem check_8131 : cell_8131.check = true := by
  decide +kernel

theorem check_8132 : cell_8132.check = true := by
  decide +kernel

theorem check_8133 : cell_8133.check = true := by
  decide +kernel

theorem check_8134 : cell_8134.check = true := by
  decide +kernel

theorem check_8135 : cell_8135.check = true := by
  decide +kernel

theorem check_8136 : cell_8136.check = true := by
  decide +kernel

theorem check_8137 : cell_8137.check = true := by
  decide +kernel

theorem check_8138 : cell_8138.check = true := by
  decide +kernel

theorem check_8139 : cell_8139.check = true := by
  decide +kernel

theorem check_8140 : cell_8140.check = true := by
  decide +kernel

theorem check_8141 : cell_8141.check = true := by
  decide +kernel

theorem check_8142 : cell_8142.check = true := by
  decide +kernel

theorem check_8143 : cell_8143.check = true := by
  decide +kernel

theorem check_8144 : cell_8144.check = true := by
  decide +kernel

theorem check_8145 : cell_8145.check = true := by
  decide +kernel

theorem check_8146 : cell_8146.check = true := by
  decide +kernel

theorem check_8147 : cell_8147.check = true := by
  decide +kernel

theorem check_8148 : cell_8148.check = true := by
  decide +kernel

theorem check_8149 : cell_8149.check = true := by
  decide +kernel

def cells : List Cell := [cell_8100, cell_8101, cell_8102, cell_8103, cell_8104, cell_8105, cell_8106, cell_8107, cell_8108, cell_8109, cell_8110, cell_8111, cell_8112, cell_8113, cell_8114, cell_8115, cell_8116, cell_8117, cell_8118, cell_8119, cell_8120, cell_8121, cell_8122, cell_8123, cell_8124, cell_8125, cell_8126, cell_8127, cell_8128, cell_8129, cell_8130, cell_8131, cell_8132, cell_8133, cell_8134, cell_8135, cell_8136, cell_8137, cell_8138, cell_8139, cell_8140, cell_8141, cell_8142, cell_8143, cell_8144, cell_8145, cell_8146, cell_8147, cell_8148, cell_8149]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8100, check_8101, check_8102, check_8103, check_8104, check_8105, check_8106, check_8107, check_8108, check_8109, check_8110, check_8111, check_8112, check_8113, check_8114, check_8115, check_8116, check_8117, check_8118, check_8119, check_8120, check_8121, check_8122, check_8123, check_8124, check_8125, check_8126, check_8127, check_8128, check_8129, check_8130, check_8131, check_8132, check_8133, check_8134, check_8135, check_8136, check_8137, check_8138, check_8139, check_8140, check_8141, check_8142, check_8143, check_8144, check_8145, check_8146, check_8147, check_8148, check_8149, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0162

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0162
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0162
open AnalyticBounds.ExpressionCertificate

theorem linked_8100 : Linked cell_8100 pieces := by
  link_source cell_8100 with piece_778 using piece_778_mem, ⟨piece_1694_mem, piece_1695_mem⟩

theorem linked_8101 : Linked cell_8101 pieces := by
  link_source cell_8101 with piece_778 using piece_778_mem, ⟨piece_1693_mem, piece_1694_mem⟩

theorem linked_8102 : Linked cell_8102 pieces := by
  link_source cell_8102 with piece_778 using piece_778_mem, piece_1693_mem

theorem linked_8103 : Linked cell_8103 pieces := by
  link_source cell_8103 with piece_778 using piece_778_mem, ⟨piece_1692_mem, piece_1693_mem⟩

theorem linked_8104 : Linked cell_8104 pieces := by
  link_source cell_8104 with piece_778 using piece_778_mem, ⟨piece_1691_mem, piece_1692_mem⟩

theorem linked_8105 : Linked cell_8105 pieces := by
  link_source cell_8105 with piece_779 using piece_779_mem, ⟨piece_1693_mem, piece_1694_mem⟩

theorem linked_8106 : Linked cell_8106 pieces := by
  link_source cell_8106 with piece_779 using piece_779_mem, piece_1693_mem

theorem linked_8107 : Linked cell_8107 pieces := by
  link_source cell_8107 with piece_779 using piece_779_mem, ⟨piece_1692_mem, piece_1693_mem⟩

theorem linked_8108 : Linked cell_8108 pieces := by
  link_source cell_8108 with piece_779 using piece_779_mem, ⟨piece_1691_mem, piece_1692_mem⟩

theorem linked_8109 : Linked cell_8109 pieces := by
  link_source cell_8109 with piece_779 using piece_779_mem, piece_1691_mem

theorem linked_8110 : Linked cell_8110 pieces := by
  link_source cell_8110 with piece_779 using piece_779_mem, ⟨piece_1690_mem, piece_1691_mem⟩

theorem linked_8111 : Linked cell_8111 pieces := by
  link_source cell_8111 with piece_779 using piece_779_mem, ⟨piece_1689_mem, piece_1690_mem⟩

theorem linked_8112 : Linked cell_8112 pieces := by
  link_source cell_8112 with piece_779 using piece_779_mem, piece_1689_mem

theorem linked_8113 : Linked cell_8113 pieces := by
  link_source cell_8113 with piece_780 using piece_780_mem, piece_1691_mem

theorem linked_8114 : Linked cell_8114 pieces := by
  link_source cell_8114 with piece_780 using piece_780_mem, ⟨piece_1690_mem, piece_1691_mem⟩

theorem linked_8115 : Linked cell_8115 pieces := by
  link_source cell_8115 with piece_780 using piece_780_mem, ⟨piece_1689_mem, piece_1690_mem⟩

theorem linked_8116 : Linked cell_8116 pieces := by
  link_source cell_8116 with piece_780 using piece_780_mem, piece_1689_mem

theorem linked_8117 : Linked cell_8117 pieces := by
  link_source cell_8117 with piece_780 using piece_780_mem, ⟨piece_1687_mem, ⟨piece_1688_mem, piece_1689_mem⟩⟩

theorem linked_8118 : Linked cell_8118 pieces := by
  link_source cell_8118 with piece_780 using piece_780_mem, ⟨piece_1686_mem, piece_1687_mem⟩

theorem linked_8119 : Linked cell_8119 pieces := by
  link_source cell_8119 with piece_780 using piece_780_mem, ⟨piece_1685_mem, piece_1686_mem⟩

theorem linked_8120 : Linked cell_8120 pieces := by
  link_source cell_8120 with piece_780 using piece_780_mem, piece_1685_mem

theorem linked_8121 : Linked cell_8121 pieces := by
  link_source cell_8121 with piece_781 using piece_781_mem, ⟨piece_1687_mem, ⟨piece_1688_mem, piece_1689_mem⟩⟩

theorem linked_8122 : Linked cell_8122 pieces := by
  link_source cell_8122 with piece_781 using piece_781_mem, ⟨piece_1686_mem, piece_1687_mem⟩

theorem linked_8123 : Linked cell_8123 pieces := by
  link_source cell_8123 with piece_781 using piece_781_mem, ⟨piece_1685_mem, piece_1686_mem⟩

theorem linked_8124 : Linked cell_8124 pieces := by
  link_source cell_8124 with piece_781 using piece_781_mem, piece_1685_mem

theorem linked_8125 : Linked cell_8125 pieces := by
  link_source cell_8125 with piece_781 using piece_781_mem, ⟨piece_1684_mem, piece_1685_mem⟩

theorem linked_8126 : Linked cell_8126 pieces := by
  link_source cell_8126 with piece_781 using piece_781_mem, ⟨piece_1683_mem, piece_1684_mem⟩

theorem linked_8127 : Linked cell_8127 pieces := by
  link_source cell_8127 with piece_781 using piece_781_mem, piece_1683_mem

theorem linked_8128 : Linked cell_8128 pieces := by
  link_source cell_8128 with piece_781 using piece_781_mem, ⟨piece_1682_mem, piece_1683_mem⟩

theorem linked_8129 : Linked cell_8129 pieces := by
  link_source cell_8129 with piece_782 using piece_782_mem, ⟨piece_1684_mem, piece_1685_mem⟩

theorem linked_8130 : Linked cell_8130 pieces := by
  link_source cell_8130 with piece_782 using piece_782_mem, ⟨piece_1683_mem, piece_1684_mem⟩

theorem linked_8131 : Linked cell_8131 pieces := by
  link_source cell_8131 with piece_782 using piece_782_mem, piece_1683_mem

theorem linked_8132 : Linked cell_8132 pieces := by
  link_source cell_8132 with piece_782 using piece_782_mem, ⟨piece_1682_mem, piece_1683_mem⟩

theorem linked_8133 : Linked cell_8133 pieces := by
  link_source cell_8133 with piece_782 using piece_782_mem, ⟨piece_1681_mem, piece_1682_mem⟩

theorem linked_8134 : Linked cell_8134 pieces := by
  link_source cell_8134 with piece_782 using piece_782_mem, piece_1681_mem

theorem linked_8135 : Linked cell_8135 pieces := by
  link_source cell_8135 with piece_782 using piece_782_mem, ⟨piece_1680_mem, piece_1681_mem⟩

theorem linked_8136 : Linked cell_8136 pieces := by
  link_source cell_8136 with piece_782 using piece_782_mem, ⟨piece_1679_mem, piece_1680_mem⟩

theorem linked_8137 : Linked cell_8137 pieces := by
  link_source cell_8137 with piece_783 using piece_783_mem, ⟨piece_1681_mem, piece_1682_mem⟩

theorem linked_8138 : Linked cell_8138 pieces := by
  link_source cell_8138 with piece_783 using piece_783_mem, piece_1681_mem

theorem linked_8139 : Linked cell_8139 pieces := by
  link_source cell_8139 with piece_783 using piece_783_mem, ⟨piece_1680_mem, piece_1681_mem⟩

theorem linked_8140 : Linked cell_8140 pieces := by
  link_source cell_8140 with piece_783 using piece_783_mem, piece_1680_mem

theorem linked_8141 : Linked cell_8141 pieces := by
  link_source cell_8141 with piece_784 using piece_784_mem, ⟨piece_1679_mem, piece_1680_mem⟩

theorem linked_8142 : Linked cell_8142 pieces := by
  link_source cell_8142 with piece_784 using piece_784_mem, piece_1679_mem

theorem linked_8143 : Linked cell_8143 pieces := by
  link_source cell_8143 with piece_784 using piece_784_mem, ⟨piece_1678_mem, piece_1679_mem⟩

theorem linked_8144 : Linked cell_8144 pieces := by
  link_source cell_8144 with piece_784 using piece_784_mem, ⟨piece_1677_mem, piece_1678_mem⟩

theorem linked_8145 : Linked cell_8145 pieces := by
  link_source cell_8145 with piece_784 using piece_784_mem, piece_1677_mem

theorem linked_8146 : Linked cell_8146 pieces := by
  link_source cell_8146 with piece_785 using piece_785_mem, piece_1679_mem

theorem linked_8147 : Linked cell_8147 pieces := by
  link_source cell_8147 with piece_785 using piece_785_mem, ⟨piece_1678_mem, piece_1679_mem⟩

theorem linked_8148 : Linked cell_8148 pieces := by
  link_source cell_8148 with piece_785 using piece_785_mem, ⟨piece_1677_mem, piece_1678_mem⟩

theorem linked_8149 : Linked cell_8149 pieces := by
  link_source cell_8149 with piece_785 using piece_785_mem, piece_1677_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0162.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0162.cells,List.forall_mem_cons]
  exact ⟨linked_8100, linked_8101, linked_8102, linked_8103, linked_8104, linked_8105, linked_8106, linked_8107, linked_8108, linked_8109, linked_8110, linked_8111, linked_8112, linked_8113, linked_8114, linked_8115, linked_8116, linked_8117, linked_8118, linked_8119, linked_8120, linked_8121, linked_8122, linked_8123, linked_8124, linked_8125, linked_8126, linked_8127, linked_8128, linked_8129, linked_8130, linked_8131, linked_8132, linked_8133, linked_8134, linked_8135, linked_8136, linked_8137, linked_8138, linked_8139, linked_8140, linked_8141, linked_8142, linked_8143, linked_8144, linked_8145, linked_8146, linked_8147, linked_8148, linked_8149, by simp⟩

theorem covered : covers (4987 / 16000 : ℚ) (1259 / 4000 : ℚ)
    (SourceCertificates.Chunk0162.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0162
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0163
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(1259 / 4000 : ℚ), (5037 / 16000 : ℚ)⟩
  branch := .left
  r := (983350426949 / 1250000000000 : ℚ)
  w := (17135347135771 / 10000000000000 : ℚ)
  center := (10073 / 32000 : ℚ)
  supportValue := (1808366258619537 / 2500000000000000 : ℚ)
  supportSlope := (-545065301082559 / 100000000000000 : ℚ)
  oldCenter := (1808366258619537 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_786
  oldLo := (72200000000000009 / 100000000000000000 : ℚ)
  oldHi := (72250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1675, piece_1676, piece_1677]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8150 : Cell := { cellDefaults with
  r := (78727761726239 / 100000000000000 : ℚ)
  w := (17145040297769 / 10000000000000 : ℚ)
  newCoefficients := coefficients_785
  oldLo := (72300000000000009 / 100000000000000000 : ℚ)
  oldHi := (36199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1675, piece_1676, piece_1677]
}

def cell_8151 : Cell := { cellDefaults with
  domain := ⟨(5037 / 16000 : ℚ), (2519 / 8000 : ℚ)⟩
  r := (78727761726239 / 100000000000000 : ℚ)
  w := (17145040297769 / 10000000000000 : ℚ)
  center := (403 / 1280 : ℚ)
  supportValue := (7230059628403277 / 10000000000000000 : ℚ)
  supportSlope := (-1089370096867981 / 200000000000000 : ℚ)
  oldCenter := (7230059628403277 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_785
  oldLo := (72250000000000003 / 100000000000000000 : ℚ)
  oldHi := (361731843575419 / 500000000000000 : ℚ)
  oldPieces := [piece_1674, piece_1675]
}

def cell_8152 : Cell := { cellDefaults with
  domain := ⟨(2519 / 8000 : ℚ), (5039 / 16000 : ℚ)⟩
  r := (78727761726239 / 100000000000000 : ℚ)
  w := (17145040297769 / 10000000000000 : ℚ)
  center := (10077 / 32000 : ℚ)
  supportValue := (7226661522616483 / 10000000000000000 : ℚ)
  supportSlope := (-2721525026601057 / 500000000000000 : ℚ)
  oldCenter := (7226661522616483 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_785
  oldHi := (72300000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1673, piece_1674]
}

def cell_8153 : Cell := { cellDefaults with
  domain := ⟨(5039 / 16000 : ℚ), (63 / 200 : ℚ)⟩
  r := (78727761726239 / 100000000000000 : ℚ)
  w := (17145040297769 / 10000000000000 : ℚ)
  center := (10079 / 32000 : ℚ)
  supportValue := (451453479619683 / 625000000000000 : ℚ)
  supportSlope := (-5439468796815561 / 1000000000000000 : ℚ)
  oldCenter := (451453479619683 / 625000000000000 : ℚ)
  newCoefficients := coefficients_785
  oldPieces := [piece_1673]
}

def cell_8154 : Cell := { cellDefaults with
  domain := ⟨(63 / 200 : ℚ), (5041 / 16000 : ℚ)⟩
  center := (10081 / 32000 : ℚ)
  supportValue := (723345644416983 / 1000000000000000 : ℚ)
  supportSlope := (-2723383552913461 / 500000000000000 : ℚ)
  oldCenter := (723345644416983 / 1000000000000000 : ℚ)
  oldLo := (72300000000000009 / 100000000000000000 : ℚ)
  oldHi := (36199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1675, piece_1676, piece_1677]
}

def cell_8155 : Cell := { cellDefaults with
  domain := ⟨(5041 / 16000 : ℚ), (2521 / 8000 : ℚ)⟩
  center := (10083 / 32000 : ℚ)
  supportValue := (90375668305589 / 125000000000000 : ℚ)
  supportSlope := (-5442974118793131 / 1000000000000000 : ℚ)
  oldCenter := (90375668305589 / 125000000000000 : ℚ)
  oldLo := (72250000000000003 / 100000000000000000 : ℚ)
  oldHi := (361731843575419 / 500000000000000 : ℚ)
  oldPieces := [piece_1674, piece_1675]
}

def cell_8156 : Cell := { cellDefaults with
  domain := ⟨(2521 / 8000 : ℚ), (5043 / 16000 : ℚ)⟩
  center := (2017 / 6400 : ℚ)
  supportValue := (3613328889151749 / 5000000000000000 : ℚ)
  supportSlope := (-10878366431469999 / 2000000000000000 : ℚ)
  oldCenter := (3613328889151749 / 5000000000000000 : ℚ)
  oldHi := (72300000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1673, piece_1674]
}

def cell_8157 : Cell := { cellDefaults with
  domain := ⟨(5043 / 16000 : ℚ), (1261 / 4000 : ℚ)⟩
  center := (10087 / 32000 : ℚ)
  supportValue := (1805813585824533 / 2500000000000000 : ℚ)
  supportSlope := (-5435611460427481 / 1000000000000000 : ℚ)
  oldCenter := (1805813585824533 / 2500000000000000 : ℚ)
  oldPieces := [piece_1673]
}

def cell_8158 : Cell := { cellDefaults with
  domain := ⟨(1261 / 4000 : ℚ), (1009 / 3200 : ℚ)⟩
  center := (10089 / 32000 : ℚ)
  supportValue := (902482291797347 / 1250000000000000 : ℚ)
  supportSlope := (-5431831844113333 / 1000000000000000 : ℚ)
  oldCenter := (902482291797347 / 1250000000000000 : ℚ)
  oldLo := (72150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1672, piece_1673]
}

def cell_8159 : Cell := { cellDefaults with
  domain := ⟨(1009 / 3200 : ℚ), (2523 / 8000 : ℚ)⟩
  center := (10091 / 32000 : ℚ)
  supportValue := (7216464563754157 / 10000000000000000 : ℚ)
  supportSlope := (-5428047011122317 / 1000000000000000 : ℚ)
  oldCenter := (7216464563754157 / 10000000000000000 : ℚ)
  oldLo := (72100000000000009 / 100000000000000000 : ℚ)
  oldHi := (72200000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1671, piece_1672]
}

def cell_8160 : Cell := { cellDefaults with
  domain := ⟨(2523 / 8000 : ℚ), (5047 / 16000 : ℚ)⟩
  center := (10093 / 32000 : ℚ)
  supportValue := (1803268286293421 / 2500000000000000 : ℚ)
  supportSlope := (-5424456926540699 / 1000000000000000 : ℚ)
  oldCenter := (1803268286293421 / 2500000000000000 : ℚ)
  oldLo := (72100000000000009 / 100000000000000000 : ℚ)
  oldHi := (72150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1671]
}

def cell_8161 : Cell := { cellDefaults with
  domain := ⟨(5047 / 16000 : ℚ), (631 / 2000 : ℚ)⟩
  center := (2019 / 6400 : ℚ)
  supportValue := (3604842045101353 / 5000000000000000 : ℚ)
  supportSlope := (-10841418608414699 / 2000000000000000 : ℚ)
  oldCenter := (3604842045101353 / 5000000000000000 : ℚ)
  oldLo := (72050000000000003 / 100000000000000000 : ℚ)
  oldHi := (72150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1670, piece_1671]
}

def cell_8162 : Cell := { cellDefaults with
  domain := ⟨(631 / 2000 : ℚ), (5049 / 16000 : ℚ)⟩
  r := (78608413957981 / 100000000000000 : ℚ)
  w := (3425134773877 / 2000000000000 : ℚ)
  center := (10097 / 32000 : ℚ)
  supportValue := (360992729566337 / 500000000000000 : ℚ)
  supportSlope := (-33924794181317 / 6250000000000 : ℚ)
  oldCenter := (360992729566337 / 500000000000000 : ℚ)
  newCoefficients := coefficients_787
  oldLo := (72150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1672, piece_1673]
}

def cell_8163 : Cell := { cellDefaults with
  domain := ⟨(5049 / 16000 : ℚ), (101 / 320 : ℚ)⟩
  r := (78608413957981 / 100000000000000 : ℚ)
  w := (3425134773877 / 2000000000000 : ℚ)
  center := (10099 / 32000 : ℚ)
  supportValue := (721646323341213 / 1000000000000000 : ℚ)
  supportSlope := (-2712095912466239 / 500000000000000 : ℚ)
  oldCenter := (721646323341213 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_787
  oldLo := (72100000000000009 / 100000000000000000 : ℚ)
  oldHi := (72200000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1671, piece_1672]
}

def cell_8164 : Cell := { cellDefaults with
  domain := ⟨(101 / 320 : ℚ), (5051 / 16000 : ℚ)⟩
  r := (78608413957981 / 100000000000000 : ℚ)
  w := (3425134773877 / 2000000000000 : ℚ)
  center := (10101 / 32000 : ℚ)
  supportValue := (7213074221223927 / 10000000000000000 : ℚ)
  supportSlope := (-5420611639717521 / 1000000000000000 : ℚ)
  oldCenter := (7213074221223927 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_787
  oldLo := (72100000000000009 / 100000000000000000 : ℚ)
  oldHi := (72150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1671]
}

def cell_8165 : Cell := { cellDefaults with
  domain := ⟨(5051 / 16000 : ℚ), (1263 / 4000 : ℚ)⟩
  r := (78608413957981 / 100000000000000 : ℚ)
  w := (3425134773877 / 2000000000000 : ℚ)
  center := (10103 / 32000 : ℚ)
  supportValue := (901210945832569 / 1250000000000000 : ℚ)
  supportSlope := (-2708436803239067 / 500000000000000 : ℚ)
  oldCenter := (901210945832569 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_787
  oldLo := (72050000000000003 / 100000000000000000 : ℚ)
  oldHi := (72150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1670, piece_1671]
}

def cell_8166 : Cell := { cellDefaults with
  domain := ⟨(1263 / 4000 : ℚ), (5053 / 16000 : ℚ)⟩
  r := (78608413957981 / 100000000000000 : ℚ)
  w := (3425134773877 / 2000000000000 : ℚ)
  center := (2021 / 6400 : ℚ)
  supportValue := (1801575788618971 / 2500000000000000 : ℚ)
  supportSlope := (-541310444629417 / 100000000000000 : ℚ)
  oldCenter := (1801575788618971 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_787
  oldLo := (9000000000000001 / 12500000000000000 : ℚ)
  oldHi := (72100000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1669, piece_1670]
}

def cell_8167 : Cell := { cellDefaults with
  domain := ⟨(5053 / 16000 : ℚ), (2527 / 8000 : ℚ)⟩
  r := (78608413957981 / 100000000000000 : ℚ)
  w := (3425134773877 / 2000000000000 : ℚ)
  center := (10107 / 32000 : ℚ)
  supportValue := (3601460534775273 / 5000000000000000 : ℚ)
  supportSlope := (-2163803890886129 / 400000000000000 : ℚ)
  oldCenter := (3601460534775273 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_787
  oldLo := (9000000000000001 / 12500000000000000 : ℚ)
  oldHi := (72050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1669]
}

def cell_8168 : Cell := { cellDefaults with
  domain := ⟨(2527 / 8000 : ℚ), (1011 / 3200 : ℚ)⟩
  r := (78608413957981 / 100000000000000 : ℚ)
  w := (3425134773877 / 2000000000000 : ℚ)
  center := (10109 / 32000 : ℚ)
  supportValue := (719954133848071 / 1000000000000000 : ℚ)
  supportSlope := (-10811599203748301 / 2000000000000000 : ℚ)
  oldCenter := (719954133848071 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_787
  oldLo := (71950000000000003 / 100000000000000000 : ℚ)
  oldHi := (72050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1668, piece_1669]
}

def cell_8169 : Cell := { cellDefaults with
  domain := ⟨(1011 / 3200 : ℚ), (79 / 250 : ℚ)⟩
  r := (78608413957981 / 100000000000000 : ℚ)
  w := (3425134773877 / 2000000000000 : ℚ)
  center := (10111 / 32000 : ℚ)
  supportValue := (359808192909083 / 500000000000000 : ℚ)
  supportSlope := (-10804072813236587 / 2000000000000000 : ℚ)
  oldCenter := (359808192909083 / 500000000000000 : ℚ)
  newCoefficients := coefficients_787
  oldLo := (8987500000000001 / 12500000000000000 : ℚ)
  oldHi := (9000000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1667, piece_1668]
}

def cell_8170 : Cell := { cellDefaults with
  domain := ⟨(79 / 250 : ℚ), (5057 / 16000 : ℚ)⟩
  r := (39274450247163 / 50000000000000 : ℚ)
  w := (4279005354763 / 2500000000000 : ℚ)
  center := (10113 / 32000 : ℚ)
  supportValue := (3603151890302017 / 5000000000000000 : ℚ)
  supportSlope := (-5409260131248317 / 1000000000000000 : ℚ)
  oldCenter := (3603151890302017 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_788
  oldLo := (9000000000000001 / 12500000000000000 : ℚ)
  oldHi := (72100000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1669, piece_1670]
}

def cell_8171 : Cell := { cellDefaults with
  domain := ⟨(5057 / 16000 : ℚ), (2529 / 8000 : ℚ)⟩
  r := (39274450247163 / 50000000000000 : ℚ)
  w := (4279005354763 / 2500000000000 : ℚ)
  center := (2023 / 6400 : ℚ)
  supportValue := (3601462047628683 / 5000000000000000 : ℚ)
  supportSlope := (-1351418911707647 / 250000000000000 : ℚ)
  oldCenter := (3601462047628683 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_788
  oldLo := (9000000000000001 / 12500000000000000 : ℚ)
  oldHi := (72050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1669]
}

def cell_8172 : Cell := { cellDefaults with
  domain := ⟨(2529 / 8000 : ℚ), (5059 / 16000 : ℚ)⟩
  r := (39274450247163 / 50000000000000 : ℚ)
  w := (4279005354763 / 2500000000000 : ℚ)
  center := (10117 / 32000 : ℚ)
  supportValue := (899943344717907 / 1250000000000000 : ℚ)
  supportSlope := (-5401974897850437 / 1000000000000000 : ℚ)
  oldCenter := (899943344717907 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_788
  oldLo := (71950000000000003 / 100000000000000000 : ℚ)
  oldHi := (72050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1668, piece_1669]
}

def cell_8173 : Cell := { cellDefaults with
  domain := ⟨(5059 / 16000 : ℚ), (253 / 800 : ℚ)⟩
  r := (39274450247163 / 50000000000000 : ℚ)
  w := (4279005354763 / 2500000000000 : ℚ)
  center := (10119 / 32000 : ℚ)
  supportValue := (7196171664295969 / 10000000000000000 : ℚ)
  supportSlope := (-2699110662359061 / 500000000000000 : ℚ)
  oldCenter := (7196171664295969 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_788
  oldLo := (8987500000000001 / 12500000000000000 : ℚ)
  oldHi := (9000000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1667, piece_1668]
}

def cell_8174 : Cell := { cellDefaults with
  domain := ⟨(253 / 800 : ℚ), (5061 / 16000 : ℚ)⟩
  r := (39274450247163 / 50000000000000 : ℚ)
  w := (4279005354763 / 2500000000000 : ℚ)
  center := (10121 / 32000 : ℚ)
  supportValue := (3596399437928423 / 5000000000000000 : ℚ)
  supportSlope := (-107892522621853 / 20000000000000 : ℚ)
  oldCenter := (3596399437928423 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_788
  oldLo := (8987500000000001 / 12500000000000000 : ℚ)
  oldHi := (71950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1667]
}

def cell_8175 : Cell := { cellDefaults with
  domain := ⟨(5061 / 16000 : ℚ), (2531 / 8000 : ℚ)⟩
  r := (39274450247163 / 50000000000000 : ℚ)
  w := (4279005354763 / 2500000000000 : ℚ)
  center := (10123 / 32000 : ℚ)
  supportValue := (7189428431447703 / 10000000000000000 : ℚ)
  supportSlope := (-5390949853982363 / 1000000000000000 : ℚ)
  oldCenter := (7189428431447703 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_788
  oldLo := (71850000000000003 / 100000000000000000 : ℚ)
  oldHi := (71950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1666, piece_1667]
}

def cell_8176 : Cell := { cellDefaults with
  domain := ⟨(2531 / 8000 : ℚ), (5063 / 16000 : ℚ)⟩
  r := (39274450247163 / 50000000000000 : ℚ)
  w := (4279005354763 / 2500000000000 : ℚ)
  center := (81 / 256 : ℚ)
  supportValue := (7186060236658971 / 10000000000000000 : ℚ)
  supportSlope := (-2693601341261953 / 500000000000000 : ℚ)
  oldCenter := (7186060236658971 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_788
  oldLo := (8975000000000001 / 12500000000000000 : ℚ)
  oldHi := (8987500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1665, piece_1666]
}

def cell_8177 : Cell := { cellDefaults with
  domain := ⟨(5063 / 16000 : ℚ), (633 / 2000 : ℚ)⟩
  r := (39274450247163 / 50000000000000 : ℚ)
  w := (4279005354763 / 2500000000000 : ℚ)
  center := (10127 / 32000 : ℚ)
  supportValue := (448918395783539 / 625000000000000 : ℚ)
  supportSlope := (-5383599774113179 / 1000000000000000 : ℚ)
  oldCenter := (448918395783539 / 625000000000000 : ℚ)
  newCoefficients := coefficients_788
  oldLo := (8975000000000001 / 12500000000000000 : ℚ)
  oldHi := (71850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1665]
}

def cell_8178 : Cell := { cellDefaults with
  domain := ⟨(633 / 2000 : ℚ), (1013 / 3200 : ℚ)⟩
  r := (39244746973643 / 50000000000000 : ℚ)
  w := (17106389475867 / 10000000000000 : ℚ)
  center := (10129 / 32000 : ℚ)
  supportValue := (1798200965125919 / 2500000000000000 : ℚ)
  supportSlope := (-1347700700205401 / 250000000000000 : ℚ)
  oldCenter := (1798200965125919 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_789
  oldLo := (8987500000000001 / 12500000000000000 : ℚ)
  oldHi := (71950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1667]
}

def cell_8179 : Cell := { cellDefaults with
  domain := ⟨(1013 / 3200 : ℚ), (2533 / 8000 : ℚ)⟩
  r := (39244746973643 / 50000000000000 : ℚ)
  w := (17106389475867 / 10000000000000 : ℚ)
  center := (10131 / 32000 : ℚ)
  supportValue := (898679475385727 / 1250000000000000 : ℚ)
  supportSlope := (-2693567841458133 / 500000000000000 : ℚ)
  oldCenter := (898679475385727 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_789
  oldLo := (71850000000000003 / 100000000000000000 : ℚ)
  oldHi := (71950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1666, piece_1667]
}

def cell_8180 : Cell := { cellDefaults with
  domain := ⟨(2533 / 8000 : ℚ), (5067 / 16000 : ℚ)⟩
  r := (39244746973643 / 50000000000000 : ℚ)
  w := (17106389475867 / 10000000000000 : ℚ)
  center := (10133 / 32000 : ℚ)
  supportValue := (224564687136693 / 312500000000000 : ℚ)
  supportSlope := (-1076679638955369 / 200000000000000 : ℚ)
  oldCenter := (224564687136693 / 312500000000000 : ℚ)
  newCoefficients := coefficients_789
  oldLo := (8975000000000001 / 12500000000000000 : ℚ)
  oldHi := (8987500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1665, piece_1666]
}

def cell_8181 : Cell := { cellDefaults with
  domain := ⟨(5067 / 16000 : ℚ), (1267 / 4000 : ℚ)⟩
  r := (39244746973643 / 50000000000000 : ℚ)
  w := (17106389475867 / 10000000000000 : ℚ)
  center := (2027 / 6400 : ℚ)
  supportValue := (7182706458927959 / 10000000000000000 : ℚ)
  supportSlope := (-10759613676555091 / 2000000000000000 : ℚ)
  oldCenter := (7182706458927959 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_789
  oldLo := (8975000000000001 / 12500000000000000 : ℚ)
  oldHi := (71850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1665]
}

def cell_8182 : Cell := { cellDefaults with
  domain := ⟨(1267 / 4000 : ℚ), (5069 / 16000 : ℚ)⟩
  r := (39244746973643 / 50000000000000 : ℚ)
  w := (17106389475867 / 10000000000000 : ℚ)
  center := (10137 / 32000 : ℚ)
  supportValue := (3589672631677759 / 5000000000000000 : ℚ)
  supportSlope := (-5376160163468313 / 1000000000000000 : ℚ)
  oldCenter := (3589672631677759 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_789
  oldLo := (71750000000000003 / 100000000000000000 : ℚ)
  oldHi := (71850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1663, piece_1664, piece_1665]
}

def cell_8183 : Cell := { cellDefaults with
  domain := ⟨(5069 / 16000 : ℚ), (507 / 1600 : ℚ)⟩
  r := (39244746973643 / 50000000000000 : ℚ)
  w := (17106389475867 / 10000000000000 : ℚ)
  center := (10139 / 32000 : ℚ)
  supportValue := (1435197262904119 / 2000000000000000 : ℚ)
  supportSlope := (-10744855608621151 / 2000000000000000 : ℚ)
  oldCenter := (1435197262904119 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_789
  oldLo := (8962500000000001 / 12500000000000000 : ℚ)
  oldHi := (7179329608938547 / 10000000000000000 : ℚ)
  oldPieces := [piece_1662, piece_1663]
}

def cell_8184 : Cell := { cellDefaults with
  domain := ⟨(507 / 1600 : ℚ), (5071 / 16000 : ℚ)⟩
  r := (39244746973643 / 50000000000000 : ℚ)
  w := (17106389475867 / 10000000000000 : ℚ)
  center := (10141 / 32000 : ℚ)
  supportValue := (7172629639233891 / 10000000000000000 : ℚ)
  supportSlope := (-5368832186224637 / 1000000000000000 : ℚ)
  oldCenter := (7172629639233891 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_789
  oldLo := (8962500000000001 / 12500000000000000 : ℚ)
  oldHi := (71750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1662]
}

def cell_8185 : Cell := { cellDefaults with
  domain := ⟨(5071 / 16000 : ℚ), (317 / 1000 : ℚ)⟩
  r := (39244746973643 / 50000000000000 : ℚ)
  w := (17106389475867 / 10000000000000 : ℚ)
  center := (10143 / 32000 : ℚ)
  supportValue := (7169275294439009 / 10000000000000000 : ℚ)
  supportSlope := (-1073040594582153 / 200000000000000 : ℚ)
  oldCenter := (7169275294439009 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_789
  oldLo := (71650000000000003 / 100000000000000000 : ℚ)
  oldHi := (71750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1661, piece_1662]
}

def cell_8186 : Cell := { cellDefaults with
  domain := ⟨(317 / 1000 : ℚ), (5073 / 16000 : ℚ)⟩
  r := (78430193811633 / 100000000000000 : ℚ)
  w := (2137097210893 / 1250000000000 : ℚ)
  center := (2029 / 6400 : ℚ)
  supportValue := (1794838679870937 / 2500000000000000 : ℚ)
  supportSlope := (-5372356140007639 / 1000000000000000 : ℚ)
  oldCenter := (1794838679870937 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_790
  oldLo := (71750000000000003 / 100000000000000000 : ℚ)
  oldHi := (71850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1663, piece_1664, piece_1665]
}

def cell_8187 : Cell := { cellDefaults with
  domain := ⟨(5073 / 16000 : ℚ), (2537 / 8000 : ℚ)⟩
  r := (78430193811633 / 100000000000000 : ℚ)
  w := (2137097210893 / 1250000000000 : ℚ)
  center := (10147 / 32000 : ℚ)
  supportValue := (7175998144178393 / 10000000000000000 : ℚ)
  supportSlope := (-1073726704291289 / 200000000000000 : ℚ)
  oldCenter := (7175998144178393 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_790
  oldLo := (8962500000000001 / 12500000000000000 : ℚ)
  oldHi := (7179329608938547 / 10000000000000000 : ℚ)
  oldPieces := [piece_1662, piece_1663]
}

def cell_8188 : Cell := { cellDefaults with
  domain := ⟨(2537 / 8000 : ℚ), (203 / 640 : ℚ)⟩
  r := (78430193811633 / 100000000000000 : ℚ)
  w := (2137097210893 / 1250000000000 : ℚ)
  center := (10149 / 32000 : ℚ)
  supportValue := (717264383717051 / 1000000000000000 : ℚ)
  supportSlope := (-2682524908124151 / 500000000000000 : ℚ)
  oldCenter := (717264383717051 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_790
  oldLo := (8962500000000001 / 12500000000000000 : ℚ)
  oldHi := (71750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1662]
}

def cell_8189 : Cell := { cellDefaults with
  domain := ⟨(203 / 640 : ℚ), (1269 / 4000 : ℚ)⟩
  r := (78430193811633 / 100000000000000 : ℚ)
  w := (2137097210893 / 1250000000000 : ℚ)
  center := (10151 / 32000 : ℚ)
  supportValue := (224040370455421 / 312500000000000 : ℚ)
  supportSlope := (-670178561072543 / 125000000000000 : ℚ)
  oldCenter := (224040370455421 / 312500000000000 : ℚ)
  newCoefficients := coefficients_790
  oldLo := (71650000000000003 / 100000000000000000 : ℚ)
  oldHi := (71750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1661, piece_1662]
}

def cell_8190 : Cell := { cellDefaults with
  domain := ⟨(1269 / 4000 : ℚ), (5077 / 16000 : ℚ)⟩
  r := (78430193811633 / 100000000000000 : ℚ)
  w := (2137097210893 / 1250000000000 : ℚ)
  center := (10153 / 32000 : ℚ)
  supportValue := (716594211205379 / 1000000000000000 : ℚ)
  supportSlope := (-1071542506888079 / 200000000000000 : ℚ)
  oldCenter := (716594211205379 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_790
  oldLo := (8950000000000001 / 12500000000000000 : ℚ)
  oldHi := (8962500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1660, piece_1661]
}

def cell_8191 : Cell := { cellDefaults with
  domain := ⟨(5077 / 16000 : ℚ), (2539 / 8000 : ℚ)⟩
  r := (78430193811633 / 100000000000000 : ℚ)
  w := (2137097210893 / 1250000000000 : ℚ)
  center := (2031 / 6400 : ℚ)
  supportValue := (7162594628338089 / 10000000000000000 : ℚ)
  supportSlope := (-10708257419445033 / 2000000000000000 : ℚ)
  oldCenter := (7162594628338089 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_790
  oldLo := (8950000000000001 / 12500000000000000 : ℚ)
  oldHi := (71650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1660]
}

def cell_8192 : Cell := { cellDefaults with
  domain := ⟨(2539 / 8000 : ℚ), (5079 / 16000 : ℚ)⟩
  r := (78430193811633 / 100000000000000 : ℚ)
  w := (2137097210893 / 1250000000000 : ℚ)
  center := (10157 / 32000 : ℚ)
  supportValue := (7159249465158061 / 10000000000000000 : ℚ)
  supportSlope := (-2675260573637317 / 500000000000000 : ℚ)
  oldCenter := (7159249465158061 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_790
  oldLo := (35775000000000001 / 50000000000000000 : ℚ)
  oldHi := (71650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1659, piece_1660]
}

def cell_8193 : Cell := { cellDefaults with
  domain := ⟨(5079 / 16000 : ℚ), (127 / 400 : ℚ)⟩
  r := (78430193811633 / 100000000000000 : ℚ)
  w := (2137097210893 / 1250000000000 : ℚ)
  center := (10159 / 32000 : ℚ)
  supportValue := (7155906541234491 / 10000000000000000 : ℚ)
  supportSlope := (-5346811384349337 / 1000000000000000 : ℚ)
  oldCenter := (7155906541234491 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_790
  oldLo := (8937500000000001 / 12500000000000000 : ℚ)
  oldHi := (8950000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1658, piece_1659]
}

def cell_8194 : Cell := { cellDefaults with
  domain := ⟨(127 / 400 : ℚ), (5081 / 16000 : ℚ)⟩
  r := (39185499217063 / 50000000000000 : ℚ)
  w := (3417437299749 / 2000000000000 : ℚ)
  center := (10161 / 32000 : ℚ)
  supportValue := (7165955941355759 / 10000000000000000 : ℚ)
  supportSlope := (-1070785612351699 / 200000000000000 : ℚ)
  oldCenter := (7165955941355759 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_791
  oldLo := (8950000000000001 / 12500000000000000 : ℚ)
  oldHi := (8962500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1660, piece_1661]
}

def cell_8195 : Cell := { cellDefaults with
  domain := ⟨(5081 / 16000 : ℚ), (2541 / 8000 : ℚ)⟩
  r := (39185499217063 / 50000000000000 : ℚ)
  w := (3417437299749 / 2000000000000 : ℚ)
  center := (10163 / 32000 : ℚ)
  supportValue := (71626108197899 / 100000000000000 : ℚ)
  supportSlope := (-1337589106833903 / 250000000000000 : ℚ)
  oldCenter := (71626108197899 / 100000000000000 : ℚ)
  newCoefficients := coefficients_791
  oldLo := (8950000000000001 / 12500000000000000 : ℚ)
  oldHi := (71650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1660]
}

def cell_8196 : Cell := { cellDefaults with
  domain := ⟨(2541 / 8000 : ℚ), (5083 / 16000 : ℚ)⟩
  r := (39185499217063 / 50000000000000 : ℚ)
  w := (3417437299749 / 2000000000000 : ℚ)
  center := (2033 / 6400 : ℚ)
  supportValue := (3579634006341747 / 5000000000000000 : ℚ)
  supportSlope := (-2673378228998047 / 500000000000000 : ℚ)
  oldCenter := (3579634006341747 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_791
  oldLo := (35775000000000001 / 50000000000000000 : ℚ)
  oldHi := (71650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1659, piece_1660]
}

def cell_8197 : Cell := { cellDefaults with
  domain := ⟨(5083 / 16000 : ℚ), (1271 / 4000 : ℚ)⟩
  r := (39185499217063 / 50000000000000 : ℚ)
  w := (3417437299749 / 2000000000000 : ℚ)
  center := (10167 / 32000 : ℚ)
  supportValue := (7155927436909189 / 10000000000000000 : ℚ)
  supportSlope := (-2671528201803497 / 500000000000000 : ℚ)
  oldCenter := (7155927436909189 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_791
  oldLo := (8937500000000001 / 12500000000000000 : ℚ)
  oldHi := (8950000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1658, piece_1659]
}

def cell_8198 : Cell := { cellDefaults with
  domain := ⟨(1271 / 4000 : ℚ), (1017 / 3200 : ℚ)⟩
  r := (39185499217063 / 50000000000000 : ℚ)
  w := (3417437299749 / 2000000000000 : ℚ)
  center := (10169 / 32000 : ℚ)
  supportValue := (3576294553907127 / 5000000000000000 : ℚ)
  supportSlope := (-5339488496492351 / 1000000000000000 : ℚ)
  oldCenter := (3576294553907127 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_791
  oldLo := (8937500000000001 / 12500000000000000 : ℚ)
  oldHi := (35775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1658]
}

def cell_8199 : Cell := { cellDefaults with
  domain := ⟨(1017 / 3200 : ℚ), (2543 / 8000 : ℚ)⟩
  r := (39185499217063 / 50000000000000 : ℚ)
  w := (3417437299749 / 2000000000000 : ℚ)
  center := (10171 / 32000 : ℚ)
  supportValue := (893656636166237 / 1250000000000000 : ℚ)
  supportSlope := (-213435934894477 / 40000000000000 : ℚ)
  oldCenter := (893656636166237 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_791
  oldLo := (35725000000000001 / 50000000000000000 : ℚ)
  oldHi := (35775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1657, piece_1658]
}

theorem check_8150 : cell_8150.check = true := by
  decide +kernel

theorem check_8151 : cell_8151.check = true := by
  decide +kernel

theorem check_8152 : cell_8152.check = true := by
  decide +kernel

theorem check_8153 : cell_8153.check = true := by
  decide +kernel

theorem check_8154 : cell_8154.check = true := by
  decide +kernel

theorem check_8155 : cell_8155.check = true := by
  decide +kernel

theorem check_8156 : cell_8156.check = true := by
  decide +kernel

theorem check_8157 : cell_8157.check = true := by
  decide +kernel

theorem check_8158 : cell_8158.check = true := by
  decide +kernel

theorem check_8159 : cell_8159.check = true := by
  decide +kernel

theorem check_8160 : cell_8160.check = true := by
  decide +kernel

theorem check_8161 : cell_8161.check = true := by
  decide +kernel

theorem check_8162 : cell_8162.check = true := by
  decide +kernel

theorem check_8163 : cell_8163.check = true := by
  decide +kernel

theorem check_8164 : cell_8164.check = true := by
  decide +kernel

theorem check_8165 : cell_8165.check = true := by
  decide +kernel

theorem check_8166 : cell_8166.check = true := by
  decide +kernel

theorem check_8167 : cell_8167.check = true := by
  decide +kernel

theorem check_8168 : cell_8168.check = true := by
  decide +kernel

theorem check_8169 : cell_8169.check = true := by
  decide +kernel

theorem check_8170 : cell_8170.check = true := by
  decide +kernel

theorem check_8171 : cell_8171.check = true := by
  decide +kernel

theorem check_8172 : cell_8172.check = true := by
  decide +kernel

theorem check_8173 : cell_8173.check = true := by
  decide +kernel

theorem check_8174 : cell_8174.check = true := by
  decide +kernel

theorem check_8175 : cell_8175.check = true := by
  decide +kernel

theorem check_8176 : cell_8176.check = true := by
  decide +kernel

theorem check_8177 : cell_8177.check = true := by
  decide +kernel

theorem check_8178 : cell_8178.check = true := by
  decide +kernel

theorem check_8179 : cell_8179.check = true := by
  decide +kernel

theorem check_8180 : cell_8180.check = true := by
  decide +kernel

theorem check_8181 : cell_8181.check = true := by
  decide +kernel

theorem check_8182 : cell_8182.check = true := by
  decide +kernel

theorem check_8183 : cell_8183.check = true := by
  decide +kernel

theorem check_8184 : cell_8184.check = true := by
  decide +kernel

theorem check_8185 : cell_8185.check = true := by
  decide +kernel

theorem check_8186 : cell_8186.check = true := by
  decide +kernel

theorem check_8187 : cell_8187.check = true := by
  decide +kernel

theorem check_8188 : cell_8188.check = true := by
  decide +kernel

theorem check_8189 : cell_8189.check = true := by
  decide +kernel

theorem check_8190 : cell_8190.check = true := by
  decide +kernel

theorem check_8191 : cell_8191.check = true := by
  decide +kernel

theorem check_8192 : cell_8192.check = true := by
  decide +kernel

theorem check_8193 : cell_8193.check = true := by
  decide +kernel

theorem check_8194 : cell_8194.check = true := by
  decide +kernel

theorem check_8195 : cell_8195.check = true := by
  decide +kernel

theorem check_8196 : cell_8196.check = true := by
  decide +kernel

theorem check_8197 : cell_8197.check = true := by
  decide +kernel

theorem check_8198 : cell_8198.check = true := by
  decide +kernel

theorem check_8199 : cell_8199.check = true := by
  decide +kernel

def cells : List Cell := [cell_8150, cell_8151, cell_8152, cell_8153, cell_8154, cell_8155, cell_8156, cell_8157, cell_8158, cell_8159, cell_8160, cell_8161, cell_8162, cell_8163, cell_8164, cell_8165, cell_8166, cell_8167, cell_8168, cell_8169, cell_8170, cell_8171, cell_8172, cell_8173, cell_8174, cell_8175, cell_8176, cell_8177, cell_8178, cell_8179, cell_8180, cell_8181, cell_8182, cell_8183, cell_8184, cell_8185, cell_8186, cell_8187, cell_8188, cell_8189, cell_8190, cell_8191, cell_8192, cell_8193, cell_8194, cell_8195, cell_8196, cell_8197, cell_8198, cell_8199]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8150, check_8151, check_8152, check_8153, check_8154, check_8155, check_8156, check_8157, check_8158, check_8159, check_8160, check_8161, check_8162, check_8163, check_8164, check_8165, check_8166, check_8167, check_8168, check_8169, check_8170, check_8171, check_8172, check_8173, check_8174, check_8175, check_8176, check_8177, check_8178, check_8179, check_8180, check_8181, check_8182, check_8183, check_8184, check_8185, check_8186, check_8187, check_8188, check_8189, check_8190, check_8191, check_8192, check_8193, check_8194, check_8195, check_8196, check_8197, check_8198, check_8199, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0163

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0163
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0163
open AnalyticBounds.ExpressionCertificate

theorem linked_8150 : Linked cell_8150 pieces := by
  link_source cell_8150 with piece_785 using piece_785_mem, ⟨piece_1675_mem, ⟨piece_1676_mem, piece_1677_mem⟩⟩

theorem linked_8151 : Linked cell_8151 pieces := by
  link_source cell_8151 with piece_785 using piece_785_mem, ⟨piece_1674_mem, piece_1675_mem⟩

theorem linked_8152 : Linked cell_8152 pieces := by
  link_source cell_8152 with piece_785 using piece_785_mem, ⟨piece_1673_mem, piece_1674_mem⟩

theorem linked_8153 : Linked cell_8153 pieces := by
  link_source cell_8153 with piece_785 using piece_785_mem, piece_1673_mem

theorem linked_8154 : Linked cell_8154 pieces := by
  link_source cell_8154 with piece_786 using piece_786_mem, ⟨piece_1675_mem, ⟨piece_1676_mem, piece_1677_mem⟩⟩

theorem linked_8155 : Linked cell_8155 pieces := by
  link_source cell_8155 with piece_786 using piece_786_mem, ⟨piece_1674_mem, piece_1675_mem⟩

theorem linked_8156 : Linked cell_8156 pieces := by
  link_source cell_8156 with piece_786 using piece_786_mem, ⟨piece_1673_mem, piece_1674_mem⟩

theorem linked_8157 : Linked cell_8157 pieces := by
  link_source cell_8157 with piece_786 using piece_786_mem, piece_1673_mem

theorem linked_8158 : Linked cell_8158 pieces := by
  link_source cell_8158 with piece_786 using piece_786_mem, ⟨piece_1672_mem, piece_1673_mem⟩

theorem linked_8159 : Linked cell_8159 pieces := by
  link_source cell_8159 with piece_786 using piece_786_mem, ⟨piece_1671_mem, piece_1672_mem⟩

theorem linked_8160 : Linked cell_8160 pieces := by
  link_source cell_8160 with piece_786 using piece_786_mem, piece_1671_mem

theorem linked_8161 : Linked cell_8161 pieces := by
  link_source cell_8161 with piece_786 using piece_786_mem, ⟨piece_1670_mem, piece_1671_mem⟩

theorem linked_8162 : Linked cell_8162 pieces := by
  link_source cell_8162 with piece_787 using piece_787_mem, ⟨piece_1672_mem, piece_1673_mem⟩

theorem linked_8163 : Linked cell_8163 pieces := by
  link_source cell_8163 with piece_787 using piece_787_mem, ⟨piece_1671_mem, piece_1672_mem⟩

theorem linked_8164 : Linked cell_8164 pieces := by
  link_source cell_8164 with piece_787 using piece_787_mem, piece_1671_mem

theorem linked_8165 : Linked cell_8165 pieces := by
  link_source cell_8165 with piece_787 using piece_787_mem, ⟨piece_1670_mem, piece_1671_mem⟩

theorem linked_8166 : Linked cell_8166 pieces := by
  link_source cell_8166 with piece_787 using piece_787_mem, ⟨piece_1669_mem, piece_1670_mem⟩

theorem linked_8167 : Linked cell_8167 pieces := by
  link_source cell_8167 with piece_787 using piece_787_mem, piece_1669_mem

theorem linked_8168 : Linked cell_8168 pieces := by
  link_source cell_8168 with piece_787 using piece_787_mem, ⟨piece_1668_mem, piece_1669_mem⟩

theorem linked_8169 : Linked cell_8169 pieces := by
  link_source cell_8169 with piece_787 using piece_787_mem, ⟨piece_1667_mem, piece_1668_mem⟩

theorem linked_8170 : Linked cell_8170 pieces := by
  link_source cell_8170 with piece_788 using piece_788_mem, ⟨piece_1669_mem, piece_1670_mem⟩

theorem linked_8171 : Linked cell_8171 pieces := by
  link_source cell_8171 with piece_788 using piece_788_mem, piece_1669_mem

theorem linked_8172 : Linked cell_8172 pieces := by
  link_source cell_8172 with piece_788 using piece_788_mem, ⟨piece_1668_mem, piece_1669_mem⟩

theorem linked_8173 : Linked cell_8173 pieces := by
  link_source cell_8173 with piece_788 using piece_788_mem, ⟨piece_1667_mem, piece_1668_mem⟩

theorem linked_8174 : Linked cell_8174 pieces := by
  link_source cell_8174 with piece_788 using piece_788_mem, piece_1667_mem

theorem linked_8175 : Linked cell_8175 pieces := by
  link_source cell_8175 with piece_788 using piece_788_mem, ⟨piece_1666_mem, piece_1667_mem⟩

theorem linked_8176 : Linked cell_8176 pieces := by
  link_source cell_8176 with piece_788 using piece_788_mem, ⟨piece_1665_mem, piece_1666_mem⟩

theorem linked_8177 : Linked cell_8177 pieces := by
  link_source cell_8177 with piece_788 using piece_788_mem, piece_1665_mem

theorem linked_8178 : Linked cell_8178 pieces := by
  link_source cell_8178 with piece_789 using piece_789_mem, piece_1667_mem

theorem linked_8179 : Linked cell_8179 pieces := by
  link_source cell_8179 with piece_789 using piece_789_mem, ⟨piece_1666_mem, piece_1667_mem⟩

theorem linked_8180 : Linked cell_8180 pieces := by
  link_source cell_8180 with piece_789 using piece_789_mem, ⟨piece_1665_mem, piece_1666_mem⟩

theorem linked_8181 : Linked cell_8181 pieces := by
  link_source cell_8181 with piece_789 using piece_789_mem, piece_1665_mem

theorem linked_8182 : Linked cell_8182 pieces := by
  link_source cell_8182 with piece_789 using piece_789_mem, ⟨piece_1663_mem, ⟨piece_1664_mem, piece_1665_mem⟩⟩

theorem linked_8183 : Linked cell_8183 pieces := by
  link_source cell_8183 with piece_789 using piece_789_mem, ⟨piece_1662_mem, piece_1663_mem⟩

theorem linked_8184 : Linked cell_8184 pieces := by
  link_source cell_8184 with piece_789 using piece_789_mem, piece_1662_mem

theorem linked_8185 : Linked cell_8185 pieces := by
  link_source cell_8185 with piece_789 using piece_789_mem, ⟨piece_1661_mem, piece_1662_mem⟩

theorem linked_8186 : Linked cell_8186 pieces := by
  link_source cell_8186 with piece_790 using piece_790_mem, ⟨piece_1663_mem, ⟨piece_1664_mem, piece_1665_mem⟩⟩

theorem linked_8187 : Linked cell_8187 pieces := by
  link_source cell_8187 with piece_790 using piece_790_mem, ⟨piece_1662_mem, piece_1663_mem⟩

theorem linked_8188 : Linked cell_8188 pieces := by
  link_source cell_8188 with piece_790 using piece_790_mem, piece_1662_mem

theorem linked_8189 : Linked cell_8189 pieces := by
  link_source cell_8189 with piece_790 using piece_790_mem, ⟨piece_1661_mem, piece_1662_mem⟩

theorem linked_8190 : Linked cell_8190 pieces := by
  link_source cell_8190 with piece_790 using piece_790_mem, ⟨piece_1660_mem, piece_1661_mem⟩

theorem linked_8191 : Linked cell_8191 pieces := by
  link_source cell_8191 with piece_790 using piece_790_mem, piece_1660_mem

theorem linked_8192 : Linked cell_8192 pieces := by
  link_source cell_8192 with piece_790 using piece_790_mem, ⟨piece_1659_mem, piece_1660_mem⟩

theorem linked_8193 : Linked cell_8193 pieces := by
  link_source cell_8193 with piece_790 using piece_790_mem, ⟨piece_1658_mem, piece_1659_mem⟩

theorem linked_8194 : Linked cell_8194 pieces := by
  link_source cell_8194 with piece_791 using piece_791_mem, ⟨piece_1660_mem, piece_1661_mem⟩

theorem linked_8195 : Linked cell_8195 pieces := by
  link_source cell_8195 with piece_791 using piece_791_mem, piece_1660_mem

theorem linked_8196 : Linked cell_8196 pieces := by
  link_source cell_8196 with piece_791 using piece_791_mem, ⟨piece_1659_mem, piece_1660_mem⟩

theorem linked_8197 : Linked cell_8197 pieces := by
  link_source cell_8197 with piece_791 using piece_791_mem, ⟨piece_1658_mem, piece_1659_mem⟩

theorem linked_8198 : Linked cell_8198 pieces := by
  link_source cell_8198 with piece_791 using piece_791_mem, piece_1658_mem

theorem linked_8199 : Linked cell_8199 pieces := by
  link_source cell_8199 with piece_791 using piece_791_mem, ⟨piece_1657_mem, piece_1658_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0163.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0163.cells,List.forall_mem_cons]
  exact ⟨linked_8150, linked_8151, linked_8152, linked_8153, linked_8154, linked_8155, linked_8156, linked_8157, linked_8158, linked_8159, linked_8160, linked_8161, linked_8162, linked_8163, linked_8164, linked_8165, linked_8166, linked_8167, linked_8168, linked_8169, linked_8170, linked_8171, linked_8172, linked_8173, linked_8174, linked_8175, linked_8176, linked_8177, linked_8178, linked_8179, linked_8180, linked_8181, linked_8182, linked_8183, linked_8184, linked_8185, linked_8186, linked_8187, linked_8188, linked_8189, linked_8190, linked_8191, linked_8192, linked_8193, linked_8194, linked_8195, linked_8196, linked_8197, linked_8198, linked_8199, by simp⟩

theorem covered : covers (1259 / 4000 : ℚ) (2543 / 8000 : ℚ)
    (SourceCertificates.Chunk0163.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0163
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0164
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(2543 / 8000 : ℚ), (5087 / 16000 : ℚ)⟩
  branch := .left
  r := (9766908889901 / 12500000000000 : ℚ)
  w := (17049022830599 / 10000000000000 : ℚ)
  center := (10173 / 32000 : ℚ)
  supportValue := (714591929894967 / 1000000000000000 : ℚ)
  supportSlope := (-5332204471923063 / 1000000000000000 : ℚ)
  oldCenter := (714591929894967 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_792
  oldLo := (8925000000000001 / 12500000000000000 : ℚ)
  oldHi := (35725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1656, piece_1657]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8200 : Cell := { cellDefaults with
  r := (39185499217063 / 50000000000000 : ℚ)
  w := (3417437299749 / 2000000000000 : ℚ)
  newCoefficients := coefficients_791
  oldHi := (8937500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1656, piece_1657]
}

def cell_8201 : Cell := { cellDefaults with
  domain := ⟨(5087 / 16000 : ℚ), (159 / 500 : ℚ)⟩
  r := (39185499217063 / 50000000000000 : ℚ)
  w := (3417437299749 / 2000000000000 : ℚ)
  center := (407 / 1280 : ℚ)
  supportValue := (178564693749963 / 250000000000000 : ℚ)
  supportSlope := (-2664321584067153 / 500000000000000 : ℚ)
  oldCenter := (178564693749963 / 250000000000000 : ℚ)
  newCoefficients := coefficients_791
  oldPieces := [piece_1656]
}

def cell_8202 : Cell := { cellDefaults with
  domain := ⟨(159 / 500 : ℚ), (254450000000000001 / 800000000000000000 : ℚ)⟩
  r := (39155954703667 / 50000000000000 : ℚ)
  w := (3415523000851 / 2000000000000 : ℚ)
  center := (508850000000000001 / 1600000000000000000 : ℚ)
  supportValue := (1788151843548459 / 2500000000000000 : ℚ)
  supportSlope := (-1333932244722087 / 250000000000000 : ℚ)
  oldCenter := (1788151843548459 / 2500000000000000 : ℚ)
  oldLo := (8937500000000001 / 12500000000000000 : ℚ)
  oldHi := (35775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1658]
}

def cell_8203 : Cell := { cellDefaults with
  domain := ⟨(254450000000000001 / 800000000000000000 : ℚ), (127250000000000001 / 400000000000000000 : ℚ)⟩
  r := (39155954703667 / 50000000000000 : ℚ)
  w := (3415523000851 / 2000000000000 : ℚ)
  center := (508950000000000003 / 1600000000000000000 : ℚ)
  supportValue := (3574636852199873 / 5000000000000000 : ℚ)
  supportSlope := (-5332144842586821 / 1000000000000000 : ℚ)
  oldCenter := (3574636852199873 / 5000000000000000 : ℚ)
  oldLo := (35725000000000001 / 50000000000000000 : ℚ)
  oldHi := (35775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1657, piece_1658]
}

def cell_8204 : Cell := { cellDefaults with
  domain := ⟨(127250000000000001 / 400000000000000000 : ℚ), (254550000000000003 / 800000000000000000 : ℚ)⟩
  r := (39155954703667 / 50000000000000 : ℚ)
  w := (3415523000851 / 2000000000000 : ℚ)
  center := (101810000000000001 / 320000000000000000 : ℚ)
  supportValue := (7145942255417247 / 10000000000000000 : ℚ)
  supportSlope := (-5328459343573293 / 1000000000000000 : ℚ)
  oldCenter := (7145942255417247 / 10000000000000000 : ℚ)
  oldHi := (8937500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1656, piece_1657]
}

def cell_8205 : Cell := { cellDefaults with
  domain := ⟨(254550000000000003 / 800000000000000000 : ℚ), (63650000000000001 / 200000000000000000 : ℚ)⟩
  r := (39155954703667 / 50000000000000 : ℚ)
  w := (3415523000851 / 2000000000000 : ℚ)
  center := (509150000000000007 / 1600000000000000000 : ℚ)
  supportValue := (714261304444231 / 1000000000000000 : ℚ)
  supportSlope := (-5324910196048087 / 1000000000000000 : ℚ)
  oldCenter := (714261304444231 / 1000000000000000 : ℚ)
  oldPieces := [piece_1656]
}

def cell_8206 : Cell := { cellDefaults with
  domain := ⟨(63650000000000001 / 200000000000000000 : ℚ), (50930000000000001 / 160000000000000000 : ℚ)⟩
  r := (39155954703667 / 50000000000000 : ℚ)
  w := (3415523000851 / 2000000000000 : ℚ)
  center := (509250000000000009 / 1600000000000000000 : ℚ)
  supportValue := (446205383434819 / 625000000000000 : ℚ)
  supportSlope := (-2660666027306693 / 500000000000000 : ℚ)
  oldCenter := (446205383434819 / 625000000000000 : ℚ)
  oldLo := (35675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1655, piece_1656]
}

def cell_8207 : Cell := { cellDefaults with
  domain := ⟨(50930000000000001 / 160000000000000000 : ℚ), (127350000000000003 / 400000000000000000 : ℚ)⟩
  r := (39155954703667 / 50000000000000 : ℚ)
  w := (3415523000851 / 2000000000000 : ℚ)
  center := (509350000000000011 / 1600000000000000000 : ℚ)
  supportValue := (7135961440767199 / 10000000000000000 : ℚ)
  supportSlope := (-10635304787385067 / 2000000000000000 : ℚ)
  oldCenter := (7135961440767199 / 10000000000000000 : ℚ)
  oldLo := (8912500000000001 / 12500000000000000 : ℚ)
  oldHi := (8925000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1654, piece_1655]
}

def cell_8208 : Cell := { cellDefaults with
  domain := ⟨(127350000000000003 / 400000000000000000 : ℚ), (254750000000000007 / 800000000000000000 : ℚ)⟩
  r := (39155954703667 / 50000000000000 : ℚ)
  w := (3415523000851 / 2000000000000 : ℚ)
  center := (509450000000000013 / 1600000000000000000 : ℚ)
  supportValue := (7132638981814837 / 10000000000000000 : ℚ)
  supportSlope := (-1328528298968097 / 250000000000000 : ℚ)
  oldCenter := (7132638981814837 / 10000000000000000 : ℚ)
  oldLo := (8912500000000001 / 12500000000000000 : ℚ)
  oldHi := (35675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1654]
}

def cell_8209 : Cell := { cellDefaults with
  domain := ⟨(254750000000000007 / 800000000000000000 : ℚ), (31850000000000001 / 100000000000000000 : ℚ)⟩
  r := (39155954703667 / 50000000000000 : ℚ)
  w := (3415523000851 / 2000000000000 : ℚ)
  center := (101910000000000003 / 320000000000000000 : ℚ)
  supportValue := (7129318821305207 / 10000000000000000 : ℚ)
  supportSlope := (-5310537354475181 / 1000000000000000 : ℚ)
  oldCenter := (7129318821305207 / 10000000000000000 : ℚ)
  oldLo := (35625000000000001 / 50000000000000000 : ℚ)
  oldHi := (35675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1653, piece_1654]
}

def cell_8210 : Cell := { cellDefaults with
  domain := ⟨(31850000000000001 / 100000000000000000 : ℚ), (31856250000000001 / 100000000000000000 : ℚ)⟩
  r := (39126463055351 / 50000000000000 : ℚ)
  w := (1706806359099 / 1000000000000 : ℚ)
  center := (31853125000000001 / 100000000000000000 : ℚ)
  supportValue := (55775848664641 / 78125000000000 : ℚ)
  supportSlope := (-2658793786029179 / 500000000000000 : ℚ)
  oldCenter := (55775848664641 / 78125000000000 : ℚ)
  newCoefficients := coefficients_793
  oldLo := (35675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1655, piece_1656]
}

def cell_8211 : Cell := { cellDefaults with
  domain := ⟨(31856250000000001 / 100000000000000000 : ℚ), (31862500000000001 / 100000000000000000 : ℚ)⟩
  r := (39126463055351 / 50000000000000 : ℚ)
  w := (1706806359099 / 1000000000000 : ℚ)
  center := (31859375000000001 / 100000000000000000 : ℚ)
  supportValue := (445999141874141 / 625000000000000 : ℚ)
  supportSlope := (-5313917811339053 / 1000000000000000 : ℚ)
  oldCenter := (445999141874141 / 625000000000000 : ℚ)
  newCoefficients := coefficients_793
  oldLo := (8912500000000001 / 12500000000000000 : ℚ)
  oldHi := (8925000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1654, piece_1655]
}

def cell_8212 : Cell := { cellDefaults with
  domain := ⟨(31862500000000001 / 100000000000000000 : ℚ), (31868750000000001 / 100000000000000000 : ℚ)⟩
  r := (39126463055351 / 50000000000000 : ℚ)
  w := (1706806359099 / 1000000000000 : ℚ)
  center := (31865625000000001 / 100000000000000000 : ℚ)
  supportValue := (1426533228389227 / 2000000000000000 : ℚ)
  supportSlope := (-5310392560581079 / 1000000000000000 : ℚ)
  oldCenter := (1426533228389227 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_793
  oldLo := (8912500000000001 / 12500000000000000 : ℚ)
  oldHi := (35675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1654]
}

def cell_8213 : Cell := { cellDefaults with
  domain := ⟨(31868750000000001 / 100000000000000000 : ℚ), (31875000000000001 / 100000000000000000 : ℚ)⟩
  r := (39126463055351 / 50000000000000 : ℚ)
  w := (1706806359099 / 1000000000000 : ℚ)
  center := (31871875000000001 / 100000000000000000 : ℚ)
  supportValue := (3564674153083323 / 5000000000000000 : ℚ)
  supportSlope := (-1326705723728061 / 250000000000000 : ℚ)
  oldCenter := (3564674153083323 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_793
  oldLo := (35625000000000001 / 50000000000000000 : ℚ)
  oldHi := (35675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1653, piece_1654]
}

def cell_8214 : Cell := { cellDefaults with
  domain := ⟨(31875000000000001 / 100000000000000000 : ℚ), (31881250000000001 / 100000000000000000 : ℚ)⟩
  r := (39126463055351 / 50000000000000 : ℚ)
  w := (1706806359099 / 1000000000000 : ℚ)
  center := (31878125000000001 / 100000000000000000 : ℚ)
  supportValue := (1425206533832027 / 2000000000000000 : ℚ)
  supportSlope := (-1325789805322941 / 250000000000000 : ℚ)
  oldCenter := (1425206533832027 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_793
  oldLo := (1424804469273743 / 2000000000000000 : ℚ)
  oldHi := (8912500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1652, piece_1653]
}

def cell_8215 : Cell := { cellDefaults with
  domain := ⟨(31881250000000001 / 100000000000000000 : ℚ), (31887500000000001 / 100000000000000000 : ℚ)⟩
  r := (39126463055351 / 50000000000000 : ℚ)
  w := (1706806359099 / 1000000000000 : ℚ)
  center := (31884375000000001 / 100000000000000000 : ℚ)
  supportValue := (3561359631514449 / 5000000000000000 : ℚ)
  supportSlope := (-2649824152781477 / 500000000000000 : ℚ)
  oldCenter := (3561359631514449 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_793
  oldLo := (8900000000000001 / 12500000000000000 : ℚ)
  oldHi := (35625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1651, piece_1652]
}

def cell_8216 : Cell := { cellDefaults with
  domain := ⟨(31887500000000001 / 100000000000000000 : ℚ), (31893750000000001 / 100000000000000000 : ℚ)⟩
  r := (39126463055351 / 50000000000000 : ℚ)
  w := (1706806359099 / 1000000000000 : ℚ)
  center := (31890625000000001 / 100000000000000000 : ℚ)
  supportValue := (889926018132771 / 1250000000000000 : ℚ)
  supportSlope := (-529607808919863 / 100000000000000 : ℚ)
  oldCenter := (889926018132771 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_793
  oldLo := (35575000000000001 / 50000000000000000 : ℚ)
  oldHi := (1424804469273743 / 2000000000000000 : ℚ)
  oldPieces := [piece_1650, piece_1651]
}

def cell_8217 : Cell := { cellDefaults with
  domain := ⟨(31893750000000001 / 100000000000000000 : ℚ), (31900000000000001 / 100000000000000000 : ℚ)⟩
  r := (39126463055351 / 50000000000000 : ℚ)
  w := (1706806359099 / 1000000000000 : ℚ)
  center := (31896875000000001 / 100000000000000000 : ℚ)
  supportValue := (355804960807777 / 500000000000000 : ℚ)
  supportSlope := (-5292420083453209 / 1000000000000000 : ℚ)
  oldCenter := (355804960807777 / 500000000000000 : ℚ)
  newCoefficients := coefficients_793
  oldLo := (8887500000000001 / 12500000000000000 : ℚ)
  oldHi := (8900000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1649, piece_1650]
}

def cell_8218 : Cell := { cellDefaults with
  domain := ⟨(31900000000000001 / 100000000000000000 : ℚ), (31906250000000001 / 100000000000000000 : ℚ)⟩
  r := (78194047109911 / 100000000000000 : ℚ)
  w := (17058533050751 / 10000000000000 : ℚ)
  center := (31903125000000001 / 100000000000000000 : ℚ)
  supportValue := (28504236370881 / 40000000000000 : ℚ)
  supportSlope := (-1324858571692289 / 250000000000000 : ℚ)
  oldCenter := (28504236370881 / 40000000000000 : ℚ)
  newCoefficients := coefficients_794
  oldLo := (1424804469273743 / 2000000000000000 : ℚ)
  oldHi := (8912500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1652, piece_1653]
}

def cell_8219 : Cell := { cellDefaults with
  domain := ⟨(31906250000000001 / 100000000000000000 : ℚ), (31912500000000001 / 100000000000000000 : ℚ)⟩
  r := (78194047109911 / 100000000000000 : ℚ)
  w := (17058533050751 / 10000000000000 : ℚ)
  center := (31909375000000001 / 100000000000000000 : ℚ)
  supportValue := (7122748011660363 / 10000000000000000 : ℚ)
  supportSlope := (-211837477655763 / 40000000000000 : ℚ)
  oldCenter := (7122748011660363 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_794
  oldLo := (8900000000000001 / 12500000000000000 : ℚ)
  oldHi := (35625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1651, piece_1652]
}

def cell_8220 : Cell := { cellDefaults with
  domain := ⟨(31912500000000001 / 100000000000000000 : ℚ), (31918750000000001 / 100000000000000000 : ℚ)⟩
  r := (78194047109911 / 100000000000000 : ℚ)
  w := (17058533050751 / 10000000000000 : ℚ)
  center := (31915625000000001 / 100000000000000000 : ℚ)
  supportValue := (444964950810071 / 625000000000000 : ℚ)
  supportSlope := (-2646186037663867 / 500000000000000 : ℚ)
  oldCenter := (444964950810071 / 625000000000000 : ℚ)
  newCoefficients := coefficients_794
  oldLo := (35575000000000001 / 50000000000000000 : ℚ)
  oldHi := (1424804469273743 / 2000000000000000 : ℚ)
  oldPieces := [piece_1650, piece_1651]
}

def cell_8221 : Cell := { cellDefaults with
  domain := ⟨(31918750000000001 / 100000000000000000 : ℚ), (31925000000000001 / 100000000000000000 : ℚ)⟩
  r := (78194047109911 / 100000000000000 : ℚ)
  w := (17058533050751 / 10000000000000 : ℚ)
  center := (31921875000000001 / 100000000000000000 : ℚ)
  supportValue := (222379143579271 / 312500000000000 : ℚ)
  supportSlope := (-1322180836136333 / 250000000000000 : ℚ)
  oldCenter := (222379143579271 / 312500000000000 : ℚ)
  newCoefficients := coefficients_794
  oldLo := (8887500000000001 / 12500000000000000 : ℚ)
  oldHi := (8900000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1649, piece_1650]
}

def cell_8222 : Cell := { cellDefaults with
  domain := ⟨(31925000000000001 / 100000000000000000 : ℚ), (31931250000000001 / 100000000000000000 : ℚ)⟩
  r := (78194047109911 / 100000000000000 : ℚ)
  w := (17058533050751 / 10000000000000 : ℚ)
  center := (31928125000000001 / 100000000000000000 : ℚ)
  supportValue := (3556414102734649 / 5000000000000000 : ℚ)
  supportSlope := (-2642622163108399 / 500000000000000 : ℚ)
  oldCenter := (3556414102734649 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_794
  oldLo := (8887500000000001 / 12500000000000000 : ℚ)
  oldHi := (35575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1649]
}

def cell_8223 : Cell := { cellDefaults with
  domain := ⟨(31931250000000001 / 100000000000000000 : ℚ), (31937500000000001 / 100000000000000000 : ℚ)⟩
  r := (78194047109911 / 100000000000000 : ℚ)
  w := (17058533050751 / 10000000000000 : ℚ)
  center := (31934375000000001 / 100000000000000000 : ℚ)
  supportValue := (1421905219010661 / 2000000000000000 : ℚ)
  supportSlope := (-5281674490216659 / 1000000000000000 : ℚ)
  oldCenter := (1421905219010661 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_794
  oldLo := (35525000000000001 / 50000000000000000 : ℚ)
  oldHi := (35575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1648, piece_1649]
}

def cell_8224 : Cell := { cellDefaults with
  domain := ⟨(31937500000000001 / 100000000000000000 : ℚ), (31943750000000001 / 100000000000000000 : ℚ)⟩
  r := (78194047109911 / 100000000000000 : ℚ)
  w := (17058533050751 / 10000000000000 : ℚ)
  center := (31940625000000001 / 100000000000000000 : ℚ)
  supportValue := (7106226152680469 / 10000000000000000 : ℚ)
  supportSlope := (-2639015767234909 / 500000000000000 : ℚ)
  oldCenter := (7106226152680469 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_794
  oldLo := (8875000000000001 / 12500000000000000 : ℚ)
  oldHi := (8887500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1647, piece_1648]
}

def cell_8225 : Cell := { cellDefaults with
  domain := ⟨(31943750000000001 / 100000000000000000 : ℚ), (31950000000000001 / 100000000000000000 : ℚ)⟩
  r := (78194047109911 / 100000000000000 : ℚ)
  w := (17058533050751 / 10000000000000 : ℚ)
  center := (31946875000000001 / 100000000000000000 : ℚ)
  supportValue := (7102928443705947 / 10000000000000000 : ℚ)
  supportSlope := (-2637286774977099 / 500000000000000 : ℚ)
  oldCenter := (7102928443705947 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_794
  oldLo := (8875000000000001 / 12500000000000000 : ℚ)
  oldHi := (35525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1647]
}

def cell_8226 : Cell := { cellDefaults with
  domain := ⟨(31950000000000001 / 100000000000000000 : ℚ), (31955516759776537 / 100000000000000000 : ℚ)⟩
  center := (31952758379888269 / 100000000000000000 : ℚ)
  supportValue := (7113052525815329 / 10000000000000000 : ℚ)
  supportSlope := (-5281770790948421 / 1000000000000000 : ℚ)
  oldCenter := (7113052525815329 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_795
  oldLo := (8887500000000001 / 12500000000000000 : ℚ)
  oldHi := (35575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1649]
}

def cell_8227 : Cell := { cellDefaults with
  domain := ⟨(31955516759776537 / 100000000000000000 : ℚ), (31961033519553073 / 100000000000000000 : ℚ)⟩
  center := (6391655027932961 / 20000000000000000 : ℚ)
  supportValue := (1777534910014979 / 2500000000000000 : ℚ)
  supportSlope := (-1319643254368813 / 250000000000000 : ℚ)
  oldCenter := (1777534910014979 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_795
  oldLo := (35525000000000001 / 50000000000000000 : ℚ)
  oldHi := (35575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1648, piece_1649]
}

def cell_8228 : Cell := { cellDefaults with
  domain := ⟨(31961033519553073 / 100000000000000000 : ℚ), (31966550279329609 / 100000000000000000 : ℚ)⟩
  center := (31963791899441341 / 100000000000000000 : ℚ)
  supportValue := (7107228387759467 / 10000000000000000 : ℚ)
  supportSlope := (-10550842762909161 / 2000000000000000 : ℚ)
  oldCenter := (7107228387759467 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_795
  oldLo := (35525000000000001 / 50000000000000000 : ℚ)
  oldHi := (8887500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1648]
}

def cell_8229 : Cell := { cellDefaults with
  domain := ⟨(31966550279329609 / 100000000000000000 : ℚ), (6394413407821229 / 20000000000000000 : ℚ)⟩
  center := (31969308659217877 / 100000000000000000 : ℚ)
  supportValue := (1776079735639929 / 2500000000000000 : ℚ)
  supportSlope := (-2636180271785661 / 500000000000000 : ℚ)
  oldCenter := (1776079735639929 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_795
  oldLo := (8875000000000001 / 12500000000000000 : ℚ)
  oldHi := (8887500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1647, piece_1648]
}

def cell_8230 : Cell := { cellDefaults with
  domain := ⟨(6394413407821229 / 20000000000000000 : ℚ), (31975000000000001 / 100000000000000000 : ℚ)⟩
  center := (31973533519553073 / 100000000000000000 : ℚ)
  supportValue := (3551045260443091 / 5000000000000000 : ℚ)
  supportSlope := (-5269878139641229 / 1000000000000000 : ℚ)
  oldCenter := (3551045260443091 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_796
  oldLo := (8875000000000001 / 12500000000000000 : ℚ)
  oldHi := (35525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1647]
}

def cell_8231 : Cell := { cellDefaults with
  domain := ⟨(31975000000000001 / 100000000000000000 : ℚ), (31981250000000001 / 100000000000000000 : ℚ)⟩
  center := (31978125000000001 / 100000000000000000 : ℚ)
  supportValue := (3549836453702877 / 5000000000000000 : ℚ)
  supportSlope := (-1053465518944563 / 200000000000000 : ℚ)
  oldCenter := (3549836453702877 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_796
  oldLo := (35475000000000001 / 50000000000000000 : ℚ)
  oldHi := (35525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1646, piece_1647]
}

def cell_8232 : Cell := { cellDefaults with
  domain := ⟨(31981250000000001 / 100000000000000000 : ℚ), (31987500000000001 / 100000000000000000 : ℚ)⟩
  center := (31984375000000001 / 100000000000000000 : ℚ)
  supportValue := (443523869612829 / 625000000000000 : ℚ)
  supportSlope := (-5263698898197333 / 1000000000000000 : ℚ)
  oldCenter := (443523869612829 / 625000000000000 : ℚ)
  newCoefficients := coefficients_796
  oldLo := (70900000000000007 / 100000000000000000 : ℚ)
  oldHi := (8875000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1645, piece_1646]
}

def cell_8233 : Cell := { cellDefaults with
  domain := ⟨(31987500000000001 / 100000000000000000 : ℚ), (31993750000000001 / 100000000000000000 : ℚ)⟩
  center := (31990625000000001 / 100000000000000000 : ℚ)
  supportValue := (7093093157610083 / 10000000000000000 : ℚ)
  supportSlope := (-5260280162104891 / 1000000000000000 : ℚ)
  oldCenter := (7093093157610083 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_796
  oldLo := (70900000000000007 / 100000000000000000 : ℚ)
  oldHi := (35475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1645]
}

def cell_8234 : Cell := { cellDefaults with
  domain := ⟨(31993750000000001 / 100000000000000000 : ℚ), (32000000000000001 / 100000000000000000 : ℚ)⟩
  center := (31996875000000001 / 100000000000000000 : ℚ)
  supportValue := (7089806667421977 / 10000000000000000 : ℚ)
  supportSlope := (-657086745036839 / 125000000000000 : ℚ)
  oldCenter := (7089806667421977 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_796
  oldLo := (35425000000000001 / 50000000000000000 : ℚ)
  oldHi := (35475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1644, piece_1645]
}

def cell_8235 : Cell := { cellDefaults with
  domain := ⟨(32000000000000001 / 100000000000000000 : ℚ), (32006250000000001 / 100000000000000000 : ℚ)⟩
  r := (1561532024723 / 2000000000000 : ℚ)
  w := (8519766414067 / 5000000000000 : ℚ)
  center := (32003125000000001 / 100000000000000000 : ℚ)
  supportValue := (3549853658481873 / 5000000000000000 : ℚ)
  supportSlope := (-2631820826648479 / 500000000000000 : ℚ)
  oldCenter := (3549853658481873 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_797
  oldLo := (35475000000000001 / 50000000000000000 : ℚ)
  oldHi := (35525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1646, piece_1647]
}

def cell_8236 : Cell := { cellDefaults with
  domain := ⟨(32006250000000001 / 100000000000000000 : ℚ), (32012500000000001 / 100000000000000000 : ℚ)⟩
  r := (1561532024723 / 2000000000000 : ℚ)
  w := (8519766414067 / 5000000000000 : ℚ)
  center := (32009375000000001 / 100000000000000000 : ℚ)
  supportValue := (7096418621131537 / 10000000000000000 : ℚ)
  supportSlope := (-82187840217407 / 15625000000000 : ℚ)
  oldCenter := (7096418621131537 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_797
  oldLo := (70900000000000007 / 100000000000000000 : ℚ)
  oldHi := (8875000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1645, piece_1646]
}

def cell_8237 : Cell := { cellDefaults with
  domain := ⟨(32012500000000001 / 100000000000000000 : ℚ), (32018750000000001 / 100000000000000000 : ℚ)⟩
  r := (1561532024723 / 2000000000000 : ℚ)
  w := (8519766414067 / 5000000000000 : ℚ)
  center := (32015625000000001 / 100000000000000000 : ℚ)
  supportValue := (1773283040069053 / 2500000000000000 : ℚ)
  supportSlope := (-2628308816712277 / 500000000000000 : ℚ)
  oldCenter := (1773283040069053 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_797
  oldLo := (70900000000000007 / 100000000000000000 : ℚ)
  oldHi := (35475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1645]
}

def cell_8238 : Cell := { cellDefaults with
  domain := ⟨(32018750000000001 / 100000000000000000 : ℚ), (32025000000000001 / 100000000000000000 : ℚ)⟩
  r := (1561532024723 / 2000000000000 : ℚ)
  w := (8519766414067 / 5000000000000 : ℚ)
  center := (32021875000000001 / 100000000000000000 : ℚ)
  supportValue := (7089847959920671 / 10000000000000000 : ℚ)
  supportSlope := (-1313258700849751 / 250000000000000 : ℚ)
  oldCenter := (7089847959920671 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_797
  oldLo := (35425000000000001 / 50000000000000000 : ℚ)
  oldHi := (35475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1644, piece_1645]
}

def cell_8239 : Cell := { cellDefaults with
  domain := ⟨(32025000000000001 / 100000000000000000 : ℚ), (32031250000000001 / 100000000000000000 : ℚ)⟩
  r := (1561532024723 / 2000000000000 : ℚ)
  w := (8519766414067 / 5000000000000 : ℚ)
  center := (32028125000000001 / 100000000000000000 : ℚ)
  supportValue := (7086565878352229 / 10000000000000000 : ℚ)
  supportSlope := (-10498842026279931 / 2000000000000000 : ℚ)
  oldCenter := (7086565878352229 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_797
  oldLo := (70800000000000007 / 100000000000000000 : ℚ)
  oldHi := (70900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1643, piece_1644]
}

def cell_8240 : Cell := { cellDefaults with
  domain := ⟨(32031250000000001 / 100000000000000000 : ℚ), (32037500000000001 / 100000000000000000 : ℚ)⟩
  r := (1561532024723 / 2000000000000 : ℚ)
  w := (8519766414067 / 5000000000000 : ℚ)
  center := (32034375000000001 / 100000000000000000 : ℚ)
  supportValue := (7083286040745231 / 10000000000000000 : ℚ)
  supportSlope := (-655755720273099 / 125000000000000 : ℚ)
  oldCenter := (7083286040745231 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_797
  oldLo := (70800000000000007 / 100000000000000000 : ℚ)
  oldHi := (35425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1643]
}

def cell_8241 : Cell := { cellDefaults with
  domain := ⟨(32037500000000001 / 100000000000000000 : ℚ), (32043750000000001 / 100000000000000000 : ℚ)⟩
  r := (1561532024723 / 2000000000000 : ℚ)
  w := (8519766414067 / 5000000000000 : ℚ)
  center := (32040625000000001 / 100000000000000000 : ℚ)
  supportValue := (3540004229590663 / 5000000000000000 : ℚ)
  supportSlope := (-2621223761794411 / 500000000000000 : ℚ)
  oldCenter := (3540004229590663 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_797
  oldLo := (35375000000000001 / 50000000000000000 : ℚ)
  oldHi := (35425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1642, piece_1643]
}

def cell_8242 : Cell := { cellDefaults with
  domain := ⟨(32043750000000001 / 100000000000000000 : ℚ), (32050000000000001 / 100000000000000000 : ℚ)⟩
  r := (1561532024723 / 2000000000000 : ℚ)
  w := (8519766414067 / 5000000000000 : ℚ)
  center := (32046875000000001 / 100000000000000000 : ℚ)
  supportValue := (353836648929651 / 500000000000000 : ℚ)
  supportSlope := (-130971326719731 / 25000000000000 : ℚ)
  oldCenter := (353836648929651 / 500000000000000 : ℚ)
  newCoefficients := coefficients_797
  oldLo := (35375000000000001 / 50000000000000000 : ℚ)
  oldHi := (70800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1642]
}

def cell_8243 : Cell := { cellDefaults with
  domain := ⟨(32050000000000001 / 100000000000000000 : ℚ), (32056250000000001 / 100000000000000000 : ℚ)⟩
  r := (15603606691993 / 20000000000000 : ℚ)
  w := (8515031633003 / 5000000000000 : ℚ)
  center := (32053125000000001 / 100000000000000000 : ℚ)
  supportValue := (3543302190838001 / 5000000000000000 : ℚ)
  supportSlope := (-5245754338172759 / 1000000000000000 : ℚ)
  oldCenter := (3543302190838001 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_798
  oldLo := (70800000000000007 / 100000000000000000 : ℚ)
  oldHi := (70900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1643, piece_1644]
}

def cell_8244 : Cell := { cellDefaults with
  domain := ⟨(32056250000000001 / 100000000000000000 : ℚ), (32062500000000001 / 100000000000000000 : ℚ)⟩
  r := (15603606691993 / 20000000000000 : ℚ)
  w := (8515031633003 / 5000000000000 : ℚ)
  center := (32059375000000001 / 100000000000000000 : ℚ)
  supportValue := (3541663416432677 / 5000000000000000 : ℚ)
  supportSlope := (-10484787976139387 / 2000000000000000 : ℚ)
  oldCenter := (3541663416432677 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_798
  oldLo := (70800000000000007 / 100000000000000000 : ℚ)
  oldHi := (35425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1643]
}

def cell_8245 : Cell := { cellDefaults with
  domain := ⟨(32062500000000001 / 100000000000000000 : ℚ), (32068750000000001 / 100000000000000000 : ℚ)⟩
  r := (15603606691993 / 20000000000000 : ℚ)
  w := (8515031633003 / 5000000000000 : ℚ)
  center := (32065625000000001 / 100000000000000000 : ℚ)
  supportValue := (885006441336213 / 1250000000000000 : ℚ)
  supportSlope := (-5238798907583941 / 1000000000000000 : ℚ)
  oldCenter := (885006441336213 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_798
  oldLo := (35375000000000001 / 50000000000000000 : ℚ)
  oldHi := (35425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1642, piece_1643]
}

def cell_8246 : Cell := { cellDefaults with
  domain := ⟨(32068750000000001 / 100000000000000000 : ℚ), (32075000000000001 / 100000000000000000 : ℚ)⟩
  r := (15603606691993 / 20000000000000 : ℚ)
  w := (8515031633003 / 5000000000000 : ℚ)
  center := (32071875000000001 / 100000000000000000 : ℚ)
  supportValue := (3538389163806283 / 5000000000000000 : ℚ)
  supportSlope := (-1308804999021973 / 250000000000000 : ℚ)
  oldCenter := (3538389163806283 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_798
  oldLo := (35375000000000001 / 50000000000000000 : ℚ)
  oldHi := (70800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1642]
}

def cell_8247 : Cell := { cellDefaults with
  domain := ⟨(32075000000000001 / 100000000000000000 : ℚ), (32081250000000001 / 100000000000000000 : ℚ)⟩
  r := (15603606691993 / 20000000000000 : ℚ)
  w := (8515031633003 / 5000000000000 : ℚ)
  center := (32078125000000001 / 100000000000000000 : ℚ)
  supportValue := (1768376843278531 / 2500000000000000 : ℚ)
  supportSlope := (-10463703850263073 / 2000000000000000 : ℚ)
  oldCenter := (1768376843278531 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_798
  oldLo := (70700000000000007 / 100000000000000000 : ℚ)
  oldHi := (70800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1641, piece_1642]
}

def cell_8248 : Cell := { cellDefaults with
  domain := ⟨(32081250000000001 / 100000000000000000 : ℚ), (32087500000000001 / 100000000000000000 : ℚ)⟩
  r := (15603606691993 / 20000000000000 : ℚ)
  w := (8515031633003 / 5000000000000 : ℚ)
  center := (32084375000000001 / 100000000000000000 : ℚ)
  supportValue := (1767559661238287 / 2500000000000000 : ℚ)
  supportSlope := (-40845758396163 / 7812500000000 : ℚ)
  oldCenter := (1767559661238287 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_798
  oldLo := (35325000000000001 / 50000000000000000 : ℚ)
  oldHi := (35375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1639, piece_1640, piece_1641]
}

def cell_8249 : Cell := { cellDefaults with
  domain := ⟨(32087500000000001 / 100000000000000000 : ℚ), (32093750000000001 / 100000000000000000 : ℚ)⟩
  r := (15603606691993 / 20000000000000 : ℚ)
  w := (8515031633003 / 5000000000000 : ℚ)
  center := (32090625000000001 / 100000000000000000 : ℚ)
  supportValue := (1413394405611047 / 2000000000000000 : ℚ)
  supportSlope := (-2612356473941091 / 500000000000000 : ℚ)
  oldCenter := (1413394405611047 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_798
  oldLo := (35325000000000001 / 50000000000000000 : ℚ)
  oldHi := (3534357541899441 / 5000000000000000 : ℚ)
  oldPieces := [piece_1639]
}

theorem check_8200 : cell_8200.check = true := by
  decide +kernel

theorem check_8201 : cell_8201.check = true := by
  decide +kernel

theorem check_8202 : cell_8202.check = true := by
  decide +kernel

theorem check_8203 : cell_8203.check = true := by
  decide +kernel

theorem check_8204 : cell_8204.check = true := by
  decide +kernel

theorem check_8205 : cell_8205.check = true := by
  decide +kernel

theorem check_8206 : cell_8206.check = true := by
  decide +kernel

theorem check_8207 : cell_8207.check = true := by
  decide +kernel

theorem check_8208 : cell_8208.check = true := by
  decide +kernel

theorem check_8209 : cell_8209.check = true := by
  decide +kernel

theorem check_8210 : cell_8210.check = true := by
  decide +kernel

theorem check_8211 : cell_8211.check = true := by
  decide +kernel

theorem check_8212 : cell_8212.check = true := by
  decide +kernel

theorem check_8213 : cell_8213.check = true := by
  decide +kernel

theorem check_8214 : cell_8214.check = true := by
  decide +kernel

theorem check_8215 : cell_8215.check = true := by
  decide +kernel

theorem check_8216 : cell_8216.check = true := by
  decide +kernel

theorem check_8217 : cell_8217.check = true := by
  decide +kernel

theorem check_8218 : cell_8218.check = true := by
  decide +kernel

theorem check_8219 : cell_8219.check = true := by
  decide +kernel

theorem check_8220 : cell_8220.check = true := by
  decide +kernel

theorem check_8221 : cell_8221.check = true := by
  decide +kernel

theorem check_8222 : cell_8222.check = true := by
  decide +kernel

theorem check_8223 : cell_8223.check = true := by
  decide +kernel

theorem check_8224 : cell_8224.check = true := by
  decide +kernel

theorem check_8225 : cell_8225.check = true := by
  decide +kernel

theorem check_8226 : cell_8226.check = true := by
  decide +kernel

theorem check_8227 : cell_8227.check = true := by
  decide +kernel

theorem check_8228 : cell_8228.check = true := by
  decide +kernel

theorem check_8229 : cell_8229.check = true := by
  decide +kernel

theorem check_8230 : cell_8230.check = true := by
  decide +kernel

theorem check_8231 : cell_8231.check = true := by
  decide +kernel

theorem check_8232 : cell_8232.check = true := by
  decide +kernel

theorem check_8233 : cell_8233.check = true := by
  decide +kernel

theorem check_8234 : cell_8234.check = true := by
  decide +kernel

theorem check_8235 : cell_8235.check = true := by
  decide +kernel

theorem check_8236 : cell_8236.check = true := by
  decide +kernel

theorem check_8237 : cell_8237.check = true := by
  decide +kernel

theorem check_8238 : cell_8238.check = true := by
  decide +kernel

theorem check_8239 : cell_8239.check = true := by
  decide +kernel

theorem check_8240 : cell_8240.check = true := by
  decide +kernel

theorem check_8241 : cell_8241.check = true := by
  decide +kernel

theorem check_8242 : cell_8242.check = true := by
  decide +kernel

theorem check_8243 : cell_8243.check = true := by
  decide +kernel

theorem check_8244 : cell_8244.check = true := by
  decide +kernel

theorem check_8245 : cell_8245.check = true := by
  decide +kernel

theorem check_8246 : cell_8246.check = true := by
  decide +kernel

theorem check_8247 : cell_8247.check = true := by
  decide +kernel

theorem check_8248 : cell_8248.check = true := by
  decide +kernel

theorem check_8249 : cell_8249.check = true := by
  decide +kernel

def cells : List Cell := [cell_8200, cell_8201, cell_8202, cell_8203, cell_8204, cell_8205, cell_8206, cell_8207, cell_8208, cell_8209, cell_8210, cell_8211, cell_8212, cell_8213, cell_8214, cell_8215, cell_8216, cell_8217, cell_8218, cell_8219, cell_8220, cell_8221, cell_8222, cell_8223, cell_8224, cell_8225, cell_8226, cell_8227, cell_8228, cell_8229, cell_8230, cell_8231, cell_8232, cell_8233, cell_8234, cell_8235, cell_8236, cell_8237, cell_8238, cell_8239, cell_8240, cell_8241, cell_8242, cell_8243, cell_8244, cell_8245, cell_8246, cell_8247, cell_8248, cell_8249]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8200, check_8201, check_8202, check_8203, check_8204, check_8205, check_8206, check_8207, check_8208, check_8209, check_8210, check_8211, check_8212, check_8213, check_8214, check_8215, check_8216, check_8217, check_8218, check_8219, check_8220, check_8221, check_8222, check_8223, check_8224, check_8225, check_8226, check_8227, check_8228, check_8229, check_8230, check_8231, check_8232, check_8233, check_8234, check_8235, check_8236, check_8237, check_8238, check_8239, check_8240, check_8241, check_8242, check_8243, check_8244, check_8245, check_8246, check_8247, check_8248, check_8249, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0164

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0164
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0164
open AnalyticBounds.ExpressionCertificate

theorem linked_8200 : Linked cell_8200 pieces := by
  link_source cell_8200 with piece_791 using piece_791_mem, ⟨piece_1656_mem, piece_1657_mem⟩

theorem linked_8201 : Linked cell_8201 pieces := by
  link_source cell_8201 with piece_791 using piece_791_mem, piece_1656_mem

theorem linked_8202 : Linked cell_8202 pieces := by
  link_source cell_8202 with piece_792 using piece_792_mem, piece_1658_mem

theorem linked_8203 : Linked cell_8203 pieces := by
  link_source cell_8203 with piece_792 using piece_792_mem, ⟨piece_1657_mem, piece_1658_mem⟩

theorem linked_8204 : Linked cell_8204 pieces := by
  link_source cell_8204 with piece_792 using piece_792_mem, ⟨piece_1656_mem, piece_1657_mem⟩

theorem linked_8205 : Linked cell_8205 pieces := by
  link_source cell_8205 with piece_792 using piece_792_mem, piece_1656_mem

theorem linked_8206 : Linked cell_8206 pieces := by
  link_source cell_8206 with piece_792 using piece_792_mem, ⟨piece_1655_mem, piece_1656_mem⟩

theorem linked_8207 : Linked cell_8207 pieces := by
  link_source cell_8207 with piece_792 using piece_792_mem, ⟨piece_1654_mem, piece_1655_mem⟩

theorem linked_8208 : Linked cell_8208 pieces := by
  link_source cell_8208 with piece_792 using piece_792_mem, piece_1654_mem

theorem linked_8209 : Linked cell_8209 pieces := by
  link_source cell_8209 with piece_792 using piece_792_mem, ⟨piece_1653_mem, piece_1654_mem⟩

theorem linked_8210 : Linked cell_8210 pieces := by
  link_source cell_8210 with piece_793 using piece_793_mem, ⟨piece_1655_mem, piece_1656_mem⟩

theorem linked_8211 : Linked cell_8211 pieces := by
  link_source cell_8211 with piece_793 using piece_793_mem, ⟨piece_1654_mem, piece_1655_mem⟩

theorem linked_8212 : Linked cell_8212 pieces := by
  link_source cell_8212 with piece_793 using piece_793_mem, piece_1654_mem

theorem linked_8213 : Linked cell_8213 pieces := by
  link_source cell_8213 with piece_793 using piece_793_mem, ⟨piece_1653_mem, piece_1654_mem⟩

theorem linked_8214 : Linked cell_8214 pieces := by
  link_source cell_8214 with piece_793 using piece_793_mem, ⟨piece_1652_mem, piece_1653_mem⟩

theorem linked_8215 : Linked cell_8215 pieces := by
  link_source cell_8215 with piece_793 using piece_793_mem, ⟨piece_1651_mem, piece_1652_mem⟩

theorem linked_8216 : Linked cell_8216 pieces := by
  link_source cell_8216 with piece_793 using piece_793_mem, ⟨piece_1650_mem, piece_1651_mem⟩

theorem linked_8217 : Linked cell_8217 pieces := by
  link_source cell_8217 with piece_793 using piece_793_mem, ⟨piece_1649_mem, piece_1650_mem⟩

theorem linked_8218 : Linked cell_8218 pieces := by
  link_source cell_8218 with piece_794 using piece_794_mem, ⟨piece_1652_mem, piece_1653_mem⟩

theorem linked_8219 : Linked cell_8219 pieces := by
  link_source cell_8219 with piece_794 using piece_794_mem, ⟨piece_1651_mem, piece_1652_mem⟩

theorem linked_8220 : Linked cell_8220 pieces := by
  link_source cell_8220 with piece_794 using piece_794_mem, ⟨piece_1650_mem, piece_1651_mem⟩

theorem linked_8221 : Linked cell_8221 pieces := by
  link_source cell_8221 with piece_794 using piece_794_mem, ⟨piece_1649_mem, piece_1650_mem⟩

theorem linked_8222 : Linked cell_8222 pieces := by
  link_source cell_8222 with piece_794 using piece_794_mem, piece_1649_mem

theorem linked_8223 : Linked cell_8223 pieces := by
  link_source cell_8223 with piece_794 using piece_794_mem, ⟨piece_1648_mem, piece_1649_mem⟩

theorem linked_8224 : Linked cell_8224 pieces := by
  link_source cell_8224 with piece_794 using piece_794_mem, ⟨piece_1647_mem, piece_1648_mem⟩

theorem linked_8225 : Linked cell_8225 pieces := by
  link_source cell_8225 with piece_794 using piece_794_mem, piece_1647_mem

theorem linked_8226 : Linked cell_8226 pieces := by
  link_source cell_8226 with piece_795 using piece_795_mem, piece_1649_mem

theorem linked_8227 : Linked cell_8227 pieces := by
  link_source cell_8227 with piece_795 using piece_795_mem, ⟨piece_1648_mem, piece_1649_mem⟩

theorem linked_8228 : Linked cell_8228 pieces := by
  link_source cell_8228 with piece_795 using piece_795_mem, piece_1648_mem

theorem linked_8229 : Linked cell_8229 pieces := by
  link_source cell_8229 with piece_795 using piece_795_mem, ⟨piece_1647_mem, piece_1648_mem⟩

theorem linked_8230 : Linked cell_8230 pieces := by
  link_source cell_8230 with piece_796 using piece_796_mem, piece_1647_mem

theorem linked_8231 : Linked cell_8231 pieces := by
  link_source cell_8231 with piece_796 using piece_796_mem, ⟨piece_1646_mem, piece_1647_mem⟩

theorem linked_8232 : Linked cell_8232 pieces := by
  link_source cell_8232 with piece_796 using piece_796_mem, ⟨piece_1645_mem, piece_1646_mem⟩

theorem linked_8233 : Linked cell_8233 pieces := by
  link_source cell_8233 with piece_796 using piece_796_mem, piece_1645_mem

theorem linked_8234 : Linked cell_8234 pieces := by
  link_source cell_8234 with piece_796 using piece_796_mem, ⟨piece_1644_mem, piece_1645_mem⟩

theorem linked_8235 : Linked cell_8235 pieces := by
  link_source cell_8235 with piece_797 using piece_797_mem, ⟨piece_1646_mem, piece_1647_mem⟩

theorem linked_8236 : Linked cell_8236 pieces := by
  link_source cell_8236 with piece_797 using piece_797_mem, ⟨piece_1645_mem, piece_1646_mem⟩

theorem linked_8237 : Linked cell_8237 pieces := by
  link_source cell_8237 with piece_797 using piece_797_mem, piece_1645_mem

theorem linked_8238 : Linked cell_8238 pieces := by
  link_source cell_8238 with piece_797 using piece_797_mem, ⟨piece_1644_mem, piece_1645_mem⟩

theorem linked_8239 : Linked cell_8239 pieces := by
  link_source cell_8239 with piece_797 using piece_797_mem, ⟨piece_1643_mem, piece_1644_mem⟩

theorem linked_8240 : Linked cell_8240 pieces := by
  link_source cell_8240 with piece_797 using piece_797_mem, piece_1643_mem

theorem linked_8241 : Linked cell_8241 pieces := by
  link_source cell_8241 with piece_797 using piece_797_mem, ⟨piece_1642_mem, piece_1643_mem⟩

theorem linked_8242 : Linked cell_8242 pieces := by
  link_source cell_8242 with piece_797 using piece_797_mem, piece_1642_mem

theorem linked_8243 : Linked cell_8243 pieces := by
  link_source cell_8243 with piece_798 using piece_798_mem, ⟨piece_1643_mem, piece_1644_mem⟩

theorem linked_8244 : Linked cell_8244 pieces := by
  link_source cell_8244 with piece_798 using piece_798_mem, piece_1643_mem

theorem linked_8245 : Linked cell_8245 pieces := by
  link_source cell_8245 with piece_798 using piece_798_mem, ⟨piece_1642_mem, piece_1643_mem⟩

theorem linked_8246 : Linked cell_8246 pieces := by
  link_source cell_8246 with piece_798 using piece_798_mem, piece_1642_mem

theorem linked_8247 : Linked cell_8247 pieces := by
  link_source cell_8247 with piece_798 using piece_798_mem, ⟨piece_1641_mem, piece_1642_mem⟩

theorem linked_8248 : Linked cell_8248 pieces := by
  link_source cell_8248 with piece_798 using piece_798_mem, ⟨piece_1639_mem, ⟨piece_1640_mem, piece_1641_mem⟩⟩

theorem linked_8249 : Linked cell_8249 pieces := by
  link_source cell_8249 with piece_798 using piece_798_mem, piece_1639_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0164.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0164.cells,List.forall_mem_cons]
  exact ⟨linked_8200, linked_8201, linked_8202, linked_8203, linked_8204, linked_8205, linked_8206, linked_8207, linked_8208, linked_8209, linked_8210, linked_8211, linked_8212, linked_8213, linked_8214, linked_8215, linked_8216, linked_8217, linked_8218, linked_8219, linked_8220, linked_8221, linked_8222, linked_8223, linked_8224, linked_8225, linked_8226, linked_8227, linked_8228, linked_8229, linked_8230, linked_8231, linked_8232, linked_8233, linked_8234, linked_8235, linked_8236, linked_8237, linked_8238, linked_8239, linked_8240, linked_8241, linked_8242, linked_8243, linked_8244, linked_8245, linked_8246, linked_8247, linked_8248, linked_8249, by simp⟩

theorem covered : covers (2543 / 8000 : ℚ) (32093750000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0164.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0164
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0165
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(32093750000000001 / 100000000000000000 : ℚ), (32100000000000001 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (9744946178973 / 12500000000000 : ℚ)
  w := (2127576690919 / 1250000000000 : ℚ)
  center := (32096875000000001 / 100000000000000000 : ℚ)
  supportValue := (7063707656026571 / 10000000000000000 : ℚ)
  supportSlope := (-1044264713014087 / 200000000000000 : ℚ)
  oldCenter := (7063707656026571 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_799
  oldLo := (35275000000000001 / 50000000000000000 : ℚ)
  oldHi := (70600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1638, piece_1639]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8250 : Cell := { cellDefaults with
  r := (15603606691993 / 20000000000000 : ℚ)
  w := (8515031633003 / 5000000000000 : ℚ)
  newCoefficients := coefficients_798
  oldLo := (70600000000000007 / 100000000000000000 : ℚ)
  oldHi := (3534357541899441 / 5000000000000000 : ℚ)
  oldPieces := [piece_1638, piece_1639]
}

def cell_8251 : Cell := { cellDefaults with
  domain := ⟨(32100000000000001 / 100000000000000000 : ℚ), (32106250000000001 / 100000000000000000 : ℚ)⟩
  center := (32103125000000001 / 100000000000000000 : ℚ)
  supportValue := (7073549898896461 / 10000000000000000 : ℚ)
  supportSlope := (-2614102083834169 / 500000000000000 : ℚ)
  oldCenter := (7073549898896461 / 10000000000000000 : ℚ)
  oldLo := (70700000000000007 / 100000000000000000 : ℚ)
  oldHi := (70800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1641, piece_1642]
}

def cell_8252 : Cell := { cellDefaults with
  domain := ⟨(32106250000000001 / 100000000000000000 : ℚ), (32112500000000001 / 100000000000000000 : ℚ)⟩
  center := (32109375000000001 / 100000000000000000 : ℚ)
  supportValue := (1414056688774223 / 2000000000000000 : ℚ)
  supportSlope := (-2612309105726851 / 500000000000000 : ℚ)
  oldCenter := (1414056688774223 / 2000000000000000 : ℚ)
  oldLo := (35325000000000001 / 50000000000000000 : ℚ)
  oldHi := (35375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1639, piece_1640, piece_1641]
}

def cell_8253 : Cell := { cellDefaults with
  domain := ⟨(32112500000000001 / 100000000000000000 : ℚ), (32118750000000001 / 100000000000000000 : ℚ)⟩
  center := (32115625000000001 / 100000000000000000 : ℚ)
  supportValue := (1413403819674993 / 2000000000000000 : ℚ)
  supportSlope := (-1044217989606011 / 200000000000000 : ℚ)
  oldCenter := (1413403819674993 / 2000000000000000 : ℚ)
  oldLo := (35325000000000001 / 50000000000000000 : ℚ)
  oldHi := (3534357541899441 / 5000000000000000 : ℚ)
  oldPieces := [piece_1639]
}

def cell_8254 : Cell := { cellDefaults with
  domain := ⟨(32118750000000001 / 100000000000000000 : ℚ), (32125000000000001 / 100000000000000000 : ℚ)⟩
  center := (32121875000000001 / 100000000000000000 : ℚ)
  supportValue := (7063756992186477 / 10000000000000000 : ℚ)
  supportSlope := (-5217702837132521 / 1000000000000000 : ℚ)
  oldCenter := (7063756992186477 / 10000000000000000 : ℚ)
  oldLo := (70600000000000007 / 100000000000000000 : ℚ)
  oldHi := (3534357541899441 / 5000000000000000 : ℚ)
  oldPieces := [piece_1638, piece_1639]
}

def cell_8255 : Cell := { cellDefaults with
  domain := ⟨(32125000000000001 / 100000000000000000 : ℚ), (32131250000000001 / 100000000000000000 : ℚ)⟩
  center := (32128125000000001 / 100000000000000000 : ℚ)
  supportValue := (7060497079853189 / 10000000000000000 : ℚ)
  supportSlope := (-2607061255078591 / 500000000000000 : ℚ)
  oldCenter := (7060497079853189 / 10000000000000000 : ℚ)
  oldHi := (35325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1637, piece_1638]
}

def cell_8256 : Cell := { cellDefaults with
  domain := ⟨(32131250000000001 / 100000000000000000 : ℚ), (32137500000000001 / 100000000000000000 : ℚ)⟩
  center := (32134375000000001 / 100000000000000000 : ℚ)
  supportValue := (705723929211637 / 1000000000000000 : ℚ)
  supportSlope := (-1042126357381079 / 200000000000000 : ℚ)
  oldCenter := (705723929211637 / 1000000000000000 : ℚ)
  oldPieces := [piece_1637]
}

def cell_8257 : Cell := { cellDefaults with
  domain := ⟨(32137500000000001 / 100000000000000000 : ℚ), (32143750000000001 / 100000000000000000 : ℚ)⟩
  center := (32140625000000001 / 100000000000000000 : ℚ)
  supportValue := (1763495935075279 / 2500000000000000 : ℚ)
  supportSlope := (-325451215607897 / 62500000000000 : ℚ)
  oldCenter := (1763495935075279 / 2500000000000000 : ℚ)
  oldLo := (70500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1636, piece_1637]
}

def cell_8258 : Cell := { cellDefaults with
  domain := ⟨(32143750000000001 / 100000000000000000 : ℚ), (32150000000000001 / 100000000000000000 : ℚ)⟩
  center := (32146875000000001 / 100000000000000000 : ℚ)
  supportValue := (3525365178787157 / 5000000000000000 : ℚ)
  supportSlope := (-5203644824135267 / 1000000000000000 : ℚ)
  oldCenter := (3525365178787157 / 5000000000000000 : ℚ)
  oldLo := (35225000000000001 / 50000000000000000 : ℚ)
  oldHi := (35275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1635, piece_1636]
}

def cell_8259 : Cell := { cellDefaults with
  domain := ⟨(32150000000000001 / 100000000000000000 : ℚ), (32156250000000001 / 100000000000000000 : ℚ)⟩
  r := (38950603983947 / 50000000000000 : ℚ)
  w := (8505592222691 / 5000000000000 : ℚ)
  center := (32153125000000001 / 100000000000000000 : ℚ)
  supportValue := (7060543286145151 / 10000000000000000 : ℚ)
  supportSlope := (-5210492798603639 / 1000000000000000 : ℚ)
  oldCenter := (7060543286145151 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_800
  oldHi := (35325000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1637, piece_1638]
}

def cell_8260 : Cell := { cellDefaults with
  domain := ⟨(32156250000000001 / 100000000000000000 : ℚ), (32162500000000001 / 100000000000000000 : ℚ)⟩
  r := (38950603983947 / 50000000000000 : ℚ)
  w := (8505592222691 / 5000000000000 : ℚ)
  center := (32159375000000001 / 100000000000000000 : ℚ)
  supportValue := (3528643882037649 / 5000000000000000 : ℚ)
  supportSlope := (-130175454886583 / 25000000000000 : ℚ)
  oldCenter := (3528643882037649 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_800
  oldPieces := [piece_1637]
}

def cell_8261 : Cell := { cellDefaults with
  domain := ⟨(32162500000000001 / 100000000000000000 : ℚ), (32168750000000001 / 100000000000000000 : ℚ)⟩
  r := (38950603983947 / 50000000000000 : ℚ)
  w := (8505592222691 / 5000000000000 : ℚ)
  center := (32165625000000001 / 100000000000000000 : ℚ)
  supportValue := (7054034472340783 / 10000000000000000 : ℚ)
  supportSlope := (-650450995137053 / 125000000000000 : ℚ)
  oldCenter := (7054034472340783 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_800
  oldLo := (70500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1636, piece_1637]
}

def cell_8262 : Cell := { cellDefaults with
  domain := ⟨(32168750000000001 / 100000000000000000 : ℚ), (32175000000000001 / 100000000000000000 : ℚ)⟩
  r := (38950603983947 / 50000000000000 : ℚ)
  w := (8505592222691 / 5000000000000 : ℚ)
  center := (32171875000000001 / 100000000000000000 : ℚ)
  supportValue := (7050783339316593 / 10000000000000000 : ℚ)
  supportSlope := (-2600021130415797 / 500000000000000 : ℚ)
  oldCenter := (7050783339316593 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_800
  oldLo := (35225000000000001 / 50000000000000000 : ℚ)
  oldHi := (35275000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1635, piece_1636]
}

def cell_8263 : Cell := { cellDefaults with
  domain := ⟨(32175000000000001 / 100000000000000000 : ℚ), (32181250000000001 / 100000000000000000 : ℚ)⟩
  r := (38950603983947 / 50000000000000 : ℚ)
  w := (8505592222691 / 5000000000000 : ℚ)
  center := (32178125000000001 / 100000000000000000 : ℚ)
  supportValue := (7047534346588773 / 10000000000000000 : ℚ)
  supportSlope := (-5196609736387359 / 1000000000000000 : ℚ)
  oldCenter := (7047534346588773 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_800
  oldLo := (35225000000000001 / 50000000000000000 : ℚ)
  oldHi := (70500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1635]
}

def cell_8264 : Cell := { cellDefaults with
  domain := ⟨(32181250000000001 / 100000000000000000 : ℚ), (32187500000000001 / 100000000000000000 : ℚ)⟩
  r := (38950603983947 / 50000000000000 : ℚ)
  w := (8505592222691 / 5000000000000 : ℚ)
  center := (32184375000000001 / 100000000000000000 : ℚ)
  supportValue := (176107189516293 / 250000000000000 : ℚ)
  supportSlope := (-519317028104993 / 100000000000000 : ℚ)
  oldCenter := (176107189516293 / 250000000000000 : ℚ)
  newCoefficients := coefficients_800
  oldLo := (70400000000000007 / 100000000000000000 : ℚ)
  oldHi := (70500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1634, piece_1635]
}

def cell_8265 : Cell := { cellDefaults with
  domain := ⟨(32187500000000001 / 100000000000000000 : ℚ), (32193750000000001 / 100000000000000000 : ℚ)⟩
  r := (38950603983947 / 50000000000000 : ℚ)
  w := (8505592222691 / 5000000000000 : ℚ)
  center := (32190625000000001 / 100000000000000000 : ℚ)
  supportValue := (704104294619783 / 1000000000000000 : ℚ)
  supportSlope := (-5189610248059751 / 1000000000000000 : ℚ)
  oldCenter := (704104294619783 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_800
  oldLo := (70350000000000001 / 100000000000000000 : ℚ)
  oldHi := (35225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1633, piece_1634]
}

def cell_8266 : Cell := { cellDefaults with
  domain := ⟨(32193750000000001 / 100000000000000000 : ℚ), (32200000000000001 / 100000000000000000 : ℚ)⟩
  r := (38950603983947 / 50000000000000 : ℚ)
  w := (8505592222691 / 5000000000000 : ℚ)
  center := (32196875000000001 / 100000000000000000 : ℚ)
  supportValue := (879725058904437 / 1250000000000000 : ℚ)
  supportSlope := (-129655569383047 / 25000000000000 : ℚ)
  oldCenter := (879725058904437 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_800
  oldLo := (70350000000000001 / 100000000000000000 : ℚ)
  oldHi := (70400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1633]
}

def cell_8267 : Cell := { cellDefaults with
  domain := ⟨(32200000000000001 / 100000000000000000 : ℚ), (32206250000000001 / 100000000000000000 : ℚ)⟩
  r := (77842949568877 / 100000000000000 : ℚ)
  w := (8500887664991 / 5000000000000 : ℚ)
  center := (32203125000000001 / 100000000000000000 : ℚ)
  supportValue := (3523792183714923 / 5000000000000000 : ℚ)
  supportSlope := (-5193005286834307 / 1000000000000000 : ℚ)
  oldCenter := (3523792183714923 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_801
  oldLo := (35225000000000001 / 50000000000000000 : ℚ)
  oldHi := (70500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1635]
}

def cell_8268 : Cell := { cellDefaults with
  domain := ⟨(32206250000000001 / 100000000000000000 : ℚ), (32212500000000001 / 100000000000000000 : ℚ)⟩
  r := (77842949568877 / 100000000000000 : ℚ)
  w := (8500887664991 / 5000000000000 : ℚ)
  center := (32209375000000001 / 100000000000000000 : ℚ)
  supportValue := (1761084963998661 / 2500000000000000 : ℚ)
  supportSlope := (-1037913548562841 / 200000000000000 : ℚ)
  oldCenter := (1761084963998661 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_801
  oldLo := (70400000000000007 / 100000000000000000 : ℚ)
  oldHi := (70500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1634, piece_1635]
}

def cell_8269 : Cell := { cellDefaults with
  domain := ⟨(32212500000000001 / 100000000000000000 : ℚ), (32218750000000001 / 100000000000000000 : ℚ)⟩
  r := (77842949568877 / 100000000000000 : ℚ)
  w := (8500887664991 / 5000000000000 : ℚ)
  center := (32215625000000001 / 100000000000000000 : ℚ)
  supportValue := (7041097465484579 / 10000000000000000 : ℚ)
  supportSlope := (-5186016683076389 / 1000000000000000 : ℚ)
  oldCenter := (7041097465484579 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_801
  oldLo := (70350000000000001 / 100000000000000000 : ℚ)
  oldHi := (35225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1633, piece_1634]
}

def cell_8270 : Cell := { cellDefaults with
  domain := ⟨(32218750000000001 / 100000000000000000 : ℚ), (32225000000000001 / 100000000000000000 : ℚ)⟩
  r := (77842949568877 / 100000000000000 : ℚ)
  w := (8500887664991 / 5000000000000 : ℚ)
  center := (32221875000000001 / 100000000000000000 : ℚ)
  supportValue := (7037857233590119 / 10000000000000000 : ℚ)
  supportSlope := (-5182646586987971 / 1000000000000000 : ℚ)
  oldCenter := (7037857233590119 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_801
  oldLo := (70350000000000001 / 100000000000000000 : ℚ)
  oldHi := (70400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1633]
}

def cell_8271 : Cell := { cellDefaults with
  domain := ⟨(32225000000000001 / 100000000000000000 : ℚ), (32231250000000001 / 100000000000000000 : ℚ)⟩
  r := (77842949568877 / 100000000000000 : ℚ)
  w := (8500887664991 / 5000000000000 : ℚ)
  center := (32228125000000001 / 100000000000000000 : ℚ)
  supportValue := (1758654804835091 / 2500000000000000 : ℚ)
  supportSlope := (-2589587916462577 / 500000000000000 : ℚ)
  oldCenter := (1758654804835091 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_801
  oldLo := (70300000000000007 / 100000000000000000 : ℚ)
  oldHi := (70400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1632, piece_1633]
}

def cell_8272 : Cell := { cellDefaults with
  domain := ⟨(32231250000000001 / 100000000000000000 : ℚ), (32237500000000001 / 100000000000000000 : ℚ)⟩
  r := (77842949568877 / 100000000000000 : ℚ)
  w := (8500887664991 / 5000000000000 : ℚ)
  center := (32234375000000001 / 100000000000000000 : ℚ)
  supportValue := (3515691648165621 / 5000000000000000 : ℚ)
  supportSlope := (-5175630366291983 / 1000000000000000 : ℚ)
  oldCenter := (3515691648165621 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_801
  oldLo := (70250000000000001 / 100000000000000000 : ℚ)
  oldHi := (70350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1631, piece_1632]
}

def cell_8273 : Cell := { cellDefaults with
  domain := ⟨(32237500000000001 / 100000000000000000 : ℚ), (32243750000000001 / 100000000000000000 : ℚ)⟩
  r := (77842949568877 / 100000000000000 : ℚ)
  w := (8500887664991 / 5000000000000 : ℚ)
  center := (32240625000000001 / 100000000000000000 : ℚ)
  supportValue := (7028149553644963 / 10000000000000000 : ℚ)
  supportSlope := (-5172309254021457 / 1000000000000000 : ℚ)
  oldCenter := (7028149553644963 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_801
  oldLo := (70250000000000001 / 100000000000000000 : ℚ)
  oldHi := (70300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1631]
}

def cell_8274 : Cell := { cellDefaults with
  domain := ⟨(32243750000000001 / 100000000000000000 : ℚ), (32250000000000001 / 100000000000000000 : ℚ)⟩
  r := (77842949568877 / 100000000000000 : ℚ)
  w := (8500887664991 / 5000000000000 : ℚ)
  center := (32246875000000001 / 100000000000000000 : ℚ)
  supportValue := (702491802514729 / 1000000000000000 : ℚ)
  supportSlope := (-1292200550606637 / 250000000000000 : ℚ)
  oldCenter := (702491802514729 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_801
  oldLo := (70200000000000007 / 100000000000000000 : ℚ)
  oldHi := (70300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1630, piece_1631]
}

def cell_8275 : Cell := { cellDefaults with
  domain := ⟨(32250000000000001 / 100000000000000000 : ℚ), (32256250000000001 / 100000000000000000 : ℚ)⟩
  r := (77784792519713 / 100000000000000 : ℚ)
  w := (16992386698799 / 10000000000000 : ℚ)
  center := (32253125000000001 / 100000000000000000 : ℚ)
  supportValue := (1406934589037699 / 2000000000000000 : ℚ)
  supportSlope := (-258779094732553 / 50000000000000 : ℚ)
  oldCenter := (1406934589037699 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_802
  oldLo := (70300000000000007 / 100000000000000000 : ℚ)
  oldHi := (70400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1632, piece_1633]
}

def cell_8276 : Cell := { cellDefaults with
  domain := ⟨(32256250000000001 / 100000000000000000 : ℚ), (32262500000000001 / 100000000000000000 : ℚ)⟩
  r := (77784792519713 / 100000000000000 : ℚ)
  w := (16992386698799 / 10000000000000 : ℚ)
  center := (32259375000000001 / 100000000000000000 : ℚ)
  supportValue := (7031439260608923 / 10000000000000000 : ℚ)
  supportSlope := (-517204538966709 / 100000000000000 : ℚ)
  oldCenter := (7031439260608923 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_802
  oldLo := (70250000000000001 / 100000000000000000 : ℚ)
  oldHi := (70350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1631, piece_1632]
}

def cell_8277 : Cell := { cellDefaults with
  domain := ⟨(32262500000000001 / 100000000000000000 : ℚ), (32268750000000001 / 100000000000000000 : ℚ)⟩
  r := (77784792519713 / 100000000000000 : ℚ)
  w := (16992386698799 / 10000000000000 : ℚ)
  center := (32265625000000001 / 100000000000000000 : ℚ)
  supportValue := (3514103877812723 / 5000000000000000 : ℚ)
  supportSlope := (-5168741874626903 / 1000000000000000 : ℚ)
  oldCenter := (3514103877812723 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_802
  oldLo := (70250000000000001 / 100000000000000000 : ℚ)
  oldHi := (70300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1631]
}

def cell_8278 : Cell := { cellDefaults with
  domain := ⟨(32268750000000001 / 100000000000000000 : ℚ), (32275000000000001 / 100000000000000000 : ℚ)⟩
  r := (77784792519713 / 100000000000000 : ℚ)
  w := (16992386698799 / 10000000000000 : ℚ)
  center := (32271875000000001 / 100000000000000000 : ℚ)
  supportValue := (3512489229618407 / 5000000000000000 : ℚ)
  supportSlope := (-5165235475207197 / 1000000000000000 : ℚ)
  oldCenter := (3512489229618407 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_802
  oldLo := (70200000000000007 / 100000000000000000 : ℚ)
  oldHi := (70300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1630, piece_1631]
}

def cell_8279 : Cell := { cellDefaults with
  domain := ⟨(32275000000000001 / 100000000000000000 : ℚ), (32281250000000001 / 100000000000000000 : ℚ)⟩
  r := (77784792519713 / 100000000000000 : ℚ)
  w := (16992386698799 / 10000000000000 : ℚ)
  center := (32278125000000001 / 100000000000000000 : ℚ)
  supportValue := (438859450701607 / 625000000000000 : ℚ)
  supportSlope := (-5161724407102497 / 1000000000000000 : ℚ)
  oldCenter := (438859450701607 / 625000000000000 : ℚ)
  newCoefficients := coefficients_802
  oldLo := (70200000000000007 / 100000000000000000 : ℚ)
  oldHi := (70250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1630]
}

def cell_8280 : Cell := { cellDefaults with
  domain := ⟨(32281250000000001 / 100000000000000000 : ℚ), (32287500000000001 / 100000000000000000 : ℚ)⟩
  r := (77784792519713 / 100000000000000 : ℚ)
  w := (16992386698799 / 10000000000000 : ℚ)
  center := (32284375000000001 / 100000000000000000 : ℚ)
  supportValue := (7018526167046667 / 10000000000000000 : ℚ)
  supportSlope := (-515843415172057 / 100000000000000 : ℚ)
  oldCenter := (7018526167046667 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_802
  oldLo := (70150000000000001 / 100000000000000000 : ℚ)
  oldHi := (70250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1629, piece_1630]
}

def cell_8281 : Cell := { cellDefaults with
  domain := ⟨(32287500000000001 / 100000000000000000 : ℚ), (32293750000000001 / 100000000000000000 : ℚ)⟩
  r := (77784792519713 / 100000000000000 : ℚ)
  w := (16992386698799 / 10000000000000 : ℚ)
  center := (32290625000000001 / 100000000000000000 : ℚ)
  supportValue := (7015303300502763 / 10000000000000000 : ℚ)
  supportSlope := (-5154907396288877 / 1000000000000000 : ℚ)
  oldCenter := (7015303300502763 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_802
  oldLo := (140268156424581 / 200000000000000 : ℚ)
  oldHi := (70200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1628, piece_1629]
}

def cell_8282 : Cell := { cellDefaults with
  domain := ⟨(32293750000000001 / 100000000000000000 : ℚ), (32300000000000001 / 100000000000000000 : ℚ)⟩
  r := (77784792519713 / 100000000000000 : ℚ)
  w := (16992386698799 / 10000000000000 : ℚ)
  center := (32296875000000001 / 100000000000000000 : ℚ)
  supportValue := (1753020625708971 / 2500000000000000 : ℚ)
  supportSlope := (-5151451959836351 / 1000000000000000 : ℚ)
  oldCenter := (1753020625708971 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_802
  oldLo := (70100000000000007 / 100000000000000000 : ℚ)
  oldHi := (70150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1627, piece_1628]
}

def cell_8283 : Cell := { cellDefaults with
  domain := ⟨(32300000000000001 / 100000000000000000 : ℚ), (32306250000000001 / 100000000000000000 : ℚ)⟩
  r := (77726736882731 / 100000000000000 : ℚ)
  w := (16983017417063 / 10000000000000 : ℚ)
  center := (32303125000000001 / 100000000000000000 : ℚ)
  supportValue := (7021809038799257 / 10000000000000000 : ℚ)
  supportSlope := (-5158159103093141 / 1000000000000000 : ℚ)
  oldCenter := (7021809038799257 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_803
  oldLo := (70200000000000007 / 100000000000000000 : ℚ)
  oldHi := (70250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1630]
}

def cell_8284 : Cell := { cellDefaults with
  domain := ⟨(32306250000000001 / 100000000000000000 : ℚ), (32312500000000001 / 100000000000000000 : ℚ)⟩
  r := (77726736882731 / 100000000000000 : ℚ)
  w := (16983017417063 / 10000000000000 : ℚ)
  center := (32309375000000001 / 100000000000000000 : ℚ)
  supportValue := (1754646556436349 / 2500000000000000 : ℚ)
  supportSlope := (-5154868437220017 / 1000000000000000 : ℚ)
  oldCenter := (1754646556436349 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_803
  oldLo := (70150000000000001 / 100000000000000000 : ℚ)
  oldHi := (70250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1629, piece_1630]
}

def cell_8285 : Cell := { cellDefaults with
  domain := ⟨(32312500000000001 / 100000000000000000 : ℚ), (32318750000000001 / 100000000000000000 : ℚ)⟩
  r := (77726736882731 / 100000000000000 : ℚ)
  w := (16983017417063 / 10000000000000 : ℚ)
  center := (32315625000000001 / 100000000000000000 : ℚ)
  supportValue := (7015365579766533 / 10000000000000000 : ℚ)
  supportSlope := (-5151349497587887 / 1000000000000000 : ℚ)
  oldCenter := (7015365579766533 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_803
  oldLo := (140268156424581 / 200000000000000 : ℚ)
  oldHi := (70200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1628, piece_1629]
}

def cell_8286 : Cell := { cellDefaults with
  domain := ⟨(32318750000000001 / 100000000000000000 : ℚ), (32325000000000001 / 100000000000000000 : ℚ)⟩
  r := (77726736882731 / 100000000000000 : ℚ)
  w := (16983017417063 / 10000000000000 : ℚ)
  center := (32321875000000001 / 100000000000000000 : ℚ)
  supportValue := (7012147003253669 / 10000000000000000 : ℚ)
  supportSlope := (-1029582282739483 / 200000000000000 : ℚ)
  oldCenter := (7012147003253669 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_803
  oldLo := (70100000000000007 / 100000000000000000 : ℚ)
  oldHi := (70150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1627, piece_1628]
}

def cell_8287 : Cell := { cellDefaults with
  domain := ⟨(32325000000000001 / 100000000000000000 : ℚ), (32331250000000001 / 100000000000000000 : ℚ)⟩
  r := (77726736882731 / 100000000000000 : ℚ)
  w := (16983017417063 / 10000000000000 : ℚ)
  center := (32328125000000001 / 100000000000000000 : ℚ)
  supportValue := (3504465311915937 / 5000000000000000 : ℚ)
  supportSlope := (-1286144546072343 / 250000000000000 : ℚ)
  oldCenter := (3504465311915937 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_803
  oldLo := (70050000000000001 / 100000000000000000 : ℚ)
  oldHi := (140268156424581 / 200000000000000 : ℚ)
  oldPieces := [piece_1626, piece_1627]
}

def cell_8288 : Cell := { cellDefaults with
  domain := ⟨(32331250000000001 / 100000000000000000 : ℚ), (32337500000000001 / 100000000000000000 : ℚ)⟩
  r := (77726736882731 / 100000000000000 : ℚ)
  w := (16983017417063 / 10000000000000 : ℚ)
  center := (32334375000000001 / 100000000000000000 : ℚ)
  supportValue := (1401143275181667 / 2000000000000000 : ℚ)
  supportSlope := (-10282129718206079 / 2000000000000000 : ℚ)
  oldCenter := (1401143275181667 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_803
  oldLo := (70000000000000007 / 100000000000000000 : ℚ)
  oldHi := (70100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1625, piece_1626]
}

def cell_8289 : Cell := { cellDefaults with
  domain := ⟨(32337500000000001 / 100000000000000000 : ℚ), (32343750000000001 / 100000000000000000 : ℚ)⟩
  r := (77726736882731 / 100000000000000 : ℚ)
  w := (16983017417063 / 10000000000000 : ℚ)
  center := (32340625000000001 / 100000000000000000 : ℚ)
  supportValue := (7002504225391619 / 10000000000000000 : ℚ)
  supportSlope := (-1027536807180951 / 200000000000000 : ℚ)
  oldCenter := (7002504225391619 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_803
  oldLo := (70000000000000007 / 100000000000000000 : ℚ)
  oldHi := (70050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1625]
}

def cell_8290 : Cell := { cellDefaults with
  domain := ⟨(32343750000000001 / 100000000000000000 : ℚ), (32350000000000001 / 100000000000000000 : ℚ)⟩
  r := (77726736882731 / 100000000000000 : ℚ)
  w := (16983017417063 / 10000000000000 : ℚ)
  center := (32346875000000001 / 100000000000000000 : ℚ)
  supportValue := (1399858853793217 / 2000000000000000 : ℚ)
  supportSlope := (-5134304898955833 / 1000000000000000 : ℚ)
  oldCenter := (1399858853793217 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_803
  oldLo := (69950000000000001 / 100000000000000000 : ℚ)
  oldHi := (70050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1624, piece_1625]
}

def cell_8291 : Cell := { cellDefaults with
  domain := ⟨(32350000000000001 / 100000000000000000 : ℚ), (32356250000000001 / 100000000000000000 : ℚ)⟩
  r := (4854298967857 / 6250000000000 : ℚ)
  w := (33947338103 / 20000000000 : ℚ)
  center := (32353125000000001 / 100000000000000000 : ℚ)
  supportValue := (700899159457981 / 1000000000000000 : ℚ)
  supportSlope := (-5141020152628073 / 1000000000000000 : ℚ)
  oldCenter := (700899159457981 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_804
  oldLo := (70050000000000001 / 100000000000000000 : ℚ)
  oldHi := (140268156424581 / 200000000000000 : ℚ)
  oldPieces := [piece_1626, piece_1627]
}

def cell_8292 : Cell := { cellDefaults with
  domain := ⟨(32356250000000001 / 100000000000000000 : ℚ), (32362500000000001 / 100000000000000000 : ℚ)⟩
  r := (4854298967857 / 6250000000000 : ℚ)
  w := (33947338103 / 20000000000 : ℚ)
  center := (32359375000000001 / 100000000000000000 : ℚ)
  supportValue := (700577956192191 / 1000000000000000 : ℚ)
  supportSlope := (-2568757966770363 / 500000000000000 : ℚ)
  oldCenter := (700577956192191 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_804
  oldLo := (70000000000000007 / 100000000000000000 : ℚ)
  oldHi := (70100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1625, piece_1626]
}

def cell_8293 : Cell := { cellDefaults with
  domain := ⟨(32362500000000001 / 100000000000000000 : ℚ), (32368750000000001 / 100000000000000000 : ℚ)⟩
  r := (4854298967857 / 6250000000000 : ℚ)
  w := (33947338103 / 20000000000 : ℚ)
  center := (32365625000000001 / 100000000000000000 : ℚ)
  supportValue := (3501284813265849 / 5000000000000000 : ℚ)
  supportSlope := (-5134153929866159 / 1000000000000000 : ℚ)
  oldCenter := (3501284813265849 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_804
  oldLo := (70000000000000007 / 100000000000000000 : ℚ)
  oldHi := (70050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1625]
}

def cell_8294 : Cell := { cellDefaults with
  domain := ⟨(32368750000000001 / 100000000000000000 : ℚ), (32375000000000001 / 100000000000000000 : ℚ)⟩
  r := (4854298967857 / 6250000000000 : ℚ)
  w := (33947338103 / 20000000000 : ℚ)
  center := (32371875000000001 / 100000000000000000 : ℚ)
  supportValue := (1749840469887079 / 2500000000000000 : ℚ)
  supportSlope := (-5130774510764269 / 1000000000000000 : ℚ)
  oldCenter := (1749840469887079 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_804
  oldLo := (69950000000000001 / 100000000000000000 : ℚ)
  oldHi := (70050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1624, piece_1625]
}

def cell_8295 : Cell := { cellDefaults with
  domain := ⟨(32375000000000001 / 100000000000000000 : ℚ), (32381250000000001 / 100000000000000000 : ℚ)⟩
  r := (4854298967857 / 6250000000000 : ℚ)
  w := (33947338103 / 20000000000 : ℚ)
  center := (32378125000000001 / 100000000000000000 : ℚ)
  supportValue := (3498078107304079 / 5000000000000000 : ℚ)
  supportSlope := (-5127275825049793 / 1000000000000000 : ℚ)
  oldCenter := (3498078107304079 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_804
  oldLo := (69900000000000007 / 100000000000000000 : ℚ)
  oldHi := (70000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1623, piece_1624]
}

def cell_8296 : Cell := { cellDefaults with
  domain := ⟨(32381250000000001 / 100000000000000000 : ℚ), (32387500000000001 / 100000000000000000 : ℚ)⟩
  r := (4854298967857 / 6250000000000 : ℚ)
  w := (33947338103 / 20000000000 : ℚ)
  center := (32384375000000001 / 100000000000000000 : ℚ)
  supportValue := (3496476338542011 / 5000000000000000 : ℚ)
  supportSlope := (-1280994040052441 / 250000000000000 : ℚ)
  oldCenter := (3496476338542011 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_804
  oldLo := (69900000000000007 / 100000000000000000 : ℚ)
  oldHi := (69950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1623]
}

def cell_8297 : Cell := { cellDefaults with
  domain := ⟨(32387500000000001 / 100000000000000000 : ℚ), (32393750000000001 / 100000000000000000 : ℚ)⟩
  r := (4854298967857 / 6250000000000 : ℚ)
  w := (33947338103 / 20000000000 : ℚ)
  center := (32390625000000001 / 100000000000000000 : ℚ)
  supportValue := (6989751324486181 / 10000000000000000 : ℚ)
  supportSlope := (-320034192144103 / 62500000000000 : ℚ)
  oldCenter := (6989751324486181 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_804
  oldLo := (69850000000000001 / 100000000000000000 : ℚ)
  oldHi := (69950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1622, piece_1623]
}

def cell_8298 : Cell := { cellDefaults with
  domain := ⟨(32393750000000001 / 100000000000000000 : ℚ), (32400000000000001 / 100000000000000000 : ℚ)⟩
  r := (4854298967857 / 6250000000000 : ℚ)
  w := (33947338103 / 20000000000 : ℚ)
  center := (32396875000000001 / 100000000000000000 : ℚ)
  supportValue := (6986552014002481 / 10000000000000000 : ℚ)
  supportSlope := (-5117053867760291 / 1000000000000000 : ℚ)
  oldCenter := (6986552014002481 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_804
  oldLo := (34900000000000003 / 50000000000000000 : ℚ)
  oldHi := (69900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1621, piece_1622]
}

def cell_8299 : Cell := { cellDefaults with
  domain := ⟨(32400000000000001 / 100000000000000000 : ℚ), (32406250000000001 / 100000000000000000 : ℚ)⟩
  r := (1940273265221 / 2500000000000 : ℚ)
  w := (8482170442379 / 5000000000000 : ℚ)
  center := (32403125000000001 / 100000000000000000 : ℚ)
  supportValue := (3498110394885799 / 5000000000000000 : ℚ)
  supportSlope := (-1280933887751523 / 250000000000000 : ℚ)
  oldCenter := (3498110394885799 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_805
  oldLo := (69900000000000007 / 100000000000000000 : ℚ)
  oldHi := (70000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1623, piece_1624]
}

theorem check_8250 : cell_8250.check = true := by
  decide +kernel

theorem check_8251 : cell_8251.check = true := by
  decide +kernel

theorem check_8252 : cell_8252.check = true := by
  decide +kernel

theorem check_8253 : cell_8253.check = true := by
  decide +kernel

theorem check_8254 : cell_8254.check = true := by
  decide +kernel

theorem check_8255 : cell_8255.check = true := by
  decide +kernel

theorem check_8256 : cell_8256.check = true := by
  decide +kernel

theorem check_8257 : cell_8257.check = true := by
  decide +kernel

theorem check_8258 : cell_8258.check = true := by
  decide +kernel

theorem check_8259 : cell_8259.check = true := by
  decide +kernel

theorem check_8260 : cell_8260.check = true := by
  decide +kernel

theorem check_8261 : cell_8261.check = true := by
  decide +kernel

theorem check_8262 : cell_8262.check = true := by
  decide +kernel

theorem check_8263 : cell_8263.check = true := by
  decide +kernel

theorem check_8264 : cell_8264.check = true := by
  decide +kernel

theorem check_8265 : cell_8265.check = true := by
  decide +kernel

theorem check_8266 : cell_8266.check = true := by
  decide +kernel

theorem check_8267 : cell_8267.check = true := by
  decide +kernel

theorem check_8268 : cell_8268.check = true := by
  decide +kernel

theorem check_8269 : cell_8269.check = true := by
  decide +kernel

theorem check_8270 : cell_8270.check = true := by
  decide +kernel

theorem check_8271 : cell_8271.check = true := by
  decide +kernel

theorem check_8272 : cell_8272.check = true := by
  decide +kernel

theorem check_8273 : cell_8273.check = true := by
  decide +kernel

theorem check_8274 : cell_8274.check = true := by
  decide +kernel

theorem check_8275 : cell_8275.check = true := by
  decide +kernel

theorem check_8276 : cell_8276.check = true := by
  decide +kernel

theorem check_8277 : cell_8277.check = true := by
  decide +kernel

theorem check_8278 : cell_8278.check = true := by
  decide +kernel

theorem check_8279 : cell_8279.check = true := by
  decide +kernel

theorem check_8280 : cell_8280.check = true := by
  decide +kernel

theorem check_8281 : cell_8281.check = true := by
  decide +kernel

theorem check_8282 : cell_8282.check = true := by
  decide +kernel

theorem check_8283 : cell_8283.check = true := by
  decide +kernel

theorem check_8284 : cell_8284.check = true := by
  decide +kernel

theorem check_8285 : cell_8285.check = true := by
  decide +kernel

theorem check_8286 : cell_8286.check = true := by
  decide +kernel

theorem check_8287 : cell_8287.check = true := by
  decide +kernel

theorem check_8288 : cell_8288.check = true := by
  decide +kernel

theorem check_8289 : cell_8289.check = true := by
  decide +kernel

theorem check_8290 : cell_8290.check = true := by
  decide +kernel

theorem check_8291 : cell_8291.check = true := by
  decide +kernel

theorem check_8292 : cell_8292.check = true := by
  decide +kernel

theorem check_8293 : cell_8293.check = true := by
  decide +kernel

theorem check_8294 : cell_8294.check = true := by
  decide +kernel

theorem check_8295 : cell_8295.check = true := by
  decide +kernel

theorem check_8296 : cell_8296.check = true := by
  decide +kernel

theorem check_8297 : cell_8297.check = true := by
  decide +kernel

theorem check_8298 : cell_8298.check = true := by
  decide +kernel

theorem check_8299 : cell_8299.check = true := by
  decide +kernel

def cells : List Cell := [cell_8250, cell_8251, cell_8252, cell_8253, cell_8254, cell_8255, cell_8256, cell_8257, cell_8258, cell_8259, cell_8260, cell_8261, cell_8262, cell_8263, cell_8264, cell_8265, cell_8266, cell_8267, cell_8268, cell_8269, cell_8270, cell_8271, cell_8272, cell_8273, cell_8274, cell_8275, cell_8276, cell_8277, cell_8278, cell_8279, cell_8280, cell_8281, cell_8282, cell_8283, cell_8284, cell_8285, cell_8286, cell_8287, cell_8288, cell_8289, cell_8290, cell_8291, cell_8292, cell_8293, cell_8294, cell_8295, cell_8296, cell_8297, cell_8298, cell_8299]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8250, check_8251, check_8252, check_8253, check_8254, check_8255, check_8256, check_8257, check_8258, check_8259, check_8260, check_8261, check_8262, check_8263, check_8264, check_8265, check_8266, check_8267, check_8268, check_8269, check_8270, check_8271, check_8272, check_8273, check_8274, check_8275, check_8276, check_8277, check_8278, check_8279, check_8280, check_8281, check_8282, check_8283, check_8284, check_8285, check_8286, check_8287, check_8288, check_8289, check_8290, check_8291, check_8292, check_8293, check_8294, check_8295, check_8296, check_8297, check_8298, check_8299, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0165

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0165
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0165
open AnalyticBounds.ExpressionCertificate

theorem linked_8250 : Linked cell_8250 pieces := by
  link_source cell_8250 with piece_798 using piece_798_mem, ⟨piece_1638_mem, piece_1639_mem⟩

theorem linked_8251 : Linked cell_8251 pieces := by
  link_source cell_8251 with piece_799 using piece_799_mem, ⟨piece_1641_mem, piece_1642_mem⟩

theorem linked_8252 : Linked cell_8252 pieces := by
  link_source cell_8252 with piece_799 using piece_799_mem, ⟨piece_1639_mem, ⟨piece_1640_mem, piece_1641_mem⟩⟩

theorem linked_8253 : Linked cell_8253 pieces := by
  link_source cell_8253 with piece_799 using piece_799_mem, piece_1639_mem

theorem linked_8254 : Linked cell_8254 pieces := by
  link_source cell_8254 with piece_799 using piece_799_mem, ⟨piece_1638_mem, piece_1639_mem⟩

theorem linked_8255 : Linked cell_8255 pieces := by
  link_source cell_8255 with piece_799 using piece_799_mem, ⟨piece_1637_mem, piece_1638_mem⟩

theorem linked_8256 : Linked cell_8256 pieces := by
  link_source cell_8256 with piece_799 using piece_799_mem, piece_1637_mem

theorem linked_8257 : Linked cell_8257 pieces := by
  link_source cell_8257 with piece_799 using piece_799_mem, ⟨piece_1636_mem, piece_1637_mem⟩

theorem linked_8258 : Linked cell_8258 pieces := by
  link_source cell_8258 with piece_799 using piece_799_mem, ⟨piece_1635_mem, piece_1636_mem⟩

theorem linked_8259 : Linked cell_8259 pieces := by
  link_source cell_8259 with piece_800 using piece_800_mem, ⟨piece_1637_mem, piece_1638_mem⟩

theorem linked_8260 : Linked cell_8260 pieces := by
  link_source cell_8260 with piece_800 using piece_800_mem, piece_1637_mem

theorem linked_8261 : Linked cell_8261 pieces := by
  link_source cell_8261 with piece_800 using piece_800_mem, ⟨piece_1636_mem, piece_1637_mem⟩

theorem linked_8262 : Linked cell_8262 pieces := by
  link_source cell_8262 with piece_800 using piece_800_mem, ⟨piece_1635_mem, piece_1636_mem⟩

theorem linked_8263 : Linked cell_8263 pieces := by
  link_source cell_8263 with piece_800 using piece_800_mem, piece_1635_mem

theorem linked_8264 : Linked cell_8264 pieces := by
  link_source cell_8264 with piece_800 using piece_800_mem, ⟨piece_1634_mem, piece_1635_mem⟩

theorem linked_8265 : Linked cell_8265 pieces := by
  link_source cell_8265 with piece_800 using piece_800_mem, ⟨piece_1633_mem, piece_1634_mem⟩

theorem linked_8266 : Linked cell_8266 pieces := by
  link_source cell_8266 with piece_800 using piece_800_mem, piece_1633_mem

theorem linked_8267 : Linked cell_8267 pieces := by
  link_source cell_8267 with piece_801 using piece_801_mem, piece_1635_mem

theorem linked_8268 : Linked cell_8268 pieces := by
  link_source cell_8268 with piece_801 using piece_801_mem, ⟨piece_1634_mem, piece_1635_mem⟩

theorem linked_8269 : Linked cell_8269 pieces := by
  link_source cell_8269 with piece_801 using piece_801_mem, ⟨piece_1633_mem, piece_1634_mem⟩

theorem linked_8270 : Linked cell_8270 pieces := by
  link_source cell_8270 with piece_801 using piece_801_mem, piece_1633_mem

theorem linked_8271 : Linked cell_8271 pieces := by
  link_source cell_8271 with piece_801 using piece_801_mem, ⟨piece_1632_mem, piece_1633_mem⟩

theorem linked_8272 : Linked cell_8272 pieces := by
  link_source cell_8272 with piece_801 using piece_801_mem, ⟨piece_1631_mem, piece_1632_mem⟩

theorem linked_8273 : Linked cell_8273 pieces := by
  link_source cell_8273 with piece_801 using piece_801_mem, piece_1631_mem

theorem linked_8274 : Linked cell_8274 pieces := by
  link_source cell_8274 with piece_801 using piece_801_mem, ⟨piece_1630_mem, piece_1631_mem⟩

theorem linked_8275 : Linked cell_8275 pieces := by
  link_source cell_8275 with piece_802 using piece_802_mem, ⟨piece_1632_mem, piece_1633_mem⟩

theorem linked_8276 : Linked cell_8276 pieces := by
  link_source cell_8276 with piece_802 using piece_802_mem, ⟨piece_1631_mem, piece_1632_mem⟩

theorem linked_8277 : Linked cell_8277 pieces := by
  link_source cell_8277 with piece_802 using piece_802_mem, piece_1631_mem

theorem linked_8278 : Linked cell_8278 pieces := by
  link_source cell_8278 with piece_802 using piece_802_mem, ⟨piece_1630_mem, piece_1631_mem⟩

theorem linked_8279 : Linked cell_8279 pieces := by
  link_source cell_8279 with piece_802 using piece_802_mem, piece_1630_mem

theorem linked_8280 : Linked cell_8280 pieces := by
  link_source cell_8280 with piece_802 using piece_802_mem, ⟨piece_1629_mem, piece_1630_mem⟩

theorem linked_8281 : Linked cell_8281 pieces := by
  link_source cell_8281 with piece_802 using piece_802_mem, ⟨piece_1628_mem, piece_1629_mem⟩

theorem linked_8282 : Linked cell_8282 pieces := by
  link_source cell_8282 with piece_802 using piece_802_mem, ⟨piece_1627_mem, piece_1628_mem⟩

theorem linked_8283 : Linked cell_8283 pieces := by
  link_source cell_8283 with piece_803 using piece_803_mem, piece_1630_mem

theorem linked_8284 : Linked cell_8284 pieces := by
  link_source cell_8284 with piece_803 using piece_803_mem, ⟨piece_1629_mem, piece_1630_mem⟩

theorem linked_8285 : Linked cell_8285 pieces := by
  link_source cell_8285 with piece_803 using piece_803_mem, ⟨piece_1628_mem, piece_1629_mem⟩

theorem linked_8286 : Linked cell_8286 pieces := by
  link_source cell_8286 with piece_803 using piece_803_mem, ⟨piece_1627_mem, piece_1628_mem⟩

theorem linked_8287 : Linked cell_8287 pieces := by
  link_source cell_8287 with piece_803 using piece_803_mem, ⟨piece_1626_mem, piece_1627_mem⟩

theorem linked_8288 : Linked cell_8288 pieces := by
  link_source cell_8288 with piece_803 using piece_803_mem, ⟨piece_1625_mem, piece_1626_mem⟩

theorem linked_8289 : Linked cell_8289 pieces := by
  link_source cell_8289 with piece_803 using piece_803_mem, piece_1625_mem

theorem linked_8290 : Linked cell_8290 pieces := by
  link_source cell_8290 with piece_803 using piece_803_mem, ⟨piece_1624_mem, piece_1625_mem⟩

theorem linked_8291 : Linked cell_8291 pieces := by
  link_source cell_8291 with piece_804 using piece_804_mem, ⟨piece_1626_mem, piece_1627_mem⟩

theorem linked_8292 : Linked cell_8292 pieces := by
  link_source cell_8292 with piece_804 using piece_804_mem, ⟨piece_1625_mem, piece_1626_mem⟩

theorem linked_8293 : Linked cell_8293 pieces := by
  link_source cell_8293 with piece_804 using piece_804_mem, piece_1625_mem

theorem linked_8294 : Linked cell_8294 pieces := by
  link_source cell_8294 with piece_804 using piece_804_mem, ⟨piece_1624_mem, piece_1625_mem⟩

theorem linked_8295 : Linked cell_8295 pieces := by
  link_source cell_8295 with piece_804 using piece_804_mem, ⟨piece_1623_mem, piece_1624_mem⟩

theorem linked_8296 : Linked cell_8296 pieces := by
  link_source cell_8296 with piece_804 using piece_804_mem, piece_1623_mem

theorem linked_8297 : Linked cell_8297 pieces := by
  link_source cell_8297 with piece_804 using piece_804_mem, ⟨piece_1622_mem, piece_1623_mem⟩

theorem linked_8298 : Linked cell_8298 pieces := by
  link_source cell_8298 with piece_804 using piece_804_mem, ⟨piece_1621_mem, piece_1622_mem⟩

theorem linked_8299 : Linked cell_8299 pieces := by
  link_source cell_8299 with piece_805 using piece_805_mem, ⟨piece_1623_mem, piece_1624_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0165.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0165.cells,List.forall_mem_cons]
  exact ⟨linked_8250, linked_8251, linked_8252, linked_8253, linked_8254, linked_8255, linked_8256, linked_8257, linked_8258, linked_8259, linked_8260, linked_8261, linked_8262, linked_8263, linked_8264, linked_8265, linked_8266, linked_8267, linked_8268, linked_8269, linked_8270, linked_8271, linked_8272, linked_8273, linked_8274, linked_8275, linked_8276, linked_8277, linked_8278, linked_8279, linked_8280, linked_8281, linked_8282, linked_8283, linked_8284, linked_8285, linked_8286, linked_8287, linked_8288, linked_8289, linked_8290, linked_8291, linked_8292, linked_8293, linked_8294, linked_8295, linked_8296, linked_8297, linked_8298, linked_8299, by simp⟩

theorem covered : covers (32093750000000001 / 100000000000000000 : ℚ) (32406250000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0165.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0165
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0166
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(32406250000000001 / 100000000000000000 : ℚ), (32412500000000001 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (77495526923889 / 100000000000000 : ℚ)
  w := (16945744218997 / 10000000000000 : ℚ)
  center := (32409375000000001 / 100000000000000000 : ℚ)
  supportValue := (6993019462129579 / 10000000000000000 : ℚ)
  supportSlope := (-102409088133939 / 20000000000000 : ℚ)
  oldCenter := (6993019462129579 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_806
  oldLo := (69750000000000001 / 100000000000000000 : ℚ)
  oldHi := (34900000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1621, piece_1622]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8300 : Cell := { cellDefaults with
  r := (1940273265221 / 2500000000000 : ℚ)
  w := (8482170442379 / 5000000000000 : ℚ)
  newCoefficients := coefficients_805
  oldLo := (69900000000000007 / 100000000000000000 : ℚ)
  oldHi := (69950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1623]
}

def cell_8301 : Cell := { cellDefaults with
  domain := ⟨(32412500000000001 / 100000000000000000 : ℚ), (32418750000000001 / 100000000000000000 : ℚ)⟩
  r := (1940273265221 / 2500000000000 : ℚ)
  w := (8482170442379 / 5000000000000 : ℚ)
  center := (32415625000000001 / 100000000000000000 : ℚ)
  supportValue := (436863769628573 / 625000000000000 : ℚ)
  supportSlope := (-2558512147063041 / 500000000000000 : ℚ)
  oldCenter := (436863769628573 / 625000000000000 : ℚ)
  newCoefficients := coefficients_805
  oldLo := (69850000000000001 / 100000000000000000 : ℚ)
  oldHi := (69950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1622, piece_1623]
}

def cell_8302 : Cell := { cellDefaults with
  domain := ⟨(32418750000000001 / 100000000000000000 : ℚ), (32425000000000001 / 100000000000000000 : ℚ)⟩
  r := (1940273265221 / 2500000000000 : ℚ)
  w := (8482170442379 / 5000000000000 : ℚ)
  center := (32421875000000001 / 100000000000000000 : ℚ)
  supportValue := (6986623196219849 / 10000000000000000 : ℚ)
  supportSlope := (-79899110485393 / 15625000000000 : ℚ)
  oldCenter := (6986623196219849 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_805
  oldLo := (69850000000000001 / 100000000000000000 : ℚ)
  oldHi := (69900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1622]
}

def cell_8303 : Cell := { cellDefaults with
  domain := ⟨(32425000000000001 / 100000000000000000 : ℚ), (32431250000000001 / 100000000000000000 : ℚ)⟩
  r := (1940273265221 / 2500000000000 : ℚ)
  w := (8482170442379 / 5000000000000 : ℚ)
  center := (32428125000000001 / 100000000000000000 : ℚ)
  supportValue := (3491714119390827 / 5000000000000000 : ℚ)
  supportSlope := (-5110321397648221 / 1000000000000000 : ℚ)
  oldCenter := (3491714119390827 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_805
  oldLo := (34900000000000003 / 50000000000000000 : ℚ)
  oldHi := (69900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1621, piece_1622]
}

def cell_8304 : Cell := { cellDefaults with
  domain := ⟨(32431250000000001 / 100000000000000000 : ℚ), (32437500000000001 / 100000000000000000 : ℚ)⟩
  r := (1940273265221 / 2500000000000 : ℚ)
  w := (8482170442379 / 5000000000000 : ℚ)
  center := (32434375000000001 / 100000000000000000 : ℚ)
  supportValue := (174505885907941 / 250000000000000 : ℚ)
  supportSlope := (-10213681171386213 / 2000000000000000 : ℚ)
  oldCenter := (174505885907941 / 250000000000000 : ℚ)
  newCoefficients := coefficients_805
  oldHi := (69850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1620, piece_1621]
}

def cell_8305 : Cell := { cellDefaults with
  domain := ⟨(32437500000000001 / 100000000000000000 : ℚ), (32443750000000001 / 100000000000000000 : ℚ)⟩
  r := (1940273265221 / 2500000000000 : ℚ)
  w := (8482170442379 / 5000000000000 : ℚ)
  center := (32440625000000001 / 100000000000000000 : ℚ)
  supportValue := (3488522332228567 / 5000000000000000 : ℚ)
  supportSlope := (-1275856767623651 / 250000000000000 : ℚ)
  oldCenter := (3488522332228567 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_805
  oldPieces := [piece_1620]
}

def cell_8306 : Cell := { cellDefaults with
  domain := ⟨(32443750000000001 / 100000000000000000 : ℚ), (32450000000000001 / 100000000000000000 : ℚ)⟩
  r := (1940273265221 / 2500000000000 : ℚ)
  w := (8482170442379 / 5000000000000 : ℚ)
  center := (32446875000000001 / 100000000000000000 : ℚ)
  supportValue := (871732008291399 / 1250000000000000 : ℚ)
  supportSlope := (-25500750383944393 / 5000000000000000 : ℚ)
  oldCenter := (871732008291399 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_805
  oldLo := (34850000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1619, piece_1620]
}

def cell_8307 : Cell := { cellDefaults with
  domain := ⟨(32450000000000001 / 100000000000000000 : ℚ), (32456250000000001 / 100000000000000000 : ℚ)⟩
  r := (15510635802261 / 20000000000000 : ℚ)
  w := (211937902161 / 125000000000 : ℚ)
  center := (32453125000000001 / 100000000000000000 : ℚ)
  supportValue := (436468534002013 / 625000000000000 : ℚ)
  supportSlope := (-638349952316819 / 125000000000000 : ℚ)
  oldCenter := (436468534002013 / 625000000000000 : ℚ)
  oldLo := (34900000000000003 / 50000000000000000 : ℚ)
  oldHi := (69900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1621, piece_1622]
}

def cell_8308 : Cell := { cellDefaults with
  domain := ⟨(32456250000000001 / 100000000000000000 : ℚ), (32462500000000001 / 100000000000000000 : ℚ)⟩
  r := (15510635802261 / 20000000000000 : ℚ)
  w := (211937902161 / 125000000000 : ℚ)
  center := (32459375000000001 / 100000000000000000 : ℚ)
  supportValue := (3490152966892791 / 5000000000000000 : ℚ)
  supportSlope := (-5103326933806329 / 1000000000000000 : ℚ)
  oldCenter := (3490152966892791 / 5000000000000000 : ℚ)
  oldHi := (69850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1620, piece_1621]
}

def cell_8309 : Cell := { cellDefaults with
  domain := ⟨(32462500000000001 / 100000000000000000 : ℚ), (32468750000000001 / 100000000000000000 : ℚ)⟩
  r := (15510635802261 / 20000000000000 : ℚ)
  w := (211937902161 / 125000000000 : ℚ)
  center := (32465625000000001 / 100000000000000000 : ℚ)
  supportValue := (55816938842481 / 80000000000000 : ℚ)
  supportSlope := (-318745773632223 / 62500000000000 : ℚ)
  oldCenter := (55816938842481 / 80000000000000 : ℚ)
  oldPieces := [piece_1620]
}

def cell_8310 : Cell := { cellDefaults with
  domain := ⟨(32468750000000001 / 100000000000000000 : ℚ), (32475000000000001 / 100000000000000000 : ℚ)⟩
  r := (15510635802261 / 20000000000000 : ℚ)
  w := (211937902161 / 125000000000 : ℚ)
  center := (32471875000000001 / 100000000000000000 : ℚ)
  supportValue := (871741368186673 / 1250000000000000 : ℚ)
  supportSlope := (-1019330603103441 / 200000000000000 : ℚ)
  oldCenter := (871741368186673 / 1250000000000000 : ℚ)
  oldLo := (34850000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1619, piece_1620]
}

def cell_8311 : Cell := { cellDefaults with
  domain := ⟨(32475000000000001 / 100000000000000000 : ℚ), (32481250000000001 / 100000000000000000 : ℚ)⟩
  r := (15510635802261 / 20000000000000 : ℚ)
  w := (211937902161 / 125000000000 : ℚ)
  center := (32478125000000001 / 100000000000000000 : ℚ)
  supportValue := (1394149327013579 / 2000000000000000 : ℚ)
  supportSlope := (-5093185906723363 / 1000000000000000 : ℚ)
  oldCenter := (1394149327013579 / 2000000000000000 : ℚ)
  oldLo := (69650000000000001 / 100000000000000000 : ℚ)
  oldHi := (69750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1618, piece_1619]
}

def cell_8312 : Cell := { cellDefaults with
  domain := ⟨(32481250000000001 / 100000000000000000 : ℚ), (32487500000000001 / 100000000000000000 : ℚ)⟩
  r := (15510635802261 / 20000000000000 : ℚ)
  w := (211937902161 / 125000000000 : ℚ)
  center := (32484375000000001 / 100000000000000000 : ℚ)
  supportValue := (1741891098138381 / 2500000000000000 : ℚ)
  supportSlope := (-1017972634279829 / 200000000000000 : ℚ)
  oldCenter := (1741891098138381 / 2500000000000000 : ℚ)
  oldLo := (69650000000000001 / 100000000000000000 : ℚ)
  oldHi := (34850000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1618]
}

def cell_8313 : Cell := { cellDefaults with
  domain := ⟨(32487500000000001 / 100000000000000000 : ℚ), (32493750000000001 / 100000000000000000 : ℚ)⟩
  r := (15510635802261 / 20000000000000 : ℚ)
  w := (211937902161 / 125000000000 : ℚ)
  center := (32490625000000001 / 100000000000000000 : ℚ)
  supportValue := (6964384315276069 / 10000000000000000 : ℚ)
  supportSlope := (-5086524457240671 / 1000000000000000 : ℚ)
  oldCenter := (6964384315276069 / 10000000000000000 : ℚ)
  oldLo := (34800000000000003 / 50000000000000000 : ℚ)
  oldHi := (34850000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1617, piece_1618]
}

def cell_8314 : Cell := { cellDefaults with
  domain := ⟨(32493750000000001 / 100000000000000000 : ℚ), (32500000000000001 / 100000000000000000 : ℚ)⟩
  r := (15510635802261 / 20000000000000 : ℚ)
  w := (211937902161 / 125000000000 : ℚ)
  center := (32496875000000001 / 100000000000000000 : ℚ)
  supportValue := (6961206291552741 / 10000000000000000 : ℚ)
  supportSlope := (-2541531406745179 / 500000000000000 : ℚ)
  oldCenter := (6961206291552741 / 10000000000000000 : ℚ)
  oldLo := (6958100558659217 / 10000000000000000 : ℚ)
  oldHi := (69650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1616, piece_1617]
}

def cell_8315 : Cell := { cellDefaults with
  domain := ⟨(32500000000000001 / 100000000000000000 : ℚ), (32506250000000001 / 100000000000000000 : ℚ)⟩
  center := (32503125000000001 / 100000000000000000 : ℚ)
  supportValue := (3485409103263929 / 5000000000000000 : ℚ)
  supportSlope := (-5089681288271919 / 1000000000000000 : ℚ)
  oldCenter := (3485409103263929 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_807
  oldLo := (69650000000000001 / 100000000000000000 : ℚ)
  oldHi := (69750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1618, piece_1619]
}

def cell_8316 : Cell := { cellDefaults with
  domain := ⟨(32506250000000001 / 100000000000000000 : ℚ), (32512500000000001 / 100000000000000000 : ℚ)⟩
  center := (32509375000000001 / 100000000000000000 : ℚ)
  supportValue := (1393527630347911 / 2000000000000000 : ℚ)
  supportSlope := (-5086377731192471 / 1000000000000000 : ℚ)
  oldCenter := (1393527630347911 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_807
  oldLo := (69650000000000001 / 100000000000000000 : ℚ)
  oldHi := (34850000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1618]
}

def cell_8317 : Cell := { cellDefaults with
  domain := ⟨(32512500000000001 / 100000000000000000 : ℚ), (32518750000000001 / 100000000000000000 : ℚ)⟩
  center := (32515625000000001 / 100000000000000000 : ℚ)
  supportValue := (870557532136111 / 1250000000000000 : ℚ)
  supportSlope := (-2541518253758923 / 500000000000000 : ℚ)
  oldCenter := (870557532136111 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_807
  oldLo := (34800000000000003 / 50000000000000000 : ℚ)
  oldHi := (34850000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1617, piece_1618]
}

def cell_8318 : Cell := { cellDefaults with
  domain := ⟨(32518750000000001 / 100000000000000000 : ℚ), (32525000000000001 / 100000000000000000 : ℚ)⟩
  center := (32521875000000001 / 100000000000000000 : ℚ)
  supportValue := (6961284403705621 / 10000000000000000 : ℚ)
  supportSlope := (-1015916602173661 / 200000000000000 : ℚ)
  oldCenter := (6961284403705621 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_807
  oldLo := (6958100558659217 / 10000000000000000 : ℚ)
  oldHi := (69650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1616, piece_1617]
}

def cell_8319 : Cell := { cellDefaults with
  domain := ⟨(32525000000000001 / 100000000000000000 : ℚ), (3252513966480447 / 10000000000000000 : ℚ)⟩
  center := (65050139664804471 / 200000000000000000 : ℚ)
  supportValue := (6959660450774603 / 10000000000000000 : ℚ)
  supportSlope := (-5078139206171357 / 1000000000000000 : ℚ)
  oldCenter := (6959660450774603 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_807
  oldLo := (6958100558659217 / 10000000000000000 : ℚ)
  oldHi := (34800000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1616]
}

def cell_8320 : Cell := { cellDefaults with
  domain := ⟨(3252513966480447 / 10000000000000000 : ℚ), (130125418994413411 / 400000000000000000 : ℚ)⟩
  center := (260225977653631291 / 800000000000000000 : ℚ)
  supportValue := (1391609724374861 / 2000000000000000 : ℚ)
  supportSlope := (-5076284797370617 / 1000000000000000 : ℚ)
  oldCenter := (1391609724374861 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_808
  oldLo := (69550000000000001 / 100000000000000000 : ℚ)
  oldHi := (34800000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1615, piece_1616]
}

def cell_8321 : Cell := { cellDefaults with
  domain := ⟨(130125418994413411 / 400000000000000000 : ℚ), (65075139664804471 / 200000000000000000 : ℚ)⟩
  center := (260275698324022353 / 800000000000000000 : ℚ)
  supportValue := (1390978956941269 / 2000000000000000 : ℚ)
  supportSlope := (-317056710083641 / 62500000000000 : ℚ)
  oldCenter := (1390978956941269 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_808
  oldLo := (34750000000000003 / 50000000000000000 : ℚ)
  oldHi := (6958100558659217 / 10000000000000000 : ℚ)
  oldPieces := [piece_1614, piece_1615]
}

def cell_8322 : Cell := { cellDefaults with
  domain := ⟨(65075139664804471 / 200000000000000000 : ℚ), (130175139664804473 / 400000000000000000 : ℚ)⟩
  center := (52065083798882683 / 160000000000000000 : ℚ)
  supportValue := (3475871460365453 / 5000000000000000 : ℚ)
  supportSlope := (-5069500188532293 / 1000000000000000 : ℚ)
  oldCenter := (3475871460365453 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_808
  oldLo := (34750000000000003 / 50000000000000000 : ℚ)
  oldHi := (69550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1614]
}

def cell_8323 : Cell := { cellDefaults with
  domain := ⟨(130175139664804473 / 400000000000000000 : ℚ), (32550000000000001 / 100000000000000000 : ℚ)⟩
  center := (260375139664804477 / 800000000000000000 : ℚ)
  supportValue := (347429658945851 / 500000000000000 : ℚ)
  supportSlope := (-5066320119718211 / 1000000000000000 : ℚ)
  oldCenter := (347429658945851 / 500000000000000 : ℚ)
  newCoefficients := coefficients_808
  oldLo := (69450000000000001 / 100000000000000000 : ℚ)
  oldHi := (69550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1613, piece_1614]
}

def cell_8324 : Cell := { cellDefaults with
  domain := ⟨(32550000000000001 / 100000000000000000 : ℚ), (32556250000000001 / 100000000000000000 : ℚ)⟩
  r := (77437974947191 / 100000000000000 : ℚ)
  w := (16936475609627 / 10000000000000 : ℚ)
  center := (32553125000000001 / 100000000000000000 : ℚ)
  supportValue := (6958185956912103 / 10000000000000000 : ℚ)
  supportSlope := (-2536440015047603 / 500000000000000 : ℚ)
  oldCenter := (6958185956912103 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_809
  oldLo := (69550000000000001 / 100000000000000000 : ℚ)
  oldHi := (34800000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1615, piece_1616]
}

def cell_8325 : Cell := { cellDefaults with
  domain := ⟨(32556250000000001 / 100000000000000000 : ℚ), (32562500000000001 / 100000000000000000 : ℚ)⟩
  r := (77437974947191 / 100000000000000 : ℚ)
  w := (16936475609627 / 10000000000000 : ℚ)
  center := (32559375000000001 / 100000000000000000 : ℚ)
  supportValue := (434688533943487 / 625000000000000 : ℚ)
  supportSlope := (-5069472849207557 / 1000000000000000 : ℚ)
  oldCenter := (434688533943487 / 625000000000000 : ℚ)
  newCoefficients := coefficients_809
  oldLo := (34750000000000003 / 50000000000000000 : ℚ)
  oldHi := (6958100558659217 / 10000000000000000 : ℚ)
  oldPieces := [piece_1614, piece_1615]
}

def cell_8326 : Cell := { cellDefaults with
  domain := ⟨(32562500000000001 / 100000000000000000 : ℚ), (32568750000000001 / 100000000000000000 : ℚ)⟩
  r := (77437974947191 / 100000000000000 : ℚ)
  w := (16936475609627 / 10000000000000 : ℚ)
  center := (32565625000000001 / 100000000000000000 : ℚ)
  supportValue := (868981139045411 / 1250000000000000 : ℚ)
  supportSlope := (-506607197766229 / 100000000000000 : ℚ)
  oldCenter := (868981139045411 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_809
  oldLo := (34750000000000003 / 50000000000000000 : ℚ)
  oldHi := (69550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1614]
}

def cell_8327 : Cell := { cellDefaults with
  domain := ⟨(32568750000000001 / 100000000000000000 : ℚ), (32575000000000001 / 100000000000000000 : ℚ)⟩
  r := (77437974947191 / 100000000000000 : ℚ)
  w := (16936475609627 / 10000000000000 : ℚ)
  center := (32571875000000001 / 100000000000000000 : ℚ)
  supportValue := (6948683830681827 / 10000000000000000 : ℚ)
  supportSlope := (-1265716427668373 / 250000000000000 : ℚ)
  oldCenter := (6948683830681827 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_809
  oldLo := (69450000000000001 / 100000000000000000 : ℚ)
  oldHi := (69550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1613, piece_1614]
}

def cell_8328 : Cell := { cellDefaults with
  domain := ⟨(32575000000000001 / 100000000000000000 : ℚ), (32581250000000001 / 100000000000000000 : ℚ)⟩
  r := (77437974947191 / 100000000000000 : ℚ)
  w := (16936475609627 / 10000000000000 : ℚ)
  center := (32578125000000001 / 100000000000000000 : ℚ)
  supportValue := (3472760324690261 / 5000000000000000 : ℚ)
  supportSlope := (-10118859860710927 / 2000000000000000 : ℚ)
  oldCenter := (3472760324690261 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_809
  oldLo := (34700000000000003 / 50000000000000000 : ℚ)
  oldHi := (34750000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1612, piece_1613]
}

def cell_8329 : Cell := { cellDefaults with
  domain := ⟨(32581250000000001 / 100000000000000000 : ℚ), (32587500000000001 / 100000000000000000 : ℚ)⟩
  r := (77437974947191 / 100000000000000 : ℚ)
  w := (16936475609627 / 10000000000000 : ℚ)
  center := (32584375000000001 / 100000000000000000 : ℚ)
  supportValue := (1388471898660627 / 2000000000000000 : ℚ)
  supportSlope := (-5056110345993403 / 1000000000000000 : ℚ)
  oldCenter := (1388471898660627 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_809
  oldLo := (34700000000000003 / 50000000000000000 : ℚ)
  oldHi := (69450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1612]
}

def cell_8330 : Cell := { cellDefaults with
  domain := ⟨(32587500000000001 / 100000000000000000 : ℚ), (32593750000000001 / 100000000000000000 : ℚ)⟩
  r := (77437974947191 / 100000000000000 : ℚ)
  w := (16936475609627 / 10000000000000 : ℚ)
  center := (32590625000000001 / 100000000000000000 : ℚ)
  supportValue := (693920048289709 / 1000000000000000 : ℚ)
  supportSlope := (-5052835145956891 / 1000000000000000 : ℚ)
  oldCenter := (693920048289709 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_809
  oldLo := (69350000000000001 / 100000000000000000 : ℚ)
  oldHi := (69450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1611, piece_1612]
}

def cell_8331 : Cell := { cellDefaults with
  domain := ⟨(32593750000000001 / 100000000000000000 : ℚ), (32600000000000001 / 100000000000000000 : ℚ)⟩
  r := (77437974947191 / 100000000000000 : ℚ)
  w := (16936475609627 / 10000000000000 : ℚ)
  center := (32596875000000001 / 100000000000000000 : ℚ)
  supportValue := (6936043521134289 / 10000000000000000 : ℚ)
  supportSlope := (-5049404739185803 / 1000000000000000 : ℚ)
  oldCenter := (6936043521134289 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_809
  oldLo := (34650000000000003 / 50000000000000000 : ℚ)
  oldHi := (34700000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1610, piece_1611]
}

def cell_8332 : Cell := { cellDefaults with
  domain := ⟨(32600000000000001 / 100000000000000000 : ℚ), (32606250000000001 / 100000000000000000 : ℚ)⟩
  r := (19345130761139 / 25000000000000 : ℚ)
  w := (264487934929 / 156250000000 : ℚ)
  center := (32603125000000001 / 100000000000000000 : ℚ)
  supportValue := (1389119774543459 / 2000000000000000 : ℚ)
  supportSlope := (-5055959357267881 / 1000000000000000 : ℚ)
  oldCenter := (1389119774543459 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_810
  oldLo := (34700000000000003 / 50000000000000000 : ℚ)
  oldHi := (34750000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1612, piece_1613]
}

def cell_8333 : Cell := { cellDefaults with
  domain := ⟨(32606250000000001 / 100000000000000000 : ℚ), (32612500000000001 / 100000000000000000 : ℚ)⟩
  r := (19345130761139 / 25000000000000 : ℚ)
  w := (264487934929 / 156250000000 : ℚ)
  center := (32609375000000001 / 100000000000000000 : ℚ)
  supportValue := (3471219941534129 / 5000000000000000 : ℚ)
  supportSlope := (-1010532006105791 / 200000000000000 : ℚ)
  oldCenter := (3471219941534129 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_810
  oldLo := (34700000000000003 / 50000000000000000 : ℚ)
  oldHi := (69450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1612]
}

def cell_8334 : Cell := { cellDefaults with
  domain := ⟨(32612500000000001 / 100000000000000000 : ℚ), (32618750000000001 / 100000000000000000 : ℚ)⟩
  r := (19345130761139 / 25000000000000 : ℚ)
  w := (264487934929 / 156250000000 : ℚ)
  center := (32615625000000001 / 100000000000000000 : ℚ)
  supportValue := (1387856606790659 / 2000000000000000 : ℚ)
  supportSlope := (-2524690682690789 / 500000000000000 : ℚ)
  oldCenter := (1387856606790659 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_810
  oldLo := (69350000000000001 / 100000000000000000 : ℚ)
  oldHi := (69450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1611, piece_1612]
}

def cell_8335 : Cell := { cellDefaults with
  domain := ⟨(32618750000000001 / 100000000000000000 : ℚ), (32625000000000001 / 100000000000000000 : ℚ)⟩
  r := (19345130761139 / 25000000000000 : ℚ)
  w := (264487934929 / 156250000000 : ℚ)
  center := (32621875000000001 / 100000000000000000 : ℚ)
  supportValue := (6936128220519773 / 10000000000000000 : ℚ)
  supportSlope := (-126148979069729 / 25000000000000 : ℚ)
  oldCenter := (6936128220519773 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_810
  oldLo := (34650000000000003 / 50000000000000000 : ℚ)
  oldHi := (34700000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1610, piece_1611]
}

def cell_8336 : Cell := { cellDefaults with
  domain := ⟨(32625000000000001 / 100000000000000000 : ℚ), (32631250000000001 / 100000000000000000 : ℚ)⟩
  r := (19345130761139 / 25000000000000 : ℚ)
  w := (264487934929 / 156250000000 : ℚ)
  center := (32628125000000001 / 100000000000000000 : ℚ)
  supportValue := (6932975478815239 / 10000000000000000 : ℚ)
  supportSlope := (-2521372520822851 / 500000000000000 : ℚ)
  oldCenter := (6932975478815239 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_810
  oldLo := (34650000000000003 / 50000000000000000 : ℚ)
  oldHi := (69350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1610]
}

def cell_8337 : Cell := { cellDefaults with
  domain := ⟨(32631250000000001 / 100000000000000000 : ℚ), (32637500000000001 / 100000000000000000 : ℚ)⟩
  r := (19345130761139 / 25000000000000 : ℚ)
  w := (264487934929 / 156250000000 : ℚ)
  center := (32634375000000001 / 100000000000000000 : ℚ)
  supportValue := (3464912437238613 / 5000000000000000 : ℚ)
  supportSlope := (-2519696602108823 / 500000000000000 : ℚ)
  oldCenter := (3464912437238613 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_810
  oldLo := (277 / 400 : ℚ)
  oldHi := (69350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1609, piece_1610]
}

def cell_8338 : Cell := { cellDefaults with
  domain := ⟨(32637500000000001 / 100000000000000000 : ℚ), (32643750000000001 / 100000000000000000 : ℚ)⟩
  r := (19345130761139 / 25000000000000 : ℚ)
  w := (264487934929 / 156250000000 : ℚ)
  center := (32640625000000001 / 100000000000000000 : ℚ)
  supportValue := (6926676251561439 / 10000000000000000 : ℚ)
  supportSlope := (-1007198198969661 / 200000000000000 : ℚ)
  oldCenter := (6926676251561439 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_810
  oldLo := (277 / 400 : ℚ)
  oldHi := (34650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1609]
}

def cell_8339 : Cell := { cellDefaults with
  domain := ⟨(32643750000000001 / 100000000000000000 : ℚ), (32650000000000001 / 100000000000000000 : ℚ)⟩
  r := (19345130761139 / 25000000000000 : ℚ)
  w := (264487934929 / 156250000000 : ℚ)
  center := (32646875000000001 / 100000000000000000 : ℚ)
  supportValue := (3461764873565101 / 5000000000000000 : ℚ)
  supportSlope := (-125820887158401 / 25000000000000 : ℚ)
  oldCenter := (3461764873565101 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_810
  oldLo := (34600000000000003 / 50000000000000000 : ℚ)
  oldHi := (34650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1608, piece_1609]
}

def cell_8340 : Cell := { cellDefaults with
  domain := ⟨(32650000000000001 / 100000000000000000 : ℚ), (32656250000000001 / 100000000000000000 : ℚ)⟩
  r := (77323169803399 / 100000000000000 : ℚ)
  w := (16917999753861 / 10000000000000 : ℚ)
  center := (32653125000000001 / 100000000000000000 : ℚ)
  supportValue := (6933057259520167 / 10000000000000000 : ℚ)
  supportSlope := (-6299129128573 / 1250000000000 : ℚ)
  oldCenter := (6933057259520167 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_811
  oldLo := (34650000000000003 / 50000000000000000 : ℚ)
  oldHi := (69350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1610]
}

def cell_8341 : Cell := { cellDefaults with
  domain := ⟨(32656250000000001 / 100000000000000000 : ℚ), (32662500000000001 / 100000000000000000 : ℚ)⟩
  r := (77323169803399 / 100000000000000 : ℚ)
  w := (16917999753861 / 10000000000000 : ℚ)
  center := (32659375000000001 / 100000000000000000 : ℚ)
  supportValue := (6929908811253523 / 10000000000000000 : ℚ)
  supportSlope := (-2517973897390391 / 500000000000000 : ℚ)
  oldCenter := (6929908811253523 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_811
  oldLo := (277 / 400 : ℚ)
  oldHi := (69350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1609, piece_1610]
}

def cell_8342 : Cell := { cellDefaults with
  domain := ⟨(32662500000000001 / 100000000000000000 : ℚ), (32668750000000001 / 100000000000000000 : ℚ)⟩
  r := (77323169803399 / 100000000000000 : ℚ)
  w := (16917999753861 / 10000000000000 : ℚ)
  center := (32665625000000001 / 100000000000000000 : ℚ)
  supportValue := (6926762331270093 / 10000000000000000 : ℚ)
  supportSlope := (-5032566739895827 / 1000000000000000 : ℚ)
  oldCenter := (6926762331270093 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_811
  oldLo := (277 / 400 : ℚ)
  oldHi := (34650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1609]
}

def cell_8343 : Cell := { cellDefaults with
  domain := ⟨(32668750000000001 / 100000000000000000 : ℚ), (32675000000000001 / 100000000000000000 : ℚ)⟩
  r := (77323169803399 / 100000000000000 : ℚ)
  w := (16917999753861 / 10000000000000 : ℚ)
  center := (32671875000000001 / 100000000000000000 : ℚ)
  supportValue := (6923617972380993 / 10000000000000000 : ℚ)
  supportSlope := (-2514703457555001 / 500000000000000 : ℚ)
  oldCenter := (6923617972380993 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_811
  oldLo := (34600000000000003 / 50000000000000000 : ℚ)
  oldHi := (34650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1608, piece_1609]
}

def cell_8344 : Cell := { cellDefaults with
  domain := ⟨(32675000000000001 / 100000000000000000 : ℚ), (32681250000000001 / 100000000000000000 : ℚ)⟩
  r := (77323169803399 / 100000000000000 : ℚ)
  w := (16917999753861 / 10000000000000 : ℚ)
  center := (32678125000000001 / 100000000000000000 : ℚ)
  supportValue := (3460237849246791 / 5000000000000000 : ℚ)
  supportSlope := (-2513001008336957 / 500000000000000 : ℚ)
  oldCenter := (3460237849246791 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_811
  oldLo := (1383 / 2000 : ℚ)
  oldHi := (277 / 400 : ℚ)
  oldPieces := [piece_1607, piece_1608]
}

def cell_8345 : Cell := { cellDefaults with
  domain := ⟨(32681250000000001 / 100000000000000000 : ℚ), (32687500000000001 / 100000000000000000 : ℚ)⟩
  r := (77323169803399 / 100000000000000 : ℚ)
  w := (16917999753861 / 10000000000000 : ℚ)
  center := (32684375000000001 / 100000000000000000 : ℚ)
  supportValue := (6917335423837713 / 10000000000000000 : ℚ)
  supportSlope := (-5022711825031223 / 1000000000000000 : ℚ)
  oldCenter := (6917335423837713 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_811
  oldLo := (1383 / 2000 : ℚ)
  oldHi := (34600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1607]
}

def cell_8346 : Cell := { cellDefaults with
  domain := ⟨(32687500000000001 / 100000000000000000 : ℚ), (32693750000000001 / 100000000000000000 : ℚ)⟩
  r := (77323169803399 / 100000000000000 : ℚ)
  w := (16917999753861 / 10000000000000 : ℚ)
  center := (32690625000000001 / 100000000000000000 : ℚ)
  supportValue := (6914197275588787 / 10000000000000000 : ℚ)
  supportSlope := (-1254868335093029 / 250000000000000 : ℚ)
  oldCenter := (6914197275588787 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_811
  oldLo := (34550000000000003 / 50000000000000000 : ℚ)
  oldHi := (34600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1606, piece_1607]
}

def cell_8347 : Cell := { cellDefaults with
  domain := ⟨(32693750000000001 / 100000000000000000 : ℚ), (32700000000000001 / 100000000000000000 : ℚ)⟩
  r := (77323169803399 / 100000000000000 : ℚ)
  w := (16917999753861 / 10000000000000 : ℚ)
  center := (32696875000000001 / 100000000000000000 : ℚ)
  supportValue := (345553057729973 / 500000000000000 : ℚ)
  supportSlope := (-2508036866855079 / 500000000000000 : ℚ)
  oldCenter := (345553057729973 / 500000000000000 : ℚ)
  newCoefficients := coefficients_811
  oldLo := (1381 / 2000 : ℚ)
  oldHi := (1383 / 2000 : ℚ)
  oldPieces := [piece_1605, piece_1606]
}

def cell_8348 : Cell := { cellDefaults with
  domain := ⟨(32700000000000001 / 100000000000000000 : ℚ), (32706250000000001 / 100000000000000000 : ℚ)⟩
  r := (38632957972461 / 50000000000000 : ℚ)
  w := (16908791857961 / 10000000000000 : ℚ)
  center := (32703125000000001 / 100000000000000000 : ℚ)
  supportValue := (3460280291939189 / 5000000000000000 : ℚ)
  supportSlope := (-10045128793322533 / 2000000000000000 : ℚ)
  oldCenter := (3460280291939189 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_812
  oldLo := (1383 / 2000 : ℚ)
  oldHi := (277 / 400 : ℚ)
  oldPieces := [piece_1607, piece_1608]
}

def cell_8349 : Cell := { cellDefaults with
  domain := ⟨(32706250000000001 / 100000000000000000 : ℚ), (32712500000000001 / 100000000000000000 : ℚ)⟩
  r := (38632957972461 / 50000000000000 : ℚ)
  w := (16908791857961 / 10000000000000 : ℚ)
  center := (32709375000000001 / 100000000000000000 : ℚ)
  supportValue := (1729355613758933 / 2500000000000000 : ℚ)
  supportSlope := (-5019295567919357 / 1000000000000000 : ℚ)
  oldCenter := (1729355613758933 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_812
  oldLo := (1383 / 2000 : ℚ)
  oldHi := (34600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1607]
}

theorem check_8300 : cell_8300.check = true := by
  decide +kernel

theorem check_8301 : cell_8301.check = true := by
  decide +kernel

theorem check_8302 : cell_8302.check = true := by
  decide +kernel

theorem check_8303 : cell_8303.check = true := by
  decide +kernel

theorem check_8304 : cell_8304.check = true := by
  decide +kernel

theorem check_8305 : cell_8305.check = true := by
  decide +kernel

theorem check_8306 : cell_8306.check = true := by
  decide +kernel

theorem check_8307 : cell_8307.check = true := by
  decide +kernel

theorem check_8308 : cell_8308.check = true := by
  decide +kernel

theorem check_8309 : cell_8309.check = true := by
  decide +kernel

theorem check_8310 : cell_8310.check = true := by
  decide +kernel

theorem check_8311 : cell_8311.check = true := by
  decide +kernel

theorem check_8312 : cell_8312.check = true := by
  decide +kernel

theorem check_8313 : cell_8313.check = true := by
  decide +kernel

theorem check_8314 : cell_8314.check = true := by
  decide +kernel

theorem check_8315 : cell_8315.check = true := by
  decide +kernel

theorem check_8316 : cell_8316.check = true := by
  decide +kernel

theorem check_8317 : cell_8317.check = true := by
  decide +kernel

theorem check_8318 : cell_8318.check = true := by
  decide +kernel

theorem check_8319 : cell_8319.check = true := by
  decide +kernel

theorem check_8320 : cell_8320.check = true := by
  decide +kernel

theorem check_8321 : cell_8321.check = true := by
  decide +kernel

theorem check_8322 : cell_8322.check = true := by
  decide +kernel

theorem check_8323 : cell_8323.check = true := by
  decide +kernel

theorem check_8324 : cell_8324.check = true := by
  decide +kernel

theorem check_8325 : cell_8325.check = true := by
  decide +kernel

theorem check_8326 : cell_8326.check = true := by
  decide +kernel

theorem check_8327 : cell_8327.check = true := by
  decide +kernel

theorem check_8328 : cell_8328.check = true := by
  decide +kernel

theorem check_8329 : cell_8329.check = true := by
  decide +kernel

theorem check_8330 : cell_8330.check = true := by
  decide +kernel

theorem check_8331 : cell_8331.check = true := by
  decide +kernel

theorem check_8332 : cell_8332.check = true := by
  decide +kernel

theorem check_8333 : cell_8333.check = true := by
  decide +kernel

theorem check_8334 : cell_8334.check = true := by
  decide +kernel

theorem check_8335 : cell_8335.check = true := by
  decide +kernel

theorem check_8336 : cell_8336.check = true := by
  decide +kernel

theorem check_8337 : cell_8337.check = true := by
  decide +kernel

theorem check_8338 : cell_8338.check = true := by
  decide +kernel

theorem check_8339 : cell_8339.check = true := by
  decide +kernel

theorem check_8340 : cell_8340.check = true := by
  decide +kernel

theorem check_8341 : cell_8341.check = true := by
  decide +kernel

theorem check_8342 : cell_8342.check = true := by
  decide +kernel

theorem check_8343 : cell_8343.check = true := by
  decide +kernel

theorem check_8344 : cell_8344.check = true := by
  decide +kernel

theorem check_8345 : cell_8345.check = true := by
  decide +kernel

theorem check_8346 : cell_8346.check = true := by
  decide +kernel

theorem check_8347 : cell_8347.check = true := by
  decide +kernel

theorem check_8348 : cell_8348.check = true := by
  decide +kernel

theorem check_8349 : cell_8349.check = true := by
  decide +kernel

def cells : List Cell := [cell_8300, cell_8301, cell_8302, cell_8303, cell_8304, cell_8305, cell_8306, cell_8307, cell_8308, cell_8309, cell_8310, cell_8311, cell_8312, cell_8313, cell_8314, cell_8315, cell_8316, cell_8317, cell_8318, cell_8319, cell_8320, cell_8321, cell_8322, cell_8323, cell_8324, cell_8325, cell_8326, cell_8327, cell_8328, cell_8329, cell_8330, cell_8331, cell_8332, cell_8333, cell_8334, cell_8335, cell_8336, cell_8337, cell_8338, cell_8339, cell_8340, cell_8341, cell_8342, cell_8343, cell_8344, cell_8345, cell_8346, cell_8347, cell_8348, cell_8349]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8300, check_8301, check_8302, check_8303, check_8304, check_8305, check_8306, check_8307, check_8308, check_8309, check_8310, check_8311, check_8312, check_8313, check_8314, check_8315, check_8316, check_8317, check_8318, check_8319, check_8320, check_8321, check_8322, check_8323, check_8324, check_8325, check_8326, check_8327, check_8328, check_8329, check_8330, check_8331, check_8332, check_8333, check_8334, check_8335, check_8336, check_8337, check_8338, check_8339, check_8340, check_8341, check_8342, check_8343, check_8344, check_8345, check_8346, check_8347, check_8348, check_8349, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0166

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0166
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0166
open AnalyticBounds.ExpressionCertificate

theorem linked_8300 : Linked cell_8300 pieces := by
  link_source cell_8300 with piece_805 using piece_805_mem, piece_1623_mem

theorem linked_8301 : Linked cell_8301 pieces := by
  link_source cell_8301 with piece_805 using piece_805_mem, ⟨piece_1622_mem, piece_1623_mem⟩

theorem linked_8302 : Linked cell_8302 pieces := by
  link_source cell_8302 with piece_805 using piece_805_mem, piece_1622_mem

theorem linked_8303 : Linked cell_8303 pieces := by
  link_source cell_8303 with piece_805 using piece_805_mem, ⟨piece_1621_mem, piece_1622_mem⟩

theorem linked_8304 : Linked cell_8304 pieces := by
  link_source cell_8304 with piece_805 using piece_805_mem, ⟨piece_1620_mem, piece_1621_mem⟩

theorem linked_8305 : Linked cell_8305 pieces := by
  link_source cell_8305 with piece_805 using piece_805_mem, piece_1620_mem

theorem linked_8306 : Linked cell_8306 pieces := by
  link_source cell_8306 with piece_805 using piece_805_mem, ⟨piece_1619_mem, piece_1620_mem⟩

theorem linked_8307 : Linked cell_8307 pieces := by
  link_source cell_8307 with piece_806 using piece_806_mem, ⟨piece_1621_mem, piece_1622_mem⟩

theorem linked_8308 : Linked cell_8308 pieces := by
  link_source cell_8308 with piece_806 using piece_806_mem, ⟨piece_1620_mem, piece_1621_mem⟩

theorem linked_8309 : Linked cell_8309 pieces := by
  link_source cell_8309 with piece_806 using piece_806_mem, piece_1620_mem

theorem linked_8310 : Linked cell_8310 pieces := by
  link_source cell_8310 with piece_806 using piece_806_mem, ⟨piece_1619_mem, piece_1620_mem⟩

theorem linked_8311 : Linked cell_8311 pieces := by
  link_source cell_8311 with piece_806 using piece_806_mem, ⟨piece_1618_mem, piece_1619_mem⟩

theorem linked_8312 : Linked cell_8312 pieces := by
  link_source cell_8312 with piece_806 using piece_806_mem, piece_1618_mem

theorem linked_8313 : Linked cell_8313 pieces := by
  link_source cell_8313 with piece_806 using piece_806_mem, ⟨piece_1617_mem, piece_1618_mem⟩

theorem linked_8314 : Linked cell_8314 pieces := by
  link_source cell_8314 with piece_806 using piece_806_mem, ⟨piece_1616_mem, piece_1617_mem⟩

theorem linked_8315 : Linked cell_8315 pieces := by
  link_source cell_8315 with piece_807 using piece_807_mem, ⟨piece_1618_mem, piece_1619_mem⟩

theorem linked_8316 : Linked cell_8316 pieces := by
  link_source cell_8316 with piece_807 using piece_807_mem, piece_1618_mem

theorem linked_8317 : Linked cell_8317 pieces := by
  link_source cell_8317 with piece_807 using piece_807_mem, ⟨piece_1617_mem, piece_1618_mem⟩

theorem linked_8318 : Linked cell_8318 pieces := by
  link_source cell_8318 with piece_807 using piece_807_mem, ⟨piece_1616_mem, piece_1617_mem⟩

theorem linked_8319 : Linked cell_8319 pieces := by
  link_source cell_8319 with piece_807 using piece_807_mem, piece_1616_mem

theorem linked_8320 : Linked cell_8320 pieces := by
  link_source cell_8320 with piece_808 using piece_808_mem, ⟨piece_1615_mem, piece_1616_mem⟩

theorem linked_8321 : Linked cell_8321 pieces := by
  link_source cell_8321 with piece_808 using piece_808_mem, ⟨piece_1614_mem, piece_1615_mem⟩

theorem linked_8322 : Linked cell_8322 pieces := by
  link_source cell_8322 with piece_808 using piece_808_mem, piece_1614_mem

theorem linked_8323 : Linked cell_8323 pieces := by
  link_source cell_8323 with piece_808 using piece_808_mem, ⟨piece_1613_mem, piece_1614_mem⟩

theorem linked_8324 : Linked cell_8324 pieces := by
  link_source cell_8324 with piece_809 using piece_809_mem, ⟨piece_1615_mem, piece_1616_mem⟩

theorem linked_8325 : Linked cell_8325 pieces := by
  link_source cell_8325 with piece_809 using piece_809_mem, ⟨piece_1614_mem, piece_1615_mem⟩

theorem linked_8326 : Linked cell_8326 pieces := by
  link_source cell_8326 with piece_809 using piece_809_mem, piece_1614_mem

theorem linked_8327 : Linked cell_8327 pieces := by
  link_source cell_8327 with piece_809 using piece_809_mem, ⟨piece_1613_mem, piece_1614_mem⟩

theorem linked_8328 : Linked cell_8328 pieces := by
  link_source cell_8328 with piece_809 using piece_809_mem, ⟨piece_1612_mem, piece_1613_mem⟩

theorem linked_8329 : Linked cell_8329 pieces := by
  link_source cell_8329 with piece_809 using piece_809_mem, piece_1612_mem

theorem linked_8330 : Linked cell_8330 pieces := by
  link_source cell_8330 with piece_809 using piece_809_mem, ⟨piece_1611_mem, piece_1612_mem⟩

theorem linked_8331 : Linked cell_8331 pieces := by
  link_source cell_8331 with piece_809 using piece_809_mem, ⟨piece_1610_mem, piece_1611_mem⟩

theorem linked_8332 : Linked cell_8332 pieces := by
  link_source cell_8332 with piece_810 using piece_810_mem, ⟨piece_1612_mem, piece_1613_mem⟩

theorem linked_8333 : Linked cell_8333 pieces := by
  link_source cell_8333 with piece_810 using piece_810_mem, piece_1612_mem

theorem linked_8334 : Linked cell_8334 pieces := by
  link_source cell_8334 with piece_810 using piece_810_mem, ⟨piece_1611_mem, piece_1612_mem⟩

theorem linked_8335 : Linked cell_8335 pieces := by
  link_source cell_8335 with piece_810 using piece_810_mem, ⟨piece_1610_mem, piece_1611_mem⟩

theorem linked_8336 : Linked cell_8336 pieces := by
  link_source cell_8336 with piece_810 using piece_810_mem, piece_1610_mem

theorem linked_8337 : Linked cell_8337 pieces := by
  link_source cell_8337 with piece_810 using piece_810_mem, ⟨piece_1609_mem, piece_1610_mem⟩

theorem linked_8338 : Linked cell_8338 pieces := by
  link_source cell_8338 with piece_810 using piece_810_mem, piece_1609_mem

theorem linked_8339 : Linked cell_8339 pieces := by
  link_source cell_8339 with piece_810 using piece_810_mem, ⟨piece_1608_mem, piece_1609_mem⟩

theorem linked_8340 : Linked cell_8340 pieces := by
  link_source cell_8340 with piece_811 using piece_811_mem, piece_1610_mem

theorem linked_8341 : Linked cell_8341 pieces := by
  link_source cell_8341 with piece_811 using piece_811_mem, ⟨piece_1609_mem, piece_1610_mem⟩

theorem linked_8342 : Linked cell_8342 pieces := by
  link_source cell_8342 with piece_811 using piece_811_mem, piece_1609_mem

theorem linked_8343 : Linked cell_8343 pieces := by
  link_source cell_8343 with piece_811 using piece_811_mem, ⟨piece_1608_mem, piece_1609_mem⟩

theorem linked_8344 : Linked cell_8344 pieces := by
  link_source cell_8344 with piece_811 using piece_811_mem, ⟨piece_1607_mem, piece_1608_mem⟩

theorem linked_8345 : Linked cell_8345 pieces := by
  link_source cell_8345 with piece_811 using piece_811_mem, piece_1607_mem

theorem linked_8346 : Linked cell_8346 pieces := by
  link_source cell_8346 with piece_811 using piece_811_mem, ⟨piece_1606_mem, piece_1607_mem⟩

theorem linked_8347 : Linked cell_8347 pieces := by
  link_source cell_8347 with piece_811 using piece_811_mem, ⟨piece_1605_mem, piece_1606_mem⟩

theorem linked_8348 : Linked cell_8348 pieces := by
  link_source cell_8348 with piece_812 using piece_812_mem, ⟨piece_1607_mem, piece_1608_mem⟩

theorem linked_8349 : Linked cell_8349 pieces := by
  link_source cell_8349 with piece_812 using piece_812_mem, piece_1607_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0166.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0166.cells,List.forall_mem_cons]
  exact ⟨linked_8300, linked_8301, linked_8302, linked_8303, linked_8304, linked_8305, linked_8306, linked_8307, linked_8308, linked_8309, linked_8310, linked_8311, linked_8312, linked_8313, linked_8314, linked_8315, linked_8316, linked_8317, linked_8318, linked_8319, linked_8320, linked_8321, linked_8322, linked_8323, linked_8324, linked_8325, linked_8326, linked_8327, linked_8328, linked_8329, linked_8330, linked_8331, linked_8332, linked_8333, linked_8334, linked_8335, linked_8336, linked_8337, linked_8338, linked_8339, linked_8340, linked_8341, linked_8342, linked_8343, linked_8344, linked_8345, linked_8346, linked_8347, linked_8348, linked_8349, by simp⟩

theorem covered : covers (32406250000000001 / 100000000000000000 : ℚ) (32712500000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0166.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0166
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0167
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(32712500000000001 / 100000000000000000 : ℚ), (32718750000000001 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (77208760598707 / 100000000000000 : ℚ)
  w := (211245041987 / 125000000000 : ℚ)
  center := (32715625000000001 / 100000000000000000 : ℚ)
  supportValue := (864285805928133 / 1250000000000000 : ℚ)
  supportSlope := (-5016052634470469 / 1000000000000000 : ℚ)
  oldCenter := (864285805928133 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_813
  oldLo := (34450000000000003 / 50000000000000000 : ℚ)
  oldHi := (34550000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1605]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8350 : Cell := { cellDefaults with
  r := (38632957972461 / 50000000000000 : ℚ)
  w := (16908791857961 / 10000000000000 : ℚ)
  newCoefficients := coefficients_812
  oldLo := (34550000000000003 / 50000000000000000 : ℚ)
  oldHi := (34600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1606, piece_1607]
}

def cell_8351 : Cell := { cellDefaults with
  domain := ⟨(32718750000000001 / 100000000000000000 : ℚ), (32725000000000001 / 100000000000000000 : ℚ)⟩
  r := (38632957972461 / 50000000000000 : ℚ)
  w := (16908791857961 / 10000000000000 : ℚ)
  center := (32721875000000001 / 100000000000000000 : ℚ)
  supportValue := (3455576226711569 / 5000000000000000 : ℚ)
  supportSlope := (-10025322591801 / 2000000000000 : ℚ)
  oldCenter := (3455576226711569 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_812
  oldLo := (1381 / 2000 : ℚ)
  oldHi := (1383 / 2000 : ℚ)
  oldPieces := [piece_1605, piece_1606]
}

def cell_8352 : Cell := { cellDefaults with
  domain := ⟨(32725000000000001 / 100000000000000000 : ℚ), (32731250000000001 / 100000000000000000 : ℚ)⟩
  r := (38632957972461 / 50000000000000 : ℚ)
  w := (16908791857961 / 10000000000000 : ℚ)
  center := (32728125000000001 / 100000000000000000 : ℚ)
  supportValue := (6908020511873953 / 10000000000000000 : ℚ)
  supportSlope := (-2504743674220933 / 500000000000000 : ℚ)
  oldCenter := (6908020511873953 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_812
  oldLo := (1381 / 2000 : ℚ)
  oldPieces := [piece_1605]
}

def cell_8353 : Cell := { cellDefaults with
  domain := ⟨(32731250000000001 / 100000000000000000 : ℚ), (32737500000000001 / 100000000000000000 : ℚ)⟩
  r := (38632957972461 / 50000000000000 : ℚ)
  w := (16908791857961 / 10000000000000 : ℚ)
  center := (32734375000000001 / 100000000000000000 : ℚ)
  supportValue := (107888917004181 / 156250000000000 : ℚ)
  supportSlope := (-312885103943783 / 62500000000000 : ℚ)
  oldCenter := (107888917004181 / 156250000000000 : ℚ)
  newCoefficients := coefficients_812
  oldLo := (3451396648044693 / 5000000000000000 : ℚ)
  oldPieces := [piece_1604, piece_1605]
}

def cell_8354 : Cell := { cellDefaults with
  domain := ⟨(32737500000000001 / 100000000000000000 : ℚ), (32743750000000001 / 100000000000000000 : ℚ)⟩
  r := (38632957972461 / 50000000000000 : ℚ)
  w := (16908791857961 / 10000000000000 : ℚ)
  center := (32740625000000001 / 100000000000000000 : ℚ)
  supportValue := (6901762818056361 / 10000000000000000 : ℚ)
  supportSlope := (-1250701193288073 / 250000000000000 : ℚ)
  oldCenter := (6901762818056361 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_812
  oldLo := (34500000000000003 / 50000000000000000 : ℚ)
  oldHi := (1381 / 2000 : ℚ)
  oldPieces := [piece_1603, piece_1604]
}

def cell_8355 : Cell := { cellDefaults with
  domain := ⟨(32743750000000001 / 100000000000000000 : ℚ), (32750000000000001 / 100000000000000000 : ℚ)⟩
  r := (38632957972461 / 50000000000000 : ℚ)
  w := (16908791857961 / 10000000000000 : ℚ)
  center := (32746875000000001 / 100000000000000000 : ℚ)
  supportValue := (1724659263263973 / 2500000000000000 : ℚ)
  supportSlope := (-312479379048769 / 62500000000000 : ℚ)
  oldCenter := (1724659263263973 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_812
  oldLo := (1379 / 2000 : ℚ)
  oldHi := (3451396648044693 / 5000000000000000 : ℚ)
  oldPieces := [piece_1602, piece_1603]
}

def cell_8356 : Cell := { cellDefaults with
  domain := ⟨(32750000000000001 / 100000000000000000 : ℚ), (32756250000000001 / 100000000000000000 : ℚ)⟩
  center := (32753125000000001 / 100000000000000000 : ℚ)
  supportValue := (3454054445270003 / 5000000000000000 : ℚ)
  supportSlope := (-10012158321963227 / 2000000000000000 : ℚ)
  oldCenter := (3454054445270003 / 5000000000000000 : ℚ)
  oldLo := (1381 / 2000 : ℚ)
  oldPieces := [piece_1605]
}

def cell_8357 : Cell := { cellDefaults with
  domain := ⟨(32756250000000001 / 100000000000000000 : ℚ), (32762500000000001 / 100000000000000000 : ℚ)⟩
  center := (32759375000000001 / 100000000000000000 : ℚ)
  supportValue := (3452490601338109 / 5000000000000000 : ℚ)
  supportSlope := (-5002748784093569 / 1000000000000000 : ℚ)
  oldCenter := (3452490601338109 / 5000000000000000 : ℚ)
  oldLo := (3451396648044693 / 5000000000000000 : ℚ)
  oldPieces := [piece_1604, piece_1605]
}

def cell_8358 : Cell := { cellDefaults with
  domain := ⟨(32762500000000001 / 100000000000000000 : ℚ), (32768750000000001 / 100000000000000000 : ℚ)⟩
  center := (32765625000000001 / 100000000000000000 : ℚ)
  supportValue := (6901855454416079 / 10000000000000000 : ℚ)
  supportSlope := (-999882818273079 / 200000000000000 : ℚ)
  oldCenter := (6901855454416079 / 10000000000000000 : ℚ)
  oldLo := (34500000000000003 / 50000000000000000 : ℚ)
  oldHi := (1381 / 2000 : ℚ)
  oldPieces := [piece_1603, piece_1604]
}

def cell_8359 : Cell := { cellDefaults with
  domain := ⟨(32768750000000001 / 100000000000000000 : ℚ), (32775000000000001 / 100000000000000000 : ℚ)⟩
  center := (32771875000000001 / 100000000000000000 : ℚ)
  supportValue := (6898731814618849 / 10000000000000000 : ℚ)
  supportSlope := (-4996274041157989 / 1000000000000000 : ℚ)
  oldCenter := (6898731814618849 / 10000000000000000 : ℚ)
  oldLo := (1379 / 2000 : ℚ)
  oldHi := (3451396648044693 / 5000000000000000 : ℚ)
  oldPieces := [piece_1602, piece_1603]
}

def cell_8360 : Cell := { cellDefaults with
  domain := ⟨(32775000000000001 / 100000000000000000 : ℚ), (32781250000000001 / 100000000000000000 : ℚ)⟩
  center := (32778125000000001 / 100000000000000000 : ℚ)
  supportValue := (3447805113860247 / 5000000000000000 : ℚ)
  supportSlope := (-4992900127618327 / 1000000000000000 : ℚ)
  oldCenter := (3447805113860247 / 5000000000000000 : ℚ)
  oldHi := (34500000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1601, piece_1602]
}

def cell_8361 : Cell := { cellDefaults with
  domain := ⟨(32781250000000001 / 100000000000000000 : ℚ), (32787500000000001 / 100000000000000000 : ℚ)⟩
  center := (32784375000000001 / 100000000000000000 : ℚ)
  supportValue := (6892490630761351 / 10000000000000000 : ℚ)
  supportSlope := (-1995866399050783 / 400000000000000 : ℚ)
  oldCenter := (6892490630761351 / 10000000000000000 : ℚ)
  oldHi := (1379 / 2000 : ℚ)
  oldPieces := [piece_1601]
}

def cell_8362 : Cell := { cellDefaults with
  domain := ⟨(32787500000000001 / 100000000000000000 : ℚ), (32793750000000001 / 100000000000000000 : ℚ)⟩
  center := (32790625000000001 / 100000000000000000 : ℚ)
  supportValue := (3444686570434593 / 5000000000000000 : ℚ)
  supportSlope := (-4986437551306011 / 1000000000000000 : ℚ)
  oldCenter := (3444686570434593 / 5000000000000000 : ℚ)
  oldLo := (1377 / 2000 : ℚ)
  oldHi := (1379 / 2000 : ℚ)
  oldPieces := [piece_1600, piece_1601]
}

def cell_8363 : Cell := { cellDefaults with
  domain := ⟨(32793750000000001 / 100000000000000000 : ℚ), (32800000000000001 / 100000000000000000 : ℚ)⟩
  center := (32796875000000001 / 100000000000000000 : ℚ)
  supportValue := (1377251528044721 / 2000000000000000 : ℚ)
  supportSlope := (-9966137632410721 / 2000000000000000 : ℚ)
  oldCenter := (1377251528044721 / 2000000000000000 : ℚ)
  oldLo := (34400000000000003 / 50000000000000000 : ℚ)
  oldHi := (34450000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1599, piece_1600]
}

def cell_8364 : Cell := { cellDefaults with
  domain := ⟨(32800000000000001 / 100000000000000000 : ℚ), (32806250000000001 / 100000000000000000 : ℚ)⟩
  r := (77151702568971 / 100000000000000 : ℚ)
  w := (527826099029 / 312500000000 : ℚ)
  center := (32803125000000001 / 100000000000000000 : ℚ)
  supportValue := (6895701734852809 / 10000000000000000 : ℚ)
  supportSlope := (-9978993588831031 / 2000000000000000 : ℚ)
  oldCenter := (6895701734852809 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_814
  oldHi := (34500000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1601, piece_1602]
}

def cell_8365 : Cell := { cellDefaults with
  domain := ⟨(32806250000000001 / 100000000000000000 : ℚ), (32812500000000001 / 100000000000000000 : ℚ)⟩
  r := (77151702568971 / 100000000000000 : ℚ)
  w := (527826099029 / 312500000000 : ℚ)
  center := (32809375000000001 / 100000000000000000 : ℚ)
  supportValue := (137851685251881 / 200000000000000 : ℚ)
  supportSlope := (-99725680989593 / 20000000000000 : ℚ)
  oldCenter := (137851685251881 / 200000000000000 : ℚ)
  newCoefficients := coefficients_814
  oldHi := (1379 / 2000 : ℚ)
  oldPieces := [piece_1601]
}

def cell_8366 : Cell := { cellDefaults with
  domain := ⟨(32812500000000001 / 100000000000000000 : ℚ), (32818750000000001 / 100000000000000000 : ℚ)⟩
  r := (77151702568971 / 100000000000000 : ℚ)
  w := (527826099029 / 312500000000 : ℚ)
  center := (32815625000000001 / 100000000000000000 : ℚ)
  supportValue := (3444734446430411 / 5000000000000000 : ℚ)
  supportSlope := (-2491524553800417 / 500000000000000 : ℚ)
  oldCenter := (3444734446430411 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_814
  oldLo := (1377 / 2000 : ℚ)
  oldHi := (1379 / 2000 : ℚ)
  oldPieces := [piece_1600, piece_1601]
}

def cell_8367 : Cell := { cellDefaults with
  domain := ⟨(32818750000000001 / 100000000000000000 : ℚ), (32825000000000001 / 100000000000000000 : ℚ)⟩
  r := (77151702568971 / 100000000000000 : ℚ)
  w := (527826099029 / 312500000000 : ℚ)
  center := (32821875000000001 / 100000000000000000 : ℚ)
  supportValue := (1721588874676999 / 2500000000000000 : ℚ)
  supportSlope := (-622460952981907 / 125000000000000 : ℚ)
  oldCenter := (1721588874676999 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_814
  oldLo := (34400000000000003 / 50000000000000000 : ℚ)
  oldHi := (34450000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1599, piece_1600]
}

def cell_8368 : Cell := { cellDefaults with
  domain := ⟨(32825000000000001 / 100000000000000000 : ℚ), (32831250000000001 / 100000000000000000 : ℚ)⟩
  r := (77151702568971 / 100000000000000 : ℚ)
  w := (527826099029 / 312500000000 : ℚ)
  center := (32828125000000001 / 100000000000000000 : ℚ)
  supportValue := (6883244155032223 / 10000000000000000 : ℚ)
  supportSlope := (-9953158592445277 / 2000000000000000 : ℚ)
  oldCenter := (6883244155032223 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_814
  oldLo := (34400000000000003 / 50000000000000000 : ℚ)
  oldHi := (1377 / 2000 : ℚ)
  oldPieces := [piece_1599]
}

def cell_8369 : Cell := { cellDefaults with
  domain := ⟨(32831250000000001 / 100000000000000000 : ℚ), (32837500000000001 / 100000000000000000 : ℚ)⟩
  r := (77151702568971 / 100000000000000 : ℚ)
  w := (527826099029 / 312500000000 : ℚ)
  center := (32834375000000001 / 100000000000000000 : ℚ)
  supportValue := (6880134898405503 / 10000000000000000 : ℚ)
  supportSlope := (-310828233376359 / 62500000000000 : ℚ)
  oldCenter := (6880134898405503 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_814
  oldLo := (11 / 16 : ℚ)
  oldHi := (1377 / 2000 : ℚ)
  oldPieces := [piece_1598, piece_1599]
}

def cell_8370 : Cell := { cellDefaults with
  domain := ⟨(32837500000000001 / 100000000000000000 : ℚ), (32843750000000001 / 100000000000000000 : ℚ)⟩
  r := (77151702568971 / 100000000000000 : ℚ)
  w := (527826099029 / 312500000000 : ℚ)
  center := (32840625000000001 / 100000000000000000 : ℚ)
  supportValue := (6877027575867203 / 10000000000000000 : ℚ)
  supportSlope := (-621245731416753 / 125000000000000 : ℚ)
  oldCenter := (6877027575867203 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_814
  oldLo := (11 / 16 : ℚ)
  oldHi := (34400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1598]
}

def cell_8371 : Cell := { cellDefaults with
  domain := ⟨(32843750000000001 / 100000000000000000 : ℚ), (32850000000000001 / 100000000000000000 : ℚ)⟩
  r := (77151702568971 / 100000000000000 : ℚ)
  w := (527826099029 / 312500000000 : ℚ)
  center := (32846875000000001 / 100000000000000000 : ℚ)
  supportValue := (274956894013167 / 400000000000000 : ℚ)
  supportSlope := (-2483411956770709 / 500000000000000 : ℚ)
  oldCenter := (274956894013167 / 400000000000000 : ℚ)
  newCoefficients := coefficients_814
  oldLo := (34350000000000003 / 50000000000000000 : ℚ)
  oldHi := (34400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1597, piece_1598]
}

def cell_8372 : Cell := { cellDefaults with
  domain := ⟨(32850000000000001 / 100000000000000000 : ℚ), (32856250000000001 / 100000000000000000 : ℚ)⟩
  r := (77094743252701 / 100000000000000 : ℚ)
  w := (3376257391521 / 2000000000000 : ℚ)
  center := (32853125000000001 / 100000000000000000 : ℚ)
  supportValue := (6883338646797901 / 10000000000000000 : ℚ)
  supportSlope := (-2486602277599559 / 500000000000000 : ℚ)
  oldCenter := (6883338646797901 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_815
  oldLo := (34400000000000003 / 50000000000000000 : ℚ)
  oldHi := (1377 / 2000 : ℚ)
  oldPieces := [piece_1599]
}

def cell_8373 : Cell := { cellDefaults with
  domain := ⟨(32856250000000001 / 100000000000000000 : ℚ), (32862500000000001 / 100000000000000000 : ℚ)⟩
  r := (77094743252701 / 100000000000000 : ℚ)
  w := (3376257391521 / 2000000000000 : ℚ)
  center := (32859375000000001 / 100000000000000000 : ℚ)
  supportValue := (6880231496570913 / 10000000000000000 : ℚ)
  supportSlope := (-4969871441677043 / 1000000000000000 : ℚ)
  oldCenter := (6880231496570913 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_815
  oldLo := (11 / 16 : ℚ)
  oldHi := (1377 / 2000 : ℚ)
  oldPieces := [piece_1598, piece_1599]
}

def cell_8374 : Cell := { cellDefaults with
  domain := ⟨(32862500000000001 / 100000000000000000 : ℚ), (32868750000000001 / 100000000000000000 : ℚ)⟩
  r := (77094743252701 / 100000000000000 : ℚ)
  w := (3376257391521 / 2000000000000 : ℚ)
  center := (32865625000000001 / 100000000000000000 : ℚ)
  supportValue := (3438563141993503 / 5000000000000000 : ℚ)
  supportSlope := (-1241652210767441 / 250000000000000 : ℚ)
  oldCenter := (3438563141993503 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_815
  oldLo := (11 / 16 : ℚ)
  oldHi := (34400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1598]
}

def cell_8375 : Cell := { cellDefaults with
  domain := ⟨(32868750000000001 / 100000000000000000 : ℚ), (32875000000000001 / 100000000000000000 : ℚ)⟩
  r := (77094743252701 / 100000000000000 : ℚ)
  w := (3376257391521 / 2000000000000 : ℚ)
  center := (32871875000000001 / 100000000000000000 : ℚ)
  supportValue := (6874023163173373 / 10000000000000000 : ℚ)
  supportSlope := (-155108147367633 / 31250000000000 : ℚ)
  oldCenter := (6874023163173373 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_815
  oldLo := (34350000000000003 / 50000000000000000 : ℚ)
  oldHi := (34400000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1597, piece_1598]
}

def cell_8376 : Cell := { cellDefaults with
  domain := ⟨(32875000000000001 / 100000000000000000 : ℚ), (32881250000000001 / 100000000000000000 : ℚ)⟩
  r := (77094743252701 / 100000000000000 : ℚ)
  w := (3376257391521 / 2000000000000 : ℚ)
  center := (32878125000000001 / 100000000000000000 : ℚ)
  supportValue := (6870922047334093 / 10000000000000000 : ℚ)
  supportSlope := (-9920232884397251 / 2000000000000000 : ℚ)
  oldCenter := (6870922047334093 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_815
  oldLo := (1373 / 2000 : ℚ)
  oldHi := (11 / 16 : ℚ)
  oldPieces := [piece_1596, piece_1597]
}

def cell_8377 : Cell := { cellDefaults with
  domain := ⟨(32881250000000001 / 100000000000000000 : ℚ), (32887500000000001 / 100000000000000000 : ℚ)⟩
  r := (77094743252701 / 100000000000000 : ℚ)
  w := (3376257391521 / 2000000000000 : ℚ)
  center := (32884375000000001 / 100000000000000000 : ℚ)
  supportValue := (686782292950197 / 1000000000000000 : ℚ)
  supportSlope := (-4956963903758549 / 1000000000000000 : ℚ)
  oldCenter := (686782292950197 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_815
  oldLo := (1373 / 2000 : ℚ)
  oldHi := (34350000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1596]
}

def cell_8378 : Cell := { cellDefaults with
  domain := ⟨(32887500000000001 / 100000000000000000 : ℚ), (32893750000000001 / 100000000000000000 : ℚ)⟩
  r := (77094743252701 / 100000000000000 : ℚ)
  w := (3376257391521 / 2000000000000 : ℚ)
  center := (32890625000000001 / 100000000000000000 : ℚ)
  supportValue := (6864725900248041 / 10000000000000000 : ℚ)
  supportSlope := (-4953717618771947 / 1000000000000000 : ℚ)
  oldCenter := (6864725900248041 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_815
  oldLo := (13720000000000001 / 20000000000000000 : ℚ)
  oldHi := (34350000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1595, piece_1596]
}

def cell_8379 : Cell := { cellDefaults with
  domain := ⟨(32893750000000001 / 100000000000000000 : ℚ), (32900000000000001 / 100000000000000000 : ℚ)⟩
  r := (77094743252701 / 100000000000000 : ℚ)
  w := (3376257391521 / 2000000000000 : ℚ)
  center := (32896875000000001 / 100000000000000000 : ℚ)
  supportValue := (3430815403100811 / 5000000000000000 : ℚ)
  supportSlope := (-1237597682449021 / 250000000000000 : ℚ)
  oldCenter := (3430815403100811 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_815
  oldLo := (13720000000000001 / 20000000000000000 : ℚ)
  oldHi := (1373 / 2000 : ℚ)
  oldPieces := [piece_1595]
}

def cell_8380 : Cell := { cellDefaults with
  domain := ⟨(32900000000000001 / 100000000000000000 : ℚ), (263250000000000009 / 800000000000000000 : ℚ)⟩
  r := (15407576056107 / 20000000000000 : ℚ)
  w := (16872158978109 / 10000000000000 : ℚ)
  center := (526450000000000017 / 1600000000000000000 : ℚ)
  supportValue := (6871019632476261 / 10000000000000000 : ℚ)
  supportSlope := (-2478371915008943 / 500000000000000 : ℚ)
  oldCenter := (6871019632476261 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_816
  oldLo := (1373 / 2000 : ℚ)
  oldHi := (11 / 16 : ℚ)
  oldPieces := [piece_1596, piece_1597]
}

def cell_8381 : Cell := { cellDefaults with
  domain := ⟨(263250000000000009 / 800000000000000000 : ℚ), (26330000000000001 / 80000000000000000 : ℚ)⟩
  r := (15407576056107 / 20000000000000 : ℚ)
  w := (16872158978109 / 10000000000000 : ℚ)
  center := (526550000000000019 / 1600000000000000000 : ℚ)
  supportValue := (1373584523988113 / 2000000000000000 : ℚ)
  supportSlope := (-4953614305712407 / 1000000000000000 : ℚ)
  oldCenter := (1373584523988113 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_816
  oldLo := (1373 / 2000 : ℚ)
  oldHi := (34350000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1596]
}

def cell_8382 : Cell := { cellDefaults with
  domain := ⟨(26330000000000001 / 80000000000000000 : ℚ), (263350000000000011 / 800000000000000000 : ℚ)⟩
  r := (15407576056107 / 20000000000000 : ℚ)
  w := (16872158978109 / 10000000000000 : ℚ)
  center := (526650000000000021 / 1600000000000000000 : ℚ)
  supportValue := (3432413845518489 / 5000000000000000 : ℚ)
  supportSlope := (-4950361192701437 / 1000000000000000 : ℚ)
  oldCenter := (3432413845518489 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_816
  oldLo := (13720000000000001 / 20000000000000000 : ℚ)
  oldHi := (34350000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1595, piece_1596]
}

def cell_8383 : Cell := { cellDefaults with
  domain := ⟨(263350000000000011 / 800000000000000000 : ℚ), (65850000000000003 / 200000000000000000 : ℚ)⟩
  r := (15407576056107 / 20000000000000 : ℚ)
  w := (16872158978109 / 10000000000000 : ℚ)
  center := (526750000000000023 / 1600000000000000000 : ℚ)
  supportValue := (6861734682658301 / 10000000000000000 : ℚ)
  supportSlope := (-4947057921519517 / 1000000000000000 : ℚ)
  oldCenter := (6861734682658301 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_816
  oldLo := (13720000000000001 / 20000000000000000 : ℚ)
  oldHi := (1373 / 2000 : ℚ)
  oldPieces := [piece_1595]
}

def cell_8384 : Cell := { cellDefaults with
  domain := ⟨(65850000000000003 / 200000000000000000 : ℚ), (263450000000000013 / 800000000000000000 : ℚ)⟩
  r := (15407576056107 / 20000000000000 : ℚ)
  w := (16872158978109 / 10000000000000 : ℚ)
  center := (21074000000000001 / 64000000000000000 : ℚ)
  supportValue := (6858643739202851 / 10000000000000000 : ℚ)
  supportSlope := (-2471993276447599 / 500000000000000 : ℚ)
  oldCenter := (6858643739202851 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_816
  oldLo := (1371 / 2000 : ℚ)
  oldHi := (1373 / 2000 : ℚ)
  oldPieces := [piece_1594, piece_1595]
}

def cell_8385 : Cell := { cellDefaults with
  domain := ⟨(263450000000000013 / 800000000000000000 : ℚ), (131750000000000007 / 400000000000000000 : ℚ)⟩
  r := (15407576056107 / 20000000000000 : ℚ)
  w := (16872158978109 / 10000000000000 : ℚ)
  center := (526950000000000027 / 1600000000000000000 : ℚ)
  supportValue := (1371110964882001 / 2000000000000000 : ℚ)
  supportSlope := (-247032956039201 / 50000000000000 : ℚ)
  oldCenter := (1371110964882001 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_816
  oldLo := (13700000000000001 / 20000000000000000 : ℚ)
  oldHi := (13720000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1593, piece_1594]
}

def cell_8386 : Cell := { cellDefaults with
  domain := ⟨(131750000000000007 / 400000000000000000 : ℚ), (52710000000000003 / 160000000000000000 : ℚ)⟩
  r := (15407576056107 / 20000000000000 : ℚ)
  w := (16872158978109 / 10000000000000 : ℚ)
  center := (527050000000000029 / 1600000000000000000 : ℚ)
  supportValue := (6852467861409207 / 10000000000000000 : ℚ)
  supportSlope := (-617183933057751 / 125000000000000 : ℚ)
  oldCenter := (6852467861409207 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_816
  oldLo := (13700000000000001 / 20000000000000000 : ℚ)
  oldHi := (1371 / 2000 : ℚ)
  oldPieces := [piece_1593]
}

def cell_8387 : Cell := { cellDefaults with
  domain := ⟨(52710000000000003 / 160000000000000000 : ℚ), (16475000000000001 / 50000000000000000 : ℚ)⟩
  r := (15407576056107 / 20000000000000 : ℚ)
  w := (16872158978109 / 10000000000000 : ℚ)
  center := (527150000000000031 / 1600000000000000000 : ℚ)
  supportValue := (1369876595294119 / 2000000000000000 : ℚ)
  supportSlope := (-9868592619106467 / 2000000000000000 : ℚ)
  oldCenter := (1369876595294119 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_816
  oldLo := (6847486033519553 / 10000000000000000 : ℚ)
  oldHi := (1371 / 2000 : ℚ)
  oldPieces := [piece_1592, piece_1593]
}

def cell_8388 : Cell := { cellDefaults with
  domain := ⟨(16475000000000001 / 50000000000000000 : ℚ), (16478125000000001 / 50000000000000000 : ℚ)⟩
  r := (19245279123307 / 25000000000000 : ℚ)
  w := (4215762493111 / 2500000000000 : ℚ)
  center := (16476562500000001 / 50000000000000000 : ℚ)
  supportValue := (428671530185447 / 625000000000000 : ℚ)
  supportSlope := (-4940630702023441 / 1000000000000000 : ℚ)
  oldCenter := (428671530185447 / 625000000000000 : ℚ)
  newCoefficients := coefficients_817
  oldLo := (1371 / 2000 : ℚ)
  oldHi := (1373 / 2000 : ℚ)
  oldPieces := [piece_1594, piece_1595]
}

def cell_8389 : Cell := { cellDefaults with
  domain := ⟨(16478125000000001 / 50000000000000000 : ℚ), (16481250000000001 / 50000000000000000 : ℚ)⟩
  r := (19245279123307 / 25000000000000 : ℚ)
  w := (4215762493111 / 2500000000000 : ℚ)
  center := (16479687500000001 / 50000000000000000 : ℚ)
  supportValue := (6855657653701079 / 10000000000000000 : ℚ)
  supportSlope := (-4937310798482031 / 1000000000000000 : ℚ)
  oldCenter := (6855657653701079 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_817
  oldLo := (13700000000000001 / 20000000000000000 : ℚ)
  oldHi := (13720000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1593, piece_1594]
}

def cell_8390 : Cell := { cellDefaults with
  domain := ⟨(16481250000000001 / 50000000000000000 : ℚ), (16484375000000001 / 50000000000000000 : ℚ)⟩
  r := (19245279123307 / 25000000000000 : ℚ)
  w := (4215762493111 / 2500000000000 : ℚ)
  center := (16482812500000001 / 50000000000000000 : ℚ)
  supportValue := (3426286390469617 / 5000000000000000 : ℚ)
  supportSlope := (-9868293149963847 / 2000000000000000 : ℚ)
  oldCenter := (3426286390469617 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_817
  oldLo := (13700000000000001 / 20000000000000000 : ℚ)
  oldHi := (1371 / 2000 : ℚ)
  oldPieces := [piece_1593]
}

def cell_8391 : Cell := { cellDefaults with
  domain := ⟨(16484375000000001 / 50000000000000000 : ℚ), (16487500000000001 / 50000000000000000 : ℚ)⟩
  r := (19245279123307 / 25000000000000 : ℚ)
  w := (4215762493111 / 2500000000000 : ℚ)
  center := (16485937500000001 / 50000000000000000 : ℚ)
  supportValue := (428093123846319 / 625000000000000 : ℚ)
  supportSlope := (-2465481690817839 / 500000000000000 : ℚ)
  oldCenter := (428093123846319 / 625000000000000 : ℚ)
  newCoefficients := coefficients_817
  oldLo := (6847486033519553 / 10000000000000000 : ℚ)
  oldHi := (1371 / 2000 : ℚ)
  oldPieces := [piece_1592, piece_1593]
}

def cell_8392 : Cell := { cellDefaults with
  domain := ⟨(16487500000000001 / 50000000000000000 : ℚ), (16490625000000001 / 50000000000000000 : ℚ)⟩
  r := (19245279123307 / 25000000000000 : ℚ)
  w := (4215762493111 / 2500000000000 : ℚ)
  center := (16489062500000001 / 50000000000000000 : ℚ)
  supportValue := (106975142539653 / 156250000000000 : ℚ)
  supportSlope := (-153989025659107 / 31250000000000 : ℚ)
  oldCenter := (106975142539653 / 156250000000000 : ℚ)
  newCoefficients := coefficients_817
  oldLo := (13680000000000001 / 20000000000000000 : ℚ)
  oldHi := (13700000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1590, piece_1591, piece_1592]
}

def cell_8393 : Cell := { cellDefaults with
  domain := ⟨(16490625000000001 / 50000000000000000 : ℚ), (16493750000000001 / 50000000000000000 : ℚ)⟩
  r := (19245279123307 / 25000000000000 : ℚ)
  w := (4215762493111 / 2500000000000 : ℚ)
  center := (16492187500000001 / 50000000000000000 : ℚ)
  supportValue := (6843330286376929 / 10000000000000000 : ℚ)
  supportSlope := (-4924604369158203 / 1000000000000000 : ℚ)
  oldCenter := (6843330286376929 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_817
  oldLo := (13680000000000001 / 20000000000000000 : ℚ)
  oldHi := (1369 / 2000 : ℚ)
  oldPieces := [piece_1590]
}

def cell_8394 : Cell := { cellDefaults with
  domain := ⟨(16493750000000001 / 50000000000000000 : ℚ), (16496875000000001 / 50000000000000000 : ℚ)⟩
  r := (19245279123307 / 25000000000000 : ℚ)
  w := (4215762493111 / 2500000000000 : ℚ)
  center := (16495312500000001 / 50000000000000000 : ℚ)
  supportValue := (6840253496822611 / 10000000000000000 : ℚ)
  supportSlope := (-4921313217586487 / 1000000000000000 : ℚ)
  oldCenter := (6840253496822611 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_817
  oldLo := (1367 / 2000 : ℚ)
  oldHi := (1369 / 2000 : ℚ)
  oldPieces := [piece_1589, piece_1590]
}

def cell_8395 : Cell := { cellDefaults with
  domain := ⟨(16496875000000001 / 50000000000000000 : ℚ), (16500000000000001 / 50000000000000000 : ℚ)⟩
  r := (19245279123307 / 25000000000000 : ℚ)
  w := (4215762493111 / 2500000000000 : ℚ)
  center := (16498437500000001 / 50000000000000000 : ℚ)
  supportValue := (3418589309579619 / 5000000000000000 : ℚ)
  supportSlope := (-76845306569151 / 15625000000000 : ℚ)
  oldCenter := (3418589309579619 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_817
  oldLo := (1367 / 2000 : ℚ)
  oldHi := (13680000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1589]
}

def cell_8396 : Cell := { cellDefaults with
  domain := ⟨(16500000000000001 / 50000000000000000 : ℚ), (16503125000000001 / 50000000000000000 : ℚ)⟩
  r := (19231112175053 / 25000000000000 : ℚ)
  w := (263343146227 / 156250000000 : ℚ)
  center := (16501562500000001 / 50000000000000000 : ℚ)
  supportValue := (3423256364312199 / 5000000000000000 : ℚ)
  supportSlope := (-4924308390393151 / 1000000000000000 : ℚ)
  oldCenter := (3423256364312199 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_818
  oldLo := (13680000000000001 / 20000000000000000 : ℚ)
  oldHi := (13700000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1590, piece_1591, piece_1592]
}

def cell_8397 : Cell := { cellDefaults with
  domain := ⟨(16503125000000001 / 50000000000000000 : ℚ), (16506250000000001 / 50000000000000000 : ℚ)⟩
  r := (19231112175053 / 25000000000000 : ℚ)
  w := (263343146227 / 156250000000 : ℚ)
  center := (16504687500000001 / 50000000000000000 : ℚ)
  supportValue := (1710858994438249 / 2500000000000000 : ℚ)
  supportSlope := (-2460643785278549 / 500000000000000 : ℚ)
  oldCenter := (1710858994438249 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_818
  oldLo := (13680000000000001 / 20000000000000000 : ℚ)
  oldHi := (1369 / 2000 : ℚ)
  oldPieces := [piece_1590]
}

def cell_8398 : Cell := { cellDefaults with
  domain := ⟨(16506250000000001 / 50000000000000000 : ℚ), (16509375000000001 / 50000000000000000 : ℚ)⟩
  r := (19231112175053 / 25000000000000 : ℚ)
  w := (263343146227 / 156250000000 : ℚ)
  center := (16507812500000001 / 50000000000000000 : ℚ)
  supportValue := (3420180629323809 / 5000000000000000 : ℚ)
  supportSlope := (-9835976509613431 / 2000000000000000 : ℚ)
  oldCenter := (3420180629323809 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_818
  oldLo := (1367 / 2000 : ℚ)
  oldHi := (1369 / 2000 : ℚ)
  oldPieces := [piece_1589, piece_1590]
}

def cell_8399 : Cell := { cellDefaults with
  domain := ⟨(16509375000000001 / 50000000000000000 : ℚ), (16512500000000001 / 50000000000000000 : ℚ)⟩
  r := (19231112175053 / 25000000000000 : ℚ)
  w := (263343146227 / 156250000000 : ℚ)
  center := (16510937500000001 / 50000000000000000 : ℚ)
  supportValue := (273491538264713 / 400000000000000 : ℚ)
  supportSlope := (-4914798880037097 / 1000000000000000 : ℚ)
  oldCenter := (273491538264713 / 400000000000000 : ℚ)
  newCoefficients := coefficients_818
  oldLo := (1367 / 2000 : ℚ)
  oldHi := (13680000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1589]
}

theorem check_8350 : cell_8350.check = true := by
  decide +kernel

theorem check_8351 : cell_8351.check = true := by
  decide +kernel

theorem check_8352 : cell_8352.check = true := by
  decide +kernel

theorem check_8353 : cell_8353.check = true := by
  decide +kernel

theorem check_8354 : cell_8354.check = true := by
  decide +kernel

theorem check_8355 : cell_8355.check = true := by
  decide +kernel

theorem check_8356 : cell_8356.check = true := by
  decide +kernel

theorem check_8357 : cell_8357.check = true := by
  decide +kernel

theorem check_8358 : cell_8358.check = true := by
  decide +kernel

theorem check_8359 : cell_8359.check = true := by
  decide +kernel

theorem check_8360 : cell_8360.check = true := by
  decide +kernel

theorem check_8361 : cell_8361.check = true := by
  decide +kernel

theorem check_8362 : cell_8362.check = true := by
  decide +kernel

theorem check_8363 : cell_8363.check = true := by
  decide +kernel

theorem check_8364 : cell_8364.check = true := by
  decide +kernel

theorem check_8365 : cell_8365.check = true := by
  decide +kernel

theorem check_8366 : cell_8366.check = true := by
  decide +kernel

theorem check_8367 : cell_8367.check = true := by
  decide +kernel

theorem check_8368 : cell_8368.check = true := by
  decide +kernel

theorem check_8369 : cell_8369.check = true := by
  decide +kernel

theorem check_8370 : cell_8370.check = true := by
  decide +kernel

theorem check_8371 : cell_8371.check = true := by
  decide +kernel

theorem check_8372 : cell_8372.check = true := by
  decide +kernel

theorem check_8373 : cell_8373.check = true := by
  decide +kernel

theorem check_8374 : cell_8374.check = true := by
  decide +kernel

theorem check_8375 : cell_8375.check = true := by
  decide +kernel

theorem check_8376 : cell_8376.check = true := by
  decide +kernel

theorem check_8377 : cell_8377.check = true := by
  decide +kernel

theorem check_8378 : cell_8378.check = true := by
  decide +kernel

theorem check_8379 : cell_8379.check = true := by
  decide +kernel

theorem check_8380 : cell_8380.check = true := by
  decide +kernel

theorem check_8381 : cell_8381.check = true := by
  decide +kernel

theorem check_8382 : cell_8382.check = true := by
  decide +kernel

theorem check_8383 : cell_8383.check = true := by
  decide +kernel

theorem check_8384 : cell_8384.check = true := by
  decide +kernel

theorem check_8385 : cell_8385.check = true := by
  decide +kernel

theorem check_8386 : cell_8386.check = true := by
  decide +kernel

theorem check_8387 : cell_8387.check = true := by
  decide +kernel

theorem check_8388 : cell_8388.check = true := by
  decide +kernel

theorem check_8389 : cell_8389.check = true := by
  decide +kernel

theorem check_8390 : cell_8390.check = true := by
  decide +kernel

theorem check_8391 : cell_8391.check = true := by
  decide +kernel

theorem check_8392 : cell_8392.check = true := by
  decide +kernel

theorem check_8393 : cell_8393.check = true := by
  decide +kernel

theorem check_8394 : cell_8394.check = true := by
  decide +kernel

theorem check_8395 : cell_8395.check = true := by
  decide +kernel

theorem check_8396 : cell_8396.check = true := by
  decide +kernel

theorem check_8397 : cell_8397.check = true := by
  decide +kernel

theorem check_8398 : cell_8398.check = true := by
  decide +kernel

theorem check_8399 : cell_8399.check = true := by
  decide +kernel

def cells : List Cell := [cell_8350, cell_8351, cell_8352, cell_8353, cell_8354, cell_8355, cell_8356, cell_8357, cell_8358, cell_8359, cell_8360, cell_8361, cell_8362, cell_8363, cell_8364, cell_8365, cell_8366, cell_8367, cell_8368, cell_8369, cell_8370, cell_8371, cell_8372, cell_8373, cell_8374, cell_8375, cell_8376, cell_8377, cell_8378, cell_8379, cell_8380, cell_8381, cell_8382, cell_8383, cell_8384, cell_8385, cell_8386, cell_8387, cell_8388, cell_8389, cell_8390, cell_8391, cell_8392, cell_8393, cell_8394, cell_8395, cell_8396, cell_8397, cell_8398, cell_8399]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8350, check_8351, check_8352, check_8353, check_8354, check_8355, check_8356, check_8357, check_8358, check_8359, check_8360, check_8361, check_8362, check_8363, check_8364, check_8365, check_8366, check_8367, check_8368, check_8369, check_8370, check_8371, check_8372, check_8373, check_8374, check_8375, check_8376, check_8377, check_8378, check_8379, check_8380, check_8381, check_8382, check_8383, check_8384, check_8385, check_8386, check_8387, check_8388, check_8389, check_8390, check_8391, check_8392, check_8393, check_8394, check_8395, check_8396, check_8397, check_8398, check_8399, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0167

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0167
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0167
open AnalyticBounds.ExpressionCertificate

theorem linked_8350 : Linked cell_8350 pieces := by
  link_source cell_8350 with piece_812 using piece_812_mem, ⟨piece_1606_mem, piece_1607_mem⟩

theorem linked_8351 : Linked cell_8351 pieces := by
  link_source cell_8351 with piece_812 using piece_812_mem, ⟨piece_1605_mem, piece_1606_mem⟩

theorem linked_8352 : Linked cell_8352 pieces := by
  link_source cell_8352 with piece_812 using piece_812_mem, piece_1605_mem

theorem linked_8353 : Linked cell_8353 pieces := by
  link_source cell_8353 with piece_812 using piece_812_mem, ⟨piece_1604_mem, piece_1605_mem⟩

theorem linked_8354 : Linked cell_8354 pieces := by
  link_source cell_8354 with piece_812 using piece_812_mem, ⟨piece_1603_mem, piece_1604_mem⟩

theorem linked_8355 : Linked cell_8355 pieces := by
  link_source cell_8355 with piece_812 using piece_812_mem, ⟨piece_1602_mem, piece_1603_mem⟩

theorem linked_8356 : Linked cell_8356 pieces := by
  link_source cell_8356 with piece_813 using piece_813_mem, piece_1605_mem

theorem linked_8357 : Linked cell_8357 pieces := by
  link_source cell_8357 with piece_813 using piece_813_mem, ⟨piece_1604_mem, piece_1605_mem⟩

theorem linked_8358 : Linked cell_8358 pieces := by
  link_source cell_8358 with piece_813 using piece_813_mem, ⟨piece_1603_mem, piece_1604_mem⟩

theorem linked_8359 : Linked cell_8359 pieces := by
  link_source cell_8359 with piece_813 using piece_813_mem, ⟨piece_1602_mem, piece_1603_mem⟩

theorem linked_8360 : Linked cell_8360 pieces := by
  link_source cell_8360 with piece_813 using piece_813_mem, ⟨piece_1601_mem, piece_1602_mem⟩

theorem linked_8361 : Linked cell_8361 pieces := by
  link_source cell_8361 with piece_813 using piece_813_mem, piece_1601_mem

theorem linked_8362 : Linked cell_8362 pieces := by
  link_source cell_8362 with piece_813 using piece_813_mem, ⟨piece_1600_mem, piece_1601_mem⟩

theorem linked_8363 : Linked cell_8363 pieces := by
  link_source cell_8363 with piece_813 using piece_813_mem, ⟨piece_1599_mem, piece_1600_mem⟩

theorem linked_8364 : Linked cell_8364 pieces := by
  link_source cell_8364 with piece_814 using piece_814_mem, ⟨piece_1601_mem, piece_1602_mem⟩

theorem linked_8365 : Linked cell_8365 pieces := by
  link_source cell_8365 with piece_814 using piece_814_mem, piece_1601_mem

theorem linked_8366 : Linked cell_8366 pieces := by
  link_source cell_8366 with piece_814 using piece_814_mem, ⟨piece_1600_mem, piece_1601_mem⟩

theorem linked_8367 : Linked cell_8367 pieces := by
  link_source cell_8367 with piece_814 using piece_814_mem, ⟨piece_1599_mem, piece_1600_mem⟩

theorem linked_8368 : Linked cell_8368 pieces := by
  link_source cell_8368 with piece_814 using piece_814_mem, piece_1599_mem

theorem linked_8369 : Linked cell_8369 pieces := by
  link_source cell_8369 with piece_814 using piece_814_mem, ⟨piece_1598_mem, piece_1599_mem⟩

theorem linked_8370 : Linked cell_8370 pieces := by
  link_source cell_8370 with piece_814 using piece_814_mem, piece_1598_mem

theorem linked_8371 : Linked cell_8371 pieces := by
  link_source cell_8371 with piece_814 using piece_814_mem, ⟨piece_1597_mem, piece_1598_mem⟩

theorem linked_8372 : Linked cell_8372 pieces := by
  link_source cell_8372 with piece_815 using piece_815_mem, piece_1599_mem

theorem linked_8373 : Linked cell_8373 pieces := by
  link_source cell_8373 with piece_815 using piece_815_mem, ⟨piece_1598_mem, piece_1599_mem⟩

theorem linked_8374 : Linked cell_8374 pieces := by
  link_source cell_8374 with piece_815 using piece_815_mem, piece_1598_mem

theorem linked_8375 : Linked cell_8375 pieces := by
  link_source cell_8375 with piece_815 using piece_815_mem, ⟨piece_1597_mem, piece_1598_mem⟩

theorem linked_8376 : Linked cell_8376 pieces := by
  link_source cell_8376 with piece_815 using piece_815_mem, ⟨piece_1596_mem, piece_1597_mem⟩

theorem linked_8377 : Linked cell_8377 pieces := by
  link_source cell_8377 with piece_815 using piece_815_mem, piece_1596_mem

theorem linked_8378 : Linked cell_8378 pieces := by
  link_source cell_8378 with piece_815 using piece_815_mem, ⟨piece_1595_mem, piece_1596_mem⟩

theorem linked_8379 : Linked cell_8379 pieces := by
  link_source cell_8379 with piece_815 using piece_815_mem, piece_1595_mem

theorem linked_8380 : Linked cell_8380 pieces := by
  link_source cell_8380 with piece_816 using piece_816_mem, ⟨piece_1596_mem, piece_1597_mem⟩

theorem linked_8381 : Linked cell_8381 pieces := by
  link_source cell_8381 with piece_816 using piece_816_mem, piece_1596_mem

theorem linked_8382 : Linked cell_8382 pieces := by
  link_source cell_8382 with piece_816 using piece_816_mem, ⟨piece_1595_mem, piece_1596_mem⟩

theorem linked_8383 : Linked cell_8383 pieces := by
  link_source cell_8383 with piece_816 using piece_816_mem, piece_1595_mem

theorem linked_8384 : Linked cell_8384 pieces := by
  link_source cell_8384 with piece_816 using piece_816_mem, ⟨piece_1594_mem, piece_1595_mem⟩

theorem linked_8385 : Linked cell_8385 pieces := by
  link_source cell_8385 with piece_816 using piece_816_mem, ⟨piece_1593_mem, piece_1594_mem⟩

theorem linked_8386 : Linked cell_8386 pieces := by
  link_source cell_8386 with piece_816 using piece_816_mem, piece_1593_mem

theorem linked_8387 : Linked cell_8387 pieces := by
  link_source cell_8387 with piece_816 using piece_816_mem, ⟨piece_1592_mem, piece_1593_mem⟩

theorem linked_8388 : Linked cell_8388 pieces := by
  link_source cell_8388 with piece_817 using piece_817_mem, ⟨piece_1594_mem, piece_1595_mem⟩

theorem linked_8389 : Linked cell_8389 pieces := by
  link_source cell_8389 with piece_817 using piece_817_mem, ⟨piece_1593_mem, piece_1594_mem⟩

theorem linked_8390 : Linked cell_8390 pieces := by
  link_source cell_8390 with piece_817 using piece_817_mem, piece_1593_mem

theorem linked_8391 : Linked cell_8391 pieces := by
  link_source cell_8391 with piece_817 using piece_817_mem, ⟨piece_1592_mem, piece_1593_mem⟩

theorem linked_8392 : Linked cell_8392 pieces := by
  link_source cell_8392 with piece_817 using piece_817_mem, ⟨piece_1590_mem, ⟨piece_1591_mem, piece_1592_mem⟩⟩

theorem linked_8393 : Linked cell_8393 pieces := by
  link_source cell_8393 with piece_817 using piece_817_mem, piece_1590_mem

theorem linked_8394 : Linked cell_8394 pieces := by
  link_source cell_8394 with piece_817 using piece_817_mem, ⟨piece_1589_mem, piece_1590_mem⟩

theorem linked_8395 : Linked cell_8395 pieces := by
  link_source cell_8395 with piece_817 using piece_817_mem, piece_1589_mem

theorem linked_8396 : Linked cell_8396 pieces := by
  link_source cell_8396 with piece_818 using piece_818_mem, ⟨piece_1590_mem, ⟨piece_1591_mem, piece_1592_mem⟩⟩

theorem linked_8397 : Linked cell_8397 pieces := by
  link_source cell_8397 with piece_818 using piece_818_mem, piece_1590_mem

theorem linked_8398 : Linked cell_8398 pieces := by
  link_source cell_8398 with piece_818 using piece_818_mem, ⟨piece_1589_mem, piece_1590_mem⟩

theorem linked_8399 : Linked cell_8399 pieces := by
  link_source cell_8399 with piece_818 using piece_818_mem, piece_1589_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0167.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0167.cells,List.forall_mem_cons]
  exact ⟨linked_8350, linked_8351, linked_8352, linked_8353, linked_8354, linked_8355, linked_8356, linked_8357, linked_8358, linked_8359, linked_8360, linked_8361, linked_8362, linked_8363, linked_8364, linked_8365, linked_8366, linked_8367, linked_8368, linked_8369, linked_8370, linked_8371, linked_8372, linked_8373, linked_8374, linked_8375, linked_8376, linked_8377, linked_8378, linked_8379, linked_8380, linked_8381, linked_8382, linked_8383, linked_8384, linked_8385, linked_8386, linked_8387, linked_8388, linked_8389, linked_8390, linked_8391, linked_8392, linked_8393, linked_8394, linked_8395, linked_8396, linked_8397, linked_8398, linked_8399, by simp⟩

theorem covered : covers (32712500000000001 / 100000000000000000 : ℚ) (16512500000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0167.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0167
end
