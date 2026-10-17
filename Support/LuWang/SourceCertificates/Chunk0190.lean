import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0190
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(19950000000000001 / 50000000000000000 : ℚ), (19953125000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (69914523886611 / 100000000000000 : ℚ)
  w := (1577360489421 / 1000000000000 : ℚ)
  center := (19951562500000001 / 50000000000000000 : ℚ)
  supportValue := (5489894770034919 / 10000000000000000 : ℚ)
  supportSlope := (-32786504877826417 / 10000000000000000 : ℚ)
  oldCenter := (5489894770034919 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_969
  oldLo := (13675000000000001 / 25000000000000000 : ℚ)
  oldHi := (13650000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1288]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_9500 : Cell := { cellDefaults with
  oldLo := (54849999999999999 / 100000000000000000 : ℚ)
  oldHi := (54949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1295, piece_1296]
}

def cell_9501 : Cell := { cellDefaults with
  domain := ⟨(19953125000000001 / 50000000000000000 : ℚ), (19956250000000001 / 50000000000000000 : ℚ)⟩
  center := (19954687500000001 / 50000000000000000 : ℚ)
  supportValue := (1371961517223031 / 2500000000000000 : ℚ)
  supportSlope := (-1310786614430981 / 400000000000000 : ℚ)
  oldCenter := (1371961517223031 / 2500000000000000 : ℚ)
  oldLo := (54849999999999999 / 100000000000000000 : ℚ)
  oldHi := (13725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1295]
}

def cell_9502 : Cell := { cellDefaults with
  domain := ⟨(19956250000000001 / 50000000000000000 : ℚ), (19959375000000001 / 50000000000000000 : ℚ)⟩
  center := (19957812500000001 / 50000000000000000 : ℚ)
  supportValue := (2742899280160963 / 5000000000000000 : ℚ)
  supportSlope := (-409389385606751 / 125000000000000 : ℚ)
  oldCenter := (2742899280160963 / 5000000000000000 : ℚ)
  oldLo := (13700000000000001 / 25000000000000000 : ℚ)
  oldHi := (13725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1294, piece_1295]
}

def cell_9503 : Cell := { cellDefaults with
  domain := ⟨(19959375000000001 / 50000000000000000 : ℚ), (19962500000000001 / 50000000000000000 : ℚ)⟩
  center := (19960937500000001 / 50000000000000000 : ℚ)
  supportValue := (5483752051320211 / 10000000000000000 : ℚ)
  supportSlope := (-1636827955978859 / 500000000000000 : ℚ)
  oldCenter := (5483752051320211 / 10000000000000000 : ℚ)
  oldLo := (13700000000000001 / 25000000000000000 : ℚ)
  oldHi := (54849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1294]
}

def cell_9504 : Cell := { cellDefaults with
  domain := ⟨(19962500000000001 / 50000000000000000 : ℚ), (19965625000000001 / 50000000000000000 : ℚ)⟩
  center := (19964062500000001 / 50000000000000000 : ℚ)
  supportValue := (1370426652873303 / 2500000000000000 : ℚ)
  supportSlope := (-32717500732317717 / 10000000000000000 : ℚ)
  oldCenter := (1370426652873303 / 2500000000000000 : ℚ)
  oldLo := (13700000000000001 / 25000000000000000 : ℚ)
  oldHi := (54849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1294]
}

def cell_9505 : Cell := { cellDefaults with
  domain := ⟨(19965625000000001 / 50000000000000000 : ℚ), (19968750000000001 / 50000000000000000 : ℚ)⟩
  center := (19967187500000001 / 50000000000000000 : ℚ)
  supportValue := (342478894367841 / 625000000000000 : ℚ)
  supportSlope := (-65403630661649 / 20000000000000 : ℚ)
  oldCenter := (342478894367841 / 625000000000000 : ℚ)
  oldLo := (54749999999999999 / 100000000000000000 : ℚ)
  oldHi := (54849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1293, piece_1294]
}

def cell_9506 : Cell := { cellDefaults with
  domain := ⟨(19968750000000001 / 50000000000000000 : ℚ), (19971875000000001 / 50000000000000000 : ℚ)⟩
  center := (19970312500000001 / 50000000000000000 : ℚ)
  supportValue := (5477618935752377 / 10000000000000000 : ℚ)
  supportSlope := (-3268445650469687 / 1000000000000000 : ℚ)
  oldCenter := (5477618935752377 / 10000000000000000 : ℚ)
  oldLo := (54749999999999999 / 100000000000000000 : ℚ)
  oldHi := (13700000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1293]
}

def cell_9507 : Cell := { cellDefaults with
  domain := ⟨(19971875000000001 / 50000000000000000 : ℚ), (19975000000000001 / 50000000000000000 : ℚ)⟩
  center := (19973437500000001 / 50000000000000000 : ℚ)
  supportValue := (5475576751282761 / 10000000000000000 : ℚ)
  supportSlope := (-1633326719153061 / 500000000000000 : ℚ)
  oldCenter := (5475576751282761 / 10000000000000000 : ℚ)
  oldHi := (13700000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1292, piece_1293]
}

def cell_9508 : Cell := { cellDefaults with
  domain := ⟨(19975000000000001 / 50000000000000000 : ℚ), (19978125000000001 / 50000000000000000 : ℚ)⟩
  r := (69868890005311 / 100000000000000 : ℚ)
  w := (24635793583 / 15625000000 : ℚ)
  center := (19976562500000001 / 50000000000000000 : ℚ)
  supportValue := (5481977549364901 / 10000000000000000 : ℚ)
  supportSlope := (-6539692918494211 / 2000000000000000 : ℚ)
  oldCenter := (5481977549364901 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_970
  oldLo := (13700000000000001 / 25000000000000000 : ℚ)
  oldHi := (54849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1294]
}

def cell_9509 : Cell := { cellDefaults with
  domain := ⟨(19978125000000001 / 50000000000000000 : ℚ), (19981250000000001 / 50000000000000000 : ℚ)⟩
  r := (69868890005311 / 100000000000000 : ℚ)
  w := (24635793583 / 15625000000 : ℚ)
  center := (19979687500000001 / 50000000000000000 : ℚ)
  supportValue := (2739967239239143 / 5000000000000000 : ℚ)
  supportSlope := (-16341069824452603 / 5000000000000000 : ℚ)
  oldCenter := (2739967239239143 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_970
  oldLo := (54749999999999999 / 100000000000000000 : ℚ)
  oldHi := (54849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1293, piece_1294]
}

def cell_9510 : Cell := { cellDefaults with
  domain := ⟨(19981250000000001 / 50000000000000000 : ℚ), (19984375000000001 / 50000000000000000 : ℚ)⟩
  r := (69868890005311 / 100000000000000 : ℚ)
  w := (24635793583 / 15625000000 : ℚ)
  center := (19982812500000001 / 50000000000000000 : ℚ)
  supportValue := (5477892291138379 / 10000000000000000 : ℚ)
  supportSlope := (-3266548355785659 / 1000000000000000 : ℚ)
  oldCenter := (5477892291138379 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_970
  oldLo := (54749999999999999 / 100000000000000000 : ℚ)
  oldHi := (13700000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1293]
}

def cell_9511 : Cell := { cellDefaults with
  domain := ⟨(19984375000000001 / 50000000000000000 : ℚ), (19987500000000001 / 50000000000000000 : ℚ)⟩
  r := (69868890005311 / 100000000000000 : ℚ)
  w := (24635793583 / 15625000000 : ℚ)
  center := (19985937500000001 / 50000000000000000 : ℚ)
  supportValue := (1095170258299067 / 2000000000000000 : ℚ)
  supportSlope := (-1632345611369601 / 500000000000000 : ℚ)
  oldCenter := (1095170258299067 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_970
  oldHi := (13700000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1292, piece_1293]
}

def cell_9512 : Cell := { cellDefaults with
  domain := ⟨(19987500000000001 / 50000000000000000 : ℚ), (19990625000000001 / 50000000000000000 : ℚ)⟩
  r := (69868890005311 / 100000000000000 : ℚ)
  w := (24635793583 / 15625000000 : ℚ)
  center := (19989062500000001 / 50000000000000000 : ℚ)
  supportValue := (1094762258880101 / 2000000000000000 : ℚ)
  supportSlope := (-3263255156014111 / 1000000000000000 : ℚ)
  oldCenter := (1094762258880101 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_970
  oldHi := (54749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1292]
}

def cell_9513 : Cell := { cellDefaults with
  domain := ⟨(19990625000000001 / 50000000000000000 : ℚ), (19993750000000001 / 50000000000000000 : ℚ)⟩
  r := (69868890005311 / 100000000000000 : ℚ)
  w := (24635793583 / 15625000000 : ℚ)
  center := (19992187500000001 / 50000000000000000 : ℚ)
  supportValue := (2735886176307749 / 5000000000000000 : ℚ)
  supportSlope := (-130454283993231 / 40000000000000 : ℚ)
  oldCenter := (2735886176307749 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_970
  oldHi := (54749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1292]
}

def cell_9514 : Cell := { cellDefaults with
  domain := ⟨(19993750000000001 / 50000000000000000 : ℚ), (19996875000000001 / 50000000000000000 : ℚ)⟩
  r := (69868890005311 / 100000000000000 : ℚ)
  w := (24635793583 / 15625000000 : ℚ)
  center := (19995312500000001 / 50000000000000000 : ℚ)
  supportValue := (1367433638759211 / 2500000000000000 : ℚ)
  supportSlope := (-32597799272124917 / 10000000000000000 : ℚ)
  oldCenter := (1367433638759211 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_970
  oldLo := (54649999999999999 / 100000000000000000 : ℚ)
  oldHi := (54749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1291, piece_1292]
}

def cell_9515 : Cell := { cellDefaults with
  domain := ⟨(19996875000000001 / 50000000000000000 : ℚ), (20000000000000001 / 50000000000000000 : ℚ)⟩
  r := (69868890005311 / 100000000000000 : ℚ)
  w := (24635793583 / 15625000000 : ℚ)
  center := (19998437500000001 / 50000000000000000 : ℚ)
  supportValue := (5467697668054017 / 10000000000000000 : ℚ)
  supportSlope := (-3258070044470429 / 1000000000000000 : ℚ)
  oldCenter := (5467697668054017 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_970
  oldLo := (54649999999999999 / 100000000000000000 : ℚ)
  oldHi := (13675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1291]
}

def cell_9516 : Cell := { cellDefaults with
  domain := ⟨(20000000000000001 / 50000000000000000 : ℚ), (20003125000000001 / 50000000000000000 : ℚ)⟩
  r := (87279153203 / 125000000000 : ℚ)
  w := (15760224200249 / 10000000000000 : ℚ)
  center := (20001562500000001 / 50000000000000000 : ℚ)
  supportValue := (5474082802116249 / 10000000000000000 : ℚ)
  supportSlope := (-815333462388601 / 250000000000000 : ℚ)
  oldCenter := (5474082802116249 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_971
  oldHi := (13700000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1292, piece_1293]
}

def cell_9517 : Cell := { cellDefaults with
  domain := ⟨(20003125000000001 / 50000000000000000 : ℚ), (20006250000000001 / 50000000000000000 : ℚ)⟩
  r := (87279153203 / 125000000000 : ℚ)
  w := (15760224200249 / 10000000000000 : ℚ)
  center := (20004687500000001 / 50000000000000000 : ℚ)
  supportValue := (5472045044617009 / 10000000000000000 : ℚ)
  supportSlope := (-814865953982391 / 250000000000000 : ℚ)
  oldCenter := (5472045044617009 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_971
  oldHi := (54749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1292]
}

def cell_9518 : Cell := { cellDefaults with
  domain := ⟨(20006250000000001 / 50000000000000000 : ℚ), (20009375000000001 / 50000000000000000 : ℚ)⟩
  r := (87279153203 / 125000000000 : ℚ)
  w := (15760224200249 / 10000000000000 : ℚ)
  center := (20007812500000001 / 50000000000000000 : ℚ)
  supportValue := (2735004235405873 / 5000000000000000 : ℚ)
  supportSlope := (-16289108915046313 / 5000000000000000 : ℚ)
  oldCenter := (2735004235405873 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_971
  oldLo := (54649999999999999 / 100000000000000000 : ℚ)
  oldHi := (54749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1291, piece_1292]
}

def cell_9519 : Cell := { cellDefaults with
  domain := ⟨(20009375000000001 / 50000000000000000 : ℚ), (20012500000000001 / 50000000000000000 : ℚ)⟩
  r := (87279153203 / 125000000000 : ℚ)
  w := (15760224200249 / 10000000000000 : ℚ)
  center := (20010937500000001 / 50000000000000000 : ℚ)
  supportValue := (2733986382611689 / 5000000000000000 : ℚ)
  supportSlope := (-32561830804560543 / 10000000000000000 : ℚ)
  oldCenter := (2733986382611689 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_971
  oldLo := (54649999999999999 / 100000000000000000 : ℚ)
  oldHi := (13675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1291]
}

def cell_9520 : Cell := { cellDefaults with
  domain := ⟨(20012500000000001 / 50000000000000000 : ℚ), (20015625000000001 / 50000000000000000 : ℚ)⟩
  r := (87279153203 / 125000000000 : ℚ)
  w := (15760224200249 / 10000000000000 : ℚ)
  center := (20014062500000001 / 50000000000000000 : ℚ)
  supportValue := (546593824148807 / 1000000000000000 : ℚ)
  supportSlope := (-3254311416231559 / 1000000000000000 : ℚ)
  oldCenter := (546593824148807 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_971
  oldLo := (5464804469273743 / 10000000000000000 : ℚ)
  oldHi := (13675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1290, piece_1291]
}

def cell_9521 : Cell := { cellDefaults with
  domain := ⟨(20015625000000001 / 50000000000000000 : ℚ), (20018750000000001 / 50000000000000000 : ℚ)⟩
  r := (87279153203 / 125000000000 : ℚ)
  w := (15760224200249 / 10000000000000 : ℚ)
  center := (20017187500000001 / 50000000000000000 : ℚ)
  supportValue := (2731952364379679 / 5000000000000000 : ℚ)
  supportSlope := (-16264535893864007 / 5000000000000000 : ℚ)
  oldCenter := (2731952364379679 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_971
  oldLo := (13650000000000001 / 25000000000000000 : ℚ)
  oldHi := (54649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1289, piece_1290]
}

def cell_9522 : Cell := { cellDefaults with
  domain := ⟨(20018750000000001 / 50000000000000000 : ℚ), (20021875000000001 / 50000000000000000 : ℚ)⟩
  r := (87279153203 / 125000000000 : ℚ)
  w := (15760224200249 / 10000000000000 : ℚ)
  center := (20020312500000001 / 50000000000000000 : ℚ)
  supportValue := (5461872252070967 / 10000000000000000 : ℚ)
  supportSlope := (-812754194015497 / 250000000000000 : ℚ)
  oldCenter := (5461872252070967 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_971
  oldLo := (13650000000000001 / 25000000000000000 : ℚ)
  oldHi := (5464804469273743 / 10000000000000000 : ℚ)
  oldPieces := [piece_1289]
}

def cell_9523 : Cell := { cellDefaults with
  domain := ⟨(20021875000000001 / 50000000000000000 : ℚ), (20025000000000001 / 50000000000000000 : ℚ)⟩
  r := (87279153203 / 125000000000 : ℚ)
  w := (15760224200249 / 10000000000000 : ℚ)
  center := (20023437500000001 / 50000000000000000 : ℚ)
  supportValue := (5459840931138249 / 10000000000000000 : ℚ)
  supportSlope := (-324942214604107 / 100000000000000 : ℚ)
  oldCenter := (5459840931138249 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_971
  oldLo := (27274999999999999 / 50000000000000000 : ℚ)
  oldHi := (5464804469273743 / 10000000000000000 : ℚ)
  oldPieces := [piece_1288, piece_1289]
}

def cell_9524 : Cell := { cellDefaults with
  domain := ⟨(20025000000000001 / 50000000000000000 : ℚ), (20028125000000001 / 50000000000000000 : ℚ)⟩
  r := (1090278446533 / 1562500000000 : ℚ)
  w := (15753555339141 / 10000000000000 : ℚ)
  center := (20026562500000001 / 50000000000000000 : ℚ)
  supportValue := (2733104899579659 / 5000000000000000 : ℚ)
  supportSlope := (-813100354275953 / 250000000000000 : ℚ)
  oldCenter := (2733104899579659 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_972
  oldLo := (54649999999999999 / 100000000000000000 : ℚ)
  oldHi := (13675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1291]
}

def cell_9525 : Cell := { cellDefaults with
  domain := ⟨(20028125000000001 / 50000000000000000 : ℚ), (20031250000000001 / 50000000000000000 : ℚ)⟩
  r := (1090278446533 / 1562500000000 : ℚ)
  w := (15753555339141 / 10000000000000 : ℚ)
  center := (20029687500000001 / 50000000000000000 : ℚ)
  supportValue := (5464177509098237 / 10000000000000000 : ℚ)
  supportSlope := (-325097249403683 / 100000000000000 : ℚ)
  oldCenter := (5464177509098237 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_972
  oldLo := (13650000000000001 / 25000000000000000 : ℚ)
  oldHi := (13675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1289, piece_1290, piece_1291]
}

def cell_9526 : Cell := { cellDefaults with
  domain := ⟨(20031250000000001 / 50000000000000000 : ℚ), (20034375000000001 / 50000000000000000 : ℚ)⟩
  r := (1090278446533 / 1562500000000 : ℚ)
  w := (15753555339141 / 10000000000000 : ℚ)
  center := (20032812500000001 / 50000000000000000 : ℚ)
  supportValue := (5462146210698637 / 10000000000000000 : ℚ)
  supportSlope := (-16245665410412613 / 5000000000000000 : ℚ)
  oldCenter := (5462146210698637 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_972
  oldLo := (13650000000000001 / 25000000000000000 : ℚ)
  oldHi := (5464804469273743 / 10000000000000000 : ℚ)
  oldPieces := [piece_1289]
}

def cell_9527 : Cell := { cellDefaults with
  domain := ⟨(20034375000000001 / 50000000000000000 : ℚ), (20037500000000001 / 50000000000000000 : ℚ)⟩
  r := (1090278446533 / 1562500000000 : ℚ)
  w := (15753555339141 / 10000000000000 : ℚ)
  center := (20035937500000001 / 50000000000000000 : ℚ)
  supportValue := (2730058045607801 / 5000000000000000 : ℚ)
  supportSlope := (-32474727739533193 / 10000000000000000 : ℚ)
  oldCenter := (2730058045607801 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_972
  oldLo := (27274999999999999 / 50000000000000000 : ℚ)
  oldHi := (5464804469273743 / 10000000000000000 : ℚ)
  oldPieces := [piece_1288, piece_1289]
}

def cell_9528 : Cell := { cellDefaults with
  domain := ⟨(20037500000000001 / 50000000000000000 : ℚ), (20040625000000001 / 50000000000000000 : ℚ)⟩
  r := (1090278446533 / 1562500000000 : ℚ)
  w := (15753555339141 / 10000000000000 : ℚ)
  center := (20039062500000001 / 50000000000000000 : ℚ)
  supportValue := (5458086850731141 / 10000000000000000 : ℚ)
  supportSlope := (-16229348409204647 / 5000000000000000 : ℚ)
  oldCenter := (5458086850731141 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_972
  oldLo := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1288]
}

def cell_9529 : Cell := { cellDefaults with
  domain := ⟨(20040625000000001 / 50000000000000000 : ℚ), (20043750000000001 / 50000000000000000 : ℚ)⟩
  r := (1090278446533 / 1562500000000 : ℚ)
  w := (15753555339141 / 10000000000000 : ℚ)
  center := (20042187500000001 / 50000000000000000 : ℚ)
  supportValue := (5456058770482719 / 10000000000000000 : ℚ)
  supportSlope := (-324398566465689 / 100000000000000 : ℚ)
  oldCenter := (5456058770482719 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_972
  oldLo := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1288]
}

def cell_9530 : Cell := { cellDefaults with
  domain := ⟨(20043750000000001 / 50000000000000000 : ℚ), (20046875000000001 / 50000000000000000 : ℚ)⟩
  r := (1090278446533 / 1562500000000 : ℚ)
  w := (15753555339141 / 10000000000000 : ℚ)
  center := (20045312500000001 / 50000000000000000 : ℚ)
  supportValue := (218161268605653 / 400000000000000 : ℚ)
  supportSlope := (-32426002264074327 / 10000000000000000 : ℚ)
  oldCenter := (218161268605653 / 400000000000000 : ℚ)
  newCoefficients := coefficients_972
  oldLo := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1287, piece_1288]
}

def cell_9531 : Cell := { cellDefaults with
  domain := ⟨(20046875000000001 / 50000000000000000 : ℚ), (20050000000000001 / 50000000000000000 : ℚ)⟩
  r := (1090278446533 / 1562500000000 : ℚ)
  w := (15753555339141 / 10000000000000 : ℚ)
  center := (20048437500000001 / 50000000000000000 : ℚ)
  supportValue := (5452005671080157 / 10000000000000000 : ℚ)
  supportSlope := (-4050910492114923 / 1250000000000000 : ℚ)
  oldCenter := (5452005671080157 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_972
  oldLo := (13625000000000001 / 25000000000000000 : ℚ)
  oldHi := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1287]
}

def cell_9532 : Cell := { cellDefaults with
  domain := ⟨(20050000000000001 / 50000000000000000 : ℚ), (20053125000000001 / 50000000000000000 : ℚ)⟩
  r := (69732383460497 / 100000000000000 : ℚ)
  w := (15746900938363 / 10000000000000 : ℚ)
  center := (20051562500000001 / 50000000000000000 : ℚ)
  supportValue := (2729179337533139 / 5000000000000000 : ℚ)
  supportSlope := (-3243986378919317 / 1000000000000000 : ℚ)
  oldCenter := (2729179337533139 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_973
  oldLo := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1288]
}

def cell_9533 : Cell := { cellDefaults with
  domain := ⟨(20053125000000001 / 50000000000000000 : ℚ), (20056250000000001 / 50000000000000000 : ℚ)⟩
  r := (69732383460497 / 100000000000000 : ℚ)
  w := (15746900938363 / 10000000000000 : ℚ)
  center := (20054687500000001 / 50000000000000000 : ℚ)
  supportValue := (5456331770903157 / 10000000000000000 : ℚ)
  supportSlope := (-253289491772557 / 78125000000000 : ℚ)
  oldCenter := (5456331770903157 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_973
  oldLo := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1288]
}

def cell_9534 : Cell := { cellDefaults with
  domain := ⟨(20056250000000001 / 50000000000000000 : ℚ), (20059375000000001 / 50000000000000000 : ℚ)⟩
  r := (69732383460497 / 100000000000000 : ℚ)
  w := (15746900938363 / 10000000000000 : ℚ)
  center := (20057812500000001 / 50000000000000000 : ℚ)
  supportValue := (1363576483155819 / 2500000000000000 : ℚ)
  supportSlope := (-16203272552424153 / 5000000000000000 : ℚ)
  oldCenter := (1363576483155819 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_973
  oldLo := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1287, piece_1288]
}

def cell_9535 : Cell := { cellDefaults with
  domain := ⟨(20059375000000001 / 50000000000000000 : ℚ), (20062500000000001 / 50000000000000000 : ℚ)⟩
  r := (69732383460497 / 100000000000000 : ℚ)
  w := (15746900938363 / 10000000000000 : ℚ)
  center := (20060937500000001 / 50000000000000000 : ℚ)
  supportValue := (5452281060713539 / 10000000000000000 : ℚ)
  supportSlope := (-32388545148549497 / 10000000000000000 : ℚ)
  oldCenter := (5452281060713539 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_973
  oldLo := (13625000000000001 / 25000000000000000 : ℚ)
  oldHi := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1287]
}

def cell_9536 : Cell := { cellDefaults with
  domain := ⟨(20062500000000001 / 50000000000000000 : ℚ), (20065625000000001 / 50000000000000000 : ℚ)⟩
  r := (69732383460497 / 100000000000000 : ℚ)
  w := (15746900938363 / 10000000000000 : ℚ)
  center := (20064062500000001 / 50000000000000000 : ℚ)
  supportValue := (1090051472590849 / 2000000000000000 : ℚ)
  supportSlope := (-1618583525310413 / 500000000000000 : ℚ)
  oldCenter := (1090051472590849 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_973
  oldLo := (27224999999999999 / 50000000000000000 : ℚ)
  oldHi := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1286, piece_1287]
}

def cell_9537 : Cell := { cellDefaults with
  domain := ⟨(20065625000000001 / 50000000000000000 : ℚ), (20068750000000001 / 50000000000000000 : ℚ)⟩
  r := (69732383460497 / 100000000000000 : ℚ)
  w := (15746900938363 / 10000000000000 : ℚ)
  center := (20067187500000001 / 50000000000000000 : ℚ)
  supportValue := (5448234560529187 / 10000000000000000 : ℚ)
  supportSlope := (-32356084026048393 / 10000000000000000 : ℚ)
  oldCenter := (5448234560529187 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_973
  oldLo := (27224999999999999 / 50000000000000000 : ℚ)
  oldHi := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1286]
}

def cell_9538 : Cell := { cellDefaults with
  domain := ⟨(20068750000000001 / 50000000000000000 : ℚ), (20071875000000001 / 50000000000000000 : ℚ)⟩
  r := (69732383460497 / 100000000000000 : ℚ)
  w := (15746900938363 / 10000000000000 : ℚ)
  center := (20070312500000001 / 50000000000000000 : ℚ)
  supportValue := (340388305699923 / 625000000000000 : ℚ)
  supportSlope := (-6467464022563263 / 2000000000000000 : ℚ)
  oldCenter := (340388305699923 / 625000000000000 : ℚ)
  newCoefficients := coefficients_973
  oldLo := (27224999999999999 / 50000000000000000 : ℚ)
  oldHi := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1286]
}

def cell_9539 : Cell := { cellDefaults with
  domain := ⟨(20071875000000001 / 50000000000000000 : ℚ), (20075000000000001 / 50000000000000000 : ℚ)⟩
  r := (69732383460497 / 100000000000000 : ℚ)
  w := (15746900938363 / 10000000000000 : ℚ)
  center := (20073437500000001 / 50000000000000000 : ℚ)
  supportValue := (1088838453256343 / 2000000000000000 : ℚ)
  supportSlope := (-16161581895062227 / 5000000000000000 : ℚ)
  oldCenter := (1088838453256343 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_973
  oldLo := (13600000000000001 / 25000000000000000 : ℚ)
  oldHi := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1285, piece_1286]
}

def cell_9540 : Cell := { cellDefaults with
  domain := ⟨(20075000000000001 / 50000000000000000 : ℚ), (20078125000000001 / 50000000000000000 : ℚ)⟩
  r := (69687012739307 / 100000000000000 : ℚ)
  w := (15740260515101 / 10000000000000 : ℚ)
  center := (20076562500000001 / 50000000000000000 : ℚ)
  supportValue := (5450529349527761 / 10000000000000000 : ℚ)
  supportSlope := (-16176108966536873 / 5000000000000000 : ℚ)
  oldCenter := (5450529349527761 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_974
  oldLo := (27224999999999999 / 50000000000000000 : ℚ)
  oldHi := (27274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1286, piece_1287]
}

def cell_9541 : Cell := { cellDefaults with
  domain := ⟨(20078125000000001 / 50000000000000000 : ℚ), (20081250000000001 / 50000000000000000 : ℚ)⟩
  r := (69687012739307 / 100000000000000 : ℚ)
  w := (15740260515101 / 10000000000000 : ℚ)
  center := (20079687500000001 / 50000000000000000 : ℚ)
  supportValue := (2724253880950771 / 5000000000000000 : ℚ)
  supportSlope := (-404216857921913 / 125000000000000 : ℚ)
  oldCenter := (2724253880950771 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_974
  oldLo := (27224999999999999 / 50000000000000000 : ℚ)
  oldHi := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1286]
}

def cell_9542 : Cell := { cellDefaults with
  domain := ⟨(20081250000000001 / 50000000000000000 : ℚ), (20084375000000001 / 50000000000000000 : ℚ)⟩
  r := (69687012739307 / 100000000000000 : ℚ)
  w := (15740260515101 / 10000000000000 : ℚ)
  center := (20082812500000001 / 50000000000000000 : ℚ)
  supportValue := (1089297452511407 / 2000000000000000 : ℚ)
  supportSlope := (-16159307978362847 / 5000000000000000 : ℚ)
  oldCenter := (1089297452511407 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_974
  oldLo := (27224999999999999 / 50000000000000000 : ℚ)
  oldHi := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1286]
}

def cell_9543 : Cell := { cellDefaults with
  domain := ⟨(20084375000000001 / 50000000000000000 : ℚ), (20087500000000001 / 50000000000000000 : ℚ)⟩
  r := (69687012739307 / 100000000000000 : ℚ)
  w := (15740260515101 / 10000000000000 : ℚ)
  center := (20085937500000001 / 50000000000000000 : ℚ)
  supportValue := (1088893569826381 / 2000000000000000 : ℚ)
  supportSlope := (-16151897849994157 / 5000000000000000 : ℚ)
  oldCenter := (1088893569826381 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_974
  oldLo := (13600000000000001 / 25000000000000000 : ℚ)
  oldHi := (13625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1285, piece_1286]
}

def cell_9544 : Cell := { cellDefaults with
  domain := ⟨(20087500000000001 / 50000000000000000 : ℚ), (20090625000000001 / 50000000000000000 : ℚ)⟩
  r := (69687012739307 / 100000000000000 : ℚ)
  w := (15740260515101 / 10000000000000 : ℚ)
  center := (20089062500000001 / 50000000000000000 : ℚ)
  supportValue := (1360612342812711 / 2500000000000000 : ℚ)
  supportSlope := (-32286278806026303 / 10000000000000000 : ℚ)
  oldCenter := (1360612342812711 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_974
  oldLo := (13600000000000001 / 25000000000000000 : ℚ)
  oldHi := (27224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1285]
}

def cell_9545 : Cell := { cellDefaults with
  domain := ⟨(20090625000000001 / 50000000000000000 : ℚ), (20093750000000001 / 50000000000000000 : ℚ)⟩
  r := (69687012739307 / 100000000000000 : ℚ)
  w := (15740260515101 / 10000000000000 : ℚ)
  center := (20092187500000001 / 50000000000000000 : ℚ)
  supportValue := (1360108015690067 / 2500000000000000 : ℚ)
  supportSlope := (-16134521415374081 / 5000000000000000 : ℚ)
  oldCenter := (1360108015690067 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_974
  oldLo := (27174999999999999 / 50000000000000000 : ℚ)
  oldHi := (27224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1284, piece_1285]
}

def cell_9546 : Cell := { cellDefaults with
  domain := ⟨(20093750000000001 / 50000000000000000 : ℚ), (20096875000000001 / 50000000000000000 : ℚ)⟩
  r := (69687012739307 / 100000000000000 : ℚ)
  w := (15740260515101 / 10000000000000 : ℚ)
  center := (20095312500000001 / 50000000000000000 : ℚ)
  supportValue := (5438415671547797 / 10000000000000000 : ℚ)
  supportSlope := (-3225399028309539 / 1000000000000000 : ℚ)
  oldCenter := (5438415671547797 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_974
  oldLo := (27174999999999999 / 50000000000000000 : ℚ)
  oldHi := (13600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1284]
}

def cell_9547 : Cell := { cellDefaults with
  domain := ⟨(20096875000000001 / 50000000000000000 : ℚ), (20100000000000001 / 50000000000000000 : ℚ)⟩
  r := (69687012739307 / 100000000000000 : ℚ)
  w := (15740260515101 / 10000000000000 : ℚ)
  center := (20098437500000001 / 50000000000000000 : ℚ)
  supportValue := (5436400380718297 / 10000000000000000 : ℚ)
  supportSlope := (-128941207506017 / 40000000000000 : ℚ)
  oldCenter := (5436400380718297 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_974
  oldLo := (27174999999999999 / 50000000000000000 : ℚ)
  oldHi := (13600000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1284]
}

def cell_9548 : Cell := { cellDefaults with
  domain := ⟨(20100000000000001 / 50000000000000000 : ℚ), (20103125000000001 / 50000000000000000 : ℚ)⟩
  r := (69641705530919 / 100000000000000 : ℚ)
  w := (7866817317849 / 5000000000000 : ℚ)
  center := (20101562500000001 / 50000000000000000 : ℚ)
  supportValue := (1088544337837363 / 2000000000000000 : ℚ)
  supportSlope := (-32267578165097177 / 10000000000000000 : ℚ)
  oldCenter := (1088544337837363 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_975
  oldLo := (13600000000000001 / 25000000000000000 : ℚ)
  oldHi := (27224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1285]
}

def cell_9549 : Cell := { cellDefaults with
  domain := ⟨(20103125000000001 / 50000000000000000 : ℚ), (20106250000000001 / 50000000000000000 : ℚ)⟩
  r := (69641705530919 / 100000000000000 : ℚ)
  w := (7866817317849 / 5000000000000 : ℚ)
  center := (20104687500000001 / 50000000000000000 : ℚ)
  supportValue := (170022048390973 / 312500000000000 : ℚ)
  supportSlope := (-644993580912967 / 200000000000000 : ℚ)
  oldCenter := (170022048390973 / 312500000000000 : ℚ)
  newCoefficients := coefficients_975
  oldLo := (27174999999999999 / 50000000000000000 : ℚ)
  oldHi := (27224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1284, piece_1285]
}

theorem check_9500 : cell_9500.check = true := by
  decide +kernel

theorem check_9501 : cell_9501.check = true := by
  decide +kernel

theorem check_9502 : cell_9502.check = true := by
  decide +kernel

theorem check_9503 : cell_9503.check = true := by
  decide +kernel

theorem check_9504 : cell_9504.check = true := by
  decide +kernel

theorem check_9505 : cell_9505.check = true := by
  decide +kernel

theorem check_9506 : cell_9506.check = true := by
  decide +kernel

theorem check_9507 : cell_9507.check = true := by
  decide +kernel

theorem check_9508 : cell_9508.check = true := by
  decide +kernel

theorem check_9509 : cell_9509.check = true := by
  decide +kernel

theorem check_9510 : cell_9510.check = true := by
  decide +kernel

theorem check_9511 : cell_9511.check = true := by
  decide +kernel

theorem check_9512 : cell_9512.check = true := by
  decide +kernel

theorem check_9513 : cell_9513.check = true := by
  decide +kernel

theorem check_9514 : cell_9514.check = true := by
  decide +kernel

theorem check_9515 : cell_9515.check = true := by
  decide +kernel

theorem check_9516 : cell_9516.check = true := by
  decide +kernel

theorem check_9517 : cell_9517.check = true := by
  decide +kernel

theorem check_9518 : cell_9518.check = true := by
  decide +kernel

theorem check_9519 : cell_9519.check = true := by
  decide +kernel

theorem check_9520 : cell_9520.check = true := by
  decide +kernel

theorem check_9521 : cell_9521.check = true := by
  decide +kernel

theorem check_9522 : cell_9522.check = true := by
  decide +kernel

theorem check_9523 : cell_9523.check = true := by
  decide +kernel

theorem check_9524 : cell_9524.check = true := by
  decide +kernel

theorem check_9525 : cell_9525.check = true := by
  decide +kernel

theorem check_9526 : cell_9526.check = true := by
  decide +kernel

theorem check_9527 : cell_9527.check = true := by
  decide +kernel

theorem check_9528 : cell_9528.check = true := by
  decide +kernel

theorem check_9529 : cell_9529.check = true := by
  decide +kernel

theorem check_9530 : cell_9530.check = true := by
  decide +kernel

theorem check_9531 : cell_9531.check = true := by
  decide +kernel

theorem check_9532 : cell_9532.check = true := by
  decide +kernel

theorem check_9533 : cell_9533.check = true := by
  decide +kernel

theorem check_9534 : cell_9534.check = true := by
  decide +kernel

theorem check_9535 : cell_9535.check = true := by
  decide +kernel

theorem check_9536 : cell_9536.check = true := by
  decide +kernel

theorem check_9537 : cell_9537.check = true := by
  decide +kernel

theorem check_9538 : cell_9538.check = true := by
  decide +kernel

theorem check_9539 : cell_9539.check = true := by
  decide +kernel

theorem check_9540 : cell_9540.check = true := by
  decide +kernel

theorem check_9541 : cell_9541.check = true := by
  decide +kernel

theorem check_9542 : cell_9542.check = true := by
  decide +kernel

theorem check_9543 : cell_9543.check = true := by
  decide +kernel

theorem check_9544 : cell_9544.check = true := by
  decide +kernel

theorem check_9545 : cell_9545.check = true := by
  decide +kernel

theorem check_9546 : cell_9546.check = true := by
  decide +kernel

theorem check_9547 : cell_9547.check = true := by
  decide +kernel

theorem check_9548 : cell_9548.check = true := by
  decide +kernel

theorem check_9549 : cell_9549.check = true := by
  decide +kernel

def cells : List Cell := [cell_9500, cell_9501, cell_9502, cell_9503, cell_9504, cell_9505, cell_9506, cell_9507, cell_9508, cell_9509, cell_9510, cell_9511, cell_9512, cell_9513, cell_9514, cell_9515, cell_9516, cell_9517, cell_9518, cell_9519, cell_9520, cell_9521, cell_9522, cell_9523, cell_9524, cell_9525, cell_9526, cell_9527, cell_9528, cell_9529, cell_9530, cell_9531, cell_9532, cell_9533, cell_9534, cell_9535, cell_9536, cell_9537, cell_9538, cell_9539, cell_9540, cell_9541, cell_9542, cell_9543, cell_9544, cell_9545, cell_9546, cell_9547, cell_9548, cell_9549]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_9500, check_9501, check_9502, check_9503, check_9504, check_9505, check_9506, check_9507, check_9508, check_9509, check_9510, check_9511, check_9512, check_9513, check_9514, check_9515, check_9516, check_9517, check_9518, check_9519, check_9520, check_9521, check_9522, check_9523, check_9524, check_9525, check_9526, check_9527, check_9528, check_9529, check_9530, check_9531, check_9532, check_9533, check_9534, check_9535, check_9536, check_9537, check_9538, check_9539, check_9540, check_9541, check_9542, check_9543, check_9544, check_9545, check_9546, check_9547, check_9548, check_9549, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0190

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0190
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0190
open AnalyticBounds.ExpressionCertificate

theorem linked_9500 : Linked cell_9500 pieces := by
  apply Linked.of_piece piece_969 piece_969_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9500, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1295_mem, piece_1296_mem⟩

theorem linked_9501 : Linked cell_9501 pieces := by
  apply Linked.of_piece piece_969 piece_969_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9501, List.cons_subset, List.nil_subset, and_true]
  exact piece_1295_mem

theorem linked_9502 : Linked cell_9502 pieces := by
  apply Linked.of_piece piece_969 piece_969_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9502, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1294_mem, piece_1295_mem⟩

theorem linked_9503 : Linked cell_9503 pieces := by
  apply Linked.of_piece piece_969 piece_969_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9503, List.cons_subset, List.nil_subset, and_true]
  exact piece_1294_mem

theorem linked_9504 : Linked cell_9504 pieces := by
  apply Linked.of_piece piece_969 piece_969_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9504, List.cons_subset, List.nil_subset, and_true]
  exact piece_1294_mem

theorem linked_9505 : Linked cell_9505 pieces := by
  apply Linked.of_piece piece_969 piece_969_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9505, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1293_mem, piece_1294_mem⟩

theorem linked_9506 : Linked cell_9506 pieces := by
  apply Linked.of_piece piece_969 piece_969_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9506, List.cons_subset, List.nil_subset, and_true]
  exact piece_1293_mem

theorem linked_9507 : Linked cell_9507 pieces := by
  apply Linked.of_piece piece_969 piece_969_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9507, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1292_mem, piece_1293_mem⟩

theorem linked_9508 : Linked cell_9508 pieces := by
  apply Linked.of_piece piece_970 piece_970_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9508, List.cons_subset, List.nil_subset, and_true]
  exact piece_1294_mem

theorem linked_9509 : Linked cell_9509 pieces := by
  apply Linked.of_piece piece_970 piece_970_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9509, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1293_mem, piece_1294_mem⟩

theorem linked_9510 : Linked cell_9510 pieces := by
  apply Linked.of_piece piece_970 piece_970_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9510, List.cons_subset, List.nil_subset, and_true]
  exact piece_1293_mem

theorem linked_9511 : Linked cell_9511 pieces := by
  apply Linked.of_piece piece_970 piece_970_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9511, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1292_mem, piece_1293_mem⟩

theorem linked_9512 : Linked cell_9512 pieces := by
  apply Linked.of_piece piece_970 piece_970_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9512, List.cons_subset, List.nil_subset, and_true]
  exact piece_1292_mem

theorem linked_9513 : Linked cell_9513 pieces := by
  apply Linked.of_piece piece_970 piece_970_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9513, List.cons_subset, List.nil_subset, and_true]
  exact piece_1292_mem

theorem linked_9514 : Linked cell_9514 pieces := by
  apply Linked.of_piece piece_970 piece_970_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9514, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1291_mem, piece_1292_mem⟩

theorem linked_9515 : Linked cell_9515 pieces := by
  apply Linked.of_piece piece_970 piece_970_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9515, List.cons_subset, List.nil_subset, and_true]
  exact piece_1291_mem

theorem linked_9516 : Linked cell_9516 pieces := by
  apply Linked.of_piece piece_971 piece_971_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9516, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1292_mem, piece_1293_mem⟩

theorem linked_9517 : Linked cell_9517 pieces := by
  apply Linked.of_piece piece_971 piece_971_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9517, List.cons_subset, List.nil_subset, and_true]
  exact piece_1292_mem

theorem linked_9518 : Linked cell_9518 pieces := by
  apply Linked.of_piece piece_971 piece_971_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9518, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1291_mem, piece_1292_mem⟩

theorem linked_9519 : Linked cell_9519 pieces := by
  apply Linked.of_piece piece_971 piece_971_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9519, List.cons_subset, List.nil_subset, and_true]
  exact piece_1291_mem

theorem linked_9520 : Linked cell_9520 pieces := by
  apply Linked.of_piece piece_971 piece_971_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9520, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1290_mem, piece_1291_mem⟩

theorem linked_9521 : Linked cell_9521 pieces := by
  apply Linked.of_piece piece_971 piece_971_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9521, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1289_mem, piece_1290_mem⟩

theorem linked_9522 : Linked cell_9522 pieces := by
  apply Linked.of_piece piece_971 piece_971_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9522, List.cons_subset, List.nil_subset, and_true]
  exact piece_1289_mem

theorem linked_9523 : Linked cell_9523 pieces := by
  apply Linked.of_piece piece_971 piece_971_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9523, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1288_mem, piece_1289_mem⟩

theorem linked_9524 : Linked cell_9524 pieces := by
  apply Linked.of_piece piece_972 piece_972_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9524, List.cons_subset, List.nil_subset, and_true]
  exact piece_1291_mem

theorem linked_9525 : Linked cell_9525 pieces := by
  apply Linked.of_piece piece_972 piece_972_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9525, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1289_mem, ⟨piece_1290_mem, piece_1291_mem⟩⟩

theorem linked_9526 : Linked cell_9526 pieces := by
  apply Linked.of_piece piece_972 piece_972_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9526, List.cons_subset, List.nil_subset, and_true]
  exact piece_1289_mem

theorem linked_9527 : Linked cell_9527 pieces := by
  apply Linked.of_piece piece_972 piece_972_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9527, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1288_mem, piece_1289_mem⟩

theorem linked_9528 : Linked cell_9528 pieces := by
  apply Linked.of_piece piece_972 piece_972_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9528, List.cons_subset, List.nil_subset, and_true]
  exact piece_1288_mem

theorem linked_9529 : Linked cell_9529 pieces := by
  apply Linked.of_piece piece_972 piece_972_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9529, List.cons_subset, List.nil_subset, and_true]
  exact piece_1288_mem

theorem linked_9530 : Linked cell_9530 pieces := by
  apply Linked.of_piece piece_972 piece_972_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9530, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1287_mem, piece_1288_mem⟩

theorem linked_9531 : Linked cell_9531 pieces := by
  apply Linked.of_piece piece_972 piece_972_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9531, List.cons_subset, List.nil_subset, and_true]
  exact piece_1287_mem

theorem linked_9532 : Linked cell_9532 pieces := by
  apply Linked.of_piece piece_973 piece_973_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9532, List.cons_subset, List.nil_subset, and_true]
  exact piece_1288_mem

theorem linked_9533 : Linked cell_9533 pieces := by
  apply Linked.of_piece piece_973 piece_973_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9533, List.cons_subset, List.nil_subset, and_true]
  exact piece_1288_mem

theorem linked_9534 : Linked cell_9534 pieces := by
  apply Linked.of_piece piece_973 piece_973_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9534, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1287_mem, piece_1288_mem⟩

theorem linked_9535 : Linked cell_9535 pieces := by
  apply Linked.of_piece piece_973 piece_973_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9535, List.cons_subset, List.nil_subset, and_true]
  exact piece_1287_mem

theorem linked_9536 : Linked cell_9536 pieces := by
  apply Linked.of_piece piece_973 piece_973_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9536, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1286_mem, piece_1287_mem⟩

theorem linked_9537 : Linked cell_9537 pieces := by
  apply Linked.of_piece piece_973 piece_973_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9537, List.cons_subset, List.nil_subset, and_true]
  exact piece_1286_mem

theorem linked_9538 : Linked cell_9538 pieces := by
  apply Linked.of_piece piece_973 piece_973_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9538, List.cons_subset, List.nil_subset, and_true]
  exact piece_1286_mem

theorem linked_9539 : Linked cell_9539 pieces := by
  apply Linked.of_piece piece_973 piece_973_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9539, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1285_mem, piece_1286_mem⟩

theorem linked_9540 : Linked cell_9540 pieces := by
  apply Linked.of_piece piece_974 piece_974_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9540, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1286_mem, piece_1287_mem⟩

theorem linked_9541 : Linked cell_9541 pieces := by
  apply Linked.of_piece piece_974 piece_974_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9541, List.cons_subset, List.nil_subset, and_true]
  exact piece_1286_mem

theorem linked_9542 : Linked cell_9542 pieces := by
  apply Linked.of_piece piece_974 piece_974_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9542, List.cons_subset, List.nil_subset, and_true]
  exact piece_1286_mem

theorem linked_9543 : Linked cell_9543 pieces := by
  apply Linked.of_piece piece_974 piece_974_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9543, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1285_mem, piece_1286_mem⟩

theorem linked_9544 : Linked cell_9544 pieces := by
  apply Linked.of_piece piece_974 piece_974_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9544, List.cons_subset, List.nil_subset, and_true]
  exact piece_1285_mem

theorem linked_9545 : Linked cell_9545 pieces := by
  apply Linked.of_piece piece_974 piece_974_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9545, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1284_mem, piece_1285_mem⟩

theorem linked_9546 : Linked cell_9546 pieces := by
  apply Linked.of_piece piece_974 piece_974_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9546, List.cons_subset, List.nil_subset, and_true]
  exact piece_1284_mem

theorem linked_9547 : Linked cell_9547 pieces := by
  apply Linked.of_piece piece_974 piece_974_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9547, List.cons_subset, List.nil_subset, and_true]
  exact piece_1284_mem

