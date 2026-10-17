import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate822
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (8419328085361/92837246093600 : ℚ), (1020697794823/5000000000 : ℚ), (-9271539511459/500000000000 : ℚ)⟩,
  ⟨(8419328085361/92837246093600 : ℚ), (1349452244947/14712868048200 : ℚ), (92325333887/5000000000 : ℚ), (-426105713049/250000000000 : ℚ)⟩,
  ⟨(1349452244947/14712868048200 : ℚ), (374389105313/4013798471000 : ℚ), (9380496823/2500000000 : ℚ), (-354970607249/1000000000000 : ℚ)⟩,
  ⟨(374389105313/4013798471000 : ℚ), (156044372239/1640589374800 : ℚ), (-1307998709/5000000000 : ℚ), (1213656129/62500000000 : ℚ)⟩,
  ⟨(156044372239/1640589374800 : ℚ), (9902988047/102141019850 : ℚ), (-9510945583/5000000000 : ℚ), (175462870303/1000000000000 : ℚ)⟩,
  ⟨(9902988047/102141019850 : ℚ), (10665655919/108269970100 : ℚ), (-13596586377/5000000000 : ℚ), (254686774679/1000000000000 : ℚ)⟩,
  ⟨(10665655919/108269970100 : ℚ), (4835652234/48577236025 : ℚ), (-15761985779/5000000000 : ℚ), (59469879671/200000000000 : ℚ)⟩,
  ⟨(4835652234/48577236025 : ℚ), (2346362417/23474400500 : ℚ), (-33467060999/10000000000 : ℚ), (316692007291/1000000000000 : ℚ)⟩,
  ⟨(2346362417/23474400500 : ℚ), (1/10 : ℚ), (-8425451251/2500000000 : ℚ), (79759592427/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1574548749/10000000000 : ℚ), (-2/5 : ℚ), (95505079917/250000000000 : ℚ)⟩,
  ⟨(1574548749/10000000000 : ℚ), (6532939001/40000000000 : ℚ), (-2346362417/5868600125 : ℚ), (5604387042967404117/14671500312500000000 : ℚ)⟩,
  ⟨(6532939001/40000000000 : ℚ), (4238014221/20000000000 : ℚ), (-19342608936/48577236025 : ℚ), (741724979715322627267/1943089441000000000000 : ℚ)⟩,
  ⟨(4238014221/20000000000 : ℚ), (6403413623/20000000000 : ℚ), (-10665655919/27067492525 : ℚ), (412342507613518040053/1082699701000000000000 : ℚ)⟩,
  ⟨(6403413623/20000000000 : ℚ), (10489054417/20000000000 : ℚ), (-19805976094/51070509925 : ℚ), (773931052434668184687/2042820397000000000000 : ℚ)⟩,
  ⟨(10489054417/20000000000 : ℚ), (18692001291/20000000000 : ℚ), (-156044372239/410147343700 : ℚ), (615214103067307282497/1640589374800000000000 : ℚ)⟩,
  ⟨(18692001291/20000000000 : ℚ), (19380496823/10000000000 : ℚ), (-374389105313/1003449617750 : ℚ), (7387791329038929259803/20068992355000000000000 : ℚ)⟩,
  ⟨(19380496823/10000000000 : ℚ), (112325333887/20000000000 : ℚ), (-1349452244947/3678217012050 : ℚ), (26192931364751285599753/73564340241000000000000 : ℚ)⟩,
  ⟨(112325333887/20000000000 : ℚ), (32/1 : ℚ), (-8419328085361/23209311523400 : ℚ), (154534219407992406020479/464186230468000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (505689408499/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(45278216533/500000000000 : ℚ), (1020697794823/5000000000 : ℚ), (-9271539511459/500000000000 : ℚ), 11⟩,
    ⟨(91268308563/1000000000000 : ℚ), (92325333887/5000000000 : ℚ), (-426105713049/250000000000 : ℚ), 8⟩,
    ⟨(46291841483/500000000000 : ℚ), (9380496823/2500000000 : ℚ), (-354970607249/1000000000000 : ℚ), 7⟩,
    ⟨(47151151223/500000000000 : ℚ), (-1307998709/5000000000 : ℚ), (1213656129/62500000000 : ℚ), 6⟩,
    ⟨(48081261383/500000000000 : ℚ), (-9510945583/5000000000 : ℚ), (175462870303/1000000000000 : ℚ), 5⟩,
    ⟨(19576228449/200000000000 : ℚ), (-13596586377/5000000000 : ℚ), (254686774679/1000000000000 : ℚ), 5⟩,
    ⟨(12399564581/125000000000 : ℚ), (-15761985779/5000000000 : ℚ), (59469879671/200000000000 : ℚ), 5⟩,
    ⟨(19981678429/200000000000 : ℚ), (-33467060999/10000000000 : ℚ), (316692007291/1000000000000 : ℚ), 5⟩,
    ⟨(1/10 : ℚ), (-8425451251/2500000000 : ℚ), (79759592427/250000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control822.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control822.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate822
