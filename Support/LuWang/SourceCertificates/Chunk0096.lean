import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0096
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(14443749999999999 / 100000000000000000 : ℚ), (14446874999999999 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (99880283314597 / 100000000000000 : ℚ)
  w := (19887468637221 / 20000000000000 : ℚ)
  center := (14445312499999999 / 100000000000000000 : ℚ)
  supportValue := (5089804420409447 / 10000000000000000 : ℚ)
  supportSlope := (2442447820191873 / 500000000000000 : ℚ)
  oldCenter := (5089804420409447 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_414
  oldLo := (10209999999999999 / 20000000000000000 : ℚ)
  oldHi := (10229999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1213]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_4800 : Cell := { cellDefaults with
  r := (99990962975321 / 100000000000000 : ℚ)
  w := (19883602535657 / 20000000000000 : ℚ)
  newCoefficients := coefficients_413
  oldLo := (10169999999999999 / 20000000000000000 : ℚ)
  oldHi := (10189999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1208, piece_1209]
}

def cell_4801 : Cell := { cellDefaults with
  domain := ⟨(14446874999999999 / 100000000000000000 : ℚ), (14449999999999999 / 100000000000000000 : ℚ)⟩
  r := (99990962975321 / 100000000000000 : ℚ)
  w := (19883602535657 / 20000000000000 : ℚ)
  center := (14448437499999999 / 100000000000000000 : ℚ)
  supportValue := (5091330949983901 / 10000000000000000 : ℚ)
  supportSlope := (4885274519430993 / 1000000000000000 : ℚ)
  oldCenter := (5091330949983901 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_413
  oldLo := (50900000000000001 / 100000000000000000 : ℚ)
  oldHi := (10189999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1209]
}

def cell_4802 : Cell := { cellDefaults with
  domain := ⟨(14449999999999999 / 100000000000000000 : ℚ), (14453124999999999 / 100000000000000000 : ℚ)⟩
  center := (14451562499999999 / 100000000000000000 : ℚ)
  supportValue := (5089025622819041 / 10000000000000000 : ℚ)
  supportSlope := (9764755557512217 / 2000000000000000 : ℚ)
  oldCenter := (5089025622819041 / 10000000000000000 : ℚ)
  oldLo := (10169999999999999 / 20000000000000000 : ℚ)
  oldHi := (50900000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1208]
}

def cell_4803 : Cell := { cellDefaults with
  domain := ⟨(14453124999999999 / 100000000000000000 : ℚ), (14456249999999999 / 100000000000000000 : ℚ)⟩
  center := (14454687499999999 / 100000000000000000 : ℚ)
  supportValue := (2545275705161029 / 5000000000000000 : ℚ)
  supportSlope := (4882521114190297 / 1000000000000000 : ℚ)
  oldCenter := (2545275705161029 / 5000000000000000 : ℚ)
  oldLo := (10169999999999999 / 20000000000000000 : ℚ)
  oldHi := (10189999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1208, piece_1209]
}

def cell_4804 : Cell := { cellDefaults with
  domain := ⟨(14456249999999999 / 100000000000000000 : ℚ), (14459374999999999 / 100000000000000000 : ℚ)⟩
  center := (14457812499999999 / 100000000000000000 : ℚ)
  supportValue := (509207731352449 / 1000000000000000 : ℚ)
  supportSlope := (1220850439614729 / 250000000000000 : ℚ)
  oldCenter := (509207731352449 / 1000000000000000 : ℚ)
  oldLo := (50900000000000001 / 100000000000000000 : ℚ)
  oldHi := (10189999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1209]
}

def cell_4805 : Cell := { cellDefaults with
  domain := ⟨(14459374999999999 / 100000000000000000 : ℚ), (14462499999999999 / 100000000000000000 : ℚ)⟩
  center := (14460937499999999 / 100000000000000000 : ℚ)
  supportValue := (5093603536174821 / 10000000000000000 : ℚ)
  supportSlope := (244221218458307 / 50000000000000 : ℚ)
  oldCenter := (5093603536174821 / 10000000000000000 : ℚ)
  oldLo := (50900000000000001 / 100000000000000000 : ℚ)
  oldHi := (10189999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1209]
}

def cell_4806 : Cell := { cellDefaults with
  domain := ⟨(14462499999999999 / 100000000000000000 : ℚ), (14465624999999999 / 100000000000000000 : ℚ)⟩
  center := (14464062499999999 / 100000000000000000 : ℚ)
  supportValue := (509513005129803 / 1000000000000000 : ℚ)
  supportSlope := (2442425521628877 / 500000000000000 : ℚ)
  oldCenter := (509513005129803 / 1000000000000000 : ℚ)
  oldLo := (50900000000000001 / 100000000000000000 : ℚ)
  oldHi := (51000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1209, piece_1210]
}

def cell_4807 : Cell := { cellDefaults with
  domain := ⟨(14465624999999999 / 100000000000000000 : ℚ), (14468749999999999 / 100000000000000000 : ℚ)⟩
  center := (14467187499999999 / 100000000000000000 : ℚ)
  supportValue := (5096656594707609 / 10000000000000000 : ℚ)
  supportSlope := (9770898833146191 / 2000000000000000 : ℚ)
  oldCenter := (5096656594707609 / 10000000000000000 : ℚ)
  oldLo := (10189999999999999 / 20000000000000000 : ℚ)
  oldHi := (51000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1210]
}

def cell_4808 : Cell := { cellDefaults with
  domain := ⟨(14468749999999999 / 100000000000000000 : ℚ), (14471874999999999 / 100000000000000000 : ℚ)⟩
  center := (14470312499999999 / 100000000000000000 : ℚ)
  supportValue := (5098183456936561 / 10000000000000000 : ℚ)
  supportSlope := (977294002649387 / 200000000000000 : ℚ)
  oldCenter := (5098183456936561 / 10000000000000000 : ℚ)
  oldLo := (10189999999999999 / 20000000000000000 : ℚ)
  oldHi := (51000000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1210]
}

def cell_4809 : Cell := { cellDefaults with
  domain := ⟨(14471874999999999 / 100000000000000000 : ℚ), (14474999999999999 / 100000000000000000 : ℚ)⟩
  center := (14473437499999999 / 100000000000000000 : ℚ)
  supportValue := (1274927659554769 / 2500000000000000 : ℚ)
  supportSlope := (2443587948787851 / 500000000000000 : ℚ)
  oldCenter := (1274927659554769 / 2500000000000000 : ℚ)
  oldLo := (10189999999999999 / 20000000000000000 : ℚ)
  oldHi := (10209999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1210, piece_1211]
}

def cell_4810 : Cell := { cellDefaults with
  domain := ⟨(14474999999999999 / 100000000000000000 : ℚ), (14478124999999999 / 100000000000000000 : ℚ)⟩
  center := (14476562499999999 / 100000000000000000 : ℚ)
  supportValue := (5101237881385119 / 10000000000000000 : ℚ)
  supportSlope := (977499184405417 / 200000000000000 : ℚ)
  oldCenter := (5101237881385119 / 10000000000000000 : ℚ)
  oldLo := (51000000000000001 / 100000000000000000 : ℚ)
  oldHi := (10209999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1211]
}

def cell_4811 : Cell := { cellDefaults with
  domain := ⟨(14478124999999999 / 100000000000000000 : ℚ), (14481249999999999 / 100000000000000000 : ℚ)⟩
  center := (14479687499999999 / 100000000000000000 : ℚ)
  supportValue := (159461418213417 / 312500000000000 : ℚ)
  supportSlope := (97770289691681 / 20000000000000 : ℚ)
  oldCenter := (159461418213417 / 312500000000000 : ℚ)
  oldLo := (51000000000000001 / 100000000000000000 : ℚ)
  oldHi := (10209999999999999 / 20000000000000000 : ℚ)
  oldPieces := [piece_1211]
}

def cell_4812 : Cell := { cellDefaults with
  domain := ⟨(14481249999999999 / 100000000000000000 : ℚ), (14484374999999999 / 100000000000000000 : ℚ)⟩
  center := (14482812499999999 / 100000000000000000 : ℚ)
  supportValue := (319018325168163 / 625000000000000 : ℚ)
  supportSlope := (305593476636723 / 62500000000000 : ℚ)
  oldCenter := (319018325168163 / 625000000000000 : ℚ)
  oldLo := (51000000000000001 / 100000000000000000 : ℚ)
  oldHi := (51100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1211, piece_1212]
}

def cell_4813 : Cell := { cellDefaults with
  domain := ⟨(14484374999999999 / 100000000000000000 : ℚ), (14487499999999999 / 100000000000000000 : ℚ)⟩
  center := (14485937499999999 / 100000000000000000 : ℚ)
  supportValue := (638227646409787 / 1250000000000000 : ℚ)
  supportSlope := (9779083189876303 / 2000000000000000 : ℚ)
  oldCenter := (638227646409787 / 1250000000000000 : ℚ)
  oldHi := (51100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1212]
}

def cell_4814 : Cell := { cellDefaults with
  domain := ⟨(14487499999999999 / 100000000000000000 : ℚ), (14490624999999999 / 100000000000000000 : ℚ)⟩
  center := (14489062499999999 / 100000000000000000 : ℚ)
  supportValue := (255367465583779 / 500000000000000 : ℚ)
  supportSlope := (489055811025807 / 100000000000000 : ℚ)
  oldCenter := (255367465583779 / 500000000000000 : ℚ)
  oldHi := (51100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1212]
}

def cell_4815 : Cell := { cellDefaults with
  domain := ⟨(14490624999999999 / 100000000000000000 : ℚ), (14493749999999999 / 100000000000000000 : ℚ)⟩
  center := (14492187499999999 / 100000000000000000 : ℚ)
  supportValue := (5108877769849273 / 10000000000000000 : ℚ)
  supportSlope := (978315072890723 / 200000000000000 : ℚ)
  oldCenter := (5108877769849273 / 10000000000000000 : ℚ)
  oldHi := (51100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1212]
}

def cell_4816 : Cell := { cellDefaults with
  domain := ⟨(14493749999999999 / 100000000000000000 : ℚ), (14496874999999999 / 100000000000000000 : ℚ)⟩
  center := (14495312499999999 / 100000000000000000 : ℚ)
  supportValue := (20441625849139 / 40000000000000 : ℚ)
  supportSlope := (2445910639567117 / 500000000000000 : ℚ)
  oldCenter := (20441625849139 / 40000000000000 : ℚ)
  oldPieces := [piece_1212, piece_1213]
}

def cell_4817 : Cell := { cellDefaults with
  domain := ⟨(14496874999999999 / 100000000000000000 : ℚ), (14499999999999999 / 100000000000000000 : ℚ)⟩
  center := (14498437499999999 / 100000000000000000 : ℚ)
  supportValue := (2555967620656047 / 5000000000000000 : ℚ)
  supportSlope := (489260069516817 / 100000000000000 : ℚ)
  oldCenter := (2555967620656047 / 5000000000000000 : ℚ)
  oldLo := (51100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1213]
}

def cell_4818 : Cell := { cellDefaults with
  domain := ⟨(14499999999999999 / 100000000000000000 : ℚ), (14503124999999999 / 100000000000000000 : ℚ)⟩
  r := (99769902947777 / 100000000000000 : ℚ)
  w := (19891308529919 / 20000000000000 : ℚ)
  center := (14501562499999999 / 100000000000000000 : ℚ)
  supportValue := (5109614087759009 / 10000000000000000 : ℚ)
  supportSlope := (2444712751348277 / 500000000000000 : ℚ)
  oldCenter := (5109614087759009 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_415
  oldPieces := [piece_1212, piece_1213]
}

def cell_4819 : Cell := { cellDefaults with
  domain := ⟨(14503124999999999 / 100000000000000000 : ℚ), (14506249999999999 / 100000000000000000 : ℚ)⟩
  r := (99769902947777 / 100000000000000 : ℚ)
  w := (19891308529919 / 20000000000000 : ℚ)
  center := (14504687499999999 / 100000000000000000 : ℚ)
  supportValue := (319446377186123 / 625000000000000 : ℚ)
  supportSlope := (4889686068505483 / 1000000000000000 : ℚ)
  oldCenter := (319446377186123 / 625000000000000 : ℚ)
  newCoefficients := coefficients_415
  oldLo := (51100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1213]
}

def cell_4820 : Cell := { cellDefaults with
  domain := ⟨(14506249999999999 / 100000000000000000 : ℚ), (14509374999999999 / 100000000000000000 : ℚ)⟩
  r := (99769902947777 / 100000000000000 : ℚ)
  w := (19891308529919 / 20000000000000 : ℚ)
  center := (14507812499999999 / 100000000000000000 : ℚ)
  supportValue := (5112670220511089 / 10000000000000000 : ℚ)
  supportSlope := (4890702505687017 / 1000000000000000 : ℚ)
  oldCenter := (5112670220511089 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_415
  oldLo := (51100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1213]
}

def cell_4821 : Cell := { cellDefaults with
  domain := ⟨(14509374999999999 / 100000000000000000 : ℚ), (14512499999999999 / 100000000000000000 : ℚ)⟩
  r := (99769902947777 / 100000000000000 : ℚ)
  w := (19891308529919 / 20000000000000 : ℚ)
  center := (14510937499999999 / 100000000000000000 : ℚ)
  supportValue := (127854968094899 / 250000000000000 : ℚ)
  supportSlope := (611464960022623 / 125000000000000 : ℚ)
  oldCenter := (127854968094899 / 250000000000000 : ℚ)
  newCoefficients := coefficients_415
  oldLo := (51100000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1213]
}

def cell_4822 : Cell := { cellDefaults with
  domain := ⟨(14512499999999999 / 100000000000000000 : ℚ), (14515624999999999 / 100000000000000000 : ℚ)⟩
  r := (99769902947777 / 100000000000000 : ℚ)
  w := (19891308529919 / 20000000000000 : ℚ)
  center := (14514062499999999 / 100000000000000000 : ℚ)
  supportValue := (1278931848969851 / 2500000000000000 : ℚ)
  supportSlope := (489175790763241 / 100000000000000 : ℚ)
  oldCenter := (1278931848969851 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_415
  oldLo := (51100000000000001 / 100000000000000000 : ℚ)
  oldHi := (51200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1213, piece_1214]
}

def cell_4823 : Cell := { cellDefaults with
  domain := ⟨(14515624999999999 / 100000000000000000 : ℚ), (14518749999999999 / 100000000000000000 : ℚ)⟩
  r := (99769902947777 / 100000000000000 : ℚ)
  w := (19891308529919 / 20000000000000 : ℚ)
  center := (14517187499999999 / 100000000000000000 : ℚ)
  supportValue := (5117256221089281 / 10000000000000000 : ℚ)
  supportSlope := (978549687226149 / 200000000000000 : ℚ)
  oldCenter := (5117256221089281 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_415
  oldLo := (10229999999999999 / 20000000000000000 : ℚ)
  oldHi := (51200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1214]
}

def cell_4824 : Cell := { cellDefaults with
  domain := ⟨(14518749999999999 / 100000000000000000 : ℚ), (14521874999999999 / 100000000000000000 : ℚ)⟩
  r := (99769902947777 / 100000000000000 : ℚ)
  w := (19891308529919 / 20000000000000 : ℚ)
  center := (14520312499999999 / 100000000000000000 : ℚ)
  supportValue := (1023757072680671 / 2000000000000000 : ℚ)
  supportSlope := (1223440883911131 / 250000000000000 : ℚ)
  oldCenter := (1023757072680671 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_415
  oldLo := (10229999999999999 / 20000000000000000 : ℚ)
  oldHi := (51200000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1214]
}

def cell_4825 : Cell := { cellDefaults with
  domain := ⟨(14521874999999999 / 100000000000000000 : ℚ), (14524999999999999 / 100000000000000000 : ℚ)⟩
  r := (99769902947777 / 100000000000000 : ℚ)
  w := (19891308529919 / 20000000000000 : ℚ)
  center := (14523437499999999 / 100000000000000000 : ℚ)
  supportValue := (5120314758761801 / 10000000000000000 : ℚ)
  supportSlope := (4894073940601373 / 1000000000000000 : ℚ)
  oldCenter := (5120314758761801 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_415
  oldLo := (10229999999999999 / 20000000000000000 : ℚ)
  oldHi := (12812499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1214, piece_1215]
}

def cell_4826 : Cell := { cellDefaults with
  domain := ⟨(14524999999999999 / 100000000000000000 : ℚ), (14528124999999999 / 100000000000000000 : ℚ)⟩
  r := (99769902947777 / 100000000000000 : ℚ)
  w := (19891308529919 / 20000000000000 : ℚ)
  center := (14526562499999999 / 100000000000000000 : ℚ)
  supportValue := (5121844223321923 / 10000000000000000 : ℚ)
  supportSlope := (305924582213013 / 62500000000000 : ℚ)
  oldCenter := (5121844223321923 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_415
  oldLo := (51200000000000001 / 100000000000000000 : ℚ)
  oldHi := (12812499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1215]
}

def cell_4827 : Cell := { cellDefaults with
  domain := ⟨(14528124999999999 / 100000000000000000 : ℚ), (14531249999999999 / 100000000000000000 : ℚ)⟩
  r := (99769902947777 / 100000000000000 : ℚ)
  w := (19891308529919 / 20000000000000 : ℚ)
  center := (14529687499999999 / 100000000000000000 : ℚ)
  supportValue := (2561687002167367 / 5000000000000000 : ℚ)
  supportSlope := (1958322530909129 / 400000000000000 : ℚ)
  oldCenter := (2561687002167367 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_415
  oldLo := (51200000000000001 / 100000000000000000 : ℚ)
  oldHi := (12812499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1215]
}

def cell_4828 : Cell := { cellDefaults with
  domain := ⟨(14531249999999999 / 100000000000000000 : ℚ), (14534374999999999 / 100000000000000000 : ℚ)⟩
  r := (99769902947777 / 100000000000000 : ℚ)
  w := (19891308529919 / 20000000000000 : ℚ)
  center := (14532812499999999 / 100000000000000000 : ℚ)
  supportValue := (2562452051013641 / 5000000000000000 : ℚ)
  supportSlope := (612048108945551 / 125000000000000 : ℚ)
  oldCenter := (2562452051013641 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_415
  oldLo := (51200000000000001 / 100000000000000000 : ℚ)
  oldHi := (51300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1215, piece_1216]
}

def cell_4829 : Cell := { cellDefaults with
  domain := ⟨(14534374999999999 / 100000000000000000 : ℚ), (14537499999999999 / 100000000000000000 : ℚ)⟩
  r := (99769902947777 / 100000000000000 : ℚ)
  w := (19891308529919 / 20000000000000 : ℚ)
  center := (14535937499999999 / 100000000000000000 : ℚ)
  supportValue := (5126434224949231 / 10000000000000000 : ℚ)
  supportSlope := (4896837118426589 / 1000000000000000 : ℚ)
  oldCenter := (5126434224949231 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_415
  oldLo := (12812499999999999 / 25000000000000000 : ℚ)
  oldHi := (51300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1216]
}

def cell_4830 : Cell := { cellDefaults with
  domain := ⟨(14537499999999999 / 100000000000000000 : ℚ), (14540624999999999 / 100000000000000000 : ℚ)⟩
  r := (99769902947777 / 100000000000000 : ℚ)
  w := (19891308529919 / 20000000000000 : ℚ)
  center := (14539062499999999 / 100000000000000000 : ℚ)
  supportValue := (5127964644324677 / 10000000000000000 : ℚ)
  supportSlope := (1224462011035321 / 250000000000000 : ℚ)
  oldCenter := (5127964644324677 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_415
  oldLo := (12812499999999999 / 25000000000000000 : ℚ)
  oldHi := (51300000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1216]
}

def cell_4831 : Cell := { cellDefaults with
  domain := ⟨(14540624999999999 / 100000000000000000 : ℚ), (14543749999999999 / 100000000000000000 : ℚ)⟩
  r := (99769902947777 / 100000000000000 : ℚ)
  w := (19891308529919 / 20000000000000 : ℚ)
  center := (14542187499999999 / 100000000000000000 : ℚ)
  supportValue := (5129495379727061 / 10000000000000000 : ℚ)
  supportSlope := (2449345326239083 / 500000000000000 : ℚ)
  oldCenter := (5129495379727061 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_415
  oldLo := (12812499999999999 / 25000000000000000 : ℚ)
  oldHi := (5132960893854749 / 10000000000000000 : ℚ)
  oldPieces := [piece_1216, piece_1217]
}

def cell_4832 : Cell := { cellDefaults with
  domain := ⟨(14543749999999999 / 100000000000000000 : ℚ), (14546874999999999 / 100000000000000000 : ℚ)⟩
  r := (99769902947777 / 100000000000000 : ℚ)
  w := (19891308529919 / 20000000000000 : ℚ)
  center := (14545312499999999 / 100000000000000000 : ℚ)
  supportValue := (5131026223645699 / 10000000000000000 : ℚ)
  supportSlope := (9797759324676747 / 2000000000000000 : ℚ)
  oldCenter := (5131026223645699 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_415
  oldLo := (51300000000000001 / 100000000000000000 : ℚ)
  oldHi := (5132960893854749 / 10000000000000000 : ℚ)
  oldPieces := [piece_1217]
}

def cell_4833 : Cell := { cellDefaults with
  domain := ⟨(14546874999999999 / 100000000000000000 : ℚ), (14549999999999999 / 100000000000000000 : ℚ)⟩
  r := (99769902947777 / 100000000000000 : ℚ)
  w := (19891308529919 / 20000000000000 : ℚ)
  center := (14548437499999999 / 100000000000000000 : ℚ)
  supportValue := (5132557281051947 / 10000000000000000 : ℚ)
  supportSlope := (9799777862241399 / 2000000000000000 : ℚ)
  oldCenter := (5132557281051947 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_415
  oldLo := (51300000000000001 / 100000000000000000 : ℚ)
  oldHi := (12837499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1217, piece_1218]
}

def cell_4834 : Cell := { cellDefaults with
  domain := ⟨(14549999999999999 / 100000000000000000 : ℚ), (14553124999999999 / 100000000000000000 : ℚ)⟩
  r := (49829908042007 / 50000000000000 : ℚ)
  w := (99475619292439 / 100000000000000 : ℚ)
  center := (14551562499999999 / 100000000000000000 : ℚ)
  supportValue := (5130220310652697 / 10000000000000000 : ℚ)
  supportSlope := (4896297422884999 / 1000000000000000 : ℚ)
  oldCenter := (5130220310652697 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_416
  oldLo := (12812499999999999 / 25000000000000000 : ℚ)
  oldHi := (5132960893854749 / 10000000000000000 : ℚ)
  oldPieces := [piece_1216, piece_1217]
}

def cell_4835 : Cell := { cellDefaults with
  domain := ⟨(14553124999999999 / 100000000000000000 : ℚ), (14556249999999999 / 100000000000000000 : ℚ)⟩
  r := (49829908042007 / 50000000000000 : ℚ)
  w := (99475619292439 / 100000000000000 : ℚ)
  center := (14554687499999999 / 100000000000000000 : ℚ)
  supportValue := (641468806420997 / 1250000000000000 : ℚ)
  supportSlope := (4896955942260917 / 1000000000000000 : ℚ)
  oldCenter := (641468806420997 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_416
  oldLo := (51300000000000001 / 100000000000000000 : ℚ)
  oldHi := (5132960893854749 / 10000000000000000 : ℚ)
  oldPieces := [piece_1217]
}

def cell_4836 : Cell := { cellDefaults with
  domain := ⟨(14556249999999999 / 100000000000000000 : ℚ), (14559374999999999 / 100000000000000000 : ℚ)⟩
  r := (49829908042007 / 50000000000000 : ℚ)
  w := (99475619292439 / 100000000000000 : ℚ)
  center := (14557812499999999 / 100000000000000000 : ℚ)
  supportValue := (5133280907876273 / 10000000000000000 : ℚ)
  supportSlope := (612245864069827 / 125000000000000 : ℚ)
  oldCenter := (5133280907876273 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_416
  oldLo := (51300000000000001 / 100000000000000000 : ℚ)
  oldHi := (12837499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1217, piece_1218]
}

def cell_4837 : Cell := { cellDefaults with
  domain := ⟨(14559374999999999 / 100000000000000000 : ℚ), (14562499999999999 / 100000000000000000 : ℚ)⟩
  r := (49829908042007 / 50000000000000 : ℚ)
  w := (99475619292439 / 100000000000000 : ℚ)
  center := (14560937499999999 / 100000000000000000 : ℚ)
  supportValue := (5134811680428909 / 10000000000000000 : ℚ)
  supportSlope := (306162893756623 / 62500000000000 : ℚ)
  oldCenter := (5134811680428909 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_416
  oldLo := (5132960893854749 / 10000000000000000 : ℚ)
  oldHi := (51400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1218, piece_1219]
}

def cell_4838 : Cell := { cellDefaults with
  domain := ⟨(14562499999999999 / 100000000000000000 : ℚ), (14565624999999999 / 100000000000000000 : ℚ)⟩
  r := (49829908042007 / 50000000000000 : ℚ)
  w := (99475619292439 / 100000000000000 : ℚ)
  center := (14564062499999999 / 100000000000000000 : ℚ)
  supportValue := (5136342498454713 / 10000000000000000 : ℚ)
  supportSlope := (4899001405629377 / 1000000000000000 : ℚ)
  oldCenter := (5136342498454713 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_416
  oldLo := (12837499999999999 / 25000000000000000 : ℚ)
  oldHi := (51400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1219]
}

def cell_4839 : Cell := { cellDefaults with
  domain := ⟨(14565624999999999 / 100000000000000000 : ℚ), (14568749999999999 / 100000000000000000 : ℚ)⟩
  r := (49829908042007 / 50000000000000 : ℚ)
  w := (99475619292439 / 100000000000000 : ℚ)
  center := (14567187499999999 / 100000000000000000 : ℚ)
  supportValue := (2568936796917493 / 5000000000000000 : ℚ)
  supportSlope := (4900010186524639 / 1000000000000000 : ℚ)
  oldCenter := (2568936796917493 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_416
  oldLo := (12837499999999999 / 25000000000000000 : ℚ)
  oldHi := (51400000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1219]
}

def cell_4840 : Cell := { cellDefaults with
  domain := ⟨(14568749999999999 / 100000000000000000 : ℚ), (14571874999999999 / 100000000000000000 : ℚ)⟩
  r := (49829908042007 / 50000000000000 : ℚ)
  w := (99475619292439 / 100000000000000 : ℚ)
  center := (14570312499999999 / 100000000000000000 : ℚ)
  supportValue := (256970250228543 / 500000000000000 : ℚ)
  supportSlope := (4900909832549871 / 1000000000000000 : ℚ)
  oldCenter := (256970250228543 / 500000000000000 : ℚ)
  newCoefficients := coefficients_416
  oldLo := (12837499999999999 / 25000000000000000 : ℚ)
  oldHi := (12862499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1219, piece_1220]
}

def cell_4841 : Cell := { cellDefaults with
  domain := ⟨(14571874999999999 / 100000000000000000 : ℚ), (14574999999999999 / 100000000000000000 : ℚ)⟩
  r := (49829908042007 / 50000000000000 : ℚ)
  w := (99475619292439 / 100000000000000 : ℚ)
  center := (14573437499999999 / 100000000000000000 : ℚ)
  supportValue := (321308533932677 / 625000000000000 : ℚ)
  supportSlope := (2450522795319543 / 500000000000000 : ℚ)
  oldCenter := (321308533932677 / 625000000000000 : ℚ)
  newCoefficients := coefficients_416
  oldLo := (51400000000000001 / 100000000000000000 : ℚ)
  oldHi := (12862499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1220]
}

def cell_4842 : Cell := { cellDefaults with
  domain := ⟨(14574999999999999 / 100000000000000000 : ℚ), (14578124999999999 / 100000000000000000 : ℚ)⟩
  r := (49829908042007 / 50000000000000 : ℚ)
  w := (99475619292439 / 100000000000000 : ℚ)
  center := (14576562499999999 / 100000000000000000 : ℚ)
  supportValue := (2571234138398537 / 5000000000000000 : ℚ)
  supportSlope := (1225513090500563 / 250000000000000 : ℚ)
  oldCenter := (2571234138398537 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_416
  oldLo := (51400000000000001 / 100000000000000000 : ℚ)
  oldHi := (12862499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1220]
}

def cell_4843 : Cell := { cellDefaults with
  domain := ⟨(14578124999999999 / 100000000000000000 : ℚ), (14581249999999999 / 100000000000000000 : ℚ)⟩
  r := (49829908042007 / 50000000000000 : ℚ)
  w := (99475619292439 / 100000000000000 : ℚ)
  center := (14579687499999999 / 100000000000000000 : ℚ)
  supportValue := (643000040674763 / 1250000000000000 : ℚ)
  supportSlope := (2451529921248863 / 500000000000000 : ℚ)
  oldCenter := (643000040674763 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_416
  oldLo := (51400000000000001 / 100000000000000000 : ℚ)
  oldHi := (12862499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1220]
}

def cell_4844 : Cell := { cellDefaults with
  domain := ⟨(14581249999999999 / 100000000000000000 : ℚ), (14584374999999999 / 100000000000000000 : ℚ)⟩
  r := (49829908042007 / 50000000000000 : ℚ)
  w := (99475619292439 / 100000000000000 : ℚ)
  center := (14582812499999999 / 100000000000000000 : ℚ)
  supportValue := (1286383145632451 / 2500000000000000 : ℚ)
  supportSlope := (4903237282082529 / 1000000000000000 : ℚ)
  oldCenter := (1286383145632451 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_416
  oldLo := (51400000000000001 / 100000000000000000 : ℚ)
  oldHi := (51500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1220, piece_1221]
}

def cell_4845 : Cell := { cellDefaults with
  domain := ⟨(14584374999999999 / 100000000000000000 : ℚ), (14587499999999999 / 100000000000000000 : ℚ)⟩
  r := (49829908042007 / 50000000000000 : ℚ)
  w := (99475619292439 / 100000000000000 : ℚ)
  center := (14585937499999999 / 100000000000000000 : ℚ)
  supportValue := (643383119319141 / 1250000000000000 : ℚ)
  supportSlope := (2452046749517933 / 500000000000000 : ℚ)
  oldCenter := (643383119319141 / 1250000000000000 : ℚ)
  newCoefficients := coefficients_416
  oldLo := (12862499999999999 / 25000000000000000 : ℚ)
  oldHi := (51500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1221]
}

def cell_4846 : Cell := { cellDefaults with
  domain := ⟨(14587499999999999 / 100000000000000000 : ℚ), (14590624999999999 / 100000000000000000 : ℚ)⟩
  r := (49829908042007 / 50000000000000 : ℚ)
  w := (99475619292439 / 100000000000000 : ℚ)
  center := (14589062499999999 / 100000000000000000 : ℚ)
  supportValue := (1287149410178799 / 2500000000000000 : ℚ)
  supportSlope := (306568693451581 / 62500000000000 : ℚ)
  oldCenter := (1287149410178799 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_416
  oldLo := (12862499999999999 / 25000000000000000 : ℚ)
  oldHi := (51500000000000001 / 100000000000000000 : ℚ)
  oldPieces := [piece_1221]
}

def cell_4847 : Cell := { cellDefaults with
  domain := ⟨(14590624999999999 / 100000000000000000 : ℚ), (14593749999999999 / 100000000000000000 : ℚ)⟩
  r := (49829908042007 / 50000000000000 : ℚ)
  w := (99475619292439 / 100000000000000 : ℚ)
  center := (14592187499999999 / 100000000000000000 : ℚ)
  supportValue := (5150130615181633 / 10000000000000000 : ℚ)
  supportSlope := (4905534134305611 / 1000000000000000 : ℚ)
  oldCenter := (5150130615181633 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_416
  oldLo := (12862499999999999 / 25000000000000000 : ℚ)
  oldHi := (12887499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1221, piece_1222]
}

def cell_4848 : Cell := { cellDefaults with
  domain := ⟨(14593749999999999 / 100000000000000000 : ℚ), (14596874999999999 / 100000000000000000 : ℚ)⟩
  r := (49829908042007 / 50000000000000 : ℚ)
  w := (99475619292439 / 100000000000000 : ℚ)
  center := (14595312499999999 / 100000000000000000 : ℚ)
  supportValue := (5151663625038851 / 10000000000000000 : ℚ)
  supportSlope := (4906133619016373 / 1000000000000000 : ℚ)
  oldCenter := (5151663625038851 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_416
  oldLo := (51500000000000001 / 100000000000000000 : ℚ)
  oldHi := (12887499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1222]
}

def cell_4849 : Cell := { cellDefaults with
  domain := ⟨(14596874999999999 / 100000000000000000 : ℚ), (14599999999999999 / 100000000000000000 : ℚ)⟩
  r := (49829908042007 / 50000000000000 : ℚ)
  w := (99475619292439 / 100000000000000 : ℚ)
  center := (14598437499999999 / 100000000000000000 : ℚ)
  supportValue := (5153196948441491 / 10000000000000000 : ℚ)
  supportSlope := (613392164257931 / 125000000000000 : ℚ)
  oldCenter := (5153196948441491 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_416
  oldLo := (51500000000000001 / 100000000000000000 : ℚ)
  oldHi := (12887499999999999 / 25000000000000000 : ℚ)
  oldPieces := [piece_1222]
}

theorem check_4800 : SourceCertificateFamily.RightNormalized.check cell_4800 = true := by
  decide +kernel

theorem check_4801 : SourceCertificateFamily.RightNormalized.check cell_4801 = true := by
  decide +kernel

theorem check_4802 : SourceCertificateFamily.RightNormalized.check cell_4802 = true := by
  decide +kernel

theorem check_4803 : SourceCertificateFamily.RightNormalized.check cell_4803 = true := by
  decide +kernel

theorem check_4804 : SourceCertificateFamily.RightNormalized.check cell_4804 = true := by
  decide +kernel

theorem check_4805 : SourceCertificateFamily.RightNormalized.check cell_4805 = true := by
  decide +kernel

theorem check_4806 : SourceCertificateFamily.RightNormalized.check cell_4806 = true := by
  decide +kernel

theorem check_4807 : SourceCertificateFamily.RightNormalized.check cell_4807 = true := by
  decide +kernel

theorem check_4808 : SourceCertificateFamily.RightNormalized.check cell_4808 = true := by
  decide +kernel

theorem check_4809 : SourceCertificateFamily.RightNormalized.check cell_4809 = true := by
  decide +kernel

theorem check_4810 : SourceCertificateFamily.RightNormalized.check cell_4810 = true := by
  decide +kernel

theorem check_4811 : SourceCertificateFamily.RightNormalized.check cell_4811 = true := by
  decide +kernel

theorem check_4812 : SourceCertificateFamily.RightNormalized.check cell_4812 = true := by
  decide +kernel

theorem check_4813 : SourceCertificateFamily.RightNormalized.check cell_4813 = true := by
  decide +kernel

theorem check_4814 : SourceCertificateFamily.RightNormalized.check cell_4814 = true := by
  decide +kernel

theorem check_4815 : SourceCertificateFamily.RightNormalized.check cell_4815 = true := by
  decide +kernel

theorem check_4816 : SourceCertificateFamily.RightNormalized.check cell_4816 = true := by
  decide +kernel

theorem check_4817 : SourceCertificateFamily.RightNormalized.check cell_4817 = true := by
  decide +kernel

theorem check_4818 : SourceCertificateFamily.RightNormalized.check cell_4818 = true := by
  decide +kernel

theorem check_4819 : SourceCertificateFamily.RightNormalized.check cell_4819 = true := by
  decide +kernel

theorem check_4820 : SourceCertificateFamily.RightNormalized.check cell_4820 = true := by
  decide +kernel

theorem check_4821 : SourceCertificateFamily.RightNormalized.check cell_4821 = true := by
  decide +kernel

theorem check_4822 : SourceCertificateFamily.RightNormalized.check cell_4822 = true := by
  decide +kernel

theorem check_4823 : SourceCertificateFamily.RightNormalized.check cell_4823 = true := by
  decide +kernel

theorem check_4824 : SourceCertificateFamily.RightNormalized.check cell_4824 = true := by
  decide +kernel

theorem check_4825 : SourceCertificateFamily.RightNormalized.check cell_4825 = true := by
  decide +kernel

theorem check_4826 : SourceCertificateFamily.RightNormalized.check cell_4826 = true := by
  decide +kernel

theorem check_4827 : SourceCertificateFamily.RightNormalized.check cell_4827 = true := by
  decide +kernel

theorem check_4828 : SourceCertificateFamily.RightNormalized.check cell_4828 = true := by
  decide +kernel

theorem check_4829 : SourceCertificateFamily.RightNormalized.check cell_4829 = true := by
  decide +kernel

theorem check_4830 : SourceCertificateFamily.RightNormalized.check cell_4830 = true := by
  decide +kernel

theorem check_4831 : SourceCertificateFamily.RightNormalized.check cell_4831 = true := by
  decide +kernel

theorem check_4832 : SourceCertificateFamily.RightNormalized.check cell_4832 = true := by
  decide +kernel

theorem check_4833 : SourceCertificateFamily.RightNormalized.check cell_4833 = true := by
  decide +kernel

theorem check_4834 : SourceCertificateFamily.RightNormalized.check cell_4834 = true := by
  decide +kernel

theorem check_4835 : SourceCertificateFamily.RightNormalized.check cell_4835 = true := by
  decide +kernel

theorem check_4836 : SourceCertificateFamily.RightNormalized.check cell_4836 = true := by
  decide +kernel

theorem check_4837 : SourceCertificateFamily.RightNormalized.check cell_4837 = true := by
  decide +kernel

theorem check_4838 : SourceCertificateFamily.RightNormalized.check cell_4838 = true := by
  decide +kernel

theorem check_4839 : SourceCertificateFamily.RightNormalized.check cell_4839 = true := by
  decide +kernel

theorem check_4840 : SourceCertificateFamily.RightNormalized.check cell_4840 = true := by
  decide +kernel

theorem check_4841 : SourceCertificateFamily.RightNormalized.check cell_4841 = true := by
  decide +kernel

theorem check_4842 : SourceCertificateFamily.RightNormalized.check cell_4842 = true := by
  decide +kernel

theorem check_4843 : SourceCertificateFamily.RightNormalized.check cell_4843 = true := by
  decide +kernel

theorem check_4844 : SourceCertificateFamily.RightNormalized.check cell_4844 = true := by
  decide +kernel

theorem check_4845 : SourceCertificateFamily.RightNormalized.check cell_4845 = true := by
  decide +kernel

theorem check_4846 : SourceCertificateFamily.RightNormalized.check cell_4846 = true := by
  decide +kernel

theorem check_4847 : SourceCertificateFamily.RightNormalized.check cell_4847 = true := by
  decide +kernel

theorem check_4848 : SourceCertificateFamily.RightNormalized.check cell_4848 = true := by
  decide +kernel

theorem check_4849 : SourceCertificateFamily.RightNormalized.check cell_4849 = true := by
  decide +kernel

def cells : List Cell := [cell_4800, cell_4801, cell_4802, cell_4803, cell_4804, cell_4805, cell_4806, cell_4807, cell_4808, cell_4809, cell_4810, cell_4811, cell_4812, cell_4813, cell_4814, cell_4815, cell_4816, cell_4817, cell_4818, cell_4819, cell_4820, cell_4821, cell_4822, cell_4823, cell_4824, cell_4825, cell_4826, cell_4827, cell_4828, cell_4829, cell_4830, cell_4831, cell_4832, cell_4833, cell_4834, cell_4835, cell_4836, cell_4837, cell_4838, cell_4839, cell_4840, cell_4841, cell_4842, cell_4843, cell_4844, cell_4845, cell_4846, cell_4847, cell_4848, cell_4849]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_4800, SourceCertificateFamily.of_right_checked check_4801, SourceCertificateFamily.of_right_checked check_4802, SourceCertificateFamily.of_right_checked check_4803, SourceCertificateFamily.of_right_checked check_4804, SourceCertificateFamily.of_right_checked check_4805, SourceCertificateFamily.of_right_checked check_4806, SourceCertificateFamily.of_right_checked check_4807, SourceCertificateFamily.of_right_checked check_4808, SourceCertificateFamily.of_right_checked check_4809, SourceCertificateFamily.of_right_checked check_4810, SourceCertificateFamily.of_right_checked check_4811, SourceCertificateFamily.of_right_checked check_4812, SourceCertificateFamily.of_right_checked check_4813, SourceCertificateFamily.of_right_checked check_4814, SourceCertificateFamily.of_right_checked check_4815, SourceCertificateFamily.of_right_checked check_4816, SourceCertificateFamily.of_right_checked check_4817, SourceCertificateFamily.of_right_checked check_4818, SourceCertificateFamily.of_right_checked check_4819, SourceCertificateFamily.of_right_checked check_4820, SourceCertificateFamily.of_right_checked check_4821, SourceCertificateFamily.of_right_checked check_4822, SourceCertificateFamily.of_right_checked check_4823, SourceCertificateFamily.of_right_checked check_4824, SourceCertificateFamily.of_right_checked check_4825, SourceCertificateFamily.of_right_checked check_4826, SourceCertificateFamily.of_right_checked check_4827, SourceCertificateFamily.of_right_checked check_4828, SourceCertificateFamily.of_right_checked check_4829, SourceCertificateFamily.of_right_checked check_4830, SourceCertificateFamily.of_right_checked check_4831, SourceCertificateFamily.of_right_checked check_4832, SourceCertificateFamily.of_right_checked check_4833, SourceCertificateFamily.of_right_checked check_4834, SourceCertificateFamily.of_right_checked check_4835, SourceCertificateFamily.of_right_checked check_4836, SourceCertificateFamily.of_right_checked check_4837, SourceCertificateFamily.of_right_checked check_4838, SourceCertificateFamily.of_right_checked check_4839, SourceCertificateFamily.of_right_checked check_4840, SourceCertificateFamily.of_right_checked check_4841, SourceCertificateFamily.of_right_checked check_4842, SourceCertificateFamily.of_right_checked check_4843, SourceCertificateFamily.of_right_checked check_4844, SourceCertificateFamily.of_right_checked check_4845, SourceCertificateFamily.of_right_checked check_4846, SourceCertificateFamily.of_right_checked check_4847, SourceCertificateFamily.of_right_checked check_4848, SourceCertificateFamily.of_right_checked check_4849, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0096

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0096
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0096
open AnalyticBounds.ExpressionCertificate

theorem linked_4800 : Linked cell_4800 pieces := by
  apply Linked.of_piece piece_413 piece_413_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4800, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1208_mem, piece_1209_mem⟩

theorem linked_4801 : Linked cell_4801 pieces := by
  apply Linked.of_piece piece_413 piece_413_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4801, List.cons_subset, List.nil_subset, and_true]
  exact piece_1209_mem

theorem linked_4802 : Linked cell_4802 pieces := by
  apply Linked.of_piece piece_414 piece_414_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4802, List.cons_subset, List.nil_subset, and_true]
  exact piece_1208_mem

theorem linked_4803 : Linked cell_4803 pieces := by
  apply Linked.of_piece piece_414 piece_414_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4803, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1208_mem, piece_1209_mem⟩

theorem linked_4804 : Linked cell_4804 pieces := by
  apply Linked.of_piece piece_414 piece_414_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4804, List.cons_subset, List.nil_subset, and_true]
  exact piece_1209_mem

theorem linked_4805 : Linked cell_4805 pieces := by
  apply Linked.of_piece piece_414 piece_414_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4805, List.cons_subset, List.nil_subset, and_true]
  exact piece_1209_mem

theorem linked_4806 : Linked cell_4806 pieces := by
  apply Linked.of_piece piece_414 piece_414_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4806, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1209_mem, piece_1210_mem⟩

theorem linked_4807 : Linked cell_4807 pieces := by
  apply Linked.of_piece piece_414 piece_414_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4807, List.cons_subset, List.nil_subset, and_true]
  exact piece_1210_mem

theorem linked_4808 : Linked cell_4808 pieces := by
  apply Linked.of_piece piece_414 piece_414_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4808, List.cons_subset, List.nil_subset, and_true]
  exact piece_1210_mem

theorem linked_4809 : Linked cell_4809 pieces := by
  apply Linked.of_piece piece_414 piece_414_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4809, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1210_mem, piece_1211_mem⟩

theorem linked_4810 : Linked cell_4810 pieces := by
  apply Linked.of_piece piece_414 piece_414_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4810, List.cons_subset, List.nil_subset, and_true]
  exact piece_1211_mem

theorem linked_4811 : Linked cell_4811 pieces := by
  apply Linked.of_piece piece_414 piece_414_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4811, List.cons_subset, List.nil_subset, and_true]
  exact piece_1211_mem

theorem linked_4812 : Linked cell_4812 pieces := by
  apply Linked.of_piece piece_414 piece_414_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4812, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1211_mem, piece_1212_mem⟩

theorem linked_4813 : Linked cell_4813 pieces := by
  apply Linked.of_piece piece_414 piece_414_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4813, List.cons_subset, List.nil_subset, and_true]
  exact piece_1212_mem

theorem linked_4814 : Linked cell_4814 pieces := by
  apply Linked.of_piece piece_414 piece_414_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4814, List.cons_subset, List.nil_subset, and_true]
  exact piece_1212_mem

theorem linked_4815 : Linked cell_4815 pieces := by
  apply Linked.of_piece piece_414 piece_414_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4815, List.cons_subset, List.nil_subset, and_true]
  exact piece_1212_mem

theorem linked_4816 : Linked cell_4816 pieces := by
  apply Linked.of_piece piece_414 piece_414_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4816, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1212_mem, piece_1213_mem⟩

theorem linked_4817 : Linked cell_4817 pieces := by
  apply Linked.of_piece piece_414 piece_414_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4817, List.cons_subset, List.nil_subset, and_true]
  exact piece_1213_mem

theorem linked_4818 : Linked cell_4818 pieces := by
  apply Linked.of_piece piece_415 piece_415_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4818, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1212_mem, piece_1213_mem⟩

theorem linked_4819 : Linked cell_4819 pieces := by
  apply Linked.of_piece piece_415 piece_415_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4819, List.cons_subset, List.nil_subset, and_true]
  exact piece_1213_mem

theorem linked_4820 : Linked cell_4820 pieces := by
  apply Linked.of_piece piece_415 piece_415_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4820, List.cons_subset, List.nil_subset, and_true]
  exact piece_1213_mem

theorem linked_4821 : Linked cell_4821 pieces := by
  apply Linked.of_piece piece_415 piece_415_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4821, List.cons_subset, List.nil_subset, and_true]
  exact piece_1213_mem

theorem linked_4822 : Linked cell_4822 pieces := by
  apply Linked.of_piece piece_415 piece_415_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4822, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1213_mem, piece_1214_mem⟩

theorem linked_4823 : Linked cell_4823 pieces := by
  apply Linked.of_piece piece_415 piece_415_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4823, List.cons_subset, List.nil_subset, and_true]
  exact piece_1214_mem

theorem linked_4824 : Linked cell_4824 pieces := by
  apply Linked.of_piece piece_415 piece_415_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4824, List.cons_subset, List.nil_subset, and_true]
  exact piece_1214_mem

theorem linked_4825 : Linked cell_4825 pieces := by
  apply Linked.of_piece piece_415 piece_415_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4825, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1214_mem, piece_1215_mem⟩

theorem linked_4826 : Linked cell_4826 pieces := by
  apply Linked.of_piece piece_415 piece_415_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4826, List.cons_subset, List.nil_subset, and_true]
  exact piece_1215_mem

theorem linked_4827 : Linked cell_4827 pieces := by
  apply Linked.of_piece piece_415 piece_415_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4827, List.cons_subset, List.nil_subset, and_true]
  exact piece_1215_mem

theorem linked_4828 : Linked cell_4828 pieces := by
  apply Linked.of_piece piece_415 piece_415_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4828, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1215_mem, piece_1216_mem⟩

theorem linked_4829 : Linked cell_4829 pieces := by
  apply Linked.of_piece piece_415 piece_415_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4829, List.cons_subset, List.nil_subset, and_true]
  exact piece_1216_mem

theorem linked_4830 : Linked cell_4830 pieces := by
  apply Linked.of_piece piece_415 piece_415_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4830, List.cons_subset, List.nil_subset, and_true]
  exact piece_1216_mem

theorem linked_4831 : Linked cell_4831 pieces := by
  apply Linked.of_piece piece_415 piece_415_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4831, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1216_mem, piece_1217_mem⟩

theorem linked_4832 : Linked cell_4832 pieces := by
  apply Linked.of_piece piece_415 piece_415_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4832, List.cons_subset, List.nil_subset, and_true]
  exact piece_1217_mem

theorem linked_4833 : Linked cell_4833 pieces := by
  apply Linked.of_piece piece_415 piece_415_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4833, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1217_mem, piece_1218_mem⟩

theorem linked_4834 : Linked cell_4834 pieces := by
  apply Linked.of_piece piece_416 piece_416_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4834, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1216_mem, piece_1217_mem⟩

theorem linked_4835 : Linked cell_4835 pieces := by
  apply Linked.of_piece piece_416 piece_416_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4835, List.cons_subset, List.nil_subset, and_true]
  exact piece_1217_mem

theorem linked_4836 : Linked cell_4836 pieces := by
  apply Linked.of_piece piece_416 piece_416_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4836, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1217_mem, piece_1218_mem⟩

theorem linked_4837 : Linked cell_4837 pieces := by
  apply Linked.of_piece piece_416 piece_416_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4837, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1218_mem, piece_1219_mem⟩

theorem linked_4838 : Linked cell_4838 pieces := by
  apply Linked.of_piece piece_416 piece_416_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4838, List.cons_subset, List.nil_subset, and_true]
  exact piece_1219_mem

theorem linked_4839 : Linked cell_4839 pieces := by
  apply Linked.of_piece piece_416 piece_416_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4839, List.cons_subset, List.nil_subset, and_true]
  exact piece_1219_mem

theorem linked_4840 : Linked cell_4840 pieces := by
  apply Linked.of_piece piece_416 piece_416_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4840, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1219_mem, piece_1220_mem⟩

theorem linked_4841 : Linked cell_4841 pieces := by
  apply Linked.of_piece piece_416 piece_416_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4841, List.cons_subset, List.nil_subset, and_true]
  exact piece_1220_mem

theorem linked_4842 : Linked cell_4842 pieces := by
  apply Linked.of_piece piece_416 piece_416_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4842, List.cons_subset, List.nil_subset, and_true]
  exact piece_1220_mem

theorem linked_4843 : Linked cell_4843 pieces := by
  apply Linked.of_piece piece_416 piece_416_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4843, List.cons_subset, List.nil_subset, and_true]
  exact piece_1220_mem

theorem linked_4844 : Linked cell_4844 pieces := by
  apply Linked.of_piece piece_416 piece_416_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4844, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1220_mem, piece_1221_mem⟩

theorem linked_4845 : Linked cell_4845 pieces := by
  apply Linked.of_piece piece_416 piece_416_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4845, List.cons_subset, List.nil_subset, and_true]
  exact piece_1221_mem

theorem linked_4846 : Linked cell_4846 pieces := by
  apply Linked.of_piece piece_416 piece_416_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4846, List.cons_subset, List.nil_subset, and_true]
  exact piece_1221_mem