theorem linked_9548 : Linked cell_9548 pieces := by
  apply Linked.of_piece piece_975 piece_975_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9548, List.cons_subset, List.nil_subset, and_true]
  exact piece_1285_mem

theorem linked_9549 : Linked cell_9549 pieces := by
  apply Linked.of_piece piece_975 piece_975_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_9549, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1284_mem, piece_1285_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0190.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0190.cells,List.forall_mem_cons]
  exact ⟨linked_9500, linked_9501, linked_9502, linked_9503, linked_9504, linked_9505, linked_9506, linked_9507, linked_9508, linked_9509, linked_9510, linked_9511, linked_9512, linked_9513, linked_9514, linked_9515, linked_9516, linked_9517, linked_9518, linked_9519, linked_9520, linked_9521, linked_9522, linked_9523, linked_9524, linked_9525, linked_9526, linked_9527, linked_9528, linked_9529, linked_9530, linked_9531, linked_9532, linked_9533, linked_9534, linked_9535, linked_9536, linked_9537, linked_9538, linked_9539, linked_9540, linked_9541, linked_9542, linked_9543, linked_9544, linked_9545, linked_9546, linked_9547, linked_9548, linked_9549, by simp⟩

theorem covered : covers (19950000000000001 / 50000000000000000 : ℚ) (20106250000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0190.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0190
