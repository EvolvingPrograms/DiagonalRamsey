import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control541
namespace DiagonalRamsey.JointInheritedCertificate541
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(37786456927/250000000000 : ℚ), (5243799885851/10000000000 : ℚ), (-79531367888277/1000000000000 : ℚ), 11⟩,
    ⟨(7604114069/50000000000 : ℚ), (277594928323/5000000000 : ℚ), (-4292013290059/500000000000 : ℚ), 8⟩,
    ⟨(30783840267/200000000000 : ℚ), (36687026033/2000000000 : ℚ), (-2907313933909/1000000000000 : ℚ), 6⟩,
    ⟨(156585995769/1000000000000 : ℚ), (16486827173/2000000000 : ℚ), (-1342172317877/1000000000000 : ℚ), 5⟩,
    ⟨(39995045317/250000000000 : ℚ), (41593277239/10000000000 : ℚ), (-174210644537/250000000000 : ℚ), 5⟩,
    ⟨(81985660593/500000000000 : ℚ), (10659155649/5000000000 : ℚ), (-368943041649/1000000000000 : ℚ), 4⟩,
    ⟨(33681207651/200000000000 : ℚ), (9885896323/10000000000 : ℚ), (-35840587281/200000000000 : ℚ), 4⟩,
    ⟨(10819619299/62500000000 : ℚ), (284902909/1000000000 : ℚ), (-184923877/3125000000 : ℚ), 4⟩,
    ⟨(3558280239/20000000000 : ℚ), (-1767165839/10000000000 : ℚ), (21772301249/1000000000000 : ℚ), 3⟩,
    ⟨(182621882479/1000000000000 : ℚ), (-4939724633/10000000000 : ℚ), (616593601/7812500000 : ℚ), 3⟩,
    ⟨(46764149887/250000000000 : ℚ), (-1797576031/2500000000 : ℚ), (120502697367/1000000000000 : ℚ), 3⟩,
    ⟨(95523869733/500000000000 : ℚ), (-4406316089/5000000000 : ℚ), (151162716343/1000000000000 : ℚ), 3⟩,
    ⟨(38888384993/200000000000 : ℚ), (-1247228913/1250000000 : ℚ), (86808280117/500000000000 : ℚ), 3⟩,
    ⟨(197108719399/1000000000000 : ℚ), (-2157427807/2000000000 : ℚ), (94729484159/500000000000 : ℚ), 3⟩,
    ⟨(99472819677/500000000000 : ℚ), (-11299909707/10000000000 : ℚ), (199612709687/1000000000000 : ℚ), 3⟩,
    ⟨(99941046513/500000000000 : ℚ), (-1154899299/1000000000 : ℚ), (204579714191/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-1157980297/1000000000 : ℚ), (41039146407/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (387852060477/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem certOK : JointInheritedControls.control541.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control541.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate541

-- Control542
namespace DiagonalRamsey.JointInheritedCertificate542
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1472488931/12500000000 : ℚ), (1550873990467/2500000000 : ℚ), (-9161156072069/125000000000 : ℚ), 11⟩,
    ⟨(118416352191/1000000000000 : ℚ), (2628701251/40000000 : ℚ), (-7890945640691/1000000000000 : ℚ), 8⟩,
    ⟨(23925421503/200000000000 : ℚ), (216796011677/10000000000 : ℚ), (-2658183226637/1000000000000 : ℚ), 6⟩,
    ⟨(121384851803/1000000000000 : ℚ), (96878431773/10000000000 : ℚ), (-607694673869/500000000000 : ℚ), 5⟩,
    ⟨(15452754491/125000000000 : ℚ), (4824207663/1000000000 : ℚ), (-620447158079/1000000000000 : ℚ), 5⟩,
    ⟨(63126343079/500000000000 : ℚ), (75030699/31250000 : ℚ), (-318092195817/1000000000000 : ℚ), 4⟩,
    ⟨(129175708081/1000000000000 : ℚ), (2572651373/2500000000 : ℚ), (-7153878811/50000000000 : ℚ), 4⟩,
    ⟨(132278771603/1000000000000 : ℚ), (361905497/2000000000 : ℚ), (-32312458451/1000000000000 : ℚ), 4⟩,
    ⟨(67721313867/500000000000 : ℚ), (-3778965891/10000000000 : ℚ), (21219065039/500000000000 : ℚ), 4⟩,
    ⟨(138545691257/1000000000000 : ℚ), (-3818459511/5000000000 : ℚ), (95258702849/1000000000000 : ℚ), 3⟩,
    ⟨(7073435659/50000000000 : ℚ), (-10385545511/10000000000 : ℚ), (133724969753/1000000000000 : ℚ), 3⟩,
    ⟨(14409936341/100000000000 : ℚ), (-1237488509/1000000000 : ℚ), (81060644121/500000000000 : ℚ), 3⟩,
    ⟨(29267309507/200000000000 : ℚ), (-863051017/625000000 : ℚ), (11433797831/62500000000 : ℚ), 3⟩,
    ⟨(148094291823/1000000000000 : ℚ), (-14807763169/10000000000 : ℚ), (98822672801/500000000000 : ℚ), 3⟩,
    ⟨(74652523573/500000000000 : ℚ), (-15442119367/10000000000 : ℚ), (207077795939/1000000000000 : ℚ), 3⟩,
    ⟨(74961142429/500000000000 : ℚ), (-15750697967/10000000000 : ℚ), (211694504753/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-7894443837/5000000000 : ℚ), (53066800467/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (399285623251/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem certOK : JointInheritedControls.control542.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control542.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate542

-- Control543
namespace DiagonalRamsey.JointInheritedCertificate543
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(42597555297/1000000000000 : ℚ), (2376267409011/10000000000 : ℚ), (-5087447710273/500000000000 : ℚ), 9⟩,
    ⟨(21577783401/500000000000 : ℚ), (2728383837/125000000 : ℚ), (-959939369763/1000000000000 : ℚ), 6⟩,
    ⟨(2209331881/50000000000 : ℚ), (48395667041/10000000000 : ℚ), (-22083989397/100000000000 : ℚ), 5⟩,
    ⟨(11383449141/250000000000 : ℚ), (1205269223/5000000000 : ℚ), (-94730287/6250000000 : ℚ), 4⟩,
    ⟨(46991950899/1000000000000 : ℚ), (-1016186469/625000000 : ℚ), (71040299071/1000000000000 : ℚ), 4⟩,
    ⟨(48339109843/1000000000000 : ℚ), (-25499308881/10000000000 : ℚ), (115035031911/1000000000000 : ℚ), 4⟩,
    ⟨(49370180661/1000000000000 : ℚ), (-30360418487/10000000000 : ℚ), (34693106623/250000000000 : ℚ), 4⟩,
    ⟨(49928192167/1000000000000 : ℚ), (-32525557377/10000000000 : ℚ), (74760474311/500000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-819654571/250000000 : ℚ), (4713223061/31250000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (117136781469/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control543.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control543.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate543

-- Control544
namespace DiagonalRamsey.JointInheritedCertificate544
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(42674867773/500000000000 : ℚ), (601554258221/2500000000 : ℚ), (-10321006422967/500000000000 : ℚ), 9⟩,
    ⟨(8645410261/100000000000 : ℚ), (44270925419/2000000000 : ℚ), (-974674832249/500000000000 : ℚ), 6⟩,
    ⟨(5530919179/62500000000 : ℚ), (49367663899/10000000000 : ℚ), (-112610493993/250000000000 : ℚ), 5⟩,
    ⟨(11395110601/125000000000 : ℚ), (1420065919/5000000000 : ℚ), (-16856241537/500000000000 : ℚ), 4⟩,
    ⟨(94046735019/1000000000000 : ℚ), (-16019446191/10000000000 : ℚ), (5623470081/40000000000 : ℚ), 4⟩,
    ⟨(96712912963/1000000000000 : ℚ), (-25332496641/10000000000 : ℚ), (45862940937/200000000000 : ℚ), 4⟩,
    ⟨(98753517217/1000000000000 : ℚ), (-604422879/200000000 : ℚ), (55414042841/200000000000 : ℚ), 4⟩,
    ⟨(99857884281/1000000000000 : ℚ), (-32395426177/10000000000 : ℚ), (37332454987/125000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-102053163/31250000 : ℚ), (150636818237/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (368856950377/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control544.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control544.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate544

-- Control545
namespace DiagonalRamsey.JointInheritedCertificate545
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(584850915749/1000000000000 : ℚ), (232724373587/31250000 : ℚ), (-4357261115427519/1000000000000 : ℚ), 14⟩,
    ⟨(585110033211/1000000000000 : ℚ), (8243452915147/10000000000 : ℚ), (-483574425035133/1000000000000 : ℚ), 11⟩,
    ⟨(585627643899/1000000000000 : ℚ), (1474337110327/5000000000 : ℚ), (-173679665135231/1000000000000 : ℚ), 9⟩,
    ⟨(293201250421/500000000000 : ℚ), (298304062507/2000000000 : ℚ), (-22075178829253/250000000000 : ℚ), 8⟩,
    ⟨(587432737343/1000000000000 : ℚ), (892795049803/10000000000 : ℚ), (-53165591519187/1000000000000 : ℚ), 8⟩,
    ⟨(588715871471/1000000000000 : ℚ), (590322167581/10000000000 : ℚ), (-1415220596657/40000000000 : ℚ), 7⟩,
    ⟨(147562203011/250000000000 : ℚ), (416775950001/10000000000 : ℚ), (-25151742895809/1000000000000 : ℚ), 7⟩,
    ⟨(23681114643/40000000000 : ℚ), (154100897779/5000000000 : ℚ), (-9367211531867/500000000000 : ℚ), 6⟩,
    ⟨(118809749533/200000000000 : ℚ), (235877677509/10000000000 : ℚ), (-1805741336041/125000000000 : ℚ), 6⟩,
    ⟨(119261317667/200000000000 : ℚ), (11584566677/625000000 : ℚ), (-5719618851559/500000000000 : ℚ), 6⟩,
    ⟨(149698987187/250000000000 : ℚ), (29743045491/2000000000 : ℚ), (-9250239919577/1000000000000 : ℚ), 5⟩,
    ⟨(601510831817/1000000000000 : ℚ), (379178289/31250000 : ℚ), (-7607351970773/1000000000000 : ℚ), 5⟩,
    ⟨(604444697151/1000000000000 : ℚ), (50183378333/5000000000 : ℚ), (-6343058185191/1000000000000 : ℚ), 5⟩,
    ⟨(607590476811/1000000000000 : ℚ), (41984725899/5000000000 : ℚ), (-2674741334047/500000000000 : ℚ), 5⟩,
    ⟨(610940592339/1000000000000 : ℚ), (70921396921/10000000000 : ℚ), (-4554611642239/1000000000000 : ℚ), 4⟩,
    ⟨(614486973013/1000000000000 : ℚ), (60381247277/10000000000 : ℚ), (-1954441636299/500000000000 : ℚ), 4⟩,
    ⟨(618221075291/1000000000000 : ℚ), (6469408903/1250000000 : ℚ), (-337728306471/100000000000 : ℚ), 4⟩,
    ⟨(311066951697/500000000000 : ℚ), (44614882657/10000000000 : ℚ), (-2934505330857/1000000000000 : ℚ), 4⟩,
    ⟨(2446156371/3906250000 : ℚ), (38644510589/10000000000 : ℚ), (-512378639581/200000000000 : ℚ), 4⟩,
    ⟨(315228811917/500000000000 : ℚ), (16803846839/5000000000 : ℚ), (-1122723715061/500000000000 : ℚ), 4⟩,
    ⟨(1587121159/2500000000 : ℚ), (29324467551/10000000000 : ℚ), (-987248881581/500000000000 : ℚ), 4⟩,
    ⟨(127875594471/200000000000 : ℚ), (25655943593/10000000000 : ℚ), (-1740796299783/1000000000000 : ℚ), 3⟩,
    ⟨(322017619059/500000000000 : ℚ), (22493580239/10000000000 : ℚ), (-76894320693/50000000000 : ℚ), 3⟩,
    ⟨(5190472329/8000000000 : ℚ), (617236993/312500000 : ℚ), (-340163868611/250000000000 : ℚ), 3⟩,
    ⟨(653687880869/1000000000000 : ℚ), (8680718839/5000000000 : ℚ), (-150626581133/125000000000 : ℚ), 3⟩,
    ⟨(164665000949/250000000000 : ℚ), (15267905753/10000000000 : ℚ), (-1067653353427/1000000000000 : ℚ), 3⟩,
    ⟨(663713431627/1000000000000 : ℚ), (1342607243/1000000000 : ℚ), (-945884704481/1000000000000 : ℚ), 3⟩,
    ⟨(167208997553/250000000000 : ℚ), (2949780959/2500000000 : ℚ), (-33499782709/40000000000 : ℚ), 3⟩,
    ⟨(337007669429/500000000000 : ℚ), (10356665237/10000000000 : ℚ), (-740652184781/1000000000000 : ℚ), 3⟩,
    ⟨(679239000061/1000000000000 : ℚ), (36293727/40000000 : ℚ), (-163457992277/250000000000 : ℚ), 3⟩,
    ⟨(171123597391/250000000000 : ℚ), (7928290771/10000000000 : ℚ), (-287877248249/500000000000 : ℚ), 3⟩,
    ⟨(43110552917/62500000000 : ℚ), (1725865783/2500000000 : ℚ), (-63167549467/125000000000 : ℚ), 3⟩,
    ⟨(695049664757/1000000000000 : ℚ), (598390991/1000000000 : ℚ), (-88334802943/200000000000 : ℚ), 3⟩,
    ⟨(140064824373/200000000000 : ℚ), (5156845881/10000000000 : ℚ), (-11999205171/31250000000 : ℚ), 3⟩,
    ⟨(88197438921/125000000000 : ℚ), (551418829/1250000000 : ℚ), (-165786519849/500000000000 : ℚ), 3⟩,
    ⟨(710803172571/1000000000000 : ℚ), (3738055597/10000000000 : ℚ), (-283893612733/1000000000000 : ℚ), 3⟩,
    ⟨(715982521217/1000000000000 : ℚ), (1564445303/5000000000 : ℚ), (-240438570851/1000000000000 : ℚ), 3⟩,
    ⟨(360552539901/500000000000 : ℚ), (257687737/1000000000 : ℚ), (-100388008123/500000000000 : ℚ), 3⟩,
    ⟨(726158507633/1000000000000 : ℚ), (1037980143/5000000000 : ℚ), (-164529784593/1000000000000 : ℚ), 2⟩,
    ⟨(4569566441/6250000000 : ℚ), (1620867087/10000000000 : ℚ), (-16421391673/125000000000 : ℚ), 2⟩,
    ⟨(736009470303/1000000000000 : ℚ), (120699349/1000000000 : ℚ), (-50505926861/500000000000 : ℚ), 2⟩,
    ⟨(740783273311/1000000000000 : ℚ), (415153647/5000000000 : ℚ), (-73198539559/1000000000000 : ℚ), 2⟩,
    ⟨(745440539073/1000000000000 : ℚ), (19490731/400000000 : ℚ), (-47707794963/1000000000000 : ℚ), 2⟩,
    ⟨(749970047829/1000000000000 : ℚ), (34952207/2000000000 : ℚ), (-24342214493/1000000000000 : ℚ), 2⟩,
    ⟨(150872177519/200000000000 : ℚ), (-109961531/10000000000 : ℚ), (-731748717/250000000000 : ℚ), 2⟩,
    ⟨(758602480453/1000000000000 : ℚ), (-369325969/10000000000 : ℚ), (8346463399/500000000000 : ℚ), 2⟩,
    ⟨(152536921607/200000000000 : ℚ), (-302739363/5000000000 : ℚ), (17327650771/500000000000 : ℚ), 2⟩,
    ⟨(383298718069/500000000000 : ℚ), (-820320527/10000000000 : ℚ), (12770658093/250000000000 : ℚ), 2⟩,
    ⟨(48145721151/62500000000 : ℚ), (-1015535679/10000000000 : ℚ), (66083935211/1000000000000 : ℚ), 2⟩,
    ⟨(77387791909/100000000000 : ℚ), (-596308551/5000000000 : ℚ), (9969530437/125000000000 : ℚ), 2⟩,
    ⟨(388614017309/500000000000 : ℚ), (-338221941/2500000000 : ℚ), (92185897721/1000000000000 : ℚ), 2⟩,
    ⟨(390186907139/500000000000 : ℚ), (-299503813/2000000000 : ℚ), (103449651943/1000000000000 : ℚ), 2⟩,
    ⟨(195826919903/250000000000 : ℚ), (-1627546627/10000000000 : ℚ), (56807812373/500000000000 : ℚ), 2⟩,
    ⟨(786022562681/1000000000000 : ℚ), (-174388387/1000000000 : ℚ), (490976471/4000000000 : ℚ), 2⟩,
    ⟨(394255961547/500000000000 : ℚ), (-369466737/2000000000 : ℚ), (8180520009/62500000000 : ℚ), 2⟩,
    ⟨(197692440941/250000000000 : ℚ), (-969299231/5000000000 : ℚ), (27618982929/200000000000 : ℚ), 2⟩,
    ⟨(396395322677/500000000000 : ℚ), (-2018288687/10000000000 : ℚ), (72202298871/500000000000 : ℚ), 2⟩,
    ⟨(158913939877/200000000000 : ℚ), (-1043465141/5000000000 : ℚ), (149852524351/1000000000000 : ℚ), 2⟩,
    ⟨(398051319979/500000000000 : ℚ), (-1072485421/5000000000 : ℚ), (9654292943/62500000000 : ℚ), 2⟩,
    ⟨(398692887043/500000000000 : ℚ), (-2192784873/10000000000 : ℚ), (158278234907/1000000000000 : ℚ), 2⟩,
    ⟨(798416010587/1000000000000 : ℚ), (-2230678131/10000000000 : ℚ), (161301737603/1000000000000 : ℚ), 2⟩,
    ⟨(79919086753/100000000000 : ℚ), (-1129445569/5000000000 : ℚ), (81777700347/500000000000 : ℚ), 2⟩,
    ⟨(799708478217/1000000000000 : ℚ), (-455520387/2000000000 : ℚ), (41262808579/250000000000 : ℚ), 2⟩,
    ⟨(799967595679/1000000000000 : ℚ), (-2286928103/10000000000 : ℚ), (82898588313/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-2288092507/10000000000 : ℚ), (3317806541/20000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (6128106443/40000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
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
theorem certOK : JointInheritedControls.control545.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control545.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate545

-- Control546
namespace DiagonalRamsey.JointInheritedCertificate546
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(297201642329/500000000000 : ℚ), (19760792578579/10000000000 : ℚ), (-294012510845603/250000000000 : ℚ), 12⟩,
    ⟨(595392692427/1000000000000 : ℚ), (542187255041/2500000000 : ℚ), (-130052794759931/1000000000000 : ℚ), 9⟩,
    ⟨(298680989713/500000000000 : ℚ), (764865179609/10000000000 : ℚ), (-46373773453437/1000000000000 : ℚ), 7⟩,
    ⟨(300146090173/500000000000 : ℚ), (379680757513/10000000000 : ℚ), (-23320314810359/1000000000000 : ℚ), 6⟩,
    ⟨(2416620303/4000000000 : ℚ), (44416439619/2000000000 : ℚ), (-6917191296799/500000000000 : ℚ), 6⟩,
    ⟨(608913463843/1000000000000 : ℚ), (4465415721/312500000 : ℚ), (-225844661561/25000000000 : ℚ), 5⟩,
    ⟨(614521518747/1000000000000 : ℚ), (48877292217/5000000000 : ℚ), (-6273955544343/1000000000000 : ℚ), 5⟩,
    ⟨(155231307957/250000000000 : ℚ), (8716314603/1250000000 : ℚ), (-141989977961/31250000000 : ℚ), 4⟩,
    ⟨(628062931827/1000000000000 : ℚ), (12806443831/2500000000 : ℚ), (-26473466127/7812500000 : ℚ), 4⟩,
    ⟨(635865878793/1000000000000 : ℚ), (19212596079/5000000000 : ℚ), (-645002147649/250000000000 : ℚ), 4⟩,
    ⟨(251663643/390625000 : ℚ), (14621802811/5000000000 : ℚ), (-49814364261/25000000000 : ℚ), 4⟩,
    ⟨(130632248811/200000000000 : ℚ), (4492866229/2000000000 : ℚ), (-24265131101/15625000000 : ℚ), 3⟩,
    ⟨(20702721829/31250000000 : ℚ), (17339374499/10000000000 : ℚ), (-243191918551/200000000000 : ℚ), 3⟩,
    ⟨(26885867057/40000000000 : ℚ), (669442119/500000000 : ℚ), (-952423253391/1000000000000 : ℚ), 3⟩,
    ⟨(85255868841/125000000000 : ℚ), (10293728019/10000000000 : ℚ), (-148583880443/200000000000 : ℚ), 3⟩,
    ⟨(138418515277/200000000000 : ℚ), (3917763669/5000000000 : ℚ), (-574071955029/1000000000000 : ℚ), 3⟩,
    ⟨(43886675533/62500000000 : ℚ), (5860699499/10000000000 : ℚ), (-436434353199/1000000000000 : ℚ), 3⟩,
    ⟨(142446486837/200000000000 : ℚ), (4258949181/10000000000 : ℚ), (-161591608189/500000000000 : ℚ), 3⟩,
    ⟨(90266588561/125000000000 : ℚ), (589903653/2000000000 : ℚ), (-22929238507/100000000000 : ℚ), 3⟩,
    ⟨(146358457277/200000000000 : ℚ), (936142999/5000000000 : ℚ), (-7549787083/50000000000 : ℚ), 3⟩,
    ⟨(741118140859/1000000000000 : ℚ), (981846991/10000000000 : ℚ), (-10678640543/125000000000 : ℚ), 2⟩,
    ⟨(750020458833/1000000000000 : ℚ), (48696951/2000000000 : ℚ), (-3798303293/125000000000 : ℚ), 2⟩,
    ⟨(18960337653/25000000000 : ℚ), (-23101143/625000000 : ℚ), (1981211531/125000000000 : ℚ), 2⟩,
    ⟨(383108226543/500000000000 : ℚ), (-439173161/5000000000 : ℚ), (13656811879/250000000000 : ℚ), 2⟩,
    ⟨(154670830617/200000000000 : ℚ), (-1299054961/10000000000 : ℚ), (43505207821/500000000000 : ℚ), 2⟩,
    ⟨(389878933083/500000000000 : ℚ), (-822293917/5000000000 : ℚ), (113841464191/1000000000000 : ℚ), 2⟩,
    ⟨(78536592107/100000000000 : ℚ), (-96250991/500000000 : ℚ), (6789304277/50000000000 : ℚ), 2⟩,
    ⟨(790124309163/1000000000000 : ℚ), (-107410227/500000000 : ℚ), (153366839169/1000000000000 : ℚ), 2⟩,
    ⟨(793987204567/1000000000000 : ℚ), (-2320179103/10000000000 : ℚ), (166987927367/1000000000000 : ℚ), 2⟩,
    ⟨(796917405487/1000000000000 : ℚ), (-97818493/400000000 : ℚ), (8847675221/50000000000 : ℚ), 2⟩,
    ⟨(399443346243/500000000000 : ℚ), (-2527270997/10000000000 : ℚ), (183481004219/1000000000000 : ℚ), 2⟩,
    ⟨(159975220051/200000000000 : ℚ), (-2567670559/10000000000 : ℚ), (18671046623/100000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1286348533/5000000000 : ℚ), (93556277807/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (27600438173/200000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control546.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control546.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate546

-- Control547
namespace DiagonalRamsey.JointInheritedCertificate547
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(280926131197/1000000000000 : ℚ), (12868654400681/10000000000 : ℚ), (-72436816075249/200000000000 : ℚ), 12⟩,
    ⟨(281643530031/1000000000000 : ℚ), (56251418859/400000000 : ℚ), (-320198785913/8000000000 : ℚ), 9⟩,
    ⟨(70767854689/250000000000 : ℚ), (246375632613/5000000000 : ℚ), (-3562994488399/250000000000 : ℚ), 7⟩,
    ⟨(285196046023/1000000000000 : ℚ), (9705300087/400000000 : ℚ), (-71511217817/10000000000 : ℚ), 6⟩,
    ⟨(287996950511/1000000000000 : ℚ), (70291243067/5000000000 : ℚ), (-845754133979/200000000000 : ℚ), 6⟩,
    ⟨(291447157977/1000000000000 : ℚ), (11184549123/1250000000 : ℚ), (-1374640427631/500000000000 : ℚ), 5⟩,
    ⟨(147756720519/500000000000 : ℚ), (6045292373/1000000000 : ℚ), (-1898147882201/1000000000000 : ℚ), 5⟩,
    ⟨(150078319583/500000000000 : ℚ), (42503119923/10000000000 : ℚ), (-1363930679753/1000000000000 : ℚ), 4⟩,
    ⟨(305332035823/1000000000000 : ℚ), (15347520623/5000000000 : ℚ), (-503348462869/500000000000 : ℚ), 4⟩,
    ⟨(310989789111/1000000000000 : ℚ), (22554712797/10000000000 : ℚ), (-151201854997/200000000000 : ℚ), 4⟩,
    ⟨(317075411773/1000000000000 : ℚ), (16732261193/10000000000 : ℚ), (-11465571803/20000000000 : ℚ), 4⟩,
    ⟨(64706059187/200000000000 : ℚ), (6220832273/5000000000 : ℚ), (-435928905923/1000000000000 : ℚ), 4⟩,
    ⟨(10321633673/31250000000 : ℚ), (920091287/1000000000 : ℚ), (-165020811821/500000000000 : ℚ), 3⟩,
    ⟨(67459246999/200000000000 : ℚ), (6701712913/10000000000 : ℚ), (-30832571853/125000000000 : ℚ), 3⟩,
    ⟨(172237358187/500000000000 : ℚ), (4739890587/10000000000 : ℚ), (-22476827153/125000000000 : ℚ), 3⟩,
    ⟨(351758588973/1000000000000 : ℚ), (158811037/500000000 : ℚ), (-125402427319/1000000000000 : ℚ), 3⟩,
    ⟨(89769426279/250000000000 : ℚ), (1913390903/10000000000 : ℚ), (-40267571813/500000000000 : ℚ), 3⟩,
    ⟨(183180788857/500000000000 : ℚ), (881935941/10000000000 : ℚ), (-21566990723/500000000000 : ℚ), 3⟩,
    ⟨(373540059093/1000000000000 : ℚ), (15683913/5000000000 : ℚ), (-5837869217/500000000000 : ℚ), 3⟩,
    ⟨(47568002069/125000000000 : ℚ), (-84447257/1250000000 : ℚ), (14972835243/1000000000000 : ℚ), 3⟩,
    ⟨(387305998153/1000000000000 : ℚ), (-158346051/1250000000 : ℚ), (37665594781/1000000000000 : ℚ), 3⟩,
    ⟨(98440220579/250000000000 : ℚ), (-881635823/5000000000 : ℚ), (57052487839/1000000000000 : ℚ), 3⟩,
    ⟨(199923252489/500000000000 : ℚ), (-68161219/312500000 : ℚ), (36816078929/500000000000 : ℚ), 3⟩,
    ⟨(202752129133/500000000000 : ℚ), (-2532774079/10000000000 : ℚ), (4389464353/50000000000 : ℚ), 3⟩,
    ⟨(410679654923/1000000000000 : ℚ), (-2827641311/10000000000 : ℚ), (99821555759/1000000000000 : ℚ), 3⟩,
    ⟨(8306457061/20000000000 : ℚ), (-3073124749/10000000000 : ℚ), (27489849487/250000000000 : ℚ), 2⟩,
    ⟨(419389136111/1000000000000 : ℚ), (-3274910763/10000000000 : ℚ), (14797582867/125000000000 : ℚ), 2⟩,
    ⟨(211419671789/500000000000 : ℚ), (-3437364429/10000000000 : ℚ), (125221597403/1000000000000 : ℚ), 2⟩,
    ⟨(85128049613/200000000000 : ℚ), (-1781896659/5000000000 : ℚ), (130585104199/1000000000000 : ℚ), 2⟩,
    ⟨(106941218833/250000000000 : ℚ), (-914160453/2500000000 : ℚ), (26909385589/200000000000 : ℚ), 2⟩,
    ⟨(214596382029/500000000000 : ℚ), (-3717631723/10000000000 : ℚ), (137160203249/1000000000000 : ℚ), 2⟩,
    ⟨(107477540723/250000000000 : ℚ), (-936964979/2500000000 : ℚ), (138458658079/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-3751626079/10000000000 : ℚ), (138620586163/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (36327157833/100000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control547.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control547.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate547

-- Control548
namespace DiagonalRamsey.JointInheritedCertificate548
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(144121062323/500000000000 : ℚ), (1297051805523/1000000000 : ℚ), (-374552749334443/1000000000000 : ℚ), 12⟩,
    ⟨(288972439917/1000000000000 : ℚ), (1417545263089/10000000000 : ℚ), (-8278425466971/200000000000 : ℚ), 9⟩,
    ⟨(290426037123/1000000000000 : ℚ), (496763256887/10000000000 : ℚ), (-14739152659753/1000000000000 : ℚ), 7⟩,
    ⟨(292588917329/1000000000000 : ℚ), (244648278899/10000000000 : ℚ), (-184895676539/25000000000 : ℚ), 6⟩,
    ⟨(59088050163/200000000000 : ℚ), (17722183509/1250000000 : ℚ), (-546712954579/125000000000 : ℚ), 6⟩,
    ⟨(298952577683/1000000000000 : ℚ), (90256612881/10000000000 : ℚ), (-355464904371/125000000000 : ℚ), 5⟩,
    ⟨(303092072303/1000000000000 : ℚ), (30497662621/5000000000 : ℚ), (-1963554835139/1000000000000 : ℚ), 5⟩,
    ⟨(7695471727/25000000000 : ℚ), (21448518287/5000000000 : ℚ), (-705566916741/500000000000 : ℚ), 4⟩,
    ⟨(156543723189/500000000000 : ℚ), (3099042963/1000000000 : ℚ), (-52087258533/50000000000 : ℚ), 4⟩,
    ⟨(63769412983/200000000000 : ℚ), (22781695951/10000000000 : ℚ), (-782545893661/1000000000000 : ℚ), 4⟩,
    ⟨(325042256419/1000000000000 : ℚ), (16910084649/10000000000 : ℚ), (-118725756937/200000000000 : ℚ), 4⟩,
    ⟨(331613357807/1000000000000 : ℚ), (12583199373/10000000000 : ℚ), (-451646572007/1000000000000 : ℚ), 4⟩,
    ⟨(338497085781/1000000000000 : ℚ), (465754517/500000000 : ℚ), (-342204930343/1000000000000 : ℚ), 3⟩,
    ⟨(172813573139/500000000000 : ℚ), (6794920283/10000000000 : ℚ), (-256041364063/1000000000000 : ℚ), 3⟩,
    ⟨(352934872917/1000000000000 : ℚ), (4816811007/10000000000 : ℚ), (-186980278767/1000000000000 : ℚ), 3⟩,
    ⟨(360349888297/1000000000000 : ℚ), (324035969/1000000000 : ℚ), (-26155938447/200000000000 : ℚ), 3⟩,
    ⟨(73560156353/200000000000 : ℚ), (1967417901/10000000000 : ℚ), (-84451434299/1000000000000 : ℚ), 3⟩,
    ⟨(75043159429/200000000000 : ℚ), (115989149/1250000000 : ℚ), (-2292251323/50000000000 : ℚ), 3⟩,
    ⟨(47815440473/125000000000 : ℚ), (17726847/2500000000 : ℚ), (-6692252263/500000000000 : ℚ), 3⟩,
    ⟨(389653584281/1000000000000 : ℚ), (-320601797/5000000000 : ℚ), (14102856733/1000000000000 : ℚ), 3⟩,
    ⟨(387243469/976562500 : ℚ), (-123654627/1000000000 : ℚ), (2343804153/62500000000 : ℚ), 3⟩,
    ⟨(100777103411/250000000000 : ℚ), (-217048793/1250000000 : ℚ), (57482468541/1000000000000 : ℚ), 3⟩,
    ⟨(409303605147/1000000000000 : ℚ), (-215696453/1000000000 : ℚ), (74564128049/1000000000000 : ℚ), 3⟩,
    ⟨(83012644737/200000000000 : ℚ), (-1255368247/5000000000 : ℚ), (44572217599/500000000000 : ℚ), 3⟩,
    ⟨(210165900491/500000000000 : ℚ), (-2807328871/10000000000 : ℚ), (5076598549/50000000000 : ℚ), 3⟩,
    ⟨(425058597759/1000000000000 : ℚ), (-122167339/400000000 : ℚ), (22393144807/200000000000 : ℚ), 2⟩,
    ⟨(21459904619/50000000000 : ℚ), (-101782753/312500000 : ℚ), (60315120457/500000000000 : ℚ), 2⟩,
    ⟨(432710419247/1000000000000 : ℚ), (-1710167963/5000000000 : ℚ), (127666972659/1000000000000 : ℚ), 2⟩,
    ⟨(217780876367/500000000000 : ℚ), (-709478329/2000000000 : ℚ), (66591403551/500000000000 : ℚ), 2⟩,
    ⟨(437724632939/1000000000000 : ℚ), (-728137493/2000000000 : ℚ), (137256459073/1000000000000 : ℚ), 2⟩,
    ⟨(87835646029/200000000000 : ℚ), (-3701965027/10000000000 : ℚ), (69971584493/500000000000 : ℚ), 2⟩,
    ⟨(54988568177/125000000000 : ℚ), (-933083483/2500000000 : ℚ), (70639006211/500000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-186805877/500000000 : ℚ), (141444473883/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (35751580629/100000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control548.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control548.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate548
