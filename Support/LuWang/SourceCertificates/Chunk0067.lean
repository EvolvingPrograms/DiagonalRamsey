import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0067
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(10137500000000001 / 100000000000000000 : ℚ), (10139062500000001 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (5527087745041 / 5000000000000 : ℚ)
  w := (19173325693531 / 20000000000000 : ℚ)
  center := (10138281250000001 / 100000000000000000 : ℚ)
  supportValue := (33786914295874737 / 100000000000000000 : ℚ)
  supportSlope := (4002101447948547 / 1000000000000000 : ℚ)
  oldCenter := (33786914295874737 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_320
  oldLo := (16950000000000001 / 50000000000000000 : ℚ)
  oldHi := (16975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_838]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_3350 : Cell := { cellDefaults with
  r := (2766970613889 / 2500000000000 : ℚ)
  w := (95768738673943 / 100000000000000 : ℚ)
  newCoefficients := coefficients_319
  oldLo := (16875000000000001 / 50000000000000000 : ℚ)
  oldHi := (16900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_835]
}

def cell_3351 : Cell := { cellDefaults with
  domain := ⟨(10139062500000001 / 100000000000000000 : ℚ), (10140625000000001 / 100000000000000000 : ℚ)⟩
  r := (2766970613889 / 2500000000000 : ℚ)
  w := (95768738673943 / 100000000000000 : ℚ)
  center := (10139843750000001 / 100000000000000000 : ℚ)
  supportValue := (16896584250577837 / 50000000000000000 : ℚ)
  supportSlope := (2001641290982903 / 500000000000000 : ℚ)
  oldCenter := (16896584250577837 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_319
  oldLo := (16875000000000001 / 50000000000000000 : ℚ)
  oldHi := (16900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_835]
}

def cell_3352 : Cell := { cellDefaults with
  domain := ⟨(10140625000000001 / 100000000000000000 : ℚ), (10142187500000001 / 100000000000000000 : ℚ)⟩
  r := (2766970613889 / 2500000000000 : ℚ)
  w := (95768738673943 / 100000000000000 : ℚ)
  center := (10141406250000001 / 100000000000000000 : ℚ)
  supportValue := (8449856138356801 / 25000000000000000 : ℚ)
  supportSlope := (1000579151082981 / 250000000000000 : ℚ)
  oldCenter := (8449856138356801 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_319
  oldLo := (16875000000000001 / 50000000000000000 : ℚ)
  oldHi := (16925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_835, piece_836]
}

def cell_3353 : Cell := { cellDefaults with
  domain := ⟨(10142187500000001 / 100000000000000000 : ℚ), (10143750000000001 / 100000000000000000 : ℚ)⟩
  r := (2766970613889 / 2500000000000 : ℚ)
  w := (95768738673943 / 100000000000000 : ℚ)
  center := (10142968750000001 / 100000000000000000 : ℚ)
  supportValue := (845141874569297 / 2500000000000000 : ℚ)
  supportSlope := (4000379079027283 / 1000000000000000 : ℚ)
  oldCenter := (845141874569297 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_319
  oldLo := (16900000000000001 / 50000000000000000 : ℚ)
  oldHi := (16925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_836]
}

def cell_3354 : Cell := { cellDefaults with
  domain := ⟨(10143750000000001 / 100000000000000000 : ℚ), (10146875000000001 / 100000000000000000 : ℚ)⟩
  r := (2766970613889 / 2500000000000 : ℚ)
  w := (95768738673943 / 100000000000000 : ℚ)
  center := (10145312500000001 / 100000000000000000 : ℚ)
  supportValue := (3381504616410011 / 10000000000000000 : ℚ)
  supportSlope := (4002135305153587 / 1000000000000000 : ℚ)
  oldCenter := (3381504616410011 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_319
  oldLo := (16900000000000001 / 50000000000000000 : ℚ)
  oldHi := (16925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_836]
}

def cell_3355 : Cell := { cellDefaults with
  domain := ⟨(10146875000000001 / 100000000000000000 : ℚ), (10150000000000001 / 100000000000000000 : ℚ)⟩
  r := (2766970613889 / 2500000000000 : ℚ)
  w := (95768738673943 / 100000000000000 : ℚ)
  center := (10148437500000001 / 100000000000000000 : ℚ)
  supportValue := (422844456234293 / 1250000000000000 : ℚ)
  supportSlope := (2002241564047047 / 500000000000000 : ℚ)
  oldCenter := (422844456234293 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_319
  oldLo := (16900000000000001 / 50000000000000000 : ℚ)
  oldHi := (16925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_836]
}

def cell_3356 : Cell := { cellDefaults with
  domain := ⟨(10150000000000001 / 100000000000000000 : ℚ), (10153125000000001 / 100000000000000000 : ℚ)⟩
  center := (10151562500000001 / 100000000000000000 : ℚ)
  supportValue := (16915640715321073 / 50000000000000000 : ℚ)
  supportSlope := (4005028828187207 / 1000000000000000 : ℚ)
  oldCenter := (16915640715321073 / 50000000000000000 : ℚ)
  oldLo := (16900000000000001 / 50000000000000000 : ℚ)
  oldHi := (16925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_836]
}

def cell_3357 : Cell := { cellDefaults with
  domain := ⟨(10153125000000001 / 100000000000000000 : ℚ), (10154687500000001 / 100000000000000000 : ℚ)⟩
  center := (10153906250000001 / 100000000000000000 : ℚ)
  supportValue := (8460169263069911 / 25000000000000000 : ℚ)
  supportSlope := (4006796319774963 / 1000000000000000 : ℚ)
  oldCenter := (8460169263069911 / 25000000000000000 : ℚ)
  oldLo := (16900000000000001 / 50000000000000000 : ℚ)
  oldHi := (16925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_836]
}

def cell_3358 : Cell := { cellDefaults with
  domain := ⟨(10154687500000001 / 100000000000000000 : ℚ), (10156250000000001 / 100000000000000000 : ℚ)⟩
  center := (10155468750000001 / 100000000000000000 : ℚ)
  supportValue := (846173464826367 / 2500000000000000 : ℚ)
  supportSlope := (2003957864332051 / 500000000000000 : ℚ)
  oldCenter := (846173464826367 / 2500000000000000 : ℚ)
  oldLo := (16900000000000001 / 50000000000000000 : ℚ)
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_836, piece_837]
}

def cell_3359 : Cell := { cellDefaults with
  domain := ⟨(10156250000000001 / 100000000000000000 : ℚ), (10159375000000001 / 100000000000000000 : ℚ)⟩
  center := (10157812500000001 / 100000000000000000 : ℚ)
  supportValue := (3385631930131547 / 10000000000000000 : ℚ)
  supportSlope := (4004495438437061 / 1000000000000000 : ℚ)
  oldCenter := (3385631930131547 / 10000000000000000 : ℚ)
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837]
}

def cell_3360 : Cell := { cellDefaults with
  domain := ⟨(10159375000000001 / 100000000000000000 : ℚ), (10160937500000001 / 100000000000000000 : ℚ)⟩
  center := (10160156250000001 / 100000000000000000 : ℚ)
  supportValue := (3386571365769339 / 10000000000000000 : ℚ)
  supportSlope := (4006245730703739 / 1000000000000000 : ℚ)
  oldCenter := (3386571365769339 / 10000000000000000 : ℚ)
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837]
}

def cell_3361 : Cell := { cellDefaults with
  domain := ⟨(10160937500000001 / 100000000000000000 : ℚ), (10162500000000001 / 100000000000000000 : ℚ)⟩
  center := (10161718750000001 / 100000000000000000 : ℚ)
  supportValue := (3387197432918987 / 10000000000000000 : ℚ)
  supportSlope := (1001853761797733 / 250000000000000 : ℚ)
  oldCenter := (3387197432918987 / 10000000000000000 : ℚ)
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837]
}

def cell_3362 : Cell := { cellDefaults with
  domain := ⟨(10162500000000001 / 100000000000000000 : ℚ), (10164062500000001 / 100000000000000000 : ℚ)⟩
  center := (10163281250000001 / 100000000000000000 : ℚ)
  supportValue := (3387823682918479 / 10000000000000000 : ℚ)
  supportSlope := (2004293104997501 / 500000000000000 : ℚ)
  oldCenter := (3387823682918479 / 10000000000000000 : ℚ)
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837]
}

def cell_3363 : Cell := { cellDefaults with
  domain := ⟨(10164062500000001 / 100000000000000000 : ℚ), (10165625000000001 / 100000000000000000 : ℚ)⟩
  center := (10164843750000001 / 100000000000000000 : ℚ)
  supportValue := (3388450116056621 / 10000000000000000 : ℚ)
  supportSlope := (2004879611590127 / 500000000000000 : ℚ)
  oldCenter := (3388450116056621 / 10000000000000000 : ℚ)
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837]
}

def cell_3364 : Cell := { cellDefaults with
  domain := ⟨(10165625000000001 / 100000000000000000 : ℚ), (10167187500000001 / 100000000000000000 : ℚ)⟩
  center := (10166406250000001 / 100000000000000000 : ℚ)
  supportValue := (3389076732622859 / 10000000000000000 : ℚ)
  supportSlope := (802186818173567 / 200000000000000 : ℚ)
  oldCenter := (3389076732622859 / 10000000000000000 : ℚ)
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837]
}

