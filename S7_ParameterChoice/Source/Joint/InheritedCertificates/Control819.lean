import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate819
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (4529713624071/24261980362330 : ℚ), (1356782339007/5000000000 : ℚ), (-12696480952683/250000000000 : ℚ)⟩,
  ⟨(4529713624071/24261980362330 : ℚ), (453025147176/2403355333975 : ℚ), (287366641781/10000000000 : ℚ), (-2744393785011/500000000000 : ℚ)⟩,
  ⟨(453025147176/2403355333975 : ℚ), (499519026209/2609290406850 : ℚ), (95098215063/10000000000 : ℚ), (-932293196307/500000000000 : ℚ)⟩,
  ⟨(499519026209/2609290406850 : ℚ), (68616735853/351157911750 : ℚ), (21456203463/5000000000 : ℚ), (-216387085049/250000000000 : ℚ)⟩,
  ⟨(68616735853/351157911750 : ℚ), (208971437463/1043645886400 : ℚ), (21842932221/10000000000 : ℚ), (-226923962539/500000000000 : ℚ)⟩,
  ⟨(208971437463/1043645886400 : ℚ), (120714624769/586718323100 : ℚ), (11406473357/10000000000 : ℚ), (-48975297523/200000000000 : ℚ)⟩,
  ⟨(120714624769/586718323100 : ℚ), (76176439761/359781920600 : ℚ), (2769645063/5000000000 : ℚ), (-62080931423/500000000000 : ℚ)⟩,
  ⟨(76176439761/359781920600 : ℚ), (25608490469/117494974150 : ℚ), (48536773/250000000 : ℚ), (-9597084617/200000000000 : ℚ)⟩,
  ⟨(25608490469/117494974150 : ℚ), (1896649433/8460429200 : ℚ), (-408428563/10000000000 : ℚ), (3231557853/1000000000000 : ℚ)⟩,
  ⟨(1896649433/8460429200 : ℚ), (2177163238/9459172425 : ℚ), (-2015910111/10000000000 : ℚ), (981697427/25000000000 : ℚ)⟩,
  ⟨(2177163238/9459172425 : ℚ), (19204324861/81484979000 : ℚ), (-1575505401/5000000000 : ℚ), (1021778999/15625000000 : ℚ)⟩,
  ⟨(19204324861/81484979000 : ℚ), (14027763243/58324610800 : ℚ), (-247866287/625000000 : ℚ), (84598180797/1000000000000 : ℚ)⟩,
  ⟨(14027763243/58324610800 : ℚ), (9878340639/40406090200 : ℚ), (-45491067/100000000 : ℚ), (2465648601/25000000000 : ℚ)⟩,
  ⟨(9878340639/40406090200 : ℚ), (6323245469/25556569300 : ℚ), (-2476583801/5000000000 : ℚ), (108504284679/1000000000000 : ℚ)⟩,
  ⟨(6323245469/25556569300 : ℚ), (3091052261/12402180500 : ℚ), (-1041746659/2000000000 : ℚ), (28706882537/250000000000 : ℚ)⟩,
  ⟨(3091052261/12402180500 : ℚ), (383264143/1533527100 : ℚ), (-53327551/100000000 : ℚ), (117918582409/1000000000000 : ℚ)⟩,
  ⟨(383264143/1533527100 : ℚ), (1/4 : ℚ), (-5348090371/10000000000 : ℚ), (14787730819/125000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (1651909629/7000000000 : ℚ), (-7/40 : ℚ), (159599587277/1000000000000 : ℚ)⟩,
  ⟨(1651909629/7000000000 : ℚ), (16672449/70000000 : ℚ), (-383264143/2190753000 : ℚ), (815769534982489513/5111757000000000000 : ℚ)⟩,
  ⟨(16672449/70000000 : ℚ), (358253341/1400000000 : ℚ), (-21637365827/124021805000 : ℚ), (3955603310238229429/24804361000000000000 : ℚ)⟩,
  ⟨(358253341/1400000000 : ℚ), (1023416199/3500000000 : ℚ), (-44262718283/255565693000 : ℚ), (40672596393913822209/255565693000000000000 : ℚ)⟩,
  ⟨(1023416199/3500000000 : ℚ), (24508933/70000000 : ℚ), (-9878340639/57722986000 : ℚ), (3203082339832337139/20203045100000000000 : ℚ)⟩,
  ⟨(24508933/70000000 : ℚ), (189633713/437500000 : ℚ), (-98194342701/583246108000 : ℚ), (4595187447770538411/29162305400000000000 : ℚ)⟩,
  ⟨(189633713/437500000 : ℚ), (1924494599/3500000000 : ℚ), (-134430274027/814849790000 : ℚ), (63601704360805852459/407424895000000000000 : ℚ)⟩,
  ⟨(1924494599/3500000000 : ℚ), (4984089889/7000000000 : ℚ), (-7620071333/47295862125 : ℚ), (3641398843421760193/23647931062500000000 : ℚ)⟩,
  ⟨(4984089889/7000000000 : ℚ), (6591571437/7000000000 : ℚ), (-13276546031/84604292000 : ℚ), (12775303892775150297/84604292000000000000 : ℚ)⟩,
  ⟨(6591571437/7000000000 : ℚ), (223536773/175000000 : ℚ), (-179259433283/1174949741500 : ℚ), (69038844953668711581/469979896600000000000 : ℚ)⟩,
  ⟨(223536773/175000000 : ℚ), (6269645063/3500000000 : ℚ), (-533235078327/3597819206000 : ℚ), (50848654412886447961/359781920600000000000 : ℚ)⟩,
  ⟨(6269645063/3500000000 : ℚ), (18406473357/7000000000 : ℚ), (-120714624769/838169033000 : ℚ), (196298825702485898867/1466795807750000000000 : ℚ)⟩,
  ⟨(18406473357/7000000000 : ℚ), (28842932221/7000000000 : ℚ), (-1462800062241/10436458864000 : ℚ), (1290783806281948203931/10436458864000000000000 : ℚ)⟩,
  ⟨(28842932221/7000000000 : ℚ), (24956203463/3500000000 : ℚ), (-480317150971/3511579117500 : ℚ), (24086560325608141303/219473694843750000000 : ℚ)⟩,
  ⟨(24956203463/3500000000 : ℚ), (102098215063/7000000000 : ℚ), (-3496633183463/26092904068500 : ℚ), (586881774009809159027/6523226017125000000000 : ℚ)⟩,
  ⟨(102098215063/7000000000 : ℚ), (32/1 : ℚ), (-1585588015116/12016776669875 : ℚ), (2880844763723741358963/48067106679500000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (774999/1000000 : ℚ)
  x := (603640724447/1000000000000 : ℚ)
  μ := (1/4 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(46618895011/250000000000 : ℚ), (1356782339007/5000000000 : ℚ), (-12696480952683/250000000000 : ℚ), 12⟩,
    ⟨(93846619049/500000000000 : ℚ), (287366641781/10000000000 : ℚ), (-2744393785011/500000000000 : ℚ), 8⟩,
    ⟨(190081760289/1000000000000 : ℚ), (95098215063/10000000000 : ℚ), (-932293196307/500000000000 : ℚ), 7⟩,
    ⟨(3870987141/20000000000 : ℚ), (21456203463/5000000000 : ℚ), (-216387085049/250000000000 : ℚ), 6⟩,
    ⟨(9898138529/50000000000 : ℚ), (21842932221/10000000000 : ℚ), (-226923962539/500000000000 : ℚ), 6⟩,
    ⟨(1625219167/8000000000 : ℚ), (11406473357/10000000000 : ℚ), (-48975297523/200000000000 : ℚ), 5⟩,
    ⟨(208918798543/1000000000000 : ℚ), (2769645063/5000000000 : ℚ), (-62080931423/500000000000 : ℚ), 5⟩,
    ⟨(53760094741/250000000000 : ℚ), (48536773/250000000 : ℚ), (-9597084617/200000000000 : ℚ), 4⟩,
    ⟨(55320472059/250000000000 : ℚ), (-408428563/10000000000 : ℚ), (3231557853/1000000000000 : ℚ), 4⟩,
    ⟨(227403468657/1000000000000 : ℚ), (-2015910111/10000000000 : ℚ), (981697427/25000000000 : ℚ), 4⟩,
    ⟨(9326794853/40000000000 : ℚ), (-1575505401/5000000000 : ℚ), (1021778999/15625000000 : ℚ), 4⟩,
    ⟨(11917974831/50000000000 : ℚ), (-247866287/625000000 : ℚ), (84598180797/1000000000000 : ℚ), 4⟩,
    ⟨(4855458203/20000000000 : ℚ), (-45491067/100000000 : ℚ), (2465648601/25000000000 : ℚ), 4⟩,
    ⟨(246240506911/1000000000000 : ℚ), (-2476583801/5000000000 : ℚ), (108504284679/1000000000000 : ℚ), 4⟩,
    ⟨(124314514551/500000000000 : ℚ), (-1041746659/2000000000 : ℚ), (28706882537/250000000000 : ℚ), 4⟩,
    ⟨(62461671789/250000000000 : ℚ), (-53327551/100000000 : ℚ), (117918582409/1000000000000 : ℚ), 4⟩,
    ⟨(1/4 : ℚ), (-5348090371/10000000000 : ℚ), (14787730819/125000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control819.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control819.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate819
