import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0251
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(59231117318435757 / 80000000000000000 : ℚ), (14810000000000001 / 20000000000000000 : ℚ)⟩
  branch := .left
  r := (24429890815599 / 50000000000000 : ℚ)
  w := (13443181337059 / 10000000000000 : ℚ)
  center := (118471117318435761 / 160000000000000000 : ℚ)
  supportValue := (26988374160235407 / 100000000000000000 : ℚ)
  supportSlope := (-2031148703299483 / 2500000000000000 : ℚ)
  oldCenter := (26988374160235407 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1714
  oldLo := (13375000000000001 / 50000000000000000 : ℚ)
  oldHi := (13400000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_682]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_12550 : Cell := { cellDefaults with
  r := (49078193343279 / 100000000000000 : ℚ)
  w := (1681083483401 / 1250000000000 : ℚ)
  newCoefficients := coefficients_1713
  oldLo := (13475000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_686]
}

noncomputable def cell_12551 : Cell := { cellDefaults with
  domain := ⟨(14810000000000001 / 20000000000000000 : ℚ), (148125000000000007 / 200000000000000000 : ℚ)⟩
  r := (49058216828461 / 100000000000000 : ℚ)
  w := (3362026739009 / 2500000000000 : ℚ)
  center := (296225000000000017 / 400000000000000000 : ℚ)
  supportValue := (674937260728059 / 2500000000000000 : ℚ)
  supportSlope := (-4062669539757689 / 5000000000000000 : ℚ)
  oldCenter := (674937260728059 / 2500000000000000 : ℚ)
  oldLo := (13475000000000001 / 50000000000000000 : ℚ)
  oldHi := (13525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_686, piece_687, piece_688]
}

noncomputable def cell_12552 : Cell := { cellDefaults with
  domain := ⟨(148125000000000007 / 200000000000000000 : ℚ), (37037500000000001 / 50000000000000000 : ℚ)⟩
  r := (49058216828461 / 100000000000000 : ℚ)
  w := (3362026739009 / 2500000000000 : ℚ)
  center := (296275000000000011 / 400000000000000000 : ℚ)
  supportValue := (26987315418905833 / 100000000000000000 : ℚ)
  supportSlope := (-8120602637023829 / 10000000000000000 : ℚ)
  oldCenter := (26987315418905833 / 100000000000000000 : ℚ)
  oldLo := (13475000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_686]
}

noncomputable def cell_12553 : Cell := { cellDefaults with
  domain := ⟨(37037500000000001 / 50000000000000000 : ℚ), (148175000000000001 / 200000000000000000 : ℚ)⟩
  r := (49058216828461 / 100000000000000 : ℚ)
  w := (3362026739009 / 2500000000000 : ℚ)
  center := (59265000000000001 / 80000000000000000 : ℚ)
  supportValue := (67442925039353 / 250000000000000 : ℚ)
  supportSlope := (-4056023337573531 / 5000000000000000 : ℚ)
  oldCenter := (67442925039353 / 250000000000000 : ℚ)
  oldLo := (13475000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_686]
}

noncomputable def cell_12554 : Cell := { cellDefaults with
  domain := ⟨(148175000000000001 / 200000000000000000 : ℚ), (74099999999999999 / 100000000000000000 : ℚ)⟩
  r := (49058216828461 / 100000000000000 : ℚ)
  w := (3362026739009 / 2500000000000 : ℚ)
  center := (296374999999999999 / 400000000000000000 : ℚ)
  supportValue := (6741758821193261 / 25000000000000000 : ℚ)
  supportSlope := (-2025881767049563 / 2500000000000000 : ℚ)
  oldCenter := (6741758821193261 / 25000000000000000 : ℚ)
  oldLo := (13475000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_686]
}

noncomputable def cell_12555 : Cell := { cellDefaults with
  domain := ⟨(74099999999999999 / 100000000000000000 : ℚ), (148225000000000001 / 200000000000000000 : ℚ)⟩
  r := (1532445883889 / 3125000000000 : ℚ)
  w := (13447565322001 / 10000000000000 : ℚ)
  center := (296424999999999999 / 400000000000000000 : ℚ)
  supportValue := (674387699376947 / 2500000000000000 : ℚ)
  supportSlope := (-4053780126004949 / 5000000000000000 : ℚ)
  oldCenter := (674387699376947 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1715
  oldLo := (13475000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_686]
}

noncomputable def cell_12556 : Cell := { cellDefaults with
  domain := ⟨(148225000000000001 / 200000000000000000 : ℚ), (37062500000000001 / 50000000000000000 : ℚ)⟩
  r := (1532445883889 / 3125000000000 : ℚ)
  w := (13447565322001 / 10000000000000 : ℚ)
  center := (59295000000000001 / 80000000000000000 : ℚ)
  supportValue := (2696537884433651 / 10000000000000000 : ℚ)
  supportSlope := (-809905311114259 / 1000000000000000 : ℚ)
  oldCenter := (2696537884433651 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1715
  oldLo := (13475000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_686]
}

noncomputable def cell_12557 : Cell := { cellDefaults with
  domain := ⟨(37062500000000001 / 50000000000000000 : ℚ), (148275000000000007 / 200000000000000000 : ℚ)⟩
  r := (1532445883889 / 3125000000000 : ℚ)
  w := (13447565322001 / 10000000000000 : ℚ)
  center := (296525000000000011 / 400000000000000000 : ℚ)
  supportValue := (269552603249639 / 1000000000000000 : ℚ)
  supportSlope := (-8090582008239007 / 10000000000000000 : ℚ)
  oldCenter := (269552603249639 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1715
  oldLo := (13475000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_686]
}

noncomputable def cell_12558 : Cell := { cellDefaults with
  domain := ⟨(148275000000000007 / 200000000000000000 : ℚ), (14830000000000001 / 20000000000000000 : ℚ)⟩
  r := (1532445883889 / 3125000000000 : ℚ)
  w := (13447565322001 / 10000000000000 : ℚ)
  center := (296575000000000017 / 400000000000000000 : ℚ)
  supportValue := (107780648460027 / 400000000000000 : ℚ)
  supportSlope := (-809699985383619 / 1000000000000000 : ℚ)
  oldCenter := (107780648460027 / 400000000000000 : ℚ)
  newCoefficients := coefficients_1715
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_685, piece_686]
}

noncomputable def cell_12559 : Cell := { cellDefaults with
  domain := ⟨(14830000000000001 / 20000000000000000 : ℚ), (148325000000000007 / 200000000000000000 : ℚ)⟩
  r := (980366842191 / 2000000000000 : ℚ)
  w := (13447033510227 / 10000000000000 : ℚ)
  center := (296625000000000017 / 400000000000000000 : ℚ)
  supportValue := (26953606816640047 / 100000000000000000 : ℚ)
  supportSlope := (-8088323834335301 / 10000000000000000 : ℚ)
  oldCenter := (26953606816640047 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1716
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (26994413407821227 / 100000000000000000 : ℚ)
  oldPieces := [piece_685, piece_686]
}

noncomputable def cell_12560 : Cell := { cellDefaults with
  domain := ⟨(148325000000000007 / 200000000000000000 : ℚ), (37087500000000001 / 50000000000000000 : ℚ)⟩
  r := (980366842191 / 2000000000000 : ℚ)
  w := (13447033510227 / 10000000000000 : ℚ)
  center := (296675000000000011 / 400000000000000000 : ℚ)
  supportValue := (5388694667859929 / 20000000000000000 : ℚ)
  supportSlope := (-8092807628471281 / 10000000000000000 : ℚ)
  oldCenter := (5388694667859929 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1716
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_685]
}

noncomputable def cell_12561 : Cell := { cellDefaults with
  domain := ⟨(37087500000000001 / 50000000000000000 : ℚ), (148375000000000001 / 200000000000000000 : ℚ)⟩
  r := (980366842191 / 2000000000000 : ℚ)
  w := (13447033510227 / 10000000000000 : ℚ)
  center := (59345000000000001 / 80000000000000000 : ℚ)
  supportValue := (26933362656943927 / 100000000000000000 : ℚ)
  supportSlope := (-4042144183316539 / 5000000000000000 : ℚ)
  oldCenter := (26933362656943927 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1716
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_685]
}

noncomputable def cell_12562 : Cell := { cellDefaults with
  domain := ⟨(148375000000000001 / 200000000000000000 : ℚ), (74199999999999999 / 100000000000000000 : ℚ)⟩
  r := (980366842191 / 2000000000000 : ℚ)
  w := (13447033510227 / 10000000000000 : ℚ)
  center := (296774999999999999 / 400000000000000000 : ℚ)
  supportValue := (2692326260100813 / 10000000000000000 : ℚ)
  supportSlope := (-8075805302444197 / 10000000000000000 : ℚ)
  oldCenter := (2692326260100813 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1716
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_685]
}

noncomputable def cell_12563 : Cell := { cellDefaults with
  domain := ⟨(74199999999999999 / 100000000000000000 : ℚ), (148425000000000001 / 200000000000000000 : ℚ)⟩
  r := (9799687774353 / 20000000000000 : ℚ)
  w := (6723255001409 / 5000000000000 : ℚ)
  center := (296824999999999999 / 400000000000000000 : ℚ)
  supportValue := (2693167870501987 / 10000000000000000 : ℚ)
  supportSlope := (-4039900883871587 / 5000000000000000 : ℚ)
  oldCenter := (2693167870501987 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1717
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_685]
}

noncomputable def cell_12564 : Cell := { cellDefaults with
  domain := ⟨(148425000000000001 / 200000000000000000 : ℚ), (37112500000000001 / 50000000000000000 : ℚ)⟩
  r := (9799687774353 / 20000000000000 : ℚ)
  w := (6723255001409 / 5000000000000 : ℚ)
  center := (59375000000000001 / 80000000000000000 : ℚ)
  supportValue := (1346079212475559 / 5000000000000000 : ℚ)
  supportSlope := (-1614266240108881 / 2000000000000000 : ℚ)
  oldCenter := (1346079212475559 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1717
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_685]
}

noncomputable def cell_12565 : Cell := { cellDefaults with
  domain := ⟨(37112500000000001 / 50000000000000000 : ℚ), (148475000000000007 / 200000000000000000 : ℚ)⟩
  r := (9799687774353 / 20000000000000 : ℚ)
  w := (6723255001409 / 5000000000000 : ℚ)
  center := (296925000000000011 / 400000000000000000 : ℚ)
  supportValue := (2691150035975203 / 10000000000000000 : ℚ)
  supportSlope := (-2015724128745269 / 2500000000000000 : ℚ)
  oldCenter := (2691150035975203 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1717
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_685]
}

noncomputable def cell_12566 : Cell := { cellDefaults with
  domain := ⟨(148475000000000007 / 200000000000000000 : ℚ), (14850000000000001 / 20000000000000000 : ℚ)⟩
  r := (9799687774353 / 20000000000000 : ℚ)
  w := (6723255001409 / 5000000000000 : ℚ)
  center := (296975000000000017 / 400000000000000000 : ℚ)
  supportValue := (5380289164405937 / 20000000000000000 : ℚ)
  supportSlope := (-4029959846762537 / 5000000000000000 : ℚ)
  oldCenter := (5380289164405937 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1717
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684, piece_685]
}

noncomputable def cell_12567 : Cell := { cellDefaults with
  domain := ⟨(14850000000000001 / 20000000000000000 : ℚ), (148525000000000007 / 200000000000000000 : ℚ)⟩
  r := (2448928183307 / 5000000000000 : ℚ)
  w := (6723003408957 / 5000000000000 : ℚ)
  center := (297025000000000017 / 400000000000000000 : ℚ)
  supportValue := (2690978450868753 / 10000000000000000 : ℚ)
  supportSlope := (-8058407250653843 / 10000000000000000 : ℚ)
  oldCenter := (2690978450868753 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1718
  oldLo := (13450000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_685]
}

noncomputable def cell_12568 : Cell := { cellDefaults with
  domain := ⟨(148525000000000007 / 200000000000000000 : ℚ), (37137500000000001 / 50000000000000000 : ℚ)⟩
  r := (2448928183307 / 5000000000000 : ℚ)
  w := (6723003408957 / 5000000000000 : ℚ)
  center := (297075000000000011 / 400000000000000000 : ℚ)
  supportValue := (26899735026398297 / 100000000000000000 : ℚ)
  supportSlope := (-2014499746425777 / 2500000000000000 : ℚ)
  oldCenter := (26899735026398297 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1718
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684, piece_685]
}

noncomputable def cell_12569 : Cell := { cellDefaults with
  domain := ⟨(37137500000000001 / 50000000000000000 : ℚ), (148575000000000001 / 200000000000000000 : ℚ)⟩
  r := (2448928183307 / 5000000000000 : ℚ)
  w := (6723003408957 / 5000000000000 : ℚ)
  center := (59425000000000001 / 80000000000000000 : ℚ)
  supportValue := (13444820043138797 / 50000000000000000 : ℚ)
  supportSlope := (-4028321386320627 / 5000000000000000 : ℚ)
  oldCenter := (13444820043138797 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1718
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684]
}

noncomputable def cell_12570 : Cell := { cellDefaults with
  domain := ⟨(148575000000000001 / 200000000000000000 : ℚ), (74299999999999999 / 100000000000000000 : ℚ)⟩
  r := (2448928183307 / 5000000000000 : ℚ)
  w := (6723003408957 / 5000000000000 : ℚ)
  center := (297174999999999999 / 400000000000000000 : ℚ)
  supportValue := (13439787286167823 / 50000000000000000 : ℚ)
  supportSlope := (-8048183707770461 / 10000000000000000 : ℚ)
  oldCenter := (13439787286167823 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_1718
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684]
}

noncomputable def cell_12571 : Cell := { cellDefaults with
  domain := ⟨(74299999999999999 / 100000000000000000 : ℚ), (148625000000000001 / 200000000000000000 : ℚ)⟩
  r := (48958703786403 / 100000000000000 : ℚ)
  w := (6722750163279 / 5000000000000 : ℚ)
  center := (297224999999999999 / 400000000000000000 : ℚ)
  supportValue := (26887937672580803 / 100000000000000000 : ℚ)
  supportSlope := (-8052156337629157 / 10000000000000000 : ℚ)
  oldCenter := (26887937672580803 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1719
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684]
}

noncomputable def cell_12572 : Cell := { cellDefaults with
  domain := ⟨(148625000000000001 / 200000000000000000 : ℚ), (37162500000000001 / 50000000000000000 : ℚ)⟩
  r := (48958703786403 / 100000000000000 : ℚ)
  w := (6722750163279 / 5000000000000 : ℚ)
  center := (59455000000000001 / 80000000000000000 : ℚ)
  supportValue := (5375575551772317 / 20000000000000000 : ℚ)
  supportSlope := (-4021854884470117 / 5000000000000000 : ℚ)
  oldCenter := (5375575551772317 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_1719
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684]
}

noncomputable def cell_12573 : Cell := { cellDefaults with
  domain := ⟨(37162500000000001 / 50000000000000000 : ℚ), (148675000000000007 / 200000000000000000 : ℚ)⟩
  r := (48958703786403 / 100000000000000 : ℚ)
  w := (6722750163279 / 5000000000000 : ℚ)
  center := (297325000000000011 / 400000000000000000 : ℚ)
  supportValue := (2686782838093161 / 10000000000000000 : ℚ)
  supportSlope := (-8035299021392919 / 10000000000000000 : ℚ)
  oldCenter := (2686782838093161 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1719
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684]
}

noncomputable def cell_12574 : Cell := { cellDefaults with
  domain := ⟨(148675000000000007 / 200000000000000000 : ℚ), (14870000000000001 / 20000000000000000 : ℚ)⟩
  r := (48958703786403 / 100000000000000 : ℚ)
  w := (6722750163279 / 5000000000000 : ℚ)
  center := (297375000000000017 / 400000000000000000 : ℚ)
  supportValue := (26857789494160367 / 100000000000000000 : ℚ)
  supportSlope := (-8026923862018013 / 10000000000000000 : ℚ)
  oldCenter := (26857789494160367 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1719
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684]
}

noncomputable def cell_12575 : Cell := { cellDefaults with
  domain := ⟨(14870000000000001 / 20000000000000000 : ℚ), (148725000000000007 / 200000000000000000 : ℚ)⟩
  r := (9787775246159 / 20000000000000 : ℚ)
  w := (13445020705193 / 10000000000000 : ℚ)
  center := (297425000000000017 / 400000000000000000 : ℚ)
  supportValue := (268660800266057 / 1000000000000000 : ℚ)
  supportSlope := (-8030799761523507 / 10000000000000000 : ℚ)
  oldCenter := (268660800266057 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1720
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684]
}

noncomputable def cell_12576 : Cell := { cellDefaults with
  domain := ⟨(148725000000000007 / 200000000000000000 : ℚ), (37187500000000001 / 50000000000000000 : ℚ)⟩
  r := (9787775246159 / 20000000000000 : ℚ)
  w := (13445020705193 / 10000000000000 : ℚ)
  center := (297475000000000011 / 400000000000000000 : ℚ)
  supportValue := (26856046756048063 / 100000000000000000 : ℚ)
  supportSlope := (-200560929067863 / 250000000000000 : ℚ)
  oldCenter := (26856046756048063 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1720
  oldLo := (13425000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_684]
}

noncomputable def cell_12577 : Cell := { cellDefaults with
  domain := ⟨(37187500000000001 / 50000000000000000 : ℚ), (148775000000000001 / 200000000000000000 : ℚ)⟩
  r := (9787775246159 / 20000000000000 : ℚ)
  w := (13445020705193 / 10000000000000 : ℚ)
  center := (59505000000000001 / 80000000000000000 : ℚ)
  supportValue := (2684603523014871 / 10000000000000000 : ℚ)
  supportSlope := (-501723789191393 / 625000000000000 : ℚ)
  oldCenter := (2684603523014871 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1720
  oldLo := (13400000000000001 / 50000000000000000 : ℚ)
  oldHi := (13450000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_683, piece_684]
}

noncomputable def cell_12578 : Cell := { cellDefaults with
  domain := ⟨(148775000000000001 / 200000000000000000 : ℚ), (74399999999999999 / 100000000000000000 : ℚ)⟩
  r := (9787775246159 / 20000000000000 : ℚ)
  w := (13445020705193 / 10000000000000 : ℚ)
  center := (297574999999999999 / 400000000000000000 : ℚ)
  supportValue := (1677249082215369 / 6250000000000000 : ℚ)
  supportSlope := (-2005168801087161 / 2500000000000000 : ℚ)
  oldCenter := (1677249082215369 / 6250000000000000 : ℚ)
  newCoefficients := coefficients_1720
  oldLo := (13400000000000001 / 50000000000000000 : ℚ)
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_683]
}

noncomputable def cell_12579 : Cell := { cellDefaults with
  domain := ⟨(74399999999999999 / 100000000000000000 : ℚ), (148825000000000001 / 200000000000000000 : ℚ)⟩
  r := (12229766000043 / 25000000000000 : ℚ)
  w := (13444538423909 / 10000000000000 : ℚ)
  center := (297624999999999999 / 400000000000000000 : ℚ)
  supportValue := (26844280406529897 / 100000000000000000 : ℚ)
  supportSlope := (-8024624854331567 / 10000000000000000 : ℚ)
  oldCenter := (26844280406529897 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1721
  oldLo := (13400000000000001 / 50000000000000000 : ℚ)
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_683]
}

noncomputable def cell_12580 : Cell := { cellDefaults with
  domain := ⟨(148825000000000001 / 200000000000000000 : ℚ), (37212500000000001 / 50000000000000000 : ℚ)⟩
  r := (12229766000043 / 25000000000000 : ℚ)
  w := (13444538423909 / 10000000000000 : ℚ)
  center := (59535000000000001 / 80000000000000000 : ℚ)
  supportValue := (670856372531717 / 2500000000000000 : ℚ)
  supportSlope := (-2004046937209329 / 2500000000000000 : ℚ)
  oldCenter := (670856372531717 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1721
  oldLo := (13400000000000001 / 50000000000000000 : ℚ)
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_683]
}

noncomputable def cell_12581 : Cell := { cellDefaults with
  domain := ⟨(37212500000000001 / 50000000000000000 : ℚ), (148875000000000007 / 200000000000000000 : ℚ)⟩
  r := (12229766000043 / 25000000000000 : ℚ)
  w := (13444538423909 / 10000000000000 : ℚ)
  center := (297725000000000011 / 400000000000000000 : ℚ)
  supportValue := (1341211995996781 / 5000000000000000 : ℚ)
  supportSlope := (-4003893257790789 / 5000000000000000 : ℚ)
  oldCenter := (1341211995996781 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1721
  oldLo := (13400000000000001 / 50000000000000000 : ℚ)
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_683]
}

noncomputable def cell_12582 : Cell := { cellDefaults with
  domain := ⟨(148875000000000007 / 200000000000000000 : ℚ), (14890000000000001 / 20000000000000000 : ℚ)⟩
  r := (12229766000043 / 25000000000000 : ℚ)
  w := (13444538423909 / 10000000000000 : ℚ)
  center := (297775000000000017 / 400000000000000000 : ℚ)
  supportValue := (268142354178369 / 1000000000000000 : ℚ)
  supportSlope := (-7999420920751383 / 10000000000000000 : ℚ)
  oldCenter := (268142354178369 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_1721
  oldLo := (13400000000000001 / 50000000000000000 : ℚ)
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_683]
}

noncomputable def cell_12583 : Cell := { cellDefaults with
  domain := ⟨(14890000000000001 / 20000000000000000 : ℚ), (59570000000000003 / 80000000000000000 : ℚ)⟩
  r := (48899281750841 / 100000000000000 : ℚ)
  w := (13444078135261 / 10000000000000 : ℚ)
  center := (119130000000000007 / 160000000000000000 : ℚ)
  supportValue := (26822467796938737 / 100000000000000000 : ℚ)
  supportSlope := (-4001640486257907 / 5000000000000000 : ℚ)
  oldCenter := (26822467796938737 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1722
  oldLo := (13400000000000001 / 50000000000000000 : ℚ)
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_683]
}

noncomputable def cell_12584 : Cell := { cellDefaults with
  domain := ⟨(59570000000000003 / 80000000000000000 : ℚ), (29790000000000001 / 40000000000000000 : ℚ)⟩
  r := (48899281750841 / 100000000000000 : ℚ)
  w := (13444078135261 / 10000000000000 : ℚ)
  center := (23830000000000001 / 32000000000000000 : ℚ)
  supportValue := (670311722971437 / 2500000000000000 : ℚ)
  supportSlope := (-7994928018267533 / 10000000000000000 : ℚ)
  oldCenter := (670311722971437 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_1722
  oldLo := (13400000000000001 / 50000000000000000 : ℚ)
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_683]
}

noncomputable def cell_12585 : Cell := { cellDefaults with
  domain := ⟨(29790000000000001 / 40000000000000000 : ℚ), (59590000000000001 / 80000000000000000 : ℚ)⟩
  r := (48899281750841 / 100000000000000 : ℚ)
  w := (13444078135261 / 10000000000000 : ℚ)
  center := (119170000000000003 / 160000000000000000 : ℚ)
  supportValue := (26802499221588283 / 100000000000000000 : ℚ)
  supportSlope := (-249699618313251 / 312500000000000 : ℚ)
  oldCenter := (26802499221588283 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1722
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_682, piece_683]
}

noncomputable def cell_12586 : Cell := { cellDefaults with
  domain := ⟨(59590000000000001 / 80000000000000000 : ℚ), (149 / 200 : ℚ)⟩
  r := (48899281750841 / 100000000000000 : ℚ)
  w := (13444078135261 / 10000000000000 : ℚ)
  center := (119190000000000001 / 160000000000000000 : ℚ)
  supportValue := (2679248832430829 / 10000000000000000 : ℚ)
  supportSlope := (-7993226910648321 / 10000000000000000 : ℚ)
  oldCenter := (2679248832430829 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1722
  oldPieces := [piece_682]
}

noncomputable def cell_12587 : Cell := { cellDefaults with
  domain := ⟨(149 / 200 : ℚ), (59610000000000001 / 80000000000000000 : ℚ)⟩
  r := (12219879877783 / 25000000000000 : ℚ)
  w := (13443623236029 / 10000000000000 : ℚ)
  center := (119210000000000001 / 160000000000000000 : ℚ)
  supportValue := (2680072589934381 / 10000000000000000 : ℚ)
  supportSlope := (-7988554750059419 / 10000000000000000 : ℚ)
  oldCenter := (2680072589934381 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1723
  oldHi := (13425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_682, piece_683]
}

noncomputable def cell_12588 : Cell := { cellDefaults with
  domain := ⟨(59610000000000001 / 80000000000000000 : ℚ), (29810000000000001 / 40000000000000000 : ℚ)⟩
  r := (12219879877783 / 25000000000000 : ℚ)
  w := (13443623236029 / 10000000000000 : ℚ)
  center := (119230000000000003 / 160000000000000000 : ℚ)
  supportValue := (2679071730304597 / 10000000000000000 : ℚ)
  supportSlope := (-7988728060483209 / 10000000000000000 : ℚ)
  oldCenter := (2679071730304597 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1723
  oldPieces := [piece_682]
}

noncomputable def cell_12589 : Cell := { cellDefaults with
  domain := ⟨(29810000000000001 / 40000000000000000 : ℚ), (59630000000000003 / 80000000000000000 : ℚ)⟩
  r := (12219879877783 / 25000000000000 : ℚ)
  w := (13443623236029 / 10000000000000 : ℚ)
  center := (23850000000000001 / 32000000000000000 : ℚ)
  supportValue := (1071229464559617 / 4000000000000000 : ℚ)
  supportSlope := (-159607570150639 / 200000000000000 : ℚ)
  oldCenter := (1071229464559617 / 4000000000000000 : ℚ)
  newCoefficients := coefficients_1723
  oldPieces := [piece_682]
}

noncomputable def cell_12590 : Cell := { cellDefaults with
  domain := ⟨(59630000000000003 / 80000000000000000 : ℚ), (14910000000000001 / 20000000000000000 : ℚ)⟩
  r := (12219879877783 / 25000000000000 : ℚ)
  w := (13443623236029 / 10000000000000 : ℚ)
  center := (119270000000000007 / 160000000000000000 : ℚ)
  supportValue := (26770766339740537 / 100000000000000000 : ℚ)
  supportSlope := (-7972064318798913 / 10000000000000000 : ℚ)
  oldCenter := (26770766339740537 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1723
  oldPieces := [piece_682]
}

noncomputable def cell_12591 : Cell := { cellDefaults with
  domain := ⟨(14910000000000001 / 20000000000000000 : ℚ), (7455865921787709 / 10000000000000000 : ℚ)⟩
  center := (29821731843575419 / 40000000000000000 : ℚ)
  supportValue := (2678047481139333 / 10000000000000000 : ℚ)
  supportSlope := (-3988576725479141 / 5000000000000000 : ℚ)
  oldCenter := (2678047481139333 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_1724
  oldPieces := [piece_682]
}

noncomputable def cell_12592 : Cell := { cellDefaults with
  domain := ⟨(7455865921787709 / 10000000000000000 : ℚ), (29827597765363127 / 40000000000000000 : ℚ)⟩
  center := (59651061452513963 / 80000000000000000 : ℚ)
  supportValue := (1338645087116423 / 5000000000000000 : ℚ)
  supportSlope := (-7970839341061907 / 10000000000000000 : ℚ)
  oldCenter := (1338645087116423 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1725
  oldPieces := [piece_682]
}

noncomputable def cell_12593 : Cell := { cellDefaults with
  domain := ⟨(29827597765363127 / 40000000000000000 : ℚ), (14915865921787709 / 20000000000000000 : ℚ)⟩
  center := (11931865921787709 / 16000000000000000 : ℚ)
  supportValue := (26764667263809483 / 100000000000000000 : ℚ)
  supportSlope := (-3981995285108883 / 5000000000000000 : ℚ)
  oldCenter := (26764667263809483 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1725
  oldPieces := [piece_682]
}

noncomputable def cell_12594 : Cell := { cellDefaults with
  domain := ⟨(14915865921787709 / 20000000000000000 : ℚ), (29835865921787709 / 40000000000000000 : ℚ)⟩
  center := (59667597765363127 / 80000000000000000 : ℚ)
  supportValue := (41806937267603 / 156250000000000 : ℚ)
  supportSlope := (-1989291423962939 / 2500000000000000 : ℚ)
  oldCenter := (41806937267603 / 156250000000000 : ℚ)
  newCoefficients := coefficients_1725
  oldPieces := [piece_682]
}

noncomputable def cell_12595 : Cell := { cellDefaults with
  domain := ⟨(29835865921787709 / 40000000000000000 : ℚ), (373 / 500 : ℚ)⟩
  center := (59675865921787709 / 80000000000000000 : ℚ)
  supportValue := (26748234859848113 / 100000000000000000 : ℚ)
  supportSlope := (-79610110590089 / 100000000000000 : ℚ)
  oldCenter := (26748234859848113 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1725
  oldLo := (13350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_681, piece_682]
}

noncomputable def cell_12596 : Cell := { cellDefaults with
  domain := ⟨(373 / 500 : ℚ), (59690000000000001 / 80000000000000000 : ℚ)⟩
  r := (9768013888751 / 20000000000000 : ℚ)
  w := (6721377863573 / 5000000000000 : ℚ)
  center := (119370000000000001 / 160000000000000000 : ℚ)
  supportValue := (26757207204644823 / 100000000000000000 : ℚ)
  supportSlope := (-1590961857127323 / 2000000000000000 : ℚ)
  oldCenter := (26757207204644823 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1726
  oldPieces := [piece_682]
}

noncomputable def cell_12597 : Cell := { cellDefaults with
  domain := ⟨(59690000000000001 / 80000000000000000 : ℚ), (29850000000000001 / 40000000000000000 : ℚ)⟩
  r := (9768013888751 / 20000000000000 : ℚ)
  w := (6721377863573 / 5000000000000 : ℚ)
  center := (119390000000000003 / 160000000000000000 : ℚ)
  supportValue := (26747282436329267 / 100000000000000000 : ℚ)
  supportSlope := (-7958083419880339 / 10000000000000000 : ℚ)
  oldCenter := (26747282436329267 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_1726
  oldLo := (13350000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_681, piece_682]
}

noncomputable def cell_12598 : Cell := { cellDefaults with
  domain := ⟨(29850000000000001 / 40000000000000000 : ℚ), (59710000000000003 / 80000000000000000 : ℚ)⟩
  r := (9768013888751 / 20000000000000 : ℚ)
  w := (6721377863573 / 5000000000000 : ℚ)
  center := (23882000000000001 / 32000000000000000 : ℚ)
  supportValue := (334216464306803 / 1250000000000000 : ℚ)
  supportSlope := (-124267047574693 / 156250000000000 : ℚ)
  oldCenter := (334216464306803 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_1726
  oldLo := (13350000000000001 / 50000000000000000 : ℚ)
  oldHi := (13375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_681]
}

noncomputable def cell_12599 : Cell := { cellDefaults with
  domain := ⟨(59710000000000003 / 80000000000000000 : ℚ), (14930000000000001 / 20000000000000000 : ℚ)⟩
  r := (9768013888751 / 20000000000000 : ℚ)
  w := (6721377863573 / 5000000000000 : ℚ)
  center := (119430000000000007 / 160000000000000000 : ℚ)
  supportValue := (1336369048431323 / 5000000000000000 : ℚ)
  supportSlope := (-7944794463109789 / 10000000000000000 : ℚ)
  oldCenter := (1336369048431323 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_1726
  oldLo := (13350000000000001 / 50000000000000000 : ℚ)
  oldHi := (13375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_681]
}

theorem check_12550 : cell_12550.check = true := by
  decide +kernel

theorem check_12551 : cell_12551.check = true := by
  decide +kernel

theorem check_12552 : cell_12552.check = true := by
  decide +kernel

theorem check_12553 : cell_12553.check = true := by
  decide +kernel

theorem check_12554 : cell_12554.check = true := by
  decide +kernel

theorem check_12555 : cell_12555.check = true := by
  decide +kernel

theorem check_12556 : cell_12556.check = true := by
  decide +kernel

theorem check_12557 : cell_12557.check = true := by
  decide +kernel

theorem check_12558 : cell_12558.check = true := by
  decide +kernel

theorem check_12559 : cell_12559.check = true := by
  decide +kernel

theorem check_12560 : cell_12560.check = true := by
  decide +kernel

theorem check_12561 : cell_12561.check = true := by
  decide +kernel

theorem check_12562 : cell_12562.check = true := by
  decide +kernel

theorem check_12563 : cell_12563.check = true := by
  decide +kernel

theorem check_12564 : cell_12564.check = true := by
  decide +kernel

theorem check_12565 : cell_12565.check = true := by
  decide +kernel

theorem check_12566 : cell_12566.check = true := by
  decide +kernel

theorem check_12567 : cell_12567.check = true := by
  decide +kernel

theorem check_12568 : cell_12568.check = true := by
  decide +kernel

theorem check_12569 : cell_12569.check = true := by
  decide +kernel

theorem check_12570 : cell_12570.check = true := by
  decide +kernel

theorem check_12571 : cell_12571.check = true := by
  decide +kernel

theorem check_12572 : cell_12572.check = true := by
  decide +kernel

theorem check_12573 : cell_12573.check = true := by
  decide +kernel

theorem check_12574 : cell_12574.check = true := by
  decide +kernel

theorem check_12575 : cell_12575.check = true := by
  decide +kernel

theorem check_12576 : cell_12576.check = true := by
  decide +kernel

theorem check_12577 : cell_12577.check = true := by
  decide +kernel

theorem check_12578 : cell_12578.check = true := by
  decide +kernel

theorem check_12579 : cell_12579.check = true := by
  decide +kernel

theorem check_12580 : cell_12580.check = true := by
  decide +kernel

theorem check_12581 : cell_12581.check = true := by
  decide +kernel

theorem check_12582 : cell_12582.check = true := by
  decide +kernel

theorem check_12583 : cell_12583.check = true := by
  decide +kernel

theorem check_12584 : cell_12584.check = true := by
  decide +kernel

theorem check_12585 : cell_12585.check = true := by
  decide +kernel

theorem check_12586 : cell_12586.check = true := by
  decide +kernel

theorem check_12587 : cell_12587.check = true := by
  decide +kernel

theorem check_12588 : cell_12588.check = true := by
  decide +kernel

theorem check_12589 : cell_12589.check = true := by
  decide +kernel

theorem check_12590 : cell_12590.check = true := by
  decide +kernel

theorem check_12591 : cell_12591.check = true := by
  decide +kernel

theorem check_12592 : cell_12592.check = true := by
  decide +kernel

theorem check_12593 : cell_12593.check = true := by
  decide +kernel

theorem check_12594 : cell_12594.check = true := by
  decide +kernel

theorem check_12595 : cell_12595.check = true := by
  decide +kernel

theorem check_12596 : cell_12596.check = true := by
  decide +kernel

theorem check_12597 : cell_12597.check = true := by
  decide +kernel

theorem check_12598 : cell_12598.check = true := by
  decide +kernel

theorem check_12599 : cell_12599.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_12550, cell_12551, cell_12552, cell_12553, cell_12554, cell_12555, cell_12556, cell_12557, cell_12558, cell_12559, cell_12560, cell_12561, cell_12562, cell_12563, cell_12564, cell_12565, cell_12566, cell_12567, cell_12568, cell_12569, cell_12570, cell_12571, cell_12572, cell_12573, cell_12574, cell_12575, cell_12576, cell_12577, cell_12578, cell_12579, cell_12580, cell_12581, cell_12582, cell_12583, cell_12584, cell_12585, cell_12586, cell_12587, cell_12588, cell_12589, cell_12590, cell_12591, cell_12592, cell_12593, cell_12594, cell_12595, cell_12596, cell_12597, cell_12598, cell_12599]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_12550, check_12551, check_12552, check_12553, check_12554, check_12555, check_12556, check_12557, check_12558, check_12559, check_12560, check_12561, check_12562, check_12563, check_12564, check_12565, check_12566, check_12567, check_12568, check_12569, check_12570, check_12571, check_12572, check_12573, check_12574, check_12575, check_12576, check_12577, check_12578, check_12579, check_12580, check_12581, check_12582, check_12583, check_12584, check_12585, check_12586, check_12587, check_12588, check_12589, check_12590, check_12591, check_12592, check_12593, check_12594, check_12595, check_12596, check_12597, check_12598, check_12599, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0251

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0251
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0251
open AnalyticBounds.ExpressionCertificate

theorem linked_12550 : Linked cell_12550 pieces := by
  apply Linked.of_piece piece_1713 piece_1713_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12550, List.cons_subset, List.nil_subset, and_true]
  exact piece_686_mem

theorem linked_12551 : Linked cell_12551 pieces := by
  apply Linked.of_piece piece_1714 piece_1714_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12551, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_686_mem, ⟨piece_687_mem, piece_688_mem⟩⟩

theorem linked_12552 : Linked cell_12552 pieces := by
  apply Linked.of_piece piece_1714 piece_1714_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12552, List.cons_subset, List.nil_subset, and_true]
  exact piece_686_mem

theorem linked_12553 : Linked cell_12553 pieces := by
  apply Linked.of_piece piece_1714 piece_1714_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12553, List.cons_subset, List.nil_subset, and_true]
  exact piece_686_mem

theorem linked_12554 : Linked cell_12554 pieces := by
  apply Linked.of_piece piece_1714 piece_1714_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12554, List.cons_subset, List.nil_subset, and_true]
  exact piece_686_mem

theorem linked_12555 : Linked cell_12555 pieces := by
  apply Linked.of_piece piece_1715 piece_1715_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12555, List.cons_subset, List.nil_subset, and_true]
  exact piece_686_mem

theorem linked_12556 : Linked cell_12556 pieces := by
  apply Linked.of_piece piece_1715 piece_1715_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12556, List.cons_subset, List.nil_subset, and_true]
  exact piece_686_mem

theorem linked_12557 : Linked cell_12557 pieces := by
  apply Linked.of_piece piece_1715 piece_1715_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12557, List.cons_subset, List.nil_subset, and_true]
  exact piece_686_mem

theorem linked_12558 : Linked cell_12558 pieces := by
  apply Linked.of_piece piece_1715 piece_1715_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12558, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_685_mem, piece_686_mem⟩

theorem linked_12559 : Linked cell_12559 pieces := by
  apply Linked.of_piece piece_1716 piece_1716_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12559, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_685_mem, piece_686_mem⟩

theorem linked_12560 : Linked cell_12560 pieces := by
  apply Linked.of_piece piece_1716 piece_1716_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12560, List.cons_subset, List.nil_subset, and_true]
  exact piece_685_mem

theorem linked_12561 : Linked cell_12561 pieces := by
  apply Linked.of_piece piece_1716 piece_1716_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12561, List.cons_subset, List.nil_subset, and_true]
  exact piece_685_mem

theorem linked_12562 : Linked cell_12562 pieces := by
  apply Linked.of_piece piece_1716 piece_1716_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12562, List.cons_subset, List.nil_subset, and_true]
  exact piece_685_mem

theorem linked_12563 : Linked cell_12563 pieces := by
  apply Linked.of_piece piece_1717 piece_1717_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12563, List.cons_subset, List.nil_subset, and_true]
  exact piece_685_mem

theorem linked_12564 : Linked cell_12564 pieces := by
  apply Linked.of_piece piece_1717 piece_1717_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12564, List.cons_subset, List.nil_subset, and_true]
  exact piece_685_mem

theorem linked_12565 : Linked cell_12565 pieces := by
  apply Linked.of_piece piece_1717 piece_1717_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12565, List.cons_subset, List.nil_subset, and_true]
  exact piece_685_mem

theorem linked_12566 : Linked cell_12566 pieces := by
  apply Linked.of_piece piece_1717 piece_1717_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12566, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_684_mem, piece_685_mem⟩

theorem linked_12567 : Linked cell_12567 pieces := by
  apply Linked.of_piece piece_1718 piece_1718_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12567, List.cons_subset, List.nil_subset, and_true]
  exact piece_685_mem

theorem linked_12568 : Linked cell_12568 pieces := by
  apply Linked.of_piece piece_1718 piece_1718_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12568, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_684_mem, piece_685_mem⟩

theorem linked_12569 : Linked cell_12569 pieces := by
  apply Linked.of_piece piece_1718 piece_1718_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12569, List.cons_subset, List.nil_subset, and_true]
  exact piece_684_mem

theorem linked_12570 : Linked cell_12570 pieces := by
  apply Linked.of_piece piece_1718 piece_1718_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12570, List.cons_subset, List.nil_subset, and_true]
  exact piece_684_mem

theorem linked_12571 : Linked cell_12571 pieces := by
  apply Linked.of_piece piece_1719 piece_1719_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12571, List.cons_subset, List.nil_subset, and_true]
  exact piece_684_mem

