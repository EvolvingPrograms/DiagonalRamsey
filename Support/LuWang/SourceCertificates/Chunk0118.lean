import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0118
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(17893749999999999 / 100000000000000000 : ℚ), (17896874999999999 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (92912215719337 / 100000000000000 : ℚ)
  w := (629394810287 / 625000000000 : ℚ)
  center := (17895312499999999 / 100000000000000000 : ℚ)
  supportValue := (3277104095937851 / 5000000000000000 : ℚ)
  supportSlope := (5316803204454601 / 1000000000000000 : ℚ)
  oldCenter := (3277104095937851 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_489
  oldLo := (65950000000000009 / 100000000000000000 : ℚ)
  oldHi := (65800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1533]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_5900 : Cell := { cellDefaults with
  r := (46502237543169 / 50000000000000 : ℚ)
  w := (10068338077971 / 10000000000000 : ℚ)
  newCoefficients := coefficients_488
  oldLo := (65500000000000003 / 100000000000000000 : ℚ)
  oldHi := (65600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1527, piece_1528]
}

def cell_5901 : Cell := { cellDefaults with
  domain := ⟨(17896874999999999 / 100000000000000000 : ℚ), (17899999999999999 / 100000000000000000 : ℚ)⟩
  r := (46502237543169 / 50000000000000 : ℚ)
  w := (10068338077971 / 10000000000000 : ℚ)
  center := (17898437499999999 / 100000000000000000 : ℚ)
  supportValue := (6555869737574231 / 10000000000000000 : ℚ)
  supportSlope := (5317102706097643 / 1000000000000000 : ℚ)
  oldCenter := (6555869737574231 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_488
  oldLo := (8193750000000001 / 12500000000000000 : ℚ)
  oldHi := (65600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1528]
}

def cell_5902 : Cell := { cellDefaults with
  domain := ⟨(17899999999999999 / 100000000000000000 : ℚ), (17903124999999999 / 100000000000000000 : ℚ)⟩
  center := (17901562499999999 / 100000000000000000 : ℚ)
  supportValue := (409551667284783 / 625000000000000 : ℚ)
  supportSlope := (5313247717378289 / 1000000000000000 : ℚ)
  oldCenter := (409551667284783 / 625000000000000 : ℚ)
  oldLo := (65500000000000003 / 100000000000000000 : ℚ)
  oldHi := (8193750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1527]
}

def cell_5903 : Cell := { cellDefaults with
  domain := ⟨(17903124999999999 / 100000000000000000 : ℚ), (17906249999999999 / 100000000000000000 : ℚ)⟩
  center := (17904687499999999 / 100000000000000000 : ℚ)
  supportValue := (409655449602221 / 625000000000000 : ℚ)
  supportSlope := (10627923360772229 / 2000000000000000 : ℚ)
  oldCenter := (409655449602221 / 625000000000000 : ℚ)
  oldLo := (65500000000000003 / 100000000000000000 : ℚ)
  oldHi := (65600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1527, piece_1528]
}

def cell_5904 : Cell := { cellDefaults with
  domain := ⟨(17906249999999999 / 100000000000000000 : ℚ), (17909374999999999 / 100000000000000000 : ℚ)⟩
  center := (17907812499999999 / 100000000000000000 : ℚ)
  supportValue := (1639036962855013 / 2500000000000000 : ℚ)
  supportSlope := (2657175013693447 / 500000000000000 : ℚ)
  oldCenter := (1639036962855013 / 2500000000000000 : ℚ)
  oldLo := (8193750000000001 / 12500000000000000 : ℚ)
  oldHi := (65600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1528]
}

def cell_5905 : Cell := { cellDefaults with
  domain := ⟨(17909374999999999 / 100000000000000000 : ℚ), (17912499999999999 / 100000000000000000 : ℚ)⟩
  center := (17910937499999999 / 100000000000000000 : ℚ)
  supportValue := (6557808712879271 / 10000000000000000 : ℚ)
  supportSlope := (212606577263017 / 40000000000000 : ℚ)
  oldCenter := (6557808712879271 / 10000000000000000 : ℚ)
  oldLo := (8193750000000001 / 12500000000000000 : ℚ)
  oldHi := (65600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1528]
}

def cell_5906 : Cell := { cellDefaults with
  domain := ⟨(17912499999999999 / 100000000000000000 : ℚ), (17915624999999999 / 100000000000000000 : ℚ)⟩
  center := (17914062499999999 / 100000000000000000 : ℚ)
  supportValue := (6559469828875403 / 10000000000000000 : ℚ)
  supportSlope := (2657941774952377 / 500000000000000 : ℚ)
  oldCenter := (6559469828875403 / 10000000000000000 : ℚ)
  oldLo := (8193750000000001 / 12500000000000000 : ℚ)
  oldHi := (8206250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1528, piece_1529]
}

def cell_5907 : Cell := { cellDefaults with
  domain := ⟨(17915624999999999 / 100000000000000000 : ℚ), (17918749999999999 / 100000000000000000 : ℚ)⟩
  center := (17917187499999999 / 100000000000000000 : ℚ)
  supportValue := (6561131087241711 / 10000000000000000 : ℚ)
  supportSlope := (1063253273498077 / 200000000000000 : ℚ)
  oldCenter := (6561131087241711 / 10000000000000000 : ℚ)
  oldLo := (65600000000000003 / 100000000000000000 : ℚ)
  oldHi := (8206250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1529]
}

def cell_5908 : Cell := { cellDefaults with
  domain := ⟨(17918749999999999 / 100000000000000000 : ℚ), (17921874999999999 / 100000000000000000 : ℚ)⟩
  center := (17920312499999999 / 100000000000000000 : ℚ)
  supportValue := (1640698136875209 / 2500000000000000 : ℚ)
  supportSlope := (5317080411050057 / 1000000000000000 : ℚ)
  oldCenter := (1640698136875209 / 2500000000000000 : ℚ)
  oldLo := (65600000000000003 / 100000000000000000 : ℚ)
  oldHi := (8206250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1529]
}

def cell_5909 : Cell := { cellDefaults with
  domain := ⟨(17921874999999999 / 100000000000000000 : ℚ), (17924999999999999 / 100000000000000000 : ℚ)⟩
  center := (17923437499999999 / 100000000000000000 : ℚ)
  supportValue := (820556782773007 / 1250000000000000 : ℚ)
  supportSlope := (265890205098529 / 50000000000000 : ℚ)
  oldCenter := (820556782773007 / 1250000000000000 : ℚ)
  oldLo := (65600000000000003 / 100000000000000000 : ℚ)
  oldHi := (65700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1529, piece_1530]
}

def cell_5910 : Cell := { cellDefaults with
  domain := ⟨(17924999999999999 / 100000000000000000 : ℚ), (17928124999999999 / 100000000000000000 : ℚ)⟩
  center := (17926562499999999 / 100000000000000000 : ℚ)
  supportValue := (1641529030180137 / 2500000000000000 : ℚ)
  supportSlope := (5318181970526581 / 1000000000000000 : ℚ)
  oldCenter := (1641529030180137 / 2500000000000000 : ℚ)
  oldLo := (8206250000000001 / 12500000000000000 : ℚ)
  oldHi := (65700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1530]
}

def cell_5911 : Cell := { cellDefaults with
  domain := ⟨(17928124999999999 / 100000000000000000 : ℚ), (17931249999999999 / 100000000000000000 : ℚ)⟩
  center := (17929687499999999 / 100000000000000000 : ℚ)
  supportValue := (6567778179548711 / 10000000000000000 : ℚ)
  supportSlope := (5318995650036129 / 1000000000000000 : ℚ)
  oldCenter := (6567778179548711 / 10000000000000000 : ℚ)
  oldLo := (8206250000000001 / 12500000000000000 : ℚ)
  oldHi := (65700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1530]
}

def cell_5912 : Cell := { cellDefaults with
  domain := ⟨(17931249999999999 / 100000000000000000 : ℚ), (17934374999999999 / 100000000000000000 : ℚ)⟩
  center := (17932812499999999 / 100000000000000000 : ℚ)
  supportValue := (205295015396471 / 312500000000000 : ℚ)
  supportSlope := (2659861665936347 / 500000000000000 : ℚ)
  oldCenter := (205295015396471 / 312500000000000 : ℚ)
  oldLo := (8206250000000001 / 12500000000000000 : ℚ)
  oldHi := (657094972067039 / 1000000000000000 : ℚ)
  oldPieces := [piece_1530, piece_1531]
}

def cell_5913 : Cell := { cellDefaults with
  domain := ⟨(17934374999999999 / 100000000000000000 : ℚ), (17937499999999999 / 100000000000000000 : ℚ)⟩
  center := (17935937499999999 / 100000000000000000 : ℚ)
  supportValue := (6571102951006297 / 10000000000000000 : ℚ)
  supportSlope := (5320097353713749 / 1000000000000000 : ℚ)
  oldCenter := (6571102951006297 / 10000000000000000 : ℚ)
  oldLo := (65700000000000003 / 100000000000000000 : ℚ)
  oldHi := (8218750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1531, piece_1532]
}

def cell_5914 : Cell := { cellDefaults with
  domain := ⟨(17937499999999999 / 100000000000000000 : ℚ), (17940624999999999 / 100000000000000000 : ℚ)⟩
  center := (17939062499999999 / 100000000000000000 : ℚ)
  supportValue := (3286382804222217 / 5000000000000000 : ℚ)
  supportSlope := (20784808611507 / 3906250000000 : ℚ)
  oldCenter := (3286382804222217 / 5000000000000000 : ℚ)
  oldLo := (657094972067039 / 1000000000000000 : ℚ)
  oldHi := (8218750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1532]
}

def cell_5915 : Cell := { cellDefaults with
  domain := ⟨(17940624999999999 / 100000000000000000 : ℚ), (17943749999999999 / 100000000000000000 : ℚ)⟩
  center := (17942187499999999 / 100000000000000000 : ℚ)
  supportValue := (6574428520069203 / 10000000000000000 : ℚ)
  supportSlope := (5321642070395427 / 1000000000000000 : ℚ)
  oldCenter := (6574428520069203 / 10000000000000000 : ℚ)
  oldLo := (657094972067039 / 1000000000000000 : ℚ)
  oldPieces := [piece_1532, piece_1533]
}

def cell_5916 : Cell := { cellDefaults with
  domain := ⟨(17943749999999999 / 100000000000000000 : ℚ), (17946874999999999 / 100000000000000000 : ℚ)⟩
  center := (17945312499999999 / 100000000000000000 : ℚ)
  supportValue := (6576091577961787 / 10000000000000000 : ℚ)
  supportSlope := (1330502936140121 / 250000000000000 : ℚ)
  oldCenter := (6576091577961787 / 10000000000000000 : ℚ)
  oldLo := (8218750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1533]
}

def cell_5917 : Cell := { cellDefaults with
  domain := ⟨(17946874999999999 / 100000000000000000 : ℚ), (17949999999999999 / 100000000000000000 : ℚ)⟩
  center := (17948437499999999 / 100000000000000000 : ℚ)
  supportValue := (328887741673707 / 500000000000000 : ℚ)
  supportSlope := (2661412327586987 / 500000000000000 : ℚ)
  oldCenter := (328887741673707 / 500000000000000 : ℚ)
  oldLo := (8218750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1533]
}

def cell_5918 : Cell := { cellDefaults with
  domain := ⟨(17949999999999999 / 100000000000000000 : ℚ), (17953124999999999 / 100000000000000000 : ℚ)⟩
  r := (11602524194667 / 12500000000000 : ℚ)
  w := (10072305059769 / 10000000000000 : ℚ)
  center := (17951562499999999 / 100000000000000000 : ℚ)
  supportValue := (131494111350927 / 200000000000000 : ℚ)
  supportSlope := (5318796625964239 / 1000000000000000 : ℚ)
  oldCenter := (131494111350927 / 200000000000000 : ℚ)
  newCoefficients := coefficients_490
  oldLo := (657094972067039 / 1000000000000000 : ℚ)
  oldPieces := [piece_1532, piece_1533]
}

def cell_5919 : Cell := { cellDefaults with
  domain := ⟨(17953124999999999 / 100000000000000000 : ℚ), (17956249999999999 / 100000000000000000 : ℚ)⟩
  r := (11602524194667 / 12500000000000 : ℚ)
  w := (10072305059769 / 10000000000000 : ℚ)
  center := (17954687499999999 / 100000000000000000 : ℚ)
  supportValue := (3288183868150387 / 5000000000000000 : ℚ)
  supportSlope := (5319254198898449 / 1000000000000000 : ℚ)
  oldCenter := (3288183868150387 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_490
  oldLo := (8218750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1533]
}

def cell_5920 : Cell := { cellDefaults with
  domain := ⟨(17956249999999999 / 100000000000000000 : ℚ), (17959374999999999 / 100000000000000000 : ℚ)⟩
  r := (11602524194667 / 12500000000000 : ℚ)
  w := (10072305059769 / 10000000000000 : ℚ)
  center := (17957812499999999 / 100000000000000000 : ℚ)
  supportValue := (1644507532531557 / 2500000000000000 : ℚ)
  supportSlope := (1064013480888093 / 200000000000000 : ℚ)
  oldCenter := (1644507532531557 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_490
  oldLo := (8218750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1533]
}

def cell_5921 : Cell := { cellDefaults with
  domain := ⟨(17959374999999999 / 100000000000000000 : ℚ), (17962499999999999 / 100000000000000000 : ℚ)⟩
  r := (11602524194667 / 12500000000000 : ℚ)
  w := (10072305059769 / 10000000000000 : ℚ)
  center := (17960937499999999 / 100000000000000000 : ℚ)
  supportValue := (3289846389056853 / 5000000000000000 : ℚ)
  supportSlope := (1064143010025731 / 200000000000000 : ℚ)
  oldCenter := (3289846389056853 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_490
  oldLo := (8218750000000001 / 12500000000000000 : ℚ)
  oldHi := (65850000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1533, piece_1534]
}

def cell_5922 : Cell := { cellDefaults with
  domain := ⟨(17962499999999999 / 100000000000000000 : ℚ), (17965624999999999 / 100000000000000000 : ℚ)⟩
  r := (11602524194667 / 12500000000000 : ℚ)
  w := (10072305059769 / 10000000000000 : ℚ)
  center := (17964062499999999 / 100000000000000000 : ℚ)
  supportValue := (6581355546382183 / 10000000000000000 : ℚ)
  supportSlope := (5321168485696859 / 1000000000000000 : ℚ)
  oldCenter := (6581355546382183 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_490
  oldLo := (65800000000000003 / 100000000000000000 : ℚ)
  oldHi := (65850000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1534]
}

def cell_5923 : Cell := { cellDefaults with
  domain := ⟨(17965624999999999 / 100000000000000000 : ℚ), (17968749999999999 / 100000000000000000 : ℚ)⟩
  r := (11602524194667 / 12500000000000 : ℚ)
  w := (10072305059769 / 10000000000000 : ℚ)
  center := (17967187499999999 / 100000000000000000 : ℚ)
  supportValue := (6583018538347489 / 10000000000000000 : ℚ)
  supportSlope := (2660990606422331 / 500000000000000 : ℚ)
  oldCenter := (6583018538347489 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_490
  oldLo := (65800000000000003 / 100000000000000000 : ℚ)
  oldHi := (65850000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1534]
}

def cell_5924 : Cell := { cellDefaults with
  domain := ⟨(17968749999999999 / 100000000000000000 : ℚ), (17971874999999999 / 100000000000000000 : ℚ)⟩
  r := (11602524194667 / 12500000000000 : ℚ)
  w := (10072305059769 / 10000000000000 : ℚ)
  center := (17970312499999999 / 100000000000000000 : ℚ)
  supportValue := (411542611520323 / 625000000000000 : ℚ)
  supportSlope := (5322631955561263 / 1000000000000000 : ℚ)
  oldCenter := (411542611520323 / 625000000000000 : ℚ)
  newCoefficients := coefficients_490
  oldLo := (65800000000000003 / 100000000000000000 : ℚ)
  oldHi := (65900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1534, piece_1535]
}

def cell_5925 : Cell := { cellDefaults with
  domain := ⟨(17971874999999999 / 100000000000000000 : ℚ), (17974999999999999 / 100000000000000000 : ℚ)⟩
  r := (11602524194667 / 12500000000000 : ℚ)
  w := (10072305059769 / 10000000000000 : ℚ)
  center := (17973437499999999 / 100000000000000000 : ℚ)
  supportValue := (3293172575816133 / 5000000000000000 : ℚ)
  supportSlope := (5323081888427339 / 1000000000000000 : ℚ)
  oldCenter := (3293172575816133 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_490
  oldLo := (65850000000000009 / 100000000000000000 : ℚ)
  oldHi := (65900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1535]
}

def cell_5926 : Cell := { cellDefaults with
  domain := ⟨(17974999999999999 / 100000000000000000 : ℚ), (17978124999999999 / 100000000000000000 : ℚ)⟩
  r := (11602524194667 / 12500000000000 : ℚ)
  w := (10072305059769 / 10000000000000 : ℚ)
  center := (17976562499999999 / 100000000000000000 : ℚ)
  supportValue := (823501092685501 / 1250000000000000 : ℚ)
  supportSlope := (332743392718049 / 62500000000000 : ℚ)
  oldCenter := (823501092685501 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_490
  oldLo := (65850000000000009 / 100000000000000000 : ℚ)
  oldHi := (65900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1535]
}

def cell_5927 : Cell := { cellDefaults with
  domain := ⟨(17978124999999999 / 100000000000000000 : ℚ), (17981249999999999 / 100000000000000000 : ℚ)⟩
  r := (11602524194667 / 12500000000000 : ℚ)
  w := (10072305059769 / 10000000000000 : ℚ)
  center := (17979687499999999 / 100000000000000000 : ℚ)
  supportValue := (102963634144441 / 156250000000000 : ℚ)
  supportSlope := (1064909528706437 / 200000000000000 : ℚ)
  oldCenter := (102963634144441 / 156250000000000 : ℚ)
  newCoefficients := coefficients_490
  oldLo := (65850000000000009 / 100000000000000000 : ℚ)
  oldHi := (65950000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1535, piece_1536]
}

def cell_5928 : Cell := { cellDefaults with
  domain := ⟨(17981249999999999 / 100000000000000000 : ℚ), (17984374999999999 / 100000000000000000 : ℚ)⟩
  r := (11602524194667 / 12500000000000 : ℚ)
  w := (10072305059769 / 10000000000000 : ℚ)
  center := (17982812499999999 / 100000000000000000 : ℚ)
  supportValue := (1318267310239209 / 2000000000000000 : ℚ)
  supportSlope := (2662497288651977 / 500000000000000 : ℚ)
  oldCenter := (1318267310239209 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_490
  oldLo := (65900000000000003 / 100000000000000000 : ℚ)
  oldHi := (65950000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1536]
}

def cell_5929 : Cell := { cellDefaults with
  domain := ⟨(17984374999999999 / 100000000000000000 : ℚ), (17987499999999999 / 100000000000000000 : ℚ)⟩
  r := (11602524194667 / 12500000000000 : ℚ)
  w := (10072305059769 / 10000000000000 : ℚ)
  center := (17985937499999999 / 100000000000000000 : ℚ)
  supportValue := (6593000738711137 / 10000000000000000 : ℚ)
  supportSlope := (5325806640239961 / 1000000000000000 : ℚ)
  oldCenter := (6593000738711137 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_490
  oldLo := (65900000000000003 / 100000000000000000 : ℚ)
  oldHi := (65950000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1536]
}

def cell_5930 : Cell := { cellDefaults with
  domain := ⟨(17987499999999999 / 100000000000000000 : ℚ), (17990624999999999 / 100000000000000000 : ℚ)⟩
  r := (11602524194667 / 12500000000000 : ℚ)
  w := (10072305059769 / 10000000000000 : ℚ)
  center := (17989062499999999 / 100000000000000000 : ℚ)
  supportValue := (659466518003081 / 1000000000000000 : ℚ)
  supportSlope := (5326462057031023 / 1000000000000000 : ℚ)
  oldCenter := (659466518003081 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_490
  oldLo := (65900000000000003 / 100000000000000000 : ℚ)
  oldHi := (66000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1536, piece_1537]
}

def cell_5931 : Cell := { cellDefaults with
  domain := ⟨(17990624999999999 / 100000000000000000 : ℚ), (17993749999999999 / 100000000000000000 : ℚ)⟩
  r := (11602524194667 / 12500000000000 : ℚ)
  w := (10072305059769 / 10000000000000 : ℚ)
  center := (17992187499999999 / 100000000000000000 : ℚ)
  supportValue := (6596329744231437 / 10000000000000000 : ℚ)
  supportSlope := (5326906557566957 / 1000000000000000 : ℚ)
  oldCenter := (6596329744231437 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_490
  oldHi := (66000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1537]
}

def cell_5932 : Cell := { cellDefaults with
  domain := ⟨(17993749999999999 / 100000000000000000 : ℚ), (17996874999999999 / 100000000000000000 : ℚ)⟩
  r := (11602524194667 / 12500000000000 : ℚ)
  w := (10072305059769 / 10000000000000 : ℚ)
  center := (17995312499999999 / 100000000000000000 : ℚ)
  supportValue := (6597994529182307 / 10000000000000000 : ℚ)
  supportSlope := (5327718249137803 / 1000000000000000 : ℚ)
  oldCenter := (6597994529182307 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_490
  oldHi := (66000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1537]
}

def cell_5933 : Cell := { cellDefaults with
  domain := ⟨(17996874999999999 / 100000000000000000 : ℚ), (17999999999999999 / 100000000000000000 : ℚ)⟩
  r := (11602524194667 / 12500000000000 : ℚ)
  w := (10072305059769 / 10000000000000 : ℚ)
  center := (17998437499999999 / 100000000000000000 : ℚ)
  supportValue := (824957445977697 / 1250000000000000 : ℚ)
  supportSlope := (333023456025483 / 62500000000000 : ℚ)
  oldCenter := (824957445977697 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_490
  oldHi := (33024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1537, piece_1538]
}

def cell_5934 : Cell := { cellDefaults with
  domain := ⟨(17999999999999999 / 100000000000000000 : ℚ), (18003124999999999 / 100000000000000000 : ℚ)⟩
  r := (46364203134353 / 50000000000000 : ℚ)
  w := (2518575607819 / 2500000000000 : ℚ)
  center := (18001562499999999 / 100000000000000000 : ℚ)
  supportValue := (659660392303569 / 1000000000000000 : ℚ)
  supportSlope := (2129657654903383 / 400000000000000 : ℚ)
  oldCenter := (659660392303569 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_491
  oldHi := (66000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1537]
}

def cell_5935 : Cell := { cellDefaults with
  domain := ⟨(18003124999999999 / 100000000000000000 : ℚ), (18006249999999999 / 100000000000000000 : ℚ)⟩
  r := (46364203134353 / 50000000000000 : ℚ)
  w := (2518575607819 / 2500000000000 : ℚ)
  center := (18004687499999999 / 100000000000000000 : ℚ)
  supportValue := (6598267844769129 / 10000000000000000 : ℚ)
  supportSlope := (665619509706783 / 125000000000000 : ℚ)
  oldCenter := (6598267844769129 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_491
  oldHi := (66000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1537]
}

def cell_5936 : Cell := { cellDefaults with
  domain := ⟨(18006249999999999 / 100000000000000000 : ℚ), (18009374999999999 / 100000000000000000 : ℚ)⟩
  r := (46364203134353 / 50000000000000 : ℚ)
  w := (2518575607819 / 2500000000000 : ℚ)
  center := (18007812499999999 / 100000000000000000 : ℚ)
  supportValue := (6599932020268919 / 10000000000000000 : ℚ)
  supportSlope := (166422745669359 / 31250000000000 : ℚ)
  oldCenter := (6599932020268919 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_491
  oldHi := (33024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1537, piece_1538]
}

def cell_5937 : Cell := { cellDefaults with
  domain := ⟨(18009374999999999 / 100000000000000000 : ℚ), (18012499999999999 / 100000000000000000 : ℚ)⟩
  r := (46364203134353 / 50000000000000 : ℚ)
  w := (2518575607819 / 2500000000000 : ℚ)
  center := (18010937499999999 / 100000000000000000 : ℚ)
  supportValue := (6601596292677939 / 10000000000000000 : ℚ)
  supportSlope := (5326056800079471 / 1000000000000000 : ℚ)
  oldCenter := (6601596292677939 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_491
  oldLo := (66000000000000003 / 100000000000000000 : ℚ)
  oldHi := (33024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1538]
}

def cell_5938 : Cell := { cellDefaults with
  domain := ⟨(18012499999999999 / 100000000000000000 : ℚ), (18015624999999999 / 100000000000000000 : ℚ)⟩
  r := (46364203134353 / 50000000000000 : ℚ)
  w := (2518575607819 / 2500000000000 : ℚ)
  center := (18014062499999999 / 100000000000000000 : ℚ)
  supportValue := (1650815203015537 / 2500000000000000 : ℚ)
  supportSlope := (266343418997117 / 50000000000000 : ℚ)
  oldCenter := (1650815203015537 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_491
  oldLo := (66000000000000003 / 100000000000000000 : ℚ)
  oldHi := (33024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1538]
}

def cell_5939 : Cell := { cellDefaults with
  domain := ⟨(18015624999999999 / 100000000000000000 : ℚ), (18018749999999999 / 100000000000000000 : ℚ)⟩
  r := (46364203134353 / 50000000000000 : ℚ)
  w := (2518575607819 / 2500000000000 : ℚ)
  center := (18017187499999999 / 100000000000000000 : ℚ)
  supportValue := (6604925585099913 / 10000000000000000 : ℚ)
  supportSlope := (1331860430408227 / 250000000000000 : ℚ)
  oldCenter := (6604925585099913 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_491
  oldLo := (66000000000000003 / 100000000000000000 : ℚ)
  oldHi := (66100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1538, piece_1539]
}

def cell_5940 : Cell := { cellDefaults with
  domain := ⟨(18018749999999999 / 100000000000000000 : ℚ), (18021874999999999 / 100000000000000000 : ℚ)⟩
  r := (46364203134353 / 50000000000000 : ℚ)
  w := (2518575607819 / 2500000000000 : ℚ)
  center := (18020312499999999 / 100000000000000000 : ℚ)
  supportValue := (1321318091100127 / 2000000000000000 : ℚ)
  supportSlope := (1331992041207819 / 250000000000000 : ℚ)
  oldCenter := (1321318091100127 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_491
  oldLo := (33024999999999999 / 50000000000000000 : ℚ)
  oldHi := (66100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1539]
}

def cell_5941 : Cell := { cellDefaults with
  domain := ⟨(18021874999999999 / 100000000000000000 : ℚ), (18024999999999999 / 100000000000000000 : ℚ)⟩
  r := (46364203134353 / 50000000000000 : ℚ)
  w := (2518575607819 / 2500000000000 : ℚ)
  center := (18023437499999999 / 100000000000000000 : ℚ)
  supportValue := (1652063893031959 / 2500000000000000 : ℚ)
  supportSlope := (2664389685264723 / 500000000000000 : ℚ)
  oldCenter := (1652063893031959 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_491
  oldLo := (33024999999999999 / 50000000000000000 : ℚ)
  oldHi := (66100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1539]
}

def cell_5942 : Cell := { cellDefaults with
  domain := ⟨(18024999999999999 / 100000000000000000 : ℚ), (18028124999999999 / 100000000000000000 : ℚ)⟩
  r := (46364203134353 / 50000000000000 : ℚ)
  w := (2518575607819 / 2500000000000 : ℚ)
  center := (18026562499999999 / 100000000000000000 : ℚ)
  supportValue := (1321984188458309 / 2000000000000000 : ℚ)
  supportSlope := (5329353952916449 / 1000000000000000 : ℚ)
  oldCenter := (1321984188458309 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_491
  oldLo := (33024999999999999 / 50000000000000000 : ℚ)
  oldHi := (33074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1539, piece_1540]
}

def cell_5943 : Cell := { cellDefaults with
  domain := ⟨(18028124999999999 / 100000000000000000 : ℚ), (18031249999999999 / 100000000000000000 : ℚ)⟩
  r := (46364203134353 / 50000000000000 : ℚ)
  w := (2518575607819 / 2500000000000 : ℚ)
  center := (18029687499999999 / 100000000000000000 : ℚ)
  supportValue := (66115864102633 / 100000000000000 : ℚ)
  supportSlope := (2664939386711751 / 500000000000000 : ℚ)
  oldCenter := (66115864102633 / 100000000000000 : ℚ)
  newCoefficients := coefficients_491
  oldLo := (66100000000000003 / 100000000000000000 : ℚ)
  oldHi := (33074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1540]
}

def cell_5944 : Cell := { cellDefaults with
  domain := ⟨(18031249999999999 / 100000000000000000 : ℚ), (18034374999999999 / 100000000000000000 : ℚ)⟩
  r := (46364203134353 / 50000000000000 : ℚ)
  w := (2518575607819 / 2500000000000 : ℚ)
  center := (18032812499999999 / 100000000000000000 : ℚ)
  supportValue := (6613252123897269 / 10000000000000000 : ℚ)
  supportSlope := (5330689605433037 / 1000000000000000 : ℚ)
  oldCenter := (6613252123897269 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_491
  oldLo := (66100000000000003 / 100000000000000000 : ℚ)
  oldHi := (33074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1540]
}

def cell_5945 : Cell := { cellDefaults with
  domain := ⟨(18034374999999999 / 100000000000000000 : ℚ), (18037499999999999 / 100000000000000000 : ℚ)⟩
  r := (46364203134353 / 50000000000000 : ℚ)
  w := (2518575607819 / 2500000000000 : ℚ)
  center := (18035937499999999 / 100000000000000000 : ℚ)
  supportValue := (6614918090950851 / 10000000000000000 : ℚ)
  supportSlope := (1066252972862003 / 200000000000000 : ℚ)
  oldCenter := (6614918090950851 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_491
  oldLo := (66100000000000003 / 100000000000000000 : ℚ)
  oldHi := (66200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1540, piece_1541]
}

def cell_5946 : Cell := { cellDefaults with
  domain := ⟨(18037499999999999 / 100000000000000000 : ℚ), (18040624999999999 / 100000000000000000 : ℚ)⟩
  r := (46364203134353 / 50000000000000 : ℚ)
  w := (2518575607819 / 2500000000000 : ℚ)
  center := (18039062499999999 / 100000000000000000 : ℚ)
  supportValue := (827073019510107 / 1250000000000000 : ℚ)
  supportSlope := (5331788623568201 / 1000000000000000 : ℚ)
  oldCenter := (827073019510107 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_491
  oldLo := (33074999999999999 / 50000000000000000 : ℚ)
  oldHi := (66200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1541]
}

def cell_5947 : Cell := { cellDefaults with
  domain := ⟨(18040624999999999 / 100000000000000000 : ℚ), (18043749999999999 / 100000000000000000 : ℚ)⟩
  r := (46364203134353 / 50000000000000 : ℚ)
  w := (2518575607819 / 2500000000000 : ℚ)
  center := (18042187499999999 / 100000000000000000 : ℚ)
  supportValue := (6618250466483883 / 10000000000000000 : ℚ)
  supportSlope := (5332599077412681 / 1000000000000000 : ℚ)
  oldCenter := (6618250466483883 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_491
  oldLo := (33074999999999999 / 50000000000000000 : ℚ)
  oldHi := (66200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1541]
}

def cell_5948 : Cell := { cellDefaults with
  domain := ⟨(18043749999999999 / 100000000000000000 : ℚ), (18046874999999999 / 100000000000000000 : ℚ)⟩
  r := (46364203134353 / 50000000000000 : ℚ)
  w := (2518575607819 / 2500000000000 : ℚ)
  center := (18045312499999999 / 100000000000000000 : ℚ)
  supportValue := (33099585150941 / 50000000000000 : ℚ)
  supportSlope := (2666587224085859 / 500000000000000 : ℚ)
  oldCenter := (33099585150941 / 50000000000000 : ℚ)
  newCoefficients := coefficients_491
  oldLo := (33074999999999999 / 50000000000000000 : ℚ)
  oldHi := (33124999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1541, piece_1542]
}

def cell_5949 : Cell := { cellDefaults with
  domain := ⟨(18046874999999999 / 100000000000000000 : ℚ), (18049999999999999 / 100000000000000000 : ℚ)⟩
  r := (46364203134353 / 50000000000000 : ℚ)
  w := (2518575607819 / 2500000000000 : ℚ)
  center := (18048437499999999 / 100000000000000000 : ℚ)
  supportValue := (3310791846030947 / 5000000000000000 : ℚ)
  supportSlope := (2666848854140369 / 500000000000000 : ℚ)
  oldCenter := (3310791846030947 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_491
  oldLo := (66200000000000003 / 100000000000000000 : ℚ)
  oldHi := (33124999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1542]
}

theorem check_5900 : SourceCertificateFamily.RightNormalized.check cell_5900 = true := by
  decide +kernel

theorem check_5901 : SourceCertificateFamily.RightNormalized.check cell_5901 = true := by
  decide +kernel

theorem check_5902 : SourceCertificateFamily.RightNormalized.check cell_5902 = true := by
  decide +kernel

theorem check_5903 : SourceCertificateFamily.RightNormalized.check cell_5903 = true := by
  decide +kernel

theorem check_5904 : SourceCertificateFamily.RightNormalized.check cell_5904 = true := by
  decide +kernel

theorem check_5905 : SourceCertificateFamily.RightNormalized.check cell_5905 = true := by
  decide +kernel

theorem check_5906 : SourceCertificateFamily.RightNormalized.check cell_5906 = true := by
  decide +kernel

theorem check_5907 : SourceCertificateFamily.RightNormalized.check cell_5907 = true := by
  decide +kernel

theorem check_5908 : SourceCertificateFamily.RightNormalized.check cell_5908 = true := by
  decide +kernel

theorem check_5909 : SourceCertificateFamily.RightNormalized.check cell_5909 = true := by
  decide +kernel

theorem check_5910 : SourceCertificateFamily.RightNormalized.check cell_5910 = true := by
  decide +kernel

theorem check_5911 : SourceCertificateFamily.RightNormalized.check cell_5911 = true := by
  decide +kernel

theorem check_5912 : SourceCertificateFamily.RightNormalized.check cell_5912 = true := by
  decide +kernel

theorem check_5913 : SourceCertificateFamily.RightNormalized.check cell_5913 = true := by
  decide +kernel

theorem check_5914 : SourceCertificateFamily.RightNormalized.check cell_5914 = true := by
  decide +kernel

theorem check_5915 : SourceCertificateFamily.RightNormalized.check cell_5915 = true := by
  decide +kernel

theorem check_5916 : SourceCertificateFamily.RightNormalized.check cell_5916 = true := by
  decide +kernel

theorem check_5917 : SourceCertificateFamily.RightNormalized.check cell_5917 = true := by
  decide +kernel

theorem check_5918 : SourceCertificateFamily.RightNormalized.check cell_5918 = true := by
  decide +kernel

theorem check_5919 : SourceCertificateFamily.RightNormalized.check cell_5919 = true := by
  decide +kernel

theorem check_5920 : SourceCertificateFamily.RightNormalized.check cell_5920 = true := by
  decide +kernel

theorem check_5921 : SourceCertificateFamily.RightNormalized.check cell_5921 = true := by
  decide +kernel

theorem check_5922 : SourceCertificateFamily.RightNormalized.check cell_5922 = true := by
  decide +kernel

theorem check_5923 : SourceCertificateFamily.RightNormalized.check cell_5923 = true := by
  decide +kernel

theorem check_5924 : SourceCertificateFamily.RightNormalized.check cell_5924 = true := by
  decide +kernel

theorem check_5925 : SourceCertificateFamily.RightNormalized.check cell_5925 = true := by
  decide +kernel

theorem check_5926 : SourceCertificateFamily.RightNormalized.check cell_5926 = true := by
  decide +kernel

theorem check_5927 : SourceCertificateFamily.RightNormalized.check cell_5927 = true := by
  decide +kernel

theorem check_5928 : SourceCertificateFamily.RightNormalized.check cell_5928 = true := by
  decide +kernel

theorem check_5929 : SourceCertificateFamily.RightNormalized.check cell_5929 = true := by
  decide +kernel

theorem check_5930 : SourceCertificateFamily.RightNormalized.check cell_5930 = true := by
  decide +kernel

theorem check_5931 : SourceCertificateFamily.RightNormalized.check cell_5931 = true := by
  decide +kernel

theorem check_5932 : SourceCertificateFamily.RightNormalized.check cell_5932 = true := by
  decide +kernel

theorem check_5933 : SourceCertificateFamily.RightNormalized.check cell_5933 = true := by
  decide +kernel

theorem check_5934 : SourceCertificateFamily.RightNormalized.check cell_5934 = true := by
  decide +kernel

theorem check_5935 : SourceCertificateFamily.RightNormalized.check cell_5935 = true := by
  decide +kernel

theorem check_5936 : SourceCertificateFamily.RightNormalized.check cell_5936 = true := by
  decide +kernel

theorem check_5937 : SourceCertificateFamily.RightNormalized.check cell_5937 = true := by
  decide +kernel

theorem check_5938 : SourceCertificateFamily.RightNormalized.check cell_5938 = true := by
  decide +kernel

theorem check_5939 : SourceCertificateFamily.RightNormalized.check cell_5939 = true := by
  decide +kernel

theorem check_5940 : SourceCertificateFamily.RightNormalized.check cell_5940 = true := by
  decide +kernel

theorem check_5941 : SourceCertificateFamily.RightNormalized.check cell_5941 = true := by
  decide +kernel

theorem check_5942 : SourceCertificateFamily.RightNormalized.check cell_5942 = true := by
  decide +kernel

theorem check_5943 : SourceCertificateFamily.RightNormalized.check cell_5943 = true := by
  decide +kernel

theorem check_5944 : SourceCertificateFamily.RightNormalized.check cell_5944 = true := by
  decide +kernel

theorem check_5945 : SourceCertificateFamily.RightNormalized.check cell_5945 = true := by
  decide +kernel

theorem check_5946 : SourceCertificateFamily.RightNormalized.check cell_5946 = true := by
  decide +kernel

theorem check_5947 : SourceCertificateFamily.RightNormalized.check cell_5947 = true := by
  decide +kernel

theorem check_5948 : SourceCertificateFamily.RightNormalized.check cell_5948 = true := by
  decide +kernel

theorem check_5949 : SourceCertificateFamily.RightNormalized.check cell_5949 = true := by
  decide +kernel

def cells : List Cell := [cell_5900, cell_5901, cell_5902, cell_5903, cell_5904, cell_5905, cell_5906, cell_5907, cell_5908, cell_5909, cell_5910, cell_5911, cell_5912, cell_5913, cell_5914, cell_5915, cell_5916, cell_5917, cell_5918, cell_5919, cell_5920, cell_5921, cell_5922, cell_5923, cell_5924, cell_5925, cell_5926, cell_5927, cell_5928, cell_5929, cell_5930, cell_5931, cell_5932, cell_5933, cell_5934, cell_5935, cell_5936, cell_5937, cell_5938, cell_5939, cell_5940, cell_5941, cell_5942, cell_5943, cell_5944, cell_5945, cell_5946, cell_5947, cell_5948, cell_5949]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_5900, SourceCertificateFamily.of_right_checked check_5901, SourceCertificateFamily.of_right_checked check_5902, SourceCertificateFamily.of_right_checked check_5903, SourceCertificateFamily.of_right_checked check_5904, SourceCertificateFamily.of_right_checked check_5905, SourceCertificateFamily.of_right_checked check_5906, SourceCertificateFamily.of_right_checked check_5907, SourceCertificateFamily.of_right_checked check_5908, SourceCertificateFamily.of_right_checked check_5909, SourceCertificateFamily.of_right_checked check_5910, SourceCertificateFamily.of_right_checked check_5911, SourceCertificateFamily.of_right_checked check_5912, SourceCertificateFamily.of_right_checked check_5913, SourceCertificateFamily.of_right_checked check_5914, SourceCertificateFamily.of_right_checked check_5915, SourceCertificateFamily.of_right_checked check_5916, SourceCertificateFamily.of_right_checked check_5917, SourceCertificateFamily.of_right_checked check_5918, SourceCertificateFamily.of_right_checked check_5919, SourceCertificateFamily.of_right_checked check_5920, SourceCertificateFamily.of_right_checked check_5921, SourceCertificateFamily.of_right_checked check_5922, SourceCertificateFamily.of_right_checked check_5923, SourceCertificateFamily.of_right_checked check_5924, SourceCertificateFamily.of_right_checked check_5925, SourceCertificateFamily.of_right_checked check_5926, SourceCertificateFamily.of_right_checked check_5927, SourceCertificateFamily.of_right_checked check_5928, SourceCertificateFamily.of_right_checked check_5929, SourceCertificateFamily.of_right_checked check_5930, SourceCertificateFamily.of_right_checked check_5931, SourceCertificateFamily.of_right_checked check_5932, SourceCertificateFamily.of_right_checked check_5933, SourceCertificateFamily.of_right_checked check_5934, SourceCertificateFamily.of_right_checked check_5935, SourceCertificateFamily.of_right_checked check_5936, SourceCertificateFamily.of_right_checked check_5937, SourceCertificateFamily.of_right_checked check_5938, SourceCertificateFamily.of_right_checked check_5939, SourceCertificateFamily.of_right_checked check_5940, SourceCertificateFamily.of_right_checked check_5941, SourceCertificateFamily.of_right_checked check_5942, SourceCertificateFamily.of_right_checked check_5943, SourceCertificateFamily.of_right_checked check_5944, SourceCertificateFamily.of_right_checked check_5945, SourceCertificateFamily.of_right_checked check_5946, SourceCertificateFamily.of_right_checked check_5947, SourceCertificateFamily.of_right_checked check_5948, SourceCertificateFamily.of_right_checked check_5949, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0118
