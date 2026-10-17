import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate54
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(80352615813/1000000000000 : ℚ), (2185992232837/2000000000 : ℚ), (-44026441740553/500000000000 : ℚ), 10⟩,
    ⟨(80729223669/1000000000000 : ℚ), (1157133513103/10000000000 : ℚ), (-4728884345989/500000000000 : ℚ), 7⟩,
    ⟨(10183495819/125000000000 : ℚ), (190260100807/5000000000 : ℚ), (-126756368727/40000000000 : ℚ), 6⟩,
    ⟨(82540454987/1000000000000 : ℚ), (84371815931/5000000000 : ℚ), (-717355456133/500000000000 : ℚ), 5⟩,
    ⟨(41952736923/500000000000 : ℚ), (41338429607/5000000000 : ℚ), (-359687382339/500000000000 : ℚ), 4⟩,
    ⟨(42755283109/500000000000 : ℚ), (39682164687/10000000000 : ℚ), (-88900676723/250000000000 : ℚ), 4⟩,
    ⟨(17458809861/200000000000 : ℚ), (15262007367/10000000000 : ℚ), (-72411046183/500000000000 : ℚ), 3⟩,
    ⟨(89187384851/1000000000000 : ℚ), (55091067/5000000000 : ℚ), (-1404448153/125000000000 : ℚ), 3⟩,
    ⟨(45558906517/500000000000 : ℚ), (-9912803509/10000000000 : ℚ), (79062071981/1000000000000 : ℚ), 3⟩,
    ⟨(4650557429/50000000000 : ℚ), (-16858256033/10000000000 : ℚ), (142971215813/1000000000000 : ℚ), 3⟩,
    ⟨(94794631667/1000000000000 : ℚ), (-1091155679/500000000 : ℚ), (23696839633/125000000000 : ℚ), 3⟩,
    ⟨(2409993101/25000000000 : ℚ), (-5085187241/2000000000 : ℚ), (28000955857/125000000000 : ℚ), 3⟩,
    ⟨(48882371449/500000000000 : ℚ), (-28027630589/10000000000 : ℚ), (249261336229/1000000000000 : ℚ), 2⟩,
    ⟨(49418615667/500000000000 : ℚ), (-29842074353/10000000000 : ℚ), (267095893689/1000000000000 : ℚ), 2⟩,
    ⟨(99575974217/1000000000000 : ℚ), (-30994908191/10000000000 : ℚ), (139266159699/500000000000 : ℚ), 2⟩,
    ⟨(12494072759/125000000000 : ℚ), (-15777905467/5000000000 : ℚ), (284128071229/1000000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-158126159/50000000 : ℚ), (284822115201/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (349999/1000000 : ℚ)
  x := (105801295457/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control54.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control54.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate54
