import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate454
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(3783763633/12500000000 : ℚ), (14336480046853/10000000000 : ℚ), (-434755803468947/1000000000000 : ℚ), 12⟩,
    ⟨(12138322857/40000000000 : ℚ), (15670803707/100000000 : ℚ), (-2402339267749/50000000000 : ℚ), 9⟩,
    ⟨(60992948571/200000000000 : ℚ), (274649745389/5000000000 : ℚ), (-17109946125823/1000000000000 : ℚ), 7⟩,
    ⟨(153603297431/500000000000 : ℚ), (135302216633/5000000000 : ℚ), (-8586380763381/1000000000000 : ℚ), 6⟩,
    ⟨(62032407437/200000000000 : ℚ), (19609605251/1250000000 : ℚ), (-1269642714649/250000000000 : ℚ), 6⟩,
    ⟨(313802607299/1000000000000 : ℚ), (99912039577/10000000000 : ℚ), (-660548251553/200000000000 : ℚ), 5⟩,
    ⟨(318093244523/1000000000000 : ℚ), (8444363477/1250000000 : ℚ), (-285148405233/125000000000 : ℚ), 5⟩,
    ⟨(80748156919/250000000000 : ℚ), (47539407137/10000000000 : ℚ), (-1640064229389/1000000000000 : ℚ), 4⟩,
    ⟨(16422678651/50000000000 : ℚ), (17185023683/5000000000 : ℚ), (-1211400855531/1000000000000 : ℚ), 4⟩,
    ⟨(66884697733/200000000000 : ℚ), (2528991989/1000000000 : ℚ), (-910645125399/1000000000000 : ℚ), 4⟩,
    ⟨(17042244053/50000000000 : ℚ), (9397304329/5000000000 : ℚ), (-138294905803/200000000000 : ℚ), 4⟩,
    ⟨(347655908687/1000000000000 : ℚ), (28015969/20000000 : ℚ), (-526788210733/1000000000000 : ℚ), 3⟩,
    ⟨(177395488813/500000000000 : ℚ), (10392693987/10000000000 : ℚ), (-99969327997/250000000000 : ℚ), 3⟩,
    ⟨(362181373263/1000000000000 : ℚ), (7604980137/10000000000 : ℚ), (-299989684991/1000000000000 : ℚ), 3⟩,
    ⟨(369755922047/1000000000000 : ℚ), (5417131037/10000000000 : ℚ), (-13747266911/62500000000 : ℚ), 3⟩,
    ⟨(188720838467/500000000000 : ℚ), (1836915391/5000000000 : ℚ), (-19356552633/125000000000 : ℚ), 3⟩,
    ⟨(192582309951/500000000000 : ℚ), (226648759/1000000000 : ℚ), (-50604406961/500000000000 : ℚ), 3⟩,
    ⟨(392850374789/1000000000000 : ℚ), (1117558009/10000000000 : ℚ), (-56528424011/1000000000000 : ℚ), 3⟩,
    ⟨(400424923573/1000000000000 : ℚ), (170660273/10000000000 : ℚ), (-3796205319/200000000000 : ℚ), 3⟩,
    ⟨(40781531921/100000000000 : ℚ), (-76979907/1250000000 : ℚ), (6397811311/500000000000 : ℚ), 3⟩,
    ⟨(414950388149/1000000000000 : ℚ), (-636545343/5000000000 : ℚ), (39828492667/1000000000000 : ℚ), 2⟩,
    ⟨(13180044243/31250000000 : ℚ), (-182465879/1000000000 : ℚ), (62899872793/1000000000000 : ℚ), 2⟩,
    ⟨(428182808171/1000000000000 : ℚ), (-572132771/2500000000 : ℚ), (8261049113/100000000000 : ℚ), 2⟩,
    ⟨(54269090477/125000000000 : ℚ), (-2678533231/10000000000 : ℚ), (4971215217/50000000000 : ℚ), 2⟩,
    ⟨(10990341729/25000000000 : ℚ), (-1502670967/5000000000 : ℚ), (56850408249/500000000000 : ℚ), 2⟩,
    ⟨(55564131539/125000000000 : ℚ), (-3277219281/10000000000 : ℚ), (7857421569/62500000000 : ℚ), 2⟩,
    ⟨(448803689537/1000000000000 : ℚ), (-875137707/2500000000 : ℚ), (27138713783/200000000000 : ℚ), 2⟩,
    ⟨(452444259651/1000000000000 : ℚ), (-920060699/2500000000 : ℚ), (14379065913/100000000000 : ℚ), 2⟩,
    ⟨(227699850987/500000000000 : ℚ), (-1910008017/5000000000 : ℚ), (37533785997/250000000000 : ℚ), 2⟩,
    ⟨(457641553981/1000000000000 : ℚ), (-3922622529/10000000000 : ℚ), (483810277/3125000000 : ℚ), 2⟩,
    ⟨(459148225411/1000000000000 : ℚ), (-997500521/2500000000 : ℚ), (19738489677/125000000000 : ℚ), 2⟩,
    ⟨(114976301549/250000000000 : ℚ), (-125730971/312500000 : ℚ), (1594422287/10000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-805510151/2000000000 : ℚ), (159633554361/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (306425266501/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control454.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control454.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate454
