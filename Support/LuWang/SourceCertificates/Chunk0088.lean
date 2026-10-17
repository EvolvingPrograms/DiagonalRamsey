import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0088
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(13193750000000001 / 100000000000000000 : ℚ), (13196875000000001 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (10273864569607 / 10000000000000 : ℚ)
  w := (19779018403251 / 20000000000000 : ℚ)
  center := (13195312500000001 / 100000000000000000 : ℚ)
  supportValue := (458043801433873 / 1000000000000000 : ℚ)
  supportSlope := (2345113257392839 / 500000000000000 : ℚ)
  oldCenter := (458043801433873 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_387
  oldLo := (22975000000000001 / 50000000000000000 : ℚ)
  oldHi := (23125000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1106]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_4400 : Cell := { cellDefaults with
  r := (10285702574399 / 10000000000000 : ℚ)
  w := (98869839291317 / 100000000000000 : ℚ)
  newCoefficients := coefficients_386
  oldLo := (22875000000000001 / 50000000000000000 : ℚ)
  oldHi := (22925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1096, piece_1097, piece_1098]
}

def cell_4401 : Cell := { cellDefaults with
  domain := ⟨(13196875000000001 / 100000000000000000 : ℚ), (13200000000000001 / 100000000000000000 : ℚ)⟩
  r := (10285702574399 / 10000000000000 : ℚ)
  w := (98869839291317 / 100000000000000 : ℚ)
  center := (13198437500000001 / 100000000000000000 : ℚ)
  supportValue := (22909518996322567 / 50000000000000000 : ℚ)
  supportSlope := (938224973963031 / 200000000000000 : ℚ)
  oldCenter := (22909518996322567 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_386
  oldLo := (22900000000000001 / 50000000000000000 : ℚ)
  oldHi := (22925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1098]
}

def cell_4402 : Cell := { cellDefaults with
  domain := ⟨(13200000000000001 / 100000000000000000 : ℚ), (13203125000000001 / 100000000000000000 : ℚ)⟩
  center := (13201562500000001 / 100000000000000000 : ℚ)
  supportValue := (45800702222452233 / 100000000000000000 : ℚ)
  supportSlope := (4688378771911417 / 1000000000000000 : ℚ)
  oldCenter := (45800702222452233 / 100000000000000000 : ℚ)
  oldLo := (22875000000000001 / 50000000000000000 : ℚ)
  oldHi := (22925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1096, piece_1097, piece_1098]
}

def cell_4403 : Cell := { cellDefaults with
  domain := ⟨(13203125000000001 / 100000000000000000 : ℚ), (13206250000000001 / 100000000000000000 : ℚ)⟩
  center := (13204687500000001 / 100000000000000000 : ℚ)
  supportValue := (9163070605481799 / 20000000000000000 : ℚ)
  supportSlope := (1875548634293267 / 400000000000000 : ℚ)
  oldCenter := (9163070605481799 / 20000000000000000 : ℚ)
  oldLo := (22900000000000001 / 50000000000000000 : ℚ)
  oldHi := (22925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1098]
}

def cell_4404 : Cell := { cellDefaults with
  domain := ⟨(13206250000000001 / 100000000000000000 : ℚ), (13209375000000001 / 100000000000000000 : ℚ)⟩
  center := (13207812500000001 / 100000000000000000 : ℚ)
  supportValue := (143218773962713 / 312500000000000 : ℚ)
  supportSlope := (938019947555091 / 200000000000000 : ℚ)
  oldCenter := (143218773962713 / 312500000000000 : ℚ)
  oldLo := (22900000000000001 / 50000000000000000 : ℚ)
  oldHi := (22925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1098]
}

def cell_4405 : Cell := { cellDefaults with
  domain := ⟨(13209375000000001 / 100000000000000000 : ℚ), (13212500000000001 / 100000000000000000 : ℚ)⟩
  center := (13210937500000001 / 100000000000000000 : ℚ)
  supportValue := (9168933229795313 / 20000000000000000 : ℚ)
  supportSlope := (2345554164109309 / 500000000000000 : ℚ)
  oldCenter := (9168933229795313 / 20000000000000000 : ℚ)
  oldLo := (22900000000000001 / 50000000000000000 : ℚ)
  oldHi := (22950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1098, piece_1099]
}

def cell_4406 : Cell := { cellDefaults with
  domain := ⟨(13212500000000001 / 100000000000000000 : ℚ), (13215625000000001 / 100000000000000000 : ℚ)⟩
  center := (13214062500000001 / 100000000000000000 : ℚ)
  supportValue := (1146483131247931 / 2500000000000000 : ℚ)
  supportSlope := (11727341228926491 / 2500000000000000 : ℚ)
  oldCenter := (1146483131247931 / 2500000000000000 : ℚ)
  oldLo := (22925000000000001 / 50000000000000000 : ℚ)
  oldHi := (22950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1099]
}

def cell_4407 : Cell := { cellDefaults with
  domain := ⟨(13215625000000001 / 100000000000000000 : ℚ), (13218750000000001 / 100000000000000000 : ℚ)⟩
  center := (13217187500000001 / 100000000000000000 : ℚ)
  supportValue := (45873986337087763 / 100000000000000000 : ℚ)
  supportSlope := (938432119278687 / 200000000000000 : ℚ)
  oldCenter := (45873986337087763 / 100000000000000000 : ℚ)
  oldLo := (22925000000000001 / 50000000000000000 : ℚ)
  oldHi := (22950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1099]
}

def cell_4408 : Cell := { cellDefaults with
  domain := ⟨(13218750000000001 / 100000000000000000 : ℚ), (13221875000000001 / 100000000000000000 : ℚ)⟩
  center := (13220312500000001 / 100000000000000000 : ℚ)
  supportValue := (229443256259199 / 500000000000000 : ℚ)
  supportSlope := (938677228937479 / 200000000000000 : ℚ)
  oldCenter := (229443256259199 / 500000000000000 : ℚ)
  oldLo := (22925000000000001 / 50000000000000000 : ℚ)
  oldHi := (22950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1099]
}

def cell_4409 : Cell := { cellDefaults with
  domain := ⟨(13221875000000001 / 100000000000000000 : ℚ), (13225000000000001 / 100000000000000000 : ℚ)⟩
  center := (13223437500000001 / 100000000000000000 : ℚ)
  supportValue := (573791485719201 / 1250000000000000 : ℚ)
  supportSlope := (938688162427681 / 200000000000000 : ℚ)
  oldCenter := (573791485719201 / 1250000000000000 : ℚ)
  oldLo := (22925000000000001 / 50000000000000000 : ℚ)
  oldHi := (22975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1099, piece_1100]
}

def cell_4410 : Cell := { cellDefaults with
  domain := ⟨(13225000000000001 / 100000000000000000 : ℚ), (13228125000000001 / 100000000000000000 : ℚ)⟩
  center := (13226562500000001 / 100000000000000000 : ℚ)
  supportValue := (1147949659747591 / 2500000000000000 : ℚ)
  supportSlope := (938844231020397 / 200000000000000 : ℚ)
  oldCenter := (1147949659747591 / 2500000000000000 : ℚ)
  oldLo := (22950000000000001 / 50000000000000000 : ℚ)
  oldHi := (22975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1100]
}

def cell_4411 : Cell := { cellDefaults with
  domain := ⟨(13228125000000001 / 100000000000000000 : ℚ), (13231250000000001 / 100000000000000000 : ℚ)⟩
  center := (13229687500000001 / 100000000000000000 : ℚ)
  supportValue := (45932657737939797 / 100000000000000000 : ℚ)
  supportSlope := (234772144259221 / 50000000000000 : ℚ)
  oldCenter := (45932657737939797 / 100000000000000000 : ℚ)
  oldLo := (22950000000000001 / 50000000000000000 : ℚ)
  oldHi := (22975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1100]
}

def cell_4412 : Cell := { cellDefaults with
  domain := ⟨(13231250000000001 / 100000000000000000 : ℚ), (13234375000000001 / 100000000000000000 : ℚ)⟩
  center := (13232812500000001 / 100000000000000000 : ℚ)
  supportValue := (22973666453060887 / 50000000000000000 : ℚ)
  supportSlope := (4696154999905389 / 1000000000000000 : ℚ)
  oldCenter := (22973666453060887 / 50000000000000000 : ℚ)
  oldLo := (22950000000000001 / 50000000000000000 : ℚ)
  oldHi := (23000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1100, piece_1101]
}

def cell_4413 : Cell := { cellDefaults with
  domain := ⟨(13234375000000001 / 100000000000000000 : ℚ), (13237500000000001 / 100000000000000000 : ℚ)⟩
  center := (13235937500000001 / 100000000000000000 : ℚ)
  supportValue := (11490501947626959 / 25000000000000000 : ℚ)
  supportSlope := (9392562744629629 / 2000000000000000 : ℚ)
  oldCenter := (11490501947626959 / 25000000000000000 : ℚ)
  oldHi := (23000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1101]
}

def cell_4414 : Cell := { cellDefaults with
  domain := ⟨(13237500000000001 / 100000000000000000 : ℚ), (13240625000000001 / 100000000000000000 : ℚ)⟩
  center := (13239062500000001 / 100000000000000000 : ℚ)
  supportValue := (45976685571052217 / 100000000000000000 : ℚ)
  supportSlope := (2348749735365807 / 500000000000000 : ℚ)
  oldCenter := (45976685571052217 / 100000000000000000 : ℚ)
  oldHi := (23000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1101]
}

def cell_4415 : Cell := { cellDefaults with
  domain := ⟨(13240625000000001 / 100000000000000000 : ℚ), (13243750000000001 / 100000000000000000 : ℚ)⟩
  center := (13242187500000001 / 100000000000000000 : ℚ)
  supportValue := (22456722246277 / 48828125000000 : ℚ)
  supportSlope := (293669936974883 / 62500000000000 : ℚ)
  oldCenter := (22456722246277 / 48828125000000 : ℚ)
  oldHi := (23000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1101]
}

def cell_4416 : Cell := { cellDefaults with
  domain := ⟨(13243750000000001 / 100000000000000000 : ℚ), (13246875000000001 / 100000000000000000 : ℚ)⟩
  center := (13245312500000001 / 100000000000000000 : ℚ)
  supportValue := (4600605050491339 / 10000000000000000 : ℚ)
  supportSlope := (4698481170507307 / 1000000000000000 : ℚ)
  oldCenter := (4600605050491339 / 10000000000000000 : ℚ)
  oldHi := (23025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1101, piece_1102]
}

def cell_4417 : Cell := { cellDefaults with
  domain := ⟨(13246875000000001 / 100000000000000000 : ℚ), (13250000000000001 / 100000000000000000 : ℚ)⟩
  center := (13248437500000001 / 100000000000000000 : ℚ)
  supportValue := (46020734717684303 / 100000000000000000 : ℚ)
  supportSlope := (4699555952589307 / 1000000000000000 : ℚ)
  oldCenter := (46020734717684303 / 100000000000000000 : ℚ)
  oldLo := (23000000000000001 / 50000000000000000 : ℚ)
  oldHi := (23025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1102]
}

def cell_4418 : Cell := { cellDefaults with
  domain := ⟨(13250000000000001 / 100000000000000000 : ℚ), (13253125000000001 / 100000000000000000 : ℚ)⟩
  r := (2565514599221 / 2500000000000 : ℚ)
  w := (49459996761839 / 50000000000000 : ℚ)
  center := (13251562500000001 / 100000000000000000 : ℚ)
  supportValue := (4600218232547833 / 10000000000000000 : ℚ)
  supportSlope := (587076727642577 / 125000000000000 : ℚ)
  oldCenter := (4600218232547833 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_388
  oldHi := (23025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1101, piece_1102]
}

def cell_4419 : Cell := { cellDefaults with
  domain := ⟨(13253125000000001 / 100000000000000000 : ℚ), (13256250000000001 / 100000000000000000 : ℚ)⟩
  r := (2565514599221 / 2500000000000 : ℚ)
  w := (49459996761839 / 50000000000000 : ℚ)
  center := (13254687500000001 / 100000000000000000 : ℚ)
  supportValue := (9203371878944847 / 20000000000000000 : ℚ)
  supportSlope := (4697270927607633 / 1000000000000000 : ℚ)
  oldCenter := (9203371878944847 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_388
  oldLo := (23000000000000001 / 50000000000000000 : ℚ)
  oldHi := (23025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1102]
}

def cell_4420 : Cell := { cellDefaults with
  domain := ⟨(13256250000000001 / 100000000000000000 : ℚ), (13259375000000001 / 100000000000000000 : ℚ)⟩
  r := (2565514599221 / 2500000000000 : ℚ)
  w := (49459996761839 / 50000000000000 : ℚ)
  center := (13257812500000001 / 100000000000000000 : ℚ)
  supportValue := (2876971266684079 / 6250000000000000 : ℚ)
  supportSlope := (9396977174848331 / 2000000000000000 : ℚ)
  oldCenter := (2876971266684079 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_388
  oldLo := (23000000000000001 / 50000000000000000 : ℚ)
  oldHi := (23025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1102]
}

def cell_4421 : Cell := { cellDefaults with
  domain := ⟨(13259375000000001 / 100000000000000000 : ℚ), (13262500000000001 / 100000000000000000 : ℚ)⟩
  r := (2565514599221 / 2500000000000 : ℚ)
  w := (49459996761839 / 50000000000000 : ℚ)
  center := (13260937500000001 / 100000000000000000 : ℚ)
  supportValue := (4604622494656641 / 10000000000000000 : ℚ)
  supportSlope := (4699321317715999 / 1000000000000000 : ℚ)
  oldCenter := (4604622494656641 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_388
  oldLo := (23000000000000001 / 50000000000000000 : ℚ)
  oldHi := (23050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1102, piece_1103]
}

def cell_4422 : Cell := { cellDefaults with
  domain := ⟨(13262500000000001 / 100000000000000000 : ℚ), (13265625000000001 / 100000000000000000 : ℚ)⟩
  r := (2565514599221 / 2500000000000 : ℚ)
  w := (49459996761839 / 50000000000000 : ℚ)
  center := (13264062500000001 / 100000000000000000 : ℚ)
  supportValue := (2303045487236453 / 5000000000000000 : ℚ)
  supportSlope := (4699335164653817 / 1000000000000000 : ℚ)
  oldCenter := (2303045487236453 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_388
  oldLo := (23025000000000001 / 50000000000000000 : ℚ)
  oldHi := (23050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1103]
}

def cell_4423 : Cell := { cellDefaults with
  domain := ⟨(13265625000000001 / 100000000000000000 : ℚ), (13268750000000001 / 100000000000000000 : ℚ)⟩
  r := (2565514599221 / 2500000000000 : ℚ)
  w := (49459996761839 / 50000000000000 : ℚ)
  center := (13267187500000001 / 100000000000000000 : ℚ)
  supportValue := (575944963274213 / 1250000000000000 : ℚ)
  supportSlope := (470054913949447 / 100000000000000 : ℚ)
  oldCenter := (575944963274213 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_388
  oldLo := (23025000000000001 / 50000000000000000 : ℚ)
  oldHi := (23050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1103]
}

def cell_4424 : Cell := { cellDefaults with
  domain := ⟨(13268750000000001 / 100000000000000000 : ℚ), (13271875000000001 / 100000000000000000 : ℚ)⟩
  r := (2565514599221 / 2500000000000 : ℚ)
  w := (49459996761839 / 50000000000000 : ℚ)
  center := (13270312500000001 / 100000000000000000 : ℚ)
  supportValue := (5761286021876403 / 12500000000000000 : ℚ)
  supportSlope := (2350882259975151 / 500000000000000 : ℚ)
  oldCenter := (5761286021876403 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_388
  oldLo := (23025000000000001 / 50000000000000000 : ℚ)
  oldHi := (23050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1103]
}

def cell_4425 : Cell := { cellDefaults with
  domain := ⟨(13271875000000001 / 100000000000000000 : ℚ), (13275000000000001 / 100000000000000000 : ℚ)⟩
  r := (2565514599221 / 2500000000000 : ℚ)
  w := (49459996761839 / 50000000000000 : ℚ)
  center := (13273437500000001 / 100000000000000000 : ℚ)
  supportValue := (5763122676467957 / 12500000000000000 : ℚ)
  supportSlope := (9403305433536957 / 2000000000000000 : ℚ)
  oldCenter := (5763122676467957 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_388
  oldLo := (23025000000000001 / 50000000000000000 : ℚ)
  oldHi := (23075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1103, piece_1104]
}

def cell_4426 : Cell := { cellDefaults with
  domain := ⟨(13275000000000001 / 100000000000000000 : ℚ), (13278125000000001 / 100000000000000000 : ℚ)⟩
  r := (2565514599221 / 2500000000000 : ℚ)
  w := (49459996761839 / 50000000000000 : ℚ)
  center := (13276562500000001 / 100000000000000000 : ℚ)
  supportValue := (23059837586528223 / 50000000000000000 : ℚ)
  supportSlope := (2351304697138623 / 500000000000000 : ℚ)
  oldCenter := (23059837586528223 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_388
  oldLo := (23050000000000001 / 50000000000000000 : ℚ)
  oldHi := (23075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1104]
}

def cell_4427 : Cell := { cellDefaults with
  domain := ⟨(13278125000000001 / 100000000000000000 : ℚ), (13281250000000001 / 100000000000000000 : ℚ)⟩
  r := (2565514599221 / 2500000000000 : ℚ)
  w := (49459996761839 / 50000000000000 : ℚ)
  center := (13279687500000001 / 100000000000000000 : ℚ)
  supportValue := (4613437271860771 / 10000000000000000 : ℚ)
  supportSlope := (293988815496693 / 62500000000000 : ℚ)
  oldCenter := (4613437271860771 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_388
  oldLo := (23050000000000001 / 50000000000000000 : ℚ)
  oldHi := (23075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1104]
}

def cell_4428 : Cell := { cellDefaults with
  domain := ⟨(13281250000000001 / 100000000000000000 : ℚ), (13284375000000001 / 100000000000000000 : ℚ)⟩
  r := (2565514599221 / 2500000000000 : ℚ)
  w := (49459996761839 / 50000000000000 : ℚ)
  center := (13282812500000001 / 100000000000000000 : ℚ)
  supportValue := (288431712829733 / 625000000000000 : ℚ)
  supportSlope := (4704345936207943 / 1000000000000000 : ℚ)
  oldCenter := (288431712829733 / 625000000000000 : ℚ)
  newCoefficients := coefficients_388
  oldLo := (23050000000000001 / 50000000000000000 : ℚ)
  oldHi := (23100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1104, piece_1105]
}

def cell_4429 : Cell := { cellDefaults with
  domain := ⟨(13284375000000001 / 100000000000000000 : ℚ), (13287500000000001 / 100000000000000000 : ℚ)⟩
  r := (2565514599221 / 2500000000000 : ℚ)
  w := (49459996761839 / 50000000000000 : ℚ)
  center := (13285937500000001 / 100000000000000000 : ℚ)
  supportValue := (1154094364123169 / 2500000000000000 : ℚ)
  supportSlope := (4704669318233101 / 1000000000000000 : ℚ)
  oldCenter := (1154094364123169 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_388
  oldLo := (23075000000000001 / 50000000000000000 : ℚ)
  oldHi := (23100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1105]
}

def cell_4430 : Cell := { cellDefaults with
  domain := ⟨(13287500000000001 / 100000000000000000 : ℚ), (13290625000000001 / 100000000000000000 : ℚ)⟩
  r := (2565514599221 / 2500000000000 : ℚ)
  w := (49459996761839 / 50000000000000 : ℚ)
  center := (13289062500000001 / 100000000000000000 : ℚ)
  supportValue := (2308923927093463 / 5000000000000000 : ℚ)
  supportSlope := (4705877211840459 / 1000000000000000 : ℚ)
  oldCenter := (2308923927093463 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_388
  oldLo := (23075000000000001 / 50000000000000000 : ℚ)
  oldHi := (23100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1105]
}

def cell_4431 : Cell := { cellDefaults with
  domain := ⟨(13290625000000001 / 100000000000000000 : ℚ), (13293750000000001 / 100000000000000000 : ℚ)⟩
  r := (2565514599221 / 2500000000000 : ℚ)
  w := (49459996761839 / 50000000000000 : ℚ)
  center := (13292187500000001 / 100000000000000000 : ℚ)
  supportValue := (2887074143477579 / 6250000000000000 : ℚ)
  supportSlope := (4707028415515069 / 1000000000000000 : ℚ)
  oldCenter := (2887074143477579 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_388
  oldLo := (23075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1105, piece_1106]
}

def cell_4432 : Cell := { cellDefaults with
  domain := ⟨(13293750000000001 / 100000000000000000 : ℚ), (13296875000000001 / 100000000000000000 : ℚ)⟩
  r := (2565514599221 / 2500000000000 : ℚ)
  w := (49459996761839 / 50000000000000 : ℚ)
  center := (13295312500000001 / 100000000000000000 : ℚ)
  supportValue := (4620789520175827 / 10000000000000000 : ℚ)
  supportSlope := (470672887641399 / 100000000000000 : ℚ)
  oldCenter := (4620789520175827 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_388
  oldLo := (23100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1106]
}

def cell_4433 : Cell := { cellDefaults with
  domain := ⟨(13296875000000001 / 100000000000000000 : ℚ), (13300000000000001 / 100000000000000000 : ℚ)⟩
  r := (2565514599221 / 2500000000000 : ℚ)
  w := (49459996761839 / 50000000000000 : ℚ)
  center := (13298437500000001 / 100000000000000000 : ℚ)
  supportValue := (2311130280444949 / 5000000000000000 : ℚ)
  supportSlope := (29424581112103 / 6250000000000 : ℚ)
  oldCenter := (2311130280444949 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_388
  oldLo := (23100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1106]
}

def cell_4434 : Cell := { cellDefaults with
  domain := ⟨(13300000000000001 / 100000000000000000 : ℚ), (13303125000000001 / 100000000000000000 : ℚ)⟩
  r := (10250283763097 / 10000000000000 : ℚ)
  w := (1978890887331 / 2000000000000 : ℚ)
  center := (13301562500000001 / 100000000000000000 : ℚ)
  supportValue := (4620383537071153 / 10000000000000000 : ℚ)
  supportSlope := (9409566043750317 / 2000000000000000 : ℚ)
  oldCenter := (4620383537071153 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_389
  oldLo := (23075000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1105, piece_1106]
}

def cell_4435 : Cell := { cellDefaults with
  domain := ⟨(13303125000000001 / 100000000000000000 : ℚ), (13306250000000001 / 100000000000000000 : ℚ)⟩
  r := (10250283763097 / 10000000000000 : ℚ)
  w := (1978890887331 / 2000000000000 : ℚ)
  center := (13304687500000001 / 100000000000000000 : ℚ)
  supportValue := (11554634633503219 / 25000000000000000 : ℚ)
  supportSlope := (2352807931623069 / 500000000000000 : ℚ)
  oldCenter := (11554634633503219 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_389
  oldLo := (23100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1106]
}

def cell_4436 : Cell := { cellDefaults with
  domain := ⟨(13306250000000001 / 100000000000000000 : ℚ), (13309375000000001 / 100000000000000000 : ℚ)⟩
  r := (10250283763097 / 10000000000000 : ℚ)
  w := (1978890887331 / 2000000000000 : ℚ)
  center := (13307812500000001 / 100000000000000000 : ℚ)
  supportValue := (4623324546799131 / 10000000000000000 : ℚ)
  supportSlope := (470682316866089 / 100000000000000 : ℚ)
  oldCenter := (4623324546799131 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_389
  oldLo := (23100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1106]
}

def cell_4437 : Cell := { cellDefaults with
  domain := ⟨(13309375000000001 / 100000000000000000 : ℚ), (13312500000000001 / 100000000000000000 : ℚ)⟩
  r := (10250283763097 / 10000000000000 : ℚ)
  w := (1978890887331 / 2000000000000 : ℚ)
  center := (13310937500000001 / 100000000000000000 : ℚ)
  supportValue := (462479561769527 / 1000000000000000 : ℚ)
  supportSlope := (117686729025257 / 25000000000000 : ℚ)
  oldCenter := (462479561769527 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_389
  oldLo := (23100000000000001 / 50000000000000000 : ℚ)
  oldHi := (23150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1106, piece_1107]
}

def cell_4438 : Cell := { cellDefaults with
  domain := ⟨(13312500000000001 / 100000000000000000 : ℚ), (13315625000000001 / 100000000000000000 : ℚ)⟩
  r := (10250283763097 / 10000000000000 : ℚ)
  w := (1978890887331 / 2000000000000 : ℚ)
  center := (13314062500000001 / 100000000000000000 : ℚ)
  supportValue := (185050665874801 / 400000000000000 : ℚ)
  supportSlope := (2353839779131839 / 500000000000000 : ℚ)
  oldCenter := (185050665874801 / 400000000000000 : ℚ)
  newCoefficients := coefficients_389
  oldLo := (23125000000000001 / 50000000000000000 : ℚ)
  oldHi := (23150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1107]
}

def cell_4439 : Cell := { cellDefaults with
  domain := ⟨(13315625000000001 / 100000000000000000 : ℚ), (13318750000000001 / 100000000000000000 : ℚ)⟩
  r := (10250283763097 / 10000000000000 : ℚ)
  w := (1978890887331 / 2000000000000 : ℚ)
  center := (13317187500000001 / 100000000000000000 : ℚ)
  supportValue := (1156934496145623 / 2500000000000000 : ℚ)
  supportSlope := (4708883084665771 / 1000000000000000 : ℚ)
  oldCenter := (1156934496145623 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_389
  oldLo := (23125000000000001 / 50000000000000000 : ℚ)
  oldHi := (23150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1107]
}

def cell_4440 : Cell := { cellDefaults with
  domain := ⟨(13318750000000001 / 100000000000000000 : ℚ), (13321875000000001 / 100000000000000000 : ℚ)⟩
  r := (10250283763097 / 10000000000000 : ℚ)
  w := (1978890887331 / 2000000000000 : ℚ)
  center := (13320312500000001 / 100000000000000000 : ℚ)
  supportValue := (5786512123263067 / 12500000000000000 : ℚ)
  supportSlope := (294380498646607 / 62500000000000 : ℚ)
  oldCenter := (5786512123263067 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_389
  oldLo := (23125000000000001 / 50000000000000000 : ℚ)
  oldHi := (23150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1107]
}

def cell_4441 : Cell := { cellDefaults with
  domain := ⟨(13321875000000001 / 100000000000000000 : ℚ), (13325000000000001 / 100000000000000000 : ℚ)⟩
  r := (10250283763097 / 10000000000000 : ℚ)
  w := (1978890887331 / 2000000000000 : ℚ)
  center := (13323437500000001 / 100000000000000000 : ℚ)
  supportValue := (578835195610629 / 1250000000000000 : ℚ)
  supportSlope := (2354899515211173 / 500000000000000 : ℚ)
  oldCenter := (578835195610629 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_389
  oldLo := (23125000000000001 / 50000000000000000 : ℚ)
  oldHi := (23175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1107, piece_1108]
}

def cell_4442 : Cell := { cellDefaults with
  domain := ⟨(13325000000000001 / 100000000000000000 : ℚ), (13328125000000001 / 100000000000000000 : ℚ)⟩
  r := (10250283763097 / 10000000000000 : ℚ)
  w := (1978890887331 / 2000000000000 : ℚ)
  center := (13326562500000001 / 100000000000000000 : ℚ)
  supportValue := (2316076773374769 / 5000000000000000 : ℚ)
  supportSlope := (1177735703272731 / 250000000000000 : ℚ)
  oldCenter := (2316076773374769 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_389
  oldLo := (23150000000000001 / 50000000000000000 : ℚ)
  oldHi := (23175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1108]
}

def cell_4443 : Cell := { cellDefaults with
  domain := ⟨(13328125000000001 / 100000000000000000 : ℚ), (13331250000000001 / 100000000000000000 : ℚ)⟩
  r := (10250283763097 / 10000000000000 : ℚ)
  w := (1978890887331 / 2000000000000 : ℚ)
  center := (13329687500000001 / 100000000000000000 : ℚ)
  supportValue := (36200202374647 / 78125000000000 : ℚ)
  supportSlope := (2356072291306077 / 500000000000000 : ℚ)
  oldCenter := (36200202374647 / 78125000000000 : ℚ)
  newCoefficients := coefficients_389
  oldLo := (23150000000000001 / 50000000000000000 : ℚ)
  oldHi := (23175000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1108]
}

def cell_4444 : Cell := { cellDefaults with
  domain := ⟨(13331250000000001 / 100000000000000000 : ℚ), (13334375000000001 / 100000000000000000 : ℚ)⟩
  r := (10250283763097 / 10000000000000 : ℚ)
  w := (1978890887331 / 2000000000000 : ℚ)
  center := (13332812500000001 / 100000000000000000 : ℚ)
  supportValue := (23175493022564747 / 50000000000000000 : ℚ)
  supportSlope := (4712472150453451 / 1000000000000000 : ℚ)
  oldCenter := (23175493022564747 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_389
  oldLo := (23150000000000001 / 50000000000000000 : ℚ)
  oldHi := (23200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1108, piece_1109, piece_1110]
}

def cell_4445 : Cell := { cellDefaults with
  domain := ⟨(13334375000000001 / 100000000000000000 : ℚ), (13337500000000001 / 100000000000000000 : ℚ)⟩
  r := (10250283763097 / 10000000000000 : ℚ)
  w := (1978890887331 / 2000000000000 : ℚ)
  center := (13335937500000001 / 100000000000000000 : ℚ)
  supportValue := (4636571230652843 / 10000000000000000 : ℚ)
  supportSlope := (2356501275691869 / 500000000000000 : ℚ)
  oldCenter := (4636571230652843 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_389
  oldLo := (4635195530726257 / 10000000000000000 : ℚ)
  oldHi := (23200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1110]
}

def cell_4446 : Cell := { cellDefaults with
  domain := ⟨(13337500000000001 / 100000000000000000 : ℚ), (13340625000000001 / 100000000000000000 : ℚ)⟩
  r := (10250283763097 / 10000000000000 : ℚ)
  w := (1978890887331 / 2000000000000 : ℚ)
  center := (13339062500000001 / 100000000000000000 : ℚ)
  supportValue := (1855217692365859 / 4000000000000000 : ℚ)
  supportSlope := (2357100201741069 / 500000000000000 : ℚ)
  oldCenter := (1855217692365859 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_389
  oldLo := (4635195530726257 / 10000000000000000 : ℚ)
  oldHi := (23200000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1110]
}

def cell_4447 : Cell := { cellDefaults with
  domain := ⟨(13340625000000001 / 100000000000000000 : ℚ), (13343750000000001 / 100000000000000000 : ℚ)⟩
  r := (10250283763097 / 10000000000000 : ℚ)
  w := (1978890887331 / 2000000000000 : ℚ)
  center := (13342187500000001 / 100000000000000000 : ℚ)
  supportValue := (927903521143133 / 2000000000000000 : ℚ)
  supportSlope := (9430268505944639 / 2000000000000000 : ℚ)
  oldCenter := (927903521143133 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_389
  oldLo := (4635195530726257 / 10000000000000000 : ℚ)
  oldHi := (23225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1110, piece_1111]
}

def cell_4448 : Cell := { cellDefaults with
  domain := ⟨(13343750000000001 / 100000000000000000 : ℚ), (13346875000000001 / 100000000000000000 : ℚ)⟩
  r := (10250283763097 / 10000000000000 : ℚ)
  w := (1978890887331 / 2000000000000 : ℚ)
  center := (13345312500000001 / 100000000000000000 : ℚ)
  supportValue := (23204955162200183 / 50000000000000000 : ℚ)
  supportSlope := (4715061488486327 / 1000000000000000 : ℚ)
  oldCenter := (23204955162200183 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_389
  oldLo := (23200000000000001 / 50000000000000000 : ℚ)
  oldHi := (23225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1111]
}

def cell_4449 : Cell := { cellDefaults with
  domain := ⟨(13346875000000001 / 100000000000000000 : ℚ), (13350000000000001 / 100000000000000000 : ℚ)⟩
  r := (10250283763097 / 10000000000000 : ℚ)
  w := (1978890887331 / 2000000000000 : ℚ)
  center := (13348437500000001 / 100000000000000000 : ℚ)
  supportValue := (2321232337773983 / 5000000000000000 : ℚ)
  supportSlope := (4716255679124259 / 1000000000000000 : ℚ)
  oldCenter := (2321232337773983 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_389
  oldLo := (23200000000000001 / 50000000000000000 : ℚ)
  oldHi := (23225000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1111]
}

theorem check_4400 : SourceCertificateFamily.RightNormalized.check cell_4400 = true := by
  decide +kernel

theorem check_4401 : SourceCertificateFamily.RightNormalized.check cell_4401 = true := by
  decide +kernel

theorem check_4402 : SourceCertificateFamily.RightNormalized.check cell_4402 = true := by
  decide +kernel

theorem check_4403 : SourceCertificateFamily.RightNormalized.check cell_4403 = true := by
  decide +kernel

theorem check_4404 : SourceCertificateFamily.RightNormalized.check cell_4404 = true := by
  decide +kernel

theorem check_4405 : SourceCertificateFamily.RightNormalized.check cell_4405 = true := by
  decide +kernel

theorem check_4406 : SourceCertificateFamily.RightNormalized.check cell_4406 = true := by
  decide +kernel

theorem check_4407 : SourceCertificateFamily.RightNormalized.check cell_4407 = true := by
  decide +kernel

theorem check_4408 : SourceCertificateFamily.RightNormalized.check cell_4408 = true := by
  decide +kernel

theorem check_4409 : SourceCertificateFamily.RightNormalized.check cell_4409 = true := by
  decide +kernel

theorem check_4410 : SourceCertificateFamily.RightNormalized.check cell_4410 = true := by
  decide +kernel

theorem check_4411 : SourceCertificateFamily.RightNormalized.check cell_4411 = true := by
  decide +kernel

theorem check_4412 : SourceCertificateFamily.RightNormalized.check cell_4412 = true := by
  decide +kernel

theorem check_4413 : SourceCertificateFamily.RightNormalized.check cell_4413 = true := by
  decide +kernel

theorem check_4414 : SourceCertificateFamily.RightNormalized.check cell_4414 = true := by
  decide +kernel

theorem check_4415 : SourceCertificateFamily.RightNormalized.check cell_4415 = true := by
  decide +kernel

theorem check_4416 : SourceCertificateFamily.RightNormalized.check cell_4416 = true := by
  decide +kernel

theorem check_4417 : SourceCertificateFamily.RightNormalized.check cell_4417 = true := by
  decide +kernel

theorem check_4418 : SourceCertificateFamily.RightNormalized.check cell_4418 = true := by
  decide +kernel

theorem check_4419 : SourceCertificateFamily.RightNormalized.check cell_4419 = true := by
  decide +kernel

theorem check_4420 : SourceCertificateFamily.RightNormalized.check cell_4420 = true := by
  decide +kernel

theorem check_4421 : SourceCertificateFamily.RightNormalized.check cell_4421 = true := by
  decide +kernel

theorem check_4422 : SourceCertificateFamily.RightNormalized.check cell_4422 = true := by
  decide +kernel

theorem check_4423 : SourceCertificateFamily.RightNormalized.check cell_4423 = true := by
  decide +kernel

theorem check_4424 : SourceCertificateFamily.RightNormalized.check cell_4424 = true := by
  decide +kernel

theorem check_4425 : SourceCertificateFamily.RightNormalized.check cell_4425 = true := by
  decide +kernel

theorem check_4426 : SourceCertificateFamily.RightNormalized.check cell_4426 = true := by
  decide +kernel

theorem check_4427 : SourceCertificateFamily.RightNormalized.check cell_4427 = true := by
  decide +kernel

theorem check_4428 : SourceCertificateFamily.RightNormalized.check cell_4428 = true := by
  decide +kernel

theorem check_4429 : SourceCertificateFamily.RightNormalized.check cell_4429 = true := by
  decide +kernel

theorem check_4430 : SourceCertificateFamily.RightNormalized.check cell_4430 = true := by
  decide +kernel

theorem check_4431 : SourceCertificateFamily.RightNormalized.check cell_4431 = true := by
  decide +kernel

theorem check_4432 : SourceCertificateFamily.RightNormalized.check cell_4432 = true := by
  decide +kernel

theorem check_4433 : SourceCertificateFamily.RightNormalized.check cell_4433 = true := by
  decide +kernel

theorem check_4434 : SourceCertificateFamily.RightNormalized.check cell_4434 = true := by
  decide +kernel

theorem check_4435 : SourceCertificateFamily.RightNormalized.check cell_4435 = true := by
  decide +kernel

theorem check_4436 : SourceCertificateFamily.RightNormalized.check cell_4436 = true := by
  decide +kernel

theorem check_4437 : SourceCertificateFamily.RightNormalized.check cell_4437 = true := by
  decide +kernel

theorem check_4438 : SourceCertificateFamily.RightNormalized.check cell_4438 = true := by
  decide +kernel

theorem check_4439 : SourceCertificateFamily.RightNormalized.check cell_4439 = true := by
  decide +kernel

theorem check_4440 : SourceCertificateFamily.RightNormalized.check cell_4440 = true := by
  decide +kernel

theorem check_4441 : SourceCertificateFamily.RightNormalized.check cell_4441 = true := by
  decide +kernel

theorem check_4442 : SourceCertificateFamily.RightNormalized.check cell_4442 = true := by
  decide +kernel

theorem check_4443 : SourceCertificateFamily.RightNormalized.check cell_4443 = true := by
  decide +kernel

theorem check_4444 : SourceCertificateFamily.RightNormalized.check cell_4444 = true := by
  decide +kernel

theorem check_4445 : SourceCertificateFamily.RightNormalized.check cell_4445 = true := by
  decide +kernel

theorem check_4446 : SourceCertificateFamily.RightNormalized.check cell_4446 = true := by
  decide +kernel

theorem check_4447 : SourceCertificateFamily.RightNormalized.check cell_4447 = true := by
  decide +kernel

theorem check_4448 : SourceCertificateFamily.RightNormalized.check cell_4448 = true := by
  decide +kernel

theorem check_4449 : SourceCertificateFamily.RightNormalized.check cell_4449 = true := by
  decide +kernel

def cells : List Cell := [cell_4400, cell_4401, cell_4402, cell_4403, cell_4404, cell_4405, cell_4406, cell_4407, cell_4408, cell_4409, cell_4410, cell_4411, cell_4412, cell_4413, cell_4414, cell_4415, cell_4416, cell_4417, cell_4418, cell_4419, cell_4420, cell_4421, cell_4422, cell_4423, cell_4424, cell_4425, cell_4426, cell_4427, cell_4428, cell_4429, cell_4430, cell_4431, cell_4432, cell_4433, cell_4434, cell_4435, cell_4436, cell_4437, cell_4438, cell_4439, cell_4440, cell_4441, cell_4442, cell_4443, cell_4444, cell_4445, cell_4446, cell_4447, cell_4448, cell_4449]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_4400, SourceCertificateFamily.of_right_checked check_4401, SourceCertificateFamily.of_right_checked check_4402, SourceCertificateFamily.of_right_checked check_4403, SourceCertificateFamily.of_right_checked check_4404, SourceCertificateFamily.of_right_checked check_4405, SourceCertificateFamily.of_right_checked check_4406, SourceCertificateFamily.of_right_checked check_4407, SourceCertificateFamily.of_right_checked check_4408, SourceCertificateFamily.of_right_checked check_4409, SourceCertificateFamily.of_right_checked check_4410, SourceCertificateFamily.of_right_checked check_4411, SourceCertificateFamily.of_right_checked check_4412, SourceCertificateFamily.of_right_checked check_4413, SourceCertificateFamily.of_right_checked check_4414, SourceCertificateFamily.of_right_checked check_4415, SourceCertificateFamily.of_right_checked check_4416, SourceCertificateFamily.of_right_checked check_4417, SourceCertificateFamily.of_right_checked check_4418, SourceCertificateFamily.of_right_checked check_4419, SourceCertificateFamily.of_right_checked check_4420, SourceCertificateFamily.of_right_checked check_4421, SourceCertificateFamily.of_right_checked check_4422, SourceCertificateFamily.of_right_checked check_4423, SourceCertificateFamily.of_right_checked check_4424, SourceCertificateFamily.of_right_checked check_4425, SourceCertificateFamily.of_right_checked check_4426, SourceCertificateFamily.of_right_checked check_4427, SourceCertificateFamily.of_right_checked check_4428, SourceCertificateFamily.of_right_checked check_4429, SourceCertificateFamily.of_right_checked check_4430, SourceCertificateFamily.of_right_checked check_4431, SourceCertificateFamily.of_right_checked check_4432, SourceCertificateFamily.of_right_checked check_4433, SourceCertificateFamily.of_right_checked check_4434, SourceCertificateFamily.of_right_checked check_4435, SourceCertificateFamily.of_right_checked check_4436, SourceCertificateFamily.of_right_checked check_4437, SourceCertificateFamily.of_right_checked check_4438, SourceCertificateFamily.of_right_checked check_4439, SourceCertificateFamily.of_right_checked check_4440, SourceCertificateFamily.of_right_checked check_4441, SourceCertificateFamily.of_right_checked check_4442, SourceCertificateFamily.of_right_checked check_4443, SourceCertificateFamily.of_right_checked check_4444, SourceCertificateFamily.of_right_checked check_4445, SourceCertificateFamily.of_right_checked check_4446, SourceCertificateFamily.of_right_checked check_4447, SourceCertificateFamily.of_right_checked check_4448, SourceCertificateFamily.of_right_checked check_4449, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0088

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0088
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0088
open AnalyticBounds.ExpressionCertificate

theorem linked_4400 : Linked cell_4400 pieces := by
  apply Linked.of_piece piece_386 piece_386_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4400, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1096_mem, ⟨piece_1097_mem, piece_1098_mem⟩⟩

theorem linked_4401 : Linked cell_4401 pieces := by
  apply Linked.of_piece piece_386 piece_386_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4401, List.cons_subset, List.nil_subset, and_true]
  exact piece_1098_mem

theorem linked_4402 : Linked cell_4402 pieces := by
  apply Linked.of_piece piece_387 piece_387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4402, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1096_mem, ⟨piece_1097_mem, piece_1098_mem⟩⟩

theorem linked_4403 : Linked cell_4403 pieces := by
  apply Linked.of_piece piece_387 piece_387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4403, List.cons_subset, List.nil_subset, and_true]
  exact piece_1098_mem

theorem linked_4404 : Linked cell_4404 pieces := by
  apply Linked.of_piece piece_387 piece_387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4404, List.cons_subset, List.nil_subset, and_true]
  exact piece_1098_mem

theorem linked_4405 : Linked cell_4405 pieces := by
  apply Linked.of_piece piece_387 piece_387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4405, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1098_mem, piece_1099_mem⟩

theorem linked_4406 : Linked cell_4406 pieces := by
  apply Linked.of_piece piece_387 piece_387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4406, List.cons_subset, List.nil_subset, and_true]
  exact piece_1099_mem

theorem linked_4407 : Linked cell_4407 pieces := by
  apply Linked.of_piece piece_387 piece_387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4407, List.cons_subset, List.nil_subset, and_true]
  exact piece_1099_mem

theorem linked_4408 : Linked cell_4408 pieces := by
  apply Linked.of_piece piece_387 piece_387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4408, List.cons_subset, List.nil_subset, and_true]
  exact piece_1099_mem

theorem linked_4409 : Linked cell_4409 pieces := by
  apply Linked.of_piece piece_387 piece_387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4409, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1099_mem, piece_1100_mem⟩

theorem linked_4410 : Linked cell_4410 pieces := by
  apply Linked.of_piece piece_387 piece_387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4410, List.cons_subset, List.nil_subset, and_true]
  exact piece_1100_mem

theorem linked_4411 : Linked cell_4411 pieces := by
  apply Linked.of_piece piece_387 piece_387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4411, List.cons_subset, List.nil_subset, and_true]
  exact piece_1100_mem

theorem linked_4412 : Linked cell_4412 pieces := by
  apply Linked.of_piece piece_387 piece_387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4412, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1100_mem, piece_1101_mem⟩

theorem linked_4413 : Linked cell_4413 pieces := by
  apply Linked.of_piece piece_387 piece_387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4413, List.cons_subset, List.nil_subset, and_true]
  exact piece_1101_mem

theorem linked_4414 : Linked cell_4414 pieces := by
  apply Linked.of_piece piece_387 piece_387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4414, List.cons_subset, List.nil_subset, and_true]
  exact piece_1101_mem

theorem linked_4415 : Linked cell_4415 pieces := by
  apply Linked.of_piece piece_387 piece_387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4415, List.cons_subset, List.nil_subset, and_true]
  exact piece_1101_mem

theorem linked_4416 : Linked cell_4416 pieces := by
  apply Linked.of_piece piece_387 piece_387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4416, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1101_mem, piece_1102_mem⟩

theorem linked_4417 : Linked cell_4417 pieces := by
  apply Linked.of_piece piece_387 piece_387_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4417, List.cons_subset, List.nil_subset, and_true]
  exact piece_1102_mem

theorem linked_4418 : Linked cell_4418 pieces := by
  apply Linked.of_piece piece_388 piece_388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4418, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1101_mem, piece_1102_mem⟩

theorem linked_4419 : Linked cell_4419 pieces := by
  apply Linked.of_piece piece_388 piece_388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4419, List.cons_subset, List.nil_subset, and_true]
  exact piece_1102_mem

theorem linked_4420 : Linked cell_4420 pieces := by
  apply Linked.of_piece piece_388 piece_388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4420, List.cons_subset, List.nil_subset, and_true]
  exact piece_1102_mem

theorem linked_4421 : Linked cell_4421 pieces := by
  apply Linked.of_piece piece_388 piece_388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4421, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1102_mem, piece_1103_mem⟩

theorem linked_4422 : Linked cell_4422 pieces := by
  apply Linked.of_piece piece_388 piece_388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4422, List.cons_subset, List.nil_subset, and_true]
  exact piece_1103_mem

theorem linked_4423 : Linked cell_4423 pieces := by
  apply Linked.of_piece piece_388 piece_388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4423, List.cons_subset, List.nil_subset, and_true]
  exact piece_1103_mem

theorem linked_4424 : Linked cell_4424 pieces := by
  apply Linked.of_piece piece_388 piece_388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4424, List.cons_subset, List.nil_subset, and_true]
  exact piece_1103_mem

theorem linked_4425 : Linked cell_4425 pieces := by
  apply Linked.of_piece piece_388 piece_388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4425, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1103_mem, piece_1104_mem⟩

theorem linked_4426 : Linked cell_4426 pieces := by
  apply Linked.of_piece piece_388 piece_388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4426, List.cons_subset, List.nil_subset, and_true]
  exact piece_1104_mem

theorem linked_4427 : Linked cell_4427 pieces := by
  apply Linked.of_piece piece_388 piece_388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4427, List.cons_subset, List.nil_subset, and_true]
  exact piece_1104_mem

theorem linked_4428 : Linked cell_4428 pieces := by
  apply Linked.of_piece piece_388 piece_388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4428, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1104_mem, piece_1105_mem⟩

theorem linked_4429 : Linked cell_4429 pieces := by
  apply Linked.of_piece piece_388 piece_388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4429, List.cons_subset, List.nil_subset, and_true]
  exact piece_1105_mem

theorem linked_4430 : Linked cell_4430 pieces := by
  apply Linked.of_piece piece_388 piece_388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4430, List.cons_subset, List.nil_subset, and_true]
  exact piece_1105_mem

theorem linked_4431 : Linked cell_4431 pieces := by
  apply Linked.of_piece piece_388 piece_388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4431, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1105_mem, piece_1106_mem⟩

theorem linked_4432 : Linked cell_4432 pieces := by
  apply Linked.of_piece piece_388 piece_388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4432, List.cons_subset, List.nil_subset, and_true]
  exact piece_1106_mem

theorem linked_4433 : Linked cell_4433 pieces := by
  apply Linked.of_piece piece_388 piece_388_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4433, List.cons_subset, List.nil_subset, and_true]
  exact piece_1106_mem

theorem linked_4434 : Linked cell_4434 pieces := by
  apply Linked.of_piece piece_389 piece_389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4434, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1105_mem, piece_1106_mem⟩

theorem linked_4435 : Linked cell_4435 pieces := by
  apply Linked.of_piece piece_389 piece_389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4435, List.cons_subset, List.nil_subset, and_true]
  exact piece_1106_mem

theorem linked_4436 : Linked cell_4436 pieces := by
  apply Linked.of_piece piece_389 piece_389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4436, List.cons_subset, List.nil_subset, and_true]
  exact piece_1106_mem

theorem linked_4437 : Linked cell_4437 pieces := by
  apply Linked.of_piece piece_389 piece_389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4437, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1106_mem, piece_1107_mem⟩

theorem linked_4438 : Linked cell_4438 pieces := by
  apply Linked.of_piece piece_389 piece_389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4438, List.cons_subset, List.nil_subset, and_true]
  exact piece_1107_mem

theorem linked_4439 : Linked cell_4439 pieces := by
  apply Linked.of_piece piece_389 piece_389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4439, List.cons_subset, List.nil_subset, and_true]
  exact piece_1107_mem

theorem linked_4440 : Linked cell_4440 pieces := by
  apply Linked.of_piece piece_389 piece_389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4440, List.cons_subset, List.nil_subset, and_true]
  exact piece_1107_mem

theorem linked_4441 : Linked cell_4441 pieces := by
  apply Linked.of_piece piece_389 piece_389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4441, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1107_mem, piece_1108_mem⟩

theorem linked_4442 : Linked cell_4442 pieces := by
  apply Linked.of_piece piece_389 piece_389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4442, List.cons_subset, List.nil_subset, and_true]
  exact piece_1108_mem

theorem linked_4443 : Linked cell_4443 pieces := by
  apply Linked.of_piece piece_389 piece_389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4443, List.cons_subset, List.nil_subset, and_true]
  exact piece_1108_mem

theorem linked_4444 : Linked cell_4444 pieces := by
  apply Linked.of_piece piece_389 piece_389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4444, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1108_mem, ⟨piece_1109_mem, piece_1110_mem⟩⟩

theorem linked_4445 : Linked cell_4445 pieces := by
  apply Linked.of_piece piece_389 piece_389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4445, List.cons_subset, List.nil_subset, and_true]
  exact piece_1110_mem

theorem linked_4446 : Linked cell_4446 pieces := by
  apply Linked.of_piece piece_389 piece_389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4446, List.cons_subset, List.nil_subset, and_true]
  exact piece_1110_mem

