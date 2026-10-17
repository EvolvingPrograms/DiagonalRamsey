import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate615
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (7369149394819/85529042798350 : ℚ), (59788323547/62500000 : ℚ), (-3300586453361/40000000000 : ℚ)⟩,
  ⟨(7369149394819/85529042798350 : ℚ), (5896196759909/68122612221300 : ℚ), (202645497537/2000000000 : ℚ), (-1764633477167/200000000000 : ℚ)⟩,
  ⟨(5896196759909/68122612221300 : ℚ), (1625549885669/18642433482600 : ℚ), (10375042671/312500000 : ℚ), (-1463485312963/500000000000 : ℚ)⟩,
  ⟨(1625549885669/18642433482600 : ℚ), (134024120399/1521911107560 : ℚ), (72788515323/5000000000 : ℚ), (-1301420740257/1000000000000 : ℚ)⟩,
  ⟨(134024120399/1521911107560 : ℚ), (340380165551/3819361871200 : ℚ), (17370368817/2500000000 : ℚ), (-315650069131/500000000000 : ℚ)⟩,
  ⟨(340380165551/3819361871200 : ℚ), (196856862867/2179418088800 : ℚ), (7821964139/2500000000 : ℚ), (-290919972711/1000000000000 : ℚ)⟩,
  ⟨(196856862867/2179418088800 : ℚ), (124444172233/1358056404200 : ℚ), (2373418917/2500000000 : ℚ), (-23515777461/250000000000 : ℚ)⟩,
  ⟨(124444172233/1358056404200 : ℚ), (83868556381/901860352700 : ℚ), (-2043444187/5000000000 : ℚ), (30381062389/1000000000000 : ℚ)⟩,
  ⟨(83868556381/901860352700 : ℚ), (14796239019/156812799400 : ℚ), (-13105491901/10000000000 : ℚ), (11424961877/100000000000 : ℚ)⟩,
  ⟨(14796239019/156812799400 : ℚ), (1722234001/18002841376 : ℚ), (-19378003877/10000000000 : ℚ), (86717287423/500000000000 : ℚ)⟩,
  ⟨(1722234001/18002841376 : ℚ), (31766202671/327925658000 : ℚ), (-23878714221/10000000000 : ℚ), (216490424871/1000000000000 : ℚ)⟩,
  ⟨(31766202671/327925658000 : ℚ), (5822370472/59456587925 : ℚ), (-27157970801/10000000000 : ℚ), (124128313771/500000000000 : ℚ)⟩,
  ⟨(5822370472/59456587925 : ℚ), (1028489609/10410561075 : ℚ), (-14768117159/5000000000 : ℚ), (27154610943/100000000000 : ℚ)⟩,
  ⟨(1028489609/10410561075 : ℚ), (2640556821/26555203450 : ℚ), (-3120192409/1000000000 : ℚ), (144000971587/500000000000 : ℚ)⟩,
  ⟨(2640556821/26555203450 : ℚ), (862060291/8635047750 : ℚ), (-8066033057/2500000000 : ℚ), (149282085229/500000000000 : ℚ)⟩,
  ⟨(862060291/8635047750 : ℚ), (320885931/3209397550 : ℚ), (-32782235093/10000000000 : ℚ), (75934133051/250000000000 : ℚ)⟩,
  ⟨(320885931/3209397550 : ℚ), (1/10 : ℚ), (-8211605761/2500000000 : ℚ), (152189152033/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1788394239/10000000000 : ℚ), (-2/5 : ℚ), (187957036813/500000000000 : ℚ)⟩,
  ⟨(1788394239/10000000000 : ℚ), (7217764907/40000000000 : ℚ), (-641771862/1604698775 : ℚ), (12064192034931960419/32093975500000000000 : ℚ)⟩,
  ⟨(7217764907/40000000000 : ℚ), (1933966943/10000000000 : ℚ), (-1724120582/4317523875 : ℚ), (32449943106107535347/86350477500000000000 : ℚ)⟩,
  ⟨(1933966943/10000000000 : ℚ), (879807591/4000000000 : ℚ), (-5281113642/13277601725 : ℚ), (99711321305635369613/265552034500000000000 : ℚ)⟩,
  ⟨(879807591/4000000000 : ℚ), (5231882841/20000000000 : ℚ), (-4113958436/10410561075 : ℚ), (21035487924518611/56106500000000000 : ℚ)⟩,
  ⟨(5231882841/20000000000 : ℚ), (12842029199/40000000000 : ℚ), (-23289481888/59456587925 : ℚ), (444751943285936816463/1189131758500000000000 : ℚ)⟩,
  ⟨(12842029199/40000000000 : ℚ), (16121285779/40000000000 : ℚ), (-31766202671/81981414500 : ℚ), (1222039681638046516889/3279256580000000000000 : ℚ)⟩,
  ⟨(16121285779/40000000000 : ℚ), (20621996123/40000000000 : ℚ), (-1722234001/4500710344 : ℚ), (1668476357304653860099/4500710344000000000000 : ℚ)⟩,
  ⟨(20621996123/40000000000 : ℚ), (26894508099/40000000000 : ℚ), (-14796239019/39203199850 : ℚ), (577095595628300162261/1568127994000000000000 : ℚ)⟩,
  ⟨(26894508099/40000000000 : ℚ), (17956555813/20000000000 : ℚ), (-83868556381/225465088175 : ℚ), (3285975583637770031509/9018603527000000000000 : ℚ)⟩,
  ⟨(17956555813/20000000000 : ℚ), (12373418917/10000000000 : ℚ), (-124444172233/339514101050 : ℚ), (1220442353011677674299/3395141010500000000000 : ℚ)⟩,
  ⟨(12373418917/10000000000 : ℚ), (17821964139/10000000000 : ℚ), (-196856862867/544854522200 : ℚ), (1923285323232825289671/5448545222000000000000 : ℚ)⟩,
  ⟨(17821964139/10000000000 : ℚ), (27370368817/10000000000 : ℚ), (-340380165551/954840467800 : ℚ), (3288421475719460433531/9548404678000000000000 : ℚ)⟩,
  ⟨(27370368817/10000000000 : ℚ), (92788515323/20000000000 : ℚ), (-134024120399/380477776890 : ℚ), (791458046332430821457/2377986105562500000000 : ℚ)⟩,
  ⟨(92788515323/20000000000 : ℚ), (11625042671/1250000000 : ℚ), (-1625549885669/4660608370650 : ℚ), (14762056279556515980473/46606083706500000000000 : ℚ)⟩,
  ⟨(11625042671/1250000000 : ℚ), (210645497537/8000000000 : ℚ), (-5896196759909/17030653055325 : ℚ), (19946439644680376416781/68122612221300000000000 : ℚ)⟩,
  ⟨(210645497537/8000000000 : ℚ), (32/1 : ℚ), (-14738298789638/42764521399175 : ℚ), (86008037551910999916117/342116171193400000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (197112072383/500000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(21527621873/250000000000 : ℚ), (59788323547/62500000 : ℚ), (-3300586453361/40000000000 : ℚ), 12⟩,
    ⟨(10797090809/125000000000 : ℚ), (202645497537/2000000000 : ℚ), (-1764633477167/200000000000 : ℚ), 8⟩,
    ⟨(86898973017/1000000000000 : ℚ), (10375042671/312500000 : ℚ), (-1463485312963/500000000000 : ℚ), 7⟩,
    ⟨(17531431497/200000000000 : ℚ), (72788515323/5000000000 : ℚ), (-1301420740257/1000000000000 : ℚ), 6⟩,
    ⟨(88622143273/1000000000000 : ℚ), (17370368817/2500000000 : ℚ), (-315650069131/500000000000 : ℚ), 5⟩,
    ⟨(44878423259/500000000000 : ℚ), (7821964139/2500000000 : ℚ), (-290919972711/1000000000000 : ℚ), 5⟩,
    ⟨(9101766121/100000000000 : ℚ), (2373418917/2500000000 : ℚ), (-23515777461/250000000000 : ℚ), 5⟩,
    ⟨(23089033737/250000000000 : ℚ), (-2043444187/5000000000 : ℚ), (30381062389/1000000000000 : ℚ), 4⟩,
    ⟨(93720830937/1000000000000 : ℚ), (-13105491901/10000000000 : ℚ), (11424961877/100000000000 : ℚ), 4⟩,
    ⟨(3802372187/40000000000 : ℚ), (-19378003877/10000000000 : ℚ), (86717287423/500000000000 : ℚ), 4⟩,
    ⟨(96320119367/1000000000000 : ℚ), (-23878714221/10000000000 : ℚ), (216490424871/1000000000000 : ℚ), 4⟩,
    ⟨(97454822611/1000000000000 : ℚ), (-27157970801/10000000000 : ℚ), (124128313771/500000000000 : ℚ), 4⟩,
    ⟨(98419808399/1000000000000 : ℚ), (-14768117159/5000000000 : ℚ), (27154610943/100000000000 : ℚ), 4⟩,
    ⟨(24794498217/250000000000 : ℚ), (-3120192409/1000000000 : ℚ), (144000971587/500000000000 : ℚ), 4⟩,
    ⟨(99700239413/1000000000000 : ℚ), (-8066033057/2500000000 : ℚ), (149282085229/500000000000 : ℚ), 4⟩,
    ⟨(99966478393/1000000000000 : ℚ), (-32782235093/10000000000 : ℚ), (75934133051/250000000000 : ℚ), 4⟩,
    ⟨(1/10 : ℚ), (-8211605761/2500000000 : ℚ), (152189152033/500000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control615.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control615.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate615
