import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate773
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (17471131056531/195714826326400 : ℚ), (2153177887443/10000000000 : ℚ), (-9628792280541/500000000000 : ℚ)⟩,
  ⟨(17471131056531/195714826326400 : ℚ), (1400320164281/15480786934000 : ℚ), (196029624179/10000000000 : ℚ), (-1786453504551/1000000000000 : ℚ)⟩,
  ⟨(1400320164281/15480786934000 : ℚ), (388675656351/4213330645700 : ℚ), (41221754839/10000000000 : ℚ), (-38613334027/100000000000 : ℚ)⟩,
  ⟨(388675656351/4213330645700 : ℚ), (162107350321/1717804101600 : ℚ), (-455775809/5000000000 : ℚ), (2542316081/1000000000000 : ℚ)⟩,
  ⟨(162107350321/1717804101600 : ℚ), (41163192331/426611065450 : ℚ), (-9044796317/5000000000 : ℚ), (82324833201/500000000000 : ℚ)⟩,
  ⟨(41163192331/426611065450 : ℚ), (3692110674/37566484825 : ℚ), (-26621813943/10000000000 : ℚ), (30872006383/125000000000 : ℚ)⟩,
  ⟨(3692110674/37566484825 : ℚ), (5015905792/50423193925 : ℚ), (-15564896061/5000000000 : ℚ), (18205086197/62500000000 : ℚ)⟩,
  ⟨(5015905792/50423193925 : ℚ), (347449891/3476338400 : ℚ), (-33146719879/10000000000 : ℚ), (3891812529/12500000000 : ℚ)⟩,
  ⟨(347449891/3476338400 : ℚ), (1/10 : ℚ), (-33390063567/10000000000 : ℚ), (313777151557/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (6609936433/40000000000 : ℚ), (-2/5 : ℚ), (379876515887/1000000000000 : ℚ)⟩,
  ⟨(6609936433/40000000000 : ℚ), (6853280121/40000000000 : ℚ), (-347449891/869084600 : ℚ), (13204577303164967691/34763384000000000000 : ℚ)⟩,
  ⟨(6853280121/40000000000 : ℚ), (4435103939/20000000000 : ℚ), (-20063623168/50423193925 : ℚ), (47841375437182927473/126057984812500000000 : ℚ)⟩,
  ⟨(4435103939/20000000000 : ℚ), (13378186057/40000000000 : ℚ), (-14768442696/37566484825 : ℚ), (130674599525872687/345280191406250000 : ℚ)⟩,
  ⟨(13378186057/40000000000 : ℚ), (10955203683/20000000000 : ℚ), (-82326384662/213305532725 : ℚ), (320863201710931998051/853222130900000000000 : ℚ)⟩,
  ⟨(10955203683/20000000000 : ℚ), (19544224191/20000000000 : ℚ), (-162107350321/429451025400 : ℚ), (1063366134213375668153/2863006836000000000000 : ℚ)⟩,
  ⟨(19544224191/20000000000 : ℚ), (81221754839/40000000000 : ℚ), (-388675656351/1053332661425 : ℚ), (15299844513167366209099/42133306457000000000000 : ℚ)⟩,
  ⟨(81221754839/40000000000 : ℚ), (236029624179/40000000000 : ℚ), (-1400320164281/3870196733500 : ℚ), (53959981391003666383959/154807869340000000000000 : ℚ)⟩,
  ⟨(236029624179/40000000000 : ℚ), (32/1 : ℚ), (-17471131056531/48928706581600 : ℚ), (125470024684238232669717/391429652652800000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (235554650523/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(11139427719/125000000000 : ℚ), (2153177887443/10000000000 : ℚ), (-9628792280541/500000000000 : ℚ), 10⟩,
    ⟨(44967961823/500000000000 : ℚ), (196029624179/10000000000 : ℚ), (-1786453504551/1000000000000 : ℚ), 7⟩,
    ⟨(91452013457/1000000000000 : ℚ), (41221754839/10000000000 : ℚ), (-38613334027/100000000000 : ℚ), 6⟩,
    ⟨(729944377/7812500000 : ℚ), (-455775809/5000000000 : ℚ), (2542316081/1000000000000 : ℚ), 5⟩,
    ⟨(95576955029/1000000000000 : ℚ), (-9044796317/5000000000 : ℚ), (82324833201/500000000000 : ℚ), 5⟩,
    ⟨(24389455457/250000000000 : ℚ), (-26621813943/10000000000 : ℚ), (30872006383/125000000000 : ℚ), 5⟩,
    ⟨(2476847791/25000000000 : ℚ), (-15564896061/5000000000 : ℚ), (18205086197/62500000000 : ℚ), 5⟩,
    ⟨(99894413533/1000000000000 : ℚ), (-33146719879/10000000000 : ℚ), (3891812529/12500000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-33390063567/10000000000 : ℚ), (313777151557/1000000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control773.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control773.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate773
