import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate895
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(357826835483/500000000000 : ℚ), (1758946678917/1250000000 : ℚ), (-40298577499617/40000000000 : ℚ), 15⟩,
    ⟨(358029788417/500000000000 : ℚ), (387388872979/2500000000 : ℚ), (-111228039159679/1000000000000 : ℚ), 12⟩,
    ⟨(28674699179/40000000000 : ℚ), (274324734499/5000000000 : ℚ), (-39530047993581/1000000000000 : ℚ), 10⟩,
    ⟨(89758699793/125000000000 : ℚ), (273292514957/10000000000 : ℚ), (-1977768928877/100000000000 : ℚ), 9⟩,
    ⟨(719654356379/1000000000000 : ℚ), (160215124539/10000000000 : ℚ), (-2330091783767/200000000000 : ℚ), 9⟩,
    ⟨(144321298299/200000000000 : ℚ), (103135659441/10000000000 : ℚ), (-942233540739/125000000000 : ℚ), 8⟩,
    ⟨(180976800891/250000000000 : ℚ), (176058493/25000000 : ℚ), (-2586987462357/500000000000 : ℚ), 8⟩,
    ⟨(726534335469/1000000000000 : ℚ), (4998983519/1000000000 : ℚ), (-923084444681/250000000000 : ℚ), 7⟩,
    ⟨(5698926457/7812500000 : ℚ), (9101660543/2500000000 : ℚ), (-1351821051839/500000000000 : ℚ), 7⟩,
    ⟨(146532751197/200000000000 : ℚ), (13471522039/5000000000 : ℚ), (-125743718819/62500000000 : ℚ), 7⟩,
    ⟨(184026753731/250000000000 : ℚ), (10051945097/5000000000 : ℚ), (-1509715357011/1000000000000 : ℚ), 6⟩,
    ⟨(23117475089/31250000000 : ℚ), (1501493073/1000000000 : ℚ), (-567118005999/500000000000 : ℚ), 6⟩,
    ⟨(743585147191/1000000000000 : ℚ), (5568683047/5000000000 : ℚ), (-33867404381/40000000000 : ℚ), 6⟩,
    ⟨(747548002017/1000000000000 : ℚ), (8124520797/10000000000 : ℚ), (-3110422989/5000000000 : ℚ), 6⟩,
    ⟨(187902400717/250000000000 : ℚ), (1149035651/2000000000 : ℚ), (-443754097243/1000000000000 : ℚ), 6⟩,
    ⟨(755730834307/1000000000000 : ℚ), (960092377/2500000000 : ℚ), (-150104551963/500000000000 : ℚ), 6⟩,
    ⟨(379936003311/500000000000 : ℚ), (574480469/2500000000 : ℚ), (-18333315251/100000000000 : ℚ), 5⟩,
    ⟨(763993238061/1000000000000 : ℚ), (1036894989/10000000000 : ℚ), (-5453719657/62500000000 : ℚ), 5⟩,
    ⟨(6000428429/7812500000 : ℚ), (-2249831/10000000000 : ℚ), (-14969759/1953125000 : ℚ), 5⟩,
    ⟨(386008846869/500000000000 : ℚ), (-6750283/78125000 : ℚ), (58691762793/1000000000000 : ℚ), 5⟩,
    ⟨(2424511369/3125000000 : ℚ), (-1582226053/10000000000 : ℚ), (22854295993/200000000000 : ℚ), 5⟩,
    ⟨(155899165201/200000000000 : ℚ), (-68209843/312500000 : ℚ), (160967394939/1000000000000 : ℚ), 5⟩,
    ⟨(48933692809/62500000000 : ℚ), (-1342771651/5000000000 : ℚ), (200247609121/1000000000000 : ℚ), 5⟩,
    ⟨(786140254433/1000000000000 : ℚ), (-3106318189/10000000000 : ℚ), (233257960423/1000000000000 : ℚ), 5⟩,
    ⟨(39453425273/50000000000 : ℚ), (-432154609/1250000000 : ℚ), (260895731969/1000000000000 : ℚ), 5⟩,
    ⟨(158339127473/200000000000 : ℚ), (-234239677/625000000 : ℚ), (70965900667/250000000000 : ℚ), 5⟩,
    ⟨(793996349433/1000000000000 : ℚ), (-996385263/2500000000 : ℚ), (151354880349/500000000000 : ℚ), 5⟩,
    ⟨(15918969691/20000000000 : ℚ), (-4176095331/10000000000 : ℚ), (317858141497/1000000000000 : ℚ), 5⟩,
    ⟨(159506648517/200000000000 : ℚ), (-108096611/250000000 : ℚ), (164815715737/500000000000 : ℚ), 5⟩,
    ⟨(399367680727/500000000000 : ℚ), (-4432081499/10000000000 : ℚ), (338268573659/1000000000000 : ℚ), 5⟩,
    ⟨(159908652819/200000000000 : ℚ), (-900604889/2000000000 : ℚ), (343937893941/1000000000000 : ℚ), 5⟩,
    ⟨(799949169963/1000000000000 : ℚ), (-17727123/39062500 : ℚ), (21671657809/62500000000 : ℚ), 5⟩,
    ⟨(4/5 : ℚ), (-1135629261/2500000000 : ℚ), (347096398261/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (235210683217/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control895.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control895.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate895
