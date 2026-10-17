import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0150
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(13721875000000001 / 50000000000000000 : ℚ), (13725000000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (83829869531667 / 100000000000000 : ℚ)
  w := (17977527282811 / 10000000000000 : ℚ)
  center := (13723437500000001 / 50000000000000000 : ℚ)
  supportValue := (8527192806800673 / 10000000000000000 : ℚ)
  supportSlope := (-14858686288668821 / 2000000000000000 : ℚ)
  oldCenter := (8527192806800673 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_697
  oldLo := (85150000000000003 / 100000000000000000 : ℚ)
  oldHi := (85200000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1957, piece_1958]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7500 : Cell := { cellDefaults with
  r := (1679408239659 / 2000000000000 : ℚ)
  w := (1800061039401 / 1000000000000 : ℚ)
  newCoefficients := coefficients_696
  oldLo := (85200000000000009 / 100000000000000000 : ℚ)
  oldHi := (42649999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1957, piece_1958]
}

def cell_7501 : Cell := { cellDefaults with
  domain := ⟨(13725000000000001 / 50000000000000000 : ℚ), (13728125000000001 / 50000000000000000 : ℚ)⟩
  r := (2621876854119 / 3125000000000 : ℚ)
  w := (17989054853723 / 10000000000000 : ℚ)
  center := (13726562500000001 / 50000000000000000 : ℚ)
  supportValue := (8540594262096909 / 10000000000000000 : ℚ)
  supportSlope := (-7442050050915583 / 1000000000000000 : ℚ)
  oldCenter := (8540594262096909 / 10000000000000000 : ℚ)
  oldLo := (21337500000000001 / 25000000000000000 : ℚ)
  oldHi := (21362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1960, piece_1961]
}

def cell_7502 : Cell := { cellDefaults with
  domain := ⟨(13728125000000001 / 50000000000000000 : ℚ), (13731250000000001 / 50000000000000000 : ℚ)⟩
  r := (2621876854119 / 3125000000000 : ℚ)
  w := (17989054853723 / 10000000000000 : ℚ)
  center := (13729687500000001 / 50000000000000000 : ℚ)
  supportValue := (1066993121236529 / 1250000000000000 : ℚ)
  supportSlope := (-7435556068131177 / 1000000000000000 : ℚ)
  oldCenter := (1066993121236529 / 1250000000000000 : ℚ)
  oldLo := (42649999999999999 / 50000000000000000 : ℚ)
  oldHi := (42699999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1959, piece_1960]
}

def cell_7503 : Cell := { cellDefaults with
  domain := ⟨(13731250000000001 / 50000000000000000 : ℚ), (13734375000000001 / 50000000000000000 : ℚ)⟩
  r := (2621876854119 / 3125000000000 : ℚ)
  w := (17989054853723 / 10000000000000 : ℚ)
  center := (13732812500000001 / 50000000000000000 : ℚ)
  supportValue := (1706259946857277 / 2000000000000000 : ℚ)
  supportSlope := (-3714533539708853 / 500000000000000 : ℚ)
  oldCenter := (1706259946857277 / 2000000000000000 : ℚ)
  oldLo := (21312500000000001 / 25000000000000000 : ℚ)
  oldHi := (21337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1958, piece_1959]
}

def cell_7504 : Cell := { cellDefaults with
  domain := ⟨(13734375000000001 / 50000000000000000 : ℚ), (13737500000000001 / 50000000000000000 : ℚ)⟩
  r := (2621876854119 / 3125000000000 : ℚ)
  w := (17989054853723 / 10000000000000 : ℚ)
  center := (13735937500000001 / 50000000000000000 : ℚ)
  supportValue := (4263329276080937 / 5000000000000000 : ℚ)
  supportSlope := (-148451660617539 / 20000000000000 : ℚ)
  oldCenter := (4263329276080937 / 5000000000000000 : ℚ)
  oldLo := (85200000000000009 / 100000000000000000 : ℚ)
  oldHi := (42649999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1957, piece_1958]
}

def cell_7505 : Cell := { cellDefaults with
  domain := ⟨(13737500000000001 / 50000000000000000 : ℚ), (13740625000000001 / 50000000000000000 : ℚ)⟩
  r := (2621876854119 / 3125000000000 : ℚ)
  w := (17989054853723 / 10000000000000 : ℚ)
  center := (13739062500000001 / 50000000000000000 : ℚ)
  supportValue := (1065252677554273 / 1250000000000000 : ℚ)
  supportSlope := (-14832207808993303 / 2000000000000000 : ℚ)
  oldCenter := (1065252677554273 / 1250000000000000 : ℚ)
  oldHi := (21312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1956, piece_1957]
}

def cell_7506 : Cell := { cellDefaults with
  domain := ⟨(13740625000000001 / 50000000000000000 : ℚ), (13743750000000001 / 50000000000000000 : ℚ)⟩
  r := (2621876854119 / 3125000000000 : ℚ)
  w := (17989054853723 / 10000000000000 : ℚ)
  center := (13742187500000001 / 50000000000000000 : ℚ)
  supportValue := (1703477667205641 / 2000000000000000 : ℚ)
  supportSlope := (-7409651336228507 / 1000000000000000 : ℚ)
  oldCenter := (1703477667205641 / 2000000000000000 : ℚ)
  oldPieces := [piece_1956]
}

def cell_7507 : Cell := { cellDefaults with
  domain := ⟨(13743750000000001 / 50000000000000000 : ℚ), (13746875000000001 / 50000000000000000 : ℚ)⟩
  r := (2621876854119 / 3125000000000 : ℚ)
  w := (17989054853723 / 10000000000000 : ℚ)
  center := (13745312500000001 / 50000000000000000 : ℚ)
  supportValue := (1702551859173177 / 2000000000000000 : ℚ)
  supportSlope := (-1850821263126079 / 250000000000000 : ℚ)
  oldCenter := (1702551859173177 / 2000000000000000 : ℚ)
  oldLo := (85100000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1955, piece_1956]
}

def cell_7508 : Cell := { cellDefaults with
  domain := ⟨(13746875000000001 / 50000000000000000 : ℚ), (13750000000000001 / 50000000000000000 : ℚ)⟩
  r := (2621876854119 / 3125000000000 : ℚ)
  w := (17989054853723 / 10000000000000 : ℚ)
  center := (13748437500000001 / 50000000000000000 : ℚ)
  supportValue := (8508134296874679 / 10000000000000000 : ℚ)
  supportSlope := (-14793645593719873 / 2000000000000000 : ℚ)
  oldCenter := (8508134296874679 / 10000000000000000 : ℚ)
  oldLo := (85050000000000003 / 100000000000000000 : ℚ)
  oldHi := (85150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1953, piece_1954, piece_1955]
}

def cell_7509 : Cell := { cellDefaults with
  domain := ⟨(13750000000000001 / 50000000000000000 : ℚ), (13753125000000001 / 50000000000000000 : ℚ)⟩
  center := (13751562500000001 / 50000000000000000 : ℚ)
  supportValue := (8521482211554433 / 10000000000000000 : ℚ)
  supportSlope := (-7409344346079649 / 1000000000000000 : ℚ)
  oldCenter := (8521482211554433 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_698
  oldHi := (21312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1956, piece_1957]
}

def cell_7510 : Cell := { cellDefaults with
  domain := ⟨(13753125000000001 / 50000000000000000 : ℚ), (13756250000000001 / 50000000000000000 : ℚ)⟩
  center := (13754687500000001 / 50000000000000000 : ℚ)
  supportValue := (4258426672689419 / 5000000000000000 : ℚ)
  supportSlope := (-7402889985545613 / 1000000000000000 : ℚ)
  oldCenter := (4258426672689419 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_698
  oldLo := (85100000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1955, piece_1956]
}

def cell_7511 : Cell := { cellDefaults with
  domain := ⟨(13756250000000001 / 50000000000000000 : ℚ), (13759375000000001 / 50000000000000000 : ℚ)⟩
  center := (13757812500000001 / 50000000000000000 : ℚ)
  supportValue := (2128057127762719 / 2500000000000000 : ℚ)
  supportSlope := (-7396440516103553 / 1000000000000000 : ℚ)
  oldCenter := (2128057127762719 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_698
  oldLo := (340268156424581 / 400000000000000 : ℚ)
  oldHi := (85150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1954, piece_1955]
}

def cell_7512 : Cell := { cellDefaults with
  domain := ⟨(13759375000000001 / 50000000000000000 : ℚ), (13762500000000001 / 50000000000000000 : ℚ)⟩
  center := (13760937500000001 / 50000000000000000 : ℚ)
  supportValue := (8507607705513047 / 10000000000000000 : ℚ)
  supportSlope := (-369504672138099 / 50000000000000 : ℚ)
  oldCenter := (8507607705513047 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_698
  oldLo := (85050000000000003 / 100000000000000000 : ℚ)
  oldHi := (85100000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1953, piece_1954]
}

def cell_7513 : Cell := { cellDefaults with
  domain := ⟨(13762500000000001 / 50000000000000000 : ℚ), (27530621508379889 / 100000000000000000 : ℚ)⟩
  center := (55055621508379891 / 200000000000000000 : ℚ)
  supportValue := (8503222963960121 / 10000000000000000 : ℚ)
  supportSlope := (-1846017638322971 / 250000000000000 : ℚ)
  oldCenter := (8503222963960121 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_698
  oldLo := (85000000000000009 / 100000000000000000 : ℚ)
  oldHi := (340268156424581 / 400000000000000 : ℚ)
  oldPieces := [piece_1952, piece_1953]
}

def cell_7514 : Cell := { cellDefaults with
  domain := ⟨(27530621508379889 / 100000000000000000 : ℚ), (860507594273743 / 3125000000000000 : ℚ)⟩
  center := (11013372905027933 / 40000000000000000 : ℚ)
  supportValue := (212476843166863 / 250000000000000 : ℚ)
  supportSlope := (-7378239352694639 / 1000000000000000 : ℚ)
  oldCenter := (212476843166863 / 250000000000000 : ℚ)
  newCoefficients := coefficients_698
  oldLo := (84950000000000003 / 100000000000000000 : ℚ)
  oldHi := (85050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1951, piece_1952]
}

def cell_7515 : Cell := { cellDefaults with
  domain := ⟨(860507594273743 / 3125000000000000 : ℚ), (27541864525139663 / 100000000000000000 : ℚ)⟩
  center := (55078107541899439 / 200000000000000000 : ℚ)
  supportValue := (8494927767298577 / 10000000000000000 : ℚ)
  supportSlope := (-1843102843098269 / 250000000000000 : ℚ)
  oldCenter := (8494927767298577 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_698
  oldLo := (84900000000000009 / 100000000000000000 : ℚ)
  oldHi := (85000000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1950, piece_1951]
}

def cell_7516 : Cell := { cellDefaults with
  domain := ⟨(27541864525139663 / 100000000000000000 : ℚ), (550949720670391 / 2000000000000000 : ℚ)⟩
  center := (55089350558659213 / 200000000000000000 : ℚ)
  supportValue := (2122696230133783 / 2500000000000000 : ℚ)
  supportSlope := (-7366586631330971 / 1000000000000000 : ℚ)
  oldCenter := (2122696230133783 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_698
  oldLo := (84850000000000003 / 100000000000000000 : ℚ)
  oldHi := (84950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1949, piece_1950]
}

def cell_7517 : Cell := { cellDefaults with
  domain := ⟨(550949720670391 / 2000000000000000 : ℚ), (13775000000000001 / 50000000000000000 : ℚ)⟩
  center := (860898219273743 / 3125000000000000 : ℚ)
  supportValue := (530486344466489 / 625000000000000 : ℚ)
  supportSlope := (-3681277445312669 / 500000000000000 : ℚ)
  oldCenter := (530486344466489 / 625000000000000 : ℚ)
  newCoefficients := coefficients_699
  oldLo := (84850000000000003 / 100000000000000000 : ℚ)
  oldHi := (84900000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1949]
}

def cell_7518 : Cell := { cellDefaults with
  domain := ⟨(13775000000000001 / 50000000000000000 : ℚ), (13778125000000001 / 50000000000000000 : ℚ)⟩
  r := (523499002463 / 625000000000 : ℚ)
  w := (17966026469957 / 10000000000000 : ℚ)
  center := (13776562500000001 / 50000000000000000 : ℚ)
  supportValue := (8502460249719421 / 10000000000000000 : ℚ)
  supportSlope := (-922113698555993 / 125000000000000 : ℚ)
  oldCenter := (8502460249719421 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_700
  oldLo := (85000000000000009 / 100000000000000000 : ℚ)
  oldHi := (85050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1952]
}

def cell_7519 : Cell := { cellDefaults with
  domain := ⟨(13778125000000001 / 50000000000000000 : ℚ), (13781250000000001 / 50000000000000000 : ℚ)⟩
  r := (523499002463 / 625000000000 : ℚ)
  w := (17966026469957 / 10000000000000 : ℚ)
  center := (13779687500000001 / 50000000000000000 : ℚ)
  supportValue := (8497851670981109 / 10000000000000000 : ℚ)
  supportSlope := (-3685288999040637 / 500000000000000 : ℚ)
  oldCenter := (8497851670981109 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_700
  oldLo := (84950000000000003 / 100000000000000000 : ℚ)
  oldHi := (85050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1951, piece_1952]
}

def cell_7520 : Cell := { cellDefaults with
  domain := ⟨(13781250000000001 / 50000000000000000 : ℚ), (13784375000000001 / 50000000000000000 : ℚ)⟩
  r := (523499002463 / 625000000000 : ℚ)
  w := (17966026469957 / 10000000000000 : ℚ)
  center := (13782812500000001 / 50000000000000000 : ℚ)
  supportValue := (8493247099285233 / 10000000000000000 : ℚ)
  supportSlope := (-7364170100025547 / 1000000000000000 : ℚ)
  oldCenter := (8493247099285233 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_700
  oldLo := (84900000000000009 / 100000000000000000 : ℚ)
  oldHi := (85000000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1950, piece_1951]
}

def cell_7521 : Cell := { cellDefaults with
  domain := ⟨(13784375000000001 / 50000000000000000 : ℚ), (13787500000000001 / 50000000000000000 : ℚ)⟩
  r := (523499002463 / 625000000000 : ℚ)
  w := (17966026469957 / 10000000000000 : ℚ)
  center := (13785937500000001 / 50000000000000000 : ℚ)
  supportValue := (8488646531622791 / 10000000000000000 : ℚ)
  supportSlope := (-7357767048507213 / 1000000000000000 : ℚ)
  oldCenter := (8488646531622791 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_700
  oldLo := (84850000000000003 / 100000000000000000 : ℚ)
  oldHi := (84950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1949, piece_1950]
}

def cell_7522 : Cell := { cellDefaults with
  domain := ⟨(13787500000000001 / 50000000000000000 : ℚ), (13790625000000001 / 50000000000000000 : ℚ)⟩
  r := (523499002463 / 625000000000 : ℚ)
  w := (17966026469957 / 10000000000000 : ℚ)
  center := (13789062500000001 / 50000000000000000 : ℚ)
  supportValue := (8484049964995899 / 10000000000000000 : ℚ)
  supportSlope := (-3675684395869183 / 500000000000000 : ℚ)
  oldCenter := (8484049964995899 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_700
  oldLo := (84800000000000009 / 100000000000000000 : ℚ)
  oldHi := (84900000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1948, piece_1949]
}

def cell_7523 : Cell := { cellDefaults with
  domain := ⟨(13790625000000001 / 50000000000000000 : ℚ), (13793750000000001 / 50000000000000000 : ℚ)⟩
  r := (523499002463 / 625000000000 : ℚ)
  w := (17966026469957 / 10000000000000 : ℚ)
  center := (13792187500000001 / 50000000000000000 : ℚ)
  supportValue := (1695891479286497 / 2000000000000000 : ℚ)
  supportSlope := (-7344975290855871 / 1000000000000000 : ℚ)
  oldCenter := (1695891479286497 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_700
  oldLo := (84750000000000003 / 100000000000000000 : ℚ)
  oldHi := (84850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1947, piece_1948]
}

def cell_7524 : Cell := { cellDefaults with
  domain := ⟨(13793750000000001 / 50000000000000000 : ℚ), (13796875000000001 / 50000000000000000 : ℚ)⟩
  r := (523499002463 / 625000000000 : ℚ)
  w := (17966026469957 / 10000000000000 : ℚ)
  center := (13795312500000001 / 50000000000000000 : ℚ)
  supportValue := (4237434411431667 / 5000000000000000 : ℚ)
  supportSlope := (-7338586760155863 / 1000000000000000 : ℚ)
  oldCenter := (4237434411431667 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_700
  oldLo := (84700000000000009 / 100000000000000000 : ℚ)
  oldHi := (84800000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1946, piece_1947]
}

def cell_7525 : Cell := { cellDefaults with
  domain := ⟨(13796875000000001 / 50000000000000000 : ℚ), (13800000000000001 / 50000000000000000 : ℚ)⟩
  r := (523499002463 / 625000000000 : ℚ)
  w := (17966026469957 / 10000000000000 : ℚ)
  center := (13798437500000001 / 50000000000000000 : ℚ)
  supportValue := (8470284182751753 / 10000000000000000 : ℚ)
  supportSlope := (-7332202986599867 / 1000000000000000 : ℚ)
  oldCenter := (8470284182751753 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_700
  oldLo := (84650000000000003 / 100000000000000000 : ℚ)
  oldHi := (84750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1945, piece_1946]
}

def cell_7526 : Cell := { cellDefaults with
  domain := ⟨(13800000000000001 / 50000000000000000 : ℚ), (13803125000000001 / 50000000000000000 : ℚ)⟩
  r := (83689973390107 / 100000000000000 : ℚ)
  w := (8977277314871 / 5000000000000 : ℚ)
  center := (13801562500000001 / 50000000000000000 : ℚ)
  supportValue := (8483526062930999 / 10000000000000000 : ℚ)
  supportSlope := (-1468944822468643 / 200000000000000 : ℚ)
  oldCenter := (8483526062930999 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_701
  oldLo := (84800000000000009 / 100000000000000000 : ℚ)
  oldHi := (84900000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1948, piece_1949]
}

def cell_7527 : Cell := { cellDefaults with
  domain := ⟨(13803125000000001 / 50000000000000000 : ℚ), (13806250000000001 / 50000000000000000 : ℚ)⟩
  r := (83689973390107 / 100000000000000 : ℚ)
  w := (8977277314871 / 5000000000000 : ℚ)
  center := (13804687500000001 / 50000000000000000 : ℚ)
  supportValue := (16560425080487 / 19531250000000 : ℚ)
  supportSlope := (-14676702099279737 / 2000000000000000 : ℚ)
  oldCenter := (16560425080487 / 19531250000000 : ℚ)
  newCoefficients := coefficients_701
  oldLo := (84750000000000003 / 100000000000000000 : ℚ)
  oldHi := (84850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1947, piece_1948]
}

def cell_7528 : Cell := { cellDefaults with
  domain := ⟨(13806250000000001 / 50000000000000000 : ℚ), (13809375000000001 / 50000000000000000 : ℚ)⟩
  r := (83689973390107 / 100000000000000 : ℚ)
  w := (8977277314871 / 5000000000000 : ℚ)
  center := (13807812500000001 / 50000000000000000 : ℚ)
  supportValue := (4237176600856459 / 5000000000000000 : ℚ)
  supportSlope := (-7331982914980273 / 1000000000000000 : ℚ)
  oldCenter := (4237176600856459 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_701
  oldLo := (84700000000000009 / 100000000000000000 : ℚ)
  oldHi := (84800000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1946, piece_1947]
}

def cell_7529 : Cell := { cellDefaults with
  domain := ⟨(13809375000000001 / 50000000000000000 : ℚ), (13812500000000001 / 50000000000000000 : ℚ)⟩
  r := (83689973390107 / 100000000000000 : ℚ)
  w := (8977277314871 / 5000000000000 : ℚ)
  center := (13810937500000001 / 50000000000000000 : ℚ)
  supportValue := (4234886370732597 / 5000000000000000 : ℚ)
  supportSlope := (-7325619514176651 / 1000000000000000 : ℚ)
  oldCenter := (4234886370732597 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_701
  oldLo := (84650000000000003 / 100000000000000000 : ℚ)
  oldHi := (84750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1945, piece_1946]
}

def cell_7530 : Cell := { cellDefaults with
  domain := ⟨(13812500000000001 / 50000000000000000 : ℚ), (13815625000000001 / 50000000000000000 : ℚ)⟩
  r := (83689973390107 / 100000000000000 : ℚ)
  w := (8977277314871 / 5000000000000 : ℚ)
  center := (13814062500000001 / 50000000000000000 : ℚ)
  supportValue := (8465196217561423 / 10000000000000000 : ℚ)
  supportSlope := (-7319260851449627 / 1000000000000000 : ℚ)
  oldCenter := (8465196217561423 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_701
  oldLo := (84600000000000009 / 100000000000000000 : ℚ)
  oldHi := (84700000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1944, piece_1945]
}

def cell_7531 : Cell := { cellDefaults with
  domain := ⟨(13815625000000001 / 50000000000000000 : ℚ), (13818750000000001 / 50000000000000000 : ℚ)⟩
  r := (83689973390107 / 100000000000000 : ℚ)
  w := (8977277314871 / 5000000000000 : ℚ)
  center := (13817187500000001 / 50000000000000000 : ℚ)
  supportValue := (8460623615688401 / 10000000000000000 : ℚ)
  supportSlope := (-7312906934028973 / 1000000000000000 : ℚ)
  oldCenter := (8460623615688401 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_701
  oldLo := (84550000000000003 / 100000000000000000 : ℚ)
  oldHi := (84650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1943, piece_1944]
}

def cell_7532 : Cell := { cellDefaults with
  domain := ⟨(13818750000000001 / 50000000000000000 : ℚ), (13821875000000001 / 50000000000000000 : ℚ)⟩
  r := (83689973390107 / 100000000000000 : ℚ)
  w := (8977277314871 / 5000000000000 : ℚ)
  center := (13820312500000001 / 50000000000000000 : ℚ)
  supportValue := (845605498289847 / 1000000000000000 : ℚ)
  supportSlope := (-3653278873452237 / 500000000000000 : ℚ)
  oldCenter := (845605498289847 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_701
  oldLo := (2112849162011173 / 2500000000000000 : ℚ)
  oldHi := (84600000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1942, piece_1943]
}

def cell_7533 : Cell := { cellDefaults with
  domain := ⟨(13821875000000001 / 50000000000000000 : ℚ), (13825000000000001 / 50000000000000000 : ℚ)⟩
  r := (83689973390107 / 100000000000000 : ℚ)
  w := (8977277314871 / 5000000000000 : ℚ)
  center := (13823437500000001 / 50000000000000000 : ℚ)
  supportValue := (4225745158116387 / 5000000000000000 : ℚ)
  supportSlope := (-14600427093903079 / 2000000000000000 : ℚ)
  oldCenter := (4225745158116387 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_701
  oldLo := (84450000000000003 / 100000000000000000 : ℚ)
  oldHi := (84550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1940, piece_1941, piece_1942]
}

def cell_7534 : Cell := { cellDefaults with
  domain := ⟨(13825000000000001 / 50000000000000000 : ℚ), (13828125000000001 / 50000000000000000 : ℚ)⟩
  r := (83620266958497 / 100000000000000 : ℚ)
  w := (3588622059493 / 2000000000000 : ℚ)
  center := (13826562500000001 / 50000000000000000 : ℚ)
  supportValue := (8464679934798467 / 10000000000000000 : ℚ)
  supportSlope := (-457041933259017 / 62500000000000 : ℚ)
  oldCenter := (8464679934798467 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_702
  oldLo := (84600000000000009 / 100000000000000000 : ℚ)
  oldHi := (84700000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1944, piece_1945]
}

def cell_7535 : Cell := { cellDefaults with
  domain := ⟨(13828125000000001 / 50000000000000000 : ℚ), (13831250000000001 / 50000000000000000 : ℚ)⟩
  r := (83620266958497 / 100000000000000 : ℚ)
  w := (3588622059493 / 2000000000000 : ℚ)
  center := (13829687500000001 / 50000000000000000 : ℚ)
  supportValue := (84601115147139 / 100000000000000 : ℚ)
  supportSlope := (-3653168862618017 / 500000000000000 : ℚ)
  oldCenter := (84601115147139 / 100000000000000 : ℚ)
  newCoefficients := coefficients_702
  oldLo := (84550000000000003 / 100000000000000000 : ℚ)
  oldHi := (84650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1943, piece_1944]
}

def cell_7536 : Cell := { cellDefaults with
  domain := ⟨(13831250000000001 / 50000000000000000 : ℚ), (13834375000000001 / 50000000000000000 : ℚ)⟩
  r := (83620266958497 / 100000000000000 : ℚ)
  w := (3588622059493 / 2000000000000 : ℚ)
  center := (13832812500000001 / 50000000000000000 : ℚ)
  supportValue := (1691109396185003 / 2000000000000000 : ℚ)
  supportSlope := (-1825002305849921 / 250000000000000 : ℚ)
  oldCenter := (1691109396185003 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_702
  oldLo := (2112849162011173 / 2500000000000000 : ℚ)
  oldHi := (84600000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1942, piece_1943]
}

def cell_7537 : Cell := { cellDefaults with
  domain := ⟨(13834375000000001 / 50000000000000000 : ℚ), (13837500000000001 / 50000000000000000 : ℚ)⟩
  r := (83620266958497 / 100000000000000 : ℚ)
  w := (3588622059493 / 2000000000000 : ℚ)
  center := (13835937500000001 / 50000000000000000 : ℚ)
  supportValue := (4225493200154577 / 5000000000000000 : ℚ)
  supportSlope := (-227927679510187 / 31250000000000 : ℚ)
  oldCenter := (4225493200154577 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_702
  oldLo := (84450000000000003 / 100000000000000000 : ℚ)
  oldHi := (84550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1940, piece_1941, piece_1942]
}

def cell_7538 : Cell := { cellDefaults with
  domain := ⟨(13837500000000001 / 50000000000000000 : ℚ), (13840625000000001 / 50000000000000000 : ℚ)⟩
  r := (83620266958497 / 100000000000000 : ℚ)
  w := (3588622059493 / 2000000000000 : ℚ)
  center := (13839062500000001 / 50000000000000000 : ℚ)
  supportValue := (263950930301159 / 312500000000000 : ℚ)
  supportSlope := (-582989354501251 / 80000000000000 : ℚ)
  oldCenter := (263950930301159 / 312500000000000 : ℚ)
  newCoefficients := coefficients_702
  oldLo := (10550000000000001 / 12500000000000000 : ℚ)
  oldHi := (10562500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1939, piece_1940]
}

def cell_7539 : Cell := { cellDefaults with
  domain := ⟨(13840625000000001 / 50000000000000000 : ℚ), (13843750000000001 / 50000000000000000 : ℚ)⟩
  r := (83620266958497 / 100000000000000 : ℚ)
  w := (3588622059493 / 2000000000000 : ℚ)
  center := (13842187500000001 / 50000000000000000 : ℚ)
  supportValue := (8441877086235543 / 10000000000000000 : ℚ)
  supportSlope := (-7281052616558981 / 1000000000000000 : ℚ)
  oldCenter := (8441877086235543 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_702
  oldLo := (84350000000000003 / 100000000000000000 : ℚ)
  oldHi := (84450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1938, piece_1939]
}

def cell_7540 : Cell := { cellDefaults with
  domain := ⟨(13843750000000001 / 50000000000000000 : ℚ), (13846875000000001 / 50000000000000000 : ℚ)⟩
  r := (83620266958497 / 100000000000000 : ℚ)
  w := (3588622059493 / 2000000000000 : ℚ)
  center := (13845312500000001 / 50000000000000000 : ℚ)
  supportValue := (8437328347167297 / 10000000000000000 : ℚ)
  supportSlope := (-90934490427097 / 12500000000000 : ℚ)
  oldCenter := (8437328347167297 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_702
  oldLo := (84350000000000003 / 100000000000000000 : ℚ)
  oldHi := (10550000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1938]
}

def cell_7541 : Cell := { cellDefaults with
  domain := ⟨(13846875000000001 / 50000000000000000 : ℚ), (13850000000000001 / 50000000000000000 : ℚ)⟩
  r := (83620266958497 / 100000000000000 : ℚ)
  w := (3588622059493 / 2000000000000 : ℚ)
  center := (13848437500000001 / 50000000000000000 : ℚ)
  supportValue := (4216391774753017 / 5000000000000000 : ℚ)
  supportSlope := (-2907438390087691 / 400000000000000 : ℚ)
  oldCenter := (4216391774753017 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_702
  oldLo := (10537500000000001 / 12500000000000000 : ℚ)
  oldHi := (10550000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1937, piece_1938]
}

def cell_7542 : Cell := { cellDefaults with
  domain := ⟨(13850000000000001 / 50000000000000000 : ℚ), (13853125000000001 / 50000000000000000 : ℚ)⟩
  r := (83550719284877 / 100000000000000 : ℚ)
  w := (3586338901909 / 2000000000000 : ℚ)
  center := (13851562500000001 / 50000000000000000 : ℚ)
  supportValue := (1055740072620769 / 1250000000000000 : ℚ)
  supportSlope := (-7280829880123463 / 1000000000000000 : ℚ)
  oldCenter := (1055740072620769 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_703
  oldLo := (10550000000000001 / 12500000000000000 : ℚ)
  oldHi := (10562500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1939, piece_1940]
}

def cell_7543 : Cell := { cellDefaults with
  domain := ⟨(13853125000000001 / 50000000000000000 : ℚ), (13856250000000001 / 50000000000000000 : ℚ)⟩
  r := (83550719284877 / 100000000000000 : ℚ)
  w := (3586338901909 / 2000000000000 : ℚ)
  center := (13854687500000001 / 50000000000000000 : ℚ)
  supportValue := (8441371976367407 / 10000000000000000 : ℚ)
  supportSlope := (-14549073129842327 / 2000000000000000 : ℚ)
  oldCenter := (8441371976367407 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_703
  oldLo := (84350000000000003 / 100000000000000000 : ℚ)
  oldHi := (84450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1938, piece_1939]
}

def cell_7544 : Cell := { cellDefaults with
  domain := ⟨(13856250000000001 / 50000000000000000 : ℚ), (13859375000000001 / 50000000000000000 : ℚ)⟩
  r := (83550719284877 / 100000000000000 : ℚ)
  w := (3586338901909 / 2000000000000 : ℚ)
  center := (13857812500000001 / 50000000000000000 : ℚ)
  supportValue := (1687365460597071 / 2000000000000000 : ℚ)
  supportSlope := (-7268247906736747 / 1000000000000000 : ℚ)
  oldCenter := (1687365460597071 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_703
  oldLo := (10537500000000001 / 12500000000000000 : ℚ)
  oldHi := (10550000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1937, piece_1938]
}

def cell_7545 : Cell := { cellDefaults with
  domain := ⟨(13859375000000001 / 50000000000000000 : ℚ), (13862500000000001 / 50000000000000000 : ℚ)⟩
  r := (83550719284877 / 100000000000000 : ℚ)
  w := (3586338901909 / 2000000000000 : ℚ)
  center := (13860937500000001 / 50000000000000000 : ℚ)
  supportValue := (8432286557909293 / 10000000000000000 : ℚ)
  supportSlope := (-14523934262079763 / 2000000000000000 : ℚ)
  oldCenter := (8432286557909293 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_703
  oldLo := (10537500000000001 / 12500000000000000 : ℚ)
  oldHi := (84350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1937]
}

def cell_7546 : Cell := { cellDefaults with
  domain := ⟨(13862500000000001 / 50000000000000000 : ℚ), (13865625000000001 / 50000000000000000 : ℚ)⟩
  r := (83550719284877 / 100000000000000 : ℚ)
  w := (3586338901909 / 2000000000000 : ℚ)
  center := (13864062500000001 / 50000000000000000 : ℚ)
  supportValue := (8427749738235709 / 10000000000000000 : ℚ)
  supportSlope := (-7255845540058203 / 1000000000000000 : ℚ)
  oldCenter := (8427749738235709 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_703
  oldLo := (84250000000000003 / 100000000000000000 : ℚ)
  oldHi := (84350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1936, piece_1937]
}

def cell_7547 : Cell := { cellDefaults with
  domain := ⟨(13865625000000001 / 50000000000000000 : ℚ), (13868750000000001 / 50000000000000000 : ℚ)⟩
  r := (83550719284877 / 100000000000000 : ℚ)
  w := (3586338901909 / 2000000000000 : ℚ)
  center := (13867187500000001 / 50000000000000000 : ℚ)
  supportValue := (8423216841034187 / 10000000000000000 : ℚ)
  supportSlope := (-3624786474867747 / 500000000000000 : ℚ)
  oldCenter := (8423216841034187 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_703
  oldLo := (10525000000000001 / 12500000000000000 : ℚ)
  oldHi := (10537500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1935, piece_1936]
}

def cell_7548 : Cell := { cellDefaults with
  domain := ⟨(13868750000000001 / 50000000000000000 : ℚ), (13871875000000001 / 50000000000000000 : ℚ)⟩
  r := (83550719284877 / 100000000000000 : ℚ)
  w := (3586338901909 / 2000000000000 : ℚ)
  center := (13870312500000001 / 50000000000000000 : ℚ)
  supportValue := (8418687863433991 / 10000000000000000 : ℚ)
  supportSlope := (-3621652483092319 / 500000000000000 : ℚ)
  oldCenter := (8418687863433991 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_703
  oldLo := (84150000000000003 / 100000000000000000 : ℚ)
  oldHi := (84250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1934, piece_1935]
}

def cell_7549 : Cell := { cellDefaults with
  domain := ⟨(13871875000000001 / 50000000000000000 : ℚ), (13875000000000001 / 50000000000000000 : ℚ)⟩
  r := (83550719284877 / 100000000000000 : ℚ)
  w := (3586338901909 / 2000000000000 : ℚ)
  center := (13873437500000001 / 50000000000000000 : ℚ)
  supportValue := (4207081401277941 / 5000000000000000 : ℚ)
  supportSlope := (-3618520795168223 / 500000000000000 : ℚ)
  oldCenter := (4207081401277941 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_703
  oldLo := (10512500000000001 / 12500000000000000 : ℚ)
  oldHi := (10525000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1933, piece_1934]
}

theorem check_7500 : cell_7500.check = true := by
  decide +kernel

theorem check_7501 : cell_7501.check = true := by
  decide +kernel

theorem check_7502 : cell_7502.check = true := by
  decide +kernel

theorem check_7503 : cell_7503.check = true := by
  decide +kernel

theorem check_7504 : cell_7504.check = true := by
  decide +kernel

theorem check_7505 : cell_7505.check = true := by
  decide +kernel

theorem check_7506 : cell_7506.check = true := by
  decide +kernel

theorem check_7507 : cell_7507.check = true := by
  decide +kernel

theorem check_7508 : cell_7508.check = true := by
  decide +kernel

theorem check_7509 : cell_7509.check = true := by
  decide +kernel

theorem check_7510 : cell_7510.check = true := by
  decide +kernel

theorem check_7511 : cell_7511.check = true := by
  decide +kernel

theorem check_7512 : cell_7512.check = true := by
  decide +kernel

theorem check_7513 : cell_7513.check = true := by
  decide +kernel

theorem check_7514 : cell_7514.check = true := by
  decide +kernel

theorem check_7515 : cell_7515.check = true := by
  decide +kernel

theorem check_7516 : cell_7516.check = true := by
  decide +kernel

theorem check_7517 : cell_7517.check = true := by
  decide +kernel

theorem check_7518 : cell_7518.check = true := by
  decide +kernel

theorem check_7519 : cell_7519.check = true := by
  decide +kernel

theorem check_7520 : cell_7520.check = true := by
  decide +kernel

theorem check_7521 : cell_7521.check = true := by
  decide +kernel

theorem check_7522 : cell_7522.check = true := by
  decide +kernel

theorem check_7523 : cell_7523.check = true := by
  decide +kernel

theorem check_7524 : cell_7524.check = true := by
  decide +kernel

theorem check_7525 : cell_7525.check = true := by
  decide +kernel

theorem check_7526 : cell_7526.check = true := by
  decide +kernel

theorem check_7527 : cell_7527.check = true := by
  decide +kernel

theorem check_7528 : cell_7528.check = true := by
  decide +kernel

theorem check_7529 : cell_7529.check = true := by
  decide +kernel

theorem check_7530 : cell_7530.check = true := by
  decide +kernel

theorem check_7531 : cell_7531.check = true := by
  decide +kernel

theorem check_7532 : cell_7532.check = true := by
  decide +kernel

theorem check_7533 : cell_7533.check = true := by
  decide +kernel

theorem check_7534 : cell_7534.check = true := by
  decide +kernel

theorem check_7535 : cell_7535.check = true := by
  decide +kernel

theorem check_7536 : cell_7536.check = true := by
  decide +kernel

theorem check_7537 : cell_7537.check = true := by
  decide +kernel

theorem check_7538 : cell_7538.check = true := by
  decide +kernel

theorem check_7539 : cell_7539.check = true := by
  decide +kernel

theorem check_7540 : cell_7540.check = true := by
  decide +kernel

theorem check_7541 : cell_7541.check = true := by
  decide +kernel

theorem check_7542 : cell_7542.check = true := by
  decide +kernel

theorem check_7543 : cell_7543.check = true := by
  decide +kernel

theorem check_7544 : cell_7544.check = true := by
  decide +kernel

theorem check_7545 : cell_7545.check = true := by
  decide +kernel

theorem check_7546 : cell_7546.check = true := by
  decide +kernel

theorem check_7547 : cell_7547.check = true := by
  decide +kernel

theorem check_7548 : cell_7548.check = true := by
  decide +kernel

theorem check_7549 : cell_7549.check = true := by
  decide +kernel

def cells : List Cell := [cell_7500, cell_7501, cell_7502, cell_7503, cell_7504, cell_7505, cell_7506, cell_7507, cell_7508, cell_7509, cell_7510, cell_7511, cell_7512, cell_7513, cell_7514, cell_7515, cell_7516, cell_7517, cell_7518, cell_7519, cell_7520, cell_7521, cell_7522, cell_7523, cell_7524, cell_7525, cell_7526, cell_7527, cell_7528, cell_7529, cell_7530, cell_7531, cell_7532, cell_7533, cell_7534, cell_7535, cell_7536, cell_7537, cell_7538, cell_7539, cell_7540, cell_7541, cell_7542, cell_7543, cell_7544, cell_7545, cell_7546, cell_7547, cell_7548, cell_7549]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7500, check_7501, check_7502, check_7503, check_7504, check_7505, check_7506, check_7507, check_7508, check_7509, check_7510, check_7511, check_7512, check_7513, check_7514, check_7515, check_7516, check_7517, check_7518, check_7519, check_7520, check_7521, check_7522, check_7523, check_7524, check_7525, check_7526, check_7527, check_7528, check_7529, check_7530, check_7531, check_7532, check_7533, check_7534, check_7535, check_7536, check_7537, check_7538, check_7539, check_7540, check_7541, check_7542, check_7543, check_7544, check_7545, check_7546, check_7547, check_7548, check_7549, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0150

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0150
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0150
open AnalyticBounds.ExpressionCertificate

theorem linked_7500 : Linked cell_7500 pieces := by
  apply Linked.of_piece piece_696 piece_696_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7500, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1957_mem, piece_1958_mem⟩

theorem linked_7501 : Linked cell_7501 pieces := by
  apply Linked.of_piece piece_697 piece_697_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7501, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1960_mem, piece_1961_mem⟩

theorem linked_7502 : Linked cell_7502 pieces := by
  apply Linked.of_piece piece_697 piece_697_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7502, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1959_mem, piece_1960_mem⟩

theorem linked_7503 : Linked cell_7503 pieces := by
  apply Linked.of_piece piece_697 piece_697_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7503, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1958_mem, piece_1959_mem⟩

theorem linked_7504 : Linked cell_7504 pieces := by
  apply Linked.of_piece piece_697 piece_697_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7504, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1957_mem, piece_1958_mem⟩

theorem linked_7505 : Linked cell_7505 pieces := by
  apply Linked.of_piece piece_697 piece_697_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7505, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1956_mem, piece_1957_mem⟩

theorem linked_7506 : Linked cell_7506 pieces := by
  apply Linked.of_piece piece_697 piece_697_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7506, List.cons_subset, List.nil_subset, and_true]
  exact piece_1956_mem

theorem linked_7507 : Linked cell_7507 pieces := by
  apply Linked.of_piece piece_697 piece_697_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7507, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1955_mem, piece_1956_mem⟩

theorem linked_7508 : Linked cell_7508 pieces := by
  apply Linked.of_piece piece_697 piece_697_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7508, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1953_mem, ⟨piece_1954_mem, piece_1955_mem⟩⟩

theorem linked_7509 : Linked cell_7509 pieces := by
  apply Linked.of_piece piece_698 piece_698_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7509, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1956_mem, piece_1957_mem⟩

theorem linked_7510 : Linked cell_7510 pieces := by
  apply Linked.of_piece piece_698 piece_698_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7510, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1955_mem, piece_1956_mem⟩

theorem linked_7511 : Linked cell_7511 pieces := by
  apply Linked.of_piece piece_698 piece_698_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7511, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1954_mem, piece_1955_mem⟩

theorem linked_7512 : Linked cell_7512 pieces := by
  apply Linked.of_piece piece_698 piece_698_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7512, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1953_mem, piece_1954_mem⟩

theorem linked_7513 : Linked cell_7513 pieces := by
  apply Linked.of_piece piece_698 piece_698_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7513, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1952_mem, piece_1953_mem⟩

theorem linked_7514 : Linked cell_7514 pieces := by
  apply Linked.of_piece piece_698 piece_698_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7514, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1951_mem, piece_1952_mem⟩

theorem linked_7515 : Linked cell_7515 pieces := by
  apply Linked.of_piece piece_698 piece_698_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7515, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1950_mem, piece_1951_mem⟩

theorem linked_7516 : Linked cell_7516 pieces := by
  apply Linked.of_piece piece_698 piece_698_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7516, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1949_mem, piece_1950_mem⟩

theorem linked_7517 : Linked cell_7517 pieces := by
  apply Linked.of_piece piece_699 piece_699_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7517, List.cons_subset, List.nil_subset, and_true]
  exact piece_1949_mem

theorem linked_7518 : Linked cell_7518 pieces := by
  apply Linked.of_piece piece_700 piece_700_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7518, List.cons_subset, List.nil_subset, and_true]
  exact piece_1952_mem

theorem linked_7519 : Linked cell_7519 pieces := by
  apply Linked.of_piece piece_700 piece_700_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7519, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1951_mem, piece_1952_mem⟩

theorem linked_7520 : Linked cell_7520 pieces := by
  apply Linked.of_piece piece_700 piece_700_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7520, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1950_mem, piece_1951_mem⟩

theorem linked_7521 : Linked cell_7521 pieces := by
  apply Linked.of_piece piece_700 piece_700_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7521, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1949_mem, piece_1950_mem⟩

theorem linked_7522 : Linked cell_7522 pieces := by
  apply Linked.of_piece piece_700 piece_700_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7522, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1948_mem, piece_1949_mem⟩

theorem linked_7523 : Linked cell_7523 pieces := by
  apply Linked.of_piece piece_700 piece_700_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7523, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1947_mem, piece_1948_mem⟩

theorem linked_7524 : Linked cell_7524 pieces := by
  apply Linked.of_piece piece_700 piece_700_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7524, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1946_mem, piece_1947_mem⟩

theorem linked_7525 : Linked cell_7525 pieces := by
  apply Linked.of_piece piece_700 piece_700_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7525, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1945_mem, piece_1946_mem⟩

theorem linked_7526 : Linked cell_7526 pieces := by
  apply Linked.of_piece piece_701 piece_701_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7526, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1948_mem, piece_1949_mem⟩

theorem linked_7527 : Linked cell_7527 pieces := by
  apply Linked.of_piece piece_701 piece_701_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7527, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1947_mem, piece_1948_mem⟩

theorem linked_7528 : Linked cell_7528 pieces := by
  apply Linked.of_piece piece_701 piece_701_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7528, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1946_mem, piece_1947_mem⟩

theorem linked_7529 : Linked cell_7529 pieces := by
  apply Linked.of_piece piece_701 piece_701_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7529, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1945_mem, piece_1946_mem⟩

theorem linked_7530 : Linked cell_7530 pieces := by
  apply Linked.of_piece piece_701 piece_701_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7530, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1944_mem, piece_1945_mem⟩

theorem linked_7531 : Linked cell_7531 pieces := by
  apply Linked.of_piece piece_701 piece_701_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7531, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1943_mem, piece_1944_mem⟩

theorem linked_7532 : Linked cell_7532 pieces := by
  apply Linked.of_piece piece_701 piece_701_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7532, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1942_mem, piece_1943_mem⟩

theorem linked_7533 : Linked cell_7533 pieces := by
  apply Linked.of_piece piece_701 piece_701_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7533, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1940_mem, ⟨piece_1941_mem, piece_1942_mem⟩⟩

theorem linked_7534 : Linked cell_7534 pieces := by
  apply Linked.of_piece piece_702 piece_702_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7534, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1944_mem, piece_1945_mem⟩

theorem linked_7535 : Linked cell_7535 pieces := by
  apply Linked.of_piece piece_702 piece_702_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7535, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1943_mem, piece_1944_mem⟩

theorem linked_7536 : Linked cell_7536 pieces := by
  apply Linked.of_piece piece_702 piece_702_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7536, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1942_mem, piece_1943_mem⟩

theorem linked_7537 : Linked cell_7537 pieces := by
  apply Linked.of_piece piece_702 piece_702_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7537, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1940_mem, ⟨piece_1941_mem, piece_1942_mem⟩⟩

theorem linked_7538 : Linked cell_7538 pieces := by
  apply Linked.of_piece piece_702 piece_702_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7538, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1939_mem, piece_1940_mem⟩

theorem linked_7539 : Linked cell_7539 pieces := by
  apply Linked.of_piece piece_702 piece_702_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7539, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1938_mem, piece_1939_mem⟩

theorem linked_7540 : Linked cell_7540 pieces := by
  apply Linked.of_piece piece_702 piece_702_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7540, List.cons_subset, List.nil_subset, and_true]
  exact piece_1938_mem

theorem linked_7541 : Linked cell_7541 pieces := by
  apply Linked.of_piece piece_702 piece_702_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7541, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1937_mem, piece_1938_mem⟩

theorem linked_7542 : Linked cell_7542 pieces := by
  apply Linked.of_piece piece_703 piece_703_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7542, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1939_mem, piece_1940_mem⟩

theorem linked_7543 : Linked cell_7543 pieces := by
  apply Linked.of_piece piece_703 piece_703_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7543, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1938_mem, piece_1939_mem⟩

theorem linked_7544 : Linked cell_7544 pieces := by
  apply Linked.of_piece piece_703 piece_703_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7544, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1937_mem, piece_1938_mem⟩

theorem linked_7545 : Linked cell_7545 pieces := by
  apply Linked.of_piece piece_703 piece_703_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7545, List.cons_subset, List.nil_subset, and_true]
  exact piece_1937_mem

theorem linked_7546 : Linked cell_7546 pieces := by
  apply Linked.of_piece piece_703 piece_703_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7546, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1936_mem, piece_1937_mem⟩

theorem linked_7547 : Linked cell_7547 pieces := by
  apply Linked.of_piece piece_703 piece_703_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7547, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1935_mem, piece_1936_mem⟩

theorem linked_7548 : Linked cell_7548 pieces := by
  apply Linked.of_piece piece_703 piece_703_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7548, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1934_mem, piece_1935_mem⟩

theorem linked_7549 : Linked cell_7549 pieces := by
  apply Linked.of_piece piece_703 piece_703_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7549, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1933_mem, piece_1934_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0150.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0150.cells,List.forall_mem_cons]
  exact ⟨linked_7500, linked_7501, linked_7502, linked_7503, linked_7504, linked_7505, linked_7506, linked_7507, linked_7508, linked_7509, linked_7510, linked_7511, linked_7512, linked_7513, linked_7514, linked_7515, linked_7516, linked_7517, linked_7518, linked_7519, linked_7520, linked_7521, linked_7522, linked_7523, linked_7524, linked_7525, linked_7526, linked_7527, linked_7528, linked_7529, linked_7530, linked_7531, linked_7532, linked_7533, linked_7534, linked_7535, linked_7536, linked_7537, linked_7538, linked_7539, linked_7540, linked_7541, linked_7542, linked_7543, linked_7544, linked_7545, linked_7546, linked_7547, linked_7548, linked_7549, by simp⟩

theorem covered : covers (13721875000000001 / 50000000000000000 : ℚ) (13875000000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0150.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0150
