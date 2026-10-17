import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0021
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(215500000000000003 / 8000000000000000000 : ℚ), (431500000000000003 / 16000000000000000000 : ℚ)⟩
  branch := .small
  r := (2772933629279 / 2000000000000 : ℚ)
  w := (38096644390959 / 50000000000000 : ℚ)
  center := (862500000000000009 / 32000000000000000000 : ℚ)
  supportValue := (29169136069381287 / 10000000000000000 : ℚ)
  supportSlope := (9165872962853483 / 1000000000000000 : ℚ)
  oldCenter := (25158379859841360300022224624431583 / 320000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_159
  oldLo := (79500000000000001 / 1000000000000000000 : ℚ)
  oldHi := (40000000000000001 / 500000000000000000 : ℚ)
  oldPieces := [piece_272]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_1050 : Cell := { cellDefaults with
  r := (1392135245081 / 1000000000000 : ℚ)
  w := (37994020866037 / 50000000000000 : ℚ)
  newCoefficients := coefficients_157
  oldLo := (157 / 2000 : ℚ)
  oldHi := (79000000000000001 / 1000000000000000000 : ℚ)
  oldPieces := [piece_270]
}

def cell_1051 : Cell := { cellDefaults with
  domain := ⟨(431500000000000003 / 16000000000000000000 : ℚ), (27 / 1000 : ℚ)⟩
  r := (1392135245081 / 1000000000000 : ℚ)
  w := (37994020866037 / 50000000000000 : ℚ)
  center := (863500000000000003 / 32000000000000000000 : ℚ)
  supportValue := (2917198066863543 / 1000000000000000 : ℚ)
  supportSlope := (4519767560907467 / 500000000000000 : ℚ)
  oldCenter := (2519000530736669389251594200590629 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_157
  oldLo := (157 / 2000 : ℚ)
  oldHi := (79000000000000001 / 1000000000000000000 : ℚ)
  oldPieces := [piece_270]
}

def cell_1052 : Cell := { cellDefaults with
  domain := ⟨(27 / 1000 : ℚ), (173 / 6400 : ℚ)⟩
  r := (3473212642741 / 2500000000000 : ℚ)
  w := (76082724344457 / 100000000000000 : ℚ)
  center := (1729 / 64000 : ℚ)
  supportValue := (29161973439115823 / 10000000000000000 : ℚ)
  supportSlope := (2235089311731997 / 250000000000000 : ℚ)
  oldCenter := (50421052076231257967 / 640000000000000000000 : ℚ)
  newCoefficients := coefficients_158
  oldLo := (157 / 2000 : ℚ)
  oldHi := (79000000000000001 / 1000000000000000000 : ℚ)
  oldPieces := [piece_270]
}

def cell_1053 : Cell := { cellDefaults with
  domain := ⟨(173 / 6400 : ℚ), (433 / 16000 : ℚ)⟩
  r := (3473212642741 / 2500000000000 : ℚ)
  w := (76082724344457 / 100000000000000 : ℚ)
  center := (1731 / 64000 : ℚ)
  supportValue := (29164747722733653 / 10000000000000000 : ℚ)
  supportSlope := (4407516656371513 / 500000000000000 : ℚ)
  oldCenter := (50484178308051953343 / 640000000000000000000 : ℚ)
  newCoefficients := coefficients_158
  oldLo := (157 / 2000 : ℚ)
  oldHi := (79000000000000001 / 1000000000000000000 : ℚ)
  oldPieces := [piece_270]
}

def cell_1054 : Cell := { cellDefaults with
  domain := ⟨(433 / 16000 : ℚ), (867 / 32000 : ℚ)⟩
  r := (3473212642741 / 2500000000000 : ℚ)
  w := (76082724344457 / 100000000000000 : ℚ)
  center := (1733 / 64000 : ℚ)
  supportValue := (2916742448139217 / 1000000000000000 : ℚ)
  supportSlope := (4404408590559683 / 500000000000000 : ℚ)
  oldCenter := (5054714662625263061 / 64000000000000000000 : ℚ)
  newCoefficients := coefficients_158
  oldLo := (157 / 2000 : ℚ)
  oldHi := (79500000000000001 / 1000000000000000000 : ℚ)
  oldPieces := [piece_270, piece_271]
}

def cell_1055 : Cell := { cellDefaults with
  domain := ⟨(867 / 32000 : ℚ), (217 / 8000 : ℚ)⟩
  r := (3473212642741 / 2500000000000 : ℚ)
  w := (76082724344457 / 100000000000000 : ℚ)
  center := (347 / 12800 : ℚ)
  supportValue := (583405581272259 / 200000000000000 : ℚ)
  supportSlope := (4485308971879931 / 500000000000000 : ℚ)
  oldCenter := (202441736701473873 / 2560000000000000000 : ℚ)
  newCoefficients := coefficients_158
  oldLo := (79000000000000001 / 1000000000000000000 : ℚ)
  oldHi := (79500000000000001 / 1000000000000000000 : ℚ)
  oldPieces := [piece_271]
}

def cell_1056 : Cell := { cellDefaults with
  domain := ⟨(217 / 8000 : ℚ), (869 / 32000 : ℚ)⟩
  r := (3473212642741 / 2500000000000 : ℚ)
  w := (76082724344457 / 100000000000000 : ℚ)
  center := (1737 / 64000 : ℚ)
  supportValue := (5834612888910729 / 2000000000000000 : ℚ)
  supportSlope := (55348700510649 / 6250000000000 : ℚ)
  oldCenter := (10134722588037936273 / 128000000000000000000 : ℚ)
  newCoefficients := coefficients_158
  oldLo := (79000000000000001 / 1000000000000000000 : ℚ)
  oldHi := (79500000000000001 / 1000000000000000000 : ℚ)
  oldPieces := [piece_271]
}

def cell_1057 : Cell := { cellDefaults with
  domain := ⟨(869 / 32000 : ℚ), (87 / 3200 : ℚ)⟩
  r := (3473212642741 / 2500000000000 : ℚ)
  w := (76082724344457 / 100000000000000 : ℚ)
  center := (1739 / 64000 : ℚ)
  supportValue := (14587906957000467 / 5000000000000000 : ℚ)
  supportSlope := (2185196344576923 / 250000000000000 : ℚ)
  oldCenter := (25368370198223812113 / 320000000000000000000 : ℚ)
  newCoefficients := coefficients_158
  oldLo := (79000000000000001 / 1000000000000000000 : ℚ)
  oldHi := (79500000000000001 / 1000000000000000000 : ℚ)
  oldPieces := [piece_271]
}

def cell_1058 : Cell := { cellDefaults with
  domain := ⟨(87 / 3200 : ℚ), (871 / 32000 : ℚ)⟩
  r := (3473212642741 / 2500000000000 : ℚ)
  w := (76082724344457 / 100000000000000 : ℚ)
  center := (1741 / 64000 : ℚ)
  supportValue := (729463185405143 / 250000000000000 : ℚ)
  supportSlope := (4312801360526919 / 500000000000000 : ℚ)
  oldCenter := (1269995405790353963 / 16000000000000000000 : ℚ)
  newCoefficients := coefficients_158
  oldLo := (79000000000000001 / 1000000000000000000 : ℚ)
  oldHi := (79500000000000001 / 1000000000000000000 : ℚ)
  oldPieces := [piece_271]
}

def cell_1059 : Cell := { cellDefaults with
  domain := ⟨(871 / 32000 : ℚ), (109 / 4000 : ℚ)⟩
  r := (3473212642741 / 2500000000000 : ℚ)
  w := (76082724344457 / 100000000000000 : ℚ)
  center := (1743 / 64000 : ℚ)
  supportValue := (29181146534477733 / 10000000000000000 : ℚ)
  supportSlope := (859403431374517 / 100000000000000 : ℚ)
  oldCenter := (50862738409594688619 / 640000000000000000000 : ℚ)
  newCoefficients := coefficients_158
  oldLo := (79000000000000001 / 1000000000000000000 : ℚ)
  oldPieces := [piece_271, piece_272]
}

def cell_1060 : Cell := { cellDefaults with
  domain := ⟨(109 / 4000 : ℚ), (873 / 32000 : ℚ)⟩
  r := (3473212642741 / 2500000000000 : ℚ)
  w := (76082724344457 / 100000000000000 : ℚ)
  center := (349 / 12800 : ℚ)
  supportValue := (729598258978279 / 250000000000000 : ℚ)
  supportSlope := (4383768542552957 / 500000000000000 : ℚ)
  oldCenter := (254629792383419371 / 3200000000000000000 : ℚ)
  newCoefficients := coefficients_158
  oldPieces := [piece_272]
}

def cell_1061 : Cell := { cellDefaults with
  domain := ⟨(873 / 32000 : ℚ), (437 / 16000 : ℚ)⟩
  r := (3473212642741 / 2500000000000 : ℚ)
  w := (76082724344457 / 100000000000000 : ℚ)
  center := (1747 / 64000 : ℚ)
  supportValue := (2918665365575691 / 1000000000000000 : ℚ)
  supportSlope := (1082691656758783 / 125000000000000 : ℚ)
  oldCenter := (5098908393660732177 / 64000000000000000000 : ℚ)
  newCoefficients := coefficients_158
  oldPieces := [piece_272]
}

def cell_1062 : Cell := { cellDefaults with
  domain := ⟨(437 / 16000 : ℚ), (7 / 256 : ℚ)⟩
  r := (3473212642741 / 2500000000000 : ℚ)
  w := (76082724344457 / 100000000000000 : ℚ)
  center := (1749 / 64000 : ℚ)
  supportValue := (29189343797948237 / 10000000000000000 : ℚ)
  supportSlope := (2138837385238901 / 250000000000000 : ℚ)
  oldCenter := (51052162302611466513 / 640000000000000000000 : ℚ)
  newCoefficients := coefficients_158
  oldPieces := [piece_272]
}

def cell_1063 : Cell := { cellDefaults with
  domain := ⟨(7 / 256 : ℚ), (219 / 8000 : ℚ)⟩
  r := (3473212642741 / 2500000000000 : ℚ)
  w := (76082724344457 / 100000000000000 : ℚ)
  center := (1751 / 64000 : ℚ)
  supportValue := (7298000182536819 / 2500000000000000 : ℚ)
  supportSlope := (8448990139612533 / 1000000000000000 : ℚ)
  oldCenter := (12778798319621970069 / 160000000000000000000 : ℚ)
  newCoefficients := coefficients_158
  oldPieces := [piece_272]
}

def cell_1064 : Cell := { cellDefaults with
  domain := ⟨(219 / 8000 : ℚ), (1753 / 64000 : ℚ)⟩
  r := (3473212642741 / 2500000000000 : ℚ)
  w := (76082724344457 / 100000000000000 : ℚ)
  center := (701 / 25600 : ℚ)
  supportValue := (3649249004794673 / 1250000000000000 : ℚ)
  supportSlope := (836911307749233 / 100000000000000 : ℚ)
  oldCenter := (2558123552361065773 / 32000000000000000000 : ℚ)
  newCoefficients := coefficients_158
  oldPieces := [piece_272]
}

def cell_1065 : Cell := { cellDefaults with
  domain := ⟨(1753 / 64000 : ℚ), (877 / 32000 : ℚ)⟩
  r := (3473212642741 / 2500000000000 : ℚ)
  w := (76082724344457 / 100000000000000 : ℚ)
  center := (3507 / 128000 : ℚ)
  supportValue := (7298804180179651 / 2500000000000000 : ℚ)
  supportSlope := (2105106276104607 / 250000000000000 : ℚ)
  oldCenter := (25596906259890036057 / 320000000000000000000 : ℚ)
  newCoefficients := coefficients_158
  oldHi := (40250000000000001 / 500000000000000000 : ℚ)
  oldPieces := [piece_272, piece_273]
}

def cell_1066 : Cell := { cellDefaults with
  domain := ⟨(877 / 32000 : ℚ), (439 / 16000 : ℚ)⟩
  r := (3473212642741 / 2500000000000 : ℚ)
  w := (76082724344457 / 100000000000000 : ℚ)
  center := (351 / 12800 : ℚ)
  supportValue := (2919728463027429 / 1000000000000000 : ℚ)
  supportSlope := (42904350537043 / 5000000000000 : ℚ)
  oldCenter := (1024824690522627579 / 12800000000000000000 : ℚ)
  newCoefficients := coefficients_158
  oldLo := (40000000000000001 / 500000000000000000 : ℚ)
  oldHi := (40250000000000001 / 500000000000000000 : ℚ)
  oldPieces := [piece_273]
}

def cell_1067 : Cell := { cellDefaults with
  domain := ⟨(439 / 16000 : ℚ), (879 / 32000 : ℚ)⟩
  r := (3473212642741 / 2500000000000 : ℚ)
  w := (76082724344457 / 100000000000000 : ℚ)
  center := (1757 / 64000 : ℚ)
  supportValue := (1459997550634399 / 500000000000000 : ℚ)
  supportSlope := (4241974830677009 / 500000000000000 : ℚ)
  oldCenter := (2565215696464639043 / 32000000000000000000 : ℚ)
  newCoefficients := coefficients_158
  oldLo := (40000000000000001 / 500000000000000000 : ℚ)
  oldHi := (40250000000000001 / 500000000000000000 : ℚ)
  oldPieces := [piece_273]
}

def cell_1068 : Cell := { cellDefaults with
  domain := ⟨(879 / 32000 : ℚ), (11 / 400 : ℚ)⟩
  r := (3473212642741 / 2500000000000 : ℚ)
  w := (76082724344457 / 100000000000000 : ℚ)
  center := (1759 / 64000 : ℚ)
  supportValue := (7300646769916379 / 2500000000000000 : ℚ)
  supportSlope := (2096713000952377 / 250000000000000 : ℚ)
  oldCenter := (12841837668282910661 / 160000000000000000000 : ℚ)
  newCoefficients := coefficients_158
  oldLo := (40000000000000001 / 500000000000000000 : ℚ)
  oldHi := (40250000000000001 / 500000000000000000 : ℚ)
  oldPieces := [piece_273]
}

def cell_1069 : Cell := { cellDefaults with
  domain := ⟨(11 / 400 : ℚ), (440500000000000001 / 16000000000000000000 : ℚ)⟩
  center := (880500000000000001 / 32000000000000000000 : ℚ)
  supportValue := (14597710013244307 / 5000000000000000 : ℚ)
  supportSlope := (829144423951787 / 100000000000000 : ℚ)
  oldCenter := (12853283666661612328097710013244307 / 160000000000000000000000000000000000 : ℚ)
  oldLo := (40000000000000001 / 500000000000000000 : ℚ)
  oldHi := (40250000000000001 / 500000000000000000 : ℚ)
  oldPieces := [piece_273]
}

def cell_1070 : Cell := { cellDefaults with
  domain := ⟨(440500000000000001 / 16000000000000000000 : ℚ), (220500000000000001 / 8000000000000000000 : ℚ)⟩
  center := (881500000000000003 / 32000000000000000000 : ℚ)
  supportValue := (29197996028380757 / 10000000000000000 : ℚ)
  supportSlope := (1024367827763937 / 125000000000000 : ℚ)
  oldCenter := (25738033499017637383093988085142271 / 320000000000000000000000000000000000 : ℚ)
  oldLo := (40000000000000001 / 500000000000000000 : ℚ)
  oldHi := (40250000000000001 / 500000000000000000 : ℚ)
  oldPieces := [piece_273]
}

def cell_1071 : Cell := { cellDefaults with
  domain := ⟨(220500000000000001 / 8000000000000000000 : ℚ), (176500000000000001 / 6400000000000000000 : ℚ)⟩
  center := (1764500000000000009 / 64000000000000000000 : ℚ)
  supportValue := (29199913227341767 / 10000000000000000 : ℚ)
  supportSlope := (4154088005577697 / 500000000000000 : ℚ)
  oldCenter := (51523246889644548134299219046075903 / 640000000000000000000000000000000000 : ℚ)
  oldLo := (40000000000000001 / 500000000000000000 : ℚ)
  oldHi := (81000000000000003 / 1000000000000000000 : ℚ)
  oldPieces := [piece_273, piece_274]
}

def cell_1072 : Cell := { cellDefaults with
  domain := ⟨(176500000000000001 / 6400000000000000000 : ℚ), (441500000000000003 / 16000000000000000000 : ℚ)⟩
  center := (1765500000000000011 / 64000000000000000000 : ℚ)
  supportValue := (7300313269949683 / 2500000000000000 : ℚ)
  supportSlope := (8385042104180213 / 1000000000000000 : ℚ)
  oldCenter := (12888703078096165416803445969446513 / 160000000000000000000000000000000000 : ℚ)
  oldLo := (40250000000000001 / 500000000000000000 : ℚ)
  oldHi := (81000000000000003 / 1000000000000000000 : ℚ)
  oldPieces := [piece_274]
}

def cell_1073 : Cell := { cellDefaults with
  domain := ⟨(441500000000000003 / 16000000000000000000 : ℚ), (110500000000000001 / 4000000000000000000 : ℚ)⟩
  center := (883500000000000007 / 32000000000000000000 : ℚ)
  supportValue := (1460159218180941 / 500000000000000 : ℚ)
  supportSlope := (8319503871859963 / 1000000000000000 : ℚ)
  oldCenter := (1290050669262861383721114527266587 / 16000000000000000000000000000000000 : ℚ)
  oldLo := (40250000000000001 / 500000000000000000 : ℚ)
  oldHi := (81000000000000003 / 1000000000000000000 : ℚ)
  oldPieces := [piece_274]
}

def cell_1074 : Cell := { cellDefaults with
  domain := ⟨(110500000000000001 / 4000000000000000000 : ℚ), (88500000000000001 / 3200000000000000000 : ℚ)⟩
  center := (884500000000000009 / 32000000000000000000 : ℚ)
  supportValue := (2920577053665469 / 1000000000000000 : ℚ)
  supportSlope := (8231977875169589 / 1000000000000000 : ℚ)
  oldCenter := (2583250403967107356785193482989221 / 32000000000000000000000000000000000 : ℚ)
  oldLo := (40250000000000001 / 500000000000000000 : ℚ)
  oldHi := (81000000000000003 / 1000000000000000000 : ℚ)
  oldPieces := [piece_274]
}

def cell_1075 : Cell := { cellDefaults with
  domain := ⟨(88500000000000001 / 3200000000000000000 : ℚ), (221500000000000003 / 8000000000000000000 : ℚ)⟩
  center := (885500000000000011 / 32000000000000000000 : ℚ)
  supportValue := (14604164665780601 / 5000000000000000 : ℚ)
  supportSlope := (127254443677671 / 15625000000000 : ℚ)
  oldCenter := (12931987811548722346145811323586611 / 160000000000000000000000000000000000 : ℚ)
  oldLo := (40250000000000001 / 500000000000000000 : ℚ)
  oldHi := (81000000000000003 / 1000000000000000000 : ℚ)
  oldPieces := [piece_274]
}

def cell_1076 : Cell := { cellDefaults with
  domain := ⟨(221500000000000003 / 8000000000000000000 : ℚ), (443500000000000007 / 16000000000000000000 : ℚ)⟩
  center := (886500000000000013 / 32000000000000000000 : ℚ)
  supportValue := (29210860696454177 / 10000000000000000 : ℚ)
  supportSlope := (2014106585107807 / 250000000000000 : ℚ)
  oldCenter := (25895428007406628290241189053904301 / 320000000000000000000000000000000000 : ℚ)
  oldLo := (40250000000000001 / 500000000000000000 : ℚ)
  oldHi := (81000000000000003 / 1000000000000000000 : ℚ)
  oldPieces := [piece_274]
}

def cell_1077 : Cell := { cellDefaults with
  domain := ⟨(443500000000000007 / 16000000000000000000 : ℚ), (177500000000000003 / 6400000000000000000 : ℚ)⟩
  center := (1774500000000000029 / 64000000000000000000 : ℚ)
  supportValue := (7303185297119693 / 2500000000000000 : ℚ)
  supportSlope := (2028276599148167 / 250000000000000 : ℚ)
  oldCenter := (12959502309738895440292373616471097 / 160000000000000000000000000000000000 : ℚ)
  oldLo := (40250000000000001 / 500000000000000000 : ℚ)
  oldHi := (81500000000000003 / 1000000000000000000 : ℚ)
  oldPieces := [piece_274, piece_275]
}

def cell_1078 : Cell := { cellDefaults with
  domain := ⟨(177500000000000003 / 6400000000000000000 : ℚ), (55500000000000001 / 2000000000000000000 : ℚ)⟩
  center := (1775500000000000031 / 64000000000000000000 : ℚ)
  supportValue := (3651756715585393 / 1250000000000000 : ℚ)
  supportSlope := (1645828534060453 / 200000000000000 : ℚ)
  oldCenter := (6483694048521865384704458183147183 / 80000000000000000000000000000000000 : ℚ)
  oldLo := (81000000000000003 / 1000000000000000000 : ℚ)
  oldHi := (81500000000000003 / 1000000000000000000 : ℚ)
  oldPieces := [piece_275]
}

def cell_1079 : Cell := { cellDefaults with
  domain := ⟨(55500000000000001 / 2000000000000000000 : ℚ), (444500000000000009 / 16000000000000000000 : ℚ)⟩
  center := (888500000000000017 / 32000000000000000000 : ℚ)
  supportValue := (1460797454432389 / 500000000000000 : ℚ)
  supportSlope := (1633797249434107 / 200000000000000 : ℚ)
  oldCenter := (1297918538263177651333556725350613 / 16000000000000000000000000000000000 : ℚ)
  oldLo := (81000000000000003 / 1000000000000000000 : ℚ)
  oldHi := (81500000000000003 / 1000000000000000000 : ℚ)
  oldPieces := [piece_275]
}

def cell_1080 : Cell := { cellDefaults with
  domain := ⟨(444500000000000009 / 16000000000000000000 : ℚ), (44500000000000001 / 1600000000000000000 : ℚ)⟩
  center := (889500000000000019 / 32000000000000000000 : ℚ)
  supportValue := (29218489346820693 / 10000000000000000 : ℚ)
  supportSlope := (8088641774122591 / 1000000000000000 : ℚ)
  oldCenter := (25989846273997006978651297589593167 / 320000000000000000000000000000000000 : ℚ)
  oldLo := (81000000000000003 / 1000000000000000000 : ℚ)
  oldHi := (81500000000000003 / 1000000000000000000 : ℚ)
  oldPieces := [piece_275]
}

def cell_1081 : Cell := { cellDefaults with
  domain := ⟨(44500000000000001 / 1600000000000000000 : ℚ), (445500000000000011 / 16000000000000000000 : ℚ)⟩
  center := (890500000000000021 / 32000000000000000000 : ℚ)
  supportValue := (14610502236063627 / 5000000000000000 : ℚ)
  supportSlope := (2002034088754097 / 250000000000000 : ℚ)
  oldCenter := (13010652241214660150320546957336167 / 160000000000000000000000000000000000 : ℚ)
  oldLo := (81000000000000003 / 1000000000000000000 : ℚ)
  oldHi := (81500000000000003 / 1000000000000000000 : ℚ)
  oldPieces := [piece_275]
}

def cell_1082 : Cell := { cellDefaults with
  domain := ⟨(445500000000000011 / 16000000000000000000 : ℚ), (111500000000000003 / 4000000000000000000 : ℚ)⟩
  center := (891500000000000023 / 32000000000000000000 : ℚ)
  supportValue := (58446988829311 / 20000000000000 : ℚ)
  supportSlope := (15854944892794233 / 2000000000000000 : ℚ)
  oldCenter := (52105490541330757844280743074153 / 640000000000000000000000000000000 : ℚ)
  oldLo := (81000000000000003 / 1000000000000000000 : ℚ)
  oldHi := (81500000000000003 / 1000000000000000000 : ℚ)
  oldPieces := [piece_275]
}

def cell_1083 : Cell := { cellDefaults with
  domain := ⟨(111500000000000003 / 4000000000000000000 : ℚ), (35700000000000001 / 1280000000000000000 : ℚ)⟩
  center := (1784500000000000049 / 64000000000000000000 : ℚ)
  supportValue := (2922534531576153 / 1000000000000000 : ℚ)
  supportSlope := (7934790038348167 / 1000000000000000 : ℚ)
  oldCenter := (5215262871597645171704192047231497 / 64000000000000000000000000000000000 : ℚ)
  oldLo := (81000000000000003 / 1000000000000000000 : ℚ)
  oldHi := (8189944134078211 / 100000000000000000 : ℚ)
  oldPieces := [piece_275, piece_276]
}

def cell_1084 : Cell := { cellDefaults with
  domain := ⟨(35700000000000001 / 1280000000000000000 : ℚ), (446500000000000013 / 16000000000000000000 : ℚ)⟩
  center := (1785500000000000051 / 64000000000000000000 : ℚ)
  supportValue := (14613314133657107 / 5000000000000000 : ℚ)
  supportSlope := (1616692858715393 / 200000000000000 : ℚ)
  oldCenter := (26092072385644765293779020816512457 / 320000000000000000000000000000000000 : ℚ)
  oldLo := (81500000000000003 / 1000000000000000000 : ℚ)
  oldHi := (8189944134078211 / 100000000000000000 : ℚ)
  oldPieces := [piece_276]
}

def cell_1085 : Cell := { cellDefaults with
  domain := ⟨(446500000000000013 / 16000000000000000000 : ℚ), (223500000000000007 / 8000000000000000000 : ℚ)⟩
  center := (893500000000000027 / 32000000000000000000 : ℚ)
  supportValue := (1461424508031503 / 500000000000000 : ℚ)
  supportSlope := (802914599233871 / 100000000000000 : ℚ)
  oldCenter := (1305782797926147969958461716850581 / 16000000000000000000000000000000000 : ℚ)
  oldLo := (81500000000000003 / 1000000000000000000 : ℚ)
  oldHi := (8189944134078211 / 100000000000000000 : ℚ)
  oldPieces := [piece_276]
}

def cell_1086 : Cell := { cellDefaults with
  domain := ⟨(223500000000000007 / 8000000000000000000 : ℚ), (89500000000000003 / 3200000000000000000 : ℚ)⟩
  center := (894500000000000029 / 32000000000000000000 : ℚ)
  supportValue := (1461549396791671 / 500000000000000 : ℚ)
  supportSlope := (7956592864417173 / 1000000000000000 : ℚ)
  oldCenter := (1307355935430149751884932506958459 / 16000000000000000000000000000000000 : ℚ)
  oldLo := (81500000000000003 / 1000000000000000000 : ℚ)
  oldHi := (8189944134078211 / 100000000000000000 : ℚ)
  oldPieces := [piece_276]
}

def cell_1087 : Cell := { cellDefaults with
  domain := ⟨(89500000000000003 / 3200000000000000000 : ℚ), (28000000000000001 / 1000000000000000000 : ℚ)⟩
  center := (895500000000000031 / 32000000000000000000 : ℚ)
  supportValue := (29233463014265997 / 10000000000000000 : ℚ)
  supportSlope := (1970971753628699 / 250000000000000 : ℚ)
  oldCenter := (26178566129275201219737353442245907 / 320000000000000000000000000000000000 : ℚ)
  oldLo := (81500000000000003 / 1000000000000000000 : ℚ)
  oldHi := (8189944134078211 / 100000000000000000 : ℚ)
  oldPieces := [piece_276]
}

def cell_1088 : Cell := { cellDefaults with
  domain := ⟨(28000000000000001 / 1000000000000000000 : ℚ), (28031250000000001 / 1000000000000000000 : ℚ)⟩
  r := (13836775406269 / 10000000000000 : ℚ)
  w := (9539529460051 / 12500000000000 : ℚ)
  center := (28015625000000001 / 1000000000000000000 : ℚ)
  supportValue := (7307126254823827 / 2500000000000000 : ℚ)
  supportSlope := (15593430028104649 / 2000000000000000 : ℚ)
  oldCenter := (204713708982798785604001254823827 / 2500000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_160
  oldLo := (81500000000000003 / 1000000000000000000 : ℚ)
  oldHi := (82000000000000003 / 1000000000000000000 : ℚ)
  oldPieces := [piece_276, piece_277]
}

def cell_1089 : Cell := { cellDefaults with
  domain := ⟨(28031250000000001 / 1000000000000000000 : ℚ), (28046875000000001 / 1000000000000000000 : ℚ)⟩
  r := (13836775406269 / 10000000000000 : ℚ)
  w := (9539529460051 / 12500000000000 : ℚ)
  center := (28039062500000001 / 1000000000000000000 : ℚ)
  supportValue := (5846070476900719 / 2000000000000000 : ℚ)
  supportSlope := (1935701097906417 / 250000000000000 : ℚ)
  oldCenter := (163918335481224072182007976900719 / 2000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_160
  oldLo := (8189944134078211 / 100000000000000000 : ℚ)
  oldHi := (82000000000000003 / 1000000000000000000 : ℚ)
  oldPieces := [piece_277]
}

def cell_1090 : Cell := { cellDefaults with
  domain := ⟨(28046875000000001 / 1000000000000000000 : ℚ), (28062500000000001 / 1000000000000000000 : ℚ)⟩
  r := (13836775406269 / 10000000000000 : ℚ)
  w := (9539529460051 / 12500000000000 : ℚ)
  center := (28054687500000001 / 1000000000000000000 : ℚ)
  supportValue := (146157695585521 / 50000000000000 : ℚ)
  supportSlope := (7861396530699949 / 1000000000000000 : ℚ)
  oldCenter := (4100408475371921325845195585521 / 50000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_160
  oldLo := (8189944134078211 / 100000000000000000 : ℚ)
  oldHi := (20625000000000001 / 250000000000000000 : ℚ)
  oldPieces := [piece_277, piece_278]
}

def cell_1091 : Cell := { cellDefaults with
  domain := ⟨(28062500000000001 / 1000000000000000000 : ℚ), (28093750000000001 / 1000000000000000000 : ℚ)⟩
  r := (13836775406269 / 10000000000000 : ℚ)
  w := (9539529460051 / 12500000000000 : ℚ)
  center := (28078125000000001 / 1000000000000000000 : ℚ)
  supportValue := (2923339374160943 / 1000000000000000 : ℚ)
  supportSlope := (1972063248615541 / 250000000000000 : ℚ)
  oldCenter := (82081888365112730595214374160943 / 1000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_160
  oldLo := (82000000000000003 / 1000000000000000000 : ℚ)
  oldHi := (20625000000000001 / 250000000000000000 : ℚ)
  oldPieces := [piece_278]
}

def cell_1092 : Cell := { cellDefaults with
  domain := ⟨(28093750000000001 / 1000000000000000000 : ℚ), (28125000000000001 / 1000000000000000000 : ℚ)⟩
  r := (13836775406269 / 10000000000000 : ℚ)
  w := (9539529460051 / 12500000000000 : ℚ)
  center := (28109375000000001 / 1000000000000000000 : ℚ)
  supportValue := (45681013231239 / 15625000000000 : ℚ)
  supportSlope := (7821975637909873 / 1000000000000000 : ℚ)
  oldCenter := (1284064731296858811306013231239 / 15625000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_160
  oldLo := (82000000000000003 / 1000000000000000000 : ℚ)
  oldHi := (20625000000000001 / 250000000000000000 : ℚ)
  oldPieces := [piece_278]
}

def cell_1093 : Cell := { cellDefaults with
  domain := ⟨(28125000000000001 / 1000000000000000000 : ℚ), (28156250000000001 / 1000000000000000000 : ℚ)⟩
  r := (13836775406269 / 10000000000000 : ℚ)
  w := (9539529460051 / 12500000000000 : ℚ)
  center := (28140625000000001 / 1000000000000000000 : ℚ)
  supportValue := (14619141230165469 / 5000000000000000 : ℚ)
  supportSlope := (7755555389167057 / 1000000000000000 : ℚ)
  oldCenter := (411391771180125165697266230165469 / 5000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_160
  oldLo := (82000000000000003 / 1000000000000000000 : ℚ)
  oldHi := (20625000000000001 / 250000000000000000 : ℚ)
  oldPieces := [piece_278]
}

def cell_1094 : Cell := { cellDefaults with
  domain := ⟨(28156250000000001 / 1000000000000000000 : ℚ), (28187500000000001 / 1000000000000000000 : ℚ)⟩
  r := (13836775406269 / 10000000000000 : ℚ)
  w := (9539529460051 / 12500000000000 : ℚ)
  center := (28171875000000001 / 1000000000000000000 : ℚ)
  supportValue := (731017391855793 / 250000000000000 : ℚ)
  supportSlope := (15377987854890307 / 2000000000000000 : ℚ)
  oldCenter := (20594130586187419152892391855793 / 250000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_160
  oldLo := (82000000000000003 / 1000000000000000000 : ℚ)
  oldHi := (20625000000000001 / 250000000000000000 : ℚ)
  oldPieces := [piece_278]
}

def cell_1095 : Cell := { cellDefaults with
  domain := ⟨(28187500000000001 / 1000000000000000000 : ℚ), (28203125000000001 / 1000000000000000000 : ℚ)⟩
  r := (13836775406269 / 10000000000000 : ℚ)
  w := (9539529460051 / 12500000000000 : ℚ)
  center := (28195312500000001 / 1000000000000000000 : ℚ)
  supportValue := (584850364813379 / 200000000000000 : ℚ)
  supportSlope := (238718296674989 / 31250000000000 : ℚ)
  oldCenter := (16490038801652225670787864813379 / 200000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_160
  oldLo := (82000000000000003 / 1000000000000000000 : ℚ)
  oldHi := (20625000000000001 / 250000000000000000 : ℚ)
  oldPieces := [piece_278]
}

def cell_1096 : Cell := { cellDefaults with
  domain := ⟨(28203125000000001 / 1000000000000000000 : ℚ), (28218750000000001 / 1000000000000000000 : ℚ)⟩
  r := (13836775406269 / 10000000000000 : ℚ)
  w := (9539529460051 / 12500000000000 : ℚ)
  center := (28210937500000001 / 1000000000000000000 : ℚ)
  supportValue := (7310920726288327 / 2500000000000000 : ℚ)
  supportSlope := (7708566766552849 / 1000000000000000 : ℚ)
  oldCenter := (206247927676774607287483226288327 / 2500000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_160
  oldLo := (82000000000000003 / 1000000000000000000 : ℚ)
  oldHi := (20750000000000001 / 250000000000000000 : ℚ)
  oldPieces := [piece_278, piece_279]
}

def cell_1097 : Cell := { cellDefaults with
  domain := ⟨(28218750000000001 / 1000000000000000000 : ℚ), (28250000000000001 / 1000000000000000000 : ℚ)⟩
  r := (13836775406269 / 10000000000000 : ℚ)
  w := (9539529460051 / 12500000000000 : ℚ)
  center := (28234375000000001 / 1000000000000000000 : ℚ)
  supportValue := (29245509236662097 / 10000000000000000 : ℚ)
  supportSlope := (3885903552287573 / 500000000000000 : ℚ)
  oldCenter := (825728674853881424229884236662097 / 10000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_160
  oldLo := (20625000000000001 / 250000000000000000 : ℚ)
  oldHi := (20750000000000001 / 250000000000000000 : ℚ)
  oldPieces := [piece_279]
}

def cell_1098 : Cell := { cellDefaults with
  domain := ⟨(28250000000000001 / 1000000000000000000 : ℚ), (28281250000000001 / 1000000000000000000 : ℚ)⟩
  r := (13836775406269 / 10000000000000 : ℚ)
  w := (9539529460051 / 12500000000000 : ℚ)
  center := (28265625000000001 / 1000000000000000000 : ℚ)
  supportValue := (29247928459351273 / 10000000000000000 : ℚ)
  supportSlope := (15422399960129951 / 2000000000000000 : ℚ)
  oldCenter := (826710977858850855138553459351273 / 10000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_160
  oldLo := (20625000000000001 / 250000000000000000 : ℚ)
  oldHi := (20750000000000001 / 250000000000000000 : ℚ)
  oldPieces := [piece_279]
}

def cell_1099 : Cell := { cellDefaults with
  domain := ⟨(28281250000000001 / 1000000000000000000 : ℚ), (28312500000000001 / 1000000000000000000 : ℚ)⟩
  r := (13836775406269 / 10000000000000 : ℚ)
  w := (9539529460051 / 12500000000000 : ℚ)
  center := (28296875000000001 / 1000000000000000000 : ℚ)
  supportValue := (585006574427637 / 200000000000000 : ℚ)
  supportSlope := (7650459117513719 / 1000000000000000 : ℚ)
  oldCenter := (16553857910757041319381574427637 / 200000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_160
  oldLo := (20625000000000001 / 250000000000000000 : ℚ)
  oldHi := (20750000000000001 / 250000000000000000 : ℚ)
  oldPieces := [piece_279]
}

theorem check_1050 : cell_1050.check = true := by
  decide +kernel

theorem check_1051 : cell_1051.check = true := by
  decide +kernel

theorem check_1052 : cell_1052.check = true := by
  decide +kernel

theorem check_1053 : cell_1053.check = true := by
  decide +kernel

theorem check_1054 : cell_1054.check = true := by
  decide +kernel

theorem check_1055 : cell_1055.check = true := by
  decide +kernel

theorem check_1056 : cell_1056.check = true := by
  decide +kernel

theorem check_1057 : cell_1057.check = true := by
  decide +kernel

theorem check_1058 : cell_1058.check = true := by
  decide +kernel

theorem check_1059 : cell_1059.check = true := by
  decide +kernel

theorem check_1060 : cell_1060.check = true := by
  decide +kernel

theorem check_1061 : cell_1061.check = true := by
  decide +kernel

theorem check_1062 : cell_1062.check = true := by
  decide +kernel

theorem check_1063 : cell_1063.check = true := by
  decide +kernel

theorem check_1064 : cell_1064.check = true := by
  decide +kernel

theorem check_1065 : cell_1065.check = true := by
  decide +kernel

theorem check_1066 : cell_1066.check = true := by
  decide +kernel

theorem check_1067 : cell_1067.check = true := by
  decide +kernel

theorem check_1068 : cell_1068.check = true := by
  decide +kernel

theorem check_1069 : cell_1069.check = true := by
  decide +kernel

theorem check_1070 : cell_1070.check = true := by
  decide +kernel

theorem check_1071 : cell_1071.check = true := by
  decide +kernel

theorem check_1072 : cell_1072.check = true := by
  decide +kernel

theorem check_1073 : cell_1073.check = true := by
  decide +kernel

theorem check_1074 : cell_1074.check = true := by
  decide +kernel

theorem check_1075 : cell_1075.check = true := by
  decide +kernel

theorem check_1076 : cell_1076.check = true := by
  decide +kernel

theorem check_1077 : cell_1077.check = true := by
  decide +kernel

theorem check_1078 : cell_1078.check = true := by
  decide +kernel

theorem check_1079 : cell_1079.check = true := by
  decide +kernel

theorem check_1080 : cell_1080.check = true := by
  decide +kernel

theorem check_1081 : cell_1081.check = true := by
  decide +kernel

theorem check_1082 : cell_1082.check = true := by
  decide +kernel

theorem check_1083 : cell_1083.check = true := by
  decide +kernel

theorem check_1084 : cell_1084.check = true := by
  decide +kernel

theorem check_1085 : cell_1085.check = true := by
  decide +kernel

theorem check_1086 : cell_1086.check = true := by
  decide +kernel

theorem check_1087 : cell_1087.check = true := by
  decide +kernel

theorem check_1088 : cell_1088.check = true := by
  decide +kernel

theorem check_1089 : cell_1089.check = true := by
  decide +kernel

theorem check_1090 : cell_1090.check = true := by
  decide +kernel

theorem check_1091 : cell_1091.check = true := by
  decide +kernel

theorem check_1092 : cell_1092.check = true := by
  decide +kernel

theorem check_1093 : cell_1093.check = true := by
  decide +kernel

theorem check_1094 : cell_1094.check = true := by
  decide +kernel

theorem check_1095 : cell_1095.check = true := by
  decide +kernel

theorem check_1096 : cell_1096.check = true := by
  decide +kernel

theorem check_1097 : cell_1097.check = true := by
  decide +kernel

theorem check_1098 : cell_1098.check = true := by
  decide +kernel

theorem check_1099 : cell_1099.check = true := by
  decide +kernel

def cells : List Cell := [cell_1050, cell_1051, cell_1052, cell_1053, cell_1054, cell_1055, cell_1056, cell_1057, cell_1058, cell_1059, cell_1060, cell_1061, cell_1062, cell_1063, cell_1064, cell_1065, cell_1066, cell_1067, cell_1068, cell_1069, cell_1070, cell_1071, cell_1072, cell_1073, cell_1074, cell_1075, cell_1076, cell_1077, cell_1078, cell_1079, cell_1080, cell_1081, cell_1082, cell_1083, cell_1084, cell_1085, cell_1086, cell_1087, cell_1088, cell_1089, cell_1090, cell_1091, cell_1092, cell_1093, cell_1094, cell_1095, cell_1096, cell_1097, cell_1098, cell_1099]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_1050, check_1051, check_1052, check_1053, check_1054, check_1055, check_1056, check_1057, check_1058, check_1059, check_1060, check_1061, check_1062, check_1063, check_1064, check_1065, check_1066, check_1067, check_1068, check_1069, check_1070, check_1071, check_1072, check_1073, check_1074, check_1075, check_1076, check_1077, check_1078, check_1079, check_1080, check_1081, check_1082, check_1083, check_1084, check_1085, check_1086, check_1087, check_1088, check_1089, check_1090, check_1091, check_1092, check_1093, check_1094, check_1095, check_1096, check_1097, check_1098, check_1099, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0021

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0021
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0021
open AnalyticBounds.ExpressionCertificate

theorem linked_1050 : Linked cell_1050 pieces := by
  apply Linked.of_piece piece_157 piece_157_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1050, List.cons_subset, List.nil_subset, and_true]
  exact piece_270_mem

theorem linked_1051 : Linked cell_1051 pieces := by
  apply Linked.of_piece piece_157 piece_157_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1051, List.cons_subset, List.nil_subset, and_true]
  exact piece_270_mem

theorem linked_1052 : Linked cell_1052 pieces := by
  apply Linked.of_piece piece_158 piece_158_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1052, List.cons_subset, List.nil_subset, and_true]
  exact piece_270_mem

theorem linked_1053 : Linked cell_1053 pieces := by
  apply Linked.of_piece piece_158 piece_158_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1053, List.cons_subset, List.nil_subset, and_true]
  exact piece_270_mem

theorem linked_1054 : Linked cell_1054 pieces := by
  apply Linked.of_piece piece_158 piece_158_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1054, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_270_mem, piece_271_mem⟩

theorem linked_1055 : Linked cell_1055 pieces := by
  apply Linked.of_piece piece_158 piece_158_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1055, List.cons_subset, List.nil_subset, and_true]
  exact piece_271_mem

theorem linked_1056 : Linked cell_1056 pieces := by
  apply Linked.of_piece piece_158 piece_158_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1056, List.cons_subset, List.nil_subset, and_true]
  exact piece_271_mem

theorem linked_1057 : Linked cell_1057 pieces := by
  apply Linked.of_piece piece_158 piece_158_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1057, List.cons_subset, List.nil_subset, and_true]
  exact piece_271_mem

theorem linked_1058 : Linked cell_1058 pieces := by
  apply Linked.of_piece piece_158 piece_158_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1058, List.cons_subset, List.nil_subset, and_true]
  exact piece_271_mem

theorem linked_1059 : Linked cell_1059 pieces := by
  apply Linked.of_piece piece_158 piece_158_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1059, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_271_mem, piece_272_mem⟩

theorem linked_1060 : Linked cell_1060 pieces := by
  apply Linked.of_piece piece_158 piece_158_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1060, List.cons_subset, List.nil_subset, and_true]
  exact piece_272_mem

theorem linked_1061 : Linked cell_1061 pieces := by
  apply Linked.of_piece piece_158 piece_158_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1061, List.cons_subset, List.nil_subset, and_true]
  exact piece_272_mem

theorem linked_1062 : Linked cell_1062 pieces := by
  apply Linked.of_piece piece_158 piece_158_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1062, List.cons_subset, List.nil_subset, and_true]
  exact piece_272_mem

theorem linked_1063 : Linked cell_1063 pieces := by
  apply Linked.of_piece piece_158 piece_158_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1063, List.cons_subset, List.nil_subset, and_true]
  exact piece_272_mem

theorem linked_1064 : Linked cell_1064 pieces := by
  apply Linked.of_piece piece_158 piece_158_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1064, List.cons_subset, List.nil_subset, and_true]
  exact piece_272_mem

theorem linked_1065 : Linked cell_1065 pieces := by
  apply Linked.of_piece piece_158 piece_158_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1065, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_272_mem, piece_273_mem⟩

theorem linked_1066 : Linked cell_1066 pieces := by
  apply Linked.of_piece piece_158 piece_158_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1066, List.cons_subset, List.nil_subset, and_true]
  exact piece_273_mem

