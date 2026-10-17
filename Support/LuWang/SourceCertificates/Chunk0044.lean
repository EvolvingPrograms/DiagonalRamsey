import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0044
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(2003 / 32000 : ℚ), (501 / 8000 : ℚ)⟩
  branch := .small
  r := (12227783614743 / 10000000000000 : ℚ)
  w := (41394851191081 / 50000000000000 : ℚ)
  center := (4007 / 64000 : ℚ)
  supportValue := (15617718976116741 / 5000000000000000 : ℚ)
  supportSlope := (1824531377542371 / 200000000000000 : ℚ)
  oldCenter := (62580199937299781187 / 320000000000000000000 : ℚ)
  newCoefficients := coefficients_236
  oldLo := (9924999999999999 / 50000000000000000 : ℚ)
  oldHi := (9874999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_532]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_2200 : Cell := { cellDefaults with
  r := (2449454297503 / 2000000000000 : ℚ)
  w := (82735469721033 / 100000000000000 : ℚ)
  newCoefficients := coefficients_235
  oldLo := (19550000000000001 / 100000000000000000 : ℚ)
  oldHi := (9799999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_525]
}

def cell_2201 : Cell := { cellDefaults with
  domain := ⟨(501 / 8000 : ℚ), (401 / 6400 : ℚ)⟩
  r := (2449454297503 / 2000000000000 : ℚ)
  w := (82735469721033 / 100000000000000 : ℚ)
  center := (4009 / 64000 : ℚ)
  supportValue := (31238289349893607 / 10000000000000000 : ℚ)
  supportSlope := (4563148052383781 / 500000000000000 : ℚ)
  oldCenter := (125234302003723470463 / 640000000000000000000 : ℚ)
  newCoefficients := coefficients_235
  oldLo := (19550000000000001 / 100000000000000000 : ℚ)
  oldHi := (9799999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_525]
}

def cell_2202 : Cell := { cellDefaults with
  domain := ⟨(401 / 6400 : ℚ), (1003 / 16000 : ℚ)⟩
  r := (2449454297503 / 2000000000000 : ℚ)
  w := (82735469721033 / 100000000000000 : ℚ)
  center := (4011 / 64000 : ℚ)
  supportValue := (31241141886367627 / 10000000000000000 : ℚ)
  supportSlope := (4564972651877497 / 500000000000000 : ℚ)
  oldCenter := (125308220106220551897 / 640000000000000000000 : ℚ)
  newCoefficients := coefficients_235
  oldLo := (19550000000000001 / 100000000000000000 : ℚ)
  oldHi := (9799999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_525]
}

def cell_2203 : Cell := { cellDefaults with
  domain := ⟨(1003 / 16000 : ℚ), (2007 / 32000 : ℚ)⟩
  r := (2449454297503 / 2000000000000 : ℚ)
  w := (82735469721033 / 100000000000000 : ℚ)
  center := (4013 / 64000 : ℚ)
  supportValue := (15621997782388999 / 5000000000000000 : ℚ)
  supportSlope := (913360450459777 / 100000000000000 : ℚ)
  oldCenter := (62691077100727052987 / 320000000000000000000 : ℚ)
  newCoefficients := coefficients_235
  oldLo := (19550000000000001 / 100000000000000000 : ℚ)
  oldHi := (9799999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_525]
}

def cell_2204 : Cell := { cellDefaults with
  domain := ⟨(2007 / 32000 : ℚ), (251 / 4000 : ℚ)⟩
  r := (2449454297503 / 2000000000000 : ℚ)
  w := (82735469721033 / 100000000000000 : ℚ)
  center := (803 / 12800 : ℚ)
  supportValue := (3905856180606253 / 1250000000000000 : ℚ)
  supportSlope := (1140914986379471 / 125000000000000 : ℚ)
  oldCenter := (3136402513026821159 / 16000000000000000000 : ℚ)
  newCoefficients := coefficients_235
  oldLo := (19550000000000001 / 100000000000000000 : ℚ)
  oldHi := (9824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_525, piece_526]
}

def cell_2205 : Cell := { cellDefaults with
  domain := ⟨(251 / 4000 : ℚ), (2009 / 32000 : ℚ)⟩
  r := (2449454297503 / 2000000000000 : ℚ)
  w := (82735469721033 / 100000000000000 : ℚ)
  center := (4017 / 64000 : ℚ)
  supportValue := (15624850536906647 / 5000000000000000 : ℚ)
  supportSlope := (9127002686170727 / 1000000000000000 : ℚ)
  oldCenter := (62765024606754000999 / 320000000000000000000 : ℚ)
  newCoefficients := coefficients_235
  oldLo := (9799999999999999 / 50000000000000000 : ℚ)
  oldHi := (9824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_526]
}

def cell_2206 : Cell := { cellDefaults with
  domain := ⟨(2009 / 32000 : ℚ), (201 / 3200 : ℚ)⟩
  r := (2449454297503 / 2000000000000 : ℚ)
  w := (82735469721033 / 100000000000000 : ℚ)
  center := (4019 / 64000 : ℚ)
  supportValue := (31252553820582043 / 10000000000000000 : ℚ)
  supportSlope := (570661534984751 / 62500000000000 : ℚ)
  oldCenter := (125604013804919230817 / 640000000000000000000 : ℚ)
  newCoefficients := coefficients_235
  oldLo := (9799999999999999 / 50000000000000000 : ℚ)
  oldHi := (9824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_526]
}

def cell_2207 : Cell := { cellDefaults with
  domain := ⟨(201 / 3200 : ℚ), (2011 / 32000 : ℚ)⟩
  r := (2449454297503 / 2000000000000 : ℚ)
  w := (82735469721033 / 100000000000000 : ℚ)
  center := (4021 / 64000 : ℚ)
  supportValue := (15627703844108547 / 5000000000000000 : ℚ)
  supportSlope := (4567088118804463 / 500000000000000 : ℚ)
  oldCenter := (62838997157160467487 / 320000000000000000000 : ℚ)
  newCoefficients := coefficients_235
  oldLo := (9799999999999999 / 50000000000000000 : ℚ)
  oldHi := (9824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_526]
}

