import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate706
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (17986423656013/204482609250000 : ℚ), (90028480049/400000000 : ℚ), (-19840518711383/1000000000000 : ℚ)⟩,
  ⟨(17986423656013/204482609250000 : ℚ), (180227945081/2018407555125 : ℚ), (8235436349/400000000 : ℚ), (-185409505537/100000000000 : ℚ)⟩,
  ⟨(180227945081/2018407555125 : ℚ), (133464946563/1461760813900 : ℚ), (8882660863/2000000000 : ℚ), (-206135747361/500000000000 : ℚ)⟩,
  ⟨(133464946563/1461760813900 : ℚ), (219906289/2347359780 : ℚ), (280239949/5000000000 : ℚ), (-11876655033/1000000000000 : ℚ)⟩,
  ⟨(219906289/2347359780 : ℚ), (42461067913/442024074550 : ℚ), (-1727945443/1000000000 : ℚ), (155252124607/1000000000000 : ℚ)⟩,
  ⟨(42461067913/442024074550 : ℚ), (45688745583/465867820100 : ℚ), (-26119935921/10000000000 : ℚ), (240174260433/1000000000000 : ℚ)⟩,
  ⟨(45688745583/465867820100 : ℚ), (5168053907/51986118000 : ℚ), (-15389307061/5000000000 : ℚ), (4466609469/15625000000 : ℚ)⟩,
  ⟨(5168053907/51986118000 : ℚ), (1252289977/12530338350 : ℚ), (-16429029421/5000000000 : ℚ), (76633805411/250000000000 : ℚ)⟩,
  ⟨(1252289977/12530338350 : ℚ), (1/10 : ℚ), (-33108665609/10000000000 : ℚ), (154519900799/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (6891334391/40000000000 : ℚ), (-2/5 : ℚ), (94488286377/250000000000 : ℚ)⟩,
  ⟨(6891334391/40000000000 : ℚ), (3570970579/20000000000 : ℚ), (-2504579954/6265169175 : ℚ), (591921022030035073/1566292293750000000 : ℚ)⟩,
  ⟨(3570970579/20000000000 : ℚ), (4610692939/20000000000 : ℚ), (-5168053907/12996529500 : ℚ), (98132849470288692113/259930590000000000000 : ℚ)⟩,
  ⟨(4610692939/20000000000 : ℚ), (13880064079/40000000000 : ℚ), (-45688745583/116466955025 : ℚ), (175305730790168213409/465867820100000000000 : ℚ)⟩,
  ⟨(13880064079/40000000000 : ℚ), (2272054557/4000000000 : ℚ), (-84922135826/221012037275 : ℚ), (3301980790962971739857/8840481491000000000000 : ℚ)⟩,
  ⟨(2272054557/4000000000 : ℚ), (20280239949/20000000000 : ℚ), (-219906289/586839945 : ℚ), (14401194651623817991/39122663000000000000 : ℚ)⟩,
  ⟨(20280239949/20000000000 : ℚ), (16882660863/8000000000 : ℚ), (-133464946563/365440203475 : ℚ), (5239793992881729576987/14617608139000000000000 : ℚ)⟩,
  ⟨(16882660863/8000000000 : ℚ), (9835436349/1600000000 : ℚ), (-720911780324/2018407555125 : ℚ), (61265043351946192969/179414004900000000000 : ℚ)⟩,
  ⟨(9835436349/1600000000 : ℚ), (32/1 : ℚ), (-17986423656013/51120652312500 : ℚ), (8417415709010467649179/27264347900000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (687499/1000000 : ℚ)
  x := (436777013249/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(21947297703/250000000000 : ℚ), (90028480049/400000000 : ℚ), (-19840518711383/1000000000000 : ℚ), 10⟩,
    ⟨(88709666721/1000000000000 : ℚ), (8235436349/400000000 : ℚ), (-185409505537/100000000000 : ℚ), 7⟩,
    ⟨(45205242213/500000000000 : ℚ), (8882660863/2000000000 : ℚ), (-206135747361/500000000000 : ℚ), 6⟩,
    ⟨(1852654197/20000000000 : ℚ), (280239949/5000000000 : ℚ), (-11876655033/1000000000000 : ℚ), 5⟩,
    ⟨(23759507329/250000000000 : ℚ), (-1727945443/1000000000 : ℚ), (155252124607/1000000000000 : ℚ), 5⟩,
    ⟨(4863012737/50000000000 : ℚ), (-26119935921/10000000000 : ℚ), (240174260433/1000000000000 : ℚ), 4⟩,
    ⟨(49480536223/500000000000 : ℚ), (-15389307061/5000000000 : ℚ), (4466609469/15625000000 : ℚ), 4⟩,
    ⟨(19976309671/200000000000 : ℚ), (-16429029421/5000000000 : ℚ), (76633805411/250000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-33108665609/10000000000 : ℚ), (154519900799/500000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control706.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control706.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate706
