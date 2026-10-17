import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0223
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(113525000000000003 / 200000000000000000 : ℚ), (56775000000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (2298469332269 / 4000000000000 : ℚ)
  w := (14144036949999 / 10000000000000 : ℚ)
  center := (227075000000000009 / 400000000000000000 : ℚ)
  supportValue := (9171760132029419 / 25000000000000000 : ℚ)
  supportSlope := (-15347445351874647 / 10000000000000000 : ℚ)
  oldCenter := (9171760132029419 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1337
  oldLo := (7320000000000001 / 20000000000000000 : ℚ)
  oldHi := (7330000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_897]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_11150 : Cell := { cellDefaults with
  r := (57520860877543 / 100000000000000 : ℚ)
  w := (14150658636593 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1336
  oldLo := (7330000000000001 / 20000000000000000 : ℚ)
  oldHi := (7340000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_898]
}

noncomputable def cell_11151 : Cell := { cellDefaults with
  domain := ⟨(56775000000000003 / 100000000000000000 : ℚ), (113575000000000009 / 200000000000000000 : ℚ)⟩
  r := (57520860877543 / 100000000000000 : ℚ)
  w := (14150658636593 / 10000000000000 : ℚ)
  center := (45425000000000003 / 80000000000000000 : ℚ)
  supportValue := (36667866969530427 / 100000000000000000 : ℚ)
  supportSlope := (-1533025510297919 / 1000000000000000 : ℚ)
  oldCenter := (36667866969530427 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1336
  oldLo := (7330000000000001 / 20000000000000000 : ℚ)
  oldHi := (7340000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_898]
}

noncomputable def cell_11152 : Cell := { cellDefaults with
  domain := ⟨(113575000000000009 / 200000000000000000 : ℚ), (28400000000000003 / 50000000000000000 : ℚ)⟩
  r := (57520860877543 / 100000000000000 : ℚ)
  w := (14150658636593 / 10000000000000 : ℚ)
  center := (227175000000000021 / 400000000000000000 : ℚ)
  supportValue := (3664873924529859 / 10000000000000000 : ℚ)
  supportSlope := (-1915201285032967 / 1250000000000000 : ℚ)
  oldCenter := (3664873924529859 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1336
  oldHi := (7340000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_897, piece_898]
}

noncomputable def cell_11153 : Cell := { cellDefaults with
  domain := ⟨(28400000000000003 / 50000000000000000 : ℚ), (227250000000000019 / 400000000000000000 : ℚ)⟩
  r := (9198604771 / 16000000000 : ℚ)
  w := (884209009201 / 625000000000 : ℚ)
  center := (454450000000000043 / 800000000000000000 : ℚ)
  supportValue := (3666948645947411 / 10000000000000000 : ℚ)
  supportSlope := (-1532368006056981 / 1000000000000000 : ℚ)
  oldCenter := (3666948645947411 / 10000000000000000 : ℚ)
  oldLo := (7330000000000001 / 20000000000000000 : ℚ)
  oldHi := (7340000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_898]
}

noncomputable def cell_11154 : Cell := { cellDefaults with
  domain := ⟨(227250000000000019 / 400000000000000000 : ℚ), (113650000000000007 / 200000000000000000 : ℚ)⟩
  r := (9198604771 / 16000000000 : ℚ)
  w := (884209009201 / 625000000000 : ℚ)
  center := (454550000000000033 / 800000000000000000 : ℚ)
  supportValue := (36650368214728707 / 100000000000000000 : ℚ)
  supportSlope := (-7656888650312209 / 5000000000000000 : ℚ)
  oldCenter := (36650368214728707 / 100000000000000000 : ℚ)
  oldHi := (7340000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_897, piece_898]
}

noncomputable def cell_11155 : Cell := { cellDefaults with
  domain := ⟨(113650000000000007 / 200000000000000000 : ℚ), (227350000000000009 / 400000000000000000 : ℚ)⟩
  r := (9198604771 / 16000000000 : ℚ)
  w := (884209009201 / 625000000000 : ℚ)
  center := (454650000000000023 / 800000000000000000 : ℚ)
  supportValue := (2289450106788251 / 6250000000000000 : ℚ)
  supportSlope := (-239130337194467 / 156250000000000 : ℚ)
  oldCenter := (2289450106788251 / 6250000000000000 : ℚ)
  oldPieces := [piece_897]
}

noncomputable def cell_11156 : Cell := { cellDefaults with
  domain := ⟨(227350000000000009 / 400000000000000000 : ℚ), (56850000000000001 / 100000000000000000 : ℚ)⟩
  r := (9198604771 / 16000000000 : ℚ)
  w := (884209009201 / 625000000000 : ℚ)
  center := (454750000000000013 / 800000000000000000 : ℚ)
  supportValue := (3661208199858809 / 10000000000000000 : ℚ)
  supportSlope := (-955450073300097 / 625000000000000 : ℚ)
  oldCenter := (3661208199858809 / 10000000000000000 : ℚ)
  oldPieces := [piece_897]
}

noncomputable def cell_11157 : Cell := { cellDefaults with
  domain := ⟨(56850000000000001 / 100000000000000000 : ℚ), (355377094972067 / 625000000000000 : ℚ)⟩
  center := (113710335195530721 / 200000000000000000 : ℚ)
  supportValue := (2289654483424949 / 6250000000000000 : ℚ)
  supportSlope := (-239051103105717 / 156250000000000 : ℚ)
  oldCenter := (2289654483424949 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1338
  oldPieces := [piece_897]
}

noncomputable def cell_11158 : Cell := { cellDefaults with
  domain := ⟨(355377094972067 / 625000000000000 : ℚ), (113740502793296083 / 200000000000000000 : ℚ)⟩
  center := (227461173184357523 / 400000000000000000 : ℚ)
  supportValue := (1830949359218211 / 5000000000000000 : ℚ)
  supportSlope := (-152853875392067 / 100000000000000 : ℚ)
  oldCenter := (1830949359218211 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1339
  oldPieces := [piece_897]
}

noncomputable def cell_11159 : Cell := { cellDefaults with
  domain := ⟨(113740502793296083 / 200000000000000000 : ℚ), (56880167597765363 / 100000000000000000 : ℚ)⟩
  center := (227500837988826809 / 400000000000000000 : ℚ)
  supportValue := (915096555770609 / 2500000000000000 : ℚ)
  supportSlope := (-190944300561241 / 125000000000000 : ℚ)
  oldCenter := (915096555770609 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1339
  oldLo := (7310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_896, piece_897]
}

noncomputable def cell_11160 : Cell := { cellDefaults with
  domain := ⟨(56880167597765363 / 100000000000000000 : ℚ), (113780167597765369 / 200000000000000000 : ℚ)⟩
  center := (45508100558659219 / 80000000000000000 : ℚ)
  supportValue := (3658868835456337 / 10000000000000000 : ℚ)
  supportSlope := (-7636624056936977 / 5000000000000000 : ℚ)
  oldCenter := (3658868835456337 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1339
  oldLo := (7310000000000001 / 20000000000000000 : ℚ)
  oldHi := (7320000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_896]
}

noncomputable def cell_11161 : Cell := { cellDefaults with
  domain := ⟨(113780167597765369 / 200000000000000000 : ℚ), (28450000000000003 / 50000000000000000 : ℚ)⟩
  center := (227580167597765381 / 400000000000000000 : ℚ)
  supportValue := (2285846864792581 / 6250000000000000 : ℚ)
  supportSlope := (-3814912699164249 / 2500000000000000 : ℚ)
  oldCenter := (2285846864792581 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1339
  oldLo := (7310000000000001 / 20000000000000000 : ℚ)
  oldHi := (7320000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_896]
}

noncomputable def cell_11162 : Cell := { cellDefaults with
  domain := ⟨(28450000000000003 / 50000000000000000 : ℚ), (227650000000000019 / 400000000000000000 : ℚ)⟩
  r := (57432219746847 / 100000000000000 : ℚ)
  w := (3535183739229 / 2500000000000 : ℚ)
  center := (455250000000000043 / 800000000000000000 : ℚ)
  supportValue := (3659624986158709 / 10000000000000000 : ℚ)
  supportSlope := (-763375265359821 / 500000000000000 : ℚ)
  oldCenter := (3659624986158709 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1340
  oldLo := (7310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_896, piece_897]
}

noncomputable def cell_11163 : Cell := { cellDefaults with
  domain := ⟨(227650000000000019 / 400000000000000000 : ℚ), (113850000000000007 / 200000000000000000 : ℚ)⟩
  r := (57432219746847 / 100000000000000 : ℚ)
  w := (3535183739229 / 2500000000000 : ℚ)
  center := (455350000000000033 / 800000000000000000 : ℚ)
  supportValue := (7315428981773019 / 20000000000000000 : ℚ)
  supportSlope := (-1525490159093909 / 1000000000000000 : ℚ)
  oldCenter := (7315428981773019 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1340
  oldLo := (7310000000000001 / 20000000000000000 : ℚ)
  oldHi := (7320000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_896]
}

noncomputable def cell_11164 : Cell := { cellDefaults with
  domain := ⟨(113850000000000007 / 200000000000000000 : ℚ), (227750000000000009 / 400000000000000000 : ℚ)⟩
  r := (57432219746847 / 100000000000000 : ℚ)
  w := (3535183739229 / 2500000000000 : ℚ)
  center := (455450000000000023 / 800000000000000000 : ℚ)
  supportValue := (3655811254960289 / 10000000000000000 : ℚ)
  supportSlope := (-3047793638524559 / 2000000000000000 : ℚ)
  oldCenter := (3655811254960289 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1340
  oldLo := (7300000000000001 / 20000000000000000 : ℚ)
  oldHi := (7320000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_895, piece_896]
}

noncomputable def cell_11165 : Cell := { cellDefaults with
  domain := ⟨(227750000000000009 / 400000000000000000 : ℚ), (56950000000000001 / 100000000000000000 : ℚ)⟩
  r := (57432219746847 / 100000000000000 : ℚ)
  w := (3535183739229 / 2500000000000 : ℚ)
  center := (455550000000000013 / 800000000000000000 : ℚ)
  supportValue := (730780790001001 / 2000000000000000 : ℚ)
  supportSlope := (-3808947868513649 / 2500000000000000 : ℚ)
  oldCenter := (730780790001001 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1340
  oldLo := (7300000000000001 / 20000000000000000 : ℚ)
  oldHi := (7310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_895]
}

noncomputable def cell_11166 : Cell := { cellDefaults with
  domain := ⟨(56950000000000001 / 100000000000000000 : ℚ), (227850000000000009 / 400000000000000000 : ℚ)⟩
  r := (2870137117461 / 5000000000000 : ℚ)
  w := (3534360395321 / 2500000000000 : ℚ)
  center := (455650000000000013 / 800000000000000000 : ℚ)
  supportValue := (1827984514283133 / 5000000000000000 : ℚ)
  supportSlope := (-3046260375588667 / 2000000000000000 : ℚ)
  oldCenter := (1827984514283133 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1341
  oldLo := (7310000000000001 / 20000000000000000 : ℚ)
  oldHi := (7320000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_896]
}

noncomputable def cell_11167 : Cell := { cellDefaults with
  domain := ⟨(227850000000000009 / 400000000000000000 : ℚ), (113950000000000007 / 200000000000000000 : ℚ)⟩
  r := (2870137117461 / 5000000000000 : ℚ)
  w := (3534360395321 / 2500000000000 : ℚ)
  center := (455750000000000023 / 800000000000000000 : ℚ)
  supportValue := (36540678137373733 / 100000000000000000 : ℚ)
  supportSlope := (-15229158099624027 / 10000000000000000 : ℚ)
  oldCenter := (36540678137373733 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1341
  oldLo := (7300000000000001 / 20000000000000000 : ℚ)
  oldHi := (7320000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_895, piece_896]
}

noncomputable def cell_11168 : Cell := { cellDefaults with
  domain := ⟨(113950000000000007 / 200000000000000000 : ℚ), (227950000000000019 / 400000000000000000 : ℚ)⟩
  r := (2870137117461 / 5000000000000 : ℚ)
  w := (3534360395321 / 2500000000000 : ℚ)
  center := (455850000000000033 / 800000000000000000 : ℚ)
  supportValue := (913040665881951 / 2500000000000000 : ℚ)
  supportSlope := (-3042439594109021 / 2000000000000000 : ℚ)
  oldCenter := (913040665881951 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1341
  oldLo := (7300000000000001 / 20000000000000000 : ℚ)
  oldHi := (7310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_895]
}

noncomputable def cell_11169 : Cell := { cellDefaults with
  domain := ⟨(227950000000000019 / 400000000000000000 : ℚ), (28500000000000003 / 50000000000000000 : ℚ)⟩
  r := (2870137117461 / 5000000000000 : ℚ)
  w := (3534360395321 / 2500000000000 : ℚ)
  center := (455950000000000043 / 800000000000000000 : ℚ)
  supportValue := (3650264758458513 / 10000000000000000 : ℚ)
  supportSlope := (-7600320192685879 / 5000000000000000 : ℚ)
  oldCenter := (3650264758458513 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1341
  oldLo := (7290000000000001 / 20000000000000000 : ℚ)
  oldHi := (7310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_894, piece_895]
}

noncomputable def cell_11170 : Cell := { cellDefaults with
  domain := ⟨(28500000000000003 / 50000000000000000 : ℚ), (228050000000000019 / 400000000000000000 : ℚ)⟩
  r := (28686649995193 / 50000000000000 : ℚ)
  w := (14134157385937 / 10000000000000 : ℚ)
  center := (456050000000000043 / 800000000000000000 : ℚ)
  supportValue := (7304643849437239 / 20000000000000000 : ℚ)
  supportSlope := (-1900711008899959 / 1250000000000000 : ℚ)
  oldCenter := (7304643849437239 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1342
  oldLo := (7300000000000001 / 20000000000000000 : ℚ)
  oldHi := (7310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_895]
}

noncomputable def cell_11171 : Cell := { cellDefaults with
  domain := ⟨(228050000000000019 / 400000000000000000 : ℚ), (114050000000000007 / 200000000000000000 : ℚ)⟩
  r := (28686649995193 / 50000000000000 : ℚ)
  w := (14134157385937 / 10000000000000 : ℚ)
  center := (456150000000000033 / 800000000000000000 : ℚ)
  supportValue := (18252124163359773 / 50000000000000000 : ℚ)
  supportSlope := (-379821763229631 / 250000000000000 : ℚ)
  oldCenter := (18252124163359773 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1342
  oldLo := (7290000000000001 / 20000000000000000 : ℚ)
  oldHi := (7310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_894, piece_895]
}

noncomputable def cell_11172 : Cell := { cellDefaults with
  domain := ⟨(114050000000000007 / 200000000000000000 : ℚ), (228150000000000009 / 400000000000000000 : ℚ)⟩
  r := (28686649995193 / 50000000000000 : ℚ)
  w := (14134157385937 / 10000000000000 : ℚ)
  center := (456250000000000023 / 800000000000000000 : ℚ)
  supportValue := (1824261644704407 / 5000000000000000 : ℚ)
  supportSlope := (-3796677861700839 / 2500000000000000 : ℚ)
  oldCenter := (1824261644704407 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1342
  oldLo := (7290000000000001 / 20000000000000000 : ℚ)
  oldHi := (7300000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_894]
}

noncomputable def cell_11173 : Cell := { cellDefaults with
  domain := ⟨(228150000000000009 / 400000000000000000 : ℚ), (57050000000000001 / 100000000000000000 : ℚ)⟩
  r := (28686649995193 / 50000000000000 : ℚ)
  w := (14134157385937 / 10000000000000 : ℚ)
  center := (456350000000000013 / 800000000000000000 : ℚ)
  supportValue := (1823313007838863 / 5000000000000000 : ℚ)
  supportSlope := (-3792418756321349 / 2500000000000000 : ℚ)
  oldCenter := (1823313007838863 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1342
  oldLo := (7290000000000001 / 20000000000000000 : ℚ)
  oldHi := (7300000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_894]
}

noncomputable def cell_11174 : Cell := { cellDefaults with
  domain := ⟨(57050000000000001 / 100000000000000000 : ℚ), (228250000000000009 / 400000000000000000 : ℚ)⟩
  r := (71679863287 / 125000000000 : ℚ)
  w := (3532719605039 / 2500000000000 : ℚ)
  center := (456450000000000013 / 800000000000000000 : ℚ)
  supportValue := (1824341320848619 / 5000000000000000 : ℚ)
  supportSlope := (-3795056308603837 / 2500000000000000 : ℚ)
  oldCenter := (1824341320848619 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1343
  oldLo := (7290000000000001 / 20000000000000000 : ℚ)
  oldHi := (7300000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_894]
}

noncomputable def cell_11175 : Cell := { cellDefaults with
  domain := ⟨(228250000000000009 / 400000000000000000 : ℚ), (114150000000000007 / 200000000000000000 : ℚ)⟩
  r := (71679863287 / 125000000000 : ℚ)
  w := (3532719605039 / 2500000000000 : ℚ)
  center := (456550000000000023 / 800000000000000000 : ℚ)
  supportValue := (36467861779168603 / 100000000000000000 : ℚ)
  supportSlope := (-3790800503273471 / 2500000000000000 : ℚ)
  oldCenter := (36467861779168603 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1343
  oldLo := (7290000000000001 / 20000000000000000 : ℚ)
  oldHi := (7300000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_894]
}

noncomputable def cell_11176 : Cell := { cellDefaults with
  domain := ⟨(114150000000000007 / 200000000000000000 : ℚ), (228350000000000019 / 400000000000000000 : ℚ)⟩
  r := (71679863287 / 125000000000 : ℚ)
  w := (3532719605039 / 2500000000000 : ℚ)
  center := (456650000000000033 / 800000000000000000 : ℚ)
  supportValue := (3644894280314139 / 10000000000000000 : ℚ)
  supportSlope := (-94716646042427 / 62500000000000 : ℚ)
  oldCenter := (3644894280314139 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1343
  oldLo := (7280000000000001 / 20000000000000000 : ℚ)
  oldHi := (7300000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_893, piece_894]
}

noncomputable def cell_11177 : Cell := { cellDefaults with
  domain := ⟨(228350000000000019 / 400000000000000000 : ℚ), (28550000000000003 / 50000000000000000 : ℚ)⟩
  r := (71679863287 / 125000000000 : ℚ)
  w := (3532719605039 / 2500000000000 : ℚ)
  center := (456750000000000043 / 800000000000000000 : ℚ)
  supportValue := (18214988114246067 / 50000000000000000 : ℚ)
  supportSlope := (-757216411691721 / 500000000000000 : ℚ)
  oldCenter := (18214988114246067 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1343
  oldLo := (7280000000000001 / 20000000000000000 : ℚ)
  oldHi := (7290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_893]
}

noncomputable def cell_11178 : Cell := { cellDefaults with
  domain := ⟨(28550000000000003 / 50000000000000000 : ℚ), (228450000000000019 / 400000000000000000 : ℚ)⟩
  r := (28657257677751 / 50000000000000 : ℚ)
  w := (14127605866711 / 10000000000000 : ℚ)
  center := (456850000000000043 / 800000000000000000 : ℚ)
  supportValue := (7290106527270881 / 20000000000000000 : ℚ)
  supportSlope := (-15146923956416551 / 10000000000000000 : ℚ)
  oldCenter := (7290106527270881 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1344
  oldLo := (7280000000000001 / 20000000000000000 : ℚ)
  oldHi := (7300000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_893, piece_894]
}

noncomputable def cell_11179 : Cell := { cellDefaults with
  domain := ⟨(228450000000000019 / 400000000000000000 : ℚ), (114250000000000007 / 200000000000000000 : ℚ)⟩
  r := (28657257677751 / 50000000000000 : ℚ)
  w := (14127605866711 / 10000000000000 : ℚ)
  center := (456950000000000033 / 800000000000000000 : ℚ)
  supportValue := (113848670724269 / 312500000000000 : ℚ)
  supportSlope := (-756893736619877 / 500000000000000 : ℚ)
  oldCenter := (113848670724269 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1344
  oldLo := (7280000000000001 / 20000000000000000 : ℚ)
  oldHi := (7290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_893]
}

noncomputable def cell_11180 : Cell := { cellDefaults with
  domain := ⟨(114250000000000007 / 200000000000000000 : ℚ), (228550000000000009 / 400000000000000000 : ℚ)⟩
  r := (28657257677751 / 50000000000000 : ℚ)
  w := (14127605866711 / 10000000000000 : ℚ)
  center := (457050000000000023 / 800000000000000000 : ℚ)
  supportValue := (291301303192337 / 800000000000000 : ℚ)
  supportSlope := (-3024180875718177 / 2000000000000000 : ℚ)
  oldCenter := (291301303192337 / 800000000000000 : ℚ)
  newCoefficients := coefficients_1344
  oldLo := (7280000000000001 / 20000000000000000 : ℚ)
  oldHi := (7290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_893]
}

noncomputable def cell_11181 : Cell := { cellDefaults with
  domain := ⟨(228550000000000009 / 400000000000000000 : ℚ), (57150000000000001 / 100000000000000000 : ℚ)⟩
  r := (28657257677751 / 50000000000000 : ℚ)
  w := (14127605866711 / 10000000000000 : ℚ)
  center := (457150000000000013 / 800000000000000000 : ℚ)
  supportValue := (7278758311031549 / 20000000000000000 : ℚ)
  supportSlope := (-7558276318718393 / 5000000000000000 : ℚ)
  oldCenter := (7278758311031549 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1344
  oldLo := (7270000000000001 / 20000000000000000 : ℚ)
  oldHi := (7290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_891, piece_892, piece_893]
}

noncomputable def cell_11182 : Cell := { cellDefaults with
  domain := ⟨(57150000000000001 / 100000000000000000 : ℚ), (228650000000000009 / 400000000000000000 : ℚ)⟩
  r := (14321293897679 / 25000000000000 : ℚ)
  w := (2824868490303 / 2000000000000 : ℚ)
  center := (457250000000000013 / 800000000000000000 : ℚ)
  supportValue := (1456569611159783 / 4000000000000000 : ℚ)
  supportSlope := (-15114446317959371 / 10000000000000000 : ℚ)
  oldCenter := (1456569611159783 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1345
  oldLo := (7280000000000001 / 20000000000000000 : ℚ)
  oldHi := (7290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_893]
}

noncomputable def cell_11183 : Cell := { cellDefaults with
  domain := ⟨(228650000000000009 / 400000000000000000 : ℚ), (114350000000000007 / 200000000000000000 : ℚ)⟩
  r := (14321293897679 / 25000000000000 : ℚ)
  w := (2824868490303 / 2000000000000 : ℚ)
  center := (457350000000000023 / 800000000000000000 : ℚ)
  supportValue := (3639537858973001 / 10000000000000000 : ℚ)
  supportSlope := (-377720974299407 / 250000000000000 : ℚ)
  oldCenter := (3639537858973001 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1345
  oldLo := (7270000000000001 / 20000000000000000 : ℚ)
  oldHi := (7290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_891, piece_892, piece_893]
}

noncomputable def cell_11184 : Cell := { cellDefaults with
  domain := ⟨(114350000000000007 / 200000000000000000 : ℚ), (228750000000000019 / 400000000000000000 : ℚ)⟩
  r := (14321293897679 / 25000000000000 : ℚ)
  w := (2824868490303 / 2000000000000 : ℚ)
  center := (457450000000000033 / 800000000000000000 : ℚ)
  supportValue := (36376472870060883 / 100000000000000000 : ℚ)
  supportSlope := (-3019140943439833 / 2000000000000000 : ℚ)
  oldCenter := (36376472870060883 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1345
  oldLo := (7270000000000001 / 20000000000000000 : ℚ)
  oldHi := (36396648044692737 / 100000000000000000 : ℚ)
  oldPieces := [piece_891]
}

noncomputable def cell_11185 : Cell := { cellDefaults with
  domain := ⟨(228750000000000019 / 400000000000000000 : ℚ), (28600000000000003 / 50000000000000000 : ℚ)⟩
  r := (14321293897679 / 25000000000000 : ℚ)
  w := (2824868490303 / 2000000000000 : ℚ)
  center := (457550000000000043 / 800000000000000000 : ℚ)
  supportValue := (1136176227199333 / 3125000000000000 : ℚ)
  supportSlope := (-15080252275330877 / 10000000000000000 : ℚ)
  oldCenter := (1136176227199333 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_1345
  oldLo := (9075000000000001 / 25000000000000000 : ℚ)
  oldHi := (36396648044692737 / 100000000000000000 : ℚ)
  oldPieces := [piece_890, piece_891]
}

noncomputable def cell_11186 : Cell := { cellDefaults with
  domain := ⟨(28600000000000003 / 50000000000000000 : ℚ), (228850000000000019 / 400000000000000000 : ℚ)⟩
  r := (57255870568049 / 100000000000000 : ℚ)
  w := (3530271957393 / 2500000000000 : ℚ)
  center := (457650000000000043 / 800000000000000000 : ℚ)
  supportValue := (227362752928301 / 625000000000000 : ℚ)
  supportSlope := (-15089261443722977 / 10000000000000000 : ℚ)
  oldCenter := (227362752928301 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1346
  oldLo := (7270000000000001 / 20000000000000000 : ℚ)
  oldHi := (36396648044692737 / 100000000000000000 : ℚ)
  oldPieces := [piece_891]
}

noncomputable def cell_11187 : Cell := { cellDefaults with
  domain := ⟨(228850000000000019 / 400000000000000000 : ℚ), (114450000000000007 / 200000000000000000 : ℚ)⟩
  r := (57255870568049 / 100000000000000 : ℚ)
  w := (3530271957393 / 2500000000000 : ℚ)
  center := (457750000000000033 / 800000000000000000 : ℚ)
  supportValue := (9089803728958229 / 25000000000000000 : ℚ)
  supportSlope := (-3768136298994239 / 2500000000000000 : ℚ)
  oldCenter := (9089803728958229 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1346
  oldLo := (9075000000000001 / 25000000000000000 : ℚ)
  oldHi := (36396648044692737 / 100000000000000000 : ℚ)
  oldPieces := [piece_890, piece_891]
}

noncomputable def cell_11188 : Cell := { cellDefaults with
  domain := ⟨(114450000000000007 / 200000000000000000 : ℚ), (228950000000000009 / 400000000000000000 : ℚ)⟩
  r := (57255870568049 / 100000000000000 : ℚ)
  w := (3530271957393 / 2500000000000 : ℚ)
  center := (457850000000000023 / 800000000000000000 : ℚ)
  supportValue := (7268069964870787 / 20000000000000000 : ℚ)
  supportSlope := (-3014130395602467 / 2000000000000000 : ℚ)
  oldCenter := (7268069964870787 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1346
  oldLo := (9075000000000001 / 25000000000000000 : ℚ)
  oldHi := (7270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_890]
}

noncomputable def cell_11189 : Cell := { cellDefaults with
  domain := ⟨(228950000000000009 / 400000000000000000 : ℚ), (57250000000000001 / 100000000000000000 : ℚ)⟩
  r := (57255870568049 / 100000000000000 : ℚ)
  w := (3530271957393 / 2500000000000 : ℚ)
  center := (457950000000000013 / 800000000000000000 : ℚ)
  supportValue := (726430442078841 / 2000000000000000 : ℚ)
  supportSlope := (-15053707536278167 / 10000000000000000 : ℚ)
  oldCenter := (726430442078841 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1346
  oldLo := (9075000000000001 / 25000000000000000 : ℚ)
  oldHi := (7270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_890]
}

noncomputable def cell_11190 : Cell := { cellDefaults with
  domain := ⟨(57250000000000001 / 100000000000000000 : ℚ), (229050000000000009 / 400000000000000000 : ℚ)⟩
  r := (7153324691071 / 12500000000000 : ℚ)
  w := (3529459101757 / 2500000000000 : ℚ)
  center := (458050000000000013 / 800000000000000000 : ℚ)
  supportValue := (3634194936170913 / 10000000000000000 : ℚ)
  supportSlope := (-15063160537883307 / 10000000000000000 : ℚ)
  oldCenter := (3634194936170913 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1347
  oldLo := (9075000000000001 / 25000000000000000 : ℚ)
  oldHi := (36396648044692737 / 100000000000000000 : ℚ)
  oldPieces := [piece_890, piece_891]
}

noncomputable def cell_11191 : Cell := { cellDefaults with
  domain := ⟨(229050000000000009 / 400000000000000000 : ℚ), (114550000000000007 / 200000000000000000 : ℚ)⟩
  r := (7153324691071 / 12500000000000 : ℚ)
  w := (3529459101757 / 2500000000000 : ℚ)
  center := (458150000000000023 / 800000000000000000 : ℚ)
  supportValue := (36323104213581703 / 100000000000000000 : ℚ)
  supportSlope := (-3009460952424857 / 2000000000000000 : ℚ)
  oldCenter := (36323104213581703 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1347
  oldLo := (9075000000000001 / 25000000000000000 : ℚ)
  oldHi := (7270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_890]
}

noncomputable def cell_11192 : Cell := { cellDefaults with
  domain := ⟨(114550000000000007 / 200000000000000000 : ℚ), (229150000000000019 / 400000000000000000 : ℚ)⟩
  r := (7153324691071 / 12500000000000 : ℚ)
  w := (3529459101757 / 2500000000000 : ℚ)
  center := (458250000000000033 / 800000000000000000 : ℚ)
  supportValue := (18152165521201047 / 50000000000000000 : ℚ)
  supportSlope := (-15034575813198277 / 10000000000000000 : ℚ)
  oldCenter := (18152165521201047 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1347
  oldLo := (9062500000000001 / 25000000000000000 : ℚ)
  oldHi := (7270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_889, piece_890]
}

noncomputable def cell_11193 : Cell := { cellDefaults with
  domain := ⟨(229150000000000019 / 400000000000000000 : ℚ), (28650000000000003 / 50000000000000000 : ℚ)⟩
  r := (7153324691071 / 12500000000000 : ℚ)
  w := (3529459101757 / 2500000000000 : ℚ)
  center := (458350000000000043 / 800000000000000000 : ℚ)
  supportValue := (3628551341944801 / 10000000000000000 : ℚ)
  supportSlope := (-300575830084041 / 200000000000000 : ℚ)
  oldCenter := (3628551341944801 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1347
  oldLo := (9062500000000001 / 25000000000000000 : ℚ)
  oldHi := (9075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_889]
}

noncomputable def cell_11194 : Cell := { cellDefaults with
  domain := ⟨(28650000000000003 / 50000000000000000 : ℚ), (229250000000000019 / 400000000000000000 : ℚ)⟩
  r := (11439471896027 / 20000000000000 : ℚ)
  w := (1764324304617 / 1250000000000 : ℚ)
  center := (458450000000000043 / 800000000000000000 : ℚ)
  supportValue := (18152945883627067 / 50000000000000000 : ℚ)
  supportSlope := (-939181157579943 / 625000000000000 : ℚ)
  oldCenter := (18152945883627067 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1348
  oldLo := (9062500000000001 / 25000000000000000 : ℚ)
  oldHi := (7270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_889, piece_890]
}

noncomputable def cell_11195 : Cell := { cellDefaults with
  domain := ⟨(229250000000000019 / 400000000000000000 : ℚ), (114650000000000007 / 200000000000000000 : ℚ)⟩
  r := (11439471896027 / 20000000000000 : ℚ)
  w := (1764324304617 / 1250000000000 : ℚ)
  center := (458550000000000033 / 800000000000000000 : ℚ)
  supportValue := (907177093230953 / 2500000000000000 : ℚ)
  supportSlope := (-15022400900851887 / 10000000000000000 : ℚ)
  oldCenter := (907177093230953 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1348
  oldLo := (9062500000000001 / 25000000000000000 : ℚ)
  oldHi := (9075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_889]
}

noncomputable def cell_11196 : Cell := { cellDefaults with
  domain := ⟨(114650000000000007 / 200000000000000000 : ℚ), (229350000000000009 / 400000000000000000 : ℚ)⟩
  r := (11439471896027 / 20000000000000 : ℚ)
  w := (1764324304617 / 1250000000000 : ℚ)
  center := (458650000000000023 / 800000000000000000 : ℚ)
  supportValue := (906707906964351 / 2500000000000000 : ℚ)
  supportSlope := (-7502763491698733 / 5000000000000000 : ℚ)
  oldCenter := (906707906964351 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1348
  oldLo := (9062500000000001 / 25000000000000000 : ℚ)
  oldHi := (9075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_889]
}

noncomputable def cell_11197 : Cell := { cellDefaults with
  domain := ⟨(229350000000000009 / 400000000000000000 : ℚ), (57350000000000001 / 100000000000000000 : ℚ)⟩
  r := (11439471896027 / 20000000000000 : ℚ)
  w := (1764324304617 / 1250000000000 : ℚ)
  center := (458750000000000013 / 800000000000000000 : ℚ)
  supportValue := (1812479740253501 / 5000000000000000 : ℚ)
  supportSlope := (-374917760162001 / 250000000000000 : ℚ)
  oldCenter := (1812479740253501 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1348
  oldLo := (9050000000000001 / 25000000000000000 : ℚ)
  oldHi := (9075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_888, piece_889]
}

noncomputable def cell_11198 : Cell := { cellDefaults with
  domain := ⟨(57350000000000001 / 100000000000000000 : ℚ), (22945000000000001 / 40000000000000000 : ℚ)⟩
  r := (11433631466727 / 20000000000000 : ℚ)
  w := (1763920222697 / 1250000000000 : ℚ)
  center := (229425000000000007 / 400000000000000000 : ℚ)
  supportValue := (18134932247505467 / 50000000000000000 : ℚ)
  supportSlope := (-3749782787933581 / 2500000000000000 : ℚ)
  oldCenter := (18134932247505467 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1349
  oldLo := (9062500000000001 / 25000000000000000 : ℚ)
  oldHi := (9075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_889]
}

noncomputable def cell_11199 : Cell := { cellDefaults with
  domain := ⟨(22945000000000001 / 40000000000000000 : ℚ), (14343750000000001 / 25000000000000000 : ℚ)⟩
  r := (11433631466727 / 20000000000000 : ℚ)
  w := (1763920222697 / 1250000000000 : ℚ)
  center := (229475000000000013 / 400000000000000000 : ℚ)
  supportValue := (3625115145969159 / 10000000000000000 : ℚ)
  supportSlope := (-7494529126778271 / 5000000000000000 : ℚ)
  oldCenter := (3625115145969159 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1349
  oldLo := (9050000000000001 / 25000000000000000 : ℚ)
  oldHi := (9075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_888, piece_889]
}

theorem check_11150 : cell_11150.check = true := by
  decide +kernel

theorem check_11151 : cell_11151.check = true := by
  decide +kernel

theorem check_11152 : cell_11152.check = true := by
  decide +kernel

theorem check_11153 : cell_11153.check = true := by
  decide +kernel

theorem check_11154 : cell_11154.check = true := by
  decide +kernel

theorem check_11155 : cell_11155.check = true := by
  decide +kernel

theorem check_11156 : cell_11156.check = true := by
  decide +kernel

theorem check_11157 : cell_11157.check = true := by
  decide +kernel

theorem check_11158 : cell_11158.check = true := by
  decide +kernel

theorem check_11159 : cell_11159.check = true := by
  decide +kernel

theorem check_11160 : cell_11160.check = true := by
  decide +kernel

theorem check_11161 : cell_11161.check = true := by
  decide +kernel

theorem check_11162 : cell_11162.check = true := by
  decide +kernel

theorem check_11163 : cell_11163.check = true := by
  decide +kernel

theorem check_11164 : cell_11164.check = true := by
  decide +kernel

theorem check_11165 : cell_11165.check = true := by
  decide +kernel

theorem check_11166 : cell_11166.check = true := by
  decide +kernel

theorem check_11167 : cell_11167.check = true := by
  decide +kernel

theorem check_11168 : cell_11168.check = true := by
  decide +kernel

theorem check_11169 : cell_11169.check = true := by
  decide +kernel

theorem check_11170 : cell_11170.check = true := by
  decide +kernel

theorem check_11171 : cell_11171.check = true := by
  decide +kernel

theorem check_11172 : cell_11172.check = true := by
  decide +kernel

theorem check_11173 : cell_11173.check = true := by
  decide +kernel

theorem check_11174 : cell_11174.check = true := by
  decide +kernel

theorem check_11175 : cell_11175.check = true := by
  decide +kernel

theorem check_11176 : cell_11176.check = true := by
  decide +kernel

theorem check_11177 : cell_11177.check = true := by
  decide +kernel

theorem check_11178 : cell_11178.check = true := by
  decide +kernel

theorem check_11179 : cell_11179.check = true := by
  decide +kernel

theorem check_11180 : cell_11180.check = true := by
  decide +kernel

theorem check_11181 : cell_11181.check = true := by
  decide +kernel

theorem check_11182 : cell_11182.check = true := by
  decide +kernel

theorem check_11183 : cell_11183.check = true := by
  decide +kernel

theorem check_11184 : cell_11184.check = true := by
  decide +kernel

theorem check_11185 : cell_11185.check = true := by
  decide +kernel

theorem check_11186 : cell_11186.check = true := by
  decide +kernel

theorem check_11187 : cell_11187.check = true := by
  decide +kernel

theorem check_11188 : cell_11188.check = true := by
  decide +kernel

theorem check_11189 : cell_11189.check = true := by
  decide +kernel

theorem check_11190 : cell_11190.check = true := by
  decide +kernel

theorem check_11191 : cell_11191.check = true := by
  decide +kernel

theorem check_11192 : cell_11192.check = true := by
  decide +kernel

theorem check_11193 : cell_11193.check = true := by
  decide +kernel

theorem check_11194 : cell_11194.check = true := by
  decide +kernel

theorem check_11195 : cell_11195.check = true := by
  decide +kernel

theorem check_11196 : cell_11196.check = true := by
  decide +kernel

theorem check_11197 : cell_11197.check = true := by
  decide +kernel

theorem check_11198 : cell_11198.check = true := by
  decide +kernel

theorem check_11199 : cell_11199.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11150, cell_11151, cell_11152, cell_11153, cell_11154, cell_11155, cell_11156, cell_11157, cell_11158, cell_11159, cell_11160, cell_11161, cell_11162, cell_11163, cell_11164, cell_11165, cell_11166, cell_11167, cell_11168, cell_11169, cell_11170, cell_11171, cell_11172, cell_11173, cell_11174, cell_11175, cell_11176, cell_11177, cell_11178, cell_11179, cell_11180, cell_11181, cell_11182, cell_11183, cell_11184, cell_11185, cell_11186, cell_11187, cell_11188, cell_11189, cell_11190, cell_11191, cell_11192, cell_11193, cell_11194, cell_11195, cell_11196, cell_11197, cell_11198, cell_11199]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11150, check_11151, check_11152, check_11153, check_11154, check_11155, check_11156, check_11157, check_11158, check_11159, check_11160, check_11161, check_11162, check_11163, check_11164, check_11165, check_11166, check_11167, check_11168, check_11169, check_11170, check_11171, check_11172, check_11173, check_11174, check_11175, check_11176, check_11177, check_11178, check_11179, check_11180, check_11181, check_11182, check_11183, check_11184, check_11185, check_11186, check_11187, check_11188, check_11189, check_11190, check_11191, check_11192, check_11193, check_11194, check_11195, check_11196, check_11197, check_11198, check_11199, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0223

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0223
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0223
open AnalyticBounds.ExpressionCertificate

theorem linked_11150 : Linked cell_11150 pieces := by
  refine ⟨piece_1336,piece_1336_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11150,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_898_mem

theorem linked_11151 : Linked cell_11151 pieces := by
  refine ⟨piece_1336,piece_1336_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11151,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_898_mem

theorem linked_11152 : Linked cell_11152 pieces := by
  refine ⟨piece_1336,piece_1336_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11152,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_897_mem
    · exact piece_898_mem

theorem linked_11153 : Linked cell_11153 pieces := by
  refine ⟨piece_1337,piece_1337_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11153,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_898_mem

theorem linked_11154 : Linked cell_11154 pieces := by
  refine ⟨piece_1337,piece_1337_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11154,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_897_mem
    · exact piece_898_mem

theorem linked_11155 : Linked cell_11155 pieces := by
  refine ⟨piece_1337,piece_1337_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11155,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_897_mem

theorem linked_11156 : Linked cell_11156 pieces := by
  refine ⟨piece_1337,piece_1337_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11156,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_897_mem

theorem linked_11157 : Linked cell_11157 pieces := by
  refine ⟨piece_1338,piece_1338_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11157,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_897_mem

theorem linked_11158 : Linked cell_11158 pieces := by
  refine ⟨piece_1339,piece_1339_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11158,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_897_mem

theorem linked_11159 : Linked cell_11159 pieces := by
  refine ⟨piece_1339,piece_1339_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11159,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_896_mem
    · exact piece_897_mem

theorem linked_11160 : Linked cell_11160 pieces := by
  refine ⟨piece_1339,piece_1339_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11160,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_896_mem

theorem linked_11161 : Linked cell_11161 pieces := by
  refine ⟨piece_1339,piece_1339_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11161,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_896_mem

theorem linked_11162 : Linked cell_11162 pieces := by
  refine ⟨piece_1340,piece_1340_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11162,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_896_mem
    · exact piece_897_mem

theorem linked_11163 : Linked cell_11163 pieces := by
  refine ⟨piece_1340,piece_1340_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11163,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_896_mem

theorem linked_11164 : Linked cell_11164 pieces := by
  refine ⟨piece_1340,piece_1340_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11164,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_895_mem
    · exact piece_896_mem

theorem linked_11165 : Linked cell_11165 pieces := by
  refine ⟨piece_1340,piece_1340_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11165,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_895_mem

theorem linked_11166 : Linked cell_11166 pieces := by
  refine ⟨piece_1341,piece_1341_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11166,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_896_mem

theorem linked_11167 : Linked cell_11167 pieces := by
  refine ⟨piece_1341,piece_1341_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11167,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_895_mem
    · exact piece_896_mem

theorem linked_11168 : Linked cell_11168 pieces := by
  refine ⟨piece_1341,piece_1341_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11168,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_895_mem

theorem linked_11169 : Linked cell_11169 pieces := by
  refine ⟨piece_1341,piece_1341_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11169,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_894_mem
    · exact piece_895_mem

theorem linked_11170 : Linked cell_11170 pieces := by
  refine ⟨piece_1342,piece_1342_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11170,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_895_mem

theorem linked_11171 : Linked cell_11171 pieces := by
  refine ⟨piece_1342,piece_1342_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11171,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_894_mem
    · exact piece_895_mem

theorem linked_11172 : Linked cell_11172 pieces := by
  refine ⟨piece_1342,piece_1342_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11172,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_894_mem

theorem linked_11173 : Linked cell_11173 pieces := by
  refine ⟨piece_1342,piece_1342_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11173,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_894_mem

theorem linked_11174 : Linked cell_11174 pieces := by
  refine ⟨piece_1343,piece_1343_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11174,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_894_mem

theorem linked_11175 : Linked cell_11175 pieces := by
  refine ⟨piece_1343,piece_1343_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11175,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_894_mem

theorem linked_11176 : Linked cell_11176 pieces := by
  refine ⟨piece_1343,piece_1343_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11176,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_893_mem
    · exact piece_894_mem

theorem linked_11177 : Linked cell_11177 pieces := by
  refine ⟨piece_1343,piece_1343_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11177,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_893_mem

theorem linked_11178 : Linked cell_11178 pieces := by
  refine ⟨piece_1344,piece_1344_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11178,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_893_mem
    · exact piece_894_mem

theorem linked_11179 : Linked cell_11179 pieces := by
  refine ⟨piece_1344,piece_1344_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11179,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_893_mem

theorem linked_11180 : Linked cell_11180 pieces := by
  refine ⟨piece_1344,piece_1344_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11180,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_893_mem

theorem linked_11181 : Linked cell_11181 pieces := by
  refine ⟨piece_1344,piece_1344_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11181,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_891_mem
    · exact piece_892_mem
    · exact piece_893_mem

theorem linked_11182 : Linked cell_11182 pieces := by
  refine ⟨piece_1345,piece_1345_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11182,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_893_mem

theorem linked_11183 : Linked cell_11183 pieces := by
  refine ⟨piece_1345,piece_1345_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11183,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_891_mem
    · exact piece_892_mem
    · exact piece_893_mem

theorem linked_11184 : Linked cell_11184 pieces := by
  refine ⟨piece_1345,piece_1345_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11184,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_891_mem

theorem linked_11185 : Linked cell_11185 pieces := by
  refine ⟨piece_1345,piece_1345_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11185,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_890_mem
    · exact piece_891_mem

theorem linked_11186 : Linked cell_11186 pieces := by
  refine ⟨piece_1346,piece_1346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11186,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_891_mem

theorem linked_11187 : Linked cell_11187 pieces := by
  refine ⟨piece_1346,piece_1346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11187,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_890_mem
    · exact piece_891_mem

theorem linked_11188 : Linked cell_11188 pieces := by
  refine ⟨piece_1346,piece_1346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11188,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_890_mem

theorem linked_11189 : Linked cell_11189 pieces := by
  refine ⟨piece_1346,piece_1346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11189,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_890_mem

theorem linked_11190 : Linked cell_11190 pieces := by
  refine ⟨piece_1347,piece_1347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11190,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_890_mem
    · exact piece_891_mem

theorem linked_11191 : Linked cell_11191 pieces := by
  refine ⟨piece_1347,piece_1347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11191,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_890_mem

theorem linked_11192 : Linked cell_11192 pieces := by
  refine ⟨piece_1347,piece_1347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11192,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_889_mem
    · exact piece_890_mem

theorem linked_11193 : Linked cell_11193 pieces := by
  refine ⟨piece_1347,piece_1347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11193,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_889_mem

theorem linked_11194 : Linked cell_11194 pieces := by
  refine ⟨piece_1348,piece_1348_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11194,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_889_mem
    · exact piece_890_mem

theorem linked_11195 : Linked cell_11195 pieces := by
  refine ⟨piece_1348,piece_1348_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11195,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_889_mem

theorem linked_11196 : Linked cell_11196 pieces := by
  refine ⟨piece_1348,piece_1348_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11196,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_889_mem

theorem linked_11197 : Linked cell_11197 pieces := by
  refine ⟨piece_1348,piece_1348_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11197,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_888_mem
    · exact piece_889_mem

theorem linked_11198 : Linked cell_11198 pieces := by
  refine ⟨piece_1349,piece_1349_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11198,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_889_mem

theorem linked_11199 : Linked cell_11199 pieces := by
  refine ⟨piece_1349,piece_1349_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_11199,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_888_mem
    · exact piece_889_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0223.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0223.cells,List.forall_mem_cons]
  exact ⟨linked_11150, linked_11151, linked_11152, linked_11153, linked_11154, linked_11155, linked_11156, linked_11157, linked_11158, linked_11159, linked_11160, linked_11161, linked_11162, linked_11163, linked_11164, linked_11165, linked_11166, linked_11167, linked_11168, linked_11169, linked_11170, linked_11171, linked_11172, linked_11173, linked_11174, linked_11175, linked_11176, linked_11177, linked_11178, linked_11179, linked_11180, linked_11181, linked_11182, linked_11183, linked_11184, linked_11185, linked_11186, linked_11187, linked_11188, linked_11189, linked_11190, linked_11191, linked_11192, linked_11193, linked_11194, linked_11195, linked_11196, linked_11197, linked_11198, linked_11199, by simp⟩

theorem covered : covers (113525000000000003 / 200000000000000000 : ℚ) (14343750000000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0223.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0223
