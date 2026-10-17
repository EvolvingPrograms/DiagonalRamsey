import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0229
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(60475000000000001 / 100000000000000000 : ℚ), (120974999999999999 / 200000000000000000 : ℚ)⟩
  branch := .left
  r := (55394865959897 / 100000000000000 : ℚ)
  w := (6961071333769 / 5000000000000 : ℚ)
  center := (241925000000000001 / 400000000000000000 : ℚ)
  supportValue := (213296927315827 / 625000000000000 : ℚ)
  supportSlope := (-13308618258928637 / 10000000000000000 : ℚ)
  oldCenter := (213296927315827 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1418
  oldLo := (16900000000000001 / 50000000000000000 : ℚ)
  oldHi := (16925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_836]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_11450 : Cell := { cellDefaults with
  r := (6927752586673 / 12500000000000 : ℚ)
  w := (13924922892949 / 10000000000000 : ℚ)
  newCoefficients := coefficients_1417
  oldLo := (34100000000000003 / 100000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_842]
}

noncomputable def cell_11451 : Cell := { cellDefaults with
  domain := ⟨(120974999999999999 / 200000000000000000 : ℚ), (30249999999999999 / 50000000000000000 : ℚ)⟩
  r := (6927752586673 / 12500000000000 : ℚ)
  w := (13924922892949 / 10000000000000 : ℚ)
  center := (48394999999999999 / 80000000000000000 : ℚ)
  supportValue := (34110882077781307 / 100000000000000000 : ℚ)
  supportSlope := (-1329345733284963 / 1000000000000000 : ℚ)
  oldCenter := (34110882077781307 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1417
  oldLo := (34100000000000003 / 100000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_842]
}

noncomputable def cell_11452 : Cell := { cellDefaults with
  domain := ⟨(30249999999999999 / 50000000000000000 : ℚ), (121024999999999999 / 200000000000000000 : ℚ)⟩
  center := (48404999999999999 / 80000000000000000 : ℚ)
  supportValue := (3412863514567441 / 10000000000000000 : ℚ)
  supportSlope := (-53212343448579 / 40000000000000 : ℚ)
  oldCenter := (3412863514567441 / 10000000000000000 : ℚ)
  oldLo := (34100000000000003 / 100000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_842]
}

noncomputable def cell_11453 : Cell := { cellDefaults with
  domain := ⟨(121024999999999999 / 200000000000000000 : ℚ), (60525000000000001 / 100000000000000000 : ℚ)⟩
  center := (242075000000000001 / 400000000000000000 : ℚ)
  supportValue := (34112015761412423 / 100000000000000000 : ℚ)
  supportSlope := (-13287936134467953 / 10000000000000000 : ℚ)
  oldCenter := (34112015761412423 / 100000000000000000 : ℚ)
  oldLo := (34100000000000003 / 100000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_842]
}

noncomputable def cell_11454 : Cell := { cellDefaults with
  domain := ⟨(60525000000000001 / 100000000000000000 : ℚ), (24215000000000001 / 40000000000000000 : ℚ)⟩
  center := (242125000000000007 / 400000000000000000 : ℚ)
  supportValue := (852385832026477 / 2500000000000000 : ℚ)
  supportSlope := (-13285972332644573 / 10000000000000000 : ℚ)
  oldCenter := (852385832026477 / 2500000000000000 : ℚ)
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841, piece_842]
}

noncomputable def cell_11455 : Cell := { cellDefaults with
  domain := ⟨(24215000000000001 / 40000000000000000 : ℚ), (15137500000000001 / 25000000000000000 : ℚ)⟩
  center := (242175000000000013 / 400000000000000000 : ℚ)
  supportValue := (3407880671586473 / 10000000000000000 : ℚ)
  supportSlope := (-6637282434595363 / 5000000000000000 : ℚ)
  oldCenter := (3407880671586473 / 10000000000000000 : ℚ)
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841]
}

noncomputable def cell_11456 : Cell := { cellDefaults with
  domain := ⟨(15137500000000001 / 25000000000000000 : ℚ), (24225000000000001 / 40000000000000000 : ℚ)⟩
  r := (5536773912631 / 10000000000000 : ℚ)
  w := (13919365339163 / 10000000000000 : ℚ)
  center := (242225000000000013 / 400000000000000000 : ℚ)
  supportValue := (426207073981629 / 1250000000000000 : ℚ)
  supportSlope := (-531172281091649 / 400000000000000 : ℚ)
  oldCenter := (426207073981629 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1419
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841, piece_842]
}

noncomputable def cell_11457 : Cell := { cellDefaults with
  domain := ⟨(24225000000000001 / 40000000000000000 : ℚ), (60575000000000001 / 100000000000000000 : ℚ)⟩
  r := (5536773912631 / 10000000000000 : ℚ)
  w := (13919365339163 / 10000000000000 : ℚ)
  center := (242275000000000007 / 400000000000000000 : ℚ)
  supportValue := (6815989246691817 / 20000000000000000 : ℚ)
  supportSlope := (-26538131429049 / 20000000000000 : ℚ)
  oldCenter := (6815989246691817 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1419
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841]
}

noncomputable def cell_11458 : Cell := { cellDefaults with
  domain := ⟨(60575000000000001 / 100000000000000000 : ℚ), (121174999999999999 / 200000000000000000 : ℚ)⟩
  r := (5536773912631 / 10000000000000 : ℚ)
  w := (13919365339163 / 10000000000000 : ℚ)
  center := (242325000000000001 / 400000000000000000 : ℚ)
  supportValue := (6812673871542787 / 20000000000000000 : ℚ)
  supportSlope := (-6626971338220229 / 5000000000000000 : ℚ)
  oldCenter := (6812673871542787 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1419
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841]
}

noncomputable def cell_11459 : Cell := { cellDefaults with
  domain := ⟨(121174999999999999 / 200000000000000000 : ℚ), (30299999999999999 / 50000000000000000 : ℚ)⟩
  r := (5536773912631 / 10000000000000 : ℚ)
  w := (13919365339163 / 10000000000000 : ℚ)
  center := (48474999999999999 / 80000000000000000 : ℚ)
  supportValue := (3404683107838709 / 10000000000000000 : ℚ)
  supportSlope := (-6625311592670341 / 5000000000000000 : ℚ)
  oldCenter := (3404683107838709 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1419
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_840, piece_841]
}

