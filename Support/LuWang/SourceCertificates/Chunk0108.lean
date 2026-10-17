import Support.LuWang.CurrentSourceMembership
import Support.LuWang.SourceCertificateLink
import Support.LuWang.SourceCertificateFamily.Domain
import Support.LuWang.CurrentSourceData

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option Elab.async false

namespace LuWang.SourceCertificates.Chunk0108
open SourceCertificate CurrentSourceData

private def cellDefaults : Cell := {
  domain := ⟨(16321875000000001 / 100000000000000000 : ℚ), (16325000000000001 / 100000000000000000 : ℚ)⟩
  branch := .right
  r := (9588652317061 / 10000000000000 : ℚ)
  w := (625772936613 / 625000000000 : ℚ)
  center := (16323437500000001 / 100000000000000000 : ℚ)
  supportValue := (5874111724181701 / 10000000000000000 : ℚ)
  supportSlope := (1282988211548819 / 250000000000000 : ℚ)
  oldCenter := (5874111724181701 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_455
  oldLo := (59250000000000003 / 100000000000000000 : ℚ)
  oldHi := (7362500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1391]
  ne := 20
  nl := 16
  nq := 32
  centered := true
}

def cell_5400 : Cell := { cellDefaults with
  r := (47993269944053 / 50000000000000 : ℚ)
  w := (5005291200959 / 5000000000000 : ℚ)
  newCoefficients := coefficients_454
  oldLo := (7337500000000001 / 12500000000000000 : ℚ)
  oldHi := (29375000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1379]
}

def cell_5401 : Cell := { cellDefaults with
  domain := ⟨(16325000000000001 / 100000000000000000 : ℚ), (16328125000000001 / 100000000000000000 : ℚ)⟩
  r := (47993269944053 / 50000000000000 : ℚ)
  w := (5005291200959 / 5000000000000 : ℚ)
  center := (16326562500000001 / 100000000000000000 : ℚ)
  supportValue := (2937857753692049 / 5000000000000000 : ℚ)
  supportSlope := (102644529930771 / 20000000000000 : ℚ)
  oldCenter := (2937857753692049 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_454
  oldLo := (7337500000000001 / 12500000000000000 : ℚ)
  oldHi := (7350000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1379, piece_1380]
}

def cell_5402 : Cell := { cellDefaults with
  domain := ⟨(16328125000000001 / 100000000000000000 : ℚ), (16331250000000001 / 100000000000000000 : ℚ)⟩
  r := (47993269944053 / 50000000000000 : ℚ)
  w := (5005291200959 / 5000000000000 : ℚ)
  center := (16329687500000001 / 100000000000000000 : ℚ)
  supportValue := (1175463890713011 / 2000000000000000 : ℚ)
  supportSlope := (1026612796275117 / 200000000000000 : ℚ)
  oldCenter := (1175463890713011 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_454
  oldLo := (29375000000000001 / 50000000000000000 : ℚ)
  oldHi := (7350000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1380]
}

def cell_5403 : Cell := { cellDefaults with
  domain := ⟨(16331250000000001 / 100000000000000000 : ℚ), (16334375000000001 / 100000000000000000 : ℚ)⟩
  r := (47993269944053 / 50000000000000 : ℚ)
  w := (5005291200959 / 5000000000000 : ℚ)
  center := (16332812500000001 / 100000000000000000 : ℚ)
  supportValue := (5878923672078439 / 10000000000000000 : ℚ)
  supportSlope := (5133935616779439 / 1000000000000000 : ℚ)
  oldCenter := (5878923672078439 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_454
  oldLo := (29375000000000001 / 50000000000000000 : ℚ)
  oldHi := (7350000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1380]
}

def cell_5404 : Cell := { cellDefaults with
  domain := ⟨(16334375000000001 / 100000000000000000 : ℚ), (16337500000000001 / 100000000000000000 : ℚ)⟩
  r := (47993269944053 / 50000000000000 : ℚ)
  w := (5005291200959 / 5000000000000 : ℚ)
  center := (16335937500000001 / 100000000000000000 : ℚ)
  supportValue := (5880528097943247 / 10000000000000000 : ℚ)
  supportSlope := (5134283104332837 / 1000000000000000 : ℚ)
  oldCenter := (5880528097943247 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_454
  oldLo := (29375000000000001 / 50000000000000000 : ℚ)
  oldHi := (29425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1380, piece_1381]
}

def cell_5405 : Cell := { cellDefaults with
  domain := ⟨(16337500000000001 / 100000000000000000 : ℚ), (16340625000000001 / 100000000000000000 : ℚ)⟩
  r := (47993269944053 / 50000000000000 : ℚ)
  w := (5005291200959 / 5000000000000 : ℚ)
  center := (16339062500000001 / 100000000000000000 : ℚ)
  supportValue := (1470533165936717 / 2500000000000000 : ℚ)
  supportSlope := (5135046866843851 / 1000000000000000 : ℚ)
  oldCenter := (1470533165936717 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_454
  oldLo := (7350000000000001 / 12500000000000000 : ℚ)
  oldHi := (29425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1381]
}

def cell_5406 : Cell := { cellDefaults with
  domain := ⟨(16340625000000001 / 100000000000000000 : ℚ), (16343750000000001 / 100000000000000000 : ℚ)⟩
  r := (47993269944053 / 50000000000000 : ℚ)
  w := (5005291200959 / 5000000000000 : ℚ)
  center := (16342187500000001 / 100000000000000000 : ℚ)
  supportValue := (1470934375485223 / 2500000000000000 : ℚ)
  supportSlope := (3209949179869831 / 625000000000000 : ℚ)
  oldCenter := (1470934375485223 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_454
  oldLo := (7350000000000001 / 12500000000000000 : ℚ)
  oldHi := (29425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1381]
}

def cell_5407 : Cell := { cellDefaults with
  domain := ⟨(16343750000000001 / 100000000000000000 : ℚ), (16346875000000001 / 100000000000000000 : ℚ)⟩
  r := (47993269944053 / 50000000000000 : ℚ)
  w := (5005291200959 / 5000000000000 : ℚ)
  center := (16345312500000001 / 100000000000000000 : ℚ)
  supportValue := (2942671285222583 / 5000000000000000 : ℚ)
  supportSlope := (5136339717683569 / 1000000000000000 : ℚ)
  oldCenter := (2942671285222583 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_454
  oldLo := (7350000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1381, piece_1382]
}

def cell_5408 : Cell := { cellDefaults with
  domain := ⟨(16346875000000001 / 100000000000000000 : ℚ), (16350000000000001 / 100000000000000000 : ℚ)⟩
  r := (47993269944053 / 50000000000000 : ℚ)
  w := (5005291200959 / 5000000000000 : ℚ)
  center := (16348437500000001 / 100000000000000000 : ℚ)
  supportValue := (5886947755971561 / 10000000000000000 : ℚ)
  supportSlope := (1027405860698849 / 200000000000000 : ℚ)
  oldCenter := (5886947755971561 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_454
  oldLo := (29425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1382]
}

def cell_5409 : Cell := { cellDefaults with
  domain := ⟨(16350000000000001 / 100000000000000000 : ℚ), (16353125000000001 / 100000000000000000 : ℚ)⟩
  center := (16351562500000001 / 100000000000000000 : ℚ)
  supportValue := (5884157050174773 / 10000000000000000 : ℚ)
  supportSlope := (2566696909511279 / 500000000000000 : ℚ)
  oldCenter := (5884157050174773 / 10000000000000000 : ℚ)
  oldLo := (7350000000000001 / 12500000000000000 : ℚ)
  oldHi := (29425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1381]
}

def cell_5410 : Cell := { cellDefaults with
  domain := ⟨(16353125000000001 / 100000000000000000 : ℚ), (16356250000000001 / 100000000000000000 : ℚ)⟩
  center := (16354687500000001 / 100000000000000000 : ℚ)
  supportValue := (2942880639132729 / 5000000000000000 : ℚ)
  supportSlope := (1026730132011977 / 200000000000000 : ℚ)
  oldCenter := (2942880639132729 / 5000000000000000 : ℚ)
  oldLo := (7350000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1381, piece_1382]
}

def cell_5411 : Cell := { cellDefaults with
  domain := ⟨(16356250000000001 / 100000000000000000 : ℚ), (16359375000000001 / 100000000000000000 : ℚ)⟩
  center := (16357812500000001 / 100000000000000000 : ℚ)
  supportValue := (5887365675064147 / 10000000000000000 : ℚ)
  supportSlope := (2053802313410813 / 400000000000000 : ℚ)
  oldCenter := (5887365675064147 / 10000000000000000 : ℚ)
  oldLo := (29425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1382]
}

def cell_5412 : Cell := { cellDefaults with
  domain := ⟨(16359375000000001 / 100000000000000000 : ℚ), (16362500000000001 / 100000000000000000 : ℚ)⟩
  center := (16360937500000001 / 100000000000000000 : ℚ)
  supportValue := (736121293010749 / 1250000000000000 : ℚ)
  supportSlope := (5135377068899771 / 1000000000000000 : ℚ)
  oldCenter := (736121293010749 / 1250000000000000 : ℚ)
  oldLo := (29425000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1382]
}

def cell_5413 : Cell := { cellDefaults with
  domain := ⟨(16362500000000001 / 100000000000000000 : ℚ), (16365625000000001 / 100000000000000000 : ℚ)⟩
  center := (16364062500000001 / 100000000000000000 : ℚ)
  supportValue := (5890575214904153 / 10000000000000000 : ℚ)
  supportSlope := (2567853993573621 / 500000000000000 : ℚ)
  oldCenter := (5890575214904153 / 10000000000000000 : ℚ)
  oldLo := (29425000000000001 / 50000000000000000 : ℚ)
  oldHi := (29475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1382, piece_1383]
}

def cell_5414 : Cell := { cellDefaults with
  domain := ⟨(16365625000000001 / 100000000000000000 : ℚ), (16368750000000001 / 100000000000000000 : ℚ)⟩
  center := (16367187500000001 / 100000000000000000 : ℚ)
  supportValue := (5892180231648783 / 10000000000000000 : ℚ)
  supportSlope := (2568244521841123 / 500000000000000 : ℚ)
  oldCenter := (5892180231648783 / 10000000000000000 : ℚ)
  oldLo := (7362500000000001 / 12500000000000000 : ℚ)
  oldHi := (29475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1383]
}

def cell_5415 : Cell := { cellDefaults with
  domain := ⟨(16368750000000001 / 100000000000000000 : ℚ), (16371875000000001 / 100000000000000000 : ℚ)⟩
  center := (16370312500000001 / 100000000000000000 : ℚ)
  supportValue := (5893785520261967 / 10000000000000000 : ℚ)
  supportSlope := (10274718386170889 / 2000000000000000 : ℚ)
  oldCenter := (5893785520261967 / 10000000000000000 : ℚ)
  oldLo := (7362500000000001 / 12500000000000000 : ℚ)
  oldHi := (29475000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1383]
}

def cell_5416 : Cell := { cellDefaults with
  domain := ⟨(16371875000000001 / 100000000000000000 : ℚ), (16375000000000001 / 100000000000000000 : ℚ)⟩
  center := (16373437500000001 / 100000000000000000 : ℚ)
  supportValue := (589539103302373 / 1000000000000000 : ℚ)
  supportSlope := (5137762610079477 / 1000000000000000 : ℚ)
  oldCenter := (589539103302373 / 1000000000000000 : ℚ)
  oldLo := (7362500000000001 / 12500000000000000 : ℚ)
  oldHi := (7375000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1383, piece_1384]
}

def cell_5417 : Cell := { cellDefaults with
  domain := ⟨(16375000000000001 / 100000000000000000 : ℚ), (16378125000000001 / 100000000000000000 : ℚ)⟩
  center := (16376562500000001 / 100000000000000000 : ℚ)
  supportValue := (5896996669288457 / 10000000000000000 : ℚ)
  supportSlope := (2569235572231321 / 500000000000000 : ℚ)
  oldCenter := (5896996669288457 / 10000000000000000 : ℚ)
  oldLo := (29475000000000001 / 50000000000000000 : ℚ)
  oldHi := (7375000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1384]
}

def cell_5418 : Cell := { cellDefaults with
  domain := ⟨(16378125000000001 / 100000000000000000 : ℚ), (16381250000000001 / 100000000000000000 : ℚ)⟩
  center := (16379687500000001 / 100000000000000000 : ℚ)
  supportValue := (2949301288597137 / 5000000000000000 : ℚ)
  supportSlope := (10278681130209577 / 2000000000000000 : ℚ)
  oldCenter := (2949301288597137 / 5000000000000000 : ℚ)
  oldLo := (29475000000000001 / 50000000000000000 : ℚ)
  oldHi := (7375000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1384]
}

def cell_5419 : Cell := { cellDefaults with
  domain := ⟨(16381250000000001 / 100000000000000000 : ℚ), (16384375000000001 / 100000000000000000 : ℚ)⟩
  center := (16382812500000001 / 100000000000000000 : ℚ)
  supportValue := (295010436567509 / 500000000000000 : ℚ)
  supportSlope := (1027963089187267 / 200000000000000 : ℚ)
  oldCenter := (295010436567509 / 500000000000000 : ℚ)
  oldLo := (29475000000000001 / 50000000000000000 : ℚ)
  oldHi := (29525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1384, piece_1385]
}

def cell_5420 : Cell := { cellDefaults with
  domain := ⟨(16384375000000001 / 100000000000000000 : ℚ), (16387500000000001 / 100000000000000000 : ℚ)⟩
  center := (16385937500000001 / 100000000000000000 : ℚ)
  supportValue := (5901814986913513 / 10000000000000000 : ℚ)
  supportSlope := (5140452534696749 / 1000000000000000 : ℚ)
  oldCenter := (5901814986913513 / 10000000000000000 : ℚ)
  oldLo := (7375000000000001 / 12500000000000000 : ℚ)
  oldHi := (29525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1385]
}

def cell_5421 : Cell := { cellDefaults with
  domain := ⟨(16387500000000001 / 100000000000000000 : ℚ), (16390625000000001 / 100000000000000000 : ℚ)⟩
  center := (16389062500000001 / 100000000000000000 : ℚ)
  supportValue := (2951710756944683 / 5000000000000000 : ℚ)
  supportSlope := (321332576440847 / 62500000000000 : ℚ)
  oldCenter := (2951710756944683 / 5000000000000000 : ℚ)
  oldLo := (7375000000000001 / 12500000000000000 : ℚ)
  oldHi := (29525000000000001 / 50000000000000000 : ℚ)
  oldPieces := [piece_1385]
}

def cell_5422 : Cell := { cellDefaults with
  domain := ⟨(16390625000000001 / 100000000000000000 : ℚ), (16393750000000001 / 100000000000000000 : ℚ)⟩
  center := (16392187500000001 / 100000000000000000 : ℚ)
  supportValue := (369064269304351 / 625000000000000 : ℚ)
  supportSlope := (5141866251531013 / 1000000000000000 : ℚ)
  oldCenter := (369064269304351 / 625000000000000 : ℚ)
  oldLo := (7375000000000001 / 12500000000000000 : ℚ)
  oldHi := (2953631284916201 / 5000000000000000 : ℚ)
  oldPieces := [piece_1385, piece_1386]
}

def cell_5423 : Cell := { cellDefaults with
  domain := ⟨(16393750000000001 / 100000000000000000 : ℚ), (16396875000000001 / 100000000000000000 : ℚ)⟩
  center := (16395312500000001 / 100000000000000000 : ℚ)
  supportValue := (2953317591689141 / 5000000000000000 : ℚ)
  supportSlope := (2571216442595059 / 500000000000000 : ℚ)
  oldCenter := (2953317591689141 / 5000000000000000 : ℚ)
  oldLo := (29525000000000001 / 50000000000000000 : ℚ)
  oldHi := (7387500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1386, piece_1387]
}

def cell_5424 : Cell := { cellDefaults with
  domain := ⟨(16396875000000001 / 100000000000000000 : ℚ), (16400000000000001 / 100000000000000000 : ℚ)⟩
  center := (16398437500000001 / 100000000000000000 : ℚ)
  supportValue := (5908242329231699 / 10000000000000000 : ℚ)
  supportSlope := (5143301592891447 / 1000000000000000 : ℚ)
  oldCenter := (5908242329231699 / 10000000000000000 : ℚ)
  oldLo := (2953631284916201 / 5000000000000000 : ℚ)
  oldHi := (7387500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1387]
}

def cell_5425 : Cell := { cellDefaults with
  domain := ⟨(16400000000000001 / 100000000000000000 : ℚ), (262450000000000013 / 1600000000000000000 : ℚ)⟩
  r := (2993336565949 / 3125000000000 : ℚ)
  w := (2002830958203 / 2000000000000 : ℚ)
  center := (524850000000000029 / 3200000000000000000 : ℚ)
  supportValue := (295272089952193 / 500000000000000 : ℚ)
  supportSlope := (513916947854329 / 100000000000000 : ℚ)
  oldCenter := (295272089952193 / 500000000000000 : ℚ)
  newCoefficients := coefficients_456
  oldLo := (7375000000000001 / 12500000000000000 : ℚ)
  oldHi := (2953631284916201 / 5000000000000000 : ℚ)
  oldPieces := [piece_1385, piece_1386]
}

def cell_5426 : Cell := { cellDefaults with
  domain := ⟨(262450000000000013 / 1600000000000000000 : ℚ), (26250000000000001 / 160000000000000000 : ℚ)⟩
  r := (2993336565949 / 3125000000000 : ℚ)
  w := (2002830958203 / 2000000000000 : ℚ)
  center := (524950000000000023 / 3200000000000000000 : ℚ)
  supportValue := (236281915248319 / 400000000000000 : ℚ)
  supportSlope := (1027979602935209 / 200000000000000 : ℚ)
  oldCenter := (236281915248319 / 400000000000000 : ℚ)
  newCoefficients := coefficients_456
  oldLo := (29525000000000001 / 50000000000000000 : ℚ)
  oldHi := (7387500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1386, piece_1387]
}

def cell_5427 : Cell := { cellDefaults with
  domain := ⟨(26250000000000001 / 160000000000000000 : ℚ), (262550000000000007 / 1600000000000000000 : ℚ)⟩
  r := (2993336565949 / 3125000000000 : ℚ)
  w := (2002830958203 / 2000000000000 : ℚ)
  center := (525050000000000017 / 3200000000000000000 : ℚ)
  supportValue := (369290889690203 / 625000000000000 : ℚ)
  supportSlope := (2570383663901209 / 500000000000000 : ℚ)
  oldCenter := (369290889690203 / 625000000000000 : ℚ)
  newCoefficients := coefficients_456
  oldLo := (2953631284916201 / 5000000000000000 : ℚ)
  oldHi := (7387500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1387]
}

def cell_5428 : Cell := { cellDefaults with
  domain := ⟨(262550000000000007 / 1600000000000000000 : ℚ), (65650000000000001 / 400000000000000000 : ℚ)⟩
  r := (2993336565949 / 3125000000000 : ℚ)
  w := (2002830958203 / 2000000000000 : ℚ)
  center := (525150000000000011 / 3200000000000000000 : ℚ)
  supportValue := (5910260828738663 / 10000000000000000 : ℚ)
  supportSlope := (2570611382836473 / 500000000000000 : ℚ)
  oldCenter := (5910260828738663 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_456
  oldLo := (2953631284916201 / 5000000000000000 : ℚ)
  oldHi := (59150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1387, piece_1388]
}

def cell_5429 : Cell := { cellDefaults with
  domain := ⟨(65650000000000001 / 400000000000000000 : ℚ), (262650000000000001 / 1600000000000000000 : ℚ)⟩
  r := (2993336565949 / 3125000000000 : ℚ)
  w := (2002830958203 / 2000000000000 : ℚ)
  center := (105050000000000001 / 640000000000000000 : ℚ)
  supportValue := (5911867530558821 / 10000000000000000 : ℚ)
  supportSlope := (5141880228585503 / 1000000000000000 : ℚ)
  oldCenter := (5911867530558821 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_456
  oldLo := (7387500000000001 / 12500000000000000 : ℚ)
  oldHi := (59150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1388]
}

def cell_5430 : Cell := { cellDefaults with
  domain := ⟨(262650000000000001 / 1600000000000000000 : ℚ), (131349999999999999 / 800000000000000000 : ℚ)⟩
  r := (2993336565949 / 3125000000000 : ℚ)
  w := (2002830958203 / 2000000000000 : ℚ)
  center := (525349999999999999 / 3200000000000000000 : ℚ)
  supportValue := (5913474503586329 / 10000000000000000 : ℚ)
  supportSlope := (10285496519458711 / 2000000000000000 : ℚ)
  oldCenter := (5913474503586329 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_456
  oldLo := (7387500000000001 / 12500000000000000 : ℚ)
  oldHi := (59150000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1388]
}

def cell_5431 : Cell := { cellDefaults with
  domain := ⟨(131349999999999999 / 800000000000000000 : ℚ), (52549999999999999 / 320000000000000000 : ℚ)⟩
  r := (2993336565949 / 3125000000000 : ℚ)
  w := (2002830958203 / 2000000000000 : ℚ)
  center := (525449999999999993 / 3200000000000000000 : ℚ)
  supportValue := (5915081737959819 / 10000000000000000 : ℚ)
  supportSlope := (1285818302869301 / 250000000000000 : ℚ)
  oldCenter := (5915081737959819 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_456
  oldLo := (7387500000000001 / 12500000000000000 : ℚ)
  oldHi := (7400000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1388, piece_1389]
}

def cell_5432 : Cell := { cellDefaults with
  domain := ⟨(52549999999999999 / 320000000000000000 : ℚ), (32849999999999999 / 200000000000000000 : ℚ)⟩
  r := (2993336565949 / 3125000000000 : ℚ)
  w := (2002830958203 / 2000000000000 : ℚ)
  center := (525549999999999987 / 3200000000000000000 : ℚ)
  supportValue := (5916689058877781 / 10000000000000000 : ℚ)
  supportSlope := (10287721940578983 / 2000000000000000 : ℚ)
  oldCenter := (5916689058877781 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_456
  oldLo := (59150000000000003 / 100000000000000000 : ℚ)
  oldHi := (7400000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1389]
}

def cell_5433 : Cell := { cellDefaults with
  domain := ⟨(32849999999999999 / 200000000000000000 : ℚ), (262849999999999989 / 1600000000000000000 : ℚ)⟩
  r := (2993336565949 / 3125000000000 : ℚ)
  w := (2002830958203 / 2000000000000 : ℚ)
  center := (525649999999999981 / 3200000000000000000 : ℚ)
  supportValue := (5918296650770789 / 10000000000000000 : ℚ)
  supportSlope := (1286182064294727 / 250000000000000 : ℚ)
  oldCenter := (5918296650770789 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_456
  oldLo := (59150000000000003 / 100000000000000000 : ℚ)
  oldHi := (7400000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1389]
}

def cell_5434 : Cell := { cellDefaults with
  domain := ⟨(262849999999999989 / 1600000000000000000 : ℚ), (131449999999999993 / 800000000000000000 : ℚ)⟩
  r := (2993336565949 / 3125000000000 : ℚ)
  w := (2002830958203 / 2000000000000 : ℚ)
  center := (21029999999999999 / 128000000000000000 : ℚ)
  supportValue := (2959952256871513 / 5000000000000000 : ℚ)
  supportSlope := (5145321672195589 / 1000000000000000 : ℚ)
  oldCenter := (2959952256871513 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_456
  oldLo := (59150000000000003 / 100000000000000000 : ℚ)
  oldHi := (59250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1389, piece_1390]
}

def cell_5435 : Cell := { cellDefaults with
  domain := ⟨(131449999999999993 / 800000000000000000 : ℚ), (262949999999999983 / 1600000000000000000 : ℚ)⟩
  r := (2993336565949 / 3125000000000 : ℚ)
  w := (2002830958203 / 2000000000000 : ℚ)
  center := (525849999999999969 / 3200000000000000000 : ℚ)
  supportValue := (2960756232462449 / 5000000000000000 : ℚ)
  supportSlope := (5145840772655983 / 1000000000000000 : ℚ)
  oldCenter := (2960756232462449 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_456
  oldLo := (7400000000000001 / 12500000000000000 : ℚ)
  oldHi := (59250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1390]
}

def cell_5436 : Cell := { cellDefaults with
  domain := ⟨(262949999999999983 / 1600000000000000000 : ℚ), (13149999999999999 / 80000000000000000 : ℚ)⟩
  r := (2993336565949 / 3125000000000 : ℚ)
  w := (2002830958203 / 2000000000000 : ℚ)
  center := (525949999999999963 / 3200000000000000000 : ℚ)
  supportValue := (296156033769463 / 500000000000000 : ℚ)
  supportSlope := (2573353655709253 / 500000000000000 : ℚ)
  oldCenter := (296156033769463 / 500000000000000 : ℚ)
  newCoefficients := coefficients_456
  oldLo := (7400000000000001 / 12500000000000000 : ℚ)
  oldHi := (59250000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1390]
}

def cell_5437 : Cell := { cellDefaults with
  domain := ⟨(13149999999999999 / 80000000000000000 : ℚ), (263049999999999977 / 1600000000000000000 : ℚ)⟩
  r := (2993336565949 / 3125000000000 : ℚ)
  w := (2002830958203 / 2000000000000 : ℚ)
  center := (526049999999999957 / 3200000000000000000 : ℚ)
  supportValue := (5924729156698789 / 10000000000000000 : ℚ)
  supportSlope := (10294736292842451 / 2000000000000000 : ℚ)
  oldCenter := (5924729156698789 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_456
  oldLo := (7400000000000001 / 12500000000000000 : ℚ)
  oldHi := (7412500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1390, piece_1391]
}

def cell_5438 : Cell := { cellDefaults with
  domain := ⟨(263049999999999977 / 1600000000000000000 : ℚ), (131549999999999987 / 800000000000000000 : ℚ)⟩
  r := (2993336565949 / 3125000000000 : ℚ)
  w := (2002830958203 / 2000000000000 : ℚ)
  center := (526149999999999951 / 3200000000000000000 : ℚ)
  supportValue := (592633774749021 / 1000000000000000 : ℚ)
  supportSlope := (2573909814028651 / 500000000000000 : ℚ)
  oldCenter := (592633774749021 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_456
  oldHi := (7412500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1391]
}

def cell_5439 : Cell := { cellDefaults with
  domain := ⟨(131549999999999987 / 800000000000000000 : ℚ), (263149999999999971 / 1600000000000000000 : ℚ)⟩
  r := (2993336565949 / 3125000000000 : ℚ)
  w := (2002830958203 / 2000000000000 : ℚ)
  center := (105249999999999989 / 640000000000000000 : ℚ)
  supportValue := (5927946576228139 / 10000000000000000 : ℚ)
  supportSlope := (5148685406851737 / 1000000000000000 : ℚ)
  oldCenter := (5927946576228139 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_456
  oldHi := (7412500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1391]
}

def cell_5440 : Cell := { cellDefaults with
  domain := ⟨(263149999999999971 / 1600000000000000000 : ℚ), (8224999999999999 / 50000000000000000 : ℚ)⟩
  r := (2993336565949 / 3125000000000 : ℚ)
  w := (2002830958203 / 2000000000000 : ℚ)
  center := (526349999999999939 / 3200000000000000000 : ℚ)
  supportValue := (1185911135114697 / 2000000000000000 : ℚ)
  supportSlope := (1029882524906673 / 200000000000000 : ℚ)
  oldCenter := (1185911135114697 / 2000000000000000 : ℚ)
  newCoefficients := coefficients_456
  oldHi := (59350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1391, piece_1392]
}

def cell_5441 : Cell := { cellDefaults with
  domain := ⟨(8224999999999999 / 50000000000000000 : ℚ), (8226562499999999 / 50000000000000000 : ℚ)⟩
  r := (47843639462913 / 50000000000000 : ℚ)
  w := (2003189104213 / 2000000000000 : ℚ)
  center := (8225781249999999 / 50000000000000000 : ℚ)
  supportValue := (1481686274048081 / 2500000000000000 : ℚ)
  supportSlope := (514527271528209 / 100000000000000 : ℚ)
  oldCenter := (1481686274048081 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_457
  oldHi := (7412500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1391]
}

def cell_5442 : Cell := { cellDefaults with
  domain := ⟨(8226562499999999 / 50000000000000000 : ℚ), (8228124999999999 / 50000000000000000 : ℚ)⟩
  r := (47843639462913 / 50000000000000 : ℚ)
  w := (2003189104213 / 2000000000000 : ℚ)
  center := (8227343749999999 / 50000000000000000 : ℚ)
  supportValue := (118567062583009 / 200000000000000 : ℚ)
  supportSlope := (1029227865770821 / 200000000000000 : ℚ)
  oldCenter := (118567062583009 / 200000000000000 : ℚ)
  newCoefficients := coefficients_457
  oldHi := (7412500000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1391]
}

def cell_5443 : Cell := { cellDefaults with
  domain := ⟨(8228124999999999 / 50000000000000000 : ℚ), (8229687499999999 / 50000000000000000 : ℚ)⟩
  r := (47843639462913 / 50000000000000 : ℚ)
  w := (2003189104213 / 2000000000000 : ℚ)
  center := (8228906249999999 / 50000000000000000 : ℚ)
  supportValue := (2964980716488589 / 5000000000000000 : ℚ)
  supportSlope := (2573355644344133 / 500000000000000 : ℚ)
  oldCenter := (2964980716488589 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_457
  oldHi := (59350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1391, piece_1392]
}

def cell_5444 : Cell := { cellDefaults with
  domain := ⟨(8229687499999999 / 50000000000000000 : ℚ), (8231249999999999 / 50000000000000000 : ℚ)⟩
  r := (47843639462913 / 50000000000000 : ℚ)
  w := (2003189104213 / 2000000000000 : ℚ)
  center := (8230468749999999 / 50000000000000000 : ℚ)
  supportValue := (5931569818704241 / 10000000000000000 : ℚ)
  supportSlope := (514725301200869 / 100000000000000 : ℚ)
  oldCenter := (5931569818704241 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_457
  oldLo := (7412500000000001 / 12500000000000000 : ℚ)
  oldHi := (59350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1392]
}

def cell_5445 : Cell := { cellDefaults with
  domain := ⟨(8231249999999999 / 50000000000000000 : ℚ), (8232812499999999 / 50000000000000000 : ℚ)⟩
  r := (47843639462913 / 50000000000000 : ℚ)
  w := (2003189104213 / 2000000000000 : ℚ)
  center := (8232031249999999 / 50000000000000000 : ℚ)
  supportValue := (593317847037889 / 1000000000000000 : ℚ)
  supportSlope := (1029623763565013 / 200000000000000 : ℚ)
  oldCenter := (593317847037889 / 1000000000000000 : ℚ)
  newCoefficients := coefficients_457
  oldLo := (7412500000000001 / 12500000000000000 : ℚ)
  oldHi := (59350000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1392]
}

def cell_5446 : Cell := { cellDefaults with
  domain := ⟨(8232812499999999 / 50000000000000000 : ℚ), (8234374999999999 / 50000000000000000 : ℚ)⟩
  r := (47843639462913 / 50000000000000 : ℚ)
  w := (2003189104213 / 2000000000000 : ℚ)
  center := (8233593749999999 / 50000000000000000 : ℚ)
  supportValue := (2967393696334717 / 5000000000000000 : ℚ)
  supportSlope := (2574378672427713 / 500000000000000 : ℚ)
  oldCenter := (2967393696334717 / 5000000000000000 : ℚ)
  newCoefficients := coefficients_457
  oldLo := (7412500000000001 / 12500000000000000 : ℚ)
  oldHi := (7425000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1392, piece_1393]
}

def cell_5447 : Cell := { cellDefaults with
  domain := ⟨(8234374999999999 / 50000000000000000 : ℚ), (8235937499999999 / 50000000000000000 : ℚ)⟩
  r := (47843639462913 / 50000000000000 : ℚ)
  w := (2003189104213 / 2000000000000 : ℚ)
  center := (8235156249999999 / 50000000000000000 : ℚ)
  supportValue := (5936396417869091 / 10000000000000000 : ℚ)
  supportSlope := (5149232271875803 / 1000000000000000 : ℚ)
  oldCenter := (5936396417869091 / 10000000000000000 : ℚ)
  newCoefficients := coefficients_457
  oldLo := (59350000000000003 / 100000000000000000 : ℚ)
  oldHi := (7425000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1393]
}

def cell_5448 : Cell := { cellDefaults with
  domain := ⟨(8235937499999999 / 50000000000000000 : ℚ), (8237499999999999 / 50000000000000000 : ℚ)⟩
  r := (47843639462913 / 50000000000000 : ℚ)
  w := (2003189104213 / 2000000000000 : ℚ)
  center := (8236718749999999 / 50000000000000000 : ℚ)
  supportValue := (1484501421994519 / 2500000000000000 : ℚ)
  supportSlope := (206003901511167 / 40000000000000 : ℚ)
  oldCenter := (1484501421994519 / 2500000000000000 : ℚ)
  newCoefficients := coefficients_457
  oldLo := (59350000000000003 / 100000000000000000 : ℚ)
  oldHi := (7425000000000001 / 12500000000000000 : ℚ)
  oldPieces := [piece_1393]
}

def cell_5449 : Cell := { cellDefaults with
  domain := ⟨(8237499999999999 / 50000000000000000 : ℚ), (32961033519553071 / 200000000000000000 : ℚ)⟩
  r := (47843639462913 / 50000000000000 : ℚ)
  w := (2003189104213 / 2000000000000 : ℚ)
  center := (65911033519553067 / 400000000000000000 : ℚ)
  supportValue := (371264376611519 / 625000000000000 : ℚ)
  supportSlope := (1287733792956139 / 250000000000000 : ℚ)
  oldCenter := (371264376611519 / 625000000000000 : ℚ)
  newCoefficients := coefficients_457
  oldLo := (59350000000000003 / 100000000000000000 : ℚ)
  oldHi := (59450000000000003 / 100000000000000000 : ℚ)
  oldPieces := [piece_1393, piece_1394]
}

theorem check_5400 : SourceCertificateFamily.RightNormalized.check cell_5400 = true := by
  decide +kernel

theorem check_5401 : SourceCertificateFamily.RightNormalized.check cell_5401 = true := by
  decide +kernel

theorem check_5402 : SourceCertificateFamily.RightNormalized.check cell_5402 = true := by
  decide +kernel

theorem check_5403 : SourceCertificateFamily.RightNormalized.check cell_5403 = true := by
  decide +kernel

theorem check_5404 : SourceCertificateFamily.RightNormalized.check cell_5404 = true := by
  decide +kernel

theorem check_5405 : SourceCertificateFamily.RightNormalized.check cell_5405 = true := by
  decide +kernel

theorem check_5406 : SourceCertificateFamily.RightNormalized.check cell_5406 = true := by
  decide +kernel

theorem check_5407 : SourceCertificateFamily.RightNormalized.check cell_5407 = true := by
  decide +kernel

theorem check_5408 : SourceCertificateFamily.RightNormalized.check cell_5408 = true := by
  decide +kernel

theorem check_5409 : SourceCertificateFamily.RightNormalized.check cell_5409 = true := by
  decide +kernel

theorem check_5410 : SourceCertificateFamily.RightNormalized.check cell_5410 = true := by
  decide +kernel

theorem check_5411 : SourceCertificateFamily.RightNormalized.check cell_5411 = true := by
  decide +kernel

theorem check_5412 : SourceCertificateFamily.RightNormalized.check cell_5412 = true := by
  decide +kernel

theorem check_5413 : SourceCertificateFamily.RightNormalized.check cell_5413 = true := by
  decide +kernel

theorem check_5414 : SourceCertificateFamily.RightNormalized.check cell_5414 = true := by
  decide +kernel

theorem check_5415 : SourceCertificateFamily.RightNormalized.check cell_5415 = true := by
  decide +kernel

theorem check_5416 : SourceCertificateFamily.RightNormalized.check cell_5416 = true := by
  decide +kernel

theorem check_5417 : SourceCertificateFamily.RightNormalized.check cell_5417 = true := by
  decide +kernel

theorem check_5418 : SourceCertificateFamily.RightNormalized.check cell_5418 = true := by
  decide +kernel

theorem check_5419 : SourceCertificateFamily.RightNormalized.check cell_5419 = true := by
  decide +kernel

theorem check_5420 : SourceCertificateFamily.RightNormalized.check cell_5420 = true := by
  decide +kernel

theorem check_5421 : SourceCertificateFamily.RightNormalized.check cell_5421 = true := by
  decide +kernel

theorem check_5422 : SourceCertificateFamily.RightNormalized.check cell_5422 = true := by
  decide +kernel

theorem check_5423 : SourceCertificateFamily.RightNormalized.check cell_5423 = true := by
  decide +kernel

theorem check_5424 : SourceCertificateFamily.RightNormalized.check cell_5424 = true := by
  decide +kernel

theorem check_5425 : SourceCertificateFamily.RightNormalized.check cell_5425 = true := by
  decide +kernel

theorem check_5426 : SourceCertificateFamily.RightNormalized.check cell_5426 = true := by
  decide +kernel

theorem check_5427 : SourceCertificateFamily.RightNormalized.check cell_5427 = true := by
  decide +kernel

theorem check_5428 : SourceCertificateFamily.RightNormalized.check cell_5428 = true := by
  decide +kernel

theorem check_5429 : SourceCertificateFamily.RightNormalized.check cell_5429 = true := by
  decide +kernel

theorem check_5430 : SourceCertificateFamily.RightNormalized.check cell_5430 = true := by
  decide +kernel

theorem check_5431 : SourceCertificateFamily.RightNormalized.check cell_5431 = true := by
  decide +kernel

theorem check_5432 : SourceCertificateFamily.RightNormalized.check cell_5432 = true := by
  decide +kernel

theorem check_5433 : SourceCertificateFamily.RightNormalized.check cell_5433 = true := by
  decide +kernel

theorem check_5434 : SourceCertificateFamily.RightNormalized.check cell_5434 = true := by
  decide +kernel

theorem check_5435 : SourceCertificateFamily.RightNormalized.check cell_5435 = true := by
  decide +kernel

theorem check_5436 : SourceCertificateFamily.RightNormalized.check cell_5436 = true := by
  decide +kernel

theorem check_5437 : SourceCertificateFamily.RightNormalized.check cell_5437 = true := by
  decide +kernel

theorem check_5438 : SourceCertificateFamily.RightNormalized.check cell_5438 = true := by
  decide +kernel

theorem check_5439 : SourceCertificateFamily.RightNormalized.check cell_5439 = true := by
  decide +kernel

theorem check_5440 : SourceCertificateFamily.RightNormalized.check cell_5440 = true := by
  decide +kernel

theorem check_5441 : SourceCertificateFamily.RightNormalized.check cell_5441 = true := by
  decide +kernel

theorem check_5442 : SourceCertificateFamily.RightNormalized.check cell_5442 = true := by
  decide +kernel

theorem check_5443 : SourceCertificateFamily.RightNormalized.check cell_5443 = true := by
  decide +kernel

theorem check_5444 : SourceCertificateFamily.RightNormalized.check cell_5444 = true := by
  decide +kernel

theorem check_5445 : SourceCertificateFamily.RightNormalized.check cell_5445 = true := by
  decide +kernel

theorem check_5446 : SourceCertificateFamily.RightNormalized.check cell_5446 = true := by
  decide +kernel

theorem check_5447 : SourceCertificateFamily.RightNormalized.check cell_5447 = true := by
  decide +kernel

theorem check_5448 : SourceCertificateFamily.RightNormalized.check cell_5448 = true := by
  decide +kernel

theorem check_5449 : SourceCertificateFamily.RightNormalized.check cell_5449 = true := by
  decide +kernel

def cells : List Cell := [cell_5400, cell_5401, cell_5402, cell_5403, cell_5404, cell_5405, cell_5406, cell_5407, cell_5408, cell_5409, cell_5410, cell_5411, cell_5412, cell_5413, cell_5414, cell_5415, cell_5416, cell_5417, cell_5418, cell_5419, cell_5420, cell_5421, cell_5422, cell_5423, cell_5424, cell_5425, cell_5426, cell_5427, cell_5428, cell_5429, cell_5430, cell_5431, cell_5432, cell_5433, cell_5434, cell_5435, cell_5436, cell_5437, cell_5438, cell_5439, cell_5440, cell_5441, cell_5442, cell_5443, cell_5444, cell_5445, cell_5446, cell_5447, cell_5448, cell_5449]

theorem all_certified : ∀ c ∈ cells, SourceCertificateFamily.Certified c := by
  simp only [cells, List.forall_mem_cons]
  exact ⟨SourceCertificateFamily.of_right_checked check_5400, SourceCertificateFamily.of_right_checked check_5401, SourceCertificateFamily.of_right_checked check_5402, SourceCertificateFamily.of_right_checked check_5403, SourceCertificateFamily.of_right_checked check_5404, SourceCertificateFamily.of_right_checked check_5405, SourceCertificateFamily.of_right_checked check_5406, SourceCertificateFamily.of_right_checked check_5407, SourceCertificateFamily.of_right_checked check_5408, SourceCertificateFamily.of_right_checked check_5409, SourceCertificateFamily.of_right_checked check_5410, SourceCertificateFamily.of_right_checked check_5411, SourceCertificateFamily.of_right_checked check_5412, SourceCertificateFamily.of_right_checked check_5413, SourceCertificateFamily.of_right_checked check_5414, SourceCertificateFamily.of_right_checked check_5415, SourceCertificateFamily.of_right_checked check_5416, SourceCertificateFamily.of_right_checked check_5417, SourceCertificateFamily.of_right_checked check_5418, SourceCertificateFamily.of_right_checked check_5419, SourceCertificateFamily.of_right_checked check_5420, SourceCertificateFamily.of_right_checked check_5421, SourceCertificateFamily.of_right_checked check_5422, SourceCertificateFamily.of_right_checked check_5423, SourceCertificateFamily.of_right_checked check_5424, SourceCertificateFamily.of_right_checked check_5425, SourceCertificateFamily.of_right_checked check_5426, SourceCertificateFamily.of_right_checked check_5427, SourceCertificateFamily.of_right_checked check_5428, SourceCertificateFamily.of_right_checked check_5429, SourceCertificateFamily.of_right_checked check_5430, SourceCertificateFamily.of_right_checked check_5431, SourceCertificateFamily.of_right_checked check_5432, SourceCertificateFamily.of_right_checked check_5433, SourceCertificateFamily.of_right_checked check_5434, SourceCertificateFamily.of_right_checked check_5435, SourceCertificateFamily.of_right_checked check_5436, SourceCertificateFamily.of_right_checked check_5437, SourceCertificateFamily.of_right_checked check_5438, SourceCertificateFamily.of_right_checked check_5439, SourceCertificateFamily.of_right_checked check_5440, SourceCertificateFamily.of_right_checked check_5441, SourceCertificateFamily.of_right_checked check_5442, SourceCertificateFamily.of_right_checked check_5443, SourceCertificateFamily.of_right_checked check_5444, SourceCertificateFamily.of_right_checked check_5445, SourceCertificateFamily.of_right_checked check_5446, SourceCertificateFamily.of_right_checked check_5447, SourceCertificateFamily.of_right_checked check_5448, SourceCertificateFamily.of_right_checked check_5449, by simp⟩

#print axioms all_certified
end LuWang.SourceCertificates.Chunk0108

set_option Elab.async true

namespace LuWang.SourceCertificateLinks.Chunk0108
open SourceCertificate CurrentSourceData SourceCertificates.Chunk0108
open AnalyticBounds.ExpressionCertificate

theorem linked_5400 : Linked cell_5400 pieces := by
  refine ⟨piece_454,piece_454_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5400,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1379_mem

theorem linked_5401 : Linked cell_5401 pieces := by
  refine ⟨piece_454,piece_454_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5401,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1379_mem
    · exact piece_1380_mem

theorem linked_5402 : Linked cell_5402 pieces := by
  refine ⟨piece_454,piece_454_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5402,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1380_mem

theorem linked_5403 : Linked cell_5403 pieces := by
  refine ⟨piece_454,piece_454_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5403,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1380_mem

theorem linked_5404 : Linked cell_5404 pieces := by
  refine ⟨piece_454,piece_454_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5404,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1380_mem
    · exact piece_1381_mem

theorem linked_5405 : Linked cell_5405 pieces := by
  refine ⟨piece_454,piece_454_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5405,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1381_mem

theorem linked_5406 : Linked cell_5406 pieces := by
  refine ⟨piece_454,piece_454_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5406,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1381_mem

theorem linked_5407 : Linked cell_5407 pieces := by
  refine ⟨piece_454,piece_454_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5407,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1381_mem
    · exact piece_1382_mem

theorem linked_5408 : Linked cell_5408 pieces := by
  refine ⟨piece_454,piece_454_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5408,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1382_mem

theorem linked_5409 : Linked cell_5409 pieces := by
  refine ⟨piece_455,piece_455_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5409,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1381_mem

theorem linked_5410 : Linked cell_5410 pieces := by
  refine ⟨piece_455,piece_455_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5410,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1381_mem
    · exact piece_1382_mem

theorem linked_5411 : Linked cell_5411 pieces := by
  refine ⟨piece_455,piece_455_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5411,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1382_mem

theorem linked_5412 : Linked cell_5412 pieces := by
  refine ⟨piece_455,piece_455_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5412,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1382_mem

theorem linked_5413 : Linked cell_5413 pieces := by
  refine ⟨piece_455,piece_455_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5413,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1382_mem
    · exact piece_1383_mem

theorem linked_5414 : Linked cell_5414 pieces := by
  refine ⟨piece_455,piece_455_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5414,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1383_mem

theorem linked_5415 : Linked cell_5415 pieces := by
  refine ⟨piece_455,piece_455_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5415,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1383_mem

theorem linked_5416 : Linked cell_5416 pieces := by
  refine ⟨piece_455,piece_455_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5416,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1383_mem
    · exact piece_1384_mem

theorem linked_5417 : Linked cell_5417 pieces := by
  refine ⟨piece_455,piece_455_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5417,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1384_mem

theorem linked_5418 : Linked cell_5418 pieces := by
  refine ⟨piece_455,piece_455_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5418,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1384_mem

theorem linked_5419 : Linked cell_5419 pieces := by
  refine ⟨piece_455,piece_455_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5419,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1384_mem
    · exact piece_1385_mem

theorem linked_5420 : Linked cell_5420 pieces := by
  refine ⟨piece_455,piece_455_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5420,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1385_mem

theorem linked_5421 : Linked cell_5421 pieces := by
  refine ⟨piece_455,piece_455_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5421,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1385_mem

theorem linked_5422 : Linked cell_5422 pieces := by
  refine ⟨piece_455,piece_455_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5422,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1385_mem
    · exact piece_1386_mem

theorem linked_5423 : Linked cell_5423 pieces := by
  refine ⟨piece_455,piece_455_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5423,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1386_mem
    · exact piece_1387_mem

theorem linked_5424 : Linked cell_5424 pieces := by
  refine ⟨piece_455,piece_455_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5424,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1387_mem

theorem linked_5425 : Linked cell_5425 pieces := by
  refine ⟨piece_456,piece_456_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5425,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1385_mem
    · exact piece_1386_mem

theorem linked_5426 : Linked cell_5426 pieces := by
  refine ⟨piece_456,piece_456_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5426,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1386_mem
    · exact piece_1387_mem

theorem linked_5427 : Linked cell_5427 pieces := by
  refine ⟨piece_456,piece_456_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5427,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1387_mem

theorem linked_5428 : Linked cell_5428 pieces := by
  refine ⟨piece_456,piece_456_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5428,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1387_mem
    · exact piece_1388_mem

theorem linked_5429 : Linked cell_5429 pieces := by
  refine ⟨piece_456,piece_456_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5429,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1388_mem

theorem linked_5430 : Linked cell_5430 pieces := by
  refine ⟨piece_456,piece_456_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5430,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1388_mem

theorem linked_5431 : Linked cell_5431 pieces := by
  refine ⟨piece_456,piece_456_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5431,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1388_mem
    · exact piece_1389_mem

theorem linked_5432 : Linked cell_5432 pieces := by
  refine ⟨piece_456,piece_456_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5432,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1389_mem

theorem linked_5433 : Linked cell_5433 pieces := by
  refine ⟨piece_456,piece_456_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5433,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1389_mem

theorem linked_5434 : Linked cell_5434 pieces := by
  refine ⟨piece_456,piece_456_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5434,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1389_mem
    · exact piece_1390_mem

theorem linked_5435 : Linked cell_5435 pieces := by
  refine ⟨piece_456,piece_456_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5435,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1390_mem

theorem linked_5436 : Linked cell_5436 pieces := by
  refine ⟨piece_456,piece_456_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5436,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1390_mem

theorem linked_5437 : Linked cell_5437 pieces := by
  refine ⟨piece_456,piece_456_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5437,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1390_mem
    · exact piece_1391_mem

theorem linked_5438 : Linked cell_5438 pieces := by
  refine ⟨piece_456,piece_456_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5438,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1391_mem

theorem linked_5439 : Linked cell_5439 pieces := by
  refine ⟨piece_456,piece_456_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5439,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1391_mem

theorem linked_5440 : Linked cell_5440 pieces := by
  refine ⟨piece_456,piece_456_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5440,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1391_mem
    · exact piece_1392_mem

theorem linked_5441 : Linked cell_5441 pieces := by
  refine ⟨piece_457,piece_457_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5441,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1391_mem

theorem linked_5442 : Linked cell_5442 pieces := by
  refine ⟨piece_457,piece_457_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5442,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1391_mem

theorem linked_5443 : Linked cell_5443 pieces := by
  refine ⟨piece_457,piece_457_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5443,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1391_mem
    · exact piece_1392_mem

theorem linked_5444 : Linked cell_5444 pieces := by
  refine ⟨piece_457,piece_457_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5444,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1392_mem

theorem linked_5445 : Linked cell_5445 pieces := by
  refine ⟨piece_457,piece_457_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5445,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1392_mem

theorem linked_5446 : Linked cell_5446 pieces := by
  refine ⟨piece_457,piece_457_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5446,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1392_mem
    · exact piece_1393_mem

theorem linked_5447 : Linked cell_5447 pieces := by
  refine ⟨piece_457,piece_457_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5447,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1393_mem

theorem linked_5448 : Linked cell_5448 pieces := by
  refine ⟨piece_457,piece_457_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5448,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl
    exact piece_1393_mem

theorem linked_5449 : Linked cell_5449 pieces := by
  refine ⟨piece_457,piece_457_mem,rfl,?_,?_,?_⟩
  · decide +kernel
  · decide +kernel
  · intro p hp
    simp only [cell_5449,List.mem_cons,List.not_mem_nil,or_false] at hp
    rcases hp with rfl | rfl
    · exact piece_1393_mem
    · exact piece_1394_mem

theorem all_linked : ∀ c ∈ SourceCertificates.Chunk0108.cells, Linked c pieces := by
  simp only [SourceCertificates.Chunk0108.cells,List.forall_mem_cons]
  exact ⟨linked_5400, linked_5401, linked_5402, linked_5403, linked_5404, linked_5405, linked_5406, linked_5407, linked_5408, linked_5409, linked_5410, linked_5411, linked_5412, linked_5413, linked_5414, linked_5415, linked_5416, linked_5417, linked_5418, linked_5419, linked_5420, linked_5421, linked_5422, linked_5423, linked_5424, linked_5425, linked_5426, linked_5427, linked_5428, linked_5429, linked_5430, linked_5431, linked_5432, linked_5433, linked_5434, linked_5435, linked_5436, linked_5437, linked_5438, linked_5439, linked_5440, linked_5441, linked_5442, linked_5443, linked_5444, linked_5445, linked_5446, linked_5447, linked_5448, linked_5449, by simp⟩

theorem covered : covers (16321875000000001 / 100000000000000000 : ℚ) (32961033519553071 / 200000000000000000 : ℚ)
    (SourceCertificates.Chunk0108.cells.map Cell.domain) = true := by
  decide +kernel

end LuWang.SourceCertificateLinks.Chunk0108
