import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate744
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(202130264593/1000000000000 : ℚ), (4776180555967/10000000000 : ℚ), (-48392704309709/500000000000 : ℚ), 12⟩,
    ⟨(203047848239/1000000000000 : ℚ), (101405676889/2000000000 : ℚ), (-10420665023667/1000000000000 : ℚ), 8⟩,
    ⟨(40969550661/200000000000 : ℚ), (83866784867/5000000000 : ℚ), (-3510790707581/1000000000000 : ℚ), 7⟩,
    ⟨(4149216209/20000000000 : ℚ), (752193251/100000000 : ℚ), (-1606187575453/1000000000000 : ℚ), 6⟩,
    ⟨(26348325169/125000000000 : ℚ), (37647670161/10000000000 : ℚ), (-82147304443/100000000000 : ℚ), 6⟩,
    ⟨(214697317733/1000000000000 : ℚ), (3782306731/2000000000 : ℚ), (-423332140943/1000000000000 : ℚ), 5⟩,
    ⟨(43808534591/200000000000 : ℚ), (1660627549/2000000000 : ℚ), (-193497101221/1000000000000 : ℚ), 5⟩,
    ⟨(223655677453/1000000000000 : ℚ), (1751480617/10000000000 : ℚ), (-48598450043/1000000000000 : ℚ), 4⟩,
    ⟨(228359056053/1000000000000 : ℚ), (-1278476109/5000000000 : ℚ), (24354565687/500000000000 : ℚ), 4⟩,
    ⟨(29121507569/125000000000 : ℚ), (-5522865831/10000000000 : ℚ), (182947833/1562500000 : ℚ), 4⟩,
    ⟨(118658707887/500000000000 : ℚ), (-305169253/400000000 : ℚ), (166597666893/1000000000000 : ℚ), 4⟩,
    ⟨(120614066077/500000000000 : ℚ), (-571815347/625000000 : ℚ), (202953142671/1000000000000 : ℚ), 4⟩,
    ⟨(244553923057/1000000000000 : ℚ), (-5120853891/5000000000 : ℚ), (114744289777/500000000000 : ℚ), 4⟩,
    ⟨(247166980201/1000000000000 : ℚ), (-2750365199/2500000000 : ℚ), (1985329817/8000000000 : ℚ), 4⟩,
    ⟨(248966885267/1000000000000 : ℚ), (-5741667461/5000000000 : ℚ), (260119466503/1000000000000 : ℚ), 4⟩,
    ⟨(249884468913/1000000000000 : ℚ), (-5858794097/5000000000 : ℚ), (132981144427/500000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-2936643243/2500000000 : ℚ), (33335842597/125000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (109832506043/250000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control744.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control744.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate744
