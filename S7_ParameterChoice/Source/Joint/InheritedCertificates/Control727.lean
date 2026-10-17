import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate727
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (586747108053/2738557435055 : ℚ), (1531166620287/5000000000 : ℚ), (-6580113269051/100000000000 : ℚ)⟩,
  ⟨(586747108053/2738557435055 : ℚ), (4694534781083/21664983104300 : ℚ), (323775805519/10000000000 : ℚ), (-712642188521/100000000000 : ℚ)⟩,
  ⟨(4694534781083/21664983104300 : ℚ), (258816673701/1172857684000 : ℚ), (26781493619/2500000000 : ℚ), (-2431887104127/1000000000000 : ℚ)⟩,
  ⟨(258816673701/1172857684000 : ℚ), (5991971673/26508570100 : ℚ), (12120772569/2500000000 : ℚ), (-568901867811/500000000000 : ℚ)⟩,
  ⟨(5991971673/26508570100 : ℚ), (67669905227/290950566325 : ℚ), (24890462887/10000000000 : ℚ), (-24180730269/40000000000 : ℚ)⟩,
  ⟨(67669905227/290950566325 : ℚ), (39087267467/162829704750 : ℚ), (6626220117/5000000000 : ℚ), (-333838635817/1000000000000 : ℚ)⟩,
  ⟨(39087267467/162829704750 : ℚ), (98644399147/397510219200 : ℚ), (1684813011/2500000000 : ℚ), (-177489565949/1000000000000 : ℚ)⟩,
  ⟨(98644399147/397510219200 : ℚ), (94710405/369115973 : ℚ), (691037463/2500000000 : ℚ), (-39422583401/500000000000 : ℚ)⟩,
  ⟨(94710405/369115973 : ℚ), (1864625425/7035805128 : ℚ), (180338041/10000000000 : ℚ), (-6273941651/500000000000 : ℚ)⟩,
  ⟨(1864625425/7035805128 : ℚ), (16881224317/61807118350 : ℚ), (-1578613241/10000000000 : ℚ), (34067752323/1000000000000 : ℚ)⟩,
  ⟨(16881224317/61807118350 : ℚ), (2478598583/8833251030 : ℚ), (-351844451/1250000000 : ℚ), (67830200957/1000000000000 : ℚ)⟩,
  ⟨(2478598583/8833251030 : ℚ), (4519649797/15739929450 : ℚ), (-3698080711/10000000000 : ℚ), (92616186787/1000000000000 : ℚ)⟩,
  ⟨(4519649797/15739929450 : ℚ), (12712513033/43459108700 : ℚ), (-4327677889/10000000000 : ℚ), (4427791439/40000000000 : ℚ)⟩,
  ⟨(12712513033/43459108700 : ℚ), (812738999/2741048710 : ℚ), (-297641811/625000000 : ℚ), (1928239047/15625000000 : ℚ)⟩,
  ⟨(812738999/2741048710 : ℚ), (1984845999/6639102500 : ℚ), (-5036373847/10000000000 : ℚ), (65767344499/500000000000 : ℚ)⟩,
  ⟨(1984845999/6639102500 : ℚ), (492045653/1640720500 : ℚ), (-5169155897/10000000000 : ℚ), (33876095249/250000000000 : ℚ)⟩,
  ⟨(492045653/1640720500 : ℚ), (3/10 : ℚ), (-2592781551/5000000000 : ℚ), (135996426649/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (907218449/3500000000 : ℚ), (-21/100 : ℚ), (190429533589/1000000000000 : ℚ)⟩,
  ⟨(907218449/3500000000 : ℚ), (1830844103/7000000000 : ℚ), (-3444319571/16407205000 : ℚ), (3124107039601310439/16407205000000000000 : ℚ)⟩,
  ⟨(1830844103/7000000000 : ℚ), (1963626153/7000000000 : ℚ), (-13893921993/66391025000 : ℚ), (12630218338947254797/66391025000000000000 : ℚ)⟩,
  ⟨(1963626153/7000000000 : ℚ), (139858189/437500000 : ℚ), (-5689172993/27410487100 : ℚ), (1625420453119259929/8565777218750000000 : ℚ)⟩,
  ⟨(139858189/437500000 : ℚ), (2672322111/7000000000 : ℚ), (-12712513033/62084441000 : ℚ), (5129931064160573593/27161942937500000000 : ℚ)⟩,
  ⟨(2672322111/7000000000 : ℚ), (3301919289/7000000000 : ℚ), (-4519649797/22485613500 : ℚ), (2185277133614315267/11659207000000000000 : ℚ)⟩,
  ⟨(3301919289/7000000000 : ℚ), (74736507/125000000 : ℚ), (-17350190081/88332510300 : ℚ), (54550509147350562977/294441701000000000000 : ℚ)⟩,
  ⟨(74736507/125000000 : ℚ), (5421386759/7000000000 : ℚ), (-118168570219/618071183500 : ℚ), (225151883970708205747/1236142367000000000000 : ℚ)⟩,
  ⟨(5421386759/7000000000 : ℚ), (7180338041/7000000000 : ℚ), (-2610475595/14071610256 : ℚ), (312644906363143017461/1758951282000000000000 : ℚ)⟩,
  ⟨(7180338041/7000000000 : ℚ), (2441037463/1750000000 : ℚ), (-132594567/738231946 : ℚ), (31686824117946738827/184557986500000000000 : ℚ)⟩,
  ⟨(2441037463/1750000000 : ℚ), (490687573/250000000 : ℚ), (-690510794029/3975102192000 : ℚ), (32488054997428657313/198755109600000000000 : ℚ)⟩,
  ⟨(490687573/250000000 : ℚ), (10126220117/3500000000 : ℚ), (-273610872269/1628297047500 : ℚ), (496048166487082433941/3256594095000000000000 : ℚ)⟩,
  ⟨(10126220117/3500000000 : ℚ), (31890462887/7000000000 : ℚ), (-473689336589/2909505663250 : ℚ), (1596701238916183649971/11638022653000000000000 : ℚ)⟩,
  ⟨(31890462887/7000000000 : ℚ), (13870772569/1750000000 : ℚ), (-41943801711/265085701000 : ℚ), (15418802203258605363/132542850500000000000 : ℚ)⟩,
  ⟨(13870772569/1750000000 : ℚ), (28531493619/1750000000 : ℚ), (-1811716715907/11728576840000 : ℚ), (253782582451236459249/2932144210000000000000 : ℚ)⟩,
  ⟨(28531493619/1750000000 : ℚ), (32/1 : ℚ), (-32861743467581/216649831043000 : ℚ), (8900426377807607623047/216649831043000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (503296291887/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(213950065073/1000000000000 : ℚ), (1531166620287/5000000000 : ℚ), (-6580113269051/100000000000 : ℚ), 11⟩,
    ⟨(53899874997/250000000000 : ℚ), (323775805519/10000000000 : ℚ), (-712642188521/100000000000 : ℚ), 8⟩,
    ⟨(218834982961/1000000000000 : ℚ), (26781493619/2500000000 : ℚ), (-2431887104127/1000000000000 : ℚ), 6⟩,
    ⟨(44706435239/200000000000 : ℚ), (12120772569/2500000000 : ℚ), (-568901867811/500000000000 : ℚ), 5⟩,
    ⟨(57377642297/250000000000 : ℚ), (24890462887/10000000000 : ℚ), (-24180730269/40000000000 : ℚ), 5⟩,
    ⟨(4730808313/20000000000 : ℚ), (6626220117/5000000000 : ℚ), (-333838635817/1000000000000 : ℚ), 4⟩,
    ⟨(61087890631/250000000000 : ℚ), (1684813011/2500000000 : ℚ), (-177489565949/1000000000000 : ℚ), 4⟩,
    ⟨(31580478977/125000000000 : ℚ), (691037463/2500000000 : ℚ), (-39422583401/500000000000 : ℚ), 4⟩,
    ⟨(65274639067/250000000000 : ℚ), (180338041/10000000000 : ℚ), (-6273941651/500000000000 : ℚ), 4⟩,
    ⟨(6734770639/25000000000 : ℚ), (-1578613241/10000000000 : ℚ), (34067752323/1000000000000 : ℚ), 4⟩,
    ⟨(138600986217/500000000000 : ℚ), (-351844451/1250000000 : ℚ), (67830200957/1000000000000 : ℚ), 3⟩,
    ⟨(17764488681/62500000000 : ℚ), (-3698080711/10000000000 : ℚ), (92616186787/1000000000000 : ℚ), 3⟩,
    ⟨(290210211889/1000000000000 : ℚ), (-4327677889/10000000000 : ℚ), (4427791439/40000000000 : ℚ), 3⟩,
    ⟨(147453702561/500000000000 : ℚ), (-297641811/625000000 : ℚ), (1928239047/15625000000 : ℚ), 3⟩,
    ⟨(59628577619/200000000000 : ℚ), (-5036373847/10000000000 : ℚ), (65767344499/500000000000 : ℚ), 3⟩,
    ⟨(299792323011/1000000000000 : ℚ), (-5169155897/10000000000 : ℚ), (33876095249/250000000000 : ℚ), 3⟩,
    ⟨(3/10 : ℚ), (-2592781551/5000000000 : ℚ), (135996426649/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control727.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control727.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate727
