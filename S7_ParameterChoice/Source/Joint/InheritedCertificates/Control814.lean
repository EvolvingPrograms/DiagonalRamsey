import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate814
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(24693878871/200000000000 : ℚ), (4307314430957/10000000000 : ℚ), (-53303713499613/1000000000000 : ℚ), 12⟩,
    ⟨(123977942181/1000000000000 : ℚ), (45684326307/1000000000 : ℚ), (-5726055786861/1000000000000 : ℚ), 9⟩,
    ⟨(3905484207/31250000000 : ℚ), (75312949627/5000000000 : ℚ), (-959673456259/500000000000 : ℚ), 8⟩,
    ⟨(7901482269/62500000000 : ℚ), (4189791009/625000000 : ℚ), (-6959543261/8000000000 : ℚ), 7⟩,
    ⟨(64133476437/500000000000 : ℚ), (16516565487/5000000000 : ℚ), (-54677924681/125000000000 : ℚ), 6⟩,
    ⟨(26086873957/200000000000 : ℚ), (16037850853/10000000000 : ℚ), (-217816454899/1000000000000 : ℚ), 6⟩,
    ⟨(132842674423/1000000000000 : ℚ), (6386833193/10000000000 : ℚ), (-90886839649/1000000000000 : ℚ), 5⟩,
    ⟨(13539931699/100000000000 : ℚ), (20236839/500000000 : ℚ), (-2678867303/250000000000 : ℚ), 5⟩,
    ⟨(27601209429/200000000000 : ℚ), (-3546102691/10000000000 : ℚ), (43260326757/1000000000000 : ℚ), 5⟩,
    ⟨(8785168107/62500000000 : ℚ), (-6279047037/10000000000 : ℚ), (81307912519/1000000000000 : ℚ), 5⟩,
    ⟨(142970994349/1000000000000 : ℚ), (-4114995293/5000000000 : ℚ), (108956261733/1000000000000 : ℚ), 4⟩,
    ⟨(145138411261/1000000000000 : ℚ), (-1928989387/2000000000 : ℚ), (129334579127/1000000000000 : ℚ), 4⟩,
    ⟨(146981647831/1000000000000 : ℚ), (-10667137039/10000000000 : ℚ), (36065626831/250000000000 : ℚ), 4⟩,
    ⟨(148429869511/1000000000000 : ℚ), (-5690418521/5000000000 : ℚ), (154803427419/1000000000000 : ℚ), 4⟩,
    ⟨(74713710977/500000000000 : ℚ), (-11834939057/10000000000 : ℚ), (161566074581/1000000000000 : ℚ), 4⟩,
    ⟨(7496798489/50000000000 : ℚ), (-1507016327/1250000000 : ℚ), (164876879449/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-3020880021/2500000000 : ℚ), (165287633723/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (58884613653/100000000000 : ℚ)
  μ := (3/20 : ℚ)
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
theorem certOK : JointInheritedControls.control814.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control814.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate814
