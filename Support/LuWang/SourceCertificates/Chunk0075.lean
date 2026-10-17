import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0075
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(447 / 4000 : ℚ), (7153 / 64000 : ℚ)⟩
  branch := .right
  r := (10772477733041 / 10000000000000 : ℚ)
  w := (97413071500163 / 100000000000000 : ℚ)
  center := (2861 / 25600 : ℚ)
  supportValue := (4723850548202227 / 12500000000000000 : ℚ)
  supportSlope := (133977980443567 / 31250000000000 : ℚ)
  oldCenter := (4723850548202227 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_343
  oldLo := (757 / 2000 : ℚ)
  oldHi := (379 / 1000 : ℚ)
  oldPieces := [piece_924]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_3750 : Cell := { cellDefaults with
  r := (10785599436167 / 10000000000000 : ℚ)
  w := (48678451751841 / 50000000000000 : ℚ)
  newCoefficients := coefficients_342
  oldLo := (151 / 400 : ℚ)
  oldHi := (189 / 500 : ℚ)
  oldPieces := [piece_922]
}

def cell_3751 : Cell := { cellDefaults with
  domain := ⟨(7153 / 64000 : ℚ), (3577 / 32000 : ℚ)⟩
  r := (10785599436167 / 10000000000000 : ℚ)
  w := (48678451751841 / 50000000000000 : ℚ)
  center := (14307 / 128000 : ℚ)
  supportValue := (7559500804014907 / 20000000000000000 : ℚ)
  supportSlope := (4287765535334387 / 1000000000000000 : ℚ)
  oldCenter := (7559500804014907 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_342
  oldLo := (151 / 400 : ℚ)
  oldHi := (757 / 2000 : ℚ)
  oldPieces := [piece_922, piece_923]
}

def cell_3752 : Cell := { cellDefaults with
  domain := ⟨(3577 / 32000 : ℚ), (1789 / 16000 : ℚ)⟩
  r := (10785599436167 / 10000000000000 : ℚ)
  w := (48678451751841 / 50000000000000 : ℚ)
  center := (1431 / 12800 : ℚ)
  supportValue := (18903774862454037 / 50000000000000000 : ℚ)
  supportSlope := (4285954279071191 / 1000000000000000 : ℚ)
  oldCenter := (18903774862454037 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_342
  oldLo := (189 / 500 : ℚ)
  oldHi := (757 / 2000 : ℚ)
  oldPieces := [piece_923]
}

def cell_3753 : Cell := { cellDefaults with
  domain := ⟨(1789 / 16000 : ℚ), (3579 / 32000 : ℚ)⟩
  r := (10785599436167 / 10000000000000 : ℚ)
  w := (48678451751841 / 50000000000000 : ℚ)
  center := (7157 / 64000 : ℚ)
  supportValue := (37820946251329873 / 100000000000000000 : ℚ)
  supportSlope := (4287824595566647 / 1000000000000000 : ℚ)
  oldCenter := (37820946251329873 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_342
  oldLo := (189 / 500 : ℚ)
  oldHi := (757 / 2000 : ℚ)
  oldPieces := [piece_923]
}

def cell_3754 : Cell := { cellDefaults with
  domain := ⟨(3579 / 32000 : ℚ), (179 / 1600 : ℚ)⟩
  r := (10785599436167 / 10000000000000 : ℚ)
  w := (48678451751841 / 50000000000000 : ℚ)
  center := (7159 / 64000 : ℚ)
  supportValue := (3783434862941663 / 10000000000000000 : ℚ)
  supportSlope := (4289699348779763 / 1000000000000000 : ℚ)
  oldCenter := (3783434862941663 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_342
  oldLo := (189 / 500 : ℚ)
  oldHi := (757 / 2000 : ℚ)
  oldPieces := [piece_923]
}

def cell_3755 : Cell := { cellDefaults with
  domain := ⟨(179 / 1600 : ℚ), (3581 / 32000 : ℚ)⟩
  r := (10785599436167 / 10000000000000 : ℚ)
  w := (48678451751841 / 50000000000000 : ℚ)
  center := (7161 / 64000 : ℚ)
  supportValue := (3784774930350447 / 10000000000000000 : ℚ)
  supportSlope := (429035496863861 / 100000000000000 : ℚ)
  oldCenter := (3784774930350447 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_342
  oldLo := (189 / 500 : ℚ)
  oldPieces := [piece_923, piece_924]
}

def cell_3756 : Cell := { cellDefaults with
  domain := ⟨(3581 / 32000 : ℚ), (1791 / 16000 : ℚ)⟩
  r := (10785599436167 / 10000000000000 : ℚ)
  w := (48678451751841 / 50000000000000 : ℚ)
  center := (7163 / 64000 : ℚ)
  supportValue := (4732645177030597 / 12500000000000000 : ℚ)
  supportSlope := (4289772282447757 / 1000000000000000 : ℚ)
  oldCenter := (4732645177030597 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_342
  oldPieces := [piece_924]
}

def cell_3757 : Cell := { cellDefaults with
  domain := ⟨(1791 / 16000 : ℚ), (3583 / 32000 : ℚ)⟩
  r := (10785599436167 / 10000000000000 : ℚ)
  w := (48678451751841 / 50000000000000 : ℚ)
  center := (1433 / 12800 : ℚ)
  supportValue := (37874569864543733 / 100000000000000000 : ℚ)
  supportSlope := (8382102707611 / 1953125000000 : ℚ)
  oldCenter := (37874569864543733 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_342
  oldPieces := [piece_924]
}

def cell_3758 : Cell := { cellDefaults with
  domain := ⟨(3583 / 32000 : ℚ), (14 / 125 : ℚ)⟩
  r := (10785599436167 / 10000000000000 : ℚ)
  w := (48678451751841 / 50000000000000 : ℚ)
  center := (7167 / 64000 : ℚ)
  supportValue := (1894399207283389 / 5000000000000000 : ℚ)
  supportSlope := (4293505294564071 / 1000000000000000 : ℚ)
  oldCenter := (1894399207283389 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_342
  oldPieces := [piece_924]
}

def cell_3759 : Cell := { cellDefaults with
  domain := ⟨(14 / 125 : ℚ), (717 / 6400 : ℚ)⟩
  center := (7169 / 64000 : ℚ)
  supportValue := (18940805050788073 / 50000000000000000 : ℚ)
  supportSlope := (1072938500680909 / 250000000000000 : ℚ)
  oldCenter := (18940805050788073 / 50000000000000000 : ℚ)
  oldPieces := [piece_924]
}

def cell_3760 : Cell := { cellDefaults with
  domain := ⟨(717 / 6400 : ℚ), (1793 / 16000 : ℚ)⟩
  center := (7171 / 64000 : ℚ)
  supportValue := (1894750858907347 / 5000000000000000 : ℚ)
  supportSlope := (536644327638669 / 125000000000000 : ℚ)
  oldCenter := (1894750858907347 / 5000000000000000 : ℚ)
  oldHi := (759 / 2000 : ℚ)
  oldPieces := [piece_924, piece_925]
}

def cell_3761 : Cell := { cellDefaults with
  domain := ⟨(1793 / 16000 : ℚ), (3587 / 32000 : ℚ)⟩
  center := (7173 / 64000 : ℚ)
  supportValue := (3790843807998041 / 10000000000000000 : ℚ)
  supportSlope := (171673646999011 / 40000000000000 : ℚ)
  oldCenter := (3790843807998041 / 10000000000000000 : ℚ)
  oldLo := (379 / 1000 : ℚ)
  oldHi := (759 / 2000 : ℚ)
  oldPieces := [piece_925]
}

def cell_3762 : Cell := { cellDefaults with
  domain := ⟨(3587 / 32000 : ℚ), (897 / 8000 : ℚ)⟩
  center := (287 / 2560 : ℚ)
  supportValue := (18960926493111857 / 50000000000000000 : ℚ)
  supportSlope := (2146850385540411 / 500000000000000 : ℚ)
  oldCenter := (18960926493111857 / 50000000000000000 : ℚ)
  oldLo := (379 / 1000 : ℚ)
  oldHi := (759 / 2000 : ℚ)
  oldPieces := [piece_925]
}

def cell_3763 : Cell := { cellDefaults with
  domain := ⟨(897 / 8000 : ℚ), (3589 / 32000 : ℚ)⟩
  center := (7177 / 64000 : ℚ)
  supportValue := (7587054742106747 / 20000000000000000 : ℚ)
  supportSlope := (4295564741720881 / 1000000000000000 : ℚ)
  oldCenter := (7587054742106747 / 20000000000000000 : ℚ)
  oldLo := (379 / 1000 : ℚ)
  oldHi := (759 / 2000 : ℚ)
  oldPieces := [piece_925]
}

def cell_3764 : Cell := { cellDefaults with
  domain := ⟨(3589 / 32000 : ℚ), (359 / 3200 : ℚ)⟩
  center := (7179 / 64000 : ℚ)
  supportValue := (7589738535372601 / 20000000000000000 : ℚ)
  supportSlope := (4295965553243519 / 1000000000000000 : ℚ)
  oldCenter := (7589738535372601 / 20000000000000000 : ℚ)
  oldLo := (379 / 1000 : ℚ)
  oldHi := (19 / 50 : ℚ)
  oldPieces := [piece_925, piece_926]
}

def cell_3765 : Cell := { cellDefaults with
  domain := ⟨(359 / 3200 : ℚ), (3591 / 32000 : ℚ)⟩
  center := (7181 / 64000 : ℚ)
  supportValue := (3796212238377407 / 10000000000000000 : ℚ)
  supportSlope := (859130692016663 / 200000000000000 : ℚ)
  oldCenter := (3796212238377407 / 10000000000000000 : ℚ)
  oldLo := (759 / 2000 : ℚ)
  oldHi := (19 / 50 : ℚ)
  oldPieces := [piece_926]
}

def cell_3766 : Cell := { cellDefaults with
  domain := ⟨(3591 / 32000 : ℚ), (449 / 4000 : ℚ)⟩
  center := (7183 / 64000 : ℚ)
  supportValue := (379755491965437 / 1000000000000000 : ℚ)
  supportSlope := (8595017314583231 / 2000000000000000 : ℚ)
  oldCenter := (379755491965437 / 1000000000000000 : ℚ)
  oldLo := (759 / 2000 : ℚ)
  oldHi := (19 / 50 : ℚ)
  oldPieces := [piece_926]
}

def cell_3767 : Cell := { cellDefaults with
  domain := ⟨(449 / 4000 : ℚ), (3593 / 32000 : ℚ)⟩
  center := (1437 / 12800 : ℚ)
  supportValue := (18994490906797007 / 50000000000000000 : ℚ)
  supportSlope := (4299368203719567 / 1000000000000000 : ℚ)
  oldCenter := (18994490906797007 / 50000000000000000 : ℚ)
  oldLo := (759 / 2000 : ℚ)
  oldHi := (19 / 50 : ℚ)
  oldPieces := [piece_926]
}

def cell_3768 : Cell := { cellDefaults with
  domain := ⟨(3593 / 32000 : ℚ), (1797 / 16000 : ℚ)⟩
  center := (7187 / 64000 : ℚ)
  supportValue := (3800241060894787 / 10000000000000000 : ℚ)
  supportSlope := (2149383421236273 / 500000000000000 : ℚ)
  oldCenter := (3800241060894787 / 10000000000000000 : ℚ)
  oldLo := (759 / 2000 : ℚ)
  oldHi := (761 / 2000 : ℚ)
  oldPieces := [piece_926, piece_927]
}

def cell_3769 : Cell := { cellDefaults with
  domain := ⟨(1797 / 16000 : ℚ), (719 / 6400 : ℚ)⟩
  center := (7189 / 64000 : ℚ)
  supportValue := (3801585112903067 / 10000000000000000 : ℚ)
  supportSlope := (8598916789797073 / 2000000000000000 : ℚ)
  oldCenter := (3801585112903067 / 10000000000000000 : ℚ)
  oldLo := (19 / 50 : ℚ)
  oldHi := (761 / 2000 : ℚ)
  oldPieces := [piece_927]
}

def cell_3770 : Cell := { cellDefaults with
  domain := ⟨(719 / 6400 : ℚ), (899 / 8000 : ℚ)⟩
  center := (7191 / 64000 : ℚ)
  supportValue := (3802928982507957 / 10000000000000000 : ℚ)
  supportSlope := (4301309015488641 / 1000000000000000 : ℚ)
  oldCenter := (3802928982507957 / 10000000000000000 : ℚ)
  oldLo := (19 / 50 : ℚ)
  oldHi := (761 / 2000 : ℚ)
  oldPieces := [piece_927]
}

def cell_3771 : Cell := { cellDefaults with
  domain := ⟨(899 / 8000 : ℚ), (3597 / 32000 : ℚ)⟩
  center := (7193 / 64000 : ℚ)
  supportValue := (237767089444167 / 625000000000000 : ℚ)
  supportSlope := (8606327918698753 / 2000000000000000 : ℚ)
  oldCenter := (237767089444167 / 625000000000000 : ℚ)
  oldLo := (19 / 50 : ℚ)
  oldHi := (761 / 2000 : ℚ)
  oldPieces := [piece_927]
}

def cell_3772 : Cell := { cellDefaults with
  domain := ⟨(3597 / 32000 : ℚ), (1799 / 16000 : ℚ)⟩
  center := (1439 / 12800 : ℚ)
  supportValue := (1902808590411239 / 5000000000000000 : ℚ)
  supportSlope := (134423700865971 / 31250000000000 : ℚ)
  oldCenter := (1902808590411239 / 5000000000000000 : ℚ)
  oldLo := (19 / 50 : ℚ)
  oldHi := (38100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_927, piece_928, piece_929]
}

def cell_3773 : Cell := { cellDefaults with
  domain := ⟨(1799 / 16000 : ℚ), (3599 / 32000 : ℚ)⟩
  center := (7197 / 64000 : ℚ)
  supportValue := (3806962421583593 / 10000000000000000 : ℚ)
  supportSlope := (2151628313389331 / 500000000000000 : ℚ)
  oldCenter := (3806962421583593 / 10000000000000000 : ℚ)
  oldLo := (38055865921787707 / 100000000000000000 : ℚ)
  oldHi := (38100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_929]
}

def cell_3774 : Cell := { cellDefaults with
  domain := ⟨(3599 / 32000 : ℚ), (9 / 80 : ℚ)⟩
  center := (7199 / 64000 : ℚ)
  supportValue := (3808307477403507 / 10000000000000000 : ℚ)
  supportSlope := (215255127697489 / 50000000000000 : ℚ)
  oldCenter := (3808307477403507 / 10000000000000000 : ℚ)
  oldLo := (38055865921787707 / 100000000000000000 : ℚ)
  oldHi := (38100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_929]
}

def cell_3775 : Cell := { cellDefaults with
  domain := ⟨(9 / 80 : ℚ), (3601 / 32000 : ℚ)⟩
  r := (10759386991469 / 10000000000000 : ℚ)
  w := (155948604897 / 160000000000 : ℚ)
  center := (7201 / 64000 : ℚ)
  supportValue := (1903815170959309 / 5000000000000000 : ℚ)
  supportSlope := (8606552099600151 / 2000000000000000 : ℚ)
  oldCenter := (1903815170959309 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_344
  oldLo := (38055865921787707 / 100000000000000000 : ℚ)
  oldHi := (38100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_929]
}

def cell_3776 : Cell := { cellDefaults with
  domain := ⟨(3601 / 32000 : ℚ), (1801 / 16000 : ℚ)⟩
  r := (10759386991469 / 10000000000000 : ℚ)
  w := (155948604897 / 160000000000 : ℚ)
  center := (7203 / 64000 : ℚ)
  supportValue := (1904487702294519 / 5000000000000000 : ℚ)
  supportSlope := (538140872201831 / 125000000000000 : ℚ)
  oldCenter := (1904487702294519 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_344
  oldLo := (38055865921787707 / 100000000000000000 : ℚ)
  oldHi := (38100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_929]
}

def cell_3777 : Cell := { cellDefaults with
  domain := ⟨(1801 / 16000 : ℚ), (3603 / 32000 : ℚ)⟩
  r := (10759386991469 / 10000000000000 : ℚ)
  w := (155948604897 / 160000000000 : ℚ)
  center := (1441 / 12800 : ℚ)
  supportValue := (19051600084246187 / 50000000000000000 : ℚ)
  supportSlope := (538041337708739 / 125000000000000 : ℚ)
  oldCenter := (19051600084246187 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_344
  oldLo := (38055865921787707 / 100000000000000000 : ℚ)
  oldHi := (38150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_929, piece_930]
}

def cell_3778 : Cell := { cellDefaults with
  domain := ⟨(3603 / 32000 : ℚ), (901 / 8000 : ℚ)⟩
  r := (10759386991469 / 10000000000000 : ℚ)
  w := (155948604897 / 160000000000 : ℚ)
  center := (7207 / 64000 : ℚ)
  supportValue := (3811665877055493 / 10000000000000000 : ℚ)
  supportSlope := (4305233758858051 / 1000000000000000 : ℚ)
  oldCenter := (3811665877055493 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_344
  oldLo := (38100000000000001 / 100000000000000000 : ℚ)
  oldHi := (38150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_930]
}

def cell_3779 : Cell := { cellDefaults with
  domain := ⟨(901 / 8000 : ℚ), (721 / 6400 : ℚ)⟩
  r := (10759386991469 / 10000000000000 : ℚ)
  w := (155948604897 / 160000000000 : ℚ)
  center := (7209 / 64000 : ℚ)
  supportValue := (1906505775038059 / 5000000000000000 : ℚ)
  supportSlope := (269192218746217 / 62500000000000 : ℚ)
  oldCenter := (1906505775038059 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_344
  oldLo := (38100000000000001 / 100000000000000000 : ℚ)
  oldHi := (38150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_930]
}

def cell_3780 : Cell := { cellDefaults with
  domain := ⟨(721 / 6400 : ℚ), (1803 / 16000 : ℚ)⟩
  r := (10759386991469 / 10000000000000 : ℚ)
  w := (155948604897 / 160000000000 : ℚ)
  center := (7211 / 64000 : ℚ)
  supportValue := (38143577993073047 / 100000000000000000 : ℚ)
  supportSlope := (4308838117131231 / 1000000000000000 : ℚ)
  oldCenter := (38143577993073047 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_344
  oldLo := (38100000000000001 / 100000000000000000 : ℚ)
  oldHi := (38200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_930, piece_931]
}

def cell_3781 : Cell := { cellDefaults with
  domain := ⟨(1803 / 16000 : ℚ), (3607 / 32000 : ℚ)⟩
  r := (10759386991469 / 10000000000000 : ℚ)
  w := (155948604897 / 160000000000 : ℚ)
  center := (7213 / 64000 : ℚ)
  supportValue := (953926010597123 / 2500000000000000 : ℚ)
  supportSlope := (5383996753864917 / 1250000000000000 : ℚ)
  oldCenter := (953926010597123 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_344
  oldLo := (38150000000000001 / 100000000000000000 : ℚ)
  oldHi := (38200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_931]
}

def cell_3782 : Cell := { cellDefaults with
  domain := ⟨(3607 / 32000 : ℚ), (451 / 4000 : ℚ)⟩
  r := (10759386991469 / 10000000000000 : ℚ)
  w := (155948604897 / 160000000000 : ℚ)
  center := (1443 / 12800 : ℚ)
  supportValue := (1908525163798277 / 5000000000000000 : ℚ)
  supportSlope := (1723611938118097 / 400000000000000 : ℚ)
  oldCenter := (1908525163798277 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_344
  oldLo := (38150000000000001 / 100000000000000000 : ℚ)
  oldHi := (38200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_931]
}

def cell_3783 : Cell := { cellDefaults with
  domain := ⟨(451 / 4000 : ℚ), (3609 / 32000 : ℚ)⟩
  r := (10759386991469 / 10000000000000 : ℚ)
  w := (155948604897 / 160000000000 : ℚ)
  center := (7217 / 64000 : ℚ)
  supportValue := (9545992965256911 / 25000000000000000 : ℚ)
  supportSlope := (68973864241201 / 16000000000000 : ℚ)
  oldCenter := (9545992965256911 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_344
  oldLo := (38150000000000001 / 100000000000000000 : ℚ)
  oldHi := (38200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_931]
}

def cell_3784 : Cell := { cellDefaults with
  domain := ⟨(3609 / 32000 : ℚ), (361 / 3200 : ℚ)⟩
  r := (10759386991469 / 10000000000000 : ℚ)
  w := (155948604897 / 160000000000 : ℚ)
  center := (7219 / 64000 : ℚ)
  supportValue := (3819743855281417 / 10000000000000000 : ℚ)
  supportSlope := (8623209390787423 / 2000000000000000 : ℚ)
  oldCenter := (3819743855281417 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_344
  oldLo := (38150000000000001 / 100000000000000000 : ℚ)
  oldHi := (38250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_931, piece_932]
}

def cell_3785 : Cell := { cellDefaults with
  domain := ⟨(361 / 3200 : ℚ), (3611 / 32000 : ℚ)⟩
  r := (10759386991469 / 10000000000000 : ℚ)
  w := (155948604897 / 160000000000 : ℚ)
  center := (7221 / 64000 : ℚ)
  supportValue := (7642183455840591 / 20000000000000000 : ℚ)
  supportSlope := (538873754200031 / 125000000000000 : ℚ)
  oldCenter := (7642183455840591 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_344
  oldLo := (38200000000000001 / 100000000000000000 : ℚ)
  oldHi := (38250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_932]
}

def cell_3786 : Cell := { cellDefaults with
  domain := ⟨(3611 / 32000 : ℚ), (903 / 8000 : ℚ)⟩
  r := (10759386991469 / 10000000000000 : ℚ)
  w := (155948604897 / 160000000000 : ℚ)
  center := (7223 / 64000 : ℚ)
  supportValue := (3822439197509517 / 10000000000000000 : ℚ)
  supportSlope := (431281724790189 / 100000000000000 : ℚ)
  oldCenter := (3822439197509517 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_344
  oldLo := (38200000000000001 / 100000000000000000 : ℚ)
  oldHi := (38250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_932]
}

def cell_3787 : Cell := { cellDefaults with
  domain := ⟨(903 / 8000 : ℚ), (3613 / 32000 : ℚ)⟩
  r := (10759386991469 / 10000000000000 : ℚ)
  w := (155948604897 / 160000000000 : ℚ)
  center := (289 / 2560 : ℚ)
  supportValue := (9559468096896881 / 25000000000000000 : ℚ)
  supportSlope := (1725859464595203 / 400000000000000 : ℚ)
  oldCenter := (9559468096896881 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_344
  oldLo := (38200000000000001 / 100000000000000000 : ℚ)
  oldHi := (38250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_932]
}

def cell_3788 : Cell := { cellDefaults with
  domain := ⟨(3613 / 32000 : ℚ), (1807 / 16000 : ℚ)⟩
  r := (10759386991469 / 10000000000000 : ℚ)
  w := (155948604897 / 160000000000 : ℚ)
  center := (7227 / 64000 : ℚ)
  supportValue := (765026995325689 / 2000000000000000 : ℚ)
  supportSlope := (4314361124903243 / 1000000000000000 : ℚ)
  oldCenter := (765026995325689 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_344
  oldLo := (38200000000000001 / 100000000000000000 : ℚ)
  oldHi := (38300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_932, piece_933]
}

def cell_3789 : Cell := { cellDefaults with
  domain := ⟨(1807 / 16000 : ℚ), (723 / 6400 : ℚ)⟩
  r := (10759386991469 / 10000000000000 : ℚ)
  w := (155948604897 / 160000000000 : ℚ)
  center := (7229 / 64000 : ℚ)
  supportValue := (3826483824121841 / 10000000000000000 : ℚ)
  supportSlope := (1078693428474331 / 250000000000000 : ℚ)
  oldCenter := (3826483824121841 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_344
  oldLo := (38250000000000001 / 100000000000000000 : ℚ)
  oldHi := (38300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_933]
}

def cell_3790 : Cell := { cellDefaults with
  domain := ⟨(723 / 6400 : ℚ), (113 / 1000 : ℚ)⟩
  r := (10759386991469 / 10000000000000 : ℚ)
  w := (155948604897 / 160000000000 : ℚ)
  center := (7231 / 64000 : ℚ)
  supportValue := (19139162376409763 / 50000000000000000 : ℚ)
  supportSlope := (2158297807465459 / 500000000000000 : ℚ)
  oldCenter := (19139162376409763 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_344
  oldLo := (38250000000000001 / 100000000000000000 : ℚ)
  oldHi := (38300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_933]
}

def cell_3791 : Cell := { cellDefaults with
  domain := ⟨(113 / 1000 : ℚ), (3617 / 32000 : ℚ)⟩
  r := (5373163700513 / 5000000000000 : ℚ)
  w := (48760684944683 / 50000000000000 : ℚ)
  center := (7233 / 64000 : ℚ)
  supportValue := (7654232671027783 / 20000000000000000 : ℚ)
  supportSlope := (10786742206745359 / 2500000000000000 : ℚ)
  oldCenter := (7654232671027783 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_345
  oldLo := (38250000000000001 / 100000000000000000 : ℚ)
  oldHi := (38300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_933]
}

def cell_3792 : Cell := { cellDefaults with
  domain := ⟨(3617 / 32000 : ℚ), (1809 / 16000 : ℚ)⟩
  r := (5373163700513 / 5000000000000 : ℚ)
  w := (48760684944683 / 50000000000000 : ℚ)
  center := (1447 / 12800 : ℚ)
  supportValue := (38284649633917633 / 100000000000000000 : ℚ)
  supportSlope := (2158261721445953 / 500000000000000 : ℚ)
  oldCenter := (38284649633917633 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_345
  oldLo := (38250000000000001 / 100000000000000000 : ℚ)
  oldHi := (38300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_933]
}

def cell_3793 : Cell := { cellDefaults with
  domain := ⟨(1809 / 16000 : ℚ), (3619 / 32000 : ℚ)⟩
  r := (5373163700513 / 5000000000000 : ℚ)
  w := (48760684944683 / 50000000000000 : ℚ)
  center := (7237 / 64000 : ℚ)
  supportValue := (3829813396759833 / 10000000000000000 : ℚ)
  supportSlope := (4317080562799447 / 1000000000000000 : ℚ)
  oldCenter := (3829813396759833 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_345
  oldLo := (38250000000000001 / 100000000000000000 : ℚ)
  oldHi := (38350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_933, piece_934]
}

def cell_3794 : Cell := { cellDefaults with
  domain := ⟨(3619 / 32000 : ℚ), (181 / 1600 : ℚ)⟩
  r := (5373163700513 / 5000000000000 : ℚ)
  w := (48760684944683 / 50000000000000 : ℚ)
  center := (7239 / 64000 : ℚ)
  supportValue := (2394476866622491 / 6250000000000000 : ℚ)
  supportSlope := (4316662726461473 / 1000000000000000 : ℚ)
  oldCenter := (2394476866622491 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_345
  oldLo := (38300000000000001 / 100000000000000000 : ℚ)
  oldHi := (38350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_934]
}

def cell_3795 : Cell := { cellDefaults with
  domain := ⟨(181 / 1600 : ℚ), (3621 / 32000 : ℚ)⟩
  r := (5373163700513 / 5000000000000 : ℚ)
  w := (48760684944683 / 50000000000000 : ℚ)
  center := (7241 / 64000 : ℚ)
  supportValue := (3832512227614443 / 10000000000000000 : ℚ)
  supportSlope := (172739267629467 / 40000000000000 : ℚ)
  oldCenter := (3832512227614443 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_345
  oldLo := (38300000000000001 / 100000000000000000 : ℚ)
  oldHi := (38350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_934]
}

def cell_3796 : Cell := { cellDefaults with
  domain := ⟨(3621 / 32000 : ℚ), (1811 / 16000 : ℚ)⟩
  r := (5373163700513 / 5000000000000 : ℚ)
  w := (48760684944683 / 50000000000000 : ℚ)
  center := (7243 / 64000 : ℚ)
  supportValue := (958465509426733 / 2500000000000000 : ℚ)
  supportSlope := (4320304804009467 / 1000000000000000 : ℚ)
  oldCenter := (958465509426733 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_345
  oldLo := (38300000000000001 / 100000000000000000 : ℚ)
  oldHi := (38350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_934]
}

def cell_3797 : Cell := { cellDefaults with
  domain := ⟨(1811 / 16000 : ℚ), (3623 / 32000 : ℚ)⟩
  r := (5373163700513 / 5000000000000 : ℚ)
  w := (48760684944683 / 50000000000000 : ℚ)
  center := (1449 / 12800 : ℚ)
  supportValue := (7670422958190899 / 20000000000000000 : ℚ)
  supportSlope := (1727932360813611 / 400000000000000 : ℚ)
  oldCenter := (7670422958190899 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_345
  oldLo := (38300000000000001 / 100000000000000000 : ℚ)
  oldHi := (38400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_934, piece_935]
}

def cell_3798 : Cell := { cellDefaults with
  domain := ⟨(3623 / 32000 : ℚ), (453 / 4000 : ℚ)⟩
  r := (5373163700513 / 5000000000000 : ℚ)
  w := (48760684944683 / 50000000000000 : ℚ)
  center := (7247 / 64000 : ℚ)
  supportValue := (38365621023657087 / 100000000000000000 : ℚ)
  supportSlope := (2160222714161719 / 500000000000000 : ℚ)
  oldCenter := (38365621023657087 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_345
  oldLo := (38350000000000001 / 100000000000000000 : ℚ)
  oldHi := (38400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_935]
}

def cell_3799 : Cell := { cellDefaults with
  domain := ⟨(453 / 4000 : ℚ), (29 / 256 : ℚ)⟩
  r := (5373163700513 / 5000000000000 : ℚ)
  w := (48760684944683 / 50000000000000 : ℚ)
  center := (7249 / 64000 : ℚ)
  supportValue := (239869532786337 / 625000000000000 : ℚ)
  supportSlope := (4322258644361199 / 1000000000000000 : ℚ)
  oldCenter := (239869532786337 / 625000000000000 : ℚ)
  newCoefficients := coefficients_345
  oldLo := (38350000000000001 / 100000000000000000 : ℚ)
  oldHi := (38400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_935]
}

theorem check_3750 : SourceCertificateFamily.RightNormalized.check cell_3750 = true := by
  decide +kernel

theorem check_3751 : SourceCertificateFamily.RightNormalized.check cell_3751 = true := by
  decide +kernel

theorem check_3752 : SourceCertificateFamily.RightNormalized.check cell_3752 = true := by
  decide +kernel

theorem check_3753 : SourceCertificateFamily.RightNormalized.check cell_3753 = true := by
  decide +kernel

theorem check_3754 : SourceCertificateFamily.RightNormalized.check cell_3754 = true := by
  decide +kernel

theorem check_3755 : SourceCertificateFamily.RightNormalized.check cell_3755 = true := by
  decide +kernel

theorem check_3756 : SourceCertificateFamily.RightNormalized.check cell_3756 = true := by
  decide +kernel

theorem check_3757 : SourceCertificateFamily.RightNormalized.check cell_3757 = true := by
  decide +kernel

theorem check_3758 : SourceCertificateFamily.RightNormalized.check cell_3758 = true := by
  decide +kernel

theorem check_3759 : SourceCertificateFamily.RightNormalized.check cell_3759 = true := by
  decide +kernel

theorem check_3760 : SourceCertificateFamily.RightNormalized.check cell_3760 = true := by
  decide +kernel

theorem check_3761 : SourceCertificateFamily.RightNormalized.check cell_3761 = true := by
  decide +kernel

theorem check_3762 : SourceCertificateFamily.RightNormalized.check cell_3762 = true := by
  decide +kernel

theorem check_3763 : SourceCertificateFamily.RightNormalized.check cell_3763 = true := by
  decide +kernel

theorem check_3764 : SourceCertificateFamily.RightNormalized.check cell_3764 = true := by
  decide +kernel

theorem check_3765 : SourceCertificateFamily.RightNormalized.check cell_3765 = true := by
  decide +kernel

theorem check_3766 : SourceCertificateFamily.RightNormalized.check cell_3766 = true := by
  decide +kernel

theorem check_3767 : SourceCertificateFamily.RightNormalized.check cell_3767 = true := by
  decide +kernel

theorem check_3768 : SourceCertificateFamily.RightNormalized.check cell_3768 = true := by
  decide +kernel

theorem check_3769 : SourceCertificateFamily.RightNormalized.check cell_3769 = true := by
  decide +kernel

theorem check_3770 : SourceCertificateFamily.RightNormalized.check cell_3770 = true := by
  decide +kernel

theorem check_3771 : SourceCertificateFamily.RightNormalized.check cell_3771 = true := by
  decide +kernel

theorem check_3772 : SourceCertificateFamily.RightNormalized.check cell_3772 = true := by
  decide +kernel

theorem check_3773 : SourceCertificateFamily.RightNormalized.check cell_3773 = true := by
  decide +kernel

theorem check_3774 : SourceCertificateFamily.RightNormalized.check cell_3774 = true := by
  decide +kernel

theorem check_3775 : SourceCertificateFamily.RightNormalized.check cell_3775 = true := by
  decide +kernel

theorem check_3776 : SourceCertificateFamily.RightNormalized.check cell_3776 = true := by
  decide +kernel

theorem check_3777 : SourceCertificateFamily.RightNormalized.check cell_3777 = true := by
  decide +kernel

theorem check_3778 : SourceCertificateFamily.RightNormalized.check cell_3778 = true := by
  decide +kernel

theorem check_3779 : SourceCertificateFamily.RightNormalized.check cell_3779 = true := by
  decide +kernel

theorem check_3780 : SourceCertificateFamily.RightNormalized.check cell_3780 = true := by
  decide +kernel

theorem check_3781 : SourceCertificateFamily.RightNormalized.check cell_3781 = true := by
  decide +kernel

theorem check_3782 : SourceCertificateFamily.RightNormalized.check cell_3782 = true := by
  decide +kernel

theorem check_3783 : SourceCertificateFamily.RightNormalized.check cell_3783 = true := by
  decide +kernel

theorem check_3784 : SourceCertificateFamily.RightNormalized.check cell_3784 = true := by
  decide +kernel

theorem check_3785 : SourceCertificateFamily.RightNormalized.check cell_3785 = true := by
  decide +kernel

theorem check_3786 : SourceCertificateFamily.RightNormalized.check cell_3786 = true := by
  decide +kernel

theorem check_3787 : SourceCertificateFamily.RightNormalized.check cell_3787 = true := by
  decide +kernel

theorem check_3788 : SourceCertificateFamily.RightNormalized.check cell_3788 = true := by
  decide +kernel

theorem check_3789 : SourceCertificateFamily.RightNormalized.check cell_3789 = true := by
  decide +kernel

theorem check_3790 : SourceCertificateFamily.RightNormalized.check cell_3790 = true := by
  decide +kernel

theorem check_3791 : SourceCertificateFamily.RightNormalized.check cell_3791 = true := by
  decide +kernel

theorem check_3792 : SourceCertificateFamily.RightNormalized.check cell_3792 = true := by
  decide +kernel

theorem check_3793 : SourceCertificateFamily.RightNormalized.check cell_3793 = true := by
  decide +kernel

theorem check_3794 : SourceCertificateFamily.RightNormalized.check cell_3794 = true := by
  decide +kernel

theorem check_3795 : SourceCertificateFamily.RightNormalized.check cell_3795 = true := by
  decide +kernel

theorem check_3796 : SourceCertificateFamily.RightNormalized.check cell_3796 = true := by
  decide +kernel

theorem check_3797 : SourceCertificateFamily.RightNormalized.check cell_3797 = true := by
  decide +kernel

theorem check_3798 : SourceCertificateFamily.RightNormalized.check cell_3798 = true := by
  decide +kernel

theorem check_3799 : SourceCertificateFamily.RightNormalized.check cell_3799 = true := by
  decide +kernel

def cells : List Cell := [cell_3750, cell_3751, cell_3752, cell_3753, cell_3754, cell_3755, cell_3756, cell_3757, cell_3758, cell_3759, cell_3760, cell_3761, cell_3762, cell_3763, cell_3764, cell_3765, cell_3766, cell_3767, cell_3768, cell_3769, cell_3770, cell_3771, cell_3772, cell_3773, cell_3774, cell_3775, cell_3776, cell_3777, cell_3778, cell_3779, cell_3780, cell_3781, cell_3782, cell_3783, cell_3784, cell_3785, cell_3786, cell_3787, cell_3788, cell_3789, cell_3790, cell_3791, cell_3792, cell_3793, cell_3794, cell_3795, cell_3796, cell_3797, cell_3798, cell_3799]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_3750, SourceCertificateFamily.of_right_checked check_3751, SourceCertificateFamily.of_right_checked check_3752, SourceCertificateFamily.of_right_checked check_3753, SourceCertificateFamily.of_right_checked check_3754, SourceCertificateFamily.of_right_checked check_3755, SourceCertificateFamily.of_right_checked check_3756, SourceCertificateFamily.of_right_checked check_3757, SourceCertificateFamily.of_right_checked check_3758, SourceCertificateFamily.of_right_checked check_3759, SourceCertificateFamily.of_right_checked check_3760, SourceCertificateFamily.of_right_checked check_3761, SourceCertificateFamily.of_right_checked check_3762, SourceCertificateFamily.of_right_checked check_3763, SourceCertificateFamily.of_right_checked check_3764, SourceCertificateFamily.of_right_checked check_3765, SourceCertificateFamily.of_right_checked check_3766, SourceCertificateFamily.of_right_checked check_3767, SourceCertificateFamily.of_right_checked check_3768, SourceCertificateFamily.of_right_checked check_3769, SourceCertificateFamily.of_right_checked check_3770, SourceCertificateFamily.of_right_checked check_3771, SourceCertificateFamily.of_right_checked check_3772, SourceCertificateFamily.of_right_checked check_3773, SourceCertificateFamily.of_right_checked check_3774, SourceCertificateFamily.of_right_checked check_3775, SourceCertificateFamily.of_right_checked check_3776, SourceCertificateFamily.of_right_checked check_3777, SourceCertificateFamily.of_right_checked check_3778, SourceCertificateFamily.of_right_checked check_3779, SourceCertificateFamily.of_right_checked check_3780, SourceCertificateFamily.of_right_checked check_3781, SourceCertificateFamily.of_right_checked check_3782, SourceCertificateFamily.of_right_checked check_3783, SourceCertificateFamily.of_right_checked check_3784, SourceCertificateFamily.of_right_checked check_3785, SourceCertificateFamily.of_right_checked check_3786, SourceCertificateFamily.of_right_checked check_3787, SourceCertificateFamily.of_right_checked check_3788, SourceCertificateFamily.of_right_checked check_3789, SourceCertificateFamily.of_right_checked check_3790, SourceCertificateFamily.of_right_checked check_3791, SourceCertificateFamily.of_right_checked check_3792, SourceCertificateFamily.of_right_checked check_3793, SourceCertificateFamily.of_right_checked check_3794, SourceCertificateFamily.of_right_checked check_3795, SourceCertificateFamily.of_right_checked check_3796, SourceCertificateFamily.of_right_checked check_3797, SourceCertificateFamily.of_right_checked check_3798, SourceCertificateFamily.of_right_checked check_3799, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0075

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0075
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0075
open AnalyticBounds.ExpressionCertificate

theorem linked_3750 : Linked cell_3750 pieces := by
  apply Linked.of_piece piece_342 piece_342_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3750, List.cons_subset, List.nil_subset, and_true]
  exact piece_922_mem

theorem linked_3751 : Linked cell_3751 pieces := by
  apply Linked.of_piece piece_342 piece_342_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3751, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_922_mem, piece_923_mem⟩

theorem linked_3752 : Linked cell_3752 pieces := by
  apply Linked.of_piece piece_342 piece_342_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3752, List.cons_subset, List.nil_subset, and_true]
  exact piece_923_mem

theorem linked_3753 : Linked cell_3753 pieces := by
  apply Linked.of_piece piece_342 piece_342_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3753, List.cons_subset, List.nil_subset, and_true]
  exact piece_923_mem

theorem linked_3754 : Linked cell_3754 pieces := by
  apply Linked.of_piece piece_342 piece_342_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3754, List.cons_subset, List.nil_subset, and_true]
  exact piece_923_mem

theorem linked_3755 : Linked cell_3755 pieces := by
  apply Linked.of_piece piece_342 piece_342_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3755, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_923_mem, piece_924_mem⟩

theorem linked_3756 : Linked cell_3756 pieces := by
  apply Linked.of_piece piece_342 piece_342_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3756, List.cons_subset, List.nil_subset, and_true]
  exact piece_924_mem

theorem linked_3757 : Linked cell_3757 pieces := by
  apply Linked.of_piece piece_342 piece_342_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3757, List.cons_subset, List.nil_subset, and_true]
  exact piece_924_mem

theorem linked_3758 : Linked cell_3758 pieces := by
  apply Linked.of_piece piece_342 piece_342_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3758, List.cons_subset, List.nil_subset, and_true]
  exact piece_924_mem

theorem linked_3759 : Linked cell_3759 pieces := by
  apply Linked.of_piece piece_343 piece_343_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3759, List.cons_subset, List.nil_subset, and_true]
  exact piece_924_mem

theorem linked_3760 : Linked cell_3760 pieces := by
  apply Linked.of_piece piece_343 piece_343_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3760, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_924_mem, piece_925_mem⟩

theorem linked_3761 : Linked cell_3761 pieces := by
  apply Linked.of_piece piece_343 piece_343_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3761, List.cons_subset, List.nil_subset, and_true]
  exact piece_925_mem

theorem linked_3762 : Linked cell_3762 pieces := by
  apply Linked.of_piece piece_343 piece_343_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3762, List.cons_subset, List.nil_subset, and_true]
  exact piece_925_mem

theorem linked_3763 : Linked cell_3763 pieces := by
  apply Linked.of_piece piece_343 piece_343_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3763, List.cons_subset, List.nil_subset, and_true]
  exact piece_925_mem

theorem linked_3764 : Linked cell_3764 pieces := by
  apply Linked.of_piece piece_343 piece_343_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3764, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_925_mem, piece_926_mem⟩

theorem linked_3765 : Linked cell_3765 pieces := by
  apply Linked.of_piece piece_343 piece_343_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3765, List.cons_subset, List.nil_subset, and_true]
  exact piece_926_mem

theorem linked_3766 : Linked cell_3766 pieces := by
  apply Linked.of_piece piece_343 piece_343_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3766, List.cons_subset, List.nil_subset, and_true]
  exact piece_926_mem

theorem linked_3767 : Linked cell_3767 pieces := by
  apply Linked.of_piece piece_343 piece_343_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3767, List.cons_subset, List.nil_subset, and_true]
  exact piece_926_mem

theorem linked_3768 : Linked cell_3768 pieces := by
  apply Linked.of_piece piece_343 piece_343_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3768, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_926_mem, piece_927_mem⟩

theorem linked_3769 : Linked cell_3769 pieces := by
  apply Linked.of_piece piece_343 piece_343_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3769, List.cons_subset, List.nil_subset, and_true]
  exact piece_927_mem

theorem linked_3770 : Linked cell_3770 pieces := by
  apply Linked.of_piece piece_343 piece_343_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3770, List.cons_subset, List.nil_subset, and_true]
  exact piece_927_mem

theorem linked_3771 : Linked cell_3771 pieces := by
  apply Linked.of_piece piece_343 piece_343_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3771, List.cons_subset, List.nil_subset, and_true]
  exact piece_927_mem

theorem linked_3772 : Linked cell_3772 pieces := by
  apply Linked.of_piece piece_343 piece_343_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3772, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_927_mem, ⟨piece_928_mem, piece_929_mem⟩⟩

theorem linked_3773 : Linked cell_3773 pieces := by
  apply Linked.of_piece piece_343 piece_343_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3773, List.cons_subset, List.nil_subset, and_true]
  exact piece_929_mem

theorem linked_3774 : Linked cell_3774 pieces := by
  apply Linked.of_piece piece_343 piece_343_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3774, List.cons_subset, List.nil_subset, and_true]
  exact piece_929_mem

theorem linked_3775 : Linked cell_3775 pieces := by
  apply Linked.of_piece piece_344 piece_344_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3775, List.cons_subset, List.nil_subset, and_true]
  exact piece_929_mem

theorem linked_3776 : Linked cell_3776 pieces := by
  apply Linked.of_piece piece_344 piece_344_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3776, List.cons_subset, List.nil_subset, and_true]
  exact piece_929_mem

theorem linked_3777 : Linked cell_3777 pieces := by
  apply Linked.of_piece piece_344 piece_344_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3777, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_929_mem, piece_930_mem⟩

theorem linked_3778 : Linked cell_3778 pieces := by
  apply Linked.of_piece piece_344 piece_344_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3778, List.cons_subset, List.nil_subset, and_true]
  exact piece_930_mem

theorem linked_3779 : Linked cell_3779 pieces := by
  apply Linked.of_piece piece_344 piece_344_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3779, List.cons_subset, List.nil_subset, and_true]
  exact piece_930_mem

theorem linked_3780 : Linked cell_3780 pieces := by
  apply Linked.of_piece piece_344 piece_344_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3780, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_930_mem, piece_931_mem⟩

theorem linked_3781 : Linked cell_3781 pieces := by
  apply Linked.of_piece piece_344 piece_344_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3781, List.cons_subset, List.nil_subset, and_true]
  exact piece_931_mem

theorem linked_3782 : Linked cell_3782 pieces := by
  apply Linked.of_piece piece_344 piece_344_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3782, List.cons_subset, List.nil_subset, and_true]
  exact piece_931_mem

theorem linked_3783 : Linked cell_3783 pieces := by
  apply Linked.of_piece piece_344 piece_344_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3783, List.cons_subset, List.nil_subset, and_true]
  exact piece_931_mem

theorem linked_3784 : Linked cell_3784 pieces := by
  apply Linked.of_piece piece_344 piece_344_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3784, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_931_mem, piece_932_mem⟩

theorem linked_3785 : Linked cell_3785 pieces := by
  apply Linked.of_piece piece_344 piece_344_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3785, List.cons_subset, List.nil_subset, and_true]
  exact piece_932_mem

theorem linked_3786 : Linked cell_3786 pieces := by
  apply Linked.of_piece piece_344 piece_344_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3786, List.cons_subset, List.nil_subset, and_true]
  exact piece_932_mem

theorem linked_3787 : Linked cell_3787 pieces := by
  apply Linked.of_piece piece_344 piece_344_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3787, List.cons_subset, List.nil_subset, and_true]
  exact piece_932_mem

theorem linked_3788 : Linked cell_3788 pieces := by
  apply Linked.of_piece piece_344 piece_344_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3788, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_932_mem, piece_933_mem⟩

theorem linked_3789 : Linked cell_3789 pieces := by
  apply Linked.of_piece piece_344 piece_344_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3789, List.cons_subset, List.nil_subset, and_true]
  exact piece_933_mem

theorem linked_3790 : Linked cell_3790 pieces := by
  apply Linked.of_piece piece_344 piece_344_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3790, List.cons_subset, List.nil_subset, and_true]
  exact piece_933_mem

theorem linked_3791 : Linked cell_3791 pieces := by
  apply Linked.of_piece piece_345 piece_345_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3791, List.cons_subset, List.nil_subset, and_true]
  exact piece_933_mem

theorem linked_3792 : Linked cell_3792 pieces := by
  apply Linked.of_piece piece_345 piece_345_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3792, List.cons_subset, List.nil_subset, and_true]
  exact piece_933_mem

