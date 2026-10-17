import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate723
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (108649722947131/821298249705000 : ℚ), (9185989418503/10000000000 : ℚ), (-121635678032461/1000000000000 : ℚ)⟩,
  ⟨(108649722947131/821298249705000 : ℚ), (2173248608951/16365655877000 : ℚ), (973006921453/10000000000 : ℚ), (-1298595508533/100000000000 : ℚ)⟩,
  ⟨(2173248608951/16365655877000 : ℚ), (2396272465847/17933926376200 : ℚ), (318380686373/10000000000 : ℚ), (-2146480324763/500000000000 : ℚ)⟩,
  ⟨(2396272465847/17933926376200 : ℚ), (197497007077/1465917052020 : ℚ), (139041422611/10000000000 : ℚ), (-1896688183679/1000000000000 : ℚ)⟩,
  ⟨(197497007077/1465917052020 : ℚ), (1790101547/13154974515 : ℚ), (6574557001/1000000000 : ℚ), (-454601574147/500000000000 : ℚ)⟩,
  ⟨(1790101547/13154974515 : ℚ), (144778018371/1052006921050 : ℚ), (3613955171/1250000000 : ℚ), (-203987357567/500000000000 : ℚ)⟩,
  ⟨(144778018371/1052006921050 : ℚ), (18276028537/131203579970 : ℚ), (7871502947/10000000000 : ℚ), (-14802334799/125000000000 : ℚ)⟩,
  ⟨(18276028537/131203579970 : ℚ), (2731975783/19370672000 : ℚ), (-104977101/200000000 : ℚ), (32170803489/500000000000 : ℚ)⟩,
  ⟨(2731975783/19370672000 : ℚ), (43291077767/303205093300 : ℚ), (-279313149/200000000 : ℚ), (187280517213/1000000000000 : ℚ)⟩,
  ⟨(43291077767/303205093300 : ℚ), (62867947987/435215280400 : ℚ), (-5007439829/2500000000 : ℚ), (273862672747/1000000000000 : ℚ)⟩,
  ⟨(62867947987/435215280400 : ℚ), (46312145993/317216987500 : ℚ), (-609547803/250000000 : ℚ), (168365310367/500000000000 : ℚ)⟩,
  ⟨(46312145993/317216987500 : ℚ), (16959044169/115096142300 : ℚ), (-5510816399/2000000000 : ℚ), (383042766727/1000000000000 : ℚ)⟩,
  ⟨(16959044169/115096142300 : ℚ), (5987995523/40335289025 : ℚ), (-29856004841/10000000000 : ℚ), (83392171013/200000000000 : ℚ)⟩,
  ⟨(5987995523/40335289025 : ℚ), (2561721487/17160627000 : ℚ), (-15734708201/5000000000 : ℚ), (440912837157/1000000000000 : ℚ)⟩,
  ⟨(2561721487/17160627000 : ℚ), (836297749/5583285200 : ℚ), (-16249527011/5000000000 : ℚ), (456283166079/1000000000000 : ℚ)⟩,
  ⟨(836297749/5583285200 : ℚ), (116737397/778360675 : ℚ), (-3300154969/1000000000 : ℚ), (23190492291/50000000000 : ℚ)⟩,
  ⟨(116737397/778360675 : ℚ), (3/20 : ℚ), (-2066488659/625000000 : ℚ), (116185936249/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (433511341/2500000000 : ℚ), (-3/5 : ℚ), (142196616709/250000000000 : ℚ)⟩,
  ⟨(433511341/2500000000 : ℚ), (699845031/4000000000 : ℚ), (-466949588/778360675 : ℚ), (885418863772850871/1556721350000000000 : ℚ)⟩,
  ⟨(699845031/4000000000 : ℚ), (3750472989/20000000000 : ℚ), (-836297749/1395821300 : ℚ), (3174861471855223083/5583285200000000000 : ℚ)⟩,
  ⟨(3750472989/20000000000 : ℚ), (4265291799/20000000000 : ℚ), (-2561721487/4290156750 : ℚ), (4063182778303189359/7150261250000000000 : ℚ)⟩,
  ⟨(4265291799/20000000000 : ℚ), (10143995159/40000000000 : ℚ), (-23951982092/40335289025 : ℚ), (915698254436019099093/1613411561000000000000 : ℚ)⟩,
  ⟨(10143995159/40000000000 : ℚ), (2489183601/8000000000 : ℚ), (-16959044169/28774035575 : ℚ), (325969160516256167683/575480711500000000000 : ℚ)⟩,
  ⟨(2489183601/8000000000 : ℚ), (390452197/1000000000 : ℚ), (-46312145993/79304246875 : ℚ), (179147389711250905309/317216987500000000000 : ℚ)⟩,
  ⟨(390452197/1000000000 : ℚ), (4992560171/10000000000 : ℚ), (-62867947987/108803820100 : ℚ), (152961265732273358481/272009550250000000000 : ℚ)⟩,
  ⟨(4992560171/10000000000 : ℚ), (520686851/800000000 : ℚ), (-43291077767/75801273325 : ℚ), (1694898814893166295579/3032050933000000000000 : ℚ)⟩,
  ⟨(520686851/800000000 : ℚ), (695022899/800000000 : ℚ), (-2731975783/4842668000 : ℚ), (10740268808216023801/19370672000000000000 : ℚ)⟩,
  ⟨(695022899/800000000 : ℚ), (47871502947/40000000000 : ℚ), (-36552057074/65601789985 : ℚ), (3597657042824933842283/6560178998500000000000 : ℚ)⟩,
  ⟨(47871502947/40000000000 : ℚ), (8613955171/5000000000 : ℚ), (-289556036742/526003460525 : ℚ), (5684968640608365789821/10520069210500000000000 : ℚ)⟩,
  ⟨(8613955171/5000000000 : ℚ), (10574557001/4000000000 : ℚ), (-7160406188/13154974515 : ℚ), (696898660156444481959/1315497451500000000000 : ℚ)⟩,
  ⟨(10574557001/4000000000 : ℚ), (179041422611/40000000000 : ℚ), (-197497007077/366479263005 : ℚ), (9445337000352419047789/18323963150250000000000 : ℚ)⟩,
  ⟨(179041422611/40000000000 : ℚ), (358380686373/40000000000 : ℚ), (-2396272465847/4483481594050 : ℚ), (88881368801738906526119/179339263762000000000000 : ℚ)⟩,
  ⟨(358380686373/40000000000 : ℚ), (1013006921453/40000000000 : ℚ), (-2173248608951/4091413969250 : ℚ), (76279161298577659881703/163656558770000000000000 : ℚ)⟩,
  ⟨(1013006921453/40000000000 : ℚ), (32/1 : ℚ), (-108649722947131/205324562426250 : ℚ), (3409499536101815365424843/8212982497050000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (174061680127/500000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(33056836531/250000000000 : ℚ), (9185989418503/10000000000 : ℚ), (-121635678032461/1000000000000 : ℚ), 12⟩,
    ⟨(132568018501/1000000000000 : ℚ), (973006921453/10000000000 : ℚ), (-1298595508533/100000000000 : ℚ), 9⟩,
    ⟨(66618135703/500000000000 : ℚ), (318380686373/10000000000 : ℚ), (-2146480324763/500000000000 : ℚ), 8⟩,
    ⟨(26841284851/200000000000 : ℚ), (139041422611/10000000000 : ℚ), (-1896688183679/1000000000000 : ℚ), 7⟩,
    ⟨(67720597309/500000000000 : ℚ), (6574557001/1000000000 : ℚ), (-454601574147/500000000000 : ℚ), 6⟩,
    ⟨(136893130963/1000000000000 : ℚ), (3613955171/1250000000 : ℚ), (-203987357567/500000000000 : ℚ), 6⟩,
    ⟨(138506436189/1000000000000 : ℚ), (7871502947/10000000000 : ℚ), (-14802334799/125000000000 : ℚ), 5⟩,
    ⟨(140219111883/1000000000000 : ℚ), (-104977101/200000000 : ℚ), (32170803489/500000000000 : ℚ), 5⟩,
    ⟨(141965340877/1000000000000 : ℚ), (-279313149/200000000 : ℚ), (187280517213/1000000000000 : ℚ), 5⟩,
    ⟨(14367801657/100000000000 : ℚ), (-5007439829/2500000000 : ℚ), (273862672747/1000000000000 : ℚ), 5⟩,
    ⟨(145291321797/1000000000000 : ℚ), (-609547803/250000000 : ℚ), (168365310367/500000000000 : ℚ), 4⟩,
    ⟨(146743258141/1000000000000 : ℚ), (-5510816399/2000000000 : ℚ), (383042766727/1000000000000 : ℚ), 4⟩,
    ⟨(18497253563/125000000000 : ℚ), (-29856004841/10000000000 : ℚ), (83392171013/200000000000 : ℚ), 4⟩,
    ⟨(148948181353/1000000000000 : ℚ), (-15734708201/5000000000 : ℚ), (440912837157/1000000000000 : ℚ), 4⟩,
    ⟨(149616434259/1000000000000 : ℚ), (-16249527011/5000000000 : ℚ), (456283166079/1000000000000 : ℚ), 4⟩,
    ⟨(29991421327/200000000000 : ℚ), (-3300154969/1000000000 : ℚ), (23190492291/50000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-2066488659/625000000 : ℚ), (116185936249/250000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control723.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control723.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate723
