import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate448
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(282475499961/1000000000000 : ℚ), (3339299359157/2500000000 : ℚ), (-189021104501321/500000000000 : ℚ), 12⟩,
    ⟨(70808391593/250000000000 : ℚ), (58360845173/400000000 : ℚ), (-10445472208161/250000000000 : ℚ), 9⟩,
    ⟨(1423711993/5000000000 : ℚ), (255467886689/5000000000 : ℚ), (-14880930877967/1000000000000 : ℚ), 7⟩,
    ⟨(57397493153/200000000000 : ℚ), (10057584389/400000000 : ℚ), (-7469273377019/1000000000000 : ℚ), 6⟩,
    ⟨(72486786661/250000000000 : ℚ), (29121915807/2000000000 : ℚ), (-441901762687/100000000000 : ℚ), 6⟩,
    ⟨(73398234473/250000000000 : ℚ), (23159794051/2500000000 : ℚ), (-574955677459/200000000000 : ℚ), 5⟩,
    ⟨(148944864273/500000000000 : ℚ), (62576077553/10000000000 : ℚ), (-79455960581/40000000000 : ℚ), 5⟩,
    ⟨(302796138163/1000000000000 : ℚ), (43996601727/10000000000 : ℚ), (-1428805646011/1000000000000 : ℚ), 4⟩,
    ⟨(308264915337/1000000000000 : ℚ), (1589190497/500000000 : ℚ), (-1055940306619/1000000000000 : ℚ), 4⟩,
    ⟨(314243392753/1000000000000 : ℚ), (23371413379/10000000000 : ℚ), (-99285249357/125000000000 : ℚ), 4⟩,
    ⟨(320673994407/1000000000000 : ℚ), (8679745023/5000000000 : ℚ), (-3772200821/6250000000 : ℚ), 3⟩,
    ⟨(327494790089/1000000000000 : ℚ), (6466549609/5000000000 : ℚ), (-115046608129/250000000000 : ℚ), 3⟩,
    ⟨(334640091807/1000000000000 : ℚ), (4796330153/5000000000 : ℚ), (-69931427429/200000000000 : ℚ), 3⟩,
    ⟨(342041086401/1000000000000 : ℚ), (438672747/625000000 : ℚ), (-65654080233/250000000000 : ℚ), 3⟩,
    ⟨(174813249123/500000000000 : ℚ), (2499983419/5000000000 : ℚ), (-3012998593/15625000000 : ℚ), 3⟩,
    ⟨(2233270473/6250000000 : ℚ), (1696078837/5000000000 : ℚ), (-8501476083/62500000000 : ℚ), 3⟩,
    ⟨(5704020227/15625000000 : ℚ), (1047331307/5000000000 : ℚ), (-2786773989/31250000000 : ℚ), 3⟩,
    ⟨(186377035981/500000000000 : ℚ), (1035657599/10000000000 : ℚ), (-12530562531/250000000000 : ℚ), 3⟩,
    ⟨(11885608869/31250000000 : ℚ), (162970121/10000000000 : ℚ), (-3454167707/200000000000 : ℚ), 3⟩,
    ⟨(387740478401/1000000000000 : ℚ), (-561886097/10000000000 : ℚ), (1055972961/100000000000 : ℚ), 3⟩,
    ⟨(9872144503/25000000000 : ℚ), (-46707053/400000000 : ℚ), (34260184277/1000000000000 : ℚ), 2⟩,
    ⟨(401706575801/1000000000000 : ℚ), (-1676138511/10000000000 : ℚ), (13627134749/250000000000 : ℚ), 2⟩,
    ⟨(81627435491/200000000000 : ℚ), (-2103848749/10000000000 : ℚ), (35912505433/500000000000 : ℚ), 2⟩,
    ⟨(414115654871/1000000000000 : ℚ), (-2463535441/10000000000 : ℚ), (2165275063/25000000000 : ℚ), 2⟩,
    ⟨(83916886409/200000000000 : ℚ), (-2765019079/10000000000 : ℚ), (99177234183/1000000000000 : ℚ), 2⟩,
    ⟨(212245420831/500000000000 : ℚ), (-753973263/2500000000 : ℚ), (109764348573/1000000000000 : ℚ), 2⟩,
    ⟨(107196908079/250000000000 : ℚ), (-3222022021/10000000000 : ℚ), (59279094791/500000000000 : ℚ), 2⟩,
    ⟨(108108355891/250000000000 : ℚ), (-3387909409/10000000000 : ℚ), (125701235157/1000000000000 : ℚ), 2⟩,
    ⟨(435393104443/1000000000000 : ℚ), (-1758484531/5000000000 : ℚ), (131301185339/1000000000000 : ℚ), 2⟩,
    ⟨(54704771451/125000000000 : ℚ), (-3611725069/10000000000 : ℚ), (27087476801/200000000000 : ℚ), 2⟩,
    ⟨(109786750959/250000000000 : ℚ), (-3673956189/10000000000 : ℚ), (138165535811/1000000000000 : ℚ), 2⟩,
    ⟨(439905070247/1000000000000 : ℚ), (-3704795991/10000000000 : ℚ), (69760511813/500000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3708638187/10000000000 : ℚ), (139690062007/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (328963628883/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control448.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control448.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate448
