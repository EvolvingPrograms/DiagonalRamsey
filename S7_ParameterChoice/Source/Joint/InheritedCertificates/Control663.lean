import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate663
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(153162879547/250000000000 : ℚ), (3658115528803/2000000000 : ℚ), (-280452621277107/250000000000 : ℚ), 12⟩,
    ⟨(306776554339/500000000000 : ℚ), (1004414405709/5000000000 : ℚ), (-124036441150489/1000000000000 : ℚ), 9⟩,
    ⟨(9614806357/15625000000 : ℚ), (354569404029/5000000000 : ℚ), (-22107630260427/500000000000 : ℚ), 8⟩,
    ⟨(618017730701/1000000000000 : ℚ), (70474737091/2000000000 : ℚ), (-888986342917/40000000000 : ℚ), 7⟩,
    ⟨(124307553097/200000000000 : ℚ), (8252336041/400000000 : ℚ), (-13176098483641/1000000000000 : ℚ), 6⟩,
    ⟨(625873811339/1000000000000 : ℚ), (132855341623/10000000000 : ℚ), (-429844200823/50000000000 : ℚ), 6⟩,
    ⟨(630984109771/1000000000000 : ℚ), (90946314597/10000000000 : ℚ), (-5964368066121/1000000000000 : ℚ), 5⟩,
    ⟨(79602430727/125000000000 : ℚ), (12979897411/2000000000 : ℚ), (-269622600479/62500000000 : ℚ), 5⟩,
    ⟨(128664724399/200000000000 : ℚ), (23840124091/5000000000 : ℚ), (-1606129635971/500000000000 : ℚ), 4⟩,
    ⟨(325216999769/500000000000 : ℚ), (17877075507/5000000000 : ℚ), (-610271714207/250000000000 : ℚ), 4⟩,
    ⟨(329041050811/500000000000 : ℚ), (27188857047/10000000000 : ℚ), (-940451506597/500000000000 : ℚ), 4⟩,
    ⟨(333097136421/500000000000 : ℚ), (5214108749/2500000000 : ℚ), (-1461755183713/1000000000000 : ℚ), 4⟩,
    ⟨(134938477711/200000000000 : ℚ), (125493347/78125000 : ℚ), (-285124271503/250000000000 : ℚ), 4⟩,
    ⟨(341747303631/500000000000 : ℚ), (2472736219/2000000000 : ℚ), (-222336143357/250000000000 : ℚ), 3⟩,
    ⟨(10820564981/15625000000 : ℚ), (295682119/312500000 : ℚ), (-689751091501/1000000000000 : ℚ), 3⟩,
    ⟨(701670160649/1000000000000 : ℚ), (1430911029/2000000000 : ℚ), (-264476817433/500000000000 : ℚ), 3⟩,
    ⟨(142173690963/200000000000 : ℚ), (2649536841/5000000000 : ℚ), (-397936916491/1000000000000 : ℚ), 3⟩,
    ⟨(720022456679/1000000000000 : ℚ), (3792713747/10000000000 : ℚ), (-145093709451/500000000000 : ℚ), 3⟩,
    ⟨(364522004101/500000000000 : ℚ), (2560221533/10000000000 : ℚ), (-100452858697/500000000000 : ℚ), 3⟩,
    ⟨(184461556727/250000000000 : ℚ), (772755303/5000000000 : ℚ), (-5059771641/40000000000 : ℚ), 3⟩,
    ⟨(373172171311/500000000000 : ℚ), (706172829/10000000000 : ℚ), (-3210808819/50000000000 : ℚ), 3⟩,
    ⟨(377228256921/500000000000 : ℚ), (4872931/5000000000 : ℚ), (-1495316631/125000000000 : ℚ), 3⟩,
    ⟨(381052307963/500000000000 : ℚ), (-284436783/5000000000 : ℚ), (7977160483/250000000000 : ℚ), 3⟩,
    ⟨(769214993469/1000000000000 : ℚ), (-41970103/400000000 : ℚ), (68686296863/1000000000000 : ℚ), 3⟩,
    ⟨(48482448103/62500000000 : ℚ), (-144672583/1000000000 : ℚ), (99387772667/1000000000000 : ℚ), 3⟩,
    ⟨(781554505693/1000000000000 : ℚ), (-88666999/500000000 : ℚ), (24963571413/200000000000 : ℚ), 3⟩,
    ⟨(6293318433/8000000000 : ℚ), (-1019272669/5000000000 : ℚ), (145612080079/1000000000000 : ℚ), 3⟩,
    ⟨(791000849979/1000000000000 : ℚ), (-1124853367/5000000000 : ℚ), (81134372259/500000000000 : ℚ), 3⟩,
    ⟨(397260442381/500000000000 : ℚ), (-482496497/2000000000 : ℚ), (87586375027/500000000000 : ℚ), 3⟩,
    ⟨(99648876077/125000000000 : ℚ), (-1265552399/5000000000 : ℚ), (184613286967/1000000000000 : ℚ), 3⟩,
    ⟨(399492753393/500000000000 : ℚ), (-104343363/400000000 : ℚ), (95398395341/500000000000 : ℚ), 3⟩,
    ⟨(199971774319/250000000000 : ℚ), (-661712971/2500000000 : ℚ), (96928027489/500000000000 : ℚ), 3⟩,
    ⟨(4/5 : ℚ), (-2651613457/10000000000 : ℚ), (97118476977/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (3480966189/20000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control663.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control663.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate663
