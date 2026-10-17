import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate856
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(75446692471/500000000000 : ℚ), (27619292747/125000000 : ℚ), (-33456595923019/1000000000000 : ℚ), 12⟩,
    ⟨(6073387101/40000000000 : ℚ), (116999697393/5000000000 : ℚ), (-903164104397/250000000000 : ℚ), 9⟩,
    ⟨(2401267021/15625000000 : ℚ), (77375448591/10000000000 : ℚ), (-48993182183/40000000000 : ℚ), 7⟩,
    ⟨(156361663829/1000000000000 : ℚ), (3483314063/1000000000 : ℚ), (-566571588351/1000000000000 : ℚ), 7⟩,
    ⟨(31954677601/200000000000 : ℚ), (17639433547/10000000000 : ℚ), (-147632898139/500000000000 : ℚ), 6⟩,
    ⟨(81892575613/500000000000 : ℚ), (2277852483/2500000000 : ℚ), (-7875709573/50000000000 : ℚ), 6⟩,
    ⟨(168242783681/1000000000000 : ℚ), (4309191677/10000000000 : ℚ), (-9737256649/125000000000 : ℚ), 5⟩,
    ⟨(34594996211/200000000000 : ℚ), (679298303/5000000000 : ℚ), (-345188517/12500000000 : ℚ), 5⟩,
    ⟨(22224985957/125000000000 : ℚ), (-286492771/5000000000 : ℚ), (6231689477/1000000000000 : ℚ), 5⟩,
    ⟨(18253208503/100000000000 : ℚ), (-948841789/5000000000 : ℚ), (3760200641/125000000000 : ℚ), 5⟩,
    ⟨(37397943497/200000000000 : ℚ), (-1417818821/5000000000 : ℚ), (47402547103/1000000000000 : ℚ), 4⟩,
    ⟨(191001480707/1000000000000 : ℚ), (-14043183/40000000 : ℚ), (2406333727/40000000000 : ℚ), 4⟩,
    ⟨(194413204883/1000000000000 : ℚ), (-799057713/2000000000 : ℚ), (6949287487/100000000000 : ℚ), 4⟩,
    ⟨(24636722421/125000000000 : ℚ), (-4331674559/10000000000 : ℚ), (38038489063/500000000000 : ℚ), 4⟩,
    ⟨(198940191187/1000000000000 : ℚ), (-4544796553/10000000000 : ℚ), (80296942061/1000000000000 : ℚ), 4⟩,
    ⟨(199881483769/1000000000000 : ℚ), (-4648331171/10000000000 : ℚ), (41180754449/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-4661138431/10000000000 : ℚ), (1032719727/12500000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (175342899707/250000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control856.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control856.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate856
