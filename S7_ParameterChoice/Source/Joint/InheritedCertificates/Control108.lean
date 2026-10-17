import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate108
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(10618053407/50000000000 : ℚ), (1636360487949/2500000000 : ℚ), (-27933393465711/200000000000 : ℚ), 10⟩,
    ⟨(1336509631/6250000000 : ℚ), (87987037617/1250000000 : ℚ), (-3091258174483/200000000000 : ℚ), 7⟩,
    ⟨(216788228839/1000000000000 : ℚ), (241350300347/10000000000 : ℚ), (-1379871592847/250000000000 : ℚ), 6⟩,
    ⟨(221172753561/1000000000000 : ℚ), (29013392709/2500000000 : ℚ), (-278184650107/100000000000 : ℚ), 5⟩,
    ⟨(56738222439/250000000000 : ℚ), (65665424891/10000000000 : ℚ), (-331056978823/200000000000 : ℚ), 4⟩,
    ⟨(234072971553/1000000000000 : ℚ), (8175099307/2000000000 : ℚ), (-1085040221949/1000000000000 : ℚ), 4⟩,
    ⟨(242464428671/1000000000000 : ℚ), (27082783717/10000000000 : ℚ), (-378529874417/500000000000 : ℚ), 3⟩,
    ⟨(31505805849/125000000000 : ℚ), (1171456397/625000000 : ℚ), (-13781292397/25000000000 : ℚ), 3⟩,
    ⟨(65681686461/250000000000 : ℚ), (13387800629/10000000000 : ℚ), (-206826526187/500000000000 : ℚ), 3⟩,
    ⟨(274402468707/1000000000000 : ℚ), (1223328261/1250000000 : ℚ), (-63419605047/200000000000 : ℚ), 3⟩,
    ⟨(71740292947/250000000000 : ℚ), (7274807471/10000000000 : ℚ), (-246703233957/1000000000000 : ℚ), 2⟩,
    ⟨(30028190791/100000000000 : ℚ), (1093851927/2000000000 : ℚ), (-38752451587/200000000000 : ℚ), 2⟩,
    ⟨(62847278221/200000000000 : ℚ), (413798503/1000000000 : ℚ), (-76454600021/500000000000 : ℚ), 2⟩,
    ⟨(328690232069/1000000000000 : ℚ), (1567347491/5000000000 : ℚ), (-7543350377/62500000000 : ℚ), 2⟩,
    ⟨(343504232413/1000000000000 : ℚ), (2364021319/10000000000 : ℚ), (-18963510349/200000000000 : ℚ), 2⟩,
    ⟨(71707145043/200000000000 : ℚ), (220253629/1250000000 : ℚ), (-73705165961/1000000000000 : ℚ), 2⟩,
    ⟨(46704993623/125000000000 : ℚ), (160602747/1250000000 : ℚ), (-14062181171/250000000000 : ℚ), 2⟩,
    ⟨(194335720893/500000000000 : ℚ), (5635219/62500000 : ℚ), (-2082655579/50000000000 : ℚ), 2⟩,
    ⟨(40348544213/100000000000 : ℚ), (590514867/10000000000 : ℚ), (-29337365651/1000000000000 : ℚ), 2⟩,
    ⟨(208969641547/500000000000 : ℚ), (335546277/10000000000 : ℚ), (-18870558717/1000000000000 : ℚ), 2⟩,
    ⟨(26993360393/62500000000 : ℚ), (125029559/10000000000 : ℚ), (-9928970621/1000000000000 : ℚ), 2⟩,
    ⟨(445214502411/1000000000000 : ℚ), (-1554433/312500000 : ℚ), (-2266848313/1000000000000 : ℚ), 2⟩,
    ⟨(114443301373/250000000000 : ℚ), (-97657931/5000000000 : ℚ), (860791459/200000000000 : ℚ), 2⟩,
    ⟨(93889785671/200000000000 : ℚ), (-63332071/2000000000 : ℚ), (9928417967/1000000000000 : ℚ), 2⟩,
    ⟨(240064613703/500000000000 : ℚ), (-417570103/10000000000 : ℚ), (14718707073/1000000000000 : ℚ), 2⟩,
    ⟨(61213905691/125000000000 : ℚ), (-50095619/1000000000 : ℚ), (18761761881/1000000000000 : ℚ), 2⟩,
    ⟨(249051351323/500000000000 : ℚ), (-35565869/625000000 : ℚ), (2765606427/125000000000 : ℚ), 2⟩,
    ⟨(505222784443/1000000000000 : ℚ), (-7794663/125000000 : ℚ), (24859704019/1000000000000 : ℚ), 2⟩,
    ⟨(255501460319/500000000000 : ℚ), (-332903413/5000000000 : ℚ), (6751393213/250000000000 : ℚ), 2⟩,
    ⟨(6442343067/12500000000 : ℚ), (-696710539/10000000000 : ℚ), (3573937737/125000000000 : ℚ), 2⟩,
    ⟨(518334133239/1000000000000 : ℚ), (-143391463/2000000000 : ℚ), (14818984133/500000000000 : ℚ), 2⟩,
    ⟨(519814606059/1000000000000 : ℚ), (-363488137/5000000000 : ℚ), (30158025493/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-182055951/2500000000 : ℚ), (3777860689/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (317799647457/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control108.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control108.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate108
