import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate509
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (71172699989151/472821803497300 : ℚ), (2643981853893/5000000000 : ℚ), (-79785904809623/1000000000000 : ℚ)⟩,
  ⟨(71172699989151/472821803497300 : ℚ), (711845352937/4685290762550 : ℚ), (559745672813/10000000000 : ℚ), (-1076650602559/125000000000 : ℚ)⟩,
  ⟨(711845352937/4685290762550 : ℚ), (392535456008/2545110925175 : ℚ), (184922411809/10000000000 : ℚ), (-182402624811/62500000000 : ℚ)⟩,
  ⟨(392535456008/2545110925175 : ℚ), (16185434707/102876694345 : ℚ), (41558987401/5000000000 : ℚ), (-84268760809/62500000000 : ℚ)⟩,
  ⟨(16185434707/102876694345 : ℚ), (32898687013/204207350250 : ℚ), (5245912133/1250000000 : ℚ), (-87610348083/125000000000 : ℚ)⟩,
  ⟨(32898687013/204207350250 : ℚ), (190394772269/1151021889700 : ℚ), (21546562039/10000000000 : ℚ), (-185947957267/500000000000 : ℚ)⟩,
  ⟨(190394772269/1151021889700 : ℚ), (120464312497/708234825900 : ℚ), (5018171571/5000000000 : ℚ), (-36300228453/200000000000 : ℚ)⟩,
  ⟨(120464312497/708234825900 : ℚ), (20315450239/116117536400 : ℚ), (2953994883/10000000000 : ℚ), (-7629603721/125000000000 : ℚ)⟩,
  ⟨(20315450239/116117536400 : ℚ), (28694004793/159569732600 : ℚ), (-1690706573/10000000000 : ℚ), (5056242797/250000000000 : ℚ)⟩,
  ⟨(28694004793/159569732600 : ℚ), (20880480819/113174065900 : ℚ), (-195284049/400000000 : ℚ), (38806490387/500000000000 : ℚ)⟩,
  ⟨(20880480819/113174065900 : ℚ), (30800828239/163132372400 : ℚ), (-7145582543/10000000000 : ℚ), (29843485603/250000000000 : ℚ)⟩,
  ⟨(30800828239/163132372400 : ℚ), (22560418267/117145053100 : ℚ), (-8776906267/10000000000 : ℚ), (150174770651/1000000000000 : ℚ)⟩,
  ⟨(22560418267/117145053100 : ℚ), (3979781867/20337846850 : ℚ), (-4974178399/5000000000 : ℚ), (86367594459/500000000000 : ℚ)⟩,
  ⟨(3979781867/20337846850 : ℚ), (10203418441/51536329100 : ℚ), (-672616917/625000000 : ℚ), (94327158193/500000000000 : ℚ)⟩,
  ⟨(10203418441/51536329100 : ℚ), (4991405791/25031896000 : ℚ), (-11277233963/10000000000 : ℚ), (198857734827/1000000000000 : ℚ)⟩,
  ⟨(4991405791/25031896000 : ℚ), (309523731/1548082700 : ℚ), (-11527552923/10000000000 : ℚ), (101924570309/500000000000 : ℚ)⟩,
  ⟨(309523731/1548082700 : ℚ), (1/5 : ℚ), (-11558514577/10000000000 : ℚ), (2555852351/12500000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3441485423/15000000000 : ℚ), (-3/10 : ℚ), (13664894827/50000000000 : ℚ)⟩,
  ⟨(3441485423/15000000000 : ℚ), (1157482359/5000000000 : ℚ), (-928571193/3096165400 : ℚ), (4230558054979015373/15480827000000000000 : ℚ)⟩,
  ⟨(1157482359/5000000000 : ℚ), (3722766037/15000000000 : ℚ), (-14974217373/50063792000 : ℚ), (68359697325470340187/250318960000000000000 : ℚ)⟩,
  ⟨(3722766037/15000000000 : ℚ), (88294361/312500000 : ℚ), (-30610255323/103072658200 : ℚ), (70234458147351161987/257681645500000000000 : ℚ)⟩,
  ⟨(88294361/312500000 : ℚ), (2525821601/7500000000 : ℚ), (-11939345601/40675693700 : ℚ), (55235056192074430217/203378468500000000000 : ℚ)⟩,
  ⟨(2525821601/7500000000 : ℚ), (6223093733/15000000000 : ℚ), (-67681254801/234290106200 : ℚ), (39539739044142948299/146431316375000000000 : ℚ)⟩,
  ⟨(6223093733/15000000000 : ℚ), (7854417457/15000000000 : ℚ), (-92402484717/326264744800 : ℚ), (436660107294565550511/1631323724000000000000 : ℚ)⟩,
  ⟨(7854417457/15000000000 : ℚ), (134905317/200000000 : ℚ), (-62641442457/226348131800 : ℚ), (299104357308092186791/1131740659000000000000 : ℚ)⟩,
  ⟨(134905317/200000000 : ℚ), (13309293427/15000000000 : ℚ), (-86082014379/319139465200 : ℚ), (414169861828900038899/1595697326000000000000 : ℚ)⟩,
  ⟨(13309293427/15000000000 : ℚ), (5984664961/5000000000 : ℚ), (-60946350717/232235072800 : ℚ), (58773805322716738297/232235072800000000000 : ℚ)⟩,
  ⟨(5984664961/5000000000 : ℚ), (4172723857/2500000000 : ℚ), (-120464312497/472156550600 : ℚ), (576843855037658926313/2360782753000000000000 : ℚ)⟩,
  ⟨(4172723857/2500000000 : ℚ), (36546562039/15000000000 : ℚ), (-571184316807/2302043779400 : ℚ), (2677670973443941547493/11510218897000000000000 : ℚ)⟩,
  ⟨(36546562039/15000000000 : ℚ), (7120912133/1875000000 : ℚ), (-32898687013/136138233500 : ℚ), (110723778291090516043/510518375625000000000 : ℚ)⟩,
  ⟨(7120912133/1875000000 : ℚ), (49058987401/7500000000 : ℚ), (-48556304121/205753388690 : ℚ), (502488567420342462493/2571917358625000000000 : ℚ)⟩,
  ⟨(49058987401/7500000000 : ℚ), (199922411809/15000000000 : ℚ), (-588803184012/2545110925175 : ℚ), (1049762243933340018941/6362777312937500000000 : ℚ)⟩,
  ⟨(199922411809/15000000000 : ℚ), (32/1 : ℚ), (-2135536058811/9370581525100 : ℚ), (1115269299899516658509/9370581525100000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (7571150213/20000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(150352066781/1000000000000 : ℚ), (2643981853893/5000000000 : ℚ), (-79785904809623/1000000000000 : ℚ), 11⟩,
    ⟨(151303735537/1000000000000 : ℚ), (559745672813/10000000000 : ℚ), (-1076650602559/125000000000 : ℚ), 7⟩,
    ⟨(153170500953/1000000000000 : ℚ), (184922411809/10000000000 : ℚ), (-182402624811/62500000000 : ℚ), 6⟩,
    ⟨(155880624281/1000000000000 : ℚ), (41558987401/5000000000 : ℚ), (-84268760809/62500000000 : ℚ), 5⟩,
    ⟨(159329957001/1000000000000 : ℚ), (5245912133/1250000000 : ℚ), (-87610348083/125000000000 : ℚ), 5⟩,
    ⟨(16338594319/100000000000 : ℚ), (21546562039/10000000000 : ℚ), (-185947957267/500000000000 : ℚ), 4⟩,
    ⟨(6715708543/40000000000 : ℚ), (5018171571/5000000000 : ℚ), (-36300228453/200000000000 : ℚ), 4⟩,
    ⟨(172677075497/1000000000000 : ℚ), (2953994883/10000000000 : ℚ), (-7629603721/125000000000 : ℚ), 3⟩,
    ⟨(17755516861/100000000000 : ℚ), (-1690706573/10000000000 : ℚ), (5056242797/250000000000 : ℚ), 3⟩,
    ⟨(45584882633/250000000000 : ℚ), (-195284049/400000000 : ℚ), (38806490387/500000000000 : ℚ), 3⟩,
    ⟨(186846300917/1000000000000 : ℚ), (-7145582543/10000000000 : ℚ), (29843485603/250000000000 : ℚ), 3⟩,
    ⟨(190902287107/1000000000000 : ℚ), (-8776906267/10000000000 : ℚ), (150174770651/1000000000000 : ℚ), 3⟩,
    ⟨(97175809913/500000000000 : ℚ), (-4974178399/5000000000 : ℚ), (86367594459/500000000000 : ℚ), 3⟩,
    ⟨(98530871577/500000000000 : ℚ), (-672616917/625000000 : ℚ), (94327158193/500000000000 : ℚ), 3⟩,
    ⟨(19892850857/100000000000 : ℚ), (-11277233963/10000000000 : ℚ), (198857734827/1000000000000 : ℚ), 3⟩,
    ⟨(99940088663/500000000000 : ℚ), (-11527552923/10000000000 : ℚ), (101924570309/500000000000 : ℚ), 3⟩,
    ⟨(1/5 : ℚ), (-11558514577/10000000000 : ℚ), (2555852351/12500000000 : ℚ), 3⟩]
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
theorem certOK : JointInheritedControls.control509.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control509.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate509
