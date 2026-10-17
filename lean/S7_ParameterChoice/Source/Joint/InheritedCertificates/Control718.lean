import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate718
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (8761077286551/43824133691980 : ℚ), (2451371285841/5000000000 : ℚ), (-4909466554373/50000000000 : ℚ)⟩,
  ⟨(8761077286551/43824133691980 : ℚ), (3504806591129/17407699229900 : ℚ), (130082300621/2500000000 : ℚ), (-211571164439/20000000000 : ℚ)⟩,
  ⟨(3504806591129/17407699229900 : ℚ), (322025304489/1581154164200 : ℚ), (86087608943/5000000000 : ℚ), (-892236259923/250000000000 : ℚ)⟩,
  ⟨(322025304489/1581154164200 : ℚ), (265375181099/1283240882400 : ℚ), (38652984017/5000000000 : ℚ), (-818396606379/500000000000 : ℚ)⟩,
  ⟨(265375181099/1283240882400 : ℚ), (14428211413/68502366775 : ℚ), (19404370781/5000000000 : ℚ), (-840667669461/1000000000000 : ℚ)⟩,
  ⟨(14428211413/68502366775 : ℚ), (233265915961/1085027198900 : ℚ), (3925615773/2000000000 : ℚ), (-436677749897/1000000000000 : ℚ)⟩,
  ⟨(233265915961/1085027198900 : ℚ), (7005151167/31882003700 : ℚ), (2194451719/2500000000 : ℚ), (-12713239621/62500000000 : ℚ)⟩,
  ⟨(7005151167/31882003700 : ℚ), (24707041391/109982050225 : ℚ), (2082586099/10000000000 : ℚ), (-56303659429/1000000000000 : ℚ)⟩,
  ⟨(24707041391/109982050225 : ℚ), (8684034077/37827172250 : ℚ), (-231669591/1000000000 : ℚ), (8504901227/200000000000 : ℚ)⟩,
  ⟨(8684034077/37827172250 : ℚ), (50320193821/214761922600 : ℚ), (-534286969/1000000000 : ℚ), (111996778751/1000000000000 : ℚ)⟩,
  ⟨(50320193821/214761922600 : ℚ), (9239494424/38712383875 : ℚ), (-1872622229/2500000000 : ℚ), (40579243143/250000000000 : ℚ)⟩,
  ⟨(9239494424/38712383875 : ℚ), (13489028039/55626326950 : ℚ), (-9038984271/10000000000 : ℚ), (49818737567/250000000000 : ℚ)⟩,
  ⟨(13489028039/55626326950 : ℚ), (6329740429/25769390300 : ℚ), (-1015151081/1000000000 : ℚ), (113126503173/500000000000 : ℚ)⟩,
  ⟨(6329740429/25769390300 : ℚ), (12151917577/49007553800 : ℚ), (-10924592519/10000000000 : ℚ), (245242227633/1000000000000 : ℚ)⟩,
  ⟨(12151917577/49007553800 : ℚ), (1484887331/5953971200 : ℚ), (-11414668057/10000000000 : ℚ), (25739414521/100000000000 : ℚ)⟩,
  ⟨(1484887331/5953971200 : ℚ), (368211117/1473202100 : ℚ), (-2330565381/2000000000 : ℚ), (131666847267/500000000000 : ℚ)⟩,
  ⟨(368211117/1473202100 : ℚ), (1/4 : ℚ), (-11682290947/10000000000 : ℚ), (8252191149/31250000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3317709053/15000000000 : ℚ), (-3/8 : ℚ), (347012843093/1000000000000 : ℚ)⟩,
  ⟨(3317709053/15000000000 : ℚ), (223144873/1000000000 : ℚ), (-1104633351/2946404200 : ℚ), (5111903861984770329/14732021000000000000 : ℚ)⟩,
  ⟨(223144873/1000000000 : ℚ), (3585331943/15000000000 : ℚ), (-4454661993/11907942400 : ℚ), (1214646309169405509/3502336000000000000 : ℚ)⟩,
  ⟨(3585331943/15000000000 : ℚ), (4075407481/15000000000 : ℚ), (-36455752731/98015107600 : ℚ), (169711232449362135091/490075538000000000000 : ℚ)⟩,
  ⟨(4075407481/15000000000 : ℚ), (484848919/1500000000 : ℚ), (-18989221287/51538780600 : ℚ), (22248424579074242737/64423475750000000000 : ℚ)⟩,
  ⟨(484848919/1500000000 : ℚ), (1987005243/5000000000 : ℚ), (-40467084117/111252653900 : ℚ), (191257643674928606657/556263269500000000000 : ℚ)⟩,
  ⟨(1987005243/5000000000 : ℚ), (1877377771/3750000000 : ℚ), (-13859241636/38712383875 : ℚ), (132220855303935296381/387123838750000000000 : ℚ)⟩,
  ⟨(1877377771/3750000000 : ℚ), (965713031/1500000000 : ℚ), (-150960581463/429523845200 : ℚ), (181618776062392420309/536904806500000000000 : ℚ)⟩,
  ⟨(965713031/1500000000 : ℚ), (422776803/500000000 : ℚ), (-26052102231/75654344500 : ℚ), (50491225244264696987/151308689000000000000 : ℚ)⟩,
  ⟨(422776803/500000000 : ℚ), (17082586099/15000000000 : ℚ), (-74121124173/219964100450 : ℚ), (57621798851455759279/175971280360000000000 : ℚ)⟩,
  ⟨(17082586099/15000000000 : ℚ), (5944451719/3750000000 : ℚ), (-21015453501/63764007400 : ℚ), (5085768158219932433/15941001850000000000 : ℚ)⟩,
  ⟨(5944451719/3750000000 : ℚ), (2308538591/1000000000 : ℚ), (-699797747883/2170054397800 : ℚ), (834869544121750882283/2712567997250000000000 : ℚ)⟩,
  ⟨(2308538591/1000000000 : ℚ), (26904370781/7500000000 : ℚ), (-43284634239/137004733550 : ℚ), (801946595323987846093/2740094671000000000000 : ℚ)⟩,
  ⟨(26904370781/7500000000 : ℚ), (46152984017/7500000000 : ℚ), (-265375181099/855493921600 : ℚ), (1745856658541093206387/6416204412000000000000 : ℚ)⟩,
  ⟨(46152984017/7500000000 : ℚ), (93587608943/7500000000 : ℚ), (-966075913467/3162308328400 : ℚ), (384463341943466803599/1581154164200000000000 : ℚ)⟩,
  ⟨(93587608943/7500000000 : ℚ), (32/1 : ℚ), (-10514419773387/34815398459800 : ℚ), (17370859576420478200693/87038496149500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (699999/1000000 : ℚ)
  x := (52688709291/125000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/2 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(9986836847/50000000000 : ℚ), (2451371285841/5000000000 : ℚ), (-4909466554373/50000000000 : ℚ), 11⟩,
    ⟨(25087525069/125000000000 : ℚ), (130082300621/2500000000 : ℚ), (-211571164439/20000000000 : ℚ), 8⟩,
    ⟨(202590102409/1000000000000 : ℚ), (86087608943/5000000000 : ℚ), (-892236259923/250000000000 : ℚ), 7⟩,
    ⟨(102666907321/500000000000 : ℚ), (38652984017/5000000000 : ℚ), (-818396606379/500000000000 : ℚ), 6⟩,
    ⟨(20882589793/100000000000 : ℚ), (19404370781/5000000000 : ℚ), (-840667669461/1000000000000 : ℚ), 5⟩,
    ⟨(21293215347/100000000000 : ℚ), (3925615773/2000000000 : ℚ), (-436677749897/1000000000000 : ℚ), 5⟩,
    ⟨(54373695041/250000000000 : ℚ), (2194451719/2500000000 : ℚ), (-12713239621/62500000000 : ℚ), 5⟩,
    ⟨(222338438827/1000000000000 : ℚ), (2082586099/10000000000 : ℚ), (-56303659429/1000000000000 : ℚ), 4⟩,
    ⟨(227276990373/1000000000000 : ℚ), (-231669591/1000000000 : ℚ), (8504901227/200000000000 : ℚ), 4⟩,
    ⟨(232120649037/1000000000000 : ℚ), (-534286969/1000000000 : ℚ), (111996778751/1000000000000 : ℚ), 4⟩,
    ⟨(236683275731/1000000000000 : ℚ), (-1872622229/2500000000 : ℚ), (40579243143/250000000000 : ℚ), 4⟩,
    ⟨(240789531271/1000000000000 : ℚ), (-9038984271/10000000000 : ℚ), (49818737567/250000000000 : ℚ), 4⟩,
    ⟨(122140807279/500000000000 : ℚ), (-1015151081/1000000000 : ℚ), (113126503173/500000000000 : ℚ), 4⟩,
    ⟨(30878165849/125000000000 : ℚ), (-10924592519/10000000000 : ℚ), (245242227633/1000000000000 : ℚ), 4⟩,
    ⟨(248915228649/1000000000000 : ℚ), (-11414668057/10000000000 : ℚ), (25739414521/100000000000 : ℚ), 4⟩,
    ⟨(12493934613/50000000000 : ℚ), (-2330565381/2000000000 : ℚ), (131666847267/500000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-11682290947/10000000000 : ℚ), (8252191149/31250000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control718.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control718.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate718
