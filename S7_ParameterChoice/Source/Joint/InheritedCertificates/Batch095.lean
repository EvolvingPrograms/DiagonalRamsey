import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control839
namespace DiagonalRamsey.JointInheritedCertificate839
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(9135990967/100000000000 : ℚ), (993094636693/5000000000 : ℚ), (-18196607711417/1000000000000 : ℚ), 11⟩,
    ⟨(11501402181/125000000000 : ℚ), (44765697237/2500000000 : ℚ), (-1664774701689/1000000000000 : ℚ), 8⟩,
    ⟨(932146773/10000000000 : ℚ), (35726343913/10000000000 : ℚ), (-340004318377/1000000000000 : ℚ), 7⟩,
    ⟨(94787073371/1000000000000 : ℚ), (-214214279/625000000 : ℚ), (27445252351/1000000000000 : ℚ), 6⟩,
    ⟨(48244511307/500000000000 : ℚ), (-19452663989/10000000000 : ℚ), (180535372957/1000000000000 : ℚ), 6⟩,
    ⟨(49030709343/500000000000 : ℚ), (-13722854771/5000000000 : ℚ), (258238503591/1000000000000 : ℚ), 5⟩,
    ⟨(99264878537/1000000000000 : ℚ), (-15844326349/5000000000 : ℚ), (37511190557/125000000000 : ℚ), 5⟩,
    ⟨(19983237263/200000000000 : ℚ), (-16797481947/5000000000 : ℚ), (2552587221/8000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-16912707499/5000000000 : ℚ), (160688472889/500000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (812499/1000000 : ℚ)
  x := (523065619889/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control839.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control839.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate839

-- Control849
namespace DiagonalRamsey.JointInheritedCertificate849
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(155967827367/1000000000000 : ℚ), (2730317087137/10000000000 : ℚ), (-42712664624999/1000000000000 : ℚ), 12⟩,
    ⟨(78405925641/500000000000 : ℚ), (11578747229/400000000 : ℚ), (-575661194353/125000000000 : ℚ), 9⟩,
    ⟨(79233731873/500000000000 : ℚ), (95722964873/10000000000 : ℚ), (-97270538853/62500000000 : ℚ), 8⟩,
    ⟨(160871040501/1000000000000 : ℚ), (21499010173/5000000000 : ℚ), (-357923905799/500000000000 : ℚ), 7⟩,
    ⟨(512281917/3125000000 : ℚ), (216374289/100000000 : ℚ), (-369473644341/1000000000000 : ℚ), 6⟩,
    ⟨(83763710131/500000000000 : ℚ), (11013519903/10000000000 : ℚ), (-9682158667/50000000000 : ℚ), 6⟩,
    ⟨(21440552791/125000000000 : ℚ), (1002765299/2000000000 : ℚ), (-18410511541/200000000000 : ℚ), 5⟩,
    ⟨(2746369017/15625000000 : ℚ), (1316958911/10000000000 : ℚ), (-2726697/97656250 : ℚ), 5⟩,
    ⟨(45023485237/250000000000 : ℚ), (-277423779/2500000000 : ℚ), (3805462133/250000000000 : ℚ), 5⟩,
    ⟨(46084283927/250000000000 : ℚ), (-1389020889/5000000000 : ℚ), (22801533421/500000000000 : ℚ), 5⟩,
    ⟨(188334137773/1000000000000 : ℚ), (-3961956537/10000000000 : ℚ), (67653761287/1000000000000 : ℚ), 4⟩,
    ⟨(47982836149/250000000000 : ℚ), (-2407929149/5000000000 : ℚ), (83884292843/1000000000000 : ℚ), 4⟩,
    ⟨(38998103507/200000000000 : ℚ), (-542968229/1000000000 : ℚ), (11969642649/125000000000 : ℚ), 4⟩,
    ⟨(19739409429/100000000000 : ℚ), (-234259311/400000000 : ℚ), (52064886651/500000000000 : ℚ), 4⟩,
    ⟨(99524853377/500000000000 : ℚ), (-6127188383/10000000000 : ℚ), (27373877877/250000000000 : ℚ), 4⟩,
    ⟨(199893730669/1000000000000 : ℚ), (-3129394699/5000000000 : ℚ), (11212055079/100000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-784384111/1250000000 : ℚ), (112446134023/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (812499/1000000 : ℚ)
  x := (5264788667/8000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control849.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control849.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate849

-- Control851
namespace DiagonalRamsey.JointInheritedCertificate851
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120402057289/1000000000000 : ℚ), (95367842533/1250000000 : ℚ), (-4627107880907/500000000000 : ℚ), 10⟩,
    ⟨(61316605541/500000000000 : ℚ), (35606206739/5000000000 : ℚ), (-112118437523/125000000000 : ℚ), 7⟩,
    ⟨(126755845727/1000000000000 : ℚ), (17203860563/10000000000 : ℚ), (-227020994733/1000000000000 : ℚ), 6⟩,
    ⟨(8258895467/62500000000 : ℚ), (173314201/625000000 : ℚ), (-8197251963/200000000000 : ℚ), 5⟩,
    ⟨(1379726133/10000000000 : ℚ), (-2992249103/10000000000 : ℚ), (18329722167/500000000000 : ℚ), 5⟩,
    ⟨(71679547523/500000000000 : ℚ), (-2900070573/5000000000 : ℚ), (38047291407/500000000000 : ℚ), 5⟩,
    ⟨(147481729691/1000000000000 : ℚ), (-1451665709/2000000000 : ℚ), (12160678483/125000000000 : ℚ), 4⟩,
    ⟨(149712883483/1000000000000 : ℚ), (-1975663659/2500000000 : ℚ), (13357303779/125000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-1994996319/2500000000 : ℚ), (108017276913/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (812499/1000000 : ℚ)
  x := (674145369009/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control851.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control851.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate851

-- Control852
namespace DiagonalRamsey.JointInheritedCertificate852
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(160850274921/1000000000000 : ℚ), (1584129554551/5000000000 : ℚ), (-399171441879/7812500000 : ℚ), 12⟩,
    ⟨(161600710393/1000000000000 : ℚ), (6722984831/200000000 : ℚ), (-2750088757131/500000000000 : ℚ), 9⟩,
    ⟨(163072742521/1000000000000 : ℚ), (111103541953/10000000000 : ℚ), (-926133708297/500000000000 : ℚ), 8⟩,
    ⟨(82604900969/500000000000 : ℚ), (24878052251/5000000000 : ℚ), (-211680657683/250000000000 : ℚ), 7⟩,
    ⟨(20991220331/125000000000 : ℚ), (24847958517/10000000000 : ℚ), (-108092329693/250000000000 : ℚ), 6⟩,
    ⟨(85564049043/500000000000 : ℚ), (12428829909/10000000000 : ℚ), (-44415204723/200000000000 : ℚ), 6⟩,
    ⟨(34936379603/200000000000 : ℚ), (2698486941/5000000000 : ℚ), (-50307979793/500000000000 : ℚ), 5⟩,
    ⟨(89227295949/500000000000 : ℚ), (131608589/1250000000 : ℚ), (-2997351189/125000000000 : ℚ), 5⟩,
    ⟨(182301197223/1000000000000 : ℚ), (-902844269/5000000000 : ℚ), (13773706151/500000000000 : ℚ), 5⟩,
    ⟨(37214778221/200000000000 : ℚ), (-188774601/500000000 : ℚ), (2552371833/40000000000 : ℚ), 5⟩,
    ⟨(94813845517/500000000000 : ℚ), (-1035257297/2000000000 : ℚ), (5632065307/62500000000 : ℚ), 5⟩,
    ⟨(24103253309/125000000000 : ℚ), (-6188563501/10000000000 : ℚ), (109465346191/1000000000000 : ℚ), 4⟩,
    ⟨(97772993591/500000000000 : ℚ), (-691749409/1000000000 : ℚ), (123617811571/1000000000000 : ℚ), 4⟩,
    ⟨(197683046599/1000000000000 : ℚ), (-7425080829/10000000000 : ℚ), (2671936021/20000000000 : ℚ), 4⟩,
    ⟨(24894384841/125000000000 : ℚ), (-3873699063/5000000000 : ℚ), (139991940571/1000000000000 : ℚ), 4⟩,
    ⟨(199905514199/1000000000000 : ℚ), (-1976051361/2500000000 : ℚ), (143120691639/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-7923613373/10000000000 : ℚ), (143508758477/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (812499/1000000 : ℚ)
  x := (157104892381/250000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control852.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control852.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate852

-- Control853
namespace DiagonalRamsey.JointInheritedCertificate853
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(8714924203/100000000000 : ℚ), (594621083219/5000000000 : ℚ), (-10409958899507/1000000000000 : ℚ), 11⟩,
    ⟨(44058979297/500000000000 : ℚ), (54701638439/5000000000 : ℚ), (-979762666359/1000000000000 : ℚ), 8⟩,
    ⟨(1404811147/15625000000 : ℚ), (4844529317/2000000000 : ℚ), (-223948361119/1000000000000 : ℚ), 7⟩,
    ⟨(23061650519/250000000000 : ℚ), (1132582059/10000000000 : ℚ), (-1417953623/100000000000 : ℚ), 6⟩,
    ⟨(94777980449/1000000000000 : ℚ), (-2059671463/2500000000 : ℚ), (73302022891/1000000000000 : ℚ), 5⟩,
    ⟨(48558334559/500000000000 : ℚ), (-12873343121/10000000000 : ℚ), (58863484311/500000000000 : ℚ), 5⟩,
    ⟨(98906623931/1000000000000 : ℚ), (-3828365679/2500000000 : ℚ), (14163312917/100000000000 : ℚ), 5⟩,
    ⟨(6242208781/62500000000 : ℚ), (-16402642677/10000000000 : ℚ), (152457552529/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-16533928741/10000000000 : ℚ), (153769592959/1000000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (657496359023/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control853.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control853.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate853

-- Control854
namespace DiagonalRamsey.JointInheritedCertificate854
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(22967047693/500000000000 : ℚ), (1981363352681/10000000000 : ℚ), (-4562911179067/500000000000 : ℚ), 12⟩,
    ⟨(46240591637/1000000000000 : ℚ), (178945703673/10000000000 : ℚ), (-836280151527/1000000000000 : ℚ), 8⟩,
    ⟨(9361384573/200000000000 : ℚ), (35879755263/10000000000 : ℚ), (-171956229311/1000000000000 : ℚ), 7⟩,
    ⟨(47546870273/1000000000000 : ℚ), (-3246942343/10000000000 : ℚ), (12349869587/1000000000000 : ℚ), 6⟩,
    ⟨(1933911343/40000000000 : ℚ), (-19284813079/10000000000 : ℚ), (89166274523/1000000000000 : ℚ), 6⟩,
    ⟨(49087730983/1000000000000 : ℚ), (-1091804757/400000000 : ℚ), (64083724577/500000000000 : ℚ), 6⟩,
    ⟨(49654062211/1000000000000 : ℚ), (-31551061711/10000000000 : ℚ), (37293537357/250000000000 : ℚ), 6⟩,
    ⟨(24980279231/500000000000 : ℚ), (-33463973451/10000000000 : ℚ), (158701293693/1000000000000 : ℚ), 6⟩,
    ⟨(1/20 : ℚ), (-4211905759/1250000000 : ℚ), (1598571997/10000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (83285002991/125000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control854.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control854.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate854

-- Control855
namespace DiagonalRamsey.JointInheritedCertificate855
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(91759383943/1000000000000 : ℚ), (487992544953/2500000000 : ℚ), (-718348794091/40000000000 : ℚ), 11⟩,
    ⟨(92380578529/1000000000000 : ℚ), (35108477119/2000000000 : ℚ), (-409438575411/250000000000 : ℚ), 8⟩,
    ⟨(11691049557/125000000000 : ℚ), (1728613277/500000000 : ℚ), (-329915741503/1000000000000 : ℚ), 7⟩,
    ⟨(95028092851/1000000000000 : ℚ), (-990258201/2500000000 : ℚ), (32807210383/1000000000000 : ℚ), 6⟩,
    ⟨(96651352531/1000000000000 : ℚ), (-2468058221/1250000000 : ℚ), (91956847141/500000000000 : ℚ), 6⟩,
    ⟨(3926041957/40000000000 : ℚ), (-27623936659/10000000000 : ℚ), (8144198073/31250000000 : ℚ), 6⟩,
    ⟨(24824716713/250000000000 : ℚ), (-15905429057/5000000000 : ℚ), (301939210097/1000000000000 : ℚ), 5⟩,
    ⟨(49960030719/500000000000 : ℚ), (-16846851063/5000000000 : ℚ), (160346508509/500000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-33921412489/10000000000 : ℚ), (40371151063/125000000000 : ℚ), 5⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (531786063291/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control855.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control855.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate855

-- Control856
namespace DiagonalRamsey.JointInheritedCertificate856
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(75446692471/500000000000 : ℚ), (27619292747/125000000 : ℚ), (-33456595923019/1000000000000 : ℚ), 12⟩,
    ⟨(6073387101/40000000000 : ℚ), (116999697393/5000000000 : ℚ), (-903164104397/250000000000 : ℚ), 9⟩,
    ⟨(2401267021/15625000000 : ℚ), (77375448591/10000000000 : ℚ), (-48993182183/40000000000 : ℚ), 7⟩,
    ⟨(156361663829/1000000000000 : ℚ), (3483314063/1000000000 : ℚ), (-566571588351/1000000000000 : ℚ), 7⟩,
    ⟨(31954677601/200000000000 : ℚ), (17639433547/10000000000 : ℚ), (-147632898139/500000000000 : ℚ), 6⟩,
    ⟨(81892575613/500000000000 : ℚ), (2277852483/2500000000 : ℚ), (-7875709573/50000000000 : ℚ), 6⟩,
    ⟨(168242783681/1000000000000 : ℚ), (4309191677/10000000000 : ℚ), (-9737256649/125000000000 : ℚ), 5⟩,
    ⟨(34594996211/200000000000 : ℚ), (679298303/5000000000 : ℚ), (-345188517/12500000000 : ℚ), 5⟩,
    ⟨(22224985957/125000000000 : ℚ), (-286492771/5000000000 : ℚ), (6231689477/1000000000000 : ℚ), 5⟩,
    ⟨(18253208503/100000000000 : ℚ), (-948841789/5000000000 : ℚ), (3760200641/125000000000 : ℚ), 5⟩,
    ⟨(37397943497/200000000000 : ℚ), (-1417818821/5000000000 : ℚ), (47402547103/1000000000000 : ℚ), 4⟩,
    ⟨(191001480707/1000000000000 : ℚ), (-14043183/40000000 : ℚ), (2406333727/40000000000 : ℚ), 4⟩,
    ⟨(194413204883/1000000000000 : ℚ), (-799057713/2000000000 : ℚ), (6949287487/100000000000 : ℚ), 4⟩,
    ⟨(24636722421/125000000000 : ℚ), (-4331674559/10000000000 : ℚ), (38038489063/500000000000 : ℚ), 4⟩,
    ⟨(198940191187/1000000000000 : ℚ), (-4544796553/10000000000 : ℚ), (80296942061/1000000000000 : ℚ), 4⟩,
    ⟨(199881483769/1000000000000 : ℚ), (-4648331171/10000000000 : ℚ), (41180754449/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-4661138431/10000000000 : ℚ), (1032719727/12500000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (175342899707/250000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control856.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control856.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate856
