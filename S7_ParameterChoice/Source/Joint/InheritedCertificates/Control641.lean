import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate641
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(51739572467/200000000000 : ℚ), (2109856314799/5000000000 : ℚ), (-27394396823229/250000000000 : ℚ), 11⟩,
    ⟨(26044797329/100000000000 : ℚ), (447149075631/10000000000 : ℚ), (-11860454256733/1000000000000 : ℚ), 8⟩,
    ⟨(32985117427/125000000000 : ℚ), (29659375487/2000000000 : ℚ), (-252649448161/62500000000 : ℚ), 6⟩,
    ⟨(33608104219/125000000000 : ℚ), (33618655591/5000000000 : ℚ), (-1887578057013/1000000000000 : ℚ), 5⟩,
    ⟨(8600254001/31250000000 : ℚ), (34545434767/10000000000 : ℚ), (-999908562941/1000000000000 : ℚ), 5⟩,
    ⟨(56533410603/200000000000 : ℚ), (1837732579/1000000000 : ℚ), (-274838673621/500000000000 : ℚ), 4⟩,
    ⟨(290954966397/1000000000000 : ℚ), (4653831257/5000000000 : ℚ), (-144964601699/500000000000 : ℚ), 4⟩,
    ⟨(59950673663/200000000000 : ℚ), (1881039891/5000000000 : ℚ), (-126338772399/1000000000000 : ℚ), 4⟩,
    ⟨(77181035279/250000000000 : ℚ), (153206311/10000000000 : ℚ), (-16651415513/1000000000000 : ℚ), 3⟩,
    ⟨(158761271517/500000000000 : ℚ), (-144045321/625000000 : ℚ), (30126722113/500000000000 : ℚ), 3⟩,
    ⟨(10181576763/31250000000 : ℚ), (-403183981/1000000000 : ℚ), (28944484823/250000000000 : ℚ), 3⟩,
    ⟨(333269381399/1000000000000 : ℚ), (-5265287211/10000000000 : ℚ), (39102356923/250000000000 : ℚ), 3⟩,
    ⟨(339612675679/1000000000000 : ℚ), (-153593421/250000000 : ℚ), (23244624927/125000000000 : ℚ), 3⟩,
    ⟨(68919314003/200000000000 : ℚ), (-1349922779/2000000000 : ℚ), (206681604543/1000000000000 : ℚ), 3⟩,
    ⟨(174014768071/500000000000 : ℚ), (-3565749231/5000000000 : ℚ), (13744125469/62500000000 : ℚ), 3⟩,
    ⟨(43722455887/125000000000 : ℚ), (-3658206049/5000000000 : ℚ), (28294704751/125000000000 : ℚ), 3⟩,
    ⟨(7/20 : ℚ), (-1834814291/2500000000 : ℚ), (227156963441/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (637499/1000000 : ℚ)
  x := (36349063519/100000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
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
theorem certOK : JointInheritedControls.control641.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control641.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate641
