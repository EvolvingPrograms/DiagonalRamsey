import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate825
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(149690227579/1000000000000 : ℚ), (2597616953007/10000000000 : ℚ), (-304870672091/7812500000 : ℚ), 12⟩,
    ⟨(75327291349/500000000000 : ℚ), (137494733977/5000000000 : ℚ), (-4214685834757/1000000000000 : ℚ), 9⟩,
    ⟨(15254623331/100000000000 : ℚ), (22725344863/2500000000 : ℚ), (-285919263077/200000000000 : ℚ), 7⟩,
    ⟨(77646242171/500000000000 : ℚ), (40921001011/10000000000 : ℚ), (-132358608701/200000000000 : ℚ), 6⟩,
    ⟨(39696949727/250000000000 : ℚ), (1036577501/500000000 : ℚ), (-172652195733/500000000000 : ℚ), 6⟩,
    ⟨(40724463507/250000000000 : ℚ), (5361427747/5000000000 : ℚ), (-4614484039/25000000000 : ℚ), 5⟩,
    ⟨(16746470259/100000000000 : ℚ), (1272362583/2500000000 : ℚ), (-91655208323/1000000000000 : ℚ), 5⟩,
    ⟨(43078210791/250000000000 : ℚ), (325879521/2000000000 : ℚ), (-4117634857/125000000000 : ℚ), 5⟩,
    ⟨(177255964427/1000000000000 : ℚ), (-79391083/1250000000 : ℚ), (66023529/10000000000 : ℚ), 4⟩,
    ⟨(91052052501/500000000000 : ℚ), (-273487681/1250000000 : ℚ), (1379303661/40000000000 : ℚ), 4⟩,
    ⟨(46667738391/250000000000 : ℚ), (-657439857/2000000000 : ℚ), (27370861363/500000000000 : ℚ), 4⟩,
    ⟨(47695252171/250000000000 : ℚ), (-4078385927/10000000000 : ℚ), (13933637913/200000000000 : ℚ), 4⟩,
    ⟨(194276323249/1000000000000 : ℚ), (-464604477/1000000000 : ℚ), (40297422521/500000000000 : ℚ), 4⟩,
    ⟨(197022574281/1000000000000 : ℚ), (-5040097691/10000000000 : ℚ), (4415177141/50000000000 : ℚ), 4⟩,
    ⟨(198914224893/1000000000000 : ℚ), (-211588383/400000000 : ℚ), (93244812443/1000000000000 : ℚ), 4⟩,
    ⟨(49969645003/250000000000 : ℚ), (-5410954839/10000000000 : ℚ), (23915592131/250000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-2712976043/5000000000 : ℚ), (23990555589/250000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (650424482521/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control825.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control825.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate825
