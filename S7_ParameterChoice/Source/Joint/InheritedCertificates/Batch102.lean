import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control907
namespace DiagonalRamsey.JointInheritedCertificate907
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(40869376351/500000000000 : ℚ), (33609938291/1000000000 : ℚ), (-276608141907/100000000000 : ℚ), 12⟩,
    ⟨(2077883077/25000000000 : ℚ), (15708197849/5000000000 : ℚ), (-267840094741/1000000000000 : ℚ), 9⟩,
    ⟨(85658893473/1000000000000 : ℚ), (1893399913/2500000000 : ℚ), (-16899514939/250000000000 : ℚ), 7⟩,
    ⟨(88982228347/1000000000000 : ℚ), (1183560607/10000000000 : ℚ), (-12010014151/1000000000000 : ℚ), 7⟩,
    ⟨(46289690047/500000000000 : ℚ), (-1377538651/10000000000 : ℚ), (11180158349/1000000000000 : ℚ), 6⟩,
    ⟨(11987839371/125000000000 : ℚ), (-262887361/1000000000 : ℚ), (179342533/7812500000 : ℚ), 6⟩,
    ⟨(98446285361/1000000000000 : ℚ), (-3280702357/10000000000 : ℚ), (29286086863/1000000000000 : ℚ), 6⟩,
    ⟨(49911427869/500000000000 : ℚ), (-111544111/312500000 : ℚ), (6429556307/200000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-1802048957/5000000000 : ℚ), (32494337179/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (924999/1000000 : ℚ)
  x := (175386731609/200000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control907.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control907.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate907

-- Control908
namespace DiagonalRamsey.JointInheritedCertificate908
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(21741862921/250000000000 : ℚ), (125456417977/2500000000 : ℚ), (-2192137356279/500000000000 : ℚ), 12⟩,
    ⟨(87949871979/1000000000000 : ℚ), (1452564373/312500000 : ℚ), (-207968224763/500000000000 : ℚ), 9⟩,
    ⟨(5610321749/62500000000 : ℚ), (10579742787/10000000000 : ℚ), (-48972566271/500000000000 : ℚ), 8⟩,
    ⟨(92136920383/1000000000000 : ℚ), (429392129/5000000000 : ℚ), (-9758223219/1000000000000 : ℚ), 7⟩,
    ⟨(94704108329/1000000000000 : ℚ), (-123153519/400000000 : ℚ), (26962580887/1000000000000 : ℚ), 7⟩,
    ⟨(12134485091/125000000000 : ℚ), (-2510817343/5000000000 : ℚ), (45573540451/1000000000000 : ℚ), 6⟩,
    ⟨(49445578367/500000000000 : ℚ), (-5900791/9765625 : ℚ), (55571249971/1000000000000 : ℚ), 6⟩,
    ⟨(24968394257/250000000000 : ℚ), (-6497474211/10000000000 : ℚ), (6009334093/100000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-409518837/625000000 : ℚ), (15160316339/250000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (924999/1000000 : ℚ)
  x := (84468234433/100000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem certOK : JointInheritedControls.control908.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control908.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate908

-- Control909
namespace DiagonalRamsey.JointInheritedCertificate909
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(44500976759/1000000000000 : ℚ), (152315720539/2500000000 : ℚ), (-68050551821/25000000000 : ℚ), 12⟩,
    ⟨(44915504441/1000000000000 : ℚ), (14144660339/2500000000 : ℚ), (-25825452181/100000000000 : ℚ), 9⟩,
    ⟨(45681451721/1000000000000 : ℚ), (12879460489/10000000000 : ℚ), (-760385627/12500000000 : ℚ), 8⟩,
    ⟨(46682210071/1000000000000 : ℚ), (500305167/5000000000 : ℚ), (-3044197267/500000000000 : ℚ), 7⟩,
    ⟨(47765423103/1000000000000 : ℚ), (-957666359/2500000000 : ℚ), (16693412637/1000000000000 : ℚ), 7⟩,
    ⟨(48766181453/1000000000000 : ℚ), (-6221951299/10000000000 : ℚ), (5645115489/200000000000 : ℚ), 7⟩,
    ⟨(49532128733/1000000000000 : ℚ), (-7480712253/10000000000 : ℚ), (6882020501/200000000000 : ℚ), 7⟩,
    ⟨(24973328207/500000000000 : ℚ), (-2010582557/2500000000 : ℚ), (37203325299/1000000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-811001119/1000000000 : ℚ), (9385387293/250000000000 : ℚ), 7⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (924999/1000000 : ℚ)
  x := (437936682329/500000000000 : ℚ)
  μ := (1/20 : ℚ)
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
theorem certOK : JointInheritedControls.control909.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control909.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate909

-- Control910
namespace DiagonalRamsey.JointInheritedCertificate910
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(23549755811/500000000000 : ℚ), (1019276827543/10000000000 : ℚ), (-4810808269427/1000000000000 : ℚ), 14⟩,
    ⟨(47318156401/1000000000000 : ℚ), (46593830229/5000000000 : ℚ), (-44519656413/100000000000 : ℚ), 10⟩,
    ⟨(23861079637/500000000000 : ℚ), (9747434543/5000000000 : ℚ), (-2386856903/25000000000 : ℚ), 9⟩,
    ⟨(9650002893/200000000000 : ℚ), (-5573581/78125000 : ℚ), (278769207/200000000000 : ℚ), 8⟩,
    ⟨(24410680403/500000000000 : ℚ), (-9008481587/10000000000 : ℚ), (41624673727/1000000000000 : ℚ), 8⟩,
    ⟨(49349215997/1000000000000 : ℚ), (-13150264523/10000000000 : ℚ), (61946144699/1000000000000 : ℚ), 8⟩,
    ⟨(49753218869/1000000000000 : ℚ), (-7674082937/5000000000 : ℚ), (36417531239/500000000000 : ℚ), 8⟩,
    ⟨(49971863649/1000000000000 : ℚ), (-408376981/250000000 : ℚ), (2429870563/31250000000 : ℚ), 8⟩,
    ⟨(1/20 : ℚ), (-4113588509/2500000000 : ℚ), (78352063829/1000000000000 : ℚ), 8⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (937499/1000000 : ℚ)
  x := (21088998803/25000000000 : ℚ)
  μ := (1/20 : ℚ)
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
theorem certOK : JointInheritedControls.control910.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control910.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate910

-- Control911
namespace DiagonalRamsey.JointInheritedCertificate911
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(10778164407/125000000000 : ℚ), (392312307609/10000000000 : ℚ), (-3399413771263/1000000000000 : ℚ), 12⟩,
    ⟨(87263679321/1000000000000 : ℚ), (36483475883/10000000000 : ℚ), (-324388785061/1000000000000 : ℚ), 9⟩,
    ⟨(17836465187/200000000000 : ℚ), (8457490227/10000000000 : ℚ), (-19495902663/250000000000 : ℚ), 8⟩,
    ⟨(91689158543/1000000000000 : ℚ), (176251797/2000000000 : ℚ), (-1930802593/200000000000 : ℚ), 7⟩,
    ⟨(18880506921/200000000000 : ℚ), (-218165381/1000000000 : ℚ), (9395907449/500000000000 : ℚ), 7⟩,
    ⟨(96909367213/1000000000000 : ℚ), (-1844819559/5000000000 : ℚ), (16600666309/500000000000 : ℚ), 7⟩,
    ⟨(98828013827/1000000000000 : ℚ), (-4480274449/10000000000 : ℚ), (12792409/312500000 : ℚ), 6⟩,
    ⟨(24966594473/250000000000 : ℚ), (-4832157231/10000000000 : ℚ), (44431198089/1000000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-19498089/40000000 : ℚ), (44854564563/1000000000000 : ℚ), 6⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (937499/1000000 : ℚ)
  x := (875373294253/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
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
theorem certOK : JointInheritedControls.control911.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control911.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate911

-- Control912
namespace DiagonalRamsey.JointInheritedCertificate912
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(22603833303/500000000000 : ℚ), (592158961557/10000000000 : ℚ), (-268629736033/100000000000 : ℚ), 13⟩,
    ⟨(45568922553/1000000000000 : ℚ), (27482799431/5000000000 : ℚ), (-254154535007/1000000000000 : ℚ), 10⟩,
    ⟨(5779554563/125000000000 : ℚ), (12416361241/10000000000 : ℚ), (-59288856071/1000000000000 : ℚ), 9⟩,
    ⟨(47108585511/1000000000000 : ℚ), (823894423/10000000000 : ℚ), (-5282592203/1000000000000 : ℚ), 8⟩,
    ⟨(24026296397/500000000000 : ℚ), (-3900722271/10000000000 : ℚ), (2146134983/125000000000 : ℚ), 7⟩,
    ⟨(48924741801/1000000000000 : ℚ), (-6242891987/10000000000 : ℚ), (28517803307/1000000000000 : ℚ), 7⟩,
    ⟨(6199031969/125000000000 : ℚ), (-1869306581/2500000000 : ℚ), (8649023487/250000000000 : ℚ), 7⟩,
    ⟨(49953511699/1000000000000 : ℚ), (-8028406651/10000000000 : ℚ), (18669640471/500000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-2023713649/2500000000 : ℚ), (18835682927/500000000000 : ℚ), 7⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (937499/1000000 : ℚ)
  x := (888143401773/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
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
theorem certOK : JointInheritedControls.control912.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control912.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate912

-- Control913
namespace DiagonalRamsey.JointInheritedCertificate913
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(22677003967/500000000000 : ℚ), (15331914153/312500000 : ℚ), (-2232846415511/1000000000000 : ℚ), 13⟩,
    ⟨(45704232371/1000000000000 : ℚ), (2865138557/625000000 : ℚ), (-106345879577/500000000000 : ℚ), 10⟩,
    ⟨(46351362749/1000000000000 : ℚ), (10603154811/10000000000 : ℚ), (-6356594399/125000000000 : ℚ), 9⟩,
    ⟨(23598439667/500000000000 : ℚ), (1001647437/10000000000 : ℚ), (-6021805869/1000000000000 : ℚ), 8⟩,
    ⟨(48112059891/1000000000000 : ℚ), (-727310533/2500000000 : ℚ), (12592563477/1000000000000 : ℚ), 8⟩,
    ⟨(12239394119/250000000000 : ℚ), (-969024019/2000000000 : ℚ), (10990879623/500000000000 : ℚ), 8⟩,
    ⟨(24802353427/500000000000 : ℚ), (-5863198507/10000000000 : ℚ), (26997470833/1000000000000 : ℚ), 7⟩,
    ⟨(49954931291/1000000000000 : ℚ), (-6316968899/10000000000 : ℚ), (7314043243/250000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-6371627811/10000000000 : ℚ), (29529344071/1000000000000 : ℚ), 7⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (949999/1000000 : ℚ)
  x := (909767993009/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
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
theorem certOK : JointInheritedControls.control913.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control913.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate913

-- Control915
namespace DiagonalRamsey.JointInheritedCertificate915
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(38076948411/1000000000000 : ℚ), (1476009932533/1250000000 : ℚ), (-45111069889161/1000000000000 : ℚ), 9⟩,
    ⟨(9576373397/250000000000 : ℚ), (623856804043/5000000000 : ℚ), (-4855915700273/1000000000000 : ℚ), 6⟩,
    ⟨(38753801079/1000000000000 : ℚ), (51269184979/1250000000 : ℚ), (-1634962571453/1000000000000 : ℚ), 5⟩,
    ⟨(19702321339/500000000000 : ℚ), (91242347689/5000000000 : ℚ), (-149371819101/200000000000 : ℚ), 4⟩,
    ⟨(10058251727/250000000000 : ℚ), (18069792983/2000000000 : ℚ), (-190298518611/500000000000 : ℚ), 3⟩,
    ⟨(8241412039/200000000000 : ℚ), (44548241339/10000000000 : ℚ), (-194374550033/1000000000000 : ℚ), 3⟩,
    ⟨(42289370219/1000000000000 : ℚ), (1866904201/1000000000 : ℚ), (-86473086817/1000000000000 : ℚ), 2⟩,
    ⟨(43438344413/1000000000000 : ℚ), (1346671879/5000000000 : ℚ), (-9034475679/500000000000 : ℚ), 2⟩,
    ⟨(44609828341/1000000000000 : ℚ), (-7824613433/10000000000 : ℚ), (28195345053/1000000000000 : ℚ), 2⟩,
    ⟨(22879401267/500000000000 : ℚ), (-3770291951/2500000000 : ℚ), (60961863941/1000000000000 : ℚ), 2⟩,
    ⟨(23420556279/500000000000 : ℚ), (-20246940187/10000000000 : ℚ), (84867847803/1000000000000 : ℚ), 2⟩,
    ⟨(23907582923/500000000000 : ℚ), (-4796090667/2000000000 : ℚ), (25633016619/250000000000 : ℚ), 2⟩,
    ⟨(12160882519/250000000000 : ℚ), (-13332979511/5000000000 : ℚ), (23096284143/200000000000 : ℚ), 2⟩,
    ⟨(1971774867/40000000000 : ℚ), (-28532074213/10000000000 : ℚ), (31154638967/250000000000 : ℚ), 2⟩,
    ⟨(24871339583/500000000000 : ℚ), (-7428548581/2500000000 : ℚ), (130471950819/1000000000000 : ℚ), 2⟩,
    ⟨(49971224343/1000000000000 : ℚ), (-1514410157/500000000 : ℚ), (133333748829/1000000000000 : ℚ), 1⟩,
    ⟨(1/20 : ℚ), (-30359190169/10000000000 : ℚ), (33422145443/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (99999/1000000 : ℚ)
  x := (74859405957/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control915.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control915.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate915