theorem linked_12572 : Linked cell_12572 pieces := by
  apply Linked.of_piece piece_1719 piece_1719_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12572, List.cons_subset, List.nil_subset, and_true]
  exact piece_684_mem

theorem linked_12573 : Linked cell_12573 pieces := by
  apply Linked.of_piece piece_1719 piece_1719_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12573, List.cons_subset, List.nil_subset, and_true]
  exact piece_684_mem

theorem linked_12574 : Linked cell_12574 pieces := by
  apply Linked.of_piece piece_1719 piece_1719_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12574, List.cons_subset, List.nil_subset, and_true]
  exact piece_684_mem

theorem linked_12575 : Linked cell_12575 pieces := by
  apply Linked.of_piece piece_1720 piece_1720_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12575, List.cons_subset, List.nil_subset, and_true]
  exact piece_684_mem

theorem linked_12576 : Linked cell_12576 pieces := by
  apply Linked.of_piece piece_1720 piece_1720_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12576, List.cons_subset, List.nil_subset, and_true]
  exact piece_684_mem

theorem linked_12577 : Linked cell_12577 pieces := by
  apply Linked.of_piece piece_1720 piece_1720_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12577, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_683_mem, piece_684_mem⟩

theorem linked_12578 : Linked cell_12578 pieces := by
  apply Linked.of_piece piece_1720 piece_1720_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12578, List.cons_subset, List.nil_subset, and_true]
  exact piece_683_mem