noncomputable def cell_11460 : Cell := { cellDefaults with
  domain := ⟨(30299999999999999 / 50000000000000000 : ℚ), (121224999999999999 / 200000000000000000 : ℚ)⟩
  r := (27670322909563 / 50000000000000 : ℚ)
  w := (869787485383 / 625000000000 : ℚ)
  center := (48484999999999999 / 80000000000000000 : ℚ)
  supportValue := (1703224044825963 / 5000000000000000 : ℚ)
  supportSlope := (-1324843169915387 / 1000000000000000 : ℚ)
  oldCenter := (1703224044825963 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1420
  oldLo := (17025000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_841]
}

noncomputable def cell_11461 : Cell := { cellDefaults with
  domain := ⟨(121224999999999999 / 200000000000000000 : ℚ), (60625000000000001 / 100000000000000000 : ℚ)⟩
  r := (27670322909563 / 50000000000000 : ℚ)
  w := (869787485383 / 625000000000 : ℚ)
  center := (242475000000000001 / 400000000000000000 : ℚ)
  supportValue := (8511987733310411 / 25000000000000000 : ℚ)
  supportSlope := (-264879559143129 / 200000000000000 : ℚ)
  oldCenter := (8511987733310411 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_1420
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (34100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_840, piece_841]
}

noncomputable def cell_11462 : Cell := { cellDefaults with
  domain := ⟨(60625000000000001 / 100000000000000000 : ℚ), (24255000000000001 / 40000000000000000 : ℚ)⟩
  r := (27670322909563 / 50000000000000 : ℚ)
  w := (869787485383 / 625000000000 : ℚ)
  center := (242525000000000007 / 400000000000000000 : ℚ)
  supportValue := (1701568682158009 / 5000000000000000 : ℚ)
  supportSlope := (-1654398860099017 / 1250000000000000 : ℚ)
  oldCenter := (1701568682158009 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1420
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_840]
}

noncomputable def cell_11463 : Cell := { cellDefaults with
  domain := ⟨(24255000000000001 / 40000000000000000 : ℚ), (15162500000000001 / 25000000000000000 : ℚ)⟩
  r := (27670322909563 / 50000000000000 : ℚ)
  w := (869787485383 / 625000000000 : ℚ)
  center := (242575000000000013 / 400000000000000000 : ℚ)
  supportValue := (850370977339193 / 2500000000000000 : ℚ)
  supportSlope := (-6610047842156337 / 5000000000000000 : ℚ)
  oldCenter := (850370977339193 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1420
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_840]
}

noncomputable def cell_11464 : Cell := { cellDefaults with
  domain := ⟨(15162500000000001 / 25000000000000000 : ℚ), (24265000000000001 / 40000000000000000 : ℚ)⟩
  r := (55313582899057 / 100000000000000 : ℚ)
  w := (13913839087829 / 10000000000000 : ℚ)
  center := (242625000000000013 / 400000000000000000 : ℚ)
  supportValue := (212703024313393 / 625000000000000 : ℚ)
  supportSlope := (-330742407276969 / 250000000000000 : ℚ)
  oldCenter := (212703024313393 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1421
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_840]
}

noncomputable def cell_11465 : Cell := { cellDefaults with
  domain := ⟨(24265000000000001 / 40000000000000000 : ℚ), (60675000000000001 / 100000000000000000 : ℚ)⟩
  r := (55313582899057 / 100000000000000 : ℚ)
  w := (13913839087829 / 10000000000000 : ℚ)
  center := (242675000000000007 / 400000000000000000 : ℚ)
  supportValue := (34015956201816583 / 100000000000000000 : ℚ)
  supportSlope := (-13214612235429777 / 10000000000000000 : ℚ)
  oldCenter := (34015956201816583 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1421
  oldLo := (17000000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_840]
}

noncomputable def cell_11466 : Cell := { cellDefaults with
  domain := ⟨(60675000000000001 / 100000000000000000 : ℚ), (121374999999999999 / 200000000000000000 : ℚ)⟩
  r := (55313582899057 / 100000000000000 : ℚ)
  w := (13913839087829 / 10000000000000 : ℚ)
  center := (242725000000000001 / 400000000000000000 : ℚ)
  supportValue := (424993380058921 / 1250000000000000 : ℚ)
  supportSlope := (-6604328049083189 / 5000000000000000 : ℚ)
  oldCenter := (424993380058921 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1421
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839, piece_840]
}

noncomputable def cell_11467 : Cell := { cellDefaults with
  domain := ⟨(121374999999999999 / 200000000000000000 : ℚ), (30349999999999999 / 50000000000000000 : ℚ)⟩
  r := (55313582899057 / 100000000000000 : ℚ)
  w := (13913839087829 / 10000000000000 : ℚ)
  center := (48554999999999999 / 80000000000000000 : ℚ)
  supportValue := (3398293530964069 / 10000000000000000 : ℚ)
  supportSlope := (-6600738250993291 / 5000000000000000 : ℚ)
  oldCenter := (3398293530964069 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1421
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839]
}

noncomputable def cell_11468 : Cell := { cellDefaults with
  domain := ⟨(30349999999999999 / 50000000000000000 : ℚ), (30357960893854747 / 50000000000000000 : ℚ)⟩
  r := (55286549928943 / 100000000000000 : ℚ)
  w := (13911084247891 / 10000000000000 : ℚ)
  center := (30353980446927373 / 50000000000000000 : ℚ)
  supportValue := (3399831755859249 / 10000000000000000 : ℚ)
  supportSlope := (-330047920227653 / 250000000000000 : ℚ)
  oldCenter := (3399831755859249 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1422
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839, piece_840]
}

noncomputable def cell_11469 : Cell := { cellDefaults with
  domain := ⟨(30357960893854747 / 50000000000000000 : ℚ), (6073184357541899 / 10000000000000000 : ℚ)⟩
  r := (55286549928943 / 100000000000000 : ℚ)
  w := (13911084247891 / 10000000000000 : ℚ)
  center := (30361941340782121 / 50000000000000000 : ℚ)
  supportValue := (4247162711819543 / 12500000000000000 : ℚ)
  supportSlope := (-1318982024506371 / 1000000000000000 : ℚ)
  oldCenter := (4247162711819543 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_1422
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839]
}

noncomputable def cell_11470 : Cell := { cellDefaults with
  domain := ⟨(6073184357541899 / 10000000000000000 : ℚ), (60740921787709497 / 100000000000000000 : ℚ)⟩
  r := (55286549928943 / 100000000000000 : ℚ)
  w := (13911084247891 / 10000000000000 : ℚ)
  center := (121472765363128487 / 200000000000000000 : ℚ)
  supportValue := (2122550002231071 / 6250000000000000 : ℚ)
  supportSlope := (-6587393448673613 / 5000000000000000 : ℚ)
  oldCenter := (2122550002231071 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1423
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839]
}

noncomputable def cell_11471 : Cell := { cellDefaults with
  domain := ⟨(60740921787709497 / 100000000000000000 : ℚ), (15187500000000001 / 25000000000000000 : ℚ)⟩
  r := (55286549928943 / 100000000000000 : ℚ)
  w := (13911084247891 / 10000000000000 : ℚ)
  center := (121490921787709501 / 200000000000000000 : ℚ)
  supportValue := (33948866877249523 / 100000000000000000 : ℚ)
  supportSlope := (-6587037913677707 / 5000000000000000 : ℚ)
  oldCenter := (33948866877249523 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1423
  oldLo := (16950000000000001 / 50000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_838, piece_839]
}

noncomputable def cell_11472 : Cell := { cellDefaults with
  domain := ⟨(15187500000000001 / 25000000000000000 : ℚ), (24305000000000001 / 40000000000000000 : ℚ)⟩
  r := (27629774766371 / 50000000000000 : ℚ)
  w := (13908340638673 / 10000000000000 : ℚ)
  center := (243025000000000013 / 400000000000000000 : ℚ)
  supportValue := (33968651991777193 / 100000000000000000 : ℚ)
  supportSlope := (-13175473464228007 / 10000000000000000 : ℚ)
  oldCenter := (33968651991777193 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1424
  oldLo := (16975000000000001 / 50000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_839]
}

noncomputable def cell_11473 : Cell := { cellDefaults with
  domain := ⟨(24305000000000001 / 40000000000000000 : ℚ), (60775000000000001 / 100000000000000000 : ℚ)⟩
  r := (27629774766371 / 50000000000000 : ℚ)
  w := (13908340638673 / 10000000000000 : ℚ)
  center := (243075000000000007 / 400000000000000000 : ℚ)
  supportValue := (33952215785779083 / 100000000000000000 : ℚ)
  supportSlope := (-822921209422499 / 625000000000000 : ℚ)
  oldCenter := (33952215785779083 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1424
  oldLo := (16950000000000001 / 50000000000000000 : ℚ)
  oldHi := (17000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_838, piece_839]
}

noncomputable def cell_11474 : Cell := { cellDefaults with
  domain := ⟨(60775000000000001 / 100000000000000000 : ℚ), (121574999999999999 / 200000000000000000 : ℚ)⟩
  r := (27629774766371 / 50000000000000 : ℚ)
  w := (13908340638673 / 10000000000000 : ℚ)
  center := (243125000000000001 / 400000000000000000 : ℚ)
  supportValue := (1696786616905377 / 5000000000000000 : ℚ)
  supportSlope := (-13162467470328367 / 10000000000000000 : ℚ)
  oldCenter := (1696786616905377 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1424
  oldLo := (16950000000000001 / 50000000000000000 : ℚ)
  oldHi := (16975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_838]
}

noncomputable def cell_11475 : Cell := { cellDefaults with
  domain := ⟨(121574999999999999 / 200000000000000000 : ℚ), (30399999999999999 / 50000000000000000 : ℚ)⟩
  r := (27629774766371 / 50000000000000 : ℚ)
  w := (13908340638673 / 10000000000000 : ℚ)
  center := (48634999999999999 / 80000000000000000 : ℚ)
  supportValue := (3391928864909743 / 10000000000000000 : ℚ)
  supportSlope := (-6573721089569673 / 5000000000000000 : ℚ)
  oldCenter := (3391928864909743 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1424
  oldLo := (16950000000000001 / 50000000000000000 : ℚ)
  oldHi := (16975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_838]
}

noncomputable def cell_11476 : Cell := { cellDefaults with
  domain := ⟨(30399999999999999 / 50000000000000000 : ℚ), (121624999999999999 / 200000000000000000 : ℚ)⟩
  r := (55232577632677 / 100000000000000 : ℚ)
  w := (1738199855029 / 1250000000000 : ℚ)
  center := (48644999999999999 / 80000000000000000 : ℚ)
  supportValue := (16968413881768757 / 50000000000000000 : ℚ)
  supportSlope := (-13157011218448231 / 10000000000000000 : ℚ)
  oldCenter := (16968413881768757 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1425
  oldLo := (16950000000000001 / 50000000000000000 : ℚ)
  oldHi := (16975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_838]
}

noncomputable def cell_11477 : Cell := { cellDefaults with
  domain := ⟨(121624999999999999 / 200000000000000000 : ℚ), (60825000000000001 / 100000000000000000 : ℚ)⟩
  r := (55232577632677 / 100000000000000 : ℚ)
  w := (1738199855029 / 1250000000000 : ℚ)
  center := (243275000000000001 / 400000000000000000 : ℚ)
  supportValue := (16960195444012763 / 50000000000000000 : ℚ)
  supportSlope := (-164274960268809 / 125000000000000 : ℚ)
  oldCenter := (16960195444012763 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1425
  oldLo := (16950000000000001 / 50000000000000000 : ℚ)
  oldHi := (16975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_838]
}

noncomputable def cell_11478 : Cell := { cellDefaults with
  domain := ⟨(60825000000000001 / 100000000000000000 : ℚ), (24335000000000001 / 40000000000000000 : ℚ)⟩
  r := (55232577632677 / 100000000000000 : ℚ)
  w := (1738199855029 / 1250000000000 : ℚ)
  center := (243325000000000007 / 400000000000000000 : ℚ)
  supportValue := (33903996475574183 / 100000000000000000 : ℚ)
  supportSlope := (-52525803444781 / 40000000000000 : ℚ)
  oldCenter := (33903996475574183 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1425
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837, piece_838]
}

noncomputable def cell_11479 : Cell := { cellDefaults with
  domain := ⟨(24335000000000001 / 40000000000000000 : ℚ), (15212500000000001 / 25000000000000000 : ℚ)⟩
  r := (55232577632677 / 100000000000000 : ℚ)
  w := (1738199855029 / 1250000000000 : ℚ)
  center := (243375000000000013 / 400000000000000000 : ℚ)
  supportValue := (338875571233753 / 1000000000000000 : ℚ)
  supportSlope := (-1312909711084507 / 1000000000000000 : ℚ)
  oldCenter := (338875571233753 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1425
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837]
}

noncomputable def cell_11480 : Cell := { cellDefaults with
  domain := ⟨(15212500000000001 / 25000000000000000 : ℚ), (243450000000000011 / 400000000000000000 : ℚ)⟩
  r := (27602818281001 / 50000000000000 : ℚ)
  w := (13902866229443 / 10000000000000 : ℚ)
  center := (486850000000000027 / 800000000000000000 : ℚ)
  supportValue := (339050790260963 / 1000000000000000 : ℚ)
  supportSlope := (-6562435844271287 / 5000000000000000 : ℚ)
  oldCenter := (339050790260963 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1426
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837, piece_838]
}

noncomputable def cell_11481 : Cell := { cellDefaults with
  domain := ⟨(243450000000000011 / 400000000000000000 : ℚ), (121750000000000003 / 200000000000000000 : ℚ)⟩
  r := (27602818281001 / 50000000000000 : ℚ)
  w := (13902866229443 / 10000000000000 : ℚ)
  center := (486950000000000017 / 800000000000000000 : ℚ)
  supportValue := (6777729577665511 / 20000000000000000 : ℚ)
  supportSlope := (-131236602067921 / 100000000000000 : ℚ)
  oldCenter := (6777729577665511 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1426
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837]
}

noncomputable def cell_11482 : Cell := { cellDefaults with
  domain := ⟨(121750000000000003 / 200000000000000000 : ℚ), (243550000000000001 / 400000000000000000 : ℚ)⟩
  r := (27602818281001 / 50000000000000 : ℚ)
  w := (13902866229443 / 10000000000000 : ℚ)
  center := (487050000000000007 / 800000000000000000 : ℚ)
  supportValue := (423403158585479 / 1250000000000000 : ℚ)
  supportSlope := (-6554334711466703 / 5000000000000000 : ℚ)
  oldCenter := (423403158585479 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1426
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837]
}

noncomputable def cell_11483 : Cell := { cellDefaults with
  domain := ⟨(243550000000000001 / 400000000000000000 : ℚ), (60899999999999999 / 100000000000000000 : ℚ)⟩
  r := (27602818281001 / 50000000000000 : ℚ)
  w := (13902866229443 / 10000000000000 : ℚ)
  center := (487149999999999997 / 800000000000000000 : ℚ)
  supportValue := (33855899885210533 / 100000000000000000 : ℚ)
  supportSlope := (-13096160552496159 / 10000000000000000 : ℚ)
  oldCenter := (33855899885210533 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1426
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_836, piece_837]
}

noncomputable def cell_11484 : Cell := { cellDefaults with
  domain := ⟨(60899999999999999 / 100000000000000000 : ℚ), (243650000000000001 / 400000000000000000 : ℚ)⟩
  r := (55178729928359 / 100000000000000 : ℚ)
  w := (1737518050377 / 1250000000000 : ℚ)
  center := (487249999999999997 / 800000000000000000 : ℚ)
  supportValue := (3387331647477463 / 10000000000000000 : ℚ)
  supportSlope := (-2620644246652497 / 2000000000000000 : ℚ)
  oldCenter := (3387331647477463 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1427
  oldLo := (16925000000000001 / 50000000000000000 : ℚ)
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_837]
}

noncomputable def cell_11485 : Cell := { cellDefaults with
  domain := ⟨(243650000000000001 / 400000000000000000 : ℚ), (121850000000000003 / 200000000000000000 : ℚ)⟩
  r := (55178729928359 / 100000000000000 : ℚ)
  w := (1737518050377 / 1250000000000 : ℚ)
  center := (487350000000000007 / 800000000000000000 : ℚ)
  supportValue := (33856970477160087 / 100000000000000000 : ℚ)
  supportSlope := (-523584021892579 / 400000000000000 : ℚ)
  oldCenter := (33856970477160087 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1427
  oldHi := (16950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_836, piece_837]
}

noncomputable def cell_11486 : Cell := { cellDefaults with
  domain := ⟨(121850000000000003 / 200000000000000000 : ℚ), (243750000000000011 / 400000000000000000 : ℚ)⟩
  r := (55178729928359 / 100000000000000 : ℚ)
  w := (1737518050377 / 1250000000000 : ℚ)
  center := (487450000000000017 / 800000000000000000 : ℚ)
  supportValue := (105751823147147 / 312500000000000 : ℚ)
  supportSlope := (-13090456323155777 / 10000000000000000 : ℚ)
  oldCenter := (105751823147147 / 312500000000000 : ℚ)
  newCoefficients := coefficients_1427
  oldPieces := [piece_836]
}

noncomputable def cell_11487 : Cell := { cellDefaults with
  domain := ⟨(243750000000000011 / 400000000000000000 : ℚ), (15237500000000001 / 25000000000000000 : ℚ)⟩
  r := (55178729928359 / 100000000000000 : ℚ)
  w := (1737518050377 / 1250000000000 : ℚ)
  center := (487550000000000027 / 800000000000000000 : ℚ)
  supportValue := (211401435628233 / 625000000000000 : ℚ)
  supportSlope := (-13075481477268027 / 10000000000000000 : ℚ)
  oldCenter := (211401435628233 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1427
  oldPieces := [piece_836]
}

noncomputable def cell_11488 : Cell := { cellDefaults with
  domain := ⟨(15237500000000001 / 25000000000000000 : ℚ), (243850000000000011 / 400000000000000000 : ℚ)⟩
  r := (55151848711459 / 100000000000000 : ℚ)
  w := (3474355729757 / 2500000000000 : ℚ)
  center := (487650000000000027 / 800000000000000000 : ℚ)
  supportValue := (33841660625893333 / 100000000000000000 : ℚ)
  supportSlope := (-2617007213841211 / 2000000000000000 : ℚ)
  oldCenter := (33841660625893333 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1428
  oldPieces := [piece_836]
}

noncomputable def cell_11489 : Cell := { cellDefaults with
  domain := ⟨(243850000000000011 / 400000000000000000 : ℚ), (121950000000000003 / 200000000000000000 : ℚ)⟩
  r := (55151848711459 / 100000000000000 : ℚ)
  w := (3474355729757 / 2500000000000 : ℚ)
  center := (487750000000000017 / 800000000000000000 : ℚ)
  supportValue := (3382531368775931 / 10000000000000000 : ℚ)
  supportSlope := (-653503611067817 / 500000000000000 : ℚ)
  oldCenter := (3382531368775931 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1428
  oldPieces := [piece_836]
}

noncomputable def cell_11490 : Cell := { cellDefaults with
  domain := ⟨(121950000000000003 / 200000000000000000 : ℚ), (243950000000000001 / 400000000000000000 : ℚ)⟩
  r := (55151848711459 / 100000000000000 : ℚ)
  w := (3474355729757 / 2500000000000 : ℚ)
  center := (487850000000000007 / 800000000000000000 : ℚ)
  supportValue := (211306158854347 / 625000000000000 : ℚ)
  supportSlope := (-815948041731433 / 625000000000000 : ℚ)
  oldCenter := (211306158854347 / 625000000000000 : ℚ)
  newCoefficients := coefficients_1428
  oldPieces := [piece_836]
}

noncomputable def cell_11491 : Cell := { cellDefaults with
  domain := ⟨(243950000000000001 / 400000000000000000 : ℚ), (60999999999999999 / 100000000000000000 : ℚ)⟩
  r := (55151848711459 / 100000000000000 : ℚ)
  w := (3474355729757 / 2500000000000 : ℚ)
  center := (487949999999999997 / 800000000000000000 : ℚ)
  supportValue := (264005388827133 / 781250000000000 : ℚ)
  supportSlope := (-13056542757860141 / 10000000000000000 : ℚ)
  oldCenter := (264005388827133 / 781250000000000 : ℚ)
  newCoefficients := coefficients_1428
  oldLo := (16875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_835, piece_836]
}

noncomputable def cell_11492 : Cell := { cellDefaults with
  domain := ⟨(60999999999999999 / 100000000000000000 : ℚ), (244050000000000001 / 400000000000000000 : ℚ)⟩
  r := (2205000029889 / 4000000000000 : ℚ)
  w := (3473678176777 / 2500000000000 : ℚ)
  center := (488049999999999997 / 800000000000000000 : ℚ)
  supportValue := (676200850512677 / 2000000000000000 : ℚ)
  supportSlope := (-1304974816539553 / 1000000000000000 : ℚ)
  oldCenter := (676200850512677 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_1429
  oldPieces := [piece_836]
}

noncomputable def cell_11493 : Cell := { cellDefaults with
  domain := ⟨(244050000000000001 / 400000000000000000 : ℚ), (122050000000000003 / 200000000000000000 : ℚ)⟩
  r := (2205000029889 / 4000000000000 : ℚ)
  w := (3473678176777 / 2500000000000 : ℚ)
  center := (488150000000000007 / 800000000000000000 : ℚ)
  supportValue := (3379375504197433 / 10000000000000000 : ℚ)
  supportSlope := (-3262504798417727 / 2500000000000000 : ℚ)
  oldCenter := (3379375504197433 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1429
  oldLo := (16875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_835, piece_836]
}

noncomputable def cell_11494 : Cell := { cellDefaults with
  domain := ⟨(122050000000000003 / 200000000000000000 : ℚ), (244150000000000011 / 400000000000000000 : ℚ)⟩
  r := (2205000029889 / 4000000000000 : ℚ)
  w := (3473678176777 / 2500000000000 : ℚ)
  center := (488250000000000017 / 800000000000000000 : ℚ)
  supportValue := (844435643160543 / 2500000000000000 : ℚ)
  supportSlope := (-13037067818169963 / 10000000000000000 : ℚ)
  oldCenter := (844435643160543 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1429
  oldLo := (16875000000000001 / 50000000000000000 : ℚ)
  oldHi := (16900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_835]
}

noncomputable def cell_11495 : Cell := { cellDefaults with
  domain := ⟨(244150000000000011 / 400000000000000000 : ℚ), (15262500000000001 / 25000000000000000 : ℚ)⟩
  r := (2205000029889 / 4000000000000 : ℚ)
  w := (3473678176777 / 2500000000000 : ℚ)
  center := (488350000000000027 / 800000000000000000 : ℚ)
  supportValue := (1688056934411573 / 5000000000000000 : ℚ)
  supportSlope := (-13022200471358523 / 10000000000000000 : ℚ)
  oldCenter := (1688056934411573 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1429
  oldLo := (16875000000000001 / 50000000000000000 : ℚ)
  oldHi := (16900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_835]
}

noncomputable def cell_11496 : Cell := { cellDefaults with
  domain := ⟨(15262500000000001 / 25000000000000000 : ℚ), (244250000000000011 / 400000000000000000 : ℚ)⟩
  r := (55098184245043 / 100000000000000 : ℚ)
  w := (27132833863 / 19531250000 : ℚ)
  center := (488450000000000027 / 800000000000000000 : ℚ)
  supportValue := (168892360611257 / 500000000000000 : ℚ)
  supportSlope := (-1303165524879321 / 1000000000000000 : ℚ)
  oldCenter := (168892360611257 / 500000000000000 : ℚ)
  newCoefficients := coefficients_1430
  oldLo := (16875000000000001 / 50000000000000000 : ℚ)
  oldHi := (16900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_835]
}

noncomputable def cell_11497 : Cell := { cellDefaults with
  domain := ⟨(244250000000000011 / 400000000000000000 : ℚ), (122150000000000003 / 200000000000000000 : ℚ)⟩
  r := (55098184245043 / 100000000000000 : ℚ)
  w := (27132833863 / 19531250000 : ℚ)
  center := (488550000000000017 / 800000000000000000 : ℚ)
  supportValue := (422027398036149 / 1250000000000000 : ℚ)
  supportSlope := (-13016798898874051 / 10000000000000000 : ℚ)
  oldCenter := (422027398036149 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1430
  oldLo := (16875000000000001 / 50000000000000000 : ℚ)
  oldHi := (16900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_835]
}

noncomputable def cell_11498 : Cell := { cellDefaults with
  domain := ⟨(122150000000000003 / 200000000000000000 : ℚ), (244350000000000001 / 400000000000000000 : ℚ)⟩
  r := (55098184245043 / 100000000000000 : ℚ)
  w := (27132833863 / 19531250000 : ℚ)
  center := (488650000000000007 / 800000000000000000 : ℚ)
  supportValue := (3374594833901679 / 10000000000000000 : ℚ)
  supportSlope := (-3253711728468437 / 2500000000000000 : ℚ)
  oldCenter := (3374594833901679 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1430
  oldLo := (16850000000000001 / 50000000000000000 : ℚ)
  oldHi := (16900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_834, piece_835]
}

noncomputable def cell_11499 : Cell := { cellDefaults with
  domain := ⟨(244350000000000001 / 400000000000000000 : ℚ), (61099999999999999 / 100000000000000000 : ℚ)⟩
  r := (55098184245043 / 100000000000000 : ℚ)
  w := (27132833863 / 19531250000 : ℚ)
  center := (488749999999999997 / 800000000000000000 : ℚ)
  supportValue := (843241503260747 / 2500000000000000 : ℚ)
  supportSlope := (-13004218686304603 / 10000000000000000 : ℚ)
  oldCenter := (843241503260747 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1430
  oldLo := (16850000000000001 / 50000000000000000 : ℚ)
  oldHi := (16875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_834]
}

theorem check_11450 : cell_11450.check = true := by
  decide +kernel

theorem check_11451 : cell_11451.check = true := by
  decide +kernel

theorem check_11452 : cell_11452.check = true := by
  decide +kernel

theorem check_11453 : cell_11453.check = true := by
  decide +kernel

theorem check_11454 : cell_11454.check = true := by
  decide +kernel

theorem check_11455 : cell_11455.check = true := by
  decide +kernel

theorem check_11456 : cell_11456.check = true := by
  decide +kernel

theorem check_11457 : cell_11457.check = true := by
  decide +kernel

theorem check_11458 : cell_11458.check = true := by
  decide +kernel

theorem check_11459 : cell_11459.check = true := by
  decide +kernel

theorem check_11460 : cell_11460.check = true := by
  decide +kernel

theorem check_11461 : cell_11461.check = true := by
  decide +kernel

theorem check_11462 : cell_11462.check = true := by
  decide +kernel

theorem check_11463 : cell_11463.check = true := by
  decide +kernel

theorem check_11464 : cell_11464.check = true := by
  decide +kernel

theorem check_11465 : cell_11465.check = true := by
  decide +kernel

theorem check_11466 : cell_11466.check = true := by
  decide +kernel

theorem check_11467 : cell_11467.check = true := by
  decide +kernel

theorem check_11468 : cell_11468.check = true := by
  decide +kernel

theorem check_11469 : cell_11469.check = true := by
  decide +kernel

theorem check_11470 : cell_11470.check = true := by
  decide +kernel

theorem check_11471 : cell_11471.check = true := by
  decide +kernel

theorem check_11472 : cell_11472.check = true := by
  decide +kernel

theorem check_11473 : cell_11473.check = true := by
  decide +kernel

theorem check_11474 : cell_11474.check = true := by
  decide +kernel

theorem check_11475 : cell_11475.check = true := by
  decide +kernel

theorem check_11476 : cell_11476.check = true := by
  decide +kernel

theorem check_11477 : cell_11477.check = true := by
  decide +kernel

theorem check_11478 : cell_11478.check = true := by
  decide +kernel

theorem check_11479 : cell_11479.check = true := by
  decide +kernel

theorem check_11480 : cell_11480.check = true := by
  decide +kernel

theorem check_11481 : cell_11481.check = true := by
  decide +kernel

theorem check_11482 : cell_11482.check = true := by
  decide +kernel

theorem check_11483 : cell_11483.check = true := by
  decide +kernel

theorem check_11484 : cell_11484.check = true := by
  decide +kernel

theorem check_11485 : cell_11485.check = true := by
  decide +kernel

theorem check_11486 : cell_11486.check = true := by
  decide +kernel

theorem check_11487 : cell_11487.check = true := by
  decide +kernel

theorem check_11488 : cell_11488.check = true := by
  decide +kernel

theorem check_11489 : cell_11489.check = true := by
  decide +kernel

theorem check_11490 : cell_11490.check = true := by
  decide +kernel

theorem check_11491 : cell_11491.check = true := by
  decide +kernel

theorem check_11492 : cell_11492.check = true := by
  decide +kernel

theorem check_11493 : cell_11493.check = true := by
  decide +kernel

theorem check_11494 : cell_11494.check = true := by
  decide +kernel

theorem check_11495 : cell_11495.check = true := by
  decide +kernel

theorem check_11496 : cell_11496.check = true := by
  decide +kernel

theorem check_11497 : cell_11497.check = true := by
  decide +kernel

theorem check_11498 : cell_11498.check = true := by
  decide +kernel

theorem check_11499 : cell_11499.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_11450, cell_11451, cell_11452, cell_11453, cell_11454, cell_11455, cell_11456, cell_11457, cell_11458, cell_11459, cell_11460, cell_11461, cell_11462, cell_11463, cell_11464, cell_11465, cell_11466, cell_11467, cell_11468, cell_11469, cell_11470, cell_11471, cell_11472, cell_11473, cell_11474, cell_11475, cell_11476, cell_11477, cell_11478, cell_11479, cell_11480, cell_11481, cell_11482, cell_11483, cell_11484, cell_11485, cell_11486, cell_11487, cell_11488, cell_11489, cell_11490, cell_11491, cell_11492, cell_11493, cell_11494, cell_11495, cell_11496, cell_11497, cell_11498, cell_11499]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_11450, check_11451, check_11452, check_11453, check_11454, check_11455, check_11456, check_11457, check_11458, check_11459, check_11460, check_11461, check_11462, check_11463, check_11464, check_11465, check_11466, check_11467, check_11468, check_11469, check_11470, check_11471, check_11472, check_11473, check_11474, check_11475, check_11476, check_11477, check_11478, check_11479, check_11480, check_11481, check_11482, check_11483, check_11484, check_11485, check_11486, check_11487, check_11488, check_11489, check_11490, check_11491, check_11492, check_11493, check_11494, check_11495, check_11496, check_11497, check_11498, check_11499, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0229

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0229
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0229
open AnalyticBounds.ExpressionCertificate

theorem linked_11450 : Linked cell_11450 pieces := by
  apply Linked.of_piece piece_1417 piece_1417_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11450, List.cons_subset, List.nil_subset, and_true]
  exact piece_842_mem

theorem linked_11451 : Linked cell_11451 pieces := by
  apply Linked.of_piece piece_1417 piece_1417_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11451, List.cons_subset, List.nil_subset, and_true]
  exact piece_842_mem

theorem linked_11452 : Linked cell_11452 pieces := by
  apply Linked.of_piece piece_1418 piece_1418_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11452, List.cons_subset, List.nil_subset, and_true]
  exact piece_842_mem

theorem linked_11453 : Linked cell_11453 pieces := by
  apply Linked.of_piece piece_1418 piece_1418_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11453, List.cons_subset, List.nil_subset, and_true]
  exact piece_842_mem

theorem linked_11454 : Linked cell_11454 pieces := by
  apply Linked.of_piece piece_1418 piece_1418_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11454, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_841_mem, piece_842_mem⟩

theorem linked_11455 : Linked cell_11455 pieces := by
  apply Linked.of_piece piece_1418 piece_1418_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11455, List.cons_subset, List.nil_subset, and_true]
  exact piece_841_mem

theorem linked_11456 : Linked cell_11456 pieces := by
  apply Linked.of_piece piece_1419 piece_1419_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11456, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_841_mem, piece_842_mem⟩

theorem linked_11457 : Linked cell_11457 pieces := by
  apply Linked.of_piece piece_1419 piece_1419_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11457, List.cons_subset, List.nil_subset, and_true]
  exact piece_841_mem

theorem linked_11458 : Linked cell_11458 pieces := by
  apply Linked.of_piece piece_1419 piece_1419_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11458, List.cons_subset, List.nil_subset, and_true]
  exact piece_841_mem

theorem linked_11459 : Linked cell_11459 pieces := by
  apply Linked.of_piece piece_1419 piece_1419_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11459, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_840_mem, piece_841_mem⟩

theorem linked_11460 : Linked cell_11460 pieces := by
  apply Linked.of_piece piece_1420 piece_1420_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11460, List.cons_subset, List.nil_subset, and_true]
  exact piece_841_mem

theorem linked_11461 : Linked cell_11461 pieces := by
  apply Linked.of_piece piece_1420 piece_1420_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11461, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_840_mem, piece_841_mem⟩

theorem linked_11462 : Linked cell_11462 pieces := by
  apply Linked.of_piece piece_1420 piece_1420_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11462, List.cons_subset, List.nil_subset, and_true]
  exact piece_840_mem

theorem linked_11463 : Linked cell_11463 pieces := by
  apply Linked.of_piece piece_1420 piece_1420_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11463, List.cons_subset, List.nil_subset, and_true]
  exact piece_840_mem

theorem linked_11464 : Linked cell_11464 pieces := by
  apply Linked.of_piece piece_1421 piece_1421_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11464, List.cons_subset, List.nil_subset, and_true]
  exact piece_840_mem

theorem linked_11465 : Linked cell_11465 pieces := by
  apply Linked.of_piece piece_1421 piece_1421_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11465, List.cons_subset, List.nil_subset, and_true]
  exact piece_840_mem

theorem linked_11466 : Linked cell_11466 pieces := by
  apply Linked.of_piece piece_1421 piece_1421_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11466, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_839_mem, piece_840_mem⟩

theorem linked_11467 : Linked cell_11467 pieces := by
  apply Linked.of_piece piece_1421 piece_1421_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11467, List.cons_subset, List.nil_subset, and_true]
  exact piece_839_mem

theorem linked_11468 : Linked cell_11468 pieces := by
  apply Linked.of_piece piece_1422 piece_1422_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11468, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_839_mem, piece_840_mem⟩

theorem linked_11469 : Linked cell_11469 pieces := by
  apply Linked.of_piece piece_1422 piece_1422_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11469, List.cons_subset, List.nil_subset, and_true]
  exact piece_839_mem

theorem linked_11470 : Linked cell_11470 pieces := by
  apply Linked.of_piece piece_1423 piece_1423_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11470, List.cons_subset, List.nil_subset, and_true]
  exact piece_839_mem

theorem linked_11471 : Linked cell_11471 pieces := by
  apply Linked.of_piece piece_1423 piece_1423_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11471, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_838_mem, piece_839_mem⟩

theorem linked_11472 : Linked cell_11472 pieces := by
  apply Linked.of_piece piece_1424 piece_1424_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11472, List.cons_subset, List.nil_subset, and_true]
  exact piece_839_mem

theorem linked_11473 : Linked cell_11473 pieces := by
  apply Linked.of_piece piece_1424 piece_1424_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11473, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_838_mem, piece_839_mem⟩

theorem linked_11474 : Linked cell_11474 pieces := by
  apply Linked.of_piece piece_1424 piece_1424_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11474, List.cons_subset, List.nil_subset, and_true]
  exact piece_838_mem

theorem linked_11475 : Linked cell_11475 pieces := by
  apply Linked.of_piece piece_1424 piece_1424_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11475, List.cons_subset, List.nil_subset, and_true]
  exact piece_838_mem

theorem linked_11476 : Linked cell_11476 pieces := by
  apply Linked.of_piece piece_1425 piece_1425_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11476, List.cons_subset, List.nil_subset, and_true]
  exact piece_838_mem

theorem linked_11477 : Linked cell_11477 pieces := by
  apply Linked.of_piece piece_1425 piece_1425_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11477, List.cons_subset, List.nil_subset, and_true]
  exact piece_838_mem

