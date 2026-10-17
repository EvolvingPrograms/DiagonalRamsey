import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate293
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4919735273/20000000000 : ℚ), (2694614125639/2500000000 : ℚ), (-265820352639231/1000000000000 : ℚ), 11⟩,
    ⟨(2468723037/10000000000 : ℚ), (1173406644073/10000000000 : ℚ), (-29392343094261/1000000000000 : ℚ), 8⟩,
    ⟨(49726971113/200000000000 : ℚ), (409077257809/10000000000 : ℚ), (-1309747852469/125000000000 : ℚ), 7⟩,
    ⟨(251257444907/1000000000000 : ℚ), (40068020459/2000000000 : ℚ), (-210669168827/40000000000 : ℚ), 6⟩,
    ⟨(127357407379/500000000000 : ℚ), (288668227/25000000 : ℚ), (-3122003528549/1000000000000 : ℚ), 5⟩,
    ⟨(129486834377/500000000000 : ℚ), (9143002291/1250000000 : ℚ), (-254519223709/125000000000 : ℚ), 5⟩,
    ⟨(52798598361/200000000000 : ℚ), (49226838697/10000000000 : ℚ), (-1411424397497/1000000000000 : ℚ), 4⟩,
    ⟨(134862222543/500000000000 : ℚ), (34515955431/10000000000 : ℚ), (-1019251012187/1000000000000 : ℚ), 4⟩,
    ⟨(17257051973/62500000000 : ℚ), (3111906383/1250000000 : ℚ), (-378468838153/500000000000 : ℚ), 4⟩,
    ⟨(283096627597/1000000000000 : ℚ), (18303272791/10000000000 : ℚ), (-28639529101/50000000000 : ℚ), 3⟩,
    ⟨(1453042877/5000000000 : ℚ), (1702176457/1250000000 : ℚ), (-219244885091/500000000000 : ℚ), 3⟩,
    ⟨(298576330813/1000000000000 : ℚ), (407420141/400000000 : ℚ), (-10545877081/31250000000 : ℚ), 3⟩,
    ⟨(61384631999/200000000000 : ℚ), (3804363021/5000000000 : ℚ), (-259512733271/1000000000000 : ℚ), 3⟩,
    ⟨(15778433921/50000000000 : ℚ), (5632808713/10000000000 : ℚ), (-198053719849/1000000000000 : ℚ), 3⟩,
    ⟨(324429625017/1000000000000 : ℚ), (4089967129/10000000000 : ℚ), (-74356173297/500000000000 : ℚ), 3⟩,
    ⟨(333420664029/1000000000000 : ℚ), (57325031/200000000 : ℚ), (-21696542631/200000000000 : ℚ), 3⟩,
    ⟨(342455206833/1000000000000 : ℚ), (188236411/1000000000 : ℚ), (-75249105087/1000000000000 : ℚ), 2⟩,
    ⟨(87861561461/250000000000 : ℚ), (1081960687/10000000000 : ℚ), (-23745258817/500000000000 : ℚ), 2⟩,
    ⟨(180153596221/500000000000 : ℚ), (424284613/10000000000 : ℚ), (-6023430819/250000000000 : ℚ), 2⟩,
    ⟨(368952710867/1000000000000 : ℚ), (-7537671/625000000 : ℚ), (-2115784809/500000000000 : ℚ), 2⟩,
    ⟨(377299540049/1000000000000 : ℚ), (-574985903/10000000000 : ℚ), (12718284827/1000000000000 : ℚ), 2⟩,
    ⟨(192633647731/500000000000 : ℚ), (-955639587/10000000000 : ℚ), (2722887311/100000000000 : ℚ), 2⟩,
    ⟨(78555848653/200000000000 : ℚ), (-1275309393/10000000000 : ℚ), (19831300701/500000000000 : ℚ), 2⟩,
    ⟨(199881519647/500000000000 : ℚ), (-385937873/2500000000 : ℚ), (25149351431/500000000000 : ℚ), 2⟩,
    ⟨(25384464111/62500000000 : ℚ), (-442118313/2500000000 : ℚ), (14838260961/250000000000 : ℚ), 2⟩,
    ⟨(25742679941/62500000000 : ℚ), (-1955267401/10000000000 : ℚ), (66992617027/1000000000000 : ℚ), 2⟩,
    ⟨(104225550527/250000000000 : ℚ), (-2108601149/10000000000 : ℚ), (73346274291/1000000000000 : ℚ), 2⟩,
    ⟨(52645132013/125000000000 : ℚ), (-55797539/250000000 : ℚ), (15702547991/200000000000 : ℚ), 2⟩,
    ⟨(212309212977/500000000000 : ℚ), (-93110613/400000000 : ℚ), (20641653757/250000000000 : ℚ), 2⟩,
    ⟨(427241015297/1000000000000 : ℚ), (-119905609/500000000 : ℚ), (342251413/4000000000 : ℚ), 2⟩,
    ⟨(214501783581/500000000000 : ℚ), (-2444295189/10000000000 : ℚ), (43770019101/500000000000 : ℚ), 2⟩,
    ⟨(429889107211/1000000000000 : ℚ), (-616794209/2500000000 : ℚ), (11065335069/125000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-617506829/2500000000 : ℚ), (1385081803/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (173091957649/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control293.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control293.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate293
