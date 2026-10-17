import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate719
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(240940597649/1000000000000 : ℚ), (1006806126249/2000000000 : ℚ), (-121608947927679/1000000000000 : ℚ), 11⟩,
    ⟨(242072668701/1000000000000 : ℚ), (534675744851/10000000000 : ℚ), (-13107270851881/1000000000000 : ℚ), 8⟩,
    ⟨(244293305949/1000000000000 : ℚ), (17717486937/1000000000 : ℚ), (-1106604692621/250000000000 : ℚ), 7⟩,
    ⟨(247517171549/1000000000000 : ℚ), (79740771389/10000000000 : ℚ), (-1016932964821/500000000000 : ℚ), 6⟩,
    ⟨(50324074831/200000000000 : ℚ), (1607959613/400000000 : ℚ), (-262080827639/250000000000 : ℚ), 5⟩,
    ⟨(25644522999/100000000000 : ℚ), (1025019257/500000000 : ℚ), (-137126419451/250000000000 : ℚ), 5⟩,
    ⟨(261806322551/1000000000000 : ℚ), (1872481449/2000000000 : ℚ), (-260189677247/1000000000000 : ℚ), 4⟩,
    ⟨(133748814029/500000000000 : ℚ), (623979703/2500000000 : ℚ), (-7862475871/100000000000 : ℚ), 4⟩,
    ⟨(4270319263/15625000000 : ℚ), (-2009724413/10000000000 : ℚ), (43121505383/1000000000000 : ℚ), 4⟩,
    ⟨(278991738339/1000000000000 : ℚ), (-637950319/1250000000 : ℚ), (64255555291/500000000000 : ℚ), 4⟩,
    ⟨(2843528309/10000000000 : ℚ), (-7294856713/10000000000 : ℚ), (23775997609/125000000000 : ℚ), 4⟩,
    ⟨(57835537347/200000000000 : ℚ), (-4435775377/5000000000 : ℚ), (7356553277/31250000000 : ℚ), 4⟩,
    ⟨(293280889341/1000000000000 : ℚ), (-10002158851/10000000000 : ℚ), (13416533913/50000000000 : ℚ), 4⟩,
    ⟨(296504754941/1000000000000 : ℚ), (-215730697/200000000 : ℚ), (291459188571/1000000000000 : ℚ), 4⟩,
    ⟨(298725392189/1000000000000 : ℚ), (-35259911/31250000 : ℚ), (30623924117/100000000000 : ℚ), 4⟩,
    ⟨(299857463241/1000000000000 : ℚ), (-180067833/156250000 : ℚ), (313457173879/1000000000000 : ℚ), 4⟩,
    ⟨(3/10 : ℚ), (-11554169577/10000000000 : ℚ), (19646988069/62500000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (372420403601/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control719.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control719.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate719
