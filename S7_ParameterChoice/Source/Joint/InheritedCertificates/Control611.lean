import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate611
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(96558065911/500000000000 : ℚ), (1046627999317/2000000000 : ℚ), (-405515679467/4000000000 : ℚ), 11⟩,
    ⟨(97103250741/500000000000 : ℚ), (277410444841/5000000000 : ℚ), (-5469481193763/500000000000 : ℚ), 8⟩,
    ⟨(49086334627/250000000000 : ℚ), (45899505913/2500000000 : ℚ), (-1851423189861/500000000000 : ℚ), 6⟩,
    ⟨(199450448593/1000000000000 : ℚ), (82628476723/10000000000 : ℚ), (-53377565533/31250000000 : ℚ), 5⟩,
    ⟨(203402504097/1000000000000 : ℚ), (41749499017/10000000000 : ℚ), (-177193128597/200000000000 : ℚ), 5⟩,
    ⟨(208049629743/1000000000000 : ℚ), (21433202007/10000000000 : ℚ), (-468595811067/1000000000000 : ℚ), 4⟩,
    ⟨(213213239099/1000000000000 : ℚ), (1993861913/2000000000 : ℚ), (-56856547061/250000000000 : ℚ), 4⟩,
    ⟨(109347448777/500000000000 : ℚ), (728005667/2500000000 : ℚ), (-469862559/6250000000 : ℚ), 4⟩,
    ⟨(112141974023/500000000000 : ℚ), (-1715400771/10000000000 : ℚ), (3403684789/125000000000 : ℚ), 4⟩,
    ⟨(229765606501/1000000000000 : ℚ), (-611563821/1250000000 : ℚ), (99311642533/1000000000000 : ℚ), 3⟩,
    ⟨(234929215857/1000000000000 : ℚ), (-3571667101/5000000000 : ℚ), (757922807/5000000000 : ℚ), 3⟩,
    ⟨(239576341503/1000000000000 : ℚ), (-4381776171/5000000000 : ℚ), (47503113787/250000000000 : ℚ), 3⟩,
    ⟨(243528397007/1000000000000 : ℚ), (-9925748453/10000000000 : ℚ), (4361599939/20000000000 : ℚ), 3⟩,
    ⟨(61658376773/250000000000 : ℚ), (-335379813/312500000 : ℚ), (237841308657/1000000000000 : ℚ), 3⟩,
    ⟨(124386172059/500000000000 : ℚ), (-2810682553/2500000000 : ℚ), (62621958091/250000000000 : ℚ), 3⟩,
    ⟨(124931356889/500000000000 : ℚ), (-897707/781250 : ℚ), (256668825389/1000000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-360040977/312500000 : ℚ), (51487031273/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (368994744399/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control611.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control611.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate611