theorem linked_11478 : Linked cell_11478 pieces := by
  apply Linked.of_piece piece_1425 piece_1425_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11478, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_837_mem, piece_838_mem⟩

theorem linked_11479 : Linked cell_11479 pieces := by
  apply Linked.of_piece piece_1425 piece_1425_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11479, List.cons_subset, List.nil_subset, and_true]
  exact piece_837_mem

theorem linked_11480 : Linked cell_11480 pieces := by
  apply Linked.of_piece piece_1426 piece_1426_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11480, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_837_mem, piece_838_mem⟩

theorem linked_11481 : Linked cell_11481 pieces := by
  apply Linked.of_piece piece_1426 piece_1426_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11481, List.cons_subset, List.nil_subset, and_true]
  exact piece_837_mem

theorem linked_11482 : Linked cell_11482 pieces := by
  apply Linked.of_piece piece_1426 piece_1426_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11482, List.cons_subset, List.nil_subset, and_true]
  exact piece_837_mem

theorem linked_11483 : Linked cell_11483 pieces := by
  apply Linked.of_piece piece_1426 piece_1426_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11483, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_836_mem, piece_837_mem⟩

theorem linked_11484 : Linked cell_11484 pieces := by
  apply Linked.of_piece piece_1427 piece_1427_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11484, List.cons_subset, List.nil_subset, and_true]
  exact piece_837_mem

