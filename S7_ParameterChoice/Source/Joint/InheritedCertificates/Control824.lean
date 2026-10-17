import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate824
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(91769664997/500000000000 : ℚ), (120519564307/500000000 : ℚ), (-44411674808393/1000000000000 : ℚ), 12⟩,
    ⟨(2887707361/15625000000 : ℚ), (127544518219/5000000000 : ℚ), (-960556838383/200000000000 : ℚ), 8⟩,
    ⟨(93656098241/500000000000 : ℚ), (42194941423/5000000000 : ℚ), (-816843151301/500000000000 : ℚ), 7⟩,
    ⟨(190940073827/1000000000000 : ℚ), (19050995471/5000000000 : ℚ), (-760088003877/1000000000000 : ℚ), 6⟩,
    ⟨(195557485847/1000000000000 : ℚ), (19436181219/10000000000 : ℚ), (-100016770687/250000000000 : ℚ), 6⟩,
    ⟨(50246746997/250000000000 : ℚ), (5101491473/5000000000 : ℚ), (-217313361821/1000000000000 : ℚ), 5⟩,
    ⟨(207019927527/1000000000000 : ℚ), (313732171/625000000 : ℚ), (-11173061101/100000000000 : ℚ), 5⟩,
    ⟨(213424461981/1000000000000 : ℚ), (922904829/5000000000 : ℚ), (-22545682931/500000000000 : ℚ), 4⟩,
    ⟨(219954468683/1000000000000 : ℚ), (-28051827/1250000000 : ℚ), (-69202887/250000000000 : ℚ), 4⟩,
    ⟨(226359003137/1000000000000 : ℚ), (-327766383/2000000000 : ℚ), (15631267461/500000000000 : ℚ), 4⟩,
    ⟨(232391942677/1000000000000 : ℚ), (-2636502853/10000000000 : ℚ), (54133828777/1000000000000 : ℚ), 4⟩,
    ⟨(237821444817/1000000000000 : ℚ), (-1340803/4000000 : ℚ), (70949403521/1000000000000 : ℚ), 4⟩,
    ⟨(121219428419/500000000000 : ℚ), (-482965747/1250000000 : ℚ), (83234385387/1000000000000 : ℚ), 4⟩,
    ⟨(246066734183/1000000000000 : ℚ), (-1054499503/2500000000 : ℚ), (91886454039/1000000000000 : ℚ), 4⟩,
    ⟨(248565659561/1000000000000 : ℚ), (-2220980657/5000000000 : ℚ), (48712558567/500000000000 : ℚ), 4⟩,
    ⟨(249839600671/1000000000000 : ℚ), (-2275306741/5000000000 : ℚ), (25033180067/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-1141011679/2500000000 : ℚ), (100468443311/1000000000000 : ℚ), 4⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/4 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (787499/1000000 : ℚ)
  x := (316940024943/500000000000 : ℚ)
  μ := (1/4 : ℚ)
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
theorem certOK : JointInheritedControls.control824.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control824.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate824
