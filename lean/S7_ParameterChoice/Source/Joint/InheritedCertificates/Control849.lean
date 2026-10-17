import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate849
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (1524295002807/9763393625648 : ℚ), (2730317087137/10000000000 : ℚ), (-42712664624999/1000000000000 : ℚ)⟩,
  ⟨(1524295002807/9763393625648 : ℚ), (381120116647/2421821448150 : ℚ), (11578747229/400000000 : ℚ), (-575661194353/125000000000 : ℚ)⟩,
  ⟨(381120116647/2421821448150 : ℚ), (16809616201/105449889054 : ℚ), (95722964873/10000000000 : ℚ), (-97270538853/62500000000 : ℚ)⟩,
  ⟨(16809616201/105449889054 : ℚ), (346374167257/2136059144600 : ℚ), (21499010173/5000000000 : ℚ), (-357923905799/500000000000 : ℚ)⟩,
  ⟨(346374167257/2136059144600 : ℚ), (175830471001/1062390899700 : ℚ), (216374289/100000000 : ℚ), (-369473644341/1000000000000 : ℚ)⟩,
  ⟨(175830471001/1062390899700 : ℚ), (20318123127/119993868160 : ℚ), (11013519903/10000000000 : ℚ), (-9682158667/50000000000 : ℚ)⟩,
  ⟨(20318123127/119993868160 : ℚ), (2565247217/14787470336 : ℚ), (1002765299/2000000000 : ℚ), (-18410511541/200000000000 : ℚ)⟩,
  ⟨(2565247217/14787470336 : ℚ), (10785806453/60666350675 : ℚ), (1316958911/10000000000 : ℚ), (-2726697/97656250 : ℚ)⟩,
  ⟨(10785806453/60666350675 : ℚ), (1012707277/5561155540 : ℚ), (-277423779/2500000000 : ℚ), (3805462133/250000000000 : ℚ)⟩,
  ⟨(1012707277/5561155540 : ℚ), (4410138889/23678295180 : ℚ), (-1389020889/5000000000 : ℚ), (22801533421/500000000000 : ℚ)⟩,
  ⟨(4410138889/23678295180 : ℚ), (4057632889/21347544025 : ℚ), (-3961956537/10000000000 : ℚ), (67653761287/1000000000000 : ℚ)⟩,
  ⟨(4057632889/21347544025 : ℚ), (11872848349/61382399200 : ℚ), (-2407929149/5000000000 : ℚ), (83884292843/1000000000000 : ℚ)⟩,
  ⟨(11872848349/61382399200 : ℚ), (837263211/4268004850 : ℚ), (-542968229/1000000000 : ℚ), (11969642649/125000000000 : ℚ)⟩,
  ⟨(837263211/4268004850 : ℚ), (2682869103/13535280400 : ℚ), (-234259311/400000000 : ℚ), (52064886651/500000000000 : ℚ)⟩,
  ⟨(2682869103/13535280400 : ℚ), (437506547/2193350250 : ℚ), (-6127188383/10000000000 : ℚ), (27373877877/250000000000 : ℚ)⟩,
  ⟨(437506547/2193350250 : ℚ), (325583233/1628349000 : ℚ), (-3129394699/5000000000 : ℚ), (11212055079/100000000000 : ℚ)⟩,
  ⟨(325583233/1628349000 : ℚ), (1/5 : ℚ), (-784384111/1250000000 : ℚ), (112446134023/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (215615889/1000000000 : ℚ), (-4/25 : ℚ), (146944676263/1000000000000 : ℚ)⟩,
  ⟨(215615889/1000000000 : ℚ), (870605301/4000000000 : ℚ), (-325583233/2035436250 : ℚ), (398770474119415561/2713915000000000000 : ℚ)⟩,
  ⟨(870605301/4000000000 : ℚ), (1872811617/8000000000 : ℚ), (-875013094/5483375625 : ℚ), (1073662473044884423/7311167500000000000 : ℚ)⟩,
  ⟨(1872811617/8000000000 : ℚ), (85740689/320000000 : ℚ), (-2682869103/16919100500 : ℚ), (19845032931010837983/135352804000000000000 : ℚ)⟩,
  ⟨(85740689/320000000 : ℚ), (257031771/800000000 : ℚ), (-1674526422/10670012125 : ℚ), (3119475944730337311/21340024250000000000 : ℚ)⟩,
  ⟨(257031771/800000000 : ℚ), (1592070851/4000000000 : ℚ), (-11872848349/76727999000 : ℚ), (44647511524280019627/306911996000000000000 : ℚ)⟩,
  ⟨(1592070851/4000000000 : ℚ), (4038043463/8000000000 : ℚ), (-16230531556/106737720125 : ℚ), (24661851550392788967/170780352200000000000 : ℚ)⟩,
  ⟨(4038043463/8000000000 : ℚ), (2610979111/4000000000 : ℚ), (-4410138889/29597868975 : ℚ), (42284487261946199467/295978689750000000000 : ℚ)⟩,
  ⟨(2610979111/4000000000 : ℚ), (1722576221/2000000000 : ℚ), (-1012707277/6951444425 : ℚ), (4890232856064479713/34757222125000000000 : ℚ)⟩,
  ⟨(1722576221/2000000000 : ℚ), (9316958911/8000000000 : ℚ), (-43143225812/303331753375 : ℚ), (83552034890625076043/606663506750000000000 : ℚ)⟩,
  ⟨(9316958911/8000000000 : ℚ), (2602765299/1600000000 : ℚ), (-2565247217/18484337920 : ℚ), (98857187673317285131/739373516800000000000 : ℚ)⟩,
  ⟨(2602765299/1600000000 : ℚ), (19013519903/8000000000 : ℚ), (-20318123127/149992335200 : ℚ), (153959104348379228137/1199938681600000000000 : ℚ)⟩,
  ⟨(19013519903/8000000000 : ℚ), (296374289/80000000 : ℚ), (-175830471001/1327988624625 : ℚ), (1285908708476921292923/10623908997000000000000 : ℚ)⟩,
  ⟨(296374289/80000000 : ℚ), (25499010173/4000000000 : ℚ), (-346374167257/2670073930750 : ℚ), (1186732094021617310107/10680295723000000000000 : ℚ)⟩,
  ⟨(25499010173/4000000000 : ℚ), (103722964873/8000000000 : ℚ), (-33619232402/263624722635 : ℚ), (2559910647536782026577/26362472263500000000000 : ℚ)⟩,
  ⟨(103722964873/8000000000 : ℚ), (32/1 : ℚ), (-762240233294/6054553620375 : ℚ), (1839408108601915545319/24218214481500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (812499/1000000 : ℚ)
  x := (5264788667/8000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(155967827367/1000000000000 : ℚ), (2730317087137/10000000000 : ℚ), (-42712664624999/1000000000000 : ℚ), 12⟩,
    ⟨(78405925641/500000000000 : ℚ), (11578747229/400000000 : ℚ), (-575661194353/125000000000 : ℚ), 9⟩,
    ⟨(79233731873/500000000000 : ℚ), (95722964873/10000000000 : ℚ), (-97270538853/62500000000 : ℚ), 8⟩,
    ⟨(160871040501/1000000000000 : ℚ), (21499010173/5000000000 : ℚ), (-357923905799/500000000000 : ℚ), 7⟩,
    ⟨(512281917/3125000000 : ℚ), (216374289/100000000 : ℚ), (-369473644341/1000000000000 : ℚ), 6⟩,
    ⟨(83763710131/500000000000 : ℚ), (11013519903/10000000000 : ℚ), (-9682158667/50000000000 : ℚ), 6⟩,
    ⟨(21440552791/125000000000 : ℚ), (1002765299/2000000000 : ℚ), (-18410511541/200000000000 : ℚ), 5⟩,
    ⟨(2746369017/15625000000 : ℚ), (1316958911/10000000000 : ℚ), (-2726697/97656250 : ℚ), 5⟩,
    ⟨(45023485237/250000000000 : ℚ), (-277423779/2500000000 : ℚ), (3805462133/250000000000 : ℚ), 5⟩,
    ⟨(46084283927/250000000000 : ℚ), (-1389020889/5000000000 : ℚ), (22801533421/500000000000 : ℚ), 5⟩,
    ⟨(188334137773/1000000000000 : ℚ), (-3961956537/10000000000 : ℚ), (67653761287/1000000000000 : ℚ), 4⟩,
    ⟨(47982836149/250000000000 : ℚ), (-2407929149/5000000000 : ℚ), (83884292843/1000000000000 : ℚ), 4⟩,
    ⟨(38998103507/200000000000 : ℚ), (-542968229/1000000000 : ℚ), (11969642649/125000000000 : ℚ), 4⟩,
    ⟨(19739409429/100000000000 : ℚ), (-234259311/400000000 : ℚ), (52064886651/500000000000 : ℚ), 4⟩,
    ⟨(99524853377/500000000000 : ℚ), (-6127188383/10000000000 : ℚ), (27373877877/250000000000 : ℚ), 4⟩,
    ⟨(199893730669/1000000000000 : ℚ), (-3129394699/5000000000 : ℚ), (11212055079/100000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-784384111/1250000000 : ℚ), (112446134023/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control849.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control849.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate849
