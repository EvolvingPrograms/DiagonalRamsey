import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate774
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(16716464643/125000000000 : ℚ), (8881433237037/10000000000 : ℚ), (-59462359967039/500000000000 : ℚ), 12⟩,
    ⟨(2094430519/15625000000 : ℚ), (117545277689/1250000000 : ℚ), (-12681711385097/1000000000000 : ℚ), 9⟩,
    ⟨(33663810419/250000000000 : ℚ), (307185773667/10000000000 : ℚ), (-4181334091923/1000000000000 : ℚ), 8⟩,
    ⟨(135543275679/1000000000000 : ℚ), (33406710907/2500000000 : ℚ), (-919113602931/500000000000 : ℚ), 7⟩,
    ⟨(533880971/3906250000 : ℚ), (31321875157/5000000000 : ℚ), (-436361642711/500000000000 : ℚ), 6⟩,
    ⟨(69001282691/500000000000 : ℚ), (6735978663/2500000000 : ℚ), (-191360016603/500000000000 : ℚ), 6⟩,
    ⟨(69739655979/500000000000 : ℚ), (3267343879/5000000000 : ℚ), (-12463484947/125000000000 : ℚ), 5⟩,
    ⟨(70523508881/500000000000 : ℚ), (-3101460797/5000000000 : ℚ), (4929700493/62500000000 : ℚ), 5⟩,
    ⟨(142645436737/1000000000000 : ℚ), (-7336307383/5000000000 : ℚ), (19897166291/100000000000 : ℚ), 5⟩,
    ⟨(144213142541/1000000000000 : ℚ), (-10284997037/5000000000 : ℚ), (11341358189/40000000000 : ℚ), 5⟩,
    ⟨(145689889117/1000000000000 : ℚ), (-12403238941/5000000000 : ℚ), (68986003407/200000000000 : ℚ), 5⟩,
    ⟨(147018925923/1000000000000 : ℚ), (-2789747139/1000000000 : ℚ), (195080922371/500000000000 : ℚ), 5⟩,
    ⟨(7407458941/50000000000 : ℚ), (-1507142727/500000000 : ℚ), (105824322221/250000000000 : ℚ), 5⟩,
    ⟨(149037212823/1000000000000 : ℚ), (-31718235111/10000000000 : ℚ), (446705286851/1000000000000 : ℚ), 5⟩,
    ⟨(149648901283/1000000000000 : ℚ), (-32724464461/10000000000 : ℚ), (461732324033/1000000000000 : ℚ), 4⟩,
    ⟨(37490184339/250000000000 : ℚ), (-16607909739/5000000000 : ℚ), (469093023161/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-16638360889/5000000000 : ℚ), (11750160951/25000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (184559545727/500000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem certOK : JointInheritedControls.control774.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control774.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate774
