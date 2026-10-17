import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0042
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(59468749999999997 / 1000000000000000000 : ℚ), (59499999999999997 / 1000000000000000000 : ℚ)⟩
  branch := .small
  r := (2473202336951 / 2000000000000 : ℚ)
  w := (82404656968201 / 100000000000000 : ℚ)
  center := (59484374999999997 / 1000000000000000000 : ℚ)
  supportValue := (3108101710573293 / 1000000000000000 : ℚ)
  supportSlope := (9125559267801009 / 1000000000000000 : ℚ)
  oldCenter := (184883487689883216472569868280121 / 1000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_230
  oldLo := (47 / 250 : ℚ)
  oldHi := (377 / 2000 : ℚ)
  oldPieces := [piece_509]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_2100 : Cell := { cellDefaults with
  r := (309652715437 / 250000000000 : ℚ)
  w := (41174186495223 / 50000000000000 : ℚ)
  newCoefficients := coefficients_227
  oldLo := (369 / 2000 : ℚ)
  oldHi := (37 / 200 : ℚ)
  oldPieces := [piece_501]
}

def cell_2101 : Cell := { cellDefaults with
  domain := ⟨(59499999999999997 / 1000000000000000000 : ℚ), (952499999999999953 / 16000000000000000000 : ℚ)⟩
  center := (380899999999999981 / 6400000000000000000 : ℚ)
  supportValue := (15532671044508153 / 5000000000000000 : ℚ)
  supportSlope := (2280065480213973 / 250000000000000 : ℚ)
  oldCenter := (5916394400853155182579250154345093 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_228
  oldLo := (369 / 2000 : ℚ)
  oldHi := (37 / 200 : ℚ)
  oldPieces := [piece_501]
}

def cell_2102 : Cell := { cellDefaults with
  domain := ⟨(952499999999999953 / 16000000000000000000 : ℚ), (476499999999999977 / 8000000000000000000 : ℚ)⟩
  center := (1905499999999999907 / 32000000000000000000 : ℚ)
  supportValue := (15534096415650407 / 5000000000000000 : ℚ)
  supportSlope := (9116063397243561 / 1000000000000000 : ℚ)
  oldCenter := (29600220720021849093829033344512149 / 160000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_228
  oldLo := (369 / 2000 : ℚ)
  oldHi := (371 / 2000 : ℚ)
  oldPieces := [piece_501, piece_502]
}

def cell_2103 : Cell := { cellDefaults with
  domain := ⟨(476499999999999977 / 8000000000000000000 : ℚ), (190699999999999991 / 3200000000000000000 : ℚ)⟩
  center := (1906499999999999909 / 32000000000000000000 : ℚ)
  supportValue := (621420793722501 / 200000000000000 : ℚ)
  supportSlope := (1139027395058887 / 125000000000000 : ℚ)
  oldCenter := (1184738743231948099950707771252409 / 6400000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_228
  oldLo := (37 / 200 : ℚ)
  oldHi := (371 / 2000 : ℚ)
  oldPieces := [piece_502]
}

def cell_2104 : Cell := { cellDefaults with
  domain := ⟨(190699999999999991 / 3200000000000000000 : ℚ), (238499999999999989 / 4000000000000000000 : ℚ)⟩
  center := (1907499999999999911 / 32000000000000000000 : ℚ)
  supportValue := (15536943983801703 / 5000000000000000 : ℚ)
  supportSlope := (284899721495257 / 31250000000000 : ℚ)
  oldCenter := (29636720649101747089711985441648433 / 160000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_228
  oldLo := (37 / 200 : ℚ)
  oldHi := (371 / 2000 : ℚ)
  oldPieces := [piece_502]
}

def cell_2105 : Cell := { cellDefaults with
  domain := ⟨(238499999999999989 / 4000000000000000000 : ℚ), (954499999999999957 / 16000000000000000000 : ℚ)⟩
  center := (1908499999999999913 / 32000000000000000000 : ℚ)
  supportValue := (485574026248183 / 156250000000000 : ℚ)
  supportSlope := (4560688151414629 / 500000000000000 : ℚ)
  oldCenter := (926718029094657213255059716408079 / 5000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_228
  oldLo := (37 / 200 : ℚ)
  oldHi := (371 / 2000 : ℚ)
  oldPieces := [piece_502]
}

def cell_2106 : Cell := { cellDefaults with
  domain := ⟨(954499999999999957 / 16000000000000000000 : ℚ), (477499999999999979 / 8000000000000000000 : ℚ)⟩
  center := (381899999999999983 / 6400000000000000000 : ℚ)
  supportValue := (31079588827122677 / 10000000000000000 : ℚ)
  supportSlope := (1140468277124993 / 125000000000000 : ℚ)
  oldCenter := (11869294973078149817946989938914491 / 64000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_228
  oldLo := (37 / 200 : ℚ)
  oldHi := (93 / 500 : ℚ)
  oldPieces := [piece_502, piece_503]
}

def cell_2107 : Cell := { cellDefaults with
  domain := ⟨(477499999999999979 / 8000000000000000000 : ℚ), (955499999999999959 / 16000000000000000000 : ℚ)⟩
  center := (1910499999999999917 / 32000000000000000000 : ℚ)
  supportValue := (3885304754644267 / 1250000000000000 : ℚ)
  supportSlope := (9113407267250277 / 1000000000000000 : ℚ)
  oldCenter := (7422874733747871781019705364525839 / 40000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_228
  oldLo := (371 / 2000 : ℚ)
  oldHi := (93 / 500 : ℚ)
  oldPieces := [piece_503]
}

def cell_2108 : Cell := { cellDefaults with
  domain := ⟨(955499999999999959 / 16000000000000000000 : ℚ), (23899999999999999 / 400000000000000000 : ℚ)⟩
  center := (1911499999999999919 / 32000000000000000000 : ℚ)
  supportValue := (15542643340320519 / 5000000000000000 : ℚ)
  supportSlope := (1823583957883553 / 200000000000000 : ℚ)
  oldCenter := (29709762745022670809545889434037961 / 160000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_228
  oldLo := (371 / 2000 : ℚ)
  oldHi := (93 / 500 : ℚ)
  oldPieces := [piece_503]
}

def cell_2109 : Cell := { cellDefaults with
  domain := ⟨(23899999999999999 / 400000000000000000 : ℚ), (1494413407821229 / 25000000000000000 : ℚ)⟩
  center := (47810614525139663 / 800000000000000000 : ℚ)
  supportValue := (31087927956258943 / 10000000000000000 : ℚ)
  supportSlope := (1140262935286751 / 125000000000000 : ℚ)
  oldCenter := (1486332939902009218139102067756209 / 8000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_228
  oldLo := (371 / 2000 : ℚ)
  oldHi := (93 / 500 : ℚ)
  oldPieces := [piece_503]
}

def cell_2110 : Cell := { cellDefaults with
  domain := ⟨(1494413407821229 / 25000000000000000 : ℚ), (956818435754189911 / 16000000000000000000 : ℚ)⟩
  center := (1913243016759776471 / 32000000000000000000 : ℚ)
  supportValue := (7772565377394819 / 2500000000000000 : ℚ)
  supportSlope := (2281452366828033 / 250000000000000 : ℚ)
  oldCenter := (14870806430609454019387922753503749 / 80000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_229
  oldLo := (371 / 2000 : ℚ)
  oldHi := (93 / 500 : ℚ)
  oldPieces := [piece_503]
}

def cell_2111 : Cell := { cellDefaults with
  domain := ⟨(956818435754189911 / 16000000000000000000 : ℚ), (478606145251396631 / 8000000000000000000 : ℚ)⟩
  center := (1914030726256983173 / 32000000000000000000 : ℚ)
  supportValue := (7773127088027857 / 2500000000000000 : ℚ)
  supportSlope := (91256152555293 / 10000000000000 : ℚ)
  oldCenter := (14878004085585787905147831004250261 / 80000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_229
  oldLo := (371 / 2000 : ℚ)
  oldHi := (373 / 2000 : ℚ)
  oldPieces := [piece_503, piece_504]
}

def cell_2112 : Cell := { cellDefaults with
  domain := ⟨(478606145251396631 / 8000000000000000000 : ℚ), (239499999999999991 / 4000000000000000000 : ℚ)⟩
  center := (957606145251396613 / 16000000000000000000 : ℚ)
  supportValue := (7773961792473073 / 2500000000000000 : ℚ)
  supportSlope := (9117721689177657 / 1000000000000000 : ℚ)
  oldCenter := (7444393585421777116052724445901749 / 40000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_229
  oldLo := (93 / 500 : ℚ)
  oldHi := (373 / 2000 : ℚ)
  oldPieces := [piece_504]
}

def cell_2113 : Cell := { cellDefaults with
  domain := ⟨(239499999999999991 / 4000000000000000000 : ℚ), (191699999999999993 / 3200000000000000000 : ℚ)⟩
  center := (1916499999999999929 / 32000000000000000000 : ℚ)
  supportValue := (1554976956998817 / 500000000000000 : ℚ)
  supportSlope := (456171839662999 / 50000000000000 : ℚ)
  oldCenter := (2980113338088232670096636053083993 / 16000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_229
  oldLo := (93 / 500 : ℚ)
  oldHi := (373 / 2000 : ℚ)
  oldPieces := [piece_504]
}

def cell_2114 : Cell := { cellDefaults with
  domain := ⟨(191699999999999993 / 3200000000000000000 : ℚ), (479499999999999983 / 8000000000000000000 : ℚ)⟩
  center := (1917499999999999931 / 32000000000000000000 : ℚ)
  supportValue := (3110239090847757 / 1000000000000000 : ℚ)
  supportSlope := (365115612328281 / 40000000000000 : ℚ)
  oldCenter := (5963883456700573832893502731504767 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_229
  oldLo := (93 / 500 : ℚ)
  oldHi := (373 / 2000 : ℚ)
  oldPieces := [piece_504]
}

def cell_2115 : Cell := { cellDefaults with
  domain := ⟨(479499999999999983 / 8000000000000000000 : ℚ), (959499999999999967 / 16000000000000000000 : ℚ)⟩
  center := (1918499999999999933 / 32000000000000000000 : ℚ)
  supportValue := (3110524407071429 / 1000000000000000 : ℚ)
  supportSlope := (4563035563521103 / 500000000000000 : ℚ)
  oldCenter := (5967541074966536328094864726214257 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_229
  oldLo := (93 / 500 : ℚ)
  oldHi := (1869832402234637 / 10000000000000000 : ℚ)
  oldPieces := [piece_504, piece_505]
}

def cell_2116 : Cell := { cellDefaults with
  domain := ⟨(959499999999999967 / 16000000000000000000 : ℚ), (29999999999999999 / 500000000000000000 : ℚ)⟩
  center := (383899999999999987 / 6400000000000000000 : ℚ)
  supportValue := (15554047019914947 / 5000000000000000 : ℚ)
  supportSlope := (9119996597348727 / 1000000000000000 : ℚ)
  oldCenter := (5971198650945347951097388741105689 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_229
  oldLo := (373 / 2000 : ℚ)
  oldHi := (1869832402234637 / 10000000000000000 : ℚ)
  oldPieces := [piece_505]
}

def cell_2117 : Cell := { cellDefaults with
  domain := ⟨(29999999999999999 / 500000000000000000 : ℚ), (30015624999999999 / 500000000000000000 : ℚ)⟩
  r := (2469200605997 / 2000000000000 : ℚ)
  w := (82460552615061 / 100000000000000 : ℚ)
  center := (30007812499999999 / 500000000000000000 : ℚ)
  supportValue := (3886544364070651 / 1250000000000000 : ℚ)
  supportSlope := (9114355961116871 / 1000000000000000 : ℚ)
  oldCenter := (116626694549963828074393135929349 / 625000000000000000000000000000000 : ℚ)
  oldLo := (373 / 2000 : ℚ)
  oldHi := (1869832402234637 / 10000000000000000 : ℚ)
  oldPieces := [piece_505]
}

def cell_2118 : Cell := { cellDefaults with
  domain := ⟨(30015624999999999 / 500000000000000000 : ℚ), (30031249999999999 / 500000000000000000 : ℚ)⟩
  r := (2469200605997 / 2000000000000 : ℚ)
  w := (82460552615061 / 100000000000000 : ℚ)
  center := (30023437499999999 / 500000000000000000 : ℚ)
  supportValue := (3886900479903 / 1250000000000 : ℚ)
  supportSlope := (284961978404219 / 31250000000000 : ℚ)
  oldCenter := (116698113627087722675599520097 / 625000000000000000000000000000 : ℚ)
  oldLo := (373 / 2000 : ℚ)
  oldHi := (1869832402234637 / 10000000000000000 : ℚ)
  oldPieces := [piece_505]
}

def cell_2119 : Cell := { cellDefaults with
  domain := ⟨(30031249999999999 / 500000000000000000 : ℚ), (30046874999999999 / 500000000000000000 : ℚ)⟩
  r := (2469200605997 / 2000000000000 : ℚ)
  w := (82460552615061 / 100000000000000 : ℚ)
  center := (30039062499999999 / 500000000000000000 : ℚ)
  supportValue := (15549027075709787 / 5000000000000000 : ℚ)
  supportSlope := (9123223405765657 / 1000000000000000 : ℚ)
  oldCenter := (467078196141438508005660424290213 / 2500000000000000000000000000000000 : ℚ)
  oldLo := (373 / 2000 : ℚ)
  oldHi := (1869832402234637 / 10000000000000000 : ℚ)
  oldPieces := [piece_505]
}

def cell_2120 : Cell := { cellDefaults with
  domain := ⟨(30046874999999999 / 500000000000000000 : ℚ), (30062499999999999 / 500000000000000000 : ℚ)⟩
  r := (2469200605997 / 2000000000000 : ℚ)
  w := (82460552615061 / 100000000000000 : ℚ)
  center := (30054687499999999 / 500000000000000000 : ℚ)
  supportValue := (3110090585314013 / 1000000000000000 : ℚ)
  supportSlope := (45636329770673 / 5000000000000 : ℚ)
  oldCenter := (93472800638304746975846914685987 / 500000000000000000000000000000000 : ℚ)
  oldLo := (373 / 2000 : ℚ)
  oldHi := (3 / 16 : ℚ)
  oldPieces := [piece_505, piece_506, piece_507]
}

def cell_2121 : Cell := { cellDefaults with
  domain := ⟨(30062499999999999 / 500000000000000000 : ℚ), (30078124999999999 / 500000000000000000 : ℚ)⟩
  r := (2469200605997 / 2000000000000 : ℚ)
  w := (82460552615061 / 100000000000000 : ℚ)
  center := (30070312499999999 / 500000000000000000 : ℚ)
  supportValue := (31103756226230943 / 10000000000000000 : ℚ)
  supportSlope := (2278878206027457 / 250000000000000 : ℚ)
  oldCenter := (935299669646585122075931273769057 / 5000000000000000000000000000000000 : ℚ)
  oldLo := (187 / 1000 : ℚ)
  oldHi := (3 / 16 : ℚ)
  oldPieces := [piece_507]
}

def cell_2122 : Cell := { cellDefaults with
  domain := ⟨(30078124999999999 / 500000000000000000 : ℚ), (30093749999999999 / 500000000000000000 : ℚ)⟩
  r := (2469200605997 / 2000000000000 : ℚ)
  w := (82460552615061 / 100000000000000 : ℚ)
  center := (30085937499999999 / 500000000000000000 : ℚ)
  supportValue := (7776651376221041 / 2500000000000000 : ℚ)
  supportSlope := (9119879162909683 / 1000000000000000 : ℚ)
  oldCenter := (233967847264275217934286123778959 / 1250000000000000000000000000000000 : ℚ)
  oldLo := (187 / 1000 : ℚ)
  oldHi := (3 / 16 : ℚ)
  oldPieces := [piece_507]
}

def cell_2123 : Cell := { cellDefaults with
  domain := ⟨(30093749999999999 / 500000000000000000 : ℚ), (30109374999999999 / 500000000000000000 : ℚ)⟩
  r := (2469200605997 / 2000000000000 : ℚ)
  w := (82460552615061 / 100000000000000 : ℚ)
  center := (30101562499999999 / 500000000000000000 : ℚ)
  supportValue := (15554728074989421 / 5000000000000000 : ℚ)
  supportSlope := (9124258058903933 / 1000000000000000 : ℚ)
  oldCenter := (468221619319798727515584425010579 / 2500000000000000000000000000000000 : ℚ)
  oldLo := (187 / 1000 : ℚ)
  oldHi := (3 / 16 : ℚ)
  oldPieces := [piece_507]
}

def cell_2124 : Cell := { cellDefaults with
  domain := ⟨(30109374999999999 / 500000000000000000 : ℚ), (30124999999999999 / 500000000000000000 : ℚ)⟩
  r := (2469200605997 / 2000000000000 : ℚ)
  w := (82460552615061 / 100000000000000 : ℚ)
  center := (30117187499999999 / 500000000000000000 : ℚ)
  supportValue := (1555615408272161 / 500000000000000 : ℚ)
  supportSlope := (4564324769134487 / 500000000000000 : ℚ)
  oldCenter := (46850760928821722311572091727839 / 250000000000000000000000000000000 : ℚ)
  oldLo := (187 / 1000 : ℚ)
  oldHi := (3 / 16 : ℚ)
  oldPieces := [piece_507]
}

def cell_2125 : Cell := { cellDefaults with
  domain := ⟨(30124999999999999 / 500000000000000000 : ℚ), (30140624999999999 / 500000000000000000 : ℚ)⟩
  r := (2469200605997 / 2000000000000 : ℚ)
  w := (82460552615061 / 100000000000000 : ℚ)
  center := (30132812499999999 / 500000000000000000 : ℚ)
  supportValue := (777879019234151 / 250000000000000 : ℚ)
  supportSlope := (2280577225064917 / 250000000000000 : ℚ)
  oldCenter := (23439682634266564901808480765849 / 125000000000000000000000000000000 : ℚ)
  oldLo := (187 / 1000 : ℚ)
  oldHi := (47 / 250 : ℚ)
  oldPieces := [piece_507, piece_508]
}

def cell_2126 : Cell := { cellDefaults with
  domain := ⟨(30140624999999999 / 500000000000000000 : ℚ), (30156249999999999 / 500000000000000000 : ℚ)⟩
  r := (2469200605997 / 2000000000000 : ℚ)
  w := (82460552615061 / 100000000000000 : ℚ)
  center := (30148437499999999 / 500000000000000000 : ℚ)
  supportValue := (31118010384788057 / 10000000000000000 : ℚ)
  supportSlope := (9120925401134627 / 1000000000000000 : ℚ)
  oldCenter := (938159391210133656092927115211943 / 5000000000000000000000000000000000 : ℚ)
  oldLo := (3 / 16 : ℚ)
  oldHi := (47 / 250 : ℚ)
  oldPieces := [piece_508]
}

def cell_2127 : Cell := { cellDefaults with
  domain := ⟨(30156249999999999 / 500000000000000000 : ℚ), (30171874999999999 / 500000000000000000 : ℚ)⟩
  r := (2469200605997 / 2000000000000 : ℚ)
  w := (82460552615061 / 100000000000000 : ℚ)
  center := (30164062499999999 / 500000000000000000 : ℚ)
  supportValue := (3112086134699723 / 1000000000000000 : ℚ)
  supportSlope := (142581895388183 / 15625000000000 : ℚ)
  oldCenter := (93873160672465860192601365300277 / 500000000000000000000000000000000 : ℚ)
  oldLo := (3 / 16 : ℚ)
  oldHi := (47 / 250 : ℚ)
  oldPieces := [piece_508]
}

def cell_2128 : Cell := { cellDefaults with
  domain := ⟨(30171874999999999 / 500000000000000000 : ℚ), (30187499999999999 / 500000000000000000 : ℚ)⟩
  r := (2469200605997 / 2000000000000 : ℚ)
  w := (82460552615061 / 100000000000000 : ℚ)
  center := (30179687499999999 / 500000000000000000 : ℚ)
  supportValue := (3112371365986029 / 1000000000000000 : ℚ)
  supportSlope := (2282392398790023 / 250000000000000 : ℚ)
  oldCenter := (93930395209406481473566134013971 / 500000000000000000000000000000000 : ℚ)
  oldLo := (3 / 16 : ℚ)
  oldHi := (47 / 250 : ℚ)
  oldPieces := [piece_508]
}

def cell_2129 : Cell := { cellDefaults with
  domain := ⟨(30187499999999999 / 500000000000000000 : ℚ), (30203124999999999 / 500000000000000000 : ℚ)⟩
  r := (2469200605997 / 2000000000000 : ℚ)
  w := (82460552615061 / 100000000000000 : ℚ)
  center := (30195312499999999 / 500000000000000000 : ℚ)
  supportValue := (3112656732725217 / 1000000000000000 : ℚ)
  supportSlope := (9129277526398027 / 1000000000000000 : ℚ)
  oldCenter := (93987642749866900832655767274783 / 500000000000000000000000000000000 : ℚ)
  oldLo := (3 / 16 : ℚ)
  oldPieces := [piece_508, piece_509]
}

def cell_2130 : Cell := { cellDefaults with
  domain := ⟨(30203124999999999 / 500000000000000000 : ℚ), (30218749999999999 / 500000000000000000 : ℚ)⟩
  r := (2469200605997 / 2000000000000 : ℚ)
  w := (82460552615061 / 100000000000000 : ℚ)
  center := (30210937499999999 / 500000000000000000 : ℚ)
  supportValue := (15564709177743379 / 5000000000000000 : ℚ)
  supportSlope := (2280479038134331 / 250000000000000 : ℚ)
  oldCenter := (470224456174481598443103322256621 / 2500000000000000000000000000000000 : ℚ)
  oldPieces := [piece_509]
}

def cell_2131 : Cell := { cellDefaults with
  domain := ⟨(30218749999999999 / 500000000000000000 : ℚ), (30234374999999999 / 500000000000000000 : ℚ)⟩
  r := (2469200605997 / 2000000000000 : ℚ)
  w := (82460552615061 / 100000000000000 : ℚ)
  center := (30226562499999999 / 500000000000000000 : ℚ)
  supportValue := (778306740432939 / 250000000000000 : ℚ)
  supportSlope := (912616808278699 / 100000000000000 : ℚ)
  oldCenter := (23525537333867506963880759567061 / 125000000000000000000000000000000 : ℚ)
  oldPieces := [piece_509]
}

def cell_2132 : Cell := { cellDefaults with
  domain := ⟨(30234374999999999 / 500000000000000000 : ℚ), (30249999999999999 / 500000000000000000 : ℚ)⟩
  r := (2469200605997 / 2000000000000 : ℚ)
  w := (82460552615061 / 100000000000000 : ℚ)
  center := (30242187499999999 / 500000000000000000 : ℚ)
  supportValue := (7783780552444871 / 2500000000000000 : ℚ)
  supportSlope := (1783287539181 / 195312500000 : ℚ)
  oldCenter := (235398550925891364411531947555129 / 1250000000000000000000000000000000 : ℚ)
  oldPieces := [piece_509]
}

def cell_2133 : Cell := { cellDefaults with
  domain := ⟨(30249999999999999 / 500000000000000000 : ℚ), (968499999999999969 / 16000000000000000000 : ℚ)⟩
  r := (3081520689991 / 2500000000000 : ℚ)
  w := (20629030982533 / 25000000000000 : ℚ)
  center := (1936499999999999937 / 32000000000000000000 : ℚ)
  supportValue := (15559666131207277 / 5000000000000000 : ℚ)
  supportSlope := (9124546969360363 / 1000000000000000 : ℚ)
  oldCenter := (30131293463082890930241033733941549 / 160000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_231
  oldPieces := [piece_509]
}

def cell_2134 : Cell := { cellDefaults with
  domain := ⟨(968499999999999969 / 16000000000000000000 : ℚ), (96899999999999997 / 1600000000000000000 : ℚ)⟩
  r := (3081520689991 / 2500000000000 : ℚ)
  w := (20629030982533 / 25000000000000 : ℚ)
  center := (1937499999999999939 / 32000000000000000000 : ℚ)
  supportValue := (3112218435733849 / 1000000000000000 : ℚ)
  supportSlope := (4564434547958731 / 500000000000000 : ℚ)
  oldCenter := (6029923219234332247654675420235211 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_231
  oldPieces := [piece_509]
}

def cell_2135 : Cell := { cellDefaults with
  domain := ⟨(96899999999999997 / 1600000000000000000 : ℚ), (969499999999999971 / 16000000000000000000 : ℚ)⟩
  r := (3081520689991 / 2500000000000 : ℚ)
  w := (20629030982533 / 25000000000000 : ℚ)
  center := (1938499999999999941 / 32000000000000000000 : ℚ)
  supportValue := (3112503562080691 / 1000000000000000 : ℚ)
  supportSlope := (1823626775137651 / 200000000000000 : ℚ)
  oldCenter := (6033588155093419319862289837239231 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_231
  oldHi := (189 / 1000 : ℚ)
  oldPieces := [piece_509, piece_510]
}

def cell_2136 : Cell := { cellDefaults with
  domain := ⟨(969499999999999971 / 16000000000000000000 : ℚ), (242499999999999993 / 4000000000000000000 : ℚ)⟩
  r := (3081520689991 / 2500000000000 : ℚ)
  w := (20629030982533 / 25000000000000 : ℚ)
  center := (1939499999999999943 / 32000000000000000000 : ℚ)
  supportValue := (1245115414616947 / 400000000000000 : ℚ)
  supportSlope := (9121303545583697 / 1000000000000000 : ℚ)
  oldCenter := (2414901346649568635528421366834021 / 12800000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_231
  oldLo := (377 / 2000 : ℚ)
  oldHi := (189 / 1000 : ℚ)
  oldPieces := [piece_510]
}

def cell_2137 : Cell := { cellDefaults with
  domain := ⟨(242499999999999993 / 4000000000000000000 : ℚ), (970499999999999973 / 16000000000000000000 : ℚ)⟩
  r := (3081520689991 / 2500000000000 : ℚ)
  w := (20629030982533 / 25000000000000 : ℚ)
  center := (388099999999999989 / 6400000000000000000 : ℚ)
  supportValue := (6226147286951047 / 2000000000000000 : ℚ)
  supportSlope := (2281387167450073 / 250000000000000 : ℚ)
  oldCenter := (2416367762065701272212379843538483 / 12800000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_231
  oldLo := (377 / 2000 : ℚ)
  oldHi := (189 / 1000 : ℚ)
  oldPieces := [piece_510]
}

def cell_2138 : Cell := { cellDefaults with
  domain := ⟨(970499999999999973 / 16000000000000000000 : ℚ), (485499999999999987 / 8000000000000000000 : ℚ)⟩
  r := (3081520689991 / 2500000000000 : ℚ)
  w := (20629030982533 / 25000000000000 : ℚ)
  center := (1941499999999999947 / 32000000000000000000 : ℚ)
  supportValue := (1945849302035991 / 625000000000000 : ℚ)
  supportSlope := (4564902942263407 / 500000000000000 : ℚ)
  oldCenter := (3777866419902876423369986992092477 / 20000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_231
  oldLo := (377 / 2000 : ℚ)
  oldHi := (189 / 1000 : ℚ)
  oldPieces := [piece_510]
}

def cell_2139 : Cell := { cellDefaults with
  domain := ⟨(485499999999999987 / 8000000000000000000 : ℚ), (38859999999999999 / 640000000000000000 : ℚ)⟩
  r := (3081520689991 / 2500000000000 : ℚ)
  w := (20629030982533 / 25000000000000 : ℚ)
  center := (1942499999999999949 / 32000000000000000000 : ℚ)
  supportValue := (6227288443123971 / 2000000000000000 : ℚ)
  supportSlope := (1824997084514731 / 200000000000000 : ℚ)
  oldCenter := (12096507800768313349908289400677479 / 64000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_231
  oldLo := (377 / 2000 : ℚ)
  oldHi := (379 / 2000 : ℚ)
  oldPieces := [piece_510, piece_511]
}

def cell_2140 : Cell := { cellDefaults with
  domain := ⟨(38859999999999999 / 640000000000000000 : ℚ), (121499999999999997 / 2000000000000000000 : ℚ)⟩
  r := (3081520689991 / 2500000000000 : ℚ)
  w := (20629030982533 / 25000000000000 : ℚ)
  center := (1943499999999999951 / 32000000000000000000 : ℚ)
  supportValue := (3113929228585077 / 1000000000000000 : ℚ)
  supportSlope := (1824462546812807 / 200000000000000 : ℚ)
  oldCenter := (6051921455755096996917467799331227 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_231
  oldLo := (189 / 1000 : ℚ)
  oldHi := (379 / 2000 : ℚ)
  oldPieces := [piece_511]
}

def cell_2141 : Cell := { cellDefaults with
  domain := ⟨(121499999999999997 / 2000000000000000000 : ℚ), (972499999999999977 / 16000000000000000000 : ℚ)⟩
  r := (3081520689991 / 2500000000000 : ℚ)
  w := (20629030982533 / 25000000000000 : ℚ)
  center := (1944499999999999953 / 32000000000000000000 : ℚ)
  supportValue := (31142143660294987 / 10000000000000000 : ℚ)
  supportSlope := (912649215231907 / 100000000000000 : ℚ)
  oldCenter := (60555898347443600757819247966135611 / 320000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_231
  oldLo := (189 / 1000 : ℚ)
  oldHi := (379 / 2000 : ℚ)
  oldPieces := [piece_511]
}

def cell_2142 : Cell := { cellDefaults with
  domain := ⟨(972499999999999977 / 16000000000000000000 : ℚ), (486499999999999989 / 8000000000000000000 : ℚ)⟩
  r := (3081520689991 / 2500000000000 : ℚ)
  w := (20629030982533 / 25000000000000 : ℚ)
  center := (389099999999999991 / 6400000000000000000 : ℚ)
  supportValue := (6228999268532693 / 2000000000000000 : ℚ)
  supportSlope := (4565341729005459 / 500000000000000 : ℚ)
  oldCenter := (2423703615386070790239006583205763 / 12800000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_231
  oldLo := (189 / 1000 : ℚ)
  oldHi := (379 / 2000 : ℚ)
  oldPieces := [piece_511]
}

def cell_2143 : Cell := { cellDefaults with
  domain := ⟨(486499999999999989 / 8000000000000000000 : ℚ), (973499999999999979 / 16000000000000000000 : ℚ)⟩
  r := (3081520689991 / 2500000000000 : ℚ)
  w := (20629030982533 / 25000000000000 : ℚ)
  center := (1946499999999999957 / 32000000000000000000 : ℚ)
  supportValue := (31147850336674883 / 10000000000000000 : ℚ)
  supportSlope := (57072469223307 / 6250000000000 : ℚ)
  oldCenter := (60629290680337658420142435522980031 / 320000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_231
  oldLo := (189 / 1000 : ℚ)
  oldHi := (19 / 100 : ℚ)
  oldPieces := [piece_511, piece_512]
}

def cell_2144 : Cell := { cellDefaults with
  domain := ⟨(973499999999999979 / 16000000000000000000 : ℚ), (48699999999999999 / 800000000000000000 : ℚ)⟩
  r := (3081520689991 / 2500000000000 : ℚ)
  w := (20629030982533 / 25000000000000 : ℚ)
  center := (1947499999999999959 / 32000000000000000000 : ℚ)
  supportValue := (7787675536785723 / 2500000000000000 : ℚ)
  supportSlope := (4561631709648841 / 500000000000000 : ℚ)
  oldCenter := (15166498107890195223205302991785357 / 80000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_231
  oldLo := (379 / 2000 : ℚ)
  oldHi := (19 / 100 : ℚ)
  oldPieces := [piece_512]
}

def cell_2145 : Cell := { cellDefaults with
  domain := ⟨(48699999999999999 / 800000000000000000 : ℚ), (974499999999999981 / 16000000000000000000 : ℚ)⟩
  r := (3081520689991 / 2500000000000 : ℚ)
  w := (20629030982533 / 25000000000000 : ℚ)
  center := (1948499999999999961 / 32000000000000000000 : ℚ)
  supportValue := (31153553808261303 / 10000000000000000 : ℚ)
  supportSlope := (4563688065687179 / 500000000000000 : ℚ)
  oldCenter := (60702699595397147680511401477809183 / 320000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_231
  oldLo := (379 / 2000 : ℚ)
  oldHi := (19 / 100 : ℚ)
  oldPieces := [piece_512]
}

def cell_2146 : Cell := { cellDefaults with
  domain := ⟨(974499999999999981 / 16000000000000000000 : ℚ), (487499999999999991 / 8000000000000000000 : ℚ)⟩
  r := (3081520689991 / 2500000000000 : ℚ)
  w := (20629030982533 / 25000000000000 : ℚ)
  center := (1949499999999999963 / 32000000000000000000 : ℚ)
  supportValue := (15578203378213147 / 5000000000000000 : ℚ)
  supportSlope := (4565750262912607 / 500000000000000 : ℚ)
  oldCenter := (30369707485826529500106475006113561 / 160000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_231
  oldLo := (379 / 2000 : ℚ)
  oldHi := (19 / 100 : ℚ)
  oldPieces := [piece_512]
}

def cell_2147 : Cell := { cellDefaults with
  domain := ⟨(487499999999999991 / 8000000000000000000 : ℚ), (975499999999999983 / 16000000000000000000 : ℚ)⟩
  r := (3081520689991 / 2500000000000 : ℚ)
  w := (20629030982533 / 25000000000000 : ℚ)
  center := (390099999999999993 / 6400000000000000000 : ℚ)
  supportValue := (3115926099529243 / 1000000000000000 : ℚ)
  supportSlope := (9135636627348713 / 1000000000000000 : ℚ)
  oldCenter := (1215522771426357672488517303295299 / 6400000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_231
  oldLo := (379 / 2000 : ℚ)
  oldHi := (19 / 100 : ℚ)
  oldPieces := [piece_512]
}

def cell_2148 : Cell := { cellDefaults with
  domain := ⟨(975499999999999983 / 16000000000000000000 : ℚ), (60999999999999999 / 1000000000000000000 : ℚ)⟩
  r := (3081520689991 / 2500000000000 : ℚ)
  w := (20629030982533 / 25000000000000 : ℚ)
  center := (1951499999999999967 / 32000000000000000000 : ℚ)
  supportValue := (973816088009003 / 312500000000000 : ℚ)
  supportSlope := (4563236808223783 / 500000000000000 : ℚ)
  oldCenter := (1900402095749569322364069095702901 / 10000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_231
  oldLo := (379 / 2000 : ℚ)
  oldHi := (381 / 2000 : ℚ)
  oldPieces := [piece_512, piece_513]
}

def cell_2149 : Cell := { cellDefaults with
  domain := ⟨(60999999999999999 / 1000000000000000000 : ℚ), (61031249999999999 / 1000000000000000000 : ℚ)⟩
  r := (384570304013 / 312500000000 : ℚ)
  w := (10321421740271 / 12500000000000 : ℚ)
  center := (61015624999999999 / 1000000000000000000 : ℚ)
  supportValue := (15573136824951759 / 5000000000000000 : ℚ)
  supportSlope := (1824048049013527 / 200000000000000 : ℚ)
  oldCenter := (950204676584947154661238175048241 / 5000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_232
  oldLo := (379 / 2000 : ℚ)
  oldHi := (381 / 2000 : ℚ)
  oldPieces := [piece_512, piece_513]
}

theorem check_2100 : cell_2100.check = true := by
  decide +kernel

theorem check_2101 : cell_2101.check = true := by
  decide +kernel

theorem check_2102 : cell_2102.check = true := by
  decide +kernel

theorem check_2103 : cell_2103.check = true := by
  decide +kernel

theorem check_2104 : cell_2104.check = true := by
  decide +kernel

theorem check_2105 : cell_2105.check = true := by
  decide +kernel

theorem check_2106 : cell_2106.check = true := by
  decide +kernel

theorem check_2107 : cell_2107.check = true := by
  decide +kernel

theorem check_2108 : cell_2108.check = true := by
  decide +kernel

theorem check_2109 : cell_2109.check = true := by
  decide +kernel

theorem check_2110 : cell_2110.check = true := by
  decide +kernel

theorem check_2111 : cell_2111.check = true := by
  decide +kernel

theorem check_2112 : cell_2112.check = true := by
  decide +kernel

theorem check_2113 : cell_2113.check = true := by
  decide +kernel

theorem check_2114 : cell_2114.check = true := by
  decide +kernel

theorem check_2115 : cell_2115.check = true := by
  decide +kernel

theorem check_2116 : cell_2116.check = true := by
  decide +kernel

theorem check_2117 : cell_2117.check = true := by
  decide +kernel

theorem check_2118 : cell_2118.check = true := by
  decide +kernel

theorem check_2119 : cell_2119.check = true := by
  decide +kernel

theorem check_2120 : cell_2120.check = true := by
  decide +kernel

theorem check_2121 : cell_2121.check = true := by
  decide +kernel

theorem check_2122 : cell_2122.check = true := by
  decide +kernel

theorem check_2123 : cell_2123.check = true := by
  decide +kernel

theorem check_2124 : cell_2124.check = true := by
  decide +kernel

theorem check_2125 : cell_2125.check = true := by
  decide +kernel

theorem check_2126 : cell_2126.check = true := by
  decide +kernel

theorem check_2127 : cell_2127.check = true := by
  decide +kernel

theorem check_2128 : cell_2128.check = true := by
  decide +kernel

theorem check_2129 : cell_2129.check = true := by
  decide +kernel

theorem check_2130 : cell_2130.check = true := by
  decide +kernel

theorem check_2131 : cell_2131.check = true := by
  decide +kernel

theorem check_2132 : cell_2132.check = true := by
  decide +kernel

theorem check_2133 : cell_2133.check = true := by
  decide +kernel

theorem check_2134 : cell_2134.check = true := by
  decide +kernel

theorem check_2135 : cell_2135.check = true := by
  decide +kernel

theorem check_2136 : cell_2136.check = true := by
  decide +kernel

theorem check_2137 : cell_2137.check = true := by
  decide +kernel

theorem check_2138 : cell_2138.check = true := by
  decide +kernel

theorem check_2139 : cell_2139.check = true := by
  decide +kernel

theorem check_2140 : cell_2140.check = true := by
  decide +kernel

theorem check_2141 : cell_2141.check = true := by
  decide +kernel

theorem check_2142 : cell_2142.check = true := by
  decide +kernel

theorem check_2143 : cell_2143.check = true := by
  decide +kernel

theorem check_2144 : cell_2144.check = true := by
  decide +kernel

theorem check_2145 : cell_2145.check = true := by
  decide +kernel

theorem check_2146 : cell_2146.check = true := by
  decide +kernel

theorem check_2147 : cell_2147.check = true := by
  decide +kernel

theorem check_2148 : cell_2148.check = true := by
  decide +kernel

theorem check_2149 : cell_2149.check = true := by
  decide +kernel

def cells : List Cell := [cell_2100, cell_2101, cell_2102, cell_2103, cell_2104, cell_2105, cell_2106, cell_2107, cell_2108, cell_2109, cell_2110, cell_2111, cell_2112, cell_2113, cell_2114, cell_2115, cell_2116, cell_2117, cell_2118, cell_2119, cell_2120, cell_2121, cell_2122, cell_2123, cell_2124, cell_2125, cell_2126, cell_2127, cell_2128, cell_2129, cell_2130, cell_2131, cell_2132, cell_2133, cell_2134, cell_2135, cell_2136, cell_2137, cell_2138, cell_2139, cell_2140, cell_2141, cell_2142, cell_2143, cell_2144, cell_2145, cell_2146, cell_2147, cell_2148, cell_2149]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_2100, check_2101, check_2102, check_2103, check_2104, check_2105, check_2106, check_2107, check_2108, check_2109, check_2110, check_2111, check_2112, check_2113, check_2114, check_2115, check_2116, check_2117, check_2118, check_2119, check_2120, check_2121, check_2122, check_2123, check_2124, check_2125, check_2126, check_2127, check_2128, check_2129, check_2130, check_2131, check_2132, check_2133, check_2134, check_2135, check_2136, check_2137, check_2138, check_2139, check_2140, check_2141, check_2142, check_2143, check_2144, check_2145, check_2146, check_2147, check_2148, check_2149, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0042

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0042
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0042
open AnalyticBounds.ExpressionCertificate

theorem linked_2100 : Linked cell_2100 pieces := by
  refine ⟨piece_227,piece_227_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2100,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_501_mem

theorem linked_2101 : Linked cell_2101 pieces := by
  refine ⟨piece_228,piece_228_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2101,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_501_mem

theorem linked_2102 : Linked cell_2102 pieces := by
  refine ⟨piece_228,piece_228_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2102,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_501_mem
    · exact piece_502_mem

theorem linked_2103 : Linked cell_2103 pieces := by
  refine ⟨piece_228,piece_228_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2103,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_502_mem

theorem linked_2104 : Linked cell_2104 pieces := by
  refine ⟨piece_228,piece_228_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2104,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_502_mem

theorem linked_2105 : Linked cell_2105 pieces := by
  refine ⟨piece_228,piece_228_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2105,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_502_mem

theorem linked_2106 : Linked cell_2106 pieces := by
  refine ⟨piece_228,piece_228_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2106,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_502_mem
    · exact piece_503_mem

theorem linked_2107 : Linked cell_2107 pieces := by
  refine ⟨piece_228,piece_228_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2107,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_503_mem

theorem linked_2108 : Linked cell_2108 pieces := by
  refine ⟨piece_228,piece_228_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2108,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_503_mem

theorem linked_2109 : Linked cell_2109 pieces := by
  refine ⟨piece_228,piece_228_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2109,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_503_mem

theorem linked_2110 : Linked cell_2110 pieces := by
  refine ⟨piece_229,piece_229_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2110,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_503_mem

theorem linked_2111 : Linked cell_2111 pieces := by
  refine ⟨piece_229,piece_229_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2111,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_503_mem
    · exact piece_504_mem

theorem linked_2112 : Linked cell_2112 pieces := by
  refine ⟨piece_229,piece_229_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2112,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_504_mem

theorem linked_2113 : Linked cell_2113 pieces := by
  refine ⟨piece_229,piece_229_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2113,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_504_mem

theorem linked_2114 : Linked cell_2114 pieces := by
  refine ⟨piece_229,piece_229_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2114,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_504_mem

theorem linked_2115 : Linked cell_2115 pieces := by
  refine ⟨piece_229,piece_229_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2115,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_504_mem
    · exact piece_505_mem

theorem linked_2116 : Linked cell_2116 pieces := by
  refine ⟨piece_229,piece_229_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2116,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_505_mem

theorem linked_2117 : Linked cell_2117 pieces := by
  refine ⟨piece_230,piece_230_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2117,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_505_mem

theorem linked_2118 : Linked cell_2118 pieces := by
  refine ⟨piece_230,piece_230_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2118,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_505_mem

theorem linked_2119 : Linked cell_2119 pieces := by
  refine ⟨piece_230,piece_230_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2119,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_505_mem

theorem linked_2120 : Linked cell_2120 pieces := by
  refine ⟨piece_230,piece_230_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2120,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl | rfl
    · exact piece_505_mem
    · exact piece_506_mem
    · exact piece_507_mem

theorem linked_2121 : Linked cell_2121 pieces := by
  refine ⟨piece_230,piece_230_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2121,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_507_mem

theorem linked_2122 : Linked cell_2122 pieces := by
  refine ⟨piece_230,piece_230_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2122,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_507_mem

theorem linked_2123 : Linked cell_2123 pieces := by
  refine ⟨piece_230,piece_230_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2123,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_507_mem

theorem linked_2124 : Linked cell_2124 pieces := by
  refine ⟨piece_230,piece_230_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2124,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_507_mem

theorem linked_2125 : Linked cell_2125 pieces := by
  refine ⟨piece_230,piece_230_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2125,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_507_mem
    · exact piece_508_mem

theorem linked_2126 : Linked cell_2126 pieces := by
  refine ⟨piece_230,piece_230_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2126,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_508_mem

theorem linked_2127 : Linked cell_2127 pieces := by
  refine ⟨piece_230,piece_230_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2127,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_508_mem

theorem linked_2128 : Linked cell_2128 pieces := by
  refine ⟨piece_230,piece_230_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2128,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_508_mem

theorem linked_2129 : Linked cell_2129 pieces := by
  refine ⟨piece_230,piece_230_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2129,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_508_mem
    · exact piece_509_mem

theorem linked_2130 : Linked cell_2130 pieces := by
  refine ⟨piece_230,piece_230_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2130,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_509_mem

theorem linked_2131 : Linked cell_2131 pieces := by
  refine ⟨piece_230,piece_230_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2131,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_509_mem

theorem linked_2132 : Linked cell_2132 pieces := by
  refine ⟨piece_230,piece_230_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2132,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_509_mem

theorem linked_2133 : Linked cell_2133 pieces := by
  refine ⟨piece_231,piece_231_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2133,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_509_mem

theorem linked_2134 : Linked cell_2134 pieces := by
  refine ⟨piece_231,piece_231_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2134,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_509_mem

theorem linked_2135 : Linked cell_2135 pieces := by
  refine ⟨piece_231,piece_231_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2135,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_509_mem
    · exact piece_510_mem

theorem linked_2136 : Linked cell_2136 pieces := by
  refine ⟨piece_231,piece_231_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2136,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_510_mem

theorem linked_2137 : Linked cell_2137 pieces := by
  refine ⟨piece_231,piece_231_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2137,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_510_mem

theorem linked_2138 : Linked cell_2138 pieces := by
  refine ⟨piece_231,piece_231_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2138,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_510_mem

theorem linked_2139 : Linked cell_2139 pieces := by
  refine ⟨piece_231,piece_231_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2139,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_510_mem
    · exact piece_511_mem

theorem linked_2140 : Linked cell_2140 pieces := by
  refine ⟨piece_231,piece_231_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2140,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_511_mem

theorem linked_2141 : Linked cell_2141 pieces := by
  refine ⟨piece_231,piece_231_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2141,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_511_mem

theorem linked_2142 : Linked cell_2142 pieces := by
  refine ⟨piece_231,piece_231_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2142,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_511_mem

theorem linked_2143 : Linked cell_2143 pieces := by
  refine ⟨piece_231,piece_231_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2143,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_511_mem
    · exact piece_512_mem

theorem linked_2144 : Linked cell_2144 pieces := by
  refine ⟨piece_231,piece_231_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2144,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_512_mem

theorem linked_2145 : Linked cell_2145 pieces := by
  refine ⟨piece_231,piece_231_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2145,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_512_mem

theorem linked_2146 : Linked cell_2146 pieces := by
  refine ⟨piece_231,piece_231_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2146,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_512_mem

theorem linked_2147 : Linked cell_2147 pieces := by
  refine ⟨piece_231,piece_231_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2147,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_512_mem

theorem linked_2148 : Linked cell_2148 pieces := by
  refine ⟨piece_231,piece_231_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2148,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_512_mem
    · exact piece_513_mem

theorem linked_2149 : Linked cell_2149 pieces := by
  refine ⟨piece_232,piece_232_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_2149,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_512_mem
    · exact piece_513_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0042.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0042.cells,List.forall_mem_cons]
  exact ⟨linked_2100, linked_2101, linked_2102, linked_2103, linked_2104, linked_2105, linked_2106, linked_2107, linked_2108, linked_2109, linked_2110, linked_2111, linked_2112, linked_2113, linked_2114, linked_2115, linked_2116, linked_2117, linked_2118, linked_2119, linked_2120, linked_2121, linked_2122, linked_2123, linked_2124, linked_2125, linked_2126, linked_2127, linked_2128, linked_2129, linked_2130, linked_2131, linked_2132, linked_2133, linked_2134, linked_2135, linked_2136, linked_2137, linked_2138, linked_2139, linked_2140, linked_2141, linked_2142, linked_2143, linked_2144, linked_2145, linked_2146, linked_2147, linked_2148, linked_2149, by simp⟩

theorem covered : covers (59468749999999997 / 1000000000000000000 : ℚ) (61031249999999999 / 1000000000000000000 : ℚ)
    (SourceCertificates.Chunk0042.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0042