def cell_3365 : Cell := { cellDefaults with
  domain := ⟨(10167187500000001 / 100000000000000000 : ℚ), (10168750000000001 / 100000000000000000 : ℚ)⟩
  center := (10167968750000001 / 100000000000000000 : ℚ)
  supportValue := (135588141316291 / 400000000000000 : ℚ)
  supportSlope := (802393317398753 / 200000000000000 : ℚ)
  oldCenter := (135588141316291 / 400000000000000 : ℚ)
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837, piece_838]
}

def cell_3366 : Cell := { cellDefaults with
  domain := ⟨(10168750000000001 / 100000000000000000 : ℚ), (10170312500000001 / 100000000000000000 : ℚ)⟩
  center := (10169531250000001 / 100000000000000000 : ℚ)
  supportValue := (16951650434448637 / 50000000000000000 : ℚ)
  supportSlope := (801613078362351 / 200000000000000 : ℚ)
  oldCenter := (16951650434448637 / 50000000000000000 : ℚ)
  oldPieces := [piece_838]
}

def cell_3367 : Cell := { cellDefaults with
  domain := ⟨(10170312500000001 / 100000000000000000 : ℚ), (10171875000000001 / 100000000000000000 : ℚ)⟩
  center := (10171093750000001 / 100000000000000000 : ℚ)
  supportValue := (3390956437825659 / 10000000000000000 : ℚ)
  supportSlope := (4009227846083263 / 1000000000000000 : ℚ)
  oldCenter := (3390956437825659 / 10000000000000000 : ℚ)
  oldPieces := [piece_838]
}

