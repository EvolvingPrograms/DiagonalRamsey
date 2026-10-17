import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate47
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (38529459323711/964337088609500 : ℚ), (10784353667409/10000000000 : ℚ), (-43164989558729/1000000000000 : ℚ)⟩,
  ⟨(38529459323711/964337088609500 : ℚ), (3083042219017/76617135367400 : ℚ), (570491390657/5000000000 : ℚ), (-2317765117509/500000000000 : ℚ)⟩,
  ⟨(3083042219017/76617135367400 : ℚ), (11809180436/290104994725 : ℚ), (9370285691/250000000 : ℚ), (-1552488016001/1000000000000 : ℚ)⟩,
  ⟨(11809180436/290104994725 : ℚ), (175409668187/4243545303900 : ℚ), (82967915719/5000000000 : ℚ), (-702227024609/1000000000000 : ℚ)⟩,
  ⟨(175409668187/4243545303900 : ℚ), (178500256381/4239659033700 : ℚ), (1013311567/125000000 : ℚ), (-70281537647/200000000000 : ℚ)⟩,
  ⟨(178500256381/4239659033700 : ℚ), (51760354853/1204354009000 : ℚ), (38668335023/10000000000 : ℚ), (-86453715927/500000000000 : ℚ)⟩,
  ⟨(51760354853/1204354009000 : ℚ), (16422943621/373864387250 : ℚ), (14581254843/10000000000 : ℚ), (-17346680537/250000000000 : ℚ)⟩,
  ⟨(16422943621/373864387250 : ℚ), (2117902337/47153085300 : ℚ), (-373320647/10000000000 : ℚ), (-230934229/62500000000 : ℚ)⟩,
  ⟨(2117902337/47153085300 : ℚ), (31536512299/687020163700 : ℚ), (-128443357/125000000 : ℚ), (40781001413/1000000000000 : ℚ)⟩,
  ⟨(31536512299/687020163700 : ℚ), (23041185337/491775449600 : ℚ), (-17145670197/10000000000 : ℚ), (4519844607/62500000000 : ℚ)⟩,
  ⟨(23041185337/491775449600 : ℚ), (17055214979/357341331300 : ℚ), (-22063424693/10000000000 : ℚ), (95358699049/1000000000000 : ℚ)⟩,
  ⟨(17055214979/357341331300 : ℚ), (3132171831/64587844550 : ℚ), (-12818419003/5000000000 : ℚ), (28103478507/250000000000 : ℚ)⟩,
  ⟨(3132171831/64587844550 : ℚ), (158202442/3220489925 : ℚ), (-7055087947/2500000000 : ℚ), (15617825169/125000000000 : ℚ)⟩,
  ⟨(158202442/3220489925 : ℚ), (5686293049/114663983000 : ℚ), (-15011913073/5000000000 : ℚ), (16725242263/125000000000 : ℚ)⟩,
  ⟨(5686293049/114663983000 : ℚ), (1391892131/27905619950 : ℚ), (-3896308247/1250000000 : ℚ), (139488231153/1000000000000 : ℚ)⟩,
  ⟨(1391892131/27905619950 : ℚ), (345344651/6908575000 : ℚ), (-253828627/80000000 : ℚ), (28454403083/200000000000 : ℚ)⟩,
  ⟨(345344651/6908575000 : ℚ), (1/20 : ℚ), (-254381313/80000000 : ℚ), (71308680033/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (65618687/320000000 : ℚ), (-1/5 : ℚ), (183629039441/1000000000000 : ℚ)⟩,
  ⟨(65618687/320000000 : ℚ), (66171373/320000000 : ℚ), (-345344651/1727143750 : ℚ), (101483680826530513/552686000000000000 : ℚ)⟩,
  ⟨(66171373/320000000 : ℚ), (1103691753/5000000000 : ℚ), (-2783784262/13952809975 : ℚ), (20485925835574419267/111622479800000000000 : ℚ)⟩,
  ⟨(1103691753/5000000000 : ℚ), (4988086927/20000000000 : ℚ), (-5686293049/28665995750 : ℚ), (105075039801428411583/573319915000000000000 : ℚ)⟩,
  ⟨(4988086927/20000000000 : ℚ), (2944912053/10000000000 : ℚ), (-632809768/3220489925 : ℚ), (588733300161340749/3220489925000000000 : ℚ)⟩,
  ⟨(2944912053/10000000000 : ℚ), (7181580997/20000000000 : ℚ), (-6264343662/32293922275 : ℚ), (14699201930833984311/80734805687500000000 : ℚ)⟩,
  ⟨(7181580997/20000000000 : ℚ), (17936575307/40000000000 : ℚ), (-17055214979/89335332825 : ℚ), (64666819253996496289/357341331300000000000 : ℚ)⟩,
  ⟨(17936575307/40000000000 : ℚ), (22854329803/40000000000 : ℚ), (-23041185337/122943862400 : ℚ), (882230626940575347763/4917754496000000000000 : ℚ)⟩,
  ⟨(22854329803/40000000000 : ℚ), (371556643/500000000 : ℚ), (-31536512299/171755040925 : ℚ), (1217581754005664093641/6870201637000000000000 : ℚ)⟩,
  ⟨(371556643/500000000 : ℚ), (39626679353/40000000000 : ℚ), (-2117902337/11788271325 : ℚ), (82183154985472070569/471530853000000000000 : ℚ)⟩,
  ⟨(39626679353/40000000000 : ℚ), (54581254843/40000000000 : ℚ), (-32845887242/186932193625 : ℚ), (636972627458541968373/3738643872500000000000 : ℚ)⟩,
  ⟨(54581254843/40000000000 : ℚ), (78668335023/40000000000 : ℚ), (-51760354853/301088502250 : ℚ), (1989483349092575889759/12043540090000000000000 : ℚ)⟩,
  ⟨(78668335023/40000000000 : ℚ), (1513311567/500000000 : ℚ), (-178500256381/1059914758425 : ℚ), (447442161075674609131/2826439355800000000000 : ℚ)⟩,
  ⟨(1513311567/500000000 : ℚ), (102967915719/20000000000 : ℚ), (-175409668187/1060886325975 : ℚ), (421587595656108415077/2829030202600000000000 : ℚ)⟩,
  ⟨(102967915719/20000000000 : ℚ), (10370285691/1000000000 : ℚ), (-47236721744/290104994725 : ℚ), (1578950875958237780371/11604199789000000000000 : ℚ)⟩,
  ⟨(10370285691/1000000000 : ℚ), (590491390657/20000000000 : ℚ), (-3083042219017/19154283841850 : ℚ), (44704649781343292646103/383085676837000000000000 : ℚ)⟩,
  ⟨(590491390657/20000000000 : ℚ), (32/1 : ℚ), (-38529459323711/241084272152375 : ℚ), (100061340581893998707693/1205421360761875000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (337499/1000000 : ℚ)
  x := (52803117119/200000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(19959352509/500000000000 : ℚ), (10784353667409/10000000000 : ℚ), (-43164989558729/1000000000000 : ℚ), 10⟩,
    ⟨(40111946767/1000000000000 : ℚ), (570491390657/5000000000 : ℚ), (-2317765117509/500000000000 : ℚ), 7⟩,
    ⟨(40491004093/1000000000000 : ℚ), (9370285691/250000000 : ℚ), (-1552488016001/1000000000000 : ℚ), 6⟩,
    ⟨(10260327509/250000000000 : ℚ), (82967915719/5000000000 : ℚ), (-702227024609/1000000000000 : ℚ), 5⟩,
    ⟨(41741716647/1000000000000 : ℚ), (1013311567/125000000 : ℚ), (-70281537647/200000000000 : ℚ), 4⟩,
    ⟨(10641326923/250000000000 : ℚ), (38668335023/10000000000 : ℚ), (-86453715927/500000000000 : ℚ), 4⟩,
    ⟨(4348043303/100000000000 : ℚ), (14581254843/10000000000 : ℚ), (-17346680537/250000000000 : ℚ), 3⟩,
    ⟨(11112981227/250000000000 : ℚ), (-373320647/10000000000 : ℚ), (-230934229/62500000000 : ℚ), 3⟩,
    ⟨(11360612359/250000000000 : ℚ), (-128443357/125000000 : ℚ), (40781001413/1000000000000 : ℚ), 3⟩,
    ⟨(46413941313/1000000000000 : ℚ), (-17145670197/10000000000 : ℚ), (4519844607/62500000000 : ℚ), 3⟩,
    ⟨(47329066651/1000000000000 : ℚ), (-22063424693/10000000000 : ℚ), (95358699049/1000000000000 : ℚ), 3⟩,
    ⟨(1504770553/31250000000 : ℚ), (-12818419003/5000000000 : ℚ), (28103478507/250000000000 : ℚ), 3⟩,
    ⟨(48853064307/1000000000000 : ℚ), (-7055087947/2500000000 : ℚ), (15617825169/125000000000 : ℚ), 2⟩,
    ⟨(197613481/4000000000 : ℚ), (-15011913073/5000000000 : ℚ), (16725242263/125000000000 : ℚ), 2⟩,
    ⟨(6222803447/125000000000 : ℚ), (-3896308247/1250000000 : ℚ), (139488231153/1000000000000 : ℚ), 2⟩,
    ⟨(1999026773/40000000000 : ℚ), (-253828627/80000000 : ℚ), (28454403083/200000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-254381313/80000000 : ℚ), (71308680033/500000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control47.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control47.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate47
