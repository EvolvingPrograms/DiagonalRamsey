import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0010
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(908368288182213863 / 320000000000000000000 : ℚ), (456009117565172433 / 160000000000000000000 : ℚ)⟩
  branch := .small
  r := (7762996259413 / 5000000000000 : ℚ)
  w := (7213668340727 / 10000000000000 : ℚ)
  center := (1820386523312558729 / 640000000000000000000 : ℚ)
  supportValue := (27431680126611067 / 10000000000000000 : ℚ)
  supportSlope := (3235671341404197 / 250000000000000 : ℚ)
  oldCenter := (49936260814303731104158155178853843 / 6400000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_120
  oldLo := (42187102416419353 / 5000000000000000000 : ℚ)
  oldHi := (19089099695964333 / 2000000000000000000 : ℚ)
  oldPieces := [piece_133]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_500 : Cell := { cellDefaults with
  r := (777932653733 / 500000000000 : ℚ)
  w := (72082658973397 / 100000000000000 : ℚ)
  oldLo := (74587136685957669 / 10000000000000000000 : ℚ)
  oldHi := (42187102416419353 / 5000000000000000000 : ℚ)
  oldPieces := [piece_132]
}

def cell_501 : Cell := { cellDefaults with
  domain := ⟨(456009117565172433 / 160000000000000000000 : ℚ), (114914766128325859 / 40000000000000000000 : ℚ)⟩
  r := (777932653733 / 500000000000 : ℚ)
  w := (72082658973397 / 100000000000000 : ℚ)
  center := (915668182078475869 / 320000000000000000000 : ℚ)
  supportValue := (54867748655951 / 20000000000000 : ℚ)
  supportSlope := (12931300427343727 / 1000000000000000 : ℚ)
  oldCenter := (50240651666533389906931336746419 / 6400000000000000000000000000000000 : ℚ)
  oldLo := (74587136685957669 / 10000000000000000000 : ℚ)
  oldHi := (42187102416419353 / 5000000000000000000 : ℚ)
  oldPieces := [piece_132]
}

def cell_502 : Cell := { cellDefaults with
  domain := ⟨(114914766128325859 / 40000000000000000000 : ℚ), (463309011461434439 / 160000000000000000000 : ℚ)⟩
  r := (777932653733 / 500000000000 : ℚ)
  w := (72082658973397 / 100000000000000 : ℚ)
  center := (7383744607797903 / 2560000000000000000 : ℚ)
  supportValue := (5487364501469309 / 2000000000000000 : ℚ)
  supportSlope := (6458083565986179 / 500000000000000 : ℚ)
  oldCenter := (40517298048745638502582429059027 / 5120000000000000000000000000000000 : ℚ)
  oldLo := (74587136685957669 / 10000000000000000000 : ℚ)
  oldHi := (42187102416419353 / 5000000000000000000 : ℚ)
  oldPieces := [piece_132]
}

def cell_503 : Cell := { cellDefaults with
  domain := ⟨(463309011461434439 / 160000000000000000000 : ℚ), (233479479204782721 / 80000000000000000000 : ℚ)⟩
  r := (777932653733 / 500000000000 : ℚ)
  w := (72082658973397 / 100000000000000 : ℚ)
  center := (930267969870999881 / 320000000000000000000 : ℚ)
  supportValue := (1714985452555243 / 625000000000000 : ℚ)
  supportSlope := (12901089959235629 / 1000000000000000 : ℚ)
  oldCenter := (1595396035306863891003814798926083 / 200000000000000000000000000000000000 : ℚ)
  oldLo := (74587136685957669 / 10000000000000000000 : ℚ)
  oldHi := (42187102416419353 / 5000000000000000000 : ℚ)
  oldPieces := [piece_132]
}

def cell_504 : Cell := { cellDefaults with
  domain := ⟨(233479479204782721 / 80000000000000000000 : ℚ), (94121781071539289 / 32000000000000000000 : ℚ)⟩
  r := (777932653733 / 500000000000 : ℚ)
  w := (72082658973397 / 100000000000000 : ℚ)
  center := (937567863767261887 / 320000000000000000000 : ℚ)
  supportValue := (2744270854141317 / 1000000000000000 : ℚ)
  supportSlope := (6443034554783953 / 500000000000000 : ℚ)
  oldCenter := (2572940162316033713683139646085179 / 320000000000000000000000000000000000 : ℚ)
  oldLo := (74587136685957669 / 10000000000000000000 : ℚ)
  oldHi := (42187102416419353 / 5000000000000000000 : ℚ)
  oldPieces := [piece_132]
}

def cell_505 : Cell := { cellDefaults with
  domain := ⟨(94121781071539289 / 32000000000000000000 : ℚ), (59282356538228431 / 20000000000000000000 : ℚ)⟩
  r := (777932653733 / 500000000000 : ℚ)
  w := (72082658973397 / 100000000000000 : ℚ)
  center := (944867757663523893 / 320000000000000000000 : ℚ)
  supportValue := (5489129284361141 / 2000000000000000 : ℚ)
  supportSlope := (3217776195695151 / 250000000000000 : ℚ)
  oldCenter := (5186501278439494906570345294241913 / 640000000000000000000000000000000000 : ℚ)
  oldLo := (74587136685957669 / 10000000000000000000 : ℚ)
  oldHi := (42187102416419353 / 5000000000000000000 : ℚ)
  oldPieces := [piece_132]
}

def cell_506 : Cell := { cellDefaults with
  domain := ⟨(59282356538228431 / 20000000000000000000 : ℚ), (477908799253958451 / 160000000000000000000 : ℚ)⟩
  r := (777932653733 / 500000000000 : ℚ)
  w := (72082658973397 / 100000000000000 : ℚ)
  center := (952167651559785899 / 320000000000000000000 : ℚ)
  supportValue := (27448580894978387 / 10000000000000000 : ℚ)
  supportSlope := (3214049294710219 / 250000000000000 : ℚ)
  oldCenter := (26135650809420376978128637952364913 / 3200000000000000000000000000000000000 : ℚ)
  oldLo := (74587136685957669 / 10000000000000000000 : ℚ)
  oldHi := (42187102416419353 / 5000000000000000000 : ℚ)
  oldPieces := [piece_132]
}

def cell_507 : Cell := { cellDefaults with
  domain := ⟨(477908799253958451 / 160000000000000000000 : ℚ), (240779373101044727 / 80000000000000000000 : ℚ)⟩
  r := (777932653733 / 500000000000 : ℚ)
  w := (72082658973397 / 100000000000000 : ℚ)
  center := (191893509091209581 / 64000000000000000000 : ℚ)
  supportValue := (1715719498368351 / 625000000000000 : ℚ)
  supportSlope := (321033662421483 / 25000000000000 : ℚ)
  oldCenter := (329235435158112704493366478370931 / 40000000000000000000000000000000000 : ℚ)
  oldLo := (74587136685957669 / 10000000000000000000 : ℚ)
  oldHi := (42187102416419353 / 5000000000000000000 : ℚ)
  oldPieces := [piece_132]
}

def cell_508 : Cell := { cellDefaults with
  domain := ⟨(240779373101044727 / 80000000000000000000 : ℚ), (485208693150220457 / 160000000000000000000 : ℚ)⟩
  r := (777932653733 / 500000000000 : ℚ)
  w := (72082658973397 / 100000000000000 : ℚ)
  center := (966767439352309911 / 320000000000000000000 : ℚ)
  supportValue := (27454439671559223 / 10000000000000000 : ℚ)
  supportSlope := (6413276467875927 / 500000000000000 : ℚ)
  oldCenter := (26542058340125782353781796086359153 / 3200000000000000000000000000000000000 : ℚ)
  oldLo := (74587136685957669 / 10000000000000000000 : ℚ)
  oldHi := (42187102416419353 / 5000000000000000000 : ℚ)
  oldPieces := [piece_132]
}

def cell_509 : Cell := { cellDefaults with
  domain := ⟨(485208693150220457 / 160000000000000000000 : ℚ), (24442932004917573 / 8000000000000000000 : ℚ)⟩
  r := (777932653733 / 500000000000 : ℚ)
  w := (72082658973397 / 100000000000000 : ℚ)
  center := (974067333248571917 / 320000000000000000000 : ℚ)
  supportValue := (2745736400102843 / 1000000000000000 : ℚ)
  supportSlope := (12811816694395471 / 1000000000000000 : ℚ)
  oldCenter := (2674532133051710167277961681660031 / 320000000000000000000000000000000000 : ℚ)
  oldLo := (74587136685957669 / 10000000000000000000 : ℚ)
  oldHi := (42187102416419353 / 5000000000000000000 : ℚ)
  oldPieces := [piece_132]
}

def cell_510 : Cell := { cellDefaults with
  domain := ⟨(24442932004917573 / 8000000000000000000 : ℚ), (981367227144833923 / 320000000000000000000 : ℚ)⟩
  r := (777932653733 / 500000000000 : ℚ)
  w := (72082658973397 / 100000000000000 : ℚ)
  center := (1959084507341536843 / 640000000000000000000 : ℚ)
  supportValue := (2745957426733701 / 1000000000000000 : ℚ)
  supportSlope := (3200200111633321 / 250000000000000 : ℚ)
  oldCenter := (5379562652533426874409439041245943 / 640000000000000000000000000000000000 : ℚ)
  oldLo := (74587136685957669 / 10000000000000000000 : ℚ)
  oldHi := (42187102416419353 / 5000000000000000000 : ℚ)
  oldPieces := [piece_132]
}

def cell_511 : Cell := { cellDefaults with
  domain := ⟨(981367227144833923 / 320000000000000000000 : ℚ), (492508587046482463 / 160000000000000000000 : ℚ)⟩
  r := (777932653733 / 500000000000 : ℚ)
  w := (72082658973397 / 100000000000000 : ℚ)
  center := (1966384401237798849 / 640000000000000000000 : ℚ)
  supportValue := (2746103391902719 / 1000000000000000 : ℚ)
  supportSlope := (6431979961623953 / 500000000000000 : ℚ)
  oldCenter := (5399894874023716576915781498170431 / 640000000000000000000000000000000000 : ℚ)
  oldLo := (74587136685957669 / 10000000000000000000 : ℚ)
  oldPieces := [piece_132, piece_133]
}

def cell_512 : Cell := { cellDefaults with
  domain := ⟨(492508587046482463 / 160000000000000000000 : ℚ), (248079266997306733 / 80000000000000000000 : ℚ)⟩
  r := (777932653733 / 500000000000 : ℚ)
  w := (72082658973397 / 100000000000000 : ℚ)
  center := (988667121041095929 / 320000000000000000000 : ℚ)
  supportValue := (1373161352367913 / 500000000000000 : ℚ)
  supportSlope := (6463849362388409 / 500000000000000 : ℚ)
  oldCenter := (1357599480970482419930928734526177 / 160000000000000000000000000000000000 : ℚ)
  oldPieces := [piece_133]
}

def cell_513 : Cell := { cellDefaults with
  domain := ⟨(248079266997306733 / 80000000000000000000 : ℚ), (199193402987471587 / 64000000000000000000 : ℚ)⟩
  r := (777932653733 / 500000000000 : ℚ)
  w := (72082658973397 / 100000000000000 : ℚ)
  center := (1988284082926584867 / 640000000000000000000 : ℚ)
  supportValue := (5493091502237391 / 2000000000000000 : ℚ)
  supportSlope := (12920984849394323 / 1000000000000000 : ℚ)
  oldCenter := (10921826399957887369529525142161997 / 1280000000000000000000000000000000000 : ℚ)
  oldPieces := [piece_133]
}

def cell_514 : Cell := { cellDefaults with
  domain := ⟨(199193402987471587 / 64000000000000000000 : ℚ), (499808480942744469 / 160000000000000000000 : ℚ)⟩
  r := (777932653733 / 500000000000 : ℚ)
  w := (72082658973397 / 100000000000000 : ℚ)
  center := (1995583976822846873 / 640000000000000000000 : ℚ)
  supportValue := (13733465518030261 / 5000000000000000 : ℚ)
  supportSlope := (3229138921729037 / 250000000000000 : ℚ)
  oldCenter := (27406283734030267091662261383223853 / 3200000000000000000000000000000000000 : ℚ)
  oldPieces := [piece_133]
}

def cell_515 : Cell := { cellDefaults with
  domain := ⟨(499808480942744469 / 160000000000000000000 : ℚ), (1003266908833619941 / 320000000000000000000 : ℚ)⟩
  r := (777932653733 / 500000000000 : ℚ)
  w := (72082658973397 / 100000000000000 : ℚ)
  center := (2002883870719108879 / 640000000000000000000 : ℚ)
  supportValue := (27468404057742553 / 10000000000000000 : ℚ)
  supportSlope := (1291216164499291 / 100000000000000 : ℚ)
  oldCenter := (55016023441647881266202408558428087 / 6400000000000000000000000000000000000 : ℚ)
  oldPieces := [piece_133]
}

def cell_516 : Cell := { cellDefaults with
  domain := ⟨(1003266908833619941 / 320000000000000000000 : ℚ), (31466151743179717 / 10000000000000000000 : ℚ)⟩
  r := (777932653733 / 500000000000 : ℚ)
  w := (72082658973397 / 100000000000000 : ℚ)
  center := (402036752923074177 / 128000000000000000000 : ℚ)
  supportValue := (27469876580241497 / 10000000000000000 : ℚ)
  supportSlope := (12907802768477053 / 1000000000000000 : ℚ)
  oldCenter := (11043899983517892546095738304522969 / 1280000000000000000000000000000000000 : ℚ)
  oldPieces := [piece_133]
}

def cell_517 : Cell := { cellDefaults with
  domain := ⟨(31466151743179717 / 10000000000000000000 : ℚ), (505522868122220171 / 160000000000000000000 : ℚ)⟩
  center := (1008981296013095643 / 320000000000000000000 : ℚ)
  supportValue := (27455424761765133 / 10000000000000000 : ℚ)
  supportSlope := (6425736503021997 / 500000000000000 : ℚ)
  oldCenter := (27702010058715821583045804231615519 / 3200000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_121
  oldPieces := [piece_133]
}

def cell_518 : Cell := { cellDefaults with
  domain := ⟨(505522868122220171 / 160000000000000000000 : ℚ), (50758730835356487 / 16000000000000000000 : ℚ)⟩
  center := (1013110176475785041 / 320000000000000000000 : ℚ)
  supportValue := (27457082582713657 / 10000000000000000 : ℚ)
  supportSlope := (6422856437947873 / 500000000000000 : ℚ)
  oldCenter := (27817049780883236763230435187004937 / 3200000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_121
  oldPieces := [piece_133]
}

def cell_519 : Cell := { cellDefaults with
  domain := ⟨(50758730835356487 / 16000000000000000000 : ℚ), (509651748584909569 / 160000000000000000000 : ℚ)⟩
  center := (1017239056938474439 / 320000000000000000000 : ℚ)
  supportValue := (6864684915677619 / 2500000000000000 : ℚ)
  supportSlope := (6419993921911643 / 500000000000000 : ℚ)
  oldCenter := (6983025609803672077039979795880741 / 800000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_121
  oldPieces := [piece_133]
}

def cell_520 : Cell := { cellDefaults with
  domain := ⟨(509651748584909569 / 160000000000000000000 : ℚ), (127929047204063567 / 40000000000000000000 : ℚ)⟩
  center := (1021367937401163837 / 320000000000000000000 : ℚ)
  supportValue := (27460396006288037 / 10000000000000000 : ℚ)
  supportSlope := (1604287246162653 / 125000000000000 : ℚ)
  oldCenter := (28047168029161569205891654050117969 / 3200000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_121
  oldPieces := [piece_133]
}

def cell_521 : Cell := { cellDefaults with
  domain := ⟨(127929047204063567 / 40000000000000000000 : ℚ), (513780629047598967 / 160000000000000000000 : ℚ)⟩
  center := (205099363572770647 / 64000000000000000000 : ℚ)
  supportValue := (1098482064719461 / 400000000000000 : ℚ)
  supportSlope := (12828643312354867 / 1000000000000000 : ℚ)
  oldCenter := (225297972370064507730604550461267 / 25600000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_121
  oldPieces := [piece_133]
}

def cell_522 : Cell := { cellDefaults with
  domain := ⟨(513780629047598967 / 160000000000000000000 : ℚ), (257922534639471833 / 80000000000000000000 : ℚ)⟩
  center := (1029625698326542633 / 320000000000000000000 : ℚ)
  supportValue := (5492741300470751 / 2000000000000000 : ℚ)
  supportSlope := (12823023932045809 / 1000000000000000 : ℚ)
  oldCenter := (5655467597224238933602761171027383 / 640000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_121
  oldPieces := [piece_133]
}

def cell_523 : Cell := { cellDefaults with
  domain := ⟨(257922534639471833 / 80000000000000000000 : ℚ), (103581901902057673 / 32000000000000000000 : ℚ)⟩
  center := (1033754578789232031 / 320000000000000000000 : ℚ)
  supportValue := (109861442655781 / 40000000000000 : ℚ)
  supportSlope := (12817439887986337 / 1000000000000000 : ℚ)
  oldCenter := (113569769377804256431230072521211 / 12800000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_121
  oldPieces := [piece_133]
}

def cell_524 : Cell := { cellDefaults with
  domain := ⟨(103581901902057673 / 32000000000000000000 : ℚ), (64996743717704133 / 20000000000000000000 : ℚ)⟩
  center := (1037883459251921429 / 320000000000000000000 : ℚ)
  supportValue := (13733507053662093 / 5000000000000000 : ℚ)
  supportSlope := (1601486404956383 / 125000000000000 : ℚ)
  oldCenter := (14253779808515476422159821151690897 / 1600000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_121
  oldPieces := [piece_133]
}

def cell_525 : Cell := { cellDefaults with
  domain := ⟨(64996743717704133 / 20000000000000000000 : ℚ), (522038389972977763 / 160000000000000000000 : ℚ)⟩
  center := (1042012339714610827 / 320000000000000000000 : ℚ)
  supportValue := (137343334185307 / 50000000000000 : ℚ)
  supportSlope := (12806378046170423 / 1000000000000000 : ℚ)
  oldCenter := (143113448998637440128172606518889 / 16000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_121
  oldPieces := [piece_133]
}

def cell_526 : Cell := { cellDefaults with
  domain := ⟨(522038389972977763 / 160000000000000000000 : ℚ), (262051415102161231 / 80000000000000000000 : ℚ)⟩
  center := (41845648807092009 / 12800000000000000000 : ℚ)
  supportValue := (2747031885773539 / 1000000000000000 : ℚ)
  supportSlope := (2560180073472641 / 200000000000000 : ℚ)
  oldCenter := (114951331553963204184296110549851 / 12800000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_121
  oldPieces := [piece_133]
}

def cell_527 : Cell := { cellDefaults with
  domain := ⟨(262051415102161231 / 80000000000000000000 : ℚ), (26411585533350593 / 8000000000000000000 : ℚ)⟩
  center := (526167270435667161 / 160000000000000000000 : ℚ)
  supportValue := (27472776338324527 / 10000000000000000 : ℚ)
  supportSlope := (159909437822613 / 12500000000000 : ℚ)
  oldCenter := (14455275737225799217737112174757847 / 1600000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_121
  oldPieces := [piece_133]
}

def cell_528 : Cell := { cellDefaults with
  domain := ⟨(26411585533350593 / 8000000000000000000 : ℚ), (266180295564850629 / 80000000000000000000 : ℚ)⟩
  center := (530296150898356559 / 160000000000000000000 : ℚ)
  supportValue := (13738038089615363 / 5000000000000000 : ℚ)
  supportSlope := (639100674766557 / 50000000000000 : ℚ)
  oldCenter := (7285228719818038605350241138215917 / 800000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_121
  oldPieces := [piece_133]
}

def cell_529 : Cell := { cellDefaults with
  domain := ⟨(266180295564850629 / 80000000000000000000 : ℚ), (65489437450243 / 19531250000000000 : ℚ)⟩
  center := (534425031361045957 / 160000000000000000000 : ℚ)
  supportValue := (1373968663334269 / 500000000000000 : ℚ)
  supportSlope := (2554283017730383 / 200000000000000 : ℚ)
  oldCenter := (734283245991511104628870962000433 / 80000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_121
  oldPieces := [piece_133]
}

def cell_530 : Cell := { cellDefaults with
  domain := ⟨(65489437450243 / 19531250000000000 : ℚ), (33684571754403373 / 10000000000000000000 : ℚ)⟩
  center := (67215163728927789 / 20000000000000000000 : ℚ)
  supportValue := (1374101138574729 / 500000000000000 : ℚ)
  supportSlope := (319076327008969 / 25000000000000 : ℚ)
  oldCenter := (92360433009406502219486821244181 / 10000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_121
  oldPieces := [piece_133]
}

def cell_531 : Cell := { cellDefaults with
  domain := ⟨(33684571754403373 / 10000000000000000000 : ℚ), (3383855153428233 / 1000000000000000000 : ℚ)⟩
  center := (67523123288685703 / 20000000000000000000 : ℚ)
  supportValue := (27483987545679467 / 10000000000000000 : ℚ)
  supportSlope := (3189216502146757 / 250000000000000 : ℚ)
  oldCenter := (1855804679511617034683162543560301 / 200000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_121
  oldPieces := [piece_133]
}

def cell_532 : Cell := { cellDefaults with
  domain := ⟨(3383855153428233 / 1000000000000000000 : ℚ), (10898595717833817 / 3200000000000000000 : ℚ)⟩
  center := (108634661044020813 / 32000000000000000000 : ℚ)
  supportValue := (274863495286351 / 100000000000000 : ℚ)
  supportSlope := (12743191772934333 / 1000000000000000 : ℚ)
  oldCenter := (29859702643807553338537838823363 / 3200000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_122
  oldPieces := [piece_133]
}

def cell_533 : Cell := { cellDefaults with
  domain := ⟨(10898595717833817 / 3200000000000000000 : ℚ), (27422137361743221 / 8000000000000000000 : ℚ)⟩
  center := (109337253312655527 / 32000000000000000000 : ℚ)
  supportValue := (549782928906809 / 200000000000000 : ℚ)
  supportSlope := (6367159956490239 / 500000000000000 : ℚ)
  oldCenter := (60111755364857460428638901783343 / 6400000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_122
  oldPieces := [piece_133]
}

def cell_534 : Cell := { cellDefaults with
  domain := ⟨(27422137361743221 / 8000000000000000000 : ℚ), (55195570857803799 / 16000000000000000000 : ℚ)⟩
  center := (110039845581290241 / 32000000000000000000 : ℚ)
  supportValue := (1374597071267469 / 500000000000000 : ℚ)
  supportSlope := (6362775109940477 / 500000000000000 : ℚ)
  oldCenter := (151260449458766105137266230470029 / 16000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_122
  oldPieces := [piece_133]
}

def cell_535 : Cell := { cellDefaults with
  domain := ⟨(55195570857803799 / 16000000000000000000 : ℚ), (22148487569984991 / 6400000000000000000 : ℚ)⟩
  center := (221133579565532553 / 64000000000000000000 : ℚ)
  supportValue := (1374702782437727 / 500000000000000 : ℚ)
  supportSlope := (1589879620240439 / 125000000000000 : ℚ)
  oldCenter := (303992947119152090303144313827031 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_122
  oldPieces := [piece_133]
}

def cell_536 : Cell := { cellDefaults with
  domain := ⟨(22148487569984991 / 6400000000000000000 : ℚ), (13886716748030289 / 4000000000000000000 : ℚ)⟩
  center := (221836171834167267 / 64000000000000000000 : ℚ)
  supportValue := (2749543246110879 / 1000000000000000 : ℚ)
  supportSlope := (2544401879358513 / 200000000000000 : ℚ)
  oldCenter := (609948148009727013910929314397693 / 64000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_122
  oldHi := (1 / 100 : ℚ)
  oldPieces := [piece_133, piece_134]
}

def cell_537 : Cell := { cellDefaults with
  domain := ⟨(13886716748030289 / 4000000000000000000 : ℚ), (55898163126438513 / 16000000000000000000 : ℚ)⟩
  center := (111445030118559669 / 32000000000000000000 : ℚ)
  supportValue := (2749754609219137 / 1000000000000000 : ℚ)
  supportSlope := (12885025018086113 / 1000000000000000 : ℚ)
  oldCenter := (306446485243074995839355231185653 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_122
  oldLo := (19089099695964333 / 2000000000000000000 : ℚ)
  oldHi := (1 / 100 : ℚ)
  oldPieces := [piece_134]
}

def cell_538 : Cell := { cellDefaults with
  domain := ⟨(55898163126438513 / 16000000000000000000 : ℚ), (5624945926075587 / 1600000000000000000 : ℚ)⟩
  center := (112147622387194383 / 32000000000000000000 : ℚ)
  supportValue := (2750037327314149 / 1000000000000000 : ℚ)
  supportSlope := (12868113599234409 / 1000000000000000 : ℚ)
  oldCenter := (308410147734316463480048969225067 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_122
  oldLo := (19089099695964333 / 2000000000000000000 : ℚ)
  oldHi := (1 / 100 : ℚ)
  oldPieces := [piece_134]
}

def cell_539 : Cell := { cellDefaults with
  domain := ⟨(5624945926075587 / 1600000000000000000 : ℚ), (56600755395073227 / 16000000000000000000 : ℚ)⟩
  center := (112850214655829097 / 32000000000000000000 : ℚ)
  supportValue := (1375159836423197 / 500000000000000 : ℚ)
  supportSlope := (3212771937810531 / 250000000000000 : ℚ)
  oldCenter := (155187082726432609766250998363109 / 16000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_122
  oldLo := (19089099695964333 / 2000000000000000000 : ℚ)
  oldHi := (1 / 100 : ℚ)
  oldPieces := [piece_134]
}

def cell_540 : Cell := { cellDefaults with
  domain := ⟨(56600755395073227 / 16000000000000000000 : ℚ), (7119006441173823 / 2000000000000000000 : ℚ)⟩
  center := (113552806924463811 / 32000000000000000000 : ℚ)
  supportValue := (27506016433021987 / 10000000000000000 : ℚ)
  supportSlope := (6416973679551207 / 500000000000000 : ℚ)
  oldCenter := (3123385373280074460645654348812457 / 320000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_122
  oldLo := (19089099695964333 / 2000000000000000000 : ℚ)
  oldHi := (1 / 100 : ℚ)
  oldPieces := [piece_134]
}

def cell_541 : Cell := { cellDefaults with
  domain := ⟨(7119006441173823 / 2000000000000000000 : ℚ), (285927922144371727 / 80000000000000000000 : ℚ)⟩
  r := (3872340462297 / 2500000000000 : ℚ)
  w := (18045985521521 / 25000000000000 : ℚ)
  center := (570688179791324647 / 160000000000000000000 : ℚ)
  supportValue := (13744041868755663 / 5000000000000000 : ℚ)
  supportSlope := (6379960959082913 / 500000000000000 : ℚ)
  oldCenter := (7843562237055925393553972352725961 / 800000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_123
  oldLo := (19089099695964333 / 2000000000000000000 : ℚ)
  oldHi := (1 / 100 : ℚ)
  oldPieces := [piece_134]
}

def cell_542 : Cell := { cellDefaults with
  domain := ⟨(285927922144371727 / 80000000000000000000 : ℚ), (143547793320895267 / 40000000000000000000 : ℚ)⟩
  r := (3872340462297 / 2500000000000 : ℚ)
  w := (18045985521521 / 25000000000000 : ℚ)
  center := (573023508786162261 / 160000000000000000000 : ℚ)
  supportValue := (859060792500157 / 312500000000000 : ℚ)
  supportSlope := (6374541293364323 / 500000000000000 : ℚ)
  oldCenter := (492262029579061229659131269974977 / 50000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_123
  oldLo := (19089099695964333 / 2000000000000000000 : ℚ)
  oldHi := (1 / 100 : ℚ)
  oldPieces := [piece_134]
}

def cell_543 : Cell := { cellDefaults with
  domain := ⟨(143547793320895267 / 40000000000000000000 : ℚ), (72357728909157037 / 20000000000000000000 : ℚ)⟩
  r := (3872340462297 / 2500000000000 : ℚ)
  w := (18045985521521 / 25000000000000 : ℚ)
  center := (288263251139209341 / 80000000000000000000 : ℚ)
  supportValue := (27492715576215767 / 10000000000000000 : ℚ)
  supportSlope := (3183188912877621 / 250000000000000 : ℚ)
  oldCenter := (7925139574645538090543949197879547 / 800000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_123
  oldLo := (19089099695964333 / 2000000000000000000 : ℚ)
  oldHi := (1 / 100 : ℚ)
  oldPieces := [piece_134]
}

def cell_544 : Cell := { cellDefaults with
  domain := ⟨(72357728909157037 / 20000000000000000000 : ℚ), (145883122315732881 / 40000000000000000000 : ℚ)⟩
  r := (3872340462297 / 2500000000000 : ℚ)
  w := (18045985521521 / 25000000000000 : ℚ)
  center := (58119716026809391 / 16000000000000000000 : ℚ)
  supportValue := (2749642928020769 / 1000000000000000 : ℚ)
  supportSlope := (12713286444393711 / 1000000000000000 : ℚ)
  oldCenter := (159808466151691788749297652241679 / 16000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_123
  oldLo := (19089099695964333 / 2000000000000000000 : ℚ)
  oldHi := (539847646452489 / 50000000000000000 : ℚ)
  oldPieces := [piece_134, piece_135]
}

def cell_545 : Cell := { cellDefaults with
  domain := ⟨(145883122315732881 / 40000000000000000000 : ℚ), (18381348351643961 / 5000000000000000000 : ℚ)⟩
  r := (3872340462297 / 2500000000000 : ℚ)
  w := (18045985521521 / 25000000000000 : ℚ)
  center := (292933909128884569 / 80000000000000000000 : ℚ)
  supportValue := (5500027635198287 / 2000000000000000 : ℚ)
  supportSlope := (3173643376497187 / 250000000000000 : ℚ)
  oldCenter := (1611144595495528892264503449533303 / 160000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_123
  oldLo := (1 / 100 : ℚ)
  oldHi := (539847646452489 / 50000000000000000 : ℚ)
  oldPieces := [piece_135]
}

def cell_546 : Cell := { cellDefaults with
  domain := ⟨(18381348351643961 / 5000000000000000000 : ℚ), (29643690262114099 / 8000000000000000000 : ℚ)⟩
  r := (3872340462297 / 2500000000000 : ℚ)
  w := (18045985521521 / 25000000000000 : ℚ)
  center := (295269238123722183 / 80000000000000000000 : ℚ)
  supportValue := (6875960112884063 / 2500000000000000 : ℚ)
  supportSlope := (6335372071774513 / 500000000000000 : ℚ)
  oldCenter := (2030259503900380059740936700269529 / 200000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_123
  oldLo := (1 / 100 : ℚ)
  oldHi := (539847646452489 / 50000000000000000 : ℚ)
  oldPieces := [piece_135]
}

def cell_547 : Cell := { cellDefaults with
  domain := ⟨(29643690262114099 / 8000000000000000000 : ℚ), (74693057903994651 / 20000000000000000000 : ℚ)⟩
  r := (3872340462297 / 2500000000000 : ℚ)
  w := (18045985521521 / 25000000000000 : ℚ)
  center := (297604567118559797 / 80000000000000000000 : ℚ)
  supportValue := (1375376787217809 / 500000000000000 : ℚ)
  supportSlope := (505869310358053 / 40000000000000 : ℚ)
  oldCenter := (409318413384871574824758629824773 / 40000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_123
  oldLo := (1 / 100 : ℚ)
  oldHi := (539847646452489 / 50000000000000000 : ℚ)
  oldPieces := [piece_135]
}

def cell_548 : Cell := { cellDefaults with
  domain := ⟨(74693057903994651 / 20000000000000000000 : ℚ), (150553780305408109 / 40000000000000000000 : ℚ)⟩
  r := (3872340462297 / 2500000000000 : ℚ)
  w := (18045985521521 / 25000000000000 : ℚ)
  center := (299939896113397411 / 80000000000000000000 : ℚ)
  supportValue := (1375561200063639 / 500000000000000 : ℚ)
  supportSlope := (1577817382060901 / 125000000000000 : ℚ)
  oldCenter := (412585683444708153800813697838629 / 40000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_123
  oldLo := (1 / 100 : ℚ)
  oldHi := (539847646452489 / 50000000000000000 : ℚ)
  oldPieces := [piece_135]
}

def cell_549 : Cell := { cellDefaults with
  domain := ⟨(150553780305408109 / 40000000000000000000 : ℚ), (37930361200706729 / 10000000000000000000 : ℚ)⟩
  r := (3872340462297 / 2500000000000 : ℚ)
  w := (18045985521521 / 25000000000000 : ℚ)
  center := (12091009004329401 / 3200000000000000000 : ℚ)
  supportValue := (2751490516902179 / 1000000000000000 : ℚ)
  supportSlope := (12598162744038483 / 1000000000000000 : ℚ)
  oldCenter := (33268296615191204203977810664779 / 3200000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_123
  oldLo := (1 / 100 : ℚ)
  oldHi := (539847646452489 / 50000000000000000 : ℚ)
  oldPieces := [piece_135]
}

theorem check_500 : cell_500.check = true := by
  decide +kernel

theorem check_501 : cell_501.check = true := by
  decide +kernel

theorem check_502 : cell_502.check = true := by
  decide +kernel

theorem check_503 : cell_503.check = true := by
  decide +kernel

theorem check_504 : cell_504.check = true := by
  decide +kernel

theorem check_505 : cell_505.check = true := by
  decide +kernel

theorem check_506 : cell_506.check = true := by
  decide +kernel

theorem check_507 : cell_507.check = true := by
  decide +kernel

theorem check_508 : cell_508.check = true := by
  decide +kernel

theorem check_509 : cell_509.check = true := by
  decide +kernel

theorem check_510 : cell_510.check = true := by
  decide +kernel

theorem check_511 : cell_511.check = true := by
  decide +kernel

theorem check_512 : cell_512.check = true := by
  decide +kernel

theorem check_513 : cell_513.check = true := by
  decide +kernel

theorem check_514 : cell_514.check = true := by
  decide +kernel

theorem check_515 : cell_515.check = true := by
  decide +kernel

theorem check_516 : cell_516.check = true := by
  decide +kernel

theorem check_517 : cell_517.check = true := by
  decide +kernel

theorem check_518 : cell_518.check = true := by
  decide +kernel

theorem check_519 : cell_519.check = true := by
  decide +kernel

theorem check_520 : cell_520.check = true := by
  decide +kernel

theorem check_521 : cell_521.check = true := by
  decide +kernel

theorem check_522 : cell_522.check = true := by
  decide +kernel

theorem check_523 : cell_523.check = true := by
  decide +kernel

theorem check_524 : cell_524.check = true := by
  decide +kernel

theorem check_525 : cell_525.check = true := by
  decide +kernel

theorem check_526 : cell_526.check = true := by
  decide +kernel

theorem check_527 : cell_527.check = true := by
  decide +kernel

theorem check_528 : cell_528.check = true := by
  decide +kernel

theorem check_529 : cell_529.check = true := by
  decide +kernel

theorem check_530 : cell_530.check = true := by
  decide +kernel

theorem check_531 : cell_531.check = true := by
  decide +kernel

theorem check_532 : cell_532.check = true := by
  decide +kernel

theorem check_533 : cell_533.check = true := by
  decide +kernel

theorem check_534 : cell_534.check = true := by
  decide +kernel

theorem check_535 : cell_535.check = true := by
  decide +kernel

theorem check_536 : cell_536.check = true := by
  decide +kernel

theorem check_537 : cell_537.check = true := by
  decide +kernel

theorem check_538 : cell_538.check = true := by
  decide +kernel

theorem check_539 : cell_539.check = true := by
  decide +kernel

theorem check_540 : cell_540.check = true := by
  decide +kernel

theorem check_541 : cell_541.check = true := by
  decide +kernel

theorem check_542 : cell_542.check = true := by
  decide +kernel

theorem check_543 : cell_543.check = true := by
  decide +kernel

theorem check_544 : cell_544.check = true := by
  decide +kernel

theorem check_545 : cell_545.check = true := by
  decide +kernel

theorem check_546 : cell_546.check = true := by
  decide +kernel

theorem check_547 : cell_547.check = true := by
  decide +kernel

theorem check_548 : cell_548.check = true := by
  decide +kernel

theorem check_549 : cell_549.check = true := by
  decide +kernel

def cells : List Cell := [cell_500, cell_501, cell_502, cell_503, cell_504, cell_505, cell_506, cell_507, cell_508, cell_509, cell_510, cell_511, cell_512, cell_513, cell_514, cell_515, cell_516, cell_517, cell_518, cell_519, cell_520, cell_521, cell_522, cell_523, cell_524, cell_525, cell_526, cell_527, cell_528, cell_529, cell_530, cell_531, cell_532, cell_533, cell_534, cell_535, cell_536, cell_537, cell_538, cell_539, cell_540, cell_541, cell_542, cell_543, cell_544, cell_545, cell_546, cell_547, cell_548, cell_549]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_500, check_501, check_502, check_503, check_504, check_505, check_506, check_507, check_508, check_509, check_510, check_511, check_512, check_513, check_514, check_515, check_516, check_517, check_518, check_519, check_520, check_521, check_522, check_523, check_524, check_525, check_526, check_527, check_528, check_529, check_530, check_531, check_532, check_533, check_534, check_535, check_536, check_537, check_538, check_539, check_540, check_541, check_542, check_543, check_544, check_545, check_546, check_547, check_548, check_549, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0010

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0010
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0010
open AnalyticBounds.ExpressionCertificate

theorem linked_500 : Linked cell_500 pieces := by
  apply Linked.of_piece piece_120 piece_120_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_500, List.cons_subset, List.nil_subset, and_true]
  exact piece_132_mem

theorem linked_501 : Linked cell_501 pieces := by
  apply Linked.of_piece piece_120 piece_120_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_501, List.cons_subset, List.nil_subset, and_true]
  exact piece_132_mem

theorem linked_502 : Linked cell_502 pieces := by
  apply Linked.of_piece piece_120 piece_120_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_502, List.cons_subset, List.nil_subset, and_true]
  exact piece_132_mem

theorem linked_503 : Linked cell_503 pieces := by
  apply Linked.of_piece piece_120 piece_120_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_503, List.cons_subset, List.nil_subset, and_true]
  exact piece_132_mem

theorem linked_504 : Linked cell_504 pieces := by
  apply Linked.of_piece piece_120 piece_120_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_504, List.cons_subset, List.nil_subset, and_true]
  exact piece_132_mem

theorem linked_505 : Linked cell_505 pieces := by
  apply Linked.of_piece piece_120 piece_120_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_505, List.cons_subset, List.nil_subset, and_true]
  exact piece_132_mem

theorem linked_506 : Linked cell_506 pieces := by
  apply Linked.of_piece piece_120 piece_120_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_506, List.cons_subset, List.nil_subset, and_true]
  exact piece_132_mem

theorem linked_507 : Linked cell_507 pieces := by
  apply Linked.of_piece piece_120 piece_120_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_507, List.cons_subset, List.nil_subset, and_true]
  exact piece_132_mem

theorem linked_508 : Linked cell_508 pieces := by
  apply Linked.of_piece piece_120 piece_120_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_508, List.cons_subset, List.nil_subset, and_true]
  exact piece_132_mem

theorem linked_509 : Linked cell_509 pieces := by
  apply Linked.of_piece piece_120 piece_120_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_509, List.cons_subset, List.nil_subset, and_true]
  exact piece_132_mem

theorem linked_510 : Linked cell_510 pieces := by
  apply Linked.of_piece piece_120 piece_120_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_510, List.cons_subset, List.nil_subset, and_true]
  exact piece_132_mem

theorem linked_511 : Linked cell_511 pieces := by
  apply Linked.of_piece piece_120 piece_120_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_511, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_132_mem, piece_133_mem⟩

theorem linked_512 : Linked cell_512 pieces := by
  apply Linked.of_piece piece_120 piece_120_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_512, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_513 : Linked cell_513 pieces := by
  apply Linked.of_piece piece_120 piece_120_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_513, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_514 : Linked cell_514 pieces := by
  apply Linked.of_piece piece_120 piece_120_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_514, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_515 : Linked cell_515 pieces := by
  apply Linked.of_piece piece_120 piece_120_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_515, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_516 : Linked cell_516 pieces := by
  apply Linked.of_piece piece_120 piece_120_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_516, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_517 : Linked cell_517 pieces := by
  apply Linked.of_piece piece_121 piece_121_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_517, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_518 : Linked cell_518 pieces := by
  apply Linked.of_piece piece_121 piece_121_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_518, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_519 : Linked cell_519 pieces := by
  apply Linked.of_piece piece_121 piece_121_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_519, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_520 : Linked cell_520 pieces := by
  apply Linked.of_piece piece_121 piece_121_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_520, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_521 : Linked cell_521 pieces := by
  apply Linked.of_piece piece_121 piece_121_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_521, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_522 : Linked cell_522 pieces := by
  apply Linked.of_piece piece_121 piece_121_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_522, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_523 : Linked cell_523 pieces := by
  apply Linked.of_piece piece_121 piece_121_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_523, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_524 : Linked cell_524 pieces := by
  apply Linked.of_piece piece_121 piece_121_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_524, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_525 : Linked cell_525 pieces := by
  apply Linked.of_piece piece_121 piece_121_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_525, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_526 : Linked cell_526 pieces := by
  apply Linked.of_piece piece_121 piece_121_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_526, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_527 : Linked cell_527 pieces := by
  apply Linked.of_piece piece_121 piece_121_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_527, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_528 : Linked cell_528 pieces := by
  apply Linked.of_piece piece_121 piece_121_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_528, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_529 : Linked cell_529 pieces := by
  apply Linked.of_piece piece_121 piece_121_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_529, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_530 : Linked cell_530 pieces := by
  apply Linked.of_piece piece_121 piece_121_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_530, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_531 : Linked cell_531 pieces := by
  apply Linked.of_piece piece_121 piece_121_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_531, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_532 : Linked cell_532 pieces := by
  apply Linked.of_piece piece_122 piece_122_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_532, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_533 : Linked cell_533 pieces := by
  apply Linked.of_piece piece_122 piece_122_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_533, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_534 : Linked cell_534 pieces := by
  apply Linked.of_piece piece_122 piece_122_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_534, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_535 : Linked cell_535 pieces := by
  apply Linked.of_piece piece_122 piece_122_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_535, List.cons_subset, List.nil_subset, and_true]
  exact piece_133_mem

theorem linked_536 : Linked cell_536 pieces := by
  apply Linked.of_piece piece_122 piece_122_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_536, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_133_mem, piece_134_mem⟩

theorem linked_537 : Linked cell_537 pieces := by
  apply Linked.of_piece piece_122 piece_122_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_537, List.cons_subset, List.nil_subset, and_true]
  exact piece_134_mem

theorem linked_538 : Linked cell_538 pieces := by
  apply Linked.of_piece piece_122 piece_122_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_538, List.cons_subset, List.nil_subset, and_true]
  exact piece_134_mem

theorem linked_539 : Linked cell_539 pieces := by
  apply Linked.of_piece piece_122 piece_122_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_539, List.cons_subset, List.nil_subset, and_true]
  exact piece_134_mem

theorem linked_540 : Linked cell_540 pieces := by
  apply Linked.of_piece piece_122 piece_122_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_540, List.cons_subset, List.nil_subset, and_true]
  exact piece_134_mem

theorem linked_541 : Linked cell_541 pieces := by
  apply Linked.of_piece piece_123 piece_123_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_541, List.cons_subset, List.nil_subset, and_true]
  exact piece_134_mem

theorem linked_542 : Linked cell_542 pieces := by
  apply Linked.of_piece piece_123 piece_123_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_542, List.cons_subset, List.nil_subset, and_true]
  exact piece_134_mem

theorem linked_543 : Linked cell_543 pieces := by
  apply Linked.of_piece piece_123 piece_123_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_543, List.cons_subset, List.nil_subset, and_true]
  exact piece_134_mem

theorem linked_544 : Linked cell_544 pieces := by
  apply Linked.of_piece piece_123 piece_123_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_544, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_134_mem, piece_135_mem⟩

theorem linked_545 : Linked cell_545 pieces := by
  apply Linked.of_piece piece_123 piece_123_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_545, List.cons_subset, List.nil_subset, and_true]
  exact piece_135_mem

theorem linked_546 : Linked cell_546 pieces := by
  apply Linked.of_piece piece_123 piece_123_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_546, List.cons_subset, List.nil_subset, and_true]
  exact piece_135_mem

theorem linked_547 : Linked cell_547 pieces := by
  apply Linked.of_piece piece_123 piece_123_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_547, List.cons_subset, List.nil_subset, and_true]
  exact piece_135_mem

theorem linked_548 : Linked cell_548 pieces := by
  apply Linked.of_piece piece_123 piece_123_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_548, List.cons_subset, List.nil_subset, and_true]
  exact piece_135_mem

theorem linked_549 : Linked cell_549 pieces := by
  apply Linked.of_piece piece_123 piece_123_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_549, List.cons_subset, List.nil_subset, and_true]
  exact piece_135_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0010.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0010.cells,List.forall_mem_cons]
  exact ⟨linked_500, linked_501, linked_502, linked_503, linked_504, linked_505, linked_506, linked_507, linked_508, linked_509, linked_510, linked_511, linked_512, linked_513, linked_514, linked_515, linked_516, linked_517, linked_518, linked_519, linked_520, linked_521, linked_522, linked_523, linked_524, linked_525, linked_526, linked_527, linked_528, linked_529, linked_530, linked_531, linked_532, linked_533, linked_534, linked_535, linked_536, linked_537, linked_538, linked_539, linked_540, linked_541, linked_542, linked_543, linked_544, linked_545, linked_546, linked_547, linked_548, linked_549, by simp⟩

theorem covered : covers (908368288182213863 / 320000000000000000000 : ℚ) (37930361200706729 / 10000000000000000000 : ℚ)
    (SourceCertificates.Chunk0010.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0010
