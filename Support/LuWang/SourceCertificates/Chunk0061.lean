import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0061
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(2993 / 32000 : ℚ), (1497 / 16000 : ℚ)⟩
  branch := .small
  r := (112617425359 / 100000000000 : ℚ)
  w := (94052761528427 / 100000000000000 : ℚ)
  center := (5987 / 64000 : ℚ)
  supportValue := (16465462383588403 / 5000000000000000 : ℚ)
  supportSlope := (4565513051062453 / 1000000000000000 : ℚ)
  oldCenter := (98578723290543768761 / 320000000000000000000 : ℚ)
  newCoefficients := coefficients_304
  oldLo := (6160000000000001 / 20000000000000000 : ℚ)
  oldHi := (621 / 2000 : ℚ)
  oldPieces := [piece_770]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_3050 : Cell := { cellDefaults with
  r := (5637842790497 / 5000000000000 : ℚ)
  w := (46950208276793 / 50000000000000 : ℚ)
  newCoefficients := coefficients_303
  oldHi := (617 / 2000 : ℚ)
  oldPieces := [piece_770]
}

def cell_3051 : Cell := { cellDefaults with
  domain := ⟨(1497 / 16000 : ℚ), (599 / 6400 : ℚ)⟩
  r := (5637842790497 / 5000000000000 : ℚ)
  w := (46950208276793 / 50000000000000 : ℚ)
  center := (5989 / 64000 : ℚ)
  supportValue := (263458843607301 / 80000000000000 : ℚ)
  supportSlope := (4590886101880187 / 1000000000000000 : ℚ)
  oldCenter := (1577855014364125689 / 5120000000000000000 : ℚ)
  newCoefficients := coefficients_303
  oldHi := (617 / 2000 : ℚ)
  oldPieces := [piece_770]
}

def cell_3052 : Cell := { cellDefaults with
  domain := ⟨(599 / 6400 : ℚ), (749 / 8000 : ℚ)⟩
  r := (5637842790497 / 5000000000000 : ℚ)
  w := (46950208276793 / 50000000000000 : ℚ)
  center := (5991 / 64000 : ℚ)
  supportValue := (1646689703827637 / 500000000000000 : ℚ)
  supportSlope := (923268273550093 / 200000000000000 : ℚ)
  oldCenter := (9865318015631373267 / 32000000000000000000 : ℚ)
  newCoefficients := coefficients_303
  oldHi := (617 / 2000 : ℚ)
  oldPieces := [piece_770]
}

def cell_3053 : Cell := { cellDefaults with
  domain := ⟨(749 / 8000 : ℚ), (2997 / 32000 : ℚ)⟩
  r := (5637842790497 / 5000000000000 : ℚ)
  w := (46950208276793 / 50000000000000 : ℚ)
  center := (5993 / 64000 : ℚ)
  supportValue := (8233810167465181 / 2500000000000000 : ℚ)
  supportSlope := (4641879306774399 / 1000000000000000 : ℚ)
  oldCenter := (49345224333618829733 / 160000000000000000000 : ℚ)
  newCoefficients := coefficients_303
  oldHi := (617 / 2000 : ℚ)
  oldPieces := [piece_770]
}

def cell_3054 : Cell := { cellDefaults with
  domain := ⟨(2997 / 32000 : ℚ), (1499 / 16000 : ℚ)⟩
  r := (5637842790497 / 5000000000000 : ℚ)
  w := (46950208276793 / 50000000000000 : ℚ)
  center := (1199 / 12800 : ℚ)
  supportValue := (32936690915138827 / 10000000000000000 : ℚ)
  supportSlope := (9240368841574309 / 2000000000000000 : ℚ)
  oldCenter := (39491092407251453573 / 128000000000000000000 : ℚ)
  newCoefficients := coefficients_303
  oldHi := (15432960893854747 / 50000000000000000 : ℚ)
  oldPieces := [piece_770, piece_771]
}

def cell_3055 : Cell := { cellDefaults with
  domain := ⟨(1499 / 16000 : ℚ), (2999 / 32000 : ℚ)⟩
  r := (5637842790497 / 5000000000000 : ℚ)
  w := (46950208276793 / 50000000000000 : ℚ)
  center := (5997 / 64000 : ℚ)
  supportValue := (6587626518876907 / 2000000000000000 : ℚ)
  supportSlope := (4626013183354871 / 1000000000000000 : ℚ)
  oldCenter := (39505996233704811279 / 128000000000000000000 : ℚ)
  newCoefficients := coefficients_303
  oldLo := (617 / 2000 : ℚ)
  oldHi := (309 / 1000 : ℚ)
  oldPieces := [piece_771, piece_772]
}

def cell_3056 : Cell := { cellDefaults with
  domain := ⟨(2999 / 32000 : ℚ), (3 / 32 : ℚ)⟩
  r := (5637842790497 / 5000000000000 : ℚ)
  w := (46950208276793 / 50000000000000 : ℚ)
  center := (5999 / 64000 : ℚ)
  supportValue := (128670242897111 / 39062500000000 : ℚ)
  supportSlope := (4651349676521477 / 1000000000000000 : ℚ)
  oldCenter := (771892787139768889 / 2500000000000000000 : ℚ)
  newCoefficients := coefficients_303
  oldLo := (15432960893854747 / 50000000000000000 : ℚ)
  oldHi := (309 / 1000 : ℚ)
  oldPieces := [piece_772]
}

def cell_3057 : Cell := { cellDefaults with
  domain := ⟨(3 / 32 : ℚ), (3001 / 32000 : ℚ)⟩
  r := (5637842790497 / 5000000000000 : ℚ)
  w := (46950208276793 / 50000000000000 : ℚ)
  center := (6001 / 64000 : ℚ)
  supportValue := (823525992267451 / 250000000000000 : ℚ)
  supportSlope := (2338365753104199 / 500000000000000 : ℚ)
  oldCenter := (4941979479596973451 / 16000000000000000000 : ℚ)
  newCoefficients := coefficients_303
  oldLo := (15432960893854747 / 50000000000000000 : ℚ)
  oldHi := (309 / 1000 : ℚ)
  oldPieces := [piece_772]
}