def cell_2208 : Cell := { cellDefaults with
  domain := ⟨(2011 / 32000 : ℚ), (503 / 8000 : ℚ)⟩
  r := (2449454297503 / 2000000000000 : ℚ)
  w := (82735469721033 / 100000000000000 : ℚ)
  center := (4023 / 64000 : ℚ)
  supportValue := (3125826267978539 / 1000000000000000 : ℚ)
  supportSlope := (1141550860165097 / 125000000000000 : ℚ)
  oldCenter := (12575199076077662397 / 64000000000000000000 : ℚ)
  newCoefficients := coefficients_235
  oldLo := (9799999999999999 / 50000000000000000 : ℚ)
  oldHi := (9849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_526, piece_527]
}

def cell_2209 : Cell := { cellDefaults with
  domain := ⟨(503 / 8000 : ℚ), (2013 / 32000 : ℚ)⟩
  r := (2449454297503 / 2000000000000 : ℚ)
  w := (82735469721033 / 100000000000000 : ℚ)
  center := (161 / 2560 : ℚ)
  supportValue := (15630557487196617 / 5000000000000000 : ℚ)
  supportSlope := (9127634714957367 / 1000000000000000 : ℚ)
  oldCenter := (2516519755438655337 / 12800000000000000000 : ℚ)
  newCoefficients := coefficients_235
  oldLo := (9824999999999999 / 50000000000000000 : ℚ)
  oldHi := (9849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_527]
}

def cell_2210 : Cell := { cellDefaults with
  domain := ⟨(2013 / 32000 : ℚ), (1007 / 16000 : ℚ)⟩
  r := (2449454297503 / 2000000000000 : ℚ)
  w := (82735469721033 / 100000000000000 : ℚ)
  center := (4027 / 64000 : ℚ)
  supportValue := (31263967910622577 / 10000000000000000 : ℚ)
  supportSlope := (1826233008290501 / 200000000000000 : ℚ)
  oldCenter := (125899998776077117579 / 640000000000000000000 : ℚ)
  newCoefficients := coefficients_235
  oldLo := (9824999999999999 / 50000000000000000 : ℚ)
  oldHi := (9849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_527]
}

def cell_2211 : Cell := { cellDefaults with
  domain := ⟨(1007 / 16000 : ℚ), (403 / 6400 : ℚ)⟩
  r := (2449454297503 / 2000000000000 : ℚ)
  w := (82735469721033 / 100000000000000 : ℚ)
  center := (4029 / 64000 : ℚ)
  supportValue := (3126682195158627 / 1000000000000000 : ℚ)
  supportSlope := (9134705021750733 / 1000000000000000 : ℚ)
  oldCenter := (12597402564294108183 / 64000000000000000000 : ℚ)
  newCoefficients := coefficients_235
  oldLo := (9824999999999999 / 50000000000000000 : ℚ)
  oldHi := (9849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_527]
}

def cell_2212 : Cell := { cellDefaults with
  domain := ⟨(403 / 6400 : ℚ), (63 / 1000 : ℚ)⟩
  r := (2449454297503 / 2000000000000 : ℚ)
  w := (82735469721033 / 100000000000000 : ℚ)
  center := (4031 / 64000 : ℚ)
  supportValue := (31269677100304083 / 10000000000000000 : ℚ)
  supportSlope := (9137315068130647 / 1000000000000000 : ℚ)
  oldCenter := (126048068391325758573 / 640000000000000000000 : ℚ)
  newCoefficients := coefficients_235
  oldLo := (9824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_527, piece_528]
}

def cell_2213 : Cell := { cellDefaults with
  domain := ⟨(63 / 1000 : ℚ), (1008500000000000001 / 16000000000000000000 : ℚ)⟩
  center := (2016500000000000001 / 32000000000000000000 : ℚ)
  supportValue := (1562684244441213 / 500000000000000 : ℚ)
  supportSlope := (2282633970885679 / 250000000000000 : ℚ)
  oldCenter := (3151152778915706016062684244441213 / 16000000000000000000000000000000000 : ℚ)
  oldLo := (9824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_527, piece_528]
}

def cell_2214 : Cell := { cellDefaults with
  domain := ⟨(1008500000000000001 / 16000000000000000000 : ℚ), (504500000000000001 / 8000000000000000000 : ℚ)⟩
  center := (2017500000000000003 / 32000000000000000000 : ℚ)
  supportValue := (31256536623375473 / 10000000000000000 : ℚ)
  supportSlope := (228028219542153 / 25000000000000 : ℚ)
  oldCenter := (63060062637660016871269609870126419 / 320000000000000000000000000000000000 : ℚ)
  oldLo := (9849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_528]
}

def cell_2215 : Cell := { cellDefaults with
  domain := ⟨(504500000000000001 / 8000000000000000000 : ℚ), (1009500000000000003 / 16000000000000000000 : ℚ)⟩
  center := (403700000000000001 / 6400000000000000000 : ℚ)
  supportValue := (1953711720333679 / 625000000000000 : ℚ)
  supportSlope := (9124651650267861 / 1000000000000000 : ℚ)
  oldCenter := (788713421498706214253711720333679 / 4000000000000000000000000000000000 : ℚ)
  oldLo := (9849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_528]
}

def cell_2216 : Cell := { cellDefaults with
  domain := ⟨(1009500000000000003 / 16000000000000000000 : ℚ), (252500000000000001 / 4000000000000000000 : ℚ)⟩
  center := (2019500000000000007 / 32000000000000000000 : ℚ)
  supportValue := (3126223952969447 / 1000000000000000 : ℚ)
  supportSlope := (1141023012355189 / 125000000000000 : ℚ)
  oldCenter := (6313409273021798238383567670786129 / 32000000000000000000000000000000000 : ℚ)
  oldLo := (9849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_528]
}

def cell_2217 : Cell := { cellDefaults with
  domain := ⟨(252500000000000001 / 4000000000000000000 : ℚ), (202100000000000001 / 3200000000000000000 : ℚ)⟩
  center := (2020500000000000009 / 32000000000000000000 : ℚ)
  supportValue := (7816273159859749 / 2500000000000000 : ℚ)
  supportSlope := (9131726146279089 / 1000000000000000 : ℚ)
  oldCenter := (15792779919496622924846458438737741 / 80000000000000000000000000000000000 : ℚ)
  oldLo := (9849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_528]
}