def cell_3368 : Cell := { cellDefaults with
  domain := ⟨(10171875000000001 / 100000000000000000 : ℚ), (10173437500000001 / 100000000000000000 : ℚ)⟩
  center := (10172656250000001 / 100000000000000000 : ℚ)
  supportValue := (3391582970537709 / 10000000000000000 : ℚ)
  supportSlope := (401039212740173 / 100000000000000 : ℚ)
  oldCenter := (3391582970537709 / 10000000000000000 : ℚ)
  oldPieces := [piece_838]
}

def cell_3369 : Cell := { cellDefaults with
  domain := ⟨(10173437500000001 / 100000000000000000 : ℚ), (10175000000000001 / 100000000000000000 : ℚ)⟩
  center := (10174218750000001 / 100000000000000000 : ℚ)
  supportValue := (424026210663959 / 1250000000000000 : ℚ)
  supportSlope := (2005779119905071 / 500000000000000 : ℚ)
  oldCenter := (424026210663959 / 1250000000000000 : ℚ)
  oldPieces := [piece_838]
}

def cell_3370 : Cell := { cellDefaults with
  domain := ⟨(10175000000000001 / 100000000000000000 : ℚ), (10176562500000001 / 100000000000000000 : ℚ)⟩
  center := (10175781250000001 / 100000000000000000 : ℚ)
  supportValue := (33928365824339723 / 100000000000000000 : ℚ)
  supportSlope := (2006363093666863 / 500000000000000 : ℚ)
  oldCenter := (33928365824339723 / 100000000000000000 : ℚ)
  oldPieces := [piece_838]
}

def cell_3371 : Cell := { cellDefaults with
  domain := ⟨(10176562500000001 / 100000000000000000 : ℚ), (10178125000000001 / 100000000000000000 : ℚ)⟩
  center := (10177343750000001 / 100000000000000000 : ℚ)
  supportValue := (3393463662191661 / 10000000000000000 : ℚ)
  supportSlope := (4013895974047443 / 1000000000000000 : ℚ)
  oldCenter := (3393463662191661 / 10000000000000000 : ℚ)
  oldPieces := [piece_838]
}

def cell_3372 : Cell := { cellDefaults with
  domain := ⟨(10178125000000001 / 100000000000000000 : ℚ), (10179687500000001 / 100000000000000000 : ℚ)⟩
  center := (10178906250000001 / 100000000000000000 : ℚ)
  supportValue := (16970454624362147 / 50000000000000000 : ℚ)
  supportSlope := (401506760399073 / 100000000000000 : ℚ)
  oldCenter := (16970454624362147 / 50000000000000000 : ℚ)
  oldPieces := [piece_838]
}

def cell_3373 : Cell := { cellDefaults with
  domain := ⟨(10179687500000001 / 100000000000000000 : ℚ), (10181250000000001 / 100000000000000000 : ℚ)⟩
  center := (10180468750000001 / 100000000000000000 : ℚ)
  supportValue := (1697359185382299 / 5000000000000000 : ℚ)
  supportSlope := (4015972002289203 / 1000000000000000 : ℚ)
  oldCenter := (1697359185382299 / 5000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_838, piece_839]
}

def cell_3374 : Cell := { cellDefaults with
  domain := ⟨(10181250000000001 / 100000000000000000 : ℚ), (10182812500000001 / 100000000000000000 : ℚ)⟩
  center := (10182031250000001 / 100000000000000000 : ℚ)
  supportValue := (6790691103610661 / 20000000000000000 : ℚ)
  supportSlope := (2006105682262671 / 500000000000000 : ℚ)
  oldCenter := (6790691103610661 / 20000000000000000 : ℚ)
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839]
}

def cell_3375 : Cell := { cellDefaults with
  domain := ⟨(10182812500000001 / 100000000000000000 : ℚ), (10184375000000001 / 100000000000000000 : ℚ)⟩
  center := (10183593750000001 / 100000000000000000 : ℚ)
  supportValue := (1358389020142043 / 4000000000000000 : ℚ)
  supportSlope := (250835708070829 / 62500000000000 : ℚ)
  oldCenter := (1358389020142043 / 4000000000000000 : ℚ)
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839]
}

def cell_3376 : Cell := { cellDefaults with
  domain := ⟨(10184375000000001 / 100000000000000000 : ℚ), (10187500000000001 / 100000000000000000 : ℚ)⟩
  center := (10185937500000001 / 100000000000000000 : ℚ)
  supportValue := (3396912708985343 / 10000000000000000 : ℚ)
  supportSlope := (401511491364559 / 100000000000000 : ℚ)
  oldCenter := (3396912708985343 / 10000000000000000 : ℚ)
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839]
}

def cell_3377 : Cell := { cellDefaults with
  domain := ⟨(10187500000000001 / 100000000000000000 : ℚ), (10190625000000001 / 100000000000000000 : ℚ)⟩
  center := (10189062500000001 / 100000000000000000 : ℚ)
  supportValue := (33981677959309203 / 100000000000000000 : ℚ)
  supportSlope := (1004361443905477 / 250000000000000 : ℚ)
  oldCenter := (33981677959309203 / 100000000000000000 : ℚ)
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839]
}

