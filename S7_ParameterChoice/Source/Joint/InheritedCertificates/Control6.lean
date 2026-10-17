import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate6
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(9683315273/250000000000 : ℚ), (11301659452989/10000000000 : ℚ), (-43910102464609/1000000000000 : ℚ), 10⟩,
    ⟨(486865323/12500000000 : ℚ), (1194726917291/10000000000 : ℚ), (-2361202119801/500000000000 : ℚ), 6⟩,
    ⟨(39372855933/1000000000000 : ℚ), (39258864439/1000000000 : ℚ), (-317339686899/200000000000 : ℚ), 5⟩,
    ⟨(39987871503/1000000000000 : ℚ), (174283980889/10000000000 : ℚ), (-360956684933/500000000000 : ℚ), 4⟩,
    ⟨(20385318923/500000000000 : ℚ), (85778564233/10000000000 : ℚ), (-365089074533/1000000000000 : ℚ), 4⟩,
    ⟨(10422768423/250000000000 : ℚ), (41677549183/10000000000 : ℚ), (-18350907947/100000000000 : ℚ), 3⟩,
    ⟨(42713807207/1000000000000 : ℚ), (8343530059/5000000000 : ℚ), (-78169834759/1000000000000 : ℚ), 3⟩,
    ⟨(10949883829/250000000000 : ℚ), (1210289039/10000000000 : ℚ), (-705602291/62500000000 : ℚ), 2⟩,
    ⟨(8981306819/200000000000 : ℚ), (-1126734849/1250000000 : ℚ), (34021184819/1000000000000 : ℚ), 2⟩,
    ⟨(45992262203/1000000000000 : ℚ), (-2011512413/1250000000 : ℚ), (16542866187/250000000000 : ℚ), 2⟩,
    ⟨(23507497859/500000000000 : ℚ), (-21148041737/10000000000 : ℚ), (44836460047/500000000000 : ℚ), 2⟩,
    ⟨(11983857891/250000000000 : ℚ), (-12407023451/5000000000 : ℚ), (26768015029/250000000000 : ℚ), 2⟩,
    ⟨(12179549477/250000000000 : ℚ), (-27458867053/10000000000 : ℚ), (59925600983/500000000000 : ℚ), 2⟩,
    ⟨(24666606739/500000000000 : ℚ), (-5860289489/2000000000 : ℚ), (12888363837/100000000000 : ℚ), 2⟩,
    ⟨(4975684357/100000000000 : ℚ), (-1523549933/500000000 : ℚ), (134677919377/1000000000000 : ℚ), 2⟩,
    ⟨(49972808319/1000000000000 : ℚ), (-31039629357/10000000000 : ℚ), (137513354599/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-1244399441/400000000 : ℚ), (5514601689/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (199999/1000000 : ℚ)
  x := (38398339849/250000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 32
  tangents := tangents
  degrees := degrees
  cells := cells

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
theorem certOK : JointInheritedControls.control6.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control6.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate6
