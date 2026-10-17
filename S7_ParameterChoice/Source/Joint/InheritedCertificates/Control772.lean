import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate772
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (2177127421423/48791806548525 : ℚ), (1073609789553/5000000000 : ℚ), (-9599766694793/1000000000000 : ℚ)⟩,
  ⟨(2177127421423/48791806548525 : ℚ), (698110974633/15439541044100 : ℚ), (39109463433/2000000000 : ℚ), (-891257009101/1000000000000 : ℚ)⟩,
  ⟨(698110974633/15439541044100 : ℚ), (96948042533/2102314330800 : ℚ), (10287976681/2500000000 : ℚ), (-48286508617/250000000000 : ℚ)⟩,
  ⟨(96948042533/2102314330800 : ℚ), (80973448009/1716354780700 : ℚ), (-223594973/2500000000 : ℚ), (375025299/500000000000 : ℚ)⟩,
  ⟨(80973448009/1716354780700 : ℚ), (10297052889/213454032250 : ℚ), (-18057927699/10000000000 : ℚ), (81723498607/1000000000000 : ℚ)⟩,
  ⟨(10297052889/213454032250 : ℚ), (4439070807/90337137520 : ℚ), (-26596088989/10000000000 : ℚ), (122911710163/1000000000000 : ℚ)⟩,
  ⟨(4439070807/90337137520 : ℚ), (10058312609/202228191400 : ℚ), (-6222589173/2000000000 : ℚ), (72553532099/500000000000 : ℚ)⟩,
  ⟨(10058312609/202228191400 : ℚ), (1219556449/24404074400 : ℚ), (-33135227779/10000000000 : ℚ), (155165376807/1000000000000 : ℚ)⟩,
  ⟨(1219556449/24404074400 : ℚ), (1/20 : ℚ), (-33379268523/10000000000 : ℚ), (19548116657/125000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (6620731477/40000000000 : ℚ), (-1/5 : ℚ), (189488590641/1000000000000 : ℚ)⟩,
  ⟨(6620731477/40000000000 : ℚ), (6864772221/40000000000 : ℚ), (-1219556449/6101018600 : ℚ), (46238651232057227637/244040744000000000000 : ℚ)⟩,
  ⟨(6864772221/40000000000 : ℚ), (1777410827/8000000000 : ℚ), (-10058312609/50557047850 : ℚ), (382836160184188403187/2022281914000000000000 : ℚ)⟩,
  ⟨(1777410827/8000000000 : ℚ), (13403911011/40000000000 : ℚ), (-4439070807/22584284380 : ℚ), (852679153533445410173/4516856876000000000000 : ℚ)⟩,
  ⟨(13403911011/40000000000 : ℚ), (21942072301/40000000000 : ℚ), (-20594105778/106727016125 : ℚ), (800761564100146016693/4269080645000000000000 : ℚ)⟩,
  ⟨(21942072301/40000000000 : ℚ), (9776405027/10000000000 : ℚ), (-80973448009/429088695175 : ℚ), (1589695212985642451779/8581773903500000000000 : ℚ)⟩,
  ⟨(9776405027/10000000000 : ℚ), (20287976681/10000000000 : ℚ), (-96948042533/525578582700 : ℚ), (951745435679932287937/5255785827000000000000 : ℚ)⟩,
  ⟨(20287976681/10000000000 : ℚ), (47109463433/8000000000 : ℚ), (-698110974633/3859885261025 : ℚ), (104813185272185754109/603107072035156250000 : ℚ)⟩,
  ⟨(47109463433/8000000000 : ℚ), (32/1 : ℚ), (-8708509685692/48791806548525 : ℚ), (311824510047248893578139/1951672261941000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (14826357441/25000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(11136031249/250000000000 : ℚ), (1073609789553/5000000000 : ℚ), (-9599766694793/1000000000000 : ℚ), 11⟩,
    ⟨(22477700037/500000000000 : ℚ), (39109463433/2000000000 : ℚ), (-891257009101/1000000000000 : ℚ), 7⟩,
    ⟨(45715337329/1000000000000 : ℚ), (10287976681/2500000000 : ℚ), (-48286508617/250000000000 : ℚ), 6⟩,
    ⟨(7298163/156250000 : ℚ), (-223594973/2500000000 : ℚ), (375025299/500000000000 : ℚ), 5⟩,
    ⟨(11945739193/250000000000 : ℚ), (-18057927699/10000000000 : ℚ), (81723498607/1000000000000 : ℚ), 5⟩,
    ⟨(12193965661/250000000000 : ℚ), (-26596088989/10000000000 : ℚ), (122911710163/1000000000000 : ℚ), 5⟩,
    ⟨(24767899949/500000000000 : ℚ), (-6222589173/2000000000 : ℚ), (72553532099/500000000000 : ℚ), 5⟩,
    ⟨(1560846093/31250000000 : ℚ), (-33135227779/10000000000 : ℚ), (155165376807/1000000000000 : ℚ), 5⟩,
    ⟨(1/20 : ℚ), (-33379268523/10000000000 : ℚ), (19548116657/125000000000 : ℚ), 5⟩]
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
theorem certOK : JointInheritedControls.control772.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control772.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate772
