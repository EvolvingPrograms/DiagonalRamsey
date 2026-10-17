import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate741
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(220806655009/1000000000000 : ℚ), (658563607121/2000000000 : ℚ), (-72987441095667/1000000000000 : ℚ), 11⟩,
    ⟨(222324660437/1000000000000 : ℚ), (174341053333/5000000000 : ℚ), (-7896569198077/1000000000000 : ℚ), 8⟩,
    ⟨(225302335197/1000000000000 : ℚ), (115488655203/10000000000 : ℚ), (-2688742271751/1000000000000 : ℚ), 7⟩,
    ⟨(57406312229/250000000000 : ℚ), (6531126333/1250000000 : ℚ), (-1253243033127/1000000000000 : ℚ), 6⟩,
    ⟨(47025454889/200000000000 : ℚ), (26746909329/10000000000 : ℚ), (-165440982493/250000000000 : ℚ), 5⟩,
    ⟨(241596972029/1000000000000 : ℚ), (2826779153/2000000000 : ℚ), (-361630325639/1000000000000 : ℚ), 5⟩,
    ⟨(124392857409/500000000000 : ℚ), (5644913/8000000 : ℚ), (-23543345691/125000000000 : ℚ), 4⟩,
    ⟨(256417243457/1000000000000 : ℚ), (2725424409/10000000000 : ℚ), (-79087887557/1000000000000 : ℚ), 4⟩,
    ⟨(264198282581/1000000000000 : ℚ), (-96089297/10000000000 : ℚ), (-5715064241/1000000000000 : ℚ), 4⟩,
    ⟨(271829811221/1000000000000 : ℚ), (-2020807963/10000000000 : ℚ), (45830439669/1000000000000 : ℚ), 4⟩,
    ⟨(279018554009/1000000000000 : ℚ), (-675175087/2000000000 : ℚ), (41565673773/500000000000 : ℚ), 4⟩,
    ⟨(285488251593/1000000000000 : ℚ), (-4345697559/10000000000 : ℚ), (11049443153/100000000000 : ℚ), 3⟩,
    ⟨(290990277123/1000000000000 : ℚ), (-5037881989/10000000000 : ℚ), (130441133051/1000000000000 : ℚ), 3⟩,
    ⟨(147656595421/500000000000 : ℚ), (-2758107897/5000000000 : ℚ), (72230866519/500000000000 : ℚ), 3⟩,
    ⟨(149145432801/500000000000 : ℚ), (-5818172143/10000000000 : ℚ), (76711674181/500000000000 : ℚ), 3⟩,
    ⟨(29980887103/100000000000 : ℚ), (-2982263361/5000000000 : ℚ), (19725002349/125000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-2991307439/5000000000 : ℚ), (79171245249/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (712499/1000000 : ℚ)
  x := (247294607737/500000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control741.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control741.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate741
