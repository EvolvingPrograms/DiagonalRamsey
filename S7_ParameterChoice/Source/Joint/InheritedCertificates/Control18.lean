import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate18
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(78592152799/1000000000000 : ℚ), (11317411560727/10000000000 : ℚ), (-89203169601701/1000000000000 : ℚ), 10⟩,
    ⟨(39501252909/500000000000 : ℚ), (1197474404969/10000000000 : ℚ), (-599488522431/62500000000 : ℚ), 7⟩,
    ⟨(39903721111/500000000000 : ℚ), (98475698203/2500000000 : ℚ), (-3221621631869/1000000000000 : ℚ), 5⟩,
    ⟨(80976028753/1000000000000 : ℚ), (87522607173/5000000000 : ℚ), (-732479529751/500000000000 : ℚ), 4⟩,
    ⟨(82463357289/1000000000000 : ℚ), (86240426219/10000000000 : ℚ), (-740304343967/1000000000000 : ℚ), 4⟩,
    ⟨(84212270627/1000000000000 : ℚ), (1678234277/400000000 : ℚ), (-371727319237/1000000000000 : ℚ), 3⟩,
    ⟨(2692361219/31250000000 : ℚ), (16847890503/10000000000 : ℚ), (-3952239877/25000000000 : ℚ), 3⟩,
    ⟨(1764370859/20000000000 : ℚ), (1295566479/10000000000 : ℚ), (-2262171117/100000000000 : ℚ), 3⟩,
    ⟨(2822560723/31250000000 : ℚ), (-8976473793/10000000000 : ℚ), (69007362399/1000000000000 : ℚ), 2⟩,
    ⟨(46192463539/500000000000 : ℚ), (-16084301697/10000000000 : ℚ), (33475486803/250000000000 : ℚ), 2⟩,
    ⟨(4716410773/50000000000 : ℚ), (-21158105857/10000000000 : ℚ), (181249144531/1000000000000 : ℚ), 2⟩,
    ⟨(96077128797/1000000000000 : ℚ), (-24834712769/10000000000 : ℚ), (43248259559/200000000000 : ℚ), 2⟩,
    ⟨(97564457333/1000000000000 : ℚ), (-27485818633/10000000000 : ℚ), (12095243497/50000000000 : ℚ), 2⟩,
    ⟨(19746608773/200000000000 : ℚ), (-29332146633/10000000000 : ℚ), (10400981867/40000000000 : ℚ), 2⟩,
    ⟨(24884495067/250000000000 : ℚ), (-30503859033/10000000000 : ℚ), (271639874387/1000000000000 : ℚ), 2⟩,
    ⟨(12493541661/125000000000 : ℚ), (-31073495617/10000000000 : ℚ), (69330387199/250000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-6228795039/2000000000 : ℚ), (13901308119/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (249999/1000000 : ℚ)
  x := (73735825209/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control18.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control18.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate18
