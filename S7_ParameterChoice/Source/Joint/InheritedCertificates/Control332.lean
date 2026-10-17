import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate332
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(65653281023/250000000000 : ℚ), (7713368737803/5000000000 : ℚ), (-1268331174621/3125000000 : ℚ), 12⟩,
    ⟨(10530971231/40000000000 : ℚ), (1685929312697/10000000000 : ℚ), (-87592036781/1953125000 : ℚ), 9⟩,
    ⟨(6614755671/25000000000 : ℚ), (4615214421/78125000 : ℚ), (-1596544028061/100000000000 : ℚ), 7⟩,
    ⟨(16659268063/62500000000 : ℚ), (290867207711/10000000000 : ℚ), (-8008019342791/1000000000000 : ℚ), 6⟩,
    ⟨(26912961007/100000000000 : ℚ), (84248973839/5000000000 : ℚ), (-2366554447887/500000000000 : ℚ), 6⟩,
    ⟨(68077332623/250000000000 : ℚ), (21441044267/2000000000 : ℚ), (-1537542185959/500000000000 : ℚ), 5⟩,
    ⟨(276056827829/1000000000000 : ℚ), (72388762611/10000000000 : ℚ), (-265149106471/125000000000 : ℚ), 5⟩,
    ⟨(17521000727/62500000000 : ℚ), (50850051513/10000000000 : ℚ), (-1522425607193/1000000000000 : ℚ), 4⟩,
    ⟨(285105671023/1000000000000 : ℚ), (4584498491/1250000000 : ℚ), (-1121970683809/1000000000000 : ℚ), 4⟩,
    ⟨(11612794863/40000000000 : ℚ), (26900283511/10000000000 : ℚ), (-168178818709/200000000000 : ℚ), 4⟩,
    ⟨(73982099421/250000000000 : ℚ), (9952182551/5000000000 : ℚ), (-635952085647/1000000000000 : ℚ), 3⟩,
    ⟨(15093861809/50000000000 : ℚ), (7372853817/5000000000 : ℚ), (-15057690837/31250000000 : ℚ), 3⟩,
    ⟨(19256818531/62500000000 : ℚ), (10846312221/10000000000 : ℚ), (-362979750267/1000000000000 : ℚ), 3⟩,
    ⟨(314563962409/1000000000000 : ℚ), (7836489897/10000000000 : ℚ), (-269318126799/1000000000000 : ℚ), 3⟩,
    ⟨(321179670033/1000000000000 : ℚ), (5471414453/10000000000 : ℚ), (-48542979469/250000000000 : ℚ), 3⟩,
    ⟨(327892506487/1000000000000 : ℚ), (3584154579/10000000000 : ℚ), (-132947601621/1000000000000 : ℚ), 3⟩,
    ⟨(167318911743/500000000000 : ℚ), (257256191/1250000000 : ℚ), (-41205370873/500000000000 : ℚ), 3⟩,
    ⟨(17067532997/50000000000 : ℚ), (202460147/2500000000 : ℚ), (-40234987307/1000000000000 : ℚ), 3⟩,
    ⟨(86991591891/250000000000 : ℚ), (-220968297/10000000000 : ℚ), (-2358397859/500000000000 : ℚ), 3⟩,
    ⟨(354421233477/1000000000000 : ℚ), (-1079012803/10000000000 : ℚ), (12705132793/500000000000 : ℚ), 2⟩,
    ⟨(360653093793/1000000000000 : ℚ), (-449414529/2500000000 : ℚ), (25549751747/500000000000 : ℚ), 2⟩,
    ⟨(366601932289/1000000000000 : ℚ), (-2402118433/10000000000 : ℚ), (73075777223/1000000000000 : ℚ), 2⟩,
    ⟨(186105229199/500000000000 : ℚ), (-727904629/2500000000 : ℚ), (91894526503/1000000000000 : ℚ), 2⟩,
    ⟨(7548493179/20000000000 : ℚ), (-1670458669/5000000000 : ℚ), (26995921979/250000000000 : ℚ), 2⟩,
    ⟨(382194318341/1000000000000 : ℚ), (-29611187/80000000 : ℚ), (24334792331/200000000000 : ℚ), 2⟩,
    ⟨(6038648471/15625000000 : ℚ), (-4001859959/10000000000 : ℚ), (66610496337/500000000000 : ℚ), 2⟩,
    ⟨(390220999481/1000000000000 : ℚ), (-4249094213/10000000000 : ℚ), (4463182129/31250000000 : ℚ), 2⟩,
    ⟨(393400719903/1000000000000 : ℚ), (-556039271/1250000000 : ℚ), (9414202319/62500000000 : ℚ), 2⟩,
    ⟨(79196408193/200000000000 : ℚ), (-4603469649/10000000000 : ℚ), (7837548409/50000000000 : ℚ), 2⟩,
    ⟨(397940103133/1000000000000 : ℚ), (-943495941/2000000000 : ℚ), (161276673243/1000000000000 : ℚ), 2⟩,
    ⟨(199628024599/500000000000 : ℚ), (-4792400627/10000000000 : ℚ), (32852598419/200000000000 : ℚ), 2⟩,
    ⟨(399917205881/1000000000000 : ℚ), (-4829542459/10000000000 : ℚ), (82873564107/500000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-4834170423/10000000000 : ℚ), (165932227603/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (58765496513/200000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control332.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control332.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate332
