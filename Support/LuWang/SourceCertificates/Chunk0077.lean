import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0077
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(147 / 1280 : ℚ), (919 / 8000 : ℚ)⟩
  branch := .right
  r := (267360104049 / 250000000000 : ℚ)
  w := (3053843474067 / 3125000000000 : ℚ)
  center := (7351 / 64000 : ℚ)
  supportValue := (1950321035618967 / 5000000000000000 : ℚ)
  supportSlope := (2178950585824957 / 500000000000000 : ℚ)
  oldCenter := (1950321035618967 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_351
  oldLo := (39050000000000001 / 100000000000000000 : ℚ)
  oldHi := (39100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_950]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_3850 : Cell := { cellDefaults with
  r := (10707337473609 / 10000000000000 : ℚ)
  w := (24418588876663 / 25000000000000 : ℚ)
  newCoefficients := coefficients_348
  oldLo := (38950000000000001 / 100000000000000000 : ℚ)
  oldHi := (39050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_948, piece_949]
}

def cell_3851 : Cell := { cellDefaults with
  domain := ⟨(919 / 8000 : ℚ), (3677 / 32000 : ℚ)⟩
  r := (10707337473609 / 10000000000000 : ℚ)
  w := (24418588876663 / 25000000000000 : ℚ)
  center := (7353 / 64000 : ℚ)
  supportValue := (39020041585396953 / 100000000000000000 : ℚ)
  supportSlope := (4359551594008693 / 1000000000000000 : ℚ)
  oldCenter := (39020041585396953 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_348
  oldLo := (39000000000000001 / 100000000000000000 : ℚ)
  oldHi := (39050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_949]
}

def cell_3852 : Cell := { cellDefaults with
  domain := ⟨(3677 / 32000 : ℚ), (1839 / 16000 : ℚ)⟩
  r := (10707337473609 / 10000000000000 : ℚ)
  w := (24418588876663 / 25000000000000 : ℚ)
  center := (1471 / 12800 : ℚ)
  supportValue := (39033667910050507 / 100000000000000000 : ℚ)
  supportSlope := (2180648998231227 / 500000000000000 : ℚ)
  oldCenter := (39033667910050507 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_348
  oldLo := (39000000000000001 / 100000000000000000 : ℚ)
  oldHi := (39050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_949]
}

def cell_3853 : Cell := { cellDefaults with
  domain := ⟨(1839 / 16000 : ℚ), (3679 / 32000 : ℚ)⟩
  r := (10707337473609 / 10000000000000 : ℚ)
  w := (24418588876663 / 25000000000000 : ℚ)
  center := (7357 / 64000 : ℚ)
  supportValue := (1561891675545231 / 4000000000000000 : ℚ)
  supportSlope := (8724126747360117 / 2000000000000000 : ℚ)
  oldCenter := (1561891675545231 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_348
  oldLo := (39000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_949, piece_950]
}

def cell_3854 : Cell := { cellDefaults with
  domain := ⟨(3679 / 32000 : ℚ), (23 / 200 : ℚ)⟩
  r := (10707337473609 / 10000000000000 : ℚ)
  w := (24418588876663 / 25000000000000 : ℚ)
  center := (7359 / 64000 : ℚ)
  supportValue := (1953046439032379 / 5000000000000000 : ℚ)
  supportSlope := (2180765605172219 / 500000000000000 : ℚ)
  oldCenter := (1953046439032379 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_348
  oldPieces := [piece_950]
}

def cell_3855 : Cell := { cellDefaults with
  domain := ⟨(23 / 200 : ℚ), (184050000000000001 / 1600000000000000000 : ℚ)⟩
  center := (368050000000000001 / 3200000000000000000 : ℚ)
  supportValue := (39052261205254507 / 100000000000000000 : ℚ)
  supportSlope := (8720908654346541 / 2000000000000000 : ℚ)
  oldCenter := (39052261205254507 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_349
  oldLo := (39000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_949, piece_950]
}

def cell_3856 : Cell := { cellDefaults with
  domain := ⟨(184050000000000001 / 1600000000000000000 : ℚ), (92050000000000001 / 800000000000000000 : ℚ)⟩
  center := (368150000000000003 / 3200000000000000000 : ℚ)
  supportValue := (781317895285731 / 2000000000000000 : ℚ)
  supportSlope := (27256935866537 / 6250000000000 : ℚ)
  oldCenter := (781317895285731 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_349
  oldPieces := [piece_950]
}

def cell_3857 : Cell := { cellDefaults with
  domain := ⟨(92050000000000001 / 800000000000000000 : ℚ), (2301675977653631 / 20000000000000000 : ℚ)⟩
  center := (184117039106145241 / 1600000000000000000 : ℚ)
  supportValue := (39077355258506413 / 100000000000000000 : ℚ)
  supportSlope := (4362574312068239 / 1000000000000000 : ℚ)
  oldCenter := (39077355258506413 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_349
  oldPieces := [piece_950]
}

def cell_3858 : Cell := { cellDefaults with
  domain := ⟨(2301675977653631 / 20000000000000000 : ℚ), (92083519553072621 / 800000000000000000 : ℚ)⟩
  center := (184150558659217861 / 1600000000000000000 : ℚ)
  supportValue := (3908649595345939 / 10000000000000000 : ℚ)
  supportSlope := (21818718789789737 / 5000000000000000 : ℚ)
  oldCenter := (3908649595345939 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_350
  oldPieces := [piece_950]
}

def cell_3859 : Cell := { cellDefaults with
  domain := ⟨(92083519553072621 / 800000000000000000 : ℚ), (46050000000000001 / 400000000000000000 : ℚ)⟩
  center := (184183519553072623 / 1600000000000000000 : ℚ)
  supportValue := (19547743347263233 / 50000000000000000 : ℚ)
  supportSlope := (4364895629594499 / 1000000000000000 : ℚ)
  oldCenter := (19547743347263233 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_350
  oldPieces := [piece_950]
}

def cell_3860 : Cell := { cellDefaults with
  domain := ⟨(46050000000000001 / 400000000000000000 : ℚ), (36850000000000001 / 320000000000000000 : ℚ)⟩
  center := (368450000000000009 / 3200000000000000000 : ℚ)
  supportValue := (19553399815377087 / 50000000000000000 : ℚ)
  supportSlope := (1090775662757149 / 250000000000000 : ℚ)
  oldCenter := (19553399815377087 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_350
  oldHi := (39150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_950, piece_951]
}

def cell_3861 : Cell := { cellDefaults with
  domain := ⟨(36850000000000001 / 320000000000000000 : ℚ), (92150000000000003 / 800000000000000000 : ℚ)⟩
  center := (368550000000000011 / 3200000000000000000 : ℚ)
  supportValue := (3912043702348733 / 10000000000000000 : ℚ)
  supportSlope := (4364833614054843 / 1000000000000000 : ℚ)
  oldCenter := (3912043702348733 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_350
  oldLo := (39100000000000001 / 100000000000000000 : ℚ)
  oldHi := (39150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_951]
}

def cell_3862 : Cell := { cellDefaults with
  domain := ⟨(92150000000000003 / 800000000000000000 : ℚ), (184350000000000007 / 1600000000000000000 : ℚ)⟩
  center := (368650000000000013 / 3200000000000000000 : ℚ)
  supportValue := (489175998012619 / 1250000000000000 : ℚ)
  supportSlope := (545821425163451 / 125000000000000 : ℚ)
  oldCenter := (489175998012619 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_350
  oldLo := (39100000000000001 / 100000000000000000 : ℚ)
  oldHi := (39150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_951]
}

def cell_3863 : Cell := { cellDefaults with
  domain := ⟨(184350000000000007 / 1600000000000000000 : ℚ), (23050000000000001 / 200000000000000000 : ℚ)⟩
  center := (73750000000000003 / 640000000000000000 : ℚ)
  supportValue := (39147720265374397 / 100000000000000000 : ℚ)
  supportSlope := (4367236125323883 / 1000000000000000 : ℚ)
  oldCenter := (39147720265374397 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_350
  oldLo := (39100000000000001 / 100000000000000000 : ℚ)
  oldHi := (979050279329609 / 2500000000000000 : ℚ)
  oldPieces := [piece_951, piece_952]
}

def cell_3864 : Cell := { cellDefaults with
  domain := ⟨(23050000000000001 / 200000000000000000 : ℚ), (184450000000000009 / 1600000000000000000 : ℚ)⟩
  center := (368850000000000017 / 3200000000000000000 : ℚ)
  supportValue := (39161373379840847 / 100000000000000000 : ℚ)
  supportSlope := (341157780379263 / 78125000000000 : ℚ)
  oldCenter := (39161373379840847 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_350
  oldLo := (39150000000000001 / 100000000000000000 : ℚ)
  oldHi := (19600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_952, piece_953]
}

def cell_3865 : Cell := { cellDefaults with
  domain := ⟨(184450000000000009 / 1600000000000000000 : ℚ), (18450000000000001 / 160000000000000000 : ℚ)⟩
  center := (368950000000000019 / 3200000000000000000 : ℚ)
  supportValue := (1567000895570291 / 4000000000000000 : ℚ)
  supportSlope := (1092137140224359 / 250000000000000 : ℚ)
  oldCenter := (1567000895570291 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_350
  oldLo := (979050279329609 / 2500000000000000 : ℚ)
  oldHi := (19600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_953]
}

def cell_3866 : Cell := { cellDefaults with
  domain := ⟨(18450000000000001 / 160000000000000000 : ℚ), (184550000000000011 / 1600000000000000000 : ℚ)⟩
  center := (369050000000000021 / 3200000000000000000 : ℚ)
  supportValue := (1959433840430033 / 5000000000000000 : ℚ)
  supportSlope := (874056322925281 / 200000000000000 : ℚ)
  oldCenter := (1959433840430033 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_350
  oldLo := (979050279329609 / 2500000000000000 : ℚ)
  oldHi := (19600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_953]
}

def cell_3867 : Cell := { cellDefaults with
  domain := ⟨(184550000000000011 / 1600000000000000000 : ℚ), (46150000000000003 / 400000000000000000 : ℚ)⟩
  center := (369150000000000023 / 3200000000000000000 : ℚ)
  supportValue := (3920232709217677 / 10000000000000000 : ℚ)
  supportSlope := (34139548925171 / 7812500000000 : ℚ)
  oldCenter := (3920232709217677 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_350
  oldLo := (979050279329609 / 2500000000000000 : ℚ)
  oldHi := (19625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_953, piece_954]
}

def cell_3868 : Cell := { cellDefaults with
  domain := ⟨(46150000000000003 / 400000000000000000 : ℚ), (184650000000000013 / 1600000000000000000 : ℚ)⟩
  center := (14770000000000001 / 128000000000000000 : ℚ)
  supportValue := (3921599014949781 / 10000000000000000 : ℚ)
  supportSlope := (8741061483561733 / 2000000000000000 : ℚ)
  oldCenter := (3921599014949781 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_350
  oldLo := (19600000000000001 / 50000000000000000 : ℚ)
  oldHi := (19625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_954]
}

def cell_3869 : Cell := { cellDefaults with
  domain := ⟨(184650000000000013 / 1600000000000000000 : ℚ), (92350000000000007 / 800000000000000000 : ℚ)⟩
  center := (369350000000000027 / 3200000000000000000 : ℚ)
  supportValue := (4903706343737177 / 12500000000000000 : ℚ)
  supportSlope := (1093063825280161 / 250000000000000 : ℚ)
  oldCenter := (4903706343737177 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_350
  oldLo := (19600000000000001 / 50000000000000000 : ℚ)
  oldHi := (19625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_954]
}

def cell_3870 : Cell := { cellDefaults with
  domain := ⟨(92350000000000007 / 800000000000000000 : ℚ), (36950000000000003 / 320000000000000000 : ℚ)⟩
  center := (369450000000000029 / 3200000000000000000 : ℚ)
  supportValue := (19621658372627093 / 50000000000000000 : ℚ)
  supportSlope := (4373947207794073 / 1000000000000000 : ℚ)
  oldCenter := (19621658372627093 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_350
  oldLo := (19600000000000001 / 50000000000000000 : ℚ)
  oldHi := (19650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_954, piece_955]
}

def cell_3871 : Cell := { cellDefaults with
  domain := ⟨(36950000000000003 / 320000000000000000 : ℚ), (11550000000000001 / 100000000000000000 : ℚ)⟩
  center := (369550000000000031 / 3200000000000000000 : ℚ)
  supportValue := (2453561440252049 / 6250000000000000 : ℚ)
  supportSlope := (273282327691743 / 62500000000000 : ℚ)
  oldCenter := (2453561440252049 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_350
  oldLo := (19625000000000001 / 50000000000000000 : ℚ)
  oldHi := (19650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_955]
}

def cell_3872 : Cell := { cellDefaults with
  domain := ⟨(11550000000000001 / 100000000000000000 : ℚ), (11553125000000001 / 100000000000000000 : ℚ)⟩
  r := (10681502825033 / 10000000000000 : ℚ)
  w := (48885255064079 / 50000000000000 : ℚ)
  center := (11551562500000001 / 100000000000000000 : ℚ)
  supportValue := (3924795495284101 / 10000000000000000 : ℚ)
  supportSlope := (437236186998291 / 100000000000000 : ℚ)
  oldCenter := (3924795495284101 / 10000000000000000 : ℚ)
  oldLo := (19600000000000001 / 50000000000000000 : ℚ)
  oldHi := (19650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_954, piece_955]
}

def cell_3873 : Cell := { cellDefaults with
  domain := ⟨(11553125000000001 / 100000000000000000 : ℚ), (11556250000000001 / 100000000000000000 : ℚ)⟩
  r := (10681502825033 / 10000000000000 : ℚ)
  w := (48885255064079 / 50000000000000 : ℚ)
  center := (11554687500000001 / 100000000000000000 : ℚ)
  supportValue := (39261624144132173 / 100000000000000000 : ℚ)
  supportSlope := (2186007230843501 / 500000000000000 : ℚ)
  oldCenter := (39261624144132173 / 100000000000000000 : ℚ)
  oldLo := (19625000000000001 / 50000000000000000 : ℚ)
  oldHi := (19650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_955]
}

def cell_3874 : Cell := { cellDefaults with
  domain := ⟨(11556250000000001 / 100000000000000000 : ℚ), (11559375000000001 / 100000000000000000 : ℚ)⟩
  r := (10681502825033 / 10000000000000 : ℚ)
  w := (48885255064079 / 50000000000000 : ℚ)
  center := (11557812500000001 / 100000000000000000 : ℚ)
  supportValue := (19637644687027897 / 50000000000000000 : ℚ)
  supportSlope := (8747468940708103 / 2000000000000000 : ℚ)
  oldCenter := (19637644687027897 / 50000000000000000 : ℚ)
  oldLo := (19625000000000001 / 50000000000000000 : ℚ)
  oldHi := (19650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_955]
}

def cell_3875 : Cell := { cellDefaults with
  domain := ⟨(11559375000000001 / 100000000000000000 : ℚ), (11562500000000001 / 100000000000000000 : ℚ)⟩
  r := (10681502825033 / 10000000000000 : ℚ)
  w := (48885255064079 / 50000000000000 : ℚ)
  center := (11560937500000001 / 100000000000000000 : ℚ)
  supportValue := (392889599846749 / 1000000000000000 : ℚ)
  supportSlope := (875091621974633 / 200000000000000 : ℚ)
  oldCenter := (392889599846749 / 1000000000000000 : ℚ)
  oldLo := (19625000000000001 / 50000000000000000 : ℚ)
  oldHi := (19650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_955]
}

def cell_3876 : Cell := { cellDefaults with
  domain := ⟨(11562500000000001 / 100000000000000000 : ℚ), (11565625000000001 / 100000000000000000 : ℚ)⟩
  r := (10681502825033 / 10000000000000 : ℚ)
  w := (48885255064079 / 50000000000000 : ℚ)
  center := (11564062500000001 / 100000000000000000 : ℚ)
  supportValue := (78605252425099 / 200000000000000 : ℚ)
  supportSlope := (34999862204387 / 8000000000000 : ℚ)
  oldCenter := (78605252425099 / 200000000000000 : ℚ)
  oldLo := (19625000000000001 / 50000000000000000 : ℚ)
  oldHi := (19675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_955, piece_956]
}

def cell_3877 : Cell := { cellDefaults with
  domain := ⟨(11565625000000001 / 100000000000000000 : ℚ), (11568750000000001 / 100000000000000000 : ℚ)⟩
  r := (10681502825033 / 10000000000000 : ℚ)
  w := (48885255064079 / 50000000000000 : ℚ)
  center := (11567187500000001 / 100000000000000000 : ℚ)
  supportValue := (491453819092753 / 1250000000000000 : ℚ)
  supportSlope := (2187861392811463 / 500000000000000 : ℚ)
  oldCenter := (491453819092753 / 1250000000000000 : ℚ)
  oldLo := (19650000000000001 / 50000000000000000 : ℚ)
  oldHi := (19675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_956]
}

def cell_3878 : Cell := { cellDefaults with
  domain := ⟨(11568750000000001 / 100000000000000000 : ℚ), (11571875000000001 / 100000000000000000 : ℚ)⟩
  r := (10681502825033 / 10000000000000 : ℚ)
  w := (48885255064079 / 50000000000000 : ℚ)
  center := (11570312500000001 / 100000000000000000 : ℚ)
  supportValue := (39329982340565617 / 100000000000000000 : ℚ)
  supportSlope := (43774394043119 / 10000000000000 : ℚ)
  oldCenter := (39329982340565617 / 100000000000000000 : ℚ)
  oldLo := (19650000000000001 / 50000000000000000 : ℚ)
  oldHi := (19675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_956]
}

def cell_3879 : Cell := { cellDefaults with
  domain := ⟨(11571875000000001 / 100000000000000000 : ℚ), (11575000000000001 / 100000000000000000 : ℚ)⟩
  r := (10681502825033 / 10000000000000 : ℚ)
  w := (48885255064079 / 50000000000000 : ℚ)
  center := (11573437500000001 / 100000000000000000 : ℚ)
  supportValue := (3934366452378301 / 10000000000000000 : ℚ)
  supportSlope := (8758083291152019 / 2000000000000000 : ℚ)
  oldCenter := (3934366452378301 / 10000000000000000 : ℚ)
  oldLo := (19650000000000001 / 50000000000000000 : ℚ)
  oldHi := (19700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_956, piece_957]
}

def cell_3880 : Cell := { cellDefaults with
  domain := ⟨(11575000000000001 / 100000000000000000 : ℚ), (11578125000000001 / 100000000000000000 : ℚ)⟩
  r := (10681502825033 / 10000000000000 : ℚ)
  w := (48885255064079 / 50000000000000 : ℚ)
  center := (11576562500000001 / 100000000000000000 : ℚ)
  supportValue := (983933669468959 / 2500000000000000 : ℚ)
  supportSlope := (8755432807188157 / 2000000000000000 : ℚ)
  oldCenter := (983933669468959 / 2500000000000000 : ℚ)
  oldLo := (19675000000000001 / 50000000000000000 : ℚ)
  oldHi := (19700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_957]
}

def cell_3881 : Cell := { cellDefaults with
  domain := ⟨(11578125000000001 / 100000000000000000 : ℚ), (11581250000000001 / 100000000000000000 : ℚ)⟩
  r := (10681502825033 / 10000000000000 : ℚ)
  w := (48885255064079 / 50000000000000 : ℚ)
  center := (11579687500000001 / 100000000000000000 : ℚ)
  supportValue := (9842757452058011 / 25000000000000000 : ℚ)
  supportSlope := (4379424227623829 / 1000000000000000 : ℚ)
  oldCenter := (9842757452058011 / 25000000000000000 : ℚ)
  oldLo := (19675000000000001 / 50000000000000000 : ℚ)
  oldHi := (19700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_957]
}

def cell_3882 : Cell := { cellDefaults with
  domain := ⟨(11581250000000001 / 100000000000000000 : ℚ), (11584375000000001 / 100000000000000000 : ℚ)⟩
  r := (10681502825033 / 10000000000000 : ℚ)
  w := (48885255064079 / 50000000000000 : ℚ)
  center := (11582812500000001 / 100000000000000000 : ℚ)
  supportValue := (1969235909011839 / 5000000000000000 : ℚ)
  supportSlope := (4381135626511323 / 1000000000000000 : ℚ)
  oldCenter := (1969235909011839 / 5000000000000000 : ℚ)
  oldLo := (19675000000000001 / 50000000000000000 : ℚ)
  oldHi := (19700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_957]
}

def cell_3883 : Cell := { cellDefaults with
  domain := ⟨(11584375000000001 / 100000000000000000 : ℚ), (11587500000000001 / 100000000000000000 : ℚ)⟩
  r := (10681502825033 / 10000000000000 : ℚ)
  w := (48885255064079 / 50000000000000 : ℚ)
  center := (11585937500000001 / 100000000000000000 : ℚ)
  supportValue := (984960100656941 / 2500000000000000 : ℚ)
  supportSlope := (4381642561185117 / 1000000000000000 : ℚ)
  oldCenter := (984960100656941 / 2500000000000000 : ℚ)
  oldLo := (19675000000000001 / 50000000000000000 : ℚ)
  oldHi := (19725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_957, piece_958]
}

def cell_3884 : Cell := { cellDefaults with
  domain := ⟨(11587500000000001 / 100000000000000000 : ℚ), (11590625000000001 / 100000000000000000 : ℚ)⟩
  r := (10681502825033 / 10000000000000 : ℚ)
  w := (48885255064079 / 50000000000000 : ℚ)
  center := (11589062500000001 / 100000000000000000 : ℚ)
  supportValue := (985302557431423 / 2500000000000000 : ℚ)
  supportSlope := (4381412981999233 / 1000000000000000 : ℚ)
  oldCenter := (985302557431423 / 2500000000000000 : ℚ)
  oldLo := (19700000000000001 / 50000000000000000 : ℚ)
  oldHi := (19725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_958]
}

def cell_3885 : Cell := { cellDefaults with
  domain := ⟨(11590625000000001 / 100000000000000000 : ℚ), (11593750000000001 / 100000000000000000 : ℚ)⟩
  r := (10681502825033 / 10000000000000 : ℚ)
  w := (48885255064079 / 50000000000000 : ℚ)
  center := (11592187500000001 / 100000000000000000 : ℚ)
  supportValue := (9856449217870751 / 25000000000000000 : ℚ)
  supportSlope := (4383116285707089 / 1000000000000000 : ℚ)
  oldCenter := (9856449217870751 / 25000000000000000 : ℚ)
  oldLo := (19700000000000001 / 50000000000000000 : ℚ)
  oldHi := (19725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_958]
}

def cell_3886 : Cell := { cellDefaults with
  domain := ⟨(11593750000000001 / 100000000000000000 : ℚ), (11596875000000001 / 100000000000000000 : ℚ)⟩
  r := (10681502825033 / 10000000000000 : ℚ)
  w := (48885255064079 / 50000000000000 : ℚ)
  center := (11595312500000001 / 100000000000000000 : ℚ)
  supportValue := (3943949677407783 / 10000000000000000 : ℚ)
  supportSlope := (219241157049499 / 50000000000000 : ℚ)
  oldCenter := (3943949677407783 / 10000000000000000 : ℚ)
  oldLo := (19700000000000001 / 50000000000000000 : ℚ)
  oldHi := (19725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_958]
}

def cell_3887 : Cell := { cellDefaults with
  domain := ⟨(11596875000000001 / 100000000000000000 : ℚ), (11600000000000001 / 100000000000000000 : ℚ)⟩
  r := (10681502825033 / 10000000000000 : ℚ)
  w := (48885255064079 / 50000000000000 : ℚ)
  center := (11598437500000001 / 100000000000000000 : ℚ)
  supportValue := (39453191840565127 / 100000000000000000 : ℚ)
  supportSlope := (219211796308727 / 50000000000000 : ℚ)
  oldCenter := (39453191840565127 / 100000000000000000 : ℚ)
  oldLo := (19700000000000001 / 50000000000000000 : ℚ)
  oldHi := (19750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_958, piece_959]
}

def cell_3888 : Cell := { cellDefaults with
  domain := ⟨(11600000000000001 / 100000000000000000 : ℚ), (11603125000000001 / 100000000000000000 : ℚ)⟩
  r := (2133726713631 / 2000000000000 : ℚ)
  w := (97816947993297 / 100000000000000 : ℚ)
  center := (11601562500000001 / 100000000000000000 : ℚ)
  supportValue := (986095582196067 / 2500000000000000 : ℚ)
  supportSlope := (1096022066771507 / 250000000000000 : ℚ)
  oldCenter := (986095582196067 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_352
  oldLo := (19700000000000001 / 50000000000000000 : ℚ)
  oldHi := (19750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_958, piece_959]
}

def cell_3889 : Cell := { cellDefaults with
  domain := ⟨(11603125000000001 / 100000000000000000 : ℚ), (11606250000000001 / 100000000000000000 : ℚ)⟩
  r := (2133726713631 / 2000000000000 : ℚ)
  w := (97816947993297 / 100000000000000 : ℚ)
  center := (11604687500000001 / 100000000000000000 : ℚ)
  supportValue := (1578300854033007 / 4000000000000000 : ℚ)
  supportSlope := (2191411942000343 / 500000000000000 : ℚ)
  oldCenter := (1578300854033007 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_352
  oldLo := (19725000000000001 / 50000000000000000 : ℚ)
  oldHi := (19750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_959]
}

def cell_3890 : Cell := { cellDefaults with
  domain := ⟨(11606250000000001 / 100000000000000000 : ℚ), (11609375000000001 / 100000000000000000 : ℚ)⟩
  r := (2133726713631 / 2000000000000 : ℚ)
  w := (97816947993297 / 100000000000000 : ℚ)
  center := (11607812500000001 / 100000000000000000 : ℚ)
  supportValue := (39471220328423323 / 100000000000000000 : ℚ)
  supportSlope := (4384523536536733 / 1000000000000000 : ℚ)
  oldCenter := (39471220328423323 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_352
  oldLo := (19725000000000001 / 50000000000000000 : ℚ)
  oldHi := (19750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_959]
}

def cell_3891 : Cell := { cellDefaults with
  domain := ⟨(11609375000000001 / 100000000000000000 : ℚ), (11612500000000001 / 100000000000000000 : ℚ)⟩
  r := (2133726713631 / 2000000000000 : ℚ)
  w := (97816947993297 / 100000000000000 : ℚ)
  center := (11610937500000001 / 100000000000000000 : ℚ)
  supportValue := (3948492462294549 / 10000000000000000 : ℚ)
  supportSlope := (4386226718370523 / 1000000000000000 : ℚ)
  oldCenter := (3948492462294549 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_352
  oldLo := (19725000000000001 / 50000000000000000 : ℚ)
  oldHi := (19750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_959]
}

def cell_3892 : Cell := { cellDefaults with
  domain := ⟨(11612500000000001 / 100000000000000000 : ℚ), (11615625000000001 / 100000000000000000 : ℚ)⟩
  r := (2133726713631 / 2000000000000 : ℚ)
  w := (97816947993297 / 100000000000000 : ℚ)
  center := (11614062500000001 / 100000000000000000 : ℚ)
  supportValue := (1234332073303427 / 3125000000000000 : ℚ)
  supportSlope := (2193343242755219 / 500000000000000 : ℚ)
  oldCenter := (1234332073303427 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_352
  oldLo := (19725000000000001 / 50000000000000000 : ℚ)
  oldHi := (19775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_959, piece_960]
}

def cell_3893 : Cell := { cellDefaults with
  domain := ⟨(11615625000000001 / 100000000000000000 : ℚ), (11618750000000001 / 100000000000000000 : ℚ)⟩
  r := (2133726713631 / 2000000000000 : ℚ)
  w := (97816947993297 / 100000000000000 : ℚ)
  center := (11617187500000001 / 100000000000000000 : ℚ)
  supportValue := (987808510872277 / 2500000000000000 : ℚ)
  supportSlope := (1096629731211607 / 250000000000000 : ℚ)
  oldCenter := (987808510872277 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_352
  oldLo := (19750000000000001 / 50000000000000000 : ℚ)
  oldHi := (19775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_960]
}

def cell_3894 : Cell := { cellDefaults with
  domain := ⟨(11618750000000001 / 100000000000000000 : ℚ), (11621875000000001 / 100000000000000000 : ℚ)⟩
  r := (2133726713631 / 2000000000000 : ℚ)
  w := (97816947993297 / 100000000000000 : ℚ)
  center := (11620312500000001 / 100000000000000000 : ℚ)
  supportValue := (19763025476550833 / 50000000000000000 : ℚ)
  supportSlope := (87764289660619 / 20000000000000 : ℚ)
  oldCenter := (19763025476550833 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_352
  oldLo := (19750000000000001 / 50000000000000000 : ℚ)
  oldHi := (19775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_960]
}

def cell_3895 : Cell := { cellDefaults with
  domain := ⟨(11621875000000001 / 100000000000000000 : ℚ), (11625000000000001 / 100000000000000000 : ℚ)⟩
  r := (2133726713631 / 2000000000000 : ℚ)
  w := (97816947993297 / 100000000000000 : ℚ)
  center := (11623437500000001 / 100000000000000000 : ℚ)
  supportValue := (316318134203263 / 800000000000000 : ℚ)
  supportSlope := (4389913549008639 / 1000000000000000 : ℚ)
  oldCenter := (316318134203263 / 800000000000000 : ℚ)
  newCoefficients := coefficients_352
  oldLo := (19750000000000001 / 50000000000000000 : ℚ)
  oldHi := (19775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_960]
}

def cell_3896 : Cell := { cellDefaults with
  domain := ⟨(11625000000000001 / 100000000000000000 : ℚ), (11628125000000001 / 100000000000000000 : ℚ)⟩
  r := (2133726713631 / 2000000000000 : ℚ)
  w := (97816947993297 / 100000000000000 : ℚ)
  center := (11626562500000001 / 100000000000000000 : ℚ)
  supportValue := (247209234629251 / 625000000000000 : ℚ)
  supportSlope := (877855459633281 / 200000000000000 : ℚ)
  oldCenter := (247209234629251 / 625000000000000 : ℚ)
  newCoefficients := coefficients_352
  oldLo := (19750000000000001 / 50000000000000000 : ℚ)
  oldHi := (19800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_960, piece_961]
}

def cell_3897 : Cell := { cellDefaults with
  domain := ⟨(11628125000000001 / 100000000000000000 : ℚ), (11631250000000001 / 100000000000000000 : ℚ)⟩
  r := (2133726713631 / 2000000000000 : ℚ)
  w := (97816947993297 / 100000000000000 : ℚ)
  center := (11629687500000001 / 100000000000000000 : ℚ)
  supportValue := (9891800551418739 / 25000000000000000 : ℚ)
  supportSlope := (548775771440857 / 125000000000000 : ℚ)
  oldCenter := (9891800551418739 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_352
  oldLo := (19775000000000001 / 50000000000000000 : ℚ)
  oldHi := (19800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_961]
}

def cell_3898 : Cell := { cellDefaults with
  domain := ⟨(11631250000000001 / 100000000000000000 : ℚ), (11634375000000001 / 100000000000000000 : ℚ)⟩
  r := (2133726713631 / 2000000000000 : ℚ)
  w := (97816947993297 / 100000000000000 : ℚ)
  center := (11632812500000001 / 100000000000000000 : ℚ)
  supportValue := (39580924239921367 / 100000000000000000 : ℚ)
  supportSlope := (878379498911741 / 200000000000000 : ℚ)
  oldCenter := (39580924239921367 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_352
  oldLo := (19775000000000001 / 50000000000000000 : ℚ)
  oldHi := (19800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_961]
}

def cell_3899 : Cell := { cellDefaults with
  domain := ⟨(11634375000000001 / 100000000000000000 : ℚ), (11637500000000001 / 100000000000000000 : ℚ)⟩
  r := (2133726713631 / 2000000000000 : ℚ)
  w := (97816947993297 / 100000000000000 : ℚ)
  center := (11635937500000001 / 100000000000000000 : ℚ)
  supportValue := (39594643646063243 / 100000000000000000 : ℚ)
  supportSlope := (4393251267579501 / 1000000000000000 : ℚ)
  oldCenter := (39594643646063243 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_352
  oldLo := (19775000000000001 / 50000000000000000 : ℚ)
  oldHi := (19825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_961, piece_962]
}

theorem check_3850 : SourceCertificateFamily.RightNormalized.check cell_3850 = true := by
  decide +kernel

theorem check_3851 : SourceCertificateFamily.RightNormalized.check cell_3851 = true := by
  decide +kernel

theorem check_3852 : SourceCertificateFamily.RightNormalized.check cell_3852 = true := by
  decide +kernel

theorem check_3853 : SourceCertificateFamily.RightNormalized.check cell_3853 = true := by
  decide +kernel

theorem check_3854 : SourceCertificateFamily.RightNormalized.check cell_3854 = true := by
  decide +kernel

theorem check_3855 : SourceCertificateFamily.RightNormalized.check cell_3855 = true := by
  decide +kernel

theorem check_3856 : SourceCertificateFamily.RightNormalized.check cell_3856 = true := by
  decide +kernel

theorem check_3857 : SourceCertificateFamily.RightNormalized.check cell_3857 = true := by
  decide +kernel

theorem check_3858 : SourceCertificateFamily.RightNormalized.check cell_3858 = true := by
  decide +kernel

theorem check_3859 : SourceCertificateFamily.RightNormalized.check cell_3859 = true := by
  decide +kernel

theorem check_3860 : SourceCertificateFamily.RightNormalized.check cell_3860 = true := by
  decide +kernel

theorem check_3861 : SourceCertificateFamily.RightNormalized.check cell_3861 = true := by
  decide +kernel

theorem check_3862 : SourceCertificateFamily.RightNormalized.check cell_3862 = true := by
  decide +kernel

theorem check_3863 : SourceCertificateFamily.RightNormalized.check cell_3863 = true := by
  decide +kernel

theorem check_3864 : SourceCertificateFamily.RightNormalized.check cell_3864 = true := by
  decide +kernel

theorem check_3865 : SourceCertificateFamily.RightNormalized.check cell_3865 = true := by
  decide +kernel

theorem check_3866 : SourceCertificateFamily.RightNormalized.check cell_3866 = true := by
  decide +kernel

theorem check_3867 : SourceCertificateFamily.RightNormalized.check cell_3867 = true := by
  decide +kernel

theorem check_3868 : SourceCertificateFamily.RightNormalized.check cell_3868 = true := by
  decide +kernel

theorem check_3869 : SourceCertificateFamily.RightNormalized.check cell_3869 = true := by
  decide +kernel

theorem check_3870 : SourceCertificateFamily.RightNormalized.check cell_3870 = true := by
  decide +kernel

theorem check_3871 : SourceCertificateFamily.RightNormalized.check cell_3871 = true := by
  decide +kernel

theorem check_3872 : SourceCertificateFamily.RightNormalized.check cell_3872 = true := by
  decide +kernel

theorem check_3873 : SourceCertificateFamily.RightNormalized.check cell_3873 = true := by
  decide +kernel

theorem check_3874 : SourceCertificateFamily.RightNormalized.check cell_3874 = true := by
  decide +kernel

theorem check_3875 : SourceCertificateFamily.RightNormalized.check cell_3875 = true := by
  decide +kernel

theorem check_3876 : SourceCertificateFamily.RightNormalized.check cell_3876 = true := by
  decide +kernel

theorem check_3877 : SourceCertificateFamily.RightNormalized.check cell_3877 = true := by
  decide +kernel

theorem check_3878 : SourceCertificateFamily.RightNormalized.check cell_3878 = true := by
  decide +kernel

theorem check_3879 : SourceCertificateFamily.RightNormalized.check cell_3879 = true := by
  decide +kernel

theorem check_3880 : SourceCertificateFamily.RightNormalized.check cell_3880 = true := by
  decide +kernel

theorem check_3881 : SourceCertificateFamily.RightNormalized.check cell_3881 = true := by
  decide +kernel

theorem check_3882 : SourceCertificateFamily.RightNormalized.check cell_3882 = true := by
  decide +kernel

theorem check_3883 : SourceCertificateFamily.RightNormalized.check cell_3883 = true := by
  decide +kernel

theorem check_3884 : SourceCertificateFamily.RightNormalized.check cell_3884 = true := by
  decide +kernel

theorem check_3885 : SourceCertificateFamily.RightNormalized.check cell_3885 = true := by
  decide +kernel

theorem check_3886 : SourceCertificateFamily.RightNormalized.check cell_3886 = true := by
  decide +kernel

theorem check_3887 : SourceCertificateFamily.RightNormalized.check cell_3887 = true := by
  decide +kernel

theorem check_3888 : SourceCertificateFamily.RightNormalized.check cell_3888 = true := by
  decide +kernel

theorem check_3889 : SourceCertificateFamily.RightNormalized.check cell_3889 = true := by
  decide +kernel

theorem check_3890 : SourceCertificateFamily.RightNormalized.check cell_3890 = true := by
  decide +kernel

theorem check_3891 : SourceCertificateFamily.RightNormalized.check cell_3891 = true := by
  decide +kernel

theorem check_3892 : SourceCertificateFamily.RightNormalized.check cell_3892 = true := by
  decide +kernel

theorem check_3893 : SourceCertificateFamily.RightNormalized.check cell_3893 = true := by
  decide +kernel

theorem check_3894 : SourceCertificateFamily.RightNormalized.check cell_3894 = true := by
  decide +kernel

theorem check_3895 : SourceCertificateFamily.RightNormalized.check cell_3895 = true := by
  decide +kernel

theorem check_3896 : SourceCertificateFamily.RightNormalized.check cell_3896 = true := by
  decide +kernel

theorem check_3897 : SourceCertificateFamily.RightNormalized.check cell_3897 = true := by
  decide +kernel

theorem check_3898 : SourceCertificateFamily.RightNormalized.check cell_3898 = true := by
  decide +kernel

theorem check_3899 : SourceCertificateFamily.RightNormalized.check cell_3899 = true := by
  decide +kernel

def cells : List Cell := [cell_3850, cell_3851, cell_3852, cell_3853, cell_3854, cell_3855, cell_3856, cell_3857, cell_3858, cell_3859, cell_3860, cell_3861, cell_3862, cell_3863, cell_3864, cell_3865, cell_3866, cell_3867, cell_3868, cell_3869, cell_3870, cell_3871, cell_3872, cell_3873, cell_3874, cell_3875, cell_3876, cell_3877, cell_3878, cell_3879, cell_3880, cell_3881, cell_3882, cell_3883, cell_3884, cell_3885, cell_3886, cell_3887, cell_3888, cell_3889, cell_3890, cell_3891, cell_3892, cell_3893, cell_3894, cell_3895, cell_3896, cell_3897, cell_3898, cell_3899]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_3850, SourceCertificateFamily.of_right_checked check_3851, SourceCertificateFamily.of_right_checked check_3852, SourceCertificateFamily.of_right_checked check_3853, SourceCertificateFamily.of_right_checked check_3854, SourceCertificateFamily.of_right_checked check_3855, SourceCertificateFamily.of_right_checked check_3856, SourceCertificateFamily.of_right_checked check_3857, SourceCertificateFamily.of_right_checked check_3858, SourceCertificateFamily.of_right_checked check_3859, SourceCertificateFamily.of_right_checked check_3860, SourceCertificateFamily.of_right_checked check_3861, SourceCertificateFamily.of_right_checked check_3862, SourceCertificateFamily.of_right_checked check_3863, SourceCertificateFamily.of_right_checked check_3864, SourceCertificateFamily.of_right_checked check_3865, SourceCertificateFamily.of_right_checked check_3866, SourceCertificateFamily.of_right_checked check_3867, SourceCertificateFamily.of_right_checked check_3868, SourceCertificateFamily.of_right_checked check_3869, SourceCertificateFamily.of_right_checked check_3870, SourceCertificateFamily.of_right_checked check_3871, SourceCertificateFamily.of_right_checked check_3872, SourceCertificateFamily.of_right_checked check_3873, SourceCertificateFamily.of_right_checked check_3874, SourceCertificateFamily.of_right_checked check_3875, SourceCertificateFamily.of_right_checked check_3876, SourceCertificateFamily.of_right_checked check_3877, SourceCertificateFamily.of_right_checked check_3878, SourceCertificateFamily.of_right_checked check_3879, SourceCertificateFamily.of_right_checked check_3880, SourceCertificateFamily.of_right_checked check_3881, SourceCertificateFamily.of_right_checked check_3882, SourceCertificateFamily.of_right_checked check_3883, SourceCertificateFamily.of_right_checked check_3884, SourceCertificateFamily.of_right_checked check_3885, SourceCertificateFamily.of_right_checked check_3886, SourceCertificateFamily.of_right_checked check_3887, SourceCertificateFamily.of_right_checked check_3888, SourceCertificateFamily.of_right_checked check_3889, SourceCertificateFamily.of_right_checked check_3890, SourceCertificateFamily.of_right_checked check_3891, SourceCertificateFamily.of_right_checked check_3892, SourceCertificateFamily.of_right_checked check_3893, SourceCertificateFamily.of_right_checked check_3894, SourceCertificateFamily.of_right_checked check_3895, SourceCertificateFamily.of_right_checked check_3896, SourceCertificateFamily.of_right_checked check_3897, SourceCertificateFamily.of_right_checked check_3898, SourceCertificateFamily.of_right_checked check_3899, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0077

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0077
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0077
open AnalyticBounds.ExpressionCertificate

theorem linked_3850 : Linked cell_3850 pieces := by
  apply Linked.of_piece piece_348 piece_348_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3850, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_948_mem, piece_949_mem⟩

theorem linked_3851 : Linked cell_3851 pieces := by
  apply Linked.of_piece piece_348 piece_348_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3851, List.cons_subset, List.nil_subset, and_true]
  exact piece_949_mem

theorem linked_3852 : Linked cell_3852 pieces := by
  apply Linked.of_piece piece_348 piece_348_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3852, List.cons_subset, List.nil_subset, and_true]
  exact piece_949_mem

theorem linked_3853 : Linked cell_3853 pieces := by
  apply Linked.of_piece piece_348 piece_348_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3853, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_949_mem, piece_950_mem⟩

theorem linked_3854 : Linked cell_3854 pieces := by
  apply Linked.of_piece piece_348 piece_348_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3854, List.cons_subset, List.nil_subset, and_true]
  exact piece_950_mem

theorem linked_3855 : Linked cell_3855 pieces := by
  apply Linked.of_piece piece_349 piece_349_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3855, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_949_mem, piece_950_mem⟩

theorem linked_3856 : Linked cell_3856 pieces := by
  apply Linked.of_piece piece_349 piece_349_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3856, List.cons_subset, List.nil_subset, and_true]
  exact piece_950_mem

theorem linked_3857 : Linked cell_3857 pieces := by
  apply Linked.of_piece piece_349 piece_349_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3857, List.cons_subset, List.nil_subset, and_true]
  exact piece_950_mem

theorem linked_3858 : Linked cell_3858 pieces := by
  apply Linked.of_piece piece_350 piece_350_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3858, List.cons_subset, List.nil_subset, and_true]
  exact piece_950_mem

theorem linked_3859 : Linked cell_3859 pieces := by
  apply Linked.of_piece piece_350 piece_350_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3859, List.cons_subset, List.nil_subset, and_true]
  exact piece_950_mem

theorem linked_3860 : Linked cell_3860 pieces := by
  apply Linked.of_piece piece_350 piece_350_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3860, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_950_mem, piece_951_mem⟩

theorem linked_3861 : Linked cell_3861 pieces := by
  apply Linked.of_piece piece_350 piece_350_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3861, List.cons_subset, List.nil_subset, and_true]
  exact piece_951_mem

theorem linked_3862 : Linked cell_3862 pieces := by
  apply Linked.of_piece piece_350 piece_350_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3862, List.cons_subset, List.nil_subset, and_true]
  exact piece_951_mem

theorem linked_3863 : Linked cell_3863 pieces := by
  apply Linked.of_piece piece_350 piece_350_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3863, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_951_mem, piece_952_mem⟩

theorem linked_3864 : Linked cell_3864 pieces := by
  apply Linked.of_piece piece_350 piece_350_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3864, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_952_mem, piece_953_mem⟩

theorem linked_3865 : Linked cell_3865 pieces := by
  apply Linked.of_piece piece_350 piece_350_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3865, List.cons_subset, List.nil_subset, and_true]
  exact piece_953_mem

theorem linked_3866 : Linked cell_3866 pieces := by
  apply Linked.of_piece piece_350 piece_350_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3866, List.cons_subset, List.nil_subset, and_true]
  exact piece_953_mem

theorem linked_3867 : Linked cell_3867 pieces := by
  apply Linked.of_piece piece_350 piece_350_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3867, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_953_mem, piece_954_mem⟩

theorem linked_3868 : Linked cell_3868 pieces := by
  apply Linked.of_piece piece_350 piece_350_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3868, List.cons_subset, List.nil_subset, and_true]
  exact piece_954_mem

theorem linked_3869 : Linked cell_3869 pieces := by
  apply Linked.of_piece piece_350 piece_350_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3869, List.cons_subset, List.nil_subset, and_true]
  exact piece_954_mem

theorem linked_3870 : Linked cell_3870 pieces := by
  apply Linked.of_piece piece_350 piece_350_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3870, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_954_mem, piece_955_mem⟩

theorem linked_3871 : Linked cell_3871 pieces := by
  apply Linked.of_piece piece_350 piece_350_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3871, List.cons_subset, List.nil_subset, and_true]
  exact piece_955_mem

theorem linked_3872 : Linked cell_3872 pieces := by
  apply Linked.of_piece piece_351 piece_351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3872, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_954_mem, piece_955_mem⟩

theorem linked_3873 : Linked cell_3873 pieces := by
  apply Linked.of_piece piece_351 piece_351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3873, List.cons_subset, List.nil_subset, and_true]
  exact piece_955_mem

theorem linked_3874 : Linked cell_3874 pieces := by
  apply Linked.of_piece piece_351 piece_351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3874, List.cons_subset, List.nil_subset, and_true]
  exact piece_955_mem

theorem linked_3875 : Linked cell_3875 pieces := by
  apply Linked.of_piece piece_351 piece_351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3875, List.cons_subset, List.nil_subset, and_true]
  exact piece_955_mem

theorem linked_3876 : Linked cell_3876 pieces := by
  apply Linked.of_piece piece_351 piece_351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3876, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_955_mem, piece_956_mem⟩

theorem linked_3877 : Linked cell_3877 pieces := by
  apply Linked.of_piece piece_351 piece_351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3877, List.cons_subset, List.nil_subset, and_true]
  exact piece_956_mem

theorem linked_3878 : Linked cell_3878 pieces := by
  apply Linked.of_piece piece_351 piece_351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3878, List.cons_subset, List.nil_subset, and_true]
  exact piece_956_mem

theorem linked_3879 : Linked cell_3879 pieces := by
  apply Linked.of_piece piece_351 piece_351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3879, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_956_mem, piece_957_mem⟩

theorem linked_3880 : Linked cell_3880 pieces := by
  apply Linked.of_piece piece_351 piece_351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3880, List.cons_subset, List.nil_subset, and_true]
  exact piece_957_mem

theorem linked_3881 : Linked cell_3881 pieces := by
  apply Linked.of_piece piece_351 piece_351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3881, List.cons_subset, List.nil_subset, and_true]
  exact piece_957_mem

theorem linked_3882 : Linked cell_3882 pieces := by
  apply Linked.of_piece piece_351 piece_351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3882, List.cons_subset, List.nil_subset, and_true]
  exact piece_957_mem

theorem linked_3883 : Linked cell_3883 pieces := by
  apply Linked.of_piece piece_351 piece_351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3883, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_957_mem, piece_958_mem⟩

theorem linked_3884 : Linked cell_3884 pieces := by
  apply Linked.of_piece piece_351 piece_351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3884, List.cons_subset, List.nil_subset, and_true]
  exact piece_958_mem

theorem linked_3885 : Linked cell_3885 pieces := by
  apply Linked.of_piece piece_351 piece_351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3885, List.cons_subset, List.nil_subset, and_true]
  exact piece_958_mem

theorem linked_3886 : Linked cell_3886 pieces := by
  apply Linked.of_piece piece_351 piece_351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3886, List.cons_subset, List.nil_subset, and_true]
  exact piece_958_mem

theorem linked_3887 : Linked cell_3887 pieces := by
  apply Linked.of_piece piece_351 piece_351_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3887, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_958_mem, piece_959_mem⟩

theorem linked_3888 : Linked cell_3888 pieces := by
  apply Linked.of_piece piece_352 piece_352_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3888, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_958_mem, piece_959_mem⟩

theorem linked_3889 : Linked cell_3889 pieces := by
  apply Linked.of_piece piece_352 piece_352_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3889, List.cons_subset, List.nil_subset, and_true]
  exact piece_959_mem

theorem linked_3890 : Linked cell_3890 pieces := by
  apply Linked.of_piece piece_352 piece_352_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3890, List.cons_subset, List.nil_subset, and_true]
  exact piece_959_mem

theorem linked_3891 : Linked cell_3891 pieces := by
  apply Linked.of_piece piece_352 piece_352_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3891, List.cons_subset, List.nil_subset, and_true]
  exact piece_959_mem

theorem linked_3892 : Linked cell_3892 pieces := by
  apply Linked.of_piece piece_352 piece_352_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3892, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_959_mem, piece_960_mem⟩

theorem linked_3893 : Linked cell_3893 pieces := by
  apply Linked.of_piece piece_352 piece_352_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3893, List.cons_subset, List.nil_subset, and_true]
  exact piece_960_mem

theorem linked_3894 : Linked cell_3894 pieces := by
  apply Linked.of_piece piece_352 piece_352_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3894, List.cons_subset, List.nil_subset, and_true]
  exact piece_960_mem

theorem linked_3895 : Linked cell_3895 pieces := by
  apply Linked.of_piece piece_352 piece_352_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3895, List.cons_subset, List.nil_subset, and_true]
  exact piece_960_mem

theorem linked_3896 : Linked cell_3896 pieces := by
  apply Linked.of_piece piece_352 piece_352_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3896, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_960_mem, piece_961_mem⟩

theorem linked_3897 : Linked cell_3897 pieces := by
  apply Linked.of_piece piece_352 piece_352_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3897, List.cons_subset, List.nil_subset, and_true]
  exact piece_961_mem