theorem linked_4847 : Linked cell_4847 pieces := by
  apply Linked.of_piece piece_416 piece_416_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4847, List.cons_subset, List.nil_subset, and_true]
  exact ⟨piece_1221_mem, piece_1222_mem⟩

theorem linked_4848 : Linked cell_4848 pieces := by
  apply Linked.of_piece piece_416 piece_416_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4848, List.cons_subset, List.nil_subset, and_true]
  exact piece_1222_mem

theorem linked_4849 : Linked cell_4849 pieces := by
  apply Linked.of_piece piece_416 piece_416_mem rfl (by decide +kernel) (by decide +kernel)
  simp only [cell_4849, List.cons_subset, List.nil_subset, and_true]
  exact piece_1222_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0096.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0096.cells,List.forall_mem_cons]
  exact ⟨linked_4800, linked_4801, linked_4802, linked_4803, linked_4804, linked_4805, linked_4806, linked_4807, linked_4808, linked_4809, linked_4810, linked_4811, linked_4812, linked_4813, linked_4814, linked_4815, linked_4816, linked_4817, linked_4818, linked_4819, linked_4820, linked_4821, linked_4822, linked_4823, linked_4824, linked_4825, linked_4826, linked_4827, linked_4828, linked_4829, linked_4830, linked_4831, linked_4832, linked_4833, linked_4834, linked_4835, linked_4836, linked_4837, linked_4838, linked_4839, linked_4840, linked_4841, linked_4842, linked_4843, linked_4844, linked_4845, linked_4846, linked_4847, linked_4848, linked_4849, by simp⟩

theorem covered : covers (14443749999999999 / 100000000000000000 : ℚ) (14599999999999999 / 100000000000000000 : ℚ)
    (SourceCertificates.Chunk0096.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0096
