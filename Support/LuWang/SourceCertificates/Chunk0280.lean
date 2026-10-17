import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0280
open SourceCertificate CurrentSourceData

noncomputable private def cellDefaults : Cell := {
  domain := ⟨(182950000000000013 / 200000000000000000 : ℚ), (22875000000000001 / 25000000000000000 : ℚ)⟩
  branch := .left
  r := (10644600151889 / 25000000000000 : ℚ)
  w := (1560983676837 / 1250000000000 : ℚ)
  center := (365950000000000021 / 400000000000000000 : ℚ)
  supportValue := (21677983654170113 / 100000000000000000 : ℚ)
  supportSlope := (-358004258976177 / 500000000000000 : ℚ)
  oldCenter := (21677983654170113 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2094
  oldLo := (27 / 125 : ℚ)
  oldHi := (27 / 125 : ℚ)
  oldPieces := [piece_569]
  ne := 20
  nl := 24
  nq := 32
  centered := true
}

def cell_14000 : Cell := { cellDefaults with
  r := (21331090025667 / 50000000000000 : ℚ)
  w := (12509143425151 / 10000000000000 : ℚ)
  newCoefficients := coefficients_2093
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

noncomputable def cell_14001 : Cell := { cellDefaults with
  domain := ⟨(22875000000000001 / 25000000000000000 : ℚ), (183050000000000013 / 200000000000000000 : ℚ)⟩
  r := (42645402314227 / 100000000000000 : ℚ)
  w := (12504892008129 / 10000000000000 : ℚ)
  center := (366050000000000021 / 400000000000000000 : ℚ)
  supportValue := (4337219194186373 / 20000000000000000 : ℚ)
  supportSlope := (-7160053850653719 / 10000000000000000 : ℚ)
  oldCenter := (4337219194186373 / 20000000000000000 : ℚ)
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

noncomputable def cell_14002 : Cell := { cellDefaults with
  domain := ⟨(183050000000000013 / 200000000000000000 : ℚ), (91550000000000009 / 100000000000000000 : ℚ)⟩
  r := (42645402314227 / 100000000000000 : ℚ)
  w := (12504892008129 / 10000000000000 : ℚ)
  center := (366150000000000031 / 400000000000000000 : ℚ)
  supportValue := (5417051050954589 / 25000000000000000 : ℚ)
  supportSlope := (-7153348427836721 / 10000000000000000 : ℚ)
  oldCenter := (5417051050954589 / 25000000000000000 : ℚ)
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

noncomputable def cell_14003 : Cell := { cellDefaults with
  domain := ⟨(91550000000000009 / 100000000000000000 : ℚ), (183150000000000013 / 200000000000000000 : ℚ)⟩
  r := (42628634971331 / 100000000000000 : ℚ)
  w := (125006388113 / 100000000000 : ℚ)
  center := (366250000000000031 / 400000000000000000 : ℚ)
  supportValue := (2167632162946079 / 10000000000000000 : ℚ)
  supportSlope := (-3492831702571 / 4882812500000 : ℚ)
  oldCenter := (2167632162946079 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2095
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

noncomputable def cell_14004 : Cell := { cellDefaults with
  domain := ⟨(183150000000000013 / 200000000000000000 : ℚ), (22900000000000001 / 25000000000000000 : ℚ)⟩
  r := (42628634971331 / 100000000000000 : ℚ)
  w := (125006388113 / 100000000000 : ℚ)
  center := (366350000000000021 / 400000000000000000 : ℚ)
  supportValue := (10829223341401517 / 50000000000000000 : ℚ)
  supportSlope := (-7146664619786683 / 10000000000000000 : ℚ)
  oldCenter := (10829223341401517 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2095
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_570, piece_571]
}

noncomputable def cell_14005 : Cell := { cellDefaults with
  domain := ⟨(22900000000000001 / 25000000000000000 : ℚ), (91625000000000001 / 100000000000000000 : ℚ)⟩
  r := (42611879614277 / 100000000000000 : ℚ)
  w := (6248192312083 / 5000000000000 : ℚ)
  center := (36645000000000001 / 40000000000000000 : ℚ)
  supportValue := (21666566088345343 / 100000000000000000 : ℚ)
  supportSlope := (-285863956146971 / 400000000000000 : ℚ)
  oldCenter := (21666566088345343 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2096
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

noncomputable def cell_14006 : Cell := { cellDefaults with
  domain := ⟨(91625000000000001 / 100000000000000000 : ℚ), (45824999999999999 / 50000000000000000 : ℚ)⟩
  r := (42611879614277 / 100000000000000 : ℚ)
  w := (6248192312083 / 5000000000000 : ℚ)
  center := (183274999999999999 / 200000000000000000 : ℚ)
  supportValue := (1082435384011301 / 5000000000000000 : ℚ)
  supportSlope := (-7140686477514503 / 10000000000000000 : ℚ)
  oldCenter := (1082435384011301 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2096
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_570, piece_571]
}

noncomputable def cell_14007 : Cell := { cellDefaults with
  domain := ⟨(45824999999999999 / 50000000000000000 : ℚ), (91675000000000001 / 100000000000000000 : ℚ)⟩
  r := (10648783561063 / 25000000000000 : ℚ)
  w := (6246064234433 / 5000000000000 : ℚ)
  center := (183324999999999999 / 200000000000000000 : ℚ)
  supportValue := (21656833178061197 / 100000000000000000 : ℚ)
  supportSlope := (-1785013027757251 / 2500000000000000 : ℚ)
  oldCenter := (21656833178061197 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2097
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_570, piece_571]
}

noncomputable def cell_14008 : Cell := { cellDefaults with
  domain := ⟨(91675000000000001 / 100000000000000000 : ℚ), (22925000000000001 / 25000000000000000 : ℚ)⟩
  r := (10648783561063 / 25000000000000 : ℚ)
  w := (6246064234433 / 5000000000000 : ℚ)
  center := (36675000000000001 / 40000000000000000 : ℚ)
  supportValue := (432779793934613 / 2000000000000000 : ℚ)
  supportSlope := (-1426912081454119 / 2000000000000000 : ℚ)
  oldCenter := (432779793934613 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_2097
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

noncomputable def cell_14009 : Cell := { cellDefaults with
  domain := ⟨(22925000000000001 / 25000000000000000 : ℚ), (4585195530726257 / 5000000000000000 : ℚ)⟩
  center := (22925488826815643 / 25000000000000000 : ℚ)
  supportValue := (2165462616562591 / 10000000000000000 : ℚ)
  supportSlope := (-1784003291898419 / 2500000000000000 : ℚ)
  oldCenter := (2165462616562591 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2098
  oldLo := (433 / 2000 : ℚ)
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_571]
}

noncomputable def cell_14010 : Cell := { cellDefaults with
  domain := ⟨(4585195530726257 / 5000000000000000 : ℚ), (91726955307262569 / 100000000000000000 : ℚ)⟩
  center := (183430865921787709 / 200000000000000000 : ℚ)
  supportValue := (2705628682245833 / 12500000000000000 : ℚ)
  supportSlope := (-7133495678842819 / 10000000000000000 : ℚ)
  oldCenter := (2705628682245833 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2099
  oldHi := (217 / 1000 : ℚ)
  oldPieces := [piece_570, piece_571]
}

noncomputable def cell_14011 : Cell := { cellDefaults with
  domain := ⟨(91726955307262569 / 100000000000000000 : ℚ), (45874999999999999 / 50000000000000000 : ℚ)⟩
  center := (183476955307262567 / 200000000000000000 : ℚ)
  supportValue := (2162859699411053 / 10000000000000000 : ℚ)
  supportSlope := (-3563807985193521 / 5000000000000000 : ℚ)
  oldCenter := (2162859699411053 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2099
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

noncomputable def cell_14012 : Cell := { cellDefaults with
  domain := ⟨(45874999999999999 / 50000000000000000 : ℚ), (91775000000000001 / 100000000000000000 : ℚ)⟩
  r := (42561677953253 / 100000000000000 : ℚ)
  w := (12483608818479 / 10000000000000 : ℚ)
  center := (183524999999999999 / 200000000000000000 : ℚ)
  supportValue := (21637429995397053 / 100000000000000000 : ℚ)
  supportSlope := (-3563929837131069 / 5000000000000000 : ℚ)
  oldCenter := (21637429995397053 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2100
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

noncomputable def cell_14013 : Cell := { cellDefaults with
  domain := ⟨(91775000000000001 / 100000000000000000 : ℚ), (22950000000000001 / 25000000000000000 : ℚ)⟩
  r := (42561677953253 / 100000000000000 : ℚ)
  w := (12483608818479 / 10000000000000 : ℚ)
  center := (36715000000000001 / 40000000000000000 : ℚ)
  supportValue := (10809809323877159 / 50000000000000000 : ℚ)
  supportSlope := (-7121207058681501 / 10000000000000000 : ℚ)
  oldCenter := (10809809323877159 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2100
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

noncomputable def cell_14014 : Cell := { cellDefaults with
  domain := ⟨(22950000000000001 / 25000000000000000 : ℚ), (91825000000000001 / 100000000000000000 : ℚ)⟩
  r := (42544965861823 / 100000000000000 : ℚ)
  w := (779959215879 / 625000000000 : ℚ)
  center := (36725000000000001 / 40000000000000000 : ℚ)
  supportValue := (2162775794208011 / 10000000000000000 : ℚ)
  supportSlope := (-222537246463177 / 312500000000000 : ℚ)
  oldCenter := (2162775794208011 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2101
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

noncomputable def cell_14015 : Cell := { cellDefaults with
  domain := ⟨(91825000000000001 / 100000000000000000 : ℚ), (45924999999999999 / 50000000000000000 : ℚ)⟩
  r := (42544965861823 / 100000000000000 : ℚ)
  w := (779959215879 / 625000000000 : ℚ)
  center := (183674999999999999 / 200000000000000000 : ℚ)
  supportValue := (27012454060331 / 125000000000000 : ℚ)
  supportSlope := (-111164871688329 / 156250000000000 : ℚ)
  oldCenter := (27012454060331 / 125000000000000 : ℚ)
  newCoefficients := coefficients_2101
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

noncomputable def cell_14016 : Cell := { cellDefaults with
  domain := ⟨(45924999999999999 / 50000000000000000 : ℚ), (91875000000000001 / 100000000000000000 : ℚ)⟩
  r := (42528265918221 / 100000000000000 : ℚ)
  w := (1247508349923 / 1000000000000 : ℚ)
  center := (183724999999999999 / 200000000000000000 : ℚ)
  supportValue := (10809053453949119 / 50000000000000000 : ℚ)
  supportSlope := (-7114538778806557 / 10000000000000000 : ℚ)
  oldCenter := (10809053453949119 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2102
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_570]
}

noncomputable def cell_14017 : Cell := { cellDefaults with
  domain := ⟨(91875000000000001 / 100000000000000000 : ℚ), (22975000000000001 / 25000000000000000 : ℚ)⟩
  r := (42528265918221 / 100000000000000 : ℚ)
  w := (1247508349923 / 1000000000000 : ℚ)
  center := (36755000000000001 / 40000000000000000 : ℚ)
  supportValue := (21600328831257803 / 100000000000000000 : ℚ)
  supportSlope := (-7108553729326097 / 10000000000000000 : ℚ)
  oldCenter := (21600328831257803 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2102
  oldLo := (431 / 2000 : ℚ)
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_569, piece_570]
}

noncomputable def cell_14018 : Cell := { cellDefaults with
  domain := ⟨(22975000000000001 / 25000000000000000 : ℚ), (91925000000000001 / 100000000000000000 : ℚ)⟩
  r := (21255788007907 / 50000000000000 : ℚ)
  w := (779426104593 / 625000000000 : ℚ)
  center := (36765000000000001 / 40000000000000000 : ℚ)
  supportValue := (21608478018154967 / 100000000000000000 : ℚ)
  supportSlope := (-3553966225515053 / 5000000000000000 : ℚ)
  oldCenter := (21608478018154967 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2103
  oldLo := (431 / 2000 : ℚ)
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_569, piece_570]
}

noncomputable def cell_14019 : Cell := { cellDefaults with
  domain := ⟨(91925000000000001 / 100000000000000000 : ℚ), (45974999999999999 / 50000000000000000 : ℚ)⟩
  r := (21255788007907 / 50000000000000 : ℚ)
  w := (779426104593 / 625000000000 : ℚ)
  center := (183874999999999999 / 200000000000000000 : ℚ)
  supportValue := (2159071477896139 / 10000000000000000 : ℚ)
  supportSlope := (-7102612918311343 / 10000000000000000 : ℚ)
  oldCenter := (2159071477896139 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2103
  oldLo := (431 / 2000 : ℚ)
  oldPieces := [piece_569]
}

noncomputable def cell_14020 : Cell := { cellDefaults with
  domain := ⟨(45974999999999999 / 50000000000000000 : ℚ), (91975000000000001 / 100000000000000000 : ℚ)⟩
  r := (10623724246411 / 25000000000000 : ℚ)
  w := (6233274969679 / 5000000000000 : ℚ)
  center := (183924999999999999 / 200000000000000000 : ℚ)
  supportValue := (10799435063534997 / 50000000000000000 : ℚ)
  supportSlope := (-3551013845046321 / 5000000000000000 : ℚ)
  oldCenter := (10799435063534997 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2104
  oldLo := (431 / 2000 : ℚ)
  oldHi := (433 / 2000 : ℚ)
  oldPieces := [piece_569, piece_570]
}

noncomputable def cell_14021 : Cell := { cellDefaults with
  domain := ⟨(91975000000000001 / 100000000000000000 : ℚ), (23000000000000001 / 25000000000000000 : ℚ)⟩
  r := (10623724246411 / 25000000000000 : ℚ)
  w := (6233274969679 / 5000000000000 : ℚ)
  center := (36795000000000001 / 40000000000000000 : ℚ)
  supportValue := (4316224371605601 / 20000000000000000 : ℚ)
  supportSlope := (-3547997664726373 / 5000000000000000 : ℚ)
  oldCenter := (4316224371605601 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2104
  oldLo := (431 / 2000 : ℚ)
  oldPieces := [piece_569]
}

noncomputable def cell_14022 : Cell := { cellDefaults with
  domain := ⟨(23000000000000001 / 25000000000000000 : ℚ), (92025000000000001 / 100000000000000000 : ℚ)⟩
  r := (21239114488217 / 50000000000000 : ℚ)
  w := (1557785082563 / 1250000000000 : ℚ)
  center := (36805000000000001 / 40000000000000000 : ℚ)
  supportValue := (21589281045782951 / 100000000000000000 : ℚ)
  supportSlope := (-1773998203320683 / 2500000000000000 : ℚ)
  oldCenter := (21589281045782951 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2105
  oldLo := (431 / 2000 : ℚ)
  oldPieces := [piece_569]
}

noncomputable def cell_14023 : Cell := { cellDefaults with
  domain := ⟨(92025000000000001 / 100000000000000000 : ℚ), (46024999999999999 / 50000000000000000 : ℚ)⟩
  r := (21239114488217 / 50000000000000 : ℚ)
  w := (1557785082563 / 1250000000000 : ℚ)
  center := (184074999999999999 / 200000000000000000 : ℚ)
  supportValue := (21571549300586587 / 100000000000000000 : ℚ)
  supportSlope := (-3544695997095707 / 5000000000000000 : ℚ)
  oldCenter := (21571549300586587 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2105
  oldLo := (431 / 2000 : ℚ)
  oldPieces := [piece_569]
}

noncomputable def cell_14024 : Cell := { cellDefaults with
  domain := ⟨(46024999999999999 / 50000000000000000 : ℚ), (92075000000000001 / 100000000000000000 : ℚ)⟩
  r := (10615392897007 / 25000000000000 : ℚ)
  w := (6229004512073 / 5000000000000 : ℚ)
  center := (184124999999999999 / 200000000000000000 : ℚ)
  supportValue := (5394928527919117 / 25000000000000000 : ℚ)
  supportSlope := (-1772347966441999 / 2500000000000000 : ℚ)
  oldCenter := (5394928527919117 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2106
  oldLo := (431 / 2000 : ℚ)
  oldPieces := [piece_569]
}

noncomputable def cell_14025 : Cell := { cellDefaults with
  domain := ⟨(92075000000000001 / 100000000000000000 : ℚ), (23025000000000001 / 25000000000000000 : ℚ)⟩
  r := (10615392897007 / 25000000000000 : ℚ)
  w := (6229004512073 / 5000000000000 : ℚ)
  center := (36835000000000001 / 40000000000000000 : ℚ)
  supportValue := (2695249856675011 / 12500000000000000 : ℚ)
  supportSlope := (-7082803409602917 / 10000000000000000 : ℚ)
  oldCenter := (2695249856675011 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2106
  oldLo := (431 / 2000 : ℚ)
  oldPieces := [piece_569]
}

noncomputable def cell_14026 : Cell := { cellDefaults with
  domain := ⟨(23025000000000001 / 25000000000000000 : ℚ), (184250000000000003 / 200000000000000000 : ℚ)⟩
  r := (42444925675917 / 100000000000000 : ℚ)
  w := (6226867800331 / 5000000000000 : ℚ)
  center := (368450000000000011 / 400000000000000000 : ℚ)
  supportValue := (2157016735745917 / 10000000000000000 : ℚ)
  supportSlope := (-221337660729301 / 312500000000000 : ℚ)
  oldCenter := (2157016735745917 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2107
  oldLo := (431 / 2000 : ℚ)
  oldPieces := [piece_569]
}

noncomputable def cell_14027 : Cell := { cellDefaults with
  domain := ⟨(184250000000000003 / 200000000000000000 : ℚ), (92149999999999999 / 100000000000000000 : ℚ)⟩
  r := (42444925675917 / 100000000000000 : ℚ)
  w := (6226867800331 / 5000000000000 : ℚ)
  center := (368550000000000001 / 400000000000000000 : ℚ)
  supportValue := (21552468550586829 / 100000000000000000 : ℚ)
  supportSlope := (-7076708157890007 / 10000000000000000 : ℚ)
  oldCenter := (21552468550586829 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2107
  oldLo := (43 / 200 : ℚ)
  oldPieces := [piece_568, piece_569]
}

noncomputable def cell_14028 : Cell := { cellDefaults with
  domain := ⟨(92149999999999999 / 100000000000000000 : ℚ), (184350000000000003 / 200000000000000000 : ℚ)⟩
  r := (42428290753767 / 100000000000000 : ℚ)
  w := (12449461510691 / 10000000000000 : ℚ)
  center := (368650000000000001 / 400000000000000000 : ℚ)
  supportValue := (10780319709574429 / 50000000000000000 : ℚ)
  supportSlope := (-3538116070724497 / 5000000000000000 : ℚ)
  oldCenter := (10780319709574429 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2108
  oldLo := (431 / 2000 : ℚ)
  oldPieces := [piece_569]
}

noncomputable def cell_14029 : Cell := { cellDefaults with
  domain := ⟨(184350000000000003 / 200000000000000000 : ℚ), (23050000000000001 / 25000000000000000 : ℚ)⟩
  r := (42428290753767 / 100000000000000 : ℚ)
  w := (12449461510691 / 10000000000000 : ℚ)
  center := (368750000000000011 / 400000000000000000 : ℚ)
  supportValue := (21542955706590533 / 100000000000000000 : ℚ)
  supportSlope := (-7070857024979297 / 10000000000000000 : ℚ)
  oldCenter := (21542955706590533 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2108
  oldLo := (43 / 200 : ℚ)
  oldPieces := [piece_568, piece_569]
}

noncomputable def cell_14030 : Cell := { cellDefaults with
  domain := ⟨(23050000000000001 / 25000000000000000 : ℚ), (184450000000000003 / 200000000000000000 : ℚ)⟩
  r := (1325364559857 / 3125000000000 : ℚ)
  w := (2489036637453 / 2000000000000 : ℚ)
  center := (368850000000000011 / 400000000000000000 : ℚ)
  supportValue := (21551137184262711 / 100000000000000000 : ℚ)
  supportSlope := (-7070252986112897 / 10000000000000000 : ℚ)
  oldCenter := (21551137184262711 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2109
  oldLo := (43 / 200 : ℚ)
  oldPieces := [piece_568, piece_569]
}

noncomputable def cell_14031 : Cell := { cellDefaults with
  domain := ⟨(184450000000000003 / 200000000000000000 : ℚ), (92249999999999999 / 100000000000000000 : ℚ)⟩
  r := (1325364559857 / 3125000000000 : ℚ)
  w := (2489036637453 / 2000000000000 : ℚ)
  center := (368950000000000001 / 400000000000000000 : ℚ)
  supportValue := (2153346807934363 / 10000000000000000 : ℚ)
  supportSlope := (-3532219406740331 / 5000000000000000 : ℚ)
  oldCenter := (2153346807934363 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2109
  oldLo := (43 / 200 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_568]
}

noncomputable def cell_14032 : Cell := { cellDefaults with
  domain := ⟨(92249999999999999 / 100000000000000000 : ℚ), (4612849162011173 / 5000000000000000 : ℚ)⟩
  r := (21197526155557 / 50000000000000 : ℚ)
  w := (1244090353993 / 1000000000000 : ℚ)
  center := (184506983240223459 / 200000000000000000 : ℚ)
  supportValue := (21547998509638047 / 100000000000000000 : ℚ)
  supportSlope := (-7066689464844399 / 10000000000000000 : ℚ)
  oldCenter := (21547998509638047 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2110
  oldLo := (43 / 200 : ℚ)
  oldPieces := [piece_568, piece_569]
}

noncomputable def cell_14033 : Cell := { cellDefaults with
  domain := ⟨(4612849162011173 / 5000000000000000 : ℚ), (23069622905027933 / 25000000000000000 : ℚ)⟩
  r := (21197526155557 / 50000000000000 : ℚ)
  w := (1244090353993 / 1000000000000 : ℚ)
  center := (23066934357541899 / 25000000000000000 : ℚ)
  supportValue := (5384488326358599 / 25000000000000000 : ℚ)
  supportSlope := (-706307818764871 / 1000000000000000 : ℚ)
  oldCenter := (5384488326358599 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2111
  oldLo := (43 / 200 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_568]
}

noncomputable def cell_14034 : Cell := { cellDefaults with
  domain := ⟨(23069622905027933 / 25000000000000000 : ℚ), (23075000000000001 / 25000000000000000 : ℚ)⟩
  r := (21197526155557 / 50000000000000 : ℚ)
  w := (1244090353993 / 1000000000000 : ℚ)
  center := (23072311452513967 / 25000000000000000 : ℚ)
  supportValue := (4304553562894603 / 20000000000000000 : ℚ)
  supportSlope := (-7057444219592269 / 10000000000000000 : ℚ)
  oldCenter := (4304553562894603 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2111
  oldLo := (43 / 200 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_568]
}

noncomputable def cell_14035 : Cell := { cellDefaults with
  domain := ⟨(23075000000000001 / 25000000000000000 : ℚ), (184650000000000003 / 200000000000000000 : ℚ)⟩
  r := (8475689855983 / 20000000000000 : ℚ)
  w := (2487324537097 / 2000000000000 : ℚ)
  center := (369250000000000011 / 400000000000000000 : ℚ)
  supportValue := (134576177834911 / 625000000000000 : ℚ)
  supportSlope := (-7057915740916337 / 10000000000000000 : ℚ)
  oldCenter := (134576177834911 / 625000000000000 : ℚ)
  newCoefficients := coefficients_2112
  oldLo := (43 / 200 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_568]
}

noncomputable def cell_14036 : Cell := { cellDefaults with
  domain := ⟨(184650000000000003 / 200000000000000000 : ℚ), (92349999999999999 / 100000000000000000 : ℚ)⟩
  r := (8475689855983 / 20000000000000 : ℚ)
  w := (2487324537097 / 2000000000000 : ℚ)
  center := (369350000000000001 / 400000000000000000 : ℚ)
  supportValue := (2151455182250403 / 10000000000000000 : ℚ)
  supportSlope := (-1762844452819111 / 2500000000000000 : ℚ)
  oldCenter := (2151455182250403 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_2112
  oldLo := (43 / 200 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_568]
}

noncomputable def cell_14037 : Cell := { cellDefaults with
  domain := ⟨(92349999999999999 / 100000000000000000 : ℚ), (184750000000000003 / 200000000000000000 : ℚ)⟩
  r := (42361857332439 / 100000000000000 : ℚ)
  w := (6216170020341 / 5000000000000 : ℚ)
  center := (369450000000000001 / 400000000000000000 : ℚ)
  supportValue := (10761372186526659 / 50000000000000000 : ℚ)
  supportSlope := (-352569706628523 / 500000000000000 : ℚ)
  oldCenter := (10761372186526659 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2113
  oldLo := (43 / 200 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_568]
}

noncomputable def cell_14038 : Cell := { cellDefaults with
  domain := ⟨(184750000000000003 / 200000000000000000 : ℚ), (23100000000000001 / 25000000000000000 : ℚ)⟩
  r := (42361857332439 / 100000000000000 : ℚ)
  w := (6216170020341 / 5000000000000 : ℚ)
  center := (369550000000000011 / 400000000000000000 : ℚ)
  supportValue := (10752562015396819 / 50000000000000000 : ℚ)
  supportSlope := (-7045145565799789 / 10000000000000000 : ℚ)
  oldCenter := (10752562015396819 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2113
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_567, piece_568]
}

noncomputable def cell_14039 : Cell := { cellDefaults with
  domain := ⟨(23100000000000001 / 25000000000000000 : ℚ), (184850000000000003 / 200000000000000000 : ℚ)⟩
  r := (42345275780779 / 100000000000000 : ℚ)
  w := (12428055227851 / 10000000000000 : ℚ)
  center := (369650000000000011 / 400000000000000000 : ℚ)
  supportValue := (21513322014044053 / 100000000000000000 : ℚ)
  supportSlope := (-281795478315711 / 400000000000000 : ℚ)
  oldCenter := (21513322014044053 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2114
  oldLo := (43 / 200 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_568]
}

noncomputable def cell_14040 : Cell := { cellDefaults with
  domain := ⟨(184850000000000003 / 200000000000000000 : ℚ), (92449999999999999 / 100000000000000000 : ℚ)⟩
  r := (42345275780779 / 100000000000000 : ℚ)
  w := (12428055227851 / 10000000000000 : ℚ)
  center := (369750000000000001 / 400000000000000000 : ℚ)
  supportValue := (21495717118939883 / 100000000000000000 : ℚ)
  supportSlope := (-1759838146784441 / 2500000000000000 : ℚ)
  oldCenter := (21495717118939883 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2114
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_567, piece_568]
}

noncomputable def cell_14041 : Cell := { cellDefaults with
  domain := ⟨(92449999999999999 / 100000000000000000 : ℚ), (184950000000000003 / 200000000000000000 : ℚ)⟩
  r := (21164352974353 / 50000000000000 : ℚ)
  w := (6066293567 / 4882812500 : ℚ)
  center := (369850000000000001 / 400000000000000000 : ℚ)
  supportValue := (5375979552289959 / 25000000000000000 : ℚ)
  supportSlope := (-7038760159900199 / 10000000000000000 : ℚ)
  oldCenter := (5375979552289959 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2115
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_567, piece_568]
}

noncomputable def cell_14042 : Cell := { cellDefaults with
  domain := ⟨(184950000000000003 / 200000000000000000 : ℚ), (23125000000000001 / 25000000000000000 : ℚ)⟩
  r := (21164352974353 / 50000000000000 : ℚ)
  w := (6066293567 / 4882812500 : ℚ)
  center := (369950000000000011 / 400000000000000000 : ℚ)
  supportValue := (21486327780135409 / 100000000000000000 : ℚ)
  supportSlope := (-3516601236409271 / 5000000000000000 : ℚ)
  oldCenter := (21486327780135409 / 100000000000000000 : ℚ)
  newCoefficients := coefficients_2115
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (43 / 200 : ℚ)
  oldPieces := [piece_567]
}

noncomputable def cell_14043 : Cell := { cellDefaults with
  domain := ⟨(23125000000000001 / 25000000000000000 : ℚ), (185050000000000003 / 200000000000000000 : ℚ)⟩
  r := (5289018292123 / 12500000000000 : ℚ)
  w := (12419479804811 / 10000000000000 : ℚ)
  center := (370050000000000011 / 400000000000000000 : ℚ)
  supportValue := (134340857875989 / 625000000000000 : ℚ)
  supportSlope := (-7032981382336249 / 10000000000000000 : ℚ)
  oldCenter := (134340857875989 / 625000000000000 : ℚ)
  newCoefficients := coefficients_2116
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (431 / 2000 : ℚ)
  oldPieces := [piece_567, piece_568]
}

noncomputable def cell_14044 : Cell := { cellDefaults with
  domain := ⟨(185050000000000003 / 200000000000000000 : ℚ), (92549999999999999 / 100000000000000000 : ℚ)⟩
  r := (5289018292123 / 12500000000000 : ℚ)
  w := (12419479804811 / 10000000000000 : ℚ)
  center := (370150000000000001 / 400000000000000000 : ℚ)
  supportValue := (5369240574129379 / 25000000000000000 : ℚ)
  supportSlope := (-1756682533594243 / 2500000000000000 : ℚ)
  oldCenter := (5369240574129379 / 25000000000000000 : ℚ)
  newCoefficients := coefficients_2116
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (43 / 200 : ℚ)
  oldPieces := [piece_567]
}

noncomputable def cell_14045 : Cell := { cellDefaults with
  domain := ⟨(92549999999999999 / 100000000000000000 : ℚ), (46287500000000001 / 50000000000000000 : ℚ)⟩
  r := (5286949658463 / 12500000000000 : ℚ)
  w := (775949360193 / 625000000000 : ℚ)
  center := (185125000000000001 / 200000000000000000 : ℚ)
  supportValue := (2685646803435449 / 12500000000000000 : ℚ)
  supportSlope := (-1405351712042089 / 2000000000000000 : ℚ)
  oldCenter := (2685646803435449 / 12500000000000000 : ℚ)
  newCoefficients := coefficients_2117
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (43 / 200 : ℚ)
  oldPieces := [piece_567]
}

noncomputable def cell_14046 : Cell := { cellDefaults with
  domain := ⟨(46287500000000001 / 50000000000000000 : ℚ), (18520000000000001 / 20000000000000000 : ℚ)⟩
  r := (5286949658463 / 12500000000000 : ℚ)
  w := (775949360193 / 625000000000 : ℚ)
  center := (185175000000000007 / 200000000000000000 : ℚ)
  supportValue := (10733807813052451 / 50000000000000000 : ℚ)
  supportSlope := (-280810861890279 / 400000000000000 : ℚ)
  oldCenter := (10733807813052451 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2117
  oldLo := (429 / 2000 : ℚ)
  oldHi := (43 / 200 : ℚ)
  oldPieces := [piece_566, piece_567]
}

noncomputable def cell_14047 : Cell := { cellDefaults with
  domain := ⟨(18520000000000001 / 20000000000000000 : ℚ), (46312500000000001 / 50000000000000000 : ℚ)⟩
  r := (21139529676277 / 50000000000000 : ℚ)
  w := (6205448534731 / 5000000000000 : ℚ)
  center := (185225000000000007 / 200000000000000000 : ℚ)
  supportValue := (4295166611792553 / 20000000000000000 : ℚ)
  supportSlope := (-877537747227369 / 1250000000000000 : ℚ)
  oldCenter := (4295166611792553 / 20000000000000000 : ℚ)
  newCoefficients := coefficients_2118
  oldLo := (2146368715083799 / 10000000000000000 : ℚ)
  oldHi := (43 / 200 : ℚ)
  oldPieces := [piece_567]
}

noncomputable def cell_14048 : Cell := { cellDefaults with
  domain := ⟨(46312500000000001 / 50000000000000000 : ℚ), (92649999999999999 / 100000000000000000 : ℚ)⟩
  r := (21139529676277 / 50000000000000 : ℚ)
  w := (6205448534731 / 5000000000000 : ℚ)
  center := (185275000000000001 / 200000000000000000 : ℚ)
  supportValue := (1072914519161113 / 5000000000000000 : ℚ)
  supportSlope := (-876733083999653 / 1250000000000000 : ℚ)
  oldCenter := (1072914519161113 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_2118
  oldLo := (107 / 500 : ℚ)
  oldHi := (43 / 200 : ℚ)
  oldPieces := [piece_565, piece_566, piece_567]
}

noncomputable def cell_14049 : Cell := { cellDefaults with
  domain := ⟨(92649999999999999 / 100000000000000000 : ℚ), (46337500000000001 / 50000000000000000 : ℚ)⟩
  r := (21131266019911 / 50000000000000 : ℚ)
  w := (2481320569829 / 2000000000000 : ℚ)
  center := (185325000000000001 / 200000000000000000 : ℚ)
  supportValue := (10733255931826227 / 50000000000000000 : ℚ)
  supportSlope := (-7013859608188391 / 10000000000000000 : ℚ)
  oldCenter := (10733255931826227 / 50000000000000000 : ℚ)
  newCoefficients := coefficients_2119
  oldLo := (429 / 2000 : ℚ)
  oldHi := (43 / 200 : ℚ)
  oldPieces := [piece_566, piece_567]
}

theorem check_14000 : cell_14000.check = true := by
  decide +kernel

theorem check_14001 : cell_14001.check = true := by
  decide +kernel

theorem check_14002 : cell_14002.check = true := by
  decide +kernel

theorem check_14003 : cell_14003.check = true := by
  decide +kernel

theorem check_14004 : cell_14004.check = true := by
  decide +kernel

theorem check_14005 : cell_14005.check = true := by
  decide +kernel

theorem check_14006 : cell_14006.check = true := by
  decide +kernel

theorem check_14007 : cell_14007.check = true := by
  decide +kernel

theorem check_14008 : cell_14008.check = true := by
  decide +kernel

theorem check_14009 : cell_14009.check = true := by
  decide +kernel

theorem check_14010 : cell_14010.check = true := by
  decide +kernel

theorem check_14011 : cell_14011.check = true := by
  decide +kernel

theorem check_14012 : cell_14012.check = true := by
  decide +kernel

theorem check_14013 : cell_14013.check = true := by
  decide +kernel

theorem check_14014 : cell_14014.check = true := by
  decide +kernel

theorem check_14015 : cell_14015.check = true := by
  decide +kernel

theorem check_14016 : cell_14016.check = true := by
  decide +kernel

theorem check_14017 : cell_14017.check = true := by
  decide +kernel

theorem check_14018 : cell_14018.check = true := by
  decide +kernel

theorem check_14019 : cell_14019.check = true := by
  decide +kernel

theorem check_14020 : cell_14020.check = true := by
  decide +kernel

theorem check_14021 : cell_14021.check = true := by
  decide +kernel

theorem check_14022 : cell_14022.check = true := by
  decide +kernel

theorem check_14023 : cell_14023.check = true := by
  decide +kernel

theorem check_14024 : cell_14024.check = true := by
  decide +kernel

theorem check_14025 : cell_14025.check = true := by
  decide +kernel

theorem check_14026 : cell_14026.check = true := by
  decide +kernel

theorem check_14027 : cell_14027.check = true := by
  decide +kernel

theorem check_14028 : cell_14028.check = true := by
  decide +kernel

theorem check_14029 : cell_14029.check = true := by
  decide +kernel

theorem check_14030 : cell_14030.check = true := by
  decide +kernel

theorem check_14031 : cell_14031.check = true := by
  decide +kernel

theorem check_14032 : cell_14032.check = true := by
  decide +kernel

theorem check_14033 : cell_14033.check = true := by
  decide +kernel

theorem check_14034 : cell_14034.check = true := by
  decide +kernel

theorem check_14035 : cell_14035.check = true := by
  decide +kernel

theorem check_14036 : cell_14036.check = true := by
  decide +kernel

theorem check_14037 : cell_14037.check = true := by
  decide +kernel

theorem check_14038 : cell_14038.check = true := by
  decide +kernel

theorem check_14039 : cell_14039.check = true := by
  decide +kernel

theorem check_14040 : cell_14040.check = true := by
  decide +kernel

theorem check_14041 : cell_14041.check = true := by
  decide +kernel

theorem check_14042 : cell_14042.check = true := by
  decide +kernel

theorem check_14043 : cell_14043.check = true := by
  decide +kernel

theorem check_14044 : cell_14044.check = true := by
  decide +kernel

theorem check_14045 : cell_14045.check = true := by
  decide +kernel

theorem check_14046 : cell_14046.check = true := by
  decide +kernel

theorem check_14047 : cell_14047.check = true := by
  decide +kernel

theorem check_14048 : cell_14048.check = true := by
  decide +kernel

theorem check_14049 : cell_14049.check = true := by
  decide +kernel

noncomputable def cells : List Cell := [cell_14000, cell_14001, cell_14002, cell_14003, cell_14004, cell_14005, cell_14006, cell_14007, cell_14008, cell_14009, cell_14010, cell_14011, cell_14012, cell_14013, cell_14014, cell_14015, cell_14016, cell_14017, cell_14018, cell_14019, cell_14020, cell_14021, cell_14022, cell_14023, cell_14024, cell_14025, cell_14026, cell_14027, cell_14028, cell_14029, cell_14030, cell_14031, cell_14032, cell_14033, cell_14034, cell_14035, cell_14036, cell_14037, cell_14038, cell_14039, cell_14040, cell_14041, cell_14042, cell_14043, cell_14044, cell_14045, cell_14046, cell_14047, cell_14048, cell_14049]

theorem all_checked : cells.all Cell.check = true := by
  simp only [cells, List.all_cons, List.all_nil, check_14000, check_14001, check_14002, check_14003, check_14004, check_14005, check_14006, check_14007, check_14008, check_14009, check_14010, check_14011, check_14012, check_14013, check_14014, check_14015, check_14016, check_14017, check_14018, check_14019, check_14020, check_14021, check_14022, check_14023, check_14024, check_14025, check_14026, check_14027, check_14028, check_14029, check_14030, check_14031, check_14032, check_14033, check_14034, check_14035, check_14036, check_14037, check_14038, check_14039, check_14040, check_14041, check_14042, check_14043, check_14044, check_14045, check_14046, check_14047, check_14048, check_14049, Bool.and_self]

#print axioms all_checked
end LuWang.SourceCertificates.Chunk0280

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0280
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0280
open AnalyticBounds.ExpressionCertificate

theorem linked_14000 : Linked cell_14000 pieces := by
  apply Linked.of_piece piece_2093 piece_2093_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14000, List.cons_subset, List.nil_subset, and_true]
  exact piece_571_mem

theorem linked_14001 : Linked cell_14001 pieces := by
  apply Linked.of_piece piece_2094 piece_2094_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14001, List.cons_subset, List.nil_subset, and_true]
  exact piece_571_mem

theorem linked_14002 : Linked cell_14002 pieces := by
  apply Linked.of_piece piece_2094 piece_2094_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14002, List.cons_subset, List.nil_subset, and_true]
  exact piece_571_mem

theorem linked_14003 : Linked cell_14003 pieces := by
  apply Linked.of_piece piece_2095 piece_2095_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14003, List.cons_subset, List.nil_subset, and_true]
  exact piece_571_mem

theorem linked_14004 : Linked cell_14004 pieces := by
  apply Linked.of_piece piece_2095 piece_2095_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14004, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_570_mem, piece_571_mem⟩

theorem linked_14005 : Linked cell_14005 pieces := by
  apply Linked.of_piece piece_2096 piece_2096_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14005, List.cons_subset, List.nil_subset, and_true]
  exact piece_571_mem

theorem linked_14006 : Linked cell_14006 pieces := by
  apply Linked.of_piece piece_2096 piece_2096_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14006, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_570_mem, piece_571_mem⟩

theorem linked_14007 : Linked cell_14007 pieces := by
  apply Linked.of_piece piece_2097 piece_2097_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14007, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_570_mem, piece_571_mem⟩

theorem linked_14008 : Linked cell_14008 pieces := by
  apply Linked.of_piece piece_2097 piece_2097_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14008, List.cons_subset, List.nil_subset, and_true]
  exact piece_570_mem

theorem linked_14009 : Linked cell_14009 pieces := by
  apply Linked.of_piece piece_2098 piece_2098_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14009, List.cons_subset, List.nil_subset, and_true]
  exact piece_571_mem

theorem linked_14010 : Linked cell_14010 pieces := by
  apply Linked.of_piece piece_2099 piece_2099_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14010, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_570_mem, piece_571_mem⟩

theorem linked_14011 : Linked cell_14011 pieces := by
  apply Linked.of_piece piece_2099 piece_2099_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14011, List.cons_subset, List.nil_subset, and_true]
  exact piece_570_mem

theorem linked_14012 : Linked cell_14012 pieces := by
  apply Linked.of_piece piece_2100 piece_2100_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14012, List.cons_subset, List.nil_subset, and_true]
  exact piece_570_mem

theorem linked_14013 : Linked cell_14013 pieces := by
  apply Linked.of_piece piece_2100 piece_2100_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14013, List.cons_subset, List.nil_subset, and_true]
  exact piece_570_mem

theorem linked_14014 : Linked cell_14014 pieces := by
  apply Linked.of_piece piece_2101 piece_2101_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14014, List.cons_subset, List.nil_subset, and_true]
  exact piece_570_mem

theorem linked_14015 : Linked cell_14015 pieces := by
  apply Linked.of_piece piece_2101 piece_2101_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14015, List.cons_subset, List.nil_subset, and_true]
  exact piece_570_mem

theorem linked_14016 : Linked cell_14016 pieces := by
  apply Linked.of_piece piece_2102 piece_2102_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14016, List.cons_subset, List.nil_subset, and_true]
  exact piece_570_mem

theorem linked_14017 : Linked cell_14017 pieces := by
  apply Linked.of_piece piece_2102 piece_2102_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14017, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_569_mem, piece_570_mem⟩

theorem linked_14018 : Linked cell_14018 pieces := by
  apply Linked.of_piece piece_2103 piece_2103_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14018, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_569_mem, piece_570_mem⟩

theorem linked_14019 : Linked cell_14019 pieces := by
  apply Linked.of_piece piece_2103 piece_2103_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14019, List.cons_subset, List.nil_subset, and_true]
  exact piece_569_mem

theorem linked_14020 : Linked cell_14020 pieces := by
  apply Linked.of_piece piece_2104 piece_2104_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14020, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_569_mem, piece_570_mem⟩

theorem linked_14021 : Linked cell_14021 pieces := by
  apply Linked.of_piece piece_2104 piece_2104_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14021, List.cons_subset, List.nil_subset, and_true]
  exact piece_569_mem

theorem linked_14022 : Linked cell_14022 pieces := by
  apply Linked.of_piece piece_2105 piece_2105_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14022, List.cons_subset, List.nil_subset, and_true]
  exact piece_569_mem

theorem linked_14023 : Linked cell_14023 pieces := by
  apply Linked.of_piece piece_2105 piece_2105_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14023, List.cons_subset, List.nil_subset, and_true]
  exact piece_569_mem

theorem linked_14024 : Linked cell_14024 pieces := by
  apply Linked.of_piece piece_2106 piece_2106_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14024, List.cons_subset, List.nil_subset, and_true]
  exact piece_569_mem

theorem linked_14025 : Linked cell_14025 pieces := by
  apply Linked.of_piece piece_2106 piece_2106_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14025, List.cons_subset, List.nil_subset, and_true]
  exact piece_569_mem

theorem linked_14026 : Linked cell_14026 pieces := by
  apply Linked.of_piece piece_2107 piece_2107_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14026, List.cons_subset, List.nil_subset, and_true]
  exact piece_569_mem

theorem linked_14027 : Linked cell_14027 pieces := by
  apply Linked.of_piece piece_2107 piece_2107_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14027, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_568_mem, piece_569_mem⟩

theorem linked_14028 : Linked cell_14028 pieces := by
  apply Linked.of_piece piece_2108 piece_2108_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14028, List.cons_subset, List.nil_subset, and_true]
  exact piece_569_mem

theorem linked_14029 : Linked cell_14029 pieces := by
  apply Linked.of_piece piece_2108 piece_2108_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14029, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_568_mem, piece_569_mem⟩

theorem linked_14030 : Linked cell_14030 pieces := by
  apply Linked.of_piece piece_2109 piece_2109_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14030, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_568_mem, piece_569_mem⟩

theorem linked_14031 : Linked cell_14031 pieces := by
  apply Linked.of_piece piece_2109 piece_2109_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14031, List.cons_subset, List.nil_subset, and_true]
  exact piece_568_mem

theorem linked_14032 : Linked cell_14032 pieces := by
  apply Linked.of_piece piece_2110 piece_2110_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14032, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_568_mem, piece_569_mem⟩

theorem linked_14033 : Linked cell_14033 pieces := by
  apply Linked.of_piece piece_2111 piece_2111_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14033, List.cons_subset, List.nil_subset, and_true]
  exact piece_568_mem

theorem linked_14034 : Linked cell_14034 pieces := by
  apply Linked.of_piece piece_2111 piece_2111_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14034, List.cons_subset, List.nil_subset, and_true]
  exact piece_568_mem

theorem linked_14035 : Linked cell_14035 pieces := by
  apply Linked.of_piece piece_2112 piece_2112_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14035, List.cons_subset, List.nil_subset, and_true]
  exact piece_568_mem

theorem linked_14036 : Linked cell_14036 pieces := by
  apply Linked.of_piece piece_2112 piece_2112_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14036, List.cons_subset, List.nil_subset, and_true]
  exact piece_568_mem

theorem linked_14037 : Linked cell_14037 pieces := by
  apply Linked.of_piece piece_2113 piece_2113_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14037, List.cons_subset, List.nil_subset, and_true]
  exact piece_568_mem

theorem linked_14038 : Linked cell_14038 pieces := by
  apply Linked.of_piece piece_2113 piece_2113_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14038, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_567_mem, piece_568_mem⟩

theorem linked_14039 : Linked cell_14039 pieces := by
  apply Linked.of_piece piece_2114 piece_2114_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14039, List.cons_subset, List.nil_subset, and_true]
  exact piece_568_mem

theorem linked_14040 : Linked cell_14040 pieces := by
  apply Linked.of_piece piece_2114 piece_2114_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14040, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_567_mem, piece_568_mem⟩

theorem linked_14041 : Linked cell_14041 pieces := by
  apply Linked.of_piece piece_2115 piece_2115_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14041, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_567_mem, piece_568_mem⟩

theorem linked_14042 : Linked cell_14042 pieces := by
  apply Linked.of_piece piece_2115 piece_2115_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14042, List.cons_subset, List.nil_subset, and_true]
  exact piece_567_mem

theorem linked_14043 : Linked cell_14043 pieces := by
  apply Linked.of_piece piece_2116 piece_2116_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14043, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_567_mem, piece_568_mem⟩

theorem linked_14044 : Linked cell_14044 pieces := by
  apply Linked.of_piece piece_2116 piece_2116_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14044, List.cons_subset, List.nil_subset, and_true]
  exact piece_567_mem

theorem linked_14045 : Linked cell_14045 pieces := by
  apply Linked.of_piece piece_2117 piece_2117_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14045, List.cons_subset, List.nil_subset, and_true]
  exact piece_567_mem

theorem linked_14046 : Linked cell_14046 pieces := by
  apply Linked.of_piece piece_2117 piece_2117_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14046, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_566_mem, piece_567_mem⟩

theorem linked_14047 : Linked cell_14047 pieces := by
  apply Linked.of_piece piece_2118 piece_2118_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14047, List.cons_subset, List.nil_subset, and_true]
  exact piece_567_mem

theorem linked_14048 : Linked cell_14048 pieces := by
  apply Linked.of_piece piece_2118 piece_2118_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14048, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_565_mem, ⟨piece_566_mem, piece_567_mem⟩⟩

theorem linked_14049 : Linked cell_14049 pieces := by
  apply Linked.of_piece piece_2119 piece_2119_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_14049, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_566_mem, piece_567_mem⟩

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0280.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0280.cells,List.forall_mem_cons]
  exact ⟨linked_14000, linked_14001, linked_14002, linked_14003, linked_14004, linked_14005, linked_14006, linked_14007, linked_14008, linked_14009, linked_14010, linked_14011, linked_14012, linked_14013, linked_14014, linked_14015, linked_14016, linked_14017, linked_14018, linked_14019, linked_14020, linked_14021, linked_14022, linked_14023, linked_14024, linked_14025, linked_14026, linked_14027, linked_14028, linked_14029, linked_14030, linked_14031, linked_14032, linked_14033, linked_14034, linked_14035, linked_14036, linked_14037, linked_14038, linked_14039, linked_14040, linked_14041, linked_14042, linked_14043, linked_14044, linked_14045, linked_14046, linked_14047, linked_14048, linked_14049, by simp⟩

theorem covered : covers (182950000000000013 / 200000000000000000 : ℚ) (46337500000000001 / 50000000000000000 : ℚ)
    (SourceCertificates.Chunk0280.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0280
