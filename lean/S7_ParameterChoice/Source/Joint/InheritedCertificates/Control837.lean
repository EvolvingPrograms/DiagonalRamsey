import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate837
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (11546827422917/91131630109200 : ℚ), (12556891393/125000000 : ℚ), (-1595760555707/125000000000 : ℚ)⟩,
  ⟨(11546827422917/91131630109200 : ℚ), (925394957649/7158075312200 : ℚ), (23308752587/2500000000 : ℚ), (-1219257022739/1000000000000 : ℚ)⟩,
  ⟨(925394957649/7158075312200 : ℚ), (256753993123/1927994873200 : ℚ), (10827128613/5000000000 : ℚ), (-29386206509/100000000000 : ℚ)⟩,
  ⟨(256753993123/1927994873200 : ℚ), (26746730262/194137222625 : ℚ), (1187154247/5000000000 : ℚ), (-37108071967/1000000000000 : ℚ)⟩,
  ⟨(26746730262/194137222625 : ℚ), (54242141281/380982756700 : ℚ), (-5391180411/10000000000 : ℚ), (69878849081/1000000000000 : ℚ)⟩,
  ⟨(54242141281/380982756700 : ℚ), (7280415491/49774398200 : ℚ), (-4600503989/5000000000 : ℚ), (62060495181/500000000000 : ℚ)⟩,
  ⟨(7280415491/49774398200 : ℚ), (13157004267/88383840200 : ℚ), (-5595991953/5000000000 : ℚ), (76621326163/500000000000 : ℚ)⟩,
  ⟨(13157004267/88383840200 : ℚ), (1593110253/10628874800 : ℚ), (-3018955577/2500000000 : ℚ), (166399656593/1000000000000 : ℚ)⟩,
  ⟨(1593110253/10628874800 : ℚ), (3/20 : ℚ), (-761381941/625000000 : ℚ), (83996383423/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (176118059/937500000 : ℚ), (-9/40 : ℚ), (105130550503/500000000000 : ℚ)⟩,
  ⟨(176118059/937500000 : ℚ), (731044423/3750000000 : ℚ), (-4779330759/21257749600 : ℚ), (558623715740474791/2657218700000000000 : ℚ)⟩,
  ⟨(731044423/3750000000 : ℚ), (634669349/2500000000 : ℚ), (-39471012801/176767680400 : ℚ), (3710876498952321923/17676768040000000000 : ℚ)⟩,
  ⟨(634669349/2500000000 : ℚ), (2899496011/7500000000 : ℚ), (-21841246473/99548796400 : ℚ), (51999773670859857143/248871991000000000000 : ℚ)⟩,
  ⟨(2899496011/7500000000 : ℚ), (3202939863/5000000000 : ℚ), (-162726423843/761965513400 : ℚ), (196857328817301192359/952456891750000000000 : ℚ)⟩,
  ⟨(3202939863/5000000000 : ℚ), (8687154247/7500000000 : ℚ), (-40120095393/194137222625 : ℚ), (1570661449965493755577/7765488905000000000000 : ℚ)⟩,
  ⟨(8687154247/7500000000 : ℚ), (6109042871/2500000000 : ℚ), (-770261979369/3855989746400 : ℚ), (1872740679259115045459/9639974366000000000000 : ℚ)⟩,
  ⟨(6109042871/2500000000 : ℚ), (27058752587/3750000000 : ℚ), (-2776184872947/14316150624400 : ℚ), (6442398440090718755347/35790376561000000000000 : ℚ)⟩,
  ⟨(27058752587/3750000000 : ℚ), (32/1 : ℚ), (-11546827422917/60754420072800 : ℚ), (57385010580729160933/377200455750000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (812499/1000000 : ℚ)
  x := (620388550011/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(126373474977/1000000000000 : ℚ), (12556891393/125000000 : ℚ), (-1595760555707/125000000000 : ℚ), 11⟩,
    ⟨(8009655689/62500000000 : ℚ), (23308752587/2500000000 : ℚ), (-1219257022739/1000000000000 : ℚ), 7⟩,
    ⟨(8215336223/62500000000 : ℚ), (10827128613/5000000000 : ℚ), (-29386206509/100000000000 : ℚ), 6⟩,
    ⟨(67872566331/500000000000 : ℚ), (1187154247/5000000000 : ℚ), (-37108071967/1000000000000 : ℚ), 5⟩,
    ⟨(70199575937/500000000000 : ℚ), (-5391180411/10000000000 : ℚ), (69878849081/1000000000000 : ℚ), 5⟩,
    ⟨(18087363121/125000000000 : ℚ), (-4600503989/5000000000 : ℚ), (62060495181/500000000000 : ℚ), 5⟩,
    ⟨(18498724189/125000000000 : ℚ), (-5595991953/5000000000 : ℚ), (76621326163/500000000000 : ℚ), 5⟩,
    ⟨(74885404779/500000000000 : ℚ), (-3018955577/2500000000 : ℚ), (166399656593/1000000000000 : ℚ), 5⟩,
    ⟨(3/20 : ℚ), (-761381941/625000000 : ℚ), (83996383423/500000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control837.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control837.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate837
