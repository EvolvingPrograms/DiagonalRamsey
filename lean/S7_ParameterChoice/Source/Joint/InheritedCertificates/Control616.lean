import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate616
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (28165959508238/217435953524825 : ℚ), (2432104035013/2500000000 : ℚ), (-63079521216791/500000000000 : ℚ)⟩,
  ⟨(28165959508238/217435953524825 : ℚ), (901428797951/6927778925040 : ℚ), (1030977999059/10000000000 : ℚ), (-1349520440063/100000000000 : ℚ)⟩,
  ⟨(901428797951/6927778925040 : ℚ), (2484992942999/18959359693800 : ℚ), (67640021311/2000000000 : ℚ), (-1750357977/390625000 : ℚ)⟩,
  ⟨(2484992942999/18959359693800 : ℚ), (204841347041/1547712474620 : ℚ), (148606509617/10000000000 : ℚ), (-1995923478121/1000000000000 : ℚ)⟩,
  ⟨(204841347041/1547712474620 : ℚ), (520021011209/3883269178300 : ℚ), (35610442943/5000000000 : ℚ), (-242929185729/250000000000 : ℚ)⟩,
  ⟨(520021011209/3883269178300 : ℚ), (300547820633/2214862641400 : ℚ), (32388194103/10000000000 : ℚ), (-451695731707/1000000000000 : ℚ)⟩,
  ⟨(300547820633/2214862641400 : ℚ), (189807711923/1379109359400 : ℚ), (10239567689/10000000000 : ℚ), (-75573955537/500000000000 : ℚ)⟩,
  ⟨(189807711923/1379109359400 : ℚ), (15969850921/114362062400 : ℚ), (-710305181/2000000000 : ℚ), (38659800849/1000000000000 : ℚ)⟩,
  ⟨(15969850921/114362062400 : ℚ), (45012308611/317759772450 : ℚ), (-12700490897/10000000000 : ℚ), (166418608217/1000000000000 : ℚ)⟩,
  ⟨(45012308611/317759772450 : ℚ), (13077522099/91075572380 : ℚ), (-9527843173/5000000000 : ℚ), (256443225439/1000000000000 : ℚ)⟩,
  ⟨(13077522099/91075572380 : ℚ), (12041907413/82834969050 : ℚ), (-4721892993/2000000000 : ℚ), (160915417967/500000000000 : ℚ)⟩,
  ⟨(12041907413/82834969050 : ℚ), (8816260423/60001483150 : ℚ), (-26922863727/10000000000 : ℚ), (184999232793/500000000000 : ℚ)⟩,
  ⟨(8816260423/60001483150 : ℚ), (6222260106/41981250175 : ℚ), (-29322923053/10000000000 : ℚ), (202631753639/500000000000 : ℚ)⟩,
  ⟨(6222260106/41981250175 : ℚ), (7980881427/53503054250 : ℚ), (-1550108653/500000000 : ℚ), (215076273851/500000000000 : ℚ)⟩,
  ⟨(7980881427/53503054250 : ℚ), (7812589883/52169956400 : ℚ), (-6414446829/2000000000 : ℚ), (111528577639/250000000000 : ℚ)⟩,
  ⟨(7812589883/52169956400 : ℚ), (161530059/1077045100 : ℚ), (-32593933709/10000000000 : ℚ), (453926900439/1000000000000 : ℚ)⟩,
  ⟨(161530059/1077045100 : ℚ), (3/20 : ℚ), (-6531711283/2000000000 : ℚ), (454896080793/1000000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1468288717/8000000000 : ℚ), (-3/5 : ℚ), (70627216821/125000000000 : ℚ)⟩,
  ⟨(1468288717/8000000000 : ℚ), (7406066291/40000000000 : ℚ), (-161530059/269261275 : ℚ), (3042649881851634579/5385225500000000000 : ℚ)⟩,
  ⟨(7406066291/40000000000 : ℚ), (1585553171/8000000000 : ℚ), (-7812589883/13042489100 : ℚ), (294674024624791642549/521699564000000000000 : ℚ)⟩,
  ⟨(1585553171/8000000000 : ℚ), (449891347/2000000000 : ℚ), (-15961762854/26751527125 : ℚ), (60391068172712886343/107006108500000000000 : ℚ)⟩,
  ⟨(449891347/2000000000 : ℚ), (10677076947/40000000000 : ℚ), (-24889040424/41981250175 : ℚ), (473140473588733778237/839625003500000000000 : ℚ)⟩,
  ⟨(10677076947/40000000000 : ℚ), (13077136273/40000000000 : ℚ), (-17632520846/30000741575 : ℚ), (168648002976834981119/300007415750000000000 : ℚ)⟩,
  ⟨(13077136273/40000000000 : ℚ), (3278107007/8000000000 : ℚ), (-24083814826/41417484525 : ℚ), (231980889340143946441/414174845250000000000 : ℚ)⟩,
  ⟨(3278107007/8000000000 : ℚ), (10472156827/20000000000 : ℚ), (-13077522099/22768893095 : ℚ), (2537284300284377287471/4553778619000000000000 : ℚ)⟩,
  ⟨(10472156827/20000000000 : ℚ), (27299509103/40000000000 : ℚ), (-90024617222/158879886225 : ℚ), (3515250638915671976299/6355195449000000000000 : ℚ)⟩,
  ⟨(27299509103/40000000000 : ℚ), (7289694819/8000000000 : ℚ), (-15969850921/28590515600 : ℚ), (626288843165729501271/1143620624000000000000 : ℚ)⟩,
  ⟨(7289694819/8000000000 : ℚ), (50239567689/40000000000 : ℚ), (-189807711923/344777339850 : ℚ), (2483787467630215931997/4597031198000000000000 : ℚ)⟩,
  ⟨(50239567689/40000000000 : ℚ), (72388194103/40000000000 : ℚ), (-300547820633/553715660350 : ℚ), (11751673962838514818501/22148626414000000000000 : ℚ)⟩,
  ⟨(72388194103/40000000000 : ℚ), (55610442943/20000000000 : ℚ), (-520021011209/970817294575 : ℚ), (10051410383980419618473/19416345891500000000000 : ℚ)⟩,
  ⟨(55610442943/20000000000 : ℚ), (188606509617/40000000000 : ℚ), (-204841347041/386928118655 : ℚ), (19358137089748744038517/38692811865500000000000 : ℚ)⟩,
  ⟨(188606509617/40000000000 : ℚ), (75640021311/8000000000 : ℚ), (-2484992942999/4739839923450 : ℚ), (6018102264796939381859/12639573129200000000000 : ℚ)⟩,
  ⟨(75640021311/8000000000 : ℚ), (1070977999059/40000000000 : ℚ), (-901428797951/1731944731260 : ℚ), (10164161321935263380119/23092596416800000000000 : ℚ)⟩,
  ⟨(1070977999059/40000000000 : ℚ), (32/1 : ℚ), (-112663838032952/217435953524825 : ℚ), (1643393174151127734483289/4348719070496500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (624999/1000000 : ℚ)
  x := (306642406449/1000000000000 : ℚ)
  μ := (3/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(32366043061/250000000000 : ℚ), (2432104035013/2500000000 : ℚ), (-63079521216791/500000000000 : ℚ), 12⟩,
    ⟨(64928905047/500000000000 : ℚ), (1030977999059/10000000000 : ℚ), (-1349520440063/100000000000 : ℚ), 8⟩,
    ⟨(130629958511/1000000000000 : ℚ), (67640021311/2000000000 : ℚ), (-1750357977/390625000 : ℚ), 7⟩,
    ⟨(26350188853/200000000000 : ℚ), (148606509617/10000000000 : ℚ), (-1995923478121/1000000000000 : ℚ), 6⟩,
    ⟨(66588844251/500000000000 : ℚ), (35610442943/5000000000 : ℚ), (-242929185729/250000000000 : ℚ), 5⟩,
    ⟨(134855362241/1000000000000 : ℚ), (32388194103/10000000000 : ℚ), (-451695731707/1000000000000 : ℚ), 5⟩,
    ⟨(136719493421/1000000000000 : ℚ), (10239567689/10000000000 : ℚ), (-75573955537/500000000000 : ℚ), 5⟩,
    ⟨(138698444527/1000000000000 : ℚ), (-710305181/2000000000 : ℚ), (38659800849/1000000000000 : ℚ), 4⟩,
    ⟨(140716165577/1000000000000 : ℚ), (-12700490897/10000000000 : ℚ), (166418608217/1000000000000 : ℚ), 4⟩,
    ⟨(142695116683/1000000000000 : ℚ), (-9527843173/5000000000 : ℚ), (256443225439/1000000000000 : ℚ), 4⟩,
    ⟨(18069905983/125000000000 : ℚ), (-4721892993/2000000000 : ℚ), (160915417967/500000000000 : ℚ), 4⟩,
    ⟨(146236921603/1000000000000 : ℚ), (-26922863727/10000000000 : ℚ), (184999232793/500000000000 : ℚ), 4⟩,
    ⟨(1845795823/12500000000 : ℚ), (-29322923053/10000000000 : ℚ), (202631753639/500000000000 : ℚ), 4⟩,
    ⟨(74392325797/500000000000 : ℚ), (-1550108653/500000000 : ℚ), (215076273851/500000000000 : ℚ), 4⟩,
    ⟨(149556800011/1000000000000 : ℚ), (-6414446829/2000000000 : ℚ), (111528577639/250000000000 : ℚ), 4⟩,
    ⟨(149950437861/1000000000000 : ℚ), (-32593933709/10000000000 : ℚ), (453926900439/1000000000000 : ℚ), 4⟩,
    ⟨(3/20 : ℚ), (-6531711283/2000000000 : ℚ), (454896080793/1000000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control616.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control616.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate616