def cell_2218 : Cell := { cellDefaults with
  domain := ⟨(202100000000000001 / 3200000000000000000 : ℚ), (505500000000000003 / 8000000000000000000 : ℚ)⟩
  center := (2021500000000000011 / 32000000000000000000 : ℚ)
  supportValue := (31267945931544157 / 10000000000000000 : ℚ)
  supportSlope := (9125584464811691 / 1000000000000000 : ℚ)
  oldCenter := (63208152700616513719447405246985727 / 320000000000000000000000000000000000 : ℚ)
  oldLo := (9849999999999999 / 50000000000000000 : ℚ)
  oldHi := (9899999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_528, piece_529]
}

def cell_2219 : Cell := { cellDefaults with
  domain := ⟨(505500000000000003 / 8000000000000000000 : ℚ), (1011500000000000007 / 16000000000000000000 : ℚ)⟩
  center := (2022500000000000013 / 32000000000000000000 : ℚ)
  supportValue := (195442481549061 / 62500000000000 : ℚ)
  supportSlope := (912531224804523 / 100000000000000 : ℚ)
  oldCenter := (395282418932975875040752260137793 / 2000000000000000000000000000000000 : ℚ)
  oldLo := (9874999999999999 / 50000000000000000 : ℚ)
  oldHi := (9899999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_529]
}

def cell_2220 : Cell := { cellDefaults with
  domain := ⟨(1011500000000000007 / 16000000000000000000 : ℚ), (126500000000000001 / 2000000000000000000 : ℚ)⟩
  center := (404700000000000003 / 6400000000000000000 : ℚ)
  supportValue := (3127364925072513 / 1000000000000000 : ℚ)
  supportSlope := (4564396995490929 / 500000000000000 : ℚ)
  oldCenter := (1265644585176846020482094775217539 / 6400000000000000000000000000000000 : ℚ)
  oldLo := (9874999999999999 / 50000000000000000 : ℚ)
  oldHi := (9899999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_529]
}

def cell_2221 : Cell := { cellDefaults with
  domain := ⟨(126500000000000001 / 2000000000000000000 : ℚ), (1012500000000000009 / 16000000000000000000 : ℚ)⟩
  center := (2024500000000000017 / 32000000000000000000 : ℚ)
  supportValue := (390956281789011 / 125000000000000 : ℚ)
  supportSlope := (182645703708317 / 20000000000000 : ℚ)
  oldCenter := (791490992481852776146256790413187 / 4000000000000000000000000000000000 : ℚ)
  oldLo := (9874999999999999 / 50000000000000000 : ℚ)
  oldHi := (9899999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_529]
}

def cell_2222 : Cell := { cellDefaults with
  domain := ⟨(1012500000000000009 / 16000000000000000000 : ℚ), (101300000000000001 / 1600000000000000000 : ℚ)⟩
  center := (2025500000000000019 / 32000000000000000000 : ℚ)
  supportValue := (1251174277119741 / 400000000000000 : ℚ)
  supportSlope := (913043762361097 / 100000000000000 : ℚ)
  oldCenter := (2534253498306035419272311265275079 / 12800000000000000000000000000000000 : ℚ)
  oldLo := (9874999999999999 / 50000000000000000 : ℚ)
  oldHi := (9924999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_529, piece_530, piece_531]
}

def cell_2223 : Cell := { cellDefaults with
  domain := ⟨(101300000000000001 / 1600000000000000000 : ℚ), (1013500000000000011 / 16000000000000000000 : ℚ)⟩
  center := (2026500000000000021 / 32000000000000000000 : ℚ)
  supportValue := (1955138040494207 / 625000000000000 : ℚ)
  supportSlope := (9125903556025587 / 1000000000000000 : ℚ)
  oldCenter := (3962087239061510526557898850378347 / 20000000000000000000000000000000000 : ℚ)
  oldLo := (19804469273743017 / 100000000000000000 : ℚ)
  oldHi := (9924999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_531]
}

def cell_2224 : Cell := { cellDefaults with
  domain := ⟨(1013500000000000011 / 16000000000000000000 : ℚ), (253500000000000003 / 4000000000000000000 : ℚ)⟩
  center := (2027500000000000023 / 32000000000000000000 : ℚ)
  supportValue := (1564253051375701 / 500000000000000 : ℚ)
  supportSlope := (9129333726576743 / 1000000000000000 : ℚ)
  oldCenter := (3171523061664233813477820181641123 / 16000000000000000000000000000000000 : ℚ)
  oldLo := (19804469273743017 / 100000000000000000 : ℚ)
  oldHi := (9924999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_531]
}

def cell_2225 : Cell := { cellDefaults with
  domain := ⟨(253500000000000003 / 4000000000000000000 : ℚ), (1014500000000000013 / 16000000000000000000 : ℚ)⟩
  center := (81140000000000001 / 1280000000000000000 : ℚ)
  supportValue := (1564395724025069 / 500000000000000 : ℚ)
  supportSlope := (9132773199127069 / 1000000000000000 : ℚ)
  oldCenter := (126935069047394100224395724025069 / 640000000000000000000000000000000 : ℚ)
  oldLo := (19804469273743017 / 100000000000000000 : ℚ)
  oldHi := (9924999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_531]
}

def cell_2226 : Cell := { cellDefaults with
  domain := ⟨(1014500000000000013 / 16000000000000000000 : ℚ), (507500000000000007 / 8000000000000000000 : ℚ)⟩
  center := (2029500000000000027 / 32000000000000000000 : ℚ)
  supportValue := (15645384504889621 / 5000000000000000 : ℚ)
  supportSlope := (1141886621354613 / 125000000000000 : ℚ)
  oldCenter := (31752307852673486241925381632019767 / 160000000000000000000000000000000000 : ℚ)
  oldLo := (19804469273743017 / 100000000000000000 : ℚ)
  oldHi := (9949999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_531, piece_532]
}

def cell_2227 : Cell := { cellDefaults with
  domain := ⟨(507500000000000007 / 8000000000000000000 : ℚ), (203100000000000003 / 3200000000000000000 : ℚ)⟩
  center := (2030500000000000029 / 32000000000000000000 : ℚ)
  supportValue := (7823405550694631 / 2500000000000000 : ℚ)
  supportSlope := (4563228354854223 / 500000000000000 : ℚ)
  oldCenter := (15885424970685448472378760970144299 / 80000000000000000000000000000000000 : ℚ)
  oldHi := (9949999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_532]
}

