import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate149
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(287393284993/1000000000000 : ℚ), (9948369354769/10000000000 : ℚ), (-143402581627819/500000000000 : ℚ), 11⟩,
    ⟨(288657046057/1000000000000 : ℚ), (539985418217/5000000000 : ℚ), (-15863588227171/500000000000 : ℚ), 8⟩,
    ⟨(291172397477/1000000000000 : ℚ), (1875468037/50000000 : ℚ), (-1415118912141/125000000000 : ℚ), 6⟩,
    ⟨(147457557521/500000000000 : ℚ), (4574239513/250000000 : ℚ), (-5698838280033/1000000000000 : ℚ), 5⟩,
    ⟨(299849154337/1000000000000 : ℚ), (52531024017/5000000000 : ℚ), (-3385211579151/1000000000000 : ℚ), 5⟩,
    ⟨(152963498933/500000000000 : ℚ), (66343419847/10000000000 : ℚ), (-276755396251/125000000000 : ℚ), 4⟩,
    ⟨(313090112673/1000000000000 : ℚ), (44550926807/10000000000 : ℚ), (-770208541697/500000000000 : ℚ), 4⟩,
    ⟨(321269514047/1000000000000 : ℚ), (7802029079/2500000000 : ℚ), (-558865671567/500000000000 : ℚ), 3⟩,
    ⟨(165193214941/500000000000 : ℚ), (22526239283/10000000000 : ℚ), (-417590790889/500000000000 : ℚ), 3⟩,
    ⟨(340353059293/1000000000000 : ℚ), (8305045497/5000000000 : ℚ), (-79623683701/125000000000 : ℚ), 3⟩,
    ⟨(21942088637/62500000000 : ℚ), (12429108691/10000000000 : ℚ), (-492595184557/1000000000000 : ℚ), 3⟩,
    ⟨(181222131831/500000000000 : ℚ), (4692823521/5000000000 : ℚ), (-192059840327/500000000000 : ℚ), 3⟩,
    ⟨(74871217649/200000000000 : ℚ), (1778742403/2500000000 : ℚ), (-150270215279/500000000000 : ℚ), 2⟩,
    ⟨(386694174559/1000000000000 : ℚ), (5385078297/10000000000 : ℚ), (-2934570251/12500000000 : ℚ), 2⟩,
    ⟨(399339700087/1000000000000 : ℚ), (4043280437/10000000000 : ℚ), (-91034078593/500000000000 : ℚ), 2⟩,
    ⟨(412170881507/1000000000000 : ℚ), (746540999/2500000000 : ℚ), (-139202303263/1000000000000 : ℚ), 2⟩,
    ⟨(425064147527/1000000000000 : ℚ), (2141973171/10000000000 : ℚ), (-324633791/3125000000 : ℚ), 2⟩,
    ⟨(437895328947/1000000000000 : ℚ), (364968031/2500000000 : ℚ), (-37232988229/500000000000 : ℚ), 2⟩,
    ⟨(112635213619/250000000000 : ℚ), (903193353/10000000000 : ℚ), (-4974779993/100000000000 : ℚ), 2⟩,
    ⟨(46287894079/100000000000 : ℚ), (222536709/5000000000 : ℚ), (-5766521499/200000000000 : ℚ), 2⟩,
    ⟨(474790765373/1000000000000 : ℚ), (65563501/10000000000 : ℚ), (-11045312937/1000000000000 : ℚ), 2⟩,
    ⟨(486161610843/1000000000000 : ℚ), (-2503241/100000000 : ℚ), (4128466849/1000000000000 : ℚ), 2⟩,
    ⟨(248440984871/500000000000 : ℚ), (-2007661/39062500 : ℚ), (4271026883/250000000000 : ℚ), 2⟩,
    ⟨(506848599153/1000000000000 : ℚ), (-734045243/10000000000 : ℚ), (28127519459/1000000000000 : ℚ), 2⟩,
    ⟨(128991378747/250000000000 : ℚ), (-917267317/10000000000 : ℚ), (37496405547/1000000000000 : ℚ), 2⟩,
    ⟨(262072458181/500000000000 : ℚ), (-534396117/5000000000 : ℚ), (45375761029/1000000000000 : ℚ), 2⟩,
    ⟨(531308031169/1000000000000 : ℚ), (-596303247/5000000000 : ℚ), (25954649489/500000000000 : ℚ), 2⟩,
    ⟨(268692937349/500000000000 : ℚ), (-1291772371/10000000000 : ℚ), (572079361/10000000000 : ℚ), 2⟩,
    ⟨(542319913993/1000000000000 : ℚ), (-1368613793/10000000000 : ℚ), (15339028163/250000000000 : ℚ), 2⟩,
    ⟨(273031315779/500000000000 : ℚ), (-1424851681/10000000000 : ℚ), (6441647587/100000000000 : ℚ), 2⟩,
    ⟨(274288991489/500000000000 : ℚ), (-1461700847/10000000000 : ℚ), (33216644993/500000000000 : ℚ), 2⟩,
    ⟨(274920872021/500000000000 : ℚ), (-92496039/625000000 : ℚ), (1053668983/15625000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-741103671/5000000000 : ℚ), (16889921601/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (4384840701/15625000000 : ℚ)
  μ := (11/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control149.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control149.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate149
