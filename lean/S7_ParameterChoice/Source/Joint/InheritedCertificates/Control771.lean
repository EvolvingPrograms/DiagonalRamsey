import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate771
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (107612618688387/511377762377800 : ℚ), (228854936409/400000000 : ℚ), (-60280170818411/500000000000 : ℚ)⟩,
  ⟨(107612618688387/511377762377800 : ℚ), (538110616012/2543534071975 : ℚ), (607595786447/10000000000 : ℚ), (-2589544589687/200000000000 : ℚ)⟩,
  ⟨(538110616012/2543534071975 : ℚ), (197752046679/926675142700 : ℚ), (200630334931/10000000000 : ℚ), (-4337953092243/1000000000000 : ℚ)⟩,
  ⟨(197752046679/926675142700 : ℚ), (244392965508/1132093295375 : ℚ), (89429317807/10000000000 : ℚ), (-392985706419/200000000000 : ℚ)⟩,
  ⟨(244392965508/1132093295375 : ℚ), (495857626111/2265255545600 : ℚ), (5518198249/1250000000 : ℚ), (-987356670063/1000000000000 : ℚ)⟩,
  ⟨(495857626111/2265255545600 : ℚ), (71530578218/321712301175 : ℚ), (2686628817/1250000000 : ℚ), (-30718690247/62500000000 : ℚ)⟩,
  ⟨(71530578218/321712301175 : ℚ), (180281107599/797409171400 : ℚ), (8624538489/10000000000 : ℚ), (-5134418277/25000000000 : ℚ)⟩,
  ⟨(180281107599/797409171400 : ℚ), (120987620099/526092979100 : ℚ), (26017871/400000000 : ℚ), (-25095623481/1000000000000 : ℚ)⟩,
  ⟨(120987620099/526092979100 : ℚ), (84960095683/363288092600 : ℚ), (-576310377/1250000000 : ℚ), (47945998309/500000000000 : ℚ)⟩,
  ⟨(84960095683/363288092600 : ℚ), (61483766697/258764827900 : ℚ), (-4121681971/5000000000 : ℚ), (180852092301/1000000000000 : ℚ)⟩,
  ⟨(61483766697/258764827900 : ℚ), (45130951317/187225463500 : ℚ), (-10831012221/10000000000 : ℚ), (121167929499/500000000000 : ℚ)⟩,
  ⟨(45130951317/187225463500 : ℚ), (16468488729/67474097050 : ℚ), (-1587908357/1250000000 : ℚ), (57493362063/200000000000 : ℚ)⟩,
  ⟨(16468488729/67474097050 : ℚ), (552044067/2239087400 : ℚ), (-14052748797/10000000000 : ℚ), (320403787773/1000000000000 : ℚ)⟩,
  ⟨(552044067/2239087400 : ℚ), (228330411/919245700 : ℚ), (-2998633101/2000000000 : ℚ), (343589638587/1000000000000 : ℚ)⟩,
  ⟨(228330411/919245700 : ℚ), (3628007291/14539845350 : ℚ), (-1559067521/1000000000 : ℚ), (179215557651/500000000000 : ℚ)⟩,
  ⟨(3628007291/14539845350 : ℚ), (899752449/3599700100 : ℚ), (-15881472117/10000000000 : ℚ), (91421782471/250000000000 : ℚ)⟩,
  ⟨(899752449/3599700100 : ℚ), (1/4 : ℚ), (-7958734559/5000000000 : ℚ), (366586882333/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (2041265441/10000000000 : ℚ), (-1/2 : ℚ), (468650154383/1000000000000 : ℚ)⟩,
  ⟨(2041265441/10000000000 : ℚ), (4118527883/20000000000 : ℚ), (-899752449/1799850050 : ℚ), (16869295529125513351/35997001000000000000 : ℚ)⟩,
  ⟨(4118527883/20000000000 : ℚ), (440932479/2000000000 : ℚ), (-3628007291/7269922675 : ℚ), (68112392337698029347/145398453500000000000 : ℚ)⟩,
  ⟨(440932479/2000000000 : ℚ), (1001366899/4000000000 : ℚ), (-228330411/459622850 : ℚ), (537705694551108213/1149057125000000000 : ℚ)⟩,
  ⟨(1001366899/4000000000 : ℚ), (5947251203/20000000000 : ℚ), (-552044067/1119543700 : ℚ), (10457265582722746203/22390874000000000000 : ℚ)⟩,
  ⟨(5947251203/20000000000 : ℚ), (912091643/2500000000 : ℚ), (-16468488729/33737048525 : ℚ), (628263604237934489367/1349481941000000000000 : ℚ)⟩,
  ⟨(912091643/2500000000 : ℚ), (9168987779/20000000000 : ℚ), (-45130951317/93612731750 : ℚ), (867519576315928910673/1872254635000000000000 : ℚ)⟩,
  ⟨(9168987779/20000000000 : ℚ), (5878318029/10000000000 : ℚ), (-61483766697/129382413950 : ℚ), (238164774785568312081/517529655800000000000 : ℚ)⟩,
  ⟨(5878318029/10000000000 : ℚ), (1923689623/2500000000 : ℚ), (-84960095683/181644046300 : ℚ), (82792952047269114417/181644046300000000000 : ℚ)⟩,
  ⟨(1923689623/2500000000 : ℚ), (826017871/800000000 : ℚ), (-120987620099/263046489550 : ℚ), (1183211048046703854127/2630464895500000000000 : ℚ)⟩,
  ⟨(826017871/800000000 : ℚ), (28624538489/20000000000 : ℚ), (-180281107599/398704585700 : ℚ), (3522770613753691606791/7974091714000000000000 : ℚ)⟩,
  ⟨(28624538489/20000000000 : ℚ), (5186628817/2500000000 : ℚ), (-143061156436/321712301175 : ℚ), (346701895426526650603/804280752937500000000 : ℚ)⟩,
  ⟨(5186628817/2500000000 : ℚ), (8018198249/2500000000 : ℚ), (-495857626111/1132627772800 : ℚ), (1180115784004816565423/2831569432000000000000 : ℚ)⟩,
  ⟨(8018198249/2500000000 : ℚ), (109429317807/20000000000 : ℚ), (-488785931016/1132093295375 : ℚ), (17995725286448884701399/45283731815000000000000 : ℚ)⟩,
  ⟨(109429317807/20000000000 : ℚ), (220630334931/20000000000 : ℚ), (-197752046679/463337571350 : ℚ), (857841821069158340847/2316687856750000000000 : ℚ)⟩,
  ⟨(220630334931/20000000000 : ℚ), (627595786447/20000000000 : ℚ), (-1076221232024/2543534071975 : ℚ), (33544842052641943013091/101741362879000000000000 : ℚ)⟩,
  ⟨(627595786447/20000000000 : ℚ), (32/1 : ℚ), (-107612618688387/255688881188900 : ℚ), (1325450164775554567003559/5113777623778000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (737499/1000000 : ℚ)
  x := (96698738767/250000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(13143514183/62500000000 : ℚ), (228854936409/400000000 : ℚ), (-60280170818411/500000000000 : ℚ), 12⟩,
    ⟨(211057282583/1000000000000 : ℚ), (607595786447/10000000000 : ℚ), (-2589544589687/200000000000 : ℚ), 9⟩,
    ⟨(212550146951/1000000000000 : ℚ), (200630334931/10000000000 : ℚ), (-4337953092243/1000000000000 : ℚ), 7⟩,
    ⟨(53679362523/250000000000 : ℚ), (89429317807/10000000000 : ℚ), (-392985706419/200000000000 : ℚ), 6⟩,
    ⟨(217475903761/1000000000000 : ℚ), (5518198249/1250000000 : ℚ), (-987356670063/1000000000000 : ℚ), 6⟩,
    ⟨(220719502131/1000000000000 : ℚ), (2686628817/1250000000 : ℚ), (-30718690247/62500000000 : ℚ), 5⟩,
    ⟨(44864719107/200000000000 : ℚ), (8624538489/10000000000 : ℚ), (-5134418277/25000000000 : ℚ), 5⟩,
    ⟨(114074840343/500000000000 : ℚ), (26017871/400000000 : ℚ), (-25095623481/1000000000000 : ℚ), 5⟩,
    ⟨(58012680819/250000000000 : ℚ), (-576310377/1250000000 : ℚ), (47945998309/500000000000 : ℚ), 4⟩,
    ⟨(117938404213/500000000000 : ℚ), (-4121681971/5000000000 : ℚ), (180852092301/1000000000000 : ℚ), 4⟩,
    ⟨(23948090183/100000000000 : ℚ), (-10831012221/10000000000 : ℚ), (121167929499/500000000000 : ℚ), 4⟩,
    ⟨(1213622501/5000000000 : ℚ), (-1587908357/1250000000 : ℚ), (57493362063/200000000000 : ℚ), 4⟩,
    ⟨(245482953869/1000000000000 : ℚ), (-14052748797/10000000000 : ℚ), (320403787773/1000000000000 : ℚ), 4⟩,
    ⟨(24765025701/100000000000 : ℚ), (-2998633101/2000000000 : ℚ), (343589638587/1000000000000 : ℚ), 4⟩,
    ⟨(124571560689/500000000000 : ℚ), (-1559067521/1000000000 : ℚ), (179215557651/500000000000 : ℚ), 4⟩,
    ⟨(249904177033/1000000000000 : ℚ), (-15881472117/10000000000 : ℚ), (91421782471/250000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-7958734559/5000000000 : ℚ), (366586882333/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control771.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control771.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate771
