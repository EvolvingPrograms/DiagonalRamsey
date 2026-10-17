import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0128
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(20293749999999999 / 100000000000000000 : ℚ), (20299999999999999 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (88667191209139 / 100000000000000 : ℚ)
  w := (5090431451781 / 5000000000000 : ℚ)
  center := (20296874999999999 / 100000000000000000 : ℚ)
  supportValue := (7628007331043611 / 10000000000000000 : ℚ)
  supportSlope := (5563661286437593 / 1000000000000000 : ℚ)
  oldCenter := (7628007331043611 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_541
  oldLo := (76450000000000007 / 100000000000000000 : ℚ)
  oldHi := (76500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1766]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_6400 : Cell := { cellDefaults with
  r := (11103800547897 / 12500000000000 : ℚ)
  w := (5087870090709 / 5000000000000 : ℚ)
  newCoefficients := coefficients_540
  oldLo := (76250000000000007 / 100000000000000000 : ℚ)
  oldHi := (76300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1762]
}

def cell_6401 : Cell := { cellDefaults with
  domain := ⟨(20299999999999999 / 100000000000000000 : ℚ), (20306249999999999 / 100000000000000000 : ℚ)⟩
  r := (22187173853039 / 25000000000000 : ℚ)
  w := (10178294122667 / 10000000000000 : ℚ)
  center := (20303124999999999 / 100000000000000000 : ℚ)
  supportValue := (1525303906448859 / 2000000000000000 : ℚ)
  supportSlope := (2780075909575963 / 500000000000000 : ℚ)
  oldCenter := (1525303906448859 / 2000000000000000 : ℚ)
  oldLo := (3810893854748603 / 5000000000000000 : ℚ)
  oldHi := (76300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1761, piece_1762]
}

def cell_6402 : Cell := { cellDefaults with
  domain := ⟨(20306249999999999 / 100000000000000000 : ℚ), (20312499999999999 / 100000000000000000 : ℚ)⟩
  r := (22187173853039 / 25000000000000 : ℚ)
  w := (10178294122667 / 10000000000000 : ℚ)
  center := (20309374999999999 / 100000000000000000 : ℚ)
  supportValue := (7629995065835413 / 10000000000000000 : ℚ)
  supportSlope := (2780685313389597 / 500000000000000 : ℚ)
  oldCenter := (7629995065835413 / 10000000000000000 : ℚ)
  oldLo := (76250000000000007 / 100000000000000000 : ℚ)
  oldHi := (76350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1762, piece_1763]
}

def cell_6403 : Cell := { cellDefaults with
  domain := ⟨(20312499999999999 / 100000000000000000 : ℚ), (20318749999999999 / 100000000000000000 : ℚ)⟩
  r := (22187173853039 / 25000000000000 : ℚ)
  w := (10178294122667 / 10000000000000 : ℚ)
  center := (20315624999999999 / 100000000000000000 : ℚ)
  supportValue := (305338849723617 / 400000000000000 : ℚ)
  supportSlope := (1112517743899133 / 200000000000000 : ℚ)
  oldCenter := (305338849723617 / 400000000000000 : ℚ)
  oldLo := (76300000000000001 / 100000000000000000 : ℚ)
  oldHi := (76400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1763, piece_1764]
}

def cell_6404 : Cell := { cellDefaults with
  domain := ⟨(20318749999999999 / 100000000000000000 : ℚ), (20324999999999999 / 100000000000000000 : ℚ)⟩
  r := (22187173853039 / 25000000000000 : ℚ)
  w := (10178294122667 / 10000000000000 : ℚ)
  center := (20321874999999999 / 100000000000000000 : ℚ)
  supportValue := (3818474090839063 / 5000000000000000 : ℚ)
  supportSlope := (1390910997139283 / 250000000000000 : ℚ)
  oldCenter := (3818474090839063 / 5000000000000000 : ℚ)
  oldLo := (76350000000000007 / 100000000000000000 : ℚ)
  oldHi := (76400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1764]
}

def cell_6405 : Cell := { cellDefaults with
  domain := ⟨(20324999999999999 / 100000000000000000 : ℚ), (20331249999999999 / 100000000000000000 : ℚ)⟩
  r := (22187173853039 / 25000000000000 : ℚ)
  w := (10178294122667 / 10000000000000 : ℚ)
  center := (20328124999999999 / 100000000000000000 : ℚ)
  supportValue := (955053235120937 / 1250000000000000 : ℚ)
  supportSlope := (1112966995159681 / 200000000000000 : ℚ)
  oldCenter := (955053235120937 / 1250000000000000 : ℚ)
  oldLo := (76350000000000007 / 100000000000000000 : ℚ)
  oldHi := (76450000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1764, piece_1765]
}

def cell_6406 : Cell := { cellDefaults with
  domain := ⟨(20331249999999999 / 100000000000000000 : ℚ), (20337499999999999 / 100000000000000000 : ℚ)⟩
  r := (22187173853039 / 25000000000000 : ℚ)
  w := (10178294122667 / 10000000000000 : ℚ)
  center := (20334374999999999 / 100000000000000000 : ℚ)
  supportValue := (1910976064030719 / 2500000000000000 : ℚ)
  supportSlope := (2783025533439343 / 500000000000000 : ℚ)
  oldCenter := (1910976064030719 / 2500000000000000 : ℚ)
  oldLo := (76400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1765, piece_1766]
}

def cell_6407 : Cell := { cellDefaults with
  domain := ⟨(20337499999999999 / 100000000000000000 : ℚ), (20343749999999999 / 100000000000000000 : ℚ)⟩
  r := (22187173853039 / 25000000000000 : ℚ)
  w := (10178294122667 / 10000000000000 : ℚ)
  center := (20340624999999999 / 100000000000000000 : ℚ)
  supportValue := (3823691679177783 / 5000000000000000 : ℚ)
  supportSlope := (55671586758681 / 10000000000000 : ℚ)
  oldCenter := (3823691679177783 / 5000000000000000 : ℚ)
  oldPieces := [piece_1766]
}

def cell_6408 : Cell := { cellDefaults with
  domain := ⟨(20343749999999999 / 100000000000000000 : ℚ), (20349999999999999 / 100000000000000000 : ℚ)⟩
  r := (22187173853039 / 25000000000000 : ℚ)
  w := (10178294122667 / 10000000000000 : ℚ)
  center := (20346874999999999 / 100000000000000000 : ℚ)
  supportValue := (7650863220052021 / 10000000000000000 : ℚ)
  supportSlope := (2784147149145433 / 500000000000000 : ℚ)
  oldCenter := (7650863220052021 / 10000000000000000 : ℚ)
  oldHi := (76550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1766, piece_1767]
}

def cell_6409 : Cell := { cellDefaults with
  domain := ⟨(20349999999999999 / 100000000000000000 : ℚ), (40707541899441339 / 200000000000000000 : ℚ)⟩
  center := (81407541899441337 / 400000000000000000 : ℚ)
  supportValue := (764868774949943 / 1000000000000000 : ℚ)
  supportSlope := (2782397124678679 / 500000000000000 : ℚ)
  oldCenter := (764868774949943 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_542
  oldPieces := [piece_1766]
}

def cell_6410 : Cell := { cellDefaults with
  domain := ⟨(40707541899441339 / 200000000000000000 : ℚ), (1017877094972067 / 5000000000000000 : ℚ)⟩
  center := (81422625698324019 / 400000000000000000 : ℚ)
  supportValue := (1530157262074209 / 2000000000000000 : ℚ)
  supportSlope := (2782649137679459 / 500000000000000 : ℚ)
  oldCenter := (1530157262074209 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_542
  oldHi := (76550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1766, piece_1767]
}

def cell_6411 : Cell := { cellDefaults with
  domain := ⟨(1017877094972067 / 5000000000000000 : ℚ), (20362499999999999 / 100000000000000000 : ℚ)⟩
  center := (40720041899441339 / 200000000000000000 : ℚ)
  supportValue := (956651745798457 / 1250000000000000 : ℚ)
  supportSlope := (5566261180831283 / 1000000000000000 : ℚ)
  oldCenter := (956651745798457 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_543
  oldLo := (76500000000000001 / 100000000000000000 : ℚ)
  oldHi := (76550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1767]
}

def cell_6412 : Cell := { cellDefaults with
  domain := ⟨(20362499999999999 / 100000000000000000 : ℚ), (20368749999999999 / 100000000000000000 : ℚ)⟩
  center := (20365624999999999 / 100000000000000000 : ℚ)
  supportValue := (7656333589235693 / 10000000000000000 : ℚ)
  supportSlope := (2783593905782311 / 500000000000000 : ℚ)
  oldCenter := (7656333589235693 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_543
  oldLo := (76500000000000001 / 100000000000000000 : ℚ)
  oldHi := (76600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1767, piece_1768]
}

def cell_6413 : Cell := { cellDefaults with
  domain := ⟨(20368749999999999 / 100000000000000000 : ℚ), (20374999999999999 / 100000000000000000 : ℚ)⟩
  center := (20371874999999999 / 100000000000000000 : ℚ)
  supportValue := (239369171993913 / 312500000000000 : ℚ)
  supportSlope := (556840117175561 / 100000000000000 : ℚ)
  oldCenter := (239369171993913 / 312500000000000 : ℚ)
  newCoefficients := coefficients_543
  oldLo := (76550000000000007 / 100000000000000000 : ℚ)
  oldHi := (76650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1768, piece_1769]
}

def cell_6414 : Cell := { cellDefaults with
  domain := ⟨(20374999999999999 / 100000000000000000 : ℚ), (20381249999999999 / 100000000000000000 : ℚ)⟩
  center := (20378124999999999 / 100000000000000000 : ℚ)
  supportValue := (7663294074299771 / 10000000000000000 : ℚ)
  supportSlope := (1392403367724171 / 250000000000000 : ℚ)
  oldCenter := (7663294074299771 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_543
  oldLo := (76600000000000001 / 100000000000000000 : ℚ)
  oldHi := (38350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1769, piece_1770]
}

def cell_6415 : Cell := { cellDefaults with
  domain := ⟨(20381249999999999 / 100000000000000000 : ℚ), (20387499999999999 / 100000000000000000 : ℚ)⟩
  center := (20384374999999999 / 100000000000000000 : ℚ)
  supportValue := (7666775402543843 / 10000000000000000 : ℚ)
  supportSlope := (1392661101296433 / 250000000000000 : ℚ)
  oldCenter := (7666775402543843 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_543
  oldLo := (76650000000000007 / 100000000000000000 : ℚ)
  oldHi := (38350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1770]
}

def cell_6416 : Cell := { cellDefaults with
  domain := ⟨(20387499999999999 / 100000000000000000 : ℚ), (20393749999999999 / 100000000000000000 : ℚ)⟩
  center := (20390624999999999 / 100000000000000000 : ℚ)
  supportValue := (767025748787181 / 1000000000000000 : ℚ)
  supportSlope := (222874052939801 / 40000000000000 : ℚ)
  oldCenter := (767025748787181 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_543
  oldLo := (76650000000000007 / 100000000000000000 : ℚ)
  oldHi := (76750000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1770, piece_1771]
}

def cell_6417 : Cell := { cellDefaults with
  domain := ⟨(20393749999999999 / 100000000000000000 : ℚ), (20399999999999999 / 100000000000000000 : ℚ)⟩
  center := (20396874999999999 / 100000000000000000 : ℚ)
  supportValue := (7673740234164909 / 10000000000000000 : ℚ)
  supportSlope := (5573061690059333 / 1000000000000000 : ℚ)
  oldCenter := (7673740234164909 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_543
  oldLo := (38350000000000001 / 50000000000000000 : ℚ)
  oldHi := (7677094972067039 / 10000000000000000 : ℚ)
  oldPieces := [piece_1771, piece_1772]
}

def cell_6418 : Cell := { cellDefaults with
  domain := ⟨(20399999999999999 / 100000000000000000 : ℚ), (20406249999999999 / 100000000000000000 : ℚ)⟩
  r := (88585888222759 / 100000000000000 : ℚ)
  w := (10183446989841 / 10000000000000 : ℚ)
  center := (20403124999999999 / 100000000000000000 : ℚ)
  supportValue := (1534450730515417 / 2000000000000000 : ℚ)
  supportSlope := (2784796930659361 / 500000000000000 : ℚ)
  oldCenter := (1534450730515417 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_544
  oldLo := (38350000000000001 / 50000000000000000 : ℚ)
  oldHi := (76750000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1771]
}

def cell_6419 : Cell := { cellDefaults with
  domain := ⟨(20406249999999999 / 100000000000000000 : ℚ), (20412499999999999 / 100000000000000000 : ℚ)⟩
  r := (88585888222759 / 100000000000000 : ℚ)
  w := (10183446989841 / 10000000000000 : ℚ)
  center := (20409374999999999 / 100000000000000000 : ℚ)
  supportValue := (7675735044581647 / 10000000000000000 : ℚ)
  supportSlope := (2785370907413487 / 500000000000000 : ℚ)
  oldCenter := (7675735044581647 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_544
  oldLo := (38350000000000001 / 50000000000000000 : ℚ)
  oldHi := (38400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1771, piece_1772, piece_1773]
}

def cell_6420 : Cell := { cellDefaults with
  domain := ⟨(20412499999999999 / 100000000000000000 : ℚ), (20418749999999999 / 100000000000000000 : ℚ)⟩
  r := (88585888222759 / 100000000000000 : ℚ)
  w := (10183446989841 / 10000000000000 : ℚ)
  center := (20415624999999999 / 100000000000000000 : ℚ)
  supportValue := (7679217133957483 / 10000000000000000 : ℚ)
  supportSlope := (2785976396564749 / 500000000000000 : ℚ)
  oldCenter := (7679217133957483 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_544
  oldLo := (7677094972067039 / 10000000000000000 : ℚ)
  oldHi := (76850000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1773, piece_1774]
}

def cell_6421 : Cell := { cellDefaults with
  domain := ⟨(20418749999999999 / 100000000000000000 : ℚ), (20424999999999999 / 100000000000000000 : ℚ)⟩
  r := (88585888222759 / 100000000000000 : ℚ)
  w := (10183446989841 / 10000000000000 : ℚ)
  center := (20421874999999999 / 100000000000000000 : ℚ)
  supportValue := (1920674980934877 / 2500000000000000 : ℚ)
  supportSlope := (5573094044677873 / 1000000000000000 : ℚ)
  oldCenter := (1920674980934877 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_544
  oldLo := (38400000000000001 / 50000000000000000 : ℚ)
  oldHi := (76850000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1774]
}

def cell_6422 : Cell := { cellDefaults with
  domain := ⟨(20424999999999999 / 100000000000000000 : ℚ), (20431249999999999 / 100000000000000000 : ℚ)⟩
  r := (88585888222759 / 100000000000000 : ℚ)
  w := (10183446989841 / 10000000000000 : ℚ)
  center := (20428124999999999 / 100000000000000000 : ℚ)
  supportValue := (7686183468889781 / 10000000000000000 : ℚ)
  supportSlope := (5574186181679153 / 1000000000000000 : ℚ)
  oldCenter := (7686183468889781 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_544
  oldLo := (38400000000000001 / 50000000000000000 : ℚ)
  oldHi := (38450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1774, piece_1775]
}

def cell_6423 : Cell := { cellDefaults with
  domain := ⟨(20431249999999999 / 100000000000000000 : ℚ), (20437499999999999 / 100000000000000000 : ℚ)⟩
  r := (88585888222759 / 100000000000000 : ℚ)
  w := (10183446989841 / 10000000000000 : ℚ)
  center := (20434374999999999 / 100000000000000000 : ℚ)
  supportValue := (7689667743885257 / 10000000000000000 : ℚ)
  supportSlope := (1393848462466707 / 250000000000000 : ℚ)
  oldCenter := (7689667743885257 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_544
  oldLo := (76850000000000007 / 100000000000000000 : ℚ)
  oldHi := (76950000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1775, piece_1776]
}

def cell_6424 : Cell := { cellDefaults with
  domain := ⟨(20437499999999999 / 100000000000000000 : ℚ), (20443749999999999 / 100000000000000000 : ℚ)⟩
  r := (88585888222759 / 100000000000000 : ℚ)
  w := (10183446989841 / 10000000000000 : ℚ)
  center := (20440624999999999 / 100000000000000000 : ℚ)
  supportValue := (3846576341998801 / 5000000000000000 : ℚ)
  supportSlope := (697073518743041 / 125000000000000 : ℚ)
  oldCenter := (3846576341998801 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_544
  oldLo := (38450000000000001 / 50000000000000000 : ℚ)
  oldHi := (76950000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1776]
}

def cell_6425 : Cell := { cellDefaults with
  domain := ⟨(20443749999999999 / 100000000000000000 : ℚ), (20449999999999999 / 100000000000000000 : ℚ)⟩
  r := (88585888222759 / 100000000000000 : ℚ)
  w := (10183446989841 / 10000000000000 : ℚ)
  center := (20446874999999999 / 100000000000000000 : ℚ)
  supportValue := (153932767566063 / 200000000000000 : ℚ)
  supportSlope := (11155248586518951 / 2000000000000000 : ℚ)
  oldCenter := (153932767566063 / 200000000000000 : ℚ)
  newCoefficients := coefficients_544
  oldLo := (38450000000000001 / 50000000000000000 : ℚ)
  oldHi := (38500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1776, piece_1777]
}

def cell_6426 : Cell := { cellDefaults with
  domain := ⟨(20449999999999999 / 100000000000000000 : ℚ), (20456249999999999 / 100000000000000000 : ℚ)⟩
  r := (22126197217661 / 25000000000000 : ℚ)
  w := (2546511482503 / 2500000000000 : ℚ)
  center := (20453124999999999 / 100000000000000000 : ℚ)
  supportValue := (7695152572233379 / 10000000000000000 : ℚ)
  supportSlope := (5574281606133269 / 1000000000000000 : ℚ)
  oldCenter := (7695152572233379 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_545
  oldLo := (38450000000000001 / 50000000000000000 : ℚ)
  oldHi := (38500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1776, piece_1777]
}

def cell_6427 : Cell := { cellDefaults with
  domain := ⟨(20456249999999999 / 100000000000000000 : ℚ), (20462499999999999 / 100000000000000000 : ℚ)⟩
  r := (22126197217661 / 25000000000000 : ℚ)
  w := (2546511482503 / 2500000000000 : ℚ)
  center := (20459374999999999 / 100000000000000000 : ℚ)
  supportValue := (7698636828625961 / 10000000000000000 : ℚ)
  supportSlope := (2787743691160749 / 500000000000000 : ℚ)
  oldCenter := (7698636828625961 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_545
  oldLo := (76950000000000007 / 100000000000000000 : ℚ)
  oldHi := (77050000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1777, piece_1778]
}

def cell_6428 : Cell := { cellDefaults with
  domain := ⟨(20462499999999999 / 100000000000000000 : ℚ), (20468749999999999 / 100000000000000000 : ℚ)⟩
  r := (22126197217661 / 25000000000000 : ℚ)
  w := (2546511482503 / 2500000000000 : ℚ)
  center := (20465624999999999 / 100000000000000000 : ℚ)
  supportValue := (7702121827016217 / 10000000000000000 : ℚ)
  supportSlope := (5576556307817171 / 1000000000000000 : ℚ)
  oldCenter := (7702121827016217 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_545
  oldLo := (38500000000000001 / 50000000000000000 : ℚ)
  oldHi := (77050000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1778]
}

def cell_6429 : Cell := { cellDefaults with
  domain := ⟨(20468749999999999 / 100000000000000000 : ℚ), (20474999999999999 / 100000000000000000 : ℚ)⟩
  r := (22126197217661 / 25000000000000 : ℚ)
  w := (2546511482503 / 2500000000000 : ℚ)
  center := (20471874999999999 / 100000000000000000 : ℚ)
  supportValue := (770560757839483 / 1000000000000000 : ℚ)
  supportSlope := (1394428838179973 / 250000000000000 : ℚ)
  oldCenter := (770560757839483 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_545
  oldLo := (38500000000000001 / 50000000000000000 : ℚ)
  oldHi := (38550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1778, piece_1779]
}

def cell_6430 : Cell := { cellDefaults with
  domain := ⟨(20474999999999999 / 100000000000000000 : ℚ), (20481249999999999 / 100000000000000000 : ℚ)⟩
  r := (22126197217661 / 25000000000000 : ℚ)
  w := (2546511482503 / 2500000000000 : ℚ)
  center := (20478124999999999 / 100000000000000000 : ℚ)
  supportValue := (1927273503648543 / 2500000000000000 : ℚ)
  supportSlope := (2789459586243659 / 500000000000000 : ℚ)
  oldCenter := (1927273503648543 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_545
  oldLo := (77050000000000007 / 100000000000000000 : ℚ)
  oldHi := (77150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1779, piece_1780]
}

def cell_6431 : Cell := { cellDefaults with
  domain := ⟨(20481249999999999 / 100000000000000000 : ℚ), (20487499999999999 / 100000000000000000 : ℚ)⟩
  r := (22126197217661 / 25000000000000 : ℚ)
  w := (2546511482503 / 2500000000000 : ℚ)
  center := (20484374999999999 / 100000000000000000 : ℚ)
  supportValue := (3856290578766821 / 5000000000000000 : ℚ)
  supportSlope := (1395010424110943 / 250000000000000 : ℚ)
  oldCenter := (3856290578766821 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_545
  oldLo := (38550000000000001 / 50000000000000000 : ℚ)
  oldHi := (77150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1780]
}

def cell_6432 : Cell := { cellDefaults with
  domain := ⟨(20487499999999999 / 100000000000000000 : ℚ), (20493749999999999 / 100000000000000000 : ℚ)⟩
  r := (22126197217661 / 25000000000000 : ℚ)
  w := (2546511482503 / 2500000000000 : ℚ)
  center := (20490624999999999 / 100000000000000000 : ℚ)
  supportValue := (771606905224763 / 1000000000000000 : ℚ)
  supportSlope := (558114415018629 / 100000000000000 : ℚ)
  oldCenter := (771606905224763 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_545
  oldLo := (38550000000000001 / 50000000000000000 : ℚ)
  oldHi := (38600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1780, piece_1781]
}

def cell_6433 : Cell := { cellDefaults with
  domain := ⟨(20493749999999999 / 100000000000000000 : ℚ), (20499999999999999 / 100000000000000000 : ℚ)⟩
  r := (22126197217661 / 25000000000000 : ℚ)
  w := (2546511482503 / 2500000000000 : ℚ)
  center := (20496874999999999 / 100000000000000000 : ℚ)
  supportValue := (7719557665334947 / 10000000000000000 : ℚ)
  supportSlope := (5582346002441341 / 1000000000000000 : ℚ)
  oldCenter := (7719557665334947 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_545
  oldLo := (77150000000000007 / 100000000000000000 : ℚ)
  oldHi := (9656250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1781, piece_1782]
}

def cell_6434 : Cell := { cellDefaults with
  domain := ⟨(20499999999999999 / 100000000000000000 : ℚ), (20506249999999999 / 100000000000000000 : ℚ)⟩
  r := (88423892355091 / 100000000000000 : ℚ)
  w := (2547165241581 / 2500000000000 : ℚ)
  center := (20503124999999999 / 100000000000000000 : ℚ)
  supportValue := (7718073169030709 / 10000000000000000 : ℚ)
  supportSlope := (5578985095315403 / 1000000000000000 : ℚ)
  oldCenter := (7718073169030709 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_546
  oldLo := (77150000000000007 / 100000000000000000 : ℚ)
  oldHi := (38600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1781]
}

def cell_6435 : Cell := { cellDefaults with
  domain := ⟨(20506249999999999 / 100000000000000000 : ℚ), (20512499999999999 / 100000000000000000 : ℚ)⟩
  r := (88423892355091 / 100000000000000 : ℚ)
  w := (2547165241581 / 2500000000000 : ℚ)
  center := (20509374999999999 / 100000000000000000 : ℚ)
  supportValue := (772156036645627 / 1000000000000000 : ℚ)
  supportSlope := (558002810599767 / 100000000000000 : ℚ)
  oldCenter := (772156036645627 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_546
  oldLo := (77150000000000007 / 100000000000000000 : ℚ)
  oldHi := (9656250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1781, piece_1782]
}

def cell_6436 : Cell := { cellDefaults with
  domain := ⟨(20512499999999999 / 100000000000000000 : ℚ), (20518749999999999 / 100000000000000000 : ℚ)⟩
  r := (88423892355091 / 100000000000000 : ℚ)
  w := (2547165241581 / 2500000000000 : ℚ)
  center := (20515624999999999 / 100000000000000000 : ℚ)
  supportValue := (3862524157217899 / 5000000000000000 : ℚ)
  supportSlope := (5581229099099971 / 1000000000000000 : ℚ)
  oldCenter := (3862524157217899 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_546
  oldLo := (38600000000000001 / 50000000000000000 : ℚ)
  oldHi := (38650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1782, piece_1783]
}

def cell_6437 : Cell := { cellDefaults with
  domain := ⟨(20518749999999999 / 100000000000000000 : ℚ), (20524999999999999 / 100000000000000000 : ℚ)⟩
  r := (88423892355091 / 100000000000000 : ℚ)
  w := (2547165241581 / 2500000000000 : ℚ)
  center := (20521874999999999 / 100000000000000000 : ℚ)
  supportValue := (1932134226064127 / 2500000000000000 : ℚ)
  supportSlope := (5582429005430711 / 1000000000000000 : ℚ)
  oldCenter := (1932134226064127 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_546
  oldLo := (9656250000000001 / 12500000000000000 : ℚ)
  oldHi := (7732402234636871 / 10000000000000000 : ℚ)
  oldPieces := [piece_1783, piece_1784]
}

def cell_6438 : Cell := { cellDefaults with
  domain := ⟨(20524999999999999 / 100000000000000000 : ℚ), (20531249999999999 / 100000000000000000 : ℚ)⟩
  r := (88423892355091 / 100000000000000 : ℚ)
  w := (2547165241581 / 2500000000000 : ℚ)
  center := (20528124999999999 / 100000000000000000 : ℚ)
  supportValue := (7732026240351759 / 10000000000000000 : ℚ)
  supportSlope := (5583482778408921 / 1000000000000000 : ℚ)
  oldCenter := (7732026240351759 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_546
  oldLo := (38650000000000001 / 50000000000000000 : ℚ)
  oldHi := (9668750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1784, piece_1785]
}

def cell_6439 : Cell := { cellDefaults with
  domain := ⟨(20531249999999999 / 100000000000000000 : ℚ), (20537499999999999 / 100000000000000000 : ℚ)⟩
  r := (88423892355091 / 100000000000000 : ℚ)
  w := (2547165241581 / 2500000000000 : ℚ)
  center := (20534374999999999 / 100000000000000000 : ℚ)
  supportValue := (7735516325339431 / 10000000000000000 : ℚ)
  supportSlope := (5584647723125613 / 1000000000000000 : ℚ)
  oldCenter := (7735516325339431 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_546
  oldLo := (7732402234636871 / 10000000000000000 : ℚ)
  oldHi := (38700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1785, piece_1786]
}

def cell_6440 : Cell := { cellDefaults with
  domain := ⟨(20537499999999999 / 100000000000000000 : ℚ), (20543749999999999 / 100000000000000000 : ℚ)⟩
  r := (88423892355091 / 100000000000000 : ℚ)
  w := (2547165241581 / 2500000000000 : ℚ)
  center := (20540624999999999 / 100000000000000000 : ℚ)
  supportValue := (7739007085975661 / 10000000000000000 : ℚ)
  supportSlope := (5585845440686299 / 1000000000000000 : ℚ)
  oldCenter := (7739007085975661 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_546
  oldLo := (9668750000000001 / 12500000000000000 : ℚ)
  oldHi := (9681250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1786, piece_1787]
}

def cell_6441 : Cell := { cellDefaults with
  domain := ⟨(20543749999999999 / 100000000000000000 : ℚ), (20549999999999999 / 100000000000000000 : ℚ)⟩
  r := (88423892355091 / 100000000000000 : ℚ)
  w := (2547165241581 / 2500000000000 : ℚ)
  center := (20546874999999999 / 100000000000000000 : ℚ)
  supportValue := (3871249278489617 / 5000000000000000 : ℚ)
  supportSlope := (5586953706554709 / 1000000000000000 : ℚ)
  oldCenter := (3871249278489617 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_546
  oldLo := (38700000000000001 / 50000000000000000 : ℚ)
  oldHi := (9681250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1787]
}

def cell_6442 : Cell := { cellDefaults with
  domain := ⟨(20549999999999999 / 100000000000000000 : ℚ), (20556249999999999 / 100000000000000000 : ℚ)⟩
  r := (11042899451591 / 12500000000000 : ℚ)
  w := (10191291330347 / 10000000000000 : ℚ)
  center := (20553124999999999 / 100000000000000000 : ℚ)
  supportValue := (7741014990381447 / 10000000000000000 : ℚ)
  supportSlope := (5583529079880023 / 1000000000000000 : ℚ)
  oldCenter := (7741014990381447 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_547
  oldLo := (9668750000000001 / 12500000000000000 : ℚ)
  oldHi := (9681250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1786, piece_1787]
}

def cell_6443 : Cell := { cellDefaults with
  domain := ⟨(20556249999999999 / 100000000000000000 : ℚ), (20562499999999999 / 100000000000000000 : ℚ)⟩
  r := (11042899451591 / 12500000000000 : ℚ)
  w := (10191291330347 / 10000000000000 : ℚ)
  center := (20559374999999999 / 100000000000000000 : ℚ)
  supportValue := (7744505088240469 / 10000000000000000 : ℚ)
  supportSlope := (1116945174426931 / 200000000000000 : ℚ)
  oldCenter := (7744505088240469 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_547
  oldLo := (38700000000000001 / 50000000000000000 : ℚ)
  oldHi := (38750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1787, piece_1788]
}

def cell_6444 : Cell := { cellDefaults with
  domain := ⟨(20562499999999999 / 100000000000000000 : ℚ), (20568749999999999 / 100000000000000000 : ℚ)⟩
  r := (11042899451591 / 12500000000000 : ℚ)
  w := (10191291330347 / 10000000000000 : ℚ)
  center := (20565624999999999 / 100000000000000000 : ℚ)
  supportValue := (7747995859237617 / 10000000000000000 : ℚ)
  supportSlope := (5585891527893239 / 1000000000000000 : ℚ)
  oldCenter := (7747995859237617 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_547
  oldLo := (9681250000000001 / 12500000000000000 : ℚ)
  oldHi := (38750000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1788]
}

def cell_6445 : Cell := { cellDefaults with
  domain := ⟨(20568749999999999 / 100000000000000000 : ℚ), (20574999999999999 / 100000000000000000 : ℚ)⟩
  r := (11042899451591 / 12500000000000 : ℚ)
  w := (10191291330347 / 10000000000000 : ℚ)
  center := (20571874999999999 / 100000000000000000 : ℚ)
  supportValue := (310059495103511 / 400000000000000 : ℚ)
  supportSlope := (223477606264737 / 40000000000000 : ℚ)
  oldCenter := (310059495103511 / 400000000000000 : ℚ)
  newCoefficients := coefficients_547
  oldLo := (9681250000000001 / 12500000000000000 : ℚ)
  oldHi := (9693750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1788, piece_1789]
}

def cell_6446 : Cell := { cellDefaults with
  domain := ⟨(20574999999999999 / 100000000000000000 : ℚ), (20581249999999999 / 100000000000000000 : ℚ)⟩
  r := (11042899451591 / 12500000000000 : ℚ)
  w := (10191291330347 / 10000000000000 : ℚ)
  center := (20578124999999999 / 100000000000000000 : ℚ)
  supportValue := (310199185650633 / 400000000000000 : ℚ)
  supportSlope := (2794067451254989 / 500000000000000 : ℚ)
  oldCenter := (310199185650633 / 400000000000000 : ℚ)
  newCoefficients := coefficients_547
  oldLo := (38750000000000001 / 50000000000000000 : ℚ)
  oldHi := (38800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1789, piece_1790]
}

def cell_6447 : Cell := { cellDefaults with
  domain := ⟨(20581249999999999 / 100000000000000000 : ℚ), (20587499999999999 / 100000000000000000 : ℚ)⟩
  r := (11042899451591 / 12500000000000 : ℚ)
  w := (10191291330347 / 10000000000000 : ℚ)
  center := (20584374999999999 / 100000000000000000 : ℚ)
  supportValue := (242452266954909 / 312500000000000 : ℚ)
  supportSlope := (2794664255627133 / 500000000000000 : ℚ)
  oldCenter := (242452266954909 / 312500000000000 : ℚ)
  newCoefficients := coefficients_547
  oldLo := (9693750000000001 / 12500000000000000 : ℚ)
  oldHi := (9706250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1790, piece_1791]
}

def cell_6448 : Cell := { cellDefaults with
  domain := ⟨(20587499999999999 / 100000000000000000 : ℚ), (20593749999999999 / 100000000000000000 : ℚ)⟩
  r := (11042899451591 / 12500000000000 : ℚ)
  w := (10191291330347 / 10000000000000 : ℚ)
  center := (20590624999999999 / 100000000000000000 : ℚ)
  supportValue := (7761966189924621 / 10000000000000000 : ℚ)
  supportSlope := (5590371854900411 / 1000000000000000 : ℚ)
  oldCenter := (7761966189924621 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_547
  oldLo := (38800000000000001 / 50000000000000000 : ℚ)
  oldHi := (9706250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1791]
}

def cell_6449 : Cell := { cellDefaults with
  domain := ⟨(20593749999999999 / 100000000000000000 : ℚ), (20599999999999999 / 100000000000000000 : ℚ)⟩
  r := (11042899451591 / 12500000000000 : ℚ)
  w := (10191291330347 / 10000000000000 : ℚ)
  center := (20596874999999999 / 100000000000000000 : ℚ)
  supportValue := (1941365145664757 / 2500000000000000 : ℚ)
  supportSlope := (1118307744852487 / 200000000000000 : ℚ)
  oldCenter := (1941365145664757 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_547
  oldLo := (38800000000000001 / 50000000000000000 : ℚ)
  oldHi := (38850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1791, piece_1792]
}

theorem check_6400 : SourceCertificateFamily.RightNormalized.check cell_6400 = true := by
  decide +kernel

theorem check_6401 : SourceCertificateFamily.RightNormalized.check cell_6401 = true := by
  decide +kernel

theorem check_6402 : SourceCertificateFamily.RightNormalized.check cell_6402 = true := by
  decide +kernel

theorem check_6403 : SourceCertificateFamily.RightNormalized.check cell_6403 = true := by
  decide +kernel

theorem check_6404 : SourceCertificateFamily.RightNormalized.check cell_6404 = true := by
  decide +kernel

theorem check_6405 : SourceCertificateFamily.RightNormalized.check cell_6405 = true := by
  decide +kernel

theorem check_6406 : SourceCertificateFamily.RightNormalized.check cell_6406 = true := by
  decide +kernel

theorem check_6407 : SourceCertificateFamily.RightNormalized.check cell_6407 = true := by
  decide +kernel

theorem check_6408 : SourceCertificateFamily.RightNormalized.check cell_6408 = true := by
  decide +kernel

theorem check_6409 : SourceCertificateFamily.RightNormalized.check cell_6409 = true := by
  decide +kernel

theorem check_6410 : SourceCertificateFamily.RightNormalized.check cell_6410 = true := by
  decide +kernel

theorem check_6411 : SourceCertificateFamily.RightNormalized.check cell_6411 = true := by
  decide +kernel

theorem check_6412 : SourceCertificateFamily.RightNormalized.check cell_6412 = true := by
  decide +kernel

theorem check_6413 : SourceCertificateFamily.RightNormalized.check cell_6413 = true := by
  decide +kernel

theorem check_6414 : SourceCertificateFamily.RightNormalized.check cell_6414 = true := by
  decide +kernel

theorem check_6415 : SourceCertificateFamily.RightNormalized.check cell_6415 = true := by
  decide +kernel

theorem check_6416 : SourceCertificateFamily.RightNormalized.check cell_6416 = true := by
  decide +kernel

theorem check_6417 : SourceCertificateFamily.RightNormalized.check cell_6417 = true := by
  decide +kernel

theorem check_6418 : SourceCertificateFamily.RightNormalized.check cell_6418 = true := by
  decide +kernel

theorem check_6419 : SourceCertificateFamily.RightNormalized.check cell_6419 = true := by
  decide +kernel

theorem check_6420 : SourceCertificateFamily.RightNormalized.check cell_6420 = true := by
  decide +kernel

theorem check_6421 : SourceCertificateFamily.RightNormalized.check cell_6421 = true := by
  decide +kernel

theorem check_6422 : SourceCertificateFamily.RightNormalized.check cell_6422 = true := by
  decide +kernel

theorem check_6423 : SourceCertificateFamily.RightNormalized.check cell_6423 = true := by
  decide +kernel

theorem check_6424 : SourceCertificateFamily.RightNormalized.check cell_6424 = true := by
  decide +kernel

theorem check_6425 : SourceCertificateFamily.RightNormalized.check cell_6425 = true := by
  decide +kernel

theorem check_6426 : SourceCertificateFamily.RightNormalized.check cell_6426 = true := by
  decide +kernel

theorem check_6427 : SourceCertificateFamily.RightNormalized.check cell_6427 = true := by
  decide +kernel

theorem check_6428 : SourceCertificateFamily.RightNormalized.check cell_6428 = true := by
  decide +kernel

theorem check_6429 : SourceCertificateFamily.RightNormalized.check cell_6429 = true := by
  decide +kernel

theorem check_6430 : SourceCertificateFamily.RightNormalized.check cell_6430 = true := by
  decide +kernel

theorem check_6431 : SourceCertificateFamily.RightNormalized.check cell_6431 = true := by
  decide +kernel

theorem check_6432 : SourceCertificateFamily.RightNormalized.check cell_6432 = true := by
  decide +kernel

theorem check_6433 : SourceCertificateFamily.RightNormalized.check cell_6433 = true := by
  decide +kernel

theorem check_6434 : SourceCertificateFamily.RightNormalized.check cell_6434 = true := by
  decide +kernel

theorem check_6435 : SourceCertificateFamily.RightNormalized.check cell_6435 = true := by
  decide +kernel

theorem check_6436 : SourceCertificateFamily.RightNormalized.check cell_6436 = true := by
  decide +kernel

theorem check_6437 : SourceCertificateFamily.RightNormalized.check cell_6437 = true := by
  decide +kernel

theorem check_6438 : SourceCertificateFamily.RightNormalized.check cell_6438 = true := by
  decide +kernel

theorem check_6439 : SourceCertificateFamily.RightNormalized.check cell_6439 = true := by
  decide +kernel

theorem check_6440 : SourceCertificateFamily.RightNormalized.check cell_6440 = true := by
  decide +kernel

theorem check_6441 : SourceCertificateFamily.RightNormalized.check cell_6441 = true := by
  decide +kernel

theorem check_6442 : SourceCertificateFamily.RightNormalized.check cell_6442 = true := by
  decide +kernel

theorem check_6443 : SourceCertificateFamily.RightNormalized.check cell_6443 = true := by
  decide +kernel

theorem check_6444 : SourceCertificateFamily.RightNormalized.check cell_6444 = true := by
  decide +kernel

theorem check_6445 : SourceCertificateFamily.RightNormalized.check cell_6445 = true := by
  decide +kernel

theorem check_6446 : SourceCertificateFamily.RightNormalized.check cell_6446 = true := by
  decide +kernel

theorem check_6447 : SourceCertificateFamily.RightNormalized.check cell_6447 = true := by
  decide +kernel

theorem check_6448 : SourceCertificateFamily.RightNormalized.check cell_6448 = true := by
  decide +kernel

theorem check_6449 : SourceCertificateFamily.RightNormalized.check cell_6449 = true := by
  decide +kernel

def cells : List Cell := [cell_6400, cell_6401, cell_6402, cell_6403, cell_6404, cell_6405, cell_6406, cell_6407, cell_6408, cell_6409, cell_6410, cell_6411, cell_6412, cell_6413, cell_6414, cell_6415, cell_6416, cell_6417, cell_6418, cell_6419, cell_6420, cell_6421, cell_6422, cell_6423, cell_6424, cell_6425, cell_6426, cell_6427, cell_6428, cell_6429, cell_6430, cell_6431, cell_6432, cell_6433, cell_6434, cell_6435, cell_6436, cell_6437, cell_6438, cell_6439, cell_6440, cell_6441, cell_6442, cell_6443, cell_6444, cell_6445, cell_6446, cell_6447, cell_6448, cell_6449]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_6400, SourceCertificateFamily.of_right_checked check_6401, SourceCertificateFamily.of_right_checked check_6402, SourceCertificateFamily.of_right_checked check_6403, SourceCertificateFamily.of_right_checked check_6404, SourceCertificateFamily.of_right_checked check_6405, SourceCertificateFamily.of_right_checked check_6406, SourceCertificateFamily.of_right_checked check_6407, SourceCertificateFamily.of_right_checked check_6408, SourceCertificateFamily.of_right_checked check_6409, SourceCertificateFamily.of_right_checked check_6410, SourceCertificateFamily.of_right_checked check_6411, SourceCertificateFamily.of_right_checked check_6412, SourceCertificateFamily.of_right_checked check_6413, SourceCertificateFamily.of_right_checked check_6414, SourceCertificateFamily.of_right_checked check_6415, SourceCertificateFamily.of_right_checked check_6416, SourceCertificateFamily.of_right_checked check_6417, SourceCertificateFamily.of_right_checked check_6418, SourceCertificateFamily.of_right_checked check_6419, SourceCertificateFamily.of_right_checked check_6420, SourceCertificateFamily.of_right_checked check_6421, SourceCertificateFamily.of_right_checked check_6422, SourceCertificateFamily.of_right_checked check_6423, SourceCertificateFamily.of_right_checked check_6424, SourceCertificateFamily.of_right_checked check_6425, SourceCertificateFamily.of_right_checked check_6426, SourceCertificateFamily.of_right_checked check_6427, SourceCertificateFamily.of_right_checked check_6428, SourceCertificateFamily.of_right_checked check_6429, SourceCertificateFamily.of_right_checked check_6430, SourceCertificateFamily.of_right_checked check_6431, SourceCertificateFamily.of_right_checked check_6432, SourceCertificateFamily.of_right_checked check_6433, SourceCertificateFamily.of_right_checked check_6434, SourceCertificateFamily.of_right_checked check_6435, SourceCertificateFamily.of_right_checked check_6436, SourceCertificateFamily.of_right_checked check_6437, SourceCertificateFamily.of_right_checked check_6438, SourceCertificateFamily.of_right_checked check_6439, SourceCertificateFamily.of_right_checked check_6440, SourceCertificateFamily.of_right_checked check_6441, SourceCertificateFamily.of_right_checked check_6442, SourceCertificateFamily.of_right_checked check_6443, SourceCertificateFamily.of_right_checked check_6444, SourceCertificateFamily.of_right_checked check_6445, SourceCertificateFamily.of_right_checked check_6446, SourceCertificateFamily.of_right_checked check_6447, SourceCertificateFamily.of_right_checked check_6448, SourceCertificateFamily.of_right_checked check_6449, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0128

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0128
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0128
open AnalyticBounds.ExpressionCertificate

theorem linked_6400 : Linked cell_6400 pieces := by
  apply Linked.of_piece piece_540 piece_540_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6400, List.cons_subset, List.nil_subset, and_true]
  exact piece_1762_mem

theorem linked_6401 : Linked cell_6401 pieces := by
  apply Linked.of_piece piece_541 piece_541_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6401, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1761_mem, piece_1762_mem⟩

theorem linked_6402 : Linked cell_6402 pieces := by
  apply Linked.of_piece piece_541 piece_541_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6402, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1762_mem, piece_1763_mem⟩

theorem linked_6403 : Linked cell_6403 pieces := by
  apply Linked.of_piece piece_541 piece_541_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6403, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1763_mem, piece_1764_mem⟩

theorem linked_6404 : Linked cell_6404 pieces := by
  apply Linked.of_piece piece_541 piece_541_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6404, List.cons_subset, List.nil_subset, and_true]
  exact piece_1764_mem

theorem linked_6405 : Linked cell_6405 pieces := by
  apply Linked.of_piece piece_541 piece_541_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6405, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1764_mem, piece_1765_mem⟩

theorem linked_6406 : Linked cell_6406 pieces := by
  apply Linked.of_piece piece_541 piece_541_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6406, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1765_mem, piece_1766_mem⟩

theorem linked_6407 : Linked cell_6407 pieces := by
  apply Linked.of_piece piece_541 piece_541_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6407, List.cons_subset, List.nil_subset, and_true]
  exact piece_1766_mem

theorem linked_6408 : Linked cell_6408 pieces := by
  apply Linked.of_piece piece_541 piece_541_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6408, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1766_mem, piece_1767_mem⟩

theorem linked_6409 : Linked cell_6409 pieces := by
  apply Linked.of_piece piece_542 piece_542_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6409, List.cons_subset, List.nil_subset, and_true]
  exact piece_1766_mem

theorem linked_6410 : Linked cell_6410 pieces := by
  apply Linked.of_piece piece_542 piece_542_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6410, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1766_mem, piece_1767_mem⟩

theorem linked_6411 : Linked cell_6411 pieces := by
  apply Linked.of_piece piece_543 piece_543_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6411, List.cons_subset, List.nil_subset, and_true]
  exact piece_1767_mem

theorem linked_6412 : Linked cell_6412 pieces := by
  apply Linked.of_piece piece_543 piece_543_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6412, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1767_mem, piece_1768_mem⟩

theorem linked_6413 : Linked cell_6413 pieces := by
  apply Linked.of_piece piece_543 piece_543_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6413, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1768_mem, piece_1769_mem⟩

theorem linked_6414 : Linked cell_6414 pieces := by
  apply Linked.of_piece piece_543 piece_543_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6414, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1769_mem, piece_1770_mem⟩

theorem linked_6415 : Linked cell_6415 pieces := by
  apply Linked.of_piece piece_543 piece_543_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6415, List.cons_subset, List.nil_subset, and_true]
  exact piece_1770_mem

theorem linked_6416 : Linked cell_6416 pieces := by
  apply Linked.of_piece piece_543 piece_543_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6416, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1770_mem, piece_1771_mem⟩

theorem linked_6417 : Linked cell_6417 pieces := by
  apply Linked.of_piece piece_543 piece_543_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6417, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1771_mem, piece_1772_mem⟩

theorem linked_6418 : Linked cell_6418 pieces := by
  apply Linked.of_piece piece_544 piece_544_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6418, List.cons_subset, List.nil_subset, and_true]
  exact piece_1771_mem

theorem linked_6419 : Linked cell_6419 pieces := by
  apply Linked.of_piece piece_544 piece_544_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6419, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1771_mem, ⟨piece_1772_mem, piece_1773_mem⟩⟩

theorem linked_6420 : Linked cell_6420 pieces := by
  apply Linked.of_piece piece_544 piece_544_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6420, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1773_mem, piece_1774_mem⟩

theorem linked_6421 : Linked cell_6421 pieces := by
  apply Linked.of_piece piece_544 piece_544_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6421, List.cons_subset, List.nil_subset, and_true]
  exact piece_1774_mem

theorem linked_6422 : Linked cell_6422 pieces := by
  apply Linked.of_piece piece_544 piece_544_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6422, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1774_mem, piece_1775_mem⟩

theorem linked_6423 : Linked cell_6423 pieces := by
  apply Linked.of_piece piece_544 piece_544_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6423, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1775_mem, piece_1776_mem⟩

theorem linked_6424 : Linked cell_6424 pieces := by
  apply Linked.of_piece piece_544 piece_544_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6424, List.cons_subset, List.nil_subset, and_true]
  exact piece_1776_mem

theorem linked_6425 : Linked cell_6425 pieces := by
  apply Linked.of_piece piece_544 piece_544_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6425, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1776_mem, piece_1777_mem⟩

theorem linked_6426 : Linked cell_6426 pieces := by
  apply Linked.of_piece piece_545 piece_545_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6426, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1776_mem, piece_1777_mem⟩

theorem linked_6427 : Linked cell_6427 pieces := by
  apply Linked.of_piece piece_545 piece_545_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6427, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1777_mem, piece_1778_mem⟩

theorem linked_6428 : Linked cell_6428 pieces := by
  apply Linked.of_piece piece_545 piece_545_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6428, List.cons_subset, List.nil_subset, and_true]
  exact piece_1778_mem

theorem linked_6429 : Linked cell_6429 pieces := by
  apply Linked.of_piece piece_545 piece_545_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6429, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1778_mem, piece_1779_mem⟩

theorem linked_6430 : Linked cell_6430 pieces := by
  apply Linked.of_piece piece_545 piece_545_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6430, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1779_mem, piece_1780_mem⟩

theorem linked_6431 : Linked cell_6431 pieces := by
  apply Linked.of_piece piece_545 piece_545_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6431, List.cons_subset, List.nil_subset, and_true]
  exact piece_1780_mem

theorem linked_6432 : Linked cell_6432 pieces := by
  apply Linked.of_piece piece_545 piece_545_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6432, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1780_mem, piece_1781_mem⟩

theorem linked_6433 : Linked cell_6433 pieces := by
  apply Linked.of_piece piece_545 piece_545_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6433, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1781_mem, piece_1782_mem⟩

theorem linked_6434 : Linked cell_6434 pieces := by
  apply Linked.of_piece piece_546 piece_546_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6434, List.cons_subset, List.nil_subset, and_true]
  exact piece_1781_mem

theorem linked_6435 : Linked cell_6435 pieces := by
  apply Linked.of_piece piece_546 piece_546_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6435, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1781_mem, piece_1782_mem⟩

theorem linked_6436 : Linked cell_6436 pieces := by
  apply Linked.of_piece piece_546 piece_546_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6436, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1782_mem, piece_1783_mem⟩

theorem linked_6437 : Linked cell_6437 pieces := by
  apply Linked.of_piece piece_546 piece_546_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6437, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1783_mem, piece_1784_mem⟩

theorem linked_6438 : Linked cell_6438 pieces := by
  apply Linked.of_piece piece_546 piece_546_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6438, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1784_mem, piece_1785_mem⟩

theorem linked_6439 : Linked cell_6439 pieces := by
  apply Linked.of_piece piece_546 piece_546_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6439, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1785_mem, piece_1786_mem⟩

theorem linked_6440 : Linked cell_6440 pieces := by
  apply Linked.of_piece piece_546 piece_546_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6440, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1786_mem, piece_1787_mem⟩

theorem linked_6441 : Linked cell_6441 pieces := by
  apply Linked.of_piece piece_546 piece_546_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6441, List.cons_subset, List.nil_subset, and_true]
  exact piece_1787_mem

theorem linked_6442 : Linked cell_6442 pieces := by
  apply Linked.of_piece piece_547 piece_547_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6442, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1786_mem, piece_1787_mem⟩

theorem linked_6443 : Linked cell_6443 pieces := by
  apply Linked.of_piece piece_547 piece_547_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6443, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1787_mem, piece_1788_mem⟩

theorem linked_6444 : Linked cell_6444 pieces := by
  apply Linked.of_piece piece_547 piece_547_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6444, List.cons_subset, List.nil_subset, and_true]
  exact piece_1788_mem

theorem linked_6445 : Linked cell_6445 pieces := by
  apply Linked.of_piece piece_547 piece_547_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6445, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1788_mem, piece_1789_mem⟩

theorem linked_6446 : Linked cell_6446 pieces := by
  apply Linked.of_piece piece_547 piece_547_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6446, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1789_mem, piece_1790_mem⟩

theorem linked_6447 : Linked cell_6447 pieces := by
  apply Linked.of_piece piece_547 piece_547_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6447, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1790_mem, piece_1791_mem⟩

theorem linked_6448 : Linked cell_6448 pieces := by
  apply Linked.of_piece piece_547 piece_547_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6448, List.cons_subset, List.nil_subset, and_true]
  exact piece_1791_mem

theorem linked_6449 : Linked cell_6449 pieces := by
  apply Linked.of_piece piece_547 piece_547_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_6449, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1791_mem, piece_1792_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0128.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0128.cells,List.forall_mem_cons]
  exact ⟨linked_6400, linked_6401, linked_6402, linked_6403, linked_6404, linked_6405, linked_6406, linked_6407, linked_6408, linked_6409, linked_6410, linked_6411, linked_6412, linked_6413, linked_6414, linked_6415, linked_6416, linked_6417, linked_6418, linked_6419, linked_6420, linked_6421, linked_6422, linked_6423, linked_6424, linked_6425, linked_6426, linked_6427, linked_6428, linked_6429, linked_6430, linked_6431, linked_6432, linked_6433, linked_6434, linked_6435, linked_6436, linked_6437, linked_6438, linked_6439, linked_6440, linked_6441, linked_6442, linked_6443, linked_6444, linked_6445, linked_6446, linked_6447, linked_6448, linked_6449, by simp⟩

theorem covered : covers (20293749999999999 / 100000000000000000 : ℚ) (20599999999999999 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0128.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0128