theorem linked_1067 : Linked cell_1067 pieces := by
  apply Linked.of_piece piece_158 piece_158_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1067, List.cons_subset, List.nil_subset, and_true]
  exact piece_273_mem

theorem linked_1068 : Linked cell_1068 pieces := by
  apply Linked.of_piece piece_158 piece_158_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1068, List.cons_subset, List.nil_subset, and_true]
  exact piece_273_mem

theorem linked_1069 : Linked cell_1069 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1069, List.cons_subset, List.nil_subset, and_true]
  exact piece_273_mem

theorem linked_1070 : Linked cell_1070 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1070, List.cons_subset, List.nil_subset, and_true]
  exact piece_273_mem

theorem linked_1071 : Linked cell_1071 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1071, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_273_mem, piece_274_mem⟩

theorem linked_1072 : Linked cell_1072 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1072, List.cons_subset, List.nil_subset, and_true]
  exact piece_274_mem

theorem linked_1073 : Linked cell_1073 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1073, List.cons_subset, List.nil_subset, and_true]
  exact piece_274_mem

theorem linked_1074 : Linked cell_1074 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1074, List.cons_subset, List.nil_subset, and_true]
  exact piece_274_mem

theorem linked_1075 : Linked cell_1075 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1075, List.cons_subset, List.nil_subset, and_true]
  exact piece_274_mem

