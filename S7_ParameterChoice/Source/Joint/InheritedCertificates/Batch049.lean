import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control422
namespace DiagonalRamsey.JointInheritedCertificate422
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(144054202057/500000000000 : ℚ), (8365058304979/5000000000 : ℚ), (-482781483617367/1000000000000 : ℚ), 12⟩,
    ⟨(72185778867/250000000000 : ℚ), (1830455472927/10000000000 : ℚ), (-2666783236027/50000000000 : ℚ), 9⟩,
    ⟨(290006425559/1000000000000 : ℚ), (642359415789/10000000000 : ℚ), (-18979837159379/1000000000000 : ℚ), 7⟩,
    ⟨(14594308401/50000000000 : ℚ), (158394799937/5000000000 : ℚ), (-1189281182181/125000000000 : ℚ), 6⟩,
    ⟨(294364239903/1000000000000 : ℚ), (9189998327/500000000 : ℚ), (-2809356639553/500000000000 : ℚ), 6⟩,
    ⟨(297416776021/1000000000000 : ℚ), (117102769967/10000000000 : ℚ), (-3646550718043/1000000000000 : ℚ), 5⟩,
    ⟨(9406699337/31250000000 : ℚ), (79160514267/10000000000 : ℚ), (-1256003778319/500000000000 : ℚ), 5⟩,
    ⟨(30512240131/100000000000 : ℚ), (55649843199/10000000000 : ℚ), (-1799924768007/1000000000000 : ℚ), 4⟩,
    ⟨(61940256219/200000000000 : ℚ), (40151273019/10000000000 : ℚ), (-82735526179/62500000000 : ℚ), 4⟩,
    ⟨(157353460513/500000000000 : ℚ), (2944298871/1000000000 : ℚ), (-61852683939/62500000000 : ℚ), 4⟩,
    ⟨(80022778513/250000000000 : ℚ), (21765991617/10000000000 : ℚ), (-9326339321/12500000000 : ℚ), 4⟩,
    ⟨(325802007453/1000000000000 : ℚ), (16095284807/10000000000 : ℚ), (-14076644053/25000000000 : ℚ), 3⟩,
    ⟨(331784602201/1000000000000 : ℚ), (1180178201/1000000000 : ℚ), (-84392806519/200000000000 : ℚ), 3⟩,
    ⟨(337981282641/1000000000000 : ℚ), (4241366703/5000000000 : ℚ), (-155431148691/500000000000 : ℚ), 3⟩,
    ⟨(6886647427/20000000000 : ℚ), (1467780771/2500000000 : ℚ), (-221800101409/1000000000000 : ℚ), 3⟩,
    ⟨(2806213631/8000000000 : ℚ), (756932329/2000000000 : ℚ), (-5972384769/40000000000 : ℚ), 3⟩,
    ⟨(44656527221/125000000000 : ℚ), (2095778017/10000000000 : ℚ), (-44769700637/500000000000 : ℚ), 3⟩,
    ⟨(90924137573/250000000000 : ℚ), (356644833/5000000000 : ℚ), (-19858996883/500000000000 : ℚ), 3⟩,
    ⟨(185023819501/500000000000 : ℚ), (-3352833/78125000 : ℚ), (1092652283/500000000000 : ℚ), 3⟩,
    ⟨(376244319441/1000000000000 : ℚ), (-1380620991/10000000000 : ℚ), (37681235531/1000000000000 : ℚ), 3⟩,
    ⟨(38222691419/100000000000 : ℚ), (-217780473/1000000000 : ℚ), (2716318693/40000000000 : ℚ), 3⟩,
    ⟨(38793780759/100000000000 : ℚ), (-2848506971/10000000000 : ℚ), (18746347159/200000000000 : ℚ), 3⟩,
    ⟨(393322000617/1000000000000 : ℚ), (-3413950323/10000000000 : ℚ), (115816985093/1000000000000 : ℚ), 2⟩,
    ⟨(398327640547/1000000000000 : ℚ), (-3890449161/10000000000 : ℚ), (33669042369/250000000000 : ℚ), 2⟩,
    ⟨(402906520333/1000000000000 : ℚ), (-4290600751/10000000000 : ℚ), (75352857021/500000000000 : ℚ), 2⟩,
    ⟨(203507271429/500000000000 : ℚ), (-4624150137/10000000000 : ℚ), (41053093533/250000000000 : ℚ), 2⟩,
    ⟨(410612145621/1000000000000 : ℚ), (-97972499/200000000 : ℚ), (175432803391/1000000000000 : ℚ), 2⟩,
    ⟨(20683234087/50000000000 : ℚ), (-2559902421/5000000000 : ℚ), (184548215233/1000000000000 : ℚ), 2⟩,
    ⟨(416142753623/1000000000000 : ℚ), (-330754347/625000000 : ℚ), (191695412207/1000000000000 : ℚ), 2⟩,
    ⟨(104505624021/250000000000 : ℚ), (-2709327857/5000000000 : ℚ), (6155470233/31250000000 : ℚ), 2⟩,
    ⟨(209642903087/500000000000 : ℚ), (-1375460751/2500000000 : ℚ), (200457702249/1000000000000 : ℚ), 2⟩,
    ⟨(52490064691/125000000000 : ℚ), (-2165267/3906250 : ℚ), (101094082713/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2774111111/5000000000 : ℚ), (202403970481/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (140966386539/500000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data := by decide +kernel
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control422.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control422.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate422

-- Control423
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
theorem check3 : ControlCertificate.GeometryChecks data := by decide +kernel
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
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

-- Control424
namespace DiagonalRamsey.JointInheritedCertificate424
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(21079007321/500000000000 : ℚ), (2421037224503/10000000000 : ℚ), (-10263302552523/1000000000000 : ℚ), 9⟩,
    ⟨(21374579813/500000000000 : ℚ), (27828132801/1250000000 : ℚ), (-242761237277/250000000000 : ℚ), 6⟩,
    ⟨(43841453129/1000000000000 : ℚ), (49769601119/10000000000 : ℚ), (-112821384209/500000000000 : ℚ), 5⟩,
    ⟨(45268603367/1000000000000 : ℚ), (3040835213/10000000000 : ℚ), (-9048483131/500000000000 : ℚ), 4⟩,
    ⟨(46813339653/1000000000000 : ℚ), (-7954737017/5000000000 : ℚ), (34482691291/500000000000 : ℚ), 4⟩,
    ⟨(48240489891/1000000000000 : ℚ), (-25280058413/10000000000 : ℚ), (28361827297/250000000000 : ℚ), 3⟩,
    ⟨(24666391697/500000000000 : ℚ), (-30204700367/10000000000 : ℚ), (68730357787/500000000000 : ℚ), 3⟩,
    ⟨(24961964189/500000000000 : ℚ), (-6479198923/2000000000 : ℚ), (148334435929/1000000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-32659641453/10000000000 : ℚ), (1496516649/10000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (109405909053/250000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data := by decide +kernel
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control424.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control424.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate424

-- Control425
namespace DiagonalRamsey.JointInheritedCertificate425
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(84379814979/1000000000000 : ℚ), (400017535659/400000000 : ℚ), (-5284289539407/62500000000 : ℚ), 11⟩,
    ⟨(10584903511/125000000000 : ℚ), (1059320535697/10000000000 : ℚ), (-4527126188369/500000000000 : ℚ), 8⟩,
    ⟨(21316637007/250000000000 : ℚ), (21727441239/625000000 : ℚ), (-1506853040933/500000000000 : ℚ), 7⟩,
    ⟨(10764900553/125000000000 : ℚ), (15307707453/1000000000 : ℚ), (-1348240595831/1000000000000 : ℚ), 6⟩,
    ⟨(87204430169/1000000000000 : ℚ), (73758871/10000000 : ℚ), (-165384727197/250000000000 : ℚ), 5⟩,
    ⟨(17696104129/200000000000 : ℚ), (4250194109/1250000000 : ℚ), (-312613663587/1000000000000 : ℚ), 5⟩,
    ⟨(89898436411/1000000000000 : ℚ), (11345479143/10000000000 : ℚ), (-55351601673/500000000000 : ℚ), 4⟩,
    ⟨(91403687759/1000000000000 : ℚ), (-86075119/312500000 : ℚ), (17029680073/1000000000000 : ℚ), 4⟩,
    ⟨(3717537149/40000000000 : ℚ), (-12106927783/10000000000 : ℚ), (103187075177/1000000000000 : ℚ), 4⟩,
    ⟨(47221840037/500000000000 : ℚ), (-18604300769/10000000000 : ℚ), (164036710849/1000000000000 : ℚ), 4⟩,
    ⟨(299567487/3125000000 : ℚ), (-11630427833/5000000000 : ℚ), (104165911659/500000000000 : ℚ), 4⟩,
    ⟨(19427537263/200000000000 : ℚ), (-26649326833/10000000000 : ℚ), (241023794301/1000000000000 : ℚ), 3⟩,
    ⟨(4911145603/50000000000 : ℚ), (-14551728691/5000000000 : ℚ), (132496387919/500000000000 : ℚ), 3⟩,
    ⟨(12384446057/125000000000 : ℚ), (-1926248879/625000000 : ℚ), (17620311819/62500000000 : ℚ), 3⟩,
    ⟨(24915722099/250000000000 : ℚ), (-6382669319/2000000000 : ℚ), (292789342599/1000000000000 : ℚ), 3⟩,
    ⟨(49981150753/500000000000 : ℚ), (-4055778491/1250000000 : ℚ), (149054065179/500000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-32512226037/10000000000 : ℚ), (298767986971/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (171821284579/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data := by decide +kernel
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control425.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control425.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate425

-- Control426
namespace DiagonalRamsey.JointInheritedCertificate426
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(229866779961/500000000000 : ℚ), (57173753966709/10000000000 : ℚ), (-1314983875581143/500000000000 : ℚ), 14⟩,
    ⟨(230011463891/500000000000 : ℚ), (632214881489/1000000000 : ℚ), (-36484756790593/125000000000 : ℚ), 10⟩,
    ⟨(46060096639/100000000000 : ℚ), (564455749301/2500000000 : ℚ), (-4193237440869/40000000000 : ℚ), 9⟩,
    ⟨(288416427/625000000 : ℚ), (284953360963/2500000000 : ℚ), (-26648810646667/500000000000 : ℚ), 8⟩,
    ⟨(462616793589/1000000000000 : ℚ), (136146591297/2000000000 : ℚ), (-32090580318173/1000000000000 : ℚ), 7⟩,
    ⟨(3712397807/8000000000 : ℚ), (448997265147/10000000000 : ℚ), (-1334731358137/62500000000 : ℚ), 7⟩,
    ⟨(465761627999/1000000000000 : ℚ), (316167999667/10000000000 : ℚ), (-15181653125977/1000000000000 : ℚ), 6⟩,
    ⟨(2923427349/6250000000 : ℚ), (23316237639/1000000000 : ℚ), (-5654053367519/500000000000 : ℚ), 6⟩,
    ⟨(117501295787/250000000000 : ℚ), (88970901489/5000000000 : ℚ), (-8719459430743/1000000000000 : ℚ), 6⟩,
    ⟨(18901064523/40000000000 : ℚ), (8713807663/625000000 : ℚ), (-6904459668547/1000000000000 : ℚ), 5⟩,
    ⟨(237653295639/500000000000 : ℚ), (111531322089/10000000000 : ℚ), (-5582982083613/1000000000000 : ℚ), 5⟩,
    ⟨(7474037821/15625000000 : ℚ), (18145095551/2000000000 : ℚ), (-57388779259/12500000000 : ℚ), 5⟩,
    ⟨(120403699233/250000000000 : ℚ), (4676107677/625000000 : ℚ), (-956927696903/250000000000 : ℚ), 5⟩,
    ⟨(485127827363/1000000000000 : ℚ), (62402297211/10000000000 : ℚ), (-806923835813/250000000000 : ℚ), 4⟩,
    ⟨(1527715777/3125000000 : ℚ), (52542054239/10000000000 : ℚ), (-1373794863059/500000000000 : ℚ), 4⟩,
    ⟨(492829447833/1000000000000 : ℚ), (44592989023/10000000000 : ℚ), (-117873965757/50000000000 : ℚ), 4⟩,
    ⟨(248499741997/500000000000 : ℚ), (19050432753/5000000000 : ℚ), (-63632189923/31250000000 : ℚ), 4⟩,
    ⟨(25068455557/50000000000 : ℚ), (32737978643/10000000000 : ℚ), (-884284061317/500000000000 : ℚ), 4⟩,
    ⟨(63240975307/125000000000 : ℚ), (28263187309/10000000000 : ℚ), (-192904093637/125000000000 : ℚ), 4⟩,
    ⟨(63833071957/125000000000 : ℚ), (12247962529/5000000000 : ℚ), (-337943652671/250000000000 : ℚ), 3⟩,
    ⟨(257784009719/500000000000 : ℚ), (21298870719/10000000000 : ℚ), (-1187753761779/1000000000000 : ℚ), 3⟩,
    ⟨(260313160489/500000000000 : ℚ), (18566132839/10000000000 : ℚ), (-523096224801/500000000000 : ℚ), 3⟩,
    ⟨(262913647191/500000000000 : ℚ), (16215031391/10000000000 : ℚ), (-115399274829/125000000000 : ℚ), 3⟩,
    ⟨(531158410051/1000000000000 : ℚ), (3545069529/2500000000 : ℚ), (-407836922241/500000000000 : ℚ), 3⟩,
    ⟨(536606824861/1000000000000 : ℚ), (3102447003/2500000000 : ℚ), (-721163062143/1000000000000 : ℚ), 3⟩,
    ⟨(271079706551/500000000000 : ℚ), (10861620027/10000000000 : ℚ), (-637668193053/1000000000000 : ℚ), 3⟩,
    ⟨(68475349763/125000000000 : ℚ), (9501712219/10000000000 : ℚ), (-281782445067/500000000000 : ℚ), 3⟩,
    ⟨(553523384457/1000000000000 : ℚ), (4151092143/5000000000 : ℚ), (-19900763081/40000000000 : ℚ), 3⟩,
    ⟨(34956711923/62500000000 : ℚ), (724005079/1000000000 : ℚ), (-438426966777/1000000000000 : ℚ), 3⟩,
    ⟨(28257044143/50000000000 : ℚ), (314811773/500000000 : ℚ), (-77073812901/200000000000 : ℚ), 3⟩,
    ⟨(285504903669/500000000000 : ℚ), (1363702193/2500000000 : ℚ), (-337574547853/1000000000000 : ℚ), 3⟩,
    ⟨(576900025449/1000000000000 : ℚ), (470239291/1000000000 : ℚ), (-294393433723/1000000000000 : ℚ), 3⟩,
    ⟨(582797347143/1000000000000 : ℚ), (2013846731/5000000000 : ℚ), (-255274644923/1000000000000 : ℚ), 3⟩,
    ⟨(117737513051/200000000000 : ℚ), (3421127979/10000000000 : ℚ), (-54937147507/250000000000 : ℚ), 3⟩,
    ⟨(594556489733/1000000000000 : ℚ), (1437264609/5000000000 : ℚ), (-23426653313/125000000000 : ℚ), 2⟩,
    ⟨(4690546733/7812500000 : ℚ), (595226607/2500000000 : ℚ), (-157922832601/1000000000000 : ℚ), 2⟩,
    ⟨(121234797627/200000000000 : ℚ), (967126057/5000000000 : ℚ), (-65489452367/500000000000 : ℚ), 2⟩,
    ⟨(76486821811/125000000000 : ℚ), (1529384667/10000000000 : ℚ), (-26580682903/250000000000 : ℚ), 2⟩,
    ⟨(61753795949/100000000000 : ℚ), (1161819497/10000000000 : ℚ), (-20932325847/250000000000 : ℚ), 2⟩,
    ⟨(623090547731/1000000000000 : ℚ), (25864467/312500000 : ℚ), (-63002288121/1000000000000 : ℚ), 2⟩,
    ⟨(628538962541/1000000000000 : ℚ), (16360141/312500000 : ℚ), (-21984934029/500000000000 : ℚ), 2⟩,
    ⟨(63387007821/100000000000 : ℚ), (61610981/2500000000 : ℚ), (-13240636057/500000000000 : ℚ), 2⟩,
    ⟨(127814210323/200000000000 : ℚ), (-6169763/10000000000 : ℚ), (-5201938069/500000000000 : ℚ), 2⟩,
    ⟨(322064676577/500000000000 : ℚ), (-118294597/5000000000 : ℚ), (2189616729/500000000000 : ℚ), 2⟩,
    ⟨(81129099617/125000000000 : ℚ), (-446811653/10000000000 : ℚ), (17971313821/1000000000000 : ℚ), 2⟩,
    ⟨(653769570137/1000000000000 : ℚ), (-638595317/10000000000 : ℚ), (7615926027/250000000000 : ℚ), 2⟩,
    ⟨(658328261453/1000000000000 : ℚ), (-81348997/1000000000 : ℚ), (41937301979/1000000000000 : ℚ), 2⟩,
    ⟨(331348944299/500000000000 : ℚ), (-972863107/10000000000 : ℚ), (26231911019/500000000000 : ℚ), 2⟩,
    ⟨(666867924759/1000000000000 : ℚ), (-1117922169/10000000000 : ℚ), (15526717461/250000000000 : ℚ), 2⟩,
    ⟨(41926770247/62500000000 : ℚ), (-624866777/5000000000 : ℚ), (35461432101/500000000000 : ℚ), 2⟩,
    ⟨(674569545229/1000000000000 : ℚ), (-684619441/5000000000 : ℚ), (39480913801/500000000000 : ℚ), 2⟩,
    ⟨(678082575661/1000000000000 : ℚ), (-1477268953/10000000000 : ℚ), (431340337/5000000000 : ℚ), 2⟩,
    ⟨(42584934503/62500000000 : ℚ), (-196819467/1250000000 : ℚ), (92880763033/1000000000000 : ℚ), 2⟩,
    ⟨(136878156263/200000000000 : ℚ), (-1661742673/10000000000 : ℚ), (98834472501/1000000000000 : ℚ), 2⟩,
    ⟨(687170759517/1000000000000 : ℚ), (-869696769/5000000000 : ℚ), (104159569813/1000000000000 : ℚ), 2⟩,
    ⟨(137938437889/200000000000 : ℚ), (-45200001/250000000 : ℚ), (108882621589/1000000000000 : ℚ), 2⟩,
    ⟨(43246812297/62500000000 : ℚ), (-1867988347/10000000000 : ℚ), (22605342519/200000000000 : ℚ), 2⟩,
    ⟨(693935744593/1000000000000 : ℚ), (-1919724643/10000000000 : ℚ), (932893787/8000000000 : ℚ), 2⟩,
    ⟨(347823823359/500000000000 : ℚ), (-490879961/2500000000 : ℚ), (11965456737/100000000000 : ℚ), 2⟩,
    ⟨(174270144751/250000000000 : ℚ), (-999816779/5000000000 : ℚ), (4886775639/40000000000 : ℚ), 2⟩,
    ⟨(43639443087/62500000000 : ℚ), (-2028277359/10000000000 : ℚ), (12416773947/100000000000 : ℚ), 2⟩,
    ⟨(349548203101/500000000000 : ℚ), (-1024808719/5000000000 : ℚ), (2513173843/20000000000 : ℚ), 2⟩,
    ⟨(69967444481/100000000000 : ℚ), (-2063776671/10000000000 : ℚ), (63324483949/500000000000 : ℚ), 2⟩,
    ⟨(699963812671/1000000000000 : ℚ), (-2070836141/10000000000 : ℚ), (127143003067/1000000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-2071717633/10000000000 : ℚ), (127204705927/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (229460511279/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data := by decide +kernel
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control426.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control426.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate426

-- Control427
namespace DiagonalRamsey.JointInheritedCertificate427
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(269901040281/1000000000000 : ℚ), (11815517984987/10000000000 : ℚ), (-319600654433421/1000000000000 : ℚ), 12⟩,
    ⟨(270719619663/1000000000000 : ℚ), (1288999467331/10000000000 : ℚ), (-1104070662749/31250000000 : ℚ), 9⟩,
    ⟨(13617444753/50000000000 : ℚ), (18025752103/400000000 : ℚ), (-2517700849809/200000000000 : ℚ), 7⟩,
    ⟨(274773175659/1000000000000 : ℚ), (55343910479/2500000000 : ℚ), (-158068937073/25000000000 : ℚ), 6⟩,
    ⟨(277969114313/1000000000000 : ℚ), (127981151779/10000000000 : ℚ), (-3744078909387/1000000000000 : ℚ), 5⟩,
    ⟨(140952966193/500000000000 : ℚ), (81301536833/10000000000 : ℚ), (-2438560177143/1000000000000 : ℚ), 5⟩,
    ⟨(143272858083/500000000000 : ℚ), (6856569821/1250000000 : ℚ), (-1687488866211/1000000000000 : ℚ), 5⟩,
    ⟨(291843782001/1000000000000 : ℚ), (7707348269/2000000000 : ℚ), (-1216051276853/1000000000000 : ℚ), 4⟩,
    ⟨(297749106621/1000000000000 : ℚ), (27833128363/10000000000 : ℚ), (-225192935503/250000000000 : ℚ), 4⟩,
    ⟨(304204818519/1000000000000 : ℚ), (20475527181/10000000000 : ℚ), (-679496686837/1000000000000 : ℚ), 4⟩,
    ⟨(311148745663/1000000000000 : ℚ), (951781843/625000000 : ℚ), (-129543878201/250000000000 : ℚ), 3⟩,
    ⟨(159257007119/500000000000 : ℚ), (454937659/400000000 : ℚ), (-99221980747/250000000000 : ℚ), 3⟩,
    ⟨(326229692681/1000000000000 : ℚ), (211754441/250000000 : ℚ), (-151676605081/500000000000 : ℚ), 3⟩,
    ⟨(334221474791/1000000000000 : ℚ), (3118800579/5000000000 : ℚ), (-229669833879/1000000000000 : ℚ), 3⟩,
    ⟨(342412395337/1000000000000 : ℚ), (89796727/200000000 : ℚ), (-10660657071/62500000000 : ℚ), 3⟩,
    ⟨(350723571277/1000000000000 : ℚ), (775090599/2500000000 : ℚ), (-61219049049/500000000000 : ℚ), 3⟩,
    ⟨(89768740361/250000000000 : ℚ), (1980917903/10000000000 : ℚ), (-82725439843/1000000000000 : ℚ), 3⟩,
    ⟨(45923267173/125000000000 : ℚ), (534313713/5000000000 : ℚ), (-24800121109/500000000000 : ℚ), 3⟩,
    ⟨(37557705793/100000000000 : ℚ), (15894407/500000000 : ℚ), (-271505207/12500000000 : ℚ), 3⟩,
    ⟨(9589221001/25000000000 : ℚ), (-304888713/10000000000 : ℚ), (1912141441/1000000000000 : ℚ), 2⟩,
    ⟨(391284518483/1000000000000 : ℚ), (-412385353/5000000000 : ℚ), (22049168339/1000000000000 : ℚ), 2⟩,
    ⟨(398649787057/1000000000000 : ℚ), (-25213499/200000000 : ℚ), (9815671991/250000000000 : ℚ), 2⟩,
    ⟨(405593714201/1000000000000 : ℚ), (-1627008199/10000000000 : ℚ), (53991458797/1000000000000 : ℚ), 2⟩,
    ⟨(4120494261/10000000000 : ℚ), (-386964163/2000000000 : ℚ), (2662957533/40000000000 : ℚ), 2⟩,
    ⟨(417954750719/1000000000000 : ℚ), (-87705233/400000000 : ℚ), (9659008621/125000000000 : ℚ), 2⟩,
    ⟨(211626408277/500000000000 : ℚ), (-2407019901/10000000000 : ℚ), (43144346101/500000000000 : ℚ), 2⟩,
    ⟨(85578520067/200000000000 : ℚ), (-161441803/625000000 : ℚ), (3751218201/40000000000 : ℚ), 2⟩,
    ⟨(53978677301/125000000000 : ℚ), (-1362339039/5000000000 : ℚ), (99867460367/1000000000000 : ℚ), 2⟩,
    ⟨(435025357061/1000000000000 : ℚ), (-566960801/2000000000 : ℚ), (20928101719/200000000000 : ℚ), 2⟩,
    ⟨(437449637661/1000000000000 : ℚ), (-364454071/1250000000 : ℚ), (27041626943/250000000000 : ℚ), 2⟩,
    ⟨(439078913057/1000000000000 : ℚ), (-2968704391/10000000000 : ℚ), (5524622141/50000000000 : ℚ), 2⟩,
    ⟨(439897492439/1000000000000 : ℚ), (-46796897/156250000 : ℚ), (27912041011/250000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-374784683/1250000000 : ℚ), (55896146863/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (88207423723/250000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data := by decide +kernel
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control427.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control427.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate427

-- Control428
namespace DiagonalRamsey.JointInheritedCertificate428
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(138469671469/500000000000 : ℚ), (11916449058333/10000000000 : ℚ), (-41341331475383/125000000000 : ℚ), 12⟩,
    ⟨(69443043777/250000000000 : ℚ), (1300153785261/10000000000 : ℚ), (-36560966953093/1000000000000 : ℚ), 9⟩,
    ⟨(139714909409/500000000000 : ℚ), (454616527521/10000000000 : ℚ), (-6513636293529/500000000000 : ℚ), 7⟩,
    ⟨(140948155027/500000000000 : ℚ), (223370452917/10000000000 : ℚ), (-6543346568023/1000000000000 : ℚ), 6⟩,
    ⟨(71286973789/250000000000 : ℚ), (12916276299/1000000000 : ℚ), (-242180674993/62500000000 : ℚ), 5⟩,
    ⟨(4518019681/15625000000 : ℚ), (41036146473/5000000000 : ℚ), (-630984016601/250000000000 : ℚ), 5⟩,
    ⟨(146936914743/500000000000 : ℚ), (55387801271/10000000000 : ℚ), (-1746741757737/1000000000000 : ℚ), 5⟩,
    ⟨(74816035799/250000000000 : ℚ), (38924996879/10000000000 : ℚ), (-78682754011/62500000000 : ℚ), 4⟩,
    ⟨(61054457809/200000000000 : ℚ), (14061950289/5000000000 : ℚ), (-186541457569/200000000000 : ℚ), 4⟩,
    ⟨(38980050663/125000000000 : ℚ), (10349331417/5000000000 : ℚ), (-7037732223/10000000000 : ℚ), 4⟩,
    ⟨(19931577339/62500000000 : ℚ), (962692069/625000000 : ℚ), (-67110653299/125000000000 : ℚ), 3⟩,
    ⟨(40799843401/125000000000 : ℚ), (11512177957/10000000000 : ℚ), (-102857241839/250000000000 : ℚ), 3⟩,
    ⟨(167124384031/500000000000 : ℚ), (4290962733/5000000000 : ℚ), (-31469567827/100000000000 : ℚ), 3⟩,
    ⟨(342379699993/1000000000000 : ℚ), (253147049/400000000 : ℚ), (-47701639199/200000000000 : ℚ), 3⟩,
    ⟨(175356618841/500000000000 : ℚ), (456486497/1000000000 : ℚ), (-35483058213/200000000000 : ℚ), 3⟩,
    ⟨(179584562303/500000000000 : ℚ), (3162803633/10000000000 : ℚ), (-63836635977/500000000000 : ℚ), 3⟩,
    ⟨(7353318519/20000000000 : ℚ), (508350691/2500000000 : ℚ), (-1732913139/20000000000 : ℚ), 3⟩,
    ⟨(376121812873/1000000000000 : ℚ), (556592961/5000000000 : ℚ), (-10487133029/200000000000 : ℚ), 3⟩,
    ⟨(192227675281/500000000000 : ℚ), (178052699/5000000000 : ℚ), (-11826877867/500000000000 : ℚ), 3⟩,
    ⟨(392586282493/1000000000000 : ℚ), (-10870501/400000000 : ℚ), (733677627/1000000000000 : ℚ), 2⟩,
    ⟨(400436303347/1000000000000 : ℚ), (-795741287/10000000000 : ℚ), (21505311721/1000000000000 : ℚ), 2⟩,
    ⟨(407929813131/1000000000000 : ℚ), (-308736457/2500000000 : ℚ), (2453366153/62500000000 : ℚ), 2⟩,
    ⟨(414994645251/1000000000000 : ℚ), (-1603937339/10000000000 : ℚ), (54434116013/1000000000000 : ℚ), 2⟩,
    ⟨(42156276151/100000000000 : ℚ), (-956943811/5000000000 : ℚ), (33698534339/500000000000 : ℚ), 2⟩,
    ⟨(427570907359/1000000000000 : ℚ), (-434682123/2000000000 : ℚ), (78414486723/1000000000000 : ℚ), 2⟩,
    ⟨(432961221069/1000000000000 : ℚ), (-298645481/1250000000 : ℚ), (876969353/10000000000 : ℚ), 2⟩,
    ⟨(109420447743/250000000000 : ℚ), (-2566287967/10000000000 : ℚ), (19081423623/200000000000 : ℚ), 2⟩,
    ⟨(441687155399/1000000000000 : ℚ), (-677182557/2500000000 : ℚ), (50834926833/500000000000 : ℚ), 2⟩,
    ⟨(444938740501/1000000000000 : ℚ), (-70487079/250000000 : ℚ), (53289780209/500000000000 : ℚ), 2⟩,
    ⟨(447405231737/1000000000000 : ℚ), (-580151957/2000000000 : ℚ), (110205848629/1000000000000 : ℚ), 2⟩,
    ⟨(56132859431/125000000000 : ℚ), (-2954120029/10000000000 : ℚ), (112597622751/1000000000000 : ℚ), 2⟩,
    ⟨(449895707617/1000000000000 : ℚ), (-1490279113/5000000000 : ℚ), (56892981647/500000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-745962947/2500000000 : ℚ), (113934156389/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (8692019693/25000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data := by decide +kernel
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control428.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control428.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate428

-- Control429
namespace DiagonalRamsey.JointInheritedCertificate429
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(142003246679/500000000000 : ℚ), (3004295484419/2500000000 : ℚ), (-171015912832423/500000000000 : ℚ), 12⟩,
    ⟨(284853439489/1000000000000 : ℚ), (262257105373/2000000000 : ℚ), (-37810559990707/1000000000000 : ℚ), 9⟩,
    ⟨(143269587599/500000000000 : ℚ), (458580721347/10000000000 : ℚ), (-6736372765829/500000000000 : ℚ), 7⟩,
    ⟨(289047465927/1000000000000 : ℚ), (225360599557/10000000000 : ℚ), (-3383642223599/500000000000 : ℚ), 6⟩,
    ⟨(146177077733/500000000000 : ℚ), (130341297629/10000000000 : ℚ), (-4007671195691/1000000000000 : ℚ), 5⟩,
    ⟨(296427398587/1000000000000 : ℚ), (41420386491/5000000000 : ℚ), (-2610582514141/1000000000000 : ℚ), 5⟩,
    ⟨(75306991933/250000000000 : ℚ), (55921225333/10000000000 : ℚ), (-451716141303/250000000000 : ℚ), 5⟩,
    ⟨(76677407699/250000000000 : ℚ), (19655859131/5000000000 : ℚ), (-1302416198487/1000000000000 : ℚ), 4⟩,
    ⟨(19551224773/62500000000 : ℚ), (28413326761/10000000000 : ℚ), (-241273881483/250000000000 : ℚ), 4⟩,
    ⟨(319499022137/1000000000000 : ℚ), (4184116581/2000000000 : ℚ), (-728386400583/1000000000000 : ℚ), 4⟩,
    ⟨(20417723849/62500000000 : ℚ), (7788257603/5000000000 : ℚ), (-138961970379/250000000000 : ℚ), 3⟩,
    ⟨(334304083473/1000000000000 : ℚ), (11649863141/10000000000 : ℚ), (-213080455487/500000000000 : ℚ), 3⟩,
    ⟨(68457427641/200000000000 : ℚ), (217316903/250000000 : ℚ), (-4077275787/12500000000 : ℚ), 3⟩,
    ⟨(350555864599/1000000000000 : ℚ), (1283759431/2000000000 : ℚ), (-247454295089/1000000000000 : ℚ), 3⟩,
    ⟨(3590306303/10000000000 : ℚ), (4638974717/10000000000 : ℚ), (-18433958123/100000000000 : ℚ), 3⟩,
    ⟨(367629818681/1000000000000 : ℚ), (3224355737/10000000000 : ℚ), (-132965720947/1000000000000 : ℚ), 3⟩,
    ⟨(376270614857/1000000000000 : ℚ), (2085024247/10000000000 : ℚ), (-45302751551/500000000000 : ℚ), 3⟩,
    ⟨(192434901619/500000000000 : ℚ), (1156903857/10000000000 : ℚ), (-55296645191/1000000000000 : ℚ), 3⟩,
    ⟨(393344568939/1000000000000 : ℚ), (393502683/10000000000 : ℚ), (-2560139797/100000000000 : ℚ), 3⟩,
    ⟨(401613295333/1000000000000 : ℚ), (-14964843/625000000 : ℚ), (-112519743/250000000000 : ℚ), 2⟩,
    ⟨(81919270013/200000000000 : ℚ), (-299803/3906250 : ℚ), (20963372657/1000000000000 : ℚ), 2⟩,
    ⟨(208608425977/500000000000 : ℚ), (-1209984501/10000000000 : ℚ), (7850540953/200000000000 : ℚ), 2⟩,
    ⟨(2122007057/5000000000 : ℚ), (-1581619513/10000000000 : ℚ), (27444516091/500000000000 : ℚ), 2⟩,
    ⟨(43108083717/100000000000 : ℚ), (-1893693949/10000000000 : ℚ), (545888703/8000000000 : ℚ), 2⟩,
    ⟨(437190802741/1000000000000 : ℚ), (-430983539/2000000000 : ℚ), (79575649821/1000000000000 : ℚ), 2⟩,
    ⟨(88534493161/200000000000 : ℚ), (-2372024193/10000000000 : ℚ), (89126152063/1000000000000 : ℚ), 2⟩,
    ⟨(447473034951/1000000000000 : ℚ), (-637553499/2500000000 : ℚ), (48528236233/500000000000 : ℚ), 2⟩,
    ⟨(56443284759/125000000000 : ℚ), (-673370317/2500000000 : ℚ), (2587405973/25000000000 : ℚ), 2⟩,
    ⟨(454852967611/1000000000000 : ℚ), (-1402427357/5000000000 : ℚ), (10854356203/100000000000 : ℚ), 2⟩,
    ⟨(22868062917/50000000000 : ℚ), (-2886574491/10000000000 : ℚ), (112270810849/1000000000000 : ℚ), 2⟩,
    ⟨(459046994049/1000000000000 : ℚ), (-2940219861/10000000000 : ℚ), (114728849753/1000000000000 : ℚ), 2⟩,
    ⟨(22994697009/50000000000 : ℚ), (-1483398791/5000000000 : ℚ), (28987503941/250000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-742527111/2500000000 : ℚ), (23220459571/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (171253838847/500000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data := by decide +kernel
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control429.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control429.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate429
