import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

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
  refine ⟨piece_812,piece_812_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8350,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1606_mem
    · exact piece_1607_mem

theorem linked_8351 : Linked cell_8351 pieces := by
  refine ⟨piece_812,piece_812_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8351,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1605_mem
    · exact piece_1606_mem

theorem linked_8352 : Linked cell_8352 pieces := by
  refine ⟨piece_812,piece_812_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8352,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1605_mem

theorem linked_8353 : Linked cell_8353 pieces := by
  refine ⟨piece_812,piece_812_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8353,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1604_mem
    · exact piece_1605_mem

theorem linked_8354 : Linked cell_8354 pieces := by
  refine ⟨piece_812,piece_812_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8354,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1603_mem
    · exact piece_1604_mem

theorem linked_8355 : Linked cell_8355 pieces := by
  refine ⟨piece_812,piece_812_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8355,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1602_mem
    · exact piece_1603_mem

theorem linked_8356 : Linked cell_8356 pieces := by
  refine ⟨piece_813,piece_813_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8356,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1605_mem

theorem linked_8357 : Linked cell_8357 pieces := by
  refine ⟨piece_813,piece_813_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8357,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1604_mem
    · exact piece_1605_mem

theorem linked_8358 : Linked cell_8358 pieces := by
  refine ⟨piece_813,piece_813_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8358,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1603_mem
    · exact piece_1604_mem

theorem linked_8359 : Linked cell_8359 pieces := by
  refine ⟨piece_813,piece_813_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8359,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1602_mem
    · exact piece_1603_mem

theorem linked_8360 : Linked cell_8360 pieces := by
  refine ⟨piece_813,piece_813_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8360,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1601_mem
    · exact piece_1602_mem

theorem linked_8361 : Linked cell_8361 pieces := by
  refine ⟨piece_813,piece_813_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8361,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1601_mem

theorem linked_8362 : Linked cell_8362 pieces := by
  refine ⟨piece_813,piece_813_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8362,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1600_mem
    · exact piece_1601_mem

theorem linked_8363 : Linked cell_8363 pieces := by
  refine ⟨piece_813,piece_813_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8363,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1599_mem
    · exact piece_1600_mem

theorem linked_8364 : Linked cell_8364 pieces := by
  refine ⟨piece_814,piece_814_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8364,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1601_mem
    · exact piece_1602_mem

theorem linked_8365 : Linked cell_8365 pieces := by
  refine ⟨piece_814,piece_814_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8365,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1601_mem

theorem linked_8366 : Linked cell_8366 pieces := by
  refine ⟨piece_814,piece_814_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8366,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1600_mem
    · exact piece_1601_mem

theorem linked_8367 : Linked cell_8367 pieces := by
  refine ⟨piece_814,piece_814_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8367,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1599_mem
    · exact piece_1600_mem

theorem linked_8368 : Linked cell_8368 pieces := by
  refine ⟨piece_814,piece_814_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8368,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1599_mem

theorem linked_8369 : Linked cell_8369 pieces := by
  refine ⟨piece_814,piece_814_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8369,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1598_mem
    · exact piece_1599_mem

theorem linked_8370 : Linked cell_8370 pieces := by
  refine ⟨piece_814,piece_814_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8370,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1598_mem

theorem linked_8371 : Linked cell_8371 pieces := by
  refine ⟨piece_814,piece_814_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8371,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1597_mem
    · exact piece_1598_mem

theorem linked_8372 : Linked cell_8372 pieces := by
  refine ⟨piece_815,piece_815_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8372,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1599_mem

theorem linked_8373 : Linked cell_8373 pieces := by
  refine ⟨piece_815,piece_815_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8373,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1598_mem
    · exact piece_1599_mem

theorem linked_8374 : Linked cell_8374 pieces := by
  refine ⟨piece_815,piece_815_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8374,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1598_mem

theorem linked_8375 : Linked cell_8375 pieces := by
  refine ⟨piece_815,piece_815_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8375,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1597_mem
    · exact piece_1598_mem

theorem linked_8376 : Linked cell_8376 pieces := by
  refine ⟨piece_815,piece_815_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8376,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1596_mem
    · exact piece_1597_mem

theorem linked_8377 : Linked cell_8377 pieces := by
  refine ⟨piece_815,piece_815_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8377,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1596_mem