theorem linked_3898 : Linked cell_3898 pieces := by
  apply Linked.of_piece piece_352 piece_352_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3898, List.cons_subset, List.nil_subset, and_true]
  exact piece_961_mem

theorem linked_3899 : Linked cell_3899 pieces := by
  apply Linked.of_piece piece_352 piece_352_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3899, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_961_mem, piece_962_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0077.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0077.cells,List.forall_mem_cons]
  exact ⟨linked_3850, linked_3851, linked_3852, linked_3853, linked_3854, linked_3855, linked_3856, linked_3857, linked_3858, linked_3859, linked_3860, linked_3861, linked_3862, linked_3863, linked_3864, linked_3865, linked_3866, linked_3867, linked_3868, linked_3869, linked_3870, linked_3871, linked_3872, linked_3873, linked_3874, linked_3875, linked_3876, linked_3877, linked_3878, linked_3879, linked_3880, linked_3881, linked_3882, linked_3883, linked_3884, linked_3885, linked_3886, linked_3887, linked_3888, linked_3889, linked_3890, linked_3891, linked_3892, linked_3893, linked_3894, linked_3895, linked_3896, linked_3897, linked_3898, linked_3899, by simp⟩

theorem covered : covers (147 / 1280 : ℚ) (11637500000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0077.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0077