theorem linked_12579 : Linked cell_12579 pieces := by
  apply Linked.of_piece piece_1721 piece_1721_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12579, List.cons_subset, List.nil_subset, and_true]
  exact piece_683_mem

theorem linked_12580 : Linked cell_12580 pieces := by
  apply Linked.of_piece piece_1721 piece_1721_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12580, List.cons_subset, List.nil_subset, and_true]
  exact piece_683_mem

theorem linked_12581 : Linked cell_12581 pieces := by
  apply Linked.of_piece piece_1721 piece_1721_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12581, List.cons_subset, List.nil_subset, and_true]
  exact piece_683_mem

theorem linked_12582 : Linked cell_12582 pieces := by
  apply Linked.of_piece piece_1721 piece_1721_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12582, List.cons_subset, List.nil_subset, and_true]
  exact piece_683_mem

theorem linked_12583 : Linked cell_12583 pieces := by
  apply Linked.of_piece piece_1722 piece_1722_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12583, List.cons_subset, List.nil_subset, and_true]
  exact piece_683_mem

theorem linked_12584 : Linked cell_12584 pieces := by
  apply Linked.of_piece piece_1722 piece_1722_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12584, List.cons_subset, List.nil_subset, and_true]
  exact piece_683_mem

theorem linked_12585 : Linked cell_12585 pieces := by
  apply Linked.of_piece piece_1722 piece_1722_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12585, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_682_mem, piece_683_mem⟩