theorem linked_8378 : Linked cell_8378 pieces := by
  refine ⟨piece_815,piece_815_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8378,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1595_mem
    · exact piece_1596_mem

theorem linked_8379 : Linked cell_8379 pieces := by
  refine ⟨piece_815,piece_815_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8379,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1595_mem

theorem linked_8380 : Linked cell_8380 pieces := by
  refine ⟨piece_816,piece_816_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8380,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1596_mem
    · exact piece_1597_mem

theorem linked_8381 : Linked cell_8381 pieces := by
  refine ⟨piece_816,piece_816_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8381,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1596_mem

theorem linked_8382 : Linked cell_8382 pieces := by
  refine ⟨piece_816,piece_816_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8382,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1595_mem
    · exact piece_1596_mem

theorem linked_8383 : Linked cell_8383 pieces := by
  refine ⟨piece_816,piece_816_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8383,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1595_mem

theorem linked_8384 : Linked cell_8384 pieces := by
  refine ⟨piece_816,piece_816_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8384,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1594_mem
    · exact piece_1595_mem

theorem linked_8385 : Linked cell_8385 pieces := by
  refine ⟨piece_816,piece_816_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8385,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1593_mem
    · exact piece_1594_mem

theorem linked_8386 : Linked cell_8386 pieces := by
  refine ⟨piece_816,piece_816_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8386,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1593_mem

theorem linked_8387 : Linked cell_8387 pieces := by
  refine ⟨piece_816,piece_816_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8387,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1592_mem
    · exact piece_1593_mem

theorem linked_8388 : Linked cell_8388 pieces := by
  refine ⟨piece_817,piece_817_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8388,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1594_mem
    · exact piece_1595_mem

theorem linked_8389 : Linked cell_8389 pieces := by
  refine ⟨piece_817,piece_817_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8389,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1593_mem
    · exact piece_1594_mem

theorem linked_8390 : Linked cell_8390 pieces := by
  refine ⟨piece_817,piece_817_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8390,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1593_mem

theorem linked_8391 : Linked cell_8391 pieces := by
  refine ⟨piece_817,piece_817_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8391,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1592_mem
    · exact piece_1593_mem

theorem linked_8392 : Linked cell_8392 pieces := by
  refine ⟨piece_817,piece_817_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8392,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1590_mem
    · exact piece_1591_mem
    · exact piece_1592_mem

theorem linked_8393 : Linked cell_8393 pieces := by
  refine ⟨piece_817,piece_817_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8393,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1590_mem

theorem linked_8394 : Linked cell_8394 pieces := by
  refine ⟨piece_817,piece_817_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8394,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1589_mem
    · exact piece_1590_mem

theorem linked_8395 : Linked cell_8395 pieces := by
  refine ⟨piece_817,piece_817_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8395,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1589_mem

theorem linked_8396 : Linked cell_8396 pieces := by
  refine ⟨piece_818,piece_818_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8396,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1590_mem
    · exact piece_1591_mem
    · exact piece_1592_mem

theorem linked_8397 : Linked cell_8397 pieces := by
  refine ⟨piece_818,piece_818_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8397,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1590_mem

theorem linked_8398 : Linked cell_8398 pieces := by
  refine ⟨piece_818,piece_818_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8398,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1589_mem
    · exact piece_1590_mem

theorem linked_8399 : Linked cell_8399 pieces := by
  refine ⟨piece_818,piece_818_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_8399,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1589_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0167.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0167.cells,List.forall_mem_cons]
  exact ⟨linked_8350, linked_8351, linked_8352, linked_8353, linked_8354, linked_8355, linked_8356, linked_8357, linked_8358, linked_8359, linked_8360, linked_8361, linked_8362, linked_8363, linked_8364, linked_8365, linked_8366, linked_8367, linked_8368, linked_8369, linked_8370, linked_8371, linked_8372, linked_8373, linked_8374, linked_8375, linked_8376, linked_8377, linked_8378, linked_8379, linked_8380, linked_8381, linked_8382, linked_8383, linked_8384, linked_8385, linked_8386, linked_8387, linked_8388, linked_8389, linked_8390, linked_8391, linked_8392, linked_8393, linked_8394, linked_8395, linked_8396, linked_8397, linked_8398, linked_8399, by simp⟩

theorem covered : covers (32712500000000001 / 100000000000000000 : ℚ) (16512500000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0167.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0167
