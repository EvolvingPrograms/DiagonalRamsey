import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate520
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(293676064019/1000000000000 : ℚ), (13217513642247/10000000000 : ℚ), (-388888885581101/1000000000000 : ℚ), 12⟩,
    ⟨(294428352869/1000000000000 : ℚ), (1444428856927/10000000000 : ℚ), (-42978567459063/1000000000000 : ℚ), 9⟩,
    ⟨(295925685617/1000000000000 : ℚ), (506142738673/10000000000 : ℚ), (-478300663399/31250000000 : ℚ), 7⟩,
    ⟨(29815364213/100000000000 : ℚ), (24925294147/1000000000 : ℚ), (-3840644262589/500000000000 : ℚ), 6⟩,
    ⟨(301090765969/1000000000000 : ℚ), (144444044849/10000000000 : ℚ), (-567941271859/125000000000 : ℚ), 6⟩,
    ⟨(152354385513/500000000000 : ℚ), (91959061093/10000000000 : ℚ), (-184688591979/62500000000 : ℚ), 5⟩,
    ⟨(308972813933/1000000000000 : ℚ), (3107734501/500000000 : ℚ), (-2041196398053/1000000000000 : ℚ), 5⟩,
    ⟨(313841829627/1000000000000 : ℚ), (43723753459/10000000000 : ℚ), (-22932257327/15625000000 : ℚ), 4⟩,
    ⟨(12770757073/40000000000 : ℚ), (316007423/100000000 : ℚ), (-1084172337281/1000000000000 : ℚ), 4⟩,
    ⟨(65040367923/200000000000 : ℚ), (23244694771/10000000000 : ℚ), (-407544547059/500000000000 : ℚ), 4⟩,
    ⟨(165791715401/500000000000 : ℚ), (17269193193/10000000000 : ℚ), (-61898000481/100000000000 : ℚ), 4⟩,
    ⟨(13534089687/40000000000 : ℚ), (12866937351/10000000000 : ℚ), (-471604038129/1000000000000 : ℚ), 3⟩,
    ⟨(345443086381/1000000000000 : ℚ), (9542867441/10000000000 : ℚ), (-71603150427/200000000000 : ℚ), 3⟩,
    ⟨(176393837357/500000000000 : ℚ), (6980340643/10000000000 : ℚ), (-268597940709/1000000000000 : ℚ), 3⟩,
    ⟨(90078818693/250000000000 : ℚ), (4969649281/10000000000 : ℚ), (-196938437487/1000000000000 : ℚ), 3⟩,
    ⟨(367953391653/1000000000000 : ℚ), (1683895139/5000000000 : ℚ), (-34658169949/250000000000 : ℚ), 3⟩,
    ⟨(75125693223/200000000000 : ℚ), (2074805461/10000000000 : ℚ), (-45288940471/500000000000 : ℚ), 3⟩,
    ⟨(76653316599/200000000000 : ℚ), (254833913/2500000000 : ℚ), (-10108194703/200000000000 : ℚ), 3⟩,
    ⟨(195397091527/500000000000 : ℚ), (74755279/5000000000 : ℚ), (-16885350883/1000000000000 : ℚ), 3⟩,
    ⟨(199069385693/500000000000 : ℚ), (-572960381/10000000000 : ℚ), (11606969319/1000000000000 : ℚ), 3⟩,
    ⟨(50653701949/125000000000 : ℚ), (-588358363/5000000000 : ℚ), (1120438927/31250000000 : ℚ), 3⟩,
    ⟨(82399685393/200000000000 : ℚ), (-1683416641/10000000000 : ℚ), (14138762483/250000000000 : ℚ), 3⟩,
    ⟨(418380018153/1000000000000 : ℚ), (-1054793169/5000000000 : ℚ), (74246729273/1000000000000 : ℚ), 3⟩,
    ⟨(212156465471/500000000000 : ℚ), (-2467923507/10000000000 : ℚ), (89343477441/1000000000000 : ℚ), 2⟩,
    ⟨(21487001407/50000000000 : ℚ), (-1384114983/5000000000 : ℚ), (102166254139/1000000000000 : ℚ), 2⟩,
    ⟨(217304521917/500000000000 : ℚ), (-1509043877/5000000000 : ℚ), (2824094171/25000000000 : ℚ), 2⟩,
    ⟨(219436543371/500000000000 : ℚ), (-644670899/2000000000 : ℚ), (60964091439/500000000000 : ℚ), 2⟩,
    ⟨(221245545899/500000000000 : ℚ), (-3388529023/10000000000 : ℚ), (32301722723/250000000000 : ℚ), 2⟩,
    ⟨(445428215637/1000000000000 : ℚ), (-1758510983/5000000000 : ℚ), (3372783523/25000000000 : ℚ), 2⟩,
    ⟨(8953123443/20000000000 : ℚ), (-3611355033/10000000000 : ℚ), (139123661637/1000000000000 : ℚ), 2⟩,
    ⟨(224576752449/500000000000 : ℚ), (-3673305209/10000000000 : ℚ), (3547538083/25000000000 : ℚ), 2⟩,
    ⟨(449905793749/1000000000000 : ℚ), (-3704004849/10000000000 : ℚ), (143281561391/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-3707829539/10000000000 : ℚ), (143453654397/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (171097503817/500000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control520.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control520.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate520
