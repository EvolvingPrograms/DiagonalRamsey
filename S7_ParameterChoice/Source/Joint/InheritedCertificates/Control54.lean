import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate54
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (9824389348641/122160345638525 : ℚ), (2185992232837/2000000000 : ℚ), (-44026441740553/500000000000 : ℚ)⟩,
  ⟨(9824389348641/122160345638525 : ℚ), (6288859473803/77661331148900 : ℚ), (1157133513103/10000000000 : ℚ), (-4728884345989/500000000000 : ℚ)⟩,
  ⟨(6288859473803/77661331148900 : ℚ), (1734198305909/21177656975200 : ℚ), (190260100807/5000000000 : ℚ), (-126756368727/40000000000 : ℚ)⟩,
  ⟨(1734198305909/21177656975200 : ℚ), (178834036897/2151669316200 : ℚ), (84371815931/5000000000 : ℚ), (-717355456133/500000000000 : ℚ)⟩,
  ⟨(178834036897/2151669316200 : ℚ), (181886028893/2149734726350 : ℚ), (41338429607/5000000000 : ℚ), (-359687382339/500000000000 : ℚ)⟩,
  ⟨(181886028893/2149734726350 : ℚ), (35130102421/407002622000 : ℚ), (39682164687/10000000000 : ℚ), (-88900676723/250000000000 : ℚ)⟩,
  ⟨(35130102421/407002622000 : ℚ), (7421472619/84176806850 : ℚ), (15262007367/10000000000 : ℚ), (-72411046183/500000000000 : ℚ)⟩,
  ⟨(7421472619/84176806850 : ℚ), (18059531441/200459712860 : ℚ), (55091067/5000000000 : ℚ), (-1404448153/125000000000 : ℚ)⟩,
  ⟨(18059531441/200459712860 : ℚ), (7988642979/86818156550 : ℚ), (-9912803509/10000000000 : ℚ), (79062071981/1000000000000 : ℚ)⟩,
  ⟨(7988642979/86818156550 : ℚ), (46603501251/496485754700 : ℚ), (-16858256033/10000000000 : ℚ), (142971215813/1000000000000 : ℚ)⟩,
  ⟨(46603501251/496485754700 : ℚ), (318823424/3335946875 : ℚ), (-1091155679/500000000 : ℚ), (23696839633/125000000000 : ℚ)⟩,
  ⟨(318823424/3335946875 : ℚ), (25253689373/260169438400 : ℚ), (-5085187241/2000000000 : ℚ), (28000955857/125000000000 : ℚ)⟩,
  ⟨(25253689373/260169438400 : ℚ), (891727873/9072218820 : ℚ), (-28027630589/10000000000 : ℚ), (249261336229/1000000000000 : ℚ)⟩,
  ⟨(891727873/9072218820 : ℚ), (3812141903/38427794600 : ℚ), (-29842074353/10000000000 : ℚ), (267095893689/1000000000000 : ℚ)⟩,
  ⟨(3812141903/38427794600 : ℚ), (5595751831/56090274300 : ℚ), (-30994908191/10000000000 : ℚ), (139266159699/500000000000 : ℚ)⟩,
  ⟨(5595751831/56090274300 : ℚ), (173510993/1735521650 : ℚ), (-15777905467/5000000000 : ℚ), (284128071229/1000000000000 : ℚ)⟩,
  ⟨(173510993/1735521650 : ℚ), (1/10 : ℚ), (-158126159/50000000 : ℚ), (284822115201/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (41873841/200000000 : ℚ), (-2/5 : ℚ), (368569797201/1000000000000 : ℚ)⟩,
  ⟨(41873841/200000000 : ℚ), (4222094533/20000000000 : ℚ), (-347021986/867760825 : ℚ), (12792527639656237233/34710433000000000000 : ℚ)⟩,
  ⟨(4222094533/20000000000 : ℚ), (9005091809/40000000000 : ℚ), (-5595751831/14022568575 : ℚ), (206619800943025160993/560902743000000000000 : ℚ)⟩,
  ⟨(9005091809/40000000000 : ℚ), (10157925647/40000000000 : ℚ), (-3812141903/9606948650 : ℚ), (28272503083666073807/76855589200000000000 : ℚ)⟩,
  ⟨(10157925647/40000000000 : ℚ), (11972369411/40000000000 : ℚ), (-891727873/2268054705 : ℚ), (5201504588436267047/14175341906250000000 : ℚ)⟩,
  ⟨(11972369411/40000000000 : ℚ), (2914812759/8000000000 : ℚ), (-25253689373/65042359600 : ℚ), (950848316779526007239/2601694384000000000000 : ℚ)⟩,
  ⟨(2914812759/8000000000 : ℚ), (908844321/2000000000 : ℚ), (-1275293696/3335946875 : ℚ), (1211932901577010183/3335946875000000000 : ℚ)⟩,
  ⟨(908844321/2000000000 : ℚ), (23141743967/40000000000 : ℚ), (-46603501251/124121438675 : ℚ), (447079503437336248357/1241214386750000000000 : ℚ)⟩,
  ⟨(23141743967/40000000000 : ℚ), (30087196491/40000000000 : ℚ), (-15977285958/43409078275 : ℚ), (617992208859517705889/1736363131000000000000 : ℚ)⟩,
  ⟨(30087196491/40000000000 : ℚ), (20055091067/20000000000 : ℚ), (-18059531441/50114928215 : ℚ), (159510971244326928929/455590256500000000000 : ℚ)⟩,
  ⟨(20055091067/20000000000 : ℚ), (55262007367/40000000000 : ℚ), (-14842945238/42088403425 : ℚ), (144109430789055184551/420884034250000000000 : ℚ)⟩,
  ⟨(55262007367/40000000000 : ℚ), (79682164687/40000000000 : ℚ), (-35130102421/101750655500 : ℚ), (1351930265627884698987/4070026220000000000000 : ℚ)⟩,
  ⟨(79682164687/40000000000 : ℚ), (61338429607/20000000000 : ℚ), (-363772057786/1074867363175 : ℚ), (6848557630618537511449/21497347263500000000000 : ℚ)⟩,
  ⟨(61338429607/20000000000 : ℚ), (104371815931/20000000000 : ℚ), (-178834036897/537917329050 : ℚ), (3230115943511034343561/10758346581000000000000 : ℚ)⟩,
  ⟨(104371815931/20000000000 : ℚ), (210260100807/20000000000 : ℚ), (-1734198305909/5294414243800 : ℚ), (29082348579458126947263/105888284876000000000000 : ℚ)⟩,
  ⟨(210260100807/20000000000 : ℚ), (1197133513103/40000000000 : ℚ), (-6288859473803/19415332787225 : ℚ), (183575372110846776205467/776613311489000000000000 : ℚ)⟩,
  ⟨(1197133513103/40000000000 : ℚ), (32/1 : ℚ), (-39297557394564/122160345638525 : ℚ), (414925622435529088380997/2443206912770500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (349999/1000000 : ℚ)
  x := (105801295457/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(80352615813/1000000000000 : ℚ), (2185992232837/2000000000 : ℚ), (-44026441740553/500000000000 : ℚ), 10⟩,
    ⟨(80729223669/1000000000000 : ℚ), (1157133513103/10000000000 : ℚ), (-4728884345989/500000000000 : ℚ), 7⟩,
    ⟨(10183495819/125000000000 : ℚ), (190260100807/5000000000 : ℚ), (-126756368727/40000000000 : ℚ), 6⟩,
    ⟨(82540454987/1000000000000 : ℚ), (84371815931/5000000000 : ℚ), (-717355456133/500000000000 : ℚ), 5⟩,
    ⟨(41952736923/500000000000 : ℚ), (41338429607/5000000000 : ℚ), (-359687382339/500000000000 : ℚ), 4⟩,
    ⟨(42755283109/500000000000 : ℚ), (39682164687/10000000000 : ℚ), (-88900676723/250000000000 : ℚ), 4⟩,
    ⟨(17458809861/200000000000 : ℚ), (15262007367/10000000000 : ℚ), (-72411046183/500000000000 : ℚ), 3⟩,
    ⟨(89187384851/1000000000000 : ℚ), (55091067/5000000000 : ℚ), (-1404448153/125000000000 : ℚ), 3⟩,
    ⟨(45558906517/500000000000 : ℚ), (-9912803509/10000000000 : ℚ), (79062071981/1000000000000 : ℚ), 3⟩,
    ⟨(4650557429/50000000000 : ℚ), (-16858256033/10000000000 : ℚ), (142971215813/1000000000000 : ℚ), 3⟩,
    ⟨(94794631667/1000000000000 : ℚ), (-1091155679/500000000 : ℚ), (23696839633/125000000000 : ℚ), 3⟩,
    ⟨(2409993101/25000000000 : ℚ), (-5085187241/2000000000 : ℚ), (28000955857/125000000000 : ℚ), 3⟩,
    ⟨(48882371449/500000000000 : ℚ), (-28027630589/10000000000 : ℚ), (249261336229/1000000000000 : ℚ), 2⟩,
    ⟨(49418615667/500000000000 : ℚ), (-29842074353/10000000000 : ℚ), (267095893689/1000000000000 : ℚ), 2⟩,
    ⟨(99575974217/1000000000000 : ℚ), (-30994908191/10000000000 : ℚ), (139266159699/500000000000 : ℚ), 2⟩,
    ⟨(12494072759/125000000000 : ℚ), (-15777905467/5000000000 : ℚ), (284128071229/1000000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-158126159/50000000 : ℚ), (284822115201/1000000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control54.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control54.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate54
