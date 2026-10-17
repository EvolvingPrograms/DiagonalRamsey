import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control891
namespace DiagonalRamsey.JointInheritedCertificate891
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(85220301917/1000000000000 : ℚ), (81244113559/1250000000 : ℚ), (-43499947147/7812500000 : ℚ), 11⟩,
    ⟨(17266885191/200000000000 : ℚ), (30120171063/5000000000 : ℚ), (-8284598819/15625000000 : ℚ), 8⟩,
    ⟨(11049132343/125000000000 : ℚ), (2770300563/2000000000 : ℚ), (-63225960329/500000000000 : ℚ), 7⟩,
    ⟨(18216558421/200000000000 : ℚ), (663883663/5000000000 : ℚ), (-14397774537/1000000000000 : ℚ), 6⟩,
    ⟨(23498534629/250000000000 : ℚ), (-3731817281/10000000000 : ℚ), (32328340857/1000000000000 : ℚ), 6⟩,
    ⟨(96683871877/1000000000000 : ℚ), (-6223010643/10000000000 : ℚ), (28026051129/500000000000 : ℚ), 6⟩,
    ⟨(49371252333/500000000000 : ℚ), (-3764827477/5000000000 : ℚ), (68813598769/1000000000000 : ℚ), 6⟩,
    ⟨(99856628703/1000000000000 : ℚ), (-101391909/125000000 : ℚ), (74589181417/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-255668501/312500000 : ℚ), (7528907127/100000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (887499/1000000 : ℚ)
  x := (791045004883/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem certOK : JointInheritedControls.control891.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control891.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate891

-- Control892
namespace DiagonalRamsey.JointInheritedCertificate892
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(44683263317/500000000000 : ℚ), (842622969407/10000000000 : ℚ), (-3778670420563/500000000000 : ℚ), 12⟩,
    ⟨(3606723989/40000000000 : ℚ), (7720970513/1000000000 : ℚ), (-705675907677/1000000000000 : ℚ), 9⟩,
    ⟨(9164921367/100000000000 : ℚ), (4165520467/2500000000 : ℚ), (-78328541373/500000000000 : ℚ), 8⟩,
    ⟨(46792191149/500000000000 : ℚ), (190803919/10000000000 : ℚ), (-17253263/3906250000 : ℚ), 7⟩,
    ⟨(47839496863/500000000000 : ℚ), (-1303422133/2000000000 : ℚ), (7371504613/125000000000 : ℚ), 6⟩,
    ⟨(48807081177/500000000000 : ℚ), (-9845213011/10000000000 : ℚ), (18222283669/200000000000 : ℚ), 6⟩,
    ⟨(99095276299/1000000000000 : ℚ), (-11603183389/10000000000 : ℚ), (3387377601/31250000000 : ℚ), 6⟩,
    ⟨(9989684939/100000000000 : ℚ), (-247802753/200000000 : ℚ), (116225356547/1000000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-12485123481/10000000000 : ℚ), (58587361921/500000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (95169979727/125000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
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
theorem certOK : JointInheritedControls.control892.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control892.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate892

-- Control893
namespace DiagonalRamsey.JointInheritedCertificate893
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(47381585473/1000000000000 : ℚ), (1813653165327/10000000000 : ℚ), (-4304322769331/500000000000 : ℚ), 13⟩,
    ⟨(9515793389/200000000000 : ℚ), (162107722381/10000000000 : ℚ), (-777280003551/1000000000000 : ℚ), 10⟩,
    ⟨(47943680349/1000000000000 : ℚ), (15288939079/5000000000 : ℚ), (-14982811921/100000000000 : ℚ), 9⟩,
    ⟨(1513131293/31250000000 : ℚ), (-5552851569/10000000000 : ℚ), (24089947253/1000000000000 : ℚ), 8⟩,
    ⟨(48935984019/1000000000000 : ℚ), (-20429571999/10000000000 : ℚ), (96458932153/1000000000000 : ℚ), 7⟩,
    ⟨(24706252523/500000000000 : ℚ), (-27893143421/10000000000 : ℚ), (66573334799/500000000000 : ℚ), 7⟩,
    ⟨(995544369/20000000000 : ℚ), (-31877114873/10000000000 : ℚ), (38225499899/250000000000 : ℚ), 7⟩,
    ⟨(24987299961/500000000000 : ℚ), (-33675137011/10000000000 : ℚ), (161869472367/1000000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-33892940697/10000000000 : ℚ), (32591642719/200000000000 : ℚ), 7⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (729450792399/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem certOK : JointInheritedControls.control893.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control893.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate893

-- Control894
namespace DiagonalRamsey.JointInheritedCertificate894
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(83079392451/1000000000000 : ℚ), (491698026779/10000000000 : ℚ), (-2055152983837/500000000000 : ℚ), 11⟩,
    ⟨(84354902647/1000000000000 : ℚ), (45783658163/10000000000 : ℚ), (-19754718189/50000000000 : ℚ), 8⟩,
    ⟨(86711738173/1000000000000 : ℚ), (10815835609/10000000000 : ℚ), (-97306539751/1000000000000 : ℚ), 7⟩,
    ⟨(89791092187/1000000000000 : ℚ), (1415893941/10000000000 : ℚ), (-14636397077/1000000000000 : ℚ), 6⟩,
    ⟨(46562080477/500000000000 : ℚ), (-591125391/2500000000 : ℚ), (19856914833/1000000000000 : ℚ), 6⟩,
    ⟨(96203514967/1000000000000 : ℚ), (-1054491579/2500000000 : ℚ), (37379313283/1000000000000 : ℚ), 6⟩,
    ⟨(49280175247/500000000000 : ℚ), (-259324143/500000000 : ℚ), (23402819483/500000000000 : ℚ), 6⟩,
    ⟨(9983586069/100000000000 : ℚ), (-224658043/400000000 : ℚ), (51070281971/1000000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-1133631839/2000000000 : ℚ), (3224183611/62500000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (207289823061/250000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem certOK : JointInheritedControls.control894.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control894.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate894

-- Control895
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

-- Control896
namespace DiagonalRamsey.JointInheritedCertificate896
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(360968556139/500000000000 : ℚ), (1906839498813/5000000000 : ℚ), (-275654335481841/1000000000000 : ℚ), 13⟩,
    ⟨(723433448711/1000000000000 : ℚ), (102481778133/2500000000 : ℚ), (-7457713194679/250000000000 : ℚ), 10⟩,
    ⟨(363184309103/500000000000 : ℚ), (138512550083/10000000000 : ℚ), (-10168963675569/1000000000000 : ℚ), 8⟩,
    ⟨(146125964769/200000000000 : ℚ), (64175146739/10000000000 : ℚ), (-4756908415123/1000000000000 : ℚ), 7⟩,
    ⟨(736053309887/1000000000000 : ℚ), (16930884951/5000000000 : ℚ), (-2535211112287/1000000000000 : ℚ), 7⟩,
    ⟨(742430654803/1000000000000 : ℚ), (18717409143/10000000000 : ℚ), (-1416276612917/1000000000000 : ℚ), 6⟩,
    ⟨(374758390403/500000000000 : ℚ), (2032545249/2000000000 : ℚ), (-97302970331/125000000000 : ℚ), 6⟩,
    ⟨(378519686023/500000000000 : ℚ), (4922215947/10000000000 : ℚ), (-191915076587/500000000000 : ℚ), 6⟩,
    ⟨(764709339561/1000000000000 : ℚ), (1526706489/10000000000 : ℚ), (-1961930299/15625000000 : ℚ), 5⟩,
    ⟨(386115965401/500000000000 : ℚ), (-761419827/10000000000 : ℚ), (12555894907/250000000000 : ℚ), 5⟩,
    ⟨(194829514201/250000000000 : ℚ), (-2344063591/10000000000 : ℚ), (172975188103/1000000000000 : ℚ), 5⟩,
    ⟨(19642385043/25000000000 : ℚ), (-431672303/1250000000 : ℚ), (259766743677/1000000000000 : ℚ), 5⟩,
    ⟨(395559443881/500000000000 : ℚ), (-4228559971/10000000000 : ℚ), (80219158057/250000000000 : ℚ), 5⟩,
    ⟨(397690046701/500000000000 : ℚ), (-4754317167/10000000000 : ℚ), (362579990861/1000000000000 : ℚ), 5⟩,
    ⟨(798315262897/1000000000000 : ℚ), (-5081493711/10000000000 : ℚ), (48581292429/125000000000 : ℚ), 5⟩,
    ⟨(799811599329/1000000000000 : ℚ), (-2619338287/5000000000 : ℚ), (200605085351/500000000000 : ℚ), 5⟩,
    ⟨(4/5 : ℚ), (-1314509547/2500000000 : ℚ), (50344864661/125000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (198708935621/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control896.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control896.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate896

-- Control897
namespace DiagonalRamsey.JointInheritedCertificate897
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(86308767127/1000000000000 : ℚ), (25274621161/400000000 : ℚ), (-27399195023/5000000000 : ℚ), 12⟩,
    ⟨(43670420209/500000000000 : ℚ), (292470679/50000000 : ℚ), (-260061184269/500000000000 : ℚ), 9⟩,
    ⟨(89247863197/1000000000000 : ℚ), (13323789797/10000000000 : ℚ), (-122652727503/1000000000000 : ℚ), 7⟩,
    ⟨(18347901707/200000000000 : ℚ), (1105547281/10000000000 : ℚ), (-1238426361/100000000000 : ℚ), 7⟩,
    ⟨(94436446013/1000000000000 : ℚ), (-3839732327/10000000000 : ℚ), (33564959171/1000000000000 : ℚ), 6⟩,
    ⟨(96928091351/1000000000000 : ℚ), (-1569613421/2500000000 : ℚ), (56874759151/1000000000000 : ℚ), 6⟩,
    ⟨(9883511413/100000000000 : ℚ), (-755928837/1000000000 : ℚ), (69406222223/1000000000000 : ℚ), 6⟩,
    ⟨(99867187421/1000000000000 : ℚ), (-4065043751/5000000000 : ℚ), (37538294709/500000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-1024855821/1250000000 : ℚ), (75763722399/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (899999/1000000 : ℚ)
  x := (401478176019/500000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem certOK : JointInheritedControls.control897.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control897.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate897

-- Control898
namespace DiagonalRamsey.JointInheritedCertificate898
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(23835695779/500000000000 : ℚ), (1795685331533/10000000000 : ℚ), (-8574062322623/1000000000000 : ℚ), 13⟩,
    ⟨(11961731713/250000000000 : ℚ), (6417808999/400000000 : ℚ), (-773289673907/1000000000000 : ℚ), 10⟩,
    ⟨(48171273781/1000000000000 : ℚ), (15065297849/5000000000 : ℚ), (-1186586171/8000000000 : ℚ), 9⟩,
    ⟨(48595053467/1000000000000 : ℚ), (-2847709911/5000000000 : ℚ), (6216832871/250000000000 : ℚ), 8⟩,
    ⟨(24526874647/500000000000 : ℚ), (-20457463823/10000000000 : ℚ), (4844987859/50000000000 : ℚ), 8⟩,
    ⟨(49477528979/1000000000000 : ℚ), (-13933779473/5000000000 : ℚ), (133393881907/1000000000000 : ℚ), 7⟩,
    ⟨(49801875909/1000000000000 : ℚ), (-7956175737/2500000000 : ℚ), (153034274111/1000000000000 : ℚ), 7⟩,
    ⟨(24988705601/500000000000 : ℚ), (-8402812869/2500000000 : ℚ), (161947013609/1000000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-33827702267/10000000000 : ℚ), (163029022577/1000000000000 : ℚ), 7⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (912499/1000000 : ℚ)
  x := (740019053707/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem certOK : JointInheritedControls.control898.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control898.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate898
