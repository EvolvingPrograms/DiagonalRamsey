import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate765
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(151816769193/1000000000000 : ℚ), (890151378457/2500000000 : ℚ), (-54239288972251/1000000000000 : ℚ), 11⟩,
    ⟨(152740362027/1000000000000 : ℚ), (37711485091/1000000000 : ℚ), (-1463586824229/250000000000 : ℚ), 8⟩,
    ⟨(7727602727/50000000000 : ℚ), (124662948071/10000000000 : ℚ), (-495748733217/250000000000 : ℚ), 7⟩,
    ⟨(31436444881/200000000000 : ℚ), (28031504993/5000000000 : ℚ), (-457853260913/500000000000 : ℚ), 6⟩,
    ⟨(160529795669/1000000000000 : ℚ), (28320736491/10000000000 : ℚ), (-118937193693/250000000000 : ℚ), 5⟩,
    ⟨(82233061523/500000000000 : ℚ), (2909817673/2000000000 : ℚ), (-25230118457/100000000000 : ℚ), 5⟩,
    ⟨(168839935681/1000000000000 : ℚ), (3392966077/5000000000 : ℚ), (-123095855309/1000000000000 : ℚ), 4⟩,
    ⟨(17348315041/100000000000 : ℚ), (62817973/312500000 : ℚ), (-10360807791/250000000000 : ℚ), 4⟩,
    ⟨(44554332773/250000000000 : ℚ), (-560200513/5000000000 : ℚ), (6779642881/500000000000 : ℚ), 4⟩,
    ⟨(9143027291/50000000000 : ℚ), (-1635104191/5000000000 : ℚ), (10469058397/200000000000 : ℚ), 4⟩,
    ⟨(23404294807/125000000000 : ℚ), (-4794179439/10000000000 : ℚ), (16106409449/200000000000 : ℚ), 4⟩,
    ⟨(191170685833/1000000000000 : ℚ), (-5892207551/10000000000 : ℚ), (25325007967/250000000000 : ℚ), 4⟩,
    ⟨(194518257097/1000000000000 : ℚ), (-1670171721/2500000000 : ℚ), (14562779643/125000000000 : ℚ), 4⟩,
    ⟨(98574213481/500000000000 : ℚ), (-7228364169/10000000000 : ℚ), (127226358009/1000000000000 : ℚ), 4⟩,
    ⟨(7958404779/40000000000 : ℚ), (-1515086117/2000000000 : ℚ), (134099816231/1000000000000 : ℚ), 4⟩,
    ⟨(49970928077/250000000000 : ℚ), (-7744051677/10000000000 : ℚ), (68731224723/500000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-3882455367/5000000000 : ℚ), (68939754613/500000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (724999/1000000 : ℚ)
  x := (110522003099/200000000000 : ℚ)
  μ := (1/5 : ℚ)
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
theorem certOK : JointInheritedControls.control765.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control765.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate765
