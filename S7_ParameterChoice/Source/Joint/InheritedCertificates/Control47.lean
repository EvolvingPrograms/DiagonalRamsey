import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate47
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(19959352509/500000000000 : ℚ), (10784353667409/10000000000 : ℚ), (-43164989558729/1000000000000 : ℚ), 10⟩,
    ⟨(40111946767/1000000000000 : ℚ), (570491390657/5000000000 : ℚ), (-2317765117509/500000000000 : ℚ), 7⟩,
    ⟨(40491004093/1000000000000 : ℚ), (9370285691/250000000 : ℚ), (-1552488016001/1000000000000 : ℚ), 6⟩,
    ⟨(10260327509/250000000000 : ℚ), (82967915719/5000000000 : ℚ), (-702227024609/1000000000000 : ℚ), 5⟩,
    ⟨(41741716647/1000000000000 : ℚ), (1013311567/125000000 : ℚ), (-70281537647/200000000000 : ℚ), 4⟩,
    ⟨(10641326923/250000000000 : ℚ), (38668335023/10000000000 : ℚ), (-86453715927/500000000000 : ℚ), 4⟩,
    ⟨(4348043303/100000000000 : ℚ), (14581254843/10000000000 : ℚ), (-17346680537/250000000000 : ℚ), 3⟩,
    ⟨(11112981227/250000000000 : ℚ), (-373320647/10000000000 : ℚ), (-230934229/62500000000 : ℚ), 3⟩,
    ⟨(11360612359/250000000000 : ℚ), (-128443357/125000000 : ℚ), (40781001413/1000000000000 : ℚ), 3⟩,
    ⟨(46413941313/1000000000000 : ℚ), (-17145670197/10000000000 : ℚ), (4519844607/62500000000 : ℚ), 3⟩,
    ⟨(47329066651/1000000000000 : ℚ), (-22063424693/10000000000 : ℚ), (95358699049/1000000000000 : ℚ), 3⟩,
    ⟨(1504770553/31250000000 : ℚ), (-12818419003/5000000000 : ℚ), (28103478507/250000000000 : ℚ), 3⟩,
    ⟨(48853064307/1000000000000 : ℚ), (-7055087947/2500000000 : ℚ), (15617825169/125000000000 : ℚ), 2⟩,
    ⟨(197613481/4000000000 : ℚ), (-15011913073/5000000000 : ℚ), (16725242263/125000000000 : ℚ), 2⟩,
    ⟨(6222803447/125000000000 : ℚ), (-3896308247/1250000000 : ℚ), (139488231153/1000000000000 : ℚ), 2⟩,
    ⟨(1999026773/40000000000 : ℚ), (-253828627/80000000 : ℚ), (28454403083/200000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-254381313/80000000 : ℚ), (71308680033/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (337499/1000000 : ℚ)
  x := (52803117119/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control47.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control47.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate47