def cell_3378 : Cell := { cellDefaults with
  domain := ⟨(10190625000000001 / 100000000000000000 : ℚ), (10192187500000001 / 100000000000000000 : ℚ)⟩
  center := (10191406250000001 / 100000000000000000 : ℚ)
  supportValue := (424888783699509 / 1250000000000000 : ℚ)
  supportSlope := (40191984991651 / 10000000000000 : ℚ)
  oldCenter := (424888783699509 / 1250000000000000 : ℚ)
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839]
}

def cell_3379 : Cell := { cellDefaults with
  domain := ⟨(10192187500000001 / 100000000000000000 : ℚ), (10193750000000001 / 100000000000000000 : ℚ)⟩
  center := (10192968750000001 / 100000000000000000 : ℚ)
  supportValue := (849934590185461 / 2500000000000000 : ℚ)
  supportSlope := (803986817847857 / 200000000000000 : ℚ)
  oldCenter := (849934590185461 / 2500000000000000 : ℚ)
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839, piece_840]
}

def cell_3380 : Cell := { cellDefaults with
  domain := ⟨(10193750000000001 / 100000000000000000 : ℚ), (10196875000000001 / 100000000000000000 : ℚ)⟩
  center := (10195312500000001 / 100000000000000000 : ℚ)
  supportValue := (3400679282079863 / 10000000000000000 : ℚ)
  supportSlope := (4016932835167353 / 1000000000000000 : ℚ)
  oldCenter := (3400679282079863 / 10000000000000000 : ℚ)
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_840]
}

def cell_3381 : Cell := { cellDefaults with
  domain := ⟨(10196875000000001 / 100000000000000000 : ℚ), (10200000000000001 / 100000000000000000 : ℚ)⟩
  center := (10198437500000001 / 100000000000000000 : ℚ)
  supportValue := (6803869870310587 / 20000000000000000 : ℚ)
  supportSlope := (62800797945739 / 15625000000000 : ℚ)
  oldCenter := (6803869870310587 / 20000000000000000 : ℚ)
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_840]
}

def cell_3382 : Cell := { cellDefaults with
  domain := ⟨(10200000000000001 / 100000000000000000 : ℚ), (10203125000000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10201562500000001 / 100000000000000000 : ℚ)
  supportValue := (17011250711953843 / 50000000000000000 : ℚ)
  supportSlope := (20098223682687433 / 5000000000000000 : ℚ)
  oldCenter := (17011250711953843 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_840]
}

def cell_3383 : Cell := { cellDefaults with
  domain := ⟨(10203125000000001 / 100000000000000000 : ℚ), (10206250000000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10204687500000001 / 100000000000000000 : ℚ)
  supportValue := (850876661113011 / 2500000000000000 : ℚ)
  supportSlope := (1005493172048677 / 250000000000000 : ℚ)
  oldCenter := (850876661113011 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_840]
}

def cell_3384 : Cell := { cellDefaults with
  domain := ⟨(10206250000000001 / 100000000000000000 : ℚ), (10207812500000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10207031250000001 / 100000000000000000 : ℚ)
  supportValue := (3404450179922463 / 10000000000000000 : ℚ)
  supportSlope := (804744641922639 / 200000000000000 : ℚ)
  oldCenter := (3404450179922463 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_840]
}

def cell_3385 : Cell := { cellDefaults with
  domain := ⟨(10207812500000001 / 100000000000000000 : ℚ), (10209375000000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10208593750000001 / 100000000000000000 : ℚ)
  supportValue := (34050788762448997 / 100000000000000000 : ℚ)
  supportSlope := (4021658998745181 / 1000000000000000 : ℚ)
  oldCenter := (34050788762448997 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_840, piece_841]
}

def cell_3386 : Cell := { cellDefaults with
  domain := ⟨(10209375000000001 / 100000000000000000 : ℚ), (10212500000000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10210937500000001 / 100000000000000000 : ℚ)
  supportValue := (6812041044600361 / 20000000000000000 : ℚ)
  supportSlope := (4021463108458079 / 1000000000000000 : ℚ)
  oldCenter := (6812041044600361 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841]
}

def cell_3387 : Cell := { cellDefaults with
  domain := ⟨(10212500000000001 / 100000000000000000 : ℚ), (10214062500000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10213281250000001 / 100000000000000000 : ℚ)
  supportValue := (34069639370640753 / 100000000000000000 : ℚ)
  supportSlope := (4023198454707 / 1000000000000 : ℚ)
  oldCenter := (34069639370640753 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841]
}

def cell_3388 : Cell := { cellDefaults with
  domain := ⟨(10214062500000001 / 100000000000000000 : ℚ), (10215625000000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10214843750000001 / 100000000000000000 : ℚ)
  supportValue := (4259490815368637 / 12500000000000000 : ℚ)
  supportSlope := (4024357756197361 / 1000000000000000 : ℚ)
  oldCenter := (4259490815368637 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841]
}

def cell_3389 : Cell := { cellDefaults with
  domain := ⟨(10215625000000001 / 100000000000000000 : ℚ), (10217187500000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10216406250000001 / 100000000000000000 : ℚ)
  supportValue := (3408221548807747 / 10000000000000000 : ℚ)
  supportSlope := (1006379716390171 / 250000000000000 : ℚ)
  oldCenter := (3408221548807747 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841]
}

def cell_3390 : Cell := { cellDefaults with
  domain := ⟨(10217187500000001 / 100000000000000000 : ℚ), (10218750000000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10217968750000001 / 100000000000000000 : ℚ)
  supportValue := (3408850626885379 / 10000000000000000 : ℚ)
  supportSlope := (805336357364439 / 200000000000000 : ℚ)
  oldCenter := (3408850626885379 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841]
}

