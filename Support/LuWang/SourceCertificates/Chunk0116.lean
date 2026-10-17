import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0116
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(17578124999999999 / 100000000000000000 : ℚ), (17581249999999999 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (93469355385477 / 100000000000000 : ℚ)
  w := (5029287170567 / 5000000000000 : ℚ)
  center := (17579687499999999 / 100000000000000000 : ℚ)
  supportValue := (6415063320093731 / 10000000000000000 : ℚ)
  supportSlope := (131997479259649 / 25000000000000 : ℚ)
  oldCenter := (6415063320093731 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_483
  oldLo := (32100000000000001 / 50000000000000000 : ℚ)
  oldHi := (32350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1509]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_5800 : Cell := { cellDefaults with
  r := (93563053662463 / 100000000000000 : ℚ)
  w := (10056646632629 / 10000000000000 : ℚ)
  newCoefficients := coefficients_481
  oldLo := (64100000000000001 / 100000000000000000 : ℚ)
  oldHi := (32100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1497, piece_1498]
}

def cell_5801 : Cell := { cellDefaults with
  domain := ⟨(17581249999999999 / 100000000000000000 : ℚ), (17584374999999999 / 100000000000000000 : ℚ)⟩
  r := (93563053662463 / 100000000000000 : ℚ)
  w := (10056646632629 / 10000000000000 : ℚ)
  center := (17582812499999999 / 100000000000000000 : ℚ)
  supportValue := (6416713339159529 / 10000000000000000 : ℚ)
  supportSlope := (1056094651758599 / 200000000000000 : ℚ)
  oldCenter := (6416713339159529 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_481
  oldLo := (64150000000000007 / 100000000000000000 : ℚ)
  oldHi := (32100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1498]
}

def cell_5802 : Cell := { cellDefaults with
  domain := ⟨(17584374999999999 / 100000000000000000 : ℚ), (17587499999999999 / 100000000000000000 : ℚ)⟩
  r := (93563053662463 / 100000000000000 : ℚ)
  w := (10056646632629 / 10000000000000 : ℚ)
  center := (17585937499999999 / 100000000000000000 : ℚ)
  supportValue := (641836361556947 / 1000000000000000 : ℚ)
  supportSlope := (1320324220470681 / 250000000000000 : ℚ)
  oldCenter := (641836361556947 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_481
  oldLo := (64150000000000007 / 100000000000000000 : ℚ)
  oldHi := (32100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1498]
}

def cell_5803 : Cell := { cellDefaults with
  domain := ⟨(17587499999999999 / 100000000000000000 : ℚ), (439804469273743 / 2500000000000000 : ℚ)⟩
  r := (93563053662463 / 100000000000000 : ℚ)
  w := (10056646632629 / 10000000000000 : ℚ)
  center := (35179678770949719 / 200000000000000000 : ℚ)
  supportValue := (6420423190020523 / 10000000000000000 : ℚ)
  supportSlope := (660245267287921 / 125000000000000 : ℚ)
  oldCenter := (6420423190020523 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_481
  oldLo := (64150000000000007 / 100000000000000000 : ℚ)
  oldHi := (64250000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1498, piece_1499]
}

def cell_5804 : Cell := { cellDefaults with
  domain := ⟨(439804469273743 / 2500000000000000 : ℚ), (35192178770949719 / 200000000000000000 : ℚ)⟩
  r := (93563053662463 / 100000000000000 : ℚ)
  w := (10056646632629 / 10000000000000 : ℚ)
  center := (70376536312849159 / 400000000000000000 : ℚ)
  supportValue := (401418317561943 / 625000000000000 : ℚ)
  supportSlope := (2641457726661063 / 500000000000000 : ℚ)
  oldCenter := (401418317561943 / 625000000000000 : ℚ)
  newCoefficients := coefficients_482
  oldHi := (64250000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1499]
}

def cell_5805 : Cell := { cellDefaults with
  domain := ⟨(35192178770949719 / 200000000000000000 : ℚ), (17599999999999999 / 100000000000000000 : ℚ)⟩
  r := (93563053662463 / 100000000000000 : ℚ)
  w := (10056646632629 / 10000000000000 : ℚ)
  center := (70392178770949717 / 400000000000000000 : ℚ)
  supportValue := (6424759226822249 / 10000000000000000 : ℚ)
  supportSlope := (33023365828309 / 6250000000000 : ℚ)
  oldCenter := (6424759226822249 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_482
  oldHi := (32150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1499, piece_1500]
}

def cell_5806 : Cell := { cellDefaults with
  domain := ⟨(17599999999999999 / 100000000000000000 : ℚ), (17603124999999999 / 100000000000000000 : ℚ)⟩
  center := (17601562499999999 / 100000000000000000 : ℚ)
  supportValue := (1605491015905739 / 2500000000000000 : ℚ)
  supportSlope := (2639839152934087 / 500000000000000 : ℚ)
  oldCenter := (1605491015905739 / 2500000000000000 : ℚ)
  oldHi := (64250000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1499]
}

def cell_5807 : Cell := { cellDefaults with
  domain := ⟨(17603124999999999 / 100000000000000000 : ℚ), (17606249999999999 / 100000000000000000 : ℚ)⟩
  center := (17604687499999999 / 100000000000000000 : ℚ)
  supportValue := (3211807045814089 / 5000000000000000 : ℚ)
  supportSlope := (5280502044605839 / 1000000000000000 : ℚ)
  oldCenter := (3211807045814089 / 5000000000000000 : ℚ)
  oldHi := (64250000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1499]
}

def cell_5808 : Cell := { cellDefaults with
  domain := ⟨(17606249999999999 / 100000000000000000 : ℚ), (17609374999999999 / 100000000000000000 : ℚ)⟩
  center := (17607812499999999 / 100000000000000000 : ℚ)
  supportValue := (803158043751589 / 1250000000000000 : ℚ)
  supportSlope := (528096939332201 / 100000000000000 : ℚ)
  oldCenter := (803158043751589 / 1250000000000000 : ℚ)
  oldHi := (32150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1499, piece_1500]
}

def cell_5809 : Cell := { cellDefaults with
  domain := ⟨(17609374999999999 / 100000000000000000 : ℚ), (17612499999999999 / 100000000000000000 : ℚ)⟩
  center := (17610937499999999 / 100000000000000000 : ℚ)
  supportValue := (3213457362086959 / 5000000000000000 : ℚ)
  supportSlope := (5281609403791521 / 1000000000000000 : ℚ)
  oldCenter := (3213457362086959 / 5000000000000000 : ℚ)
  oldLo := (64250000000000007 / 100000000000000000 : ℚ)
  oldHi := (32150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1500]
}

def cell_5810 : Cell := { cellDefaults with
  domain := ⟨(17612499999999999 / 100000000000000000 : ℚ), (17615624999999999 / 100000000000000000 : ℚ)⟩
  center := (17614062499999999 / 100000000000000000 : ℚ)
  supportValue := (1607141338894743 / 2500000000000000 : ℚ)
  supportSlope := (528243270577633 / 100000000000000 : ℚ)
  oldCenter := (1607141338894743 / 2500000000000000 : ℚ)
  oldLo := (64250000000000007 / 100000000000000000 : ℚ)
  oldHi := (32150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1500]
}

def cell_5811 : Cell := { cellDefaults with
  domain := ⟨(17615624999999999 / 100000000000000000 : ℚ), (17618749999999999 / 100000000000000000 : ℚ)⟩
  center := (17617187499999999 / 100000000000000000 : ℚ)
  supportValue := (20094425694281 / 31250000000000 : ℚ)
  supportSlope := (1320728917103331 / 250000000000000 : ℚ)
  oldCenter := (20094425694281 / 31250000000000 : ℚ)
  oldLo := (64250000000000007 / 100000000000000000 : ℚ)
  oldHi := (64350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1500, piece_1501]
}

def cell_5812 : Cell := { cellDefaults with
  domain := ⟨(17618749999999999 / 100000000000000000 : ℚ), (17621874999999999 / 100000000000000000 : ℚ)⟩
  center := (17620312499999999 / 100000000000000000 : ℚ)
  supportValue := (6431867199609891 / 10000000000000000 : ℚ)
  supportSlope := (132088492977811 / 25000000000000 : ℚ)
  oldCenter := (6431867199609891 / 10000000000000000 : ℚ)
  oldLo := (32150000000000001 / 50000000000000000 : ℚ)
  oldHi := (64350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1501]
}

def cell_5813 : Cell := { cellDefaults with
  domain := ⟨(17621874999999999 / 100000000000000000 : ℚ), (17624999999999999 / 100000000000000000 : ℚ)⟩
  center := (17623437499999999 / 100000000000000000 : ℚ)
  supportValue := (6433518434183083 / 10000000000000000 : ℚ)
  supportSlope := (264218133335703 / 50000000000000 : ℚ)
  oldCenter := (6433518434183083 / 10000000000000000 : ℚ)
  oldLo := (32150000000000001 / 50000000000000000 : ℚ)
  oldHi := (64350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1501]
}

def cell_5814 : Cell := { cellDefaults with
  domain := ⟨(17624999999999999 / 100000000000000000 : ℚ), (17628124999999999 / 100000000000000000 : ℚ)⟩
  center := (17626562499999999 / 100000000000000000 : ℚ)
  supportValue := (6435169908578369 / 10000000000000000 : ℚ)
  supportSlope := (5284860671487479 / 1000000000000000 : ℚ)
  oldCenter := (6435169908578369 / 10000000000000000 : ℚ)
  oldLo := (32150000000000001 / 50000000000000000 : ℚ)
  oldHi := (32200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1501, piece_1502]
}

def cell_5815 : Cell := { cellDefaults with
  domain := ⟨(17628124999999999 / 100000000000000000 : ℚ), (17631249999999999 / 100000000000000000 : ℚ)⟩
  center := (17629687499999999 / 100000000000000000 : ℚ)
  supportValue := (804602686135733 / 1250000000000000 : ℚ)
  supportSlope := (660683663430639 / 125000000000000 : ℚ)
  oldCenter := (804602686135733 / 1250000000000000 : ℚ)
  oldLo := (64350000000000007 / 100000000000000000 : ℚ)
  oldHi := (32200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1502]
}

def cell_5816 : Cell := { cellDefaults with
  domain := ⟨(17631249999999999 / 100000000000000000 : ℚ), (17634374999999999 / 100000000000000000 : ℚ)⟩
  center := (17632812499999999 / 100000000000000000 : ℚ)
  supportValue := (6438473326584039 / 10000000000000000 : ℚ)
  supportSlope := (660786474800279 / 125000000000000 : ℚ)
  oldCenter := (6438473326584039 / 10000000000000000 : ℚ)
  oldLo := (64350000000000007 / 100000000000000000 : ℚ)
  oldHi := (32200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1502]
}

def cell_5817 : Cell := { cellDefaults with
  domain := ⟨(17634374999999999 / 100000000000000000 : ℚ), (17637499999999999 / 100000000000000000 : ℚ)⟩
  center := (17635937499999999 / 100000000000000000 : ℚ)
  supportValue := (1610031352078721 / 2500000000000000 : ℚ)
  supportSlope := (2643402092129321 / 500000000000000 : ℚ)
  oldCenter := (1610031352078721 / 2500000000000000 : ℚ)
  oldLo := (64350000000000007 / 100000000000000000 : ℚ)
  oldHi := (64450000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1502, piece_1503]
}

def cell_5818 : Cell := { cellDefaults with
  domain := ⟨(17637499999999999 / 100000000000000000 : ℚ), (17640624999999999 / 100000000000000000 : ℚ)⟩
  center := (17639062499999999 / 100000000000000000 : ℚ)
  supportValue := (3220888795815399 / 5000000000000000 : ℚ)
  supportSlope := (5287398078706929 / 1000000000000000 : ℚ)
  oldCenter := (3220888795815399 / 5000000000000000 : ℚ)
  oldLo := (32200000000000001 / 50000000000000000 : ℚ)
  oldHi := (64450000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1503]
}

def cell_5819 : Cell := { cellDefaults with
  domain := ⟨(17640624999999999 / 100000000000000000 : ℚ), (17643749999999999 / 100000000000000000 : ℚ)⟩
  center := (17642187499999999 / 100000000000000000 : ℚ)
  supportValue := (1288686006360481 / 2000000000000000 : ℚ)
  supportSlope := (165256879289033 / 31250000000000 : ℚ)
  oldCenter := (1288686006360481 / 2000000000000000 : ℚ)
  oldLo := (32200000000000001 / 50000000000000000 : ℚ)
  oldHi := (64450000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1503]
}

def cell_5820 : Cell := { cellDefaults with
  domain := ⟨(17643749999999999 / 100000000000000000 : ℚ), (17646874999999999 / 100000000000000000 : ℚ)⟩
  center := (17645312499999999 / 100000000000000000 : ℚ)
  supportValue := (6445082720427671 / 10000000000000000 : ℚ)
  supportSlope := (2644373134099709 / 500000000000000 : ℚ)
  oldCenter := (6445082720427671 / 10000000000000000 : ℚ)
  oldLo := (32200000000000001 / 50000000000000000 : ℚ)
  oldHi := (32250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1503, piece_1504]
}

def cell_5821 : Cell := { cellDefaults with
  domain := ⟨(17646874999999999 / 100000000000000000 : ℚ), (17649999999999999 / 100000000000000000 : ℚ)⟩
  center := (17648437499999999 / 100000000000000000 : ℚ)
  supportValue := (6446735506297829 / 10000000000000000 : ℚ)
  supportSlope := (10578652104662467 / 2000000000000000 : ℚ)
  oldCenter := (6446735506297829 / 10000000000000000 : ℚ)
  oldLo := (64450000000000007 / 100000000000000000 : ℚ)
  oldHi := (32250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1504]
}

def cell_5822 : Cell := { cellDefaults with
  domain := ⟨(17649999999999999 / 100000000000000000 : ℚ), (17653124999999999 / 100000000000000000 : ℚ)⟩
  r := (93375899234967 / 100000000000000 : ℚ)
  w := (100605101703 / 100000000000 : ℚ)
  center := (17651562499999999 / 100000000000000000 : ℚ)
  supportValue := (3221862930605709 / 5000000000000000 : ℚ)
  supportSlope := (5285489994363957 / 1000000000000000 : ℚ)
  oldCenter := (3221862930605709 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_484
  oldLo := (32200000000000001 / 50000000000000000 : ℚ)
  oldHi := (64450000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1503]
}

def cell_5823 : Cell := { cellDefaults with
  domain := ⟨(17653124999999999 / 100000000000000000 : ℚ), (17656249999999999 / 100000000000000000 : ℚ)⟩
  r := (93375899234967 / 100000000000000 : ℚ)
  w := (100605101703 / 100000000000 : ℚ)
  center := (17654687499999999 / 100000000000000000 : ℚ)
  supportValue := (3222688833355953 / 5000000000000000 : ℚ)
  supportSlope := (5285920455506243 / 1000000000000000 : ℚ)
  oldCenter := (3222688833355953 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_484
  oldLo := (32200000000000001 / 50000000000000000 : ℚ)
  oldHi := (32250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1503, piece_1504]
}

def cell_5824 : Cell := { cellDefaults with
  domain := ⟨(17656249999999999 / 100000000000000000 : ℚ), (17659374999999999 / 100000000000000000 : ℚ)⟩
  r := (93375899234967 / 100000000000000 : ℚ)
  w := (100605101703 / 100000000000 : ℚ)
  center := (17657812499999999 / 100000000000000000 : ℚ)
  supportValue := (644702959957329 / 1000000000000000 : ℚ)
  supportSlope := (10573193131129699 / 2000000000000000 : ℚ)
  oldCenter := (644702959957329 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_484
  oldLo := (64450000000000007 / 100000000000000000 : ℚ)
  oldHi := (32250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1504]
}

def cell_5825 : Cell := { cellDefaults with
  domain := ⟨(17659374999999999 / 100000000000000000 : ℚ), (17662499999999999 / 100000000000000000 : ℚ)⟩
  r := (93375899234967 / 100000000000000 : ℚ)
  w := (100605101703 / 100000000000 : ℚ)
  center := (17660937499999999 / 100000000000000000 : ℚ)
  supportValue := (6448681789253787 / 10000000000000000 : ℚ)
  supportSlope := (2643709253634441 / 500000000000000 : ℚ)
  oldCenter := (6448681789253787 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_484
  oldLo := (64450000000000007 / 100000000000000000 : ℚ)
  oldHi := (32250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1504]
}

def cell_5826 : Cell := { cellDefaults with
  domain := ⟨(17662499999999999 / 100000000000000000 : ℚ), (17665624999999999 / 100000000000000000 : ℚ)⟩
  r := (93375899234967 / 100000000000000 : ℚ)
  w := (100605101703 / 100000000000 : ℚ)
  center := (17664062499999999 / 100000000000000000 : ℚ)
  supportValue := (6450334201812197 / 10000000000000000 : ℚ)
  supportSlope := (5287863060146947 / 1000000000000000 : ℚ)
  oldCenter := (6450334201812197 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_484
  oldLo := (64450000000000007 / 100000000000000000 : ℚ)
  oldHi := (64550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1504, piece_1505]
}

def cell_5827 : Cell := { cellDefaults with
  domain := ⟨(17665624999999999 / 100000000000000000 : ℚ), (17668749999999999 / 100000000000000000 : ℚ)⟩
  r := (93375899234967 / 100000000000000 : ℚ)
  w := (100605101703 / 100000000000 : ℚ)
  center := (17667187499999999 / 100000000000000000 : ℚ)
  supportValue := (6451986737283553 / 10000000000000000 : ℚ)
  supportSlope := (2644262358979077 / 500000000000000 : ℚ)
  oldCenter := (6451986737283553 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_484
  oldLo := (32250000000000001 / 50000000000000000 : ℚ)
  oldHi := (64550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1505]
}

def cell_5828 : Cell := { cellDefaults with
  domain := ⟨(17668749999999999 / 100000000000000000 : ℚ), (17671874999999999 / 100000000000000000 : ℚ)⟩
  r := (93375899234967 / 100000000000000 : ℚ)
  w := (100605101703 / 100000000000 : ℚ)
  center := (17670312499999999 / 100000000000000000 : ℚ)
  supportValue := (1613409882362281 / 2500000000000000 : ℚ)
  supportSlope := (5289346259491623 / 1000000000000000 : ℚ)
  oldCenter := (1613409882362281 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_484
  oldLo := (32250000000000001 / 50000000000000000 : ℚ)
  oldHi := (64550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1505]
}

def cell_5829 : Cell := { cellDefaults with
  domain := ⟨(17671874999999999 / 100000000000000000 : ℚ), (17674999999999999 / 100000000000000000 : ℚ)⟩
  r := (93375899234967 / 100000000000000 : ℚ)
  w := (100605101703 / 100000000000 : ℚ)
  center := (17673437499999999 / 100000000000000000 : ℚ)
  supportValue := (1291058509726653 / 2000000000000000 : ℚ)
  supportSlope := (5289804281417787 / 1000000000000000 : ℚ)
  oldCenter := (1291058509726653 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_484
  oldLo := (32250000000000001 / 50000000000000000 : ℚ)
  oldHi := (32300000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1505, piece_1506]
}

def cell_5830 : Cell := { cellDefaults with
  domain := ⟨(17674999999999999 / 100000000000000000 : ℚ), (17678124999999999 / 100000000000000000 : ℚ)⟩
  r := (93375899234967 / 100000000000000 : ℚ)
  w := (100605101703 / 100000000000 : ℚ)
  center := (17676562499999999 / 100000000000000000 : ℚ)
  supportValue := (5165556549181 / 8000000000000 : ℚ)
  supportSlope := (5290452106940791 / 1000000000000000 : ℚ)
  oldCenter := (5165556549181 / 8000000000000 : ℚ)
  newCoefficients := coefficients_484
  oldLo := (64550000000000007 / 100000000000000000 : ℚ)
  oldHi := (32300000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1506]
}

def cell_5831 : Cell := { cellDefaults with
  domain := ⟨(17678124999999999 / 100000000000000000 : ℚ), (17681249999999999 / 100000000000000000 : ℚ)⟩
  r := (93375899234967 / 100000000000000 : ℚ)
  w := (100605101703 / 100000000000 : ℚ)
  center := (17679687499999999 / 100000000000000000 : ℚ)
  supportValue := (1614649770222033 / 2500000000000000 : ℚ)
  supportSlope := (5291273247042483 / 1000000000000000 : ℚ)
  oldCenter := (1614649770222033 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_484
  oldLo := (64550000000000007 / 100000000000000000 : ℚ)
  oldHi := (32300000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1506]
}

def cell_5832 : Cell := { cellDefaults with
  domain := ⟨(17681249999999999 / 100000000000000000 : ℚ), (17684374999999999 / 100000000000000000 : ℚ)⟩
  r := (93375899234967 / 100000000000000 : ℚ)
  w := (100605101703 / 100000000000 : ℚ)
  center := (17682812499999999 / 100000000000000000 : ℚ)
  supportValue := (1615063176566409 / 2500000000000000 : ℚ)
  supportSlope := (5291745103530587 / 1000000000000000 : ℚ)
  oldCenter := (1615063176566409 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_484
  oldLo := (64550000000000007 / 100000000000000000 : ℚ)
  oldHi := (64650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1506, piece_1507, piece_1508]
}

def cell_5833 : Cell := { cellDefaults with
  domain := ⟨(17684374999999999 / 100000000000000000 : ℚ), (17687499999999999 / 100000000000000000 : ℚ)⟩
  r := (93375899234967 / 100000000000000 : ℚ)
  w := (100605101703 / 100000000000 : ℚ)
  center := (17685937499999999 / 100000000000000000 : ℚ)
  supportValue := (3230953223444651 / 5000000000000000 : ℚ)
  supportSlope := (5292380907036431 / 1000000000000000 : ℚ)
  oldCenter := (3230953223444651 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_484
  oldLo := (3230167597765363 / 5000000000000000 : ℚ)
  oldHi := (64650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1508]
}

def cell_5834 : Cell := { cellDefaults with
  domain := ⟨(17687499999999999 / 100000000000000000 : ℚ), (17690624999999999 / 100000000000000000 : ℚ)⟩
  r := (93375899234967 / 100000000000000 : ℚ)
  w := (100605101703 / 100000000000 : ℚ)
  center := (17689062499999999 / 100000000000000000 : ℚ)
  supportValue := (6463560443986547 / 10000000000000000 : ℚ)
  supportSlope := (529320163341751 / 100000000000000 : ℚ)
  oldCenter := (6463560443986547 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_484
  oldLo := (3230167597765363 / 5000000000000000 : ℚ)
  oldHi := (64650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1508]
}

def cell_5835 : Cell := { cellDefaults with
  domain := ⟨(17690624999999999 / 100000000000000000 : ℚ), (17693749999999999 / 100000000000000000 : ℚ)⟩
  r := (93375899234967 / 100000000000000 : ℚ)
  w := (100605101703 / 100000000000 : ℚ)
  center := (17692187499999999 / 100000000000000000 : ℚ)
  supportValue := (6465214675799973 / 10000000000000000 : ℚ)
  supportSlope := (661710591143283 / 125000000000000 : ℚ)
  oldCenter := (6465214675799973 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_484
  oldLo := (3230167597765363 / 5000000000000000 : ℚ)
  oldPieces := [piece_1508, piece_1509]
}

def cell_5836 : Cell := { cellDefaults with
  domain := ⟨(17693749999999999 / 100000000000000000 : ℚ), (17696874999999999 / 100000000000000000 : ℚ)⟩
  r := (93375899234967 / 100000000000000 : ℚ)
  w := (100605101703 / 100000000000 : ℚ)
  center := (17695312499999999 / 100000000000000000 : ℚ)
  supportValue := (404179313646273 / 625000000000000 : ℚ)
  supportSlope := (1058861345752149 / 200000000000000 : ℚ)
  oldCenter := (404179313646273 / 625000000000000 : ℚ)
  newCoefficients := coefficients_484
  oldLo := (64650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1509]
}

def cell_5837 : Cell := { cellDefaults with
  domain := ⟨(17696874999999999 / 100000000000000000 : ℚ), (17699999999999999 / 100000000000000000 : ℚ)⟩
  r := (93375899234967 / 100000000000000 : ℚ)
  w := (100605101703 / 100000000000 : ℚ)
  center := (17698437499999999 / 100000000000000000 : ℚ)
  supportValue := (50535340759321 / 78125000000000 : ℚ)
  supportSlope := (2647563523456853 / 500000000000000 : ℚ)
  oldCenter := (50535340759321 / 78125000000000 : ℚ)
  newCoefficients := coefficients_484
  oldLo := (64650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1509]
}

def cell_5838 : Cell := { cellDefaults with
  domain := ⟨(17699999999999999 / 100000000000000000 : ℚ), (17703124999999999 / 100000000000000000 : ℚ)⟩
  r := (1457541931293 / 1562500000000 : ℚ)
  w := (1257806775297 / 1250000000000 : ℚ)
  center := (17701562499999999 / 100000000000000000 : ℚ)
  supportValue := (323275351585113 / 500000000000000 : ℚ)
  supportSlope := (2645427527689037 / 500000000000000 : ℚ)
  oldCenter := (323275351585113 / 500000000000000 : ℚ)
  newCoefficients := coefficients_485
  oldLo := (3230167597765363 / 5000000000000000 : ℚ)
  oldPieces := [piece_1508, piece_1509]
}

def cell_5839 : Cell := { cellDefaults with
  domain := ⟨(17703124999999999 / 100000000000000000 : ℚ), (17706249999999999 / 100000000000000000 : ℚ)⟩
  r := (1457541931293 / 1562500000000 : ℚ)
  w := (1257806775297 / 1250000000000 : ℚ)
  center := (17704687499999999 / 100000000000000000 : ℚ)
  supportValue := (3233580259814489 / 5000000000000000 : ℚ)
  supportSlope := (2645786045656351 / 500000000000000 : ℚ)
  oldCenter := (3233580259814489 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_485
  oldLo := (64650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1509]
}

def cell_5840 : Cell := { cellDefaults with
  domain := ⟨(17706249999999999 / 100000000000000000 : ℚ), (17709374999999999 / 100000000000000000 : ℚ)⟩
  r := (1457541931293 / 1562500000000 : ℚ)
  w := (1257806775297 / 1250000000000 : ℚ)
  center := (17707812499999999 / 100000000000000000 : ℚ)
  supportValue := (3234407131973623 / 5000000000000000 : ℚ)
  supportSlope := (2646196331799189 / 500000000000000 : ℚ)
  oldCenter := (3234407131973623 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_485
  oldLo := (64650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1509]
}

def cell_5841 : Cell := { cellDefaults with
  domain := ⟨(17709374999999999 / 100000000000000000 : ℚ), (17712499999999999 / 100000000000000000 : ℚ)⟩
  r := (1457541931293 / 1562500000000 : ℚ)
  w := (1257806775297 / 1250000000000 : ℚ)
  center := (17710937499999999 / 100000000000000000 : ℚ)
  supportValue := (6470468217314169 / 10000000000000000 : ℚ)
  supportSlope := (2646396947030283 / 500000000000000 : ℚ)
  oldCenter := (6470468217314169 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_485
  oldLo := (64650000000000007 / 100000000000000000 : ℚ)
  oldHi := (8093750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1509, piece_1510]
}

def cell_5842 : Cell := { cellDefaults with
  domain := ⟨(17712499999999999 / 100000000000000000 : ℚ), (17715624999999999 / 100000000000000000 : ℚ)⟩
  r := (1457541931293 / 1562500000000 : ℚ)
  w := (1257806775297 / 1250000000000 : ℚ)
  center := (17714062499999999 / 100000000000000000 : ℚ)
  supportValue := (6472122307148673 / 10000000000000000 : ℚ)
  supportSlope := (5293497993349661 / 1000000000000000 : ℚ)
  oldCenter := (6472122307148673 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_485
  oldLo := (32350000000000001 / 50000000000000000 : ℚ)
  oldHi := (8093750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1510]
}

def cell_5843 : Cell := { cellDefaults with
  domain := ⟨(17715624999999999 / 100000000000000000 : ℚ), (17718749999999999 / 100000000000000000 : ℚ)⟩
  r := (1457541931293 / 1562500000000 : ℚ)
  w := (1257806775297 / 1250000000000 : ℚ)
  center := (17717187499999999 / 100000000000000000 : ℚ)
  supportValue := (404611040827983 / 625000000000000 : ℚ)
  supportSlope := (5294318158792777 / 1000000000000000 : ℚ)
  oldCenter := (404611040827983 / 625000000000000 : ℚ)
  newCoefficients := coefficients_485
  oldLo := (32350000000000001 / 50000000000000000 : ℚ)
  oldHi := (8093750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1510]
}

def cell_5844 : Cell := { cellDefaults with
  domain := ⟨(17718749999999999 / 100000000000000000 : ℚ), (17721874999999999 / 100000000000000000 : ℚ)⟩
  r := (1457541931293 / 1562500000000 : ℚ)
  w := (1257806775297 / 1250000000000 : ℚ)
  center := (17720312499999999 / 100000000000000000 : ℚ)
  supportValue := (3237715606031321 / 5000000000000000 : ℚ)
  supportSlope := (1058946270126171 / 200000000000000 : ℚ)
  oldCenter := (3237715606031321 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_485
  oldLo := (32350000000000001 / 50000000000000000 : ℚ)
  oldHi := (32400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1510, piece_1511]
}

def cell_5845 : Cell := { cellDefaults with
  domain := ⟨(17721874999999999 / 100000000000000000 : ℚ), (17724999999999999 / 100000000000000000 : ℚ)⟩
  r := (1457541931293 / 1562500000000 : ℚ)
  w := (1257806775297 / 1250000000000 : ℚ)
  center := (17723437499999999 / 100000000000000000 : ℚ)
  supportValue := (6477085903564441 / 10000000000000000 : ℚ)
  supportSlope := (661927890227787 / 125000000000000 : ℚ)
  oldCenter := (6477085903564441 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_485
  oldLo := (8093750000000001 / 12500000000000000 : ℚ)
  oldHi := (32400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1511]
}

def cell_5846 : Cell := { cellDefaults with
  domain := ⟨(17724999999999999 / 100000000000000000 : ℚ), (17728124999999999 / 100000000000000000 : ℚ)⟩
  r := (1457541931293 / 1562500000000 : ℚ)
  w := (1257806775297 / 1250000000000 : ℚ)
  center := (17726562499999999 / 100000000000000000 : ℚ)
  supportValue := (6478740851201307 / 10000000000000000 : ℚ)
  supportSlope := (1324060718114417 / 250000000000000 : ℚ)
  oldCenter := (6478740851201307 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_485
  oldLo := (8093750000000001 / 12500000000000000 : ℚ)
  oldHi := (32400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1511]
}

def cell_5847 : Cell := { cellDefaults with
  domain := ⟨(17728124999999999 / 100000000000000000 : ℚ), (17731249999999999 / 100000000000000000 : ℚ)⟩
  r := (1457541931293 / 1562500000000 : ℚ)
  w := (1257806775297 / 1250000000000 : ℚ)
  center := (17729687499999999 / 100000000000000000 : ℚ)
  supportValue := (6480396015032831 / 10000000000000000 : ℚ)
  supportSlope := (2648333723367813 / 500000000000000 : ℚ)
  oldCenter := (6480396015032831 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_485
  oldLo := (8093750000000001 / 12500000000000000 : ℚ)
  oldHi := (8106250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1511, piece_1512]
}

def cell_5848 : Cell := { cellDefaults with
  domain := ⟨(17731249999999999 / 100000000000000000 : ℚ), (17734374999999999 / 100000000000000000 : ℚ)⟩
  r := (1457541931293 / 1562500000000 : ℚ)
  w := (1257806775297 / 1250000000000 : ℚ)
  center := (17732812499999999 / 100000000000000000 : ℚ)
  supportValue := (6482051307963627 / 10000000000000000 : ℚ)
  supportSlope := (10594694899900503 / 2000000000000000 : ℚ)
  oldCenter := (6482051307963627 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_485
  oldLo := (32400000000000001 / 50000000000000000 : ℚ)
  oldHi := (8106250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1512]
}

def cell_5849 : Cell := { cellDefaults with
  domain := ⟨(17734374999999999 / 100000000000000000 : ℚ), (17737499999999999 / 100000000000000000 : ℚ)⟩
  r := (1457541931293 / 1562500000000 : ℚ)
  w := (1257806775297 / 1250000000000 : ℚ)
  center := (17735937499999999 / 100000000000000000 : ℚ)
  supportValue := (1620926714219093 / 2500000000000000 : ℚ)
  supportSlope := (5298166710105079 / 1000000000000000 : ℚ)
  oldCenter := (1620926714219093 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_485
  oldLo := (32400000000000001 / 50000000000000000 : ℚ)
  oldHi := (8106250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1512]
}

theorem check_5800 : SourceCertificateFamily.RightNormalized.check cell_5800 = true := by
  decide +kernel

theorem check_5801 : SourceCertificateFamily.RightNormalized.check cell_5801 = true := by
  decide +kernel

theorem check_5802 : SourceCertificateFamily.RightNormalized.check cell_5802 = true := by
  decide +kernel

theorem check_5803 : SourceCertificateFamily.RightNormalized.check cell_5803 = true := by
  decide +kernel

theorem check_5804 : SourceCertificateFamily.RightNormalized.check cell_5804 = true := by
  decide +kernel

theorem check_5805 : SourceCertificateFamily.RightNormalized.check cell_5805 = true := by
  decide +kernel

theorem check_5806 : SourceCertificateFamily.RightNormalized.check cell_5806 = true := by
  decide +kernel

theorem check_5807 : SourceCertificateFamily.RightNormalized.check cell_5807 = true := by
  decide +kernel

theorem check_5808 : SourceCertificateFamily.RightNormalized.check cell_5808 = true := by
  decide +kernel

theorem check_5809 : SourceCertificateFamily.RightNormalized.check cell_5809 = true := by
  decide +kernel

theorem check_5810 : SourceCertificateFamily.RightNormalized.check cell_5810 = true := by
  decide +kernel

theorem check_5811 : SourceCertificateFamily.RightNormalized.check cell_5811 = true := by
  decide +kernel

theorem check_5812 : SourceCertificateFamily.RightNormalized.check cell_5812 = true := by
  decide +kernel

theorem check_5813 : SourceCertificateFamily.RightNormalized.check cell_5813 = true := by
  decide +kernel

theorem check_5814 : SourceCertificateFamily.RightNormalized.check cell_5814 = true := by
  decide +kernel

theorem check_5815 : SourceCertificateFamily.RightNormalized.check cell_5815 = true := by
  decide +kernel

theorem check_5816 : SourceCertificateFamily.RightNormalized.check cell_5816 = true := by
  decide +kernel

theorem check_5817 : SourceCertificateFamily.RightNormalized.check cell_5817 = true := by
  decide +kernel

theorem check_5818 : SourceCertificateFamily.RightNormalized.check cell_5818 = true := by
  decide +kernel

theorem check_5819 : SourceCertificateFamily.RightNormalized.check cell_5819 = true := by
  decide +kernel

theorem check_5820 : SourceCertificateFamily.RightNormalized.check cell_5820 = true := by
  decide +kernel

theorem check_5821 : SourceCertificateFamily.RightNormalized.check cell_5821 = true := by
  decide +kernel

theorem check_5822 : SourceCertificateFamily.RightNormalized.check cell_5822 = true := by
  decide +kernel

theorem check_5823 : SourceCertificateFamily.RightNormalized.check cell_5823 = true := by
  decide +kernel

theorem check_5824 : SourceCertificateFamily.RightNormalized.check cell_5824 = true := by
  decide +kernel

theorem check_5825 : SourceCertificateFamily.RightNormalized.check cell_5825 = true := by
  decide +kernel

theorem check_5826 : SourceCertificateFamily.RightNormalized.check cell_5826 = true := by
  decide +kernel

theorem check_5827 : SourceCertificateFamily.RightNormalized.check cell_5827 = true := by
  decide +kernel

theorem check_5828 : SourceCertificateFamily.RightNormalized.check cell_5828 = true := by
  decide +kernel

theorem check_5829 : SourceCertificateFamily.RightNormalized.check cell_5829 = true := by
  decide +kernel

theorem check_5830 : SourceCertificateFamily.RightNormalized.check cell_5830 = true := by
  decide +kernel

theorem check_5831 : SourceCertificateFamily.RightNormalized.check cell_5831 = true := by
  decide +kernel

theorem check_5832 : SourceCertificateFamily.RightNormalized.check cell_5832 = true := by
  decide +kernel

theorem check_5833 : SourceCertificateFamily.RightNormalized.check cell_5833 = true := by
  decide +kernel

theorem check_5834 : SourceCertificateFamily.RightNormalized.check cell_5834 = true := by
  decide +kernel

theorem check_5835 : SourceCertificateFamily.RightNormalized.check cell_5835 = true := by
  decide +kernel

theorem check_5836 : SourceCertificateFamily.RightNormalized.check cell_5836 = true := by
  decide +kernel

theorem check_5837 : SourceCertificateFamily.RightNormalized.check cell_5837 = true := by
  decide +kernel

theorem check_5838 : SourceCertificateFamily.RightNormalized.check cell_5838 = true := by
  decide +kernel

theorem check_5839 : SourceCertificateFamily.RightNormalized.check cell_5839 = true := by
  decide +kernel

theorem check_5840 : SourceCertificateFamily.RightNormalized.check cell_5840 = true := by
  decide +kernel

theorem check_5841 : SourceCertificateFamily.RightNormalized.check cell_5841 = true := by
  decide +kernel

theorem check_5842 : SourceCertificateFamily.RightNormalized.check cell_5842 = true := by
  decide +kernel

theorem check_5843 : SourceCertificateFamily.RightNormalized.check cell_5843 = true := by
  decide +kernel

theorem check_5844 : SourceCertificateFamily.RightNormalized.check cell_5844 = true := by
  decide +kernel

theorem check_5845 : SourceCertificateFamily.RightNormalized.check cell_5845 = true := by
  decide +kernel

theorem check_5846 : SourceCertificateFamily.RightNormalized.check cell_5846 = true := by
  decide +kernel

theorem check_5847 : SourceCertificateFamily.RightNormalized.check cell_5847 = true := by
  decide +kernel

theorem check_5848 : SourceCertificateFamily.RightNormalized.check cell_5848 = true := by
  decide +kernel

theorem check_5849 : SourceCertificateFamily.RightNormalized.check cell_5849 = true := by
  decide +kernel

def cells : List Cell := [cell_5800, cell_5801, cell_5802, cell_5803, cell_5804, cell_5805, cell_5806, cell_5807, cell_5808, cell_5809, cell_5810, cell_5811, cell_5812, cell_5813, cell_5814, cell_5815, cell_5816, cell_5817, cell_5818, cell_5819, cell_5820, cell_5821, cell_5822, cell_5823, cell_5824, cell_5825, cell_5826, cell_5827, cell_5828, cell_5829, cell_5830, cell_5831, cell_5832, cell_5833, cell_5834, cell_5835, cell_5836, cell_5837, cell_5838, cell_5839, cell_5840, cell_5841, cell_5842, cell_5843, cell_5844, cell_5845, cell_5846, cell_5847, cell_5848, cell_5849]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_5800, SourceCertificateFamily.of_right_checked check_5801, SourceCertificateFamily.of_right_checked check_5802, SourceCertificateFamily.of_right_checked check_5803, SourceCertificateFamily.of_right_checked check_5804, SourceCertificateFamily.of_right_checked check_5805, SourceCertificateFamily.of_right_checked check_5806, SourceCertificateFamily.of_right_checked check_5807, SourceCertificateFamily.of_right_checked check_5808, SourceCertificateFamily.of_right_checked check_5809, SourceCertificateFamily.of_right_checked check_5810, SourceCertificateFamily.of_right_checked check_5811, SourceCertificateFamily.of_right_checked check_5812, SourceCertificateFamily.of_right_checked check_5813, SourceCertificateFamily.of_right_checked check_5814, SourceCertificateFamily.of_right_checked check_5815, SourceCertificateFamily.of_right_checked check_5816, SourceCertificateFamily.of_right_checked check_5817, SourceCertificateFamily.of_right_checked check_5818, SourceCertificateFamily.of_right_checked check_5819, SourceCertificateFamily.of_right_checked check_5820, SourceCertificateFamily.of_right_checked check_5821, SourceCertificateFamily.of_right_checked check_5822, SourceCertificateFamily.of_right_checked check_5823, SourceCertificateFamily.of_right_checked check_5824, SourceCertificateFamily.of_right_checked check_5825, SourceCertificateFamily.of_right_checked check_5826, SourceCertificateFamily.of_right_checked check_5827, SourceCertificateFamily.of_right_checked check_5828, SourceCertificateFamily.of_right_checked check_5829, SourceCertificateFamily.of_right_checked check_5830, SourceCertificateFamily.of_right_checked check_5831, SourceCertificateFamily.of_right_checked check_5832, SourceCertificateFamily.of_right_checked check_5833, SourceCertificateFamily.of_right_checked check_5834, SourceCertificateFamily.of_right_checked check_5835, SourceCertificateFamily.of_right_checked check_5836, SourceCertificateFamily.of_right_checked check_5837, SourceCertificateFamily.of_right_checked check_5838, SourceCertificateFamily.of_right_checked check_5839, SourceCertificateFamily.of_right_checked check_5840, SourceCertificateFamily.of_right_checked check_5841, SourceCertificateFamily.of_right_checked check_5842, SourceCertificateFamily.of_right_checked check_5843, SourceCertificateFamily.of_right_checked check_5844, SourceCertificateFamily.of_right_checked check_5845, SourceCertificateFamily.of_right_checked check_5846, SourceCertificateFamily.of_right_checked check_5847, SourceCertificateFamily.of_right_checked check_5848, SourceCertificateFamily.of_right_checked check_5849, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0116

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0116
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0116
open AnalyticBounds.ExpressionCertificate

theorem linked_5800 : Linked cell_5800 pieces := by
  refine ⟨piece_481,piece_481_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5800,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1497_mem
    · exact piece_1498_mem

theorem linked_5801 : Linked cell_5801 pieces := by
  refine ⟨piece_481,piece_481_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5801,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1498_mem

theorem linked_5802 : Linked cell_5802 pieces := by
  refine ⟨piece_481,piece_481_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5802,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1498_mem

theorem linked_5803 : Linked cell_5803 pieces := by
  refine ⟨piece_481,piece_481_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5803,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1498_mem
    · exact piece_1499_mem

theorem linked_5804 : Linked cell_5804 pieces := by
  refine ⟨piece_482,piece_482_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5804,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1499_mem

theorem linked_5805 : Linked cell_5805 pieces := by
  refine ⟨piece_482,piece_482_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5805,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1499_mem
    · exact piece_1500_mem

theorem linked_5806 : Linked cell_5806 pieces := by
  refine ⟨piece_483,piece_483_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5806,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1499_mem

theorem linked_5807 : Linked cell_5807 pieces := by
  refine ⟨piece_483,piece_483_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5807,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1499_mem

theorem linked_5808 : Linked cell_5808 pieces := by
  refine ⟨piece_483,piece_483_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5808,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1499_mem
    · exact piece_1500_mem

theorem linked_5809 : Linked cell_5809 pieces := by
  refine ⟨piece_483,piece_483_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5809,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1500_mem

theorem linked_5810 : Linked cell_5810 pieces := by
  refine ⟨piece_483,piece_483_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5810,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1500_mem

theorem linked_5811 : Linked cell_5811 pieces := by
  refine ⟨piece_483,piece_483_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5811,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1500_mem
    · exact piece_1501_mem

theorem linked_5812 : Linked cell_5812 pieces := by
  refine ⟨piece_483,piece_483_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5812,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1501_mem

theorem linked_5813 : Linked cell_5813 pieces := by
  refine ⟨piece_483,piece_483_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5813,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1501_mem

theorem linked_5814 : Linked cell_5814 pieces := by
  refine ⟨piece_483,piece_483_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5814,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1501_mem
    · exact piece_1502_mem

theorem linked_5815 : Linked cell_5815 pieces := by
  refine ⟨piece_483,piece_483_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5815,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1502_mem

theorem linked_5816 : Linked cell_5816 pieces := by
  refine ⟨piece_483,piece_483_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5816,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1502_mem

theorem linked_5817 : Linked cell_5817 pieces := by
  refine ⟨piece_483,piece_483_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5817,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1502_mem
    · exact piece_1503_mem

theorem linked_5818 : Linked cell_5818 pieces := by
  refine ⟨piece_483,piece_483_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5818,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1503_mem

theorem linked_5819 : Linked cell_5819 pieces := by
  refine ⟨piece_483,piece_483_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5819,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1503_mem

theorem linked_5820 : Linked cell_5820 pieces := by
  refine ⟨piece_483,piece_483_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5820,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1503_mem
    · exact piece_1504_mem

theorem linked_5821 : Linked cell_5821 pieces := by
  refine ⟨piece_483,piece_483_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5821,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1504_mem

theorem linked_5822 : Linked cell_5822 pieces := by
  refine ⟨piece_484,piece_484_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5822,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1503_mem

theorem linked_5823 : Linked cell_5823 pieces := by
  refine ⟨piece_484,piece_484_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5823,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1503_mem
    · exact piece_1504_mem

theorem linked_5824 : Linked cell_5824 pieces := by
  refine ⟨piece_484,piece_484_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5824,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1504_mem

theorem linked_5825 : Linked cell_5825 pieces := by
  refine ⟨piece_484,piece_484_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5825,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1504_mem

theorem linked_5826 : Linked cell_5826 pieces := by
  refine ⟨piece_484,piece_484_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5826,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1504_mem
    · exact piece_1505_mem

theorem linked_5827 : Linked cell_5827 pieces := by
  refine ⟨piece_484,piece_484_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5827,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1505_mem

theorem linked_5828 : Linked cell_5828 pieces := by
  refine ⟨piece_484,piece_484_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5828,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1505_mem

theorem linked_5829 : Linked cell_5829 pieces := by
  refine ⟨piece_484,piece_484_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5829,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1505_mem
    · exact piece_1506_mem

theorem linked_5830 : Linked cell_5830 pieces := by
  refine ⟨piece_484,piece_484_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5830,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1506_mem

theorem linked_5831 : Linked cell_5831 pieces := by
  refine ⟨piece_484,piece_484_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5831,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1506_mem

theorem linked_5832 : Linked cell_5832 pieces := by
  refine ⟨piece_484,piece_484_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5832,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1506_mem
    · exact piece_1507_mem
    · exact piece_1508_mem

theorem linked_5833 : Linked cell_5833 pieces := by
  refine ⟨piece_484,piece_484_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5833,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1508_mem

theorem linked_5834 : Linked cell_5834 pieces := by
  refine ⟨piece_484,piece_484_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5834,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1508_mem

theorem linked_5835 : Linked cell_5835 pieces := by
  refine ⟨piece_484,piece_484_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5835,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1508_mem
    · exact piece_1509_mem

theorem linked_5836 : Linked cell_5836 pieces := by
  refine ⟨piece_484,piece_484_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5836,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1509_mem

theorem linked_5837 : Linked cell_5837 pieces := by
  refine ⟨piece_484,piece_484_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5837,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1509_mem

theorem linked_5838 : Linked cell_5838 pieces := by
  refine ⟨piece_485,piece_485_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5838,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1508_mem
    · exact piece_1509_mem

theorem linked_5839 : Linked cell_5839 pieces := by
  refine ⟨piece_485,piece_485_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5839,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1509_mem

theorem linked_5840 : Linked cell_5840 pieces := by
  refine ⟨piece_485,piece_485_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5840,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1509_mem

theorem linked_5841 : Linked cell_5841 pieces := by
  refine ⟨piece_485,piece_485_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5841,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1509_mem
    · exact piece_1510_mem

theorem linked_5842 : Linked cell_5842 pieces := by
  refine ⟨piece_485,piece_485_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5842,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1510_mem

theorem linked_5843 : Linked cell_5843 pieces := by
  refine ⟨piece_485,piece_485_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5843,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1510_mem

theorem linked_5844 : Linked cell_5844 pieces := by
  refine ⟨piece_485,piece_485_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5844,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1510_mem
    · exact piece_1511_mem

theorem linked_5845 : Linked cell_5845 pieces := by
  refine ⟨piece_485,piece_485_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5845,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1511_mem

theorem linked_5846 : Linked cell_5846 pieces := by
  refine ⟨piece_485,piece_485_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5846,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1511_mem

theorem linked_5847 : Linked cell_5847 pieces := by
  refine ⟨piece_485,piece_485_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5847,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1511_mem
    · exact piece_1512_mem

theorem linked_5848 : Linked cell_5848 pieces := by
  refine ⟨piece_485,piece_485_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5848,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1512_mem

theorem linked_5849 : Linked cell_5849 pieces := by
  refine ⟨piece_485,piece_485_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5849,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1512_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0116.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0116.cells,List.forall_mem_cons]
  exact ⟨linked_5800, linked_5801, linked_5802, linked_5803, linked_5804, linked_5805, linked_5806, linked_5807, linked_5808, linked_5809, linked_5810, linked_5811, linked_5812, linked_5813, linked_5814, linked_5815, linked_5816, linked_5817, linked_5818, linked_5819, linked_5820, linked_5821, linked_5822, linked_5823, linked_5824, linked_5825, linked_5826, linked_5827, linked_5828, linked_5829, linked_5830, linked_5831, linked_5832, linked_5833, linked_5834, linked_5835, linked_5836, linked_5837, linked_5838, linked_5839, linked_5840, linked_5841, linked_5842, linked_5843, linked_5844, linked_5845, linked_5846, linked_5847, linked_5848, linked_5849, by simp⟩

theorem covered : covers (17578124999999999 / 100000000000000000 : ℚ) (17737499999999999 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0116.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0116