theorem linked_1076 : Linked cell_1076 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1076, List.cons_subset, List.nil_subset, and_true]
  exact piece_274_mem

theorem linked_1077 : Linked cell_1077 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1077, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_274_mem, piece_275_mem⟩

theorem linked_1078 : Linked cell_1078 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1078, List.cons_subset, List.nil_subset, and_true]
  exact piece_275_mem

theorem linked_1079 : Linked cell_1079 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1079, List.cons_subset, List.nil_subset, and_true]
  exact piece_275_mem

theorem linked_1080 : Linked cell_1080 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1080, List.cons_subset, List.nil_subset, and_true]
  exact piece_275_mem

theorem linked_1081 : Linked cell_1081 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1081, List.cons_subset, List.nil_subset, and_true]
  exact piece_275_mem

theorem linked_1082 : Linked cell_1082 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1082, List.cons_subset, List.nil_subset, and_true]
  exact piece_275_mem

theorem linked_1083 : Linked cell_1083 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1083, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_275_mem, piece_276_mem⟩

theorem linked_1084 : Linked cell_1084 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1084, List.cons_subset, List.nil_subset, and_true]
  exact piece_276_mem

theorem linked_1085 : Linked cell_1085 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1085, List.cons_subset, List.nil_subset, and_true]
  exact piece_276_mem

