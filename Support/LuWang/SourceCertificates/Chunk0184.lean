import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0184
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(6081 / 16000 : ℚ), (3041 / 8000 : ℚ)⟩
  branch := .left
  r := (7160250799643 / 10000000000000 : ℚ)
  w := (8012325803809 / 5000000000000 : ℚ)
  center := (12163 / 32000 : ℚ)
  supportValue := (5805764424053551 / 10000000000000000 : ℚ)
  supportSlope := (-3635983256213393 / 1000000000000000 : ℚ)
  oldCenter := (5805764424053551 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_930
  oldLo := (57800000000000007 / 100000000000000000 : ℚ)
  oldHi := (57850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1359]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9200 : Cell := { cellDefaults with
  r := (35849472141687 / 50000000000000 : ℚ)
  w := (8019592619969 / 5000000000000 : ℚ)
  newCoefficients := coefficients_927
  oldLo := (58000000000000007 / 100000000000000000 : ℚ)
  oldHi := (58100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1364, piece_1365]
}

def cell_9201 : Cell := { cellDefaults with
  domain := ⟨(3041 / 8000 : ℚ), (6083 / 16000 : ℚ)⟩
  r := (35849472141687 / 50000000000000 : ℚ)
  w := (8019592619969 / 5000000000000 : ℚ)
  center := (2433 / 6400 : ℚ)
  supportValue := (290174623955901 / 500000000000000 : ℚ)
  supportSlope := (-18170811026525513 / 5000000000000000 : ℚ)
  oldCenter := (290174623955901 / 500000000000000 : ℚ)
  newCoefficients := coefficients_927
  oldLo := (58000000000000007 / 100000000000000000 : ℚ)
  oldHi := (29025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1364]
}

def cell_9202 : Cell := { cellDefaults with
  domain := ⟨(6083 / 16000 : ℚ), (1521 / 4000 : ℚ)⟩
  r := (35849472141687 / 50000000000000 : ℚ)
  w := (8019592619969 / 5000000000000 : ℚ)
  center := (12167 / 32000 : ℚ)
  supportValue := (2900610908427519 / 5000000000000000 : ℚ)
  supportSlope := (-36319554164734313 / 10000000000000000 : ℚ)
  oldCenter := (2900610908427519 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_927
  oldLo := (58000000000000007 / 100000000000000000 : ℚ)
  oldHi := (29025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1364]
}

def cell_9203 : Cell := { cellDefaults with
  domain := ⟨(1521 / 4000 : ℚ), (1217 / 3200 : ℚ)⟩
  r := (35849472141687 / 50000000000000 : ℚ)
  w := (8019592619969 / 5000000000000 : ℚ)
  center := (12169 / 32000 : ℚ)
  supportValue := (5798952399344699 / 10000000000000000 : ℚ)
  supportSlope := (-36301958057443073 / 10000000000000000 : ℚ)
  oldCenter := (5798952399344699 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_927
  oldLo := (5796648044692737 / 10000000000000000 : ℚ)
  oldHi := (29025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1363, piece_1364]
}

def cell_9204 : Cell := { cellDefaults with
  domain := ⟨(1217 / 3200 : ℚ), (3043 / 8000 : ℚ)⟩
  r := (35849472141687 / 50000000000000 : ℚ)
  w := (8019592619969 / 5000000000000 : ℚ)
  center := (12171 / 32000 : ℚ)
  supportValue := (5796684204557339 / 10000000000000000 : ℚ)
  supportSlope := (-18140044323473603 / 5000000000000000 : ℚ)
  oldCenter := (5796684204557339 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_927
  oldLo := (28975000000000001 / 50000000000000000 : ℚ)
  oldHi := (58000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1362, piece_1363]
}

def cell_9205 : Cell := { cellDefaults with
  domain := ⟨(3043 / 8000 : ℚ), (6087 / 16000 : ℚ)⟩
  r := (35849472141687 / 50000000000000 : ℚ)
  w := (8019592619969 / 5000000000000 : ℚ)
  center := (12173 / 32000 : ℚ)
  supportValue := (144860432792323 / 250000000000000 : ℚ)
  supportSlope := (-3626158318411399 / 1000000000000000 : ℚ)
  oldCenter := (144860432792323 / 250000000000000 : ℚ)
  newCoefficients := coefficients_927
  oldLo := (57900000000000007 / 100000000000000000 : ℚ)
  oldHi := (5796648044692737 / 10000000000000000 : ℚ)
  oldPieces := [piece_1361, piece_1362]
}

def cell_9206 : Cell := { cellDefaults with
  domain := ⟨(6087 / 16000 : ℚ), (761 / 2000 : ℚ)⟩
  r := (35849472141687 / 50000000000000 : ℚ)
  w := (8019592619969 / 5000000000000 : ℚ)
  center := (487 / 1280 : ℚ)
  supportValue := (5792151580185059 / 10000000000000000 : ℚ)
  supportSlope := (-1812034137023133 / 500000000000000 : ℚ)
  oldCenter := (5792151580185059 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_927
  oldLo := (57900000000000007 / 100000000000000000 : ℚ)
  oldHi := (28975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1361]
}

def cell_9207 : Cell := { cellDefaults with
  domain := ⟨(761 / 2000 : ℚ), (38055865921787707 / 100000000000000000 : ℚ)⟩
  r := (71650689140499 / 100000000000000 : ℚ)
  w := (801595515293 / 500000000000 : ℚ)
  center := (76105865921787707 / 200000000000000000 : ℚ)
  supportValue := (5799278766340553 / 10000000000000000 : ℚ)
  supportSlope := (-7256044819218447 / 2000000000000000 : ℚ)
  oldCenter := (5799278766340553 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_928
  oldLo := (5796648044692737 / 10000000000000000 : ℚ)
  oldHi := (29025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1363, piece_1364]
}

def cell_9208 : Cell := { cellDefaults with
  domain := ⟨(38055865921787707 / 100000000000000000 : ℚ), (30452346368715083 / 80000000000000000 : ℚ)⟩
  r := (71650689140499 / 100000000000000 : ℚ)
  w := (801595515293 / 500000000000 : ℚ)
  center := (304485195530726243 / 800000000000000000 : ℚ)
  supportValue := (1449121064465953 / 2500000000000000 : ℚ)
  supportSlope := (-1812707230013037 / 500000000000000 : ℚ)
  oldCenter := (1449121064465953 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_929
  oldLo := (57900000000000007 / 100000000000000000 : ℚ)
  oldHi := (58000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1361, piece_1362, piece_1363]
}

def cell_9209 : Cell := { cellDefaults with
  domain := ⟨(30452346368715083 / 80000000000000000 : ℚ), (76150000000000001 / 200000000000000000 : ℚ)⟩
  r := (71650689140499 / 100000000000000 : ℚ)
  w := (801595515293 / 500000000000 : ℚ)
  center := (304561731843575417 / 800000000000000000 : ℚ)
  supportValue := (5793017193879569 / 10000000000000000 : ℚ)
  supportSlope := (-362247934383937 / 100000000000000 : ℚ)
  oldCenter := (5793017193879569 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_929
  oldLo := (57900000000000007 / 100000000000000000 : ℚ)
  oldHi := (28975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1361]
}

def cell_9210 : Cell := { cellDefaults with
  domain := ⟨(76150000000000001 / 200000000000000000 : ℚ), (60930000000000001 / 160000000000000000 : ℚ)⟩
  r := (71650689140499 / 100000000000000 : ℚ)
  w := (801595515293 / 500000000000 : ℚ)
  center := (609250000000000009 / 1600000000000000000 : ℚ)
  supportValue := (361884337036111 / 625000000000000 : ℚ)
  supportSlope := (-45248770517591 / 12500000000000 : ℚ)
  oldCenter := (361884337036111 / 625000000000000 : ℚ)
  newCoefficients := coefficients_929
  oldLo := (57850000000000001 / 100000000000000000 : ℚ)
  oldHi := (28975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1360, piece_1361]
}

def cell_9211 : Cell := { cellDefaults with
  domain := ⟨(60930000000000001 / 160000000000000000 : ℚ), (152350000000000003 / 400000000000000000 : ℚ)⟩
  r := (71650689140499 / 100000000000000 : ℚ)
  w := (801595515293 / 500000000000 : ℚ)
  center := (609350000000000011 / 1600000000000000000 : ℚ)
  supportValue := (2315154997747 / 4000000000000 : ℚ)
  supportSlope := (-18089841754722251 / 5000000000000000 : ℚ)
  oldCenter := (2315154997747 / 4000000000000 : ℚ)
  newCoefficients := coefficients_929
  oldLo := (57850000000000001 / 100000000000000000 : ℚ)
  oldHi := (57900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1360]
}

def cell_9212 : Cell := { cellDefaults with
  domain := ⟨(152350000000000003 / 400000000000000000 : ℚ), (304750000000000007 / 800000000000000000 : ℚ)⟩
  r := (71650689140499 / 100000000000000 : ℚ)
  w := (801595515293 / 500000000000 : ℚ)
  center := (609450000000000013 / 1600000000000000000 : ℚ)
  supportValue := (5785626949416817 / 10000000000000000 : ℚ)
  supportSlope := (-2259923682523767 / 625000000000000 : ℚ)
  oldCenter := (5785626949416817 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_929
  oldHi := (57900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1359, piece_1360]
}

def cell_9213 : Cell := { cellDefaults with
  domain := ⟨(304750000000000007 / 800000000000000000 : ℚ), (38100000000000001 / 100000000000000000 : ℚ)⟩
  r := (71650689140499 / 100000000000000 : ℚ)
  w := (801595515293 / 500000000000 : ℚ)
  center := (121910000000000003 / 320000000000000000 : ℚ)
  supportValue := (1445841891254419 / 2500000000000000 : ℚ)
  supportSlope := (-36140459790984623 / 10000000000000000 : ℚ)
  oldCenter := (1445841891254419 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_929
  oldPieces := [piece_1359]
}

def cell_9214 : Cell := { cellDefaults with
  domain := ⟨(38100000000000001 / 100000000000000000 : ℚ), (38106250000000001 / 100000000000000000 : ℚ)⟩
  center := (38103125000000001 / 100000000000000000 : ℚ)
  supportValue := (579040625847839 / 1000000000000000 : ℚ)
  supportSlope := (-36176724391019377 / 10000000000000000 : ℚ)
  oldCenter := (579040625847839 / 1000000000000000 : ℚ)
  oldLo := (57850000000000001 / 100000000000000000 : ℚ)
  oldHi := (28975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1360, piece_1361]
}

def cell_9215 : Cell := { cellDefaults with
  domain := ⟨(38106250000000001 / 100000000000000000 : ℚ), (38112500000000001 / 100000000000000000 : ℚ)⟩
  center := (38109375000000001 / 100000000000000000 : ℚ)
  supportValue := (2894072876130971 / 5000000000000000 : ℚ)
  supportSlope := (-2259872529188911 / 625000000000000 : ℚ)
  oldCenter := (2894072876130971 / 5000000000000000 : ℚ)
  oldLo := (57850000000000001 / 100000000000000000 : ℚ)
  oldHi := (57900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1360]
}

def cell_9216 : Cell := { cellDefaults with
  domain := ⟨(38112500000000001 / 100000000000000000 : ℚ), (38118750000000001 / 100000000000000000 : ℚ)⟩
  center := (38115625000000001 / 100000000000000000 : ℚ)
  supportValue := (289294328186907 / 500000000000000 : ℚ)
  supportSlope := (-722731196674431 / 200000000000000 : ℚ)
  oldCenter := (289294328186907 / 500000000000000 : ℚ)
  oldHi := (57900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1359, piece_1360]
}

def cell_9217 : Cell := { cellDefaults with
  domain := ⟨(38118750000000001 / 100000000000000000 : ℚ), (38125000000000001 / 100000000000000000 : ℚ)⟩
  center := (38121875000000001 / 100000000000000000 : ℚ)
  supportValue := (1156725713356727 / 2000000000000000 : ℚ)
  supportSlope := (-18059408562081103 / 5000000000000000 : ℚ)
  oldCenter := (1156725713356727 / 2000000000000000 : ℚ)
  oldPieces := [piece_1359]
}

def cell_9218 : Cell := { cellDefaults with
  domain := ⟨(38125000000000001 / 100000000000000000 : ℚ), (38131250000000001 / 100000000000000000 : ℚ)⟩
  center := (38128125000000001 / 100000000000000000 : ℚ)
  supportValue := (5781371824054781 / 10000000000000000 : ℚ)
  supportSlope := (-7219386820395357 / 2000000000000000 : ℚ)
  oldCenter := (5781371824054781 / 10000000000000000 : ℚ)
  oldPieces := [piece_1359]
}

def cell_9219 : Cell := { cellDefaults with
  domain := ⟨(38131250000000001 / 100000000000000000 : ℚ), (38137500000000001 / 100000000000000000 : ℚ)⟩
  center := (38134375000000001 / 100000000000000000 : ℚ)
  supportValue := (5779116334077097 / 10000000000000000 : ℚ)
  supportSlope := (-4509903124128023 / 1250000000000000 : ℚ)
  oldCenter := (5779116334077097 / 10000000000000000 : ℚ)
  oldLo := (57750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1358, piece_1359]
}

def cell_9220 : Cell := { cellDefaults with
  domain := ⟨(38137500000000001 / 100000000000000000 : ℚ), (38143750000000001 / 100000000000000000 : ℚ)⟩
  center := (38140625000000001 / 100000000000000000 : ℚ)
  supportValue := (5776862033764261 / 10000000000000000 : ℚ)
  supportSlope := (-901446709237419 / 250000000000000 : ℚ)
  oldCenter := (5776862033764261 / 10000000000000000 : ℚ)
  oldLo := (57750000000000001 / 100000000000000000 : ℚ)
  oldHi := (57800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1358]
}

def cell_9221 : Cell := { cellDefaults with
  domain := ⟨(38143750000000001 / 100000000000000000 : ℚ), (38150000000000001 / 100000000000000000 : ℚ)⟩
  center := (38146875000000001 / 100000000000000000 : ℚ)
  supportValue := (577460904805689 / 1000000000000000 : ℚ)
  supportSlope := (-36039171949902027 / 10000000000000000 : ℚ)
  oldCenter := (577460904805689 / 1000000000000000 : ℚ)
  oldLo := (57700000000000007 / 100000000000000000 : ℚ)
  oldHi := (57800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1357, piece_1358]
}

def cell_9222 : Cell := { cellDefaults with
  domain := ⟨(38150000000000001 / 100000000000000000 : ℚ), (38156250000000001 / 100000000000000000 : ℚ)⟩
  r := (71554397041633 / 100000000000000 : ℚ)
  w := (16017409076987 / 10000000000000 : ℚ)
  center := (38153125000000001 / 100000000000000000 : ℚ)
  supportValue := (2890814690508167 / 5000000000000000 : ℚ)
  supportSlope := (-3607525136175127 / 1000000000000000 : ℚ)
  oldCenter := (2890814690508167 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_931
  oldPieces := [piece_1359]
}

def cell_9223 : Cell := { cellDefaults with
  domain := ⟨(38156250000000001 / 100000000000000000 : ℚ), (38162500000000001 / 100000000000000000 : ℚ)⟩
  r := (71554397041633 / 100000000000000 : ℚ)
  w := (16017409076987 / 10000000000000 : ℚ)
  center := (38159375000000001 / 100000000000000000 : ℚ)
  supportValue := (2889687639171379 / 5000000000000000 : ℚ)
  supportSlope := (-36057047847108947 / 10000000000000000 : ℚ)
  oldCenter := (2889687639171379 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_931
  oldLo := (57750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1358, piece_1359]
}

def cell_9224 : Cell := { cellDefaults with
  domain := ⟨(38162500000000001 / 100000000000000000 : ℚ), (38168750000000001 / 100000000000000000 : ℚ)⟩
  r := (71554397041633 / 100000000000000 : ℚ)
  w := (16017409076987 / 10000000000000 : ℚ)
  center := (38165625000000001 / 100000000000000000 : ℚ)
  supportValue := (5777122329474793 / 10000000000000000 : ℚ)
  supportSlope := (-7207253087784693 / 2000000000000000 : ℚ)
  oldCenter := (5777122329474793 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_931
  oldLo := (57750000000000001 / 100000000000000000 : ℚ)
  oldHi := (57800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1358]
}

def cell_9225 : Cell := { cellDefaults with
  domain := ⟨(38168750000000001 / 100000000000000000 : ℚ), (38175000000000001 / 100000000000000000 : ℚ)⟩
  r := (71554397041633 / 100000000000000 : ℚ)
  w := (16017409076987 / 10000000000000 : ℚ)
  center := (38171875000000001 / 100000000000000000 : ℚ)
  supportValue := (1154974145304277 / 2000000000000000 : ℚ)
  supportSlope := (-36017067878226783 / 10000000000000000 : ℚ)
  oldCenter := (1154974145304277 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_931
  oldLo := (57700000000000007 / 100000000000000000 : ℚ)
  oldHi := (57800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1357, piece_1358]
}

def cell_9226 : Cell := { cellDefaults with
  domain := ⟨(38175000000000001 / 100000000000000000 : ℚ), (38181250000000001 / 100000000000000000 : ℚ)⟩
  r := (71554397041633 / 100000000000000 : ℚ)
  w := (16017409076987 / 10000000000000 : ℚ)
  center := (38178125000000001 / 100000000000000000 : ℚ)
  supportValue := (5772620211608903 / 10000000000000000 : ℚ)
  supportSlope := (-3599733242303671 / 1000000000000000 : ℚ)
  oldCenter := (5772620211608903 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_931
  oldLo := (57700000000000007 / 100000000000000000 : ℚ)
  oldHi := (57750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1357]
}

def cell_9227 : Cell := { cellDefaults with
  domain := ⟨(38181250000000001 / 100000000000000000 : ℚ), (38187500000000001 / 100000000000000000 : ℚ)⟩
  r := (71554397041633 / 100000000000000 : ℚ)
  w := (16017409076987 / 10000000000000 : ℚ)
  center := (38184375000000001 / 100000000000000000 : ℚ)
  supportValue := (2885185529136031 / 5000000000000000 : ℚ)
  supportSlope := (-2248570220271251 / 625000000000000 : ℚ)
  oldCenter := (2885185529136031 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_931
  oldLo := (57650000000000001 / 100000000000000000 : ℚ)
  oldHi := (57750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1356, piece_1357]
}

def cell_9228 : Cell := { cellDefaults with
  domain := ⟨(38187500000000001 / 100000000000000000 : ℚ), (38193750000000001 / 100000000000000000 : ℚ)⟩
  r := (71554397041633 / 100000000000000 : ℚ)
  w := (16017409076987 / 10000000000000 : ℚ)
  center := (38190625000000001 / 100000000000000000 : ℚ)
  supportValue := (2884061510961473 / 5000000000000000 : ℚ)
  supportSlope := (-17979226194650977 / 5000000000000000 : ℚ)
  oldCenter := (2884061510961473 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_931
  oldLo := (57650000000000001 / 100000000000000000 : ℚ)
  oldHi := (57700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1356]
}

def cell_9229 : Cell := { cellDefaults with
  domain := ⟨(38193750000000001 / 100000000000000000 : ℚ), (38200000000000001 / 100000000000000000 : ℚ)⟩
  r := (71554397041633 / 100000000000000 : ℚ)
  w := (16017409076987 / 10000000000000 : ℚ)
  center := (38196875000000001 / 100000000000000000 : ℚ)
  supportValue := (2882938148976753 / 5000000000000000 : ℚ)
  supportSlope := (-449215189472163 / 125000000000000 : ℚ)
  oldCenter := (2882938148976753 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_931
  oldLo := (57600000000000007 / 100000000000000000 : ℚ)
  oldHi := (57700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1355, piece_1356]
}

def cell_9230 : Cell := { cellDefaults with
  domain := ⟨(38200000000000001 / 100000000000000000 : ℚ), (38206250000000001 / 100000000000000000 : ℚ)⟩
  r := (35753179111639 / 50000000000000 : ℚ)
  w := (3202036539233 / 2000000000000 : ℚ)
  center := (38203125000000001 / 100000000000000000 : ℚ)
  supportValue := (2886439077358951 / 5000000000000000 : ℚ)
  supportSlope := (-17987863556729877 / 5000000000000000 : ℚ)
  oldCenter := (2886439077358951 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_932
  oldLo := (57700000000000007 / 100000000000000000 : ℚ)
  oldHi := (57750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1357]
}

def cell_9231 : Cell := { cellDefaults with
  domain := ⟨(38206250000000001 / 100000000000000000 : ℚ), (38212500000000001 / 100000000000000000 : ℚ)⟩
  r := (35753179111639 / 50000000000000 : ℚ)
  w := (3202036539233 / 2000000000000 : ℚ)
  center := (38209375000000001 / 100000000000000000 : ℚ)
  supportValue := (230825214018063 / 400000000000000 : ℚ)
  supportSlope := (-719100394299943 / 200000000000000 : ℚ)
  oldCenter := (230825214018063 / 400000000000000 : ℚ)
  newCoefficients := coefficients_932
  oldLo := (57650000000000001 / 100000000000000000 : ℚ)
  oldHi := (57750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1356, piece_1357]
}

def cell_9232 : Cell := { cellDefaults with
  domain := ⟨(38212500000000001 / 100000000000000000 : ℚ), (38218750000000001 / 100000000000000000 : ℚ)⟩
  r := (35753179111639 / 50000000000000 : ℚ)
  w := (3202036539233 / 2000000000000 : ℚ)
  center := (38215625000000001 / 100000000000000000 : ℚ)
  supportValue := (576838369434139 / 1000000000000000 : ℚ)
  supportSlope := (-17968463710502647 / 5000000000000000 : ℚ)
  oldCenter := (576838369434139 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_932
  oldLo := (57650000000000001 / 100000000000000000 : ℚ)
  oldHi := (57700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1356]
}

def cell_9233 : Cell := { cellDefaults with
  domain := ⟨(38218750000000001 / 100000000000000000 : ℚ), (38225000000000001 / 100000000000000000 : ℚ)⟩
  r := (35753179111639 / 50000000000000 : ℚ)
  w := (3202036539233 / 2000000000000 : ℚ)
  center := (38221875000000001 / 100000000000000000 : ℚ)
  supportValue := (5766138314423661 / 10000000000000000 : ℚ)
  supportSlope := (-1436608556707597 / 400000000000000 : ℚ)
  oldCenter := (5766138314423661 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_932
  oldLo := (57650000000000001 / 100000000000000000 : ℚ)
  oldHi := (57700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1356]
}

def cell_9234 : Cell := { cellDefaults with
  domain := ⟨(38225000000000001 / 100000000000000000 : ℚ), (38231250000000001 / 100000000000000000 : ℚ)⟩
  r := (35753179111639 / 50000000000000 : ℚ)
  w := (3202036539233 / 2000000000000 : ℚ)
  center := (38228125000000001 / 100000000000000000 : ℚ)
  supportValue := (5763894147032979 / 10000000000000000 : ℚ)
  supportSlope := (-35898150558857367 / 10000000000000000 : ℚ)
  oldCenter := (5763894147032979 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_932
  oldLo := (57600000000000007 / 100000000000000000 : ℚ)
  oldHi := (57700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1355, piece_1356]
}

def cell_9235 : Cell := { cellDefaults with
  domain := ⟨(38231250000000001 / 100000000000000000 : ℚ), (38237500000000001 / 100000000000000000 : ℚ)⟩
  r := (35753179111639 / 50000000000000 : ℚ)
  w := (3202036539233 / 2000000000000 : ℚ)
  center := (38234375000000001 / 100000000000000000 : ℚ)
  supportValue := (5761651188162571 / 10000000000000000 : ℚ)
  supportSlope := (-17938243657198427 / 5000000000000000 : ℚ)
  oldCenter := (5761651188162571 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_932
  oldLo := (57600000000000007 / 100000000000000000 : ℚ)
  oldHi := (57650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1355]
}

def cell_9236 : Cell := { cellDefaults with
  domain := ⟨(38237500000000001 / 100000000000000000 : ℚ), (38243750000000001 / 100000000000000000 : ℚ)⟩
  r := (35753179111639 / 50000000000000 : ℚ)
  w := (3202036539233 / 2000000000000 : ℚ)
  center := (38240625000000001 / 100000000000000000 : ℚ)
  supportValue := (2879704753626201 / 5000000000000000 : ℚ)
  supportSlope := (-448229789382637 / 125000000000000 : ℚ)
  oldCenter := (2879704753626201 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_932
  oldLo := (57550000000000001 / 100000000000000000 : ℚ)
  oldHi := (57650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1354, piece_1355]
}

def cell_9237 : Cell := { cellDefaults with
  domain := ⟨(38243750000000001 / 100000000000000000 : ℚ), (38250000000000001 / 100000000000000000 : ℚ)⟩
  r := (35753179111639 / 50000000000000 : ℚ)
  w := (3202036539233 / 2000000000000 : ℚ)
  center := (38246875000000001 / 100000000000000000 : ℚ)
  supportValue := (46057351729023 / 80000000000000 : ℚ)
  supportSlope := (-3583781353917459 / 1000000000000000 : ℚ)
  oldCenter := (46057351729023 / 80000000000000 : ℚ)
  newCoefficients := coefficients_932
  oldLo := (57550000000000001 / 100000000000000000 : ℚ)
  oldHi := (57600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1354]
}

def cell_9238 : Cell := { cellDefaults with
  domain := ⟨(38250000000000001 / 100000000000000000 : ℚ), (38256250000000001 / 100000000000000000 : ℚ)⟩
  r := (17864597870277 / 25000000000000 : ℚ)
  w := (1000185700599 / 625000000000 : ℚ)
  center := (38253125000000001 / 100000000000000000 : ℚ)
  supportValue := (2882076461340951 / 5000000000000000 : ℚ)
  supportSlope := (-179380444169297 / 50000000000000 : ℚ)
  oldCenter := (2882076461340951 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_933
  oldLo := (57600000000000007 / 100000000000000000 : ℚ)
  oldHi := (57700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1355, piece_1356]
}

def cell_9239 : Cell := { cellDefaults with
  domain := ⟨(38256250000000001 / 100000000000000000 : ℚ), (38262500000000001 / 100000000000000000 : ℚ)⟩
  r := (17864597870277 / 25000000000000 : ℚ)
  w := (1000185700599 / 625000000000 : ℚ)
  center := (38259375000000001 / 100000000000000000 : ℚ)
  supportValue := (5761911307837897 / 10000000000000000 : ℚ)
  supportSlope := (-560234421762007 / 156250000000000 : ℚ)
  oldCenter := (5761911307837897 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_933
  oldLo := (57600000000000007 / 100000000000000000 : ℚ)
  oldHi := (57650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1355]
}

def cell_9240 : Cell := { cellDefaults with
  domain := ⟨(38262500000000001 / 100000000000000000 : ℚ), (38268750000000001 / 100000000000000000 : ℚ)⟩
  r := (17864597870277 / 25000000000000 : ℚ)
  w := (1000185700599 / 625000000000 : ℚ)
  center := (38265625000000001 / 100000000000000000 : ℚ)
  supportValue := (5759671002508779 / 10000000000000000 : ℚ)
  supportSlope := (-35836393763659657 / 10000000000000000 : ℚ)
  oldCenter := (5759671002508779 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_933
  oldLo := (57550000000000001 / 100000000000000000 : ℚ)
  oldHi := (57650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1354, piece_1355]
}

def cell_9241 : Cell := { cellDefaults with
  domain := ⟨(38268750000000001 / 100000000000000000 : ℚ), (38275000000000001 / 100000000000000000 : ℚ)⟩
  r := (17864597870277 / 25000000000000 : ℚ)
  w := (1000185700599 / 625000000000 : ℚ)
  center := (38271875000000001 / 100000000000000000 : ℚ)
  supportValue := (2878715900206107 / 5000000000000000 : ℚ)
  supportSlope := (-1790820457616249 / 500000000000000 : ℚ)
  oldCenter := (2878715900206107 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_933
  oldLo := (57550000000000001 / 100000000000000000 : ℚ)
  oldHi := (57600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1354]
}

def cell_9242 : Cell := { cellDefaults with
  domain := ⟨(38275000000000001 / 100000000000000000 : ℚ), (38281250000000001 / 100000000000000000 : ℚ)⟩
  r := (17864597870277 / 25000000000000 : ℚ)
  w := (1000185700599 / 625000000000 : ℚ)
  center := (38278125000000001 / 100000000000000000 : ℚ)
  supportValue := (5755193949677241 / 10000000000000000 : ℚ)
  supportSlope := (-7159346854862747 / 2000000000000000 : ℚ)
  oldCenter := (5755193949677241 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_933
  oldLo := (57500000000000007 / 100000000000000000 : ℚ)
  oldHi := (57600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1353, piece_1354]
}

def cell_9243 : Cell := { cellDefaults with
  domain := ⟨(38281250000000001 / 100000000000000000 : ℚ), (38287500000000001 / 100000000000000000 : ℚ)⟩
  r := (17864597870277 / 25000000000000 : ℚ)
  w := (1000185700599 / 625000000000 : ℚ)
  center := (38284375000000001 / 100000000000000000 : ℚ)
  supportValue := (5752957182174517 / 10000000000000000 : ℚ)
  supportSlope := (-1788893400481939 / 500000000000000 : ℚ)
  oldCenter := (5752957182174517 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_933
  oldLo := (57500000000000007 / 100000000000000000 : ℚ)
  oldHi := (57550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1353]
}

def cell_9244 : Cell := { cellDefaults with
  domain := ⟨(38287500000000001 / 100000000000000000 : ℚ), (38293750000000001 / 100000000000000000 : ℚ)⟩
  r := (17864597870277 / 25000000000000 : ℚ)
  w := (1000185700599 / 625000000000 : ℚ)
  center := (38290625000000001 / 100000000000000000 : ℚ)
  supportValue := (5750721739629089 / 10000000000000000 : ℚ)
  supportSlope := (-178785551606353 / 50000000000000 : ℚ)
  oldCenter := (5750721739629089 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_933
  oldLo := (57450000000000001 / 100000000000000000 : ℚ)
  oldHi := (57550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1352, piece_1353]
}

def cell_9245 : Cell := { cellDefaults with
  domain := ⟨(38293750000000001 / 100000000000000000 : ℚ), (38300000000000001 / 100000000000000000 : ℚ)⟩
  r := (17864597870277 / 25000000000000 : ℚ)
  w := (1000185700599 / 625000000000 : ℚ)
  center := (38296875000000001 / 100000000000000000 : ℚ)
  supportValue := (17964023273781 / 31250000000000 : ℚ)
  supportSlope := (-3573937956939943 / 1000000000000000 : ℚ)
  oldCenter := (17964023273781 / 31250000000000 : ℚ)
  newCoefficients := coefficients_933
  oldLo := (57450000000000001 / 100000000000000000 : ℚ)
  oldHi := (57500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1352]
}

def cell_9246 : Cell := { cellDefaults with
  domain := ⟨(38300000000000001 / 100000000000000000 : ℚ), (38306250000000001 / 100000000000000000 : ℚ)⟩
  r := (71410495896687 / 100000000000000 : ℚ)
  w := (15995775963273 / 10000000000000 : ℚ)
  center := (38303125000000001 / 100000000000000000 : ℚ)
  supportValue := (5755453071871979 / 10000000000000000 : ℚ)
  supportSlope := (-3577474937078051 / 1000000000000000 : ℚ)
  oldCenter := (5755453071871979 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_934
  oldLo := (57500000000000007 / 100000000000000000 : ℚ)
  oldHi := (57600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1353, piece_1354]
}

def cell_9247 : Cell := { cellDefaults with
  domain := ⟨(38306250000000001 / 100000000000000000 : ℚ), (38312500000000001 / 100000000000000000 : ℚ)⟩
  r := (71410495896687 / 100000000000000 : ℚ)
  w := (15995775963273 / 10000000000000 : ℚ)
  center := (38309375000000001 / 100000000000000000 : ℚ)
  supportValue := (575321767725601 / 1000000000000000 : ℚ)
  supportSlope := (-7151292636770279 / 2000000000000000 : ℚ)
  oldCenter := (575321767725601 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_934
  oldLo := (57500000000000007 / 100000000000000000 : ℚ)
  oldHi := (57550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1353]
}

def cell_9248 : Cell := { cellDefaults with
  domain := ⟨(38312500000000001 / 100000000000000000 : ℚ), (38318750000000001 / 100000000000000000 : ℚ)⟩
  r := (71410495896687 / 100000000000000 : ℚ)
  w := (15995775963273 / 10000000000000 : ℚ)
  center := (38315625000000001 / 100000000000000000 : ℚ)
  supportValue := (5750983571332233 / 10000000000000000 : ℚ)
  supportSlope := (-142940771732043 / 40000000000000 : ℚ)
  oldCenter := (5750983571332233 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_934
  oldLo := (57450000000000001 / 100000000000000000 : ℚ)
  oldHi := (57550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1352, piece_1353]
}

def cell_9249 : Cell := { cellDefaults with
  domain := ⟨(38318750000000001 / 100000000000000000 : ℚ), (38325000000000001 / 100000000000000000 : ℚ)⟩
  r := (71410495896687 / 100000000000000 : ℚ)
  w := (15995775963273 / 10000000000000 : ℚ)
  center := (38321875000000001 / 100000000000000000 : ℚ)
  supportValue := (5748750647981721 / 10000000000000000 : ℚ)
  supportSlope := (-17859024944364421 / 5000000000000000 : ℚ)
  oldCenter := (5748750647981721 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_934
  oldLo := (57450000000000001 / 100000000000000000 : ℚ)
  oldHi := (57500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1352]
}

theorem check_9200 : cell_9200.check = true := by
  decide +kernel

theorem check_9201 : cell_9201.check = true := by
  decide +kernel

theorem check_9202 : cell_9202.check = true := by
  decide +kernel

theorem check_9203 : cell_9203.check = true := by
  decide +kernel

theorem check_9204 : cell_9204.check = true := by
  decide +kernel

theorem check_9205 : cell_9205.check = true := by
  decide +kernel

theorem check_9206 : cell_9206.check = true := by
  decide +kernel

theorem check_9207 : cell_9207.check = true := by
  decide +kernel

theorem check_9208 : cell_9208.check = true := by
  decide +kernel

theorem check_9209 : cell_9209.check = true := by
  decide +kernel

theorem check_9210 : cell_9210.check = true := by
  decide +kernel

theorem check_9211 : cell_9211.check = true := by
  decide +kernel

theorem check_9212 : cell_9212.check = true := by
  decide +kernel

theorem check_9213 : cell_9213.check = true := by
  decide +kernel

theorem check_9214 : cell_9214.check = true := by
  decide +kernel

theorem check_9215 : cell_9215.check = true := by
  decide +kernel

theorem check_9216 : cell_9216.check = true := by
  decide +kernel

theorem check_9217 : cell_9217.check = true := by
  decide +kernel

theorem check_9218 : cell_9218.check = true := by
  decide +kernel

theorem check_9219 : cell_9219.check = true := by
  decide +kernel

theorem check_9220 : cell_9220.check = true := by
  decide +kernel

theorem check_9221 : cell_9221.check = true := by
  decide +kernel

theorem check_9222 : cell_9222.check = true := by
  decide +kernel

theorem check_9223 : cell_9223.check = true := by
  decide +kernel

theorem check_9224 : cell_9224.check = true := by
  decide +kernel

theorem check_9225 : cell_9225.check = true := by
  decide +kernel

theorem check_9226 : cell_9226.check = true := by
  decide +kernel

theorem check_9227 : cell_9227.check = true := by
  decide +kernel

theorem check_9228 : cell_9228.check = true := by
  decide +kernel

theorem check_9229 : cell_9229.check = true := by
  decide +kernel

theorem check_9230 : cell_9230.check = true := by
  decide +kernel

theorem check_9231 : cell_9231.check = true := by
  decide +kernel

theorem check_9232 : cell_9232.check = true := by
  decide +kernel

theorem check_9233 : cell_9233.check = true := by
  decide +kernel

theorem check_9234 : cell_9234.check = true := by
  decide +kernel

theorem check_9235 : cell_9235.check = true := by
  decide +kernel

theorem check_9236 : cell_9236.check = true := by
  decide +kernel

theorem check_9237 : cell_9237.check = true := by
  decide +kernel

theorem check_9238 : cell_9238.check = true := by
  decide +kernel

theorem check_9239 : cell_9239.check = true := by
  decide +kernel

theorem check_9240 : cell_9240.check = true := by
  decide +kernel

theorem check_9241 : cell_9241.check = true := by
  decide +kernel

theorem check_9242 : cell_9242.check = true := by
  decide +kernel

theorem check_9243 : cell_9243.check = true := by
  decide +kernel

theorem check_9244 : cell_9244.check = true := by
  decide +kernel

theorem check_9245 : cell_9245.check = true := by
  decide +kernel

theorem check_9246 : cell_9246.check = true := by
  decide +kernel

theorem check_9247 : cell_9247.check = true := by
  decide +kernel

theorem check_9248 : cell_9248.check = true := by
  decide +kernel

theorem check_9249 : cell_9249.check = true := by
  decide +kernel

def cells : List Cell := [cell_9200, cell_9201, cell_9202, cell_9203, cell_9204, cell_9205, cell_9206, cell_9207, cell_9208, cell_9209, cell_9210, cell_9211, cell_9212, cell_9213, cell_9214, cell_9215, cell_9216, cell_9217, cell_9218, cell_9219, cell_9220, cell_9221, cell_9222, cell_9223, cell_9224, cell_9225, cell_9226, cell_9227, cell_9228, cell_9229, cell_9230, cell_9231, cell_9232, cell_9233, cell_9234, cell_9235, cell_9236, cell_9237, cell_9238, cell_9239, cell_9240, cell_9241, cell_9242, cell_9243, cell_9244, cell_9245, cell_9246, cell_9247, cell_9248, cell_9249]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9200, check_9201, check_9202, check_9203, check_9204, check_9205, check_9206, check_9207, check_9208, check_9209, check_9210, check_9211, check_9212, check_9213, check_9214, check_9215, check_9216, check_9217, check_9218, check_9219, check_9220, check_9221, check_9222, check_9223, check_9224, check_9225, check_9226, check_9227, check_9228, check_9229, check_9230, check_9231, check_9232, check_9233, check_9234, check_9235, check_9236, check_9237, check_9238, check_9239, check_9240, check_9241, check_9242, check_9243, check_9244, check_9245, check_9246, check_9247, check_9248, check_9249, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0184

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0184
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0184
open AnalyticBounds.ExpressionCertificate

theorem linked_9200 : Linked cell_9200 pieces := by
  apply Linked.of_piece piece_927 piece_927_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9200, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1364_mem, piece_1365_mem⟩

theorem linked_9201 : Linked cell_9201 pieces := by
  apply Linked.of_piece piece_927 piece_927_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9201, List.cons_subset, List.nil_subset, and_true]
  exact piece_1364_mem

theorem linked_9202 : Linked cell_9202 pieces := by
  apply Linked.of_piece piece_927 piece_927_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9202, List.cons_subset, List.nil_subset, and_true]
  exact piece_1364_mem

theorem linked_9203 : Linked cell_9203 pieces := by
  apply Linked.of_piece piece_927 piece_927_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9203, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1363_mem, piece_1364_mem⟩

theorem linked_9204 : Linked cell_9204 pieces := by
  apply Linked.of_piece piece_927 piece_927_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9204, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1362_mem, piece_1363_mem⟩

theorem linked_9205 : Linked cell_9205 pieces := by
  apply Linked.of_piece piece_927 piece_927_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9205, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1361_mem, piece_1362_mem⟩

theorem linked_9206 : Linked cell_9206 pieces := by
  apply Linked.of_piece piece_927 piece_927_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9206, List.cons_subset, List.nil_subset, and_true]
  exact piece_1361_mem

theorem linked_9207 : Linked cell_9207 pieces := by
  apply Linked.of_piece piece_928 piece_928_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9207, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1363_mem, piece_1364_mem⟩

theorem linked_9208 : Linked cell_9208 pieces := by
  apply Linked.of_piece piece_929 piece_929_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9208, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1361_mem, ⟨piece_1362_mem, piece_1363_mem⟩⟩

theorem linked_9209 : Linked cell_9209 pieces := by
  apply Linked.of_piece piece_929 piece_929_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9209, List.cons_subset, List.nil_subset, and_true]
  exact piece_1361_mem

theorem linked_9210 : Linked cell_9210 pieces := by
  apply Linked.of_piece piece_929 piece_929_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9210, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1360_mem, piece_1361_mem⟩

theorem linked_9211 : Linked cell_9211 pieces := by
  apply Linked.of_piece piece_929 piece_929_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9211, List.cons_subset, List.nil_subset, and_true]
  exact piece_1360_mem

theorem linked_9212 : Linked cell_9212 pieces := by
  apply Linked.of_piece piece_929 piece_929_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9212, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1359_mem, piece_1360_mem⟩

theorem linked_9213 : Linked cell_9213 pieces := by
  apply Linked.of_piece piece_929 piece_929_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9213, List.cons_subset, List.nil_subset, and_true]
  exact piece_1359_mem

theorem linked_9214 : Linked cell_9214 pieces := by
  apply Linked.of_piece piece_930 piece_930_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9214, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1360_mem, piece_1361_mem⟩

theorem linked_9215 : Linked cell_9215 pieces := by
  apply Linked.of_piece piece_930 piece_930_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9215, List.cons_subset, List.nil_subset, and_true]
  exact piece_1360_mem

theorem linked_9216 : Linked cell_9216 pieces := by
  apply Linked.of_piece piece_930 piece_930_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9216, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1359_mem, piece_1360_mem⟩

theorem linked_9217 : Linked cell_9217 pieces := by
  apply Linked.of_piece piece_930 piece_930_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9217, List.cons_subset, List.nil_subset, and_true]
  exact piece_1359_mem

theorem linked_9218 : Linked cell_9218 pieces := by
  apply Linked.of_piece piece_930 piece_930_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9218, List.cons_subset, List.nil_subset, and_true]
  exact piece_1359_mem

theorem linked_9219 : Linked cell_9219 pieces := by
  apply Linked.of_piece piece_930 piece_930_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9219, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1358_mem, piece_1359_mem⟩

theorem linked_9220 : Linked cell_9220 pieces := by
  apply Linked.of_piece piece_930 piece_930_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9220, List.cons_subset, List.nil_subset, and_true]
  exact piece_1358_mem

theorem linked_9221 : Linked cell_9221 pieces := by
  apply Linked.of_piece piece_930 piece_930_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9221, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1357_mem, piece_1358_mem⟩

theorem linked_9222 : Linked cell_9222 pieces := by
  apply Linked.of_piece piece_931 piece_931_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9222, List.cons_subset, List.nil_subset, and_true]
  exact piece_1359_mem

theorem linked_9223 : Linked cell_9223 pieces := by
  apply Linked.of_piece piece_931 piece_931_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9223, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1358_mem, piece_1359_mem⟩

theorem linked_9224 : Linked cell_9224 pieces := by
  apply Linked.of_piece piece_931 piece_931_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9224, List.cons_subset, List.nil_subset, and_true]
  exact piece_1358_mem

theorem linked_9225 : Linked cell_9225 pieces := by
  apply Linked.of_piece piece_931 piece_931_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9225, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1357_mem, piece_1358_mem⟩

theorem linked_9226 : Linked cell_9226 pieces := by
  apply Linked.of_piece piece_931 piece_931_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9226, List.cons_subset, List.nil_subset, and_true]
  exact piece_1357_mem

theorem linked_9227 : Linked cell_9227 pieces := by
  apply Linked.of_piece piece_931 piece_931_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9227, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1356_mem, piece_1357_mem⟩

theorem linked_9228 : Linked cell_9228 pieces := by
  apply Linked.of_piece piece_931 piece_931_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9228, List.cons_subset, List.nil_subset, and_true]
  exact piece_1356_mem

theorem linked_9229 : Linked cell_9229 pieces := by
  apply Linked.of_piece piece_931 piece_931_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9229, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1355_mem, piece_1356_mem⟩

theorem linked_9230 : Linked cell_9230 pieces := by
  apply Linked.of_piece piece_932 piece_932_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9230, List.cons_subset, List.nil_subset, and_true]
  exact piece_1357_mem

theorem linked_9231 : Linked cell_9231 pieces := by
  apply Linked.of_piece piece_932 piece_932_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9231, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1356_mem, piece_1357_mem⟩

theorem linked_9232 : Linked cell_9232 pieces := by
  apply Linked.of_piece piece_932 piece_932_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9232, List.cons_subset, List.nil_subset, and_true]
  exact piece_1356_mem

theorem linked_9233 : Linked cell_9233 pieces := by
  apply Linked.of_piece piece_932 piece_932_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9233, List.cons_subset, List.nil_subset, and_true]
  exact piece_1356_mem

theorem linked_9234 : Linked cell_9234 pieces := by
  apply Linked.of_piece piece_932 piece_932_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9234, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1355_mem, piece_1356_mem⟩

theorem linked_9235 : Linked cell_9235 pieces := by
  apply Linked.of_piece piece_932 piece_932_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9235, List.cons_subset, List.nil_subset, and_true]
  exact piece_1355_mem

theorem linked_9236 : Linked cell_9236 pieces := by
  apply Linked.of_piece piece_932 piece_932_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9236, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1354_mem, piece_1355_mem⟩

theorem linked_9237 : Linked cell_9237 pieces := by
  apply Linked.of_piece piece_932 piece_932_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9237, List.cons_subset, List.nil_subset, and_true]
  exact piece_1354_mem

theorem linked_9238 : Linked cell_9238 pieces := by
  apply Linked.of_piece piece_933 piece_933_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9238, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1355_mem, piece_1356_mem⟩

theorem linked_9239 : Linked cell_9239 pieces := by
  apply Linked.of_piece piece_933 piece_933_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9239, List.cons_subset, List.nil_subset, and_true]
  exact piece_1355_mem

theorem linked_9240 : Linked cell_9240 pieces := by
  apply Linked.of_piece piece_933 piece_933_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9240, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1354_mem, piece_1355_mem⟩

theorem linked_9241 : Linked cell_9241 pieces := by
  apply Linked.of_piece piece_933 piece_933_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9241, List.cons_subset, List.nil_subset, and_true]
  exact piece_1354_mem

theorem linked_9242 : Linked cell_9242 pieces := by
  apply Linked.of_piece piece_933 piece_933_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9242, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1353_mem, piece_1354_mem⟩

theorem linked_9243 : Linked cell_9243 pieces := by
  apply Linked.of_piece piece_933 piece_933_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9243, List.cons_subset, List.nil_subset, and_true]
  exact piece_1353_mem

theorem linked_9244 : Linked cell_9244 pieces := by
  apply Linked.of_piece piece_933 piece_933_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9244, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1352_mem, piece_1353_mem⟩

theorem linked_9245 : Linked cell_9245 pieces := by
  apply Linked.of_piece piece_933 piece_933_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9245, List.cons_subset, List.nil_subset, and_true]
  exact piece_1352_mem

theorem linked_9246 : Linked cell_9246 pieces := by
  apply Linked.of_piece piece_934 piece_934_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9246, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1353_mem, piece_1354_mem⟩

theorem linked_9247 : Linked cell_9247 pieces := by
  apply Linked.of_piece piece_934 piece_934_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9247, List.cons_subset, List.nil_subset, and_true]
  exact piece_1353_mem

theorem linked_9248 : Linked cell_9248 pieces := by
  apply Linked.of_piece piece_934 piece_934_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9248, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1352_mem, piece_1353_mem⟩

theorem linked_9249 : Linked cell_9249 pieces := by
  apply Linked.of_piece piece_934 piece_934_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9249, List.cons_subset, List.nil_subset, and_true]
  exact piece_1352_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0184.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0184.cells,List.forall_mem_cons]
  exact ⟨linked_9200, linked_9201, linked_9202, linked_9203, linked_9204, linked_9205, linked_9206, linked_9207, linked_9208, linked_9209, linked_9210, linked_9211, linked_9212, linked_9213, linked_9214, linked_9215, linked_9216, linked_9217, linked_9218, linked_9219, linked_9220, linked_9221, linked_9222, linked_9223, linked_9224, linked_9225, linked_9226, linked_9227, linked_9228, linked_9229, linked_9230, linked_9231, linked_9232, linked_9233, linked_9234, linked_9235, linked_9236, linked_9237, linked_9238, linked_9239, linked_9240, linked_9241, linked_9242, linked_9243, linked_9244, linked_9245, linked_9246, linked_9247, linked_9248, linked_9249, by simp⟩

theorem covered : covers (6081 / 16000 : ℚ) (38325000000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0184.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0184
