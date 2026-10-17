import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate792
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(42133864207/250000000000 : ℚ), (5510003965309/10000000000 : ℚ), (-9304725314329/100000000000 : ℚ), 12⟩,
    ⟨(6765543203/40000000000 : ℚ), (584725889571/10000000000 : ℚ), (-1248005879929/125000000000 : ℚ), 9⟩,
    ⟨(2129020611/12500000000 : ℚ), (96365616597/5000000000 : ℚ), (-417285140309/125000000000 : ℚ), 7⟩,
    ⟨(43009799643/250000000000 : ℚ), (8560175757/1000000000 : ℚ), (-1506422689873/1000000000000 : ℚ), 7⟩,
    ⟨(174225224681/1000000000000 : ℚ), (20980487191/5000000000 : ℚ), (-375809680821/500000000000 : ℚ), 6⟩,
    ⟨(176795719449/1000000000000 : ℚ), (314334167/156250000 : ℚ), (-184294312549/500000000000 : ℚ), 5⟩,
    ⟨(179651900203/1000000000000 : ℚ), (3848584751/5000000000 : ℚ), (-147405900037/1000000000000 : ℚ), 5⟩,
    ⟨(182684005519/1000000000000 : ℚ), (-4486621/5000000000 : ℚ), (-157769759/20000000000 : ℚ), 5⟩,
    ⟨(18577551329/100000000000 : ℚ), (-1020300367/2000000000 : ℚ), (17176056567/200000000000 : ℚ), 5⟩,
    ⟨(94403809303/500000000000 : ℚ), (-2156248587/2500000000 : ℚ), (151844721411/1000000000000 : ℚ), 4⟩,
    ⟨(598949373/3125000000 : ℚ), (-11140143423/10000000000 : ℚ), (99838605007/500000000000 : ℚ), 4⟩,
    ⟨(12139643383/62500000000 : ℚ), (-2592786787/2000000000 : ℚ), (46971947287/200000000000 : ℚ), 4⟩,
    ⟨(196420320237/1000000000000 : ℚ), (-14281183221/10000000000 : ℚ), (260585870229/1000000000000 : ℚ), 4⟩,
    ⟨(19813786993/100000000000 : ℚ), (-7600374033/5000000000 : ℚ), (139362838627/500000000000 : ℚ), 4⟩,
    ⟨(39864187747/200000000000 : ℚ), (-15785787213/10000000000 : ℚ), (9073492801/31250000000 : ℚ), 4⟩,
    ⟨(199924061981/1000000000000 : ℚ), (-2008843833/1250000000 : ℚ), (148020119323/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-16106036689/10000000000 : ℚ), (296745825087/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (749999/1000000 : ℚ)
  x := (456343183361/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem certOK : JointInheritedControls.control792.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control792.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate792