def cell_2228 : Cell := { cellDefaults with
  domain := ⟨(203100000000000003 / 3200000000000000000 : ℚ), (63500000000000001 / 1000000000000000000 : ℚ)⟩
  center := (2031500000000000031 / 32000000000000000000 : ℚ)
  supportValue := (1564823737354771 / 500000000000000 : ℚ)
  supportSlope := (9129834680976483 / 1000000000000000 : ℚ)
  oldCenter := (3178939422436217335009535857997901 / 16000000000000000000000000000000000 : ℚ)
  oldHi := (9949999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_532]
}

def cell_2229 : Cell := { cellDefaults with
  domain := ⟨(63500000000000001 / 1000000000000000000 : ℚ), (63531250000000001 / 1000000000000000000 : ℚ)⟩
  r := (763023799627 / 625000000000 : ℚ)
  w := (82843708883067 / 100000000000000 : ℚ)
  center := (63515625000000001 / 1000000000000000000 : ℚ)
  supportValue := (1251218018527263 / 400000000000000 : ℚ)
  supportSlope := (9122489518375687 / 1000000000000000 : ℚ)
  oldCenter := (79471894458020690235593018527263 / 400000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_237
  oldHi := (9949999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_532]
}

def cell_2230 : Cell := { cellDefaults with
  domain := ⟨(63531250000000001 / 1000000000000000000 : ℚ), (63562500000000001 / 1000000000000000000 : ℚ)⟩
  r := (763023799627 / 625000000000 : ℚ)
  w := (82843708883067 / 100000000000000 : ℚ)
  center := (63546875000000001 / 1000000000000000000 : ℚ)
  supportValue := (31283301775340413 / 10000000000000000 : ℚ)
  supportSlope := (2281479019757171 / 250000000000000 : ℚ)
  oldCenter := (1987956067504835338642676775340413 / 10000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_237
  oldHi := (9949999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_532]
}

def cell_2231 : Cell := { cellDefaults with
  domain := ⟨(63562500000000001 / 1000000000000000000 : ℚ), (63593750000000001 / 1000000000000000000 : ℚ)⟩
  r := (763023799627 / 625000000000 : ℚ)
  w := (82843708883067 / 100000000000000 : ℚ)
  center := (63578125000000001 / 1000000000000000000 : ℚ)
  supportValue := (312861541597413 / 100000000000000 : ℚ)
  supportSlope := (4564675937103857 / 500000000000000 : ℚ)
  oldCenter := (19891150199373023703486541597413 / 100000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_237
  oldHi := (9949999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_532]
}

def cell_2232 : Cell := { cellDefaults with
  domain := ⟨(63593750000000001 / 1000000000000000000 : ℚ), (63625000000000001 / 1000000000000000000 : ℚ)⟩
  r := (763023799627 / 625000000000 : ℚ)
  w := (82843708883067 / 100000000000000 : ℚ)
  center := (63609375000000001 / 1000000000000000000 : ℚ)
  supportValue := (6257801330623093 / 2000000000000000 : ℚ)
  supportSlope := (9123167659112141 / 1000000000000000 : ℚ)
  oldCenter := (398054831515103312554676330623093 / 2000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_237
  oldHi := (9974999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_532, piece_533]
}

def cell_2233 : Cell := { cellDefaults with
  domain := ⟨(63625000000000001 / 1000000000000000000 : ℚ), (63656250000000001 / 1000000000000000000 : ℚ)⟩
  r := (763023799627 / 625000000000 : ℚ)
  w := (82843708883067 / 100000000000000 : ℚ)
  center := (63640625000000001 / 1000000000000000000 : ℚ)
  supportValue := (1564592854885193 / 500000000000000 : ℚ)
  supportSlope := (912310893940571 / 100000000000000 : ℚ)
  oldCenter := (99571667155427987330217854885193 / 500000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_237
  oldLo := (9949999999999999 / 50000000000000000 : ℚ)
  oldHi := (9974999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_533]
}

def cell_2234 : Cell := { cellDefaults with
  domain := ⟨(63656250000000001 / 1000000000000000000 : ℚ), (63687500000000001 / 1000000000000000000 : ℚ)⟩
  r := (763023799627 / 625000000000 : ℚ)
  w := (82843708883067 / 100000000000000 : ℚ)
  center := (63671875000000001 / 1000000000000000000 : ℚ)
  supportValue := (15647354297600091 / 5000000000000000 : ℚ)
  supportSlope := (912648278037409 / 100000000000000 : ℚ)
  oldCenter := (996296386917505809787979297600091 / 5000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_237
  oldLo := (9949999999999999 / 50000000000000000 : ℚ)
  oldHi := (9974999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_533]
}

def cell_2235 : Cell := { cellDefaults with
  domain := ⟨(63687500000000001 / 1000000000000000000 : ℚ), (63718750000000001 / 1000000000000000000 : ℚ)⟩
  r := (763023799627 / 625000000000 : ℚ)
  w := (82843708883067 / 100000000000000 : ℚ)
  center := (63703125000000001 / 1000000000000000000 : ℚ)
  supportValue := (782439028711 / 250000000000 : ℚ)
  supportSlope := (9129865704181839 / 1000000000000000 : ℚ)
  oldCenter := (49843811250855422657439028711 / 250000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_237
  oldLo := (9949999999999999 / 50000000000000000 : ℚ)
  oldHi := (9974999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_533]
}

def cell_2236 : Cell := { cellDefaults with
  domain := ⟨(63718750000000001 / 1000000000000000000 : ℚ), (63750000000000001 / 1000000000000000000 : ℚ)⟩
  r := (763023799627 / 625000000000 : ℚ)
  w := (82843708883067 / 100000000000000 : ℚ)
  center := (63734375000000001 / 1000000000000000000 : ℚ)
  supportValue := (15650207380132217 / 5000000000000000 : ℚ)
  supportSlope := (570485387353159 / 62500000000000 : ℚ)
  oldCenter := (997456185993114283509582380132217 / 5000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_237
  oldLo := (9949999999999999 / 50000000000000000 : ℚ)
  oldHi := (9999999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_533, piece_534]
}

def cell_2237 : Cell := { cellDefaults with
  domain := ⟨(63750000000000001 / 1000000000000000000 : ℚ), (63781250000000001 / 1000000000000000000 : ℚ)⟩
  r := (763023799627 / 625000000000 : ℚ)
  w := (82843708883067 / 100000000000000 : ℚ)
  center := (63765625000000001 / 1000000000000000000 : ℚ)
  supportValue := (7825816422971661 / 2500000000000000 : ℚ)
  supportSlope := (2280918254989217 / 250000000000000 : ℚ)
  oldCenter := (499018075346052328778941422971661 / 2500000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_237
  oldLo := (9974999999999999 / 50000000000000000 : ℚ)
  oldHi := (9999999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_534]
}

def cell_2238 : Cell := { cellDefaults with
  domain := ⟨(63781250000000001 / 1000000000000000000 : ℚ), (63812500000000001 / 1000000000000000000 : ℚ)⟩
  r := (763023799627 / 625000000000 : ℚ)
  w := (82843708883067 / 100000000000000 : ℚ)
  center := (63796875000000001 / 1000000000000000000 : ℚ)
  supportValue := (15653058678654037 / 5000000000000000 : ℚ)
  supportSlope := (4563496691275759 / 500000000000000 : ℚ)
  oldCenter := (998616227889756782387433678654037 / 5000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_237
  oldLo := (9974999999999999 / 50000000000000000 : ℚ)
  oldHi := (9999999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_534]
}

def cell_2239 : Cell := { cellDefaults with
  domain := ⟨(63812500000000001 / 1000000000000000000 : ℚ), (63843750000000001 / 1000000000000000000 : ℚ)⟩
  r := (763023799627 / 625000000000 : ℚ)
  w := (82843708883067 / 100000000000000 : ℚ)
  center := (63828125000000001 / 1000000000000000000 : ℚ)
  supportValue := (31308970061737047 / 10000000000000000 : ℚ)
  supportSlope := (9130322674678837 / 1000000000000000 : ℚ)
  oldCenter := (1998392854721809984355845061737047 / 10000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_237
  oldLo := (9974999999999999 / 50000000000000000 : ℚ)
  oldHi := (9999999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_534]
}

def cell_2240 : Cell := { cellDefaults with
  domain := ⟨(63843750000000001 / 1000000000000000000 : ℚ), (63875000000000001 / 1000000000000000000 : ℚ)⟩
  r := (763023799627 / 625000000000 : ℚ)
  w := (82843708883067 / 100000000000000 : ℚ)
  center := (63859375000000001 / 1000000000000000000 : ℚ)
  supportValue := (1252472952318673 / 400000000000000 : ℚ)
  supportSlope := (9132179937040519 / 1000000000000000 : ℚ)
  oldCenter := (79982139939475259861847952318673 / 400000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_237
  oldLo := (9974999999999999 / 50000000000000000 : ℚ)
  oldHi := (10024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_534, piece_535]
}

def cell_2241 : Cell := { cellDefaults with
  domain := ⟨(63875000000000001 / 1000000000000000000 : ℚ), (63906250000000001 / 1000000000000000000 : ℚ)⟩
  r := (763023799627 / 625000000000 : ℚ)
  w := (82843708883067 / 100000000000000 : ℚ)
  center := (63890625000000001 / 1000000000000000000 : ℚ)
  supportValue := (1565733806736931 / 500000000000000 : ℚ)
  supportSlope := (4562089154674709 / 500000000000000 : ℚ)
  oldCenter := (100035711496051733737608806736931 / 500000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_237
  oldLo := (9999999999999999 / 50000000000000000 : ℚ)
  oldHi := (10024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_535]
}

def cell_2242 : Cell := { cellDefaults with
  domain := ⟨(63906250000000001 / 1000000000000000000 : ℚ), (63937500000000001 / 1000000000000000000 : ℚ)⟩
  r := (763023799627 / 625000000000 : ℚ)
  w := (82843708883067 / 100000000000000 : ℚ)
  center := (63921875000000001 / 1000000000000000000 : ℚ)
  supportValue := (6263505590006079 / 2000000000000000 : ℚ)
  supportSlope := (456372361350077 / 50000000000000 : ℚ)
  oldCenter := (400375021386169837341630590006079 / 2000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_237
  oldLo := (9999999999999999 / 50000000000000000 : ℚ)
  oldHi := (10024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_535]
}

def cell_2243 : Cell := { cellDefaults with
  domain := ⟨(63937500000000001 / 1000000000000000000 : ℚ), (63968750000000001 / 1000000000000000000 : ℚ)⟩
  r := (763023799627 / 625000000000 : ℚ)
  w := (82843708883067 / 100000000000000 : ℚ)
  center := (63953125000000001 / 1000000000000000000 : ℚ)
  supportValue := (6264076157646051 / 2000000000000000 : ℚ)
  supportSlope := (2282681231861261 / 250000000000000 : ℚ)
  oldCenter := (400607245519457611623451157646051 / 2000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_237
  oldLo := (9999999999999999 / 50000000000000000 : ℚ)
  oldHi := (10024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_535]
}

def cell_2244 : Cell := { cellDefaults with
  domain := ⟨(63968750000000001 / 1000000000000000000 : ℚ), (64000000000000001 / 1000000000000000000 : ℚ)⟩
  r := (763023799627 / 625000000000 : ℚ)
  w := (82843708883067 / 100000000000000 : ℚ)
  center := (63984375000000001 / 1000000000000000000 : ℚ)
  supportValue := (783080866302139 / 250000000000000 : ℚ)
  supportSlope := (9134011427988753 / 1000000000000000 : ℚ)
  oldCenter := (50104939804800925861205866302139 / 250000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_237
  oldLo := (9999999999999999 / 50000000000000000 : ℚ)
  oldHi := (10024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_535]
}

def cell_2245 : Cell := { cellDefaults with
  domain := ⟨(64000000000000001 / 1000000000000000000 : ℚ), (1024500000000000017 / 16000000000000000000 : ℚ)⟩
  r := (6094531247007 / 5000000000000 : ℚ)
  w := (16579510551149 / 20000000000000 : ℚ)
  center := (2048500000000000033 / 32000000000000000000 : ℚ)
  supportValue := (31307190425192313 / 10000000000000000 : ℚ)
  supportSlope := (912646633247503 / 100000000000000 : ℚ)
  oldCenter := (64132779586006454213637284031346329 / 320000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_238
  oldLo := (9999999999999999 / 50000000000000000 : ℚ)
  oldHi := (10024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_535]
}

def cell_2246 : Cell := { cellDefaults with
  domain := ⟨(1024500000000000017 / 16000000000000000000 : ℚ), (512500000000000009 / 8000000000000000000 : ℚ)⟩
  r := (6094531247007 / 5000000000000 : ℚ)
  w := (16579510551149 / 20000000000000 : ℚ)
  center := (409900000000000007 / 6400000000000000000 : ℚ)
  supportValue := (31310041906138153 / 10000000000000000 : ℚ)
  supportSlope := (2280016267270919 / 250000000000000 : ℚ)
  oldCenter := (12833986177326029133870293342967071 / 64000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_238
  oldLo := (9999999999999999 / 50000000000000000 : ℚ)
  oldHi := (10049999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_535, piece_536]
}

def cell_2247 : Cell := { cellDefaults with
  domain := ⟨(512500000000000009 / 8000000000000000000 : ℚ), (1025500000000000019 / 16000000000000000000 : ℚ)⟩
  r := (6094531247007 / 5000000000000 : ℚ)
  w := (16579510551149 / 20000000000000 : ℚ)
  center := (2050500000000000037 / 32000000000000000000 : ℚ)
  supportValue := (3131289151827541 / 1000000000000000 : ℚ)
  supportSlope := (9120394644497747 / 1000000000000000 : ℚ)
  oldCenter := (6420708405822372936357698617619017 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_238
  oldLo := (10024999999999999 / 50000000000000000 : ℚ)
  oldHi := (10049999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_536]
}

def cell_2248 : Cell := { cellDefaults with
  domain := ⟨(1025500000000000019 / 16000000000000000000 : ℚ), (51300000000000001 / 800000000000000000 : ℚ)⟩
  r := (6094531247007 / 5000000000000 : ℚ)
  w := (16579510551149 / 20000000000000 : ℚ)
  center := (2051500000000000039 / 32000000000000000000 : ℚ)
  supportValue := (15657871075881127 / 5000000000000000 : ℚ)
  supportSlope := (9123667327003187 / 1000000000000000 : ℚ)
  oldCenter := (32122122512170132651156971959363953 / 160000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_238
  oldLo := (10024999999999999 / 50000000000000000 : ℚ)
  oldHi := (10049999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_536]
}

def cell_2249 : Cell := { cellDefaults with
  domain := ⟨(51300000000000001 / 800000000000000000 : ℚ), (1026500000000000021 / 16000000000000000000 : ℚ)⟩
  r := (6094531247007 / 5000000000000 : ℚ)
  w := (16579510551149 / 20000000000000 : ℚ)
  center := (2052500000000000041 / 32000000000000000000 : ℚ)
  supportValue := (3131859380932683 / 1000000000000000 : ℚ)
  supportSlope := (9126948748303203 / 1000000000000000 : ℚ)
  oldCenter := (6428141379364331985906234618240003 / 32000000000000000000000000000000000 : ℚ)
  newCoefficients := coefficients_238
  oldLo := (10024999999999999 / 50000000000000000 : ℚ)
  oldHi := (10049999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_536]
}

theorem check_2200 : cell_2200.check = true := by
  decide +kernel

theorem check_2201 : cell_2201.check = true := by
  decide +kernel

theorem check_2202 : cell_2202.check = true := by
  decide +kernel

theorem check_2203 : cell_2203.check = true := by
  decide +kernel

theorem check_2204 : cell_2204.check = true := by
  decide +kernel

theorem check_2205 : cell_2205.check = true := by
  decide +kernel

theorem check_2206 : cell_2206.check = true := by
  decide +kernel

theorem check_2207 : cell_2207.check = true := by
  decide +kernel

theorem check_2208 : cell_2208.check = true := by
  decide +kernel

theorem check_2209 : cell_2209.check = true := by
  decide +kernel

theorem check_2210 : cell_2210.check = true := by
  decide +kernel

theorem check_2211 : cell_2211.check = true := by
  decide +kernel

theorem check_2212 : cell_2212.check = true := by
  decide +kernel

theorem check_2213 : cell_2213.check = true := by
  decide +kernel

theorem check_2214 : cell_2214.check = true := by
  decide +kernel

theorem check_2215 : cell_2215.check = true := by
  decide +kernel

theorem check_2216 : cell_2216.check = true := by
  decide +kernel

theorem check_2217 : cell_2217.check = true := by
  decide +kernel

theorem check_2218 : cell_2218.check = true := by
  decide +kernel

theorem check_2219 : cell_2219.check = true := by
  decide +kernel

theorem check_2220 : cell_2220.check = true := by
  decide +kernel

theorem check_2221 : cell_2221.check = true := by
  decide +kernel

theorem check_2222 : cell_2222.check = true := by
  decide +kernel

theorem check_2223 : cell_2223.check = true := by
  decide +kernel

theorem check_2224 : cell_2224.check = true := by
  decide +kernel

theorem check_2225 : cell_2225.check = true := by
  decide +kernel

theorem check_2226 : cell_2226.check = true := by
  decide +kernel

theorem check_2227 : cell_2227.check = true := by
  decide +kernel

theorem check_2228 : cell_2228.check = true := by
  decide +kernel

theorem check_2229 : cell_2229.check = true := by
  decide +kernel

theorem check_2230 : cell_2230.check = true := by
  decide +kernel

theorem check_2231 : cell_2231.check = true := by
  decide +kernel

theorem check_2232 : cell_2232.check = true := by
  decide +kernel

theorem check_2233 : cell_2233.check = true := by
  decide +kernel

theorem check_2234 : cell_2234.check = true := by
  decide +kernel

theorem check_2235 : cell_2235.check = true := by
  decide +kernel

theorem check_2236 : cell_2236.check = true := by
  decide +kernel

theorem check_2237 : cell_2237.check = true := by
  decide +kernel

theorem check_2238 : cell_2238.check = true := by
  decide +kernel

theorem check_2239 : cell_2239.check = true := by
  decide +kernel

theorem check_2240 : cell_2240.check = true := by
  decide +kernel

theorem check_2241 : cell_2241.check = true := by
  decide +kernel

theorem check_2242 : cell_2242.check = true := by
  decide +kernel

theorem check_2243 : cell_2243.check = true := by
  decide +kernel

theorem check_2244 : cell_2244.check = true := by
  decide +kernel

theorem check_2245 : cell_2245.check = true := by
  decide +kernel

theorem check_2246 : cell_2246.check = true := by
  decide +kernel

theorem check_2247 : cell_2247.check = true := by
  decide +kernel

theorem check_2248 : cell_2248.check = true := by
  decide +kernel

theorem check_2249 : cell_2249.check = true := by
  decide +kernel

def cells : List Cell := [cell_2200, cell_2201, cell_2202, cell_2203, cell_2204, cell_2205, cell_2206, cell_2207, cell_2208, cell_2209, cell_2210, cell_2211, cell_2212, cell_2213, cell_2214, cell_2215, cell_2216, cell_2217, cell_2218, cell_2219, cell_2220, cell_2221, cell_2222, cell_2223, cell_2224, cell_2225, cell_2226, cell_2227, cell_2228, cell_2229, cell_2230, cell_2231, cell_2232, cell_2233, cell_2234, cell_2235, cell_2236, cell_2237, cell_2238, cell_2239, cell_2240, cell_2241, cell_2242, cell_2243, cell_2244, cell_2245, cell_2246, cell_2247, cell_2248, cell_2249]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_2200, check_2201, check_2202, check_2203, check_2204, check_2205, check_2206, check_2207, check_2208, check_2209, check_2210, check_2211, check_2212, check_2213, check_2214, check_2215, check_2216, check_2217, check_2218, check_2219, check_2220, check_2221, check_2222, check_2223, check_2224, check_2225, check_2226, check_2227, check_2228, check_2229, check_2230, check_2231, check_2232, check_2233, check_2234, check_2235, check_2236, check_2237, check_2238, check_2239, check_2240, check_2241, check_2242, check_2243, check_2244, check_2245, check_2246, check_2247, check_2248, check_2249, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0044

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0044
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0044
open AnalyticBounds.ExpressionCertificate

theorem linked_2200 : Linked cell_2200 pieces := by
  apply Linked.of_piece piece_235 piece_235_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2200, List.cons_subset, List.nil_subset, and_true]
  exact piece_525_mem

theorem linked_2201 : Linked cell_2201 pieces := by
  apply Linked.of_piece piece_235 piece_235_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2201, List.cons_subset, List.nil_subset, and_true]
  exact piece_525_mem

theorem linked_2202 : Linked cell_2202 pieces := by
  apply Linked.of_piece piece_235 piece_235_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2202, List.cons_subset, List.nil_subset, and_true]
  exact piece_525_mem

theorem linked_2203 : Linked cell_2203 pieces := by
  apply Linked.of_piece piece_235 piece_235_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2203, List.cons_subset, List.nil_subset, and_true]
  exact piece_525_mem

theorem linked_2204 : Linked cell_2204 pieces := by
  apply Linked.of_piece piece_235 piece_235_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2204, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_525_mem, piece_526_mem⟩

theorem linked_2205 : Linked cell_2205 pieces := by
  apply Linked.of_piece piece_235 piece_235_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2205, List.cons_subset, List.nil_subset, and_true]
  exact piece_526_mem

theorem linked_2206 : Linked cell_2206 pieces := by
  apply Linked.of_piece piece_235 piece_235_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2206, List.cons_subset, List.nil_subset, and_true]
  exact piece_526_mem

theorem linked_2207 : Linked cell_2207 pieces := by
  apply Linked.of_piece piece_235 piece_235_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2207, List.cons_subset, List.nil_subset, and_true]
  exact piece_526_mem

theorem linked_2208 : Linked cell_2208 pieces := by
  apply Linked.of_piece piece_235 piece_235_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2208, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_526_mem, piece_527_mem⟩

theorem linked_2209 : Linked cell_2209 pieces := by
  apply Linked.of_piece piece_235 piece_235_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2209, List.cons_subset, List.nil_subset, and_true]
  exact piece_527_mem

theorem linked_2210 : Linked cell_2210 pieces := by
  apply Linked.of_piece piece_235 piece_235_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2210, List.cons_subset, List.nil_subset, and_true]
  exact piece_527_mem

theorem linked_2211 : Linked cell_2211 pieces := by
  apply Linked.of_piece piece_235 piece_235_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2211, List.cons_subset, List.nil_subset, and_true]
  exact piece_527_mem

theorem linked_2212 : Linked cell_2212 pieces := by
  apply Linked.of_piece piece_235 piece_235_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2212, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_527_mem, piece_528_mem⟩

theorem linked_2213 : Linked cell_2213 pieces := by
  apply Linked.of_piece piece_236 piece_236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2213, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_527_mem, piece_528_mem⟩

theorem linked_2214 : Linked cell_2214 pieces := by
  apply Linked.of_piece piece_236 piece_236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2214, List.cons_subset, List.nil_subset, and_true]
  exact piece_528_mem

theorem linked_2215 : Linked cell_2215 pieces := by
  apply Linked.of_piece piece_236 piece_236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2215, List.cons_subset, List.nil_subset, and_true]
  exact piece_528_mem

theorem linked_2216 : Linked cell_2216 pieces := by
  apply Linked.of_piece piece_236 piece_236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2216, List.cons_subset, List.nil_subset, and_true]
  exact piece_528_mem

theorem linked_2217 : Linked cell_2217 pieces := by
  apply Linked.of_piece piece_236 piece_236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2217, List.cons_subset, List.nil_subset, and_true]
  exact piece_528_mem

theorem linked_2218 : Linked cell_2218 pieces := by
  apply Linked.of_piece piece_236 piece_236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2218, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_528_mem, piece_529_mem⟩

theorem linked_2219 : Linked cell_2219 pieces := by
  apply Linked.of_piece piece_236 piece_236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2219, List.cons_subset, List.nil_subset, and_true]
  exact piece_529_mem

theorem linked_2220 : Linked cell_2220 pieces := by
  apply Linked.of_piece piece_236 piece_236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2220, List.cons_subset, List.nil_subset, and_true]
  exact piece_529_mem

theorem linked_2221 : Linked cell_2221 pieces := by
  apply Linked.of_piece piece_236 piece_236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2221, List.cons_subset, List.nil_subset, and_true]
  exact piece_529_mem

theorem linked_2222 : Linked cell_2222 pieces := by
  apply Linked.of_piece piece_236 piece_236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2222, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_529_mem, ⟨piece_530_mem, piece_531_mem⟩⟩

theorem linked_2223 : Linked cell_2223 pieces := by
  apply Linked.of_piece piece_236 piece_236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2223, List.cons_subset, List.nil_subset, and_true]
  exact piece_531_mem

theorem linked_2224 : Linked cell_2224 pieces := by
  apply Linked.of_piece piece_236 piece_236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2224, List.cons_subset, List.nil_subset, and_true]
  exact piece_531_mem

theorem linked_2225 : Linked cell_2225 pieces := by
  apply Linked.of_piece piece_236 piece_236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2225, List.cons_subset, List.nil_subset, and_true]
  exact piece_531_mem

