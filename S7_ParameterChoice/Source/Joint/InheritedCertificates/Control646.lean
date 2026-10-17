import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate646
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(60359764421/500000000000 : ℚ), (593403798039/1000000000 : ℚ), (-35910151957609/500000000000 : ℚ), 11⟩,
    ⟨(121280787041/1000000000000 : ℚ), (629030342149/10000000000 : ℚ), (-48272380901/6250000000 : ℚ), 8⟩,
    ⟨(122381734601/1000000000000 : ℚ), (207454891487/10000000000 : ℚ), (-2595050688169/1000000000000 : ℚ), 7⟩,
    ⟨(30995015681/250000000000 : ℚ), (46253657703/5000000000 : ℚ), (-236221067103/200000000000 : ℚ), 6⟩,
    ⟨(126014348557/1000000000000 : ℚ), (11452834387/2500000000 : ℚ), (-299088407649/500000000000 : ℚ), 5⟩,
    ⟨(128406415637/1000000000000 : ℚ), (22505231223/10000000000 : ℚ), (-302044836863/1000000000000 : ℚ), 5⟩,
    ⟨(131064338167/1000000000000 : ℚ), (9287812017/10000000000 : ℚ), (-130742252413/1000000000000 : ℚ), 4⟩,
    ⟨(5355438947/40000000000 : ℚ), (13803093/125000000 : ℚ), (-11211398557/500000000000 : ℚ), 4⟩,
    ⟨(136762888291/1000000000000 : ℚ), (-2147754021/5000000000 : ℚ), (10119767667/200000000000 : ℚ), 4⟩,
    ⟨(139584523799/1000000000000 : ℚ), (-200689713/250000000 : ℚ), (25534772591/250000000000 : ℚ), 4⟩,
    ⟨(142242446329/1000000000000 : ℚ), (-10689437959/10000000000 : ℚ), (139633685801/1000000000000 : ℚ), 4⟩,
    ⟨(144634513409/1000000000000 : ℚ), (-3154506713/2500000000 : ℚ), (16728981753/100000000000 : ℚ), 4⟩,
    ⟨(73334399621/500000000000 : ℚ), (-2801929117/2000000000 : ℚ), (37511133057/200000000000 : ℚ), 3⟩,
    ⟨(74133563683/500000000000 : ℚ), (-599203811/400000000 : ℚ), (100932706627/500000000000 : ℚ), 3⟩,
    ⟨(5974722997/40000000000 : ℚ), (-3899220503/2500000000 : ℚ), (211043931309/1000000000000 : ℚ), 3⟩,
    ⟨(37482333281/250000000000 : ℚ), (-3179417487/2000000000 : ℚ), (215536424009/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-318684989/200000000 : ℚ), (54023430709/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (2/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (649999/1000000 : ℚ)
  x := (223132589267/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control646.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control646.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate646
