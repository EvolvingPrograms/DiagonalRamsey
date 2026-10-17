import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0132
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(861 / 4000 : ℚ), (689 / 3200 : ℚ)⟩
  branch := .right
  r := (86769543838649 / 100000000000000 : ℚ)
  w := (512316727599 / 500000000000 : ℚ)
  center := (6889 / 32000 : ℚ)
  supportValue := (8195138330448359 / 10000000000000000 : ℚ)
  supportSlope := (355936832452719 / 62500000000000 : ℚ)
  oldCenter := (8195138330448359 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_569
  oldLo := (41000000000000003 / 50000000000000000 : ℚ)
  oldHi := (41050000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1887, piece_1888]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_6600 : Cell := { cellDefaults with
  r := (21711636856037 / 25000000000000 : ℚ)
  w := (5121780382437 / 5000000000000 : ℚ)
  newCoefficients := coefficients_568
  oldLo := (40950000000000003 / 50000000000000000 : ℚ)
  oldHi := (41000000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1885, piece_1886]
}

def cell_6601 : Cell := { cellDefaults with
  domain := ⟨(689 / 3200 : ℚ), (1723 / 8000 : ℚ)⟩
  r := (21711636856037 / 25000000000000 : ℚ)
  w := (5121780382437 / 5000000000000 : ℚ)
  center := (6891 / 32000 : ℚ)
  supportValue := (512418629284391 / 625000000000000 : ℚ)
  supportSlope := (11393231739432963 / 2000000000000000 : ℚ)
  oldCenter := (512418629284391 / 625000000000000 : ℚ)
  newCoefficients := coefficients_568
  oldLo := (81950000000000001 / 100000000000000000 : ℚ)
  oldHi := (82050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1886, piece_1887]
}

def cell_6602 : Cell := { cellDefaults with
  domain := ⟨(1723 / 8000 : ℚ), (3447 / 16000 : ℚ)⟩
  r := (21711636856037 / 25000000000000 : ℚ)
  w := (5121780382437 / 5000000000000 : ℚ)
  center := (6893 / 32000 : ℚ)
  supportValue := (128160293570261 / 156250000000000 : ℚ)
  supportSlope := (5697873530907671 / 1000000000000000 : ℚ)
  oldCenter := (128160293570261 / 156250000000000 : ℚ)
  newCoefficients := coefficients_568
  oldHi := (82050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1887]
}

def cell_6603 : Cell := { cellDefaults with
  domain := ⟨(3447 / 16000 : ℚ), (431 / 2000 : ℚ)⟩
  r := (21711636856037 / 25000000000000 : ℚ)
  w := (5121780382437 / 5000000000000 : ℚ)
  center := (1379 / 6400 : ℚ)
  supportValue := (820582052302509 / 1000000000000000 : ℚ)
  supportSlope := (9118907661761 / 1600000000000 : ℚ)
  oldCenter := (820582052302509 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_568
  oldPieces := [piece_1887, piece_1888]
}

def cell_6604 : Cell := { cellDefaults with
  domain := ⟨(431 / 2000 : ℚ), (3449 / 16000 : ℚ)⟩
  center := (6897 / 32000 : ℚ)
  supportValue := (820426385686317 / 1000000000000000 : ℚ)
  supportSlope := (711994140695893 / 125000000000000 : ℚ)
  oldCenter := (820426385686317 / 1000000000000000 : ℚ)
  oldPieces := [piece_1887, piece_1888]
}

def cell_6605 : Cell := { cellDefaults with
  domain := ⟨(3449 / 16000 : ℚ), (69 / 320 : ℚ)⟩
  center := (6899 / 32000 : ℚ)
  supportValue := (8207824163703021 / 10000000000000000 : ℚ)
  supportSlope := (5697427877153771 / 1000000000000000 : ℚ)
  oldCenter := (8207824163703021 / 10000000000000000 : ℚ)
  oldLo := (82050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1888]
}

def cell_6606 : Cell := { cellDefaults with
  domain := ⟨(69 / 320 : ℚ), (3451 / 16000 : ℚ)⟩
  center := (6901 / 32000 : ℚ)
  supportValue := (4105692742785157 / 5000000000000000 : ℚ)
  supportSlope := (5698656496136323 / 1000000000000000 : ℚ)
  oldCenter := (4105692742785157 / 5000000000000000 : ℚ)
  oldLo := (82050000000000001 / 100000000000000000 : ℚ)
  oldHi := (82150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1888, piece_1889]
}

def cell_6607 : Cell := { cellDefaults with
  domain := ⟨(3451 / 16000 : ℚ), (863 / 4000 : ℚ)⟩
  center := (6903 / 32000 : ℚ)
  supportValue := (328597912391291 / 400000000000000 : ℚ)
  supportSlope := (28501399821747597 / 5000000000000000 : ℚ)
  oldCenter := (328597912391291 / 400000000000000 : ℚ)
  oldLo := (41050000000000003 / 50000000000000000 : ℚ)
  oldHi := (41100000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1889, piece_1890]
}

def cell_6608 : Cell := { cellDefaults with
  domain := ⟨(863 / 4000 : ℚ), (3453 / 16000 : ℚ)⟩
  center := (1381 / 6400 : ℚ)
  supportValue := (4109255410616557 / 5000000000000000 : ℚ)
  supportSlope := (11403803758252451 / 2000000000000000 : ℚ)
  oldCenter := (4109255410616557 / 5000000000000000 : ℚ)
  oldLo := (82150000000000001 / 100000000000000000 : ℚ)
  oldHi := (82250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1890, piece_1891]
}

def cell_6609 : Cell := { cellDefaults with
  domain := ⟨(3453 / 16000 : ℚ), (1727 / 8000 : ℚ)⟩
  center := (6907 / 32000 : ℚ)
  supportValue := (8222074846986539 / 10000000000000000 : ℚ)
  supportSlope := (570309439143557 / 100000000000000 : ℚ)
  oldCenter := (8222074846986539 / 10000000000000000 : ℚ)
  oldLo := (41100000000000003 / 50000000000000000 : ℚ)
  oldHi := (82250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1891]
}

def cell_6610 : Cell := { cellDefaults with
  domain := ⟨(1727 / 8000 : ℚ), (691 / 3200 : ℚ)⟩
  center := (6909 / 32000 : ℚ)
  supportValue := (2056409971518027 / 2500000000000000 : ℚ)
  supportSlope := (356537846874283 / 62500000000000 : ℚ)
  oldCenter := (2056409971518027 / 2500000000000000 : ℚ)
  oldLo := (41100000000000003 / 50000000000000000 : ℚ)
  oldHi := (41150000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1891, piece_1892]
}

def cell_6611 : Cell := { cellDefaults with
  domain := ⟨(691 / 3200 : ℚ), (27 / 125 : ℚ)⟩
  center := (6911 / 32000 : ℚ)
  supportValue := (164584115043531 / 200000000000000 : ℚ)
  supportSlope := (5706225990822489 / 1000000000000000 : ℚ)
  oldCenter := (164584115043531 / 200000000000000 : ℚ)
  oldLo := (82250000000000001 / 100000000000000000 : ℚ)
  oldHi := (82350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1892, piece_1893, piece_1894]
}

def cell_6612 : Cell := { cellDefaults with
  domain := ⟨(27 / 125 : ℚ), (3457 / 16000 : ℚ)⟩
  r := (1083658827393 / 1250000000000 : ℚ)
  w := (10249106650149 / 10000000000000 : ℚ)
  center := (6913 / 32000 : ℚ)
  supportValue := (8227639775707349 / 10000000000000000 : ℚ)
  supportSlope := (1140528296672727 / 200000000000000 : ℚ)
  oldCenter := (8227639775707349 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_570
  oldLo := (82250000000000001 / 100000000000000000 : ℚ)
  oldHi := (41150000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1892]
}

def cell_6613 : Cell := { cellDefaults with
  domain := ⟨(3457 / 16000 : ℚ), (1729 / 8000 : ℚ)⟩
  r := (1083658827393 / 1250000000000 : ℚ)
  w := (10249106650149 / 10000000000000 : ℚ)
  center := (1383 / 6400 : ℚ)
  supportValue := (8231204398460077 / 10000000000000000 : ℚ)
  supportSlope := (5703938280703369 / 1000000000000000 : ℚ)
  oldCenter := (8231204398460077 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_570
  oldLo := (82250000000000001 / 100000000000000000 : ℚ)
  oldHi := (82350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1892, piece_1893, piece_1894]
}

def cell_6614 : Cell := { cellDefaults with
  domain := ⟨(1729 / 8000 : ℚ), (3459 / 16000 : ℚ)⟩
  r := (1083658827393 / 1250000000000 : ℚ)
  w := (10249106650149 / 10000000000000 : ℚ)
  center := (6917 / 32000 : ℚ)
  supportValue := (4117384989590187 / 5000000000000000 : ℚ)
  supportSlope := (5705557860883559 / 1000000000000000 : ℚ)
  oldCenter := (4117384989590187 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_570
  oldLo := (8230167597765363 / 10000000000000000 : ℚ)
  oldHi := (82400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1894, piece_1895]
}

def cell_6615 : Cell := { cellDefaults with
  domain := ⟨(3459 / 16000 : ℚ), (173 / 800 : ℚ)⟩
  r := (1083658827393 / 1250000000000 : ℚ)
  w := (10249106650149 / 10000000000000 : ℚ)
  center := (6919 / 32000 : ℚ)
  supportValue := (64362002265827 / 78125000000000 : ℚ)
  supportSlope := (5707176148348481 / 1000000000000000 : ℚ)
  oldCenter := (64362002265827 / 78125000000000 : ℚ)
  newCoefficients := coefficients_570
  oldLo := (82350000000000001 / 100000000000000000 : ℚ)
  oldHi := (82450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1895, piece_1896]
}

def cell_6616 : Cell := { cellDefaults with
  domain := ⟨(173 / 800 : ℚ), (3461 / 16000 : ℚ)⟩
  r := (1083658827393 / 1250000000000 : ℚ)
  w := (10249106650149 / 10000000000000 : ℚ)
  center := (6921 / 32000 : ℚ)
  supportValue := (515118975806433 / 625000000000000 : ℚ)
  supportSlope := (2854152747026717 / 500000000000000 : ℚ)
  oldCenter := (515118975806433 / 625000000000000 : ℚ)
  newCoefficients := coefficients_570
  oldLo := (82400000000000007 / 100000000000000000 : ℚ)
  oldHi := (82450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1896]
}

def cell_6617 : Cell := { cellDefaults with
  domain := ⟨(3461 / 16000 : ℚ), (1731 / 8000 : ℚ)⟩
  r := (1083658827393 / 1250000000000 : ℚ)
  w := (10249106650149 / 10000000000000 : ℚ)
  center := (6923 / 32000 : ℚ)
  supportValue := (515341996679197 / 625000000000000 : ℚ)
  supportSlope := (2854939243302823 / 500000000000000 : ℚ)
  oldCenter := (515341996679197 / 625000000000000 : ℚ)
  newCoefficients := coefficients_570
  oldLo := (82400000000000007 / 100000000000000000 : ℚ)
  oldHi := (82500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1896, piece_1897]
}

def cell_6618 : Cell := { cellDefaults with
  domain := ⟨(1731 / 8000 : ℚ), (3463 / 16000 : ℚ)⟩
  r := (1083658827393 / 1250000000000 : ℚ)
  w := (10249106650149 / 10000000000000 : ℚ)
  center := (277 / 1280 : ℚ)
  supportValue := (1031130133615509 / 1250000000000000 : ℚ)
  supportSlope := (2855747836580491 / 500000000000000 : ℚ)
  oldCenter := (1031130133615509 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_570
  oldLo := (82450000000000001 / 100000000000000000 : ℚ)
  oldHi := (82550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1897, piece_1898]
}

def cell_6619 : Cell := { cellDefaults with
  domain := ⟨(3463 / 16000 : ℚ), (433 / 2000 : ℚ)⟩
  r := (1083658827393 / 1250000000000 : ℚ)
  w := (10249106650149 / 10000000000000 : ℚ)
  center := (6927 / 32000 : ℚ)
  supportValue := (8252611091832601 / 10000000000000000 : ℚ)
  supportSlope := (11425777033174711 / 2000000000000000 : ℚ)
  oldCenter := (8252611091832601 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_570
  oldLo := (82500000000000007 / 100000000000000000 : ℚ)
  oldHi := (82550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1898]
}

def cell_6620 : Cell := { cellDefaults with
  domain := ⟨(433 / 2000 : ℚ), (693 / 3200 : ℚ)⟩
  r := (43308018924073 / 50000000000000 : ℚ)
  w := (10251877436003 / 10000000000000 : ℚ)
  center := (6929 / 32000 : ℚ)
  supportValue := (51568978276383 / 62500000000000 : ℚ)
  supportSlope := (57092079062393 / 10000000000000 : ℚ)
  oldCenter := (51568978276383 / 62500000000000 : ℚ)
  newCoefficients := coefficients_571
  oldLo := (82450000000000001 / 100000000000000000 : ℚ)
  oldHi := (82550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1897, piece_1898]
}

def cell_6621 : Cell := { cellDefaults with
  domain := ⟨(693 / 3200 : ℚ), (1733 / 8000 : ℚ)⟩
  r := (43308018924073 / 50000000000000 : ℚ)
  w := (10251877436003 / 10000000000000 : ℚ)
  center := (6931 / 32000 : ℚ)
  supportValue := (4127302678941163 / 5000000000000000 : ℚ)
  supportSlope := (571082381178023 / 100000000000000 : ℚ)
  oldCenter := (4127302678941163 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_571
  oldLo := (82500000000000007 / 100000000000000000 : ℚ)
  oldHi := (82600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1898, piece_1899]
}

def cell_6622 : Cell := { cellDefaults with
  domain := ⟨(1733 / 8000 : ℚ), (3467 / 16000 : ℚ)⟩
  r := (43308018924073 / 50000000000000 : ℚ)
  w := (10251877436003 / 10000000000000 : ℚ)
  center := (6933 / 32000 : ℚ)
  supportValue := (2064543740129843 / 2500000000000000 : ℚ)
  supportSlope := (357026525975801 / 62500000000000 : ℚ)
  oldCenter := (2064543740129843 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_571
  oldLo := (82550000000000001 / 100000000000000000 : ℚ)
  oldHi := (82600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1899]
}

def cell_6623 : Cell := { cellDefaults with
  domain := ⟨(3467 / 16000 : ℚ), (867 / 4000 : ℚ)⟩
  r := (43308018924073 / 50000000000000 : ℚ)
  w := (10251877436003 / 10000000000000 : ℚ)
  center := (1387 / 6400 : ℚ)
  supportValue := (4130872786371431 / 5000000000000000 : ℚ)
  supportSlope := (5713523651522223 / 1000000000000000 : ℚ)
  oldCenter := (4130872786371431 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_571
  oldLo := (82550000000000001 / 100000000000000000 : ℚ)
  oldHi := (82650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1899, piece_1900]
}

def cell_6624 : Cell := { cellDefaults with
  domain := ⟨(867 / 4000 : ℚ), (3469 / 16000 : ℚ)⟩
  r := (43308018924073 / 50000000000000 : ℚ)
  w := (10251877436003 / 10000000000000 : ℚ)
  center := (6937 / 32000 : ℚ)
  supportValue := (8265317193607249 / 10000000000000000 : ℚ)
  supportSlope := (5715138426301891 / 1000000000000000 : ℚ)
  oldCenter := (8265317193607249 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_571
  oldLo := (82600000000000007 / 100000000000000000 : ℚ)
  oldHi := (82700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1900, piece_1901]
}

def cell_6625 : Cell := { cellDefaults with
  domain := ⟨(3469 / 16000 : ℚ), (347 / 1600 : ℚ)⟩
  r := (43308018924073 / 50000000000000 : ℚ)
  w := (10251877436003 / 10000000000000 : ℚ)
  center := (6939 / 32000 : ℚ)
  supportValue := (8268889567038461 / 10000000000000000 : ℚ)
  supportSlope := (5716751680473919 / 1000000000000000 : ℚ)
  oldCenter := (8268889567038461 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_571
  oldLo := (82650000000000001 / 100000000000000000 : ℚ)
  oldHi := (82750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1901, piece_1902]
}

def cell_6626 : Cell := { cellDefaults with
  domain := ⟨(347 / 1600 : ℚ), (3471 / 16000 : ℚ)⟩
  r := (43308018924073 / 50000000000000 : ℚ)
  w := (10251877436003 / 10000000000000 : ℚ)
  center := (6941 / 32000 : ℚ)
  supportValue := (4136231437753121 / 5000000000000000 : ℚ)
  supportSlope := (178690265695447 / 31250000000000 : ℚ)
  oldCenter := (4136231437753121 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_571
  oldLo := (82700000000000007 / 100000000000000000 : ℚ)
  oldHi := (82750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1902]
}

def cell_6627 : Cell := { cellDefaults with
  domain := ⟨(3471 / 16000 : ℚ), (217 / 1000 : ℚ)⟩
  r := (43308018924073 / 50000000000000 : ℚ)
  w := (10251877436003 / 10000000000000 : ℚ)
  center := (6943 / 32000 : ℚ)
  supportValue := (8276037191898491 / 10000000000000000 : ℚ)
  supportSlope := (1143890355659849 / 200000000000000 : ℚ)
  oldCenter := (8276037191898491 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_571
  oldLo := (82700000000000007 / 100000000000000000 : ℚ)
  oldHi := (82800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1902, piece_1903]
}

def cell_6628 : Cell := { cellDefaults with
  domain := ⟨(217 / 1000 : ℚ), (3473 / 16000 : ℚ)⟩
  r := (21634883398391 / 25000000000000 : ℚ)
  w := (5127323213677 / 5000000000000 : ℚ)
  center := (1389 / 6400 : ℚ)
  supportValue := (8274453259138669 / 10000000000000000 : ℚ)
  supportSlope := (571607440755173 / 100000000000000 : ℚ)
  oldCenter := (8274453259138669 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_572
  oldLo := (82700000000000007 / 100000000000000000 : ℚ)
  oldHi := (82800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1902, piece_1903]
}

def cell_6629 : Cell := { cellDefaults with
  domain := ⟨(3473 / 16000 : ℚ), (1737 / 8000 : ℚ)⟩
  r := (21634883398391 / 25000000000000 : ℚ)
  w := (5127323213677 / 5000000000000 : ℚ)
  center := (6947 / 32000 : ℚ)
  supportValue := (8278026143951881 / 10000000000000000 : ℚ)
  supportSlope := (714702142608381 / 125000000000000 : ℚ)
  oldCenter := (8278026143951881 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_572
  oldLo := (82750000000000001 / 100000000000000000 : ℚ)
  oldHi := (82800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1903]
}

def cell_6630 : Cell := { cellDefaults with
  domain := ⟨(1737 / 8000 : ℚ), (139 / 640 : ℚ)⟩
  r := (21634883398391 / 25000000000000 : ℚ)
  w := (5127323213677 / 5000000000000 : ℚ)
  center := (6949 / 32000 : ℚ)
  supportValue := (8281600035870119 / 10000000000000000 : ℚ)
  supportSlope := (1429693016122613 / 250000000000000 : ℚ)
  oldCenter := (8281600035870119 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_572
  oldLo := (82750000000000001 / 100000000000000000 : ℚ)
  oldHi := (82850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1903, piece_1904]
}

def cell_6631 : Cell := { cellDefaults with
  domain := ⟨(139 / 640 : ℚ), (869 / 4000 : ℚ)⟩
  r := (21634883398391 / 25000000000000 : ℚ)
  w := (5127323213677 / 5000000000000 : ℚ)
  center := (6951 / 32000 : ℚ)
  supportValue := (8285174934014253 / 10000000000000000 : ℚ)
  supportSlope := (5720383870162493 / 1000000000000000 : ℚ)
  oldCenter := (8285174934014253 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_572
  oldLo := (82800000000000007 / 100000000000000000 : ℚ)
  oldHi := (82900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1904, piece_1905, piece_1906]
}

def cell_6632 : Cell := { cellDefaults with
  domain := ⟨(869 / 4000 : ℚ), (3477 / 16000 : ℚ)⟩
  r := (21634883398391 / 25000000000000 : ℚ)
  w := (5127323213677 / 5000000000000 : ℚ)
  center := (6953 / 32000 : ℚ)
  supportValue := (8288750553821623 / 10000000000000000 : ℚ)
  supportSlope := (1430498547803527 / 250000000000000 : ℚ)
  oldCenter := (8288750553821623 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_572
  oldLo := (2071368715083799 / 2500000000000000 : ℚ)
  oldHi := (41475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1906, piece_1907]
}

def cell_6633 : Cell := { cellDefaults with
  domain := ⟨(3477 / 16000 : ℚ), (1739 / 8000 : ℚ)⟩
  r := (21634883398391 / 25000000000000 : ℚ)
  w := (5127323213677 / 5000000000000 : ℚ)
  center := (1391 / 6400 : ℚ)
  supportValue := (4146163569638041 / 5000000000000000 : ℚ)
  supportSlope := (5723280048854917 / 1000000000000000 : ℚ)
  oldCenter := (4146163569638041 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_572
  oldLo := (82900000000000007 / 100000000000000000 : ℚ)
  oldHi := (41475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1907]
}

def cell_6634 : Cell := { cellDefaults with
  domain := ⟨(1739 / 8000 : ℚ), (3479 / 16000 : ℚ)⟩
  r := (21634883398391 / 25000000000000 : ℚ)
  w := (5127323213677 / 5000000000000 : ℚ)
  center := (6957 / 32000 : ℚ)
  supportValue := (8295904729955771 / 10000000000000000 : ℚ)
  supportSlope := (5724691304680007 / 1000000000000000 : ℚ)
  oldCenter := (8295904729955771 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_572
  oldLo := (82900000000000007 / 100000000000000000 : ℚ)
  oldHi := (83000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1907, piece_1908]
}

def cell_6635 : Cell := { cellDefaults with
  domain := ⟨(3479 / 16000 : ℚ), (87 / 400 : ℚ)⟩
  r := (21634883398391 / 25000000000000 : ℚ)
  w := (5127323213677 / 5000000000000 : ℚ)
  center := (6959 / 32000 : ℚ)
  supportValue := (8299483207916313 / 10000000000000000 : ℚ)
  supportSlope := (1431574768167021 / 250000000000000 : ℚ)
  oldCenter := (8299483207916313 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_572
  oldLo := (41475000000000001 / 50000000000000000 : ℚ)
  oldHi := (41525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1908, piece_1909]
}

def cell_6636 : Cell := { cellDefaults with
  domain := ⟨(87 / 400 : ℚ), (3481 / 16000 : ℚ)⟩
  r := (17292639495837 / 20000000000000 : ℚ)
  w := (10257413973237 / 10000000000000 : ℚ)
  center := (6961 / 32000 : ℚ)
  supportValue := (1659578074155947 / 2000000000000000 : ℚ)
  supportSlope := (715350191875519 / 125000000000000 : ℚ)
  oldCenter := (1659578074155947 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_573
  oldLo := (41475000000000001 / 50000000000000000 : ℚ)
  oldHi := (83000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1908]
}

def cell_6637 : Cell := { cellDefaults with
  domain := ⟨(3481 / 16000 : ℚ), (1741 / 8000 : ℚ)⟩
  r := (17292639495837 / 20000000000000 : ℚ)
  w := (10257413973237 / 10000000000000 : ℚ)
  center := (6963 / 32000 : ℚ)
  supportValue := (2075366883376501 / 2500000000000000 : ℚ)
  supportSlope := (5724005927561393 / 1000000000000000 : ℚ)
  oldCenter := (2075366883376501 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_573
  oldLo := (41475000000000001 / 50000000000000000 : ℚ)
  oldHi := (41525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1908, piece_1909]
}

def cell_6638 : Cell := { cellDefaults with
  domain := ⟨(1741 / 8000 : ℚ), (3483 / 16000 : ℚ)⟩
  r := (17292639495837 / 20000000000000 : ℚ)
  w := (10257413973237 / 10000000000000 : ℚ)
  center := (1393 / 6400 : ℚ)
  supportValue := (4152522849843717 / 5000000000000000 : ℚ)
  supportSlope := (5725612464241081 / 1000000000000000 : ℚ)
  oldCenter := (4152522849843717 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_573
  oldLo := (83000000000000007 / 100000000000000000 : ℚ)
  oldHi := (83100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1909, piece_1910]
}

def cell_6639 : Cell := { cellDefaults with
  domain := ⟨(3483 / 16000 : ℚ), (871 / 4000 : ℚ)⟩
  r := (17292639495837 / 20000000000000 : ℚ)
  w := (10257413973237 / 10000000000000 : ℚ)
  center := (6967 / 32000 : ℚ)
  supportValue := (4154312278732693 / 5000000000000000 : ℚ)
  supportSlope := (458177403290847 / 80000000000000 : ℚ)
  oldCenter := (4154312278732693 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_573
  oldLo := (41525000000000001 / 50000000000000000 : ℚ)
  oldHi := (41575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1910, piece_1911]
}

def cell_6640 : Cell := { cellDefaults with
  domain := ⟨(871 / 4000 : ℚ), (697 / 3200 : ℚ)⟩
  r := (17292639495837 / 20000000000000 : ℚ)
  w := (10257413973237 / 10000000000000 : ℚ)
  center := (6969 / 32000 : ℚ)
  supportValue := (103902555100557 / 125000000000000 : ℚ)
  supportSlope := (1432114593503453 / 250000000000000 : ℚ)
  oldCenter := (103902555100557 / 125000000000000 : ℚ)
  newCoefficients := coefficients_573
  oldLo := (83100000000000007 / 100000000000000000 : ℚ)
  oldHi := (41575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1911]
}

def cell_6641 : Cell := { cellDefaults with
  domain := ⟨(697 / 3200 : ℚ), (1743 / 8000 : ℚ)⟩
  r := (17292639495837 / 20000000000000 : ℚ)
  w := (10257413973237 / 10000000000000 : ℚ)
  center := (6971 / 32000 : ℚ)
  supportValue := (1039473157681463 / 1250000000000000 : ℚ)
  supportSlope := (28649562592315547 / 5000000000000000 : ℚ)
  oldCenter := (1039473157681463 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_573
  oldLo := (83100000000000007 / 100000000000000000 : ℚ)
  oldHi := (83200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1911, piece_1912]
}

def cell_6642 : Cell := { cellDefaults with
  domain := ⟨(1743 / 8000 : ℚ), (3487 / 16000 : ℚ)⟩
  r := (17292639495837 / 20000000000000 : ℚ)
  w := (10257413973237 / 10000000000000 : ℚ)
  center := (6973 / 32000 : ℚ)
  supportValue := (4159683487229301 / 5000000000000000 : ℚ)
  supportSlope := (1432879121707753 / 250000000000000 : ℚ)
  oldCenter := (4159683487229301 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_573
  oldLo := (41575000000000001 / 50000000000000000 : ℚ)
  oldHi := (41625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1912, piece_1913]
}

def cell_6643 : Cell := { cellDefaults with
  domain := ⟨(3487 / 16000 : ℚ), (109 / 500 : ℚ)⟩
  r := (17292639495837 / 20000000000000 : ℚ)
  w := (10257413973237 / 10000000000000 : ℚ)
  center := (279 / 1280 : ℚ)
  supportValue := (1040368689022697 / 1250000000000000 : ℚ)
  supportSlope := (179157081861947 / 31250000000000 : ℚ)
  oldCenter := (1040368689022697 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_573
  oldLo := (83200000000000007 / 100000000000000000 : ℚ)
  oldHi := (41625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1913]
}

def cell_6644 : Cell := { cellDefaults with
  domain := ⟨(109 / 500 : ℚ), (3489 / 16000 : ℚ)⟩
  r := (86387025472753 / 100000000000000 : ℚ)
  w := (10260181140683 / 10000000000000 : ℚ)
  center := (6977 / 32000 : ℚ)
  supportValue := (2080337064956273 / 2500000000000000 : ℚ)
  supportSlope := (2864611264956629 / 500000000000000 : ℚ)
  oldCenter := (2080337064956273 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_574
  oldLo := (41575000000000001 / 50000000000000000 : ℚ)
  oldHi := (41625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1912, piece_1913]
}

def cell_6645 : Cell := { cellDefaults with
  domain := ⟨(3489 / 16000 : ℚ), (349 / 1600 : ℚ)⟩
  r := (86387025472753 / 100000000000000 : ℚ)
  w := (10260181140683 / 10000000000000 : ℚ)
  center := (6979 / 32000 : ℚ)
  supportValue := (1664985933632703 / 2000000000000000 : ℚ)
  supportSlope := (5730825215227497 / 1000000000000000 : ℚ)
  oldCenter := (1664985933632703 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_574
  oldLo := (83200000000000007 / 100000000000000000 : ℚ)
  oldHi := (83300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1913, piece_1914]
}

def cell_6646 : Cell := { cellDefaults with
  domain := ⟨(349 / 1600 : ℚ), (3491 / 16000 : ℚ)⟩
  r := (86387025472753 / 100000000000000 : ℚ)
  w := (10260181140683 / 10000000000000 : ℚ)
  center := (6981 / 32000 : ℚ)
  supportValue := (8328511773484403 / 10000000000000000 : ℚ)
  supportSlope := (286621320502789 / 50000000000000 : ℚ)
  oldCenter := (8328511773484403 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_574
  oldLo := (41625000000000001 / 50000000000000000 : ℚ)
  oldHi := (41675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1914, piece_1915]
}

def cell_6647 : Cell := { cellDefaults with
  domain := ⟨(3491 / 16000 : ℚ), (873 / 4000 : ℚ)⟩
  r := (86387025472753 / 100000000000000 : ℚ)
  w := (10260181140683 / 10000000000000 : ℚ)
  center := (6983 / 32000 : ℚ)
  supportValue := (4166047440061323 / 5000000000000000 : ℚ)
  supportSlope := (1146725537438087 / 200000000000000 : ℚ)
  oldCenter := (4166047440061323 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_574
  oldLo := (83300000000000007 / 100000000000000000 : ℚ)
  oldHi := (41675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1915]
}

def cell_6648 : Cell := { cellDefaults with
  domain := ⟨(873 / 4000 : ℚ), (3493 / 16000 : ℚ)⟩
  r := (86387025472753 / 100000000000000 : ℚ)
  w := (10260181140683 / 10000000000000 : ℚ)
  center := (1397 / 6400 : ℚ)
  supportValue := (1667135797442561 / 2000000000000000 : ℚ)
  supportSlope := (5735119247793463 / 1000000000000000 : ℚ)
  oldCenter := (1667135797442561 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_574
  oldLo := (83300000000000007 / 100000000000000000 : ℚ)
  oldHi := (83400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1915, piece_1916]
}

def cell_6649 : Cell := { cellDefaults with
  domain := ⟨(3493 / 16000 : ℚ), (1747 / 8000 : ℚ)⟩
  r := (86387025472753 / 100000000000000 : ℚ)
  w := (10260181140683 / 10000000000000 : ℚ)
  center := (6987 / 32000 : ℚ)
  supportValue := (833926392962347 / 1000000000000000 : ℚ)
  supportSlope := (5736719387485323 / 1000000000000000 : ℚ)
  oldCenter := (833926392962347 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_574
  oldLo := (41675000000000001 / 50000000000000000 : ℚ)
  oldHi := (41725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1916, piece_1917, piece_1918]
}

theorem check_6600 : SourceCertificateFamily.RightNormalized.check cell_6600 = true := by
  decide +kernel

theorem check_6601 : SourceCertificateFamily.RightNormalized.check cell_6601 = true := by
  decide +kernel

theorem check_6602 : SourceCertificateFamily.RightNormalized.check cell_6602 = true := by
  decide +kernel

theorem check_6603 : SourceCertificateFamily.RightNormalized.check cell_6603 = true := by
  decide +kernel

theorem check_6604 : SourceCertificateFamily.RightNormalized.check cell_6604 = true := by
  decide +kernel

theorem check_6605 : SourceCertificateFamily.RightNormalized.check cell_6605 = true := by
  decide +kernel

theorem check_6606 : SourceCertificateFamily.RightNormalized.check cell_6606 = true := by
  decide +kernel

theorem check_6607 : SourceCertificateFamily.RightNormalized.check cell_6607 = true := by
  decide +kernel

theorem check_6608 : SourceCertificateFamily.RightNormalized.check cell_6608 = true := by
  decide +kernel

theorem check_6609 : SourceCertificateFamily.RightNormalized.check cell_6609 = true := by
  decide +kernel

theorem check_6610 : SourceCertificateFamily.RightNormalized.check cell_6610 = true := by
  decide +kernel

theorem check_6611 : SourceCertificateFamily.RightNormalized.check cell_6611 = true := by
  decide +kernel

theorem check_6612 : SourceCertificateFamily.RightNormalized.check cell_6612 = true := by
  decide +kernel

theorem check_6613 : SourceCertificateFamily.RightNormalized.check cell_6613 = true := by
  decide +kernel

theorem check_6614 : SourceCertificateFamily.RightNormalized.check cell_6614 = true := by
  decide +kernel

theorem check_6615 : SourceCertificateFamily.RightNormalized.check cell_6615 = true := by
  decide +kernel

theorem check_6616 : SourceCertificateFamily.RightNormalized.check cell_6616 = true := by
  decide +kernel

theorem check_6617 : SourceCertificateFamily.RightNormalized.check cell_6617 = true := by
  decide +kernel

theorem check_6618 : SourceCertificateFamily.RightNormalized.check cell_6618 = true := by
  decide +kernel

theorem check_6619 : SourceCertificateFamily.RightNormalized.check cell_6619 = true := by
  decide +kernel

theorem check_6620 : SourceCertificateFamily.RightNormalized.check cell_6620 = true := by
  decide +kernel

theorem check_6621 : SourceCertificateFamily.RightNormalized.check cell_6621 = true := by
  decide +kernel

theorem check_6622 : SourceCertificateFamily.RightNormalized.check cell_6622 = true := by
  decide +kernel

theorem check_6623 : SourceCertificateFamily.RightNormalized.check cell_6623 = true := by
  decide +kernel

theorem check_6624 : SourceCertificateFamily.RightNormalized.check cell_6624 = true := by
  decide +kernel

theorem check_6625 : SourceCertificateFamily.RightNormalized.check cell_6625 = true := by
  decide +kernel

theorem check_6626 : SourceCertificateFamily.RightNormalized.check cell_6626 = true := by
  decide +kernel

theorem check_6627 : SourceCertificateFamily.RightNormalized.check cell_6627 = true := by
  decide +kernel

theorem check_6628 : SourceCertificateFamily.RightNormalized.check cell_6628 = true := by
  decide +kernel

theorem check_6629 : SourceCertificateFamily.RightNormalized.check cell_6629 = true := by
  decide +kernel

theorem check_6630 : SourceCertificateFamily.RightNormalized.check cell_6630 = true := by
  decide +kernel

theorem check_6631 : SourceCertificateFamily.RightNormalized.check cell_6631 = true := by
  decide +kernel

theorem check_6632 : SourceCertificateFamily.RightNormalized.check cell_6632 = true := by
  decide +kernel

theorem check_6633 : SourceCertificateFamily.RightNormalized.check cell_6633 = true := by
  decide +kernel

theorem check_6634 : SourceCertificateFamily.RightNormalized.check cell_6634 = true := by
  decide +kernel

theorem check_6635 : SourceCertificateFamily.RightNormalized.check cell_6635 = true := by
  decide +kernel

theorem check_6636 : SourceCertificateFamily.RightNormalized.check cell_6636 = true := by
  decide +kernel

theorem check_6637 : SourceCertificateFamily.RightNormalized.check cell_6637 = true := by
  decide +kernel

theorem check_6638 : SourceCertificateFamily.RightNormalized.check cell_6638 = true := by
  decide +kernel

theorem check_6639 : SourceCertificateFamily.RightNormalized.check cell_6639 = true := by
  decide +kernel

theorem check_6640 : SourceCertificateFamily.RightNormalized.check cell_6640 = true := by
  decide +kernel

theorem check_6641 : SourceCertificateFamily.RightNormalized.check cell_6641 = true := by
  decide +kernel

theorem check_6642 : SourceCertificateFamily.RightNormalized.check cell_6642 = true := by
  decide +kernel

theorem check_6643 : SourceCertificateFamily.RightNormalized.check cell_6643 = true := by
  decide +kernel

theorem check_6644 : SourceCertificateFamily.RightNormalized.check cell_6644 = true := by
  decide +kernel

theorem check_6645 : SourceCertificateFamily.RightNormalized.check cell_6645 = true := by
  decide +kernel

theorem check_6646 : SourceCertificateFamily.RightNormalized.check cell_6646 = true := by
  decide +kernel

theorem check_6647 : SourceCertificateFamily.RightNormalized.check cell_6647 = true := by
  decide +kernel

theorem check_6648 : SourceCertificateFamily.RightNormalized.check cell_6648 = true := by
  decide +kernel

theorem check_6649 : SourceCertificateFamily.RightNormalized.check cell_6649 = true := by
  decide +kernel

def cells : List Cell := [cell_6600, cell_6601, cell_6602, cell_6603, cell_6604, cell_6605, cell_6606, cell_6607, cell_6608, cell_6609, cell_6610, cell_6611, cell_6612, cell_6613, cell_6614, cell_6615, cell_6616, cell_6617, cell_6618, cell_6619, cell_6620, cell_6621, cell_6622, cell_6623, cell_6624, cell_6625, cell_6626, cell_6627, cell_6628, cell_6629, cell_6630, cell_6631, cell_6632, cell_6633, cell_6634, cell_6635, cell_6636, cell_6637, cell_6638, cell_6639, cell_6640, cell_6641, cell_6642, cell_6643, cell_6644, cell_6645, cell_6646, cell_6647, cell_6648, cell_6649]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_6600, SourceCertificateFamily.of_right_checked check_6601, SourceCertificateFamily.of_right_checked check_6602, SourceCertificateFamily.of_right_checked check_6603, SourceCertificateFamily.of_right_checked check_6604, SourceCertificateFamily.of_right_checked check_6605, SourceCertificateFamily.of_right_checked check_6606, SourceCertificateFamily.of_right_checked check_6607, SourceCertificateFamily.of_right_checked check_6608, SourceCertificateFamily.of_right_checked check_6609, SourceCertificateFamily.of_right_checked check_6610, SourceCertificateFamily.of_right_checked check_6611, SourceCertificateFamily.of_right_checked check_6612, SourceCertificateFamily.of_right_checked check_6613, SourceCertificateFamily.of_right_checked check_6614, SourceCertificateFamily.of_right_checked check_6615, SourceCertificateFamily.of_right_checked check_6616, SourceCertificateFamily.of_right_checked check_6617, SourceCertificateFamily.of_right_checked check_6618, SourceCertificateFamily.of_right_checked check_6619, SourceCertificateFamily.of_right_checked check_6620, SourceCertificateFamily.of_right_checked check_6621, SourceCertificateFamily.of_right_checked check_6622, SourceCertificateFamily.of_right_checked check_6623, SourceCertificateFamily.of_right_checked check_6624, SourceCertificateFamily.of_right_checked check_6625, SourceCertificateFamily.of_right_checked check_6626, SourceCertificateFamily.of_right_checked check_6627, SourceCertificateFamily.of_right_checked check_6628, SourceCertificateFamily.of_right_checked check_6629, SourceCertificateFamily.of_right_checked check_6630, SourceCertificateFamily.of_right_checked check_6631, SourceCertificateFamily.of_right_checked check_6632, SourceCertificateFamily.of_right_checked check_6633, SourceCertificateFamily.of_right_checked check_6634, SourceCertificateFamily.of_right_checked check_6635, SourceCertificateFamily.of_right_checked check_6636, SourceCertificateFamily.of_right_checked check_6637, SourceCertificateFamily.of_right_checked check_6638, SourceCertificateFamily.of_right_checked check_6639, SourceCertificateFamily.of_right_checked check_6640, SourceCertificateFamily.of_right_checked check_6641, SourceCertificateFamily.of_right_checked check_6642, SourceCertificateFamily.of_right_checked check_6643, SourceCertificateFamily.of_right_checked check_6644, SourceCertificateFamily.of_right_checked check_6645, SourceCertificateFamily.of_right_checked check_6646, SourceCertificateFamily.of_right_checked check_6647, SourceCertificateFamily.of_right_checked check_6648, SourceCertificateFamily.of_right_checked check_6649, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0132

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0132
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0132
open AnalyticBounds.ExpressionCertificate

theorem linked_6600 : Linked cell_6600 pieces := by
  refine ⟨piece_568,piece_568_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6600,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1885_mem
    · exact piece_1886_mem

theorem linked_6601 : Linked cell_6601 pieces := by
  refine ⟨piece_568,piece_568_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6601,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1886_mem
    · exact piece_1887_mem

theorem linked_6602 : Linked cell_6602 pieces := by
  refine ⟨piece_568,piece_568_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6602,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1887_mem

theorem linked_6603 : Linked cell_6603 pieces := by
  refine ⟨piece_568,piece_568_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6603,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1887_mem
    · exact piece_1888_mem

theorem linked_6604 : Linked cell_6604 pieces := by
  refine ⟨piece_569,piece_569_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6604,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1887_mem
    · exact piece_1888_mem

theorem linked_6605 : Linked cell_6605 pieces := by
  refine ⟨piece_569,piece_569_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6605,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1888_mem

theorem linked_6606 : Linked cell_6606 pieces := by
  refine ⟨piece_569,piece_569_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6606,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1888_mem
    · exact piece_1889_mem

theorem linked_6607 : Linked cell_6607 pieces := by
  refine ⟨piece_569,piece_569_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6607,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1889_mem
    · exact piece_1890_mem

theorem linked_6608 : Linked cell_6608 pieces := by
  refine ⟨piece_569,piece_569_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6608,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1890_mem
    · exact piece_1891_mem

theorem linked_6609 : Linked cell_6609 pieces := by
  refine ⟨piece_569,piece_569_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6609,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1891_mem

theorem linked_6610 : Linked cell_6610 pieces := by
  refine ⟨piece_569,piece_569_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6610,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1891_mem
    · exact piece_1892_mem

theorem linked_6611 : Linked cell_6611 pieces := by
  refine ⟨piece_569,piece_569_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6611,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1892_mem
    · exact piece_1893_mem
    · exact piece_1894_mem

theorem linked_6612 : Linked cell_6612 pieces := by
  refine ⟨piece_570,piece_570_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6612,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1892_mem

theorem linked_6613 : Linked cell_6613 pieces := by
  refine ⟨piece_570,piece_570_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6613,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1892_mem
    · exact piece_1893_mem
    · exact piece_1894_mem

theorem linked_6614 : Linked cell_6614 pieces := by
  refine ⟨piece_570,piece_570_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6614,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1894_mem
    · exact piece_1895_mem

theorem linked_6615 : Linked cell_6615 pieces := by
  refine ⟨piece_570,piece_570_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6615,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1895_mem
    · exact piece_1896_mem

theorem linked_6616 : Linked cell_6616 pieces := by
  refine ⟨piece_570,piece_570_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6616,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1896_mem

theorem linked_6617 : Linked cell_6617 pieces := by
  refine ⟨piece_570,piece_570_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6617,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1896_mem
    · exact piece_1897_mem

theorem linked_6618 : Linked cell_6618 pieces := by
  refine ⟨piece_570,piece_570_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6618,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1897_mem
    · exact piece_1898_mem

theorem linked_6619 : Linked cell_6619 pieces := by
  refine ⟨piece_570,piece_570_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6619,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1898_mem

theorem linked_6620 : Linked cell_6620 pieces := by
  refine ⟨piece_571,piece_571_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6620,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1897_mem
    · exact piece_1898_mem

theorem linked_6621 : Linked cell_6621 pieces := by
  refine ⟨piece_571,piece_571_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6621,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1898_mem
    · exact piece_1899_mem

theorem linked_6622 : Linked cell_6622 pieces := by
  refine ⟨piece_571,piece_571_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6622,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1899_mem

theorem linked_6623 : Linked cell_6623 pieces := by
  refine ⟨piece_571,piece_571_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6623,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1899_mem
    · exact piece_1900_mem

theorem linked_6624 : Linked cell_6624 pieces := by
  refine ⟨piece_571,piece_571_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6624,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1900_mem
    · exact piece_1901_mem

theorem linked_6625 : Linked cell_6625 pieces := by
  refine ⟨piece_571,piece_571_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6625,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1901_mem
    · exact piece_1902_mem

theorem linked_6626 : Linked cell_6626 pieces := by
  refine ⟨piece_571,piece_571_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6626,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1902_mem

theorem linked_6627 : Linked cell_6627 pieces := by
  refine ⟨piece_571,piece_571_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6627,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1902_mem
    · exact piece_1903_mem

theorem linked_6628 : Linked cell_6628 pieces := by
  refine ⟨piece_572,piece_572_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6628,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1902_mem
    · exact piece_1903_mem

theorem linked_6629 : Linked cell_6629 pieces := by
  refine ⟨piece_572,piece_572_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6629,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1903_mem

theorem linked_6630 : Linked cell_6630 pieces := by
  refine ⟨piece_572,piece_572_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6630,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1903_mem
    · exact piece_1904_mem

theorem linked_6631 : Linked cell_6631 pieces := by
  refine ⟨piece_572,piece_572_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6631,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1904_mem
    · exact piece_1905_mem
    · exact piece_1906_mem

theorem linked_6632 : Linked cell_6632 pieces := by
  refine ⟨piece_572,piece_572_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6632,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1906_mem
    · exact piece_1907_mem

theorem linked_6633 : Linked cell_6633 pieces := by
  refine ⟨piece_572,piece_572_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6633,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1907_mem

theorem linked_6634 : Linked cell_6634 pieces := by
  refine ⟨piece_572,piece_572_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6634,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1907_mem
    · exact piece_1908_mem

theorem linked_6635 : Linked cell_6635 pieces := by
  refine ⟨piece_572,piece_572_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6635,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1908_mem
    · exact piece_1909_mem

theorem linked_6636 : Linked cell_6636 pieces := by
  refine ⟨piece_573,piece_573_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6636,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1908_mem

theorem linked_6637 : Linked cell_6637 pieces := by
  refine ⟨piece_573,piece_573_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6637,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1908_mem
    · exact piece_1909_mem

theorem linked_6638 : Linked cell_6638 pieces := by
  refine ⟨piece_573,piece_573_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6638,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1909_mem
    · exact piece_1910_mem

theorem linked_6639 : Linked cell_6639 pieces := by
  refine ⟨piece_573,piece_573_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6639,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1910_mem
    · exact piece_1911_mem

theorem linked_6640 : Linked cell_6640 pieces := by
  refine ⟨piece_573,piece_573_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6640,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1911_mem

theorem linked_6641 : Linked cell_6641 pieces := by
  refine ⟨piece_573,piece_573_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6641,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1911_mem
    · exact piece_1912_mem

theorem linked_6642 : Linked cell_6642 pieces := by
  refine ⟨piece_573,piece_573_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6642,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1912_mem
    · exact piece_1913_mem

theorem linked_6643 : Linked cell_6643 pieces := by
  refine ⟨piece_573,piece_573_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6643,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1913_mem

theorem linked_6644 : Linked cell_6644 pieces := by
  refine ⟨piece_574,piece_574_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6644,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1912_mem
    · exact piece_1913_mem

theorem linked_6645 : Linked cell_6645 pieces := by
  refine ⟨piece_574,piece_574_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6645,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1913_mem
    · exact piece_1914_mem

theorem linked_6646 : Linked cell_6646 pieces := by
  refine ⟨piece_574,piece_574_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6646,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1914_mem
    · exact piece_1915_mem

theorem linked_6647 : Linked cell_6647 pieces := by
  refine ⟨piece_574,piece_574_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6647,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1915_mem

theorem linked_6648 : Linked cell_6648 pieces := by
  refine ⟨piece_574,piece_574_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6648,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1915_mem
    · exact piece_1916_mem

theorem linked_6649 : Linked cell_6649 pieces := by
  refine ⟨piece_574,piece_574_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_6649,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_1916_mem
    · exact piece_1917_mem
    · exact piece_1918_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0132.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0132.cells,List.forall_mem_cons]
  exact ⟨linked_6600, linked_6601, linked_6602, linked_6603, linked_6604, linked_6605, linked_6606, linked_6607, linked_6608, linked_6609, linked_6610, linked_6611, linked_6612, linked_6613, linked_6614, linked_6615, linked_6616, linked_6617, linked_6618, linked_6619, linked_6620, linked_6621, linked_6622, linked_6623, linked_6624, linked_6625, linked_6626, linked_6627, linked_6628, linked_6629, linked_6630, linked_6631, linked_6632, linked_6633, linked_6634, linked_6635, linked_6636, linked_6637, linked_6638, linked_6639, linked_6640, linked_6641, linked_6642, linked_6643, linked_6644, linked_6645, linked_6646, linked_6647, linked_6648, linked_6649, by simp⟩

theorem covered : covers (861 / 4000 : ℚ) (1747 / 8000 : ℚ)
    (SourceCertificates.Chunk0132.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0132
