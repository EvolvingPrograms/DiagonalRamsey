import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate391
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(54936095521/200000000000 : ℚ), (12717583895193/10000000000 : ℚ), (-87514773079217/250000000000 : ℚ), 12⟩,
    ⟨(275476056559/1000000000000 : ℚ), (1388091606287/10000000000 : ℚ), (-38694187890563/1000000000000 : ℚ), 9⟩,
    ⟨(277059552607/1000000000000 : ℚ), (242801935949/5000000000 : ℚ), (-861554076857/62500000000 : ℚ), 7⟩,
    ⟨(34926964477/125000000000 : ℚ), (119357811483/5000000000 : ℚ), (-6921925936947/1000000000000 : ℚ), 6⟩,
    ⟨(141260927523/500000000000 : ℚ), (27619645889/2000000000 : ℚ), (-819496429481/200000000000 : ℚ), 5⟩,
    ⟨(1789675353/6250000000 : ℚ), (21945158397/2500000000 : ℚ), (-2667549810669/1000000000000 : ℚ), 5⟩,
    ⟨(58171494341/200000000000 : ℚ), (59251985829/10000000000 : ℚ), (-1844914096211/1000000000000 : ℚ), 4⟩,
    ⟨(296006672587/1000000000000 : ℚ), (41640656973/10000000000 : ℚ), (-1328567931149/1000000000000 : ℚ), 4⟩,
    ⟨(75436517377/250000000000 : ℚ), (30078251761/10000000000 : ℚ), (-491633312303/500000000000 : ℚ), 4⟩,
    ⟨(308020388937/1000000000000 : ℚ), (22123911149/10000000000 : ℚ), (-740932286707/1000000000000 : ℚ), 4⟩,
    ⟨(78692301437/250000000000 : ℚ), (2055831337/1250000000 : ℚ), (-141067130259/250000000000 : ℚ), 3⟩,
    ⟨(321927525147/1000000000000 : ℚ), (12272020089/10000000000 : ℚ), (-431455987047/1000000000000 : ℚ), 3⟩,
    ⟨(82356602151/250000000000 : ℚ), (4562760483/5000000000 : ℚ), (-329043052613/1000000000000 : ℚ), 3⟩,
    ⟨(337193637773/1000000000000 : ℚ), (3351986903/5000000000 : ℚ), (-31046827901/125000000000 : ℚ), 3⟩,
    ⟨(34515440999/100000000000 : ℚ), (4806824791/10000000000 : ℚ), (-45920233441/250000000000 : ℚ), 3⟩,
    ⟨(353232058667/1000000000000 : ℚ), (1648747463/5000000000 : ℚ), (-130999631393/1000000000000 : ℚ), 3⟩,
    ⟨(22584299477/62500000000 : ℚ), (416131229/2000000000 : ℚ), (-21885090037/250000000000 : ℚ), 3⟩,
    ⟨(36942644031/100000000000 : ℚ), (1088361643/10000000000 : ℚ), (-51295770921/1000000000000 : ℚ), 3⟩,
    ⟨(377387212527/1000000000000 : ℚ), (271302867/10000000000 : ℚ), (-20795470873/1000000000000 : ℚ), 2⟩,
    ⟨(77030888339/200000000000 : ℚ), (-406858591/10000000000 : ℚ), (631766491/125000000000 : ℚ), 2⟩,
    ⟨(12270416411/31250000000 : ℚ), (-973257037/10000000000 : ℚ), (27076745641/1000000000000 : ℚ), 2⟩,
    ⟨(399811644551/1000000000000 : ℚ), (-1448379703/10000000000 : ℚ), (45899201313/1000000000000 : ℚ), 2⟩,
    ⟨(406560461363/1000000000000 : ℚ), (-369567289/2000000000 : ℚ), (15500581561/250000000000 : ℚ), 2⟩,
    ⟨(51604347599/125000000000 : ℚ), (-2183605461/10000000000 : ℚ), (15151410161/200000000000 : ℚ), 2⟩,
    ⟨(418574177713/1000000000000 : ℚ), (-616230831/2500000000 : ℚ), (21862615767/250000000000 : ℚ), 2⟩,
    ⟨(84744675719/200000000000 : ℚ), (-674732259/2500000000 : ℚ), (24326221249/250000000000 : ℚ), 2⟩,
    ⟨(21411639691/50000000000 : ℚ), (-2891134931/10000000000 : ℚ), (52746006143/500000000000 : ℚ), 2⟩,
    ⟨(432058995253/1000000000000 : ℚ), (-3045773421/10000000000 : ℚ), (14017935927/125000000000 : ℚ), 2⟩,
    ⟨(108791283621/250000000000 : ℚ), (-3166052943/10000000000 : ℚ), (58679417601/500000000000 : ℚ), 2⟩,
    ⟨(437521297693/1000000000000 : ℚ), (-3254345949/10000000000 : ℚ), (121211392193/1000000000000 : ℚ), 2⟩,
    ⟨(439104793741/1000000000000 : ℚ), (-103510143/312500000 : ℚ), (4950106277/40000000000 : ℚ), 2⟩,
    ⟨(87980074539/200000000000 : ℚ), (-3341054597/10000000000 : ℚ), (12501534703/100000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3344633833/10000000000 : ℚ), (31293203897/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (330946585551/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control391.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control391.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate391
