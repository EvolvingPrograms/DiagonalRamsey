import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate30
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(79221068551/1000000000000 : ℚ), (11166801875313/10000000000 : ℚ), (-44355384305447/500000000000 : ℚ), 10⟩,
    ⟨(9952420787/125000000000 : ℚ), (1181770322377/10000000000 : ℚ), (-953493068933/100000000000 : ℚ), 7⟩,
    ⟨(80400655427/1000000000000 : ℚ), (19434283167/500000000 : ℚ), (-399947151197/125000000000 : ℚ), 5⟩,
    ⟨(81534911441/1000000000000 : ℚ), (172585687293/10000000000 : ℚ), (-36312968801/25000000000 : ℚ), 4⟩,
    ⟨(20744636379/250000000000 : ℚ), (42423988347/5000000000 : ℚ), (-731828371031/1000000000000 : ℚ), 4⟩,
    ⟨(84676079603/1000000000000 : ℚ), (20532989073/5000000000 : ℚ), (-91319172897/250000000000 : ℚ), 3⟩,
    ⟨(4328113921/50000000000 : ℚ), (4056376321/2500000000 : ℚ), (-30565298961/200000000000 : ℚ), 3⟩,
    ⟨(88564656403/1000000000000 : ℚ), (414169953/5000000000 : ℚ), (-9063320407/500000000000 : ℚ), 3⟩,
    ⟨(9060626329/100000000000 : ℚ), (-9347780601/10000000000 : ℚ), (36484854409/500000000000 : ℚ), 3⟩,
    ⟨(46304320637/500000000000 : ℚ), (-16393548067/10000000000 : ℚ), (27495565691/200000000000 : ℚ), 2⟩,
    ⟨(94494840091/1000000000000 : ℚ), (-10713039739/5000000000 : ℚ), (184538733861/1000000000000 : ℚ), 2⟩,
    ⟨(48096187089/500000000000 : ℚ), (-6268749597/2500000000 : ℚ), (219319119029/1000000000000 : ℚ), 2⟩,
    ⟨(24409002063/250000000000 : ℚ), (-2770773931/1000000000 : ℚ), (244829656291/1000000000000 : ℚ), 2⟩,
    ⟨(49385132133/500000000000 : ℚ), (-5908464849/2000000000 : ℚ), (131422063569/500000000000 : ℚ), 2⟩,
    ⟨(99551553397/1000000000000 : ℚ), (-191919611/62500000 : ℚ), (137197020697/500000000000 : ℚ), 2⟩,
    ⟨(99949851143/1000000000000 : ℚ), (-31273599991/10000000000 : ℚ), (56008896749/200000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-7835923907/2500000000 : ℚ), (280745264237/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (287499/1000000 : ℚ)
  x := (171346854441/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem certOK : JointInheritedControls.control30.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control30.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate30