theorem linked_2226 : Linked cell_2226 pieces := by
  apply Linked.of_piece piece_236 piece_236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2226, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_531_mem, piece_532_mem⟩

theorem linked_2227 : Linked cell_2227 pieces := by
  apply Linked.of_piece piece_236 piece_236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2227, List.cons_subset, List.nil_subset, and_true]
  exact piece_532_mem

theorem linked_2228 : Linked cell_2228 pieces := by
  apply Linked.of_piece piece_236 piece_236_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2228, List.cons_subset, List.nil_subset, and_true]
  exact piece_532_mem

theorem linked_2229 : Linked cell_2229 pieces := by
  apply Linked.of_piece piece_237 piece_237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2229, List.cons_subset, List.nil_subset, and_true]
  exact piece_532_mem

theorem linked_2230 : Linked cell_2230 pieces := by
  apply Linked.of_piece piece_237 piece_237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2230, List.cons_subset, List.nil_subset, and_true]
  exact piece_532_mem

theorem linked_2231 : Linked cell_2231 pieces := by
  apply Linked.of_piece piece_237 piece_237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2231, List.cons_subset, List.nil_subset, and_true]
  exact piece_532_mem

theorem linked_2232 : Linked cell_2232 pieces := by
  apply Linked.of_piece piece_237 piece_237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2232, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_532_mem, piece_533_mem⟩

