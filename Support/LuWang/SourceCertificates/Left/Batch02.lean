import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData
import Support.LuWang.SourceCertificateAssembly

/-! Independent left-certificate batch: original chunks 0168–0179. -/

section
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
  link_source cell_8400 with piece_818 using piece_818_mem, ⟨piece_1588_mem, piece_1589_mem⟩

theorem linked_8401 : Linked cell_8401 pieces := by
  link_source cell_8401 with piece_818 using piece_818_mem, ⟨piece_1587_mem, piece_1588_mem⟩

theorem linked_8402 : Linked cell_8402 pieces := by
  link_source cell_8402 with piece_818 using piece_818_mem, piece_1587_mem

theorem linked_8403 : Linked cell_8403 pieces := by
  link_source cell_8403 with piece_818 using piece_818_mem, ⟨piece_1586_mem, piece_1587_mem⟩

theorem linked_8404 : Linked cell_8404 pieces := by
  link_source cell_8404 with piece_819 using piece_819_mem, ⟨piece_1588_mem, piece_1589_mem⟩

theorem linked_8405 : Linked cell_8405 pieces := by
  link_source cell_8405 with piece_819 using piece_819_mem, ⟨piece_1587_mem, piece_1588_mem⟩

theorem linked_8406 : Linked cell_8406 pieces := by
  link_source cell_8406 with piece_819 using piece_819_mem, piece_1587_mem

theorem linked_8407 : Linked cell_8407 pieces := by
  link_source cell_8407 with piece_819 using piece_819_mem, ⟨piece_1586_mem, piece_1587_mem⟩

theorem linked_8408 : Linked cell_8408 pieces := by
  link_source cell_8408 with piece_819 using piece_819_mem, piece_1586_mem

theorem linked_8409 : Linked cell_8409 pieces := by
  link_source cell_8409 with piece_820 using piece_820_mem, ⟨piece_1585_mem, piece_1586_mem⟩

theorem linked_8410 : Linked cell_8410 pieces := by
  link_source cell_8410 with piece_820 using piece_820_mem, piece_1585_mem

theorem linked_8411 : Linked cell_8411 pieces := by
  link_source cell_8411 with piece_820 using piece_820_mem, ⟨piece_1584_mem, piece_1585_mem⟩

theorem linked_8412 : Linked cell_8412 pieces := by
  link_source cell_8412 with piece_820 using piece_820_mem, piece_1584_mem

theorem linked_8413 : Linked cell_8413 pieces := by
  link_source cell_8413 with piece_821 using piece_821_mem, piece_1586_mem

theorem linked_8414 : Linked cell_8414 pieces := by
  link_source cell_8414 with piece_821 using piece_821_mem, ⟨piece_1585_mem, piece_1586_mem⟩

theorem linked_8415 : Linked cell_8415 pieces := by
  link_source cell_8415 with piece_821 using piece_821_mem, ⟨piece_1584_mem, piece_1585_mem⟩

theorem linked_8416 : Linked cell_8416 pieces := by
  link_source cell_8416 with piece_821 using piece_821_mem, piece_1584_mem

theorem linked_8417 : Linked cell_8417 pieces := by
  link_source cell_8417 with piece_821 using piece_821_mem, ⟨piece_1583_mem, piece_1584_mem⟩

theorem linked_8418 : Linked cell_8418 pieces := by
  link_source cell_8418 with piece_821 using piece_821_mem, piece_1583_mem

theorem linked_8419 : Linked cell_8419 pieces := by
  link_source cell_8419 with piece_821 using piece_821_mem, ⟨piece_1582_mem, piece_1583_mem⟩

theorem linked_8420 : Linked cell_8420 pieces := by
  link_source cell_8420 with piece_821 using piece_821_mem, ⟨piece_1581_mem, piece_1582_mem⟩

theorem linked_8421 : Linked cell_8421 pieces := by
  link_source cell_8421 with piece_822 using piece_822_mem, ⟨piece_1583_mem, piece_1584_mem⟩

theorem linked_8422 : Linked cell_8422 pieces := by
  link_source cell_8422 with piece_822 using piece_822_mem, piece_1583_mem

theorem linked_8423 : Linked cell_8423 pieces := by
  link_source cell_8423 with piece_822 using piece_822_mem, ⟨piece_1582_mem, piece_1583_mem⟩

theorem linked_8424 : Linked cell_8424 pieces := by
  link_source cell_8424 with piece_822 using piece_822_mem, ⟨piece_1581_mem, piece_1582_mem⟩

theorem linked_8425 : Linked cell_8425 pieces := by
  link_source cell_8425 with piece_822 using piece_822_mem, piece_1581_mem

theorem linked_8426 : Linked cell_8426 pieces := by
  link_source cell_8426 with piece_822 using piece_822_mem, ⟨piece_1580_mem, piece_1581_mem⟩

theorem linked_8427 : Linked cell_8427 pieces := by
  link_source cell_8427 with piece_822 using piece_822_mem, ⟨piece_1579_mem, piece_1580_mem⟩

theorem linked_8428 : Linked cell_8428 pieces := by
  link_source cell_8428 with piece_822 using piece_822_mem, ⟨piece_1578_mem, piece_1579_mem⟩

theorem linked_8429 : Linked cell_8429 pieces := by
  link_source cell_8429 with piece_823 using piece_823_mem, piece_1581_mem

theorem linked_8430 : Linked cell_8430 pieces := by
  link_source cell_8430 with piece_823 using piece_823_mem, ⟨piece_1580_mem, piece_1581_mem⟩

theorem linked_8431 : Linked cell_8431 pieces := by
  link_source cell_8431 with piece_823 using piece_823_mem, ⟨piece_1579_mem, piece_1580_mem⟩

theorem linked_8432 : Linked cell_8432 pieces := by
  link_source cell_8432 with piece_823 using piece_823_mem, ⟨piece_1578_mem, piece_1579_mem⟩

theorem linked_8433 : Linked cell_8433 pieces := by
  link_source cell_8433 with piece_823 using piece_823_mem, ⟨piece_1577_mem, piece_1578_mem⟩

theorem linked_8434 : Linked cell_8434 pieces := by
  link_source cell_8434 with piece_823 using piece_823_mem, piece_1577_mem

theorem linked_8435 : Linked cell_8435 pieces := by
  link_source cell_8435 with piece_823 using piece_823_mem, ⟨piece_1576_mem, piece_1577_mem⟩

theorem linked_8436 : Linked cell_8436 pieces := by
  link_source cell_8436 with piece_823 using piece_823_mem, piece_1576_mem

theorem linked_8437 : Linked cell_8437 pieces := by
  link_source cell_8437 with piece_824 using piece_824_mem, ⟨piece_1577_mem, piece_1578_mem⟩

theorem linked_8438 : Linked cell_8438 pieces := by
  link_source cell_8438 with piece_824 using piece_824_mem, piece_1577_mem

theorem linked_8439 : Linked cell_8439 pieces := by
  link_source cell_8439 with piece_824 using piece_824_mem, ⟨piece_1576_mem, piece_1577_mem⟩

theorem linked_8440 : Linked cell_8440 pieces := by
  link_source cell_8440 with piece_824 using piece_824_mem, piece_1576_mem

theorem linked_8441 : Linked cell_8441 pieces := by
  link_source cell_8441 with piece_824 using piece_824_mem, ⟨piece_1575_mem, piece_1576_mem⟩

theorem linked_8442 : Linked cell_8442 pieces := by
  link_source cell_8442 with piece_824 using piece_824_mem, ⟨piece_1574_mem, piece_1575_mem⟩

theorem linked_8443 : Linked cell_8443 pieces := by
  link_source cell_8443 with piece_824 using piece_824_mem, piece_1574_mem

theorem linked_8444 : Linked cell_8444 pieces := by
  link_source cell_8444 with piece_824 using piece_824_mem, ⟨piece_1573_mem, piece_1574_mem⟩

theorem linked_8445 : Linked cell_8445 pieces := by
  link_source cell_8445 with piece_825 using piece_825_mem, ⟨piece_1575_mem, piece_1576_mem⟩

theorem linked_8446 : Linked cell_8446 pieces := by
  link_source cell_8446 with piece_825 using piece_825_mem, ⟨piece_1574_mem, piece_1575_mem⟩

theorem linked_8447 : Linked cell_8447 pieces := by
  link_source cell_8447 with piece_825 using piece_825_mem, piece_1574_mem

theorem linked_8448 : Linked cell_8448 pieces := by
  link_source cell_8448 with piece_825 using piece_825_mem, ⟨piece_1573_mem, piece_1574_mem⟩

theorem linked_8449 : Linked cell_8449 pieces := by
  link_source cell_8449 with piece_825 using piece_825_mem, piece_1573_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0168.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0168.cells,List.forall_mem_cons]
  exact ⟨linked_8400, linked_8401, linked_8402, linked_8403, linked_8404, linked_8405, linked_8406, linked_8407, linked_8408, linked_8409, linked_8410, linked_8411, linked_8412, linked_8413, linked_8414, linked_8415, linked_8416, linked_8417, linked_8418, linked_8419, linked_8420, linked_8421, linked_8422, linked_8423, linked_8424, linked_8425, linked_8426, linked_8427, linked_8428, linked_8429, linked_8430, linked_8431, linked_8432, linked_8433, linked_8434, linked_8435, linked_8436, linked_8437, linked_8438, linked_8439, linked_8440, linked_8441, linked_8442, linked_8443, linked_8444, linked_8445, linked_8446, linked_8447, linked_8448, linked_8449, by simp⟩

theorem covered : covers (16512500000000001 / 50000000000000000 : ℚ) (16665625000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0168.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0168
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0169
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(16665625000000001 / 50000000000000000 : ℚ), (16668750000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (19132614916643 / 25000000000000 : ℚ)
  w := (2098861705569 / 1250000000000 : ℚ)
  center := (16667187500000001 / 50000000000000000 : ℚ)
  supportValue := (1689739101175751 / 2500000000000000 : ℚ)
  supportSlope := (-9627321247300813 / 2000000000000000 : ℚ)
  oldCenter := (1689739101175751 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_826
  oldLo := (16875000000000001 / 25000000000000000 : ℚ)
  oldHi := (67549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1572, piece_1573]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8450 : Cell := { cellDefaults with
  r := (76586457257793 / 100000000000000 : ℚ)
  w := (8399921975091 / 5000000000000 : ℚ)
  newCoefficients := coefficients_825
  oldLo := (67549999999999999 / 100000000000000000 : ℚ)
  oldHi := (67649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1572, piece_1573]
}

def cell_8451 : Cell := { cellDefaults with
  domain := ⟨(16668750000000001 / 50000000000000000 : ℚ), (16671875000000001 / 50000000000000000 : ℚ)⟩
  r := (76586457257793 / 100000000000000 : ℚ)
  w := (8399921975091 / 5000000000000 : ℚ)
  center := (16670312500000001 / 50000000000000000 : ℚ)
  supportValue := (6755948874381963 / 10000000000000000 : ℚ)
  supportSlope := (-4810449196995137 / 1000000000000000 : ℚ)
  oldCenter := (6755948874381963 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_825
  oldHi := (13520000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1571, piece_1572]
}

def cell_8452 : Cell := { cellDefaults with
  domain := ⟨(16671875000000001 / 50000000000000000 : ℚ), (16675000000000001 / 50000000000000000 : ℚ)⟩
  r := (76586457257793 / 100000000000000 : ℚ)
  w := (8399921975091 / 5000000000000 : ℚ)
  center := (16673437500000001 / 50000000000000000 : ℚ)
  supportValue := (6752943250817539 / 10000000000000000 : ℚ)
  supportSlope := (-961491768096323 / 200000000000000 : ℚ)
  oldCenter := (6752943250817539 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_825
  oldPieces := [piece_1571]
}

def cell_8453 : Cell := { cellDefaults with
  domain := ⟨(16675000000000001 / 50000000000000000 : ℚ), (16678125000000001 / 50000000000000000 : ℚ)⟩
  center := (16676562500000001 / 50000000000000000 : ℚ)
  supportValue := (3381044467685833 / 5000000000000000 : ℚ)
  supportSlope := (-4813424177534387 / 1000000000000000 : ℚ)
  oldCenter := (3381044467685833 / 5000000000000000 : ℚ)
  oldLo := (13520000000000001 / 20000000000000000 : ℚ)
  oldHi := (67649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1573]
}

def cell_8454 : Cell := { cellDefaults with
  domain := ⟨(16678125000000001 / 50000000000000000 : ℚ), (16681250000000001 / 50000000000000000 : ℚ)⟩
  center := (16679687500000001 / 50000000000000000 : ℚ)
  supportValue := (844885188343341 / 1250000000000000 : ℚ)
  supportSlope := (-120260845526321 / 25000000000000 : ℚ)
  oldCenter := (844885188343341 / 1250000000000000 : ℚ)
  oldLo := (67549999999999999 / 100000000000000000 : ℚ)
  oldHi := (67649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1572, piece_1573]
}

def cell_8455 : Cell := { cellDefaults with
  domain := ⟨(16681250000000001 / 50000000000000000 : ℚ), (16684375000000001 / 50000000000000000 : ℚ)⟩
  center := (16682812500000001 / 50000000000000000 : ℚ)
  supportValue := (6756075978745597 / 10000000000000000 : ℚ)
  supportSlope := (-4807230102880311 / 1000000000000000 : ℚ)
  oldCenter := (6756075978745597 / 10000000000000000 : ℚ)
  oldHi := (13520000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1571, piece_1572]
}

def cell_8456 : Cell := { cellDefaults with
  domain := ⟨(16684375000000001 / 50000000000000000 : ℚ), (16687500000000001 / 50000000000000000 : ℚ)⟩
  center := (16685937500000001 / 50000000000000000 : ℚ)
  supportValue := (3376536182297053 / 5000000000000000 : ℚ)
  supportSlope := (-4804267352270131 / 1000000000000000 : ℚ)
  oldCenter := (3376536182297053 / 5000000000000000 : ℚ)
  oldPieces := [piece_1571]
}

def cell_8457 : Cell := { cellDefaults with
  domain := ⟨(16687500000000001 / 50000000000000000 : ℚ), (16690625000000001 / 50000000000000000 : ℚ)⟩
  center := (16689062500000001 / 50000000000000000 : ℚ)
  supportValue := (1687517686183323 / 2500000000000000 : ℚ)
  supportSlope := (-4801132570921851 / 1000000000000000 : ℚ)
  oldCenter := (1687517686183323 / 2500000000000000 : ℚ)
  oldLo := (67449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1570, piece_1571]
}

def cell_8458 : Cell := { cellDefaults with
  domain := ⟨(16690625000000001 / 50000000000000000 : ℚ), (16693750000000001 / 50000000000000000 : ℚ)⟩
  center := (16692187500000001 / 50000000000000000 : ℚ)
  supportValue := (6747070940296277 / 10000000000000000 : ℚ)
  supportSlope := (-239901034152723 / 50000000000000 : ℚ)
  oldCenter := (6747070940296277 / 10000000000000000 : ℚ)
  oldLo := (67449999999999999 / 100000000000000000 : ℚ)
  oldHi := (16875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1570]
}

def cell_8459 : Cell := { cellDefaults with
  domain := ⟨(16693750000000001 / 50000000000000000 : ℚ), (16696875000000001 / 50000000000000000 : ℚ)⟩
  center := (16695312500000001 / 50000000000000000 : ℚ)
  supportValue := (1686018283610817 / 2500000000000000 : ℚ)
  supportSlope := (-1198760661453413 / 250000000000000 : ℚ)
  oldCenter := (1686018283610817 / 2500000000000000 : ℚ)
  oldLo := (16850000000000001 / 25000000000000000 : ℚ)
  oldHi := (16875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1569, piece_1570]
}

def cell_8460 : Cell := { cellDefaults with
  domain := ⟨(16696875000000001 / 50000000000000000 : ℚ), (16700000000000001 / 50000000000000000 : ℚ)⟩
  center := (16698437500000001 / 50000000000000000 : ℚ)
  supportValue := (6741077223646943 / 10000000000000000 : ℚ)
  supportSlope := (-4791847270865901 / 1000000000000000 : ℚ)
  oldCenter := (6741077223646943 / 10000000000000000 : ℚ)
  oldLo := (421054469273743 / 625000000000000 : ℚ)
  oldHi := (67449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1568, piece_1569]
}

def cell_8461 : Cell := { cellDefaults with
  domain := ⟨(16700000000000001 / 50000000000000000 : ℚ), (16703125000000001 / 50000000000000000 : ℚ)⟩
  r := (76474555274693 / 100000000000000 : ℚ)
  w := (839098122761 / 500000000000 : ℚ)
  center := (16701562500000001 / 50000000000000000 : ℚ)
  supportValue := (3375098430548919 / 5000000000000000 : ℚ)
  supportSlope := (-2398956447837719 / 500000000000000 : ℚ)
  oldCenter := (3375098430548919 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_827
  oldLo := (67449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1570, piece_1571]
}

def cell_8462 : Cell := { cellDefaults with
  domain := ⟨(16703125000000001 / 50000000000000000 : ℚ), (16706250000000001 / 50000000000000000 : ℚ)⟩
  r := (76474555274693 / 100000000000000 : ℚ)
  w := (839098122761 / 500000000000 : ℚ)
  center := (16704687500000001 / 50000000000000000 : ℚ)
  supportValue := (6747199066559003 / 10000000000000000 : ℚ)
  supportSlope := (-4794828068291679 / 1000000000000000 : ℚ)
  oldCenter := (6747199066559003 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_827
  oldLo := (67449999999999999 / 100000000000000000 : ℚ)
  oldHi := (16875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1570]
}

def cell_8463 : Cell := { cellDefaults with
  domain := ⟨(16706250000000001 / 50000000000000000 : ℚ), (16709375000000001 / 50000000000000000 : ℚ)⟩
  r := (76474555274693 / 100000000000000 : ℚ)
  w := (839098122761 / 500000000000 : ℚ)
  center := (16707812500000001 / 50000000000000000 : ℚ)
  supportValue := (210756352063661 / 312500000000000 : ℚ)
  supportSlope := (-958367590205711 / 200000000000000 : ℚ)
  oldCenter := (210756352063661 / 312500000000000 : ℚ)
  newCoefficients := coefficients_827
  oldLo := (16850000000000001 / 25000000000000000 : ℚ)
  oldHi := (16875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1569, piece_1570]
}

def cell_8464 : Cell := { cellDefaults with
  domain := ⟨(16709375000000001 / 50000000000000000 : ℚ), (16712500000000001 / 50000000000000000 : ℚ)⟩
  r := (76474555274693 / 100000000000000 : ℚ)
  w := (839098122761 / 500000000000 : ℚ)
  center := (16710937500000001 / 50000000000000000 : ℚ)
  supportValue := (6741209343362579 / 10000000000000000 : ℚ)
  supportSlope := (-9577299741089007 / 2000000000000000 : ℚ)
  oldCenter := (6741209343362579 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_827
  oldLo := (421054469273743 / 625000000000000 : ℚ)
  oldHi := (67449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1568, piece_1569]
}

def cell_8465 : Cell := { cellDefaults with
  domain := ⟨(16712500000000001 / 50000000000000000 : ℚ), (16715625000000001 / 50000000000000000 : ℚ)⟩
  r := (76474555274693 / 100000000000000 : ℚ)
  w := (839098122761 / 500000000000 : ℚ)
  center := (16714062500000001 / 50000000000000000 : ℚ)
  supportValue := (6738217336176747 / 10000000000000000 : ℚ)
  supportSlope := (-1196431597085379 / 250000000000000 : ℚ)
  oldCenter := (6738217336176747 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_827
  oldLo := (67349999999999999 / 100000000000000000 : ℚ)
  oldHi := (16850000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1567, piece_1568]
}

def cell_8466 : Cell := { cellDefaults with
  domain := ⟨(16715625000000001 / 50000000000000000 : ℚ), (16718750000000001 / 50000000000000000 : ℚ)⟩
  r := (76474555274693 / 100000000000000 : ℚ)
  w := (839098122761 / 500000000000 : ℚ)
  center := (16717187500000001 / 50000000000000000 : ℚ)
  supportValue := (6735227298653231 / 10000000000000000 : ℚ)
  supportSlope := (-95651717291787 / 20000000000000 : ℚ)
  oldCenter := (6735227298653231 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_827
  oldLo := (16825000000000001 / 25000000000000000 : ℚ)
  oldHi := (421054469273743 / 625000000000000 : ℚ)
  oldPieces := [piece_1566, piece_1567]
}

def cell_8467 : Cell := { cellDefaults with
  domain := ⟨(16718750000000001 / 50000000000000000 : ℚ), (16721875000000001 / 50000000000000000 : ℚ)⟩
  r := (76474555274693 / 100000000000000 : ℚ)
  w := (839098122761 / 500000000000 : ℚ)
  center := (16720312500000001 / 50000000000000000 : ℚ)
  supportValue := (269289563210279 / 400000000000000 : ℚ)
  supportSlope := (-9559032347439711 / 2000000000000000 : ℚ)
  oldCenter := (269289563210279 / 400000000000000 : ℚ)
  newCoefficients := coefficients_827
  oldLo := (16825000000000001 / 25000000000000000 : ℚ)
  oldHi := (67349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1566]
}

def cell_8468 : Cell := { cellDefaults with
  domain := ⟨(16721875000000001 / 50000000000000000 : ℚ), (16725000000000001 / 50000000000000000 : ℚ)⟩
  r := (76474555274693 / 100000000000000 : ℚ)
  w := (839098122761 / 500000000000 : ℚ)
  center := (16723437500000001 / 50000000000000000 : ℚ)
  supportValue := (3364626425460723 / 5000000000000000 : ℚ)
  supportSlope := (-4776529309548749 / 1000000000000000 : ℚ)
  oldCenter := (3364626425460723 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_827
  oldLo := (67249999999999999 / 100000000000000000 : ℚ)
  oldHi := (67349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1565, piece_1566]
}

def cell_8469 : Cell := { cellDefaults with
  domain := ⟨(16725000000000001 / 50000000000000000 : ℚ), (16728125000000001 / 50000000000000000 : ℚ)⟩
  r := (15283749121799 / 20000000000000 : ℚ)
  w := (16773051229521 / 10000000000000 : ℚ)
  center := (16726562500000001 / 50000000000000000 : ℚ)
  supportValue := (6738345796675823 / 10000000000000000 : ℚ)
  supportSlope := (-956508250614263 / 200000000000000 : ℚ)
  oldCenter := (6738345796675823 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_828
  oldLo := (67349999999999999 / 100000000000000000 : ℚ)
  oldHi := (16850000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1567, piece_1568]
}

def cell_8470 : Cell := { cellDefaults with
  domain := ⟨(16728125000000001 / 50000000000000000 : ℚ), (16731250000000001 / 50000000000000000 : ℚ)⟩
  r := (15283749121799 / 20000000000000 : ℚ)
  w := (16773051229521 / 10000000000000 : ℚ)
  center := (16729687500000001 / 50000000000000000 : ℚ)
  supportValue := (6735357747494523 / 10000000000000000 : ℚ)
  supportSlope := (-955877638651259 / 200000000000000 : ℚ)
  oldCenter := (6735357747494523 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_828
  oldLo := (16825000000000001 / 25000000000000000 : ℚ)
  oldHi := (421054469273743 / 625000000000000 : ℚ)
  oldPieces := [piece_1566, piece_1567]
}

def cell_8471 : Cell := { cellDefaults with
  domain := ⟨(16731250000000001 / 50000000000000000 : ℚ), (16734375000000001 / 50000000000000000 : ℚ)⟩
  r := (15283749121799 / 20000000000000 : ℚ)
  w := (16773051229521 / 10000000000000 : ℚ)
  center := (16732812500000001 / 50000000000000000 : ℚ)
  supportValue := (1346474305069329 / 2000000000000000 : ℚ)
  supportSlope := (-9552691903472521 / 2000000000000000 : ℚ)
  oldCenter := (1346474305069329 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_828
  oldLo := (16825000000000001 / 25000000000000000 : ℚ)
  oldHi := (67349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1566]
}

def cell_8472 : Cell := { cellDefaults with
  domain := ⟨(16734375000000001 / 50000000000000000 : ℚ), (16737500000000001 / 50000000000000000 : ℚ)⟩
  r := (15283749121799 / 20000000000000 : ℚ)
  w := (16773051229521 / 10000000000000 : ℚ)
  center := (16735937500000001 / 50000000000000000 : ℚ)
  supportValue := (6729387287914271 / 10000000000000000 : ℚ)
  supportSlope := (-954669185402679 / 200000000000000 : ℚ)
  oldCenter := (6729387287914271 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_828
  oldLo := (67249999999999999 / 100000000000000000 : ℚ)
  oldHi := (67349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1565, piece_1566]
}

def cell_8473 : Cell := { cellDefaults with
  domain := ⟨(16737500000000001 / 50000000000000000 : ℚ), (16740625000000001 / 50000000000000000 : ℚ)⟩
  r := (15283749121799 / 20000000000000 : ℚ)
  w := (16773051229521 / 10000000000000 : ℚ)
  center := (16739062500000001 / 50000000000000000 : ℚ)
  supportValue := (672640489983161 / 1000000000000000 : ℚ)
  supportSlope := (-74533948803579 / 15625000000000 : ℚ)
  oldCenter := (672640489983161 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_828
  oldLo := (16800000000000001 / 25000000000000000 : ℚ)
  oldHi := (16825000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1564, piece_1565]
}

def cell_8474 : Cell := { cellDefaults with
  domain := ⟨(16740625000000001 / 50000000000000000 : ℚ), (16743750000000001 / 50000000000000000 : ℚ)⟩
  r := (15283749121799 / 20000000000000 : ℚ)
  w := (16773051229521 / 10000000000000 : ℚ)
  center := (16742187500000001 / 50000000000000000 : ℚ)
  supportValue := (1344684887060311 / 2000000000000000 : ℚ)
  supportSlope := (-1191824454098267 / 250000000000000 : ℚ)
  oldCenter := (1344684887060311 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_828
  oldLo := (16800000000000001 / 25000000000000000 : ℚ)
  oldHi := (67249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1564]
}

def cell_8475 : Cell := { cellDefaults with
  domain := ⟨(16743750000000001 / 50000000000000000 : ℚ), (16746875000000001 / 50000000000000000 : ℚ)⟩
  r := (15283749121799 / 20000000000000 : ℚ)
  w := (16773051229521 / 10000000000000 : ℚ)
  center := (16745312500000001 / 50000000000000000 : ℚ)
  supportValue := (6720445909967617 / 10000000000000000 : ℚ)
  supportSlope := (-4764141607143557 / 1000000000000000 : ℚ)
  oldCenter := (6720445909967617 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_828
  oldLo := (67149999999999999 / 100000000000000000 : ℚ)
  oldHi := (67249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1563, piece_1564]
}

def cell_8476 : Cell := { cellDefaults with
  domain := ⟨(16746875000000001 / 50000000000000000 : ℚ), (16750000000000001 / 50000000000000000 : ℚ)⟩
  r := (15283749121799 / 20000000000000 : ℚ)
  w := (16773051229521 / 10000000000000 : ℚ)
  center := (16748437500000001 / 50000000000000000 : ℚ)
  supportValue := (1679367303414261 / 2500000000000000 : ℚ)
  supportSlope := (-4761123673212353 / 1000000000000000 : ℚ)
  oldCenter := (1679367303414261 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_828
  oldLo := (67149999999999999 / 100000000000000000 : ℚ)
  oldHi := (16800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1563]
}

def cell_8477 : Cell := { cellDefaults with
  domain := ⟨(16750000000000001 / 50000000000000000 : ℚ), (16753125000000001 / 50000000000000000 : ℚ)⟩
  r := (38181514441789 / 50000000000000 : ℚ)
  w := (8382079404437 / 5000000000000 : ℚ)
  center := (16751562500000001 / 50000000000000000 : ℚ)
  supportValue := (3363268188638513 / 5000000000000000 : ℚ)
  supportSlope := (-4766989534914501 / 1000000000000000 : ℚ)
  oldCenter := (3363268188638513 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_829
  oldLo := (67249999999999999 / 100000000000000000 : ℚ)
  oldHi := (16825000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1565]
}

def cell_8478 : Cell := { cellDefaults with
  domain := ⟨(16753125000000001 / 50000000000000000 : ℚ), (16756250000000001 / 50000000000000000 : ℚ)⟩
  r := (38181514441789 / 50000000000000 : ℚ)
  w := (8382079404437 / 5000000000000 : ℚ)
  center := (16754687500000001 / 50000000000000000 : ℚ)
  supportValue := (1680889476063003 / 2500000000000000 : ℚ)
  supportSlope := (-2382064261608363 / 500000000000000 : ℚ)
  oldCenter := (1680889476063003 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_829
  oldLo := (16800000000000001 / 25000000000000000 : ℚ)
  oldHi := (16825000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1564, piece_1565]
}

def cell_8479 : Cell := { cellDefaults with
  domain := ⟨(16756250000000001 / 50000000000000000 : ℚ), (16759375000000001 / 50000000000000000 : ℚ)⟩
  r := (38181514441789 / 50000000000000 : ℚ)
  w := (8382079404437 / 5000000000000 : ℚ)
  center := (16757812500000001 / 50000000000000000 : ℚ)
  supportValue := (1680145338261439 / 2500000000000000 : ℚ)
  supportSlope := (-4760965856128507 / 1000000000000000 : ℚ)
  oldCenter := (1680145338261439 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_829
  oldLo := (67149999999999999 / 100000000000000000 : ℚ)
  oldHi := (67249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1563, piece_1564]
}

def cell_8480 : Cell := { cellDefaults with
  domain := ⟨(16759375000000001 / 50000000000000000 : ℚ), (16762500000000001 / 50000000000000000 : ℚ)⟩
  r := (38181514441789 / 50000000000000 : ℚ)
  w := (8382079404437 / 5000000000000 : ℚ)
  center := (16760937500000001 / 50000000000000000 : ℚ)
  supportValue := (6717606639284591 / 10000000000000000 : ℚ)
  supportSlope := (-1903190481408501 / 400000000000000 : ℚ)
  oldCenter := (6717606639284591 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_829
  oldLo := (67149999999999999 / 100000000000000000 : ℚ)
  oldHi := (16800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1563]
}

def cell_8481 : Cell := { cellDefaults with
  domain := ⟨(16762500000000001 / 50000000000000000 : ℚ), (16765625000000001 / 50000000000000000 : ℚ)⟩
  r := (38181514441789 / 50000000000000 : ℚ)
  w := (8382079404437 / 5000000000000 : ℚ)
  center := (16764062500000001 / 50000000000000000 : ℚ)
  supportValue := (6714633900778917 / 10000000000000000 : ℚ)
  supportSlope := (-594369567199049 / 125000000000000 : ℚ)
  oldCenter := (6714633900778917 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_829
  oldLo := (16775000000000001 / 25000000000000000 : ℚ)
  oldHi := (16800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1562, piece_1563]
}

def cell_8482 : Cell := { cellDefaults with
  domain := ⟨(16765625000000001 / 50000000000000000 : ℚ), (16768750000000001 / 50000000000000000 : ℚ)⟩
  r := (38181514441789 / 50000000000000 : ℚ)
  w := (8382079404437 / 5000000000000 : ℚ)
  center := (16767187500000001 / 50000000000000000 : ℚ)
  supportValue := (6711662976987757 / 10000000000000000 : ℚ)
  supportSlope := (-4751825517807617 / 1000000000000000 : ℚ)
  oldCenter := (6711662976987757 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_829
  oldLo := (16775000000000001 / 25000000000000000 : ℚ)
  oldHi := (67149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1562]
}

def cell_8483 : Cell := { cellDefaults with
  domain := ⟨(16768750000000001 / 50000000000000000 : ℚ), (16771875000000001 / 50000000000000000 : ℚ)⟩
  r := (38181514441789 / 50000000000000 : ℚ)
  w := (8382079404437 / 5000000000000 : ℚ)
  center := (16770312500000001 / 50000000000000000 : ℚ)
  supportValue := (3354346995436167 / 5000000000000000 : ℚ)
  supportSlope := (-2374477336671177 / 500000000000000 : ℚ)
  oldCenter := (3354346995436167 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_829
  oldLo := (33524999999999999 / 50000000000000000 : ℚ)
  oldHi := (67149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1561, piece_1562]
}

def cell_8484 : Cell := { cellDefaults with
  domain := ⟨(16771875000000001 / 50000000000000000 : ℚ), (16775000000000001 / 50000000000000000 : ℚ)⟩
  r := (38181514441789 / 50000000000000 : ℚ)
  w := (8382079404437 / 5000000000000 : ℚ)
  center := (16773437500000001 / 50000000000000000 : ℚ)
  supportValue := (3352863453686019 / 5000000000000000 : ℚ)
  supportSlope := (-4745800056124239 / 1000000000000000 : ℚ)
  oldCenter := (3352863453686019 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_829
  oldLo := (16750000000000001 / 25000000000000000 : ℚ)
  oldHi := (16775000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1560, piece_1561]
}

def cell_8485 : Cell := { cellDefaults with
  domain := ⟨(16775000000000001 / 50000000000000000 : ℚ), (16778125000000001 / 50000000000000000 : ℚ)⟩
  r := (76307406262539 / 100000000000000 : ℚ)
  w := (16755286341939 / 10000000000000 : ℚ)
  center := (16776562500000001 / 50000000000000000 : ℚ)
  supportValue := (6714767626938917 / 10000000000000000 : ℚ)
  supportSlope := (-237589036648167 / 50000000000000 : ℚ)
  oldCenter := (6714767626938917 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_830
  oldLo := (16775000000000001 / 25000000000000000 : ℚ)
  oldHi := (16800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1562, piece_1563]
}

def cell_8486 : Cell := { cellDefaults with
  domain := ⟨(16778125000000001 / 50000000000000000 : ℚ), (16781250000000001 / 50000000000000000 : ℚ)⟩
  r := (76307406262539 / 100000000000000 : ℚ)
  w := (16755286341939 / 10000000000000 : ℚ)
  center := (16779687500000001 / 50000000000000000 : ℚ)
  supportValue := (3355899336437189 / 5000000000000000 : ℚ)
  supportSlope := (-4748677757756781 / 1000000000000000 : ℚ)
  oldCenter := (3355899336437189 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_830
  oldLo := (16775000000000001 / 25000000000000000 : ℚ)
  oldHi := (67149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1562]
}

def cell_8487 : Cell := { cellDefaults with
  domain := ⟨(16781250000000001 / 50000000000000000 : ℚ), (16784375000000001 / 50000000000000000 : ℚ)⟩
  r := (76307406262539 / 100000000000000 : ℚ)
  w := (16755286341939 / 10000000000000 : ℚ)
  center := (16782812500000001 / 50000000000000000 : ℚ)
  supportValue := (335441583247913 / 500000000000000 : ℚ)
  supportSlope := (-2372896619284859 / 500000000000000 : ℚ)
  oldCenter := (335441583247913 / 500000000000000 : ℚ)
  newCoefficients := coefficients_830
  oldLo := (33524999999999999 / 50000000000000000 : ℚ)
  oldHi := (67149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1561, piece_1562]
}

def cell_8488 : Cell := { cellDefaults with
  domain := ⟨(16784375000000001 / 50000000000000000 : ℚ), (16787500000000001 / 50000000000000000 : ℚ)⟩
  r := (76307406262539 / 100000000000000 : ℚ)
  w := (16755286341939 / 10000000000000 : ℚ)
  center := (16785937500000001 / 50000000000000000 : ℚ)
  supportValue := (8382333177289 / 12500000000000 : ℚ)
  supportSlope := (-474264560964599 / 100000000000000 : ℚ)
  oldCenter := (8382333177289 / 12500000000000 : ℚ)
  newCoefficients := coefficients_830
  oldLo := (16750000000000001 / 25000000000000000 : ℚ)
  oldHi := (16775000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1560, piece_1561]
}

def cell_8489 : Cell := { cellDefaults with
  domain := ⟨(16787500000000001 / 50000000000000000 : ℚ), (16790625000000001 / 50000000000000000 : ℚ)⟩
  r := (76307406262539 / 100000000000000 : ℚ)
  w := (16755286341939 / 10000000000000 : ℚ)
  center := (16789062500000001 / 50000000000000000 : ℚ)
  supportValue := (1340580654535761 / 2000000000000000 : ℚ)
  supportSlope := (-2369859058171997 / 500000000000000 : ℚ)
  oldCenter := (1340580654535761 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_830
  oldLo := (16750000000000001 / 25000000000000000 : ℚ)
  oldHi := (33524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1560]
}

def cell_8490 : Cell := { cellDefaults with
  domain := ⟨(16790625000000001 / 50000000000000000 : ℚ), (16793750000000001 / 50000000000000000 : ℚ)⟩
  r := (76307406262539 / 100000000000000 : ℚ)
  w := (16755286341939 / 10000000000000 : ℚ)
  center := (16792187500000001 / 50000000000000000 : ℚ)
  supportValue := (1674985492348881 / 2500000000000000 : ℚ)
  supportSlope := (-4736669042937791 / 1000000000000000 : ℚ)
  oldCenter := (1674985492348881 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_830
  oldLo := (33474999999999999 / 50000000000000000 : ℚ)
  oldHi := (33524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1559, piece_1560]
}

def cell_8491 : Cell := { cellDefaults with
  domain := ⟨(16793750000000001 / 50000000000000000 : ℚ), (16796875000000001 / 50000000000000000 : ℚ)⟩
  r := (76307406262539 / 100000000000000 : ℚ)
  w := (16755286341939 / 10000000000000 : ℚ)
  center := (16795312500000001 / 50000000000000000 : ℚ)
  supportValue := (1674245610043053 / 2500000000000000 : ℚ)
  supportSlope := (-4733603283899157 / 1000000000000000 : ℚ)
  oldCenter := (1674245610043053 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_830
  oldLo := (33474999999999999 / 50000000000000000 : ℚ)
  oldHi := (16750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1559]
}

def cell_8492 : Cell := { cellDefaults with
  domain := ⟨(16796875000000001 / 50000000000000000 : ℚ), (16800000000000001 / 50000000000000000 : ℚ)⟩
  r := (76307406262539 / 100000000000000 : ℚ)
  w := (16755286341939 / 10000000000000 : ℚ)
  center := (16798437500000001 / 50000000000000000 : ℚ)
  supportValue := (418376554301933 / 625000000000000 : ℚ)
  supportSlope := (-295668744112243 / 62500000000000 : ℚ)
  oldCenter := (418376554301933 / 625000000000000 : ℚ)
  newCoefficients := coefficients_830
  oldLo := (16725000000000001 / 25000000000000000 : ℚ)
  oldHi := (16750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1558, piece_1559]
}

def cell_8493 : Cell := { cellDefaults with
  domain := ⟨(16800000000000001 / 50000000000000000 : ℚ), (16803125000000001 / 50000000000000000 : ℚ)⟩
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  center := (16801562500000001 / 50000000000000000 : ℚ)
  supportValue := (1340607940530153 / 2000000000000000 : ℚ)
  supportSlope := (-2368288744927227 / 500000000000000 : ℚ)
  oldCenter := (1340607940530153 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_831
  oldLo := (16750000000000001 / 25000000000000000 : ℚ)
  oldHi := (33524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1560]
}

def cell_8494 : Cell := { cellDefaults with
  domain := ⟨(16803125000000001 / 50000000000000000 : ℚ), (16806250000000001 / 50000000000000000 : ℚ)⟩
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  center := (16804687500000001 / 50000000000000000 : ℚ)
  supportValue := (26800321462649 / 40000000000000 : ℚ)
  supportSlope := (-4733514586465759 / 1000000000000000 : ℚ)
  oldCenter := (26800321462649 / 40000000000000 : ℚ)
  newCoefficients := coefficients_831
  oldLo := (33474999999999999 / 50000000000000000 : ℚ)
  oldHi := (33524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1559, piece_1560]
}

def cell_8495 : Cell := { cellDefaults with
  domain := ⟨(16806250000000001 / 50000000000000000 : ℚ), (16809375000000001 / 50000000000000000 : ℚ)⟩
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  center := (16807812500000001 / 50000000000000000 : ℚ)
  supportValue := (3348561399941049 / 5000000000000000 : ℚ)
  supportSlope := (-946095532319191 / 200000000000000 : ℚ)
  oldCenter := (3348561399941049 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_831
  oldLo := (33474999999999999 / 50000000000000000 : ℚ)
  oldHi := (16750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1559]
}

def cell_8496 : Cell := { cellDefaults with
  domain := ⟨(16809375000000001 / 50000000000000000 : ℚ), (16812500000000001 / 50000000000000000 : ℚ)⟩
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  center := (16810937500000001 / 50000000000000000 : ℚ)
  supportValue := (6694167193389331 / 10000000000000000 : ℚ)
  supportSlope := (-4727559837636619 / 1000000000000000 : ℚ)
  oldCenter := (6694167193389331 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_831
  oldLo := (16725000000000001 / 25000000000000000 : ℚ)
  oldHi := (16750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1558, piece_1559]
}

def cell_8497 : Cell := { cellDefaults with
  domain := ⟨(16812500000000001 / 50000000000000000 : ℚ), (6726256983240223 / 20000000000000000 : ℚ)⟩
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  center := (67256284916201117 / 200000000000000000 : ℚ)
  supportValue := (6691205180695269 / 10000000000000000 : ℚ)
  supportSlope := (-9448840757539143 / 2000000000000000 : ℚ)
  oldCenter := (6691205180695269 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_831
  oldLo := (33424999999999999 / 50000000000000000 : ℚ)
  oldHi := (33474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1557, piece_1558]
}

def cell_8498 : Cell := { cellDefaults with
  domain := ⟨(6726256983240223 / 20000000000000000 : ℚ), (134543854748603347 / 400000000000000000 : ℚ)⟩
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  center := (269068994413407807 / 800000000000000000 : ℚ)
  supportValue := (3344308001252303 / 5000000000000000 : ℚ)
  supportSlope := (-2360982797529769 / 500000000000000 : ℚ)
  oldCenter := (3344308001252303 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_832
  oldLo := (33424999999999999 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1557]
}

def cell_8499 : Cell := { cellDefaults with
  domain := ⟨(134543854748603347 / 400000000000000000 : ℚ), (67281284916201117 / 200000000000000000 : ℚ)⟩
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  center := (269106424581005581 / 800000000000000000 : ℚ)
  supportValue := (167160181872793 / 250000000000000 : ℚ)
  supportSlope := (-4719518332307767 / 1000000000000000 : ℚ)
  oldCenter := (167160181872793 / 250000000000000 : ℚ)
  newCoefficients := coefficients_832
  oldLo := (33424999999999999 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1557]
}

theorem check_8450 : cell_8450.check = true := by
  decide +kernel

theorem check_8451 : cell_8451.check = true := by
  decide +kernel

theorem check_8452 : cell_8452.check = true := by
  decide +kernel

theorem check_8453 : cell_8453.check = true := by
  decide +kernel

theorem check_8454 : cell_8454.check = true := by
  decide +kernel

theorem check_8455 : cell_8455.check = true := by
  decide +kernel

theorem check_8456 : cell_8456.check = true := by
  decide +kernel

theorem check_8457 : cell_8457.check = true := by
  decide +kernel

theorem check_8458 : cell_8458.check = true := by
  decide +kernel

theorem check_8459 : cell_8459.check = true := by
  decide +kernel

theorem check_8460 : cell_8460.check = true := by
  decide +kernel

theorem check_8461 : cell_8461.check = true := by
  decide +kernel

theorem check_8462 : cell_8462.check = true := by
  decide +kernel

theorem check_8463 : cell_8463.check = true := by
  decide +kernel

theorem check_8464 : cell_8464.check = true := by
  decide +kernel

theorem check_8465 : cell_8465.check = true := by
  decide +kernel

theorem check_8466 : cell_8466.check = true := by
  decide +kernel

theorem check_8467 : cell_8467.check = true := by
  decide +kernel

theorem check_8468 : cell_8468.check = true := by
  decide +kernel

theorem check_8469 : cell_8469.check = true := by
  decide +kernel

theorem check_8470 : cell_8470.check = true := by
  decide +kernel

theorem check_8471 : cell_8471.check = true := by
  decide +kernel

theorem check_8472 : cell_8472.check = true := by
  decide +kernel

theorem check_8473 : cell_8473.check = true := by
  decide +kernel

theorem check_8474 : cell_8474.check = true := by
  decide +kernel

theorem check_8475 : cell_8475.check = true := by
  decide +kernel

theorem check_8476 : cell_8476.check = true := by
  decide +kernel

theorem check_8477 : cell_8477.check = true := by
  decide +kernel

theorem check_8478 : cell_8478.check = true := by
  decide +kernel

theorem check_8479 : cell_8479.check = true := by
  decide +kernel

theorem check_8480 : cell_8480.check = true := by
  decide +kernel

theorem check_8481 : cell_8481.check = true := by
  decide +kernel

theorem check_8482 : cell_8482.check = true := by
  decide +kernel

theorem check_8483 : cell_8483.check = true := by
  decide +kernel

theorem check_8484 : cell_8484.check = true := by
  decide +kernel

theorem check_8485 : cell_8485.check = true := by
  decide +kernel

theorem check_8486 : cell_8486.check = true := by
  decide +kernel

theorem check_8487 : cell_8487.check = true := by
  decide +kernel

theorem check_8488 : cell_8488.check = true := by
  decide +kernel

theorem check_8489 : cell_8489.check = true := by
  decide +kernel

theorem check_8490 : cell_8490.check = true := by
  decide +kernel

theorem check_8491 : cell_8491.check = true := by
  decide +kernel

theorem check_8492 : cell_8492.check = true := by
  decide +kernel

theorem check_8493 : cell_8493.check = true := by
  decide +kernel

theorem check_8494 : cell_8494.check = true := by
  decide +kernel

theorem check_8495 : cell_8495.check = true := by
  decide +kernel

theorem check_8496 : cell_8496.check = true := by
  decide +kernel

theorem check_8497 : cell_8497.check = true := by
  decide +kernel

theorem check_8498 : cell_8498.check = true := by
  decide +kernel

theorem check_8499 : cell_8499.check = true := by
  decide +kernel

def cells : List Cell := [cell_8450, cell_8451, cell_8452, cell_8453, cell_8454, cell_8455, cell_8456, cell_8457, cell_8458, cell_8459, cell_8460, cell_8461, cell_8462, cell_8463, cell_8464, cell_8465, cell_8466, cell_8467, cell_8468, cell_8469, cell_8470, cell_8471, cell_8472, cell_8473, cell_8474, cell_8475, cell_8476, cell_8477, cell_8478, cell_8479, cell_8480, cell_8481, cell_8482, cell_8483, cell_8484, cell_8485, cell_8486, cell_8487, cell_8488, cell_8489, cell_8490, cell_8491, cell_8492, cell_8493, cell_8494, cell_8495, cell_8496, cell_8497, cell_8498, cell_8499]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8450, check_8451, check_8452, check_8453, check_8454, check_8455, check_8456, check_8457, check_8458, check_8459, check_8460, check_8461, check_8462, check_8463, check_8464, check_8465, check_8466, check_8467, check_8468, check_8469, check_8470, check_8471, check_8472, check_8473, check_8474, check_8475, check_8476, check_8477, check_8478, check_8479, check_8480, check_8481, check_8482, check_8483, check_8484, check_8485, check_8486, check_8487, check_8488, check_8489, check_8490, check_8491, check_8492, check_8493, check_8494, check_8495, check_8496, check_8497, check_8498, check_8499, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0169

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0169
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0169
open AnalyticBounds.ExpressionCertificate

theorem linked_8450 : Linked cell_8450 pieces := by
  link_source cell_8450 with piece_825 using piece_825_mem, ⟨piece_1572_mem, piece_1573_mem⟩

theorem linked_8451 : Linked cell_8451 pieces := by
  link_source cell_8451 with piece_825 using piece_825_mem, ⟨piece_1571_mem, piece_1572_mem⟩

theorem linked_8452 : Linked cell_8452 pieces := by
  link_source cell_8452 with piece_825 using piece_825_mem, piece_1571_mem

theorem linked_8453 : Linked cell_8453 pieces := by
  link_source cell_8453 with piece_826 using piece_826_mem, piece_1573_mem

theorem linked_8454 : Linked cell_8454 pieces := by
  link_source cell_8454 with piece_826 using piece_826_mem, ⟨piece_1572_mem, piece_1573_mem⟩

theorem linked_8455 : Linked cell_8455 pieces := by
  link_source cell_8455 with piece_826 using piece_826_mem, ⟨piece_1571_mem, piece_1572_mem⟩

theorem linked_8456 : Linked cell_8456 pieces := by
  link_source cell_8456 with piece_826 using piece_826_mem, piece_1571_mem

theorem linked_8457 : Linked cell_8457 pieces := by
  link_source cell_8457 with piece_826 using piece_826_mem, ⟨piece_1570_mem, piece_1571_mem⟩

theorem linked_8458 : Linked cell_8458 pieces := by
  link_source cell_8458 with piece_826 using piece_826_mem, piece_1570_mem

theorem linked_8459 : Linked cell_8459 pieces := by
  link_source cell_8459 with piece_826 using piece_826_mem, ⟨piece_1569_mem, piece_1570_mem⟩

theorem linked_8460 : Linked cell_8460 pieces := by
  link_source cell_8460 with piece_826 using piece_826_mem, ⟨piece_1568_mem, piece_1569_mem⟩

theorem linked_8461 : Linked cell_8461 pieces := by
  link_source cell_8461 with piece_827 using piece_827_mem, ⟨piece_1570_mem, piece_1571_mem⟩

theorem linked_8462 : Linked cell_8462 pieces := by
  link_source cell_8462 with piece_827 using piece_827_mem, piece_1570_mem

theorem linked_8463 : Linked cell_8463 pieces := by
  link_source cell_8463 with piece_827 using piece_827_mem, ⟨piece_1569_mem, piece_1570_mem⟩

theorem linked_8464 : Linked cell_8464 pieces := by
  link_source cell_8464 with piece_827 using piece_827_mem, ⟨piece_1568_mem, piece_1569_mem⟩

theorem linked_8465 : Linked cell_8465 pieces := by
  link_source cell_8465 with piece_827 using piece_827_mem, ⟨piece_1567_mem, piece_1568_mem⟩

theorem linked_8466 : Linked cell_8466 pieces := by
  link_source cell_8466 with piece_827 using piece_827_mem, ⟨piece_1566_mem, piece_1567_mem⟩

theorem linked_8467 : Linked cell_8467 pieces := by
  link_source cell_8467 with piece_827 using piece_827_mem, piece_1566_mem

theorem linked_8468 : Linked cell_8468 pieces := by
  link_source cell_8468 with piece_827 using piece_827_mem, ⟨piece_1565_mem, piece_1566_mem⟩

theorem linked_8469 : Linked cell_8469 pieces := by
  link_source cell_8469 with piece_828 using piece_828_mem, ⟨piece_1567_mem, piece_1568_mem⟩

theorem linked_8470 : Linked cell_8470 pieces := by
  link_source cell_8470 with piece_828 using piece_828_mem, ⟨piece_1566_mem, piece_1567_mem⟩

theorem linked_8471 : Linked cell_8471 pieces := by
  link_source cell_8471 with piece_828 using piece_828_mem, piece_1566_mem

theorem linked_8472 : Linked cell_8472 pieces := by
  link_source cell_8472 with piece_828 using piece_828_mem, ⟨piece_1565_mem, piece_1566_mem⟩

theorem linked_8473 : Linked cell_8473 pieces := by
  link_source cell_8473 with piece_828 using piece_828_mem, ⟨piece_1564_mem, piece_1565_mem⟩

theorem linked_8474 : Linked cell_8474 pieces := by
  link_source cell_8474 with piece_828 using piece_828_mem, piece_1564_mem

theorem linked_8475 : Linked cell_8475 pieces := by
  link_source cell_8475 with piece_828 using piece_828_mem, ⟨piece_1563_mem, piece_1564_mem⟩

theorem linked_8476 : Linked cell_8476 pieces := by
  link_source cell_8476 with piece_828 using piece_828_mem, piece_1563_mem

theorem linked_8477 : Linked cell_8477 pieces := by
  link_source cell_8477 with piece_829 using piece_829_mem, piece_1565_mem

theorem linked_8478 : Linked cell_8478 pieces := by
  link_source cell_8478 with piece_829 using piece_829_mem, ⟨piece_1564_mem, piece_1565_mem⟩

theorem linked_8479 : Linked cell_8479 pieces := by
  link_source cell_8479 with piece_829 using piece_829_mem, ⟨piece_1563_mem, piece_1564_mem⟩

theorem linked_8480 : Linked cell_8480 pieces := by
  link_source cell_8480 with piece_829 using piece_829_mem, piece_1563_mem

theorem linked_8481 : Linked cell_8481 pieces := by
  link_source cell_8481 with piece_829 using piece_829_mem, ⟨piece_1562_mem, piece_1563_mem⟩

theorem linked_8482 : Linked cell_8482 pieces := by
  link_source cell_8482 with piece_829 using piece_829_mem, piece_1562_mem

theorem linked_8483 : Linked cell_8483 pieces := by
  link_source cell_8483 with piece_829 using piece_829_mem, ⟨piece_1561_mem, piece_1562_mem⟩

theorem linked_8484 : Linked cell_8484 pieces := by
  link_source cell_8484 with piece_829 using piece_829_mem, ⟨piece_1560_mem, piece_1561_mem⟩

theorem linked_8485 : Linked cell_8485 pieces := by
  link_source cell_8485 with piece_830 using piece_830_mem, ⟨piece_1562_mem, piece_1563_mem⟩

theorem linked_8486 : Linked cell_8486 pieces := by
  link_source cell_8486 with piece_830 using piece_830_mem, piece_1562_mem

theorem linked_8487 : Linked cell_8487 pieces := by
  link_source cell_8487 with piece_830 using piece_830_mem, ⟨piece_1561_mem, piece_1562_mem⟩

theorem linked_8488 : Linked cell_8488 pieces := by
  link_source cell_8488 with piece_830 using piece_830_mem, ⟨piece_1560_mem, piece_1561_mem⟩

theorem linked_8489 : Linked cell_8489 pieces := by
  link_source cell_8489 with piece_830 using piece_830_mem, piece_1560_mem

theorem linked_8490 : Linked cell_8490 pieces := by
  link_source cell_8490 with piece_830 using piece_830_mem, ⟨piece_1559_mem, piece_1560_mem⟩

theorem linked_8491 : Linked cell_8491 pieces := by
  link_source cell_8491 with piece_830 using piece_830_mem, piece_1559_mem

theorem linked_8492 : Linked cell_8492 pieces := by
  link_source cell_8492 with piece_830 using piece_830_mem, ⟨piece_1558_mem, piece_1559_mem⟩

theorem linked_8493 : Linked cell_8493 pieces := by
  link_source cell_8493 with piece_831 using piece_831_mem, piece_1560_mem

theorem linked_8494 : Linked cell_8494 pieces := by
  link_source cell_8494 with piece_831 using piece_831_mem, ⟨piece_1559_mem, piece_1560_mem⟩

theorem linked_8495 : Linked cell_8495 pieces := by
  link_source cell_8495 with piece_831 using piece_831_mem, piece_1559_mem

theorem linked_8496 : Linked cell_8496 pieces := by
  link_source cell_8496 with piece_831 using piece_831_mem, ⟨piece_1558_mem, piece_1559_mem⟩

theorem linked_8497 : Linked cell_8497 pieces := by
  link_source cell_8497 with piece_831 using piece_831_mem, ⟨piece_1557_mem, piece_1558_mem⟩

theorem linked_8498 : Linked cell_8498 pieces := by
  link_source cell_8498 with piece_832 using piece_832_mem, piece_1557_mem

theorem linked_8499 : Linked cell_8499 pieces := by
  link_source cell_8499 with piece_832 using piece_832_mem, piece_1557_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0169.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0169.cells,List.forall_mem_cons]
  exact ⟨linked_8450, linked_8451, linked_8452, linked_8453, linked_8454, linked_8455, linked_8456, linked_8457, linked_8458, linked_8459, linked_8460, linked_8461, linked_8462, linked_8463, linked_8464, linked_8465, linked_8466, linked_8467, linked_8468, linked_8469, linked_8470, linked_8471, linked_8472, linked_8473, linked_8474, linked_8475, linked_8476, linked_8477, linked_8478, linked_8479, linked_8480, linked_8481, linked_8482, linked_8483, linked_8484, linked_8485, linked_8486, linked_8487, linked_8488, linked_8489, linked_8490, linked_8491, linked_8492, linked_8493, linked_8494, linked_8495, linked_8496, linked_8497, linked_8498, linked_8499, by simp⟩

theorem covered : covers (16665625000000001 / 50000000000000000 : ℚ) (67281284916201117 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0169.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0169
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0170
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(67281284916201117 / 200000000000000000 : ℚ), (134581284916201121 / 400000000000000000 : ℚ)⟩
  branch := .left
  r := (7619643817523 / 10000000000000 : ℚ)
  w := (104609997833 / 62500000000 : ℚ)
  center := (53828770949720671 / 160000000000000000 : ℚ)
  supportValue := (1671049903598737 / 2500000000000000 : ℚ)
  supportSlope := (-4717466120507417 / 1000000000000000 : ℚ)
  oldCenter := (1671049903598737 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_833
  oldLo := (33374999999999999 / 50000000000000000 : ℚ)
  oldHi := (16700000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1556, piece_1557]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8500 : Cell := { cellDefaults with
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  newCoefficients := coefficients_832
  oldLo := (1336312849162011 / 2000000000000000 : ℚ)
  oldHi := (16725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1556, piece_1557]
}

def cell_8501 : Cell := { cellDefaults with
  domain := ⟨(134581284916201121 / 400000000000000000 : ℚ), (16825000000000001 / 50000000000000000 : ℚ)⟩
  r := (38125937648981 / 50000000000000 : ℚ)
  w := (1046652085133 / 625000000000 : ℚ)
  center := (269181284916201129 / 800000000000000000 : ℚ)
  supportValue := (3340996481196357 / 5000000000000000 : ℚ)
  supportSlope := (-235754159255509 / 50000000000000 : ℚ)
  oldCenter := (3340996481196357 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_832
  oldLo := (16700000000000001 / 25000000000000000 : ℚ)
  oldHi := (33424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1555, piece_1556]
}

def cell_8502 : Cell := { cellDefaults with
  domain := ⟨(16825000000000001 / 50000000000000000 : ℚ), (16828125000000001 / 50000000000000000 : ℚ)⟩
  center := (16826562500000001 / 50000000000000000 : ℚ)
  supportValue := (6691352245948339 / 10000000000000000 : ℚ)
  supportSlope := (-4721280611349243 / 1000000000000000 : ℚ)
  oldCenter := (6691352245948339 / 10000000000000000 : ℚ)
  oldLo := (33424999999999999 / 50000000000000000 : ℚ)
  oldHi := (33474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1557, piece_1558]
}

def cell_8503 : Cell := { cellDefaults with
  domain := ⟨(16828125000000001 / 50000000000000000 : ℚ), (16831250000000001 / 50000000000000000 : ℚ)⟩
  center := (16829687500000001 / 50000000000000000 : ℚ)
  supportValue := (1070144371529 / 1600000000000 : ℚ)
  supportSlope := (-4718454016288121 / 1000000000000000 : ℚ)
  oldCenter := (1070144371529 / 1600000000000 : ℚ)
  oldLo := (33424999999999999 / 50000000000000000 : ℚ)
  oldHi := (16725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1557]
}

def cell_8504 : Cell := { cellDefaults with
  domain := ⟨(16831250000000001 / 50000000000000000 : ℚ), (16834375000000001 / 50000000000000000 : ℚ)⟩
  center := (16832812500000001 / 50000000000000000 : ℚ)
  supportValue := (267418172265077 / 400000000000000 : ℚ)
  supportSlope := (-4715351137662083 / 1000000000000000 : ℚ)
  oldCenter := (267418172265077 / 400000000000000 : ℚ)
  oldLo := (1336312849162011 / 2000000000000000 : ℚ)
  oldHi := (16725000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1556, piece_1557]
}

def cell_8505 : Cell := { cellDefaults with
  domain := ⟨(16834375000000001 / 50000000000000000 : ℚ), (16837500000000001 / 50000000000000000 : ℚ)⟩
  center := (16835937500000001 / 50000000000000000 : ℚ)
  supportValue := (3341254043728157 / 5000000000000000 : ℚ)
  supportSlope := (-235619493180117 / 50000000000000 : ℚ)
  oldCenter := (3341254043728157 / 5000000000000000 : ℚ)
  oldLo := (16700000000000001 / 25000000000000000 : ℚ)
  oldHi := (33424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1555, piece_1556]
}

def cell_8506 : Cell := { cellDefaults with
  domain := ⟨(16837500000000001 / 50000000000000000 : ℚ), (16840625000000001 / 50000000000000000 : ℚ)⟩
  center := (16839062500000001 / 50000000000000000 : ℚ)
  supportValue := (6679563818368837 / 10000000000000000 : ℚ)
  supportSlope := (-2354714435362837 / 500000000000000 : ℚ)
  oldCenter := (6679563818368837 / 10000000000000000 : ℚ)
  oldHi := (1336312849162011 / 2000000000000000 : ℚ)
  oldPieces := [piece_1554, piece_1555]
}

def cell_8507 : Cell := { cellDefaults with
  domain := ⟨(16840625000000001 / 50000000000000000 : ℚ), (16843750000000001 / 50000000000000000 : ℚ)⟩
  center := (16842187500000001 / 50000000000000000 : ℚ)
  supportValue := (6676621341750533 / 10000000000000000 : ℚ)
  supportSlope := (-4706334188099959 / 1000000000000000 : ℚ)
  oldCenter := (6676621341750533 / 10000000000000000 : ℚ)
  oldPieces := [piece_1554]
}

def cell_8508 : Cell := { cellDefaults with
  domain := ⟨(16843750000000001 / 50000000000000000 : ℚ), (16846875000000001 / 50000000000000000 : ℚ)⟩
  center := (16845312500000001 / 50000000000000000 : ℚ)
  supportValue := (1334736154115429 / 2000000000000000 : ℚ)
  supportSlope := (-4703514115785623 / 1000000000000000 : ℚ)
  oldCenter := (1334736154115429 / 2000000000000000 : ℚ)
  oldLo := (16675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1553, piece_1554]
}

def cell_8509 : Cell := { cellDefaults with
  domain := ⟨(16846875000000001 / 50000000000000000 : ℚ), (16850000000000001 / 50000000000000000 : ℚ)⟩
  center := (16848437500000001 / 50000000000000000 : ℚ)
  supportValue := (6670742074936821 / 10000000000000000 : ℚ)
  supportSlope := (-470039976388037 / 100000000000000 : ℚ)
  oldCenter := (6670742074936821 / 10000000000000000 : ℚ)
  oldLo := (33324999999999999 / 50000000000000000 : ℚ)
  oldHi := (33374999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1552, piece_1553]
}

def cell_8510 : Cell := { cellDefaults with
  domain := ⟨(16850000000000001 / 50000000000000000 : ℚ), (16853125000000001 / 50000000000000000 : ℚ)⟩
  r := (76141094609413 / 100000000000000 : ℚ)
  w := (16728785550081 / 10000000000000 : ℚ)
  center := (16851562500000001 / 50000000000000000 : ℚ)
  supportValue := (1669926208877143 / 2500000000000000 : ℚ)
  supportSlope := (-470629468479089 / 100000000000000 : ℚ)
  oldCenter := (1669926208877143 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_834
  oldHi := (1336312849162011 / 2000000000000000 : ℚ)
  oldPieces := [piece_1554, piece_1555]
}

def cell_8511 : Cell := { cellDefaults with
  domain := ⟨(16853125000000001 / 50000000000000000 : ℚ), (16856250000000001 / 50000000000000000 : ℚ)⟩
  r := (76141094609413 / 100000000000000 : ℚ)
  w := (16728785550081 / 10000000000000 : ℚ)
  center := (16854687500000001 / 50000000000000000 : ℚ)
  supportValue := (834595537725383 / 1250000000000000 : ℚ)
  supportSlope := (-470322935269607 / 100000000000000 : ℚ)
  oldCenter := (834595537725383 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_834
  oldPieces := [piece_1554]
}

def cell_8512 : Cell := { cellDefaults with
  domain := ⟨(16856250000000001 / 50000000000000000 : ℚ), (16859375000000001 / 50000000000000000 : ℚ)⟩
  r := (76141094609413 / 100000000000000 : ℚ)
  w := (16728785550081 / 10000000000000 : ℚ)
  center := (16857812500000001 / 50000000000000000 : ℚ)
  supportValue := (1334765136553917 / 2000000000000000 : ℚ)
  supportSlope := (-9400788806907201 / 2000000000000000 : ℚ)
  oldCenter := (1334765136553917 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_834
  oldLo := (16675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1553, piece_1554]
}

def cell_8513 : Cell := { cellDefaults with
  domain := ⟨(16859375000000001 / 50000000000000000 : ℚ), (16862500000000001 / 50000000000000000 : ℚ)⟩
  r := (76141094609413 / 100000000000000 : ℚ)
  w := (16728785550081 / 10000000000000 : ℚ)
  center := (16860937500000001 / 50000000000000000 : ℚ)
  supportValue := (833861115078277 / 1250000000000000 : ℚ)
  supportSlope := (-4697287085274837 / 1000000000000000 : ℚ)
  oldCenter := (833861115078277 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_834
  oldLo := (33324999999999999 / 50000000000000000 : ℚ)
  oldHi := (33374999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1552, piece_1553]
}

def cell_8514 : Cell := { cellDefaults with
  domain := ⟨(16862500000000001 / 50000000000000000 : ℚ), (16865625000000001 / 50000000000000000 : ℚ)⟩
  r := (76141094609413 / 100000000000000 : ℚ)
  w := (16728785550081 / 10000000000000 : ℚ)
  center := (16864062500000001 / 50000000000000000 : ℚ)
  supportValue := (6667953985961051 / 10000000000000000 : ℚ)
  supportSlope := (-4694411323381331 / 1000000000000000 : ℚ)
  oldCenter := (6667953985961051 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_834
  oldLo := (33324999999999999 / 50000000000000000 : ℚ)
  oldHi := (16675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1552]
}

def cell_8515 : Cell := { cellDefaults with
  domain := ⟨(16865625000000001 / 50000000000000000 : ℚ), (16868750000000001 / 50000000000000000 : ℚ)⟩
  r := (76141094609413 / 100000000000000 : ℚ)
  w := (16728785550081 / 10000000000000 : ℚ)
  center := (16867187500000001 / 50000000000000000 : ℚ)
  supportValue := (3332510495105299 / 5000000000000000 : ℚ)
  supportSlope := (-4691397426231703 / 1000000000000000 : ℚ)
  oldCenter := (3332510495105299 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_834
  oldLo := (16650000000000001 / 25000000000000000 : ℚ)
  oldHi := (16675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1551, piece_1552]
}

def cell_8516 : Cell := { cellDefaults with
  domain := ⟨(16868750000000001 / 50000000000000000 : ℚ), (16871875000000001 / 50000000000000000 : ℚ)⟩
  r := (76141094609413 / 100000000000000 : ℚ)
  w := (16728785550081 / 10000000000000 : ℚ)
  center := (16870312500000001 / 50000000000000000 : ℚ)
  supportValue := (333104486769259 / 500000000000000 : ℚ)
  supportSlope := (-2344195571447827 / 500000000000000 : ℚ)
  oldCenter := (333104486769259 / 500000000000000 : ℚ)
  newCoefficients := coefficients_834
  oldLo := (16650000000000001 / 25000000000000000 : ℚ)
  oldHi := (33324999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1551]
}

def cell_8517 : Cell := { cellDefaults with
  domain := ⟨(16871875000000001 / 50000000000000000 : ℚ), (16875000000000001 / 50000000000000000 : ℚ)⟩
  r := (76141094609413 / 100000000000000 : ℚ)
  w := (16728785550081 / 10000000000000 : ℚ)
  center := (16873437500000001 / 50000000000000000 : ℚ)
  supportValue := (6659160419186457 / 10000000000000000 : ℚ)
  supportSlope := (-2342757504795401 / 500000000000000 : ℚ)
  oldCenter := (6659160419186457 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_834
  oldLo := (33274999999999999 / 50000000000000000 : ℚ)
  oldHi := (33324999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1550, piece_1551]
}

def cell_8518 : Cell := { cellDefaults with
  domain := ⟨(16875000000000001 / 50000000000000000 : ℚ), (16878125000000001 / 50000000000000000 : ℚ)⟩
  r := (76085841908821 / 100000000000000 : ℚ)
  w := (8359995351121 / 5000000000000 : ℚ)
  center := (16876562500000001 / 50000000000000000 : ℚ)
  supportValue := (266723905569779 / 400000000000000 : ℚ)
  supportSlope := (-4691313043359457 / 1000000000000000 : ℚ)
  oldCenter := (266723905569779 / 400000000000000 : ℚ)
  newCoefficients := coefficients_835
  oldLo := (33324999999999999 / 50000000000000000 : ℚ)
  oldHi := (16675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1552]
}

def cell_8519 : Cell := { cellDefaults with
  domain := ⟨(16878125000000001 / 50000000000000000 : ℚ), (16881250000000001 / 50000000000000000 : ℚ)⟩
  r := (76085841908821 / 100000000000000 : ℚ)
  w := (8359995351121 / 5000000000000 : ℚ)
  center := (16879687500000001 / 50000000000000000 : ℚ)
  supportValue := (833145822191939 / 1250000000000000 : ℚ)
  supportSlope := (-4688284063668391 / 1000000000000000 : ℚ)
  oldCenter := (833145822191939 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_835
  oldLo := (16650000000000001 / 25000000000000000 : ℚ)
  oldHi := (16675000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1551, piece_1552]
}

def cell_8520 : Cell := { cellDefaults with
  domain := ⟨(16881250000000001 / 50000000000000000 : ℚ), (16884375000000001 / 50000000000000000 : ℚ)⟩
  r := (76085841908821 / 100000000000000 : ℚ)
  w := (8359995351121 / 5000000000000 : ℚ)
  center := (16882812500000001 / 50000000000000000 : ℚ)
  supportValue := (1665559316562123 / 2500000000000000 : ℚ)
  supportSlope := (-1171326973005371 / 250000000000000 : ℚ)
  oldCenter := (1665559316562123 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_835
  oldLo := (16650000000000001 / 25000000000000000 : ℚ)
  oldHi := (33324999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1551]
}

def cell_8521 : Cell := { cellDefaults with
  domain := ⟨(16884375000000001 / 50000000000000000 : ℚ), (16887500000000001 / 50000000000000000 : ℚ)⟩
  r := (76085841908821 / 100000000000000 : ℚ)
  w := (8359995351121 / 5000000000000 : ℚ)
  center := (16885937500000001 / 50000000000000000 : ℚ)
  supportValue := (1664827472300977 / 2500000000000000 : ℚ)
  supportSlope := (-23412080306233207 / 5000000000000000 : ℚ)
  oldCenter := (1664827472300977 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_835
  oldLo := (33274999999999999 / 50000000000000000 : ℚ)
  oldHi := (33324999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1550, piece_1551]
}

def cell_8522 : Cell := { cellDefaults with
  domain := ⟨(16887500000000001 / 50000000000000000 : ℚ), (16890625000000001 / 50000000000000000 : ℚ)⟩
  r := (76085841908821 / 100000000000000 : ℚ)
  w := (8359995351121 / 5000000000000 : ℚ)
  center := (16889062500000001 / 50000000000000000 : ℚ)
  supportValue := (3328192155702631 / 5000000000000000 : ℚ)
  supportSlope := (-9358646730625253 / 2000000000000000 : ℚ)
  oldCenter := (3328192155702631 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_835
  oldLo := (16625000000000001 / 25000000000000000 : ℚ)
  oldHi := (16650000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1549, piece_1550]
}

def cell_8523 : Cell := { cellDefaults with
  domain := ⟨(16890625000000001 / 50000000000000000 : ℚ), (16893750000000001 / 50000000000000000 : ℚ)⟩
  r := (76085841908821 / 100000000000000 : ℚ)
  w := (8359995351121 / 5000000000000 : ℚ)
  center := (16892187500000001 / 50000000000000000 : ℚ)
  supportValue := (1663365149637497 / 2500000000000000 : ℚ)
  supportSlope := (-467654287035657 / 100000000000000 : ℚ)
  oldCenter := (1663365149637497 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_835
  oldLo := (16625000000000001 / 25000000000000000 : ℚ)
  oldHi := (33274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1549]
}

def cell_8524 : Cell := { cellDefaults with
  domain := ⟨(16893750000000001 / 50000000000000000 : ℚ), (16896875000000001 / 50000000000000000 : ℚ)⟩
  r := (76085841908821 / 100000000000000 : ℚ)
  w := (8359995351121 / 5000000000000 : ℚ)
  center := (16895312500000001 / 50000000000000000 : ℚ)
  supportValue := (831317345633517 / 1250000000000000 : ℚ)
  supportSlope := (-186938638524623 / 40000000000000 : ℚ)
  oldCenter := (831317345633517 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_835
  oldLo := (33224999999999999 / 50000000000000000 : ℚ)
  oldHi := (33274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1548, piece_1549]
}

def cell_8525 : Cell := { cellDefaults with
  domain := ⟨(16896875000000001 / 50000000000000000 : ℚ), (16900000000000001 / 50000000000000000 : ℚ)⟩
  r := (76085841908821 / 100000000000000 : ℚ)
  w := (8359995351121 / 5000000000000 : ℚ)
  center := (16898437500000001 / 50000000000000000 : ℚ)
  supportValue := (53180949695177 / 80000000000000 : ℚ)
  supportSlope := (-4670557984354673 / 1000000000000000 : ℚ)
  oldCenter := (53180949695177 / 80000000000000 : ℚ)
  newCoefficients := coefficients_835
  oldLo := (33224999999999999 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1548]
}

def cell_8526 : Cell := { cellDefaults with
  domain := ⟨(16900000000000001 / 50000000000000000 : ℚ), (16903125000000001 / 50000000000000000 : ℚ)⟩
  r := (76030681303199 / 100000000000000 : ℚ)
  w := (3342243064693 / 2000000000000 : ℚ)
  center := (16901562500000001 / 50000000000000000 : ℚ)
  supportValue := (83206627920787 / 125000000000000 : ℚ)
  supportSlope := (-116905702138137 / 25000000000000 : ℚ)
  oldCenter := (83206627920787 / 125000000000000 : ℚ)
  newCoefficients := coefficients_836
  oldLo := (33274999999999999 / 50000000000000000 : ℚ)
  oldHi := (16650000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1550]
}

def cell_8527 : Cell := { cellDefaults with
  domain := ⟨(16903125000000001 / 50000000000000000 : ℚ), (16906250000000001 / 50000000000000000 : ℚ)⟩
  r := (76030681303199 / 100000000000000 : ℚ)
  w := (3342243064693 / 2000000000000 : ℚ)
  center := (16904687500000001 / 50000000000000000 : ℚ)
  supportValue := (6653608459807007 / 10000000000000000 : ℚ)
  supportSlope := (-7477529920601 / 1600000000000 : ℚ)
  oldCenter := (6653608459807007 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_836
  oldLo := (16625000000000001 / 25000000000000000 : ℚ)
  oldHi := (16650000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1549, piece_1550]
}

def cell_8528 : Cell := { cellDefaults with
  domain := ⟨(16906250000000001 / 50000000000000000 : ℚ), (16909375000000001 / 50000000000000000 : ℚ)⟩
  r := (76030681303199 / 100000000000000 : ℚ)
  w := (3342243064693 / 2000000000000 : ℚ)
  center := (16907812500000001 / 50000000000000000 : ℚ)
  supportValue := (6650688546817579 / 10000000000000000 : ℚ)
  supportSlope := (-2335186580658899 / 500000000000000 : ℚ)
  oldCenter := (6650688546817579 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_836
  oldLo := (33224999999999999 / 50000000000000000 : ℚ)
  oldHi := (33274999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1548, piece_1549]
}

def cell_8529 : Cell := { cellDefaults with
  domain := ⟨(16909375000000001 / 50000000000000000 : ℚ), (16912500000000001 / 50000000000000000 : ℚ)⟩
  r := (76030681303199 / 100000000000000 : ℚ)
  w := (3342243064693 / 2000000000000 : ℚ)
  center := (16910937500000001 / 50000000000000000 : ℚ)
  supportValue := (83097130307133 / 125000000000000 : ℚ)
  supportSlope := (-1166873819218317 / 250000000000000 : ℚ)
  oldCenter := (83097130307133 / 125000000000000 : ℚ)
  newCoefficients := coefficients_836
  oldLo := (33224999999999999 / 50000000000000000 : ℚ)
  oldHi := (16625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1548]
}

def cell_8530 : Cell := { cellDefaults with
  domain := ⟨(16912500000000001 / 50000000000000000 : ℚ), (16915625000000001 / 50000000000000000 : ℚ)⟩
  r := (76030681303199 / 100000000000000 : ℚ)
  w := (3342243064693 / 2000000000000 : ℚ)
  center := (16914062500000001 / 50000000000000000 : ℚ)
  supportValue := (6644854227926819 / 10000000000000000 : ℚ)
  supportSlope := (-291533491421303 / 62500000000000 : ℚ)
  oldCenter := (6644854227926819 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_836
  oldLo := (66400000000000003 / 100000000000000000 : ℚ)
  oldHi := (16625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1547, piece_1548]
}

def cell_8531 : Cell := { cellDefaults with
  domain := ⟨(16915625000000001 / 50000000000000000 : ℚ), (16918750000000001 / 50000000000000000 : ℚ)⟩
  r := (76030681303199 / 100000000000000 : ℚ)
  w := (3342243064693 / 2000000000000 : ℚ)
  center := (16917187500000001 / 50000000000000000 : ℚ)
  supportValue := (6641939767196209 / 10000000000000000 : ℚ)
  supportSlope := (-4661532094043963 / 1000000000000000 : ℚ)
  oldCenter := (6641939767196209 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_836
  oldLo := (66400000000000003 / 100000000000000000 : ℚ)
  oldHi := (33224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1547]
}

def cell_8532 : Cell := { cellDefaults with
  domain := ⟨(16918750000000001 / 50000000000000000 : ℚ), (16921875000000001 / 50000000000000000 : ℚ)⟩
  r := (76030681303199 / 100000000000000 : ℚ)
  w := (3342243064693 / 2000000000000 : ℚ)
  center := (16920312500000001 / 50000000000000000 : ℚ)
  supportValue := (1659756803893199 / 2500000000000000 : ℚ)
  supportSlope := (-23293528669388053 / 5000000000000000 : ℚ)
  oldCenter := (1659756803893199 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_836
  oldLo := (33174999999999999 / 50000000000000000 : ℚ)
  oldHi := (33224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1546, piece_1547]
}

def cell_8533 : Cell := { cellDefaults with
  domain := ⟨(16921875000000001 / 50000000000000000 : ℚ), (16925000000000001 / 50000000000000000 : ℚ)⟩
  r := (76030681303199 / 100000000000000 : ℚ)
  w := (3342243064693 / 2000000000000 : ℚ)
  center := (16923437500000001 / 50000000000000000 : ℚ)
  supportValue := (6636116478081517 / 10000000000000000 : ℚ)
  supportSlope := (-4655630218920237 / 1000000000000000 : ℚ)
  oldCenter := (6636116478081517 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_836
  oldLo := (66300000000000003 / 100000000000000000 : ℚ)
  oldHi := (66400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1545, piece_1546]
}

def cell_8534 : Cell := { cellDefaults with
  domain := ⟨(16925000000000001 / 50000000000000000 : ℚ), (16928125000000001 / 50000000000000000 : ℚ)⟩
  r := (18993902931109 / 25000000000000 : ℚ)
  w := (32621991221 / 19531250000 : ℚ)
  center := (16926562500000001 / 50000000000000000 : ℚ)
  supportValue := (6645002459792967 / 10000000000000000 : ℚ)
  supportSlope := (-4661442597448939 / 1000000000000000 : ℚ)
  oldCenter := (6645002459792967 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_837
  oldLo := (66400000000000003 / 100000000000000000 : ℚ)
  oldHi := (16625000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1547, piece_1548]
}

def cell_8535 : Cell := { cellDefaults with
  domain := ⟨(16928125000000001 / 50000000000000000 : ℚ), (16931250000000001 / 50000000000000000 : ℚ)⟩
  r := (18993902931109 / 25000000000000 : ℚ)
  w := (32621991221 / 19531250000 : ℚ)
  center := (16929687500000001 / 50000000000000000 : ℚ)
  supportValue := (1328417983124163 / 2000000000000000 : ℚ)
  supportSlope := (-58230869049547 / 12500000000000 : ℚ)
  oldCenter := (1328417983124163 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_837
  oldLo := (66400000000000003 / 100000000000000000 : ℚ)
  oldHi := (33224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1547]
}

def cell_8536 : Cell := { cellDefaults with
  domain := ⟨(16931250000000001 / 50000000000000000 : ℚ), (16934375000000001 / 50000000000000000 : ℚ)⟩
  r := (18993902931109 / 25000000000000 : ℚ)
  w := (32621991221 / 19531250000 : ℚ)
  center := (16932812500000001 / 50000000000000000 : ℚ)
  supportValue := (6639179290512133 / 10000000000000000 : ℚ)
  supportSlope := (-581953381240119 / 125000000000000 : ℚ)
  oldCenter := (6639179290512133 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_837
  oldLo := (33174999999999999 / 50000000000000000 : ℚ)
  oldHi := (33224999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1546, piece_1547]
}

def cell_8537 : Cell := { cellDefaults with
  domain := ⟨(16934375000000001 / 50000000000000000 : ℚ), (16937500000000001 / 50000000000000000 : ℚ)⟩
  r := (18993902931109 / 25000000000000 : ℚ)
  w := (32621991221 / 19531250000 : ℚ)
  center := (16935937500000001 / 50000000000000000 : ℚ)
  supportValue := (663627046005079 / 1000000000000000 : ℚ)
  supportSlope := (-581569828396411 / 125000000000000 : ℚ)
  oldCenter := (663627046005079 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_837
  oldLo := (66300000000000003 / 100000000000000000 : ℚ)
  oldHi := (66400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1545, piece_1546]
}

def cell_8538 : Cell := { cellDefaults with
  domain := ⟨(16937500000000001 / 50000000000000000 : ℚ), (16940625000000001 / 50000000000000000 : ℚ)⟩
  r := (18993902931109 / 25000000000000 : ℚ)
  w := (32621991221 / 19531250000 : ℚ)
  center := (16939062500000001 / 50000000000000000 : ℚ)
  supportValue := (6633363466384239 / 10000000000000000 : ℚ)
  supportSlope := (-9299579481364617 / 2000000000000000 : ℚ)
  oldCenter := (6633363466384239 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_837
  oldLo := (66300000000000003 / 100000000000000000 : ℚ)
  oldHi := (33174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1545]
}

def cell_8539 : Cell := { cellDefaults with
  domain := ⟨(16940625000000001 / 50000000000000000 : ℚ), (16943750000000001 / 50000000000000000 : ℚ)⟩
  r := (18993902931109 / 25000000000000 : ℚ)
  w := (32621991221 / 19531250000 : ℚ)
  center := (16942187500000001 / 50000000000000000 : ℚ)
  supportValue := (828807293065511 / 1250000000000000 : ℚ)
  supportSlope := (-290422105047039 / 62500000000000 : ℚ)
  oldCenter := (828807293065511 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_837
  oldLo := (6626256983240223 / 10000000000000000 : ℚ)
  oldHi := (33174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1544, piece_1545]
}

def cell_8540 : Cell := { cellDefaults with
  domain := ⟨(16943750000000001 / 50000000000000000 : ℚ), (16946875000000001 / 50000000000000000 : ℚ)⟩
  r := (18993902931109 / 25000000000000 : ℚ)
  w := (32621991221 / 19531250000 : ℚ)
  center := (16945312500000001 / 50000000000000000 : ℚ)
  supportValue := (828444372220063 / 1250000000000000 : ℚ)
  supportSlope := (-9287723989857 / 2000000000000 : ℚ)
  oldCenter := (828444372220063 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_837
  oldLo := (33124999999999999 / 50000000000000000 : ℚ)
  oldHi := (66300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1543, piece_1544]
}

def cell_8541 : Cell := { cellDefaults with
  domain := ⟨(16946875000000001 / 50000000000000000 : ℚ), (16950000000000001 / 50000000000000000 : ℚ)⟩
  r := (18993902931109 / 25000000000000 : ℚ)
  w := (32621991221 / 19531250000 : ℚ)
  center := (16948437500000001 / 50000000000000000 : ℚ)
  supportValue := (3312326762720109 / 5000000000000000 : ℚ)
  supportSlope := (-4640955487342779 / 1000000000000000 : ℚ)
  oldCenter := (3312326762720109 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_837
  oldLo := (66200000000000003 / 100000000000000000 : ℚ)
  oldHi := (6626256983240223 / 10000000000000000 : ℚ)
  oldPieces := [piece_1542, piece_1543]
}

def cell_8542 : Cell := { cellDefaults with
  domain := ⟨(16950000000000001 / 50000000000000000 : ℚ), (16953125000000001 / 50000000000000000 : ℚ)⟩
  r := (75920634374959 / 100000000000000 : ℚ)
  w := (8346861150361 / 5000000000000 : ℚ)
  center := (16951562500000001 / 50000000000000000 : ℚ)
  supportValue := (6633514146059467 / 10000000000000000 : ℚ)
  supportSlope := (-580841714941549 / 125000000000000 : ℚ)
  oldCenter := (6633514146059467 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_838
  oldLo := (66300000000000003 / 100000000000000000 : ℚ)
  oldHi := (33174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1545]
}

def cell_8543 : Cell := { cellDefaults with
  domain := ⟨(16953125000000001 / 50000000000000000 : ℚ), (16956250000000001 / 50000000000000000 : ℚ)⟩
  r := (75920634374959 / 100000000000000 : ℚ)
  w := (8346861150361 / 5000000000000 : ℚ)
  center := (16954687500000001 / 50000000000000000 : ℚ)
  supportValue := (6630610931917007 / 10000000000000000 : ℚ)
  supportSlope := (-4643681037261871 / 1000000000000000 : ℚ)
  oldCenter := (6630610931917007 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_838
  oldLo := (6626256983240223 / 10000000000000000 : ℚ)
  oldHi := (33174999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1544, piece_1545]
}

def cell_8544 : Cell := { cellDefaults with
  domain := ⟨(16956250000000001 / 50000000000000000 : ℚ), (16959375000000001 / 50000000000000000 : ℚ)⟩
  r := (75920634374959 / 100000000000000 : ℚ)
  w := (8346861150361 / 5000000000000 : ℚ)
  center := (16957812500000001 / 50000000000000000 : ℚ)
  supportValue := (331385474166469 / 500000000000000 : ℚ)
  supportSlope := (-145025639572971 / 31250000000000 : ℚ)
  oldCenter := (331385474166469 / 500000000000000 : ℚ)
  newCoefficients := coefficients_838
  oldLo := (6626256983240223 / 10000000000000000 : ℚ)
  oldHi := (66300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1544]
}

def cell_8545 : Cell := { cellDefaults with
  domain := ⟨(16959375000000001 / 50000000000000000 : ℚ), (16962500000000001 / 50000000000000000 : ℚ)⟩
  r := (75920634374959 / 100000000000000 : ℚ)
  w := (8346861150361 / 5000000000000 : ℚ)
  center := (16960937500000001 / 50000000000000000 : ℚ)
  supportValue := (6624809944960887 / 10000000000000000 : ℚ)
  supportSlope := (-92757934014287 / 20000000000000 : ℚ)
  oldCenter := (6624809944960887 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_838
  oldLo := (66200000000000003 / 100000000000000000 : ℚ)
  oldHi := (66300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1542, piece_1543, piece_1544]
}

def cell_8546 : Cell := { cellDefaults with
  domain := ⟨(16962500000000001 / 50000000000000000 : ℚ), (16965625000000001 / 50000000000000000 : ℚ)⟩
  r := (75920634374959 / 100000000000000 : ℚ)
  w := (8346861150361 / 5000000000000 : ℚ)
  center := (16964062500000001 / 50000000000000000 : ℚ)
  supportValue := (82773901614507 / 125000000000000 : ℚ)
  supportSlope := (-463491500151747 / 100000000000000 : ℚ)
  oldCenter := (82773901614507 / 125000000000000 : ℚ)
  newCoefficients := coefficients_838
  oldLo := (66200000000000003 / 100000000000000000 : ℚ)
  oldHi := (33124999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1542]
}

def cell_8547 : Cell := { cellDefaults with
  domain := ⟨(16965625000000001 / 50000000000000000 : ℚ), (16968750000000001 / 50000000000000000 : ℚ)⟩
  r := (75920634374959 / 100000000000000 : ℚ)
  w := (8346861150361 / 5000000000000 : ℚ)
  center := (16967187500000001 / 50000000000000000 : ℚ)
  supportValue := (6619016202568897 / 10000000000000000 : ℚ)
  supportSlope := (-4632119970235493 / 1000000000000000 : ℚ)
  oldCenter := (6619016202568897 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_838
  oldLo := (33074999999999999 / 50000000000000000 : ℚ)
  oldHi := (33124999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1541, piece_1542]
}

def cell_8548 : Cell := { cellDefaults with
  domain := ⟨(16968750000000001 / 50000000000000000 : ℚ), (16971875000000001 / 50000000000000000 : ℚ)⟩
  r := (75920634374959 / 100000000000000 : ℚ)
  w := (8346861150361 / 5000000000000 : ℚ)
  center := (16970312500000001 / 50000000000000000 : ℚ)
  supportValue := (6616122073689281 / 10000000000000000 : ℚ)
  supportSlope := (-9258138431050611 / 2000000000000000 : ℚ)
  oldCenter := (6616122073689281 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_838
  oldLo := (66100000000000003 / 100000000000000000 : ℚ)
  oldHi := (66200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1540, piece_1541]
}

def cell_8549 : Cell := { cellDefaults with
  domain := ⟨(16971875000000001 / 50000000000000000 : ℚ), (16975000000000001 / 50000000000000000 : ℚ)⟩
  r := (75920634374959 / 100000000000000 : ℚ)
  w := (8346861150361 / 5000000000000 : ℚ)
  center := (16973437500000001 / 50000000000000000 : ℚ)
  supportValue := (6613229754309381 / 10000000000000000 : ℚ)
  supportSlope := (-23131495931938417 / 5000000000000000 : ℚ)
  oldCenter := (6613229754309381 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_838
  oldLo := (66100000000000003 / 100000000000000000 : ℚ)
  oldHi := (33074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1540]
}

theorem check_8500 : cell_8500.check = true := by
  decide +kernel

theorem check_8501 : cell_8501.check = true := by
  decide +kernel

theorem check_8502 : cell_8502.check = true := by
  decide +kernel

theorem check_8503 : cell_8503.check = true := by
  decide +kernel

theorem check_8504 : cell_8504.check = true := by
  decide +kernel

theorem check_8505 : cell_8505.check = true := by
  decide +kernel

theorem check_8506 : cell_8506.check = true := by
  decide +kernel

theorem check_8507 : cell_8507.check = true := by
  decide +kernel

theorem check_8508 : cell_8508.check = true := by
  decide +kernel

theorem check_8509 : cell_8509.check = true := by
  decide +kernel

theorem check_8510 : cell_8510.check = true := by
  decide +kernel

theorem check_8511 : cell_8511.check = true := by
  decide +kernel

theorem check_8512 : cell_8512.check = true := by
  decide +kernel

theorem check_8513 : cell_8513.check = true := by
  decide +kernel

theorem check_8514 : cell_8514.check = true := by
  decide +kernel

theorem check_8515 : cell_8515.check = true := by
  decide +kernel

theorem check_8516 : cell_8516.check = true := by
  decide +kernel

theorem check_8517 : cell_8517.check = true := by
  decide +kernel

theorem check_8518 : cell_8518.check = true := by
  decide +kernel

theorem check_8519 : cell_8519.check = true := by
  decide +kernel

theorem check_8520 : cell_8520.check = true := by
  decide +kernel

theorem check_8521 : cell_8521.check = true := by
  decide +kernel

theorem check_8522 : cell_8522.check = true := by
  decide +kernel

theorem check_8523 : cell_8523.check = true := by
  decide +kernel

theorem check_8524 : cell_8524.check = true := by
  decide +kernel

theorem check_8525 : cell_8525.check = true := by
  decide +kernel

theorem check_8526 : cell_8526.check = true := by
  decide +kernel

theorem check_8527 : cell_8527.check = true := by
  decide +kernel

theorem check_8528 : cell_8528.check = true := by
  decide +kernel

theorem check_8529 : cell_8529.check = true := by
  decide +kernel

theorem check_8530 : cell_8530.check = true := by
  decide +kernel

theorem check_8531 : cell_8531.check = true := by
  decide +kernel

theorem check_8532 : cell_8532.check = true := by
  decide +kernel

theorem check_8533 : cell_8533.check = true := by
  decide +kernel

theorem check_8534 : cell_8534.check = true := by
  decide +kernel

theorem check_8535 : cell_8535.check = true := by
  decide +kernel

theorem check_8536 : cell_8536.check = true := by
  decide +kernel

theorem check_8537 : cell_8537.check = true := by
  decide +kernel

theorem check_8538 : cell_8538.check = true := by
  decide +kernel

theorem check_8539 : cell_8539.check = true := by
  decide +kernel

theorem check_8540 : cell_8540.check = true := by
  decide +kernel

theorem check_8541 : cell_8541.check = true := by
  decide +kernel

theorem check_8542 : cell_8542.check = true := by
  decide +kernel

theorem check_8543 : cell_8543.check = true := by
  decide +kernel

theorem check_8544 : cell_8544.check = true := by
  decide +kernel

theorem check_8545 : cell_8545.check = true := by
  decide +kernel

theorem check_8546 : cell_8546.check = true := by
  decide +kernel

theorem check_8547 : cell_8547.check = true := by
  decide +kernel

theorem check_8548 : cell_8548.check = true := by
  decide +kernel

theorem check_8549 : cell_8549.check = true := by
  decide +kernel

def cells : List Cell := [cell_8500, cell_8501, cell_8502, cell_8503, cell_8504, cell_8505, cell_8506, cell_8507, cell_8508, cell_8509, cell_8510, cell_8511, cell_8512, cell_8513, cell_8514, cell_8515, cell_8516, cell_8517, cell_8518, cell_8519, cell_8520, cell_8521, cell_8522, cell_8523, cell_8524, cell_8525, cell_8526, cell_8527, cell_8528, cell_8529, cell_8530, cell_8531, cell_8532, cell_8533, cell_8534, cell_8535, cell_8536, cell_8537, cell_8538, cell_8539, cell_8540, cell_8541, cell_8542, cell_8543, cell_8544, cell_8545, cell_8546, cell_8547, cell_8548, cell_8549]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8500, check_8501, check_8502, check_8503, check_8504, check_8505, check_8506, check_8507, check_8508, check_8509, check_8510, check_8511, check_8512, check_8513, check_8514, check_8515, check_8516, check_8517, check_8518, check_8519, check_8520, check_8521, check_8522, check_8523, check_8524, check_8525, check_8526, check_8527, check_8528, check_8529, check_8530, check_8531, check_8532, check_8533, check_8534, check_8535, check_8536, check_8537, check_8538, check_8539, check_8540, check_8541, check_8542, check_8543, check_8544, check_8545, check_8546, check_8547, check_8548, check_8549, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0170

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0170
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0170
open AnalyticBounds.ExpressionCertificate

theorem linked_8500 : Linked cell_8500 pieces := by
  link_source cell_8500 with piece_832 using piece_832_mem, ⟨piece_1556_mem, piece_1557_mem⟩

theorem linked_8501 : Linked cell_8501 pieces := by
  link_source cell_8501 with piece_832 using piece_832_mem, ⟨piece_1555_mem, piece_1556_mem⟩

theorem linked_8502 : Linked cell_8502 pieces := by
  link_source cell_8502 with piece_833 using piece_833_mem, ⟨piece_1557_mem, piece_1558_mem⟩

theorem linked_8503 : Linked cell_8503 pieces := by
  link_source cell_8503 with piece_833 using piece_833_mem, piece_1557_mem

theorem linked_8504 : Linked cell_8504 pieces := by
  link_source cell_8504 with piece_833 using piece_833_mem, ⟨piece_1556_mem, piece_1557_mem⟩

theorem linked_8505 : Linked cell_8505 pieces := by
  link_source cell_8505 with piece_833 using piece_833_mem, ⟨piece_1555_mem, piece_1556_mem⟩

theorem linked_8506 : Linked cell_8506 pieces := by
  link_source cell_8506 with piece_833 using piece_833_mem, ⟨piece_1554_mem, piece_1555_mem⟩

theorem linked_8507 : Linked cell_8507 pieces := by
  link_source cell_8507 with piece_833 using piece_833_mem, piece_1554_mem

theorem linked_8508 : Linked cell_8508 pieces := by
  link_source cell_8508 with piece_833 using piece_833_mem, ⟨piece_1553_mem, piece_1554_mem⟩

theorem linked_8509 : Linked cell_8509 pieces := by
  link_source cell_8509 with piece_833 using piece_833_mem, ⟨piece_1552_mem, piece_1553_mem⟩

theorem linked_8510 : Linked cell_8510 pieces := by
  link_source cell_8510 with piece_834 using piece_834_mem, ⟨piece_1554_mem, piece_1555_mem⟩

theorem linked_8511 : Linked cell_8511 pieces := by
  link_source cell_8511 with piece_834 using piece_834_mem, piece_1554_mem

theorem linked_8512 : Linked cell_8512 pieces := by
  link_source cell_8512 with piece_834 using piece_834_mem, ⟨piece_1553_mem, piece_1554_mem⟩

theorem linked_8513 : Linked cell_8513 pieces := by
  link_source cell_8513 with piece_834 using piece_834_mem, ⟨piece_1552_mem, piece_1553_mem⟩

theorem linked_8514 : Linked cell_8514 pieces := by
  link_source cell_8514 with piece_834 using piece_834_mem, piece_1552_mem

theorem linked_8515 : Linked cell_8515 pieces := by
  link_source cell_8515 with piece_834 using piece_834_mem, ⟨piece_1551_mem, piece_1552_mem⟩

theorem linked_8516 : Linked cell_8516 pieces := by
  link_source cell_8516 with piece_834 using piece_834_mem, piece_1551_mem

theorem linked_8517 : Linked cell_8517 pieces := by
  link_source cell_8517 with piece_834 using piece_834_mem, ⟨piece_1550_mem, piece_1551_mem⟩

theorem linked_8518 : Linked cell_8518 pieces := by
  link_source cell_8518 with piece_835 using piece_835_mem, piece_1552_mem

theorem linked_8519 : Linked cell_8519 pieces := by
  link_source cell_8519 with piece_835 using piece_835_mem, ⟨piece_1551_mem, piece_1552_mem⟩

theorem linked_8520 : Linked cell_8520 pieces := by
  link_source cell_8520 with piece_835 using piece_835_mem, piece_1551_mem

theorem linked_8521 : Linked cell_8521 pieces := by
  link_source cell_8521 with piece_835 using piece_835_mem, ⟨piece_1550_mem, piece_1551_mem⟩

theorem linked_8522 : Linked cell_8522 pieces := by
  link_source cell_8522 with piece_835 using piece_835_mem, ⟨piece_1549_mem, piece_1550_mem⟩

theorem linked_8523 : Linked cell_8523 pieces := by
  link_source cell_8523 with piece_835 using piece_835_mem, piece_1549_mem

theorem linked_8524 : Linked cell_8524 pieces := by
  link_source cell_8524 with piece_835 using piece_835_mem, ⟨piece_1548_mem, piece_1549_mem⟩

theorem linked_8525 : Linked cell_8525 pieces := by
  link_source cell_8525 with piece_835 using piece_835_mem, piece_1548_mem

theorem linked_8526 : Linked cell_8526 pieces := by
  link_source cell_8526 with piece_836 using piece_836_mem, piece_1550_mem

theorem linked_8527 : Linked cell_8527 pieces := by
  link_source cell_8527 with piece_836 using piece_836_mem, ⟨piece_1549_mem, piece_1550_mem⟩

theorem linked_8528 : Linked cell_8528 pieces := by
  link_source cell_8528 with piece_836 using piece_836_mem, ⟨piece_1548_mem, piece_1549_mem⟩

theorem linked_8529 : Linked cell_8529 pieces := by
  link_source cell_8529 with piece_836 using piece_836_mem, piece_1548_mem

theorem linked_8530 : Linked cell_8530 pieces := by
  link_source cell_8530 with piece_836 using piece_836_mem, ⟨piece_1547_mem, piece_1548_mem⟩

theorem linked_8531 : Linked cell_8531 pieces := by
  link_source cell_8531 with piece_836 using piece_836_mem, piece_1547_mem

theorem linked_8532 : Linked cell_8532 pieces := by
  link_source cell_8532 with piece_836 using piece_836_mem, ⟨piece_1546_mem, piece_1547_mem⟩

theorem linked_8533 : Linked cell_8533 pieces := by
  link_source cell_8533 with piece_836 using piece_836_mem, ⟨piece_1545_mem, piece_1546_mem⟩

theorem linked_8534 : Linked cell_8534 pieces := by
  link_source cell_8534 with piece_837 using piece_837_mem, ⟨piece_1547_mem, piece_1548_mem⟩

theorem linked_8535 : Linked cell_8535 pieces := by
  link_source cell_8535 with piece_837 using piece_837_mem, piece_1547_mem

theorem linked_8536 : Linked cell_8536 pieces := by
  link_source cell_8536 with piece_837 using piece_837_mem, ⟨piece_1546_mem, piece_1547_mem⟩

theorem linked_8537 : Linked cell_8537 pieces := by
  link_source cell_8537 with piece_837 using piece_837_mem, ⟨piece_1545_mem, piece_1546_mem⟩

theorem linked_8538 : Linked cell_8538 pieces := by
  link_source cell_8538 with piece_837 using piece_837_mem, piece_1545_mem

theorem linked_8539 : Linked cell_8539 pieces := by
  link_source cell_8539 with piece_837 using piece_837_mem, ⟨piece_1544_mem, piece_1545_mem⟩

theorem linked_8540 : Linked cell_8540 pieces := by
  link_source cell_8540 with piece_837 using piece_837_mem, ⟨piece_1543_mem, piece_1544_mem⟩

theorem linked_8541 : Linked cell_8541 pieces := by
  link_source cell_8541 with piece_837 using piece_837_mem, ⟨piece_1542_mem, piece_1543_mem⟩

theorem linked_8542 : Linked cell_8542 pieces := by
  link_source cell_8542 with piece_838 using piece_838_mem, piece_1545_mem

theorem linked_8543 : Linked cell_8543 pieces := by
  link_source cell_8543 with piece_838 using piece_838_mem, ⟨piece_1544_mem, piece_1545_mem⟩

theorem linked_8544 : Linked cell_8544 pieces := by
  link_source cell_8544 with piece_838 using piece_838_mem, piece_1544_mem

theorem linked_8545 : Linked cell_8545 pieces := by
  link_source cell_8545 with piece_838 using piece_838_mem, ⟨piece_1542_mem, ⟨piece_1543_mem, piece_1544_mem⟩⟩

theorem linked_8546 : Linked cell_8546 pieces := by
  link_source cell_8546 with piece_838 using piece_838_mem, piece_1542_mem

theorem linked_8547 : Linked cell_8547 pieces := by
  link_source cell_8547 with piece_838 using piece_838_mem, ⟨piece_1541_mem, piece_1542_mem⟩

theorem linked_8548 : Linked cell_8548 pieces := by
  link_source cell_8548 with piece_838 using piece_838_mem, ⟨piece_1540_mem, piece_1541_mem⟩

theorem linked_8549 : Linked cell_8549 pieces := by
  link_source cell_8549 with piece_838 using piece_838_mem, piece_1540_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0170.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0170.cells,List.forall_mem_cons]
  exact ⟨linked_8500, linked_8501, linked_8502, linked_8503, linked_8504, linked_8505, linked_8506, linked_8507, linked_8508, linked_8509, linked_8510, linked_8511, linked_8512, linked_8513, linked_8514, linked_8515, linked_8516, linked_8517, linked_8518, linked_8519, linked_8520, linked_8521, linked_8522, linked_8523, linked_8524, linked_8525, linked_8526, linked_8527, linked_8528, linked_8529, linked_8530, linked_8531, linked_8532, linked_8533, linked_8534, linked_8535, linked_8536, linked_8537, linked_8538, linked_8539, linked_8540, linked_8541, linked_8542, linked_8543, linked_8544, linked_8545, linked_8546, linked_8547, linked_8548, linked_8549, by simp⟩

theorem covered : covers (67281284916201117 / 200000000000000000 : ℚ) (16975000000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0170.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0170
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0171
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(16975000000000001 / 50000000000000000 : ℚ), (16978125000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (18966437088209 / 25000000000000 : ℚ)
  w := (16685004729953 / 10000000000000 : ℚ)
  center := (16976562500000001 / 50000000000000000 : ℚ)
  supportValue := (6622064841976627 / 10000000000000000 : ℚ)
  supportSlope := (-2315936552752973 / 500000000000000 : ℚ)
  oldCenter := (6622064841976627 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_839
  oldLo := (33024999999999999 / 50000000000000000 : ℚ)
  oldHi := (66100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1539, piece_1540]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8550 : Cell := { cellDefaults with
  oldLo := (66200000000000003 / 100000000000000000 : ℚ)
  oldHi := (33124999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1542]
}

def cell_8551 : Cell := { cellDefaults with
  domain := ⟨(16978125000000001 / 50000000000000000 : ℚ), (16981250000000001 / 50000000000000000 : ℚ)⟩
  center := (16979687500000001 / 50000000000000000 : ℚ)
  supportValue := (6619170829483201 / 10000000000000000 : ℚ)
  supportSlope := (-9258121662938379 / 2000000000000000 : ℚ)
  oldCenter := (6619170829483201 / 10000000000000000 : ℚ)
  oldLo := (33074999999999999 / 50000000000000000 : ℚ)
  oldHi := (33124999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1541, piece_1542]
}

def cell_8552 : Cell := { cellDefaults with
  domain := ⟨(16981250000000001 / 50000000000000000 : ℚ), (16984375000000001 / 50000000000000000 : ℚ)⟩
  center := (16982812500000001 / 50000000000000000 : ℚ)
  supportValue := (3308139297657989 / 5000000000000000 : ℚ)
  supportSlope := (-4626016517399023 / 1000000000000000 : ℚ)
  oldCenter := (3308139297657989 / 5000000000000000 : ℚ)
  oldLo := (66100000000000003 / 100000000000000000 : ℚ)
  oldHi := (66200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1540, piece_1541]
}

def cell_8553 : Cell := { cellDefaults with
  domain := ⟨(16984375000000001 / 50000000000000000 : ℚ), (16987500000000001 / 50000000000000000 : ℚ)⟩
  center := (16985937500000001 / 50000000000000000 : ℚ)
  supportValue := (826673522717473 / 1250000000000000 : ℚ)
  supportSlope := (-1155819497599353 / 250000000000000 : ℚ)
  oldCenter := (826673522717473 / 1250000000000000 : ℚ)
  oldLo := (66100000000000003 / 100000000000000000 : ℚ)
  oldHi := (33074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1540]
}

def cell_8554 : Cell := { cellDefaults with
  domain := ⟨(16987500000000001 / 50000000000000000 : ℚ), (16990625000000001 / 50000000000000000 : ℚ)⟩
  center := (16989062500000001 / 50000000000000000 : ℚ)
  supportValue := (826312452598171 / 1250000000000000 : ℚ)
  supportSlope := (-924052684688803 / 200000000000000 : ℚ)
  oldCenter := (826312452598171 / 1250000000000000 : ℚ)
  oldHi := (33074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1539, piece_1540]
}

def cell_8555 : Cell := { cellDefaults with
  domain := ⟨(16990625000000001 / 50000000000000000 : ℚ), (16993750000000001 / 50000000000000000 : ℚ)⟩
  center := (16992187500000001 / 50000000000000000 : ℚ)
  supportValue := (3303806400860381 / 5000000000000000 : ℚ)
  supportSlope := (-92348135057847 / 20000000000000 : ℚ)
  oldCenter := (3303806400860381 / 5000000000000000 : ℚ)
  oldPieces := [piece_1539]
}

def cell_8556 : Cell := { cellDefaults with
  domain := ⟨(16993750000000001 / 50000000000000000 : ℚ), (16996875000000001 / 50000000000000000 : ℚ)⟩
  center := (16995312500000001 / 50000000000000000 : ℚ)
  supportValue := (206397746313877 / 312500000000000 : ℚ)
  supportSlope := (-9229034753118981 / 2000000000000000 : ℚ)
  oldCenter := (206397746313877 / 312500000000000 : ℚ)
  oldLo := (66000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1538, piece_1539]
}

def cell_8557 : Cell := { cellDefaults with
  domain := ⟨(16996875000000001 / 50000000000000000 : ℚ), (17000000000000001 / 50000000000000000 : ℚ)⟩
  center := (16998437500000001 / 50000000000000000 : ℚ)
  supportValue := (103153823124879 / 156250000000000 : ℚ)
  supportSlope := (-2305771779775867 / 500000000000000 : ℚ)
  oldCenter := (103153823124879 / 156250000000000 : ℚ)
  oldLo := (66000000000000003 / 100000000000000000 : ℚ)
  oldHi := (33024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1538]
}

def cell_8558 : Cell := { cellDefaults with
  domain := ⟨(17000000000000001 / 50000000000000000 : ℚ), (17003125000000001 / 50000000000000000 : ℚ)⟩
  r := (75810952940807 / 100000000000000 : ℚ)
  w := (16676306268051 / 10000000000000 : ℚ)
  center := (17001562500000001 / 50000000000000000 : ℚ)
  supportValue := (1652663653542209 / 2500000000000000 : ℚ)
  supportSlope := (-4617210954119599 / 1000000000000000 : ℚ)
  oldCenter := (1652663653542209 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_840
  oldHi := (33074999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1539, piece_1540]
}

def cell_8559 : Cell := { cellDefaults with
  domain := ⟨(17003125000000001 / 50000000000000000 : ℚ), (17006250000000001 / 50000000000000000 : ℚ)⟩
  r := (75810952940807 / 100000000000000 : ℚ)
  w := (16676306268051 / 10000000000000 : ℚ)
  center := (17004687500000001 / 50000000000000000 : ℚ)
  supportValue := (5162320078717 / 7812500000000 : ℚ)
  supportSlope := (-9228771152024251 / 2000000000000000 : ℚ)
  oldCenter := (5162320078717 / 7812500000000 : ℚ)
  newCoefficients := coefficients_840
  oldPieces := [piece_1539]
}

def cell_8560 : Cell := { cellDefaults with
  domain := ⟨(17006250000000001 / 50000000000000000 : ℚ), (17009375000000001 / 50000000000000000 : ℚ)⟩
  r := (75810952940807 / 100000000000000 : ℚ)
  w := (16676306268051 / 10000000000000 : ℚ)
  center := (17007812500000001 / 50000000000000000 : ℚ)
  supportValue := (3302443341350229 / 5000000000000000 : ℚ)
  supportSlope := (-922295641359483 / 200000000000000 : ℚ)
  oldCenter := (3302443341350229 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_840
  oldLo := (66000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1538, piece_1539]
}

def cell_8561 : Cell := { cellDefaults with
  domain := ⟨(17009375000000001 / 50000000000000000 : ℚ), (17012500000000001 / 50000000000000000 : ℚ)⟩
  r := (75810952940807 / 100000000000000 : ℚ)
  w := (16676306268051 / 10000000000000 : ℚ)
  center := (17010937500000001 / 50000000000000000 : ℚ)
  supportValue := (6602005362407173 / 10000000000000000 : ℚ)
  supportSlope := (-9217072532848647 / 2000000000000000 : ℚ)
  oldCenter := (6602005362407173 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_840
  oldLo := (66000000000000003 / 100000000000000000 : ℚ)
  oldHi := (33024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1538]
}

def cell_8562 : Cell := { cellDefaults with
  domain := ⟨(17012500000000001 / 50000000000000000 : ℚ), (17015625000000001 / 50000000000000000 : ℚ)⟩
  r := (75810952940807 / 100000000000000 : ℚ)
  w := (16676306268051 / 10000000000000 : ℚ)
  center := (17014062500000001 / 50000000000000000 : ℚ)
  supportValue := (1319825184839381 / 2000000000000000 : ℚ)
  supportSlope := (-35982438135157 / 7812500000000 : ℚ)
  oldCenter := (1319825184839381 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_840
  oldLo := (65950000000000009 / 100000000000000000 : ℚ)
  oldHi := (33024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1537, piece_1538]
}

def cell_8563 : Cell := { cellDefaults with
  domain := ⟨(17015625000000001 / 50000000000000000 : ℚ), (17018750000000001 / 50000000000000000 : ℚ)⟩
  r := (75810952940807 / 100000000000000 : ℚ)
  w := (16676306268051 / 10000000000000 : ℚ)
  center := (17017187500000001 / 50000000000000000 : ℚ)
  supportValue := (3298124128175413 / 5000000000000000 : ℚ)
  supportSlope := (-4602724688879789 / 1000000000000000 : ℚ)
  oldCenter := (3298124128175413 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_840
  oldLo := (65900000000000003 / 100000000000000000 : ℚ)
  oldHi := (66000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1536, piece_1537]
}

def cell_8564 : Cell := { cellDefaults with
  domain := ⟨(17018750000000001 / 50000000000000000 : ℚ), (17021875000000001 / 50000000000000000 : ℚ)⟩
  r := (75810952940807 / 100000000000000 : ℚ)
  w := (16676306268051 / 10000000000000 : ℚ)
  center := (17020312500000001 / 50000000000000000 : ℚ)
  supportValue := (6593372393711637 / 10000000000000000 : ℚ)
  supportSlope := (-287500193361101 / 62500000000000 : ℚ)
  oldCenter := (6593372393711637 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_840
  oldLo := (65900000000000003 / 100000000000000000 : ℚ)
  oldHi := (65950000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1536]
}

def cell_8565 : Cell := { cellDefaults with
  domain := ⟨(17021875000000001 / 50000000000000000 : ℚ), (17025000000000001 / 50000000000000000 : ℚ)⟩
  r := (75810952940807 / 100000000000000 : ℚ)
  w := (16676306268051 / 10000000000000 : ℚ)
  center := (17023437500000001 / 50000000000000000 : ℚ)
  supportValue := (6590498372989521 / 10000000000000000 : ℚ)
  supportSlope := (-4597009250236539 / 1000000000000000 : ℚ)
  oldCenter := (6590498372989521 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_840
  oldLo := (65850000000000009 / 100000000000000000 : ℚ)
  oldHi := (65950000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1535, piece_1536]
}

def cell_8566 : Cell := { cellDefaults with
  domain := ⟨(17025000000000001 / 50000000000000000 : ℚ), (272450000000000017 / 800000000000000000 : ℚ)⟩
  r := (7575624778889 / 10000000000000 : ℚ)
  w := (16667627009173 / 10000000000000 : ℚ)
  center := (544850000000000033 / 1600000000000000000 : ℚ)
  supportValue := (1649820783287971 / 2500000000000000 : ℚ)
  supportSlope := (-460271292892491 / 100000000000000 : ℚ)
  oldCenter := (1649820783287971 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_841
  oldLo := (65950000000000009 / 100000000000000000 : ℚ)
  oldHi := (33024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1537, piece_1538]
}

def cell_8567 : Cell := { cellDefaults with
  domain := ⟨(272450000000000017 / 800000000000000000 : ℚ), (136250000000000009 / 400000000000000000 : ℚ)⟩
  r := (7575624778889 / 10000000000000 : ℚ)
  w := (16667627009173 / 10000000000000 : ℚ)
  center := (108990000000000007 / 320000000000000000 : ℚ)
  supportValue := (3298203673607123 / 5000000000000000 : ℚ)
  supportSlope := (-229984598997741 / 50000000000000 : ℚ)
  oldCenter := (3298203673607123 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_841
  oldLo := (65900000000000003 / 100000000000000000 : ℚ)
  oldHi := (66000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1536, piece_1537]
}

def cell_8568 : Cell := { cellDefaults with
  domain := ⟨(136250000000000009 / 400000000000000000 : ℚ), (272550000000000019 / 800000000000000000 : ℚ)⟩
  r := (7575624778889 / 10000000000000 : ℚ)
  w := (16667627009173 / 10000000000000 : ℚ)
  center := (545050000000000037 / 1600000000000000000 : ℚ)
  supportValue := (6593533377876019 / 10000000000000000 : ℚ)
  supportSlope := (-2298501214378089 / 500000000000000 : ℚ)
  oldCenter := (6593533377876019 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_841
  oldLo := (65900000000000003 / 100000000000000000 : ℚ)
  oldHi := (65950000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1536]
}

def cell_8569 : Cell := { cellDefaults with
  domain := ⟨(272550000000000019 / 800000000000000000 : ℚ), (13630000000000001 / 40000000000000000 : ℚ)⟩
  r := (7575624778889 / 10000000000000 : ℚ)
  w := (16667627009173 / 10000000000000 : ℚ)
  center := (545150000000000039 / 1600000000000000000 : ℚ)
  supportValue := (2109011593717 / 3200000000000 : ℚ)
  supportSlope := (-574248731832749 / 125000000000000 : ℚ)
  oldCenter := (2109011593717 / 3200000000000 : ℚ)
  newCoefficients := coefficients_841
  oldLo := (65850000000000009 / 100000000000000000 : ℚ)
  oldHi := (65950000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1535, piece_1536]
}

def cell_8570 : Cell := { cellDefaults with
  domain := ⟨(13630000000000001 / 40000000000000000 : ℚ), (272650000000000021 / 800000000000000000 : ℚ)⟩
  r := (7575624778889 / 10000000000000 : ℚ)
  w := (16667627009173 / 10000000000000 : ℚ)
  center := (545250000000000041 / 1600000000000000000 : ℚ)
  supportValue := (3293895411846809 / 5000000000000000 : ℚ)
  supportSlope := (-2295593404911099 / 500000000000000 : ℚ)
  oldCenter := (3293895411846809 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_841
  oldLo := (65850000000000009 / 100000000000000000 : ℚ)
  oldHi := (65900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1535]
}

def cell_8571 : Cell := { cellDefaults with
  domain := ⟨(272650000000000021 / 800000000000000000 : ℚ), (136350000000000011 / 400000000000000000 : ℚ)⟩
  r := (7575624778889 / 10000000000000 : ℚ)
  w := (16667627009173 / 10000000000000 : ℚ)
  center := (545350000000000043 / 1600000000000000000 : ℚ)
  supportValue := (1646230575436921 / 2500000000000000 : ℚ)
  supportSlope := (-2294147370575271 / 500000000000000 : ℚ)
  oldCenter := (1646230575436921 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_841
  oldLo := (65800000000000003 / 100000000000000000 : ℚ)
  oldHi := (65900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1534, piece_1535]
}

def cell_8572 : Cell := { cellDefaults with
  domain := ⟨(136350000000000011 / 400000000000000000 : ℚ), (272750000000000023 / 800000000000000000 : ℚ)⟩
  r := (7575624778889 / 10000000000000 : ℚ)
  w := (16667627009173 / 10000000000000 : ℚ)
  center := (109090000000000009 / 320000000000000000 : ℚ)
  supportValue := (822756932651249 / 1250000000000000 : ℚ)
  supportSlope := (-4585379224781769 / 1000000000000000 : ℚ)
  oldCenter := (822756932651249 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_841
  oldLo := (65800000000000003 / 100000000000000000 : ℚ)
  oldHi := (65850000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1534]
}

def cell_8573 : Cell := { cellDefaults with
  domain := ⟨(272750000000000023 / 800000000000000000 : ℚ), (34100000000000003 / 100000000000000000 : ℚ)⟩
  r := (7575624778889 / 10000000000000 : ℚ)
  w := (16667627009173 / 10000000000000 : ℚ)
  center := (545550000000000047 / 1600000000000000000 : ℚ)
  supportValue := (6579190495484799 / 10000000000000000 : ℚ)
  supportSlope := (-1145651664631741 / 250000000000000 : ℚ)
  oldCenter := (6579190495484799 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_841
  oldLo := (8218750000000001 / 12500000000000000 : ℚ)
  oldHi := (65850000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1533, piece_1534]
}

def cell_8574 : Cell := { cellDefaults with
  domain := ⟨(34100000000000003 / 100000000000000000 : ℚ), (34106250000000003 / 100000000000000000 : ℚ)⟩
  r := (75701632841589 / 100000000000000 : ℚ)
  w := (1041185375647 / 625000000000 : ℚ)
  center := (34103125000000003 / 100000000000000000 : ℚ)
  supportValue := (6587950568782377 / 10000000000000000 : ℚ)
  supportSlope := (-4588185947284273 / 1000000000000000 : ℚ)
  oldCenter := (6587950568782377 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_842
  oldLo := (65850000000000009 / 100000000000000000 : ℚ)
  oldHi := (65900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1535]
}

def cell_8575 : Cell := { cellDefaults with
  domain := ⟨(34106250000000003 / 100000000000000000 : ℚ), (34112500000000003 / 100000000000000000 : ℚ)⟩
  r := (75701632841589 / 100000000000000 : ℚ)
  w := (1041185375647 / 625000000000 : ℚ)
  center := (34109375000000003 / 100000000000000000 : ℚ)
  supportValue := (3292541964008159 / 5000000000000000 : ℚ)
  supportSlope := (-2292637681428289 / 500000000000000 : ℚ)
  oldCenter := (3292541964008159 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_842
  oldLo := (65800000000000003 / 100000000000000000 : ℚ)
  oldHi := (65900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1534, piece_1535]
}

def cell_8576 : Cell := { cellDefaults with
  domain := ⟨(34112500000000003 / 100000000000000000 : ℚ), (34118750000000003 / 100000000000000000 : ℚ)⟩
  r := (75701632841589 / 100000000000000 : ℚ)
  w := (1041185375647 / 625000000000 : ℚ)
  center := (34115625000000003 / 100000000000000000 : ℚ)
  supportValue := (6582218964592733 / 10000000000000000 : ℚ)
  supportSlope := (-9164784605843579 / 2000000000000000 : ℚ)
  oldCenter := (6582218964592733 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_842
  oldLo := (65800000000000003 / 100000000000000000 : ℚ)
  oldHi := (65850000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1534]
}

def cell_8577 : Cell := { cellDefaults with
  domain := ⟨(34118750000000003 / 100000000000000000 : ℚ), (34125000000000003 / 100000000000000000 : ℚ)⟩
  r := (75701632841589 / 100000000000000 : ℚ)
  w := (1041185375647 / 625000000000 : ℚ)
  center := (34121875000000003 / 100000000000000000 : ℚ)
  supportValue := (6579355879790121 / 10000000000000000 : ℚ)
  supportSlope := (-2289800309029033 / 500000000000000 : ℚ)
  oldCenter := (6579355879790121 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_842
  oldLo := (8218750000000001 / 12500000000000000 : ℚ)
  oldHi := (65850000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1533, piece_1534]
}

def cell_8578 : Cell := { cellDefaults with
  domain := ⟨(34125000000000003 / 100000000000000000 : ℚ), (34131250000000003 / 100000000000000000 : ℚ)⟩
  r := (75701632841589 / 100000000000000 : ℚ)
  w := (1041185375647 / 625000000000 : ℚ)
  center := (34128125000000003 / 100000000000000000 : ℚ)
  supportValue := (6576494525675637 / 10000000000000000 : ℚ)
  supportSlope := (-2288303257861557 / 500000000000000 : ℚ)
  oldCenter := (6576494525675637 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_842
  oldLo := (8218750000000001 / 12500000000000000 : ℚ)
  oldHi := (65800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1533]
}

def cell_8579 : Cell := { cellDefaults with
  domain := ⟨(34131250000000003 / 100000000000000000 : ℚ), (34137500000000003 / 100000000000000000 : ℚ)⟩
  r := (75701632841589 / 100000000000000 : ℚ)
  w := (1041185375647 / 625000000000 : ℚ)
  center := (34134375000000003 / 100000000000000000 : ℚ)
  supportValue := (821704373063213 / 1250000000000000 : ℚ)
  supportSlope := (-4573932666321667 / 1000000000000000 : ℚ)
  oldCenter := (821704373063213 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_842
  oldLo := (657094972067039 / 1000000000000000 : ℚ)
  oldHi := (65800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1532, piece_1533]
}

def cell_8580 : Cell := { cellDefaults with
  domain := ⟨(34137500000000003 / 100000000000000000 : ℚ), (34143750000000003 / 100000000000000000 : ℚ)⟩
  r := (75701632841589 / 100000000000000 : ℚ)
  w := (1041185375647 / 625000000000 : ℚ)
  center := (34140625000000003 / 100000000000000000 : ℚ)
  supportValue := (6570777242921173 / 10000000000000000 : ℚ)
  supportSlope := (-2285465733960379 / 500000000000000 : ℚ)
  oldCenter := (6570777242921173 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_842
  oldLo := (8206250000000001 / 12500000000000000 : ℚ)
  oldHi := (8218750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1530, piece_1531, piece_1532]
}

def cell_8581 : Cell := { cellDefaults with
  domain := ⟨(34143750000000003 / 100000000000000000 : ℚ), (34150000000000003 / 100000000000000000 : ℚ)⟩
  r := (75701632841589 / 100000000000000 : ℚ)
  w := (1041185375647 / 625000000000 : ℚ)
  center := (34146875000000003 / 100000000000000000 : ℚ)
  supportValue := (1641980310383481 / 2500000000000000 : ℚ)
  supportSlope := (-4568167569868109 / 1000000000000000 : ℚ)
  oldCenter := (1641980310383481 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_842
  oldLo := (8206250000000001 / 12500000000000000 : ℚ)
  oldHi := (65700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1530]
}

def cell_8582 : Cell := { cellDefaults with
  domain := ⟨(34150000000000003 / 100000000000000000 : ℚ), (34156250000000003 / 100000000000000000 : ℚ)⟩
  r := (37823553925979 / 50000000000000 : ℚ)
  w := (1665032541303 / 1000000000000 : ℚ)
  center := (34153125000000003 / 100000000000000000 : ℚ)
  supportValue := (205520494026101 / 312500000000000 : ℚ)
  supportSlope := (-4573618477500929 / 1000000000000000 : ℚ)
  oldCenter := (205520494026101 / 312500000000000 : ℚ)
  newCoefficients := coefficients_843
  oldLo := (8218750000000001 / 12500000000000000 : ℚ)
  oldHi := (65800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1533]
}

def cell_8583 : Cell := { cellDefaults with
  domain := ⟨(34156250000000003 / 100000000000000000 : ℚ), (34162500000000003 / 100000000000000000 : ℚ)⟩
  r := (37823553925979 / 50000000000000 : ℚ)
  w := (1665032541303 / 1000000000000 : ℚ)
  center := (34159375000000003 / 100000000000000000 : ℚ)
  supportValue := (6573798149069027 / 10000000000000000 : ℚ)
  supportSlope := (-4570925863280451 / 1000000000000000 : ℚ)
  oldCenter := (6573798149069027 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_843
  oldLo := (657094972067039 / 1000000000000000 : ℚ)
  oldHi := (65800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1532, piece_1533]
}

def cell_8584 : Cell := { cellDefaults with
  domain := ⟨(34162500000000003 / 100000000000000000 : ℚ), (34168750000000003 / 100000000000000000 : ℚ)⟩
  r := (37823553925979 / 50000000000000 : ℚ)
  w := (1665032541303 / 1000000000000 : ℚ)
  center := (34165625000000003 / 100000000000000000 : ℚ)
  supportValue := (3285471134232153 / 5000000000000000 : ℚ)
  supportSlope := (-4567931196859831 / 1000000000000000 : ℚ)
  oldCenter := (3285471134232153 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_843
  oldLo := (8206250000000001 / 12500000000000000 : ℚ)
  oldHi := (8218750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1530, piece_1531, piece_1532]
}

def cell_8585 : Cell := { cellDefaults with
  domain := ⟨(34168750000000003 / 100000000000000000 : ℚ), (34175000000000003 / 100000000000000000 : ℚ)⟩
  r := (37823553925979 / 50000000000000 : ℚ)
  w := (1665032541303 / 1000000000000 : ℚ)
  center := (34171875000000003 / 100000000000000000 : ℚ)
  supportValue := (1642022035031363 / 2500000000000000 : ℚ)
  supportSlope := (-913040074826199 / 200000000000000 : ℚ)
  oldCenter := (1642022035031363 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_843
  oldLo := (8206250000000001 / 12500000000000000 : ℚ)
  oldHi := (65700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1530]
}

def cell_8586 : Cell := { cellDefaults with
  domain := ⟨(34175000000000003 / 100000000000000000 : ℚ), (427304469273743 / 1250000000000000 : ℚ)⟩
  r := (37823553925979 / 50000000000000 : ℚ)
  w := (1665032541303 / 1000000000000 : ℚ)
  center := (68359357541899443 / 200000000000000000 : ℚ)
  supportValue := (6564531621240199 / 10000000000000000 : ℚ)
  supportSlope := (-9123205054571093 / 2000000000000000 : ℚ)
  oldCenter := (6564531621240199 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_843
  oldLo := (65600000000000003 / 100000000000000000 : ℚ)
  oldHi := (65700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1529, piece_1530]
}

def cell_8587 : Cell := { cellDefaults with
  domain := ⟨(427304469273743 / 1250000000000000 : ℚ), (68384357541899443 / 200000000000000000 : ℚ)⟩
  r := (37823553925979 / 50000000000000 : ℚ)
  w := (1665032541303 / 1000000000000 : ℚ)
  center := (136753072625698323 / 400000000000000000 : ℚ)
  supportValue := (328030757990837 / 500000000000000 : ℚ)
  supportSlope := (-4557668032754437 / 1000000000000000 : ℚ)
  oldCenter := (328030757990837 / 500000000000000 : ℚ)
  newCoefficients := coefficients_844
  oldLo := (8193750000000001 / 12500000000000000 : ℚ)
  oldHi := (8206250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1528, piece_1529]
}

def cell_8588 : Cell := { cellDefaults with
  domain := ⟨(68384357541899443 / 200000000000000000 : ℚ), (34200000000000003 / 100000000000000000 : ℚ)⟩
  r := (37823553925979 / 50000000000000 : ℚ)
  w := (1665032541303 / 1000000000000 : ℚ)
  center := (136784357541899449 / 400000000000000000 : ℚ)
  supportValue := (327852591964219 / 500000000000000 : ℚ)
  supportSlope := (-4554094529924491 / 1000000000000000 : ℚ)
  oldCenter := (327852591964219 / 500000000000000 : ℚ)
  newCoefficients := coefficients_844
  oldLo := (8193750000000001 / 12500000000000000 : ℚ)
  oldHi := (65600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1528]
}

def cell_8589 : Cell := { cellDefaults with
  domain := ⟨(34200000000000003 / 100000000000000000 : ℚ), (34206250000000003 / 100000000000000000 : ℚ)⟩
  r := (1511853441907 / 2000000000000 : ℚ)
  w := (8320851700571 / 5000000000000 : ℚ)
  center := (34203125000000003 / 100000000000000000 : ℚ)
  supportValue := (6565399493071449 / 10000000000000000 : ℚ)
  supportSlope := (-2279643661777797 / 500000000000000 : ℚ)
  oldCenter := (6565399493071449 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_845
  oldLo := (65600000000000003 / 100000000000000000 : ℚ)
  oldHi := (65700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1529, piece_1530]
}

def cell_8590 : Cell := { cellDefaults with
  domain := ⟨(34206250000000003 / 100000000000000000 : ℚ), (34212500000000003 / 100000000000000000 : ℚ)⟩
  r := (1511853441907 / 2000000000000 : ℚ)
  w := (8320851700571 / 5000000000000 : ℚ)
  center := (34209375000000003 / 100000000000000000 : ℚ)
  supportValue := (6562550763611401 / 10000000000000000 : ℚ)
  supportSlope := (-1139120478234723 / 250000000000000 : ℚ)
  oldCenter := (6562550763611401 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_845
  oldLo := (65600000000000003 / 100000000000000000 : ℚ)
  oldHi := (8206250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1529]
}

def cell_8591 : Cell := { cellDefaults with
  domain := ⟨(34212500000000003 / 100000000000000000 : ℚ), (34218750000000003 / 100000000000000000 : ℚ)⟩
  r := (1511853441907 / 2000000000000 : ℚ)
  w := (8320851700571 / 5000000000000 : ℚ)
  center := (34215625000000003 / 100000000000000000 : ℚ)
  supportValue := (6559703898330127 / 10000000000000000 : ℚ)
  supportSlope := (-4553663085314241 / 1000000000000000 : ℚ)
  oldCenter := (6559703898330127 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_845
  oldLo := (8193750000000001 / 12500000000000000 : ℚ)
  oldHi := (8206250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1528, piece_1529]
}

def cell_8592 : Cell := { cellDefaults with
  domain := ⟨(34218750000000003 / 100000000000000000 : ℚ), (34225000000000003 / 100000000000000000 : ℚ)⟩
  r := (1511853441907 / 2000000000000 : ℚ)
  w := (8320851700571 / 5000000000000 : ℚ)
  center := (34221875000000003 / 100000000000000000 : ℚ)
  supportValue := (1639214678100761 / 2500000000000000 : ℚ)
  supportSlope := (-2275375683028713 / 500000000000000 : ℚ)
  oldCenter := (1639214678100761 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_845
  oldLo := (8193750000000001 / 12500000000000000 : ℚ)
  oldHi := (65600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1528]
}

def cell_8593 : Cell := { cellDefaults with
  domain := ⟨(34225000000000003 / 100000000000000000 : ℚ), (34231250000000003 / 100000000000000000 : ℚ)⟩
  r := (1511853441907 / 2000000000000 : ℚ)
  w := (8320851700571 / 5000000000000 : ℚ)
  center := (34228125000000003 / 100000000000000000 : ℚ)
  supportValue := (6554015359128633 / 10000000000000000 : ℚ)
  supportSlope := (-909609143162271 / 200000000000000 : ℚ)
  oldCenter := (6554015359128633 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_845
  oldLo := (65500000000000003 / 100000000000000000 : ℚ)
  oldHi := (65600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1527, piece_1528]
}

def cell_8594 : Cell := { cellDefaults with
  domain := ⟨(34231250000000003 / 100000000000000000 : ℚ), (34237500000000003 / 100000000000000000 : ℚ)⟩
  r := (1511853441907 / 2000000000000 : ℚ)
  w := (8320851700571 / 5000000000000 : ℚ)
  center := (34234375000000003 / 100000000000000000 : ℚ)
  supportValue := (6551173751185809 / 10000000000000000 : ℚ)
  supportSlope := (-909013626479549 / 200000000000000 : ℚ)
  oldCenter := (6551173751185809 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_845
  oldLo := (8181250000000001 / 12500000000000000 : ℚ)
  oldHi := (8193750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1526, piece_1527]
}

def cell_8595 : Cell := { cellDefaults with
  domain := ⟨(34237500000000003 / 100000000000000000 : ℚ), (34243750000000003 / 100000000000000000 : ℚ)⟩
  r := (1511853441907 / 2000000000000 : ℚ)
  w := (8320851700571 / 5000000000000 : ℚ)
  center := (34240625000000003 / 100000000000000000 : ℚ)
  supportValue := (3274166952814133 / 5000000000000000 : ℚ)
  supportSlope := (-4542395763515117 / 1000000000000000 : ℚ)
  oldCenter := (3274166952814133 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_845
  oldLo := (8181250000000001 / 12500000000000000 : ℚ)
  oldHi := (65500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1526]
}

def cell_8596 : Cell := { cellDefaults with
  domain := ⟨(34243750000000003 / 100000000000000000 : ℚ), (34250000000000003 / 100000000000000000 : ℚ)⟩
  r := (1511853441907 / 2000000000000 : ℚ)
  w := (8320851700571 / 5000000000000 : ℚ)
  center := (34246875000000003 / 100000000000000000 : ℚ)
  supportValue := (1309099174150967 / 2000000000000000 : ℚ)
  supportSlope := (-4539460805858653 / 1000000000000000 : ℚ)
  oldCenter := (1309099174150967 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_845
  oldLo := (65400000000000003 / 100000000000000000 : ℚ)
  oldHi := (65500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1525, piece_1526]
}

def cell_8597 : Cell := { cellDefaults with
  domain := ⟨(34250000000000003 / 100000000000000000 : ℚ), (34256250000000003 / 100000000000000000 : ℚ)⟩
  r := (75538326279703 / 100000000000000 : ℚ)
  w := (16633100555823 / 10000000000000 : ℚ)
  center := (34253125000000003 / 100000000000000000 : ℚ)
  supportValue := (1310836183676549 / 2000000000000000 : ℚ)
  supportSlope := (-2272528706267707 / 500000000000000 : ℚ)
  oldCenter := (1310836183676549 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_846
  oldLo := (65500000000000003 / 100000000000000000 : ℚ)
  oldHi := (65600000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1527, piece_1528]
}

def cell_8598 : Cell := { cellDefaults with
  domain := ⟨(34256250000000003 / 100000000000000000 : ℚ), (34262500000000003 / 100000000000000000 : ℚ)⟩
  r := (75538326279703 / 100000000000000 : ℚ)
  w := (16633100555823 / 10000000000000 : ℚ)
  center := (34259375000000003 / 100000000000000000 : ℚ)
  supportValue := (655134115957623 / 1000000000000000 : ℚ)
  supportSlope := (-1135521577629639 / 250000000000000 : ℚ)
  oldCenter := (655134115957623 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_846
  oldLo := (8181250000000001 / 12500000000000000 : ℚ)
  oldHi := (8193750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1526, piece_1527]
}

def cell_8599 : Cell := { cellDefaults with
  domain := ⟨(34262500000000003 / 100000000000000000 : ℚ), (34268750000000003 / 100000000000000000 : ℚ)⟩
  r := (75538326279703 / 100000000000000 : ℚ)
  w := (16633100555823 / 10000000000000 : ℚ)
  center := (34265625000000003 / 100000000000000000 : ℚ)
  supportValue := (6548503175510697 / 10000000000000000 : ℚ)
  supportSlope := (-2269723776141319 / 500000000000000 : ℚ)
  oldCenter := (6548503175510697 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_846
  oldLo := (8181250000000001 / 12500000000000000 : ℚ)
  oldHi := (65500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1526]
}

theorem check_8550 : cell_8550.check = true := by
  decide +kernel

theorem check_8551 : cell_8551.check = true := by
  decide +kernel

theorem check_8552 : cell_8552.check = true := by
  decide +kernel

theorem check_8553 : cell_8553.check = true := by
  decide +kernel

theorem check_8554 : cell_8554.check = true := by
  decide +kernel

theorem check_8555 : cell_8555.check = true := by
  decide +kernel

theorem check_8556 : cell_8556.check = true := by
  decide +kernel

theorem check_8557 : cell_8557.check = true := by
  decide +kernel

theorem check_8558 : cell_8558.check = true := by
  decide +kernel

theorem check_8559 : cell_8559.check = true := by
  decide +kernel

theorem check_8560 : cell_8560.check = true := by
  decide +kernel

theorem check_8561 : cell_8561.check = true := by
  decide +kernel

theorem check_8562 : cell_8562.check = true := by
  decide +kernel

theorem check_8563 : cell_8563.check = true := by
  decide +kernel

theorem check_8564 : cell_8564.check = true := by
  decide +kernel

theorem check_8565 : cell_8565.check = true := by
  decide +kernel

theorem check_8566 : cell_8566.check = true := by
  decide +kernel

theorem check_8567 : cell_8567.check = true := by
  decide +kernel

theorem check_8568 : cell_8568.check = true := by
  decide +kernel

theorem check_8569 : cell_8569.check = true := by
  decide +kernel

theorem check_8570 : cell_8570.check = true := by
  decide +kernel

theorem check_8571 : cell_8571.check = true := by
  decide +kernel

theorem check_8572 : cell_8572.check = true := by
  decide +kernel

theorem check_8573 : cell_8573.check = true := by
  decide +kernel

theorem check_8574 : cell_8574.check = true := by
  decide +kernel

theorem check_8575 : cell_8575.check = true := by
  decide +kernel

theorem check_8576 : cell_8576.check = true := by
  decide +kernel

theorem check_8577 : cell_8577.check = true := by
  decide +kernel

theorem check_8578 : cell_8578.check = true := by
  decide +kernel

theorem check_8579 : cell_8579.check = true := by
  decide +kernel

theorem check_8580 : cell_8580.check = true := by
  decide +kernel

theorem check_8581 : cell_8581.check = true := by
  decide +kernel

theorem check_8582 : cell_8582.check = true := by
  decide +kernel

theorem check_8583 : cell_8583.check = true := by
  decide +kernel

theorem check_8584 : cell_8584.check = true := by
  decide +kernel

theorem check_8585 : cell_8585.check = true := by
  decide +kernel

theorem check_8586 : cell_8586.check = true := by
  decide +kernel

theorem check_8587 : cell_8587.check = true := by
  decide +kernel

theorem check_8588 : cell_8588.check = true := by
  decide +kernel

theorem check_8589 : cell_8589.check = true := by
  decide +kernel

theorem check_8590 : cell_8590.check = true := by
  decide +kernel

theorem check_8591 : cell_8591.check = true := by
  decide +kernel

theorem check_8592 : cell_8592.check = true := by
  decide +kernel

theorem check_8593 : cell_8593.check = true := by
  decide +kernel

theorem check_8594 : cell_8594.check = true := by
  decide +kernel

theorem check_8595 : cell_8595.check = true := by
  decide +kernel

theorem check_8596 : cell_8596.check = true := by
  decide +kernel

theorem check_8597 : cell_8597.check = true := by
  decide +kernel

theorem check_8598 : cell_8598.check = true := by
  decide +kernel

theorem check_8599 : cell_8599.check = true := by
  decide +kernel

def cells : List Cell := [cell_8550, cell_8551, cell_8552, cell_8553, cell_8554, cell_8555, cell_8556, cell_8557, cell_8558, cell_8559, cell_8560, cell_8561, cell_8562, cell_8563, cell_8564, cell_8565, cell_8566, cell_8567, cell_8568, cell_8569, cell_8570, cell_8571, cell_8572, cell_8573, cell_8574, cell_8575, cell_8576, cell_8577, cell_8578, cell_8579, cell_8580, cell_8581, cell_8582, cell_8583, cell_8584, cell_8585, cell_8586, cell_8587, cell_8588, cell_8589, cell_8590, cell_8591, cell_8592, cell_8593, cell_8594, cell_8595, cell_8596, cell_8597, cell_8598, cell_8599]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8550, check_8551, check_8552, check_8553, check_8554, check_8555, check_8556, check_8557, check_8558, check_8559, check_8560, check_8561, check_8562, check_8563, check_8564, check_8565, check_8566, check_8567, check_8568, check_8569, check_8570, check_8571, check_8572, check_8573, check_8574, check_8575, check_8576, check_8577, check_8578, check_8579, check_8580, check_8581, check_8582, check_8583, check_8584, check_8585, check_8586, check_8587, check_8588, check_8589, check_8590, check_8591, check_8592, check_8593, check_8594, check_8595, check_8596, check_8597, check_8598, check_8599, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0171

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0171
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0171
open AnalyticBounds.ExpressionCertificate

theorem linked_8550 : Linked cell_8550 pieces := by
  link_source cell_8550 with piece_839 using piece_839_mem, piece_1542_mem

theorem linked_8551 : Linked cell_8551 pieces := by
  link_source cell_8551 with piece_839 using piece_839_mem, ⟨piece_1541_mem, piece_1542_mem⟩

theorem linked_8552 : Linked cell_8552 pieces := by
  link_source cell_8552 with piece_839 using piece_839_mem, ⟨piece_1540_mem, piece_1541_mem⟩

theorem linked_8553 : Linked cell_8553 pieces := by
  link_source cell_8553 with piece_839 using piece_839_mem, piece_1540_mem

theorem linked_8554 : Linked cell_8554 pieces := by
  link_source cell_8554 with piece_839 using piece_839_mem, ⟨piece_1539_mem, piece_1540_mem⟩

theorem linked_8555 : Linked cell_8555 pieces := by
  link_source cell_8555 with piece_839 using piece_839_mem, piece_1539_mem

theorem linked_8556 : Linked cell_8556 pieces := by
  link_source cell_8556 with piece_839 using piece_839_mem, ⟨piece_1538_mem, piece_1539_mem⟩

theorem linked_8557 : Linked cell_8557 pieces := by
  link_source cell_8557 with piece_839 using piece_839_mem, piece_1538_mem

theorem linked_8558 : Linked cell_8558 pieces := by
  link_source cell_8558 with piece_840 using piece_840_mem, ⟨piece_1539_mem, piece_1540_mem⟩

theorem linked_8559 : Linked cell_8559 pieces := by
  link_source cell_8559 with piece_840 using piece_840_mem, piece_1539_mem

theorem linked_8560 : Linked cell_8560 pieces := by
  link_source cell_8560 with piece_840 using piece_840_mem, ⟨piece_1538_mem, piece_1539_mem⟩

theorem linked_8561 : Linked cell_8561 pieces := by
  link_source cell_8561 with piece_840 using piece_840_mem, piece_1538_mem

theorem linked_8562 : Linked cell_8562 pieces := by
  link_source cell_8562 with piece_840 using piece_840_mem, ⟨piece_1537_mem, piece_1538_mem⟩

theorem linked_8563 : Linked cell_8563 pieces := by
  link_source cell_8563 with piece_840 using piece_840_mem, ⟨piece_1536_mem, piece_1537_mem⟩

theorem linked_8564 : Linked cell_8564 pieces := by
  link_source cell_8564 with piece_840 using piece_840_mem, piece_1536_mem

theorem linked_8565 : Linked cell_8565 pieces := by
  link_source cell_8565 with piece_840 using piece_840_mem, ⟨piece_1535_mem, piece_1536_mem⟩

theorem linked_8566 : Linked cell_8566 pieces := by
  link_source cell_8566 with piece_841 using piece_841_mem, ⟨piece_1537_mem, piece_1538_mem⟩

theorem linked_8567 : Linked cell_8567 pieces := by
  link_source cell_8567 with piece_841 using piece_841_mem, ⟨piece_1536_mem, piece_1537_mem⟩

theorem linked_8568 : Linked cell_8568 pieces := by
  link_source cell_8568 with piece_841 using piece_841_mem, piece_1536_mem

theorem linked_8569 : Linked cell_8569 pieces := by
  link_source cell_8569 with piece_841 using piece_841_mem, ⟨piece_1535_mem, piece_1536_mem⟩

theorem linked_8570 : Linked cell_8570 pieces := by
  link_source cell_8570 with piece_841 using piece_841_mem, piece_1535_mem

theorem linked_8571 : Linked cell_8571 pieces := by
  link_source cell_8571 with piece_841 using piece_841_mem, ⟨piece_1534_mem, piece_1535_mem⟩

theorem linked_8572 : Linked cell_8572 pieces := by
  link_source cell_8572 with piece_841 using piece_841_mem, piece_1534_mem

theorem linked_8573 : Linked cell_8573 pieces := by
  link_source cell_8573 with piece_841 using piece_841_mem, ⟨piece_1533_mem, piece_1534_mem⟩

theorem linked_8574 : Linked cell_8574 pieces := by
  link_source cell_8574 with piece_842 using piece_842_mem, piece_1535_mem

theorem linked_8575 : Linked cell_8575 pieces := by
  link_source cell_8575 with piece_842 using piece_842_mem, ⟨piece_1534_mem, piece_1535_mem⟩

theorem linked_8576 : Linked cell_8576 pieces := by
  link_source cell_8576 with piece_842 using piece_842_mem, piece_1534_mem

theorem linked_8577 : Linked cell_8577 pieces := by
  link_source cell_8577 with piece_842 using piece_842_mem, ⟨piece_1533_mem, piece_1534_mem⟩

theorem linked_8578 : Linked cell_8578 pieces := by
  link_source cell_8578 with piece_842 using piece_842_mem, piece_1533_mem

theorem linked_8579 : Linked cell_8579 pieces := by
  link_source cell_8579 with piece_842 using piece_842_mem, ⟨piece_1532_mem, piece_1533_mem⟩

theorem linked_8580 : Linked cell_8580 pieces := by
  link_source cell_8580 with piece_842 using piece_842_mem, ⟨piece_1530_mem, ⟨piece_1531_mem, piece_1532_mem⟩⟩

theorem linked_8581 : Linked cell_8581 pieces := by
  link_source cell_8581 with piece_842 using piece_842_mem, piece_1530_mem

theorem linked_8582 : Linked cell_8582 pieces := by
  link_source cell_8582 with piece_843 using piece_843_mem, piece_1533_mem

theorem linked_8583 : Linked cell_8583 pieces := by
  link_source cell_8583 with piece_843 using piece_843_mem, ⟨piece_1532_mem, piece_1533_mem⟩

theorem linked_8584 : Linked cell_8584 pieces := by
  link_source cell_8584 with piece_843 using piece_843_mem, ⟨piece_1530_mem, ⟨piece_1531_mem, piece_1532_mem⟩⟩

theorem linked_8585 : Linked cell_8585 pieces := by
  link_source cell_8585 with piece_843 using piece_843_mem, piece_1530_mem

theorem linked_8586 : Linked cell_8586 pieces := by
  link_source cell_8586 with piece_843 using piece_843_mem, ⟨piece_1529_mem, piece_1530_mem⟩

theorem linked_8587 : Linked cell_8587 pieces := by
  link_source cell_8587 with piece_844 using piece_844_mem, ⟨piece_1528_mem, piece_1529_mem⟩

theorem linked_8588 : Linked cell_8588 pieces := by
  link_source cell_8588 with piece_844 using piece_844_mem, piece_1528_mem

theorem linked_8589 : Linked cell_8589 pieces := by
  link_source cell_8589 with piece_845 using piece_845_mem, ⟨piece_1529_mem, piece_1530_mem⟩

theorem linked_8590 : Linked cell_8590 pieces := by
  link_source cell_8590 with piece_845 using piece_845_mem, piece_1529_mem

theorem linked_8591 : Linked cell_8591 pieces := by
  link_source cell_8591 with piece_845 using piece_845_mem, ⟨piece_1528_mem, piece_1529_mem⟩

theorem linked_8592 : Linked cell_8592 pieces := by
  link_source cell_8592 with piece_845 using piece_845_mem, piece_1528_mem

theorem linked_8593 : Linked cell_8593 pieces := by
  link_source cell_8593 with piece_845 using piece_845_mem, ⟨piece_1527_mem, piece_1528_mem⟩

theorem linked_8594 : Linked cell_8594 pieces := by
  link_source cell_8594 with piece_845 using piece_845_mem, ⟨piece_1526_mem, piece_1527_mem⟩

theorem linked_8595 : Linked cell_8595 pieces := by
  link_source cell_8595 with piece_845 using piece_845_mem, piece_1526_mem

theorem linked_8596 : Linked cell_8596 pieces := by
  link_source cell_8596 with piece_845 using piece_845_mem, ⟨piece_1525_mem, piece_1526_mem⟩

theorem linked_8597 : Linked cell_8597 pieces := by
  link_source cell_8597 with piece_846 using piece_846_mem, ⟨piece_1527_mem, piece_1528_mem⟩

theorem linked_8598 : Linked cell_8598 pieces := by
  link_source cell_8598 with piece_846 using piece_846_mem, ⟨piece_1526_mem, piece_1527_mem⟩

theorem linked_8599 : Linked cell_8599 pieces := by
  link_source cell_8599 with piece_846 using piece_846_mem, piece_1526_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0171.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0171.cells,List.forall_mem_cons]
  exact ⟨linked_8550, linked_8551, linked_8552, linked_8553, linked_8554, linked_8555, linked_8556, linked_8557, linked_8558, linked_8559, linked_8560, linked_8561, linked_8562, linked_8563, linked_8564, linked_8565, linked_8566, linked_8567, linked_8568, linked_8569, linked_8570, linked_8571, linked_8572, linked_8573, linked_8574, linked_8575, linked_8576, linked_8577, linked_8578, linked_8579, linked_8580, linked_8581, linked_8582, linked_8583, linked_8584, linked_8585, linked_8586, linked_8587, linked_8588, linked_8589, linked_8590, linked_8591, linked_8592, linked_8593, linked_8594, linked_8595, linked_8596, linked_8597, linked_8598, linked_8599, by simp⟩

theorem covered : covers (16975000000000001 / 50000000000000000 : ℚ) (34268750000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0171.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0171
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0172
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(34268750000000003 / 100000000000000000 : ℚ), (34275000000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (75484069622323 / 100000000000000 : ℚ)
  w := (8312257971933 / 5000000000000 : ℚ)
  center := (34271875000000003 / 100000000000000000 : ℚ)
  supportValue := (654566698106293 / 1000000000000000 : ℚ)
  supportSlope := (-4536492322245067 / 1000000000000000 : ℚ)
  oldCenter := (654566698106293 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_847
  oldLo := (8168750000000001 / 12500000000000000 : ℚ)
  oldHi := (8181250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1515, piece_1516]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8600 : Cell := { cellDefaults with
  r := (75538326279703 / 100000000000000 : ℚ)
  w := (16633100555823 / 10000000000000 : ℚ)
  newCoefficients := coefficients_846
  oldLo := (65400000000000003 / 100000000000000000 : ℚ)
  oldHi := (65500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1525, piece_1526]
}

def cell_8601 : Cell := { cellDefaults with
  domain := ⟨(34275000000000003 / 100000000000000000 : ℚ), (34281250000000003 / 100000000000000000 : ℚ)⟩
  r := (75538326279703 / 100000000000000 : ℚ)
  w := (16633100555823 / 10000000000000 : ℚ)
  center := (34278125000000003 / 100000000000000000 : ℚ)
  supportValue := (6542832492095969 / 10000000000000000 : ℚ)
  supportSlope := (-4533750328839403 / 1000000000000000 : ℚ)
  oldCenter := (6542832492095969 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_846
  oldLo := (65400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1525]
}

def cell_8602 : Cell := { cellDefaults with
  domain := ⟨(34281250000000003 / 100000000000000000 : ℚ), (34287500000000003 / 100000000000000000 : ℚ)⟩
  r := (75538326279703 / 100000000000000 : ℚ)
  w := (16633100555823 / 10000000000000 : ℚ)
  center := (34284375000000003 / 100000000000000000 : ℚ)
  supportValue := (6539999856901803 / 10000000000000000 : ℚ)
  supportSlope := (-4530905185038847 / 1000000000000000 : ℚ)
  oldCenter := (6539999856901803 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_846
  oldPieces := [piece_1524, piece_1525]
}

def cell_8603 : Cell := { cellDefaults with
  domain := ⟨(34287500000000003 / 100000000000000000 : ℚ), (34293750000000003 / 100000000000000000 : ℚ)⟩
  r := (75538326279703 / 100000000000000 : ℚ)
  w := (16633100555823 / 10000000000000 : ℚ)
  center := (34290625000000003 / 100000000000000000 : ℚ)
  supportValue := (408573053685483 / 625000000000000 : ℚ)
  supportSlope := (-35375475659849 / 7812500000000 : ℚ)
  oldCenter := (408573053685483 / 625000000000000 : ℚ)
  newCoefficients := coefficients_846
  oldHi := (65400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1524]
}

def cell_8604 : Cell := { cellDefaults with
  domain := ⟨(34293750000000003 / 100000000000000000 : ℚ), (34300000000000003 / 100000000000000000 : ℚ)⟩
  r := (75538326279703 / 100000000000000 : ℚ)
  w := (16633100555823 / 10000000000000 : ℚ)
  center := (34296875000000003 / 100000000000000000 : ℚ)
  supportValue := (653433971266447 / 1000000000000000 : ℚ)
  supportSlope := (-1810129916988501 / 400000000000000 : ℚ)
  oldCenter := (653433971266447 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_846
  oldLo := (32650000000000001 / 50000000000000000 : ℚ)
  oldHi := (65400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1523, piece_1524]
}

def cell_8605 : Cell := { cellDefaults with
  domain := ⟨(34300000000000003 / 100000000000000000 : ℚ), (34306250000000003 / 100000000000000000 : ℚ)⟩
  center := (34303125000000003 / 100000000000000000 : ℚ)
  supportValue := (6543000394877363 / 10000000000000000 : ℚ)
  supportSlope := (-2265401298966907 / 500000000000000 : ℚ)
  oldCenter := (6543000394877363 / 10000000000000000 : ℚ)
  oldLo := (65400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1525]
}

def cell_8606 : Cell := { cellDefaults with
  domain := ⟨(34306250000000003 / 100000000000000000 : ℚ), (34312500000000003 / 100000000000000000 : ℚ)⟩
  center := (34309375000000003 / 100000000000000000 : ℚ)
  supportValue := (6540169600220871 / 10000000000000000 : ℚ)
  supportSlope := (-4527936739822991 / 1000000000000000 : ℚ)
  oldCenter := (6540169600220871 / 10000000000000000 : ℚ)
  oldPieces := [piece_1524, piece_1525]
}

def cell_8607 : Cell := { cellDefaults with
  domain := ⟨(34312500000000003 / 100000000000000000 : ℚ), (34318750000000003 / 100000000000000000 : ℚ)⟩
  center := (34315625000000003 / 100000000000000000 : ℚ)
  supportValue := (3268670227706597 / 5000000000000000 : ℚ)
  supportSlope := (-2262562890400943 / 500000000000000 : ℚ)
  oldCenter := (3268670227706597 / 5000000000000000 : ℚ)
  oldHi := (65400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1524]
}

def cell_8608 : Cell := { cellDefaults with
  domain := ⟨(34318750000000003 / 100000000000000000 : ℚ), (34325000000000003 / 100000000000000000 : ℚ)⟩
  center := (34321875000000003 / 100000000000000000 : ℚ)
  supportValue := (6534513158819819 / 10000000000000000 : ℚ)
  supportSlope := (-565296045569319 / 125000000000000 : ℚ)
  oldCenter := (6534513158819819 / 10000000000000000 : ℚ)
  oldLo := (32650000000000001 / 50000000000000000 : ℚ)
  oldHi := (65400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1523, piece_1524]
}

def cell_8609 : Cell := { cellDefaults with
  domain := ⟨(34325000000000003 / 100000000000000000 : ℚ), (34331250000000003 / 100000000000000000 : ℚ)⟩
  center := (34328125000000003 / 100000000000000000 : ℚ)
  supportValue := (65316875418069 / 100000000000000 : ℚ)
  supportSlope := (-4519456591577153 / 1000000000000000 : ℚ)
  oldCenter := (65316875418069 / 100000000000000 : ℚ)
  oldLo := (32650000000000001 / 50000000000000000 : ℚ)
  oldHi := (8168750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1523]
}

def cell_8610 : Cell := { cellDefaults with
  domain := ⟨(34331250000000003 / 100000000000000000 : ℚ), (34337500000000003 / 100000000000000000 : ℚ)⟩
  center := (34334375000000003 / 100000000000000000 : ℚ)
  supportValue := (6528863722457039 / 10000000000000000 : ℚ)
  supportSlope := (-4516806609942137 / 1000000000000000 : ℚ)
  oldCenter := (6528863722457039 / 10000000000000000 : ℚ)
  oldLo := (8156250000000001 / 12500000000000000 : ℚ)
  oldHi := (8168750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1522, piece_1523]
}

def cell_8611 : Cell := { cellDefaults with
  domain := ⟨(34337500000000003 / 100000000000000000 : ℚ), (34343750000000003 / 100000000000000000 : ℚ)⟩
  center := (34340625000000003 / 100000000000000000 : ℚ)
  supportValue := (815755205636989 / 1250000000000000 : ℚ)
  supportSlope := (-4513854519494487 / 1000000000000000 : ℚ)
  oldCenter := (815755205636989 / 1250000000000000 : ℚ)
  oldLo := (32600000000000001 / 50000000000000000 : ℚ)
  oldHi := (32650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1521, piece_1522]
}

def cell_8612 : Cell := { cellDefaults with
  domain := ⟨(34343750000000003 / 100000000000000000 : ℚ), (34350000000000003 / 100000000000000000 : ℚ)⟩
  center := (34346875000000003 / 100000000000000000 : ℚ)
  supportValue := (6523221298594597 / 10000000000000000 : ℚ)
  supportSlope := (-9022385310643699 / 2000000000000000 : ℚ)
  oldCenter := (6523221298594597 / 10000000000000000 : ℚ)
  oldLo := (32600000000000001 / 50000000000000000 : ℚ)
  oldHi := (8156250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1521]
}

def cell_8613 : Cell := { cellDefaults with
  domain := ⟨(34350000000000003 / 100000000000000000 : ℚ), (34356250000000003 / 100000000000000000 : ℚ)⟩
  r := (15085980322601 / 20000000000000 : ℚ)
  w := (4153987795749 / 2500000000000 : ℚ)
  center := (34353125000000003 / 100000000000000000 : ℚ)
  supportValue := (653185707050027 / 1000000000000000 : ℚ)
  supportSlope := (-903304096326707 / 200000000000000 : ℚ)
  oldCenter := (653185707050027 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_848
  oldLo := (32650000000000001 / 50000000000000000 : ℚ)
  oldHi := (8168750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1523]
}

def cell_8614 : Cell := { cellDefaults with
  domain := ⟨(34356250000000003 / 100000000000000000 : ℚ), (34362500000000003 / 100000000000000000 : ℚ)⟩
  r := (15085980322601 / 20000000000000 : ℚ)
  w := (4153987795749 / 2500000000000 : ℚ)
  center := (34359375000000003 / 100000000000000000 : ℚ)
  supportValue := (6529035101060219 / 10000000000000000 : ℚ)
  supportSlope := (-564231277708771 / 125000000000000 : ℚ)
  oldCenter := (6529035101060219 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_848
  oldLo := (8156250000000001 / 12500000000000000 : ℚ)
  oldHi := (8168750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1522, piece_1523]
}

def cell_8615 : Cell := { cellDefaults with
  domain := ⟨(34362500000000003 / 100000000000000000 : ℚ), (34368750000000003 / 100000000000000000 : ℚ)⟩
  r := (15085980322601 / 20000000000000 : ℚ)
  w := (4153987795749 / 2500000000000 : ℚ)
  center := (34365625000000003 / 100000000000000000 : ℚ)
  supportValue := (6526214852203003 / 10000000000000000 : ℚ)
  supportSlope := (-4510904681794159 / 1000000000000000 : ℚ)
  oldCenter := (6526214852203003 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_848
  oldLo := (32600000000000001 / 50000000000000000 : ℚ)
  oldHi := (32650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1521, piece_1522]
}

def cell_8616 : Cell := { cellDefaults with
  domain := ⟨(34368750000000003 / 100000000000000000 : ℚ), (34375000000000003 / 100000000000000000 : ℚ)⟩
  r := (15085980322601 / 20000000000000 : ℚ)
  w := (4153987795749 / 2500000000000 : ℚ)
  center := (34371875000000003 / 100000000000000000 : ℚ)
  supportValue := (20385613584941 / 31250000000000 : ℚ)
  supportSlope := (-2254138779473891 / 500000000000000 : ℚ)
  oldCenter := (20385613584941 / 31250000000000 : ℚ)
  newCoefficients := coefficients_848
  oldLo := (32600000000000001 / 50000000000000000 : ℚ)
  oldHi := (8156250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1521]
}

def cell_8617 : Cell := { cellDefaults with
  domain := ⟨(34375000000000003 / 100000000000000000 : ℚ), (34381250000000003 / 100000000000000000 : ℚ)⟩
  r := (15085980322601 / 20000000000000 : ℚ)
  w := (4153987795749 / 2500000000000 : ℚ)
  center := (34378125000000003 / 100000000000000000 : ℚ)
  supportValue := (6520579624266639 / 10000000000000000 : ℚ)
  supportSlope := (-563170807768909 / 125000000000000 : ℚ)
  oldCenter := (6520579624266639 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_848
  oldLo := (6515642458100559 / 10000000000000000 : ℚ)
  oldHi := (8156250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1520, piece_1521]
}

def cell_8618 : Cell := { cellDefaults with
  domain := ⟨(34381250000000003 / 100000000000000000 : ℚ), (34387500000000003 / 100000000000000000 : ℚ)⟩
  r := (15085980322601 / 20000000000000 : ℚ)
  w := (4153987795749 / 2500000000000 : ℚ)
  center := (34384375000000003 / 100000000000000000 : ℚ)
  supportValue := (1303552915899647 / 2000000000000000 : ℚ)
  supportSlope := (-900528340702067 / 200000000000000 : ℚ)
  oldCenter := (1303552915899647 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_848
  oldLo := (6515642458100559 / 10000000000000000 : ℚ)
  oldHi := (32600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1520]
}

def cell_8619 : Cell := { cellDefaults with
  domain := ⟨(34387500000000003 / 100000000000000000 : ℚ), (34393750000000003 / 100000000000000000 : ℚ)⟩
  r := (15085980322601 / 20000000000000 : ℚ)
  w := (4153987795749 / 2500000000000 : ℚ)
  center := (34390625000000003 / 100000000000000000 : ℚ)
  supportValue := (6514951372806803 / 10000000000000000 : ℚ)
  supportSlope := (-4499834315392803 / 1000000000000000 : ℚ)
  oldCenter := (6514951372806803 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_848
  oldLo := (32550000000000001 / 50000000000000000 : ℚ)
  oldHi := (32600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1518, piece_1519, piece_1520]
}

def cell_8620 : Cell := { cellDefaults with
  domain := ⟨(34393750000000003 / 100000000000000000 : ℚ), (34400000000000003 / 100000000000000000 : ℚ)⟩
  r := (15085980322601 / 20000000000000 : ℚ)
  w := (4153987795749 / 2500000000000 : ℚ)
  center := (34396875000000003 / 100000000000000000 : ℚ)
  supportValue := (3256069894835507 / 5000000000000000 : ℚ)
  supportSlope := (-4497012741392581 / 1000000000000000 : ℚ)
  oldCenter := (3256069894835507 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_848
  oldLo := (32550000000000001 / 50000000000000000 : ℚ)
  oldHi := (8143750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1518]
}

def cell_8621 : Cell := { cellDefaults with
  domain := ⟨(34400000000000003 / 100000000000000000 : ℚ), (34406250000000003 / 100000000000000000 : ℚ)⟩
  r := (18843955441613 / 25000000000000 : ℚ)
  w := (8303702528127 / 5000000000000 : ℚ)
  center := (34403125000000003 / 100000000000000000 : ℚ)
  supportValue := (6520751292463963 / 10000000000000000 : ℚ)
  supportSlope := (-4502415910504709 / 1000000000000000 : ℚ)
  oldCenter := (6520751292463963 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_849
  oldLo := (6515642458100559 / 10000000000000000 : ℚ)
  oldHi := (8156250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1520, piece_1521]
}

def cell_8622 : Cell := { cellDefaults with
  domain := ⟨(34406250000000003 / 100000000000000000 : ℚ), (34412500000000003 / 100000000000000000 : ℚ)⟩
  r := (18843955441613 / 25000000000000 : ℚ)
  w := (8303702528127 / 5000000000000 : ℚ)
  center := (34409375000000003 / 100000000000000000 : ℚ)
  supportValue := (6517938089717007 / 10000000000000000 : ℚ)
  supportSlope := (-281232834792311 / 62500000000000 : ℚ)
  oldCenter := (6517938089717007 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_849
  oldLo := (6515642458100559 / 10000000000000000 : ℚ)
  oldHi := (32600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1520]
}

def cell_8623 : Cell := { cellDefaults with
  domain := ⟨(34412500000000003 / 100000000000000000 : ℚ), (34418750000000003 / 100000000000000000 : ℚ)⟩
  r := (18843955441613 / 25000000000000 : ℚ)
  w := (8303702528127 / 5000000000000 : ℚ)
  center := (34415625000000003 / 100000000000000000 : ℚ)
  supportValue := (3257563354319701 / 5000000000000000 : ℚ)
  supportSlope := (-4496896671312811 / 1000000000000000 : ℚ)
  oldCenter := (3257563354319701 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_849
  oldLo := (32550000000000001 / 50000000000000000 : ℚ)
  oldHi := (32600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1518, piece_1519, piece_1520]
}

def cell_8624 : Cell := { cellDefaults with
  domain := ⟨(34418750000000003 / 100000000000000000 : ℚ), (34425000000000003 / 100000000000000000 : ℚ)⟩
  r := (18843955441613 / 25000000000000 : ℚ)
  w := (8303702528127 / 5000000000000 : ℚ)
  center := (34421875000000003 / 100000000000000000 : ℚ)
  supportValue := (814039619304439 / 1250000000000000 : ℚ)
  supportSlope := (-4494109829909831 / 1000000000000000 : ℚ)
  oldCenter := (814039619304439 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_849
  oldLo := (32550000000000001 / 50000000000000000 : ℚ)
  oldHi := (8143750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1518]
}

def cell_8625 : Cell := { cellDefaults with
  domain := ⟨(34425000000000003 / 100000000000000000 : ℚ), (34431250000000003 / 100000000000000000 : ℚ)⟩
  r := (18843955441613 / 25000000000000 : ℚ)
  w := (8303702528127 / 5000000000000 : ℚ)
  center := (34428125000000003 / 100000000000000000 : ℚ)
  supportValue := (203422157260113 / 312500000000000 : ℚ)
  supportSlope := (-44913845697927 / 10000000000000 : ℚ)
  oldCenter := (203422157260113 / 312500000000000 : ℚ)
  newCoefficients := coefficients_849
  oldLo := (8131250000000001 / 12500000000000000 : ℚ)
  oldHi := (8143750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1517, piece_1518]
}

def cell_8626 : Cell := { cellDefaults with
  domain := ⟨(34431250000000003 / 100000000000000000 : ℚ), (34437500000000003 / 100000000000000000 : ℚ)⟩
  r := (18843955441613 / 25000000000000 : ℚ)
  w := (8303702528127 / 5000000000000 : ℚ)
  center := (34434375000000003 / 100000000000000000 : ℚ)
  supportValue := (6506702771238789 / 10000000000000000 : ℚ)
  supportSlope := (-4488502873876143 / 1000000000000000 : ℚ)
  oldCenter := (6506702771238789 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_849
  oldLo := (8131250000000001 / 12500000000000000 : ℚ)
  oldHi := (32550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1517]
}

def cell_8627 : Cell := { cellDefaults with
  domain := ⟨(34437500000000003 / 100000000000000000 : ℚ), (34443750000000003 / 100000000000000000 : ℚ)⟩
  r := (18843955441613 / 25000000000000 : ℚ)
  w := (8303702528127 / 5000000000000 : ℚ)
  center := (34440625000000003 / 100000000000000000 : ℚ)
  supportValue := (1625974572744669 / 2500000000000000 : ℚ)
  supportSlope := (-897175883193313 / 200000000000000 : ℚ)
  oldCenter := (1625974572744669 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_849
  oldLo := (32500000000000001 / 50000000000000000 : ℚ)
  oldHi := (32550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1516, piece_1517]
}

def cell_8628 : Cell := { cellDefaults with
  domain := ⟨(34443750000000003 / 100000000000000000 : ℚ), (34450000000000003 / 100000000000000000 : ℚ)⟩
  r := (18843955441613 / 25000000000000 : ℚ)
  w := (8303702528127 / 5000000000000 : ℚ)
  center := (34446875000000003 / 100000000000000000 : ℚ)
  supportValue := (6501095530729559 / 10000000000000000 : ℚ)
  supportSlope := (-1120738205179883 / 250000000000000 : ℚ)
  oldCenter := (6501095530729559 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_849
  oldLo := (8118750000000001 / 12500000000000000 : ℚ)
  oldHi := (8131250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1515, piece_1516]
}

def cell_8629 : Cell := { cellDefaults with
  domain := ⟨(34450000000000003 / 100000000000000000 : ℚ), (34456250000000003 / 100000000000000000 : ℚ)⟩
  r := (753218310279 / 1000000000000 : ℚ)
  w := (16598877385611 / 10000000000000 : ℚ)
  center := (34453125000000003 / 100000000000000000 : ℚ)
  supportValue := (1301936543206057 / 2000000000000000 : ℚ)
  supportSlope := (-4488446899415521 / 1000000000000000 : ℚ)
  oldCenter := (1301936543206057 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_850
  oldLo := (8131250000000001 / 12500000000000000 : ℚ)
  oldHi := (8143750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1517, piece_1518]
}

def cell_8630 : Cell := { cellDefaults with
  domain := ⟨(34456250000000003 / 100000000000000000 : ℚ), (34462500000000003 / 100000000000000000 : ℚ)⟩
  r := (753218310279 / 1000000000000 : ℚ)
  w := (16598877385611 / 10000000000000 : ℚ)
  center := (34459375000000003 / 100000000000000000 : ℚ)
  supportValue := (1626719567902719 / 2500000000000000 : ℚ)
  supportSlope := (-2242799743735091 / 500000000000000 : ℚ)
  oldCenter := (1626719567902719 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_850
  oldLo := (8131250000000001 / 12500000000000000 : ℚ)
  oldHi := (32550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1517]
}

def cell_8631 : Cell := { cellDefaults with
  domain := ⟨(34462500000000003 / 100000000000000000 : ℚ), (34468750000000003 / 100000000000000000 : ℚ)⟩
  r := (753218310279 / 1000000000000 : ℚ)
  w := (16598877385611 / 10000000000000 : ℚ)
  center := (34465625000000003 / 100000000000000000 : ℚ)
  supportValue := (3252037810840439 / 5000000000000000 : ℚ)
  supportSlope := (-4482954069800371 / 1000000000000000 : ℚ)
  oldCenter := (3252037810840439 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_850
  oldLo := (32500000000000001 / 50000000000000000 : ℚ)
  oldHi := (32550000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1516, piece_1517]
}

def cell_8632 : Cell := { cellDefaults with
  domain := ⟨(34468750000000003 / 100000000000000000 : ℚ), (34475000000000003 / 100000000000000000 : ℚ)⟩
  r := (753218310279 / 1000000000000 : ℚ)
  w := (16598877385611 / 10000000000000 : ℚ)
  center := (34471875000000003 / 100000000000000000 : ℚ)
  supportValue := (260050986801049 / 400000000000000 : ℚ)
  supportSlope := (-1120008363094449 / 250000000000000 : ℚ)
  oldCenter := (260050986801049 / 400000000000000 : ℚ)
  newCoefficients := coefficients_850
  oldLo := (8118750000000001 / 12500000000000000 : ℚ)
  oldHi := (8131250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1515, piece_1516]
}

def cell_8633 : Cell := { cellDefaults with
  domain := ⟨(34475000000000003 / 100000000000000000 : ℚ), (34481250000000003 / 100000000000000000 : ℚ)⟩
  r := (753218310279 / 1000000000000 : ℚ)
  w := (16598877385611 / 10000000000000 : ℚ)
  center := (34478125000000003 / 100000000000000000 : ℚ)
  supportValue := (1299695090050061 / 2000000000000000 : ℚ)
  supportSlope := (-4477447006276947 / 1000000000000000 : ℚ)
  oldCenter := (1299695090050061 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_850
  oldLo := (8118750000000001 / 12500000000000000 : ℚ)
  oldHi := (32500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1515]
}

def cell_8634 : Cell := { cellDefaults with
  domain := ⟨(34481250000000003 / 100000000000000000 : ℚ), (34487500000000003 / 100000000000000000 : ℚ)⟩
  r := (753218310279 / 1000000000000 : ℚ)
  w := (16598877385611 / 10000000000000 : ℚ)
  center := (34484375000000003 / 100000000000000000 : ℚ)
  supportValue := (1623919496725271 / 2500000000000000 : ℚ)
  supportSlope := (-2237274922947563 / 500000000000000 : ℚ)
  oldCenter := (1623919496725271 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_850
  oldLo := (32450000000000001 / 50000000000000000 : ℚ)
  oldHi := (32500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1514, piece_1515]
}

def cell_8635 : Cell := { cellDefaults with
  domain := ⟨(34487500000000003 / 100000000000000000 : ℚ), (34493750000000003 / 100000000000000000 : ℚ)⟩
  r := (753218310279 / 1000000000000 : ℚ)
  w := (16598877385611 / 10000000000000 : ℚ)
  center := (34490625000000003 / 100000000000000000 : ℚ)
  supportValue := (3246441096556623 / 5000000000000000 : ℚ)
  supportSlope := (-8943743539020943 / 2000000000000000 : ℚ)
  oldCenter := (3246441096556623 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_850
  oldLo := (32450000000000001 / 50000000000000000 : ℚ)
  oldHi := (8118750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1514]
}

def cell_8636 : Cell := { cellDefaults with
  domain := ⟨(34493750000000003 / 100000000000000000 : ℚ), (34500000000000003 / 100000000000000000 : ℚ)⟩
  r := (753218310279 / 1000000000000 : ℚ)
  w := (16598877385611 / 10000000000000 : ℚ)
  center := (34496875000000003 / 100000000000000000 : ℚ)
  supportValue := (6490088213040163 / 10000000000000000 : ℚ)
  supportSlope := (-8938146584753781 / 2000000000000000 : ℚ)
  oldCenter := (6490088213040163 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_850
  oldLo := (8106250000000001 / 12500000000000000 : ℚ)
  oldHi := (8118750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1513, piece_1514]
}

def cell_8637 : Cell := { cellDefaults with
  domain := ⟨(34500000000000003 / 100000000000000000 : ℚ), (34506250000000003 / 100000000000000000 : ℚ)⟩
  r := (37633963963533 / 50000000000000 : ℚ)
  w := (16590368576621 / 10000000000000 : ℚ)
  center := (34503125000000003 / 100000000000000000 : ℚ)
  supportValue := (6498651081832681 / 10000000000000000 : ℚ)
  supportSlope := (-894908441731701 / 200000000000000 : ℚ)
  oldCenter := (6498651081832681 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_851
  oldLo := (8118750000000001 / 12500000000000000 : ℚ)
  oldHi := (8131250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1515, piece_1516]
}

def cell_8638 : Cell := { cellDefaults with
  domain := ⟨(34506250000000003 / 100000000000000000 : ℚ), (34512500000000003 / 100000000000000000 : ℚ)⟩
  r := (37633963963533 / 50000000000000 : ℚ)
  w := (16590368576621 / 10000000000000 : ℚ)
  center := (34509375000000003 / 100000000000000000 : ℚ)
  supportValue := (811981928393741 / 1250000000000000 : ℚ)
  supportSlope := (-1117907649621941 / 250000000000000 : ℚ)
  oldCenter := (811981928393741 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_851
  oldLo := (32450000000000001 / 50000000000000000 : ℚ)
  oldHi := (32500000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1514, piece_1515]
}

def cell_8639 : Cell := { cellDefaults with
  domain := ⟨(34512500000000003 / 100000000000000000 : ℚ), (34518750000000003 / 100000000000000000 : ℚ)⟩
  r := (37633963963533 / 50000000000000 : ℚ)
  w := (16590368576621 / 10000000000000 : ℚ)
  center := (34515625000000003 / 100000000000000000 : ℚ)
  supportValue := (6493061455900667 / 10000000000000000 : ℚ)
  supportSlope := (-8937975112417007 / 2000000000000000 : ℚ)
  oldCenter := (6493061455900667 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_851
  oldLo := (32450000000000001 / 50000000000000000 : ℚ)
  oldHi := (8118750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1514]
}

def cell_8640 : Cell := { cellDefaults with
  domain := ⟨(34518750000000003 / 100000000000000000 : ℚ), (34525000000000003 / 100000000000000000 : ℚ)⟩
  r := (37633963963533 / 50000000000000 : ℚ)
  w := (16590368576621 / 10000000000000 : ℚ)
  center := (34521875000000003 / 100000000000000000 : ℚ)
  supportValue := (1622567319103561 / 2500000000000000 : ℚ)
  supportSlope := (-2233083186732543 / 500000000000000 : ℚ)
  oldCenter := (1622567319103561 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_851
  oldLo := (8106250000000001 / 12500000000000000 : ℚ)
  oldHi := (8118750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1513, piece_1514]
}

def cell_8641 : Cell := { cellDefaults with
  domain := ⟨(34525000000000003 / 100000000000000000 : ℚ), (34531250000000003 / 100000000000000000 : ℚ)⟩
  r := (37633963963533 / 50000000000000 : ℚ)
  w := (16590368576621 / 10000000000000 : ℚ)
  center := (34528125000000003 / 100000000000000000 : ℚ)
  supportValue := (6487478719183927 / 10000000000000000 : ℚ)
  supportSlope := (-4463432839319381 / 1000000000000000 : ℚ)
  oldCenter := (6487478719183927 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_851
  oldLo := (8106250000000001 / 12500000000000000 : ℚ)
  oldHi := (32450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1513]
}

def cell_8642 : Cell := { cellDefaults with
  domain := ⟨(34531250000000003 / 100000000000000000 : ℚ), (34537500000000003 / 100000000000000000 : ℚ)⟩
  r := (37633963963533 / 50000000000000 : ℚ)
  w := (16590368576621 / 10000000000000 : ℚ)
  center := (34534375000000003 / 100000000000000000 : ℚ)
  supportValue := (6484689978720121 / 10000000000000000 : ℚ)
  supportSlope := (-4460708781731881 / 1000000000000000 : ℚ)
  oldCenter := (6484689978720121 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_851
  oldLo := (32400000000000001 / 50000000000000000 : ℚ)
  oldHi := (32450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1512, piece_1513]
}

def cell_8643 : Cell := { cellDefaults with
  domain := ⟨(34537500000000003 / 100000000000000000 : ℚ), (34543750000000003 / 100000000000000000 : ℚ)⟩
  r := (37633963963533 / 50000000000000 : ℚ)
  w := (16590368576621 / 10000000000000 : ℚ)
  center := (34540625000000003 / 100000000000000000 : ℚ)
  supportValue := (6481902862777167 / 10000000000000000 : ℚ)
  supportSlope := (-222894288189579 / 50000000000000 : ℚ)
  oldCenter := (6481902862777167 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_851
  oldLo := (32400000000000001 / 50000000000000000 : ℚ)
  oldHi := (8106250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1512]
}

def cell_8644 : Cell := { cellDefaults with
  domain := ⟨(34543750000000003 / 100000000000000000 : ℚ), (34550000000000003 / 100000000000000000 : ℚ)⟩
  r := (37633963963533 / 50000000000000 : ℚ)
  w := (16590368576621 / 10000000000000 : ℚ)
  center := (34546875000000003 / 100000000000000000 : ℚ)
  supportValue := (6479117530250753 / 10000000000000000 : ℚ)
  supportSlope := (-8910515761144211 / 2000000000000000 : ℚ)
  oldCenter := (6479117530250753 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_851
  oldLo := (8093750000000001 / 12500000000000000 : ℚ)
  oldHi := (8106250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1511, piece_1512]
}

def cell_8645 : Cell := { cellDefaults with
  domain := ⟨(34550000000000003 / 100000000000000000 : ℚ), (34556250000000003 / 100000000000000000 : ℚ)⟩
  r := (18803528042699 / 25000000000000 : ℚ)
  w := (8290939415829 / 5000000000000 : ℚ)
  center := (34553125000000003 / 100000000000000000 : ℚ)
  supportValue := (6487656169742889 / 10000000000000000 : ℚ)
  supportSlope := (-1115137059092497 / 250000000000000 : ℚ)
  oldCenter := (6487656169742889 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_852
  oldLo := (8106250000000001 / 12500000000000000 : ℚ)
  oldHi := (32450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1513]
}

def cell_8646 : Cell := { cellDefaults with
  domain := ⟨(34556250000000003 / 100000000000000000 : ℚ), (34562500000000003 / 100000000000000000 : ℚ)⟩
  r := (18803528042699 / 25000000000000 : ℚ)
  w := (8290939415829 / 5000000000000 : ℚ)
  center := (34559375000000003 / 100000000000000000 : ℚ)
  supportValue := (810608656019331 / 1250000000000000 : ℚ)
  supportSlope := (-2228900885247853 / 500000000000000 : ℚ)
  oldCenter := (810608656019331 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_852
  oldLo := (32400000000000001 / 50000000000000000 : ℚ)
  oldHi := (32450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1512, piece_1513]
}

def cell_8647 : Cell := { cellDefaults with
  domain := ⟨(34562500000000003 / 100000000000000000 : ℚ), (34568750000000003 / 100000000000000000 : ℚ)⟩
  r := (18803528042699 / 25000000000000 : ℚ)
  w := (8290939415829 / 5000000000000 : ℚ)
  center := (34565625000000003 / 100000000000000000 : ℚ)
  supportValue := (3241041964525239 / 5000000000000000 : ℚ)
  supportSlope := (-2227507051596689 / 500000000000000 : ℚ)
  oldCenter := (3241041964525239 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_852
  oldLo := (32400000000000001 / 50000000000000000 : ℚ)
  oldHi := (8106250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1512]
}

def cell_8648 : Cell := { cellDefaults with
  domain := ⟨(34568750000000003 / 100000000000000000 : ℚ), (34575000000000003 / 100000000000000000 : ℚ)⟩
  r := (18803528042699 / 25000000000000 : ℚ)
  w := (8290939415829 / 5000000000000 : ℚ)
  center := (34571875000000003 / 100000000000000000 : ℚ)
  supportValue := (202478137740139 / 312500000000000 : ℚ)
  supportSlope := (-4452363215445843 / 1000000000000000 : ℚ)
  oldCenter := (202478137740139 / 312500000000000 : ℚ)
  newCoefficients := coefficients_852
  oldLo := (8093750000000001 / 12500000000000000 : ℚ)
  oldHi := (8106250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1511, piece_1512]
}

def cell_8649 : Cell := { cellDefaults with
  domain := ⟨(34575000000000003 / 100000000000000000 : ℚ), (34581250000000003 / 100000000000000000 : ℚ)⟩
  r := (18803528042699 / 25000000000000 : ℚ)
  w := (8290939415829 / 5000000000000 : ℚ)
  center := (34578125000000003 / 100000000000000000 : ℚ)
  supportValue := (1295303708786631 / 2000000000000000 : ℚ)
  supportSlope := (-4449487456589907 / 1000000000000000 : ℚ)
  oldCenter := (1295303708786631 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_852
  oldLo := (8093750000000001 / 12500000000000000 : ℚ)
  oldHi := (32400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1511]
}

theorem check_8600 : cell_8600.check = true := by
  decide +kernel

theorem check_8601 : cell_8601.check = true := by
  decide +kernel

theorem check_8602 : cell_8602.check = true := by
  decide +kernel

theorem check_8603 : cell_8603.check = true := by
  decide +kernel

theorem check_8604 : cell_8604.check = true := by
  decide +kernel

theorem check_8605 : cell_8605.check = true := by
  decide +kernel

theorem check_8606 : cell_8606.check = true := by
  decide +kernel

theorem check_8607 : cell_8607.check = true := by
  decide +kernel

theorem check_8608 : cell_8608.check = true := by
  decide +kernel

theorem check_8609 : cell_8609.check = true := by
  decide +kernel

theorem check_8610 : cell_8610.check = true := by
  decide +kernel

theorem check_8611 : cell_8611.check = true := by
  decide +kernel

theorem check_8612 : cell_8612.check = true := by
  decide +kernel

theorem check_8613 : cell_8613.check = true := by
  decide +kernel

theorem check_8614 : cell_8614.check = true := by
  decide +kernel

theorem check_8615 : cell_8615.check = true := by
  decide +kernel

theorem check_8616 : cell_8616.check = true := by
  decide +kernel

theorem check_8617 : cell_8617.check = true := by
  decide +kernel

theorem check_8618 : cell_8618.check = true := by
  decide +kernel

theorem check_8619 : cell_8619.check = true := by
  decide +kernel

theorem check_8620 : cell_8620.check = true := by
  decide +kernel

theorem check_8621 : cell_8621.check = true := by
  decide +kernel

theorem check_8622 : cell_8622.check = true := by
  decide +kernel

theorem check_8623 : cell_8623.check = true := by
  decide +kernel

theorem check_8624 : cell_8624.check = true := by
  decide +kernel

theorem check_8625 : cell_8625.check = true := by
  decide +kernel

theorem check_8626 : cell_8626.check = true := by
  decide +kernel

theorem check_8627 : cell_8627.check = true := by
  decide +kernel

theorem check_8628 : cell_8628.check = true := by
  decide +kernel

theorem check_8629 : cell_8629.check = true := by
  decide +kernel

theorem check_8630 : cell_8630.check = true := by
  decide +kernel

theorem check_8631 : cell_8631.check = true := by
  decide +kernel

theorem check_8632 : cell_8632.check = true := by
  decide +kernel

theorem check_8633 : cell_8633.check = true := by
  decide +kernel

theorem check_8634 : cell_8634.check = true := by
  decide +kernel

theorem check_8635 : cell_8635.check = true := by
  decide +kernel

theorem check_8636 : cell_8636.check = true := by
  decide +kernel

theorem check_8637 : cell_8637.check = true := by
  decide +kernel

theorem check_8638 : cell_8638.check = true := by
  decide +kernel

theorem check_8639 : cell_8639.check = true := by
  decide +kernel

theorem check_8640 : cell_8640.check = true := by
  decide +kernel

theorem check_8641 : cell_8641.check = true := by
  decide +kernel

theorem check_8642 : cell_8642.check = true := by
  decide +kernel

theorem check_8643 : cell_8643.check = true := by
  decide +kernel

theorem check_8644 : cell_8644.check = true := by
  decide +kernel

theorem check_8645 : cell_8645.check = true := by
  decide +kernel

theorem check_8646 : cell_8646.check = true := by
  decide +kernel

theorem check_8647 : cell_8647.check = true := by
  decide +kernel

theorem check_8648 : cell_8648.check = true := by
  decide +kernel

theorem check_8649 : cell_8649.check = true := by
  decide +kernel

def cells : List Cell := [cell_8600, cell_8601, cell_8602, cell_8603, cell_8604, cell_8605, cell_8606, cell_8607, cell_8608, cell_8609, cell_8610, cell_8611, cell_8612, cell_8613, cell_8614, cell_8615, cell_8616, cell_8617, cell_8618, cell_8619, cell_8620, cell_8621, cell_8622, cell_8623, cell_8624, cell_8625, cell_8626, cell_8627, cell_8628, cell_8629, cell_8630, cell_8631, cell_8632, cell_8633, cell_8634, cell_8635, cell_8636, cell_8637, cell_8638, cell_8639, cell_8640, cell_8641, cell_8642, cell_8643, cell_8644, cell_8645, cell_8646, cell_8647, cell_8648, cell_8649]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8600, check_8601, check_8602, check_8603, check_8604, check_8605, check_8606, check_8607, check_8608, check_8609, check_8610, check_8611, check_8612, check_8613, check_8614, check_8615, check_8616, check_8617, check_8618, check_8619, check_8620, check_8621, check_8622, check_8623, check_8624, check_8625, check_8626, check_8627, check_8628, check_8629, check_8630, check_8631, check_8632, check_8633, check_8634, check_8635, check_8636, check_8637, check_8638, check_8639, check_8640, check_8641, check_8642, check_8643, check_8644, check_8645, check_8646, check_8647, check_8648, check_8649, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0172

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0172
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0172
open AnalyticBounds.ExpressionCertificate

theorem linked_8600 : Linked cell_8600 pieces := by
  link_source cell_8600 with piece_846 using piece_846_mem, ⟨piece_1525_mem, piece_1526_mem⟩

theorem linked_8601 : Linked cell_8601 pieces := by
  link_source cell_8601 with piece_846 using piece_846_mem, piece_1525_mem

theorem linked_8602 : Linked cell_8602 pieces := by
  link_source cell_8602 with piece_846 using piece_846_mem, ⟨piece_1524_mem, piece_1525_mem⟩

theorem linked_8603 : Linked cell_8603 pieces := by
  link_source cell_8603 with piece_846 using piece_846_mem, piece_1524_mem

theorem linked_8604 : Linked cell_8604 pieces := by
  link_source cell_8604 with piece_846 using piece_846_mem, ⟨piece_1523_mem, piece_1524_mem⟩

theorem linked_8605 : Linked cell_8605 pieces := by
  link_source cell_8605 with piece_847 using piece_847_mem, piece_1525_mem

theorem linked_8606 : Linked cell_8606 pieces := by
  link_source cell_8606 with piece_847 using piece_847_mem, ⟨piece_1524_mem, piece_1525_mem⟩

theorem linked_8607 : Linked cell_8607 pieces := by
  link_source cell_8607 with piece_847 using piece_847_mem, piece_1524_mem

theorem linked_8608 : Linked cell_8608 pieces := by
  link_source cell_8608 with piece_847 using piece_847_mem, ⟨piece_1523_mem, piece_1524_mem⟩

theorem linked_8609 : Linked cell_8609 pieces := by
  link_source cell_8609 with piece_847 using piece_847_mem, piece_1523_mem

theorem linked_8610 : Linked cell_8610 pieces := by
  link_source cell_8610 with piece_847 using piece_847_mem, ⟨piece_1522_mem, piece_1523_mem⟩

theorem linked_8611 : Linked cell_8611 pieces := by
  link_source cell_8611 with piece_847 using piece_847_mem, ⟨piece_1521_mem, piece_1522_mem⟩

theorem linked_8612 : Linked cell_8612 pieces := by
  link_source cell_8612 with piece_847 using piece_847_mem, piece_1521_mem

theorem linked_8613 : Linked cell_8613 pieces := by
  link_source cell_8613 with piece_848 using piece_848_mem, piece_1523_mem

theorem linked_8614 : Linked cell_8614 pieces := by
  link_source cell_8614 with piece_848 using piece_848_mem, ⟨piece_1522_mem, piece_1523_mem⟩

theorem linked_8615 : Linked cell_8615 pieces := by
  link_source cell_8615 with piece_848 using piece_848_mem, ⟨piece_1521_mem, piece_1522_mem⟩

theorem linked_8616 : Linked cell_8616 pieces := by
  link_source cell_8616 with piece_848 using piece_848_mem, piece_1521_mem

theorem linked_8617 : Linked cell_8617 pieces := by
  link_source cell_8617 with piece_848 using piece_848_mem, ⟨piece_1520_mem, piece_1521_mem⟩

theorem linked_8618 : Linked cell_8618 pieces := by
  link_source cell_8618 with piece_848 using piece_848_mem, piece_1520_mem

theorem linked_8619 : Linked cell_8619 pieces := by
  link_source cell_8619 with piece_848 using piece_848_mem, ⟨piece_1518_mem, ⟨piece_1519_mem, piece_1520_mem⟩⟩

theorem linked_8620 : Linked cell_8620 pieces := by
  link_source cell_8620 with piece_848 using piece_848_mem, piece_1518_mem

theorem linked_8621 : Linked cell_8621 pieces := by
  link_source cell_8621 with piece_849 using piece_849_mem, ⟨piece_1520_mem, piece_1521_mem⟩

theorem linked_8622 : Linked cell_8622 pieces := by
  link_source cell_8622 with piece_849 using piece_849_mem, piece_1520_mem

theorem linked_8623 : Linked cell_8623 pieces := by
  link_source cell_8623 with piece_849 using piece_849_mem, ⟨piece_1518_mem, ⟨piece_1519_mem, piece_1520_mem⟩⟩

theorem linked_8624 : Linked cell_8624 pieces := by
  link_source cell_8624 with piece_849 using piece_849_mem, piece_1518_mem

theorem linked_8625 : Linked cell_8625 pieces := by
  link_source cell_8625 with piece_849 using piece_849_mem, ⟨piece_1517_mem, piece_1518_mem⟩

theorem linked_8626 : Linked cell_8626 pieces := by
  link_source cell_8626 with piece_849 using piece_849_mem, piece_1517_mem

theorem linked_8627 : Linked cell_8627 pieces := by
  link_source cell_8627 with piece_849 using piece_849_mem, ⟨piece_1516_mem, piece_1517_mem⟩

theorem linked_8628 : Linked cell_8628 pieces := by
  link_source cell_8628 with piece_849 using piece_849_mem, ⟨piece_1515_mem, piece_1516_mem⟩

theorem linked_8629 : Linked cell_8629 pieces := by
  link_source cell_8629 with piece_850 using piece_850_mem, ⟨piece_1517_mem, piece_1518_mem⟩

theorem linked_8630 : Linked cell_8630 pieces := by
  link_source cell_8630 with piece_850 using piece_850_mem, piece_1517_mem

theorem linked_8631 : Linked cell_8631 pieces := by
  link_source cell_8631 with piece_850 using piece_850_mem, ⟨piece_1516_mem, piece_1517_mem⟩

theorem linked_8632 : Linked cell_8632 pieces := by
  link_source cell_8632 with piece_850 using piece_850_mem, ⟨piece_1515_mem, piece_1516_mem⟩

theorem linked_8633 : Linked cell_8633 pieces := by
  link_source cell_8633 with piece_850 using piece_850_mem, piece_1515_mem

theorem linked_8634 : Linked cell_8634 pieces := by
  link_source cell_8634 with piece_850 using piece_850_mem, ⟨piece_1514_mem, piece_1515_mem⟩

theorem linked_8635 : Linked cell_8635 pieces := by
  link_source cell_8635 with piece_850 using piece_850_mem, piece_1514_mem

theorem linked_8636 : Linked cell_8636 pieces := by
  link_source cell_8636 with piece_850 using piece_850_mem, ⟨piece_1513_mem, piece_1514_mem⟩

theorem linked_8637 : Linked cell_8637 pieces := by
  link_source cell_8637 with piece_851 using piece_851_mem, ⟨piece_1515_mem, piece_1516_mem⟩

theorem linked_8638 : Linked cell_8638 pieces := by
  link_source cell_8638 with piece_851 using piece_851_mem, ⟨piece_1514_mem, piece_1515_mem⟩

theorem linked_8639 : Linked cell_8639 pieces := by
  link_source cell_8639 with piece_851 using piece_851_mem, piece_1514_mem

theorem linked_8640 : Linked cell_8640 pieces := by
  link_source cell_8640 with piece_851 using piece_851_mem, ⟨piece_1513_mem, piece_1514_mem⟩

theorem linked_8641 : Linked cell_8641 pieces := by
  link_source cell_8641 with piece_851 using piece_851_mem, piece_1513_mem

theorem linked_8642 : Linked cell_8642 pieces := by
  link_source cell_8642 with piece_851 using piece_851_mem, ⟨piece_1512_mem, piece_1513_mem⟩

theorem linked_8643 : Linked cell_8643 pieces := by
  link_source cell_8643 with piece_851 using piece_851_mem, piece_1512_mem

theorem linked_8644 : Linked cell_8644 pieces := by
  link_source cell_8644 with piece_851 using piece_851_mem, ⟨piece_1511_mem, piece_1512_mem⟩

theorem linked_8645 : Linked cell_8645 pieces := by
  link_source cell_8645 with piece_852 using piece_852_mem, piece_1513_mem

theorem linked_8646 : Linked cell_8646 pieces := by
  link_source cell_8646 with piece_852 using piece_852_mem, ⟨piece_1512_mem, piece_1513_mem⟩

theorem linked_8647 : Linked cell_8647 pieces := by
  link_source cell_8647 with piece_852 using piece_852_mem, piece_1512_mem

theorem linked_8648 : Linked cell_8648 pieces := by
  link_source cell_8648 with piece_852 using piece_852_mem, ⟨piece_1511_mem, piece_1512_mem⟩

theorem linked_8649 : Linked cell_8649 pieces := by
  link_source cell_8649 with piece_852 using piece_852_mem, piece_1511_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0172.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0172.cells,List.forall_mem_cons]
  exact ⟨linked_8600, linked_8601, linked_8602, linked_8603, linked_8604, linked_8605, linked_8606, linked_8607, linked_8608, linked_8609, linked_8610, linked_8611, linked_8612, linked_8613, linked_8614, linked_8615, linked_8616, linked_8617, linked_8618, linked_8619, linked_8620, linked_8621, linked_8622, linked_8623, linked_8624, linked_8625, linked_8626, linked_8627, linked_8628, linked_8629, linked_8630, linked_8631, linked_8632, linked_8633, linked_8634, linked_8635, linked_8636, linked_8637, linked_8638, linked_8639, linked_8640, linked_8641, linked_8642, linked_8643, linked_8644, linked_8645, linked_8646, linked_8647, linked_8648, linked_8649, by simp⟩

theorem covered : covers (34268750000000003 / 100000000000000000 : ℚ) (34581250000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0172.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0172
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0173
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(34581250000000003 / 100000000000000000 : ℚ), (34587500000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (75160384273143 / 100000000000000 : ℚ)
  w := (16573408074631 / 10000000000000 : ℚ)
  center := (34584375000000003 / 100000000000000000 : ℚ)
  supportValue := (6473738418756171 / 10000000000000000 : ℚ)
  supportSlope := (-4446931106954821 / 1000000000000000 : ℚ)
  oldCenter := (6473738418756171 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_853
  oldLo := (64650000000000007 / 100000000000000000 : ℚ)
  oldHi := (32350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1510, piece_1511]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8650 : Cell := { cellDefaults with
  r := (18803528042699 / 25000000000000 : ℚ)
  w := (8290939415829 / 5000000000000 : ℚ)
  newCoefficients := coefficients_852
  oldLo := (32350000000000001 / 50000000000000000 : ℚ)
  oldHi := (32400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1510, piece_1511]
}

def cell_8651 : Cell := { cellDefaults with
  domain := ⟨(34587500000000003 / 100000000000000000 : ℚ), (34593750000000003 / 100000000000000000 : ℚ)⟩
  r := (18803528042699 / 25000000000000 : ℚ)
  w := (8290939415829 / 5000000000000 : ℚ)
  center := (34590625000000003 / 100000000000000000 : ℚ)
  supportValue := (6470960005706143 / 10000000000000000 : ℚ)
  supportSlope := (-2222018957322547 / 500000000000000 : ℚ)
  oldCenter := (6470960005706143 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_852
  oldHi := (8093750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1509, piece_1510]
}

def cell_8652 : Cell := { cellDefaults with
  domain := ⟨(34593750000000003 / 100000000000000000 : ℚ), (34600000000000003 / 100000000000000000 : ℚ)⟩
  r := (18803528042699 / 25000000000000 : ℚ)
  w := (8290939415829 / 5000000000000 : ℚ)
  center := (34596875000000003 / 100000000000000000 : ℚ)
  supportValue := (3234091636307551 / 5000000000000000 : ℚ)
  supportSlope := (-44414359470899 / 10000000000000 : ℚ)
  oldCenter := (3234091636307551 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_852
  oldPieces := [piece_1509]
}

def cell_8653 : Cell := { cellDefaults with
  domain := ⟨(34600000000000003 / 100000000000000000 : ℚ), (34606250000000003 / 100000000000000000 : ℚ)⟩
  center := (34603125000000003 / 100000000000000000 : ℚ)
  supportValue := (6476697691778099 / 10000000000000000 : ℚ)
  supportSlope := (-8893230357735149 / 2000000000000000 : ℚ)
  oldCenter := (6476697691778099 / 10000000000000000 : ℚ)
  oldLo := (8093750000000001 / 12500000000000000 : ℚ)
  oldHi := (32400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1511]
}

def cell_8654 : Cell := { cellDefaults with
  domain := ⟨(34606250000000003 / 100000000000000000 : ℚ), (34612500000000003 / 100000000000000000 : ℚ)⟩
  center := (34609375000000003 / 100000000000000000 : ℚ)
  supportValue := (6473919377963709 / 10000000000000000 : ℚ)
  supportSlope := (-8888072248602441 / 2000000000000000 : ℚ)
  oldCenter := (6473919377963709 / 10000000000000000 : ℚ)
  oldLo := (32350000000000001 / 50000000000000000 : ℚ)
  oldHi := (32400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1510, piece_1511]
}

def cell_8655 : Cell := { cellDefaults with
  domain := ⟨(34612500000000003 / 100000000000000000 : ℚ), (34618750000000003 / 100000000000000000 : ℚ)⟩
  center := (34615625000000003 / 100000000000000000 : ℚ)
  supportValue := (3235571377018707 / 5000000000000000 : ℚ)
  supportSlope := (-8882297814970741 / 2000000000000000 : ℚ)
  oldCenter := (3235571377018707 / 5000000000000000 : ℚ)
  oldHi := (8093750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1509, piece_1510]
}

def cell_8656 : Cell := { cellDefaults with
  domain := ⟨(34618750000000003 / 100000000000000000 : ℚ), (34625000000000003 / 100000000000000000 : ℚ)⟩
  center := (34621875000000003 / 100000000000000000 : ℚ)
  supportValue := (1617091956145281 / 2500000000000000 : ℚ)
  supportSlope := (-4438583017208231 / 1000000000000000 : ℚ)
  oldCenter := (1617091956145281 / 2500000000000000 : ℚ)
  oldPieces := [piece_1509]
}

def cell_8657 : Cell := { cellDefaults with
  domain := ⟨(34625000000000003 / 100000000000000000 : ℚ), (34631250000000003 / 100000000000000000 : ℚ)⟩
  center := (34628125000000003 / 100000000000000000 : ℚ)
  supportValue := (6465594638571013 / 10000000000000000 : ℚ)
  supportSlope := (-2217869340778833 / 500000000000000 : ℚ)
  oldCenter := (6465594638571013 / 10000000000000000 : ℚ)
  oldLo := (3230167597765363 / 5000000000000000 : ℚ)
  oldPieces := [piece_1508, piece_1509]
}

def cell_8658 : Cell := { cellDefaults with
  domain := ⟨(34631250000000003 / 100000000000000000 : ℚ), (34637500000000003 / 100000000000000000 : ℚ)⟩
  center := (34634375000000003 / 100000000000000000 : ℚ)
  supportValue := (6462823089394203 / 10000000000000000 : ℚ)
  supportSlope := (-1108271968982777 / 250000000000000 : ℚ)
  oldCenter := (6462823089394203 / 10000000000000000 : ℚ)
  oldLo := (3230167597765363 / 5000000000000000 : ℚ)
  oldHi := (64650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1508]
}

def cell_8659 : Cell := { cellDefaults with
  domain := ⟨(34637500000000003 / 100000000000000000 : ℚ), (34643750000000003 / 100000000000000000 : ℚ)⟩
  center := (34640625000000003 / 100000000000000000 : ℚ)
  supportValue := (403753333546229 / 625000000000000 : ℚ)
  supportSlope := (-4430333870875103 / 1000000000000000 : ℚ)
  oldCenter := (403753333546229 / 625000000000000 : ℚ)
  oldLo := (64550000000000007 / 100000000000000000 : ℚ)
  oldHi := (64650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1506, piece_1507, piece_1508]
}

def cell_8660 : Cell := { cellDefaults with
  domain := ⟨(34643750000000003 / 100000000000000000 : ℚ), (34650000000000003 / 100000000000000000 : ℚ)⟩
  center := (34646875000000003 / 100000000000000000 : ℚ)
  supportValue := (1614321291228883 / 2500000000000000 : ℚ)
  supportSlope := (-138362449234819 / 31250000000000 : ℚ)
  oldCenter := (1614321291228883 / 2500000000000000 : ℚ)
  oldLo := (64550000000000007 / 100000000000000000 : ℚ)
  oldHi := (32300000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1506]
}

def cell_8661 : Cell := { cellDefaults with
  domain := ⟨(34650000000000003 / 100000000000000000 : ℚ), (34656250000000003 / 100000000000000000 : ℚ)⟩
  r := (37553371412943 / 50000000000000 : ℚ)
  w := (4141238970793 / 2500000000000 : ℚ)
  center := (34653125000000003 / 100000000000000000 : ℚ)
  supportValue := (3232887892459387 / 5000000000000000 : ℚ)
  supportSlope := (-4432849330335387 / 1000000000000000 : ℚ)
  oldCenter := (3232887892459387 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_854
  oldLo := (3230167597765363 / 5000000000000000 : ℚ)
  oldPieces := [piece_1508, piece_1509]
}

def cell_8662 : Cell := { cellDefaults with
  domain := ⟨(34656250000000003 / 100000000000000000 : ℚ), (34662500000000003 / 100000000000000000 : ℚ)⟩
  r := (37553371412943 / 50000000000000 : ℚ)
  w := (4141238970793 / 2500000000000 : ℚ)
  center := (34659375000000003 / 100000000000000000 : ℚ)
  supportValue := (403937877474123 / 625000000000000 : ℚ)
  supportSlope := (-8860468762605933 / 2000000000000000 : ℚ)
  oldCenter := (403937877474123 / 625000000000000 : ℚ)
  newCoefficients := coefficients_854
  oldLo := (3230167597765363 / 5000000000000000 : ℚ)
  oldHi := (64650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1508]
}

def cell_8663 : Cell := { cellDefaults with
  domain := ⟨(34662500000000003 / 100000000000000000 : ℚ), (34668750000000003 / 100000000000000000 : ℚ)⟩
  r := (37553371412943 / 50000000000000 : ℚ)
  w := (4141238970793 / 2500000000000 : ℚ)
  center := (34665625000000003 / 100000000000000000 : ℚ)
  supportValue := (25840952272937 / 40000000000000 : ℚ)
  supportSlope := (-4427457027706083 / 1000000000000000 : ℚ)
  oldCenter := (25840952272937 / 40000000000000 : ℚ)
  newCoefficients := coefficients_854
  oldLo := (64550000000000007 / 100000000000000000 : ℚ)
  oldHi := (64650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1506, piece_1507, piece_1508]
}

def cell_8664 : Cell := { cellDefaults with
  domain := ⟨(34668750000000003 / 100000000000000000 : ℚ), (34675000000000003 / 100000000000000000 : ℚ)⟩
  r := (37553371412943 / 50000000000000 : ℚ)
  w := (4141238970793 / 2500000000000 : ℚ)
  center := (34671875000000003 / 100000000000000000 : ℚ)
  supportValue := (3228735846257867 / 5000000000000000 : ℚ)
  supportSlope := (-4424757849399441 / 1000000000000000 : ℚ)
  oldCenter := (3228735846257867 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_854
  oldLo := (64550000000000007 / 100000000000000000 : ℚ)
  oldHi := (32300000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1506]
}

def cell_8665 : Cell := { cellDefaults with
  domain := ⟨(34675000000000003 / 100000000000000000 : ℚ), (34681250000000003 / 100000000000000000 : ℚ)⟩
  r := (37553371412943 / 50000000000000 : ℚ)
  w := (4141238970793 / 2500000000000 : ℚ)
  center := (34678125000000003 / 100000000000000000 : ℚ)
  supportValue := (1290941422567367 / 2000000000000000 : ℚ)
  supportSlope := (-2211035664998917 / 500000000000000 : ℚ)
  oldCenter := (1290941422567367 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_854
  oldLo := (32250000000000001 / 50000000000000000 : ℚ)
  oldHi := (32300000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1505, piece_1506]
}

def cell_8666 : Cell := { cellDefaults with
  domain := ⟨(34681250000000003 / 100000000000000000 : ℚ), (34687500000000003 / 100000000000000000 : ℚ)⟩
  r := (37553371412943 / 50000000000000 : ℚ)
  w := (4141238970793 / 2500000000000 : ℚ)
  center := (34684375000000003 / 100000000000000000 : ℚ)
  supportValue := (1612986032860847 / 2500000000000000 : ℚ)
  supportSlope := (-4419290592277747 / 1000000000000000 : ℚ)
  oldCenter := (1612986032860847 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_854
  oldLo := (32250000000000001 / 50000000000000000 : ℚ)
  oldHi := (64550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1505]
}

def cell_8667 : Cell := { cellDefaults with
  domain := ⟨(34687500000000003 / 100000000000000000 : ℚ), (34693750000000003 / 100000000000000000 : ℚ)⟩
  r := (37553371412943 / 50000000000000 : ℚ)
  w := (4141238970793 / 2500000000000 : ℚ)
  center := (34690625000000003 / 100000000000000000 : ℚ)
  supportValue := (6449182914349699 / 10000000000000000 : ℚ)
  supportSlope := (-2208346484167123 / 500000000000000 : ℚ)
  oldCenter := (6449182914349699 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_854
  oldLo := (64450000000000007 / 100000000000000000 : ℚ)
  oldHi := (64550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1504, piece_1505]
}

def cell_8668 : Cell := { cellDefaults with
  domain := ⟨(34693750000000003 / 100000000000000000 : ℚ), (34700000000000003 / 100000000000000000 : ℚ)⟩
  r := (37553371412943 / 50000000000000 : ℚ)
  w := (4141238970793 / 2500000000000 : ℚ)
  center := (34696875000000003 / 100000000000000000 : ℚ)
  supportValue := (6446423346556369 / 10000000000000000 : ℚ)
  supportSlope := (-4413830784976369 / 1000000000000000 : ℚ)
  oldCenter := (6446423346556369 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_854
  oldLo := (64450000000000007 / 100000000000000000 : ℚ)
  oldHi := (32250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1504]
}

def cell_8669 : Cell := { cellDefaults with
  domain := ⟨(34700000000000003 / 100000000000000000 : ℚ), (34706250000000003 / 100000000000000000 : ℚ)⟩
  r := (1172706088967 / 1562500000000 : ℚ)
  w := (16556522150189 / 10000000000000 : ℚ)
  center := (34703125000000003 / 100000000000000000 : ℚ)
  supportValue := (403430623533569 / 625000000000000 : ℚ)
  supportSlope := (-8838387447312357 / 2000000000000000 : ℚ)
  oldCenter := (403430623533569 / 625000000000000 : ℚ)
  newCoefficients := coefficients_855
  oldLo := (32250000000000001 / 50000000000000000 : ℚ)
  oldHi := (32300000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1505, piece_1506]
}

def cell_8670 : Cell := { cellDefaults with
  domain := ⟨(34706250000000003 / 100000000000000000 : ℚ), (34712500000000003 / 100000000000000000 : ℚ)⟩
  r := (1172706088967 / 1562500000000 : ℚ)
  w := (16556522150189 / 10000000000000 : ℚ)
  center := (34709375000000003 / 100000000000000000 : ℚ)
  supportValue := (1290425754619889 / 2000000000000000 : ℚ)
  supportSlope := (-4416449157744751 / 1000000000000000 : ℚ)
  oldCenter := (1290425754619889 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_855
  oldLo := (32250000000000001 / 50000000000000000 : ℚ)
  oldHi := (64550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1505]
}

def cell_8671 : Cell := { cellDefaults with
  domain := ⟨(34712500000000003 / 100000000000000000 : ℚ), (34718750000000003 / 100000000000000000 : ℚ)⟩
  r := (1172706088967 / 1562500000000 : ℚ)
  w := (16556522150189 / 10000000000000 : ℚ)
  center := (34715625000000003 / 100000000000000000 : ℚ)
  supportValue := (1612342337190301 / 2500000000000000 : ℚ)
  supportSlope := (-4413827762068223 / 1000000000000000 : ℚ)
  oldCenter := (1612342337190301 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_855
  oldLo := (64450000000000007 / 100000000000000000 : ℚ)
  oldHi := (64550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1504, piece_1505]
}

def cell_8672 : Cell := { cellDefaults with
  domain := ⟨(34718750000000003 / 100000000000000000 : ℚ), (34725000000000003 / 100000000000000000 : ℚ)⟩
  r := (1172706088967 / 1562500000000 : ℚ)
  w := (16556522150189 / 10000000000000 : ℚ)
  center := (34721875000000003 / 100000000000000000 : ℚ)
  supportValue := (6446611550806531 / 10000000000000000 : ℚ)
  supportSlope := (-8822004661652727 / 2000000000000000 : ℚ)
  oldCenter := (6446611550806531 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_855
  oldLo := (64450000000000007 / 100000000000000000 : ℚ)
  oldHi := (32250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1504]
}

def cell_8673 : Cell := { cellDefaults with
  domain := ⟨(34725000000000003 / 100000000000000000 : ℚ), (69462430167597769 / 200000000000000000 : ℚ)⟩
  r := (1172706088967 / 1562500000000 : ℚ)
  w := (16556522150189 / 10000000000000 : ℚ)
  center := (5556497206703911 / 16000000000000000 : ℚ)
  supportValue := (322193158684371 / 500000000000000 : ℚ)
  supportSlope := (-440847626906969 / 100000000000000 : ℚ)
  oldCenter := (322193158684371 / 500000000000000 : ℚ)
  newCoefficients := coefficients_855
  oldLo := (32200000000000001 / 50000000000000000 : ℚ)
  oldHi := (32250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1503, piece_1504]
}

def cell_8674 : Cell := { cellDefaults with
  domain := ⟨(69462430167597769 / 200000000000000000 : ℚ), (17368715083798883 / 50000000000000000 : ℚ)⟩
  r := (1172706088967 / 1562500000000 : ℚ)
  w := (16556522150189 / 10000000000000 : ℚ)
  center := (138937290502793301 / 400000000000000000 : ℚ)
  supportValue := (6441124154052653 / 10000000000000000 : ℚ)
  supportSlope := (-8811255922130707 / 2000000000000000 : ℚ)
  oldCenter := (6441124154052653 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_855
  oldLo := (64350000000000007 / 100000000000000000 : ℚ)
  oldHi := (64450000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1502, piece_1503]
}

def cell_8675 : Cell := { cellDefaults with
  domain := ⟨(17368715083798883 / 50000000000000000 : ℚ), (69487430167597769 / 200000000000000000 : ℚ)⟩
  r := (1172706088967 / 1562500000000 : ℚ)
  w := (16556522150189 / 10000000000000 : ℚ)
  center := (138962290502793301 / 400000000000000000 : ℚ)
  supportValue := (64383714139043 / 100000000000000 : ℚ)
  supportSlope := (-550386958153933 / 125000000000000 : ℚ)
  oldCenter := (64383714139043 / 100000000000000 : ℚ)
  newCoefficients := coefficients_856
  oldLo := (64350000000000007 / 100000000000000000 : ℚ)
  oldHi := (32200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1502]
}

def cell_8676 : Cell := { cellDefaults with
  domain := ⟨(69487430167597769 / 200000000000000000 : ℚ), (34750000000000003 / 100000000000000000 : ℚ)⟩
  r := (1172706088967 / 1562500000000 : ℚ)
  w := (16556522150189 / 10000000000000 : ℚ)
  center := (5559497206703911 / 16000000000000000 : ℚ)
  supportValue := (6435605033348333 / 10000000000000000 : ℚ)
  supportSlope := (-4400266448528357 / 1000000000000000 : ℚ)
  oldCenter := (6435605033348333 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_856
  oldLo := (32150000000000001 / 50000000000000000 : ℚ)
  oldHi := (32200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1501, piece_1502]
}

def cell_8677 : Cell := { cellDefaults with
  domain := ⟨(34750000000000003 / 100000000000000000 : ℚ), (34756250000000003 / 100000000000000000 : ℚ)⟩
  r := (74999722223607 / 100000000000000 : ℚ)
  w := (16548107139393 / 10000000000000 : ℚ)
  center := (34753125000000003 / 100000000000000000 : ℚ)
  supportValue := (322202010909121 / 500000000000000 : ℚ)
  supportSlope := (-1101400853168677 / 250000000000000 : ℚ)
  oldCenter := (322202010909121 / 500000000000000 : ℚ)
  newCoefficients := coefficients_857
  oldLo := (32200000000000001 / 50000000000000000 : ℚ)
  oldHi := (32250000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1503, piece_1504]
}

def cell_8678 : Cell := { cellDefaults with
  domain := ⟨(34756250000000003 / 100000000000000000 : ℚ), (34762500000000003 / 100000000000000000 : ℚ)⟩
  r := (74999722223607 / 100000000000000 : ℚ)
  w := (16548107139393 / 10000000000000 : ℚ)
  center := (34759375000000003 / 100000000000000000 : ℚ)
  supportValue := (805160948854693 / 1250000000000000 : ℚ)
  supportSlope := (-2201374625672159 / 500000000000000 : ℚ)
  oldCenter := (805160948854693 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_857
  oldLo := (64350000000000007 / 100000000000000000 : ℚ)
  oldHi := (64450000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1502, piece_1503]
}

def cell_8679 : Cell := { cellDefaults with
  domain := ⟨(34762500000000003 / 100000000000000000 : ℚ), (34768750000000003 / 100000000000000000 : ℚ)⟩
  r := (74999722223607 / 100000000000000 : ℚ)
  w := (16548107139393 / 10000000000000 : ℚ)
  center := (34765625000000003 / 100000000000000000 : ℚ)
  supportValue := (804817081103089 / 1250000000000000 : ℚ)
  supportSlope := (-1100062031636817 / 250000000000000 : ℚ)
  oldCenter := (804817081103089 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_857
  oldLo := (64350000000000007 / 100000000000000000 : ℚ)
  oldHi := (32200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1502]
}

def cell_8680 : Cell := { cellDefaults with
  domain := ⟨(34768750000000003 / 100000000000000000 : ℚ), (34775000000000003 / 100000000000000000 : ℚ)⟩
  r := (74999722223607 / 100000000000000 : ℚ)
  w := (16548107139393 / 10000000000000 : ℚ)
  center := (34771875000000003 / 100000000000000000 : ℚ)
  supportValue := (3217893704787141 / 5000000000000000 : ℚ)
  supportSlope := (-2198705747165519 / 500000000000000 : ℚ)
  oldCenter := (3217893704787141 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_857
  oldLo := (32150000000000001 / 50000000000000000 : ℚ)
  oldHi := (32200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1501, piece_1502]
}

def cell_8681 : Cell := { cellDefaults with
  domain := ⟨(34775000000000003 / 100000000000000000 : ℚ), (34781250000000003 / 100000000000000000 : ℚ)⟩
  r := (74999722223607 / 100000000000000 : ℚ)
  w := (16548107139393 / 10000000000000 : ℚ)
  center := (34778125000000003 / 100000000000000000 : ℚ)
  supportValue := (3216519901279241 / 5000000000000000 : ℚ)
  supportSlope := (-549354075765951 / 125000000000000 : ℚ)
  oldCenter := (3216519901279241 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_857
  oldLo := (32150000000000001 / 50000000000000000 : ℚ)
  oldHi := (64350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1501]
}

def cell_8682 : Cell := { cellDefaults with
  domain := ⟨(34781250000000003 / 100000000000000000 : ℚ), (34787500000000003 / 100000000000000000 : ℚ)⟩
  r := (74999722223607 / 100000000000000 : ℚ)
  w := (16548107139393 / 10000000000000 : ℚ)
  center := (34784375000000003 / 100000000000000000 : ℚ)
  supportValue := (6430293946826591 / 10000000000000000 : ℚ)
  supportSlope := (-2196040041225089 / 500000000000000 : ℚ)
  oldCenter := (6430293946826591 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_857
  oldLo := (64250000000000007 / 100000000000000000 : ℚ)
  oldHi := (64350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1500, piece_1501]
}

def cell_8683 : Cell := { cellDefaults with
  domain := ⟨(34787500000000003 / 100000000000000000 : ℚ), (34793750000000003 / 100000000000000000 : ℚ)⟩
  r := (74999722223607 / 100000000000000 : ℚ)
  w := (16548107139393 / 10000000000000 : ℚ)
  center := (34790625000000003 / 100000000000000000 : ℚ)
  supportValue := (321377483542103 / 500000000000000 : ℚ)
  supportSlope := (-8778848862228017 / 2000000000000000 : ℚ)
  oldCenter := (321377483542103 / 500000000000000 : ℚ)
  newCoefficients := coefficients_857
  oldLo := (64250000000000007 / 100000000000000000 : ℚ)
  oldHi := (32150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1500]
}

def cell_8684 : Cell := { cellDefaults with
  domain := ⟨(34793750000000003 / 100000000000000000 : ℚ), (34800000000000003 / 100000000000000000 : ℚ)⟩
  r := (74999722223607 / 100000000000000 : ℚ)
  w := (16548107139393 / 10000000000000 : ℚ)
  center := (34796875000000003 / 100000000000000000 : ℚ)
  supportValue := (3212403587051759 / 5000000000000000 : ℚ)
  supportSlope := (-1096688789780309 / 250000000000000 : ℚ)
  oldCenter := (3212403587051759 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_857
  oldLo := (32100000000000001 / 50000000000000000 : ℚ)
  oldHi := (32150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1499, piece_1500]
}

def cell_8685 : Cell := { cellDefaults with
  domain := ⟨(34800000000000003 / 100000000000000000 : ℚ), (34806250000000003 / 100000000000000000 : ℚ)⟩
  r := (74946341619749 / 100000000000000 : ℚ)
  w := (1653971111903 / 1000000000000 : ℚ)
  center := (34803125000000003 / 100000000000000000 : ℚ)
  supportValue := (3216613026612257 / 5000000000000000 : ℚ)
  supportSlope := (-4392009627942173 / 1000000000000000 : ℚ)
  oldCenter := (3216613026612257 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_858
  oldLo := (32150000000000001 / 50000000000000000 : ℚ)
  oldHi := (64350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1501]
}

def cell_8686 : Cell := { cellDefaults with
  domain := ⟨(34806250000000003 / 100000000000000000 : ℚ), (34812500000000003 / 100000000000000000 : ℚ)⟩
  r := (74946341619749 / 100000000000000 : ℚ)
  w := (1653971111903 / 1000000000000 : ℚ)
  center := (34809375000000003 / 100000000000000000 : ℚ)
  supportValue := (6430481959974841 / 10000000000000000 : ℚ)
  supportSlope := (-2194616156709017 / 500000000000000 : ℚ)
  oldCenter := (6430481959974841 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_858
  oldLo := (64250000000000007 / 100000000000000000 : ℚ)
  oldHi := (64350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1500, piece_1501]
}

def cell_8687 : Cell := { cellDefaults with
  domain := ⟨(34812500000000003 / 100000000000000000 : ℚ), (34818750000000003 / 100000000000000000 : ℚ)⟩
  r := (74946341619749 / 100000000000000 : ℚ)
  w := (1653971111903 / 1000000000000 : ℚ)
  center := (34815625000000003 / 100000000000000000 : ℚ)
  supportValue := (1606934865506227 / 2500000000000000 : ℚ)
  supportSlope := (-2193306646825377 / 500000000000000 : ℚ)
  oldCenter := (1606934865506227 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_858
  oldLo := (64250000000000007 / 100000000000000000 : ℚ)
  oldHi := (32150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1500]
}

def cell_8688 : Cell := { cellDefaults with
  domain := ⟨(34818750000000003 / 100000000000000000 : ℚ), (34825000000000003 / 100000000000000000 : ℚ)⟩
  r := (74946341619749 / 100000000000000 : ℚ)
  w := (1653971111903 / 1000000000000 : ℚ)
  center := (34821875000000003 / 100000000000000000 : ℚ)
  supportValue := (16062496849847 / 25000000000000 : ℚ)
  supportSlope := (-1095979657748103 / 250000000000000 : ℚ)
  oldCenter := (16062496849847 / 25000000000000 : ℚ)
  newCoefficients := coefficients_858
  oldLo := (32100000000000001 / 50000000000000000 : ℚ)
  oldHi := (32150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1499, piece_1500]
}

def cell_8689 : Cell := { cellDefaults with
  domain := ⟨(34825000000000003 / 100000000000000000 : ℚ), (34831250000000003 / 100000000000000000 : ℚ)⟩
  r := (74946341619749 / 100000000000000 : ℚ)
  w := (1653971111903 / 1000000000000 : ℚ)
  center := (34828125000000003 / 100000000000000000 : ℚ)
  supportValue := (1284451912455367 / 2000000000000000 : ℚ)
  supportSlope := (-547653040537277 / 125000000000000 : ℚ)
  oldCenter := (1284451912455367 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_858
  oldLo := (32100000000000001 / 50000000000000000 : ℚ)
  oldHi := (64250000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1499]
}

def cell_8690 : Cell := { cellDefaults with
  domain := ⟨(34831250000000003 / 100000000000000000 : ℚ), (34837500000000003 / 100000000000000000 : ℚ)⟩
  r := (74946341619749 / 100000000000000 : ℚ)
  w := (1653971111903 / 1000000000000 : ℚ)
  center := (34834375000000003 / 100000000000000000 : ℚ)
  supportValue := (6419522158383719 / 10000000000000000 : ℚ)
  supportSlope := (-4378611278362143 / 1000000000000000 : ℚ)
  oldCenter := (6419522158383719 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_858
  oldLo := (64150000000000007 / 100000000000000000 : ℚ)
  oldHi := (64250000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1498, piece_1499]
}

def cell_8691 : Cell := { cellDefaults with
  domain := ⟨(34837500000000003 / 100000000000000000 : ℚ), (34843750000000003 / 100000000000000000 : ℚ)⟩
  r := (74946341619749 / 100000000000000 : ℚ)
  w := (1653971111903 / 1000000000000 : ℚ)
  center := (34840625000000003 / 100000000000000000 : ℚ)
  supportValue := (160419658636317 / 250000000000000 : ℚ)
  supportSlope := (-546980330900837 / 125000000000000 : ℚ)
  oldCenter := (160419658636317 / 250000000000000 : ℚ)
  newCoefficients := coefficients_858
  oldLo := (64150000000000007 / 100000000000000000 : ℚ)
  oldHi := (32100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1498]
}

def cell_8692 : Cell := { cellDefaults with
  domain := ⟨(34843750000000003 / 100000000000000000 : ℚ), (34850000000000003 / 100000000000000000 : ℚ)⟩
  r := (74946341619749 / 100000000000000 : ℚ)
  w := (1653971111903 / 1000000000000 : ℚ)
  center := (34846875000000003 / 100000000000000000 : ℚ)
  supportValue := (6414052255788311 / 10000000000000000 : ℚ)
  supportSlope := (-546663783460577 / 125000000000000 : ℚ)
  oldCenter := (6414052255788311 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_858
  oldLo := (64100000000000001 / 100000000000000000 : ℚ)
  oldHi := (32100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1497, piece_1498]
}

def cell_8693 : Cell := { cellDefaults with
  domain := ⟨(34850000000000003 / 100000000000000000 : ℚ), (34856250000000003 / 100000000000000000 : ℚ)⟩
  r := (7489304701393 / 10000000000000 : ℚ)
  w := (16531333331649 / 10000000000000 : ℚ)
  center := (34853125000000003 / 100000000000000000 : ℚ)
  supportValue := (6422447697886079 / 10000000000000000 : ℚ)
  supportSlope := (-1094603145489259 / 250000000000000 : ℚ)
  oldCenter := (6422447697886079 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_859
  oldLo := (32100000000000001 / 50000000000000000 : ℚ)
  oldHi := (64250000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1499]
}

def cell_8694 : Cell := { cellDefaults with
  domain := ⟨(34856250000000003 / 100000000000000000 : ℚ), (34862500000000003 / 100000000000000000 : ℚ)⟩
  r := (7489304701393 / 10000000000000 : ℚ)
  w := (16531333331649 / 10000000000000 : ℚ)
  center := (34859375000000003 / 100000000000000000 : ℚ)
  supportValue := (1283942413736019 / 2000000000000000 : ℚ)
  supportSlope := (-4375774999992643 / 1000000000000000 : ℚ)
  oldCenter := (1283942413736019 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_859
  oldLo := (64150000000000007 / 100000000000000000 : ℚ)
  oldHi := (64250000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1498, piece_1499]
}

def cell_8695 : Cell := { cellDefaults with
  domain := ⟨(34862500000000003 / 100000000000000000 : ℚ), (34868750000000003 / 100000000000000000 : ℚ)⟩
  r := (7489304701393 / 10000000000000 : ℚ)
  w := (16531333331649 / 10000000000000 : ℚ)
  center := (34865625000000003 / 100000000000000000 : ℚ)
  supportValue := (641697800699739 / 1000000000000000 : ℚ)
  supportSlope := (-4373043952671907 / 1000000000000000 : ℚ)
  oldCenter := (641697800699739 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_859
  oldLo := (64150000000000007 / 100000000000000000 : ℚ)
  oldHi := (32100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1498]
}

def cell_8696 : Cell := { cellDefaults with
  domain := ⟨(34868750000000003 / 100000000000000000 : ℚ), (34875000000000003 / 100000000000000000 : ℚ)⟩
  r := (7489304701393 / 10000000000000 : ℚ)
  w := (16531333331649 / 10000000000000 : ℚ)
  center := (34871875000000003 / 100000000000000000 : ℚ)
  supportValue := (1603561421060411 / 2500000000000000 : ℚ)
  supportSlope := (-4370486429596809 / 1000000000000000 : ℚ)
  oldCenter := (1603561421060411 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_859
  oldLo := (64100000000000001 / 100000000000000000 : ℚ)
  oldHi := (32100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1497, piece_1498]
}

def cell_8697 : Cell := { cellDefaults with
  domain := ⟨(34875000000000003 / 100000000000000000 : ℚ), (34881250000000003 / 100000000000000000 : ℚ)⟩
  r := (7489304701393 / 10000000000000 : ℚ)
  w := (16531333331649 / 10000000000000 : ℚ)
  center := (34878125000000003 / 100000000000000000 : ℚ)
  supportValue := (3205757487295437 / 5000000000000000 : ℚ)
  supportSlope := (-873536517078577 / 200000000000000 : ℚ)
  oldCenter := (3205757487295437 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_859
  oldLo := (64100000000000001 / 100000000000000000 : ℚ)
  oldHi := (64150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1497]
}

def cell_8698 : Cell := { cellDefaults with
  domain := ⟨(34881250000000003 / 100000000000000000 : ℚ), (34887500000000003 / 100000000000000000 : ℚ)⟩
  r := (7489304701393 / 10000000000000 : ℚ)
  w := (16531333331649 / 10000000000000 : ℚ)
  center := (34884375000000003 / 100000000000000000 : ℚ)
  supportValue := (6408785954339059 / 10000000000000000 : ℚ)
  supportSlope := (-8730408345719809 / 2000000000000000 : ℚ)
  oldCenter := (6408785954339059 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_859
  oldLo := (3202513966480447 / 5000000000000000 : ℚ)
  oldHi := (64150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1496, piece_1497]
}

def cell_8699 : Cell := { cellDefaults with
  domain := ⟨(34887500000000003 / 100000000000000000 : ℚ), (34893750000000003 / 100000000000000000 : ℚ)⟩
  r := (7489304701393 / 10000000000000 : ℚ)
  w := (16531333331649 / 10000000000000 : ℚ)
  center := (34890625000000003 / 100000000000000000 : ℚ)
  supportValue := (3203029296091393 / 5000000000000000 : ℚ)
  supportSlope := (-1090594655754451 / 250000000000000 : ℚ)
  oldCenter := (3203029296091393 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_859
  oldLo := (64000000000000001 / 100000000000000000 : ℚ)
  oldHi := (64100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1494, piece_1495, piece_1496]
}

theorem check_8650 : cell_8650.check = true := by
  decide +kernel

theorem check_8651 : cell_8651.check = true := by
  decide +kernel

theorem check_8652 : cell_8652.check = true := by
  decide +kernel

theorem check_8653 : cell_8653.check = true := by
  decide +kernel

theorem check_8654 : cell_8654.check = true := by
  decide +kernel

theorem check_8655 : cell_8655.check = true := by
  decide +kernel

theorem check_8656 : cell_8656.check = true := by
  decide +kernel

theorem check_8657 : cell_8657.check = true := by
  decide +kernel

theorem check_8658 : cell_8658.check = true := by
  decide +kernel

theorem check_8659 : cell_8659.check = true := by
  decide +kernel

theorem check_8660 : cell_8660.check = true := by
  decide +kernel

theorem check_8661 : cell_8661.check = true := by
  decide +kernel

theorem check_8662 : cell_8662.check = true := by
  decide +kernel

theorem check_8663 : cell_8663.check = true := by
  decide +kernel

theorem check_8664 : cell_8664.check = true := by
  decide +kernel

theorem check_8665 : cell_8665.check = true := by
  decide +kernel

theorem check_8666 : cell_8666.check = true := by
  decide +kernel

theorem check_8667 : cell_8667.check = true := by
  decide +kernel

theorem check_8668 : cell_8668.check = true := by
  decide +kernel

theorem check_8669 : cell_8669.check = true := by
  decide +kernel

theorem check_8670 : cell_8670.check = true := by
  decide +kernel

theorem check_8671 : cell_8671.check = true := by
  decide +kernel

theorem check_8672 : cell_8672.check = true := by
  decide +kernel

theorem check_8673 : cell_8673.check = true := by
  decide +kernel

theorem check_8674 : cell_8674.check = true := by
  decide +kernel

theorem check_8675 : cell_8675.check = true := by
  decide +kernel

theorem check_8676 : cell_8676.check = true := by
  decide +kernel

theorem check_8677 : cell_8677.check = true := by
  decide +kernel

theorem check_8678 : cell_8678.check = true := by
  decide +kernel

theorem check_8679 : cell_8679.check = true := by
  decide +kernel

theorem check_8680 : cell_8680.check = true := by
  decide +kernel

theorem check_8681 : cell_8681.check = true := by
  decide +kernel

theorem check_8682 : cell_8682.check = true := by
  decide +kernel

theorem check_8683 : cell_8683.check = true := by
  decide +kernel

theorem check_8684 : cell_8684.check = true := by
  decide +kernel

theorem check_8685 : cell_8685.check = true := by
  decide +kernel

theorem check_8686 : cell_8686.check = true := by
  decide +kernel

theorem check_8687 : cell_8687.check = true := by
  decide +kernel

theorem check_8688 : cell_8688.check = true := by
  decide +kernel

theorem check_8689 : cell_8689.check = true := by
  decide +kernel

theorem check_8690 : cell_8690.check = true := by
  decide +kernel

theorem check_8691 : cell_8691.check = true := by
  decide +kernel

theorem check_8692 : cell_8692.check = true := by
  decide +kernel

theorem check_8693 : cell_8693.check = true := by
  decide +kernel

theorem check_8694 : cell_8694.check = true := by
  decide +kernel

theorem check_8695 : cell_8695.check = true := by
  decide +kernel

theorem check_8696 : cell_8696.check = true := by
  decide +kernel

theorem check_8697 : cell_8697.check = true := by
  decide +kernel

theorem check_8698 : cell_8698.check = true := by
  decide +kernel

theorem check_8699 : cell_8699.check = true := by
  decide +kernel

def cells : List Cell := [cell_8650, cell_8651, cell_8652, cell_8653, cell_8654, cell_8655, cell_8656, cell_8657, cell_8658, cell_8659, cell_8660, cell_8661, cell_8662, cell_8663, cell_8664, cell_8665, cell_8666, cell_8667, cell_8668, cell_8669, cell_8670, cell_8671, cell_8672, cell_8673, cell_8674, cell_8675, cell_8676, cell_8677, cell_8678, cell_8679, cell_8680, cell_8681, cell_8682, cell_8683, cell_8684, cell_8685, cell_8686, cell_8687, cell_8688, cell_8689, cell_8690, cell_8691, cell_8692, cell_8693, cell_8694, cell_8695, cell_8696, cell_8697, cell_8698, cell_8699]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8650, check_8651, check_8652, check_8653, check_8654, check_8655, check_8656, check_8657, check_8658, check_8659, check_8660, check_8661, check_8662, check_8663, check_8664, check_8665, check_8666, check_8667, check_8668, check_8669, check_8670, check_8671, check_8672, check_8673, check_8674, check_8675, check_8676, check_8677, check_8678, check_8679, check_8680, check_8681, check_8682, check_8683, check_8684, check_8685, check_8686, check_8687, check_8688, check_8689, check_8690, check_8691, check_8692, check_8693, check_8694, check_8695, check_8696, check_8697, check_8698, check_8699, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0173

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0173
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0173
open AnalyticBounds.ExpressionCertificate

theorem linked_8650 : Linked cell_8650 pieces := by
  link_source cell_8650 with piece_852 using piece_852_mem, ⟨piece_1510_mem, piece_1511_mem⟩

theorem linked_8651 : Linked cell_8651 pieces := by
  link_source cell_8651 with piece_852 using piece_852_mem, ⟨piece_1509_mem, piece_1510_mem⟩

theorem linked_8652 : Linked cell_8652 pieces := by
  link_source cell_8652 with piece_852 using piece_852_mem, piece_1509_mem

theorem linked_8653 : Linked cell_8653 pieces := by
  link_source cell_8653 with piece_853 using piece_853_mem, piece_1511_mem

theorem linked_8654 : Linked cell_8654 pieces := by
  link_source cell_8654 with piece_853 using piece_853_mem, ⟨piece_1510_mem, piece_1511_mem⟩

theorem linked_8655 : Linked cell_8655 pieces := by
  link_source cell_8655 with piece_853 using piece_853_mem, ⟨piece_1509_mem, piece_1510_mem⟩

theorem linked_8656 : Linked cell_8656 pieces := by
  link_source cell_8656 with piece_853 using piece_853_mem, piece_1509_mem

theorem linked_8657 : Linked cell_8657 pieces := by
  link_source cell_8657 with piece_853 using piece_853_mem, ⟨piece_1508_mem, piece_1509_mem⟩

theorem linked_8658 : Linked cell_8658 pieces := by
  link_source cell_8658 with piece_853 using piece_853_mem, piece_1508_mem

theorem linked_8659 : Linked cell_8659 pieces := by
  link_source cell_8659 with piece_853 using piece_853_mem, ⟨piece_1506_mem, ⟨piece_1507_mem, piece_1508_mem⟩⟩

theorem linked_8660 : Linked cell_8660 pieces := by
  link_source cell_8660 with piece_853 using piece_853_mem, piece_1506_mem

theorem linked_8661 : Linked cell_8661 pieces := by
  link_source cell_8661 with piece_854 using piece_854_mem, ⟨piece_1508_mem, piece_1509_mem⟩

theorem linked_8662 : Linked cell_8662 pieces := by
  link_source cell_8662 with piece_854 using piece_854_mem, piece_1508_mem

theorem linked_8663 : Linked cell_8663 pieces := by
  link_source cell_8663 with piece_854 using piece_854_mem, ⟨piece_1506_mem, ⟨piece_1507_mem, piece_1508_mem⟩⟩

theorem linked_8664 : Linked cell_8664 pieces := by
  link_source cell_8664 with piece_854 using piece_854_mem, piece_1506_mem

theorem linked_8665 : Linked cell_8665 pieces := by
  link_source cell_8665 with piece_854 using piece_854_mem, ⟨piece_1505_mem, piece_1506_mem⟩

theorem linked_8666 : Linked cell_8666 pieces := by
  link_source cell_8666 with piece_854 using piece_854_mem, piece_1505_mem

theorem linked_8667 : Linked cell_8667 pieces := by
  link_source cell_8667 with piece_854 using piece_854_mem, ⟨piece_1504_mem, piece_1505_mem⟩

theorem linked_8668 : Linked cell_8668 pieces := by
  link_source cell_8668 with piece_854 using piece_854_mem, piece_1504_mem

theorem linked_8669 : Linked cell_8669 pieces := by
  link_source cell_8669 with piece_855 using piece_855_mem, ⟨piece_1505_mem, piece_1506_mem⟩

theorem linked_8670 : Linked cell_8670 pieces := by
  link_source cell_8670 with piece_855 using piece_855_mem, piece_1505_mem

theorem linked_8671 : Linked cell_8671 pieces := by
  link_source cell_8671 with piece_855 using piece_855_mem, ⟨piece_1504_mem, piece_1505_mem⟩

theorem linked_8672 : Linked cell_8672 pieces := by
  link_source cell_8672 with piece_855 using piece_855_mem, piece_1504_mem

theorem linked_8673 : Linked cell_8673 pieces := by
  link_source cell_8673 with piece_855 using piece_855_mem, ⟨piece_1503_mem, piece_1504_mem⟩

theorem linked_8674 : Linked cell_8674 pieces := by
  link_source cell_8674 with piece_855 using piece_855_mem, ⟨piece_1502_mem, piece_1503_mem⟩

theorem linked_8675 : Linked cell_8675 pieces := by
  link_source cell_8675 with piece_856 using piece_856_mem, piece_1502_mem

theorem linked_8676 : Linked cell_8676 pieces := by
  link_source cell_8676 with piece_856 using piece_856_mem, ⟨piece_1501_mem, piece_1502_mem⟩

theorem linked_8677 : Linked cell_8677 pieces := by
  link_source cell_8677 with piece_857 using piece_857_mem, ⟨piece_1503_mem, piece_1504_mem⟩

theorem linked_8678 : Linked cell_8678 pieces := by
  link_source cell_8678 with piece_857 using piece_857_mem, ⟨piece_1502_mem, piece_1503_mem⟩

theorem linked_8679 : Linked cell_8679 pieces := by
  link_source cell_8679 with piece_857 using piece_857_mem, piece_1502_mem

theorem linked_8680 : Linked cell_8680 pieces := by
  link_source cell_8680 with piece_857 using piece_857_mem, ⟨piece_1501_mem, piece_1502_mem⟩

theorem linked_8681 : Linked cell_8681 pieces := by
  link_source cell_8681 with piece_857 using piece_857_mem, piece_1501_mem

theorem linked_8682 : Linked cell_8682 pieces := by
  link_source cell_8682 with piece_857 using piece_857_mem, ⟨piece_1500_mem, piece_1501_mem⟩

theorem linked_8683 : Linked cell_8683 pieces := by
  link_source cell_8683 with piece_857 using piece_857_mem, piece_1500_mem

theorem linked_8684 : Linked cell_8684 pieces := by
  link_source cell_8684 with piece_857 using piece_857_mem, ⟨piece_1499_mem, piece_1500_mem⟩

theorem linked_8685 : Linked cell_8685 pieces := by
  link_source cell_8685 with piece_858 using piece_858_mem, piece_1501_mem

theorem linked_8686 : Linked cell_8686 pieces := by
  link_source cell_8686 with piece_858 using piece_858_mem, ⟨piece_1500_mem, piece_1501_mem⟩

theorem linked_8687 : Linked cell_8687 pieces := by
  link_source cell_8687 with piece_858 using piece_858_mem, piece_1500_mem

theorem linked_8688 : Linked cell_8688 pieces := by
  link_source cell_8688 with piece_858 using piece_858_mem, ⟨piece_1499_mem, piece_1500_mem⟩

theorem linked_8689 : Linked cell_8689 pieces := by
  link_source cell_8689 with piece_858 using piece_858_mem, piece_1499_mem

theorem linked_8690 : Linked cell_8690 pieces := by
  link_source cell_8690 with piece_858 using piece_858_mem, ⟨piece_1498_mem, piece_1499_mem⟩

theorem linked_8691 : Linked cell_8691 pieces := by
  link_source cell_8691 with piece_858 using piece_858_mem, piece_1498_mem

theorem linked_8692 : Linked cell_8692 pieces := by
  link_source cell_8692 with piece_858 using piece_858_mem, ⟨piece_1497_mem, piece_1498_mem⟩

theorem linked_8693 : Linked cell_8693 pieces := by
  link_source cell_8693 with piece_859 using piece_859_mem, piece_1499_mem

theorem linked_8694 : Linked cell_8694 pieces := by
  link_source cell_8694 with piece_859 using piece_859_mem, ⟨piece_1498_mem, piece_1499_mem⟩

theorem linked_8695 : Linked cell_8695 pieces := by
  link_source cell_8695 with piece_859 using piece_859_mem, piece_1498_mem

theorem linked_8696 : Linked cell_8696 pieces := by
  link_source cell_8696 with piece_859 using piece_859_mem, ⟨piece_1497_mem, piece_1498_mem⟩

theorem linked_8697 : Linked cell_8697 pieces := by
  link_source cell_8697 with piece_859 using piece_859_mem, piece_1497_mem

theorem linked_8698 : Linked cell_8698 pieces := by
  link_source cell_8698 with piece_859 using piece_859_mem, ⟨piece_1496_mem, piece_1497_mem⟩

theorem linked_8699 : Linked cell_8699 pieces := by
  link_source cell_8699 with piece_859 using piece_859_mem, ⟨piece_1494_mem, ⟨piece_1495_mem, piece_1496_mem⟩⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0173.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0173.cells,List.forall_mem_cons]
  exact ⟨linked_8650, linked_8651, linked_8652, linked_8653, linked_8654, linked_8655, linked_8656, linked_8657, linked_8658, linked_8659, linked_8660, linked_8661, linked_8662, linked_8663, linked_8664, linked_8665, linked_8666, linked_8667, linked_8668, linked_8669, linked_8670, linked_8671, linked_8672, linked_8673, linked_8674, linked_8675, linked_8676, linked_8677, linked_8678, linked_8679, linked_8680, linked_8681, linked_8682, linked_8683, linked_8684, linked_8685, linked_8686, linked_8687, linked_8688, linked_8689, linked_8690, linked_8691, linked_8692, linked_8693, linked_8694, linked_8695, linked_8696, linked_8697, linked_8698, linked_8699, by simp⟩

theorem covered : covers (34581250000000003 / 100000000000000000 : ℚ) (34893750000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0173.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0173
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0174
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(34893750000000003 / 100000000000000000 : ℚ), (34900000000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (74839838505493 / 100000000000000 : ℚ)
  w := (8261486995181 / 5000000000000 : ℚ)
  center := (34896875000000003 / 100000000000000000 : ℚ)
  supportValue := (3201666435517431 / 5000000000000000 : ℚ)
  supportSlope := (-4359876508821969 / 1000000000000000 : ℚ)
  oldCenter := (3201666435517431 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_860
  oldLo := (63950000000000007 / 100000000000000000 : ℚ)
  oldHi := (64050000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1494]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8700 : Cell := { cellDefaults with
  r := (7489304701393 / 10000000000000 : ℚ)
  w := (16531333331649 / 10000000000000 : ℚ)
  newCoefficients := coefficients_859
  oldLo := (64000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1494]
}

def cell_8701 : Cell := { cellDefaults with
  domain := ⟨(34900000000000003 / 100000000000000000 : ℚ), (34906250000000003 / 100000000000000000 : ℚ)⟩
  center := (34903125000000003 / 100000000000000000 : ℚ)
  supportValue := (1602926201672439 / 2500000000000000 : ℚ)
  supportSlope := (-4364882924669189 / 1000000000000000 : ℚ)
  oldCenter := (1602926201672439 / 2500000000000000 : ℚ)
  oldLo := (64100000000000001 / 100000000000000000 : ℚ)
  oldHi := (64150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1497]
}

def cell_8702 : Cell := { cellDefaults with
  domain := ⟨(34906250000000003 / 100000000000000000 : ℚ), (34912500000000003 / 100000000000000000 : ℚ)⟩
  center := (34909375000000003 / 100000000000000000 : ℚ)
  supportValue := (3204488776931673 / 5000000000000000 : ℚ)
  supportSlope := (-4362379375180581 / 1000000000000000 : ℚ)
  oldCenter := (3204488776931673 / 5000000000000000 : ℚ)
  oldLo := (3202513966480447 / 5000000000000000 : ℚ)
  oldHi := (64150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1496, piece_1497]
}

def cell_8703 : Cell := { cellDefaults with
  domain := ⟨(34912500000000003 / 100000000000000000 : ℚ), (34918750000000003 / 100000000000000000 : ℚ)⟩
  center := (34915625000000003 / 100000000000000000 : ℚ)
  supportValue := (80078149195797 / 125000000000000 : ℚ)
  supportSlope := (-2179779828644257 / 500000000000000 : ℚ)
  oldCenter := (80078149195797 / 125000000000000 : ℚ)
  oldLo := (64000000000000001 / 100000000000000000 : ℚ)
  oldHi := (64100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1494, piece_1495, piece_1496]
}

def cell_8704 : Cell := { cellDefaults with
  domain := ⟨(34918750000000003 / 100000000000000000 : ℚ), (34925000000000003 / 100000000000000000 : ℚ)⟩
  center := (34921875000000003 / 100000000000000000 : ℚ)
  supportValue := (3201763987222737 / 5000000000000000 : ℚ)
  supportSlope := (-8714190998269089 / 2000000000000000 : ℚ)
  oldCenter := (3201763987222737 / 5000000000000000 : ℚ)
  oldLo := (64000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1494]
}

def cell_8705 : Cell := { cellDefaults with
  domain := ⟨(34925000000000003 / 100000000000000000 : ℚ), (34931250000000003 / 100000000000000000 : ℚ)⟩
  center := (34928125000000003 / 100000000000000000 : ℚ)
  supportValue := (640080569228329 / 1000000000000000 : ℚ)
  supportSlope := (-4354297027912679 / 1000000000000000 : ℚ)
  oldCenter := (640080569228329 / 1000000000000000 : ℚ)
  oldPieces := [piece_1493, piece_1494]
}

def cell_8706 : Cell := { cellDefaults with
  domain := ⟨(34931250000000003 / 100000000000000000 : ℚ), (34937500000000003 / 100000000000000000 : ℚ)⟩
  center := (34934375000000003 / 100000000000000000 : ℚ)
  supportValue := (1599521254684249 / 2500000000000000 : ℚ)
  supportSlope := (-870352884266623 / 200000000000000 : ℚ)
  oldCenter := (1599521254684249 / 2500000000000000 : ℚ)
  oldHi := (64000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1493]
}

def cell_8707 : Cell := { cellDefaults with
  domain := ⟨(34937500000000003 / 100000000000000000 : ℚ), (34943750000000003 / 100000000000000000 : ℚ)⟩
  center := (34940625000000003 / 100000000000000000 : ℚ)
  supportValue := (39971037920823 / 62500000000000 : ℚ)
  supportSlope := (-2174520942423541 / 500000000000000 : ℚ)
  oldCenter := (39971037920823 / 62500000000000 : ℚ)
  oldLo := (63900000000000001 / 100000000000000000 : ℚ)
  oldHi := (64000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1492, piece_1493]
}

def cell_8708 : Cell := { cellDefaults with
  domain := ⟨(34943750000000003 / 100000000000000000 : ℚ), (34950000000000003 / 100000000000000000 : ℚ)⟩
  center := (34946875000000003 / 100000000000000000 : ℚ)
  supportValue := (1598162169279379 / 2500000000000000 : ℚ)
  supportSlope := (-4346440708630439 / 1000000000000000 : ℚ)
  oldCenter := (1598162169279379 / 2500000000000000 : ℚ)
  oldLo := (63900000000000001 / 100000000000000000 : ℚ)
  oldHi := (63950000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1492]
}

def cell_8709 : Cell := { cellDefaults with
  domain := ⟨(34950000000000003 / 100000000000000000 : ℚ), (34956250000000003 / 100000000000000000 : ℚ)⟩
  r := (37393357733453 / 50000000000000 : ℚ)
  w := (16514632897679 / 10000000000000 : ℚ)
  center := (34953125000000003 / 100000000000000000 : ℚ)
  supportValue := (800124664472593 / 1250000000000000 : ℚ)
  supportSlope := (-21757390031282853 / 5000000000000000 : ℚ)
  oldCenter := (800124664472593 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_861
  oldPieces := [piece_1493, piece_1494]
}

def cell_8710 : Cell := { cellDefaults with
  domain := ⟨(34956250000000003 / 100000000000000000 : ℚ), (34962500000000003 / 100000000000000000 : ℚ)⟩
  r := (37393357733453 / 50000000000000 : ℚ)
  w := (16514632897679 / 10000000000000 : ℚ)
  center := (34959375000000003 / 100000000000000000 : ℚ)
  supportValue := (799784800283259 / 1250000000000000 : ℚ)
  supportSlope := (-4348982975670879 / 1000000000000000 : ℚ)
  oldCenter := (799784800283259 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_861
  oldHi := (64000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1493]
}

def cell_8711 : Cell := { cellDefaults with
  domain := ⟨(34962500000000003 / 100000000000000000 : ℚ), (34968750000000003 / 100000000000000000 : ℚ)⟩
  r := (37393357733453 / 50000000000000 : ℚ)
  w := (16514632897679 / 10000000000000 : ℚ)
  center := (34965625000000003 / 100000000000000000 : ℚ)
  supportValue := (3197780593678501 / 5000000000000000 : ℚ)
  supportSlope := (-4346234303216789 / 1000000000000000 : ℚ)
  oldCenter := (3197780593678501 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_861
  oldLo := (63900000000000001 / 100000000000000000 : ℚ)
  oldHi := (64000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1492, piece_1493]
}

def cell_8712 : Cell := { cellDefaults with
  domain := ⟨(34968750000000003 / 100000000000000000 : ℚ), (34975000000000003 / 100000000000000000 : ℚ)⟩
  r := (37393357733453 / 50000000000000 : ℚ)
  w := (16514632897679 / 10000000000000 : ℚ)
  center := (34971875000000003 / 100000000000000000 : ℚ)
  supportValue := (3196422775013913 / 5000000000000000 : ℚ)
  supportSlope := (-2171835648855591 / 500000000000000 : ℚ)
  oldCenter := (3196422775013913 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_861
  oldLo := (63900000000000001 / 100000000000000000 : ℚ)
  oldHi := (63950000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1492]
}

def cell_8713 : Cell := { cellDefaults with
  domain := ⟨(34975000000000003 / 100000000000000000 : ℚ), (34981250000000003 / 100000000000000000 : ℚ)⟩
  r := (37393357733453 / 50000000000000 : ℚ)
  w := (16514632897679 / 10000000000000 : ℚ)
  center := (34978125000000003 / 100000000000000000 : ℚ)
  supportValue := (159753291343813 / 250000000000000 : ℚ)
  supportSlope := (-4340996990634949 / 1000000000000000 : ℚ)
  oldCenter := (159753291343813 / 250000000000000 : ℚ)
  newCoefficients := coefficients_861
  oldLo := (63850000000000007 / 100000000000000000 : ℚ)
  oldHi := (63950000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1491, piece_1492]
}

def cell_8714 : Cell := { cellDefaults with
  domain := ⟨(34981250000000003 / 100000000000000000 : ℚ), (34987500000000003 / 100000000000000000 : ℚ)⟩
  r := (37393357733453 / 50000000000000 : ℚ)
  w := (16514632897679 / 10000000000000 : ℚ)
  center := (34984375000000003 / 100000000000000000 : ℚ)
  supportValue := (3193709644331163 / 5000000000000000 : ℚ)
  supportSlope := (-2169183396734553 / 500000000000000 : ℚ)
  oldCenter := (3193709644331163 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_861
  oldLo := (63850000000000007 / 100000000000000000 : ℚ)
  oldHi := (63900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1491]
}

def cell_8715 : Cell := { cellDefaults with
  domain := ⟨(34987500000000003 / 100000000000000000 : ℚ), (34993750000000003 / 100000000000000000 : ℚ)⟩
  r := (37393357733453 / 50000000000000 : ℚ)
  w := (16514632897679 / 10000000000000 : ℚ)
  center := (34990625000000003 / 100000000000000000 : ℚ)
  supportValue := (1276941735260699 / 2000000000000000 : ℚ)
  supportSlope := (-867153172323043 / 200000000000000 : ℚ)
  oldCenter := (1276941735260699 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_861
  oldLo := (63800000000000001 / 100000000000000000 : ℚ)
  oldHi := (63900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1490, piece_1491]
}

def cell_8716 : Cell := { cellDefaults with
  domain := ⟨(34993750000000003 / 100000000000000000 : ℚ), (35000000000000003 / 100000000000000000 : ℚ)⟩
  r := (37393357733453 / 50000000000000 : ℚ)
  w := (16514632897679 / 10000000000000 : ℚ)
  center := (34996875000000003 / 100000000000000000 : ℚ)
  supportValue := (3190999804921791 / 5000000000000000 : ℚ)
  supportSlope := (-2166534705985157 / 500000000000000 : ℚ)
  oldCenter := (3190999804921791 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_861
  oldLo := (63800000000000001 / 100000000000000000 : ℚ)
  oldHi := (63850000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1490]
}

def cell_8717 : Cell := { cellDefaults with
  domain := ⟨(35000000000000003 / 100000000000000000 : ℚ), (35006250000000003 / 100000000000000000 : ℚ)⟩
  r := (747336779109 / 1000000000000 : ℚ)
  w := (2063288852449 / 1250000000000 : ℚ)
  center := (35003125000000003 / 100000000000000000 : ℚ)
  supportValue := (127806493226241 / 200000000000000 : ℚ)
  supportSlope := (-2169094714384201 / 500000000000000 : ℚ)
  oldCenter := (127806493226241 / 200000000000000 : ℚ)
  newCoefficients := coefficients_862
  oldLo := (63850000000000007 / 100000000000000000 : ℚ)
  oldHi := (63950000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1491, piece_1492]
}

def cell_8718 : Cell := { cellDefaults with
  domain := ⟨(35006250000000003 / 100000000000000000 : ℚ), (35012500000000003 / 100000000000000000 : ℚ)⟩
  r := (747336779109 / 1000000000000 : ℚ)
  w := (2063288852449 / 1250000000000 : ℚ)
  center := (35009375000000003 / 100000000000000000 : ℚ)
  supportValue := (6387614049087843 / 10000000000000000 : ℚ)
  supportSlope := (-4335597106326361 / 1000000000000000 : ℚ)
  oldCenter := (6387614049087843 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_862
  oldLo := (63850000000000007 / 100000000000000000 : ℚ)
  oldHi := (63900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1491]
}

def cell_8719 : Cell := { cellDefaults with
  domain := ⟨(35012500000000003 / 100000000000000000 : ℚ), (35018750000000003 / 100000000000000000 : ℚ)⟩
  r := (747336779109 / 1000000000000 : ℚ)
  w := (2063288852449 / 1250000000000 : ℚ)
  center := (35015625000000003 / 100000000000000000 : ℚ)
  supportValue := (6384905186151607 / 10000000000000000 : ℚ)
  supportSlope := (-866593951966621 / 200000000000000 : ℚ)
  oldCenter := (6384905186151607 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_862
  oldLo := (63800000000000001 / 100000000000000000 : ℚ)
  oldHi := (63900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1490, piece_1491]
}

def cell_8720 : Cell := { cellDefaults with
  domain := ⟨(35018750000000003 / 100000000000000000 : ℚ), (35025000000000003 / 100000000000000000 : ℚ)⟩
  r := (747336779109 / 1000000000000 : ℚ)
  w := (2063288852449 / 1250000000000 : ℚ)
  center := (35021875000000003 / 100000000000000000 : ℚ)
  supportValue := (3191098922560737 / 5000000000000000 : ℚ)
  supportSlope := (-4330311775174067 / 1000000000000000 : ℚ)
  oldCenter := (3191098922560737 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_862
  oldLo := (63800000000000001 / 100000000000000000 : ℚ)
  oldHi := (63850000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1490]
}

def cell_8721 : Cell := { cellDefaults with
  domain := ⟨(35025000000000003 / 100000000000000000 : ℚ), (35031250000000003 / 100000000000000000 : ℚ)⟩
  r := (747336779109 / 1000000000000 : ℚ)
  w := (2063288852449 / 1250000000000 : ℚ)
  center := (35028125000000003 / 100000000000000000 : ℚ)
  supportValue := (6379492241722169 / 10000000000000000 : ℚ)
  supportSlope := (-4327756209356437 / 1000000000000000 : ℚ)
  oldCenter := (6379492241722169 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_862
  oldLo := (63750000000000007 / 100000000000000000 : ℚ)
  oldHi := (63850000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1489, piece_1490]
}

def cell_8722 : Cell := { cellDefaults with
  domain := ⟨(35031250000000003 / 100000000000000000 : ℚ), (35037500000000003 / 100000000000000000 : ℚ)⟩
  r := (747336779109 / 1000000000000 : ℚ)
  w := (2063288852449 / 1250000000000 : ℚ)
  center := (35034375000000003 / 100000000000000000 : ℚ)
  supportValue := (1275357640142303 / 2000000000000000 : ℚ)
  supportSlope := (-54062921291953 / 12500000000000 : ℚ)
  oldCenter := (1275357640142303 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_862
  oldLo := (63750000000000007 / 100000000000000000 : ℚ)
  oldHi := (63800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1489]
}

def cell_8723 : Cell := { cellDefaults with
  domain := ⟨(35037500000000003 / 100000000000000000 : ℚ), (35043750000000003 / 100000000000000000 : ℚ)⟩
  r := (747336779109 / 1000000000000 : ℚ)
  w := (2063288852449 / 1250000000000 : ℚ)
  center := (35040625000000003 / 100000000000000000 : ℚ)
  supportValue := (796760731605847 / 1250000000000000 : ℚ)
  supportSlope := (-2161274539494329 / 500000000000000 : ℚ)
  oldCenter := (796760731605847 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_862
  oldLo := (63700000000000001 / 100000000000000000 : ℚ)
  oldHi := (63800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1488, piece_1489]
}

def cell_8724 : Cell := { cellDefaults with
  domain := ⟨(35043750000000003 / 100000000000000000 : ℚ), (35050000000000003 / 100000000000000000 : ℚ)⟩
  r := (747336779109 / 1000000000000 : ℚ)
  w := (2063288852449 / 1250000000000 : ℚ)
  center := (35046875000000003 / 100000000000000000 : ℚ)
  supportValue := (6371385107294963 / 10000000000000000 : ℚ)
  supportSlope := (-2159881399105501 / 500000000000000 : ℚ)
  oldCenter := (6371385107294963 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_862
  oldLo := (63700000000000001 / 100000000000000000 : ℚ)
  oldHi := (63750000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1488]
}

def cell_8725 : Cell := { cellDefaults with
  domain := ⟨(35050000000000003 / 100000000000000000 : ℚ), (35056250000000003 / 100000000000000000 : ℚ)⟩
  r := (74680724972477 / 100000000000000 : ℚ)
  w := (4124501611441 / 2500000000000 : ℚ)
  center := (35053125000000003 / 100000000000000000 : ℚ)
  supportValue := (1275937452112377 / 2000000000000000 : ℚ)
  supportSlope := (-4324960132514377 / 1000000000000000 : ℚ)
  oldCenter := (1275937452112377 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_863
  oldLo := (63750000000000007 / 100000000000000000 : ℚ)
  oldHi := (63850000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1489, piece_1490]
}

def cell_8726 : Cell := { cellDefaults with
  domain := ⟨(35056250000000003 / 100000000000000000 : ℚ), (35062500000000003 / 100000000000000000 : ℚ)⟩
  r := (74680724972477 / 100000000000000 : ℚ)
  w := (4124501611441 / 2500000000000 : ℚ)
  center := (35059375000000003 / 100000000000000000 : ℚ)
  supportValue := (6376984945104633 / 10000000000000000 : ℚ)
  supportSlope := (-864455175259593 / 200000000000000 : ℚ)
  oldCenter := (6376984945104633 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_863
  oldLo := (63750000000000007 / 100000000000000000 : ℚ)
  oldHi := (63800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1489]
}

def cell_8727 : Cell := { cellDefaults with
  domain := ⟨(35062500000000003 / 100000000000000000 : ℚ), (35068750000000003 / 100000000000000000 : ℚ)⟩
  r := (74680724972477 / 100000000000000 : ℚ)
  w := (4124501611441 / 2500000000000 : ℚ)
  center := (35065625000000003 / 100000000000000000 : ℚ)
  supportValue := (1593571084869339 / 2500000000000000 : ℚ)
  supportSlope := (-431976447441329 / 100000000000000 : ℚ)
  oldCenter := (1593571084869339 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_863
  oldLo := (63700000000000001 / 100000000000000000 : ℚ)
  oldHi := (63800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1488, piece_1489]
}

def cell_8728 : Cell := { cellDefaults with
  domain := ⟨(35068750000000003 / 100000000000000000 : ℚ), (35075000000000003 / 100000000000000000 : ℚ)⟩
  r := (74680724972477 / 100000000000000 : ℚ)
  w := (4124501611441 / 2500000000000 : ℚ)
  center := (35071875000000003 / 100000000000000000 : ℚ)
  supportValue := (637158531194087 / 1000000000000000 : ℚ)
  supportSlope := (-2158508512771107 / 500000000000000 : ℚ)
  oldCenter := (637158531194087 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_863
  oldLo := (63700000000000001 / 100000000000000000 : ℚ)
  oldHi := (63750000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1488]
}

def cell_8729 : Cell := { cellDefaults with
  domain := ⟨(35075000000000003 / 100000000000000000 : ℚ), (35081250000000003 / 100000000000000000 : ℚ)⟩
  r := (74680724972477 / 100000000000000 : ℚ)
  w := (4124501611441 / 2500000000000 : ℚ)
  center := (35078125000000003 / 100000000000000000 : ℚ)
  supportValue := (6368887950858431 / 10000000000000000 : ℚ)
  supportSlope := (-1078643732253859 / 250000000000000 : ℚ)
  oldCenter := (6368887950858431 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_863
  oldLo := (63650000000000007 / 100000000000000000 : ℚ)
  oldHi := (63750000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1487, piece_1488]
}

def cell_8730 : Cell := { cellDefaults with
  domain := ⟨(35081250000000003 / 100000000000000000 : ℚ), (35087500000000003 / 100000000000000000 : ℚ)⟩
  r := (74680724972477 / 100000000000000 : ℚ)
  w := (4124501611441 / 2500000000000 : ℚ)
  center := (35084375000000003 / 100000000000000000 : ℚ)
  supportValue := (1591548051703159 / 2500000000000000 : ℚ)
  supportSlope := (-2155895646248851 / 500000000000000 : ℚ)
  oldCenter := (1591548051703159 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_863
  oldLo := (63600000000000001 / 100000000000000000 : ℚ)
  oldHi := (63700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1486, piece_1487]
}

def cell_8731 : Cell := { cellDefaults with
  domain := ⟨(35087500000000003 / 100000000000000000 : ℚ), (35093750000000003 / 100000000000000000 : ℚ)⟩
  r := (74680724972477 / 100000000000000 : ℚ)
  w := (4124501611441 / 2500000000000 : ℚ)
  center := (35090625000000003 / 100000000000000000 : ℚ)
  supportValue := (3181749043218887 / 5000000000000000 : ℚ)
  supportSlope := (-1077341371896523 / 250000000000000 : ℚ)
  oldCenter := (3181749043218887 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_863
  oldLo := (63600000000000001 / 100000000000000000 : ℚ)
  oldHi := (63650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1486]
}

def cell_8732 : Cell := { cellDefaults with
  domain := ⟨(35093750000000003 / 100000000000000000 : ℚ), (35100000000000003 / 100000000000000000 : ℚ)⟩
  r := (74680724972477 / 100000000000000 : ℚ)
  w := (4124501611441 / 2500000000000 : ℚ)
  center := (35096875000000003 / 100000000000000000 : ℚ)
  supportValue := (1590201405364553 / 2500000000000000 : ℚ)
  supportSlope := (-134581580483073 / 31250000000000 : ℚ)
  oldCenter := (1590201405364553 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_863
  oldLo := (31775000000000003 / 50000000000000000 : ℚ)
  oldHi := (63650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1485, piece_1486]
}

def cell_8733 : Cell := { cellDefaults with
  domain := ⟨(35100000000000003 / 100000000000000000 : ℚ), (35106250000000003 / 100000000000000000 : ℚ)⟩
  r := (18656964454057 / 25000000000000 : ℚ)
  w := (824486048631 / 500000000000 : ℚ)
  center := (35103125000000003 / 100000000000000000 : ℚ)
  supportValue := (6369084208101639 / 10000000000000000 : ℚ)
  supportSlope := (-4311789900029339 / 1000000000000000 : ℚ)
  oldCenter := (6369084208101639 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_864
  oldLo := (63650000000000007 / 100000000000000000 : ℚ)
  oldHi := (63750000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1487, piece_1488]
}

def cell_8734 : Cell := { cellDefaults with
  domain := ⟨(35106250000000003 / 100000000000000000 : ℚ), (35112500000000003 / 100000000000000000 : ℚ)⟩
  r := (18656964454057 / 25000000000000 : ℚ)
  w := (824486048631 / 500000000000 : ℚ)
  center := (35109375000000003 / 100000000000000000 : ℚ)
  supportValue := (6366390182540077 / 10000000000000000 : ℚ)
  supportSlope := (-2154509370910773 / 500000000000000 : ℚ)
  oldCenter := (6366390182540077 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_864
  oldLo := (63650000000000007 / 100000000000000000 : ℚ)
  oldHi := (63700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1487]
}

def cell_8735 : Cell := { cellDefaults with
  domain := ⟨(35112500000000003 / 100000000000000000 : ℚ), (35118750000000003 / 100000000000000000 : ℚ)⟩
  r := (18656964454057 / 25000000000000 : ℚ)
  w := (824486048631 / 500000000000 : ℚ)
  center := (35115625000000003 / 100000000000000000 : ℚ)
  supportValue := (636369779749701 / 1000000000000000 : ℚ)
  supportSlope := (-1076654492709217 / 250000000000000 : ℚ)
  oldCenter := (636369779749701 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_864
  oldLo := (63600000000000001 / 100000000000000000 : ℚ)
  oldHi := (63700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1486, piece_1487]
}

def cell_8736 : Cell := { cellDefaults with
  domain := ⟨(35118750000000003 / 100000000000000000 : ℚ), (35125000000000003 / 100000000000000000 : ℚ)⟩
  r := (18656964454057 / 25000000000000 : ℚ)
  w := (824486048631 / 500000000000 : ℚ)
  center := (35121875000000003 / 100000000000000000 : ℚ)
  supportValue := (6361007043458003 / 10000000000000000 : ℚ)
  supportSlope := (-4303842531474089 / 1000000000000000 : ℚ)
  oldCenter := (6361007043458003 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_864
  oldLo := (31775000000000003 / 50000000000000000 : ℚ)
  oldHi := (63650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1485, piece_1486]
}

def cell_8737 : Cell := { cellDefaults with
  domain := ⟨(35125000000000003 / 100000000000000000 : ℚ), (35131250000000003 / 100000000000000000 : ℚ)⟩
  r := (18656964454057 / 25000000000000 : ℚ)
  w := (824486048631 / 500000000000 : ℚ)
  center := (35128125000000003 / 100000000000000000 : ℚ)
  supportValue := (6358317888123907 / 10000000000000000 : ℚ)
  supportSlope := (-1075348935222209 / 250000000000000 : ℚ)
  oldCenter := (6358317888123907 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_864
  oldLo := (31775000000000003 / 50000000000000000 : ℚ)
  oldHi := (63600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1485]
}

def cell_8738 : Cell := { cellDefaults with
  domain := ⟨(35131250000000003 / 100000000000000000 : ℚ), (35137500000000003 / 100000000000000000 : ℚ)⟩
  r := (18656964454057 / 25000000000000 : ℚ)
  w := (824486048631 / 500000000000 : ℚ)
  center := (35134375000000003 / 100000000000000000 : ℚ)
  supportValue := (794453800149907 / 1250000000000000 : ℚ)
  supportSlope := (-2149339694181407 / 500000000000000 : ℚ)
  oldCenter := (794453800149907 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_864
  oldLo := (63500000000000001 / 100000000000000000 : ℚ)
  oldHi := (63600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1484, piece_1485]
}

def cell_8739 : Cell := { cellDefaults with
  domain := ⟨(35137500000000003 / 100000000000000000 : ℚ), (35143750000000003 / 100000000000000000 : ℚ)⟩
  r := (18656964454057 / 25000000000000 : ℚ)
  w := (824486048631 / 500000000000 : ℚ)
  center := (35140625000000003 / 100000000000000000 : ℚ)
  supportValue := (6352944471756361 / 10000000000000000 : ℚ)
  supportSlope := (-2148086801840421 / 500000000000000 : ℚ)
  oldCenter := (6352944471756361 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_864
  oldLo := (63500000000000001 / 100000000000000000 : ℚ)
  oldHi := (31775000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1484]
}

def cell_8740 : Cell := { cellDefaults with
  domain := ⟨(35143750000000003 / 100000000000000000 : ℚ), (35150000000000003 / 100000000000000000 : ℚ)⟩
  r := (18656964454057 / 25000000000000 : ℚ)
  w := (824486048631 / 500000000000 : ℚ)
  center := (35146875000000003 / 100000000000000000 : ℚ)
  supportValue := (1270052049507827 / 2000000000000000 : ℚ)
  supportSlope := (-2146761092696181 / 500000000000000 : ℚ)
  oldCenter := (1270052049507827 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_864
  oldLo := (31725000000000003 / 50000000000000000 : ℚ)
  oldHi := (31775000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1482, piece_1483, piece_1484]
}

def cell_8741 : Cell := { cellDefaults with
  domain := ⟨(35150000000000003 / 100000000000000000 : ℚ), (11250000000000001 / 32000000000000000 : ℚ)⟩
  r := (37287537567233 / 50000000000000 : ℚ)
  w := (329629077429 / 200000000000 : ℚ)
  center := (562450000000000049 / 1600000000000000000 : ℚ)
  supportValue := (3179257858986493 / 5000000000000000 : ℚ)
  supportSlope := (-2149327256253343 / 500000000000000 : ℚ)
  oldCenter := (3179257858986493 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_865
  oldLo := (31775000000000003 / 50000000000000000 : ℚ)
  oldHi := (63600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1485]
}

def cell_8742 : Cell := { cellDefaults with
  domain := ⟨(11250000000000001 / 32000000000000000 : ℚ), (140650000000000013 / 400000000000000000 : ℚ)⟩
  r := (37287537567233 / 50000000000000 : ℚ)
  w := (329629077429 / 200000000000 : ℚ)
  center := (562550000000000051 / 1600000000000000000 : ℚ)
  supportValue := (6355829942402289 / 10000000000000000 : ℚ)
  supportSlope := (-4295910966359087 / 1000000000000000 : ℚ)
  oldCenter := (6355829942402289 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_865
  oldLo := (63500000000000001 / 100000000000000000 : ℚ)
  oldHi := (63600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1484, piece_1485]
}

def cell_8743 : Cell := { cellDefaults with
  domain := ⟨(140650000000000013 / 400000000000000000 : ℚ), (281350000000000027 / 800000000000000000 : ℚ)⟩
  r := (37287537567233 / 50000000000000 : ℚ)
  w := (329629077429 / 200000000000 : ℚ)
  center := (562650000000000053 / 1600000000000000000 : ℚ)
  supportValue := (1588286435340163 / 2500000000000000 : ℚ)
  supportSlope := (-4293444459410181 / 1000000000000000 : ℚ)
  oldCenter := (1588286435340163 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_865
  oldLo := (63500000000000001 / 100000000000000000 : ℚ)
  oldHi := (31775000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1484]
}

def cell_8744 : Cell := { cellDefaults with
  domain := ⟨(281350000000000027 / 800000000000000000 : ℚ), (70350000000000007 / 200000000000000000 : ℚ)⟩
  r := (37287537567233 / 50000000000000 : ℚ)
  w := (329629077429 / 200000000000 : ℚ)
  center := (112550000000000011 / 320000000000000000 : ℚ)
  supportValue := (6350463220948871 / 10000000000000000 : ℚ)
  supportSlope := (-8581530558465829 / 2000000000000000 : ℚ)
  oldCenter := (6350463220948871 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_865
  oldLo := (31725000000000003 / 50000000000000000 : ℚ)
  oldHi := (31775000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1482, piece_1483, piece_1484]
}

def cell_8745 : Cell := { cellDefaults with
  domain := ⟨(70350000000000007 / 200000000000000000 : ℚ), (281450000000000029 / 800000000000000000 : ℚ)⟩
  r := (37287537567233 / 50000000000000 : ℚ)
  w := (329629077429 / 200000000000 : ℚ)
  center := (562850000000000057 / 1600000000000000000 : ℚ)
  supportValue := (1586945558767739 / 2500000000000000 : ℚ)
  supportSlope := (-4288240845525507 / 1000000000000000 : ℚ)
  oldCenter := (1586945558767739 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_865
  oldLo := (31725000000000003 / 50000000000000000 : ℚ)
  oldHi := (6349720670391061 / 10000000000000000 : ℚ)
  oldPieces := [piece_1482]
}

def cell_8746 : Cell := { cellDefaults with
  domain := ⟨(281450000000000029 / 800000000000000000 : ℚ), (28150000000000003 / 80000000000000000 : ℚ)⟩
  r := (37287537567233 / 50000000000000 : ℚ)
  w := (329629077429 / 200000000000 : ℚ)
  center := (562950000000000059 / 1600000000000000000 : ℚ)
  supportValue := (6345102965812347 / 10000000000000000 : ℚ)
  supportSlope := (-2142812636270321 / 500000000000000 : ℚ)
  oldCenter := (6345102965812347 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_865
  oldLo := (63400000000000001 / 100000000000000000 : ℚ)
  oldHi := (6349720670391061 / 10000000000000000 : ℚ)
  oldPieces := [piece_1481, piece_1482]
}

def cell_8747 : Cell := { cellDefaults with
  domain := ⟨(28150000000000003 / 80000000000000000 : ℚ), (281550000000000031 / 800000000000000000 : ℚ)⟩
  r := (37287537567233 / 50000000000000 : ℚ)
  w := (329629077429 / 200000000000 : ℚ)
  center := (563050000000000061 / 1600000000000000000 : ℚ)
  supportValue := (1585606297801967 / 2500000000000000 : ℚ)
  supportSlope := (-8566089456024713 / 2000000000000000 : ℚ)
  oldCenter := (1585606297801967 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_865
  oldLo := (63400000000000001 / 100000000000000000 : ℚ)
  oldHi := (31725000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1481]
}

def cell_8748 : Cell := { cellDefaults with
  domain := ⟨(281550000000000031 / 800000000000000000 : ℚ), (8800000000000001 / 25000000000000000 : ℚ)⟩
  r := (37287537567233 / 50000000000000 : ℚ)
  w := (329629077429 / 200000000000 : ℚ)
  center := (563150000000000063 / 1600000000000000000 : ℚ)
  supportValue := (1267949828402629 / 2000000000000000 : ℚ)
  supportSlope := (-3424393400391 / 800000000000 : ℚ)
  oldCenter := (1267949828402629 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_865
  oldLo := (31675000000000003 / 50000000000000000 : ℚ)
  oldHi := (31725000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1480, piece_1481]
}

def cell_8749 : Cell := { cellDefaults with
  domain := ⟨(8800000000000001 / 25000000000000000 : ℚ), (8801562500000001 / 25000000000000000 : ℚ)⟩
  r := (465764850699 / 625000000000 : ℚ)
  w := (16473205207121 / 10000000000000 : ℚ)
  center := (8800781250000001 / 25000000000000000 : ℚ)
  supportValue := (3173990824148471 / 5000000000000000 : ℚ)
  supportSlope := (-2142755449556333 / 500000000000000 : ℚ)
  oldCenter := (3173990824148471 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_866
  oldLo := (31725000000000003 / 50000000000000000 : ℚ)
  oldHi := (6349720670391061 / 10000000000000000 : ℚ)
  oldPieces := [piece_1482]
}

theorem check_8700 : cell_8700.check = true := by
  decide +kernel

theorem check_8701 : cell_8701.check = true := by
  decide +kernel

theorem check_8702 : cell_8702.check = true := by
  decide +kernel

theorem check_8703 : cell_8703.check = true := by
  decide +kernel

theorem check_8704 : cell_8704.check = true := by
  decide +kernel

theorem check_8705 : cell_8705.check = true := by
  decide +kernel

theorem check_8706 : cell_8706.check = true := by
  decide +kernel

theorem check_8707 : cell_8707.check = true := by
  decide +kernel

theorem check_8708 : cell_8708.check = true := by
  decide +kernel

theorem check_8709 : cell_8709.check = true := by
  decide +kernel

theorem check_8710 : cell_8710.check = true := by
  decide +kernel

theorem check_8711 : cell_8711.check = true := by
  decide +kernel

theorem check_8712 : cell_8712.check = true := by
  decide +kernel

theorem check_8713 : cell_8713.check = true := by
  decide +kernel

theorem check_8714 : cell_8714.check = true := by
  decide +kernel

theorem check_8715 : cell_8715.check = true := by
  decide +kernel

theorem check_8716 : cell_8716.check = true := by
  decide +kernel

theorem check_8717 : cell_8717.check = true := by
  decide +kernel

theorem check_8718 : cell_8718.check = true := by
  decide +kernel

theorem check_8719 : cell_8719.check = true := by
  decide +kernel

theorem check_8720 : cell_8720.check = true := by
  decide +kernel

theorem check_8721 : cell_8721.check = true := by
  decide +kernel

theorem check_8722 : cell_8722.check = true := by
  decide +kernel

theorem check_8723 : cell_8723.check = true := by
  decide +kernel

theorem check_8724 : cell_8724.check = true := by
  decide +kernel

theorem check_8725 : cell_8725.check = true := by
  decide +kernel

theorem check_8726 : cell_8726.check = true := by
  decide +kernel

theorem check_8727 : cell_8727.check = true := by
  decide +kernel

theorem check_8728 : cell_8728.check = true := by
  decide +kernel

theorem check_8729 : cell_8729.check = true := by
  decide +kernel

theorem check_8730 : cell_8730.check = true := by
  decide +kernel

theorem check_8731 : cell_8731.check = true := by
  decide +kernel

theorem check_8732 : cell_8732.check = true := by
  decide +kernel

theorem check_8733 : cell_8733.check = true := by
  decide +kernel

theorem check_8734 : cell_8734.check = true := by
  decide +kernel

theorem check_8735 : cell_8735.check = true := by
  decide +kernel

theorem check_8736 : cell_8736.check = true := by
  decide +kernel

theorem check_8737 : cell_8737.check = true := by
  decide +kernel

theorem check_8738 : cell_8738.check = true := by
  decide +kernel

theorem check_8739 : cell_8739.check = true := by
  decide +kernel

theorem check_8740 : cell_8740.check = true := by
  decide +kernel

theorem check_8741 : cell_8741.check = true := by
  decide +kernel

theorem check_8742 : cell_8742.check = true := by
  decide +kernel

theorem check_8743 : cell_8743.check = true := by
  decide +kernel

theorem check_8744 : cell_8744.check = true := by
  decide +kernel

theorem check_8745 : cell_8745.check = true := by
  decide +kernel

theorem check_8746 : cell_8746.check = true := by
  decide +kernel

theorem check_8747 : cell_8747.check = true := by
  decide +kernel

theorem check_8748 : cell_8748.check = true := by
  decide +kernel

theorem check_8749 : cell_8749.check = true := by
  decide +kernel

def cells : List Cell := [cell_8700, cell_8701, cell_8702, cell_8703, cell_8704, cell_8705, cell_8706, cell_8707, cell_8708, cell_8709, cell_8710, cell_8711, cell_8712, cell_8713, cell_8714, cell_8715, cell_8716, cell_8717, cell_8718, cell_8719, cell_8720, cell_8721, cell_8722, cell_8723, cell_8724, cell_8725, cell_8726, cell_8727, cell_8728, cell_8729, cell_8730, cell_8731, cell_8732, cell_8733, cell_8734, cell_8735, cell_8736, cell_8737, cell_8738, cell_8739, cell_8740, cell_8741, cell_8742, cell_8743, cell_8744, cell_8745, cell_8746, cell_8747, cell_8748, cell_8749]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8700, check_8701, check_8702, check_8703, check_8704, check_8705, check_8706, check_8707, check_8708, check_8709, check_8710, check_8711, check_8712, check_8713, check_8714, check_8715, check_8716, check_8717, check_8718, check_8719, check_8720, check_8721, check_8722, check_8723, check_8724, check_8725, check_8726, check_8727, check_8728, check_8729, check_8730, check_8731, check_8732, check_8733, check_8734, check_8735, check_8736, check_8737, check_8738, check_8739, check_8740, check_8741, check_8742, check_8743, check_8744, check_8745, check_8746, check_8747, check_8748, check_8749, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0174

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0174
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0174
open AnalyticBounds.ExpressionCertificate

theorem linked_8700 : Linked cell_8700 pieces := by
  link_source cell_8700 with piece_859 using piece_859_mem, piece_1494_mem

theorem linked_8701 : Linked cell_8701 pieces := by
  link_source cell_8701 with piece_860 using piece_860_mem, piece_1497_mem

theorem linked_8702 : Linked cell_8702 pieces := by
  link_source cell_8702 with piece_860 using piece_860_mem, ⟨piece_1496_mem, piece_1497_mem⟩

theorem linked_8703 : Linked cell_8703 pieces := by
  link_source cell_8703 with piece_860 using piece_860_mem, ⟨piece_1494_mem, ⟨piece_1495_mem, piece_1496_mem⟩⟩

theorem linked_8704 : Linked cell_8704 pieces := by
  link_source cell_8704 with piece_860 using piece_860_mem, piece_1494_mem

theorem linked_8705 : Linked cell_8705 pieces := by
  link_source cell_8705 with piece_860 using piece_860_mem, ⟨piece_1493_mem, piece_1494_mem⟩

theorem linked_8706 : Linked cell_8706 pieces := by
  link_source cell_8706 with piece_860 using piece_860_mem, piece_1493_mem

theorem linked_8707 : Linked cell_8707 pieces := by
  link_source cell_8707 with piece_860 using piece_860_mem, ⟨piece_1492_mem, piece_1493_mem⟩

theorem linked_8708 : Linked cell_8708 pieces := by
  link_source cell_8708 with piece_860 using piece_860_mem, piece_1492_mem

theorem linked_8709 : Linked cell_8709 pieces := by
  link_source cell_8709 with piece_861 using piece_861_mem, ⟨piece_1493_mem, piece_1494_mem⟩

theorem linked_8710 : Linked cell_8710 pieces := by
  link_source cell_8710 with piece_861 using piece_861_mem, piece_1493_mem

theorem linked_8711 : Linked cell_8711 pieces := by
  link_source cell_8711 with piece_861 using piece_861_mem, ⟨piece_1492_mem, piece_1493_mem⟩

theorem linked_8712 : Linked cell_8712 pieces := by
  link_source cell_8712 with piece_861 using piece_861_mem, piece_1492_mem

theorem linked_8713 : Linked cell_8713 pieces := by
  link_source cell_8713 with piece_861 using piece_861_mem, ⟨piece_1491_mem, piece_1492_mem⟩

theorem linked_8714 : Linked cell_8714 pieces := by
  link_source cell_8714 with piece_861 using piece_861_mem, piece_1491_mem

theorem linked_8715 : Linked cell_8715 pieces := by
  link_source cell_8715 with piece_861 using piece_861_mem, ⟨piece_1490_mem, piece_1491_mem⟩

theorem linked_8716 : Linked cell_8716 pieces := by
  link_source cell_8716 with piece_861 using piece_861_mem, piece_1490_mem

theorem linked_8717 : Linked cell_8717 pieces := by
  link_source cell_8717 with piece_862 using piece_862_mem, ⟨piece_1491_mem, piece_1492_mem⟩

theorem linked_8718 : Linked cell_8718 pieces := by
  link_source cell_8718 with piece_862 using piece_862_mem, piece_1491_mem

theorem linked_8719 : Linked cell_8719 pieces := by
  link_source cell_8719 with piece_862 using piece_862_mem, ⟨piece_1490_mem, piece_1491_mem⟩

theorem linked_8720 : Linked cell_8720 pieces := by
  link_source cell_8720 with piece_862 using piece_862_mem, piece_1490_mem

theorem linked_8721 : Linked cell_8721 pieces := by
  link_source cell_8721 with piece_862 using piece_862_mem, ⟨piece_1489_mem, piece_1490_mem⟩

theorem linked_8722 : Linked cell_8722 pieces := by
  link_source cell_8722 with piece_862 using piece_862_mem, piece_1489_mem

theorem linked_8723 : Linked cell_8723 pieces := by
  link_source cell_8723 with piece_862 using piece_862_mem, ⟨piece_1488_mem, piece_1489_mem⟩

theorem linked_8724 : Linked cell_8724 pieces := by
  link_source cell_8724 with piece_862 using piece_862_mem, piece_1488_mem

theorem linked_8725 : Linked cell_8725 pieces := by
  link_source cell_8725 with piece_863 using piece_863_mem, ⟨piece_1489_mem, piece_1490_mem⟩

theorem linked_8726 : Linked cell_8726 pieces := by
  link_source cell_8726 with piece_863 using piece_863_mem, piece_1489_mem

theorem linked_8727 : Linked cell_8727 pieces := by
  link_source cell_8727 with piece_863 using piece_863_mem, ⟨piece_1488_mem, piece_1489_mem⟩

theorem linked_8728 : Linked cell_8728 pieces := by
  link_source cell_8728 with piece_863 using piece_863_mem, piece_1488_mem

theorem linked_8729 : Linked cell_8729 pieces := by
  link_source cell_8729 with piece_863 using piece_863_mem, ⟨piece_1487_mem, piece_1488_mem⟩

theorem linked_8730 : Linked cell_8730 pieces := by
  link_source cell_8730 with piece_863 using piece_863_mem, ⟨piece_1486_mem, piece_1487_mem⟩

theorem linked_8731 : Linked cell_8731 pieces := by
  link_source cell_8731 with piece_863 using piece_863_mem, piece_1486_mem

theorem linked_8732 : Linked cell_8732 pieces := by
  link_source cell_8732 with piece_863 using piece_863_mem, ⟨piece_1485_mem, piece_1486_mem⟩

theorem linked_8733 : Linked cell_8733 pieces := by
  link_source cell_8733 with piece_864 using piece_864_mem, ⟨piece_1487_mem, piece_1488_mem⟩

theorem linked_8734 : Linked cell_8734 pieces := by
  link_source cell_8734 with piece_864 using piece_864_mem, piece_1487_mem

theorem linked_8735 : Linked cell_8735 pieces := by
  link_source cell_8735 with piece_864 using piece_864_mem, ⟨piece_1486_mem, piece_1487_mem⟩

theorem linked_8736 : Linked cell_8736 pieces := by
  link_source cell_8736 with piece_864 using piece_864_mem, ⟨piece_1485_mem, piece_1486_mem⟩

theorem linked_8737 : Linked cell_8737 pieces := by
  link_source cell_8737 with piece_864 using piece_864_mem, piece_1485_mem

theorem linked_8738 : Linked cell_8738 pieces := by
  link_source cell_8738 with piece_864 using piece_864_mem, ⟨piece_1484_mem, piece_1485_mem⟩

theorem linked_8739 : Linked cell_8739 pieces := by
  link_source cell_8739 with piece_864 using piece_864_mem, piece_1484_mem

theorem linked_8740 : Linked cell_8740 pieces := by
  link_source cell_8740 with piece_864 using piece_864_mem, ⟨piece_1482_mem, ⟨piece_1483_mem, piece_1484_mem⟩⟩

theorem linked_8741 : Linked cell_8741 pieces := by
  link_source cell_8741 with piece_865 using piece_865_mem, piece_1485_mem

theorem linked_8742 : Linked cell_8742 pieces := by
  link_source cell_8742 with piece_865 using piece_865_mem, ⟨piece_1484_mem, piece_1485_mem⟩

theorem linked_8743 : Linked cell_8743 pieces := by
  link_source cell_8743 with piece_865 using piece_865_mem, piece_1484_mem

theorem linked_8744 : Linked cell_8744 pieces := by
  link_source cell_8744 with piece_865 using piece_865_mem, ⟨piece_1482_mem, ⟨piece_1483_mem, piece_1484_mem⟩⟩

theorem linked_8745 : Linked cell_8745 pieces := by
  link_source cell_8745 with piece_865 using piece_865_mem, piece_1482_mem

theorem linked_8746 : Linked cell_8746 pieces := by
  link_source cell_8746 with piece_865 using piece_865_mem, ⟨piece_1481_mem, piece_1482_mem⟩

theorem linked_8747 : Linked cell_8747 pieces := by
  link_source cell_8747 with piece_865 using piece_865_mem, piece_1481_mem

theorem linked_8748 : Linked cell_8748 pieces := by
  link_source cell_8748 with piece_865 using piece_865_mem, ⟨piece_1480_mem, piece_1481_mem⟩

theorem linked_8749 : Linked cell_8749 pieces := by
  link_source cell_8749 with piece_866 using piece_866_mem, piece_1482_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0174.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0174.cells,List.forall_mem_cons]
  exact ⟨linked_8700, linked_8701, linked_8702, linked_8703, linked_8704, linked_8705, linked_8706, linked_8707, linked_8708, linked_8709, linked_8710, linked_8711, linked_8712, linked_8713, linked_8714, linked_8715, linked_8716, linked_8717, linked_8718, linked_8719, linked_8720, linked_8721, linked_8722, linked_8723, linked_8724, linked_8725, linked_8726, linked_8727, linked_8728, linked_8729, linked_8730, linked_8731, linked_8732, linked_8733, linked_8734, linked_8735, linked_8736, linked_8737, linked_8738, linked_8739, linked_8740, linked_8741, linked_8742, linked_8743, linked_8744, linked_8745, linked_8746, linked_8747, linked_8748, linked_8749, by simp⟩

theorem covered : covers (34893750000000003 / 100000000000000000 : ℚ) (8801562500000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0174.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0174
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0175
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(8801562500000001 / 25000000000000000 : ℚ), (8803125000000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (74469761997727 / 100000000000000 : ℚ)
  w := (2058121797063 / 1250000000000 : ℚ)
  center := (8802343750000001 / 25000000000000000 : ℚ)
  supportValue := (6345304083340053 / 10000000000000000 : ℚ)
  supportSlope := (-2141433904483847 / 500000000000000 : ℚ)
  oldCenter := (6345304083340053 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_869
  oldLo := (31575000000000003 / 50000000000000000 : ℚ)
  oldHi := (63200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1476]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8750 : Cell := { cellDefaults with
  r := (465764850699 / 625000000000 : ℚ)
  w := (16473205207121 / 10000000000000 : ℚ)
  newCoefficients := coefficients_866
  oldLo := (63400000000000001 / 100000000000000000 : ℚ)
  oldHi := (6349720670391061 / 10000000000000000 : ℚ)
  oldPieces := [piece_1481, piece_1482]
}

def cell_8751 : Cell := { cellDefaults with
  domain := ⟨(8803125000000001 / 25000000000000000 : ℚ), (8804687500000001 / 25000000000000000 : ℚ)⟩
  r := (465764850699 / 625000000000 : ℚ)
  w := (16473205207121 / 10000000000000 : ℚ)
  center := (8803906250000001 / 25000000000000000 : ℚ)
  supportValue := (3171314015143193 / 5000000000000000 : ℚ)
  supportSlope := (-4280326873480789 / 1000000000000000 : ℚ)
  oldCenter := (3171314015143193 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_866
  oldLo := (63400000000000001 / 100000000000000000 : ℚ)
  oldHi := (31725000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1481]
}

def cell_8752 : Cell := { cellDefaults with
  domain := ⟨(8804687500000001 / 25000000000000000 : ℚ), (8806250000000001 / 25000000000000000 : ℚ)⟩
  r := (465764850699 / 625000000000 : ℚ)
  w := (16473205207121 / 10000000000000 : ℚ)
  center := (8805468750000001 / 25000000000000000 : ℚ)
  supportValue := (158498842479841 / 250000000000000 : ℚ)
  supportSlope := (-855549153685331 / 200000000000000 : ℚ)
  oldCenter := (158498842479841 / 250000000000000 : ℚ)
  newCoefficients := coefficients_866
  oldLo := (31675000000000003 / 50000000000000000 : ℚ)
  oldHi := (31725000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1480, piece_1481]
}

def cell_8753 : Cell := { cellDefaults with
  domain := ⟨(8806250000000001 / 25000000000000000 : ℚ), (8807812500000001 / 25000000000000000 : ℚ)⟩
  r := (465764850699 / 625000000000 : ℚ)
  w := (16473205207121 / 10000000000000 : ℚ)
  center := (8807031250000001 / 25000000000000000 : ℚ)
  supportValue := (6337280851382759 / 10000000000000000 : ℚ)
  supportSlope := (-1068787459644227 / 250000000000000 : ℚ)
  oldCenter := (6337280851382759 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_866
  oldLo := (31675000000000003 / 50000000000000000 : ℚ)
  oldHi := (63400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1480]
}

def cell_8754 : Cell := { cellDefaults with
  domain := ⟨(8807812500000001 / 25000000000000000 : ℚ), (8809375000000001 / 25000000000000000 : ℚ)⟩
  r := (465764850699 / 625000000000 : ℚ)
  w := (16473205207121 / 10000000000000 : ℚ)
  center := (8808593750000001 / 25000000000000000 : ℚ)
  supportValue := (6334609718866361 / 10000000000000000 : ℚ)
  supportSlope := (-2136314875444967 / 500000000000000 : ℚ)
  oldCenter := (6334609718866361 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_866
  oldLo := (63300000000000001 / 100000000000000000 : ℚ)
  oldHi := (63400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1479, piece_1480]
}

def cell_8755 : Cell := { cellDefaults with
  domain := ⟨(8809375000000001 / 25000000000000000 : ℚ), (8810937500000001 / 25000000000000000 : ℚ)⟩
  r := (465764850699 / 625000000000 : ℚ)
  w := (16473205207121 / 10000000000000 : ℚ)
  center := (8810156250000001 / 25000000000000000 : ℚ)
  supportValue := (633194010345443 / 1000000000000000 : ℚ)
  supportSlope := (-2134989902103257 / 500000000000000 : ℚ)
  oldCenter := (633194010345443 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_866
  oldLo := (63300000000000001 / 100000000000000000 : ℚ)
  oldHi := (31675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1479]
}

def cell_8756 : Cell := { cellDefaults with
  domain := ⟨(8810937500000001 / 25000000000000000 : ℚ), (8812500000000001 / 25000000000000000 : ℚ)⟩
  r := (465764850699 / 625000000000 : ℚ)
  w := (16473205207121 / 10000000000000 : ℚ)
  center := (8811718750000001 / 25000000000000000 : ℚ)
  supportValue := (6329272165729581 / 10000000000000000 : ℚ)
  supportSlope := (-4267519788424323 / 1000000000000000 : ℚ)
  oldCenter := (6329272165729581 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_866
  oldLo := (31625000000000003 / 50000000000000000 : ℚ)
  oldHi := (31675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1478, piece_1479]
}

def cell_8757 : Cell := { cellDefaults with
  domain := ⟨(8812500000000001 / 25000000000000000 : ℚ), (8814062500000001 / 25000000000000000 : ℚ)⟩
  center := (8813281250000001 / 25000000000000000 : ℚ)
  supportValue := (1584370463461541 / 2500000000000000 : ℚ)
  supportSlope := (-2136215564018329 / 500000000000000 : ℚ)
  oldCenter := (1584370463461541 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_867
  oldLo := (31675000000000003 / 50000000000000000 : ℚ)
  oldHi := (63400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1480]
}

def cell_8758 : Cell := { cellDefaults with
  domain := ⟨(8814062500000001 / 25000000000000000 : ℚ), (8815625000000001 / 25000000000000000 : ℚ)⟩
  center := (8814843750000001 / 25000000000000000 : ℚ)
  supportValue := (3167406219900853 / 5000000000000000 : ℚ)
  supportSlope := (-213494158494143 / 50000000000000 : ℚ)
  oldCenter := (3167406219900853 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_867
  oldLo := (63300000000000001 / 100000000000000000 : ℚ)
  oldHi := (63400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1479, piece_1480]
}

def cell_8759 : Cell := { cellDefaults with
  domain := ⟨(8815625000000001 / 25000000000000000 : ℚ), (8817187500000001 / 25000000000000000 : ℚ)⟩
  center := (8816406250000001 / 25000000000000000 : ℚ)
  supportValue := (6332144517960159 / 10000000000000000 : ℚ)
  supportSlope := (-853454628271777 / 200000000000000 : ℚ)
  oldCenter := (6332144517960159 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_867
  oldLo := (63300000000000001 / 100000000000000000 : ℚ)
  oldHi := (31675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1479]
}

def cell_8760 : Cell := { cellDefaults with
  domain := ⟨(8817187500000001 / 25000000000000000 : ℚ), (8818750000000001 / 25000000000000000 : ℚ)⟩
  center := (8817968750000001 / 25000000000000000 : ℚ)
  supportValue := (6329478291553291 / 10000000000000000 : ℚ)
  supportSlope := (-4264784647165953 / 1000000000000000 : ℚ)
  oldCenter := (6329478291553291 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_867
  oldLo := (31625000000000003 / 50000000000000000 : ℚ)
  oldHi := (31675000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1478, piece_1479]
}

def cell_8761 : Cell := { cellDefaults with
  domain := ⟨(8818750000000001 / 25000000000000000 : ℚ), (7056550279329609 / 20000000000000000 : ℚ)⟩
  center := (70557751396648049 / 200000000000000000 : ℚ)
  supportValue := (6326498074474021 / 10000000000000000 : ℚ)
  supportSlope := (-4261807918378021 / 1000000000000000 : ℚ)
  oldCenter := (6326498074474021 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_867
  oldLo := (63200000000000001 / 100000000000000000 : ℚ)
  oldHi := (63300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1477, piece_1478]
}

def cell_8762 : Cell := { cellDefaults with
  domain := ⟨(7056550279329609 / 20000000000000000 : ℚ), (17645251396648043 / 50000000000000000 : ℚ)⟩
  center := (70573254189944131 / 200000000000000000 : ℚ)
  supportValue := (1264638263907059 / 2000000000000000 : ℚ)
  supportSlope := (-4258765485168949 / 1000000000000000 : ℚ)
  oldCenter := (1264638263907059 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_867
  oldLo := (63200000000000001 / 100000000000000000 : ℚ)
  oldHi := (31625000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1477]
}

def cell_8763 : Cell := { cellDefaults with
  domain := ⟨(17645251396648043 / 50000000000000000 : ℚ), (7059050279329609 / 20000000000000000 : ℚ)⟩
  center := (70585754189944131 / 200000000000000000 : ℚ)
  supportValue := (395033153986481 / 625000000000000 : ℚ)
  supportSlope := (-2128038659834709 / 500000000000000 : ℚ)
  oldCenter := (395033153986481 / 625000000000000 : ℚ)
  newCoefficients := coefficients_868
  oldHi := (31625000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1476, piece_1477]
}

def cell_8764 : Cell := { cellDefaults with
  domain := ⟨(7059050279329609 / 20000000000000000 : ℚ), (8825000000000001 / 25000000000000000 : ℚ)⟩
  center := (70595251396648049 / 200000000000000000 : ℚ)
  supportValue := (157962745464931 / 250000000000000 : ℚ)
  supportSlope := (-1063573937619227 / 250000000000000 : ℚ)
  oldCenter := (157962745464931 / 250000000000000 : ℚ)
  newCoefficients := coefficients_868
  oldPieces := [piece_1476]
}

def cell_8765 : Cell := { cellDefaults with
  domain := ⟨(8825000000000001 / 25000000000000000 : ℚ), (8826562500000001 / 25000000000000000 : ℚ)⟩
  r := (1860430774137 / 2500000000000 : ℚ)
  w := (16456761656913 / 10000000000000 : ℚ)
  center := (8825781250000001 / 25000000000000000 : ℚ)
  supportValue := (197719257656709 / 312500000000000 : ℚ)
  supportSlope := (-851882947674909 / 200000000000000 : ℚ)
  oldCenter := (197719257656709 / 312500000000000 : ℚ)
  oldLo := (31625000000000003 / 50000000000000000 : ℚ)
  oldHi := (63300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1478]
}

def cell_8766 : Cell := { cellDefaults with
  domain := ⟨(8826562500000001 / 25000000000000000 : ℚ), (8828125000000001 / 25000000000000000 : ℚ)⟩
  r := (1860430774137 / 2500000000000 : ℚ)
  w := (16456761656913 / 10000000000000 : ℚ)
  center := (8827343750000001 / 25000000000000000 : ℚ)
  supportValue := (6324354914236653 / 10000000000000000 : ℚ)
  supportSlope := (-4256956067969497 / 1000000000000000 : ℚ)
  oldCenter := (6324354914236653 / 10000000000000000 : ℚ)
  oldLo := (63200000000000001 / 100000000000000000 : ℚ)
  oldHi := (63300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1477, piece_1478]
}

def cell_8767 : Cell := { cellDefaults with
  domain := ⟨(8828125000000001 / 25000000000000000 : ℚ), (8829687500000001 / 25000000000000000 : ℚ)⟩
  r := (1860430774137 / 2500000000000 : ℚ)
  w := (16456761656913 / 10000000000000 : ℚ)
  center := (8828906250000001 / 25000000000000000 : ℚ)
  supportValue := (3160847557998069 / 5000000000000000 : ℚ)
  supportSlope := (-4254281750544209 / 1000000000000000 : ℚ)
  oldCenter := (3160847557998069 / 5000000000000000 : ℚ)
  oldLo := (63200000000000001 / 100000000000000000 : ℚ)
  oldHi := (31625000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1477]
}

def cell_8768 : Cell := { cellDefaults with
  domain := ⟨(8829687500000001 / 25000000000000000 : ℚ), (8831250000000001 / 25000000000000000 : ℚ)⟩
  r := (1860430774137 / 2500000000000 : ℚ)
  w := (16456761656913 / 10000000000000 : ℚ)
  center := (8830468750000001 / 25000000000000000 : ℚ)
  supportValue := (315951847940587 / 500000000000000 : ℚ)
  supportSlope := (-8503760038109931 / 2000000000000000 : ℚ)
  oldCenter := (315951847940587 / 500000000000000 : ℚ)
  oldHi := (31625000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1476, piece_1477]
}

def cell_8769 : Cell := { cellDefaults with
  domain := ⟨(8831250000000001 / 25000000000000000 : ℚ), (8832812500000001 / 25000000000000000 : ℚ)⟩
  r := (1860430774137 / 2500000000000 : ℚ)
  w := (16456761656913 / 10000000000000 : ℚ)
  center := (8832031250000001 / 25000000000000000 : ℚ)
  supportValue := (6316380365473531 / 10000000000000000 : ℚ)
  supportSlope := (-1062288913588283 / 250000000000000 : ℚ)
  oldCenter := (6316380365473531 / 10000000000000000 : ℚ)
  oldPieces := [piece_1476]
}

def cell_8770 : Cell := { cellDefaults with
  domain := ⟨(8832812500000001 / 25000000000000000 : ℚ), (8834375000000001 / 25000000000000000 : ℚ)⟩
  r := (1860430774137 / 2500000000000 : ℚ)
  w := (16456761656913 / 10000000000000 : ℚ)
  center := (8833593750000001 / 25000000000000000 : ℚ)
  supportValue := (3156862689082107 / 5000000000000000 : ℚ)
  supportSlope := (-849361983859609 / 200000000000000 : ℚ)
  oldCenter := (3156862689082107 / 5000000000000000 : ℚ)
  oldLo := (63100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1475, piece_1476]
}

def cell_8771 : Cell := { cellDefaults with
  domain := ⟨(8834375000000001 / 25000000000000000 : ℚ), (8835937500000001 / 25000000000000000 : ℚ)⟩
  r := (1860430774137 / 2500000000000 : ℚ)
  w := (16456761656913 / 10000000000000 : ℚ)
  center := (8835156250000001 / 25000000000000000 : ℚ)
  supportValue := (1577767996355671 / 2500000000000000 : ℚ)
  supportSlope := (-8488159103009707 / 2000000000000000 : ℚ)
  oldCenter := (1577767996355671 / 2500000000000000 : ℚ)
  oldLo := (31525000000000003 / 50000000000000000 : ℚ)
  oldHi := (31575000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1474, piece_1475]
}

def cell_8772 : Cell := { cellDefaults with
  domain := ⟨(8835937500000001 / 25000000000000000 : ℚ), (8837500000000001 / 25000000000000000 : ℚ)⟩
  r := (1860430774137 / 2500000000000 : ℚ)
  w := (16456761656913 / 10000000000000 : ℚ)
  center := (8836718750000001 / 25000000000000000 : ℚ)
  supportValue := (6308420164273923 / 10000000000000000 : ℚ)
  supportSlope := (-169668106280767 / 40000000000000 : ℚ)
  oldCenter := (6308420164273923 / 10000000000000000 : ℚ)
  oldLo := (31525000000000003 / 50000000000000000 : ℚ)
  oldHi := (63100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1474]
}

def cell_8773 : Cell := { cellDefaults with
  domain := ⟨(8837500000000001 / 25000000000000000 : ℚ), (8839062500000001 / 25000000000000000 : ℚ)⟩
  r := (929559805219 / 1250000000000 : ℚ)
  w := (16448567582993 / 10000000000000 : ℚ)
  center := (8838281250000001 / 25000000000000000 : ℚ)
  supportValue := (6316584178559587 / 10000000000000000 : ℚ)
  supportSlope := (-2123229659678927 / 500000000000000 : ℚ)
  oldCenter := (6316584178559587 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_870
  oldPieces := [piece_1476]
}

def cell_8774 : Cell := { cellDefaults with
  domain := ⟨(8839062500000001 / 25000000000000000 : ℚ), (8840625000000001 / 25000000000000000 : ℚ)⟩
  r := (929559805219 / 1250000000000 : ℚ)
  w := (16448567582993 / 10000000000000 : ℚ)
  center := (8839843750000001 / 25000000000000000 : ℚ)
  supportValue := (6313930896106303 / 10000000000000000 : ℚ)
  supportSlope := (-132627660819451 / 31250000000000 : ℚ)
  oldCenter := (6313930896106303 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_870
  oldLo := (63100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1475, piece_1476]
}

def cell_8775 : Cell := { cellDefaults with
  domain := ⟨(8840625000000001 / 25000000000000000 : ℚ), (8842187500000001 / 25000000000000000 : ℚ)⟩
  r := (929559805219 / 1250000000000 : ℚ)
  w := (16448567582993 / 10000000000000 : ℚ)
  center := (8841406250000001 / 25000000000000000 : ℚ)
  supportValue := (1577819795727747 / 2500000000000000 : ℚ)
  supportSlope := (-848272062165023 / 200000000000000 : ℚ)
  oldCenter := (1577819795727747 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_870
  oldLo := (31525000000000003 / 50000000000000000 : ℚ)
  oldHi := (31575000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1474, piece_1475]
}

def cell_8776 : Cell := { cellDefaults with
  domain := ⟨(8842187500000001 / 25000000000000000 : ℚ), (8843750000000001 / 25000000000000000 : ℚ)⟩
  r := (929559805219 / 1250000000000 : ℚ)
  w := (16448567582993 / 10000000000000 : ℚ)
  center := (8842968750000001 / 25000000000000000 : ℚ)
  supportValue := (6308629059418099 / 10000000000000000 : ℚ)
  supportSlope := (-264939027117439 / 62500000000000 : ℚ)
  oldCenter := (6308629059418099 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_870
  oldLo := (31525000000000003 / 50000000000000000 : ℚ)
  oldHi := (63100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1474]
}

def cell_8777 : Cell := { cellDefaults with
  domain := ⟨(8843750000000001 / 25000000000000000 : ℚ), (8845312500000001 / 25000000000000000 : ℚ)⟩
  r := (929559805219 / 1250000000000 : ℚ)
  w := (16448567582993 / 10000000000000 : ℚ)
  center := (8844531250000001 / 25000000000000000 : ℚ)
  supportValue := (6305980534944831 / 10000000000000000 : ℚ)
  supportSlope := (-13238469378829 / 3125000000000 : ℚ)
  oldCenter := (6305980534944831 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_870
  oldLo := (63 / 100 : ℚ)
  oldHi := (63100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1473, piece_1474]
}

def cell_8778 : Cell := { cellDefaults with
  domain := ⟨(8845312500000001 / 25000000000000000 : ℚ), (8846875000000001 / 25000000000000000 : ℚ)⟩
  r := (929559805219 / 1250000000000 : ℚ)
  w := (16448567582993 / 10000000000000 : ℚ)
  center := (8846093750000001 / 25000000000000000 : ℚ)
  supportValue := (50426668533707 / 80000000000000 : ℚ)
  supportSlope := (-4233927604296639 / 1000000000000000 : ℚ)
  oldCenter := (50426668533707 / 80000000000000 : ℚ)
  newCoefficients := coefficients_870
  oldLo := (63 / 100 : ℚ)
  oldHi := (31525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1473]
}

def cell_8779 : Cell := { cellDefaults with
  domain := ⟨(8846875000000001 / 25000000000000000 : ℚ), (8848437500000001 / 25000000000000000 : ℚ)⟩
  r := (929559805219 / 1250000000000 : ℚ)
  w := (16448567582993 / 10000000000000 : ℚ)
  center := (8847656250000001 / 25000000000000000 : ℚ)
  supportValue := (6300688226673283 / 10000000000000000 : ℚ)
  supportSlope := (-8462532054153371 / 2000000000000000 : ℚ)
  oldCenter := (6300688226673283 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_870
  oldLo := (31475000000000003 / 50000000000000000 : ℚ)
  oldHi := (31525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1472, piece_1473]
}

def cell_8780 : Cell := { cellDefaults with
  domain := ⟨(8848437500000001 / 25000000000000000 : ℚ), (8850000000000001 / 25000000000000000 : ℚ)⟩
  r := (929559805219 / 1250000000000 : ℚ)
  w := (16448567582993 / 10000000000000 : ℚ)
  center := (8849218750000001 / 25000000000000000 : ℚ)
  supportValue := (1574511102491127 / 2500000000000000 : ℚ)
  supportSlope := (-1057209432262951 / 250000000000000 : ℚ)
  oldCenter := (1574511102491127 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_870
  oldLo := (31475000000000003 / 50000000000000000 : ℚ)
  oldHi := (63 / 100 : ℚ)
  oldPieces := [piece_1472]
}

def cell_8781 : Cell := { cellDefaults with
  domain := ⟨(8850000000000001 / 25000000000000000 : ℚ), (8851562500000001 / 25000000000000000 : ℚ)⟩
  r := (74312421292007 / 100000000000000 : ℚ)
  w := (16440390928621 / 10000000000000 : ℚ)
  center := (8850781250000001 / 25000000000000000 : ℚ)
  supportValue := (1576546524450761 / 2500000000000000 : ℚ)
  supportSlope := (-1058397626804819 / 250000000000000 : ℚ)
  oldCenter := (1576546524450761 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_871
  oldLo := (63 / 100 : ℚ)
  oldHi := (63100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1473, piece_1474]
}

def cell_8782 : Cell := { cellDefaults with
  domain := ⟨(8851562500000001 / 25000000000000000 : ℚ), (8853125000000001 / 25000000000000000 : ℚ)⟩
  r := (74312421292007 / 100000000000000 : ℚ)
  w := (16440390928621 / 10000000000000 : ℚ)
  center := (8852343750000001 / 25000000000000000 : ℚ)
  supportValue := (3151770413791507 / 5000000000000000 : ℚ)
  supportSlope := (-846249693355361 / 200000000000000 : ℚ)
  oldCenter := (3151770413791507 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_871
  oldLo := (63 / 100 : ℚ)
  oldHi := (31525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1473]
}

def cell_8783 : Cell := { cellDefaults with
  domain := ⟨(8853125000000001 / 25000000000000000 : ℚ), (8854687500000001 / 25000000000000000 : ℚ)⟩
  r := (74312421292007 / 100000000000000 : ℚ)
  w := (16440390928621 / 10000000000000 : ℚ)
  center := (8853906250000001 / 25000000000000000 : ℚ)
  supportValue := (1260179432032387 / 2000000000000000 : ℚ)
  supportSlope := (-845711473608901 / 200000000000000 : ℚ)
  oldCenter := (1260179432032387 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_871
  oldLo := (31475000000000003 / 50000000000000000 : ℚ)
  oldHi := (31525000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1472, piece_1473]
}

def cell_8784 : Cell := { cellDefaults with
  domain := ⟨(8854687500000001 / 25000000000000000 : ℚ), (8856250000000001 / 25000000000000000 : ℚ)⟩
  r := (74312421292007 / 100000000000000 : ℚ)
  w := (16440390928621 / 10000000000000 : ℚ)
  center := (8855468750000001 / 25000000000000000 : ℚ)
  supportValue := (6298255034570709 / 10000000000000000 : ℚ)
  supportSlope := (-211308511389241 / 50000000000000 : ℚ)
  oldCenter := (6298255034570709 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_871
  oldLo := (31475000000000003 / 50000000000000000 : ℚ)
  oldHi := (63 / 100 : ℚ)
  oldPieces := [piece_1472]
}

def cell_8785 : Cell := { cellDefaults with
  domain := ⟨(8856250000000001 / 25000000000000000 : ℚ), (8857812500000001 / 25000000000000000 : ℚ)⟩
  r := (74312421292007 / 100000000000000 : ℚ)
  w := (16440390928621 / 10000000000000 : ℚ)
  center := (8857031250000001 / 25000000000000000 : ℚ)
  supportValue := (1573903634992033 / 2500000000000000 : ℚ)
  supportSlope := (-1055882547217557 / 250000000000000 : ℚ)
  oldCenter := (1573903634992033 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_871
  oldLo := (629 / 1000 : ℚ)
  oldHi := (63 / 100 : ℚ)
  oldPieces := [piece_1470, piece_1471, piece_1472]
}

def cell_8786 : Cell := { cellDefaults with
  domain := ⟨(8857812500000001 / 25000000000000000 : ℚ), (8859375000000001 / 25000000000000000 : ℚ)⟩
  r := (74312421292007 / 100000000000000 : ℚ)
  w := (16440390928621 / 10000000000000 : ℚ)
  center := (8858593750000001 / 25000000000000000 : ℚ)
  supportValue := (157324388881803 / 250000000000000 : ℚ)
  supportSlope := (-8442197890090597 / 2000000000000000 : ℚ)
  oldCenter := (157324388881803 / 250000000000000 : ℚ)
  newCoefficients := coefficients_871
  oldLo := (629 / 1000 : ℚ)
  oldHi := (6294413407821229 / 10000000000000000 : ℚ)
  oldPieces := [piece_1470]
}

def cell_8787 : Cell := { cellDefaults with
  domain := ⟨(8859375000000001 / 25000000000000000 : ℚ), (8860937500000001 / 25000000000000000 : ℚ)⟩
  r := (74312421292007 / 100000000000000 : ℚ)
  w := (16440390928621 / 10000000000000 : ℚ)
  center := (8860156250000001 / 25000000000000000 : ℚ)
  supportValue := (1258067645828631 / 2000000000000000 : ℚ)
  supportSlope := (-4218508988081737 / 1000000000000000 : ℚ)
  oldCenter := (1258067645828631 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_871
  oldLo := (31425000000000003 / 50000000000000000 : ℚ)
  oldHi := (6294413407821229 / 10000000000000000 : ℚ)
  oldPieces := [piece_1469, piece_1470]
}

def cell_8788 : Cell := { cellDefaults with
  domain := ⟨(8860937500000001 / 25000000000000000 : ℚ), (8862500000000001 / 25000000000000000 : ℚ)⟩
  r := (74312421292007 / 100000000000000 : ℚ)
  w := (16440390928621 / 10000000000000 : ℚ)
  center := (8861718750000001 / 25000000000000000 : ℚ)
  supportValue := (3143851190857657 / 5000000000000000 : ℚ)
  supportSlope := (-2108017139644147 / 500000000000000 : ℚ)
  oldCenter := (3143851190857657 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_871
  oldLo := (31425000000000003 / 50000000000000000 : ℚ)
  oldHi := (629 / 1000 : ℚ)
  oldPieces := [piece_1469]
}

def cell_8789 : Cell := { cellDefaults with
  domain := ⟨(8862500000000001 / 25000000000000000 : ℚ), (8864062500000001 / 25000000000000000 : ℚ)⟩
  r := (74260141413317 / 100000000000000 : ℚ)
  w := (16432232761937 / 10000000000000 : ℚ)
  center := (8863281250000001 / 25000000000000000 : ℚ)
  supportValue := (6295821351153247 / 10000000000000000 : ℚ)
  supportSlope := (-4220821401112573 / 1000000000000000 : ℚ)
  oldCenter := (6295821351153247 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_872
  oldLo := (6294413407821229 / 10000000000000000 : ℚ)
  oldHi := (63 / 100 : ℚ)
  oldPieces := [piece_1471, piece_1472]
}

def cell_8790 : Cell := { cellDefaults with
  domain := ⟨(8864062500000001 / 25000000000000000 : ℚ), (8865625000000001 / 25000000000000000 : ℚ)⟩
  r := (74260141413317 / 100000000000000 : ℚ)
  w := (16432232761937 / 10000000000000 : ℚ)
  center := (8864843750000001 / 25000000000000000 : ℚ)
  supportValue := (3146592028860131 / 5000000000000000 : ℚ)
  supportSlope := (-263651925284103 / 62500000000000 : ℚ)
  oldCenter := (3146592028860131 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_872
  oldLo := (629 / 1000 : ℚ)
  oldHi := (31475000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1470, piece_1471]
}

def cell_8791 : Cell := { cellDefaults with
  domain := ⟨(8865625000000001 / 25000000000000000 : ℚ), (8867187500000001 / 25000000000000000 : ℚ)⟩
  r := (74260141413317 / 100000000000000 : ℚ)
  w := (16432232761937 / 10000000000000 : ℚ)
  center := (8866406250000001 / 25000000000000000 : ℚ)
  supportValue := (6290548397396513 / 10000000000000000 : ℚ)
  supportSlope := (-4215810847465917 / 1000000000000000 : ℚ)
  oldCenter := (6290548397396513 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_872
  oldLo := (31425000000000003 / 50000000000000000 : ℚ)
  oldHi := (6294413407821229 / 10000000000000000 : ℚ)
  oldPieces := [piece_1469, piece_1470]
}

def cell_8792 : Cell := { cellDefaults with
  domain := ⟨(8867187500000001 / 25000000000000000 : ℚ), (8868750000000001 / 25000000000000000 : ℚ)⟩
  r := (74260141413317 / 100000000000000 : ℚ)
  w := (16432232761937 / 10000000000000 : ℚ)
  center := (8867968750000001 / 25000000000000000 : ℚ)
  supportValue := (628791423457731 / 1000000000000000 : ℚ)
  supportSlope := (-2106688684806457 / 500000000000000 : ℚ)
  oldCenter := (628791423457731 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_872
  oldLo := (31425000000000003 / 50000000000000000 : ℚ)
  oldHi := (629 / 1000 : ℚ)
  oldPieces := [piece_1469]
}

def cell_8793 : Cell := { cellDefaults with
  domain := ⟨(8868750000000001 / 25000000000000000 : ℚ), (8870312500000001 / 25000000000000000 : ℚ)⟩
  r := (74260141413317 / 100000000000000 : ℚ)
  w := (16432232761937 / 10000000000000 : ℚ)
  center := (8869531250000001 / 25000000000000000 : ℚ)
  supportValue := (6285281731558681 / 10000000000000000 : ℚ)
  supportSlope := (-1052701491405017 / 250000000000000 : ℚ)
  oldCenter := (6285281731558681 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_872
  oldLo := (157 / 250 : ℚ)
  oldHi := (629 / 1000 : ℚ)
  oldPieces := [piece_1468, piece_1469]
}

def cell_8794 : Cell := { cellDefaults with
  domain := ⟨(8870312500000001 / 25000000000000000 : ℚ), (8871875000000001 / 25000000000000000 : ℚ)⟩
  r := (74260141413317 / 100000000000000 : ℚ)
  w := (16432232761937 / 10000000000000 : ℚ)
  center := (8871093750000001 / 25000000000000000 : ℚ)
  supportValue := (6282650695743909 / 10000000000000000 : ℚ)
  supportSlope := (-420833080363181 / 100000000000000 : ℚ)
  oldCenter := (6282650695743909 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_872
  oldLo := (157 / 250 : ℚ)
  oldHi := (31425000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1468]
}

def cell_8795 : Cell := { cellDefaults with
  domain := ⟨(8871875000000001 / 25000000000000000 : ℚ), (8873437500000001 / 25000000000000000 : ℚ)⟩
  r := (74260141413317 / 100000000000000 : ℚ)
  w := (16432232761937 / 10000000000000 : ℚ)
  center := (8872656250000001 / 25000000000000000 : ℚ)
  supportValue := (1256004269143391 / 2000000000000000 : ℚ)
  supportSlope := (-4205807066551159 / 1000000000000000 : ℚ)
  oldCenter := (1256004269143391 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_872
  oldLo := (31375000000000003 / 50000000000000000 : ℚ)
  oldHi := (31425000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1467, piece_1468]
}

def cell_8796 : Cell := { cellDefaults with
  domain := ⟨(8873437500000001 / 25000000000000000 : ℚ), (8875000000000001 / 25000000000000000 : ℚ)⟩
  r := (74260141413317 / 100000000000000 : ℚ)
  w := (16432232761937 / 10000000000000 : ℚ)
  center := (8874218750000001 / 25000000000000000 : ℚ)
  supportValue := (6277393433180359 / 10000000000000000 : ℚ)
  supportSlope := (-4203291039402757 / 1000000000000000 : ℚ)
  oldCenter := (6277393433180359 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_872
  oldLo := (31375000000000003 / 50000000000000000 : ℚ)
  oldHi := (157 / 250 : ℚ)
  oldPieces := [piece_1467]
}

def cell_8797 : Cell := { cellDefaults with
  domain := ⟨(8875000000000001 / 25000000000000000 : ℚ), (8876562500000001 / 25000000000000000 : ℚ)⟩
  r := (74207944136969 / 100000000000000 : ℚ)
  w := (5255709677 / 3200000000 : ℚ)
  center := (8875781250000001 / 25000000000000000 : ℚ)
  supportValue := (628548995497151 / 1000000000000000 : ℚ)
  supportSlope := (-1052026975550291 / 250000000000000 : ℚ)
  oldCenter := (628548995497151 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_873
  oldLo := (157 / 250 : ℚ)
  oldHi := (629 / 1000 : ℚ)
  oldPieces := [piece_1468, piece_1469]
}

def cell_8798 : Cell := { cellDefaults with
  domain := ⟨(8876562500000001 / 25000000000000000 : ℚ), (8878125000000001 / 25000000000000000 : ℚ)⟩
  r := (74207944136969 / 100000000000000 : ℚ)
  w := (5255709677 / 3200000000 : ℚ)
  center := (8877343750000001 / 25000000000000000 : ℚ)
  supportValue := (3141430301857449 / 5000000000000000 : ℚ)
  supportSlope := (-8411347376814149 / 2000000000000000 : ℚ)
  oldCenter := (3141430301857449 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_873
  oldLo := (157 / 250 : ℚ)
  oldHi := (31425000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1468]
}

def cell_8799 : Cell := { cellDefaults with
  domain := ⟨(8878125000000001 / 25000000000000000 : ℚ), (8879687500000001 / 25000000000000000 : ℚ)⟩
  r := (74207944136969 / 100000000000000 : ℚ)
  w := (5255709677 / 3200000000 : ℚ)
  center := (8878906250000001 / 25000000000000000 : ℚ)
  supportValue := (1570058228151661 / 2500000000000000 : ℚ)
  supportSlope := (-1681247855688639 / 400000000000000 : ℚ)
  oldCenter := (1570058228151661 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_873
  oldLo := (31375000000000003 / 50000000000000000 : ℚ)
  oldHi := (31425000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1467, piece_1468]
}

theorem check_8750 : cell_8750.check = true := by
  decide +kernel

theorem check_8751 : cell_8751.check = true := by
  decide +kernel

theorem check_8752 : cell_8752.check = true := by
  decide +kernel

theorem check_8753 : cell_8753.check = true := by
  decide +kernel

theorem check_8754 : cell_8754.check = true := by
  decide +kernel

theorem check_8755 : cell_8755.check = true := by
  decide +kernel

theorem check_8756 : cell_8756.check = true := by
  decide +kernel

theorem check_8757 : cell_8757.check = true := by
  decide +kernel

theorem check_8758 : cell_8758.check = true := by
  decide +kernel

theorem check_8759 : cell_8759.check = true := by
  decide +kernel

theorem check_8760 : cell_8760.check = true := by
  decide +kernel

theorem check_8761 : cell_8761.check = true := by
  decide +kernel

theorem check_8762 : cell_8762.check = true := by
  decide +kernel

theorem check_8763 : cell_8763.check = true := by
  decide +kernel

theorem check_8764 : cell_8764.check = true := by
  decide +kernel

theorem check_8765 : cell_8765.check = true := by
  decide +kernel

theorem check_8766 : cell_8766.check = true := by
  decide +kernel

theorem check_8767 : cell_8767.check = true := by
  decide +kernel

theorem check_8768 : cell_8768.check = true := by
  decide +kernel

theorem check_8769 : cell_8769.check = true := by
  decide +kernel

theorem check_8770 : cell_8770.check = true := by
  decide +kernel

theorem check_8771 : cell_8771.check = true := by
  decide +kernel

theorem check_8772 : cell_8772.check = true := by
  decide +kernel

theorem check_8773 : cell_8773.check = true := by
  decide +kernel

theorem check_8774 : cell_8774.check = true := by
  decide +kernel

theorem check_8775 : cell_8775.check = true := by
  decide +kernel

theorem check_8776 : cell_8776.check = true := by
  decide +kernel

theorem check_8777 : cell_8777.check = true := by
  decide +kernel

theorem check_8778 : cell_8778.check = true := by
  decide +kernel

theorem check_8779 : cell_8779.check = true := by
  decide +kernel

theorem check_8780 : cell_8780.check = true := by
  decide +kernel

theorem check_8781 : cell_8781.check = true := by
  decide +kernel

theorem check_8782 : cell_8782.check = true := by
  decide +kernel

theorem check_8783 : cell_8783.check = true := by
  decide +kernel

theorem check_8784 : cell_8784.check = true := by
  decide +kernel

theorem check_8785 : cell_8785.check = true := by
  decide +kernel

theorem check_8786 : cell_8786.check = true := by
  decide +kernel

theorem check_8787 : cell_8787.check = true := by
  decide +kernel

theorem check_8788 : cell_8788.check = true := by
  decide +kernel

theorem check_8789 : cell_8789.check = true := by
  decide +kernel

theorem check_8790 : cell_8790.check = true := by
  decide +kernel

theorem check_8791 : cell_8791.check = true := by
  decide +kernel

theorem check_8792 : cell_8792.check = true := by
  decide +kernel

theorem check_8793 : cell_8793.check = true := by
  decide +kernel

theorem check_8794 : cell_8794.check = true := by
  decide +kernel

theorem check_8795 : cell_8795.check = true := by
  decide +kernel

theorem check_8796 : cell_8796.check = true := by
  decide +kernel

theorem check_8797 : cell_8797.check = true := by
  decide +kernel

theorem check_8798 : cell_8798.check = true := by
  decide +kernel

theorem check_8799 : cell_8799.check = true := by
  decide +kernel

def cells : List Cell := [cell_8750, cell_8751, cell_8752, cell_8753, cell_8754, cell_8755, cell_8756, cell_8757, cell_8758, cell_8759, cell_8760, cell_8761, cell_8762, cell_8763, cell_8764, cell_8765, cell_8766, cell_8767, cell_8768, cell_8769, cell_8770, cell_8771, cell_8772, cell_8773, cell_8774, cell_8775, cell_8776, cell_8777, cell_8778, cell_8779, cell_8780, cell_8781, cell_8782, cell_8783, cell_8784, cell_8785, cell_8786, cell_8787, cell_8788, cell_8789, cell_8790, cell_8791, cell_8792, cell_8793, cell_8794, cell_8795, cell_8796, cell_8797, cell_8798, cell_8799]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8750, check_8751, check_8752, check_8753, check_8754, check_8755, check_8756, check_8757, check_8758, check_8759, check_8760, check_8761, check_8762, check_8763, check_8764, check_8765, check_8766, check_8767, check_8768, check_8769, check_8770, check_8771, check_8772, check_8773, check_8774, check_8775, check_8776, check_8777, check_8778, check_8779, check_8780, check_8781, check_8782, check_8783, check_8784, check_8785, check_8786, check_8787, check_8788, check_8789, check_8790, check_8791, check_8792, check_8793, check_8794, check_8795, check_8796, check_8797, check_8798, check_8799, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0175

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0175
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0175
open AnalyticBounds.ExpressionCertificate

theorem linked_8750 : Linked cell_8750 pieces := by
  link_source cell_8750 with piece_866 using piece_866_mem, ⟨piece_1481_mem, piece_1482_mem⟩

theorem linked_8751 : Linked cell_8751 pieces := by
  link_source cell_8751 with piece_866 using piece_866_mem, piece_1481_mem

theorem linked_8752 : Linked cell_8752 pieces := by
  link_source cell_8752 with piece_866 using piece_866_mem, ⟨piece_1480_mem, piece_1481_mem⟩

theorem linked_8753 : Linked cell_8753 pieces := by
  link_source cell_8753 with piece_866 using piece_866_mem, piece_1480_mem

theorem linked_8754 : Linked cell_8754 pieces := by
  link_source cell_8754 with piece_866 using piece_866_mem, ⟨piece_1479_mem, piece_1480_mem⟩

theorem linked_8755 : Linked cell_8755 pieces := by
  link_source cell_8755 with piece_866 using piece_866_mem, piece_1479_mem

theorem linked_8756 : Linked cell_8756 pieces := by
  link_source cell_8756 with piece_866 using piece_866_mem, ⟨piece_1478_mem, piece_1479_mem⟩

theorem linked_8757 : Linked cell_8757 pieces := by
  link_source cell_8757 with piece_867 using piece_867_mem, piece_1480_mem

theorem linked_8758 : Linked cell_8758 pieces := by
  link_source cell_8758 with piece_867 using piece_867_mem, ⟨piece_1479_mem, piece_1480_mem⟩

theorem linked_8759 : Linked cell_8759 pieces := by
  link_source cell_8759 with piece_867 using piece_867_mem, piece_1479_mem

theorem linked_8760 : Linked cell_8760 pieces := by
  link_source cell_8760 with piece_867 using piece_867_mem, ⟨piece_1478_mem, piece_1479_mem⟩

theorem linked_8761 : Linked cell_8761 pieces := by
  link_source cell_8761 with piece_867 using piece_867_mem, ⟨piece_1477_mem, piece_1478_mem⟩

theorem linked_8762 : Linked cell_8762 pieces := by
  link_source cell_8762 with piece_867 using piece_867_mem, piece_1477_mem

theorem linked_8763 : Linked cell_8763 pieces := by
  link_source cell_8763 with piece_868 using piece_868_mem, ⟨piece_1476_mem, piece_1477_mem⟩

theorem linked_8764 : Linked cell_8764 pieces := by
  link_source cell_8764 with piece_868 using piece_868_mem, piece_1476_mem

theorem linked_8765 : Linked cell_8765 pieces := by
  link_source cell_8765 with piece_869 using piece_869_mem, piece_1478_mem

theorem linked_8766 : Linked cell_8766 pieces := by
  link_source cell_8766 with piece_869 using piece_869_mem, ⟨piece_1477_mem, piece_1478_mem⟩

theorem linked_8767 : Linked cell_8767 pieces := by
  link_source cell_8767 with piece_869 using piece_869_mem, piece_1477_mem

theorem linked_8768 : Linked cell_8768 pieces := by
  link_source cell_8768 with piece_869 using piece_869_mem, ⟨piece_1476_mem, piece_1477_mem⟩

theorem linked_8769 : Linked cell_8769 pieces := by
  link_source cell_8769 with piece_869 using piece_869_mem, piece_1476_mem

theorem linked_8770 : Linked cell_8770 pieces := by
  link_source cell_8770 with piece_869 using piece_869_mem, ⟨piece_1475_mem, piece_1476_mem⟩

theorem linked_8771 : Linked cell_8771 pieces := by
  link_source cell_8771 with piece_869 using piece_869_mem, ⟨piece_1474_mem, piece_1475_mem⟩

theorem linked_8772 : Linked cell_8772 pieces := by
  link_source cell_8772 with piece_869 using piece_869_mem, piece_1474_mem

theorem linked_8773 : Linked cell_8773 pieces := by
  link_source cell_8773 with piece_870 using piece_870_mem, piece_1476_mem

theorem linked_8774 : Linked cell_8774 pieces := by
  link_source cell_8774 with piece_870 using piece_870_mem, ⟨piece_1475_mem, piece_1476_mem⟩

theorem linked_8775 : Linked cell_8775 pieces := by
  link_source cell_8775 with piece_870 using piece_870_mem, ⟨piece_1474_mem, piece_1475_mem⟩

theorem linked_8776 : Linked cell_8776 pieces := by
  link_source cell_8776 with piece_870 using piece_870_mem, piece_1474_mem

theorem linked_8777 : Linked cell_8777 pieces := by
  link_source cell_8777 with piece_870 using piece_870_mem, ⟨piece_1473_mem, piece_1474_mem⟩

theorem linked_8778 : Linked cell_8778 pieces := by
  link_source cell_8778 with piece_870 using piece_870_mem, piece_1473_mem

theorem linked_8779 : Linked cell_8779 pieces := by
  link_source cell_8779 with piece_870 using piece_870_mem, ⟨piece_1472_mem, piece_1473_mem⟩

theorem linked_8780 : Linked cell_8780 pieces := by
  link_source cell_8780 with piece_870 using piece_870_mem, piece_1472_mem

theorem linked_8781 : Linked cell_8781 pieces := by
  link_source cell_8781 with piece_871 using piece_871_mem, ⟨piece_1473_mem, piece_1474_mem⟩

theorem linked_8782 : Linked cell_8782 pieces := by
  link_source cell_8782 with piece_871 using piece_871_mem, piece_1473_mem

theorem linked_8783 : Linked cell_8783 pieces := by
  link_source cell_8783 with piece_871 using piece_871_mem, ⟨piece_1472_mem, piece_1473_mem⟩

theorem linked_8784 : Linked cell_8784 pieces := by
  link_source cell_8784 with piece_871 using piece_871_mem, piece_1472_mem

theorem linked_8785 : Linked cell_8785 pieces := by
  link_source cell_8785 with piece_871 using piece_871_mem, ⟨piece_1470_mem, ⟨piece_1471_mem, piece_1472_mem⟩⟩

theorem linked_8786 : Linked cell_8786 pieces := by
  link_source cell_8786 with piece_871 using piece_871_mem, piece_1470_mem

theorem linked_8787 : Linked cell_8787 pieces := by
  link_source cell_8787 with piece_871 using piece_871_mem, ⟨piece_1469_mem, piece_1470_mem⟩

theorem linked_8788 : Linked cell_8788 pieces := by
  link_source cell_8788 with piece_871 using piece_871_mem, piece_1469_mem

theorem linked_8789 : Linked cell_8789 pieces := by
  link_source cell_8789 with piece_872 using piece_872_mem, ⟨piece_1471_mem, piece_1472_mem⟩

theorem linked_8790 : Linked cell_8790 pieces := by
  link_source cell_8790 with piece_872 using piece_872_mem, ⟨piece_1470_mem, piece_1471_mem⟩

theorem linked_8791 : Linked cell_8791 pieces := by
  link_source cell_8791 with piece_872 using piece_872_mem, ⟨piece_1469_mem, piece_1470_mem⟩

theorem linked_8792 : Linked cell_8792 pieces := by
  link_source cell_8792 with piece_872 using piece_872_mem, piece_1469_mem

theorem linked_8793 : Linked cell_8793 pieces := by
  link_source cell_8793 with piece_872 using piece_872_mem, ⟨piece_1468_mem, piece_1469_mem⟩

theorem linked_8794 : Linked cell_8794 pieces := by
  link_source cell_8794 with piece_872 using piece_872_mem, piece_1468_mem

theorem linked_8795 : Linked cell_8795 pieces := by
  link_source cell_8795 with piece_872 using piece_872_mem, ⟨piece_1467_mem, piece_1468_mem⟩

theorem linked_8796 : Linked cell_8796 pieces := by
  link_source cell_8796 with piece_872 using piece_872_mem, piece_1467_mem

theorem linked_8797 : Linked cell_8797 pieces := by
  link_source cell_8797 with piece_873 using piece_873_mem, ⟨piece_1468_mem, piece_1469_mem⟩

theorem linked_8798 : Linked cell_8798 pieces := by
  link_source cell_8798 with piece_873 using piece_873_mem, piece_1468_mem

theorem linked_8799 : Linked cell_8799 pieces := by
  link_source cell_8799 with piece_873 using piece_873_mem, ⟨piece_1467_mem, piece_1468_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0175.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0175.cells,List.forall_mem_cons]
  exact ⟨linked_8750, linked_8751, linked_8752, linked_8753, linked_8754, linked_8755, linked_8756, linked_8757, linked_8758, linked_8759, linked_8760, linked_8761, linked_8762, linked_8763, linked_8764, linked_8765, linked_8766, linked_8767, linked_8768, linked_8769, linked_8770, linked_8771, linked_8772, linked_8773, linked_8774, linked_8775, linked_8776, linked_8777, linked_8778, linked_8779, linked_8780, linked_8781, linked_8782, linked_8783, linked_8784, linked_8785, linked_8786, linked_8787, linked_8788, linked_8789, linked_8790, linked_8791, linked_8792, linked_8793, linked_8794, linked_8795, linked_8796, linked_8797, linked_8798, linked_8799, by simp⟩

theorem covered : covers (8801562500000001 / 25000000000000000 : ℚ) (8879687500000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0175.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0175
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0176
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(8879687500000001 / 25000000000000000 : ℚ), (8881250000000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (37077914837681 / 50000000000000 : ℚ)
  w := (4103992599463 / 2500000000000 : ℚ)
  center := (8880468750000001 / 25000000000000000 : ℚ)
  supportValue := (784700834747057 / 1250000000000000 : ℚ)
  supportSlope := (-4200645169195383 / 1000000000000000 : ℚ)
  oldCenter := (784700834747057 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_874
  oldLo := (627 / 1000 : ℚ)
  oldHi := (31375000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1466, piece_1467]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8800 : Cell := { cellDefaults with
  r := (74207944136969 / 100000000000000 : ℚ)
  w := (5255709677 / 3200000000 : ℚ)
  newCoefficients := coefficients_873
  oldLo := (31375000000000003 / 50000000000000000 : ℚ)
  oldHi := (157 / 250 : ℚ)
  oldPieces := [piece_1467]
}

def cell_8801 : Cell := { cellDefaults with
  domain := ⟨(8881250000000001 / 25000000000000000 : ℚ), (8882812500000001 / 25000000000000000 : ℚ)⟩
  r := (74207944136969 / 100000000000000 : ℚ)
  w := (5255709677 / 3200000000 : ℚ)
  center := (8882031250000001 / 25000000000000000 : ℚ)
  supportValue := (6274982126572607 / 10000000000000000 : ℚ)
  supportSlope := (-839627404559451 / 200000000000000 : ℚ)
  oldCenter := (6274982126572607 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_873
  oldHi := (157 / 250 : ℚ)
  oldPieces := [piece_1466, piece_1467]
}

def cell_8802 : Cell := { cellDefaults with
  domain := ⟨(8882812500000001 / 25000000000000000 : ℚ), (8884375000000001 / 25000000000000000 : ℚ)⟩
  r := (74207944136969 / 100000000000000 : ℚ)
  w := (5255709677 / 3200000000 : ℚ)
  center := (8883593750000001 / 25000000000000000 : ℚ)
  supportValue := (98005609486217 / 156250000000000 : ℚ)
  supportSlope := (-4195623341967547 / 1000000000000000 : ℚ)
  oldCenter := (98005609486217 / 156250000000000 : ℚ)
  newCoefficients := coefficients_873
  oldPieces := [piece_1466]
}

def cell_8803 : Cell := { cellDefaults with
  domain := ⟨(8884375000000001 / 25000000000000000 : ℚ), (8885937500000001 / 25000000000000000 : ℚ)⟩
  r := (74207944136969 / 100000000000000 : ℚ)
  w := (5255709677 / 3200000000 : ℚ)
  center := (8885156250000001 / 25000000000000000 : ℚ)
  supportValue := (156743439181583 / 250000000000000 : ℚ)
  supportSlope := (-8386320445637807 / 2000000000000000 : ℚ)
  oldCenter := (156743439181583 / 250000000000000 : ℚ)
  newCoefficients := coefficients_873
  oldLo := (31325000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1465, piece_1466]
}

def cell_8804 : Cell := { cellDefaults with
  domain := ⟨(8885937500000001 / 25000000000000000 : ℚ), (8887500000000001 / 25000000000000000 : ℚ)⟩
  r := (74207944136969 / 100000000000000 : ℚ)
  w := (5255709677 / 3200000000 : ℚ)
  center := (8886718750000001 / 25000000000000000 : ℚ)
  supportValue := (1566779395823679 / 2500000000000000 : ℚ)
  supportSlope := (-10476520658935229 / 2500000000000000 : ℚ)
  oldCenter := (1566779395823679 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_873
  oldLo := (31325000000000003 / 50000000000000000 : ℚ)
  oldHi := (627 / 1000 : ℚ)
  oldPieces := [piece_1465]
}

def cell_8805 : Cell := { cellDefaults with
  domain := ⟨(8887500000000001 / 25000000000000000 : ℚ), (8889062500000001 / 25000000000000000 : ℚ)⟩
  center := (8888281250000001 / 25000000000000000 : ℚ)
  supportValue := (784398982523241 / 1250000000000000 : ℚ)
  supportSlope := (-4195449607333757 / 1000000000000000 : ℚ)
  oldCenter := (784398982523241 / 1250000000000000 : ℚ)
  oldHi := (157 / 250 : ℚ)
  oldPieces := [piece_1466, piece_1467]
}

def cell_8806 : Cell := { cellDefaults with
  domain := ⟨(8889062500000001 / 25000000000000000 : ℚ), (8890625000000001 / 25000000000000000 : ℚ)⟩
  center := (8889843750000001 / 25000000000000000 : ℚ)
  supportValue := (6272570416529567 / 10000000000000000 : ℚ)
  supportSlope := (-4192977236129991 / 1000000000000000 : ℚ)
  oldCenter := (6272570416529567 / 10000000000000000 : ℚ)
  oldPieces := [piece_1466]
}

def cell_8807 : Cell := { cellDefaults with
  domain := ⟨(8890625000000001 / 25000000000000000 : ℚ), (8892187500000001 / 25000000000000000 : ℚ)⟩
  center := (8891406250000001 / 25000000000000000 : ℚ)
  supportValue := (3134975325696809 / 5000000000000000 : ℚ)
  supportSlope := (-8380966897448161 / 2000000000000000 : ℚ)
  oldCenter := (3134975325696809 / 5000000000000000 : ℚ)
  oldLo := (31325000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1465, piece_1466]
}

def cell_8808 : Cell := { cellDefaults with
  domain := ⟨(8892187500000001 / 25000000000000000 : ℚ), (8893750000000001 / 25000000000000000 : ℚ)⟩
  center := (8892968750000001 / 25000000000000000 : ℚ)
  supportValue := (3133666157997323 / 5000000000000000 : ℚ)
  supportSlope := (-2093986697685679 / 500000000000000 : ℚ)
  oldCenter := (3133666157997323 / 5000000000000000 : ℚ)
  oldLo := (31325000000000003 / 50000000000000000 : ℚ)
  oldHi := (627 / 1000 : ℚ)
  oldPieces := [piece_1465]
}

def cell_8809 : Cell := { cellDefaults with
  domain := ⟨(8893750000000001 / 25000000000000000 : ℚ), (8895312500000001 / 25000000000000000 : ℚ)⟩
  center := (8894531250000001 / 25000000000000000 : ℚ)
  supportValue := (3132357826072631 / 5000000000000000 : ℚ)
  supportSlope := (-8371046129475701 / 2000000000000000 : ℚ)
  oldCenter := (3132357826072631 / 5000000000000000 : ℚ)
  oldLo := (313 / 500 : ℚ)
  oldHi := (627 / 1000 : ℚ)
  oldPieces := [piece_1464, piece_1465]
}

def cell_8810 : Cell := { cellDefaults with
  domain := ⟨(8895312500000001 / 25000000000000000 : ℚ), (8896875000000001 / 25000000000000000 : ℚ)⟩
  center := (8896093750000001 / 25000000000000000 : ℚ)
  supportValue := (6262100440999471 / 10000000000000000 : ℚ)
  supportSlope := (-2091488141081399 / 500000000000000 : ℚ)
  oldCenter := (6262100440999471 / 10000000000000000 : ℚ)
  oldLo := (313 / 500 : ℚ)
  oldHi := (31325000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1464]
}

def cell_8811 : Cell := { cellDefaults with
  domain := ⟨(8896875000000001 / 25000000000000000 : ℚ), (8898437500000001 / 25000000000000000 : ℚ)⟩
  center := (8897656250000001 / 25000000000000000 : ℚ)
  supportValue := (3129743437416339 / 5000000000000000 : ℚ)
  supportSlope := (-836113689241813 / 200000000000000 : ℚ)
  oldCenter := (3129743437416339 / 5000000000000000 : ℚ)
  oldLo := (31275000000000003 / 50000000000000000 : ℚ)
  oldHi := (31325000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1463, piece_1464]
}

def cell_8812 : Cell := { cellDefaults with
  domain := ⟨(8898437500000001 / 25000000000000000 : ℚ), (8900000000000001 / 25000000000000000 : ℚ)⟩
  center := (8899218750000001 / 25000000000000000 : ℚ)
  supportValue := (6256874783736769 / 10000000000000000 : ℚ)
  supportSlope := (-4177985894713743 / 1000000000000000 : ℚ)
  oldCenter := (6256874783736769 / 10000000000000000 : ℚ)
  oldLo := (31275000000000003 / 50000000000000000 : ℚ)
  oldHi := (313 / 500 : ℚ)
  oldPieces := [piece_1463]
}

def cell_8813 : Cell := { cellDefaults with
  domain := ⟨(8900000000000001 / 25000000000000000 : ℚ), (8901562500000001 / 25000000000000000 : ℚ)⟩
  r := (4631487367523 / 6250000000000 : ℚ)
  w := (8203933254201 / 5000000000000 : ℚ)
  center := (8900781250000001 / 25000000000000000 : ℚ)
  supportValue := (626492653677687 / 1000000000000000 : ℚ)
  supportSlope := (-2091422988280911 / 500000000000000 : ℚ)
  oldCenter := (626492653677687 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_875
  oldLo := (313 / 500 : ℚ)
  oldHi := (627 / 1000 : ℚ)
  oldPieces := [piece_1464, piece_1465]
}

def cell_8814 : Cell := { cellDefaults with
  domain := ⟨(8901562500000001 / 25000000000000000 : ℚ), (8903125000000001 / 25000000000000000 : ℚ)⟩
  r := (4631487367523 / 6250000000000 : ℚ)
  w := (8203933254201 / 5000000000000 : ℚ)
  center := (8902343750000001 / 25000000000000000 : ℚ)
  supportValue := (6262312974595569 / 10000000000000000 : ℚ)
  supportSlope := (-4180340788760617 / 1000000000000000 : ℚ)
  oldCenter := (6262312974595569 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_875
  oldLo := (313 / 500 : ℚ)
  oldHi := (31325000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1464]
}

def cell_8815 : Cell := { cellDefaults with
  domain := ⟨(8903125000000001 / 25000000000000000 : ℚ), (8904687500000001 / 25000000000000000 : ℚ)⟩
  r := (4631487367523 / 6250000000000 : ℚ)
  w := (8203933254201 / 5000000000000 : ℚ)
  center := (8903906250000001 / 25000000000000000 : ℚ)
  supportValue := (6259701076691321 / 10000000000000000 : ℚ)
  supportSlope := (-8355804005589107 / 2000000000000000 : ℚ)
  oldCenter := (6259701076691321 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_875
  oldLo := (31275000000000003 / 50000000000000000 : ℚ)
  oldHi := (31325000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1463, piece_1464]
}

def cell_8816 : Cell := { cellDefaults with
  domain := ⟨(8904687500000001 / 25000000000000000 : ℚ), (8906250000000001 / 25000000000000000 : ℚ)⟩
  r := (4631487367523 / 6250000000000 : ℚ)
  w := (8203933254201 / 5000000000000 : ℚ)
  center := (8905468750000001 / 25000000000000000 : ℚ)
  supportValue := (3128545313765363 / 5000000000000000 : ℚ)
  supportSlope := (-260960102623109 / 62500000000000 : ℚ)
  oldCenter := (3128545313765363 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_875
  oldLo := (31275000000000003 / 50000000000000000 : ℚ)
  oldHi := (313 / 500 : ℚ)
  oldPieces := [piece_1463]
}

def cell_8817 : Cell := { cellDefaults with
  domain := ⟨(8906250000000001 / 25000000000000000 : ℚ), (8907812500000001 / 25000000000000000 : ℚ)⟩
  r := (4631487367523 / 6250000000000 : ℚ)
  w := (8203933254201 / 5000000000000 : ℚ)
  center := (8907031250000001 / 25000000000000000 : ℚ)
  supportValue := (3127240908531913 / 5000000000000000 : ℚ)
  supportSlope := (-208648188587901 / 50000000000000 : ℚ)
  oldCenter := (3127240908531913 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_875
  oldLo := (5 / 8 : ℚ)
  oldHi := (313 / 500 : ℚ)
  oldPieces := [piece_1462, piece_1463]
}

def cell_8818 : Cell := { cellDefaults with
  domain := ⟨(8907812500000001 / 25000000000000000 : ℚ), (8909375000000001 / 25000000000000000 : ℚ)⟩
  r := (4631487367523 / 6250000000000 : ℚ)
  w := (8203933254201 / 5000000000000 : ℚ)
  center := (8908593750000001 / 25000000000000000 : ℚ)
  supportValue := (1562968619183577 / 2500000000000000 : ℚ)
  supportSlope := (-4170389197081903 / 1000000000000000 : ℚ)
  oldCenter := (1562968619183577 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_875
  oldLo := (5 / 8 : ℚ)
  oldHi := (31275000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1462]
}

def cell_8819 : Cell := { cellDefaults with
  domain := ⟨(8909375000000001 / 25000000000000000 : ℚ), (8910937500000001 / 25000000000000000 : ℚ)⟩
  r := (4631487367523 / 6250000000000 : ℚ)
  w := (8203933254201 / 5000000000000 : ℚ)
  center := (8910156250000001 / 25000000000000000 : ℚ)
  supportValue := (3124634375060047 / 5000000000000000 : ℚ)
  supportSlope := (-2084015637722203 / 500000000000000 : ℚ)
  oldCenter := (3124634375060047 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_875
  oldLo := (31225000000000003 / 50000000000000000 : ℚ)
  oldHi := (31275000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1461, piece_1462]
}

def cell_8820 : Cell := { cellDefaults with
  domain := ⟨(8910937500000001 / 25000000000000000 : ℚ), (8912500000000001 / 25000000000000000 : ℚ)⟩
  r := (4631487367523 / 6250000000000 : ℚ)
  w := (8203933254201 / 5000000000000 : ℚ)
  center := (8911718750000001 / 25000000000000000 : ℚ)
  supportValue := (195208266076069 / 312500000000000 : ℚ)
  supportSlope := (-65084741444843 / 15625000000000 : ℚ)
  oldCenter := (195208266076069 / 312500000000000 : ℚ)
  newCoefficients := coefficients_875
  oldLo := (31225000000000003 / 50000000000000000 : ℚ)
  oldHi := (5 / 8 : ℚ)
  oldPieces := [piece_1461]
}

def cell_8821 : Cell := { cellDefaults with
  domain := ⟨(8912500000000001 / 25000000000000000 : ℚ), (8914062500000001 / 25000000000000000 : ℚ)⟩
  r := (74051847627219 / 100000000000000 : ℚ)
  w := (1639978016091 / 1000000000000 : ℚ)
  center := (8913281250000001 / 25000000000000000 : ℚ)
  supportValue := (6254694302245193 / 10000000000000000 : ℚ)
  supportSlope := (-834059427847933 / 200000000000000 : ℚ)
  oldCenter := (6254694302245193 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_876
  oldLo := (5 / 8 : ℚ)
  oldHi := (313 / 500 : ℚ)
  oldPieces := [piece_1462, piece_1463]
}

def cell_8822 : Cell := { cellDefaults with
  domain := ⟨(8914062500000001 / 25000000000000000 : ℚ), (8915625000000001 / 25000000000000000 : ℚ)⟩
  r := (74051847627219 / 100000000000000 : ℚ)
  w := (1639978016091 / 1000000000000 : ℚ)
  center := (8914843750000001 / 25000000000000000 : ℚ)
  supportValue := (390755537757273 / 625000000000000 : ℚ)
  supportSlope := (-4167764526137319 / 1000000000000000 : ℚ)
  oldCenter := (390755537757273 / 625000000000000 : ℚ)
  newCoefficients := coefficients_876
  oldLo := (5 / 8 : ℚ)
  oldHi := (31275000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1462]
}

def cell_8823 : Cell := { cellDefaults with
  domain := ⟨(8915625000000001 / 25000000000000000 : ℚ), (8917187500000001 / 25000000000000000 : ℚ)⟩
  r := (74051847627219 / 100000000000000 : ℚ)
  w := (1639978016091 / 1000000000000 : ℚ)
  center := (8916406250000001 / 25000000000000000 : ℚ)
  supportValue := (6249484539228647 / 10000000000000000 : ℚ)
  supportSlope := (-1041343822675067 / 250000000000000 : ℚ)
  oldCenter := (6249484539228647 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_876
  oldLo := (31225000000000003 / 50000000000000000 : ℚ)
  oldHi := (31275000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1461, piece_1462]
}

def cell_8824 : Cell := { cellDefaults with
  domain := ⟨(8917187500000001 / 25000000000000000 : ℚ), (8918750000000001 / 25000000000000000 : ℚ)⟩
  r := (74051847627219 / 100000000000000 : ℚ)
  w := (1639978016091 / 1000000000000 : ℚ)
  center := (8917968750000001 / 25000000000000000 : ℚ)
  supportValue := (3123440969356279 / 5000000000000000 : ℚ)
  supportSlope := (-520351253118001 / 125000000000000 : ℚ)
  oldCenter := (3123440969356279 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_876
  oldLo := (31225000000000003 / 50000000000000000 : ℚ)
  oldHi := (5 / 8 : ℚ)
  oldPieces := [piece_1461]
}

def cell_8825 : Cell := { cellDefaults with
  domain := ⟨(8918750000000001 / 25000000000000000 : ℚ), (8920312500000001 / 25000000000000000 : ℚ)⟩
  r := (74051847627219 / 100000000000000 : ℚ)
  w := (1639978016091 / 1000000000000 : ℚ)
  center := (8919531250000001 / 25000000000000000 : ℚ)
  supportValue := (6244280947449531 / 10000000000000000 : ℚ)
  supportSlope := (-8320918308307057 / 2000000000000000 : ℚ)
  oldCenter := (6244280947449531 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_876
  oldLo := (78 / 125 : ℚ)
  oldHi := (5 / 8 : ℚ)
  oldPieces := [piece_1460, piece_1461]
}

def cell_8826 : Cell := { cellDefaults with
  domain := ⟨(8920312500000001 / 25000000000000000 : ℚ), (8921875000000001 / 25000000000000000 : ℚ)⟩
  r := (74051847627219 / 100000000000000 : ℚ)
  w := (1639978016091 / 1000000000000 : ℚ)
  center := (8921093750000001 / 25000000000000000 : ℚ)
  supportValue := (6241681440372907 / 10000000000000000 : ℚ)
  supportSlope := (-2078931099386949 / 500000000000000 : ℚ)
  oldCenter := (6241681440372907 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_876
  oldLo := (78 / 125 : ℚ)
  oldHi := (31225000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1460]
}

def cell_8827 : Cell := { cellDefaults with
  domain := ⟨(8921875000000001 / 25000000000000000 : ℚ), (8923437500000001 / 25000000000000000 : ℚ)⟩
  r := (74051847627219 / 100000000000000 : ℚ)
  w := (1639978016091 / 1000000000000 : ℚ)
  center := (8922656250000001 / 25000000000000000 : ℚ)
  supportValue := (3119541759584203 / 5000000000000000 : ℚ)
  supportSlope := (-1038887146685319 / 250000000000000 : ℚ)
  oldCenter := (3119541759584203 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_876
  oldLo := (12470000000000001 / 20000000000000000 : ℚ)
  oldHi := (31225000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1458, piece_1459, piece_1460]
}

def cell_8828 : Cell := { cellDefaults with
  domain := ⟨(8923437500000001 / 25000000000000000 : ℚ), (8925000000000001 / 25000000000000000 : ℚ)⟩
  r := (74051847627219 / 100000000000000 : ℚ)
  w := (1639978016091 / 1000000000000 : ℚ)
  center := (8924218750000001 / 25000000000000000 : ℚ)
  supportValue := (6236487101526591 / 10000000000000000 : ℚ)
  supportSlope := (-259557549617373 / 62500000000000 : ℚ)
  oldCenter := (6236487101526591 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_876
  oldLo := (12470000000000001 / 20000000000000000 : ℚ)
  oldHi := (1559776536312849 / 2500000000000000 : ℚ)
  oldPieces := [piece_1458]
}

def cell_8829 : Cell := { cellDefaults with
  domain := ⟨(8925000000000001 / 25000000000000000 : ℚ), (8926562500000001 / 25000000000000000 : ℚ)⟩
  r := (14799995933959 / 20000000000000 : ℚ)
  w := (16391712155313 / 10000000000000 : ℚ)
  center := (8925781250000001 / 25000000000000000 : ℚ)
  supportValue := (6244494520713069 / 10000000000000000 : ℚ)
  supportSlope := (-4157802597283933 / 1000000000000000 : ℚ)
  oldCenter := (6244494520713069 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_877
  oldLo := (78 / 125 : ℚ)
  oldHi := (5 / 8 : ℚ)
  oldPieces := [piece_1460, piece_1461]
}

def cell_8830 : Cell := { cellDefaults with
  domain := ⟨(8926562500000001 / 25000000000000000 : ℚ), (8928125000000001 / 25000000000000000 : ℚ)⟩
  r := (14799995933959 / 20000000000000 : ℚ)
  w := (16391712155313 / 10000000000000 : ℚ)
  center := (8927343750000001 / 25000000000000000 : ℚ)
  supportValue := (3120948324682243 / 5000000000000000 : ℚ)
  supportSlope := (-4155247884593649 / 1000000000000000 : ℚ)
  oldCenter := (3120948324682243 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_877
  oldLo := (78 / 125 : ℚ)
  oldHi := (31225000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1460]
}

def cell_8831 : Cell := { cellDefaults with
  domain := ⟨(8928125000000001 / 25000000000000000 : ℚ), (8929687500000001 / 25000000000000000 : ℚ)⟩
  r := (14799995933959 / 20000000000000 : ℚ)
  w := (16391712155313 / 10000000000000 : ℚ)
  center := (8928906250000001 / 25000000000000000 : ℚ)
  supportValue := (1559825095896671 / 2500000000000000 : ℚ)
  supportSlope := (-1038225675795701 / 250000000000000 : ℚ)
  oldCenter := (1559825095896671 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_877
  oldLo := (12470000000000001 / 20000000000000000 : ℚ)
  oldHi := (31225000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1458, piece_1459, piece_1460]
}

def cell_8832 : Cell := { cellDefaults with
  domain := ⟨(8929687500000001 / 25000000000000000 : ℚ), (8931250000000001 / 25000000000000000 : ℚ)⟩
  r := (14799995933959 / 20000000000000 : ℚ)
  w := (16391712155313 / 10000000000000 : ℚ)
  center := (8930468750000001 / 25000000000000000 : ℚ)
  supportValue := (311835279731397 / 500000000000000 : ℚ)
  supportSlope := (-4150317724072039 / 1000000000000000 : ℚ)
  oldCenter := (311835279731397 / 500000000000000 : ℚ)
  newCoefficients := coefficients_877
  oldLo := (12470000000000001 / 20000000000000000 : ℚ)
  oldHi := (1559776536312849 / 2500000000000000 : ℚ)
  oldPieces := [piece_1458]
}

def cell_8833 : Cell := { cellDefaults with
  domain := ⟨(8931250000000001 / 25000000000000000 : ℚ), (8932812500000001 / 25000000000000000 : ℚ)⟩
  r := (14799995933959 / 20000000000000 : ℚ)
  w := (16391712155313 / 10000000000000 : ℚ)
  center := (8932031250000001 / 25000000000000000 : ℚ)
  supportValue := (6234112388833707 / 10000000000000000 : ℚ)
  supportSlope := (-4148008538866321 / 1000000000000000 : ℚ)
  oldCenter := (6234112388833707 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_877
  oldLo := (623 / 1000 : ℚ)
  oldHi := (1559776536312849 / 2500000000000000 : ℚ)
  oldPieces := [piece_1457, piece_1458]
}

def cell_8834 : Cell := { cellDefaults with
  domain := ⟨(8932812500000001 / 25000000000000000 : ℚ), (8934375000000001 / 25000000000000000 : ℚ)⟩
  r := (14799995933959 / 20000000000000 : ℚ)
  w := (16391712155313 / 10000000000000 : ℚ)
  center := (8933593750000001 / 25000000000000000 : ℚ)
  supportValue := (6231520677922603 / 10000000000000000 : ℚ)
  supportSlope := (-2072697242205379 / 500000000000000 : ℚ)
  oldCenter := (6231520677922603 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_877
  oldLo := (623 / 1000 : ℚ)
  oldHi := (12470000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1457]
}

def cell_8835 : Cell := { cellDefaults with
  domain := ⟨(8934375000000001 / 25000000000000000 : ℚ), (8935937500000001 / 25000000000000000 : ℚ)⟩
  r := (14799995933959 / 20000000000000 : ℚ)
  w := (16391712155313 / 10000000000000 : ℚ)
  center := (8935156250000001 / 25000000000000000 : ℚ)
  supportValue := (3114465264213529 / 5000000000000000 : ℚ)
  supportSlope := (-4143120130187583 / 1000000000000000 : ℚ)
  oldCenter := (3114465264213529 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_877
  oldLo := (12450000000000001 / 20000000000000000 : ℚ)
  oldHi := (12470000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1456, piece_1457]
}

def cell_8836 : Cell := { cellDefaults with
  domain := ⟨(8935937500000001 / 25000000000000000 : ℚ), (8937500000000001 / 25000000000000000 : ℚ)⟩
  r := (14799995933959 / 20000000000000 : ℚ)
  w := (16391712155313 / 10000000000000 : ℚ)
  center := (8936718750000001 / 25000000000000000 : ℚ)
  supportValue := (3113170945717097 / 5000000000000000 : ℚ)
  supportSlope := (-1035119468988377 / 250000000000000 : ℚ)
  oldCenter := (3113170945717097 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_877
  oldLo := (12450000000000001 / 20000000000000000 : ℚ)
  oldHi := (623 / 1000 : ℚ)
  oldPieces := [piece_1456]
}

def cell_8837 : Cell := { cellDefaults with
  domain := ⟨(8937500000000001 / 25000000000000000 : ℚ), (8939062500000001 / 25000000000000000 : ℚ)⟩
  r := (4621762186009 / 6250000000000 : ℚ)
  w := (2047957638477 / 1250000000000 : ℚ)
  center := (8938281250000001 / 25000000000000000 : ℚ)
  supportValue := (6234327425790321 / 10000000000000000 : ℚ)
  supportSlope := (-5181702767496077 / 1250000000000000 : ℚ)
  oldCenter := (6234327425790321 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_878
  oldLo := (623 / 1000 : ℚ)
  oldHi := (1559776536312849 / 2500000000000000 : ℚ)
  oldPieces := [piece_1457, piece_1458]
}

def cell_8838 : Cell := { cellDefaults with
  domain := ⟨(8939062500000001 / 25000000000000000 : ℚ), (8940625000000001 / 25000000000000000 : ℚ)⟩
  r := (4621762186009 / 6250000000000 : ℚ)
  w := (2047957638477 / 1250000000000 : ℚ)
  center := (8939843750000001 / 25000000000000000 : ℚ)
  supportValue := (155793433599887 / 250000000000000 : ℚ)
  supportSlope := (-258924421155049 / 62500000000000 : ℚ)
  oldCenter := (155793433599887 / 250000000000000 : ℚ)
  newCoefficients := coefficients_878
  oldLo := (623 / 1000 : ℚ)
  oldHi := (12470000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1457]
}

def cell_8839 : Cell := { cellDefaults with
  domain := ⟨(8940625000000001 / 25000000000000000 : ℚ), (8942187500000001 / 25000000000000000 : ℚ)⟩
  r := (4621762186009 / 6250000000000 : ℚ)
  w := (2047957638477 / 1250000000000 : ℚ)
  center := (8941406250000001 / 25000000000000000 : ℚ)
  supportValue := (6229148843555101 / 10000000000000000 : ℚ)
  supportSlope := (-2070242205629569 / 500000000000000 : ℚ)
  oldCenter := (6229148843555101 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_878
  oldLo := (12450000000000001 / 20000000000000000 : ℚ)
  oldHi := (12470000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1456, piece_1457]
}

def cell_8840 : Cell := { cellDefaults with
  domain := ⟨(8942187500000001 / 25000000000000000 : ℚ), (8943750000000001 / 25000000000000000 : ℚ)⟩
  r := (4621762186009 / 6250000000000 : ℚ)
  w := (2047957638477 / 1250000000000 : ℚ)
  center := (8942968750000001 / 25000000000000000 : ℚ)
  supportValue := (6226561828670557 / 10000000000000000 : ℚ)
  supportSlope := (-41378853367533 / 10000000000000 : ℚ)
  oldCenter := (6226561828670557 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_878
  oldLo := (12450000000000001 / 20000000000000000 : ℚ)
  oldHi := (623 / 1000 : ℚ)
  oldPieces := [piece_1456]
}

def cell_8841 : Cell := { cellDefaults with
  domain := ⟨(8943750000000001 / 25000000000000000 : ℚ), (8945312500000001 / 25000000000000000 : ℚ)⟩
  r := (4621762186009 / 6250000000000 : ℚ)
  w := (2047957638477 / 1250000000000 : ℚ)
  center := (8944531250000001 / 25000000000000000 : ℚ)
  supportValue := (1555994093588749 / 2500000000000000 : ℚ)
  supportSlope := (-2067806132348693 / 500000000000000 : ℚ)
  oldCenter := (1555994093588749 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_878
  oldLo := (311 / 500 : ℚ)
  oldHi := (623 / 1000 : ℚ)
  oldPieces := [piece_1455, piece_1456]
}

def cell_8842 : Cell := { cellDefaults with
  domain := ⟨(8945312500000001 / 25000000000000000 : ℚ), (8946875000000001 / 25000000000000000 : ℚ)⟩
  r := (4621762186009 / 6250000000000 : ℚ)
  w := (2047957638477 / 1250000000000 : ℚ)
  center := (8946093750000001 / 25000000000000000 : ℚ)
  supportValue := (3110696211128651 / 5000000000000000 : ℚ)
  supportSlope := (-4132986507752179 / 1000000000000000 : ℚ)
  oldCenter := (3110696211128651 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_878
  oldLo := (311 / 500 : ℚ)
  oldHi := (12450000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1455]
}

def cell_8843 : Cell := { cellDefaults with
  domain := ⟨(8946875000000001 / 25000000000000000 : ℚ), (8948437500000001 / 25000000000000000 : ℚ)⟩
  r := (4621762186009 / 6250000000000 : ℚ)
  w := (2047957638477 / 1250000000000 : ℚ)
  center := (8947656250000001 / 25000000000000000 : ℚ)
  supportValue := (6218810010571539 / 10000000000000000 : ℚ)
  supportSlope := (-51634321437799 / 12500000000000 : ℚ)
  oldCenter := (6218810010571539 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_878
  oldLo := (12430000000000001 / 20000000000000000 : ℚ)
  oldHi := (12450000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1454, piece_1455]
}

def cell_8844 : Cell := { cellDefaults with
  domain := ⟨(8948437500000001 / 25000000000000000 : ℚ), (8950000000000001 / 25000000000000000 : ℚ)⟩
  r := (4621762186009 / 6250000000000 : ℚ)
  w := (2047957638477 / 1250000000000 : ℚ)
  center := (8949218750000001 / 25000000000000000 : ℚ)
  supportValue := (248649164686201 / 400000000000000 : ℚ)
  supportSlope := (-2064052541070893 / 500000000000000 : ℚ)
  oldCenter := (248649164686201 / 400000000000000 : ℚ)
  newCoefficients := coefficients_878
  oldLo := (621 / 1000 : ℚ)
  oldHi := (311 / 500 : ℚ)
  oldPieces := [piece_1453, piece_1454]
}

def cell_8845 : Cell := { cellDefaults with
  domain := ⟨(8950000000000001 / 25000000000000000 : ℚ), (8951562500000001 / 25000000000000000 : ℚ)⟩
  r := (73896489796577 / 100000000000000 : ℚ)
  w := (4093907203071 / 2500000000000 : ℚ)
  center := (8950781250000001 / 25000000000000000 : ℚ)
  supportValue := (389012035855627 / 625000000000000 : ℚ)
  supportSlope := (-2066488391315957 / 500000000000000 : ℚ)
  oldCenter := (389012035855627 / 625000000000000 : ℚ)
  newCoefficients := coefficients_879
  oldLo := (311 / 500 : ℚ)
  oldHi := (623 / 1000 : ℚ)
  oldPieces := [piece_1455, piece_1456]
}

def cell_8846 : Cell := { cellDefaults with
  domain := ⟨(8951562500000001 / 25000000000000000 : ℚ), (8953125000000001 / 25000000000000000 : ℚ)⟩
  r := (73896489796577 / 100000000000000 : ℚ)
  w := (4093907203071 / 2500000000000 : ℚ)
  center := (8952343750000001 / 25000000000000000 : ℚ)
  supportValue := (622161024387897 / 1000000000000000 : ℚ)
  supportSlope := (-4130393467157489 / 1000000000000000 : ℚ)
  oldCenter := (622161024387897 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_879
  oldLo := (311 / 500 : ℚ)
  oldHi := (12450000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1455]
}

def cell_8847 : Cell := { cellDefaults with
  domain := ⟨(8953125000000001 / 25000000000000000 : ℚ), (8954687500000001 / 25000000000000000 : ℚ)⟩
  r := (73896489796577 / 100000000000000 : ℚ)
  w := (4093907203071 / 2500000000000 : ℚ)
  center := (8953906250000001 / 25000000000000000 : ℚ)
  supportValue := (310951473744367 / 500000000000000 : ℚ)
  supportSlope := (-2064059977218591 / 500000000000000 : ℚ)
  oldCenter := (310951473744367 / 500000000000000 : ℚ)
  newCoefficients := coefficients_879
  oldLo := (12430000000000001 / 20000000000000000 : ℚ)
  oldHi := (12450000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1454, piece_1455]
}

def cell_8848 : Cell := { cellDefaults with
  domain := ⟨(8954687500000001 / 25000000000000000 : ℚ), (8956250000000001 / 25000000000000000 : ℚ)⟩
  r := (73896489796577 / 100000000000000 : ℚ)
  w := (4093907203071 / 2500000000000 : ℚ)
  center := (8955468750000001 / 25000000000000000 : ℚ)
  supportValue := (6216450197301089 / 10000000000000000 : ℚ)
  supportSlope := (-103137788247043 / 25000000000000 : ℚ)
  oldCenter := (6216450197301089 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_879
  oldLo := (12430000000000001 / 20000000000000000 : ℚ)
  oldHi := (311 / 500 : ℚ)
  oldPieces := [piece_1454]
}

def cell_8849 : Cell := { cellDefaults with
  domain := ⟨(8956250000000001 / 25000000000000000 : ℚ), (35834287709497207 / 100000000000000000 : ℚ)⟩
  r := (73896489796577 / 100000000000000 : ℚ)
  w := (4093907203071 / 2500000000000 : ℚ)
  center := (71659287709497211 / 200000000000000000 : ℚ)
  supportValue := (6213250590775053 / 10000000000000000 : ℚ)
  supportSlope := (-2061315576778977 / 500000000000000 : ℚ)
  oldCenter := (6213250590775053 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_879
  oldLo := (621 / 1000 : ℚ)
  oldHi := (311 / 500 : ℚ)
  oldPieces := [piece_1453, piece_1454]
}

theorem check_8800 : cell_8800.check = true := by
  decide +kernel

theorem check_8801 : cell_8801.check = true := by
  decide +kernel

theorem check_8802 : cell_8802.check = true := by
  decide +kernel

theorem check_8803 : cell_8803.check = true := by
  decide +kernel

theorem check_8804 : cell_8804.check = true := by
  decide +kernel

theorem check_8805 : cell_8805.check = true := by
  decide +kernel

theorem check_8806 : cell_8806.check = true := by
  decide +kernel

theorem check_8807 : cell_8807.check = true := by
  decide +kernel

theorem check_8808 : cell_8808.check = true := by
  decide +kernel

theorem check_8809 : cell_8809.check = true := by
  decide +kernel

theorem check_8810 : cell_8810.check = true := by
  decide +kernel

theorem check_8811 : cell_8811.check = true := by
  decide +kernel

theorem check_8812 : cell_8812.check = true := by
  decide +kernel

theorem check_8813 : cell_8813.check = true := by
  decide +kernel

theorem check_8814 : cell_8814.check = true := by
  decide +kernel

theorem check_8815 : cell_8815.check = true := by
  decide +kernel

theorem check_8816 : cell_8816.check = true := by
  decide +kernel

theorem check_8817 : cell_8817.check = true := by
  decide +kernel

theorem check_8818 : cell_8818.check = true := by
  decide +kernel

theorem check_8819 : cell_8819.check = true := by
  decide +kernel

theorem check_8820 : cell_8820.check = true := by
  decide +kernel

theorem check_8821 : cell_8821.check = true := by
  decide +kernel

theorem check_8822 : cell_8822.check = true := by
  decide +kernel

theorem check_8823 : cell_8823.check = true := by
  decide +kernel

theorem check_8824 : cell_8824.check = true := by
  decide +kernel

theorem check_8825 : cell_8825.check = true := by
  decide +kernel

theorem check_8826 : cell_8826.check = true := by
  decide +kernel

theorem check_8827 : cell_8827.check = true := by
  decide +kernel

theorem check_8828 : cell_8828.check = true := by
  decide +kernel

theorem check_8829 : cell_8829.check = true := by
  decide +kernel

theorem check_8830 : cell_8830.check = true := by
  decide +kernel

theorem check_8831 : cell_8831.check = true := by
  decide +kernel

theorem check_8832 : cell_8832.check = true := by
  decide +kernel

theorem check_8833 : cell_8833.check = true := by
  decide +kernel

theorem check_8834 : cell_8834.check = true := by
  decide +kernel

theorem check_8835 : cell_8835.check = true := by
  decide +kernel

theorem check_8836 : cell_8836.check = true := by
  decide +kernel

theorem check_8837 : cell_8837.check = true := by
  decide +kernel

theorem check_8838 : cell_8838.check = true := by
  decide +kernel

theorem check_8839 : cell_8839.check = true := by
  decide +kernel

theorem check_8840 : cell_8840.check = true := by
  decide +kernel

theorem check_8841 : cell_8841.check = true := by
  decide +kernel

theorem check_8842 : cell_8842.check = true := by
  decide +kernel

theorem check_8843 : cell_8843.check = true := by
  decide +kernel

theorem check_8844 : cell_8844.check = true := by
  decide +kernel

theorem check_8845 : cell_8845.check = true := by
  decide +kernel

theorem check_8846 : cell_8846.check = true := by
  decide +kernel

theorem check_8847 : cell_8847.check = true := by
  decide +kernel

theorem check_8848 : cell_8848.check = true := by
  decide +kernel

theorem check_8849 : cell_8849.check = true := by
  decide +kernel

def cells : List Cell := [cell_8800, cell_8801, cell_8802, cell_8803, cell_8804, cell_8805, cell_8806, cell_8807, cell_8808, cell_8809, cell_8810, cell_8811, cell_8812, cell_8813, cell_8814, cell_8815, cell_8816, cell_8817, cell_8818, cell_8819, cell_8820, cell_8821, cell_8822, cell_8823, cell_8824, cell_8825, cell_8826, cell_8827, cell_8828, cell_8829, cell_8830, cell_8831, cell_8832, cell_8833, cell_8834, cell_8835, cell_8836, cell_8837, cell_8838, cell_8839, cell_8840, cell_8841, cell_8842, cell_8843, cell_8844, cell_8845, cell_8846, cell_8847, cell_8848, cell_8849]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8800, check_8801, check_8802, check_8803, check_8804, check_8805, check_8806, check_8807, check_8808, check_8809, check_8810, check_8811, check_8812, check_8813, check_8814, check_8815, check_8816, check_8817, check_8818, check_8819, check_8820, check_8821, check_8822, check_8823, check_8824, check_8825, check_8826, check_8827, check_8828, check_8829, check_8830, check_8831, check_8832, check_8833, check_8834, check_8835, check_8836, check_8837, check_8838, check_8839, check_8840, check_8841, check_8842, check_8843, check_8844, check_8845, check_8846, check_8847, check_8848, check_8849, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0176

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0176
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0176
open AnalyticBounds.ExpressionCertificate

theorem linked_8800 : Linked cell_8800 pieces := by
  link_source cell_8800 with piece_873 using piece_873_mem, piece_1467_mem

theorem linked_8801 : Linked cell_8801 pieces := by
  link_source cell_8801 with piece_873 using piece_873_mem, ⟨piece_1466_mem, piece_1467_mem⟩

theorem linked_8802 : Linked cell_8802 pieces := by
  link_source cell_8802 with piece_873 using piece_873_mem, piece_1466_mem

theorem linked_8803 : Linked cell_8803 pieces := by
  link_source cell_8803 with piece_873 using piece_873_mem, ⟨piece_1465_mem, piece_1466_mem⟩

theorem linked_8804 : Linked cell_8804 pieces := by
  link_source cell_8804 with piece_873 using piece_873_mem, piece_1465_mem

theorem linked_8805 : Linked cell_8805 pieces := by
  link_source cell_8805 with piece_874 using piece_874_mem, ⟨piece_1466_mem, piece_1467_mem⟩

theorem linked_8806 : Linked cell_8806 pieces := by
  link_source cell_8806 with piece_874 using piece_874_mem, piece_1466_mem

theorem linked_8807 : Linked cell_8807 pieces := by
  link_source cell_8807 with piece_874 using piece_874_mem, ⟨piece_1465_mem, piece_1466_mem⟩

theorem linked_8808 : Linked cell_8808 pieces := by
  link_source cell_8808 with piece_874 using piece_874_mem, piece_1465_mem

theorem linked_8809 : Linked cell_8809 pieces := by
  link_source cell_8809 with piece_874 using piece_874_mem, ⟨piece_1464_mem, piece_1465_mem⟩

theorem linked_8810 : Linked cell_8810 pieces := by
  link_source cell_8810 with piece_874 using piece_874_mem, piece_1464_mem

theorem linked_8811 : Linked cell_8811 pieces := by
  link_source cell_8811 with piece_874 using piece_874_mem, ⟨piece_1463_mem, piece_1464_mem⟩

theorem linked_8812 : Linked cell_8812 pieces := by
  link_source cell_8812 with piece_874 using piece_874_mem, piece_1463_mem

theorem linked_8813 : Linked cell_8813 pieces := by
  link_source cell_8813 with piece_875 using piece_875_mem, ⟨piece_1464_mem, piece_1465_mem⟩

theorem linked_8814 : Linked cell_8814 pieces := by
  link_source cell_8814 with piece_875 using piece_875_mem, piece_1464_mem

theorem linked_8815 : Linked cell_8815 pieces := by
  link_source cell_8815 with piece_875 using piece_875_mem, ⟨piece_1463_mem, piece_1464_mem⟩

theorem linked_8816 : Linked cell_8816 pieces := by
  link_source cell_8816 with piece_875 using piece_875_mem, piece_1463_mem

theorem linked_8817 : Linked cell_8817 pieces := by
  link_source cell_8817 with piece_875 using piece_875_mem, ⟨piece_1462_mem, piece_1463_mem⟩

theorem linked_8818 : Linked cell_8818 pieces := by
  link_source cell_8818 with piece_875 using piece_875_mem, piece_1462_mem

theorem linked_8819 : Linked cell_8819 pieces := by
  link_source cell_8819 with piece_875 using piece_875_mem, ⟨piece_1461_mem, piece_1462_mem⟩

theorem linked_8820 : Linked cell_8820 pieces := by
  link_source cell_8820 with piece_875 using piece_875_mem, piece_1461_mem

theorem linked_8821 : Linked cell_8821 pieces := by
  link_source cell_8821 with piece_876 using piece_876_mem, ⟨piece_1462_mem, piece_1463_mem⟩

theorem linked_8822 : Linked cell_8822 pieces := by
  link_source cell_8822 with piece_876 using piece_876_mem, piece_1462_mem

theorem linked_8823 : Linked cell_8823 pieces := by
  link_source cell_8823 with piece_876 using piece_876_mem, ⟨piece_1461_mem, piece_1462_mem⟩

theorem linked_8824 : Linked cell_8824 pieces := by
  link_source cell_8824 with piece_876 using piece_876_mem, piece_1461_mem

theorem linked_8825 : Linked cell_8825 pieces := by
  link_source cell_8825 with piece_876 using piece_876_mem, ⟨piece_1460_mem, piece_1461_mem⟩

theorem linked_8826 : Linked cell_8826 pieces := by
  link_source cell_8826 with piece_876 using piece_876_mem, piece_1460_mem

theorem linked_8827 : Linked cell_8827 pieces := by
  link_source cell_8827 with piece_876 using piece_876_mem, ⟨piece_1458_mem, ⟨piece_1459_mem, piece_1460_mem⟩⟩

theorem linked_8828 : Linked cell_8828 pieces := by
  link_source cell_8828 with piece_876 using piece_876_mem, piece_1458_mem

theorem linked_8829 : Linked cell_8829 pieces := by
  link_source cell_8829 with piece_877 using piece_877_mem, ⟨piece_1460_mem, piece_1461_mem⟩

theorem linked_8830 : Linked cell_8830 pieces := by
  link_source cell_8830 with piece_877 using piece_877_mem, piece_1460_mem

theorem linked_8831 : Linked cell_8831 pieces := by
  link_source cell_8831 with piece_877 using piece_877_mem, ⟨piece_1458_mem, ⟨piece_1459_mem, piece_1460_mem⟩⟩

theorem linked_8832 : Linked cell_8832 pieces := by
  link_source cell_8832 with piece_877 using piece_877_mem, piece_1458_mem

theorem linked_8833 : Linked cell_8833 pieces := by
  link_source cell_8833 with piece_877 using piece_877_mem, ⟨piece_1457_mem, piece_1458_mem⟩

theorem linked_8834 : Linked cell_8834 pieces := by
  link_source cell_8834 with piece_877 using piece_877_mem, piece_1457_mem

theorem linked_8835 : Linked cell_8835 pieces := by
  link_source cell_8835 with piece_877 using piece_877_mem, ⟨piece_1456_mem, piece_1457_mem⟩

theorem linked_8836 : Linked cell_8836 pieces := by
  link_source cell_8836 with piece_877 using piece_877_mem, piece_1456_mem

theorem linked_8837 : Linked cell_8837 pieces := by
  link_source cell_8837 with piece_878 using piece_878_mem, ⟨piece_1457_mem, piece_1458_mem⟩

theorem linked_8838 : Linked cell_8838 pieces := by
  link_source cell_8838 with piece_878 using piece_878_mem, piece_1457_mem

theorem linked_8839 : Linked cell_8839 pieces := by
  link_source cell_8839 with piece_878 using piece_878_mem, ⟨piece_1456_mem, piece_1457_mem⟩

theorem linked_8840 : Linked cell_8840 pieces := by
  link_source cell_8840 with piece_878 using piece_878_mem, piece_1456_mem

theorem linked_8841 : Linked cell_8841 pieces := by
  link_source cell_8841 with piece_878 using piece_878_mem, ⟨piece_1455_mem, piece_1456_mem⟩

theorem linked_8842 : Linked cell_8842 pieces := by
  link_source cell_8842 with piece_878 using piece_878_mem, piece_1455_mem

theorem linked_8843 : Linked cell_8843 pieces := by
  link_source cell_8843 with piece_878 using piece_878_mem, ⟨piece_1454_mem, piece_1455_mem⟩

theorem linked_8844 : Linked cell_8844 pieces := by
  link_source cell_8844 with piece_878 using piece_878_mem, ⟨piece_1453_mem, piece_1454_mem⟩

theorem linked_8845 : Linked cell_8845 pieces := by
  link_source cell_8845 with piece_879 using piece_879_mem, ⟨piece_1455_mem, piece_1456_mem⟩

theorem linked_8846 : Linked cell_8846 pieces := by
  link_source cell_8846 with piece_879 using piece_879_mem, piece_1455_mem

theorem linked_8847 : Linked cell_8847 pieces := by
  link_source cell_8847 with piece_879 using piece_879_mem, ⟨piece_1454_mem, piece_1455_mem⟩

theorem linked_8848 : Linked cell_8848 pieces := by
  link_source cell_8848 with piece_879 using piece_879_mem, piece_1454_mem

theorem linked_8849 : Linked cell_8849 pieces := by
  link_source cell_8849 with piece_879 using piece_879_mem, ⟨piece_1453_mem, piece_1454_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0176.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0176.cells,List.forall_mem_cons]
  exact ⟨linked_8800, linked_8801, linked_8802, linked_8803, linked_8804, linked_8805, linked_8806, linked_8807, linked_8808, linked_8809, linked_8810, linked_8811, linked_8812, linked_8813, linked_8814, linked_8815, linked_8816, linked_8817, linked_8818, linked_8819, linked_8820, linked_8821, linked_8822, linked_8823, linked_8824, linked_8825, linked_8826, linked_8827, linked_8828, linked_8829, linked_8830, linked_8831, linked_8832, linked_8833, linked_8834, linked_8835, linked_8836, linked_8837, linked_8838, linked_8839, linked_8840, linked_8841, linked_8842, linked_8843, linked_8844, linked_8845, linked_8846, linked_8847, linked_8848, linked_8849, by simp⟩

theorem covered : covers (8879687500000001 / 25000000000000000 : ℚ) (35834287709497207 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0176.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0176
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0177
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(35834287709497207 / 100000000000000000 : ℚ), (3584357541899441 / 10000000000000000 : ℚ)⟩
  branch := .left
  r := (73844866927389 / 100000000000000 : ℚ)
  w := (16367613772533 / 10000000000000 : ℚ)
  center := (71677863128491617 / 200000000000000000 : ℚ)
  supportValue := (388088960127417 / 625000000000000 : ℚ)
  supportSlope := (-4118989237808967 / 1000000000000000 : ℚ)
  oldCenter := (388088960127417 / 625000000000000 : ℚ)
  newCoefficients := coefficients_881
  oldLo := (61599999999999999 / 100000000000000000 : ℚ)
  oldHi := (31 / 50 : ℚ)
  oldPieces := [piece_1451, piece_1452]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8850 : Cell := { cellDefaults with
  r := (73896489796577 / 100000000000000 : ℚ)
  w := (4093907203071 / 2500000000000 : ℚ)
  newCoefficients := coefficients_879
  oldLo := (12410000000000001 / 20000000000000000 : ℚ)
  oldHi := (12430000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1452, piece_1453]
}

def cell_8851 : Cell := { cellDefaults with
  domain := ⟨(3584357541899441 / 10000000000000000 : ℚ), (8962500000000001 / 25000000000000000 : ℚ)⟩
  r := (73896489796577 / 100000000000000 : ℚ)
  w := (4093907203071 / 2500000000000 : ℚ)
  center := (35846787709497207 / 100000000000000000 : ℚ)
  supportValue := (3103092133589177 / 5000000000000000 : ℚ)
  supportSlope := (-4115827673610227 / 1000000000000000 : ℚ)
  oldCenter := (3103092133589177 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_880
  oldLo := (31 / 50 : ℚ)
  oldHi := (621 / 1000 : ℚ)
  oldPieces := [piece_1451, piece_1452]
}

def cell_8852 : Cell := { cellDefaults with
  domain := ⟨(8962500000000001 / 25000000000000000 : ℚ), (8964062500000001 / 25000000000000000 : ℚ)⟩
  center := (8963281250000001 / 25000000000000000 : ℚ)
  supportValue := (776761249434533 / 1250000000000000 : ℚ)
  supportSlope := (-4120642408540931 / 1000000000000000 : ℚ)
  oldCenter := (776761249434533 / 1250000000000000 : ℚ)
  oldLo := (621 / 1000 : ℚ)
  oldHi := (311 / 500 : ℚ)
  oldPieces := [piece_1453, piece_1454]
}

def cell_8853 : Cell := { cellDefaults with
  domain := ⟨(8964062500000001 / 25000000000000000 : ℚ), (8965625000000001 / 25000000000000000 : ℚ)⟩
  center := (8964843750000001 / 25000000000000000 : ℚ)
  supportValue := (6211515382206487 / 10000000000000000 : ℚ)
  supportSlope := (-4118053096917151 / 1000000000000000 : ℚ)
  oldCenter := (6211515382206487 / 10000000000000000 : ℚ)
  oldLo := (621 / 1000 : ℚ)
  oldHi := (12430000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1453]
}

def cell_8854 : Cell := { cellDefaults with
  domain := ⟨(8965625000000001 / 25000000000000000 : ℚ), (8967187500000001 / 25000000000000000 : ℚ)⟩
  center := (8966406250000001 / 25000000000000000 : ℚ)
  supportValue := (6208942312380927 / 10000000000000000 : ℚ)
  supportSlope := (-4115807378919811 / 1000000000000000 : ℚ)
  oldCenter := (6208942312380927 / 10000000000000000 : ℚ)
  oldLo := (12410000000000001 / 20000000000000000 : ℚ)
  oldHi := (12430000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1452, piece_1453]
}

def cell_8855 : Cell := { cellDefaults with
  domain := ⟨(8967187500000001 / 25000000000000000 : ℚ), (8968750000000001 / 25000000000000000 : ℚ)⟩
  center := (8967968750000001 / 25000000000000000 : ℚ)
  supportValue := (6206370736114869 / 10000000000000000 : ℚ)
  supportSlope := (-4113195506427303 / 1000000000000000 : ℚ)
  oldCenter := (6206370736114869 / 10000000000000000 : ℚ)
  oldLo := (12410000000000001 / 20000000000000000 : ℚ)
  oldHi := (621 / 1000 : ℚ)
  oldPieces := [piece_1452]
}

def cell_8856 : Cell := { cellDefaults with
  domain := ⟨(8968750000000001 / 25000000000000000 : ℚ), (8970312500000001 / 25000000000000000 : ℚ)⟩
  center := (8969531250000001 / 25000000000000000 : ℚ)
  supportValue := (757299888397 / 1220703125000 : ℚ)
  supportSlope := (-164439115715993 / 40000000000000 : ℚ)
  oldCenter := (757299888397 / 1220703125000 : ℚ)
  oldLo := (31 / 50 : ℚ)
  oldHi := (621 / 1000 : ℚ)
  oldPieces := [piece_1451, piece_1452]
}

def cell_8857 : Cell := { cellDefaults with
  domain := ⟨(8970312500000001 / 25000000000000000 : ℚ), (8971875000000001 / 25000000000000000 : ℚ)⟩
  center := (8971093750000001 / 25000000000000000 : ℚ)
  supportValue := (3100616071204963 / 5000000000000000 : ℚ)
  supportSlope := (-2054176862062107 / 500000000000000 : ℚ)
  oldCenter := (3100616071204963 / 5000000000000000 : ℚ)
  oldLo := (12390000000000001 / 20000000000000000 : ℚ)
  oldHi := (12410000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1450, piece_1451]
}

def cell_8858 : Cell := { cellDefaults with
  domain := ⟨(8971875000000001 / 25000000000000000 : ℚ), (8973437500000001 / 25000000000000000 : ℚ)⟩
  center := (8972656250000001 / 25000000000000000 : ℚ)
  supportValue := (193708284625849 / 312500000000000 : ℚ)
  supportSlope := (-2053072349589513 / 500000000000000 : ℚ)
  oldCenter := (193708284625849 / 312500000000000 : ℚ)
  oldLo := (12390000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1450]
}

def cell_8859 : Cell := { cellDefaults with
  domain := ⟨(8973437500000001 / 25000000000000000 : ℚ), (8975000000000001 / 25000000000000000 : ℚ)⟩
  center := (8974218750000001 / 25000000000000000 : ℚ)
  supportValue := (3098049796758587 / 5000000000000000 : ℚ)
  supportSlope := (-8207064115318019 / 2000000000000000 : ℚ)
  oldCenter := (3098049796758587 / 5000000000000000 : ℚ)
  oldLo := (61899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1449, piece_1450]
}

def cell_8860 : Cell := { cellDefaults with
  domain := ⟨(8975000000000001 / 25000000000000000 : ℚ), (8976562500000001 / 25000000000000000 : ℚ)⟩
  r := (18448331397001 / 25000000000000 : ℚ)
  w := (255619004921 / 156250000000 : ℚ)
  center := (8975781250000001 / 25000000000000000 : ℚ)
  supportValue := (6204019455336189 / 10000000000000000 : ℚ)
  supportSlope := (-4108362037545277 / 1000000000000000 : ℚ)
  oldCenter := (6204019455336189 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_882
  oldLo := (31 / 50 : ℚ)
  oldHi := (621 / 1000 : ℚ)
  oldPieces := [piece_1451, piece_1452]
}

def cell_8861 : Cell := { cellDefaults with
  domain := ⟨(8976562500000001 / 25000000000000000 : ℚ), (8978125000000001 / 25000000000000000 : ℚ)⟩
  r := (18448331397001 / 25000000000000 : ℚ)
  w := (255619004921 / 156250000000 : ℚ)
  center := (8977343750000001 / 25000000000000000 : ℚ)
  supportValue := (6201452521518341 / 10000000000000000 : ℚ)
  supportSlope := (-2052885976000951 / 500000000000000 : ℚ)
  oldCenter := (6201452521518341 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_882
  oldLo := (31 / 50 : ℚ)
  oldHi := (12410000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1451]
}

def cell_8862 : Cell := { cellDefaults with
  domain := ⟨(8978125000000001 / 25000000000000000 : ℚ), (8979687500000001 / 25000000000000000 : ℚ)⟩
  r := (18448331397001 / 25000000000000 : ℚ)
  w := (255619004921 / 156250000000 : ℚ)
  center := (8978906250000001 / 25000000000000000 : ℚ)
  supportValue := (6198887117322287 / 10000000000000000 : ℚ)
  supportSlope := (-4103548367293541 / 1000000000000000 : ℚ)
  oldCenter := (6198887117322287 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_882
  oldLo := (12390000000000001 / 20000000000000000 : ℚ)
  oldHi := (12410000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1450, piece_1451]
}

def cell_8863 : Cell := { cellDefaults with
  domain := ⟨(8979687500000001 / 25000000000000000 : ℚ), (8981250000000001 / 25000000000000000 : ℚ)⟩
  r := (18448331397001 / 25000000000000 : ℚ)
  w := (255619004921 / 156250000000 : ℚ)
  center := (8980468750000001 / 25000000000000000 : ℚ)
  supportValue := (96817550086753 / 156250000000000 : ℚ)
  supportSlope := (-1025234571139677 / 250000000000000 : ℚ)
  oldCenter := (96817550086753 / 156250000000000 : ℚ)
  newCoefficients := coefficients_882
  oldLo := (12390000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1450]
}

def cell_8864 : Cell := { cellDefaults with
  domain := ⟨(8981250000000001 / 25000000000000000 : ℚ), (8982812500000001 / 25000000000000000 : ℚ)⟩
  r := (18448331397001 / 25000000000000 : ℚ)
  w := (255619004921 / 156250000000 : ℚ)
  center := (8982031250000001 / 25000000000000000 : ℚ)
  supportValue := (3096880403744957 / 5000000000000000 : ℚ)
  supportSlope := (-8197480352542641 / 2000000000000000 : ℚ)
  oldCenter := (3096880403744957 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_882
  oldLo := (61899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1449, piece_1450]
}

def cell_8865 : Cell := { cellDefaults with
  domain := ⟨(8982812500000001 / 25000000000000000 : ℚ), (8984375000000001 / 25000000000000000 : ℚ)⟩
  r := (18448331397001 / 25000000000000 : ℚ)
  w := (255619004921 / 156250000000 : ℚ)
  center := (8983593750000001 / 25000000000000000 : ℚ)
  supportValue := (77389998921641 / 125000000000000 : ℚ)
  supportSlope := (-1024031336736897 / 250000000000000 : ℚ)
  oldCenter := (77389998921641 / 125000000000000 : ℚ)
  newCoefficients := coefficients_882
  oldLo := (12370000000000001 / 20000000000000000 : ℚ)
  oldHi := (12390000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1448, piece_1449]
}

def cell_8866 : Cell := { cellDefaults with
  domain := ⟨(8984375000000001 / 25000000000000000 : ℚ), (8985937500000001 / 25000000000000000 : ℚ)⟩
  r := (18448331397001 / 25000000000000 : ℚ)
  w := (255619004921 / 156250000000 : ℚ)
  center := (8985156250000001 / 25000000000000000 : ℚ)
  supportValue := (3094320259183563 / 5000000000000000 : ℚ)
  supportSlope := (-204696161289597 / 50000000000000 : ℚ)
  oldCenter := (3094320259183563 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_882
  oldLo := (12370000000000001 / 20000000000000000 : ℚ)
  oldHi := (61899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1448]
}

def cell_8867 : Cell := { cellDefaults with
  domain := ⟨(8985937500000001 / 25000000000000000 : ℚ), (8987500000000001 / 25000000000000000 : ℚ)⟩
  r := (18448331397001 / 25000000000000 : ℚ)
  w := (255619004921 / 156250000000 : ℚ)
  center := (8986718750000001 / 25000000000000000 : ℚ)
  supportValue := (1546520659643149 / 2500000000000000 : ℚ)
  supportSlope := (-4091324849259337 / 1000000000000000 : ℚ)
  oldCenter := (1546520659643149 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_882
  oldLo := (1545949720670391 / 2500000000000000 : ℚ)
  oldHi := (61899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1447, piece_1448]
}

def cell_8868 : Cell := { cellDefaults with
  domain := ⟨(8987500000000001 / 25000000000000000 : ℚ), (8989062500000001 / 25000000000000000 : ℚ)⟩
  r := (36870932502517 / 50000000000000 : ℚ)
  w := (8175818473587 / 5000000000000 : ℚ)
  center := (8988281250000001 / 25000000000000000 : ℚ)
  supportValue := (3096990319779823 / 5000000000000000 : ℚ)
  supportSlope := (-4096134490996661 / 1000000000000000 : ℚ)
  oldCenter := (3096990319779823 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_883
  oldLo := (61899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1449, piece_1450]
}

def cell_8869 : Cell := { cellDefaults with
  domain := ⟨(8989062500000001 / 25000000000000000 : ℚ), (8990625000000001 / 25000000000000000 : ℚ)⟩
  r := (36870932502517 / 50000000000000 : ℚ)
  w := (8175818473587 / 5000000000000 : ℚ)
  center := (8989843750000001 / 25000000000000000 : ℚ)
  supportValue := (619142134883469 / 1000000000000000 : ℚ)
  supportSlope := (-8187097756334083 / 2000000000000000 : ℚ)
  oldCenter := (619142134883469 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_883
  oldLo := (61899999999999999 / 100000000000000000 : ℚ)
  oldHi := (12390000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1449]
}

def cell_8870 : Cell := { cellDefaults with
  domain := ⟨(8990625000000001 / 25000000000000000 : ℚ), (8992187500000001 / 25000000000000000 : ℚ)⟩
  r := (36870932502517 / 50000000000000 : ℚ)
  w := (8175818473587 / 5000000000000 : ℚ)
  center := (8991406250000001 / 25000000000000000 : ℚ)
  supportValue := (247554543098731 / 400000000000000 : ℚ)
  supportSlope := (-2045670846900549 / 500000000000000 : ℚ)
  oldCenter := (247554543098731 / 400000000000000 : ℚ)
  newCoefficients := coefficients_883
  oldLo := (12370000000000001 / 20000000000000000 : ℚ)
  oldHi := (12390000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1448, piece_1449]
}

def cell_8871 : Cell := { cellDefaults with
  domain := ⟨(8992187500000001 / 25000000000000000 : ℚ), (8993750000000001 / 25000000000000000 : ℚ)⟩
  r := (36870932502517 / 50000000000000 : ℚ)
  w := (8175818473587 / 5000000000000 : ℚ)
  center := (8992968750000001 / 25000000000000000 : ℚ)
  supportValue := (1546576823537309 / 2500000000000000 : ℚ)
  supportSlope := (-20443693030021137 / 5000000000000000 : ℚ)
  oldCenter := (1546576823537309 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_883
  oldLo := (12370000000000001 / 20000000000000000 : ℚ)
  oldHi := (61899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1448]
}

def cell_8872 : Cell := { cellDefaults with
  domain := ⟨(8993750000000001 / 25000000000000000 : ℚ), (8995312500000001 / 25000000000000000 : ℚ)⟩
  r := (36870932502517 / 50000000000000 : ℚ)
  w := (8175818473587 / 5000000000000 : ℚ)
  center := (8994531250000001 / 25000000000000000 : ℚ)
  supportValue := (3091876257954297 / 5000000000000000 : ℚ)
  supportSlope := (-20432768750549 / 5000000000000 : ℚ)
  oldCenter := (3091876257954297 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_883
  oldLo := (61799999999999999 / 100000000000000000 : ℚ)
  oldHi := (61899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1446, piece_1447, piece_1448]
}

def cell_8873 : Cell := { cellDefaults with
  domain := ⟨(8995312500000001 / 25000000000000000 : ℚ), (8996875000000001 / 25000000000000000 : ℚ)⟩
  r := (36870932502517 / 50000000000000 : ℚ)
  w := (8175818473587 / 5000000000000 : ℚ)
  center := (8996093750000001 / 25000000000000000 : ℚ)
  supportValue := (49449593893727 / 80000000000000 : ℚ)
  supportSlope := (-4083947319763581 / 1000000000000000 : ℚ)
  oldCenter := (49449593893727 / 80000000000000 : ℚ)
  newCoefficients := coefficients_883
  oldLo := (12350000000000001 / 20000000000000000 : ℚ)
  oldHi := (1545949720670391 / 2500000000000000 : ℚ)
  oldPieces := [piece_1445, piece_1446]
}

def cell_8874 : Cell := { cellDefaults with
  domain := ⟨(8996875000000001 / 25000000000000000 : ℚ), (8998437500000001 / 25000000000000000 : ℚ)⟩
  r := (36870932502517 / 50000000000000 : ℚ)
  w := (8175818473587 / 5000000000000 : ℚ)
  center := (8997656250000001 / 25000000000000000 : ℚ)
  supportValue := (617864744895247 / 1000000000000000 : ℚ)
  supportSlope := (-408175745899797 / 100000000000000 : ℚ)
  oldCenter := (617864744895247 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_883
  oldLo := (12350000000000001 / 20000000000000000 : ℚ)
  oldHi := (61799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1445]
}

def cell_8875 : Cell := { cellDefaults with
  domain := ⟨(8998437500000001 / 25000000000000000 : ℚ), (9000000000000001 / 25000000000000000 : ℚ)⟩
  r := (36870932502517 / 50000000000000 : ℚ)
  w := (8175818473587 / 5000000000000 : ℚ)
  center := (8999218750000001 / 25000000000000000 : ℚ)
  supportValue := (24125379566917 / 39062500000000 : ℚ)
  supportSlope := (-1019791900482403 / 250000000000000 : ℚ)
  oldCenter := (24125379566917 / 39062500000000 : ℚ)
  newCoefficients := coefficients_883
  oldLo := (61699999999999999 / 100000000000000000 : ℚ)
  oldHi := (61799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1444, piece_1445]
}

def cell_8876 : Cell := { cellDefaults with
  domain := ⟨(9000000000000001 / 25000000000000000 : ℚ), (9001562500000001 / 25000000000000000 : ℚ)⟩
  r := (36845241928161 / 50000000000000 : ℚ)
  w := (16343675018939 / 10000000000000 : ℚ)
  center := (9000781250000001 / 25000000000000000 : ℚ)
  supportValue := (3091986899083401 / 5000000000000000 : ℚ)
  supportSlope := (-4083958368845231 / 1000000000000000 : ℚ)
  oldCenter := (3091986899083401 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_884
  oldLo := (61799999999999999 / 100000000000000000 : ℚ)
  oldHi := (61899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1446, piece_1447, piece_1448]
}

def cell_8877 : Cell := { cellDefaults with
  domain := ⟨(9001562500000001 / 25000000000000000 : ℚ), (9003125000000001 / 25000000000000000 : ℚ)⟩
  r := (36845241928161 / 50000000000000 : ℚ)
  w := (16343675018939 / 10000000000000 : ℚ)
  center := (9002343750000001 / 25000000000000000 : ℚ)
  supportValue := (6181422115343101 / 10000000000000000 : ℚ)
  supportSlope := (-4081381935449713 / 1000000000000000 : ℚ)
  oldCenter := (6181422115343101 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_884
  oldLo := (61799999999999999 / 100000000000000000 : ℚ)
  oldHi := (1545949720670391 / 2500000000000000 : ℚ)
  oldPieces := [piece_1446]
}

def cell_8878 : Cell := { cellDefaults with
  domain := ⟨(9003125000000001 / 25000000000000000 : ℚ), (9004687500000001 / 25000000000000000 : ℚ)⟩
  r := (36845241928161 / 50000000000000 : ℚ)
  w := (16343675018939 / 10000000000000 : ℚ)
  center := (9003906250000001 / 25000000000000000 : ℚ)
  supportValue := (1544717986300889 / 2500000000000000 : ℚ)
  supportSlope := (-4079185621453263 / 1000000000000000 : ℚ)
  oldCenter := (1544717986300889 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_884
  oldLo := (12350000000000001 / 20000000000000000 : ℚ)
  oldHi := (1545949720670391 / 2500000000000000 : ℚ)
  oldPieces := [piece_1445, piece_1446]
}

def cell_8879 : Cell := { cellDefaults with
  domain := ⟨(9004687500000001 / 25000000000000000 : ℚ), (9006250000000001 / 25000000000000000 : ℚ)⟩
  r := (36845241928161 / 50000000000000 : ℚ)
  w := (16343675018939 / 10000000000000 : ℚ)
  center := (9005468750000001 / 25000000000000000 : ℚ)
  supportValue := (3088161627623357 / 5000000000000000 : ℚ)
  supportSlope := (-12739359503533 / 3125000000000 : ℚ)
  oldCenter := (3088161627623357 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_884
  oldLo := (12350000000000001 / 20000000000000000 : ℚ)
  oldHi := (61799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1445]
}

def cell_8880 : Cell := { cellDefaults with
  domain := ⟨(9006250000000001 / 25000000000000000 : ℚ), (9007812500000001 / 25000000000000000 : ℚ)⟩
  r := (36845241928161 / 50000000000000 : ℚ)
  w := (16343675018939 / 10000000000000 : ℚ)
  center := (9007031250000001 / 25000000000000000 : ℚ)
  supportValue := (771722008154677 / 1250000000000000 : ℚ)
  supportSlope := (-814883807244371 / 200000000000000 : ℚ)
  oldCenter := (771722008154677 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_884
  oldLo := (61699999999999999 / 100000000000000000 : ℚ)
  oldHi := (61799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1444, piece_1445]
}

def cell_8881 : Cell := { cellDefaults with
  domain := ⟨(9007812500000001 / 25000000000000000 : ℚ), (9009375000000001 / 25000000000000000 : ℚ)⟩
  r := (36845241928161 / 50000000000000 : ℚ)
  w := (16343675018939 / 10000000000000 : ℚ)
  center := (9008593750000001 / 25000000000000000 : ℚ)
  supportValue := (6171230364071487 / 10000000000000000 : ℚ)
  supportSlope := (-4071822220460319 / 1000000000000000 : ℚ)
  oldCenter := (6171230364071487 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_884
  oldLo := (12330000000000001 / 20000000000000000 : ℚ)
  oldHi := (12350000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1443, piece_1444]
}

def cell_8882 : Cell := { cellDefaults with
  domain := ⟨(9009375000000001 / 25000000000000000 : ℚ), (9010937500000001 / 25000000000000000 : ℚ)⟩
  r := (36845241928161 / 50000000000000 : ℚ)
  w := (16343675018939 / 10000000000000 : ℚ)
  center := (9010156250000001 / 25000000000000000 : ℚ)
  supportValue := (3084343075412567 / 5000000000000000 : ℚ)
  supportSlope := (-2034825086710157 / 500000000000000 : ℚ)
  oldCenter := (3084343075412567 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_884
  oldLo := (12330000000000001 / 20000000000000000 : ℚ)
  oldHi := (61699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1443]
}

def cell_8883 : Cell := { cellDefaults with
  domain := ⟨(9010937500000001 / 25000000000000000 : ℚ), (9012500000000001 / 25000000000000000 : ℚ)⟩
  r := (36845241928161 / 50000000000000 : ℚ)
  w := (16343675018939 / 10000000000000 : ℚ)
  center := (9011718750000001 / 25000000000000000 : ℚ)
  supportValue := (1233228686890307 / 2000000000000000 : ℚ)
  supportSlope := (-4067063157975781 / 1000000000000000 : ℚ)
  oldCenter := (1233228686890307 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_884
  oldHi := (61699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1442, piece_1443]
}

def cell_8884 : Cell := { cellDefaults with
  domain := ⟨(9012500000000001 / 25000000000000000 : ℚ), (9014062500000001 / 25000000000000000 : ℚ)⟩
  r := (9204898007941 / 12500000000000 : ℚ)
  w := (8167865138389 / 5000000000000 : ℚ)
  center := (9013281250000001 / 25000000000000000 : ℚ)
  supportValue := (385874910590081 / 625000000000000 : ℚ)
  supportSlope := (-50897917157533 / 12500000000000 : ℚ)
  oldCenter := (385874910590081 / 625000000000000 : ℚ)
  newCoefficients := coefficients_885
  oldLo := (61699999999999999 / 100000000000000000 : ℚ)
  oldHi := (61799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1444, piece_1445]
}

def cell_8885 : Cell := { cellDefaults with
  domain := ⟨(9014062500000001 / 25000000000000000 : ℚ), (9015625000000001 / 25000000000000000 : ℚ)⟩
  r := (9204898007941 / 12500000000000 : ℚ)
  w := (8167865138389 / 5000000000000 : ℚ)
  center := (9014843750000001 / 25000000000000000 : ℚ)
  supportValue := (6171454458347323 / 10000000000000000 : ℚ)
  supportSlope := (-813854615928733 / 200000000000000 : ℚ)
  oldCenter := (6171454458347323 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_885
  oldLo := (61699999999999999 / 100000000000000000 : ℚ)
  oldHi := (12350000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1444]
}

def cell_8886 : Cell := { cellDefaults with
  domain := ⟨(9015625000000001 / 25000000000000000 : ℚ), (9017187500000001 / 25000000000000000 : ℚ)⟩
  r := (9204898007941 / 12500000000000 : ℚ)
  w := (8167865138389 / 5000000000000 : ℚ)
  center := (9016406250000001 / 25000000000000000 : ℚ)
  supportValue := (6168911856589019 / 10000000000000000 : ℚ)
  supportSlope := (-5083852584713 / 1250000000000 : ℚ)
  oldCenter := (6168911856589019 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_885
  oldLo := (12330000000000001 / 20000000000000000 : ℚ)
  oldHi := (12350000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1443, piece_1444]
}

def cell_8887 : Cell := { cellDefaults with
  domain := ⟨(9017187500000001 / 25000000000000000 : ℚ), (9018750000000001 / 25000000000000000 : ℚ)⟩
  r := (9204898007941 / 12500000000000 : ℚ)
  w := (8167865138389 / 5000000000000 : ℚ)
  center := (9017968750000001 / 25000000000000000 : ℚ)
  supportValue := (3083185361864561 / 5000000000000000 : ℚ)
  supportSlope := (-4064509458590493 / 1000000000000000 : ℚ)
  oldCenter := (3083185361864561 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_885
  oldLo := (12330000000000001 / 20000000000000000 : ℚ)
  oldHi := (61699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1443]
}

def cell_8888 : Cell := { cellDefaults with
  domain := ⟨(9018750000000001 / 25000000000000000 : ℚ), (9020312500000001 / 25000000000000000 : ℚ)⟩
  r := (9204898007941 / 12500000000000 : ℚ)
  w := (8167865138389 / 5000000000000 : ℚ)
  center := (9019531250000001 / 25000000000000000 : ℚ)
  supportValue := (3081915544599241 / 5000000000000000 : ℚ)
  supportSlope := (-2031168070008249 / 500000000000000 : ℚ)
  oldCenter := (3081915544599241 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_885
  oldHi := (61699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1442, piece_1443]
}

def cell_8889 : Cell := { cellDefaults with
  domain := ⟨(9020312500000001 / 25000000000000000 : ℚ), (9021875000000001 / 25000000000000000 : ℚ)⟩
  r := (9204898007941 / 12500000000000 : ℚ)
  w := (8167865138389 / 5000000000000 : ℚ)
  center := (9021093750000001 / 25000000000000000 : ℚ)
  supportValue := (1540323232647167 / 2500000000000000 : ℚ)
  supportSlope := (-4059752212182133 / 1000000000000000 : ℚ)
  oldCenter := (1540323232647167 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_885
  oldHi := (12330000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1442]
}

def cell_8890 : Cell := { cellDefaults with
  domain := ⟨(9021875000000001 / 25000000000000000 : ℚ), (9023437500000001 / 25000000000000000 : ℚ)⟩
  r := (9204898007941 / 12500000000000 : ℚ)
  w := (8167865138389 / 5000000000000 : ℚ)
  center := (9022656250000001 / 25000000000000000 : ℚ)
  supportValue := (1231751251985447 / 2000000000000000 : ℚ)
  supportSlope := (-811519117007009 / 200000000000000 : ℚ)
  oldCenter := (1231751251985447 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_885
  oldLo := (12310000000000001 / 20000000000000000 : ℚ)
  oldHi := (12330000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1441, piece_1442]
}

def cell_8891 : Cell := { cellDefaults with
  domain := ⟨(9023437500000001 / 25000000000000000 : ℚ), (9025000000000001 / 25000000000000000 : ℚ)⟩
  r := (9204898007941 / 12500000000000 : ℚ)
  w := (8167865138389 / 5000000000000 : ℚ)
  center := (9024218750000001 / 25000000000000000 : ℚ)
  supportValue := (6156221071584287 / 10000000000000000 : ℚ)
  supportSlope := (-4055009771221307 / 1000000000000000 : ℚ)
  oldCenter := (6156221071584287 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_885
  oldLo := (61499999999999999 / 100000000000000000 : ℚ)
  oldHi := (61599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1440, piece_1441]
}

def cell_8892 : Cell := { cellDefaults with
  domain := ⟨(9025000000000001 / 25000000000000000 : ℚ), (9026562500000001 / 25000000000000000 : ℚ)⟩
  r := (73587963537367 / 100000000000000 : ℚ)
  w := (4081950843371 / 2500000000000 : ℚ)
  center := (9025781250000001 / 25000000000000000 : ℚ)
  supportValue := (6164054766869279 / 10000000000000000 : ℚ)
  supportSlope := (-202988011232641 / 50000000000000 : ℚ)
  oldCenter := (6164054766869279 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_886
  oldHi := (61699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1442, piece_1443]
}

def cell_8893 : Cell := { cellDefaults with
  domain := ⟨(9026562500000001 / 25000000000000000 : ℚ), (9028125000000001 / 25000000000000000 : ℚ)⟩
  r := (73587963537367 / 100000000000000 : ℚ)
  w := (4081950843371 / 2500000000000 : ℚ)
  center := (9027343750000001 / 25000000000000000 : ℚ)
  supportValue := (6161518192026189 / 10000000000000000 : ℚ)
  supportSlope := (-405722084121507 / 100000000000000 : ℚ)
  oldCenter := (6161518192026189 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_886
  oldHi := (12330000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1442]
}

def cell_8894 : Cell := { cellDefaults with
  domain := ⟨(9028125000000001 / 25000000000000000 : ℚ), (9029687500000001 / 25000000000000000 : ℚ)⟩
  r := (73587963537367 / 100000000000000 : ℚ)
  w := (4081950843371 / 2500000000000 : ℚ)
  center := (9028906250000001 / 25000000000000000 : ℚ)
  supportValue := (6158983126760971 / 10000000000000000 : ℚ)
  supportSlope := (-2027514772210637 / 500000000000000 : ℚ)
  oldCenter := (6158983126760971 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_886
  oldLo := (12310000000000001 / 20000000000000000 : ℚ)
  oldHi := (12330000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1441, piece_1442]
}

def cell_8895 : Cell := { cellDefaults with
  domain := ⟨(9029687500000001 / 25000000000000000 : ℚ), (9031250000000001 / 25000000000000000 : ℚ)⟩
  r := (73587963537367 / 100000000000000 : ℚ)
  w := (4081950843371 / 2500000000000 : ℚ)
  center := (9030468750000001 / 25000000000000000 : ℚ)
  supportValue := (6156449515626989 / 10000000000000000 : ℚ)
  supportSlope := (-4052480454589613 / 1000000000000000 : ℚ)
  oldCenter := (6156449515626989 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_886
  oldLo := (12310000000000001 / 20000000000000000 : ℚ)
  oldHi := (61599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1441]
}

def cell_8896 : Cell := { cellDefaults with
  domain := ⟨(9031250000000001 / 25000000000000000 : ℚ), (9032812500000001 / 25000000000000000 : ℚ)⟩
  r := (73587963537367 / 100000000000000 : ℚ)
  w := (4081950843371 / 2500000000000 : ℚ)
  center := (9032031250000001 / 25000000000000000 : ℚ)
  supportValue := (6153917404713453 / 10000000000000000 : ℚ)
  supportSlope := (-2025152106398309 / 500000000000000 : ℚ)
  oldCenter := (6153917404713453 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_886
  oldLo := (61499999999999999 / 100000000000000000 : ℚ)
  oldHi := (61599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1440, piece_1441]
}

def cell_8897 : Cell := { cellDefaults with
  domain := ⟨(9032812500000001 / 25000000000000000 : ℚ), (9034375000000001 / 25000000000000000 : ℚ)⟩
  r := (73587963537367 / 100000000000000 : ℚ)
  w := (4081950843371 / 2500000000000 : ℚ)
  center := (9033593750000001 / 25000000000000000 : ℚ)
  supportValue := (3075693376659279 / 5000000000000000 : ℚ)
  supportSlope := (-252984151211999 / 62500000000000 : ℚ)
  oldCenter := (3075693376659279 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_886
  oldLo := (61499999999999999 / 100000000000000000 : ℚ)
  oldHi := (12310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1440]
}

def cell_8898 : Cell := { cellDefaults with
  domain := ⟨(9034375000000001 / 25000000000000000 : ℚ), (9035937500000001 / 25000000000000000 : ℚ)⟩
  r := (73587963537367 / 100000000000000 : ℚ)
  w := (4081950843371 / 2500000000000 : ℚ)
  center := (9035156250000001 / 25000000000000000 : ℚ)
  supportValue := (2459543037367 / 4000000000000 : ℚ)
  supportSlope := (-2022792111723959 / 500000000000000 : ℚ)
  oldCenter := (2459543037367 / 4000000000000 : ℚ)
  newCoefficients := coefficients_886
  oldLo := (12290000000000001 / 20000000000000000 : ℚ)
  oldHi := (12310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1439, piece_1440]
}

def cell_8899 : Cell := { cellDefaults with
  domain := ⟨(9035937500000001 / 25000000000000000 : ℚ), (9037500000000001 / 25000000000000000 : ℚ)⟩
  r := (73587963537367 / 100000000000000 : ℚ)
  w := (4081950843371 / 2500000000000 : ℚ)
  center := (9036718750000001 / 25000000000000000 : ℚ)
  supportValue := (245853195911707 / 400000000000000 : ℚ)
  supportSlope := (-4043018734972037 / 1000000000000000 : ℚ)
  oldCenter := (245853195911707 / 400000000000000 : ℚ)
  newCoefficients := coefficients_886
  oldLo := (12290000000000001 / 20000000000000000 : ℚ)
  oldHi := (61499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1439]
}

theorem check_8850 : cell_8850.check = true := by
  decide +kernel

theorem check_8851 : cell_8851.check = true := by
  decide +kernel

theorem check_8852 : cell_8852.check = true := by
  decide +kernel

theorem check_8853 : cell_8853.check = true := by
  decide +kernel

theorem check_8854 : cell_8854.check = true := by
  decide +kernel

theorem check_8855 : cell_8855.check = true := by
  decide +kernel

theorem check_8856 : cell_8856.check = true := by
  decide +kernel

theorem check_8857 : cell_8857.check = true := by
  decide +kernel

theorem check_8858 : cell_8858.check = true := by
  decide +kernel

theorem check_8859 : cell_8859.check = true := by
  decide +kernel

theorem check_8860 : cell_8860.check = true := by
  decide +kernel

theorem check_8861 : cell_8861.check = true := by
  decide +kernel

theorem check_8862 : cell_8862.check = true := by
  decide +kernel

theorem check_8863 : cell_8863.check = true := by
  decide +kernel

theorem check_8864 : cell_8864.check = true := by
  decide +kernel

theorem check_8865 : cell_8865.check = true := by
  decide +kernel

theorem check_8866 : cell_8866.check = true := by
  decide +kernel

theorem check_8867 : cell_8867.check = true := by
  decide +kernel

theorem check_8868 : cell_8868.check = true := by
  decide +kernel

theorem check_8869 : cell_8869.check = true := by
  decide +kernel

theorem check_8870 : cell_8870.check = true := by
  decide +kernel

theorem check_8871 : cell_8871.check = true := by
  decide +kernel

theorem check_8872 : cell_8872.check = true := by
  decide +kernel

theorem check_8873 : cell_8873.check = true := by
  decide +kernel

theorem check_8874 : cell_8874.check = true := by
  decide +kernel

theorem check_8875 : cell_8875.check = true := by
  decide +kernel

theorem check_8876 : cell_8876.check = true := by
  decide +kernel

theorem check_8877 : cell_8877.check = true := by
  decide +kernel

theorem check_8878 : cell_8878.check = true := by
  decide +kernel

theorem check_8879 : cell_8879.check = true := by
  decide +kernel

theorem check_8880 : cell_8880.check = true := by
  decide +kernel

theorem check_8881 : cell_8881.check = true := by
  decide +kernel

theorem check_8882 : cell_8882.check = true := by
  decide +kernel

theorem check_8883 : cell_8883.check = true := by
  decide +kernel

theorem check_8884 : cell_8884.check = true := by
  decide +kernel

theorem check_8885 : cell_8885.check = true := by
  decide +kernel

theorem check_8886 : cell_8886.check = true := by
  decide +kernel

theorem check_8887 : cell_8887.check = true := by
  decide +kernel

theorem check_8888 : cell_8888.check = true := by
  decide +kernel

theorem check_8889 : cell_8889.check = true := by
  decide +kernel

theorem check_8890 : cell_8890.check = true := by
  decide +kernel

theorem check_8891 : cell_8891.check = true := by
  decide +kernel

theorem check_8892 : cell_8892.check = true := by
  decide +kernel

theorem check_8893 : cell_8893.check = true := by
  decide +kernel

theorem check_8894 : cell_8894.check = true := by
  decide +kernel

theorem check_8895 : cell_8895.check = true := by
  decide +kernel

theorem check_8896 : cell_8896.check = true := by
  decide +kernel

theorem check_8897 : cell_8897.check = true := by
  decide +kernel

theorem check_8898 : cell_8898.check = true := by
  decide +kernel

theorem check_8899 : cell_8899.check = true := by
  decide +kernel

def cells : List Cell := [cell_8850, cell_8851, cell_8852, cell_8853, cell_8854, cell_8855, cell_8856, cell_8857, cell_8858, cell_8859, cell_8860, cell_8861, cell_8862, cell_8863, cell_8864, cell_8865, cell_8866, cell_8867, cell_8868, cell_8869, cell_8870, cell_8871, cell_8872, cell_8873, cell_8874, cell_8875, cell_8876, cell_8877, cell_8878, cell_8879, cell_8880, cell_8881, cell_8882, cell_8883, cell_8884, cell_8885, cell_8886, cell_8887, cell_8888, cell_8889, cell_8890, cell_8891, cell_8892, cell_8893, cell_8894, cell_8895, cell_8896, cell_8897, cell_8898, cell_8899]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8850, check_8851, check_8852, check_8853, check_8854, check_8855, check_8856, check_8857, check_8858, check_8859, check_8860, check_8861, check_8862, check_8863, check_8864, check_8865, check_8866, check_8867, check_8868, check_8869, check_8870, check_8871, check_8872, check_8873, check_8874, check_8875, check_8876, check_8877, check_8878, check_8879, check_8880, check_8881, check_8882, check_8883, check_8884, check_8885, check_8886, check_8887, check_8888, check_8889, check_8890, check_8891, check_8892, check_8893, check_8894, check_8895, check_8896, check_8897, check_8898, check_8899, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0177

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0177
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0177
open AnalyticBounds.ExpressionCertificate

theorem linked_8850 : Linked cell_8850 pieces := by
  link_source cell_8850 with piece_879 using piece_879_mem, ⟨piece_1452_mem, piece_1453_mem⟩

theorem linked_8851 : Linked cell_8851 pieces := by
  link_source cell_8851 with piece_880 using piece_880_mem, ⟨piece_1451_mem, piece_1452_mem⟩

theorem linked_8852 : Linked cell_8852 pieces := by
  link_source cell_8852 with piece_881 using piece_881_mem, ⟨piece_1453_mem, piece_1454_mem⟩

theorem linked_8853 : Linked cell_8853 pieces := by
  link_source cell_8853 with piece_881 using piece_881_mem, piece_1453_mem

theorem linked_8854 : Linked cell_8854 pieces := by
  link_source cell_8854 with piece_881 using piece_881_mem, ⟨piece_1452_mem, piece_1453_mem⟩

theorem linked_8855 : Linked cell_8855 pieces := by
  link_source cell_8855 with piece_881 using piece_881_mem, piece_1452_mem

theorem linked_8856 : Linked cell_8856 pieces := by
  link_source cell_8856 with piece_881 using piece_881_mem, ⟨piece_1451_mem, piece_1452_mem⟩

theorem linked_8857 : Linked cell_8857 pieces := by
  link_source cell_8857 with piece_881 using piece_881_mem, ⟨piece_1450_mem, piece_1451_mem⟩

theorem linked_8858 : Linked cell_8858 pieces := by
  link_source cell_8858 with piece_881 using piece_881_mem, piece_1450_mem

theorem linked_8859 : Linked cell_8859 pieces := by
  link_source cell_8859 with piece_881 using piece_881_mem, ⟨piece_1449_mem, piece_1450_mem⟩

theorem linked_8860 : Linked cell_8860 pieces := by
  link_source cell_8860 with piece_882 using piece_882_mem, ⟨piece_1451_mem, piece_1452_mem⟩

theorem linked_8861 : Linked cell_8861 pieces := by
  link_source cell_8861 with piece_882 using piece_882_mem, piece_1451_mem

theorem linked_8862 : Linked cell_8862 pieces := by
  link_source cell_8862 with piece_882 using piece_882_mem, ⟨piece_1450_mem, piece_1451_mem⟩

theorem linked_8863 : Linked cell_8863 pieces := by
  link_source cell_8863 with piece_882 using piece_882_mem, piece_1450_mem

theorem linked_8864 : Linked cell_8864 pieces := by
  link_source cell_8864 with piece_882 using piece_882_mem, ⟨piece_1449_mem, piece_1450_mem⟩

theorem linked_8865 : Linked cell_8865 pieces := by
  link_source cell_8865 with piece_882 using piece_882_mem, ⟨piece_1448_mem, piece_1449_mem⟩

theorem linked_8866 : Linked cell_8866 pieces := by
  link_source cell_8866 with piece_882 using piece_882_mem, piece_1448_mem

theorem linked_8867 : Linked cell_8867 pieces := by
  link_source cell_8867 with piece_882 using piece_882_mem, ⟨piece_1447_mem, piece_1448_mem⟩

theorem linked_8868 : Linked cell_8868 pieces := by
  link_source cell_8868 with piece_883 using piece_883_mem, ⟨piece_1449_mem, piece_1450_mem⟩

theorem linked_8869 : Linked cell_8869 pieces := by
  link_source cell_8869 with piece_883 using piece_883_mem, piece_1449_mem

theorem linked_8870 : Linked cell_8870 pieces := by
  link_source cell_8870 with piece_883 using piece_883_mem, ⟨piece_1448_mem, piece_1449_mem⟩

theorem linked_8871 : Linked cell_8871 pieces := by
  link_source cell_8871 with piece_883 using piece_883_mem, piece_1448_mem

theorem linked_8872 : Linked cell_8872 pieces := by
  link_source cell_8872 with piece_883 using piece_883_mem, ⟨piece_1446_mem, ⟨piece_1447_mem, piece_1448_mem⟩⟩

theorem linked_8873 : Linked cell_8873 pieces := by
  link_source cell_8873 with piece_883 using piece_883_mem, ⟨piece_1445_mem, piece_1446_mem⟩

theorem linked_8874 : Linked cell_8874 pieces := by
  link_source cell_8874 with piece_883 using piece_883_mem, piece_1445_mem

theorem linked_8875 : Linked cell_8875 pieces := by
  link_source cell_8875 with piece_883 using piece_883_mem, ⟨piece_1444_mem, piece_1445_mem⟩

theorem linked_8876 : Linked cell_8876 pieces := by
  link_source cell_8876 with piece_884 using piece_884_mem, ⟨piece_1446_mem, ⟨piece_1447_mem, piece_1448_mem⟩⟩

theorem linked_8877 : Linked cell_8877 pieces := by
  link_source cell_8877 with piece_884 using piece_884_mem, piece_1446_mem

theorem linked_8878 : Linked cell_8878 pieces := by
  link_source cell_8878 with piece_884 using piece_884_mem, ⟨piece_1445_mem, piece_1446_mem⟩

theorem linked_8879 : Linked cell_8879 pieces := by
  link_source cell_8879 with piece_884 using piece_884_mem, piece_1445_mem

theorem linked_8880 : Linked cell_8880 pieces := by
  link_source cell_8880 with piece_884 using piece_884_mem, ⟨piece_1444_mem, piece_1445_mem⟩

theorem linked_8881 : Linked cell_8881 pieces := by
  link_source cell_8881 with piece_884 using piece_884_mem, ⟨piece_1443_mem, piece_1444_mem⟩

theorem linked_8882 : Linked cell_8882 pieces := by
  link_source cell_8882 with piece_884 using piece_884_mem, piece_1443_mem

theorem linked_8883 : Linked cell_8883 pieces := by
  link_source cell_8883 with piece_884 using piece_884_mem, ⟨piece_1442_mem, piece_1443_mem⟩

theorem linked_8884 : Linked cell_8884 pieces := by
  link_source cell_8884 with piece_885 using piece_885_mem, ⟨piece_1444_mem, piece_1445_mem⟩

theorem linked_8885 : Linked cell_8885 pieces := by
  link_source cell_8885 with piece_885 using piece_885_mem, piece_1444_mem

theorem linked_8886 : Linked cell_8886 pieces := by
  link_source cell_8886 with piece_885 using piece_885_mem, ⟨piece_1443_mem, piece_1444_mem⟩

theorem linked_8887 : Linked cell_8887 pieces := by
  link_source cell_8887 with piece_885 using piece_885_mem, piece_1443_mem

theorem linked_8888 : Linked cell_8888 pieces := by
  link_source cell_8888 with piece_885 using piece_885_mem, ⟨piece_1442_mem, piece_1443_mem⟩

theorem linked_8889 : Linked cell_8889 pieces := by
  link_source cell_8889 with piece_885 using piece_885_mem, piece_1442_mem

theorem linked_8890 : Linked cell_8890 pieces := by
  link_source cell_8890 with piece_885 using piece_885_mem, ⟨piece_1441_mem, piece_1442_mem⟩

theorem linked_8891 : Linked cell_8891 pieces := by
  link_source cell_8891 with piece_885 using piece_885_mem, ⟨piece_1440_mem, piece_1441_mem⟩

theorem linked_8892 : Linked cell_8892 pieces := by
  link_source cell_8892 with piece_886 using piece_886_mem, ⟨piece_1442_mem, piece_1443_mem⟩

theorem linked_8893 : Linked cell_8893 pieces := by
  link_source cell_8893 with piece_886 using piece_886_mem, piece_1442_mem

theorem linked_8894 : Linked cell_8894 pieces := by
  link_source cell_8894 with piece_886 using piece_886_mem, ⟨piece_1441_mem, piece_1442_mem⟩

theorem linked_8895 : Linked cell_8895 pieces := by
  link_source cell_8895 with piece_886 using piece_886_mem, piece_1441_mem

theorem linked_8896 : Linked cell_8896 pieces := by
  link_source cell_8896 with piece_886 using piece_886_mem, ⟨piece_1440_mem, piece_1441_mem⟩

theorem linked_8897 : Linked cell_8897 pieces := by
  link_source cell_8897 with piece_886 using piece_886_mem, piece_1440_mem

theorem linked_8898 : Linked cell_8898 pieces := by
  link_source cell_8898 with piece_886 using piece_886_mem, ⟨piece_1439_mem, piece_1440_mem⟩

theorem linked_8899 : Linked cell_8899 pieces := by
  link_source cell_8899 with piece_886 using piece_886_mem, piece_1439_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0177.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0177.cells,List.forall_mem_cons]
  exact ⟨linked_8850, linked_8851, linked_8852, linked_8853, linked_8854, linked_8855, linked_8856, linked_8857, linked_8858, linked_8859, linked_8860, linked_8861, linked_8862, linked_8863, linked_8864, linked_8865, linked_8866, linked_8867, linked_8868, linked_8869, linked_8870, linked_8871, linked_8872, linked_8873, linked_8874, linked_8875, linked_8876, linked_8877, linked_8878, linked_8879, linked_8880, linked_8881, linked_8882, linked_8883, linked_8884, linked_8885, linked_8886, linked_8887, linked_8888, linked_8889, linked_8890, linked_8891, linked_8892, linked_8893, linked_8894, linked_8895, linked_8896, linked_8897, linked_8898, linked_8899, by simp⟩

theorem covered : covers (35834287709497207 / 100000000000000000 : ℚ) (9037500000000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0177.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0177
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0178
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(9037500000000001 / 25000000000000000 : ℚ), (9039062500000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (73333059560647 / 100000000000000 : ℚ)
  w := (3257686315479 / 2000000000000 : ℚ)
  center := (9038281250000001 / 25000000000000000 : ℚ)
  supportValue := (6154142019313443 / 10000000000000000 : ℚ)
  supportSlope := (-8095475700159227 / 2000000000000000 : ℚ)
  oldCenter := (6154142019313443 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_887
  oldLo := (15237500000000001 / 25000000000000000 : ℚ)
  oldHi := (60999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1428]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8900 : Cell := { cellDefaults with
  r := (73536824152919 / 100000000000000 : ℚ)
  w := (8159947047251 / 5000000000000 : ℚ)
  oldLo := (61499999999999999 / 100000000000000000 : ℚ)
  oldHi := (61599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1440, piece_1441]
}

def cell_8901 : Cell := { cellDefaults with
  domain := ⟨(9039062500000001 / 25000000000000000 : ℚ), (9040625000000001 / 25000000000000000 : ℚ)⟩
  r := (73536824152919 / 100000000000000 : ℚ)
  w := (8159947047251 / 5000000000000 : ℚ)
  center := (9039843750000001 / 25000000000000000 : ℚ)
  supportValue := (3075806472763521 / 5000000000000000 : ℚ)
  supportSlope := (-2022612450589989 / 500000000000000 : ℚ)
  oldCenter := (3075806472763521 / 5000000000000000 : ℚ)
  oldLo := (61499999999999999 / 100000000000000000 : ℚ)
  oldHi := (12310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1440]
}

def cell_8902 : Cell := { cellDefaults with
  domain := ⟨(9040625000000001 / 25000000000000000 : ℚ), (9042187500000001 / 25000000000000000 : ℚ)⟩
  r := (73536824152919 / 100000000000000 : ℚ)
  w := (8159947047251 / 5000000000000 : ℚ)
  center := (9041406250000001 / 25000000000000000 : ℚ)
  supportValue := (307454269252631 / 500000000000000 : ℚ)
  supportSlope := (-2021513866989011 / 500000000000000 : ℚ)
  oldCenter := (307454269252631 / 500000000000000 : ℚ)
  oldLo := (12290000000000001 / 20000000000000000 : ℚ)
  oldHi := (12310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1439, piece_1440]
}

def cell_8903 : Cell := { cellDefaults with
  domain := ⟨(9042187500000001 / 25000000000000000 : ℚ), (9043750000000001 / 25000000000000000 : ℚ)⟩
  r := (73536824152919 / 100000000000000 : ℚ)
  w := (8159947047251 / 5000000000000 : ℚ)
  center := (9042968750000001 / 25000000000000000 : ℚ)
  supportValue := (76831990755991 / 125000000000000 : ℚ)
  supportSlope := (-4040507702402607 / 1000000000000000 : ℚ)
  oldCenter := (76831990755991 / 125000000000000 : ℚ)
  oldLo := (12290000000000001 / 20000000000000000 : ℚ)
  oldHi := (61499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1439]
}

def cell_8904 : Cell := { cellDefaults with
  domain := ⟨(9043750000000001 / 25000000000000000 : ℚ), (9045312500000001 / 25000000000000000 : ℚ)⟩
  r := (73536824152919 / 100000000000000 : ℚ)
  w := (8159947047251 / 5000000000000 : ℚ)
  center := (9044531250000001 / 25000000000000000 : ℚ)
  supportValue := (6144034641518997 / 10000000000000000 : ℚ)
  supportSlope := (-807664587390633 / 200000000000000 : ℚ)
  oldCenter := (6144034641518997 / 10000000000000000 : ℚ)
  oldLo := (61399999999999999 / 100000000000000000 : ℚ)
  oldHi := (61499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1438, piece_1439]
}

def cell_8905 : Cell := { cellDefaults with
  domain := ⟨(9045312500000001 / 25000000000000000 : ℚ), (9046875000000001 / 25000000000000000 : ℚ)⟩
  r := (73536824152919 / 100000000000000 : ℚ)
  w := (8159947047251 / 5000000000000 : ℚ)
  center := (9046093750000001 / 25000000000000000 : ℚ)
  supportValue := (307075573110143 / 500000000000000 : ℚ)
  supportSlope := (-8071593664340071 / 2000000000000000 : ℚ)
  oldCenter := (307075573110143 / 500000000000000 : ℚ)
  oldLo := (61399999999999999 / 100000000000000000 : ℚ)
  oldHi := (12290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1438]
}

def cell_8906 : Cell := { cellDefaults with
  domain := ⟨(9046875000000001 / 25000000000000000 : ℚ), (9048437500000001 / 25000000000000000 : ℚ)⟩
  r := (73536824152919 / 100000000000000 : ℚ)
  w := (8159947047251 / 5000000000000 : ℚ)
  center := (9047656250000001 / 25000000000000000 : ℚ)
  supportValue := (6138989781430229 / 10000000000000000 : ℚ)
  supportSlope := (-1008405865530193 / 250000000000000 : ℚ)
  oldCenter := (6138989781430229 / 10000000000000000 : ℚ)
  oldLo := (12270000000000001 / 20000000000000000 : ℚ)
  oldHi := (12290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1437, piece_1438]
}

def cell_8907 : Cell := { cellDefaults with
  domain := ⟨(9048437500000001 / 25000000000000000 : ℚ), (9050000000000001 / 25000000000000000 : ℚ)⟩
  r := (73536824152919 / 100000000000000 : ℚ)
  w := (8159947047251 / 5000000000000 : ℚ)
  center := (9049218750000001 / 25000000000000000 : ℚ)
  supportValue := (6136469543424569 / 10000000000000000 : ℚ)
  supportSlope := (-2015546125354817 / 500000000000000 : ℚ)
  oldCenter := (6136469543424569 / 10000000000000000 : ℚ)
  oldLo := (12270000000000001 / 20000000000000000 : ℚ)
  oldHi := (61399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1437]
}

def cell_8908 : Cell := { cellDefaults with
  domain := ⟨(9050000000000001 / 25000000000000000 : ℚ), (9051562500000001 / 25000000000000000 : ℚ)⟩
  r := (9185720520631 / 12500000000000 : ℚ)
  w := (16312003109043 / 10000000000000 : ℚ)
  center := (9050781250000001 / 25000000000000000 : ℚ)
  supportValue := (3072130045715467 / 5000000000000000 : ℚ)
  supportSlope := (-2017882972753071 / 500000000000000 : ℚ)
  oldCenter := (3072130045715467 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_888
  oldLo := (61399999999999999 / 100000000000000000 : ℚ)
  oldHi := (61499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1438, piece_1439]
}

def cell_8909 : Cell := { cellDefaults with
  domain := ⟨(9051562500000001 / 25000000000000000 : ℚ), (9053125000000001 / 25000000000000000 : ℚ)⟩
  r := (9185720520631 / 12500000000000 : ℚ)
  w := (16312003109043 / 10000000000000 : ℚ)
  center := (9052343750000001 / 25000000000000000 : ℚ)
  supportValue := (3070869241844267 / 5000000000000000 : ℚ)
  supportSlope := (-806656993870547 / 200000000000000 : ℚ)
  oldCenter := (3070869241844267 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_888
  oldLo := (61399999999999999 / 100000000000000000 : ℚ)
  oldHi := (12290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1438]
}

def cell_8910 : Cell := { cellDefaults with
  domain := ⟨(9053125000000001 / 25000000000000000 : ℚ), (9054687500000001 / 25000000000000000 : ℚ)⟩
  r := (9185720520631 / 12500000000000 : ℚ)
  w := (16312003109043 / 10000000000000 : ℚ)
  center := (9053906250000001 / 25000000000000000 : ℚ)
  supportValue := (3069609198243433 / 5000000000000000 : ℚ)
  supportSlope := (-4031076344091389 / 1000000000000000 : ℚ)
  oldCenter := (3069609198243433 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_888
  oldLo := (12270000000000001 / 20000000000000000 : ℚ)
  oldHi := (12290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1437, piece_1438]
}

def cell_8911 : Cell := { cellDefaults with
  domain := ⟨(9054687500000001 / 25000000000000000 : ℚ), (9056250000000001 / 25000000000000000 : ℚ)⟩
  r := (9185720520631 / 12500000000000 : ℚ)
  w := (16312003109043 / 10000000000000 : ℚ)
  center := (9055468750000001 / 25000000000000000 : ℚ)
  supportValue := (6136699723495243 / 10000000000000000 : ℚ)
  supportSlope := (-805718175572423 / 200000000000000 : ℚ)
  oldCenter := (6136699723495243 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_888
  oldLo := (12270000000000001 / 20000000000000000 : ℚ)
  oldHi := (61399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1437]
}

def cell_8912 : Cell := { cellDefaults with
  domain := ⟨(9056250000000001 / 25000000000000000 : ℚ), (9057812500000001 / 25000000000000000 : ℚ)⟩
  r := (9185720520631 / 12500000000000 : ℚ)
  w := (16312003109043 / 10000000000000 : ℚ)
  center := (9057031250000001 / 25000000000000000 : ℚ)
  supportValue := (3067091282511437 / 5000000000000000 : ℚ)
  supportSlope := (-8052784018794057 / 2000000000000000 : ℚ)
  oldCenter := (3067091282511437 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_888
  oldLo := (61299999999999999 / 100000000000000000 : ℚ)
  oldHi := (61399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1436, piece_1437]
}

def cell_8913 : Cell := { cellDefaults with
  domain := ⟨(9057812500000001 / 25000000000000000 : ℚ), (9059375000000001 / 25000000000000000 : ℚ)⟩
  r := (9185720520631 / 12500000000000 : ℚ)
  w := (16312003109043 / 10000000000000 : ℚ)
  center := (9058593750000001 / 25000000000000000 : ℚ)
  supportValue := (6131666822871733 / 10000000000000000 : ℚ)
  supportSlope := (-2011951499662601 / 500000000000000 : ℚ)
  oldCenter := (6131666822871733 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_888
  oldLo := (61299999999999999 / 100000000000000000 : ℚ)
  oldHi := (12270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1436]
}

def cell_8914 : Cell := { cellDefaults with
  domain := ⟨(9059375000000001 / 25000000000000000 : ℚ), (9060937500000001 / 25000000000000000 : ℚ)⟩
  r := (9185720520631 / 12500000000000 : ℚ)
  w := (16312003109043 / 10000000000000 : ℚ)
  center := (9060156250000001 / 25000000000000000 : ℚ)
  supportValue := (1532288147478159 / 2500000000000000 : ℚ)
  supportSlope := (-6283926078543 / 1562500000000 : ℚ)
  oldCenter := (1532288147478159 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_888
  oldLo := (15312500000000001 / 25000000000000000 : ℚ)
  oldHi := (12270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1434, piece_1435, piece_1436]
}

def cell_8915 : Cell := { cellDefaults with
  domain := ⟨(9060937500000001 / 25000000000000000 : ℚ), (9062500000000001 / 25000000000000000 : ℚ)⟩
  r := (9185720520631 / 12500000000000 : ℚ)
  w := (16312003109043 / 10000000000000 : ℚ)
  center := (9061718750000001 / 25000000000000000 : ℚ)
  supportValue := (6126639774963663 / 10000000000000000 : ℚ)
  supportSlope := (-40192208674803 / 10000000000000 : ℚ)
  oldCenter := (6126639774963663 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_888
  oldLo := (15312500000000001 / 25000000000000000 : ℚ)
  oldHi := (6128491620111731 / 10000000000000000 : ℚ)
  oldPieces := [piece_1434]
}

def cell_8916 : Cell := { cellDefaults with
  domain := ⟨(9062500000000001 / 25000000000000000 : ℚ), (9064062500000001 / 25000000000000000 : ℚ)⟩
  r := (18358695938313 / 25000000000000 : ℚ)
  w := (1630412795443 / 1000000000000 : ℚ)
  center := (9063281250000001 / 25000000000000000 : ℚ)
  supportValue := (3067204888863093 / 5000000000000000 : ℚ)
  supportSlope := (-804768966860081 / 200000000000000 : ℚ)
  oldCenter := (3067204888863093 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_889
  oldLo := (61299999999999999 / 100000000000000000 : ℚ)
  oldHi := (61399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1436, piece_1437]
}

def cell_8917 : Cell := { cellDefaults with
  domain := ⟨(9064062500000001 / 25000000000000000 : ℚ), (9065625000000001 / 25000000000000000 : ℚ)⟩
  r := (18358695938313 / 25000000000000 : ℚ)
  w := (1630412795443 / 1000000000000 : ℚ)
  center := (9064843750000001 / 25000000000000000 : ℚ)
  supportValue := (1532973900181803 / 2500000000000000 : ℚ)
  supportSlope := (-402140140077023 / 100000000000000 : ℚ)
  oldCenter := (1532973900181803 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_889
  oldLo := (61299999999999999 / 100000000000000000 : ℚ)
  oldHi := (12270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1436]
}

def cell_8918 : Cell := { cellDefaults with
  domain := ⟨(9065625000000001 / 25000000000000000 : ℚ), (9067187500000001 / 25000000000000000 : ℚ)⟩
  r := (18358695938313 / 25000000000000 : ℚ)
  w := (1630412795443 / 1000000000000 : ℚ)
  center := (9066406250000001 / 25000000000000000 : ℚ)
  supportValue := (766172869403139 / 1250000000000000 : ℚ)
  supportSlope := (-160767015710519 / 40000000000000 : ℚ)
  oldCenter := (766172869403139 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_889
  oldLo := (15312500000000001 / 25000000000000000 : ℚ)
  oldHi := (12270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1434, piece_1435, piece_1436]
}

def cell_8919 : Cell := { cellDefaults with
  domain := ⟨(9067187500000001 / 25000000000000000 : ℚ), (9068750000000001 / 25000000000000000 : ℚ)⟩
  r := (18358695938313 / 25000000000000 : ℚ)
  w := (1630412795443 / 1000000000000 : ℚ)
  center := (9067968750000001 / 25000000000000000 : ℚ)
  supportValue := (191464740589533 / 312500000000000 : ℚ)
  supportSlope := (-4016729714365397 / 1000000000000000 : ℚ)
  oldCenter := (191464740589533 / 312500000000000 : ℚ)
  newCoefficients := coefficients_889
  oldLo := (15312500000000001 / 25000000000000000 : ℚ)
  oldHi := (6128491620111731 / 10000000000000000 : ℚ)
  oldPieces := [piece_1434]
}

def cell_8920 : Cell := { cellDefaults with
  domain := ⟨(9068750000000001 / 25000000000000000 : ℚ), (9070312500000001 / 25000000000000000 : ℚ)⟩
  r := (18358695938313 / 25000000000000 : ℚ)
  w := (1630412795443 / 1000000000000 : ℚ)
  center := (9069531250000001 / 25000000000000000 : ℚ)
  supportValue := (95693155777601 / 156250000000000 : ℚ)
  supportSlope := (-2007255415298559 / 500000000000000 : ℚ)
  oldCenter := (95693155777601 / 156250000000000 : ℚ)
  newCoefficients := coefficients_889
  oldLo := (61199999999999999 / 100000000000000000 : ℚ)
  oldHi := (6128491620111731 / 10000000000000000 : ℚ)
  oldPieces := [piece_1433, piece_1434]
}

def cell_8921 : Cell := { cellDefaults with
  domain := ⟨(9070312500000001 / 25000000000000000 : ℚ), (9071875000000001 / 25000000000000000 : ℚ)⟩
  r := (18358695938313 / 25000000000000 : ℚ)
  w := (1630412795443 / 1000000000000 : ℚ)
  center := (9071093750000001 / 25000000000000000 : ℚ)
  supportValue := (6121853630038517 / 10000000000000000 : ℚ)
  supportSlope := (-2006032402132263 / 500000000000000 : ℚ)
  oldCenter := (6121853630038517 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_889
  oldLo := (61199999999999999 / 100000000000000000 : ℚ)
  oldHi := (15312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1433]
}

def cell_8922 : Cell := { cellDefaults with
  domain := ⟨(9071875000000001 / 25000000000000000 : ℚ), (9073437500000001 / 25000000000000000 : ℚ)⟩
  r := (18358695938313 / 25000000000000 : ℚ)
  w := (1630412795443 / 1000000000000 : ℚ)
  center := (9072656250000001 / 25000000000000000 : ℚ)
  supportValue := (382459175859791 / 625000000000000 : ℚ)
  supportSlope := (-8019703892948371 / 2000000000000000 : ℚ)
  oldCenter := (382459175859791 / 625000000000000 : ℚ)
  newCoefficients := coefficients_889
  oldLo := (15287500000000001 / 25000000000000000 : ℚ)
  oldHi := (15312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1432, piece_1433]
}

def cell_8923 : Cell := { cellDefaults with
  domain := ⟨(9073437500000001 / 25000000000000000 : ℚ), (9075000000000001 / 25000000000000000 : ℚ)⟩
  r := (18358695938313 / 25000000000000 : ℚ)
  w := (1630412795443 / 1000000000000 : ℚ)
  center := (9074218750000001 / 25000000000000000 : ℚ)
  supportValue := (6116841386632583 / 10000000000000000 : ℚ)
  supportSlope := (-200370307017117 / 50000000000000 : ℚ)
  oldCenter := (6116841386632583 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_889
  oldLo := (15287500000000001 / 25000000000000000 : ℚ)
  oldHi := (61199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1432]
}

def cell_8924 : Cell := { cellDefaults with
  domain := ⟨(9075000000000001 / 25000000000000000 : ℚ), (290450000000000033 / 800000000000000000 : ℚ)⟩
  r := (73383882475917 / 100000000000000 : ℚ)
  w := (16296270975761 / 10000000000000 : ℚ)
  center := (116170000000000013 / 320000000000000000 : ℚ)
  supportValue := (3062294985511751 / 5000000000000000 : ℚ)
  supportSlope := (-4011973674621947 / 1000000000000000 : ℚ)
  oldCenter := (3062294985511751 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_890
  oldLo := (61199999999999999 / 100000000000000000 : ℚ)
  oldHi := (6128491620111731 / 10000000000000000 : ℚ)
  oldPieces := [piece_1433, piece_1434]
}

def cell_8925 : Cell := { cellDefaults with
  domain := ⟨(290450000000000033 / 800000000000000000 : ℚ), (145250000000000017 / 400000000000000000 : ℚ)⟩
  r := (73383882475917 / 100000000000000 : ℚ)
  w := (16296270975761 / 10000000000000 : ℚ)
  center := (580950000000000067 / 1600000000000000000 : ℚ)
  supportValue := (612208319012933 / 1000000000000000 : ℚ)
  supportSlope := (-8019146238929249 / 2000000000000000 : ℚ)
  oldCenter := (612208319012933 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_890
  oldLo := (61199999999999999 / 100000000000000000 : ℚ)
  oldHi := (15312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1433]
}

def cell_8926 : Cell := { cellDefaults with
  domain := ⟨(145250000000000017 / 400000000000000000 : ℚ), (58110000000000007 / 160000000000000000 : ℚ)⟩
  r := (73383882475917 / 100000000000000 : ℚ)
  w := (16296270975761 / 10000000000000 : ℚ)
  center := (581050000000000069 / 1600000000000000000 : ℚ)
  supportValue := (611957795540897 / 1000000000000000 : ℚ)
  supportSlope := (-801464767737043 / 200000000000000 : ℚ)
  oldCenter := (611957795540897 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_890
  oldLo := (15287500000000001 / 25000000000000000 : ℚ)
  oldHi := (15312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1432, piece_1433]
}

def cell_8927 : Cell := { cellDefaults with
  domain := ⟨(58110000000000007 / 160000000000000000 : ℚ), (72650000000000009 / 200000000000000000 : ℚ)⟩
  r := (73383882475917 / 100000000000000 : ℚ)
  w := (16296270975761 / 10000000000000 : ℚ)
  center := (581150000000000071 / 1600000000000000000 : ℚ)
  supportValue := (3058537040536183 / 5000000000000000 : ℚ)
  supportSlope := (-4004924124458773 / 1000000000000000 : ℚ)
  oldCenter := (3058537040536183 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_890
  oldLo := (15287500000000001 / 25000000000000000 : ℚ)
  oldHi := (61199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1432]
}

def cell_8928 : Cell := { cellDefaults with
  domain := ⟨(72650000000000009 / 200000000000000000 : ℚ), (290650000000000037 / 800000000000000000 : ℚ)⟩
  r := (73383882475917 / 100000000000000 : ℚ)
  w := (16296270975761 / 10000000000000 : ℚ)
  center := (581250000000000073 / 1600000000000000000 : ℚ)
  supportValue := (6114571750265521 / 10000000000000000 : ℚ)
  supportSlope := (-125083724874073 / 31250000000000 : ℚ)
  oldCenter := (6114571750265521 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_890
  oldLo := (61099999999999999 / 100000000000000000 : ℚ)
  oldHi := (61199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1431, piece_1432]
}

def cell_8929 : Cell := { cellDefaults with
  domain := ⟨(290650000000000037 / 800000000000000000 : ℚ), (145350000000000019 / 400000000000000000 : ℚ)⟩
  r := (73383882475917 / 100000000000000 : ℚ)
  w := (16296270975761 / 10000000000000 : ℚ)
  center := (23254000000000003 / 64000000000000000 : ℚ)
  supportValue := (3056035389297473 / 5000000000000000 : ℚ)
  supportSlope := (-1000070338985617 / 250000000000000 : ℚ)
  oldCenter := (3056035389297473 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_890
  oldLo := (61099999999999999 / 100000000000000000 : ℚ)
  oldHi := (15287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1431]
}

def cell_8930 : Cell := { cellDefaults with
  domain := ⟨(145350000000000019 / 400000000000000000 : ℚ), (290750000000000039 / 800000000000000000 : ℚ)⟩
  r := (73383882475917 / 100000000000000 : ℚ)
  w := (16296270975761 / 10000000000000 : ℚ)
  center := (581450000000000077 / 1600000000000000000 : ℚ)
  supportValue := (6109571348457963 / 10000000000000000 : ℚ)
  supportSlope := (-39980397423703717 / 10000000000000000 : ℚ)
  oldCenter := (6109571348457963 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_890
  oldLo := (15262500000000001 / 25000000000000000 : ℚ)
  oldHi := (15287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1430, piece_1431]
}

def cell_8931 : Cell := { cellDefaults with
  domain := ⟨(290750000000000039 / 800000000000000000 : ℚ), (7270000000000001 / 20000000000000000 : ℚ)⟩
  r := (73383882475917 / 100000000000000 : ℚ)
  w := (16296270975761 / 10000000000000 : ℚ)
  center := (581550000000000079 / 1600000000000000000 : ℚ)
  supportValue := (6107073275562703 / 10000000000000000 : ℚ)
  supportSlope := (-3995644812721997 / 1000000000000000 : ℚ)
  oldCenter := (6107073275562703 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_890
  oldLo := (15262500000000001 / 25000000000000000 : ℚ)
  oldHi := (61099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1430]
}

def cell_8932 : Cell := { cellDefaults with
  domain := ⟨(7270000000000001 / 20000000000000000 : ℚ), (7271250000000001 / 20000000000000000 : ℚ)⟩
  center := (7270625000000001 / 20000000000000000 : ℚ)
  supportValue := (6114800831068371 / 10000000000000000 : ℚ)
  supportSlope := (-4000150883154419 / 1000000000000000 : ℚ)
  oldCenter := (6114800831068371 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_891
  oldLo := (61099999999999999 / 100000000000000000 : ℚ)
  oldHi := (61199999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1431, piece_1432]
}

def cell_8933 : Cell := { cellDefaults with
  domain := ⟨(7271250000000001 / 20000000000000000 : ℚ), (7272500000000001 / 20000000000000000 : ℚ)⟩
  center := (7271875000000001 / 20000000000000000 : ℚ)
  supportValue := (6112301412358683 / 10000000000000000 : ℚ)
  supportSlope := (-7995598548220073 / 2000000000000000 : ℚ)
  oldCenter := (6112301412358683 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_891
  oldLo := (61099999999999999 / 100000000000000000 : ℚ)
  oldHi := (15287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1431]
}

def cell_8934 : Cell := { cellDefaults with
  domain := ⟨(7272500000000001 / 20000000000000000 : ℚ), (7273750000000001 / 20000000000000000 : ℚ)⟩
  center := (7273125000000001 / 20000000000000000 : ℚ)
  supportValue := (6109803557869677 / 10000000000000000 : ℚ)
  supportSlope := (-39955213026132697 / 10000000000000000 : ℚ)
  oldCenter := (6109803557869677 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_891
  oldLo := (15262500000000001 / 25000000000000000 : ℚ)
  oldHi := (15287500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1430, piece_1431]
}

def cell_8935 : Cell := { cellDefaults with
  domain := ⟨(7273750000000001 / 20000000000000000 : ℚ), (7275000000000001 / 20000000000000000 : ℚ)⟩
  center := (7274375000000001 / 20000000000000000 : ℚ)
  supportValue := (6107307031373169 / 10000000000000000 : ℚ)
  supportSlope := (-7986346449605719 / 2000000000000000 : ℚ)
  oldCenter := (6107307031373169 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_891
  oldLo := (15262500000000001 / 25000000000000000 : ℚ)
  oldHi := (61099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1430]
}

def cell_8936 : Cell := { cellDefaults with
  domain := ⟨(7275000000000001 / 20000000000000000 : ℚ), (9095103002793297 / 25000000000000000 : ℚ)⟩
  center := (72755412011173193 / 200000000000000000 : ℚ)
  supportValue := (3052489648036263 / 5000000000000000 : ℚ)
  supportSlope := (-7982074736797009 / 2000000000000000 : ℚ)
  oldCenter := (3052489648036263 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_891
  oldLo := (60999999999999999 / 100000000000000000 : ℚ)
  oldHi := (61099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1429, piece_1430]
}

def cell_8937 : Cell := { cellDefaults with
  domain := ⟨(9095103002793297 / 25000000000000000 : ℚ), (36385824022346371 / 100000000000000000 : ℚ)⟩
  center := (72766236033519559 / 200000000000000000 : ℚ)
  supportValue := (6102819816614151 / 10000000000000000 : ℚ)
  supportSlope := (-4986328375467653 / 1250000000000000 : ℚ)
  oldCenter := (6102819816614151 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_891
  oldLo := (60999999999999999 / 100000000000000000 : ℚ)
  oldHi := (15262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1429]
}

def cell_8938 : Cell := { cellDefaults with
  domain := ⟨(36385824022346371 / 100000000000000000 : ℚ), (18195618016759777 / 50000000000000000 : ℚ)⟩
  center := (2911082402234637 / 8000000000000000 : ℚ)
  supportValue := (76258269051751 / 125000000000000 : ℚ)
  supportSlope := (-1993478697722769 / 500000000000000 : ℚ)
  oldCenter := (76258269051751 / 125000000000000 : ℚ)
  newCoefficients := coefficients_891
  oldHi := (15262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1428, piece_1429]
}

def cell_8939 : Cell := { cellDefaults with
  domain := ⟨(18195618016759777 / 50000000000000000 : ℚ), (36396648044692737 / 100000000000000000 : ℚ)⟩
  center := (72787884078212291 / 200000000000000000 : ℚ)
  supportValue := (3049252124762869 / 5000000000000000 : ℚ)
  supportSlope := (-249070424591157 / 62500000000000 : ℚ)
  oldCenter := (3049252124762869 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_891
  oldPieces := [piece_1428]
}

def cell_8940 : Cell := { cellDefaults with
  domain := ⟨(36396648044692737 / 100000000000000000 : ℚ), (7280000000000001 / 20000000000000000 : ℚ)⟩
  center := (36398324022346371 / 100000000000000000 : ℚ)
  supportValue := (609675714244109 / 1000000000000000 : ℚ)
  supportSlope := (-1991676574272287 / 500000000000000 : ℚ)
  oldCenter := (609675714244109 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_892
  oldPieces := [piece_1428]
}

def cell_8941 : Cell := { cellDefaults with
  domain := ⟨(7280000000000001 / 20000000000000000 : ℚ), (7281250000000001 / 20000000000000000 : ℚ)⟩
  r := (73282317339373 / 100000000000000 : ℚ)
  w := (16280608978251 / 10000000000000 : ℚ)
  center := (7280625000000001 / 20000000000000000 : ℚ)
  supportValue := (3052521078912307 / 5000000000000000 : ℚ)
  supportSlope := (-1994189029256077 / 500000000000000 : ℚ)
  oldCenter := (3052521078912307 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_893
  oldLo := (60999999999999999 / 100000000000000000 : ℚ)
  oldHi := (61099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1429, piece_1430]
}

def cell_8942 : Cell := { cellDefaults with
  domain := ⟨(7281250000000001 / 20000000000000000 : ℚ), (7282500000000001 / 20000000000000000 : ℚ)⟩
  r := (73282317339373 / 100000000000000 : ℚ)
  w := (16280608978251 / 10000000000000 : ℚ)
  center := (7281875000000001 / 20000000000000000 : ℚ)
  supportValue := (610255007107151 / 1000000000000000 : ℚ)
  supportSlope := (-996520232761533 / 250000000000000 : ℚ)
  oldCenter := (610255007107151 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_893
  oldLo := (60999999999999999 / 100000000000000000 : ℚ)
  oldHi := (15262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1429]
}

def cell_8943 : Cell := { cellDefaults with
  domain := ⟨(7282500000000001 / 20000000000000000 : ℚ), (7283750000000001 / 20000000000000000 : ℚ)⟩
  r := (73282317339373 / 100000000000000 : ℚ)
  w := (16280608978251 / 10000000000000 : ℚ)
  center := (7283125000000001 / 20000000000000000 : ℚ)
  supportValue := (6100059559299343 / 10000000000000000 : ℚ)
  supportSlope := (-7967536449136503 / 2000000000000000 : ℚ)
  oldCenter := (6100059559299343 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_893
  oldHi := (15262500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1428, piece_1429]
}

def cell_8944 : Cell := { cellDefaults with
  domain := ⟨(7283750000000001 / 20000000000000000 : ℚ), (7285000000000001 / 20000000000000000 : ℚ)⟩
  r := (73282317339373 / 100000000000000 : ℚ)
  w := (16280608978251 / 10000000000000 : ℚ)
  center := (7284375000000001 / 20000000000000000 : ℚ)
  supportValue := (1219514070547301 / 2000000000000000 : ℚ)
  supportSlope := (-3981477254932031 / 1000000000000000 : ℚ)
  oldCenter := (1219514070547301 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_893
  oldPieces := [piece_1428]
}

def cell_8945 : Cell := { cellDefaults with
  domain := ⟨(7285000000000001 / 20000000000000000 : ℚ), (7286250000000001 / 20000000000000000 : ℚ)⟩
  r := (73282317339373 / 100000000000000 : ℚ)
  w := (16280608978251 / 10000000000000 : ℚ)
  center := (7285625000000001 / 20000000000000000 : ℚ)
  supportValue := (1523770679333343 / 2500000000000000 : ℚ)
  supportSlope := (-19895817646364833 / 5000000000000000 : ℚ)
  oldCenter := (1523770679333343 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_893
  oldLo := (60899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1427, piece_1428]
}

def cell_8946 : Cell := { cellDefaults with
  domain := ⟨(7286250000000001 / 20000000000000000 : ℚ), (7287500000000001 / 20000000000000000 : ℚ)⟩
  r := (73282317339373 / 100000000000000 : ℚ)
  w := (16280608978251 / 10000000000000 : ℚ)
  center := (7286875000000001 / 20000000000000000 : ℚ)
  supportValue := (3046298193825641 / 5000000000000000 : ℚ)
  supportSlope := (-1988439963211519 / 500000000000000 : ℚ)
  oldCenter := (3046298193825641 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_893
  oldLo := (60899999999999999 / 100000000000000000 : ℚ)
  oldHi := (15237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1427]
}

def cell_8947 : Cell := { cellDefaults with
  domain := ⟨(7287500000000001 / 20000000000000000 : ℚ), (7288750000000001 / 20000000000000000 : ℚ)⟩
  r := (73282317339373 / 100000000000000 : ℚ)
  w := (16280608978251 / 10000000000000 : ℚ)
  center := (7288125000000001 / 20000000000000000 : ℚ)
  supportValue := (3045055812325859 / 5000000000000000 : ℚ)
  supportSlope := (-39745640905408663 / 10000000000000000 : ℚ)
  oldCenter := (3045055812325859 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_893
  oldLo := (15212500000000001 / 25000000000000000 : ℚ)
  oldHi := (15237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1426, piece_1427]
}

def cell_8948 : Cell := { cellDefaults with
  domain := ⟨(7288750000000001 / 20000000000000000 : ℚ), (7290000000000001 / 20000000000000000 : ℚ)⟩
  r := (73282317339373 / 100000000000000 : ℚ)
  w := (16280608978251 / 10000000000000 : ℚ)
  center := (7289375000000001 / 20000000000000000 : ℚ)
  supportValue := (760953521077253 / 1250000000000000 : ℚ)
  supportSlope := (-3972288719186423 / 1000000000000000 : ℚ)
  oldCenter := (760953521077253 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_893
  oldLo := (15212500000000001 / 25000000000000000 : ℚ)
  oldHi := (60899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1426]
}

def cell_8949 : Cell := { cellDefaults with
  domain := ⟨(7290000000000001 / 20000000000000000 : ℚ), (7291250000000001 / 20000000000000000 : ℚ)⟩
  r := (2929266077407 / 4000000000000 : ℚ)
  w := (16272804006501 / 10000000000000 : ℚ)
  center := (7290625000000001 / 20000000000000000 : ℚ)
  supportValue := (304765696417051 / 500000000000000 : ℚ)
  supportSlope := (-9941635802865889 / 2500000000000000 : ℚ)
  oldCenter := (304765696417051 / 500000000000000 : ℚ)
  newCoefficients := coefficients_894
  oldLo := (60899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1427, piece_1428]
}

theorem check_8900 : cell_8900.check = true := by
  decide +kernel

theorem check_8901 : cell_8901.check = true := by
  decide +kernel

theorem check_8902 : cell_8902.check = true := by
  decide +kernel

theorem check_8903 : cell_8903.check = true := by
  decide +kernel

theorem check_8904 : cell_8904.check = true := by
  decide +kernel

theorem check_8905 : cell_8905.check = true := by
  decide +kernel

theorem check_8906 : cell_8906.check = true := by
  decide +kernel

theorem check_8907 : cell_8907.check = true := by
  decide +kernel

theorem check_8908 : cell_8908.check = true := by
  decide +kernel

theorem check_8909 : cell_8909.check = true := by
  decide +kernel

theorem check_8910 : cell_8910.check = true := by
  decide +kernel

theorem check_8911 : cell_8911.check = true := by
  decide +kernel

theorem check_8912 : cell_8912.check = true := by
  decide +kernel

theorem check_8913 : cell_8913.check = true := by
  decide +kernel

theorem check_8914 : cell_8914.check = true := by
  decide +kernel

theorem check_8915 : cell_8915.check = true := by
  decide +kernel

theorem check_8916 : cell_8916.check = true := by
  decide +kernel

theorem check_8917 : cell_8917.check = true := by
  decide +kernel

theorem check_8918 : cell_8918.check = true := by
  decide +kernel

theorem check_8919 : cell_8919.check = true := by
  decide +kernel

theorem check_8920 : cell_8920.check = true := by
  decide +kernel

theorem check_8921 : cell_8921.check = true := by
  decide +kernel

theorem check_8922 : cell_8922.check = true := by
  decide +kernel

theorem check_8923 : cell_8923.check = true := by
  decide +kernel

theorem check_8924 : cell_8924.check = true := by
  decide +kernel

theorem check_8925 : cell_8925.check = true := by
  decide +kernel

theorem check_8926 : cell_8926.check = true := by
  decide +kernel

theorem check_8927 : cell_8927.check = true := by
  decide +kernel

theorem check_8928 : cell_8928.check = true := by
  decide +kernel

theorem check_8929 : cell_8929.check = true := by
  decide +kernel

theorem check_8930 : cell_8930.check = true := by
  decide +kernel

theorem check_8931 : cell_8931.check = true := by
  decide +kernel

theorem check_8932 : cell_8932.check = true := by
  decide +kernel

theorem check_8933 : cell_8933.check = true := by
  decide +kernel

theorem check_8934 : cell_8934.check = true := by
  decide +kernel

theorem check_8935 : cell_8935.check = true := by
  decide +kernel

theorem check_8936 : cell_8936.check = true := by
  decide +kernel

theorem check_8937 : cell_8937.check = true := by
  decide +kernel

theorem check_8938 : cell_8938.check = true := by
  decide +kernel

theorem check_8939 : cell_8939.check = true := by
  decide +kernel

theorem check_8940 : cell_8940.check = true := by
  decide +kernel

theorem check_8941 : cell_8941.check = true := by
  decide +kernel

theorem check_8942 : cell_8942.check = true := by
  decide +kernel

theorem check_8943 : cell_8943.check = true := by
  decide +kernel

theorem check_8944 : cell_8944.check = true := by
  decide +kernel

theorem check_8945 : cell_8945.check = true := by
  decide +kernel

theorem check_8946 : cell_8946.check = true := by
  decide +kernel

theorem check_8947 : cell_8947.check = true := by
  decide +kernel

theorem check_8948 : cell_8948.check = true := by
  decide +kernel

theorem check_8949 : cell_8949.check = true := by
  decide +kernel

def cells : List Cell := [cell_8900, cell_8901, cell_8902, cell_8903, cell_8904, cell_8905, cell_8906, cell_8907, cell_8908, cell_8909, cell_8910, cell_8911, cell_8912, cell_8913, cell_8914, cell_8915, cell_8916, cell_8917, cell_8918, cell_8919, cell_8920, cell_8921, cell_8922, cell_8923, cell_8924, cell_8925, cell_8926, cell_8927, cell_8928, cell_8929, cell_8930, cell_8931, cell_8932, cell_8933, cell_8934, cell_8935, cell_8936, cell_8937, cell_8938, cell_8939, cell_8940, cell_8941, cell_8942, cell_8943, cell_8944, cell_8945, cell_8946, cell_8947, cell_8948, cell_8949]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8900, check_8901, check_8902, check_8903, check_8904, check_8905, check_8906, check_8907, check_8908, check_8909, check_8910, check_8911, check_8912, check_8913, check_8914, check_8915, check_8916, check_8917, check_8918, check_8919, check_8920, check_8921, check_8922, check_8923, check_8924, check_8925, check_8926, check_8927, check_8928, check_8929, check_8930, check_8931, check_8932, check_8933, check_8934, check_8935, check_8936, check_8937, check_8938, check_8939, check_8940, check_8941, check_8942, check_8943, check_8944, check_8945, check_8946, check_8947, check_8948, check_8949, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0178

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0178
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0178
open AnalyticBounds.ExpressionCertificate

theorem linked_8900 : Linked cell_8900 pieces := by
  link_source cell_8900 with piece_887 using piece_887_mem, ⟨piece_1440_mem, piece_1441_mem⟩

theorem linked_8901 : Linked cell_8901 pieces := by
  link_source cell_8901 with piece_887 using piece_887_mem, piece_1440_mem

theorem linked_8902 : Linked cell_8902 pieces := by
  link_source cell_8902 with piece_887 using piece_887_mem, ⟨piece_1439_mem, piece_1440_mem⟩

theorem linked_8903 : Linked cell_8903 pieces := by
  link_source cell_8903 with piece_887 using piece_887_mem, piece_1439_mem

theorem linked_8904 : Linked cell_8904 pieces := by
  link_source cell_8904 with piece_887 using piece_887_mem, ⟨piece_1438_mem, piece_1439_mem⟩

theorem linked_8905 : Linked cell_8905 pieces := by
  link_source cell_8905 with piece_887 using piece_887_mem, piece_1438_mem

theorem linked_8906 : Linked cell_8906 pieces := by
  link_source cell_8906 with piece_887 using piece_887_mem, ⟨piece_1437_mem, piece_1438_mem⟩

theorem linked_8907 : Linked cell_8907 pieces := by
  link_source cell_8907 with piece_887 using piece_887_mem, piece_1437_mem

theorem linked_8908 : Linked cell_8908 pieces := by
  link_source cell_8908 with piece_888 using piece_888_mem, ⟨piece_1438_mem, piece_1439_mem⟩

theorem linked_8909 : Linked cell_8909 pieces := by
  link_source cell_8909 with piece_888 using piece_888_mem, piece_1438_mem

theorem linked_8910 : Linked cell_8910 pieces := by
  link_source cell_8910 with piece_888 using piece_888_mem, ⟨piece_1437_mem, piece_1438_mem⟩

theorem linked_8911 : Linked cell_8911 pieces := by
  link_source cell_8911 with piece_888 using piece_888_mem, piece_1437_mem

theorem linked_8912 : Linked cell_8912 pieces := by
  link_source cell_8912 with piece_888 using piece_888_mem, ⟨piece_1436_mem, piece_1437_mem⟩

theorem linked_8913 : Linked cell_8913 pieces := by
  link_source cell_8913 with piece_888 using piece_888_mem, piece_1436_mem

theorem linked_8914 : Linked cell_8914 pieces := by
  link_source cell_8914 with piece_888 using piece_888_mem, ⟨piece_1434_mem, ⟨piece_1435_mem, piece_1436_mem⟩⟩

theorem linked_8915 : Linked cell_8915 pieces := by
  link_source cell_8915 with piece_888 using piece_888_mem, piece_1434_mem

theorem linked_8916 : Linked cell_8916 pieces := by
  link_source cell_8916 with piece_889 using piece_889_mem, ⟨piece_1436_mem, piece_1437_mem⟩

theorem linked_8917 : Linked cell_8917 pieces := by
  link_source cell_8917 with piece_889 using piece_889_mem, piece_1436_mem

theorem linked_8918 : Linked cell_8918 pieces := by
  link_source cell_8918 with piece_889 using piece_889_mem, ⟨piece_1434_mem, ⟨piece_1435_mem, piece_1436_mem⟩⟩

theorem linked_8919 : Linked cell_8919 pieces := by
  link_source cell_8919 with piece_889 using piece_889_mem, piece_1434_mem

theorem linked_8920 : Linked cell_8920 pieces := by
  link_source cell_8920 with piece_889 using piece_889_mem, ⟨piece_1433_mem, piece_1434_mem⟩

theorem linked_8921 : Linked cell_8921 pieces := by
  link_source cell_8921 with piece_889 using piece_889_mem, piece_1433_mem

theorem linked_8922 : Linked cell_8922 pieces := by
  link_source cell_8922 with piece_889 using piece_889_mem, ⟨piece_1432_mem, piece_1433_mem⟩

theorem linked_8923 : Linked cell_8923 pieces := by
  link_source cell_8923 with piece_889 using piece_889_mem, piece_1432_mem

theorem linked_8924 : Linked cell_8924 pieces := by
  link_source cell_8924 with piece_890 using piece_890_mem, ⟨piece_1433_mem, piece_1434_mem⟩

theorem linked_8925 : Linked cell_8925 pieces := by
  link_source cell_8925 with piece_890 using piece_890_mem, piece_1433_mem

theorem linked_8926 : Linked cell_8926 pieces := by
  link_source cell_8926 with piece_890 using piece_890_mem, ⟨piece_1432_mem, piece_1433_mem⟩

theorem linked_8927 : Linked cell_8927 pieces := by
  link_source cell_8927 with piece_890 using piece_890_mem, piece_1432_mem

theorem linked_8928 : Linked cell_8928 pieces := by
  link_source cell_8928 with piece_890 using piece_890_mem, ⟨piece_1431_mem, piece_1432_mem⟩

theorem linked_8929 : Linked cell_8929 pieces := by
  link_source cell_8929 with piece_890 using piece_890_mem, piece_1431_mem

theorem linked_8930 : Linked cell_8930 pieces := by
  link_source cell_8930 with piece_890 using piece_890_mem, ⟨piece_1430_mem, piece_1431_mem⟩

theorem linked_8931 : Linked cell_8931 pieces := by
  link_source cell_8931 with piece_890 using piece_890_mem, piece_1430_mem

theorem linked_8932 : Linked cell_8932 pieces := by
  link_source cell_8932 with piece_891 using piece_891_mem, ⟨piece_1431_mem, piece_1432_mem⟩

theorem linked_8933 : Linked cell_8933 pieces := by
  link_source cell_8933 with piece_891 using piece_891_mem, piece_1431_mem

theorem linked_8934 : Linked cell_8934 pieces := by
  link_source cell_8934 with piece_891 using piece_891_mem, ⟨piece_1430_mem, piece_1431_mem⟩

theorem linked_8935 : Linked cell_8935 pieces := by
  link_source cell_8935 with piece_891 using piece_891_mem, piece_1430_mem

theorem linked_8936 : Linked cell_8936 pieces := by
  link_source cell_8936 with piece_891 using piece_891_mem, ⟨piece_1429_mem, piece_1430_mem⟩

theorem linked_8937 : Linked cell_8937 pieces := by
  link_source cell_8937 with piece_891 using piece_891_mem, piece_1429_mem

theorem linked_8938 : Linked cell_8938 pieces := by
  link_source cell_8938 with piece_891 using piece_891_mem, ⟨piece_1428_mem, piece_1429_mem⟩

theorem linked_8939 : Linked cell_8939 pieces := by
  link_source cell_8939 with piece_891 using piece_891_mem, piece_1428_mem

theorem linked_8940 : Linked cell_8940 pieces := by
  link_source cell_8940 with piece_892 using piece_892_mem, piece_1428_mem

theorem linked_8941 : Linked cell_8941 pieces := by
  link_source cell_8941 with piece_893 using piece_893_mem, ⟨piece_1429_mem, piece_1430_mem⟩

theorem linked_8942 : Linked cell_8942 pieces := by
  link_source cell_8942 with piece_893 using piece_893_mem, piece_1429_mem

theorem linked_8943 : Linked cell_8943 pieces := by
  link_source cell_8943 with piece_893 using piece_893_mem, ⟨piece_1428_mem, piece_1429_mem⟩

theorem linked_8944 : Linked cell_8944 pieces := by
  link_source cell_8944 with piece_893 using piece_893_mem, piece_1428_mem

theorem linked_8945 : Linked cell_8945 pieces := by
  link_source cell_8945 with piece_893 using piece_893_mem, ⟨piece_1427_mem, piece_1428_mem⟩

theorem linked_8946 : Linked cell_8946 pieces := by
  link_source cell_8946 with piece_893 using piece_893_mem, piece_1427_mem

theorem linked_8947 : Linked cell_8947 pieces := by
  link_source cell_8947 with piece_893 using piece_893_mem, ⟨piece_1426_mem, piece_1427_mem⟩

theorem linked_8948 : Linked cell_8948 pieces := by
  link_source cell_8948 with piece_893 using piece_893_mem, piece_1426_mem

theorem linked_8949 : Linked cell_8949 pieces := by
  link_source cell_8949 with piece_894 using piece_894_mem, ⟨piece_1427_mem, piece_1428_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0178.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0178.cells,List.forall_mem_cons]
  exact ⟨linked_8900, linked_8901, linked_8902, linked_8903, linked_8904, linked_8905, linked_8906, linked_8907, linked_8908, linked_8909, linked_8910, linked_8911, linked_8912, linked_8913, linked_8914, linked_8915, linked_8916, linked_8917, linked_8918, linked_8919, linked_8920, linked_8921, linked_8922, linked_8923, linked_8924, linked_8925, linked_8926, linked_8927, linked_8928, linked_8929, linked_8930, linked_8931, linked_8932, linked_8933, linked_8934, linked_8935, linked_8936, linked_8937, linked_8938, linked_8939, linked_8940, linked_8941, linked_8942, linked_8943, linked_8944, linked_8945, linked_8946, linked_8947, linked_8948, linked_8949, by simp⟩

theorem covered : covers (9037500000000001 / 25000000000000000 : ℚ) (7291250000000001 / 20000000000000000 : ℚ)
    (SourceCertificates.Chunk0178.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0178
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0179
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(7291250000000001 / 20000000000000000 : ℚ), (7292500000000001 / 20000000000000000 : ℚ)⟩
  branch := .left
  r := (14636213266687 / 20000000000000 : ℚ)
  w := (16265016561017 / 10000000000000 : ℚ)
  center := (7291875000000001 / 20000000000000000 : ℚ)
  supportValue := (1523207291349653 / 2500000000000000 : ℚ)
  supportSlope := (-496802162555543 / 125000000000000 : ℚ)
  oldCenter := (1523207291349653 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_895
  oldLo := (15162500000000001 / 25000000000000000 : ℚ)
  oldHi := (30349999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1421]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_8950 : Cell := { cellDefaults with
  r := (2929266077407 / 4000000000000 : ℚ)
  w := (16272804006501 / 10000000000000 : ℚ)
  newCoefficients := coefficients_894
  oldLo := (60899999999999999 / 100000000000000000 : ℚ)
  oldHi := (15237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1427]
}

def cell_8951 : Cell := { cellDefaults with
  domain := ⟨(7292500000000001 / 20000000000000000 : ℚ), (7293750000000001 / 20000000000000000 : ℚ)⟩
  r := (2929266077407 / 4000000000000 : ℚ)
  w := (16272804006501 / 10000000000000 : ℚ)
  center := (7293125000000001 / 20000000000000000 : ℚ)
  supportValue := (609034593999141 / 1000000000000000 : ℚ)
  supportSlope := (-39720640531477613 / 10000000000000000 : ℚ)
  oldCenter := (609034593999141 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_894
  oldLo := (15212500000000001 / 25000000000000000 : ℚ)
  oldHi := (15237500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1426, piece_1427]
}

def cell_8952 : Cell := { cellDefaults with
  domain := ⟨(7293750000000001 / 20000000000000000 : ℚ), (7295000000000001 / 20000000000000000 : ℚ)⟩
  r := (2929266077407 / 4000000000000 : ℚ)
  w := (16272804006501 / 10000000000000 : ℚ)
  center := (7294375000000001 / 20000000000000000 : ℚ)
  supportValue := (152196601124047 / 250000000000000 : ℚ)
  supportSlope := (-7939671822953187 / 2000000000000000 : ℚ)
  oldCenter := (152196601124047 / 250000000000000 : ℚ)
  newCoefficients := coefficients_894
  oldLo := (15212500000000001 / 25000000000000000 : ℚ)
  oldHi := (60899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1426]
}

def cell_8953 : Cell := { cellDefaults with
  domain := ⟨(7295000000000001 / 20000000000000000 : ℚ), (7296250000000001 / 20000000000000000 : ℚ)⟩
  r := (2929266077407 / 4000000000000 : ℚ)
  w := (16272804006501 / 10000000000000 : ℚ)
  center := (7295625000000001 / 20000000000000000 : ℚ)
  supportValue := (6085383682064707 / 10000000000000000 : ℚ)
  supportSlope := (-793495749296369 / 200000000000000 : ℚ)
  oldCenter := (6085383682064707 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_894
  oldLo := (30399999999999999 / 50000000000000000 : ℚ)
  oldHi := (60899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1425, piece_1426]
}

def cell_8954 : Cell := { cellDefaults with
  domain := ⟨(7296250000000001 / 20000000000000000 : ℚ), (7297500000000001 / 20000000000000000 : ℚ)⟩
  r := (2929266077407 / 4000000000000 : ℚ)
  w := (16272804006501 / 10000000000000 : ℚ)
  center := (7296875000000001 / 20000000000000000 : ℚ)
  supportValue := (121658093036437 / 200000000000000 : ℚ)
  supportSlope := (-3965260505978563 / 1000000000000000 : ℚ)
  oldCenter := (121658093036437 / 200000000000000 : ℚ)
  newCoefficients := coefficients_894
  oldLo := (30399999999999999 / 50000000000000000 : ℚ)
  oldHi := (15212500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1425]
}

def cell_8955 : Cell := { cellDefaults with
  domain := ⟨(7297500000000001 / 20000000000000000 : ℚ), (7298750000000001 / 20000000000000000 : ℚ)⟩
  r := (2929266077407 / 4000000000000 : ℚ)
  w := (16272804006501 / 10000000000000 : ℚ)
  center := (7298125000000001 / 20000000000000000 : ℚ)
  supportValue := (6080427147774771 / 10000000000000000 : ℚ)
  supportSlope := (-1981449018296999 / 500000000000000 : ℚ)
  oldCenter := (6080427147774771 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_894
  oldLo := (15187500000000001 / 25000000000000000 : ℚ)
  oldHi := (15212500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1424, piece_1425]
}

def cell_8956 : Cell := { cellDefaults with
  domain := ⟨(7298750000000001 / 20000000000000000 : ℚ), (7300000000000001 / 20000000000000000 : ℚ)⟩
  r := (2929266077407 / 4000000000000 : ℚ)
  w := (16272804006501 / 10000000000000 : ℚ)
  center := (7299375000000001 / 20000000000000000 : ℚ)
  supportValue := (303897548972267 / 500000000000000 : ℚ)
  supportSlope := (-39606910864513623 / 10000000000000000 : ℚ)
  oldCenter := (303897548972267 / 500000000000000 : ℚ)
  newCoefficients := coefficients_894
  oldLo := (15187500000000001 / 25000000000000000 : ℚ)
  oldHi := (30399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1424]
}

def cell_8957 : Cell := { cellDefaults with
  domain := ⟨(7300000000000001 / 20000000000000000 : ℚ), (7301250000000001 / 20000000000000000 : ℚ)⟩
  center := (7300625000000001 / 20000000000000000 : ℚ)
  supportValue := (6085615604441709 / 10000000000000000 : ℚ)
  supportSlope := (-19824893576689817 / 5000000000000000 : ℚ)
  oldCenter := (6085615604441709 / 10000000000000000 : ℚ)
  oldLo := (30399999999999999 / 50000000000000000 : ℚ)
  oldHi := (60899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1425, piece_1426]
}

def cell_8958 : Cell := { cellDefaults with
  domain := ⟨(7301250000000001 / 20000000000000000 : ℚ), (7302500000000001 / 20000000000000000 : ℚ)⟩
  center := (7301875000000001 / 20000000000000000 : ℚ)
  supportValue := (3041569067594881 / 5000000000000000 : ℚ)
  supportSlope := (-990701856983911 / 250000000000000 : ℚ)
  oldCenter := (3041569067594881 / 5000000000000000 : ℚ)
  oldLo := (30399999999999999 / 50000000000000000 : ℚ)
  oldHi := (15212500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1425]
}

def cell_8959 : Cell := { cellDefaults with
  domain := ⟨(7302500000000001 / 20000000000000000 : ℚ), (7303750000000001 / 20000000000000000 : ℚ)⟩
  center := (7303125000000001 / 20000000000000000 : ℚ)
  supportValue := (1216132432553601 / 2000000000000000 : ℚ)
  supportSlope := (-39604071897088033 / 10000000000000000 : ℚ)
  oldCenter := (1216132432553601 / 2000000000000000 : ℚ)
  oldLo := (15187500000000001 / 25000000000000000 : ℚ)
  oldHi := (15212500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1424, piece_1425]
}

def cell_8960 : Cell := { cellDefaults with
  domain := ⟨(7303750000000001 / 20000000000000000 : ℚ), (7305000000000001 / 20000000000000000 : ℚ)⟩
  center := (7304375000000001 / 20000000000000000 : ℚ)
  supportValue := (6078187549714429 / 10000000000000000 : ℚ)
  supportSlope := (-39582477747828193 / 10000000000000000 : ℚ)
  oldCenter := (6078187549714429 / 10000000000000000 : ℚ)
  oldLo := (15187500000000001 / 25000000000000000 : ℚ)
  oldHi := (30399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1424]
}

def cell_8961 : Cell := { cellDefaults with
  domain := ⟨(7305000000000001 / 20000000000000000 : ℚ), (7306250000000001 / 20000000000000000 : ℚ)⟩
  center := (7305625000000001 / 20000000000000000 : ℚ)
  supportValue := (379732151628747 / 625000000000000 : ℚ)
  supportSlope := (-39558411691871243 / 10000000000000000 : ℚ)
  oldCenter := (379732151628747 / 625000000000000 : ℚ)
  oldLo := (6073184357541899 / 10000000000000000 : ℚ)
  oldHi := (30399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1423, piece_1424]
}

def cell_8962 : Cell := { cellDefaults with
  domain := ⟨(7306250000000001 / 20000000000000000 : ℚ), (7307500000000001 / 20000000000000000 : ℚ)⟩
  center := (7306875000000001 / 20000000000000000 : ℚ)
  supportValue := (94894416652863 / 156250000000000 : ℚ)
  supportSlope := (-39536943367721733 / 10000000000000000 : ℚ)
  oldCenter := (94894416652863 / 156250000000000 : ℚ)
  oldLo := (30349999999999999 / 50000000000000000 : ℚ)
  oldHi := (15187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1422, piece_1423]
}

def cell_8963 : Cell := { cellDefaults with
  domain := ⟨(7307500000000001 / 20000000000000000 : ℚ), (7308750000000001 / 20000000000000000 : ℚ)⟩
  center := (7308125000000001 / 20000000000000000 : ℚ)
  supportValue := (6070772387189913 / 10000000000000000 : ℚ)
  supportSlope := (-39512799035499313 / 10000000000000000 : ℚ)
  oldCenter := (6070772387189913 / 10000000000000000 : ℚ)
  oldHi := (6073184357541899 / 10000000000000000 : ℚ)
  oldPieces := [piece_1421, piece_1422]
}

def cell_8964 : Cell := { cellDefaults with
  domain := ⟨(7308750000000001 / 20000000000000000 : ℚ), (7310000000000001 / 20000000000000000 : ℚ)⟩
  center := (7309375000000001 / 20000000000000000 : ℚ)
  supportValue := (6068303476690363 / 10000000000000000 : ℚ)
  supportSlope := (-7898294081776669 / 2000000000000000 : ℚ)
  oldCenter := (6068303476690363 / 10000000000000000 : ℚ)
  oldPieces := [piece_1421]
}

def cell_8965 : Cell := { cellDefaults with
  domain := ⟨(7310000000000001 / 20000000000000000 : ℚ), (7311250000000001 / 20000000000000000 : ℚ)⟩
  r := (73130557426081 / 100000000000000 : ℚ)
  w := (16257245777651 / 10000000000000 : ℚ)
  center := (7310625000000001 / 20000000000000000 : ℚ)
  supportValue := (1518986944651313 / 2500000000000000 : ℚ)
  supportSlope := (-3953350586165527 / 1000000000000000 : ℚ)
  oldCenter := (1518986944651313 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_896
  oldLo := (6073184357541899 / 10000000000000000 : ℚ)
  oldHi := (30399999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1423, piece_1424]
}

def cell_8966 : Cell := { cellDefaults with
  domain := ⟨(7311250000000001 / 20000000000000000 : ℚ), (7312500000000001 / 20000000000000000 : ℚ)⟩
  r := (73130557426081 / 100000000000000 : ℚ)
  w := (16257245777651 / 10000000000000 : ℚ)
  center := (7311875000000001 / 20000000000000000 : ℚ)
  supportValue := (60734775734269 / 100000000000000 : ℚ)
  supportSlope := (-1975625555939331 / 500000000000000 : ℚ)
  oldCenter := (60734775734269 / 100000000000000 : ℚ)
  newCoefficients := coefficients_896
  oldLo := (30349999999999999 / 50000000000000000 : ℚ)
  oldHi := (15187500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1422, piece_1423]
}

def cell_8967 : Cell := { cellDefaults with
  domain := ⟨(7312500000000001 / 20000000000000000 : ℚ), (7313750000000001 / 20000000000000000 : ℚ)⟩
  r := (73130557426081 / 100000000000000 : ℚ)
  w := (16257245777651 / 10000000000000 : ℚ)
  center := (7313125000000001 / 20000000000000000 : ℚ)
  supportValue := (48568070562419 / 80000000000000 : ℚ)
  supportSlope := (-39487984813035837 / 10000000000000000 : ℚ)
  oldCenter := (48568070562419 / 80000000000000 : ℚ)
  newCoefficients := coefficients_896
  oldHi := (6073184357541899 / 10000000000000000 : ℚ)
  oldPieces := [piece_1421, piece_1422]
}

def cell_8968 : Cell := { cellDefaults with
  domain := ⟨(7313750000000001 / 20000000000000000 : ℚ), (7315000000000001 / 20000000000000000 : ℚ)⟩
  r := (73130557426081 / 100000000000000 : ℚ)
  w := (16257245777651 / 10000000000000 : ℚ)
  center := (7314375000000001 / 20000000000000000 : ℚ)
  supportValue := (3034270729588689 / 5000000000000000 : ℚ)
  supportSlope := (-19733567956787823 / 5000000000000000 : ℚ)
  oldCenter := (3034270729588689 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_896
  oldPieces := [piece_1421]
}

def cell_8969 : Cell := { cellDefaults with
  domain := ⟨(7315000000000001 / 20000000000000000 : ℚ), (7316250000000001 / 20000000000000000 : ℚ)⟩
  r := (73130557426081 / 100000000000000 : ℚ)
  w := (16257245777651 / 10000000000000 : ℚ)
  center := (7315625000000001 / 20000000000000000 : ℚ)
  supportValue := (1213215108207437 / 2000000000000000 : ℚ)
  supportSlope := (-19721258116032203 / 5000000000000000 : ℚ)
  oldCenter := (1213215108207437 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_896
  oldLo := (30299999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1420, piece_1421]
}

def cell_8970 : Cell := { cellDefaults with
  domain := ⟨(7316250000000001 / 20000000000000000 : ℚ), (7317500000000001 / 20000000000000000 : ℚ)⟩
  r := (73130557426081 / 100000000000000 : ℚ)
  w := (16257245777651 / 10000000000000 : ℚ)
  center := (7316875000000001 / 20000000000000000 : ℚ)
  supportValue := (6063611020695259 / 10000000000000000 : ℚ)
  supportSlope := (-19710911430905753 / 5000000000000000 : ℚ)
  oldCenter := (6063611020695259 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_896
  oldLo := (30299999999999999 / 50000000000000000 : ℚ)
  oldHi := (15162500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1420]
}

def cell_8971 : Cell := { cellDefaults with
  domain := ⟨(7317500000000001 / 20000000000000000 : ℚ), (7318750000000001 / 20000000000000000 : ℚ)⟩
  r := (73130557426081 / 100000000000000 : ℚ)
  w := (16257245777651 / 10000000000000 : ℚ)
  center := (7318125000000001 / 20000000000000000 : ℚ)
  supportValue := (303057396686439 / 500000000000000 : ℚ)
  supportSlope := (-7879419507133889 / 2000000000000000 : ℚ)
  oldCenter := (303057396686439 / 500000000000000 : ℚ)
  newCoefficients := coefficients_896
  oldLo := (15137500000000001 / 25000000000000000 : ℚ)
  oldHi := (15162500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1419, piece_1420]
}

def cell_8972 : Cell := { cellDefaults with
  domain := ⟨(7318750000000001 / 20000000000000000 : ℚ), (7320000000000001 / 20000000000000000 : ℚ)⟩
  r := (73130557426081 / 100000000000000 : ℚ)
  w := (16257245777651 / 10000000000000 : ℚ)
  center := (7319375000000001 / 20000000000000000 : ℚ)
  supportValue := (757335781381553 / 1250000000000000 : ℚ)
  supportSlope := (-9844142625281549 / 2500000000000000 : ℚ)
  oldCenter := (757335781381553 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_896
  oldLo := (15137500000000001 / 25000000000000000 : ℚ)
  oldHi := (30299999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1419]
}

def cell_8973 : Cell := { cellDefaults with
  domain := ⟨(7320000000000001 / 20000000000000000 : ℚ), (7321250000000001 / 20000000000000000 : ℚ)⟩
  r := (2923205113931 / 4000000000000 : ℚ)
  w := (16249491975549 / 10000000000000 : ℚ)
  center := (7320625000000001 / 20000000000000000 : ℚ)
  supportValue := (3033154884206339 / 5000000000000000 : ℚ)
  supportSlope := (-3941784043284713 / 1000000000000000 : ℚ)
  oldCenter := (3033154884206339 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_897
  oldPieces := [piece_1421]
}

def cell_8974 : Cell := { cellDefaults with
  domain := ⟨(7321250000000001 / 20000000000000000 : ℚ), (7322500000000001 / 20000000000000000 : ℚ)⟩
  r := (2923205113931 / 4000000000000 : ℚ)
  w := (16249491975549 / 10000000000000 : ℚ)
  center := (7321875000000001 / 20000000000000000 : ℚ)
  supportValue := (6063846797487927 / 10000000000000000 : ℚ)
  supportSlope := (-7879469113689197 / 2000000000000000 : ℚ)
  oldCenter := (6063846797487927 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_897
  oldLo := (30299999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1420, piece_1421]
}

def cell_8975 : Cell := { cellDefaults with
  domain := ⟨(7322500000000001 / 20000000000000000 : ℚ), (7323750000000001 / 20000000000000000 : ℚ)⟩
  r := (2923205113931 / 4000000000000 : ℚ)
  w := (16249491975549 / 10000000000000 : ℚ)
  center := (7323125000000001 / 20000000000000000 : ℚ)
  supportValue := (6061385230109457 / 10000000000000000 : ℚ)
  supportSlope := (-3937265397215839 / 1000000000000000 : ℚ)
  oldCenter := (6061385230109457 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_897
  oldLo := (30299999999999999 / 50000000000000000 : ℚ)
  oldHi := (15162500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1420]
}

def cell_8976 : Cell := { cellDefaults with
  domain := ⟨(7323750000000001 / 20000000000000000 : ℚ), (7325000000000001 / 20000000000000000 : ℚ)⟩
  r := (2923205113931 / 4000000000000 : ℚ)
  w := (16249491975549 / 10000000000000 : ℚ)
  center := (7324375000000001 / 20000000000000000 : ℚ)
  supportValue := (6058925091128153 / 10000000000000000 : ℚ)
  supportSlope := (-491900631395481 / 125000000000000 : ℚ)
  oldCenter := (6058925091128153 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_897
  oldLo := (15137500000000001 / 25000000000000000 : ℚ)
  oldHi := (15162500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1419, piece_1420]
}

def cell_8977 : Cell := { cellDefaults with
  domain := ⟨(7325000000000001 / 20000000000000000 : ℚ), (7326250000000001 / 20000000000000000 : ℚ)⟩
  r := (2923205113931 / 4000000000000 : ℚ)
  w := (16249491975549 / 10000000000000 : ℚ)
  center := (7325625000000001 / 20000000000000000 : ℚ)
  supportValue := (1514116586252991 / 2500000000000000 : ℚ)
  supportSlope := (-7865505603021461 / 2000000000000000 : ℚ)
  oldCenter := (1514116586252991 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_897
  oldLo := (15137500000000001 / 25000000000000000 : ℚ)
  oldHi := (30299999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1419]
}

def cell_8978 : Cell := { cellDefaults with
  domain := ⟨(7326250000000001 / 20000000000000000 : ℚ), (7327500000000001 / 20000000000000000 : ℚ)⟩
  r := (2923205113931 / 4000000000000 : ℚ)
  w := (16249491975549 / 10000000000000 : ℚ)
  center := (7326875000000001 / 20000000000000000 : ℚ)
  supportValue := (1513502258718091 / 2500000000000000 : ℚ)
  supportSlope := (-4913350634700997 / 1250000000000000 : ℚ)
  oldCenter := (1513502258718091 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_897
  oldLo := (30249999999999999 / 50000000000000000 : ℚ)
  oldHi := (30299999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1418, piece_1419]
}

def cell_8979 : Cell := { cellDefaults with
  domain := ⟨(7327500000000001 / 20000000000000000 : ℚ), (7328750000000001 / 20000000000000000 : ℚ)⟩
  r := (2923205113931 / 4000000000000 : ℚ)
  w := (16249491975549 / 10000000000000 : ℚ)
  center := (7328125000000001 / 20000000000000000 : ℚ)
  supportValue := (3025776553118763 / 5000000000000000 : ℚ)
  supportSlope := (-392824625604149 / 100000000000000 : ℚ)
  oldCenter := (3025776553118763 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_897
  oldLo := (30249999999999999 / 50000000000000000 : ℚ)
  oldHi := (15137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1418]
}

def cell_8980 : Cell := { cellDefaults with
  domain := ⟨(7328750000000001 / 20000000000000000 : ℚ), (7330000000000001 / 20000000000000000 : ℚ)⟩
  r := (2923205113931 / 4000000000000 : ℚ)
  w := (16249491975549 / 10000000000000 : ℚ)
  center := (7329375000000001 / 20000000000000000 : ℚ)
  supportValue := (1512274655460007 / 2500000000000000 : ℚ)
  supportSlope := (-4907701153586963 / 1250000000000000 : ℚ)
  oldCenter := (1512274655460007 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_897
  oldLo := (15112500000000001 / 25000000000000000 : ℚ)
  oldHi := (15137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1417, piece_1418]
}

def cell_8981 : Cell := { cellDefaults with
  domain := ⟨(7330000000000001 / 20000000000000000 : ℚ), (7331250000000001 / 20000000000000000 : ℚ)⟩
  r := (1825744392921 / 2500000000000 : ℚ)
  w := (16241755690227 / 10000000000000 : ℚ)
  center := (7330625000000001 / 20000000000000000 : ℚ)
  supportValue := (378543839057717 / 625000000000000 : ℚ)
  supportSlope := (-4912904293301601 / 1250000000000000 : ℚ)
  oldCenter := (378543839057717 / 625000000000000 : ℚ)
  newCoefficients := coefficients_898
  oldLo := (15137500000000001 / 25000000000000000 : ℚ)
  oldHi := (30299999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1419]
}

def cell_8982 : Cell := { cellDefaults with
  domain := ⟨(7331250000000001 / 20000000000000000 : ℚ), (7332500000000001 / 20000000000000000 : ℚ)⟩
  r := (1825744392921 / 2500000000000 : ℚ)
  w := (16241755690227 / 10000000000000 : ℚ)
  center := (7331875000000001 / 20000000000000000 : ℚ)
  supportValue := (1210849131720053 / 2000000000000000 : ℚ)
  supportSlope := (-7856425653749 / 2000000000000 : ℚ)
  oldCenter := (1210849131720053 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_898
  oldLo := (30249999999999999 / 50000000000000000 : ℚ)
  oldHi := (30299999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1418, piece_1419]
}

def cell_8983 : Cell := { cellDefaults with
  domain := ⟨(7332500000000001 / 20000000000000000 : ℚ), (7333750000000001 / 20000000000000000 : ℚ)⟩
  r := (1825744392921 / 2500000000000 : ℚ)
  w := (16241755690227 / 10000000000000 : ℚ)
  center := (7333125000000001 / 20000000000000000 : ℚ)
  supportValue := (1210358248748417 / 2000000000000000 : ℚ)
  supportSlope := (-9814566718180373 / 2500000000000000 : ℚ)
  oldCenter := (1210358248748417 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_898
  oldLo := (30249999999999999 / 50000000000000000 : ℚ)
  oldHi := (15137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1418]
}

def cell_8984 : Cell := { cellDefaults with
  domain := ⟨(7333750000000001 / 20000000000000000 : ℚ), (7335000000000001 / 20000000000000000 : ℚ)⟩
  r := (1825744392921 / 2500000000000 : ℚ)
  w := (16241755690227 / 10000000000000 : ℚ)
  center := (7334375000000001 / 20000000000000000 : ℚ)
  supportValue := (6049338297441973 / 10000000000000000 : ℚ)
  supportSlope := (-19618511943555461 / 5000000000000000 : ℚ)
  oldCenter := (6049338297441973 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_898
  oldLo := (15112500000000001 / 25000000000000000 : ℚ)
  oldHi := (15137500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1417, piece_1418]
}

def cell_8985 : Cell := { cellDefaults with
  domain := ⟨(7335000000000001 / 20000000000000000 : ℚ), (7336250000000001 / 20000000000000000 : ℚ)⟩
  r := (1825744392921 / 2500000000000 : ℚ)
  w := (16241755690227 / 10000000000000 : ℚ)
  center := (7335625000000001 / 20000000000000000 : ℚ)
  supportValue := (6046886690168927 / 10000000000000000 : ℚ)
  supportSlope := (-19606679847417041 / 5000000000000000 : ℚ)
  oldCenter := (6046886690168927 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_898
  oldLo := (15112500000000001 / 25000000000000000 : ℚ)
  oldHi := (30249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1417]
}

def cell_8986 : Cell := { cellDefaults with
  domain := ⟨(7336250000000001 / 20000000000000000 : ℚ), (7337500000000001 / 20000000000000000 : ℚ)⟩
  r := (1825744392921 / 2500000000000 : ℚ)
  w := (16241755690227 / 10000000000000 : ℚ)
  center := (7336875000000001 / 20000000000000000 : ℚ)
  supportValue := (6044436560808871 / 10000000000000000 : ℚ)
  supportSlope := (-783839376563833 / 200000000000000 : ℚ)
  oldCenter := (6044436560808871 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_898
  oldLo := (30199999999999999 / 50000000000000000 : ℚ)
  oldHi := (30249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1416, piece_1417]
}

def cell_8987 : Cell := { cellDefaults with
  domain := ⟨(7337500000000001 / 20000000000000000 : ℚ), (7338750000000001 / 20000000000000000 : ℚ)⟩
  r := (1825744392921 / 2500000000000 : ℚ)
  w := (16241755690227 / 10000000000000 : ℚ)
  center := (7338125000000001 / 20000000000000000 : ℚ)
  supportValue := (1510496939338327 / 2500000000000000 : ℚ)
  supportSlope := (-3916851280713729 / 1000000000000000 : ℚ)
  oldCenter := (1510496939338327 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_898
  oldLo := (30199999999999999 / 50000000000000000 : ℚ)
  oldHi := (15112500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1416]
}

def cell_8988 : Cell := { cellDefaults with
  domain := ⟨(7338750000000001 / 20000000000000000 : ℚ), (7340000000000001 / 20000000000000000 : ℚ)⟩
  r := (1825744392921 / 2500000000000 : ℚ)
  w := (16241755690227 / 10000000000000 : ℚ)
  center := (7339375000000001 / 20000000000000000 : ℚ)
  supportValue := (6039540441824091 / 10000000000000000 : ℚ)
  supportSlope := (-3914696400403983 / 1000000000000000 : ℚ)
  oldCenter := (6039540441824091 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_898
  oldLo := (15087500000000001 / 25000000000000000 : ℚ)
  oldHi := (15112500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1415, piece_1416]
}

def cell_8989 : Cell := { cellDefaults with
  domain := ⟨(7340000000000001 / 20000000000000000 : ℚ), (7341250000000001 / 20000000000000000 : ℚ)⟩
  r := (7297950084969 / 10000000000000 : ℚ)
  w := (8117018164187 / 5000000000000 : ℚ)
  center := (7340625000000001 / 20000000000000000 : ℚ)
  supportValue := (755890353488917 / 1250000000000000 : ℚ)
  supportSlope := (-12246612375999 / 3125000000000 : ℚ)
  oldCenter := (755890353488917 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_899
  oldLo := (15112500000000001 / 25000000000000000 : ℚ)
  oldHi := (30249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1417]
}

def cell_8990 : Cell := { cellDefaults with
  domain := ⟨(7341250000000001 / 20000000000000000 : ℚ), (7342500000000001 / 20000000000000000 : ℚ)⟩
  r := (7297950084969 / 10000000000000 : ℚ)
  w := (8117018164187 / 5000000000000 : ℚ)
  center := (7341875000000001 / 20000000000000000 : ℚ)
  supportValue := (6044674236756313 / 10000000000000000 : ℚ)
  supportSlope := (-39167381792388767 / 10000000000000000 : ℚ)
  oldCenter := (6044674236756313 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_899
  oldLo := (30199999999999999 / 50000000000000000 : ℚ)
  oldHi := (30249999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1416, piece_1417]
}

def cell_8991 : Cell := { cellDefaults with
  domain := ⟨(7342500000000001 / 20000000000000000 : ℚ), (7343750000000001 / 20000000000000000 : ℚ)⟩
  r := (7297950084969 / 10000000000000 : ℚ)
  w := (8117018164187 / 5000000000000 : ℚ)
  center := (7343125000000001 / 20000000000000000 : ℚ)
  supportValue := (755278367653823 / 1250000000000000 : ℚ)
  supportSlope := (-3914441065813179 / 1000000000000000 : ℚ)
  oldCenter := (755278367653823 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_899
  oldLo := (30199999999999999 / 50000000000000000 : ℚ)
  oldHi := (15112500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1416]
}

def cell_8992 : Cell := { cellDefaults with
  domain := ⟨(7343750000000001 / 20000000000000000 : ℚ), (7345000000000001 / 20000000000000000 : ℚ)⟩
  r := (7297950084969 / 10000000000000 : ℚ)
  w := (8117018164187 / 5000000000000 : ℚ)
  center := (7344375000000001 / 20000000000000000 : ℚ)
  supportValue := (3019890579101993 / 5000000000000000 : ℚ)
  supportSlope := (-7824493674100097 / 2000000000000000 : ℚ)
  oldCenter := (3019890579101993 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_899
  oldLo := (15087500000000001 / 25000000000000000 : ℚ)
  oldHi := (15112500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1415, piece_1416]
}

def cell_8993 : Cell := { cellDefaults with
  domain := ⟨(7345000000000001 / 20000000000000000 : ℚ), (7346250000000001 / 20000000000000000 : ℚ)⟩
  r := (7297950084969 / 10000000000000 : ℚ)
  w := (8117018164187 / 5000000000000 : ℚ)
  center := (7345625000000001 / 20000000000000000 : ℚ)
  supportValue := (3018668328295827 / 5000000000000000 : ℚ)
  supportSlope := (-977493003587071 / 250000000000000 : ℚ)
  oldCenter := (3018668328295827 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_899
  oldLo := (15087500000000001 / 25000000000000000 : ℚ)
  oldHi := (30199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1415]
}

def cell_8994 : Cell := { cellDefaults with
  domain := ⟨(7346250000000001 / 20000000000000000 : ℚ), (7347500000000001 / 20000000000000000 : ℚ)⟩
  r := (7297950084969 / 10000000000000 : ℚ)
  w := (8117018164187 / 5000000000000 : ℚ)
  center := (7346875000000001 / 20000000000000000 : ℚ)
  supportValue := (6034893678864799 / 10000000000000000 : ℚ)
  supportSlope := (-3907760041578001 / 1000000000000000 : ℚ)
  oldCenter := (6034893678864799 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_899
  oldLo := (30149999999999999 / 50000000000000000 : ℚ)
  oldHi := (30199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1414, piece_1415]
}

def cell_8995 : Cell := { cellDefaults with
  domain := ⟨(7347500000000001 / 20000000000000000 : ℚ), (7348750000000001 / 20000000000000000 : ℚ)⟩
  r := (7297950084969 / 10000000000000 : ℚ)
  w := (8117018164187 / 5000000000000 : ℚ)
  center := (7348125000000001 / 20000000000000000 : ℚ)
  supportValue := (603245196755699 / 1000000000000000 : ℚ)
  supportSlope := (-781101743966417 / 200000000000000 : ℚ)
  oldCenter := (603245196755699 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_899
  oldLo := (30149999999999999 / 50000000000000000 : ℚ)
  oldHi := (15087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1414]
}

def cell_8996 : Cell := { cellDefaults with
  domain := ⟨(7348750000000001 / 20000000000000000 : ℚ), (7350000000000001 / 20000000000000000 : ℚ)⟩
  r := (7297950084969 / 10000000000000 : ℚ)
  w := (8117018164187 / 5000000000000 : ℚ)
  center := (7349375000000001 / 20000000000000000 : ℚ)
  supportValue := (301500589555819 / 500000000000000 : ℚ)
  supportSlope := (-39032775039409273 / 10000000000000000 : ℚ)
  oldCenter := (301500589555819 / 500000000000000 : ℚ)
  newCoefficients := coefficients_899
  oldLo := (15062500000000001 / 25000000000000000 : ℚ)
  oldHi := (15087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1413, piece_1414]
}

def cell_8997 : Cell := { cellDefaults with
  domain := ⟨(7350000000000001 / 20000000000000000 : ℚ), (7351250000000001 / 20000000000000000 : ℚ)⟩
  r := (72929304697121 / 100000000000000 : ℚ)
  w := (16226334041991 / 10000000000000 : ℚ)
  center := (7350625000000001 / 20000000000000000 : ℚ)
  supportValue := (6037573529745237 / 10000000000000000 : ℚ)
  supportSlope := (-976890287306631 / 250000000000000 : ℚ)
  oldCenter := (6037573529745237 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_900
  oldLo := (15087500000000001 / 25000000000000000 : ℚ)
  oldHi := (30199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1415]
}

def cell_8998 : Cell := { cellDefaults with
  domain := ⟨(7351250000000001 / 20000000000000000 : ℚ), (7352500000000001 / 20000000000000000 : ℚ)⟩
  r := (72929304697121 / 100000000000000 : ℚ)
  w := (16226334041991 / 10000000000000 : ℚ)
  center := (7351875000000001 / 20000000000000000 : ℚ)
  supportValue := (6035132069739017 / 10000000000000000 : ℚ)
  supportSlope := (-39053100800217067 / 10000000000000000 : ℚ)
  oldCenter := (6035132069739017 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_900
  oldLo := (30149999999999999 / 50000000000000000 : ℚ)
  oldHi := (30199999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1414, piece_1415]
}

def cell_8999 : Cell := { cellDefaults with
  domain := ⟨(7352500000000001 / 20000000000000000 : ℚ), (7353750000000001 / 20000000000000000 : ℚ)⟩
  r := (72929304697121 / 100000000000000 : ℚ)
  w := (16226334041991 / 10000000000000 : ℚ)
  center := (7353125000000001 / 20000000000000000 : ℚ)
  supportValue := (3016345937832273 / 5000000000000000 : ℚ)
  supportSlope := (-7806215311603637 / 2000000000000000 : ℚ)
  oldCenter := (3016345937832273 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_900
  oldLo := (30149999999999999 / 50000000000000000 : ℚ)
  oldHi := (15087500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1414]
}

theorem check_8950 : cell_8950.check = true := by
  decide +kernel

theorem check_8951 : cell_8951.check = true := by
  decide +kernel

theorem check_8952 : cell_8952.check = true := by
  decide +kernel

theorem check_8953 : cell_8953.check = true := by
  decide +kernel

theorem check_8954 : cell_8954.check = true := by
  decide +kernel

theorem check_8955 : cell_8955.check = true := by
  decide +kernel

theorem check_8956 : cell_8956.check = true := by
  decide +kernel

theorem check_8957 : cell_8957.check = true := by
  decide +kernel

theorem check_8958 : cell_8958.check = true := by
  decide +kernel

theorem check_8959 : cell_8959.check = true := by
  decide +kernel

theorem check_8960 : cell_8960.check = true := by
  decide +kernel

theorem check_8961 : cell_8961.check = true := by
  decide +kernel

theorem check_8962 : cell_8962.check = true := by
  decide +kernel

theorem check_8963 : cell_8963.check = true := by
  decide +kernel

theorem check_8964 : cell_8964.check = true := by
  decide +kernel

theorem check_8965 : cell_8965.check = true := by
  decide +kernel

theorem check_8966 : cell_8966.check = true := by
  decide +kernel

theorem check_8967 : cell_8967.check = true := by
  decide +kernel

theorem check_8968 : cell_8968.check = true := by
  decide +kernel

theorem check_8969 : cell_8969.check = true := by
  decide +kernel

theorem check_8970 : cell_8970.check = true := by
  decide +kernel

theorem check_8971 : cell_8971.check = true := by
  decide +kernel

theorem check_8972 : cell_8972.check = true := by
  decide +kernel

theorem check_8973 : cell_8973.check = true := by
  decide +kernel

theorem check_8974 : cell_8974.check = true := by
  decide +kernel

theorem check_8975 : cell_8975.check = true := by
  decide +kernel

theorem check_8976 : cell_8976.check = true := by
  decide +kernel

theorem check_8977 : cell_8977.check = true := by
  decide +kernel

theorem check_8978 : cell_8978.check = true := by
  decide +kernel

theorem check_8979 : cell_8979.check = true := by
  decide +kernel

theorem check_8980 : cell_8980.check = true := by
  decide +kernel

theorem check_8981 : cell_8981.check = true := by
  decide +kernel

theorem check_8982 : cell_8982.check = true := by
  decide +kernel

theorem check_8983 : cell_8983.check = true := by
  decide +kernel

theorem check_8984 : cell_8984.check = true := by
  decide +kernel

theorem check_8985 : cell_8985.check = true := by
  decide +kernel

theorem check_8986 : cell_8986.check = true := by
  decide +kernel

theorem check_8987 : cell_8987.check = true := by
  decide +kernel

theorem check_8988 : cell_8988.check = true := by
  decide +kernel

theorem check_8989 : cell_8989.check = true := by
  decide +kernel

theorem check_8990 : cell_8990.check = true := by
  decide +kernel

theorem check_8991 : cell_8991.check = true := by
  decide +kernel

theorem check_8992 : cell_8992.check = true := by
  decide +kernel

theorem check_8993 : cell_8993.check = true := by
  decide +kernel

theorem check_8994 : cell_8994.check = true := by
  decide +kernel

theorem check_8995 : cell_8995.check = true := by
  decide +kernel

theorem check_8996 : cell_8996.check = true := by
  decide +kernel

theorem check_8997 : cell_8997.check = true := by
  decide +kernel

theorem check_8998 : cell_8998.check = true := by
  decide +kernel

theorem check_8999 : cell_8999.check = true := by
  decide +kernel

def cells : List Cell := [cell_8950, cell_8951, cell_8952, cell_8953, cell_8954, cell_8955, cell_8956, cell_8957, cell_8958, cell_8959, cell_8960, cell_8961, cell_8962, cell_8963, cell_8964, cell_8965, cell_8966, cell_8967, cell_8968, cell_8969, cell_8970, cell_8971, cell_8972, cell_8973, cell_8974, cell_8975, cell_8976, cell_8977, cell_8978, cell_8979, cell_8980, cell_8981, cell_8982, cell_8983, cell_8984, cell_8985, cell_8986, cell_8987, cell_8988, cell_8989, cell_8990, cell_8991, cell_8992, cell_8993, cell_8994, cell_8995, cell_8996, cell_8997, cell_8998, cell_8999]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_8950, check_8951, check_8952, check_8953, check_8954, check_8955, check_8956, check_8957, check_8958, check_8959, check_8960, check_8961, check_8962, check_8963, check_8964, check_8965, check_8966, check_8967, check_8968, check_8969, check_8970, check_8971, check_8972, check_8973, check_8974, check_8975, check_8976, check_8977, check_8978, check_8979, check_8980, check_8981, check_8982, check_8983, check_8984, check_8985, check_8986, check_8987, check_8988, check_8989, check_8990, check_8991, check_8992, check_8993, check_8994, check_8995, check_8996, check_8997, check_8998, check_8999, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0179

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0179
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0179
open AnalyticBounds.ExpressionCertificate

theorem linked_8950 : Linked cell_8950 pieces := by
  link_source cell_8950 with piece_894 using piece_894_mem, piece_1427_mem

theorem linked_8951 : Linked cell_8951 pieces := by
  link_source cell_8951 with piece_894 using piece_894_mem, ⟨piece_1426_mem, piece_1427_mem⟩

theorem linked_8952 : Linked cell_8952 pieces := by
  link_source cell_8952 with piece_894 using piece_894_mem, piece_1426_mem

theorem linked_8953 : Linked cell_8953 pieces := by
  link_source cell_8953 with piece_894 using piece_894_mem, ⟨piece_1425_mem, piece_1426_mem⟩

theorem linked_8954 : Linked cell_8954 pieces := by
  link_source cell_8954 with piece_894 using piece_894_mem, piece_1425_mem

theorem linked_8955 : Linked cell_8955 pieces := by
  link_source cell_8955 with piece_894 using piece_894_mem, ⟨piece_1424_mem, piece_1425_mem⟩

theorem linked_8956 : Linked cell_8956 pieces := by
  link_source cell_8956 with piece_894 using piece_894_mem, piece_1424_mem

theorem linked_8957 : Linked cell_8957 pieces := by
  link_source cell_8957 with piece_895 using piece_895_mem, ⟨piece_1425_mem, piece_1426_mem⟩

theorem linked_8958 : Linked cell_8958 pieces := by
  link_source cell_8958 with piece_895 using piece_895_mem, piece_1425_mem

theorem linked_8959 : Linked cell_8959 pieces := by
  link_source cell_8959 with piece_895 using piece_895_mem, ⟨piece_1424_mem, piece_1425_mem⟩

theorem linked_8960 : Linked cell_8960 pieces := by
  link_source cell_8960 with piece_895 using piece_895_mem, piece_1424_mem

theorem linked_8961 : Linked cell_8961 pieces := by
  link_source cell_8961 with piece_895 using piece_895_mem, ⟨piece_1423_mem, piece_1424_mem⟩

theorem linked_8962 : Linked cell_8962 pieces := by
  link_source cell_8962 with piece_895 using piece_895_mem, ⟨piece_1422_mem, piece_1423_mem⟩

theorem linked_8963 : Linked cell_8963 pieces := by
  link_source cell_8963 with piece_895 using piece_895_mem, ⟨piece_1421_mem, piece_1422_mem⟩

theorem linked_8964 : Linked cell_8964 pieces := by
  link_source cell_8964 with piece_895 using piece_895_mem, piece_1421_mem

theorem linked_8965 : Linked cell_8965 pieces := by
  link_source cell_8965 with piece_896 using piece_896_mem, ⟨piece_1423_mem, piece_1424_mem⟩

theorem linked_8966 : Linked cell_8966 pieces := by
  link_source cell_8966 with piece_896 using piece_896_mem, ⟨piece_1422_mem, piece_1423_mem⟩

theorem linked_8967 : Linked cell_8967 pieces := by
  link_source cell_8967 with piece_896 using piece_896_mem, ⟨piece_1421_mem, piece_1422_mem⟩

theorem linked_8968 : Linked cell_8968 pieces := by
  link_source cell_8968 with piece_896 using piece_896_mem, piece_1421_mem

theorem linked_8969 : Linked cell_8969 pieces := by
  link_source cell_8969 with piece_896 using piece_896_mem, ⟨piece_1420_mem, piece_1421_mem⟩

theorem linked_8970 : Linked cell_8970 pieces := by
  link_source cell_8970 with piece_896 using piece_896_mem, piece_1420_mem

theorem linked_8971 : Linked cell_8971 pieces := by
  link_source cell_8971 with piece_896 using piece_896_mem, ⟨piece_1419_mem, piece_1420_mem⟩

theorem linked_8972 : Linked cell_8972 pieces := by
  link_source cell_8972 with piece_896 using piece_896_mem, piece_1419_mem

theorem linked_8973 : Linked cell_8973 pieces := by
  link_source cell_8973 with piece_897 using piece_897_mem, piece_1421_mem

theorem linked_8974 : Linked cell_8974 pieces := by
  link_source cell_8974 with piece_897 using piece_897_mem, ⟨piece_1420_mem, piece_1421_mem⟩

theorem linked_8975 : Linked cell_8975 pieces := by
  link_source cell_8975 with piece_897 using piece_897_mem, piece_1420_mem

theorem linked_8976 : Linked cell_8976 pieces := by
  link_source cell_8976 with piece_897 using piece_897_mem, ⟨piece_1419_mem, piece_1420_mem⟩

theorem linked_8977 : Linked cell_8977 pieces := by
  link_source cell_8977 with piece_897 using piece_897_mem, piece_1419_mem

theorem linked_8978 : Linked cell_8978 pieces := by
  link_source cell_8978 with piece_897 using piece_897_mem, ⟨piece_1418_mem, piece_1419_mem⟩

theorem linked_8979 : Linked cell_8979 pieces := by
  link_source cell_8979 with piece_897 using piece_897_mem, piece_1418_mem

theorem linked_8980 : Linked cell_8980 pieces := by
  link_source cell_8980 with piece_897 using piece_897_mem, ⟨piece_1417_mem, piece_1418_mem⟩

theorem linked_8981 : Linked cell_8981 pieces := by
  link_source cell_8981 with piece_898 using piece_898_mem, piece_1419_mem

theorem linked_8982 : Linked cell_8982 pieces := by
  link_source cell_8982 with piece_898 using piece_898_mem, ⟨piece_1418_mem, piece_1419_mem⟩

theorem linked_8983 : Linked cell_8983 pieces := by
  link_source cell_8983 with piece_898 using piece_898_mem, piece_1418_mem

theorem linked_8984 : Linked cell_8984 pieces := by
  link_source cell_8984 with piece_898 using piece_898_mem, ⟨piece_1417_mem, piece_1418_mem⟩

theorem linked_8985 : Linked cell_8985 pieces := by
  link_source cell_8985 with piece_898 using piece_898_mem, piece_1417_mem

theorem linked_8986 : Linked cell_8986 pieces := by
  link_source cell_8986 with piece_898 using piece_898_mem, ⟨piece_1416_mem, piece_1417_mem⟩

theorem linked_8987 : Linked cell_8987 pieces := by
  link_source cell_8987 with piece_898 using piece_898_mem, piece_1416_mem

theorem linked_8988 : Linked cell_8988 pieces := by
  link_source cell_8988 with piece_898 using piece_898_mem, ⟨piece_1415_mem, piece_1416_mem⟩

theorem linked_8989 : Linked cell_8989 pieces := by
  link_source cell_8989 with piece_899 using piece_899_mem, piece_1417_mem

theorem linked_8990 : Linked cell_8990 pieces := by
  link_source cell_8990 with piece_899 using piece_899_mem, ⟨piece_1416_mem, piece_1417_mem⟩

theorem linked_8991 : Linked cell_8991 pieces := by
  link_source cell_8991 with piece_899 using piece_899_mem, piece_1416_mem

theorem linked_8992 : Linked cell_8992 pieces := by
  link_source cell_8992 with piece_899 using piece_899_mem, ⟨piece_1415_mem, piece_1416_mem⟩

theorem linked_8993 : Linked cell_8993 pieces := by
  link_source cell_8993 with piece_899 using piece_899_mem, piece_1415_mem

theorem linked_8994 : Linked cell_8994 pieces := by
  link_source cell_8994 with piece_899 using piece_899_mem, ⟨piece_1414_mem, piece_1415_mem⟩

theorem linked_8995 : Linked cell_8995 pieces := by
  link_source cell_8995 with piece_899 using piece_899_mem, piece_1414_mem

theorem linked_8996 : Linked cell_8996 pieces := by
  link_source cell_8996 with piece_899 using piece_899_mem, ⟨piece_1413_mem, piece_1414_mem⟩

theorem linked_8997 : Linked cell_8997 pieces := by
  link_source cell_8997 with piece_900 using piece_900_mem, piece_1415_mem

theorem linked_8998 : Linked cell_8998 pieces := by
  link_source cell_8998 with piece_900 using piece_900_mem, ⟨piece_1414_mem, piece_1415_mem⟩

theorem linked_8999 : Linked cell_8999 pieces := by
  link_source cell_8999 with piece_900 using piece_900_mem, piece_1414_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0179.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0179.cells,List.forall_mem_cons]
  exact ⟨linked_8950, linked_8951, linked_8952, linked_8953, linked_8954, linked_8955, linked_8956, linked_8957, linked_8958, linked_8959, linked_8960, linked_8961, linked_8962, linked_8963, linked_8964, linked_8965, linked_8966, linked_8967, linked_8968, linked_8969, linked_8970, linked_8971, linked_8972, linked_8973, linked_8974, linked_8975, linked_8976, linked_8977, linked_8978, linked_8979, linked_8980, linked_8981, linked_8982, linked_8983, linked_8984, linked_8985, linked_8986, linked_8987, linked_8988, linked_8989, linked_8990, linked_8991, linked_8992, linked_8993, linked_8994, linked_8995, linked_8996, linked_8997, linked_8998, linked_8999, by simp⟩

theorem covered : covers (7291250000000001 / 20000000000000000 : ℚ) (7353750000000001 / 20000000000000000 : ℚ)
    (SourceCertificates.Chunk0179.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0179
end
