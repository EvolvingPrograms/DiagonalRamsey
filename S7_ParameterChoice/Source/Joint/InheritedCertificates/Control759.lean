import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate759
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(104536468193/250000000000 : ℚ), (14450636480471/10000000000 : ℚ), (-302460875897437/500000000000 : ℚ), 13⟩,
    ⟨(418780403813/1000000000000 : ℚ), (49539384501/312500000 : ℚ), (-6681107941669/100000000000 : ℚ), 10⟩,
    ⟨(210021677507/500000000000 : ℚ), (558344372637/10000000000 : ℚ), (-23762314043163/1000000000000 : ℚ), 8⟩,
    ⟨(84384512693/200000000000 : ℚ), (276478064789/10000000000 : ℚ), (-11902053092073/1000000000000 : ℚ), 7⟩,
    ⟨(2652499571/6250000000 : ℚ), (80542405441/5000000000 : ℚ), (-7021415981551/1000000000000 : ℚ), 7⟩,
    ⟨(213725800147/500000000000 : ℚ), (20611205143/2000000000 : ℚ), (-4550985457119/1000000000000 : ℚ), 6⟩,
    ⟨(17241927241/40000000000 : ℚ), (13988659009/2000000000 : ℚ), (-39128393967/12500000000 : ℚ), 6⟩,
    ⟨(108788759129/250000000000 : ℚ), (616960761/125000000 : ℚ), (-279882807341/125000000000 : ℚ), 5⟩,
    ⟨(219866307751/500000000000 : ℚ), (35739264199/10000000000 : ℚ), (-410905086947/250000000000 : ℚ), 5⟩,
    ⟨(444736833397/1000000000000 : ℚ), (5259700169/2000000000 : ℚ), (-1226284537061/1000000000000 : ℚ), 5⟩,
    ⟨(90023899369/200000000000 : ℚ), (4877086689/2500000000 : ℚ), (-461294558067/500000000000 : ℚ), 5⟩,
    ⟨(28489297991/62500000000 : ℚ), (7239051457/5000000000 : ℚ), (-694813151387/1000000000000 : ℚ), 4⟩,
    ⟨(461809663029/1000000000000 : ℚ), (2665026139/2500000000 : ℚ), (-51969409997/100000000000 : ℚ), 4⟩,
    ⟨(468004583073/1000000000000 : ℚ), (7702953969/10000000000 : ℚ), (-95564040533/250000000000 : ℚ), 4⟩,
    ⟨(474353867523/1000000000000 : ℚ), (2686533813/5000000000 : ℚ), (-136253781397/500000000000 : ℚ), 4⟩,
    ⟨(480796369297/1000000000000 : ℚ), (702097601/2000000000 : ℚ), (-11473628853/62500000000 : ℚ), 4⟩,
    ⟨(487270043583/1000000000000 : ℚ), (62589833/312500000 : ℚ), (-55310645903/500000000000 : ℚ), 4⟩,
    ⟨(493712545357/1000000000000 : ℚ), (96201171/1250000000 : ℚ), (-50143036521/1000000000000 : ℚ), 4⟩,
    ⟨(500061829807/1000000000000 : ℚ), (-248238027/10000000000 : ℚ), (105857089/250000000000 : ℚ), 4⟩,
    ⟨(506256749851/1000000000000 : ℚ), (-547213033/5000000000 : ℚ), (21496769597/500000000000 : ℚ), 4⟩,
    ⟨(16007426407/31250000000 : ℚ), (-360376089/2000000000 : ℚ), (79015658279/1000000000000 : ℚ), 3⟩,
    ⟨(103589383207/200000000000 : ℚ), (-1197823857/5000000000 : ℚ), (4383868997/40000000000 : ℚ), 3⟩,
    ⟨(523329579483/1000000000000 : ℚ), (-2894946453/10000000000 : ℚ), (67794860789/500000000000 : ℚ), 3⟩,
    ⟨(264166898689/500000000000 : ℚ), (-3314617521/10000000000 : ℚ), (157655706837/1000000000000 : ℚ), 3⟩,
    ⟨(133227844091/250000000000 : ℚ), (-1833083101/5000000000 : ℚ), (44077144307/250000000000 : ℚ), 3⟩,
    ⟨(107403646371/200000000000 : ℚ), (-3958521981/10000000000 : ℚ), (95973941249/500000000000 : ℚ), 3⟩,
    ⟨(270307406293/500000000000 : ℚ), (-4198599289/10000000000 : ℚ), (204883221903/1000000000000 : ℚ), 3⟩,
    ⟨(6795831019/12500000000 : ℚ), (-878343029/2000000000 : ℚ), (53838145371/250000000000 : ℚ), 3⟩,
    ⟨(68267981177/125000000000 : ℚ), (-4541901511/10000000000 : ℚ), (223536196827/1000000000000 : ℚ), 3⟩,
    ⟨(274011528933/500000000000 : ℚ), (-2326069013/5000000000 : ℚ), (229567005831/1000000000000 : ℚ), 3⟩,
    ⟨(549286009067/1000000000000 : ℚ), (-1181130601/2500000000 : ℚ), (233538393483/1000000000000 : ℚ), 3⟩,
    ⟨(137480135027/250000000000 : ℚ), (-2380195007/5000000000 : ℚ), (235509687331/1000000000000 : ℚ), 3⟩,
    ⟨(11/20 : ℚ), (-4764858429/10000000000 : ℚ), (117877716187/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (42886536193/125000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control759.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control759.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate759
