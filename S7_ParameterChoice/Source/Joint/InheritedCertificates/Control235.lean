import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate235
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6974319473/31250000000 : ℚ), (2674147457021/2500000000 : ℚ), (-239375141414069/1000000000000 : ℚ), 11⟩,
    ⟨(224029155211/1000000000000 : ℚ), (1163534911183/10000000000 : ℚ), (-6617217520911/250000000000 : ℚ), 8⟩,
    ⟨(225722824421/1000000000000 : ℚ), (405171468833/10000000000 : ℚ), (-1887248391521/200000000000 : ℚ), 7⟩,
    ⟨(57060729951/250000000000 : ℚ), (198169270467/10000000000 : ℚ), (-1185853872489/250000000000 : ℚ), 6⟩,
    ⟨(115782585733/500000000000 : ℚ), (114059541483/10000000000 : ℚ), (-35150285619/12500000000 : ℚ), 5⟩,
    ⟨(117828792153/500000000000 : ℚ), (36075810893/5000000000 : ℚ), (-1834148379787/1000000000000 : ℚ), 5⟩,
    ⟨(240480746151/1000000000000 : ℚ), (48491422833/10000000000 : ℚ), (-635752523983/500000000000 : ℚ), 4⟩,
    ⟨(61497051829/250000000000 : ℚ), (16976638371/5000000000 : ℚ), (-28695847997/31250000000 : ℚ), 4⟩,
    ⟨(12606346397/50000000000 : ℚ), (4891069917/2000000000 : ℚ), (-681955162461/1000000000000 : ℚ), 3⟩,
    ⟨(129418894393/500000000000 : ℚ), (8977030359/5000000000 : ℚ), (-258009009059/500000000000 : ℚ), 3⟩,
    ⟨(133028080299/500000000000 : ℚ), (13337009229/10000000000 : ℚ), (-96424169/244140625 : ℚ), 3⟩,
    ⟨(68428131627/250000000000 : ℚ), (9958300113/10000000000 : ℚ), (-30384290663/100000000000 : ℚ), 3⟩,
    ⟨(140866575763/500000000000 : ℚ), (7423194809/10000000000 : ℚ), (-58372698481/250000000000 : ℚ), 3⟩,
    ⟨(290040792651/1000000000000 : ℚ), (5480214843/10000000000 : ℚ), (-177981952323/1000000000000 : ℚ), 3⟩,
    ⟨(59711088551/200000000000 : ℚ), (792712377/2000000000 : ℚ), (-133374959889/1000000000000 : ℚ), 3⟩,
    ⟨(61439020221/200000000000 : ℚ), (690186341/2500000000 : ℚ), (-6060305037/62500000000 : ℚ), 2⟩,
    ⟨(157938281533/500000000000 : ℚ), (1793567727/10000000000 : ℚ), (-66848630057/1000000000000 : ℚ), 2⟩,
    ⟨(40564527677/125000000000 : ℚ), (503265951/5000000000 : ℚ), (-20829420383/500000000000 : ℚ), 2⟩,
    ⟨(2081442947/6250000000 : ℚ), (71908781/2000000000 : ℚ), (-4079094151/200000000000 : ℚ), 2⟩,
    ⟨(68267702529/200000000000 : ℚ), (-88405013/5000000000 : ℚ), (-2316155203/1000000000000 : ℚ), 2⟩,
    ⟨(349359137663/1000000000000 : ℚ), (-624394987/10000000000 : ℚ), (3284256581/250000000000 : ℚ), 2⟩,
    ⟨(357015503573/1000000000000 : ℚ), (-999648419/10000000000 : ℚ), (26387579421/1000000000000 : ℚ), 2⟩,
    ⟨(72846775077/200000000000 : ℚ), (-1315043809/10000000000 : ℚ), (37759473467/1000000000000 : ℚ), 2⟩,
    ⟨(46368092029/125000000000 : ℚ), (-1580117549/10000000000 : ℚ), (11875476149/250000000000 : ℚ), 2⟩,
    ⟨(75416691371/200000000000 : ℚ), (-1802199767/10000000000 : ℚ), (55807166317/1000000000000 : ℚ), 2⟩,
    ⟨(382590918021/1000000000000 : ℚ), (-99347043/500000000 : ℚ), (31411864767/500000000000 : ℚ), 2⟩,
    ⟨(193707039933/500000000000 : ℚ), (-213869459/1000000000 : ℚ), (68665929707/1000000000000 : ℚ), 2⟩,
    ⟨(78301298541/200000000000 : ℚ), (-1130399337/5000000000 : ℚ), (36710599941/500000000000 : ℚ), 2⟩,
    ⟨(394828744367/1000000000000 : ℚ), (-2355780731/10000000000 : ℚ), (77155487853/1000000000000 : ℚ), 2⟩,
    ⟨(1589395359/4000000000 : ℚ), (-2425508683/10000000000 : ℚ), (9989661633/125000000000 : ℚ), 2⟩,
    ⟨(2494015681/6250000000 : ℚ), (-247129871/1000000000 : ℚ), (10217577529/125000000000 : ℚ), 2⟩,
    ⟨(79978688207/200000000000 : ℚ), (-1246994821/5000000000 : ℚ), (8264704881/100000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-2496816551/10000000000 : ℚ), (82760110129/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (84687857639/250000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control235.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control235.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate235