theorem linked_2233 : Linked cell_2233 pieces := by
  apply Linked.of_piece piece_237 piece_237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2233, List.cons_subset, List.nil_subset, and_true]
  exact piece_533_mem

theorem linked_2234 : Linked cell_2234 pieces := by
  apply Linked.of_piece piece_237 piece_237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2234, List.cons_subset, List.nil_subset, and_true]
  exact piece_533_mem

theorem linked_2235 : Linked cell_2235 pieces := by
  apply Linked.of_piece piece_237 piece_237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2235, List.cons_subset, List.nil_subset, and_true]
  exact piece_533_mem

theorem linked_2236 : Linked cell_2236 pieces := by
  apply Linked.of_piece piece_237 piece_237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2236, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_533_mem, piece_534_mem⟩

theorem linked_2237 : Linked cell_2237 pieces := by
  apply Linked.of_piece piece_237 piece_237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2237, List.cons_subset, List.nil_subset, and_true]
  exact piece_534_mem

theorem linked_2238 : Linked cell_2238 pieces := by
  apply Linked.of_piece piece_237 piece_237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2238, List.cons_subset, List.nil_subset, and_true]
  exact piece_534_mem

theorem linked_2239 : Linked cell_2239 pieces := by
  apply Linked.of_piece piece_237 piece_237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2239, List.cons_subset, List.nil_subset, and_true]
  exact piece_534_mem

