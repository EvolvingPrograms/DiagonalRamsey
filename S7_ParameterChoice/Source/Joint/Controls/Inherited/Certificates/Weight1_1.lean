import S7_ParameterChoice.Source.Joint.Controls.ControlPrecision
import S7_ParameterChoice.Source.Joint.Controls.ControlTransport
import S7_ParameterChoice.Source.Joint.Controls.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.Controls.EnvelopeData
import S7_ParameterChoice.Source.Joint.Controls.FastControlDomain
import S7_ParameterChoice.Source.Joint.Controls.Inherited.InheritedControls

set_option Elab.async false
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

namespace DiagonalRamsey.JointInheritedCertificate423
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(10476392763/50000000000 : ℚ), (8869275950457/5000000000 : ℚ), (-372232008451729/1000000000000 : ℚ), 12⟩,
    ⟨(52490810207/250000000000 : ℚ), (1941060150827/10000000000 : ℚ), (-41103955619853/1000000000000 : ℚ), 9⟩,
    ⟨(42165963793/200000000000 : ℚ), (68113321383/1000000000 : ℚ), (-14613477262401/1000000000000 : ℚ), 7⟩,
    ⟨(13257452753/62500000000 : ℚ), (335767682813/10000000000 : ℚ), (-146295659751/20000000000 : ℚ), 7⟩,
    ⟨(213819098209/1000000000000 : ℚ), (19462545577/1000000000 : ℚ), (-4310871559141/1000000000000 : ℚ), 6⟩,
    ⟨(215913010923/1000000000000 : ℚ), (61897436601/5000000000 : ℚ), (-1394970549543/500000000000 : ℚ), 5⟩,
    ⟨(218380816667/1000000000000 : ℚ), (8346858477/1000000000 : ℚ), (-957406478033/500000000000 : ℚ), 5⟩,
    ⟨(221198749121/1000000000000 : ℚ), (29227694097/5000000000 : ℚ), (-54615087321/40000000000 : ℚ), 5⟩,
    ⟨(224339670057/1000000000000 : ℚ), (41945948069/10000000000 : ℚ), (-997807586793/1000000000000 : ℚ), 4⟩,
    ⟨(889739573/3906250000 : ℚ), (610445759/200000000 : ℚ), (-739707973083/1000000000000 : ℚ), 4⟩,
    ⟨(46293332597/200000000000 : ℚ), (4463603763/2000000000 : ℚ), (-110283469751/200000000000 : ℚ), 4⟩,
    ⟨(235384098139/1000000000000 : ℚ), (16245392731/10000000000 : ℚ), (-409734093677/1000000000000 : ℚ), 4⟩,
    ⟨(239487909109/1000000000000 : ℚ), (11636710887/10000000000 : ℚ), (-300355423481/1000000000000 : ℚ), 3⟩,
    ⟨(243738573951/1000000000000 : ℚ), (8064450883/10000000000 : ℚ), (-214079631953/1000000000000 : ℚ), 3⟩,
    ⟨(6202378911/25000000000 : ℚ), (2622576057/5000000000 : ℚ), (-72386836821/500000000000 : ℚ), 3⟩,
    ⟨(15782231269/62500000000 : ℚ), (746324733/2500000000 : ℚ), (-44113464761/500000000000 : ℚ), 3⟩,
    ⟨(256957633289/1000000000000 : ℚ), (1149478723/10000000000 : ℚ), (-41475551721/1000000000000 : ℚ), 3⟩,
    ⟨(261378177153/1000000000000 : ℚ), (-359071309/10000000000 : ℚ), (-2388854073/1000000000000 : ℚ), 3⟩,
    ⟨(265734759641/1000000000000 : ℚ), (-805370453/5000000000 : ℚ), (15296156519/500000000000 : ℚ), 3⟩,
    ⟨(269985424483/1000000000000 : ℚ), (-664379269/2500000000 : ℚ), (14656468603/250000000000 : ℚ), 3⟩,
    ⟨(274089235453/1000000000000 : ℚ), (-55285767/156250000 : ℚ), (82582260767/1000000000000 : ℚ), 3⟩,
    ⟨(17375416913/62500000000 : ℚ), (-4282458209/10000000000 : ℚ), (103122113019/1000000000000 : ℚ), 3⟩,
    ⟨(56340000581/200000000000 : ℚ), (-614055323/1250000000 : ℚ), (24150096549/200000000000 : ℚ), 3⟩,
    ⟨(57026732707/200000000000 : ℚ), (-2722723039/5000000000 : ℚ), (135855359727/1000000000000 : ℚ), 3⟩,
    ⟨(288274584471/1000000000000 : ℚ), (-2947363379/5000000000 : ℚ), (148735531239/1000000000000 : ℚ), 3⟩,
    ⟨(11643700677/40000000000 : ℚ), (-6270518749/10000000000 : ℚ), (159621038051/1000000000000 : ℚ), 3⟩,
    ⟨(293560322669/1000000000000 : ℚ), (-6580709421/10000000000 : ℚ), (168688387039/1000000000000 : ℚ), 2⟩,
    ⟨(36956779423/125000000000 : ℚ), (-85391757/125000000 : ℚ), (176071970621/1000000000000 : ℚ), 2⟩,
    ⟨(59470817909/200000000000 : ℚ), (-7026980213/10000000000 : ℚ), (90936336057/500000000000 : ℚ), 2⟩,
    ⟨(74660878657/250000000000 : ℚ), (-1792749293/2500000000 : ℚ), (46541080189/250000000000 : ℚ), 2⟩,
    ⟨(74877523191/250000000000 : ℚ), (-3632879993/5000000000 : ℚ), (188998445189/1000000000000 : ℚ), 2⟩,
    ⟨(299945478333/1000000000000 : ℚ), (-731277531/1000000000 : ℚ), (23800952957/125000000000 : ℚ), 2⟩,
    ⟨(3/10 : ℚ), (-731863527/1000000000 : ℚ), (23822925813/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (81918781209/250000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control423.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control423.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate423

namespace DiagonalRamsey.JointInheritedCertificate472
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(174031755721/1000000000000 : ℚ), (17071599752721/10000000000 : ℚ), (-297551604314379/1000000000000 : ℚ), 12⟩,
    ⟨(174397343133/1000000000000 : ℚ), (1867727402169/10000000000 : ℚ), (-16426819096479/500000000000 : ℚ), 9⟩,
    ⟨(3502499943/20000000000 : ℚ), (81897888193/1250000000 : ℚ), (-2919393927463/250000000000 : ℚ), 8⟩,
    ⟨(88103855033/500000000000 : ℚ), (322821631923/10000000000 : ℚ), (-1460767082667/250000000000 : ℚ), 7⟩,
    ⟨(35527010953/200000000000 : ℚ), (187001135359/10000000000 : ℚ), (-688343126519/200000000000 : ℚ), 6⟩,
    ⟨(11212080321/62500000000 : ℚ), (59422237333/5000000000 : ℚ), (-2225813172399/1000000000000 : ℚ), 5⟩,
    ⟨(181465468459/1000000000000 : ℚ), (40020806703/5000000000 : ℚ), (-381533930817/250000000000 : ℚ), 5⟩,
    ⟨(183831648477/1000000000000 : ℚ), (27986561957/5000000000 : ℚ), (-217358764393/200000000000 : ℚ), 5⟩,
    ⟨(93234518791/500000000000 : ℚ), (40086190609/10000000000 : ℚ), (-39640813707/50000000000 : ℚ), 4⟩,
    ⟨(189352236277/1000000000000 : ℚ), (29091753053/10000000000 : ℚ), (-586331905569/1000000000000 : ℚ), 4⟩,
    ⟨(9622673889/50000000000 : ℚ), (21193931973/10000000000 : ℚ), (-217818812783/500000000000 : ℚ), 4⟩,
    ⟨(195742895441/1000000000000 : ℚ), (15346163661/10000000000 : ℚ), (-161093909073/500000000000 : ℚ), 4⟩,
    ⟨(19918881037/100000000000 : ℚ), (2181220747/2000000000 : ℚ), (-58637646037/250000000000 : ℚ), 3⟩,
    ⟨(202758036523/1000000000000 : ℚ), (7462526243/10000000000 : ℚ), (-165371881827/1000000000000 : ℚ), 3⟩,
    ⟨(206416200299/1000000000000 : ℚ), (741067/1562500 : ℚ), (-109750847061/1000000000000 : ℚ), 3⟩,
    ⟨(6566502237/31250000000 : ℚ), (256095453/1000000000 : ℚ), (-32161754709/500000000000 : ℚ), 3⟩,
    ⟨(106928951513/500000000000 : ℚ), (196687539/2500000000 : ℚ), (-26722676863/1000000000000 : ℚ), 3⟩,
    ⟨(21756977431/100000000000 : ℚ), (-16818847/250000000 : ℚ), (594088671/125000000000 : ℚ), 3⟩,
    ⟨(221227938087/1000000000000 : ℚ), (-942578643/5000000000 : ℚ), (31346731881/1000000000000 : ℚ), 3⟩,
    ⟨(2809964553/12500000000 : ℚ), (-181272481/625000000 : ℚ), (53982664913/1000000000000 : ℚ), 3⟩,
    ⟨(228243079169/1000000000000 : ℚ), (-3755665659/10000000000 : ℚ), (73353917537/1000000000000 : ℚ), 3⟩,
    ⟨(23153249683/100000000000 : ℚ), (-4479258331/10000000000 : ℚ), (44993091031/500000000000 : ℚ), 3⟩,
    ⟨(234633738333/1000000000000 : ℚ), (-5092610009/10000000000 : ℚ), (104280797433/1000000000000 : ℚ), 3⟩,
    ⟨(237516937027/1000000000000 : ℚ), (-14030461/25000000 : ℚ), (5827279313/50000000000 : ℚ), 3⟩,
    ⟨(240154326133/1000000000000 : ℚ), (-756332173/1250000000 : ℚ), (3969286383/31250000000 : ℚ), 3⟩,
    ⟨(242520506151/1000000000000 : ℚ), (-6417804201/10000000000 : ℚ), (16984666409/125000000000 : ℚ), 3⟩,
    ⟨(122296344737/500000000000 : ℚ), (-6721151149/10000000000 : ℚ), (2238519823/15625000000 : ℚ), 3⟩,
    ⟨(49270183969/200000000000 : ℚ), (-6966457859/10000000000 : ℚ), (149286701543/1000000000000 : ℚ), 3⟩,
    ⟨(247778264543/1000000000000 : ℚ), (-7158075069/10000000000 : ℚ), (9626300443/62500000000 : ℚ), 3⟩,
    ⟨(12443048873/50000000000 : ℚ), (-1824802169/2500000000 : ℚ), (4922668737/31250000000 : ℚ), 3⟩,
    ⟨(249588631477/1000000000000 : ℚ), (-924013893/1250000000 : ℚ), (31968150049/200000000000 : ℚ), 3⟩,
    ⟨(249954218889/1000000000000 : ℚ), (-7438214533/10000000000 : ℚ), (16099228001/100000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-7443961347/10000000000 : ℚ), (161135937197/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (371062513809/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control472.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control472.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate472

namespace DiagonalRamsey.JointInheritedCertificate473
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(49622439507/200000000000 : ℚ), (9074675684509/5000000000 : ℚ), (-28184643043919/62500000000 : ℚ), 12⟩,
    ⟨(248602519489/1000000000000 : ℚ), (993451759549/5000000000 : ℚ), (-12449593987107/250000000000 : ℚ), 9⟩,
    ⟨(24957844133/100000000000 : ℚ), (697678420217/10000000000 : ℚ), (-35411371953/2000000000 : ℚ), 8⟩,
    ⟨(50206112879/200000000000 : ℚ), (172098599533/5000000000 : ℚ), (-4431773431771/500000000000 : ℚ), 7⟩,
    ⟨(126472451973/500000000000 : ℚ), (39938548747/2000000000 : ℚ), (-1306124334779/250000000000 : ℚ), 6⟩,
    ⟨(31912877981/125000000000 : ℚ), (15893489209/1250000000 : ℚ), (-3382087246147/1000000000000 : ℚ), 5⟩,
    ⟨(51616442823/200000000000 : ℚ), (42914477809/5000000000 : ℚ), (-1161044154181/500000000000 : ℚ), 5⟩,
    ⟨(261255709627/1000000000000 : ℚ), (30094776867/5000000000 : ℚ), (-828345915783/500000000000 : ℚ), 5⟩,
    ⟨(264792947887/1000000000000 : ℚ), (43260302799/10000000000 : ℚ), (-1211653559159/1000000000000 : ℚ), 4⟩,
    ⟨(268659863357/1000000000000 : ℚ), (6308463103/2000000000 : ℚ), (-899265110113/1000000000000 : ℚ), 4⟩,
    ⟨(136409607763/500000000000 : ℚ), (23124635521/10000000000 : ℚ), (-671475870951/1000000000000 : ℚ), 4⟩,
    ⟨(277230947561/1000000000000 : ℚ), (8446629547/5000000000 : ℚ), (-500175092369/1000000000000 : ℚ), 4⟩,
    ⟨(281852572069/1000000000000 : ℚ), (1520519467/1250000000 : ℚ), (-368032424611/1000000000000 : ℚ), 3⟩,
    ⟨(286639580281/1000000000000 : ℚ), (1699835321/2000000000 : ℚ), (-131948503649/500000000000 : ℚ), 3⟩,
    ⟨(29154587069/100000000000 : ℚ), (5607679137/10000000000 : ℚ), (-45083813139/250000000000 : ℚ), 3⟩,
    ⟨(296524193037/1000000000000 : ℚ), (3291133537/10000000000 : ℚ), (-2244844701/20000000000 : ℚ), 3⟩,
    ⟨(150763301679/500000000000 : ℚ), (282105483/2000000000 : ℚ), (-28011596551/500000000000 : ℚ), 3⟩,
    ⟨(61300985141/200000000000 : ℚ), (-26709841/2000000000 : ℚ), (-9092503333/1000000000000 : ℚ), 3⟩,
    ⟨(155705608057/500000000000 : ℚ), (-1413473079/10000000000 : ℚ), (15221604569/500000000000 : ℚ), 3⟩,
    ⟨(12647928973/40000000000 : ℚ), (-2482748667/10000000000 : ℚ), (63991329027/1000000000000 : ℚ), 3⟩,
    ⟨(160409924417/500000000000 : ℚ), (-211340039/625000000 : ℚ), (92610958481/1000000000000 : ℚ), 3⟩,
    ⟨(81307895217/250000000000 : ℚ), (-258741927/625000000 : ℚ), (117106976651/1000000000000 : ℚ), 3⟩,
    ⟨(164695466519/500000000000 : ℚ), (-4781184401/10000000000 : ℚ), (138095626979/1000000000000 : ℚ), 3⟩,
    ⟨(83314462127/250000000000 : ℚ), (-5323162187/10000000000 : ℚ), (39012780021/250000000000 : ℚ), 3⟩,
    ⟨(21049692923/62500000000 : ℚ), (-115590423/200000000 : ℚ), (10708707523/62500000000 : ℚ), 3⟩,
    ⟨(339968582279/1000000000000 : ℚ), (-770107487/1250000000 : ℚ), (23030308897/125000000000 : ℚ), 3⟩,
    ⟨(342747772547/1000000000000 : ℚ), (-6475353807/10000000000 : ℚ), (19497757941/100000000000 : ℚ), 3⟩,
    ⟨(10784559139/31250000000 : ℚ), (-336463499/500000000 : ℚ), (101855107587/500000000000 : ℚ), 3⟩,
    ⟨(43377529/125000000 : ℚ), (-3463674863/5000000000 : ℚ), (210564912667/1000000000000 : ℚ), 3⟩,
    ⟨(69694471013/200000000000 : ℚ), (-7073091287/10000000000 : ℚ), (107816487861/500000000000 : ℚ), 2⟩,
    ⟨(69889655381/200000000000 : ℚ), (-7168955077/10000000000 : ℚ), (43795645641/200000000000 : ℚ), 2⟩,
    ⟨(17496929943/50000000000 : ℚ), (-7216506553/10000000000 : ℚ), (220641070473/1000000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-3611216433/5000000000 : ℚ), (110424236613/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (151516647711/500000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control473.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control473.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate473

namespace DiagonalRamsey.JointInheritedCertificate508
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(17522030373/100000000000 : ℚ), (168284271871/400000000 : ℚ), (-37026632170531/500000000000 : ℚ), 10⟩,
    ⟨(176653706813/1000000000000 : ℚ), (444154255861/10000000000 : ℚ), (-501205630083/62500000000 : ℚ), 7⟩,
    ⟨(89732714051/500000000000 : ℚ), (146653320433/10000000000 : ℚ), (-109427893557/40000000000 : ℚ), 6⟩,
    ⟨(91773707363/500000000000 : ℚ), (264783349/40000000 : ℚ), (-319730662373/250000000000 : ℚ), 5⟩,
    ⟨(188742798227/1000000000000 : ℚ), (6770739257/2000000000 : ℚ), (-678246098391/1000000000000 : ℚ), 4⟩,
    ⟨(194851922931/1000000000000 : ℚ), (17906798253/10000000000 : ℚ), (-373003320683/1000000000000 : ℚ), 4⟩,
    ⟨(100820009301/500000000000 : ℚ), (4490045991/5000000000 : ℚ), (-196341837533/1000000000000 : ℚ), 3⟩,
    ⟨(20884622253/100000000000 : ℚ), (141038149/400000000 : ℚ), (-1691220441/20000000000 : ℚ), 3⟩,
    ⟨(216193604339/1000000000000 : ℚ), (-13139391/5000000000 : ℚ), (-4578092253/500000000000 : ℚ), 3⟩,
    ⟨(111699904133/500000000000 : ℚ), (-2450952407/10000000000 : ℚ), (44090310299/1000000000000 : ℚ), 3⟩,
    ⟨(230187903937/1000000000000 : ℚ), (-2080033499/5000000000 : ℚ), (10353398357/125000000000 : ℚ), 3⟩,
    ⟨(236297028641/1000000000000 : ℚ), (-5384962481/10000000000 : ℚ), (2784613517/25000000000 : ℚ), 3⟩,
    ⟨(241492412143/1000000000000 : ℚ), (-6260243173/10000000000 : ℚ), (66144437787/500000000000 : ℚ), 3⟩,
    ⟨(122787199383/500000000000 : ℚ), (-214550353/312500000 : ℚ), (73514713857/500000000000 : ℚ), 3⟩,
    ⟨(31048265007/125000000000 : ℚ), (-3623970137/5000000000 : ℚ), (15647159133/100000000000 : ℚ), 3⟩,
    ⟨(249819523139/1000000000000 : ℚ), (-7433288693/10000000000 : ℚ), (40272149917/250000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-932024687/1250000000 : ℚ), (161661112853/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (380746990501/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control508.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control508.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate508

namespace DiagonalRamsey.JointInheritedCertificate538
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(88045952431/500000000000 : ℚ), (8384956234791/5000000000 : ℚ), (-59147254723451/200000000000 : ℚ), 12⟩,
    ⟨(176447578071/1000000000000 : ℚ), (1835198373879/10000000000 : ℚ), (-32650276521747/1000000000000 : ℚ), 9⟩,
    ⟨(88577749581/500000000000 : ℚ), (321989055953/5000000000 : ℚ), (-580159005169/50000000000 : ℚ), 8⟩,
    ⟨(89104425233/500000000000 : ℚ), (158698754327/5000000000 : ℚ), (-5804215089011/1000000000000 : ℚ), 7⟩,
    ⟨(179597487637/1000000000000 : ℚ), (36780752147/2000000000 : ℚ), (-1708750666529/500000000000 : ℚ), 6⟩,
    ⟨(181308037337/1000000000000 : ℚ), (29223155991/2500000000 : ℚ), (-220902267171/100000000000 : ℚ), 6⟩,
    ⟨(4583100651/25000000000 : ℚ), (78727348827/10000000000 : ℚ), (-1513629450813/1000000000000 : ℚ), 5⟩,
    ⟨(185626038671/1000000000000 : ℚ), (55044311127/10000000000 : ℚ), (-134623823499/125000000000 : ℚ), 5⟩,
    ⟨(18819190559/100000000000 : ℚ), (39404729741/10000000000 : ℚ), (-784835027037/1000000000000 : ℚ), 4⟩,
    ⟨(190996916097/1000000000000 : ℚ), (14288199803/5000000000 : ℚ), (-57964391177/100000000000 : ℚ), 4⟩,
    ⟨(97007028203/500000000000 : ℚ), (2599279013/1250000000 : ℚ), (-26869187917/62500000000 : ℚ), 4⟩,
    ⟨(12325891863/62500000000 : ℚ), (15029428957/10000000000 : ℚ), (-158595657643/500000000000 : ℚ), 4⟩,
    ⟨(100283368249/500000000000 : ℚ), (2662604739/2500000000 : ℚ), (-115067064919/500000000000 : ℚ), 4⟩,
    ⟨(204039170389/1000000000000 : ℚ), (1813193627/2500000000 : ℚ), (-3228513371/20000000000 : ℚ), 3⟩,
    ⟨(51899532511/250000000000 : ℚ), (571040531/1250000000 : ℚ), (-21238860973/200000000000 : ℚ), 3⟩,
    ⟨(3300145949/15625000000 : ℚ), (241397717/1000000000 : ℚ), (-30547941489/500000000000 : ℚ), 3⟩,
    ⟨(214838024533/1000000000000 : ℚ), (165402433/2500000000 : ℚ), (-11888457343/500000000000 : ℚ), 3⟩,
    ⟨(8737969409/40000000000 : ℚ), (-195083021/2500000000 : ℚ), (3727013921/500000000000 : ℚ), 3⟩,
    ⟨(693775609/3125000000 : ℚ), (-1978444421/10000000000 : ℚ), (16917085513/500000000000 : ℚ), 3⟩,
    ⟨(225480628771/1000000000000 : ℚ), (-1490952407/5000000000 : ℚ), (56281854959/1000000000000 : ℚ), 3⟩,
    ⟨(11441654773/50000000000 : ℚ), (-1913745509/5000000000 : ℚ), (4717931387/62500000000 : ℚ), 3⟩,
    ⟨(116016654431/500000000000 : ℚ), (-2271498367/5000000000 : ℚ), (91972371053/1000000000000 : ℚ), 3⟩,
    ⟨(58762612293/250000000000 : ℚ), (-5149602543/10000000000 : ℚ), (10613764267/100000000000 : ℚ), 3⟩,
    ⟨(237855459679/1000000000000 : ℚ), (-2831775409/5000000000 : ℚ), (118289063039/1000000000000 : ℚ), 3⟩,
    ⟨(120210663299/500000000000 : ℚ), (-3048673733/5000000000 : ℚ), (128662115637/1000000000000 : ℚ), 3⟩,
    ⟨(242723339229/1000000000000 : ℚ), (-6460635827/10000000000 : ℚ), (137437716139/1000000000000 : ℚ), 3⟩,
    ⟨(244739327931/1000000000000 : ℚ), (-845104891/1250000000 : ℚ), (72377172309/500000000000 : ℚ), 3⟩,
    ⟨(1925389669/7812500000 : ℚ), (-7003636353/10000000000 : ℚ), (75358582199/500000000000 : ℚ), 3⟩,
    ⟨(123919257401/500000000000 : ℚ), (-1438663129/2000000000 : ℚ), (31080980771/200000000000 : ℚ), 3⟩,
    ⟨(248891866107/1000000000000 : ℚ), (-7333035421/10000000000 : ℚ), (158875026139/1000000000000 : ℚ), 3⟩,
    ⟨(249599787197/1000000000000 : ℚ), (-3712506929/5000000000 : ℚ), (161167541381/1000000000000 : ℚ), 3⟩,
    ⟨(124977730203/500000000000 : ℚ), (-3735330363/5000000000 : ℚ), (1623076969/10000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-7476350731/10000000000 : ℚ), (20306241793/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (195251765023/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control538.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control538.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate538

namespace DiagonalRamsey.JointInheritedCertificate539
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(42633596167/200000000000 : ℚ), (4320095499209/2500000000 : ℚ), (-92221570982717/250000000000 : ℚ), 12⟩,
    ⟨(213585848767/1000000000000 : ℚ), (236456437977/1250000000 : ℚ), (-40729460965491/1000000000000 : ℚ), 9⟩,
    ⟨(42883512067/200000000000 : ℚ), (664112367233/10000000000 : ℚ), (-361917369631/25000000000 : ℚ), 8⟩,
    ⟨(215655105701/1000000000000 : ℚ), (163764316029/5000000000 : ℚ), (-7243510381309/1000000000000 : ℚ), 7⟩,
    ⟨(54321641657/250000000000 : ℚ), (94960893611/5000000000 : ℚ), (-2133289073453/500000000000 : ℚ), 6⟩,
    ⟨(109648115627/500000000000 : ℚ), (1888002921/156250000 : ℚ), (-2759326886619/1000000000000 : ℚ), 6⟩,
    ⟨(221664745411/1000000000000 : ℚ), (20368780551/2500000000 : ℚ), (-47302255713/25000000000 : ℚ), 5⟩,
    ⟨(224369299013/1000000000000 : ℚ), (2852398123/500000000 : ℚ), (-1347630747961/1000000000000 : ℚ), 5⟩,
    ⟨(227383845729/1000000000000 : ℚ), (1636584659/400000000 : ℚ), (-98341284821/100000000000 : ℚ), 4⟩,
    ⟨(57669838457/250000000000 : ℚ), (29743499417/10000000000 : ℚ), (-145537964561/200000000000 : ℚ), 4⟩,
    ⟨(58556021441/250000000000 : ℚ), (542875493/250000000 : ℚ), (-54115624463/100000000000 : ℚ), 4⟩,
    ⟨(29747987979/125000000000 : ℚ), (15768438587/10000000000 : ℚ), (-100204542147/250000000000 : ℚ), 4⟩,
    ⟨(15120162433/62500000000 : ℚ), (11252442001/10000000000 : ℚ), (-292500437799/1000000000000 : ℚ), 4⟩,
    ⟨(7687569977/31250000000 : ℚ), (309994067/400000000 : ℚ), (-41416603673/200000000000 : ℚ), 3⟩,
    ⟨(62545883919/250000000000 : ℚ), (311497027/625000000 : ℚ), (-138486845073/1000000000000 : ℚ), 3⟩,
    ⟨(31803277499/125000000000 : ℚ), (2765746059/10000000000 : ℚ), (-3301516303/40000000000 : ℚ), 3⟩,
    ⟨(129344716421/500000000000 : ℚ), (15045519/156250000 : ℚ), (-36297698893/1000000000000 : ℚ), 3⟩,
    ⟨(131466058579/500000000000 : ℚ), (-519150499/10000000000 : ℚ), (73332441/31250000000 : ℚ), 3⟩,
    ⟨(26711341357/100000000000 : ℚ), (-437325971/2500000000 : ℚ), (3494154323/100000000000 : ℚ), 3⟩,
    ⟨(135596526953/500000000000 : ℚ), (-2778431979/10000000000 : ℚ), (62635779457/1000000000000 : ℚ), 3⟩,
    ⟨(137565874501/500000000000 : ℚ), (-3644619969/10000000000 : ℚ), (86293105579/1000000000000 : ℚ), 3⟩,
    ⟨(27889156707/100000000000 : ℚ), (-2188337323/5000000000 : ℚ), (5328462567/50000000000 : ℚ), 3⟩,
    ⟨(141218149503/500000000000 : ℚ), (-4996568963/10000000000 : ℚ), (4958624369/40000000000 : ℚ), 3⟩,
    ⟨(57146361421/200000000000 : ℚ), (-5521169149/10000000000 : ℚ), (34716850599/250000000000 : ℚ), 3⟩,
    ⟨(288746353821/1000000000000 : ℚ), (-1192694829/2000000000 : ℚ), (30314258263/200000000000 : ℚ), 3⟩,
    ⟨(291450907423/1000000000000 : ℚ), (-3166758579/5000000000 : ℚ), (40576413141/250000000000 : ℚ), 3⟩,
    ⟨(14690971079/50000000000 : ℚ), (-6639028689/10000000000 : ℚ), (42811417613/250000000000 : ℚ), 3⟩,
    ⟨(147914543103/500000000000 : ℚ), (-6885927901/10000000000 : ℚ), (178524677089/1000000000000 : ℚ), 3⟩,
    ⟨(297460547133/1000000000000 : ℚ), (-6912781/9765625 : ℚ), (184242707887/1000000000000 : ℚ), 3⟩,
    ⟨(298698092499/1000000000000 : ℚ), (-7051372/9765625 : ℚ), (37694585701/200000000000 : ℚ), 3⟩,
    ⟨(299529804067/1000000000000 : ℚ), (-7313995983/10000000000 : ℚ), (38253274877/200000000000 : ℚ), 3⟩,
    ⟨(299947671999/1000000000000 : ℚ), (-3680166879/5000000000 : ℚ), (38531059133/200000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-1841527353/2500000000 : ℚ), (192828550177/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (44372283171/125000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control539.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control539.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate539

namespace DiagonalRamsey.JointInheritedCertificate540
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(137012339911/500000000000 : ℚ), (18202985545073/10000000000 : ℚ), (-49948280469621/100000000000 : ℚ), 12⟩,
    ⟨(27453467243/100000000000 : ℚ), (1993683230003/10000000000 : ℚ), (-10772608127/195312500 : ℚ), 9⟩,
    ⟨(275549746139/1000000000000 : ℚ), (700502565707/10000000000 : ℚ), (-9804700182277/500000000000 : ℚ), 8⟩,
    ⟨(277060125233/1000000000000 : ℚ), (345839212073/10000000000 : ℚ), (-4907888524711/500000000000 : ℚ), 7⟩,
    ⟨(4360175999/15625000000 : ℚ), (50199514121/2500000000 : ℚ), (-144630254817/25000000000 : ℚ), 6⟩,
    ⟨(56300797299/200000000000 : ℚ), (25590273301/2000000000 : ℚ), (-11702055581/3125000000 : ℚ), 5⟩,
    ⟨(5687893437/20000000000 : ℚ), (86439670463/10000000000 : ℚ), (-2570743086587/1000000000000 : ℚ), 5⟩,
    ⟨(287695481121/1000000000000 : ℚ), (6066691021/1000000000 : ℚ), (-1833922064519/1000000000000 : ℚ), 5⟩,
    ⟨(29137462571/100000000000 : ℚ), (10910099933/2500000000 : ℚ), (-335299501123/250000000000 : ℚ), 4⟩,
    ⟨(295396673443/1000000000000 : ℚ), (636979103/200000000 : ℚ), (-995422477967/1000000000000 : ℚ), 4⟩,
    ⟨(74930722451/250000000000 : ℚ), (4674898829/2000000000 : ℚ), (-74337232389/100000000000 : ℚ), 4⟩,
    ⟨(304311610961/1000000000000 : ℚ), (17098564901/10000000000 : ℚ), (-553909746907/1000000000000 : ℚ), 4⟩,
    ⟨(9659957657/31250000000 : ℚ), (12334184879/10000000000 : ℚ), (-407837133873/1000000000000 : ℚ), 4⟩,
    ⟨(2512781581/8000000000 : ℚ), (8641143067/10000000000 : ℚ), (-58560204191/200000000000 : ℚ), 3⟩,
    ⟨(319200817767/1000000000000 : ℚ), (572729319/1000000000 : ℚ), (-100282463131/500000000000 : ℚ), 3⟩,
    ⟨(324378859613/1000000000000 : ℚ), (3392969307/10000000000 : ℚ), (-31367835577/250000000000 : ℚ), 3⟩,
    ⟨(329581955789/1000000000000 : ℚ), (1498275497/10000000000 : ℚ), (-63535204091/1000000000000 : ℚ), 3⟩,
    ⟨(167379998817/500000000000 : ℚ), (-11380207/2000000000 : ℚ), (-5944503213/500000000000 : ℚ), 3⟩,
    ⟨(21241444861/62500000000 : ℚ), (-1345505713/10000000000 : ℚ), (15784060611/500000000000 : ℚ), 3⟩,
    ⟨(344842170377/1000000000000 : ℚ), (-484301727/2000000000 : ℚ), (68398797899/1000000000000 : ℚ), 3⟩,
    ⟨(8741230111/25000000000 : ℚ), (-3325358537/10000000000 : ℚ), (24944961347/250000000000 : ℚ), 3⟩,
    ⟨(177118962799/500000000000 : ℚ), (-2043847569/5000000000 : ℚ), (126606399523/1000000000000 : ℚ), 3⟩,
    ⟨(179282070979/500000000000 : ℚ), (-4731926437/10000000000 : ℚ), (149564489457/1000000000000 : ℚ), 3⟩,
    ⟨(90646547423/250000000000 : ℚ), (-2638024951/5000000000 : ℚ), (33836519657/200000000000 : ℚ), 3⟩,
    ⟨(366265334281/1000000000000 : ℚ), (-5733959717/10000000000 : ℚ), (185868926123/1000000000000 : ℚ), 3⟩,
    ⟨(5774470993/15625000000 : ℚ), (-6116398033/10000000000 : ℚ), (12496171281/62500000000 : ℚ), 3⟩,
    ⟨(186228414453/500000000000 : ℚ), (-6431654943/10000000000 : ℚ), (211634715153/1000000000000 : ℚ), 3⟩,
    ⟨(74981910293/200000000000 : ℚ), (-6686087629/10000000000 : ℚ), (221142202907/1000000000000 : ℚ), 3⟩,
    ⟨(376900690169/1000000000000 : ℚ), (-3442253261/5000000000 : ℚ), (45720150857/200000000000 : ℚ), 3⟩,
    ⟨(378411069263/1000000000000 : ℚ), (-7030461159/10000000000 : ℚ), (117056384467/500000000000 : ℚ), 3⟩,
    ⟨(379426142971/1000000000000 : ℚ), (-178161201/250000000 : ℚ), (237749876439/1000000000000 : ℚ), 3⟩,
    ⟨(379936135579/1000000000000 : ℚ), (-3587027757/5000000000 : ℚ), (29944680087/125000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-7179988571/10000000000 : ℚ), (119891438967/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (74846665823/250000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control540.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control540.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate540

namespace DiagonalRamsey.JointInheritedCertificate567
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(44334244337/250000000000 : ℚ), (4132461457143/10000000000 : ℚ), (-73604859555653/1000000000000 : ℚ), 10⟩,
    ⟨(178729807299/1000000000000 : ℚ), (218275352571/5000000000 : ℚ), (-7967816997873/1000000000000 : ℚ), 7⟩,
    ⟨(181461941527/1000000000000 : ℚ), (36053334697/2500000000 : ℚ), (-169750968553/62500000000 : ℚ), 6⟩,
    ⟨(92714192823/500000000000 : ℚ), (16273754629/2500000000 : ℚ), (-1268047203407/1000000000000 : ℚ), 5⟩,
    ⟨(190476711433/1000000000000 : ℚ), (16631397073/5000000000 : ℚ), (-83881076777/125000000000 : ℚ), 4⟩,
    ⟨(196412914559/1000000000000 : ℚ), (17552269241/10000000000 : ℚ), (-9193105189/25000000000 : ℚ), 4⟩,
    ⟨(203008870067/1000000000000 : ℚ), (21874337/25000000 : ℚ), (-192221627209/1000000000000 : ℚ), 4⟩,
    ⟨(105005549543/500000000000 : ℚ), (841765407/2500000000 : ℚ), (-10152351027/125000000000 : ℚ), 3⟩,
    ⟨(217150509881/1000000000000 : ℚ), (-70497793/5000000000 : ℚ), (-6376971919/1000000000000 : ℚ), 3⟩,
    ⟨(2241527389/10000000000 : ℚ), (-2536806777/10000000000 : ℚ), (4644189997/100000000000 : ℚ), 3⟩,
    ⟨(28843586801/125000000000 : ℚ), (-528289211/1250000000 : ℚ), (84846078341/1000000000000 : ℚ), 3⟩,
    ⟨(118342448767/500000000000 : ℚ), (-1087522021/2000000000 : ℚ), (22628841171/200000000000 : ℚ), 3⟩,
    ⟨(241733223321/1000000000000 : ℚ), (-1260693341/2000000000 : ℚ), (133850852657/1000000000000 : ℚ), 3⟩,
    ⟨(3071245843/12500000000 : ℚ), (-55219999/80000000 : ℚ), (29689636377/200000000000 : ℚ), 3⟩,
    ⟨(62107950417/250000000000 : ℚ), (-3640461663/5000000000 : ℚ), (7889857317/50000000000 : ℚ), 3⟩,
    ⟨(249824631619/1000000000000 : ℚ), (-7464409337/10000000000 : ℚ), (162368230553/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-116985773/156250000 : ℚ), (81467517461/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (200126474897/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control567.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control567.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate567

namespace DiagonalRamsey.JointInheritedCertificate568
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(214401010617/1000000000000 : ℚ), (684507734097/400000000 : ℚ), (-36740931288757/100000000000 : ℚ), 12⟩,
    ⟨(13425809047/62500000000 : ℚ), (936761540169/5000000000 : ℚ), (-324515308353/8000000000 : ℚ), 9⟩,
    ⟨(215632845871/1000000000000 : ℚ), (65784439393/1000000000 : ℚ), (-14416606788481/1000000000000 : ℚ), 8⟩,
    ⟨(108426408939/500000000000 : ℚ), (40560147601/1250000000 : ℚ), (-7212346272919/1000000000000 : ℚ), 7⟩,
    ⟨(6826909743/31250000000 : ℚ), (9408672283/500000000 : ℚ), (-2123662135681/500000000000 : ℚ), 6⟩,
    ⟨(44088447763/200000000000 : ℚ), (29931302287/2500000000 : ℚ), (-2746109979083/1000000000000 : ℚ), 6⟩,
    ⟨(222777119659/1000000000000 : ℚ), (80726285801/10000000000 : ℚ), (-1882353957397/1000000000000 : ℚ), 5⟩,
    ⟨(7045102129/31250000000 : ℚ), (2260657331/400000000 : ℚ), (-1340087062227/1000000000000 : ℚ), 5⟩,
    ⟨(228415007757/1000000000000 : ℚ), (40523088759/10000000000 : ℚ), (-977343501417/1000000000000 : ℚ), 4⟩,
    ⟨(231663719067/1000000000000 : ℚ), (29446374891/10000000000 : ℚ), (-722663319273/1000000000000 : ℚ), 4⟩,
    ⟨(235158115193/1000000000000 : ℚ), (214838943/100000000 : ℚ), (-53689808613/100000000000 : ℚ), 4⟩,
    ⟨(23886454319/100000000000 : ℚ), (7792422577/5000000000 : ℚ), (-397145584489/1000000000000 : ℚ), 4⟩,
    ⟨(24274730813/100000000000 : ℚ), (346998487/312500000 : ℚ), (-72321767737/250000000000 : ℚ), 4⟩,
    ⟨(7711531777/31250000000 : ℚ), (7627855093/10000000000 : ℚ), (-8169546533/40000000000 : ℚ), 4⟩,
    ⟨(125445469069/500000000000 : ℚ), (610292193/1250000000 : ℚ), (-5437809879/40000000000 : ℚ), 3⟩,
    ⟨(255073375599/1000000000000 : ℚ), (1340038957/5000000000 : ℚ), (-80249113587/1000000000000 : ℚ), 3⟩,
    ⟨(51855210017/200000000000 : ℚ), (177981851/2000000000 : ℚ), (-34223099407/1000000000000 : ℚ), 3⟩,
    ⟨(52691697509/200000000000 : ℚ), (-581965557/10000000000 : ℚ), (4237615201/1000000000000 : ℚ), 3⟩,
    ⟨(13379020441/50000000000 : ℚ), (-1803830203/10000000000 : ℚ), (4584211047/125000000000 : ℚ), 3⟩,
    ⟨(135801058777/500000000000 : ℚ), (-2826153771/10000000000 : ℚ), (12845933749/200000000000 : ℚ), 3⟩,
    ⟨(137742441247/500000000000 : ℚ), (-9216791/25000000 : ℚ), (87766205947/1000000000000 : ℚ), 3⟩,
    ⟨(279191310491/1000000000000 : ℚ), (-4414098199/10000000000 : ℚ), (6746044267/62500000000 : ℚ), 3⟩,
    ⟨(282685706617/1000000000000 : ℚ), (-2515050757/5000000000 : ℚ), (125240813083/1000000000000 : ℚ), 3⟩,
    ⟨(285934417927/1000000000000 : ℚ), (-1110292519/2000000000 : ℚ), (1400623987/10000000000 : ℚ), 3⟩,
    ⟨(57781231511/200000000000 : ℚ), (-1198216047/2000000000 : ℚ), (38174270119/250000000000 : ℚ), 3⟩,
    ⟨(11662892241/40000000000 : ℚ), (-3179454873/5000000000 : ℚ), (16337241157/100000000000 : ℚ), 3⟩,
    ⟨(293907186869/1000000000000 : ℚ), (-6662620687/10000000000 : ℚ), (86131460563/500000000000 : ℚ), 3⟩,
    ⟨(73972078477/250000000000 : ℚ), (-172702113/250000000 : ℚ), (44875354319/250000000000 : ℚ), 3⟩,
    ⟨(59499321561/200000000000 : ℚ), (-7099737189/10000000000 : ℚ), (5787109981/31250000000 : ℚ), 3⟩,
    ⟨(74679144953/250000000000 : ℚ), (-7240847357/10000000000 : ℚ), (23674258777/125000000000 : ℚ), 3⟩,
    ⟨(299536480931/1000000000000 : ℚ), (-183342783/250000000 : ℚ), (96085933551/500000000000 : ℚ), 3⟩,
    ⟨(149974207533/500000000000 : ℚ), (-7379788787/10000000000 : ℚ), (96776501541/500000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-7385532053/10000000000 : ℚ), (96862643123/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (364182123999/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control568.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control568.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate568

namespace DiagonalRamsey.JointInheritedCertificate569
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(275554703261/1000000000000 : ℚ), (4506765601299/2500000000 : ℚ), (-248702062019027/500000000000 : ℚ), 12⟩,
    ⟨(69014333207/250000000000 : ℚ), (1974648011501/10000000000 : ℚ), (-27461889596839/500000000000 : ℚ), 9⟩,
    ⟨(69264437841/250000000000 : ℚ), (693913900443/10000000000 : ℚ), (-19525168068247/1000000000000 : ℚ), 8⟩,
    ⟨(69636581073/250000000000 : ℚ), (68526486777/2000000000 : ℚ), (-1221532058327/125000000000 : ℚ), 7⟩,
    ⟨(140254357921/500000000000 : ℚ), (198956671499/10000000000 : ℚ), (-5758451704163/1000000000000 : ℚ), 6⟩,
    ⟨(70731506777/250000000000 : ℚ), (3962024157/312500000 : ℚ), (-3726393290387/1000000000000 : ℚ), 6⟩,
    ⟨(17860936129/62500000000 : ℚ), (214125801/25000000 : ℚ), (-2557373491887/1000000000000 : ℚ), 5⟩,
    ⟨(289028131753/1000000000000 : ℚ), (30053366233/5000000000 : ℚ), (-1823633567949/1000000000000 : ℚ), 5⟩,
    ⟨(292654158527/1000000000000 : ℚ), (10807009937/2500000000 : ℚ), (-1332978908241/1000000000000 : ℚ), 4⟩,
    ⟨(148309068883/500000000000 : ℚ), (15768186687/5000000000 : ℚ), (-494332382587/500000000000 : ℚ), 4⟩,
    ⟨(300881894183/1000000000000 : ℚ), (23131728333/10000000000 : ℚ), (-368844513203/500000000000 : ℚ), 4⟩,
    ⟨(305404365473/1000000000000 : ℚ), (3381221683/2000000000 : ℚ), (-274521540019/500000000000 : ℚ), 4⟩,
    ⟨(155070998883/500000000000 : ℚ), (6089445309/5000000000 : ℚ), (-403608797907/1000000000000 : ℚ), 4⟩,
    ⟨(19690572817/62500000000 : ℚ), (8513891779/10000000000 : ℚ), (-72270922119/250000000000 : ℚ), 3⟩,
    ⟨(20004913043/62500000000 : ℚ), (2810801161/5000000000 : ℚ), (-39453014947/200000000000 : ℚ), 3⟩,
    ⟨(162590946161/500000000000 : ℚ), (3304130099/10000000000 : ℚ), (-61259246539/500000000000 : ℚ), 3⟩,
    ⟨(82577467141/250000000000 : ℚ), (56912003/400000000 : ℚ), (-15218736283/250000000000 : ℚ), 3⟩,
    ⟨(167706576099/500000000000 : ℚ), (-1216437/100000000 : ℚ), (-1895667923/200000000000 : ℚ), 3⟩,
    ⟨(170221297907/500000000000 : ℚ), (-1401535049/10000000000 : ℚ), (33763956209/1000000000000 : ℚ), 3⟩,
    ⟨(4316872039/12500000000 : ℚ), (-1235200453/5000000000 : ℚ), (8801066681/125000000000 : ℚ), 3⟩,
    ⟨(87521848853/250000000000 : ℚ), (-3368364431/10000000000 : ℚ), (101627746261/1000000000000 : ℚ), 3⟩,
    ⟨(354609866703/1000000000000 : ℚ), (-1031455759/2500000000 : ℚ), (128313378079/1000000000000 : ℚ), 3⟩,
    ⟨(4485920289/12500000000 : ℚ), (-4766002137/10000000000 : ℚ), (7557445521/50000000000 : ℚ), 3⟩,
    ⟨(362837602359/1000000000000 : ℚ), (-5306759987/10000000000 : ℚ), (34132172853/200000000000 : ℚ), 3⟩,
    ⟨(366463629133/1000000000000 : ℚ), (-1440470867/2500000000 : ℚ), (187255908057/1000000000000 : ℚ), 3⟩,
    ⟨(184858391411/500000000000 : ℚ), (-3071015643/5000000000 : ℚ), (201248098809/1000000000000 : ℚ), 3⟩,
    ⟨(372565733777/1000000000000 : ℚ), (-3227714137/5000000000 : ℚ), (212879144359/1000000000000 : ℚ), 3⟩,
    ⟨(93745761261/250000000000 : ℚ), (-3354190289/5000000000 : ℚ), (111166812367/500000000000 : ℚ), 3⟩,
    ⟨(376945436593/1000000000000 : ℚ), (-6905659069/10000000000 : ℚ), (229750476677/1000000000000 : ℚ), 3⟩,
    ⟨(378434009521/1000000000000 : ℚ), (-705078333/1000000000 : ℚ), (29403952989/125000000000 : ℚ), 3⟩,
    ⟨(189717214029/500000000000 : ℚ), (-7146228271/10000000000 : ℚ), (238848345649/1000000000000 : ℚ), 3⟩,
    ⟨(3039496461/8000000000 : ℚ), (-287742729/400000000 : ℚ), (120322887247/500000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-3599734001/5000000000 : ℚ), (120434973721/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (307621981851/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control569.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control569.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate569

namespace DiagonalRamsey.JointInheritedCertificate589
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7130970411/40000000000 : ℚ), (4116596702487/2500000000 : ℚ), (-58792973253561/200000000000 : ℚ), 12⟩,
    ⟨(178619431179/1000000000000 : ℚ), (45061712849/250000000 : ℚ), (-32451781385723/1000000000000 : ℚ), 9⟩,
    ⟨(89653224401/500000000000 : ℚ), (632703279683/10000000000 : ℚ), (-5765263705343/500000000000 : ℚ), 8⟩,
    ⟨(18032869679/100000000000 : ℚ), (311939636963/10000000000 : ℚ), (-1153249112447/200000000000 : ℚ), 7⟩,
    ⟨(36335266067/200000000000 : ℚ), (22598436343/1250000000 : ℚ), (-424227338337/125000000000 : ℚ), 6⟩,
    ⟨(183336370989/1000000000000 : ℚ), (114929395431/10000000000 : ℚ), (-2192587188993/1000000000000 : ℚ), 6⟩,
    ⟨(92646415827/500000000000 : ℚ), (774060273/100000000 : ℚ), (-375344526073/250000000000 : ℚ), 5⟩,
    ⟨(11720429409/62500000000 : ℚ), (54111147619/10000000000 : ℚ), (-213476182787/200000000000 : ℚ), 5⟩,
    ⟨(190016972643/1000000000000 : ℚ), (38720720513/10000000000 : ℚ), (-38850383061/50000000000 : ℚ), 5⟩,
    ⟨(192739156907/1000000000000 : ℚ), (14029877107/5000000000 : ℚ), (-573083198933/1000000000000 : ℚ), 4⟩,
    ⟨(48916801803/250000000000 : ℚ), (10197073587/5000000000 : ℚ), (-8485708109/20000000000 : ℚ), 4⟩,
    ⟨(39754584967/200000000000 : ℚ), (2942596377/2000000000 : ℚ), (-312291111981/1000000000000 : ℚ), 4⟩,
    ⟨(12626650001/62500000000 : ℚ), (2598882971/2500000000 : ℚ), (-225805068327/1000000000000 : ℚ), 4⟩,
    ⟨(205396300011/1000000000000 : ℚ), (704421443/1000000000 : ℚ), (-78780314477/500000000000 : ℚ), 4⟩,
    ⟨(104425085421/500000000000 : ℚ), (549415067/1250000000 : ℚ), (-102714650279/1000000000000 : ℚ), 3⟩,
    ⟨(106177374921/500000000000 : ℚ), (2268746877/10000000000 : ℚ), (-11588453933/200000000000 : ℚ), 3⟩,
    ⟨(107938143001/500000000000 : ℚ), (21536607/400000000 : ℚ), (-653229157/31250000000 : ℚ), 3⟩,
    ⟨(219380865003/1000000000000 : ℚ), (-442900903/5000000000 : ℚ), (2521056199/250000000000 : ℚ), 3⟩,
    ⟨(222834735833/1000000000000 : ℚ), (-1034744201/5000000000 : ℚ), (18125486133/500000000000 : ℚ), 3⟩,
    ⟨(226204635829/1000000000000 : ℚ), (-765273497/2500000000 : ℚ), (58510465587/1000000000000 : ℚ), 3⟩,
    ⟨(22945811101/100000000000 : ℚ), (-3896865061/10000000000 : ℚ), (77549056989/1000000000000 : ℚ), 3⟩,
    ⟨(29070478579/125000000000 : ℚ), (-4604202579/10000000000 : ℚ), (46943631091/500000000000 : ℚ), 3⟩,
    ⟨(117745939469/500000000000 : ℚ), (-2601996503/5000000000 : ℚ), (10792257823/100000000000 : ℚ), 3⟩,
    ⟨(119107031601/500000000000 : ℚ), (-357015977/625000000 : ℚ), (119959934863/1000000000000 : ℚ), 3⟩,
    ⟨(240704165301/1000000000000 : ℚ), (-19191641/31250000 : ℚ), (65116866623/500000000000 : ℚ), 3⟩,
    ⟨(24293820419/100000000000 : ℚ), (-6500711987/10000000000 : ℚ), (69462023261/500000000000 : ℚ), 3⟩,
    ⟨(48978932971/200000000000 : ℚ), (-1359547143/2000000000 : ℚ), (73084344043/500000000000 : ℚ), 3⟩,
    ⟨(24655470551/100000000000 : ℚ), (-1759498537/2500000000 : ℚ), (152072288197/1000000000000 : ℚ), 3⟩,
    ⟨(49580467811/200000000000 : ℚ), (-7225712467/10000000000 : ℚ), (156713149463/1000000000000 : ℚ), 3⟩,
    ⟨(124462293521/500000000000 : ℚ), (-368200067/500000000 : ℚ), (160148401967/1000000000000 : ℚ), 3⟩,
    ⟨(124805802333/500000000000 : ℚ), (-7455044467/10000000000 : ℚ), (162417808107/1000000000000 : ℚ), 3⟩,
    ⟨(24995677557/100000000000 : ℚ), (-1500045841/2000000000 : ℚ), (16354645037/100000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-3752930851/5000000000 : ℚ), (81843625317/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (205037278283/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control589.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control589.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate589

namespace DiagonalRamsey.JointInheritedCertificate590
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(107848982757/500000000000 : ℚ), (8475958466481/5000000000 : ℚ), (-183074234567401/500000000000 : ℚ), 12⟩,
    ⟨(10805182911/50000000000 : ℚ), (1856162500849/10000000000 : ℚ), (-40423389202133/1000000000000 : ℚ), 9⟩,
    ⟨(21691113659/100000000000 : ℚ), (162963170969/2500000000 : ℚ), (-7182586522401/500000000000 : ℚ), 8⟩,
    ⟨(43622524833/200000000000 : ℚ), (160787286919/5000000000 : ℚ), (-1796400676039/250000000000 : ℚ), 7⟩,
    ⟨(219696549963/1000000000000 : ℚ), (46627559717/2500000000 : ℚ), (-2115374642073/500000000000 : ℚ), 6⟩,
    ⟨(110823829957/500000000000 : ℚ), (14834398153/1250000000 : ℚ), (-2734690981947/1000000000000 : ℚ), 6⟩,
    ⟨(111973581881/500000000000 : ℚ), (80018214303/10000000000 : ℚ), (-1873909551589/1000000000000 : ℚ), 5⟩,
    ⟨(113286458013/500000000000 : ℚ), (56015530787/10000000000 : ℚ), (-1333518383867/1000000000000 : ℚ), 5⟩,
    ⟨(229499629279/1000000000000 : ℚ), (40155430567/10000000000 : ℚ), (-972038023153/1000000000000 : ℚ), 5⟩,
    ⟨(232699117671/1000000000000 : ℚ), (2916839959/1000000000 : ℚ), (-179563309609/250000000000 : ℚ), 4⟩,
    ⟨(11807028419/50000000000 : ℚ), (21268498081/10000000000 : ℚ), (-53314956531/100000000000 : ℚ), 4⟩,
    ⟨(47958167671/200000000000 : ℚ), (15414430031/10000000000 : ℚ), (-78780606259/200000000000 : ℚ), 4⟩,
    ⟨(487229547/2000000000 : ℚ), (10966691751/10000000000 : ℚ), (-143221494011/500000000000 : ℚ), 4⟩,
    ⟨(247575547229/1000000000000 : ℚ), (375778661/500000000 : ℚ), (-25214543249/125000000000 : ℚ), 4⟩,
    ⟨(251635015127/1000000000000 : ℚ), (1197309741/2500000000 : ℚ), (-16711045381/125000000000 : ℚ), 3⟩,
    ⟨(255754082297/1000000000000 : ℚ), (520393283/2000000000 : ℚ), (-9776896207/125000000000 : ℚ), 3⟩,
    ⟨(259893079873/1000000000000 : ℚ), (823685373/10000000000 : ℚ), (-32379205079/1000000000000 : ℚ), 3⟩,
    ⟨(264012147043/1000000000000 : ℚ), (-638634257/10000000000 : ℚ), (5917571409/1000000000000 : ℚ), 3⟩,
    ⟨(268071614941/1000000000000 : ℚ), (-1852730733/10000000000 : ℚ), (19105481997/500000000000 : ℚ), 3⟩,
    ⟨(27203238867/100000000000 : ℚ), (-286867951/1000000000 : ℚ), (65642004019/1000000000000 : ℚ), 3⟩,
    ⟨(55171264763/200000000000 : ℚ), (-744794543/2000000000 : ℚ), (89068763601/1000000000000 : ℚ), 3⟩,
    ⟨(279506593789/1000000000000 : ℚ), (-1111744241/2500000000 : ℚ), (54571370691/500000000000 : ℚ), 3⟩,
    ⟨(282948044499/1000000000000 : ℚ), (-2529667163/5000000000 : ℚ), (12636214233/100000000000 : ℚ), 3⟩,
    ⟨(286147532891/1000000000000 : ℚ), (-5577659243/10000000000 : ℚ), (70554877903/500000000000 : ℚ), 3⟩,
    ⟨(564598137/1953125000 : ℚ), (-6014756861/10000000000 : ℚ), (7684017811/50000000000 : ℚ), 3⟩,
    ⟨(36462499801/125000000000 : ℚ), (-6380509797/10000000000 : ℚ), (164300837623/1000000000000 : ℚ), 3⟩,
    ⟨(18374968891/62500000000 : ℚ), (-1336506163/2000000000 : ℚ), (173145205751/1000000000000 : ℚ), 3⟩,
    ⟨(147975306103/500000000000 : ℚ), (-865830871/1250000000 : ℚ), (180345850253/1000000000000 : ℚ), 3⟩,
    ⟨(59506907601/200000000000 : ℚ), (-7117259761/10000000000 : ℚ), (23250257153/125000000000 : ℚ), 3⟩,
    ⟨(14936801279/50000000000 : ℚ), (-3628805881/5000000000 : ℚ), (23773301253/125000000000 : ℚ), 3⟩,
    ⟨(5990870079/20000000000 : ℚ), (-1837495111/2500000000 : ℚ), (96474757127/500000000000 : ℚ), 3⟩,
    ⟨(18746824791/62500000000 : ℚ), (-3697906641/5000000000 : ℚ), (3886466711/20000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-740152611/1000000000 : ℚ), (194494705877/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (373410687771/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control590.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control590.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate590

namespace DiagonalRamsey.JointInheritedCertificate591
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(126947167851/500000000000 : ℚ), (17504230141881/10000000000 : ℚ), (-8900229009289/20000000000 : ℚ), 12⟩,
    ⟨(12717841593/50000000000 : ℚ), (958624630373/5000000000 : ℚ), (-49134139286303/1000000000000 : ℚ), 9⟩,
    ⟨(63819342521/250000000000 : ℚ), (42102738787/625000000 : ℚ), (-17463759580571/1000000000000 : ℚ), 8⟩,
    ⟨(256647085089/1000000000000 : ℚ), (166271242063/5000000000 : ℚ), (-174759988763/20000000000 : ℚ), 7⟩,
    ⟨(25845278577/100000000000 : ℚ), (19302760281/1000000000 : ℚ), (-2573437383993/500000000000 : ℚ), 6⟩,
    ⟨(130338541121/500000000000 : ℚ), (122943316223/10000000000 : ℚ), (-208047460313/62500000000 : ℚ), 6⟩,
    ⟨(52659710663/200000000000 : ℚ), (82996394211/10000000000 : ℚ), (-570692722829/250000000000 : ℚ), 5⟩,
    ⟨(266291952789/1000000000000 : ℚ), (58188067529/10000000000 : ℚ), (-1626203751741/1000000000000 : ℚ), 5⟩,
    ⟨(269628452591/1000000000000 : ℚ), (4179316341/1000000000 : ℚ), (-593553209571/500000000000 : ℚ), 5⟩,
    ⟨(68318980101/250000000000 : ℚ), (30434655589/10000000000 : ℚ), (-35156972969/40000000000 : ℚ), 4⟩,
    ⟨(277199229119/1000000000000 : ℚ), (22267646513/10000000000 : ℚ), (-327119278183/500000000000 : ℚ), 4⟩,
    ⟨(35170074391/125000000000 : ℚ), (16216293251/10000000000 : ℚ), (-121326850609/250000000000 : ℚ), 4⟩,
    ⟨(285719942201/1000000000000 : ℚ), (5809870771/5000000000 : ℚ), (-355027409193/1000000000000 : ℚ), 4⟩,
    ⟨(72558821861/250000000000 : ℚ), (8054494687/10000000000 : ℚ), (-31549129661/125000000000 : ℚ), 4⟩,
    ⟨(294863145613/1000000000000 : ℚ), (5239480769/10000000000 : ℚ), (-170066881579/1000000000000 : ℚ), 3⟩,
    ⟨(59911789581/200000000000 : ℚ), (2982591937/10000000000 : ℚ), (-51504692567/500000000000 : ℚ), 3⟩,
    ⟨(12171098847/40000000000 : ℚ), (287305711/2500000000 : ℚ), (-5958896399/125000000000 : ℚ), 3⟩,
    ⟨(308973273467/1000000000000 : ℚ), (-356953947/10000000000 : ℚ), (-749338717/500000000000 : ℚ), 3⟩,
    ⟨(78400282909/250000000000 : ℚ), (-803061569/5000000000 : ℚ), (37378496909/1000000000000 : ℚ), 3⟩,
    ⟨(318116476879/1000000000000 : ℚ), (-2650207213/10000000000 : ℚ), (70351070661/1000000000000 : ℚ), 3⟩,
    ⟨(20154738997/62500000000 : ℚ), (-3528113513/10000000000 : ℚ), (3077059961/31250000000 : ℚ), 3⟩,
    ⟨(326637189961/1000000000000 : ℚ), (-4269306261/10000000000 : ℚ), (15314855803/125000000000 : ℚ), 3⟩,
    ⟨(82640124669/250000000000 : ℚ), (-4896286953/10000000000 : ℚ), (143119278801/1000000000000 : ℚ), 3⟩,
    ⟨(41775995811/125000000000 : ℚ), (-1356586887/2500000000 : ℚ), (160736230493/1000000000000 : ℚ), 3⟩,
    ⟨(33754446629/100000000000 : ℚ), (-1468207347/2500000000 : ℚ), (2196644309/12500000000 : ℚ), 3⟩,
    ⟨(68107573153/200000000000 : ℚ), (-1249207939/2000000000 : ℚ), (94192152281/500000000000 : ℚ), 3⟩,
    ⟨(171579668419/500000000000 : ℚ), (-6553926361/10000000000 : ℚ), (198909001109/1000000000000 : ℚ), 3⟩,
    ⟨(34538363331/100000000000 : ℚ), (-1360515747/2000000000 : ℚ), (41493837757/200000000000 : ℚ), 3⟩,
    ⟨(347189333991/1000000000000 : ℚ), (-1399320077/2000000000 : ℚ), (214187794533/1000000000000 : ℚ), 3⟩,
    ⟨(87139762249/250000000000 : ℚ), (-7139385233/10000000000 : ℚ), (219154868927/1000000000000 : ℚ), 3⟩,
    ⟨(17473979361/50000000000 : ℚ), (-7233318473/10000000000 : ℚ), (222433308229/1000000000000 : ℚ), 3⟩,
    ⟨(174971041689/500000000000 : ℚ), (-7279916707/10000000000 : ℚ), (112031448731/500000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-291428977/400000000 : ℚ), (7008317211/31250000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (84317404309/250000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control591.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control591.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate591

namespace DiagonalRamsey.JointInheritedCertificate592
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(13857729531/50000000000 : ℚ), (1785636817447/1000000000 : ℚ), (-247770639905759/500000000000 : ℚ), 12⟩,
    ⟨(138824760467/500000000000 : ℚ), (1956194049171/10000000000 : ℚ), (-1709868717473/31250000000 : ℚ), 9⟩,
    ⟨(139317307557/500000000000 : ℚ), (687534677673/10000000000 : ℚ), (-9724791393309/500000000000 : ℚ), 8⟩,
    ⟨(280100386163/1000000000000 : ℚ), (339532672779/10000000000 : ℚ), (-4866577638293/500000000000 : ℚ), 7⟩,
    ⟨(141016358953/500000000000 : ℚ), (197180166353/10000000000 : ℚ), (-2867186780409/500000000000 : ℚ), 6⟩,
    ⟨(28441300093/100000000000 : ℚ), (62830871389/5000000000 : ℚ), (-1854964784127/500000000000 : ℚ), 6⟩,
    ⟨(28721831181/100000000000 : ℚ), (84892286461/10000000000 : ℚ), (-2545299518033/1000000000000 : ℚ), 5⟩,
    ⟨(72605408467/250000000000 : ℚ), (14892549859/2500000000 : ℚ), (-226790558233/125000000000 : ℚ), 5⟩,
    ⟨(146996058681/500000000000 : ℚ), (42834209457/10000000000 : ℚ), (-33138213731/25000000000 : ℚ), 5⟩,
    ⟨(297895376583/1000000000000 : ℚ), (31238745979/10000000000 : ℚ), (-491264364067/500000000000 : ℚ), 4⟩,
    ⟨(302093821013/1000000000000 : ℚ), (22901324151/10000000000 : ℚ), (-183130233151/250000000000 : ℚ), 4⟩,
    ⟨(153273508667/500000000000 : ℚ), (16724077329/10000000000 : ℚ), (-544612266107/1000000000000 : ℚ), 4⟩,
    ⟨(155606039417/500000000000 : ℚ), (12032540941/10000000000 : ℚ), (-399755774159/1000000000000 : ℚ), 4⟩,
    ⟨(316044078419/1000000000000 : ℚ), (839443021/1000000000 : ℚ), (-71423645929/250000000000 : ℚ), 4⟩,
    ⟨(80249120323/250000000000 : ℚ), (5522785883/10000000000 : ℚ), (-194256248363/1000000000000 : ℚ), 3⟩,
    ⟨(163010796553/500000000000 : ℚ), (3221430199/10000000000 : ℚ), (-2396537769/20000000000 : ℚ), 3⟩,
    ⟨(331071019287/1000000000000 : ℚ), (1352867083/10000000000 : ℚ), (-11690367093/200000000000 : ℚ), 3⟩,
    ⟨(3360961311/10000000000 : ℚ), (-90666423/5000000000 : ℚ), (-7285157733/1000000000000 : ℚ), 3⟩,
    ⟨(341048533973/1000000000000 : ℚ), (-726457059/5000000000 : ℚ), (8939615929/250000000000 : ℚ), 3⟩,
    ⟨(172940266779/500000000000 : ℚ), (-628744307/2500000000 : ℚ), (72230284139/1000000000000 : ℚ), 3⟩,
    ⟨(175272797529/500000000000 : ℚ), (-3407332513/10000000000 : ℚ), (103298717419/1000000000000 : ℚ), 3⟩,
    ⟨(17749939569/50000000000 : ℚ), (-520018117/1250000000 : ℚ), (129852601831/1000000000000 : ℚ), 3⟩,
    ⟨(359197235809/1000000000000 : ℚ), (-4796465047/10000000000 : ℚ), (30514637967/200000000000 : ℚ), 3⟩,
    ⟨(36310049503/100000000000 : ℚ), (-266700899/500000000 : ℚ), (34397058369/200000000000 : ℚ), 3⟩,
    ⟨(91667744631/250000000000 : ℚ), (-361655511/625000000 : ℚ), (18849424561/100000000000 : ℚ), 3⟩,
    ⟨(184937150291/500000000000 : ℚ), (-308222739/500000000 : ℚ), (101206529253/500000000000 : ℚ), 3⟩,
    ⟨(186339805731/500000000000 : ℚ), (-259043219/400000000 : ℚ), (53495650477/250000000000 : ℚ), 3⟩,
    ⟨(187529947243/500000000000 : ℚ), (-6727622841/10000000000 : ℚ), (223386786351/1000000000000 : ℚ), 3⟩,
    ⟨(376992226229/1000000000000 : ℚ), (-6923815123/10000000000 : ℚ), (230764016127/1000000000000 : ℚ), 3⟩,
    ⟨(189228998639/500000000000 : ℚ), (-7068148423/10000000000 : ℚ), (118107900701/500000000000 : ℚ), 3⟩,
    ⟨(189721545729/500000000000 : ℚ), (-3581538563/5000000000 : ℚ), (23981311639/100000000000 : ℚ), 3⟩,
    ⟨(94984505443/250000000000 : ℚ), (-3605081121/5000000000 : ℚ), (120800446057/500000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-7216030317/10000000000 : ℚ), (60455965191/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (599999/1000000 : ℚ)
  x := (157946192727/500000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control592.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control592.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate592

namespace DiagonalRamsey.JointInheritedCertificate608
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(54303004819/250000000000 : ℚ), (835026096279/2000000000 : ℚ), (-91059570192549/1000000000000 : ℚ), 11⟩,
    ⟨(8751957117/40000000000 : ℚ), (220871166097/5000000000 : ℚ), (-9856682956499/1000000000000 : ℚ), 7⟩,
    ⟨(44382352243/200000000000 : ℚ), (14621571511/1000000000 : ℚ), (-419955957837/125000000000 : ℚ), 6⟩,
    ⟨(113215447353/500000000000 : ℚ), (33072911693/5000000000 : ℚ), (-784324589691/500000000000 : ℚ), 5⟩,
    ⟨(46436532127/200000000000 : ℚ), (6778371347/2000000000 : ℚ), (-830538501423/1000000000000 : ℚ), 4⟩,
    ⟨(238946021861/1000000000000 : ℚ), (3591363659/2000000000 : ℚ), (-455844074471/1000000000000 : ℚ), 4⟩,
    ⟨(49292213241/200000000000 : ℚ), (563956143/625000000 : ℚ), (-59840935469/250000000000 : ℚ), 4⟩,
    ⟨(254438994729/1000000000000 : ℚ), (1780420417/5000000000 : ℚ), (-51367782599/500000000000 : ℚ), 3⟩,
    ⟨(262573220113/1000000000000 : ℚ), (1745769/5000000000 : ℚ), (-5436343609/500000000000 : ℚ), 3⟩,
    ⟨(67637787159/250000000000 : ℚ), (-605658219/2500000000 : ℚ), (10749265627/200000000000 : ℚ), 3⟩,
    ⟨(278066192981/1000000000000 : ℚ), (-1032613211/2500000000 : ℚ), (1257071531/12500000000 : ℚ), 3⟩,
    ⟨(284829554207/1000000000000 : ℚ), (-5352512119/10000000000 : ℚ), (134946505739/1000000000000 : ℚ), 3⟩,
    ⟨(58116264027/200000000000 : ℚ), (-6224473827/10000000000 : ℚ), (160027020191/1000000000000 : ℚ), 3⟩,
    ⟨(295100453627/1000000000000 : ℚ), (-1365363467/2000000000 : ℚ), (177663671751/1000000000000 : ℚ), 3⟩,
    ⟨(74553321729/250000000000 : ℚ), (-7206911159/10000000000 : ℚ), (47234685273/250000000000 : ℚ), 3⟩,
    ⟨(149900097783/500000000000 : ℚ), (-1847771229/2500000000 : ℚ), (24305697423/125000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-185346111/250000000 : ℚ), (48782034391/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (76532652441/200000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control608.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control608.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate608

namespace DiagonalRamsey.JointInheritedCertificate609
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(5107312357/20000000000 : ℚ), (8660594244861/5000000000 : ℚ), (-442897479093749/1000000000000 : ℚ), 13⟩,
    ⟨(255821033651/1000000000000 : ℚ), (948711702403/5000000000 : ℚ), (-24449125978601/500000000000 : ℚ), 9⟩,
    ⟨(5134549587/20000000000 : ℚ), (333385375451/5000000000 : ℚ), (-271533196623/15625000000 : ℚ), 8⟩,
    ⟨(258076225381/1000000000000 : ℚ), (41148849553/1250000000 : ℚ), (-8693768195923/1000000000000 : ℚ), 7⟩,
    ⟨(12992714129/50000000000 : ℚ), (95549368409/5000000000 : ℚ), (-1279922711921/250000000000 : ℚ), 6⟩,
    ⟨(52408905457/200000000000 : ℚ), (7607395873/625000000 : ℚ), (-662042839113/200000000000 : ℚ), 6⟩,
    ⟨(264625866243/1000000000000 : ℚ), (82165407823/10000000000 : ℚ), (-2269204176023/1000000000000 : ℚ), 5⟩,
    ⟨(66893359937/250000000000 : ℚ), (57596781407/10000000000 : ℚ), (-1615770749907/1000000000000 : ℚ), 5⟩,
    ⟨(529021213/1953125000 : ℚ), (8271349053/2000000000 : ℚ), (-294694516341/250000000000 : ℚ), 5⟩,
    ⟨(68612622441/250000000000 : ℚ), (117589727/39062500 : ℚ), (-872082043451/1000000000000 : ℚ), 4⟩,
    ⟨(69578434131/250000000000 : ℚ), (2200939241/1000000000 : ℚ), (-324244270641/500000000000 : ℚ), 4⟩,
    ⟨(282411396157/1000000000000 : ℚ), (4002766833/2500000000 : ℚ), (-120096800273/250000000000 : ℚ), 4⟩,
    ⟨(143352002981/500000000000 : ℚ), (5726886459/5000000000 : ℚ), (-1403021587/4000000000 : ℚ), 4⟩,
    ⟨(1819688911/6250000000 : ℚ), (1979553981/2500000000 : ℚ), (-124319716741/500000000000 : ℚ), 4⟩,
    ⟨(147853618011/500000000000 : ℚ), (320379899/625000000 : ℚ), (-83368152601/500000000000 : ℚ), 3⟩,
    ⟨(300331150251/1000000000000 : ℚ), (1443553497/5000000000 : ℚ), (-2500748031/25000000000 : ℚ), 3⟩,
    ⟨(152488718811/500000000000 : ℚ), (1067974439/10000000000 : ℚ), (-11246821321/250000000000 : ℚ), 3⟩,
    ⟨(309601351851/1000000000000 : ℚ), (-85349699/2000000000 : ℚ), (186702039/200000000000 : ℚ), 3⟩,
    ⟨(157079181057/500000000000 : ℚ), (-416651081/2500000000 : ℚ), (7918887401/200000000000 : ℚ), 3⟩,
    ⟨(318604581911/1000000000000 : ℚ), (-1351524681/5000000000 : ℚ), (36190015577/500000000000 : ℚ), 3⟩,
    ⟨(80724297929/250000000000 : ℚ), (-3574647803/10000000000 : ℚ), (100332572679/1000000000000 : ℚ), 3⟩,
    ⟨(6539897027/20000000000 : ℚ), (-862121593/2000000000 : ℚ), (62122204599/500000000000 : ℚ), 3⟩,
    ⟨(330858098109/1000000000000 : ℚ), (-4933238121/10000000000 : ℚ), (28944466237/200000000000 : ℚ), 3⟩,
    ⟨(334449726817/1000000000000 : ℚ), (-5459682617/10000000000 : ℚ), (81116659921/500000000000 : ℚ), 3⟩,
    ⟨(540376237/1600000000 : ℚ), (-295158441/500000000 : ℚ), (44284407243/250000000000 : ℚ), 3⟩,
    ⟨(34068272163/100000000000 : ℚ), (-1568478797/2500000000 : ℚ), (1897130853/10000000000 : ℚ), 3⟩,
    ⟨(85816015147/250000000000 : ℚ), (-6579800113/10000000000 : ℚ), (8006927133/40000000000 : ℚ), 3⟩,
    ⟨(345454305293/1000000000000 : ℚ), (-6826858549/10000000000 : ℚ), (52170165683/250000000000 : ℚ), 3⟩,
    ⟨(86808090623/250000000000 : ℚ), (-3509825939/5000000000 : ℚ), (215357831821/1000000000000 : ℚ), 3⟩,
    ⟨(348581108523/1000000000000 : ℚ), (-895192759/1250000000 : ℚ), (220294246257/1000000000000 : ℚ), 3⟩,
    ⟨(174743777111/500000000000 : ℚ), (-7254891297/10000000000 : ℚ), (223552442773/1000000000000 : ℚ), 3⟩,
    ⟨(43742871253/125000000000 : ℚ), (-7301201203/10000000000 : ℚ), (56292992343/250000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1826743263/2500000000 : ℚ), (225373967623/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (345979657679/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control609.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control609.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate609

namespace DiagonalRamsey.JointInheritedCertificate610
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(139373495357/500000000000 : ℚ), (17671904437723/10000000000 : ℚ), (-98645275328443/200000000000 : ℚ), 13⟩,
    ⟨(17452141113/62500000000 : ℚ), (121013317401/625000000 : ℚ), (-10891515274259/200000000000 : ℚ), 9⟩,
    ⟨(280204099347/1000000000000 : ℚ), (340303927129/5000000000 : ℚ), (-19355901416001/1000000000000 : ℚ), 8⟩,
    ⟨(281647175227/1000000000000 : ℚ), (336155119581/10000000000 : ℚ), (-9684814729407/1000000000000 : ℚ), 7⟩,
    ⟨(283549587839/1000000000000 : ℚ), (4880921759/250000000 : ℚ), (-1140940183593/200000000000 : ℚ), 6⟩,
    ⟨(285893015909/1000000000000 : ℚ), (7776754811/625000000 : ℚ), (-368971644309/100000000000 : ℚ), 6⟩,
    ⟨(288654890943/1000000000000 : ℚ), (16811175971/2000000000 : ℚ), (-1265268686641/500000000000 : ℚ), 5⟩,
    ⟨(18238038411/62500000000 : ℚ), (3685968763/625000000 : ℚ), (-1802992989089/1000000000000 : ℚ), 5⟩,
    ⟨(11812952589/40000000000 : ℚ), (10598920361/2500000000 : ℚ), (-1316500685693/1000000000000 : ℚ), 5⟩,
    ⟨(29916663809/100000000000 : ℚ), (15452914481/5000000000 : ℚ), (-48756348171/50000000000 : ℚ), 4⟩,
    ⟨(303300076183/1000000000000 : ℚ), (22642445567/10000000000 : ℚ), (-145262781761/200000000000 : ℚ), 4⟩,
    ⟨(153842160867/500000000000 : ℚ), (3303730657/2000000000 : ℚ), (-539312487231/1000000000000 : ℚ), 4⟩,
    ⟨(156138576031/500000000000 : ℚ), (1483334529/1250000000 : ℚ), (-98791068363/250000000000 : ℚ), 4⟩,
    ⟨(317034335701/1000000000000 : ℚ), (4129234897/5000000000 : ℚ), (-70417296471/250000000000 : ℚ), 4⟩,
    ⟨(80477514593/250000000000 : ℚ), (2704926727/5000000000 : ℚ), (-190692464971/1000000000000 : ℚ), 3⟩,
    ⟨(326857364199/1000000000000 : ℚ), (781630313/2500000000 : ℚ), (-116645946319/1000000000000 : ℚ), 3⟩,
    ⟨(82957151981/250000000000 : ℚ), (636133717/5000000000 : ℚ), (-27796458233/500000000000 : ℚ), 3⟩,
    ⟨(336775913751/1000000000000 : ℚ), (-250430227/10000000000 : ℚ), (-470022387/100000000000 : ℚ), 3⟩,
    ⟨(341651636421/1000000000000 : ℚ), (-756333749/5000000000 : ℚ), (4763525453/125000000000 : ℚ), 3⟩,
    ⟨(17320441003/50000000000 : ℚ), (-1283536903/5000000000 : ℚ), (74376834731/1000000000000 : ℚ), 3⟩,
    ⟨(351001650389/1000000000000 : ℚ), (-690622533/2000000000 : ℚ), (105269036411/1000000000000 : ℚ), 3⟩,
    ⟨(17769294797/50000000000 : ℚ), (-4200690367/10000000000 : ℚ), (6583492333/50000000000 : ℚ), 3⟩,
    ⟨(22469958377/62500000000 : ℚ), (-2416331071/5000000000 : ℚ), (77128809677/500000000000 : ℚ), 3⟩,
    ⟨(181681078699/500000000000 : ℚ), (-5366603933/10000000000 : ℚ), (173554926567/1000000000000 : ℚ), 3⟩,
    ⟨(183438678773/500000000000 : ℚ), (-5816085007/10000000000 : ℚ), (189965354601/1000000000000 : ℚ), 3⟩,
    ⟨(370031081179/1000000000000 : ℚ), (-3095797419/5000000000 : ℚ), (203800525259/1000000000000 : ℚ), 3⟩,
    ⟨(186396478107/500000000000 : ℚ), (-6501225931/10000000000 : ℚ), (43060041013/200000000000 : ℚ), 3⟩,
    ⟨(375136384283/1000000000000 : ℚ), (-6751180957/10000000000 : ℚ), (112323710737/500000000000 : ℚ), 3⟩,
    ⟨(75407759379/200000000000 : ℚ), (-3473075297/5000000000 : ℚ), (231979878897/1000000000000 : ℚ), 3⟩,
    ⟨(15139274911/40000000000 : ℚ), (-3544796859/5000000000 : ℚ), (59349636583/250000000000 : ℚ), 3⟩,
    ⟨(189725857157/500000000000 : ℚ), (-7183941491/10000000000 : ℚ), (240974000561/1000000000000 : ℚ), 3⟩,
    ⟨(11873093169/31250000000 : ℚ), (-1807684963/2500000000 : ℚ), (242750910911/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-226142883/312500000 : ℚ), (242972524473/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (162118803929/500000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control610.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control610.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate610

namespace DiagonalRamsey.JointInheritedCertificate628
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(109184220851/500000000000 : ℚ), (8308320010723/5000000000 : ℚ), (-363328859557023/1000000000000 : ℚ), 13⟩,
    ⟨(43752256617/200000000000 : ℚ), (1819921690793/10000000000 : ℚ), (-8021646044071/200000000000 : ℚ), 9⟩,
    ⟨(219543182573/1000000000000 : ℚ), (639325992969/10000000000 : ℚ), (-2850076411607/200000000000 : ℚ), 8⟩,
    ⟨(220706610047/1000000000000 : ℚ), (78871763993/2500000000 : ℚ), (-3563015038549/500000000000 : ℚ), 7⟩,
    ⟨(44448072213/200000000000 : ℚ), (9151008327/500000000 : ℚ), (-2096958582589/500000000000 : ℚ), 6⟩,
    ⟨(44825932953/200000000000 : ℚ), (116467443331/10000000000 : ℚ), (-1354694135213/500000000000 : ℚ), 6⟩,
    ⟨(5658908153/25000000000 : ℚ), (19631629851/2500000000 : ℚ), (-463814255137/250000000000 : ℚ), 5⟩,
    ⟨(45779780233/200000000000 : ℚ), (54958293249/10000000000 : ℚ), (-329764458307/250000000000 : ℚ), 5⟩,
    ⟨(231732903511/1000000000000 : ℚ), (19689040309/5000000000 : ℚ), (-120049862471/125000000000 : ℚ), 5⟩,
    ⟨(234831040167/1000000000000 : ℚ), (28579763929/10000000000 : ℚ), (-354306143973/500000000000 : ℚ), 4⟩,
    ⟨(238163474383/1000000000000 : ℚ), (1300736387/625000000 : ℚ), (-524983140417/1000000000000 : ℚ), 4⟩,
    ⟨(48339622599/200000000000 : ℚ), (15052708237/10000000000 : ℚ), (-386862496881/1000000000000 : ℚ), 4⟩,
    ⟨(245400915503/1000000000000 : ℚ), (2668778027/2500000000 : ℚ), (-11211492529/40000000000 : ℚ), 4⟩,
    ⟨(124618110947/500000000000 : ℚ), (7276922239/10000000000 : ℚ), (-39254686153/200000000000 : ℚ), 4⟩,
    ⟨(253167096069/1000000000000 : ℚ), (114782423/250000000 : ℚ), (-64415876219/500000000000 : ℚ), 4⟩,
    ⟨(257155681563/1000000000000 : ℚ), (2435868059/10000000000 : ℚ), (-73849457959/1000000000000 : ℚ), 3⟩,
    ⟨(261163566117/1000000000000 : ℚ), (21339703/312500000 : ℚ), (-2843057427/100000000000 : ℚ), 3⟩,
    ⟨(265152151611/1000000000000 : ℚ), (-23722221/312500000 : ℚ), (9507659259/1000000000000 : ℚ), 3⟩,
    ⟨(269083025787/1000000000000 : ℚ), (-489166131/2500000000 : ℚ), (41490069339/1000000000000 : ℚ), 3⟩,
    ⟨(272918332177/1000000000000 : ℚ), (-369879179/1250000000 : ℚ), (34324849831/500000000000 : ℚ), 3⟩,
    ⟨(55324226937/200000000000 : ℚ), (-237693751/625000000 : ℚ), (91838741767/1000000000000 : ℚ), 3⟩,
    ⟨(140077886649/500000000000 : ℚ), (-282298617/625000000 : ℚ), (27926078783/250000000000 : ℚ), 3⟩,
    ⟨(141744103757/500000000000 : ℚ), (-204854733/400000000 : ℚ), (16092665457/125000000000 : ℚ), 3⟩,
    ⟨(28658634417/100000000000 : ℚ), (-1408306603/2500000000 : ℚ), (17916254407/125000000000 : ℚ), 3⟩,
    ⟨(72355086629/250000000000 : ℚ), (-303247879/500000000 : ℚ), (155763271247/1000000000000 : ℚ), 3⟩,
    ⟨(7299073039/25000000000 : ℚ), (-1285257853/2000000000 : ℚ), (41566597969/250000000000 : ℚ), 3⟩,
    ⟨(73547395729/250000000000 : ℚ), (-6724712911/10000000000 : ℚ), (35002436953/200000000000 : ℚ), 3⟩,
    ⟨(37009860827/125000000000 : ℚ), (-6965960683/10000000000 : ℚ), (45533016829/250000000000 : ℚ), 3⟩,
    ⟨(297612637633/1000000000000 : ℚ), (-1788590127/2500000000 : ℚ), (93862277073/500000000000 : ℚ), 3⟩,
    ⟨(298776065107/1000000000000 : ℚ), (-7293099209/10000000000 : ℚ), (191861629973/1000000000000 : ℚ), 3⟩,
    ⟨(74889491149/250000000000 : ℚ), (-3692207027/5000000000 : ℚ), (194593459073/1000000000000 : ℚ), 3⟩,
    ⟨(149975402989/500000000000 : ℚ), (-1485945281/2000000000 : ℚ), (6123491107/31250000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-929421809/1250000000 : ℚ), (39224228709/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (392004486461/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control628.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control628.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate628

namespace DiagonalRamsey.JointInheritedCertificate629
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(256910342581/1000000000000 : ℚ), (17144235953423/10000000000 : ℚ), (-27563249764811/62500000000 : ℚ), 13⟩,
    ⟨(257358324593/1000000000000 : ℚ), (1878274385037/10000000000 : ℚ), (-9737553617623/200000000000 : ℚ), 9⟩,
    ⟨(51649994861/200000000000 : ℚ), (132028313009/2000000000 : ℚ), (-17301647242689/1000000000000 : ℚ), 8⟩,
    ⟨(64894176161/250000000000 : ℚ), (65192744109/2000000000 : ℚ), (-4327109646723/500000000000 : ℚ), 7⟩,
    ⟨(261325738471/1000000000000 : ℚ), (18924541081/1000000000 : ℚ), (-636918523147/125000000000 : ℚ), 6⟩,
    ⟨(131740115817/500000000000 : ℚ), (60272031757/5000000000 : ℚ), (-205848685693/62500000000 : ℚ), 6⟩,
    ⟨(53203887037/200000000000 : ℚ), (81370865247/10000000000 : ℚ), (-282126550539/125000000000 : ℚ), 5⟩,
    ⟨(33614861901/125000000000 : ℚ), (57032998899/10000000000 : ℚ), (-803188828417/500000000000 : ℚ), 5⟩,
    ⟨(68037672079/250000000000 : ℚ), (40941867243/10000000000 : ℚ), (-292816580599/250000000000 : ℚ), 5⟩,
    ⟨(17230230661/62500000000 : ℚ), (29788654353/10000000000 : ℚ), (-865900389547/1000000000000 : ℚ), 4⟩,
    ⟨(69870969311/250000000000 : ℚ), (21765482151/10000000000 : ℚ), (-643286137081/1000000000000 : ℚ), 4⟩,
    ⟨(56702930089/200000000000 : ℚ), (7908962199/5000000000 : ℚ), (-118982577973/250000000000 : ℚ), 4⟩,
    ⟨(287737191631/1000000000000 : ℚ), (11298157377/10000000000 : ℚ), (-86720580667/250000000000 : ℚ), 4⟩,
    ⟨(14605541771/50000000000 : ℚ), (779094061/1000000000 : ℚ), (-245234656263/1000000000000 : ℚ), 4⟩,
    ⟨(296593461233/1000000000000 : ℚ), (5020609519/10000000000 : ℚ), (-81857462427/500000000000 : ℚ), 4⟩,
    ⟨(75285474733/250000000000 : ℚ), (2798696173/10000000000 : ℚ), (-24331975657/250000000000 : ℚ), 3⟩,
    ⟨(305712344577/1000000000000 : ℚ), (124137803/1250000000 : ℚ), (-42555135903/1000000000000 : ℚ), 3⟩,
    ⟨(77565195569/250000000000 : ℚ), (-24536901/500000000 : ℚ), (156747759/50000000000 : ℚ), 3⟩,
    ⟨(314743408089/1000000000000 : ℚ), (-107609471/625000000 : ℚ), (20798446133/500000000000 : ℚ), 3⟩,
    ⟨(319117051879/1000000000000 : ℚ), (-137547391/500000000 : ℚ), (74209762319/1000000000000 : ℚ), 3⟩,
    ⟨(40417449133/125000000000 : ℚ), (-3616562847/10000000000 : ℚ), (51005905139/500000000000 : ℚ), 3⟩,
    ⟨(163685183133/500000000000 : ℚ), (-1086890147/2500000000 : ℚ), (62896179539/500000000000 : ℚ), 3⟩,
    ⟨(165585276467/500000000000 : ℚ), (-4849673/9765625 : ℚ), (36538975931/250000000000 : ℚ), 3⟩,
    ⟨(334703555193/1000000000000 : ℚ), (-5489080443/10000000000 : ℚ), (8178383031/50000000000 : ℚ), 3⟩,
    ⟨(168967674151/500000000000 : ℚ), (-5929725579/10000000000 : ℚ), (89193254581/500000000000 : ℚ), 3⟩,
    ⟨(85208702081/250000000000 : ℚ), (-6298134831/10000000000 : ℚ), (190889191929/1000000000000 : ℚ), 3⟩,
    ⟨(85843502969/250000000000 : ℚ), (-3301060381/5000000000 : ℚ), (12580520989/62500000000 : ℚ), 3⟩,
    ⟨(172764252519/500000000000 : ℚ), (-6847666847/10000000000 : ℚ), (41949201349/200000000000 : ℚ), 3⟩,
    ⟨(69455507773/200000000000 : ℚ), (-7039294569/10000000000 : ℚ), (216383952007/1000000000000 : ℚ), 3⟩,
    ⟨(87151067301/250000000000 : ℚ), (-1795083923/2500000000 : ℚ), (221291309607/1000000000000 : ℚ), 3⟩,
    ⟨(87373979729/250000000000 : ℚ), (-727313061/1000000000 : ℚ), (112265152721/500000000000 : ℚ), 3⟩,
    ⟨(349943900929/1000000000000 : ℚ), (-7319166843/10000000000 : ℚ), (226140282731/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1464980929/2000000000 : ℚ), (45268217941/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (354720193017/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control629.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control629.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate629

namespace DiagonalRamsey.JointInheritedCertificate630
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(140193711071/500000000000 : ℚ), (2185791320031/1250000000 : ℚ), (-490905489443117/1000000000000 : ℚ), 13⟩,
    ⟨(28086679487/100000000000 : ℚ), (958055066199/5000000000 : ℚ), (-10839739832949/200000000000 : ℚ), 9⟩,
    ⟨(56364184741/200000000000 : ℚ), (673638073299/10000000000 : ℚ), (-9630995603751/500000000000 : ℚ), 8⟩,
    ⟨(56648123973/200000000000 : ℚ), (41594546929/1250000000 : ℚ), (-9636363073047/1000000000000 : ℚ), 7⟩,
    ⟨(2851122109/10000000000 : ℚ), (193281336489/10000000000 : ℚ), (-1418741515873/250000000000 : ℚ), 6⟩,
    ⟨(71854418091/250000000000 : ℚ), (61593350211/5000000000 : ℚ), (-3669466311223/1000000000000 : ℚ), 6⟩,
    ⟨(72533700351/250000000000 : ℚ), (83214360761/10000000000 : ℚ), (-628938288099/250000000000 : ℚ), 5⟩,
    ⟨(146618715291/500000000000 : ℚ), (11675462561/2000000000 : ℚ), (-44791230281/25000000000 : ℚ), 5⟩,
    ⟨(148347839941/500000000000 : ℚ), (5244343081/1250000000 : ℚ), (-1307467425641/1000000000000 : ℚ), 5⟩,
    ⟨(300476244473/1000000000000 : ℚ), (3821406711/1250000000 : ℚ), (-967724975903/1000000000000 : ℚ), 4⟩,
    ⟨(76135678863/250000000000 : ℚ), (22382448893/10000000000 : ℚ), (-144022144357/200000000000 : ℚ), 4⟩,
    ⟨(308855930481/1000000000000 : ℚ), (16312510437/10000000000 : ℚ), (-8344060083/15625000000 : ℚ), 4⟩,
    ⟨(313374350939/1000000000000 : ℚ), (2340078827/2000000000 : ℚ), (-390582666329/1000000000000 : ℚ), 4⟩,
    ⟨(31805446197/100000000000 : ℚ), (8122323363/10000000000 : ℚ), (-138828015529/500000000000 : ℚ), 4⟩,
    ⟨(40356398943/125000000000 : ℚ), (105938301/200000000 : ℚ), (-187142957833/1000000000000 : ℚ), 4⟩,
    ⟨(163859172267/500000000000 : ℚ), (606349601/2000000000 : ℚ), (-113481059833/1000000000000 : ℚ), 3⟩,
    ⟨(332609047597/1000000000000 : ℚ), (595958017/5000000000 : ℚ), (-52751623483/1000000000000 : ℚ), 3⟩,
    ⟨(337476200587/1000000000000 : ℚ), (-159594607/5000000000 : ℚ), (-16674301/7812500000 : ℚ), 3⟩,
    ⟨(342272930161/1000000000000 : ℚ), (-786004883/5000000000 : ℚ), (20218839599/500000000000 : ℚ), 3⟩,
    ⟨(43369130149/125000000000 : ℚ), (-2618700243/10000000000 : ℚ), (38251004113/500000000000 : ℚ), 3⟩,
    ⟨(7029429233/20000000000 : ℚ), (-874593627/2500000000 : ℚ), (53608490857/500000000000 : ℚ), 3⟩,
    ⟨(355784676679/1000000000000 : ℚ), (-4240678017/10000000000 : ℚ), (133463825371/1000000000000 : ℚ), 3⟩,
    ⟨(179925573829/500000000000 : ℚ), (-4868269029/10000000000 : ℚ), (77958993049/500000000000 : ℚ), 3⟩,
    ⟨(363631712249/1000000000000 : ℚ), (-5398573011/10000000000 : ℚ), (175099790329/1000000000000 : ℚ), 3⟩,
    ⟨(367089961549/1000000000000 : ℚ), (-5845043079/10000000000 : ℚ), (47852767153/250000000000 : ℚ), 3⟩,
    ⟨(370192590727/1000000000000 : ℚ), (-3109039139/5000000000 : ℚ), (8206482161/40000000000 : ℚ), 3⟩,
    ⟨(372909719767/1000000000000 : ℚ), (-6525700347/10000000000 : ℚ), (216591405931/1000000000000 : ℚ), 3⟩,
    ⟨(375215181231/1000000000000 : ℚ), (-6774056601/10000000000 : ℚ), (112940633823/500000000000 : ℚ), 3⟩,
    ⟨(188543386133/500000000000 : ℚ), (-3483897407/5000000000 : ℚ), (233168643427/1000000000000 : ℚ), 3⟩,
    ⟨(189253234213/500000000000 : ℚ), (-7110341383/10000000000 : ℚ), (59638490229/250000000000 : ℚ), 3⟩,
    ⟨(379460597261/1000000000000 : ℚ), (-1801026017/2500000000 : ℚ), (121053699757/500000000000 : ℚ), 3⟩,
    ⟨(379939969989/1000000000000 : ℚ), (-906326703/1250000000 : ℚ), (48774673419/200000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-3628205051/5000000000 : ℚ), (122046807943/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (532209637/1600000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control630.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control630.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate630

namespace DiagonalRamsey.JointInheritedCertificate639
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(181866261317/1000000000000 : ℚ), (794728718057/2000000000 : ℚ), (-14511373354341/200000000000 : ℚ), 11⟩,
    ⟨(91586136193/500000000000 : ℚ), (13134458681/312500000 : ℚ), (-7848037534081/1000000000000 : ℚ), 8⟩,
    ⟨(46433526313/250000000000 : ℚ), (138971015399/10000000000 : ℚ), (-333822021229/125000000000 : ℚ), 6⟩,
    ⟨(94726655057/500000000000 : ℚ), (62717545213/10000000000 : ℚ), (-38849847181/31250000000 : ℚ), 5⟩,
    ⟨(97093480007/500000000000 : ℚ), (31981442401/10000000000 : ℚ), (-654786035631/1000000000000 : ℚ), 5⟩,
    ⟨(199753143443/1000000000000 : ℚ), (8390903933/5000000000 : ℚ), (-355930404041/1000000000000 : ℚ), 4⟩,
    ⟨(51484488773/250000000000 : ℚ), (8249113211/10000000000 : ℚ), (-11444661007/62500000000 : ℚ), 4⟩,
    ⟨(106251858059/500000000000 : ℚ), (3022465717/10000000000 : ℚ), (-73902678471/1000000000000 : ℚ), 4⟩,
    ⟨(219198108007/1000000000000 : ℚ), (-24301439/625000000 : ℚ), (-86405039/250000000000 : ℚ), 3⟩,
    ⟨(225763869033/1000000000000 : ℚ), (-340161173/1250000000 : ℚ), (25753146709/500000000000 : ℚ), 3⟩,
    ⟨(115974340341/500000000000 : ℚ), (-1091933161/2500000000 : ℚ), (22291132389/250000000000 : ℚ), 3⟩,
    ⟨(23751486411/100000000000 : ℚ), (-5549162631/10000000000 : ℚ), (116885602337/1000000000000 : ℚ), 3⟩,
    ⟨(242248514011/1000000000000 : ℚ), (-3197164231/5000000000 : ℚ), (137154640219/1000000000000 : ℚ), 3⟩,
    ⟨(245967718873/1000000000000 : ℚ), (-1744864413/2500000000 : ℚ), (18929526537/125000000000 : ℚ), 3⟩,
    ⟨(124264775869/500000000000 : ℚ), (-3674655567/5000000000 : ℚ), (802901297/5000000000 : ℚ), 3⟩,
    ⟨(31229445351/125000000000 : ℚ), (-7528710879/10000000000 : ℚ), (165050524407/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-1510177863/2000000000 : ℚ), (20700600357/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (439704573593/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control639.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control639.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate639

namespace DiagonalRamsey.JointInheritedCertificate640
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1373412017/6250000000 : ℚ), (16442074759753/10000000000 : ℚ), (-361768950023103/1000000000000 : ℚ), 13⟩,
    ⟨(13758258447/62500000000 : ℚ), (1801034473451/10000000000 : ℚ), (-39933973555229/1000000000000 : ℚ), 10⟩,
    ⟨(11045042029/50000000000 : ℚ), (158197151501/2500000000 : ℚ), (-3546745905407/250000000000 : ℚ), 8⟩,
    ⟨(4440892719/20000000000 : ℚ), (312304999041/10000000000 : ℚ), (-3546591029227/500000000000 : ℚ), 7⟩,
    ⟨(223552505887/1000000000000 : ℚ), (90596335543/5000000000 : ℚ), (-130426567957/31250000000 : ℚ), 6⟩,
    ⟨(11270496439/50000000000 : ℚ), (11530935407/1000000000 : ℚ), (-539099850303/200000000000 : ℚ), 6⟩,
    ⟨(227599016631/1000000000000 : ℚ), (77742671171/10000000000 : ℚ), (-369009232813/200000000000 : ℚ), 5⟩,
    ⟨(115049343663/500000000000 : ℚ), (27200911607/5000000000 : ℚ), (-327791200657/250000000000 : ℚ), 5⟩,
    ⟨(29110608459/125000000000 : ℚ), (38968312043/10000000000 : ℚ), (-119258138583/125000000000 : ℚ), 5⟩,
    ⟨(235930725227/1000000000000 : ℚ), (14134532971/5000000000 : ℚ), (-703381948963/1000000000000 : ℚ), 5⟩,
    ⟨(239206926719/1000000000000 : ℚ), (5142613019/2500000000 : ℚ), (-20822649247/40000000000 : ℚ), 4⟩,
    ⟨(242681920537/1000000000000 : ℚ), (14861410399/10000000000 : ℚ), (-383065835127/1000000000000 : ℚ), 4⟩,
    ⟨(246322240589/1000000000000 : ℚ), (328775471/312500000 : ℚ), (-138488635907/500000000000 : ℚ), 4⟩,
    ⟨(50018565721/200000000000 : ℚ), (7150586147/10000000000 : ℚ), (-48338637483/250000000000 : ℚ), 4⟩,
    ⟨(253957371761/1000000000000 : ℚ), (4486494113/10000000000 : ℚ), (-63116932447/500000000000 : ℚ), 4⟩,
    ⟨(32234831549/125000000000 : ℚ), (293490957/1250000000 : ℚ), (-71519620577/1000000000000 : ℚ), 4⟩,
    ⟨(32727363303/125000000000 : ℚ), (608330427/10000000000 : ℚ), (-13163919049/500000000000 : ℚ), 3⟩,
    ⟨(16608761691/62500000000 : ℚ), (-822864749/10000000000 : ℚ), (11415735543/1000000000000 : ℚ), 3⟩,
    ⟨(269604730211/1000000000000 : ℚ), (-2011640533/10000000000 : ℚ), (43229798711/1000000000000 : ℚ), 3⟩,
    ⟨(273375318227/1000000000000 : ℚ), (-601360413/2000000000 : ℚ), (70242921621/1000000000000 : ℚ), 3⟩,
    ⟨(6925390957/25000000000 : ℚ), (-3844909539/10000000000 : ℚ), (186607981/2000000000 : ℚ), 3⟩,
    ⟨(280490632097/1000000000000 : ℚ), (-4553636933/10000000000 : ℚ), (11305765389/100000000000 : ℚ), 3⟩,
    ⟨(283766833589/1000000000000 : ℚ), (-2577052521/5000000000 : ℚ), (129996946109/1000000000000 : ℚ), 3⟩,
    ⟨(57362538229/200000000000 : ℚ), (-1415632817/2500000000 : ℚ), (72250351213/500000000000 : ℚ), 3⟩,
    ⟨(28959887149/100000000000 : ℚ), (-95178359/156250000 : ℚ), (156860631733/1000000000000 : ℚ), 3⟩,
    ⟨(146049271093/500000000000 : ℚ), (-3225200549/5000000000 : ℚ), (167301219643/1000000000000 : ℚ), 3⟩,
    ⟨(73571907509/250000000000 : ℚ), (-105420571/156250000 : ℚ), (175994559377/1000000000000 : ℚ), 3⟩,
    ⟨(296145052929/1000000000000 : ℚ), (-1746660749/2500000000 : ℚ), (183071514997/1000000000000 : ℚ), 3⟩,
    ⟨(148826461433/500000000000 : ℚ), (-1793467309/2500000000 : ℚ), (37726032611/200000000000 : ℚ), 3⟩,
    ⟨(74699179559/250000000000 : ℚ), (-7311752433/10000000000 : ℚ), (24092768649/125000000000 : ℚ), 3⟩,
    ⟨(18722838979/62500000000 : ℚ), (-1850627119/2500000000 : ℚ), (97728694287/500000000000 : ℚ), 3⟩,
    ⟨(2343372157/7812500000 : ℚ), (-3723772423/5000000000 : ℚ), (19680739099/100000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-298126343/400000000 : ℚ), (1969757893/10000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (401369654423/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control640.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control640.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate640

namespace DiagonalRamsey.JointInheritedCertificate641
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(51739572467/200000000000 : ℚ), (2109856314799/5000000000 : ℚ), (-27394396823229/250000000000 : ℚ), 11⟩,
    ⟨(26044797329/100000000000 : ℚ), (447149075631/10000000000 : ℚ), (-11860454256733/1000000000000 : ℚ), 8⟩,
    ⟨(32985117427/125000000000 : ℚ), (29659375487/2000000000 : ℚ), (-252649448161/62500000000 : ℚ), 6⟩,
    ⟨(33608104219/125000000000 : ℚ), (33618655591/5000000000 : ℚ), (-1887578057013/1000000000000 : ℚ), 5⟩,
    ⟨(8600254001/31250000000 : ℚ), (34545434767/10000000000 : ℚ), (-999908562941/1000000000000 : ℚ), 5⟩,
    ⟨(56533410603/200000000000 : ℚ), (1837732579/1000000000 : ℚ), (-274838673621/500000000000 : ℚ), 4⟩,
    ⟨(290954966397/1000000000000 : ℚ), (4653831257/5000000000 : ℚ), (-144964601699/500000000000 : ℚ), 4⟩,
    ⟨(59950673663/200000000000 : ℚ), (1881039891/5000000000 : ℚ), (-126338772399/1000000000000 : ℚ), 4⟩,
    ⟨(77181035279/250000000000 : ℚ), (153206311/10000000000 : ℚ), (-16651415513/1000000000000 : ℚ), 3⟩,
    ⟨(158761271517/500000000000 : ℚ), (-144045321/625000000 : ℚ), (30126722113/500000000000 : ℚ), 3⟩,
    ⟨(10181576763/31250000000 : ℚ), (-403183981/1000000000 : ℚ), (28944484823/250000000000 : ℚ), 3⟩,
    ⟨(333269381399/1000000000000 : ℚ), (-5265287211/10000000000 : ℚ), (39102356923/250000000000 : ℚ), 3⟩,
    ⟨(339612675679/1000000000000 : ℚ), (-153593421/250000000 : ℚ), (23244624927/125000000000 : ℚ), 3⟩,
    ⟨(68919314003/200000000000 : ℚ), (-1349922779/2000000000 : ℚ), (206681604543/1000000000000 : ℚ), 3⟩,
    ⟨(174014768071/500000000000 : ℚ), (-3565749231/5000000000 : ℚ), (13744125469/62500000000 : ℚ), 3⟩,
    ⟨(43722455887/125000000000 : ℚ), (-3658206049/5000000000 : ℚ), (28294704751/125000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1834814291/2500000000 : ℚ), (227156963441/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (36349063519/100000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control641.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control641.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate641

namespace DiagonalRamsey.JointInheritedCertificate642
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(141064153697/500000000000 : ℚ), (4327880721977/2500000000 : ℚ), (-489001391041179/1000000000000 : ℚ), 13⟩,
    ⟨(4415614099/15625000000 : ℚ), (1897203432591/10000000000 : ℚ), (-53986163298217/1000000000000 : ℚ), 10⟩,
    ⟨(283536756281/1000000000000 : ℚ), (166774746223/2500000000 : ℚ), (-9592393968629/500000000000 : ℚ), 8⟩,
    ⟨(56986328207/200000000000 : ℚ), (329577422133/10000000000 : ℚ), (-1919290892627/200000000000 : ℚ), 7⟩,
    ⟨(35846315387/125000000000 : ℚ), (191458819881/10000000000 : ℚ), (-706301921587/125000000000 : ℚ), 6⟩,
    ⟨(289035693023/1000000000000 : ℚ), (3050860863/250000000 : ℚ), (-3652700859407/1000000000000 : ℚ), 6⟩,
    ⟨(291705335993/1000000000000 : ℚ), (2576147433/312500000 : ℚ), (-500695389177/200000000000 : ℚ), 5⟩,
    ⟨(294753741883/1000000000000 : ℚ), (57827187607/10000000000 : ℚ), (-356440293157/200000000000 : ℚ), 5⟩,
    ⟨(3726894411/12500000000 : ℚ), (41551319457/10000000000 : ℚ), (-1299921974807/1000000000000 : ℚ), 5⟩,
    ⟨(60373209241/200000000000 : ℚ), (1210672403/400000000 : ℚ), (-961525318849/1000000000000 : ℚ), 4⟩,
    ⟨(152930724629/500000000000 : ℚ), (22147227871/10000000000 : ℚ), (-714902735963/1000000000000 : ℚ), 4⟩,
    ⟨(155049642061/500000000000 : ℚ), (2015892517/1250000000 : ℚ), (-529567644041/1000000000000 : ℚ), 4⟩,
    ⟨(78634684533/250000000000 : ℚ), (2310364097/2000000000 : ℚ), (-386723081127/1000000000000 : ℚ), 4⟩,
    ⟨(319137056919/1000000000000 : ℚ), (8001493797/10000000000 : ℚ), (-274272501759/1000000000000 : ℚ), 4⟩,
    ⟨(161924978079/500000000000 : ℚ), (2598698287/5000000000 : ℚ), (-46037453483/250000000000 : ℚ), 4⟩,
    ⟨(164316024027/500000000000 : ℚ), (589774003/2000000000 : ℚ), (-55406834869/500000000000 : ℚ), 4⟩,
    ⟨(20839829903/62500000000 : ℚ), (1122221049/10000000000 : ℚ), (-25180004721/500000000000 : ℚ), 3⟩,
    ⟨(42277421293/125000000000 : ℚ), (-189153629/5000000000 : ℚ), (21108633/1000000000000 : ℚ), 3⟩,
    ⟨(342932269583/1000000000000 : ℚ), (-1622549237/10000000000 : ℚ), (42388992993/1000000000000 : ℚ), 3⟩,
    ⟨(34753058837/100000000000 : ℚ), (-133110963/500000000 : ℚ), (4892239699/62500000000 : ℚ), 3⟩,
    ⟨(17598502119/50000000000 : ℚ), (-3536107883/10000000000 : ℚ), (13604486941/125000000000 : ℚ), 3⟩,
    ⟨(89051969311/250000000000 : ℚ), (-2136810047/5000000000 : ℚ), (134947373413/1000000000000 : ℚ), 3⟩,
    ⟨(360203280297/1000000000000 : ℚ), (-2448616561/5000000000 : ℚ), (2457553499/15625000000 : ℚ), 3⟩,
    ⟨(181958886811/500000000000 : ℚ), (-16950733/31250000 : ℚ), (22045326849/125000000000 : ℚ), 3⟩,
    ⟨(367315584619/1000000000000 : ℚ), (-1466992851/2500000000 : ℚ), (96292704501/500000000000 : ℚ), 3⟩,
    ⟨(370363990509/1000000000000 : ℚ), (-1559690073/2500000000 : ℚ), (103130481201/500000000000 : ℚ), 3⟩,
    ⟨(373033633479/1000000000000 : ℚ), (-818069827/1250000000 : ℚ), (217627077669/1000000000000 : ℚ), 3⟩,
    ⟨(187649401703/500000000000 : ℚ), (-3395731719/5000000000 : ℚ), (226865214189/1000000000000 : ℚ), 3⟩,
    ⟨(377137685467/1000000000000 : ℚ), (-873010453/1250000000 : ℚ), (234111833639/1000000000000 : ℚ), 3⟩,
    ⟨(378532570221/1000000000000 : ℚ), (-356290807/500000000 : ℚ), (29933367917/125000000000 : ℚ), 3⟩,
    ⟨(189735012083/500000000000 : ℚ), (-144380951/200000000 : ℚ), (243000413443/1000000000000 : ℚ), 3⟩,
    ⟨(379941019107/1000000000000 : ℚ), (-3632647427/5000000000 : ℚ), (244756447581/1000000000000 : ℚ), 3⟩,
    ⟨(19/50 : ℚ), (-7271058707/10000000000 : ℚ), (244975456977/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (341048005061/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control642.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control642.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate642

namespace DiagonalRamsey.JointInheritedCertificate656
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(110670605459/500000000000 : ℚ), (1011450300103/2500000000 : ℚ), (-4494586226633/50000000000 : ℚ), 11⟩,
    ⟨(222848969793/1000000000000 : ℚ), (214222121273/5000000000 : ℚ), (-388966322001/40000000000 : ℚ), 8⟩,
    ⟨(225806545217/1000000000000 : ℚ), (70949688833/5000000000 : ℚ), (-1655010987889/500000000000 : ℚ), 6⟩,
    ⟨(230100279223/1000000000000 : ℚ), (64177564347/10000000000 : ℚ), (-770978076359/500000000000 : ℚ), 5⟩,
    ⟨(235565166023/1000000000000 : ℚ), (8206691193/2500000000 : ℚ), (-406692644769/500000000000 : ℚ), 5⟩,
    ⟨(6049779827/25000000000 : ℚ), (17315005647/10000000000 : ℚ), (-221812217121/500000000000 : ℚ), 4⟩,
    ⟨(12456570589/50000000000 : ℚ), (8606120717/10000000000 : ℚ), (-230081538927/1000000000000 : ℚ), 4⟩,
    ⟨(256711427521/1000000000000 : ℚ), (1636980813/5000000000 : ℚ), (-95385500611/1000000000000 : ℚ), 4⟩,
    ⟨(264439944549/1000000000000 : ℚ), (-202493299/10000000000 : ℚ), (-195486539/40000000000 : ℚ), 3⟩,
    ⟨(27201996029/100000000000 : ℚ), (-1287860987/5000000000 : ℚ), (58721472663/1000000000000 : ℚ), 3⟩,
    ⟨(27916017899/100000000000 : ℚ), (-1061919401/2500000000 : ℚ), (26193330911/250000000000 : ℚ), 3⟩,
    ⟨(285586206047/1000000000000 : ℚ), (-544494939/1000000000 : ℚ), (17321031761/125000000000 : ℚ), 3⟩,
    ⟨(291051092847/1000000000000 : ℚ), (-1574949857/2500000000 : ℚ), (81604666751/500000000000 : ℚ), 3⟩,
    ⟨(295344826853/1000000000000 : ℚ), (-6890679503/10000000000 : ℚ), (90265782249/500000000000 : ℚ), 3⟩,
    ⟨(298302402277/1000000000000 : ℚ), (-3631862077/5000000000 : ℚ), (191603784999/1000000000000 : ℚ), 3⟩,
    ⟨(585566721/1953125000 : ℚ), (-7444541641/10000000000 : ℚ), (197011170321/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-3733444659/5000000000 : ℚ), (39536277669/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (12836194813/31250000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control656.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control656.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate656

namespace DiagonalRamsey.JointInheritedCertificate657
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(260321783953/1000000000000 : ℚ), (2087230772123/5000000000 : ℚ), (-54536599740621/500000000000 : ℚ), 11⟩,
    ⟨(262040767017/1000000000000 : ℚ), (442485347381/10000000000 : ℚ), (-2950863891153/250000000000 : ℚ), 8⟩,
    ⟨(66353168397/250000000000 : ℚ), (73389824641/5000000000 : ℚ), (-4021211339683/1000000000000 : ℚ), 6⟩,
    ⟨(270307923189/1000000000000 : ℚ), (66544528147/10000000000 : ℚ), (-1876301626883/1000000000000 : ℚ), 5⟩,
    ⟨(276538394123/1000000000000 : ℚ), (4271325161/1250000000 : ℚ), (-992745902819/1000000000000 : ℚ), 5⟩,
    ⟨(141932326443/500000000000 : ℚ), (3630374117/2000000000 : ℚ), (-544635911777/1000000000000 : ℚ), 4⟩,
    ⟨(146002577731/500000000000 : ℚ), (4580809509/5000000000 : ℚ), (-143072334939/500000000000 : ℚ), 4⟩,
    ⟨(150323533451/500000000000 : ℚ), (1831060523/5000000000 : ℚ), (-61687739727/500000000000 : ℚ), 4⟩,
    ⟨(309458283397/1000000000000 : ℚ), (16366243/2000000000 : ℚ), (-14263470873/1000000000000 : ℚ), 3⟩,
    ⟨(318100194837/1000000000000 : ℚ), (-294681539/1250000000 : ℚ), (62219006687/1000000000000 : ℚ), 3⟩,
    ⟨(326240697413/1000000000000 : ℚ), (-4071963237/10000000000 : ℚ), (117425288719/1000000000000 : ℚ), 3⟩,
    ⟨(20847934761/62500000000 : ℚ), (-132418251/250000000 : ℚ), (19726961147/125000000000 : ℚ), 3⟩,
    ⟨(33979742711/100000000000 : ℚ), (-6169207219/10000000000 : ℚ), (37436709527/200000000000 : ℚ), 3⟩,
    ⟨(344692676711/1000000000000 : ℚ), (-6771094679/10000000000 : ℚ), (207780190201/1000000000000 : ℚ), 3⟩,
    ⟨(174032291641/500000000000 : ℚ), (-7150531259/10000000000 : ℚ), (883689297/4000000000 : ℚ), 3⟩,
    ⟨(69956713269/200000000000 : ℚ), (-3667140463/5000000000 : ℚ), (56833425939/250000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1471396647/2000000000 : ℚ), (228128038709/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (372328925239/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control657.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control657.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate657

namespace DiagonalRamsey.JointInheritedCertificate685
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(222596820163/1000000000000 : ℚ), (8039490238471/5000000000 : ℚ), (-358347966351759/1000000000000 : ℚ), 13⟩,
    ⟨(111484656509/500000000000 : ℚ), (880857267117/5000000000 : ℚ), (-39552008845807/1000000000000 : ℚ), 10⟩,
    ⟨(223710711417/1000000000000 : ℚ), (154790441447/2500000000 : ℚ), (-439004789343/31250000000 : ℚ), 8⟩,
    ⟨(22481387529/100000000000 : ℚ), (305662473207/10000000000 : ℚ), (-1755338491591/250000000000 : ℚ), 7⟩,
    ⟨(45253636113/200000000000 : ℚ), (177371831327/10000000000 : ℚ), (-4129413367571/1000000000000 : ℚ), 7⟩,
    ⟨(228059621487/1000000000000 : ℚ), (14110531441/1250000000 : ℚ), (-533049741049/200000000000 : ℚ), 6⟩,
    ⟨(230170945501/1000000000000 : ℚ), (4756170937/625000000 : ℚ), (-1822860153763/1000000000000 : ℚ), 6⟩,
    ⟨(232581819403/1000000000000 : ℚ), (5323309373/1000000000 : ℚ), (-647029654947/500000000000 : ℚ), 5⟩,
    ⟨(117634512579/500000000000 : ℚ), (9526649383/2500000000 : ℚ), (-940375857827/1000000000000 : ℚ), 5⟩,
    ⟨(119103341753/500000000000 : ℚ), (13807491709/5000000000 : ℚ), (-346054376831/500000000000 : ℚ), 5⟩,
    ⟨(30170812899/125000000000 : ℚ), (1003098227/500000000 : ℚ), (-511072469409/1000000000000 : ℚ), 4⟩,
    ⟨(9788722137/40000000000 : ℚ), (2891617531/2000000000 : ℚ), (-93731824731/250000000000 : ℚ), 4⟩,
    ⟨(15514316059/62500000000 : ℚ), (10195374083/10000000000 : ℚ), (-6747510267/25000000000 : ℚ), 4⟩,
    ⟨(50373140173/200000000000 : ℚ), (6884074801/10000000000 : ℚ), (-187129580243/1000000000000 : ℚ), 4⟩,
    ⟨(3194912029/12500000000 : ℚ), (4265417261/10000000000 : ℚ), (-120706546609/1000000000000 : ℚ), 4⟩,
    ⟨(259374945743/1000000000000 : ℚ), (540616021/2500000000 : ℚ), (-66573573293/1000000000000 : ℚ), 4⟩,
    ⟨(263175228567/1000000000000 : ℚ), (451190053/10000000000 : ℚ), (-21873079739/1000000000000 : ℚ), 4⟩,
    ⟨(26695721199/100000000000 : ℚ), (-478596823/5000000000 : ℚ), (15450430511/1000000000000 : ℚ), 4⟩,
    ⟨(54136894689/200000000000 : ℚ), (-2127398743/10000000000 : ℚ), (46902116481/1000000000000 : ℚ), 3⟩,
    ⟨(137160558683/500000000000 : ℚ), (-3107308219/10000000000 : ℚ), (73600639677/1000000000000 : ℚ), 3⟩,
    ⟨(69458030221/250000000000 : ℚ), (-786560773/2000000000 : ℚ), (19277508961/200000000000 : ℚ), 3⟩,
    ⟨(281183671117/1000000000000 : ℚ), (-578881759/1250000000 : ℚ), (14487746983/125000000000 : ℚ), 3⟩,
    ⟨(284343490803/1000000000000 : ℚ), (-163212443/312500000 : ℚ), (132632790713/1000000000000 : ℚ), 3⟩,
    ⟨(8977535911/31250000000 : ℚ), (-2861981197/5000000000 : ℚ), (918472603/6250000000 : ℚ), 3⟩,
    ⟨(289968354907/1000000000000 : ℚ), (-3073410721/5000000000 : ℚ), (19894958379/125000000000 : ℚ), 3⟩,
    ⟨(36547403601/125000000000 : ℚ), (-1300169083/2000000000 : ℚ), (3389349303/20000000000 : ℚ), 3⟩,
    ⟨(147245276411/500000000000 : ℚ), (-1358664883/2000000000 : ℚ), (35609909281/200000000000 : ℚ), 3⟩,
    ⟨(18517624609/62500000000 : ℚ), (-7029833091/10000000000 : ℚ), (185035535519/1000000000000 : ℚ), 3⟩,
    ⟨(297736299019/1000000000000 : ℚ), (-7214577233/10000000000 : ℚ), (95261264827/500000000000 : ℚ), 3⟩,
    ⟨(74709865723/250000000000 : ℚ), (-7350651161/10000000000 : ℚ), (194581418711/1000000000000 : ℚ), 3⟩,
    ⟨(74895215323/250000000000 : ℚ), (-7440225461/10000000000 : ℚ), (197261563687/1000000000000 : ℚ), 3⟩,
    ⟨(299953354147/1000000000000 : ℚ), (-7484678201/10000000000 : ℚ), (4964852737/25000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-7490219313/10000000000 : ℚ), (49690082479/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (105059149191/250000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control685.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control685.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate685

namespace DiagonalRamsey.JointInheritedCertificate686
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(261744016159/1000000000000 : ℚ), (8291363741641/5000000000 : ℚ), (-434555634134449/1000000000000 : ℚ), 13⟩,
    ⟨(262168736739/1000000000000 : ℚ), (1817433929461/10000000000 : ℚ), (-47967471637113/1000000000000 : ℚ), 10⟩,
    ⟨(131507043803/500000000000 : ℚ), (1997003551/31250000 : ℚ), (-17040257012773/1000000000000 : ℚ), 8⟩,
    ⟨(26427192757/100000000000 : ℚ), (157835145173/5000000000 : ℚ), (-4259644341441/500000000000 : ℚ), 7⟩,
    ⟨(8310316967/31250000000 : ℚ), (22915040041/1250000000 : ℚ), (-1002497631217/200000000000 : ℚ), 7⟩,
    ⟨(267972764209/1000000000000 : ℚ), (4671244433/400000000 : ℚ), (-1618554323613/500000000000 : ℚ), 6⟩,
    ⟨(67595029951/250000000000 : ℚ), (78818864027/10000000000 : ℚ), (-5539382537/2500000000 : ℚ), 6⟩,
    ⟨(273129025579/1000000000000 : ℚ), (27609097593/5000000000 : ℚ), (-157469536033/100000000000 : ℚ), 5⟩,
    ⟨(276193008069/1000000000000 : ℚ), (39603685741/10000000000 : ℚ), (-573009177299/500000000000 : ℚ), 5⟩,
    ⟨(34942819931/125000000000 : ℚ), (14386511357/5000000000 : ℚ), (-105649694339/125000000000 : ℚ), 5⟩,
    ⟨(35393177713/125000000000 : ℚ), (20976153177/10000000000 : ℚ), (-312962795133/500000000000 : ℚ), 4⟩,
    ⟨(57393379461/200000000000 : ℚ), (759606053/500000000 : ℚ), (-230555141709/500000000000 : ℚ), 4⟩,
    ⟨(290970183351/1000000000000 : ℚ), (10793479639/10000000000 : ℚ), (-66809564271/200000000000 : ℚ), 4⟩,
    ⟨(295116726011/1000000000000 : ℚ), (1844477331/2500000000 : ℚ), (-233988977869/1000000000000 : ℚ), 4⟩,
    ⟨(29936659181/100000000000 : ℚ), (467821581/1000000000 : ℚ), (-153766394407/1000000000000 : ℚ), 4⟩,
    ⟨(151839426109/500000000000 : ℚ), (1255819557/5000000000 : ℚ), (-11057063251/125000000000 : ℚ), 4⟩,
    ⟨(30801197781/100000000000 : ℚ), (187504419/2500000000 : ℚ), (-34590893691/1000000000000 : ℚ), 4⟩,
    ⟨(156162119109/500000000000 : ℚ), (-87305719/1250000000 : ℚ), (322700253/31250000000 : ℚ), 3⟩,
    ⟨(316574104017/1000000000000 : ℚ), (-950348057/5000000000 : ℚ), (48124152919/1000000000000 : ℚ), 3⟩,
    ⟨(320720646677/1000000000000 : ℚ), (-2906303557/10000000000 : ℚ), (80162517041/1000000000000 : ℚ), 3⟩,
    ⟨(324723932723/1000000000000 : ℚ), (-469055453/1250000000 : ℚ), (6716605407/62500000000 : ℚ), 3⟩,
    ⟨(82136352081/250000000000 : ℚ), (-4467288993/10000000000 : ℚ), (16351550389/125000000000 : ℚ), 3⟩,
    ⟨(16607413529/50000000000 : ℚ), (-5072366071/10000000000 : ℚ), (75399550217/500000000000 : ℚ), 3⟩,
    ⟨(335497821959/1000000000000 : ℚ), (-5584222083/10000000000 : ℚ), (167884777131/1000000000000 : ℚ), 3⟩,
    ⟨(338561804449/1000000000000 : ℚ), (-6015623573/10000000000 : ℚ), (91211728939/500000000000 : ℚ), 3⟩,
    ⟨(21331919389/62500000000 : ℚ), (-637643031/1000000000 : ℚ), (194688053617/1000000000000 : ℚ), 3⟩,
    ⟨(343718065819/1000000000000 : ℚ), (-6674240043/10000000000 : ℚ), (8195525731/40000000000 : ℚ), 3⟩,
    ⟨(86440171771/250000000000 : ℚ), (-1728717053/2500000000 : ℚ), (213183363839/1000000000000 : ℚ), 3⟩,
    ⟨(173709451229/500000000000 : ℚ), (-7102706061/10000000000 : ℚ), (21969354251/100000000000 : ℚ), 3⟩,
    ⟨(174338371211/500000000000 : ℚ), (-724098677/1000000000 : ℚ), (44901267117/200000000000 : ℚ), 3⟩,
    ⟨(349522093289/1000000000000 : ℚ), (-916497463/1250000000 : ℚ), (28460360359/125000000000 : ℚ), 3⟩,
    ⟨(349946813869/1000000000000 : ℚ), (-7377126291/10000000000 : ℚ), (5731545331/25000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1476550683/2000000000 : ℚ), (229458747587/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (381259388269/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control686.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control686.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate686

namespace DiagonalRamsey.JointInheritedCertificate700
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(5898035793/40000000000 : ℚ), (3745670949769/10000000000 : ℚ), (-55440514629267/1000000000000 : ℚ), 11⟩,
    ⟨(148458174249/1000000000000 : ℚ), (49529985841/1250000000 : ℚ), (-5990655764743/1000000000000 : ℚ), 8⟩,
    ⟨(150434023913/1000000000000 : ℚ), (130913374213/10000000000 : ℚ), (-2034028360331/1000000000000 : ℚ), 6⟩,
    ⟨(153302513023/1000000000000 : ℚ), (7366824901/1250000000 : ℚ), (-471572094287/500000000000 : ℚ), 6⟩,
    ⟨(156953407151/1000000000000 : ℚ), (29885659747/10000000000 : ℚ), (-493366476033/1000000000000 : ℚ), 5⟩,
    ⟨(40311601121/250000000000 : ℚ), (7748745903/5000000000 : ℚ), (-33104764803/125000000000 : ℚ), 4⟩,
    ⟨(8300826377/50000000000 : ℚ), (3702305377/5000000000 : ℚ), (-132607091129/1000000000000 : ℚ), 4⟩,
    ⟨(171080463167/1000000000000 : ℚ), (1218008449/5000000000 : ℚ), (-24482331211/500000000000 : ℚ), 4⟩,
    ⟨(88121803579/500000000000 : ℚ), (-203817947/2500000000 : ℚ), (7442449191/1000000000000 : ℚ), 4⟩,
    ⟨(36261508557/200000000000 : ℚ), (-304463511/1000000000 : ℚ), (47268047341/1000000000000 : ℚ), 4⟩,
    ⟨(93038832921/500000000000 : ℚ), (-4622939923/10000000000 : ℚ), (15248903277/200000000000 : ℚ), 3⟩,
    ⟨(95185331587/500000000000 : ℚ), (-5758767783/10000000000 : ℚ), (97615615903/1000000000000 : ℚ), 3⟩,
    ⟨(97010778651/500000000000 : ℚ), (-3286746571/5000000000 : ℚ), (22654141519/200000000000 : ℚ), 3⟩,
    ⟨(49222511603/250000000000 : ℚ), (-7138839403/10000000000 : ℚ), (7769958447/62500000000 : ℚ), 3⟩,
    ⟨(198865896077/1000000000000 : ℚ), (-3748406081/5000000000 : ℚ), (131402440447/1000000000000 : ℚ), 3⟩,
    ⟨(399746351/2000000000 : ℚ), (-7670638589/10000000000 : ℚ), (134867963319/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-7692136991/10000000000 : ℚ), (135297794931/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (31879202309/62500000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control700.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control700.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate700

namespace DiagonalRamsey.JointInheritedCertificate701
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1159712339/6250000000 : ℚ), (480512957563/1250000000 : ℚ), (-8949261689553/125000000000 : ℚ), 11⟩,
    ⟨(5837165561/31250000000 : ℚ), (101744360693/2500000000 : ℚ), (-3022879171/390625000 : ℚ), 8⟩,
    ⟨(9460623629/50000000000 : ℚ), (134642577953/10000000000 : ℚ), (-657360616233/250000000000 : ℚ), 6⟩,
    ⟨(192730376881/1000000000000 : ℚ), (30370873851/5000000000 : ℚ), (-1220974055907/1000000000000 : ℚ), 6⟩,
    ⟨(39441563953/200000000000 : ℚ), (30911090583/10000000000 : ℚ), (-320221013391/500000000000 : ℚ), 5⟩,
    ⟨(202472735613/1000000000000 : ℚ), (16136243057/10000000000 : ℚ), (-345668895853/1000000000000 : ℚ), 4⟩,
    ⟨(208322796663/1000000000000 : ℚ), (1957336443/2500000000 : ℚ), (-175291521737/1000000000000 : ℚ), 4⟩,
    ⟨(214533188349/1000000000000 : ℚ), (2733961257/10000000000 : ℚ), (-8461251811/125000000000 : ℚ), 4⟩,
    ⟨(276081561/1250000000 : ℚ), (-297804209/5000000000 : ℚ), (590569341/125000000000 : ℚ), 4⟩,
    ⟨(113537820243/500000000000 : ℚ), (-2874470307/10000000000 : ℚ), (55726516507/1000000000000 : ℚ), 4⟩,
    ⟨(46585140307/200000000000 : ℚ), (-4484446617/10000000000 : ℚ), (18547223273/200000000000 : ℚ), 3⟩,
    ⟨(29773827173/125000000000 : ℚ), (-5640588941/10000000000 : ℚ), (119959992633/1000000000000 : ℚ), 3⟩,
    ⟨(60667015067/250000000000 : ℚ), (-1293648833/2000000000 : ℚ), (3496367367/25000000000 : ℚ), 3⟩,
    ⟨(246185964569/1000000000000 : ℚ), (-3520805841/5000000000 : ℚ), (38466897117/250000000000 : ℚ), 3⟩,
    ⟨(62152284799/250000000000 : ℚ), (-370210891/500000000 : ℚ), (81418943743/500000000000 : ℚ), 3⟩,
    ⟨(249844462909/1000000000000 : ℚ), (-236880077/312500000 : ℚ), (1672228409/10000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-950239589/1250000000 : ℚ), (33553305561/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (93937816891/200000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control701.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control701.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate701

namespace DiagonalRamsey.JointInheritedCertificate702
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(131730281677/500000000000 : ℚ), (16392657561801/10000000000 : ℚ), (-432378932229503/1000000000000 : ℚ), 13⟩,
    ⟨(26387702327/100000000000 : ℚ), (898417548561/5000000000 : ℚ), (-5965584446317/125000000000 : ℚ), 10⟩,
    ⟨(264705932367/1000000000000 : ℚ), (157973870619/2500000000 : ℚ), (-3390436062473/200000000000 : ℚ), 8⟩,
    ⟨(53187861559/200000000000 : ℚ), (39022980393/1250000000 : ℚ), (-8473848087269/1000000000000 : ℚ), 7⟩,
    ⟨(66891317869/250000000000 : ℚ), (181313368047/10000000000 : ℚ), (-996920748397/200000000000 : ℚ), 7⟩,
    ⟨(26956816449/100000000000 : ℚ), (115506682569/10000000000 : ℚ), (-804530574733/250000000000 : ℚ), 6⟩,
    ⟨(271928697883/1000000000000 : ℚ), (77954854573/10000000000 : ℚ), (-2201895928963/1000000000000 : ℚ), 6⟩,
    ⟨(68656034607/250000000000 : ℚ), (5460413973/1000000000 : ℚ), (-1564068160893/1000000000000 : ℚ), 5⟩,
    ⟨(277628527559/1000000000000 : ℚ), (39151301133/10000000000 : ℚ), (-1137561495081/1000000000000 : ℚ), 5⟩,
    ⟨(140456465683/500000000000 : ℚ), (28430092143/10000000000 : ℚ), (-838274098263/1000000000000 : ℚ), 5⟩,
    ⟨(56889143849/200000000000 : ℚ), (414200903/200000000 : ℚ), (-124025995523/200000000000 : ℚ), 5⟩,
    ⟨(144096434259/500000000000 : ℚ), (936346429/625000000 : ℚ), (-114043039709/250000000000 : ℚ), 4⟩,
    ⟨(292118292089/1000000000000 : ℚ), (10624043613/10000000000 : ℚ), (-329780016821/1000000000000 : ℚ), 4⟩,
    ⟨(148092092991/500000000000 : ℚ), (361980387/500000000 : ℚ), (-46051536837/200000000000 : ℚ), 4⟩,
    ⟨(300351393417/1000000000000 : ℚ), (4563913363/10000000000 : ℚ), (-150473209877/1000000000000 : ℚ), 4⟩,
    ⟨(304579781909/1000000000000 : ℚ), (1208068547/5000000000 : ℚ), (-17105438153/200000000000 : ℚ), 4⟩,
    ⟨(61765725953/200000000000 : ℚ), (669453683/10000000000 : ℚ), (-3996010139/125000000000 : ℚ), 4⟩,
    ⟨(19566063641/62500000000 : ℚ), (-153398721/2000000000 : ℚ), (3172017721/250000000000 : ℚ), 4⟩,
    ⟨(79306056423/250000000000 : ℚ), (-1959476341/10000000000 : ℚ), (25130662199/500000000000 : ℚ), 4⟩,
    ⟨(64258023917/200000000000 : ℚ), (-2957075189/10000000000 : ℚ), (16421094621/200000000000 : ℚ), 3⟩,
    ⟨(65043108631/200000000000 : ℚ), (-3796604957/10000000000 : ℚ), (109239957251/1000000000000 : ℚ), 3⟩,
    ⟨(82240673107/250000000000 : ℚ), (-2252984529/5000000000 : ℚ), (132439947067/1000000000000 : ℚ), 3⟩,
    ⟨(332495480307/1000000000000 : ℚ), (-5106490479/10000000000 : ℚ), (7614957803/50000000000 : ℚ), 3⟩,
    ⟨(167889942057/500000000000 : ℚ), (-21931879/39062500 : ℚ), (42318621563/250000000000 : ℚ), 3⟩,
    ⟨(67756854649/200000000000 : ℚ), (-3021413639/5000000000 : ℚ), (183718327441/1000000000000 : ℚ), 3⟩,
    ⟨(34147971379/100000000000 : ℚ), (-128021113/200000000 : ℚ), (19590230209/100000000000 : ℚ), 3⟩,
    ⟨(343840247183/1000000000000 : ℚ), (-6696770871/10000000000 : ℚ), (206034966223/1000000000000 : ℚ), 3⟩,
    ⟨(172921570099/500000000000 : ℚ), (-216741603/312500000 : ℚ), (214275143149/1000000000000 : ℚ), 3⟩,
    ⟨(347469103879/1000000000000 : ℚ), (-1424456791/2000000000 : ℚ), (220742018369/1000000000000 : ℚ), 3⟩,
    ⟨(348702479307/1000000000000 : ℚ), (-3629814287/5000000000 : ℚ), (112761376773/500000000000 : ℚ), 3⟩,
    ⟨(349531388403/1000000000000 : ℚ), (-7350010431/10000000000 : ℚ), (57169531701/250000000000 : ℚ), 3⟩,
    ⟨(546793513/1562500000 : ℚ), (-295794213/400000000 : ℚ), (230246529117/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-7400444917/10000000000 : ℚ), (230442150247/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (390197700127/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control702.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control702.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate702

namespace DiagonalRamsey.JointInheritedCertificate716
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(186817649747/1000000000000 : ℚ), (3796269144007/10000000000 : ℚ), (-8897219814497/125000000000 : ℚ), 11⟩,
    ⟨(188028750891/1000000000000 : ℚ), (100506005467/2500000000 : ℚ), (-307659127523/40000000000 : ℚ), 8⟩,
    ⟨(190404411239/1000000000000 : ℚ), (133019351023/10000000000 : ℚ), (-2611912646907/1000000000000 : ℚ), 6⟩,
    ⟨(193853335499/1000000000000 : ℚ), (29996897781/5000000000 : ℚ), (-302904510517/250000000000 : ℚ), 6⟩,
    ⟨(49560745861/250000000000 : ℚ), (3812776779/1250000000 : ℚ), (-79310134101/125000000000 : ℚ), 5⟩,
    ⟨(101702331683/500000000000 : ℚ), (15887617167/10000000000 : ℚ), (-341457900701/1000000000000 : ℚ), 5⟩,
    ⟨(522850037/2500000000 : ℚ), (3833262277/5000000000 : ℚ), (-17211647709/100000000000 : ℚ), 4⟩,
    ⟨(107614315703/500000000000 : ℚ), (327667031/1250000000 : ℚ), (-13038155909/200000000000 : ℚ), 4⟩,
    ⟨(27679566383/125000000000 : ℚ), (-676838709/10000000000 : ℚ), (6751306991/1000000000000 : ℚ), 4⟩,
    ⟨(227525147671/1000000000000 : ℚ), (-1467525917/5000000000 : ℚ), (717589653/12500000000 : ℚ), 4⟩,
    ⟨(46652099821/200000000000 : ℚ), (-2265483741/5000000000 : ℚ), (94156546411/1000000000000 : ℚ), 3⟩,
    ⟨(119211089513/500000000000 : ℚ), (-2838680889/5000000000 : ℚ), (60591778349/500000000000 : ℚ), 3⟩,
    ⟨(242811826971/1000000000000 : ℚ), (-1624568083/2500000000 : ℚ), (1101028411/7812500000 : ℚ), 3⟩,
    ⟨(246260751231/1000000000000 : ℚ), (-7067113643/10000000000 : ℚ), (154840165737/1000000000000 : ℚ), 3⟩,
    ⟨(12431820579/50000000000 : ℚ), (-3713466433/5000000000 : ℚ), (81871683911/500000000000 : ℚ), 3⟩,
    ⟨(249847512723/1000000000000 : ℚ), (-7601549479/10000000000 : ℚ), (168095489629/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-7623140711/10000000000 : ℚ), (84317552851/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (239887754717/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control716.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control716.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate716

namespace DiagonalRamsey.JointInheritedCertificate717
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(53076635279/200000000000 : ℚ), (503526035623/1250000000 : ℚ), (-107268768706989/1000000000000 : ℚ), 11⟩,
    ⟨(267005140937/1000000000000 : ℚ), (427342145301/10000000000 : ℚ), (-5800074309521/500000000000 : ℚ), 8⟩,
    ⟨(135093369417/500000000000 : ℚ), (141823401239/10000000000 : ℚ), (-1973039958387/500000000000 : ℚ), 6⟩,
    ⟨(274805703063/1000000000000 : ℚ), (64267077037/10000000000 : ℚ), (-114786933489/62500000000 : ℚ), 6⟩,
    ⟨(140342264709/500000000000 : ℚ), (16465526263/5000000000 : ℚ), (-967727761023/1000000000000 : ℚ), 5⟩,
    ⟨(2875972979/10000000000 : ℚ), (8701257003/5000000000 : ℚ), (-131792875389/250000000000 : ℚ), 4⟩,
    ⟨(295278354693/1000000000000 : ℚ), (8674228251/10000000000 : ℚ), (-1092535607/4000000000 : ℚ), 4⟩,
    ⟨(303432521091/1000000000000 : ℚ), (25995781/78125000 : ℚ), (-22650832507/200000000000 : ℚ), 4⟩,
    ⟨(311746437053/1000000000000 : ℚ), (-31553901/2000000000 : ℚ), (-6148968433/1000000000000 : ℚ), 4⟩,
    ⟨(79975150863/250000000000 : ℚ), (-253490161/1000000000 : ℚ), (17218511473/250000000000 : ℚ), 4⟩,
    ⟨(65516332049/200000000000 : ℚ), (-4207364993/10000000000 : ℚ), (30747718447/250000000000 : ℚ), 3⟩,
    ⟨(334494428727/1000000000000 : ℚ), (-1350792119/2500000000 : ℚ), (20320330493/125000000000 : ℚ), 3⟩,
    ⟨(170186627541/500000000000 : ℚ), (-390982753/625000000 : ℚ), (191324430649/1000000000000 : ℚ), 3⟩,
    ⟨(344992219311/1000000000000 : ℚ), (-6844309157/10000000000 : ℚ), (42298357881/200000000000 : ℚ), 3⟩,
    ⟨(348173817207/1000000000000 : ℚ), (-3607793073/5000000000 : ℚ), (44871788569/200000000000 : ℚ), 3⟩,
    ⟨(1399183127/4000000000 : ℚ), (-1848864207/2500000000 : ℚ), (230636074949/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-3708841713/5000000000 : ℚ), (9256551151/40000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (99796286609/250000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control717.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control717.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate717

namespace DiagonalRamsey.JointInheritedCertificate729
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7526461633/40000000000 : ℚ), (1875422794859/5000000000 : ℚ), (-7082484703039/100000000000 : ℚ), 11⟩,
    ⟨(189346881799/1000000000000 : ℚ), (198669471211/5000000000 : ℚ), (-95643220913/12500000000 : ℚ), 8⟩,
    ⟨(191672011759/1000000000000 : ℚ), (131493077609/10000000000 : ℚ), (-519389562223/200000000000 : ℚ), 7⟩,
    ⟨(12190473579/62500000000 : ℚ), (5929560921/1000000000 : ℚ), (-601793363589/500000000000 : ℚ), 6⟩,
    ⟨(24917982153/125000000000 : ℚ), (15061861169/5000000000 : ℚ), (-314667985367/500000000000 : ℚ), 5⟩,
    ⟨(204395748011/1000000000000 : ℚ), (3914902111/2500000000 : ℚ), (-84451698723/250000000000 : ℚ), 5⟩,
    ⟨(105004554147/500000000000 : ℚ), (7518752227/10000000000 : ℚ), (-33871150813/200000000000 : ℚ), 4⟩,
    ⟨(43193643957/200000000000 : ℚ), (2520321211/10000000000 : ℚ), (-31508106769/500000000000 : ℚ), 4⟩,
    ⟨(222044077173/1000000000000 : ℚ), (-374349247/5000000000 : ℚ), (8511603591/1000000000000 : ℚ), 4⟩,
    ⟨(45600637733/200000000000 : ℚ), (-2987771711/10000000000 : ℚ), (294302361/5000000000 : ℚ), 4⟩,
    ⟨(58404137237/250000000000 : ℚ), (-4570663/10000000 : ℚ), (372563973/3906250000 : ℚ), 4⟩,
    ⟨(119334219867/500000000000 : ℚ), (-2854012583/5000000000 : ℚ), (122224918961/1000000000000 : ℚ), 3⟩,
    ⟨(48592943939/200000000000 : ℚ), (-6522680979/10000000000 : ℚ), (70919446077/500000000000 : ℚ), 3⟩,
    ⟨(246340285199/1000000000000 : ℚ), (-1771830109/2500000000 : ℚ), (155651284613/1000000000000 : ℚ), 3⟩,
    ⟨(248665415159/1000000000000 : ℚ), (-7444550029/10000000000 : ℚ), (32898471967/200000000000 : ℚ), 3⟩,
    ⟨(249850756133/1000000000000 : ℚ), (-152358637/200000000 : ℚ), (168813986751/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-3819685737/5000000000 : ℚ), (42337454317/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (244939758341/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control729.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control729.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate729

namespace DiagonalRamsey.JointInheritedCertificate730
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(113577820163/500000000000 : ℚ), (15499540271403/10000000000 : ℚ), (-44059441614817/125000000000 : ℚ), 13⟩,
    ⟨(45501238889/200000000000 : ℚ), (1698884544317/10000000000 : ℚ), (-38896796535163/1000000000000 : ℚ), 10⟩,
    ⟨(114101963327/500000000000 : ℚ), (298673610889/5000000000 : ℚ), (-3452584764363/250000000000 : ℚ), 8⟩,
    ⟨(57310529353/250000000000 : ℚ), (147503189199/5000000000 : ℚ), (-6898562923297/1000000000000 : ℚ), 8⟩,
    ⟨(115305384187/500000000000 : ℚ), (34245753833/2000000000 : ℚ), (-4053985789513/1000000000000 : ℚ), 7⟩,
    ⟨(232296698683/1000000000000 : ℚ), (21795326547/2000000000 : ℚ), (-1306913562289/500000000000 : ℚ), 6⟩,
    ⟨(234283671907/1000000000000 : ℚ), (4590268001/625000000 : ℚ), (-1785277316601/1000000000000 : ℚ), 6⟩,
    ⟨(23655255241/100000000000 : ℚ), (51342387331/10000000000 : ℚ), (-1265191205551/1000000000000 : ℚ), 6⟩,
    ⟨(7471296551/31250000000 : ℚ), (7342060059/2000000000 : ℚ), (-45868205303/50000000000 : ℚ), 5⟩,
    ⟨(60461532131/250000000000 : ℚ), (13276874737/5000000000 : ℚ), (-336617522637/500000000000 : ℚ), 5⟩,
    ⟨(122409922051/500000000000 : ℚ), (1923618031/1000000000 : ℚ), (-123810668419/250000000000 : ℚ), 5⟩,
    ⟨(247973997861/1000000000000 : ℚ), (276054501/200000000 : ℚ), (-5647062713/15625000000 : ℚ), 5⟩,
    ⟨(10051128543/40000000000 : ℚ), (1208308687/1250000000 : ℚ), (-2017145661/7812500000 : ℚ), 4⟩,
    ⟨(3183758373/12500000000 : ℚ), (6451027947/10000000000 : ℚ), (-88436143787/500000000000 : ℚ), 4⟩,
    ⟨(258208406533/1000000000000 : ℚ), (1953196631/5000000000 : ℚ), (-4465288237/40000000000 : ℚ), 4⟩,
    ⟨(26176764223/100000000000 : ℚ), (46538473/250000000 : ℚ), (-14620463077/250000000000 : ℚ), 4⟩,
    ⟨(265344099547/1000000000000 : ℚ), (196519411/10000000000 : ℚ), (-14609176213/1000000000000 : ℚ), 4⟩,
    ⟨(67225833811/250000000000 : ℚ), (-73411367/625000000 : ℚ), (4401779679/200000000000 : ℚ), 4⟩,
    ⟨(4256422999/15625000000 : ℚ), (-2314419507/10000000000 : ℚ), (10570812999/200000000000 : ℚ), 4⟩,
    ⟨(137916764101/500000000000 : ℚ), (-3269380473/10000000000 : ℚ), (2469617467/31250000000 : ℚ), 4⟩,
    ⟨(69784435979/250000000000 : ℚ), (-509280437/1250000000 : ℚ), (50679358973/500000000000 : ℚ), 4⟩,
    ⟨(141145948837/500000000000 : ℚ), (-29720957/62500000 : ℚ), (120476450533/1000000000000 : ℚ), 4⟩,
    ⟨(285265613253/1000000000000 : ℚ), (-1066565177/2000000000 : ℚ), (136862480397/1000000000000 : ℚ), 3⟩,
    ⟨(57606050429/200000000000 : ℚ), (-2911055913/5000000000 : ℚ), (3772169673/25000000000 : ℚ), 3⟩,
    ⟨(145279594683/500000000000 : ℚ), (-3117558917/5000000000 : ℚ), (81417092599/500000000000 : ℚ), 3⟩,
    ⟨(292828069869/1000000000000 : ℚ), (-1645256877/2500000000 : ℚ), (172923736719/1000000000000 : ℚ), 3⟩,
    ⟨(147407521547/500000000000 : ℚ), (-6866906693/10000000000 : ℚ), (36264646777/200000000000 : ℚ), 3⟩,
    ⟨(148250486701/500000000000 : ℚ), (-7098154581/10000000000 : ℚ), (188160123527/1000000000000 : ℚ), 3⟩,
    ⟨(74467406091/250000000000 : ℚ), (-11373189/15625000 : ℚ), (193529787789/1000000000000 : ℚ), 3⟩,
    ⟨(149453907561/500000000000 : ℚ), (-7411957197/10000000000 : ℚ), (49375449401/250000000000 : ℚ), 3⟩,
    ⟨(74901386833/250000000000 : ℚ), (-7499599693/10000000000 : ℚ), (100062274751/500000000000 : ℚ), 3⟩,
    ⟨(5999122029/20000000000 : ℚ), (-3771549191/5000000000 : ℚ), (2517856947/12500000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-754852079/1000000000 : ℚ), (100795608053/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (448879622299/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control730.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control730.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate730

namespace DiagonalRamsey.JointInheritedCertificate731
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(133565455437/500000000000 : ℚ), (1987524602637/5000000000 : ℚ), (-106540372274069/1000000000000 : ℚ), 11⟩,
    ⟨(268719374237/1000000000000 : ℚ), (421810112733/10000000000 : ℚ), (-2303659428333/200000000000 : ℚ), 8⟩,
    ⟨(33979407151/125000000000 : ℚ), (140000764233/10000000000 : ℚ), (-978995237977/250000000000 : ℚ), 7⟩,
    ⟨(5527176363/20000000000 : ℚ), (63423626423/10000000000 : ℚ), (-455196546653/250000000000 : ℚ), 6⟩,
    ⟨(141058109577/500000000000 : ℚ), (32468868869/10000000000 : ℚ), (-478921959691/500000000000 : ℚ), 5⟩,
    ⟨(4513846977/15625000000 : ℚ), (136971233/80000000 : ℚ), (-520322964227/1000000000000 : ℚ), 5⟩,
    ⟨(148204306727/500000000000 : ℚ), (1698085439/2000000000 : ℚ), (-134033195891/500000000000 : ℚ), 4⟩,
    ⟨(76098589513/250000000000 : ℚ), (3200671967/10000000000 : ℚ), (-2186686323/20000000000 : ℚ), 4⟩,
    ⟨(78134138159/250000000000 : ℚ), (-248936709/10000000000 : ℚ), (-603907283/200000000000 : ℚ), 4⟩,
    ⟨(64104459447/200000000000 : ℚ), (-1301360947/5000000000 : ℚ), (71433928213/1000000000000 : ℚ), 4⟩,
    ⟨(328044704161/1000000000000 : ℚ), (-2129685213/5000000000 : ℚ), (62564740463/500000000000 : ℚ), 4⟩,
    ⟨(66962938307/200000000000 : ℚ), (-5444276133/10000000000 : ℚ), (164387333247/1000000000000 : ℚ), 3⟩,
    ⟨(340572092539/1000000000000 : ℚ), (-6289336727/10000000000 : ℚ), (24114793159/125000000000 : ℚ), 3⟩,
    ⟨(345095653481/1000000000000 : ℚ), (-6872918483/10000000000 : ℚ), (212923144341/1000000000000 : ℚ), 3⟩,
    ⟨(87052884113/250000000000 : ℚ), (-1448225433/2000000000 : ℚ), (3526352743/15625000000 : ℚ), 3⟩,
    ⟨(69959999963/200000000000 : ℚ), (-7419539413/10000000000 : ℚ), (231913187217/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-186039679/250000000 : ℚ), (232684637721/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (102064542337/250000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control731.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control731.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate731

namespace DiagonalRamsey.JointInheritedCertificate742
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30132727657/200000000000 : ℚ), (3607396699899/10000000000 : ℚ), (-54540482047769/1000000000000 : ℚ), 11⟩,
    ⟨(151609334731/1000000000000 : ℚ), (4774393959/125000000 : ℚ), (-235540400741/40000000000 : ℚ), 8⟩,
    ⟨(153464385039/1000000000000 : ℚ), (126243476347/10000000000 : ℚ), (-997887067831/500000000000 : ℚ), 7⟩,
    ⟨(31231500133/200000000000 : ℚ), (11357716259/2000000000 : ℚ), (-922568163541/1000000000000 : ℚ), 6⟩,
    ⟨(1246759271/7812500000 : ℚ), (1794718861/625000000 : ℚ), (-19205879407/40000000000 : ℚ), 5⟩,
    ⟨(81807859527/500000000000 : ℚ), (7393848049/5000000000 : ℚ), (-127712103289/500000000000 : ℚ), 5⟩,
    ⟨(84047103333/500000000000 : ℚ), (3470498277/5000000000 : ℚ), (-125458922257/1000000000000 : ℚ), 4⟩,
    ⟨(43212135939/250000000000 : ℚ), (2116372007/10000000000 : ℚ), (-43306042233/1000000000000 : ℚ), 4⟩,
    ⟨(177696023817/1000000000000 : ℚ), (-8358367/80000000 : ℚ), (12050021737/1000000000000 : ℚ), 4⟩,
    ⟨(182450360907/1000000000000 : ℚ), (-1607382911/5000000000 : ℚ), (408784481/8000000000 : ℚ), 4⟩,
    ⟨(186928848519/1000000000000 : ℚ), (-2376254727/5000000000 : ℚ), (3974208239/50000000000 : ℚ), 4⟩,
    ⟨(38191876177/200000000000 : ℚ), (-2930061137/5000000000 : ℚ), (100404632513/1000000000000 : ℚ), 4⟩,
    ⟨(194387066907/1000000000000 : ℚ), (-6655259843/10000000000 : ℚ), (115721511829/1000000000000 : ℚ), 4⟩,
    ⟨(98540091267/500000000000 : ℚ), (-7207421859/10000000000 : ℚ), (126527910137/1000000000000 : ℚ), 4⟩,
    ⟨(99467616421/500000000000 : ℚ), (-944657229/1250000000 : ℚ), (65163369/488281250 : ℚ), 3⟩,
    ⟨(24985116161/125000000000 : ℚ), (-3863600599/5000000000 : ℚ), (27368669083/200000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-1937055671/2500000000 : ℚ), (137263649893/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (270966214701/500000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control742.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control742.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate742

namespace DiagonalRamsey.JointInheritedCertificate765
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(151816769193/1000000000000 : ℚ), (890151378457/2500000000 : ℚ), (-54239288972251/1000000000000 : ℚ), 11⟩,
    ⟨(152740362027/1000000000000 : ℚ), (37711485091/1000000000 : ℚ), (-1463586824229/250000000000 : ℚ), 8⟩,
    ⟨(7727602727/50000000000 : ℚ), (124662948071/10000000000 : ℚ), (-495748733217/250000000000 : ℚ), 7⟩,
    ⟨(31436444881/200000000000 : ℚ), (28031504993/5000000000 : ℚ), (-457853260913/500000000000 : ℚ), 6⟩,
    ⟨(160529795669/1000000000000 : ℚ), (28320736491/10000000000 : ℚ), (-118937193693/250000000000 : ℚ), 5⟩,
    ⟨(82233061523/500000000000 : ℚ), (2909817673/2000000000 : ℚ), (-25230118457/100000000000 : ℚ), 5⟩,
    ⟨(168839935681/1000000000000 : ℚ), (3392966077/5000000000 : ℚ), (-123095855309/1000000000000 : ℚ), 4⟩,
    ⟨(17348315041/100000000000 : ℚ), (62817973/312500000 : ℚ), (-10360807791/250000000000 : ℚ), 4⟩,
    ⟨(44554332773/250000000000 : ℚ), (-560200513/5000000000 : ℚ), (6779642881/500000000000 : ℚ), 4⟩,
    ⟨(9143027291/50000000000 : ℚ), (-1635104191/5000000000 : ℚ), (10469058397/200000000000 : ℚ), 4⟩,
    ⟨(23404294807/125000000000 : ℚ), (-4794179439/10000000000 : ℚ), (16106409449/200000000000 : ℚ), 4⟩,
    ⟨(191170685833/1000000000000 : ℚ), (-5892207551/10000000000 : ℚ), (25325007967/250000000000 : ℚ), 4⟩,
    ⟨(194518257097/1000000000000 : ℚ), (-1670171721/2500000000 : ℚ), (14562779643/125000000000 : ℚ), 4⟩,
    ⟨(98574213481/500000000000 : ℚ), (-7228364169/10000000000 : ℚ), (127226358009/1000000000000 : ℚ), 4⟩,
    ⟨(7958404779/40000000000 : ℚ), (-1515086117/2000000000 : ℚ), (134099816231/1000000000000 : ℚ), 4⟩,
    ⟨(49970928077/250000000000 : ℚ), (-7744051677/10000000000 : ℚ), (68731224723/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-3882455367/5000000000 : ℚ), (68939754613/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (110522003099/200000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control765.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control765.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate765

namespace DiagonalRamsey.JointInheritedCertificate766
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11933048423/62500000000 : ℚ), (182655971387/500000000 : ℚ), (-218686497123/3125000000 : ℚ), 11⟩,
    ⟨(38412214489/200000000000 : ℚ), (193606732339/5000000000 : ℚ), (-3777973809129/500000000000 : ℚ), 8⟩,
    ⟨(97141077117/500000000000 : ℚ), (32043709599/2500000000 : ℚ), (-80045607549/31250000000 : ℚ), 7⟩,
    ⟨(24688333151/125000000000 : ℚ), (28884056037/5000000000 : ℚ), (-1184695830113/1000000000000 : ℚ), 6⟩,
    ⟨(100805344609/500000000000 : ℚ), (14645326267/5000000000 : ℚ), (-617340834469/1000000000000 : ℚ), 5⟩,
    ⟨(206436510923/1000000000000 : ℚ), (3788760329/2500000000 : ℚ), (-82341894701/250000000000 : ℚ), 5⟩,
    ⟨(105899338351/500000000000 : ℚ), (179755021/250000000 : ℚ), (-1304182727/8000000000 : ℚ), 4⟩,
    ⟨(21749112153/100000000000 : ℚ), (458955339/2000000000 : ℚ), (-58058388009/1000000000000 : ℚ), 4⟩,
    ⟨(44659017589/200000000000 : ℚ), (-113726757/1250000000 : ℚ), (6253583807/500000000000 : ℚ), 4⟩,
    ⟨(228987532773/1000000000000 : ℚ), (-621302787/2000000000 : ℚ), (31075184123/500000000000 : ℚ), 4⟩,
    ⟨(29293712319/125000000000 : ℚ), (-4660551147/10000000000 : ℚ), (98134959449/1000000000000 : ℚ), 4⟩,
    ⟨(239175520257/1000000000000 : ℚ), (-5777905243/10000000000 : ℚ), (31145230479/250000000000 : ℚ), 4⟩,
    ⟨(243279544267/1000000000000 : ℚ), (-6578711797/10000000000 : ℚ), (143894568711/1000000000000 : ℚ), 4⟩,
    ⟨(246504055241/1000000000000 : ℚ), (-1783513093/2500000000 : ℚ), (31498571647/200000000000 : ℚ), 4⟩,
    ⟨(24872513703/100000000000 : ℚ), (-935694177/1250000000 : ℚ), (265913773/1600000000 : ℚ), 4⟩,
    ⟨(249857434707/1000000000000 : ℚ), (-1914051109/2500000000 : ℚ), (170450237809/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-3838654401/5000000000 : ℚ), (85488848213/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (51022577437/100000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control766.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control766.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate766

namespace DiagonalRamsey.JointInheritedCertificate790
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(192358544579/1000000000000 : ℚ), (900183116619/2500000000 : ℚ), (-3474271916999/50000000000 : ℚ), 11⟩,
    ⟨(193463435933/1000000000000 : ℚ), (190881910609/5000000000 : ℚ), (-375012034821/50000000000 : ℚ), 8⟩,
    ⟨(12226922393/62500000000 : ℚ), (63189816693/5000000000 : ℚ), (-25408597869/10000000000 : ℚ), 7⟩,
    ⟨(198777222659/1000000000000 : ℚ), (2277488621/400000000 : ℚ), (-234759795769/200000000000 : ℚ), 6⟩,
    ⟨(101390956093/500000000000 : ℚ), (1802198017/625000000 : ℚ), (-122093892069/200000000000 : ℚ), 5⟩,
    ⟨(41498185779/200000000000 : ℚ), (14877920001/10000000000 : ℚ), (-324566151393/1000000000000 : ℚ), 5⟩,
    ⟨(212723307917/1000000000000 : ℚ), (7009056361/10000000000 : ℚ), (-159441925957/1000000000000 : ℚ), 5⟩,
    ⟨(218277971859/1000000000000 : ℚ), (2170005921/10000000000 : ℚ), (-55269278339/1000000000000 : ℚ), 4⟩,
    ⟨(223941458101/1000000000000 : ℚ), (-999227921/10000000000 : ℚ), (14746361639/1000000000000 : ℚ), 4⟩,
    ⟨(229496122043/1000000000000 : ℚ), (-1586317969/5000000000 : ℚ), (63989537079/1000000000000 : ℚ), 4⟩,
    ⟨(29341062633/125000000000 : ℚ), (-4710801153/10000000000 : ℚ), (24918824351/250000000000 : ℚ), 4⟩,
    ⟨(119718758887/500000000000 : ℚ), (-5817148333/10000000000 : ℚ), (125896417701/1000000000000 : ℚ), 4⟩,
    ⟨(243442207301/1000000000000 : ℚ), (-6610337871/10000000000 : ℚ), (145043305921/1000000000000 : ℚ), 4⟩,
    ⟨(30823583959/125000000000 : ℚ), (-7160565703/10000000000 : ℚ), (79261623481/500000000000 : ℚ), 4⟩,
    ⟨(124377997013/500000000000 : ℚ), (-1501783571/2000000000 : ℚ), (41787638113/250000000000 : ℚ), 4⟩,
    ⟨(249860885381/1000000000000 : ℚ), (-7678068023/10000000000 : ℚ), (171367559207/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-7698988141/10000000000 : ℚ), (85945208273/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (520468510299/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control790.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control790.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate790

namespace DiagonalRamsey.JointInheritedCertificate797
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(30833129563/200000000000 : ℚ), (3456239831479/10000000000 : ℚ), (-53452554673213/1000000000000 : ℚ), 12⟩,
    ⟨(155044216531/1000000000000 : ℚ), (366254501813/10000000000 : ℚ), (-5765533728853/1000000000000 : ℚ), 8⟩,
    ⟨(7838379553/50000000000 : ℚ), (15135276257/1250000000 : ℚ), (-487514170801/250000000000 : ℚ), 7⟩,
    ⟨(31853908617/200000000000 : ℚ), (2720157787/500000000 : ℚ), (-112276755989/125000000000 : ℚ), 6⟩,
    ⟨(162453923993/1000000000000 : ℚ), (13704429491/5000000000 : ℚ), (-464667845419/1000000000000 : ℚ), 5⟩,
    ⟨(41549589953/250000000000 : ℚ), (6996403589/5000000000 : ℚ), (-61130148889/250000000000 : ℚ), 5⟩,
    ⟨(170358953973/1000000000000 : ℚ), (3210614579/5000000000 : ℚ), (-58632272023/500000000000 : ℚ), 5⟩,
    ⟨(6991032687/40000000000 : ℚ), (1758212809/10000000000 : ℚ), (-921986929/25000000000 : ℚ), 4⟩,
    ⟨(179279211843/1000000000000 : ℚ), (-1301472749/10000000000 : ℚ), (8620083299/500000000000 : ℚ), 4⟩,
    ⟨(91848037523/500000000000 : ℚ), (-3404437249/10000000000 : ℚ), (27690941477/500000000000 : ℚ), 4⟩,
    ⟨(93928334603/500000000000 : ℚ), (-244819137/500000000 : ℚ), (10385720197/125000000000 : ℚ), 4⟩,
    ⟨(7664044201/40000000000 : ℚ), (-1493032457/2500000000 : ℚ), (10348930641/100000000000 : ℚ), 4⟩,
    ⟨(194785485933/1000000000000 : ℚ), (-6745144853/10000000000 : ℚ), (118420483821/1000000000000 : ℚ), 4⟩,
    ⟨(98643718979/500000000000 : ℚ), (-7282416519/10000000000 : ℚ), (402974467/3125000000 : ℚ), 4⟩,
    ⟨(199010812487/1000000000000 : ℚ), (-1905765583/2500000000 : ℚ), (135701380683/1000000000000 : ℚ), 4⟩,
    ⟨(199889381203/1000000000000 : ℚ), (-389430983/500000000 : ℚ), (17375423159/125000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-7809102437/10000000000 : ℚ), (34853231863/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (114819170079/200000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control797.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control797.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate797

namespace DiagonalRamsey.JointInheritedCertificate798
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(38764837207/200000000000 : ℚ), (3545948165409/10000000000 : ℚ), (-34471166737643/500000000000 : ℚ), 12⟩,
    ⟨(48725245867/250000000000 : ℚ), (188025497463/5000000000 : ℚ), (-7439113450253/1000000000000 : ℚ), 8⟩,
    ⟨(197013197611/1000000000000 : ℚ), (124491886951/10000000000 : ℚ), (-2518315340323/1000000000000 : ℚ), 7⟩,
    ⟨(10003982863/50000000000 : ℚ), (5606067931/1000000000 : ℚ), (-1161914799751/1000000000000 : ℚ), 6⟩,
    ⟨(20398252009/100000000000 : ℚ), (14176615533/5000000000 : ℚ), (-150751150663/250000000000 : ℚ), 5⟩,
    ⟨(26071475159/125000000000 : ℚ), (14583949433/10000000000 : ℚ), (-159685159933/500000000000 : ℚ), 5⟩,
    ⟨(213671137303/1000000000000 : ℚ), (6816488047/10000000000 : ℚ), (-15558071497/100000000000 : ℚ), 5⟩,
    ⟨(219084563559/1000000000000 : ℚ), (1018564599/5000000000 : ℚ), (-26135485759/500000000000 : ℚ), 4⟩,
    ⟨(112302022553/500000000000 : ℚ), (-273651233/2500000000 : ℚ), (17147823917/1000000000000 : ℚ), 4⟩,
    ⟨(115008735681/500000000000 : ℚ), (-162164189/500000000 : ℚ), (13191750139/200000000000 : ℚ), 4⟩,
    ⟨(235116807393/1000000000000 : ℚ), (-1191147239/2500000000 : ℚ), (101323000077/1000000000000 : ℚ), 4⟩,
    ⟨(9588243543/40000000000 : ℚ), (-5859242301/10000000000 : ℚ), (31825787871/250000000000 : ℚ), 4⟩,
    ⟨(48721790281/200000000000 : ℚ), (-6644339761/10000000000 : ℚ), (73135949439/500000000000 : ℚ), 4⟩,
    ⟨(123337705527/500000000000 : ℚ), (-1797284117/2500000000 : ℚ), (79812865163/500000000000 : ℚ), 4⟩,
    ⟨(248787625197/1000000000000 : ℚ), (-3767071947/5000000000 : ℚ), (168172253909/1000000000000 : ℚ), 4⟩,
    ⟨(24986442263/100000000000 : ℚ), (-7701699941/10000000000 : ℚ), (172349814457/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-7722424363/10000000000 : ℚ), (17286778441/100000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (53075798359/100000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control798.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control798.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate798

namespace DiagonalRamsey.JointInheritedCertificate813
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(155420720351/1000000000000 : ℚ), (3403763201263/10000000000 : ℚ), (-26531812341927/500000000000 : ℚ), 12⟩,
    ⟨(78137615701/500000000000 : ℚ), (360795071901/10000000000 : ℚ), (-5721642264977/1000000000000 : ℚ), 9⟩,
    ⟨(1263611321/8000000000 : ℚ), (1863807363/156250000 : ℚ), (-241723713211/125000000000 : ℚ), 7⟩,
    ⟨(80192428359/500000000000 : ℚ), (13392695107/2500000000 : ℚ), (-444792188307/500000000000 : ℚ), 6⟩,
    ⟨(81741020193/500000000000 : ℚ), (13476371441/5000000000 : ℚ), (-91841891843/200000000000 : ℚ), 6⟩,
    ⟨(167123943097/1000000000000 : ℚ), (109724541/80000000 : ℚ), (-24069564953/100000000000 : ℚ), 5⟩,
    ⟨(171170608573/1000000000000 : ℚ), (6240344629/10000000000 : ℚ), (-14300665841/125000000000 : ℚ), 5⟩,
    ⟨(175466525729/1000000000000 : ℚ), (1634016817/10000000000 : ℚ), (-1732457097/50000000000 : ℚ), 5⟩,
    ⟨(179846604877/1000000000000 : ℚ), (-1390032271/10000000000 : ℚ), (19031669219/1000000000000 : ℚ), 4⟩,
    ⟨(184142522033/1000000000000 : ℚ), (-867362797/2500000000 : ℚ), (5685244127/100000000000 : ℚ), 4⟩,
    ⟨(188189187509/1000000000000 : ℚ), (-4945296187/10000000000 : ℚ), (42157601013/500000000000 : ℚ), 4⟩,
    ⟨(9591554511/50000000000 : ℚ), (-3004918277/5000000000 : ℚ), (3266759951/31250000000 : ℚ), 4⟩,
    ⟨(6091508559/31250000000 : ℚ), (-6775068223/10000000000 : ℚ), (119331506001/1000000000000 : ℚ), 4⟩,
    ⟨(197361715481/1000000000000 : ℚ), (-7307098713/10000000000 : ℚ), (16220740607/125000000000 : ℚ), 4⟩,
    ⟨(199037899203/1000000000000 : ℚ), (-7644508397/10000000000 : ℚ), (136453075143/1000000000000 : ℚ), 4⟩,
    ⟨(39978482051/200000000000 : ℚ), (-488032551/625000000 : ℚ), (6986225749/50000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-7828813819/10000000000 : ℚ), (35032566453/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (14622027751/25000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control813.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control813.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate813

namespace DiagonalRamsey.JointInheritedCertificate820
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(156719164959/1000000000000 : ℚ), (104672277403/312500000 : ℚ), (-52648162561869/1000000000000 : ℚ), 12⟩,
    ⟨(6301951479/40000000000 : ℚ), (177570877937/5000000000 : ℚ), (-5674813778593/1000000000000 : ℚ), 9⟩,
    ⟨(79588074549/500000000000 : ℚ), (117417544019/10000000000 : ℚ), (-11977958893/6250000000 : ℚ), 7⟩,
    ⟨(32307742543/200000000000 : ℚ), (13176377189/2500000000 : ℚ), (-880425560587/1000000000000 : ℚ), 6⟩,
    ⟨(164545685831/1000000000000 : ℚ), (26477902359/10000000000 : ℚ), (-11335900677/25000000000 : ℚ), 6⟩,
    ⟨(33616302431/200000000000 : ℚ), (3356670263/2500000000 : ℚ), (-23666402857/100000000000 : ℚ), 5⟩,
    ⟨(21501288983/125000000000 : ℚ), (6051799793/10000000000 : ℚ), (-6962606931/62500000000 : ℚ), 5⟩,
    ⟨(17618110339/100000000000 : ℚ), (752295841/5000000000 : ℚ), (-4039172691/125000000000 : ℚ), 5⟩,
    ⟨(11277100347/62500000000 : ℚ), (-370563437/2500000000 : ℚ), (1306418673/62500000000 : ℚ), 4⟩,
    ⟨(184604397077/1000000000000 : ℚ), (-3537075909/10000000000 : ℚ), (1459614331/25000000000 : ℚ), 4⟩,
    ⟨(94266598393/500000000000 : ℚ), (-4996096141/10000000000 : ℚ), (20896832/244140625 : ℚ), 4⟩,
    ⟨(19206902311/100000000000 : ℚ), (-189028873/312500000 : ℚ), (105622883793/1000000000000 : ℚ), 4⟩,
    ⟨(97537998113/500000000000 : ℚ), (-1361204053/2000000000 : ℚ), (120275468109/1000000000000 : ℚ), 4⟩,
    ⟨(197438559843/1000000000000 : ℚ), (-3666286069/5000000000 : ℚ), (65304192451/500000000000 : ℚ), 4⟩,
    ⟨(99532960983/500000000000 : ℚ), (-1916649703/2500000000 : ℚ), (27446049649/200000000000 : ℚ), 4⟩,
    ⟨(199895543983/1000000000000 : ℚ), (-7828996097/10000000000 : ℚ), (140469726337/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-7849090693/10000000000 : ℚ), (140871513237/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (595702526919/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control820.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control820.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate820

namespace DiagonalRamsey.JointInheritedCertificate826
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39516722413/250000000000 : ℚ), (1646791961957/5000000000 : ℚ), (-3263014033937/62500000000 : ℚ), 12⟩,
    ⟨(31774135603/200000000000 : ℚ), (174652620549/5000000000 : ℚ), (-225011181453/40000000000 : ℚ), 9⟩,
    ⟨(32089473121/200000000000 : ℚ), (57743881603/5000000000 : ℚ), (-379638613421/200000000000 : ℚ), 7⟩,
    ⟨(81368180601/500000000000 : ℚ), (3238088431/625000000 : ℚ), (-870782595667/1000000000000 : ℚ), 6⟩,
    ⟨(16564969999/100000000000 : ℚ), (25985645921/10000000000 : ℚ), (-447375990413/1000000000000 : ℚ), 6⟩,
    ⟨(169075423991/1000000000000 : ℚ), (13127069009/10000000000 : ℚ), (-46489162137/200000000000 : ℚ), 5⟩,
    ⟨(34576376911/200000000000 : ℚ), (1464073719/2500000000 : ℚ), (-108268994099/1000000000000 : ℚ), 5⟩,
    ⟨(1382209387/7812500000 : ℚ), (685250307/5000000000 : ℚ), (-7471134273/250000000000 : ℚ), 5⟩,
    ⟨(181042884761/1000000000000 : ℚ), (-1577663191/10000000000 : ℚ), (4568567163/200000000000 : ℚ), 5⟩,
    ⟨(92541900871/500000000000 : ℚ), (-1803448643/5000000000 : ℚ), (29984572591/500000000000 : ℚ), 4⟩,
    ⟨(94445131153/500000000000 : ℚ), (-5048409179/10000000000 : ℚ), (86912163461/1000000000000 : ℚ), 4⟩,
    ⟨(192315986307/1000000000000 : ℚ), (-608904621/1000000000 : ℚ), (53370662797/500000000000 : ℚ), 4⟩,
    ⟨(39045865019/200000000000 : ℚ), (-3418836863/5000000000 : ℚ), (1515563519/12500000000 : ℚ), 4⟩,
    ⟨(49379580173/250000000000 : ℚ), (-1471704299/2000000000 : ℚ), (8217010511/62500000000 : ℚ), 4⟩,
    ⟨(99547504141/500000000000 : ℚ), (-7689025379/10000000000 : ℚ), (34506500803/250000000000 : ℚ), 4⟩,
    ⟨(39979759329/200000000000 : ℚ), (-3924870301/5000000000 : ℚ), (141232188859/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-98370357/125000000 : ℚ), (141629847311/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (60656026127/100000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control826.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control826.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate826

namespace DiagonalRamsey.JointInheritedCertificate827
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(198586363539/1000000000000 : ℚ), (67506567119/200000000 : ℚ), (-67215221855709/1000000000000 : ℚ), 12⟩,
    ⟨(39914375581/200000000000 : ℚ), (358233683667/10000000000 : ℚ), (-724499504979/100000000000 : ℚ), 9⟩,
    ⟨(1612040271/8000000000 : ℚ), (59298208999/5000000000 : ℚ), (-611727780447/250000000000 : ℚ), 7⟩,
    ⟨(102155770673/500000000000 : ℚ), (6665171503/1250000000 : ℚ), (-1124411695153/1000000000000 : ℚ), 6⟩,
    ⟨(51970886953/250000000000 : ℚ), (3355954241/1250000000 : ℚ), (-72443842273/125000000000 : ℚ), 6⟩,
    ⟨(212083783067/1000000000000 : ℚ), (13667053603/10000000000 : ℚ), (-75781223529/250000000000 : ℚ), 5⟩,
    ⟨(108375417213/500000000000 : ℚ), (3108834349/5000000000 : ℚ), (-35892653297/250000000000 : ℚ), 5⟩,
    ⟨(110852674861/500000000000 : ℚ), (1625768489/10000000000 : ℚ), (-42995263519/1000000000000 : ℚ), 5⟩,
    ⟨(226756929711/1000000000000 : ℚ), (-1388110559/10000000000 : ℚ), (4907066653/200000000000 : ℚ), 5⟩,
    ⟨(231711445007/1000000000000 : ℚ), (-172951821/500000000 : ℚ), (14396187603/200000000000 : ℚ), 4⟩,
    ⟨(118189248183/500000000000 : ℚ), (-615914499/1250000000 : ℚ), (106330951599/1000000000000 : ℚ), 4⟩,
    ⟨(240578731621/1000000000000 : ℚ), (-598518143/1000000000 : ℚ), (131551598189/1000000000000 : ℚ), 4⟩,
    ⟨(244150738087/1000000000000 : ℚ), (-674481257/1000000000 : ℚ), (37489776831/250000000000 : ℚ), 4⟩,
    ⟨(246957245559/1000000000000 : ℚ), (-7272509731/10000000000 : ℚ), (32583132591/200000000000 : ℚ), 4⟩,
    ⟨(31111300191/125000000000 : ℚ), (-3803491023/5000000000 : ℚ), (171207679573/1000000000000 : ℚ), 4⟩,
    ⟨(124937957947/500000000000 : ℚ), (-310780617/400000000 : ℚ), (175260946431/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-486851449/625000000 : ℚ), (175763515569/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (561868251703/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/4 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control827.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control827.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate827

namespace DiagonalRamsey.JointInheritedCertificate836
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(159470991681/1000000000000 : ℚ), (3236128792053/10000000000 : ℚ), (-12936759665701/250000000000 : ℚ), 12⟩,
    ⟨(16024786573/100000000000 : ℚ), (85825653013/2500000000 : ℚ), (-2786700818843/500000000000 : ℚ), 9⟩,
    ⟨(40442939749/250000000000 : ℚ), (7093786459/625000000 : ℚ), (-93954072681/50000000000 : ℚ), 8⟩,
    ⟨(163984109113/1000000000000 : ℚ), (50885769319/10000000000 : ℚ), (-860725125969/1000000000000 : ℚ), 7⟩,
    ⟨(166799896709/1000000000000 : ℚ), (3184752033/1250000000 : ℚ), (-220536503883/500000000000 : ℚ), 6⟩,
    ⟨(170110912643/1000000000000 : ℚ), (12818153621/10000000000 : ℚ), (-228071525817/1000000000000 : ℚ), 6⟩,
    ⟨(10861869777/62500000000 : ℚ), (5654896811/10000000000 : ℚ), (-105030197173/1000000000000 : ℚ), 5⟩,
    ⟨(177695526023/1000000000000 : ℚ), (1232590189/10000000000 : ℚ), (-27380975849/1000000000000 : ℚ), 5⟩,
    ⟨(181677651029/1000000000000 : ℚ), (-1675558099/10000000000 : ℚ), (24836750949/1000000000000 : ℚ), 5⟩,
    ⟨(9279163031/50000000000 : ℚ), (-3678310107/10000000000 : ℚ), (3849554619/62500000000 : ℚ), 5⟩,
    ⟨(189262264409/1000000000000 : ℚ), (-2550848431/5000000000 : ℚ), (11032442077/125000000000 : ℚ), 4⟩,
    ⟨(24071660043/125000000000 : ℚ), (-6129710861/10000000000 : ℚ), (10788071629/100000000000 : ℚ), 4⟩,
    ⟨(195389067939/1000000000000 : ℚ), (-343478363/500000000 : ℚ), (122230062679/1000000000000 : ℚ), 4⟩,
    ⟨(24700177257/125000000000 : ℚ), (-3692252927/5000000000 : ℚ), (132347408717/1000000000000 : ℚ), 4⟩,
    ⟨(99562655661/500000000000 : ℚ), (-1927839863/2500000000 : ℚ), (138830722733/1000000000000 : ℚ), 4⟩,
    ⟨(49975546343/250000000000 : ℚ), (-1967582861/2500000000 : ℚ), (28400480173/200000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-1578001047/2000000000 : ℚ), (142395780401/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (799999/1000000 : ℚ)
  x := (308727238567/500000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control836.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control836.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate836

namespace DiagonalRamsey.JointInheritedCertificate851
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120402057289/1000000000000 : ℚ), (95367842533/1250000000 : ℚ), (-4627107880907/500000000000 : ℚ), 10⟩,
    ⟨(61316605541/500000000000 : ℚ), (35606206739/5000000000 : ℚ), (-112118437523/125000000000 : ℚ), 7⟩,
    ⟨(126755845727/1000000000000 : ℚ), (17203860563/10000000000 : ℚ), (-227020994733/1000000000000 : ℚ), 6⟩,
    ⟨(8258895467/62500000000 : ℚ), (173314201/625000000 : ℚ), (-8197251963/200000000000 : ℚ), 5⟩,
    ⟨(1379726133/10000000000 : ℚ), (-2992249103/10000000000 : ℚ), (18329722167/500000000000 : ℚ), 5⟩,
    ⟨(71679547523/500000000000 : ℚ), (-2900070573/5000000000 : ℚ), (38047291407/500000000000 : ℚ), 5⟩,
    ⟨(147481729691/1000000000000 : ℚ), (-1451665709/2000000000 : ℚ), (12160678483/125000000000 : ℚ), 4⟩,
    ⟨(149712883483/1000000000000 : ℚ), (-1975663659/2500000000 : ℚ), (13357303779/125000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-1994996319/2500000000 : ℚ), (108017276913/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (812499/1000000 : ℚ)
  x := (674145369009/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control851.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control851.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate851

namespace DiagonalRamsey.JointInheritedCertificate852
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(160850274921/1000000000000 : ℚ), (1584129554551/5000000000 : ℚ), (-399171441879/7812500000 : ℚ), 12⟩,
    ⟨(161600710393/1000000000000 : ℚ), (6722984831/200000000 : ℚ), (-2750088757131/500000000000 : ℚ), 9⟩,
    ⟨(163072742521/1000000000000 : ℚ), (111103541953/10000000000 : ℚ), (-926133708297/500000000000 : ℚ), 8⟩,
    ⟨(82604900969/500000000000 : ℚ), (24878052251/5000000000 : ℚ), (-211680657683/250000000000 : ℚ), 7⟩,
    ⟨(20991220331/125000000000 : ℚ), (24847958517/10000000000 : ℚ), (-108092329693/250000000000 : ℚ), 6⟩,
    ⟨(85564049043/500000000000 : ℚ), (12428829909/10000000000 : ℚ), (-44415204723/200000000000 : ℚ), 6⟩,
    ⟨(34936379603/200000000000 : ℚ), (2698486941/5000000000 : ℚ), (-50307979793/500000000000 : ℚ), 5⟩,
    ⟨(89227295949/500000000000 : ℚ), (131608589/1250000000 : ℚ), (-2997351189/125000000000 : ℚ), 5⟩,
    ⟨(182301197223/1000000000000 : ℚ), (-902844269/5000000000 : ℚ), (13773706151/500000000000 : ℚ), 5⟩,
    ⟨(37214778221/200000000000 : ℚ), (-188774601/500000000 : ℚ), (2552371833/40000000000 : ℚ), 5⟩,
    ⟨(94813845517/500000000000 : ℚ), (-1035257297/2000000000 : ℚ), (5632065307/62500000000 : ℚ), 5⟩,
    ⟨(24103253309/125000000000 : ℚ), (-6188563501/10000000000 : ℚ), (109465346191/1000000000000 : ℚ), 4⟩,
    ⟨(97772993591/500000000000 : ℚ), (-691749409/1000000000 : ℚ), (123617811571/1000000000000 : ℚ), 4⟩,
    ⟨(197683046599/1000000000000 : ℚ), (-7425080829/10000000000 : ℚ), (2671936021/20000000000 : ℚ), 4⟩,
    ⟨(24894384841/125000000000 : ℚ), (-3873699063/5000000000 : ℚ), (139991940571/1000000000000 : ℚ), 4⟩,
    ⟨(199905514199/1000000000000 : ℚ), (-1976051361/2500000000 : ℚ), (143120691639/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-7923613373/10000000000 : ℚ), (143508758477/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (812499/1000000 : ℚ)
  x := (157104892381/250000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem row9 : JointControlDomain.rowCheck data (data.tangents.get ⟨9, by decide⟩) = true := by decide +kernel
theorem row10 : JointControlDomain.rowCheck data (data.tangents.get ⟨10, by decide⟩) = true := by decide +kernel
theorem row11 : JointControlDomain.rowCheck data (data.tangents.get ⟨11, by decide⟩) = true := by decide +kernel
theorem row12 : JointControlDomain.rowCheck data (data.tangents.get ⟨12, by decide⟩) = true := by decide +kernel
theorem row13 : JointControlDomain.rowCheck data (data.tangents.get ⟨13, by decide⟩) = true := by decide +kernel
theorem row14 : JointControlDomain.rowCheck data (data.tangents.get ⟨14, by decide⟩) = true := by decide +kernel
theorem row15 : JointControlDomain.rowCheck data (data.tangents.get ⟨15, by decide⟩) = true := by decide +kernel
theorem row16 : JointControlDomain.rowCheck data (data.tangents.get ⟨16, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
  · exact row9
  · exact row10
  · exact row11
  · exact row12
  · exact row13
  · exact row14
  · exact row15
  · exact row16
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control852.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control852.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate852

namespace DiagonalRamsey.JointInheritedCertificate858
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4860886621/40000000000 : ℚ), (373606559137/5000000000 : ℚ), (-9144536966887/1000000000000 : ℚ), 10⟩,
    ⟨(24733776651/200000000000 : ℚ), (6970444159/1000000000 : ℚ), (-110532490929/125000000000 : ℚ), 7⟩,
    ⟨(127635500401/1000000000000 : ℚ), (4186519029/2500000000 : ℚ), (-44431064159/200000000000 : ℚ), 6⟩,
    ⟨(132818135459/1000000000000 : ℚ), (1287670127/5000000000 : ℚ), (-19171020119/500000000000 : ℚ), 5⟩,
    ⟨(138427779223/1000000000000 : ℚ), (-386726697/1250000000 : ℚ), (1198067111/31250000000 : ℚ), 5⟩,
    ⟨(143610414281/1000000000000 : ℚ), (-1171633969/2000000000 : ℚ), (77261953151/1000000000000 : ℚ), 5⟩,
    ⟨(147577031427/1000000000000 : ℚ), (-56994233/78125000 : ℚ), (19634342817/200000000000 : ℚ), 5⟩,
    ⟨(149723749157/1000000000000 : ℚ), (-7930793123/10000000000 : ℚ), (2152349719/20000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-400354829/500000000 : ℚ), (10876098123/100000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (685535131577/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control858.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control858.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate858

namespace DiagonalRamsey.JointInheritedCertificate866
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(61354316883/500000000000 : ℚ), (365659185357/5000000000 : ℚ), (-4517073739847/500000000000 : ℚ), 11⟩,
    ⟨(3119147827/25000000000 : ℚ), (68181553111/10000000000 : ℚ), (-174302499263/200000000000 : ℚ), 7⟩,
    ⟨(64283634791/500000000000 : ℚ), (3257031691/2000000000 : ℚ), (-43456545939/200000000000 : ℚ), 6⟩,
    ⟨(133533981203/1000000000000 : ℚ), (1188790159/5000000000 : ℚ), (-17853334271/500000000000 : ℚ), 5⟩,
    ⟨(138909911123/1000000000000 : ℚ), (-3194286219/10000000000 : ℚ), (40000148917/1000000000000 : ℚ), 5⟩,
    ⟨(17984577843/125000000000 : ℚ), (-5914548029/10000000000 : ℚ), (78407403/1000000000 : ℚ), 5⟩,
    ⟨(29535595849/200000000000 : ℚ), (-3665122287/5000000000 : ℚ), (99032442701/1000000000000 : ℚ), 5⟩,
    ⟨(149735258559/1000000000000 : ℚ), (-7956843117/10000000000 : ℚ), (108349037547/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-4016051277/5000000000 : ℚ), (4379077217/40000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (87118940301/125000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control866.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control866.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate866

namespace DiagonalRamsey.JointInheritedCertificate879
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(62614233783/500000000000 : ℚ), (696181975973/10000000000 : ℚ), (-1096268734767/125000000000 : ℚ), 11⟩,
    ⟨(63547898313/500000000000 : ℚ), (4048653931/625000000 : ℚ), (-210310506017/250000000000 : ℚ), 8⟩,
    ⟨(130546170823/1000000000000 : ℚ), (1524381903/1000000000 : ℚ), (-25729358049/125000000000 : ℚ), 7⟩,
    ⟨(27010860393/200000000000 : ℚ), (15052537/78125000 : ℚ), (-7394044141/250000000000 : ℚ), 6⟩,
    ⟨(2798677359/20000000000 : ℚ), (-53520191/156250000 : ℚ), (43842166273/1000000000000 : ℚ), 5⟩,
    ⟨(36110499773/250000000000 : ℚ), (-3022775271/5000000000 : ℚ), (81050884343/1000000000000 : ℚ), 5⟩,
    ⟨(147892373289/1000000000000 : ℚ), (-1482533223/2000000000 : ℚ), (101022674039/1000000000000 : ℚ), 5⟩,
    ⟨(149759702349/1000000000000 : ℚ), (-501185871/625000000 : ℚ), (110044950297/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-2022965383/2500000000 : ℚ), (55568693187/500000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (862499/1000000 : ℚ)
  x := (359948807437/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control879.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control879.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate879

namespace DiagonalRamsey.JointInheritedCertificate886
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(84242055207/1000000000000 : ℚ), (669369039603/10000000000 : ℚ), (-567083130571/100000000000 : ℚ), 11⟩,
    ⟨(85429921493/1000000000000 : ℚ), (3106944769/500000000 : ℚ), (-108395106497/200000000000 : ℚ), 8⟩,
    ⟨(87624812191/1000000000000 : ℚ), (14437424593/10000000000 : ℚ), (-65440837459/500000000000 : ℚ), 7⟩,
    ⟨(9049257509/100000000000 : ℚ), (316476891/2000000000 : ℚ), (-16759420261/1000000000000 : ℚ), 6⟩,
    ⟨(93596619283/1000000000000 : ℚ), (-3601814919/10000000000 : ℚ), (30854874883/1000000000000 : ℚ), 6⟩,
    ⟨(96464382181/1000000000000 : ℚ), (-6150247783/10000000000 : ℚ), (550431883/10000000000 : ℚ), 5⟩,
    ⟨(1233240911/12500000000 : ℚ), (-3742469773/5000000000 : ℚ), (13611592547/200000000000 : ℚ), 5⟩,
    ⟨(49923569583/500000000000 : ℚ), (-8078425449/10000000000 : ℚ), (73947787227/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-407492317/500000000 : ℚ), (74661448967/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (874999/1000000 : ℚ)
  x := (779150949953/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control886.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control886.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate886

namespace DiagonalRamsey.JointInheritedCertificate891
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(85220301917/1000000000000 : ℚ), (81244113559/1250000000 : ℚ), (-43499947147/7812500000 : ℚ), 11⟩,
    ⟨(17266885191/200000000000 : ℚ), (30120171063/5000000000 : ℚ), (-8284598819/15625000000 : ℚ), 8⟩,
    ⟨(11049132343/125000000000 : ℚ), (2770300563/2000000000 : ℚ), (-63225960329/500000000000 : ℚ), 7⟩,
    ⟨(18216558421/200000000000 : ℚ), (663883663/5000000000 : ℚ), (-14397774537/1000000000000 : ℚ), 6⟩,
    ⟨(23498534629/250000000000 : ℚ), (-3731817281/10000000000 : ℚ), (32328340857/1000000000000 : ℚ), 6⟩,
    ⟨(96683871877/1000000000000 : ℚ), (-6223010643/10000000000 : ℚ), (28026051129/500000000000 : ℚ), 6⟩,
    ⟨(49371252333/500000000000 : ℚ), (-3764827477/5000000000 : ℚ), (68813598769/1000000000000 : ℚ), 6⟩,
    ⟨(99856628703/1000000000000 : ℚ), (-101391909/125000000 : ℚ), (74589181417/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-255668501/312500000 : ℚ), (7528907127/100000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (887499/1000000 : ℚ)
  x := (791045004883/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control891.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control891.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate891

namespace DiagonalRamsey.JointInheritedCertificate897
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(86308767127/1000000000000 : ℚ), (25274621161/400000000 : ℚ), (-27399195023/5000000000 : ℚ), 12⟩,
    ⟨(43670420209/500000000000 : ℚ), (292470679/50000000 : ℚ), (-260061184269/500000000000 : ℚ), 9⟩,
    ⟨(89247863197/1000000000000 : ℚ), (13323789797/10000000000 : ℚ), (-122652727503/1000000000000 : ℚ), 7⟩,
    ⟨(18347901707/200000000000 : ℚ), (1105547281/10000000000 : ℚ), (-1238426361/100000000000 : ℚ), 7⟩,
    ⟨(94436446013/1000000000000 : ℚ), (-3839732327/10000000000 : ℚ), (33564959171/1000000000000 : ℚ), 6⟩,
    ⟨(96928091351/1000000000000 : ℚ), (-1569613421/2500000000 : ℚ), (56874759151/1000000000000 : ℚ), 6⟩,
    ⟨(9883511413/100000000000 : ℚ), (-755928837/1000000000 : ℚ), (69406222223/1000000000000 : ℚ), 6⟩,
    ⟨(99867187421/1000000000000 : ℚ), (-4065043751/5000000000 : ℚ), (37538294709/500000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-1024855821/1250000000 : ℚ), (75763722399/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (401478176019/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control897.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control897.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate897

namespace DiagonalRamsey.JointInheritedCertificate902
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(43825780187/1000000000000 : ℚ), (623086515351/10000000000 : ℚ), (-2742835521907/1000000000000 : ℚ), 12⟩,
    ⟨(22145602787/500000000000 : ℚ), (57839849597/10000000000 : ℚ), (-65174412243/250000000000 : ℚ), 9⟩,
    ⟨(45151199553/1000000000000 : ℚ), (13224082937/10000000000 : ℚ), (-61775226371/1000000000000 : ℚ), 8⟩,
    ⟨(9254967167/200000000000 : ℚ), (280537/2500000 : ℚ), (-329341289/50000000000 : ℚ), 7⟩,
    ⟨(47491050983/1000000000000 : ℚ), (-379067917/1000000000 : ℚ), (656313447/40000000000 : ℚ), 7⟩,
    ⟨(24307343633/500000000000 : ℚ), (-310964377/500000000 : ℚ), (14033532067/500000000000 : ℚ), 6⟩,
    ⟨(12368670311/250000000000 : ℚ), (-3748343853/5000000000 : ℚ), (17164772339/500000000000 : ℚ), 6⟩,
    ⟨(6242513329/125000000000 : ℚ), (-4033160073/5000000000 : ℚ), (37160775259/1000000000000 : ℚ), 6⟩,
    ⟨(1/20 : ℚ), (-8134950641/10000000000 : ℚ), (9375930431/250000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (912499/1000000 : ℚ)
  x := (215907473701/250000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control902.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control902.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate902

namespace DiagonalRamsey.JointInheritedCertificate903
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(2732739073/31250000000 : ℚ), (152796734063/2500000000 : ℚ), (-5368068737963/1000000000000 : ℚ), 12⟩,
    ⟨(88393872269/1000000000000 : ℚ), (28234180719/5000000000 : ℚ), (-101481780121/200000000000 : ℚ), 9⟩,
    ⟨(90142262423/1000000000000 : ℚ), (12700737873/10000000000 : ℚ), (-117910015871/1000000000000 : ℚ), 8⟩,
    ⟨(46213322123/500000000000 : ℚ), (837997463/10000000000 : ℚ), (-9887277281/1000000000000 : ℚ), 7⟩,
    ⟨(94899241313/1000000000000 : ℚ), (-3973096849/10000000000 : ℚ), (35098872993/1000000000000 : ℚ), 6⟩,
    ⟨(3036988223/31250000000 : ℚ), (-198436597/312500000 : ℚ), (1447623811/25000000000 : ℚ), 6⟩,
    ⟨(9893201329/100000000000 : ℚ), (-304015001/400000000 : ℚ), (70161198813/1000000000000 : ℚ), 6⟩,
    ⟨(49939117611/500000000000 : ℚ), (-101979181/125000000 : ℚ), (18926769799/250000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-2056396487/2500000000 : ℚ), (76379183469/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (912499/1000000 : ℚ)
  x := (407453254591/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control903.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control903.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate903

namespace DiagonalRamsey.JointInheritedCertificate909
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(44500976759/1000000000000 : ℚ), (152315720539/2500000000 : ℚ), (-68050551821/25000000000 : ℚ), 12⟩,
    ⟨(44915504441/1000000000000 : ℚ), (14144660339/2500000000 : ℚ), (-25825452181/100000000000 : ℚ), 9⟩,
    ⟨(45681451721/1000000000000 : ℚ), (12879460489/10000000000 : ℚ), (-760385627/12500000000 : ℚ), 8⟩,
    ⟨(46682210071/1000000000000 : ℚ), (500305167/5000000000 : ℚ), (-3044197267/500000000000 : ℚ), 7⟩,
    ⟨(47765423103/1000000000000 : ℚ), (-957666359/2500000000 : ℚ), (16693412637/1000000000000 : ℚ), 7⟩,
    ⟨(48766181453/1000000000000 : ℚ), (-6221951299/10000000000 : ℚ), (5645115489/200000000000 : ℚ), 7⟩,
    ⟨(49532128733/1000000000000 : ℚ), (-7480712253/10000000000 : ℚ), (6882020501/200000000000 : ℚ), 7⟩,
    ⟨(24973328207/500000000000 : ℚ), (-2010582557/2500000000 : ℚ), (37203325299/1000000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-811001119/1000000000 : ℚ), (9385387293/250000000000 : ℚ), 7⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (924999/1000000 : ℚ)
  x := (437936682329/500000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control909.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control909.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate909

namespace DiagonalRamsey.JointInheritedCertificate912
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(22603833303/500000000000 : ℚ), (592158961557/10000000000 : ℚ), (-268629736033/100000000000 : ℚ), 13⟩,
    ⟨(45568922553/1000000000000 : ℚ), (27482799431/5000000000 : ℚ), (-254154535007/1000000000000 : ℚ), 10⟩,
    ⟨(5779554563/125000000000 : ℚ), (12416361241/10000000000 : ℚ), (-59288856071/1000000000000 : ℚ), 9⟩,
    ⟨(47108585511/1000000000000 : ℚ), (823894423/10000000000 : ℚ), (-5282592203/1000000000000 : ℚ), 8⟩,
    ⟨(24026296397/500000000000 : ℚ), (-3900722271/10000000000 : ℚ), (2146134983/125000000000 : ℚ), 7⟩,
    ⟨(48924741801/1000000000000 : ℚ), (-6242891987/10000000000 : ℚ), (28517803307/1000000000000 : ℚ), 7⟩,
    ⟨(6199031969/125000000000 : ℚ), (-1869306581/2500000000 : ℚ), (8649023487/250000000000 : ℚ), 7⟩,
    ⟨(49953511699/1000000000000 : ℚ), (-8028406651/10000000000 : ℚ), (18669640471/500000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-2023713649/2500000000 : ℚ), (18835682927/500000000000 : ℚ), 7⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (937499/1000000 : ℚ)
  x := (888143401773/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

select_control_data data from witness
theorem row0 : JointControlDomain.rowCheck data (data.tangents.get ⟨0, by decide⟩) = true := by decide +kernel
theorem row1 : JointControlDomain.rowCheck data (data.tangents.get ⟨1, by decide⟩) = true := by decide +kernel
theorem row2 : JointControlDomain.rowCheck data (data.tangents.get ⟨2, by decide⟩) = true := by decide +kernel
theorem row3 : JointControlDomain.rowCheck data (data.tangents.get ⟨3, by decide⟩) = true := by decide +kernel
theorem row4 : JointControlDomain.rowCheck data (data.tangents.get ⟨4, by decide⟩) = true := by decide +kernel
theorem row5 : JointControlDomain.rowCheck data (data.tangents.get ⟨5, by decide⟩) = true := by decide +kernel
theorem row6 : JointControlDomain.rowCheck data (data.tangents.get ⟨6, by decide⟩) = true := by decide +kernel
theorem row7 : JointControlDomain.rowCheck data (data.tangents.get ⟨7, by decide⟩) = true := by decide +kernel
theorem row8 : JointControlDomain.rowCheck data (data.tangents.get ⟨8, by decide⟩) = true := by decide +kernel
theorem check0 : ControlCertificate.parameters data := by decide +kernel
theorem check1 : 0 < data.tangents.length := by decide +kernel
theorem check2 : data.tangents.all (JointControlDomain.rowCheck data) = true := by
  apply List.all_eq_true.mpr
  rw [List.forall_mem_iff_get]
  intro i
  fin_cases i
  · exact row0
  · exact row1
  · exact row2
  · exact row3
  · exact row4
  · exact row5
  · exact row6
  · exact row7
  · exact row8
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control912.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control912.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate912
