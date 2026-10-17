import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
theorem certOK : JointInheritedControls.control569.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control569.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate569
