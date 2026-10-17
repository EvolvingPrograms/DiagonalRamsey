import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate877
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (5242240338523/56259006608600 : ℚ), (185322005629/1000000000 : ℚ), (-4322122853887/250000000000 : ℚ)⟩,
  ⟨(5242240338523/56259006608600 : ℚ), (26252277439/279472428400 : ℚ), (10340616127/625000000 : ℚ), (-1561770399979/1000000000000 : ℚ)⟩,
  ⟨(26252277439/279472428400 : ℚ), (17469034863/183739134065 : ℚ), (78257731/25000000 : ℚ), (-301661082907/1000000000000 : ℚ)⟩,
  ⟨(17469034863/183739134065 : ℚ), (24247807089/251474683400 : ℚ), (-5444734413/10000000000 : ℚ), (47719614353/1000000000000 : ℚ)⟩,
  ⟨(24247807089/251474683400 : ℚ), (73842435707/755269760900 : ℚ), (-20533215417/10000000000 : ℚ), (193206456887/1000000000000 : ℚ)⟩,
  ⟨(73842435707/755269760900 : ℚ), (7962546733/80503767240 : ℚ), (-14042956513/5000000000 : ℚ), (133524446297/500000000000 : ℚ)⟩,
  ⟨(7962546733/80503767240 : ℚ), (6029350159/60494717700 : ℚ), (-8027775347/2500000000 : ℚ), (306861626259/1000000000000 : ℚ)⟩,
  ⟨(6029350159/60494717700 : ℚ), (87872003/879015560 : ℚ), (-33925942919/10000000000 : ℚ), (5077338699/15625000000 : ℚ)⟩,
  ⟨(87872003/879015560 : ℚ), (1/10 : ℚ), (-34145696809/10000000000 : ℚ), (327146476811/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (5854303191/40000000000 : ℚ), (-2/5 : ℚ), (385689508721/1000000000000 : ℚ)⟩,
  ⟨(5854303191/40000000000 : ℚ), (6074057081/40000000000 : ℚ), (-87872003/219753890 : ℚ), (16950488913614716823/43950778000000000000 : ℚ)⟩,
  ⟨(6074057081/40000000000 : ℚ), (1972224653/10000000000 : ℚ), (-6029350159/15123679425 : ℚ), (233200006635608200151/604947177000000000000 : ℚ)⟩,
  ⟨(1972224653/10000000000 : ℚ), (5957043487/20000000000 : ℚ), (-7962546733/20125941810 : ℚ), (774627233055932285369/2012594181000000000000 : ℚ)⟩,
  ⟨(5957043487/20000000000 : ℚ), (19466784583/40000000000 : ℚ), (-73842435707/188817440225 : ℚ), (724176183491500697091/1888174402250000000000 : ℚ)⟩,
  ⟨(19466784583/40000000000 : ℚ), (34555265587/40000000000 : ℚ), (-24247807089/62868670850 : ℚ), (191578432595328810929/502949366800000000000 : ℚ)⟩,
  ⟨(34555265587/40000000000 : ℚ), (178257731/100000000 : ℚ), (-69876139452/183739134065 : ℚ), (13826534908617736238609/36747826813000000000000 : ℚ)⟩,
  ⟨(178257731/100000000 : ℚ), (12840616127/2500000000 : ℚ), (-26252277439/69868107100 : ℚ), (257202252501380537503/698681071000000000000 : ℚ)⟩,
  ⟨(12840616127/2500000000 : ℚ), (32/1 : ℚ), (-5242240338523/14064751652150 : ℚ), (99190510391914853777271/281295033043000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (862499/1000000 : ℚ)
  x := (558038124927/1000000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(93083228179/1000000000000 : ℚ), (185322005629/1000000000 : ℚ), (-4322122853887/250000000000 : ℚ), 12⟩,
    ⟨(11700578583/125000000000 : ℚ), (10340616127/625000000 : ℚ), (-1561770399979/1000000000000 : ℚ), 9⟩,
    ⟨(1477625799/15625000000 : ℚ), (78257731/25000000 : ℚ), (-301661082907/1000000000000 : ℚ), 8⟩,
    ⟨(47913411629/500000000000 : ℚ), (-5444734413/10000000000 : ℚ), (47719614353/1000000000000 : ℚ), 7⟩,
    ⟨(19437861677/200000000000 : ℚ), (-20533215417/10000000000 : ℚ), (193206456887/1000000000000 : ℚ), 6⟩,
    ⟨(98448080507/1000000000000 : ℚ), (-14042956513/5000000000 : ℚ), (133524446297/500000000000 : ℚ), 6⟩,
    ⟨(99411502979/1000000000000 : ℚ), (-8027775347/2500000000 : ℚ), (306861626259/1000000000000 : ℚ), 6⟩,
    ⟨(12491612933/125000000000 : ℚ), (-33925942919/10000000000 : ℚ), (5077338699/15625000000 : ℚ), 6⟩,
    ⟨(1/10 : ℚ), (-34145696809/10000000000 : ℚ), (327146476811/1000000000000 : ℚ), 6⟩]
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
theorem certOK : JointInheritedControls.control877.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control877.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate877
