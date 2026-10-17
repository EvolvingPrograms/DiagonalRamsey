import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate125
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(42797516627/200000000000 : ℚ), (1621750576609/2500000000 : ℚ), (-34868103256683/250000000000 : ℚ), 10⟩,
    ⟨(215460228561/1000000000000 : ℚ), (139569135871/2000000000 : ℚ), (-7717457974447/500000000000 : ℚ), 7⟩,
    ⟨(218391337033/1000000000000 : ℚ), (47877455099/2000000000 : ℚ), (-1102390412483/200000000000 : ℚ), 6⟩,
    ⟨(111376340187/500000000000 : ℚ), (57585322609/5000000000 : ℚ), (-111124364359/40000000000 : ℚ), 5⟩,
    ⟨(14281391029/62500000000 : ℚ), (65201949911/10000000000 : ℚ), (-1653093488067/1000000000000 : ℚ), 4⟩,
    ⟨(235584693741/1000000000000 : ℚ), (10152325167/2500000000 : ℚ), (-1083615990991/1000000000000 : ℚ), 4⟩,
    ⟨(243931784463/1000000000000 : ℚ), (26920485263/10000000000 : ℚ), (-756063248357/1000000000000 : ℚ), 3⟩,
    ⟨(15841446349/62500000000 : ℚ), (18639902713/10000000000 : ℚ), (-550512297361/1000000000000 : ℚ), 3⟩,
    ⟨(264086972923/1000000000000 : ℚ), (13319551503/10000000000 : ℚ), (-413076540197/1000000000000 : ℚ), 3⟩,
    ⟨(137850482589/500000000000 : ℚ), (60876063/62500000 : ℚ), (-316628986269/1000000000000 : ℚ), 3⟩,
    ⟨(144096634627/500000000000 : ℚ), (7242275647/10000000000 : ℚ), (-246307673703/1000000000000 : ℚ), 2⟩,
    ⟨(150721788717/500000000000 : ℚ), (5445852253/10000000000 : ℚ), (-193418744579/1000000000000 : ℚ), 2⟩,
    ⟨(315324282007/1000000000000 : ℚ), (412069413/1000000000 : ℚ), (-2384437411/15625000000 : ℚ), 2⟩,
    ⟨(1648508521/5000000000 : ℚ), (390199217/1250000000 : ℚ), (-60208908343/500000000000 : ℚ), 2⟩,
    ⟨(172218690789/500000000000 : ℚ), (2353852237/10000000000 : ℚ), (-94565394241/1000000000000 : ℚ), 2⟩,
    ⟨(44923675189/125000000000 : ℚ), (43848939/250000000 : ℚ), (-36736428677/500000000000 : ℚ), 2⟩,
    ⟨(374413767877/1000000000000 : ℚ), (63914263/500000000 : ℚ), (-56033764661/1000000000000 : ℚ), 2⟩,
    ⟨(389365787811/1000000000000 : ℚ), (448123587/5000000000 : ℚ), (-20726902921/500000000000 : ℚ), 2⟩,
    ⟨(101025366297/250000000000 : ℚ), (586006537/10000000000 : ℚ), (-5830501437/200000000000 : ℚ), 2⟩,
    ⟨(418478887381/1000000000000 : ℚ), (331725783/10000000000 : ℚ), (-18699214077/1000000000000 : ℚ), 2⟩,
    ⟨(216179795977/500000000000 : ℚ), (121757361/10000000000 : ℚ), (-977033823/100000000000 : ℚ), 2⟩,
    ⟨(89121980027/200000000000 : ℚ), (-52569929/10000000000 : ℚ), (-2120165559/1000000000000 : ℚ), 2⟩,
    ⟨(458102204211/1000000000000 : ℚ), (-197779773/10000000000 : ℚ), (1109868011/250000000000 : ℚ), 2⟩,
    ⟨(234858098233/500000000000 : ℚ), (-15941167/500000000 : ℚ), (10053599667/1000000000000 : ℚ), 2⟩,
    ⟨(96068005561/200000000000 : ℚ), (-419483719/10000000000 : ℚ), (7417230661/500000000000 : ℚ), 2⟩,
    ⟨(244935692463/500000000000 : ℚ), (-62832969/1250000000 : ℚ), (3773814159/200000000000 : ℚ), 2⟩,
    ⟨(3892331841/7812500000 : ℚ), (-11411857/200000000 : ℚ), (22224771751/1000000000000 : ℚ), 2⟩,
    ⟨(20212036517/40000000000 : ℚ), (-312488291/5000000000 : ℚ), (24953360139/1000000000000 : ℚ), 2⟩,
    ⟨(255525244507/500000000000 : ℚ), (-667105137/10000000000 : ℚ), (13547073731/500000000000 : ℚ), 2⟩,
    ⟨(103082366471/200000000000 : ℚ), (-5583453/80000000 : ℚ), (28676224549/1000000000000 : ℚ), 2⟩,
    ⟨(129585735207/250000000000 : ℚ), (-718127691/10000000000 : ℚ), (14860051743/500000000000 : ℚ), 2⟩,
    ⟨(259907793127/500000000000 : ℚ), (-364060761/5000000000 : ℚ), (3023886133/100000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-4558537/62500000 : ℚ), (30303558507/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (10278147397/31250000000 : ℚ)
  μ := (13/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control125.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control125.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate125
