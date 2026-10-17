import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate314
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(164613743761/500000000000 : ℚ), (13924929564249/10000000000 : ℚ), (-459375692583403/1000000000000 : ℚ), 12⟩,
    ⟨(330145555719/1000000000000 : ℚ), (760344300347/5000000000 : ℚ), (-25392207128209/500000000000 : ℚ), 8⟩,
    ⟨(66394570123/200000000000 : ℚ), (532434551529/10000000000 : ℚ), (-3619411385373/200000000000 : ℚ), 7⟩,
    ⟨(167345887181/500000000000 : ℚ), (3275214133/125000000 : ℚ), (-9091284535411/1000000000000 : ℚ), 6⟩,
    ⟨(338276142237/1000000000000 : ℚ), (75887992673/5000000000 : ℚ), (-1346280382191/250000000000 : ℚ), 5⟩,
    ⟨(171345717409/500000000000 : ℚ), (96626229187/10000000000 : ℚ), (-3508974858929/1000000000000 : ℚ), 5⟩,
    ⟨(347895130423/1000000000000 : ℚ), (16336693859/2500000000 : ℚ), (-2429812855499/1000000000000 : ℚ), 4⟩,
    ⟨(353837114621/1000000000000 : ℚ), (368249451/80000000 : ℚ), (-3423113053/1953125000 : ℚ), 4⟩,
    ⟨(180230081427/500000000000 : ℚ), (16673433153/5000000000 : ℚ), (-1299959081513/1000000000000 : ℚ), 4⟩,
    ⟨(367700491547/1000000000000 : ℚ), (12309866967/5000000000 : ℚ), (-196489889793/200000000000 : ℚ), 3⟩,
    ⟨(187744186189/500000000000 : ℚ), (4597815527/2500000000 : ℚ), (-93894862787/125000000000 : ℚ), 3⟩,
    ⟨(95937200949/250000000000 : ℚ), (3453132561/2500000000 : ℚ), (-288725443267/500000000000 : ℚ), 3⟩,
    ⟨(98100558333/250000000000 : ℚ), (129540173/125000000 : ℚ), (-443669060243/1000000000000 : ℚ), 3⟩,
    ⟨(25085332733/62500000000 : ℚ), (7710697049/10000000000 : ℚ), (-169225490221/500000000000 : ℚ), 3⟩,
    ⟨(102637938881/250000000000 : ℚ), (5634829283/10000000000 : ℚ), (-127110045369/500000000000 : ℚ), 3⟩,
    ⟨(419873058361/1000000000000 : ℚ), (3985584699/10000000000 : ℚ), (-232214007/1250000000 : ℚ), 3⟩,
    ⟨(107309865749/250000000000 : ℚ), (1329083141/5000000000 : ℚ), (-12943668221/100000000000 : ℚ), 3⟩,
    ⟨(438560765833/1000000000000 : ℚ), (98613031/625000000 : ℚ), (-41287989711/500000000000 : ℚ), 2⟩,
    ⟨(44774719763/100000000000 : ℚ), (690195951/10000000000 : ℚ), (-5406600893/125000000000 : ℚ), 2⟩,
    ⟨(228355144013/500000000000 : ℚ), (-44749141/10000000000 : ℚ), (-5012506457/500000000000 : ℚ), 2⟩,
    ⟨(232681858781/500000000000 : ℚ), (-328497687/5000000000 : ℚ), (3639129639/200000000000 : ℚ), 2⟩,
    ⟨(23681207449/50000000000 : ℚ), (-1169205573/10000000000 : ℚ), (1689568873/40000000000 : ℚ), 2⟩,
    ⟨(481412029811/1000000000000 : ℚ), (-1598677239/10000000000 : ℚ), (62744200583/1000000000000 : ℚ), 2⟩,
    ⟨(61081544813/125000000000 : ℚ), (-30604821/156250000 : ℚ), (80204776241/1000000000000 : ℚ), 2⟩,
    ⟨(495275406737/1000000000000 : ℚ), (-2259574339/10000000000 : ℚ), (95004890669/1000000000000 : ℚ), 2⟩,
    ⟨(250608695467/500000000000 : ℚ), (-627308113/2500000000 : ℚ), (107443125559/1000000000000 : ℚ), 2⟩,
    ⟨(25321054327/50000000000 : ℚ), (-1356920071/5000000000 : ℚ), (29437779217/250000000000 : ℚ), 2⟩,
    ⟨(510836379121/1000000000000 : ℚ), (-1439067223/5000000000 : ℚ), (63053648433/500000000000 : ℚ), 2⟩,
    ⟨(128605186749/250000000000 : ℚ), (-1502856509/5000000000 : ℚ), (132647189461/1000000000000 : ℚ), 2⟩,
    ⟨(258569835371/500000000000 : ℚ), (-3099240489/10000000000 : ℚ), (137471089697/1000000000000 : ℚ), 2⟩,
    ⟨(518966965639/1000000000000 : ℚ), (-790149371/2500000000 : ℚ), (3516242281/25000000000 : ℚ), 2⟩,
    ⟨(129971258459/250000000000 : ℚ), (-1595491939/5000000000 : ℚ), (142228037297/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-3194768637/10000000000 : ℚ), (28484964607/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (270230344943/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem certOK : JointInheritedControls.control314.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control314.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate314
