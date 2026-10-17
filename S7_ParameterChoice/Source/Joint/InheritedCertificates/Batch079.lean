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

-- Control692
namespace DiagonalRamsey.JointInheritedCertificate692
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6565454559/50000000000 : ℚ), (2349149628009/2500000000 : ℚ), (-15446395466803/125000000000 : ℚ), 12⟩,
    ⟨(26333472997/200000000000 : ℚ), (995626438413/10000000000 : ℚ), (-13203219204711/1000000000000 : ℚ), 9⟩,
    ⟨(66185072167/500000000000 : ℚ), (81540762661/2500000000 : ℚ), (-4372714785051/1000000000000 : ℚ), 7⟩,
    ⟨(13339042181/100000000000 : ℚ), (35705532513/2500000000 : ℚ), (-77539733513/40000000000 : ℚ), 6⟩,
    ⟨(134688988723/1000000000000 : ℚ), (67923445143/10000000000 : ℚ), (-467662544077/500000000000 : ℚ), 6⟩,
    ⟨(136215941873/1000000000000 : ℚ), (3787822143/1250000000 : ℚ), (-42609448767/100000000000 : ℚ), 5⟩,
    ⟨(137912601309/1000000000000 : ℚ), (551507669/625000000 : ℚ), (-131880217549/1000000000000 : ℚ), 5⟩,
    ⟨(69856882679/500000000000 : ℚ), (-4562403311/10000000000 : ℚ), (53847168171/1000000000000 : ℚ), 5⟩,
    ⟨(141550216297/1000000000000 : ℚ), (-13451137033/10000000000 : ℚ), (44699806011/250000000000 : ℚ), 4⟩,
    ⟨(143351380347/1000000000000 : ℚ), (-981561361/500000000 : ℚ), (10672271519/40000000000 : ℚ), 4⟩,
    ⟨(72524019891/500000000000 : ℚ), (-962551547/400000000 : ℚ), (33070917147/100000000000 : ℚ), 4⟩,
    ⟨(146574992933/1000000000000 : ℚ), (-27292314381/10000000000 : ℚ), (377777252153/1000000000000 : ℚ), 4⟩,
    ⟨(29574711969/200000000000 : ℚ), (-3704178027/1250000000 : ℚ), (206120318383/500000000000 : ℚ), 4⟩,
    ⟨(148893837321/1000000000000 : ℚ), (-1563657491/500000000 : ℚ), (54571271397/125000000000 : ℚ), 4⟩,
    ⟨(14959661667/100000000000 : ℚ), (-8079740093/2500000000 : ℚ), (452178029161/1000000000000 : ℚ), 4⟩,
    ⟨(5998195619/40000000000 : ℚ), (-32829145737/10000000000 : ℚ), (459819325141/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-16446178739/5000000000 : ℚ), (2303836793/5000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (334206502247/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem certOK : JointInheritedControls.control692.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control692.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate692

-- Control697
namespace DiagonalRamsey.JointInheritedCertificate697
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(210557384781/1000000000000 : ℚ), (3140162631447/10000000000 : ℚ), (-13283853770451/200000000000 : ℚ), 11⟩,
    ⟨(106135925883/500000000000 : ℚ), (331716117319/10000000000 : ℚ), (-3598307553267/500000000000 : ℚ), 8⟩,
    ⟨(215634899731/1000000000000 : ℚ), (2741877999/250000000 : ℚ), (-1229099785247/500000000000 : ℚ), 6⟩,
    ⟨(22051728863/100000000000 : ℚ), (49630653107/10000000000 : ℚ), (-1151969599723/1000000000000 : ℚ), 5⟩,
    ⟨(113365695497/500000000000 : ℚ), (25502796323/10000000000 : ℚ), (-306811580477/500000000000 : ℚ), 5⟩,
    ⟨(58509600589/250000000000 : ℚ), (13616019559/10000000000 : ℚ), (-170159233919/500000000000 : ℚ), 4⟩,
    ⟨(48431503673/200000000000 : ℚ), (6971984953/10000000000 : ℚ), (-36479875111/200000000000 : ℚ), 4⟩,
    ⟨(250776725947/1000000000000 : ℚ), (2921646383/10000000000 : ℚ), (-82716160939/1000000000000 : ℚ), 4⟩,
    ⟨(259564793789/1000000000000 : ℚ), (145746367/5000000000 : ℚ), (-7840079989/500000000000 : ℚ), 3⟩,
    ⟨(268184001371/1000000000000 : ℚ), (-748782449/5000000000 : ℚ), (31486517859/1000000000000 : ℚ), 3⟩,
    ⟨(276303117381/1000000000000 : ℚ), (-1377012159/5000000000 : ℚ), (16417676893/250000000000 : ℚ), 3⟩,
    ⟨(141805064371/500000000000 : ℚ), (-365135197/1000000000 : ℚ), (45390467107/500000000000 : ℚ), 3⟩,
    ⟨(144912115553/500000000000 : ℚ), (-26816279/62500000 : ℚ), (109104372561/1000000000000 : ℚ), 3⟩,
    ⟨(58941324001/200000000000 : ℚ), (-4731664861/10000000000 : ℚ), (121993098003/1000000000000 : ℚ), 3⟩,
    ⟨(298069667971/1000000000000 : ℚ), (-1252437709/2500000000 : ℚ), (65117348907/500000000000 : ℚ), 3⟩,
    ⟨(74946033739/250000000000 : ℚ), (-5144429887/10000000000 : ℚ), (134260552173/1000000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-5161069959/10000000000 : ℚ), (134759574603/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (482220042821/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control697.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control697.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate697

-- Control698
namespace DiagonalRamsey.JointInheritedCertificate698
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(178408754879/1000000000000 : ℚ), (3324974683689/10000000000 : ℚ), (-59575056313329/1000000000000 : ℚ), 11⟩,
    ⟨(179781040627/1000000000000 : ℚ), (2811022883/80000000 : ℚ), (-3224136452483/500000000000 : ℚ), 8⟩,
    ⟨(182472875953/1000000000000 : ℚ), (116120996283/10000000000 : ℚ), (-1098750758683/500000000000 : ℚ), 6⟩,
    ⟨(186380815133/1000000000000 : ℚ), (52430571031/10000000000 : ℚ), (-64099385021/62500000000 : ℚ), 5⟩,
    ⟨(191354678257/1000000000000 : ℚ), (13398483757/5000000000 : ℚ), (-135620533581/250000000000 : ℚ), 5⟩,
    ⟨(39440664511/200000000000 : ℚ), (1414248827/1000000000 : ℚ), (-37137293123/125000000000 : ℚ), 4⟩,
    ⟨(101850993953/500000000000 : ℚ), (7051594141/10000000000 : ℚ), (-77596266393/500000000000 : ℚ), 4⟩,
    ⟨(52650233561/250000000000 : ℚ), (1358039167/5000000000 : ℚ), (-16376138983/250000000000 : ℚ), 4⟩,
    ⟨(54408759733/250000000000 : ℚ), (-21729653/2000000000 : ℚ), (-2544205153/500000000000 : ℚ), 4⟩,
    ⟨(224533985271/1000000000000 : ℚ), (-1018487179/5000000000 : ℚ), (37508087087/1000000000000 : ℚ), 3⟩,
    ⟨(231032650621/1000000000000 : ℚ), (-849060403/2500000000 : ℚ), (68451051693/1000000000000 : ℚ), 3⟩,
    ⟨(236881294919/1000000000000 : ℚ), (-1092614073/2500000000 : ℚ), (5702127409/62500000000 : ℚ), 3⟩,
    ⟨(241855158043/1000000000000 : ℚ), (-5066722627/10000000000 : ℚ), (53948069789/500000000000 : ℚ), 3⟩,
    ⟨(30720387153/125000000000 : ℚ), (-2774206839/5000000000 : ℚ), (59819274201/500000000000 : ℚ), 3⟩,
    ⟨(248454932549/1000000000000 : ℚ), (-2926364307/5000000000 : ℚ), (127157984007/1000000000000 : ℚ), 3⟩,
    ⟨(124913609149/500000000000 : ℚ), (-6000293367/10000000000 : ℚ), (130834372721/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-376158381/625000000 : ℚ), (16411279157/125000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (124877277307/250000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control698.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control698.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate698

-- Control699
namespace DiagonalRamsey.JointInheritedCertificate699
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(253829362463/1000000000000 : ℚ), (14208943039339/10000000000 : ℚ), (-18057154117533/50000000000 : ℚ), 13⟩,
    ⟨(7946630353/31250000000 : ℚ), (1556318196799/10000000000 : ℚ), (-4984315644857/125000000000 : ℚ), 10⟩,
    ⟨(12760666593/50000000000 : ℚ), (54683298749/1000000000 : ℚ), (-14172893800489/1000000000000 : ℚ), 8⟩,
    ⟨(2052671783/8000000000 : ℚ), (33743607233/1250000000 : ℚ), (-709164599341/100000000000 : ℚ), 7⟩,
    ⟨(258390894319/1000000000000 : ℚ), (15670094581/1000000000 : ℚ), (-83546885747/20000000000 : ℚ), 7⟩,
    ⟨(5212333891/20000000000 : ℚ), (24953197573/2500000000 : ℚ), (-540381843253/200000000000 : ℚ), 6⟩,
    ⟨(32904992237/125000000000 : ℚ), (16847116513/2500000000 : ℚ), (-231636144201/125000000000 : ℚ), 6⟩,
    ⟨(266235361089/1000000000000 : ℚ), (47252872247/10000000000 : ℚ), (-165038109843/125000000000 : ℚ), 5⟩,
    ⟨(269574116567/1000000000000 : ℚ), (4243365003/1250000000 : ℚ), (-192802300909/200000000000 : ℚ), 5⟩,
    ⟨(17076503143/62500000000 : ℚ), (24729339323/10000000000 : ℚ), (-713966680831/1000000000000 : ℚ), 5⟩,
    ⟨(277150011397/1000000000000 : ℚ), (9051271373/5000000000 : ℚ), (-16615246247/31250000000 : ℚ), 4⟩,
    ⟨(14065709537/50000000000 : ℚ), (6596603979/5000000000 : ℚ), (-197330576451/500000000000 : ℚ), 4⟩,
    ⟨(71419121249/250000000000 : ℚ), (2366217273/2500000000 : ℚ), (-72251427981/250000000000 : ℚ), 4⟩,
    ⟨(58038976577/200000000000 : ℚ), (3286863899/5000000000 : ℚ), (-205789292227/1000000000000 : ℚ), 4⟩,
    ⟨(147412934883/500000000000 : ℚ), (536449253/1250000000 : ℚ), (-34764080937/250000000000 : ℚ), 4⟩,
    ⟨(18720302919/62500000000 : ℚ), (615622861/2500000000 : ℚ), (-21178982093/250000000000 : ℚ), 4⟩,
    ⟨(152123279991/500000000000 : ℚ), (488560239/5000000000 : ℚ), (-39886508217/1000000000000 : ℚ), 4⟩,
    ⟨(308945536919/1000000000000 : ℚ), (-242745549/10000000000 : ℚ), (-77956027/31250000000 : ℚ), 3⟩,
    ⟨(313576523801/1000000000000 : ℚ), (-250821929/2000000000 : ℚ), (28978845627/1000000000000 : ℚ), 3⟩,
    ⟨(31809492169/100000000000 : ℚ), (-2099146949/10000000000 : ℚ), (13915870593/250000000000 : ℚ), 3⟩,
    ⟨(64491443189/200000000000 : ℚ), (-2809463127/10000000000 : ℚ), (4900614977/62500000000 : ℚ), 3⟩,
    ⟨(326621395289/1000000000000 : ℚ), (-3408993389/10000000000 : ℚ), (19572909489/200000000000 : ℚ), 3⟩,
    ⟨(165273678199/500000000000 : ℚ), (-3916015691/10000000000 : ℚ), (57261410317/500000000000 : ℚ), 3⟩,
    ⟨(334197290119/1000000000000 : ℚ), (-271535873/625000000 : ℚ), (128765754979/1000000000000 : ℚ), 3⟩,
    ⟨(337536045597/1000000000000 : ℚ), (-941100091/2000000000 : ℚ), (14088730367/100000000000 : ℚ), 3⟩,
    ⟨(34053146879/100000000000 : ℚ), (-625895039/1250000000 : ℚ), (151114100323/1000000000000 : ℚ), 3⟩,
    ⟨(42894339017/125000000000 : ℚ), (-525600027/1000000000 : ℚ), (79810112979/500000000000 : ℚ), 3⟩,
    ⟨(345380512367/1000000000000 : ℚ), (-2728478091/5000000000 : ℚ), (83269160807/500000000000 : ℚ), 3⟩,
    ⟨(347187433811/1000000000000 : ℚ), (-1403439183/2500000000 : ℚ), (8598399553/50000000000 : ℚ), 3⟩,
    ⟨(174279037413/500000000000 : ℚ), (-2864574347/5000000000 : ℚ), (175982129067/1000000000000 : ℚ), 3⟩,
    ⟨(34947923539/100000000000 : ℚ), (-5805061053/10000000000 : ℚ), (89315801059/500000000000 : ℚ), 3⟩,
    ⟨(349942044223/1000000000000 : ℚ), (-5842719601/10000000000 : ℚ), (43932754/244140625 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-2923706569/5000000000 : ℚ), (180112820577/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (53507812251/125000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control699.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control699.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate699

-- Control700
namespace DiagonalRamsey.JointInheritedCertificate700
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(5898035793/40000000000 : ℚ), (3745670949769/10000000000 : ℚ), (-55440514629267/1000000000000 : ℚ), 11⟩,
    ⟨(148458174249/1000000000000 : ℚ), (49529985841/1250000000 : ℚ), (-5990655764743/1000000000000 : ℚ), 8⟩,
    ⟨(150434023913/1000000000000 : ℚ), (130913374213/10000000000 : ℚ), (-2034028360331/1000000000000 : ℚ), 6⟩,
    ⟨(153302513023/1000000000000 : ℚ), (7366824901/1250000000 : ℚ), (-471572094287/500000000000 : ℚ), 6⟩,
    ⟨(156953407151/1000000000000 : ℚ), (29885659747/10000000000 : ℚ), (-493366476033/1000000000000 : ℚ), 5⟩,
    ⟨(40311601121/250000000000 : ℚ), (7748745903/5000000000 : ℚ), (-33104764803/125000000000 : ℚ), 4⟩,
    ⟨(8300826377/50000000000 : ℚ), (3702305377/5000000000 : ℚ), (-132607091129/1000000000000 : ℚ), 4⟩,
    ⟨(171080463167/1000000000000 : ℚ), (1218008449/5000000000 : ℚ), (-24482331211/500000000000 : ℚ), 4⟩,
    ⟨(88121803579/500000000000 : ℚ), (-203817947/2500000000 : ℚ), (7442449191/1000000000000 : ℚ), 4⟩,
    ⟨(36261508557/200000000000 : ℚ), (-304463511/1000000000 : ℚ), (47268047341/1000000000000 : ℚ), 4⟩,
    ⟨(93038832921/500000000000 : ℚ), (-4622939923/10000000000 : ℚ), (15248903277/200000000000 : ℚ), 3⟩,
    ⟨(95185331587/500000000000 : ℚ), (-5758767783/10000000000 : ℚ), (97615615903/1000000000000 : ℚ), 3⟩,
    ⟨(97010778651/500000000000 : ℚ), (-3286746571/5000000000 : ℚ), (22654141519/200000000000 : ℚ), 3⟩,
    ⟨(49222511603/250000000000 : ℚ), (-7138839403/10000000000 : ℚ), (7769958447/62500000000 : ℚ), 3⟩,
    ⟨(198865896077/1000000000000 : ℚ), (-3748406081/5000000000 : ℚ), (131402440447/1000000000000 : ℚ), 3⟩,
    ⟨(399746351/2000000000 : ℚ), (-7670638589/10000000000 : ℚ), (134867963319/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-7692136991/10000000000 : ℚ), (135297794931/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (31879202309/62500000000 : ℚ)
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
theorem certOK : JointInheritedControls.control700.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control700.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate700

-- Control701
namespace DiagonalRamsey.JointInheritedCertificate701
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1159712339/6250000000 : ℚ), (480512957563/1250000000 : ℚ), (-8949261689553/125000000000 : ℚ), 11⟩,
    ⟨(5837165561/31250000000 : ℚ), (101744360693/2500000000 : ℚ), (-3022879171/390625000 : ℚ), 8⟩,
    ⟨(9460623629/50000000000 : ℚ), (134642577953/10000000000 : ℚ), (-657360616233/250000000000 : ℚ), 6⟩,
    ⟨(192730376881/1000000000000 : ℚ), (30370873851/5000000000 : ℚ), (-1220974055907/1000000000000 : ℚ), 6⟩,
    ⟨(39441563953/200000000000 : ℚ), (30911090583/10000000000 : ℚ), (-320221013391/500000000000 : ℚ), 5⟩,
    ⟨(202472735613/1000000000000 : ℚ), (16136243057/10000000000 : ℚ), (-345668895853/1000000000000 : ℚ), 4⟩,
    ⟨(208322796663/1000000000000 : ℚ), (1957336443/2500000000 : ℚ), (-175291521737/1000000000000 : ℚ), 4⟩,
    ⟨(214533188349/1000000000000 : ℚ), (2733961257/10000000000 : ℚ), (-8461251811/125000000000 : ℚ), 4⟩,
    ⟨(276081561/1250000000 : ℚ), (-297804209/5000000000 : ℚ), (590569341/125000000000 : ℚ), 4⟩,
    ⟨(113537820243/500000000000 : ℚ), (-2874470307/10000000000 : ℚ), (55726516507/1000000000000 : ℚ), 4⟩,
    ⟨(46585140307/200000000000 : ℚ), (-4484446617/10000000000 : ℚ), (18547223273/200000000000 : ℚ), 3⟩,
    ⟨(29773827173/125000000000 : ℚ), (-5640588941/10000000000 : ℚ), (119959992633/1000000000000 : ℚ), 3⟩,
    ⟨(60667015067/250000000000 : ℚ), (-1293648833/2000000000 : ℚ), (3496367367/25000000000 : ℚ), 3⟩,
    ⟨(246185964569/1000000000000 : ℚ), (-3520805841/5000000000 : ℚ), (38466897117/250000000000 : ℚ), 3⟩,
    ⟨(62152284799/250000000000 : ℚ), (-370210891/500000000 : ℚ), (81418943743/500000000000 : ℚ), 3⟩,
    ⟨(249844462909/1000000000000 : ℚ), (-236880077/312500000 : ℚ), (1672228409/10000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-950239589/1250000000 : ℚ), (33553305561/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (93937816891/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control701.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control701.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate701

-- Control702
namespace DiagonalRamsey.JointInheritedCertificate702
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(131730281677/500000000000 : ℚ), (16392657561801/10000000000 : ℚ), (-432378932229503/1000000000000 : ℚ), 13⟩,
    ⟨(26387702327/100000000000 : ℚ), (898417548561/5000000000 : ℚ), (-5965584446317/125000000000 : ℚ), 10⟩,
    ⟨(264705932367/1000000000000 : ℚ), (157973870619/2500000000 : ℚ), (-3390436062473/200000000000 : ℚ), 8⟩,
    ⟨(53187861559/200000000000 : ℚ), (39022980393/1250000000 : ℚ), (-8473848087269/1000000000000 : ℚ), 7⟩,
    ⟨(66891317869/250000000000 : ℚ), (181313368047/10000000000 : ℚ), (-996920748397/200000000000 : ℚ), 7⟩,
    ⟨(26956816449/100000000000 : ℚ), (115506682569/10000000000 : ℚ), (-804530574733/250000000000 : ℚ), 6⟩,
    ⟨(271928697883/1000000000000 : ℚ), (77954854573/10000000000 : ℚ), (-2201895928963/1000000000000 : ℚ), 6⟩,
    ⟨(68656034607/250000000000 : ℚ), (5460413973/1000000000 : ℚ), (-1564068160893/1000000000000 : ℚ), 5⟩,
    ⟨(277628527559/1000000000000 : ℚ), (39151301133/10000000000 : ℚ), (-1137561495081/1000000000000 : ℚ), 5⟩,
    ⟨(140456465683/500000000000 : ℚ), (28430092143/10000000000 : ℚ), (-838274098263/1000000000000 : ℚ), 5⟩,
    ⟨(56889143849/200000000000 : ℚ), (414200903/200000000 : ℚ), (-124025995523/200000000000 : ℚ), 5⟩,
    ⟨(144096434259/500000000000 : ℚ), (936346429/625000000 : ℚ), (-114043039709/250000000000 : ℚ), 4⟩,
    ⟨(292118292089/1000000000000 : ℚ), (10624043613/10000000000 : ℚ), (-329780016821/1000000000000 : ℚ), 4⟩,
    ⟨(148092092991/500000000000 : ℚ), (361980387/500000000 : ℚ), (-46051536837/200000000000 : ℚ), 4⟩,
    ⟨(300351393417/1000000000000 : ℚ), (4563913363/10000000000 : ℚ), (-150473209877/1000000000000 : ℚ), 4⟩,
    ⟨(304579781909/1000000000000 : ℚ), (1208068547/5000000000 : ℚ), (-17105438153/200000000000 : ℚ), 4⟩,
    ⟨(61765725953/200000000000 : ℚ), (669453683/10000000000 : ℚ), (-3996010139/125000000000 : ℚ), 4⟩,
    ⟨(19566063641/62500000000 : ℚ), (-153398721/2000000000 : ℚ), (3172017721/250000000000 : ℚ), 4⟩,
    ⟨(79306056423/250000000000 : ℚ), (-1959476341/10000000000 : ℚ), (25130662199/500000000000 : ℚ), 4⟩,
    ⟨(64258023917/200000000000 : ℚ), (-2957075189/10000000000 : ℚ), (16421094621/200000000000 : ℚ), 3⟩,
    ⟨(65043108631/200000000000 : ℚ), (-3796604957/10000000000 : ℚ), (109239957251/1000000000000 : ℚ), 3⟩,
    ⟨(82240673107/250000000000 : ℚ), (-2252984529/5000000000 : ℚ), (132439947067/1000000000000 : ℚ), 3⟩,
    ⟨(332495480307/1000000000000 : ℚ), (-5106490479/10000000000 : ℚ), (7614957803/50000000000 : ℚ), 3⟩,
    ⟨(167889942057/500000000000 : ℚ), (-21931879/39062500 : ℚ), (42318621563/250000000000 : ℚ), 3⟩,
    ⟨(67756854649/200000000000 : ℚ), (-3021413639/5000000000 : ℚ), (183718327441/1000000000000 : ℚ), 3⟩,
    ⟨(34147971379/100000000000 : ℚ), (-128021113/200000000 : ℚ), (19590230209/100000000000 : ℚ), 3⟩,
    ⟨(343840247183/1000000000000 : ℚ), (-6696770871/10000000000 : ℚ), (206034966223/1000000000000 : ℚ), 3⟩,
    ⟨(172921570099/500000000000 : ℚ), (-216741603/312500000 : ℚ), (214275143149/1000000000000 : ℚ), 3⟩,
    ⟨(347469103879/1000000000000 : ℚ), (-1424456791/2000000000 : ℚ), (220742018369/1000000000000 : ℚ), 3⟩,
    ⟨(348702479307/1000000000000 : ℚ), (-3629814287/5000000000 : ℚ), (112761376773/500000000000 : ℚ), 3⟩,
    ⟨(349531388403/1000000000000 : ℚ), (-7350010431/10000000000 : ℚ), (57169531701/250000000000 : ℚ), 3⟩,
    ⟨(546793513/1562500000 : ℚ), (-295794213/400000000 : ℚ), (230246529117/1000000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-7400444917/10000000000 : ℚ), (230442150247/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (390197700127/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
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
theorem certOK : JointInheritedControls.control702.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control702.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate702

-- Control703
namespace DiagonalRamsey.JointInheritedCertificate703
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(79035598293/500000000000 : ℚ), (4844034604983/10000000000 : ℚ), (-15357416833989/200000000000 : ℚ), 11⟩,
    ⟨(19859362799/125000000000 : ℚ), (513653011419/10000000000 : ℚ), (-4136017331957/500000000000 : ℚ), 8⟩,
    ⟨(160451428041/1000000000000 : ℚ), (42438564093/2500000000 : ℚ), (-2790092216687/1000000000000 : ℚ), 7⟩,
    ⟨(162740188537/1000000000000 : ℚ), (76090280317/10000000000 : ℚ), (-319711240493/250000000000 : ℚ), 6⟩,
    ⟨(2588331689/15625000000 : ℚ), (38100287719/10000000000 : ℚ), (-327973323937/500000000000 : ℚ), 5⟩,
    ⟨(169078600243/1000000000000 : ℚ), (9589002593/5000000000 : ℚ), (-339655478857/1000000000000 : ℚ), 5⟩,
    ⟨(86442334923/500000000000 : ℚ), (8473502107/10000000000 : ℚ), (-78415476637/500000000000 : ℚ), 4⟩,
    ⟨(88462585893/500000000000 : ℚ), (1865052227/10000000000 : ℚ), (-10338372871/250000000000 : ℚ), 4⟩,
    ⟨(181044831839/1000000000000 : ℚ), (-99253711/400000000 : ℚ), (7276409409/200000000000 : ℚ), 4⟩,
    ⟨(185085333779/1000000000000 : ℚ), (-2737584069/5000000000 : ℚ), (45578423177/500000000000 : ℚ), 4⟩,
    ⟨(188891403383/1000000000000 : ℚ), (-7603209721/10000000000 : ℚ), (8183248681/62500000000 : ℚ), 4⟩,
    ⟨(192316775529/1000000000000 : ℚ), (-4570049367/5000000000 : ℚ), (80108650359/500000000000 : ℚ), 4⟩,
    ⟨(195229815089/1000000000000 : ℚ), (-5122968673/5000000000 : ℚ), (90820832201/500000000000 : ℚ), 4⟩,
    ⟨(6172455487/31250000000 : ℚ), (-11015309827/10000000000 : ℚ), (4918716909/25000000000 : ℚ), 4⟩,
    ⟨(199095101233/1000000000000 : ℚ), (-11503462729/10000000000 : ℚ), (103214335969/500000000000 : ℚ), 3⟩,
    ⟨(156170943/781250000 : ℚ), (-11740810957/10000000000 : ℚ), (211163647517/1000000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-5885090191/5000000000 : ℚ), (5293772183/25000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (92662114561/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control703.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control703.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate703
