import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0120
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(1457 / 8000 : ℚ), (5829 / 32000 : ℚ)⟩
  branch := .right
  r := (9227298947011 / 10000000000000 : ℚ)
  w := (10084431053543 / 10000000000000 : ℚ)
  center := (11657 / 64000 : ℚ)
  supportValue := (66910781283877 / 100000000000000 : ℚ)
  supportSlope := (2674239444123927 / 500000000000000 : ℚ)
  oldCenter := (66910781283877 / 100000000000000 : ℚ)
  newCoefficients := coefficients_497
  oldLo := (33524999999999999 / 50000000000000000 : ℚ)
  oldHi := (67549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1561]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_6000 : Cell := { cellDefaults with
  r := (92363606228689 / 100000000000000 : ℚ)
  w := (2520596484329 / 2500000000000 : ℚ)
  newCoefficients := coefficients_496
  oldLo := (16725000000000001 / 25000000000000000 : ℚ)
  oldHi := (33474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1558]
}

def cell_6001 : Cell := { cellDefaults with
  domain := ⟨(5829 / 32000 : ℚ), (583 / 3200 : ℚ)⟩
  r := (92363606228689 / 100000000000000 : ℚ)
  w := (2520596484329 / 2500000000000 : ℚ)
  center := (11659 / 64000 : ℚ)
  supportValue := (6692749653760999 / 10000000000000000 : ℚ)
  supportSlope := (5349284624102779 / 1000000000000000 : ℚ)
  oldCenter := (6692749653760999 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_496
  oldLo := (16725000000000001 / 25000000000000000 : ℚ)
  oldHi := (33474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1558]
}

def cell_6002 : Cell := { cellDefaults with
  domain := ⟨(583 / 3200 : ℚ), (729 / 4000 : ℚ)⟩
  r := (92363606228689 / 100000000000000 : ℚ)
  w := (2520596484329 / 2500000000000 : ℚ)
  center := (5831 / 32000 : ℚ)
  supportValue := (3347628025035859 / 5000000000000000 : ℚ)
  supportSlope := (5350195528688317 / 1000000000000000 : ℚ)
  oldCenter := (3347628025035859 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_496
  oldLo := (16725000000000001 / 25000000000000000 : ℚ)
  oldHi := (16750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1558, piece_1559]
}

def cell_6003 : Cell := { cellDefaults with
  domain := ⟨(729 / 4000 : ℚ), (2917 / 16000 : ℚ)⟩
  r := (92363606228689 / 100000000000000 : ℚ)
  w := (2520596484329 / 2500000000000 : ℚ)
  center := (5833 / 32000 : ℚ)
  supportValue := (6698600288347221 / 10000000000000000 : ℚ)
  supportSlope := (5351546002032137 / 1000000000000000 : ℚ)
  oldCenter := (6698600288347221 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_496
  oldLo := (33474999999999999 / 50000000000000000 : ℚ)
  oldHi := (33524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1559, piece_1560]
}

def cell_6004 : Cell := { cellDefaults with
  domain := ⟨(2917 / 16000 : ℚ), (1167 / 6400 : ℚ)⟩
  r := (92363606228689 / 100000000000000 : ℚ)
  w := (2520596484329 / 2500000000000 : ℚ)
  center := (11669 / 64000 : ℚ)
  supportValue := (6701110360999509 / 10000000000000000 : ℚ)
  supportSlope := (2676140359040957 / 500000000000000 : ℚ)
  oldCenter := (6701110360999509 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_496
  oldLo := (16750000000000001 / 25000000000000000 : ℚ)
  oldHi := (33524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1560]
}

def cell_6005 : Cell := { cellDefaults with
  domain := ⟨(1167 / 6400 : ℚ), (1459 / 8000 : ℚ)⟩
  r := (92363606228689 / 100000000000000 : ℚ)
  w := (2520596484329 / 2500000000000 : ℚ)
  center := (11671 / 64000 : ℚ)
  supportValue := (6702783074345217 / 10000000000000000 : ℚ)
  supportSlope := (214123432724449 / 40000000000000 : ℚ)
  oldCenter := (6702783074345217 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_496
  oldLo := (16750000000000001 / 25000000000000000 : ℚ)
  oldHi := (33524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1560]
}

def cell_6006 : Cell := { cellDefaults with
  domain := ⟨(1459 / 8000 : ℚ), (5837 / 32000 : ℚ)⟩
  r := (92363606228689 / 100000000000000 : ℚ)
  w := (2520596484329 / 2500000000000 : ℚ)
  center := (11673 / 64000 : ℚ)
  supportValue := (335222801965893 / 500000000000000 : ℚ)
  supportSlope := (5353800765576011 / 1000000000000000 : ℚ)
  oldCenter := (335222801965893 / 500000000000000 : ℚ)
  newCoefficients := coefficients_496
  oldLo := (16750000000000001 / 25000000000000000 : ℚ)
  oldHi := (16775000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1560, piece_1561]
}

def cell_6007 : Cell := { cellDefaults with
  domain := ⟨(5837 / 32000 : ℚ), (2919 / 16000 : ℚ)⟩
  r := (92363606228689 / 100000000000000 : ℚ)
  w := (2520596484329 / 2500000000000 : ℚ)
  center := (467 / 2560 : ℚ)
  supportValue := (6706129147142433 / 10000000000000000 : ℚ)
  supportSlope := (1070836112094753 / 200000000000000 : ℚ)
  oldCenter := (6706129147142433 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_496
  oldHi := (16775000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1561]
}

def cell_6008 : Cell := { cellDefaults with
  domain := ⟨(2919 / 16000 : ℚ), (5839 / 32000 : ℚ)⟩
  r := (92363606228689 / 100000000000000 : ℚ)
  w := (2520596484329 / 2500000000000 : ℚ)
  center := (11677 / 64000 : ℚ)
  supportValue := (1341560490827661 / 2000000000000000 : ℚ)
  supportSlope := (5354985336978757 / 1000000000000000 : ℚ)
  oldCenter := (1341560490827661 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_496
  oldHi := (16775000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1561]
}

def cell_6009 : Cell := { cellDefaults with
  domain := ⟨(5839 / 32000 : ℚ), (73 / 400 : ℚ)⟩
  r := (92363606228689 / 100000000000000 : ℚ)
  w := (2520596484329 / 2500000000000 : ℚ)
  center := (11679 / 64000 : ℚ)
  supportValue := (3354738006329949 / 5000000000000000 : ℚ)
  supportSlope := (1071138759495227 / 200000000000000 : ℚ)
  oldCenter := (3354738006329949 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_496
  oldHi := (67149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1561, piece_1562]
}

def cell_6010 : Cell := { cellDefaults with
  domain := ⟨(73 / 400 : ℚ), (5841 / 32000 : ℚ)⟩
  center := (11681 / 64000 : ℚ)
  supportValue := (6706390686005497 / 10000000000000000 : ℚ)
  supportSlope := (5351399984061089 / 1000000000000000 : ℚ)
  oldCenter := (6706390686005497 / 10000000000000000 : ℚ)
  oldHi := (16775000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1561]
}

def cell_6011 : Cell := { cellDefaults with
  domain := ⟨(5841 / 32000 : ℚ), (2921 / 16000 : ℚ)⟩
  center := (11683 / 64000 : ℚ)
  supportValue := (3354031562046107 / 5000000000000000 : ℚ)
  supportSlope := (669025611810703 / 125000000000000 : ℚ)
  oldCenter := (3354031562046107 / 5000000000000000 : ℚ)
  oldHi := (16775000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1561]
}

def cell_6012 : Cell := { cellDefaults with
  domain := ⟨(2921 / 16000 : ℚ), (5843 / 32000 : ℚ)⟩
  center := (2337 / 12800 : ℚ)
  supportValue := (6709735813746669 / 10000000000000000 : ℚ)
  supportSlope := (2676416810627913 / 500000000000000 : ℚ)
  oldCenter := (6709735813746669 / 10000000000000000 : ℚ)
  oldHi := (67149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1561, piece_1562]
}

def cell_6013 : Cell := { cellDefaults with
  domain := ⟨(5843 / 32000 : ℚ), (1461 / 8000 : ℚ)⟩
  center := (11687 / 64000 : ℚ)
  supportValue := (3355704309684681 / 5000000000000000 : ℚ)
  supportSlope := (5353299644394127 / 1000000000000000 : ℚ)
  oldCenter := (3355704309684681 / 5000000000000000 : ℚ)
  oldLo := (16775000000000001 / 25000000000000000 : ℚ)
  oldHi := (67149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1562]
}

def cell_6014 : Cell := { cellDefaults with
  domain := ⟨(1461 / 8000 : ℚ), (1169 / 6400 : ℚ)⟩
  center := (11689 / 64000 : ℚ)
  supportValue := (1678270412762421 / 2500000000000000 : ℚ)
  supportSlope := (5354104233433077 / 1000000000000000 : ℚ)
  oldCenter := (1678270412762421 / 2500000000000000 : ℚ)
  oldLo := (16775000000000001 / 25000000000000000 : ℚ)
  oldHi := (67149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1562]
}

def cell_6015 : Cell := { cellDefaults with
  domain := ⟨(1169 / 6400 : ℚ), (2923 / 16000 : ℚ)⟩
  center := (11691 / 64000 : ℚ)
  supportValue := (3357377467098599 / 5000000000000000 : ℚ)
  supportSlope := (133868170444007 / 25000000000000 : ℚ)
  oldCenter := (3357377467098599 / 5000000000000000 : ℚ)
  oldLo := (16775000000000001 / 25000000000000000 : ℚ)
  oldHi := (16800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1562, piece_1563]
}

def cell_6016 : Cell := { cellDefaults with
  domain := ⟨(2923 / 16000 : ℚ), (731 / 4000 : ℚ)⟩
  center := (5847 / 32000 : ℚ)
  supportValue := (1343452753817961 / 2000000000000000 : ℚ)
  supportSlope := (5355600727448007 / 1000000000000000 : ℚ)
  oldCenter := (1343452753817961 / 2000000000000000 : ℚ)
  oldLo := (67149999999999999 / 100000000000000000 : ℚ)
  oldHi := (16800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1563]
}

def cell_6017 : Cell := { cellDefaults with
  domain := ⟨(731 / 4000 : ℚ), (117 / 640 : ℚ)⟩
  center := (5849 / 32000 : ℚ)
  supportValue := (6720611462341887 / 10000000000000000 : ℚ)
  supportSlope := (2678428898011731 / 500000000000000 : ℚ)
  oldCenter := (6720611462341887 / 10000000000000000 : ℚ)
  oldLo := (67149999999999999 / 100000000000000000 : ℚ)
  oldHi := (67249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1563, piece_1564]
}

def cell_6018 : Cell := { cellDefaults with
  domain := ⟨(117 / 640 : ℚ), (5851 / 32000 : ℚ)⟩
  center := (11701 / 64000 : ℚ)
  supportValue := (3361562019780047 / 5000000000000000 : ℚ)
  supportSlope := (1339475191933559 / 250000000000000 : ℚ)
  oldCenter := (3361562019780047 / 5000000000000000 : ℚ)
  oldLo := (16800000000000001 / 25000000000000000 : ℚ)
  oldHi := (67249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1564]
}

def cell_6019 : Cell := { cellDefaults with
  domain := ⟨(5851 / 32000 : ℚ), (1463 / 8000 : ℚ)⟩
  center := (11703 / 64000 : ℚ)
  supportValue := (840599813627803 / 1250000000000000 : ℚ)
  supportSlope := (10717018904031761 / 2000000000000000 : ℚ)
  oldCenter := (840599813627803 / 1250000000000000 : ℚ)
  oldLo := (16800000000000001 / 25000000000000000 : ℚ)
  oldHi := (16825000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1564, piece_1565]
}

def cell_6020 : Cell := { cellDefaults with
  domain := ⟨(1463 / 8000 : ℚ), (5853 / 32000 : ℚ)⟩
  center := (2341 / 12800 : ℚ)
  supportValue := (3363236544155653 / 5000000000000000 : ℚ)
  supportSlope := (2679497172874079 / 500000000000000 : ℚ)
  oldCenter := (3363236544155653 / 5000000000000000 : ℚ)
  oldLo := (67249999999999999 / 100000000000000000 : ℚ)
  oldHi := (16825000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1565]
}

def cell_6021 : Cell := { cellDefaults with
  domain := ⟨(5853 / 32000 : ℚ), (2927 / 16000 : ℚ)⟩
  center := (11707 / 64000 : ℚ)
  supportValue := (3364073949716589 / 5000000000000000 : ℚ)
  supportSlope := (2143919183441767 / 400000000000000 : ℚ)
  oldCenter := (3364073949716589 / 5000000000000000 : ℚ)
  oldLo := (67249999999999999 / 100000000000000000 : ℚ)
  oldHi := (16825000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1565]
}

def cell_6022 : Cell := { cellDefaults with
  domain := ⟨(2927 / 16000 : ℚ), (1171 / 6400 : ℚ)⟩
  center := (11709 / 64000 : ℚ)
  supportValue := (6729822961716847 / 10000000000000000 : ℚ)
  supportSlope := (2680199441886799 / 500000000000000 : ℚ)
  oldCenter := (6729822961716847 / 10000000000000000 : ℚ)
  oldLo := (67249999999999999 / 100000000000000000 : ℚ)
  oldHi := (67349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1565, piece_1566]
}

def cell_6023 : Cell := { cellDefaults with
  domain := ⟨(1171 / 6400 : ℚ), (183 / 1000 : ℚ)⟩
  center := (11711 / 64000 : ℚ)
  supportValue := (841437266430071 / 1250000000000000 : ℚ)
  supportSlope := (2144356455401919 / 400000000000000 : ℚ)
  oldCenter := (841437266430071 / 1250000000000000 : ℚ)
  oldLo := (16825000000000001 / 25000000000000000 : ℚ)
  oldHi := (67349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1566]
}

def cell_6024 : Cell := { cellDefaults with
  domain := ⟨(183 / 1000 : ℚ), (5857 / 32000 : ℚ)⟩
  r := (2304565096689 / 2500000000000 : ℚ)
  w := (2017297271361 / 2000000000000 : ℚ)
  center := (11713 / 64000 : ℚ)
  supportValue := (6728407266737993 / 10000000000000000 : ℚ)
  supportSlope := (1071402865949267 / 200000000000000 : ℚ)
  oldCenter := (6728407266737993 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_498
  oldLo := (67249999999999999 / 100000000000000000 : ℚ)
  oldHi := (16825000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1565]
}

def cell_6025 : Cell := { cellDefaults with
  domain := ⟨(5857 / 32000 : ℚ), (2929 / 16000 : ℚ)⟩
  r := (2304565096689 / 2500000000000 : ℚ)
  w := (2017297271361 / 2000000000000 : ℚ)
  center := (2343 / 12800 : ℚ)
  supportValue := (1346016290257339 / 2000000000000000 : ℚ)
  supportSlope := (2678768088822281 / 500000000000000 : ℚ)
  oldCenter := (1346016290257339 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_498
  oldLo := (67249999999999999 / 100000000000000000 : ℚ)
  oldHi := (67349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1565, piece_1566]
}

def cell_6026 : Cell := { cellDefaults with
  domain := ⟨(2929 / 16000 : ℚ), (5859 / 32000 : ℚ)⟩
  r := (2304565096689 / 2500000000000 : ℚ)
  w := (2017297271361 / 2000000000000 : ℚ)
  center := (11717 / 64000 : ℚ)
  supportValue := (1346351146866279 / 2000000000000000 : ℚ)
  supportSlope := (5358107929676947 / 1000000000000000 : ℚ)
  oldCenter := (1346351146866279 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_498
  oldLo := (16825000000000001 / 25000000000000000 : ℚ)
  oldHi := (67349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1566]
}

def cell_6027 : Cell := { cellDefaults with
  domain := ⟨(5859 / 32000 : ℚ), (293 / 1600 : ℚ)⟩
  r := (2304565096689 / 2500000000000 : ℚ)
  w := (2017297271361 / 2000000000000 : ℚ)
  center := (11719 / 64000 : ℚ)
  supportValue := (6733430268424291 / 10000000000000000 : ℚ)
  supportSlope := (5358911389190979 / 1000000000000000 : ℚ)
  oldCenter := (6733430268424291 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_498
  oldLo := (16825000000000001 / 25000000000000000 : ℚ)
  oldHi := (67349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1566]
}

def cell_6028 : Cell := { cellDefaults with
  domain := ⟨(293 / 1600 : ℚ), (2931 / 16000 : ℚ)⟩
  r := (2304565096689 / 2500000000000 : ℚ)
  w := (2017297271361 / 2000000000000 : ℚ)
  center := (5861 / 32000 : ℚ)
  supportValue := (6735941102881097 / 10000000000000000 : ℚ)
  supportSlope := (26798576563855647 / 5000000000000000 : ℚ)
  oldCenter := (6735941102881097 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_498
  oldLo := (16825000000000001 / 25000000000000000 : ℚ)
  oldHi := (16850000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1566, piece_1567, piece_1568]
}

def cell_6029 : Cell := { cellDefaults with
  domain := ⟨(2931 / 16000 : ℚ), (733 / 4000 : ℚ)⟩
  r := (2304565096689 / 2500000000000 : ℚ)
  w := (2017297271361 / 2000000000000 : ℚ)
  center := (5863 / 32000 : ℚ)
  supportValue := (3369645677882139 / 5000000000000000 : ℚ)
  supportSlope := (1072212204336509 / 200000000000000 : ℚ)
  oldCenter := (3369645677882139 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_498
  oldLo := (421054469273743 / 625000000000000 : ℚ)
  oldHi := (67449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1568, piece_1569]
}

def cell_6030 : Cell := { cellDefaults with
  domain := ⟨(733 / 4000 : ℚ), (2933 / 16000 : ℚ)⟩
  r := (2304565096689 / 2500000000000 : ℚ)
  w := (2017297271361 / 2000000000000 : ℚ)
  center := (1173 / 6400 : ℚ)
  supportValue := (6742642359394999 / 10000000000000000 : ℚ)
  supportSlope := (5362301811667081 / 1000000000000000 : ℚ)
  oldCenter := (6742642359394999 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_498
  oldLo := (16850000000000001 / 25000000000000000 : ℚ)
  oldHi := (67449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1569]
}

def cell_6031 : Cell := { cellDefaults with
  domain := ⟨(2933 / 16000 : ℚ), (5867 / 32000 : ℚ)⟩
  r := (2304565096689 / 2500000000000 : ℚ)
  w := (2017297271361 / 2000000000000 : ℚ)
  center := (11733 / 64000 : ℚ)
  supportValue := (6745157553696269 / 10000000000000000 : ℚ)
  supportSlope := (2681600577666643 / 500000000000000 : ℚ)
  oldCenter := (6745157553696269 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_498
  oldLo := (16850000000000001 / 25000000000000000 : ℚ)
  oldHi := (16875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1569, piece_1570]
}

def cell_6032 : Cell := { cellDefaults with
  domain := ⟨(5867 / 32000 : ℚ), (1467 / 8000 : ℚ)⟩
  r := (2304565096689 / 2500000000000 : ℚ)
  w := (2017297271361 / 2000000000000 : ℚ)
  center := (2347 / 12800 : ℚ)
  supportValue := (1686708403572823 / 2500000000000000 : ℚ)
  supportSlope := (1340948872111447 / 250000000000000 : ℚ)
  oldCenter := (1686708403572823 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_498
  oldLo := (67449999999999999 / 100000000000000000 : ℚ)
  oldHi := (16875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1570]
}

def cell_6033 : Cell := { cellDefaults with
  domain := ⟨(1467 / 8000 : ℚ), (5869 / 32000 : ℚ)⟩
  r := (2304565096689 / 2500000000000 : ℚ)
  w := (2017297271361 / 2000000000000 : ℚ)
  center := (11737 / 64000 : ℚ)
  supportValue := (6748509925557551 / 10000000000000000 : ℚ)
  supportSlope := (2682298870199773 / 500000000000000 : ℚ)
  oldCenter := (6748509925557551 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_498
  oldLo := (67449999999999999 / 100000000000000000 : ℚ)
  oldHi := (16875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1570]
}

def cell_6034 : Cell := { cellDefaults with
  domain := ⟨(5869 / 32000 : ℚ), (587 / 3200 : ℚ)⟩
  r := (2304565096689 / 2500000000000 : ℚ)
  w := (2017297271361 / 2000000000000 : ℚ)
  center := (11739 / 64000 : ℚ)
  supportValue := (3375093234847243 / 5000000000000000 : ℚ)
  supportSlope := (10730173631849027 / 2000000000000000 : ℚ)
  oldCenter := (3375093234847243 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_498
  oldLo := (67449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1570, piece_1571]
}

def cell_6035 : Cell := { cellDefaults with
  domain := ⟨(587 / 3200 : ℚ), (5871 / 32000 : ℚ)⟩
  r := (2304565096689 / 2500000000000 : ℚ)
  w := (2017297271361 / 2000000000000 : ℚ)
  center := (11741 / 64000 : ℚ)
  supportValue := (421991445143247 / 625000000000000 : ℚ)
  supportSlope := (10731379494849591 / 2000000000000000 : ℚ)
  oldCenter := (421991445143247 / 625000000000000 : ℚ)
  newCoefficients := coefficients_498
  oldLo := (16875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1571]
}

def cell_6036 : Cell := { cellDefaults with
  domain := ⟨(5871 / 32000 : ℚ), (367 / 2000 : ℚ)⟩
  r := (2304565096689 / 2500000000000 : ℚ)
  w := (2017297271361 / 2000000000000 : ℚ)
  center := (11743 / 64000 : ℚ)
  supportValue := (3376770012733727 / 5000000000000000 : ℚ)
  supportSlope := (5366491700854681 / 1000000000000000 : ℚ)
  oldCenter := (3376770012733727 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_498
  oldLo := (16875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1571]
}

def cell_6037 : Cell := { cellDefaults with
  domain := ⟨(367 / 2000 : ℚ), (5873 / 32000 : ℚ)⟩
  r := (92092450251207 / 100000000000000 : ℚ)
  w := (10088551870251 / 10000000000000 : ℚ)
  center := (2349 / 12800 : ℚ)
  supportValue := (6750443791209189 / 10000000000000000 : ℚ)
  supportSlope := (1340555404238053 / 250000000000000 : ℚ)
  oldCenter := (6750443791209189 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_499
  oldLo := (67449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1570, piece_1571]
}

def cell_6038 : Cell := { cellDefaults with
  domain := ⟨(5873 / 32000 : ℚ), (2937 / 16000 : ℚ)⟩
  r := (92092450251207 / 100000000000000 : ℚ)
  w := (10088551870251 / 10000000000000 : ℚ)
  center := (11747 / 64000 : ℚ)
  supportValue := (1350423914609379 / 2000000000000000 : ℚ)
  supportSlope := (10725806781550773 / 2000000000000000 : ℚ)
  oldCenter := (1350423914609379 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_499
  oldLo := (16875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1571]
}

def cell_6039 : Cell := { cellDefaults with
  domain := ⟨(2937 / 16000 : ℚ), (47 / 256 : ℚ)⟩
  r := (92092450251207 / 100000000000000 : ℚ)
  w := (10088551870251 / 10000000000000 : ℚ)
  center := (11749 / 64000 : ℚ)
  supportValue := (6753795605509517 / 10000000000000000 : ℚ)
  supportSlope := (214548219790629 / 40000000000000 : ℚ)
  oldCenter := (6753795605509517 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_499
  oldLo := (16875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1571]
}

def cell_6040 : Cell := { cellDefaults with
  domain := ⟨(47 / 256 : ℚ), (1469 / 8000 : ℚ)⟩
  r := (92092450251207 / 100000000000000 : ℚ)
  w := (10088551870251 / 10000000000000 : ℚ)
  center := (11751 / 64000 : ℚ)
  supportValue := (6755471843582253 / 10000000000000000 : ℚ)
  supportSlope := (5364107505503313 / 1000000000000000 : ℚ)
  oldCenter := (6755471843582253 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_499
  oldLo := (16875000000000001 / 25000000000000000 : ℚ)
  oldHi := (13520000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1571, piece_1572]
}

def cell_6041 : Cell := { cellDefaults with
  domain := ⟨(1469 / 8000 : ℚ), (2939 / 16000 : ℚ)⟩
  r := (92092450251207 / 100000000000000 : ℚ)
  w := (10088551870251 / 10000000000000 : ℚ)
  center := (5877 / 32000 : ℚ)
  supportValue := (13515970293283 / 20000000000000 : ℚ)
  supportSlope := (10730396901521999 / 2000000000000000 : ℚ)
  oldCenter := (13515970293283 / 20000000000000 : ℚ)
  newCoefficients := coefficients_499
  oldLo := (67549999999999999 / 100000000000000000 : ℚ)
  oldHi := (13520000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1572]
}

def cell_6042 : Cell := { cellDefaults with
  domain := ⟨(2939 / 16000 : ℚ), (147 / 800 : ℚ)⟩
  r := (92092450251207 / 100000000000000 : ℚ)
  w := (10088551870251 / 10000000000000 : ℚ)
  center := (5879 / 32000 : ℚ)
  supportValue := (6761338767990929 / 10000000000000000 : ℚ)
  supportSlope := (335396349906647 / 62500000000000 : ℚ)
  oldCenter := (6761338767990929 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_499
  oldLo := (67549999999999999 / 100000000000000000 : ℚ)
  oldHi := (67649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1572, piece_1573]
}

def cell_6043 : Cell := { cellDefaults with
  domain := ⟨(147 / 800 : ℚ), (2941 / 16000 : ℚ)⟩
  r := (92092450251207 / 100000000000000 : ℚ)
  w := (10088551870251 / 10000000000000 : ℚ)
  center := (5881 / 32000 : ℚ)
  supportValue := (676469319934047 / 1000000000000000 : ℚ)
  supportSlope := (5367684082425939 / 1000000000000000 : ℚ)
  oldCenter := (676469319934047 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_499
  oldLo := (13520000000000001 / 20000000000000000 : ℚ)
  oldHi := (13540000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1573, piece_1574]
}

def cell_6044 : Cell := { cellDefaults with
  domain := ⟨(2941 / 16000 : ℚ), (1471 / 8000 : ℚ)⟩
  r := (92092450251207 / 100000000000000 : ℚ)
  w := (10088551870251 / 10000000000000 : ℚ)
  center := (5883 / 32000 : ℚ)
  supportValue := (6768048341905993 / 10000000000000000 : ℚ)
  supportSlope := (2684492197469801 / 500000000000000 : ℚ)
  oldCenter := (6768048341905993 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_499
  oldLo := (67649999999999999 / 100000000000000000 : ℚ)
  oldHi := (13540000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1574]
}

def cell_6045 : Cell := { cellDefaults with
  domain := ⟨(1471 / 8000 : ℚ), (1177 / 6400 : ℚ)⟩
  r := (92092450251207 / 100000000000000 : ℚ)
  w := (10088551870251 / 10000000000000 : ℚ)
  center := (11769 / 64000 : ℚ)
  supportValue := (3385283317198111 / 5000000000000000 : ℚ)
  supportSlope := (2684878940353741 / 500000000000000 : ℚ)
  oldCenter := (3385283317198111 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_499
  oldLo := (67649999999999999 / 100000000000000000 : ℚ)
  oldHi := (67749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1574, piece_1575]
}

def cell_6046 : Cell := { cellDefaults with
  domain := ⟨(1177 / 6400 : ℚ), (2943 / 16000 : ℚ)⟩
  r := (92092450251207 / 100000000000000 : ℚ)
  w := (10088551870251 / 10000000000000 : ℚ)
  center := (11771 / 64000 : ℚ)
  supportValue := (423265298926241 / 625000000000000 : ℚ)
  supportSlope := (2685237934421991 / 500000000000000 : ℚ)
  oldCenter := (423265298926241 / 625000000000000 : ℚ)
  newCoefficients := coefficients_499
  oldLo := (13540000000000001 / 20000000000000000 : ℚ)
  oldHi := (67749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1575]
}

def cell_6047 : Cell := { cellDefaults with
  domain := ⟨(2943 / 16000 : ℚ), (5887 / 32000 : ℚ)⟩
  r := (92092450251207 / 100000000000000 : ℚ)
  w := (10088551870251 / 10000000000000 : ℚ)
  center := (11773 / 64000 : ℚ)
  supportValue := (1354784636298933 / 2000000000000000 : ℚ)
  supportSlope := (5371276775530731 / 1000000000000000 : ℚ)
  oldCenter := (1354784636298933 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_499
  oldLo := (13540000000000001 / 20000000000000000 : ℚ)
  oldHi := (67749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1575]
}

def cell_6048 : Cell := { cellDefaults with
  domain := ⟨(5887 / 32000 : ℚ), (23 / 125 : ℚ)⟩
  r := (92092450251207 / 100000000000000 : ℚ)
  w := (10088551870251 / 10000000000000 : ℚ)
  center := (471 / 2560 : ℚ)
  supportValue := (13551203546373 / 20000000000000 : ℚ)
  supportSlope := (214865555968089 / 40000000000000 : ℚ)
  oldCenter := (13551203546373 / 20000000000000 : ℚ)
  newCoefficients := coefficients_499
  oldLo := (13540000000000001 / 20000000000000000 : ℚ)
  oldHi := (13560000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1575, piece_1576]
}

def cell_6049 : Cell := { cellDefaults with
  domain := ⟨(23 / 125 : ℚ), (5889 / 32000 : ℚ)⟩
  r := (23000630979357 / 25000000000000 : ℚ)
  w := (10090627758357 / 10000000000000 : ℚ)
  center := (11777 / 64000 : ℚ)
  supportValue := (1693124986728353 / 2500000000000000 : ℚ)
  supportSlope := (83870095543781 / 15625000000000 : ℚ)
  oldCenter := (1693124986728353 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_500
  oldLo := (13540000000000001 / 20000000000000000 : ℚ)
  oldHi := (67749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1575]
}

theorem check_6000 : SourceCertificateFamily.RightNormalized.check cell_6000 = true := by
  decide +kernel

theorem check_6001 : SourceCertificateFamily.RightNormalized.check cell_6001 = true := by
  decide +kernel

theorem check_6002 : SourceCertificateFamily.RightNormalized.check cell_6002 = true := by
  decide +kernel

theorem check_6003 : SourceCertificateFamily.RightNormalized.check cell_6003 = true := by
  decide +kernel

theorem check_6004 : SourceCertificateFamily.RightNormalized.check cell_6004 = true := by
  decide +kernel

theorem check_6005 : SourceCertificateFamily.RightNormalized.check cell_6005 = true := by
  decide +kernel

theorem check_6006 : SourceCertificateFamily.RightNormalized.check cell_6006 = true := by
  decide +kernel

theorem check_6007 : SourceCertificateFamily.RightNormalized.check cell_6007 = true := by
  decide +kernel

theorem check_6008 : SourceCertificateFamily.RightNormalized.check cell_6008 = true := by
  decide +kernel

theorem check_6009 : SourceCertificateFamily.RightNormalized.check cell_6009 = true := by
  decide +kernel

theorem check_6010 : SourceCertificateFamily.RightNormalized.check cell_6010 = true := by
  decide +kernel

theorem check_6011 : SourceCertificateFamily.RightNormalized.check cell_6011 = true := by
  decide +kernel

theorem check_6012 : SourceCertificateFamily.RightNormalized.check cell_6012 = true := by
  decide +kernel

theorem check_6013 : SourceCertificateFamily.RightNormalized.check cell_6013 = true := by
  decide +kernel

theorem check_6014 : SourceCertificateFamily.RightNormalized.check cell_6014 = true := by
  decide +kernel

theorem check_6015 : SourceCertificateFamily.RightNormalized.check cell_6015 = true := by
  decide +kernel

theorem check_6016 : SourceCertificateFamily.RightNormalized.check cell_6016 = true := by
  decide +kernel

theorem check_6017 : SourceCertificateFamily.RightNormalized.check cell_6017 = true := by
  decide +kernel

theorem check_6018 : SourceCertificateFamily.RightNormalized.check cell_6018 = true := by
  decide +kernel

theorem check_6019 : SourceCertificateFamily.RightNormalized.check cell_6019 = true := by
  decide +kernel

theorem check_6020 : SourceCertificateFamily.RightNormalized.check cell_6020 = true := by
  decide +kernel

theorem check_6021 : SourceCertificateFamily.RightNormalized.check cell_6021 = true := by
  decide +kernel

theorem check_6022 : SourceCertificateFamily.RightNormalized.check cell_6022 = true := by
  decide +kernel

theorem check_6023 : SourceCertificateFamily.RightNormalized.check cell_6023 = true := by
  decide +kernel

theorem check_6024 : SourceCertificateFamily.RightNormalized.check cell_6024 = true := by
  decide +kernel

theorem check_6025 : SourceCertificateFamily.RightNormalized.check cell_6025 = true := by
  decide +kernel

theorem check_6026 : SourceCertificateFamily.RightNormalized.check cell_6026 = true := by
  decide +kernel

theorem check_6027 : SourceCertificateFamily.RightNormalized.check cell_6027 = true := by
  decide +kernel

theorem check_6028 : SourceCertificateFamily.RightNormalized.check cell_6028 = true := by
  decide +kernel

theorem check_6029 : SourceCertificateFamily.RightNormalized.check cell_6029 = true := by
  decide +kernel

theorem check_6030 : SourceCertificateFamily.RightNormalized.check cell_6030 = true := by
  decide +kernel

theorem check_6031 : SourceCertificateFamily.RightNormalized.check cell_6031 = true := by
  decide +kernel

theorem check_6032 : SourceCertificateFamily.RightNormalized.check cell_6032 = true := by
  decide +kernel

theorem check_6033 : SourceCertificateFamily.RightNormalized.check cell_6033 = true := by
  decide +kernel

theorem check_6034 : SourceCertificateFamily.RightNormalized.check cell_6034 = true := by
  decide +kernel

theorem check_6035 : SourceCertificateFamily.RightNormalized.check cell_6035 = true := by
  decide +kernel

theorem check_6036 : SourceCertificateFamily.RightNormalized.check cell_6036 = true := by
  decide +kernel

theorem check_6037 : SourceCertificateFamily.RightNormalized.check cell_6037 = true := by
  decide +kernel

theorem check_6038 : SourceCertificateFamily.RightNormalized.check cell_6038 = true := by
  decide +kernel

theorem check_6039 : SourceCertificateFamily.RightNormalized.check cell_6039 = true := by
  decide +kernel

theorem check_6040 : SourceCertificateFamily.RightNormalized.check cell_6040 = true := by
  decide +kernel

theorem check_6041 : SourceCertificateFamily.RightNormalized.check cell_6041 = true := by
  decide +kernel

theorem check_6042 : SourceCertificateFamily.RightNormalized.check cell_6042 = true := by
  decide +kernel

theorem check_6043 : SourceCertificateFamily.RightNormalized.check cell_6043 = true := by
  decide +kernel

theorem check_6044 : SourceCertificateFamily.RightNormalized.check cell_6044 = true := by
  decide +kernel

theorem check_6045 : SourceCertificateFamily.RightNormalized.check cell_6045 = true := by
  decide +kernel

theorem check_6046 : SourceCertificateFamily.RightNormalized.check cell_6046 = true := by
  decide +kernel

theorem check_6047 : SourceCertificateFamily.RightNormalized.check cell_6047 = true := by
  decide +kernel

theorem check_6048 : SourceCertificateFamily.RightNormalized.check cell_6048 = true := by
  decide +kernel

theorem check_6049 : SourceCertificateFamily.RightNormalized.check cell_6049 = true := by
  decide +kernel

def cells : List Cell := [cell_6000, cell_6001, cell_6002, cell_6003, cell_6004, cell_6005, cell_6006, cell_6007, cell_6008, cell_6009, cell_6010, cell_6011, cell_6012, cell_6013, cell_6014, cell_6015, cell_6016, cell_6017, cell_6018, cell_6019, cell_6020, cell_6021, cell_6022, cell_6023, cell_6024, cell_6025, cell_6026, cell_6027, cell_6028, cell_6029, cell_6030, cell_6031, cell_6032, cell_6033, cell_6034, cell_6035, cell_6036, cell_6037, cell_6038, cell_6039, cell_6040, cell_6041, cell_6042, cell_6043, cell_6044, cell_6045, cell_6046, cell_6047, cell_6048, cell_6049]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_6000, SourceCertificateFamily.of_right_checked check_6001, SourceCertificateFamily.of_right_checked check_6002, SourceCertificateFamily.of_right_checked check_6003, SourceCertificateFamily.of_right_checked check_6004, SourceCertificateFamily.of_right_checked check_6005, SourceCertificateFamily.of_right_checked check_6006, SourceCertificateFamily.of_right_checked check_6007, SourceCertificateFamily.of_right_checked check_6008, SourceCertificateFamily.of_right_checked check_6009, SourceCertificateFamily.of_right_checked check_6010, SourceCertificateFamily.of_right_checked check_6011, SourceCertificateFamily.of_right_checked check_6012, SourceCertificateFamily.of_right_checked check_6013, SourceCertificateFamily.of_right_checked check_6014, SourceCertificateFamily.of_right_checked check_6015, SourceCertificateFamily.of_right_checked check_6016, SourceCertificateFamily.of_right_checked check_6017, SourceCertificateFamily.of_right_checked check_6018, SourceCertificateFamily.of_right_checked check_6019, SourceCertificateFamily.of_right_checked check_6020, SourceCertificateFamily.of_right_checked check_6021, SourceCertificateFamily.of_right_checked check_6022, SourceCertificateFamily.of_right_checked check_6023, SourceCertificateFamily.of_right_checked check_6024, SourceCertificateFamily.of_right_checked check_6025, SourceCertificateFamily.of_right_checked check_6026, SourceCertificateFamily.of_right_checked check_6027, SourceCertificateFamily.of_right_checked check_6028, SourceCertificateFamily.of_right_checked check_6029, SourceCertificateFamily.of_right_checked check_6030, SourceCertificateFamily.of_right_checked check_6031, SourceCertificateFamily.of_right_checked check_6032, SourceCertificateFamily.of_right_checked check_6033, SourceCertificateFamily.of_right_checked check_6034, SourceCertificateFamily.of_right_checked check_6035, SourceCertificateFamily.of_right_checked check_6036, SourceCertificateFamily.of_right_checked check_6037, SourceCertificateFamily.of_right_checked check_6038, SourceCertificateFamily.of_right_checked check_6039, SourceCertificateFamily.of_right_checked check_6040, SourceCertificateFamily.of_right_checked check_6041, SourceCertificateFamily.of_right_checked check_6042, SourceCertificateFamily.of_right_checked check_6043, SourceCertificateFamily.of_right_checked check_6044, SourceCertificateFamily.of_right_checked check_6045, SourceCertificateFamily.of_right_checked check_6046, SourceCertificateFamily.of_right_checked check_6047, SourceCertificateFamily.of_right_checked check_6048, SourceCertificateFamily.of_right_checked check_6049, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0120

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0120
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0120
open AnalyticBounds.ExpressionCertificate

theorem linked_6000 : Linked cell_6000 pieces := by
  apply Linked.of_piece piece_496 piece_496_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6000, List.cons_subset, List.nil_subset, and_true]
  exact piece_1558_mem

theorem linked_6001 : Linked cell_6001 pieces := by
  apply Linked.of_piece piece_496 piece_496_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6001, List.cons_subset, List.nil_subset, and_true]
  exact piece_1558_mem

theorem linked_6002 : Linked cell_6002 pieces := by
  apply Linked.of_piece piece_496 piece_496_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6002, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1558_mem, piece_1559_mem⟩

theorem linked_6003 : Linked cell_6003 pieces := by
  apply Linked.of_piece piece_496 piece_496_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6003, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1559_mem, piece_1560_mem⟩

theorem linked_6004 : Linked cell_6004 pieces := by
  apply Linked.of_piece piece_496 piece_496_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6004, List.cons_subset, List.nil_subset, and_true]
  exact piece_1560_mem

theorem linked_6005 : Linked cell_6005 pieces := by
  apply Linked.of_piece piece_496 piece_496_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6005, List.cons_subset, List.nil_subset, and_true]
  exact piece_1560_mem

theorem linked_6006 : Linked cell_6006 pieces := by
  apply Linked.of_piece piece_496 piece_496_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6006, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1560_mem, piece_1561_mem⟩

theorem linked_6007 : Linked cell_6007 pieces := by
  apply Linked.of_piece piece_496 piece_496_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6007, List.cons_subset, List.nil_subset, and_true]
  exact piece_1561_mem

theorem linked_6008 : Linked cell_6008 pieces := by
  apply Linked.of_piece piece_496 piece_496_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6008, List.cons_subset, List.nil_subset, and_true]
  exact piece_1561_mem

theorem linked_6009 : Linked cell_6009 pieces := by
  apply Linked.of_piece piece_496 piece_496_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6009, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1561_mem, piece_1562_mem⟩

theorem linked_6010 : Linked cell_6010 pieces := by
  apply Linked.of_piece piece_497 piece_497_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6010, List.cons_subset, List.nil_subset, and_true]
  exact piece_1561_mem

theorem linked_6011 : Linked cell_6011 pieces := by
  apply Linked.of_piece piece_497 piece_497_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6011, List.cons_subset, List.nil_subset, and_true]
  exact piece_1561_mem

theorem linked_6012 : Linked cell_6012 pieces := by
  apply Linked.of_piece piece_497 piece_497_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6012, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1561_mem, piece_1562_mem⟩

theorem linked_6013 : Linked cell_6013 pieces := by
  apply Linked.of_piece piece_497 piece_497_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6013, List.cons_subset, List.nil_subset, and_true]
  exact piece_1562_mem

theorem linked_6014 : Linked cell_6014 pieces := by
  apply Linked.of_piece piece_497 piece_497_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6014, List.cons_subset, List.nil_subset, and_true]
  exact piece_1562_mem

theorem linked_6015 : Linked cell_6015 pieces := by
  apply Linked.of_piece piece_497 piece_497_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6015, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1562_mem, piece_1563_mem⟩

theorem linked_6016 : Linked cell_6016 pieces := by
  apply Linked.of_piece piece_497 piece_497_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6016, List.cons_subset, List.nil_subset, and_true]
  exact piece_1563_mem

theorem linked_6017 : Linked cell_6017 pieces := by
  apply Linked.of_piece piece_497 piece_497_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6017, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1563_mem, piece_1564_mem⟩

theorem linked_6018 : Linked cell_6018 pieces := by
  apply Linked.of_piece piece_497 piece_497_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6018, List.cons_subset, List.nil_subset, and_true]
  exact piece_1564_mem

theorem linked_6019 : Linked cell_6019 pieces := by
  apply Linked.of_piece piece_497 piece_497_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6019, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1564_mem, piece_1565_mem⟩

theorem linked_6020 : Linked cell_6020 pieces := by
  apply Linked.of_piece piece_497 piece_497_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6020, List.cons_subset, List.nil_subset, and_true]
  exact piece_1565_mem

theorem linked_6021 : Linked cell_6021 pieces := by
  apply Linked.of_piece piece_497 piece_497_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6021, List.cons_subset, List.nil_subset, and_true]
  exact piece_1565_mem

theorem linked_6022 : Linked cell_6022 pieces := by
  apply Linked.of_piece piece_497 piece_497_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6022, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1565_mem, piece_1566_mem⟩

theorem linked_6023 : Linked cell_6023 pieces := by
  apply Linked.of_piece piece_497 piece_497_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6023, List.cons_subset, List.nil_subset, and_true]
  exact piece_1566_mem

theorem linked_6024 : Linked cell_6024 pieces := by
  apply Linked.of_piece piece_498 piece_498_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6024, List.cons_subset, List.nil_subset, and_true]
  exact piece_1565_mem

theorem linked_6025 : Linked cell_6025 pieces := by
  apply Linked.of_piece piece_498 piece_498_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6025, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1565_mem, piece_1566_mem⟩

theorem linked_6026 : Linked cell_6026 pieces := by
  apply Linked.of_piece piece_498 piece_498_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6026, List.cons_subset, List.nil_subset, and_true]
  exact piece_1566_mem

theorem linked_6027 : Linked cell_6027 pieces := by
  apply Linked.of_piece piece_498 piece_498_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6027, List.cons_subset, List.nil_subset, and_true]
  exact piece_1566_mem

theorem linked_6028 : Linked cell_6028 pieces := by
  apply Linked.of_piece piece_498 piece_498_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6028, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1566_mem, ⟨piece_1567_mem, piece_1568_mem⟩⟩

theorem linked_6029 : Linked cell_6029 pieces := by
  apply Linked.of_piece piece_498 piece_498_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6029, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1568_mem, piece_1569_mem⟩

theorem linked_6030 : Linked cell_6030 pieces := by
  apply Linked.of_piece piece_498 piece_498_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6030, List.cons_subset, List.nil_subset, and_true]
  exact piece_1569_mem

theorem linked_6031 : Linked cell_6031 pieces := by
  apply Linked.of_piece piece_498 piece_498_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6031, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1569_mem, piece_1570_mem⟩

theorem linked_6032 : Linked cell_6032 pieces := by
  apply Linked.of_piece piece_498 piece_498_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6032, List.cons_subset, List.nil_subset, and_true]
  exact piece_1570_mem

theorem linked_6033 : Linked cell_6033 pieces := by
  apply Linked.of_piece piece_498 piece_498_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6033, List.cons_subset, List.nil_subset, and_true]
  exact piece_1570_mem

theorem linked_6034 : Linked cell_6034 pieces := by
  apply Linked.of_piece piece_498 piece_498_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6034, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1570_mem, piece_1571_mem⟩

theorem linked_6035 : Linked cell_6035 pieces := by
  apply Linked.of_piece piece_498 piece_498_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6035, List.cons_subset, List.nil_subset, and_true]
  exact piece_1571_mem

theorem linked_6036 : Linked cell_6036 pieces := by
  apply Linked.of_piece piece_498 piece_498_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6036, List.cons_subset, List.nil_subset, and_true]
  exact piece_1571_mem

theorem linked_6037 : Linked cell_6037 pieces := by
  apply Linked.of_piece piece_499 piece_499_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6037, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1570_mem, piece_1571_mem⟩

theorem linked_6038 : Linked cell_6038 pieces := by
  apply Linked.of_piece piece_499 piece_499_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6038, List.cons_subset, List.nil_subset, and_true]
  exact piece_1571_mem

theorem linked_6039 : Linked cell_6039 pieces := by
  apply Linked.of_piece piece_499 piece_499_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6039, List.cons_subset, List.nil_subset, and_true]
  exact piece_1571_mem

theorem linked_6040 : Linked cell_6040 pieces := by
  apply Linked.of_piece piece_499 piece_499_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6040, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1571_mem, piece_1572_mem⟩

theorem linked_6041 : Linked cell_6041 pieces := by
  apply Linked.of_piece piece_499 piece_499_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6041, List.cons_subset, List.nil_subset, and_true]
  exact piece_1572_mem

theorem linked_6042 : Linked cell_6042 pieces := by
  apply Linked.of_piece piece_499 piece_499_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6042, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1572_mem, piece_1573_mem⟩

theorem linked_6043 : Linked cell_6043 pieces := by
  apply Linked.of_piece piece_499 piece_499_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6043, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1573_mem, piece_1574_mem⟩

theorem linked_6044 : Linked cell_6044 pieces := by
  apply Linked.of_piece piece_499 piece_499_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6044, List.cons_subset, List.nil_subset, and_true]
  exact piece_1574_mem

theorem linked_6045 : Linked cell_6045 pieces := by
  apply Linked.of_piece piece_499 piece_499_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6045, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1574_mem, piece_1575_mem⟩

theorem linked_6046 : Linked cell_6046 pieces := by
  apply Linked.of_piece piece_499 piece_499_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6046, List.cons_subset, List.nil_subset, and_true]
  exact piece_1575_mem

theorem linked_6047 : Linked cell_6047 pieces := by
  apply Linked.of_piece piece_499 piece_499_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6047, List.cons_subset, List.nil_subset, and_true]
  exact piece_1575_mem

theorem linked_6048 : Linked cell_6048 pieces := by
  apply Linked.of_piece piece_499 piece_499_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6048, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1575_mem, piece_1576_mem⟩

theorem linked_6049 : Linked cell_6049 pieces := by
  apply Linked.of_piece piece_500 piece_500_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6049, List.cons_subset, List.nil_subset, and_true]
  exact piece_1575_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0120.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0120.cells,List.forall_mem_cons]
  exact ⟨linked_6000, linked_6001, linked_6002, linked_6003, linked_6004, linked_6005, linked_6006, linked_6007, linked_6008, linked_6009, linked_6010, linked_6011, linked_6012, linked_6013, linked_6014, linked_6015, linked_6016, linked_6017, linked_6018, linked_6019, linked_6020, linked_6021, linked_6022, linked_6023, linked_6024, linked_6025, linked_6026, linked_6027, linked_6028, linked_6029, linked_6030, linked_6031, linked_6032, linked_6033, linked_6034, linked_6035, linked_6036, linked_6037, linked_6038, linked_6039, linked_6040, linked_6041, linked_6042, linked_6043, linked_6044, linked_6045, linked_6046, linked_6047, linked_6048, linked_6049, by simp⟩

theorem covered : covers (1457 / 8000 : ℚ) (5889 / 32000 : ℚ)
    (SourceCertificates.Chunk0120.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0120
