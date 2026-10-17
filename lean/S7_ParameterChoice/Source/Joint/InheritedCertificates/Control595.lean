import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate595
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (60437182307/507616198588 : ℚ), (3051833744623/5000000000 : ℚ), (-72805506582309/1000000000000 : ℚ)⟩,
  ⟨(60437182307/507616198588 : ℚ), (519845379873/4334238639040 : ℚ), (25871734177/400000000 : ℚ), (-1958883900571/250000000000 : ℚ)⟩,
  ⟨(519845379873/4334238639040 : ℚ), (143328900059/1180853052190 : ℚ), (213369490521/10000000000 : ℚ), (-1318540901777/500000000000 : ℚ)⟩,
  ⟨(143328900059/1180853052190 : ℚ), (295486907211/2396201533400 : ℚ), (47642092651/5000000000 : ℚ), (-300948200741/250000000000 : ℚ)⟩,
  ⟨(295486907211/2396201533400 : ℚ), (300289021141/2389384363400 : ℚ), (23680077317/5000000000 : ℚ), (-306409494271/500000000000 : ℚ)⟩,
  ⟨(300289021141/2389384363400 : ℚ), (2896207213/22561138175 : ℚ), (23466311/10000000 : ℚ), (-312529967401/1000000000000 : ℚ)⟩,
  ⟨(2896207213/22561138175 : ℚ), (109937977487/837324987100 : ℚ), (1985925619/2000000000 : ℚ), (-138757534621/1000000000000 : ℚ)⟩,
  ⟨(109937977487/837324987100 : ℚ), (1853966111/13800637635 : ℚ), (97273639/625000000 : ℚ), (-14409778567/500000000000 : ℚ)⟩,
  ⟨(1853966111/13800637635 : ℚ), (13094178387/95312392075 : ℚ), (-396387683/1000000000 : ℚ), (22669543653/500000000000 : ℚ)⟩,
  ⟨(13094178387/95312392075 : ℚ), (7625098603/54345844420 : ℚ), (-7776372513/10000000000 : ℚ), (48857900427/500000000000 : ℚ)⟩,
  ⟨(7625098603/54345844420 : ℚ), (2164165907/15133801100 : ℚ), (-5246832367/5000000000 : ℚ), (135841293869/1000000000000 : ℚ)⟩,
  ⟨(2164165907/15133801100 : ℚ), (20621846569/141863818700 : ℚ), (-12461058877/10000000000 : ℚ), (8198772533/50000000000 : ℚ)⟩,
  ⟨(20621846569/141863818700 : ℚ), (3640702856/24716076825 : ℚ), (-1734962133/1250000000 : ℚ), (184597297229/1000000000000 : ℚ)⟩,
  ⟨(3640702856/24716076825 : ℚ), (4670455119/31400118100 : ℚ), (-14868340137/10000000000 : ℚ), (199160108653/1000000000000 : ℚ)⟩,
  ⟨(4670455119/31400118100 : ℚ), (1142956808/7638759575 : ℚ), (-15496342499/10000000000 : ℚ), (208501018891/1000000000000 : ℚ)⟩,
  ⟨(1142956808/7638759575 : ℚ), (28356439/189090185 : ℚ), (-7900946441/5000000000 : ℚ), (213072846123/1000000000000 : ℚ)⟩,
  ⟨(28356439/189090185 : ℚ), (3/20 : ℚ), (-15839710919/10000000000 : ℚ), (213639974903/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (4160289081/20000000000 : ℚ), (-3/10 : ℚ), (138022155559/500000000000 : ℚ)⟩,
  ⟨(4160289081/20000000000 : ℚ), (2099053559/10000000000 : ℚ), (-56712878/189090185 : ℚ), (10438864146515576591/37818037000000000000 : ℚ)⟩,
  ⟨(2099053559/10000000000 : ℚ), (4503657501/20000000000 : ℚ), (-2285913616/7638759575 : ℚ), (16859502036941630497/61110076600000000000 : ℚ)⟩,
  ⟨(4503657501/20000000000 : ℚ), (5131659863/20000000000 : ℚ), (-4670455119/15700059050 : ℚ), (8650369640124550789/31400118100000000000 : ℚ)⟩,
  ⟨(5131659863/20000000000 : ℚ), (765037867/2500000000 : ℚ), (-7281405712/24716076825 : ℚ), (24693605155881316871/89876643000000000000 : ℚ)⟩,
  ⟨(765037867/2500000000 : ℚ), (7538941123/20000000000 : ℚ), (-20621846569/70931909350 : ℚ), (388088723168040910407/1418638187000000000000 : ℚ)⟩,
  ⟨(7538941123/20000000000 : ℚ), (4753167633/10000000000 : ℚ), (-2164165907/7566900550 : ℚ), (41131237908989930821/151338011000000000000 : ℚ)⟩,
  ⟨(4753167633/10000000000 : ℚ), (12223627487/20000000000 : ℚ), (-7625098603/27172922210 : ℚ), (731554209902939860039/2717292221000000000000 : ℚ)⟩,
  ⟨(12223627487/20000000000 : ℚ), (1603612317/2000000000 : ℚ), (-26188356774/95312392075 : ℚ), (506387252160410403579/1906247841500000000000 : ℚ)⟩,
  ⟨(1603612317/2000000000 : ℚ), (1347273639/1250000000 : ℚ), (-3707932222/13800637635 : ℚ), (119958373517064118277/460021254500000000000 : ℚ)⟩,
  ⟨(1347273639/1250000000 : ℚ), (5985925619/4000000000 : ℚ), (-109937977487/418662493550 : ℚ), (1064275635418413206687/4186624935500000000000 : ℚ)⟩,
  ⟨(5985925619/4000000000 : ℚ), (43466311/20000000 : ℚ), (-5792414426/22561138175 : ℚ), (221508502628316706673/902445527000000000000 : ℚ)⟩,
  ⟨(43466311/20000000 : ℚ), (33680077317/10000000000 : ℚ), (-300289021141/1194692181700 : ℚ), (2792456905390834737883/11946921817000000000000 : ℚ)⟩,
  ⟨(33680077317/10000000000 : ℚ), (57642092651/10000000000 : ℚ), (-295486907211/1198100766700 : ℚ), (2609832880822797681373/11981007667000000000000 : ℚ)⟩,
  ⟨(57642092651/10000000000 : ℚ), (233369490521/20000000000 : ℚ), (-143328900059/590426526095 : ℚ), (2885664272112059932383/14760663152375000000000 : ℚ)⟩,
  ⟨(233369490521/20000000000 : ℚ), (32/1 : ℚ), (-519845379873/2167119319520 : ℚ), (35093164889636708661757/216711931952000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (612499/1000000 : ℚ)
  x := (418000047951/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(11895101383/100000000000 : ℚ), (3051833744623/5000000000 : ℚ), (-72805506582309/1000000000000 : ℚ), 11⟩,
    ⟨(7471635721/62500000000 : ℚ), (25871734177/400000000 : ℚ), (-1958883900571/250000000000 : ℚ), 8⟩,
    ⟨(30178403843/250000000000 : ℚ), (213369490521/10000000000 : ℚ), (-1318540901777/500000000000 : ℚ), 6⟩,
    ⟨(979267849/8000000000 : ℚ), (47642092651/5000000000 : ℚ), (-300948200741/250000000000 : ℚ), 6⟩,
    ⟨(24913127211/200000000000 : ℚ), (23680077317/5000000000 : ℚ), (-306409494271/500000000000 : ℚ), 5⟩,
    ⟨(127102181907/1000000000000 : ℚ), (23466311/10000000 : ℚ), (-312529967401/1000000000000 : ℚ), 4⟩,
    ⟨(16240080081/125000000000 : ℚ), (1985925619/2000000000 : ℚ), (-138757534621/1000000000000 : ℚ), 4⟩,
    ⟨(132912700489/1000000000000 : ℚ), (97273639/625000000 : ℚ), (-14409778567/500000000000 : ℚ), 4⟩,
    ⟨(135963378247/1000000000000 : ℚ), (-396387683/1000000000 : ℚ), (22669543653/500000000000 : ℚ), 4⟩,
    ⟨(138955438087/1000000000000 : ℚ), (-7776372513/10000000000 : ℚ), (48857900427/500000000000 : ℚ), 4⟩,
    ⟨(141773896829/1000000000000 : ℚ), (-5246832367/5000000000 : ℚ), (135841293869/1000000000000 : ℚ), 3⟩,
    ⟨(144310442681/1000000000000 : ℚ), (-12461058877/10000000000 : ℚ), (8198772533/50000000000 : ℚ), 3⟩,
    ⟨(146467597611/1000000000000 : ℚ), (-1734962133/1250000000 : ℚ), (184597297229/1000000000000 : ℚ), 3⟩,
    ⟨(37040615841/250000000000 : ℚ), (-14868340137/10000000000 : ℚ), (199160108653/1000000000000 : ℚ), 3⟩,
    ⟨(11666399/78125000 : ℚ), (-15496342499/10000000000 : ℚ), (208501018891/1000000000000 : ℚ), 3⟩,
    ⟨(74962532453/500000000000 : ℚ), (-7900946441/5000000000 : ℚ), (213072846123/1000000000000 : ℚ), 3⟩,
    ⟨(3/20 : ℚ), (-15839710919/10000000000 : ℚ), (213639974903/1000000000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control595.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control595.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate595
