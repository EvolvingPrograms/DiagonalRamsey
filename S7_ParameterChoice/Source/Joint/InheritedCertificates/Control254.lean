import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate254
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(244254475353/1000000000000 : ℚ), (543701361663/500000000 : ℚ), (-16643727127721/62500000000 : ℚ), 11⟩,
    ⟨(122574175909/500000000000 : ℚ), (1183548652347/10000000000 : ℚ), (-3680748167383/125000000000 : ℚ), 8⟩,
    ⟨(61731874057/250000000000 : ℚ), (412489068331/10000000000 : ℚ), (-82012314657/7812500000 : ℚ), 7⟩,
    ⟨(249574774451/1000000000000 : ℚ), (40388893369/2000000000 : ℚ), (-131923612341/25000000000 : ℚ), 6⟩,
    ⟨(1012258767/4000000000 : ℚ), (5817683211/500000000 : ℚ), (-391045220219/125000000000 : ℚ), 5⟩,
    ⟨(257363638313/1000000000000 : ℚ), (18420695957/2500000000 : ℚ), (-2040561221297/1000000000000 : ℚ), 5⟩,
    ⟨(52486042587/200000000000 : ℚ), (2478800731/500000000 : ℚ), (-1414710569237/1000000000000 : ℚ), 4⟩,
    ⟨(134107810867/500000000000 : ℚ), (17376594307/5000000000 : ℚ), (-1021833443657/1000000000000 : ℚ), 4⟩,
    ⟨(274664148059/1000000000000 : ℚ), (3132817021/1250000000 : ℚ), (-759048529003/1000000000000 : ℚ), 4⟩,
    ⟨(70428422269/250000000000 : ℚ), (9212469843/5000000000 : ℚ), (-143642143093/250000000000 : ℚ), 3⟩,
    ⟨(289296353853/1000000000000 : ℚ), (685414917/500000000 : ℚ), (-220011182141/500000000000 : ℚ), 3⟩,
    ⟨(297339117183/1000000000000 : ℚ), (1281878047/1250000000 : ℚ), (-338812762563/1000000000000 : ℚ), 3⟩,
    ⟨(305764522857/1000000000000 : ℚ), (1915761297/2500000000 : ℚ), (-52141724683/200000000000 : ℚ), 3⟩,
    ⟨(314491429613/1000000000000 : ℚ), (5676068017/10000000000 : ℚ), (-24891020319/125000000000 : ℚ), 3⟩,
    ⟨(323435792569/1000000000000 : ℚ), (206250599/500000000 : ℚ), (-149685010271/1000000000000 : ℚ), 3⟩,
    ⟨(332511472621/1000000000000 : ℚ), (1447537903/5000000000 : ℚ), (-21873625667/200000000000 : ℚ), 2⟩,
    ⟨(341631066007/1000000000000 : ℚ), (953195557/5000000000 : ℚ), (-76058327861/1000000000000 : ℚ), 2⟩,
    ⟨(175353373029/500000000000 : ℚ), (8817801/80000000 : ℚ), (-12058060313/250000000000 : ℚ), 2⟩,
    ⟨(179825554507/500000000000 : ℚ), (110388141/2500000000 : ℚ), (-24775033667/1000000000000 : ℚ), 2⟩,
    ⟨(36837801577/100000000000 : ℚ), (-10575323/1000000000 : ℚ), (-4858465393/1000000000000 : ℚ), 2⟩,
    ⟨(75360684289/200000000000 : ℚ), (-281055017/5000000000 : ℚ), (189695843/15625000000 : ℚ), 2⟩,
    ⟨(192423092387/500000000000 : ℚ), (-944388069/10000000000 : ℚ), (2669547989/100000000000 : ℚ), 2⟩,
    ⟨(392428849551/1000000000000 : ℚ), (-1977191/15625000 : ℚ), (9792273287/250000000000 : ℚ), 2⟩,
    ⟨(399478390569/1000000000000 : ℚ), (-1534959609/10000000000 : ℚ), (24920404789/500000000000 : ℚ), 2⟩,
    ⟨(202963458447/500000000000 : ℚ), (-176060537/1000000000 : ℚ), (14731656389/250000000000 : ℚ), 2⟩,
    ⟨(102928081423/250000000000 : ℚ), (-48704017/250000000 : ℚ), (33296808979/500000000000 : ℚ), 2⟩,
    ⟨(208389450157/500000000000 : ℚ), (-1051057151/5000000000 : ℚ), (14594139/200000000 : ℚ), 2⟩,
    ⟨(210538923439/500000000000 : ℚ), (-222590971/1000000000 : ℚ), (78156621391/1000000000000 : ℚ), 2⟩,
    ⟨(26535485261/62500000000 : ℚ), (-2322156027/10000000000 : ℚ), (3289041139/40000000000 : ℚ), 2⟩,
    ⟨(427215042399/1000000000000 : ℚ), (-598195559/2500000000 : ℚ), (8523389401/100000000000 : ℚ), 2⟩,
    ⟨(428994186809/1000000000000 : ℚ), (-609786993/2500000000 : ℚ), (2725588117/31250000000 : ℚ), 2⟩,
    ⟨(214944031637/500000000000 : ℚ), (-2462119949/10000000000 : ℚ), (17641065867/200000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-2464981671/10000000000 : ℚ), (44164183663/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (83988138333/250000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control254.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control254.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate254
