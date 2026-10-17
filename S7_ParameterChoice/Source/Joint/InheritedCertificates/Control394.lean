import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate394
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4629059191/15625000000 : ℚ), (1305282701301/1000000000 : ℚ), (-77498758400753/200000000000 : ℚ), 12⟩,
    ⟨(297095890663/1000000000000 : ℚ), (712572752821/5000000000 : ℚ), (-10708359216327/250000000000 : ℚ), 9⟩,
    ⟨(149380021709/500000000000 : ℚ), (99760873953/2000000000 : ℚ), (-1220840027/80000000 : ℚ), 7⟩,
    ⟨(301236219789/1000000000000 : ℚ), (61336610763/2500000000 : ℚ), (-3831868222189/500000000000 : ℚ), 6⟩,
    ⟨(152250286421/500000000000 : ℚ), (142027875163/10000000000 : ℚ), (-4537338824537/1000000000000 : ℚ), 5⟩,
    ⟨(12340866603/40000000000 : ℚ), (5646590099/625000000 : ℚ), (-2954591630701/1000000000000 : ℚ), 5⟩,
    ⟨(313260771169/1000000000000 : ℚ), (12206863957/2000000000 : ℚ), (-511024936023/250000000000 : ℚ), 4⟩,
    ⟨(4979253921/15625000000 : ℚ), (42934534061/10000000000 : ℚ), (-1472667771771/1000000000000 : ℚ), 4⟩,
    ⟨(32470398889/100000000000 : ℚ), (31048084833/10000000000 : ℚ), (-272647041863/250000000000 : ℚ), 4⟩,
    ⟨(165648948037/500000000000 : ℚ), (22868829263/10000000000 : ℚ), (-822502416007/1000000000000 : ℚ), 4⟩,
    ⟨(67678093913/200000000000 : ℚ), (17029975881/10000000000 : ℚ), (-2508499549/4000000000 : ℚ), 3⟩,
    ⟨(345913404003/1000000000000 : ℚ), (12736088941/10000000000 : ℚ), (-240150911653/500000000000 : ℚ), 3⟩,
    ⟨(353794249417/1000000000000 : ℚ), (4749849561/5000000000 : ℚ), (-367141755593/1000000000000 : ℚ), 3⟩,
    ⟨(180978554479/500000000000 : ℚ), (1752312859/2500000000 : ℚ), (-69515613513/250000000000 : ℚ), 3⟩,
    ⟨(185161684913/500000000000 : ℚ), (2529291269/5000000000 : ℚ), (-206675351311/1000000000000 : ℚ), 3⟩,
    ⟨(75762492071/200000000000 : ℚ), (1753619031/5000000000 : ℚ), (-14859236957/100000000000 : ℚ), 3⟩,
    ⟨(387342625963/1000000000000 : ℚ), (564285131/2500000000 : ℚ), (-100722573837/1000000000000 : ℚ), 3⟩,
    ⟨(98957929123/250000000000 : ℚ), (154793413/1250000000 : ℚ), (-12168321327/200000000000 : ℚ), 3⟩,
    ⟨(5052474717/12500000000 : ℚ), (400072099/10000000000 : ℚ), (-27319353263/1000000000000 : ℚ), 2⟩,
    ⟨(412360836901/1000000000000 : ℚ), (-147568249/5000000000 : ℚ), (528653691/500000000000 : ℚ), 2⟩,
    ⟨(84048336463/200000000000 : ℚ), (-7002107/80000000 : ℚ), (12601408091/500000000000 : ℚ), 2⟩,
    ⟨(427764616753/1000000000000 : ℚ), (-1089163/8000000 : ℚ), (2290685247/50000000000 : ℚ), 2⟩,
    ⟨(108714297561/250000000000 : ℚ), (-1769831477/10000000000 : ℚ), (15856216369/250000000000 : ℚ), 2⟩,
    ⟨(110362774357/250000000000 : ℚ), (-1056389601/5000000000 : ℚ), (78449471403/1000000000000 : ℚ), 2⟩,
    ⟨(223741417687/500000000000 : ℚ), (-119992659/500000000 : ℚ), (45603885991/500000000000 : ℚ), 2⟩,
    ⟨(113223578787/250000000000 : ℚ), (-2638445439/10000000000 : ℚ), (101948164097/1000000000000 : ℚ), 2⟩,
    ⟨(457633421243/1000000000000 : ℚ), (-283426807/1000000000 : ℚ), (55431401399/500000000000 : ℚ), 2⟩,
    ⟨(18466180539/40000000000 : ℚ), (-2991709979/10000000000 : ℚ), (14762408667/125000000000 : ℚ), 2⟩,
    ⟨(464918866529/1000000000000 : ℚ), (-194631271/625000000 : ℚ), (123769324413/1000000000000 : ℚ), 2⟩,
    ⟨(467395042899/1000000000000 : ℚ), (-3203902189/10000000000 : ℚ), (15994430967/125000000000 : ℚ), 2⟩,
    ⟨(93811839131/200000000000 : ℚ), (-203928267/625000000 : ℚ), (130715635223/1000000000000 : ℚ), 2⟩,
    ⟨(234947649047/500000000000 : ℚ), (-3292057869/10000000000 : ℚ), (6604338481/50000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-3295696081/10000000000 : ℚ), (66128873277/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (78758198843/250000000000 : ℚ)
  μ := (47/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control394.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control394.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate394