def cell_3058 : Cell := { cellDefaults with
  domain := ⟨(3001 / 32000 : ℚ), (1501 / 16000 : ℚ)⟩
  r := (5637842790497 / 5000000000000 : ℚ)
  w := (46950208276793 / 50000000000000 : ℚ)
  center := (6003 / 64000 : ℚ)
  supportValue := (3294250514441263 / 1000000000000000 : ℚ)
  supportSlope := (2337193595053577 / 500000000000000 : ℚ)
  oldCenter := (19775385838190901789 / 64000000000000000000 : ℚ)
  newCoefficients := coefficients_303
  oldLo := (15432960893854747 / 50000000000000000 : ℚ)
  oldHi := (619 / 2000 : ℚ)
  oldPieces := [piece_772, piece_773]
}

def cell_3059 : Cell := { cellDefaults with
  domain := ⟨(1501 / 16000 : ℚ), (3003 / 32000 : ℚ)⟩
  r := (5637842790497 / 5000000000000 : ℚ)
  w := (46950208276793 / 50000000000000 : ℚ)
  center := (1201 / 12800 : ℚ)
  supportValue := (3294395946554227 / 1000000000000000 : ℚ)
  supportSlope := (1165246636681161 / 250000000000000 : ℚ)
  oldCenter := (3956569531811626627 / 12800000000000000000 : ℚ)
  newCoefficients := coefficients_303
  oldLo := (309 / 1000 : ℚ)
  oldHi := (619 / 2000 : ℚ)
  oldPieces := [piece_773]
}

def cell_3060 : Cell := { cellDefaults with
  domain := ⟨(3003 / 32000 : ℚ), (751 / 8000 : ℚ)⟩
  r := (5637842790497 / 5000000000000 : ℚ)
  w := (46950208276793 / 50000000000000 : ℚ)
  center := (6007 / 64000 : ℚ)
  supportValue := (3294541995379079 / 1000000000000000 : ℚ)
  supportSlope := (234308066774247 / 50000000000000 : ℚ)
  oldCenter := (19790313766242127553 / 64000000000000000000 : ℚ)
  newCoefficients := coefficients_303
  oldLo := (309 / 1000 : ℚ)
  oldHi := (619 / 2000 : ℚ)
  oldPieces := [piece_773]
}

def cell_3061 : Cell := { cellDefaults with
  domain := ⟨(751 / 8000 : ℚ), (601 / 6400 : ℚ)⟩
  r := (5637842790497 / 5000000000000 : ℚ)
  w := (46950208276793 / 50000000000000 : ℚ)
  center := (6009 / 64000 : ℚ)
  supportValue := (2059180520115981 / 625000000000000 : ℚ)
  supportSlope := (4711417499123627 / 1000000000000000 : ℚ)
  oldCenter := (12373615745376929829 / 40000000000000000000 : ℚ)
  newCoefficients := coefficients_303
  oldLo := (309 / 1000 : ℚ)
  oldHi := (619 / 2000 : ℚ)
  oldPieces := [piece_773]
}

def cell_3062 : Cell := { cellDefaults with
  domain := ⟨(601 / 6400 : ℚ), (1503 / 16000 : ℚ)⟩
  r := (5637842790497 / 5000000000000 : ℚ)
  w := (46950208276793 / 50000000000000 : ℚ)
  center := (6011 / 64000 : ℚ)
  supportValue := (32948364595236987 / 10000000000000000 : ℚ)
  supportSlope := (73872486503479 / 15625000000000 : ℚ)
  oldCenter := (198052619581969528857 / 640000000000000000000 : ℚ)
  newCoefficients := coefficients_303
  oldLo := (309 / 1000 : ℚ)
  oldHi := (31 / 100 : ℚ)
  oldPieces := [piece_773, piece_774]
}

def cell_3063 : Cell := { cellDefaults with
  domain := ⟨(1503 / 16000 : ℚ), (3007 / 32000 : ℚ)⟩
  r := (5637842790497 / 5000000000000 : ℚ)
  w := (46950208276793 / 50000000000000 : ℚ)
  center := (6013 / 64000 : ℚ)
  supportValue := (8237458913593011 / 2500000000000000 : ℚ)
  supportSlope := (939154484848359 / 200000000000000 : ℚ)
  oldCenter := (49531840447434775143 / 160000000000000000000 : ℚ)
  newCoefficients := coefficients_303
  oldLo := (619 / 2000 : ℚ)
  oldHi := (31 / 100 : ℚ)
  oldPieces := [piece_774]
}

def cell_3064 : Cell := { cellDefaults with
  domain := ⟨(3007 / 32000 : ℚ), (47 / 500 : ℚ)⟩
  r := (5637842790497 / 5000000000000 : ℚ)
  w := (46950208276793 / 50000000000000 : ℚ)
  center := (1203 / 12800 : ℚ)
  supportValue := (6590261399527333 / 2000000000000000 : ℚ)
  supportSlope := (188833898860139 / 40000000000000 : ℚ)
  oldCenter := (7928084463631381599 / 25600000000000000000 : ℚ)
  newCoefficients := coefficients_303
  oldLo := (619 / 2000 : ℚ)
  oldHi := (31 / 100 : ℚ)
  oldPieces := [piece_774]
}

def cell_3065 : Cell := { cellDefaults with
  domain := ⟨(47 / 500 : ℚ), (1504500000000000001 / 16000000000000000000 : ℚ)⟩
  center := (3008500000000000001 / 32000000000000000000 : ℚ)
  supportValue := (8238733545750273 / 2500000000000000 : ℚ)
  supportSlope := (9502119701608061 / 2000000000000000 : ℚ)
  oldCenter := (24786229872389696328738733545750273 / 80000000000000000000000000000000000 : ℚ)
  oldLo := (619 / 2000 : ℚ)
  oldHi := (31 / 100 : ℚ)
  oldPieces := [piece_774]
}

def cell_3066 : Cell := { cellDefaults with
  domain := ⟨(1504500000000000001 / 16000000000000000000 : ℚ), (752500000000000001 / 8000000000000000000 : ℚ)⟩
  center := (3009500000000000003 / 32000000000000000000 : ℚ)
  supportValue := (1647821141189387 / 500000000000000 : ℚ)
  supportSlope := (4774306858138279 / 1000000000000000 : ℚ)
  oldCenter := (4959117724409460181443463423568161 / 16000000000000000000000000000000000 : ℚ)
  oldLo := (619 / 2000 : ℚ)
  oldPieces := [piece_774, piece_775]
}