theorem linked_12586 : Linked cell_12586 pieces := by
  apply Linked.of_piece piece_1722 piece_1722_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12586, List.cons_subset, List.nil_subset, and_true]
  exact piece_682_mem

theorem linked_12587 : Linked cell_12587 pieces := by
  apply Linked.of_piece piece_1723 piece_1723_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12587, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_682_mem, piece_683_mem⟩

theorem linked_12588 : Linked cell_12588 pieces := by
  apply Linked.of_piece piece_1723 piece_1723_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12588, List.cons_subset, List.nil_subset, and_true]
  exact piece_682_mem

theorem linked_12589 : Linked cell_12589 pieces := by
  apply Linked.of_piece piece_1723 piece_1723_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12589, List.cons_subset, List.nil_subset, and_true]
  exact piece_682_mem

theorem linked_12590 : Linked cell_12590 pieces := by
  apply Linked.of_piece piece_1723 piece_1723_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12590, List.cons_subset, List.nil_subset, and_true]
  exact piece_682_mem

theorem linked_12591 : Linked cell_12591 pieces := by
  apply Linked.of_piece piece_1724 piece_1724_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12591, List.cons_subset, List.nil_subset, and_true]
  exact piece_682_mem

theorem linked_12592 : Linked cell_12592 pieces := by
  apply Linked.of_piece piece_1725 piece_1725_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12592, List.cons_subset, List.nil_subset, and_true]
  exact piece_682_mem

