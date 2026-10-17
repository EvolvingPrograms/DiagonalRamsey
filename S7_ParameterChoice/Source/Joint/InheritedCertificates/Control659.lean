import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate659
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(236916555159/1000000000000 : ℚ), (5212259628509/10000000000 : ℚ), (-6191983225451/50000000000 : ℚ), 11⟩,
    ⟨(4762515209/20000000000 : ℚ), (553341390913/10000000000 : ℚ), (-1669784614471/125000000000 : ℚ), 8⟩,
    ⟨(240497701949/1000000000000 : ℚ), (36675623853/2000000000 : ℚ), (-4518953374373/1000000000000 : ℚ), 7⟩,
    ⟨(9757649091/40000000000 : ℚ), (10329909037/1250000000 : ℚ), (-416524607301/200000000000 : ℚ), 6⟩,
    ⟨(124162001841/500000000000 : ℚ), (8360587597/2000000000 : ℚ), (-539469936531/500000000000 : ℚ), 5⟩,
    ⟨(253477603529/1000000000000 : ℚ), (21485081407/10000000000 : ℚ), (-569816036919/1000000000000 : ℚ), 5⟩,
    ⟨(129601988433/500000000000 : ℚ), (5005829557/5000000000 : ℚ), (-276033678639/1000000000000 : ℚ), 4⟩,
    ⟨(2122264499/8000000000 : ℚ), (117879851/400000000 : ℚ), (-18188316741/200000000000 : ℚ), 4⟩,
    ⟨(27148124421/100000000000 : ℚ), (-841739789/5000000000 : ℚ), (33237584461/1000000000000 : ℚ), 4⟩,
    ⟨(6939008243/25000000000 : ℚ), (-151868741/312500000 : ℚ), (60191441721/500000000000 : ℚ), 4⟩,
    ⟨(17705418941/62500000000 : ℚ), (-7107266873/10000000000 : ℚ), (183380002053/1000000000000 : ℚ), 3⟩,
    ⟨(36055037863/125000000000 : ℚ), (-4361449719/5000000000 : ℚ), (114775711489/500000000000 : ℚ), 3⟩,
    ⟨(29282307931/100000000000 : ℚ), (-9880387593/10000000000 : ℚ), (263185486383/1000000000000 : ℚ), 3⟩,
    ⟨(296266604637/1000000000000 : ℚ), (-2670687181/2500000000 : ℚ), (286816225649/1000000000000 : ℚ), 3⟩,
    ⟨(37329818267/125000000000 : ℚ), (-2238085453/2000000000 : ℚ), (18869786877/62500000000 : ℚ), 3⟩,
    ⟨(149923875713/500000000000 : ℚ), (-11436847643/10000000000 : ℚ), (77322617791/250000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-2293463971/2000000000 : ℚ), (310204405403/1000000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (662499/1000000 : ℚ)
  x := (69637061251/200000000000 : ℚ)
  μ := (3/10 : ℚ)
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
theorem certOK : JointInheritedControls.control659.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control659.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate659