def cell_3391 : Cell := { cellDefaults with
  domain := ⟨(10218750000000001 / 100000000000000000 : ℚ), (10220312500000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10219531250000001 / 100000000000000000 : ℚ)
  supportValue := (17047399434056107 / 50000000000000000 : ℚ)
  supportSlope := (8055693047730017 / 2000000000000000 : ℚ)
  oldCenter := (17047399434056107 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841]
}

def cell_3392 : Cell := { cellDefaults with
  domain := ⟨(10220312500000001 / 100000000000000000 : ℚ), (10221875000000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10221093750000001 / 100000000000000000 : ℚ)
  supportValue := (3410109188925541 / 10000000000000000 : ℚ)
  supportSlope := (4025543959926381 / 1000000000000000 : ℚ)
  oldCenter := (3410109188925541 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841, piece_842]
}

def cell_3393 : Cell := { cellDefaults with
  domain := ⟨(10221875000000001 / 100000000000000000 : ℚ), (10223437500000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10222656250000001 / 100000000000000000 : ℚ)
  supportValue := (1364295203402073 / 4000000000000000 : ℚ)
  supportSlope := (1006255346649887 / 250000000000000 : ℚ)
  oldCenter := (1364295203402073 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (34100000000000003 / 100000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_842]
}

def cell_3394 : Cell := { cellDefaults with
  domain := ⟨(10223437500000001 / 100000000000000000 : ℚ), (10225000000000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10224218750000001 / 100000000000000000 : ℚ)
  supportValue := (1066052190016507 / 3125000000000000 : ℚ)
  supportSlope := (251635879698231 / 62500000000000 : ℚ)
  oldCenter := (1066052190016507 / 3125000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (34100000000000003 / 100000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_842]
}

def cell_3395 : Cell := { cellDefaults with
  domain := ⟨(10225000000000001 / 100000000000000000 : ℚ), (10226562500000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10225781250000001 / 100000000000000000 : ℚ)
  supportValue := (852999046961941 / 2500000000000000 : ℚ)
  supportSlope := (4027328553302567 / 1000000000000000 : ℚ)
  oldCenter := (852999046961941 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (34100000000000003 / 100000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_842]
}

def cell_3396 : Cell := { cellDefaults with
  domain := ⟨(10226562500000001 / 100000000000000000 : ℚ), (10228125000000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10227343750000001 / 100000000000000000 : ℚ)
  supportValue := (1706312774084963 / 5000000000000000 : ℚ)
  supportSlope := (4028484824800671 / 1000000000000000 : ℚ)
  oldCenter := (1706312774084963 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (34100000000000003 / 100000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_842]
}

def cell_3397 : Cell := { cellDefaults with
  domain := ⟨(10228125000000001 / 100000000000000000 : ℚ), (10229687500000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10228906250000001 / 100000000000000000 : ℚ)
  supportValue := (6826510178599663 / 20000000000000000 : ℚ)
  supportSlope := (32237143148933 / 8000000000000 : ℚ)
  oldCenter := (6826510178599663 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (34100000000000003 / 100000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_842]
}

def cell_3398 : Cell := { cellDefaults with
  domain := ⟨(10229687500000001 / 100000000000000000 : ℚ), (10231250000000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10230468750000001 / 100000000000000000 : ℚ)
  supportValue := (17069424057593077 / 50000000000000000 : ℚ)
  supportSlope := (2015401381829207 / 500000000000000 : ℚ)
  oldCenter := (17069424057593077 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (34100000000000003 / 100000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_842]
}

def cell_3399 : Cell := { cellDefaults with
  domain := ⟨(10231250000000001 / 100000000000000000 : ℚ), (10232812500000001 / 100000000000000000 : ℚ)⟩
  r := (6900307361 / 6250000000 : ℚ)
  w := (95961792043503 / 100000000000000 : ℚ)
  center := (10232031250000001 / 100000000000000000 : ℚ)
  supportValue := (17072573575540137 / 50000000000000000 : ℚ)
  supportSlope := (2015982219432999 / 500000000000000 : ℚ)
  oldCenter := (17072573575540137 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_321
  oldLo := (34100000000000003 / 100000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_842]
}

theorem check_3350 : SourceCertificateFamily.RightNormalized.check cell_3350 = true := by
  decide +kernel

theorem check_3351 : SourceCertificateFamily.RightNormalized.check cell_3351 = true := by
  decide +kernel

theorem check_3352 : SourceCertificateFamily.RightNormalized.check cell_3352 = true := by
  decide +kernel

theorem check_3353 : SourceCertificateFamily.RightNormalized.check cell_3353 = true := by
  decide +kernel

theorem check_3354 : SourceCertificateFamily.RightNormalized.check cell_3354 = true := by
  decide +kernel

theorem check_3355 : SourceCertificateFamily.RightNormalized.check cell_3355 = true := by
  decide +kernel

theorem check_3356 : SourceCertificateFamily.RightNormalized.check cell_3356 = true := by
  decide +kernel

theorem check_3357 : SourceCertificateFamily.RightNormalized.check cell_3357 = true := by
  decide +kernel

theorem check_3358 : SourceCertificateFamily.RightNormalized.check cell_3358 = true := by
  decide +kernel

theorem check_3359 : SourceCertificateFamily.RightNormalized.check cell_3359 = true := by
  decide +kernel

theorem check_3360 : SourceCertificateFamily.RightNormalized.check cell_3360 = true := by
  decide +kernel

theorem check_3361 : SourceCertificateFamily.RightNormalized.check cell_3361 = true := by
  decide +kernel

theorem check_3362 : SourceCertificateFamily.RightNormalized.check cell_3362 = true := by
  decide +kernel

theorem check_3363 : SourceCertificateFamily.RightNormalized.check cell_3363 = true := by
  decide +kernel

theorem check_3364 : SourceCertificateFamily.RightNormalized.check cell_3364 = true := by
  decide +kernel

theorem check_3365 : SourceCertificateFamily.RightNormalized.check cell_3365 = true := by
  decide +kernel

theorem check_3366 : SourceCertificateFamily.RightNormalized.check cell_3366 = true := by
  decide +kernel

theorem check_3367 : SourceCertificateFamily.RightNormalized.check cell_3367 = true := by
  decide +kernel

theorem check_3368 : SourceCertificateFamily.RightNormalized.check cell_3368 = true := by
  decide +kernel

theorem check_3369 : SourceCertificateFamily.RightNormalized.check cell_3369 = true := by
  decide +kernel

theorem check_3370 : SourceCertificateFamily.RightNormalized.check cell_3370 = true := by
  decide +kernel

theorem check_3371 : SourceCertificateFamily.RightNormalized.check cell_3371 = true := by
  decide +kernel

theorem check_3372 : SourceCertificateFamily.RightNormalized.check cell_3372 = true := by
  decide +kernel

theorem check_3373 : SourceCertificateFamily.RightNormalized.check cell_3373 = true := by
  decide +kernel

theorem check_3374 : SourceCertificateFamily.RightNormalized.check cell_3374 = true := by
  decide +kernel

theorem check_3375 : SourceCertificateFamily.RightNormalized.check cell_3375 = true := by
  decide +kernel

theorem check_3376 : SourceCertificateFamily.RightNormalized.check cell_3376 = true := by
  decide +kernel

theorem check_3377 : SourceCertificateFamily.RightNormalized.check cell_3377 = true := by
  decide +kernel

theorem check_3378 : SourceCertificateFamily.RightNormalized.check cell_3378 = true := by
  decide +kernel

theorem check_3379 : SourceCertificateFamily.RightNormalized.check cell_3379 = true := by
  decide +kernel

theorem check_3380 : SourceCertificateFamily.RightNormalized.check cell_3380 = true := by
  decide +kernel

theorem check_3381 : SourceCertificateFamily.RightNormalized.check cell_3381 = true := by
  decide +kernel

theorem check_3382 : SourceCertificateFamily.RightNormalized.check cell_3382 = true := by
  decide +kernel

theorem check_3383 : SourceCertificateFamily.RightNormalized.check cell_3383 = true := by
  decide +kernel

theorem check_3384 : SourceCertificateFamily.RightNormalized.check cell_3384 = true := by
  decide +kernel

theorem check_3385 : SourceCertificateFamily.RightNormalized.check cell_3385 = true := by
  decide +kernel

theorem check_3386 : SourceCertificateFamily.RightNormalized.check cell_3386 = true := by
  decide +kernel

theorem check_3387 : SourceCertificateFamily.RightNormalized.check cell_3387 = true := by
  decide +kernel

theorem check_3388 : SourceCertificateFamily.RightNormalized.check cell_3388 = true := by
  decide +kernel

theorem check_3389 : SourceCertificateFamily.RightNormalized.check cell_3389 = true := by
  decide +kernel

theorem check_3390 : SourceCertificateFamily.RightNormalized.check cell_3390 = true := by
  decide +kernel

theorem check_3391 : SourceCertificateFamily.RightNormalized.check cell_3391 = true := by
  decide +kernel

theorem check_3392 : SourceCertificateFamily.RightNormalized.check cell_3392 = true := by
  decide +kernel

theorem check_3393 : SourceCertificateFamily.RightNormalized.check cell_3393 = true := by
  decide +kernel

theorem check_3394 : SourceCertificateFamily.RightNormalized.check cell_3394 = true := by
  decide +kernel

theorem check_3395 : SourceCertificateFamily.RightNormalized.check cell_3395 = true := by
  decide +kernel

theorem check_3396 : SourceCertificateFamily.RightNormalized.check cell_3396 = true := by
  decide +kernel

theorem check_3397 : SourceCertificateFamily.RightNormalized.check cell_3397 = true := by
  decide +kernel

theorem check_3398 : SourceCertificateFamily.RightNormalized.check cell_3398 = true := by
  decide +kernel

theorem check_3399 : SourceCertificateFamily.RightNormalized.check cell_3399 = true := by
  decide +kernel

def cells : List Cell := [cell_3350, cell_3351, cell_3352, cell_3353, cell_3354, cell_3355, cell_3356, cell_3357, cell_3358, cell_3359, cell_3360, cell_3361, cell_3362, cell_3363, cell_3364, cell_3365, cell_3366, cell_3367, cell_3368, cell_3369, cell_3370, cell_3371, cell_3372, cell_3373, cell_3374, cell_3375, cell_3376, cell_3377, cell_3378, cell_3379, cell_3380, cell_3381, cell_3382, cell_3383, cell_3384, cell_3385, cell_3386, cell_3387, cell_3388, cell_3389, cell_3390, cell_3391, cell_3392, cell_3393, cell_3394, cell_3395, cell_3396, cell_3397, cell_3398, cell_3399]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_3350, SourceCertificateFamily.of_right_checked check_3351, SourceCertificateFamily.of_right_checked check_3352, SourceCertificateFamily.of_right_checked check_3353, SourceCertificateFamily.of_right_checked check_3354, SourceCertificateFamily.of_right_checked check_3355, SourceCertificateFamily.of_right_checked check_3356, SourceCertificateFamily.of_right_checked check_3357, SourceCertificateFamily.of_right_checked check_3358, SourceCertificateFamily.of_right_checked check_3359, SourceCertificateFamily.of_right_checked check_3360, SourceCertificateFamily.of_right_checked check_3361, SourceCertificateFamily.of_right_checked check_3362, SourceCertificateFamily.of_right_checked check_3363, SourceCertificateFamily.of_right_checked check_3364, SourceCertificateFamily.of_right_checked check_3365, SourceCertificateFamily.of_right_checked check_3366, SourceCertificateFamily.of_right_checked check_3367, SourceCertificateFamily.of_right_checked check_3368, SourceCertificateFamily.of_right_checked check_3369, SourceCertificateFamily.of_right_checked check_3370, SourceCertificateFamily.of_right_checked check_3371, SourceCertificateFamily.of_right_checked check_3372, SourceCertificateFamily.of_right_checked check_3373, SourceCertificateFamily.of_right_checked check_3374, SourceCertificateFamily.of_right_checked check_3375, SourceCertificateFamily.of_right_checked check_3376, SourceCertificateFamily.of_right_checked check_3377, SourceCertificateFamily.of_right_checked check_3378, SourceCertificateFamily.of_right_checked check_3379, SourceCertificateFamily.of_right_checked check_3380, SourceCertificateFamily.of_right_checked check_3381, SourceCertificateFamily.of_right_checked check_3382, SourceCertificateFamily.of_right_checked check_3383, SourceCertificateFamily.of_right_checked check_3384, SourceCertificateFamily.of_right_checked check_3385, SourceCertificateFamily.of_right_checked check_3386, SourceCertificateFamily.of_right_checked check_3387, SourceCertificateFamily.of_right_checked check_3388, SourceCertificateFamily.of_right_checked check_3389, SourceCertificateFamily.of_right_checked check_3390, SourceCertificateFamily.of_right_checked check_3391, SourceCertificateFamily.of_right_checked check_3392, SourceCertificateFamily.of_right_checked check_3393, SourceCertificateFamily.of_right_checked check_3394, SourceCertificateFamily.of_right_checked check_3395, SourceCertificateFamily.of_right_checked check_3396, SourceCertificateFamily.of_right_checked check_3397, SourceCertificateFamily.of_right_checked check_3398, SourceCertificateFamily.of_right_checked check_3399, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0067

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0067
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0067
open AnalyticBounds.ExpressionCertificate

theorem linked_3350 : Linked cell_3350 pieces := by
  apply Linked.of_piece piece_319 piece_319_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3350, List.cons_subset, List.nil_subset, and_true]
  exact piece_835_mem

theorem linked_3351 : Linked cell_3351 pieces := by
  apply Linked.of_piece piece_319 piece_319_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3351, List.cons_subset, List.nil_subset, and_true]
  exact piece_835_mem

theorem linked_3352 : Linked cell_3352 pieces := by
  apply Linked.of_piece piece_319 piece_319_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3352, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_835_mem, piece_836_mem⟩

theorem linked_3353 : Linked cell_3353 pieces := by
  apply Linked.of_piece piece_319 piece_319_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3353, List.cons_subset, List.nil_subset, and_true]
  exact piece_836_mem

theorem linked_3354 : Linked cell_3354 pieces := by
  apply Linked.of_piece piece_319 piece_319_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3354, List.cons_subset, List.nil_subset, and_true]
  exact piece_836_mem

theorem linked_3355 : Linked cell_3355 pieces := by
  apply Linked.of_piece piece_319 piece_319_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3355, List.cons_subset, List.nil_subset, and_true]
  exact piece_836_mem

theorem linked_3356 : Linked cell_3356 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3356, List.cons_subset, List.nil_subset, and_true]
  exact piece_836_mem

theorem linked_3357 : Linked cell_3357 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3357, List.cons_subset, List.nil_subset, and_true]
  exact piece_836_mem

