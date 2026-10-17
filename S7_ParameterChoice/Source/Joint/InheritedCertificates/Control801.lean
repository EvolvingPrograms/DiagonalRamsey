import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate801
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (82343056154033/485490473932800 : ℚ), (5431278873801/10000000000 : ℚ), (-92236107386213/1000000000000 : ℚ)⟩,
  ⟨(82343056154033/485490473932800 : ℚ), (6588127361527/38646590411300 : ℚ), (576374134473/10000000000 : ℚ), (-494652561609/50000000000 : ℚ)⟩,
  ⟨(6588127361527/38646590411300 : ℚ), (907972971673/5282472044550 : ℚ), (4747705759/250000000 : ℚ), (-3304923870653/1000000000000 : ℚ)⟩,
  ⟨(907972971673/5282472044550 : ℚ), (748220650831/4305379977800 : ℚ), (84258789469/10000000000 : ℚ), (-1488977927307/1000000000000 : ℚ)⟩,
  ⟨(748220650831/4305379977800 : ℚ), (379665165379/2155873674100 : ℚ), (41204989691/10000000000 : ℚ), (-185189319119/250000000000 : ℚ)⟩,
  ⟨(379665165379/2155873674100 : ℚ), (54804161242/306588375625 : ℚ), (392925059/200000000 : ℚ), (-361092111097/1000000000000 : ℚ)⟩,
  ⟨(54804161242/306588375625 : ℚ), (138258362349/761216472800 : ℚ), (295308717/400000000 : ℚ), (-141875466129/1000000000000 : ℚ)⟩,
  ⟨(138258362349/761216472800 : ℚ), (46454085013/251624465000 : ℚ), (-229446803/10000000000 : ℚ), (-180855189/50000000000 : ℚ)⟩,
  ⟨(46454085013/251624465000 : ℚ), (16337331508/87083510475 : ℚ), (-5261936103/10000000000 : ℚ), (44645533123/500000000000 : ℚ)⟩,
  ⟨(16337331508/87083510475 : ℚ), (473810823/2487473006 : ℚ), (-4372638261/5000000000 : ℚ), (77320196139/500000000000 : ℚ)⟩,
  ⟨(473810823/2487473006 : ℚ), (8712132268/45111060775 : ℚ), (-1404093691/1250000000 : ℚ), (101010737289/500000000000 : ℚ)⟩,
  ⟨(8712132268/45111060775 : ℚ), (25482070223/130379055700 : ℚ), (-13037191959/10000000000 : ℚ), (4737400073/20000000000 : ℚ)⟩,
  ⟨(25482070223/130379055700 : ℚ), (1283480071/6503605150 : ℚ), (-3585245629/2500000000 : ℚ), (262352073873/1000000000000 : ℚ)⟩,
  ⟨(1283480071/6503605150 : ℚ), (2879331932/14486294375 : ℚ), (-15251487237/10000000000 : ℚ), (280320794867/1000000000000 : ℚ)⟩,
  ⟨(2879331932/14486294375 : ℚ), (256164289/1283178450 : ℚ), (-3957734753/2500000000 : ℚ), (58367624519/200000000000 : ℚ)⟩,
  ⟨(256164289/1283178450 : ℚ), (233016683/1165298000 : ℚ), (-16113238271/10000000000 : ℚ), (297473736953/1000000000000 : ℚ)⟩,
  ⟨(233016683/1165298000 : ℚ), (1/5 : ℚ), (-16148197211/10000000000 : ℚ), (149086393501/500000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (3851802789/20000000000 : ℚ), (-2/5 : ℚ), (187604421391/500000000000 : ℚ)⟩,
  ⟨(3851802789/20000000000 : ℚ), (3886761729/20000000000 : ℚ), (-233016683/582649000 : ℚ), (4372135832941494847/11652980000000000000 : ℚ)⟩,
  ⟨(3886761729/20000000000 : ℚ), (1042265247/5000000000 : ℚ), (-256164289/641589225 : ℚ), (3208512294541518873/8554523000000000000 : ℚ)⟩,
  ⟨(1042265247/5000000000 : ℚ), (4748512763/20000000000 : ℚ), (-5758663864/14486294375 : ℚ), (217122559867155831389/579451775000000000000 : ℚ)⟩,
  ⟨(4748512763/20000000000 : ℚ), (1414754371/5000000000 : ℚ), (-1283480071/3251802575 : ℚ), (48651158299381587647/130072103000000000000 : ℚ)⟩,
  ⟨(1414754371/5000000000 : ℚ), (6962808041/20000000000 : ℚ), (-25482070223/65189527850 : ℚ), (486255637445456596193/1303790557000000000000 : ℚ)⟩,
  ⟨(6962808041/20000000000 : ℚ), (1095906309/2500000000 : ℚ), (-17424264536/45111060775 : ℚ), (335030951828364370551/902221215500000000000 : ℚ)⟩,
  ⟨(1095906309/2500000000 : ℚ), (5627361739/10000000000 : ℚ), (-473810823/1243736503 : ℚ), (229481195200909021767/621868251500000000000 : ℚ)⟩,
  ⟨(5627361739/10000000000 : ℚ), (14738063897/20000000000 : ℚ), (-32674663016/87083510475 : ℚ), (637076861397899931889/1741670209500000000000 : ℚ)⟩,
  ⟨(14738063897/20000000000 : ℚ), (19770553197/20000000000 : ℚ), (-46454085013/125812232500 : ℚ), (909321440932557159561/2516244650000000000000 : ℚ)⟩,
  ⟨(19770553197/20000000000 : ℚ), (1095308717/800000000 : ℚ), (-138258362349/380608236400 : ℚ), (2705910317939374907913/7612164728000000000000 : ℚ)⟩,
  ⟨(1095308717/800000000 : ℚ), (792925059/400000000 : ℚ), (-109608322484/306588375625 : ℚ), (170514112222496879327/490541401000000000000 : ℚ)⟩,
  ⟨(792925059/400000000 : ℚ), (61204989691/20000000000 : ℚ), (-379665165379/1077936837050 : ℚ), (7267611420527268903173/21558736741000000000000 : ℚ)⟩,
  ⟨(61204989691/20000000000 : ℚ), (104258789469/20000000000 : ℚ), (-748220650831/2152689988900 : ℚ), (13902421755210372160893/43053799778000000000000 : ℚ)⟩,
  ⟨(104258789469/20000000000 : ℚ), (5247705759/500000000 : ℚ), (-907972971673/2641236022275 : ℚ), (10672880091790208037579/35216480297000000000000 : ℚ)⟩,
  ⟨(5247705759/500000000 : ℚ), (596374134473/20000000000 : ℚ), (-6588127361527/19323295205650 : ℚ), (105661764147881404663931/386465904113000000000000 : ℚ)⟩,
  ⟨(596374134473/20000000000 : ℚ), (32/1 : ℚ), (-82343056154033/242745236966400 : ℚ), (1077447530197674438104569/4854904739328000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (762499/1000000 : ℚ)
  x := (465109965367/1000000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (2/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(6780004243/40000000000 : ℚ), (5431278873801/10000000000 : ℚ), (-92236107386213/1000000000000 : ℚ), 12⟩,
    ⟨(5315148081/31250000000 : ℚ), (576374134473/10000000000 : ℚ), (-494652561609/50000000000 : ℚ), 9⟩,
    ⟨(42807884131/250000000000 : ℚ), (4747705759/250000000 : ℚ), (-3304923870653/1000000000000 : ℚ), 8⟩,
    ⟨(10806026817/62500000000 : ℚ), (84258789469/10000000000 : ℚ), (-1488977927307/1000000000000 : ℚ), 7⟩,
    ⟨(175015435347/1000000000000 : ℚ), (41204989691/10000000000 : ℚ), (-185189319119/250000000000 : ℚ), 6⟩,
    ⟨(22188390391/125000000000 : ℚ), (392925059/200000000 : ℚ), (-361092111097/1000000000000 : ℚ), 6⟩,
    ⟨(721102953/4000000000 : ℚ), (295308717/400000000 : ℚ), (-141875466129/1000000000000 : ℚ), 5⟩,
    ⟨(183214884387/1000000000000 : ℚ), (-229446803/10000000000 : ℚ), (-180855189/50000000000 : ℚ), 5⟩,
    ⟨(931058059/5000000000 : ℚ), (-5261936103/10000000000 : ℚ), (44645533123/500000000000 : ℚ), 5⟩,
    ⟨(189150757937/1000000000000 : ℚ), (-4372638261/5000000000 : ℚ), (77320196139/500000000000 : ℚ), 5⟩,
    ⟨(191919373059/1000000000000 : ℚ), (-1404093691/1250000000 : ℚ), (101010737289/500000000000 : ℚ), 4⟩,
    ⟨(4860276521/25000000000 : ℚ), (-13037191959/10000000000 : ℚ), (4737400073/20000000000 : ℚ), 4⟩,
    ⟨(39306013423/200000000000 : ℚ), (-3585245629/2500000000 : ℚ), (262352073873/1000000000000 : ℚ), 4⟩,
    ⟨(198194959663/1000000000000 : ℚ), (-15251487237/10000000000 : ℚ), (280320794867/1000000000000 : ℚ), 4⟩,
    ⟨(39868351519/200000000000 : ℚ), (-3957734753/2500000000 : ℚ), (58367624519/200000000000 : ℚ), 4⟩,
    ⟨(199926390111/1000000000000 : ℚ), (-16113238271/10000000000 : ℚ), (297473736953/1000000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-16148197211/10000000000 : ℚ), (149086393501/500000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control801.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control801.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate801