theorem linked_11485 : Linked cell_11485 pieces := by
  apply Linked.of_piece piece_1427 piece_1427_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11485, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_836_mem, piece_837_mem⟩

theorem linked_11486 : Linked cell_11486 pieces := by
  apply Linked.of_piece piece_1427 piece_1427_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11486, List.cons_subset, List.nil_subset, and_true]
  exact piece_836_mem

theorem linked_11487 : Linked cell_11487 pieces := by
  apply Linked.of_piece piece_1427 piece_1427_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11487, List.cons_subset, List.nil_subset, and_true]
  exact piece_836_mem

theorem linked_11488 : Linked cell_11488 pieces := by
  apply Linked.of_piece piece_1428 piece_1428_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11488, List.cons_subset, List.nil_subset, and_true]
  exact piece_836_mem

theorem linked_11489 : Linked cell_11489 pieces := by
  apply Linked.of_piece piece_1428 piece_1428_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11489, List.cons_subset, List.nil_subset, and_true]
  exact piece_836_mem

theorem linked_11490 : Linked cell_11490 pieces := by
  apply Linked.of_piece piece_1428 piece_1428_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11490, List.cons_subset, List.nil_subset, and_true]
  exact piece_836_mem

theorem linked_11491 : Linked cell_11491 pieces := by
  apply Linked.of_piece piece_1428 piece_1428_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11491, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_835_mem, piece_836_mem⟩