theorem linked_1086 : Linked cell_1086 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1086, List.cons_subset, List.nil_subset, and_true]
  exact piece_276_mem

theorem linked_1087 : Linked cell_1087 pieces := by
  apply Linked.of_piece piece_159 piece_159_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1087, List.cons_subset, List.nil_subset, and_true]
  exact piece_276_mem

theorem linked_1088 : Linked cell_1088 pieces := by
  apply Linked.of_piece piece_160 piece_160_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1088, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_276_mem, piece_277_mem⟩

theorem linked_1089 : Linked cell_1089 pieces := by
  apply Linked.of_piece piece_160 piece_160_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1089, List.cons_subset, List.nil_subset, and_true]
  exact piece_277_mem

theorem linked_1090 : Linked cell_1090 pieces := by
  apply Linked.of_piece piece_160 piece_160_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1090, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_277_mem, piece_278_mem⟩

theorem linked_1091 : Linked cell_1091 pieces := by
  apply Linked.of_piece piece_160 piece_160_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1091, List.cons_subset, List.nil_subset, and_true]
  exact piece_278_mem

theorem linked_1092 : Linked cell_1092 pieces := by
  apply Linked.of_piece piece_160 piece_160_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1092, List.cons_subset, List.nil_subset, and_true]
  exact piece_278_mem