theorem linked_3358 : Linked cell_3358 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3358, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_836_mem, piece_837_mem⟩

theorem linked_3359 : Linked cell_3359 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3359, List.cons_subset, List.nil_subset, and_true]
  exact piece_837_mem

theorem linked_3360 : Linked cell_3360 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3360, List.cons_subset, List.nil_subset, and_true]
  exact piece_837_mem

theorem linked_3361 : Linked cell_3361 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3361, List.cons_subset, List.nil_subset, and_true]
  exact piece_837_mem

theorem linked_3362 : Linked cell_3362 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3362, List.cons_subset, List.nil_subset, and_true]
  exact piece_837_mem

theorem linked_3363 : Linked cell_3363 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3363, List.cons_subset, List.nil_subset, and_true]
  exact piece_837_mem

theorem linked_3364 : Linked cell_3364 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3364, List.cons_subset, List.nil_subset, and_true]
  exact piece_837_mem

theorem linked_3365 : Linked cell_3365 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3365, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_837_mem, piece_838_mem⟩

theorem linked_3366 : Linked cell_3366 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3366, List.cons_subset, List.nil_subset, and_true]
  exact piece_838_mem

theorem linked_3367 : Linked cell_3367 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3367, List.cons_subset, List.nil_subset, and_true]
  exact piece_838_mem