theorem linked_12593 : Linked cell_12593 pieces := by
  apply Linked.of_piece piece_1725 piece_1725_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12593, List.cons_subset, List.nil_subset, and_true]
  exact piece_682_mem

theorem linked_12594 : Linked cell_12594 pieces := by
  apply Linked.of_piece piece_1725 piece_1725_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12594, List.cons_subset, List.nil_subset, and_true]
  exact piece_682_mem

theorem linked_12595 : Linked cell_12595 pieces := by
  apply Linked.of_piece piece_1725 piece_1725_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12595, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_681_mem, piece_682_mem⟩

theorem linked_12596 : Linked cell_12596 pieces := by
  apply Linked.of_piece piece_1726 piece_1726_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12596, List.cons_subset, List.nil_subset, and_true]
  exact piece_682_mem

theorem linked_12597 : Linked cell_12597 pieces := by
  apply Linked.of_piece piece_1726 piece_1726_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12597, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_681_mem, piece_682_mem⟩

theorem linked_12598 : Linked cell_12598 pieces := by
  apply Linked.of_piece piece_1726 piece_1726_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12598, List.cons_subset, List.nil_subset, and_true]
  exact piece_681_mem

theorem linked_12599 : Linked cell_12599 pieces := by
  apply Linked.of_piece piece_1726 piece_1726_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_12599, List.cons_subset, List.nil_subset, and_true]
  exact piece_681_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0251.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0251.cells,List.forall_mem_cons]
  exact ⟨linked_12550, linked_12551, linked_12552, linked_12553, linked_12554, linked_12555, linked_12556, linked_12557, linked_12558, linked_12559, linked_12560, linked_12561, linked_12562, linked_12563, linked_12564, linked_12565, linked_12566, linked_12567, linked_12568, linked_12569, linked_12570, linked_12571, linked_12572, linked_12573, linked_12574, linked_12575, linked_12576, linked_12577, linked_12578, linked_12579, linked_12580, linked_12581, linked_12582, linked_12583, linked_12584, linked_12585, linked_12586, linked_12587, linked_12588, linked_12589, linked_12590, linked_12591, linked_12592, linked_12593, linked_12594, linked_12595, linked_12596, linked_12597, linked_12598, linked_12599, by simp⟩

theorem covered : covers (59231117318435757 / 80000000000000000 : ℚ) (14930000000000001 / 20000000000000000 : ℚ)
    (SourceCertificates.Chunk0251.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0251
