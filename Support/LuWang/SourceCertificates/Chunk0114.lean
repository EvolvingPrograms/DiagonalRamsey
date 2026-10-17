import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0114
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(17265624999999999 / 100000000000000000 : ℚ), (17268749999999999 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (47017600546109 / 50000000000000 : ℚ)
  w := (2511781171413 / 2500000000000 : ℚ)
  center := (17267187499999999 / 100000000000000000 : ℚ)
  supportValue := (125567267606673 / 200000000000000 : ℚ)
  supportSlope := (5243250679868083 / 1000000000000000 : ℚ)
  oldCenter := (125567267606673 / 200000000000000 : ℚ)
  newCoefficients := coefficients_476
  oldLo := (629 / 1000 : ℚ)
  oldHi := (63400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1470]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_5700 : Cell := { cellDefaults with
  r := (11766296071993 / 12500000000000 : ℚ)
  w := (156956917399 / 156250000000 : ℚ)
  newCoefficients := coefficients_475
  oldLo := (31375000000000003 / 50000000000000000 : ℚ)
  oldHi := (157 / 250 : ℚ)
  oldPieces := [piece_1467]
}

def cell_5701 : Cell := { cellDefaults with
  domain := ⟨(17268749999999999 / 100000000000000000 : ℚ), (17271874999999999 / 100000000000000000 : ℚ)⟩
  r := (11766296071993 / 12500000000000 : ℚ)
  w := (156956917399 / 156250000000 : ℚ)
  center := (17270312499999999 / 100000000000000000 : ℚ)
  supportValue := (3140001013051479 / 5000000000000000 : ℚ)
  supportSlope := (5243805802486179 / 1000000000000000 : ℚ)
  oldCenter := (3140001013051479 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_475
  oldLo := (31375000000000003 / 50000000000000000 : ℚ)
  oldHi := (31425000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1467, piece_1468]
}

def cell_5702 : Cell := { cellDefaults with
  domain := ⟨(17271874999999999 / 100000000000000000 : ℚ), (17274999999999999 / 100000000000000000 : ℚ)⟩
  r := (11766296071993 / 12500000000000 : ℚ)
  w := (156956917399 / 156250000000 : ℚ)
  center := (17273437499999999 / 100000000000000000 : ℚ)
  supportValue := (3140820379412843 / 5000000000000000 : ℚ)
  supportSlope := (5244361944207299 / 1000000000000000 : ℚ)
  oldCenter := (3140820379412843 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_475
  oldLo := (157 / 250 : ℚ)
  oldHi := (31425000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1468]
}

def cell_5703 : Cell := { cellDefaults with
  domain := ⟨(17274999999999999 / 100000000000000000 : ℚ), (17278124999999999 / 100000000000000000 : ℚ)⟩
  r := (11766296071993 / 12500000000000 : ℚ)
  w := (156956917399 / 156250000000 : ℚ)
  center := (17276562499999999 / 100000000000000000 : ℚ)
  supportValue := (6283279752010793 / 10000000000000000 : ℚ)
  supportSlope := (5245195555048099 / 1000000000000000 : ℚ)
  oldCenter := (6283279752010793 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_475
  oldLo := (157 / 250 : ℚ)
  oldHi := (31425000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1468]
}

def cell_5704 : Cell := { cellDefaults with
  domain := ⟨(17278124999999999 / 100000000000000000 : ℚ), (17281249999999999 / 100000000000000000 : ℚ)⟩
  r := (11766296071993 / 12500000000000 : ℚ)
  w := (156956917399 / 156250000000 : ℚ)
  center := (17279687499999999 / 100000000000000000 : ℚ)
  supportValue := (3142459502870131 / 5000000000000000 : ℚ)
  supportSlope := (2622889290723407 / 500000000000000 : ℚ)
  oldCenter := (3142459502870131 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_475
  oldLo := (157 / 250 : ℚ)
  oldHi := (629 / 1000 : ℚ)
  oldPieces := [piece_1468, piece_1469]
}

def cell_5705 : Cell := { cellDefaults with
  domain := ⟨(17281249999999999 / 100000000000000000 : ℚ), (17284374999999999 / 100000000000000000 : ℚ)⟩
  r := (11766296071993 / 12500000000000 : ℚ)
  w := (156956917399 / 156250000000 : ℚ)
  center := (17282812499999999 / 100000000000000000 : ℚ)
  supportValue := (628655835470833 / 1000000000000000 : ℚ)
  supportSlope := (1311576620311783 / 250000000000000 : ℚ)
  oldCenter := (628655835470833 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_475
  oldLo := (31425000000000003 / 50000000000000000 : ℚ)
  oldHi := (629 / 1000 : ℚ)
  oldPieces := [piece_1469]
}

def cell_5706 : Cell := { cellDefaults with
  domain := ⟨(17284374999999999 / 100000000000000000 : ℚ), (17287499999999999 / 100000000000000000 : ℚ)⟩
  r := (11766296071993 / 12500000000000 : ℚ)
  w := (156956917399 / 156250000000 : ℚ)
  center := (17285937499999999 / 100000000000000000 : ℚ)
  supportValue := (1572049488875019 / 2500000000000000 : ℚ)
  supportSlope := (5247139700621517 / 1000000000000000 : ℚ)
  oldCenter := (1572049488875019 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_475
  oldLo := (31425000000000003 / 50000000000000000 : ℚ)
  oldHi := (629 / 1000 : ℚ)
  oldPieces := [piece_1469]
}

def cell_5707 : Cell := { cellDefaults with
  domain := ⟨(17287499999999999 / 100000000000000000 : ℚ), (17290624999999999 / 100000000000000000 : ℚ)⟩
  r := (11766296071993 / 12500000000000 : ℚ)
  w := (156956917399 / 156250000000 : ℚ)
  center := (17289062499999999 / 100000000000000000 : ℚ)
  supportValue := (196557431772303 / 312500000000000 : ℚ)
  supportSlope := (5247750039099941 / 1000000000000000 : ℚ)
  oldCenter := (196557431772303 / 312500000000000 : ℚ)
  newCoefficients := coefficients_475
  oldLo := (31425000000000003 / 50000000000000000 : ℚ)
  oldHi := (6294413407821229 / 10000000000000000 : ℚ)
  oldPieces := [piece_1469, piece_1470]
}

def cell_5708 : Cell := { cellDefaults with
  domain := ⟨(17290624999999999 / 100000000000000000 : ℚ), (17293749999999999 / 100000000000000000 : ℚ)⟩
  r := (11766296071993 / 12500000000000 : ℚ)
  w := (156956917399 / 156250000000 : ℚ)
  center := (17292187499999999 / 100000000000000000 : ℚ)
  supportValue := (6291477781771933 / 10000000000000000 : ℚ)
  supportSlope := (2624125143002587 / 500000000000000 : ℚ)
  oldCenter := (6291477781771933 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_475
  oldHi := (6294413407821229 / 10000000000000000 : ℚ)
  oldPieces := [piece_1470]
}

def cell_5709 : Cell := { cellDefaults with
  domain := ⟨(17293749999999999 / 100000000000000000 : ℚ), (17296874999999999 / 100000000000000000 : ℚ)⟩
  r := (11766296071993 / 12500000000000 : ℚ)
  w := (156956917399 / 156250000000 : ℚ)
  center := (17295312499999999 / 100000000000000000 : ℚ)
  supportValue := (6293117989934577 / 10000000000000000 : ℚ)
  supportSlope := (2099633227895481 / 400000000000000 : ℚ)
  oldCenter := (6293117989934577 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_475
  oldHi := (6294413407821229 / 10000000000000000 : ℚ)
  oldPieces := [piece_1470]
}

def cell_5710 : Cell := { cellDefaults with
  domain := ⟨(17296874999999999 / 100000000000000000 : ℚ), (17299999999999999 / 100000000000000000 : ℚ)⟩
  r := (11766296071993 / 12500000000000 : ℚ)
  w := (156956917399 / 156250000000 : ℚ)
  center := (17298437499999999 / 100000000000000000 : ℚ)
  supportValue := (3147379229182407 / 5000000000000000 : ℚ)
  supportSlope := (1049943966030753 / 200000000000000 : ℚ)
  oldCenter := (3147379229182407 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_475
  oldHi := (63 / 100 : ℚ)
  oldPieces := [piece_1470, piece_1471, piece_1472]
}

def cell_5711 : Cell := { cellDefaults with
  domain := ⟨(17299999999999999 / 100000000000000000 : ℚ), (17303124999999999 / 100000000000000000 : ℚ)⟩
  center := (17301562499999999 / 100000000000000000 : ℚ)
  supportValue := (1572949967346561 / 2500000000000000 : ℚ)
  supportSlope := (327847646545143 / 62500000000000 : ℚ)
  oldCenter := (1572949967346561 / 2500000000000000 : ℚ)
  oldHi := (6294413407821229 / 10000000000000000 : ℚ)
  oldPieces := [piece_1470]
}

def cell_5712 : Cell := { cellDefaults with
  domain := ⟨(17303124999999999 / 100000000000000000 : ℚ), (17306249999999999 / 100000000000000000 : ℚ)⟩
  center := (17304687499999999 / 100000000000000000 : ℚ)
  supportValue := (629343923763283 / 1000000000000000 : ℚ)
  supportSlope := (655799443515459 / 125000000000000 : ℚ)
  oldCenter := (629343923763283 / 1000000000000000 : ℚ)
  oldHi := (6294413407821229 / 10000000000000000 : ℚ)
  oldPieces := [piece_1470]
}

def cell_5713 : Cell := { cellDefaults with
  domain := ⟨(17306249999999999 / 100000000000000000 : ℚ), (17309374999999999 / 100000000000000000 : ℚ)⟩
  center := (17307812499999999 / 100000000000000000 : ℚ)
  supportValue := (6295078857857133 / 10000000000000000 : ℚ)
  supportSlope := (1311731080344991 / 250000000000000 : ℚ)
  oldCenter := (6295078857857133 / 10000000000000000 : ℚ)
  oldHi := (63 / 100 : ℚ)
  oldPieces := [piece_1470, piece_1471, piece_1472]
}

def cell_5714 : Cell := { cellDefaults with
  domain := ⟨(17309374999999999 / 100000000000000000 : ℚ), (17312499999999999 / 100000000000000000 : ℚ)⟩
  center := (17310937499999999 / 100000000000000000 : ℚ)
  supportValue := (6296718573365971 / 10000000000000000 : ℚ)
  supportSlope := (5247506412377589 / 1000000000000000 : ℚ)
  oldCenter := (6296718573365971 / 10000000000000000 : ℚ)
  oldLo := (31475000000000003 / 50000000000000000 : ℚ)
  oldHi := (63 / 100 : ℚ)
  oldPieces := [piece_1472]
}

def cell_5715 : Cell := { cellDefaults with
  domain := ⟨(17312499999999999 / 100000000000000000 : ℚ), (17315624999999999 / 100000000000000000 : ℚ)⟩
  center := (17314062499999999 / 100000000000000000 : ℚ)
  supportValue := (314917927452863 / 500000000000000 : ℚ)
  supportSlope := (328021195416639 / 62500000000000 : ℚ)
  oldCenter := (314917927452863 / 500000000000000 : ℚ)
  oldLo := (31475000000000003 / 50000000000000000 : ℚ)
  oldHi := (63 / 100 : ℚ)
  oldPieces := [piece_1472]
}

def cell_5716 : Cell := { cellDefaults with
  domain := ⟨(17315624999999999 / 100000000000000000 : ℚ), (17318749999999999 / 100000000000000000 : ℚ)⟩
  center := (17317187499999999 / 100000000000000000 : ℚ)
  supportValue := (503999902801 / 800000000000 : ℚ)
  supportSlope := (2624447505578331 / 500000000000000 : ℚ)
  oldCenter := (503999902801 / 800000000000 : ℚ)
  oldLo := (31475000000000003 / 50000000000000000 : ℚ)
  oldHi := (31525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1472, piece_1473]
}

def cell_5717 : Cell := { cellDefaults with
  domain := ⟨(17318749999999999 / 100000000000000000 : ℚ), (17321874999999999 / 100000000000000000 : ℚ)⟩
  center := (17320312499999999 / 100000000000000000 : ℚ)
  supportValue := (3150819553985353 / 5000000000000000 : ℚ)
  supportSlope := (209977992393533 / 40000000000000 : ℚ)
  oldCenter := (3150819553985353 / 5000000000000000 : ℚ)
  oldLo := (63 / 100 : ℚ)
  oldHi := (31525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1473]
}

def cell_5718 : Cell := { cellDefaults with
  domain := ⟨(17321874999999999 / 100000000000000000 : ℚ), (17324999999999999 / 100000000000000000 : ℚ)⟩
  center := (17323437499999999 / 100000000000000000 : ℚ)
  supportValue := (1575819922724403 / 2500000000000000 : ℚ)
  supportSlope := (1312570509314881 / 250000000000000 : ℚ)
  oldCenter := (1575819922724403 / 2500000000000000 : ℚ)
  oldLo := (63 / 100 : ℚ)
  oldHi := (31525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1473]
}

def cell_5719 : Cell := { cellDefaults with
  domain := ⟨(17324999999999999 / 100000000000000000 : ℚ), (17328124999999999 / 100000000000000000 : ℚ)⟩
  center := (17326562499999999 / 100000000000000000 : ℚ)
  supportValue := (6304920533936139 / 10000000000000000 : ℚ)
  supportSlope := (2625432103736003 / 500000000000000 : ℚ)
  oldCenter := (6304920533936139 / 10000000000000000 : ℚ)
  oldLo := (63 / 100 : ℚ)
  oldHi := (63100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1473, piece_1474]
}

def cell_5720 : Cell := { cellDefaults with
  domain := ⟨(17328124999999999 / 100000000000000000 : ℚ), (17331249999999999 / 100000000000000000 : ℚ)⟩
  center := (17329687499999999 / 100000000000000000 : ℚ)
  supportValue := (1261312294462021 / 2000000000000000 : ℚ)
  supportSlope := (5251392500753127 / 1000000000000000 : ℚ)
  oldCenter := (1261312294462021 / 2000000000000000 : ℚ)
  oldLo := (31525000000000003 / 50000000000000000 : ℚ)
  oldHi := (63100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1474]
}

def cell_5721 : Cell := { cellDefaults with
  domain := ⟨(17331249999999999 / 100000000000000000 : ℚ), (17334374999999999 / 100000000000000000 : ℚ)⟩
  center := (17332812499999999 / 100000000000000000 : ℚ)
  supportValue := (157705066556283 / 250000000000000 : ℚ)
  supportSlope := (2626112119017421 / 500000000000000 : ℚ)
  oldCenter := (157705066556283 / 250000000000000 : ℚ)
  oldLo := (31525000000000003 / 50000000000000000 : ℚ)
  oldHi := (63100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1474]
}

def cell_5722 : Cell := { cellDefaults with
  domain := ⟨(17334374999999999 / 100000000000000000 : ℚ), (17337499999999999 / 100000000000000000 : ℚ)⟩
  center := (17335937499999999 / 100000000000000000 : ℚ)
  supportValue := (6309844112150821 / 10000000000000000 : ℚ)
  supportSlope := (2626415969707807 / 500000000000000 : ℚ)
  oldCenter := (6309844112150821 / 10000000000000000 : ℚ)
  oldLo := (31525000000000003 / 50000000000000000 : ℚ)
  oldHi := (31575000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1474, piece_1475]
}

def cell_5723 : Cell := { cellDefaults with
  domain := ⟨(17337499999999999 / 100000000000000000 : ℚ), (17340624999999999 / 100000000000000000 : ℚ)⟩
  center := (17339062499999999 / 100000000000000000 : ℚ)
  supportValue := (6311485665464603 / 10000000000000000 : ℚ)
  supportSlope := (5253334361469797 / 1000000000000000 : ℚ)
  oldCenter := (6311485665464603 / 10000000000000000 : ℚ)
  oldLo := (63100000000000001 / 100000000000000000 : ℚ)
  oldHi := (31575000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1475]
}

def cell_5724 : Cell := { cellDefaults with
  domain := ⟨(17340624999999999 / 100000000000000000 : ℚ), (17343749999999999 / 100000000000000000 : ℚ)⟩
  center := (17342187499999999 / 100000000000000000 : ℚ)
  supportValue := (394570466385013 / 625000000000000 : ℚ)
  supportSlope := (5254165605524719 / 1000000000000000 : ℚ)
  oldCenter := (394570466385013 / 625000000000000 : ℚ)
  oldLo := (63100000000000001 / 100000000000000000 : ℚ)
  oldHi := (31575000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1475]
}

def cell_5725 : Cell := { cellDefaults with
  domain := ⟨(17343749999999999 / 100000000000000000 : ℚ), (17346874999999999 / 100000000000000000 : ℚ)⟩
  center := (17345312499999999 / 100000000000000000 : ℚ)
  supportValue := (1578692379664951 / 2500000000000000 : ℚ)
  supportSlope := (2627399072515857 / 500000000000000 : ℚ)
  oldCenter := (1578692379664951 / 2500000000000000 : ℚ)
  oldLo := (63100000000000001 / 100000000000000000 : ℚ)
  oldHi := (63200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1475, piece_1476]
}

def cell_5726 : Cell := { cellDefaults with
  domain := ⟨(17346874999999999 / 100000000000000000 : ℚ), (17349999999999999 / 100000000000000000 : ℚ)⟩
  center := (17348437499999999 / 100000000000000000 : ℚ)
  supportValue := (789551460804553 / 1250000000000000 : ℚ)
  supportSlope := (5255275385369629 / 1000000000000000 : ℚ)
  oldCenter := (789551460804553 / 1250000000000000 : ℚ)
  oldLo := (31575000000000003 / 50000000000000000 : ℚ)
  oldHi := (63200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1476]
}

def cell_5727 : Cell := { cellDefaults with
  domain := ⟨(17349999999999999 / 100000000000000000 : ℚ), (17353124999999999 / 100000000000000000 : ℚ)⟩
  r := (18788056629947 / 20000000000000 : ℚ)
  w := (2512253515401 / 2500000000000 : ℚ)
  center := (17351562499999999 / 100000000000000000 : ℚ)
  supportValue := (6313445739949349 / 10000000000000000 : ℚ)
  supportSlope := (5251471548486819 / 1000000000000000 : ℚ)
  oldCenter := (6313445739949349 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_477
  oldLo := (63100000000000001 / 100000000000000000 : ℚ)
  oldHi := (31575000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1475]
}

def cell_5728 : Cell := { cellDefaults with
  domain := ⟨(17353124999999999 / 100000000000000000 : ℚ), (17356249999999999 / 100000000000000000 : ℚ)⟩
  r := (18788056629947 / 20000000000000 : ℚ)
  w := (2512253515401 / 2500000000000 : ℚ)
  center := (17354687499999999 / 100000000000000000 : ℚ)
  supportValue := (1578771736353987 / 2500000000000000 : ℚ)
  supportSlope := (10503995557378687 / 2000000000000000 : ℚ)
  oldCenter := (1578771736353987 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_477
  oldLo := (63100000000000001 / 100000000000000000 : ℚ)
  oldHi := (63200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1475, piece_1476]
}

def cell_5729 : Cell := { cellDefaults with
  domain := ⟨(17356249999999999 / 100000000000000000 : ℚ), (17359374999999999 / 100000000000000000 : ℚ)⟩
  r := (18788056629947 / 20000000000000 : ℚ)
  w := (2512253515401 / 2500000000000 : ℚ)
  center := (17357812499999999 / 100000000000000000 : ℚ)
  supportValue := (78959103092013 / 125000000000000 : ℚ)
  supportSlope := (5252582242029291 / 1000000000000000 : ℚ)
  oldCenter := (78959103092013 / 125000000000000 : ℚ)
  newCoefficients := coefficients_477
  oldLo := (31575000000000003 / 50000000000000000 : ℚ)
  oldHi := (63200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1476]
}

def cell_5730 : Cell := { cellDefaults with
  domain := ⟨(17359374999999999 / 100000000000000000 : ℚ), (17362499999999999 / 100000000000000000 : ℚ)⟩
  r := (18788056629947 / 20000000000000 : ℚ)
  w := (2512253515401 / 2500000000000 : ℚ)
  center := (17360937499999999 / 100000000000000000 : ℚ)
  supportValue := (1579592452252267 / 2500000000000000 : ℚ)
  supportSlope := (525341342043717 / 100000000000000 : ℚ)
  oldCenter := (1579592452252267 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_477
  oldLo := (31575000000000003 / 50000000000000000 : ℚ)
  oldHi := (63200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1476]
}

def cell_5731 : Cell := { cellDefaults with
  domain := ⟨(17362499999999999 / 100000000000000000 : ℚ), (17365624999999999 / 100000000000000000 : ℚ)⟩
  r := (18788056629947 / 20000000000000 : ℚ)
  w := (2512253515401 / 2500000000000 : ℚ)
  center := (17364062499999999 / 100000000000000000 : ℚ)
  supportValue := (1580002907288383 / 2500000000000000 : ℚ)
  supportSlope := (5253964827403479 / 1000000000000000 : ℚ)
  oldCenter := (1580002907288383 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_477
  oldLo := (31575000000000003 / 50000000000000000 : ℚ)
  oldHi := (31625000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1476, piece_1477]
}

def cell_5732 : Cell := { cellDefaults with
  domain := ⟨(17365624999999999 / 100000000000000000 : ℚ), (17368749999999999 / 100000000000000000 : ℚ)⟩
  r := (18788056629947 / 20000000000000 : ℚ)
  w := (2512253515401 / 2500000000000 : ℚ)
  center := (17367187499999999 / 100000000000000000 : ℚ)
  supportValue := (6321653537906047 / 10000000000000000 : ℚ)
  supportSlope := (2627261889440291 / 500000000000000 : ℚ)
  oldCenter := (6321653537906047 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_477
  oldLo := (63200000000000001 / 100000000000000000 : ℚ)
  oldHi := (31625000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1477]
}

def cell_5733 : Cell := { cellDefaults with
  domain := ⟨(17368749999999999 / 100000000000000000 : ℚ), (17371874999999999 / 100000000000000000 : ℚ)⟩
  r := (18788056629947 / 20000000000000 : ℚ)
  w := (2512253515401 / 2500000000000 : ℚ)
  center := (17370312499999999 / 100000000000000000 : ℚ)
  supportValue := (6323295706206983 / 10000000000000000 : ℚ)
  supportSlope := (5255354462324391 / 1000000000000000 : ℚ)
  oldCenter := (6323295706206983 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_477
  oldLo := (63200000000000001 / 100000000000000000 : ℚ)
  oldHi := (31625000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1477]
}

def cell_5734 : Cell := { cellDefaults with
  domain := ⟨(17371874999999999 / 100000000000000000 : ℚ), (17374999999999999 / 100000000000000000 : ℚ)⟩
  r := (18788056629947 / 20000000000000 : ℚ)
  w := (2512253515401 / 2500000000000 : ℚ)
  center := (17373437499999999 / 100000000000000000 : ℚ)
  supportValue := (6324938134136607 / 10000000000000000 : ℚ)
  supportSlope := (2627965177415703 / 500000000000000 : ℚ)
  oldCenter := (6324938134136607 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_477
  oldLo := (63200000000000001 / 100000000000000000 : ℚ)
  oldHi := (63300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1477, piece_1478]
}

def cell_5735 : Cell := { cellDefaults with
  domain := ⟨(17374999999999999 / 100000000000000000 : ℚ), (17378124999999999 / 100000000000000000 : ℚ)⟩
  r := (18788056629947 / 20000000000000 : ℚ)
  w := (2512253515401 / 2500000000000 : ℚ)
  center := (17376562499999999 / 100000000000000000 : ℚ)
  supportValue := (6326580655853871 / 10000000000000000 : ℚ)
  supportSlope := (5256464482300771 / 1000000000000000 : ℚ)
  oldCenter := (6326580655853871 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_477
  oldLo := (31625000000000003 / 50000000000000000 : ℚ)
  oldHi := (63300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1478]
}

def cell_5736 : Cell := { cellDefaults with
  domain := ⟨(17378124999999999 / 100000000000000000 : ℚ), (17381249999999999 / 100000000000000000 : ℚ)⟩
  r := (18788056629947 / 20000000000000 : ℚ)
  w := (2512253515401 / 2500000000000 : ℚ)
  center := (17379687499999999 / 100000000000000000 : ℚ)
  supportValue := (3164111715273517 / 5000000000000000 : ℚ)
  supportSlope := (2628647334622869 / 500000000000000 : ℚ)
  oldCenter := (3164111715273517 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_477
  oldLo := (31625000000000003 / 50000000000000000 : ℚ)
  oldHi := (63300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1478]
}

def cell_5737 : Cell := { cellDefaults with
  domain := ⟨(17381249999999999 / 100000000000000000 : ℚ), (17384374999999999 / 100000000000000000 : ℚ)⟩
  r := (18788056629947 / 20000000000000 : ℚ)
  w := (2512253515401 / 2500000000000 : ℚ)
  center := (17382812499999999 / 100000000000000000 : ℚ)
  supportValue := (3164933232356783 / 5000000000000000 : ℚ)
  supportSlope := (5257894328511981 / 1000000000000000 : ℚ)
  oldCenter := (3164933232356783 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_477
  oldLo := (31625000000000003 / 50000000000000000 : ℚ)
  oldHi := (31675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1478, piece_1479]
}

def cell_5738 : Cell := { cellDefaults with
  domain := ⟨(17384374999999999 / 100000000000000000 : ℚ), (17387499999999999 / 100000000000000000 : ℚ)⟩
  r := (18788056629947 / 20000000000000 : ℚ)
  w := (2512253515401 / 2500000000000 : ℚ)
  center := (17385937499999999 / 100000000000000000 : ℚ)
  supportValue := (3165754800095907 / 5000000000000000 : ℚ)
  supportSlope := (13146010844948819 / 2500000000000000 : ℚ)
  oldCenter := (3165754800095907 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_477
  oldLo := (63300000000000001 / 100000000000000000 : ℚ)
  oldHi := (31675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1479]
}

def cell_5739 : Cell := { cellDefaults with
  domain := ⟨(17387499999999999 / 100000000000000000 : ℚ), (17390624999999999 / 100000000000000000 : ℚ)⟩
  r := (18788056629947 / 20000000000000 : ℚ)
  w := (2512253515401 / 2500000000000 : ℚ)
  center := (17389062499999999 / 100000000000000000 : ℚ)
  supportValue := (6333152981026307 / 10000000000000000 : ℚ)
  supportSlope := (10518468236440981 / 2000000000000000 : ℚ)
  oldCenter := (6333152981026307 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_477
  oldLo := (63300000000000001 / 100000000000000000 : ℚ)
  oldHi := (31675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1479]
}

def cell_5740 : Cell := { cellDefaults with
  domain := ⟨(17390624999999999 / 100000000000000000 : ℚ), (17393749999999999 / 100000000000000000 : ℚ)⟩
  r := (18788056629947 / 20000000000000 : ℚ)
  w := (2512253515401 / 2500000000000 : ℚ)
  center := (17392187499999999 / 100000000000000000 : ℚ)
  supportValue := (3167398310603459 / 5000000000000000 : ℚ)
  supportSlope := (1314964231199589 / 250000000000000 : ℚ)
  oldCenter := (3167398310603459 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_477
  oldLo := (63300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1479, piece_1480]
}

def cell_5741 : Cell := { cellDefaults with
  domain := ⟨(17393749999999999 / 100000000000000000 : ℚ), (17396874999999999 / 100000000000000000 : ℚ)⟩
  r := (18788056629947 / 20000000000000 : ℚ)
  w := (2512253515401 / 2500000000000 : ℚ)
  center := (17395312499999999 / 100000000000000000 : ℚ)
  supportValue := (6336440370007033 / 10000000000000000 : ℚ)
  supportSlope := (10520686877356411 / 2000000000000000 : ℚ)
  oldCenter := (6336440370007033 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_477
  oldLo := (31675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1480]
}

def cell_5742 : Cell := { cellDefaults with
  domain := ⟨(17396874999999999 / 100000000000000000 : ℚ), (17399999999999999 / 100000000000000000 : ℚ)⟩
  r := (18788056629947 / 20000000000000 : ℚ)
  w := (2512253515401 / 2500000000000 : ℚ)
  center := (17398437499999999 / 100000000000000000 : ℚ)
  supportValue := (6338084356741411 / 10000000000000000 : ℚ)
  supportSlope := (1052234555386633 / 200000000000000 : ℚ)
  oldCenter := (6338084356741411 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_477
  oldLo := (31675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1480]
}

def cell_5743 : Cell := { cellDefaults with
  domain := ⟨(17399999999999999 / 100000000000000000 : ℚ), (17403124999999999 / 100000000000000000 : ℚ)⟩
  r := (3753824340199 / 4000000000000 : ℚ)
  w := (1256363888721 / 1250000000000 : ℚ)
  center := (17401562499999999 / 100000000000000000 : ℚ)
  supportValue := (633511091029339 / 1000000000000000 : ℚ)
  supportSlope := (5257051293288129 / 1000000000000000 : ℚ)
  oldCenter := (633511091029339 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_478
  oldLo := (63300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1479, piece_1480]
}

def cell_5744 : Cell := { cellDefaults with
  domain := ⟨(17403124999999999 / 100000000000000000 : ℚ), (17406249999999999 / 100000000000000000 : ℚ)⟩
  r := (3753824340199 / 4000000000000 : ℚ)
  w := (1256363888721 / 1250000000000 : ℚ)
  center := (17404687499999999 / 100000000000000000 : ℚ)
  supportValue := (3168376897038297 / 5000000000000000 : ℚ)
  supportSlope := (1314410856215531 / 250000000000000 : ℚ)
  oldCenter := (3168376897038297 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_478
  oldLo := (31675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1480]
}

def cell_5745 : Cell := { cellDefaults with
  domain := ⟨(17406249999999999 / 100000000000000000 : ℚ), (17409374999999999 / 100000000000000000 : ℚ)⟩
  r := (3753824340199 / 4000000000000 : ℚ)
  w := (1256363888721 / 1250000000000 : ℚ)
  center := (17407812499999999 / 100000000000000000 : ℚ)
  supportValue := (3169198468562639 / 5000000000000000 : ℚ)
  supportSlope := (2629236601075391 / 500000000000000 : ℚ)
  oldCenter := (3169198468562639 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_478
  oldLo := (31675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1480]
}

def cell_5746 : Cell := { cellDefaults with
  domain := ⟨(17409374999999999 / 100000000000000000 : ℚ), (17412499999999999 / 100000000000000000 : ℚ)⟩
  r := (3753824340199 / 4000000000000 : ℚ)
  w := (1256363888721 / 1250000000000 : ℚ)
  center := (17410937499999999 / 100000000000000000 : ℚ)
  supportValue := (634004033524099 / 1000000000000000 : ℚ)
  supportSlope := (5259014808373763 / 1000000000000000 : ℚ)
  oldCenter := (634004033524099 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_478
  oldLo := (31675000000000003 / 50000000000000000 : ℚ)
  oldHi := (31725000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1480, piece_1481]
}

def cell_5747 : Cell := { cellDefaults with
  domain := ⟨(17412499999999999 / 100000000000000000 : ℚ), (17415624999999999 / 100000000000000000 : ℚ)⟩
  r := (3753824340199 / 4000000000000 : ℚ)
  w := (1256363888721 / 1250000000000 : ℚ)
  center := (17414062499999999 / 100000000000000000 : ℚ)
  supportValue := (3170841912626653 / 5000000000000000 : ℚ)
  supportSlope := (1051916624442839 / 200000000000000 : ℚ)
  oldCenter := (3170841912626653 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_478
  oldLo := (63400000000000001 / 100000000000000000 : ℚ)
  oldHi := (31725000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1481]
}

def cell_5748 : Cell := { cellDefaults with
  domain := ⟨(17415624999999999 / 100000000000000000 : ℚ), (17418749999999999 / 100000000000000000 : ℚ)⟩
  r := (3753824340199 / 4000000000000 : ℚ)
  w := (1256363888721 / 1250000000000 : ℚ)
  center := (17417187499999999 / 100000000000000000 : ℚ)
  supportValue := (3171663787191761 / 5000000000000000 : ℚ)
  supportSlope := (10520824853472277 / 2000000000000000 : ℚ)
  oldCenter := (3171663787191761 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_478
  oldLo := (63400000000000001 / 100000000000000000 : ℚ)
  oldHi := (31725000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1481]
}

def cell_5749 : Cell := { cellDefaults with
  domain := ⟨(17418749999999999 / 100000000000000000 : ℚ), (17421874999999999 / 100000000000000000 : ℚ)⟩
  r := (3753824340199 / 4000000000000 : ℚ)
  w := (1256363888721 / 1250000000000 : ℚ)
  center := (17420312499999999 / 100000000000000000 : ℚ)
  supportValue := (6344971582711103 / 10000000000000000 : ℚ)
  supportSlope := (2630488408275511 / 500000000000000 : ℚ)
  oldCenter := (6344971582711103 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_478
  oldLo := (63400000000000001 / 100000000000000000 : ℚ)
  oldHi := (6349720670391061 / 10000000000000000 : ℚ)
  oldPieces := [piece_1481, piece_1482]
}

theorem check_5700 : SourceCertificateFamily.RightNormalized.check cell_5700 = true := by
  decide +kernel

theorem check_5701 : SourceCertificateFamily.RightNormalized.check cell_5701 = true := by
  decide +kernel

theorem check_5702 : SourceCertificateFamily.RightNormalized.check cell_5702 = true := by
  decide +kernel

theorem check_5703 : SourceCertificateFamily.RightNormalized.check cell_5703 = true := by
  decide +kernel

theorem check_5704 : SourceCertificateFamily.RightNormalized.check cell_5704 = true := by
  decide +kernel

theorem check_5705 : SourceCertificateFamily.RightNormalized.check cell_5705 = true := by
  decide +kernel

theorem check_5706 : SourceCertificateFamily.RightNormalized.check cell_5706 = true := by
  decide +kernel

theorem check_5707 : SourceCertificateFamily.RightNormalized.check cell_5707 = true := by
  decide +kernel

theorem check_5708 : SourceCertificateFamily.RightNormalized.check cell_5708 = true := by
  decide +kernel

theorem check_5709 : SourceCertificateFamily.RightNormalized.check cell_5709 = true := by
  decide +kernel

theorem check_5710 : SourceCertificateFamily.RightNormalized.check cell_5710 = true := by
  decide +kernel

theorem check_5711 : SourceCertificateFamily.RightNormalized.check cell_5711 = true := by
  decide +kernel

theorem check_5712 : SourceCertificateFamily.RightNormalized.check cell_5712 = true := by
  decide +kernel

theorem check_5713 : SourceCertificateFamily.RightNormalized.check cell_5713 = true := by
  decide +kernel

theorem check_5714 : SourceCertificateFamily.RightNormalized.check cell_5714 = true := by
  decide +kernel

theorem check_5715 : SourceCertificateFamily.RightNormalized.check cell_5715 = true := by
  decide +kernel

theorem check_5716 : SourceCertificateFamily.RightNormalized.check cell_5716 = true := by
  decide +kernel

theorem check_5717 : SourceCertificateFamily.RightNormalized.check cell_5717 = true := by
  decide +kernel

theorem check_5718 : SourceCertificateFamily.RightNormalized.check cell_5718 = true := by
  decide +kernel

theorem check_5719 : SourceCertificateFamily.RightNormalized.check cell_5719 = true := by
  decide +kernel

theorem check_5720 : SourceCertificateFamily.RightNormalized.check cell_5720 = true := by
  decide +kernel

theorem check_5721 : SourceCertificateFamily.RightNormalized.check cell_5721 = true := by
  decide +kernel

theorem check_5722 : SourceCertificateFamily.RightNormalized.check cell_5722 = true := by
  decide +kernel

theorem check_5723 : SourceCertificateFamily.RightNormalized.check cell_5723 = true := by
  decide +kernel

theorem check_5724 : SourceCertificateFamily.RightNormalized.check cell_5724 = true := by
  decide +kernel

theorem check_5725 : SourceCertificateFamily.RightNormalized.check cell_5725 = true := by
  decide +kernel

theorem check_5726 : SourceCertificateFamily.RightNormalized.check cell_5726 = true := by
  decide +kernel

theorem check_5727 : SourceCertificateFamily.RightNormalized.check cell_5727 = true := by
  decide +kernel

theorem check_5728 : SourceCertificateFamily.RightNormalized.check cell_5728 = true := by
  decide +kernel

theorem check_5729 : SourceCertificateFamily.RightNormalized.check cell_5729 = true := by
  decide +kernel

theorem check_5730 : SourceCertificateFamily.RightNormalized.check cell_5730 = true := by
  decide +kernel

theorem check_5731 : SourceCertificateFamily.RightNormalized.check cell_5731 = true := by
  decide +kernel

theorem check_5732 : SourceCertificateFamily.RightNormalized.check cell_5732 = true := by
  decide +kernel

theorem check_5733 : SourceCertificateFamily.RightNormalized.check cell_5733 = true := by
  decide +kernel

theorem check_5734 : SourceCertificateFamily.RightNormalized.check cell_5734 = true := by
  decide +kernel

theorem check_5735 : SourceCertificateFamily.RightNormalized.check cell_5735 = true := by
  decide +kernel

theorem check_5736 : SourceCertificateFamily.RightNormalized.check cell_5736 = true := by
  decide +kernel

theorem check_5737 : SourceCertificateFamily.RightNormalized.check cell_5737 = true := by
  decide +kernel

theorem check_5738 : SourceCertificateFamily.RightNormalized.check cell_5738 = true := by
  decide +kernel

theorem check_5739 : SourceCertificateFamily.RightNormalized.check cell_5739 = true := by
  decide +kernel

theorem check_5740 : SourceCertificateFamily.RightNormalized.check cell_5740 = true := by
  decide +kernel

theorem check_5741 : SourceCertificateFamily.RightNormalized.check cell_5741 = true := by
  decide +kernel

theorem check_5742 : SourceCertificateFamily.RightNormalized.check cell_5742 = true := by
  decide +kernel

theorem check_5743 : SourceCertificateFamily.RightNormalized.check cell_5743 = true := by
  decide +kernel

theorem check_5744 : SourceCertificateFamily.RightNormalized.check cell_5744 = true := by
  decide +kernel

theorem check_5745 : SourceCertificateFamily.RightNormalized.check cell_5745 = true := by
  decide +kernel

theorem check_5746 : SourceCertificateFamily.RightNormalized.check cell_5746 = true := by
  decide +kernel

theorem check_5747 : SourceCertificateFamily.RightNormalized.check cell_5747 = true := by
  decide +kernel

theorem check_5748 : SourceCertificateFamily.RightNormalized.check cell_5748 = true := by
  decide +kernel

theorem check_5749 : SourceCertificateFamily.RightNormalized.check cell_5749 = true := by
  decide +kernel

def cells : List Cell := [cell_5700, cell_5701, cell_5702, cell_5703, cell_5704, cell_5705, cell_5706, cell_5707, cell_5708, cell_5709, cell_5710, cell_5711, cell_5712, cell_5713, cell_5714, cell_5715, cell_5716, cell_5717, cell_5718, cell_5719, cell_5720, cell_5721, cell_5722, cell_5723, cell_5724, cell_5725, cell_5726, cell_5727, cell_5728, cell_5729, cell_5730, cell_5731, cell_5732, cell_5733, cell_5734, cell_5735, cell_5736, cell_5737, cell_5738, cell_5739, cell_5740, cell_5741, cell_5742, cell_5743, cell_5744, cell_5745, cell_5746, cell_5747, cell_5748, cell_5749]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_5700, SourceCertificateFamily.of_right_checked check_5701, SourceCertificateFamily.of_right_checked check_5702, SourceCertificateFamily.of_right_checked check_5703, SourceCertificateFamily.of_right_checked check_5704, SourceCertificateFamily.of_right_checked check_5705, SourceCertificateFamily.of_right_checked check_5706, SourceCertificateFamily.of_right_checked check_5707, SourceCertificateFamily.of_right_checked check_5708, SourceCertificateFamily.of_right_checked check_5709, SourceCertificateFamily.of_right_checked check_5710, SourceCertificateFamily.of_right_checked check_5711, SourceCertificateFamily.of_right_checked check_5712, SourceCertificateFamily.of_right_checked check_5713, SourceCertificateFamily.of_right_checked check_5714, SourceCertificateFamily.of_right_checked check_5715, SourceCertificateFamily.of_right_checked check_5716, SourceCertificateFamily.of_right_checked check_5717, SourceCertificateFamily.of_right_checked check_5718, SourceCertificateFamily.of_right_checked check_5719, SourceCertificateFamily.of_right_checked check_5720, SourceCertificateFamily.of_right_checked check_5721, SourceCertificateFamily.of_right_checked check_5722, SourceCertificateFamily.of_right_checked check_5723, SourceCertificateFamily.of_right_checked check_5724, SourceCertificateFamily.of_right_checked check_5725, SourceCertificateFamily.of_right_checked check_5726, SourceCertificateFamily.of_right_checked check_5727, SourceCertificateFamily.of_right_checked check_5728, SourceCertificateFamily.of_right_checked check_5729, SourceCertificateFamily.of_right_checked check_5730, SourceCertificateFamily.of_right_checked check_5731, SourceCertificateFamily.of_right_checked check_5732, SourceCertificateFamily.of_right_checked check_5733, SourceCertificateFamily.of_right_checked check_5734, SourceCertificateFamily.of_right_checked check_5735, SourceCertificateFamily.of_right_checked check_5736, SourceCertificateFamily.of_right_checked check_5737, SourceCertificateFamily.of_right_checked check_5738, SourceCertificateFamily.of_right_checked check_5739, SourceCertificateFamily.of_right_checked check_5740, SourceCertificateFamily.of_right_checked check_5741, SourceCertificateFamily.of_right_checked check_5742, SourceCertificateFamily.of_right_checked check_5743, SourceCertificateFamily.of_right_checked check_5744, SourceCertificateFamily.of_right_checked check_5745, SourceCertificateFamily.of_right_checked check_5746, SourceCertificateFamily.of_right_checked check_5747, SourceCertificateFamily.of_right_checked check_5748, SourceCertificateFamily.of_right_checked check_5749, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0114

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0114
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0114
open AnalyticBounds.ExpressionCertificate

theorem linked_5700 : Linked cell_5700 pieces := by
  apply Linked.of_piece piece_475 piece_475_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5700, List.cons_subset, List.nil_subset, and_true]
  exact piece_1467_mem

theorem linked_5701 : Linked cell_5701 pieces := by
  apply Linked.of_piece piece_475 piece_475_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5701, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1467_mem, piece_1468_mem⟩

theorem linked_5702 : Linked cell_5702 pieces := by
  apply Linked.of_piece piece_475 piece_475_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5702, List.cons_subset, List.nil_subset, and_true]
  exact piece_1468_mem

theorem linked_5703 : Linked cell_5703 pieces := by
  apply Linked.of_piece piece_475 piece_475_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5703, List.cons_subset, List.nil_subset, and_true]
  exact piece_1468_mem

theorem linked_5704 : Linked cell_5704 pieces := by
  apply Linked.of_piece piece_475 piece_475_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5704, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1468_mem, piece_1469_mem⟩

theorem linked_5705 : Linked cell_5705 pieces := by
  apply Linked.of_piece piece_475 piece_475_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5705, List.cons_subset, List.nil_subset, and_true]
  exact piece_1469_mem

theorem linked_5706 : Linked cell_5706 pieces := by
  apply Linked.of_piece piece_475 piece_475_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5706, List.cons_subset, List.nil_subset, and_true]
  exact piece_1469_mem

theorem linked_5707 : Linked cell_5707 pieces := by
  apply Linked.of_piece piece_475 piece_475_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5707, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1469_mem, piece_1470_mem⟩

theorem linked_5708 : Linked cell_5708 pieces := by
  apply Linked.of_piece piece_475 piece_475_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5708, List.cons_subset, List.nil_subset, and_true]
  exact piece_1470_mem

theorem linked_5709 : Linked cell_5709 pieces := by
  apply Linked.of_piece piece_475 piece_475_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5709, List.cons_subset, List.nil_subset, and_true]
  exact piece_1470_mem

theorem linked_5710 : Linked cell_5710 pieces := by
  apply Linked.of_piece piece_475 piece_475_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5710, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1470_mem, ⟨piece_1471_mem, piece_1472_mem⟩⟩

theorem linked_5711 : Linked cell_5711 pieces := by
  apply Linked.of_piece piece_476 piece_476_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5711, List.cons_subset, List.nil_subset, and_true]
  exact piece_1470_mem

theorem linked_5712 : Linked cell_5712 pieces := by
  apply Linked.of_piece piece_476 piece_476_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5712, List.cons_subset, List.nil_subset, and_true]
  exact piece_1470_mem

theorem linked_5713 : Linked cell_5713 pieces := by
  apply Linked.of_piece piece_476 piece_476_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5713, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1470_mem, ⟨piece_1471_mem, piece_1472_mem⟩⟩

theorem linked_5714 : Linked cell_5714 pieces := by
  apply Linked.of_piece piece_476 piece_476_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5714, List.cons_subset, List.nil_subset, and_true]
  exact piece_1472_mem

theorem linked_5715 : Linked cell_5715 pieces := by
  apply Linked.of_piece piece_476 piece_476_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5715, List.cons_subset, List.nil_subset, and_true]
  exact piece_1472_mem

theorem linked_5716 : Linked cell_5716 pieces := by
  apply Linked.of_piece piece_476 piece_476_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5716, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1472_mem, piece_1473_mem⟩

theorem linked_5717 : Linked cell_5717 pieces := by
  apply Linked.of_piece piece_476 piece_476_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5717, List.cons_subset, List.nil_subset, and_true]
  exact piece_1473_mem

theorem linked_5718 : Linked cell_5718 pieces := by
  apply Linked.of_piece piece_476 piece_476_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5718, List.cons_subset, List.nil_subset, and_true]
  exact piece_1473_mem

theorem linked_5719 : Linked cell_5719 pieces := by
  apply Linked.of_piece piece_476 piece_476_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5719, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1473_mem, piece_1474_mem⟩

theorem linked_5720 : Linked cell_5720 pieces := by
  apply Linked.of_piece piece_476 piece_476_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5720, List.cons_subset, List.nil_subset, and_true]
  exact piece_1474_mem

theorem linked_5721 : Linked cell_5721 pieces := by
  apply Linked.of_piece piece_476 piece_476_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5721, List.cons_subset, List.nil_subset, and_true]
  exact piece_1474_mem

theorem linked_5722 : Linked cell_5722 pieces := by
  apply Linked.of_piece piece_476 piece_476_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5722, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1474_mem, piece_1475_mem⟩

theorem linked_5723 : Linked cell_5723 pieces := by
  apply Linked.of_piece piece_476 piece_476_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5723, List.cons_subset, List.nil_subset, and_true]
  exact piece_1475_mem

theorem linked_5724 : Linked cell_5724 pieces := by
  apply Linked.of_piece piece_476 piece_476_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5724, List.cons_subset, List.nil_subset, and_true]
  exact piece_1475_mem

theorem linked_5725 : Linked cell_5725 pieces := by
  apply Linked.of_piece piece_476 piece_476_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5725, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1475_mem, piece_1476_mem⟩

theorem linked_5726 : Linked cell_5726 pieces := by
  apply Linked.of_piece piece_476 piece_476_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5726, List.cons_subset, List.nil_subset, and_true]
  exact piece_1476_mem

theorem linked_5727 : Linked cell_5727 pieces := by
  apply Linked.of_piece piece_477 piece_477_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5727, List.cons_subset, List.nil_subset, and_true]
  exact piece_1475_mem

theorem linked_5728 : Linked cell_5728 pieces := by
  apply Linked.of_piece piece_477 piece_477_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5728, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1475_mem, piece_1476_mem⟩

theorem linked_5729 : Linked cell_5729 pieces := by
  apply Linked.of_piece piece_477 piece_477_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5729, List.cons_subset, List.nil_subset, and_true]
  exact piece_1476_mem

theorem linked_5730 : Linked cell_5730 pieces := by
  apply Linked.of_piece piece_477 piece_477_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5730, List.cons_subset, List.nil_subset, and_true]
  exact piece_1476_mem

theorem linked_5731 : Linked cell_5731 pieces := by
  apply Linked.of_piece piece_477 piece_477_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5731, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1476_mem, piece_1477_mem⟩

theorem linked_5732 : Linked cell_5732 pieces := by
  apply Linked.of_piece piece_477 piece_477_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5732, List.cons_subset, List.nil_subset, and_true]
  exact piece_1477_mem

theorem linked_5733 : Linked cell_5733 pieces := by
  apply Linked.of_piece piece_477 piece_477_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5733, List.cons_subset, List.nil_subset, and_true]
  exact piece_1477_mem

theorem linked_5734 : Linked cell_5734 pieces := by
  apply Linked.of_piece piece_477 piece_477_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5734, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1477_mem, piece_1478_mem⟩

theorem linked_5735 : Linked cell_5735 pieces := by
  apply Linked.of_piece piece_477 piece_477_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5735, List.cons_subset, List.nil_subset, and_true]
  exact piece_1478_mem

theorem linked_5736 : Linked cell_5736 pieces := by
  apply Linked.of_piece piece_477 piece_477_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5736, List.cons_subset, List.nil_subset, and_true]
  exact piece_1478_mem

theorem linked_5737 : Linked cell_5737 pieces := by
  apply Linked.of_piece piece_477 piece_477_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5737, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1478_mem, piece_1479_mem⟩

theorem linked_5738 : Linked cell_5738 pieces := by
  apply Linked.of_piece piece_477 piece_477_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5738, List.cons_subset, List.nil_subset, and_true]
  exact piece_1479_mem

theorem linked_5739 : Linked cell_5739 pieces := by
  apply Linked.of_piece piece_477 piece_477_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5739, List.cons_subset, List.nil_subset, and_true]
  exact piece_1479_mem

theorem linked_5740 : Linked cell_5740 pieces := by
  apply Linked.of_piece piece_477 piece_477_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5740, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1479_mem, piece_1480_mem⟩

theorem linked_5741 : Linked cell_5741 pieces := by
  apply Linked.of_piece piece_477 piece_477_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5741, List.cons_subset, List.nil_subset, and_true]
  exact piece_1480_mem

theorem linked_5742 : Linked cell_5742 pieces := by
  apply Linked.of_piece piece_477 piece_477_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5742, List.cons_subset, List.nil_subset, and_true]
  exact piece_1480_mem

theorem linked_5743 : Linked cell_5743 pieces := by
  apply Linked.of_piece piece_478 piece_478_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5743, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1479_mem, piece_1480_mem⟩

theorem linked_5744 : Linked cell_5744 pieces := by
  apply Linked.of_piece piece_478 piece_478_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5744, List.cons_subset, List.nil_subset, and_true]
  exact piece_1480_mem

theorem linked_5745 : Linked cell_5745 pieces := by
  apply Linked.of_piece piece_478 piece_478_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5745, List.cons_subset, List.nil_subset, and_true]
  exact piece_1480_mem

theorem linked_5746 : Linked cell_5746 pieces := by
  apply Linked.of_piece piece_478 piece_478_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5746, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1480_mem, piece_1481_mem⟩

theorem linked_5747 : Linked cell_5747 pieces := by
  apply Linked.of_piece piece_478 piece_478_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5747, List.cons_subset, List.nil_subset, and_true]
  exact piece_1481_mem

