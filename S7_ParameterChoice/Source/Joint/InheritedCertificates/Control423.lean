import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
