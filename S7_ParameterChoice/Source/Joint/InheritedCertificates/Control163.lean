import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate163
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(82539562913/1000000000000 : ℚ), (2090110264157/2000000000 : ℚ), (-86451711629003/1000000000000 : ℚ), 11⟩,
    ⟨(82874250611/1000000000000 : ℚ), (55344956283/500000000 : ℚ), (-9271923842111/1000000000000 : ℚ), 8⟩,
    ⟨(16706152829/200000000000 : ℚ), (72743289633/2000000000 : ℚ), (-1548209038533/500000000000 : ℚ), 6⟩,
    ⟨(84483874069/1000000000000 : ℚ), (160770173973/10000000000 : ℚ), (-174201544021/125000000000 : ℚ), 5⟩,
    ⟨(85696952903/1000000000000 : ℚ), (15629609659/2000000000 : ℚ), (-172843799813/250000000000 : ℚ), 5⟩,
    ⟨(21780845677/250000000000 : ℚ), (29437031/8000000 : ℚ), (-33441843269/100000000000 : ℚ), 4⟩,
    ⟨(44354173293/500000000000 : ℚ), (3316505211/2500000000 : ℚ), (-12773376851/100000000000 : ℚ), 4⟩,
    ⟨(2824716727/31250000000 : ℚ), (-679070473/5000000000 : ℚ), (97730193/31250000000 : ℚ), 4⟩,
    ⟨(92106487803/1000000000000 : ℚ), (-5523232663/5000000000 : ℚ), (45739435679/500000000000 : ℚ), 3⟩,
    ⟨(46894538241/500000000000 : ℚ), (-8884600671/5000000000 : ℚ), (153936259409/1000000000000 : ℚ), 3⟩,
    ⟨(2384351009/25000000000 : ℚ), (-11290709571/5000000000 : ℚ), (99717797901/500000000000 : ℚ), 3⟩,
    ⟨(19360094033/200000000000 : ℚ), (-3259819293/1250000000 : ℚ), (116515437253/500000000000 : ℚ), 3⟩,
    ⟨(98013548999/1000000000000 : ℚ), (-5721565341/2000000000 : ℚ), (257664222659/1000000000000 : ℚ), 3⟩,
    ⟨(98966658923/1000000000000 : ℚ), (-30374452173/10000000000 : ℚ), (275062367953/1000000000000 : ℚ), 3⟩,
    ⟨(99623172457/1000000000000 : ℚ), (-7874595357/2500000000 : ℚ), (143111016809/500000000000 : ℚ), 3⟩,
    ⟨(49978930077/500000000000 : ℚ), (-6409142403/2000000000 : ℚ), (291683828031/1000000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-32113477497/10000000000 : ℚ), (58472267997/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (285328453293/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control163.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control163.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate163
