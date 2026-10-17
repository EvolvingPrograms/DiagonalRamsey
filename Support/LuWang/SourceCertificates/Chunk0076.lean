import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0076
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(29 / 256 : ℚ), (1813 / 16000 : ℚ)⟩
  branch := .right
  r := (20963475117 / 19531250000 : ℚ)
  w := (6098349138393 / 6250000000000 : ℚ)
  center := (7251 / 64000 : ℚ)
  supportValue := (7678527028140133 / 20000000000000000 : ℚ)
  supportSlope := (2162037989586807 / 500000000000000 : ℚ)
  oldCenter := (7678527028140133 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_346
  oldLo := (38450000000000001 / 100000000000000000 : ℚ)
  oldHi := (38500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_937]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_3800 : Cell := { cellDefaults with
  r := (5373163700513 / 5000000000000 : ℚ)
  w := (48760684944683 / 50000000000000 : ℚ)
  newCoefficients := coefficients_345
  oldLo := (38350000000000001 / 100000000000000000 : ℚ)
  oldHi := (38400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_935]
}

def cell_3801 : Cell := { cellDefaults with
  domain := ⟨(1813 / 16000 : ℚ), (3627 / 32000 : ℚ)⟩
  r := (5373163700513 / 5000000000000 : ℚ)
  w := (48760684944683 / 50000000000000 : ℚ)
  center := (7253 / 64000 : ℚ)
  supportValue := (120019181533149 / 312500000000000 : ℚ)
  supportSlope := (270160581656409 / 62500000000000 : ℚ)
  oldCenter := (120019181533149 / 312500000000000 : ℚ)
  newCoefficients := coefficients_345
  oldLo := (38350000000000001 / 100000000000000000 : ℚ)
  oldHi := (38450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_935, piece_936]
}

def cell_3802 : Cell := { cellDefaults with
  domain := ⟨(3627 / 32000 : ℚ), (907 / 8000 : ℚ)⟩
  r := (5373163700513 / 5000000000000 : ℚ)
  w := (48760684944683 / 50000000000000 : ℚ)
  center := (1451 / 12800 : ℚ)
  supportValue := (7683931226406887 / 20000000000000000 : ℚ)
  supportSlope := (2162109148220459 / 500000000000000 : ℚ)
  oldCenter := (7683931226406887 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_345
  oldLo := (38400000000000001 / 100000000000000000 : ℚ)
  oldHi := (38450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_936]
}

def cell_3803 : Cell := { cellDefaults with
  domain := ⟨(907 / 8000 : ℚ), (3629 / 32000 : ℚ)⟩
  r := (5373163700513 / 5000000000000 : ℚ)
  w := (48760684944683 / 50000000000000 : ℚ)
  center := (7257 / 64000 : ℚ)
  supportValue := (3843317213667427 / 10000000000000000 : ℚ)
  supportSlope := (4326026559423823 / 1000000000000000 : ℚ)
  oldCenter := (3843317213667427 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_345
  oldLo := (38400000000000001 / 100000000000000000 : ℚ)
  oldHi := (38450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_936]
}

def cell_3804 : Cell := { cellDefaults with
  domain := ⟨(3629 / 32000 : ℚ), (363 / 3200 : ℚ)⟩
  r := (5373163700513 / 5000000000000 : ℚ)
  w := (48760684944683 / 50000000000000 : ℚ)
  center := (7259 / 64000 : ℚ)
  supportValue := (1922334305459221 / 5000000000000000 : ℚ)
  supportSlope := (1081738465691373 / 250000000000000 : ℚ)
  oldCenter := (1922334305459221 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_345
  oldLo := (38400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_936, piece_937]
}

def cell_3805 : Cell := { cellDefaults with
  domain := ⟨(363 / 3200 : ℚ), (3631 / 32000 : ℚ)⟩
  r := (5373163700513 / 5000000000000 : ℚ)
  w := (48760684944683 / 50000000000000 : ℚ)
  center := (7261 / 64000 : ℚ)
  supportValue := (19230106473534103 / 50000000000000000 : ℚ)
  supportSlope := (2163091497116909 / 500000000000000 : ℚ)
  oldCenter := (19230106473534103 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_345
  oldPieces := [piece_937]
}

def cell_3806 : Cell := { cellDefaults with
  domain := ⟨(3631 / 32000 : ℚ), (227 / 2000 : ℚ)⟩
  r := (5373163700513 / 5000000000000 : ℚ)
  w := (48760684944683 / 50000000000000 : ℚ)
  center := (7263 / 64000 : ℚ)
  supportValue := (240460844239749 / 625000000000000 : ℚ)
  supportSlope := (4327982909947181 / 1000000000000000 : ℚ)
  oldCenter := (240460844239749 / 625000000000000 : ℚ)
  newCoefficients := coefficients_345
  oldPieces := [piece_937]
}

def cell_3807 : Cell := { cellDefaults with
  domain := ⟨(227 / 2000 : ℚ), (3633 / 32000 : ℚ)⟩
  center := (1453 / 12800 : ℚ)
  supportValue := (38466189723544747 / 100000000000000000 : ℚ)
  supportSlope := (1081503716046761 / 250000000000000 : ℚ)
  oldCenter := (38466189723544747 / 100000000000000000 : ℚ)
  oldPieces := [piece_937]
}

def cell_3808 : Cell := { cellDefaults with
  domain := ⟨(3633 / 32000 : ℚ), (1817 / 16000 : ℚ)⟩
  center := (7267 / 64000 : ℚ)
  supportValue := (192398556681483 / 500000000000000 : ℚ)
  supportSlope := (865563835475669 / 200000000000000 : ℚ)
  oldCenter := (192398556681483 / 500000000000000 : ℚ)
  oldPieces := [piece_937]
}

def cell_3809 : Cell := { cellDefaults with
  domain := ⟨(1817 / 16000 : ℚ), (727 / 6400 : ℚ)⟩
  center := (7269 / 64000 : ℚ)
  supportValue := (7698647718775099 / 20000000000000000 : ℚ)
  supportSlope := (1082406368611899 / 250000000000000 : ℚ)
  oldCenter := (7698647718775099 / 20000000000000000 : ℚ)
  oldHi := (38550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_937, piece_938]
}

def cell_3810 : Cell := { cellDefaults with
  domain := ⟨(727 / 6400 : ℚ), (909 / 8000 : ℚ)⟩
  center := (7271 / 64000 : ℚ)
  supportValue := (38506766119540187 / 100000000000000000 : ℚ)
  supportSlope := (4327989760140483 / 1000000000000000 : ℚ)
  oldCenter := (38506766119540187 / 100000000000000000 : ℚ)
  oldLo := (38500000000000001 / 100000000000000000 : ℚ)
  oldHi := (38550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_938]
}

def cell_3811 : Cell := { cellDefaults with
  domain := ⟨(909 / 8000 : ℚ), (3637 / 32000 : ℚ)⟩
  center := (7273 / 64000 : ℚ)
  supportValue := (60187959204163 / 156250000000000 : ℚ)
  supportSlope := (2164892815375019 / 500000000000000 : ℚ)
  oldCenter := (60187959204163 / 156250000000000 : ℚ)
  oldLo := (38500000000000001 / 100000000000000000 : ℚ)
  oldHi := (38550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_938]
}

def cell_3812 : Cell := { cellDefaults with
  domain := ⟨(3637 / 32000 : ℚ), (1819 / 16000 : ℚ)⟩
  center := (291 / 2560 : ℚ)
  supportValue := (1926691364008703 / 5000000000000000 : ℚ)
  supportSlope := (2165792765269181 / 500000000000000 : ℚ)
  oldCenter := (1926691364008703 / 5000000000000000 : ℚ)
  oldLo := (38500000000000001 / 100000000000000000 : ℚ)
  oldHi := (38550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_938]
}

def cell_3813 : Cell := { cellDefaults with
  domain := ⟨(1819 / 16000 : ℚ), (3639 / 32000 : ℚ)⟩
  center := (7277 / 64000 : ℚ)
  supportValue := (3854735859120683 / 10000000000000000 : ℚ)
  supportSlope := (4332341588879629 / 1000000000000000 : ℚ)
  oldCenter := (3854735859120683 / 10000000000000000 : ℚ)
  oldLo := (38500000000000001 / 100000000000000000 : ℚ)
  oldHi := (38600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_938, piece_939]
}

def cell_3814 : Cell := { cellDefaults with
  domain := ⟨(3639 / 32000 : ℚ), (91 / 800 : ℚ)⟩
  center := (7279 / 64000 : ℚ)
  supportValue := (3856090232308481 / 10000000000000000 : ℚ)
  supportSlope := (2165878668584753 / 500000000000000 : ℚ)
  oldCenter := (3856090232308481 / 10000000000000000 : ℚ)
  oldLo := (38550000000000001 / 100000000000000000 : ℚ)
  oldHi := (38600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_939]
}

def cell_3815 : Cell := { cellDefaults with
  domain := ⟨(91 / 800 : ℚ), (3641 / 32000 : ℚ)⟩
  center := (7281 / 64000 : ℚ)
  supportValue := (38574441860778647 / 100000000000000000 : ℚ)
  supportSlope := (33855848850739 / 7812500000000 : ℚ)
  oldCenter := (38574441860778647 / 100000000000000000 : ℚ)
  oldLo := (38550000000000001 / 100000000000000000 : ℚ)
  oldHi := (38600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_939]
}

def cell_3816 : Cell := { cellDefaults with
  domain := ⟨(3641 / 32000 : ℚ), (1821 / 16000 : ℚ)⟩
  center := (7283 / 64000 : ℚ)
  supportValue := (38587987002585233 / 100000000000000000 : ℚ)
  supportSlope := (43353439728957 / 10000000000000 : ℚ)
  oldCenter := (38587987002585233 / 100000000000000000 : ℚ)
  oldLo := (38550000000000001 / 100000000000000000 : ℚ)
  oldHi := (38600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_939]
}

def cell_3817 : Cell := { cellDefaults with
  domain := ⟨(1821 / 16000 : ℚ), (3643 / 32000 : ℚ)⟩
  center := (1457 / 12800 : ℚ)
  supportValue := (38601528829403703 / 100000000000000000 : ℚ)
  supportSlope := (4335048596479041 / 1000000000000000 : ℚ)
  oldCenter := (38601528829403703 / 100000000000000000 : ℚ)
  oldLo := (38550000000000001 / 100000000000000000 : ℚ)
  oldHi := (3860893854748603 / 10000000000000000 : ℚ)
  oldPieces := [piece_939, piece_940]
}

def cell_3818 : Cell := { cellDefaults with
  domain := ⟨(3643 / 32000 : ℚ), (911 / 8000 : ℚ)⟩
  center := (7287 / 64000 : ℚ)
  supportValue := (19307541124987493 / 50000000000000000 : ℚ)
  supportSlope := (4335515663852263 / 1000000000000000 : ℚ)
  oldCenter := (19307541124987493 / 50000000000000000 : ℚ)
  oldLo := (38600000000000001 / 100000000000000000 : ℚ)
  oldHi := (38650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_940, piece_941]
}

def cell_3819 : Cell := { cellDefaults with
  domain := ⟨(911 / 8000 : ℚ), (729 / 6400 : ℚ)⟩
  center := (7289 / 64000 : ℚ)
  supportValue := (38628633524925443 / 100000000000000000 : ℚ)
  supportSlope := (4337302227192197 / 1000000000000000 : ℚ)
  oldCenter := (38628633524925443 / 100000000000000000 : ℚ)
  oldLo := (3860893854748603 / 10000000000000000 : ℚ)
  oldHi := (38650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_941]
}

def cell_3820 : Cell := { cellDefaults with
  domain := ⟨(729 / 6400 : ℚ), (1823 / 16000 : ℚ)⟩
  center := (7291 / 64000 : ℚ)
  supportValue := (9660547597323181 / 25000000000000000 : ℚ)
  supportSlope := (4339092831827429 / 1000000000000000 : ℚ)
  oldCenter := (9660547597323181 / 25000000000000000 : ℚ)
  oldLo := (3860893854748603 / 10000000000000000 : ℚ)
  oldHi := (38650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_941]
}

def cell_3821 : Cell := { cellDefaults with
  domain := ⟨(1823 / 16000 : ℚ), (3647 / 32000 : ℚ)⟩
  center := (7293 / 64000 : ℚ)
  supportValue := (773114812463197 / 2000000000000000 : ℚ)
  supportSlope := (2168872650868181 / 500000000000000 : ℚ)
  oldCenter := (773114812463197 / 2000000000000000 : ℚ)
  oldLo := (3860893854748603 / 10000000000000000 : ℚ)
  oldHi := (38700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_941, piece_942]
}

def cell_3822 : Cell := { cellDefaults with
  domain := ⟨(3647 / 32000 : ℚ), (57 / 500 : ℚ)⟩
  center := (1459 / 12800 : ℚ)
  supportValue := (483366322285169 / 1250000000000000 : ℚ)
  supportSlope := (216963347253607 / 50000000000000 : ℚ)
  oldCenter := (483366322285169 / 1250000000000000 : ℚ)
  oldLo := (38650000000000001 / 100000000000000000 : ℚ)
  oldHi := (38700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_942]
}

def cell_3823 : Cell := { cellDefaults with
  domain := ⟨(57 / 500 : ℚ), (3649 / 32000 : ℚ)⟩
  r := (670018909381 / 625000000000 : ℚ)
  w := (24406143015597 / 25000000000000 : ℚ)
  center := (7297 / 64000 : ℚ)
  supportValue := (19330691624202437 / 50000000000000000 : ℚ)
  supportSlope := (4337232802946289 / 1000000000000000 : ℚ)
  oldCenter := (19330691624202437 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_347
  oldLo := (38650000000000001 / 100000000000000000 : ℚ)
  oldHi := (38700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_942]
}

def cell_3824 : Cell := { cellDefaults with
  domain := ⟨(3649 / 32000 : ℚ), (73 / 640 : ℚ)⟩
  r := (670018909381 / 625000000000 : ℚ)
  w := (24406143015597 / 25000000000000 : ℚ)
  center := (7299 / 64000 : ℚ)
  supportValue := (1933746994125177 / 5000000000000000 : ℚ)
  supportSlope := (271188429632363 / 62500000000000 : ℚ)
  oldCenter := (1933746994125177 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_347
  oldLo := (38650000000000001 / 100000000000000000 : ℚ)
  oldHi := (38700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_942]
}

def cell_3825 : Cell := { cellDefaults with
  domain := ⟨(73 / 640 : ℚ), (3651 / 32000 : ℚ)⟩
  r := (670018909381 / 625000000000 : ℚ)
  w := (24406143015597 / 25000000000000 : ℚ)
  center := (7301 / 64000 : ℚ)
  supportValue := (386885020917433 / 1000000000000000 : ℚ)
  supportSlope := (2170400448371801 / 500000000000000 : ℚ)
  oldCenter := (386885020917433 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_347
  oldLo := (38650000000000001 / 100000000000000000 : ℚ)
  oldHi := (38700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_942]
}

def cell_3826 : Cell := { cellDefaults with
  domain := ⟨(3651 / 32000 : ℚ), (913 / 8000 : ℚ)⟩
  r := (670018909381 / 625000000000 : ℚ)
  w := (24406143015597 / 25000000000000 : ℚ)
  center := (7303 / 64000 : ℚ)
  supportValue := (7740412107479937 / 20000000000000000 : ℚ)
  supportSlope := (1085096423096843 / 250000000000000 : ℚ)
  oldCenter := (7740412107479937 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_347
  oldLo := (38650000000000001 / 100000000000000000 : ℚ)
  oldHi := (38750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_942, piece_943]
}

def cell_3827 : Cell := { cellDefaults with
  domain := ⟨(913 / 8000 : ℚ), (3653 / 32000 : ℚ)⟩
  r := (670018909381 / 625000000000 : ℚ)
  w := (24406143015597 / 25000000000000 : ℚ)
  center := (1461 / 12800 : ℚ)
  supportValue := (3871563109712861 / 10000000000000000 : ℚ)
  supportSlope := (1085247418889157 / 250000000000000 : ℚ)
  oldCenter := (3871563109712861 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_347
  oldLo := (38700000000000001 / 100000000000000000 : ℚ)
  oldHi := (38750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_943]
}

def cell_3828 : Cell := { cellDefaults with
  domain := ⟨(3653 / 32000 : ℚ), (1827 / 16000 : ℚ)⟩
  r := (670018909381 / 625000000000 : ℚ)
  w := (24406143015597 / 25000000000000 : ℚ)
  center := (7307 / 64000 : ℚ)
  supportValue := (3872919946362991 / 10000000000000000 : ℚ)
  supportSlope := (86855334666609 / 20000000000000 : ℚ)
  oldCenter := (3872919946362991 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_347
  oldLo := (38700000000000001 / 100000000000000000 : ℚ)
  oldHi := (38750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_943]
}

def cell_3829 : Cell := { cellDefaults with
  domain := ⟨(1827 / 16000 : ℚ), (731 / 6400 : ℚ)⟩
  r := (670018909381 / 625000000000 : ℚ)
  w := (24406143015597 / 25000000000000 : ℚ)
  center := (7309 / 64000 : ℚ)
  supportValue := (1937138669478203 / 5000000000000000 : ℚ)
  supportSlope := (8689095432099947 / 2000000000000000 : ℚ)
  oldCenter := (1937138669478203 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_347
  oldLo := (38700000000000001 / 100000000000000000 : ℚ)
  oldHi := (38750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_943]
}

def cell_3830 : Cell := { cellDefaults with
  domain := ⟨(731 / 6400 : ℚ), (457 / 4000 : ℚ)⟩
  r := (670018909381 / 625000000000 : ℚ)
  w := (24406143015597 / 25000000000000 : ℚ)
  center := (7311 / 64000 : ℚ)
  supportValue := (3875634797508257 / 10000000000000000 : ℚ)
  supportSlope := (4343076597383089 / 1000000000000000 : ℚ)
  oldCenter := (3875634797508257 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_347
  oldLo := (38700000000000001 / 100000000000000000 : ℚ)
  oldHi := (38800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_943, piece_944]
}

def cell_3831 : Cell := { cellDefaults with
  domain := ⟨(457 / 4000 : ℚ), (3657 / 32000 : ℚ)⟩
  r := (670018909381 / 625000000000 : ℚ)
  w := (24406143015597 / 25000000000000 : ℚ)
  center := (7313 / 64000 : ℚ)
  supportValue := (242312015716013 / 625000000000000 : ℚ)
  supportSlope := (8689475187892981 / 2000000000000000 : ℚ)
  oldCenter := (242312015716013 / 625000000000000 : ℚ)
  newCoefficients := coefficients_347
  oldLo := (38750000000000001 / 100000000000000000 : ℚ)
  oldHi := (38800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_944]
}

def cell_3832 : Cell := { cellDefaults with
  domain := ⟨(3657 / 32000 : ℚ), (1829 / 16000 : ℚ)⟩
  r := (670018909381 / 625000000000 : ℚ)
  w := (24406143015597 / 25000000000000 : ℚ)
  center := (1463 / 12800 : ℚ)
  supportValue := (1939175129268261 / 5000000000000000 : ℚ)
  supportSlope := (1086627390550543 / 250000000000000 : ℚ)
  oldCenter := (1939175129268261 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_347
  oldLo := (38750000000000001 / 100000000000000000 : ℚ)
  oldHi := (38800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_944]
}

def cell_3833 : Cell := { cellDefaults with
  domain := ⟨(1829 / 16000 : ℚ), (3659 / 32000 : ℚ)⟩
  r := (670018909381 / 625000000000 : ℚ)
  w := (24406143015597 / 25000000000000 : ℚ)
  center := (7317 / 64000 : ℚ)
  supportValue := (969927011005909 / 2500000000000000 : ℚ)
  supportSlope := (4347330037012043 / 1000000000000000 : ℚ)
  oldCenter := (969927011005909 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_347
  oldLo := (38750000000000001 / 100000000000000000 : ℚ)
  oldHi := (38850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_944, piece_945]
}

def cell_3834 : Cell := { cellDefaults with
  domain := ⟨(3659 / 32000 : ℚ), (183 / 1600 : ℚ)⟩
  r := (670018909381 / 625000000000 : ℚ)
  w := (24406143015597 / 25000000000000 : ℚ)
  center := (7319 / 64000 : ℚ)
  supportValue := (19405335576504937 / 50000000000000000 : ℚ)
  supportSlope := (4346712616600357 / 1000000000000000 : ℚ)
  oldCenter := (19405335576504937 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_347
  oldLo := (38800000000000001 / 100000000000000000 : ℚ)
  oldHi := (38850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_945]
}

def cell_3835 : Cell := { cellDefaults with
  domain := ⟨(183 / 1600 : ℚ), (3661 / 32000 : ℚ)⟩
  r := (670018909381 / 625000000000 : ℚ)
  w := (24406143015597 / 25000000000000 : ℚ)
  center := (7321 / 64000 : ℚ)
  supportValue := (19412128692230607 / 50000000000000000 : ℚ)
  supportSlope := (4348477346853841 / 1000000000000000 : ℚ)
  oldCenter := (19412128692230607 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_347
  oldLo := (38800000000000001 / 100000000000000000 : ℚ)
  oldHi := (38850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_945]
}

def cell_3836 : Cell := { cellDefaults with
  domain := ⟨(3661 / 32000 : ℚ), (1831 / 16000 : ℚ)⟩
  r := (670018909381 / 625000000000 : ℚ)
  w := (24406143015597 / 25000000000000 : ℚ)
  center := (7323 / 64000 : ℚ)
  supportValue := (776756982734611 / 2000000000000000 : ℚ)
  supportSlope := (271890371468797 / 62500000000000 : ℚ)
  oldCenter := (776756982734611 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_347
  oldLo := (38800000000000001 / 100000000000000000 : ℚ)
  oldHi := (38850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_945]
}

def cell_3837 : Cell := { cellDefaults with
  domain := ⟨(1831 / 16000 : ℚ), (3663 / 32000 : ℚ)⟩
  r := (670018909381 / 625000000000 : ℚ)
  w := (24406143015597 / 25000000000000 : ℚ)
  center := (293 / 2560 : ℚ)
  supportValue := (3885143754434493 / 10000000000000000 : ℚ)
  supportSlope := (173999983796449 / 40000000000000 : ℚ)
  oldCenter := (3885143754434493 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_347
  oldLo := (38800000000000001 / 100000000000000000 : ℚ)
  oldHi := (38900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_945, piece_946]
}

def cell_3838 : Cell := { cellDefaults with
  domain := ⟨(3663 / 32000 : ℚ), (229 / 2000 : ℚ)⟩
  r := (670018909381 / 625000000000 : ℚ)
  w := (24406143015597 / 25000000000000 : ℚ)
  center := (7327 / 64000 : ℚ)
  supportValue := (971625943134633 / 2500000000000000 : ℚ)
  supportSlope := (135951563360881 / 31250000000000 : ℚ)
  oldCenter := (971625943134633 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_347
  oldLo := (38850000000000001 / 100000000000000000 : ℚ)
  oldHi := (38900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_946]
}

def cell_3839 : Cell := { cellDefaults with
  domain := ⟨(229 / 2000 : ℚ), (733 / 6400 : ℚ)⟩
  r := (10707337473609 / 10000000000000 : ℚ)
  w := (24418588876663 / 25000000000000 : ℚ)
  center := (7329 / 64000 : ℚ)
  supportValue := (38856741718779203 / 100000000000000000 : ℚ)
  supportSlope := (4348363588521309 / 1000000000000000 : ℚ)
  oldCenter := (38856741718779203 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_348
  oldLo := (38800000000000001 / 100000000000000000 : ℚ)
  oldHi := (38900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_945, piece_946]
}

def cell_3840 : Cell := { cellDefaults with
  domain := ⟨(733 / 6400 : ℚ), (1833 / 16000 : ℚ)⟩
  r := (10707337473609 / 10000000000000 : ℚ)
  w := (24418588876663 / 25000000000000 : ℚ)
  center := (7331 / 64000 : ℚ)
  supportValue := (38870333064695317 / 100000000000000000 : ℚ)
  supportSlope := (4350111359684661 / 1000000000000000 : ℚ)
  oldCenter := (38870333064695317 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_348
  oldLo := (38850000000000001 / 100000000000000000 : ℚ)
  oldHi := (38900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_946]
}

def cell_3841 : Cell := { cellDefaults with
  domain := ⟨(1833 / 16000 : ℚ), (3667 / 32000 : ℚ)⟩
  r := (10707337473609 / 10000000000000 : ℚ)
  w := (24418588876663 / 25000000000000 : ℚ)
  center := (7333 / 64000 : ℚ)
  supportValue := (3888392991505579 / 10000000000000000 : ℚ)
  supportSlope := (1087968675470563 / 250000000000000 : ℚ)
  oldCenter := (3888392991505579 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_348
  oldLo := (38850000000000001 / 100000000000000000 : ℚ)
  oldHi := (38900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_946]
}

def cell_3842 : Cell := { cellDefaults with
  domain := ⟨(3667 / 32000 : ℚ), (917 / 8000 : ℚ)⟩
  r := (10707337473609 / 10000000000000 : ℚ)
  w := (24418588876663 / 25000000000000 : ℚ)
  center := (1467 / 12800 : ℚ)
  supportValue := (1944876225118087 / 5000000000000000 : ℚ)
  supportSlope := (10881468934687 / 2500000000000 : ℚ)
  oldCenter := (1944876225118087 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_348
  oldLo := (38850000000000001 / 100000000000000000 : ℚ)
  oldHi := (38950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_946, piece_947]
}

def cell_3843 : Cell := { cellDefaults with
  domain := ⟨(917 / 8000 : ℚ), (3669 / 32000 : ℚ)⟩
  r := (10707337473609 / 10000000000000 : ℚ)
  w := (24418588876663 / 25000000000000 : ℚ)
  center := (7337 / 64000 : ℚ)
  supportValue := (7782226340793137 / 20000000000000000 : ℚ)
  supportSlope := (4352093694386383 / 1000000000000000 : ℚ)
  oldCenter := (7782226340793137 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_348
  oldLo := (38900000000000001 / 100000000000000000 : ℚ)
  oldHi := (38950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_947]
}

def cell_3844 : Cell := { cellDefaults with
  domain := ⟨(3669 / 32000 : ℚ), (367 / 3200 : ℚ)⟩
  r := (10707337473609 / 10000000000000 : ℚ)
  w := (24418588876663 / 25000000000000 : ℚ)
  center := (7339 / 64000 : ℚ)
  supportValue := (38924734735741057 / 100000000000000000 : ℚ)
  supportSlope := (174153938554511 / 40000000000000 : ℚ)
  oldCenter := (38924734735741057 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_348
  oldLo := (38900000000000001 / 100000000000000000 : ℚ)
  oldHi := (38950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_947]
}

def cell_3845 : Cell := { cellDefaults with
  domain := ⟨(367 / 3200 : ℚ), (3671 / 32000 : ℚ)⟩
  r := (10707337473609 / 10000000000000 : ℚ)
  w := (24418588876663 / 25000000000000 : ℚ)
  center := (7341 / 64000 : ℚ)
  supportValue := (38938343257121527 / 100000000000000000 : ℚ)
  supportSlope := (4355607044987053 / 1000000000000000 : ℚ)
  oldCenter := (38938343257121527 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_348
  oldLo := (38900000000000001 / 100000000000000000 : ℚ)
  oldHi := (38950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_947]
}

def cell_3846 : Cell := { cellDefaults with
  domain := ⟨(3671 / 32000 : ℚ), (459 / 4000 : ℚ)⟩
  r := (10707337473609 / 10000000000000 : ℚ)
  w := (24418588876663 / 25000000000000 : ℚ)
  center := (7343 / 64000 : ℚ)
  supportValue := (1947597400485591 / 5000000000000000 : ℚ)
  supportSlope := (4355248736551687 / 1000000000000000 : ℚ)
  oldCenter := (1947597400485591 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_348
  oldLo := (38900000000000001 / 100000000000000000 : ℚ)
  oldHi := (39000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_947, piece_948]
}

def cell_3847 : Cell := { cellDefaults with
  domain := ⟨(459 / 4000 : ℚ), (3673 / 32000 : ℚ)⟩
  r := (10707337473609 / 10000000000000 : ℚ)
  w := (24418588876663 / 25000000000000 : ℚ)
  center := (1469 / 12800 : ℚ)
  supportValue := (1558622601072309 / 4000000000000000 : ℚ)
  supportSlope := (4355826892272319 / 1000000000000000 : ℚ)
  oldCenter := (1558622601072309 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_348
  oldLo := (38950000000000001 / 100000000000000000 : ℚ)
  oldHi := (39000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_948]
}

def cell_3848 : Cell := { cellDefaults with
  domain := ⟨(3673 / 32000 : ℚ), (1837 / 16000 : ℚ)⟩
  r := (10707337473609 / 10000000000000 : ℚ)
  w := (24418588876663 / 25000000000000 : ℚ)
  center := (7347 / 64000 : ℚ)
  supportValue := (38979179718409257 / 100000000000000000 : ℚ)
  supportSlope := (4357577549868097 / 1000000000000000 : ℚ)
  oldCenter := (38979179718409257 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_348
  oldLo := (38950000000000001 / 100000000000000000 : ℚ)
  oldHi := (39000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_948]
}

def cell_3849 : Cell := { cellDefaults with
  domain := ⟨(1837 / 16000 : ℚ), (147 / 1280 : ℚ)⟩
  r := (10707337473609 / 10000000000000 : ℚ)
  w := (24418588876663 / 25000000000000 : ℚ)
  center := (7349 / 64000 : ℚ)
  supportValue := (6238847981877 / 16000000000000 : ℚ)
  supportSlope := (2179665998338187 / 500000000000000 : ℚ)
  oldCenter := (6238847981877 / 16000000000000 : ℚ)
  newCoefficients := coefficients_348
  oldLo := (38950000000000001 / 100000000000000000 : ℚ)
  oldHi := (39000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_948]
}

theorem check_3800 : SourceCertificateFamily.RightNormalized.check cell_3800 = true := by
  decide +kernel

theorem check_3801 : SourceCertificateFamily.RightNormalized.check cell_3801 = true := by
  decide +kernel

theorem check_3802 : SourceCertificateFamily.RightNormalized.check cell_3802 = true := by
  decide +kernel

theorem check_3803 : SourceCertificateFamily.RightNormalized.check cell_3803 = true := by
  decide +kernel

theorem check_3804 : SourceCertificateFamily.RightNormalized.check cell_3804 = true := by
  decide +kernel

theorem check_3805 : SourceCertificateFamily.RightNormalized.check cell_3805 = true := by
  decide +kernel

theorem check_3806 : SourceCertificateFamily.RightNormalized.check cell_3806 = true := by
  decide +kernel

theorem check_3807 : SourceCertificateFamily.RightNormalized.check cell_3807 = true := by
  decide +kernel

theorem check_3808 : SourceCertificateFamily.RightNormalized.check cell_3808 = true := by
  decide +kernel

theorem check_3809 : SourceCertificateFamily.RightNormalized.check cell_3809 = true := by
  decide +kernel

theorem check_3810 : SourceCertificateFamily.RightNormalized.check cell_3810 = true := by
  decide +kernel

theorem check_3811 : SourceCertificateFamily.RightNormalized.check cell_3811 = true := by
  decide +kernel

theorem check_3812 : SourceCertificateFamily.RightNormalized.check cell_3812 = true := by
  decide +kernel

theorem check_3813 : SourceCertificateFamily.RightNormalized.check cell_3813 = true := by
  decide +kernel

theorem check_3814 : SourceCertificateFamily.RightNormalized.check cell_3814 = true := by
  decide +kernel

theorem check_3815 : SourceCertificateFamily.RightNormalized.check cell_3815 = true := by
  decide +kernel

theorem check_3816 : SourceCertificateFamily.RightNormalized.check cell_3816 = true := by
  decide +kernel

theorem check_3817 : SourceCertificateFamily.RightNormalized.check cell_3817 = true := by
  decide +kernel

theorem check_3818 : SourceCertificateFamily.RightNormalized.check cell_3818 = true := by
  decide +kernel

theorem check_3819 : SourceCertificateFamily.RightNormalized.check cell_3819 = true := by
  decide +kernel

theorem check_3820 : SourceCertificateFamily.RightNormalized.check cell_3820 = true := by
  decide +kernel

theorem check_3821 : SourceCertificateFamily.RightNormalized.check cell_3821 = true := by
  decide +kernel

theorem check_3822 : SourceCertificateFamily.RightNormalized.check cell_3822 = true := by
  decide +kernel

theorem check_3823 : SourceCertificateFamily.RightNormalized.check cell_3823 = true := by
  decide +kernel

theorem check_3824 : SourceCertificateFamily.RightNormalized.check cell_3824 = true := by
  decide +kernel

theorem check_3825 : SourceCertificateFamily.RightNormalized.check cell_3825 = true := by
  decide +kernel

theorem check_3826 : SourceCertificateFamily.RightNormalized.check cell_3826 = true := by
  decide +kernel

theorem check_3827 : SourceCertificateFamily.RightNormalized.check cell_3827 = true := by
  decide +kernel

theorem check_3828 : SourceCertificateFamily.RightNormalized.check cell_3828 = true := by
  decide +kernel

theorem check_3829 : SourceCertificateFamily.RightNormalized.check cell_3829 = true := by
  decide +kernel

theorem check_3830 : SourceCertificateFamily.RightNormalized.check cell_3830 = true := by
  decide +kernel

theorem check_3831 : SourceCertificateFamily.RightNormalized.check cell_3831 = true := by
  decide +kernel

theorem check_3832 : SourceCertificateFamily.RightNormalized.check cell_3832 = true := by
  decide +kernel

theorem check_3833 : SourceCertificateFamily.RightNormalized.check cell_3833 = true := by
  decide +kernel

theorem check_3834 : SourceCertificateFamily.RightNormalized.check cell_3834 = true := by
  decide +kernel

theorem check_3835 : SourceCertificateFamily.RightNormalized.check cell_3835 = true := by
  decide +kernel

theorem check_3836 : SourceCertificateFamily.RightNormalized.check cell_3836 = true := by
  decide +kernel

theorem check_3837 : SourceCertificateFamily.RightNormalized.check cell_3837 = true := by
  decide +kernel

theorem check_3838 : SourceCertificateFamily.RightNormalized.check cell_3838 = true := by
  decide +kernel

theorem check_3839 : SourceCertificateFamily.RightNormalized.check cell_3839 = true := by
  decide +kernel

theorem check_3840 : SourceCertificateFamily.RightNormalized.check cell_3840 = true := by
  decide +kernel

theorem check_3841 : SourceCertificateFamily.RightNormalized.check cell_3841 = true := by
  decide +kernel

theorem check_3842 : SourceCertificateFamily.RightNormalized.check cell_3842 = true := by
  decide +kernel

theorem check_3843 : SourceCertificateFamily.RightNormalized.check cell_3843 = true := by
  decide +kernel

theorem check_3844 : SourceCertificateFamily.RightNormalized.check cell_3844 = true := by
  decide +kernel

theorem check_3845 : SourceCertificateFamily.RightNormalized.check cell_3845 = true := by
  decide +kernel

theorem check_3846 : SourceCertificateFamily.RightNormalized.check cell_3846 = true := by
  decide +kernel

theorem check_3847 : SourceCertificateFamily.RightNormalized.check cell_3847 = true := by
  decide +kernel

theorem check_3848 : SourceCertificateFamily.RightNormalized.check cell_3848 = true := by
  decide +kernel

theorem check_3849 : SourceCertificateFamily.RightNormalized.check cell_3849 = true := by
  decide +kernel

def cells : List Cell := [cell_3800, cell_3801, cell_3802, cell_3803, cell_3804, cell_3805, cell_3806, cell_3807, cell_3808, cell_3809, cell_3810, cell_3811, cell_3812, cell_3813, cell_3814, cell_3815, cell_3816, cell_3817, cell_3818, cell_3819, cell_3820, cell_3821, cell_3822, cell_3823, cell_3824, cell_3825, cell_3826, cell_3827, cell_3828, cell_3829, cell_3830, cell_3831, cell_3832, cell_3833, cell_3834, cell_3835, cell_3836, cell_3837, cell_3838, cell_3839, cell_3840, cell_3841, cell_3842, cell_3843, cell_3844, cell_3845, cell_3846, cell_3847, cell_3848, cell_3849]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_3800, SourceCertificateFamily.of_right_checked check_3801, SourceCertificateFamily.of_right_checked check_3802, SourceCertificateFamily.of_right_checked check_3803, SourceCertificateFamily.of_right_checked check_3804, SourceCertificateFamily.of_right_checked check_3805, SourceCertificateFamily.of_right_checked check_3806, SourceCertificateFamily.of_right_checked check_3807, SourceCertificateFamily.of_right_checked check_3808, SourceCertificateFamily.of_right_checked check_3809, SourceCertificateFamily.of_right_checked check_3810, SourceCertificateFamily.of_right_checked check_3811, SourceCertificateFamily.of_right_checked check_3812, SourceCertificateFamily.of_right_checked check_3813, SourceCertificateFamily.of_right_checked check_3814, SourceCertificateFamily.of_right_checked check_3815, SourceCertificateFamily.of_right_checked check_3816, SourceCertificateFamily.of_right_checked check_3817, SourceCertificateFamily.of_right_checked check_3818, SourceCertificateFamily.of_right_checked check_3819, SourceCertificateFamily.of_right_checked check_3820, SourceCertificateFamily.of_right_checked check_3821, SourceCertificateFamily.of_right_checked check_3822, SourceCertificateFamily.of_right_checked check_3823, SourceCertificateFamily.of_right_checked check_3824, SourceCertificateFamily.of_right_checked check_3825, SourceCertificateFamily.of_right_checked check_3826, SourceCertificateFamily.of_right_checked check_3827, SourceCertificateFamily.of_right_checked check_3828, SourceCertificateFamily.of_right_checked check_3829, SourceCertificateFamily.of_right_checked check_3830, SourceCertificateFamily.of_right_checked check_3831, SourceCertificateFamily.of_right_checked check_3832, SourceCertificateFamily.of_right_checked check_3833, SourceCertificateFamily.of_right_checked check_3834, SourceCertificateFamily.of_right_checked check_3835, SourceCertificateFamily.of_right_checked check_3836, SourceCertificateFamily.of_right_checked check_3837, SourceCertificateFamily.of_right_checked check_3838, SourceCertificateFamily.of_right_checked check_3839, SourceCertificateFamily.of_right_checked check_3840, SourceCertificateFamily.of_right_checked check_3841, SourceCertificateFamily.of_right_checked check_3842, SourceCertificateFamily.of_right_checked check_3843, SourceCertificateFamily.of_right_checked check_3844, SourceCertificateFamily.of_right_checked check_3845, SourceCertificateFamily.of_right_checked check_3846, SourceCertificateFamily.of_right_checked check_3847, SourceCertificateFamily.of_right_checked check_3848, SourceCertificateFamily.of_right_checked check_3849, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0076

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0076
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0076
open AnalyticBounds.ExpressionCertificate

theorem linked_3800 : Linked cell_3800 pieces := by
  refine ⟨piece_345,piece_345_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3800,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_935_mem

theorem linked_3801 : Linked cell_3801 pieces := by
  refine ⟨piece_345,piece_345_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3801,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_935_mem
    · exact piece_936_mem

theorem linked_3802 : Linked cell_3802 pieces := by
  refine ⟨piece_345,piece_345_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3802,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_936_mem

theorem linked_3803 : Linked cell_3803 pieces := by
  refine ⟨piece_345,piece_345_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3803,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_936_mem

theorem linked_3804 : Linked cell_3804 pieces := by
  refine ⟨piece_345,piece_345_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3804,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_936_mem
    · exact piece_937_mem

theorem linked_3805 : Linked cell_3805 pieces := by
  refine ⟨piece_345,piece_345_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3805,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_937_mem

theorem linked_3806 : Linked cell_3806 pieces := by
  refine ⟨piece_345,piece_345_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3806,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_937_mem

theorem linked_3807 : Linked cell_3807 pieces := by
  refine ⟨piece_346,piece_346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3807,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_937_mem

theorem linked_3808 : Linked cell_3808 pieces := by
  refine ⟨piece_346,piece_346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3808,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_937_mem

theorem linked_3809 : Linked cell_3809 pieces := by
  refine ⟨piece_346,piece_346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3809,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_937_mem
    · exact piece_938_mem

theorem linked_3810 : Linked cell_3810 pieces := by
  refine ⟨piece_346,piece_346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3810,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_938_mem

theorem linked_3811 : Linked cell_3811 pieces := by
  refine ⟨piece_346,piece_346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3811,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_938_mem

theorem linked_3812 : Linked cell_3812 pieces := by
  refine ⟨piece_346,piece_346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3812,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_938_mem

theorem linked_3813 : Linked cell_3813 pieces := by
  refine ⟨piece_346,piece_346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3813,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_938_mem
    · exact piece_939_mem

theorem linked_3814 : Linked cell_3814 pieces := by
  refine ⟨piece_346,piece_346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3814,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_939_mem

theorem linked_3815 : Linked cell_3815 pieces := by
  refine ⟨piece_346,piece_346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3815,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_939_mem

theorem linked_3816 : Linked cell_3816 pieces := by
  refine ⟨piece_346,piece_346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3816,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_939_mem

theorem linked_3817 : Linked cell_3817 pieces := by
  refine ⟨piece_346,piece_346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3817,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_939_mem
    · exact piece_940_mem

theorem linked_3818 : Linked cell_3818 pieces := by
  refine ⟨piece_346,piece_346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3818,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_940_mem
    · exact piece_941_mem

theorem linked_3819 : Linked cell_3819 pieces := by
  refine ⟨piece_346,piece_346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3819,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_941_mem

theorem linked_3820 : Linked cell_3820 pieces := by
  refine ⟨piece_346,piece_346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3820,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_941_mem

theorem linked_3821 : Linked cell_3821 pieces := by
  refine ⟨piece_346,piece_346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3821,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_941_mem
    · exact piece_942_mem

theorem linked_3822 : Linked cell_3822 pieces := by
  refine ⟨piece_346,piece_346_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3822,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_942_mem

theorem linked_3823 : Linked cell_3823 pieces := by
  refine ⟨piece_347,piece_347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3823,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_942_mem

theorem linked_3824 : Linked cell_3824 pieces := by
  refine ⟨piece_347,piece_347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3824,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_942_mem

theorem linked_3825 : Linked cell_3825 pieces := by
  refine ⟨piece_347,piece_347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3825,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_942_mem

theorem linked_3826 : Linked cell_3826 pieces := by
  refine ⟨piece_347,piece_347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3826,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_942_mem
    · exact piece_943_mem

theorem linked_3827 : Linked cell_3827 pieces := by
  refine ⟨piece_347,piece_347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3827,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_943_mem

theorem linked_3828 : Linked cell_3828 pieces := by
  refine ⟨piece_347,piece_347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3828,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_943_mem

theorem linked_3829 : Linked cell_3829 pieces := by
  refine ⟨piece_347,piece_347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3829,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_943_mem

theorem linked_3830 : Linked cell_3830 pieces := by
  refine ⟨piece_347,piece_347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3830,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_943_mem
    · exact piece_944_mem

theorem linked_3831 : Linked cell_3831 pieces := by
  refine ⟨piece_347,piece_347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3831,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_944_mem

theorem linked_3832 : Linked cell_3832 pieces := by
  refine ⟨piece_347,piece_347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3832,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_944_mem

theorem linked_3833 : Linked cell_3833 pieces := by
  refine ⟨piece_347,piece_347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3833,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_944_mem
    · exact piece_945_mem

theorem linked_3834 : Linked cell_3834 pieces := by
  refine ⟨piece_347,piece_347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3834,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_945_mem

theorem linked_3835 : Linked cell_3835 pieces := by
  refine ⟨piece_347,piece_347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3835,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_945_mem

theorem linked_3836 : Linked cell_3836 pieces := by
  refine ⟨piece_347,piece_347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3836,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_945_mem

theorem linked_3837 : Linked cell_3837 pieces := by
  refine ⟨piece_347,piece_347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3837,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_945_mem
    · exact piece_946_mem

theorem linked_3838 : Linked cell_3838 pieces := by
  refine ⟨piece_347,piece_347_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3838,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_946_mem

theorem linked_3839 : Linked cell_3839 pieces := by
  refine ⟨piece_348,piece_348_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3839,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_945_mem
    · exact piece_946_mem

theorem linked_3840 : Linked cell_3840 pieces := by
  refine ⟨piece_348,piece_348_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3840,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_946_mem

theorem linked_3841 : Linked cell_3841 pieces := by
  refine ⟨piece_348,piece_348_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3841,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_946_mem

theorem linked_3842 : Linked cell_3842 pieces := by
  refine ⟨piece_348,piece_348_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3842,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_946_mem
    · exact piece_947_mem

theorem linked_3843 : Linked cell_3843 pieces := by
  refine ⟨piece_348,piece_348_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3843,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_947_mem

theorem linked_3844 : Linked cell_3844 pieces := by
  refine ⟨piece_348,piece_348_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3844,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_947_mem

theorem linked_3845 : Linked cell_3845 pieces := by
  refine ⟨piece_348,piece_348_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3845,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_947_mem

theorem linked_3846 : Linked cell_3846 pieces := by
  refine ⟨piece_348,piece_348_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3846,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_947_mem
    · exact piece_948_mem

theorem linked_3847 : Linked cell_3847 pieces := by
  refine ⟨piece_348,piece_348_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3847,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_948_mem

theorem linked_3848 : Linked cell_3848 pieces := by
  refine ⟨piece_348,piece_348_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3848,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_948_mem

theorem linked_3849 : Linked cell_3849 pieces := by
  refine ⟨piece_348,piece_348_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3849,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_948_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0076.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0076.cells,List.forall_mem_cons]
  exact ⟨linked_3800, linked_3801, linked_3802, linked_3803, linked_3804, linked_3805, linked_3806, linked_3807, linked_3808, linked_3809, linked_3810, linked_3811, linked_3812, linked_3813, linked_3814, linked_3815, linked_3816, linked_3817, linked_3818, linked_3819, linked_3820, linked_3821, linked_3822, linked_3823, linked_3824, linked_3825, linked_3826, linked_3827, linked_3828, linked_3829, linked_3830, linked_3831, linked_3832, linked_3833, linked_3834, linked_3835, linked_3836, linked_3837, linked_3838, linked_3839, linked_3840, linked_3841, linked_3842, linked_3843, linked_3844, linked_3845, linked_3846, linked_3847, linked_3848, linked_3849, by simp⟩

theorem covered : covers (29 / 256 : ℚ) (147 / 1280 : ℚ)
    (SourceCertificates.Chunk0076.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0076