def cell_3067 : Cell := { cellDefaults with
  domain := ⟨(752500000000000001 / 8000000000000000000 : ℚ), (1505500000000000003 / 16000000000000000000 : ℚ)⟩
  center := (602100000000000001 / 6400000000000000000 : ℚ)
  supportValue := (8239477104454559 / 2500000000000000 : ℚ)
  supportSlope := (4735368062227953 / 1000000000000000 : ℚ)
  oldCenter := (4960989164592089982139477104454559 / 16000000000000000000000000000000000 : ℚ)
  oldLo := (31 / 100 : ℚ)
  oldPieces := [piece_775]
}

def cell_3068 : Cell := { cellDefaults with
  domain := ⟨(1505500000000000003 / 16000000000000000000 : ℚ), (376500000000000001 / 4000000000000000000 : ℚ)⟩
  center := (3011500000000000007 / 32000000000000000000 : ℚ)
  supportValue := (8239848028262443 / 2500000000000000 : ℚ)
  supportSlope := (952060861567359 / 200000000000000 : ℚ)
  oldCenter := (24814302337112347152178936197837101 / 80000000000000000000000000000000000 : ℚ)
  oldLo := (31 / 100 : ℚ)
  oldPieces := [piece_775]
}

def cell_3069 : Cell := { cellDefaults with
  domain := ⟨(376500000000000001 / 4000000000000000000 : ℚ), (301300000000000001 / 3200000000000000000 : ℚ)⟩
  center := (3012500000000000009 / 32000000000000000000 : ℚ)
  supportValue := (6592176722679521 / 2000000000000000 : ℚ)
  supportSlope := (4785320931716787 / 1000000000000000 : ℚ)
  oldCenter := (19858932377072057071829590504115689 / 64000000000000000000000000000000000 : ℚ)
  oldLo := (31 / 100 : ℚ)
  oldPieces := [piece_775]
}

def cell_3070 : Cell := { cellDefaults with
  domain := ⟨(301300000000000001 / 3200000000000000000 : ℚ), (753500000000000003 / 8000000000000000000 : ℚ)⟩
  center := (3013500000000000011 / 32000000000000000000 : ℚ)
  supportValue := (32962382944049033 / 10000000000000000 : ℚ)
  supportSlope := (4810418377189753 / 1000000000000000 : ℚ)
  oldCenter := (99332141001891761308086212384539363 / 320000000000000000000000000000000000 : ℚ)
  oldLo := (31 / 100 : ℚ)
  oldPieces := [piece_775]
}

def cell_3071 : Cell := { cellDefaults with
  domain := ⟨(753500000000000003 / 8000000000000000000 : ℚ), (1507500000000000007 / 16000000000000000000 : ℚ)⟩
  center := (3014500000000000013 / 32000000000000000000 : ℚ)
  supportValue := (32963884825505603 / 10000000000000000 : ℚ)
  supportSlope := (9571265531178577 / 2000000000000000 : ℚ)
  oldCenter := (99369630806486640672030502731572839 / 320000000000000000000000000000000000 : ℚ)
  oldLo := (31 / 100 : ℚ)
  oldHi := (311 / 1000 : ℚ)
  oldPieces := [piece_775, piece_776]
}

def cell_3072 : Cell := { cellDefaults with
  domain := ⟨(1507500000000000007 / 16000000000000000000 : ℚ), (188500000000000001 / 2000000000000000000 : ℚ)⟩
  center := (603100000000000003 / 6400000000000000000 : ℚ)
  supportValue := (824134481019697 / 250000000000000 : ℚ)
  supportSlope := (9589105163342973 / 2000000000000000 : ℚ)
  oldCenter := (497035505502979263172403443059091 / 1600000000000000000000000000000000 : ℚ)
  oldLo := (621 / 2000 : ℚ)
  oldHi := (311 / 1000 : ℚ)
  oldPieces := [piece_776]
}

def cell_3073 : Cell := { cellDefaults with
  domain := ⟨(188500000000000001 / 2000000000000000000 : ℚ), (1508500000000000009 / 16000000000000000000 : ℚ)⟩
  center := (3016500000000000017 / 32000000000000000000 : ℚ)
  supportValue := (1648344071310523 / 500000000000000 : ℚ)
  supportSlope := (4819457030748699 / 1000000000000000 : ℚ)
  oldCenter := (4972229891108192657521849212278891 / 16000000000000000000000000000000000 : ℚ)
  oldLo := (621 / 2000 : ℚ)
  oldHi := (311 / 1000 : ℚ)
  oldPieces := [piece_776]
}

def cell_3074 : Cell := { cellDefaults with
  domain := ⟨(1508500000000000009 / 16000000000000000000 : ℚ), (150900000000000001 / 1600000000000000000 : ℚ)⟩
  center := (3017500000000000019 / 32000000000000000000 : ℚ)
  supportValue := (6593678281360611 / 2000000000000000 : ℚ)
  supportSlope := (4844441794887179 / 1000000000000000 : ℚ)
  oldCenter := (19896424214005643817779887345851609 / 64000000000000000000000000000000000 : ℚ)
  oldLo := (621 / 2000 : ℚ)
  oldHi := (311 / 1000 : ℚ)
  oldPieces := [piece_776]
}

def cell_3075 : Cell := { cellDefaults with
  domain := ⟨(150900000000000001 / 1600000000000000000 : ℚ), (1509500000000000011 / 16000000000000000000 : ℚ)⟩
  center := (3018500000000000021 / 32000000000000000000 : ℚ)
  supportValue := (8242477301933263 / 2500000000000000 : ℚ)
  supportSlope := (4837208359731439 / 1000000000000000 : ℚ)
  oldCenter := (24879917735885554538592023340598523 / 80000000000000000000000000000000000 : ℚ)
  oldLo := (621 / 2000 : ℚ)
  oldHi := (623 / 2000 : ℚ)
  oldPieces := [piece_776, piece_777]
}