theorem linked_2240 : Linked cell_2240 pieces := by
  apply Linked.of_piece piece_237 piece_237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2240, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_534_mem, piece_535_mem⟩

theorem linked_2241 : Linked cell_2241 pieces := by
  apply Linked.of_piece piece_237 piece_237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2241, List.cons_subset, List.nil_subset, and_true]
  exact piece_535_mem

theorem linked_2242 : Linked cell_2242 pieces := by
  apply Linked.of_piece piece_237 piece_237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2242, List.cons_subset, List.nil_subset, and_true]
  exact piece_535_mem

theorem linked_2243 : Linked cell_2243 pieces := by
  apply Linked.of_piece piece_237 piece_237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2243, List.cons_subset, List.nil_subset, and_true]
  exact piece_535_mem

theorem linked_2244 : Linked cell_2244 pieces := by
  apply Linked.of_piece piece_237 piece_237_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2244, List.cons_subset, List.nil_subset, and_true]
  exact piece_535_mem

theorem linked_2245 : Linked cell_2245 pieces := by
  apply Linked.of_piece piece_238 piece_238_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2245, List.cons_subset, List.nil_subset, and_true]
  exact piece_535_mem

theorem linked_2246 : Linked cell_2246 pieces := by
  apply Linked.of_piece piece_238 piece_238_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2246, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_535_mem, piece_536_mem⟩