theorem linked_4447 : Linked cell_4447 pieces := by
  apply Linked.of_piece piece_389 piece_389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4447, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1110_mem, piece_1111_mem⟩

theorem linked_4448 : Linked cell_4448 pieces := by
  apply Linked.of_piece piece_389 piece_389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4448, List.cons_subset, List.nil_subset, and_true]
  exact piece_1111_mem

theorem linked_4449 : Linked cell_4449 pieces := by
  apply Linked.of_piece piece_389 piece_389_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4449, List.cons_subset, List.nil_subset, and_true]
  exact piece_1111_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0088.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0088.cells,List.forall_mem_cons]
  exact ⟨linked_4400, linked_4401, linked_4402, linked_4403, linked_4404, linked_4405, linked_4406, linked_4407, linked_4408, linked_4409, linked_4410, linked_4411, linked_4412, linked_4413, linked_4414, linked_4415, linked_4416, linked_4417, linked_4418, linked_4419, linked_4420, linked_4421, linked_4422, linked_4423, linked_4424, linked_4425, linked_4426, linked_4427, linked_4428, linked_4429, linked_4430, linked_4431, linked_4432, linked_4433, linked_4434, linked_4435, linked_4436, linked_4437, linked_4438, linked_4439, linked_4440, linked_4441, linked_4442, linked_4443, linked_4444, linked_4445, linked_4446, linked_4447, linked_4448, linked_4449, by simp⟩

theorem covered : covers (13193750000000001 / 100000000000000000 : ℚ) (13350000000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0088.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0088
