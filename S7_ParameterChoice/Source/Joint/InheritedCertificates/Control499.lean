import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate499
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(17190674117/62500000000 : ℚ), (858972252343/625000000 : ℚ), (-47339149753471/125000000000 : ℚ), 12⟩,
    ⟨(55149667067/200000000000 : ℚ), (1501956548161/10000000000 : ℚ), (-41849888803337/1000000000000 : ℚ), 9⟩,
    ⟨(866052239/3125000000 : ℚ), (131573277173/2500000000 : ℚ), (-3725169429419/250000000000 : ℚ), 7⟩,
    ⟨(69800639609/250000000000 : ℚ), (259151946381/10000000000 : ℚ), (-7475708759757/1000000000000 : ℚ), 6⟩,
    ⟨(4405093219/15625000000 : ℚ), (75074908169/5000000000 : ℚ), (-4419956262213/1000000000000 : ℚ), 6⟩,
    ⟨(285280711317/1000000000000 : ℚ), (95557639167/10000000000 : ℚ), (-1436457628513/500000000000 : ℚ), 5⟩,
    ⟨(289234486307/1000000000000 : ℚ), (516409537/80000000 : ℚ), (-1982905206203/1000000000000 : ℚ), 5⟩,
    ⟨(73437303493/250000000000 : ℚ), (45372569263/10000000000 : ℚ), (-712134967211/500000000000 : ℚ), 4⟩,
    ⟨(37347676877/125000000000 : ℚ), (1637709873/500000000 : ℚ), (-262672532361/250000000000 : ℚ), 4⟩,
    ⟨(9508832081/31250000000 : ℚ), (6013419389/2500000000 : ℚ), (-78851346253/100000000000 : ℚ), 4⟩,
    ⟨(310199869027/1000000000000 : ℚ), (17829201469/10000000000 : ℚ), (-597389559059/1000000000000 : ℚ), 4⟩,
    ⟨(316476156039/1000000000000 : ℚ), (6620596187/5000000000 : ℚ), (-453712232347/1000000000000 : ℚ), 3⟩,
    ⟨(64610208711/200000000000 : ℚ), (4887393391/5000000000 : ℚ), (-68585590337/200000000000 : ℚ), 3⟩,
    ⟨(164930605907/500000000000 : ℚ), (7100672601/10000000000 : ℚ), (-31959032501/125000000000 : ℚ), 3⟩,
    ⟨(84210268793/250000000000 : ℚ), (5000753981/10000000000 : ℚ), (-185702111969/1000000000000 : ℚ), 3⟩,
    ⟨(34392341373/100000000000 : ℚ), (3326313657/10000000000 : ℚ), (-5149190053/40000000000 : ℚ), 3⟩,
    ⟨(70208004139/200000000000 : ℚ), (986703609/5000000000 : ℚ), (-81735334647/1000000000000 : ℚ), 3⟩,
    ⟨(89530589813/250000000000 : ℚ), (216959711/2500000000 : ℚ), (-8509231463/200000000000 : ℚ), 3⟩,
    ⟨(36510222261/100000000000 : ℚ), (-44314101/10000000000 : ℚ), (-957051923/100000000000 : ℚ), 3⟩,
    ⟨(371912390869/1000000000000 : ℚ), (-802847667/10000000000 : ℚ), (1837549109/100000000000 : ℚ), 3⟩,
    ⟨(75697455677/200000000000 : ℚ), (-287503661/2000000000 : ℚ), (2109181351/50000000000 : ℚ), 3⟩,
    ⟨(192381782699/500000000000 : ℚ), (-1970820353/10000000000 : ℚ), (195413881/3125000000 : ℚ), 3⟩,
    ⟨(48835100979/125000000000 : ℚ), (-1209955241/5000000000 : ℚ), (1249098711/15625000000 : ℚ), 2⟩,
    ⟨(24761376213/62500000000 : ℚ), (-559592841/2000000000 : ℚ), (47407266241/500000000000 : ℚ), 2⟩,
    ⟨(401214220453/1000000000000 : ℚ), (-3115146643/10000000000 : ℚ), (107459469427/1000000000000 : ℚ), 2⟩,
    ⟨(405728948117/1000000000000 : ℚ), (-3379316359/10000000000 : ℚ), (118117285723/1000000000000 : ℚ), 2⟩,
    ⟨(409682723107/1000000000000 : ℚ), (-3596541089/10000000000 : ℚ), (126973253417/1000000000000 : ℚ), 2⟩,
    ⟨(51629683551/125000000000 : ℚ), (-3771478413/10000000000 : ℚ), (67084623549/500000000000 : ℚ), 2⟩,
    ⟨(103940218997/250000000000 : ℚ), (-195382873/500000000 : ℚ), (27962476251/200000000000 : ℚ), 2⟩,
    ⟨(52228339743/125000000000 : ℚ), (-2003843173/5000000000 : ℚ), (35995369003/250000000000 : ℚ), 2⟩,
    ⟨(419215099089/1000000000000 : ℚ), (-16293609/40000000 : ℚ), (7336590513/50000000000 : ℚ), 2⟩,
    ⟨(52489081069/125000000000 : ℚ), (-2052987777/5000000000 : ℚ), (37024616681/250000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4110034027/10000000000 : ℚ), (74134452427/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (169272527779/500000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control499.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control499.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate499
