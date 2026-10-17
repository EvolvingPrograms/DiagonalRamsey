import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate544
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (4673165795359/54621560144725 : ℚ), (601554258221/2500000000 : ℚ), (-10321006422967/500000000000 : ℚ)⟩,
  ⟨(4673165795359/54621560144725 : ℚ), (749453844263/8599348159800 : ℚ), (44270925419/2000000000 : ℚ), (-974674832249/500000000000 : ℚ)⟩,
  ⟨(749453844263/8599348159800 : ℚ), (208364746449/2326376603050 : ℚ), (49367663899/10000000000 : ℚ), (-112610493993/250000000000 : ℚ)⟩,
  ⟨(208364746449/2326376603050 : ℚ), (174299235099/1885957802900 : ℚ), (1420065919/5000000000 : ℚ), (-16856241537/500000000000 : ℚ)⟩,
  ⟨(174299235099/1885957802900 : ℚ), (1478799211/15521750750 : ℚ), (-16019446191/10000000000 : ℚ), (5623470081/40000000000 : ℚ)⟩,
  ⟨(1478799211/15521750750 : ℚ), (2387775476/24443236545 : ℚ), (-25332496641/10000000000 : ℚ), (45862940937/200000000000 : ℚ)⟩,
  ⟨(2387775476/24443236545 : ℚ), (21589425691/217428222700 : ℚ), (-604422879/200000000 : ℚ), (55414042841/200000000000 : ℚ)⟩,
  ⟨(21589425691/217428222700 : ℚ), (1306998289/13079299150 : ℚ), (-32395426177/10000000000 : ℚ), (37332454987/125000000000 : ℚ)⟩,
  ⟨(1306998289/13079299150 : ℚ), (1/10 : ℚ), (-102053163/31250000 : ℚ), (150636818237/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (22946837/125000000 : ℚ), (-2/5 : ℚ), (187351757437/500000000000 : ℚ)⟩,
  ⟨(22946837/125000000 : ℚ), (7604573823/40000000000 : ℚ), (-2613996578/6539649575 : ℚ), (49001752717545777731/130792991500000000000 : ℚ)⟩,
  ⟨(7604573823/40000000000 : ℚ), (195577121/800000000 : ℚ), (-21589425691/54357055675 : ℚ), (162709745682295043017/434856445400000000000 : ℚ)⟩,
  ⟨(195577121/800000000 : ℚ), (14667503359/40000000000 : ℚ), (-9551101904/24443236545 : ℚ), (364298562053562284069/977729461800000000000 : ℚ)⟩,
  ⟨(14667503359/40000000000 : ℚ), (23980553809/40000000000 : ℚ), (-2957598422/7760875375 : ℚ), (6029889398835086567/16338685000000000000 : ℚ)⟩,
  ⟨(23980553809/40000000000 : ℚ), (21420065919/20000000000 : ℚ), (-174299235099/471489450725 : ℚ), (426949937863642012551/1178723626812500000000 : ℚ)⟩,
  ⟨(21420065919/20000000000 : ℚ), (89367663899/40000000000 : ℚ), (-416729492898/1163188301525 : ℚ), (1628418777945174985101/4652753206100000000000 : ℚ)⟩,
  ⟨(89367663899/40000000000 : ℚ), (52270925419/8000000000 : ℚ), (-749453844263/2149837039950 : ℚ), (28241865490194333198181/85993481598000000000000 : ℚ)⟩,
  ⟨(52270925419/8000000000 : ℚ), (32/1 : ℚ), (-18692663181436/54621560144725 : ℚ), (313176608748780911814749/1092431202894500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (368856950377/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(42674867773/500000000000 : ℚ), (601554258221/2500000000 : ℚ), (-10321006422967/500000000000 : ℚ), 9⟩,
    ⟨(8645410261/100000000000 : ℚ), (44270925419/2000000000 : ℚ), (-974674832249/500000000000 : ℚ), 6⟩,
    ⟨(5530919179/62500000000 : ℚ), (49367663899/10000000000 : ℚ), (-112610493993/250000000000 : ℚ), 5⟩,
    ⟨(11395110601/125000000000 : ℚ), (1420065919/5000000000 : ℚ), (-16856241537/500000000000 : ℚ), 4⟩,
    ⟨(94046735019/1000000000000 : ℚ), (-16019446191/10000000000 : ℚ), (5623470081/40000000000 : ℚ), 4⟩,
    ⟨(96712912963/1000000000000 : ℚ), (-25332496641/10000000000 : ℚ), (45862940937/200000000000 : ℚ), 4⟩,
    ⟨(98753517217/1000000000000 : ℚ), (-604422879/200000000 : ℚ), (55414042841/200000000000 : ℚ), 4⟩,
    ⟨(99857884281/1000000000000 : ℚ), (-32395426177/10000000000 : ℚ), (37332454987/125000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-102053163/31250000 : ℚ), (150636818237/500000000000 : ℚ), 3⟩]
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
