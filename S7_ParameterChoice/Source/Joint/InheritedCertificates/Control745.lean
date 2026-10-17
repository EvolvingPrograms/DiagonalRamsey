import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate745
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(48753463219/200000000000 : ℚ), (4904096405371/10000000000 : ℚ), (-59920649657203/500000000000 : ℚ), 12⟩,
    ⟨(24484520363/100000000000 : ℚ), (10420237097/200000000 : ℚ), (-12908874596441/1000000000000 : ℚ), 8⟩,
    ⟨(246959556087/1000000000000 : ℚ), (172610465447/10000000000 : ℚ), (-2176812643269/500000000000 : ℚ), 7⟩,
    ⟨(125014560043/500000000000 : ℚ), (38798541991/5000000000 : ℚ), (-997877119283/500000000000 : ℚ), 6⟩,
    ⟨(63483983501/250000000000 : ℚ), (39007402587/10000000000 : ℚ), (-51228281913/50000000000 : ℚ), 5⟩,
    ⟨(258529861173/1000000000000 : ℚ), (19766262863/10000000000 : ℚ), (-532093856113/1000000000000 : ℚ), 5⟩,
    ⟨(263634359549/1000000000000 : ℚ), (4438580803/5000000000 : ℚ), (-3100945373/12500000000 : ℚ), 5⟩,
    ⟨(134526633061/500000000000 : ℚ), (2158247989/10000000000 : ℚ), (-34634262027/500000000000 : ℚ), 4⟩,
    ⟨(274578335351/1000000000000 : ℚ), (-2254181289/10000000000 : ℚ), (50588346381/1000000000000 : ℚ), 4⟩,
    ⟨(279997241923/1000000000000 : ℚ), (-5286393097/10000000000 : ℚ), (13462446751/100000000000 : ℚ), 4⟩,
    ⟨(285101740299/1000000000000 : ℚ), (-29742251/40000000 : ℚ), (48831539957/250000000000 : ℚ), 4⟩,
    ⟨(289695667469/1000000000000 : ℚ), (-4491547/5000000 : ℚ), (119895238437/500000000000 : ℚ), 4⟩,
    ⟨(293602481387/1000000000000 : ℚ), (-10093566899/10000000000 : ℚ), (136086030473/500000000000 : ℚ), 4⟩,
    ⟨(148336022693/500000000000 : ℚ), (-10864468469/10000000000 : ℚ), (294922215439/1000000000000 : ℚ), 4⟩,
    ⟨(149393198921/500000000000 : ℚ), (-2270566189/2000000000 : ℚ), (77365408099/250000000000 : ℚ), 4⟩,
    ⟨(299864285377/1000000000000 : ℚ), (-1159006553/1000000000 : ℚ), (158281298693/500000000000 : ℚ), 4⟩,
    ⟨(3/10 : ℚ), (-11619411131/10000000000 : ℚ), (317442766149/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (388807281183/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control745.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control745.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate745