theorem linked_1093 : Linked cell_1093 pieces := by
  apply Linked.of_piece piece_160 piece_160_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1093, List.cons_subset, List.nil_subset, and_true]
  exact piece_278_mem

theorem linked_1094 : Linked cell_1094 pieces := by
  apply Linked.of_piece piece_160 piece_160_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1094, List.cons_subset, List.nil_subset, and_true]
  exact piece_278_mem

theorem linked_1095 : Linked cell_1095 pieces := by
  apply Linked.of_piece piece_160 piece_160_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1095, List.cons_subset, List.nil_subset, and_true]
  exact piece_278_mem

theorem linked_1096 : Linked cell_1096 pieces := by
  apply Linked.of_piece piece_160 piece_160_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1096, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_278_mem, piece_279_mem⟩

theorem linked_1097 : Linked cell_1097 pieces := by
  apply Linked.of_piece piece_160 piece_160_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1097, List.cons_subset, List.nil_subset, and_true]
  exact piece_279_mem

theorem linked_1098 : Linked cell_1098 pieces := by
  apply Linked.of_piece piece_160 piece_160_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1098, List.cons_subset, List.nil_subset, and_true]
  exact piece_279_mem

theorem linked_1099 : Linked cell_1099 pieces := by
  apply Linked.of_piece piece_160 piece_160_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_1099, List.cons_subset, List.nil_subset, and_true]
  exact piece_279_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0021.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0021.cells,List.forall_mem_cons]
  exact ⟨linked_1050, linked_1051, linked_1052, linked_1053, linked_1054, linked_1055, linked_1056, linked_1057, linked_1058, linked_1059, linked_1060, linked_1061, linked_1062, linked_1063, linked_1064, linked_1065, linked_1066, linked_1067, linked_1068, linked_1069, linked_1070, linked_1071, linked_1072, linked_1073, linked_1074, linked_1075, linked_1076, linked_1077, linked_1078, linked_1079, linked_1080, linked_1081, linked_1082, linked_1083, linked_1084, linked_1085, linked_1086, linked_1087, linked_1088, linked_1089, linked_1090, linked_1091, linked_1092, linked_1093, linked_1094, linked_1095, linked_1096, linked_1097, linked_1098, linked_1099, by simp⟩

theorem covered : covers (215500000000000003 / 8000000000000000000 : ℚ) (28312500000000001 / 1000000000000000000 : ℚ)
    (SourceCertificates.Chunk0021.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0021
