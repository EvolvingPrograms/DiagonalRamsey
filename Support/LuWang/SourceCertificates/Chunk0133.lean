import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0133
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(1747 / 8000 : ℚ), (699 / 3200 : ℚ)⟩
  branch := .right
  r := (86083996210639 / 100000000000000 : ℚ)
  w := (641952580163 / 625000000000 : ℚ)
  center := (6989 / 32000 : ℚ)
  supportValue := (2085712429913597 / 2500000000000000 : ℚ)
  supportSlope := (1147638263097761 / 200000000000000 : ℚ)
  oldCenter := (2085712429913597 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_575
  oldLo := (8340782122905027 / 10000000000000000 : ℚ)
  oldHi := (41875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1918, piece_1919]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_6650 : Cell := { cellDefaults with
  r := (86387025472753 / 100000000000000 : ℚ)
  w := (10260181140683 / 10000000000000 : ℚ)
  newCoefficients := coefficients_574
  oldHi := (41725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1918]
}

def cell_6651 : Cell := { cellDefaults with
  domain := ⟨(699 / 3200 : ℚ), (437 / 2000 : ℚ)⟩
  r := (86387025472753 / 100000000000000 : ℚ)
  w := (10260181140683 / 10000000000000 : ℚ)
  center := (6991 / 32000 : ℚ)
  supportValue := (208660912735331 / 250000000000000 : ℚ)
  supportSlope := (1434852999155023 / 250000000000000 : ℚ)
  oldCenter := (208660912735331 / 250000000000000 : ℚ)
  newCoefficients := coefficients_574
  oldHi := (10437500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1918, piece_1919]
}

def cell_6652 : Cell := { cellDefaults with
  domain := ⟨(437 / 2000 : ℚ), (3497 / 16000 : ℚ)⟩
  r := (86311020334557 / 100000000000000 : ℚ)
  w := (2052589395913 / 2000000000000 : ℚ)
  center := (6993 / 32000 : ℚ)
  supportValue := (4172413299857683 / 5000000000000000 : ℚ)
  supportSlope := (229440927535407 / 40000000000000 : ℚ)
  oldCenter := (4172413299857683 / 5000000000000000 : ℚ)
  oldHi := (10437500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1918, piece_1919]
}

def cell_6653 : Cell := { cellDefaults with
  domain := ⟨(3497 / 16000 : ℚ), (1749 / 8000 : ℚ)⟩
  r := (86311020334557 / 100000000000000 : ℚ)
  w := (2052589395913 / 2000000000000 : ℚ)
  center := (1399 / 6400 : ℚ)
  supportValue := (8348411954293861 / 10000000000000000 : ℚ)
  supportSlope := (11475241257446811 / 2000000000000000 : ℚ)
  oldCenter := (8348411954293861 / 10000000000000000 : ℚ)
  oldLo := (41725000000000001 / 50000000000000000 : ℚ)
  oldHi := (41775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1919, piece_1920]
}

def cell_6654 : Cell := { cellDefaults with
  domain := ⟨(1749 / 8000 : ℚ), (3499 / 16000 : ℚ)⟩
  r := (86311020334557 / 100000000000000 : ℚ)
  w := (2052589395913 / 2000000000000 : ℚ)
  center := (6997 / 32000 : ℚ)
  supportValue := (2087999576959347 / 2500000000000000 : ℚ)
  supportSlope := (717348450275157 / 125000000000000 : ℚ)
  oldCenter := (2087999576959347 / 2500000000000000 : ℚ)
  oldLo := (10437500000000001 / 12500000000000000 : ℚ)
  oldHi := (41775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1920]
}

def cell_6655 : Cell := { cellDefaults with
  domain := ⟨(3499 / 16000 : ℚ), (7 / 32 : ℚ)⟩
  r := (86311020334557 / 100000000000000 : ℚ)
  w := (2052589395913 / 2000000000000 : ℚ)
  center := (6999 / 32000 : ℚ)
  supportValue := (8355585659449367 / 10000000000000000 : ℚ)
  supportSlope := (1435077825407749 / 250000000000000 : ℚ)
  oldCenter := (8355585659449367 / 10000000000000000 : ℚ)
  oldLo := (10437500000000001 / 12500000000000000 : ℚ)
  oldHi := (10450000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1920, piece_1921]
}

def cell_6656 : Cell := { cellDefaults with
  domain := ⟨(7 / 32 : ℚ), (3501 / 16000 : ℚ)⟩
  r := (86311020334557 / 100000000000000 : ℚ)
  w := (2052589395913 / 2000000000000 : ℚ)
  center := (7001 / 32000 : ℚ)
  supportValue := (2089793456343377 / 2500000000000000 : ℚ)
  supportSlope := (5741907674027047 / 1000000000000000 : ℚ)
  oldCenter := (2089793456343377 / 2500000000000000 : ℚ)
  oldLo := (41775000000000001 / 50000000000000000 : ℚ)
  oldHi := (41825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1921, piece_1922]
}

def cell_6657 : Cell := { cellDefaults with
  domain := ⟨(3501 / 16000 : ℚ), (1751 / 8000 : ℚ)⟩
  r := (86311020334557 / 100000000000000 : ℚ)
  w := (2052589395913 / 2000000000000 : ℚ)
  center := (7003 / 32000 : ℚ)
  supportValue := (1672552571723027 / 2000000000000000 : ℚ)
  supportSlope := (717918341403001 / 125000000000000 : ℚ)
  oldCenter := (1672552571723027 / 2000000000000000 : ℚ)
  oldLo := (10450000000000001 / 12500000000000000 : ℚ)
  oldHi := (41825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1922]
}

def cell_6658 : Cell := { cellDefaults with
  domain := ⟨(1751 / 8000 : ℚ), (3503 / 16000 : ℚ)⟩
  r := (86311020334557 / 100000000000000 : ℚ)
  w := (2052589395913 / 2000000000000 : ℚ)
  center := (1401 / 6400 : ℚ)
  supportValue := (4183176444628383 / 5000000000000000 : ℚ)
  supportSlope := (11489196433529969 / 2000000000000000 : ℚ)
  oldCenter := (4183176444628383 / 5000000000000000 : ℚ)
  oldLo := (10450000000000001 / 12500000000000000 : ℚ)
  oldHi := (10462500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1922, piece_1923]
}

def cell_6659 : Cell := { cellDefaults with
  domain := ⟨(3503 / 16000 : ℚ), (219 / 1000 : ℚ)⟩
  r := (86311020334557 / 100000000000000 : ℚ)
  w := (2052589395913 / 2000000000000 : ℚ)
  center := (7007 / 32000 : ℚ)
  supportValue := (4184971952271043 / 5000000000000000 : ℚ)
  supportSlope := (11492387025423767 / 2000000000000000 : ℚ)
  oldCenter := (4184971952271043 / 5000000000000000 : ℚ)
  oldLo := (41825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1923, piece_1924]
}

def cell_6660 : Cell := { cellDefaults with
  domain := ⟨(219 / 1000 : ℚ), (701 / 3200 : ℚ)⟩
  r := (1077939782583 / 1250000000000 : ℚ)
  w := (5132856080459 / 5000000000000 : ℚ)
  center := (7009 / 32000 : ℚ)
  supportValue := (8368325500520347 / 10000000000000000 : ℚ)
  supportSlope := (1148560144482147 / 200000000000000 : ℚ)
  oldCenter := (8368325500520347 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_576
  oldLo := (41825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1923, piece_1924]
}

def cell_6661 : Cell := { cellDefaults with
  domain := ⟨(701 / 3200 : ℚ), (1753 / 8000 : ℚ)⟩
  r := (1077939782583 / 1250000000000 : ℚ)
  w := (5132856080459 / 5000000000000 : ℚ)
  center := (7011 / 32000 : ℚ)
  supportValue := (4185957546063917 / 5000000000000000 : ℚ)
  supportSlope := (11487877341270547 / 2000000000000000 : ℚ)
  oldCenter := (4185957546063917 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_576
  oldLo := (10462500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1924]
}

def cell_6662 : Cell := { cellDefaults with
  domain := ⟨(1753 / 8000 : ℚ), (3507 / 16000 : ℚ)⟩
  r := (1077939782583 / 1250000000000 : ℚ)
  w := (5132856080459 / 5000000000000 : ℚ)
  center := (7013 / 32000 : ℚ)
  supportValue := (4187752839717819 / 5000000000000000 : ℚ)
  supportSlope := (2872744609146771 / 500000000000000 : ℚ)
  oldCenter := (4187752839717819 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_576
  oldLo := (10462500000000001 / 12500000000000000 : ℚ)
  oldHi := (10475000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1924, piece_1925]
}

def cell_6663 : Cell := { cellDefaults with
  domain := ⟨(3507 / 16000 : ℚ), (877 / 4000 : ℚ)⟩
  r := (1077939782583 / 1250000000000 : ℚ)
  w := (5132856080459 / 5000000000000 : ℚ)
  center := (1403 / 6400 : ℚ)
  supportValue := (2094774265827081 / 2500000000000000 : ℚ)
  supportSlope := (718385222796103 / 125000000000000 : ℚ)
  oldCenter := (2094774265827081 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_576
  oldLo := (41875000000000001 / 50000000000000000 : ℚ)
  oldHi := (41925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1925, piece_1926]
}

def cell_6664 : Cell := { cellDefaults with
  domain := ⟨(877 / 4000 : ℚ), (3509 / 16000 : ℚ)⟩
  r := (1077939782583 / 1250000000000 : ℚ)
  w := (5132856080459 / 5000000000000 : ℚ)
  center := (7017 / 32000 : ℚ)
  supportValue := (1047836166358157 / 1250000000000000 : ℚ)
  supportSlope := (2874246558881133 / 500000000000000 : ℚ)
  oldCenter := (1047836166358157 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_576
  oldLo := (10475000000000001 / 12500000000000000 : ℚ)
  oldHi := (41925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1926]
}

def cell_6665 : Cell := { cellDefaults with
  domain := ⟨(3509 / 16000 : ℚ), (351 / 1600 : ℚ)⟩
  r := (1077939782583 / 1250000000000 : ℚ)
  w := (5132856080459 / 5000000000000 : ℚ)
  center := (7019 / 32000 : ℚ)
  supportValue := (262071331046869 / 312500000000000 : ℚ)
  supportSlope := (5749770200502269 / 1000000000000000 : ℚ)
  oldCenter := (262071331046869 / 312500000000000 : ℚ)
  newCoefficients := coefficients_576
  oldLo := (10475000000000001 / 12500000000000000 : ℚ)
  oldHi := (10487500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1926, piece_1927]
}

def cell_6666 : Cell := { cellDefaults with
  domain := ⟨(351 / 1600 : ℚ), (3511 / 16000 : ℚ)⟩
  r := (1077939782583 / 1250000000000 : ℚ)
  w := (5132856080459 / 5000000000000 : ℚ)
  center := (7021 / 32000 : ℚ)
  supportValue := (2097469205956839 / 2500000000000000 : ℚ)
  supportSlope := (718920219136443 / 125000000000000 : ℚ)
  oldCenter := (2097469205956839 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_576
  oldLo := (41925000000000001 / 50000000000000000 : ℚ)
  oldHi := (41975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1927, piece_1928]
}

def cell_6667 : Cell := { cellDefaults with
  domain := ⟨(3511 / 16000 : ℚ), (439 / 2000 : ℚ)⟩
  r := (1077939782583 / 1250000000000 : ℚ)
  w := (5132856080459 / 5000000000000 : ℚ)
  center := (7023 / 32000 : ℚ)
  supportValue := (4196735883324867 / 5000000000000000 : ℚ)
  supportSlope := (71911898515431 / 12500000000000 : ℚ)
  oldCenter := (4196735883324867 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_576
  oldLo := (10487500000000001 / 12500000000000000 : ℚ)
  oldHi := (419804469273743 / 500000000000000 : ℚ)
  oldPieces := [piece_1928, piece_1929]
}

def cell_6668 : Cell := { cellDefaults with
  domain := ⟨(439 / 2000 : ℚ), (3513 / 16000 : ℚ)⟩
  r := (43079752622197 / 50000000000000 : ℚ)
  w := (2053695392729 / 2000000000000 : ℚ)
  center := (281 / 1280 : ℚ)
  supportValue := (8391844766092721 / 10000000000000000 : ℚ)
  supportSlope := (1149816027203343 / 200000000000000 : ℚ)
  oldCenter := (8391844766092721 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_577
  oldLo := (10487500000000001 / 12500000000000000 : ℚ)
  oldHi := (41975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1928]
}

def cell_6669 : Cell := { cellDefaults with
  domain := ⟨(3513 / 16000 : ℚ), (1757 / 8000 : ℚ)⟩
  r := (43079752622197 / 50000000000000 : ℚ)
  w := (2053695392729 / 2000000000000 : ℚ)
  center := (7027 / 32000 : ℚ)
  supportValue := (8395438579994631 / 10000000000000000 : ℚ)
  supportSlope := (1150130510391989 / 200000000000000 : ℚ)
  oldCenter := (8395438579994631 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_577
  oldLo := (10487500000000001 / 12500000000000000 : ℚ)
  oldHi := (10500000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1928, piece_1929, piece_1930]
}

def cell_6670 : Cell := { cellDefaults with
  domain := ⟨(1757 / 8000 : ℚ), (703 / 3200 : ℚ)⟩
  r := (43079752622197 / 50000000000000 : ℚ)
  w := (2053695392729 / 2000000000000 : ℚ)
  center := (7029 / 32000 : ℚ)
  supportValue := (839903317583161 / 1000000000000000 : ℚ)
  supportSlope := (5752241414127113 / 1000000000000000 : ℚ)
  oldCenter := (839903317583161 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_577
  oldLo := (419804469273743 / 500000000000000 : ℚ)
  oldHi := (42025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1930, piece_1931]
}

def cell_6671 : Cell := { cellDefaults with
  domain := ⟨(703 / 3200 : ℚ), (879 / 4000 : ℚ)⟩
  r := (43079752622197 / 50000000000000 : ℚ)
  w := (2053695392729 / 2000000000000 : ℚ)
  center := (7031 / 32000 : ℚ)
  supportValue := (840262866861989 / 1000000000000000 : ℚ)
  supportSlope := (5753629845921537 / 1000000000000000 : ℚ)
  oldCenter := (840262866861989 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_577
  oldLo := (10500000000000001 / 12500000000000000 : ℚ)
  oldHi := (42025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1931]
}

def cell_6672 : Cell := { cellDefaults with
  domain := ⟨(879 / 4000 : ℚ), (3517 / 16000 : ℚ)⟩
  r := (43079752622197 / 50000000000000 : ℚ)
  w := (2053695392729 / 2000000000000 : ℚ)
  center := (7033 / 32000 : ℚ)
  supportValue := (8406225154126671 / 10000000000000000 : ℚ)
  supportSlope := (2877463790000867 / 500000000000000 : ℚ)
  oldCenter := (8406225154126671 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_577
  oldLo := (10500000000000001 / 12500000000000000 : ℚ)
  oldHi := (10512500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1931, piece_1932]
}

def cell_6673 : Cell := { cellDefaults with
  domain := ⟨(3517 / 16000 : ℚ), (1759 / 8000 : ℚ)⟩
  r := (43079752622197 / 50000000000000 : ℚ)
  w := (2053695392729 / 2000000000000 : ℚ)
  center := (1407 / 6400 : ℚ)
  supportValue := (1051227824180737 / 1250000000000000 : ℚ)
  supportSlope := (5756515436381449 / 1000000000000000 : ℚ)
  oldCenter := (1051227824180737 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_577
  oldLo := (42025000000000001 / 50000000000000000 : ℚ)
  oldHi := (84150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1932, piece_1933]
}

def cell_6674 : Cell := { cellDefaults with
  domain := ⟨(1759 / 8000 : ℚ), (3519 / 16000 : ℚ)⟩
  r := (43079752622197 / 50000000000000 : ℚ)
  w := (2053695392729 / 2000000000000 : ℚ)
  center := (7037 / 32000 : ℚ)
  supportValue := (4206710378902943 / 5000000000000000 : ℚ)
  supportSlope := (11516203790204571 / 2000000000000000 : ℚ)
  oldCenter := (4206710378902943 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_577
  oldLo := (10512500000000001 / 12500000000000000 : ℚ)
  oldHi := (10525000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1933, piece_1934]
}

def cell_6675 : Cell := { cellDefaults with
  domain := ⟨(3519 / 16000 : ℚ), (11 / 50 : ℚ)⟩
  r := (43079752622197 / 50000000000000 : ℚ)
  w := (2053695392729 / 2000000000000 : ℚ)
  center := (7039 / 32000 : ℚ)
  supportValue := (8417019914252397 / 10000000000000000 : ℚ)
  supportSlope := (11518557948367203 / 2000000000000000 : ℚ)
  oldCenter := (8417019914252397 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_577
  oldLo := (84150000000000003 / 100000000000000000 : ℚ)
  oldHi := (10525000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1934]
}

def cell_6676 : Cell := { cellDefaults with
  domain := ⟨(11 / 50 : ℚ), (3521 / 16000 : ℚ)⟩
  center := (7041 / 32000 : ℚ)
  supportValue := (1051923126594247 / 1250000000000000 : ℚ)
  supportSlope := (5755801630591861 / 1000000000000000 : ℚ)
  oldCenter := (1051923126594247 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_578
  oldLo := (10512500000000001 / 12500000000000000 : ℚ)
  oldHi := (10525000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1933, piece_1934]
}

def cell_6677 : Cell := { cellDefaults with
  domain := ⟨(3521 / 16000 : ℚ), (1761 / 8000 : ℚ)⟩
  center := (7043 / 32000 : ℚ)
  supportValue := (8418982814817693 / 10000000000000000 : ℚ)
  supportSlope := (1151477366404663 / 200000000000000 : ℚ)
  oldCenter := (8418982814817693 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_578
  oldLo := (84150000000000003 / 100000000000000000 : ℚ)
  oldHi := (84250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1934, piece_1935]
}

def cell_6678 : Cell := { cellDefaults with
  domain := ⟨(1761 / 8000 : ℚ), (22016759776536313 / 100000000000000000 : ℚ)⟩
  center := (44029259776536313 / 200000000000000000 : ℚ)
  supportValue := (8422010166452221 / 10000000000000000 : ℚ)
  supportSlope := (11516767935921349 / 2000000000000000 : ℚ)
  oldCenter := (8422010166452221 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_578
  oldLo := (10525000000000001 / 12500000000000000 : ℚ)
  oldHi := (84250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1935]
}

def cell_6679 : Cell := { cellDefaults with
  domain := ⟨(22016759776536313 / 100000000000000000 : ℚ), (44041759776536313 / 200000000000000000 : ℚ)⟩
  center := (88075279329608939 / 400000000000000000 : ℚ)
  supportValue := (4212210770852303 / 5000000000000000 : ℚ)
  supportSlope := (5759637305798799 / 1000000000000000 : ℚ)
  oldCenter := (4212210770852303 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_579
  oldLo := (10525000000000001 / 12500000000000000 : ℚ)
  oldHi := (10537500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1935, piece_1936]
}

def cell_6680 : Cell := { cellDefaults with
  domain := ⟨(44041759776536313 / 200000000000000000 : ℚ), (881 / 4000 : ℚ)⟩
  center := (88091759776536313 / 400000000000000000 : ℚ)
  supportValue := (1685359264638377 / 2000000000000000 : ℚ)
  supportSlope := (5760257878129151 / 1000000000000000 : ℚ)
  oldCenter := (1685359264638377 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_579
  oldLo := (84250000000000003 / 100000000000000000 : ℚ)
  oldHi := (10537500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1936]
}

def cell_6681 : Cell := { cellDefaults with
  domain := ⟨(881 / 4000 : ℚ), (141 / 640 : ℚ)⟩
  center := (7049 / 32000 : ℚ)
  supportValue := (8429781867126699 / 10000000000000000 : ℚ)
  supportSlope := (5761655823127043 / 1000000000000000 : ℚ)
  oldCenter := (8429781867126699 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_579
  oldLo := (84250000000000003 / 100000000000000000 : ℚ)
  oldHi := (84350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1936, piece_1937]
}

def cell_6682 : Cell := { cellDefaults with
  domain := ⟨(141 / 640 : ℚ), (1763 / 8000 : ℚ)⟩
  center := (7051 / 32000 : ℚ)
  supportValue := (8433383244708789 / 10000000000000000 : ℚ)
  supportSlope := (5763238626743217 / 1000000000000000 : ℚ)
  oldCenter := (8433383244708789 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_579
  oldLo := (10537500000000001 / 12500000000000000 : ℚ)
  oldHi := (10550000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1937, piece_1938]
}

def cell_6683 : Cell := { cellDefaults with
  domain := ⟨(1763 / 8000 : ℚ), (3527 / 16000 : ℚ)⟩
  center := (7053 / 32000 : ℚ)
  supportValue := (843698561208287 / 1000000000000000 : ℚ)
  supportSlope := (576440421198221 / 100000000000000 : ℚ)
  oldCenter := (843698561208287 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_579
  oldLo := (84350000000000003 / 100000000000000000 : ℚ)
  oldHi := (10550000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1938]
}

def cell_6684 : Cell := { cellDefaults with
  domain := ⟨(3527 / 16000 : ℚ), (441 / 2000 : ℚ)⟩
  center := (1411 / 6400 : ℚ)
  supportValue := (844058896838883 / 1000000000000000 : ℚ)
  supportSlope := (230636917534639 / 40000000000000 : ℚ)
  oldCenter := (844058896838883 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_579
  oldLo := (84350000000000003 / 100000000000000000 : ℚ)
  oldHi := (84450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1938, piece_1939]
}

def cell_6685 : Cell := { cellDefaults with
  domain := ⟨(441 / 2000 : ℚ), (3529 / 16000 : ℚ)⟩
  r := (10751081050287 / 12500000000000 : ℚ)
  w := (2054800979617 / 2000000000000 : ℚ)
  center := (7057 / 32000 : ℚ)
  supportValue := (421947262351291 / 500000000000000 : ℚ)
  supportSlope := (1152503780478753 / 200000000000000 : ℚ)
  oldCenter := (421947262351291 / 500000000000000 : ℚ)
  newCoefficients := coefficients_580
  oldLo := (84350000000000003 / 100000000000000000 : ℚ)
  oldHi := (84450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1938, piece_1939]
}

def cell_6686 : Cell := { cellDefaults with
  domain := ⟨(3529 / 16000 : ℚ), (353 / 1600 : ℚ)⟩
  r := (10751081050287 / 12500000000000 : ℚ)
  w := (2054800979617 / 2000000000000 : ℚ)
  center := (7059 / 32000 : ℚ)
  supportValue := (8442547164247217 / 10000000000000000 : ℚ)
  supportSlope := (1440969147936233 / 250000000000000 : ℚ)
  oldCenter := (8442547164247217 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_580
  oldLo := (10550000000000001 / 12500000000000000 : ℚ)
  oldHi := (84450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1939]
}

def cell_6687 : Cell := { cellDefaults with
  domain := ⟨(353 / 1600 : ℚ), (3531 / 16000 : ℚ)⟩
  r := (10751081050287 / 12500000000000 : ℚ)
  w := (2054800979617 / 2000000000000 : ℚ)
  center := (7061 / 32000 : ℚ)
  supportValue := (8446150069667443 / 10000000000000000 : ℚ)
  supportSlope := (5765201001480591 / 1000000000000000 : ℚ)
  oldCenter := (8446150069667443 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_580
  oldLo := (10550000000000001 / 12500000000000000 : ℚ)
  oldHi := (10562500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1939, piece_1940]
}

def cell_6688 : Cell := { cellDefaults with
  domain := ⟨(3531 / 16000 : ℚ), (883 / 4000 : ℚ)⟩
  r := (10751081050287 / 12500000000000 : ℚ)
  w := (2054800979617 / 2000000000000 : ℚ)
  center := (7063 / 32000 : ℚ)
  supportValue := (844975391032023 / 1000000000000000 : ℚ)
  supportSlope := (5766781601215243 / 1000000000000000 : ℚ)
  oldCenter := (844975391032023 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_580
  oldLo := (84450000000000003 / 100000000000000000 : ℚ)
  oldHi := (84550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1940, piece_1941, piece_1942]
}

def cell_6689 : Cell := { cellDefaults with
  domain := ⟨(883 / 4000 : ℚ), (3533 / 16000 : ℚ)⟩
  r := (10751081050287 / 12500000000000 : ℚ)
  w := (2054800979617 / 2000000000000 : ℚ)
  center := (1413 / 6400 : ℚ)
  supportValue := (8453358491880039 / 10000000000000000 : ℚ)
  supportSlope := (11536720994357097 / 2000000000000000 : ℚ)
  oldCenter := (8453358491880039 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_580
  oldLo := (2112849162011173 / 2500000000000000 : ℚ)
  oldHi := (84600000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1942, piece_1943]
}

def cell_6690 : Cell := { cellDefaults with
  domain := ⟨(3533 / 16000 : ℚ), (1767 / 8000 : ℚ)⟩
  r := (10751081050287 / 12500000000000 : ℚ)
  w := (2054800979617 / 2000000000000 : ℚ)
  center := (7067 / 32000 : ℚ)
  supportValue := (8456964060923293 / 10000000000000000 : ℚ)
  supportSlope := (1442379810868477 / 250000000000000 : ℚ)
  oldCenter := (8456964060923293 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_580
  oldLo := (84550000000000003 / 100000000000000000 : ℚ)
  oldHi := (84600000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1943]
}

def cell_6691 : Cell := { cellDefaults with
  domain := ⟨(1767 / 8000 : ℚ), (707 / 3200 : ℚ)⟩
  r := (10751081050287 / 12500000000000 : ℚ)
  w := (2054800979617 / 2000000000000 : ℚ)
  center := (7069 / 32000 : ℚ)
  supportValue := (4230285308356539 / 5000000000000000 : ℚ)
  supportSlope := (9233668658743 / 1600000000000 : ℚ)
  oldCenter := (4230285308356539 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_580
  oldLo := (84550000000000003 / 100000000000000000 : ℚ)
  oldHi := (84650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1943, piece_1944]
}

def cell_6692 : Cell := { cellDefaults with
  domain := ⟨(707 / 3200 : ℚ), (221 / 1000 : ℚ)⟩
  r := (10751081050287 / 12500000000000 : ℚ)
  w := (2054800979617 / 2000000000000 : ℚ)
  center := (7071 / 32000 : ℚ)
  supportValue := (1692835596840407 / 2000000000000000 : ℚ)
  supportSlope := (1154524238357979 / 200000000000000 : ℚ)
  oldCenter := (1692835596840407 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_580
  oldLo := (84600000000000009 / 100000000000000000 : ℚ)
  oldHi := (84700000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1944, piece_1945]
}

def cell_6693 : Cell := { cellDefaults with
  domain := ⟨(221 / 1000 : ℚ), (3537 / 16000 : ℚ)⟩
  r := (17186693181643 / 20000000000000 : ℚ)
  w := (2569192168533 / 2500000000000 : ℚ)
  center := (7073 / 32000 : ℚ)
  supportValue := (4231263205452429 / 5000000000000000 : ℚ)
  supportSlope := (5768986036976287 / 1000000000000000 : ℚ)
  oldCenter := (4231263205452429 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_581
  oldLo := (84600000000000009 / 100000000000000000 : ℚ)
  oldHi := (84650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1944]
}

def cell_6694 : Cell := { cellDefaults with
  domain := ⟨(3537 / 16000 : ℚ), (1769 / 8000 : ℚ)⟩
  r := (17186693181643 / 20000000000000 : ℚ)
  w := (2569192168533 / 2500000000000 : ℚ)
  center := (283 / 1280 : ℚ)
  supportValue := (1058266564141533 / 1250000000000000 : ℚ)
  supportSlope := (5770316678542997 / 1000000000000000 : ℚ)
  oldCenter := (1058266564141533 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_581
  oldLo := (84600000000000009 / 100000000000000000 : ℚ)
  oldHi := (84700000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1944, piece_1945]
}

def cell_6695 : Cell := { cellDefaults with
  domain := ⟨(1769 / 8000 : ℚ), (3539 / 16000 : ℚ)⟩
  r := (17186693181643 / 20000000000000 : ℚ)
  w := (2569192168533 / 2500000000000 : ℚ)
  center := (7077 / 32000 : ℚ)
  supportValue := (2117434886443277 / 2500000000000000 : ℚ)
  supportSlope := (1154378752331553 / 200000000000000 : ℚ)
  oldCenter := (2117434886443277 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_581
  oldLo := (84650000000000003 / 100000000000000000 : ℚ)
  oldHi := (84750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1945, piece_1946]
}

def cell_6696 : Cell := { cellDefaults with
  domain := ⟨(3539 / 16000 : ℚ), (177 / 800 : ℚ)⟩
  r := (17186693181643 / 20000000000000 : ℚ)
  w := (2569192168533 / 2500000000000 : ℚ)
  center := (7079 / 32000 : ℚ)
  supportValue := (4236673661518509 / 5000000000000000 : ℚ)
  supportSlope := (5773469463253633 / 1000000000000000 : ℚ)
  oldCenter := (4236673661518509 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_581
  oldLo := (84700000000000009 / 100000000000000000 : ℚ)
  oldHi := (84800000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1946, piece_1947]
}

def cell_6697 : Cell := { cellDefaults with
  domain := ⟨(177 / 800 : ℚ), (3541 / 16000 : ℚ)⟩
  r := (17186693181643 / 20000000000000 : ℚ)
  w := (2569192168533 / 2500000000000 : ℚ)
  center := (7081 / 32000 : ℚ)
  supportValue := (8476956085651729 / 10000000000000000 : ℚ)
  supportSlope := (1154925198584067 / 200000000000000 : ℚ)
  oldCenter := (8476956085651729 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_581
  oldLo := (84750000000000003 / 100000000000000000 : ℚ)
  oldHi := (84800000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1947]
}

def cell_6698 : Cell := { cellDefaults with
  domain := ⟨(3541 / 16000 : ℚ), (1771 / 8000 : ℚ)⟩
  r := (17186693181643 / 20000000000000 : ℚ)
  w := (2569192168533 / 2500000000000 : ℚ)
  center := (7083 / 32000 : ℚ)
  supportValue := (848056583275179 / 1000000000000000 : ℚ)
  supportSlope := (1444037436330703 / 250000000000000 : ℚ)
  oldCenter := (848056583275179 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_581
  oldLo := (84750000000000003 / 100000000000000000 : ℚ)
  oldHi := (84850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1947, piece_1948]
}

def cell_6699 : Cell := { cellDefaults with
  domain := ⟨(1771 / 8000 : ℚ), (3543 / 16000 : ℚ)⟩
  r := (17186693181643 / 20000000000000 : ℚ)
  w := (2569192168533 / 2500000000000 : ℚ)
  center := (1417 / 6400 : ℚ)
  supportValue := (66282628050623 / 78125000000000 : ℚ)
  supportSlope := (722215570252871 / 125000000000000 : ℚ)
  oldCenter := (66282628050623 / 78125000000000 : ℚ)
  newCoefficients := coefficients_581
  oldLo := (84800000000000009 / 100000000000000000 : ℚ)
  oldHi := (84900000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1948, piece_1949]
}

theorem check_6650 : SourceCertificateFamily.RightNormalized.check cell_6650 = true := by
  decide +kernel

theorem check_6651 : SourceCertificateFamily.RightNormalized.check cell_6651 = true := by
  decide +kernel

theorem check_6652 : SourceCertificateFamily.RightNormalized.check cell_6652 = true := by
  decide +kernel

theorem check_6653 : SourceCertificateFamily.RightNormalized.check cell_6653 = true := by
  decide +kernel

theorem check_6654 : SourceCertificateFamily.RightNormalized.check cell_6654 = true := by
  decide +kernel

theorem check_6655 : SourceCertificateFamily.RightNormalized.check cell_6655 = true := by
  decide +kernel

theorem check_6656 : SourceCertificateFamily.RightNormalized.check cell_6656 = true := by
  decide +kernel

theorem check_6657 : SourceCertificateFamily.RightNormalized.check cell_6657 = true := by
  decide +kernel

theorem check_6658 : SourceCertificateFamily.RightNormalized.check cell_6658 = true := by
  decide +kernel

theorem check_6659 : SourceCertificateFamily.RightNormalized.check cell_6659 = true := by
  decide +kernel

theorem check_6660 : SourceCertificateFamily.RightNormalized.check cell_6660 = true := by
  decide +kernel

theorem check_6661 : SourceCertificateFamily.RightNormalized.check cell_6661 = true := by
  decide +kernel

theorem check_6662 : SourceCertificateFamily.RightNormalized.check cell_6662 = true := by
  decide +kernel

theorem check_6663 : SourceCertificateFamily.RightNormalized.check cell_6663 = true := by
  decide +kernel

theorem check_6664 : SourceCertificateFamily.RightNormalized.check cell_6664 = true := by
  decide +kernel

theorem check_6665 : SourceCertificateFamily.RightNormalized.check cell_6665 = true := by
  decide +kernel

theorem check_6666 : SourceCertificateFamily.RightNormalized.check cell_6666 = true := by
  decide +kernel

theorem check_6667 : SourceCertificateFamily.RightNormalized.check cell_6667 = true := by
  decide +kernel

theorem check_6668 : SourceCertificateFamily.RightNormalized.check cell_6668 = true := by
  decide +kernel

theorem check_6669 : SourceCertificateFamily.RightNormalized.check cell_6669 = true := by
  decide +kernel

theorem check_6670 : SourceCertificateFamily.RightNormalized.check cell_6670 = true := by
  decide +kernel

theorem check_6671 : SourceCertificateFamily.RightNormalized.check cell_6671 = true := by
  decide +kernel

theorem check_6672 : SourceCertificateFamily.RightNormalized.check cell_6672 = true := by
  decide +kernel

theorem check_6673 : SourceCertificateFamily.RightNormalized.check cell_6673 = true := by
  decide +kernel

theorem check_6674 : SourceCertificateFamily.RightNormalized.check cell_6674 = true := by
  decide +kernel

theorem check_6675 : SourceCertificateFamily.RightNormalized.check cell_6675 = true := by
  decide +kernel

theorem check_6676 : SourceCertificateFamily.RightNormalized.check cell_6676 = true := by
  decide +kernel

theorem check_6677 : SourceCertificateFamily.RightNormalized.check cell_6677 = true := by
  decide +kernel

theorem check_6678 : SourceCertificateFamily.RightNormalized.check cell_6678 = true := by
  decide +kernel

theorem check_6679 : SourceCertificateFamily.RightNormalized.check cell_6679 = true := by
  decide +kernel

theorem check_6680 : SourceCertificateFamily.RightNormalized.check cell_6680 = true := by
  decide +kernel

theorem check_6681 : SourceCertificateFamily.RightNormalized.check cell_6681 = true := by
  decide +kernel

theorem check_6682 : SourceCertificateFamily.RightNormalized.check cell_6682 = true := by
  decide +kernel

theorem check_6683 : SourceCertificateFamily.RightNormalized.check cell_6683 = true := by
  decide +kernel

theorem check_6684 : SourceCertificateFamily.RightNormalized.check cell_6684 = true := by
  decide +kernel

theorem check_6685 : SourceCertificateFamily.RightNormalized.check cell_6685 = true := by
  decide +kernel

theorem check_6686 : SourceCertificateFamily.RightNormalized.check cell_6686 = true := by
  decide +kernel

theorem check_6687 : SourceCertificateFamily.RightNormalized.check cell_6687 = true := by
  decide +kernel

theorem check_6688 : SourceCertificateFamily.RightNormalized.check cell_6688 = true := by
  decide +kernel

theorem check_6689 : SourceCertificateFamily.RightNormalized.check cell_6689 = true := by
  decide +kernel

theorem check_6690 : SourceCertificateFamily.RightNormalized.check cell_6690 = true := by
  decide +kernel

theorem check_6691 : SourceCertificateFamily.RightNormalized.check cell_6691 = true := by
  decide +kernel

theorem check_6692 : SourceCertificateFamily.RightNormalized.check cell_6692 = true := by
  decide +kernel

theorem check_6693 : SourceCertificateFamily.RightNormalized.check cell_6693 = true := by
  decide +kernel

theorem check_6694 : SourceCertificateFamily.RightNormalized.check cell_6694 = true := by
  decide +kernel

theorem check_6695 : SourceCertificateFamily.RightNormalized.check cell_6695 = true := by
  decide +kernel

theorem check_6696 : SourceCertificateFamily.RightNormalized.check cell_6696 = true := by
  decide +kernel

theorem check_6697 : SourceCertificateFamily.RightNormalized.check cell_6697 = true := by
  decide +kernel

theorem check_6698 : SourceCertificateFamily.RightNormalized.check cell_6698 = true := by
  decide +kernel

theorem check_6699 : SourceCertificateFamily.RightNormalized.check cell_6699 = true := by
  decide +kernel

def cells : List Cell := [cell_6650, cell_6651, cell_6652, cell_6653, cell_6654, cell_6655, cell_6656, cell_6657, cell_6658, cell_6659, cell_6660, cell_6661, cell_6662, cell_6663, cell_6664, cell_6665, cell_6666, cell_6667, cell_6668, cell_6669, cell_6670, cell_6671, cell_6672, cell_6673, cell_6674, cell_6675, cell_6676, cell_6677, cell_6678, cell_6679, cell_6680, cell_6681, cell_6682, cell_6683, cell_6684, cell_6685, cell_6686, cell_6687, cell_6688, cell_6689, cell_6690, cell_6691, cell_6692, cell_6693, cell_6694, cell_6695, cell_6696, cell_6697, cell_6698, cell_6699]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_6650, SourceCertificateFamily.of_right_checked check_6651, SourceCertificateFamily.of_right_checked check_6652, SourceCertificateFamily.of_right_checked check_6653, SourceCertificateFamily.of_right_checked check_6654, SourceCertificateFamily.of_right_checked check_6655, SourceCertificateFamily.of_right_checked check_6656, SourceCertificateFamily.of_right_checked check_6657, SourceCertificateFamily.of_right_checked check_6658, SourceCertificateFamily.of_right_checked check_6659, SourceCertificateFamily.of_right_checked check_6660, SourceCertificateFamily.of_right_checked check_6661, SourceCertificateFamily.of_right_checked check_6662, SourceCertificateFamily.of_right_checked check_6663, SourceCertificateFamily.of_right_checked check_6664, SourceCertificateFamily.of_right_checked check_6665, SourceCertificateFamily.of_right_checked check_6666, SourceCertificateFamily.of_right_checked check_6667, SourceCertificateFamily.of_right_checked check_6668, SourceCertificateFamily.of_right_checked check_6669, SourceCertificateFamily.of_right_checked check_6670, SourceCertificateFamily.of_right_checked check_6671, SourceCertificateFamily.of_right_checked check_6672, SourceCertificateFamily.of_right_checked check_6673, SourceCertificateFamily.of_right_checked check_6674, SourceCertificateFamily.of_right_checked check_6675, SourceCertificateFamily.of_right_checked check_6676, SourceCertificateFamily.of_right_checked check_6677, SourceCertificateFamily.of_right_checked check_6678, SourceCertificateFamily.of_right_checked check_6679, SourceCertificateFamily.of_right_checked check_6680, SourceCertificateFamily.of_right_checked check_6681, SourceCertificateFamily.of_right_checked check_6682, SourceCertificateFamily.of_right_checked check_6683, SourceCertificateFamily.of_right_checked check_6684, SourceCertificateFamily.of_right_checked check_6685, SourceCertificateFamily.of_right_checked check_6686, SourceCertificateFamily.of_right_checked check_6687, SourceCertificateFamily.of_right_checked check_6688, SourceCertificateFamily.of_right_checked check_6689, SourceCertificateFamily.of_right_checked check_6690, SourceCertificateFamily.of_right_checked check_6691, SourceCertificateFamily.of_right_checked check_6692, SourceCertificateFamily.of_right_checked check_6693, SourceCertificateFamily.of_right_checked check_6694, SourceCertificateFamily.of_right_checked check_6695, SourceCertificateFamily.of_right_checked check_6696, SourceCertificateFamily.of_right_checked check_6697, SourceCertificateFamily.of_right_checked check_6698, SourceCertificateFamily.of_right_checked check_6699, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0133

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0133
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0133
open AnalyticBounds.ExpressionCertificate

theorem linked_6650 : Linked cell_6650 pieces := by
  refine ⟨piece_574,piece_574_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6650,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1918_mem

theorem linked_6651 : Linked cell_6651 pieces := by
  refine ⟨piece_574,piece_574_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6651,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1918_mem
    · exact piece_1919_mem

theorem linked_6652 : Linked cell_6652 pieces := by
  refine ⟨piece_575,piece_575_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6652,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1918_mem
    · exact piece_1919_mem

theorem linked_6653 : Linked cell_6653 pieces := by
  refine ⟨piece_575,piece_575_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6653,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1919_mem
    · exact piece_1920_mem

theorem linked_6654 : Linked cell_6654 pieces := by
  refine ⟨piece_575,piece_575_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6654,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1920_mem

theorem linked_6655 : Linked cell_6655 pieces := by
  refine ⟨piece_575,piece_575_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6655,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1920_mem
    · exact piece_1921_mem

theorem linked_6656 : Linked cell_6656 pieces := by
  refine ⟨piece_575,piece_575_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6656,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1921_mem
    · exact piece_1922_mem

theorem linked_6657 : Linked cell_6657 pieces := by
  refine ⟨piece_575,piece_575_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6657,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1922_mem

theorem linked_6658 : Linked cell_6658 pieces := by
  refine ⟨piece_575,piece_575_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6658,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1922_mem
    · exact piece_1923_mem

theorem linked_6659 : Linked cell_6659 pieces := by
  refine ⟨piece_575,piece_575_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6659,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1923_mem
    · exact piece_1924_mem

theorem linked_6660 : Linked cell_6660 pieces := by
  refine ⟨piece_576,piece_576_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6660,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1923_mem
    · exact piece_1924_mem

theorem linked_6661 : Linked cell_6661 pieces := by
  refine ⟨piece_576,piece_576_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6661,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1924_mem

theorem linked_6662 : Linked cell_6662 pieces := by
  refine ⟨piece_576,piece_576_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6662,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1924_mem
    · exact piece_1925_mem

theorem linked_6663 : Linked cell_6663 pieces := by
  refine ⟨piece_576,piece_576_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6663,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1925_mem
    · exact piece_1926_mem

theorem linked_6664 : Linked cell_6664 pieces := by
  refine ⟨piece_576,piece_576_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6664,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1926_mem

theorem linked_6665 : Linked cell_6665 pieces := by
  refine ⟨piece_576,piece_576_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6665,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1926_mem
    · exact piece_1927_mem

theorem linked_6666 : Linked cell_6666 pieces := by
  refine ⟨piece_576,piece_576_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6666,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1927_mem
    · exact piece_1928_mem

theorem linked_6667 : Linked cell_6667 pieces := by
  refine ⟨piece_576,piece_576_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6667,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1928_mem
    · exact piece_1929_mem

theorem linked_6668 : Linked cell_6668 pieces := by
  refine ⟨piece_577,piece_577_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6668,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1928_mem

theorem linked_6669 : Linked cell_6669 pieces := by
  refine ⟨piece_577,piece_577_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6669,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1928_mem
    · exact piece_1929_mem
    · exact piece_1930_mem

theorem linked_6670 : Linked cell_6670 pieces := by
  refine ⟨piece_577,piece_577_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6670,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1930_mem
    · exact piece_1931_mem

theorem linked_6671 : Linked cell_6671 pieces := by
  refine ⟨piece_577,piece_577_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6671,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1931_mem

theorem linked_6672 : Linked cell_6672 pieces := by
  refine ⟨piece_577,piece_577_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6672,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1931_mem
    · exact piece_1932_mem

theorem linked_6673 : Linked cell_6673 pieces := by
  refine ⟨piece_577,piece_577_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6673,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1932_mem
    · exact piece_1933_mem

theorem linked_6674 : Linked cell_6674 pieces := by
  refine ⟨piece_577,piece_577_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6674,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1933_mem
    · exact piece_1934_mem

theorem linked_6675 : Linked cell_6675 pieces := by
  refine ⟨piece_577,piece_577_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6675,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1934_mem

theorem linked_6676 : Linked cell_6676 pieces := by
  refine ⟨piece_578,piece_578_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6676,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1933_mem
    · exact piece_1934_mem

theorem linked_6677 : Linked cell_6677 pieces := by
  refine ⟨piece_578,piece_578_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6677,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1934_mem
    · exact piece_1935_mem

theorem linked_6678 : Linked cell_6678 pieces := by
  refine ⟨piece_578,piece_578_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6678,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1935_mem

theorem linked_6679 : Linked cell_6679 pieces := by
  refine ⟨piece_579,piece_579_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6679,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1935_mem
    · exact piece_1936_mem

theorem linked_6680 : Linked cell_6680 pieces := by
  refine ⟨piece_579,piece_579_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6680,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1936_mem

theorem linked_6681 : Linked cell_6681 pieces := by
  refine ⟨piece_579,piece_579_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6681,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1936_mem
    · exact piece_1937_mem

theorem linked_6682 : Linked cell_6682 pieces := by
  refine ⟨piece_579,piece_579_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6682,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1937_mem
    · exact piece_1938_mem

theorem linked_6683 : Linked cell_6683 pieces := by
  refine ⟨piece_579,piece_579_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6683,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1938_mem

theorem linked_6684 : Linked cell_6684 pieces := by
  refine ⟨piece_579,piece_579_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6684,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1938_mem
    · exact piece_1939_mem

theorem linked_6685 : Linked cell_6685 pieces := by
  refine ⟨piece_580,piece_580_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6685,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1938_mem
    · exact piece_1939_mem

theorem linked_6686 : Linked cell_6686 pieces := by
  refine ⟨piece_580,piece_580_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6686,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1939_mem

theorem linked_6687 : Linked cell_6687 pieces := by
  refine ⟨piece_580,piece_580_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6687,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1939_mem
    · exact piece_1940_mem

theorem linked_6688 : Linked cell_6688 pieces := by
  refine ⟨piece_580,piece_580_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6688,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1940_mem
    · exact piece_1941_mem
    · exact piece_1942_mem

theorem linked_6689 : Linked cell_6689 pieces := by
  refine ⟨piece_580,piece_580_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6689,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1942_mem
    · exact piece_1943_mem

theorem linked_6690 : Linked cell_6690 pieces := by
  refine ⟨piece_580,piece_580_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6690,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1943_mem

theorem linked_6691 : Linked cell_6691 pieces := by
  refine ⟨piece_580,piece_580_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6691,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1943_mem
    · exact piece_1944_mem

theorem linked_6692 : Linked cell_6692 pieces := by
  refine ⟨piece_580,piece_580_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6692,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1944_mem
    · exact piece_1945_mem

theorem linked_6693 : Linked cell_6693 pieces := by
  refine ⟨piece_581,piece_581_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6693,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1944_mem

theorem linked_6694 : Linked cell_6694 pieces := by
  refine ⟨piece_581,piece_581_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6694,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1944_mem
    · exact piece_1945_mem

theorem linked_6695 : Linked cell_6695 pieces := by
  refine ⟨piece_581,piece_581_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6695,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1945_mem
    · exact piece_1946_mem

theorem linked_6696 : Linked cell_6696 pieces := by
  refine ⟨piece_581,piece_581_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6696,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1946_mem
    · exact piece_1947_mem

theorem linked_6697 : Linked cell_6697 pieces := by
  refine ⟨piece_581,piece_581_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6697,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1947_mem

theorem linked_6698 : Linked cell_6698 pieces := by
  refine ⟨piece_581,piece_581_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6698,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1947_mem
    · exact piece_1948_mem

theorem linked_6699 : Linked cell_6699 pieces := by
  refine ⟨piece_581,piece_581_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6699,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1948_mem
    · exact piece_1949_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0133.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0133.cells,List.forall_mem_cons]
  exact ⟨linked_6650, linked_6651, linked_6652, linked_6653, linked_6654, linked_6655, linked_6656, linked_6657, linked_6658, linked_6659, linked_6660, linked_6661, linked_6662, linked_6663, linked_6664, linked_6665, linked_6666, linked_6667, linked_6668, linked_6669, linked_6670, linked_6671, linked_6672, linked_6673, linked_6674, linked_6675, linked_6676, linked_6677, linked_6678, linked_6679, linked_6680, linked_6681, linked_6682, linked_6683, linked_6684, linked_6685, linked_6686, linked_6687, linked_6688, linked_6689, linked_6690, linked_6691, linked_6692, linked_6693, linked_6694, linked_6695, linked_6696, linked_6697, linked_6698, linked_6699, by simp⟩

theorem covered : covers (1747 / 8000 : ℚ) (3543 / 16000 : ℚ)
    (SourceCertificates.Chunk0133.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0133
