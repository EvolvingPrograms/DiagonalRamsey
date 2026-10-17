import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate889
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1963657933931/41656609037175 : ℚ), (914925130463/5000000000 : ℚ), (-215875032127/25000000000 : ℚ)⟩,
  ⟨(1963657933931/41656609037175 : ℚ), (314676338779/6630935866350 : ℚ), (163585899439/10000000000 : ℚ), (-195092387339/250000000000 : ℚ)⟩,
  ⟨(314676338779/6630935866350 : ℚ), (174486116769/3640124870500 : ℚ), (967724441/312500000 : ℚ), (-75508435899/500000000000 : ℚ)⟩,
  ⟨(174486116769/3640124870500 : ℚ), (9080207439/187223513200 : ℚ), (-5434066593/10000000000 : ℚ), (23469244971/1000000000000 : ℚ)⟩,
  ⟨(9080207439/187223513200 : ℚ), (9212714502/187767784175 : ℚ), (-20411947649/10000000000 : ℚ), (96110904483/1000000000000 : ℚ)⟩,
  ⟨(9212714502/187767784175 : ℚ), (1985499249/40076810350 : ℚ), (-3490332377/1250000000 : ℚ), (132961762491/1000000000000 : ℚ)⟩,
  ⟨(1985499249/40076810350 : ℚ), (360627425/7232731764 : ℚ), (-31930340051/10000000000 : ℚ), (152816754981/1000000000000 : ℚ)⟩,
  ⟨(360627425/7232731764 : ℚ), (273675906/5475062525 : ℚ), (-2108657687/625000000 : ℚ), (80916220303/500000000000 : ℚ)⟩,
  ⟨(273675906/5475062525 : ℚ), (1/20 : ℚ), (-33957525493/10000000000 : ℚ), (16292714423/100000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (6042474507/40000000000 : ℚ), (-1/5 : ℚ), (38627903353/200000000000 : ℚ)⟩,
  ⟨(6042474507/40000000000 : ℚ), (391342313/2500000000 : ℚ), (-1094703624/5475062525 : ℚ), (21148085403949116299/109501250500000000000 : ℚ)⟩,
  ⟨(391342313/2500000000 : ℚ), (8069659949/40000000000 : ℚ), (-360627425/1808182941 : ℚ), (174537083328229256123/904091470500000000000 : ℚ)⟩,
  ⟨(8069659949/40000000000 : ℚ), (1509667623/5000000000 : ℚ), (-3970998498/20038405175 : ℚ), (154532769690368853669/801536207000000000000 : ℚ)⟩,
  ⟨(1509667623/5000000000 : ℚ), (19588052351/40000000000 : ℚ), (-36850858008/187767784175 : ℚ), (1443697798633090935069/7510711367000000000000 : ℚ)⟩,
  ⟨(19588052351/40000000000 : ℚ), (34565933407/40000000000 : ℚ), (-9080207439/46805878300 : ℚ), (71561158122888107169/374447026400000000000 : ℚ)⟩,
  ⟨(34565933407/40000000000 : ℚ), (2217724441/1250000000 : ℚ), (-174486116769/910031217625 : ℚ), (181199613573453197751/957927597500000000000 : ℚ)⟩,
  ⟨(2217724441/1250000000 : ℚ), (203585899439/40000000000 : ℚ), (-629352677558/3315467933175 : ℚ), (492714444966932823971/2652374346540000000000 : ℚ)⟩,
  ⟨(203585899439/40000000000 : ℚ), (32/1 : ℚ), (-7854631735724/41656609037175 : ℚ), (583574800386544952747/3254422581029296875000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (887499/1000000 : ℚ)
  x := (28755923167/40000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(23549184209/500000000000 : ℚ), (914925130463/5000000000 : ℚ), (-215875032127/25000000000 : ℚ), 13⟩,
    ⟨(23658549687/500000000000 : ℚ), (163585899439/10000000000 : ℚ), (-195092387339/250000000000 : ℚ), 10⟩,
    ⟨(47721261481/1000000000000 : ℚ), (967724441/312500000 : ℚ), (-75508435899/500000000000 : ℚ), 8⟩,
    ⟨(24124662361/500000000000 : ℚ), (-5434066593/10000000000 : ℚ), (23469244971/1000000000000 : ℚ), 7⟩,
    ⟨(9764179251/200000000000 : ℚ), (-20411947649/10000000000 : ℚ), (96110904483/1000000000000 : ℚ), 7⟩,
    ⟨(6168619937/125000000000 : ℚ), (-3490332377/1250000000 : ℚ), (132961762491/1000000000000 : ℚ), 7⟩,
    ⟨(49753121603/1000000000000 : ℚ), (-31930340051/10000000000 : ℚ), (152816754981/1000000000000 : ℚ), 7⟩,
    ⟨(49971852559/1000000000000 : ℚ), (-2108657687/625000000 : ℚ), (80916220303/500000000000 : ℚ), 7⟩,
    ⟨(1/20 : ℚ), (-33957525493/10000000000 : ℚ), (16292714423/100000000000 : ℚ), 7⟩]
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
theorem certOK : JointInheritedControls.control889.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control889.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate889
