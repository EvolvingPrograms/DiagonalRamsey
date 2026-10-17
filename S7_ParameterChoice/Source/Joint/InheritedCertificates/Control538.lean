import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate538
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(88045952431/500000000000 : ℚ), (8384956234791/5000000000 : ℚ), (-59147254723451/200000000000 : ℚ), 12⟩,
    ⟨(176447578071/1000000000000 : ℚ), (1835198373879/10000000000 : ℚ), (-32650276521747/1000000000000 : ℚ), 9⟩,
    ⟨(88577749581/500000000000 : ℚ), (321989055953/5000000000 : ℚ), (-580159005169/50000000000 : ℚ), 8⟩,
    ⟨(89104425233/500000000000 : ℚ), (158698754327/5000000000 : ℚ), (-5804215089011/1000000000000 : ℚ), 7⟩,
    ⟨(179597487637/1000000000000 : ℚ), (36780752147/2000000000 : ℚ), (-1708750666529/500000000000 : ℚ), 6⟩,
    ⟨(181308037337/1000000000000 : ℚ), (29223155991/2500000000 : ℚ), (-220902267171/100000000000 : ℚ), 6⟩,
    ⟨(4583100651/25000000000 : ℚ), (78727348827/10000000000 : ℚ), (-1513629450813/1000000000000 : ℚ), 5⟩,
    ⟨(185626038671/1000000000000 : ℚ), (55044311127/10000000000 : ℚ), (-134623823499/125000000000 : ℚ), 5⟩,
    ⟨(18819190559/100000000000 : ℚ), (39404729741/10000000000 : ℚ), (-784835027037/1000000000000 : ℚ), 4⟩,
    ⟨(190996916097/1000000000000 : ℚ), (14288199803/5000000000 : ℚ), (-57964391177/100000000000 : ℚ), 4⟩,
    ⟨(97007028203/500000000000 : ℚ), (2599279013/1250000000 : ℚ), (-26869187917/62500000000 : ℚ), 4⟩,
    ⟨(12325891863/62500000000 : ℚ), (15029428957/10000000000 : ℚ), (-158595657643/500000000000 : ℚ), 4⟩,
    ⟨(100283368249/500000000000 : ℚ), (2662604739/2500000000 : ℚ), (-115067064919/500000000000 : ℚ), 4⟩,
    ⟨(204039170389/1000000000000 : ℚ), (1813193627/2500000000 : ℚ), (-3228513371/20000000000 : ℚ), 3⟩,
    ⟨(51899532511/250000000000 : ℚ), (571040531/1250000000 : ℚ), (-21238860973/200000000000 : ℚ), 3⟩,
    ⟨(3300145949/15625000000 : ℚ), (241397717/1000000000 : ℚ), (-30547941489/500000000000 : ℚ), 3⟩,
    ⟨(214838024533/1000000000000 : ℚ), (165402433/2500000000 : ℚ), (-11888457343/500000000000 : ℚ), 3⟩,
    ⟨(8737969409/40000000000 : ℚ), (-195083021/2500000000 : ℚ), (3727013921/500000000000 : ℚ), 3⟩,
    ⟨(693775609/3125000000 : ℚ), (-1978444421/10000000000 : ℚ), (16917085513/500000000000 : ℚ), 3⟩,
    ⟨(225480628771/1000000000000 : ℚ), (-1490952407/5000000000 : ℚ), (56281854959/1000000000000 : ℚ), 3⟩,
    ⟨(11441654773/50000000000 : ℚ), (-1913745509/5000000000 : ℚ), (4717931387/62500000000 : ℚ), 3⟩,
    ⟨(116016654431/500000000000 : ℚ), (-2271498367/5000000000 : ℚ), (91972371053/1000000000000 : ℚ), 3⟩,
    ⟨(58762612293/250000000000 : ℚ), (-5149602543/10000000000 : ℚ), (10613764267/100000000000 : ℚ), 3⟩,
    ⟨(237855459679/1000000000000 : ℚ), (-2831775409/5000000000 : ℚ), (118289063039/1000000000000 : ℚ), 3⟩,
    ⟨(120210663299/500000000000 : ℚ), (-3048673733/5000000000 : ℚ), (128662115637/1000000000000 : ℚ), 3⟩,
    ⟨(242723339229/1000000000000 : ℚ), (-6460635827/10000000000 : ℚ), (137437716139/1000000000000 : ℚ), 3⟩,
    ⟨(244739327931/1000000000000 : ℚ), (-845104891/1250000000 : ℚ), (72377172309/500000000000 : ℚ), 3⟩,
    ⟨(1925389669/7812500000 : ℚ), (-7003636353/10000000000 : ℚ), (75358582199/500000000000 : ℚ), 3⟩,
    ⟨(123919257401/500000000000 : ℚ), (-1438663129/2000000000 : ℚ), (31080980771/200000000000 : ℚ), 3⟩,
    ⟨(248891866107/1000000000000 : ℚ), (-7333035421/10000000000 : ℚ), (158875026139/1000000000000 : ℚ), 3⟩,
    ⟨(249599787197/1000000000000 : ℚ), (-3712506929/5000000000 : ℚ), (161167541381/1000000000000 : ℚ), 3⟩,
    ⟨(124977730203/500000000000 : ℚ), (-3735330363/5000000000 : ℚ), (1623076969/10000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-7476350731/10000000000 : ℚ), (20306241793/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (195251765023/500000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control538.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control538.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate538