def cell_3076 : Cell := { cellDefaults with
  domain := ⟨(1509500000000000011 / 16000000000000000000 : ℚ), (377500000000000003 / 4000000000000000000 : ℚ)⟩
  center := (3019500000000000023 / 32000000000000000000 : ℚ)
  supportValue := (8242853617501219 / 2500000000000000 : ℚ)
  supportSlope := (9657364432314333 / 2000000000000000 : ℚ)
  oldCenter := (24889296498044930960085633202528037 / 80000000000000000000000000000000000 : ℚ)
  oldLo := (311 / 1000 : ℚ)
  oldHi := (623 / 2000 : ℚ)
  oldPieces := [piece_777]
}

def cell_3077 : Cell := { cellDefaults with
  domain := ⟨(377500000000000003 / 4000000000000000000 : ℚ), (1510500000000000013 / 16000000000000000000 : ℚ)⟩
  center := (120820000000000001 / 1280000000000000000 : ℚ)
  supportValue := (8243231825633609 / 2500000000000000 : ℚ)
  supportSlope := (4853468768260417 / 1000000000000000 : ℚ)
  oldCenter := (995947269173052647623231825633609 / 3200000000000000000000000000000000 : ℚ)
  oldLo := (311 / 1000 : ℚ)
  oldHi := (623 / 2000 : ℚ)
  oldPieces := [piece_777]
}

def cell_3078 : Cell := { cellDefaults with
  domain := ⟨(1510500000000000013 / 16000000000000000000 : ℚ), (755500000000000007 / 8000000000000000000 : ℚ)⟩
  center := (3021500000000000027 / 32000000000000000000 : ℚ)
  supportValue := (1648722394665391 / 500000000000000 : ℚ)
  supportSlope := (4878335100727317 / 1000000000000000 : ℚ)
  oldCenter := (4981614715481478951015504655965557 / 16000000000000000000000000000000000 : ℚ)
  oldLo := (311 / 1000 : ℚ)
  oldHi := (623 / 2000 : ℚ)
  oldPieces := [piece_777]
}

def cell_3079 : Cell := { cellDefaults with
  domain := ⟨(755500000000000007 / 8000000000000000000 : ℚ), (302300000000000003 / 3200000000000000000 : ℚ)⟩
  center := (3022500000000000029 / 32000000000000000000 : ℚ)
  supportValue := (16487988133662357 / 5000000000000000 : ℚ)
  supportSlope := (4888125016691437 / 1000000000000000 : ℚ)
  oldCenter := (49834944133994474510651655876208353 / 160000000000000000000000000000000000 : ℚ)
  oldLo := (311 / 1000 : ℚ)
  oldHi := (39 / 125 : ℚ)
  oldPieces := [piece_777, piece_778]
}

def cell_3080 : Cell := { cellDefaults with
  domain := ⟨(302300000000000003 / 3200000000000000000 : ℚ), (94500000000000001 / 1000000000000000000 : ℚ)⟩
  center := (3023500000000000031 / 32000000000000000000 : ℚ)
  supportValue := (1648874873879233 / 500000000000000 : ℚ)
  supportSlope := (486268935853217 / 100000000000000 : ℚ)
  oldCenter := (4985373181173861026615121090256223 / 16000000000000000000000000000000000 : ℚ)
  oldLo := (623 / 2000 : ℚ)
  oldHi := (39 / 125 : ℚ)
  oldPieces := [piece_778]
}

