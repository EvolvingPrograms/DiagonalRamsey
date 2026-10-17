import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate543
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (9214956050783/215799670205100 : ℚ), (2376267409011/10000000000 : ℚ), (-5087447710273/500000000000 : ℚ)⟩,
  ⟨(9214956050783/215799670205100 : ℚ), (9355689567/215031696100 : ℚ), (2728383837/125000000 : ℚ), (-959939369763/1000000000000 : ℚ)⟩,
  ⟨(9355689567/215031696100 : ℚ), (4113660961/91970257190 : ℚ), (48395667041/10000000000 : ℚ), (-22083989397/100000000000 : ℚ)⟩,
  ⟨(4113660961/91970257190 : ℚ), (86197144991/1866952195000 : ℚ), (1205269223/5000000000 : ℚ), (-94730287/6250000000 : ℚ)⟩,
  ⟨(86197144991/1866952195000 : ℚ), (2199736642/46201626885 : ℚ), (-1016186469/625000000 : ℚ), (71040299071/1000000000000 : ℚ)⟩,
  ⟨(2199736642/46201626885 : ℚ), (23737394581/486110960600 : ℚ), (-25499308881/10000000000 : ℚ), (115035031911/1000000000000 : ℚ)⟩,
  ⟨(23737394581/486110960600 : ℚ), (1074852213/21651388900 : ℚ), (-30360418487/10000000000 : ℚ), (34693106623/250000000000 : ℚ)⟩,
  ⟨(1074852213/21651388900 : ℚ), (130218933/2606254630 : ℚ), (-32525557377/10000000000 : ℚ), (74760474311/500000000000 : ℚ)⟩,
  ⟨(130218933/2606254630 : ℚ), (1/20 : ℚ), (-819654571/250000000 : ℚ), (4713223061/31250000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (180345429/1000000000 : ℚ), (-1/5 : ℚ), (23361527969/125000000000 : ℚ)⟩,
  ⟨(180345429/1000000000 : ℚ), (7474442623/40000000000 : ℚ), (-260437866/1303127315 : ℚ), (3043881618385985911/16289091437500000000 : ℚ)⟩,
  ⟨(7474442623/40000000000 : ℚ), (9639581513/40000000000 : ℚ), (-1074852213/5412847225 : ℚ), (40407283267391485657/216513889000000000000 : ℚ)⟩,
  ⟨(9639581513/40000000000 : ℚ), (14500691119/40000000000 : ℚ), (-23737394581/121527740150 : ℚ), (180681305087596812641/972221921200000000000 : ℚ)⟩,
  ⟨(14500691119/40000000000 : ℚ), (1483813531/2500000000 : ℚ), (-8798946568/46201626885 : ℚ), (1700915156386983753407/9240325377000000000000 : ℚ)⟩,
  ⟨(1483813531/2500000000 : ℚ), (21205269223/20000000000 : ℚ), (-86197144991/466738048750 : ℚ), (1686348131990016939993/9334760975000000000000 : ℚ)⟩,
  ⟨(21205269223/20000000000 : ℚ), (88395667041/40000000000 : ℚ), (-8227321922/45985128595 : ℚ), (80261393082891892479/459851285950000000000 : ℚ)⟩,
  ⟨(88395667041/40000000000 : ℚ), (3228383837/500000000 : ℚ), (-9355689567/53757924025 : ℚ), (352126650234356836077/2150316961000000000000 : ℚ)⟩,
  ⟨(3228383837/500000000 : ℚ), (32/1 : ℚ), (-9214956050783/53949917551275 : ℚ), (308407219723585642065767/2157996702051000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (587499/1000000 : ℚ)
  x := (117136781469/250000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(42597555297/1000000000000 : ℚ), (2376267409011/10000000000 : ℚ), (-5087447710273/500000000000 : ℚ), 9⟩,
    ⟨(21577783401/500000000000 : ℚ), (2728383837/125000000 : ℚ), (-959939369763/1000000000000 : ℚ), 6⟩,
    ⟨(2209331881/50000000000 : ℚ), (48395667041/10000000000 : ℚ), (-22083989397/100000000000 : ℚ), 5⟩,
    ⟨(11383449141/250000000000 : ℚ), (1205269223/5000000000 : ℚ), (-94730287/6250000000 : ℚ), 4⟩,
    ⟨(46991950899/1000000000000 : ℚ), (-1016186469/625000000 : ℚ), (71040299071/1000000000000 : ℚ), 4⟩,
    ⟨(48339109843/1000000000000 : ℚ), (-25499308881/10000000000 : ℚ), (115035031911/1000000000000 : ℚ), 4⟩,
    ⟨(49370180661/1000000000000 : ℚ), (-30360418487/10000000000 : ℚ), (34693106623/250000000000 : ℚ), 4⟩,
    ⟨(49928192167/1000000000000 : ℚ), (-32525557377/10000000000 : ℚ), (74760474311/500000000000 : ℚ), 4⟩,
    ⟨(1/20 : ℚ), (-819654571/250000000 : ℚ), (4713223061/31250000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control543.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control543.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate543
