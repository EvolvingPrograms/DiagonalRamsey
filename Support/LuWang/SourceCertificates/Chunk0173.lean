import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0173
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(34581250000000003 / 100000000000000000 : ℚ), (34587500000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (75160384273143 / 100000000000000 : ℚ)
  w := (16573408074631 / 10000000000000 : ℚ)
  center := (34584375000000003 / 100000000000000000 : ℚ)
  supportValue := (6473738418756171 / 10000000000000000 : ℚ)
  supportSlope := (-4446931106954821 / 1000000000000000 : ℚ)
  oldCenter := (6473738418756171 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_853
  oldLo := (64650000000000007 / 100000000000000000 : ℚ)
  oldHi := (32350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1510, piece_1511]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8650 : Cell := { cellDefaults with
  r := (18803528042699 / 25000000000000 : ℚ)
  w := (8290939415829 / 5000000000000 : ℚ)
  newCoefficients := coefficients_852
  oldLo := (32350000000000001 / 50000000000000000 : ℚ)
  oldHi := (32400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1510, piece_1511]
}

def cell_8651 : Cell := { cellDefaults with
  domain := ⟨(34587500000000003 / 100000000000000000 : ℚ), (34593750000000003 / 100000000000000000 : ℚ)⟩
  r := (18803528042699 / 25000000000000 : ℚ)
  w := (8290939415829 / 5000000000000 : ℚ)
  center := (34590625000000003 / 100000000000000000 : ℚ)
  supportValue := (6470960005706143 / 10000000000000000 : ℚ)
  supportSlope := (-2222018957322547 / 500000000000000 : ℚ)
  oldCenter := (6470960005706143 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_852
  oldHi := (8093750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1509, piece_1510]
}

def cell_8652 : Cell := { cellDefaults with
  domain := ⟨(34593750000000003 / 100000000000000000 : ℚ), (34600000000000003 / 100000000000000000 : ℚ)⟩
  r := (18803528042699 / 25000000000000 : ℚ)
  w := (8290939415829 / 5000000000000 : ℚ)
  center := (34596875000000003 / 100000000000000000 : ℚ)
  supportValue := (3234091636307551 / 5000000000000000 : ℚ)
  supportSlope := (-44414359470899 / 10000000000000 : ℚ)
  oldCenter := (3234091636307551 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_852
  oldPieces := [piece_1509]
}

def cell_8653 : Cell := { cellDefaults with
  domain := ⟨(34600000000000003 / 100000000000000000 : ℚ), (34606250000000003 / 100000000000000000 : ℚ)⟩
  center := (34603125000000003 / 100000000000000000 : ℚ)
  supportValue := (6476697691778099 / 10000000000000000 : ℚ)
  supportSlope := (-8893230357735149 / 2000000000000000 : ℚ)
  oldCenter := (6476697691778099 / 10000000000000000 : ℚ)
  oldLo := (8093750000000001 / 12500000000000000 : ℚ)
  oldHi := (32400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1511]
}

def cell_8654 : Cell := { cellDefaults with
  domain := ⟨(34606250000000003 / 100000000000000000 : ℚ), (34612500000000003 / 100000000000000000 : ℚ)⟩
  center := (34609375000000003 / 100000000000000000 : ℚ)
  supportValue := (6473919377963709 / 10000000000000000 : ℚ)
  supportSlope := (-8888072248602441 / 2000000000000000 : ℚ)
  oldCenter := (6473919377963709 / 10000000000000000 : ℚ)
  oldLo := (32350000000000001 / 50000000000000000 : ℚ)
  oldHi := (32400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1510, piece_1511]
}

def cell_8655 : Cell := { cellDefaults with
  domain := ⟨(34612500000000003 / 100000000000000000 : ℚ), (34618750000000003 / 100000000000000000 : ℚ)⟩
  center := (34615625000000003 / 100000000000000000 : ℚ)
  supportValue := (3235571377018707 / 5000000000000000 : ℚ)
  supportSlope := (-8882297814970741 / 2000000000000000 : ℚ)
  oldCenter := (3235571377018707 / 5000000000000000 : ℚ)
  oldHi := (8093750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1509, piece_1510]
}

def cell_8656 : Cell := { cellDefaults with
  domain := ⟨(34618750000000003 / 100000000000000000 : ℚ), (34625000000000003 / 100000000000000000 : ℚ)⟩
  center := (34621875000000003 / 100000000000000000 : ℚ)
  supportValue := (1617091956145281 / 2500000000000000 : ℚ)
  supportSlope := (-4438583017208231 / 1000000000000000 : ℚ)
  oldCenter := (1617091956145281 / 2500000000000000 : ℚ)
  oldPieces := [piece_1509]
}

def cell_8657 : Cell := { cellDefaults with
  domain := ⟨(34625000000000003 / 100000000000000000 : ℚ), (34631250000000003 / 100000000000000000 : ℚ)⟩
  center := (34628125000000003 / 100000000000000000 : ℚ)
  supportValue := (6465594638571013 / 10000000000000000 : ℚ)
  supportSlope := (-2217869340778833 / 500000000000000 : ℚ)
  oldCenter := (6465594638571013 / 10000000000000000 : ℚ)
  oldLo := (3230167597765363 / 5000000000000000 : ℚ)
  oldPieces := [piece_1508, piece_1509]
}

def cell_8658 : Cell := { cellDefaults with
  domain := ⟨(34631250000000003 / 100000000000000000 : ℚ), (34637500000000003 / 100000000000000000 : ℚ)⟩
  center := (34634375000000003 / 100000000000000000 : ℚ)
  supportValue := (6462823089394203 / 10000000000000000 : ℚ)
  supportSlope := (-1108271968982777 / 250000000000000 : ℚ)
  oldCenter := (6462823089394203 / 10000000000000000 : ℚ)
  oldLo := (3230167597765363 / 5000000000000000 : ℚ)
  oldHi := (64650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1508]
}

def cell_8659 : Cell := { cellDefaults with
  domain := ⟨(34637500000000003 / 100000000000000000 : ℚ), (34643750000000003 / 100000000000000000 : ℚ)⟩
  center := (34640625000000003 / 100000000000000000 : ℚ)
  supportValue := (403753333546229 / 625000000000000 : ℚ)
  supportSlope := (-4430333870875103 / 1000000000000000 : ℚ)
  oldCenter := (403753333546229 / 625000000000000 : ℚ)
  oldLo := (64550000000000007 / 100000000000000000 : ℚ)
  oldHi := (64650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1506, piece_1507, piece_1508]
}

def cell_8660 : Cell := { cellDefaults with
  domain := ⟨(34643750000000003 / 100000000000000000 : ℚ), (34650000000000003 / 100000000000000000 : ℚ)⟩
  center := (34646875000000003 / 100000000000000000 : ℚ)
  supportValue := (1614321291228883 / 2500000000000000 : ℚ)
  supportSlope := (-138362449234819 / 31250000000000 : ℚ)
  oldCenter := (1614321291228883 / 2500000000000000 : ℚ)
  oldLo := (64550000000000007 / 100000000000000000 : ℚ)
  oldHi := (32300000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1506]
}

def cell_8661 : Cell := { cellDefaults with
  domain := ⟨(34650000000000003 / 100000000000000000 : ℚ), (34656250000000003 / 100000000000000000 : ℚ)⟩
  r := (37553371412943 / 50000000000000 : ℚ)
  w := (4141238970793 / 2500000000000 : ℚ)
  center := (34653125000000003 / 100000000000000000 : ℚ)
  supportValue := (3232887892459387 / 5000000000000000 : ℚ)
  supportSlope := (-4432849330335387 / 1000000000000000 : ℚ)
  oldCenter := (3232887892459387 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_854
  oldLo := (3230167597765363 / 5000000000000000 : ℚ)
  oldPieces := [piece_1508, piece_1509]
}

def cell_8662 : Cell := { cellDefaults with
  domain := ⟨(34656250000000003 / 100000000000000000 : ℚ), (34662500000000003 / 100000000000000000 : ℚ)⟩
  r := (37553371412943 / 50000000000000 : ℚ)
  w := (4141238970793 / 2500000000000 : ℚ)
  center := (34659375000000003 / 100000000000000000 : ℚ)
  supportValue := (403937877474123 / 625000000000000 : ℚ)
  supportSlope := (-8860468762605933 / 2000000000000000 : ℚ)
  oldCenter := (403937877474123 / 625000000000000 : ℚ)
  newCoefficients := coefficients_854
  oldLo := (3230167597765363 / 5000000000000000 : ℚ)
  oldHi := (64650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1508]
}

def cell_8663 : Cell := { cellDefaults with
  domain := ⟨(34662500000000003 / 100000000000000000 : ℚ), (34668750000000003 / 100000000000000000 : ℚ)⟩
  r := (37553371412943 / 50000000000000 : ℚ)
  w := (4141238970793 / 2500000000000 : ℚ)
  center := (34665625000000003 / 100000000000000000 : ℚ)
  supportValue := (25840952272937 / 40000000000000 : ℚ)
  supportSlope := (-4427457027706083 / 1000000000000000 : ℚ)
  oldCenter := (25840952272937 / 40000000000000 : ℚ)
  newCoefficients := coefficients_854
  oldLo := (64550000000000007 / 100000000000000000 : ℚ)
  oldHi := (64650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1506, piece_1507, piece_1508]
}

def cell_8664 : Cell := { cellDefaults with
  domain := ⟨(34668750000000003 / 100000000000000000 : ℚ), (34675000000000003 / 100000000000000000 : ℚ)⟩
  r := (37553371412943 / 50000000000000 : ℚ)
  w := (4141238970793 / 2500000000000 : ℚ)
  center := (34671875000000003 / 100000000000000000 : ℚ)
  supportValue := (3228735846257867 / 5000000000000000 : ℚ)
  supportSlope := (-4424757849399441 / 1000000000000000 : ℚ)
  oldCenter := (3228735846257867 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_854
  oldLo := (64550000000000007 / 100000000000000000 : ℚ)
  oldHi := (32300000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1506]
}

def cell_8665 : Cell := { cellDefaults with
  domain := ⟨(34675000000000003 / 100000000000000000 : ℚ), (34681250000000003 / 100000000000000000 : ℚ)⟩
  r := (37553371412943 / 50000000000000 : ℚ)
  w := (4141238970793 / 2500000000000 : ℚ)
  center := (34678125000000003 / 100000000000000000 : ℚ)
  supportValue := (1290941422567367 / 2000000000000000 : ℚ)
  supportSlope := (-2211035664998917 / 500000000000000 : ℚ)
  oldCenter := (1290941422567367 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_854
  oldLo := (32250000000000001 / 50000000000000000 : ℚ)
  oldHi := (32300000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1505, piece_1506]
}

def cell_8666 : Cell := { cellDefaults with
  domain := ⟨(34681250000000003 / 100000000000000000 : ℚ), (34687500000000003 / 100000000000000000 : ℚ)⟩
  r := (37553371412943 / 50000000000000 : ℚ)
  w := (4141238970793 / 2500000000000 : ℚ)
  center := (34684375000000003 / 100000000000000000 : ℚ)
  supportValue := (1612986032860847 / 2500000000000000 : ℚ)
  supportSlope := (-4419290592277747 / 1000000000000000 : ℚ)
  oldCenter := (1612986032860847 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_854
  oldLo := (32250000000000001 / 50000000000000000 : ℚ)
  oldHi := (64550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1505]
}

def cell_8667 : Cell := { cellDefaults with
  domain := ⟨(34687500000000003 / 100000000000000000 : ℚ), (34693750000000003 / 100000000000000000 : ℚ)⟩
  r := (37553371412943 / 50000000000000 : ℚ)
  w := (4141238970793 / 2500000000000 : ℚ)
  center := (34690625000000003 / 100000000000000000 : ℚ)
  supportValue := (6449182914349699 / 10000000000000000 : ℚ)
  supportSlope := (-2208346484167123 / 500000000000000 : ℚ)
  oldCenter := (6449182914349699 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_854
  oldLo := (64450000000000007 / 100000000000000000 : ℚ)
  oldHi := (64550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1504, piece_1505]
}

def cell_8668 : Cell := { cellDefaults with
  domain := ⟨(34693750000000003 / 100000000000000000 : ℚ), (34700000000000003 / 100000000000000000 : ℚ)⟩
  r := (37553371412943 / 50000000000000 : ℚ)
  w := (4141238970793 / 2500000000000 : ℚ)
  center := (34696875000000003 / 100000000000000000 : ℚ)
  supportValue := (6446423346556369 / 10000000000000000 : ℚ)
  supportSlope := (-4413830784976369 / 1000000000000000 : ℚ)
  oldCenter := (6446423346556369 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_854
  oldLo := (64450000000000007 / 100000000000000000 : ℚ)
  oldHi := (32250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1504]
}

def cell_8669 : Cell := { cellDefaults with
  domain := ⟨(34700000000000003 / 100000000000000000 : ℚ), (34706250000000003 / 100000000000000000 : ℚ)⟩
  r := (1172706088967 / 1562500000000 : ℚ)
  w := (16556522150189 / 10000000000000 : ℚ)
  center := (34703125000000003 / 100000000000000000 : ℚ)
  supportValue := (403430623533569 / 625000000000000 : ℚ)
  supportSlope := (-8838387447312357 / 2000000000000000 : ℚ)
  oldCenter := (403430623533569 / 625000000000000 : ℚ)
  newCoefficients := coefficients_855
  oldLo := (32250000000000001 / 50000000000000000 : ℚ)
  oldHi := (32300000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1505, piece_1506]
}

def cell_8670 : Cell := { cellDefaults with
  domain := ⟨(34706250000000003 / 100000000000000000 : ℚ), (34712500000000003 / 100000000000000000 : ℚ)⟩
  r := (1172706088967 / 1562500000000 : ℚ)
  w := (16556522150189 / 10000000000000 : ℚ)
  center := (34709375000000003 / 100000000000000000 : ℚ)
  supportValue := (1290425754619889 / 2000000000000000 : ℚ)
  supportSlope := (-4416449157744751 / 1000000000000000 : ℚ)
  oldCenter := (1290425754619889 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_855
  oldLo := (32250000000000001 / 50000000000000000 : ℚ)
  oldHi := (64550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1505]
}

def cell_8671 : Cell := { cellDefaults with
  domain := ⟨(34712500000000003 / 100000000000000000 : ℚ), (34718750000000003 / 100000000000000000 : ℚ)⟩
  r := (1172706088967 / 1562500000000 : ℚ)
  w := (16556522150189 / 10000000000000 : ℚ)
  center := (34715625000000003 / 100000000000000000 : ℚ)
  supportValue := (1612342337190301 / 2500000000000000 : ℚ)
  supportSlope := (-4413827762068223 / 1000000000000000 : ℚ)
  oldCenter := (1612342337190301 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_855
  oldLo := (64450000000000007 / 100000000000000000 : ℚ)
  oldHi := (64550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1504, piece_1505]
}

def cell_8672 : Cell := { cellDefaults with
  domain := ⟨(34718750000000003 / 100000000000000000 : ℚ), (34725000000000003 / 100000000000000000 : ℚ)⟩
  r := (1172706088967 / 1562500000000 : ℚ)
  w := (16556522150189 / 10000000000000 : ℚ)
  center := (34721875000000003 / 100000000000000000 : ℚ)
  supportValue := (6446611550806531 / 10000000000000000 : ℚ)
  supportSlope := (-8822004661652727 / 2000000000000000 : ℚ)
  oldCenter := (6446611550806531 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_855
  oldLo := (64450000000000007 / 100000000000000000 : ℚ)
  oldHi := (32250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1504]
}

def cell_8673 : Cell := { cellDefaults with
  domain := ⟨(34725000000000003 / 100000000000000000 : ℚ), (69462430167597769 / 200000000000000000 : ℚ)⟩
  r := (1172706088967 / 1562500000000 : ℚ)
  w := (16556522150189 / 10000000000000 : ℚ)
  center := (5556497206703911 / 16000000000000000 : ℚ)
  supportValue := (322193158684371 / 500000000000000 : ℚ)
  supportSlope := (-440847626906969 / 100000000000000 : ℚ)
  oldCenter := (322193158684371 / 500000000000000 : ℚ)
  newCoefficients := coefficients_855
  oldLo := (32200000000000001 / 50000000000000000 : ℚ)
  oldHi := (32250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1503, piece_1504]
}

def cell_8674 : Cell := { cellDefaults with
  domain := ⟨(69462430167597769 / 200000000000000000 : ℚ), (17368715083798883 / 50000000000000000 : ℚ)⟩
  r := (1172706088967 / 1562500000000 : ℚ)
  w := (16556522150189 / 10000000000000 : ℚ)
  center := (138937290502793301 / 400000000000000000 : ℚ)
  supportValue := (6441124154052653 / 10000000000000000 : ℚ)
  supportSlope := (-8811255922130707 / 2000000000000000 : ℚ)
  oldCenter := (6441124154052653 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_855
  oldLo := (64350000000000007 / 100000000000000000 : ℚ)
  oldHi := (64450000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1502, piece_1503]
}

def cell_8675 : Cell := { cellDefaults with
  domain := ⟨(17368715083798883 / 50000000000000000 : ℚ), (69487430167597769 / 200000000000000000 : ℚ)⟩
  r := (1172706088967 / 1562500000000 : ℚ)
  w := (16556522150189 / 10000000000000 : ℚ)
  center := (138962290502793301 / 400000000000000000 : ℚ)
  supportValue := (64383714139043 / 100000000000000 : ℚ)
  supportSlope := (-550386958153933 / 125000000000000 : ℚ)
  oldCenter := (64383714139043 / 100000000000000 : ℚ)
  newCoefficients := coefficients_856
  oldLo := (64350000000000007 / 100000000000000000 : ℚ)
  oldHi := (32200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1502]
}

def cell_8676 : Cell := { cellDefaults with
  domain := ⟨(69487430167597769 / 200000000000000000 : ℚ), (34750000000000003 / 100000000000000000 : ℚ)⟩
  r := (1172706088967 / 1562500000000 : ℚ)
  w := (16556522150189 / 10000000000000 : ℚ)
  center := (5559497206703911 / 16000000000000000 : ℚ)
  supportValue := (6435605033348333 / 10000000000000000 : ℚ)
  supportSlope := (-4400266448528357 / 1000000000000000 : ℚ)
  oldCenter := (6435605033348333 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_856
  oldLo := (32150000000000001 / 50000000000000000 : ℚ)
  oldHi := (32200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1501, piece_1502]
}

def cell_8677 : Cell := { cellDefaults with
  domain := ⟨(34750000000000003 / 100000000000000000 : ℚ), (34756250000000003 / 100000000000000000 : ℚ)⟩
  r := (74999722223607 / 100000000000000 : ℚ)
  w := (16548107139393 / 10000000000000 : ℚ)
  center := (34753125000000003 / 100000000000000000 : ℚ)
  supportValue := (322202010909121 / 500000000000000 : ℚ)
  supportSlope := (-1101400853168677 / 250000000000000 : ℚ)
  oldCenter := (322202010909121 / 500000000000000 : ℚ)
  newCoefficients := coefficients_857
  oldLo := (32200000000000001 / 50000000000000000 : ℚ)
  oldHi := (32250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1503, piece_1504]
}

def cell_8678 : Cell := { cellDefaults with
  domain := ⟨(34756250000000003 / 100000000000000000 : ℚ), (34762500000000003 / 100000000000000000 : ℚ)⟩
  r := (74999722223607 / 100000000000000 : ℚ)
  w := (16548107139393 / 10000000000000 : ℚ)
  center := (34759375000000003 / 100000000000000000 : ℚ)
  supportValue := (805160948854693 / 1250000000000000 : ℚ)
  supportSlope := (-2201374625672159 / 500000000000000 : ℚ)
  oldCenter := (805160948854693 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_857
  oldLo := (64350000000000007 / 100000000000000000 : ℚ)
  oldHi := (64450000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1502, piece_1503]
}

def cell_8679 : Cell := { cellDefaults with
  domain := ⟨(34762500000000003 / 100000000000000000 : ℚ), (34768750000000003 / 100000000000000000 : ℚ)⟩
  r := (74999722223607 / 100000000000000 : ℚ)
  w := (16548107139393 / 10000000000000 : ℚ)
  center := (34765625000000003 / 100000000000000000 : ℚ)
  supportValue := (804817081103089 / 1250000000000000 : ℚ)
  supportSlope := (-1100062031636817 / 250000000000000 : ℚ)
  oldCenter := (804817081103089 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_857
  oldLo := (64350000000000007 / 100000000000000000 : ℚ)
  oldHi := (32200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1502]
}

def cell_8680 : Cell := { cellDefaults with
  domain := ⟨(34768750000000003 / 100000000000000000 : ℚ), (34775000000000003 / 100000000000000000 : ℚ)⟩
  r := (74999722223607 / 100000000000000 : ℚ)
  w := (16548107139393 / 10000000000000 : ℚ)
  center := (34771875000000003 / 100000000000000000 : ℚ)
  supportValue := (3217893704787141 / 5000000000000000 : ℚ)
  supportSlope := (-2198705747165519 / 500000000000000 : ℚ)
  oldCenter := (3217893704787141 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_857
  oldLo := (32150000000000001 / 50000000000000000 : ℚ)
  oldHi := (32200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1501, piece_1502]
}

def cell_8681 : Cell := { cellDefaults with
  domain := ⟨(34775000000000003 / 100000000000000000 : ℚ), (34781250000000003 / 100000000000000000 : ℚ)⟩
  r := (74999722223607 / 100000000000000 : ℚ)
  w := (16548107139393 / 10000000000000 : ℚ)
  center := (34778125000000003 / 100000000000000000 : ℚ)
  supportValue := (3216519901279241 / 5000000000000000 : ℚ)
  supportSlope := (-549354075765951 / 125000000000000 : ℚ)
  oldCenter := (3216519901279241 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_857
  oldLo := (32150000000000001 / 50000000000000000 : ℚ)
  oldHi := (64350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1501]
}

def cell_8682 : Cell := { cellDefaults with
  domain := ⟨(34781250000000003 / 100000000000000000 : ℚ), (34787500000000003 / 100000000000000000 : ℚ)⟩
  r := (74999722223607 / 100000000000000 : ℚ)
  w := (16548107139393 / 10000000000000 : ℚ)
  center := (34784375000000003 / 100000000000000000 : ℚ)
  supportValue := (6430293946826591 / 10000000000000000 : ℚ)
  supportSlope := (-2196040041225089 / 500000000000000 : ℚ)
  oldCenter := (6430293946826591 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_857
  oldLo := (64250000000000007 / 100000000000000000 : ℚ)
  oldHi := (64350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1500, piece_1501]
}

def cell_8683 : Cell := { cellDefaults with
  domain := ⟨(34787500000000003 / 100000000000000000 : ℚ), (34793750000000003 / 100000000000000000 : ℚ)⟩
  r := (74999722223607 / 100000000000000 : ℚ)
  w := (16548107139393 / 10000000000000 : ℚ)
  center := (34790625000000003 / 100000000000000000 : ℚ)
  supportValue := (321377483542103 / 500000000000000 : ℚ)
  supportSlope := (-8778848862228017 / 2000000000000000 : ℚ)
  oldCenter := (321377483542103 / 500000000000000 : ℚ)
  newCoefficients := coefficients_857
  oldLo := (64250000000000007 / 100000000000000000 : ℚ)
  oldHi := (32150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1500]
}

def cell_8684 : Cell := { cellDefaults with
  domain := ⟨(34793750000000003 / 100000000000000000 : ℚ), (34800000000000003 / 100000000000000000 : ℚ)⟩
  r := (74999722223607 / 100000000000000 : ℚ)
  w := (16548107139393 / 10000000000000 : ℚ)
  center := (34796875000000003 / 100000000000000000 : ℚ)
  supportValue := (3212403587051759 / 5000000000000000 : ℚ)
  supportSlope := (-1096688789780309 / 250000000000000 : ℚ)
  oldCenter := (3212403587051759 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_857
  oldLo := (32100000000000001 / 50000000000000000 : ℚ)
  oldHi := (32150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1499, piece_1500]
}

def cell_8685 : Cell := { cellDefaults with
  domain := ⟨(34800000000000003 / 100000000000000000 : ℚ), (34806250000000003 / 100000000000000000 : ℚ)⟩
  r := (74946341619749 / 100000000000000 : ℚ)
  w := (1653971111903 / 1000000000000 : ℚ)
  center := (34803125000000003 / 100000000000000000 : ℚ)
  supportValue := (3216613026612257 / 5000000000000000 : ℚ)
  supportSlope := (-4392009627942173 / 1000000000000000 : ℚ)
  oldCenter := (3216613026612257 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_858
  oldLo := (32150000000000001 / 50000000000000000 : ℚ)
  oldHi := (64350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1501]
}

def cell_8686 : Cell := { cellDefaults with
  domain := ⟨(34806250000000003 / 100000000000000000 : ℚ), (34812500000000003 / 100000000000000000 : ℚ)⟩
  r := (74946341619749 / 100000000000000 : ℚ)
  w := (1653971111903 / 1000000000000 : ℚ)
  center := (34809375000000003 / 100000000000000000 : ℚ)
  supportValue := (6430481959974841 / 10000000000000000 : ℚ)
  supportSlope := (-2194616156709017 / 500000000000000 : ℚ)
  oldCenter := (6430481959974841 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_858
  oldLo := (64250000000000007 / 100000000000000000 : ℚ)
  oldHi := (64350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1500, piece_1501]
}

def cell_8687 : Cell := { cellDefaults with
  domain := ⟨(34812500000000003 / 100000000000000000 : ℚ), (34818750000000003 / 100000000000000000 : ℚ)⟩
  r := (74946341619749 / 100000000000000 : ℚ)
  w := (1653971111903 / 1000000000000 : ℚ)
  center := (34815625000000003 / 100000000000000000 : ℚ)
  supportValue := (1606934865506227 / 2500000000000000 : ℚ)
  supportSlope := (-2193306646825377 / 500000000000000 : ℚ)
  oldCenter := (1606934865506227 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_858
  oldLo := (64250000000000007 / 100000000000000000 : ℚ)
  oldHi := (32150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1500]
}

def cell_8688 : Cell := { cellDefaults with
  domain := ⟨(34818750000000003 / 100000000000000000 : ℚ), (34825000000000003 / 100000000000000000 : ℚ)⟩
  r := (74946341619749 / 100000000000000 : ℚ)
  w := (1653971111903 / 1000000000000 : ℚ)
  center := (34821875000000003 / 100000000000000000 : ℚ)
  supportValue := (16062496849847 / 25000000000000 : ℚ)
  supportSlope := (-1095979657748103 / 250000000000000 : ℚ)
  oldCenter := (16062496849847 / 25000000000000 : ℚ)
  newCoefficients := coefficients_858
  oldLo := (32100000000000001 / 50000000000000000 : ℚ)
  oldHi := (32150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1499, piece_1500]
}

def cell_8689 : Cell := { cellDefaults with
  domain := ⟨(34825000000000003 / 100000000000000000 : ℚ), (34831250000000003 / 100000000000000000 : ℚ)⟩
  r := (74946341619749 / 100000000000000 : ℚ)
  w := (1653971111903 / 1000000000000 : ℚ)
  center := (34828125000000003 / 100000000000000000 : ℚ)
  supportValue := (1284451912455367 / 2000000000000000 : ℚ)
  supportSlope := (-547653040537277 / 125000000000000 : ℚ)
  oldCenter := (1284451912455367 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_858
  oldLo := (32100000000000001 / 50000000000000000 : ℚ)
  oldHi := (64250000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1499]
}

def cell_8690 : Cell := { cellDefaults with
  domain := ⟨(34831250000000003 / 100000000000000000 : ℚ), (34837500000000003 / 100000000000000000 : ℚ)⟩
  r := (74946341619749 / 100000000000000 : ℚ)
  w := (1653971111903 / 1000000000000 : ℚ)
  center := (34834375000000003 / 100000000000000000 : ℚ)
  supportValue := (6419522158383719 / 10000000000000000 : ℚ)
  supportSlope := (-4378611278362143 / 1000000000000000 : ℚ)
  oldCenter := (6419522158383719 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_858
  oldLo := (64150000000000007 / 100000000000000000 : ℚ)
  oldHi := (64250000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1498, piece_1499]
}

def cell_8691 : Cell := { cellDefaults with
  domain := ⟨(34837500000000003 / 100000000000000000 : ℚ), (34843750000000003 / 100000000000000000 : ℚ)⟩
  r := (74946341619749 / 100000000000000 : ℚ)
  w := (1653971111903 / 1000000000000 : ℚ)
  center := (34840625000000003 / 100000000000000000 : ℚ)
  supportValue := (160419658636317 / 250000000000000 : ℚ)
  supportSlope := (-546980330900837 / 125000000000000 : ℚ)
  oldCenter := (160419658636317 / 250000000000000 : ℚ)
  newCoefficients := coefficients_858
  oldLo := (64150000000000007 / 100000000000000000 : ℚ)
  oldHi := (32100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1498]
}

def cell_8692 : Cell := { cellDefaults with
  domain := ⟨(34843750000000003 / 100000000000000000 : ℚ), (34850000000000003 / 100000000000000000 : ℚ)⟩
  r := (74946341619749 / 100000000000000 : ℚ)
  w := (1653971111903 / 1000000000000 : ℚ)
  center := (34846875000000003 / 100000000000000000 : ℚ)
  supportValue := (6414052255788311 / 10000000000000000 : ℚ)
  supportSlope := (-546663783460577 / 125000000000000 : ℚ)
  oldCenter := (6414052255788311 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_858
  oldLo := (64100000000000001 / 100000000000000000 : ℚ)
  oldHi := (32100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1497, piece_1498]
}

def cell_8693 : Cell := { cellDefaults with
  domain := ⟨(34850000000000003 / 100000000000000000 : ℚ), (34856250000000003 / 100000000000000000 : ℚ)⟩
  r := (7489304701393 / 10000000000000 : ℚ)
  w := (16531333331649 / 10000000000000 : ℚ)
  center := (34853125000000003 / 100000000000000000 : ℚ)
  supportValue := (6422447697886079 / 10000000000000000 : ℚ)
  supportSlope := (-1094603145489259 / 250000000000000 : ℚ)
  oldCenter := (6422447697886079 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_859
  oldLo := (32100000000000001 / 50000000000000000 : ℚ)
  oldHi := (64250000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1499]
}

def cell_8694 : Cell := { cellDefaults with
  domain := ⟨(34856250000000003 / 100000000000000000 : ℚ), (34862500000000003 / 100000000000000000 : ℚ)⟩
  r := (7489304701393 / 10000000000000 : ℚ)
  w := (16531333331649 / 10000000000000 : ℚ)
  center := (34859375000000003 / 100000000000000000 : ℚ)
  supportValue := (1283942413736019 / 2000000000000000 : ℚ)
  supportSlope := (-4375774999992643 / 1000000000000000 : ℚ)
  oldCenter := (1283942413736019 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_859
  oldLo := (64150000000000007 / 100000000000000000 : ℚ)
  oldHi := (64250000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1498, piece_1499]
}

def cell_8695 : Cell := { cellDefaults with
  domain := ⟨(34862500000000003 / 100000000000000000 : ℚ), (34868750000000003 / 100000000000000000 : ℚ)⟩
  r := (7489304701393 / 10000000000000 : ℚ)
  w := (16531333331649 / 10000000000000 : ℚ)
  center := (34865625000000003 / 100000000000000000 : ℚ)
  supportValue := (641697800699739 / 1000000000000000 : ℚ)
  supportSlope := (-4373043952671907 / 1000000000000000 : ℚ)
  oldCenter := (641697800699739 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_859
  oldLo := (64150000000000007 / 100000000000000000 : ℚ)
  oldHi := (32100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1498]
}

def cell_8696 : Cell := { cellDefaults with
  domain := ⟨(34868750000000003 / 100000000000000000 : ℚ), (34875000000000003 / 100000000000000000 : ℚ)⟩
  r := (7489304701393 / 10000000000000 : ℚ)
  w := (16531333331649 / 10000000000000 : ℚ)
  center := (34871875000000003 / 100000000000000000 : ℚ)
  supportValue := (1603561421060411 / 2500000000000000 : ℚ)
  supportSlope := (-4370486429596809 / 1000000000000000 : ℚ)
  oldCenter := (1603561421060411 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_859
  oldLo := (64100000000000001 / 100000000000000000 : ℚ)
  oldHi := (32100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1497, piece_1498]
}

def cell_8697 : Cell := { cellDefaults with
  domain := ⟨(34875000000000003 / 100000000000000000 : ℚ), (34881250000000003 / 100000000000000000 : ℚ)⟩
  r := (7489304701393 / 10000000000000 : ℚ)
  w := (16531333331649 / 10000000000000 : ℚ)
  center := (34878125000000003 / 100000000000000000 : ℚ)
  supportValue := (3205757487295437 / 5000000000000000 : ℚ)
  supportSlope := (-873536517078577 / 200000000000000 : ℚ)
  oldCenter := (3205757487295437 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_859
  oldLo := (64100000000000001 / 100000000000000000 : ℚ)
  oldHi := (64150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1497]
}

def cell_8698 : Cell := { cellDefaults with
  domain := ⟨(34881250000000003 / 100000000000000000 : ℚ), (34887500000000003 / 100000000000000000 : ℚ)⟩
  r := (7489304701393 / 10000000000000 : ℚ)
  w := (16531333331649 / 10000000000000 : ℚ)
  center := (34884375000000003 / 100000000000000000 : ℚ)
  supportValue := (6408785954339059 / 10000000000000000 : ℚ)
  supportSlope := (-8730408345719809 / 2000000000000000 : ℚ)
  oldCenter := (6408785954339059 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_859
  oldLo := (3202513966480447 / 5000000000000000 : ℚ)
  oldHi := (64150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1496, piece_1497]
}

def cell_8699 : Cell := { cellDefaults with
  domain := ⟨(34887500000000003 / 100000000000000000 : ℚ), (34893750000000003 / 100000000000000000 : ℚ)⟩
  r := (7489304701393 / 10000000000000 : ℚ)
  w := (16531333331649 / 10000000000000 : ℚ)
  center := (34890625000000003 / 100000000000000000 : ℚ)
  supportValue := (3203029296091393 / 5000000000000000 : ℚ)
  supportSlope := (-1090594655754451 / 250000000000000 : ℚ)
  oldCenter := (3203029296091393 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_859
  oldLo := (64000000000000001 / 100000000000000000 : ℚ)
  oldHi := (64100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1494, piece_1495, piece_1496]
}

theorem check_8650 : cell_8650.check = true := by
  decide +kernel

theorem check_8651 : cell_8651.check = true := by
  decide +kernel

theorem check_8652 : cell_8652.check = true := by
  decide +kernel

theorem check_8653 : cell_8653.check = true := by
  decide +kernel

theorem check_8654 : cell_8654.check = true := by
  decide +kernel

theorem check_8655 : cell_8655.check = true := by
  decide +kernel

theorem check_8656 : cell_8656.check = true := by
  decide +kernel

theorem check_8657 : cell_8657.check = true := by
  decide +kernel

theorem check_8658 : cell_8658.check = true := by
  decide +kernel

theorem check_8659 : cell_8659.check = true := by
  decide +kernel

theorem check_8660 : cell_8660.check = true := by
  decide +kernel

theorem check_8661 : cell_8661.check = true := by
  decide +kernel

theorem check_8662 : cell_8662.check = true := by
  decide +kernel

theorem check_8663 : cell_8663.check = true := by
  decide +kernel

theorem check_8664 : cell_8664.check = true := by
  decide +kernel

theorem check_8665 : cell_8665.check = true := by
  decide +kernel

theorem check_8666 : cell_8666.check = true := by
  decide +kernel

theorem check_8667 : cell_8667.check = true := by
  decide +kernel

theorem check_8668 : cell_8668.check = true := by
  decide +kernel

theorem check_8669 : cell_8669.check = true := by
  decide +kernel

theorem check_8670 : cell_8670.check = true := by
  decide +kernel

theorem check_8671 : cell_8671.check = true := by
  decide +kernel

theorem check_8672 : cell_8672.check = true := by
  decide +kernel

theorem check_8673 : cell_8673.check = true := by
  decide +kernel

theorem check_8674 : cell_8674.check = true := by
  decide +kernel

theorem check_8675 : cell_8675.check = true := by
  decide +kernel

theorem check_8676 : cell_8676.check = true := by
  decide +kernel

theorem check_8677 : cell_8677.check = true := by
  decide +kernel

theorem check_8678 : cell_8678.check = true := by
  decide +kernel

theorem check_8679 : cell_8679.check = true := by
  decide +kernel

theorem check_8680 : cell_8680.check = true := by
  decide +kernel

theorem check_8681 : cell_8681.check = true := by
  decide +kernel

theorem check_8682 : cell_8682.check = true := by
  decide +kernel

theorem check_8683 : cell_8683.check = true := by
  decide +kernel

theorem check_8684 : cell_8684.check = true := by
  decide +kernel

theorem check_8685 : cell_8685.check = true := by
  decide +kernel

theorem check_8686 : cell_8686.check = true := by
  decide +kernel

theorem check_8687 : cell_8687.check = true := by
  decide +kernel

theorem check_8688 : cell_8688.check = true := by
  decide +kernel

theorem check_8689 : cell_8689.check = true := by
  decide +kernel

theorem check_8690 : cell_8690.check = true := by
  decide +kernel

theorem check_8691 : cell_8691.check = true := by
  decide +kernel

theorem check_8692 : cell_8692.check = true := by
  decide +kernel

theorem check_8693 : cell_8693.check = true := by
  decide +kernel

theorem check_8694 : cell_8694.check = true := by
  decide +kernel

theorem check_8695 : cell_8695.check = true := by
  decide +kernel

theorem check_8696 : cell_8696.check = true := by
  decide +kernel

theorem check_8697 : cell_8697.check = true := by
  decide +kernel

theorem check_8698 : cell_8698.check = true := by
  decide +kernel

theorem check_8699 : cell_8699.check = true := by
  decide +kernel

def cells : List Cell := [cell_8650, cell_8651, cell_8652, cell_8653, cell_8654, cell_8655, cell_8656, cell_8657, cell_8658, cell_8659, cell_8660, cell_8661, cell_8662, cell_8663, cell_8664, cell_8665, cell_8666, cell_8667, cell_8668, cell_8669, cell_8670, cell_8671, cell_8672, cell_8673, cell_8674, cell_8675, cell_8676, cell_8677, cell_8678, cell_8679, cell_8680, cell_8681, cell_8682, cell_8683, cell_8684, cell_8685, cell_8686, cell_8687, cell_8688, cell_8689, cell_8690, cell_8691, cell_8692, cell_8693, cell_8694, cell_8695, cell_8696, cell_8697, cell_8698, cell_8699]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8650, check_8651, check_8652, check_8653, check_8654, check_8655, check_8656, check_8657, check_8658, check_8659, check_8660, check_8661, check_8662, check_8663, check_8664, check_8665, check_8666, check_8667, check_8668, check_8669, check_8670, check_8671, check_8672, check_8673, check_8674, check_8675, check_8676, check_8677, check_8678, check_8679, check_8680, check_8681, check_8682, check_8683, check_8684, check_8685, check_8686, check_8687, check_8688, check_8689, check_8690, check_8691, check_8692, check_8693, check_8694, check_8695, check_8696, check_8697, check_8698, check_8699, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0173

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0173
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0173
open AnalyticBounds.ExpressionCertificate

theorem linked_8650 : Linked cell_8650 pieces := by
  apply Linked.of_piece piece_852 piece_852_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8650, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1510_mem, piece_1511_mem⟩

theorem linked_8651 : Linked cell_8651 pieces := by
  apply Linked.of_piece piece_852 piece_852_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8651, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1509_mem, piece_1510_mem⟩

theorem linked_8652 : Linked cell_8652 pieces := by
  apply Linked.of_piece piece_852 piece_852_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8652, List.cons_subset, List.nil_subset, and_true]
  exact piece_1509_mem

theorem linked_8653 : Linked cell_8653 pieces := by
  apply Linked.of_piece piece_853 piece_853_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8653, List.cons_subset, List.nil_subset, and_true]
  exact piece_1511_mem

theorem linked_8654 : Linked cell_8654 pieces := by
  apply Linked.of_piece piece_853 piece_853_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8654, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1510_mem, piece_1511_mem⟩

theorem linked_8655 : Linked cell_8655 pieces := by
  apply Linked.of_piece piece_853 piece_853_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8655, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1509_mem, piece_1510_mem⟩

theorem linked_8656 : Linked cell_8656 pieces := by
  apply Linked.of_piece piece_853 piece_853_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8656, List.cons_subset, List.nil_subset, and_true]
  exact piece_1509_mem

theorem linked_8657 : Linked cell_8657 pieces := by
  apply Linked.of_piece piece_853 piece_853_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8657, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1508_mem, piece_1509_mem⟩

theorem linked_8658 : Linked cell_8658 pieces := by
  apply Linked.of_piece piece_853 piece_853_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8658, List.cons_subset, List.nil_subset, and_true]
  exact piece_1508_mem

theorem linked_8659 : Linked cell_8659 pieces := by
  apply Linked.of_piece piece_853 piece_853_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8659, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1506_mem, ⟨piece_1507_mem, piece_1508_mem⟩⟩

theorem linked_8660 : Linked cell_8660 pieces := by
  apply Linked.of_piece piece_853 piece_853_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8660, List.cons_subset, List.nil_subset, and_true]
  exact piece_1506_mem

theorem linked_8661 : Linked cell_8661 pieces := by
  apply Linked.of_piece piece_854 piece_854_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8661, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1508_mem, piece_1509_mem⟩

theorem linked_8662 : Linked cell_8662 pieces := by
  apply Linked.of_piece piece_854 piece_854_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8662, List.cons_subset, List.nil_subset, and_true]
  exact piece_1508_mem

theorem linked_8663 : Linked cell_8663 pieces := by
  apply Linked.of_piece piece_854 piece_854_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8663, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1506_mem, ⟨piece_1507_mem, piece_1508_mem⟩⟩

theorem linked_8664 : Linked cell_8664 pieces := by
  apply Linked.of_piece piece_854 piece_854_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8664, List.cons_subset, List.nil_subset, and_true]
  exact piece_1506_mem

theorem linked_8665 : Linked cell_8665 pieces := by
  apply Linked.of_piece piece_854 piece_854_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8665, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1505_mem, piece_1506_mem⟩

theorem linked_8666 : Linked cell_8666 pieces := by
  apply Linked.of_piece piece_854 piece_854_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8666, List.cons_subset, List.nil_subset, and_true]
  exact piece_1505_mem

theorem linked_8667 : Linked cell_8667 pieces := by
  apply Linked.of_piece piece_854 piece_854_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8667, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1504_mem, piece_1505_mem⟩

theorem linked_8668 : Linked cell_8668 pieces := by
  apply Linked.of_piece piece_854 piece_854_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8668, List.cons_subset, List.nil_subset, and_true]
  exact piece_1504_mem

theorem linked_8669 : Linked cell_8669 pieces := by
  apply Linked.of_piece piece_855 piece_855_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8669, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1505_mem, piece_1506_mem⟩

theorem linked_8670 : Linked cell_8670 pieces := by
  apply Linked.of_piece piece_855 piece_855_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8670, List.cons_subset, List.nil_subset, and_true]
  exact piece_1505_mem

theorem linked_8671 : Linked cell_8671 pieces := by
  apply Linked.of_piece piece_855 piece_855_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8671, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1504_mem, piece_1505_mem⟩

theorem linked_8672 : Linked cell_8672 pieces := by
  apply Linked.of_piece piece_855 piece_855_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8672, List.cons_subset, List.nil_subset, and_true]
  exact piece_1504_mem

theorem linked_8673 : Linked cell_8673 pieces := by
  apply Linked.of_piece piece_855 piece_855_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8673, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1503_mem, piece_1504_mem⟩

theorem linked_8674 : Linked cell_8674 pieces := by
  apply Linked.of_piece piece_855 piece_855_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8674, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1502_mem, piece_1503_mem⟩

theorem linked_8675 : Linked cell_8675 pieces := by
  apply Linked.of_piece piece_856 piece_856_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8675, List.cons_subset, List.nil_subset, and_true]
  exact piece_1502_mem

theorem linked_8676 : Linked cell_8676 pieces := by
  apply Linked.of_piece piece_856 piece_856_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8676, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1501_mem, piece_1502_mem⟩

theorem linked_8677 : Linked cell_8677 pieces := by
  apply Linked.of_piece piece_857 piece_857_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8677, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1503_mem, piece_1504_mem⟩

theorem linked_8678 : Linked cell_8678 pieces := by
  apply Linked.of_piece piece_857 piece_857_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8678, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1502_mem, piece_1503_mem⟩

theorem linked_8679 : Linked cell_8679 pieces := by
  apply Linked.of_piece piece_857 piece_857_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8679, List.cons_subset, List.nil_subset, and_true]
  exact piece_1502_mem

theorem linked_8680 : Linked cell_8680 pieces := by
  apply Linked.of_piece piece_857 piece_857_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8680, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1501_mem, piece_1502_mem⟩

theorem linked_8681 : Linked cell_8681 pieces := by
  apply Linked.of_piece piece_857 piece_857_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8681, List.cons_subset, List.nil_subset, and_true]
  exact piece_1501_mem

theorem linked_8682 : Linked cell_8682 pieces := by
  apply Linked.of_piece piece_857 piece_857_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8682, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1500_mem, piece_1501_mem⟩

theorem linked_8683 : Linked cell_8683 pieces := by
  apply Linked.of_piece piece_857 piece_857_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8683, List.cons_subset, List.nil_subset, and_true]
  exact piece_1500_mem

theorem linked_8684 : Linked cell_8684 pieces := by
  apply Linked.of_piece piece_857 piece_857_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8684, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1499_mem, piece_1500_mem⟩

theorem linked_8685 : Linked cell_8685 pieces := by
  apply Linked.of_piece piece_858 piece_858_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8685, List.cons_subset, List.nil_subset, and_true]
  exact piece_1501_mem

theorem linked_8686 : Linked cell_8686 pieces := by
  apply Linked.of_piece piece_858 piece_858_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8686, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1500_mem, piece_1501_mem⟩

theorem linked_8687 : Linked cell_8687 pieces := by
  apply Linked.of_piece piece_858 piece_858_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8687, List.cons_subset, List.nil_subset, and_true]
  exact piece_1500_mem

theorem linked_8688 : Linked cell_8688 pieces := by
  apply Linked.of_piece piece_858 piece_858_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8688, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1499_mem, piece_1500_mem⟩

theorem linked_8689 : Linked cell_8689 pieces := by
  apply Linked.of_piece piece_858 piece_858_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8689, List.cons_subset, List.nil_subset, and_true]
  exact piece_1499_mem

theorem linked_8690 : Linked cell_8690 pieces := by
  apply Linked.of_piece piece_858 piece_858_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8690, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1498_mem, piece_1499_mem⟩

theorem linked_8691 : Linked cell_8691 pieces := by
  apply Linked.of_piece piece_858 piece_858_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8691, List.cons_subset, List.nil_subset, and_true]
  exact piece_1498_mem

theorem linked_8692 : Linked cell_8692 pieces := by
  apply Linked.of_piece piece_858 piece_858_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8692, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1497_mem, piece_1498_mem⟩

theorem linked_8693 : Linked cell_8693 pieces := by
  apply Linked.of_piece piece_859 piece_859_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8693, List.cons_subset, List.nil_subset, and_true]
  exact piece_1499_mem

theorem linked_8694 : Linked cell_8694 pieces := by
  apply Linked.of_piece piece_859 piece_859_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8694, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1498_mem, piece_1499_mem⟩

theorem linked_8695 : Linked cell_8695 pieces := by
  apply Linked.of_piece piece_859 piece_859_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8695, List.cons_subset, List.nil_subset, and_true]
  exact piece_1498_mem

theorem linked_8696 : Linked cell_8696 pieces := by
  apply Linked.of_piece piece_859 piece_859_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8696, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1497_mem, piece_1498_mem⟩

theorem linked_8697 : Linked cell_8697 pieces := by
  apply Linked.of_piece piece_859 piece_859_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8697, List.cons_subset, List.nil_subset, and_true]
  exact piece_1497_mem

theorem linked_8698 : Linked cell_8698 pieces := by
  apply Linked.of_piece piece_859 piece_859_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8698, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1496_mem, piece_1497_mem⟩

theorem linked_8699 : Linked cell_8699 pieces := by
  apply Linked.of_piece piece_859 piece_859_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8699, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1494_mem, ⟨piece_1495_mem, piece_1496_mem⟩⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0173.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0173.cells,List.forall_mem_cons]
  exact ⟨linked_8650, linked_8651, linked_8652, linked_8653, linked_8654, linked_8655, linked_8656, linked_8657, linked_8658, linked_8659, linked_8660, linked_8661, linked_8662, linked_8663, linked_8664, linked_8665, linked_8666, linked_8667, linked_8668, linked_8669, linked_8670, linked_8671, linked_8672, linked_8673, linked_8674, linked_8675, linked_8676, linked_8677, linked_8678, linked_8679, linked_8680, linked_8681, linked_8682, linked_8683, linked_8684, linked_8685, linked_8686, linked_8687, linked_8688, linked_8689, linked_8690, linked_8691, linked_8692, linked_8693, linked_8694, linked_8695, linked_8696, linked_8697, linked_8698, linked_8699, by simp⟩

theorem covered : covers (34581250000000003 / 100000000000000000 : ℚ) (34893750000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0173.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0173
