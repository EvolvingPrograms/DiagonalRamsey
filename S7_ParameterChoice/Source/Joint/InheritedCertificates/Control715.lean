import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate715
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(10225285201/40000000000 : ℚ), (3505717883719/2500000000 : ℚ), (-358932945286459/1000000000000 : ℚ), 13⟩,
    ⟨(256086263271/1000000000000 : ℚ), (1536159547017/10000000000 : ℚ), (-39628085823843/1000000000000 : ℚ), 10⟩,
    ⟨(256990156211/1000000000000 : ℚ), (539842919049/10000000000 : ℚ), (-7041778422083/500000000000 : ℚ), 8⟩,
    ⟨(258335103863/1000000000000 : ℚ), (33317454559/1250000000 : ℚ), (-7045600559401/1000000000000 : ℚ), 7⟩,
    ⟨(65027038411/250000000000 : ℚ), (77369513539/5000000000 : ℚ), (-4149123528853/1000000000000 : ℚ), 7⟩,
    ⟨(262292230117/1000000000000 : ℚ), (19713430799/2000000000 : ℚ), (-2682721126191/1000000000000 : ℚ), 6⟩,
    ⟨(264866299431/1000000000000 : ℚ), (66543958999/10000000000 : ℚ), (-1839106394461/1000000000000 : ℚ), 6⟩,
    ⟨(267805571891/1000000000000 : ℚ), (23326269303/5000000000 : ℚ), (-654799182283/500000000000 : ℚ), 5⟩,
    ⟨(271081740697/1000000000000 : ℚ), (33504436781/10000000000 : ℚ), (-59719059041/62500000000 : ℚ), 5⟩,
    ⟨(274663254553/1000000000000 : ℚ), (4878733727/2000000000 : ℚ), (-707012936189/1000000000000 : ℚ), 5⟩,
    ⟨(139257810761/500000000000 : ℚ), (4460450743/2500000000 : ℚ), (-525874790689/1000000000000 : ℚ), 4⟩,
    ⟨(70650435301/250000000000 : ℚ), (3246651087/2500000000 : ℚ), (-389713887113/1000000000000 : ℚ), 4⟩,
    ⟨(286882262033/1000000000000 : ℚ), (2324589041/2500000000 : ℚ), (-142366977091/500000000000 : ℚ), 4⟩,
    ⟨(291315960253/1000000000000 : ℚ), (804692441/1250000000 : ℚ), (-25257120009/125000000000 : ℚ), 4⟩,
    ⟨(295860136927/1000000000000 : ℚ), (2089384913/5000000000 : ℚ), (-135763344597/1000000000000 : ℚ), 4⟩,
    ⟨(6009420583/20000000000 : ℚ), (236796147/1000000000 : ℚ), (-81786824073/1000000000000 : ℚ), 4⟩,
    ⟨(76276057877/250000000000 : ℚ), (897119153/10000000000 : ℚ), (-3726299703/100000000000 : ℚ), 4⟩,
    ⟨(309715123731/1000000000000 : ℚ), (-19441627/625000000 : ℚ), (-1633203/12500000000 : ℚ), 4⟩,
    ⟨(62851860081/200000000000 : ℚ), (-656470031/5000000000 : ℚ), (7780083329/250000000000 : ℚ), 3⟩,
    ⟨(159346499313/500000000000 : ℚ), (-430040093/2000000000 : ℚ), (57613103031/1000000000000 : ℚ), 3⟩,
    ⟨(64594703891/200000000000 : ℚ), (-2854100881/10000000000 : ℚ), (2506040521/31250000000 : ℚ), 3⟩,
    ⟨(327059639137/1000000000000 : ℚ), (-3448313717/10000000000 : ℚ), (99503862619/1000000000000 : ℚ), 3⟩,
    ⟨(165456003053/500000000000 : ℚ), (-987729593/2500000000 : ℚ), (11603720427/100000000000 : ℚ), 3⟩,
    ⟨(334493519961/1000000000000 : ℚ), (-875161419/2000000000 : ℚ), (16271530767/125000000000 : ℚ), 3⟩,
    ⟨(337769688767/1000000000000 : ℚ), (-946739017/2000000000 : ℚ), (28440249149/200000000000 : ℚ), 3⟩,
    ⟨(85177240307/250000000000 : ℚ), (-314553531/625000000 : ℚ), (38087375149/250000000000 : ℚ), 3⟩,
    ⟨(171641515271/500000000000 : ℚ), (-5279666969/10000000000 : ℚ), (160790032129/1000000000000 : ℚ), 3⟩,
    ⟨(69093421403/200000000000 : ℚ), (-2739503437/5000000000 : ℚ), (167654640737/1000000000000 : ℚ), 3⟩,
    ⟨(86810039199/250000000000 : ℚ), (-2817281001/5000000000 : ℚ), (173042269161/1000000000000 : ℚ), 3⟩,
    ⟨(348585104447/1000000000000 : ℚ), (-2874523373/5000000000 : ℚ), (88512652523/500000000000 : ℚ), 3⟩,
    ⟨(349488997387/1000000000000 : ℚ), (-2912183407/5000000000 : ℚ), (2245678061/12500000000 : ℚ), 3⟩,
    ⟨(349943130633/1000000000000 : ℚ), (-1465433231/2500000000 : ℚ), (36192199323/200000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-2933195039/5000000000 : ℚ), (36224796747/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (437825649811/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control715.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control715.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate715