theorem linked_2247 : Linked cell_2247 pieces := by
  apply Linked.of_piece piece_238 piece_238_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2247, List.cons_subset, List.nil_subset, and_true]
  exact piece_536_mem

theorem linked_2248 : Linked cell_2248 pieces := by
  apply Linked.of_piece piece_238 piece_238_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2248, List.cons_subset, List.nil_subset, and_true]
  exact piece_536_mem

theorem linked_2249 : Linked cell_2249 pieces := by
  apply Linked.of_piece piece_238 piece_238_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_2249, List.cons_subset, List.nil_subset, and_true]
  exact piece_536_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0044.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0044.cells,List.forall_mem_cons]
  exact ⟨linked_2200, linked_2201, linked_2202, linked_2203, linked_2204, linked_2205, linked_2206, linked_2207, linked_2208, linked_2209, linked_2210, linked_2211, linked_2212, linked_2213, linked_2214, linked_2215, linked_2216, linked_2217, linked_2218, linked_2219, linked_2220, linked_2221, linked_2222, linked_2223, linked_2224, linked_2225, linked_2226, linked_2227, linked_2228, linked_2229, linked_2230, linked_2231, linked_2232, linked_2233, linked_2234, linked_2235, linked_2236, linked_2237, linked_2238, linked_2239, linked_2240, linked_2241, linked_2242, linked_2243, linked_2244, linked_2245, linked_2246, linked_2247, linked_2248, linked_2249, by simp⟩

theorem covered : covers (2003 / 32000 : ℚ) (1026500000000000021 / 16000000000000000000 : ℚ)
    (SourceCertificates.Chunk0044.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0044
