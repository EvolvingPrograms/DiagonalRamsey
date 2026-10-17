import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0117
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(17737499999999999 / 100000000000000000 : ℚ), (17740624999999999 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (46594853972219 / 50000000000000 : ℚ)
  w := (5032203317751 / 5000000000000 : ℚ)
  center := (17739062499999999 / 100000000000000000 : ℚ)
  supportValue := (6485362625243573 / 10000000000000000 : ℚ)
  supportSlope := (1059720396051489 / 200000000000000 : ℚ)
  oldCenter := (6485362625243573 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_486
  oldLo := (8106250000000001 / 12500000000000000 : ℚ)
  oldHi := (32450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1513]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_5850 : Cell := { cellDefaults with
  r := (1457541931293 / 1562500000000 : ℚ)
  w := (1257806775297 / 1250000000000 : ℚ)
  newCoefficients := coefficients_485
  oldLo := (32400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1512, piece_1513]
}

def cell_5851 : Cell := { cellDefaults with
  domain := ⟨(17740624999999999 / 100000000000000000 : ℚ), (17743749999999999 / 100000000000000000 : ℚ)⟩
  r := (1457541931293 / 1562500000000 : ℚ)
  w := (1257806775297 / 1250000000000 : ℚ)
  center := (17742187499999999 / 100000000000000000 : ℚ)
  supportValue := (1297403703864201 / 2000000000000000 : ℚ)
  supportSlope := (5299270951656609 / 1000000000000000 : ℚ)
  oldCenter := (1297403703864201 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_485
  oldPieces := [piece_1513]
}

def cell_5852 : Cell := { cellDefaults with
  domain := ⟨(17743749999999999 / 100000000000000000 : ℚ), (17746874999999999 / 100000000000000000 : ℚ)⟩
  r := (1457541931293 / 1562500000000 : ℚ)
  w := (1257806775297 / 1250000000000 : ℚ)
  center := (17745312499999999 / 100000000000000000 : ℚ)
  supportValue := (811084333659437 / 1250000000000000 : ℚ)
  supportSlope := (1325022468942727 / 250000000000000 : ℚ)
  oldCenter := (811084333659437 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_485
  oldPieces := [piece_1513]
}

def cell_5853 : Cell := { cellDefaults with
  domain := ⟨(17746874999999999 / 100000000000000000 : ℚ), (17749999999999999 / 100000000000000000 : ℚ)⟩
  r := (1457541931293 / 1562500000000 : ℚ)
  w := (1257806775297 / 1250000000000 : ℚ)
  center := (17748437499999999 / 100000000000000000 : ℚ)
  supportValue := (3245165520896603 / 5000000000000000 : ℚ)
  supportSlope := (5300535250164273 / 1000000000000000 : ℚ)
  oldCenter := (3245165520896603 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_485
  oldHi := (8118750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1513, piece_1514]
}

def cell_5854 : Cell := { cellDefaults with
  domain := ⟨(17749999999999999 / 100000000000000000 : ℚ), (17753124999999999 / 100000000000000000 : ℚ)⟩
  center := (17751562499999999 / 100000000000000000 : ℚ)
  supportValue := (6487307561011167 / 10000000000000000 : ℚ)
  supportSlope := (1324132838949943 / 250000000000000 : ℚ)
  oldCenter := (6487307561011167 / 10000000000000000 : ℚ)
  oldPieces := [piece_1513]
}

def cell_5855 : Cell := { cellDefaults with
  domain := ⟨(17753124999999999 / 100000000000000000 : ℚ), (17756249999999999 / 100000000000000000 : ℚ)⟩
  center := (17754687499999999 / 100000000000000000 : ℚ)
  supportValue := (1622240713720683 / 2500000000000000 : ℚ)
  supportSlope := (5297350540654833 / 1000000000000000 : ℚ)
  oldCenter := (1622240713720683 / 2500000000000000 : ℚ)
  oldPieces := [piece_1513]
}

def cell_5856 : Cell := { cellDefaults with
  domain := ⟨(17756249999999999 / 100000000000000000 : ℚ), (17759374999999999 / 100000000000000000 : ℚ)⟩
  center := (17757812499999999 / 100000000000000000 : ℚ)
  supportValue := (649061834247013 / 1000000000000000 : ℚ)
  supportSlope := (5297703656328423 / 1000000000000000 : ℚ)
  oldCenter := (649061834247013 / 1000000000000000 : ℚ)
  oldHi := (8118750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1513, piece_1514]
}

def cell_5857 : Cell := { cellDefaults with
  domain := ⟨(17759374999999999 / 100000000000000000 : ℚ), (17762499999999999 / 100000000000000000 : ℚ)⟩
  center := (17760937499999999 / 100000000000000000 : ℚ)
  supportValue := (3246136990793977 / 5000000000000000 : ℚ)
  supportSlope := (2649227514764263 / 500000000000000 : ℚ)
  oldCenter := (3246136990793977 / 5000000000000000 : ℚ)
  oldLo := (32450000000000001 / 50000000000000000 : ℚ)
  oldHi := (8118750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1514]
}

def cell_5858 : Cell := { cellDefaults with
  domain := ⟨(17762499999999999 / 100000000000000000 : ℚ), (17765624999999999 / 100000000000000000 : ℚ)⟩
  center := (17764062499999999 / 100000000000000000 : ℚ)
  supportValue := (1623482469137703 / 2500000000000000 : ℚ)
  supportSlope := (10598547702727501 / 2000000000000000 : ℚ)
  oldCenter := (1623482469137703 / 2500000000000000 : ℚ)
  oldLo := (32450000000000001 / 50000000000000000 : ℚ)
  oldHi := (8118750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1514]
}

def cell_5859 : Cell := { cellDefaults with
  domain := ⟨(17765624999999999 / 100000000000000000 : ℚ), (17768749999999999 / 100000000000000000 : ℚ)⟩
  center := (17767187499999999 / 100000000000000000 : ℚ)
  supportValue := (649558596843891 / 1000000000000000 : ℚ)
  supportSlope := (529963742454953 / 100000000000000 : ℚ)
  oldCenter := (649558596843891 / 1000000000000000 : ℚ)
  oldLo := (32450000000000001 / 50000000000000000 : ℚ)
  oldHi := (32500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1514, piece_1515]
}

def cell_5860 : Cell := { cellDefaults with
  domain := ⟨(17768749999999999 / 100000000000000000 : ℚ), (17771874999999999 / 100000000000000000 : ℚ)⟩
  center := (17770312499999999 / 100000000000000000 : ℚ)
  supportValue := (406077638033431 / 625000000000000 : ℚ)
  supportSlope := (5300377957503599 / 1000000000000000 : ℚ)
  oldCenter := (406077638033431 / 625000000000000 : ℚ)
  oldLo := (8118750000000001 / 12500000000000000 : ℚ)
  oldHi := (32500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1515]
}

def cell_5861 : Cell := { cellDefaults with
  domain := ⟨(17771874999999999 / 100000000000000000 : ℚ), (17774999999999999 / 100000000000000000 : ℚ)⟩
  center := (17773437499999999 / 100000000000000000 : ℚ)
  supportValue := (649889870434939 / 1000000000000000 : ℚ)
  supportSlope := (2650598187019071 / 500000000000000 : ℚ)
  oldCenter := (649889870434939 / 1000000000000000 : ℚ)
  oldLo := (8118750000000001 / 12500000000000000 : ℚ)
  oldHi := (32500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1515]
}

def cell_5862 : Cell := { cellDefaults with
  domain := ⟨(17774999999999999 / 100000000000000000 : ℚ), (17778124999999999 / 100000000000000000 : ℚ)⟩
  center := (17776562499999999 / 100000000000000000 : ℚ)
  supportValue := (6500555400158743 / 10000000000000000 : ℚ)
  supportSlope := (10603140520082377 / 2000000000000000 : ℚ)
  oldCenter := (6500555400158743 / 10000000000000000 : ℚ)
  oldLo := (8118750000000001 / 12500000000000000 : ℚ)
  oldHi := (8131250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1515, piece_1516]
}

def cell_5863 : Cell := { cellDefaults with
  domain := ⟨(17778124999999999 / 100000000000000000 : ℚ), (17781249999999999 / 100000000000000000 : ℚ)⟩
  center := (17779687499999999 / 100000000000000000 : ℚ)
  supportValue := (65022122411587 / 100000000000000 : ℚ)
  supportSlope := (5302300644544289 / 1000000000000000 : ℚ)
  oldCenter := (65022122411587 / 100000000000000 : ℚ)
  oldLo := (32500000000000001 / 50000000000000000 : ℚ)
  oldHi := (8131250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1516]
}

def cell_5864 : Cell := { cellDefaults with
  domain := ⟨(17781249999999999 / 100000000000000000 : ℚ), (17784374999999999 / 100000000000000000 : ℚ)⟩
  center := (17782812499999999 / 100000000000000000 : ℚ)
  supportValue := (6503869337748441 / 10000000000000000 : ℚ)
  supportSlope := (5303118648697591 / 1000000000000000 : ℚ)
  oldCenter := (6503869337748441 / 10000000000000000 : ℚ)
  oldLo := (32500000000000001 / 50000000000000000 : ℚ)
  oldHi := (8131250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1516]
}

def cell_5865 : Cell := { cellDefaults with
  domain := ⟨(17784374999999999 / 100000000000000000 : ℚ), (17787499999999999 / 100000000000000000 : ℚ)⟩
  center := (17785937499999999 / 100000000000000000 : ℚ)
  supportValue := (1301105327419839 / 2000000000000000 : ℚ)
  supportSlope := (1325875334937443 / 250000000000000 : ℚ)
  oldCenter := (1301105327419839 / 2000000000000000 : ℚ)
  oldLo := (32500000000000001 / 50000000000000000 : ℚ)
  oldHi := (32550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1516, piece_1517]
}

def cell_5866 : Cell := { cellDefaults with
  domain := ⟨(17787499999999999 / 100000000000000000 : ℚ), (17790624999999999 / 100000000000000000 : ℚ)⟩
  center := (17789062499999999 / 100000000000000000 : ℚ)
  supportValue := (1626796019646853 / 2500000000000000 : ℚ)
  supportSlope := (2652111000617907 / 500000000000000 : ℚ)
  oldCenter := (1626796019646853 / 2500000000000000 : ℚ)
  oldLo := (8131250000000001 / 12500000000000000 : ℚ)
  oldHi := (32550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1517]
}

def cell_5867 : Cell := { cellDefaults with
  domain := ⟨(17790624999999999 / 100000000000000000 : ℚ), (17793749999999999 / 100000000000000000 : ℚ)⟩
  center := (17792187499999999 / 100000000000000000 : ℚ)
  supportValue := (6508841775536621 / 10000000000000000 : ℚ)
  supportSlope := (530503959281603 / 100000000000000 : ℚ)
  oldCenter := (6508841775536621 / 10000000000000000 : ℚ)
  oldLo := (8131250000000001 / 12500000000000000 : ℚ)
  oldHi := (32550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1517]
}

def cell_5868 : Cell := { cellDefaults with
  domain := ⟨(17793749999999999 / 100000000000000000 : ℚ), (17796874999999999 / 100000000000000000 : ℚ)⟩
  center := (17795312499999999 / 100000000000000000 : ℚ)
  supportValue := (6510499677882219 / 10000000000000000 : ℚ)
  supportSlope := (1061086188305893 / 200000000000000 : ℚ)
  oldCenter := (6510499677882219 / 10000000000000000 : ℚ)
  oldLo := (8131250000000001 / 12500000000000000 : ℚ)
  oldHi := (8143750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1517, piece_1518]
}

def cell_5869 : Cell := { cellDefaults with
  domain := ⟨(17796874999999999 / 100000000000000000 : ℚ), (17799999999999999 / 100000000000000000 : ℚ)⟩
  center := (17798437499999999 / 100000000000000000 : ℚ)
  supportValue := (6512157719612267 / 10000000000000000 : ℚ)
  supportSlope := (2653071284580477 / 500000000000000 : ℚ)
  oldCenter := (6512157719612267 / 10000000000000000 : ℚ)
  oldLo := (32550000000000001 / 50000000000000000 : ℚ)
  oldHi := (8143750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1518]
}

def cell_5870 : Cell := { cellDefaults with
  domain := ⟨(17799999999999999 / 100000000000000000 : ℚ), (17803124999999999 / 100000000000000000 : ℚ)⟩
  r := (46548486022023 / 50000000000000 : ℚ)
  w := (5033184030537 / 5000000000000 : ℚ)
  center := (17801562499999999 / 100000000000000000 : ℚ)
  supportValue := (3254563906051693 / 5000000000000000 : ℚ)
  supportSlope := (10604591055830781 / 2000000000000000 : ℚ)
  oldCenter := (3254563906051693 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_487
  oldLo := (8131250000000001 / 12500000000000000 : ℚ)
  oldHi := (32550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1517]
}

def cell_5871 : Cell := { cellDefaults with
  domain := ⟨(17803124999999999 / 100000000000000000 : ℚ), (17806249999999999 / 100000000000000000 : ℚ)⟩
  r := (46548486022023 / 50000000000000 : ℚ)
  w := (5033184030537 / 5000000000000 : ℚ)
  center := (17804687499999999 / 100000000000000000 : ℚ)
  supportValue := (6510784828383073 / 10000000000000000 : ℚ)
  supportSlope := (662824464261913 / 125000000000000 : ℚ)
  oldCenter := (6510784828383073 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_487
  oldLo := (8131250000000001 / 12500000000000000 : ℚ)
  oldHi := (8143750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1517, piece_1518]
}

def cell_5872 : Cell := { cellDefaults with
  domain := ⟨(17806249999999999 / 100000000000000000 : ℚ), (17809374999999999 / 100000000000000000 : ℚ)⟩
  r := (46548486022023 / 50000000000000 : ℚ)
  w := (5033184030537 / 5000000000000 : ℚ)
  center := (17807812499999999 / 100000000000000000 : ℚ)
  supportValue := (162811050318747 / 250000000000000 : ℚ)
  supportSlope := (5303399142107423 / 1000000000000000 : ℚ)
  oldCenter := (162811050318747 / 250000000000000 : ℚ)
  newCoefficients := coefficients_487
  oldLo := (32550000000000001 / 50000000000000000 : ℚ)
  oldHi := (8143750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1518]
}

def cell_5873 : Cell := { cellDefaults with
  domain := ⟨(17809374999999999 / 100000000000000000 : ℚ), (17812499999999999 / 100000000000000000 : ℚ)⟩
  r := (46548486022023 / 50000000000000 : ℚ)
  w := (5033184030537 / 5000000000000 : ℚ)
  center := (17810937499999999 / 100000000000000000 : ℚ)
  supportValue := (1302819890506723 / 2000000000000000 : ℚ)
  supportSlope := (10608433185694821 / 2000000000000000 : ℚ)
  oldCenter := (1302819890506723 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_487
  oldLo := (32550000000000001 / 50000000000000000 : ℚ)
  oldHi := (8143750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1518]
}

def cell_5874 : Cell := { cellDefaults with
  domain := ⟨(17812499999999999 / 100000000000000000 : ℚ), (17815624999999999 / 100000000000000000 : ℚ)⟩
  r := (46548486022023 / 50000000000000 : ℚ)
  w := (5033184030537 / 5000000000000 : ℚ)
  center := (17814062499999999 / 100000000000000000 : ℚ)
  supportValue := (6515757071977067 / 10000000000000000 : ℚ)
  supportSlope := (5304526381987529 / 1000000000000000 : ℚ)
  oldCenter := (6515757071977067 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_487
  oldLo := (32550000000000001 / 50000000000000000 : ℚ)
  oldHi := (32600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1518, piece_1519, piece_1520]
}

def cell_5875 : Cell := { cellDefaults with
  domain := ⟨(17815624999999999 / 100000000000000000 : ℚ), (17818749999999999 / 100000000000000000 : ℚ)⟩
  r := (46548486022023 / 50000000000000 : ℚ)
  w := (5033184030537 / 5000000000000 : ℚ)
  center := (17817187499999999 / 100000000000000000 : ℚ)
  supportValue := (162935371423921 / 250000000000000 : ℚ)
  supportSlope := (265266046347179 / 50000000000000 : ℚ)
  oldCenter := (162935371423921 / 250000000000000 : ℚ)
  newCoefficients := coefficients_487
  oldLo := (6515642458100559 / 10000000000000000 : ℚ)
  oldHi := (32600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1520]
}

def cell_5876 : Cell := { cellDefaults with
  domain := ⟨(17818749999999999 / 100000000000000000 : ℚ), (17821874999999999 / 100000000000000000 : ℚ)⟩
  r := (46548486022023 / 50000000000000 : ℚ)
  w := (5033184030537 / 5000000000000 : ℚ)
  center := (17820312499999999 / 100000000000000000 : ℚ)
  supportValue := (6519072897242959 / 10000000000000000 : ℚ)
  supportSlope := (1326534505848187 / 250000000000000 : ℚ)
  oldCenter := (6519072897242959 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_487
  oldLo := (6515642458100559 / 10000000000000000 : ℚ)
  oldHi := (32600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1520]
}

def cell_5877 : Cell := { cellDefaults with
  domain := ⟨(17821874999999999 / 100000000000000000 : ℚ), (17824999999999999 / 100000000000000000 : ℚ)⟩
  r := (46548486022023 / 50000000000000 : ℚ)
  w := (5033184030537 / 5000000000000 : ℚ)
  center := (17823437499999999 / 100000000000000000 : ℚ)
  supportValue := (6520731119741767 / 10000000000000000 : ℚ)
  supportSlope := (5306455686426403 / 1000000000000000 : ℚ)
  oldCenter := (6520731119741767 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_487
  oldLo := (6515642458100559 / 10000000000000000 : ℚ)
  oldHi := (8156250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1520, piece_1521]
}

def cell_5878 : Cell := { cellDefaults with
  domain := ⟨(17824999999999999 / 100000000000000000 : ℚ), (17828124999999999 / 100000000000000000 : ℚ)⟩
  r := (46548486022023 / 50000000000000 : ℚ)
  w := (5033184030537 / 5000000000000 : ℚ)
  center := (17826562499999999 / 100000000000000000 : ℚ)
  supportValue := (652238950481289 / 1000000000000000 : ℚ)
  supportSlope := (5307241012207697 / 1000000000000000 : ℚ)
  oldCenter := (652238950481289 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_487
  oldLo := (32600000000000001 / 50000000000000000 : ℚ)
  oldHi := (8156250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1521]
}

def cell_5879 : Cell := { cellDefaults with
  domain := ⟨(17828124999999999 / 100000000000000000 : ℚ), (17831249999999999 / 100000000000000000 : ℚ)⟩
  r := (46548486022023 / 50000000000000 : ℚ)
  w := (5033184030537 / 5000000000000 : ℚ)
  center := (17829687499999999 / 100000000000000000 : ℚ)
  supportValue := (1304809629012151 / 2000000000000000 : ℚ)
  supportSlope := (5308057693515167 / 1000000000000000 : ℚ)
  oldCenter := (1304809629012151 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_487
  oldLo := (32600000000000001 / 50000000000000000 : ℚ)
  oldHi := (8156250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1521]
}

def cell_5880 : Cell := { cellDefaults with
  domain := ⟨(17831249999999999 / 100000000000000000 : ℚ), (17834374999999999 / 100000000000000000 : ℚ)⟩
  r := (46548486022023 / 50000000000000 : ℚ)
  w := (5033184030537 / 5000000000000 : ℚ)
  center := (17832812499999999 / 100000000000000000 : ℚ)
  supportValue := (3262853484945309 / 5000000000000000 : ℚ)
  supportSlope := (265419158259661 / 50000000000000 : ℚ)
  oldCenter := (3262853484945309 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_487
  oldLo := (32600000000000001 / 50000000000000000 : ℚ)
  oldHi := (32650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1521, piece_1522]
}

def cell_5881 : Cell := { cellDefaults with
  domain := ⟨(17834374999999999 / 100000000000000000 : ℚ), (17837499999999999 / 100000000000000000 : ℚ)⟩
  r := (46548486022023 / 50000000000000 : ℚ)
  w := (5033184030537 / 5000000000000 : ℚ)
  center := (17835937499999999 / 100000000000000000 : ℚ)
  supportValue := (815920744350787 / 1250000000000000 : ℚ)
  supportSlope := (5309160311171013 / 1000000000000000 : ℚ)
  oldCenter := (815920744350787 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_487
  oldLo := (8156250000000001 / 12500000000000000 : ℚ)
  oldHi := (32650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1522]
}

def cell_5882 : Cell := { cellDefaults with
  domain := ⟨(17837499999999999 / 100000000000000000 : ℚ), (17840624999999999 / 100000000000000000 : ℚ)⟩
  r := (46548486022023 / 50000000000000 : ℚ)
  w := (5033184030537 / 5000000000000 : ℚ)
  center := (17839062499999999 / 100000000000000000 : ℚ)
  supportValue := (3264512597385643 / 5000000000000000 : ℚ)
  supportSlope := (2654988292139393 / 500000000000000 : ℚ)
  oldCenter := (3264512597385643 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_487
  oldLo := (8156250000000001 / 12500000000000000 : ℚ)
  oldHi := (32650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1522]
}

def cell_5883 : Cell := { cellDefaults with
  domain := ⟨(17840624999999999 / 100000000000000000 : ℚ), (17843749999999999 / 100000000000000000 : ℚ)⟩
  r := (46548486022023 / 50000000000000 : ℚ)
  w := (5033184030537 / 5000000000000 : ℚ)
  center := (17842187499999999 / 100000000000000000 : ℚ)
  supportValue := (16326711553703 / 25000000000000 : ℚ)
  supportSlope := (5310309160957871 / 1000000000000000 : ℚ)
  oldCenter := (16326711553703 / 25000000000000 : ℚ)
  newCoefficients := coefficients_487
  oldLo := (8156250000000001 / 12500000000000000 : ℚ)
  oldHi := (8168750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1522, piece_1523]
}

def cell_5884 : Cell := { cellDefaults with
  domain := ⟨(17843749999999999 / 100000000000000000 : ℚ), (17846874999999999 / 100000000000000000 : ℚ)⟩
  r := (46548486022023 / 50000000000000 : ℚ)
  w := (5033184030537 / 5000000000000 : ℚ)
  center := (17845312499999999 / 100000000000000000 : ℚ)
  supportValue := (1633086051497483 / 2500000000000000 : ℚ)
  supportSlope := (1327769727540229 / 250000000000000 : ℚ)
  oldCenter := (1633086051497483 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_487
  oldLo := (32650000000000001 / 50000000000000000 : ℚ)
  oldHi := (8168750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1523]
}

def cell_5885 : Cell := { cellDefaults with
  domain := ⟨(17846874999999999 / 100000000000000000 : ℚ), (17849999999999999 / 100000000000000000 : ℚ)⟩
  r := (46548486022023 / 50000000000000 : ℚ)
  w := (5033184030537 / 5000000000000 : ℚ)
  center := (17848437499999999 / 100000000000000000 : ℚ)
  supportValue := (408375252842879 / 625000000000000 : ℚ)
  supportSlope := (1327973746219513 / 250000000000000 : ℚ)
  oldCenter := (408375252842879 / 625000000000000 : ℚ)
  newCoefficients := coefficients_487
  oldLo := (32650000000000001 / 50000000000000000 : ℚ)
  oldHi := (8168750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1523]
}

def cell_5886 : Cell := { cellDefaults with
  domain := ⟨(17849999999999999 / 100000000000000000 : ℚ), (17853124999999999 / 100000000000000000 : ℚ)⟩
  r := (46502237543169 / 50000000000000 : ℚ)
  w := (10068338077971 / 10000000000000 : ℚ)
  center := (17851562499999999 / 100000000000000000 : ℚ)
  supportValue := (6530967498233463 / 10000000000000000 : ℚ)
  supportSlope := (5307514420554327 / 1000000000000000 : ℚ)
  oldCenter := (6530967498233463 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_488
  oldLo := (32650000000000001 / 50000000000000000 : ℚ)
  oldHi := (8168750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1523]
}

def cell_5887 : Cell := { cellDefaults with
  domain := ⟨(17853124999999999 / 100000000000000000 : ℚ), (17856249999999999 / 100000000000000000 : ℚ)⟩
  r := (46502237543169 / 50000000000000 : ℚ)
  w := (10068338077971 / 10000000000000 : ℚ)
  center := (17854687499999999 / 100000000000000000 : ℚ)
  supportValue := (3266313111917031 / 5000000000000000 : ℚ)
  supportSlope := (663541317823757 / 125000000000000 : ℚ)
  oldCenter := (3266313111917031 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_488
  oldLo := (32650000000000001 / 50000000000000000 : ℚ)
  oldHi := (8168750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1523]
}

def cell_5888 : Cell := { cellDefaults with
  domain := ⟨(17856249999999999 / 100000000000000000 : ℚ), (17859374999999999 / 100000000000000000 : ℚ)⟩
  r := (46502237543169 / 50000000000000 : ℚ)
  w := (10068338077971 / 10000000000000 : ℚ)
  center := (17857812499999999 / 100000000000000000 : ℚ)
  supportValue := (6534285204508873 / 10000000000000000 : ℚ)
  supportSlope := (1327277520405623 / 250000000000000 : ℚ)
  oldCenter := (6534285204508873 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_488
  oldLo := (32650000000000001 / 50000000000000000 : ℚ)
  oldHi := (65400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1523, piece_1524]
}

def cell_5889 : Cell := { cellDefaults with
  domain := ⟨(17859374999999999 / 100000000000000000 : ℚ), (17862499999999999 / 100000000000000000 : ℚ)⟩
  r := (46502237543169 / 50000000000000 : ℚ)
  w := (10068338077971 / 10000000000000 : ℚ)
  center := (17860937499999999 / 100000000000000000 : ℚ)
  supportValue := (1307188869219851 / 2000000000000000 : ℚ)
  supportSlope := (1327358433923287 / 250000000000000 : ℚ)
  oldCenter := (1307188869219851 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_488
  oldLo := (8168750000000001 / 12500000000000000 : ℚ)
  oldHi := (65400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1524]
}

def cell_5890 : Cell := { cellDefaults with
  domain := ⟨(17862499999999999 / 100000000000000000 : ℚ), (17865624999999999 / 100000000000000000 : ℚ)⟩
  r := (46502237543169 / 50000000000000 : ℚ)
  w := (10068338077971 / 10000000000000 : ℚ)
  center := (17864062499999999 / 100000000000000000 : ℚ)
  supportValue := (6537603671409757 / 10000000000000000 : ℚ)
  supportSlope := (5310249371017761 / 1000000000000000 : ℚ)
  oldCenter := (6537603671409757 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_488
  oldLo := (8168750000000001 / 12500000000000000 : ℚ)
  oldHi := (65400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1524]
}

def cell_5891 : Cell := { cellDefaults with
  domain := ⟨(17865624999999999 / 100000000000000000 : ℚ), (17868749999999999 / 100000000000000000 : ℚ)⟩
  r := (46502237543169 / 50000000000000 : ℚ)
  w := (10068338077971 / 10000000000000 : ℚ)
  center := (17867187499999999 / 100000000000000000 : ℚ)
  supportValue := (3269631625821113 / 5000000000000000 : ℚ)
  supportSlope := (5311035369089723 / 1000000000000000 : ℚ)
  oldCenter := (3269631625821113 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_488
  oldLo := (8168750000000001 / 12500000000000000 : ℚ)
  oldHi := (8181250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1524, piece_1525]
}

def cell_5892 : Cell := { cellDefaults with
  domain := ⟨(17868749999999999 / 100000000000000000 : ℚ), (17871874999999999 / 100000000000000000 : ℚ)⟩
  r := (46502237543169 / 50000000000000 : ℚ)
  w := (10068338077971 / 10000000000000 : ℚ)
  center := (17870312499999999 / 100000000000000000 : ℚ)
  supportValue := (1308184598979581 / 2000000000000000 : ℚ)
  supportSlope := (531135217189771 / 100000000000000 : ℚ)
  oldCenter := (1308184598979581 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_488
  oldLo := (65400000000000003 / 100000000000000000 : ℚ)
  oldHi := (8181250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1525]
}

def cell_5893 : Cell := { cellDefaults with
  domain := ⟨(17871874999999999 / 100000000000000000 : ℚ), (17874999999999999 / 100000000000000000 : ℚ)⟩
  r := (46502237543169 / 50000000000000 : ℚ)
  w := (10068338077971 / 10000000000000 : ℚ)
  center := (17873437499999999 / 100000000000000000 : ℚ)
  supportValue := (6542582919650931 / 10000000000000000 : ℚ)
  supportSlope := (2656083683548971 / 500000000000000 : ℚ)
  oldCenter := (6542582919650931 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_488
  oldLo := (65400000000000003 / 100000000000000000 : ℚ)
  oldHi := (8181250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1525]
}

def cell_5894 : Cell := { cellDefaults with
  domain := ⟨(17874999999999999 / 100000000000000000 : ℚ), (17878124999999999 / 100000000000000000 : ℚ)⟩
  r := (46502237543169 / 50000000000000 : ℚ)
  w := (10068338077971 / 10000000000000 : ℚ)
  center := (17876562499999999 / 100000000000000000 : ℚ)
  supportValue := (6544243099188239 / 10000000000000000 : ℚ)
  supportSlope := (5312959273080509 / 1000000000000000 : ℚ)
  oldCenter := (6544243099188239 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_488
  oldLo := (65400000000000003 / 100000000000000000 : ℚ)
  oldHi := (65500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1525, piece_1526]
}

def cell_5895 : Cell := { cellDefaults with
  domain := ⟨(17878124999999999 / 100000000000000000 : ℚ), (17881249999999999 / 100000000000000000 : ℚ)⟩
  r := (46502237543169 / 50000000000000 : ℚ)
  w := (10068338077971 / 10000000000000 : ℚ)
  center := (17879687499999999 / 100000000000000000 : ℚ)
  supportValue := (6545903443664707 / 10000000000000000 : ℚ)
  supportSlope := (10626539507562427 / 2000000000000000 : ℚ)
  oldCenter := (6545903443664707 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_488
  oldLo := (8181250000000001 / 12500000000000000 : ℚ)
  oldHi := (65500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1526]
}

def cell_5896 : Cell := { cellDefaults with
  domain := ⟨(17881249999999999 / 100000000000000000 : ℚ), (17884374999999999 / 100000000000000000 : ℚ)⟩
  r := (46502237543169 / 50000000000000 : ℚ)
  w := (10068338077971 / 10000000000000 : ℚ)
  center := (17882812499999999 / 100000000000000000 : ℚ)
  supportValue := (654756396760637 / 1000000000000000 : ℚ)
  supportSlope := (425126767416657 / 80000000000000 : ℚ)
  oldCenter := (654756396760637 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_488
  oldLo := (8181250000000001 / 12500000000000000 : ℚ)
  oldHi := (65500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1526]
}

def cell_5897 : Cell := { cellDefaults with
  domain := ⟨(17884374999999999 / 100000000000000000 : ℚ), (17887499999999999 / 100000000000000000 : ℚ)⟩
  r := (46502237543169 / 50000000000000 : ℚ)
  w := (10068338077971 / 10000000000000 : ℚ)
  center := (17885937499999999 / 100000000000000000 : ℚ)
  supportValue := (102331636659701 / 156250000000000 : ℚ)
  supportSlope := (5314881901494317 / 1000000000000000 : ℚ)
  oldCenter := (102331636659701 / 156250000000000 : ℚ)
  newCoefficients := coefficients_488
  oldLo := (8181250000000001 / 12500000000000000 : ℚ)
  oldHi := (8193750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1526, piece_1527]
}

def cell_5898 : Cell := { cellDefaults with
  domain := ⟨(17887499999999999 / 100000000000000000 : ℚ), (17890624999999999 / 100000000000000000 : ℚ)⟩
  r := (46502237543169 / 50000000000000 : ℚ)
  w := (10068338077971 / 10000000000000 : ℚ)
  center := (17889062499999999 / 100000000000000000 : ℚ)
  supportValue := (655088569151547 / 1000000000000000 : ℚ)
  supportSlope := (2657593300634531 / 500000000000000 : ℚ)
  oldCenter := (655088569151547 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_488
  oldLo := (65500000000000003 / 100000000000000000 : ℚ)
  oldHi := (8193750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1527]
}

def cell_5899 : Cell := { cellDefaults with
  domain := ⟨(17890624999999999 / 100000000000000000 : ℚ), (17893749999999999 / 100000000000000000 : ℚ)⟩
  r := (46502237543169 / 50000000000000 : ℚ)
  w := (10068338077971 / 10000000000000 : ℚ)
  center := (17892187499999999 / 100000000000000000 : ℚ)
  supportValue := (1310509362883119 / 2000000000000000 : ℚ)
  supportSlope := (5316001079528121 / 1000000000000000 : ℚ)
  oldCenter := (1310509362883119 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_488
  oldLo := (65500000000000003 / 100000000000000000 : ℚ)
  oldHi := (8193750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1527]
}

theorem check_5850 : SourceCertificateFamily.RightNormalized.check cell_5850 = true := by
  decide +kernel

theorem check_5851 : SourceCertificateFamily.RightNormalized.check cell_5851 = true := by
  decide +kernel

theorem check_5852 : SourceCertificateFamily.RightNormalized.check cell_5852 = true := by
  decide +kernel

theorem check_5853 : SourceCertificateFamily.RightNormalized.check cell_5853 = true := by
  decide +kernel

theorem check_5854 : SourceCertificateFamily.RightNormalized.check cell_5854 = true := by
  decide +kernel

theorem check_5855 : SourceCertificateFamily.RightNormalized.check cell_5855 = true := by
  decide +kernel

theorem check_5856 : SourceCertificateFamily.RightNormalized.check cell_5856 = true := by
  decide +kernel

theorem check_5857 : SourceCertificateFamily.RightNormalized.check cell_5857 = true := by
  decide +kernel

theorem check_5858 : SourceCertificateFamily.RightNormalized.check cell_5858 = true := by
  decide +kernel

theorem check_5859 : SourceCertificateFamily.RightNormalized.check cell_5859 = true := by
  decide +kernel

theorem check_5860 : SourceCertificateFamily.RightNormalized.check cell_5860 = true := by
  decide +kernel

theorem check_5861 : SourceCertificateFamily.RightNormalized.check cell_5861 = true := by
  decide +kernel

theorem check_5862 : SourceCertificateFamily.RightNormalized.check cell_5862 = true := by
  decide +kernel

theorem check_5863 : SourceCertificateFamily.RightNormalized.check cell_5863 = true := by
  decide +kernel

theorem check_5864 : SourceCertificateFamily.RightNormalized.check cell_5864 = true := by
  decide +kernel

theorem check_5865 : SourceCertificateFamily.RightNormalized.check cell_5865 = true := by
  decide +kernel

theorem check_5866 : SourceCertificateFamily.RightNormalized.check cell_5866 = true := by
  decide +kernel

theorem check_5867 : SourceCertificateFamily.RightNormalized.check cell_5867 = true := by
  decide +kernel

theorem check_5868 : SourceCertificateFamily.RightNormalized.check cell_5868 = true := by
  decide +kernel

theorem check_5869 : SourceCertificateFamily.RightNormalized.check cell_5869 = true := by
  decide +kernel

theorem check_5870 : SourceCertificateFamily.RightNormalized.check cell_5870 = true := by
  decide +kernel

theorem check_5871 : SourceCertificateFamily.RightNormalized.check cell_5871 = true := by
  decide +kernel

theorem check_5872 : SourceCertificateFamily.RightNormalized.check cell_5872 = true := by
  decide +kernel

theorem check_5873 : SourceCertificateFamily.RightNormalized.check cell_5873 = true := by
  decide +kernel

theorem check_5874 : SourceCertificateFamily.RightNormalized.check cell_5874 = true := by
  decide +kernel

theorem check_5875 : SourceCertificateFamily.RightNormalized.check cell_5875 = true := by
  decide +kernel

theorem check_5876 : SourceCertificateFamily.RightNormalized.check cell_5876 = true := by
  decide +kernel

theorem check_5877 : SourceCertificateFamily.RightNormalized.check cell_5877 = true := by
  decide +kernel

theorem check_5878 : SourceCertificateFamily.RightNormalized.check cell_5878 = true := by
  decide +kernel

theorem check_5879 : SourceCertificateFamily.RightNormalized.check cell_5879 = true := by
  decide +kernel

theorem check_5880 : SourceCertificateFamily.RightNormalized.check cell_5880 = true := by
  decide +kernel

theorem check_5881 : SourceCertificateFamily.RightNormalized.check cell_5881 = true := by
  decide +kernel

theorem check_5882 : SourceCertificateFamily.RightNormalized.check cell_5882 = true := by
  decide +kernel

theorem check_5883 : SourceCertificateFamily.RightNormalized.check cell_5883 = true := by
  decide +kernel

theorem check_5884 : SourceCertificateFamily.RightNormalized.check cell_5884 = true := by
  decide +kernel

theorem check_5885 : SourceCertificateFamily.RightNormalized.check cell_5885 = true := by
  decide +kernel

theorem check_5886 : SourceCertificateFamily.RightNormalized.check cell_5886 = true := by
  decide +kernel

theorem check_5887 : SourceCertificateFamily.RightNormalized.check cell_5887 = true := by
  decide +kernel

theorem check_5888 : SourceCertificateFamily.RightNormalized.check cell_5888 = true := by
  decide +kernel

theorem check_5889 : SourceCertificateFamily.RightNormalized.check cell_5889 = true := by
  decide +kernel

theorem check_5890 : SourceCertificateFamily.RightNormalized.check cell_5890 = true := by
  decide +kernel

theorem check_5891 : SourceCertificateFamily.RightNormalized.check cell_5891 = true := by
  decide +kernel

theorem check_5892 : SourceCertificateFamily.RightNormalized.check cell_5892 = true := by
  decide +kernel

theorem check_5893 : SourceCertificateFamily.RightNormalized.check cell_5893 = true := by
  decide +kernel

theorem check_5894 : SourceCertificateFamily.RightNormalized.check cell_5894 = true := by
  decide +kernel

theorem check_5895 : SourceCertificateFamily.RightNormalized.check cell_5895 = true := by
  decide +kernel

theorem check_5896 : SourceCertificateFamily.RightNormalized.check cell_5896 = true := by
  decide +kernel

theorem check_5897 : SourceCertificateFamily.RightNormalized.check cell_5897 = true := by
  decide +kernel

theorem check_5898 : SourceCertificateFamily.RightNormalized.check cell_5898 = true := by
  decide +kernel

theorem check_5899 : SourceCertificateFamily.RightNormalized.check cell_5899 = true := by
  decide +kernel

def cells : List Cell := [cell_5850, cell_5851, cell_5852, cell_5853, cell_5854, cell_5855, cell_5856, cell_5857, cell_5858, cell_5859, cell_5860, cell_5861, cell_5862, cell_5863, cell_5864, cell_5865, cell_5866, cell_5867, cell_5868, cell_5869, cell_5870, cell_5871, cell_5872, cell_5873, cell_5874, cell_5875, cell_5876, cell_5877, cell_5878, cell_5879, cell_5880, cell_5881, cell_5882, cell_5883, cell_5884, cell_5885, cell_5886, cell_5887, cell_5888, cell_5889, cell_5890, cell_5891, cell_5892, cell_5893, cell_5894, cell_5895, cell_5896, cell_5897, cell_5898, cell_5899]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_5850, SourceCertificateFamily.of_right_checked check_5851, SourceCertificateFamily.of_right_checked check_5852, SourceCertificateFamily.of_right_checked check_5853, SourceCertificateFamily.of_right_checked check_5854, SourceCertificateFamily.of_right_checked check_5855, SourceCertificateFamily.of_right_checked check_5856, SourceCertificateFamily.of_right_checked check_5857, SourceCertificateFamily.of_right_checked check_5858, SourceCertificateFamily.of_right_checked check_5859, SourceCertificateFamily.of_right_checked check_5860, SourceCertificateFamily.of_right_checked check_5861, SourceCertificateFamily.of_right_checked check_5862, SourceCertificateFamily.of_right_checked check_5863, SourceCertificateFamily.of_right_checked check_5864, SourceCertificateFamily.of_right_checked check_5865, SourceCertificateFamily.of_right_checked check_5866, SourceCertificateFamily.of_right_checked check_5867, SourceCertificateFamily.of_right_checked check_5868, SourceCertificateFamily.of_right_checked check_5869, SourceCertificateFamily.of_right_checked check_5870, SourceCertificateFamily.of_right_checked check_5871, SourceCertificateFamily.of_right_checked check_5872, SourceCertificateFamily.of_right_checked check_5873, SourceCertificateFamily.of_right_checked check_5874, SourceCertificateFamily.of_right_checked check_5875, SourceCertificateFamily.of_right_checked check_5876, SourceCertificateFamily.of_right_checked check_5877, SourceCertificateFamily.of_right_checked check_5878, SourceCertificateFamily.of_right_checked check_5879, SourceCertificateFamily.of_right_checked check_5880, SourceCertificateFamily.of_right_checked check_5881, SourceCertificateFamily.of_right_checked check_5882, SourceCertificateFamily.of_right_checked check_5883, SourceCertificateFamily.of_right_checked check_5884, SourceCertificateFamily.of_right_checked check_5885, SourceCertificateFamily.of_right_checked check_5886, SourceCertificateFamily.of_right_checked check_5887, SourceCertificateFamily.of_right_checked check_5888, SourceCertificateFamily.of_right_checked check_5889, SourceCertificateFamily.of_right_checked check_5890, SourceCertificateFamily.of_right_checked check_5891, SourceCertificateFamily.of_right_checked check_5892, SourceCertificateFamily.of_right_checked check_5893, SourceCertificateFamily.of_right_checked check_5894, SourceCertificateFamily.of_right_checked check_5895, SourceCertificateFamily.of_right_checked check_5896, SourceCertificateFamily.of_right_checked check_5897, SourceCertificateFamily.of_right_checked check_5898, SourceCertificateFamily.of_right_checked check_5899, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0117

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0117
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0117
open AnalyticBounds.ExpressionCertificate

theorem linked_5850 : Linked cell_5850 pieces := by
  refine ⟨piece_485,piece_485_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5850,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1512_mem
    · exact piece_1513_mem

theorem linked_5851 : Linked cell_5851 pieces := by
  refine ⟨piece_485,piece_485_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5851,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1513_mem

theorem linked_5852 : Linked cell_5852 pieces := by
  refine ⟨piece_485,piece_485_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5852,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1513_mem

theorem linked_5853 : Linked cell_5853 pieces := by
  refine ⟨piece_485,piece_485_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5853,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1513_mem
    · exact piece_1514_mem

theorem linked_5854 : Linked cell_5854 pieces := by
  refine ⟨piece_486,piece_486_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5854,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1513_mem

theorem linked_5855 : Linked cell_5855 pieces := by
  refine ⟨piece_486,piece_486_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5855,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1513_mem

theorem linked_5856 : Linked cell_5856 pieces := by
  refine ⟨piece_486,piece_486_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5856,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1513_mem
    · exact piece_1514_mem

theorem linked_5857 : Linked cell_5857 pieces := by
  refine ⟨piece_486,piece_486_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5857,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1514_mem

theorem linked_5858 : Linked cell_5858 pieces := by
  refine ⟨piece_486,piece_486_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5858,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1514_mem

theorem linked_5859 : Linked cell_5859 pieces := by
  refine ⟨piece_486,piece_486_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5859,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1514_mem
    · exact piece_1515_mem

theorem linked_5860 : Linked cell_5860 pieces := by
  refine ⟨piece_486,piece_486_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5860,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1515_mem

theorem linked_5861 : Linked cell_5861 pieces := by
  refine ⟨piece_486,piece_486_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5861,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1515_mem

theorem linked_5862 : Linked cell_5862 pieces := by
  refine ⟨piece_486,piece_486_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5862,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1515_mem
    · exact piece_1516_mem

theorem linked_5863 : Linked cell_5863 pieces := by
  refine ⟨piece_486,piece_486_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5863,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1516_mem

theorem linked_5864 : Linked cell_5864 pieces := by
  refine ⟨piece_486,piece_486_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5864,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1516_mem

theorem linked_5865 : Linked cell_5865 pieces := by
  refine ⟨piece_486,piece_486_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5865,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1516_mem
    · exact piece_1517_mem

theorem linked_5866 : Linked cell_5866 pieces := by
  refine ⟨piece_486,piece_486_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5866,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1517_mem

theorem linked_5867 : Linked cell_5867 pieces := by
  refine ⟨piece_486,piece_486_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5867,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1517_mem

theorem linked_5868 : Linked cell_5868 pieces := by
  refine ⟨piece_486,piece_486_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5868,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1517_mem
    · exact piece_1518_mem

theorem linked_5869 : Linked cell_5869 pieces := by
  refine ⟨piece_486,piece_486_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5869,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1518_mem

theorem linked_5870 : Linked cell_5870 pieces := by
  refine ⟨piece_487,piece_487_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5870,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1517_mem

theorem linked_5871 : Linked cell_5871 pieces := by
  refine ⟨piece_487,piece_487_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5871,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1517_mem
    · exact piece_1518_mem

theorem linked_5872 : Linked cell_5872 pieces := by
  refine ⟨piece_487,piece_487_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5872,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1518_mem

theorem linked_5873 : Linked cell_5873 pieces := by
  refine ⟨piece_487,piece_487_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5873,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1518_mem

theorem linked_5874 : Linked cell_5874 pieces := by
  refine ⟨piece_487,piece_487_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5874,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1518_mem
    · exact piece_1519_mem
    · exact piece_1520_mem

theorem linked_5875 : Linked cell_5875 pieces := by
  refine ⟨piece_487,piece_487_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5875,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1520_mem

theorem linked_5876 : Linked cell_5876 pieces := by
  refine ⟨piece_487,piece_487_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5876,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1520_mem

theorem linked_5877 : Linked cell_5877 pieces := by
  refine ⟨piece_487,piece_487_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5877,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1520_mem
    · exact piece_1521_mem

theorem linked_5878 : Linked cell_5878 pieces := by
  refine ⟨piece_487,piece_487_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5878,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1521_mem

theorem linked_5879 : Linked cell_5879 pieces := by
  refine ⟨piece_487,piece_487_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5879,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1521_mem

theorem linked_5880 : Linked cell_5880 pieces := by
  refine ⟨piece_487,piece_487_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5880,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1521_mem
    · exact piece_1522_mem

theorem linked_5881 : Linked cell_5881 pieces := by
  refine ⟨piece_487,piece_487_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5881,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1522_mem

theorem linked_5882 : Linked cell_5882 pieces := by
  refine ⟨piece_487,piece_487_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5882,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1522_mem

theorem linked_5883 : Linked cell_5883 pieces := by
  refine ⟨piece_487,piece_487_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5883,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1522_mem
    · exact piece_1523_mem

theorem linked_5884 : Linked cell_5884 pieces := by
  refine ⟨piece_487,piece_487_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5884,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1523_mem

theorem linked_5885 : Linked cell_5885 pieces := by
  refine ⟨piece_487,piece_487_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5885,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1523_mem

theorem linked_5886 : Linked cell_5886 pieces := by
  refine ⟨piece_488,piece_488_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5886,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1523_mem

theorem linked_5887 : Linked cell_5887 pieces := by
  refine ⟨piece_488,piece_488_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5887,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1523_mem

theorem linked_5888 : Linked cell_5888 pieces := by
  refine ⟨piece_488,piece_488_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5888,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1523_mem
    · exact piece_1524_mem

theorem linked_5889 : Linked cell_5889 pieces := by
  refine ⟨piece_488,piece_488_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5889,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1524_mem

theorem linked_5890 : Linked cell_5890 pieces := by
  refine ⟨piece_488,piece_488_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5890,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1524_mem

theorem linked_5891 : Linked cell_5891 pieces := by
  refine ⟨piece_488,piece_488_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5891,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1524_mem
    · exact piece_1525_mem

theorem linked_5892 : Linked cell_5892 pieces := by
  refine ⟨piece_488,piece_488_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5892,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1525_mem

theorem linked_5893 : Linked cell_5893 pieces := by
  refine ⟨piece_488,piece_488_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5893,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1525_mem

theorem linked_5894 : Linked cell_5894 pieces := by
  refine ⟨piece_488,piece_488_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5894,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1525_mem
    · exact piece_1526_mem

theorem linked_5895 : Linked cell_5895 pieces := by
  refine ⟨piece_488,piece_488_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5895,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1526_mem

theorem linked_5896 : Linked cell_5896 pieces := by
  refine ⟨piece_488,piece_488_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5896,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1526_mem

theorem linked_5897 : Linked cell_5897 pieces := by
  refine ⟨piece_488,piece_488_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5897,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1526_mem
    · exact piece_1527_mem

theorem linked_5898 : Linked cell_5898 pieces := by
  refine ⟨piece_488,piece_488_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5898,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1527_mem

theorem linked_5899 : Linked cell_5899 pieces := by
  refine ⟨piece_488,piece_488_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5899,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1527_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0117.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0117.cells,List.forall_mem_cons]
  exact ⟨linked_5850, linked_5851, linked_5852, linked_5853, linked_5854, linked_5855, linked_5856, linked_5857, linked_5858, linked_5859, linked_5860, linked_5861, linked_5862, linked_5863, linked_5864, linked_5865, linked_5866, linked_5867, linked_5868, linked_5869, linked_5870, linked_5871, linked_5872, linked_5873, linked_5874, linked_5875, linked_5876, linked_5877, linked_5878, linked_5879, linked_5880, linked_5881, linked_5882, linked_5883, linked_5884, linked_5885, linked_5886, linked_5887, linked_5888, linked_5889, linked_5890, linked_5891, linked_5892, linked_5893, linked_5894, linked_5895, linked_5896, linked_5897, linked_5898, linked_5899, by simp⟩

theorem covered : covers (17737499999999999 / 100000000000000000 : ℚ) (17893749999999999 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0117.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0117
