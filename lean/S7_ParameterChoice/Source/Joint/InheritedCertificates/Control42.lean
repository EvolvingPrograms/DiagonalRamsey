import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate42
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (19271680021561/483827832647000 : ℚ), (2164264236587/2000000000 : ℚ), (-5397638626877/125000000000 : ℚ)⟩,
  ⟨(19271680021561/483827832647000 : ℚ), (771039948381/19218145927750 : ℚ), (228952905999/2000000000 : ℚ), (-2318874485947/500000000000 : ℚ)⟩,
  ⟨(771039948381/19218145927750 : ℚ), (34023053565/838148834924 : ℚ), (75207738577/2000000000 : ℚ), (-155358917837/100000000000 : ℚ)⟩,
  ⟨(34023053565/838148834924 : ℚ), (350957819411/8512229020900 : ℚ), (83250742077/5000000000 : ℚ), (-140602567849/200000000000 : ℚ)⟩,
  ⟨(350957819411/8512229020900 : ℚ), (7440823471/177136906950 : ℚ), (16275838789/2000000000 : ℚ), (-176027509917/500000000000 : ℚ)⟩,
  ⟨(7440823471/177136906950 : ℚ), (51787938819/1207405074550 : ℚ), (38866336277/10000000000 : ℚ), (-17347525653/100000000000 : ℚ)⟩,
  ⟨(51787938819/1207405074550 : ℚ), (65735154347/1498975632900 : ℚ), (7359117393/5000000000 : ℚ), (-17474844723/250000000000 : ℚ)⟩,
  ⟨(65735154347/1498975632900 : ℚ), (8902480559/198479667140 : ℚ), (-271521543/10000000000 : ℚ), (-832844909/200000000000 : ℚ)⟩,
  ⟨(8902480559/198479667140 : ℚ), (15783891471/344225864050 : ℚ), (-101955049/100000000 : ℚ), (161392713/4000000000 : ℚ)⟩,
  ⟨(15783891471/344225864050 : ℚ), (7689239409/164248646200 : ℚ), (-17080022181/10000000000 : ℚ), (8989495149/125000000000 : ℚ)⟩,
  ⟨(7689239409/164248646200 : ℚ), (8538506329/179003087700 : ℚ), (-22007481567/10000000000 : ℚ), (94983679419/1000000000000 : ℚ)⟩,
  ⟨(8538506329/179003087700 : ℚ), (6272864207/129400450350 : ℚ), (-25587543321/10000000000 : ℚ), (112060692077/1000000000000 : ℚ)⟩,
  ⟨(6272864207/129400450350 : ℚ), (591449323/12042619120 : ℚ), (-3521944041/1250000000 : ℚ), (124606420491/1000000000000 : ℚ)⟩,
  ⟨(591449323/12042619120 : ℚ), (5694311267/114837243600 : ℚ), (-7495486299/2500000000 : ℚ), (8342385021/62500000000 : ℚ)⟩,
  ⟨(5694311267/114837243600 : ℚ), (139385054/2794571475 : ℚ), (-486411213/156250000 : ℚ), (139172471603/1000000000000 : ℚ)⟩,
  ⟨(139385054/2794571475 : ℚ), (69165893/1383658840 : ℚ), (-31689231927/10000000000 : ℚ), (141960172683/1000000000000 : ℚ)⟩,
  ⟨(69165893/1383658840 : ℚ), (1/20 : ℚ), (-31758414869/10000000000 : ℚ), (35576500537/250000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (8241585131/40000000000 : ℚ), (-1/5 : ℚ), (183513927803/1000000000000 : ℚ)⟩,
  ⟨(8241585131/40000000000 : ℚ), (8310768073/40000000000 : ℚ), (-69165893/345914710 : ℚ), (12695330869462644331/69182942000000000000 : ℚ)⟩,
  ⟨(8310768073/40000000000 : ℚ), (138588787/625000000 : ℚ), (-557540216/2794571475 : ℚ), (4100460278637152893/22356571800000000000 : ℚ)⟩,
  ⟨(138588787/625000000 : ℚ), (2504513701/10000000000 : ℚ), (-5694311267/28709310900 : ℚ), (52582140620422893791/287093109000000000000 : ℚ)⟩,
  ⟨(2504513701/10000000000 : ℚ), (1478055959/5000000000 : ℚ), (-591449323/3010654780 : ℚ), (27499297736562612419/150532739000000000000 : ℚ)⟩,
  ⟨(1478055959/5000000000 : ℚ), (14412456679/40000000000 : ℚ), (-12545728414/64700225175 : ℚ), (94165769539840782929/517601801400000000000 : ℚ)⟩,
  ⟨(14412456679/40000000000 : ℚ), (17992518433/40000000000 : ℚ), (-8538506329/44750771925 : ℚ), (8091323787147477073/44750771925000000000 : ℚ)⟩,
  ⟨(17992518433/40000000000 : ℚ), (22919977819/40000000000 : ℚ), (-7689239409/41062161550 : ℚ), (11774327574353522067/65699458480000000000 : ℚ)⟩,
  ⟨(22919977819/40000000000 : ℚ), (298044951/400000000 : ℚ), (-31567782942/172112932025 : ℚ), (24372791248633918449/137690345620000000000 : ℚ)⟩,
  ⟨(298044951/400000000 : ℚ), (39728478457/40000000000 : ℚ), (-8902480559/49619916785 : ℚ), (6908337361724292759/39695933428000000000 : ℚ)⟩,
  ⟨(39728478457/40000000000 : ℚ), (27359117393/20000000000 : ℚ), (-65735154347/374743908225 : ℚ), (1274568476056784253637/7494878164500000000000 : ℚ)⟩,
  ⟨(27359117393/20000000000 : ℚ), (78866336277/40000000000 : ℚ), (-103575877638/603702537275 : ℚ), (497443986890026498437/3018512686375000000000 : ℚ)⟩,
  ⟨(78866336277/40000000000 : ℚ), (24275838789/8000000000 : ℚ), (-14881646942/88568453475 : ℚ), (3882524754178617481/24602348187500000000 : ℚ)⟩,
  ⟨(24275838789/8000000000 : ℚ), (103250742077/20000000000 : ℚ), (-350957819411/2128057255225 : ℚ), (12631247660957055661089/85122290209000000000000 : ℚ)⟩,
  ⟨(103250742077/20000000000 : ℚ), (83207738577/8000000000 : ℚ), (-34023053565/209537208731 : ℚ), (5667585675627200855431/41907441746200000000000 : ℚ)⟩,
  ⟨(83207738577/8000000000 : ℚ), (236952905999/8000000000 : ℚ), (-1542079896762/9609072963875 : ℚ), (2221141686967027314151/19218145927750000000000 : ℚ)⟩,
  ⟨(236952905999/8000000000 : ℚ), (32/1 : ℚ), (-19271680021561/120956958161750 : ℚ), (78736517727096848997603/967655665294000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (324999/1000000 : ℚ)
  x := (253907547987/1000000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(4974451541/125000000000 : ℚ), (2164264236587/2000000000 : ℚ), (-5397638626877/125000000000 : ℚ), 10⟩,
    ⟨(39991213561/1000000000000 : ℚ), (228952905999/2000000000 : ℚ), (-2318874485947/500000000000 : ℚ), 7⟩,
    ⟨(2018744959/50000000000 : ℚ), (75207738577/2000000000 : ℚ), (-155358917837/100000000000 : ℚ), 6⟩,
    ⟨(40931924363/1000000000000 : ℚ), (83250742077/5000000000 : ℚ), (-140602567849/200000000000 : ℚ), 5⟩,
    ⟨(162659699/3906250000 : ℚ), (16275838789/2000000000 : ℚ), (-176027509917/500000000000 : ℚ), 4⟩,
    ⟨(21237265021/500000000000 : ℚ), (38866336277/10000000000 : ℚ), (-17347525653/100000000000 : ℚ), 4⟩,
    ⟨(43400829067/1000000000000 : ℚ), (7359117393/5000000000 : ℚ), (-17474844723/250000000000 : ℚ), 3⟩,
    ⟨(11096045717/250000000000 : ℚ), (-271521543/10000000000 : ℚ), (-832844909/200000000000 : ℚ), 3⟩,
    ⟨(11346700427/250000000000 : ℚ), (-101955049/100000000 : ℚ), (161392713/4000000000 : ℚ), 3⟩,
    ⟨(11592538877/250000000000 : ℚ), (-17080022181/10000000000 : ℚ), (8989495149/125000000000 : ℚ), 3⟩,
    ⟨(23648227267/500000000000 : ℚ), (-22007481567/10000000000 : ℚ), (94983679419/1000000000000 : ℚ), 3⟩,
    ⟨(376016419/7812500000 : ℚ), (-25587543321/10000000000 : ℚ), (112060692077/1000000000000 : ℚ), 2⟩,
    ⟨(48839060213/1000000000000 : ℚ), (-3521944041/1250000000 : ℚ), (124606420491/1000000000000 : ℚ), 2⟩,
    ⟨(12349021349/250000000000 : ℚ), (-7495486299/2500000000 : ℚ), (8342385021/62500000000 : ℚ), 2⟩,
    ⟨(9955954203/200000000000 : ℚ), (-486411213/156250000 : ℚ), (139172471603/1000000000000 : ℚ), 2⟩,
    ⟨(49975372247/1000000000000 : ℚ), (-31689231927/10000000000 : ℚ), (141960172683/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-31758414869/10000000000 : ℚ), (35576500537/250000000000 : ℚ), 2⟩]
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
theorem certOK : JointInheritedControls.control42.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control42.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate42