theorem linked_11492 : Linked cell_11492 pieces := by
  apply Linked.of_piece piece_1429 piece_1429_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11492, List.cons_subset, List.nil_subset, and_true]
  exact piece_836_mem

theorem linked_11493 : Linked cell_11493 pieces := by
  apply Linked.of_piece piece_1429 piece_1429_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11493, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_835_mem, piece_836_mem⟩

theorem linked_11494 : Linked cell_11494 pieces := by
  apply Linked.of_piece piece_1429 piece_1429_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11494, List.cons_subset, List.nil_subset, and_true]
  exact piece_835_mem

theorem linked_11495 : Linked cell_11495 pieces := by
  apply Linked.of_piece piece_1429 piece_1429_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11495, List.cons_subset, List.nil_subset, and_true]
  exact piece_835_mem

theorem linked_11496 : Linked cell_11496 pieces := by
  apply Linked.of_piece piece_1430 piece_1430_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11496, List.cons_subset, List.nil_subset, and_true]
  exact piece_835_mem

theorem linked_11497 : Linked cell_11497 pieces := by
  apply Linked.of_piece piece_1430 piece_1430_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11497, List.cons_subset, List.nil_subset, and_true]
  exact piece_835_mem

theorem linked_11498 : Linked cell_11498 pieces := by
  apply Linked.of_piece piece_1430 piece_1430_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11498, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_834_mem, piece_835_mem⟩

theorem linked_11499 : Linked cell_11499 pieces := by
  apply Linked.of_piece piece_1430 piece_1430_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_11499, List.cons_subset, List.nil_subset, and_true]
  exact piece_834_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0229.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0229.cells,List.forall_mem_cons]
  exact ⟨linked_11450, linked_11451, linked_11452, linked_11453, linked_11454, linked_11455, linked_11456, linked_11457, linked_11458, linked_11459, linked_11460, linked_11461, linked_11462, linked_11463, linked_11464, linked_11465, linked_11466, linked_11467, linked_11468, linked_11469, linked_11470, linked_11471, linked_11472, linked_11473, linked_11474, linked_11475, linked_11476, linked_11477, linked_11478, linked_11479, linked_11480, linked_11481, linked_11482, linked_11483, linked_11484, linked_11485, linked_11486, linked_11487, linked_11488, linked_11489, linked_11490, linked_11491, linked_11492, linked_11493, linked_11494, linked_11495, linked_11496, linked_11497, linked_11498, linked_11499, by simp⟩

theorem covered : covers (60475000000000001 / 100000000000000000 : ℚ) (61099999999999999 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0229.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0229
