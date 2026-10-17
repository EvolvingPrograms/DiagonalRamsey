import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0074
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(3527 / 32000 : ℚ), (441 / 4000 : ℚ)⟩
  branch := .right
  r := (10811935707349 / 10000000000000 : ℚ)
  w := (48620153547261 / 50000000000000 : ℚ)
  center := (1411 / 12800 : ℚ)
  supportValue := (3719735734672603 / 10000000000000000 : ℚ)
  supportSlope := (1062290814747513 / 250000000000000 : ℚ)
  oldCenter := (3719735734672603 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_340
  oldLo := (749 / 2000 : ℚ)
  oldHi := (747 / 2000 : ℚ)
  oldPieces := [piece_915]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_3700 : Cell := { cellDefaults with
  r := (10825149665347 / 10000000000000 : ℚ)
  w := (24294948797743 / 25000000000000 : ℚ)
  newCoefficients := coefficients_339
  oldLo := (7430000000000001 / 20000000000000000 : ℚ)
  oldHi := (149 / 400 : ℚ)
  oldPieces := [piece_909, piece_910]
}

def cell_3701 : Cell := { cellDefaults with
  domain := ⟨(441 / 4000 : ℚ), (3529 / 32000 : ℚ)⟩
  r := (10825149665347 / 10000000000000 : ℚ)
  w := (24294948797743 / 25000000000000 : ℚ)
  center := (7057 / 64000 : ℚ)
  supportValue := (18605316452969717 / 50000000000000000 : ℚ)
  supportSlope := (2124186696214281 / 500000000000000 : ℚ)
  oldCenter := (18605316452969717 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_339
  oldLo := (93 / 250 : ℚ)
  oldHi := (149 / 400 : ℚ)
  oldPieces := [piece_910]
}

def cell_3702 : Cell := { cellDefaults with
  domain := ⟨(3529 / 32000 : ℚ), (353 / 3200 : ℚ)⟩
  r := (10825149665347 / 10000000000000 : ℚ)
  w := (24294948797743 / 25000000000000 : ℚ)
  center := (7059 / 64000 : ℚ)
  supportValue := (3722391209479119 / 10000000000000000 : ℚ)
  supportSlope := (4250311224117453 / 1000000000000000 : ℚ)
  oldCenter := (3722391209479119 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_339
  oldLo := (93 / 250 : ℚ)
  oldHi := (149 / 400 : ℚ)
  oldPieces := [piece_910]
}

def cell_3703 : Cell := { cellDefaults with
  domain := ⟨(353 / 3200 : ℚ), (3531 / 32000 : ℚ)⟩
  r := (10825149665347 / 10000000000000 : ℚ)
  w := (24294948797743 / 25000000000000 : ℚ)
  center := (7061 / 64000 : ℚ)
  supportValue := (372371973468831 / 1000000000000000 : ℚ)
  supportSlope := (2126126935757533 / 500000000000000 : ℚ)
  oldCenter := (372371973468831 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_339
  oldLo := (93 / 250 : ℚ)
  oldHi := (149 / 400 : ℚ)
  oldPieces := [piece_910]
}

def cell_3704 : Cell := { cellDefaults with
  domain := ⟨(3531 / 32000 : ℚ), (883 / 8000 : ℚ)⟩
  r := (10825149665347 / 10000000000000 : ℚ)
  w := (24294948797743 / 25000000000000 : ℚ)
  center := (7063 / 64000 : ℚ)
  supportValue := (186252441101341 / 500000000000000 : ℚ)
  supportSlope := (2126053462021993 / 500000000000000 : ℚ)
  oldCenter := (186252441101341 / 500000000000000 : ℚ)
  newCoefficients := coefficients_339
  oldLo := (93 / 250 : ℚ)
  oldHi := (373 / 1000 : ℚ)
  oldPieces := [piece_910, piece_911]
}

def cell_3705 : Cell := { cellDefaults with
  domain := ⟨(883 / 8000 : ℚ), (3533 / 32000 : ℚ)⟩
  r := (10825149665347 / 10000000000000 : ℚ)
  w := (24294948797743 / 25000000000000 : ℚ)
  center := (1413 / 12800 : ℚ)
  supportValue := (1863189045060687 / 5000000000000000 : ℚ)
  supportSlope := (8504477099325669 / 2000000000000000 : ℚ)
  oldCenter := (1863189045060687 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_339
  oldLo := (149 / 400 : ℚ)
  oldHi := (373 / 1000 : ℚ)
  oldPieces := [piece_911]
}

def cell_3706 : Cell := { cellDefaults with
  domain := ⟨(3533 / 32000 : ℚ), (1767 / 16000 : ℚ)⟩
  r := (10825149665347 / 10000000000000 : ℚ)
  w := (24294948797743 / 25000000000000 : ℚ)
  center := (7067 / 64000 : ℚ)
  supportValue := (3727706470695447 / 10000000000000000 : ℚ)
  supportSlope := (2127085317226829 / 500000000000000 : ℚ)
  oldCenter := (3727706470695447 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_339
  oldLo := (149 / 400 : ℚ)
  oldHi := (373 / 1000 : ℚ)
  oldPieces := [piece_911]
}

def cell_3707 : Cell := { cellDefaults with
  domain := ⟨(1767 / 16000 : ℚ), (707 / 6400 : ℚ)⟩
  r := (10825149665347 / 10000000000000 : ℚ)
  w := (24294948797743 / 25000000000000 : ℚ)
  center := (7069 / 64000 : ℚ)
  supportValue := (1864518100534121 / 5000000000000000 : ℚ)
  supportSlope := (4256107502422779 / 1000000000000000 : ℚ)
  oldCenter := (1864518100534121 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_339
  oldLo := (149 / 400 : ℚ)
  oldHi := (373 / 1000 : ℚ)
  oldPieces := [piece_911]
}

def cell_3708 : Cell := { cellDefaults with
  domain := ⟨(707 / 6400 : ℚ), (221 / 2000 : ℚ)⟩
  r := (10825149665347 / 10000000000000 : ℚ)
  w := (24294948797743 / 25000000000000 : ℚ)
  center := (7071 / 64000 : ℚ)
  supportValue := (1865183101427493 / 5000000000000000 : ℚ)
  supportSlope := (106375912857537 / 25000000000000 : ℚ)
  oldCenter := (1865183101427493 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_339
  oldLo := (149 / 400 : ℚ)
  oldPieces := [piece_911, piece_912]
}

def cell_3709 : Cell := { cellDefaults with
  domain := ⟨(221 / 2000 : ℚ), (3537 / 32000 : ℚ)⟩
  center := (7073 / 64000 : ℚ)
  supportValue := (3729851896829731 / 10000000000000000 : ℚ)
  supportSlope := (4255022648433027 / 1000000000000000 : ℚ)
  oldCenter := (3729851896829731 / 10000000000000000 : ℚ)
  oldLo := (149 / 400 : ℚ)
  oldPieces := [piece_911, piece_912]
}

def cell_3710 : Cell := { cellDefaults with
  domain := ⟨(3537 / 32000 : ℚ), (1769 / 16000 : ℚ)⟩
  center := (283 / 2560 : ℚ)
  supportValue := (1865591017067777 / 5000000000000000 : ℚ)
  supportSlope := (2127293919188311 / 500000000000000 : ℚ)
  oldCenter := (1865591017067777 / 5000000000000000 : ℚ)
  oldLo := (373 / 1000 : ℚ)
  oldPieces := [piece_912]
}

def cell_3711 : Cell := { cellDefaults with
  domain := ⟨(1769 / 16000 : ℚ), (3539 / 32000 : ℚ)⟩
  center := (7077 / 64000 : ℚ)
  supportValue := (186625594696791 / 500000000000000 : ℚ)
  supportSlope := (4256516922177767 / 1000000000000000 : ℚ)
  oldCenter := (186625594696791 / 500000000000000 : ℚ)
  oldLo := (373 / 1000 : ℚ)
  oldPieces := [piece_912]
}

def cell_3712 : Cell := { cellDefaults with
  domain := ⟨(3539 / 32000 : ℚ), (177 / 1600 : ℚ)⟩
  center := (7079 / 64000 : ℚ)
  supportValue := (7467684714635393 / 20000000000000000 : ℚ)
  supportSlope := (8516901530462917 / 2000000000000000 : ℚ)
  oldCenter := (7467684714635393 / 20000000000000000 : ℚ)
  oldLo := (373 / 1000 : ℚ)
  oldPieces := [piece_912]
}

def cell_3713 : Cell := { cellDefaults with
  domain := ⟨(177 / 1600 : ℚ), (3541 / 32000 : ℚ)⟩
  center := (7081 / 64000 : ℚ)
  supportValue := (37351725214713627 / 100000000000000000 : ℚ)
  supportSlope := (4257954671622599 / 1000000000000000 : ℚ)
  oldCenter := (37351725214713627 / 100000000000000000 : ℚ)
  oldLo := (373 / 1000 : ℚ)
  oldHi := (187 / 500 : ℚ)
  oldPieces := [piece_912, piece_913]
}

def cell_3714 : Cell := { cellDefaults with
  domain := ⟨(3541 / 32000 : ℚ), (1771 / 16000 : ℚ)⟩
  center := (7083 / 64000 : ℚ)
  supportValue := (3736503734384089 / 10000000000000000 : ℚ)
  supportSlope := (532306359764867 / 125000000000000 : ℚ)
  oldCenter := (3736503734384089 / 10000000000000000 : ℚ)
  oldLo := (747 / 2000 : ℚ)
  oldHi := (187 / 500 : ℚ)
  oldPieces := [piece_913]
}

def cell_3715 : Cell := { cellDefaults with
  domain := ⟨(1771 / 16000 : ℚ), (3543 / 32000 : ℚ)⟩
  center := (1417 / 12800 : ℚ)
  supportValue := (934458700101649 / 2500000000000000 : ℚ)
  supportSlope := (426037369692267 / 100000000000000 : ℚ)
  oldCenter := (934458700101649 / 2500000000000000 : ℚ)
  oldLo := (747 / 2000 : ℚ)
  oldHi := (187 / 500 : ℚ)
  oldPieces := [piece_913]
}

def cell_3716 : Cell := { cellDefaults with
  domain := ⟨(3543 / 32000 : ℚ), (443 / 4000 : ℚ)⟩
  center := (7087 / 64000 : ℚ)
  supportValue := (3739166468047499 / 10000000000000000 : ℚ)
  supportSlope := (133196913761513 / 31250000000000 : ℚ)
  oldCenter := (3739166468047499 / 10000000000000000 : ℚ)
  oldLo := (747 / 2000 : ℚ)
  oldHi := (187 / 500 : ℚ)
  oldPieces := [piece_913]
}

def cell_3717 : Cell := { cellDefaults with
  domain := ⟨(443 / 4000 : ℚ), (7089 / 64000 : ℚ)⟩
  center := (14177 / 128000 : ℚ)
  supportValue := (935041366297697 / 2500000000000000 : ℚ)
  supportSlope := (426087480593651 / 100000000000000 : ℚ)
  oldCenter := (935041366297697 / 2500000000000000 : ℚ)
  oldLo := (747 / 2000 : ℚ)
  oldHi := (749 / 2000 : ℚ)
  oldPieces := [piece_913, piece_914]
}

def cell_3718 : Cell := { cellDefaults with
  domain := ⟨(7089 / 64000 : ℚ), (709 / 6400 : ℚ)⟩
  center := (14179 / 128000 : ℚ)
  supportValue := (233801946952529 / 625000000000000 : ℚ)
  supportSlope := (2130434453537333 / 500000000000000 : ℚ)
  oldCenter := (233801946952529 / 625000000000000 : ℚ)
  oldLo := (187 / 500 : ℚ)
  oldHi := (749 / 2000 : ℚ)
  oldPieces := [piece_914]
}

def cell_3719 : Cell := { cellDefaults with
  domain := ⟨(709 / 6400 : ℚ), (1773 / 16000 : ℚ)⟩
  center := (7091 / 64000 : ℚ)
  supportValue := (9354574900991769 / 25000000000000000 : ℚ)
  supportSlope := (1065576023339787 / 250000000000000 : ℚ)
  oldCenter := (9354574900991769 / 25000000000000000 : ℚ)
  oldLo := (187 / 500 : ℚ)
  oldHi := (749 / 2000 : ℚ)
  oldPieces := [piece_914]
}

def cell_3720 : Cell := { cellDefaults with
  domain := ⟨(1773 / 16000 : ℚ), (3547 / 32000 : ℚ)⟩
  center := (7093 / 64000 : ℚ)
  supportValue := (748632445943223 / 2000000000000000 : ℚ)
  supportSlope := (2132110787518293 / 500000000000000 : ℚ)
  oldCenter := (748632445943223 / 2000000000000000 : ℚ)
  oldLo := (187 / 500 : ℚ)
  oldHi := (749 / 2000 : ℚ)
  oldPieces := [piece_914]
}

def cell_3721 : Cell := { cellDefaults with
  domain := ⟨(3547 / 32000 : ℚ), (887 / 8000 : ℚ)⟩
  center := (1419 / 12800 : ℚ)
  supportValue := (468061793760279 / 1250000000000000 : ℚ)
  supportSlope := (8531359364823743 / 2000000000000000 : ℚ)
  oldCenter := (468061793760279 / 1250000000000000 : ℚ)
  oldLo := (187 / 500 : ℚ)
  oldHi := (3 / 8 : ℚ)
  oldPieces := [piece_914, piece_915]
}

def cell_3722 : Cell := { cellDefaults with
  domain := ⟨(887 / 8000 : ℚ), (3549 / 32000 : ℚ)⟩
  center := (7097 / 64000 : ℚ)
  supportValue := (3745827827161489 / 10000000000000000 : ℚ)
  supportSlope := (4264240947874143 / 1000000000000000 : ℚ)
  oldCenter := (3745827827161489 / 10000000000000000 : ℚ)
  oldHi := (3 / 8 : ℚ)
  oldPieces := [piece_915]
}

def cell_3723 : Cell := { cellDefaults with
  domain := ⟨(3549 / 32000 : ℚ), (71 / 640 : ℚ)⟩
  center := (7099 / 64000 : ℚ)
  supportValue := (3747160700310509 / 10000000000000000 : ℚ)
  supportSlope := (4266149219683157 / 1000000000000000 : ℚ)
  oldCenter := (3747160700310509 / 10000000000000000 : ℚ)
  oldHi := (3 / 8 : ℚ)
  oldPieces := [piece_915]
}

def cell_3724 : Cell := { cellDefaults with
  domain := ⟨(71 / 640 : ℚ), (3551 / 32000 : ℚ)⟩
  center := (7101 / 64000 : ℚ)
  supportValue := (1874247085260263 / 5000000000000000 : ℚ)
  supportSlope := (1067015535660687 / 250000000000000 : ℚ)
  oldCenter := (1874247085260263 / 5000000000000000 : ℚ)
  oldHi := (3 / 8 : ℚ)
  oldPieces := [piece_915]
}

def cell_3725 : Cell := { cellDefaults with
  domain := ⟨(3551 / 32000 : ℚ), (111 / 1000 : ℚ)⟩
  center := (7103 / 64000 : ℚ)
  supportValue := (3749827489281817 / 10000000000000000 : ℚ)
  supportSlope := (533570916732673 / 125000000000000 : ℚ)
  oldCenter := (3749827489281817 / 10000000000000000 : ℚ)
  oldHi := (751 / 2000 : ℚ)
  oldPieces := [piece_915, piece_916, piece_917]
}

def cell_3726 : Cell := { cellDefaults with
  domain := ⟨(111 / 1000 : ℚ), (3553 / 32000 : ℚ)⟩
  r := (2699688083471 / 2500000000000 : ℚ)
  w := (24324832548979 / 25000000000000 : ℚ)
  center := (1421 / 12800 : ℚ)
  supportValue := (468659017504991 / 1250000000000000 : ℚ)
  supportSlope := (2134190921299073 / 500000000000000 : ℚ)
  oldCenter := (468659017504991 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_341
  oldHi := (3 / 8 : ℚ)
  oldPieces := [piece_915]
}

def cell_3727 : Cell := { cellDefaults with
  domain := ⟨(3553 / 32000 : ℚ), (1777 / 16000 : ℚ)⟩
  r := (2699688083471 / 2500000000000 : ℚ)
  w := (24324832548979 / 25000000000000 : ℚ)
  center := (7107 / 64000 : ℚ)
  supportValue := (1875302509629089 / 5000000000000000 : ℚ)
  supportSlope := (4266670698909181 / 1000000000000000 : ℚ)
  oldCenter := (1875302509629089 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_341
  oldHi := (751 / 2000 : ℚ)
  oldPieces := [piece_915, piece_916, piece_917]
}

def cell_3728 : Cell := { cellDefaults with
  domain := ⟨(1777 / 16000 : ℚ), (711 / 6400 : ℚ)⟩
  r := (2699688083471 / 2500000000000 : ℚ)
  w := (24324832548979 / 25000000000000 : ℚ)
  center := (7109 / 64000 : ℚ)
  supportValue := (1500775739038829 / 4000000000000000 : ℚ)
  supportSlope := (4268403327657211 / 1000000000000000 : ℚ)
  oldCenter := (1500775739038829 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_341
  oldLo := (3750279329608939 / 10000000000000000 : ℚ)
  oldHi := (751 / 2000 : ℚ)
  oldPieces := [piece_917]
}

def cell_3729 : Cell := { cellDefaults with
  domain := ⟨(711 / 6400 : ℚ), (889 / 8000 : ℚ)⟩
  r := (2699688083471 / 2500000000000 : ℚ)
  w := (24324832548979 / 25000000000000 : ℚ)
  center := (7111 / 64000 : ℚ)
  supportValue := (7506547043107089 / 20000000000000000 : ℚ)
  supportSlope := (4270312005242971 / 1000000000000000 : ℚ)
  oldCenter := (7506547043107089 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_341
  oldLo := (3750279329608939 / 10000000000000000 : ℚ)
  oldHi := (751 / 2000 : ℚ)
  oldPieces := [piece_917]
}

def cell_3730 : Cell := { cellDefaults with
  domain := ⟨(889 / 8000 : ℚ), (3557 / 32000 : ℚ)⟩
  r := (2699688083471 / 2500000000000 : ℚ)
  w := (24324832548979 / 25000000000000 : ℚ)
  center := (7113 / 64000 : ℚ)
  supportValue := (1877303770887047 / 5000000000000000 : ℚ)
  supportSlope := (4271442783437607 / 1000000000000000 : ℚ)
  oldCenter := (1877303770887047 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_341
  oldLo := (3750279329608939 / 10000000000000000 : ℚ)
  oldHi := (47 / 125 : ℚ)
  oldPieces := [piece_917, piece_918]
}

def cell_3731 : Cell := { cellDefaults with
  domain := ⟨(3557 / 32000 : ℚ), (1779 / 16000 : ℚ)⟩
  r := (2699688083471 / 2500000000000 : ℚ)
  w := (24324832548979 / 25000000000000 : ℚ)
  center := (1423 / 12800 : ℚ)
  supportValue := (9389857064197099 / 25000000000000000 : ℚ)
  supportSlope := (66724172040733 / 15625000000000 : ℚ)
  oldCenter := (9389857064197099 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_341
  oldLo := (751 / 2000 : ℚ)
  oldHi := (47 / 125 : ℚ)
  oldPieces := [piece_918]
}

def cell_3732 : Cell := { cellDefaults with
  domain := ⟨(1779 / 16000 : ℚ), (3559 / 32000 : ℚ)⟩
  r := (2699688083471 / 2500000000000 : ℚ)
  w := (24324832548979 / 25000000000000 : ℚ)
  center := (7117 / 64000 : ℚ)
  supportValue := (3757277605553261 / 10000000000000000 : ℚ)
  supportSlope := (8544492373122381 / 2000000000000000 : ℚ)
  oldCenter := (3757277605553261 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_341
  oldLo := (751 / 2000 : ℚ)
  oldHi := (47 / 125 : ℚ)
  oldPieces := [piece_918]
}

def cell_3733 : Cell := { cellDefaults with
  domain := ⟨(3559 / 32000 : ℚ), (89 / 800 : ℚ)⟩
  r := (2699688083471 / 2500000000000 : ℚ)
  w := (24324832548979 / 25000000000000 : ℚ)
  center := (7119 / 64000 : ℚ)
  supportValue := (18793064898186737 / 50000000000000000 : ℚ)
  supportSlope := (34193199654311 / 8000000000000 : ℚ)
  oldCenter := (18793064898186737 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_341
  oldLo := (751 / 2000 : ℚ)
  oldHi := (47 / 125 : ℚ)
  oldPieces := [piece_918]
}

def cell_3734 : Cell := { cellDefaults with
  domain := ⟨(89 / 800 : ℚ), (3561 / 32000 : ℚ)⟩
  r := (2699688083471 / 2500000000000 : ℚ)
  w := (24324832548979 / 25000000000000 : ℚ)
  center := (7121 / 64000 : ℚ)
  supportValue := (2349967623362139 / 6250000000000000 : ℚ)
  supportSlope := (1068579409349013 / 250000000000000 : ℚ)
  oldCenter := (2349967623362139 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_341
  oldLo := (751 / 2000 : ℚ)
  oldHi := (753 / 2000 : ℚ)
  oldPieces := [piece_918, piece_919]
}

def cell_3735 : Cell := { cellDefaults with
  domain := ⟨(3561 / 32000 : ℚ), (1781 / 16000 : ℚ)⟩
  r := (2699688083471 / 2500000000000 : ℚ)
  w := (24324832548979 / 25000000000000 : ℚ)
  center := (7123 / 64000 : ℚ)
  supportValue := (7346258558299 / 19531250000000 : ℚ)
  supportSlope := (2137093535476531 / 500000000000000 : ℚ)
  oldCenter := (7346258558299 / 19531250000000 : ℚ)
  newCoefficients := coefficients_341
  oldLo := (47 / 125 : ℚ)
  oldHi := (753 / 2000 : ℚ)
  oldPieces := [piece_919]
}

def cell_3736 : Cell := { cellDefaults with
  domain := ⟨(1781 / 16000 : ℚ), (3563 / 32000 : ℚ)⟩
  r := (2699688083471 / 2500000000000 : ℚ)
  w := (24324832548979 / 25000000000000 : ℚ)
  center := (57 / 512 : ℚ)
  supportValue := (7525240721900831 / 20000000000000000 : ℚ)
  supportSlope := (4276081171981971 / 1000000000000000 : ℚ)
  oldCenter := (7525240721900831 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_341
  oldLo := (47 / 125 : ℚ)
  oldHi := (753 / 2000 : ℚ)
  oldPieces := [piece_919]
}

def cell_3737 : Cell := { cellDefaults with
  domain := ⟨(3563 / 32000 : ℚ), (891 / 8000 : ℚ)⟩
  r := (2699688083471 / 2500000000000 : ℚ)
  w := (24324832548979 / 25000000000000 : ℚ)
  center := (7127 / 64000 : ℚ)
  supportValue := (18819784663354963 / 50000000000000000 : ℚ)
  supportSlope := (4277979838418489 / 1000000000000000 : ℚ)
  oldCenter := (18819784663354963 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_341
  oldLo := (47 / 125 : ℚ)
  oldHi := (753 / 2000 : ℚ)
  oldPieces := [piece_919]
}

def cell_3738 : Cell := { cellDefaults with
  domain := ⟨(891 / 8000 : ℚ), (713 / 6400 : ℚ)⟩
  r := (2699688083471 / 2500000000000 : ℚ)
  w := (24324832548979 / 25000000000000 : ℚ)
  center := (7129 / 64000 : ℚ)
  supportValue := (37652930876408897 / 100000000000000000 : ℚ)
  supportSlope := (2138590593415479 / 500000000000000 : ℚ)
  oldCenter := (37652930876408897 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_341
  oldLo := (47 / 125 : ℚ)
  oldHi := (377 / 1000 : ℚ)
  oldPieces := [piece_919, piece_920]
}

def cell_3739 : Cell := { cellDefaults with
  domain := ⟨(713 / 6400 : ℚ), (1783 / 16000 : ℚ)⟩
  r := (2699688083471 / 2500000000000 : ℚ)
  w := (24324832548979 / 25000000000000 : ℚ)
  center := (7131 / 64000 : ℚ)
  supportValue := (941657606726501 / 2500000000000000 : ℚ)
  supportSlope := (2139009502918121 / 500000000000000 : ℚ)
  oldCenter := (941657606726501 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_341
  oldLo := (753 / 2000 : ℚ)
  oldHi := (377 / 1000 : ℚ)
  oldPieces := [piece_920]
}

def cell_3740 : Cell := { cellDefaults with
  domain := ⟨(1783 / 16000 : ℚ), (3567 / 32000 : ℚ)⟩
  r := (2699688083471 / 2500000000000 : ℚ)
  w := (24324832548979 / 25000000000000 : ℚ)
  center := (7133 / 64000 : ℚ)
  supportValue := (1883983801332081 / 5000000000000000 : ℚ)
  supportSlope := (4279907834192187 / 1000000000000000 : ℚ)
  oldCenter := (1883983801332081 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_341
  oldLo := (753 / 2000 : ℚ)
  oldHi := (377 / 1000 : ℚ)
  oldPieces := [piece_920]
}

def cell_3741 : Cell := { cellDefaults with
  domain := ⟨(3567 / 32000 : ℚ), (223 / 2000 : ℚ)⟩
  r := (2699688083471 / 2500000000000 : ℚ)
  w := (24324832548979 / 25000000000000 : ℚ)
  center := (1427 / 12800 : ℚ)
  supportValue := (18846526846946163 / 50000000000000000 : ℚ)
  supportSlope := (2140900599159501 / 500000000000000 : ℚ)
  oldCenter := (18846526846946163 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_341
  oldLo := (753 / 2000 : ℚ)
  oldHi := (377 / 1000 : ℚ)
  oldPieces := [piece_920]
}

def cell_3742 : Cell := { cellDefaults with
  domain := ⟨(223 / 2000 : ℚ), (3569 / 32000 : ℚ)⟩
  r := (10785599436167 / 10000000000000 : ℚ)
  w := (48678451751841 / 50000000000000 : ℚ)
  center := (7137 / 64000 : ℚ)
  supportValue := (1884354117738109 / 5000000000000000 : ℚ)
  supportSlope := (1070031241723779 / 250000000000000 : ℚ)
  oldCenter := (1884354117738109 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_342
  oldLo := (753 / 2000 : ℚ)
  oldHi := (377 / 1000 : ℚ)
  oldPieces := [piece_920]
}

def cell_3743 : Cell := { cellDefaults with
  domain := ⟨(3569 / 32000 : ℚ), (357 / 3200 : ℚ)⟩
  r := (10785599436167 / 10000000000000 : ℚ)
  w := (48678451751841 / 50000000000000 : ℚ)
  center := (7139 / 64000 : ℚ)
  supportValue := (3770045276423597 / 10000000000000000 : ℚ)
  supportSlope := (856005776556401 / 200000000000000 : ℚ)
  oldCenter := (3770045276423597 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_342
  oldLo := (753 / 2000 : ℚ)
  oldHi := (151 / 400 : ℚ)
  oldPieces := [piece_920, piece_921]
}

def cell_3744 : Cell := { cellDefaults with
  domain := ⟨(357 / 3200 : ℚ), (3571 / 32000 : ℚ)⟩
  r := (10785599436167 / 10000000000000 : ℚ)
  w := (48678451751841 / 50000000000000 : ℚ)
  center := (7141 / 64000 : ℚ)
  supportValue := (3771383292170661 / 10000000000000000 : ℚ)
  supportSlope := (4280178202975549 / 1000000000000000 : ℚ)
  oldCenter := (3771383292170661 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_342
  oldLo := (377 / 1000 : ℚ)
  oldHi := (151 / 400 : ℚ)
  oldPieces := [piece_921]
}

def cell_3745 : Cell := { cellDefaults with
  domain := ⟨(3571 / 32000 : ℚ), (893 / 8000 : ℚ)⟩
  r := (10785599436167 / 10000000000000 : ℚ)
  w := (48678451751841 / 50000000000000 : ℚ)
  center := (7143 / 64000 : ℚ)
  supportValue := (3772721141892909 / 10000000000000000 : ℚ)
  supportSlope := (856412399949491 / 200000000000000 : ℚ)
  oldCenter := (3772721141892909 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_342
  oldLo := (377 / 1000 : ℚ)
  oldHi := (151 / 400 : ℚ)
  oldPieces := [piece_921]
}

def cell_3746 : Cell := { cellDefaults with
  domain := ⟨(893 / 8000 : ℚ), (3573 / 32000 : ℚ)⟩
  r := (10785599436167 / 10000000000000 : ℚ)
  w := (48678451751841 / 50000000000000 : ℚ)
  center := (1429 / 12800 : ℚ)
  supportValue := (94351489525119 / 250000000000000 : ℚ)
  supportSlope := (4283950300616013 / 1000000000000000 : ℚ)
  oldCenter := (94351489525119 / 250000000000000 : ℚ)
  newCoefficients := coefficients_342
  oldLo := (377 / 1000 : ℚ)
  oldHi := (151 / 400 : ℚ)
  oldPieces := [piece_921]
}

def cell_3747 : Cell := { cellDefaults with
  domain := ⟨(3573 / 32000 : ℚ), (1787 / 16000 : ℚ)⟩
  r := (10785599436167 / 10000000000000 : ℚ)
  w := (48678451751841 / 50000000000000 : ℚ)
  center := (7147 / 64000 : ℚ)
  supportValue := (943849377658701 / 2500000000000000 : ℚ)
  supportSlope := (4282879871343681 / 1000000000000000 : ℚ)
  oldCenter := (943849377658701 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_342
  oldLo := (377 / 1000 : ℚ)
  oldHi := (189 / 500 : ℚ)
  oldPieces := [piece_921, piece_922]
}

def cell_3748 : Cell := { cellDefaults with
  domain := ⟨(1787 / 16000 : ℚ), (143 / 1280 : ℚ)⟩
  r := (10785599436167 / 10000000000000 : ℚ)
  w := (48678451751841 / 50000000000000 : ℚ)
  center := (7149 / 64000 : ℚ)
  supportValue := (3776736724373477 / 10000000000000000 : ℚ)
  supportSlope := (8568011201600001 / 2000000000000000 : ℚ)
  oldCenter := (3776736724373477 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_342
  oldLo := (151 / 400 : ℚ)
  oldHi := (189 / 500 : ℚ)
  oldPieces := [piece_922]
}

def cell_3749 : Cell := { cellDefaults with
  domain := ⟨(143 / 1280 : ℚ), (447 / 4000 : ℚ)⟩
  r := (10785599436167 / 10000000000000 : ℚ)
  w := (48678451751841 / 50000000000000 : ℚ)
  center := (7151 / 64000 : ℚ)
  supportValue := (1889037884647799 / 5000000000000000 : ℚ)
  supportSlope := (4285883874269203 / 1000000000000000 : ℚ)
  oldCenter := (1889037884647799 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_342
  oldLo := (151 / 400 : ℚ)
  oldHi := (189 / 500 : ℚ)
  oldPieces := [piece_922]
}

theorem check_3700 : SourceCertificateFamily.RightNormalized.check cell_3700 = true := by
  decide +kernel

theorem check_3701 : SourceCertificateFamily.RightNormalized.check cell_3701 = true := by
  decide +kernel

theorem check_3702 : SourceCertificateFamily.RightNormalized.check cell_3702 = true := by
  decide +kernel

theorem check_3703 : SourceCertificateFamily.RightNormalized.check cell_3703 = true := by
  decide +kernel

theorem check_3704 : SourceCertificateFamily.RightNormalized.check cell_3704 = true := by
  decide +kernel

theorem check_3705 : SourceCertificateFamily.RightNormalized.check cell_3705 = true := by
  decide +kernel

theorem check_3706 : SourceCertificateFamily.RightNormalized.check cell_3706 = true := by
  decide +kernel

theorem check_3707 : SourceCertificateFamily.RightNormalized.check cell_3707 = true := by
  decide +kernel

theorem check_3708 : SourceCertificateFamily.RightNormalized.check cell_3708 = true := by
  decide +kernel

theorem check_3709 : SourceCertificateFamily.RightNormalized.check cell_3709 = true := by
  decide +kernel

theorem check_3710 : SourceCertificateFamily.RightNormalized.check cell_3710 = true := by
  decide +kernel

theorem check_3711 : SourceCertificateFamily.RightNormalized.check cell_3711 = true := by
  decide +kernel

theorem check_3712 : SourceCertificateFamily.RightNormalized.check cell_3712 = true := by
  decide +kernel

theorem check_3713 : SourceCertificateFamily.RightNormalized.check cell_3713 = true := by
  decide +kernel

theorem check_3714 : SourceCertificateFamily.RightNormalized.check cell_3714 = true := by
  decide +kernel

theorem check_3715 : SourceCertificateFamily.RightNormalized.check cell_3715 = true := by
  decide +kernel

theorem check_3716 : SourceCertificateFamily.RightNormalized.check cell_3716 = true := by
  decide +kernel

theorem check_3717 : SourceCertificateFamily.RightNormalized.check cell_3717 = true := by
  decide +kernel

theorem check_3718 : SourceCertificateFamily.RightNormalized.check cell_3718 = true := by
  decide +kernel

theorem check_3719 : SourceCertificateFamily.RightNormalized.check cell_3719 = true := by
  decide +kernel

theorem check_3720 : SourceCertificateFamily.RightNormalized.check cell_3720 = true := by
  decide +kernel

theorem check_3721 : SourceCertificateFamily.RightNormalized.check cell_3721 = true := by
  decide +kernel

theorem check_3722 : SourceCertificateFamily.RightNormalized.check cell_3722 = true := by
  decide +kernel

theorem check_3723 : SourceCertificateFamily.RightNormalized.check cell_3723 = true := by
  decide +kernel

theorem check_3724 : SourceCertificateFamily.RightNormalized.check cell_3724 = true := by
  decide +kernel

theorem check_3725 : SourceCertificateFamily.RightNormalized.check cell_3725 = true := by
  decide +kernel

theorem check_3726 : SourceCertificateFamily.RightNormalized.check cell_3726 = true := by
  decide +kernel

theorem check_3727 : SourceCertificateFamily.RightNormalized.check cell_3727 = true := by
  decide +kernel

theorem check_3728 : SourceCertificateFamily.RightNormalized.check cell_3728 = true := by
  decide +kernel

theorem check_3729 : SourceCertificateFamily.RightNormalized.check cell_3729 = true := by
  decide +kernel

theorem check_3730 : SourceCertificateFamily.RightNormalized.check cell_3730 = true := by
  decide +kernel

theorem check_3731 : SourceCertificateFamily.RightNormalized.check cell_3731 = true := by
  decide +kernel

theorem check_3732 : SourceCertificateFamily.RightNormalized.check cell_3732 = true := by
  decide +kernel

theorem check_3733 : SourceCertificateFamily.RightNormalized.check cell_3733 = true := by
  decide +kernel

theorem check_3734 : SourceCertificateFamily.RightNormalized.check cell_3734 = true := by
  decide +kernel

theorem check_3735 : SourceCertificateFamily.RightNormalized.check cell_3735 = true := by
  decide +kernel

theorem check_3736 : SourceCertificateFamily.RightNormalized.check cell_3736 = true := by
  decide +kernel

theorem check_3737 : SourceCertificateFamily.RightNormalized.check cell_3737 = true := by
  decide +kernel

theorem check_3738 : SourceCertificateFamily.RightNormalized.check cell_3738 = true := by
  decide +kernel

theorem check_3739 : SourceCertificateFamily.RightNormalized.check cell_3739 = true := by
  decide +kernel

theorem check_3740 : SourceCertificateFamily.RightNormalized.check cell_3740 = true := by
  decide +kernel

theorem check_3741 : SourceCertificateFamily.RightNormalized.check cell_3741 = true := by
  decide +kernel

theorem check_3742 : SourceCertificateFamily.RightNormalized.check cell_3742 = true := by
  decide +kernel

theorem check_3743 : SourceCertificateFamily.RightNormalized.check cell_3743 = true := by
  decide +kernel

theorem check_3744 : SourceCertificateFamily.RightNormalized.check cell_3744 = true := by
  decide +kernel

theorem check_3745 : SourceCertificateFamily.RightNormalized.check cell_3745 = true := by
  decide +kernel

theorem check_3746 : SourceCertificateFamily.RightNormalized.check cell_3746 = true := by
  decide +kernel

theorem check_3747 : SourceCertificateFamily.RightNormalized.check cell_3747 = true := by
  decide +kernel

theorem check_3748 : SourceCertificateFamily.RightNormalized.check cell_3748 = true := by
  decide +kernel

theorem check_3749 : SourceCertificateFamily.RightNormalized.check cell_3749 = true := by
  decide +kernel

def cells : List Cell := [cell_3700, cell_3701, cell_3702, cell_3703, cell_3704, cell_3705, cell_3706, cell_3707, cell_3708, cell_3709, cell_3710, cell_3711, cell_3712, cell_3713, cell_3714, cell_3715, cell_3716, cell_3717, cell_3718, cell_3719, cell_3720, cell_3721, cell_3722, cell_3723, cell_3724, cell_3725, cell_3726, cell_3727, cell_3728, cell_3729, cell_3730, cell_3731, cell_3732, cell_3733, cell_3734, cell_3735, cell_3736, cell_3737, cell_3738, cell_3739, cell_3740, cell_3741, cell_3742, cell_3743, cell_3744, cell_3745, cell_3746, cell_3747, cell_3748, cell_3749]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_3700, SourceCertificateFamily.of_right_checked check_3701, SourceCertificateFamily.of_right_checked check_3702, SourceCertificateFamily.of_right_checked check_3703, SourceCertificateFamily.of_right_checked check_3704, SourceCertificateFamily.of_right_checked check_3705, SourceCertificateFamily.of_right_checked check_3706, SourceCertificateFamily.of_right_checked check_3707, SourceCertificateFamily.of_right_checked check_3708, SourceCertificateFamily.of_right_checked check_3709, SourceCertificateFamily.of_right_checked check_3710, SourceCertificateFamily.of_right_checked check_3711, SourceCertificateFamily.of_right_checked check_3712, SourceCertificateFamily.of_right_checked check_3713, SourceCertificateFamily.of_right_checked check_3714, SourceCertificateFamily.of_right_checked check_3715, SourceCertificateFamily.of_right_checked check_3716, SourceCertificateFamily.of_right_checked check_3717, SourceCertificateFamily.of_right_checked check_3718, SourceCertificateFamily.of_right_checked check_3719, SourceCertificateFamily.of_right_checked check_3720, SourceCertificateFamily.of_right_checked check_3721, SourceCertificateFamily.of_right_checked check_3722, SourceCertificateFamily.of_right_checked check_3723, SourceCertificateFamily.of_right_checked check_3724, SourceCertificateFamily.of_right_checked check_3725, SourceCertificateFamily.of_right_checked check_3726, SourceCertificateFamily.of_right_checked check_3727, SourceCertificateFamily.of_right_checked check_3728, SourceCertificateFamily.of_right_checked check_3729, SourceCertificateFamily.of_right_checked check_3730, SourceCertificateFamily.of_right_checked check_3731, SourceCertificateFamily.of_right_checked check_3732, SourceCertificateFamily.of_right_checked check_3733, SourceCertificateFamily.of_right_checked check_3734, SourceCertificateFamily.of_right_checked check_3735, SourceCertificateFamily.of_right_checked check_3736, SourceCertificateFamily.of_right_checked check_3737, SourceCertificateFamily.of_right_checked check_3738, SourceCertificateFamily.of_right_checked check_3739, SourceCertificateFamily.of_right_checked check_3740, SourceCertificateFamily.of_right_checked check_3741, SourceCertificateFamily.of_right_checked check_3742, SourceCertificateFamily.of_right_checked check_3743, SourceCertificateFamily.of_right_checked check_3744, SourceCertificateFamily.of_right_checked check_3745, SourceCertificateFamily.of_right_checked check_3746, SourceCertificateFamily.of_right_checked check_3747, SourceCertificateFamily.of_right_checked check_3748, SourceCertificateFamily.of_right_checked check_3749, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0074
