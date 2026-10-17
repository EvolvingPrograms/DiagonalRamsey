import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate424
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1858451520683/43968243241900 : ℚ), (2421037224503/10000000000 : ℚ), (-10263302552523/1000000000000 : ℚ)⟩,
  ⟨(1858451520683/43968243241900 : ℚ), (74540218069/1728554612890 : ℚ), (27828132801/1250000000 : ℚ), (-242761237277/250000000000 : ℚ)⟩,
  ⟨(74540218069/1728554612890 : ℚ), (17295483513/389406382550 : ℚ), (49769601119/10000000000 : ℚ), (-112821384209/500000000000 : ℚ)⟩,
  ⟨(17295483513/389406382550 : ℚ), (7255195737/157919243725 : ℚ), (3040835213/10000000000 : ℚ), (-9048483131/500000000000 : ℚ)⟩,
  ⟨(7255195737/157919243725 : ℚ), (1710843331/36040709150 : ℚ), (-7954737017/5000000000 : ℚ), (34482691291/500000000000 : ℚ)⟩,
  ⟨(1710843331/36040709150 : ℚ), (12006703193/246232097700 : ℚ), (-25280058413/10000000000 : ℚ), (28361827297/250000000000 : ℚ)⟩,
  ⟨(12006703193/246232097700 : ℚ), (2174744071/43825884960 : ℚ), (-30204700367/10000000000 : ℚ), (68730357787/500000000000 : ℚ)⟩,
  ⟨(2174744071/43825884960 : ℚ), (1317228971/26364683800 : ℚ), (-6479198923/2000000000 : ℚ), (148334435929/1000000000000 : ℚ)⟩,
  ⟨(1317228971/26364683800 : ℚ), (1/20 : ℚ), (-32659641453/10000000000 : ℚ), (1496516649/10000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (7340358547/40000000000 : ℚ), (-1/5 : ℚ), (37270691527/200000000000 : ℚ)⟩,
  ⟨(7340358547/40000000000 : ℚ), (1520801077/8000000000 : ℚ), (-1317228971/6591170950 : ℚ), (49124121187956451337/263646838000000000000 : ℚ)⟩,
  ⟨(1520801077/8000000000 : ℚ), (9795299633/40000000000 : ℚ), (-2174744071/10956471240 : ℚ), (407728224365946348067/2191294248000000000000 : ℚ)⟩,
  ⟨(9795299633/40000000000 : ℚ), (14719941587/40000000000 : ℚ), (-12006703193/61558024425 : ℚ), (456081658851223623967/2462320977000000000000 : ℚ)⟩,
  ⟨(14719941587/40000000000 : ℚ), (12045262983/20000000000 : ℚ), (-3421686662/18020354575 : ℚ), (66070728639776812999/360407091500000000000 : ℚ)⟩,
  ⟨(12045262983/20000000000 : ℚ), (43040835213/40000000000 : ℚ), (-29020782948/157919243725 : ℚ), (567382183792316569843/3158384874500000000000 : ℚ)⟩,
  ⟨(43040835213/40000000000 : ℚ), (89769601119/40000000000 : ℚ), (-34590967026/194703191275 : ℚ), (168485328535010796997/973515956375000000000 : ℚ)⟩,
  ⟨(89769601119/40000000000 : ℚ), (32828132801/5000000000 : ℚ), (-149080436138/864277306445 : ℚ), (6977717903088418355327/43213865322250000000000 : ℚ)⟩,
  ⟨(32828132801/5000000000 : ℚ), (32/1 : ℚ), (-1858451520683/10992060810475 : ℚ), (15281135347406468363103/109920608104750000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (109405909053/250000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(21079007321/500000000000 : ℚ), (2421037224503/10000000000 : ℚ), (-10263302552523/1000000000000 : ℚ), 9⟩,
    ⟨(21374579813/500000000000 : ℚ), (27828132801/1250000000 : ℚ), (-242761237277/250000000000 : ℚ), 6⟩,
    ⟨(43841453129/1000000000000 : ℚ), (49769601119/10000000000 : ℚ), (-112821384209/500000000000 : ℚ), 5⟩,
    ⟨(45268603367/1000000000000 : ℚ), (3040835213/10000000000 : ℚ), (-9048483131/500000000000 : ℚ), 4⟩,
    ⟨(46813339653/1000000000000 : ℚ), (-7954737017/5000000000 : ℚ), (34482691291/500000000000 : ℚ), 4⟩,
    ⟨(48240489891/1000000000000 : ℚ), (-25280058413/10000000000 : ℚ), (28361827297/250000000000 : ℚ), 3⟩,
    ⟨(24666391697/500000000000 : ℚ), (-30204700367/10000000000 : ℚ), (68730357787/500000000000 : ℚ), 3⟩,
    ⟨(24961964189/500000000000 : ℚ), (-6479198923/2000000000 : ℚ), (148334435929/1000000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-32659641453/10000000000 : ℚ), (1496516649/10000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control424.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control424.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate424