theorem linked_5748 : Linked cell_5748 pieces := by
  apply Linked.of_piece piece_478 piece_478_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5748, List.cons_subset, List.nil_subset, and_true]
  exact piece_1481_mem

theorem linked_5749 : Linked cell_5749 pieces := by
  apply Linked.of_piece piece_478 piece_478_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_5749, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1481_mem, piece_1482_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0114.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0114.cells,List.forall_mem_cons]
  exact ⟨linked_5700, linked_5701, linked_5702, linked_5703, linked_5704, linked_5705, linked_5706, linked_5707, linked_5708, linked_5709, linked_5710, linked_5711, linked_5712, linked_5713, linked_5714, linked_5715, linked_5716, linked_5717, linked_5718, linked_5719, linked_5720, linked_5721, linked_5722, linked_5723, linked_5724, linked_5725, linked_5726, linked_5727, linked_5728, linked_5729, linked_5730, linked_5731, linked_5732, linked_5733, linked_5734, linked_5735, linked_5736, linked_5737, linked_5738, linked_5739, linked_5740, linked_5741, linked_5742, linked_5743, linked_5744, linked_5745, linked_5746, linked_5747, linked_5748, linked_5749, by simp⟩

theorem covered : covers (17265624999999999 / 100000000000000000 : ℚ) (17421874999999999 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0114.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0114
