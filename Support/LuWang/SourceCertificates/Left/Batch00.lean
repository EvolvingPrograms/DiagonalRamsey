import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData
import Support.LuWang.SourceCertificateAssembly

/-! Independent left-certificate batch: original chunks 0144–0155. -/

section
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
  link_source cell_7200 with piece_657 using piece_657_mem, ⟨piece_2123_mem, piece_2124_mem⟩

theorem linked_7201 : Linked cell_7201 pieces := by
  link_source cell_7201 with piece_657 using piece_657_mem, ⟨piece_2121_mem, ⟨piece_2122_mem, piece_2123_mem⟩⟩

theorem linked_7202 : Linked cell_7202 pieces := by
  link_source cell_7202 with piece_658 using piece_658_mem, ⟨piece_2125_mem, piece_2126_mem⟩

theorem linked_7203 : Linked cell_7203 pieces := by
  link_source cell_7203 with piece_658 using piece_658_mem, ⟨piece_2124_mem, piece_2125_mem⟩

theorem linked_7204 : Linked cell_7204 pieces := by
  link_source cell_7204 with piece_658 using piece_658_mem, ⟨piece_2122_mem, ⟨piece_2123_mem, piece_2124_mem⟩⟩

theorem linked_7205 : Linked cell_7205 pieces := by
  link_source cell_7205 with piece_658 using piece_658_mem, ⟨piece_2121_mem, piece_2122_mem⟩

theorem linked_7206 : Linked cell_7206 pieces := by
  link_source cell_7206 with piece_658 using piece_658_mem, ⟨piece_2119_mem, ⟨piece_2120_mem, piece_2121_mem⟩⟩

theorem linked_7207 : Linked cell_7207 pieces := by
  link_source cell_7207 with piece_658 using piece_658_mem, ⟨piece_2118_mem, piece_2119_mem⟩

theorem linked_7208 : Linked cell_7208 pieces := by
  link_source cell_7208 with piece_658 using piece_658_mem, ⟨piece_2117_mem, piece_2118_mem⟩

theorem linked_7209 : Linked cell_7209 pieces := by
  link_source cell_7209 with piece_658 using piece_658_mem, piece_2117_mem

theorem linked_7210 : Linked cell_7210 pieces := by
  link_source cell_7210 with piece_658 using piece_658_mem, ⟨piece_2116_mem, piece_2117_mem⟩

theorem linked_7211 : Linked cell_7211 pieces := by
  link_source cell_7211 with piece_659 using piece_659_mem, ⟨piece_2119_mem, piece_2120_mem⟩

theorem linked_7212 : Linked cell_7212 pieces := by
  link_source cell_7212 with piece_659 using piece_659_mem, ⟨piece_2118_mem, piece_2119_mem⟩

theorem linked_7213 : Linked cell_7213 pieces := by
  link_source cell_7213 with piece_659 using piece_659_mem, ⟨piece_2117_mem, piece_2118_mem⟩

theorem linked_7214 : Linked cell_7214 pieces := by
  link_source cell_7214 with piece_659 using piece_659_mem, ⟨piece_2116_mem, piece_2117_mem⟩

theorem linked_7215 : Linked cell_7215 pieces := by
  link_source cell_7215 with piece_659 using piece_659_mem, ⟨piece_2115_mem, piece_2116_mem⟩

theorem linked_7216 : Linked cell_7216 pieces := by
  link_source cell_7216 with piece_659 using piece_659_mem, ⟨piece_2114_mem, piece_2115_mem⟩

theorem linked_7217 : Linked cell_7217 pieces := by
  link_source cell_7217 with piece_659 using piece_659_mem, ⟨piece_2113_mem, piece_2114_mem⟩

theorem linked_7218 : Linked cell_7218 pieces := by
  link_source cell_7218 with piece_659 using piece_659_mem, piece_2113_mem

theorem linked_7219 : Linked cell_7219 pieces := by
  link_source cell_7219 with piece_659 using piece_659_mem, ⟨piece_2112_mem, piece_2113_mem⟩

theorem linked_7220 : Linked cell_7220 pieces := by
  link_source cell_7220 with piece_659 using piece_659_mem, piece_2112_mem

theorem linked_7221 : Linked cell_7221 pieces := by
  link_source cell_7221 with piece_660 using piece_660_mem, ⟨piece_2115_mem, piece_2116_mem⟩

theorem linked_7222 : Linked cell_7222 pieces := by
  link_source cell_7222 with piece_660 using piece_660_mem, ⟨piece_2114_mem, piece_2115_mem⟩

theorem linked_7223 : Linked cell_7223 pieces := by
  link_source cell_7223 with piece_660 using piece_660_mem, ⟨piece_2113_mem, piece_2114_mem⟩

theorem linked_7224 : Linked cell_7224 pieces := by
  link_source cell_7224 with piece_660 using piece_660_mem, ⟨piece_2112_mem, piece_2113_mem⟩

theorem linked_7225 : Linked cell_7225 pieces := by
  link_source cell_7225 with piece_660 using piece_660_mem, ⟨piece_2109_mem, ⟨piece_2110_mem, ⟨piece_2111_mem, piece_2112_mem⟩⟩⟩

theorem linked_7226 : Linked cell_7226 pieces := by
  link_source cell_7226 with piece_660 using piece_660_mem, ⟨piece_2108_mem, piece_2109_mem⟩

theorem linked_7227 : Linked cell_7227 pieces := by
  link_source cell_7227 with piece_660 using piece_660_mem, piece_2108_mem

theorem linked_7228 : Linked cell_7228 pieces := by
  link_source cell_7228 with piece_660 using piece_660_mem, ⟨piece_2107_mem, piece_2108_mem⟩

theorem linked_7229 : Linked cell_7229 pieces := by
  link_source cell_7229 with piece_660 using piece_660_mem, piece_2107_mem

theorem linked_7230 : Linked cell_7230 pieces := by
  link_source cell_7230 with piece_660 using piece_660_mem, ⟨piece_2106_mem, piece_2107_mem⟩

theorem linked_7231 : Linked cell_7231 pieces := by
  link_source cell_7231 with piece_661 using piece_661_mem, ⟨piece_2109_mem, ⟨piece_2110_mem, piece_2111_mem⟩⟩

theorem linked_7232 : Linked cell_7232 pieces := by
  link_source cell_7232 with piece_661 using piece_661_mem, ⟨piece_2108_mem, piece_2109_mem⟩

theorem linked_7233 : Linked cell_7233 pieces := by
  link_source cell_7233 with piece_661 using piece_661_mem, ⟨piece_2107_mem, piece_2108_mem⟩

theorem linked_7234 : Linked cell_7234 pieces := by
  link_source cell_7234 with piece_661 using piece_661_mem, ⟨piece_2106_mem, piece_2107_mem⟩

theorem linked_7235 : Linked cell_7235 pieces := by
  link_source cell_7235 with piece_661 using piece_661_mem, ⟨piece_2105_mem, piece_2106_mem⟩

theorem linked_7236 : Linked cell_7236 pieces := by
  link_source cell_7236 with piece_661 using piece_661_mem, ⟨piece_2104_mem, piece_2105_mem⟩

theorem linked_7237 : Linked cell_7237 pieces := by
  link_source cell_7237 with piece_661 using piece_661_mem, ⟨piece_2103_mem, piece_2104_mem⟩

theorem linked_7238 : Linked cell_7238 pieces := by
  link_source cell_7238 with piece_661 using piece_661_mem, ⟨piece_2102_mem, piece_2103_mem⟩

theorem linked_7239 : Linked cell_7239 pieces := by
  link_source cell_7239 with piece_662 using piece_662_mem, ⟨piece_2105_mem, piece_2106_mem⟩

theorem linked_7240 : Linked cell_7240 pieces := by
  link_source cell_7240 with piece_662 using piece_662_mem, ⟨piece_2104_mem, piece_2105_mem⟩

theorem linked_7241 : Linked cell_7241 pieces := by
  link_source cell_7241 with piece_662 using piece_662_mem, ⟨piece_2103_mem, piece_2104_mem⟩

theorem linked_7242 : Linked cell_7242 pieces := by
  link_source cell_7242 with piece_662 using piece_662_mem, ⟨piece_2102_mem, piece_2103_mem⟩

theorem linked_7243 : Linked cell_7243 pieces := by
  link_source cell_7243 with piece_662 using piece_662_mem, ⟨piece_2100_mem, ⟨piece_2101_mem, piece_2102_mem⟩⟩

theorem linked_7244 : Linked cell_7244 pieces := by
  link_source cell_7244 with piece_662 using piece_662_mem, ⟨piece_2099_mem, piece_2100_mem⟩

theorem linked_7245 : Linked cell_7245 pieces := by
  link_source cell_7245 with piece_662 using piece_662_mem, piece_2099_mem

theorem linked_7246 : Linked cell_7246 pieces := by
  link_source cell_7246 with piece_663 using piece_663_mem, ⟨piece_2097_mem, ⟨piece_2098_mem, piece_2099_mem⟩⟩

theorem linked_7247 : Linked cell_7247 pieces := by
  link_source cell_7247 with piece_663 using piece_663_mem, ⟨piece_2096_mem, piece_2097_mem⟩

theorem linked_7248 : Linked cell_7248 pieces := by
  link_source cell_7248 with piece_664 using piece_664_mem, ⟨piece_2100_mem, piece_2101_mem⟩

theorem linked_7249 : Linked cell_7249 pieces := by
  link_source cell_7249 with piece_664 using piece_664_mem, ⟨piece_2099_mem, piece_2100_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0144.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0144.cells,List.forall_mem_cons]
  exact ⟨linked_7200, linked_7201, linked_7202, linked_7203, linked_7204, linked_7205, linked_7206, linked_7207, linked_7208, linked_7209, linked_7210, linked_7211, linked_7212, linked_7213, linked_7214, linked_7215, linked_7216, linked_7217, linked_7218, linked_7219, linked_7220, linked_7221, linked_7222, linked_7223, linked_7224, linked_7225, linked_7226, linked_7227, linked_7228, linked_7229, linked_7230, linked_7231, linked_7232, linked_7233, linked_7234, linked_7235, linked_7236, linked_7237, linked_7238, linked_7239, linked_7240, linked_7241, linked_7242, linked_7243, linked_7244, linked_7245, linked_7246, linked_7247, linked_7248, linked_7249, by simp⟩

theorem covered : covers (25637500000000001 / 100000000000000000 : ℚ) (25912500000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0144.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0144
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0145
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(25912500000000001 / 100000000000000000 : ℚ), (25918750000000001 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (42930131378441 / 50000000000000 : ℚ)
  w := (4577660980127 / 2500000000000 : ℚ)
  center := (25915625000000001 / 100000000000000000 : ℚ)
  supportValue := (2292702457383753 / 2500000000000000 : ℚ)
  supportSlope := (-8564319520033337 / 1000000000000000 : ℚ)
  oldCenter := (2292702457383753 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_668
  oldLo := (11318750000000001 / 12500000000000000 : ℚ)
  oldHi := (9059776536312849 / 10000000000000000 : ℚ)
  oldPieces := [piece_2095, piece_2096]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7250 : Cell := { cellDefaults with
  r := (86162107071729 / 100000000000000 : ℚ)
  w := (3671986433899 / 2000000000000 : ℚ)
  newCoefficients := coefficients_664
  oldLo := (45824999999999999 / 50000000000000000 : ℚ)
  oldHi := (45874999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2097, piece_2098, piece_2099]
}

def cell_7251 : Cell := { cellDefaults with
  domain := ⟨(25918750000000001 / 100000000000000000 : ℚ), (25925000000000001 / 100000000000000000 : ℚ)⟩
  r := (86162107071729 / 100000000000000 : ℚ)
  w := (3671986433899 / 2000000000000 : ℚ)
  center := (25921875000000001 / 100000000000000000 : ℚ)
  supportValue := (4582729820213333 / 5000000000000000 : ℚ)
  supportSlope := (-427817839479161 / 50000000000000 : ℚ)
  oldCenter := (4582729820213333 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_664
  oldLo := (22900000000000001 / 25000000000000000 : ℚ)
  oldHi := (22925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2096, piece_2097]
}

def cell_7252 : Cell := { cellDefaults with
  domain := ⟨(25925000000000001 / 100000000000000000 : ℚ), (25931250000000001 / 100000000000000000 : ℚ)⟩
  r := (86162107071729 / 100000000000000 : ℚ)
  w := (3671986433899 / 2000000000000 : ℚ)
  center := (25928125000000001 / 100000000000000000 : ℚ)
  supportValue := (2290028606403079 / 2500000000000000 : ℚ)
  supportSlope := (-1068550108342059 / 125000000000000 : ℚ)
  oldCenter := (2290028606403079 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_664
  oldLo := (91550000000000009 / 100000000000000000 : ℚ)
  oldHi := (45824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2095, piece_2096]
}

def cell_7253 : Cell := { cellDefaults with
  domain := ⟨(25931250000000001 / 100000000000000000 : ℚ), (25937500000000001 / 100000000000000000 : ℚ)⟩
  r := (86162107071729 / 100000000000000 : ℚ)
  w := (3671986433899 / 2000000000000 : ℚ)
  center := (25934375000000001 / 100000000000000000 : ℚ)
  supportValue := (4577387072263433 / 5000000000000000 : ℚ)
  supportSlope := (-213511289942403 / 25000000000000 : ℚ)
  oldCenter := (4577387072263433 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_664
  oldLo := (22875000000000001 / 25000000000000000 : ℚ)
  oldHi := (22900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2094, piece_2095]
}

def cell_7254 : Cell := { cellDefaults with
  domain := ⟨(25937500000000001 / 100000000000000000 : ℚ), (25943750000000001 / 100000000000000000 : ℚ)⟩
  r := (86162107071729 / 100000000000000 : ℚ)
  w := (3671986433899 / 2000000000000 : ℚ)
  center := (25940625000000001 / 100000000000000000 : ℚ)
  supportValue := (4574719406827697 / 5000000000000000 : ℚ)
  supportSlope := (-4266254490515209 / 500000000000000 : ℚ)
  oldCenter := (4574719406827697 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_664
  oldLo := (91450000000000009 / 100000000000000000 : ℚ)
  oldHi := (91550000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2093, piece_2094]
}

def cell_7255 : Cell := { cellDefaults with
  domain := ⟨(25943750000000001 / 100000000000000000 : ℚ), (25950000000000001 / 100000000000000000 : ℚ)⟩
  r := (86162107071729 / 100000000000000 : ℚ)
  w := (3671986433899 / 2000000000000 : ℚ)
  center := (25946875000000001 / 100000000000000000 : ℚ)
  supportValue := (1828821689021389 / 2000000000000000 : ℚ)
  supportSlope := (-8524573017453463 / 1000000000000000 : ℚ)
  oldCenter := (1828821689021389 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_664
  oldLo := (91400000000000003 / 100000000000000000 : ℚ)
  oldHi := (22875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2092, piece_2093]
}

def cell_7256 : Cell := { cellDefaults with
  domain := ⟨(25950000000000001 / 100000000000000000 : ℚ), (25956250000000001 / 100000000000000000 : ℚ)⟩
  r := (10760793631531 / 12500000000000 : ℚ)
  w := (18347572079831 / 10000000000000 : ℚ)
  center := (25953125000000001 / 100000000000000000 : ℚ)
  supportValue := (2289813127070399 / 2500000000000000 : ℚ)
  supportSlope := (-341572575089657 / 40000000000000 : ℚ)
  oldCenter := (2289813127070399 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_665
  oldLo := (91550000000000009 / 100000000000000000 : ℚ)
  oldHi := (45824999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_2095, piece_2096]
}

def cell_7257 : Cell := { cellDefaults with
  domain := ⟨(25956250000000001 / 100000000000000000 : ℚ), (25962500000000001 / 100000000000000000 : ℚ)⟩
  r := (10760793631531 / 12500000000000 : ℚ)
  w := (18347572079831 / 10000000000000 : ℚ)
  center := (25959375000000001 / 100000000000000000 : ℚ)
  supportValue := (1830783576426083 / 2000000000000000 : ℚ)
  supportSlope := (-426569559959411 / 50000000000000 : ℚ)
  oldCenter := (1830783576426083 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_665
  oldLo := (22875000000000001 / 25000000000000000 : ℚ)
  oldHi := (22900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2094, piece_2095]
}

def cell_7258 : Cell := { cellDefaults with
  domain := ⟨(25962500000000001 / 100000000000000000 : ℚ), (25968750000000001 / 100000000000000000 : ℚ)⟩
  r := (10760793631531 / 12500000000000 : ℚ)
  w := (18347572079831 / 10000000000000 : ℚ)
  center := (25965625000000001 / 100000000000000000 : ℚ)
  supportValue := (142946690721253 / 156250000000000 : ℚ)
  supportSlope := (-4261737322552861 / 500000000000000 : ℚ)
  oldCenter := (142946690721253 / 156250000000000 : ℚ)
  newCoefficients := coefficients_665
  oldLo := (91450000000000009 / 100000000000000000 : ℚ)
  oldHi := (91550000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2093, piece_2094]
}

def cell_7259 : Cell := { cellDefaults with
  domain := ⟨(25968750000000001 / 100000000000000000 : ℚ), (25975000000000001 / 100000000000000000 : ℚ)⟩
  r := (10760793631531 / 12500000000000 : ℚ)
  w := (18347572079831 / 10000000000000 : ℚ)
  center := (25971875000000001 / 100000000000000000 : ℚ)
  supportValue := (9143263476233477 / 10000000000000000 : ℚ)
  supportSlope := (-8515564716013557 / 1000000000000000 : ℚ)
  oldCenter := (9143263476233477 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_665
  oldLo := (91400000000000003 / 100000000000000000 : ℚ)
  oldHi := (22875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_2092, piece_2093]
}

def cell_7260 : Cell := { cellDefaults with
  domain := ⟨(25975000000000001 / 100000000000000000 : ℚ), (25981250000000001 / 100000000000000000 : ℚ)⟩
  r := (10760793631531 / 12500000000000 : ℚ)
  w := (18347572079831 / 10000000000000 : ℚ)
  center := (25978125000000001 / 100000000000000000 : ℚ)
  supportValue := (913794368820989 / 1000000000000000 : ℚ)
  supportSlope := (-34030645642531 / 4000000000000 : ℚ)
  oldCenter := (913794368820989 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_665
  oldLo := (91350000000000009 / 100000000000000000 : ℚ)
  oldHi := (91450000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2091, piece_2092]
}

def cell_7261 : Cell := { cellDefaults with
  domain := ⟨(25981250000000001 / 100000000000000000 : ℚ), (25987500000000001 / 100000000000000000 : ℚ)⟩
  r := (10760793631531 / 12500000000000 : ℚ)
  w := (18347572079831 / 10000000000000 : ℚ)
  center := (25984375000000001 / 100000000000000000 : ℚ)
  supportValue := (4566314418979789 / 5000000000000000 : ℚ)
  supportSlope := (-8499773709168323 / 1000000000000000 : ℚ)
  oldCenter := (4566314418979789 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_665
  oldLo := (91250000000000009 / 100000000000000000 : ℚ)
  oldHi := (91400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2089, piece_2090, piece_2091]
}

def cell_7262 : Cell := { cellDefaults with
  domain := ⟨(25987500000000001 / 100000000000000000 : ℚ), (25993750000000001 / 100000000000000000 : ℚ)⟩
  r := (10760793631531 / 12500000000000 : ℚ)
  w := (18347572079831 / 10000000000000 : ℚ)
  center := (25990625000000001 / 100000000000000000 : ℚ)
  supportValue := (1825463784266897 / 2000000000000000 : ℚ)
  supportSlope := (-53074700555511 / 6250000000000 : ℚ)
  oldCenter := (1825463784266897 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_665
  oldLo := (91200000000000003 / 100000000000000000 : ℚ)
  oldHi := (91300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2088, piece_2089]
}

def cell_7263 : Cell := { cellDefaults with
  domain := ⟨(25993750000000001 / 100000000000000000 : ℚ), (26000000000000001 / 100000000000000000 : ℚ)⟩
  r := (10760793631531 / 12500000000000 : ℚ)
  w := (18347572079831 / 10000000000000 : ℚ)
  center := (25996875000000001 / 100000000000000000 : ℚ)
  supportValue := (9122013934172303 / 10000000000000000 : ℚ)
  supportSlope := (-8484067805664353 / 1000000000000000 : ℚ)
  oldCenter := (9122013934172303 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_665
  oldLo := (4557541899441341 / 5000000000000000 : ℚ)
  oldHi := (91250000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2087, piece_2088]
}

def cell_7264 : Cell := { cellDefaults with
  domain := ⟨(26000000000000001 / 100000000000000000 : ℚ), (26006250000000001 / 100000000000000000 : ℚ)⟩
  r := (86010790544129 / 100000000000000 : ℚ)
  w := (4583809185211 / 2500000000000 : ℚ)
  center := (26003125000000001 / 100000000000000000 : ℚ)
  supportValue := (365483819248441 / 400000000000000 : ℚ)
  supportSlope := (-8498749401272931 / 1000000000000000 : ℚ)
  oldCenter := (365483819248441 / 400000000000000 : ℚ)
  newCoefficients := coefficients_666
  oldLo := (91300000000000003 / 100000000000000000 : ℚ)
  oldHi := (91400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2090, piece_2091]
}

def cell_7265 : Cell := { cellDefaults with
  domain := ⟨(26006250000000001 / 100000000000000000 : ℚ), (26012500000000001 / 100000000000000000 : ℚ)⟩
  r := (86010790544129 / 100000000000000 : ℚ)
  w := (4583809185211 / 2500000000000 : ℚ)
  center := (26009375000000001 / 100000000000000000 : ℚ)
  supportValue := (4565893120893437 / 5000000000000000 : ℚ)
  supportSlope := (-530679908341547 / 62500000000000 : ℚ)
  oldCenter := (4565893120893437 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_666
  oldLo := (91250000000000009 / 100000000000000000 : ℚ)
  oldHi := (91350000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2089, piece_2090]
}

def cell_7266 : Cell := { cellDefaults with
  domain := ⟨(26012500000000001 / 100000000000000000 : ℚ), (26018750000000001 / 100000000000000000 : ℚ)⟩
  r := (86010790544129 / 100000000000000 : ℚ)
  w := (4583809185211 / 2500000000000 : ℚ)
  center := (26015625000000001 / 100000000000000000 : ℚ)
  supportValue := (91264819193223 / 100000000000000 : ℚ)
  supportSlope := (-8483014290987967 / 1000000000000000 : ℚ)
  oldCenter := (91264819193223 / 100000000000000 : ℚ)
  newCoefficients := coefficients_666
  oldLo := (91200000000000003 / 100000000000000000 : ℚ)
  oldHi := (91300000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2088, piece_2089]
}

def cell_7267 : Cell := { cellDefaults with
  domain := ⟨(26018750000000001 / 100000000000000000 : ℚ), (26025000000000001 / 100000000000000000 : ℚ)⟩
  r := (86010790544129 / 100000000000000 : ℚ)
  w := (4583809185211 / 2500000000000 : ℚ)
  center := (26021875000000001 / 100000000000000000 : ℚ)
  supportValue := (9121182509679141 / 10000000000000000 : ℚ)
  supportSlope := (-2118789153919387 / 250000000000000 : ℚ)
  oldCenter := (9121182509679141 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_666
  oldLo := (4557541899441341 / 5000000000000000 : ℚ)
  oldHi := (91250000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2087, piece_2088]
}

def cell_7268 : Cell := { cellDefaults with
  domain := ⟨(26025000000000001 / 100000000000000000 : ℚ), (26031250000000001 / 100000000000000000 : ℚ)⟩
  r := (86010790544129 / 100000000000000 : ℚ)
  w := (4583809185211 / 2500000000000 : ℚ)
  center := (26028125000000001 / 100000000000000000 : ℚ)
  supportValue := (2278972002192061 / 2500000000000000 : ℚ)
  supportSlope := (-2116826344431999 / 250000000000000 : ℚ)
  oldCenter := (2278972002192061 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_666
  oldLo := (91100000000000003 / 100000000000000000 : ℚ)
  oldHi := (91200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2085, piece_2086, piece_2087]
}

def cell_7269 : Cell := { cellDefaults with
  domain := ⟨(26031250000000001 / 100000000000000000 : ℚ), (26037500000000001 / 100000000000000000 : ℚ)⟩
  r := (86010790544129 / 100000000000000 : ℚ)
  w := (4583809185211 / 2500000000000 : ℚ)
  center := (26034375000000001 / 100000000000000000 : ℚ)
  supportValue := (9110598412646173 / 10000000000000000 : ℚ)
  supportSlope := (-8459460662155749 / 1000000000000000 : ℚ)
  oldCenter := (9110598412646173 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_666
  oldLo := (91050000000000009 / 100000000000000000 : ℚ)
  oldHi := (91150000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2084, piece_2085]
}

def cell_7270 : Cell := { cellDefaults with
  domain := ⟨(26037500000000001 / 100000000000000000 : ℚ), (26043750000000001 / 100000000000000000 : ℚ)⟩
  r := (86010790544129 / 100000000000000 : ℚ)
  w := (4583809185211 / 2500000000000 : ℚ)
  center := (26040625000000001 / 100000000000000000 : ℚ)
  supportValue := (9105313717039601 / 10000000000000000 : ℚ)
  supportSlope := (-8451622718538943 / 1000000000000000 : ℚ)
  oldCenter := (9105313717039601 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_666
  oldLo := (91000000000000003 / 100000000000000000 : ℚ)
  oldHi := (91100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2083, piece_2084]
}

def cell_7271 : Cell := { cellDefaults with
  domain := ⟨(26043750000000001 / 100000000000000000 : ℚ), (26050000000000001 / 100000000000000000 : ℚ)⟩
  r := (86010790544129 / 100000000000000 : ℚ)
  w := (4583809185211 / 2500000000000 : ℚ)
  center := (26046875000000001 / 100000000000000000 : ℚ)
  supportValue := (9100033917823971 / 10000000000000000 : ℚ)
  supportSlope := (-1688758216509001 / 200000000000000 : ℚ)
  oldCenter := (9100033917823971 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_666
  oldLo := (90950000000000009 / 100000000000000000 : ℚ)
  oldHi := (91050000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2082, piece_2083]
}

def cell_7272 : Cell := { cellDefaults with
  domain := ⟨(26050000000000001 / 100000000000000000 : ℚ), (26056250000000001 / 100000000000000000 : ℚ)⟩
  r := (2148385698877 / 2500000000000 : ℚ)
  w := (9161463733023 / 5000000000000 : ℚ)
  center := (26053125000000001 / 100000000000000000 : ℚ)
  supportValue := (1823010592174473 / 2000000000000000 : ℚ)
  supportSlope := (-8458408236094783 / 1000000000000000 : ℚ)
  oldCenter := (1823010592174473 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_667
  oldLo := (91100000000000003 / 100000000000000000 : ℚ)
  oldHi := (91200000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2085, piece_2086, piece_2087]
}

def cell_7273 : Cell := { cellDefaults with
  domain := ⟨(26056250000000001 / 100000000000000000 : ℚ), (26062500000000001 / 100000000000000000 : ℚ)⟩
  r := (2148385698877 / 2500000000000 : ℚ)
  w := (9161463733023 / 5000000000000 : ℚ)
  center := (26059375000000001 / 100000000000000000 : ℚ)
  supportValue := (4554884439292157 / 5000000000000000 : ℚ)
  supportSlope := (-4225295401926843 / 500000000000000 : ℚ)
  oldCenter := (4554884439292157 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_667
  oldLo := (91050000000000009 / 100000000000000000 : ℚ)
  oldHi := (91150000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2084, piece_2085]
}

def cell_7274 : Cell := { cellDefaults with
  domain := ⟨(26062500000000001 / 100000000000000000 : ℚ), (26068750000000001 / 100000000000000000 : ℚ)⟩
  r := (2148385698877 / 2500000000000 : ℚ)
  w := (9161463733023 / 5000000000000 : ℚ)
  center := (26065625000000001 / 100000000000000000 : ℚ)
  supportValue := (4552244836700837 / 5000000000000000 : ℚ)
  supportSlope := (-844278005420307 / 100000000000000 : ℚ)
  oldCenter := (4552244836700837 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_667
  oldLo := (91000000000000003 / 100000000000000000 : ℚ)
  oldHi := (91100000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2083, piece_2084]
}

def cell_7275 : Cell := { cellDefaults with
  domain := ⟨(26068750000000001 / 100000000000000000 : ℚ), (26075000000000001 / 100000000000000000 : ℚ)⟩
  r := (2148385698877 / 2500000000000 : ℚ)
  w := (9161463733023 / 5000000000000 : ℚ)
  center := (26071875000000001 / 100000000000000000 : ℚ)
  supportValue := (1819843069646733 / 2000000000000000 : ℚ)
  supportSlope := (-1686995101546529 / 200000000000000 : ℚ)
  oldCenter := (1819843069646733 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_667
  oldLo := (90950000000000009 / 100000000000000000 : ℚ)
  oldHi := (91050000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2082, piece_2083]
}

def cell_7276 : Cell := { cellDefaults with
  domain := ⟨(26075000000000001 / 100000000000000000 : ℚ), (26081250000000001 / 100000000000000000 : ℚ)⟩
  r := (2148385698877 / 2500000000000 : ℚ)
  w := (9161463733023 / 5000000000000 : ℚ)
  center := (26078125000000001 / 100000000000000000 : ℚ)
  supportValue := (4546972949608753 / 5000000000000000 : ℚ)
  supportSlope := (-4213588820345393 / 500000000000000 : ℚ)
  oldCenter := (4546972949608753 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_667
  oldLo := (90900000000000003 / 100000000000000000 : ℚ)
  oldHi := (91000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2081, piece_2082]
}

def cell_7277 : Cell := { cellDefaults with
  domain := ⟨(26081250000000001 / 100000000000000000 : ℚ), (26087500000000001 / 100000000000000000 : ℚ)⟩
  r := (2148385698877 / 2500000000000 : ℚ)
  w := (9161463733023 / 5000000000000 : ℚ)
  center := (26084375000000001 / 100000000000000000 : ℚ)
  supportValue := (2272170330503969 / 2500000000000000 : ℚ)
  supportSlope := (-2104846615936573 / 250000000000000 : ℚ)
  oldCenter := (2272170330503969 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_667
  oldLo := (90850000000000009 / 100000000000000000 : ℚ)
  oldHi := (90950000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2080, piece_2081]
}

def cell_7278 : Cell := { cellDefaults with
  domain := ⟨(26087500000000001 / 100000000000000000 : ℚ), (26093750000000001 / 100000000000000000 : ℚ)⟩
  r := (2148385698877 / 2500000000000 : ℚ)
  w := (9161463733023 / 5000000000000 : ℚ)
  center := (26090625000000001 / 100000000000000000 : ℚ)
  supportValue := (4541710806281919 / 5000000000000000 : ℚ)
  supportSlope := (-1682320360870193 / 200000000000000 : ℚ)
  oldCenter := (4541710806281919 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_667
  oldLo := (90800000000000003 / 100000000000000000 : ℚ)
  oldHi := (90900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2079, piece_2080]
}

def cell_7279 : Cell := { cellDefaults with
  domain := ⟨(26093750000000001 / 100000000000000000 : ℚ), (26100000000000001 / 100000000000000000 : ℚ)⟩
  r := (2148385698877 / 2500000000000 : ℚ)
  w := (9161463733023 / 5000000000000 : ℚ)
  center := (26096875000000001 / 100000000000000000 : ℚ)
  supportValue := (9078166766774717 / 10000000000000000 : ℚ)
  supportSlope := (-1680764739779761 / 200000000000000 : ℚ)
  oldCenter := (9078166766774717 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_667
  oldLo := (11343750000000001 / 12500000000000000 : ℚ)
  oldHi := (90850000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2078, piece_2079]
  nl := 48
}

def cell_7280 : Cell := { cellDefaults with
  domain := ⟨(26100000000000001 / 100000000000000000 : ℚ), (26106250000000001 / 100000000000000000 : ℚ)⟩
  center := (26103125000000001 / 100000000000000000 : ℚ)
  supportValue := (1818624685688289 / 2000000000000000 : ℚ)
  supportSlope := (-1683674271571789 / 200000000000000 : ℚ)
  oldCenter := (1818624685688289 / 2000000000000000 : ℚ)
  oldLo := (90900000000000003 / 100000000000000000 : ℚ)
  oldHi := (91000000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2081, piece_2082]
}

def cell_7281 : Cell := { cellDefaults with
  domain := ⟨(26106250000000001 / 100000000000000000 : ℚ), (26112500000000001 / 100000000000000000 : ℚ)⟩
  center := (26109375000000001 / 100000000000000000 : ℚ)
  supportValue := (4543932173389117 / 5000000000000000 : ℚ)
  supportSlope := (-841060797503701 / 100000000000000 : ℚ)
  oldCenter := (4543932173389117 / 5000000000000000 : ℚ)
  oldLo := (90850000000000009 / 100000000000000000 : ℚ)
  oldHi := (90950000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_2080, piece_2081]
}

def cell_7282 : Cell := { cellDefaults with
  domain := ⟨(26112500000000001 / 100000000000000000 : ℚ), (26118750000000001 / 100000000000000000 : ℚ)⟩
  center := (26115625000000001 / 100000000000000000 : ℚ)
  supportValue := (2270652528875651 / 2500000000000000 : ℚ)
  supportSlope := (-2100714327700537 / 250000000000000 : ℚ)
  oldCenter := (2270652528875651 / 2500000000000000 : ℚ)
  oldLo := (11343750000000001 / 12500000000000000 : ℚ)
  oldHi := (90900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2078, piece_2079, piece_2080]
}

def cell_7283 : Cell := { cellDefaults with
  domain := ⟨(26118750000000001 / 100000000000000000 : ℚ), (26125000000000001 / 100000000000000000 : ℚ)⟩
  center := (26121875000000001 / 100000000000000000 : ℚ)
  supportValue := (9077360730543237 / 10000000000000000 : ℚ)
  supportSlope := (-8395164487620121 / 1000000000000000 : ℚ)
  oldCenter := (9077360730543237 / 10000000000000000 : ℚ)
  oldLo := (90700000000000003 / 100000000000000000 : ℚ)
  oldHi := (90800000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2077, piece_2078]
}

def cell_7284 : Cell := { cellDefaults with
  domain := ⟨(26125000000000001 / 100000000000000000 : ℚ), (26131250000000001 / 100000000000000000 : ℚ)⟩
  center := (26128125000000001 / 100000000000000000 : ℚ)
  supportValue := (9072116187823523 / 10000000000000000 : ℚ)
  supportSlope := (-4193709827230663 / 500000000000000 : ℚ)
  oldCenter := (9072116187823523 / 10000000000000000 : ℚ)
  oldLo := (11331250000000001 / 12500000000000000 : ℚ)
  oldHi := (11343750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2076, piece_2077]
}

def cell_7285 : Cell := { cellDefaults with
  domain := ⟨(26131250000000001 / 100000000000000000 : ℚ), (26137500000000001 / 100000000000000000 : ℚ)⟩
  center := (26134375000000001 / 100000000000000000 : ℚ)
  supportValue := (9066876483318549 / 10000000000000000 : ℚ)
  supportSlope := (-837968126034383 / 100000000000000 : ℚ)
  oldCenter := (9066876483318549 / 10000000000000000 : ℚ)
  oldLo := (90600000000000003 / 100000000000000000 : ℚ)
  oldHi := (90700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2075, piece_2076]
}

def cell_7286 : Cell := { cellDefaults with
  domain := ⟨(26137500000000001 / 100000000000000000 : ℚ), (26143750000000001 / 100000000000000000 : ℚ)⟩
  center := (26140625000000001 / 100000000000000000 : ℚ)
  supportValue := (1812328322600513 / 2000000000000000 : ℚ)
  supportSlope := (-4185974567478823 / 500000000000000 : ℚ)
  oldCenter := (1812328322600513 / 2000000000000000 : ℚ)
  oldHi := (11331250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2073, piece_2074, piece_2075]
}

def cell_7287 : Cell := { cellDefaults with
  domain := ⟨(26143750000000001 / 100000000000000000 : ℚ), (26146875000000001 / 100000000000000000 : ℚ)⟩
  center := (26145312500000001 / 100000000000000000 : ℚ)
  supportValue := (1132214034148883 / 1250000000000000 : ℚ)
  supportSlope := (-522887030125041 / 62500000000000 : ℚ)
  oldCenter := (1132214034148883 / 1250000000000000 : ℚ)
  oldPieces := [piece_2073]
}

def cell_7288 : Cell := { cellDefaults with
  domain := ⟨(26146875000000001 / 100000000000000000 : ℚ), (26150000000000001 / 100000000000000000 : ℚ)⟩
  center := (26148437500000001 / 100000000000000000 : ℚ)
  supportValue := (362203942063861 / 400000000000000 : ℚ)
  supportSlope := (-836225267730839 / 100000000000000 : ℚ)
  oldCenter := (362203942063861 / 400000000000000 : ℚ)
  oldLo := (90500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2072, piece_2073]
}

def cell_7289 : Cell := { cellDefaults with
  domain := ⟨(26150000000000001 / 100000000000000000 : ℚ), (26156250000000001 / 100000000000000000 : ℚ)⟩
  r := (8578528980297 / 10000000000000 : ℚ)
  w := (18298386052901 / 10000000000000 : ℚ)
  center := (26153125000000001 / 100000000000000000 : ℚ)
  supportValue := (9071306940522229 / 10000000000000000 : ℚ)
  supportSlope := (-1047337651041147 / 125000000000000 : ℚ)
  oldCenter := (9071306940522229 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_669
  oldLo := (11331250000000001 / 12500000000000000 : ℚ)
  oldHi := (11343750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2076, piece_2077]
}

def cell_7290 : Cell := { cellDefaults with
  domain := ⟨(26156250000000001 / 100000000000000000 : ℚ), (26162500000000001 / 100000000000000000 : ℚ)⟩
  r := (8578528980297 / 10000000000000 : ℚ)
  w := (18298386052901 / 10000000000000 : ℚ)
  center := (26159375000000001 / 100000000000000000 : ℚ)
  supportValue := (9066072675893567 / 10000000000000000 : ℚ)
  supportSlope := (-8370991171172903 / 1000000000000000 : ℚ)
  oldCenter := (9066072675893567 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_669
  oldLo := (90600000000000003 / 100000000000000000 : ℚ)
  oldHi := (90700000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2075, piece_2076]
}

def cell_7291 : Cell := { cellDefaults with
  domain := ⟨(26162500000000001 / 100000000000000000 : ℚ), (26168750000000001 / 100000000000000000 : ℚ)⟩
  r := (8578528980297 / 10000000000000 : ℚ)
  w := (18298386052901 / 10000000000000 : ℚ)
  center := (26165625000000001 / 100000000000000000 : ℚ)
  supportValue := (1812168645547887 / 2000000000000000 : ℚ)
  supportSlope := (-261352724733821 / 31250000000000 : ℚ)
  oldCenter := (1812168645547887 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_669
  oldHi := (11331250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2073, piece_2074, piece_2075]
}

def cell_7292 : Cell := { cellDefaults with
  domain := ⟨(26168750000000001 / 100000000000000000 : ℚ), (26175000000000001 / 100000000000000000 : ℚ)⟩
  r := (8578528980297 / 10000000000000 : ℚ)
  w := (18298386052901 / 10000000000000 : ℚ)
  center := (26171875000000001 / 100000000000000000 : ℚ)
  supportValue := (4527809296324253 / 5000000000000000 : ℚ)
  supportSlope := (-8355589106091799 / 1000000000000000 : ℚ)
  oldCenter := (4527809296324253 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_669
  oldLo := (90500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2072, piece_2073]
}

def cell_7293 : Cell := { cellDefaults with
  domain := ⟨(26175000000000001 / 100000000000000000 : ℚ), (26181250000000001 / 100000000000000000 : ℚ)⟩
  r := (8578528980297 / 10000000000000 : ℚ)
  w := (18298386052901 / 10000000000000 : ℚ)
  center := (26178125000000001 / 100000000000000000 : ℚ)
  supportValue := (1810079753239319 / 2000000000000000 : ℚ)
  supportSlope := (-260871820093711 / 31250000000000 : ℚ)
  oldCenter := (1810079753239319 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_669
  oldLo := (11306250000000001 / 12500000000000000 : ℚ)
  oldHi := (11318750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2071, piece_2072]
}

def cell_7294 : Cell := { cellDefaults with
  domain := ⟨(26181250000000001 / 100000000000000000 : ℚ), (26187500000000001 / 100000000000000000 : ℚ)⟩
  r := (8578528980297 / 10000000000000 : ℚ)
  w := (18298386052901 / 10000000000000 : ℚ)
  center := (26184375000000001 / 100000000000000000 : ℚ)
  supportValue := (1809036748845313 / 2000000000000000 : ℚ)
  supportSlope := (-834021379339589 / 100000000000000 : ℚ)
  oldCenter := (1809036748845313 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_669
  oldLo := (90400000000000003 / 100000000000000000 : ℚ)
  oldHi := (90500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2070, piece_2071]
}

def cell_7295 : Cell := { cellDefaults with
  domain := ⟨(26187500000000001 / 100000000000000000 : ℚ), (26193750000000001 / 100000000000000000 : ℚ)⟩
  r := (8578528980297 / 10000000000000 : ℚ)
  w := (18298386052901 / 10000000000000 : ℚ)
  center := (26190625000000001 / 100000000000000000 : ℚ)
  supportValue := (9039973516896433 / 10000000000000000 : ℚ)
  supportSlope := (-8332535734485447 / 1000000000000000 : ℚ)
  oldCenter := (9039973516896433 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_669
  oldLo := (11293750000000001 / 12500000000000000 : ℚ)
  oldHi := (11306250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2069, piece_2070]
}

def cell_7296 : Cell := { cellDefaults with
  domain := ⟨(26193750000000001 / 100000000000000000 : ℚ), (26196875000000001 / 100000000000000000 : ℚ)⟩
  r := (8578528980297 / 10000000000000 : ℚ)
  w := (18298386052901 / 10000000000000 : ℚ)
  center := (26195312500000001 / 100000000000000000 : ℚ)
  supportValue := (2259015648602277 / 2500000000000000 : ℚ)
  supportSlope := (-2081628936352331 / 250000000000000 : ℚ)
  oldCenter := (2259015648602277 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_669
  oldLo := (45150000000000001 / 50000000000000000 : ℚ)
  oldHi := (90400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2068, piece_2069]
}

def cell_7297 : Cell := { cellDefaults with
  domain := ⟨(26196875000000001 / 100000000000000000 : ℚ), (26200000000000001 / 100000000000000000 : ℚ)⟩
  r := (8578528980297 / 10000000000000 : ℚ)
  w := (18298386052901 / 10000000000000 : ℚ)
  center := (26198437500000001 / 100000000000000000 : ℚ)
  supportValue := (28229565792753 / 31250000000000 : ℚ)
  supportSlope := (-52020080024473 / 6250000000000 : ℚ)
  oldCenter := (28229565792753 / 31250000000000 : ℚ)
  newCoefficients := coefficients_669
  oldLo := (45150000000000001 / 50000000000000000 : ℚ)
  oldHi := (11293750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2068]
}

def cell_7298 : Cell := { cellDefaults with
  domain := ⟨(26200000000000001 / 100000000000000000 : ℚ), (26206250000000001 / 100000000000000000 : ℚ)⟩
  r := (85710510065687 / 100000000000000 : ℚ)
  w := (18286154037089 / 10000000000000 : ℚ)
  center := (26203125000000001 / 100000000000000000 : ℚ)
  supportValue := (9049602005467873 / 10000000000000000 : ℚ)
  supportSlope := (-8339265538090501 / 1000000000000000 : ℚ)
  oldCenter := (9049602005467873 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_670
  oldLo := (11306250000000001 / 12500000000000000 : ℚ)
  oldHi := (11318750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2071, piece_2072]
}

def cell_7299 : Cell := { cellDefaults with
  domain := ⟨(26206250000000001 / 100000000000000000 : ℚ), (26212500000000001 / 100000000000000000 : ℚ)⟩
  r := (85710510065687 / 100000000000000 : ℚ)
  w := (18286154037089 / 10000000000000 : ℚ)
  center := (26209375000000001 / 100000000000000000 : ℚ)
  supportValue := (9044392335118037 / 10000000000000000 : ℚ)
  supportSlope := (-4165805008671697 / 500000000000000 : ℚ)
  oldCenter := (9044392335118037 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_670
  oldLo := (90400000000000003 / 100000000000000000 : ℚ)
  oldHi := (90500000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2070, piece_2071]
}

theorem check_7250 : cell_7250.check = true := by
  decide +kernel

theorem check_7251 : cell_7251.check = true := by
  decide +kernel

theorem check_7252 : cell_7252.check = true := by
  decide +kernel

theorem check_7253 : cell_7253.check = true := by
  decide +kernel

theorem check_7254 : cell_7254.check = true := by
  decide +kernel

theorem check_7255 : cell_7255.check = true := by
  decide +kernel

theorem check_7256 : cell_7256.check = true := by
  decide +kernel

theorem check_7257 : cell_7257.check = true := by
  decide +kernel

theorem check_7258 : cell_7258.check = true := by
  decide +kernel

theorem check_7259 : cell_7259.check = true := by
  decide +kernel

theorem check_7260 : cell_7260.check = true := by
  decide +kernel

theorem check_7261 : cell_7261.check = true := by
  decide +kernel

theorem check_7262 : cell_7262.check = true := by
  decide +kernel

theorem check_7263 : cell_7263.check = true := by
  decide +kernel

theorem check_7264 : cell_7264.check = true := by
  decide +kernel

theorem check_7265 : cell_7265.check = true := by
  decide +kernel

theorem check_7266 : cell_7266.check = true := by
  decide +kernel

theorem check_7267 : cell_7267.check = true := by
  decide +kernel

theorem check_7268 : cell_7268.check = true := by
  decide +kernel

theorem check_7269 : cell_7269.check = true := by
  decide +kernel

theorem check_7270 : cell_7270.check = true := by
  decide +kernel

theorem check_7271 : cell_7271.check = true := by
  decide +kernel

theorem check_7272 : cell_7272.check = true := by
  decide +kernel

theorem check_7273 : cell_7273.check = true := by
  decide +kernel

theorem check_7274 : cell_7274.check = true := by
  decide +kernel

theorem check_7275 : cell_7275.check = true := by
  decide +kernel

theorem check_7276 : cell_7276.check = true := by
  decide +kernel

theorem check_7277 : cell_7277.check = true := by
  decide +kernel

theorem check_7278 : cell_7278.check = true := by
  decide +kernel

theorem check_7279 : cell_7279.check = true := by
  decide +kernel

theorem check_7280 : cell_7280.check = true := by
  decide +kernel

theorem check_7281 : cell_7281.check = true := by
  decide +kernel

theorem check_7282 : cell_7282.check = true := by
  decide +kernel

theorem check_7283 : cell_7283.check = true := by
  decide +kernel

theorem check_7284 : cell_7284.check = true := by
  decide +kernel

theorem check_7285 : cell_7285.check = true := by
  decide +kernel

theorem check_7286 : cell_7286.check = true := by
  decide +kernel

theorem check_7287 : cell_7287.check = true := by
  decide +kernel

theorem check_7288 : cell_7288.check = true := by
  decide +kernel

theorem check_7289 : cell_7289.check = true := by
  decide +kernel

theorem check_7290 : cell_7290.check = true := by
  decide +kernel

theorem check_7291 : cell_7291.check = true := by
  decide +kernel

theorem check_7292 : cell_7292.check = true := by
  decide +kernel

theorem check_7293 : cell_7293.check = true := by
  decide +kernel

theorem check_7294 : cell_7294.check = true := by
  decide +kernel

theorem check_7295 : cell_7295.check = true := by
  decide +kernel

theorem check_7296 : cell_7296.check = true := by
  decide +kernel

theorem check_7297 : cell_7297.check = true := by
  decide +kernel

theorem check_7298 : cell_7298.check = true := by
  decide +kernel

theorem check_7299 : cell_7299.check = true := by
  decide +kernel

def cells : List Cell := [cell_7250, cell_7251, cell_7252, cell_7253, cell_7254, cell_7255, cell_7256, cell_7257, cell_7258, cell_7259, cell_7260, cell_7261, cell_7262, cell_7263, cell_7264, cell_7265, cell_7266, cell_7267, cell_7268, cell_7269, cell_7270, cell_7271, cell_7272, cell_7273, cell_7274, cell_7275, cell_7276, cell_7277, cell_7278, cell_7279, cell_7280, cell_7281, cell_7282, cell_7283, cell_7284, cell_7285, cell_7286, cell_7287, cell_7288, cell_7289, cell_7290, cell_7291, cell_7292, cell_7293, cell_7294, cell_7295, cell_7296, cell_7297, cell_7298, cell_7299]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7250, check_7251, check_7252, check_7253, check_7254, check_7255, check_7256, check_7257, check_7258, check_7259, check_7260, check_7261, check_7262, check_7263, check_7264, check_7265, check_7266, check_7267, check_7268, check_7269, check_7270, check_7271, check_7272, check_7273, check_7274, check_7275, check_7276, check_7277, check_7278, check_7279, check_7280, check_7281, check_7282, check_7283, check_7284, check_7285, check_7286, check_7287, check_7288, check_7289, check_7290, check_7291, check_7292, check_7293, check_7294, check_7295, check_7296, check_7297, check_7298, check_7299, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0145

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0145
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0145
open AnalyticBounds.ExpressionCertificate

theorem linked_7250 : Linked cell_7250 pieces := by
  link_source cell_7250 with piece_664 using piece_664_mem, ⟨piece_2097_mem, ⟨piece_2098_mem, piece_2099_mem⟩⟩

theorem linked_7251 : Linked cell_7251 pieces := by
  link_source cell_7251 with piece_664 using piece_664_mem, ⟨piece_2096_mem, piece_2097_mem⟩

theorem linked_7252 : Linked cell_7252 pieces := by
  link_source cell_7252 with piece_664 using piece_664_mem, ⟨piece_2095_mem, piece_2096_mem⟩

theorem linked_7253 : Linked cell_7253 pieces := by
  link_source cell_7253 with piece_664 using piece_664_mem, ⟨piece_2094_mem, piece_2095_mem⟩

theorem linked_7254 : Linked cell_7254 pieces := by
  link_source cell_7254 with piece_664 using piece_664_mem, ⟨piece_2093_mem, piece_2094_mem⟩

theorem linked_7255 : Linked cell_7255 pieces := by
  link_source cell_7255 with piece_664 using piece_664_mem, ⟨piece_2092_mem, piece_2093_mem⟩

theorem linked_7256 : Linked cell_7256 pieces := by
  link_source cell_7256 with piece_665 using piece_665_mem, ⟨piece_2095_mem, piece_2096_mem⟩

theorem linked_7257 : Linked cell_7257 pieces := by
  link_source cell_7257 with piece_665 using piece_665_mem, ⟨piece_2094_mem, piece_2095_mem⟩

theorem linked_7258 : Linked cell_7258 pieces := by
  link_source cell_7258 with piece_665 using piece_665_mem, ⟨piece_2093_mem, piece_2094_mem⟩

theorem linked_7259 : Linked cell_7259 pieces := by
  link_source cell_7259 with piece_665 using piece_665_mem, ⟨piece_2092_mem, piece_2093_mem⟩

theorem linked_7260 : Linked cell_7260 pieces := by
  link_source cell_7260 with piece_665 using piece_665_mem, ⟨piece_2091_mem, piece_2092_mem⟩

theorem linked_7261 : Linked cell_7261 pieces := by
  link_source cell_7261 with piece_665 using piece_665_mem, ⟨piece_2089_mem, ⟨piece_2090_mem, piece_2091_mem⟩⟩

theorem linked_7262 : Linked cell_7262 pieces := by
  link_source cell_7262 with piece_665 using piece_665_mem, ⟨piece_2088_mem, piece_2089_mem⟩

theorem linked_7263 : Linked cell_7263 pieces := by
  link_source cell_7263 with piece_665 using piece_665_mem, ⟨piece_2087_mem, piece_2088_mem⟩

theorem linked_7264 : Linked cell_7264 pieces := by
  link_source cell_7264 with piece_666 using piece_666_mem, ⟨piece_2090_mem, piece_2091_mem⟩

theorem linked_7265 : Linked cell_7265 pieces := by
  link_source cell_7265 with piece_666 using piece_666_mem, ⟨piece_2089_mem, piece_2090_mem⟩

theorem linked_7266 : Linked cell_7266 pieces := by
  link_source cell_7266 with piece_666 using piece_666_mem, ⟨piece_2088_mem, piece_2089_mem⟩

theorem linked_7267 : Linked cell_7267 pieces := by
  link_source cell_7267 with piece_666 using piece_666_mem, ⟨piece_2087_mem, piece_2088_mem⟩

theorem linked_7268 : Linked cell_7268 pieces := by
  link_source cell_7268 with piece_666 using piece_666_mem, ⟨piece_2085_mem, ⟨piece_2086_mem, piece_2087_mem⟩⟩

theorem linked_7269 : Linked cell_7269 pieces := by
  link_source cell_7269 with piece_666 using piece_666_mem, ⟨piece_2084_mem, piece_2085_mem⟩

theorem linked_7270 : Linked cell_7270 pieces := by
  link_source cell_7270 with piece_666 using piece_666_mem, ⟨piece_2083_mem, piece_2084_mem⟩

theorem linked_7271 : Linked cell_7271 pieces := by
  link_source cell_7271 with piece_666 using piece_666_mem, ⟨piece_2082_mem, piece_2083_mem⟩

theorem linked_7272 : Linked cell_7272 pieces := by
  link_source cell_7272 with piece_667 using piece_667_mem, ⟨piece_2085_mem, ⟨piece_2086_mem, piece_2087_mem⟩⟩

theorem linked_7273 : Linked cell_7273 pieces := by
  link_source cell_7273 with piece_667 using piece_667_mem, ⟨piece_2084_mem, piece_2085_mem⟩

theorem linked_7274 : Linked cell_7274 pieces := by
  link_source cell_7274 with piece_667 using piece_667_mem, ⟨piece_2083_mem, piece_2084_mem⟩

theorem linked_7275 : Linked cell_7275 pieces := by
  link_source cell_7275 with piece_667 using piece_667_mem, ⟨piece_2082_mem, piece_2083_mem⟩

theorem linked_7276 : Linked cell_7276 pieces := by
  link_source cell_7276 with piece_667 using piece_667_mem, ⟨piece_2081_mem, piece_2082_mem⟩

theorem linked_7277 : Linked cell_7277 pieces := by
  link_source cell_7277 with piece_667 using piece_667_mem, ⟨piece_2080_mem, piece_2081_mem⟩

theorem linked_7278 : Linked cell_7278 pieces := by
  link_source cell_7278 with piece_667 using piece_667_mem, ⟨piece_2079_mem, piece_2080_mem⟩

theorem linked_7279 : Linked cell_7279 pieces := by
  link_source cell_7279 with piece_667 using piece_667_mem, ⟨piece_2078_mem, piece_2079_mem⟩

theorem linked_7280 : Linked cell_7280 pieces := by
  link_source cell_7280 with piece_668 using piece_668_mem, ⟨piece_2081_mem, piece_2082_mem⟩

theorem linked_7281 : Linked cell_7281 pieces := by
  link_source cell_7281 with piece_668 using piece_668_mem, ⟨piece_2080_mem, piece_2081_mem⟩

theorem linked_7282 : Linked cell_7282 pieces := by
  link_source cell_7282 with piece_668 using piece_668_mem, ⟨piece_2078_mem, ⟨piece_2079_mem, piece_2080_mem⟩⟩

theorem linked_7283 : Linked cell_7283 pieces := by
  link_source cell_7283 with piece_668 using piece_668_mem, ⟨piece_2077_mem, piece_2078_mem⟩

theorem linked_7284 : Linked cell_7284 pieces := by
  link_source cell_7284 with piece_668 using piece_668_mem, ⟨piece_2076_mem, piece_2077_mem⟩

theorem linked_7285 : Linked cell_7285 pieces := by
  link_source cell_7285 with piece_668 using piece_668_mem, ⟨piece_2075_mem, piece_2076_mem⟩

theorem linked_7286 : Linked cell_7286 pieces := by
  link_source cell_7286 with piece_668 using piece_668_mem, ⟨piece_2073_mem, ⟨piece_2074_mem, piece_2075_mem⟩⟩

theorem linked_7287 : Linked cell_7287 pieces := by
  link_source cell_7287 with piece_668 using piece_668_mem, piece_2073_mem

theorem linked_7288 : Linked cell_7288 pieces := by
  link_source cell_7288 with piece_668 using piece_668_mem, ⟨piece_2072_mem, piece_2073_mem⟩

theorem linked_7289 : Linked cell_7289 pieces := by
  link_source cell_7289 with piece_669 using piece_669_mem, ⟨piece_2076_mem, piece_2077_mem⟩

theorem linked_7290 : Linked cell_7290 pieces := by
  link_source cell_7290 with piece_669 using piece_669_mem, ⟨piece_2075_mem, piece_2076_mem⟩

theorem linked_7291 : Linked cell_7291 pieces := by
  link_source cell_7291 with piece_669 using piece_669_mem, ⟨piece_2073_mem, ⟨piece_2074_mem, piece_2075_mem⟩⟩

theorem linked_7292 : Linked cell_7292 pieces := by
  link_source cell_7292 with piece_669 using piece_669_mem, ⟨piece_2072_mem, piece_2073_mem⟩

theorem linked_7293 : Linked cell_7293 pieces := by
  link_source cell_7293 with piece_669 using piece_669_mem, ⟨piece_2071_mem, piece_2072_mem⟩

theorem linked_7294 : Linked cell_7294 pieces := by
  link_source cell_7294 with piece_669 using piece_669_mem, ⟨piece_2070_mem, piece_2071_mem⟩

theorem linked_7295 : Linked cell_7295 pieces := by
  link_source cell_7295 with piece_669 using piece_669_mem, ⟨piece_2069_mem, piece_2070_mem⟩

theorem linked_7296 : Linked cell_7296 pieces := by
  link_source cell_7296 with piece_669 using piece_669_mem, ⟨piece_2068_mem, piece_2069_mem⟩

theorem linked_7297 : Linked cell_7297 pieces := by
  link_source cell_7297 with piece_669 using piece_669_mem, piece_2068_mem

theorem linked_7298 : Linked cell_7298 pieces := by
  link_source cell_7298 with piece_670 using piece_670_mem, ⟨piece_2071_mem, piece_2072_mem⟩

theorem linked_7299 : Linked cell_7299 pieces := by
  link_source cell_7299 with piece_670 using piece_670_mem, ⟨piece_2070_mem, piece_2071_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0145.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0145.cells,List.forall_mem_cons]
  exact ⟨linked_7250, linked_7251, linked_7252, linked_7253, linked_7254, linked_7255, linked_7256, linked_7257, linked_7258, linked_7259, linked_7260, linked_7261, linked_7262, linked_7263, linked_7264, linked_7265, linked_7266, linked_7267, linked_7268, linked_7269, linked_7270, linked_7271, linked_7272, linked_7273, linked_7274, linked_7275, linked_7276, linked_7277, linked_7278, linked_7279, linked_7280, linked_7281, linked_7282, linked_7283, linked_7284, linked_7285, linked_7286, linked_7287, linked_7288, linked_7289, linked_7290, linked_7291, linked_7292, linked_7293, linked_7294, linked_7295, linked_7296, linked_7297, linked_7298, linked_7299, by simp⟩

theorem covered : covers (25912500000000001 / 100000000000000000 : ℚ) (26212500000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0145.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0145
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0146
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(26212500000000001 / 100000000000000000 : ℚ), (26218750000000001 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (21353323604493 / 25000000000000 : ℚ)
  w := (2279686061329 / 1250000000000 : ℚ)
  center := (26215625000000001 / 100000000000000000 : ℚ)
  supportValue := (9039187447805171 / 10000000000000000 : ℚ)
  supportSlope := (-8323960874946579 / 1000000000000000 : ℚ)
  oldCenter := (9039187447805171 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_671
  oldLo := (89350000000000007 / 100000000000000000 : ℚ)
  oldHi := (44700000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2067, piece_2068]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7300 : Cell := { cellDefaults with
  r := (85710510065687 / 100000000000000 : ℚ)
  w := (18286154037089 / 10000000000000 : ℚ)
  newCoefficients := coefficients_670
  oldLo := (11293750000000001 / 12500000000000000 : ℚ)
  oldHi := (11306250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2069, piece_2070]
}

def cell_7301 : Cell := { cellDefaults with
  domain := ⟨(26218750000000001 / 100000000000000000 : ℚ), (26225000000000001 / 100000000000000000 : ℚ)⟩
  r := (85710510065687 / 100000000000000 : ℚ)
  w := (18286154037089 / 10000000000000 : ℚ)
  center := (26221875000000001 / 100000000000000000 : ℚ)
  supportValue := (4516993669733891 / 5000000000000000 : ℚ)
  supportSlope := (-2079079576126297 / 250000000000000 : ℚ)
  oldCenter := (4516993669733891 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_670
  oldLo := (45150000000000001 / 50000000000000000 : ℚ)
  oldHi := (90400000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_2068, piece_2069]
}

def cell_7302 : Cell := { cellDefaults with
  domain := ⟨(26225000000000001 / 100000000000000000 : ℚ), (26231250000000001 / 100000000000000000 : ℚ)⟩
  r := (85710510065687 / 100000000000000 : ℚ)
  w := (18286154037089 / 10000000000000 : ℚ)
  center := (26228125000000001 / 100000000000000000 : ℚ)
  supportValue := (902879200597787 / 1000000000000000 : ℚ)
  supportSlope := (-830868217261127 / 100000000000000 : ℚ)
  oldCenter := (902879200597787 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_670
  oldLo := (11281250000000001 / 12500000000000000 : ℚ)
  oldHi := (11293750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2067, piece_2068]
}

def cell_7303 : Cell := { cellDefaults with
  domain := ⟨(26231250000000001 / 100000000000000000 : ℚ), (26237500000000001 / 100000000000000000 : ℚ)⟩
  r := (85710510065687 / 100000000000000 : ℚ)
  w := (18286154037089 / 10000000000000 : ℚ)
  center := (26234375000000001 / 100000000000000000 : ℚ)
  supportValue := (451180072182613 / 500000000000000 : ℚ)
  supportSlope := (-4150525936102767 / 500000000000000 : ℚ)
  oldCenter := (451180072182613 / 500000000000000 : ℚ)
  newCoefficients := coefficients_670
  oldLo := (45100000000000001 / 50000000000000000 : ℚ)
  oldHi := (45150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2066, piece_2067]
}

def cell_7304 : Cell := { cellDefaults with
  domain := ⟨(26237500000000001 / 100000000000000000 : ℚ), (26243750000000001 / 100000000000000000 : ℚ)⟩
  r := (85710510065687 / 100000000000000 : ℚ)
  w := (18286154037089 / 10000000000000 : ℚ)
  center := (26240625000000001 / 100000000000000000 : ℚ)
  supportValue := (9018415648552909 / 10000000000000000 : ℚ)
  supportSlope := (-259169625969613 / 31250000000000 : ℚ)
  oldCenter := (9018415648552909 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_670
  oldLo := (11268750000000001 / 12500000000000000 : ℚ)
  oldHi := (11281250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2065, piece_2066]
}

def cell_7305 : Cell := { cellDefaults with
  domain := ⟨(26243750000000001 / 100000000000000000 : ℚ), (26250000000000001 / 100000000000000000 : ℚ)⟩
  r := (85710510065687 / 100000000000000 : ℚ)
  w := (18286154037089 / 10000000000000 : ℚ)
  center := (26246875000000001 / 100000000000000000 : ℚ)
  supportValue := (9013234616682579 / 10000000000000000 : ℚ)
  supportSlope := (-1035726324251307 / 125000000000000 : ℚ)
  oldCenter := (9013234616682579 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_670
  oldLo := (45050000000000001 / 50000000000000000 : ℚ)
  oldHi := (45100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2064, piece_2065]
}

def cell_7306 : Cell := { cellDefaults with
  domain := ⟨(26250000000000001 / 100000000000000000 : ℚ), (26256250000000001 / 100000000000000000 : ℚ)⟩
  r := (10704490380723 / 12500000000000 : ℚ)
  w := (18273948445713 / 10000000000000 : ℚ)
  center := (26253125000000001 / 100000000000000000 : ℚ)
  supportValue := (902800708074169 / 1000000000000000 : ℚ)
  supportSlope := (-4150066557286891 / 500000000000000 : ℚ)
  oldCenter := (902800708074169 / 1000000000000000 : ℚ)
  oldLo := (11281250000000001 / 12500000000000000 : ℚ)
  oldHi := (11293750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2067, piece_2068]
}

def cell_7307 : Cell := { cellDefaults with
  domain := ⟨(26256250000000001 / 100000000000000000 : ℚ), (26262500000000001 / 100000000000000000 : ℚ)⟩
  r := (10704490380723 / 12500000000000 : ℚ)
  w := (18273948445713 / 10000000000000 : ℚ)
  center := (26259375000000001 / 100000000000000000 : ℚ)
  supportValue := (4511410926389703 / 5000000000000000 : ℚ)
  supportSlope := (-8292531900430333 / 1000000000000000 : ℚ)
  oldCenter := (4511410926389703 / 5000000000000000 : ℚ)
  oldLo := (45100000000000001 / 50000000000000000 : ℚ)
  oldHi := (45150000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2066, piece_2067]
}

def cell_7308 : Cell := { cellDefaults with
  domain := ⟨(26262500000000001 / 100000000000000000 : ℚ), (26268750000000001 / 100000000000000000 : ℚ)⟩
  r := (10704490380723 / 12500000000000 : ℚ)
  w := (18273948445713 / 10000000000000 : ℚ)
  center := (26265625000000001 / 100000000000000000 : ℚ)
  supportValue := (1803528274778651 / 2000000000000000 : ℚ)
  supportSlope := (-103561713612077 / 12500000000000 : ℚ)
  oldCenter := (1803528274778651 / 2000000000000000 : ℚ)
  oldLo := (11268750000000001 / 12500000000000000 : ℚ)
  oldHi := (11281250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2065, piece_2066]
}

def cell_7309 : Cell := { cellDefaults with
  domain := ⟨(26268750000000001 / 100000000000000000 : ℚ), (26275000000000001 / 100000000000000000 : ℚ)⟩
  r := (10704490380723 / 12500000000000 : ℚ)
  w := (18273948445713 / 10000000000000 : ℚ)
  center := (26271875000000001 / 100000000000000000 : ℚ)
  supportValue := (1802493128020791 / 2000000000000000 : ℚ)
  supportSlope := (-1034672892695987 / 125000000000000 : ℚ)
  oldCenter := (1802493128020791 / 2000000000000000 : ℚ)
  oldLo := (11256250000000001 / 12500000000000000 : ℚ)
  oldHi := (45100000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2063, piece_2064, piece_2065]
}

def cell_7310 : Cell := { cellDefaults with
  domain := ⟨(26275000000000001 / 100000000000000000 : ℚ), (26281250000000001 / 100000000000000000 : ℚ)⟩
  r := (10704490380723 / 12500000000000 : ℚ)
  w := (18273948445713 / 10000000000000 : ℚ)
  center := (26278125000000001 / 100000000000000000 : ℚ)
  supportValue := (9007294647434071 / 10000000000000000 : ℚ)
  supportSlope := (-206745292989563 / 25000000000000 : ℚ)
  oldCenter := (9007294647434071 / 10000000000000000 : ℚ)
  oldLo := (9004469273743017 / 10000000000000000 : ℚ)
  oldHi := (45050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2062, piece_2063]
}

def cell_7311 : Cell := { cellDefaults with
  domain := ⟨(26281250000000001 / 100000000000000000 : ℚ), (26287500000000001 / 100000000000000000 : ℚ)⟩
  r := (10704490380723 / 12500000000000 : ℚ)
  w := (18273948445713 / 10000000000000 : ℚ)
  center := (26284375000000001 / 100000000000000000 : ℚ)
  supportValue := (9002128391924349 / 10000000000000000 : ℚ)
  supportSlope := (-206555871248959 / 25000000000000 : ℚ)
  oldCenter := (9002128391924349 / 10000000000000000 : ℚ)
  oldLo := (11243750000000001 / 12500000000000000 : ℚ)
  oldHi := (11256250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2060, piece_2061, piece_2062]
}

def cell_7312 : Cell := { cellDefaults with
  domain := ⟨(26287500000000001 / 100000000000000000 : ℚ), (26293750000000001 / 100000000000000000 : ℚ)⟩
  r := (10704490380723 / 12500000000000 : ℚ)
  w := (18273948445713 / 10000000000000 : ℚ)
  center := (26290625000000001 / 100000000000000000 : ℚ)
  supportValue := (4498483434862261 / 5000000000000000 : ℚ)
  supportSlope := (-825466413116871 / 100000000000000 : ℚ)
  oldCenter := (4498483434862261 / 5000000000000000 : ℚ)
  oldLo := (44950000000000001 / 50000000000000000 : ℚ)
  oldHi := (45000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2059, piece_2060]
}

def cell_7313 : Cell := { cellDefaults with
  domain := ⟨(26293750000000001 / 100000000000000000 : ℚ), (26300000000000001 / 100000000000000000 : ℚ)⟩
  r := (10704490380723 / 12500000000000 : ℚ)
  w := (18273948445713 / 10000000000000 : ℚ)
  center := (26296875000000001 / 100000000000000000 : ℚ)
  supportValue := (4495905038411799 / 5000000000000000 : ℚ)
  supportSlope := (-4123550013181543 / 500000000000000 : ℚ)
  oldCenter := (4495905038411799 / 5000000000000000 : ℚ)
  oldLo := (11231250000000001 / 12500000000000000 : ℚ)
  oldHi := (11243750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2058, piece_2059]
}

def cell_7314 : Cell := { cellDefaults with
  domain := ⟨(26300000000000001 / 100000000000000000 : ℚ), (26306250000000001 / 100000000000000000 : ℚ)⟩
  r := (85561524807031 / 100000000000000 : ℚ)
  w := (18261768708117 / 10000000000000 : ℚ)
  center := (26303125000000001 / 100000000000000000 : ℚ)
  supportValue := (9006522228128757 / 10000000000000000 : ℚ)
  supportSlope := (-4130681404529213 / 500000000000000 : ℚ)
  oldCenter := (9006522228128757 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_672
  oldLo := (45000000000000001 / 50000000000000000 : ℚ)
  oldHi := (45050000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2061, piece_2062, piece_2063]
}

def cell_7315 : Cell := { cellDefaults with
  domain := ⟨(26306250000000001 / 100000000000000000 : ℚ), (26312500000000001 / 100000000000000000 : ℚ)⟩
  r := (85561524807031 / 100000000000000 : ℚ)
  w := (18261768708117 / 10000000000000 : ℚ)
  center := (26309375000000001 / 100000000000000000 : ℚ)
  supportValue := (360054449858507 / 400000000000000 : ℚ)
  supportSlope := (-515862904587161 / 62500000000000 : ℚ)
  oldCenter := (360054449858507 / 400000000000000 : ℚ)
  newCoefficients := coefficients_672
  oldLo := (11243750000000001 / 12500000000000000 : ℚ)
  oldHi := (9004469273743017 / 10000000000000000 : ℚ)
  oldPieces := [piece_2060, piece_2061]
}

def cell_7316 : Cell := { cellDefaults with
  domain := ⟨(26312500000000001 / 100000000000000000 : ℚ), (26318750000000001 / 100000000000000000 : ℚ)⟩
  r := (85561524807031 / 100000000000000 : ℚ)
  w := (18261768708117 / 10000000000000 : ℚ)
  center := (26315625000000001 / 100000000000000000 : ℚ)
  supportValue := (8996204985275381 / 10000000000000000 : ℚ)
  supportSlope := (-824625634772147 / 100000000000000 : ℚ)
  oldCenter := (8996204985275381 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_672
  oldLo := (44950000000000001 / 50000000000000000 : ℚ)
  oldHi := (45000000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2059, piece_2060]
}

def cell_7317 : Cell := { cellDefaults with
  domain := ⟨(26318750000000001 / 100000000000000000 : ℚ), (26325000000000001 / 100000000000000000 : ℚ)⟩
  r := (85561524807031 / 100000000000000 : ℚ)
  w := (18261768708117 / 10000000000000 : ℚ)
  center := (26321875000000001 / 100000000000000000 : ℚ)
  supportValue := (2247763360130809 / 2500000000000000 : ℚ)
  supportSlope := (-8238712778044999 / 1000000000000000 : ℚ)
  oldCenter := (2247763360130809 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_672
  oldLo := (11231250000000001 / 12500000000000000 : ℚ)
  oldHi := (11243750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2058, piece_2059]
}

def cell_7318 : Cell := { cellDefaults with
  domain := ⟨(26325000000000001 / 100000000000000000 : ℚ), (26331250000000001 / 100000000000000000 : ℚ)⟩
  r := (85561524807031 / 100000000000000 : ℚ)
  w := (18261768708117 / 10000000000000 : ℚ)
  center := (26328125000000001 / 100000000000000000 : ℚ)
  supportValue := (8985906608214859 / 10000000000000000 : ℚ)
  supportSlope := (-4115587725147307 / 500000000000000 : ℚ)
  oldCenter := (8985906608214859 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_672
  oldLo := (44900000000000001 / 50000000000000000 : ℚ)
  oldHi := (44950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2057, piece_2058]
}

def cell_7319 : Cell := { cellDefaults with
  domain := ⟨(26331250000000001 / 100000000000000000 : ℚ), (26337500000000001 / 100000000000000000 : ℚ)⟩
  r := (85561524807031 / 100000000000000 : ℚ)
  w := (18261768708117 / 10000000000000 : ℚ)
  center := (26334375000000001 / 100000000000000000 : ℚ)
  supportValue := (359230579380547 / 400000000000000 : ℚ)
  supportSlope := (-513977753226591 / 62500000000000 : ℚ)
  oldCenter := (359230579380547 / 400000000000000 : ℚ)
  newCoefficients := coefficients_672
  oldLo := (11218750000000001 / 12500000000000000 : ℚ)
  oldHi := (11231250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2056, piece_2057]
}

def cell_7320 : Cell := { cellDefaults with
  domain := ⟨(26337500000000001 / 100000000000000000 : ℚ), (26343750000000001 / 100000000000000000 : ℚ)⟩
  r := (85561524807031 / 100000000000000 : ℚ)
  w := (18261768708117 / 10000000000000 : ℚ)
  center := (26340625000000001 / 100000000000000000 : ℚ)
  supportValue := (4487813532807851 / 5000000000000000 : ℚ)
  supportSlope := (-821611913687903 / 100000000000000 : ℚ)
  oldCenter := (4487813532807851 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_672
  oldLo := (44850000000000001 / 50000000000000000 : ℚ)
  oldHi := (44900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2055, piece_2056]
}

def cell_7321 : Cell := { cellDefaults with
  domain := ⟨(26343750000000001 / 100000000000000000 : ℚ), (26350000000000001 / 100000000000000000 : ℚ)⟩
  r := (85561524807031 / 100000000000000 : ℚ)
  w := (18261768708117 / 10000000000000 : ℚ)
  center := (26346875000000001 / 100000000000000000 : ℚ)
  supportValue := (224262358687153 / 250000000000000 : ℚ)
  supportSlope := (-8208600458655013 / 1000000000000000 : ℚ)
  oldCenter := (224262358687153 / 250000000000000 : ℚ)
  newCoefficients := coefficients_672
  oldLo := (89650000000000007 / 100000000000000000 : ℚ)
  oldHi := (11218750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2054, piece_2055]
}

def cell_7322 : Cell := { cellDefaults with
  domain := ⟨(26350000000000001 / 100000000000000000 : ℚ), (26356250000000001 / 100000000000000000 : ℚ)⟩
  r := (85487315936231 / 100000000000000 : ℚ)
  w := (2281201887389 / 1250000000000 : ℚ)
  center := (26353125000000001 / 100000000000000000 : ℚ)
  supportValue := (8985146118320141 / 10000000000000000 : ℚ)
  supportSlope := (-4111398486170259 / 500000000000000 : ℚ)
  oldCenter := (8985146118320141 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_673
  oldLo := (44900000000000001 / 50000000000000000 : ℚ)
  oldHi := (44950000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2057, piece_2058]
}

def cell_7323 : Cell := { cellDefaults with
  domain := ⟨(26356250000000001 / 100000000000000000 : ℚ), (26362500000000001 / 100000000000000000 : ℚ)⟩
  r := (85487315936231 / 100000000000000 : ℚ)
  w := (2281201887389 / 1250000000000 : ℚ)
  center := (26359375000000001 / 100000000000000000 : ℚ)
  supportValue := (8980009221363667 / 10000000000000000 : ℚ)
  supportSlope := (-4107648047954271 / 500000000000000 : ℚ)
  oldCenter := (8980009221363667 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_673
  oldLo := (11218750000000001 / 12500000000000000 : ℚ)
  oldHi := (11231250000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2056, piece_2057]
}

def cell_7324 : Cell := { cellDefaults with
  domain := ⟨(26362500000000001 / 100000000000000000 : ℚ), (26368750000000001 / 100000000000000000 : ℚ)⟩
  r := (85487315936231 / 100000000000000 : ℚ)
  w := (2281201887389 / 1250000000000 : ℚ)
  center := (26365625000000001 / 100000000000000000 : ℚ)
  supportValue := (8974876987711313 / 10000000000000000 : ℚ)
  supportSlope := (-328312068537997 / 40000000000000 : ℚ)
  oldCenter := (8974876987711313 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_673
  oldLo := (44850000000000001 / 50000000000000000 : ℚ)
  oldHi := (44900000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2055, piece_2056]
}

def cell_7325 : Cell := { cellDefaults with
  domain := ⟨(26368750000000001 / 100000000000000000 : ℚ), (26375000000000001 / 100000000000000000 : ℚ)⟩
  r := (85487315936231 / 100000000000000 : ℚ)
  w := (2281201887389 / 1250000000000 : ℚ)
  center := (26371875000000001 / 100000000000000000 : ℚ)
  supportValue := (8969749436434161 / 10000000000000000 : ℚ)
  supportSlope := (-1640062701863343 / 200000000000000 : ℚ)
  oldCenter := (8969749436434161 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_673
  oldLo := (89650000000000007 / 100000000000000000 : ℚ)
  oldHi := (11218750000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_2054, piece_2055]
}

def cell_7326 : Cell := { cellDefaults with
  domain := ⟨(26375000000000001 / 100000000000000000 : ℚ), (26381250000000001 / 100000000000000000 : ℚ)⟩
  r := (85487315936231 / 100000000000000 : ℚ)
  w := (2281201887389 / 1250000000000 : ℚ)
  center := (26378125000000001 / 100000000000000000 : ℚ)
  supportValue := (2241156640925901 / 2500000000000000 : ℚ)
  supportSlope := (-4096415746509763 / 500000000000000 : ℚ)
  oldCenter := (2241156640925901 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_673
  oldLo := (44800000000000001 / 50000000000000000 : ℚ)
  oldHi := (44850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2053, piece_2054]
}

def cell_7327 : Cell := { cellDefaults with
  domain := ⟨(26381250000000001 / 100000000000000000 : ℚ), (26387500000000001 / 100000000000000000 : ℚ)⟩
  r := (85487315936231 / 100000000000000 : ℚ)
  w := (2281201887389 / 1250000000000 : ℚ)
  center := (26384375000000001 / 100000000000000000 : ℚ)
  supportValue := (4479754182827817 / 5000000000000000 : ℚ)
  supportSlope := (-327414226465379 / 40000000000000 : ℚ)
  oldCenter := (4479754182827817 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_673
  oldLo := (89550000000000007 / 100000000000000000 : ℚ)
  oldHi := (89650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2052, piece_2053]
}

def cell_7328 : Cell := { cellDefaults with
  domain := ⟨(26387500000000001 / 100000000000000000 : ℚ), (26393750000000001 / 100000000000000000 : ℚ)⟩
  r := (85487315936231 / 100000000000000 : ℚ)
  w := (2281201887389 / 1250000000000 : ℚ)
  center := (26390625000000001 / 100000000000000000 : ℚ)
  supportValue := (1119299354803053 / 1250000000000000 : ℚ)
  supportSlope := (-511117876352829 / 62500000000000 : ℚ)
  oldCenter := (1119299354803053 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_673
  oldLo := (44750000000000001 / 50000000000000000 : ℚ)
  oldHi := (44800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2051, piece_2052]
}

def cell_7329 : Cell := { cellDefaults with
  domain := ⟨(26393750000000001 / 100000000000000000 : ℚ), (26400000000000001 / 100000000000000000 : ℚ)⟩
  r := (85487315936231 / 100000000000000 : ℚ)
  w := (2281201887389 / 1250000000000 : ℚ)
  center := (26396875000000001 / 100000000000000000 : ℚ)
  supportValue := (4474642989073153 / 5000000000000000 : ℚ)
  supportSlope := (-4085211280909107 / 500000000000000 : ℚ)
  oldCenter := (4474642989073153 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_673
  oldLo := (89450000000000007 / 100000000000000000 : ℚ)
  oldHi := (89550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2049, piece_2050, piece_2051]
}

def cell_7330 : Cell := { cellDefaults with
  domain := ⟨(26400000000000001 / 100000000000000000 : ℚ), (26406250000000001 / 100000000000000000 : ℚ)⟩
  center := (26403125000000001 / 100000000000000000 : ℚ)
  supportValue := (8963877280937717 / 10000000000000000 : ℚ)
  supportSlope := (-8184537646819479 / 1000000000000000 : ℚ)
  oldCenter := (8963877280937717 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_674
  oldLo := (44800000000000001 / 50000000000000000 : ℚ)
  oldHi := (44850000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2053, piece_2054]
}

def cell_7331 : Cell := { cellDefaults with
  domain := ⟨(26406250000000001 / 100000000000000000 : ℚ), (26412500000000001 / 100000000000000000 : ℚ)⟩
  center := (26409375000000001 / 100000000000000000 : ℚ)
  supportValue := (8958764258467173 / 10000000000000000 : ℚ)
  supportSlope := (-8177088620950457 / 1000000000000000 : ℚ)
  oldCenter := (8958764258467173 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_674
  oldLo := (89550000000000007 / 100000000000000000 : ℚ)
  oldHi := (89650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2052, piece_2053]
}

def cell_7332 : Cell := { cellDefaults with
  domain := ⟨(26412500000000001 / 100000000000000000 : ℚ), (26418750000000001 / 100000000000000000 : ℚ)⟩
  center := (26415625000000001 / 100000000000000000 : ℚ)
  supportValue := (8953655890069573 / 10000000000000000 : ℚ)
  supportSlope := (-4084822877931771 / 500000000000000 : ℚ)
  oldCenter := (8953655890069573 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_674
  oldLo := (44750000000000001 / 50000000000000000 : ℚ)
  oldHi := (44800000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2051, piece_2052]
}

def cell_7333 : Cell := { cellDefaults with
  domain := ⟨(26418750000000001 / 100000000000000000 : ℚ), (26425000000000001 / 100000000000000000 : ℚ)⟩
  center := (26421875000000001 / 100000000000000000 : ℚ)
  supportValue := (34955281921489 / 39062500000000 : ℚ)
  supportSlope := (-4081104520325951 / 500000000000000 : ℚ)
  oldCenter := (34955281921489 / 39062500000000 : ℚ)
  newCoefficients := coefficients_674
  oldLo := (89450000000000007 / 100000000000000000 : ℚ)
  oldHi := (89550000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2049, piece_2050, piece_2051]
}

def cell_7334 : Cell := { cellDefaults with
  domain := ⟨(26425000000000001 / 100000000000000000 : ℚ), (105716340782122903 / 400000000000000000 : ℚ)⟩
  center := (211416340782122907 / 800000000000000000 : ℚ)
  supportValue := (2236082406899489 / 2500000000000000 : ℚ)
  supportSlope := (-8156167825304747 / 1000000000000000 : ℚ)
  oldCenter := (2236082406899489 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_674
  oldLo := (44700000000000001 / 50000000000000000 : ℚ)
  oldHi := (139830656424581 / 156250000000000 : ℚ)
  oldPieces := [piece_2048, piece_2049]
}

def cell_7335 : Cell := { cellDefaults with
  domain := ⟨(105716340782122903 / 400000000000000000 : ℚ), (52866340782122901 / 200000000000000000 : ℚ)⟩
  center := (42289804469273741 / 160000000000000000 : ℚ)
  supportValue := (8940998684560031 / 10000000000000000 : ℚ)
  supportSlope := (-8151078709000293 / 1000000000000000 : ℚ)
  oldCenter := (8940998684560031 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_674
  oldHi := (89450000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2047, piece_2048]
}

def cell_7336 : Cell := { cellDefaults with
  domain := ⟨(52866340782122901 / 200000000000000000 : ℚ), (105749022346368701 / 400000000000000000 : ℚ)⟩
  center := (211481703910614503 / 800000000000000000 : ℚ)
  supportValue := (2234417425930687 / 2500000000000000 : ℚ)
  supportSlope := (-4073207018806679 / 500000000000000 : ℚ)
  oldCenter := (2234417425930687 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_674
  oldPieces := [piece_2047]
}

def cell_7337 : Cell := { cellDefaults with
  domain := ⟨(105749022346368701 / 400000000000000000 : ℚ), (264413407821229 / 1000000000000000 : ℚ)⟩
  center := (211514385474860301 / 800000000000000000 : ℚ)
  supportValue := (446717140044109 / 500000000000000 : ℚ)
  supportSlope := (-2035403038948611 / 250000000000000 : ℚ)
  oldCenter := (446717140044109 / 500000000000000 : ℚ)
  newCoefficients := coefficients_674
  oldLo := (44650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2046, piece_2047]
}

def cell_7338 : Cell := { cellDefaults with
  domain := ⟨(264413407821229 / 1000000000000000 : ℚ), (52891340782122901 / 200000000000000000 : ℚ)⟩
  center := (105774022346368701 / 400000000000000000 : ℚ)
  supportValue := (8930918366249021 / 10000000000000000 : ℚ)
  supportSlope := (-4068219958876189 / 500000000000000 : ℚ)
  oldCenter := (8930918366249021 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_675
  oldLo := (89250000000000007 / 100000000000000000 : ℚ)
  oldHi := (89350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2045, piece_2046]
}

def cell_7339 : Cell := { cellDefaults with
  domain := ⟨(52891340782122901 / 200000000000000000 : ℚ), (26450000000000001 / 100000000000000000 : ℚ)⟩
  center := (105791340782122903 / 400000000000000000 : ℚ)
  supportValue := (223184915652311 / 250000000000000 : ℚ)
  supportSlope := (-4065692384184451 / 500000000000000 : ℚ)
  oldCenter := (223184915652311 / 250000000000000 : ℚ)
  newCoefficients := coefficients_675
  oldLo := (89250000000000007 / 100000000000000000 : ℚ)
  oldHi := (44650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2045]
}

def cell_7340 : Cell := { cellDefaults with
  domain := ⟨(26450000000000001 / 100000000000000000 : ℚ), (26456250000000001 / 100000000000000000 : ℚ)⟩
  r := (10667432591297 / 12500000000000 : ℚ)
  w := (18225387255619 / 10000000000000 : ℚ)
  center := (26453125000000001 / 100000000000000000 : ℚ)
  supportValue := (1788543127173757 / 2000000000000000 : ℚ)
  supportSlope := (-203664839707951 / 25000000000000 : ℚ)
  oldCenter := (1788543127173757 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_676
  oldLo := (44700000000000001 / 50000000000000000 : ℚ)
  oldHi := (139830656424581 / 156250000000000 : ℚ)
  oldPieces := [piece_2048, piece_2049]
}

def cell_7341 : Cell := { cellDefaults with
  domain := ⟨(26456250000000001 / 100000000000000000 : ℚ), (26462500000000001 / 100000000000000000 : ℚ)⟩
  r := (10667432591297 / 12500000000000 : ℚ)
  w := (18225387255619 / 10000000000000 : ℚ)
  center := (26459375000000001 / 100000000000000000 : ℚ)
  supportValue := (1787525262987863 / 2000000000000000 : ℚ)
  supportSlope := (-813919331742241 / 100000000000000 : ℚ)
  oldCenter := (1787525262987863 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_676
  oldHi := (89450000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2047, piece_2048]
}

def cell_7342 : Cell := { cellDefaults with
  domain := ⟨(26462500000000001 / 100000000000000000 : ℚ), (26468750000000001 / 100000000000000000 : ℚ)⟩
  r := (10667432591297 / 12500000000000 : ℚ)
  w := (18225387255619 / 10000000000000 : ℚ)
  center := (26465625000000001 / 100000000000000000 : ℚ)
  supportValue := (1786508323528369 / 2000000000000000 : ℚ)
  supportSlope := (-4065900657490573 / 500000000000000 : ℚ)
  oldCenter := (1786508323528369 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_676
  oldLo := (44650000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2046, piece_2047]
}

def cell_7343 : Cell := { cellDefaults with
  domain := ⟨(26468750000000001 / 100000000000000000 : ℚ), (26475000000000001 / 100000000000000000 : ℚ)⟩
  r := (10667432591297 / 12500000000000 : ℚ)
  w := (18225387255619 / 10000000000000 : ℚ)
  center := (26471875000000001 / 100000000000000000 : ℚ)
  supportValue := (1785492308034041 / 2000000000000000 : ℚ)
  supportSlope := (-2031108183116359 / 250000000000000 : ℚ)
  oldCenter := (1785492308034041 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_676
  oldLo := (44600000000000001 / 50000000000000000 : ℚ)
  oldHi := (89350000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2044, piece_2045, piece_2046]
}

def cell_7344 : Cell := { cellDefaults with
  domain := ⟨(26475000000000001 / 100000000000000000 : ℚ), (26481250000000001 / 100000000000000000 : ℚ)⟩
  r := (10667432591297 / 12500000000000 : ℚ)
  w := (18225387255619 / 10000000000000 : ℚ)
  center := (26478125000000001 / 100000000000000000 : ℚ)
  supportValue := (892238607864163 / 1000000000000000 : ℚ)
  supportSlope := (-8117049661816367 / 1000000000000000 : ℚ)
  oldCenter := (892238607864163 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_676
  oldLo := (89150000000000007 / 100000000000000000 : ℚ)
  oldHi := (89250000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2043, piece_2044]
}

def cell_7345 : Cell := { cellDefaults with
  domain := ⟨(26481250000000001 / 100000000000000000 : ℚ), (26487500000000001 / 100000000000000000 : ℚ)⟩
  r := (10667432591297 / 12500000000000 : ℚ)
  w := (18225387255619 / 10000000000000 : ℚ)
  center := (26484375000000001 / 100000000000000000 : ℚ)
  supportValue := (8917315229269379 / 10000000000000000 : ℚ)
  supportSlope := (-4054836330579903 / 500000000000000 : ℚ)
  oldCenter := (8917315229269379 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_676
  oldLo := (89100000000000001 / 100000000000000000 : ℚ)
  oldHi := (44600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2042, piece_2043]
}

def cell_7346 : Cell := { cellDefaults with
  domain := ⟨(26487500000000001 / 100000000000000000 : ℚ), (26493750000000001 / 100000000000000000 : ℚ)⟩
  r := (10667432591297 / 12500000000000 : ℚ)
  w := (18225387255619 / 10000000000000 : ℚ)
  center := (26490625000000001 / 100000000000000000 : ℚ)
  supportValue := (8912248988256163 / 10000000000000000 : ℚ)
  supportSlope := (-2025575432188731 / 250000000000000 : ℚ)
  oldCenter := (8912248988256163 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_676
  oldLo := (89050000000000007 / 100000000000000000 : ℚ)
  oldHi := (89150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2041, piece_2042]
}

def cell_7347 : Cell := { cellDefaults with
  domain := ⟨(26493750000000001 / 100000000000000000 : ℚ), (26500000000000001 / 100000000000000000 : ℚ)⟩
  r := (10667432591297 / 12500000000000 : ℚ)
  w := (18225387255619 / 10000000000000 : ℚ)
  center := (26496875000000001 / 100000000000000000 : ℚ)
  supportValue := (8907187351808047 / 10000000000000000 : ℚ)
  supportSlope := (-8094936862704571 / 1000000000000000 : ℚ)
  oldCenter := (8907187351808047 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_676
  oldLo := (89000000000000001 / 100000000000000000 : ℚ)
  oldHi := (89100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2040, piece_2041]
}

def cell_7348 : Cell := { cellDefaults with
  domain := ⟨(26500000000000001 / 100000000000000000 : ℚ), (26506250000000001 / 100000000000000000 : ℚ)⟩
  r := (85265810851167 / 100000000000000 : ℚ)
  w := (18213313181303 / 10000000000000 : ℚ)
  center := (26503125000000001 / 100000000000000000 : ℚ)
  supportValue := (8921659710452623 / 10000000000000000 : ℚ)
  supportSlope := (-8108925750761387 / 1000000000000000 : ℚ)
  oldCenter := (8921659710452623 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_677
  oldLo := (89150000000000007 / 100000000000000000 : ℚ)
  oldHi := (89250000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2043, piece_2044]
}

def cell_7349 : Cell := { cellDefaults with
  domain := ⟨(26506250000000001 / 100000000000000000 : ℚ), (26512500000000001 / 100000000000000000 : ℚ)⟩
  r := (85265810851167 / 100000000000000 : ℚ)
  w := (18213313181303 / 10000000000000 : ℚ)
  center := (26509375000000001 / 100000000000000000 : ℚ)
  supportValue := (2229148482674533 / 2500000000000000 : ℚ)
  supportSlope := (-4050786427070463 / 500000000000000 : ℚ)
  oldCenter := (2229148482674533 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_677
  oldLo := (89100000000000001 / 100000000000000000 : ℚ)
  oldHi := (44600000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_2042, piece_2043]
}

theorem check_7300 : cell_7300.check = true := by
  decide +kernel

theorem check_7301 : cell_7301.check = true := by
  decide +kernel

theorem check_7302 : cell_7302.check = true := by
  decide +kernel

theorem check_7303 : cell_7303.check = true := by
  decide +kernel

theorem check_7304 : cell_7304.check = true := by
  decide +kernel

theorem check_7305 : cell_7305.check = true := by
  decide +kernel

theorem check_7306 : cell_7306.check = true := by
  decide +kernel

theorem check_7307 : cell_7307.check = true := by
  decide +kernel

theorem check_7308 : cell_7308.check = true := by
  decide +kernel

theorem check_7309 : cell_7309.check = true := by
  decide +kernel

theorem check_7310 : cell_7310.check = true := by
  decide +kernel

theorem check_7311 : cell_7311.check = true := by
  decide +kernel

theorem check_7312 : cell_7312.check = true := by
  decide +kernel

theorem check_7313 : cell_7313.check = true := by
  decide +kernel

theorem check_7314 : cell_7314.check = true := by
  decide +kernel

theorem check_7315 : cell_7315.check = true := by
  decide +kernel

theorem check_7316 : cell_7316.check = true := by
  decide +kernel

theorem check_7317 : cell_7317.check = true := by
  decide +kernel

theorem check_7318 : cell_7318.check = true := by
  decide +kernel

theorem check_7319 : cell_7319.check = true := by
  decide +kernel

theorem check_7320 : cell_7320.check = true := by
  decide +kernel

theorem check_7321 : cell_7321.check = true := by
  decide +kernel

theorem check_7322 : cell_7322.check = true := by
  decide +kernel

theorem check_7323 : cell_7323.check = true := by
  decide +kernel

theorem check_7324 : cell_7324.check = true := by
  decide +kernel

theorem check_7325 : cell_7325.check = true := by
  decide +kernel

theorem check_7326 : cell_7326.check = true := by
  decide +kernel

theorem check_7327 : cell_7327.check = true := by
  decide +kernel

theorem check_7328 : cell_7328.check = true := by
  decide +kernel

theorem check_7329 : cell_7329.check = true := by
  decide +kernel

theorem check_7330 : cell_7330.check = true := by
  decide +kernel

theorem check_7331 : cell_7331.check = true := by
  decide +kernel

theorem check_7332 : cell_7332.check = true := by
  decide +kernel

theorem check_7333 : cell_7333.check = true := by
  decide +kernel

theorem check_7334 : cell_7334.check = true := by
  decide +kernel

theorem check_7335 : cell_7335.check = true := by
  decide +kernel

theorem check_7336 : cell_7336.check = true := by
  decide +kernel

theorem check_7337 : cell_7337.check = true := by
  decide +kernel

theorem check_7338 : cell_7338.check = true := by
  decide +kernel

theorem check_7339 : cell_7339.check = true := by
  decide +kernel

theorem check_7340 : cell_7340.check = true := by
  decide +kernel

theorem check_7341 : cell_7341.check = true := by
  decide +kernel

theorem check_7342 : cell_7342.check = true := by
  decide +kernel

theorem check_7343 : cell_7343.check = true := by
  decide +kernel

theorem check_7344 : cell_7344.check = true := by
  decide +kernel

theorem check_7345 : cell_7345.check = true := by
  decide +kernel

theorem check_7346 : cell_7346.check = true := by
  decide +kernel

theorem check_7347 : cell_7347.check = true := by
  decide +kernel

theorem check_7348 : cell_7348.check = true := by
  decide +kernel

theorem check_7349 : cell_7349.check = true := by
  decide +kernel

def cells : List Cell := [cell_7300, cell_7301, cell_7302, cell_7303, cell_7304, cell_7305, cell_7306, cell_7307, cell_7308, cell_7309, cell_7310, cell_7311, cell_7312, cell_7313, cell_7314, cell_7315, cell_7316, cell_7317, cell_7318, cell_7319, cell_7320, cell_7321, cell_7322, cell_7323, cell_7324, cell_7325, cell_7326, cell_7327, cell_7328, cell_7329, cell_7330, cell_7331, cell_7332, cell_7333, cell_7334, cell_7335, cell_7336, cell_7337, cell_7338, cell_7339, cell_7340, cell_7341, cell_7342, cell_7343, cell_7344, cell_7345, cell_7346, cell_7347, cell_7348, cell_7349]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7300, check_7301, check_7302, check_7303, check_7304, check_7305, check_7306, check_7307, check_7308, check_7309, check_7310, check_7311, check_7312, check_7313, check_7314, check_7315, check_7316, check_7317, check_7318, check_7319, check_7320, check_7321, check_7322, check_7323, check_7324, check_7325, check_7326, check_7327, check_7328, check_7329, check_7330, check_7331, check_7332, check_7333, check_7334, check_7335, check_7336, check_7337, check_7338, check_7339, check_7340, check_7341, check_7342, check_7343, check_7344, check_7345, check_7346, check_7347, check_7348, check_7349, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0146

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0146
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0146
open AnalyticBounds.ExpressionCertificate

theorem linked_7300 : Linked cell_7300 pieces := by
  link_source cell_7300 with piece_670 using piece_670_mem, ⟨piece_2069_mem, piece_2070_mem⟩

theorem linked_7301 : Linked cell_7301 pieces := by
  link_source cell_7301 with piece_670 using piece_670_mem, ⟨piece_2068_mem, piece_2069_mem⟩

theorem linked_7302 : Linked cell_7302 pieces := by
  link_source cell_7302 with piece_670 using piece_670_mem, ⟨piece_2067_mem, piece_2068_mem⟩

theorem linked_7303 : Linked cell_7303 pieces := by
  link_source cell_7303 with piece_670 using piece_670_mem, ⟨piece_2066_mem, piece_2067_mem⟩

theorem linked_7304 : Linked cell_7304 pieces := by
  link_source cell_7304 with piece_670 using piece_670_mem, ⟨piece_2065_mem, piece_2066_mem⟩

theorem linked_7305 : Linked cell_7305 pieces := by
  link_source cell_7305 with piece_670 using piece_670_mem, ⟨piece_2064_mem, piece_2065_mem⟩

theorem linked_7306 : Linked cell_7306 pieces := by
  link_source cell_7306 with piece_671 using piece_671_mem, ⟨piece_2067_mem, piece_2068_mem⟩

theorem linked_7307 : Linked cell_7307 pieces := by
  link_source cell_7307 with piece_671 using piece_671_mem, ⟨piece_2066_mem, piece_2067_mem⟩

theorem linked_7308 : Linked cell_7308 pieces := by
  link_source cell_7308 with piece_671 using piece_671_mem, ⟨piece_2065_mem, piece_2066_mem⟩

theorem linked_7309 : Linked cell_7309 pieces := by
  link_source cell_7309 with piece_671 using piece_671_mem, ⟨piece_2063_mem, ⟨piece_2064_mem, piece_2065_mem⟩⟩

theorem linked_7310 : Linked cell_7310 pieces := by
  link_source cell_7310 with piece_671 using piece_671_mem, ⟨piece_2062_mem, piece_2063_mem⟩

theorem linked_7311 : Linked cell_7311 pieces := by
  link_source cell_7311 with piece_671 using piece_671_mem, ⟨piece_2060_mem, ⟨piece_2061_mem, piece_2062_mem⟩⟩

theorem linked_7312 : Linked cell_7312 pieces := by
  link_source cell_7312 with piece_671 using piece_671_mem, ⟨piece_2059_mem, piece_2060_mem⟩

theorem linked_7313 : Linked cell_7313 pieces := by
  link_source cell_7313 with piece_671 using piece_671_mem, ⟨piece_2058_mem, piece_2059_mem⟩

theorem linked_7314 : Linked cell_7314 pieces := by
  link_source cell_7314 with piece_672 using piece_672_mem, ⟨piece_2061_mem, ⟨piece_2062_mem, piece_2063_mem⟩⟩

theorem linked_7315 : Linked cell_7315 pieces := by
  link_source cell_7315 with piece_672 using piece_672_mem, ⟨piece_2060_mem, piece_2061_mem⟩

theorem linked_7316 : Linked cell_7316 pieces := by
  link_source cell_7316 with piece_672 using piece_672_mem, ⟨piece_2059_mem, piece_2060_mem⟩

theorem linked_7317 : Linked cell_7317 pieces := by
  link_source cell_7317 with piece_672 using piece_672_mem, ⟨piece_2058_mem, piece_2059_mem⟩

theorem linked_7318 : Linked cell_7318 pieces := by
  link_source cell_7318 with piece_672 using piece_672_mem, ⟨piece_2057_mem, piece_2058_mem⟩

theorem linked_7319 : Linked cell_7319 pieces := by
  link_source cell_7319 with piece_672 using piece_672_mem, ⟨piece_2056_mem, piece_2057_mem⟩

theorem linked_7320 : Linked cell_7320 pieces := by
  link_source cell_7320 with piece_672 using piece_672_mem, ⟨piece_2055_mem, piece_2056_mem⟩

theorem linked_7321 : Linked cell_7321 pieces := by
  link_source cell_7321 with piece_672 using piece_672_mem, ⟨piece_2054_mem, piece_2055_mem⟩

theorem linked_7322 : Linked cell_7322 pieces := by
  link_source cell_7322 with piece_673 using piece_673_mem, ⟨piece_2057_mem, piece_2058_mem⟩

theorem linked_7323 : Linked cell_7323 pieces := by
  link_source cell_7323 with piece_673 using piece_673_mem, ⟨piece_2056_mem, piece_2057_mem⟩

theorem linked_7324 : Linked cell_7324 pieces := by
  link_source cell_7324 with piece_673 using piece_673_mem, ⟨piece_2055_mem, piece_2056_mem⟩

theorem linked_7325 : Linked cell_7325 pieces := by
  link_source cell_7325 with piece_673 using piece_673_mem, ⟨piece_2054_mem, piece_2055_mem⟩

theorem linked_7326 : Linked cell_7326 pieces := by
  link_source cell_7326 with piece_673 using piece_673_mem, ⟨piece_2053_mem, piece_2054_mem⟩

theorem linked_7327 : Linked cell_7327 pieces := by
  link_source cell_7327 with piece_673 using piece_673_mem, ⟨piece_2052_mem, piece_2053_mem⟩

theorem linked_7328 : Linked cell_7328 pieces := by
  link_source cell_7328 with piece_673 using piece_673_mem, ⟨piece_2051_mem, piece_2052_mem⟩

theorem linked_7329 : Linked cell_7329 pieces := by
  link_source cell_7329 with piece_673 using piece_673_mem, ⟨piece_2049_mem, ⟨piece_2050_mem, piece_2051_mem⟩⟩

theorem linked_7330 : Linked cell_7330 pieces := by
  link_source cell_7330 with piece_674 using piece_674_mem, ⟨piece_2053_mem, piece_2054_mem⟩

theorem linked_7331 : Linked cell_7331 pieces := by
  link_source cell_7331 with piece_674 using piece_674_mem, ⟨piece_2052_mem, piece_2053_mem⟩

theorem linked_7332 : Linked cell_7332 pieces := by
  link_source cell_7332 with piece_674 using piece_674_mem, ⟨piece_2051_mem, piece_2052_mem⟩

theorem linked_7333 : Linked cell_7333 pieces := by
  link_source cell_7333 with piece_674 using piece_674_mem, ⟨piece_2049_mem, ⟨piece_2050_mem, piece_2051_mem⟩⟩

theorem linked_7334 : Linked cell_7334 pieces := by
  link_source cell_7334 with piece_674 using piece_674_mem, ⟨piece_2048_mem, piece_2049_mem⟩

theorem linked_7335 : Linked cell_7335 pieces := by
  link_source cell_7335 with piece_674 using piece_674_mem, ⟨piece_2047_mem, piece_2048_mem⟩

theorem linked_7336 : Linked cell_7336 pieces := by
  link_source cell_7336 with piece_674 using piece_674_mem, piece_2047_mem

theorem linked_7337 : Linked cell_7337 pieces := by
  link_source cell_7337 with piece_674 using piece_674_mem, ⟨piece_2046_mem, piece_2047_mem⟩

theorem linked_7338 : Linked cell_7338 pieces := by
  link_source cell_7338 with piece_675 using piece_675_mem, ⟨piece_2045_mem, piece_2046_mem⟩

theorem linked_7339 : Linked cell_7339 pieces := by
  link_source cell_7339 with piece_675 using piece_675_mem, piece_2045_mem

theorem linked_7340 : Linked cell_7340 pieces := by
  link_source cell_7340 with piece_676 using piece_676_mem, ⟨piece_2048_mem, piece_2049_mem⟩

theorem linked_7341 : Linked cell_7341 pieces := by
  link_source cell_7341 with piece_676 using piece_676_mem, ⟨piece_2047_mem, piece_2048_mem⟩

theorem linked_7342 : Linked cell_7342 pieces := by
  link_source cell_7342 with piece_676 using piece_676_mem, ⟨piece_2046_mem, piece_2047_mem⟩

theorem linked_7343 : Linked cell_7343 pieces := by
  link_source cell_7343 with piece_676 using piece_676_mem, ⟨piece_2044_mem, ⟨piece_2045_mem, piece_2046_mem⟩⟩

theorem linked_7344 : Linked cell_7344 pieces := by
  link_source cell_7344 with piece_676 using piece_676_mem, ⟨piece_2043_mem, piece_2044_mem⟩

theorem linked_7345 : Linked cell_7345 pieces := by
  link_source cell_7345 with piece_676 using piece_676_mem, ⟨piece_2042_mem, piece_2043_mem⟩

theorem linked_7346 : Linked cell_7346 pieces := by
  link_source cell_7346 with piece_676 using piece_676_mem, ⟨piece_2041_mem, piece_2042_mem⟩

theorem linked_7347 : Linked cell_7347 pieces := by
  link_source cell_7347 with piece_676 using piece_676_mem, ⟨piece_2040_mem, piece_2041_mem⟩

theorem linked_7348 : Linked cell_7348 pieces := by
  link_source cell_7348 with piece_677 using piece_677_mem, ⟨piece_2043_mem, piece_2044_mem⟩

theorem linked_7349 : Linked cell_7349 pieces := by
  link_source cell_7349 with piece_677 using piece_677_mem, ⟨piece_2042_mem, piece_2043_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0146.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0146.cells,List.forall_mem_cons]
  exact ⟨linked_7300, linked_7301, linked_7302, linked_7303, linked_7304, linked_7305, linked_7306, linked_7307, linked_7308, linked_7309, linked_7310, linked_7311, linked_7312, linked_7313, linked_7314, linked_7315, linked_7316, linked_7317, linked_7318, linked_7319, linked_7320, linked_7321, linked_7322, linked_7323, linked_7324, linked_7325, linked_7326, linked_7327, linked_7328, linked_7329, linked_7330, linked_7331, linked_7332, linked_7333, linked_7334, linked_7335, linked_7336, linked_7337, linked_7338, linked_7339, linked_7340, linked_7341, linked_7342, linked_7343, linked_7344, linked_7345, linked_7346, linked_7347, linked_7348, linked_7349, by simp⟩

theorem covered : covers (26212500000000001 / 100000000000000000 : ℚ) (26512500000000001 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0146.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0146
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0147
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(26512500000000001 / 100000000000000000 : ℚ), (26518750000000001 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (42596172221981 / 50000000000000 : ℚ)
  w := (4550316303031 / 2500000000000 : ℚ)
  center := (26515625000000001 / 100000000000000000 : ℚ)
  supportValue := (8911532744245949 / 10000000000000000 : ℚ)
  supportSlope := (-505889124858383 / 62500000000000 : ℚ)
  oldCenter := (8911532744245949 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_678
  oldLo := (88950000000000007 / 100000000000000000 : ℚ)
  oldHi := (22 / 25 : ℚ)
  oldPieces := [piece_2039, piece_2040]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7350 : Cell := { cellDefaults with
  r := (85265810851167 / 100000000000000 : ℚ)
  w := (18213313181303 / 10000000000000 : ℚ)
  newCoefficients := coefficients_677
  oldLo := (89050000000000007 / 100000000000000000 : ℚ)
  oldHi := (89150000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2041, piece_2042]
}

def cell_7351 : Cell := { cellDefaults with
  domain := ⟨(26518750000000001 / 100000000000000000 : ℚ), (26525000000000001 / 100000000000000000 : ℚ)⟩
  r := (85265810851167 / 100000000000000 : ℚ)
  w := (18213313181303 / 10000000000000 : ℚ)
  center := (26521875000000001 / 100000000000000000 : ℚ)
  supportValue := (890647614731929 / 1000000000000000 : ℚ)
  supportSlope := (-404344258996403 / 50000000000000 : ℚ)
  oldCenter := (890647614731929 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_677
  oldLo := (89000000000000001 / 100000000000000000 : ℚ)
  oldHi := (89100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2040, piece_2041]
}

def cell_7352 : Cell := { cellDefaults with
  domain := ⟨(26525000000000001 / 100000000000000000 : ℚ), (26531250000000001 / 100000000000000000 : ℚ)⟩
  r := (85265810851167 / 100000000000000 : ℚ)
  w := (18213313181303 / 10000000000000 : ℚ)
  center := (26528125000000001 / 100000000000000000 : ℚ)
  supportValue := (4450712068070913 / 5000000000000000 : ℚ)
  supportSlope := (-8079550410613479 / 1000000000000000 : ℚ)
  oldCenter := (4450712068070913 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_677
  oldHi := (89050000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2039, piece_2040]
}

def cell_7353 : Cell := { cellDefaults with
  domain := ⟨(26531250000000001 / 100000000000000000 : ℚ), (26537500000000001 / 100000000000000000 : ℚ)⟩
  r := (85265810851167 / 100000000000000 : ℚ)
  w := (18213313181303 / 10000000000000 : ℚ)
  center := (26534375000000001 / 100000000000000000 : ℚ)
  supportValue := (1779275341383851 / 2000000000000000 : ℚ)
  supportSlope := (-8072221692682291 / 1000000000000000 : ℚ)
  oldCenter := (1779275341383851 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_677
  oldLo := (88900000000000001 / 100000000000000000 : ℚ)
  oldHi := (89000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2037, piece_2038, piece_2039]
}

def cell_7354 : Cell := { cellDefaults with
  domain := ⟨(26537500000000001 / 100000000000000000 : ℚ), (26543750000000001 / 100000000000000000 : ℚ)⟩
  r := (85265810851167 / 100000000000000 : ℚ)
  w := (18213313181303 / 10000000000000 : ℚ)
  center := (26540625000000001 / 100000000000000000 : ℚ)
  supportValue := (8891333855949397 / 10000000000000000 : ℚ)
  supportSlope := (-806489880915251 / 100000000000000 : ℚ)
  oldCenter := (8891333855949397 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_677
  oldLo := (88850000000000007 / 100000000000000000 : ℚ)
  oldHi := (8893854748603351 / 10000000000000000 : ℚ)
  oldPieces := [piece_2036, piece_2037]
}

def cell_7355 : Cell := { cellDefaults with
  domain := ⟨(26543750000000001 / 100000000000000000 : ℚ), (26550000000000001 / 100000000000000000 : ℚ)⟩
  r := (85265810851167 / 100000000000000 : ℚ)
  w := (18213313181303 / 10000000000000 : ℚ)
  center := (26546875000000001 / 100000000000000000 : ℚ)
  supportValue := (1777259115891833 / 2000000000000000 : ℚ)
  supportSlope := (-4028791057166359 / 500000000000000 : ℚ)
  oldCenter := (1777259115891833 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_677
  oldLo := (88800000000000001 / 100000000000000000 : ℚ)
  oldHi := (88900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2035, piece_2036]
}

def cell_7356 : Cell := { cellDefaults with
  domain := ⟨(26550000000000001 / 100000000000000000 : ℚ), (26556250000000001 / 100000000000000000 : ℚ)⟩
  center := (26553125000000001 / 100000000000000000 : ℚ)
  supportValue := (1780141843067251 / 2000000000000000 : ℚ)
  supportSlope := (-4035753156564681 / 500000000000000 : ℚ)
  oldCenter := (1780141843067251 / 2000000000000000 : ℚ)
  oldHi := (89050000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2039, piece_2040]
}

def cell_7357 : Cell := { cellDefaults with
  domain := ⟨(26556250000000001 / 100000000000000000 : ℚ), (26562500000000001 / 100000000000000000 : ℚ)⟩
  center := (26559375000000001 / 100000000000000000 : ℚ)
  supportValue := (4447833402852709 / 5000000000000000 : ℚ)
  supportSlope := (-32256808487233 / 4000000000000 : ℚ)
  oldCenter := (4447833402852709 / 5000000000000000 : ℚ)
  oldLo := (88900000000000001 / 100000000000000000 : ℚ)
  oldHi := (89000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2037, piece_2038, piece_2039]
}

def cell_7358 : Cell := { cellDefaults with
  domain := ⟨(26562500000000001 / 100000000000000000 : ℚ), (26568750000000001 / 100000000000000000 : ℚ)⟩
  center := (26565625000000001 / 100000000000000000 : ℚ)
  supportValue := (889062895900473 / 1000000000000000 : ℚ)
  supportSlope := (-8056903797012183 / 1000000000000000 : ℚ)
  oldCenter := (889062895900473 / 1000000000000000 : ℚ)
  oldLo := (88850000000000007 / 100000000000000000 : ℚ)
  oldHi := (8893854748603351 / 10000000000000000 : ℚ)
  oldPieces := [piece_2036, piece_2037]
}

def cell_7359 : Cell := { cellDefaults with
  domain := ⟨(26568750000000001 / 100000000000000000 : ℚ), (26575000000000001 / 100000000000000000 : ℚ)⟩
  center := (26571875000000001 / 100000000000000000 : ℚ)
  supportValue := (8885595671447979 / 10000000000000000 : ℚ)
  supportSlope := (-8049611600132067 / 1000000000000000 : ℚ)
  oldCenter := (8885595671447979 / 10000000000000000 : ℚ)
  oldLo := (88800000000000001 / 100000000000000000 : ℚ)
  oldHi := (88900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2035, piece_2036]
}

def cell_7360 : Cell := { cellDefaults with
  domain := ⟨(26575000000000001 / 100000000000000000 : ℚ), (26581250000000001 / 100000000000000000 : ℚ)⟩
  center := (26578125000000001 / 100000000000000000 : ℚ)
  supportValue := (8880566939263593 / 10000000000000000 : ℚ)
  supportSlope := (-402116267682473 / 50000000000000 : ℚ)
  oldCenter := (8880566939263593 / 10000000000000000 : ℚ)
  oldLo := (88750000000000007 / 100000000000000000 : ℚ)
  oldHi := (88850000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2034, piece_2035]
}

def cell_7361 : Cell := { cellDefaults with
  domain := ⟨(26581250000000001 / 100000000000000000 : ℚ), (26587500000000001 / 100000000000000000 : ℚ)⟩
  center := (26584375000000001 / 100000000000000000 : ℚ)
  supportValue := (2218885689674397 / 2500000000000000 : ℚ)
  supportSlope := (-8035045213347303 / 1000000000000000 : ℚ)
  oldCenter := (2218885689674397 / 2500000000000000 : ℚ)
  oldLo := (88700000000000001 / 100000000000000000 : ℚ)
  oldHi := (88800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2033, piece_2034]
}

def cell_7362 : Cell := { cellDefaults with
  domain := ⟨(26587500000000001 / 100000000000000000 : ℚ), (26593750000000001 / 100000000000000000 : ℚ)⟩
  center := (26590625000000001 / 100000000000000000 : ℚ)
  supportValue := (354820925038551 / 400000000000000 : ℚ)
  supportSlope := (-401388551289017 / 50000000000000 : ℚ)
  oldCenter := (354820925038551 / 400000000000000 : ℚ)
  oldLo := (88650000000000007 / 100000000000000000 : ℚ)
  oldHi := (88750000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2032, piece_2033]
}

def cell_7363 : Cell := { cellDefaults with
  domain := ⟨(26593750000000001 / 100000000000000000 : ℚ), (26600000000000001 / 100000000000000000 : ℚ)⟩
  center := (26596875000000001 / 100000000000000000 : ℚ)
  supportValue := (8865508037343827 / 10000000000000000 : ℚ)
  supportSlope := (-2005125698069321 / 250000000000000 : ℚ)
  oldCenter := (8865508037343827 / 10000000000000000 : ℚ)
  oldLo := (88600000000000001 / 100000000000000000 : ℚ)
  oldHi := (88700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2031, piece_2032]
}

def cell_7364 : Cell := { cellDefaults with
  domain := ⟨(26600000000000001 / 100000000000000000 : ℚ), (26606250000000001 / 100000000000000000 : ℚ)⟩
  r := (21279765236861 / 25000000000000 : ℚ)
  w := (9094622560783 / 5000000000000 : ℚ)
  center := (26603125000000001 / 100000000000000000 : ℚ)
  supportValue := (8879862148300963 / 10000000000000000 : ℚ)
  supportSlope := (-8034357853084373 / 1000000000000000 : ℚ)
  oldCenter := (8879862148300963 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_679
  oldLo := (88750000000000007 / 100000000000000000 : ℚ)
  oldHi := (88850000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2034, piece_2035]
}

def cell_7365 : Cell := { cellDefaults with
  domain := ⟨(26606250000000001 / 100000000000000000 : ℚ), (26612500000000001 / 100000000000000000 : ℚ)⟩
  r := (21279765236861 / 25000000000000 : ℚ)
  w := (9094622560783 / 5000000000000 : ℚ)
  center := (26609375000000001 / 100000000000000000 : ℚ)
  supportValue := (8874842935827263 / 10000000000000000 : ℚ)
  supportSlope := (-802710273236329 / 100000000000000 : ℚ)
  oldCenter := (8874842935827263 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_679
  oldLo := (88700000000000001 / 100000000000000000 : ℚ)
  oldHi := (88800000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2033, piece_2034]
}

def cell_7366 : Cell := { cellDefaults with
  domain := ⟨(26612500000000001 / 100000000000000000 : ℚ), (26618750000000001 / 100000000000000000 : ℚ)⟩
  r := (21279765236861 / 25000000000000 : ℚ)
  w := (9094622560783 / 5000000000000 : ℚ)
  center := (26615625000000001 / 100000000000000000 : ℚ)
  supportValue := (2217457064090437 / 2500000000000000 : ℚ)
  supportSlope := (-200496338131817 / 25000000000000 : ℚ)
  oldCenter := (2217457064090437 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_679
  oldLo := (88650000000000007 / 100000000000000000 : ℚ)
  oldHi := (88750000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2032, piece_2033]
}

def cell_7367 : Cell := { cellDefaults with
  domain := ⟨(26618750000000001 / 100000000000000000 : ℚ), (26625000000000001 / 100000000000000000 : ℚ)⟩
  r := (21279765236861 / 25000000000000 : ℚ)
  w := (9094622560783 / 5000000000000 : ℚ)
  center := (26621875000000001 / 100000000000000000 : ℚ)
  supportValue := (4432409053101131 / 5000000000000000 : ℚ)
  supportSlope := (-4006305121704301 / 500000000000000 : ℚ)
  oldCenter := (4432409053101131 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_679
  oldLo := (88600000000000001 / 100000000000000000 : ℚ)
  oldHi := (88700000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2031, piece_2032]
}

def cell_7368 : Cell := { cellDefaults with
  domain := ⟨(26625000000000001 / 100000000000000000 : ℚ), (26631250000000001 / 100000000000000000 : ℚ)⟩
  r := (21279765236861 / 25000000000000 : ℚ)
  w := (9094622560783 / 5000000000000 : ℚ)
  center := (26628125000000001 / 100000000000000000 : ℚ)
  supportValue := (553738280103111 / 625000000000000 : ℚ)
  supportSlope := (-4002686440024661 / 500000000000000 : ℚ)
  oldCenter := (553738280103111 / 625000000000000 : ℚ)
  newCoefficients := coefficients_679
  oldLo := (44275000000000003 / 50000000000000000 : ℚ)
  oldHi := (88650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2030, piece_2031]
}

def cell_7369 : Cell := { cellDefaults with
  domain := ⟨(26631250000000001 / 100000000000000000 : ℚ), (26637500000000001 / 100000000000000000 : ℚ)⟩
  r := (21279765236861 / 25000000000000 : ℚ)
  w := (9094622560783 / 5000000000000 : ℚ)
  center := (26634375000000001 / 100000000000000000 : ℚ)
  supportValue := (1106851422375611 / 1250000000000000 : ℚ)
  supportSlope := (-15996282886774793 / 2000000000000000 : ℚ)
  oldCenter := (1106851422375611 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_679
  oldLo := (88500000000000001 / 100000000000000000 : ℚ)
  oldHi := (88600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2029, piece_2030]
}

def cell_7370 : Cell := { cellDefaults with
  domain := ⟨(26637500000000001 / 100000000000000000 : ℚ), (26643750000000001 / 100000000000000000 : ℚ)⟩
  r := (21279765236861 / 25000000000000 : ℚ)
  w := (9094622560783 / 5000000000000 : ℚ)
  center := (26640625000000001 / 100000000000000000 : ℚ)
  supportValue := (4424907397285179 / 5000000000000000 : ℚ)
  supportSlope := (-7990915921698871 / 1000000000000000 : ℚ)
  oldCenter := (4424907397285179 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_679
  oldLo := (44225000000000003 / 50000000000000000 : ℚ)
  oldHi := (44275000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2028, piece_2029]
}

def cell_7371 : Cell := { cellDefaults with
  domain := ⟨(26643750000000001 / 100000000000000000 : ℚ), (26650000000000001 / 100000000000000000 : ℚ)⟩
  r := (21279765236861 / 25000000000000 : ℚ)
  w := (9094622560783 / 5000000000000 : ℚ)
  center := (26646875000000001 / 100000000000000000 : ℚ)
  supportValue := (8844822724649989 / 10000000000000000 : ℚ)
  supportSlope := (-3991848159 / 500000000 : ℚ)
  oldCenter := (8844822724649989 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_679
  oldLo := (88400000000000001 / 100000000000000000 : ℚ)
  oldHi := (88500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2027, piece_2028]
}

def cell_7372 : Cell := { cellDefaults with
  domain := ⟨(26650000000000001 / 100000000000000000 : ℚ), (213250000000000009 / 800000000000000000 : ℚ)⟩
  r := (85045958575949 / 100000000000000 : ℚ)
  w := (18177251071563 / 10000000000000 : ℚ)
  center := (426450000000000017 / 1600000000000000000 : ℚ)
  supportValue := (4429559385624401 / 5000000000000000 : ℚ)
  supportSlope := (-999685110935713 / 125000000000000 : ℚ)
  oldCenter := (4429559385624401 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_680
  oldLo := (44275000000000003 / 50000000000000000 : ℚ)
  oldHi := (88650000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_2030, piece_2031]
}

def cell_7373 : Cell := { cellDefaults with
  domain := ⟨(213250000000000009 / 800000000000000000 : ℚ), (21330000000000001 / 80000000000000000 : ℚ)⟩
  r := (85045958575949 / 100000000000000 : ℚ)
  w := (18177251071563 / 10000000000000 : ℚ)
  center := (426550000000000019 / 1600000000000000000 : ℚ)
  supportValue := (8854122593442891 / 10000000000000000 : ℚ)
  supportSlope := (-124848045522927 / 15625000000000 : ℚ)
  oldCenter := (8854122593442891 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_680
  oldLo := (88500000000000001 / 100000000000000000 : ℚ)
  oldHi := (88600000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2029, piece_2030]
}

def cell_7374 : Cell := { cellDefaults with
  domain := ⟨(21330000000000001 / 80000000000000000 : ℚ), (213350000000000011 / 800000000000000000 : ℚ)⟩
  r := (85045958575949 / 100000000000000 : ℚ)
  w := (18177251071563 / 10000000000000 : ℚ)
  center := (426650000000000021 / 1600000000000000000 : ℚ)
  supportValue := (8849130917942973 / 10000000000000000 : ℚ)
  supportSlope := (-3991537412947031 / 500000000000000 : ℚ)
  oldCenter := (8849130917942973 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_680
  oldLo := (44225000000000003 / 50000000000000000 : ℚ)
  oldHi := (44275000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2028, piece_2029]
}

def cell_7375 : Cell := { cellDefaults with
  domain := ⟨(213350000000000011 / 800000000000000000 : ℚ), (53350000000000003 / 200000000000000000 : ℚ)⟩
  r := (85045958575949 / 100000000000000 : ℚ)
  w := (18177251071563 / 10000000000000 : ℚ)
  center := (426750000000000023 / 1600000000000000000 : ℚ)
  supportValue := (8844143741070681 / 10000000000000000 : ℚ)
  supportSlope := (-3987940313791603 / 500000000000000 : ℚ)
  oldCenter := (8844143741070681 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_680
  oldLo := (88400000000000001 / 100000000000000000 : ℚ)
  oldHi := (88500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2027, piece_2028]
}

def cell_7376 : Cell := { cellDefaults with
  domain := ⟨(53350000000000003 / 200000000000000000 : ℚ), (213450000000000013 / 800000000000000000 : ℚ)⟩
  r := (85045958575949 / 100000000000000 : ℚ)
  w := (18177251071563 / 10000000000000 : ℚ)
  center := (17074000000000001 / 64000000000000000 : ℚ)
  supportValue := (220979026478647 / 250000000000000 : ℚ)
  supportSlope := (-1992173087612197 / 250000000000000 : ℚ)
  oldCenter := (220979026478647 / 250000000000000 : ℚ)
  newCoefficients := coefficients_680
  oldLo := (44175000000000003 / 50000000000000000 : ℚ)
  oldHi := (44225000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2025, piece_2026, piece_2027]
}

def cell_7377 : Cell := { cellDefaults with
  domain := ⟨(213450000000000013 / 800000000000000000 : ℚ), (106750000000000007 / 400000000000000000 : ℚ)⟩
  r := (85045958575949 / 100000000000000 : ℚ)
  w := (18177251071563 / 10000000000000 : ℚ)
  center := (426950000000000027 / 1600000000000000000 : ℚ)
  supportValue := (441709143423097 / 500000000000000 : ℚ)
  supportSlope := (-3980754963091391 / 500000000000000 : ℚ)
  oldCenter := (441709143423097 / 500000000000000 : ℚ)
  newCoefficients := coefficients_680
  oldLo := (88300000000000001 / 100000000000000000 : ℚ)
  oldHi := (8838547486033519 / 10000000000000000 : ℚ)
  oldPieces := [piece_2024, piece_2025]
}

def cell_7378 : Cell := { cellDefaults with
  domain := ⟨(106750000000000007 / 400000000000000000 : ℚ), (42710000000000003 / 160000000000000000 : ℚ)⟩
  r := (85045958575949 / 100000000000000 : ℚ)
  w := (18177251071563 / 10000000000000 : ℚ)
  center := (427050000000000029 / 1600000000000000000 : ℚ)
  supportValue := (1103651145677171 / 1250000000000000 : ℚ)
  supportSlope := (-7954333301462509 / 1000000000000000 : ℚ)
  oldCenter := (1103651145677171 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_680
  oldLo := (44125000000000003 / 50000000000000000 : ℚ)
  oldHi := (44175000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2023, piece_2024]
}

def cell_7379 : Cell := { cellDefaults with
  domain := ⟨(42710000000000003 / 160000000000000000 : ℚ), (13350000000000001 / 50000000000000000 : ℚ)⟩
  r := (85045958575949 / 100000000000000 : ℚ)
  w := (18177251071563 / 10000000000000 : ℚ)
  center := (427150000000000031 / 1600000000000000000 : ℚ)
  supportValue := (2206059986583583 / 2500000000000000 : ℚ)
  supportSlope := (-7947162583306363 / 1000000000000000 : ℚ)
  oldCenter := (2206059986583583 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_680
  oldLo := (88200000000000001 / 100000000000000000 : ℚ)
  oldHi := (88300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2022, piece_2023]
}

def cell_7380 : Cell := { cellDefaults with
  domain := ⟨(13350000000000001 / 50000000000000000 : ℚ), (13353125000000001 / 50000000000000000 : ℚ)⟩
  r := (84973036478787 / 100000000000000 : ℚ)
  w := (18165284267381 / 10000000000000 : ℚ)
  center := (13351562500000001 / 50000000000000000 : ℚ)
  supportValue := (8838477618390409 / 10000000000000000 : ℚ)
  supportSlope := (-3980436515071517 / 500000000000000 : ℚ)
  oldCenter := (8838477618390409 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_681
  oldLo := (44175000000000003 / 50000000000000000 : ℚ)
  oldHi := (44225000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2025, piece_2026, piece_2027]
}

def cell_7381 : Cell := { cellDefaults with
  domain := ⟨(13353125000000001 / 50000000000000000 : ℚ), (13356250000000001 / 50000000000000000 : ℚ)⟩
  r := (84973036478787 / 100000000000000 : ℚ)
  w := (18165284267381 / 10000000000000 : ℚ)
  center := (13354687500000001 / 50000000000000000 : ℚ)
  supportValue := (176670086139727 / 200000000000000 : ℚ)
  supportSlope := (-3976858252766391 / 500000000000000 : ℚ)
  oldCenter := (176670086139727 / 200000000000000 : ℚ)
  newCoefficients := coefficients_681
  oldLo := (88300000000000001 / 100000000000000000 : ℚ)
  oldHi := (8838547486033519 / 10000000000000000 : ℚ)
  oldPieces := [piece_2024, piece_2025]
}

def cell_7382 : Cell := { cellDefaults with
  domain := ⟨(13356250000000001 / 50000000000000000 : ℚ), (13359375000000001 / 50000000000000000 : ℚ)⟩
  r := (84973036478787 / 100000000000000 : ℚ)
  w := (18165284267381 / 10000000000000 : ℚ)
  center := (13357812500000001 / 50000000000000000 : ℚ)
  supportValue := (8828535467042573 / 10000000000000000 : ℚ)
  supportSlope := (-7946565772716241 / 1000000000000000 : ℚ)
  oldCenter := (8828535467042573 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_681
  oldLo := (44125000000000003 / 50000000000000000 : ℚ)
  oldHi := (44175000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2023, piece_2024]
}

def cell_7383 : Cell := { cellDefaults with
  domain := ⟨(13359375000000001 / 50000000000000000 : ℚ), (13362500000000001 / 50000000000000000 : ℚ)⟩
  r := (84973036478787 / 100000000000000 : ℚ)
  w := (18165284267381 / 10000000000000 : ℚ)
  center := (13360937500000001 / 50000000000000000 : ℚ)
  supportValue := (8823571094886621 / 10000000000000000 : ℚ)
  supportSlope := (-7939420906652117 / 1000000000000000 : ℚ)
  oldCenter := (8823571094886621 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_681
  oldLo := (88200000000000001 / 100000000000000000 : ℚ)
  oldHi := (88300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2022, piece_2023]
}

def cell_7384 : Cell := { cellDefaults with
  domain := ⟨(13362500000000001 / 50000000000000000 : ℚ), (13365625000000001 / 50000000000000000 : ℚ)⟩
  r := (84973036478787 / 100000000000000 : ℚ)
  w := (18165284267381 / 10000000000000 : ℚ)
  center := (13364062500000001 / 50000000000000000 : ℚ)
  supportValue := (8818611186887721 / 10000000000000000 : ℚ)
  supportSlope := (-7932281841434019 / 1000000000000000 : ℚ)
  oldCenter := (8818611186887721 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_681
  oldLo := (44075000000000003 / 50000000000000000 : ℚ)
  oldHi := (44125000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2021, piece_2022]
}

def cell_7385 : Cell := { cellDefaults with
  domain := ⟨(13365625000000001 / 50000000000000000 : ℚ), (13368750000000001 / 50000000000000000 : ℚ)⟩
  r := (84973036478787 / 100000000000000 : ℚ)
  w := (18165284267381 / 10000000000000 : ℚ)
  center := (13367187500000001 / 50000000000000000 : ℚ)
  supportValue := (8813655739420363 / 10000000000000000 : ℚ)
  supportSlope := (-7925148579282393 / 1000000000000000 : ℚ)
  oldCenter := (8813655739420363 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_681
  oldLo := (88100000000000001 / 100000000000000000 : ℚ)
  oldHi := (88200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2020, piece_2021]
}

def cell_7386 : Cell := { cellDefaults with
  domain := ⟨(13368750000000001 / 50000000000000000 : ℚ), (13371875000000001 / 50000000000000000 : ℚ)⟩
  r := (84973036478787 / 100000000000000 : ℚ)
  w := (18165284267381 / 10000000000000 : ℚ)
  center := (13370312500000001 / 50000000000000000 : ℚ)
  supportValue := (8808704748860249 / 10000000000000000 : ℚ)
  supportSlope := (-3959010559540843 / 500000000000000 : ℚ)
  oldCenter := (8808704748860249 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_681
  oldLo := (44025000000000003 / 50000000000000000 : ℚ)
  oldHi := (44075000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2019, piece_2020]
}

def cell_7387 : Cell := { cellDefaults with
  domain := ⟨(13371875000000001 / 50000000000000000 : ℚ), (13375000000000001 / 50000000000000000 : ℚ)⟩
  r := (84973036478787 / 100000000000000 : ℚ)
  w := (18165284267381 / 10000000000000 : ℚ)
  center := (13373437500000001 / 50000000000000000 : ℚ)
  supportValue := (550234888224013 / 625000000000000 : ℚ)
  supportSlope := (-1582179891843083 / 200000000000000 : ℚ)
  oldCenter := (550234888224013 / 625000000000000 : ℚ)
  newCoefficients := coefficients_681
  oldLo := (22 / 25 : ℚ)
  oldHi := (88100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2018, piece_2019]
}

def cell_7388 : Cell := { cellDefaults with
  domain := ⟨(13375000000000001 / 50000000000000000 : ℚ), (13378125000000001 / 50000000000000000 : ℚ)⟩
  r := (21225073411607 / 25000000000000 : ℚ)
  w := (18153344456767 / 10000000000000 : ℚ)
  center := (13376562500000001 / 50000000000000000 : ℚ)
  supportValue := (4408968990336193 / 5000000000000000 : ℚ)
  supportSlope := (-3962266966054173 / 500000000000000 : ℚ)
  oldCenter := (4408968990336193 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_682
  oldLo := (44075000000000003 / 50000000000000000 : ℚ)
  oldHi := (44125000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2021, piece_2022]
}

def cell_7389 : Cell := { cellDefaults with
  domain := ⟨(13378125000000001 / 50000000000000000 : ℚ), (13381250000000001 / 50000000000000000 : ℚ)⟩
  r := (21225073411607 / 25000000000000 : ℚ)
  w := (18153344456767 / 10000000000000 : ℚ)
  center := (13379687500000001 / 50000000000000000 : ℚ)
  supportValue := (8812987367823429 / 10000000000000000 : ℚ)
  supportSlope := (-79174266691453 / 10000000000000 : ℚ)
  oldCenter := (8812987367823429 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_682
  oldLo := (88100000000000001 / 100000000000000000 : ℚ)
  oldHi := (88200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2020, piece_2021]
}

def cell_7390 : Cell := { cellDefaults with
  domain := ⟨(13381250000000001 / 50000000000000000 : ℚ), (13384375000000001 / 50000000000000000 : ℚ)⟩
  r := (21225073411607 / 25000000000000 : ℚ)
  w := (18153344456767 / 10000000000000 : ℚ)
  center := (13382812500000001 / 50000000000000000 : ℚ)
  supportValue := (1101005149455247 / 1250000000000000 : ℚ)
  supportSlope := (-1582065035764657 / 200000000000000 : ℚ)
  oldCenter := (1101005149455247 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_682
  oldLo := (44025000000000003 / 50000000000000000 : ℚ)
  oldHi := (44075000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2019, piece_2020]
}

def cell_7391 : Cell := { cellDefaults with
  domain := ⟨(13384375000000001 / 50000000000000000 : ℚ), (13387500000000001 / 50000000000000000 : ℚ)⟩
  r := (21225073411607 / 25000000000000 : ℚ)
  w := (18153344456767 / 10000000000000 : ℚ)
  center := (13385937500000001 / 50000000000000000 : ℚ)
  supportValue := (8803099460523237 / 10000000000000000 : ℚ)
  supportSlope := (-7903229459582661 / 1000000000000000 : ℚ)
  oldCenter := (8803099460523237 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_682
  oldLo := (22 / 25 : ℚ)
  oldHi := (88100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_2018, piece_2019]
}

def cell_7392 : Cell := { cellDefaults with
  domain := ⟨(13387500000000001 / 50000000000000000 : ℚ), (13390625000000001 / 50000000000000000 : ℚ)⟩
  r := (21225073411607 / 25000000000000 : ℚ)
  w := (18153344456767 / 10000000000000 : ℚ)
  center := (13389062500000001 / 50000000000000000 : ℚ)
  supportValue := (1759632431763509 / 2000000000000000 : ℚ)
  supportSlope := (-1579227934887939 / 200000000000000 : ℚ)
  oldCenter := (1759632431763509 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_682
  oldLo := (43975000000000003 / 50000000000000000 : ℚ)
  oldHi := (44025000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2017, piece_2018]
}

def cell_7393 : Cell := { cellDefaults with
  domain := ⟨(13390625000000001 / 50000000000000000 : ℚ), (13393750000000001 / 50000000000000000 : ℚ)⟩
  r := (21225073411607 / 25000000000000 : ℚ)
  w := (18153344456767 / 10000000000000 : ℚ)
  center := (13392187500000001 / 50000000000000000 : ℚ)
  supportValue := (2198307321724653 / 2500000000000000 : ℚ)
  supportSlope := (-7889055505870601 / 1000000000000000 : ℚ)
  oldCenter := (2198307321724653 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_682
  oldLo := (879 / 1000 : ℚ)
  oldPieces := [piece_2016, piece_2017]
}

def cell_7394 : Cell := { cellDefaults with
  domain := ⟨(13393750000000001 / 50000000000000000 : ℚ), (13396875000000001 / 50000000000000000 : ℚ)⟩
  r := (21225073411607 / 25000000000000 : ℚ)
  w := (18153344456767 / 10000000000000 : ℚ)
  center := (13395312500000001 / 50000000000000000 : ℚ)
  supportValue := (109853760515477 / 125000000000000 : ℚ)
  supportSlope := (-15763954159581317 / 2000000000000000 : ℚ)
  oldCenter := (109853760515477 / 125000000000000 : ℚ)
  newCoefficients := coefficients_682
  oldLo := (43925000000000003 / 50000000000000000 : ℚ)
  oldHi := (43975000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2015, piece_2016]
}

def cell_7395 : Cell := { cellDefaults with
  domain := ⟨(13396875000000001 / 50000000000000000 : ℚ), (13400000000000001 / 50000000000000000 : ℚ)⟩
  r := (21225073411607 / 25000000000000 : ℚ)
  w := (18153344456767 / 10000000000000 : ℚ)
  center := (13398437500000001 / 50000000000000000 : ℚ)
  supportValue := (274480525569947 / 312500000000000 : ℚ)
  supportSlope := (-7874904397866089 / 1000000000000000 : ℚ)
  oldCenter := (274480525569947 / 312500000000000 : ℚ)
  newCoefficients := coefficients_682
  oldLo := (439 / 500 : ℚ)
  oldHi := (879 / 1000 : ℚ)
  oldPieces := [piece_2013, piece_2014, piece_2015]
}

def cell_7396 : Cell := { cellDefaults with
  domain := ⟨(13400000000000001 / 50000000000000000 : ℚ), (13403125000000001 / 50000000000000000 : ℚ)⟩
  r := (84827728195383 / 100000000000000 : ℚ)
  w := (9070715675451 / 5000000000000 : ℚ)
  center := (13401562500000001 / 50000000000000000 : ℚ)
  supportValue := (8797499315918507 / 10000000000000000 : ℚ)
  supportSlope := (-98605804256513 / 12500000000000 : ℚ)
  oldCenter := (8797499315918507 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_683
  oldLo := (43975000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2017]
}

def cell_7397 : Cell := { cellDefaults with
  domain := ⟨(13403125000000001 / 50000000000000000 : ℚ), (13406250000000001 / 50000000000000000 : ℚ)⟩
  r := (84827728195383 / 100000000000000 : ℚ)
  w := (9070715675451 / 5000000000000 : ℚ)
  center := (13404687500000001 / 50000000000000000 : ℚ)
  supportValue := (1758514245486657 / 2000000000000000 : ℚ)
  supportSlope := (-3940705993894511 / 500000000000000 : ℚ)
  oldCenter := (1758514245486657 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_683
  oldLo := (879 / 1000 : ℚ)
  oldPieces := [piece_2016, piece_2017]
}

def cell_7398 : Cell := { cellDefaults with
  domain := ⟨(13406250000000001 / 50000000000000000 : ℚ), (13409375000000001 / 50000000000000000 : ℚ)⟩
  r := (84827728195383 / 100000000000000 : ℚ)
  w := (9070715675451 / 5000000000000 : ℚ)
  center := (13407812500000001 / 50000000000000000 : ℚ)
  supportValue := (2196911888337043 / 2500000000000000 : ℚ)
  supportSlope := (-1574870504705217 / 200000000000000 : ℚ)
  oldCenter := (2196911888337043 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_683
  oldLo := (43925000000000003 / 50000000000000000 : ℚ)
  oldHi := (43975000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2015, piece_2016]
}

def cell_7399 : Cell := { cellDefaults with
  domain := ⟨(13409375000000001 / 50000000000000000 : ℚ), (13412500000000001 / 50000000000000000 : ℚ)⟩
  r := (84827728195383 / 100000000000000 : ℚ)
  w := (9070715675451 / 5000000000000 : ℚ)
  center := (13410937500000001 / 50000000000000000 : ℚ)
  supportValue := (219568207252061 / 250000000000000 : ℚ)
  supportSlope := (-3146919510986379 / 400000000000000 : ℚ)
  oldCenter := (219568207252061 / 250000000000000 : ℚ)
  newCoefficients := coefficients_683
  oldLo := (439 / 500 : ℚ)
  oldHi := (879 / 1000 : ℚ)
  oldPieces := [piece_2013, piece_2014, piece_2015]
}

theorem check_7350 : cell_7350.check = true := by
  decide +kernel

theorem check_7351 : cell_7351.check = true := by
  decide +kernel

theorem check_7352 : cell_7352.check = true := by
  decide +kernel

theorem check_7353 : cell_7353.check = true := by
  decide +kernel

theorem check_7354 : cell_7354.check = true := by
  decide +kernel

theorem check_7355 : cell_7355.check = true := by
  decide +kernel

theorem check_7356 : cell_7356.check = true := by
  decide +kernel

theorem check_7357 : cell_7357.check = true := by
  decide +kernel

theorem check_7358 : cell_7358.check = true := by
  decide +kernel

theorem check_7359 : cell_7359.check = true := by
  decide +kernel

theorem check_7360 : cell_7360.check = true := by
  decide +kernel

theorem check_7361 : cell_7361.check = true := by
  decide +kernel

theorem check_7362 : cell_7362.check = true := by
  decide +kernel

theorem check_7363 : cell_7363.check = true := by
  decide +kernel

theorem check_7364 : cell_7364.check = true := by
  decide +kernel

theorem check_7365 : cell_7365.check = true := by
  decide +kernel

theorem check_7366 : cell_7366.check = true := by
  decide +kernel

theorem check_7367 : cell_7367.check = true := by
  decide +kernel

theorem check_7368 : cell_7368.check = true := by
  decide +kernel

theorem check_7369 : cell_7369.check = true := by
  decide +kernel

theorem check_7370 : cell_7370.check = true := by
  decide +kernel

theorem check_7371 : cell_7371.check = true := by
  decide +kernel

theorem check_7372 : cell_7372.check = true := by
  decide +kernel

theorem check_7373 : cell_7373.check = true := by
  decide +kernel

theorem check_7374 : cell_7374.check = true := by
  decide +kernel

theorem check_7375 : cell_7375.check = true := by
  decide +kernel

theorem check_7376 : cell_7376.check = true := by
  decide +kernel

theorem check_7377 : cell_7377.check = true := by
  decide +kernel

theorem check_7378 : cell_7378.check = true := by
  decide +kernel

theorem check_7379 : cell_7379.check = true := by
  decide +kernel

theorem check_7380 : cell_7380.check = true := by
  decide +kernel

theorem check_7381 : cell_7381.check = true := by
  decide +kernel

theorem check_7382 : cell_7382.check = true := by
  decide +kernel

theorem check_7383 : cell_7383.check = true := by
  decide +kernel

theorem check_7384 : cell_7384.check = true := by
  decide +kernel

theorem check_7385 : cell_7385.check = true := by
  decide +kernel

theorem check_7386 : cell_7386.check = true := by
  decide +kernel

theorem check_7387 : cell_7387.check = true := by
  decide +kernel

theorem check_7388 : cell_7388.check = true := by
  decide +kernel

theorem check_7389 : cell_7389.check = true := by
  decide +kernel

theorem check_7390 : cell_7390.check = true := by
  decide +kernel

theorem check_7391 : cell_7391.check = true := by
  decide +kernel

theorem check_7392 : cell_7392.check = true := by
  decide +kernel

theorem check_7393 : cell_7393.check = true := by
  decide +kernel

theorem check_7394 : cell_7394.check = true := by
  decide +kernel

theorem check_7395 : cell_7395.check = true := by
  decide +kernel

theorem check_7396 : cell_7396.check = true := by
  decide +kernel

theorem check_7397 : cell_7397.check = true := by
  decide +kernel

theorem check_7398 : cell_7398.check = true := by
  decide +kernel

theorem check_7399 : cell_7399.check = true := by
  decide +kernel

def cells : List Cell := [cell_7350, cell_7351, cell_7352, cell_7353, cell_7354, cell_7355, cell_7356, cell_7357, cell_7358, cell_7359, cell_7360, cell_7361, cell_7362, cell_7363, cell_7364, cell_7365, cell_7366, cell_7367, cell_7368, cell_7369, cell_7370, cell_7371, cell_7372, cell_7373, cell_7374, cell_7375, cell_7376, cell_7377, cell_7378, cell_7379, cell_7380, cell_7381, cell_7382, cell_7383, cell_7384, cell_7385, cell_7386, cell_7387, cell_7388, cell_7389, cell_7390, cell_7391, cell_7392, cell_7393, cell_7394, cell_7395, cell_7396, cell_7397, cell_7398, cell_7399]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7350, check_7351, check_7352, check_7353, check_7354, check_7355, check_7356, check_7357, check_7358, check_7359, check_7360, check_7361, check_7362, check_7363, check_7364, check_7365, check_7366, check_7367, check_7368, check_7369, check_7370, check_7371, check_7372, check_7373, check_7374, check_7375, check_7376, check_7377, check_7378, check_7379, check_7380, check_7381, check_7382, check_7383, check_7384, check_7385, check_7386, check_7387, check_7388, check_7389, check_7390, check_7391, check_7392, check_7393, check_7394, check_7395, check_7396, check_7397, check_7398, check_7399, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0147

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0147
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0147
open AnalyticBounds.ExpressionCertificate

theorem linked_7350 : Linked cell_7350 pieces := by
  link_source cell_7350 with piece_677 using piece_677_mem, ⟨piece_2041_mem, piece_2042_mem⟩

theorem linked_7351 : Linked cell_7351 pieces := by
  link_source cell_7351 with piece_677 using piece_677_mem, ⟨piece_2040_mem, piece_2041_mem⟩

theorem linked_7352 : Linked cell_7352 pieces := by
  link_source cell_7352 with piece_677 using piece_677_mem, ⟨piece_2039_mem, piece_2040_mem⟩

theorem linked_7353 : Linked cell_7353 pieces := by
  link_source cell_7353 with piece_677 using piece_677_mem, ⟨piece_2037_mem, ⟨piece_2038_mem, piece_2039_mem⟩⟩

theorem linked_7354 : Linked cell_7354 pieces := by
  link_source cell_7354 with piece_677 using piece_677_mem, ⟨piece_2036_mem, piece_2037_mem⟩

theorem linked_7355 : Linked cell_7355 pieces := by
  link_source cell_7355 with piece_677 using piece_677_mem, ⟨piece_2035_mem, piece_2036_mem⟩

theorem linked_7356 : Linked cell_7356 pieces := by
  link_source cell_7356 with piece_678 using piece_678_mem, ⟨piece_2039_mem, piece_2040_mem⟩

theorem linked_7357 : Linked cell_7357 pieces := by
  link_source cell_7357 with piece_678 using piece_678_mem, ⟨piece_2037_mem, ⟨piece_2038_mem, piece_2039_mem⟩⟩

theorem linked_7358 : Linked cell_7358 pieces := by
  link_source cell_7358 with piece_678 using piece_678_mem, ⟨piece_2036_mem, piece_2037_mem⟩

theorem linked_7359 : Linked cell_7359 pieces := by
  link_source cell_7359 with piece_678 using piece_678_mem, ⟨piece_2035_mem, piece_2036_mem⟩

theorem linked_7360 : Linked cell_7360 pieces := by
  link_source cell_7360 with piece_678 using piece_678_mem, ⟨piece_2034_mem, piece_2035_mem⟩

theorem linked_7361 : Linked cell_7361 pieces := by
  link_source cell_7361 with piece_678 using piece_678_mem, ⟨piece_2033_mem, piece_2034_mem⟩

theorem linked_7362 : Linked cell_7362 pieces := by
  link_source cell_7362 with piece_678 using piece_678_mem, ⟨piece_2032_mem, piece_2033_mem⟩

theorem linked_7363 : Linked cell_7363 pieces := by
  link_source cell_7363 with piece_678 using piece_678_mem, ⟨piece_2031_mem, piece_2032_mem⟩

theorem linked_7364 : Linked cell_7364 pieces := by
  link_source cell_7364 with piece_679 using piece_679_mem, ⟨piece_2034_mem, piece_2035_mem⟩

theorem linked_7365 : Linked cell_7365 pieces := by
  link_source cell_7365 with piece_679 using piece_679_mem, ⟨piece_2033_mem, piece_2034_mem⟩

theorem linked_7366 : Linked cell_7366 pieces := by
  link_source cell_7366 with piece_679 using piece_679_mem, ⟨piece_2032_mem, piece_2033_mem⟩

theorem linked_7367 : Linked cell_7367 pieces := by
  link_source cell_7367 with piece_679 using piece_679_mem, ⟨piece_2031_mem, piece_2032_mem⟩

theorem linked_7368 : Linked cell_7368 pieces := by
  link_source cell_7368 with piece_679 using piece_679_mem, ⟨piece_2030_mem, piece_2031_mem⟩

theorem linked_7369 : Linked cell_7369 pieces := by
  link_source cell_7369 with piece_679 using piece_679_mem, ⟨piece_2029_mem, piece_2030_mem⟩

theorem linked_7370 : Linked cell_7370 pieces := by
  link_source cell_7370 with piece_679 using piece_679_mem, ⟨piece_2028_mem, piece_2029_mem⟩

theorem linked_7371 : Linked cell_7371 pieces := by
  link_source cell_7371 with piece_679 using piece_679_mem, ⟨piece_2027_mem, piece_2028_mem⟩

theorem linked_7372 : Linked cell_7372 pieces := by
  link_source cell_7372 with piece_680 using piece_680_mem, ⟨piece_2030_mem, piece_2031_mem⟩

theorem linked_7373 : Linked cell_7373 pieces := by
  link_source cell_7373 with piece_680 using piece_680_mem, ⟨piece_2029_mem, piece_2030_mem⟩

theorem linked_7374 : Linked cell_7374 pieces := by
  link_source cell_7374 with piece_680 using piece_680_mem, ⟨piece_2028_mem, piece_2029_mem⟩

theorem linked_7375 : Linked cell_7375 pieces := by
  link_source cell_7375 with piece_680 using piece_680_mem, ⟨piece_2027_mem, piece_2028_mem⟩

theorem linked_7376 : Linked cell_7376 pieces := by
  link_source cell_7376 with piece_680 using piece_680_mem, ⟨piece_2025_mem, ⟨piece_2026_mem, piece_2027_mem⟩⟩

theorem linked_7377 : Linked cell_7377 pieces := by
  link_source cell_7377 with piece_680 using piece_680_mem, ⟨piece_2024_mem, piece_2025_mem⟩

theorem linked_7378 : Linked cell_7378 pieces := by
  link_source cell_7378 with piece_680 using piece_680_mem, ⟨piece_2023_mem, piece_2024_mem⟩

theorem linked_7379 : Linked cell_7379 pieces := by
  link_source cell_7379 with piece_680 using piece_680_mem, ⟨piece_2022_mem, piece_2023_mem⟩

theorem linked_7380 : Linked cell_7380 pieces := by
  link_source cell_7380 with piece_681 using piece_681_mem, ⟨piece_2025_mem, ⟨piece_2026_mem, piece_2027_mem⟩⟩

theorem linked_7381 : Linked cell_7381 pieces := by
  link_source cell_7381 with piece_681 using piece_681_mem, ⟨piece_2024_mem, piece_2025_mem⟩

theorem linked_7382 : Linked cell_7382 pieces := by
  link_source cell_7382 with piece_681 using piece_681_mem, ⟨piece_2023_mem, piece_2024_mem⟩

theorem linked_7383 : Linked cell_7383 pieces := by
  link_source cell_7383 with piece_681 using piece_681_mem, ⟨piece_2022_mem, piece_2023_mem⟩

theorem linked_7384 : Linked cell_7384 pieces := by
  link_source cell_7384 with piece_681 using piece_681_mem, ⟨piece_2021_mem, piece_2022_mem⟩

theorem linked_7385 : Linked cell_7385 pieces := by
  link_source cell_7385 with piece_681 using piece_681_mem, ⟨piece_2020_mem, piece_2021_mem⟩

theorem linked_7386 : Linked cell_7386 pieces := by
  link_source cell_7386 with piece_681 using piece_681_mem, ⟨piece_2019_mem, piece_2020_mem⟩

theorem linked_7387 : Linked cell_7387 pieces := by
  link_source cell_7387 with piece_681 using piece_681_mem, ⟨piece_2018_mem, piece_2019_mem⟩

theorem linked_7388 : Linked cell_7388 pieces := by
  link_source cell_7388 with piece_682 using piece_682_mem, ⟨piece_2021_mem, piece_2022_mem⟩

theorem linked_7389 : Linked cell_7389 pieces := by
  link_source cell_7389 with piece_682 using piece_682_mem, ⟨piece_2020_mem, piece_2021_mem⟩

theorem linked_7390 : Linked cell_7390 pieces := by
  link_source cell_7390 with piece_682 using piece_682_mem, ⟨piece_2019_mem, piece_2020_mem⟩

theorem linked_7391 : Linked cell_7391 pieces := by
  link_source cell_7391 with piece_682 using piece_682_mem, ⟨piece_2018_mem, piece_2019_mem⟩

theorem linked_7392 : Linked cell_7392 pieces := by
  link_source cell_7392 with piece_682 using piece_682_mem, ⟨piece_2017_mem, piece_2018_mem⟩

theorem linked_7393 : Linked cell_7393 pieces := by
  link_source cell_7393 with piece_682 using piece_682_mem, ⟨piece_2016_mem, piece_2017_mem⟩

theorem linked_7394 : Linked cell_7394 pieces := by
  link_source cell_7394 with piece_682 using piece_682_mem, ⟨piece_2015_mem, piece_2016_mem⟩

theorem linked_7395 : Linked cell_7395 pieces := by
  link_source cell_7395 with piece_682 using piece_682_mem, ⟨piece_2013_mem, ⟨piece_2014_mem, piece_2015_mem⟩⟩

theorem linked_7396 : Linked cell_7396 pieces := by
  link_source cell_7396 with piece_683 using piece_683_mem, piece_2017_mem

theorem linked_7397 : Linked cell_7397 pieces := by
  link_source cell_7397 with piece_683 using piece_683_mem, ⟨piece_2016_mem, piece_2017_mem⟩

theorem linked_7398 : Linked cell_7398 pieces := by
  link_source cell_7398 with piece_683 using piece_683_mem, ⟨piece_2015_mem, piece_2016_mem⟩

theorem linked_7399 : Linked cell_7399 pieces := by
  link_source cell_7399 with piece_683 using piece_683_mem, ⟨piece_2013_mem, ⟨piece_2014_mem, piece_2015_mem⟩⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0147.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0147.cells,List.forall_mem_cons]
  exact ⟨linked_7350, linked_7351, linked_7352, linked_7353, linked_7354, linked_7355, linked_7356, linked_7357, linked_7358, linked_7359, linked_7360, linked_7361, linked_7362, linked_7363, linked_7364, linked_7365, linked_7366, linked_7367, linked_7368, linked_7369, linked_7370, linked_7371, linked_7372, linked_7373, linked_7374, linked_7375, linked_7376, linked_7377, linked_7378, linked_7379, linked_7380, linked_7381, linked_7382, linked_7383, linked_7384, linked_7385, linked_7386, linked_7387, linked_7388, linked_7389, linked_7390, linked_7391, linked_7392, linked_7393, linked_7394, linked_7395, linked_7396, linked_7397, linked_7398, linked_7399, by simp⟩

theorem covered : covers (26512500000000001 / 100000000000000000 : ℚ) (13412500000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0147.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0147
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0148
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(13412500000000001 / 50000000000000000 : ℚ), (13415625000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (2115277205093 / 2500000000000 : ℚ)
  w := (2263231985953 / 1250000000000 : ℚ)
  center := (13414062500000001 / 50000000000000000 : ℚ)
  supportValue := (8777813434060313 / 10000000000000000 : ℚ)
  supportSlope := (-786025077862007 / 100000000000000 : ℚ)
  oldCenter := (8777813434060313 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_684
  oldLo := (219 / 250 : ℚ)
  oldHi := (17470000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2011, piece_2012]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7400 : Cell := { cellDefaults with
  r := (84827728195383 / 100000000000000 : ℚ)
  w := (9070715675451 / 5000000000000 : ℚ)
  newCoefficients := coefficients_683
  oldLo := (43875000000000003 / 50000000000000000 : ℚ)
  oldHi := (4391620111731843 / 5000000000000000 : ℚ)
  oldPieces := [piece_2012, piece_2013]
}

def cell_7401 : Cell := { cellDefaults with
  domain := ⟨(13415625000000001 / 50000000000000000 : ℚ), (13418750000000001 / 50000000000000000 : ℚ)⟩
  r := (84827728195383 / 100000000000000 : ℚ)
  w := (9070715675451 / 5000000000000 : ℚ)
  center := (13417187500000001 / 50000000000000000 : ℚ)
  supportValue := (8772902981700261 / 10000000000000000 : ℚ)
  supportSlope := (-7853208485808949 / 1000000000000000 : ℚ)
  oldCenter := (8772902981700261 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_683
  oldLo := (877 / 1000 : ℚ)
  oldHi := (439 / 500 : ℚ)
  oldPieces := [piece_2011, piece_2012]
}

def cell_7402 : Cell := { cellDefaults with
  domain := ⟨(13418750000000001 / 50000000000000000 : ℚ), (13421875000000001 / 50000000000000000 : ℚ)⟩
  r := (84827728195383 / 100000000000000 : ℚ)
  w := (9070715675451 / 5000000000000 : ℚ)
  center := (13420312500000001 / 50000000000000000 : ℚ)
  supportValue := (876799692944859 / 1000000000000000 : ℚ)
  supportSlope := (-7846171881109143 / 1000000000000000 : ℚ)
  oldCenter := (876799692944859 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_683
  oldLo := (43825000000000003 / 50000000000000000 : ℚ)
  oldHi := (43875000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2010, piece_2011]
}

def cell_7403 : Cell := { cellDefaults with
  domain := ⟨(13421875000000001 / 50000000000000000 : ℚ), (13425000000000001 / 50000000000000000 : ℚ)⟩
  r := (84827728195383 / 100000000000000 : ℚ)
  w := (9070715675451 / 5000000000000 : ℚ)
  center := (13423437500000001 / 50000000000000000 : ℚ)
  supportValue := (8763095273754441 / 10000000000000000 : ℚ)
  supportSlope := (-3919570480324097 / 500000000000000 : ℚ)
  oldCenter := (8763095273754441 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_683
  oldHi := (877 / 1000 : ℚ)
  oldPieces := [piece_2009, piece_2010]
}

def cell_7404 : Cell := { cellDefaults with
  domain := ⟨(13425000000000001 / 50000000000000000 : ℚ), (13428125000000001 / 50000000000000000 : ℚ)⟩
  r := (84755340331043 / 100000000000000 : ℚ)
  w := (9064772814761 / 5000000000000 : ℚ)
  center := (13426562500000001 / 50000000000000000 : ℚ)
  supportValue := (8777160247665743 / 10000000000000000 : ℚ)
  supportSlope := (-1963155254445681 / 250000000000000 : ℚ)
  oldCenter := (8777160247665743 / 10000000000000000 : ℚ)
  oldLo := (877 / 1000 : ℚ)
  oldHi := (439 / 500 : ℚ)
  oldPieces := [piece_2011, piece_2012]
}

def cell_7405 : Cell := { cellDefaults with
  domain := ⟨(13428125000000001 / 50000000000000000 : ℚ), (13431250000000001 / 50000000000000000 : ℚ)⟩
  r := (84755340331043 / 100000000000000 : ℚ)
  w := (9064772814761 / 5000000000000 : ℚ)
  center := (13429687500000001 / 50000000000000000 : ℚ)
  supportValue := (8772254538739471 / 10000000000000000 : ℚ)
  supportSlope := (-1961401125641693 / 250000000000000 : ℚ)
  oldCenter := (8772254538739471 / 10000000000000000 : ℚ)
  oldLo := (43825000000000003 / 50000000000000000 : ℚ)
  oldHi := (43875000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2010, piece_2011]
}

def cell_7406 : Cell := { cellDefaults with
  domain := ⟨(13431250000000001 / 50000000000000000 : ℚ), (13434375000000001 / 50000000000000000 : ℚ)⟩
  r := (84755340331043 / 100000000000000 : ℚ)
  w := (9064772814761 / 5000000000000 : ℚ)
  center := (13432812500000001 / 50000000000000000 : ℚ)
  supportValue := (8767353212923419 / 10000000000000000 : ℚ)
  supportSlope := (-7838593636531499 / 1000000000000000 : ℚ)
  oldCenter := (8767353212923419 / 10000000000000000 : ℚ)
  oldHi := (877 / 1000 : ℚ)
  oldPieces := [piece_2009, piece_2010]
}

def cell_7407 : Cell := { cellDefaults with
  domain := ⟨(13434375000000001 / 50000000000000000 : ℚ), (13437500000000001 / 50000000000000000 : ℚ)⟩
  r := (84755340331043 / 100000000000000 : ℚ)
  w := (9064772814761 / 5000000000000 : ℚ)
  center := (13435937500000001 / 50000000000000000 : ℚ)
  supportValue := (8762456266685911 / 10000000000000000 : ℚ)
  supportSlope := (-1957897163465283 / 250000000000000 : ℚ)
  oldCenter := (8762456266685911 / 10000000000000000 : ℚ)
  oldHi := (43825000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2009]
}

def cell_7408 : Cell := { cellDefaults with
  domain := ⟨(13437500000000001 / 50000000000000000 : ℚ), (13440625000000001 / 50000000000000000 : ℚ)⟩
  r := (84755340331043 / 100000000000000 : ℚ)
  w := (9064772814761 / 5000000000000 : ℚ)
  center := (13439062500000001 / 50000000000000000 : ℚ)
  supportValue := (4378781848248231 / 5000000000000000 : ℚ)
  supportSlope := (-7824621768907747 / 1000000000000000 : ℚ)
  oldCenter := (4378781848248231 / 5000000000000000 : ℚ)
  oldLo := (43775000000000003 / 50000000000000000 : ℚ)
  oldHi := (43825000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2008, piece_2009]
}

def cell_7409 : Cell := { cellDefaults with
  domain := ⟨(13440625000000001 / 50000000000000000 : ℚ), (13443750000000001 / 50000000000000000 : ℚ)⟩
  r := (84755340331043 / 100000000000000 : ℚ)
  w := (9064772814761 / 5000000000000 : ℚ)
  center := (13442187500000001 / 50000000000000000 : ℚ)
  supportValue := (8752675498824417 / 10000000000000000 : ℚ)
  supportSlope := (-977203662697157 / 125000000000000 : ℚ)
  oldCenter := (8752675498824417 / 10000000000000000 : ℚ)
  oldLo := (7 / 8 : ℚ)
  oldHi := (219 / 250 : ℚ)
  oldPieces := [piece_2007, piece_2008]
}

def cell_7410 : Cell := { cellDefaults with
  domain := ⟨(13443750000000001 / 50000000000000000 : ℚ), (13446875000000001 / 50000000000000000 : ℚ)⟩
  r := (84755340331043 / 100000000000000 : ℚ)
  w := (9064772814761 / 5000000000000 : ℚ)
  center := (13445312500000001 / 50000000000000000 : ℚ)
  supportValue := (2186947917536327 / 2500000000000000 : ℚ)
  supportSlope := (-1562128496141213 / 200000000000000 : ℚ)
  oldCenter := (2186947917536327 / 2500000000000000 : ℚ)
  oldLo := (43725000000000003 / 50000000000000000 : ℚ)
  oldHi := (43775000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2006, piece_2007]
}

def cell_7411 : Cell := { cellDefaults with
  domain := ⟨(13446875000000001 / 50000000000000000 : ℚ), (13450000000000001 / 50000000000000000 : ℚ)⟩
  r := (84755340331043 / 100000000000000 : ℚ)
  w := (9064772814761 / 5000000000000 : ℚ)
  center := (13448437500000001 / 50000000000000000 : ℚ)
  supportValue := (8742912206928731 / 10000000000000000 : ℚ)
  supportSlope := (-7803661305672449 / 1000000000000000 : ℚ)
  oldCenter := (8742912206928731 / 10000000000000000 : ℚ)
  oldLo := (437 / 500 : ℚ)
  oldHi := (7 / 8 : ℚ)
  oldPieces := [piece_2005, piece_2006]
}

def cell_7412 : Cell := { cellDefaults with
  domain := ⟨(13450000000000001 / 50000000000000000 : ℚ), (13453125000000001 / 50000000000000000 : ℚ)⟩
  r := (10585391009713 / 12500000000000 : ℚ)
  w := (9058843580203 / 5000000000000 : ℚ)
  center := (13451562500000001 / 50000000000000000 : ℚ)
  supportValue := (875692020329219 / 1000000000000000 : ℚ)
  supportSlope := (-488566086495279 / 62500000000000 : ℚ)
  oldCenter := (875692020329219 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_685
  oldLo := (7 / 8 : ℚ)
  oldHi := (219 / 250 : ℚ)
  oldPieces := [piece_2007, piece_2008]
}

def cell_7413 : Cell := { cellDefaults with
  domain := ⟨(13453125000000001 / 50000000000000000 : ℚ), (13456250000000001 / 50000000000000000 : ℚ)⟩
  r := (10585391009713 / 12500000000000 : ℚ)
  w := (9058843580203 / 5000000000000 : ℚ)
  center := (13454687500000001 / 50000000000000000 : ℚ)
  supportValue := (4376018352475821 / 5000000000000000 : ℚ)
  supportSlope := (-156201751062639 / 20000000000000 : ℚ)
  oldCenter := (4376018352475821 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_685
  oldLo := (43725000000000003 / 50000000000000000 : ℚ)
  oldHi := (43775000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2006, piece_2007]
}

def cell_7414 : Cell := { cellDefaults with
  domain := ⟨(13456250000000001 / 50000000000000000 : ℚ), (13459375000000001 / 50000000000000000 : ℚ)⟩
  r := (10585391009713 / 12500000000000 : ℚ)
  w := (9058843580203 / 5000000000000 : ℚ)
  center := (13457812500000001 / 50000000000000000 : ℚ)
  supportValue := (8747157560546467 / 10000000000000000 : ℚ)
  supportSlope := (-1950780834089727 / 250000000000000 : ℚ)
  oldCenter := (8747157560546467 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_685
  oldLo := (437 / 500 : ℚ)
  oldHi := (7 / 8 : ℚ)
  oldPieces := [piece_2005, piece_2006]
}

def cell_7415 : Cell := { cellDefaults with
  domain := ⟨(13459375000000001 / 50000000000000000 : ℚ), (13462500000000001 / 50000000000000000 : ℚ)⟩
  r := (10585391009713 / 12500000000000 : ℚ)
  w := (9058843580203 / 5000000000000 : ℚ)
  center := (13460937500000001 / 50000000000000000 : ℚ)
  supportValue := (43711413832819 / 50000000000000 : ℚ)
  supportSlope := (-3898082363029687 / 500000000000000 : ℚ)
  oldCenter := (43711413832819 / 50000000000000 : ℚ)
  newCoefficients := coefficients_685
  oldLo := (17470000000000001 / 20000000000000000 : ℚ)
  oldHi := (43725000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_2004, piece_2005]
}

def cell_7416 : Cell := { cellDefaults with
  domain := ⟨(13462500000000001 / 50000000000000000 : ℚ), (13465625000000001 / 50000000000000000 : ℚ)⟩
  r := (10585391009713 / 12500000000000 : ℚ)
  w := (9058843580203 / 5000000000000 : ℚ)
  center := (13464062500000001 / 50000000000000000 : ℚ)
  supportValue := (273044134984439 / 312500000000000 : ℚ)
  supportSlope := (-7789211732937673 / 1000000000000000 : ℚ)
  oldCenter := (273044134984439 / 312500000000000 : ℚ)
  newCoefficients := coefficients_685
  oldLo := (873 / 1000 : ℚ)
  oldHi := (437 / 500 : ℚ)
  oldPieces := [piece_2003, piece_2004]
}

def cell_7417 : Cell := { cellDefaults with
  domain := ⟨(13465625000000001 / 50000000000000000 : ℚ), (13468750000000001 / 50000000000000000 : ℚ)⟩
  r := (10585391009713 / 12500000000000 : ℚ)
  w := (9058843580203 / 5000000000000 : ℚ)
  center := (13467187500000001 / 50000000000000000 : ℚ)
  supportValue := (8732546215836731 / 10000000000000000 : ℚ)
  supportSlope := (-7782296580693071 / 1000000000000000 : ℚ)
  oldCenter := (8732546215836731 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_685
  oldLo := (873 / 1000 : ℚ)
  oldPieces := [piece_2003]
}

def cell_7418 : Cell := { cellDefaults with
  domain := ⟨(13468750000000001 / 50000000000000000 : ℚ), (13471875000000001 / 50000000000000000 : ℚ)⟩
  r := (10585391009713 / 12500000000000 : ℚ)
  w := (9058843580203 / 5000000000000 : ℚ)
  center := (13470312500000001 / 50000000000000000 : ℚ)
  supportValue := (2181921113019727 / 2500000000000000 : ℚ)
  supportSlope := (-7775365303061221 / 1000000000000000 : ℚ)
  oldCenter := (2181921113019727 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_685
  oldLo := (17450000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_2001, piece_2002, piece_2003]
}

def cell_7419 : Cell := { cellDefaults with
  domain := ⟨(13471875000000001 / 50000000000000000 : ℚ), (13475000000000001 / 50000000000000000 : ℚ)⟩
  r := (10585391009713 / 12500000000000 : ℚ)
  w := (9058843580203 / 5000000000000 : ℚ)
  center := (13473437500000001 / 50000000000000000 : ℚ)
  supportValue := (1090353378100047 / 1250000000000000 : ℚ)
  supportSlope := (-7768430453182873 / 1000000000000000 : ℚ)
  oldCenter := (1090353378100047 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_685
  oldLo := (109 / 125 : ℚ)
  oldHi := (4363966480446927 / 5000000000000000 : ℚ)
  oldPieces := [piece_2000, piece_2001]
}

def cell_7420 : Cell := { cellDefaults with
  domain := ⟨(13475000000000001 / 50000000000000000 : ℚ), (13478125000000001 / 50000000000000000 : ℚ)⟩
  center := (13476562500000001 / 50000000000000000 : ℚ)
  supportValue := (8736778767105363 / 10000000000000000 : ℚ)
  supportSlope := (-7781754357917947 / 1000000000000000 : ℚ)
  oldCenter := (8736778767105363 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_686
  oldLo := (873 / 1000 : ℚ)
  oldHi := (437 / 500 : ℚ)
  oldPieces := [piece_2003, piece_2004]
}

def cell_7421 : Cell := { cellDefaults with
  domain := ⟨(13478125000000001 / 50000000000000000 : ℚ), (13481250000000001 / 50000000000000000 : ℚ)⟩
  center := (13479687500000001 / 50000000000000000 : ℚ)
  supportValue := (8731917317289677 / 10000000000000000 : ℚ)
  supportSlope := (-7774828452262739 / 1000000000000000 : ℚ)
  oldCenter := (8731917317289677 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_686
  oldLo := (4363966480446927 / 5000000000000000 : ℚ)
  oldPieces := [piece_2002, piece_2003]
}

def cell_7422 : Cell := { cellDefaults with
  domain := ⟨(13481250000000001 / 50000000000000000 : ℚ), (13484375000000001 / 50000000000000000 : ℚ)⟩
  center := (13482812500000001 / 50000000000000000 : ℚ)
  supportValue := (1090882524245053 / 1250000000000000 : ℚ)
  supportSlope := (-7767908044804983 / 1000000000000000 : ℚ)
  oldCenter := (1090882524245053 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_686
  oldLo := (109 / 125 : ℚ)
  oldHi := (873 / 1000 : ℚ)
  oldPieces := [piece_2000, piece_2001, piece_2002]
}

def cell_7423 : Cell := { cellDefaults with
  domain := ⟨(13484375000000001 / 50000000000000000 : ℚ), (13487500000000001 / 50000000000000000 : ℚ)⟩
  center := (13485937500000001 / 50000000000000000 : ℚ)
  supportValue := (4361103696857183 / 5000000000000000 : ℚ)
  supportSlope := (-3104397240930723 / 400000000000000 : ℚ)
  oldCenter := (4361103696857183 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_686
  oldLo := (17430000000000001 / 20000000000000000 : ℚ)
  oldHi := (17450000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1999, piece_2000]
}

def cell_7424 : Cell := { cellDefaults with
  domain := ⟨(13487500000000001 / 50000000000000000 : ℚ), (107919413407821233 / 400000000000000000 : ℚ)⟩
  center := (215819413407821241 / 800000000000000000 : ℚ)
  supportValue := (8717894328371207 / 10000000000000000 : ℚ)
  supportSlope := (-7754993132518227 / 1000000000000000 : ℚ)
  oldCenter := (8717894328371207 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_686
  oldLo := (17430000000000001 / 20000000000000000 : ℚ)
  oldHi := (109 / 125 : ℚ)
  oldPieces := [piece_1999]
}

def cell_7425 : Cell := { cellDefaults with
  domain := ⟨(107919413407821233 / 400000000000000000 : ℚ), (53969413407821229 / 200000000000000000 : ℚ)⟩
  center := (215858240223463691 / 800000000000000000 : ℚ)
  supportValue := (4357069030450237 / 5000000000000000 : ℚ)
  supportSlope := (-7749602144176601 / 1000000000000000 : ℚ)
  oldCenter := (4357069030450237 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_686
  oldLo := (871 / 1000 : ℚ)
  oldHi := (109 / 125 : ℚ)
  oldPieces := [piece_1998, piece_1999]
}

def cell_7426 : Cell := { cellDefaults with
  domain := ⟨(53969413407821229 / 200000000000000000 : ℚ), (107958240223463683 / 400000000000000000 : ℚ)⟩
  center := (215897067039106141 / 800000000000000000 : ℚ)
  supportValue := (4355189140081167 / 5000000000000000 : ℚ)
  supportSlope := (-3097649647922551 / 400000000000000 : ℚ)
  oldCenter := (4355189140081167 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_686
  oldLo := (17410000000000001 / 20000000000000000 : ℚ)
  oldHi := (17430000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1997, piece_1998]
}

def cell_7427 : Cell := { cellDefaults with
  domain := ⟨(107958240223463683 / 400000000000000000 : ℚ), (26994413407821227 / 100000000000000000 : ℚ)⟩
  center := (215935893854748591 / 800000000000000000 : ℚ)
  supportValue := (4353310495230213 / 5000000000000000 : ℚ)
  supportSlope := (-3095459132865183 / 400000000000000 : ℚ)
  oldCenter := (4353310495230213 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_686
  oldLo := (87 / 100 : ℚ)
  oldHi := (871 / 1000 : ℚ)
  oldPieces := [piece_1996, piece_1997]
}

def cell_7428 : Cell := { cellDefaults with
  domain := ⟨(26994413407821227 / 100000000000000000 : ℚ), (13500000000000001 / 50000000000000000 : ℚ)⟩
  center := (53994413407821229 / 200000000000000000 : ℚ)
  supportValue := (4351291417942929 / 5000000000000000 : ℚ)
  supportSlope := (-15466163398926037 / 2000000000000000 : ℚ)
  oldCenter := (4351291417942929 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_687
  oldLo := (87 / 100 : ℚ)
  oldHi := (17410000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1996]
}

def cell_7429 : Cell := { cellDefaults with
  domain := ⟨(13500000000000001 / 50000000000000000 : ℚ), (13503125000000001 / 50000000000000000 : ℚ)⟩
  r := (84539224280927 / 100000000000000 : ℚ)
  w := (18094051682649 / 10000000000000 : ℚ)
  center := (13501562500000001 / 50000000000000000 : ℚ)
  supportValue := (8716734468180859 / 10000000000000000 : ℚ)
  supportSlope := (-7746702235522207 / 1000000000000000 : ℚ)
  oldCenter := (8716734468180859 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_688
  oldLo := (871 / 1000 : ℚ)
  oldHi := (109 / 125 : ℚ)
  oldPieces := [piece_1998, piece_1999]
}

def cell_7430 : Cell := { cellDefaults with
  domain := ⟨(13503125000000001 / 50000000000000000 : ℚ), (13506250000000001 / 50000000000000000 : ℚ)⟩
  r := (84539224280927 / 100000000000000 : ℚ)
  w := (18094051682649 / 10000000000000 : ℚ)
  center := (13504687500000001 / 50000000000000000 : ℚ)
  supportValue := (1742378982006761 / 2000000000000000 : ℚ)
  supportSlope := (-7739820231115857 / 1000000000000000 : ℚ)
  oldCenter := (1742378982006761 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_688
  oldLo := (17410000000000001 / 20000000000000000 : ℚ)
  oldHi := (17430000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1997, piece_1998]
}

def cell_7431 : Cell := { cellDefaults with
  domain := ⟨(13506250000000001 / 50000000000000000 : ℚ), (13509375000000001 / 50000000000000000 : ℚ)⟩
  r := (84539224280927 / 100000000000000 : ℚ)
  w := (18094051682649 / 10000000000000 : ℚ)
  center := (13507812500000001 / 50000000000000000 : ℚ)
  supportValue := (4353529825470967 / 5000000000000000 : ℚ)
  supportSlope := (-7732943732019493 / 1000000000000000 : ℚ)
  oldCenter := (4353529825470967 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_688
  oldLo := (87 / 100 : ℚ)
  oldHi := (871 / 1000 : ℚ)
  oldPieces := [piece_1996, piece_1997]
}

def cell_7432 : Cell := { cellDefaults with
  domain := ⟨(13509375000000001 / 50000000000000000 : ℚ), (13512500000000001 / 50000000000000000 : ℚ)⟩
  r := (84539224280927 / 100000000000000 : ℚ)
  w := (18094051682649 / 10000000000000 : ℚ)
  center := (13510937500000001 / 50000000000000000 : ℚ)
  supportValue := (1087778585932649 / 1250000000000000 : ℚ)
  supportSlope := (-7726072736783607 / 1000000000000000 : ℚ)
  oldCenter := (1087778585932649 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_688
  oldLo := (17390000000000001 / 20000000000000000 : ℚ)
  oldHi := (17410000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1995, piece_1996]
}

def cell_7433 : Cell := { cellDefaults with
  domain := ⟨(13512500000000001 / 50000000000000000 : ℚ), (13515625000000001 / 50000000000000000 : ℚ)⟩
  r := (84539224280927 / 100000000000000 : ℚ)
  w := (18094051682649 / 10000000000000 : ℚ)
  center := (13514062500000001 / 50000000000000000 : ℚ)
  supportValue := (1739480403222347 / 2000000000000000 : ℚ)
  supportSlope := (-1929801840210743 / 250000000000000 : ℚ)
  oldCenter := (1739480403222347 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_688
  oldLo := (86899999999999999 / 100000000000000000 : ℚ)
  oldHi := (87 / 100 : ℚ)
  oldPieces := [piece_1994, piece_1995]
}

def cell_7434 : Cell := { cellDefaults with
  domain := ⟨(13515625000000001 / 50000000000000000 : ℚ), (13518750000000001 / 50000000000000000 : ℚ)⟩
  r := (84539224280927 / 100000000000000 : ℚ)
  w := (18094051682649 / 10000000000000 : ℚ)
  center := (13517187500000001 / 50000000000000000 : ℚ)
  supportValue := (8692579633457611 / 10000000000000000 : ℚ)
  supportSlope := (-7712397273454741 / 1000000000000000 : ℚ)
  oldCenter := (8692579633457611 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_688
  oldLo := (86899999999999999 / 100000000000000000 : ℚ)
  oldHi := (17390000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1994]
}

def cell_7435 : Cell := { cellDefaults with
  domain := ⟨(13518750000000001 / 50000000000000000 : ℚ), (13521875000000001 / 50000000000000000 : ℚ)⟩
  r := (84539224280927 / 100000000000000 : ℚ)
  w := (18094051682649 / 10000000000000 : ℚ)
  center := (13520312500000001 / 50000000000000000 : ℚ)
  supportValue := (1737552307219783 / 2000000000000000 : ℚ)
  supportSlope := (-7705549971177561 / 1000000000000000 : ℚ)
  oldCenter := (1737552307219783 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_688
  oldLo := (17370000000000001 / 20000000000000000 : ℚ)
  oldHi := (17390000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1993, piece_1994]
}

def cell_7436 : Cell := { cellDefaults with
  domain := ⟨(13521875000000001 / 50000000000000000 : ℚ), (13525000000000001 / 50000000000000000 : ℚ)⟩
  r := (84539224280927 / 100000000000000 : ℚ)
  w := (18094051682649 / 10000000000000 : ℚ)
  center := (13523437500000001 / 50000000000000000 : ℚ)
  supportValue := (2170736930151553 / 2500000000000000 : ℚ)
  supportSlope := (-7698702471163443 / 1000000000000000 : ℚ)
  oldCenter := (2170736930151553 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_688
  oldLo := (86799999999999999 / 100000000000000000 : ℚ)
  oldHi := (86899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1992, piece_1993]
}

def cell_7437 : Cell := { cellDefaults with
  domain := ⟨(13525000000000001 / 50000000000000000 : ℚ), (13528125000000001 / 50000000000000000 : ℚ)⟩
  r := (84467530403471 / 100000000000000 : ℚ)
  w := (452056869141 / 250000000000 : ℚ)
  center := (13526562500000001 / 50000000000000000 : ℚ)
  supportValue := (1739357444502473 / 2000000000000000 : ℚ)
  supportSlope := (-1927971824343011 / 250000000000000 : ℚ)
  oldCenter := (1739357444502473 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_689
  oldLo := (86899999999999999 / 100000000000000000 : ℚ)
  oldHi := (87 / 100 : ℚ)
  oldPieces := [piece_1994, piece_1995]
}

def cell_7438 : Cell := { cellDefaults with
  domain := ⟨(13528125000000001 / 50000000000000000 : ℚ), (13531250000000001 / 50000000000000000 : ℚ)⟩
  r := (84467530403471 / 100000000000000 : ℚ)
  w := (452056869141 / 250000000000 : ℚ)
  center := (13529687500000001 / 50000000000000000 : ℚ)
  supportValue := (4345984703829089 / 5000000000000000 : ℚ)
  supportSlope := (-96313118871727 / 12500000000000 : ℚ)
  oldCenter := (4345984703829089 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_689
  oldLo := (17370000000000001 / 20000000000000000 : ℚ)
  oldHi := (17390000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1993, piece_1994]
}

def cell_7439 : Cell := { cellDefaults with
  domain := ⟨(13531250000000001 / 50000000000000000 : ℚ), (13534375000000001 / 50000000000000000 : ℚ)⟩
  r := (84467530403471 / 100000000000000 : ℚ)
  w := (452056869141 / 250000000000 : ℚ)
  center := (13532812500000001 / 50000000000000000 : ℚ)
  supportValue := (10858944830281 / 12500000000000 : ℚ)
  supportSlope := (-3849108588330097 / 500000000000000 : ℚ)
  oldCenter := (10858944830281 / 12500000000000 : ℚ)
  newCoefficients := coefficients_689
  oldLo := (86799999999999999 / 100000000000000000 : ℚ)
  oldHi := (86899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1992, piece_1993]
}

def cell_7440 : Cell := { cellDefaults with
  domain := ⟨(13534375000000001 / 50000000000000000 : ℚ), (13537500000000001 / 50000000000000000 : ℚ)⟩
  r := (84467530403471 / 100000000000000 : ℚ)
  w := (452056869141 / 250000000000 : ℚ)
  center := (13535937500000001 / 50000000000000000 : ℚ)
  supportValue := (8682346588803083 / 10000000000000000 : ℚ)
  supportSlope := (-240355944227999 / 31250000000000 : ℚ)
  oldCenter := (8682346588803083 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_689
  oldLo := (17350000000000001 / 20000000000000000 : ℚ)
  oldHi := (17370000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1991, piece_1992]
}

def cell_7441 : Cell := { cellDefaults with
  domain := ⟨(13537500000000001 / 50000000000000000 : ℚ), (13540625000000001 / 50000000000000000 : ℚ)⟩
  r := (84467530403471 / 100000000000000 : ℚ)
  w := (452056869141 / 250000000000 : ℚ)
  center := (13539062500000001 / 50000000000000000 : ℚ)
  supportValue := (271173174314573 / 312500000000000 : ℚ)
  supportSlope := (-1921152433414619 / 250000000000000 : ℚ)
  oldCenter := (271173174314573 / 312500000000000 : ℚ)
  newCoefficients := coefficients_689
  oldLo := (17350000000000001 / 20000000000000000 : ℚ)
  oldHi := (86799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1991]
}

def cell_7442 : Cell := { cellDefaults with
  domain := ⟨(13540625000000001 / 50000000000000000 : ℚ), (13543750000000001 / 50000000000000000 : ℚ)⟩
  r := (84467530403471 / 100000000000000 : ℚ)
  w := (452056869141 / 250000000000 : ℚ)
  center := (13542187500000001 / 50000000000000000 : ℚ)
  supportValue := (8672740828649433 / 10000000000000000 : ℚ)
  supportSlope := (-3838907694994731 / 500000000000000 : ℚ)
  oldCenter := (8672740828649433 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_689
  oldLo := (86699999999999999 / 100000000000000000 : ℚ)
  oldHi := (86799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1989, piece_1990, piece_1991]
}

def cell_7443 : Cell := { cellDefaults with
  domain := ⟨(13543750000000001 / 50000000000000000 : ℚ), (13546875000000001 / 50000000000000000 : ℚ)⟩
  r := (84467530403471 / 100000000000000 : ℚ)
  w := (452056869141 / 250000000000 : ℚ)
  center := (13545312500000001 / 50000000000000000 : ℚ)
  supportValue := (1083493042135627 / 1250000000000000 : ℚ)
  supportSlope := (-3835503145458219 / 500000000000000 : ℚ)
  oldCenter := (1083493042135627 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_689
  oldLo := (17330000000000001 / 20000000000000000 : ℚ)
  oldHi := (4336312849162011 / 5000000000000000 : ℚ)
  oldPieces := [piece_1988, piece_1989]
}

def cell_7444 : Cell := { cellDefaults with
  domain := ⟨(13546875000000001 / 50000000000000000 : ℚ), (13550000000000001 / 50000000000000000 : ℚ)⟩
  r := (84467530403471 / 100000000000000 : ℚ)
  w := (452056869141 / 250000000000 : ℚ)
  center := (13548437500000001 / 50000000000000000 : ℚ)
  supportValue := (8663152100069401 / 10000000000000000 : ℚ)
  supportSlope := (-7664202529589659 / 1000000000000000 : ℚ)
  oldCenter := (8663152100069401 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_689
  oldLo := (86599999999999999 / 100000000000000000 : ℚ)
  oldHi := (86699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1987, piece_1988]
}

def cell_7445 : Cell := { cellDefaults with
  domain := ⟨(13550000000000001 / 50000000000000000 : ℚ), (13553125000000001 / 50000000000000000 : ℚ)⟩
  r := (16879201754087 / 20000000000000 : ℚ)
  w := (9035262956199 / 5000000000000 : ℚ)
  center := (13551562500000001 / 50000000000000000 : ℚ)
  supportValue := (2169233831760501 / 2500000000000000 : ℚ)
  supportSlope := (-7677313837049837 / 1000000000000000 : ℚ)
  oldCenter := (2169233831760501 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_690
  oldLo := (4336312849162011 / 5000000000000000 : ℚ)
  oldHi := (86799999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1990, piece_1991]
}

def cell_7446 : Cell := { cellDefaults with
  domain := ⟨(13553125000000001 / 50000000000000000 : ℚ), (13556250000000001 / 50000000000000000 : ℚ)⟩
  r := (16879201754087 / 20000000000000 : ℚ)
  w := (9035262956199 / 5000000000000 : ℚ)
  center := (13554687500000001 / 50000000000000000 : ℚ)
  supportValue := (2168034776126749 / 2500000000000000 : ℚ)
  supportSlope := (-7670520286989557 / 1000000000000000 : ℚ)
  oldCenter := (2168034776126749 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_690
  oldLo := (17330000000000001 / 20000000000000000 : ℚ)
  oldHi := (17350000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1988, piece_1989, piece_1990]
}

def cell_7447 : Cell := { cellDefaults with
  domain := ⟨(13556250000000001 / 50000000000000000 : ℚ), (13559375000000001 / 50000000000000000 : ℚ)⟩
  r := (16879201754087 / 20000000000000 : ℚ)
  w := (9035262956199 / 5000000000000 : ℚ)
  center := (13557812500000001 / 50000000000000000 : ℚ)
  supportValue := (8667347125730409 / 10000000000000000 : ℚ)
  supportSlope := (-766373209687643 / 100000000000000 : ℚ)
  oldCenter := (8667347125730409 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_690
  oldLo := (86599999999999999 / 100000000000000000 : ℚ)
  oldHi := (86699999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1987, piece_1988]
}

def cell_7448 : Cell := { cellDefaults with
  domain := ⟨(13559375000000001 / 50000000000000000 : ℚ), (13562500000000001 / 50000000000000000 : ℚ)⟩
  r := (16879201754087 / 20000000000000 : ℚ)
  w := (9035262956199 / 5000000000000 : ℚ)
  center := (13560937500000001 / 50000000000000000 : ℚ)
  supportValue := (8662559387421701 / 10000000000000000 : ℚ)
  supportSlope := (-1531399778981779 / 200000000000000 : ℚ)
  oldCenter := (8662559387421701 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_690
  oldLo := (86599999999999999 / 100000000000000000 : ℚ)
  oldHi := (17330000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1987]
}

def cell_7449 : Cell := { cellDefaults with
  domain := ⟨(13562500000000001 / 50000000000000000 : ℚ), (13565625000000001 / 50000000000000000 : ℚ)⟩
  r := (16879201754087 / 20000000000000 : ℚ)
  w := (9035262956199 / 5000000000000 : ℚ)
  center := (13564062500000001 / 50000000000000000 : ℚ)
  supportValue := (2164443971556023 / 2500000000000000 : ℚ)
  supportSlope := (-7650240471313907 / 1000000000000000 : ℚ)
  oldCenter := (2164443971556023 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_690
  oldLo := (17310000000000001 / 20000000000000000 : ℚ)
  oldHi := (17330000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1986, piece_1987]
}

theorem check_7400 : cell_7400.check = true := by
  decide +kernel

theorem check_7401 : cell_7401.check = true := by
  decide +kernel

theorem check_7402 : cell_7402.check = true := by
  decide +kernel

theorem check_7403 : cell_7403.check = true := by
  decide +kernel

theorem check_7404 : cell_7404.check = true := by
  decide +kernel

theorem check_7405 : cell_7405.check = true := by
  decide +kernel

theorem check_7406 : cell_7406.check = true := by
  decide +kernel

theorem check_7407 : cell_7407.check = true := by
  decide +kernel

theorem check_7408 : cell_7408.check = true := by
  decide +kernel

theorem check_7409 : cell_7409.check = true := by
  decide +kernel

theorem check_7410 : cell_7410.check = true := by
  decide +kernel

theorem check_7411 : cell_7411.check = true := by
  decide +kernel

theorem check_7412 : cell_7412.check = true := by
  decide +kernel

theorem check_7413 : cell_7413.check = true := by
  decide +kernel

theorem check_7414 : cell_7414.check = true := by
  decide +kernel

theorem check_7415 : cell_7415.check = true := by
  decide +kernel

theorem check_7416 : cell_7416.check = true := by
  decide +kernel

theorem check_7417 : cell_7417.check = true := by
  decide +kernel

theorem check_7418 : cell_7418.check = true := by
  decide +kernel

theorem check_7419 : cell_7419.check = true := by
  decide +kernel

theorem check_7420 : cell_7420.check = true := by
  decide +kernel

theorem check_7421 : cell_7421.check = true := by
  decide +kernel

theorem check_7422 : cell_7422.check = true := by
  decide +kernel

theorem check_7423 : cell_7423.check = true := by
  decide +kernel

theorem check_7424 : cell_7424.check = true := by
  decide +kernel

theorem check_7425 : cell_7425.check = true := by
  decide +kernel

theorem check_7426 : cell_7426.check = true := by
  decide +kernel

theorem check_7427 : cell_7427.check = true := by
  decide +kernel

theorem check_7428 : cell_7428.check = true := by
  decide +kernel

theorem check_7429 : cell_7429.check = true := by
  decide +kernel

theorem check_7430 : cell_7430.check = true := by
  decide +kernel

theorem check_7431 : cell_7431.check = true := by
  decide +kernel

theorem check_7432 : cell_7432.check = true := by
  decide +kernel

theorem check_7433 : cell_7433.check = true := by
  decide +kernel

theorem check_7434 : cell_7434.check = true := by
  decide +kernel

theorem check_7435 : cell_7435.check = true := by
  decide +kernel

theorem check_7436 : cell_7436.check = true := by
  decide +kernel

theorem check_7437 : cell_7437.check = true := by
  decide +kernel

theorem check_7438 : cell_7438.check = true := by
  decide +kernel

theorem check_7439 : cell_7439.check = true := by
  decide +kernel

theorem check_7440 : cell_7440.check = true := by
  decide +kernel

theorem check_7441 : cell_7441.check = true := by
  decide +kernel

theorem check_7442 : cell_7442.check = true := by
  decide +kernel

theorem check_7443 : cell_7443.check = true := by
  decide +kernel

theorem check_7444 : cell_7444.check = true := by
  decide +kernel

theorem check_7445 : cell_7445.check = true := by
  decide +kernel

theorem check_7446 : cell_7446.check = true := by
  decide +kernel

theorem check_7447 : cell_7447.check = true := by
  decide +kernel

theorem check_7448 : cell_7448.check = true := by
  decide +kernel

theorem check_7449 : cell_7449.check = true := by
  decide +kernel

def cells : List Cell := [cell_7400, cell_7401, cell_7402, cell_7403, cell_7404, cell_7405, cell_7406, cell_7407, cell_7408, cell_7409, cell_7410, cell_7411, cell_7412, cell_7413, cell_7414, cell_7415, cell_7416, cell_7417, cell_7418, cell_7419, cell_7420, cell_7421, cell_7422, cell_7423, cell_7424, cell_7425, cell_7426, cell_7427, cell_7428, cell_7429, cell_7430, cell_7431, cell_7432, cell_7433, cell_7434, cell_7435, cell_7436, cell_7437, cell_7438, cell_7439, cell_7440, cell_7441, cell_7442, cell_7443, cell_7444, cell_7445, cell_7446, cell_7447, cell_7448, cell_7449]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7400, check_7401, check_7402, check_7403, check_7404, check_7405, check_7406, check_7407, check_7408, check_7409, check_7410, check_7411, check_7412, check_7413, check_7414, check_7415, check_7416, check_7417, check_7418, check_7419, check_7420, check_7421, check_7422, check_7423, check_7424, check_7425, check_7426, check_7427, check_7428, check_7429, check_7430, check_7431, check_7432, check_7433, check_7434, check_7435, check_7436, check_7437, check_7438, check_7439, check_7440, check_7441, check_7442, check_7443, check_7444, check_7445, check_7446, check_7447, check_7448, check_7449, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0148

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0148
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0148
open AnalyticBounds.ExpressionCertificate

theorem linked_7400 : Linked cell_7400 pieces := by
  link_source cell_7400 with piece_683 using piece_683_mem, ⟨piece_2012_mem, piece_2013_mem⟩

theorem linked_7401 : Linked cell_7401 pieces := by
  link_source cell_7401 with piece_683 using piece_683_mem, ⟨piece_2011_mem, piece_2012_mem⟩

theorem linked_7402 : Linked cell_7402 pieces := by
  link_source cell_7402 with piece_683 using piece_683_mem, ⟨piece_2010_mem, piece_2011_mem⟩

theorem linked_7403 : Linked cell_7403 pieces := by
  link_source cell_7403 with piece_683 using piece_683_mem, ⟨piece_2009_mem, piece_2010_mem⟩

theorem linked_7404 : Linked cell_7404 pieces := by
  link_source cell_7404 with piece_684 using piece_684_mem, ⟨piece_2011_mem, piece_2012_mem⟩

theorem linked_7405 : Linked cell_7405 pieces := by
  link_source cell_7405 with piece_684 using piece_684_mem, ⟨piece_2010_mem, piece_2011_mem⟩

theorem linked_7406 : Linked cell_7406 pieces := by
  link_source cell_7406 with piece_684 using piece_684_mem, ⟨piece_2009_mem, piece_2010_mem⟩

theorem linked_7407 : Linked cell_7407 pieces := by
  link_source cell_7407 with piece_684 using piece_684_mem, piece_2009_mem

theorem linked_7408 : Linked cell_7408 pieces := by
  link_source cell_7408 with piece_684 using piece_684_mem, ⟨piece_2008_mem, piece_2009_mem⟩

theorem linked_7409 : Linked cell_7409 pieces := by
  link_source cell_7409 with piece_684 using piece_684_mem, ⟨piece_2007_mem, piece_2008_mem⟩

theorem linked_7410 : Linked cell_7410 pieces := by
  link_source cell_7410 with piece_684 using piece_684_mem, ⟨piece_2006_mem, piece_2007_mem⟩

theorem linked_7411 : Linked cell_7411 pieces := by
  link_source cell_7411 with piece_684 using piece_684_mem, ⟨piece_2005_mem, piece_2006_mem⟩

theorem linked_7412 : Linked cell_7412 pieces := by
  link_source cell_7412 with piece_685 using piece_685_mem, ⟨piece_2007_mem, piece_2008_mem⟩

theorem linked_7413 : Linked cell_7413 pieces := by
  link_source cell_7413 with piece_685 using piece_685_mem, ⟨piece_2006_mem, piece_2007_mem⟩

theorem linked_7414 : Linked cell_7414 pieces := by
  link_source cell_7414 with piece_685 using piece_685_mem, ⟨piece_2005_mem, piece_2006_mem⟩

theorem linked_7415 : Linked cell_7415 pieces := by
  link_source cell_7415 with piece_685 using piece_685_mem, ⟨piece_2004_mem, piece_2005_mem⟩

theorem linked_7416 : Linked cell_7416 pieces := by
  link_source cell_7416 with piece_685 using piece_685_mem, ⟨piece_2003_mem, piece_2004_mem⟩

theorem linked_7417 : Linked cell_7417 pieces := by
  link_source cell_7417 with piece_685 using piece_685_mem, piece_2003_mem

theorem linked_7418 : Linked cell_7418 pieces := by
  link_source cell_7418 with piece_685 using piece_685_mem, ⟨piece_2001_mem, ⟨piece_2002_mem, piece_2003_mem⟩⟩

theorem linked_7419 : Linked cell_7419 pieces := by
  link_source cell_7419 with piece_685 using piece_685_mem, ⟨piece_2000_mem, piece_2001_mem⟩

theorem linked_7420 : Linked cell_7420 pieces := by
  link_source cell_7420 with piece_686 using piece_686_mem, ⟨piece_2003_mem, piece_2004_mem⟩

theorem linked_7421 : Linked cell_7421 pieces := by
  link_source cell_7421 with piece_686 using piece_686_mem, ⟨piece_2002_mem, piece_2003_mem⟩

theorem linked_7422 : Linked cell_7422 pieces := by
  link_source cell_7422 with piece_686 using piece_686_mem, ⟨piece_2000_mem, ⟨piece_2001_mem, piece_2002_mem⟩⟩

theorem linked_7423 : Linked cell_7423 pieces := by
  link_source cell_7423 with piece_686 using piece_686_mem, ⟨piece_1999_mem, piece_2000_mem⟩

theorem linked_7424 : Linked cell_7424 pieces := by
  link_source cell_7424 with piece_686 using piece_686_mem, piece_1999_mem

theorem linked_7425 : Linked cell_7425 pieces := by
  link_source cell_7425 with piece_686 using piece_686_mem, ⟨piece_1998_mem, piece_1999_mem⟩

theorem linked_7426 : Linked cell_7426 pieces := by
  link_source cell_7426 with piece_686 using piece_686_mem, ⟨piece_1997_mem, piece_1998_mem⟩

theorem linked_7427 : Linked cell_7427 pieces := by
  link_source cell_7427 with piece_686 using piece_686_mem, ⟨piece_1996_mem, piece_1997_mem⟩

theorem linked_7428 : Linked cell_7428 pieces := by
  link_source cell_7428 with piece_687 using piece_687_mem, piece_1996_mem

theorem linked_7429 : Linked cell_7429 pieces := by
  link_source cell_7429 with piece_688 using piece_688_mem, ⟨piece_1998_mem, piece_1999_mem⟩

theorem linked_7430 : Linked cell_7430 pieces := by
  link_source cell_7430 with piece_688 using piece_688_mem, ⟨piece_1997_mem, piece_1998_mem⟩

theorem linked_7431 : Linked cell_7431 pieces := by
  link_source cell_7431 with piece_688 using piece_688_mem, ⟨piece_1996_mem, piece_1997_mem⟩

theorem linked_7432 : Linked cell_7432 pieces := by
  link_source cell_7432 with piece_688 using piece_688_mem, ⟨piece_1995_mem, piece_1996_mem⟩

theorem linked_7433 : Linked cell_7433 pieces := by
  link_source cell_7433 with piece_688 using piece_688_mem, ⟨piece_1994_mem, piece_1995_mem⟩

theorem linked_7434 : Linked cell_7434 pieces := by
  link_source cell_7434 with piece_688 using piece_688_mem, piece_1994_mem

theorem linked_7435 : Linked cell_7435 pieces := by
  link_source cell_7435 with piece_688 using piece_688_mem, ⟨piece_1993_mem, piece_1994_mem⟩

theorem linked_7436 : Linked cell_7436 pieces := by
  link_source cell_7436 with piece_688 using piece_688_mem, ⟨piece_1992_mem, piece_1993_mem⟩

theorem linked_7437 : Linked cell_7437 pieces := by
  link_source cell_7437 with piece_689 using piece_689_mem, ⟨piece_1994_mem, piece_1995_mem⟩

theorem linked_7438 : Linked cell_7438 pieces := by
  link_source cell_7438 with piece_689 using piece_689_mem, ⟨piece_1993_mem, piece_1994_mem⟩

theorem linked_7439 : Linked cell_7439 pieces := by
  link_source cell_7439 with piece_689 using piece_689_mem, ⟨piece_1992_mem, piece_1993_mem⟩

theorem linked_7440 : Linked cell_7440 pieces := by
  link_source cell_7440 with piece_689 using piece_689_mem, ⟨piece_1991_mem, piece_1992_mem⟩

theorem linked_7441 : Linked cell_7441 pieces := by
  link_source cell_7441 with piece_689 using piece_689_mem, piece_1991_mem

theorem linked_7442 : Linked cell_7442 pieces := by
  link_source cell_7442 with piece_689 using piece_689_mem, ⟨piece_1989_mem, ⟨piece_1990_mem, piece_1991_mem⟩⟩

theorem linked_7443 : Linked cell_7443 pieces := by
  link_source cell_7443 with piece_689 using piece_689_mem, ⟨piece_1988_mem, piece_1989_mem⟩

theorem linked_7444 : Linked cell_7444 pieces := by
  link_source cell_7444 with piece_689 using piece_689_mem, ⟨piece_1987_mem, piece_1988_mem⟩

theorem linked_7445 : Linked cell_7445 pieces := by
  link_source cell_7445 with piece_690 using piece_690_mem, ⟨piece_1990_mem, piece_1991_mem⟩

theorem linked_7446 : Linked cell_7446 pieces := by
  link_source cell_7446 with piece_690 using piece_690_mem, ⟨piece_1988_mem, ⟨piece_1989_mem, piece_1990_mem⟩⟩

theorem linked_7447 : Linked cell_7447 pieces := by
  link_source cell_7447 with piece_690 using piece_690_mem, ⟨piece_1987_mem, piece_1988_mem⟩

theorem linked_7448 : Linked cell_7448 pieces := by
  link_source cell_7448 with piece_690 using piece_690_mem, piece_1987_mem

theorem linked_7449 : Linked cell_7449 pieces := by
  link_source cell_7449 with piece_690 using piece_690_mem, ⟨piece_1986_mem, piece_1987_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0148.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0148.cells,List.forall_mem_cons]
  exact ⟨linked_7400, linked_7401, linked_7402, linked_7403, linked_7404, linked_7405, linked_7406, linked_7407, linked_7408, linked_7409, linked_7410, linked_7411, linked_7412, linked_7413, linked_7414, linked_7415, linked_7416, linked_7417, linked_7418, linked_7419, linked_7420, linked_7421, linked_7422, linked_7423, linked_7424, linked_7425, linked_7426, linked_7427, linked_7428, linked_7429, linked_7430, linked_7431, linked_7432, linked_7433, linked_7434, linked_7435, linked_7436, linked_7437, linked_7438, linked_7439, linked_7440, linked_7441, linked_7442, linked_7443, linked_7444, linked_7445, linked_7446, linked_7447, linked_7448, linked_7449, by simp⟩

theorem covered : covers (13412500000000001 / 50000000000000000 : ℚ) (13565625000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0148.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0148
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0149
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(13565625000000001 / 50000000000000000 : ℚ), (13568750000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (8432465689749 / 10000000000000 : ℚ)
  w := (902940237383 / 500000000000 : ℚ)
  center := (13567187500000001 / 50000000000000000 : ℚ)
  supportValue := (67601536084223 / 78125000000000 : ℚ)
  supportSlope := (-15286939951693057 / 2000000000000000 : ℚ)
  oldCenter := (67601536084223 / 78125000000000 : ℚ)
  newCoefficients := coefficients_691
  oldLo := (86499999999999999 / 100000000000000000 : ℚ)
  oldHi := (17310000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1985, piece_1986]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7450 : Cell := { cellDefaults with
  r := (16879201754087 / 20000000000000 : ℚ)
  w := (9035262956199 / 5000000000000 : ℚ)
  newCoefficients := coefficients_690
  oldHi := (86599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1985, piece_1986]
}

def cell_7451 : Cell := { cellDefaults with
  domain := ⟨(13568750000000001 / 50000000000000000 : ℚ), (13571875000000001 / 50000000000000000 : ℚ)⟩
  r := (16879201754087 / 20000000000000 : ℚ)
  w := (9035262956199 / 5000000000000 : ℚ)
  center := (13570312500000001 / 50000000000000000 : ℚ)
  supportValue := (8648221581739947 / 10000000000000000 : ℚ)
  supportSlope := (-954588105803289 / 125000000000000 : ℚ)
  oldCenter := (8648221581739947 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_690
  oldLo := (17290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1984, piece_1985]
}

def cell_7452 : Cell := { cellDefaults with
  domain := ⟨(13571875000000001 / 50000000000000000 : ℚ), (13575000000000001 / 50000000000000000 : ℚ)⟩
  r := (16879201754087 / 20000000000000 : ℚ)
  w := (9035262956199 / 5000000000000 : ℚ)
  center := (13573437500000001 / 50000000000000000 : ℚ)
  supportValue := (54021567323427 / 62500000000000 : ℚ)
  supportSlope := (-381497254169183 / 50000000000000 : ℚ)
  oldCenter := (54021567323427 / 62500000000000 : ℚ)
  newCoefficients := coefficients_690
  oldLo := (86399999999999999 / 100000000000000000 : ℚ)
  oldHi := (86499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1983, piece_1984]
}

def cell_7453 : Cell := { cellDefaults with
  domain := ⟨(13575000000000001 / 50000000000000000 : ℚ), (13578125000000001 / 50000000000000000 : ℚ)⟩
  center := (13576562500000001 / 50000000000000000 : ℚ)
  supportValue := (8657178495796161 / 10000000000000000 : ℚ)
  supportSlope := (-7642980795179 / 1000000000000 : ℚ)
  oldCenter := (8657178495796161 / 10000000000000000 : ℚ)
  oldHi := (86599999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1985, piece_1986]
}

def cell_7454 : Cell := { cellDefaults with
  domain := ⟨(13578125000000001 / 50000000000000000 : ℚ), (13581250000000001 / 50000000000000000 : ℚ)⟩
  center := (13579687500000001 / 50000000000000000 : ℚ)
  supportValue := (8652403715217707 / 10000000000000000 : ℚ)
  supportSlope := (-7636234537475417 / 1000000000000000 : ℚ)
  oldCenter := (8652403715217707 / 10000000000000000 : ℚ)
  oldPieces := [piece_1985]
}

def cell_7455 : Cell := { cellDefaults with
  domain := ⟨(13581250000000001 / 50000000000000000 : ℚ), (13584375000000001 / 50000000000000000 : ℚ)⟩
  center := (13582812500000001 / 50000000000000000 : ℚ)
  supportValue := (27023853595989 / 31250000000000 : ℚ)
  supportSlope := (-3814780359794767 / 500000000000000 : ℚ)
  oldCenter := (27023853595989 / 31250000000000 : ℚ)
  oldLo := (17290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1984, piece_1985]
}

def cell_7456 : Cell := { cellDefaults with
  domain := ⟨(13584375000000001 / 50000000000000000 : ℚ), (13587500000000001 / 50000000000000000 : ℚ)⟩
  center := (13585937500000001 / 50000000000000000 : ℚ)
  supportValue := (8642866798955191 / 10000000000000000 : ℚ)
  supportSlope := (-3811411918778873 / 500000000000000 : ℚ)
  oldCenter := (8642866798955191 / 10000000000000000 : ℚ)
  oldLo := (86399999999999999 / 100000000000000000 : ℚ)
  oldHi := (86499999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1983, piece_1984]
}

def cell_7457 : Cell := { cellDefaults with
  domain := ⟨(13587500000000001 / 50000000000000000 : ℚ), (13590625000000001 / 50000000000000000 : ℚ)⟩
  center := (13589062500000001 / 50000000000000000 : ℚ)
  supportValue := (1727620931320153 / 2000000000000000 : ℚ)
  supportSlope := (-761609227966531 / 100000000000000 : ℚ)
  oldCenter := (1727620931320153 / 2000000000000000 : ℚ)
  oldLo := (17270000000000001 / 20000000000000000 : ℚ)
  oldHi := (17290000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1982, piece_1983]
}

def cell_7458 : Cell := { cellDefaults with
  domain := ⟨(13590625000000001 / 50000000000000000 : ℚ), (13593750000000001 / 50000000000000000 : ℚ)⟩
  center := (13592187500000001 / 50000000000000000 : ℚ)
  supportValue := (8633346720335069 / 10000000000000000 : ℚ)
  supportSlope := (-7609366009653229 / 1000000000000000 : ℚ)
  oldCenter := (8633346720335069 / 10000000000000000 : ℚ)
  oldLo := (86299999999999999 / 100000000000000000 : ℚ)
  oldHi := (86399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1981, piece_1982]
}

def cell_7459 : Cell := { cellDefaults with
  domain := ⟨(13593750000000001 / 50000000000000000 : ℚ), (13596875000000001 / 50000000000000000 : ℚ)⟩
  center := (13595312500000001 / 50000000000000000 : ℚ)
  supportValue := (1725718597380253 / 2000000000000000 : ℚ)
  supportSlope := (-15205289955865453 / 2000000000000000 : ℚ)
  oldCenter := (1725718597380253 / 2000000000000000 : ℚ)
  oldLo := (21562500000000001 / 25000000000000000 : ℚ)
  oldHi := (17270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1980, piece_1981]
}

def cell_7460 : Cell := { cellDefaults with
  domain := ⟨(13596875000000001 / 50000000000000000 : ℚ), (13600000000000001 / 50000000000000000 : ℚ)⟩
  center := (13598437500000001 / 50000000000000000 : ℚ)
  supportValue := (862384345297237 / 1000000000000000 : ℚ)
  supportSlope := (-7595929266635437 / 1000000000000000 : ℚ)
  oldCenter := (862384345297237 / 1000000000000000 : ℚ)
  oldLo := (86199999999999999 / 100000000000000000 : ℚ)
  oldHi := (86299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1979, piece_1980]
}

def cell_7461 : Cell := { cellDefaults with
  domain := ⟨(13600000000000001 / 50000000000000000 : ℚ), (13603125000000001 / 50000000000000000 : ℚ)⟩
  r := (10531684239737 / 12500000000000 : ℚ)
  w := (18047110360731 / 10000000000000 : ℚ)
  center := (13601562500000001 / 50000000000000000 : ℚ)
  supportValue := (2159379119303757 / 2500000000000000 : ℚ)
  supportSlope := (-7608928883360733 / 1000000000000000 : ℚ)
  oldCenter := (2159379119303757 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_692
  oldLo := (17270000000000001 / 20000000000000000 : ℚ)
  oldHi := (86399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1982]
}

def cell_7462 : Cell := { cellDefaults with
  domain := ⟨(13603125000000001 / 50000000000000000 : ℚ), (13606250000000001 / 50000000000000000 : ℚ)⟩
  r := (10531684239737 / 12500000000000 : ℚ)
  w := (18047110360731 / 10000000000000 : ℚ)
  center := (13604687500000001 / 50000000000000000 : ℚ)
  supportValue := (8632762988641081 / 10000000000000000 : ℚ)
  supportSlope := (-1900565454211467 / 250000000000000 : ℚ)
  oldCenter := (8632762988641081 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_692
  oldLo := (86299999999999999 / 100000000000000000 : ℚ)
  oldHi := (86399999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1981, piece_1982]
}

def cell_7463 : Cell := { cellDefaults with
  domain := ⟨(13606250000000001 / 50000000000000000 : ℚ), (13609375000000001 / 50000000000000000 : ℚ)⟩
  r := (10531684239737 / 12500000000000 : ℚ)
  w := (18047110360731 / 10000000000000 : ℚ)
  center := (13607812500000001 / 50000000000000000 : ℚ)
  supportValue := (1725602737670567 / 2000000000000000 : ℚ)
  supportSlope := (-237361376936307 / 31250000000000 : ℚ)
  oldCenter := (1725602737670567 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_692
  oldLo := (21562500000000001 / 25000000000000000 : ℚ)
  oldHi := (17270000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1980, piece_1981]
}

def cell_7464 : Cell := { cellDefaults with
  domain := ⟨(13609375000000001 / 50000000000000000 : ℚ), (13612500000000001 / 50000000000000000 : ℚ)⟩
  r := (10531684239737 / 12500000000000 : ℚ)
  w := (18047110360731 / 10000000000000 : ℚ)
  center := (13610937500000001 / 50000000000000000 : ℚ)
  supportValue := (2155817143258781 / 2500000000000000 : ℚ)
  supportSlope := (-3794435791810713 / 500000000000000 : ℚ)
  oldCenter := (2155817143258781 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_692
  oldLo := (86199999999999999 / 100000000000000000 : ℚ)
  oldHi := (86299999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1979, piece_1980]
}

def cell_7465 : Cell := { cellDefaults with
  domain := ⟨(13612500000000001 / 50000000000000000 : ℚ), (13615625000000001 / 50000000000000000 : ℚ)⟩
  r := (10531684239737 / 12500000000000 : ℚ)
  w := (18047110360731 / 10000000000000 : ℚ)
  center := (13614062500000001 / 50000000000000000 : ℚ)
  supportValue := (538657977463949 / 625000000000000 : ℚ)
  supportSlope := (-118471629380279 / 15625000000000 : ℚ)
  oldCenter := (538657977463949 / 625000000000000 : ℚ)
  newCoefficients := coefficients_692
  oldLo := (21537500000000001 / 25000000000000000 : ℚ)
  oldHi := (21562500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1977, piece_1978, piece_1979]
}

def cell_7466 : Cell := { cellDefaults with
  domain := ⟨(13615625000000001 / 50000000000000000 : ℚ), (13618750000000001 / 50000000000000000 : ℚ)⟩
  r := (10531684239737 / 12500000000000 : ℚ)
  w := (18047110360731 / 10000000000000 : ℚ)
  center := (13617187500000001 / 50000000000000000 : ℚ)
  supportValue := (8613790884345377 / 10000000000000000 : ℚ)
  supportSlope := (-3787751059888933 / 500000000000000 : ℚ)
  oldCenter := (8613790884345377 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_692
  oldLo := (86099999999999999 / 100000000000000000 : ℚ)
  oldHi := (861731843575419 / 1000000000000000 : ℚ)
  oldPieces := [piece_1976, piece_1977]
}

def cell_7467 : Cell := { cellDefaults with
  domain := ⟨(13618750000000001 / 50000000000000000 : ℚ), (13621875000000001 / 50000000000000000 : ℚ)⟩
  r := (10531684239737 / 12500000000000 : ℚ)
  w := (18047110360731 / 10000000000000 : ℚ)
  center := (13620312500000001 / 50000000000000000 : ℚ)
  supportValue := (860905830445643 / 1000000000000000 : ℚ)
  supportSlope := (-1513765071000961 / 200000000000000 : ℚ)
  oldCenter := (860905830445643 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_692
  oldLo := (21512500000000001 / 25000000000000000 : ℚ)
  oldHi := (21537500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1975, piece_1976]
}

def cell_7468 : Cell := { cellDefaults with
  domain := ⟨(13621875000000001 / 50000000000000000 : ℚ), (13625000000000001 / 50000000000000000 : ℚ)⟩
  r := (10531684239737 / 12500000000000 : ℚ)
  w := (18047110360731 / 10000000000000 : ℚ)
  center := (13623437500000001 / 50000000000000000 : ℚ)
  supportValue := (8604329896461363 / 10000000000000000 : ℚ)
  supportSlope := (-7562153808390093 / 1000000000000000 : ℚ)
  oldCenter := (8604329896461363 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_692
  oldLo := (85999999999999999 / 100000000000000000 : ℚ)
  oldHi := (86099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1974, piece_1975]
}

def cell_7469 : Cell := { cellDefaults with
  domain := ⟨(13625000000000001 / 50000000000000000 : ℚ), (13628125000000001 / 50000000000000000 : ℚ)⟩
  r := (4209122944801 / 5000000000000 : ℚ)
  w := (9017721980067 / 5000000000000 : ℚ)
  center := (13626562500000001 / 50000000000000000 : ℚ)
  supportValue := (2154486957298739 / 2500000000000000 : ℚ)
  supportSlope := (-7575117517369279 / 1000000000000000 : ℚ)
  oldCenter := (2154486957298739 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_693
  oldLo := (21537500000000001 / 25000000000000000 : ℚ)
  oldHi := (21562500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1977, piece_1978, piece_1979]
}

def cell_7470 : Cell := { cellDefaults with
  domain := ⟨(13628125000000001 / 50000000000000000 : ℚ), (13631250000000001 / 50000000000000000 : ℚ)⟩
  r := (4209122944801 / 5000000000000 : ℚ)
  w := (9017721980067 / 5000000000000 : ℚ)
  center := (13629687500000001 / 50000000000000000 : ℚ)
  supportValue := (1722643096768887 / 2000000000000000 : ℚ)
  supportSlope := (-7568458734819927 / 1000000000000000 : ℚ)
  oldCenter := (1722643096768887 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_693
  oldLo := (86099999999999999 / 100000000000000000 : ℚ)
  oldHi := (861731843575419 / 1000000000000000 : ℚ)
  oldPieces := [piece_1976, piece_1977]
}

def cell_7471 : Cell := { cellDefaults with
  domain := ⟨(13631250000000001 / 50000000000000000 : ℚ), (13634375000000001 / 50000000000000000 : ℚ)⟩
  r := (4209122944801 / 5000000000000 : ℚ)
  w := (9017721980067 / 5000000000000 : ℚ)
  center := (13632812500000001 / 50000000000000000 : ℚ)
  supportValue := (1721697459816409 / 2000000000000000 : ℚ)
  supportSlope := (-7561805291210533 / 1000000000000000 : ℚ)
  oldCenter := (1721697459816409 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_693
  oldLo := (21512500000000001 / 25000000000000000 : ℚ)
  oldHi := (21537500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1975, piece_1976]
}

def cell_7472 : Cell := { cellDefaults with
  domain := ⟨(13634375000000001 / 50000000000000000 : ℚ), (13637500000000001 / 50000000000000000 : ℚ)⟩
  r := (4209122944801 / 5000000000000 : ℚ)
  w := (9017721980067 / 5000000000000 : ℚ)
  center := (13635937500000001 / 50000000000000000 : ℚ)
  supportValue := (8603763271647017 / 10000000000000000 : ℚ)
  supportSlope := (-302206281550923 / 40000000000000 : ℚ)
  oldCenter := (8603763271647017 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_693
  oldLo := (85999999999999999 / 100000000000000000 : ℚ)
  oldHi := (86099999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1974, piece_1975]
}

def cell_7473 : Cell := { cellDefaults with
  domain := ⟨(13637500000000001 / 50000000000000000 : ℚ), (13640625000000001 / 50000000000000000 : ℚ)⟩
  r := (4209122944801 / 5000000000000 : ℚ)
  w := (9017721980067 / 5000000000000 : ℚ)
  center := (13639062500000001 / 50000000000000000 : ℚ)
  supportValue := (4299521699146831 / 5000000000000000 : ℚ)
  supportSlope := (-37742569974721363 / 5000000000000000 : ℚ)
  oldCenter := (4299521699146831 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_693
  oldLo := (21487500000000001 / 25000000000000000 : ℚ)
  oldHi := (21512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1973, piece_1974]
}

def cell_7474 : Cell := { cellDefaults with
  domain := ⟨(13640625000000001 / 50000000000000000 : ℚ), (13643750000000001 / 50000000000000000 : ℚ)⟩
  r := (4209122944801 / 5000000000000 : ℚ)
  w := (9017721980067 / 5000000000000 : ℚ)
  center := (13642187500000001 / 50000000000000000 : ℚ)
  supportValue := (13750924281237 / 16000000000000 : ℚ)
  supportSlope := (-7541876122861169 / 1000000000000000 : ℚ)
  oldCenter := (13750924281237 / 16000000000000 : ℚ)
  newCoefficients := coefficients_693
  oldLo := (85899999999999999 / 100000000000000000 : ℚ)
  oldHi := (85999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1972, piece_1973]
}

def cell_7475 : Cell := { cellDefaults with
  domain := ⟨(13643750000000001 / 50000000000000000 : ℚ), (13646875000000001 / 50000000000000000 : ℚ)⟩
  r := (4209122944801 / 5000000000000 : ℚ)
  w := (9017721980067 / 5000000000000 : ℚ)
  center := (13645312500000001 / 50000000000000000 : ℚ)
  supportValue := (8589616100860399 / 10000000000000000 : ℚ)
  supportSlope := (-3767621714425573 / 500000000000000 : ℚ)
  oldCenter := (8589616100860399 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_693
  oldLo := (21462500000000001 / 25000000000000000 : ℚ)
  oldHi := (21487500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1971, piece_1972]
}

def cell_7476 : Cell := { cellDefaults with
  domain := ⟨(13646875000000001 / 50000000000000000 : ℚ), (13650000000000001 / 50000000000000000 : ℚ)⟩
  r := (4209122944801 / 5000000000000 : ℚ)
  w := (9017721980067 / 5000000000000 : ℚ)
  center := (13648437500000001 / 50000000000000000 : ℚ)
  supportValue := (8584908670347219 / 10000000000000000 : ℚ)
  supportSlope := (-941076981494593 / 125000000000000 : ℚ)
  oldCenter := (8584908670347219 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_693
  oldLo := (42899999999999999 / 50000000000000000 : ℚ)
  oldHi := (85899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1970, piece_1971]
}

def cell_7477 : Cell := { cellDefaults with
  domain := ⟨(13650000000000001 / 50000000000000000 : ℚ), (13653125000000001 / 50000000000000000 : ℚ)⟩
  r := (16822322213999 / 20000000000000 : ℚ)
  w := (18023804954901 / 10000000000000 : ℚ)
  center := (13651562500000001 / 50000000000000000 : ℚ)
  supportValue := (4299236052615621 / 5000000000000000 : ℚ)
  supportSlope := (-1508303929386301 / 200000000000000 : ℚ)
  oldCenter := (4299236052615621 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_694
  oldLo := (21487500000000001 / 25000000000000000 : ℚ)
  oldHi := (21512500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1973, piece_1974]
}

def cell_7478 : Cell := { cellDefaults with
  domain := ⟨(13653125000000001 / 50000000000000000 : ℚ), (13656250000000001 / 50000000000000000 : ℚ)⟩
  r := (16822322213999 / 20000000000000 : ℚ)
  w := (18023804954901 / 10000000000000 : ℚ)
  center := (13654687500000001 / 50000000000000000 : ℚ)
  supportValue := (429688037450279 / 500000000000000 : ℚ)
  supportSlope := (-117732801415249 / 15625000000000 : ℚ)
  oldCenter := (429688037450279 / 500000000000000 : ℚ)
  newCoefficients := coefficients_694
  oldLo := (85899999999999999 / 100000000000000000 : ℚ)
  oldHi := (85999999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1972, piece_1973]
}

def cell_7479 : Cell := { cellDefaults with
  domain := ⟨(13656250000000001 / 50000000000000000 : ℚ), (13659375000000001 / 50000000000000000 : ℚ)⟩
  r := (16822322213999 / 20000000000000 : ℚ)
  w := (18023804954901 / 10000000000000 : ℚ)
  center := (13657812500000001 / 50000000000000000 : ℚ)
  supportValue := (858905352944363 / 1000000000000000 : ℚ)
  supportSlope := (-7528284087982229 / 1000000000000000 : ℚ)
  oldCenter := (858905352944363 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_694
  oldLo := (21462500000000001 / 25000000000000000 : ℚ)
  oldHi := (21487500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1971, piece_1972]
}

def cell_7480 : Cell := { cellDefaults with
  domain := ⟨(13659375000000001 / 50000000000000000 : ℚ), (13662500000000001 / 50000000000000000 : ℚ)⟩
  r := (16822322213999 / 20000000000000 : ℚ)
  w := (18023804954901 / 10000000000000 : ℚ)
  center := (13660937500000001 / 50000000000000000 : ℚ)
  supportValue := (4292175221677647 / 5000000000000000 : ℚ)
  supportSlope := (-3008669592128399 / 400000000000000 : ℚ)
  oldCenter := (4292175221677647 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_694
  oldLo := (42899999999999999 / 50000000000000000 : ℚ)
  oldHi := (85899999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1970, piece_1971]
}

def cell_7481 : Cell := { cellDefaults with
  domain := ⟨(13662500000000001 / 50000000000000000 : ℚ), (13665625000000001 / 50000000000000000 : ℚ)⟩
  r := (16822322213999 / 20000000000000 : ℚ)
  w := (18023804954901 / 10000000000000 : ℚ)
  center := (13664062500000001 / 50000000000000000 : ℚ)
  supportValue := (8579651487571539 / 10000000000000000 : ℚ)
  supportSlope := (-15030137865764459 / 2000000000000000 : ℚ)
  oldCenter := (8579651487571539 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_694
  oldLo := (21437500000000001 / 25000000000000000 : ℚ)
  oldHi := (21462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1969, piece_1970]
}

def cell_7482 : Cell := { cellDefaults with
  domain := ⟨(13665625000000001 / 50000000000000000 : ℚ), (13668750000000001 / 50000000000000000 : ℚ)⟩
  r := (16822322213999 / 20000000000000 : ℚ)
  w := (18023804954901 / 10000000000000 : ℚ)
  center := (13667187500000001 / 50000000000000000 : ℚ)
  supportValue := (4287478329417453 / 5000000000000000 : ℚ)
  supportSlope := (-750846918674597 / 100000000000000 : ℚ)
  oldCenter := (4287478329417453 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_694
  oldLo := (42849999999999999 / 50000000000000000 : ℚ)
  oldHi := (42899999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1968, piece_1969]
}

def cell_7483 : Cell := { cellDefaults with
  domain := ⟨(13668750000000001 / 50000000000000000 : ℚ), (13671875000000001 / 50000000000000000 : ℚ)⟩
  r := (16822322213999 / 20000000000000 : ℚ)
  w := (18023804954901 / 10000000000000 : ℚ)
  center := (13670312500000001 / 50000000000000000 : ℚ)
  supportValue := (1071283237695609 / 1250000000000000 : ℚ)
  supportSlope := (-375093725093123 / 50000000000000 : ℚ)
  oldCenter := (1071283237695609 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_694
  oldLo := (21412500000000001 / 25000000000000000 : ℚ)
  oldHi := (21437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1967, piece_1968]
}

def cell_7484 : Cell := { cellDefaults with
  domain := ⟨(13671875000000001 / 50000000000000000 : ℚ), (13675000000000001 / 50000000000000000 : ℚ)⟩
  r := (16822322213999 / 20000000000000 : ℚ)
  w := (18023804954901 / 10000000000000 : ℚ)
  center := (13673437500000001 / 50000000000000000 : ℚ)
  supportValue := (8565579253283727 / 10000000000000000 : ℚ)
  supportSlope := (-7495284891636089 / 1000000000000000 : ℚ)
  oldCenter := (8565579253283727 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_694
  oldLo := (8562011173184357 / 10000000000000000 : ℚ)
  oldHi := (42849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1966, piece_1967]
}

def cell_7485 : Cell := { cellDefaults with
  domain := ⟨(13675000000000001 / 50000000000000000 : ℚ), (13678125000000001 / 50000000000000000 : ℚ)⟩
  r := (84040928915983 / 100000000000000 : ℚ)
  w := (9006096827999 / 5000000000000 : ℚ)
  center := (13676562500000001 / 50000000000000000 : ℚ)
  supportValue := (8579088537118977 / 10000000000000000 : ℚ)
  supportSlope := (-15016252219950843 / 2000000000000000 : ℚ)
  oldCenter := (8579088537118977 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_695
  oldLo := (21437500000000001 / 25000000000000000 : ℚ)
  oldHi := (21462500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1969, piece_1970]
}

def cell_7486 : Cell := { cellDefaults with
  domain := ⟨(13678125000000001 / 50000000000000000 : ℚ), (13681250000000001 / 50000000000000000 : ℚ)⟩
  r := (84040928915983 / 100000000000000 : ℚ)
  w := (9006096827999 / 5000000000000 : ℚ)
  center := (13679687500000001 / 50000000000000000 : ℚ)
  supportValue := (1714879608067611 / 2000000000000000 : ℚ)
  supportSlope := (-9376938375806887 / 1250000000000000 : ℚ)
  oldCenter := (1714879608067611 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_695
  oldLo := (42849999999999999 / 50000000000000000 : ℚ)
  oldHi := (42899999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1968, piece_1969]
}

def cell_7487 : Cell := { cellDefaults with
  domain := ⟨(13681250000000001 / 50000000000000000 : ℚ), (13684375000000001 / 50000000000000000 : ℚ)⟩
  r := (84040928915983 / 100000000000000 : ℚ)
  w := (9006096827999 / 5000000000000 : ℚ)
  center := (13682812500000001 / 50000000000000000 : ℚ)
  supportValue := (8569711652194831 / 10000000000000000 : ℚ)
  supportSlope := (-3747490161813971 / 500000000000000 : ℚ)
  oldCenter := (8569711652194831 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_695
  oldLo := (21412500000000001 / 25000000000000000 : ℚ)
  oldHi := (21437500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1967, piece_1968]
}

def cell_7488 : Cell := { cellDefaults with
  domain := ⟨(13684375000000001 / 50000000000000000 : ℚ), (13687500000000001 / 50000000000000000 : ℚ)⟩
  r := (84040928915983 / 100000000000000 : ℚ)
  w := (9006096827999 / 5000000000000 : ℚ)
  center := (13685937500000001 / 50000000000000000 : ℚ)
  supportValue := (8565029365292253 / 10000000000000000 : ℚ)
  supportSlope := (-7488414993066073 / 1000000000000000 : ℚ)
  oldCenter := (8565029365292253 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_695
  oldLo := (8562011173184357 / 10000000000000000 : ℚ)
  oldHi := (42849999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1966, piece_1967]
}

def cell_7489 : Cell := { cellDefaults with
  domain := ⟨(13687500000000001 / 50000000000000000 : ℚ), (13690625000000001 / 50000000000000000 : ℚ)⟩
  r := (84040928915983 / 100000000000000 : ℚ)
  w := (9006096827999 / 5000000000000 : ℚ)
  center := (13689062500000001 / 50000000000000000 : ℚ)
  supportValue := (1712070223843471 / 2000000000000000 : ℚ)
  supportSlope := (-7481854552363387 / 1000000000000000 : ℚ)
  oldCenter := (1712070223843471 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_695
  oldLo := (21387500000000001 / 25000000000000000 : ℚ)
  oldHi := (21412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1964, piece_1965, piece_1966]
}

def cell_7490 : Cell := { cellDefaults with
  domain := ⟨(13690625000000001 / 50000000000000000 : ℚ), (13693750000000001 / 50000000000000000 : ℚ)⟩
  r := (84040928915983 / 100000000000000 : ℚ)
  w := (9006096827999 / 5000000000000 : ℚ)
  center := (13692187500000001 / 50000000000000000 : ℚ)
  supportValue := (1711135394254291 / 2000000000000000 : ℚ)
  supportSlope := (-7475299216942233 / 1000000000000000 : ℚ)
  oldCenter := (1711135394254291 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_695
  oldLo := (42749999999999999 / 50000000000000000 : ℚ)
  oldHi := (42799999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1963, piece_1964]
}

def cell_7491 : Cell := { cellDefaults with
  domain := ⟨(13693750000000001 / 50000000000000000 : ℚ), (13696875000000001 / 50000000000000000 : ℚ)⟩
  r := (84040928915983 / 100000000000000 : ℚ)
  w := (9006096827999 / 5000000000000 : ℚ)
  center := (13695312500000001 / 50000000000000000 : ℚ)
  supportValue := (4275503459124973 / 5000000000000000 : ℚ)
  supportSlope := (-7468748940468117 / 1000000000000000 : ℚ)
  oldCenter := (4275503459124973 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_695
  oldLo := (21362500000000001 / 25000000000000000 : ℚ)
  oldHi := (21387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1962, piece_1963]
}

def cell_7492 : Cell := { cellDefaults with
  domain := ⟨(13696875000000001 / 50000000000000000 : ℚ), (13700000000000001 / 50000000000000000 : ℚ)⟩
  r := (84040928915983 / 100000000000000 : ℚ)
  w := (9006096827999 / 5000000000000 : ℚ)
  center := (13698437500000001 / 50000000000000000 : ℚ)
  supportValue := (8546340957002629 / 10000000000000000 : ℚ)
  supportSlope := (-746220370297479 / 100000000000000 : ℚ)
  oldCenter := (8546340957002629 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_695
  oldLo := (42699999999999999 / 50000000000000000 : ℚ)
  oldHi := (42749999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1961, piece_1962]
}

def cell_7493 : Cell := { cellDefaults with
  domain := ⟨(13700000000000001 / 50000000000000000 : ℚ), (13703125000000001 / 50000000000000000 : ℚ)⟩
  r := (1679408239659 / 2000000000000 : ℚ)
  w := (1800061039401 / 1000000000000 : ℚ)
  center := (13701562500000001 / 50000000000000000 : ℚ)
  supportValue := (4279898071677941 / 5000000000000000 : ℚ)
  supportSlope := (-3737486503567311 / 500000000000000 : ℚ)
  oldCenter := (4279898071677941 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_696
  oldLo := (21387500000000001 / 25000000000000000 : ℚ)
  oldHi := (21412500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1964, piece_1965, piece_1966]
}

def cell_7494 : Cell := { cellDefaults with
  domain := ⟨(13703125000000001 / 50000000000000000 : ℚ), (13706250000000001 / 50000000000000000 : ℚ)⟩
  r := (1679408239659 / 2000000000000 : ℚ)
  w := (1800061039401 / 1000000000000 : ℚ)
  center := (13704687500000001 / 50000000000000000 : ℚ)
  supportValue := (8555126332675603 / 10000000000000000 : ℚ)
  supportSlope := (-933554928588709 / 125000000000000 : ℚ)
  oldCenter := (8555126332675603 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_696
  oldLo := (42749999999999999 / 50000000000000000 : ℚ)
  oldHi := (42799999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1963, piece_1964]
}

def cell_7495 : Cell := { cellDefaults with
  domain := ⟨(13706250000000001 / 50000000000000000 : ℚ), (13709375000000001 / 50000000000000000 : ℚ)⟩
  r := (1679408239659 / 2000000000000 : ℚ)
  w := (1800061039401 / 1000000000000 : ℚ)
  center := (13707812500000001 / 50000000000000000 : ℚ)
  supportValue := (8550460559943479 / 10000000000000000 : ℚ)
  supportSlope := (-3730955432931893 / 500000000000000 : ℚ)
  oldCenter := (8550460559943479 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_696
  oldLo := (21362500000000001 / 25000000000000000 : ℚ)
  oldHi := (21387500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1962, piece_1963]
}

def cell_7496 : Cell := { cellDefaults with
  domain := ⟨(13709375000000001 / 50000000000000000 : ℚ), (13712500000000001 / 50000000000000000 : ℚ)⟩
  r := (1679408239659 / 2000000000000 : ℚ)
  w := (1800061039401 / 1000000000000 : ℚ)
  center := (13710937500000001 / 50000000000000000 : ℚ)
  supportValue := (267056214544419 / 312500000000000 : ℚ)
  supportSlope := (-372769365834813 / 50000000000000 : ℚ)
  oldCenter := (267056214544419 / 312500000000000 : ℚ)
  newCoefficients := coefficients_696
  oldLo := (42699999999999999 / 50000000000000000 : ℚ)
  oldHi := (42749999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1961, piece_1962]
}

def cell_7497 : Cell := { cellDefaults with
  domain := ⟨(13712500000000001 / 50000000000000000 : ℚ), (13715625000000001 / 50000000000000000 : ℚ)⟩
  r := (1679408239659 / 2000000000000 : ℚ)
  w := (1800061039401 / 1000000000000 : ℚ)
  center := (13714062500000001 / 50000000000000000 : ℚ)
  supportValue := (1708228249195211 / 2000000000000000 : ℚ)
  supportSlope := (-1489773753468171 / 200000000000000 : ℚ)
  oldCenter := (1708228249195211 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_696
  oldLo := (21337500000000001 / 25000000000000000 : ℚ)
  oldHi := (21362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1960, piece_1961]
}

def cell_7498 : Cell := { cellDefaults with
  domain := ⟨(13715625000000001 / 50000000000000000 : ℚ), (13718750000000001 / 50000000000000000 : ℚ)⟩
  r := (1679408239659 / 2000000000000 : ℚ)
  w := (1800061039401 / 1000000000000 : ℚ)
  center := (13717187500000001 / 50000000000000000 : ℚ)
  supportValue := (8536487698479823 / 10000000000000000 : ℚ)
  supportSlope := (-7442355226967123 / 1000000000000000 : ℚ)
  oldCenter := (8536487698479823 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_696
  oldLo := (42649999999999999 / 50000000000000000 : ℚ)
  oldHi := (42699999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1959, piece_1960]
}

def cell_7499 : Cell := { cellDefaults with
  domain := ⟨(13718750000000001 / 50000000000000000 : ℚ), (13721875000000001 / 50000000000000000 : ℚ)⟩
  r := (1679408239659 / 2000000000000 : ℚ)
  w := (1800061039401 / 1000000000000 : ℚ)
  center := (13720312500000001 / 50000000000000000 : ℚ)
  supportValue := (4265919109899959 / 5000000000000000 : ℚ)
  supportSlope := (-7435846701156379 / 1000000000000000 : ℚ)
  oldCenter := (4265919109899959 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_696
  oldLo := (21312500000000001 / 25000000000000000 : ℚ)
  oldHi := (21337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1958, piece_1959]
}

theorem check_7450 : cell_7450.check = true := by
  decide +kernel

theorem check_7451 : cell_7451.check = true := by
  decide +kernel

theorem check_7452 : cell_7452.check = true := by
  decide +kernel

theorem check_7453 : cell_7453.check = true := by
  decide +kernel

theorem check_7454 : cell_7454.check = true := by
  decide +kernel

theorem check_7455 : cell_7455.check = true := by
  decide +kernel

theorem check_7456 : cell_7456.check = true := by
  decide +kernel

theorem check_7457 : cell_7457.check = true := by
  decide +kernel

theorem check_7458 : cell_7458.check = true := by
  decide +kernel

theorem check_7459 : cell_7459.check = true := by
  decide +kernel

theorem check_7460 : cell_7460.check = true := by
  decide +kernel

theorem check_7461 : cell_7461.check = true := by
  decide +kernel

theorem check_7462 : cell_7462.check = true := by
  decide +kernel

theorem check_7463 : cell_7463.check = true := by
  decide +kernel

theorem check_7464 : cell_7464.check = true := by
  decide +kernel

theorem check_7465 : cell_7465.check = true := by
  decide +kernel

theorem check_7466 : cell_7466.check = true := by
  decide +kernel

theorem check_7467 : cell_7467.check = true := by
  decide +kernel

theorem check_7468 : cell_7468.check = true := by
  decide +kernel

theorem check_7469 : cell_7469.check = true := by
  decide +kernel

theorem check_7470 : cell_7470.check = true := by
  decide +kernel

theorem check_7471 : cell_7471.check = true := by
  decide +kernel

theorem check_7472 : cell_7472.check = true := by
  decide +kernel

theorem check_7473 : cell_7473.check = true := by
  decide +kernel

theorem check_7474 : cell_7474.check = true := by
  decide +kernel

theorem check_7475 : cell_7475.check = true := by
  decide +kernel

theorem check_7476 : cell_7476.check = true := by
  decide +kernel

theorem check_7477 : cell_7477.check = true := by
  decide +kernel

theorem check_7478 : cell_7478.check = true := by
  decide +kernel

theorem check_7479 : cell_7479.check = true := by
  decide +kernel

theorem check_7480 : cell_7480.check = true := by
  decide +kernel

theorem check_7481 : cell_7481.check = true := by
  decide +kernel

theorem check_7482 : cell_7482.check = true := by
  decide +kernel

theorem check_7483 : cell_7483.check = true := by
  decide +kernel

theorem check_7484 : cell_7484.check = true := by
  decide +kernel

theorem check_7485 : cell_7485.check = true := by
  decide +kernel

theorem check_7486 : cell_7486.check = true := by
  decide +kernel

theorem check_7487 : cell_7487.check = true := by
  decide +kernel

theorem check_7488 : cell_7488.check = true := by
  decide +kernel

theorem check_7489 : cell_7489.check = true := by
  decide +kernel

theorem check_7490 : cell_7490.check = true := by
  decide +kernel

theorem check_7491 : cell_7491.check = true := by
  decide +kernel

theorem check_7492 : cell_7492.check = true := by
  decide +kernel

theorem check_7493 : cell_7493.check = true := by
  decide +kernel

theorem check_7494 : cell_7494.check = true := by
  decide +kernel

theorem check_7495 : cell_7495.check = true := by
  decide +kernel

theorem check_7496 : cell_7496.check = true := by
  decide +kernel

theorem check_7497 : cell_7497.check = true := by
  decide +kernel

theorem check_7498 : cell_7498.check = true := by
  decide +kernel

theorem check_7499 : cell_7499.check = true := by
  decide +kernel

def cells : List Cell := [cell_7450, cell_7451, cell_7452, cell_7453, cell_7454, cell_7455, cell_7456, cell_7457, cell_7458, cell_7459, cell_7460, cell_7461, cell_7462, cell_7463, cell_7464, cell_7465, cell_7466, cell_7467, cell_7468, cell_7469, cell_7470, cell_7471, cell_7472, cell_7473, cell_7474, cell_7475, cell_7476, cell_7477, cell_7478, cell_7479, cell_7480, cell_7481, cell_7482, cell_7483, cell_7484, cell_7485, cell_7486, cell_7487, cell_7488, cell_7489, cell_7490, cell_7491, cell_7492, cell_7493, cell_7494, cell_7495, cell_7496, cell_7497, cell_7498, cell_7499]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7450, check_7451, check_7452, check_7453, check_7454, check_7455, check_7456, check_7457, check_7458, check_7459, check_7460, check_7461, check_7462, check_7463, check_7464, check_7465, check_7466, check_7467, check_7468, check_7469, check_7470, check_7471, check_7472, check_7473, check_7474, check_7475, check_7476, check_7477, check_7478, check_7479, check_7480, check_7481, check_7482, check_7483, check_7484, check_7485, check_7486, check_7487, check_7488, check_7489, check_7490, check_7491, check_7492, check_7493, check_7494, check_7495, check_7496, check_7497, check_7498, check_7499, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0149

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0149
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0149
open AnalyticBounds.ExpressionCertificate

theorem linked_7450 : Linked cell_7450 pieces := by
  link_source cell_7450 with piece_690 using piece_690_mem, ⟨piece_1985_mem, piece_1986_mem⟩

theorem linked_7451 : Linked cell_7451 pieces := by
  link_source cell_7451 with piece_690 using piece_690_mem, ⟨piece_1984_mem, piece_1985_mem⟩

theorem linked_7452 : Linked cell_7452 pieces := by
  link_source cell_7452 with piece_690 using piece_690_mem, ⟨piece_1983_mem, piece_1984_mem⟩

theorem linked_7453 : Linked cell_7453 pieces := by
  link_source cell_7453 with piece_691 using piece_691_mem, ⟨piece_1985_mem, piece_1986_mem⟩

theorem linked_7454 : Linked cell_7454 pieces := by
  link_source cell_7454 with piece_691 using piece_691_mem, piece_1985_mem

theorem linked_7455 : Linked cell_7455 pieces := by
  link_source cell_7455 with piece_691 using piece_691_mem, ⟨piece_1984_mem, piece_1985_mem⟩

theorem linked_7456 : Linked cell_7456 pieces := by
  link_source cell_7456 with piece_691 using piece_691_mem, ⟨piece_1983_mem, piece_1984_mem⟩

theorem linked_7457 : Linked cell_7457 pieces := by
  link_source cell_7457 with piece_691 using piece_691_mem, ⟨piece_1982_mem, piece_1983_mem⟩

theorem linked_7458 : Linked cell_7458 pieces := by
  link_source cell_7458 with piece_691 using piece_691_mem, ⟨piece_1981_mem, piece_1982_mem⟩

theorem linked_7459 : Linked cell_7459 pieces := by
  link_source cell_7459 with piece_691 using piece_691_mem, ⟨piece_1980_mem, piece_1981_mem⟩

theorem linked_7460 : Linked cell_7460 pieces := by
  link_source cell_7460 with piece_691 using piece_691_mem, ⟨piece_1979_mem, piece_1980_mem⟩

theorem linked_7461 : Linked cell_7461 pieces := by
  link_source cell_7461 with piece_692 using piece_692_mem, piece_1982_mem

theorem linked_7462 : Linked cell_7462 pieces := by
  link_source cell_7462 with piece_692 using piece_692_mem, ⟨piece_1981_mem, piece_1982_mem⟩

theorem linked_7463 : Linked cell_7463 pieces := by
  link_source cell_7463 with piece_692 using piece_692_mem, ⟨piece_1980_mem, piece_1981_mem⟩

theorem linked_7464 : Linked cell_7464 pieces := by
  link_source cell_7464 with piece_692 using piece_692_mem, ⟨piece_1979_mem, piece_1980_mem⟩

theorem linked_7465 : Linked cell_7465 pieces := by
  link_source cell_7465 with piece_692 using piece_692_mem, ⟨piece_1977_mem, ⟨piece_1978_mem, piece_1979_mem⟩⟩

theorem linked_7466 : Linked cell_7466 pieces := by
  link_source cell_7466 with piece_692 using piece_692_mem, ⟨piece_1976_mem, piece_1977_mem⟩

theorem linked_7467 : Linked cell_7467 pieces := by
  link_source cell_7467 with piece_692 using piece_692_mem, ⟨piece_1975_mem, piece_1976_mem⟩

theorem linked_7468 : Linked cell_7468 pieces := by
  link_source cell_7468 with piece_692 using piece_692_mem, ⟨piece_1974_mem, piece_1975_mem⟩

theorem linked_7469 : Linked cell_7469 pieces := by
  link_source cell_7469 with piece_693 using piece_693_mem, ⟨piece_1977_mem, ⟨piece_1978_mem, piece_1979_mem⟩⟩

theorem linked_7470 : Linked cell_7470 pieces := by
  link_source cell_7470 with piece_693 using piece_693_mem, ⟨piece_1976_mem, piece_1977_mem⟩

theorem linked_7471 : Linked cell_7471 pieces := by
  link_source cell_7471 with piece_693 using piece_693_mem, ⟨piece_1975_mem, piece_1976_mem⟩

theorem linked_7472 : Linked cell_7472 pieces := by
  link_source cell_7472 with piece_693 using piece_693_mem, ⟨piece_1974_mem, piece_1975_mem⟩

theorem linked_7473 : Linked cell_7473 pieces := by
  link_source cell_7473 with piece_693 using piece_693_mem, ⟨piece_1973_mem, piece_1974_mem⟩

theorem linked_7474 : Linked cell_7474 pieces := by
  link_source cell_7474 with piece_693 using piece_693_mem, ⟨piece_1972_mem, piece_1973_mem⟩

theorem linked_7475 : Linked cell_7475 pieces := by
  link_source cell_7475 with piece_693 using piece_693_mem, ⟨piece_1971_mem, piece_1972_mem⟩

theorem linked_7476 : Linked cell_7476 pieces := by
  link_source cell_7476 with piece_693 using piece_693_mem, ⟨piece_1970_mem, piece_1971_mem⟩

theorem linked_7477 : Linked cell_7477 pieces := by
  link_source cell_7477 with piece_694 using piece_694_mem, ⟨piece_1973_mem, piece_1974_mem⟩

theorem linked_7478 : Linked cell_7478 pieces := by
  link_source cell_7478 with piece_694 using piece_694_mem, ⟨piece_1972_mem, piece_1973_mem⟩

theorem linked_7479 : Linked cell_7479 pieces := by
  link_source cell_7479 with piece_694 using piece_694_mem, ⟨piece_1971_mem, piece_1972_mem⟩

theorem linked_7480 : Linked cell_7480 pieces := by
  link_source cell_7480 with piece_694 using piece_694_mem, ⟨piece_1970_mem, piece_1971_mem⟩

theorem linked_7481 : Linked cell_7481 pieces := by
  link_source cell_7481 with piece_694 using piece_694_mem, ⟨piece_1969_mem, piece_1970_mem⟩

theorem linked_7482 : Linked cell_7482 pieces := by
  link_source cell_7482 with piece_694 using piece_694_mem, ⟨piece_1968_mem, piece_1969_mem⟩

theorem linked_7483 : Linked cell_7483 pieces := by
  link_source cell_7483 with piece_694 using piece_694_mem, ⟨piece_1967_mem, piece_1968_mem⟩

theorem linked_7484 : Linked cell_7484 pieces := by
  link_source cell_7484 with piece_694 using piece_694_mem, ⟨piece_1966_mem, piece_1967_mem⟩

theorem linked_7485 : Linked cell_7485 pieces := by
  link_source cell_7485 with piece_695 using piece_695_mem, ⟨piece_1969_mem, piece_1970_mem⟩

theorem linked_7486 : Linked cell_7486 pieces := by
  link_source cell_7486 with piece_695 using piece_695_mem, ⟨piece_1968_mem, piece_1969_mem⟩

theorem linked_7487 : Linked cell_7487 pieces := by
  link_source cell_7487 with piece_695 using piece_695_mem, ⟨piece_1967_mem, piece_1968_mem⟩

theorem linked_7488 : Linked cell_7488 pieces := by
  link_source cell_7488 with piece_695 using piece_695_mem, ⟨piece_1966_mem, piece_1967_mem⟩

theorem linked_7489 : Linked cell_7489 pieces := by
  link_source cell_7489 with piece_695 using piece_695_mem, ⟨piece_1964_mem, ⟨piece_1965_mem, piece_1966_mem⟩⟩

theorem linked_7490 : Linked cell_7490 pieces := by
  link_source cell_7490 with piece_695 using piece_695_mem, ⟨piece_1963_mem, piece_1964_mem⟩

theorem linked_7491 : Linked cell_7491 pieces := by
  link_source cell_7491 with piece_695 using piece_695_mem, ⟨piece_1962_mem, piece_1963_mem⟩

theorem linked_7492 : Linked cell_7492 pieces := by
  link_source cell_7492 with piece_695 using piece_695_mem, ⟨piece_1961_mem, piece_1962_mem⟩

theorem linked_7493 : Linked cell_7493 pieces := by
  link_source cell_7493 with piece_696 using piece_696_mem, ⟨piece_1964_mem, ⟨piece_1965_mem, piece_1966_mem⟩⟩

theorem linked_7494 : Linked cell_7494 pieces := by
  link_source cell_7494 with piece_696 using piece_696_mem, ⟨piece_1963_mem, piece_1964_mem⟩

theorem linked_7495 : Linked cell_7495 pieces := by
  link_source cell_7495 with piece_696 using piece_696_mem, ⟨piece_1962_mem, piece_1963_mem⟩

theorem linked_7496 : Linked cell_7496 pieces := by
  link_source cell_7496 with piece_696 using piece_696_mem, ⟨piece_1961_mem, piece_1962_mem⟩

theorem linked_7497 : Linked cell_7497 pieces := by
  link_source cell_7497 with piece_696 using piece_696_mem, ⟨piece_1960_mem, piece_1961_mem⟩

theorem linked_7498 : Linked cell_7498 pieces := by
  link_source cell_7498 with piece_696 using piece_696_mem, ⟨piece_1959_mem, piece_1960_mem⟩

theorem linked_7499 : Linked cell_7499 pieces := by
  link_source cell_7499 with piece_696 using piece_696_mem, ⟨piece_1958_mem, piece_1959_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0149.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0149.cells,List.forall_mem_cons]
  exact ⟨linked_7450, linked_7451, linked_7452, linked_7453, linked_7454, linked_7455, linked_7456, linked_7457, linked_7458, linked_7459, linked_7460, linked_7461, linked_7462, linked_7463, linked_7464, linked_7465, linked_7466, linked_7467, linked_7468, linked_7469, linked_7470, linked_7471, linked_7472, linked_7473, linked_7474, linked_7475, linked_7476, linked_7477, linked_7478, linked_7479, linked_7480, linked_7481, linked_7482, linked_7483, linked_7484, linked_7485, linked_7486, linked_7487, linked_7488, linked_7489, linked_7490, linked_7491, linked_7492, linked_7493, linked_7494, linked_7495, linked_7496, linked_7497, linked_7498, linked_7499, by simp⟩

theorem covered : covers (13565625000000001 / 50000000000000000 : ℚ) (13721875000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0149.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0149
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0150
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(13721875000000001 / 50000000000000000 : ℚ), (13725000000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (83829869531667 / 100000000000000 : ℚ)
  w := (17977527282811 / 10000000000000 : ℚ)
  center := (13723437500000001 / 50000000000000000 : ℚ)
  supportValue := (8527192806800673 / 10000000000000000 : ℚ)
  supportSlope := (-14858686288668821 / 2000000000000000 : ℚ)
  oldCenter := (8527192806800673 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_697
  oldLo := (85150000000000003 / 100000000000000000 : ℚ)
  oldHi := (85200000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1957, piece_1958]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7500 : Cell := { cellDefaults with
  r := (1679408239659 / 2000000000000 : ℚ)
  w := (1800061039401 / 1000000000000 : ℚ)
  newCoefficients := coefficients_696
  oldLo := (85200000000000009 / 100000000000000000 : ℚ)
  oldHi := (42649999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1957, piece_1958]
}

def cell_7501 : Cell := { cellDefaults with
  domain := ⟨(13725000000000001 / 50000000000000000 : ℚ), (13728125000000001 / 50000000000000000 : ℚ)⟩
  r := (2621876854119 / 3125000000000 : ℚ)
  w := (17989054853723 / 10000000000000 : ℚ)
  center := (13726562500000001 / 50000000000000000 : ℚ)
  supportValue := (8540594262096909 / 10000000000000000 : ℚ)
  supportSlope := (-7442050050915583 / 1000000000000000 : ℚ)
  oldCenter := (8540594262096909 / 10000000000000000 : ℚ)
  oldLo := (21337500000000001 / 25000000000000000 : ℚ)
  oldHi := (21362500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1960, piece_1961]
}

def cell_7502 : Cell := { cellDefaults with
  domain := ⟨(13728125000000001 / 50000000000000000 : ℚ), (13731250000000001 / 50000000000000000 : ℚ)⟩
  r := (2621876854119 / 3125000000000 : ℚ)
  w := (17989054853723 / 10000000000000 : ℚ)
  center := (13729687500000001 / 50000000000000000 : ℚ)
  supportValue := (1066993121236529 / 1250000000000000 : ℚ)
  supportSlope := (-7435556068131177 / 1000000000000000 : ℚ)
  oldCenter := (1066993121236529 / 1250000000000000 : ℚ)
  oldLo := (42649999999999999 / 50000000000000000 : ℚ)
  oldHi := (42699999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1959, piece_1960]
}

def cell_7503 : Cell := { cellDefaults with
  domain := ⟨(13731250000000001 / 50000000000000000 : ℚ), (13734375000000001 / 50000000000000000 : ℚ)⟩
  r := (2621876854119 / 3125000000000 : ℚ)
  w := (17989054853723 / 10000000000000 : ℚ)
  center := (13732812500000001 / 50000000000000000 : ℚ)
  supportValue := (1706259946857277 / 2000000000000000 : ℚ)
  supportSlope := (-3714533539708853 / 500000000000000 : ℚ)
  oldCenter := (1706259946857277 / 2000000000000000 : ℚ)
  oldLo := (21312500000000001 / 25000000000000000 : ℚ)
  oldHi := (21337500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1958, piece_1959]
}

def cell_7504 : Cell := { cellDefaults with
  domain := ⟨(13734375000000001 / 50000000000000000 : ℚ), (13737500000000001 / 50000000000000000 : ℚ)⟩
  r := (2621876854119 / 3125000000000 : ℚ)
  w := (17989054853723 / 10000000000000 : ℚ)
  center := (13735937500000001 / 50000000000000000 : ℚ)
  supportValue := (4263329276080937 / 5000000000000000 : ℚ)
  supportSlope := (-148451660617539 / 20000000000000 : ℚ)
  oldCenter := (4263329276080937 / 5000000000000000 : ℚ)
  oldLo := (85200000000000009 / 100000000000000000 : ℚ)
  oldHi := (42649999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1957, piece_1958]
}

def cell_7505 : Cell := { cellDefaults with
  domain := ⟨(13737500000000001 / 50000000000000000 : ℚ), (13740625000000001 / 50000000000000000 : ℚ)⟩
  r := (2621876854119 / 3125000000000 : ℚ)
  w := (17989054853723 / 10000000000000 : ℚ)
  center := (13739062500000001 / 50000000000000000 : ℚ)
  supportValue := (1065252677554273 / 1250000000000000 : ℚ)
  supportSlope := (-14832207808993303 / 2000000000000000 : ℚ)
  oldCenter := (1065252677554273 / 1250000000000000 : ℚ)
  oldHi := (21312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1956, piece_1957]
}

def cell_7506 : Cell := { cellDefaults with
  domain := ⟨(13740625000000001 / 50000000000000000 : ℚ), (13743750000000001 / 50000000000000000 : ℚ)⟩
  r := (2621876854119 / 3125000000000 : ℚ)
  w := (17989054853723 / 10000000000000 : ℚ)
  center := (13742187500000001 / 50000000000000000 : ℚ)
  supportValue := (1703477667205641 / 2000000000000000 : ℚ)
  supportSlope := (-7409651336228507 / 1000000000000000 : ℚ)
  oldCenter := (1703477667205641 / 2000000000000000 : ℚ)
  oldPieces := [piece_1956]
}

def cell_7507 : Cell := { cellDefaults with
  domain := ⟨(13743750000000001 / 50000000000000000 : ℚ), (13746875000000001 / 50000000000000000 : ℚ)⟩
  r := (2621876854119 / 3125000000000 : ℚ)
  w := (17989054853723 / 10000000000000 : ℚ)
  center := (13745312500000001 / 50000000000000000 : ℚ)
  supportValue := (1702551859173177 / 2000000000000000 : ℚ)
  supportSlope := (-1850821263126079 / 250000000000000 : ℚ)
  oldCenter := (1702551859173177 / 2000000000000000 : ℚ)
  oldLo := (85100000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1955, piece_1956]
}

def cell_7508 : Cell := { cellDefaults with
  domain := ⟨(13746875000000001 / 50000000000000000 : ℚ), (13750000000000001 / 50000000000000000 : ℚ)⟩
  r := (2621876854119 / 3125000000000 : ℚ)
  w := (17989054853723 / 10000000000000 : ℚ)
  center := (13748437500000001 / 50000000000000000 : ℚ)
  supportValue := (8508134296874679 / 10000000000000000 : ℚ)
  supportSlope := (-14793645593719873 / 2000000000000000 : ℚ)
  oldCenter := (8508134296874679 / 10000000000000000 : ℚ)
  oldLo := (85050000000000003 / 100000000000000000 : ℚ)
  oldHi := (85150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1953, piece_1954, piece_1955]
}

def cell_7509 : Cell := { cellDefaults with
  domain := ⟨(13750000000000001 / 50000000000000000 : ℚ), (13753125000000001 / 50000000000000000 : ℚ)⟩
  center := (13751562500000001 / 50000000000000000 : ℚ)
  supportValue := (8521482211554433 / 10000000000000000 : ℚ)
  supportSlope := (-7409344346079649 / 1000000000000000 : ℚ)
  oldCenter := (8521482211554433 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_698
  oldHi := (21312500000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1956, piece_1957]
}

def cell_7510 : Cell := { cellDefaults with
  domain := ⟨(13753125000000001 / 50000000000000000 : ℚ), (13756250000000001 / 50000000000000000 : ℚ)⟩
  center := (13754687500000001 / 50000000000000000 : ℚ)
  supportValue := (4258426672689419 / 5000000000000000 : ℚ)
  supportSlope := (-7402889985545613 / 1000000000000000 : ℚ)
  oldCenter := (4258426672689419 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_698
  oldLo := (85100000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1955, piece_1956]
}

def cell_7511 : Cell := { cellDefaults with
  domain := ⟨(13756250000000001 / 50000000000000000 : ℚ), (13759375000000001 / 50000000000000000 : ℚ)⟩
  center := (13757812500000001 / 50000000000000000 : ℚ)
  supportValue := (2128057127762719 / 2500000000000000 : ℚ)
  supportSlope := (-7396440516103553 / 1000000000000000 : ℚ)
  oldCenter := (2128057127762719 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_698
  oldLo := (340268156424581 / 400000000000000 : ℚ)
  oldHi := (85150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1954, piece_1955]
}

def cell_7512 : Cell := { cellDefaults with
  domain := ⟨(13759375000000001 / 50000000000000000 : ℚ), (13762500000000001 / 50000000000000000 : ℚ)⟩
  center := (13760937500000001 / 50000000000000000 : ℚ)
  supportValue := (8507607705513047 / 10000000000000000 : ℚ)
  supportSlope := (-369504672138099 / 50000000000000 : ℚ)
  oldCenter := (8507607705513047 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_698
  oldLo := (85050000000000003 / 100000000000000000 : ℚ)
  oldHi := (85100000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1953, piece_1954]
}

def cell_7513 : Cell := { cellDefaults with
  domain := ⟨(13762500000000001 / 50000000000000000 : ℚ), (27530621508379889 / 100000000000000000 : ℚ)⟩
  center := (55055621508379891 / 200000000000000000 : ℚ)
  supportValue := (8503222963960121 / 10000000000000000 : ℚ)
  supportSlope := (-1846017638322971 / 250000000000000 : ℚ)
  oldCenter := (8503222963960121 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_698
  oldLo := (85000000000000009 / 100000000000000000 : ℚ)
  oldHi := (340268156424581 / 400000000000000 : ℚ)
  oldPieces := [piece_1952, piece_1953]
}

def cell_7514 : Cell := { cellDefaults with
  domain := ⟨(27530621508379889 / 100000000000000000 : ℚ), (860507594273743 / 3125000000000000 : ℚ)⟩
  center := (11013372905027933 / 40000000000000000 : ℚ)
  supportValue := (212476843166863 / 250000000000000 : ℚ)
  supportSlope := (-7378239352694639 / 1000000000000000 : ℚ)
  oldCenter := (212476843166863 / 250000000000000 : ℚ)
  newCoefficients := coefficients_698
  oldLo := (84950000000000003 / 100000000000000000 : ℚ)
  oldHi := (85050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1951, piece_1952]
}

def cell_7515 : Cell := { cellDefaults with
  domain := ⟨(860507594273743 / 3125000000000000 : ℚ), (27541864525139663 / 100000000000000000 : ℚ)⟩
  center := (55078107541899439 / 200000000000000000 : ℚ)
  supportValue := (8494927767298577 / 10000000000000000 : ℚ)
  supportSlope := (-1843102843098269 / 250000000000000 : ℚ)
  oldCenter := (8494927767298577 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_698
  oldLo := (84900000000000009 / 100000000000000000 : ℚ)
  oldHi := (85000000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1950, piece_1951]
}

def cell_7516 : Cell := { cellDefaults with
  domain := ⟨(27541864525139663 / 100000000000000000 : ℚ), (550949720670391 / 2000000000000000 : ℚ)⟩
  center := (55089350558659213 / 200000000000000000 : ℚ)
  supportValue := (2122696230133783 / 2500000000000000 : ℚ)
  supportSlope := (-7366586631330971 / 1000000000000000 : ℚ)
  oldCenter := (2122696230133783 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_698
  oldLo := (84850000000000003 / 100000000000000000 : ℚ)
  oldHi := (84950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1949, piece_1950]
}

def cell_7517 : Cell := { cellDefaults with
  domain := ⟨(550949720670391 / 2000000000000000 : ℚ), (13775000000000001 / 50000000000000000 : ℚ)⟩
  center := (860898219273743 / 3125000000000000 : ℚ)
  supportValue := (530486344466489 / 625000000000000 : ℚ)
  supportSlope := (-3681277445312669 / 500000000000000 : ℚ)
  oldCenter := (530486344466489 / 625000000000000 : ℚ)
  newCoefficients := coefficients_699
  oldLo := (84850000000000003 / 100000000000000000 : ℚ)
  oldHi := (84900000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1949]
}

def cell_7518 : Cell := { cellDefaults with
  domain := ⟨(13775000000000001 / 50000000000000000 : ℚ), (13778125000000001 / 50000000000000000 : ℚ)⟩
  r := (523499002463 / 625000000000 : ℚ)
  w := (17966026469957 / 10000000000000 : ℚ)
  center := (13776562500000001 / 50000000000000000 : ℚ)
  supportValue := (8502460249719421 / 10000000000000000 : ℚ)
  supportSlope := (-922113698555993 / 125000000000000 : ℚ)
  oldCenter := (8502460249719421 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_700
  oldLo := (85000000000000009 / 100000000000000000 : ℚ)
  oldHi := (85050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1952]
}

def cell_7519 : Cell := { cellDefaults with
  domain := ⟨(13778125000000001 / 50000000000000000 : ℚ), (13781250000000001 / 50000000000000000 : ℚ)⟩
  r := (523499002463 / 625000000000 : ℚ)
  w := (17966026469957 / 10000000000000 : ℚ)
  center := (13779687500000001 / 50000000000000000 : ℚ)
  supportValue := (8497851670981109 / 10000000000000000 : ℚ)
  supportSlope := (-3685288999040637 / 500000000000000 : ℚ)
  oldCenter := (8497851670981109 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_700
  oldLo := (84950000000000003 / 100000000000000000 : ℚ)
  oldHi := (85050000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1951, piece_1952]
}

def cell_7520 : Cell := { cellDefaults with
  domain := ⟨(13781250000000001 / 50000000000000000 : ℚ), (13784375000000001 / 50000000000000000 : ℚ)⟩
  r := (523499002463 / 625000000000 : ℚ)
  w := (17966026469957 / 10000000000000 : ℚ)
  center := (13782812500000001 / 50000000000000000 : ℚ)
  supportValue := (8493247099285233 / 10000000000000000 : ℚ)
  supportSlope := (-7364170100025547 / 1000000000000000 : ℚ)
  oldCenter := (8493247099285233 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_700
  oldLo := (84900000000000009 / 100000000000000000 : ℚ)
  oldHi := (85000000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1950, piece_1951]
}

def cell_7521 : Cell := { cellDefaults with
  domain := ⟨(13784375000000001 / 50000000000000000 : ℚ), (13787500000000001 / 50000000000000000 : ℚ)⟩
  r := (523499002463 / 625000000000 : ℚ)
  w := (17966026469957 / 10000000000000 : ℚ)
  center := (13785937500000001 / 50000000000000000 : ℚ)
  supportValue := (8488646531622791 / 10000000000000000 : ℚ)
  supportSlope := (-7357767048507213 / 1000000000000000 : ℚ)
  oldCenter := (8488646531622791 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_700
  oldLo := (84850000000000003 / 100000000000000000 : ℚ)
  oldHi := (84950000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1949, piece_1950]
}

def cell_7522 : Cell := { cellDefaults with
  domain := ⟨(13787500000000001 / 50000000000000000 : ℚ), (13790625000000001 / 50000000000000000 : ℚ)⟩
  r := (523499002463 / 625000000000 : ℚ)
  w := (17966026469957 / 10000000000000 : ℚ)
  center := (13789062500000001 / 50000000000000000 : ℚ)
  supportValue := (8484049964995899 / 10000000000000000 : ℚ)
  supportSlope := (-3675684395869183 / 500000000000000 : ℚ)
  oldCenter := (8484049964995899 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_700
  oldLo := (84800000000000009 / 100000000000000000 : ℚ)
  oldHi := (84900000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1948, piece_1949]
}

def cell_7523 : Cell := { cellDefaults with
  domain := ⟨(13790625000000001 / 50000000000000000 : ℚ), (13793750000000001 / 50000000000000000 : ℚ)⟩
  r := (523499002463 / 625000000000 : ℚ)
  w := (17966026469957 / 10000000000000 : ℚ)
  center := (13792187500000001 / 50000000000000000 : ℚ)
  supportValue := (1695891479286497 / 2000000000000000 : ℚ)
  supportSlope := (-7344975290855871 / 1000000000000000 : ℚ)
  oldCenter := (1695891479286497 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_700
  oldLo := (84750000000000003 / 100000000000000000 : ℚ)
  oldHi := (84850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1947, piece_1948]
}

def cell_7524 : Cell := { cellDefaults with
  domain := ⟨(13793750000000001 / 50000000000000000 : ℚ), (13796875000000001 / 50000000000000000 : ℚ)⟩
  r := (523499002463 / 625000000000 : ℚ)
  w := (17966026469957 / 10000000000000 : ℚ)
  center := (13795312500000001 / 50000000000000000 : ℚ)
  supportValue := (4237434411431667 / 5000000000000000 : ℚ)
  supportSlope := (-7338586760155863 / 1000000000000000 : ℚ)
  oldCenter := (4237434411431667 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_700
  oldLo := (84700000000000009 / 100000000000000000 : ℚ)
  oldHi := (84800000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1946, piece_1947]
}

def cell_7525 : Cell := { cellDefaults with
  domain := ⟨(13796875000000001 / 50000000000000000 : ℚ), (13800000000000001 / 50000000000000000 : ℚ)⟩
  r := (523499002463 / 625000000000 : ℚ)
  w := (17966026469957 / 10000000000000 : ℚ)
  center := (13798437500000001 / 50000000000000000 : ℚ)
  supportValue := (8470284182751753 / 10000000000000000 : ℚ)
  supportSlope := (-7332202986599867 / 1000000000000000 : ℚ)
  oldCenter := (8470284182751753 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_700
  oldLo := (84650000000000003 / 100000000000000000 : ℚ)
  oldHi := (84750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1945, piece_1946]
}

def cell_7526 : Cell := { cellDefaults with
  domain := ⟨(13800000000000001 / 50000000000000000 : ℚ), (13803125000000001 / 50000000000000000 : ℚ)⟩
  r := (83689973390107 / 100000000000000 : ℚ)
  w := (8977277314871 / 5000000000000 : ℚ)
  center := (13801562500000001 / 50000000000000000 : ℚ)
  supportValue := (8483526062930999 / 10000000000000000 : ℚ)
  supportSlope := (-1468944822468643 / 200000000000000 : ℚ)
  oldCenter := (8483526062930999 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_701
  oldLo := (84800000000000009 / 100000000000000000 : ℚ)
  oldHi := (84900000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1948, piece_1949]
}

def cell_7527 : Cell := { cellDefaults with
  domain := ⟨(13803125000000001 / 50000000000000000 : ℚ), (13806250000000001 / 50000000000000000 : ℚ)⟩
  r := (83689973390107 / 100000000000000 : ℚ)
  w := (8977277314871 / 5000000000000 : ℚ)
  center := (13804687500000001 / 50000000000000000 : ℚ)
  supportValue := (16560425080487 / 19531250000000 : ℚ)
  supportSlope := (-14676702099279737 / 2000000000000000 : ℚ)
  oldCenter := (16560425080487 / 19531250000000 : ℚ)
  newCoefficients := coefficients_701
  oldLo := (84750000000000003 / 100000000000000000 : ℚ)
  oldHi := (84850000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1947, piece_1948]
}

def cell_7528 : Cell := { cellDefaults with
  domain := ⟨(13806250000000001 / 50000000000000000 : ℚ), (13809375000000001 / 50000000000000000 : ℚ)⟩
  r := (83689973390107 / 100000000000000 : ℚ)
  w := (8977277314871 / 5000000000000 : ℚ)
  center := (13807812500000001 / 50000000000000000 : ℚ)
  supportValue := (4237176600856459 / 5000000000000000 : ℚ)
  supportSlope := (-7331982914980273 / 1000000000000000 : ℚ)
  oldCenter := (4237176600856459 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_701
  oldLo := (84700000000000009 / 100000000000000000 : ℚ)
  oldHi := (84800000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1946, piece_1947]
}

def cell_7529 : Cell := { cellDefaults with
  domain := ⟨(13809375000000001 / 50000000000000000 : ℚ), (13812500000000001 / 50000000000000000 : ℚ)⟩
  r := (83689973390107 / 100000000000000 : ℚ)
  w := (8977277314871 / 5000000000000 : ℚ)
  center := (13810937500000001 / 50000000000000000 : ℚ)
  supportValue := (4234886370732597 / 5000000000000000 : ℚ)
  supportSlope := (-7325619514176651 / 1000000000000000 : ℚ)
  oldCenter := (4234886370732597 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_701
  oldLo := (84650000000000003 / 100000000000000000 : ℚ)
  oldHi := (84750000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1945, piece_1946]
}

def cell_7530 : Cell := { cellDefaults with
  domain := ⟨(13812500000000001 / 50000000000000000 : ℚ), (13815625000000001 / 50000000000000000 : ℚ)⟩
  r := (83689973390107 / 100000000000000 : ℚ)
  w := (8977277314871 / 5000000000000 : ℚ)
  center := (13814062500000001 / 50000000000000000 : ℚ)
  supportValue := (8465196217561423 / 10000000000000000 : ℚ)
  supportSlope := (-7319260851449627 / 1000000000000000 : ℚ)
  oldCenter := (8465196217561423 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_701
  oldLo := (84600000000000009 / 100000000000000000 : ℚ)
  oldHi := (84700000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1944, piece_1945]
}

def cell_7531 : Cell := { cellDefaults with
  domain := ⟨(13815625000000001 / 50000000000000000 : ℚ), (13818750000000001 / 50000000000000000 : ℚ)⟩
  r := (83689973390107 / 100000000000000 : ℚ)
  w := (8977277314871 / 5000000000000 : ℚ)
  center := (13817187500000001 / 50000000000000000 : ℚ)
  supportValue := (8460623615688401 / 10000000000000000 : ℚ)
  supportSlope := (-7312906934028973 / 1000000000000000 : ℚ)
  oldCenter := (8460623615688401 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_701
  oldLo := (84550000000000003 / 100000000000000000 : ℚ)
  oldHi := (84650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1943, piece_1944]
}

def cell_7532 : Cell := { cellDefaults with
  domain := ⟨(13818750000000001 / 50000000000000000 : ℚ), (13821875000000001 / 50000000000000000 : ℚ)⟩
  r := (83689973390107 / 100000000000000 : ℚ)
  w := (8977277314871 / 5000000000000 : ℚ)
  center := (13820312500000001 / 50000000000000000 : ℚ)
  supportValue := (845605498289847 / 1000000000000000 : ℚ)
  supportSlope := (-3653278873452237 / 500000000000000 : ℚ)
  oldCenter := (845605498289847 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_701
  oldLo := (2112849162011173 / 2500000000000000 : ℚ)
  oldHi := (84600000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1942, piece_1943]
}

def cell_7533 : Cell := { cellDefaults with
  domain := ⟨(13821875000000001 / 50000000000000000 : ℚ), (13825000000000001 / 50000000000000000 : ℚ)⟩
  r := (83689973390107 / 100000000000000 : ℚ)
  w := (8977277314871 / 5000000000000 : ℚ)
  center := (13823437500000001 / 50000000000000000 : ℚ)
  supportValue := (4225745158116387 / 5000000000000000 : ℚ)
  supportSlope := (-14600427093903079 / 2000000000000000 : ℚ)
  oldCenter := (4225745158116387 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_701
  oldLo := (84450000000000003 / 100000000000000000 : ℚ)
  oldHi := (84550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1940, piece_1941, piece_1942]
}

def cell_7534 : Cell := { cellDefaults with
  domain := ⟨(13825000000000001 / 50000000000000000 : ℚ), (13828125000000001 / 50000000000000000 : ℚ)⟩
  r := (83620266958497 / 100000000000000 : ℚ)
  w := (3588622059493 / 2000000000000 : ℚ)
  center := (13826562500000001 / 50000000000000000 : ℚ)
  supportValue := (8464679934798467 / 10000000000000000 : ℚ)
  supportSlope := (-457041933259017 / 62500000000000 : ℚ)
  oldCenter := (8464679934798467 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_702
  oldLo := (84600000000000009 / 100000000000000000 : ℚ)
  oldHi := (84700000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1944, piece_1945]
}

def cell_7535 : Cell := { cellDefaults with
  domain := ⟨(13828125000000001 / 50000000000000000 : ℚ), (13831250000000001 / 50000000000000000 : ℚ)⟩
  r := (83620266958497 / 100000000000000 : ℚ)
  w := (3588622059493 / 2000000000000 : ℚ)
  center := (13829687500000001 / 50000000000000000 : ℚ)
  supportValue := (84601115147139 / 100000000000000 : ℚ)
  supportSlope := (-3653168862618017 / 500000000000000 : ℚ)
  oldCenter := (84601115147139 / 100000000000000 : ℚ)
  newCoefficients := coefficients_702
  oldLo := (84550000000000003 / 100000000000000000 : ℚ)
  oldHi := (84650000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1943, piece_1944]
}

def cell_7536 : Cell := { cellDefaults with
  domain := ⟨(13831250000000001 / 50000000000000000 : ℚ), (13834375000000001 / 50000000000000000 : ℚ)⟩
  r := (83620266958497 / 100000000000000 : ℚ)
  w := (3588622059493 / 2000000000000 : ℚ)
  center := (13832812500000001 / 50000000000000000 : ℚ)
  supportValue := (1691109396185003 / 2000000000000000 : ℚ)
  supportSlope := (-1825002305849921 / 250000000000000 : ℚ)
  oldCenter := (1691109396185003 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_702
  oldLo := (2112849162011173 / 2500000000000000 : ℚ)
  oldHi := (84600000000000009 / 100000000000000000 : ℚ)
  oldPieces := [piece_1942, piece_1943]
}

def cell_7537 : Cell := { cellDefaults with
  domain := ⟨(13834375000000001 / 50000000000000000 : ℚ), (13837500000000001 / 50000000000000000 : ℚ)⟩
  r := (83620266958497 / 100000000000000 : ℚ)
  w := (3588622059493 / 2000000000000 : ℚ)
  center := (13835937500000001 / 50000000000000000 : ℚ)
  supportValue := (4225493200154577 / 5000000000000000 : ℚ)
  supportSlope := (-227927679510187 / 31250000000000 : ℚ)
  oldCenter := (4225493200154577 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_702
  oldLo := (84450000000000003 / 100000000000000000 : ℚ)
  oldHi := (84550000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1940, piece_1941, piece_1942]
}

def cell_7538 : Cell := { cellDefaults with
  domain := ⟨(13837500000000001 / 50000000000000000 : ℚ), (13840625000000001 / 50000000000000000 : ℚ)⟩
  r := (83620266958497 / 100000000000000 : ℚ)
  w := (3588622059493 / 2000000000000 : ℚ)
  center := (13839062500000001 / 50000000000000000 : ℚ)
  supportValue := (263950930301159 / 312500000000000 : ℚ)
  supportSlope := (-582989354501251 / 80000000000000 : ℚ)
  oldCenter := (263950930301159 / 312500000000000 : ℚ)
  newCoefficients := coefficients_702
  oldLo := (10550000000000001 / 12500000000000000 : ℚ)
  oldHi := (10562500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1939, piece_1940]
}

def cell_7539 : Cell := { cellDefaults with
  domain := ⟨(13840625000000001 / 50000000000000000 : ℚ), (13843750000000001 / 50000000000000000 : ℚ)⟩
  r := (83620266958497 / 100000000000000 : ℚ)
  w := (3588622059493 / 2000000000000 : ℚ)
  center := (13842187500000001 / 50000000000000000 : ℚ)
  supportValue := (8441877086235543 / 10000000000000000 : ℚ)
  supportSlope := (-7281052616558981 / 1000000000000000 : ℚ)
  oldCenter := (8441877086235543 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_702
  oldLo := (84350000000000003 / 100000000000000000 : ℚ)
  oldHi := (84450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1938, piece_1939]
}

def cell_7540 : Cell := { cellDefaults with
  domain := ⟨(13843750000000001 / 50000000000000000 : ℚ), (13846875000000001 / 50000000000000000 : ℚ)⟩
  r := (83620266958497 / 100000000000000 : ℚ)
  w := (3588622059493 / 2000000000000 : ℚ)
  center := (13845312500000001 / 50000000000000000 : ℚ)
  supportValue := (8437328347167297 / 10000000000000000 : ℚ)
  supportSlope := (-90934490427097 / 12500000000000 : ℚ)
  oldCenter := (8437328347167297 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_702
  oldLo := (84350000000000003 / 100000000000000000 : ℚ)
  oldHi := (10550000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1938]
}

def cell_7541 : Cell := { cellDefaults with
  domain := ⟨(13846875000000001 / 50000000000000000 : ℚ), (13850000000000001 / 50000000000000000 : ℚ)⟩
  r := (83620266958497 / 100000000000000 : ℚ)
  w := (3588622059493 / 2000000000000 : ℚ)
  center := (13848437500000001 / 50000000000000000 : ℚ)
  supportValue := (4216391774753017 / 5000000000000000 : ℚ)
  supportSlope := (-2907438390087691 / 400000000000000 : ℚ)
  oldCenter := (4216391774753017 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_702
  oldLo := (10537500000000001 / 12500000000000000 : ℚ)
  oldHi := (10550000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1937, piece_1938]
}

def cell_7542 : Cell := { cellDefaults with
  domain := ⟨(13850000000000001 / 50000000000000000 : ℚ), (13853125000000001 / 50000000000000000 : ℚ)⟩
  r := (83550719284877 / 100000000000000 : ℚ)
  w := (3586338901909 / 2000000000000 : ℚ)
  center := (13851562500000001 / 50000000000000000 : ℚ)
  supportValue := (1055740072620769 / 1250000000000000 : ℚ)
  supportSlope := (-7280829880123463 / 1000000000000000 : ℚ)
  oldCenter := (1055740072620769 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_703
  oldLo := (10550000000000001 / 12500000000000000 : ℚ)
  oldHi := (10562500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1939, piece_1940]
}

def cell_7543 : Cell := { cellDefaults with
  domain := ⟨(13853125000000001 / 50000000000000000 : ℚ), (13856250000000001 / 50000000000000000 : ℚ)⟩
  r := (83550719284877 / 100000000000000 : ℚ)
  w := (3586338901909 / 2000000000000 : ℚ)
  center := (13854687500000001 / 50000000000000000 : ℚ)
  supportValue := (8441371976367407 / 10000000000000000 : ℚ)
  supportSlope := (-14549073129842327 / 2000000000000000 : ℚ)
  oldCenter := (8441371976367407 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_703
  oldLo := (84350000000000003 / 100000000000000000 : ℚ)
  oldHi := (84450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1938, piece_1939]
}

def cell_7544 : Cell := { cellDefaults with
  domain := ⟨(13856250000000001 / 50000000000000000 : ℚ), (13859375000000001 / 50000000000000000 : ℚ)⟩
  r := (83550719284877 / 100000000000000 : ℚ)
  w := (3586338901909 / 2000000000000 : ℚ)
  center := (13857812500000001 / 50000000000000000 : ℚ)
  supportValue := (1687365460597071 / 2000000000000000 : ℚ)
  supportSlope := (-7268247906736747 / 1000000000000000 : ℚ)
  oldCenter := (1687365460597071 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_703
  oldLo := (10537500000000001 / 12500000000000000 : ℚ)
  oldHi := (10550000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1937, piece_1938]
}

def cell_7545 : Cell := { cellDefaults with
  domain := ⟨(13859375000000001 / 50000000000000000 : ℚ), (13862500000000001 / 50000000000000000 : ℚ)⟩
  r := (83550719284877 / 100000000000000 : ℚ)
  w := (3586338901909 / 2000000000000 : ℚ)
  center := (13860937500000001 / 50000000000000000 : ℚ)
  supportValue := (8432286557909293 / 10000000000000000 : ℚ)
  supportSlope := (-14523934262079763 / 2000000000000000 : ℚ)
  oldCenter := (8432286557909293 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_703
  oldLo := (10537500000000001 / 12500000000000000 : ℚ)
  oldHi := (84350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1937]
}

def cell_7546 : Cell := { cellDefaults with
  domain := ⟨(13862500000000001 / 50000000000000000 : ℚ), (13865625000000001 / 50000000000000000 : ℚ)⟩
  r := (83550719284877 / 100000000000000 : ℚ)
  w := (3586338901909 / 2000000000000 : ℚ)
  center := (13864062500000001 / 50000000000000000 : ℚ)
  supportValue := (8427749738235709 / 10000000000000000 : ℚ)
  supportSlope := (-7255845540058203 / 1000000000000000 : ℚ)
  oldCenter := (8427749738235709 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_703
  oldLo := (84250000000000003 / 100000000000000000 : ℚ)
  oldHi := (84350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1936, piece_1937]
}

def cell_7547 : Cell := { cellDefaults with
  domain := ⟨(13865625000000001 / 50000000000000000 : ℚ), (13868750000000001 / 50000000000000000 : ℚ)⟩
  r := (83550719284877 / 100000000000000 : ℚ)
  w := (3586338901909 / 2000000000000 : ℚ)
  center := (13867187500000001 / 50000000000000000 : ℚ)
  supportValue := (8423216841034187 / 10000000000000000 : ℚ)
  supportSlope := (-3624786474867747 / 500000000000000 : ℚ)
  oldCenter := (8423216841034187 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_703
  oldLo := (10525000000000001 / 12500000000000000 : ℚ)
  oldHi := (10537500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1935, piece_1936]
}

def cell_7548 : Cell := { cellDefaults with
  domain := ⟨(13868750000000001 / 50000000000000000 : ℚ), (13871875000000001 / 50000000000000000 : ℚ)⟩
  r := (83550719284877 / 100000000000000 : ℚ)
  w := (3586338901909 / 2000000000000 : ℚ)
  center := (13870312500000001 / 50000000000000000 : ℚ)
  supportValue := (8418687863433991 / 10000000000000000 : ℚ)
  supportSlope := (-3621652483092319 / 500000000000000 : ℚ)
  oldCenter := (8418687863433991 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_703
  oldLo := (84150000000000003 / 100000000000000000 : ℚ)
  oldHi := (84250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1934, piece_1935]
}

def cell_7549 : Cell := { cellDefaults with
  domain := ⟨(13871875000000001 / 50000000000000000 : ℚ), (13875000000000001 / 50000000000000000 : ℚ)⟩
  r := (83550719284877 / 100000000000000 : ℚ)
  w := (3586338901909 / 2000000000000 : ℚ)
  center := (13873437500000001 / 50000000000000000 : ℚ)
  supportValue := (4207081401277941 / 5000000000000000 : ℚ)
  supportSlope := (-3618520795168223 / 500000000000000 : ℚ)
  oldCenter := (4207081401277941 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_703
  oldLo := (10512500000000001 / 12500000000000000 : ℚ)
  oldHi := (10525000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1933, piece_1934]
}

theorem check_7500 : cell_7500.check = true := by
  decide +kernel

theorem check_7501 : cell_7501.check = true := by
  decide +kernel

theorem check_7502 : cell_7502.check = true := by
  decide +kernel

theorem check_7503 : cell_7503.check = true := by
  decide +kernel

theorem check_7504 : cell_7504.check = true := by
  decide +kernel

theorem check_7505 : cell_7505.check = true := by
  decide +kernel

theorem check_7506 : cell_7506.check = true := by
  decide +kernel

theorem check_7507 : cell_7507.check = true := by
  decide +kernel

theorem check_7508 : cell_7508.check = true := by
  decide +kernel

theorem check_7509 : cell_7509.check = true := by
  decide +kernel

theorem check_7510 : cell_7510.check = true := by
  decide +kernel

theorem check_7511 : cell_7511.check = true := by
  decide +kernel

theorem check_7512 : cell_7512.check = true := by
  decide +kernel

theorem check_7513 : cell_7513.check = true := by
  decide +kernel

theorem check_7514 : cell_7514.check = true := by
  decide +kernel

theorem check_7515 : cell_7515.check = true := by
  decide +kernel

theorem check_7516 : cell_7516.check = true := by
  decide +kernel

theorem check_7517 : cell_7517.check = true := by
  decide +kernel

theorem check_7518 : cell_7518.check = true := by
  decide +kernel

theorem check_7519 : cell_7519.check = true := by
  decide +kernel

theorem check_7520 : cell_7520.check = true := by
  decide +kernel

theorem check_7521 : cell_7521.check = true := by
  decide +kernel

theorem check_7522 : cell_7522.check = true := by
  decide +kernel

theorem check_7523 : cell_7523.check = true := by
  decide +kernel

theorem check_7524 : cell_7524.check = true := by
  decide +kernel

theorem check_7525 : cell_7525.check = true := by
  decide +kernel

theorem check_7526 : cell_7526.check = true := by
  decide +kernel

theorem check_7527 : cell_7527.check = true := by
  decide +kernel

theorem check_7528 : cell_7528.check = true := by
  decide +kernel

theorem check_7529 : cell_7529.check = true := by
  decide +kernel

theorem check_7530 : cell_7530.check = true := by
  decide +kernel

theorem check_7531 : cell_7531.check = true := by
  decide +kernel

theorem check_7532 : cell_7532.check = true := by
  decide +kernel

theorem check_7533 : cell_7533.check = true := by
  decide +kernel

theorem check_7534 : cell_7534.check = true := by
  decide +kernel

theorem check_7535 : cell_7535.check = true := by
  decide +kernel

theorem check_7536 : cell_7536.check = true := by
  decide +kernel

theorem check_7537 : cell_7537.check = true := by
  decide +kernel

theorem check_7538 : cell_7538.check = true := by
  decide +kernel

theorem check_7539 : cell_7539.check = true := by
  decide +kernel

theorem check_7540 : cell_7540.check = true := by
  decide +kernel

theorem check_7541 : cell_7541.check = true := by
  decide +kernel

theorem check_7542 : cell_7542.check = true := by
  decide +kernel

theorem check_7543 : cell_7543.check = true := by
  decide +kernel

theorem check_7544 : cell_7544.check = true := by
  decide +kernel

theorem check_7545 : cell_7545.check = true := by
  decide +kernel

theorem check_7546 : cell_7546.check = true := by
  decide +kernel

theorem check_7547 : cell_7547.check = true := by
  decide +kernel

theorem check_7548 : cell_7548.check = true := by
  decide +kernel

theorem check_7549 : cell_7549.check = true := by
  decide +kernel

def cells : List Cell := [cell_7500, cell_7501, cell_7502, cell_7503, cell_7504, cell_7505, cell_7506, cell_7507, cell_7508, cell_7509, cell_7510, cell_7511, cell_7512, cell_7513, cell_7514, cell_7515, cell_7516, cell_7517, cell_7518, cell_7519, cell_7520, cell_7521, cell_7522, cell_7523, cell_7524, cell_7525, cell_7526, cell_7527, cell_7528, cell_7529, cell_7530, cell_7531, cell_7532, cell_7533, cell_7534, cell_7535, cell_7536, cell_7537, cell_7538, cell_7539, cell_7540, cell_7541, cell_7542, cell_7543, cell_7544, cell_7545, cell_7546, cell_7547, cell_7548, cell_7549]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7500, check_7501, check_7502, check_7503, check_7504, check_7505, check_7506, check_7507, check_7508, check_7509, check_7510, check_7511, check_7512, check_7513, check_7514, check_7515, check_7516, check_7517, check_7518, check_7519, check_7520, check_7521, check_7522, check_7523, check_7524, check_7525, check_7526, check_7527, check_7528, check_7529, check_7530, check_7531, check_7532, check_7533, check_7534, check_7535, check_7536, check_7537, check_7538, check_7539, check_7540, check_7541, check_7542, check_7543, check_7544, check_7545, check_7546, check_7547, check_7548, check_7549, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0150

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0150
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0150
open AnalyticBounds.ExpressionCertificate

theorem linked_7500 : Linked cell_7500 pieces := by
  link_source cell_7500 with piece_696 using piece_696_mem, ⟨piece_1957_mem, piece_1958_mem⟩

theorem linked_7501 : Linked cell_7501 pieces := by
  link_source cell_7501 with piece_697 using piece_697_mem, ⟨piece_1960_mem, piece_1961_mem⟩

theorem linked_7502 : Linked cell_7502 pieces := by
  link_source cell_7502 with piece_697 using piece_697_mem, ⟨piece_1959_mem, piece_1960_mem⟩

theorem linked_7503 : Linked cell_7503 pieces := by
  link_source cell_7503 with piece_697 using piece_697_mem, ⟨piece_1958_mem, piece_1959_mem⟩

theorem linked_7504 : Linked cell_7504 pieces := by
  link_source cell_7504 with piece_697 using piece_697_mem, ⟨piece_1957_mem, piece_1958_mem⟩

theorem linked_7505 : Linked cell_7505 pieces := by
  link_source cell_7505 with piece_697 using piece_697_mem, ⟨piece_1956_mem, piece_1957_mem⟩

theorem linked_7506 : Linked cell_7506 pieces := by
  link_source cell_7506 with piece_697 using piece_697_mem, piece_1956_mem

theorem linked_7507 : Linked cell_7507 pieces := by
  link_source cell_7507 with piece_697 using piece_697_mem, ⟨piece_1955_mem, piece_1956_mem⟩

theorem linked_7508 : Linked cell_7508 pieces := by
  link_source cell_7508 with piece_697 using piece_697_mem, ⟨piece_1953_mem, ⟨piece_1954_mem, piece_1955_mem⟩⟩

theorem linked_7509 : Linked cell_7509 pieces := by
  link_source cell_7509 with piece_698 using piece_698_mem, ⟨piece_1956_mem, piece_1957_mem⟩

theorem linked_7510 : Linked cell_7510 pieces := by
  link_source cell_7510 with piece_698 using piece_698_mem, ⟨piece_1955_mem, piece_1956_mem⟩

theorem linked_7511 : Linked cell_7511 pieces := by
  link_source cell_7511 with piece_698 using piece_698_mem, ⟨piece_1954_mem, piece_1955_mem⟩

theorem linked_7512 : Linked cell_7512 pieces := by
  link_source cell_7512 with piece_698 using piece_698_mem, ⟨piece_1953_mem, piece_1954_mem⟩

theorem linked_7513 : Linked cell_7513 pieces := by
  link_source cell_7513 with piece_698 using piece_698_mem, ⟨piece_1952_mem, piece_1953_mem⟩

theorem linked_7514 : Linked cell_7514 pieces := by
  link_source cell_7514 with piece_698 using piece_698_mem, ⟨piece_1951_mem, piece_1952_mem⟩

theorem linked_7515 : Linked cell_7515 pieces := by
  link_source cell_7515 with piece_698 using piece_698_mem, ⟨piece_1950_mem, piece_1951_mem⟩

theorem linked_7516 : Linked cell_7516 pieces := by
  link_source cell_7516 with piece_698 using piece_698_mem, ⟨piece_1949_mem, piece_1950_mem⟩

theorem linked_7517 : Linked cell_7517 pieces := by
  link_source cell_7517 with piece_699 using piece_699_mem, piece_1949_mem

theorem linked_7518 : Linked cell_7518 pieces := by
  link_source cell_7518 with piece_700 using piece_700_mem, piece_1952_mem

theorem linked_7519 : Linked cell_7519 pieces := by
  link_source cell_7519 with piece_700 using piece_700_mem, ⟨piece_1951_mem, piece_1952_mem⟩

theorem linked_7520 : Linked cell_7520 pieces := by
  link_source cell_7520 with piece_700 using piece_700_mem, ⟨piece_1950_mem, piece_1951_mem⟩

theorem linked_7521 : Linked cell_7521 pieces := by
  link_source cell_7521 with piece_700 using piece_700_mem, ⟨piece_1949_mem, piece_1950_mem⟩

theorem linked_7522 : Linked cell_7522 pieces := by
  link_source cell_7522 with piece_700 using piece_700_mem, ⟨piece_1948_mem, piece_1949_mem⟩

theorem linked_7523 : Linked cell_7523 pieces := by
  link_source cell_7523 with piece_700 using piece_700_mem, ⟨piece_1947_mem, piece_1948_mem⟩

theorem linked_7524 : Linked cell_7524 pieces := by
  link_source cell_7524 with piece_700 using piece_700_mem, ⟨piece_1946_mem, piece_1947_mem⟩

theorem linked_7525 : Linked cell_7525 pieces := by
  link_source cell_7525 with piece_700 using piece_700_mem, ⟨piece_1945_mem, piece_1946_mem⟩

theorem linked_7526 : Linked cell_7526 pieces := by
  link_source cell_7526 with piece_701 using piece_701_mem, ⟨piece_1948_mem, piece_1949_mem⟩

theorem linked_7527 : Linked cell_7527 pieces := by
  link_source cell_7527 with piece_701 using piece_701_mem, ⟨piece_1947_mem, piece_1948_mem⟩

theorem linked_7528 : Linked cell_7528 pieces := by
  link_source cell_7528 with piece_701 using piece_701_mem, ⟨piece_1946_mem, piece_1947_mem⟩

theorem linked_7529 : Linked cell_7529 pieces := by
  link_source cell_7529 with piece_701 using piece_701_mem, ⟨piece_1945_mem, piece_1946_mem⟩

theorem linked_7530 : Linked cell_7530 pieces := by
  link_source cell_7530 with piece_701 using piece_701_mem, ⟨piece_1944_mem, piece_1945_mem⟩

theorem linked_7531 : Linked cell_7531 pieces := by
  link_source cell_7531 with piece_701 using piece_701_mem, ⟨piece_1943_mem, piece_1944_mem⟩

theorem linked_7532 : Linked cell_7532 pieces := by
  link_source cell_7532 with piece_701 using piece_701_mem, ⟨piece_1942_mem, piece_1943_mem⟩

theorem linked_7533 : Linked cell_7533 pieces := by
  link_source cell_7533 with piece_701 using piece_701_mem, ⟨piece_1940_mem, ⟨piece_1941_mem, piece_1942_mem⟩⟩

theorem linked_7534 : Linked cell_7534 pieces := by
  link_source cell_7534 with piece_702 using piece_702_mem, ⟨piece_1944_mem, piece_1945_mem⟩

theorem linked_7535 : Linked cell_7535 pieces := by
  link_source cell_7535 with piece_702 using piece_702_mem, ⟨piece_1943_mem, piece_1944_mem⟩

theorem linked_7536 : Linked cell_7536 pieces := by
  link_source cell_7536 with piece_702 using piece_702_mem, ⟨piece_1942_mem, piece_1943_mem⟩

theorem linked_7537 : Linked cell_7537 pieces := by
  link_source cell_7537 with piece_702 using piece_702_mem, ⟨piece_1940_mem, ⟨piece_1941_mem, piece_1942_mem⟩⟩

theorem linked_7538 : Linked cell_7538 pieces := by
  link_source cell_7538 with piece_702 using piece_702_mem, ⟨piece_1939_mem, piece_1940_mem⟩

theorem linked_7539 : Linked cell_7539 pieces := by
  link_source cell_7539 with piece_702 using piece_702_mem, ⟨piece_1938_mem, piece_1939_mem⟩

theorem linked_7540 : Linked cell_7540 pieces := by
  link_source cell_7540 with piece_702 using piece_702_mem, piece_1938_mem

theorem linked_7541 : Linked cell_7541 pieces := by
  link_source cell_7541 with piece_702 using piece_702_mem, ⟨piece_1937_mem, piece_1938_mem⟩

theorem linked_7542 : Linked cell_7542 pieces := by
  link_source cell_7542 with piece_703 using piece_703_mem, ⟨piece_1939_mem, piece_1940_mem⟩

theorem linked_7543 : Linked cell_7543 pieces := by
  link_source cell_7543 with piece_703 using piece_703_mem, ⟨piece_1938_mem, piece_1939_mem⟩

theorem linked_7544 : Linked cell_7544 pieces := by
  link_source cell_7544 with piece_703 using piece_703_mem, ⟨piece_1937_mem, piece_1938_mem⟩

theorem linked_7545 : Linked cell_7545 pieces := by
  link_source cell_7545 with piece_703 using piece_703_mem, piece_1937_mem

theorem linked_7546 : Linked cell_7546 pieces := by
  link_source cell_7546 with piece_703 using piece_703_mem, ⟨piece_1936_mem, piece_1937_mem⟩

theorem linked_7547 : Linked cell_7547 pieces := by
  link_source cell_7547 with piece_703 using piece_703_mem, ⟨piece_1935_mem, piece_1936_mem⟩

theorem linked_7548 : Linked cell_7548 pieces := by
  link_source cell_7548 with piece_703 using piece_703_mem, ⟨piece_1934_mem, piece_1935_mem⟩

theorem linked_7549 : Linked cell_7549 pieces := by
  link_source cell_7549 with piece_703 using piece_703_mem, ⟨piece_1933_mem, piece_1934_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0150.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0150.cells,List.forall_mem_cons]
  exact ⟨linked_7500, linked_7501, linked_7502, linked_7503, linked_7504, linked_7505, linked_7506, linked_7507, linked_7508, linked_7509, linked_7510, linked_7511, linked_7512, linked_7513, linked_7514, linked_7515, linked_7516, linked_7517, linked_7518, linked_7519, linked_7520, linked_7521, linked_7522, linked_7523, linked_7524, linked_7525, linked_7526, linked_7527, linked_7528, linked_7529, linked_7530, linked_7531, linked_7532, linked_7533, linked_7534, linked_7535, linked_7536, linked_7537, linked_7538, linked_7539, linked_7540, linked_7541, linked_7542, linked_7543, linked_7544, linked_7545, linked_7546, linked_7547, linked_7548, linked_7549, by simp⟩

theorem covered : covers (13721875000000001 / 50000000000000000 : ℚ) (13875000000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0150.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0150
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0151
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(13875000000000001 / 50000000000000000 : ℚ), (13878125000000001 / 50000000000000000 : ℚ)⟩
  branch := .left
  r := (83481329630763 / 100000000000000 : ℚ)
  w := (8960152988009 / 5000000000000 : ℚ)
  center := (13876562500000001 / 50000000000000000 : ℚ)
  supportValue := (8427248133988811 / 10000000000000000 : ℚ)
  supportSlope := (-3624600002803291 / 500000000000000 : ℚ)
  oldCenter := (8427248133988811 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_704
  oldLo := (41825000000000001 / 50000000000000000 : ℚ)
  oldHi := (10462500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1932, piece_1933]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7550 : Cell := { cellDefaults with
  oldLo := (10525000000000001 / 12500000000000000 : ℚ)
  oldHi := (10537500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1935, piece_1936]
}

def cell_7551 : Cell := { cellDefaults with
  domain := ⟨(13878125000000001 / 50000000000000000 : ℚ), (13881250000000001 / 50000000000000000 : ℚ)⟩
  center := (13879687500000001 / 50000000000000000 : ℚ)
  supportValue := (263209977586333 / 312500000000000 : ℚ)
  supportSlope := (-7243101699401677 / 1000000000000000 : ℚ)
  oldCenter := (263209977586333 / 312500000000000 : ℚ)
  oldLo := (10525000000000001 / 12500000000000000 : ℚ)
  oldHi := (84250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1935]
}

def cell_7552 : Cell := { cellDefaults with
  domain := ⟨(13881250000000001 / 50000000000000000 : ℚ), (13884375000000001 / 50000000000000000 : ℚ)⟩
  center := (13882812500000001 / 50000000000000000 : ℚ)
  supportValue := (8418194338001597 / 10000000000000000 : ℚ)
  supportSlope := (-7236863397377391 / 1000000000000000 : ℚ)
  oldCenter := (8418194338001597 / 10000000000000000 : ℚ)
  oldLo := (84150000000000003 / 100000000000000000 : ℚ)
  oldHi := (84250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1934, piece_1935]
}

def cell_7553 : Cell := { cellDefaults with
  domain := ⟨(13884375000000001 / 50000000000000000 : ℚ), (13887500000000001 / 50000000000000000 : ℚ)⟩
  center := (13885937500000001 / 50000000000000000 : ℚ)
  supportValue := (525854581052611 / 625000000000000 : ℚ)
  supportSlope := (-903827625341691 / 125000000000000 : ℚ)
  oldCenter := (525854581052611 / 625000000000000 : ℚ)
  oldLo := (10512500000000001 / 12500000000000000 : ℚ)
  oldHi := (10525000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1933, piece_1934]
}

def cell_7554 : Cell := { cellDefaults with
  domain := ⟨(13887500000000001 / 50000000000000000 : ℚ), (13890625000000001 / 50000000000000000 : ℚ)⟩
  center := (13889062500000001 / 50000000000000000 : ℚ)
  supportValue := (2102289039106981 / 2500000000000000 : ℚ)
  supportSlope := (-7224383178755289 / 1000000000000000 : ℚ)
  oldCenter := (2102289039106981 / 2500000000000000 : ℚ)
  oldLo := (42025000000000001 / 50000000000000000 : ℚ)
  oldHi := (84150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1932, piece_1933]
}

def cell_7555 : Cell := { cellDefaults with
  domain := ⟨(13890625000000001 / 50000000000000000 : ℚ), (13893750000000001 / 50000000000000000 : ℚ)⟩
  center := (13892187500000001 / 50000000000000000 : ℚ)
  supportValue := (840464291390353 / 1000000000000000 : ℚ)
  supportSlope := (-3609074963447867 / 500000000000000 : ℚ)
  oldCenter := (840464291390353 / 1000000000000000 : ℚ)
  oldLo := (10500000000000001 / 12500000000000000 : ℚ)
  oldHi := (10512500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1931, piece_1932]
}

def cell_7556 : Cell := { cellDefaults with
  domain := ⟨(13893750000000001 / 50000000000000000 : ℚ), (13896875000000001 / 50000000000000000 : ℚ)⟩
  center := (13895312500000001 / 50000000000000000 : ℚ)
  supportValue := (8400133539067839 / 10000000000000000 : ℚ)
  supportSlope := (-1802980322916703 / 250000000000000 : ℚ)
  oldCenter := (8400133539067839 / 10000000000000000 : ℚ)
  oldLo := (419804469273743 / 500000000000000 : ℚ)
  oldHi := (42025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1930, piece_1931]
}

def cell_7557 : Cell := { cellDefaults with
  domain := ⟨(13896875000000001 / 50000000000000000 : ℚ), (13900000000000001 / 50000000000000000 : ℚ)⟩
  center := (13898437500000001 / 50000000000000000 : ℚ)
  supportValue := (8395627975324123 / 10000000000000000 : ℚ)
  supportSlope := (-1801424307057431 / 250000000000000 : ℚ)
  oldCenter := (8395627975324123 / 10000000000000000 : ℚ)
  oldLo := (10487500000000001 / 12500000000000000 : ℚ)
  oldHi := (10500000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1928, piece_1929, piece_1930]
}

def cell_7558 : Cell := { cellDefaults with
  domain := ⟨(13900000000000001 / 50000000000000000 : ℚ), (222450000000000017 / 800000000000000000 : ℚ)⟩
  r := (83412097037279 / 100000000000000 : ℚ)
  w := (17908945400973 / 10000000000000 : ℚ)
  center := (444850000000000033 / 1600000000000000000 : ℚ)
  supportValue := (1681732324989969 / 2000000000000000 : ℚ)
  supportSlope := (-288718448644397 / 40000000000000 : ℚ)
  oldCenter := (1681732324989969 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_705
  oldLo := (42025000000000001 / 50000000000000000 : ℚ)
  oldHi := (84150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1932, piece_1933]
}

def cell_7559 : Cell := { cellDefaults with
  domain := ⟨(222450000000000017 / 800000000000000000 : ℚ), (111250000000000009 / 400000000000000000 : ℚ)⟩
  r := (83412097037279 / 100000000000000 : ℚ)
  w := (17908945400973 / 10000000000000 : ℚ)
  center := (88990000000000007 / 320000000000000000 : ℚ)
  supportValue := (2101038097849009 / 2500000000000000 : ℚ)
  supportSlope := (-14423488256731499 / 2000000000000000 : ℚ)
  oldCenter := (2101038097849009 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_705
  oldLo := (10500000000000001 / 12500000000000000 : ℚ)
  oldHi := (10512500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1931, piece_1932]
}

def cell_7560 : Cell := { cellDefaults with
  domain := ⟨(111250000000000009 / 400000000000000000 : ℚ), (222550000000000019 / 800000000000000000 : ℚ)⟩
  r := (83412097037279 / 100000000000000 : ℚ)
  w := (17908945400973 / 10000000000000 : ℚ)
  center := (445050000000000037 / 1600000000000000000 : ℚ)
  supportValue := (4199823521389497 / 5000000000000000 : ℚ)
  supportSlope := (-720553164783041 / 100000000000000 : ℚ)
  oldCenter := (4199823521389497 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_705
  oldLo := (419804469273743 / 500000000000000 : ℚ)
  oldHi := (42025000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1930, piece_1931]
}

def cell_7561 : Cell := { cellDefaults with
  domain := ⟨(222550000000000019 / 800000000000000000 : ℚ), (11130000000000001 / 40000000000000000 : ℚ)⟩
  r := (83412097037279 / 100000000000000 : ℚ)
  w := (17908945400973 / 10000000000000 : ℚ)
  center := (445150000000000039 / 1600000000000000000 : ℚ)
  supportValue := (8395145546169119 / 10000000000000000 : ℚ)
  supportSlope := (-7199323695917881 / 1000000000000000 : ℚ)
  oldCenter := (8395145546169119 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_705
  oldLo := (10487500000000001 / 12500000000000000 : ℚ)
  oldHi := (10500000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1928, piece_1929, piece_1930]
}

def cell_7562 : Cell := { cellDefaults with
  domain := ⟨(11130000000000001 / 40000000000000000 : ℚ), (222650000000000021 / 800000000000000000 : ℚ)⟩
  r := (83412097037279 / 100000000000000 : ℚ)
  w := (17908945400973 / 10000000000000 : ℚ)
  center := (445250000000000041 / 1600000000000000000 : ℚ)
  supportValue := (2097661962132377 / 2500000000000000 : ℚ)
  supportSlope := (-7193120234052797 / 1000000000000000 : ℚ)
  oldCenter := (2097661962132377 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_705
  oldLo := (41925000000000001 / 50000000000000000 : ℚ)
  oldHi := (41975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1927, piece_1928]
}

def cell_7563 : Cell := { cellDefaults with
  domain := ⟨(222650000000000021 / 800000000000000000 : ℚ), (111350000000000011 / 400000000000000000 : ℚ)⟩
  r := (83412097037279 / 100000000000000 : ℚ)
  w := (17908945400973 / 10000000000000 : ℚ)
  center := (445350000000000043 / 1600000000000000000 : ℚ)
  supportValue := (8386154025966377 / 10000000000000000 : ℚ)
  supportSlope := (-7186921264341917 / 1000000000000000 : ℚ)
  oldCenter := (8386154025966377 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_705
  oldLo := (10475000000000001 / 12500000000000000 : ℚ)
  oldHi := (10487500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1926, piece_1927]
}

def cell_7564 : Cell := { cellDefaults with
  domain := ⟨(111350000000000011 / 400000000000000000 : ℚ), (222750000000000023 / 800000000000000000 : ℚ)⟩
  r := (83412097037279 / 100000000000000 : ℚ)
  w := (17908945400973 / 10000000000000 : ℚ)
  center := (89090000000000009 / 320000000000000000 : ℚ)
  supportValue := (8381664075668547 / 10000000000000000 : ℚ)
  supportSlope := (-718072674759881 / 100000000000000 : ℚ)
  oldCenter := (8381664075668547 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_705
  oldLo := (41875000000000001 / 50000000000000000 : ℚ)
  oldHi := (41925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1925, piece_1926]
}

def cell_7565 : Cell := { cellDefaults with
  domain := ⟨(222750000000000023 / 800000000000000000 : ℚ), (27850000000000003 / 100000000000000000 : ℚ)⟩
  r := (83412097037279 / 100000000000000 : ℚ)
  w := (17908945400973 / 10000000000000 : ℚ)
  center := (445550000000000047 / 1600000000000000000 : ℚ)
  supportValue := (8377177994851817 / 10000000000000000 : ℚ)
  supportSlope := (-179363419630981 / 25000000000000 : ℚ)
  oldCenter := (8377177994851817 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_705
  oldLo := (10462500000000001 / 12500000000000000 : ℚ)
  oldHi := (10475000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1924, piece_1925]
}

def cell_7566 : Cell := { cellDefaults with
  domain := ⟨(27850000000000003 / 100000000000000000 : ℚ), (27856250000000003 / 100000000000000000 : ℚ)⟩
  r := (4167151091611 / 5000000000000 : ℚ)
  w := (8948806559989 / 5000000000000 : ℚ)
  center := (27853125000000003 / 100000000000000000 : ℚ)
  supportValue := (1678032006635873 / 2000000000000000 : ℚ)
  supportSlope := (-14373484585185281 / 2000000000000000 : ℚ)
  oldCenter := (1678032006635873 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_706
  oldLo := (41925000000000001 / 50000000000000000 : ℚ)
  oldHi := (41975000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1927, piece_1928]
}

def cell_7567 : Cell := { cellDefaults with
  domain := ⟨(27856250000000003 / 100000000000000000 : ℚ), (27862500000000003 / 100000000000000000 : ℚ)⟩
  r := (4167151091611 / 5000000000000 : ℚ)
  w := (8948806559989 / 5000000000000 : ℚ)
  center := (27859375000000003 / 100000000000000000 : ℚ)
  supportValue := (8385670189715867 / 10000000000000000 : ℚ)
  supportSlope := (-14361130325944771 / 2000000000000000 : ℚ)
  oldCenter := (8385670189715867 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_706
  oldLo := (10475000000000001 / 12500000000000000 : ℚ)
  oldHi := (10487500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1926, piece_1927]
}

def cell_7568 : Cell := { cellDefaults with
  domain := ⟨(27862500000000003 / 100000000000000000 : ℚ), (27868750000000003 / 100000000000000000 : ℚ)⟩
  r := (4167151091611 / 5000000000000 : ℚ)
  w := (8948806559989 / 5000000000000 : ℚ)
  center := (27865625000000003 / 100000000000000000 : ℚ)
  supportValue := (104764802560969 / 125000000000000 : ℚ)
  supportSlope := (-14348784905912737 / 2000000000000000 : ℚ)
  oldCenter := (104764802560969 / 125000000000000 : ℚ)
  newCoefficients := coefficients_706
  oldLo := (41875000000000001 / 50000000000000000 : ℚ)
  oldHi := (41925000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1925, piece_1926]
}

def cell_7569 : Cell := { cellDefaults with
  domain := ⟨(27868750000000003 / 100000000000000000 : ℚ), (27875000000000003 / 100000000000000000 : ℚ)⟩
  r := (4167151091611 / 5000000000000 : ℚ)
  w := (8948806559989 / 5000000000000 : ℚ)
  center := (27871875000000003 / 100000000000000000 : ℚ)
  supportValue := (8376702075888853 / 10000000000000000 : ℚ)
  supportSlope := (-14336448580380079 / 2000000000000000 : ℚ)
  oldCenter := (8376702075888853 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_706
  oldLo := (10462500000000001 / 12500000000000000 : ℚ)
  oldHi := (10475000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1924, piece_1925]
}

def cell_7570 : Cell := { cellDefaults with
  domain := ⟨(27875000000000003 / 100000000000000000 : ℚ), (27881250000000003 / 100000000000000000 : ℚ)⟩
  r := (4167151091611 / 5000000000000 : ℚ)
  w := (8948806559989 / 5000000000000 : ℚ)
  center := (27878125000000003 / 100000000000000000 : ℚ)
  supportValue := (1674444759980981 / 2000000000000000 : ℚ)
  supportSlope := (-7162060563857153 / 1000000000000000 : ℚ)
  oldCenter := (1674444759980981 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_706
  oldHi := (41875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1923, piece_1924]
}

def cell_7571 : Cell := { cellDefaults with
  domain := ⟨(27881250000000003 / 100000000000000000 : ℚ), (27887500000000003 / 100000000000000000 : ℚ)⟩
  r := (4167151091611 / 5000000000000 : ℚ)
  w := (8948806559989 / 5000000000000 : ℚ)
  center := (27884375000000003 / 100000000000000000 : ℚ)
  supportValue := (4183874687081799 / 5000000000000000 : ℚ)
  supportSlope := (-7156080570684509 / 1000000000000000 : ℚ)
  oldCenter := (4183874687081799 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_706
  oldPieces := [piece_1923]
}

def cell_7572 : Cell := { cellDefaults with
  domain := ⟨(27887500000000003 / 100000000000000000 : ℚ), (27893750000000003 / 100000000000000000 : ℚ)⟩
  r := (4167151091611 / 5000000000000 : ℚ)
  w := (8948806559989 / 5000000000000 : ℚ)
  center := (27890625000000003 / 100000000000000000 : ℚ)
  supportValue := (8363278795897299 / 10000000000000000 : ℚ)
  supportSlope := (-3574967896359027 / 500000000000000 : ℚ)
  oldCenter := (8363278795897299 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_706
  oldLo := (10450000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1922, piece_1923]
}

def cell_7573 : Cell := { cellDefaults with
  domain := ⟨(27893750000000003 / 100000000000000000 : ℚ), (27900000000000003 / 100000000000000000 : ℚ)⟩
  r := (4167151091611 / 5000000000000 : ℚ)
  w := (8948806559989 / 5000000000000 : ℚ)
  center := (27896875000000003 / 100000000000000000 : ℚ)
  supportValue := (4179406031172677 / 5000000000000000 : ℚ)
  supportSlope := (-446486725262929 / 62500000000000 : ℚ)
  oldCenter := (4179406031172677 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_706
  oldLo := (41775000000000001 / 50000000000000000 : ℚ)
  oldHi := (41825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1921, piece_1922]
}

def cell_7574 : Cell := { cellDefaults with
  domain := ⟨(27900000000000003 / 100000000000000000 : ℚ), (27906250000000003 / 100000000000000000 : ℚ)⟩
  r := (83274100260443 / 100000000000000 : ℚ)
  w := (8943154531787 / 5000000000000 : ℚ)
  center := (27903125000000003 / 100000000000000000 : ℚ)
  supportValue := (2092935738524407 / 2500000000000000 : ℚ)
  supportSlope := (-3577867684409597 / 500000000000000 : ℚ)
  oldCenter := (2092935738524407 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_707
  oldHi := (41875000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1923, piece_1924]
}

def cell_7575 : Cell := { cellDefaults with
  domain := ⟨(27906250000000003 / 100000000000000000 : ℚ), (27912500000000003 / 100000000000000000 : ℚ)⟩
  r := (83274100260443 / 100000000000000 : ℚ)
  w := (8943154531787 / 5000000000000 : ℚ)
  center := (27909375000000003 / 100000000000000000 : ℚ)
  supportValue := (4183636237585583 / 5000000000000000 : ℚ)
  supportSlope := (-7149606526159147 / 1000000000000000 : ℚ)
  oldCenter := (4183636237585583 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_707
  oldPieces := [piece_1923]
}

def cell_7576 : Cell := { cellDefaults with
  domain := ⟨(27912500000000003 / 100000000000000000 : ℚ), (27918750000000003 / 100000000000000000 : ℚ)⟩
  r := (83274100260443 / 100000000000000 : ℚ)
  w := (8943154531787 / 5000000000000 : ℚ)
  center := (27915625000000003 / 100000000000000000 : ℚ)
  supportValue := (8362805831440491 / 10000000000000000 : ℚ)
  supportSlope := (-3571825410642049 / 500000000000000 : ℚ)
  oldCenter := (8362805831440491 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_707
  oldLo := (10450000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1922, piece_1923]
}

def cell_7577 : Cell := { cellDefaults with
  domain := ⟨(27918750000000003 / 100000000000000000 : ℚ), (27925000000000003 / 100000000000000000 : ℚ)⟩
  r := (83274100260443 / 100000000000000 : ℚ)
  w := (8943154531787 / 5000000000000 : ℚ)
  center := (27921875000000003 / 100000000000000000 : ℚ)
  supportValue := (2089585755040017 / 2500000000000000 : ℚ)
  supportSlope := (-7137522245997729 / 1000000000000000 : ℚ)
  oldCenter := (2089585755040017 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_707
  oldLo := (41775000000000001 / 50000000000000000 : ℚ)
  oldHi := (41825000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1921, piece_1922]
}

def cell_7578 : Cell := { cellDefaults with
  domain := ⟨(27925000000000003 / 100000000000000000 : ℚ), (27931250000000003 / 100000000000000000 : ℚ)⟩
  r := (83274100260443 / 100000000000000 : ℚ)
  w := (8943154531787 / 5000000000000 : ℚ)
  center := (27928125000000003 / 100000000000000000 : ℚ)
  supportValue := (8353884038580401 / 10000000000000000 : ℚ)
  supportSlope := (-1782849517168117 / 250000000000000 : ℚ)
  oldCenter := (8353884038580401 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_707
  oldLo := (10437500000000001 / 12500000000000000 : ℚ)
  oldHi := (10450000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1920, piece_1921]
}

def cell_7579 : Cell := { cellDefaults with
  domain := ⟨(27931250000000003 / 100000000000000000 : ℚ), (27937500000000003 / 100000000000000000 : ℚ)⟩
  r := (83274100260443 / 100000000000000 : ℚ)
  w := (8943154531787 / 5000000000000 : ℚ)
  center := (27934375000000003 / 100000000000000000 : ℚ)
  supportValue := (4174714441980393 / 5000000000000000 : ℚ)
  supportSlope := (-44532989236723 / 6250000000000 : ℚ)
  oldCenter := (4174714441980393 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_707
  oldLo := (41725000000000001 / 50000000000000000 : ℚ)
  oldHi := (41775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1919, piece_1920]
}

def cell_7580 : Cell := { cellDefaults with
  domain := ⟨(27937500000000003 / 100000000000000000 : ℚ), (27943750000000003 / 100000000000000000 : ℚ)⟩
  r := (83274100260443 / 100000000000000 : ℚ)
  w := (8943154531787 / 5000000000000 : ℚ)
  center := (27940625000000003 / 100000000000000000 : ℚ)
  supportValue := (4172488776780481 / 5000000000000000 : ℚ)
  supportSlope := (-1779790718250851 / 250000000000000 : ℚ)
  oldCenter := (4172488776780481 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_707
  oldLo := (8340782122905027 / 10000000000000000 : ℚ)
  oldHi := (10437500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1918, piece_1919]
}

def cell_7581 : Cell := { cellDefaults with
  domain := ⟨(27943750000000003 / 100000000000000000 : ℚ), (27950000000000003 / 100000000000000000 : ℚ)⟩
  r := (83274100260443 / 100000000000000 : ℚ)
  w := (8943154531787 / 5000000000000 : ℚ)
  center := (27946875000000003 / 100000000000000000 : ℚ)
  supportValue := (8340529927776477 / 10000000000000000 : ℚ)
  supportSlope := (-7113051907460033 / 1000000000000000 : ℚ)
  oldCenter := (8340529927776477 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_707
  oldLo := (41675000000000001 / 50000000000000000 : ℚ)
  oldHi := (41725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1916, piece_1917, piece_1918]
}

def cell_7582 : Cell := { cellDefaults with
  domain := ⟨(27950000000000003 / 100000000000000000 : ℚ), (27956250000000003 / 100000000000000000 : ℚ)⟩
  r := (41602667441281 / 50000000000000 : ℚ)
  w := (17875032725037 / 10000000000000 : ℚ)
  center := (27953125000000003 / 100000000000000000 : ℚ)
  supportValue := (417670488418207 / 500000000000000 : ℚ)
  supportSlope := (-2850050999393261 / 400000000000000 : ℚ)
  oldCenter := (417670488418207 / 500000000000000 : ℚ)
  newCoefficients := coefficients_708
  oldLo := (10437500000000001 / 12500000000000000 : ℚ)
  oldHi := (10450000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1920, piece_1921]
}

def cell_7583 : Cell := { cellDefaults with
  domain := ⟨(27956250000000003 / 100000000000000000 : ℚ), (27962500000000003 / 100000000000000000 : ℚ)⟩
  r := (41602667441281 / 50000000000000 : ℚ)
  w := (17875032725037 / 10000000000000 : ℚ)
  center := (27959375000000003 / 100000000000000000 : ℚ)
  supportValue := (834895852757313 / 1000000000000000 : ℚ)
  supportSlope := (-3559512768710249 / 500000000000000 : ℚ)
  oldCenter := (834895852757313 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_708
  oldLo := (41725000000000001 / 50000000000000000 : ℚ)
  oldHi := (41775000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1919, piece_1920]
}

def cell_7584 : Cell := { cellDefaults with
  domain := ⟨(27962500000000003 / 100000000000000000 : ℚ), (27968750000000003 / 100000000000000000 : ℚ)⟩
  r := (41602667441281 / 50000000000000 : ℚ)
  w := (17875032725037 / 10000000000000 : ℚ)
  center := (27965625000000003 / 100000000000000000 : ℚ)
  supportValue := (417225554993331 / 500000000000000 : ℚ)
  supportSlope := (-1422585587939551 / 200000000000000 : ℚ)
  oldCenter := (417225554993331 / 500000000000000 : ℚ)
  newCoefficients := coefficients_708
  oldLo := (8340782122905027 / 10000000000000000 : ℚ)
  oldHi := (10437500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1918, piece_1919]
}

def cell_7585 : Cell := { cellDefaults with
  domain := ⟨(27968750000000003 / 100000000000000000 : ℚ), (27975000000000003 / 100000000000000000 : ℚ)⟩
  r := (41602667441281 / 50000000000000 : ℚ)
  w := (17875032725037 / 10000000000000 : ℚ)
  center := (27971875000000003 / 100000000000000000 : ℚ)
  supportValue := (8340067469267481 / 10000000000000000 : ℚ)
  supportSlope := (-3553417383844959 / 500000000000000 : ℚ)
  oldCenter := (8340067469267481 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_708
  oldLo := (41675000000000001 / 50000000000000000 : ℚ)
  oldHi := (41725000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1916, piece_1917, piece_1918]
}

def cell_7586 : Cell := { cellDefaults with
  domain := ⟨(27975000000000003 / 100000000000000000 : ℚ), (27981250000000003 / 100000000000000000 : ℚ)⟩
  r := (41602667441281 / 50000000000000 : ℚ)
  w := (17875032725037 / 10000000000000 : ℚ)
  center := (27978125000000003 / 100000000000000000 : ℚ)
  supportValue := (8335627533733593 / 10000000000000000 : ℚ)
  supportSlope := (-7100745889303539 / 1000000000000000 : ℚ)
  oldCenter := (8335627533733593 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_708
  oldLo := (83300000000000007 / 100000000000000000 : ℚ)
  oldHi := (83400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1915, piece_1916]
}

def cell_7587 : Cell := { cellDefaults with
  domain := ⟨(27981250000000003 / 100000000000000000 : ℚ), (27987500000000003 / 100000000000000000 : ℚ)⟩
  r := (41602667441281 / 50000000000000 : ℚ)
  w := (17875032725037 / 10000000000000 : ℚ)
  center := (27984375000000003 / 100000000000000000 : ℚ)
  supportValue := (8331191401694291 / 10000000000000000 : ℚ)
  supportSlope := (-14189322528949333 / 2000000000000000 : ℚ)
  oldCenter := (8331191401694291 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_708
  oldLo := (41625000000000001 / 50000000000000000 : ℚ)
  oldHi := (41675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1914, piece_1915]
}

def cell_7588 : Cell := { cellDefaults with
  domain := ⟨(27987500000000003 / 100000000000000000 : ℚ), (27993750000000003 / 100000000000000000 : ℚ)⟩
  r := (41602667441281 / 50000000000000 : ℚ)
  w := (17875032725037 / 10000000000000 : ℚ)
  center := (27990625000000003 / 100000000000000000 : ℚ)
  supportValue := (2081689767615477 / 2500000000000000 : ℚ)
  supportSlope := (-2835432409587213 / 400000000000000 : ℚ)
  oldCenter := (2081689767615477 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_708
  oldLo := (83200000000000007 / 100000000000000000 : ℚ)
  oldHi := (83300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1913, piece_1914]
}

def cell_7589 : Cell := { cellDefaults with
  domain := ⟨(27993750000000003 / 100000000000000000 : ℚ), (28000000000000003 / 100000000000000000 : ℚ)⟩
  r := (41602667441281 / 50000000000000 : ℚ)
  w := (17875032725037 / 10000000000000 : ℚ)
  center := (27996875000000003 / 100000000000000000 : ℚ)
  supportValue := (4161165268646539 / 5000000000000000 : ℚ)
  supportSlope := (-1770636158735961 / 250000000000000 : ℚ)
  oldCenter := (4161165268646539 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_708
  oldLo := (83200000000000007 / 100000000000000000 : ℚ)
  oldHi := (41625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1913]
}

def cell_7590 : Cell := { cellDefaults with
  domain := ⟨(28000000000000003 / 100000000000000000 : ℚ), (28006250000000003 / 100000000000000000 : ℚ)⟩
  r := (83136724062161 / 100000000000000 : ℚ)
  w := (17863784411943 / 10000000000000 : ℚ)
  center := (28003125000000003 / 100000000000000000 : ℚ)
  supportValue := (4167579899683589 / 5000000000000000 : ℚ)
  supportSlope := (-14189050771165057 / 2000000000000000 : ℚ)
  oldCenter := (4167579899683589 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_709
  oldLo := (83300000000000007 / 100000000000000000 : ℚ)
  oldHi := (83400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1915, piece_1916]
}

def cell_7591 : Cell := { cellDefaults with
  domain := ⟨(28006250000000003 / 100000000000000000 : ℚ), (28012500000000003 / 100000000000000000 : ℚ)⟩
  r := (83136724062161 / 100000000000000 : ℚ)
  w := (17863784411943 / 10000000000000 : ℚ)
  center := (28009375000000003 / 100000000000000000 : ℚ)
  supportValue := (8330727549211421 / 10000000000000000 : ℚ)
  supportSlope := (-7088458822071431 / 1000000000000000 : ℚ)
  oldCenter := (8330727549211421 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_709
  oldLo := (41625000000000001 / 50000000000000000 : ℚ)
  oldHi := (41675000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1914, piece_1915]
}

def cell_7592 : Cell := { cellDefaults with
  domain := ⟨(28012500000000003 / 100000000000000000 : ℚ), (28018750000000003 / 100000000000000000 : ℚ)⟩
  r := (83136724062161 / 100000000000000 : ℚ)
  w := (17863784411943 / 10000000000000 : ℚ)
  center := (28015625000000003 / 100000000000000000 : ℚ)
  supportValue := (4163149544286529 / 5000000000000000 : ℚ)
  supportSlope := (-7082396630597287 / 1000000000000000 : ℚ)
  oldCenter := (4163149544286529 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_709
  oldLo := (83200000000000007 / 100000000000000000 : ℚ)
  oldHi := (83300000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1913, piece_1914]
}

def cell_7593 : Cell := { cellDefaults with
  domain := ⟨(28018750000000003 / 100000000000000000 : ℚ), (28025000000000003 / 100000000000000000 : ℚ)⟩
  r := (83136724062161 / 100000000000000 : ℚ)
  w := (17863784411943 / 10000000000000 : ℚ)
  center := (28021875000000003 / 100000000000000000 : ℚ)
  supportValue := (332874976589263 / 400000000000000 : ℚ)
  supportSlope := (-1415267738278203 / 200000000000000 : ℚ)
  oldCenter := (332874976589263 / 400000000000000 : ℚ)
  newCoefficients := coefficients_709
  oldLo := (41575000000000001 / 50000000000000000 : ℚ)
  oldHi := (41625000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1912, piece_1913]
}

def cell_7594 : Cell := { cellDefaults with
  domain := ⟨(28025000000000003 / 100000000000000000 : ℚ), (28031250000000003 / 100000000000000000 : ℚ)⟩
  r := (83136724062161 / 100000000000000 : ℚ)
  w := (17863784411943 / 10000000000000 : ℚ)
  center := (28028125000000003 / 100000000000000000 : ℚ)
  supportValue := (8317453525031313 / 10000000000000000 : ℚ)
  supportSlope := (-220949080411037 / 31250000000000 : ℚ)
  oldCenter := (8317453525031313 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_709
  oldLo := (41575000000000001 / 50000000000000000 : ℚ)
  oldHi := (83200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1912]
}

def cell_7595 : Cell := { cellDefaults with
  domain := ⟨(28031250000000003 / 100000000000000000 : ℚ), (28037500000000003 / 100000000000000000 : ℚ)⟩
  r := (83136724062161 / 100000000000000 : ℚ)
  w := (17863784411943 / 10000000000000 : ℚ)
  center := (28034375000000003 / 100000000000000000 : ℚ)
  supportValue := (8313036416812309 / 10000000000000000 : ℚ)
  supportSlope := (-7064448027218617 / 1000000000000000 : ℚ)
  oldCenter := (8313036416812309 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_709
  oldLo := (83100000000000007 / 100000000000000000 : ℚ)
  oldHi := (83200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1911, piece_1912]
}

def cell_7596 : Cell := { cellDefaults with
  domain := ⟨(28037500000000003 / 100000000000000000 : ℚ), (28043750000000003 / 100000000000000000 : ℚ)⟩
  r := (83136724062161 / 100000000000000 : ℚ)
  w := (17863784411943 / 10000000000000 : ℚ)
  center := (28040625000000003 / 100000000000000000 : ℚ)
  supportValue := (8308623087420011 / 10000000000000000 : ℚ)
  supportSlope := (-3529202617123417 / 500000000000000 : ℚ)
  oldCenter := (8308623087420011 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_709
  oldLo := (41525000000000001 / 50000000000000000 : ℚ)
  oldHi := (41575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1910, piece_1911]
}

def cell_7597 : Cell := { cellDefaults with
  domain := ⟨(28043750000000003 / 100000000000000000 : ℚ), (28050000000000003 / 100000000000000000 : ℚ)⟩
  r := (83136724062161 / 100000000000000 : ℚ)
  w := (17863784411943 / 10000000000000 : ℚ)
  center := (28046875000000003 / 100000000000000000 : ℚ)
  supportValue := (2076053383550363 / 2500000000000000 : ℚ)
  supportSlope := (-1763091671755923 / 250000000000000 : ℚ)
  oldCenter := (2076053383550363 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_709
  oldLo := (83000000000000007 / 100000000000000000 : ℚ)
  oldHi := (83100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1909, piece_1910]
}

def cell_7598 : Cell := { cellDefaults with
  domain := ⟨(28050000000000003 / 100000000000000000 : ℚ), (28056250000000003 / 100000000000000000 : ℚ)⟩
  r := (5191766560957 / 6250000000000 : ℚ)
  w := (17852564245211 / 10000000000000 : ℚ)
  center := (28053125000000003 / 100000000000000000 : ℚ)
  supportValue := (8316992367593423 / 10000000000000000 : ℚ)
  supportSlope := (-441507163629673 / 62500000000000 : ℚ)
  oldCenter := (8316992367593423 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_710
  oldLo := (83100000000000007 / 100000000000000000 : ℚ)
  oldHi := (83200000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1911, piece_1912]
}

def cell_7599 : Cell := { cellDefaults with
  domain := ⟨(28056250000000003 / 100000000000000000 : ℚ), (28062500000000003 / 100000000000000000 : ℚ)⟩
  r := (5191766560957 / 6250000000000 : ℚ)
  w := (17852564245211 / 10000000000000 : ℚ)
  center := (28059375000000003 / 100000000000000000 : ℚ)
  supportValue := (8312579109863573 / 10000000000000000 : ℚ)
  supportSlope := (-4411385106886101 / 625000000000000 : ℚ)
  oldCenter := (8312579109863573 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_710
  oldLo := (83100000000000007 / 100000000000000000 : ℚ)
  oldHi := (41575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1911]
}

theorem check_7550 : cell_7550.check = true := by
  decide +kernel

theorem check_7551 : cell_7551.check = true := by
  decide +kernel

theorem check_7552 : cell_7552.check = true := by
  decide +kernel

theorem check_7553 : cell_7553.check = true := by
  decide +kernel

theorem check_7554 : cell_7554.check = true := by
  decide +kernel

theorem check_7555 : cell_7555.check = true := by
  decide +kernel

theorem check_7556 : cell_7556.check = true := by
  decide +kernel

theorem check_7557 : cell_7557.check = true := by
  decide +kernel

theorem check_7558 : cell_7558.check = true := by
  decide +kernel

theorem check_7559 : cell_7559.check = true := by
  decide +kernel

theorem check_7560 : cell_7560.check = true := by
  decide +kernel

theorem check_7561 : cell_7561.check = true := by
  decide +kernel

theorem check_7562 : cell_7562.check = true := by
  decide +kernel

theorem check_7563 : cell_7563.check = true := by
  decide +kernel

theorem check_7564 : cell_7564.check = true := by
  decide +kernel

theorem check_7565 : cell_7565.check = true := by
  decide +kernel

theorem check_7566 : cell_7566.check = true := by
  decide +kernel

theorem check_7567 : cell_7567.check = true := by
  decide +kernel

theorem check_7568 : cell_7568.check = true := by
  decide +kernel

theorem check_7569 : cell_7569.check = true := by
  decide +kernel

theorem check_7570 : cell_7570.check = true := by
  decide +kernel

theorem check_7571 : cell_7571.check = true := by
  decide +kernel

theorem check_7572 : cell_7572.check = true := by
  decide +kernel

theorem check_7573 : cell_7573.check = true := by
  decide +kernel

theorem check_7574 : cell_7574.check = true := by
  decide +kernel

theorem check_7575 : cell_7575.check = true := by
  decide +kernel

theorem check_7576 : cell_7576.check = true := by
  decide +kernel

theorem check_7577 : cell_7577.check = true := by
  decide +kernel

theorem check_7578 : cell_7578.check = true := by
  decide +kernel

theorem check_7579 : cell_7579.check = true := by
  decide +kernel

theorem check_7580 : cell_7580.check = true := by
  decide +kernel

theorem check_7581 : cell_7581.check = true := by
  decide +kernel

theorem check_7582 : cell_7582.check = true := by
  decide +kernel

theorem check_7583 : cell_7583.check = true := by
  decide +kernel

theorem check_7584 : cell_7584.check = true := by
  decide +kernel

theorem check_7585 : cell_7585.check = true := by
  decide +kernel

theorem check_7586 : cell_7586.check = true := by
  decide +kernel

theorem check_7587 : cell_7587.check = true := by
  decide +kernel

theorem check_7588 : cell_7588.check = true := by
  decide +kernel

theorem check_7589 : cell_7589.check = true := by
  decide +kernel

theorem check_7590 : cell_7590.check = true := by
  decide +kernel

theorem check_7591 : cell_7591.check = true := by
  decide +kernel

theorem check_7592 : cell_7592.check = true := by
  decide +kernel

theorem check_7593 : cell_7593.check = true := by
  decide +kernel

theorem check_7594 : cell_7594.check = true := by
  decide +kernel

theorem check_7595 : cell_7595.check = true := by
  decide +kernel

theorem check_7596 : cell_7596.check = true := by
  decide +kernel

theorem check_7597 : cell_7597.check = true := by
  decide +kernel

theorem check_7598 : cell_7598.check = true := by
  decide +kernel

theorem check_7599 : cell_7599.check = true := by
  decide +kernel

def cells : List Cell := [cell_7550, cell_7551, cell_7552, cell_7553, cell_7554, cell_7555, cell_7556, cell_7557, cell_7558, cell_7559, cell_7560, cell_7561, cell_7562, cell_7563, cell_7564, cell_7565, cell_7566, cell_7567, cell_7568, cell_7569, cell_7570, cell_7571, cell_7572, cell_7573, cell_7574, cell_7575, cell_7576, cell_7577, cell_7578, cell_7579, cell_7580, cell_7581, cell_7582, cell_7583, cell_7584, cell_7585, cell_7586, cell_7587, cell_7588, cell_7589, cell_7590, cell_7591, cell_7592, cell_7593, cell_7594, cell_7595, cell_7596, cell_7597, cell_7598, cell_7599]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7550, check_7551, check_7552, check_7553, check_7554, check_7555, check_7556, check_7557, check_7558, check_7559, check_7560, check_7561, check_7562, check_7563, check_7564, check_7565, check_7566, check_7567, check_7568, check_7569, check_7570, check_7571, check_7572, check_7573, check_7574, check_7575, check_7576, check_7577, check_7578, check_7579, check_7580, check_7581, check_7582, check_7583, check_7584, check_7585, check_7586, check_7587, check_7588, check_7589, check_7590, check_7591, check_7592, check_7593, check_7594, check_7595, check_7596, check_7597, check_7598, check_7599, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0151

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0151
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0151
open AnalyticBounds.ExpressionCertificate

theorem linked_7550 : Linked cell_7550 pieces := by
  link_source cell_7550 with piece_704 using piece_704_mem, ⟨piece_1935_mem, piece_1936_mem⟩

theorem linked_7551 : Linked cell_7551 pieces := by
  link_source cell_7551 with piece_704 using piece_704_mem, piece_1935_mem

theorem linked_7552 : Linked cell_7552 pieces := by
  link_source cell_7552 with piece_704 using piece_704_mem, ⟨piece_1934_mem, piece_1935_mem⟩

theorem linked_7553 : Linked cell_7553 pieces := by
  link_source cell_7553 with piece_704 using piece_704_mem, ⟨piece_1933_mem, piece_1934_mem⟩

theorem linked_7554 : Linked cell_7554 pieces := by
  link_source cell_7554 with piece_704 using piece_704_mem, ⟨piece_1932_mem, piece_1933_mem⟩

theorem linked_7555 : Linked cell_7555 pieces := by
  link_source cell_7555 with piece_704 using piece_704_mem, ⟨piece_1931_mem, piece_1932_mem⟩

theorem linked_7556 : Linked cell_7556 pieces := by
  link_source cell_7556 with piece_704 using piece_704_mem, ⟨piece_1930_mem, piece_1931_mem⟩

theorem linked_7557 : Linked cell_7557 pieces := by
  link_source cell_7557 with piece_704 using piece_704_mem, ⟨piece_1928_mem, ⟨piece_1929_mem, piece_1930_mem⟩⟩

theorem linked_7558 : Linked cell_7558 pieces := by
  link_source cell_7558 with piece_705 using piece_705_mem, ⟨piece_1932_mem, piece_1933_mem⟩

theorem linked_7559 : Linked cell_7559 pieces := by
  link_source cell_7559 with piece_705 using piece_705_mem, ⟨piece_1931_mem, piece_1932_mem⟩

theorem linked_7560 : Linked cell_7560 pieces := by
  link_source cell_7560 with piece_705 using piece_705_mem, ⟨piece_1930_mem, piece_1931_mem⟩

theorem linked_7561 : Linked cell_7561 pieces := by
  link_source cell_7561 with piece_705 using piece_705_mem, ⟨piece_1928_mem, ⟨piece_1929_mem, piece_1930_mem⟩⟩

theorem linked_7562 : Linked cell_7562 pieces := by
  link_source cell_7562 with piece_705 using piece_705_mem, ⟨piece_1927_mem, piece_1928_mem⟩

theorem linked_7563 : Linked cell_7563 pieces := by
  link_source cell_7563 with piece_705 using piece_705_mem, ⟨piece_1926_mem, piece_1927_mem⟩

theorem linked_7564 : Linked cell_7564 pieces := by
  link_source cell_7564 with piece_705 using piece_705_mem, ⟨piece_1925_mem, piece_1926_mem⟩

theorem linked_7565 : Linked cell_7565 pieces := by
  link_source cell_7565 with piece_705 using piece_705_mem, ⟨piece_1924_mem, piece_1925_mem⟩

theorem linked_7566 : Linked cell_7566 pieces := by
  link_source cell_7566 with piece_706 using piece_706_mem, ⟨piece_1927_mem, piece_1928_mem⟩

theorem linked_7567 : Linked cell_7567 pieces := by
  link_source cell_7567 with piece_706 using piece_706_mem, ⟨piece_1926_mem, piece_1927_mem⟩

theorem linked_7568 : Linked cell_7568 pieces := by
  link_source cell_7568 with piece_706 using piece_706_mem, ⟨piece_1925_mem, piece_1926_mem⟩

theorem linked_7569 : Linked cell_7569 pieces := by
  link_source cell_7569 with piece_706 using piece_706_mem, ⟨piece_1924_mem, piece_1925_mem⟩

theorem linked_7570 : Linked cell_7570 pieces := by
  link_source cell_7570 with piece_706 using piece_706_mem, ⟨piece_1923_mem, piece_1924_mem⟩

theorem linked_7571 : Linked cell_7571 pieces := by
  link_source cell_7571 with piece_706 using piece_706_mem, piece_1923_mem

theorem linked_7572 : Linked cell_7572 pieces := by
  link_source cell_7572 with piece_706 using piece_706_mem, ⟨piece_1922_mem, piece_1923_mem⟩

theorem linked_7573 : Linked cell_7573 pieces := by
  link_source cell_7573 with piece_706 using piece_706_mem, ⟨piece_1921_mem, piece_1922_mem⟩

theorem linked_7574 : Linked cell_7574 pieces := by
  link_source cell_7574 with piece_707 using piece_707_mem, ⟨piece_1923_mem, piece_1924_mem⟩

theorem linked_7575 : Linked cell_7575 pieces := by
  link_source cell_7575 with piece_707 using piece_707_mem, piece_1923_mem

theorem linked_7576 : Linked cell_7576 pieces := by
  link_source cell_7576 with piece_707 using piece_707_mem, ⟨piece_1922_mem, piece_1923_mem⟩

theorem linked_7577 : Linked cell_7577 pieces := by
  link_source cell_7577 with piece_707 using piece_707_mem, ⟨piece_1921_mem, piece_1922_mem⟩

theorem linked_7578 : Linked cell_7578 pieces := by
  link_source cell_7578 with piece_707 using piece_707_mem, ⟨piece_1920_mem, piece_1921_mem⟩

theorem linked_7579 : Linked cell_7579 pieces := by
  link_source cell_7579 with piece_707 using piece_707_mem, ⟨piece_1919_mem, piece_1920_mem⟩

theorem linked_7580 : Linked cell_7580 pieces := by
  link_source cell_7580 with piece_707 using piece_707_mem, ⟨piece_1918_mem, piece_1919_mem⟩

theorem linked_7581 : Linked cell_7581 pieces := by
  link_source cell_7581 with piece_707 using piece_707_mem, ⟨piece_1916_mem, ⟨piece_1917_mem, piece_1918_mem⟩⟩

theorem linked_7582 : Linked cell_7582 pieces := by
  link_source cell_7582 with piece_708 using piece_708_mem, ⟨piece_1920_mem, piece_1921_mem⟩

theorem linked_7583 : Linked cell_7583 pieces := by
  link_source cell_7583 with piece_708 using piece_708_mem, ⟨piece_1919_mem, piece_1920_mem⟩

theorem linked_7584 : Linked cell_7584 pieces := by
  link_source cell_7584 with piece_708 using piece_708_mem, ⟨piece_1918_mem, piece_1919_mem⟩

theorem linked_7585 : Linked cell_7585 pieces := by
  link_source cell_7585 with piece_708 using piece_708_mem, ⟨piece_1916_mem, ⟨piece_1917_mem, piece_1918_mem⟩⟩

theorem linked_7586 : Linked cell_7586 pieces := by
  link_source cell_7586 with piece_708 using piece_708_mem, ⟨piece_1915_mem, piece_1916_mem⟩

theorem linked_7587 : Linked cell_7587 pieces := by
  link_source cell_7587 with piece_708 using piece_708_mem, ⟨piece_1914_mem, piece_1915_mem⟩

theorem linked_7588 : Linked cell_7588 pieces := by
  link_source cell_7588 with piece_708 using piece_708_mem, ⟨piece_1913_mem, piece_1914_mem⟩

theorem linked_7589 : Linked cell_7589 pieces := by
  link_source cell_7589 with piece_708 using piece_708_mem, piece_1913_mem

theorem linked_7590 : Linked cell_7590 pieces := by
  link_source cell_7590 with piece_709 using piece_709_mem, ⟨piece_1915_mem, piece_1916_mem⟩

theorem linked_7591 : Linked cell_7591 pieces := by
  link_source cell_7591 with piece_709 using piece_709_mem, ⟨piece_1914_mem, piece_1915_mem⟩

theorem linked_7592 : Linked cell_7592 pieces := by
  link_source cell_7592 with piece_709 using piece_709_mem, ⟨piece_1913_mem, piece_1914_mem⟩

theorem linked_7593 : Linked cell_7593 pieces := by
  link_source cell_7593 with piece_709 using piece_709_mem, ⟨piece_1912_mem, piece_1913_mem⟩

theorem linked_7594 : Linked cell_7594 pieces := by
  link_source cell_7594 with piece_709 using piece_709_mem, piece_1912_mem

theorem linked_7595 : Linked cell_7595 pieces := by
  link_source cell_7595 with piece_709 using piece_709_mem, ⟨piece_1911_mem, piece_1912_mem⟩

theorem linked_7596 : Linked cell_7596 pieces := by
  link_source cell_7596 with piece_709 using piece_709_mem, ⟨piece_1910_mem, piece_1911_mem⟩

theorem linked_7597 : Linked cell_7597 pieces := by
  link_source cell_7597 with piece_709 using piece_709_mem, ⟨piece_1909_mem, piece_1910_mem⟩

theorem linked_7598 : Linked cell_7598 pieces := by
  link_source cell_7598 with piece_710 using piece_710_mem, ⟨piece_1911_mem, piece_1912_mem⟩

theorem linked_7599 : Linked cell_7599 pieces := by
  link_source cell_7599 with piece_710 using piece_710_mem, piece_1911_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0151.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0151.cells,List.forall_mem_cons]
  exact ⟨linked_7550, linked_7551, linked_7552, linked_7553, linked_7554, linked_7555, linked_7556, linked_7557, linked_7558, linked_7559, linked_7560, linked_7561, linked_7562, linked_7563, linked_7564, linked_7565, linked_7566, linked_7567, linked_7568, linked_7569, linked_7570, linked_7571, linked_7572, linked_7573, linked_7574, linked_7575, linked_7576, linked_7577, linked_7578, linked_7579, linked_7580, linked_7581, linked_7582, linked_7583, linked_7584, linked_7585, linked_7586, linked_7587, linked_7588, linked_7589, linked_7590, linked_7591, linked_7592, linked_7593, linked_7594, linked_7595, linked_7596, linked_7597, linked_7598, linked_7599, by simp⟩

theorem covered : covers (13875000000000001 / 50000000000000000 : ℚ) (28062500000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0151.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0151
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0152
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(28062500000000003 / 100000000000000000 : ℚ), (28068750000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (4149997907053 / 5000000000000 : ℚ)
  w := (3568274419291 / 2000000000000 : ℚ)
  center := (28065625000000003 / 100000000000000000 : ℚ)
  supportValue := (4154084809768139 / 5000000000000000 : ℚ)
  supportSlope := (-3526136165850957 / 500000000000000 : ℚ)
  oldCenter := (4154084809768139 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_712
  oldLo := (82700000000000007 / 100000000000000000 : ℚ)
  oldHi := (41150000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1908, piece_1909]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7600 : Cell := { cellDefaults with
  r := (5191766560957 / 6250000000000 : ℚ)
  w := (17852564245211 / 10000000000000 : ℚ)
  newCoefficients := coefficients_710
  oldLo := (41525000000000001 / 50000000000000000 : ℚ)
  oldHi := (41575000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1910, piece_1911]
}

def cell_7601 : Cell := { cellDefaults with
  domain := ⟨(28068750000000003 / 100000000000000000 : ℚ), (28075000000000003 / 100000000000000000 : ℚ)⟩
  r := (5191766560957 / 6250000000000 : ℚ)
  w := (17852564245211 / 10000000000000 : ℚ)
  center := (28071875000000003 / 100000000000000000 : ℚ)
  supportValue := (1660752778794567 / 2000000000000000 : ℚ)
  supportSlope := (-8807815038389677 / 1250000000000000 : ℚ)
  oldCenter := (1660752778794567 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_710
  oldLo := (83000000000000007 / 100000000000000000 : ℚ)
  oldHi := (83100000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1909, piece_1910]
}

def cell_7602 : Cell := { cellDefaults with
  domain := ⟨(28075000000000003 / 100000000000000000 : ℚ), (28081250000000003 / 100000000000000000 : ℚ)⟩
  r := (5191766560957 / 6250000000000 : ℚ)
  w := (17852564245211 / 10000000000000 : ℚ)
  center := (28078125000000003 / 100000000000000000 : ℚ)
  supportValue := (8299361930518807 / 10000000000000000 : ℚ)
  supportSlope := (-7040236077713757 / 1000000000000000 : ℚ)
  oldCenter := (8299361930518807 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_710
  oldLo := (41475000000000001 / 50000000000000000 : ℚ)
  oldHi := (41525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1908, piece_1909]
}

def cell_7603 : Cell := { cellDefaults with
  domain := ⟨(28081250000000003 / 100000000000000000 : ℚ), (28087500000000003 / 100000000000000000 : ℚ)⟩
  r := (5191766560957 / 6250000000000 : ℚ)
  w := (17852564245211 / 10000000000000 : ℚ)
  center := (28084375000000003 / 100000000000000000 : ℚ)
  supportValue := (4147481863227631 / 5000000000000000 : ℚ)
  supportSlope := (-1758556068110373 / 250000000000000 : ℚ)
  oldCenter := (4147481863227631 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_710
  oldLo := (82900000000000007 / 100000000000000000 : ℚ)
  oldHi := (83000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1907, piece_1908]
}

def cell_7604 : Cell := { cellDefaults with
  domain := ⟨(28087500000000003 / 100000000000000000 : ℚ), (28093750000000003 / 100000000000000000 : ℚ)⟩
  r := (5191766560957 / 6250000000000 : ℚ)
  w := (17852564245211 / 10000000000000 : ℚ)
  center := (28090625000000003 / 100000000000000000 : ℚ)
  supportValue := (829056915100703 / 1000000000000000 : ℚ)
  supportSlope := (-3514108305889607 / 500000000000000 : ℚ)
  oldCenter := (829056915100703 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_710
  oldLo := (2071368715083799 / 2500000000000000 : ℚ)
  oldHi := (41475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1906, piece_1907]
}

def cell_7605 : Cell := { cellDefaults with
  domain := ⟨(28093750000000003 / 100000000000000000 : ℚ), (28100000000000003 / 100000000000000000 : ℚ)⟩
  r := (5191766560957 / 6250000000000 : ℚ)
  w := (17852564245211 / 10000000000000 : ℚ)
  center := (28096875000000003 / 100000000000000000 : ℚ)
  supportValue := (1657235663623911 / 2000000000000000 : ℚ)
  supportSlope := (-438888257960679 / 62500000000000 : ℚ)
  oldCenter := (1657235663623911 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_710
  oldLo := (82800000000000007 / 100000000000000000 : ℚ)
  oldHi := (82900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1904, piece_1905, piece_1906]
}

def cell_7606 : Cell := { cellDefaults with
  domain := ⟨(28100000000000003 / 100000000000000000 : ℚ), (702513966480447 / 2500000000000000 : ℚ)⟩
  center := (56200558659217883 / 200000000000000000 : ℚ)
  supportValue := (1037612710516419 / 1250000000000000 : ℚ)
  supportSlope := (-7036272351947789 / 1000000000000000 : ℚ)
  oldCenter := (1037612710516419 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_711
  oldLo := (83000000000000007 / 100000000000000000 : ℚ)
  oldHi := (41525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1909]
}

def cell_7607 : Cell := { cellDefaults with
  domain := ⟨(702513966480447 / 2500000000000000 : ℚ), (112426675977653643 / 400000000000000000 : ℚ)⟩
  center := (224828910614525163 / 800000000000000000 : ℚ)
  supportValue := (4149281617738271 / 5000000000000000 : ℚ)
  supportSlope := (-1758419859311221 / 250000000000000 : ℚ)
  oldCenter := (4149281617738271 / 5000000000000000 : ℚ)
  oldLo := (41475000000000001 / 50000000000000000 : ℚ)
  oldHi := (41525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1908, piece_1909]
}

def cell_7608 : Cell := { cellDefaults with
  domain := ⟨(112426675977653643 / 400000000000000000 : ℚ), (56225558659217883 / 200000000000000000 : ℚ)⟩
  center := (224877793296089409 / 800000000000000000 : ℚ)
  supportValue := (4147133645585327 / 5000000000000000 : ℚ)
  supportSlope := (-3513904854108153 / 500000000000000 : ℚ)
  oldCenter := (4147133645585327 / 5000000000000000 : ℚ)
  oldLo := (82900000000000007 / 100000000000000000 : ℚ)
  oldHi := (83000000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1907, piece_1908]
}

def cell_7609 : Cell := { cellDefaults with
  domain := ⟨(56225558659217883 / 200000000000000000 : ℚ), (112475558659217889 / 400000000000000000 : ℚ)⟩
  center := (44985335195530731 / 160000000000000000 : ℚ)
  supportValue := (1657994986624993 / 2000000000000000 : ℚ)
  supportSlope := (-7021943786077179 / 1000000000000000 : ℚ)
  oldCenter := (1657994986624993 / 2000000000000000 : ℚ)
  oldLo := (2071368715083799 / 2500000000000000 : ℚ)
  oldHi := (41475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1906, piece_1907]
}

def cell_7610 : Cell := { cellDefaults with
  domain := ⟨(112475558659217889 / 400000000000000000 : ℚ), (28125000000000003 / 100000000000000000 : ℚ)⟩
  center := (224975558659217901 / 800000000000000000 : ℚ)
  supportValue := (2071421500927659 / 2500000000000000 : ℚ)
  supportSlope := (-7016080331099847 / 1000000000000000 : ℚ)
  oldCenter := (2071421500927659 / 2500000000000000 : ℚ)
  oldLo := (82800000000000007 / 100000000000000000 : ℚ)
  oldHi := (82900000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1904, piece_1905, piece_1906]
}

def cell_7611 : Cell := { cellDefaults with
  domain := ⟨(28125000000000003 / 100000000000000000 : ℚ), (28131250000000003 / 100000000000000000 : ℚ)⟩
  center := (28128125000000003 / 100000000000000000 : ℚ)
  supportValue := (8281351696605637 / 10000000000000000 : ℚ)
  supportSlope := (-219067729013811 / 31250000000000 : ℚ)
  oldCenter := (8281351696605637 / 10000000000000000 : ℚ)
  oldLo := (82750000000000001 / 100000000000000000 : ℚ)
  oldHi := (82850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1903, piece_1904]
}

def cell_7612 : Cell := { cellDefaults with
  domain := ⟨(28131250000000003 / 100000000000000000 : ℚ), (28137500000000003 / 100000000000000000 : ℚ)⟩
  center := (28134375000000003 / 100000000000000000 : ℚ)
  supportValue := (413848606726723 / 500000000000000 : ℚ)
  supportSlope := (-1751047493227631 / 250000000000000 : ℚ)
  oldCenter := (413848606726723 / 500000000000000 : ℚ)
  oldHi := (82800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1902, piece_1903]
}

def cell_7613 : Cell := { cellDefaults with
  domain := ⟨(28137500000000003 / 100000000000000000 : ℚ), (28143750000000003 / 100000000000000000 : ℚ)⟩
  center := (28140625000000003 / 100000000000000000 : ℚ)
  supportValue := (8272596306232837 / 10000000000000000 : ℚ)
  supportSlope := (-1749591218001889 / 250000000000000 : ℚ)
  oldCenter := (8272596306232837 / 10000000000000000 : ℚ)
  oldHi := (82750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1902]
}

def cell_7614 : Cell := { cellDefaults with
  domain := ⟨(28143750000000003 / 100000000000000000 : ℚ), (28150000000000003 / 100000000000000000 : ℚ)⟩
  center := (28146875000000003 / 100000000000000000 : ℚ)
  supportValue := (1033528026142439 / 1250000000000000 : ℚ)
  supportSlope := (-69924808006121 / 10000000000000 : ℚ)
  oldCenter := (1033528026142439 / 1250000000000000 : ℚ)
  oldLo := (82650000000000001 / 100000000000000000 : ℚ)
  oldHi := (82750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1901, piece_1902]
}

def cell_7615 : Cell := { cellDefaults with
  domain := ⟨(28150000000000003 / 100000000000000000 : ℚ), (28156250000000003 / 100000000000000000 : ℚ)⟩
  r := (82931802836529 / 100000000000000 : ℚ)
  w := (17830208164039 / 10000000000000 : ℚ)
  center := (28153125000000003 / 100000000000000000 : ℚ)
  supportValue := (828090302659739 / 1000000000000000 : ℚ)
  supportSlope := (-3502046335945863 / 500000000000000 : ℚ)
  oldCenter := (828090302659739 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_713
  oldLo := (82750000000000001 / 100000000000000000 : ℚ)
  oldHi := (82850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1903, piece_1904]
}

def cell_7616 : Cell := { cellDefaults with
  domain := ⟨(28156250000000003 / 100000000000000000 : ℚ), (28162500000000003 / 100000000000000000 : ℚ)⟩
  r := (82931802836529 / 100000000000000 : ℚ)
  w := (17830208164039 / 10000000000000 : ℚ)
  center := (28159375000000003 / 100000000000000000 : ℚ)
  supportValue := (82765272550327 / 100000000000000 : ℚ)
  supportSlope := (-3499067038358561 / 500000000000000 : ℚ)
  oldCenter := (82765272550327 / 100000000000000 : ℚ)
  newCoefficients := coefficients_713
  oldHi := (82800000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1902, piece_1903]
}

def cell_7617 : Cell := { cellDefaults with
  domain := ⟨(28162500000000003 / 100000000000000000 : ℚ), (28168750000000003 / 100000000000000000 : ℚ)⟩
  r := (82931802836529 / 100000000000000 : ℚ)
  w := (17830208164039 / 10000000000000 : ℚ)
  center := (28165625000000003 / 100000000000000000 : ℚ)
  supportValue := (8272155205526849 / 10000000000000000 : ℚ)
  supportSlope := (-874022445860767 / 125000000000000 : ℚ)
  oldCenter := (8272155205526849 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_713
  oldLo := (82650000000000001 / 100000000000000000 : ℚ)
  oldHi := (82750000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1901, piece_1902]
}

def cell_7618 : Cell := { cellDefaults with
  domain := ⟨(28168750000000003 / 100000000000000000 : ℚ), (28175000000000003 / 100000000000000000 : ℚ)⟩
  r := (82931802836529 / 100000000000000 : ℚ)
  w := (17830208164039 / 10000000000000 : ℚ)
  center := (28171875000000003 / 100000000000000000 : ℚ)
  supportValue := (4133893437765553 / 5000000000000000 : ℚ)
  supportSlope := (-3493224708496001 / 500000000000000 : ℚ)
  oldCenter := (4133893437765553 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_713
  oldLo := (82650000000000001 / 100000000000000000 : ℚ)
  oldHi := (82700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1901]
}

def cell_7619 : Cell := { cellDefaults with
  domain := ⟨(28175000000000003 / 100000000000000000 : ℚ), (28181250000000003 / 100000000000000000 : ℚ)⟩
  r := (82931802836529 / 100000000000000 : ℚ)
  w := (17830208164039 / 10000000000000 : ℚ)
  center := (28178125000000003 / 100000000000000000 : ℚ)
  supportValue := (1032927782812043 / 1250000000000000 : ℚ)
  supportSlope := (-6980519430257459 / 1000000000000000 : ℚ)
  oldCenter := (1032927782812043 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_713
  oldLo := (82600000000000007 / 100000000000000000 : ℚ)
  oldHi := (82700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1900, piece_1901]
}

def cell_7620 : Cell := { cellDefaults with
  domain := ⟨(28181250000000003 / 100000000000000000 : ℚ), (28187500000000003 / 100000000000000000 : ℚ)⟩
  r := (82931802836529 / 100000000000000 : ℚ)
  w := (17830208164039 / 10000000000000 : ℚ)
  center := (28184375000000003 / 100000000000000000 : ℚ)
  supportValue := (8259061363876897 / 10000000000000000 : ℚ)
  supportSlope := (-6974579673599379 / 1000000000000000 : ℚ)
  oldCenter := (8259061363876897 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_713
  oldLo := (82550000000000001 / 100000000000000000 : ℚ)
  oldHi := (82650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1899, piece_1900]
}

def cell_7621 : Cell := { cellDefaults with
  domain := ⟨(28187500000000003 / 100000000000000000 : ℚ), (28193750000000003 / 100000000000000000 : ℚ)⟩
  r := (82931802836529 / 100000000000000 : ℚ)
  w := (17830208164039 / 10000000000000 : ℚ)
  center := (28190625000000003 / 100000000000000000 : ℚ)
  supportValue := (2063676044281711 / 2500000000000000 : ℚ)
  supportSlope := (-6968643991694279 / 1000000000000000 : ℚ)
  oldCenter := (2063676044281711 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_713
  oldLo := (82500000000000007 / 100000000000000000 : ℚ)
  oldHi := (82600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1898, piece_1899]
}

def cell_7622 : Cell := { cellDefaults with
  domain := ⟨(28193750000000003 / 100000000000000000 : ℚ), (28200000000000003 / 100000000000000000 : ℚ)⟩
  r := (82931802836529 / 100000000000000 : ℚ)
  w := (17830208164039 / 10000000000000 : ℚ)
  center := (28196875000000003 / 100000000000000000 : ℚ)
  supportValue := (4125175310069833 / 5000000000000000 : ℚ)
  supportSlope := (-6962712372658331 / 1000000000000000 : ℚ)
  oldCenter := (4125175310069833 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_713
  oldLo := (82450000000000001 / 100000000000000000 : ℚ)
  oldHi := (82550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1897, piece_1898]
}

def cell_7623 : Cell := { cellDefaults with
  domain := ⟨(28200000000000003 / 100000000000000000 : ℚ), (28206250000000003 / 100000000000000000 : ℚ)⟩
  r := (41431898764933 / 50000000000000 : ℚ)
  w := (1113691995447 / 625000000000 : ℚ)
  center := (28203125000000003 / 100000000000000000 : ℚ)
  supportValue := (4131489977945419 / 5000000000000000 : ℚ)
  supportSlope := (-6974491542784733 / 1000000000000000 : ℚ)
  oldCenter := (4131489977945419 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_714
  oldLo := (82600000000000007 / 100000000000000000 : ℚ)
  oldHi := (82700000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1900, piece_1901]
}

def cell_7624 : Cell := { cellDefaults with
  domain := ⟨(28206250000000003 / 100000000000000000 : ℚ), (28212500000000003 / 100000000000000000 : ℚ)⟩
  r := (41431898764933 / 50000000000000 : ℚ)
  w := (1113691995447 / 625000000000 : ℚ)
  center := (28209375000000003 / 100000000000000000 : ℚ)
  supportValue := (8258622819060027 / 10000000000000000 : ℚ)
  supportSlope := (-6968570768226101 / 1000000000000000 : ℚ)
  oldCenter := (8258622819060027 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_714
  oldLo := (82550000000000001 / 100000000000000000 : ℚ)
  oldHi := (82650000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1899, piece_1900]
}

def cell_7625 : Cell := { cellDefaults with
  domain := ⟨(28212500000000003 / 100000000000000000 : ℚ), (28218750000000003 / 100000000000000000 : ℚ)⟩
  r := (41431898764933 / 50000000000000 : ℚ)
  w := (1113691995447 / 625000000000 : ℚ)
  center := (28215625000000003 / 100000000000000000 : ℚ)
  supportValue := (4127134691121599 / 5000000000000000 : ℚ)
  supportSlope := (-3481327022177183 / 500000000000000 : ℚ)
  oldCenter := (4127134691121599 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_714
  oldLo := (82500000000000007 / 100000000000000000 : ℚ)
  oldHi := (82600000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1898, piece_1899]
}

def cell_7626 : Cell := { cellDefaults with
  domain := ⟨(28218750000000003 / 100000000000000000 : ℚ), (28225000000000003 / 100000000000000000 : ℚ)⟩
  r := (41431898764933 / 50000000000000 : ℚ)
  w := (1113691995447 / 625000000000 : ℚ)
  center := (28221875000000003 / 100000000000000000 : ℚ)
  supportValue := (4124959821457937 / 5000000000000000 : ℚ)
  supportSlope := (-6956741360262697 / 1000000000000000 : ℚ)
  oldCenter := (4124959821457937 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_714
  oldLo := (82450000000000001 / 100000000000000000 : ℚ)
  oldHi := (82550000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1897, piece_1898]
}

def cell_7627 : Cell := { cellDefaults with
  domain := ⟨(28225000000000003 / 100000000000000000 : ℚ), (28231250000000003 / 100000000000000000 : ℚ)⟩
  r := (41431898764933 / 50000000000000 : ℚ)
  w := (1113691995447 / 625000000000 : ℚ)
  center := (28228125000000003 / 100000000000000000 : ℚ)
  supportValue := (8245573466914731 / 10000000000000000 : ℚ)
  supportSlope := (-1390166542795157 / 200000000000000 : ℚ)
  oldCenter := (8245573466914731 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_714
  oldLo := (82400000000000007 / 100000000000000000 : ℚ)
  oldHi := (82500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1896, piece_1897]
}

def cell_7628 : Cell := { cellDefaults with
  domain := ⟨(28231250000000003 / 100000000000000000 : ℚ), (28237500000000003 / 100000000000000000 : ℚ)⟩
  r := (41431898764933 / 50000000000000 : ℚ)
  w := (1113691995447 / 625000000000 : ℚ)
  center := (28234375000000003 / 100000000000000000 : ℚ)
  supportValue := (8241230961179009 / 10000000000000000 : ℚ)
  supportSlope := (-1388985620539529 / 200000000000000 : ℚ)
  oldCenter := (8241230961179009 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_714
  oldLo := (82350000000000001 / 100000000000000000 : ℚ)
  oldHi := (82450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1895, piece_1896]
}

def cell_7629 : Cell := { cellDefaults with
  domain := ⟨(28237500000000003 / 100000000000000000 : ℚ), (28243750000000003 / 100000000000000000 : ℚ)⟩
  r := (41431898764933 / 50000000000000 : ℚ)
  w := (1113691995447 / 625000000000 : ℚ)
  center := (28240625000000003 / 100000000000000000 : ℚ)
  supportValue := (4118446071884469 / 5000000000000000 : ℚ)
  supportSlope := (-86737843914797 / 12500000000000 : ℚ)
  oldCenter := (4118446071884469 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_714
  oldLo := (8230167597765363 / 10000000000000000 : ℚ)
  oldHi := (82400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1894, piece_1895]
}

def cell_7630 : Cell := { cellDefaults with
  domain := ⟨(28243750000000003 / 100000000000000000 : ℚ), (28250000000000003 / 100000000000000000 : ℚ)⟩
  r := (41431898764933 / 50000000000000 : ℚ)
  w := (1113691995447 / 625000000000 : ℚ)
  center := (28246875000000003 / 100000000000000000 : ℚ)
  supportValue := (2058139253041579 / 2500000000000000 : ℚ)
  supportSlope := (-433329646353231 / 62500000000000 : ℚ)
  oldCenter := (2058139253041579 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_714
  oldLo := (8230167597765363 / 10000000000000000 : ℚ)
  oldHi := (82350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1894]
}

def cell_7631 : Cell := { cellDefaults with
  domain := ⟨(28250000000000003 / 100000000000000000 : ℚ), (28256250000000003 / 100000000000000000 : ℚ)⟩
  r := (82795942680429 / 100000000000000 : ℚ)
  w := (8903982278639 / 5000000000000 : ℚ)
  center := (28253125000000003 / 100000000000000000 : ℚ)
  supportValue := (8245136670292993 / 10000000000000000 : ℚ)
  supportSlope := (-6944849212459303 / 1000000000000000 : ℚ)
  oldCenter := (8245136670292993 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_715
  oldLo := (82400000000000007 / 100000000000000000 : ℚ)
  oldHi := (82500000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1896, piece_1897]
}

def cell_7632 : Cell := { cellDefaults with
  domain := ⟨(28256250000000003 / 100000000000000000 : ℚ), (28262500000000003 / 100000000000000000 : ℚ)⟩
  r := (82795942680429 / 100000000000000 : ℚ)
  w := (8903982278639 / 5000000000000 : ℚ)
  center := (28259375000000003 / 100000000000000000 : ℚ)
  supportValue := (1648159579604139 / 2000000000000000 : ℚ)
  supportSlope := (-3469481799692531 / 500000000000000 : ℚ)
  oldCenter := (1648159579604139 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_715
  oldLo := (82350000000000001 / 100000000000000000 : ℚ)
  oldHi := (82450000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1895, piece_1896]
}

def cell_7633 : Cell := { cellDefaults with
  domain := ⟨(28262500000000003 / 100000000000000000 : ℚ), (28268750000000003 / 100000000000000000 : ℚ)⟩
  r := (82795942680429 / 100000000000000 : ℚ)
  w := (8903982278639 / 5000000000000 : ℚ)
  center := (28265625000000003 / 100000000000000000 : ℚ)
  supportValue := (8236462802207253 / 10000000000000000 : ℚ)
  supportSlope := (-6933081989167533 / 1000000000000000 : ℚ)
  oldCenter := (8236462802207253 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_715
  oldLo := (8230167597765363 / 10000000000000000 : ℚ)
  oldHi := (82400000000000007 / 100000000000000000 : ℚ)
  oldPieces := [piece_1894, piece_1895]
}

def cell_7634 : Cell := { cellDefaults with
  domain := ⟨(28268750000000003 / 100000000000000000 : ℚ), (28275000000000003 / 100000000000000000 : ℚ)⟩
  r := (82795942680429 / 100000000000000 : ℚ)
  w := (8903982278639 / 5000000000000 : ℚ)
  center := (28271875000000003 / 100000000000000000 : ℚ)
  supportValue := (4116065690175627 / 5000000000000000 : ℚ)
  supportSlope := (-6927204380112073 / 1000000000000000 : ℚ)
  oldCenter := (4116065690175627 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_715
  oldLo := (82250000000000001 / 100000000000000000 : ℚ)
  oldHi := (82350000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1892, piece_1893, piece_1894]
}

def cell_7635 : Cell := { cellDefaults with
  domain := ⟨(28275000000000003 / 100000000000000000 : ℚ), (28281250000000003 / 100000000000000000 : ℚ)⟩
  r := (82795942680429 / 100000000000000 : ℚ)
  w := (8903982278639 / 5000000000000 : ℚ)
  center := (28278125000000003 / 100000000000000000 : ℚ)
  supportValue := (8227803629377489 / 10000000000000000 : ℚ)
  supportSlope := (-6921570353874529 / 1000000000000000 : ℚ)
  oldCenter := (8227803629377489 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_715
  oldLo := (82250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1892]
}

def cell_7636 : Cell := { cellDefaults with
  domain := ⟨(28281250000000003 / 100000000000000000 : ℚ), (28287500000000003 / 100000000000000000 : ℚ)⟩
  r := (82795942680429 / 100000000000000 : ℚ)
  w := (8903982278639 / 5000000000000 : ℚ)
  center := (28284375000000003 / 100000000000000000 : ℚ)
  supportValue := (411173977332353 / 500000000000000 : ℚ)
  supportSlope := (-1383143829810507 / 200000000000000 : ℚ)
  oldCenter := (411173977332353 / 500000000000000 : ℚ)
  newCoefficients := coefficients_715
  oldLo := (41100000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1891, piece_1892]
}

def cell_7637 : Cell := { cellDefaults with
  domain := ⟨(28287500000000003 / 100000000000000000 : ℚ), (28293750000000003 / 100000000000000000 : ℚ)⟩
  r := (82795942680429 / 100000000000000 : ℚ)
  w := (8903982278639 / 5000000000000 : ℚ)
  center := (28290625000000003 / 100000000000000000 : ℚ)
  supportValue := (4109579565065127 / 5000000000000000 : ℚ)
  supportSlope := (-172746412454039 / 25000000000000 : ℚ)
  oldCenter := (4109579565065127 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_715
  oldLo := (82150000000000001 / 100000000000000000 : ℚ)
  oldHi := (82250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1890, piece_1891]
}

def cell_7638 : Cell := { cellDefaults with
  domain := ⟨(28293750000000003 / 100000000000000000 : ℚ), (28300000000000003 / 100000000000000000 : ℚ)⟩
  r := (82795942680429 / 100000000000000 : ℚ)
  w := (8903982278639 / 5000000000000 : ℚ)
  center := (28296875000000003 / 100000000000000000 : ℚ)
  supportValue := (8214842377371901 / 10000000000000000 : ℚ)
  supportSlope := (-13807995554643071 / 2000000000000000 : ℚ)
  oldCenter := (8214842377371901 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_715
  oldLo := (41050000000000003 / 50000000000000000 : ℚ)
  oldHi := (41100000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1889, piece_1890]
}

def cell_7639 : Cell := { cellDefaults with
  domain := ⟨(28300000000000003 / 100000000000000000 : ℚ), (28306250000000003 / 100000000000000000 : ℚ)⟩
  r := (82728235836057 / 100000000000000 : ℚ)
  w := (17796884404203 / 10000000000000 : ℚ)
  center := (28303125000000003 / 100000000000000000 : ℚ)
  supportValue := (8227373281400963 / 10000000000000000 : ℚ)
  supportSlope := (-3457739565188689 / 500000000000000 : ℚ)
  oldCenter := (8227373281400963 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_716
  oldLo := (82250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1892]
}

def cell_7640 : Cell := { cellDefaults with
  domain := ⟨(28306250000000003 / 100000000000000000 : ℚ), (28312500000000003 / 100000000000000000 : ℚ)⟩
  r := (82728235836057 / 100000000000000 : ℚ)
  w := (17796884404203 / 10000000000000 : ℚ)
  center := (28309375000000003 / 100000000000000000 : ℚ)
  supportValue := (164461058002357 / 200000000000000 : ℚ)
  supportSlope := (-1727451188141771 / 250000000000000 : ℚ)
  oldCenter := (164461058002357 / 200000000000000 : ℚ)
  newCoefficients := coefficients_716
  oldLo := (41100000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1891, piece_1892]
}

def cell_7641 : Cell := { cellDefaults with
  domain := ⟨(28312500000000003 / 100000000000000000 : ℚ), (28318750000000003 / 100000000000000000 : ℚ)⟩
  r := (82728235836057 / 100000000000000 : ℚ)
  w := (17796884404203 / 10000000000000 : ℚ)
  center := (28315625000000003 / 100000000000000000 : ℚ)
  supportValue := (8218736175734397 / 10000000000000000 : ℚ)
  supportSlope := (-6903956996509919 / 1000000000000000 : ℚ)
  oldCenter := (8218736175734397 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_716
  oldLo := (82150000000000001 / 100000000000000000 : ℚ)
  oldHi := (82250000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1890, piece_1891]
}

def cell_7642 : Cell := { cellDefaults with
  domain := ⟨(28318750000000003 / 100000000000000000 : ℚ), (28325000000000003 / 100000000000000000 : ℚ)⟩
  r := (82728235836057 / 100000000000000 : ℚ)
  w := (17796884404203 / 10000000000000 : ℚ)
  center := (28321875000000003 / 100000000000000000 : ℚ)
  supportValue := (821442310580773 / 1000000000000000 : ℚ)
  supportSlope := (-6898113150199947 / 1000000000000000 : ℚ)
  oldCenter := (821442310580773 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_716
  oldLo := (41050000000000003 / 50000000000000000 : ℚ)
  oldHi := (41100000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1889, piece_1890]
}

def cell_7643 : Cell := { cellDefaults with
  domain := ⟨(28325000000000003 / 100000000000000000 : ℚ), (28331250000000003 / 100000000000000000 : ℚ)⟩
  r := (82728235836057 / 100000000000000 : ℚ)
  w := (17796884404203 / 10000000000000 : ℚ)
  center := (28328125000000003 / 100000000000000000 : ℚ)
  supportValue := (4105056831497733 / 5000000000000000 : ℚ)
  supportSlope := (-6892273204542221 / 1000000000000000 : ℚ)
  oldCenter := (4105056831497733 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_716
  oldLo := (82050000000000001 / 100000000000000000 : ℚ)
  oldHi := (82150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1888, piece_1889]
}

def cell_7644 : Cell := { cellDefaults with
  domain := ⟨(28331250000000003 / 100000000000000000 : ℚ), (28337500000000003 / 100000000000000000 : ℚ)⟩
  r := (82728235836057 / 100000000000000 : ℚ)
  w := (17796884404203 / 10000000000000 : ℚ)
  center := (28334375000000003 / 100000000000000000 : ℚ)
  supportValue := (4102903865145343 / 5000000000000000 : ℚ)
  supportSlope := (-1721609289784709 / 250000000000000 : ℚ)
  oldCenter := (4102903865145343 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_716
  oldLo := (41000000000000003 / 50000000000000000 : ℚ)
  oldHi := (41050000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1887, piece_1888]
}

def cell_7645 : Cell := { cellDefaults with
  domain := ⟨(28337500000000003 / 100000000000000000 : ℚ), (28343750000000003 / 100000000000000000 : ℚ)⟩
  r := (82728235836057 / 100000000000000 : ℚ)
  w := (17796884404203 / 10000000000000 : ℚ)
  center := (28340625000000003 / 100000000000000000 : ℚ)
  supportValue := (8201505443067063 / 10000000000000000 : ℚ)
  supportSlope := (-13761211986775379 / 2000000000000000 : ℚ)
  oldCenter := (8201505443067063 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_716
  oldLo := (81950000000000001 / 100000000000000000 : ℚ)
  oldHi := (82050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1886, piece_1887]
}

def cell_7646 : Cell := { cellDefaults with
  domain := ⟨(28343750000000003 / 100000000000000000 : ℚ), (28350000000000003 / 100000000000000000 : ℚ)⟩
  r := (82728235836057 / 100000000000000 : ℚ)
  w := (17796884404203 / 10000000000000 : ℚ)
  center := (28346875000000003 / 100000000000000000 : ℚ)
  supportValue := (8197206796460813 / 10000000000000000 : ℚ)
  supportSlope := (-6874801300199351 / 1000000000000000 : ℚ)
  oldCenter := (8197206796460813 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_716
  oldLo := (81950000000000001 / 100000000000000000 : ℚ)
  oldHi := (41000000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1886]
}

def cell_7647 : Cell := { cellDefaults with
  domain := ⟨(28350000000000003 / 100000000000000000 : ℚ), (28356250000000003 / 100000000000000000 : ℚ)⟩
  r := (41330338566697 / 50000000000000 : ℚ)
  w := (8892916760641 / 5000000000000 : ℚ)
  center := (28353125000000003 / 100000000000000000 : ℚ)
  supportValue := (4104844226854659 / 5000000000000000 : ℚ)
  supportSlope := (-6886381584905621 / 1000000000000000 : ℚ)
  oldCenter := (4104844226854659 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_717
  oldLo := (82050000000000001 / 100000000000000000 : ℚ)
  oldHi := (82150000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1888, piece_1889]
}

def cell_7648 : Cell := { cellDefaults with
  domain := ⟨(28356250000000003 / 100000000000000000 : ℚ), (28362500000000003 / 100000000000000000 : ℚ)⟩
  r := (41330338566697 / 50000000000000 : ℚ)
  w := (8892916760641 / 5000000000000 : ℚ)
  center := (28359375000000003 / 100000000000000000 : ℚ)
  supportValue := (1641077254462861 / 2000000000000000 : ℚ)
  supportSlope := (-6880565196336619 / 1000000000000000 : ℚ)
  oldCenter := (1641077254462861 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_717
  oldLo := (41000000000000003 / 50000000000000000 : ℚ)
  oldHi := (41050000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1887, piece_1888]
}

def cell_7649 : Cell := { cellDefaults with
  domain := ⟨(28362500000000003 / 100000000000000000 : ℚ), (28368750000000003 / 100000000000000000 : ℚ)⟩
  r := (41330338566697 / 50000000000000 : ℚ)
  w := (8892916760641 / 5000000000000 : ℚ)
  center := (28365625000000003 / 100000000000000000 : ℚ)
  supportValue := (8201087648644833 / 10000000000000000 : ℚ)
  supportSlope := (-13749508535291 / 2000000000000 : ℚ)
  oldCenter := (8201087648644833 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_717
  oldLo := (81950000000000001 / 100000000000000000 : ℚ)
  oldHi := (82050000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1886, piece_1887]
}

theorem check_7600 : cell_7600.check = true := by
  decide +kernel

theorem check_7601 : cell_7601.check = true := by
  decide +kernel

theorem check_7602 : cell_7602.check = true := by
  decide +kernel

theorem check_7603 : cell_7603.check = true := by
  decide +kernel

theorem check_7604 : cell_7604.check = true := by
  decide +kernel

theorem check_7605 : cell_7605.check = true := by
  decide +kernel

theorem check_7606 : cell_7606.check = true := by
  decide +kernel

theorem check_7607 : cell_7607.check = true := by
  decide +kernel

theorem check_7608 : cell_7608.check = true := by
  decide +kernel

theorem check_7609 : cell_7609.check = true := by
  decide +kernel

theorem check_7610 : cell_7610.check = true := by
  decide +kernel

theorem check_7611 : cell_7611.check = true := by
  decide +kernel

theorem check_7612 : cell_7612.check = true := by
  decide +kernel

theorem check_7613 : cell_7613.check = true := by
  decide +kernel

theorem check_7614 : cell_7614.check = true := by
  decide +kernel

theorem check_7615 : cell_7615.check = true := by
  decide +kernel

theorem check_7616 : cell_7616.check = true := by
  decide +kernel

theorem check_7617 : cell_7617.check = true := by
  decide +kernel

theorem check_7618 : cell_7618.check = true := by
  decide +kernel

theorem check_7619 : cell_7619.check = true := by
  decide +kernel

theorem check_7620 : cell_7620.check = true := by
  decide +kernel

theorem check_7621 : cell_7621.check = true := by
  decide +kernel

theorem check_7622 : cell_7622.check = true := by
  decide +kernel

theorem check_7623 : cell_7623.check = true := by
  decide +kernel

theorem check_7624 : cell_7624.check = true := by
  decide +kernel

theorem check_7625 : cell_7625.check = true := by
  decide +kernel

theorem check_7626 : cell_7626.check = true := by
  decide +kernel

theorem check_7627 : cell_7627.check = true := by
  decide +kernel

theorem check_7628 : cell_7628.check = true := by
  decide +kernel

theorem check_7629 : cell_7629.check = true := by
  decide +kernel

theorem check_7630 : cell_7630.check = true := by
  decide +kernel

theorem check_7631 : cell_7631.check = true := by
  decide +kernel

theorem check_7632 : cell_7632.check = true := by
  decide +kernel

theorem check_7633 : cell_7633.check = true := by
  decide +kernel

theorem check_7634 : cell_7634.check = true := by
  decide +kernel

theorem check_7635 : cell_7635.check = true := by
  decide +kernel

theorem check_7636 : cell_7636.check = true := by
  decide +kernel

theorem check_7637 : cell_7637.check = true := by
  decide +kernel

theorem check_7638 : cell_7638.check = true := by
  decide +kernel

theorem check_7639 : cell_7639.check = true := by
  decide +kernel

theorem check_7640 : cell_7640.check = true := by
  decide +kernel

theorem check_7641 : cell_7641.check = true := by
  decide +kernel

theorem check_7642 : cell_7642.check = true := by
  decide +kernel

theorem check_7643 : cell_7643.check = true := by
  decide +kernel

theorem check_7644 : cell_7644.check = true := by
  decide +kernel

theorem check_7645 : cell_7645.check = true := by
  decide +kernel

theorem check_7646 : cell_7646.check = true := by
  decide +kernel

theorem check_7647 : cell_7647.check = true := by
  decide +kernel

theorem check_7648 : cell_7648.check = true := by
  decide +kernel

theorem check_7649 : cell_7649.check = true := by
  decide +kernel

def cells : List Cell := [cell_7600, cell_7601, cell_7602, cell_7603, cell_7604, cell_7605, cell_7606, cell_7607, cell_7608, cell_7609, cell_7610, cell_7611, cell_7612, cell_7613, cell_7614, cell_7615, cell_7616, cell_7617, cell_7618, cell_7619, cell_7620, cell_7621, cell_7622, cell_7623, cell_7624, cell_7625, cell_7626, cell_7627, cell_7628, cell_7629, cell_7630, cell_7631, cell_7632, cell_7633, cell_7634, cell_7635, cell_7636, cell_7637, cell_7638, cell_7639, cell_7640, cell_7641, cell_7642, cell_7643, cell_7644, cell_7645, cell_7646, cell_7647, cell_7648, cell_7649]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7600, check_7601, check_7602, check_7603, check_7604, check_7605, check_7606, check_7607, check_7608, check_7609, check_7610, check_7611, check_7612, check_7613, check_7614, check_7615, check_7616, check_7617, check_7618, check_7619, check_7620, check_7621, check_7622, check_7623, check_7624, check_7625, check_7626, check_7627, check_7628, check_7629, check_7630, check_7631, check_7632, check_7633, check_7634, check_7635, check_7636, check_7637, check_7638, check_7639, check_7640, check_7641, check_7642, check_7643, check_7644, check_7645, check_7646, check_7647, check_7648, check_7649, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0152

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0152
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0152
open AnalyticBounds.ExpressionCertificate

theorem linked_7600 : Linked cell_7600 pieces := by
  link_source cell_7600 with piece_710 using piece_710_mem, ⟨piece_1910_mem, piece_1911_mem⟩

theorem linked_7601 : Linked cell_7601 pieces := by
  link_source cell_7601 with piece_710 using piece_710_mem, ⟨piece_1909_mem, piece_1910_mem⟩

theorem linked_7602 : Linked cell_7602 pieces := by
  link_source cell_7602 with piece_710 using piece_710_mem, ⟨piece_1908_mem, piece_1909_mem⟩

theorem linked_7603 : Linked cell_7603 pieces := by
  link_source cell_7603 with piece_710 using piece_710_mem, ⟨piece_1907_mem, piece_1908_mem⟩

theorem linked_7604 : Linked cell_7604 pieces := by
  link_source cell_7604 with piece_710 using piece_710_mem, ⟨piece_1906_mem, piece_1907_mem⟩

theorem linked_7605 : Linked cell_7605 pieces := by
  link_source cell_7605 with piece_710 using piece_710_mem, ⟨piece_1904_mem, ⟨piece_1905_mem, piece_1906_mem⟩⟩

theorem linked_7606 : Linked cell_7606 pieces := by
  link_source cell_7606 with piece_711 using piece_711_mem, piece_1909_mem

theorem linked_7607 : Linked cell_7607 pieces := by
  link_source cell_7607 with piece_712 using piece_712_mem, ⟨piece_1908_mem, piece_1909_mem⟩

theorem linked_7608 : Linked cell_7608 pieces := by
  link_source cell_7608 with piece_712 using piece_712_mem, ⟨piece_1907_mem, piece_1908_mem⟩

theorem linked_7609 : Linked cell_7609 pieces := by
  link_source cell_7609 with piece_712 using piece_712_mem, ⟨piece_1906_mem, piece_1907_mem⟩

theorem linked_7610 : Linked cell_7610 pieces := by
  link_source cell_7610 with piece_712 using piece_712_mem, ⟨piece_1904_mem, ⟨piece_1905_mem, piece_1906_mem⟩⟩

theorem linked_7611 : Linked cell_7611 pieces := by
  link_source cell_7611 with piece_712 using piece_712_mem, ⟨piece_1903_mem, piece_1904_mem⟩

theorem linked_7612 : Linked cell_7612 pieces := by
  link_source cell_7612 with piece_712 using piece_712_mem, ⟨piece_1902_mem, piece_1903_mem⟩

theorem linked_7613 : Linked cell_7613 pieces := by
  link_source cell_7613 with piece_712 using piece_712_mem, piece_1902_mem

theorem linked_7614 : Linked cell_7614 pieces := by
  link_source cell_7614 with piece_712 using piece_712_mem, ⟨piece_1901_mem, piece_1902_mem⟩

theorem linked_7615 : Linked cell_7615 pieces := by
  link_source cell_7615 with piece_713 using piece_713_mem, ⟨piece_1903_mem, piece_1904_mem⟩

theorem linked_7616 : Linked cell_7616 pieces := by
  link_source cell_7616 with piece_713 using piece_713_mem, ⟨piece_1902_mem, piece_1903_mem⟩

theorem linked_7617 : Linked cell_7617 pieces := by
  link_source cell_7617 with piece_713 using piece_713_mem, ⟨piece_1901_mem, piece_1902_mem⟩

theorem linked_7618 : Linked cell_7618 pieces := by
  link_source cell_7618 with piece_713 using piece_713_mem, piece_1901_mem

theorem linked_7619 : Linked cell_7619 pieces := by
  link_source cell_7619 with piece_713 using piece_713_mem, ⟨piece_1900_mem, piece_1901_mem⟩

theorem linked_7620 : Linked cell_7620 pieces := by
  link_source cell_7620 with piece_713 using piece_713_mem, ⟨piece_1899_mem, piece_1900_mem⟩

theorem linked_7621 : Linked cell_7621 pieces := by
  link_source cell_7621 with piece_713 using piece_713_mem, ⟨piece_1898_mem, piece_1899_mem⟩

theorem linked_7622 : Linked cell_7622 pieces := by
  link_source cell_7622 with piece_713 using piece_713_mem, ⟨piece_1897_mem, piece_1898_mem⟩

theorem linked_7623 : Linked cell_7623 pieces := by
  link_source cell_7623 with piece_714 using piece_714_mem, ⟨piece_1900_mem, piece_1901_mem⟩

theorem linked_7624 : Linked cell_7624 pieces := by
  link_source cell_7624 with piece_714 using piece_714_mem, ⟨piece_1899_mem, piece_1900_mem⟩

theorem linked_7625 : Linked cell_7625 pieces := by
  link_source cell_7625 with piece_714 using piece_714_mem, ⟨piece_1898_mem, piece_1899_mem⟩

theorem linked_7626 : Linked cell_7626 pieces := by
  link_source cell_7626 with piece_714 using piece_714_mem, ⟨piece_1897_mem, piece_1898_mem⟩

theorem linked_7627 : Linked cell_7627 pieces := by
  link_source cell_7627 with piece_714 using piece_714_mem, ⟨piece_1896_mem, piece_1897_mem⟩

theorem linked_7628 : Linked cell_7628 pieces := by
  link_source cell_7628 with piece_714 using piece_714_mem, ⟨piece_1895_mem, piece_1896_mem⟩

theorem linked_7629 : Linked cell_7629 pieces := by
  link_source cell_7629 with piece_714 using piece_714_mem, ⟨piece_1894_mem, piece_1895_mem⟩

theorem linked_7630 : Linked cell_7630 pieces := by
  link_source cell_7630 with piece_714 using piece_714_mem, piece_1894_mem

theorem linked_7631 : Linked cell_7631 pieces := by
  link_source cell_7631 with piece_715 using piece_715_mem, ⟨piece_1896_mem, piece_1897_mem⟩

theorem linked_7632 : Linked cell_7632 pieces := by
  link_source cell_7632 with piece_715 using piece_715_mem, ⟨piece_1895_mem, piece_1896_mem⟩

theorem linked_7633 : Linked cell_7633 pieces := by
  link_source cell_7633 with piece_715 using piece_715_mem, ⟨piece_1894_mem, piece_1895_mem⟩

theorem linked_7634 : Linked cell_7634 pieces := by
  link_source cell_7634 with piece_715 using piece_715_mem, ⟨piece_1892_mem, ⟨piece_1893_mem, piece_1894_mem⟩⟩

theorem linked_7635 : Linked cell_7635 pieces := by
  link_source cell_7635 with piece_715 using piece_715_mem, piece_1892_mem

theorem linked_7636 : Linked cell_7636 pieces := by
  link_source cell_7636 with piece_715 using piece_715_mem, ⟨piece_1891_mem, piece_1892_mem⟩

theorem linked_7637 : Linked cell_7637 pieces := by
  link_source cell_7637 with piece_715 using piece_715_mem, ⟨piece_1890_mem, piece_1891_mem⟩

theorem linked_7638 : Linked cell_7638 pieces := by
  link_source cell_7638 with piece_715 using piece_715_mem, ⟨piece_1889_mem, piece_1890_mem⟩

theorem linked_7639 : Linked cell_7639 pieces := by
  link_source cell_7639 with piece_716 using piece_716_mem, piece_1892_mem

theorem linked_7640 : Linked cell_7640 pieces := by
  link_source cell_7640 with piece_716 using piece_716_mem, ⟨piece_1891_mem, piece_1892_mem⟩

theorem linked_7641 : Linked cell_7641 pieces := by
  link_source cell_7641 with piece_716 using piece_716_mem, ⟨piece_1890_mem, piece_1891_mem⟩

theorem linked_7642 : Linked cell_7642 pieces := by
  link_source cell_7642 with piece_716 using piece_716_mem, ⟨piece_1889_mem, piece_1890_mem⟩

theorem linked_7643 : Linked cell_7643 pieces := by
  link_source cell_7643 with piece_716 using piece_716_mem, ⟨piece_1888_mem, piece_1889_mem⟩

theorem linked_7644 : Linked cell_7644 pieces := by
  link_source cell_7644 with piece_716 using piece_716_mem, ⟨piece_1887_mem, piece_1888_mem⟩

theorem linked_7645 : Linked cell_7645 pieces := by
  link_source cell_7645 with piece_716 using piece_716_mem, ⟨piece_1886_mem, piece_1887_mem⟩

theorem linked_7646 : Linked cell_7646 pieces := by
  link_source cell_7646 with piece_716 using piece_716_mem, piece_1886_mem

theorem linked_7647 : Linked cell_7647 pieces := by
  link_source cell_7647 with piece_717 using piece_717_mem, ⟨piece_1888_mem, piece_1889_mem⟩

theorem linked_7648 : Linked cell_7648 pieces := by
  link_source cell_7648 with piece_717 using piece_717_mem, ⟨piece_1887_mem, piece_1888_mem⟩

theorem linked_7649 : Linked cell_7649 pieces := by
  link_source cell_7649 with piece_717 using piece_717_mem, ⟨piece_1886_mem, piece_1887_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0152.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0152.cells,List.forall_mem_cons]
  exact ⟨linked_7600, linked_7601, linked_7602, linked_7603, linked_7604, linked_7605, linked_7606, linked_7607, linked_7608, linked_7609, linked_7610, linked_7611, linked_7612, linked_7613, linked_7614, linked_7615, linked_7616, linked_7617, linked_7618, linked_7619, linked_7620, linked_7621, linked_7622, linked_7623, linked_7624, linked_7625, linked_7626, linked_7627, linked_7628, linked_7629, linked_7630, linked_7631, linked_7632, linked_7633, linked_7634, linked_7635, linked_7636, linked_7637, linked_7638, linked_7639, linked_7640, linked_7641, linked_7642, linked_7643, linked_7644, linked_7645, linked_7646, linked_7647, linked_7648, linked_7649, by simp⟩

theorem covered : covers (28062500000000003 / 100000000000000000 : ℚ) (28368750000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0152.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0152
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0153
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(28368750000000003 / 100000000000000000 : ℚ), (28375000000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (82593265211687 / 100000000000000 : ℚ)
  w := (17774809648691 / 10000000000000 : ℚ)
  center := (28371875000000003 / 100000000000000000 : ℚ)
  supportValue := (4098396326509099 / 5000000000000000 : ℚ)
  supportSlope := (-1373789812275561 / 200000000000000 : ℚ)
  oldCenter := (4098396326509099 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_718
  oldLo := (81850000000000001 / 100000000000000000 : ℚ)
  oldHi := (13 / 16 : ℚ)
  oldPieces := [piece_1884, piece_1885]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7650 : Cell := { cellDefaults with
  r := (41330338566697 / 50000000000000 : ℚ)
  w := (8892916760641 / 5000000000000 : ℚ)
  newCoefficients := coefficients_717
  oldLo := (40950000000000003 / 50000000000000000 : ℚ)
  oldHi := (41000000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1885, piece_1886]
}

def cell_7651 : Cell := { cellDefaults with
  domain := ⟨(28375000000000003 / 100000000000000000 : ℚ), (28381250000000003 / 100000000000000000 : ℚ)⟩
  r := (41330338566697 / 50000000000000 : ℚ)
  w := (8892916760641 / 5000000000000 : ℚ)
  center := (28378125000000003 / 100000000000000000 : ℚ)
  supportValue := (409625064301339 / 500000000000000 : ℚ)
  supportSlope := (-54906199985993 / 8000000000000 : ℚ)
  oldCenter := (409625064301339 / 500000000000000 : ℚ)
  newCoefficients := coefficients_717
  oldLo := (40950000000000003 / 50000000000000000 : ℚ)
  oldHi := (81950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1885]
}

def cell_7652 : Cell := { cellDefaults with
  domain := ⟨(28381250000000003 / 100000000000000000 : ℚ), (28387500000000003 / 100000000000000000 : ℚ)⟩
  r := (41330338566697 / 50000000000000 : ℚ)
  w := (8892916760641 / 5000000000000 : ℚ)
  center := (28384375000000003 / 100000000000000000 : ℚ)
  supportValue := (1023526693291657 / 1250000000000000 : ℚ)
  supportSlope := (-6857611953879683 / 1000000000000000 : ℚ)
  oldCenter := (1023526693291657 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_717
  oldHi := (81950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1884, piece_1885]
}

def cell_7653 : Cell := { cellDefaults with
  domain := ⟨(28387500000000003 / 100000000000000000 : ℚ), (28393750000000003 / 100000000000000000 : ℚ)⟩
  r := (41330338566697 / 50000000000000 : ℚ)
  w := (8892916760641 / 5000000000000 : ℚ)
  center := (28390625000000003 / 100000000000000000 : ℚ)
  supportValue := (8183929431557071 / 10000000000000000 : ℚ)
  supportSlope := (-1712953839073883 / 250000000000000 : ℚ)
  oldCenter := (8183929431557071 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_717
  oldLo := (40900000000000003 / 50000000000000000 : ℚ)
  oldHi := (40950000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1883, piece_1884]
}

def cell_7654 : Cell := { cellDefaults with
  domain := ⟨(28393750000000003 / 100000000000000000 : ℚ), (28400000000000003 / 100000000000000000 : ℚ)⟩
  r := (41330338566697 / 50000000000000 : ℚ)
  w := (8892916760641 / 5000000000000 : ℚ)
  center := (28396875000000003 / 100000000000000000 : ℚ)
  supportValue := (817964893938989 / 1000000000000000 : ℚ)
  supportSlope := (-1369204489328979 / 200000000000000 : ℚ)
  oldCenter := (817964893938989 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_717
  oldLo := (327 / 400 : ℚ)
  oldHi := (81850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1882, piece_1883]
}

def cell_7655 : Cell := { cellDefaults with
  domain := ⟨(28400000000000003 / 100000000000000000 : ℚ), (28406250000000003 / 100000000000000000 : ℚ)⟩
  center := (28403125000000003 / 100000000000000000 : ℚ)
  supportValue := (2048020611457589 / 2500000000000000 : ℚ)
  supportSlope := (-3428648004208057 / 500000000000000 : ℚ)
  oldCenter := (2048020611457589 / 2500000000000000 : ℚ)
  oldHi := (81950000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1884, piece_1885]
}

def cell_7656 : Cell := { cellDefaults with
  domain := ⟨(28406250000000003 / 100000000000000000 : ℚ), (28412500000000003 / 100000000000000000 : ℚ)⟩
  center := (28409375000000003 / 100000000000000000 : ℚ)
  supportValue := (25586869856517 / 31250000000000 : ℚ)
  supportSlope := (-3425879338323057 / 500000000000000 : ℚ)
  oldCenter := (25586869856517 / 31250000000000 : ℚ)
  oldHi := (40950000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1884]
}

def cell_7657 : Cell := { cellDefaults with
  domain := ⟨(28412500000000003 / 100000000000000000 : ℚ), (28418750000000003 / 100000000000000000 : ℚ)⟩
  center := (28415625000000003 / 100000000000000000 : ℚ)
  supportValue := (4091758938062573 / 5000000000000000 : ℚ)
  supportSlope := (-6846005800973387 / 1000000000000000 : ℚ)
  oldCenter := (4091758938062573 / 5000000000000000 : ℚ)
  oldLo := (40900000000000003 / 50000000000000000 : ℚ)
  oldHi := (40950000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1883, piece_1884]
}

def cell_7658 : Cell := { cellDefaults with
  domain := ⟨(28418750000000003 / 100000000000000000 : ℚ), (28425000000000003 / 100000000000000000 : ℚ)⟩
  center := (28421875000000003 / 100000000000000000 : ℚ)
  supportValue := (1022405126208069 / 1250000000000000 : ℚ)
  supportSlope := (-855028835007321 / 125000000000000 : ℚ)
  oldCenter := (1022405126208069 / 1250000000000000 : ℚ)
  oldLo := (327 / 400 : ℚ)
  oldHi := (81850000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1882, piece_1883]
}

def cell_7659 : Cell := { cellDefaults with
  domain := ⟨(28425000000000003 / 100000000000000000 : ℚ), (28431250000000003 / 100000000000000000 : ℚ)⟩
  center := (28428125000000003 / 100000000000000000 : ℚ)
  supportValue := (4087483876139369 / 5000000000000000 : ℚ)
  supportSlope := (-1366894131766827 / 200000000000000 : ℚ)
  oldCenter := (4087483876139369 / 5000000000000000 : ℚ)
  oldLo := (40850000000000003 / 50000000000000000 : ℚ)
  oldHi := (40900000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1880, piece_1881, piece_1882]
}

def cell_7660 : Cell := { cellDefaults with
  domain := ⟨(28431250000000003 / 100000000000000000 : ℚ), (28437500000000003 / 100000000000000000 : ℚ)⟩
  center := (28434375000000003 / 100000000000000000 : ℚ)
  supportValue := (4085348960865167 / 5000000000000000 : ℚ)
  supportSlope := (-1707178802464071 / 250000000000000 : ℚ)
  oldCenter := (4085348960865167 / 5000000000000000 : ℚ)
  oldLo := (1633 / 2000 : ℚ)
  oldHi := (8174860335195531 / 10000000000000000 : ℚ)
  oldPieces := [piece_1879, piece_1880]
}

def cell_7661 : Cell := { cellDefaults with
  domain := ⟨(28437500000000003 / 100000000000000000 : ℚ), (28443750000000003 / 100000000000000000 : ℚ)⟩
  center := (28440625000000003 / 100000000000000000 : ℚ)
  supportValue := (8166431684011399 / 10000000000000000 : ℚ)
  supportSlope := (-3411475561215127 / 500000000000000 : ℚ)
  oldCenter := (8166431684011399 / 10000000000000000 : ℚ)
  oldLo := (40800000000000003 / 50000000000000000 : ℚ)
  oldHi := (40850000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1878, piece_1879]
}

def cell_7662 : Cell := { cellDefaults with
  domain := ⟨(28443750000000003 / 100000000000000000 : ℚ), (28450000000000003 / 100000000000000000 : ℚ)⟩
  center := (28446875000000003 / 100000000000000000 : ℚ)
  supportValue := (31883472839083 / 39062500000000 : ℚ)
  supportSlope := (-6817202748475637 / 1000000000000000 : ℚ)
  oldCenter := (31883472839083 / 39062500000000 : ℚ)
  oldLo := (40800000000000003 / 50000000000000000 : ℚ)
  oldHi := (1633 / 2000 : ℚ)
  oldPieces := [piece_1878]
}

def cell_7663 : Cell := { cellDefaults with
  domain := ⟨(28450000000000003 / 100000000000000000 : ℚ), (28456250000000003 / 100000000000000000 : ℚ)⟩
  r := (82526000761891 / 100000000000000 : ℚ)
  w := (3552762920169 / 2000000000000 : ℚ)
  center := (28453125000000003 / 100000000000000000 : ℚ)
  supportValue := (1634910777766789 / 2000000000000000 : ℚ)
  supportSlope := (-13657346957757 / 2000000000000 : ℚ)
  oldCenter := (1634910777766789 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_719
  oldLo := (40850000000000003 / 50000000000000000 : ℚ)
  oldHi := (40900000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1880, piece_1881, piece_1882]
}

def cell_7664 : Cell := { cellDefaults with
  domain := ⟨(28456250000000003 / 100000000000000000 : ℚ), (28462500000000003 / 100000000000000000 : ℚ)⟩
  r := (82526000761891 / 100000000000000 : ℚ)
  w := (3552762920169 / 2000000000000 : ℚ)
  center := (28459375000000003 / 100000000000000000 : ℚ)
  supportValue := (4085143888157333 / 5000000000000000 : ℚ)
  supportSlope := (-1364586400593737 / 200000000000000 : ℚ)
  oldCenter := (4085143888157333 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_719
  oldLo := (1633 / 2000 : ℚ)
  oldHi := (8174860335195531 / 10000000000000000 : ℚ)
  oldPieces := [piece_1879, piece_1880]
}

def cell_7665 : Cell := { cellDefaults with
  domain := ⟨(28462500000000003 / 100000000000000000 : ℚ), (28468750000000003 / 100000000000000000 : ℚ)⟩
  r := (82526000761891 / 100000000000000 : ℚ)
  w := (3552762920169 / 2000000000000 : ℚ)
  center := (28465625000000003 / 100000000000000000 : ℚ)
  supportValue := (2041506286933901 / 2500000000000000 : ℚ)
  supportSlope := (-6817184175012869 / 1000000000000000 : ℚ)
  oldCenter := (2041506286933901 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_719
  oldLo := (40800000000000003 / 50000000000000000 : ℚ)
  oldHi := (40850000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1878, piece_1879]
}

def cell_7666 : Cell := { cellDefaults with
  domain := ⟨(28468750000000003 / 100000000000000000 : ℚ), (28475000000000003 / 100000000000000000 : ℚ)⟩
  r := (82526000761891 / 100000000000000 : ℚ)
  w := (3552762920169 / 2000000000000 : ℚ)
  center := (28471875000000003 / 100000000000000000 : ℚ)
  supportValue := (4080883054756087 / 5000000000000000 : ℚ)
  supportSlope := (-681144006299661 / 100000000000000 : ℚ)
  oldCenter := (4080883054756087 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_719
  oldLo := (1631 / 2000 : ℚ)
  oldHi := (1633 / 2000 : ℚ)
  oldPieces := [piece_1877, piece_1878]
}

def cell_7667 : Cell := { cellDefaults with
  domain := ⟨(28475000000000003 / 100000000000000000 : ℚ), (28481250000000003 / 100000000000000000 : ℚ)⟩
  r := (82526000761891 / 100000000000000 : ℚ)
  w := (3552762920169 / 2000000000000 : ℚ)
  center := (28478125000000003 / 100000000000000000 : ℚ)
  supportValue := (8157510659321657 / 10000000000000000 : ℚ)
  supportSlope := (-680584503547621 / 100000000000000 : ℚ)
  oldCenter := (8157510659321657 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_719
  oldLo := (1631 / 2000 : ℚ)
  oldHi := (40800000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1877]
}

def cell_7668 : Cell := { cellDefaults with
  domain := ⟨(28481250000000003 / 100000000000000000 : ℚ), (28487500000000003 / 100000000000000000 : ℚ)⟩
  r := (82526000761891 / 100000000000000 : ℚ)
  w := (3552762920169 / 2000000000000 : ℚ)
  center := (28484375000000003 / 100000000000000000 : ℚ)
  supportValue := (8153258794846481 / 10000000000000000 : ℚ)
  supportSlope := (-3400126893666311 / 500000000000000 : ℚ)
  oldCenter := (8153258794846481 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_719
  oldLo := (40750000000000003 / 50000000000000000 : ℚ)
  oldHi := (40800000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1876, piece_1877]
}

def cell_7669 : Cell := { cellDefaults with
  domain := ⟨(28487500000000003 / 100000000000000000 : ℚ), (28493750000000003 / 100000000000000000 : ℚ)⟩
  r := (82526000761891 / 100000000000000 : ℚ)
  w := (3552762920169 / 2000000000000 : ℚ)
  center := (28490625000000003 / 100000000000000000 : ℚ)
  supportValue := (8149010513772029 / 10000000000000000 : ℚ)
  supportSlope := (-1698630905034193 / 250000000000000 : ℚ)
  oldCenter := (8149010513772029 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_719
  oldLo := (1629 / 2000 : ℚ)
  oldHi := (1631 / 2000 : ℚ)
  oldPieces := [piece_1875, piece_1876]
}

def cell_7670 : Cell := { cellDefaults with
  domain := ⟨(28493750000000003 / 100000000000000000 : ℚ), (28500000000000003 / 100000000000000000 : ℚ)⟩
  r := (82526000761891 / 100000000000000 : ℚ)
  w := (3552762920169 / 2000000000000 : ℚ)
  center := (28496875000000003 / 100000000000000000 : ℚ)
  supportValue := (4072382906893451 / 5000000000000000 : ℚ)
  supportSlope := (-6788797151887849 / 1000000000000000 : ℚ)
  oldCenter := (4072382906893451 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_719
  oldLo := (40700000000000003 / 50000000000000000 : ℚ)
  oldHi := (40750000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1874, piece_1875]
}

def cell_7671 : Cell := { cellDefaults with
  domain := ⟨(28500000000000003 / 100000000000000000 : ℚ), (28506250000000003 / 100000000000000000 : ℚ)⟩
  r := (82458881039673 / 100000000000000 : ℚ)
  w := (17752846445747 / 10000000000000 : ℚ)
  center := (28503125000000003 / 100000000000000000 : ℚ)
  supportValue := (8157103130950613 / 10000000000000000 : ℚ)
  supportSlope := (-16999861064661559 / 2500000000000000 : ℚ)
  oldCenter := (8157103130950613 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_720
  oldLo := (40750000000000003 / 50000000000000000 : ℚ)
  oldHi := (40800000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1876, piece_1877]
}

def cell_7672 : Cell := { cellDefaults with
  domain := ⟨(28506250000000003 / 100000000000000000 : ℚ), (28512500000000003 / 100000000000000000 : ℚ)⟩
  r := (82458881039673 / 100000000000000 : ℚ)
  w := (17752846445747 / 10000000000000 : ℚ)
  center := (28509375000000003 / 100000000000000000 : ℚ)
  supportValue := (8152854858065729 / 10000000000000000 : ℚ)
  supportSlope := (-6794504558751413 / 1000000000000000 : ℚ)
  oldCenter := (8152854858065729 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_720
  oldLo := (40750000000000003 / 50000000000000000 : ℚ)
  oldHi := (1631 / 2000 : ℚ)
  oldPieces := [piece_1876]
}

def cell_7673 : Cell := { cellDefaults with
  domain := ⟨(28512500000000003 / 100000000000000000 : ℚ), (28518750000000003 / 100000000000000000 : ℚ)⟩
  r := (82458881039673 / 100000000000000 : ℚ)
  w := (17752846445747 / 10000000000000 : ℚ)
  center := (28515625000000003 / 100000000000000000 : ℚ)
  supportValue := (254644067446813 / 312500000000000 : ℚ)
  supportSlope := (-6788802214394707 / 1000000000000000 : ℚ)
  oldCenter := (254644067446813 / 312500000000000 : ℚ)
  newCoefficients := coefficients_720
  oldLo := (1629 / 2000 : ℚ)
  oldHi := (1631 / 2000 : ℚ)
  oldPieces := [piece_1875, piece_1876]
}

def cell_7674 : Cell := { cellDefaults with
  domain := ⟨(28518750000000003 / 100000000000000000 : ℚ), (28525000000000003 / 100000000000000000 : ℚ)⟩
  r := (82458881039673 / 100000000000000 : ℚ)
  w := (17752846445747 / 10000000000000 : ℚ)
  center := (28521875000000003 / 100000000000000000 : ℚ)
  supportValue := (8144369029349429 / 10000000000000000 : ℚ)
  supportSlope := (-3391546084984043 / 500000000000000 : ℚ)
  oldCenter := (8144369029349429 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_720
  oldLo := (40700000000000003 / 50000000000000000 : ℚ)
  oldHi := (40750000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1874, piece_1875]
}

def cell_7675 : Cell := { cellDefaults with
  domain := ⟨(28525000000000003 / 100000000000000000 : ℚ), (28531250000000003 / 100000000000000000 : ℚ)⟩
  r := (82458881039673 / 100000000000000 : ℚ)
  w := (17752846445747 / 10000000000000 : ℚ)
  center := (28528125000000003 / 100000000000000000 : ℚ)
  supportValue := (4070065719487271 / 5000000000000000 : ℚ)
  supportSlope := (-338869286098209 / 50000000000000 : ℚ)
  oldCenter := (4070065719487271 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_720
  oldLo := (1627 / 2000 : ℚ)
  oldHi := (1629 / 2000 : ℚ)
  oldPieces := [piece_1873, piece_1874]
}

def cell_7676 : Cell := { cellDefaults with
  domain := ⟨(28531250000000003 / 100000000000000000 : ℚ), (28537500000000003 / 100000000000000000 : ℚ)⟩
  r := (82458881039673 / 100000000000000 : ℚ)
  w := (17752846445747 / 10000000000000 : ℚ)
  center := (28534375000000003 / 100000000000000000 : ℚ)
  supportValue := (813589725816499 / 1000000000000000 : ℚ)
  supportSlope := (-3385841707242321 / 500000000000000 : ℚ)
  oldCenter := (813589725816499 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_720
  oldLo := (40650000000000003 / 50000000000000000 : ℚ)
  oldHi := (40700000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1872, piece_1873]
}

def cell_7677 : Cell := { cellDefaults with
  domain := ⟨(28537500000000003 / 100000000000000000 : ℚ), (28543750000000003 / 100000000000000000 : ℚ)⟩
  r := (82458881039673 / 100000000000000 : ℚ)
  w := (17752846445747 / 10000000000000 : ℚ)
  center := (28540625000000003 / 100000000000000000 : ℚ)
  supportValue := (254114582477379 / 312500000000000 : ℚ)
  supportSlope := (-676598504923831 / 100000000000000 : ℚ)
  oldCenter := (254114582477379 / 312500000000000 : ℚ)
  newCoefficients := coefficients_720
  oldLo := (13 / 16 : ℚ)
  oldHi := (1627 / 2000 : ℚ)
  oldPieces := [piece_1871, piece_1872]
}

def cell_7678 : Cell := { cellDefaults with
  domain := ⟨(28543750000000003 / 100000000000000000 : ℚ), (28550000000000003 / 100000000000000000 : ℚ)⟩
  r := (82458881039673 / 100000000000000 : ℚ)
  w := (17752846445747 / 10000000000000 : ℚ)
  center := (28546875000000003 / 100000000000000000 : ℚ)
  supportValue := (4063719789890613 / 5000000000000000 : ℚ)
  supportSlope := (-845051767170979 / 125000000000000 : ℚ)
  oldCenter := (4063719789890613 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_720
  oldLo := (13 / 16 : ℚ)
  oldHi := (40650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1871]
}

def cell_7679 : Cell := { cellDefaults with
  domain := ⟨(28550000000000003 / 100000000000000000 : ℚ), (28556250000000003 / 100000000000000000 : ℚ)⟩
  r := (41195953433709 / 50000000000000 : ℚ)
  w := (17741908309813 / 10000000000000 : ℚ)
  center := (28553125000000003 / 100000000000000000 : ℚ)
  supportValue := (4069864075568873 / 5000000000000000 : ℚ)
  supportSlope := (-1354334617241193 / 200000000000000 : ℚ)
  oldCenter := (4069864075568873 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_721
  oldLo := (1627 / 2000 : ℚ)
  oldHi := (1629 / 2000 : ℚ)
  oldPieces := [piece_1873, piece_1874]
}

def cell_7680 : Cell := { cellDefaults with
  domain := ⟨(28556250000000003 / 100000000000000000 : ℚ), (28562500000000003 / 100000000000000000 : ℚ)⟩
  r := (41195953433709 / 50000000000000 : ℚ)
  w := (17741908309813 / 10000000000000 : ℚ)
  center := (28559375000000003 / 100000000000000000 : ℚ)
  supportValue := (8135497603169101 / 10000000000000000 : ℚ)
  supportSlope := (-1691496858406083 / 250000000000000 : ℚ)
  oldCenter := (8135497603169101 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_721
  oldLo := (40650000000000003 / 50000000000000000 : ℚ)
  oldHi := (40700000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1872, piece_1873]
}

def cell_7681 : Cell := { cellDefaults with
  domain := ⟨(28562500000000003 / 100000000000000000 : ℚ), (28568750000000003 / 100000000000000000 : ℚ)⟩
  r := (41195953433709 / 50000000000000 : ℚ)
  w := (17741908309813 / 10000000000000 : ℚ)
  center := (28565625000000003 / 100000000000000000 : ℚ)
  supportValue := (8131270538771249 / 10000000000000000 : ℚ)
  supportSlope := (-270412231364503 / 40000000000000 : ℚ)
  oldCenter := (8131270538771249 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_721
  oldLo := (13 / 16 : ℚ)
  oldHi := (1627 / 2000 : ℚ)
  oldPieces := [piece_1871, piece_1872]
}

def cell_7682 : Cell := { cellDefaults with
  domain := ⟨(28568750000000003 / 100000000000000000 : ℚ), (28575000000000003 / 100000000000000000 : ℚ)⟩
  r := (41195953433709 / 50000000000000 : ℚ)
  w := (17741908309813 / 10000000000000 : ℚ)
  center := (28571875000000003 / 100000000000000000 : ℚ)
  supportValue := (8127047023438639 / 10000000000000000 : ℚ)
  supportSlope := (-6754626351057169 / 1000000000000000 : ℚ)
  oldCenter := (8127047023438639 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_721
  oldLo := (40600000000000003 / 50000000000000000 : ℚ)
  oldHi := (40650000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1870, piece_1871]
}

def cell_7683 : Cell := { cellDefaults with
  domain := ⟨(28575000000000003 / 100000000000000000 : ℚ), (28581250000000003 / 100000000000000000 : ℚ)⟩
  r := (41195953433709 / 50000000000000 : ℚ)
  w := (17741908309813 / 10000000000000 : ℚ)
  center := (28578125000000003 / 100000000000000000 : ℚ)
  supportValue := (8122827055884843 / 10000000000000000 : ℚ)
  supportSlope := (-1349845828823959 / 200000000000000 : ℚ)
  oldCenter := (8122827055884843 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_721
  oldLo := (40600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1870]
}

def cell_7684 : Cell := { cellDefaults with
  domain := ⟨(28581250000000003 / 100000000000000000 : ℚ), (28587500000000003 / 100000000000000000 : ℚ)⟩
  r := (41195953433709 / 50000000000000 : ℚ)
  w := (17741908309813 / 10000000000000 : ℚ)
  center := (28584375000000003 / 100000000000000000 : ℚ)
  supportValue := (8118610631278349 / 10000000000000000 : ℚ)
  supportSlope := (-3371800316777751 / 500000000000000 : ℚ)
  oldCenter := (8118610631278349 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_721
  oldLo := (1623 / 2000 : ℚ)
  oldPieces := [piece_1868, piece_1869, piece_1870]
}

def cell_7685 : Cell := { cellDefaults with
  domain := ⟨(28587500000000003 / 100000000000000000 : ℚ), (28593750000000003 / 100000000000000000 : ℚ)⟩
  r := (41195953433709 / 50000000000000 : ℚ)
  w := (17741908309813 / 10000000000000 : ℚ)
  center := (28590625000000003 / 100000000000000000 : ℚ)
  supportValue := (811439774040719 / 1000000000000000 : ℚ)
  supportSlope := (-3368971148626443 / 500000000000000 : ℚ)
  oldCenter := (811439774040719 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_721
  oldLo := (16220000000000001 / 20000000000000000 : ℚ)
  oldHi := (4059776536312849 / 5000000000000000 : ℚ)
  oldPieces := [piece_1867, piece_1868]
}

def cell_7686 : Cell := { cellDefaults with
  domain := ⟨(28593750000000003 / 100000000000000000 : ℚ), (28600000000000003 / 100000000000000000 : ℚ)⟩
  r := (41195953433709 / 50000000000000 : ℚ)
  w := (17741908309813 / 10000000000000 : ℚ)
  center := (28596875000000003 / 100000000000000000 : ℚ)
  supportValue := (811018834420979 / 1000000000000000 : ℚ)
  supportSlope := (-6732283163717767 / 1000000000000000 : ℚ)
  oldCenter := (811018834420979 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_721
  oldLo := (1621 / 2000 : ℚ)
  oldHi := (1623 / 2000 : ℚ)
  oldPieces := [piece_1866, piece_1867]
}

def cell_7687 : Cell := { cellDefaults with
  domain := ⟨(28600000000000003 / 100000000000000000 : ℚ), (28606250000000003 / 100000000000000000 : ℚ)⟩
  r := (82325076844181 / 100000000000000 : ℚ)
  w := (17730996527449 / 10000000000000 : ℚ)
  center := (28603125000000003 / 100000000000000000 : ℚ)
  supportValue := (31728242224069 / 39062500000000 : ℚ)
  supportSlope := (-6743403650201429 / 1000000000000000 : ℚ)
  oldCenter := (31728242224069 / 39062500000000 : ℚ)
  newCoefficients := coefficients_722
  oldLo := (40600000000000003 / 50000000000000000 : ℚ)
  oldPieces := [piece_1870]
}

def cell_7688 : Cell := { cellDefaults with
  domain := ⟨(28606250000000003 / 100000000000000000 : ℚ), (28612500000000003 / 100000000000000000 : ℚ)⟩
  r := (82325076844181 / 100000000000000 : ℚ)
  w := (17730996527449 / 10000000000000 : ℚ)
  center := (28609375000000003 / 100000000000000000 : ℚ)
  supportValue := (8118217122224273 / 10000000000000000 : ℚ)
  supportSlope := (-421121856045259 / 62500000000000 : ℚ)
  oldCenter := (8118217122224273 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_722
  oldLo := (1623 / 2000 : ℚ)
  oldPieces := [piece_1868, piece_1869, piece_1870]
}

def cell_7689 : Cell := { cellDefaults with
  domain := ⟨(28612500000000003 / 100000000000000000 : ℚ), (28618750000000003 / 100000000000000000 : ℚ)⟩
  r := (82325076844181 / 100000000000000 : ℚ)
  w := (17730996527449 / 10000000000000 : ℚ)
  center := (28615625000000003 / 100000000000000000 : ℚ)
  supportValue := (811400775917557 / 1000000000000000 : ℚ)
  supportSlope := (-3366153331159083 / 500000000000000 : ℚ)
  oldCenter := (811400775917557 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_722
  oldLo := (16220000000000001 / 20000000000000000 : ℚ)
  oldHi := (4059776536312849 / 5000000000000000 : ℚ)
  oldPieces := [piece_1867, piece_1868]
}

def cell_7690 : Cell := { cellDefaults with
  domain := ⟨(28618750000000003 / 100000000000000000 : ℚ), (28625000000000003 / 100000000000000000 : ℚ)⟩
  r := (82325076844181 / 100000000000000 : ℚ)
  w := (17730996527449 / 10000000000000 : ℚ)
  center := (28621875000000003 / 100000000000000000 : ℚ)
  supportValue := (8109801924626509 / 10000000000000000 : ℚ)
  supportSlope := (-269066572574701 / 40000000000000 : ℚ)
  oldCenter := (8109801924626509 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_722
  oldLo := (1621 / 2000 : ℚ)
  oldHi := (1623 / 2000 : ℚ)
  oldPieces := [piece_1866, piece_1867]
}

def cell_7691 : Cell := { cellDefaults with
  domain := ⟨(28625000000000003 / 100000000000000000 : ℚ), (28631250000000003 / 100000000000000000 : ℚ)⟩
  r := (82325076844181 / 100000000000000 : ℚ)
  w := (17730996527449 / 10000000000000 : ℚ)
  center := (28628125000000003 / 100000000000000000 : ℚ)
  supportValue := (8105599470566909 / 10000000000000000 : ℚ)
  supportSlope := (-840128202100221 / 125000000000000 : ℚ)
  oldCenter := (8105599470566909 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_722
  oldLo := (16200000000000001 / 20000000000000000 : ℚ)
  oldHi := (16220000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1865, piece_1866]
}

def cell_7692 : Cell := { cellDefaults with
  domain := ⟨(28631250000000003 / 100000000000000000 : ℚ), (28637500000000003 / 100000000000000000 : ℚ)⟩
  r := (82325076844181 / 100000000000000 : ℚ)
  w := (17730996527449 / 10000000000000 : ℚ)
  center := (28634375000000003 / 100000000000000000 : ℚ)
  supportValue := (8101400487987999 / 10000000000000000 : ℚ)
  supportSlope := (-3357694647215581 / 500000000000000 : ℚ)
  oldCenter := (8101400487987999 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_722
  oldLo := (1619 / 2000 : ℚ)
  oldHi := (1621 / 2000 : ℚ)
  oldPieces := [piece_1864, piece_1865]
}

def cell_7693 : Cell := { cellDefaults with
  domain := ⟨(28637500000000003 / 100000000000000000 : ℚ), (28643750000000003 / 100000000000000000 : ℚ)⟩
  r := (82325076844181 / 100000000000000 : ℚ)
  w := (17730996527449 / 10000000000000 : ℚ)
  center := (28640625000000003 / 100000000000000000 : ℚ)
  supportValue := (8097205028341323 / 10000000000000000 : ℚ)
  supportSlope := (-6709791985670677 / 1000000000000000 : ℚ)
  oldCenter := (8097205028341323 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_722
  oldLo := (1619 / 2000 : ℚ)
  oldHi := (16200000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1864]
}

def cell_7694 : Cell := { cellDefaults with
  domain := ⟨(28643750000000003 / 100000000000000000 : ℚ), (28650000000000003 / 100000000000000000 : ℚ)⟩
  r := (82325076844181 / 100000000000000 : ℚ)
  w := (17730996527449 / 10000000000000 : ℚ)
  center := (28646875000000003 / 100000000000000000 : ℚ)
  supportValue := (8093013087321351 / 10000000000000000 : ℚ)
  supportSlope := (-670444646620183 / 100000000000000 : ℚ)
  oldCenter := (8093013087321351 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_722
  oldLo := (16180000000000001 / 20000000000000000 : ℚ)
  oldHi := (16200000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1863, piece_1864]
}

def cell_7695 : Cell := { cellDefaults with
  domain := ⟨(28650000000000003 / 100000000000000000 : ℚ), (28653631284916203 / 100000000000000000 : ℚ)⟩
  r := (10282298740193 / 12500000000000 : ℚ)
  w := (8860056994331 / 5000000000000 : ℚ)
  center := (28651815642458103 / 100000000000000000 : ℚ)
  supportValue := (8106080706762111 / 10000000000000000 : ℚ)
  supportSlope := (-6716200868921491 / 1000000000000000 : ℚ)
  oldCenter := (8106080706762111 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_723
  oldLo := (16200000000000001 / 20000000000000000 : ℚ)
  oldHi := (16220000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1865, piece_1866]
}

def cell_7696 : Cell := { cellDefaults with
  domain := ⟨(28653631284916203 / 100000000000000000 : ℚ), (28658973463687153 / 100000000000000000 : ℚ)⟩
  r := (10282298740193 / 12500000000000 : ℚ)
  w := (8860056994331 / 5000000000000 : ℚ)
  center := (14328151187150839 / 50000000000000000 : ℚ)
  supportValue := (8103068012511321 / 10000000000000000 : ℚ)
  supportSlope := (-6712768388056071 / 1000000000000000 : ℚ)
  oldCenter := (8103068012511321 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_724
  oldLo := (16200000000000001 / 20000000000000000 : ℚ)
  oldHi := (1621 / 2000 : ℚ)
  oldPieces := [piece_1865]
}

def cell_7697 : Cell := { cellDefaults with
  domain := ⟨(28658973463687153 / 100000000000000000 : ℚ), (28664315642458103 / 100000000000000000 : ℚ)⟩
  r := (10282298740193 / 12500000000000 : ℚ)
  w := (8860056994331 / 5000000000000 : ℚ)
  center := (7165411138268157 / 25000000000000000 : ℚ)
  supportValue := (1012436132528189 / 1250000000000000 : ℚ)
  supportSlope := (-1341577705672127 / 200000000000000 : ℚ)
  oldCenter := (1012436132528189 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_724
  oldLo := (1619 / 2000 : ℚ)
  oldHi := (1621 / 2000 : ℚ)
  oldPieces := [piece_1864, piece_1865]
}

def cell_7698 : Cell := { cellDefaults with
  domain := ⟨(28664315642458103 / 100000000000000000 : ℚ), (28669657821229053 / 100000000000000000 : ℚ)⟩
  r := (10282298740193 / 12500000000000 : ℚ)
  w := (8860056994331 / 5000000000000 : ℚ)
  center := (14333493365921789 / 50000000000000000 : ℚ)
  supportValue := (2023976714185973 / 2500000000000000 : ℚ)
  supportSlope := (-107247161470593 / 16000000000000 : ℚ)
  oldCenter := (2023976714185973 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_724
  oldLo := (16180000000000001 / 20000000000000000 : ℚ)
  oldHi := (16200000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1863, piece_1864]
}

def cell_7699 : Cell := { cellDefaults with
  domain := ⟨(28669657821229053 / 100000000000000000 : ℚ), (28675000000000003 / 100000000000000000 : ℚ)⟩
  r := (10282298740193 / 12500000000000 : ℚ)
  w := (8860056994331 / 5000000000000 : ℚ)
  center := (7000080300443 / 24414062500000 : ℚ)
  supportValue := (404616074856417 / 500000000000000 : ℚ)
  supportSlope := (-6698256437475499 / 1000000000000000 : ℚ)
  oldCenter := (404616074856417 / 500000000000000 : ℚ)
  newCoefficients := coefficients_724
  oldLo := (16180000000000001 / 20000000000000000 : ℚ)
  oldHi := (1619 / 2000 : ℚ)
  oldPieces := [piece_1863]
}

theorem check_7650 : cell_7650.check = true := by
  decide +kernel

theorem check_7651 : cell_7651.check = true := by
  decide +kernel

theorem check_7652 : cell_7652.check = true := by
  decide +kernel

theorem check_7653 : cell_7653.check = true := by
  decide +kernel

theorem check_7654 : cell_7654.check = true := by
  decide +kernel

theorem check_7655 : cell_7655.check = true := by
  decide +kernel

theorem check_7656 : cell_7656.check = true := by
  decide +kernel

theorem check_7657 : cell_7657.check = true := by
  decide +kernel

theorem check_7658 : cell_7658.check = true := by
  decide +kernel

theorem check_7659 : cell_7659.check = true := by
  decide +kernel

theorem check_7660 : cell_7660.check = true := by
  decide +kernel

theorem check_7661 : cell_7661.check = true := by
  decide +kernel

theorem check_7662 : cell_7662.check = true := by
  decide +kernel

theorem check_7663 : cell_7663.check = true := by
  decide +kernel

theorem check_7664 : cell_7664.check = true := by
  decide +kernel

theorem check_7665 : cell_7665.check = true := by
  decide +kernel

theorem check_7666 : cell_7666.check = true := by
  decide +kernel

theorem check_7667 : cell_7667.check = true := by
  decide +kernel

theorem check_7668 : cell_7668.check = true := by
  decide +kernel

theorem check_7669 : cell_7669.check = true := by
  decide +kernel

theorem check_7670 : cell_7670.check = true := by
  decide +kernel

theorem check_7671 : cell_7671.check = true := by
  decide +kernel

theorem check_7672 : cell_7672.check = true := by
  decide +kernel

theorem check_7673 : cell_7673.check = true := by
  decide +kernel

theorem check_7674 : cell_7674.check = true := by
  decide +kernel

theorem check_7675 : cell_7675.check = true := by
  decide +kernel

theorem check_7676 : cell_7676.check = true := by
  decide +kernel

theorem check_7677 : cell_7677.check = true := by
  decide +kernel

theorem check_7678 : cell_7678.check = true := by
  decide +kernel

theorem check_7679 : cell_7679.check = true := by
  decide +kernel

theorem check_7680 : cell_7680.check = true := by
  decide +kernel

theorem check_7681 : cell_7681.check = true := by
  decide +kernel

theorem check_7682 : cell_7682.check = true := by
  decide +kernel

theorem check_7683 : cell_7683.check = true := by
  decide +kernel

theorem check_7684 : cell_7684.check = true := by
  decide +kernel

theorem check_7685 : cell_7685.check = true := by
  decide +kernel

theorem check_7686 : cell_7686.check = true := by
  decide +kernel

theorem check_7687 : cell_7687.check = true := by
  decide +kernel

theorem check_7688 : cell_7688.check = true := by
  decide +kernel

theorem check_7689 : cell_7689.check = true := by
  decide +kernel

theorem check_7690 : cell_7690.check = true := by
  decide +kernel

theorem check_7691 : cell_7691.check = true := by
  decide +kernel

theorem check_7692 : cell_7692.check = true := by
  decide +kernel

theorem check_7693 : cell_7693.check = true := by
  decide +kernel

theorem check_7694 : cell_7694.check = true := by
  decide +kernel

theorem check_7695 : cell_7695.check = true := by
  decide +kernel

theorem check_7696 : cell_7696.check = true := by
  decide +kernel

theorem check_7697 : cell_7697.check = true := by
  decide +kernel

theorem check_7698 : cell_7698.check = true := by
  decide +kernel

theorem check_7699 : cell_7699.check = true := by
  decide +kernel

def cells : List Cell := [cell_7650, cell_7651, cell_7652, cell_7653, cell_7654, cell_7655, cell_7656, cell_7657, cell_7658, cell_7659, cell_7660, cell_7661, cell_7662, cell_7663, cell_7664, cell_7665, cell_7666, cell_7667, cell_7668, cell_7669, cell_7670, cell_7671, cell_7672, cell_7673, cell_7674, cell_7675, cell_7676, cell_7677, cell_7678, cell_7679, cell_7680, cell_7681, cell_7682, cell_7683, cell_7684, cell_7685, cell_7686, cell_7687, cell_7688, cell_7689, cell_7690, cell_7691, cell_7692, cell_7693, cell_7694, cell_7695, cell_7696, cell_7697, cell_7698, cell_7699]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7650, check_7651, check_7652, check_7653, check_7654, check_7655, check_7656, check_7657, check_7658, check_7659, check_7660, check_7661, check_7662, check_7663, check_7664, check_7665, check_7666, check_7667, check_7668, check_7669, check_7670, check_7671, check_7672, check_7673, check_7674, check_7675, check_7676, check_7677, check_7678, check_7679, check_7680, check_7681, check_7682, check_7683, check_7684, check_7685, check_7686, check_7687, check_7688, check_7689, check_7690, check_7691, check_7692, check_7693, check_7694, check_7695, check_7696, check_7697, check_7698, check_7699, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0153

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0153
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0153
open AnalyticBounds.ExpressionCertificate

theorem linked_7650 : Linked cell_7650 pieces := by
  link_source cell_7650 with piece_717 using piece_717_mem, ⟨piece_1885_mem, piece_1886_mem⟩

theorem linked_7651 : Linked cell_7651 pieces := by
  link_source cell_7651 with piece_717 using piece_717_mem, piece_1885_mem

theorem linked_7652 : Linked cell_7652 pieces := by
  link_source cell_7652 with piece_717 using piece_717_mem, ⟨piece_1884_mem, piece_1885_mem⟩

theorem linked_7653 : Linked cell_7653 pieces := by
  link_source cell_7653 with piece_717 using piece_717_mem, ⟨piece_1883_mem, piece_1884_mem⟩

theorem linked_7654 : Linked cell_7654 pieces := by
  link_source cell_7654 with piece_717 using piece_717_mem, ⟨piece_1882_mem, piece_1883_mem⟩

theorem linked_7655 : Linked cell_7655 pieces := by
  link_source cell_7655 with piece_718 using piece_718_mem, ⟨piece_1884_mem, piece_1885_mem⟩

theorem linked_7656 : Linked cell_7656 pieces := by
  link_source cell_7656 with piece_718 using piece_718_mem, piece_1884_mem

theorem linked_7657 : Linked cell_7657 pieces := by
  link_source cell_7657 with piece_718 using piece_718_mem, ⟨piece_1883_mem, piece_1884_mem⟩

theorem linked_7658 : Linked cell_7658 pieces := by
  link_source cell_7658 with piece_718 using piece_718_mem, ⟨piece_1882_mem, piece_1883_mem⟩

theorem linked_7659 : Linked cell_7659 pieces := by
  link_source cell_7659 with piece_718 using piece_718_mem, ⟨piece_1880_mem, ⟨piece_1881_mem, piece_1882_mem⟩⟩

theorem linked_7660 : Linked cell_7660 pieces := by
  link_source cell_7660 with piece_718 using piece_718_mem, ⟨piece_1879_mem, piece_1880_mem⟩

theorem linked_7661 : Linked cell_7661 pieces := by
  link_source cell_7661 with piece_718 using piece_718_mem, ⟨piece_1878_mem, piece_1879_mem⟩

theorem linked_7662 : Linked cell_7662 pieces := by
  link_source cell_7662 with piece_718 using piece_718_mem, piece_1878_mem

theorem linked_7663 : Linked cell_7663 pieces := by
  link_source cell_7663 with piece_719 using piece_719_mem, ⟨piece_1880_mem, ⟨piece_1881_mem, piece_1882_mem⟩⟩

theorem linked_7664 : Linked cell_7664 pieces := by
  link_source cell_7664 with piece_719 using piece_719_mem, ⟨piece_1879_mem, piece_1880_mem⟩

theorem linked_7665 : Linked cell_7665 pieces := by
  link_source cell_7665 with piece_719 using piece_719_mem, ⟨piece_1878_mem, piece_1879_mem⟩

theorem linked_7666 : Linked cell_7666 pieces := by
  link_source cell_7666 with piece_719 using piece_719_mem, ⟨piece_1877_mem, piece_1878_mem⟩

theorem linked_7667 : Linked cell_7667 pieces := by
  link_source cell_7667 with piece_719 using piece_719_mem, piece_1877_mem

theorem linked_7668 : Linked cell_7668 pieces := by
  link_source cell_7668 with piece_719 using piece_719_mem, ⟨piece_1876_mem, piece_1877_mem⟩

theorem linked_7669 : Linked cell_7669 pieces := by
  link_source cell_7669 with piece_719 using piece_719_mem, ⟨piece_1875_mem, piece_1876_mem⟩

theorem linked_7670 : Linked cell_7670 pieces := by
  link_source cell_7670 with piece_719 using piece_719_mem, ⟨piece_1874_mem, piece_1875_mem⟩

theorem linked_7671 : Linked cell_7671 pieces := by
  link_source cell_7671 with piece_720 using piece_720_mem, ⟨piece_1876_mem, piece_1877_mem⟩

theorem linked_7672 : Linked cell_7672 pieces := by
  link_source cell_7672 with piece_720 using piece_720_mem, piece_1876_mem

theorem linked_7673 : Linked cell_7673 pieces := by
  link_source cell_7673 with piece_720 using piece_720_mem, ⟨piece_1875_mem, piece_1876_mem⟩

theorem linked_7674 : Linked cell_7674 pieces := by
  link_source cell_7674 with piece_720 using piece_720_mem, ⟨piece_1874_mem, piece_1875_mem⟩

theorem linked_7675 : Linked cell_7675 pieces := by
  link_source cell_7675 with piece_720 using piece_720_mem, ⟨piece_1873_mem, piece_1874_mem⟩

theorem linked_7676 : Linked cell_7676 pieces := by
  link_source cell_7676 with piece_720 using piece_720_mem, ⟨piece_1872_mem, piece_1873_mem⟩

theorem linked_7677 : Linked cell_7677 pieces := by
  link_source cell_7677 with piece_720 using piece_720_mem, ⟨piece_1871_mem, piece_1872_mem⟩

theorem linked_7678 : Linked cell_7678 pieces := by
  link_source cell_7678 with piece_720 using piece_720_mem, piece_1871_mem

theorem linked_7679 : Linked cell_7679 pieces := by
  link_source cell_7679 with piece_721 using piece_721_mem, ⟨piece_1873_mem, piece_1874_mem⟩

theorem linked_7680 : Linked cell_7680 pieces := by
  link_source cell_7680 with piece_721 using piece_721_mem, ⟨piece_1872_mem, piece_1873_mem⟩

theorem linked_7681 : Linked cell_7681 pieces := by
  link_source cell_7681 with piece_721 using piece_721_mem, ⟨piece_1871_mem, piece_1872_mem⟩

theorem linked_7682 : Linked cell_7682 pieces := by
  link_source cell_7682 with piece_721 using piece_721_mem, ⟨piece_1870_mem, piece_1871_mem⟩

theorem linked_7683 : Linked cell_7683 pieces := by
  link_source cell_7683 with piece_721 using piece_721_mem, piece_1870_mem

theorem linked_7684 : Linked cell_7684 pieces := by
  link_source cell_7684 with piece_721 using piece_721_mem, ⟨piece_1868_mem, ⟨piece_1869_mem, piece_1870_mem⟩⟩

theorem linked_7685 : Linked cell_7685 pieces := by
  link_source cell_7685 with piece_721 using piece_721_mem, ⟨piece_1867_mem, piece_1868_mem⟩

theorem linked_7686 : Linked cell_7686 pieces := by
  link_source cell_7686 with piece_721 using piece_721_mem, ⟨piece_1866_mem, piece_1867_mem⟩

theorem linked_7687 : Linked cell_7687 pieces := by
  link_source cell_7687 with piece_722 using piece_722_mem, piece_1870_mem

theorem linked_7688 : Linked cell_7688 pieces := by
  link_source cell_7688 with piece_722 using piece_722_mem, ⟨piece_1868_mem, ⟨piece_1869_mem, piece_1870_mem⟩⟩

theorem linked_7689 : Linked cell_7689 pieces := by
  link_source cell_7689 with piece_722 using piece_722_mem, ⟨piece_1867_mem, piece_1868_mem⟩

theorem linked_7690 : Linked cell_7690 pieces := by
  link_source cell_7690 with piece_722 using piece_722_mem, ⟨piece_1866_mem, piece_1867_mem⟩

theorem linked_7691 : Linked cell_7691 pieces := by
  link_source cell_7691 with piece_722 using piece_722_mem, ⟨piece_1865_mem, piece_1866_mem⟩

theorem linked_7692 : Linked cell_7692 pieces := by
  link_source cell_7692 with piece_722 using piece_722_mem, ⟨piece_1864_mem, piece_1865_mem⟩

theorem linked_7693 : Linked cell_7693 pieces := by
  link_source cell_7693 with piece_722 using piece_722_mem, piece_1864_mem

theorem linked_7694 : Linked cell_7694 pieces := by
  link_source cell_7694 with piece_722 using piece_722_mem, ⟨piece_1863_mem, piece_1864_mem⟩

theorem linked_7695 : Linked cell_7695 pieces := by
  link_source cell_7695 with piece_723 using piece_723_mem, ⟨piece_1865_mem, piece_1866_mem⟩

theorem linked_7696 : Linked cell_7696 pieces := by
  link_source cell_7696 with piece_724 using piece_724_mem, piece_1865_mem

theorem linked_7697 : Linked cell_7697 pieces := by
  link_source cell_7697 with piece_724 using piece_724_mem, ⟨piece_1864_mem, piece_1865_mem⟩

theorem linked_7698 : Linked cell_7698 pieces := by
  link_source cell_7698 with piece_724 using piece_724_mem, ⟨piece_1863_mem, piece_1864_mem⟩

theorem linked_7699 : Linked cell_7699 pieces := by
  link_source cell_7699 with piece_724 using piece_724_mem, piece_1863_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0153.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0153.cells,List.forall_mem_cons]
  exact ⟨linked_7650, linked_7651, linked_7652, linked_7653, linked_7654, linked_7655, linked_7656, linked_7657, linked_7658, linked_7659, linked_7660, linked_7661, linked_7662, linked_7663, linked_7664, linked_7665, linked_7666, linked_7667, linked_7668, linked_7669, linked_7670, linked_7671, linked_7672, linked_7673, linked_7674, linked_7675, linked_7676, linked_7677, linked_7678, linked_7679, linked_7680, linked_7681, linked_7682, linked_7683, linked_7684, linked_7685, linked_7686, linked_7687, linked_7688, linked_7689, linked_7690, linked_7691, linked_7692, linked_7693, linked_7694, linked_7695, linked_7696, linked_7697, linked_7698, linked_7699, by simp⟩

theorem covered : covers (28368750000000003 / 100000000000000000 : ℚ) (28675000000000003 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0153.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0153
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0154
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(28675000000000003 / 100000000000000000 : ℚ), (28681250000000003 / 100000000000000000 : ℚ)⟩
  branch := .left
  r := (82191845790987 / 100000000000000 : ℚ)
  w := (2213657389261 / 1250000000000 : ℚ)
  center := (28678125000000003 / 100000000000000000 : ℚ)
  supportValue := (2022111566694789 / 2500000000000000 : ℚ)
  supportSlope := (-1338653847462723 / 200000000000000 : ℚ)
  oldCenter := (2022111566694789 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_725
  oldLo := (80649999999999999 / 100000000000000000 : ℚ)
  oldHi := (16140000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1862, piece_1863]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7700 : Cell := { cellDefaults with
  r := (10282298740193 / 12500000000000 : ℚ)
  w := (8860056994331 / 5000000000000 : ℚ)
  newCoefficients := coefficients_724
  oldLo := (1617 / 2000 : ℚ)
  oldHi := (1619 / 2000 : ℚ)
  oldPieces := [piece_1862, piece_1863]
}

def cell_7701 : Cell := { cellDefaults with
  domain := ⟨(28681250000000003 / 100000000000000000 : ℚ), (28687500000000003 / 100000000000000000 : ℚ)⟩
  r := (10282298740193 / 12500000000000 : ℚ)
  w := (8860056994331 / 5000000000000 : ℚ)
  center := (28684375000000003 / 100000000000000000 : ℚ)
  supportValue := (1616852964223777 / 2000000000000000 : ℚ)
  supportSlope := (-13375338482070731 / 2000000000000000 : ℚ)
  oldCenter := (1616852964223777 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_724
  oldLo := (16160000000000001 / 20000000000000000 : ℚ)
  oldHi := (16180000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1861, piece_1862]
}

def cell_7702 : Cell := { cellDefaults with
  domain := ⟨(28687500000000003 / 100000000000000000 : ℚ), (28693750000000003 / 100000000000000000 : ℚ)⟩
  r := (10282298740193 / 12500000000000 : ℚ)
  w := (8860056994331 / 5000000000000 : ℚ)
  center := (28690625000000003 / 100000000000000000 : ℚ)
  supportValue := (505005428511617 / 625000000000000 : ℚ)
  supportSlope := (-6682071684483759 / 1000000000000000 : ℚ)
  oldCenter := (505005428511617 / 625000000000000 : ℚ)
  newCoefficients := coefficients_724
  oldLo := (323 / 400 : ℚ)
  oldHi := (1617 / 2000 : ℚ)
  oldPieces := [piece_1860, piece_1861]
}

def cell_7703 : Cell := { cellDefaults with
  domain := ⟨(28693750000000003 / 100000000000000000 : ℚ), (28700000000000003 / 100000000000000000 : ℚ)⟩
  r := (10282298740193 / 12500000000000 : ℚ)
  w := (8860056994331 / 5000000000000 : ℚ)
  center := (28696875000000003 / 100000000000000000 : ℚ)
  supportValue := (8075912202956489 / 10000000000000000 : ℚ)
  supportSlope := (-6676478290380317 / 1000000000000000 : ℚ)
  oldCenter := (8075912202956489 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_724
  oldLo := (16140000000000001 / 20000000000000000 : ℚ)
  oldHi := (16160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1859, piece_1860]
}

def cell_7704 : Cell := { cellDefaults with
  domain := ⟨(28700000000000003 / 100000000000000000 : ℚ), (28706250000000003 / 100000000000000000 : ℚ)⟩
  center := (28703125000000003 / 100000000000000000 : ℚ)
  supportValue := (8088059132238601 / 10000000000000000 : ℚ)
  supportSlope := (-3343840332997061 / 500000000000000 : ℚ)
  oldCenter := (8088059132238601 / 10000000000000000 : ℚ)
  oldLo := (1617 / 2000 : ℚ)
  oldHi := (1619 / 2000 : ℚ)
  oldPieces := [piece_1862, piece_1863]
}

def cell_7705 : Cell := { cellDefaults with
  domain := ⟨(28706250000000003 / 100000000000000000 : ℚ), (28712500000000003 / 100000000000000000 : ℚ)⟩
  center := (28709375000000003 / 100000000000000000 : ℚ)
  supportValue := (8083881174322949 / 10000000000000000 : ℚ)
  supportSlope := (-1670524453784239 / 250000000000000 : ℚ)
  oldCenter := (8083881174322949 / 10000000000000000 : ℚ)
  oldLo := (16160000000000001 / 20000000000000000 : ℚ)
  oldHi := (16180000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1861, piece_1862]
}

def cell_7706 : Cell := { cellDefaults with
  domain := ⟨(28712500000000003 / 100000000000000000 : ℚ), (28718750000000003 / 100000000000000000 : ℚ)⟩
  center := (28715625000000003 / 100000000000000000 : ℚ)
  supportValue := (8079706706071811 / 10000000000000000 : ℚ)
  supportSlope := (-3338258731895749 / 500000000000000 : ℚ)
  oldCenter := (8079706706071811 / 10000000000000000 : ℚ)
  oldLo := (323 / 400 : ℚ)
  oldHi := (1617 / 2000 : ℚ)
  oldPieces := [piece_1860, piece_1861]
}

def cell_7707 : Cell := { cellDefaults with
  domain := ⟨(28718750000000003 / 100000000000000000 : ℚ), (28725000000000003 / 100000000000000000 : ℚ)⟩
  center := (28721875000000003 / 100000000000000000 : ℚ)
  supportValue := (4037767796765589 / 5000000000000000 : ℚ)
  supportSlope := (-6670941225305427 / 1000000000000000 : ℚ)
  oldCenter := (4037767796765589 / 5000000000000000 : ℚ)
  oldLo := (16140000000000001 / 20000000000000000 : ℚ)
  oldHi := (16160000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1859, piece_1860]
}

def cell_7708 : Cell := { cellDefaults with
  domain := ⟨(28725000000000003 / 100000000000000000 : ℚ), (28731250000000003 / 100000000000000000 : ℚ)⟩
  center := (28728125000000003 / 100000000000000000 : ℚ)
  supportValue := (4035683944615037 / 5000000000000000 : ℚ)
  supportSlope := (-33326841415455277 / 5000000000000000 : ℚ)
  oldCenter := (4035683944615037 / 5000000000000000 : ℚ)
  oldHi := (323 / 400 : ℚ)
  oldPieces := [piece_1858, piece_1859]
}

def cell_7709 : Cell := { cellDefaults with
  domain := ⟨(28731250000000003 / 100000000000000000 : ℚ), (28737500000000003 / 100000000000000000 : ℚ)⟩
  center := (28734375000000003 / 100000000000000000 : ℚ)
  supportValue := (4033601833001393 / 5000000000000000 : ℚ)
  supportSlope := (-6659844717887609 / 1000000000000000 : ℚ)
  oldCenter := (4033601833001393 / 5000000000000000 : ℚ)
  oldPieces := [piece_1858]
}

def cell_7710 : Cell := { cellDefaults with
  domain := ⟨(28737500000000003 / 100000000000000000 : ℚ), (28743750000000003 / 100000000000000000 : ℚ)⟩
  center := (28740625000000003 / 100000000000000000 : ℚ)
  supportValue := (4031521461417863 / 5000000000000000 : ℚ)
  supportSlope := (-1663641244028291 / 250000000000000 : ℚ)
  oldCenter := (4031521461417863 / 5000000000000000 : ℚ)
  oldLo := (16120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1856, piece_1857, piece_1858]
}

def cell_7711 : Cell := { cellDefaults with
  domain := ⟨(28743750000000003 / 100000000000000000 : ℚ), (28750000000000003 / 100000000000000000 : ℚ)⟩
  center := (28746875000000003 / 100000000000000000 : ℚ)
  supportValue := (1611777132066609 / 2000000000000000 : ℚ)
  supportSlope := (-6649001246369579 / 1000000000000000 : ℚ)
  oldCenter := (1611777132066609 / 2000000000000000 : ℚ)
  oldLo := (80549999999999999 / 100000000000000000 : ℚ)
  oldHi := (4032122905027933 / 5000000000000000 : ℚ)
  oldPieces := [piece_1855, piece_1856]
}

def cell_7712 : Cell := { cellDefaults with
  domain := ⟨(28750000000000003 / 100000000000000000 : ℚ), (28756250000000003 / 100000000000000000 : ℚ)⟩
  r := (82125443981661 / 100000000000000 : ℚ)
  w := (17698432790927 / 10000000000000 : ℚ)
  center := (28753125000000003 / 100000000000000000 : ℚ)
  supportValue := (252218296255869 / 312500000000000 : ℚ)
  supportSlope := (-6659818188449407 / 1000000000000000 : ℚ)
  oldCenter := (252218296255869 / 312500000000000 : ℚ)
  newCoefficients := coefficients_726
  oldHi := (323 / 400 : ℚ)
  oldPieces := [piece_1858, piece_1859]
}

def cell_7713 : Cell := { cellDefaults with
  domain := ⟨(28756250000000003 / 100000000000000000 : ℚ), (28762500000000003 / 100000000000000000 : ℚ)⟩
  r := (82125443981661 / 100000000000000 : ℚ)
  w := (17698432790927 / 10000000000000 : ℚ)
  center := (28759375000000003 / 100000000000000000 : ℚ)
  supportValue := (2016706180030031 / 2500000000000000 : ℚ)
  supportSlope := (-3327132882581907 / 500000000000000 : ℚ)
  oldCenter := (2016706180030031 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_726
  oldLo := (4032122905027933 / 5000000000000000 : ℚ)
  oldPieces := [piece_1857, piece_1858]
}

def cell_7714 : Cell := { cellDefaults with
  domain := ⟨(28762500000000003 / 100000000000000000 : ℚ), (28768750000000003 / 100000000000000000 : ℚ)⟩
  r := (82125443981661 / 100000000000000 : ℚ)
  w := (17698432790927 / 10000000000000 : ℚ)
  center := (28765625000000003 / 100000000000000000 : ℚ)
  supportValue := (4031333714872921 / 5000000000000000 : ℚ)
  supportSlope := (-664894441041497 / 100000000000000 : ℚ)
  oldCenter := (4031333714872921 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_726
  oldLo := (16120000000000001 / 20000000000000000 : ℚ)
  oldHi := (80649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1856, piece_1857]
}

def cell_7715 : Cell := { cellDefaults with
  domain := ⟨(28768750000000003 / 100000000000000000 : ℚ), (28775000000000003 / 100000000000000000 : ℚ)⟩
  r := (82125443981661 / 100000000000000 : ℚ)
  w := (17698432790927 / 10000000000000 : ℚ)
  center := (28771875000000003 / 100000000000000000 : ℚ)
  supportValue := (8058513609110857 / 10000000000000000 : ℚ)
  supportSlope := (-3321751643689197 / 500000000000000 : ℚ)
  oldCenter := (8058513609110857 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_726
  oldLo := (80549999999999999 / 100000000000000000 : ℚ)
  oldHi := (4032122905027933 / 5000000000000000 : ℚ)
  oldPieces := [piece_1855, piece_1856]
}

def cell_7716 : Cell := { cellDefaults with
  domain := ⟨(28775000000000003 / 100000000000000000 : ℚ), (28781250000000003 / 100000000000000000 : ℚ)⟩
  r := (82125443981661 / 100000000000000 : ℚ)
  w := (17698432790927 / 10000000000000 : ℚ)
  center := (28778125000000003 / 100000000000000000 : ℚ)
  supportValue := (8054363254359037 / 10000000000000000 : ℚ)
  supportSlope := (-165949027822343 / 25000000000000 : ℚ)
  oldCenter := (8054363254359037 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_726
  oldLo := (16100000000000001 / 20000000000000000 : ℚ)
  oldHi := (16120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1854, piece_1855]
}

def cell_7717 : Cell := { cellDefaults with
  domain := ⟨(28781250000000003 / 100000000000000000 : ℚ), (28787500000000003 / 100000000000000000 : ℚ)⟩
  r := (82125443981661 / 100000000000000 : ℚ)
  w := (17698432790927 / 10000000000000 : ℚ)
  center := (28784375000000003 / 100000000000000000 : ℚ)
  supportValue := (8050216310960011 / 10000000000000000 : ℚ)
  supportSlope := (-3316211134047009 / 500000000000000 : ℚ)
  oldCenter := (8050216310960011 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_726
  oldLo := (80449999999999999 / 100000000000000000 : ℚ)
  oldHi := (80549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1853, piece_1854]
}

def cell_7718 : Cell := { cellDefaults with
  domain := ⟨(28787500000000003 / 100000000000000000 : ℚ), (28793750000000003 / 100000000000000000 : ℚ)⟩
  r := (82125443981661 / 100000000000000 : ℚ)
  w := (17698432790927 / 10000000000000 : ℚ)
  center := (28790625000000003 / 100000000000000000 : ℚ)
  supportValue := (8046072665384241 / 10000000000000000 : ℚ)
  supportSlope := (-3313443369027169 / 500000000000000 : ℚ)
  oldCenter := (8046072665384241 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_726
  oldLo := (16080000000000001 / 20000000000000000 : ℚ)
  oldHi := (16100000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1852, piece_1853]
}

def cell_7719 : Cell := { cellDefaults with
  domain := ⟨(28793750000000003 / 100000000000000000 : ℚ), (28800000000000003 / 100000000000000000 : ℚ)⟩
  r := (82125443981661 / 100000000000000 : ℚ)
  w := (17698432790927 / 10000000000000 : ℚ)
  center := (28796875000000003 / 100000000000000000 : ℚ)
  supportValue := (1608386495499143 / 2000000000000000 : ℚ)
  supportSlope := (-3310677287148067 / 500000000000000 : ℚ)
  oldCenter := (1608386495499143 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_726
  oldLo := (80349999999999999 / 100000000000000000 : ℚ)
  oldHi := (80449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1851, piece_1852]
}

def cell_7720 : Cell := { cellDefaults with
  domain := ⟨(28800000000000003 / 100000000000000000 : ℚ), (28806250000000003 / 100000000000000000 : ℚ)⟩
  r := (41029591449073 / 50000000000000 : ℚ)
  w := (8843816984969 / 5000000000000 : ℚ)
  center := (28803125000000003 / 100000000000000000 : ℚ)
  supportValue := (161079721274517 / 200000000000000 : ℚ)
  supportSlope := (-1326491530835483 / 200000000000000 : ℚ)
  oldCenter := (161079721274517 / 200000000000000 : ℚ)
  newCoefficients := coefficients_727
  oldLo := (16100000000000001 / 20000000000000000 : ℚ)
  oldHi := (16120000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1854, piece_1855]
}

def cell_7721 : Cell := { cellDefaults with
  domain := ⟨(28806250000000003 / 100000000000000000 : ℚ), (28812500000000003 / 100000000000000000 : ℚ)⟩
  r := (41029591449073 / 50000000000000 : ℚ)
  w := (8843816984969 / 5000000000000 : ℚ)
  center := (28809375000000003 / 100000000000000000 : ℚ)
  supportValue := (2012460652119577 / 2500000000000000 : ℚ)
  supportSlope := (-6626932400987329 / 1000000000000000 : ℚ)
  oldCenter := (2012460652119577 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_727
  oldLo := (80449999999999999 / 100000000000000000 : ℚ)
  oldHi := (80549999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1853, piece_1854]
}

def cell_7722 : Cell := { cellDefaults with
  domain := ⟨(28812500000000003 / 100000000000000000 : ℚ), (28818750000000003 / 100000000000000000 : ℚ)⟩
  r := (41029591449073 / 50000000000000 : ℚ)
  w := (8843816984969 / 5000000000000 : ℚ)
  center := (28815625000000003 / 100000000000000000 : ℚ)
  supportValue := (8045702431190739 / 10000000000000000 : ℚ)
  supportSlope := (-6621410443603537 / 1000000000000000 : ℚ)
  oldCenter := (8045702431190739 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_727
  oldLo := (16080000000000001 / 20000000000000000 : ℚ)
  oldHi := (16100000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1852, piece_1853]
}

def cell_7723 : Cell := { cellDefaults with
  domain := ⟨(28818750000000003 / 100000000000000000 : ℚ), (28825000000000003 / 100000000000000000 : ℚ)⟩
  r := (41029591449073 / 50000000000000 : ℚ)
  w := (8843816984969 / 5000000000000 : ℚ)
  center := (28821875000000003 / 100000000000000000 : ℚ)
  supportValue := (4020782830733133 / 5000000000000000 : ℚ)
  supportSlope := (-661589194380241 / 100000000000000 : ℚ)
  oldCenter := (4020782830733133 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_727
  oldLo := (80349999999999999 / 100000000000000000 : ℚ)
  oldHi := (80449999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1851, piece_1852]
}

def cell_7724 : Cell := { cellDefaults with
  domain := ⟨(28825000000000003 / 100000000000000000 : ℚ), (28831250000000003 / 100000000000000000 : ℚ)⟩
  r := (41029591449073 / 50000000000000 : ℚ)
  w := (8843816984969 / 5000000000000 : ℚ)
  center := (28828125000000003 / 100000000000000000 : ℚ)
  supportValue := (160748646775071 / 200000000000000 : ℚ)
  supportSlope := (-6610521110665957 / 1000000000000000 : ℚ)
  oldCenter := (160748646775071 / 200000000000000 : ℚ)
  newCoefficients := coefficients_727
  oldLo := (80349999999999999 / 100000000000000000 : ℚ)
  oldHi := (16080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1851]
}

def cell_7725 : Cell := { cellDefaults with
  domain := ⟨(28831250000000003 / 100000000000000000 : ℚ), (28837500000000003 / 100000000000000000 : ℚ)⟩
  r := (41029591449073 / 50000000000000 : ℚ)
  w := (8843816984969 / 5000000000000 : ℚ)
  center := (28834375000000003 / 100000000000000000 : ℚ)
  supportValue := (1606660492450809 / 2000000000000000 : ℚ)
  supportSlope := (-6605217155275511 / 1000000000000000 : ℚ)
  oldCenter := (1606660492450809 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_727
  oldLo := (16060000000000001 / 20000000000000000 : ℚ)
  oldHi := (16080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1850, piece_1851]
}

def cell_7726 : Cell := { cellDefaults with
  domain := ⟨(28837500000000003 / 100000000000000000 : ℚ), (28843750000000003 / 100000000000000000 : ℚ)⟩
  r := (41029591449073 / 50000000000000 : ℚ)
  w := (8843816984969 / 5000000000000 : ℚ)
  center := (28840625000000003 / 100000000000000000 : ℚ)
  supportValue := (125455875466479 / 156250000000000 : ℚ)
  supportSlope := (-659971009284277 / 100000000000000 : ℚ)
  oldCenter := (125455875466479 / 156250000000000 : ℚ)
  newCoefficients := coefficients_727
  oldLo := (80249999999999999 / 100000000000000000 : ℚ)
  oldHi := (80349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1849, piece_1850]
}

def cell_7727 : Cell := { cellDefaults with
  domain := ⟨(28843750000000003 / 100000000000000000 : ℚ), (28850000000000003 / 100000000000000000 : ℚ)⟩
  r := (41029591449073 / 50000000000000 : ℚ)
  w := (8843816984969 / 5000000000000 : ℚ)
  center := (28846875000000003 / 100000000000000000 : ℚ)
  supportValue := (4012526512432667 / 5000000000000000 : ℚ)
  supportSlope := (-3297106257916127 / 500000000000000 : ℚ)
  oldCenter := (4012526512432667 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_727
  oldLo := (16040000000000001 / 20000000000000000 : ℚ)
  oldHi := (16060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1848, piece_1849]
}

def cell_7728 : Cell := { cellDefaults with
  domain := ⟨(28850000000000003 / 100000000000000000 : ℚ), (28856250000000003 / 100000000000000000 : ℚ)⟩
  r := (81993061550033 / 100000000000000 : ℚ)
  w := (4419215812587 / 2500000000000 : ℚ)
  center := (28853125000000003 / 100000000000000000 : ℚ)
  supportValue := (401853005884183 / 500000000000000 : ℚ)
  supportSlope := (-1320980801460081 / 200000000000000 : ℚ)
  oldCenter := (401853005884183 / 500000000000000 : ℚ)
  newCoefficients := coefficients_728
  oldLo := (16060000000000001 / 20000000000000000 : ℚ)
  oldHi := (16080000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1850, piece_1851]
}

def cell_7729 : Cell := { cellDefaults with
  domain := ⟨(28856250000000003 / 100000000000000000 : ℚ), (28862500000000003 / 100000000000000000 : ℚ)⟩
  r := (81993061550033 / 100000000000000 : ℚ)
  w := (4419215812587 / 2500000000000 : ℚ)
  center := (28859375000000003 / 100000000000000000 : ℚ)
  supportValue := (8032933654783839 / 10000000000000000 : ℚ)
  supportSlope := (-3299880165117841 / 500000000000000 : ℚ)
  oldCenter := (8032933654783839 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_728
  oldLo := (16060000000000001 / 20000000000000000 : ℚ)
  oldHi := (80349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1850]
}

def cell_7730 : Cell := { cellDefaults with
  domain := ⟨(28862500000000003 / 100000000000000000 : ℚ), (28868750000000003 / 100000000000000000 : ℚ)⟩
  r := (81993061550033 / 100000000000000 : ℚ)
  w := (4419215812587 / 2500000000000 : ℚ)
  center := (28865625000000003 / 100000000000000000 : ℚ)
  supportValue := (200720265619107 / 250000000000000 : ℚ)
  supportSlope := (-13188552680645671 / 2000000000000000 : ℚ)
  oldCenter := (200720265619107 / 250000000000000 : ℚ)
  newCoefficients := coefficients_728
  oldLo := (80249999999999999 / 100000000000000000 : ℚ)
  oldHi := (80349999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1849, piece_1850]
}

def cell_7731 : Cell := { cellDefaults with
  domain := ⟨(28868750000000003 / 100000000000000000 : ℚ), (28875000000000003 / 100000000000000000 : ℚ)⟩
  r := (81993061550033 / 100000000000000 : ℚ)
  w := (4419215812587 / 2500000000000 : ℚ)
  center := (28871875000000003 / 100000000000000000 : ℚ)
  supportValue := (4012345510957949 / 5000000000000000 : ℚ)
  supportSlope := (-658879661611067 / 100000000000000 : ℚ)
  oldCenter := (4012345510957949 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_728
  oldLo := (16040000000000001 / 20000000000000000 : ℚ)
  oldHi := (16060000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1848, piece_1849]
}

def cell_7732 : Cell := { cellDefaults with
  domain := ⟨(28875000000000003 / 100000000000000000 : ℚ), (28881250000000003 / 100000000000000000 : ℚ)⟩
  r := (81993061550033 / 100000000000000 : ℚ)
  w := (4419215812587 / 2500000000000 : ℚ)
  center := (28878125000000003 / 100000000000000000 : ℚ)
  supportValue := (802057470142643 / 1000000000000000 : ℚ)
  supportSlope := (-6583317269928557 / 1000000000000000 : ℚ)
  oldCenter := (802057470142643 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_728
  oldLo := (80149999999999999 / 100000000000000000 : ℚ)
  oldHi := (80249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1847, piece_1848]
}

def cell_7733 : Cell := { cellDefaults with
  domain := ⟨(28881250000000003 / 100000000000000000 : ℚ), (28887500000000003 / 100000000000000000 : ℚ)⟩
  r := (81993061550033 / 100000000000000 : ℚ)
  w := (4419215812587 / 2500000000000 : ℚ)
  center := (28884375000000003 / 100000000000000000 : ℚ)
  supportValue := (8016461723233713 / 10000000000000000 : ℚ)
  supportSlope := (-6577839037845479 / 1000000000000000 : ℚ)
  oldCenter := (8016461723233713 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_728
  oldLo := (16020000000000001 / 20000000000000000 : ℚ)
  oldHi := (16040000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1846, piece_1847]
}

def cell_7734 : Cell := { cellDefaults with
  domain := ⟨(28887500000000003 / 100000000000000000 : ℚ), (28893750000000003 / 100000000000000000 : ℚ)⟩
  r := (81993061550033 / 100000000000000 : ℚ)
  w := (4419215812587 / 2500000000000 : ℚ)
  center := (28890625000000003 / 100000000000000000 : ℚ)
  supportValue := (8012352166877443 / 10000000000000000 : ℚ)
  supportSlope := (-3286240768394677 / 500000000000000 : ℚ)
  oldCenter := (8012352166877443 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_728
  oldLo := (16020000000000001 / 20000000000000000 : ℚ)
  oldHi := (80149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1846]
}

def cell_7735 : Cell := { cellDefaults with
  domain := ⟨(28893750000000003 / 100000000000000000 : ℚ), (28900000000000003 / 100000000000000000 : ℚ)⟩
  r := (81993061550033 / 100000000000000 : ℚ)
  w := (4419215812587 / 2500000000000 : ℚ)
  center := (28896875000000003 / 100000000000000000 : ℚ)
  supportValue := (8008246029919637 / 10000000000000000 : ℚ)
  supportSlope := (-3283632496462019 / 500000000000000 : ℚ)
  oldCenter := (8008246029919637 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_728
  oldLo := (80049999999999999 / 100000000000000000 : ℚ)
  oldHi := (80149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1844, piece_1845, piece_1846]
}

def cell_7736 : Cell := { cellDefaults with
  domain := ⟨(28900000000000003 / 100000000000000000 : ℚ), (9250000000000001 / 32000000000000000 : ℚ)⟩
  r := (81927081049219 / 100000000000000 : ℚ)
  w := (17666120534093 / 10000000000000 : ℚ)
  center := (462450000000000049 / 1600000000000000000 : ℚ)
  supportValue := (8020207091645701 / 10000000000000000 : ℚ)
  supportSlope := (-657788637102983 / 100000000000000 : ℚ)
  oldCenter := (8020207091645701 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_729
  oldLo := (80149999999999999 / 100000000000000000 : ℚ)
  oldHi := (80249999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1847, piece_1848]
}

def cell_7737 : Cell := { cellDefaults with
  domain := ⟨(9250000000000001 / 32000000000000000 : ℚ), (115650000000000013 / 400000000000000000 : ℚ)⟩
  r := (81927081049219 / 100000000000000 : ℚ)
  w := (17666120534093 / 10000000000000 : ℚ)
  center := (462550000000000051 / 1600000000000000000 : ℚ)
  supportValue := (1002012187823411 / 1250000000000000 : ℚ)
  supportSlope := (-6572424305197313 / 1000000000000000 : ℚ)
  oldCenter := (1002012187823411 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_729
  oldLo := (16020000000000001 / 20000000000000000 : ℚ)
  oldHi := (16040000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1846, piece_1847]
}

def cell_7738 : Cell := { cellDefaults with
  domain := ⟨(115650000000000013 / 400000000000000000 : ℚ), (231350000000000027 / 800000000000000000 : ℚ)⟩
  r := (81927081049219 / 100000000000000 : ℚ)
  w := (17666120534093 / 10000000000000 : ℚ)
  center := (462650000000000053 / 1600000000000000000 : ℚ)
  supportValue := (8011991325263473 / 10000000000000000 : ℚ)
  supportSlope := (-1313392676978227 / 200000000000000 : ℚ)
  oldCenter := (8011991325263473 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_729
  oldLo := (8008938547486033 / 10000000000000000 : ℚ)
  oldHi := (80149999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1845, piece_1846]
}

def cell_7739 : Cell := { cellDefaults with
  domain := ⟨(231350000000000027 / 800000000000000000 : ℚ), (57850000000000007 / 200000000000000000 : ℚ)⟩
  r := (81927081049219 / 100000000000000 : ℚ)
  w := (17666120534093 / 10000000000000 : ℚ)
  center := (92550000000000011 / 320000000000000000 : ℚ)
  supportValue := (160157771129827 / 200000000000000 : ℚ)
  supportSlope := (-6561855401041907 / 1000000000000000 : ℚ)
  oldCenter := (160157771129827 / 200000000000000 : ℚ)
  newCoefficients := coefficients_729
  oldLo := (80049999999999999 / 100000000000000000 : ℚ)
  oldHi := (16020000000000001 / 20000000000000000 : ℚ)
  oldPieces := [piece_1844, piece_1845]
}

def cell_7740 : Cell := { cellDefaults with
  domain := ⟨(57850000000000007 / 200000000000000000 : ℚ), (231450000000000029 / 800000000000000000 : ℚ)⟩
  r := (81927081049219 / 100000000000000 : ℚ)
  w := (17666120534093 / 10000000000000 : ℚ)
  center := (462850000000000057 / 1600000000000000000 : ℚ)
  supportValue := (1600757839437847 / 2000000000000000 : ℚ)
  supportSlope := (-1639104777749057 / 250000000000000 : ℚ)
  oldCenter := (1600757839437847 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_729
  oldLo := (20000000000000001 / 25000000000000000 : ℚ)
  oldHi := (8008938547486033 / 10000000000000000 : ℚ)
  oldPieces := [piece_1843, piece_1844]
}

def cell_7741 : Cell := { cellDefaults with
  domain := ⟨(231450000000000029 / 800000000000000000 : ℚ), (23150000000000003 / 80000000000000000 : ℚ)⟩
  r := (81927081049219 / 100000000000000 : ℚ)
  w := (17666120534093 / 10000000000000 : ℚ)
  center := (462950000000000059 / 1600000000000000000 : ℚ)
  supportValue := (7999693270308051 / 10000000000000000 : ℚ)
  supportSlope := (-6550799140707977 / 1000000000000000 : ℚ)
  oldCenter := (7999693270308051 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_729
  oldLo := (79949999999999999 / 100000000000000000 : ℚ)
  oldHi := (80049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1842, piece_1843]
}

def cell_7742 : Cell := { cellDefaults with
  domain := ⟨(23150000000000003 / 80000000000000000 : ℚ), (231550000000000031 / 800000000000000000 : ℚ)⟩
  r := (81927081049219 / 100000000000000 : ℚ)
  w := (17666120534093 / 10000000000000 : ℚ)
  center := (463050000000000061 / 1600000000000000000 : ℚ)
  supportValue := (7995600755625033 / 10000000000000000 : ℚ)
  supportSlope := (-6545238468074513 / 1000000000000000 : ℚ)
  oldCenter := (7995600755625033 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_729
  oldLo := (19975000000000001 / 25000000000000000 : ℚ)
  oldHi := (20000000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1841, piece_1842]
}

def cell_7743 : Cell := { cellDefaults with
  domain := ⟨(231550000000000031 / 800000000000000000 : ℚ), (7237500000000001 / 25000000000000000 : ℚ)⟩
  r := (81927081049219 / 100000000000000 : ℚ)
  w := (17666120534093 / 10000000000000 : ℚ)
  center := (463150000000000063 / 1600000000000000000 : ℚ)
  supportValue := (7991511560042103 / 10000000000000000 : ℚ)
  supportSlope := (-653981025060433 / 100000000000000 : ℚ)
  oldCenter := (7991511560042103 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_729
  oldLo := (79849999999999999 / 100000000000000000 : ℚ)
  oldHi := (79949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1840, piece_1841]
}

def cell_7744 : Cell := { cellDefaults with
  domain := ⟨(7237500000000001 / 25000000000000000 : ℚ), (7239062500000001 / 25000000000000000 : ℚ)⟩
  r := (81861239238309 / 100000000000000 : ℚ)
  w := (17655406805609 / 10000000000000 : ℚ)
  center := (7238281250000001 / 25000000000000000 : ℚ)
  supportValue := (1600685144848913 / 2000000000000000 : ℚ)
  supportSlope := (-6551027131639131 / 1000000000000000 : ℚ)
  oldCenter := (1600685144848913 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_730
  oldLo := (20000000000000001 / 25000000000000000 : ℚ)
  oldHi := (8008938547486033 / 10000000000000000 : ℚ)
  oldPieces := [piece_1843, piece_1844]
}

def cell_7745 : Cell := { cellDefaults with
  domain := ⟨(7239062500000001 / 25000000000000000 : ℚ), (7240625000000001 / 25000000000000000 : ℚ)⟩
  r := (81861239238309 / 100000000000000 : ℚ)
  w := (17655406805609 / 10000000000000 : ℚ)
  center := (7239843750000001 / 25000000000000000 : ℚ)
  supportValue := (1599866635517631 / 2000000000000000 : ℚ)
  supportSlope := (-6545399451464817 / 1000000000000000 : ℚ)
  oldCenter := (1599866635517631 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_730
  oldLo := (79949999999999999 / 100000000000000000 : ℚ)
  oldHi := (80049999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1842, piece_1843]
}

def cell_7746 : Cell := { cellDefaults with
  domain := ⟨(7240625000000001 / 25000000000000000 : ℚ), (7242187500000001 / 25000000000000000 : ℚ)⟩
  r := (81861239238309 / 100000000000000 : ℚ)
  w := (17655406805609 / 10000000000000 : ℚ)
  center := (7241406250000001 / 25000000000000000 : ℚ)
  supportValue := (3997622055417821 / 5000000000000000 : ℚ)
  supportSlope := (-1307975613744361 / 200000000000000 : ℚ)
  oldCenter := (3997622055417821 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_730
  oldLo := (19975000000000001 / 25000000000000000 : ℚ)
  oldHi := (20000000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1841, piece_1842]
}

def cell_7747 : Cell := { cellDefaults with
  domain := ⟨(7242187500000001 / 25000000000000000 : ℚ), (7243750000000001 / 25000000000000000 : ℚ)⟩
  r := (81861239238309 / 100000000000000 : ℚ)
  w := (17655406805609 / 10000000000000 : ℚ)
  center := (7242968750000001 / 25000000000000000 : ℚ)
  supportValue := (1997789565195787 / 2500000000000000 : ℚ)
  supportSlope := (-1633617791490849 / 250000000000000 : ℚ)
  oldCenter := (1997789565195787 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_730
  oldLo := (79849999999999999 / 100000000000000000 : ℚ)
  oldHi := (79949999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1840, piece_1841]
}

def cell_7748 : Cell := { cellDefaults with
  domain := ⟨(7243750000000001 / 25000000000000000 : ℚ), (7245312500000001 / 25000000000000000 : ℚ)⟩
  r := (81861239238309 / 100000000000000 : ℚ)
  w := (17655406805609 / 10000000000000 : ℚ)
  center := (7244531250000001 / 25000000000000000 : ℚ)
  supportValue := (7987075794190523 / 10000000000000000 : ℚ)
  supportSlope := (-816116397760247 / 125000000000000 : ℚ)
  oldCenter := (7987075794190523 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_730
  oldLo := (79849999999999999 / 100000000000000000 : ℚ)
  oldHi := (19975000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1840]
}

def cell_7749 : Cell := { cellDefaults with
  domain := ⟨(7245312500000001 / 25000000000000000 : ℚ), (7246875000000001 / 25000000000000000 : ℚ)⟩
  r := (81861239238309 / 100000000000000 : ℚ)
  w := (17655406805609 / 10000000000000 : ℚ)
  center := (7246093750000001 / 25000000000000000 : ℚ)
  supportValue := (7982996821582191 / 10000000000000000 : ℚ)
  supportSlope := (-1630960699392503 / 250000000000000 : ℚ)
  oldCenter := (7982996821582191 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_730
  oldLo := (19950000000000001 / 25000000000000000 : ℚ)
  oldHi := (19975000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1839, piece_1840]
}

theorem check_7700 : cell_7700.check = true := by
  decide +kernel

theorem check_7701 : cell_7701.check = true := by
  decide +kernel

theorem check_7702 : cell_7702.check = true := by
  decide +kernel

theorem check_7703 : cell_7703.check = true := by
  decide +kernel

theorem check_7704 : cell_7704.check = true := by
  decide +kernel

theorem check_7705 : cell_7705.check = true := by
  decide +kernel

theorem check_7706 : cell_7706.check = true := by
  decide +kernel

theorem check_7707 : cell_7707.check = true := by
  decide +kernel

theorem check_7708 : cell_7708.check = true := by
  decide +kernel

theorem check_7709 : cell_7709.check = true := by
  decide +kernel

theorem check_7710 : cell_7710.check = true := by
  decide +kernel

theorem check_7711 : cell_7711.check = true := by
  decide +kernel

theorem check_7712 : cell_7712.check = true := by
  decide +kernel

theorem check_7713 : cell_7713.check = true := by
  decide +kernel

theorem check_7714 : cell_7714.check = true := by
  decide +kernel

theorem check_7715 : cell_7715.check = true := by
  decide +kernel

theorem check_7716 : cell_7716.check = true := by
  decide +kernel

theorem check_7717 : cell_7717.check = true := by
  decide +kernel

theorem check_7718 : cell_7718.check = true := by
  decide +kernel

theorem check_7719 : cell_7719.check = true := by
  decide +kernel

theorem check_7720 : cell_7720.check = true := by
  decide +kernel

theorem check_7721 : cell_7721.check = true := by
  decide +kernel

theorem check_7722 : cell_7722.check = true := by
  decide +kernel

theorem check_7723 : cell_7723.check = true := by
  decide +kernel

theorem check_7724 : cell_7724.check = true := by
  decide +kernel

theorem check_7725 : cell_7725.check = true := by
  decide +kernel

theorem check_7726 : cell_7726.check = true := by
  decide +kernel

theorem check_7727 : cell_7727.check = true := by
  decide +kernel

theorem check_7728 : cell_7728.check = true := by
  decide +kernel

theorem check_7729 : cell_7729.check = true := by
  decide +kernel

theorem check_7730 : cell_7730.check = true := by
  decide +kernel

theorem check_7731 : cell_7731.check = true := by
  decide +kernel

theorem check_7732 : cell_7732.check = true := by
  decide +kernel

theorem check_7733 : cell_7733.check = true := by
  decide +kernel

theorem check_7734 : cell_7734.check = true := by
  decide +kernel

theorem check_7735 : cell_7735.check = true := by
  decide +kernel

theorem check_7736 : cell_7736.check = true := by
  decide +kernel

theorem check_7737 : cell_7737.check = true := by
  decide +kernel

theorem check_7738 : cell_7738.check = true := by
  decide +kernel

theorem check_7739 : cell_7739.check = true := by
  decide +kernel

theorem check_7740 : cell_7740.check = true := by
  decide +kernel

theorem check_7741 : cell_7741.check = true := by
  decide +kernel

theorem check_7742 : cell_7742.check = true := by
  decide +kernel

theorem check_7743 : cell_7743.check = true := by
  decide +kernel

theorem check_7744 : cell_7744.check = true := by
  decide +kernel

theorem check_7745 : cell_7745.check = true := by
  decide +kernel

theorem check_7746 : cell_7746.check = true := by
  decide +kernel

theorem check_7747 : cell_7747.check = true := by
  decide +kernel

theorem check_7748 : cell_7748.check = true := by
  decide +kernel

theorem check_7749 : cell_7749.check = true := by
  decide +kernel

def cells : List Cell := [cell_7700, cell_7701, cell_7702, cell_7703, cell_7704, cell_7705, cell_7706, cell_7707, cell_7708, cell_7709, cell_7710, cell_7711, cell_7712, cell_7713, cell_7714, cell_7715, cell_7716, cell_7717, cell_7718, cell_7719, cell_7720, cell_7721, cell_7722, cell_7723, cell_7724, cell_7725, cell_7726, cell_7727, cell_7728, cell_7729, cell_7730, cell_7731, cell_7732, cell_7733, cell_7734, cell_7735, cell_7736, cell_7737, cell_7738, cell_7739, cell_7740, cell_7741, cell_7742, cell_7743, cell_7744, cell_7745, cell_7746, cell_7747, cell_7748, cell_7749]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7700, check_7701, check_7702, check_7703, check_7704, check_7705, check_7706, check_7707, check_7708, check_7709, check_7710, check_7711, check_7712, check_7713, check_7714, check_7715, check_7716, check_7717, check_7718, check_7719, check_7720, check_7721, check_7722, check_7723, check_7724, check_7725, check_7726, check_7727, check_7728, check_7729, check_7730, check_7731, check_7732, check_7733, check_7734, check_7735, check_7736, check_7737, check_7738, check_7739, check_7740, check_7741, check_7742, check_7743, check_7744, check_7745, check_7746, check_7747, check_7748, check_7749, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0154

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0154
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0154
open AnalyticBounds.ExpressionCertificate

theorem linked_7700 : Linked cell_7700 pieces := by
  link_source cell_7700 with piece_724 using piece_724_mem, ⟨piece_1862_mem, piece_1863_mem⟩

theorem linked_7701 : Linked cell_7701 pieces := by
  link_source cell_7701 with piece_724 using piece_724_mem, ⟨piece_1861_mem, piece_1862_mem⟩

theorem linked_7702 : Linked cell_7702 pieces := by
  link_source cell_7702 with piece_724 using piece_724_mem, ⟨piece_1860_mem, piece_1861_mem⟩

theorem linked_7703 : Linked cell_7703 pieces := by
  link_source cell_7703 with piece_724 using piece_724_mem, ⟨piece_1859_mem, piece_1860_mem⟩

theorem linked_7704 : Linked cell_7704 pieces := by
  link_source cell_7704 with piece_725 using piece_725_mem, ⟨piece_1862_mem, piece_1863_mem⟩

theorem linked_7705 : Linked cell_7705 pieces := by
  link_source cell_7705 with piece_725 using piece_725_mem, ⟨piece_1861_mem, piece_1862_mem⟩

theorem linked_7706 : Linked cell_7706 pieces := by
  link_source cell_7706 with piece_725 using piece_725_mem, ⟨piece_1860_mem, piece_1861_mem⟩

theorem linked_7707 : Linked cell_7707 pieces := by
  link_source cell_7707 with piece_725 using piece_725_mem, ⟨piece_1859_mem, piece_1860_mem⟩

theorem linked_7708 : Linked cell_7708 pieces := by
  link_source cell_7708 with piece_725 using piece_725_mem, ⟨piece_1858_mem, piece_1859_mem⟩

theorem linked_7709 : Linked cell_7709 pieces := by
  link_source cell_7709 with piece_725 using piece_725_mem, piece_1858_mem

theorem linked_7710 : Linked cell_7710 pieces := by
  link_source cell_7710 with piece_725 using piece_725_mem, ⟨piece_1856_mem, ⟨piece_1857_mem, piece_1858_mem⟩⟩

theorem linked_7711 : Linked cell_7711 pieces := by
  link_source cell_7711 with piece_725 using piece_725_mem, ⟨piece_1855_mem, piece_1856_mem⟩

theorem linked_7712 : Linked cell_7712 pieces := by
  link_source cell_7712 with piece_726 using piece_726_mem, ⟨piece_1858_mem, piece_1859_mem⟩

theorem linked_7713 : Linked cell_7713 pieces := by
  link_source cell_7713 with piece_726 using piece_726_mem, ⟨piece_1857_mem, piece_1858_mem⟩

theorem linked_7714 : Linked cell_7714 pieces := by
  link_source cell_7714 with piece_726 using piece_726_mem, ⟨piece_1856_mem, piece_1857_mem⟩

theorem linked_7715 : Linked cell_7715 pieces := by
  link_source cell_7715 with piece_726 using piece_726_mem, ⟨piece_1855_mem, piece_1856_mem⟩

theorem linked_7716 : Linked cell_7716 pieces := by
  link_source cell_7716 with piece_726 using piece_726_mem, ⟨piece_1854_mem, piece_1855_mem⟩

theorem linked_7717 : Linked cell_7717 pieces := by
  link_source cell_7717 with piece_726 using piece_726_mem, ⟨piece_1853_mem, piece_1854_mem⟩

theorem linked_7718 : Linked cell_7718 pieces := by
  link_source cell_7718 with piece_726 using piece_726_mem, ⟨piece_1852_mem, piece_1853_mem⟩

theorem linked_7719 : Linked cell_7719 pieces := by
  link_source cell_7719 with piece_726 using piece_726_mem, ⟨piece_1851_mem, piece_1852_mem⟩

theorem linked_7720 : Linked cell_7720 pieces := by
  link_source cell_7720 with piece_727 using piece_727_mem, ⟨piece_1854_mem, piece_1855_mem⟩

theorem linked_7721 : Linked cell_7721 pieces := by
  link_source cell_7721 with piece_727 using piece_727_mem, ⟨piece_1853_mem, piece_1854_mem⟩

theorem linked_7722 : Linked cell_7722 pieces := by
  link_source cell_7722 with piece_727 using piece_727_mem, ⟨piece_1852_mem, piece_1853_mem⟩

theorem linked_7723 : Linked cell_7723 pieces := by
  link_source cell_7723 with piece_727 using piece_727_mem, ⟨piece_1851_mem, piece_1852_mem⟩

theorem linked_7724 : Linked cell_7724 pieces := by
  link_source cell_7724 with piece_727 using piece_727_mem, piece_1851_mem

theorem linked_7725 : Linked cell_7725 pieces := by
  link_source cell_7725 with piece_727 using piece_727_mem, ⟨piece_1850_mem, piece_1851_mem⟩

theorem linked_7726 : Linked cell_7726 pieces := by
  link_source cell_7726 with piece_727 using piece_727_mem, ⟨piece_1849_mem, piece_1850_mem⟩

theorem linked_7727 : Linked cell_7727 pieces := by
  link_source cell_7727 with piece_727 using piece_727_mem, ⟨piece_1848_mem, piece_1849_mem⟩

theorem linked_7728 : Linked cell_7728 pieces := by
  link_source cell_7728 with piece_728 using piece_728_mem, ⟨piece_1850_mem, piece_1851_mem⟩

theorem linked_7729 : Linked cell_7729 pieces := by
  link_source cell_7729 with piece_728 using piece_728_mem, piece_1850_mem

theorem linked_7730 : Linked cell_7730 pieces := by
  link_source cell_7730 with piece_728 using piece_728_mem, ⟨piece_1849_mem, piece_1850_mem⟩

theorem linked_7731 : Linked cell_7731 pieces := by
  link_source cell_7731 with piece_728 using piece_728_mem, ⟨piece_1848_mem, piece_1849_mem⟩

theorem linked_7732 : Linked cell_7732 pieces := by
  link_source cell_7732 with piece_728 using piece_728_mem, ⟨piece_1847_mem, piece_1848_mem⟩

theorem linked_7733 : Linked cell_7733 pieces := by
  link_source cell_7733 with piece_728 using piece_728_mem, ⟨piece_1846_mem, piece_1847_mem⟩

theorem linked_7734 : Linked cell_7734 pieces := by
  link_source cell_7734 with piece_728 using piece_728_mem, piece_1846_mem

theorem linked_7735 : Linked cell_7735 pieces := by
  link_source cell_7735 with piece_728 using piece_728_mem, ⟨piece_1844_mem, ⟨piece_1845_mem, piece_1846_mem⟩⟩

theorem linked_7736 : Linked cell_7736 pieces := by
  link_source cell_7736 with piece_729 using piece_729_mem, ⟨piece_1847_mem, piece_1848_mem⟩

theorem linked_7737 : Linked cell_7737 pieces := by
  link_source cell_7737 with piece_729 using piece_729_mem, ⟨piece_1846_mem, piece_1847_mem⟩

theorem linked_7738 : Linked cell_7738 pieces := by
  link_source cell_7738 with piece_729 using piece_729_mem, ⟨piece_1845_mem, piece_1846_mem⟩

theorem linked_7739 : Linked cell_7739 pieces := by
  link_source cell_7739 with piece_729 using piece_729_mem, ⟨piece_1844_mem, piece_1845_mem⟩

theorem linked_7740 : Linked cell_7740 pieces := by
  link_source cell_7740 with piece_729 using piece_729_mem, ⟨piece_1843_mem, piece_1844_mem⟩

theorem linked_7741 : Linked cell_7741 pieces := by
  link_source cell_7741 with piece_729 using piece_729_mem, ⟨piece_1842_mem, piece_1843_mem⟩

theorem linked_7742 : Linked cell_7742 pieces := by
  link_source cell_7742 with piece_729 using piece_729_mem, ⟨piece_1841_mem, piece_1842_mem⟩

theorem linked_7743 : Linked cell_7743 pieces := by
  link_source cell_7743 with piece_729 using piece_729_mem, ⟨piece_1840_mem, piece_1841_mem⟩

theorem linked_7744 : Linked cell_7744 pieces := by
  link_source cell_7744 with piece_730 using piece_730_mem, ⟨piece_1843_mem, piece_1844_mem⟩

theorem linked_7745 : Linked cell_7745 pieces := by
  link_source cell_7745 with piece_730 using piece_730_mem, ⟨piece_1842_mem, piece_1843_mem⟩

theorem linked_7746 : Linked cell_7746 pieces := by
  link_source cell_7746 with piece_730 using piece_730_mem, ⟨piece_1841_mem, piece_1842_mem⟩

theorem linked_7747 : Linked cell_7747 pieces := by
  link_source cell_7747 with piece_730 using piece_730_mem, ⟨piece_1840_mem, piece_1841_mem⟩

theorem linked_7748 : Linked cell_7748 pieces := by
  link_source cell_7748 with piece_730 using piece_730_mem, piece_1840_mem

theorem linked_7749 : Linked cell_7749 pieces := by
  link_source cell_7749 with piece_730 using piece_730_mem, ⟨piece_1839_mem, piece_1840_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0154.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0154.cells,List.forall_mem_cons]
  exact ⟨linked_7700, linked_7701, linked_7702, linked_7703, linked_7704, linked_7705, linked_7706, linked_7707, linked_7708, linked_7709, linked_7710, linked_7711, linked_7712, linked_7713, linked_7714, linked_7715, linked_7716, linked_7717, linked_7718, linked_7719, linked_7720, linked_7721, linked_7722, linked_7723, linked_7724, linked_7725, linked_7726, linked_7727, linked_7728, linked_7729, linked_7730, linked_7731, linked_7732, linked_7733, linked_7734, linked_7735, linked_7736, linked_7737, linked_7738, linked_7739, linked_7740, linked_7741, linked_7742, linked_7743, linked_7744, linked_7745, linked_7746, linked_7747, linked_7748, linked_7749, by simp⟩

theorem covered : covers (28675000000000003 / 100000000000000000 : ℚ) (7246875000000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0154.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0154
end

section
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0155
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(7246875000000001 / 25000000000000000 : ℚ), (7248437500000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (81534047553007 / 100000000000000 : ℚ)
  w := (4400540883617 / 2500000000000 : ℚ)
  center := (7247656250000001 / 25000000000000000 : ℚ)
  supportValue := (7978921315766179 / 10000000000000000 : ℚ)
  supportSlope := (-1629590957231919 / 250000000000000 : ℚ)
  oldCenter := (7978921315766179 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_731
  oldLo := (39674999999999999 / 50000000000000000 : ℚ)
  oldHi := (19850000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1838, piece_1839]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_7750 : Cell := { cellDefaults with
  r := (81861239238309 / 100000000000000 : ℚ)
  w := (17655406805609 / 10000000000000 : ℚ)
  newCoefficients := coefficients_730
  oldLo := (79749999999999999 / 100000000000000000 : ℚ)
  oldHi := (79849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1838, piece_1839]
}

def cell_7751 : Cell := { cellDefaults with
  domain := ⟨(7248437500000001 / 25000000000000000 : ℚ), (7250000000000001 / 25000000000000000 : ℚ)⟩
  r := (81861239238309 / 100000000000000 : ℚ)
  w := (17655406805609 / 10000000000000 : ℚ)
  center := (7249218750000001 / 25000000000000000 : ℚ)
  supportValue := (1993712208000423 / 2500000000000000 : ℚ)
  supportSlope := (-3256790707386159 / 500000000000000 : ℚ)
  oldCenter := (1993712208000423 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_730
  oldLo := (19925000000000001 / 25000000000000000 : ℚ)
  oldHi := (19950000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1837, piece_1838]
}

def cell_7752 : Cell := { cellDefaults with
  domain := ⟨(7250000000000001 / 25000000000000000 : ℚ), (7251562500000001 / 25000000000000000 : ℚ)⟩
  r := (40897768252077 / 50000000000000 : ℚ)
  w := (8822360157411 / 5000000000000 : ℚ)
  center := (7250781250000001 / 25000000000000000 : ℚ)
  supportValue := (319468689534183 / 400000000000000 : ℚ)
  supportSlope := (-815444178121183 / 125000000000000 : ℚ)
  oldCenter := (319468689534183 / 400000000000000 : ℚ)
  oldLo := (19950000000000001 / 25000000000000000 : ℚ)
  oldHi := (19975000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1839, piece_1840]
}

def cell_7753 : Cell := { cellDefaults with
  domain := ⟨(7251562500000001 / 25000000000000000 : ℚ), (7253125000000001 / 25000000000000000 : ℚ)⟩
  r := (40897768252077 / 50000000000000 : ℚ)
  w := (8822360157411 / 5000000000000 : ℚ)
  center := (7252343750000001 / 25000000000000000 : ℚ)
  supportValue := (1596528321409677 / 2000000000000000 : ℚ)
  supportSlope := (-6518362760331797 / 1000000000000000 : ℚ)
  oldCenter := (1596528321409677 / 2000000000000000 : ℚ)
  oldLo := (19950000000000001 / 25000000000000000 : ℚ)
  oldHi := (79849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1839]
}

def cell_7754 : Cell := { cellDefaults with
  domain := ⟨(7253125000000001 / 25000000000000000 : ℚ), (7254687500000001 / 25000000000000000 : ℚ)⟩
  r := (40897768252077 / 50000000000000 : ℚ)
  w := (8822360157411 / 5000000000000 : ℚ)
  center := (7253906250000001 / 25000000000000000 : ℚ)
  supportValue := (7978569440780607 / 10000000000000000 : ℚ)
  supportSlope := (-6513094820846277 / 1000000000000000 : ℚ)
  oldCenter := (7978569440780607 / 10000000000000000 : ℚ)
  oldLo := (79749999999999999 / 100000000000000000 : ℚ)
  oldHi := (79849999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1838, piece_1839]
}

def cell_7755 : Cell := { cellDefaults with
  domain := ⟨(7254687500000001 / 25000000000000000 : ℚ), (7256250000000001 / 25000000000000000 : ℚ)⟩
  r := (40897768252077 / 50000000000000 : ℚ)
  w := (8822360157411 / 5000000000000 : ℚ)
  center := (7255468750000001 / 25000000000000000 : ℚ)
  supportValue := (7974500265925273 / 10000000000000000 : ℚ)
  supportSlope := (-6508298729862361 / 1000000000000000 : ℚ)
  oldCenter := (7974500265925273 / 10000000000000000 : ℚ)
  oldLo := (19925000000000001 / 25000000000000000 : ℚ)
  oldHi := (19950000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1837, piece_1838]
}

def cell_7756 : Cell := { cellDefaults with
  domain := ⟨(7256250000000001 / 25000000000000000 : ℚ), (7257812500000001 / 25000000000000000 : ℚ)⟩
  r := (40897768252077 / 50000000000000 : ℚ)
  w := (8822360157411 / 5000000000000 : ℚ)
  center := (7257031250000001 / 25000000000000000 : ℚ)
  supportValue := (1992608520251093 / 2500000000000000 : ℚ)
  supportSlope := (-6503477535058977 / 1000000000000000 : ℚ)
  oldCenter := (1992608520251093 / 2500000000000000 : ℚ)
  oldLo := (79649999999999999 / 100000000000000000 : ℚ)
  oldHi := (79749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1836, piece_1837]
}

def cell_7757 : Cell := { cellDefaults with
  domain := ⟨(7257812500000001 / 25000000000000000 : ℚ), (7259375000000001 / 25000000000000000 : ℚ)⟩
  r := (40897768252077 / 50000000000000 : ℚ)
  w := (8822360157411 / 5000000000000 : ℚ)
  center := (7258593750000001 / 25000000000000000 : ℚ)
  supportValue := (159327417522619 / 200000000000000 : ℚ)
  supportSlope := (-406166923655471 / 62500000000000 : ℚ)
  oldCenter := (159327417522619 / 200000000000000 : ℚ)
  oldLo := (19900000000000001 / 25000000000000000 : ℚ)
  oldHi := (19925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1835, piece_1836]
}

def cell_7758 : Cell := { cellDefaults with
  domain := ⟨(7259375000000001 / 25000000000000000 : ℚ), (7260937500000001 / 25000000000000000 : ℚ)⟩
  r := (40897768252077 / 50000000000000 : ℚ)
  w := (8822360157411 / 5000000000000 : ℚ)
  center := (7260156250000001 / 25000000000000000 : ℚ)
  supportValue := (1592462135047577 / 2000000000000000 : ℚ)
  supportSlope := (-3246953347611381 / 500000000000000 : ℚ)
  oldCenter := (1592462135047577 / 2000000000000000 : ℚ)
  oldLo := (19900000000000001 / 25000000000000000 : ℚ)
  oldHi := (79649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1835]
}

def cell_7759 : Cell := { cellDefaults with
  domain := ⟨(7260937500000001 / 25000000000000000 : ℚ), (7262500000000001 / 25000000000000000 : ℚ)⟩
  r := (40897768252077 / 50000000000000 : ℚ)
  w := (8822360157411 / 5000000000000 : ℚ)
  center := (7261718750000001 / 25000000000000000 : ℚ)
  supportValue := (3979126733191953 / 5000000000000000 : ℚ)
  supportSlope := (-129783673775421 / 20000000000000 : ℚ)
  oldCenter := (3979126733191953 / 5000000000000000 : ℚ)
  oldLo := (39774999999999999 / 50000000000000000 : ℚ)
  oldHi := (79649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1834, piece_1835]
}

def cell_7760 : Cell := { cellDefaults with
  domain := ⟨(7262500000000001 / 25000000000000000 : ℚ), (7264062500000001 / 25000000000000000 : ℚ)⟩
  r := (81729967567097 / 100000000000000 : ℚ)
  w := (8817026885033 / 5000000000000 : ℚ)
  center := (7263281250000001 / 25000000000000000 : ℚ)
  supportValue := (3985042387128341 / 5000000000000000 : ℚ)
  supportSlope := (-6498190543712923 / 1000000000000000 : ℚ)
  oldCenter := (3985042387128341 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_732
  oldLo := (79649999999999999 / 100000000000000000 : ℚ)
  oldHi := (79749999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1836, piece_1837]
}

def cell_7761 : Cell := { cellDefaults with
  domain := ⟨(7264062500000001 / 25000000000000000 : ℚ), (7265625000000001 / 25000000000000000 : ℚ)⟩
  r := (81729967567097 / 100000000000000 : ℚ)
  w := (8817026885033 / 5000000000000 : ℚ)
  center := (7264843750000001 / 25000000000000000 : ℚ)
  supportValue := (1593204973607989 / 2000000000000000 : ℚ)
  supportSlope := (-1298679571191741 / 200000000000000 : ℚ)
  oldCenter := (1593204973607989 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_732
  oldLo := (19900000000000001 / 25000000000000000 : ℚ)
  oldHi := (19925000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1835, piece_1836]
}

def cell_7762 : Cell := { cellDefaults with
  domain := ⟨(7265625000000001 / 25000000000000000 : ℚ), (7267187500000001 / 25000000000000000 : ℚ)⟩
  r := (81729967567097 / 100000000000000 : ℚ)
  w := (8817026885033 / 5000000000000 : ℚ)
  center := (7266406250000001 / 25000000000000000 : ℚ)
  supportValue := (1990491989259541 / 2500000000000000 : ℚ)
  supportSlope := (-1622156079427839 / 250000000000000 : ℚ)
  oldCenter := (1990491989259541 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_732
  oldLo := (39774999999999999 / 50000000000000000 : ℚ)
  oldHi := (79649999999999999 / 100000000000000000 : ℚ)
  oldPieces := [piece_1834, piece_1835]
}

def cell_7763 : Cell := { cellDefaults with
  domain := ⟨(7267187500000001 / 25000000000000000 : ℚ), (7268750000000001 / 25000000000000000 : ℚ)⟩
  r := (81729967567097 / 100000000000000 : ℚ)
  w := (8817026885033 / 5000000000000 : ℚ)
  center := (7267968750000001 / 25000000000000000 : ℚ)
  supportValue := (1989478507330129 / 2500000000000000 : ℚ)
  supportSlope := (-648393710057249 / 100000000000000 : ℚ)
  oldCenter := (1989478507330129 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_732
  oldLo := (39774999999999999 / 50000000000000000 : ℚ)
  oldHi := (19900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1834]
}

def cell_7764 : Cell := { cellDefaults with
  domain := ⟨(7268750000000001 / 25000000000000000 : ℚ), (7270312500000001 / 25000000000000000 : ℚ)⟩
  r := (81729967567097 / 100000000000000 : ℚ)
  w := (8817026885033 / 5000000000000 : ℚ)
  center := (7269531250000001 / 25000000000000000 : ℚ)
  supportValue := (7953863072979399 / 10000000000000000 : ℚ)
  supportSlope := (-1295878012583529 / 200000000000000 : ℚ)
  oldCenter := (7953863072979399 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_732
  oldLo := (19875000000000001 / 25000000000000000 : ℚ)
  oldHi := (19900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1832, piece_1833, piece_1834]
}

def cell_7765 : Cell := { cellDefaults with
  domain := ⟨(7270312500000001 / 25000000000000000 : ℚ), (7271875000000001 / 25000000000000000 : ℚ)⟩
  r := (81729967567097 / 100000000000000 : ℚ)
  w := (8817026885033 / 5000000000000 : ℚ)
  center := (7271093750000001 / 25000000000000000 : ℚ)
  supportValue := (62107928231863 / 78125000000000 : ℚ)
  supportSlope := (-12949767034122317 / 2000000000000000 : ℚ)
  oldCenter := (62107928231863 / 78125000000000 : ℚ)
  newCoefficients := coefficients_732
  oldLo := (39724999999999999 / 50000000000000000 : ℚ)
  oldHi := (39768156424581 / 50000000000000 : ℚ)
  oldPieces := [piece_1831, piece_1832]
}

def cell_7766 : Cell := { cellDefaults with
  domain := ⟨(7271875000000001 / 25000000000000000 : ℚ), (7273437500000001 / 25000000000000000 : ℚ)⟩
  r := (81729967567097 / 100000000000000 : ℚ)
  w := (8817026885033 / 5000000000000 : ℚ)
  center := (7272656250000001 / 25000000000000000 : ℚ)
  supportValue := (7945769477569803 / 10000000000000000 : ℚ)
  supportSlope := (-3235068070781111 / 500000000000000 : ℚ)
  oldCenter := (7945769477569803 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_732
  oldLo := (19850000000000001 / 25000000000000000 : ℚ)
  oldHi := (19875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1830, piece_1831]
}

def cell_7767 : Cell := { cellDefaults with
  domain := ⟨(7273437500000001 / 25000000000000000 : ℚ), (7275000000000001 / 25000000000000000 : ℚ)⟩
  r := (81729967567097 / 100000000000000 : ℚ)
  w := (8817026885033 / 5000000000000 : ℚ)
  center := (7274218750000001 / 25000000000000000 : ℚ)
  supportValue := (7941727100177479 / 10000000000000000 : ℚ)
  supportSlope := (-2586164453236961 / 400000000000000 : ℚ)
  oldCenter := (7941727100177479 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_732
  oldHi := (39724999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1829, piece_1830]
}

def cell_7768 : Cell := { cellDefaults with
  domain := ⟨(7275000000000001 / 25000000000000000 : ℚ), (7276562500000001 / 25000000000000000 : ℚ)⟩
  r := (81664528417561 / 100000000000000 : ℚ)
  w := (17623405821333 / 10000000000000 : ℚ)
  center := (7275781250000001 / 25000000000000000 : ℚ)
  supportValue := (497095253835107 / 625000000000000 : ℚ)
  supportSlope := (-6474181406073143 / 1000000000000000 : ℚ)
  oldCenter := (497095253835107 / 625000000000000 : ℚ)
  newCoefficients := coefficients_733
  oldLo := (19875000000000001 / 25000000000000000 : ℚ)
  oldHi := (19900000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1832, piece_1833, piece_1834]
}

def cell_7769 : Cell := { cellDefaults with
  domain := ⟨(7276562500000001 / 25000000000000000 : ℚ), (7278125000000001 / 25000000000000000 : ℚ)⟩
  r := (81664528417561 / 100000000000000 : ℚ)
  w := (17623405821333 / 10000000000000 : ℚ)
  center := (7277343750000001 / 25000000000000000 : ℚ)
  supportValue := (1987369765845343 / 2500000000000000 : ℚ)
  supportSlope := (-1617412266430307 / 250000000000000 : ℚ)
  oldCenter := (1987369765845343 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_733
  oldLo := (39724999999999999 / 50000000000000000 : ℚ)
  oldHi := (39768156424581 / 50000000000000 : ℚ)
  oldPieces := [piece_1831, piece_1832]
}

def cell_7770 : Cell := { cellDefaults with
  domain := ⟨(7278125000000001 / 25000000000000000 : ℚ), (7279687500000001 / 25000000000000000 : ℚ)⟩
  r := (81664528417561 / 100000000000000 : ℚ)
  w := (17623405821333 / 10000000000000 : ℚ)
  center := (7278906250000001 / 25000000000000000 : ℚ)
  supportValue := (3972718503881923 / 5000000000000000 : ℚ)
  supportSlope := (-646491586535447 / 100000000000000 : ℚ)
  oldCenter := (3972718503881923 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_733
  oldLo := (19850000000000001 / 25000000000000000 : ℚ)
  oldHi := (19875000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1830, piece_1831]
}

def cell_7771 : Cell := { cellDefaults with
  domain := ⟨(7279687500000001 / 25000000000000000 : ℚ), (7281250000000001 / 25000000000000000 : ℚ)⟩
  r := (81664528417561 / 100000000000000 : ℚ)
  w := (17623405821333 / 10000000000000 : ℚ)
  center := (7280468750000001 / 25000000000000000 : ℚ)
  supportValue := (7941397887405373 / 10000000000000000 : ℚ)
  supportSlope := (-6460207890086167 / 1000000000000000 : ℚ)
  oldCenter := (7941397887405373 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_733
  oldHi := (39724999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1829, piece_1830]
}

def cell_7772 : Cell := { cellDefaults with
  domain := ⟨(7281250000000001 / 25000000000000000 : ℚ), (7282812500000001 / 25000000000000000 : ℚ)⟩
  r := (81664528417561 / 100000000000000 : ℚ)
  w := (17623405821333 / 10000000000000 : ℚ)
  center := (7282031250000001 / 25000000000000000 : ℚ)
  supportValue := (1587472341852699 / 2000000000000000 : ℚ)
  supportSlope := (-6455491909733269 / 1000000000000000 : ℚ)
  oldCenter := (1587472341852699 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_733
  oldPieces := [piece_1829]
}

def cell_7773 : Cell := { cellDefaults with
  domain := ⟨(7282812500000001 / 25000000000000000 : ℚ), (7284375000000001 / 25000000000000000 : ℚ)⟩
  r := (81664528417561 / 100000000000000 : ℚ)
  w := (17623405821333 / 10000000000000 : ℚ)
  center := (7283593750000001 / 25000000000000000 : ℚ)
  supportValue := (247916515019009 / 312500000000000 : ℚ)
  supportSlope := (-3225393158455603 / 500000000000000 : ℚ)
  oldCenter := (247916515019009 / 312500000000000 : ℚ)
  newCoefficients := coefficients_733
  oldLo := (19825000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1828, piece_1829]
}

def cell_7774 : Cell := { cellDefaults with
  domain := ⟨(7284375000000001 / 25000000000000000 : ℚ), (7285937500000001 / 25000000000000000 : ℚ)⟩
  r := (81664528417561 / 100000000000000 : ℚ)
  w := (17623405821333 / 10000000000000 : ℚ)
  center := (7285156250000001 / 25000000000000000 : ℚ)
  supportValue := (3964649151210169 / 5000000000000000 : ℚ)
  supportSlope := (-6445920451142229 / 1000000000000000 : ℚ)
  oldCenter := (3964649151210169 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_733
  oldLo := (39624999999999999 / 50000000000000000 : ℚ)
  oldHi := (39674999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1827, piece_1828]
}

def cell_7775 : Cell := { cellDefaults with
  domain := ⟨(7285937500000001 / 25000000000000000 : ℚ), (7287500000000001 / 25000000000000000 : ℚ)⟩
  r := (81664528417561 / 100000000000000 : ℚ)
  w := (17623405821333 / 10000000000000 : ℚ)
  center := (7286718750000001 / 25000000000000000 : ℚ)
  supportValue := (1585054220957927 / 2000000000000000 : ℚ)
  supportSlope := (-1288227076978643 / 200000000000000 : ℚ)
  oldCenter := (1585054220957927 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_733
  oldLo := (19800000000000001 / 25000000000000000 : ℚ)
  oldHi := (19825000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1826, piece_1827]
}

def cell_7776 : Cell := { cellDefaults with
  domain := ⟨(7287500000000001 / 25000000000000000 : ℚ), (7289062500000001 / 25000000000000000 : ℚ)⟩
  r := (81599222891097 / 100000000000000 : ℚ)
  w := (550399220839 / 312500000000 : ℚ)
  center := (7288281250000001 / 25000000000000000 : ℚ)
  supportValue := (3968516460105281 / 5000000000000000 : ℚ)
  supportSlope := (-12900512381222029 / 2000000000000000 : ℚ)
  oldCenter := (3968516460105281 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_734
  oldPieces := [piece_1829]
}

def cell_7777 : Cell := { cellDefaults with
  domain := ⟨(7289062500000001 / 25000000000000000 : ℚ), (7290625000000001 / 25000000000000000 : ℚ)⟩
  r := (81599222891097 / 100000000000000 : ℚ)
  w := (550399220839 / 312500000000 : ℚ)
  center := (7289843750000001 / 25000000000000000 : ℚ)
  supportValue := (1586600589070621 / 2000000000000000 : ℚ)
  supportSlope := (-1611393821879581 / 250000000000000 : ℚ)
  oldCenter := (1586600589070621 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_734
  oldLo := (19825000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1828, piece_1829]
}

def cell_7778 : Cell := { cellDefaults with
  domain := ⟨(7290625000000001 / 25000000000000000 : ℚ), (7292187500000001 / 25000000000000000 : ℚ)⟩
  r := (81599222891097 / 100000000000000 : ℚ)
  w := (550399220839 / 312500000000 : ℚ)
  center := (7291406250000001 / 25000000000000000 : ℚ)
  supportValue := (19822440037909 / 25000000000000 : ℚ)
  supportSlope := (-51525893348213 / 8000000000000 : ℚ)
  oldCenter := (19822440037909 / 25000000000000 : ℚ)
  newCoefficients := coefficients_734
  oldLo := (39624999999999999 / 50000000000000000 : ℚ)
  oldHi := (39674999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1827, piece_1828]
}

def cell_7779 : Cell := { cellDefaults with
  domain := ⟨(7292187500000001 / 25000000000000000 : ℚ), (7293750000000001 / 25000000000000000 : ℚ)⟩
  r := (81599222891097 / 100000000000000 : ℚ)
  w := (550399220839 / 312500000000 : ℚ)
  center := (7292968750000001 / 25000000000000000 : ℚ)
  supportValue := (1981238017838751 / 2500000000000000 : ℚ)
  supportSlope := (-6435964836889241 / 1000000000000000 : ℚ)
  oldCenter := (1981238017838751 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_734
  oldLo := (19800000000000001 / 25000000000000000 : ℚ)
  oldHi := (19825000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1826, piece_1827]
}

def cell_7780 : Cell := { cellDefaults with
  domain := ⟨(7293750000000001 / 25000000000000000 : ℚ), (7295312500000001 / 25000000000000000 : ℚ)⟩
  r := (81599222891097 / 100000000000000 : ℚ)
  w := (550399220839 / 312500000000 : ℚ)
  center := (7294531250000001 / 25000000000000000 : ℚ)
  supportValue := (7920931052844137 / 10000000000000000 : ℚ)
  supportSlope := (-643119104160661 / 100000000000000 : ℚ)
  oldCenter := (7920931052844137 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_734
  oldLo := (39574999999999999 / 50000000000000000 : ℚ)
  oldHi := (39624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1825, piece_1826]
}

def cell_7781 : Cell := { cellDefaults with
  domain := ⟨(7295312500000001 / 25000000000000000 : ℚ), (7296875000000001 / 25000000000000000 : ℚ)⟩
  r := (81599222891097 / 100000000000000 : ℚ)
  w := (550399220839 / 312500000000 : ℚ)
  center := (7296093750000001 / 25000000000000000 : ℚ)
  supportValue := (30925441460387 / 39062500000000 : ℚ)
  supportSlope := (-1606604576482873 / 250000000000000 : ℚ)
  oldCenter := (30925441460387 / 39062500000000 : ℚ)
  newCoefficients := coefficients_734
  oldLo := (19775000000000001 / 25000000000000000 : ℚ)
  oldHi := (19800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1824, piece_1825]
}

def cell_7782 : Cell := { cellDefaults with
  domain := ⟨(7296875000000001 / 25000000000000000 : ℚ), (7298437500000001 / 25000000000000000 : ℚ)⟩
  r := (81599222891097 / 100000000000000 : ℚ)
  w := (550399220839 / 312500000000 : ℚ)
  center := (7297656250000001 / 25000000000000000 : ℚ)
  supportValue := (7912897956801551 / 10000000000000000 : ℚ)
  supportSlope := (-6421740918650443 / 1000000000000000 : ℚ)
  oldCenter := (7912897956801551 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_734
  oldLo := (19775000000000001 / 25000000000000000 : ℚ)
  oldHi := (39574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1824]
}

def cell_7783 : Cell := { cellDefaults with
  domain := ⟨(7298437500000001 / 25000000000000000 : ℚ), (7300000000000001 / 25000000000000000 : ℚ)⟩
  r := (81599222891097 / 100000000000000 : ℚ)
  w := (550399220839 / 312500000000 : ℚ)
  center := (7299218750000001 / 25000000000000000 : ℚ)
  supportValue := (3954442940215643 / 5000000000000000 : ℚ)
  supportSlope := (-641698428842119 / 100000000000000 : ℚ)
  oldCenter := (3954442940215643 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_734
  oldLo := (39524999999999999 / 50000000000000000 : ℚ)
  oldHi := (39574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1823, piece_1824]
}

def cell_7784 : Cell := { cellDefaults with
  domain := ⟨(7300000000000001 / 25000000000000000 : ℚ), (29206703910614523 / 100000000000000000 : ℚ)⟩
  center := (58406703910614527 / 200000000000000000 : ℚ)
  supportValue := (3960232976459401 / 5000000000000000 : ℚ)
  supportSlope := (-401615427166833 / 62500000000000 : ℚ)
  oldCenter := (3960232976459401 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_735
  oldLo := (39574999999999999 / 50000000000000000 : ℚ)
  oldHi := (39624999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1825, piece_1826]
}

def cell_7785 : Cell := { cellDefaults with
  domain := ⟨(29206703910614523 / 100000000000000000 : ℚ), (116845111731843573 / 400000000000000000 : ℚ)⟩
  center := (46734385474860333 / 160000000000000000 : ℚ)
  supportValue := (7916838071645811 / 10000000000000000 : ℚ)
  supportSlope := (-6421521551213997 / 1000000000000000 : ℚ)
  oldCenter := (7916838071645811 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_736
  oldLo := (39574999999999999 / 50000000000000000 : ℚ)
  oldHi := (19800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1825]
}

def cell_7786 : Cell := { cellDefaults with
  domain := ⟨(116845111731843573 / 400000000000000000 : ℚ), (58431703910614527 / 200000000000000000 : ℚ)⟩
  center := (233708519553072627 / 800000000000000000 : ℚ)
  supportValue := (7913901629300983 / 10000000000000000 : ℚ)
  supportSlope := (-3209088784662511 / 500000000000000 : ℚ)
  oldCenter := (7913901629300983 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_736
  oldLo := (19775000000000001 / 25000000000000000 : ℚ)
  oldHi := (19800000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1824, piece_1825]
}

def cell_7787 : Cell := { cellDefaults with
  domain := ⟨(58431703910614527 / 200000000000000000 : ℚ), (23376340782122907 / 80000000000000000 : ℚ)⟩
  center := (233745111731843589 / 800000000000000000 : ℚ)
  supportValue := (158219335292577 / 200000000000000 : ℚ)
  supportSlope := (-1603647657545843 / 250000000000000 : ℚ)
  oldCenter := (158219335292577 / 200000000000000 : ℚ)
  newCoefficients := coefficients_736
  oldLo := (39524999999999999 / 50000000000000000 : ℚ)
  oldHi := (39574999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1823, piece_1824]
}

def cell_7788 : Cell := { cellDefaults with
  domain := ⟨(23376340782122907 / 80000000000000000 : ℚ), (7306250000000001 / 25000000000000000 : ℚ)⟩
  center := (233781703910614551 / 800000000000000000 : ℚ)
  supportValue := (1977008366919381 / 2500000000000000 : ℚ)
  supportSlope := (-641122996754437 / 100000000000000 : ℚ)
  oldCenter := (1977008366919381 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_736
  oldLo := (39524999999999999 / 50000000000000000 : ℚ)
  oldHi := (19775000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1823]
}

def cell_7789 : Cell := { cellDefaults with
  domain := ⟨(7306250000000001 / 25000000000000000 : ℚ), (7307812500000001 / 25000000000000000 : ℚ)⟩
  center := (7307031250000001 / 25000000000000000 : ℚ)
  supportValue := (1976142598489019 / 2500000000000000 : ℚ)
  supportSlope := (-6407098882927897 / 1000000000000000 : ℚ)
  oldCenter := (1976142598489019 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_736
  oldLo := (19750000000000001 / 25000000000000000 : ℚ)
  oldHi := (19775000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1822, piece_1823]
}

def cell_7790 : Cell := { cellDefaults with
  domain := ⟨(7307812500000001 / 25000000000000000 : ℚ), (7309375000000001 / 25000000000000000 : ℚ)⟩
  center := (7308593750000001 / 25000000000000000 : ℚ)
  supportValue := (98757092917483 / 125000000000000 : ℚ)
  supportSlope := (-800286997637567 / 125000000000000 : ℚ)
  oldCenter := (98757092917483 / 125000000000000 : ℚ)
  newCoefficients := coefficients_736
  oldLo := (61705656424581 / 78125000000000 : ℚ)
  oldHi := (39524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1821, piece_1822]
}

def cell_7791 : Cell := { cellDefaults with
  domain := ⟨(7309375000000001 / 25000000000000000 : ℚ), (7310937500000001 / 25000000000000000 : ℚ)⟩
  center := (7310156250000001 / 25000000000000000 : ℚ)
  supportValue := (1579313479694687 / 2000000000000000 : ℚ)
  supportSlope := (-6397777025501483 / 1000000000000000 : ℚ)
  oldCenter := (1579313479694687 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_736
  oldLo := (78900000000000003 / 100000000000000000 : ℚ)
  oldHi := (19750000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1819, piece_1820, piece_1821]
}

def cell_7792 : Cell := { cellDefaults with
  domain := ⟨(7310937500000001 / 25000000000000000 : ℚ), (7312500000000001 / 25000000000000000 : ℚ)⟩
  center := (7311718750000001 / 25000000000000000 : ℚ)
  supportValue := (3946285106639699 / 5000000000000000 : ℚ)
  supportSlope := (-1598284090775337 / 250000000000000 : ℚ)
  oldCenter := (3946285106639699 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_736
  oldLo := (78900000000000003 / 100000000000000000 : ℚ)
  oldHi := (39474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1819]
}

def cell_7793 : Cell := { cellDefaults with
  domain := ⟨(7312500000000001 / 25000000000000000 : ℚ), (7314062500000001 / 25000000000000000 : ℚ)⟩
  r := (20367250627933 / 25000000000000 : ℚ)
  w := (8795785491231 / 5000000000000 : ℚ)
  center := (7313281250000001 / 25000000000000000 : ℚ)
  supportValue := (7904260533558859 / 10000000000000000 : ℚ)
  supportSlope := (-6401956281784749 / 1000000000000000 : ℚ)
  oldCenter := (7904260533558859 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_737
  oldLo := (19750000000000001 / 25000000000000000 : ℚ)
  oldHi := (19775000000000001 / 25000000000000000 : ℚ)
  oldPieces := [piece_1822, piece_1823]
}

def cell_7794 : Cell := { cellDefaults with
  domain := ⟨(7314062500000001 / 25000000000000000 : ℚ), (7315625000000001 / 25000000000000000 : ℚ)⟩
  r := (20367250627933 / 25000000000000 : ℚ)
  w := (8795785491231 / 5000000000000 : ℚ)
  center := (7314843750000001 / 25000000000000000 : ℚ)
  supportValue := (1580052160590419 / 2000000000000000 : ℚ)
  supportSlope := (-6397162332980599 / 1000000000000000 : ℚ)
  oldCenter := (1580052160590419 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_737
  oldLo := (39474999999999999 / 50000000000000000 : ℚ)
  oldHi := (39524999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1820, piece_1821, piece_1822]
}

def cell_7795 : Cell := { cellDefaults with
  domain := ⟨(7315625000000001 / 25000000000000000 : ℚ), (7317187500000001 / 25000000000000000 : ℚ)⟩
  r := (20367250627933 / 25000000000000 : ℚ)
  w := (8795785491231 / 5000000000000 : ℚ)
  center := (7316406250000001 / 25000000000000000 : ℚ)
  supportValue := (3948131979498999 / 5000000000000000 : ℚ)
  supportSlope := (-6392685507631057 / 1000000000000000 : ℚ)
  oldCenter := (3948131979498999 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_737
  oldLo := (78900000000000003 / 100000000000000000 : ℚ)
  oldHi := (61705656424581 / 78125000000000 : ℚ)
  oldPieces := [piece_1819, piece_1820]
}

def cell_7796 : Cell := { cellDefaults with
  domain := ⟨(7317187500000001 / 25000000000000000 : ℚ), (7318750000000001 / 25000000000000000 : ℚ)⟩
  r := (20367250627933 / 25000000000000 : ℚ)
  w := (8795785491231 / 5000000000000 : ℚ)
  center := (7317968750000001 / 25000000000000000 : ℚ)
  supportValue := (7892269963705613 / 10000000000000000 : ℚ)
  supportSlope := (-12776015537525609 / 2000000000000000 : ℚ)
  oldCenter := (7892269963705613 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_737
  oldLo := (78900000000000003 / 100000000000000000 : ℚ)
  oldHi := (39474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1819]
}

def cell_7797 : Cell := { cellDefaults with
  domain := ⟨(7318750000000001 / 25000000000000000 : ℚ), (7320312500000001 / 25000000000000000 : ℚ)⟩
  r := (20367250627933 / 25000000000000 : ℚ)
  w := (8795785491231 / 5000000000000 : ℚ)
  center := (7319531250000001 / 25000000000000000 : ℚ)
  supportValue := (7888278908861757 / 10000000000000000 : ℚ)
  supportSlope := (-6383383830435463 / 1000000000000000 : ℚ)
  oldCenter := (7888278908861757 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_737
  oldLo := (39424999999999999 / 50000000000000000 : ℚ)
  oldHi := (39474999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1818, piece_1819]
}

def cell_7798 : Cell := { cellDefaults with
  domain := ⟨(7320312500000001 / 25000000000000000 : ℚ), (7321875000000001 / 25000000000000000 : ℚ)⟩
  r := (20367250627933 / 25000000000000 : ℚ)
  w := (8795785491231 / 5000000000000 : ℚ)
  center := (7321093750000001 / 25000000000000000 : ℚ)
  supportValue := (3942145396629463 / 5000000000000000 : ℚ)
  supportSlope := (-318934132478077 / 50000000000000 : ℚ)
  oldCenter := (3942145396629463 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_737
  oldLo := (78800000000000003 / 100000000000000000 : ℚ)
  oldHi := (78900000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1817, piece_1818]
}

def cell_7799 : Cell := { cellDefaults with
  domain := ⟨(7321875000000001 / 25000000000000000 : ℚ), (7323437500000001 / 25000000000000000 : ℚ)⟩
  r := (20367250627933 / 25000000000000 : ℚ)
  w := (8795785491231 / 5000000000000 : ℚ)
  center := (7322656250000001 / 25000000000000000 : ℚ)
  supportValue := (788030559556023 / 1000000000000000 : ℚ)
  supportSlope := (-398373968657717 / 62500000000000 : ℚ)
  oldCenter := (788030559556023 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_737
  oldLo := (78750000000000009 / 100000000000000000 : ℚ)
  oldHi := (39424999999999999 / 50000000000000000 : ℚ)
  oldPieces := [piece_1816, piece_1817]
}

theorem check_7750 : cell_7750.check = true := by
  decide +kernel

theorem check_7751 : cell_7751.check = true := by
  decide +kernel

theorem check_7752 : cell_7752.check = true := by
  decide +kernel

theorem check_7753 : cell_7753.check = true := by
  decide +kernel

theorem check_7754 : cell_7754.check = true := by
  decide +kernel

theorem check_7755 : cell_7755.check = true := by
  decide +kernel

theorem check_7756 : cell_7756.check = true := by
  decide +kernel

theorem check_7757 : cell_7757.check = true := by
  decide +kernel

theorem check_7758 : cell_7758.check = true := by
  decide +kernel

theorem check_7759 : cell_7759.check = true := by
  decide +kernel

theorem check_7760 : cell_7760.check = true := by
  decide +kernel

theorem check_7761 : cell_7761.check = true := by
  decide +kernel

theorem check_7762 : cell_7762.check = true := by
  decide +kernel

theorem check_7763 : cell_7763.check = true := by
  decide +kernel

theorem check_7764 : cell_7764.check = true := by
  decide +kernel

theorem check_7765 : cell_7765.check = true := by
  decide +kernel

theorem check_7766 : cell_7766.check = true := by
  decide +kernel

theorem check_7767 : cell_7767.check = true := by
  decide +kernel

theorem check_7768 : cell_7768.check = true := by
  decide +kernel

theorem check_7769 : cell_7769.check = true := by
  decide +kernel

theorem check_7770 : cell_7770.check = true := by
  decide +kernel

theorem check_7771 : cell_7771.check = true := by
  decide +kernel

theorem check_7772 : cell_7772.check = true := by
  decide +kernel

theorem check_7773 : cell_7773.check = true := by
  decide +kernel

theorem check_7774 : cell_7774.check = true := by
  decide +kernel

theorem check_7775 : cell_7775.check = true := by
  decide +kernel

theorem check_7776 : cell_7776.check = true := by
  decide +kernel

theorem check_7777 : cell_7777.check = true := by
  decide +kernel

theorem check_7778 : cell_7778.check = true := by
  decide +kernel

theorem check_7779 : cell_7779.check = true := by
  decide +kernel

theorem check_7780 : cell_7780.check = true := by
  decide +kernel

theorem check_7781 : cell_7781.check = true := by
  decide +kernel

theorem check_7782 : cell_7782.check = true := by
  decide +kernel

theorem check_7783 : cell_7783.check = true := by
  decide +kernel

theorem check_7784 : cell_7784.check = true := by
  decide +kernel

theorem check_7785 : cell_7785.check = true := by
  decide +kernel

theorem check_7786 : cell_7786.check = true := by
  decide +kernel

theorem check_7787 : cell_7787.check = true := by
  decide +kernel

theorem check_7788 : cell_7788.check = true := by
  decide +kernel

theorem check_7789 : cell_7789.check = true := by
  decide +kernel

theorem check_7790 : cell_7790.check = true := by
  decide +kernel

theorem check_7791 : cell_7791.check = true := by
  decide +kernel

theorem check_7792 : cell_7792.check = true := by
  decide +kernel

theorem check_7793 : cell_7793.check = true := by
  decide +kernel

theorem check_7794 : cell_7794.check = true := by
  decide +kernel

theorem check_7795 : cell_7795.check = true := by
  decide +kernel

theorem check_7796 : cell_7796.check = true := by
  decide +kernel

theorem check_7797 : cell_7797.check = true := by
  decide +kernel

theorem check_7798 : cell_7798.check = true := by
  decide +kernel

theorem check_7799 : cell_7799.check = true := by
  decide +kernel

def cells : List Cell := [cell_7750, cell_7751, cell_7752, cell_7753, cell_7754, cell_7755, cell_7756, cell_7757, cell_7758, cell_7759, cell_7760, cell_7761, cell_7762, cell_7763, cell_7764, cell_7765, cell_7766, cell_7767, cell_7768, cell_7769, cell_7770, cell_7771, cell_7772, cell_7773, cell_7774, cell_7775, cell_7776, cell_7777, cell_7778, cell_7779, cell_7780, cell_7781, cell_7782, cell_7783, cell_7784, cell_7785, cell_7786, cell_7787, cell_7788, cell_7789, cell_7790, cell_7791, cell_7792, cell_7793, cell_7794, cell_7795, cell_7796, cell_7797, cell_7798, cell_7799]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_7750, check_7751, check_7752, check_7753, check_7754, check_7755, check_7756, check_7757, check_7758, check_7759, check_7760, check_7761, check_7762, check_7763, check_7764, check_7765, check_7766, check_7767, check_7768, check_7769, check_7770, check_7771, check_7772, check_7773, check_7774, check_7775, check_7776, check_7777, check_7778, check_7779, check_7780, check_7781, check_7782, check_7783, check_7784, check_7785, check_7786, check_7787, check_7788, check_7789, check_7790, check_7791, check_7792, check_7793, check_7794, check_7795, check_7796, check_7797, check_7798, check_7799, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0155

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0155
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0155
open AnalyticBounds.ExpressionCertificate

theorem linked_7750 : Linked cell_7750 pieces := by
  link_source cell_7750 with piece_730 using piece_730_mem, ⟨piece_1838_mem, piece_1839_mem⟩

theorem linked_7751 : Linked cell_7751 pieces := by
  link_source cell_7751 with piece_730 using piece_730_mem, ⟨piece_1837_mem, piece_1838_mem⟩

theorem linked_7752 : Linked cell_7752 pieces := by
  link_source cell_7752 with piece_731 using piece_731_mem, ⟨piece_1839_mem, piece_1840_mem⟩

theorem linked_7753 : Linked cell_7753 pieces := by
  link_source cell_7753 with piece_731 using piece_731_mem, piece_1839_mem

theorem linked_7754 : Linked cell_7754 pieces := by
  link_source cell_7754 with piece_731 using piece_731_mem, ⟨piece_1838_mem, piece_1839_mem⟩

theorem linked_7755 : Linked cell_7755 pieces := by
  link_source cell_7755 with piece_731 using piece_731_mem, ⟨piece_1837_mem, piece_1838_mem⟩

theorem linked_7756 : Linked cell_7756 pieces := by
  link_source cell_7756 with piece_731 using piece_731_mem, ⟨piece_1836_mem, piece_1837_mem⟩

theorem linked_7757 : Linked cell_7757 pieces := by
  link_source cell_7757 with piece_731 using piece_731_mem, ⟨piece_1835_mem, piece_1836_mem⟩

theorem linked_7758 : Linked cell_7758 pieces := by
  link_source cell_7758 with piece_731 using piece_731_mem, piece_1835_mem

theorem linked_7759 : Linked cell_7759 pieces := by
  link_source cell_7759 with piece_731 using piece_731_mem, ⟨piece_1834_mem, piece_1835_mem⟩

theorem linked_7760 : Linked cell_7760 pieces := by
  link_source cell_7760 with piece_732 using piece_732_mem, ⟨piece_1836_mem, piece_1837_mem⟩

theorem linked_7761 : Linked cell_7761 pieces := by
  link_source cell_7761 with piece_732 using piece_732_mem, ⟨piece_1835_mem, piece_1836_mem⟩

theorem linked_7762 : Linked cell_7762 pieces := by
  link_source cell_7762 with piece_732 using piece_732_mem, ⟨piece_1834_mem, piece_1835_mem⟩

theorem linked_7763 : Linked cell_7763 pieces := by
  link_source cell_7763 with piece_732 using piece_732_mem, piece_1834_mem

theorem linked_7764 : Linked cell_7764 pieces := by
  link_source cell_7764 with piece_732 using piece_732_mem, ⟨piece_1832_mem, ⟨piece_1833_mem, piece_1834_mem⟩⟩

theorem linked_7765 : Linked cell_7765 pieces := by
  link_source cell_7765 with piece_732 using piece_732_mem, ⟨piece_1831_mem, piece_1832_mem⟩

theorem linked_7766 : Linked cell_7766 pieces := by
  link_source cell_7766 with piece_732 using piece_732_mem, ⟨piece_1830_mem, piece_1831_mem⟩

theorem linked_7767 : Linked cell_7767 pieces := by
  link_source cell_7767 with piece_732 using piece_732_mem, ⟨piece_1829_mem, piece_1830_mem⟩

theorem linked_7768 : Linked cell_7768 pieces := by
  link_source cell_7768 with piece_733 using piece_733_mem, ⟨piece_1832_mem, ⟨piece_1833_mem, piece_1834_mem⟩⟩

theorem linked_7769 : Linked cell_7769 pieces := by
  link_source cell_7769 with piece_733 using piece_733_mem, ⟨piece_1831_mem, piece_1832_mem⟩

theorem linked_7770 : Linked cell_7770 pieces := by
  link_source cell_7770 with piece_733 using piece_733_mem, ⟨piece_1830_mem, piece_1831_mem⟩

theorem linked_7771 : Linked cell_7771 pieces := by
  link_source cell_7771 with piece_733 using piece_733_mem, ⟨piece_1829_mem, piece_1830_mem⟩

theorem linked_7772 : Linked cell_7772 pieces := by
  link_source cell_7772 with piece_733 using piece_733_mem, piece_1829_mem

theorem linked_7773 : Linked cell_7773 pieces := by
  link_source cell_7773 with piece_733 using piece_733_mem, ⟨piece_1828_mem, piece_1829_mem⟩

theorem linked_7774 : Linked cell_7774 pieces := by
  link_source cell_7774 with piece_733 using piece_733_mem, ⟨piece_1827_mem, piece_1828_mem⟩

theorem linked_7775 : Linked cell_7775 pieces := by
  link_source cell_7775 with piece_733 using piece_733_mem, ⟨piece_1826_mem, piece_1827_mem⟩

theorem linked_7776 : Linked cell_7776 pieces := by
  link_source cell_7776 with piece_734 using piece_734_mem, piece_1829_mem

theorem linked_7777 : Linked cell_7777 pieces := by
  link_source cell_7777 with piece_734 using piece_734_mem, ⟨piece_1828_mem, piece_1829_mem⟩

theorem linked_7778 : Linked cell_7778 pieces := by
  link_source cell_7778 with piece_734 using piece_734_mem, ⟨piece_1827_mem, piece_1828_mem⟩

theorem linked_7779 : Linked cell_7779 pieces := by
  link_source cell_7779 with piece_734 using piece_734_mem, ⟨piece_1826_mem, piece_1827_mem⟩

theorem linked_7780 : Linked cell_7780 pieces := by
  link_source cell_7780 with piece_734 using piece_734_mem, ⟨piece_1825_mem, piece_1826_mem⟩

theorem linked_7781 : Linked cell_7781 pieces := by
  link_source cell_7781 with piece_734 using piece_734_mem, ⟨piece_1824_mem, piece_1825_mem⟩

theorem linked_7782 : Linked cell_7782 pieces := by
  link_source cell_7782 with piece_734 using piece_734_mem, piece_1824_mem

theorem linked_7783 : Linked cell_7783 pieces := by
  link_source cell_7783 with piece_734 using piece_734_mem, ⟨piece_1823_mem, piece_1824_mem⟩

theorem linked_7784 : Linked cell_7784 pieces := by
  link_source cell_7784 with piece_735 using piece_735_mem, ⟨piece_1825_mem, piece_1826_mem⟩

theorem linked_7785 : Linked cell_7785 pieces := by
  link_source cell_7785 with piece_736 using piece_736_mem, piece_1825_mem

theorem linked_7786 : Linked cell_7786 pieces := by
  link_source cell_7786 with piece_736 using piece_736_mem, ⟨piece_1824_mem, piece_1825_mem⟩

theorem linked_7787 : Linked cell_7787 pieces := by
  link_source cell_7787 with piece_736 using piece_736_mem, ⟨piece_1823_mem, piece_1824_mem⟩

theorem linked_7788 : Linked cell_7788 pieces := by
  link_source cell_7788 with piece_736 using piece_736_mem, piece_1823_mem

theorem linked_7789 : Linked cell_7789 pieces := by
  link_source cell_7789 with piece_736 using piece_736_mem, ⟨piece_1822_mem, piece_1823_mem⟩

theorem linked_7790 : Linked cell_7790 pieces := by
  link_source cell_7790 with piece_736 using piece_736_mem, ⟨piece_1821_mem, piece_1822_mem⟩

theorem linked_7791 : Linked cell_7791 pieces := by
  link_source cell_7791 with piece_736 using piece_736_mem, ⟨piece_1819_mem, ⟨piece_1820_mem, piece_1821_mem⟩⟩

theorem linked_7792 : Linked cell_7792 pieces := by
  link_source cell_7792 with piece_736 using piece_736_mem, piece_1819_mem

theorem linked_7793 : Linked cell_7793 pieces := by
  link_source cell_7793 with piece_737 using piece_737_mem, ⟨piece_1822_mem, piece_1823_mem⟩

theorem linked_7794 : Linked cell_7794 pieces := by
  link_source cell_7794 with piece_737 using piece_737_mem, ⟨piece_1820_mem, ⟨piece_1821_mem, piece_1822_mem⟩⟩

theorem linked_7795 : Linked cell_7795 pieces := by
  link_source cell_7795 with piece_737 using piece_737_mem, ⟨piece_1819_mem, piece_1820_mem⟩

theorem linked_7796 : Linked cell_7796 pieces := by
  link_source cell_7796 with piece_737 using piece_737_mem, piece_1819_mem

theorem linked_7797 : Linked cell_7797 pieces := by
  link_source cell_7797 with piece_737 using piece_737_mem, ⟨piece_1818_mem, piece_1819_mem⟩

theorem linked_7798 : Linked cell_7798 pieces := by
  link_source cell_7798 with piece_737 using piece_737_mem, ⟨piece_1817_mem, piece_1818_mem⟩

theorem linked_7799 : Linked cell_7799 pieces := by
  link_source cell_7799 with piece_737 using piece_737_mem, ⟨piece_1816_mem, piece_1817_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0155.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0155.cells,List.forall_mem_cons]
  exact ⟨linked_7750, linked_7751, linked_7752, linked_7753, linked_7754, linked_7755, linked_7756, linked_7757, linked_7758, linked_7759, linked_7760, linked_7761, linked_7762, linked_7763, linked_7764, linked_7765, linked_7766, linked_7767, linked_7768, linked_7769, linked_7770, linked_7771, linked_7772, linked_7773, linked_7774, linked_7775, linked_7776, linked_7777, linked_7778, linked_7779, linked_7780, linked_7781, linked_7782, linked_7783, linked_7784, linked_7785, linked_7786, linked_7787, linked_7788, linked_7789, linked_7790, linked_7791, linked_7792, linked_7793, linked_7794, linked_7795, linked_7796, linked_7797, linked_7798, linked_7799, by simp⟩

theorem covered : covers (7246875000000001 / 25000000000000000 : ℚ) (7323437500000001 / 25000000000000000 : ℚ)
    (SourceCertificates.Chunk0155.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0155
end
