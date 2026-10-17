import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate566
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(36873737573/125000000000 : ℚ), (1612112564567/1000000000 : ℚ), (-47626360042069/100000000000 : ℚ), 12⟩,
    ⟨(14779574781/50000000000 : ℚ), (1764815643623/10000000000 : ℚ), (-13151996569633/250000000000 : ℚ), 9⟩,
    ⟨(59357778401/200000000000 : ℚ), (123953980213/2000000000 : ℚ), (-9357695500803/500000000000 : ℚ), 8⟩,
    ⟨(59714111631/200000000000 : ℚ), (955850071/31250000 : ℚ), (-9377449876847/1000000000000 : ℚ), 7⟩,
    ⟨(75229833913/250000000000 : ℚ), (44395138563/2500000000 : ℚ), (-2767234090593/500000000000 : ℚ), 6⟩,
    ⟨(60762520897/200000000000 : ℚ), (28299079163/2500000000 : ℚ), (-717787337399/200000000000 : ℚ), 5⟩,
    ⟨(76805625223/250000000000 : ℚ), (38270571081/5000000000 : ℚ), (-2469741050729/1000000000000 : ℚ), 5⟩,
    ⟨(311116185709/1000000000000 : ℚ), (53808176177/10000000000 : ℚ), (-70692816271/40000000000 : ℚ), 5⟩,
    ⟨(315456160621/1000000000000 : ℚ), (38808220037/10000000000 : ℚ), (-1297656241869/1000000000000 : ℚ), 4⟩,
    ⟨(320200629297/1000000000000 : ℚ), (1777143753/625000000 : ℚ), (-968119093791/1000000000000 : ℚ), 4⟩,
    ⟨(325303899911/1000000000000 : ℚ), (20989631367/10000000000 : ℚ), (-363980565403/500000000000 : ℚ), 4⟩,
    ⟨(330716825177/1000000000000 : ℚ), (1548512909/1000000000 : ℚ), (-5474922877/10000000000 : ℚ), 4⟩,
    ⟨(67277455133/200000000000 : ℚ), (11313497487/10000000000 : ℚ), (-204203522443/500000000000 : ℚ), 4⟩,
    ⟨(171130320919/500000000000 : ℚ), (1010718497/1250000000 : ℚ), (-37365681807/125000000000 : ℚ), 3⟩,
    ⟨(348280359969/1000000000000 : ℚ), (5543842107/10000000000 : ℚ), (-105596413877/500000000000 : ℚ), 3⟩,
    ⟨(4429855711/12500000000 : ℚ), (3511505769/10000000000 : ℚ), (-69906631727/500000000000 : ℚ), 3⟩,
    ⟨(360526108261/1000000000000 : ℚ), (1865289189/10000000000 : ℚ), (-40492639283/500000000000 : ℚ), 3⟩,
    ⟨(366634205173/1000000000000 : ℚ), (64610913/1250000000 : ℚ), (-31972738437/1000000000000 : ℚ), 3⟩,
    ⟨(372653923303/1000000000000 : ℚ), (-598016993/10000000000 : ℚ), (576858451/62500000000 : ℚ), 3⟩,
    ⟨(94631822369/250000000000 : ℚ), (-190874421/1250000000 : ℚ), (44114504793/1000000000000 : ℚ), 3⟩,
    ⟨(76839547993/200000000000 : ℚ), (-2305694061/10000000000 : ℚ), (73806248929/1000000000000 : ℚ), 3⟩,
    ⟨(38961066523/100000000000 : ℚ), (-23133697/78125000 : ℚ), (19832238213/200000000000 : ℚ), 3⟩,
    ⟨(98678483961/250000000000 : ℚ), (-439235281/1250000000 : ℚ), (120836253493/1000000000000 : ℚ), 3⟩,
    ⟨(399458404521/1000000000000 : ℚ), (-3979866543/10000000000 : ℚ), (27867632533/200000000000 : ℚ), 3⟩,
    ⟨(403798379433/1000000000000 : ℚ), (-4371319777/10000000000 : ℚ), (77529458559/500000000000 : ℚ), 3⟩,
    ⟨(407692064249/1000000000000 : ℚ), (-469772161/1000000000 : ℚ), (168301801249/1000000000000 : ℚ), 3⟩,
    ⟨(411101960657/1000000000000 : ℚ), (-310399589/625000000 : ℚ), (44825178399/250000000000 : ℚ), 3⟩,
    ⟨(41399522949/100000000000 : ℚ), (-5182954457/10000000000 : ℚ), (188234667553/1000000000000 : ℚ), 3⟩,
    ⟨(416344006987/1000000000000 : ℚ), (-1337915171/2500000000 : ℚ), (3050604963/15625000000 : ℚ), 3⟩,
    ⟨(418125673137/1000000000000 : ℚ), (-684456923/1250000000 : ℚ), (50103039767/250000000000 : ℚ), 3⟩,
    ⟨(419323069521/1000000000000 : ℚ), (-173660973/312500000 : ℚ), (101912285197/500000000000 : ℚ), 3⟩,
    ⟨(209962332279/500000000000 : ℚ), (-1399389143/2500000000 : ℚ), (51380019283/250000000000 : ℚ), 3⟩,
    ⟨(21/50 : ℚ), (-5602591387/10000000000 : ℚ), (102865760199/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (315868177707/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control566.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control566.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate566
