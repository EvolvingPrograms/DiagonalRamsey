import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate720
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (110088543486303/531387299844200 : ℚ), (5945158972961/10000000000 : ℚ), (-123349255082601/1000000000000 : ℚ)⟩,
  ⟨(110088543486303/531387299844200 : ℚ), (1100992023433/5283370963000 : ℚ), (631285974519/10000000000 : ℚ), (-6630355798149/500000000000 : ℚ)⟩,
  ⟨(1100992023433/5283370963000 : ℚ), (16859267797/80137529900 : ℚ), (208616297479/10000000000 : ℚ), (-2226387704417/500000000000 : ℚ)⟩,
  ⟨(16859267797/80137529900 : ℚ), (500102929313/2347228400800 : ℚ), (93218254423/10000000000 : ℚ), (-1012520423033/500000000000 : ℚ)⟩,
  ⟨(500102929313/2347228400800 : ℚ), (507431262131/2345634046800 : ℚ), (46273686407/10000000000 : ℚ), (-12810437343/12500000000 : ℚ)⟩,
  ⟨(507431262131/2345634046800 : ℚ), (8614243481/39144840150 : ℚ), (22817345939/10000000000 : ℚ), (-517403725309/1000000000000 : ℚ)⟩,
  ⟨(8614243481/39144840150 : ℚ), (184611652139/823755948300 : ℚ), (148564067/156250000 : ℚ), (-44903889391/200000000000 : ℚ)⟩,
  ⟨(184611652139/823755948300 : ℚ), (123947212607/542863978200 : ℚ), (254108161/2000000000 : ℚ), (-311779647/7812500000 : ℚ)⟩,
  ⟨(123947212607/542863978200 : ℚ), (43537160879/187230522250 : ℚ), (-4158098977/10000000000 : ℚ), (84039417791/1000000000000 : ℚ)⟩,
  ⟨(43537160879/187230522250 : ℚ), (3151687507/13321775950 : ℚ), (-3951354711/5000000000 : ℚ), (171113739549/1000000000000 : ℚ)⟩,
  ⟨(3151687507/13321775950 : ℚ), (3856343363/16047194925 : ℚ), (-2641766153/2500000000 : ℚ), (234147489689/1000000000000 : ℚ)⟩,
  ⟨(3856343363/16047194925 : ℚ), (8443079666/34662196175 : ℚ), (-12492728003/10000000000 : ℚ), (56084722009/200000000000 : ℚ)⟩,
  ⟨(8443079666/34662196175 : ℚ), (2971293461/12065494375 : ℚ), (-277584317/200000000 : ℚ), (314195928709/1000000000000 : ℚ)⟩,
  ⟨(2971293461/12065494375 : ℚ), (1690273993/6808597100 : ℚ), (-74222277/50000000 : ℚ), (337966276397/1000000000000 : ℚ)⟩,
  ⟨(1690273993/6808597100 : ℚ), (2478700487/9935378800 : ℚ), (-15457229139/10000000000 : ℚ), (176589371167/500000000000 : ℚ)⟩,
  ⟨(2478700487/9935378800 : ℚ), (7683446/30740165 : ℚ), (-15755290503/10000000000 : ℚ), (72122968759/200000000000 : ℚ)⟩,
  ⟨(7683446/30740165 : ℚ), (1/4 : ℚ), (-15792178701/10000000000 : ℚ), (72307371463/200000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (4207821299/20000000000 : ℚ), (-1/2 : ℚ), (46673238979/100000000000 : ℚ)⟩,
  ⟨(4207821299/20000000000 : ℚ), (4244709497/20000000000 : ℚ), (-15366892/30740165 : ℚ), (114774075362369539/245921320000000000 : ℚ)⟩,
  ⟨(4244709497/20000000000 : ℚ), (4542770861/20000000000 : ℚ), (-2478700487/4967689400 : ℚ), (46349814237448970499/99353788000000000000 : ℚ)⟩,
  ⟨(4542770861/20000000000 : ℚ), (25777723/100000000 : ℚ), (-1690273993/3404298550 : ℚ), (31725045050875714287/68085971000000000000 : ℚ)⟩,
  ⟨(25777723/100000000 : ℚ), (122415683/400000000 : ℚ), (-5942586922/12065494375 : ℚ), (8975350084152135723/19304791000000000000 : ℚ)⟩,
  ⟨(122415683/400000000 : ℚ), (7507271997/20000000000 : ℚ), (-16886159332/34662196175 : ℚ), (642341909519267275123/1386487847000000000000 : ℚ)⟩,
  ⟨(7507271997/20000000000 : ℚ), (2358233847/5000000000 : ℚ), (-7712686726/16047194925 : ℚ), (98600989146012981503/213962599000000000000 : ℚ)⟩,
  ⟨(2358233847/5000000000 : ℚ), (6048645289/10000000000 : ℚ), (-3151687507/6660887975 : ℚ), (121844537171231459023/266435519000000000000 : ℚ)⟩,
  ⟨(6048645289/10000000000 : ℚ), (15841901023/20000000000 : ℚ), (-43537160879/93615261125 : ℚ), (1694117668586988785429/3744610445000000000000 : ℚ)⟩,
  ⟨(15841901023/20000000000 : ℚ), (4254108161/4000000000 : ℚ), (-123947212607/271431989100 : ℚ), (2419779200873172958523/5428639782000000000000 : ℚ)⟩,
  ⟨(4254108161/4000000000 : ℚ), (461064067/312500000 : ℚ), (-184611652139/411877974150 : ℚ), (3598046846268905991767/8237559483000000000000 : ℚ)⟩,
  ⟨(461064067/312500000 : ℚ), (42817345939/20000000000 : ℚ), (-8614243481/19572420075 : ℚ), (332604363852798860191/782896803000000000000 : ℚ)⟩,
  ⟨(42817345939/20000000000 : ℚ), (66273686407/20000000000 : ℚ), (-507431262131/1172817023400 : ℚ), (9590461950666964831397/23456340468000000000000 : ℚ)⟩,
  ⟨(66273686407/20000000000 : ℚ), (113218254423/20000000000 : ℚ), (-500102929313/1173614200400 : ℚ), (9088446821985057088871/23472284008000000000000 : ℚ)⟩,
  ⟨(113218254423/20000000000 : ℚ), (228616297479/20000000000 : ℚ), (-16859267797/40068764950 : ℚ), (285959157322882992397/801375299000000000000 : ℚ)⟩,
  ⟨(228616297479/20000000000 : ℚ), (32/1 : ℚ), (-1100992023433/2641685481500 : ℚ), (16448076953224773953987/52833709630000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (363427039907/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(207019963101/1000000000000 : ℚ), (5945158972961/10000000000 : ℚ), (-123349255082601/1000000000000 : ℚ), 12⟩,
    ⟨(103921909657/500000000000 : ℚ), (631285974519/10000000000 : ℚ), (-6630355798149/500000000000 : ℚ), 8⟩,
    ⟨(13091241963/62500000000 : ℚ), (208616297479/10000000000 : ℚ), (-2226387704417/500000000000 : ℚ), 7⟩,
    ⟨(13237875963/62500000000 : ℚ), (93218254423/10000000000 : ℚ), (-1012520423033/500000000000 : ℚ), 6⟩,
    ⟨(42958418063/200000000000 : ℚ), (46273686407/10000000000 : ℚ), (-12810437343/12500000000 : ℚ), 5⟩,
    ⟨(43660668589/200000000000 : ℚ), (22817345939/10000000000 : ℚ), (-517403725309/1000000000000 : ℚ), 5⟩,
    ⟨(222204837829/1000000000000 : ℚ), (148564067/156250000 : ℚ), (-44903889391/200000000000 : ℚ), 5⟩,
    ⟨(113173321353/500000000000 : ℚ), (254108161/2000000000 : ℚ), (-311779647/7812500000 : ℚ), 4⟩,
    ⟨(115284795169/500000000000 : ℚ), (-4158098977/10000000000 : ℚ), (84039417791/1000000000000 : ℚ), 4⟩,
    ⟨(46942279043/200000000000 : ℚ), (-3951354711/5000000000 : ℚ), (171113739549/1000000000000 : ℚ), 4⟩,
    ⟨(238612890099/1000000000000 : ℚ), (-2641766153/2500000000 : ℚ), (234147489689/1000000000000 : ℚ), 4⟩,
    ⟨(242124142729/1000000000000 : ℚ), (-12492728003/10000000000 : ℚ), (56084722009/200000000000 : ℚ), 4⟩,
    ⟨(61277554409/250000000000 : ℚ), (-277584317/200000000 : ℚ), (314195928709/1000000000000 : ℚ), 4⟩,
    ⟨(49491272327/200000000000 : ℚ), (-74222277/50000000 : ℚ), (337966276397/1000000000000 : ℚ), 4⟩,
    ⟨(24907241373/100000000000 : ℚ), (-15457229139/10000000000 : ℚ), (176589371167/500000000000 : ℚ), 4⟩,
    ⟨(249896269943/1000000000000 : ℚ), (-15755290503/10000000000 : ℚ), (72122968759/200000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-15792178701/10000000000 : ℚ), (72307371463/200000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control720.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control720.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate720
