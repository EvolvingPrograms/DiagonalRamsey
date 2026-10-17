import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate26
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (38757355605659/984099064125800 : ℚ), (11004813653849/10000000000 : ℚ), (-21711856591641/500000000000 : ℚ)⟩,
  ⟨(38757355605659/984099064125800 : ℚ), (775323056734/19536917158675 : ℚ), (1163823012591/10000000000 : ℚ), (-4666357577623/1000000000000 : ℚ)⟩,
  ⟨(775323056734/19536917158675 : ℚ), (213828688338/5321965556275 : ℚ), (95586581561/2500000000 : ℚ), (-1565065350687/1000000000000 : ℚ)⟩,
  ⟨(213828688338/5321965556275 : ℚ), (88232684776/2160272907675 : ℚ), (169467703993/10000000000 : ℚ), (-141950119467/200000000000 : ℚ)⟩,
  ⟨(88232684776/2160272907675 : ℚ), (179604626983/4311850736700 : ℚ), (41528393843/5000000000 : ℚ), (-356819858231/1000000000000 : ℚ)⟩,
  ⟨(179604626983/4311850736700 : ℚ), (8682705499/203921677000 : ℚ), (39938280319/10000000000 : ℚ), (-11075951953/62500000000 : ℚ)⟩,
  ⟨(8682705499/203921677000 : ℚ), (66147450283/1517754256400 : ℚ), (15467679079/10000000000 : ℚ), (-3651138263/50000000000 : ℚ)⟩,
  ⟨(66147450283/1517754256400 : ℚ), (44809195891/1004093847100 : ℚ), (58027303/2000000000 : ℚ), (-6875314977/1000000000000 : ℚ)⟩,
  ⟨(44809195891/1004093847100 : ℚ), (31791127843/696097541500 : ℚ), (-2437700489/2500000000 : ℚ), (18966940457/500000000000 : ℚ)⟩,
  ⟨(31791127843/696097541500 : ℚ), (11619376663/248946436450 : ℚ), (-16711777371/10000000000 : ℚ), (69725008757/1000000000000 : ℚ)⟩,
  ⟨(11619376663/248946436450 : ℚ), (17207175301/361503337500 : ℚ), (-216907061/100000000 : ℚ), (92963762083/1000000000000 : ℚ)⟩,
  ⟨(17207175301/361503337500 : ℚ), (3160507781/65287357150 : ℚ), (-1012229579/400000000 : ℚ), (13771367173/125000000000 : ℚ)⟩,
  ⟨(3160507781/65287357150 : ℚ), (4469601021/91078992350 : ℚ), (-27917233761/10000000000 : ℚ), (30703242127/250000000000 : ℚ)⟩,
  ⟨(4469601021/91078992350 : ℚ), (5736850321/115737757600 : ℚ), (-3717351701/1250000000 : ℚ), (2635043411/20000000000 : ℚ)⟩,
  ⟨(5736850321/115737757600 : ℚ), (2808191821/56308374900 : ℚ), (-1931011949/625000000 : ℚ), (137489020871/1000000000000 : ℚ)⟩,
  ⟨(2808191821/56308374900 : ℚ), (87088221/1742212675 : ℚ), (-31459274933/10000000000 : ℚ), (35074303173/250000000000 : ℚ)⟩,
  ⟨(87088221/1742212675 : ℚ), (1/20 : ℚ), (-394112043/125000000 : ℚ), (17580695697/125000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (105887957/500000000 : ℚ), (-1/5 : ℚ), (22875093547/125000000000 : ℚ)⟩,
  ⟨(105887957/500000000 : ℚ), (8540725067/40000000000 : ℚ), (-348352884/1742212675 : ℚ), (227719455309062037/1244437625000000000 : ℚ)⟩,
  ⟨(8540725067/40000000000 : ℚ), (568988051/2500000000 : ℚ), (-2808191821/14077093725 : ℚ), (20596614955084163863/112616749800000000000 : ℚ)⟩,
  ⟨(568988051/2500000000 : ℚ), (1282648299/5000000000 : ℚ), (-5736850321/28934439400 : ℚ), (26419237278835452329/144672197000000000000 : ℚ)⟩,
  ⟨(1282648299/5000000000 : ℚ), (12082766239/40000000000 : ℚ), (-8939202042/45539496175 : ℚ), (165861958510547959157/910789923500000000000 : ℚ)⟩,
  ⟨(12082766239/40000000000 : ℚ), (587770421/1600000000 : ℚ), (-6321015562/32643678575 : ℚ), (118369018090698591981/652873571500000000000 : ℚ)⟩,
  ⟨(587770421/1600000000 : ℚ), (183092939/400000000 : ℚ), (-17207175301/90375834375 : ℚ), (26044733294817379361/144601335000000000000 : ℚ)⟩,
  ⟨(183092939/400000000 : ℚ), (23288222629/40000000000 : ℚ), (-23238753326/124473218225 : ℚ), (888345110306306093907/4978928729000000000000 : ℚ)⟩,
  ⟨(23288222629/40000000000 : ℚ), (7562299511/10000000000 : ℚ), (-31791127843/174024385375 : ℚ), (612856467301460634201/3480487707500000000000 : ℚ)⟩,
  ⟨(7562299511/10000000000 : ℚ), (8058027303/8000000000 : ℚ), (-44809195891/251023461775 : ℚ), (868167002461482639849/5020469235500000000000 : ℚ)⟩,
  ⟨(8058027303/8000000000 : ℚ), (55467679079/40000000000 : ℚ), (-66147450283/379438564100 : ℚ), (2560739416316921202717/15177542564000000000000 : ℚ)⟩,
  ⟨(55467679079/40000000000 : ℚ), (79938280319/40000000000 : ℚ), (-8682705499/50980419250 : ℚ), (332700274646035145221/2039216770000000000000 : ℚ)⟩,
  ⟨(79938280319/40000000000 : ℚ), (61528393843/20000000000 : ℚ), (-179604626983/1077962684175 : ℚ), (6716028764244988643561/43118507367000000000000 : ℚ)⟩,
  ⟨(61528393843/20000000000 : ℚ), (209467703993/40000000000 : ℚ), (-352930739104/2160272907675 : ℚ), (12597392123509439800427/86410916307000000000000 : ℚ)⟩,
  ⟨(209467703993/40000000000 : ℚ), (105586581561/10000000000 : ℚ), (-855314753352/5321965556275 : ℚ), (28070088273483468233451/212878622251000000000000 : ℚ)⟩,
  ⟨(105586581561/10000000000 : ℚ), (1203823012591/40000000000 : ℚ), (-3101292226936/19536917158675 : ℚ), (17351458896822176107599/156295337269400000000000 : ℚ)⟩,
  ⟨(1203823012591/40000000000 : ℚ), (32/1 : ℚ), (-38757355605659/246024766031450 : ℚ), (147083067022760901296547/1968198128251600000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (274999/1000000 : ℚ)
  x := (26699316799/125000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(39345927037/1000000000000 : ℚ), (11004813653849/10000000000 : ℚ), (-21711856591641/500000000000 : ℚ), 10⟩,
    ⟨(4943768499/125000000000 : ℚ), (1163823012591/10000000000 : ℚ), (-4666357577623/1000000000000 : ℚ), 7⟩,
    ⟨(39950741807/1000000000000 : ℚ), (95586581561/2500000000 : ℚ), (-1565065350687/1000000000000 : ℚ), 5⟩,
    ⟨(10133078471/250000000000 : ℚ), (169467703993/10000000000 : ℚ), (-141950119467/200000000000 : ℚ), 4⟩,
    ⟨(2579532171/62500000000 : ℚ), (41528393843/5000000000 : ℚ), (-356819858231/1000000000000 : ℚ), 4⟩,
    ⟨(42142898859/1000000000000 : ℚ), (39938280319/10000000000 : ℚ), (-11075951953/62500000000 : ℚ), 3⟩,
    ⟨(43110017879/1000000000000 : ℚ), (15467679079/10000000000 : ℚ), (-3651138263/50000000000 : ℚ), 3⟩,
    ⟨(22068352977/500000000000 : ℚ), (58027303/2000000000 : ℚ), (-6875314977/1000000000000 : ℚ), 3⟩,
    ⟨(22591754019/500000000000 : ℚ), (-2437700489/2500000000 : ℚ), (18966940457/500000000000 : ℚ), 3⟩,
    ⟨(46210196113/1000000000000 : ℚ), (-16711777371/10000000000 : ℚ), (69725008757/1000000000000 : ℚ), 2⟩,
    ⟨(47177315133/1000000000000 : ℚ), (-216907061/100000000 : ℚ), (92963762083/1000000000000 : ℚ), 2⟩,
    ⟨(6005962407/125000000000 : ℚ), (-1012229579/400000000 : ℚ), (13771367173/125000000000 : ℚ), 2⟩,
    ⟨(12196975027/250000000000 : ℚ), (-27917233761/10000000000 : ℚ), (30703242127/250000000000 : ℚ), 2⟩,
    ⟨(24684736093/500000000000 : ℚ), (-3717351701/1250000000 : ℚ), (2635043411/20000000000 : ℚ), 2⟩,
    ⟨(24885033/500000000 : ℚ), (-1931011949/625000000 : ℚ), (137489020871/1000000000000 : ℚ), 2⟩,
    ⟨(12493571739/250000000000 : ℚ), (-31459274933/10000000000 : ℚ), (35074303173/250000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-394112043/125000000 : ℚ), (17580695697/125000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control26.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control26.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate26
