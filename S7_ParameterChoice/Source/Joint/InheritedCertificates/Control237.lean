import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate237
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(281697333407/1000000000000 : ℚ), (3171238652809/2500000000 : ℚ), (-71632227002349/200000000000 : ℚ), 11⟩,
    ⟨(282603515789/1000000000000 : ℚ), (55318886747/400000000 : ℚ), (-9899712062679/250000000000 : ℚ), 8⟩,
    ⟨(3555089419/12500000000 : ℚ), (120775603941/2500000000 : ℚ), (-2822753293053/200000000000 : ℚ), 7⟩,
    ⟨(35886359573/125000000000 : ℚ), (118561803051/5000000000 : ℚ), (-886529712247/125000000000 : ℚ), 6⟩,
    ⟨(290628839261/1000000000000 : ℚ), (136984817571/10000000000 : ℚ), (-840514119279/200000000000 : ℚ), 5⟩,
    ⟨(58997393807/200000000000 : ℚ), (4348699451/500000000 : ℚ), (-684915282731/250000000000 : ℚ), 5⟩,
    ⟨(60024658947/200000000000 : ℚ), (58664285443/10000000000 : ℚ), (-37961894133/20000000000 : ℚ), 4⟩,
    ⟨(305988350737/1000000000000 : ℚ), (20609752627/5000000000 : ℚ), (-1369903510363/1000000000000 : ℚ), 4⟩,
    ⟨(9766426667/31250000000 : ℚ), (14894495499/5000000000 : ℚ), (-1016714016647/1000000000000 : ℚ), 4⟩,
    ⟨(319672244759/1000000000000 : ℚ), (685685073/312500000 : ℚ), (-768872449689/1000000000000 : ℚ), 3⟩,
    ⟨(327359299401/1000000000000 : ℚ), (16353544241/10000000000 : ℚ), (-117643699711/200000000000 : ℚ), 3⟩,
    ⟨(33551278673/100000000000 : ℚ), (12253557037/10000000000 : ℚ), (-226213574079/500000000000 : ℚ), 3⟩,
    ⟨(344054184207/1000000000000 : ℚ), (9170385627/10000000000 : ℚ), (-347734987111/1000000000000 : ℚ), 3⟩,
    ⟨(70580246701/200000000000 : ℚ), (680299973/1000000000 : ℚ), (-33160805173/125000000000 : ℚ), 3⟩,
    ⟨(180984366351/500000000000 : ℚ), (9672809/19531250 : ℚ), (-199178313041/1000000000000 : ℚ), 3⟩,
    ⟨(14846774273/40000000000 : ℚ), (3483512677/10000000000 : ℚ), (-72678427219/500000000000 : ℚ), 2⟩,
    ⟨(380414498833/1000000000000 : ℚ), (230178097/1000000000 : ℚ), (-25241891379/250000000000 : ℚ), 2⟩,
    ⟨(97403780739/250000000000 : ℚ), (1340141683/10000000000 : ℚ), (-63957114731/1000000000000 : ℚ), 2⟩,
    ⟨(199341311077/500000000000 : ℚ), (137483843/2500000000 : ℚ), (-16410755803/500000000000 : ℚ), 2⟩,
    ⟨(407529671451/1000000000000 : ℚ), (-13081481/1250000000 : ℚ), (-805271757/125000000000 : ℚ), 2⟩,
    ⟨(1625277613/3906250000 : ℚ), (-650330713/10000000000 : ℚ), (8011758517/500000000000 : ℚ), 2⟩,
    ⟨(424224556257/1000000000000 : ℚ), (-276811901/2500000000 : ℚ), (17608474531/500000000000 : ℚ), 2⟩,
    ⟨(431911610899/1000000000000 : ℚ), (-74536987/500000000 : ℚ), (51630343043/1000000000000 : ℚ), 2⟩,
    ⟨(219529101157/500000000000 : ℚ), (-1812569061/10000000000 : ℚ), (32821845291/500000000000 : ℚ), 2⟩,
    ⟨(222797752461/500000000000 : ℚ), (-2081802409/10000000000 : ℚ), (4846961701/62500000000 : ℚ), 2⟩,
    ⟨(451460560923/1000000000000 : ℚ), (-288180909/1250000000 : ℚ), (87581709937/1000000000000 : ℚ), 2⟩,
    ⟨(456596886623/1000000000000 : ℚ), (-796453/3200000 : ℚ), (23415828/244140625 : ℚ), 2⟩,
    ⟨(460955016397/1000000000000 : ℚ), (-2636364693/10000000000 : ℚ), (102675578447/1000000000000 : ℚ), 2⟩,
    ⟨(232246489537/500000000000 : ℚ), (-2750947849/10000000000 : ℚ), (107977485873/1000000000000 : ℚ), 2⟩,
    ⟨(233588351069/500000000000 : ℚ), (-2834998453/10000000000 : ℚ), (55946401077/500000000000 : ℚ), 2⟩,
    ⟨(46898033987/100000000000 : ℚ), (-722540553/2500000000 : ℚ), (11447488359/100000000000 : ℚ), 2⟩,
    ⟨(469886522251/1000000000000 : ℚ), (-2917488653/10000000000 : ℚ), (115757676137/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1460446309/5000000000 : ℚ), (115917643171/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (289520438547/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control237.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control237.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate237
