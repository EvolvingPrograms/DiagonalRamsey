import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate701
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (7981940354833/42964077721650 : ℚ), (480512957563/1250000000 : ℚ), (-8949261689553/125000000000 : ℚ)⟩,
  ⟨(7981940354833/42964077721650 : ℚ), (1277282053207/6808371620475 : ℚ), (101744360693/2500000000 : ℚ), (-3022879171/390625000 : ℚ)⟩,
  ⟨(1277282053207/6808371620475 : ℚ), (56338736361/295603321004 : ℚ), (134642577953/10000000000 : ℚ), (-657360616233/250000000000 : ℚ)⟩,
  ⟨(56338736361/295603321004 : ℚ), (7740427055/39774209492 : ℚ), (30370873851/5000000000 : ℚ), (-1220974055907/1000000000000 : ℚ)⟩,
  ⟨(7740427055/39774209492 : ℚ), (17339595937/86910867800 : ℚ), (30911090583/10000000000 : ℚ), (-320221013391/500000000000 : ℚ)⟩,
  ⟨(17339595937/86910867800 : ℚ), (42594343529/207672432125 : ℚ), (16136243057/10000000000 : ℚ), (-345668895853/1000000000000 : ℚ)⟩,
  ⟨(42594343529/207672432125 : ℚ), (35867169083/169846150500 : ℚ), (1957336443/2500000000 : ℚ), (-175291521737/1000000000000 : ℚ)⟩,
  ⟨(35867169083/169846150500 : ℚ), (18103642304/83239241875 : ℚ), (2733961257/10000000000 : ℚ), (-8461251811/125000000000 : ℚ)⟩,
  ⟨(18103642304/83239241875 : ℚ), (51001961779/227886188900 : ℚ), (-297804209/5000000000 : ℚ), (590569341/125000000000 : ℚ)⟩,
  ⟨(51001961779/227886188900 : ℚ), (6168266643/26832938500 : ℚ), (-2874470307/10000000000 : ℚ), (55726516507/1000000000000 : ℚ)⟩,
  ⟨(6168266643/26832938500 : ℚ), (6805969067/28903558100 : ℚ), (-4484446617/10000000000 : ℚ), (18547223273/200000000000 : ℚ)⟩,
  ⟨(6805969067/28903558100 : ℚ), (1808609277/7524138400 : ℚ), (-5640588941/10000000000 : ℚ), (119959992633/1000000000000 : ℚ)⟩,
  ⟨(1808609277/7524138400 : ℚ), (3503223447/14334187925 : ℚ), (-1293648833/2000000000 : ℚ), (3496367367/25000000000 : ℚ)⟩,
  ⟨(3503223447/14334187925 : ℚ), (4485149509/18130306900 : ℚ), (-3520805841/5000000000 : ℚ), (38466897117/250000000000 : ℚ)⟩,
  ⟨(4485149509/18130306900 : ℚ), (2192476707/8797232200 : ℚ), (-370210891/500000000 : ℚ), (81418943743/500000000000 : ℚ)⟩,
  ⟨(2192476707/8797232200 : ℚ), (108737381/435084960 : ℚ), (-236880077/312500000 : ℚ), (1672228409/10000000000 : ℚ)⟩,
  ⟨(108737381/435084960 : ℚ), (1/4 : ℚ), (-950239589/1250000000 : ℚ), (33553305561/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (299760411/1250000000 : ℚ), (-1/4 : ℚ), (45543722001/200000000000 : ℚ)⟩,
  ⟨(299760411/1250000000 : ℚ), (75619923/312500000 : ℚ), (-108737381/435084960 : ℚ), (2579917256642609/11330337500000000 : ℚ)⟩,
  ⟨(75619923/312500000 : ℚ), (129789109/500000000 : ℚ), (-2192476707/8797232200 : ℚ), (2502052379726730469/10996540250000000000 : ℚ)⟩,
  ⟨(129789109/500000000 : ℚ), (1479194159/5000000000 : ℚ), (-4485149509/18130306900 : ℚ), (20582739960393222077/90651534500000000000 : ℚ)⟩,
  ⟨(1479194159/5000000000 : ℚ), (706351167/2000000000 : ℚ), (-3503223447/14334187925 : ℚ), (6483912921523448127/28668375850000000000 : ℚ)⟩,
  ⟨(706351167/2000000000 : ℚ), (4359411059/10000000000 : ℚ), (-1808609277/7524138400 : ℚ), (3382085430780103683/15048276800000000000 : ℚ)⟩,
  ⟨(4359411059/10000000000 : ℚ), (5515553383/10000000000 : ℚ), (-6805969067/28903558100 : ℚ), (32171361492663293363/144517790500000000000 : ℚ)⟩,
  ⟨(5515553383/10000000000 : ℚ), (7125529693/10000000000 : ℚ), (-6168266643/26832938500 : ℚ), (29452614510776794397/134164692500000000000 : ℚ)⟩,
  ⟨(7125529693/10000000000 : ℚ), (4702195791/5000000000 : ℚ), (-51001961779/227886188900 : ℚ), (49040902773204730557/227886188900000000000 : ℚ)⟩,
  ⟨(4702195791/5000000000 : ℚ), (12733961257/10000000000 : ℚ), (-18103642304/83239241875 : ℚ), (87093212412416676639/416196209375000000000 : ℚ)⟩,
  ⟨(12733961257/10000000000 : ℚ), (4457336443/2500000000 : ℚ), (-35867169083/169846150500 : ℚ), (341762257620429932891/1698461505000000000000 : ℚ)⟩,
  ⟨(4457336443/2500000000 : ℚ), (26136243057/10000000000 : ℚ), (-42594343529/207672432125 : ℚ), (1581588448838963053507/8306897285000000000000 : ℚ)⟩,
  ⟨(26136243057/10000000000 : ℚ), (40911090583/10000000000 : ℚ), (-17339595937/86910867800 : ℚ), (6110722272763245883/34764347120000000000 : ℚ)⟩,
  ⟨(40911090583/10000000000 : ℚ), (35370873851/5000000000 : ℚ), (-7740427055/39774209492 : ℚ), (1548463974778137422939/9943552373000000000000 : ℚ)⟩,
  ⟨(35370873851/5000000000 : ℚ), (144642577953/10000000000 : ℚ), (-56338736361/295603321004 : ℚ), (9406520391025698967893/73900830251000000000000 : ℚ)⟩,
  ⟨(144642577953/10000000000 : ℚ), (32/1 : ℚ), (-1277282053207/6808371620475 : ℚ), (477262865817733261537/5673643017062500000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (674999/1000000 : ℚ)
  x := (93937816891/200000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(1159712339/6250000000 : ℚ), (480512957563/1250000000 : ℚ), (-8949261689553/125000000000 : ℚ), 11⟩,
    ⟨(5837165561/31250000000 : ℚ), (101744360693/2500000000 : ℚ), (-3022879171/390625000 : ℚ), 8⟩,
    ⟨(9460623629/50000000000 : ℚ), (134642577953/10000000000 : ℚ), (-657360616233/250000000000 : ℚ), 6⟩,
    ⟨(192730376881/1000000000000 : ℚ), (30370873851/5000000000 : ℚ), (-1220974055907/1000000000000 : ℚ), 6⟩,
    ⟨(39441563953/200000000000 : ℚ), (30911090583/10000000000 : ℚ), (-320221013391/500000000000 : ℚ), 5⟩,
    ⟨(202472735613/1000000000000 : ℚ), (16136243057/10000000000 : ℚ), (-345668895853/1000000000000 : ℚ), 4⟩,
    ⟨(208322796663/1000000000000 : ℚ), (1957336443/2500000000 : ℚ), (-175291521737/1000000000000 : ℚ), 4⟩,
    ⟨(214533188349/1000000000000 : ℚ), (2733961257/10000000000 : ℚ), (-8461251811/125000000000 : ℚ), 4⟩,
    ⟨(276081561/1250000000 : ℚ), (-297804209/5000000000 : ℚ), (590569341/125000000000 : ℚ), 4⟩,
    ⟨(113537820243/500000000000 : ℚ), (-2874470307/10000000000 : ℚ), (55726516507/1000000000000 : ℚ), 4⟩,
    ⟨(46585140307/200000000000 : ℚ), (-4484446617/10000000000 : ℚ), (18547223273/200000000000 : ℚ), 3⟩,
    ⟨(29773827173/125000000000 : ℚ), (-5640588941/10000000000 : ℚ), (119959992633/1000000000000 : ℚ), 3⟩,
    ⟨(60667015067/250000000000 : ℚ), (-1293648833/2000000000 : ℚ), (3496367367/25000000000 : ℚ), 3⟩,
    ⟨(246185964569/1000000000000 : ℚ), (-3520805841/5000000000 : ℚ), (38466897117/250000000000 : ℚ), 3⟩,
    ⟨(62152284799/250000000000 : ℚ), (-370210891/500000000 : ℚ), (81418943743/500000000000 : ℚ), 3⟩,
    ⟨(249844462909/1000000000000 : ℚ), (-236880077/312500000 : ℚ), (1672228409/10000000000 : ℚ), 3⟩,
    ⟨(1/4 : ℚ), (-950239589/1250000000 : ℚ), (33553305561/200000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control701.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control701.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate701
