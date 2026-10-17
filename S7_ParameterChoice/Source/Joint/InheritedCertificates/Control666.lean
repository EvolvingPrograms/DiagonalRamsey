import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate666
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(519289001457/1000000000000 : ℚ), (8034500778737/5000000000 : ℚ), (-835482304312557/1000000000000 : ℚ), 12⟩,
    ⟨(65019831239/125000000000 : ℚ), (88140563227/500000000 : ℚ), (-11543569920693/125000000000 : ℚ), 9⟩,
    ⟨(32618098227/62500000000 : ℚ), (310579797643/5000000000 : ℚ), (-16449113362927/500000000000 : ℚ), 8⟩,
    ⟨(262232548447/500000000000 : ℚ), (4811368697/156250000 : ℚ), (-8259760723067/500000000000 : ℚ), 7⟩,
    ⟨(263930210991/500000000000 : ℚ), (179768183661/10000000000 : ℚ), (-1955968473867/200000000000 : ℚ), 6⟩,
    ⟨(26602142403/50000000000 : ℚ), (115369505199/10000000000 : ℚ), (-6368797677277/1000000000000 : ℚ), 6⟩,
    ⟨(268486048039/500000000000 : ℚ), (78658239853/10000000000 : ℚ), (-6886784223/1562500000 : ℚ), 5⟩,
    ⟨(542600694683/1000000000000 : ℚ), (27931268727/5000000000 : ℚ), (-158882916437/50000000000 : ℚ), 5⟩,
    ⟨(274437218697/500000000000 : ℚ), (20403029253/5000000000 : ℚ), (-147271982641/62500000000 : ℚ), 5⟩,
    ⟨(277866452319/500000000000 : ℚ), (30386490133/10000000000 : ℚ), (-44528242607/25000000000 : ℚ), 4⟩,
    ⟨(140777511407/250000000000 : ℚ), (4581670001/2000000000 : ℚ), (-681480714387/500000000000 : ℚ), 4⟩,
    ⟨(285467407231/500000000000 : ℚ), (17382389471/10000000000 : ℚ), (-524875054529/500000000000 : ℚ), 4⟩,
    ⟨(579131854339/1000000000000 : ℚ), (13200488923/10000000000 : ℚ), (-202341233689/250000000000 : ℚ), 4⟩,
    ⟨(146905555821/250000000000 : ℚ), (9972541727/10000000000 : ℚ), (-77639715641/125000000000 : ℚ), 4⟩,
    ⟨(596324154403/1000000000000 : ℚ), (7439271329/10000000000 : ℚ), (-29450098959/62500000000 : ℚ), 3⟩,
    ⟨(302576921671/500000000000 : ℚ), (5423131283/10000000000 : ℚ), (-350118518611/1000000000000 : ℚ), 3⟩,
    ⟨(61402625537/100000000000 : ℚ), (3799408837/10000000000 : ℚ), (-125581667299/500000000000 : ℚ), 3⟩,
    ⟨(62285594431/100000000000 : ℚ), (1239284109/5000000000 : ℚ), (-33899159087/200000000000 : ℚ), 3⟩,
    ⟨(631557875429/1000000000000 : ℚ), (1395106711/10000000000 : ℚ), (-101554071819/1000000000000 : ℚ), 3⟩,
    ⟨(320024122187/500000000000 : ℚ), (500320213/10000000000 : ℚ), (-2792081833/62500000000 : ℚ), 3⟩,
    ⟨(648245284251/1000000000000 : ℚ), (-121255383/5000000000 : ℚ), (63372767/20000000000 : ℚ), 3⟩,
    ⟨(131214010617/200000000000 : ℚ), (-6891161/80000000 : ℚ), (21762229581/500000000000 : ℚ), 3⟩,
    ⟨(331723597037/500000000000 : ℚ), (-275580283/2000000000 : ℚ), (38798877959/500000000000 : ℚ), 3⟩,
    ⟨(335152830659/500000000000 : ℚ), (-226094937/1250000000 : ℚ), (2658203991/25000000000 : ℚ), 3⟩,
    ⟨(676579404029/1000000000000 : ℚ), (-2167008097/10000000000 : ℚ), (32613118973/250000000000 : ℚ), 3⟩,
    ⟨(341104001317/500000000000 : ℚ), (-2462828337/10000000000 : ℚ), (150549250767/1000000000000 : ℚ), 3⟩,
    ⟨(171784312663/250000000000 : ℚ), (-13520781/50000000 : ℚ), (835358323/5000000000 : ℚ), 3⟩,
    ⟨(69131967673/100000000000 : ℚ), (-45267759/156250000 : ℚ), (180372061263/1000000000000 : ℚ), 3⟩,
    ⟨(347357500909/500000000000 : ℚ), (-3046461279/10000000000 : ℚ), (95360171473/500000000000 : ℚ), 3⟩,
    ⟨(17432263177/25000000000 : ℚ), (-3155619871/10000000000 : ℚ), (198317737239/1000000000000 : ℚ), 3⟩,
    ⟨(873776811/1250000000 : ℚ), (-3227082729/10000000000 : ℚ), (40661387577/200000000000 : ℚ), 3⟩,
    ⟨(139978219451/200000000000 : ℚ), (-1631214613/5000000000 : ℚ), (102889634077/500000000000 : ℚ), 3⟩,
    ⟨(7/10 : ℚ), (-1633414843/5000000000 : ℚ), (103043638207/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (237644549207/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control666.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control666.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate666
