import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate862
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (8085273745827/87587272954850 : ℚ), (962262428723/5000000000 : ℚ), (-17788943962533/1000000000000 : ℚ)⟩,
  ⟨(8085273745827/87587272954850 : ℚ), (647868809467/6954229240100 : ℚ), (172779398349/10000000000 : ℚ), (-1618396470879/1000000000000 : ℚ)⟩,
  ⟨(647868809467/6954229240100 : ℚ), (359318746543/3804441010300 : ℚ), (33694813547/10000000000 : ℚ), (-64531770389/200000000000 : ℚ)⟩,
  ⟨(359318746543/3804441010300 : ℚ), (14965417593/155944747880 : ℚ), (-1087399139/2500000000 : ℚ), (18329947299/500000000000 : ℚ)⟩,
  ⟨(14965417593/155944747880 : ℚ), (12658250903/129848145800 : ℚ), (-1246504459/625000000 : ℚ), (363894669/1953125000 : ℚ)⟩,
  ⟨(12658250903/129848145800 : ℚ), (409213049/4143102619 : ℚ), (-6933740023/2500000000 : ℚ), (131131787973/500000000000 : ℚ)⟩,
  ⟨(409213049/4143102619 : ℚ), (1857432177/18644255440 : ℚ), (-31878062711/10000000000 : ℚ), (151592440423/500000000000 : ℚ)⟩,
  ⟨(1857432177/18644255440 : ℚ), (1127352827/11277803450 : ℚ), (-6748497651/2000000000 : ℚ), (40219900327/125000000000 : ℚ)⟩,
  ⟨(1127352827/11277803450 : ℚ), (1/10 : ℚ), (-8492011081/2500000000 : ℚ), (32401390827/100000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1507988919/10000000000 : ℚ), (-2/5 : ℚ), (38433346503/100000000000 : ℚ)⟩,
  ⟨(1507988919/10000000000 : ℚ), (1251502349/8000000000 : ℚ), (-2254705654/5638901725 : ℚ), (43341794009031191367/112778034500000000000 : ℚ)⟩,
  ⟨(1251502349/8000000000 : ℚ), (8121937289/40000000000 : ℚ), (-1857432177/4661063860 : ℚ), (358062556502763105877/932212772000000000000 : ℚ)⟩,
  ⟨(8121937289/40000000000 : ℚ), (3066259977/10000000000 : ℚ), (-1636852196/4143102619 : ℚ), (794243173028056975887/2071551309500000000000 : ℚ)⟩,
  ⟨(3066259977/10000000000 : ℚ), (1253495541/2500000000 : ℚ), (-12658250903/32462036450 : ℚ), (30987396435339240387/81155091125000000000 : ℚ)⟩,
  ⟨(1253495541/2500000000 : ℚ), (8912600861/10000000000 : ℚ), (-14965417593/38986186970 : ℚ), (184591360969471946817/487327337125000000000 : ℚ)⟩,
  ⟨(8912600861/10000000000 : ℚ), (73694813547/40000000000 : ℚ), (-359318746543/951110252575 : ℚ), (7102281171834698308843/19022205051500000000000 : ℚ)⟩,
  ⟨(73694813547/40000000000 : ℚ), (212779398349/40000000000 : ℚ), (-647868809467/1738557310025 : ℚ), (1581633430553579742469/4346393275062500000000 : ℚ)⟩,
  ⟨(212779398349/40000000000 : ℚ), (32/1 : ℚ), (-16170547491654/43793636477425 : ℚ), (605740697367170772742983/1751745459097000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (837499/1000000 : ℚ)
  x := (54051349437/100000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(46100722691/500000000000 : ℚ), (962262428723/5000000000 : ℚ), (-17788943962533/1000000000000 : ℚ), 12⟩,
    ⟨(23197329117/250000000000 : ℚ), (172779398349/10000000000 : ℚ), (-1618396470879/1000000000000 : ℚ), 9⟩,
    ⟨(18775112119/200000000000 : ℚ), (33694813547/10000000000 : ℚ), (-64531770389/200000000000 : ℚ), 7⟩,
    ⟨(95294806943/1000000000000 : ℚ), (-1087399139/2500000000 : ℚ), (18329947299/500000000000 : ℚ), 6⟩,
    ⟨(2420774703/25000000000 : ℚ), (-1246504459/625000000 : ℚ), (363894669/1953125000 : ℚ), 6⟩,
    ⟨(98250234467/1000000000000 : ℚ), (-6933740023/2500000000 : ℚ), (131131787973/500000000000 : ℚ), 6⟩,
    ⟨(19867295719/200000000000 : ℚ), (-31878062711/10000000000 : ℚ), (151592440423/500000000000 : ℚ), 6⟩,
    ⟨(1249054371/12500000000 : ℚ), (-6748497651/2000000000 : ℚ), (40219900327/125000000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-8492011081/2500000000 : ℚ), (32401390827/100000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control862.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control862.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate862