theorem linked_3368 : Linked cell_3368 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3368, List.cons_subset, List.nil_subset, and_true]
  exact piece_838_mem

theorem linked_3369 : Linked cell_3369 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3369, List.cons_subset, List.nil_subset, and_true]
  exact piece_838_mem

theorem linked_3370 : Linked cell_3370 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3370, List.cons_subset, List.nil_subset, and_true]
  exact piece_838_mem

theorem linked_3371 : Linked cell_3371 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3371, List.cons_subset, List.nil_subset, and_true]
  exact piece_838_mem

theorem linked_3372 : Linked cell_3372 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3372, List.cons_subset, List.nil_subset, and_true]
  exact piece_838_mem

theorem linked_3373 : Linked cell_3373 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3373, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_838_mem, piece_839_mem⟩

theorem linked_3374 : Linked cell_3374 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3374, List.cons_subset, List.nil_subset, and_true]
  exact piece_839_mem

theorem linked_3375 : Linked cell_3375 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3375, List.cons_subset, List.nil_subset, and_true]
  exact piece_839_mem

theorem linked_3376 : Linked cell_3376 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3376, List.cons_subset, List.nil_subset, and_true]
  exact piece_839_mem

theorem linked_3377 : Linked cell_3377 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3377, List.cons_subset, List.nil_subset, and_true]
  exact piece_839_mem

