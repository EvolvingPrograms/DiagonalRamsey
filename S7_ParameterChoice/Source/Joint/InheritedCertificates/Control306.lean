import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate306
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(146224047219/500000000000 : ℚ), (6289150891631/5000000000 : ℚ), (-184335340448601/500000000000 : ℚ), 12⟩,
    ⟨(146675331939/500000000000 : ℚ), (1372031258467/10000000000 : ℚ), (-5094914337561/125000000000 : ℚ), 8⟩,
    ⟨(295147110523/1000000000000 : ℚ), (7493914091/156250000 : ℚ), (-18157886699/1250000000 : ℚ), 7⟩,
    ⟨(297820133607/1000000000000 : ℚ), (1840552339/78125000 : ℚ), (-1824681134201/250000000000 : ℚ), 6⟩,
    ⟨(301343990459/1000000000000 : ℚ), (136206817917/10000000000 : ℚ), (-4324267086163/1000000000000 : ℚ), 5⟩,
    ⟨(305684744409/1000000000000 : ℚ), (21636708253/2500000000 : ℚ), (-2818445436623/1000000000000 : ℚ), 5⟩,
    ⟨(2486404733/8000000000 : ℚ), (11683730103/2000000000 : ℚ), (-976104539709/500000000000 : ℚ), 4⟩,
    ⟨(316642263701/1000000000000 : ℚ), (41074164567/10000000000 : ℚ), (-352138287253/250000000000 : ℚ), 4⟩,
    ⟨(161576751071/500000000000 : ℚ), (29701378707/10000000000 : ℚ), (-1045044095569/1000000000000 : ℚ), 4⟩,
    ⟨(165135800081/500000000000 : ℚ), (4377673373/2000000000 : ℚ), (-394992312029/500000000000 : ℚ), 3⟩,
    ⟨(168964003293/500000000000 : ℚ), (16320348797/10000000000 : ℚ), (-604094845133/1000000000000 : ℚ), 3⟩,
    ⟨(69209797207/200000000000 : ℚ), (12232595637/10000000000 : ℚ), (-11609863577/25000000000 : ℚ), 3⟩,
    ⟨(354556329037/1000000000000 : ℚ), (286149159/312500000 : ℚ), (-178358006287/500000000000 : ℚ), 3⟩,
    ⟨(363368105229/1000000000000 : ℚ), (1358758147/2000000000 : ℚ), (-271943077251/1000000000000 : ℚ), 3⟩,
    ⟨(372399452389/1000000000000 : ℚ), (4945909829/10000000000 : ℚ), (-203998272947/1000000000000 : ℚ), 3⟩,
    ⟨(190781696853/500000000000 : ℚ), (3478548877/10000000000 : ℚ), (-7435379827/50000000000 : ℚ), 3⟩,
    ⟨(390771675417/1000000000000 : ℚ), (459566423/2000000000 : ℚ), (-51565636773/500000000000 : ℚ), 2⟩,
    ⟨(79987123347/200000000000 : ℚ), (668444503/5000000000 : ℚ), (-16288512691/250000000000 : ℚ), 2⟩,
    ⟨(81793392779/200000000000 : ℚ), (273610081/5000000000 : ℚ), (-33226033897/1000000000000 : ℚ), 2⟩,
    ⟨(417778740087/1000000000000 : ℚ), (-106898249/10000000000 : ℚ), (-6193998601/1000000000000 : ℚ), 2⟩,
    ⟨(426286083089/1000000000000 : ℚ), (-652130787/10000000000 : ℚ), (840560887/50000000000 : ℚ), 2⟩,
    ⟨(217203531269/500000000000 : ℚ), (-1108604597/10000000000 : ℚ), (36451594203/1000000000000 : ℚ), 2⟩,
    ⟨(221031734481/500000000000 : ℚ), (-149165359/1000000000 : ℚ), (53235480449/1000000000000 : ℚ), 2⟩,
    ⟨(224590783491/500000000000 : ℚ), (-1813045187/10000000000 : ℚ), (105555603/1562500000 : ℚ), 2⟩,
    ⟨(455692805423/1000000000000 : ℚ), (-2081855913/10000000000 : ℚ), (39858184577/500000000000 : ℚ), 2⟩,
    ⟨(461534477499/1000000000000 : ℚ), (-230510429/1000000000 : ℚ), (17990814041/200000000000 : ℚ), 2⟩,
    ⟨(93330064943/200000000000 : ℚ), (-2488212983/10000000000 : ℚ), (12306442283/125000000000 : ℚ), 2⟩,
    ⟨(94198215733/200000000000 : ℚ), (-2635348633/10000000000 : ℚ), (1646082831/15625000000 : ℚ), 2⟩,
    ⟨(474514935517/1000000000000 : ℚ), (-1374836179/5000000000 : ℚ), (110753859931/1000000000000 : ℚ), 2⟩,
    ⟨(477187958601/1000000000000 : ℚ), (-708380871/2500000000 : ℚ), (7171492147/62500000000 : ℚ), 2⟩,
    ⟨(95796881049/200000000000 : ℚ), (-722137999/2500000000 : ℚ), (117374695881/1000000000000 : ℚ), 2⟩,
    ⟨(239943487343/500000000000 : ℚ), (-364476269/1250000000 : ℚ), (7417596703/62500000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-58384111/200000000 : ℚ), (29711126781/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (75853554873/250000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control306.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control306.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate306
