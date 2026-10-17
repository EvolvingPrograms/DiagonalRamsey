import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0144
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(25637500000000001 / 100000000000000000 : ℚ), (25643750000000001 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (86467150674529 / 100000000000000 : ℚ)
  w := (18409624709033 / 10000000000000 : ℚ)
  center := (25640625000000001 / 100000000000000000 : ℚ)
  supportValue := (9284615051428089 / 10000000000000000 : ℚ)
  supportSlope := (-4391410425505171 / 500000000000000 : ℚ)
  oldCenter := (9284615051428089 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_659
  oldLo := (92549999999999999 / 100000000000000000 : ℚ)
  oldHi := (18520000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2118, piece_2119]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7200 : Cell := { cellDefaults with
  r := (43310450736087 / 50000000000000 : ℚ)
  w := (18434619505477 / 10000000000000 : ℚ)
  newCoefficients := coefficients_657
  oldLo := (4640502793296089 / 5000000000000000 : ℚ)
  oldHi := (18580000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2123, piece_2124]
}

def cell_7201 : Cell := { cellDefaults with
  domain := ⟨(25643750000000001 / 100000000000000000 : ℚ), (25650000000000001 / 100000000000000000 : ℚ)⟩
  r := (43310450736087 / 50000000000000 : ℚ)
  w := (18434619505477 / 10000000000000 : ℚ)
  center := (25646875000000001 / 100000000000000000 : ℚ)
  supportValue := (2319782084443033 / 2500000000000000 : ℚ)
  supportSlope := (-8774534702990167 / 1000000000000000 : ℚ)
  oldCenter := (2319782084443033 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_657
  oldLo := (92749999999999999 / 100000000000000000 : ℚ)
  oldHi := (92849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2121, piece_2122, piece_2123]
}

def cell_7202 : Cell := { cellDefaults with
  domain := ⟨(25650000000000001 / 100000000000000000 : ℚ), (25656250000000001 / 100000000000000000 : ℚ)⟩
  r := (21635980623459 / 25000000000000 : ℚ)
  w := (287845462261 / 156250000000 : ℚ)
  center := (25653125000000001 / 100000000000000000 : ℚ)
  supportValue := (4647328002152109 / 5000000000000000 : ℚ)
  supportSlope := (-1757939533636943 / 200000000000000 : ℚ)
  oldCenter := (4647328002152109 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_658
  oldLo := (18580000000000001 / 20000000000000000 : ℚ)
  oldHi := (18600000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2125, piece_2126]
}

def cell_7203 : Cell := { cellDefaults with
  domain := ⟨(25656250000000001 / 100000000000000000 : ℚ), (25662500000000001 / 100000000000000000 : ℚ)⟩
  r := (21635980623459 / 25000000000000 : ℚ)
  w := (287845462261 / 156250000000 : ℚ)
  center := (25659375000000001 / 100000000000000000 : ℚ)
  supportValue := (9289164986932723 / 10000000000000000 : ℚ)
  supportSlope := (-8781429371094163 / 1000000000000000 : ℚ)
  oldCenter := (9289164986932723 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_658
  oldLo := (92849999999999999 / 100000000000000000 : ℚ)
  oldHi := (92949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2124, piece_2125]
}

def cell_7204 : Cell := { cellDefaults with
  domain := ⟨(25662500000000001 / 100000000000000000 : ℚ), (25668750000000001 / 100000000000000000 : ℚ)⟩
  r := (21635980623459 / 25000000000000 : ℚ)
  w := (287845462261 / 156250000000 : ℚ)
  center := (25665625000000001 / 100000000000000000 : ℚ)
  supportValue := (74269433082423 / 80000000000000 : ℚ)
  supportSlope := (-877316792960059 / 100000000000000 : ℚ)
  oldCenter := (74269433082423 / 80000000000000 : ℚ)
  newCoefficients := coefficients_658
  oldLo := (18560000000000001 / 20000000000000000 : ℚ)
  oldHi := (18580000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2122, piece_2123, piece_2124]
}

def cell_7205 : Cell := { cellDefaults with
  domain := ⟨(25668750000000001 / 100000000000000000 : ℚ), (25675000000000001 / 100000000000000000 : ℚ)⟩
  r := (21635980623459 / 25000000000000 : ℚ)
  w := (287845462261 / 156250000000 : ℚ)
  center := (25671875000000001 / 100000000000000000 : ℚ)
  supportValue := (9278198445126157 / 10000000000000000 : ℚ)
  supportSlope := (-2191228361543729 / 250000000000000 : ℚ)
  oldCenter := (9278198445126157 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_658
  oldLo := (92749999999999999 / 100000000000000000 : ℚ)
  oldHi := (4640502793296089 / 5000000000000000 : ℚ)
  oldPieces := [piece_2121, piece_2122]
}

def cell_7206 : Cell := { cellDefaults with
  domain := ⟨(25675000000000001 / 100000000000000000 : ℚ), (25681250000000001 / 100000000000000000 : ℚ)⟩
  r := (21635980623459 / 25000000000000 : ℚ)
  w := (287845462261 / 156250000000 : ℚ)
  center := (25678125000000001 / 100000000000000000 : ℚ)
  supportValue := (4636361456012851 / 5000000000000000 : ℚ)
  supportSlope := (-875667102164357 / 100000000000000 : ℚ)
  oldCenter := (4636361456012851 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_658
  oldLo := (92649999999999999 / 100000000000000000 : ℚ)
  oldHi := (18560000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2119, piece_2120, piece_2121]
}

def cell_7207 : Cell := { cellDefaults with
  domain := ⟨(25681250000000001 / 100000000000000000 : ℚ), (25687500000000001 / 100000000000000000 : ℚ)⟩
  r := (21635980623459 / 25000000000000 : ℚ)
  w := (287845462261 / 156250000000 : ℚ)
  center := (25684375000000001 / 100000000000000000 : ℚ)
  supportValue := (9267252531723341 / 10000000000000000 : ℚ)
  supportSlope := (-2187133605187519 / 250000000000000 : ℚ)
  oldCenter := (9267252531723341 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_658
  oldLo := (18520000000000001 / 20000000000000000 : ℚ)
  oldHi := (18540000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2118, piece_2119]
}

def cell_7208 : Cell := { cellDefaults with
  domain := ⟨(25687500000000001 / 100000000000000000 : ℚ), (25693750000000001 / 100000000000000000 : ℚ)⟩
  r := (21635980623459 / 25000000000000 : ℚ)
  w := (287845462261 / 156250000000 : ℚ)
  center := (25690625000000001 / 100000000000000000 : ℚ)
  supportValue := (9261787299919213 / 10000000000000000 : ℚ)
  supportSlope := (-2185074984782709 / 250000000000000 : ℚ)
  oldCenter := (9261787299919213 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_658
  oldHi := (92649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2117, piece_2118]
}

def cell_7209 : Cell := { cellDefaults with
  domain := ⟨(25693750000000001 / 100000000000000000 : ℚ), (25696875000000001 / 100000000000000000 : ℚ)⟩
  r := (21635980623459 / 25000000000000 : ℚ)
  w := (287845462261 / 156250000000 : ℚ)
  center := (25695312500000001 / 100000000000000000 : ℚ)
  supportValue := (1157210656939347 / 1250000000000000 : ℚ)
  supportSlope := (-4367071953641499 / 500000000000000 : ℚ)
  oldCenter := (1157210656939347 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_658
  oldPieces := [piece_2117]
}

def cell_7210 : Cell := { cellDefaults with
  domain := ⟨(25696875000000001 / 100000000000000000 : ℚ), (25700000000000001 / 100000000000000000 : ℚ)⟩
  r := (21635980623459 / 25000000000000 : ℚ)
  w := (287845462261 / 156250000000 : ℚ)
  center := (25698437500000001 / 100000000000000000 : ℚ)
  supportValue := (4627478289438933 / 5000000000000000 : ℚ)
  supportSlope := (-8730000763591761 / 1000000000000000 : ℚ)
  oldCenter := (4627478289438933 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_658
  oldLo := (23125000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2116, piece_2117]
}

def cell_7211 : Cell := { cellDefaults with
  domain := ⟨(25700000000000001 / 100000000000000000 : ℚ), (25706250000000001 / 100000000000000000 : ℚ)⟩
  center := (25703125000000001 / 100000000000000000 : ℚ)
  supportValue := (1158973726765093 / 1250000000000000 : ℚ)
  supportSlope := (-4373579748145673 / 500000000000000 : ℚ)
  oldCenter := (1158973726765093 / 1250000000000000 : ℚ)
  oldLo := (92649999999999999 / 100000000000000000 : ℚ)
  oldHi := (92749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2119, piece_2120]
}

def cell_7212 : Cell := { cellDefaults with
  domain := ⟨(25706250000000001 / 100000000000000000 : ℚ), (25712500000000001 / 100000000000000000 : ℚ)⟩
  center := (25709375000000001 / 100000000000000000 : ℚ)
  supportValue := (4633162716790561 / 5000000000000000 : ℚ)
  supportSlope := (-8738950550085889 / 1000000000000000 : ℚ)
  oldCenter := (4633162716790561 / 5000000000000000 : ℚ)
  oldLo := (18520000000000001 / 20000000000000000 : ℚ)
  oldHi := (18540000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2118, piece_2119]
}

def cell_7213 : Cell := { cellDefaults with
  domain := ⟨(25712500000000001 / 100000000000000000 : ℚ), (25718750000000001 / 100000000000000000 : ℚ)⟩
  center := (25715625000000001 / 100000000000000000 : ℚ)
  supportValue := (926086618129481 / 1000000000000000 : ℚ)
  supportSlope := (-8730748442374647 / 1000000000000000 : ℚ)
  oldCenter := (926086618129481 / 1000000000000000 : ℚ)
  oldHi := (92649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2117, piece_2118]
}

def cell_7214 : Cell := { cellDefaults with
  domain := ⟨(25718750000000001 / 100000000000000000 : ℚ), (25725000000000001 / 100000000000000000 : ℚ)⟩
  center := (25721875000000001 / 100000000000000000 : ℚ)
  supportValue := (9255412052984229 / 10000000000000000 : ℚ)
  supportSlope := (-4361276590231 / 500000000000 : ℚ)
  oldCenter := (9255412052984229 / 10000000000000000 : ℚ)
  oldLo := (23125000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2116, piece_2117]
}

def cell_7215 : Cell := { cellDefaults with
  domain := ⟨(25725000000000001 / 100000000000000000 : ℚ), (25731250000000001 / 100000000000000000 : ℚ)⟩
  center := (25728125000000001 / 100000000000000000 : ℚ)
  supportValue := (9249963037565039 / 10000000000000000 : ℚ)
  supportSlope := (-1089295595500861 / 125000000000000 : ℚ)
  oldCenter := (9249963037565039 / 10000000000000000 : ℚ)
  oldLo := (92449999999999999 / 100000000000000000 : ℚ)
  oldHi := (92549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2115, piece_2116]
}

def cell_7216 : Cell := { cellDefaults with
  domain := ⟨(25731250000000001 / 100000000000000000 : ℚ), (25737500000000001 / 100000000000000000 : ℚ)⟩
  center := (25734375000000001 / 100000000000000000 : ℚ)
  supportValue := (1848903815766591 / 2000000000000000 : ℚ)
  supportSlope := (-4353091599812231 / 500000000000000 : ℚ)
  oldCenter := (1848903815766591 / 2000000000000000 : ℚ)
  oldLo := (23100000000000001 / 25000000000000000 : ℚ)
  oldHi := (23125000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2114, piece_2115]
}

def cell_7217 : Cell := { cellDefaults with
  domain := ⟨(25737500000000001 / 100000000000000000 : ℚ), (25740625000000001 / 100000000000000000 : ℚ)⟩
  center := (25739062500000001 / 100000000000000000 : ℚ)
  supportValue := (2310108254476201 / 2500000000000000 : ℚ)
  supportSlope := (-869997563943059 / 100000000000000 : ℚ)
  oldCenter := (2310108254476201 / 2500000000000000 : ℚ)
  oldLo := (92349999999999999 / 100000000000000000 : ℚ)
  oldHi := (92449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2113, piece_2114]
}

def cell_7218 : Cell := { cellDefaults with
  domain := ⟨(25740625000000001 / 100000000000000000 : ℚ), (25743750000000001 / 100000000000000000 : ℚ)⟩
  center := (25742187500000001 / 100000000000000000 : ℚ)
  supportValue := (4618857410344321 / 5000000000000000 : ℚ)
  supportSlope := (-2174010331872367 / 250000000000000 : ℚ)
  oldCenter := (4618857410344321 / 5000000000000000 : ℚ)
  oldLo := (92349999999999999 / 100000000000000000 : ℚ)
  oldHi := (23100000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2113]
}

def cell_7219 : Cell := { cellDefaults with
  domain := ⟨(25743750000000001 / 100000000000000000 : ℚ), (25746875000000001 / 100000000000000000 : ℚ)⟩
  center := (25745312500000001 / 100000000000000000 : ℚ)
  supportValue := (115437475664197 / 125000000000000 : ℚ)
  supportSlope := (-869190893968863 / 100000000000000 : ℚ)
  oldCenter := (115437475664197 / 125000000000000 : ℚ)
  oldLo := (23075000000000001 / 25000000000000000 : ℚ)
  oldHi := (23100000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2112, piece_2113]
}

def cell_7220 : Cell := { cellDefaults with
  domain := ⟨(25746875000000001 / 100000000000000000 : ℚ), (25750000000000001 / 100000000000000000 : ℚ)⟩
  center := (25748437500000001 / 100000000000000000 : ℚ)
  supportValue := (9232282376749659 / 10000000000000000 : ℚ)
  supportSlope := (-8687772328336507 / 1000000000000000 : ℚ)
  oldCenter := (9232282376749659 / 10000000000000000 : ℚ)
  oldLo := (23075000000000001 / 25000000000000000 : ℚ)
  oldHi := (92349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2112]
}

def cell_7221 : Cell := { cellDefaults with
  domain := ⟨(25750000000000001 / 100000000000000000 : ℚ), (25756250000000001 / 100000000000000000 : ℚ)⟩
  r := (86390584771819 / 100000000000000 : ℚ)
  w := (919858211841 / 500000000000 : ℚ)
  center := (25753125000000001 / 100000000000000000 : ℚ)
  supportValue := (231226121958139 / 250000000000000 : ℚ)
  supportSlope := (-2176211946784079 / 250000000000000 : ℚ)
  oldCenter := (231226121958139 / 250000000000000 : ℚ)
  newCoefficients := coefficients_660
  oldLo := (92449999999999999 / 100000000000000000 : ℚ)
  oldHi := (92549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2115, piece_2116]
}

def cell_7222 : Cell := { cellDefaults with
  domain := ⟨(25756250000000001 / 100000000000000000 : ℚ), (25762500000000001 / 100000000000000000 : ℚ)⟩
  r := (86390584771819 / 100000000000000 : ℚ)
  w := (919858211841 / 500000000000 : ℚ)
  center := (25759375000000001 / 100000000000000000 : ℚ)
  supportValue := (9243606857813929 / 10000000000000000 : ℚ)
  supportSlope := (-869669880924917 / 100000000000000 : ℚ)
  oldCenter := (9243606857813929 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_660
  oldLo := (23100000000000001 / 25000000000000000 : ℚ)
  oldHi := (23125000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2114, piece_2115]
}

def cell_7223 : Cell := { cellDefaults with
  domain := ⟨(25762500000000001 / 100000000000000000 : ℚ), (25768750000000001 / 100000000000000000 : ℚ)⟩
  r := (86390584771819 / 100000000000000 : ℚ)
  w := (919858211841 / 500000000000 : ℚ)
  center := (25765625000000001 / 100000000000000000 : ℚ)
  supportValue := (9238173928508143 / 10000000000000000 : ℚ)
  supportSlope := (-868855664812429 / 100000000000000 : ℚ)
  oldCenter := (9238173928508143 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_660
  oldLo := (92349999999999999 / 100000000000000000 : ℚ)
  oldHi := (92449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2113, piece_2114]
}

def cell_7224 : Cell := { cellDefaults with
  domain := ⟨(25768750000000001 / 100000000000000000 : ℚ), (25775000000000001 / 100000000000000000 : ℚ)⟩
  r := (86390584771819 / 100000000000000 : ℚ)
  w := (919858211841 / 500000000000 : ℚ)
  center := (25771875000000001 / 100000000000000000 : ℚ)
  supportValue := (2308186521536287 / 2500000000000000 : ℚ)
  supportSlope := (-271263166342961 / 31250000000000 : ℚ)
  oldCenter := (2308186521536287 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_660
  oldLo := (23075000000000001 / 25000000000000000 : ℚ)
  oldHi := (23100000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2112, piece_2113]
}

def cell_7225 : Cell := { cellDefaults with
  domain := ⟨(25775000000000001 / 100000000000000000 : ℚ), (25781250000000001 / 100000000000000000 : ℚ)⟩
  r := (86390584771819 / 100000000000000 : ℚ)
  w := (919858211841 / 500000000000 : ℚ)
  center := (25778125000000001 / 100000000000000000 : ℚ)
  supportValue := (9227323326448149 / 10000000000000000 : ℚ)
  supportSlope := (-4336193587366921 / 500000000000000 : ℚ)
  oldCenter := (9227323326448149 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_660
  oldLo := (23050000000000001 / 25000000000000000 : ℚ)
  oldHi := (92349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2109, piece_2110, piece_2111, piece_2112]
}

def cell_7226 : Cell := { cellDefaults with
  domain := ⟨(25781250000000001 / 100000000000000000 : ℚ), (25787500000000001 / 100000000000000000 : ℚ)⟩
  r := (86390584771819 / 100000000000000 : ℚ)
  w := (919858211841 / 500000000000 : ℚ)
  center := (25784375000000001 / 100000000000000000 : ℚ)
  supportValue := (4610952822584287 / 5000000000000000 : ℚ)
  supportSlope := (-4332135350059829 / 500000000000000 : ℚ)
  oldCenter := (4610952822584287 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_660
  oldLo := (92149999999999999 / 100000000000000000 : ℚ)
  oldHi := (92249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2108, piece_2109]
}

def cell_7227 : Cell := { cellDefaults with
  domain := ⟨(25787500000000001 / 100000000000000000 : ℚ), (25790625000000001 / 100000000000000000 : ℚ)⟩
  r := (86390584771819 / 100000000000000 : ℚ)
  w := (919858211841 / 500000000000 : ℚ)
  center := (25789062500000001 / 100000000000000000 : ℚ)
  supportValue := (4608919625491953 / 5000000000000000 : ℚ)
  supportSlope := (-8658238831827703 / 1000000000000000 : ℚ)
  oldCenter := (4608919625491953 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_660
  oldLo := (92149999999999999 / 100000000000000000 : ℚ)
  oldHi := (23050000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2108]
}

def cell_7228 : Cell := { cellDefaults with
  domain := ⟨(25790625000000001 / 100000000000000000 : ℚ), (25793750000000001 / 100000000000000000 : ℚ)⟩
  r := (86390584771819 / 100000000000000 : ℚ)
  w := (919858211841 / 500000000000 : ℚ)
  center := (25792187500000001 / 100000000000000000 : ℚ)
  supportValue := (9215134293348931 / 10000000000000000 : ℚ)
  supportSlope := (-432703568633741 / 50000000000000 : ℚ)
  oldCenter := (9215134293348931 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_660
  oldLo := (23025000000000001 / 25000000000000000 : ℚ)
  oldHi := (23050000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2107, piece_2108]
}

def cell_7229 : Cell := { cellDefaults with
  domain := ⟨(25793750000000001 / 100000000000000000 : ℚ), (25796875000000001 / 100000000000000000 : ℚ)⟩
  r := (86390584771819 / 100000000000000 : ℚ)
  w := (919858211841 / 500000000000 : ℚ)
  center := (25795312500000001 / 100000000000000000 : ℚ)
  supportValue := (9212430435098953 / 10000000000000000 : ℚ)
  supportSlope := (-2162507610101727 / 250000000000000 : ℚ)
  oldCenter := (9212430435098953 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_660
  oldLo := (23025000000000001 / 25000000000000000 : ℚ)
  oldHi := (92149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2107]
}

def cell_7230 : Cell := { cellDefaults with
  domain := ⟨(25796875000000001 / 100000000000000000 : ℚ), (25800000000000001 / 100000000000000000 : ℚ)⟩
  r := (86390584771819 / 100000000000000 : ℚ)
  w := (919858211841 / 500000000000 : ℚ)
  center := (25798437500000001 / 100000000000000000 : ℚ)
  supportValue := (2302432000199919 / 2500000000000000 : ℚ)
  supportSlope := (-2161515536744929 / 250000000000000 : ℚ)
  oldCenter := (2302432000199919 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_660
  oldLo := (46024999999999999 / 50000000000000000 : ℚ)
  oldHi := (92149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2106, piece_2107]
}

def cell_7231 : Cell := { cellDefaults with
  domain := ⟨(25800000000000001 / 100000000000000000 : ℚ), (25806250000000001 / 100000000000000000 : ℚ)⟩
  r := (43157111422671 / 50000000000000 : ℚ)
  w := (18384728412661 / 10000000000000 : ℚ)
  center := (25803125000000001 / 100000000000000000 : ℚ)
  supportValue := (57665124798541 / 62500000000000 : ℚ)
  supportSlope := (-8662994756861053 / 1000000000000000 : ℚ)
  oldCenter := (57665124798541 / 62500000000000 : ℚ)
  newCoefficients := coefficients_661
  oldLo := (23050000000000001 / 25000000000000000 : ℚ)
  oldHi := (23075000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2109, piece_2110, piece_2111]
}

def cell_7232 : Cell := { cellDefaults with
  domain := ⟨(25806250000000001 / 100000000000000000 : ℚ), (25812500000000001 / 100000000000000000 : ℚ)⟩
  r := (43157111422671 / 50000000000000 : ℚ)
  w := (18384728412661 / 10000000000000 : ℚ)
  center := (25809375000000001 / 100000000000000000 : ℚ)
  supportValue := (4610504076604041 / 5000000000000000 : ℚ)
  supportSlope := (-865489463437541 / 100000000000000 : ℚ)
  oldCenter := (4610504076604041 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_661
  oldLo := (92149999999999999 / 100000000000000000 : ℚ)
  oldHi := (92249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2108, piece_2109]
}

def cell_7233 : Cell := { cellDefaults with
  domain := ⟨(25812500000000001 / 100000000000000000 : ℚ), (25818750000000001 / 100000000000000000 : ℚ)⟩
  r := (43157111422671 / 50000000000000 : ℚ)
  w := (18384728412661 / 10000000000000 : ℚ)
  center := (25815625000000001 / 100000000000000000 : ℚ)
  supportValue := (921560139887999 / 1000000000000000 : ℚ)
  supportSlope := (-1729360258708823 / 200000000000000 : ℚ)
  oldCenter := (921560139887999 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_661
  oldLo := (23025000000000001 / 25000000000000000 : ℚ)
  oldHi := (23050000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2107, piece_2108]
}

def cell_7234 : Cell := { cellDefaults with
  domain := ⟨(25818750000000001 / 100000000000000000 : ℚ), (25825000000000001 / 100000000000000000 : ℚ)⟩
  r := (43157111422671 / 50000000000000 : ℚ)
  w := (18384728412661 / 10000000000000 : ℚ)
  center := (25821875000000001 / 100000000000000000 : ℚ)
  supportValue := (921019970055089 / 1000000000000000 : ℚ)
  supportSlope := (-8638714717907447 / 1000000000000000 : ℚ)
  oldCenter := (921019970055089 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_661
  oldLo := (46024999999999999 / 50000000000000000 : ℚ)
  oldHi := (92149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_2106, piece_2107]
}

def cell_7235 : Cell := { cellDefaults with
  domain := ⟨(25825000000000001 / 100000000000000000 : ℚ), (25831250000000001 / 100000000000000000 : ℚ)⟩
  r := (43157111422671 / 50000000000000 : ℚ)
  w := (18384728412661 / 10000000000000 : ℚ)
  center := (25828125000000001 / 100000000000000000 : ℚ)
  supportValue := (9204803022894237 / 10000000000000000 : ℚ)
  supportSlope := (-8630634906982237 / 1000000000000000 : ℚ)
  oldCenter := (9204803022894237 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_661
  oldLo := (23000000000000001 / 25000000000000000 : ℚ)
  oldHi := (23025000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2105, piece_2106]
}

def cell_7236 : Cell := { cellDefaults with
  domain := ⟨(25831250000000001 / 100000000000000000 : ℚ), (25837500000000001 / 100000000000000000 : ℚ)⟩
  r := (43157111422671 / 50000000000000 : ℚ)
  w := (18384728412661 / 10000000000000 : ℚ)
  center := (25834375000000001 / 100000000000000000 : ℚ)
  supportValue := (9199411364585971 / 10000000000000000 : ℚ)
  supportSlope := (-8622561833398379 / 1000000000000000 : ℚ)
  oldCenter := (9199411364585971 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_661
  oldLo := (45974999999999999 / 50000000000000000 : ℚ)
  oldHi := (46024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2104, piece_2105]
}

def cell_7237 : Cell := { cellDefaults with
  domain := ⟨(25837500000000001 / 100000000000000000 : ℚ), (25843750000000001 / 100000000000000000 : ℚ)⟩
  r := (43157111422671 / 50000000000000 : ℚ)
  w := (18384728412661 / 10000000000000 : ℚ)
  center := (25840625000000001 / 100000000000000000 : ℚ)
  supportValue := (1838804950017093 / 2000000000000000 : ℚ)
  supportSlope := (-4307247774091749 / 500000000000000 : ℚ)
  oldCenter := (1838804950017093 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_661
  oldLo := (22975000000000001 / 25000000000000000 : ℚ)
  oldHi := (23000000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2103, piece_2104]
}

def cell_7238 : Cell := { cellDefaults with
  domain := ⟨(25843750000000001 / 100000000000000000 : ℚ), (25850000000000001 / 100000000000000000 : ℚ)⟩
  r := (43157111422671 / 50000000000000 : ℚ)
  w := (18384728412661 / 10000000000000 : ℚ)
  center := (25846875000000001 / 100000000000000000 : ℚ)
  supportValue := (2297160793781673 / 2500000000000000 : ℚ)
  supportSlope := (-8606436060151879 / 1000000000000000 : ℚ)
  oldCenter := (2297160793781673 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_661
  oldLo := (45924999999999999 / 50000000000000000 : ℚ)
  oldHi := (45974999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2102, piece_2103]
}

def cell_7239 : Cell := { cellDefaults with
  domain := ⟨(25850000000000001 / 100000000000000000 : ℚ), (25856250000000001 / 100000000000000000 : ℚ)⟩
  r := (86238064871089 / 100000000000000 : ℚ)
  w := (574134930839 / 312500000000 : ℚ)
  center := (25853125000000001 / 100000000000000000 : ℚ)
  supportValue := (2300978412595621 / 2500000000000000 : ℚ)
  supportSlope := (-538832430765801 / 62500000000000 : ℚ)
  oldCenter := (2300978412595621 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_662
  oldLo := (23000000000000001 / 25000000000000000 : ℚ)
  oldHi := (23025000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2105, piece_2106]
}

def cell_7240 : Cell := { cellDefaults with
  domain := ⟨(25856250000000001 / 100000000000000000 : ℚ), (25862500000000001 / 100000000000000000 : ℚ)⟩
  r := (86238064871089 / 100000000000000 : ℚ)
  w := (574134930839 / 312500000000 : ℚ)
  center := (25859375000000001 / 100000000000000000 : ℚ)
  supportValue := (4599263902062957 / 5000000000000000 : ℚ)
  supportSlope := (-4306640119226657 / 500000000000000 : ℚ)
  oldCenter := (4599263902062957 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_662
  oldLo := (45974999999999999 / 50000000000000000 : ℚ)
  oldHi := (46024999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2104, piece_2105]
}

def cell_7241 : Cell := { cellDefaults with
  domain := ⟨(25862500000000001 / 100000000000000000 : ℚ), (25868750000000001 / 100000000000000000 : ℚ)⟩
  r := (86238064871089 / 100000000000000 : ℚ)
  w := (574134930839 / 312500000000 : ℚ)
  center := (25865625000000001 / 100000000000000000 : ℚ)
  supportValue := (367725879206587 / 400000000000000 : ℚ)
  supportSlope := (-172104967121669 / 20000000000000 : ℚ)
  oldCenter := (367725879206587 / 400000000000000 : ℚ)
  newCoefficients := coefficients_662
  oldLo := (22975000000000001 / 25000000000000000 : ℚ)
  oldHi := (23000000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2103, piece_2104]
}

def cell_7242 : Cell := { cellDefaults with
  domain := ⟨(25868750000000001 / 100000000000000000 : ℚ), (25875000000000001 / 100000000000000000 : ℚ)⟩
  r := (86238064871089 / 100000000000000 : ℚ)
  w := (574134930839 / 312500000000 : ℚ)
  center := (25871875000000001 / 100000000000000000 : ℚ)
  supportValue := (9187771174261199 / 10000000000000000 : ℚ)
  supportSlope := (-2149305805215107 / 250000000000000 : ℚ)
  oldCenter := (9187771174261199 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_662
  oldLo := (45924999999999999 / 50000000000000000 : ℚ)
  oldHi := (45974999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2102, piece_2103]
}

def cell_7243 : Cell := { cellDefaults with
  domain := ⟨(25875000000000001 / 100000000000000000 : ℚ), (25881250000000001 / 100000000000000000 : ℚ)⟩
  r := (86238064871089 / 100000000000000 : ℚ)
  w := (574134930839 / 312500000000 : ℚ)
  center := (25878125000000001 / 100000000000000000 : ℚ)
  supportValue := (918240038221641 / 1000000000000000 : ℚ)
  supportSlope := (-4294638133556461 / 500000000000000 : ℚ)
  oldCenter := (918240038221641 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_662
  oldLo := (45874999999999999 / 50000000000000000 : ℚ)
  oldHi := (22975000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2100, piece_2101, piece_2102]
}

def cell_7244 : Cell := { cellDefaults with
  domain := ⟨(25881250000000001 / 100000000000000000 : ℚ), (25887500000000001 / 100000000000000000 : ℚ)⟩
  r := (86238064871089 / 100000000000000 : ℚ)
  w := (574134930839 / 312500000000 : ℚ)
  center := (25884375000000001 / 100000000000000000 : ℚ)
  supportValue := (9177034599826471 / 10000000000000000 : ℚ)
  supportSlope := (-8581282356519893 / 1000000000000000 : ℚ)
  oldCenter := (9177034599826471 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_662
  oldLo := (4585195530726257 / 5000000000000000 : ℚ)
  oldHi := (22950000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2099, piece_2100]
}

def cell_7245 : Cell := { cellDefaults with
  domain := ⟨(25887500000000001 / 100000000000000000 : ℚ), (1294413407821229 / 5000000000000000 : ℚ)⟩
  r := (86238064871089 / 100000000000000 : ℚ)
  w := (574134930839 / 312500000000 : ℚ)
  center := (51775768156424581 / 200000000000000000 : ℚ)
  supportValue := (2293503983399277 / 2500000000000000 : ℚ)
  supportSlope := (-214428820329411 / 25000000000000 : ℚ)
  oldCenter := (2293503983399277 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_662
  oldLo := (4585195530726257 / 5000000000000000 : ℚ)
  oldHi := (45874999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2099]
}

def cell_7246 : Cell := { cellDefaults with
  domain := ⟨(1294413407821229 / 5000000000000000 : ℚ), (51788268156424581 / 200000000000000000 : ℚ)⟩
  r := (86238064871089 / 100000000000000 : ℚ)
  w := (574134930839 / 312500000000 : ℚ)
  center := (103564804469273741 / 400000000000000000 : ℚ)
  supportValue := (1834235978031611 / 2000000000000000 : ℚ)
  supportSlope := (-2143171242091099 / 250000000000000 : ℚ)
  oldCenter := (1834235978031611 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_663
  oldLo := (45824999999999999 / 50000000000000000 : ℚ)
  oldHi := (45874999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2097, piece_2098, piece_2099]
}

def cell_7247 : Cell := { cellDefaults with
  domain := ⟨(51788268156424581 / 200000000000000000 : ℚ), (25900000000000001 / 100000000000000000 : ℚ)⟩
  r := (86238064871089 / 100000000000000 : ℚ)
  w := (574134930839 / 312500000000 : ℚ)
  center := (103588268156424583 / 400000000000000000 : ℚ)
  supportValue := (458307670800839 / 500000000000000 : ℚ)
  supportSlope := (-4282594842351757 / 500000000000000 : ℚ)
  oldCenter := (458307670800839 / 500000000000000 : ℚ)
  newCoefficients := coefficients_663
  oldLo := (22900000000000001 / 25000000000000000 : ℚ)
  oldHi := (22925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2096, piece_2097]
}

def cell_7248 : Cell := { cellDefaults with
  domain := ⟨(25900000000000001 / 100000000000000000 : ℚ), (25906250000000001 / 100000000000000000 : ℚ)⟩
  r := (86162107071729 / 100000000000000 : ℚ)
  w := (3671986433899 / 2000000000000 : ℚ)
  center := (25903125000000001 / 100000000000000000 : ℚ)
  supportValue := (1836305029507557 / 2000000000000000 : ℚ)
  supportSlope := (-4290132358669041 / 500000000000000 : ℚ)
  oldCenter := (1836305029507557 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_664
  oldLo := (45874999999999999 / 50000000000000000 : ℚ)
  oldHi := (45924999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2100, piece_2101]
}

def cell_7249 : Cell := { cellDefaults with
  domain := ⟨(25906250000000001 / 100000000000000000 : ℚ), (25912500000000001 / 100000000000000000 : ℚ)⟩
  r := (86162107071729 / 100000000000000 : ℚ)
  w := (3671986433899 / 2000000000000 : ℚ)
  center := (25909375000000001 / 100000000000000000 : ℚ)
  supportValue := (71688789040959 / 78125000000000 : ℚ)
  supportSlope := (-4286144425993399 / 500000000000000 : ℚ)
  oldCenter := (71688789040959 / 78125000000000 : ℚ)
  newCoefficients := coefficients_664
  oldLo := (4585195530726257 / 5000000000000000 : ℚ)
  oldHi := (22950000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2099, piece_2100]
}

theorem check_7200 : cell_7200.check = true := by
  decide +kernel

theorem check_7201 : cell_7201.check = true := by
  decide +kernel

theorem check_7202 : cell_7202.check = true := by
  decide +kernel

theorem check_7203 : cell_7203.check = true := by
  decide +kernel

theorem check_7204 : cell_7204.check = true := by
  decide +kernel

theorem check_7205 : cell_7205.check = true := by
  decide +kernel

theorem check_7206 : cell_7206.check = true := by
  decide +kernel

theorem check_7207 : cell_7207.check = true := by
  decide +kernel

theorem check_7208 : cell_7208.check = true := by
  decide +kernel

theorem check_7209 : cell_7209.check = true := by
  decide +kernel

theorem check_7210 : cell_7210.check = true := by
  decide +kernel

theorem check_7211 : cell_7211.check = true := by
  decide +kernel

theorem check_7212 : cell_7212.check = true := by
  decide +kernel

theorem check_7213 : cell_7213.check = true := by
  decide +kernel

theorem check_7214 : cell_7214.check = true := by
  decide +kernel

theorem check_7215 : cell_7215.check = true := by
  decide +kernel

theorem check_7216 : cell_7216.check = true := by
  decide +kernel

theorem check_7217 : cell_7217.check = true := by
  decide +kernel

theorem check_7218 : cell_7218.check = true := by
  decide +kernel

theorem check_7219 : cell_7219.check = true := by
  decide +kernel

theorem check_7220 : cell_7220.check = true := by
  decide +kernel

theorem check_7221 : cell_7221.check = true := by
  decide +kernel

theorem check_7222 : cell_7222.check = true := by
  decide +kernel

theorem check_7223 : cell_7223.check = true := by
  decide +kernel

theorem check_7224 : cell_7224.check = true := by
  decide +kernel

theorem check_7225 : cell_7225.check = true := by
  decide +kernel

theorem check_7226 : cell_7226.check = true := by
  decide +kernel

theorem check_7227 : cell_7227.check = true := by
  decide +kernel

theorem check_7228 : cell_7228.check = true := by
  decide +kernel

theorem check_7229 : cell_7229.check = true := by
  decide +kernel

theorem check_7230 : cell_7230.check = true := by
  decide +kernel

theorem check_7231 : cell_7231.check = true := by
  decide +kernel

theorem check_7232 : cell_7232.check = true := by
  decide +kernel

theorem check_7233 : cell_7233.check = true := by
  decide +kernel

theorem check_7234 : cell_7234.check = true := by
  decide +kernel

theorem check_7235 : cell_7235.check = true := by
  decide +kernel

theorem check_7236 : cell_7236.check = true := by
  decide +kernel

theorem check_7237 : cell_7237.check = true := by
  decide +kernel

theorem check_7238 : cell_7238.check = true := by
  decide +kernel

theorem check_7239 : cell_7239.check = true := by
  decide +kernel

theorem check_7240 : cell_7240.check = true := by
  decide +kernel

theorem check_7241 : cell_7241.check = true := by
  decide +kernel

theorem check_7242 : cell_7242.check = true := by
  decide +kernel

theorem check_7243 : cell_7243.check = true := by
  decide +kernel

theorem check_7244 : cell_7244.check = true := by
  decide +kernel

theorem check_7245 : cell_7245.check = true := by
  decide +kernel

theorem check_7246 : cell_7246.check = true := by
  decide +kernel

theorem check_7247 : cell_7247.check = true := by
  decide +kernel

theorem check_7248 : cell_7248.check = true := by
  decide +kernel

theorem check_7249 : cell_7249.check = true := by
  decide +kernel

def cells : List Cell := [cell_7200, cell_7201, cell_7202, cell_7203, cell_7204, cell_7205, cell_7206, cell_7207, cell_7208, cell_7209, cell_7210, cell_7211, cell_7212, cell_7213, cell_7214, cell_7215, cell_7216, cell_7217, cell_7218, cell_7219, cell_7220, cell_7221, cell_7222, cell_7223, cell_7224, cell_7225, cell_7226, cell_7227, cell_7228, cell_7229, cell_7230, cell_7231, cell_7232, cell_7233, cell_7234, cell_7235, cell_7236, cell_7237, cell_7238, cell_7239, cell_7240, cell_7241, cell_7242, cell_7243, cell_7244, cell_7245, cell_7246, cell_7247, cell_7248, cell_7249]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7200, check_7201, check_7202, check_7203, check_7204, check_7205, check_7206, check_7207, check_7208, check_7209, check_7210, check_7211, check_7212, check_7213, check_7214, check_7215, check_7216, check_7217, check_7218, check_7219, check_7220, check_7221, check_7222, check_7223, check_7224, check_7225, check_7226, check_7227, check_7228, check_7229, check_7230, check_7231, check_7232, check_7233, check_7234, check_7235, check_7236, check_7237, check_7238, check_7239, check_7240, check_7241, check_7242, check_7243, check_7244, check_7245, check_7246, check_7247, check_7248, check_7249, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0144

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0144
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0144
open AnalyticBounds.ExpressionCertificate

theorem linked_7200 : Linked cell_7200 pieces := by
  apply Linked.of_piece piece_657 piece_657_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7200, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2123_mem, piece_2124_mem⟩

theorem linked_7201 : Linked cell_7201 pieces := by
  apply Linked.of_piece piece_657 piece_657_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7201, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2121_mem, ⟨piece_2122_mem, piece_2123_mem⟩⟩

theorem linked_7202 : Linked cell_7202 pieces := by
  apply Linked.of_piece piece_658 piece_658_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7202, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2125_mem, piece_2126_mem⟩

theorem linked_7203 : Linked cell_7203 pieces := by
  apply Linked.of_piece piece_658 piece_658_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7203, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2124_mem, piece_2125_mem⟩

theorem linked_7204 : Linked cell_7204 pieces := by
  apply Linked.of_piece piece_658 piece_658_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7204, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2122_mem, ⟨piece_2123_mem, piece_2124_mem⟩⟩

theorem linked_7205 : Linked cell_7205 pieces := by
  apply Linked.of_piece piece_658 piece_658_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7205, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2121_mem, piece_2122_mem⟩

theorem linked_7206 : Linked cell_7206 pieces := by
  apply Linked.of_piece piece_658 piece_658_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7206, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2119_mem, ⟨piece_2120_mem, piece_2121_mem⟩⟩

theorem linked_7207 : Linked cell_7207 pieces := by
  apply Linked.of_piece piece_658 piece_658_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7207, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2118_mem, piece_2119_mem⟩

theorem linked_7208 : Linked cell_7208 pieces := by
  apply Linked.of_piece piece_658 piece_658_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7208, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2117_mem, piece_2118_mem⟩

theorem linked_7209 : Linked cell_7209 pieces := by
  apply Linked.of_piece piece_658 piece_658_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7209, List.cons_subset, List.nil_subset, and_true]
  exact piece_2117_mem

theorem linked_7210 : Linked cell_7210 pieces := by
  apply Linked.of_piece piece_658 piece_658_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7210, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2116_mem, piece_2117_mem⟩

theorem linked_7211 : Linked cell_7211 pieces := by
  apply Linked.of_piece piece_659 piece_659_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7211, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2119_mem, piece_2120_mem⟩

theorem linked_7212 : Linked cell_7212 pieces := by
  apply Linked.of_piece piece_659 piece_659_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7212, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2118_mem, piece_2119_mem⟩

theorem linked_7213 : Linked cell_7213 pieces := by
  apply Linked.of_piece piece_659 piece_659_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7213, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2117_mem, piece_2118_mem⟩

theorem linked_7214 : Linked cell_7214 pieces := by
  apply Linked.of_piece piece_659 piece_659_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7214, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2116_mem, piece_2117_mem⟩

theorem linked_7215 : Linked cell_7215 pieces := by
  apply Linked.of_piece piece_659 piece_659_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7215, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2115_mem, piece_2116_mem⟩

theorem linked_7216 : Linked cell_7216 pieces := by
  apply Linked.of_piece piece_659 piece_659_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7216, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2114_mem, piece_2115_mem⟩

theorem linked_7217 : Linked cell_7217 pieces := by
  apply Linked.of_piece piece_659 piece_659_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7217, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2113_mem, piece_2114_mem⟩

theorem linked_7218 : Linked cell_7218 pieces := by
  apply Linked.of_piece piece_659 piece_659_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7218, List.cons_subset, List.nil_subset, and_true]
  exact piece_2113_mem

theorem linked_7219 : Linked cell_7219 pieces := by
  apply Linked.of_piece piece_659 piece_659_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7219, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2112_mem, piece_2113_mem⟩

theorem linked_7220 : Linked cell_7220 pieces := by
  apply Linked.of_piece piece_659 piece_659_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7220, List.cons_subset, List.nil_subset, and_true]
  exact piece_2112_mem

theorem linked_7221 : Linked cell_7221 pieces := by
  apply Linked.of_piece piece_660 piece_660_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7221, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2115_mem, piece_2116_mem⟩

theorem linked_7222 : Linked cell_7222 pieces := by
  apply Linked.of_piece piece_660 piece_660_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7222, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2114_mem, piece_2115_mem⟩

theorem linked_7223 : Linked cell_7223 pieces := by
  apply Linked.of_piece piece_660 piece_660_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7223, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2113_mem, piece_2114_mem⟩

theorem linked_7224 : Linked cell_7224 pieces := by
  apply Linked.of_piece piece_660 piece_660_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7224, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2112_mem, piece_2113_mem⟩

theorem linked_7225 : Linked cell_7225 pieces := by
  apply Linked.of_piece piece_660 piece_660_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7225, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2109_mem, ⟨piece_2110_mem, ⟨piece_2111_mem, piece_2112_mem⟩⟩⟩

theorem linked_7226 : Linked cell_7226 pieces := by
  apply Linked.of_piece piece_660 piece_660_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7226, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2108_mem, piece_2109_mem⟩

theorem linked_7227 : Linked cell_7227 pieces := by
  apply Linked.of_piece piece_660 piece_660_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7227, List.cons_subset, List.nil_subset, and_true]
  exact piece_2108_mem

theorem linked_7228 : Linked cell_7228 pieces := by
  apply Linked.of_piece piece_660 piece_660_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7228, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2107_mem, piece_2108_mem⟩

theorem linked_7229 : Linked cell_7229 pieces := by
  apply Linked.of_piece piece_660 piece_660_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7229, List.cons_subset, List.nil_subset, and_true]
  exact piece_2107_mem

theorem linked_7230 : Linked cell_7230 pieces := by
  apply Linked.of_piece piece_660 piece_660_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7230, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2106_mem, piece_2107_mem⟩

theorem linked_7231 : Linked cell_7231 pieces := by
  apply Linked.of_piece piece_661 piece_661_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7231, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2109_mem, ⟨piece_2110_mem, piece_2111_mem⟩⟩

theorem linked_7232 : Linked cell_7232 pieces := by
  apply Linked.of_piece piece_661 piece_661_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7232, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2108_mem, piece_2109_mem⟩

theorem linked_7233 : Linked cell_7233 pieces := by
  apply Linked.of_piece piece_661 piece_661_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7233, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2107_mem, piece_2108_mem⟩

theorem linked_7234 : Linked cell_7234 pieces := by
  apply Linked.of_piece piece_661 piece_661_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7234, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2106_mem, piece_2107_mem⟩

theorem linked_7235 : Linked cell_7235 pieces := by
  apply Linked.of_piece piece_661 piece_661_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7235, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2105_mem, piece_2106_mem⟩

theorem linked_7236 : Linked cell_7236 pieces := by
  apply Linked.of_piece piece_661 piece_661_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7236, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2104_mem, piece_2105_mem⟩

theorem linked_7237 : Linked cell_7237 pieces := by
  apply Linked.of_piece piece_661 piece_661_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7237, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2103_mem, piece_2104_mem⟩

theorem linked_7238 : Linked cell_7238 pieces := by
  apply Linked.of_piece piece_661 piece_661_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7238, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2102_mem, piece_2103_mem⟩

theorem linked_7239 : Linked cell_7239 pieces := by
  apply Linked.of_piece piece_662 piece_662_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7239, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2105_mem, piece_2106_mem⟩

theorem linked_7240 : Linked cell_7240 pieces := by
  apply Linked.of_piece piece_662 piece_662_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7240, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2104_mem, piece_2105_mem⟩

theorem linked_7241 : Linked cell_7241 pieces := by
  apply Linked.of_piece piece_662 piece_662_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7241, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2103_mem, piece_2104_mem⟩

theorem linked_7242 : Linked cell_7242 pieces := by
  apply Linked.of_piece piece_662 piece_662_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7242, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2102_mem, piece_2103_mem⟩

theorem linked_7243 : Linked cell_7243 pieces := by
  apply Linked.of_piece piece_662 piece_662_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7243, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2100_mem, ⟨piece_2101_mem, piece_2102_mem⟩⟩

theorem linked_7244 : Linked cell_7244 pieces := by
  apply Linked.of_piece piece_662 piece_662_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7244, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2099_mem, piece_2100_mem⟩

theorem linked_7245 : Linked cell_7245 pieces := by
  apply Linked.of_piece piece_662 piece_662_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7245, List.cons_subset, List.nil_subset, and_true]
  exact piece_2099_mem

theorem linked_7246 : Linked cell_7246 pieces := by
  apply Linked.of_piece piece_663 piece_663_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7246, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2097_mem, ⟨piece_2098_mem, piece_2099_mem⟩⟩

theorem linked_7247 : Linked cell_7247 pieces := by
  apply Linked.of_piece piece_663 piece_663_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7247, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2096_mem, piece_2097_mem⟩

theorem linked_7248 : Linked cell_7248 pieces := by
  apply Linked.of_piece piece_664 piece_664_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7248, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2100_mem, piece_2101_mem⟩

theorem linked_7249 : Linked cell_7249 pieces := by
  apply Linked.of_piece piece_664 piece_664_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_7249, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_2099_mem, piece_2100_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0144.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0144.cells,List.forall_mem_cons]
  exact ⟨linked_7200, linked_7201, linked_7202, linked_7203, linked_7204, linked_7205, linked_7206, linked_7207, linked_7208, linked_7209, linked_7210, linked_7211, linked_7212, linked_7213, linked_7214, linked_7215, linked_7216, linked_7217, linked_7218, linked_7219, linked_7220, linked_7221, linked_7222, linked_7223, linked_7224, linked_7225, linked_7226, linked_7227, linked_7228, linked_7229, linked_7230, linked_7231, linked_7232, linked_7233, linked_7234, linked_7235, linked_7236, linked_7237, linked_7238, linked_7239, linked_7240, linked_7241, linked_7242, linked_7243, linked_7244, linked_7245, linked_7246, linked_7247, linked_7248, linked_7249, by simp⟩

theorem covered : covers (25637500000000001 / 100000000000000000 : ℚ) (25912500000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0144.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0144