theorem linked_3378 : Linked cell_3378 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3378, List.cons_subset, List.nil_subset, and_true]
  exact piece_839_mem

theorem linked_3379 : Linked cell_3379 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3379, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_839_mem, piece_840_mem⟩

theorem linked_3380 : Linked cell_3380 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3380, List.cons_subset, List.nil_subset, and_true]
  exact piece_840_mem

theorem linked_3381 : Linked cell_3381 pieces := by
  apply Linked.of_piece piece_320 piece_320_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3381, List.cons_subset, List.nil_subset, and_true]
  exact piece_840_mem

theorem linked_3382 : Linked cell_3382 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3382, List.cons_subset, List.nil_subset, and_true]
  exact piece_840_mem

theorem linked_3383 : Linked cell_3383 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3383, List.cons_subset, List.nil_subset, and_true]
  exact piece_840_mem

theorem linked_3384 : Linked cell_3384 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3384, List.cons_subset, List.nil_subset, and_true]
  exact piece_840_mem

theorem linked_3385 : Linked cell_3385 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3385, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_840_mem, piece_841_mem⟩

theorem linked_3386 : Linked cell_3386 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3386, List.cons_subset, List.nil_subset, and_true]
  exact piece_841_mem

theorem linked_3387 : Linked cell_3387 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3387, List.cons_subset, List.nil_subset, and_true]
  exact piece_841_mem

theorem linked_3388 : Linked cell_3388 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3388, List.cons_subset, List.nil_subset, and_true]
  exact piece_841_mem

theorem linked_3389 : Linked cell_3389 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3389, List.cons_subset, List.nil_subset, and_true]
  exact piece_841_mem

theorem linked_3390 : Linked cell_3390 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3390, List.cons_subset, List.nil_subset, and_true]
  exact piece_841_mem

theorem linked_3391 : Linked cell_3391 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3391, List.cons_subset, List.nil_subset, and_true]
  exact piece_841_mem

theorem linked_3392 : Linked cell_3392 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3392, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_841_mem, piece_842_mem⟩

theorem linked_3393 : Linked cell_3393 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3393, List.cons_subset, List.nil_subset, and_true]
  exact piece_842_mem

theorem linked_3394 : Linked cell_3394 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3394, List.cons_subset, List.nil_subset, and_true]
  exact piece_842_mem

theorem linked_3395 : Linked cell_3395 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3395, List.cons_subset, List.nil_subset, and_true]
  exact piece_842_mem

theorem linked_3396 : Linked cell_3396 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3396, List.cons_subset, List.nil_subset, and_true]
  exact piece_842_mem

theorem linked_3397 : Linked cell_3397 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3397, List.cons_subset, List.nil_subset, and_true]
  exact piece_842_mem

theorem linked_3398 : Linked cell_3398 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3398, List.cons_subset, List.nil_subset, and_true]
  exact piece_842_mem

theorem linked_3399 : Linked cell_3399 pieces := by
  apply Linked.of_piece piece_321 piece_321_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_3399, List.cons_subset, List.nil_subset, and_true]
  exact piece_842_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0067.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0067.cells,List.forall_mem_cons]
  exact ⟨linked_3350, linked_3351, linked_3352, linked_3353, linked_3354, linked_3355, linked_3356, linked_3357, linked_3358, linked_3359, linked_3360, linked_3361, linked_3362, linked_3363, linked_3364, linked_3365, linked_3366, linked_3367, linked_3368, linked_3369, linked_3370, linked_3371, linked_3372, linked_3373, linked_3374, linked_3375, linked_3376, linked_3377, linked_3378, linked_3379, linked_3380, linked_3381, linked_3382, linked_3383, linked_3384, linked_3385, linked_3386, linked_3387, linked_3388, linked_3389, linked_3390, linked_3391, linked_3392, linked_3393, linked_3394, linked_3395, linked_3396, linked_3397, linked_3398, linked_3399, by simp⟩

theorem covered : covers (10137500000000001 / 100000000000000000 : ℚ) (10232812500000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0067.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0067