theorem linked_3793 : Linked cell_3793 pieces := by
  apply Linked.of_piece piece_345 piece_345_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3793, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_933_mem, piece_934_mem⟩

theorem linked_3794 : Linked cell_3794 pieces := by
  apply Linked.of_piece piece_345 piece_345_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3794, List.cons_subset, List.nil_subset, and_true]
  exact piece_934_mem

theorem linked_3795 : Linked cell_3795 pieces := by
  apply Linked.of_piece piece_345 piece_345_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3795, List.cons_subset, List.nil_subset, and_true]
  exact piece_934_mem

theorem linked_3796 : Linked cell_3796 pieces := by
  apply Linked.of_piece piece_345 piece_345_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3796, List.cons_subset, List.nil_subset, and_true]
  exact piece_934_mem

theorem linked_3797 : Linked cell_3797 pieces := by
  apply Linked.of_piece piece_345 piece_345_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3797, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_934_mem, piece_935_mem⟩

theorem linked_3798 : Linked cell_3798 pieces := by
  apply Linked.of_piece piece_345 piece_345_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3798, List.cons_subset, List.nil_subset, and_true]
  exact piece_935_mem

theorem linked_3799 : Linked cell_3799 pieces := by
  apply Linked.of_piece piece_345 piece_345_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3799, List.cons_subset, List.nil_subset, and_true]
  exact piece_935_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0075.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0075.cells,List.forall_mem_cons]
  exact ⟨linked_3750, linked_3751, linked_3752, linked_3753, linked_3754, linked_3755, linked_3756, linked_3757, linked_3758, linked_3759, linked_3760, linked_3761, linked_3762, linked_3763, linked_3764, linked_3765, linked_3766, linked_3767, linked_3768, linked_3769, linked_3770, linked_3771, linked_3772, linked_3773, linked_3774, linked_3775, linked_3776, linked_3777, linked_3778, linked_3779, linked_3780, linked_3781, linked_3782, linked_3783, linked_3784, linked_3785, linked_3786, linked_3787, linked_3788, linked_3789, linked_3790, linked_3791, linked_3792, linked_3793, linked_3794, linked_3795, linked_3796, linked_3797, linked_3798, linked_3799, by simp⟩

theorem covered : covers (447 / 4000 : ℚ) (29 / 256 : ℚ)
    (SourceCertificates.Chunk0075.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0075
