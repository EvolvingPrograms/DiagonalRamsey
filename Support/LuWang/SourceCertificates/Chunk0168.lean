import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0168
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(16512500000000001 / 50000000000000000 : ℚ), (16515625000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (75066286721 / 97656250000 : ℚ)
  w := (16844892510191 / 10000000000000 : ℚ)
  center := (16514062500000001 / 50000000000000000 : ℚ)
  supportValue := (341710885885777 / 500000000000000 : ℚ)
  supportSlope := (-4911675971925433 / 1000000000000000 : ℚ)
  oldCenter := (341710885885777 / 500000000000000 : ℚ)
  newCoefficients := coefficients_821
  oldLo := (273 / 400 : ℚ)
  oldHi := (13660000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1588, piece_1589]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8400 : Cell := { cellDefaults with
  r := (19231112175053 / 25000000000000 : ℚ)
  w := (263343146227 / 156250000000 : ℚ)
  newCoefficients := coefficients_818
  oldLo := (13660000000000001 / 20000000000000000 : ℚ)
  oldHi := (13680000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1588, piece_1589]
}

def cell_8401 : Cell := { cellDefaults with
  domain := ⟨(16515625000000001 / 50000000000000000 : ℚ), (16518750000000001 / 50000000000000000 : ℚ)⟩
  r := (19231112175053 / 25000000000000 : ℚ)
  w := (263343146227 / 156250000000 : ℚ)
  center := (16517187500000001 / 50000000000000000 : ℚ)
  supportValue := (6831148933302791 / 10000000000000000 : ℚ)
  supportSlope := (-122709432273993 / 25000000000000 : ℚ)
  oldCenter := (6831148933302791 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_818
  oldHi := (1367 / 2000 : ℚ)
  oldPieces := [piece_1587, piece_1588]
}

def cell_8402 : Cell := { cellDefaults with
  domain := ⟨(16518750000000001 / 50000000000000000 : ℚ), (16521875000000001 / 50000000000000000 : ℚ)⟩
  r := (19231112175053 / 25000000000000 : ℚ)
  w := (263343146227 / 156250000000 : ℚ)
  center := (16520312500000001 / 50000000000000000 : ℚ)
  supportValue := (1365616427203543 / 2000000000000000 : ℚ)
  supportSlope := (-4905313209651041 / 1000000000000000 : ℚ)
  oldCenter := (1365616427203543 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_818
  oldPieces := [piece_1587]
}

def cell_8403 : Cell := { cellDefaults with
  domain := ⟨(16521875000000001 / 50000000000000000 : ℚ), (16525000000000001 / 50000000000000000 : ℚ)⟩
  r := (19231112175053 / 25000000000000 : ℚ)
  w := (263343146227 / 156250000000 : ℚ)
  center := (16523437500000001 / 50000000000000000 : ℚ)
  supportValue := (6825017397438397 / 10000000000000000 : ℚ)
  supportSlope := (-306379781934929 / 62500000000000 : ℚ)
  oldCenter := (6825017397438397 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_818
  oldLo := (13640000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1586, piece_1587]
}

def cell_8404 : Cell := { cellDefaults with
  domain := ⟨(16525000000000001 / 50000000000000000 : ℚ), (16528125000000001 / 50000000000000000 : ℚ)⟩
  center := (16526562500000001 / 50000000000000000 : ℚ)
  supportValue := (6834324277387889 / 10000000000000000 : ℚ)
  supportSlope := (-613543940246597 / 125000000000000 : ℚ)
  oldCenter := (6834324277387889 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_819
  oldLo := (13660000000000001 / 20000000000000000 : ℚ)
  oldHi := (13680000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1588, piece_1589]
}

def cell_8405 : Cell := { cellDefaults with
  domain := ⟨(16528125000000001 / 50000000000000000 : ℚ), (16531250000000001 / 50000000000000000 : ℚ)⟩
  center := (16529687500000001 / 50000000000000000 : ℚ)
  supportValue := (27325030233067 / 40000000000000 : ℚ)
  supportSlope := (-4905060411914519 / 1000000000000000 : ℚ)
  oldCenter := (27325030233067 / 40000000000000 : ℚ)
  newCoefficients := coefficients_819
  oldHi := (1367 / 2000 : ℚ)
  oldPieces := [piece_1587, piece_1588]
}

def cell_8406 : Cell := { cellDefaults with
  domain := ⟨(16531250000000001 / 50000000000000000 : ℚ), (16534375000000001 / 50000000000000000 : ℚ)⟩
  center := (16532812500000001 / 50000000000000000 : ℚ)
  supportValue := (85352410394407 / 125000000000000 : ℚ)
  supportSlope := (-24510103846697717 / 5000000000000000 : ℚ)
  oldCenter := (85352410394407 / 125000000000000 : ℚ)
  newCoefficients := coefficients_819
  oldPieces := [piece_1587]
}

def cell_8407 : Cell := { cellDefaults with
  domain := ⟨(16534375000000001 / 50000000000000000 : ℚ), (16537500000000001 / 50000000000000000 : ℚ)⟩
  center := (16535937500000001 / 50000000000000000 : ℚ)
  supportValue := (1365026029638861 / 2000000000000000 : ℚ)
  supportSlope := (-489877512116621 / 100000000000000 : ℚ)
  oldCenter := (1365026029638861 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_819
  oldLo := (13640000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1586, piece_1587]
}

def cell_8408 : Cell := { cellDefaults with
  domain := ⟨(16537500000000001 / 50000000000000000 : ℚ), (6615642458100559 / 20000000000000000 : ℚ)⟩
  center := (66153212290502797 / 200000000000000000 : ℚ)
  supportValue := (1364562322775911 / 2000000000000000 : ℚ)
  supportSlope := (-612051170357123 / 125000000000000 : ℚ)
  oldCenter := (1364562322775911 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_819
  oldLo := (13640000000000001 / 20000000000000000 : ℚ)
  oldHi := (273 / 400 : ℚ)
  oldPieces := [piece_1586]
}

def cell_8409 : Cell := { cellDefaults with
  domain := ⟨(6615642458100559 / 20000000000000000 : ℚ), (132334636871508387 / 400000000000000000 : ℚ)⟩
  center := (264647486033519567 / 800000000000000000 : ℚ)
  supportValue := (426293346352199 / 625000000000000 : ℚ)
  supportSlope := (-305883087719723 / 62500000000000 : ℚ)
  oldCenter := (426293346352199 / 625000000000000 : ℚ)
  newCoefficients := coefficients_820
  oldLo := (68149999999999999 / 100000000000000000 : ℚ)
  oldHi := (273 / 400 : ℚ)
  oldPieces := [piece_1585, piece_1586]
}

def cell_8410 : Cell := { cellDefaults with
  domain := ⟨(132334636871508387 / 400000000000000000 : ℚ), (66178212290502797 / 200000000000000000 : ℚ)⟩
  center := (264691061452513981 / 800000000000000000 : ℚ)
  supportValue := (6818028437863969 / 10000000000000000 : ℚ)
  supportSlope := (-2445735650230433 / 500000000000000 : ℚ)
  oldCenter := (6818028437863969 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_820
  oldLo := (68149999999999999 / 100000000000000000 : ℚ)
  oldHi := (13640000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1585]
}

def cell_8411 : Cell := { cellDefaults with
  domain := ⟨(66178212290502797 / 200000000000000000 : ℚ), (132378212290502801 / 400000000000000000 : ℚ)⟩
  center := (52946927374301679 / 160000000000000000 : ℚ)
  supportValue := (6815364907124893 / 10000000000000000 : ℚ)
  supportSlope := (-1222158145901639 / 250000000000000 : ℚ)
  oldCenter := (6815364907124893 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_820
  oldLo := (13620000000000001 / 20000000000000000 : ℚ)
  oldHi := (13640000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1584, piece_1585]
}

def cell_8412 : Cell := { cellDefaults with
  domain := ⟨(132378212290502801 / 400000000000000000 : ℚ), (16550000000000001 / 50000000000000000 : ℚ)⟩
  center := (264778212290502809 / 800000000000000000 : ℚ)
  supportValue := (681270279656391 / 1000000000000000 : ℚ)
  supportSlope := (-152685029866479 / 31250000000000 : ℚ)
  oldCenter := (681270279656391 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_820
  oldLo := (13620000000000001 / 20000000000000000 : ℚ)
  oldHi := (68149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1584]
}

def cell_8413 : Cell := { cellDefaults with
  domain := ⟨(16550000000000001 / 50000000000000000 : ℚ), (16553125000000001 / 50000000000000000 : ℚ)⟩
  r := (76811402677117 / 100000000000000 : ℚ)
  w := (16835843157933 / 10000000000000 : ℚ)
  center := (16551562500000001 / 50000000000000000 : ℚ)
  supportValue := (3411089472045419 / 5000000000000000 : ℚ)
  supportSlope := (-4892278822318019 / 1000000000000000 : ℚ)
  oldCenter := (3411089472045419 / 5000000000000000 : ℚ)
  oldLo := (13640000000000001 / 20000000000000000 : ℚ)
  oldHi := (273 / 400 : ℚ)
  oldPieces := [piece_1586]
}

def cell_8414 : Cell := { cellDefaults with
  domain := ⟨(16553125000000001 / 50000000000000000 : ℚ), (16556250000000001 / 50000000000000000 : ℚ)⟩
  r := (76811402677117 / 100000000000000 : ℚ)
  w := (16835843157933 / 10000000000000 : ℚ)
  center := (16554687500000001 / 50000000000000000 : ℚ)
  supportValue := (3409561131226183 / 5000000000000000 : ℚ)
  supportSlope := (-30557485636451 / 6250000000000 : ℚ)
  oldCenter := (3409561131226183 / 5000000000000000 : ℚ)
  oldLo := (68149999999999999 / 100000000000000000 : ℚ)
  oldHi := (273 / 400 : ℚ)
  oldPieces := [piece_1585, piece_1586]
}

def cell_8415 : Cell := { cellDefaults with
  domain := ⟨(16556250000000001 / 50000000000000000 : ℚ), (16559375000000001 / 50000000000000000 : ℚ)⟩
  r := (76811402677117 / 100000000000000 : ℚ)
  w := (16835843157933 / 10000000000000 : ℚ)
  center := (16557812500000001 / 50000000000000000 : ℚ)
  supportValue := (3408033763901823 / 5000000000000000 : ℚ)
  supportSlope := (-305370177792641 / 62500000000000 : ℚ)
  oldCenter := (3408033763901823 / 5000000000000000 : ℚ)
  oldLo := (13620000000000001 / 20000000000000000 : ℚ)
  oldHi := (13640000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1584, piece_1585]
}

def cell_8416 : Cell := { cellDefaults with
  domain := ⟨(16559375000000001 / 50000000000000000 : ℚ), (16562500000000001 / 50000000000000000 : ℚ)⟩
  r := (76811402677117 / 100000000000000 : ℚ)
  w := (16835843157933 / 10000000000000 : ℚ)
  center := (16560937500000001 / 50000000000000000 : ℚ)
  supportValue := (1362602951245181 / 2000000000000000 : ℚ)
  supportSlope := (-4882874044380259 / 1000000000000000 : ℚ)
  oldCenter := (1362602951245181 / 2000000000000000 : ℚ)
  oldLo := (13620000000000001 / 20000000000000000 : ℚ)
  oldHi := (68149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1584]
}

def cell_8417 : Cell := { cellDefaults with
  domain := ⟨(16562500000000001 / 50000000000000000 : ℚ), (16565625000000001 / 50000000000000000 : ℚ)⟩
  r := (76811402677117 / 100000000000000 : ℚ)
  w := (16835843157933 / 10000000000000 : ℚ)
  center := (16564062500000001 / 50000000000000000 : ℚ)
  supportValue := (3404982014952169 / 5000000000000000 : ℚ)
  supportSlope := (-975934506106313 / 200000000000000 : ℚ)
  oldCenter := (3404982014952169 / 5000000000000000 : ℚ)
  oldLo := (68049999999999999 / 100000000000000000 : ℚ)
  oldHi := (68149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1583, piece_1584]
}

def cell_8418 : Cell := { cellDefaults with
  domain := ⟨(16565625000000001 / 50000000000000000 : ℚ), (16568750000000001 / 50000000000000000 : ℚ)⟩
  r := (76811402677117 / 100000000000000 : ℚ)
  w := (16835843157933 / 10000000000000 : ℚ)
  center := (16567187500000001 / 50000000000000000 : ℚ)
  supportValue := (340345758354557 / 500000000000000 : ℚ)
  supportSlope := (-1219115372131263 / 250000000000000 : ℚ)
  oldCenter := (340345758354557 / 500000000000000 : ℚ)
  oldLo := (68049999999999999 / 100000000000000000 : ℚ)
  oldHi := (13620000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1583]
}

def cell_8419 : Cell := { cellDefaults with
  domain := ⟨(16568750000000001 / 50000000000000000 : ℚ), (16571875000000001 / 50000000000000000 : ℚ)⟩
  r := (76811402677117 / 100000000000000 : ℚ)
  w := (16835843157933 / 10000000000000 : ℚ)
  center := (16570312500000001 / 50000000000000000 : ℚ)
  supportValue := (1360773668720997 / 2000000000000000 : ℚ)
  supportSlope := (-2436715015615931 / 500000000000000 : ℚ)
  oldCenter := (1360773668720997 / 2000000000000000 : ℚ)
  oldLo := (13600000000000001 / 20000000000000000 : ℚ)
  oldHi := (13620000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1582, piece_1583]
}

def cell_8420 : Cell := { cellDefaults with
  domain := ⟨(16571875000000001 / 50000000000000000 : ℚ), (16575000000000001 / 50000000000000000 : ℚ)⟩
  r := (76811402677117 / 100000000000000 : ℚ)
  w := (16835843157933 / 10000000000000 : ℚ)
  center := (16573437500000001 / 50000000000000000 : ℚ)
  supportValue := (3400411742286729 / 5000000000000000 : ℚ)
  supportSlope := (-4870163840404729 / 1000000000000000 : ℚ)
  oldCenter := (3400411742286729 / 5000000000000000 : ℚ)
  oldLo := (67949999999999999 / 100000000000000000 : ℚ)
  oldHi := (68049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1581, piece_1582]
}

def cell_8421 : Cell := { cellDefaults with
  domain := ⟨(16575000000000001 / 50000000000000000 : ℚ), (16578125000000001 / 50000000000000000 : ℚ)⟩
  r := (76755023206041 / 100000000000000 : ℚ)
  w := (3365362882911 / 2000000000000 : ℚ)
  center := (16576562500000001 / 50000000000000000 : ℚ)
  supportValue := (425629760180823 / 625000000000000 : ℚ)
  supportSlope := (-4876378398385839 / 1000000000000000 : ℚ)
  oldCenter := (425629760180823 / 625000000000000 : ℚ)
  newCoefficients := coefficients_822
  oldLo := (68049999999999999 / 100000000000000000 : ℚ)
  oldHi := (68149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1583, piece_1584]
}

def cell_8422 : Cell := { cellDefaults with
  domain := ⟨(16578125000000001 / 50000000000000000 : ℚ), (16581250000000001 / 50000000000000000 : ℚ)⟩
  r := (76755023206041 / 100000000000000 : ℚ)
  w := (3365362882911 / 2000000000000 : ℚ)
  center := (16579687500000001 / 50000000000000000 : ℚ)
  supportValue := (6807029352828549 / 10000000000000000 : ℚ)
  supportSlope := (-48731924078389 / 10000000000000 : ℚ)
  oldCenter := (6807029352828549 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_822
  oldLo := (68049999999999999 / 100000000000000000 : ℚ)
  oldHi := (13620000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1583]
}

def cell_8423 : Cell := { cellDefaults with
  domain := ⟨(16581250000000001 / 50000000000000000 : ℚ), (16584375000000001 / 50000000000000000 : ℚ)⟩
  r := (76755023206041 / 100000000000000 : ℚ)
  w := (3365362882911 / 2000000000000 : ℚ)
  center := (16582812500000001 / 50000000000000000 : ℚ)
  supportValue := (1700996145230153 / 2500000000000000 : ℚ)
  supportSlope := (-9740302987424343 / 2000000000000000 : ℚ)
  oldCenter := (1700996145230153 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_822
  oldLo := (13600000000000001 / 20000000000000000 : ℚ)
  oldHi := (13620000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1582, piece_1583]
}

def cell_8424 : Cell := { cellDefaults with
  domain := ⟨(16584375000000001 / 50000000000000000 : ℚ), (16587500000000001 / 50000000000000000 : ℚ)⟩
  r := (76755023206041 / 100000000000000 : ℚ)
  w := (3365362882911 / 2000000000000 : ℚ)
  center := (16585937500000001 / 50000000000000000 : ℚ)
  supportValue := (3400470878756297 / 5000000000000000 : ℚ)
  supportSlope := (-4866892902747111 / 1000000000000000 : ℚ)
  oldCenter := (3400470878756297 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_822
  oldLo := (67949999999999999 / 100000000000000000 : ℚ)
  oldHi := (68049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1581, piece_1582]
}

def cell_8425 : Cell := { cellDefaults with
  domain := ⟨(16587500000000001 / 50000000000000000 : ℚ), (16590625000000001 / 50000000000000000 : ℚ)⟩
  r := (76755023206041 / 100000000000000 : ℚ)
  w := (3365362882911 / 2000000000000 : ℚ)
  center := (16589062500000001 / 50000000000000000 : ℚ)
  supportValue := (6797900873768513 / 10000000000000000 : ℚ)
  supportSlope := (-4863844610198953 / 1000000000000000 : ℚ)
  oldCenter := (6797900873768513 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_822
  oldLo := (67949999999999999 / 100000000000000000 : ℚ)
  oldHi := (13600000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1581]
}

def cell_8426 : Cell := { cellDefaults with
  domain := ⟨(16590625000000001 / 50000000000000000 : ℚ), (16593750000000001 / 50000000000000000 : ℚ)⟩
  r := (76755023206041 / 100000000000000 : ℚ)
  w := (3365362882911 / 2000000000000 : ℚ)
  center := (16592187500000001 / 50000000000000000 : ℚ)
  supportValue := (6794862025112893 / 10000000000000000 : ℚ)
  supportSlope := (-4860677612789743 / 1000000000000000 : ℚ)
  oldCenter := (6794862025112893 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_822
  oldLo := (6792178770949721 / 10000000000000000 : ℚ)
  oldHi := (13600000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1580, piece_1581]
}

def cell_8427 : Cell := { cellDefaults with
  domain := ⟨(16593750000000001 / 50000000000000000 : ℚ), (16596875000000001 / 50000000000000000 : ℚ)⟩
  r := (76755023206041 / 100000000000000 : ℚ)
  w := (3365362882911 / 2000000000000 : ℚ)
  center := (16595312500000001 / 50000000000000000 : ℚ)
  supportValue := (10612226621817 / 15625000000000 : ℚ)
  supportSlope := (-2428735036838603 / 500000000000000 : ℚ)
  oldCenter := (10612226621817 / 15625000000000 : ℚ)
  newCoefficients := coefficients_822
  oldLo := (13580000000000001 / 20000000000000000 : ℚ)
  oldHi := (67949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1579, piece_1580]
}

def cell_8428 : Cell := { cellDefaults with
  domain := ⟨(16596875000000001 / 50000000000000000 : ℚ), (16600000000000001 / 50000000000000000 : ℚ)⟩
  r := (76755023206041 / 100000000000000 : ℚ)
  w := (3365362882911 / 2000000000000 : ℚ)
  center := (16598437500000001 / 50000000000000000 : ℚ)
  supportValue := (6788790070414581 / 10000000000000000 : ℚ)
  supportSlope := (-970893976711551 / 200000000000000 : ℚ)
  oldCenter := (6788790070414581 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_822
  oldLo := (67849999999999999 / 100000000000000000 : ℚ)
  oldHi := (6792178770949721 / 10000000000000000 : ℚ)
  oldPieces := [piece_1578, piece_1579]
}

def cell_8429 : Cell := { cellDefaults with
  domain := ⟨(16600000000000001 / 50000000000000000 : ℚ), (16603125000000001 / 50000000000000000 : ℚ)⟩
  r := (38349370111149 / 50000000000000 : ℚ)
  w := (16817804348633 / 10000000000000 : ℚ)
  center := (16601562500000001 / 50000000000000000 : ℚ)
  supportValue := (3399008086911503 / 5000000000000000 : ℚ)
  supportSlope := (-4860583034052013 / 1000000000000000 : ℚ)
  oldCenter := (3399008086911503 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_823
  oldLo := (67949999999999999 / 100000000000000000 : ℚ)
  oldHi := (13600000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1581]
}

def cell_8430 : Cell := { cellDefaults with
  domain := ⟨(16603125000000001 / 50000000000000000 : ℚ), (16606250000000001 / 50000000000000000 : ℚ)⟩
  r := (38349370111149 / 50000000000000 : ℚ)
  w := (16817804348633 / 10000000000000 : ℚ)
  center := (16604687500000001 / 50000000000000000 : ℚ)
  supportValue := (6794979372181097 / 10000000000000000 : ℚ)
  supportSlope := (-4857406393483643 / 1000000000000000 : ℚ)
  oldCenter := (6794979372181097 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_823
  oldLo := (6792178770949721 / 10000000000000000 : ℚ)
  oldHi := (13600000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1580, piece_1581]
}

def cell_8431 : Cell := { cellDefaults with
  domain := ⟨(16606250000000001 / 50000000000000000 : ℚ), (16609375000000001 / 50000000000000000 : ℚ)⟩
  r := (38349370111149 / 50000000000000 : ℚ)
  w := (16817804348633 / 10000000000000 : ℚ)
  center := (16607812500000001 / 50000000000000000 : ℚ)
  supportValue := (6791944415932973 / 10000000000000000 : ℚ)
  supportSlope := (-606778094022431 / 125000000000000 : ℚ)
  oldCenter := (6791944415932973 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_823
  oldLo := (13580000000000001 / 20000000000000000 : ℚ)
  oldHi := (67949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1579, piece_1580]
}

def cell_8432 : Cell := { cellDefaults with
  domain := ⟨(16609375000000001 / 50000000000000000 : ℚ), (16612500000000001 / 50000000000000000 : ℚ)⟩
  r := (38349370111149 / 50000000000000 : ℚ)
  w := (16817804348633 / 10000000000000 : ℚ)
  center := (16610937500000001 / 50000000000000000 : ℚ)
  supportValue := (6788911485628799 / 10000000000000000 : ℚ)
  supportSlope := (-606401786042543 / 125000000000000 : ℚ)
  oldCenter := (6788911485628799 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_823
  oldLo := (67849999999999999 / 100000000000000000 : ℚ)
  oldHi := (6792178770949721 / 10000000000000000 : ℚ)
  oldPieces := [piece_1578, piece_1579]
}

def cell_8433 : Cell := { cellDefaults with
  domain := ⟨(16612500000000001 / 50000000000000000 : ℚ), (16615625000000001 / 50000000000000000 : ℚ)⟩
  r := (38349370111149 / 50000000000000 : ℚ)
  w := (16817804348633 / 10000000000000 : ℚ)
  center := (16614062500000001 / 50000000000000000 : ℚ)
  supportValue := (6785880499278983 / 10000000000000000 : ℚ)
  supportSlope := (-302998245268693 / 62500000000000 : ℚ)
  oldCenter := (6785880499278983 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_823
  oldLo := (13560000000000001 / 20000000000000000 : ℚ)
  oldHi := (13580000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1577, piece_1578]
}

def cell_8434 : Cell := { cellDefaults with
  domain := ⟨(16615625000000001 / 50000000000000000 : ℚ), (16618750000000001 / 50000000000000000 : ℚ)⟩
  r := (38349370111149 / 50000000000000 : ℚ)
  w := (16817804348633 / 10000000000000 : ℚ)
  center := (16617187500000001 / 50000000000000000 : ℚ)
  supportValue := (6782851435343371 / 10000000000000000 : ℚ)
  supportSlope := (-4844933556867659 / 1000000000000000 : ℚ)
  oldCenter := (6782851435343371 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_823
  oldLo := (13560000000000001 / 20000000000000000 : ℚ)
  oldHi := (67849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1577]
}

def cell_8435 : Cell := { cellDefaults with
  domain := ⟨(16618750000000001 / 50000000000000000 : ℚ), (16621875000000001 / 50000000000000000 : ℚ)⟩
  r := (38349370111149 / 50000000000000 : ℚ)
  w := (16817804348633 / 10000000000000 : ℚ)
  center := (16620312500000001 / 50000000000000000 : ℚ)
  supportValue := (3389912198246199 / 5000000000000000 : ℚ)
  supportSlope := (-484179130868867 / 100000000000000 : ℚ)
  oldCenter := (3389912198246199 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_823
  oldLo := (67749999999999999 / 100000000000000000 : ℚ)
  oldHi := (67849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1576, piece_1577]
}

def cell_8436 : Cell := { cellDefaults with
  domain := ⟨(16621875000000001 / 50000000000000000 : ℚ), (16625000000000001 / 50000000000000000 : ℚ)⟩
  r := (38349370111149 / 50000000000000 : ℚ)
  w := (16817804348633 / 10000000000000 : ℚ)
  center := (16623437500000001 / 50000000000000000 : ℚ)
  supportValue := (1694199802767141 / 2500000000000000 : ℚ)
  supportSlope := (-96771936798703 / 20000000000000 : ℚ)
  oldCenter := (1694199802767141 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_823
  oldLo := (67749999999999999 / 100000000000000000 : ℚ)
  oldHi := (13560000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1576]
}

def cell_8437 : Cell := { cellDefaults with
  domain := ⟨(16625000000000001 / 50000000000000000 : ℚ), (16628125000000001 / 50000000000000000 : ℚ)⟩
  r := (9580318968399 / 12500000000000 : ℚ)
  w := (8404407259987 / 5000000000000 : ℚ)
  center := (16626562500000001 / 50000000000000000 : ℚ)
  supportValue := (6785998435126007 / 10000000000000000 : ℚ)
  supportSlope := (-4844707493724343 / 1000000000000000 : ℚ)
  oldCenter := (6785998435126007 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_824
  oldLo := (13560000000000001 / 20000000000000000 : ℚ)
  oldHi := (13580000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1577, piece_1578]
}

def cell_8438 : Cell := { cellDefaults with
  domain := ⟨(16628125000000001 / 50000000000000000 : ℚ), (16631250000000001 / 50000000000000000 : ℚ)⟩
  r := (9580318968399 / 12500000000000 : ℚ)
  w := (8404407259987 / 5000000000000 : ℚ)
  center := (16629687500000001 / 50000000000000000 : ℚ)
  supportValue := (6782971408961719 / 10000000000000000 : ℚ)
  supportSlope := (-75651486836803 / 15625000000000 : ℚ)
  oldCenter := (6782971408961719 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_824
  oldLo := (13560000000000001 / 20000000000000000 : ℚ)
  oldHi := (67849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1577]
}

def cell_8439 : Cell := { cellDefaults with
  domain := ⟨(16631250000000001 / 50000000000000000 : ℚ), (16634375000000001 / 50000000000000000 : ℚ)⟩
  r := (9580318968399 / 12500000000000 : ℚ)
  w := (8404407259987 / 5000000000000 : ℚ)
  center := (16632812500000001 / 50000000000000000 : ℚ)
  supportValue := (847493300390757 / 1250000000000000 : ℚ)
  supportSlope := (-2419271238924381 / 500000000000000 : ℚ)
  oldCenter := (847493300390757 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_824
  oldLo := (67749999999999999 / 100000000000000000 : ℚ)
  oldHi := (67849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1576, piece_1577]
}

def cell_8440 : Cell := { cellDefaults with
  domain := ⟨(16634375000000001 / 50000000000000000 : ℚ), (16637500000000001 / 50000000000000000 : ℚ)⟩
  r := (9580318968399 / 12500000000000 : ℚ)
  w := (8404407259987 / 5000000000000 : ℚ)
  center := (16635937500000001 / 50000000000000000 : ℚ)
  supportValue := (6776923234142813 / 10000000000000000 : ℚ)
  supportSlope := (-4835374641547929 / 1000000000000000 : ℚ)
  oldCenter := (6776923234142813 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_824
  oldLo := (67749999999999999 / 100000000000000000 : ℚ)
  oldHi := (13560000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1576]
}

def cell_8441 : Cell := { cellDefaults with
  domain := ⟨(16637500000000001 / 50000000000000000 : ℚ), (16640625000000001 / 50000000000000000 : ℚ)⟩
  r := (9580318968399 / 12500000000000 : ℚ)
  w := (8404407259987 / 5000000000000 : ℚ)
  center := (16639062500000001 / 50000000000000000 : ℚ)
  supportValue := (3386951038989731 / 5000000000000000 : ℚ)
  supportSlope := (-4832384991392047 / 1000000000000000 : ℚ)
  oldCenter := (3386951038989731 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_824
  oldLo := (13540000000000001 / 20000000000000000 : ℚ)
  oldHi := (13560000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1575, piece_1576]
}

def cell_8442 : Cell := { cellDefaults with
  domain := ⟨(16640625000000001 / 50000000000000000 : ℚ), (16643750000000001 / 50000000000000000 : ℚ)⟩
  r := (9580318968399 / 12500000000000 : ℚ)
  w := (8404407259987 / 5000000000000 : ℚ)
  center := (16642187500000001 / 50000000000000000 : ℚ)
  supportValue := (3385441427687493 / 5000000000000000 : ℚ)
  supportSlope := (-2414579204415901 / 500000000000000 : ℚ)
  oldCenter := (3385441427687493 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_824
  oldLo := (67649999999999999 / 100000000000000000 : ℚ)
  oldHi := (67749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1574, piece_1575]
}

def cell_8443 : Cell := { cellDefaults with
  domain := ⟨(16643750000000001 / 50000000000000000 : ℚ), (16646875000000001 / 50000000000000000 : ℚ)⟩
  r := (9580318968399 / 12500000000000 : ℚ)
  w := (8404407259987 / 5000000000000 : ℚ)
  center := (16645312500000001 / 50000000000000000 : ℚ)
  supportValue := (6767865544072791 / 10000000000000000 : ℚ)
  supportSlope := (-4826139644659833 / 1000000000000000 : ℚ)
  oldCenter := (6767865544072791 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_824
  oldLo := (67649999999999999 / 100000000000000000 : ℚ)
  oldHi := (13540000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1574]
}

def cell_8444 : Cell := { cellDefaults with
  domain := ⟨(16646875000000001 / 50000000000000000 : ℚ), (16650000000000001 / 50000000000000000 : ℚ)⟩
  r := (9580318968399 / 12500000000000 : ℚ)
  w := (8404407259987 / 5000000000000 : ℚ)
  center := (16648437500000001 / 50000000000000000 : ℚ)
  supportValue := (6764850247894131 / 10000000000000000 : ℚ)
  supportSlope := (-1205753077375249 / 250000000000000 : ℚ)
  oldCenter := (6764850247894131 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_824
  oldLo := (13520000000000001 / 20000000000000000 : ℚ)
  oldHi := (13540000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1573, piece_1574]
}

def cell_8445 : Cell := { cellDefaults with
  domain := ⟨(16650000000000001 / 50000000000000000 : ℚ), (16653125000000001 / 50000000000000000 : ℚ)⟩
  r := (76586457257793 / 100000000000000 : ℚ)
  w := (8399921975091 / 5000000000000 : ℚ)
  center := (16651562500000001 / 50000000000000000 : ℚ)
  supportValue := (169350576955337 / 250000000000000 : ℚ)
  supportSlope := (-4829137271023853 / 1000000000000000 : ℚ)
  oldCenter := (169350576955337 / 250000000000000 : ℚ)
  newCoefficients := coefficients_825
  oldLo := (13540000000000001 / 20000000000000000 : ℚ)
  oldHi := (13560000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1575, piece_1576]
}

def cell_8446 : Cell := { cellDefaults with
  domain := ⟨(16653125000000001 / 50000000000000000 : ℚ), (16656250000000001 / 50000000000000000 : ℚ)⟩
  r := (76586457257793 / 100000000000000 : ℚ)
  w := (8399921975091 / 5000000000000 : ℚ)
  center := (16654687500000001 / 50000000000000000 : ℚ)
  supportValue := (6771005871718359 / 10000000000000000 : ℚ)
  supportSlope := (-2412958723132519 / 500000000000000 : ℚ)
  oldCenter := (6771005871718359 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_825
  oldLo := (67649999999999999 / 100000000000000000 : ℚ)
  oldHi := (67749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1574, piece_1575]
}

def cell_8447 : Cell := { cellDefaults with
  domain := ⟨(16656250000000001 / 50000000000000000 : ℚ), (16659375000000001 / 50000000000000000 : ℚ)⟩
  r := (76586457257793 / 100000000000000 : ℚ)
  w := (8399921975091 / 5000000000000 : ℚ)
  center := (16657812500000001 / 50000000000000000 : ℚ)
  supportValue := (676799058379391 / 1000000000000000 : ℚ)
  supportSlope := (-2411462334587 / 500000000000 : ℚ)
  oldCenter := (676799058379391 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_825
  oldLo := (67649999999999999 / 100000000000000000 : ℚ)
  oldHi := (13540000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1574]
}

def cell_8448 : Cell := { cellDefaults with
  domain := ⟨(16659375000000001 / 50000000000000000 : ℚ), (16662500000000001 / 50000000000000000 : ℚ)⟩
  r := (76586457257793 / 100000000000000 : ℚ)
  w := (8399921975091 / 5000000000000 : ℚ)
  center := (16660937500000001 / 50000000000000000 : ℚ)
  supportValue := (1691244326693921 / 2500000000000000 : ℚ)
  supportSlope := (-4819785208173499 / 1000000000000000 : ℚ)
  oldCenter := (1691244326693921 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_825
  oldLo := (13520000000000001 / 20000000000000000 : ℚ)
  oldHi := (13540000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1573, piece_1574]
}

def cell_8449 : Cell := { cellDefaults with
  domain := ⟨(16662500000000001 / 50000000000000000 : ℚ), (16665625000000001 / 50000000000000000 : ℚ)⟩
  r := (76586457257793 / 100000000000000 : ℚ)
  w := (8399921975091 / 5000000000000 : ℚ)
  center := (16664062500000001 / 50000000000000000 : ℚ)
  supportValue := (3380982926302489 / 5000000000000000 : ℚ)
  supportSlope := (-9633280256117871 / 2000000000000000 : ℚ)
  oldCenter := (3380982926302489 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_825
  oldLo := (13520000000000001 / 20000000000000000 : ℚ)
  oldHi := (67649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1573]
}

theorem check_8400 : cell_8400.check = true := by
  decide +kernel

theorem check_8401 : cell_8401.check = true := by
  decide +kernel

theorem check_8402 : cell_8402.check = true := by
  decide +kernel

theorem check_8403 : cell_8403.check = true := by
  decide +kernel

theorem check_8404 : cell_8404.check = true := by
  decide +kernel

theorem check_8405 : cell_8405.check = true := by
  decide +kernel

theorem check_8406 : cell_8406.check = true := by
  decide +kernel

theorem check_8407 : cell_8407.check = true := by
  decide +kernel

theorem check_8408 : cell_8408.check = true := by
  decide +kernel

theorem check_8409 : cell_8409.check = true := by
  decide +kernel

theorem check_8410 : cell_8410.check = true := by
  decide +kernel

theorem check_8411 : cell_8411.check = true := by
  decide +kernel

theorem check_8412 : cell_8412.check = true := by
  decide +kernel

theorem check_8413 : cell_8413.check = true := by
  decide +kernel

theorem check_8414 : cell_8414.check = true := by
  decide +kernel

theorem check_8415 : cell_8415.check = true := by
  decide +kernel

theorem check_8416 : cell_8416.check = true := by
  decide +kernel

theorem check_8417 : cell_8417.check = true := by
  decide +kernel

theorem check_8418 : cell_8418.check = true := by
  decide +kernel

theorem check_8419 : cell_8419.check = true := by
  decide +kernel

theorem check_8420 : cell_8420.check = true := by
  decide +kernel

theorem check_8421 : cell_8421.check = true := by
  decide +kernel

theorem check_8422 : cell_8422.check = true := by
  decide +kernel

theorem check_8423 : cell_8423.check = true := by
  decide +kernel

theorem check_8424 : cell_8424.check = true := by
  decide +kernel

theorem check_8425 : cell_8425.check = true := by
  decide +kernel

theorem check_8426 : cell_8426.check = true := by
  decide +kernel

theorem check_8427 : cell_8427.check = true := by
  decide +kernel

theorem check_8428 : cell_8428.check = true := by
  decide +kernel

theorem check_8429 : cell_8429.check = true := by
  decide +kernel

theorem check_8430 : cell_8430.check = true := by
  decide +kernel

theorem check_8431 : cell_8431.check = true := by
  decide +kernel

theorem check_8432 : cell_8432.check = true := by
  decide +kernel

theorem check_8433 : cell_8433.check = true := by
  decide +kernel

theorem check_8434 : cell_8434.check = true := by
  decide +kernel

theorem check_8435 : cell_8435.check = true := by
  decide +kernel

theorem check_8436 : cell_8436.check = true := by
  decide +kernel

theorem check_8437 : cell_8437.check = true := by
  decide +kernel

theorem check_8438 : cell_8438.check = true := by
  decide +kernel

theorem check_8439 : cell_8439.check = true := by
  decide +kernel

theorem check_8440 : cell_8440.check = true := by
  decide +kernel

theorem check_8441 : cell_8441.check = true := by
  decide +kernel

theorem check_8442 : cell_8442.check = true := by
  decide +kernel

theorem check_8443 : cell_8443.check = true := by
  decide +kernel

theorem check_8444 : cell_8444.check = true := by
  decide +kernel

theorem check_8445 : cell_8445.check = true := by
  decide +kernel

theorem check_8446 : cell_8446.check = true := by
  decide +kernel

theorem check_8447 : cell_8447.check = true := by
  decide +kernel

theorem check_8448 : cell_8448.check = true := by
  decide +kernel

theorem check_8449 : cell_8449.check = true := by
  decide +kernel

def cells : List Cell := [cell_8400, cell_8401, cell_8402, cell_8403, cell_8404, cell_8405, cell_8406, cell_8407, cell_8408, cell_8409, cell_8410, cell_8411, cell_8412, cell_8413, cell_8414, cell_8415, cell_8416, cell_8417, cell_8418, cell_8419, cell_8420, cell_8421, cell_8422, cell_8423, cell_8424, cell_8425, cell_8426, cell_8427, cell_8428, cell_8429, cell_8430, cell_8431, cell_8432, cell_8433, cell_8434, cell_8435, cell_8436, cell_8437, cell_8438, cell_8439, cell_8440, cell_8441, cell_8442, cell_8443, cell_8444, cell_8445, cell_8446, cell_8447, cell_8448, cell_8449]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8400, check_8401, check_8402, check_8403, check_8404, check_8405, check_8406, check_8407, check_8408, check_8409, check_8410, check_8411, check_8412, check_8413, check_8414, check_8415, check_8416, check_8417, check_8418, check_8419, check_8420, check_8421, check_8422, check_8423, check_8424, check_8425, check_8426, check_8427, check_8428, check_8429, check_8430, check_8431, check_8432, check_8433, check_8434, check_8435, check_8436, check_8437, check_8438, check_8439, check_8440, check_8441, check_8442, check_8443, check_8444, check_8445, check_8446, check_8447, check_8448, check_8449, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0168

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0168
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0168
open AnalyticBounds.ExpressionCertificate

theorem linked_8400 : Linked cell_8400 pieces := by
  apply Linked.of_piece piece_818 piece_818_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8400, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1588_mem, piece_1589_mem⟩

theorem linked_8401 : Linked cell_8401 pieces := by
  apply Linked.of_piece piece_818 piece_818_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8401, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1587_mem, piece_1588_mem⟩

theorem linked_8402 : Linked cell_8402 pieces := by
  apply Linked.of_piece piece_818 piece_818_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8402, List.cons_subset, List.nil_subset, and_true]
  exact piece_1587_mem

theorem linked_8403 : Linked cell_8403 pieces := by
  apply Linked.of_piece piece_818 piece_818_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8403, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1586_mem, piece_1587_mem⟩

theorem linked_8404 : Linked cell_8404 pieces := by
  apply Linked.of_piece piece_819 piece_819_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8404, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1588_mem, piece_1589_mem⟩

theorem linked_8405 : Linked cell_8405 pieces := by
  apply Linked.of_piece piece_819 piece_819_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8405, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1587_mem, piece_1588_mem⟩

theorem linked_8406 : Linked cell_8406 pieces := by
  apply Linked.of_piece piece_819 piece_819_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8406, List.cons_subset, List.nil_subset, and_true]
  exact piece_1587_mem

theorem linked_8407 : Linked cell_8407 pieces := by
  apply Linked.of_piece piece_819 piece_819_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8407, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1586_mem, piece_1587_mem⟩

theorem linked_8408 : Linked cell_8408 pieces := by
  apply Linked.of_piece piece_819 piece_819_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8408, List.cons_subset, List.nil_subset, and_true]
  exact piece_1586_mem

theorem linked_8409 : Linked cell_8409 pieces := by
  apply Linked.of_piece piece_820 piece_820_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8409, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1585_mem, piece_1586_mem⟩

theorem linked_8410 : Linked cell_8410 pieces := by
  apply Linked.of_piece piece_820 piece_820_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8410, List.cons_subset, List.nil_subset, and_true]
  exact piece_1585_mem

theorem linked_8411 : Linked cell_8411 pieces := by
  apply Linked.of_piece piece_820 piece_820_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8411, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1584_mem, piece_1585_mem⟩

theorem linked_8412 : Linked cell_8412 pieces := by
  apply Linked.of_piece piece_820 piece_820_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8412, List.cons_subset, List.nil_subset, and_true]
  exact piece_1584_mem

theorem linked_8413 : Linked cell_8413 pieces := by
  apply Linked.of_piece piece_821 piece_821_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8413, List.cons_subset, List.nil_subset, and_true]
  exact piece_1586_mem

theorem linked_8414 : Linked cell_8414 pieces := by
  apply Linked.of_piece piece_821 piece_821_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8414, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1585_mem, piece_1586_mem⟩

theorem linked_8415 : Linked cell_8415 pieces := by
  apply Linked.of_piece piece_821 piece_821_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8415, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1584_mem, piece_1585_mem⟩

theorem linked_8416 : Linked cell_8416 pieces := by
  apply Linked.of_piece piece_821 piece_821_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8416, List.cons_subset, List.nil_subset, and_true]
  exact piece_1584_mem

theorem linked_8417 : Linked cell_8417 pieces := by
  apply Linked.of_piece piece_821 piece_821_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8417, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1583_mem, piece_1584_mem⟩

theorem linked_8418 : Linked cell_8418 pieces := by
  apply Linked.of_piece piece_821 piece_821_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8418, List.cons_subset, List.nil_subset, and_true]
  exact piece_1583_mem

theorem linked_8419 : Linked cell_8419 pieces := by
  apply Linked.of_piece piece_821 piece_821_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8419, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1582_mem, piece_1583_mem⟩

theorem linked_8420 : Linked cell_8420 pieces := by
  apply Linked.of_piece piece_821 piece_821_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8420, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1581_mem, piece_1582_mem⟩

theorem linked_8421 : Linked cell_8421 pieces := by
  apply Linked.of_piece piece_822 piece_822_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8421, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1583_mem, piece_1584_mem⟩

theorem linked_8422 : Linked cell_8422 pieces := by
  apply Linked.of_piece piece_822 piece_822_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8422, List.cons_subset, List.nil_subset, and_true]
  exact piece_1583_mem

theorem linked_8423 : Linked cell_8423 pieces := by
  apply Linked.of_piece piece_822 piece_822_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8423, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1582_mem, piece_1583_mem⟩

theorem linked_8424 : Linked cell_8424 pieces := by
  apply Linked.of_piece piece_822 piece_822_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8424, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1581_mem, piece_1582_mem⟩

theorem linked_8425 : Linked cell_8425 pieces := by
  apply Linked.of_piece piece_822 piece_822_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8425, List.cons_subset, List.nil_subset, and_true]
  exact piece_1581_mem

theorem linked_8426 : Linked cell_8426 pieces := by
  apply Linked.of_piece piece_822 piece_822_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8426, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1580_mem, piece_1581_mem⟩

theorem linked_8427 : Linked cell_8427 pieces := by
  apply Linked.of_piece piece_822 piece_822_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8427, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1579_mem, piece_1580_mem⟩

theorem linked_8428 : Linked cell_8428 pieces := by
  apply Linked.of_piece piece_822 piece_822_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8428, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1578_mem, piece_1579_mem⟩

theorem linked_8429 : Linked cell_8429 pieces := by
  apply Linked.of_piece piece_823 piece_823_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8429, List.cons_subset, List.nil_subset, and_true]
  exact piece_1581_mem

theorem linked_8430 : Linked cell_8430 pieces := by
  apply Linked.of_piece piece_823 piece_823_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8430, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1580_mem, piece_1581_mem⟩

theorem linked_8431 : Linked cell_8431 pieces := by
  apply Linked.of_piece piece_823 piece_823_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8431, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1579_mem, piece_1580_mem⟩

theorem linked_8432 : Linked cell_8432 pieces := by
  apply Linked.of_piece piece_823 piece_823_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8432, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1578_mem, piece_1579_mem⟩

theorem linked_8433 : Linked cell_8433 pieces := by
  apply Linked.of_piece piece_823 piece_823_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8433, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1577_mem, piece_1578_mem⟩

theorem linked_8434 : Linked cell_8434 pieces := by
  apply Linked.of_piece piece_823 piece_823_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8434, List.cons_subset, List.nil_subset, and_true]
  exact piece_1577_mem

theorem linked_8435 : Linked cell_8435 pieces := by
  apply Linked.of_piece piece_823 piece_823_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8435, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1576_mem, piece_1577_mem⟩

theorem linked_8436 : Linked cell_8436 pieces := by
  apply Linked.of_piece piece_823 piece_823_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8436, List.cons_subset, List.nil_subset, and_true]
  exact piece_1576_mem

theorem linked_8437 : Linked cell_8437 pieces := by
  apply Linked.of_piece piece_824 piece_824_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8437, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1577_mem, piece_1578_mem⟩

theorem linked_8438 : Linked cell_8438 pieces := by
  apply Linked.of_piece piece_824 piece_824_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8438, List.cons_subset, List.nil_subset, and_true]
  exact piece_1577_mem

theorem linked_8439 : Linked cell_8439 pieces := by
  apply Linked.of_piece piece_824 piece_824_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8439, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1576_mem, piece_1577_mem⟩

theorem linked_8440 : Linked cell_8440 pieces := by
  apply Linked.of_piece piece_824 piece_824_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8440, List.cons_subset, List.nil_subset, and_true]
  exact piece_1576_mem

theorem linked_8441 : Linked cell_8441 pieces := by
  apply Linked.of_piece piece_824 piece_824_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8441, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1575_mem, piece_1576_mem⟩

theorem linked_8442 : Linked cell_8442 pieces := by
  apply Linked.of_piece piece_824 piece_824_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8442, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1574_mem, piece_1575_mem⟩

theorem linked_8443 : Linked cell_8443 pieces := by
  apply Linked.of_piece piece_824 piece_824_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8443, List.cons_subset, List.nil_subset, and_true]
  exact piece_1574_mem

theorem linked_8444 : Linked cell_8444 pieces := by
  apply Linked.of_piece piece_824 piece_824_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8444, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1573_mem, piece_1574_mem⟩

theorem linked_8445 : Linked cell_8445 pieces := by
  apply Linked.of_piece piece_825 piece_825_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8445, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1575_mem, piece_1576_mem⟩

theorem linked_8446 : Linked cell_8446 pieces := by
  apply Linked.of_piece piece_825 piece_825_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8446, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1574_mem, piece_1575_mem⟩

theorem linked_8447 : Linked cell_8447 pieces := by
  apply Linked.of_piece piece_825 piece_825_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8447, List.cons_subset, List.nil_subset, and_true]
  exact piece_1574_mem

theorem linked_8448 : Linked cell_8448 pieces := by
  apply Linked.of_piece piece_825 piece_825_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8448, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1573_mem, piece_1574_mem⟩

theorem linked_8449 : Linked cell_8449 pieces := by
  apply Linked.of_piece piece_825 piece_825_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_8449, List.cons_subset, List.nil_subset, and_true]
  exact piece_1573_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0168.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0168.cells,List.forall_mem_cons]
  exact ⟨linked_8400, linked_8401, linked_8402, linked_8403, linked_8404, linked_8405, linked_8406, linked_8407, linked_8408, linked_8409, linked_8410, linked_8411, linked_8412, linked_8413, linked_8414, linked_8415, linked_8416, linked_8417, linked_8418, linked_8419, linked_8420, linked_8421, linked_8422, linked_8423, linked_8424, linked_8425, linked_8426, linked_8427, linked_8428, linked_8429, linked_8430, linked_8431, linked_8432, linked_8433, linked_8434, linked_8435, linked_8436, linked_8437, linked_8438, linked_8439, linked_8440, linked_8441, linked_8442, linked_8443, linked_8444, linked_8445, linked_8446, linked_8447, linked_8448, linked_8449, by simp⟩

theorem covered : covers (16512500000000001 / 50000000000000000 : ℚ) (16665625000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0168.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0168