def cell_3081 : Cell := { cellDefaults with
  domain := ⟨(94500000000000001 / 1000000000000000000 : ℚ), (94531250000000001 / 1000000000000000000 : ℚ)⟩
  r := (11247806201821 / 10000000000000 : ℚ)
  w := (47100238808009 / 50000000000000 : ℚ)
  center := (94515625000000001 / 1000000000000000000 : ℚ)
  supportValue := (2061267714496999 / 625000000000000 : ℚ)
  supportSlope := (4891024909341013 / 1000000000000000 : ℚ)
  oldCenter := (194822006328005423170642714496999 / 625000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_305
  oldLo := (623 / 2000 : ℚ)
  oldHi := (39 / 125 : ℚ)
  oldPieces := [piece_778]
}

def cell_3082 : Cell := { cellDefaults with
  domain := ⟨(94531250000000001 / 1000000000000000000 : ℚ), (94562500000000001 / 1000000000000000000 : ℚ)⟩
  r := (11247806201821 / 10000000000000 : ℚ)
  w := (47100238808009 / 50000000000000 : ℚ)
  center := (94546875000000001 / 1000000000000000000 : ℚ)
  supportValue := (206136348334649 / 62500000000000 : ℚ)
  supportSlope := (4915728051230417 / 1000000000000000 : ℚ)
  oldCenter := (19489547558952517378011348334649 / 62500000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_305
  oldLo := (623 / 2000 : ℚ)
  oldHi := (39 / 125 : ℚ)
  oldPieces := [piece_778]
}

def cell_3083 : Cell := { cellDefaults with
  domain := ⟨(94562500000000001 / 1000000000000000000 : ℚ), (94593750000000001 / 1000000000000000000 : ℚ)⟩
  r := (11247806201821 / 10000000000000 : ℚ)
  w := (47100238808009 / 50000000000000 : ℚ)
  center := (94578125000000001 / 1000000000000000000 : ℚ)
  supportValue := (659667115345527 / 200000000000000 : ℚ)
  supportSlope := (308459434929631 / 62500000000000 : ℚ)
  oldCenter := (62390078893538671456542115345527 / 200000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_305
  oldLo := (623 / 2000 : ℚ)
  oldHi := (5 / 16 : ℚ)
  oldPieces := [piece_778, piece_779]
}

def cell_3084 : Cell := { cellDefaults with
  domain := ⟨(94593750000000001 / 1000000000000000000 : ℚ), (94625000000000001 / 1000000000000000000 : ℚ)⟩
  r := (11247806201821 / 10000000000000 : ℚ)
  w := (47100238808009 / 50000000000000 : ℚ)
  center := (94609375000000001 / 1000000000000000000 : ℚ)
  supportValue := (16492445880082003 / 5000000000000000 : ℚ)
  supportSlope := (30625464343359 / 6250000000000 : ℚ)
  oldCenter := (1560339996935883269070570880082003 / 5000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_305
  oldLo := (39 / 125 : ℚ)
  oldHi := (5 / 16 : ℚ)
  oldPieces := [piece_779]
}

def cell_3085 : Cell := { cellDefaults with
  domain := ⟨(94625000000000001 / 1000000000000000000 : ℚ), (94656250000000001 / 1000000000000000000 : ℚ)⟩
  r := (11247806201821 / 10000000000000 : ℚ)
  w := (47100238808009 / 50000000000000 : ℚ)
  center := (94640625000000001 / 1000000000000000000 : ℚ)
  supportValue := (1649321342851771 / 500000000000000 : ℚ)
  supportSlope := (4924568204842217 / 1000000000000000 : ℚ)
  oldCenter := (156092802713330891446196342851771 / 500000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_305
  oldLo := (39 / 125 : ℚ)
  oldHi := (5 / 16 : ℚ)
  oldPieces := [piece_779]
}

def cell_3086 : Cell := { cellDefaults with
  domain := ⟨(94656250000000001 / 1000000000000000000 : ℚ), (94687500000000001 / 1000000000000000000 : ℚ)⟩
  r := (11247806201821 / 10000000000000 : ℚ)
  w := (47100238808009 / 50000000000000 : ℚ)
  center := (94671875000000001 / 1000000000000000000 : ℚ)
  supportValue := (1649398481025131 / 500000000000000 : ℚ)
  supportSlope := (4949140629179283 / 1000000000000000 : ℚ)
  oldCenter := (156151646820801075540023481025131 / 500000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_305
  oldLo := (39 / 125 : ℚ)
  oldHi := (5 / 16 : ℚ)
  oldPieces := [piece_779]
}

def cell_3087 : Cell := { cellDefaults with
  domain := ⟨(94687500000000001 / 1000000000000000000 : ℚ), (94718750000000001 / 1000000000000000000 : ℚ)⟩
  r := (11247806201821 / 10000000000000 : ℚ)
  w := (47100238808009 / 50000000000000 : ℚ)
  center := (94703125000000001 / 1000000000000000000 : ℚ)
  supportValue := (32989520075168053 / 10000000000000000 : ℚ)
  supportSlope := (310861999734513 / 62500000000000 : ℚ)
  oldCenter := (3124210643368649552255145075168053 / 10000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_305
  oldLo := (39 / 125 : ℚ)
  oldHi := (5 / 16 : ℚ)
  oldPieces := [piece_779]
}

def cell_3088 : Cell := { cellDefaults with
  domain := ⟨(94718750000000001 / 1000000000000000000 : ℚ), (94750000000000001 / 1000000000000000000 : ℚ)⟩
  r := (11247806201821 / 10000000000000 : ℚ)
  w := (47100238808009 / 50000000000000 : ℚ)
  center := (94734375000000001 / 1000000000000000000 : ℚ)
  supportValue := (1649553577015517 / 500000000000000 : ℚ)
  supportSlope := (988910627529549 / 200000000000000 : ℚ)
  oldCenter := (156269427147579369946428577015517 / 500000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_305
  oldLo := (39 / 125 : ℚ)
  oldHi := (313 / 1000 : ℚ)
  oldPieces := [piece_779, piece_780]
}

def cell_3089 : Cell := { cellDefaults with
  domain := ⟨(94750000000000001 / 1000000000000000000 : ℚ), (94781250000000001 / 1000000000000000000 : ℚ)⟩
  r := (11247806201821 / 10000000000000 : ℚ)
  w := (47100238808009 / 50000000000000 : ℚ)
  center := (94765625000000001 / 1000000000000000000 : ℚ)
  supportValue := (824815427413689 / 250000000000000 : ℚ)
  supportSlope := (4957971804998351 / 1000000000000000 : ℚ)
  oldCenter := (78164149488500372465440427413689 / 250000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_305
  oldLo := (5 / 16 : ℚ)
  oldHi := (313 / 1000 : ℚ)
  oldPieces := [piece_780]
}

def cell_3090 : Cell := { cellDefaults with
  domain := ⟨(94781250000000001 / 1000000000000000000 : ℚ), (94812500000000001 / 1000000000000000000 : ℚ)⟩
  r := (11247806201821 / 10000000000000 : ℚ)
  w := (47100238808009 / 50000000000000 : ℚ)
  center := (94796875000000001 / 1000000000000000000 : ℚ)
  supportValue := (32994170277845547 / 10000000000000000 : ℚ)
  supportSlope := (4982411014651689 / 1000000000000000 : ℚ)
  oldCenter := (3127744235557639621259795277845547 / 10000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_305
  oldLo := (5 / 16 : ℚ)
  oldHi := (313 / 1000 : ℚ)
  oldPieces := [piece_780]
}

def cell_3091 : Cell := { cellDefaults with
  domain := ⟨(94812500000000001 / 1000000000000000000 : ℚ), (94843750000000001 / 1000000000000000000 : ℚ)⟩
  r := (11247806201821 / 10000000000000 : ℚ)
  w := (47100238808009 / 50000000000000 : ℚ)
  center := (94828125000000001 / 1000000000000000000 : ℚ)
  supportValue := (16497865554308637 / 5000000000000000 : ℚ)
  supportSlope := (2002771423019567 / 400000000000000 : ℚ)
  oldCenter := (1564461657017173734513490554308637 / 5000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_305
  oldLo := (5 / 16 : ℚ)
  oldHi := (313 / 1000 : ℚ)
  oldPieces := [piece_780]
}

def cell_3092 : Cell := { cellDefaults with
  domain := ⟨(94843750000000001 / 1000000000000000000 : ℚ), (94875000000000001 / 1000000000000000000 : ℚ)⟩
  r := (11247806201821 / 10000000000000 : ℚ)
  w := (47100238808009 / 50000000000000 : ℚ)
  center := (94859375000000001 / 1000000000000000000 : ℚ)
  supportValue := (32997297832258257 / 10000000000000000 : ℚ)
  supportSlope := (4993475144431159 / 1000000000000000 : ℚ)
  oldCenter := (3130103049056873130606672832258257 / 10000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_305
  oldLo := (5 / 16 : ℚ)
  oldHi := (627 / 2000 : ℚ)
  oldPieces := [piece_780, piece_781]
}

def cell_3093 : Cell := { cellDefaults with
  domain := ⟨(94875000000000001 / 1000000000000000000 : ℚ), (94906250000000001 / 1000000000000000000 : ℚ)⟩
  r := (11247806201821 / 10000000000000 : ℚ)
  w := (47100238808009 / 50000000000000 : ℚ)
  center := (94890625000000001 / 1000000000000000000 : ℚ)
  supportValue := (3299885378699081 / 1000000000000000 : ℚ)
  supportSlope := (24956060546657 / 5000000000000 : ℚ)
  oldCenter := (313128186013117486315510378699081 / 1000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_305
  oldLo := (313 / 1000 : ℚ)
  oldHi := (627 / 2000 : ℚ)
  oldPieces := [piece_781]
}

def cell_3094 : Cell := { cellDefaults with
  domain := ⟨(94906250000000001 / 1000000000000000000 : ℚ), (94937500000000001 / 1000000000000000000 : ℚ)⟩
  r := (11247806201821 / 10000000000000 : ℚ)
  w := (47100238808009 / 50000000000000 : ℚ)
  center := (94921875000000001 / 1000000000000000000 : ℚ)
  supportValue := (1650020867247731 / 500000000000000 : ℚ)
  supportSlope := (25077906590667 / 5000000000000 : ℚ)
  oldCenter := (156623074508280717665645867247731 / 500000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_305
  oldLo := (313 / 1000 : ℚ)
  oldHi := (627 / 2000 : ℚ)
  oldPieces := [piece_781]
}

def cell_3095 : Cell := { cellDefaults with
  domain := ⟨(94937500000000001 / 1000000000000000000 : ℚ), (94968750000000001 / 1000000000000000000 : ℚ)⟩
  r := (11247806201821 / 10000000000000 : ℚ)
  w := (47100238808009 / 50000000000000 : ℚ)
  center := (94953125000000001 / 1000000000000000000 : ℚ)
  supportValue := (1320079541218837 / 400000000000000 : ℚ)
  supportSlope := (504002856521879 / 100000000000000 : ℚ)
  oldCenter := (125345677687294883335704541218837 / 400000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_305
  oldLo := (313 / 1000 : ℚ)
  oldHi := (627 / 2000 : ℚ)
  oldPieces := [piece_781]
}

def cell_3096 : Cell := { cellDefaults with
  domain := ⟨(94968750000000001 / 1000000000000000000 : ℚ), (95000000000000001 / 1000000000000000000 : ℚ)⟩
  r := (11247806201821 / 10000000000000 : ℚ)
  w := (47100238808009 / 50000000000000 : ℚ)
  center := (94984375000000001 / 1000000000000000000 : ℚ)
  supportValue := (412544592099909 / 125000000000000 : ℚ)
  supportSlope := (25209623498057 / 5000000000000 : ℚ)
  oldCenter := (39185290240239794334419592099909 / 125000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_305
  oldLo := (313 / 1000 : ℚ)
  oldHi := (157 / 500 : ℚ)
  oldPieces := [piece_781, piece_782]
}

def cell_3097 : Cell := { cellDefaults with
  domain := ⟨(95000000000000001 / 1000000000000000000 : ℚ), (1520500000000000017 / 16000000000000000000 : ℚ)⟩
  r := (5616939185009 / 5000000000000 : ℚ)
  w := (18868752263689 / 20000000000000 : ℚ)
  center := (3040500000000000033 / 32000000000000000000 : ℚ)
  supportValue := (1650277320090363 / 500000000000000 : ℚ)
  supportSlope := (5026835721849911 / 1000000000000000 : ℚ)
  oldCenter := (5017668191734748755959151562981979 / 16000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_306
  oldLo := (627 / 2000 : ℚ)
  oldHi := (157 / 500 : ℚ)
  oldPieces := [piece_782]
}

def cell_3098 : Cell := { cellDefaults with
  domain := ⟨(1520500000000000017 / 16000000000000000000 : ℚ), (760500000000000009 / 8000000000000000000 : ℚ)⟩
  r := (5616939185009 / 5000000000000 : ℚ)
  w := (18868752263689 / 20000000000000 : ℚ)
  center := (608300000000000007 / 6400000000000000000 : ℚ)
  supportValue := (16503560530922543 / 5000000000000000 : ℚ)
  supportSlope := (2525505397215961 / 500000000000000 : ℚ)
  oldCenter := (10039115870960183022424923716457801 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_306
  oldLo := (627 / 2000 : ℚ)
  oldHi := (157 / 500 : ℚ)
  oldPieces := [piece_782]
}

def cell_3099 : Cell := { cellDefaults with
  domain := ⟨(760500000000000009 / 8000000000000000000 : ℚ), (1521500000000000019 / 16000000000000000000 : ℚ)⟩
  r := (5616939185009 / 5000000000000 : ℚ)
  w := (18868752263689 / 20000000000000 : ℚ)
  center := (3042500000000000037 / 32000000000000000000 : ℚ)
  supportValue := (16504351644319417 / 5000000000000000 : ℚ)
  supportSlope := (2537631539098579 / 500000000000000 : ℚ)
  oldCenter := (50214489877841826833161010839818429 / 160000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_306
  oldLo := (627 / 2000 : ℚ)
  oldHi := (157 / 500 : ℚ)
  oldPieces := [piece_782]
}

theorem check_3050 : cell_3050.check = true := by
  decide +kernel

theorem check_3051 : cell_3051.check = true := by
  decide +kernel

theorem check_3052 : cell_3052.check = true := by
  decide +kernel

theorem check_3053 : cell_3053.check = true := by
  decide +kernel

theorem check_3054 : cell_3054.check = true := by
  decide +kernel

theorem check_3055 : cell_3055.check = true := by
  decide +kernel

theorem check_3056 : cell_3056.check = true := by
  decide +kernel

theorem check_3057 : cell_3057.check = true := by
  decide +kernel

theorem check_3058 : cell_3058.check = true := by
  decide +kernel

theorem check_3059 : cell_3059.check = true := by
  decide +kernel

theorem check_3060 : cell_3060.check = true := by
  decide +kernel

theorem check_3061 : cell_3061.check = true := by
  decide +kernel

theorem check_3062 : cell_3062.check = true := by
  decide +kernel

theorem check_3063 : cell_3063.check = true := by
  decide +kernel

theorem check_3064 : cell_3064.check = true := by
  decide +kernel

theorem check_3065 : cell_3065.check = true := by
  decide +kernel

theorem check_3066 : cell_3066.check = true := by
  decide +kernel

theorem check_3067 : cell_3067.check = true := by
  decide +kernel

theorem check_3068 : cell_3068.check = true := by
  decide +kernel

theorem check_3069 : cell_3069.check = true := by
  decide +kernel

theorem check_3070 : cell_3070.check = true := by
  decide +kernel

theorem check_3071 : cell_3071.check = true := by
  decide +kernel

theorem check_3072 : cell_3072.check = true := by
  decide +kernel

theorem check_3073 : cell_3073.check = true := by
  decide +kernel

theorem check_3074 : cell_3074.check = true := by
  decide +kernel

theorem check_3075 : cell_3075.check = true := by
  decide +kernel

theorem check_3076 : cell_3076.check = true := by
  decide +kernel

theorem check_3077 : cell_3077.check = true := by
  decide +kernel

theorem check_3078 : cell_3078.check = true := by
  decide +kernel

theorem check_3079 : cell_3079.check = true := by
  decide +kernel

theorem check_3080 : cell_3080.check = true := by
  decide +kernel

theorem check_3081 : cell_3081.check = true := by
  decide +kernel

theorem check_3082 : cell_3082.check = true := by
  decide +kernel

theorem check_3083 : cell_3083.check = true := by
  decide +kernel

theorem check_3084 : cell_3084.check = true := by
  decide +kernel

theorem check_3085 : cell_3085.check = true := by
  decide +kernel

theorem check_3086 : cell_3086.check = true := by
  decide +kernel

theorem check_3087 : cell_3087.check = true := by
  decide +kernel

theorem check_3088 : cell_3088.check = true := by
  decide +kernel

theorem check_3089 : cell_3089.check = true := by
  decide +kernel

theorem check_3090 : cell_3090.check = true := by
  decide +kernel

theorem check_3091 : cell_3091.check = true := by
  decide +kernel

theorem check_3092 : cell_3092.check = true := by
  decide +kernel

theorem check_3093 : cell_3093.check = true := by
  decide +kernel

theorem check_3094 : cell_3094.check = true := by
  decide +kernel

theorem check_3095 : cell_3095.check = true := by
  decide +kernel

theorem check_3096 : cell_3096.check = true := by
  decide +kernel

theorem check_3097 : cell_3097.check = true := by
  decide +kernel

theorem check_3098 : cell_3098.check = true := by
  decide +kernel

theorem check_3099 : cell_3099.check = true := by
  decide +kernel

def cells : List Cell := [cell_3050, cell_3051, cell_3052, cell_3053, cell_3054, cell_3055, cell_3056, cell_3057, cell_3058, cell_3059, cell_3060, cell_3061, cell_3062, cell_3063, cell_3064, cell_3065, cell_3066, cell_3067, cell_3068, cell_3069, cell_3070, cell_3071, cell_3072, cell_3073, cell_3074, cell_3075, cell_3076, cell_3077, cell_3078, cell_3079, cell_3080, cell_3081, cell_3082, cell_3083, cell_3084, cell_3085, cell_3086, cell_3087, cell_3088, cell_3089, cell_3090, cell_3091, cell_3092, cell_3093, cell_3094, cell_3095, cell_3096, cell_3097, cell_3098, cell_3099]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_3050, check_3051, check_3052, check_3053, check_3054, check_3055, check_3056, check_3057, check_3058, check_3059, check_3060, check_3061, check_3062, check_3063, check_3064, check_3065, check_3066, check_3067, check_3068, check_3069, check_3070, check_3071, check_3072, check_3073, check_3074, check_3075, check_3076, check_3077, check_3078, check_3079, check_3080, check_3081, check_3082, check_3083, check_3084, check_3085, check_3086, check_3087, check_3088, check_3089, check_3090, check_3091, check_3092, check_3093, check_3094, check_3095, check_3096, check_3097, check_3098, check_3099, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0061

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0061
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0061
open AnalyticBounds.ExpressionCertificate

theorem linked_3050 : Linked cell_3050 pieces := by
  refine ⟨piece_303,piece_303_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3050,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_770_mem

theorem linked_3051 : Linked cell_3051 pieces := by
  refine ⟨piece_303,piece_303_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3051,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_770_mem

theorem linked_3052 : Linked cell_3052 pieces := by
  refine ⟨piece_303,piece_303_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3052,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_770_mem

theorem linked_3053 : Linked cell_3053 pieces := by
  refine ⟨piece_303,piece_303_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3053,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_770_mem

theorem linked_3054 : Linked cell_3054 pieces := by
  refine ⟨piece_303,piece_303_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3054,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_770_mem
    · exact piece_771_mem

theorem linked_3055 : Linked cell_3055 pieces := by
  refine ⟨piece_303,piece_303_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3055,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_771_mem
    · exact piece_772_mem

theorem linked_3056 : Linked cell_3056 pieces := by
  refine ⟨piece_303,piece_303_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3056,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_772_mem

theorem linked_3057 : Linked cell_3057 pieces := by
  refine ⟨piece_303,piece_303_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3057,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_772_mem

theorem linked_3058 : Linked cell_3058 pieces := by
  refine ⟨piece_303,piece_303_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3058,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_772_mem
    · exact piece_773_mem

theorem linked_3059 : Linked cell_3059 pieces := by
  refine ⟨piece_303,piece_303_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3059,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_773_mem

theorem linked_3060 : Linked cell_3060 pieces := by
  refine ⟨piece_303,piece_303_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3060,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_773_mem

theorem linked_3061 : Linked cell_3061 pieces := by
  refine ⟨piece_303,piece_303_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3061,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_773_mem

theorem linked_3062 : Linked cell_3062 pieces := by
  refine ⟨piece_303,piece_303_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3062,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_773_mem
    · exact piece_774_mem

theorem linked_3063 : Linked cell_3063 pieces := by
  refine ⟨piece_303,piece_303_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3063,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_774_mem

theorem linked_3064 : Linked cell_3064 pieces := by
  refine ⟨piece_303,piece_303_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3064,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_774_mem

theorem linked_3065 : Linked cell_3065 pieces := by
  refine ⟨piece_304,piece_304_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3065,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_774_mem

theorem linked_3066 : Linked cell_3066 pieces := by
  refine ⟨piece_304,piece_304_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3066,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_774_mem
    · exact piece_775_mem

theorem linked_3067 : Linked cell_3067 pieces := by
  refine ⟨piece_304,piece_304_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3067,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_775_mem

theorem linked_3068 : Linked cell_3068 pieces := by
  refine ⟨piece_304,piece_304_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3068,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_775_mem

theorem linked_3069 : Linked cell_3069 pieces := by
  refine ⟨piece_304,piece_304_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3069,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_775_mem

theorem linked_3070 : Linked cell_3070 pieces := by
  refine ⟨piece_304,piece_304_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3070,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_775_mem

theorem linked_3071 : Linked cell_3071 pieces := by
  refine ⟨piece_304,piece_304_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3071,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_775_mem
    · exact piece_776_mem

theorem linked_3072 : Linked cell_3072 pieces := by
  refine ⟨piece_304,piece_304_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3072,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_776_mem

theorem linked_3073 : Linked cell_3073 pieces := by
  refine ⟨piece_304,piece_304_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3073,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_776_mem

theorem linked_3074 : Linked cell_3074 pieces := by
  refine ⟨piece_304,piece_304_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3074,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_776_mem

theorem linked_3075 : Linked cell_3075 pieces := by
  refine ⟨piece_304,piece_304_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3075,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_776_mem
    · exact piece_777_mem

theorem linked_3076 : Linked cell_3076 pieces := by
  refine ⟨piece_304,piece_304_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3076,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_777_mem

theorem linked_3077 : Linked cell_3077 pieces := by
  refine ⟨piece_304,piece_304_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3077,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_777_mem

theorem linked_3078 : Linked cell_3078 pieces := by
  refine ⟨piece_304,piece_304_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3078,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_777_mem

theorem linked_3079 : Linked cell_3079 pieces := by
  refine ⟨piece_304,piece_304_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3079,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_777_mem
    · exact piece_778_mem

theorem linked_3080 : Linked cell_3080 pieces := by
  refine ⟨piece_304,piece_304_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3080,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_778_mem

theorem linked_3081 : Linked cell_3081 pieces := by
  refine ⟨piece_305,piece_305_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3081,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_778_mem

theorem linked_3082 : Linked cell_3082 pieces := by
  refine ⟨piece_305,piece_305_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3082,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_778_mem

theorem linked_3083 : Linked cell_3083 pieces := by
  refine ⟨piece_305,piece_305_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3083,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_778_mem
    · exact piece_779_mem

theorem linked_3084 : Linked cell_3084 pieces := by
  refine ⟨piece_305,piece_305_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3084,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_779_mem

theorem linked_3085 : Linked cell_3085 pieces := by
  refine ⟨piece_305,piece_305_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3085,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_779_mem

theorem linked_3086 : Linked cell_3086 pieces := by
  refine ⟨piece_305,piece_305_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3086,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_779_mem

theorem linked_3087 : Linked cell_3087 pieces := by
  refine ⟨piece_305,piece_305_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3087,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_779_mem

theorem linked_3088 : Linked cell_3088 pieces := by
  refine ⟨piece_305,piece_305_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3088,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_779_mem
    · exact piece_780_mem

theorem linked_3089 : Linked cell_3089 pieces := by
  refine ⟨piece_305,piece_305_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3089,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_780_mem

theorem linked_3090 : Linked cell_3090 pieces := by
  refine ⟨piece_305,piece_305_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3090,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_780_mem

theorem linked_3091 : Linked cell_3091 pieces := by
  refine ⟨piece_305,piece_305_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3091,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_780_mem

theorem linked_3092 : Linked cell_3092 pieces := by
  refine ⟨piece_305,piece_305_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3092,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_780_mem
    · exact piece_781_mem

theorem linked_3093 : Linked cell_3093 pieces := by
  refine ⟨piece_305,piece_305_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3093,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_781_mem

theorem linked_3094 : Linked cell_3094 pieces := by
  refine ⟨piece_305,piece_305_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3094,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_781_mem

theorem linked_3095 : Linked cell_3095 pieces := by
  refine ⟨piece_305,piece_305_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3095,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_781_mem

theorem linked_3096 : Linked cell_3096 pieces := by
  refine ⟨piece_305,piece_305_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3096,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_781_mem
    · exact piece_782_mem

theorem linked_3097 : Linked cell_3097 pieces := by
  refine ⟨piece_306,piece_306_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3097,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_782_mem

theorem linked_3098 : Linked cell_3098 pieces := by
  refine ⟨piece_306,piece_306_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3098,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_782_mem

theorem linked_3099 : Linked cell_3099 pieces := by
  refine ⟨piece_306,piece_306_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_3099,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_782_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0061.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0061.cells,List.forall_mem_cons]
  exact ⟨linked_3050, linked_3051, linked_3052, linked_3053, linked_3054, linked_3055, linked_3056, linked_3057, linked_3058, linked_3059, linked_3060, linked_3061, linked_3062, linked_3063, linked_3064, linked_3065, linked_3066, linked_3067, linked_3068, linked_3069, linked_3070, linked_3071, linked_3072, linked_3073, linked_3074, linked_3075, linked_3076, linked_3077, linked_3078, linked_3079, linked_3080, linked_3081, linked_3082, linked_3083, linked_3084, linked_3085, linked_3086, linked_3087, linked_3088, linked_3089, linked_3090, linked_3091, linked_3092, linked_3093, linked_3094, linked_3095, linked_3096, linked_3097, linked_3098, linked_3099, by simp⟩

theorem covered : covers (2993 / 32000 : ℚ) (1521500000000000019 / 16000000000000000000 : ℚ)
    (SourceCertificates.Chunk0061.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0061
