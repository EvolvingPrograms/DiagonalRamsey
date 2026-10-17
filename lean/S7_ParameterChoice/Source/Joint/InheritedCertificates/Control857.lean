import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate857
open RamseyAnalytic ControlGeometry
def degrees : List Cell := [
  ⟨(0/1 : ℚ), (18856096134881/119533441477850 : ℚ), (1337146727033/5000000000 : ℚ), (-21133720558727/500000000000 : ℚ)⟩,
  ⟨(18856096134881/119533441477850 : ℚ), (603465262761/3796641749360 : ℚ), (283624624509/10000000000 : ℚ), (-1138812211923/250000000000 : ℚ)⟩,
  ⟨(603465262761/3796641749360 : ℚ), (831740525103/5168945461900 : ℚ), (93792537041/10000000000 : ℚ), (-1537922533887/1000000000000 : ℚ)⟩,
  ⟨(831740525103/5168945461900 : ℚ), (171375525097/1047805744150 : ℚ), (21051541211/5000000000 : ℚ), (-44136375549/62500000000 : ℚ)⟩,
  ⟨(171375525097/1047805744150 : ℚ), (10873153179/65194009025 : ℚ), (21146967539/10000000000 : ℚ), (-36343095859/100000000000 : ℚ)⟩,
  ⟨(10873153179/65194009025 : ℚ), (6699776053/39303658380 : ℚ), (2143185219/2000000000 : ℚ), (-94730253863/500000000000 : ℚ)⟩,
  ⟨(6699776053/39303658380 : ℚ), (63423730259/363550613200 : ℚ), (2410188669/5000000000 : ℚ), (-88963866931/1000000000000 : ℚ)⟩,
  ⟨(63423730259/363550613200 : ℚ), (1375920433/7703436400 : ℚ), (592435603/5000000000 : ℚ), (-798129271/31250000000 : ℚ)⟩,
  ⟨(1375920433/7703436400 : ℚ), (7506500129/41071569525 : ℚ), (-601597039/5000000000 : ℚ), (17113396751/1000000000000 : ℚ)⟩,
  ⟨(7506500129/41071569525 : ℚ), (10892896491/58325206450 : ℚ), (-2846056859/10000000000 : ℚ), (47139397267/1000000000000 : ℚ)⟩,
  ⟨(10892896491/58325206450 : ℚ), (4007824517/21044809475 : ℚ), (-1003140247/2500000000 : ℚ), (68925190249/1000000000000 : ℚ)⟩,
  ⟨(4007824517/21044809475 : ℚ), (11724966513/60541639300 : ℚ), (-4854353367/10000000000 : ℚ), (84956488317/1000000000000 : ℚ)⟩,
  ⟨(11724966513/60541639300 : ℚ), (4133758957/21056894850 : ℚ), (-34123561/62500000 : ℚ), (9668145483/100000000000 : ℚ)⟩,
  ⟨(4133758957/21056894850 : ℚ), (5298170091/26720753000 : ℚ), (-5880907657/10000000000 : ℚ), (13118621593/125000000000 : ℚ)⟩,
  ⟨(5298170091/26720753000 : ℚ), (64799183/324825560 : ℚ), (-6148115187/10000000000 : ℚ), (22049428567/200000000000 : ℚ)⟩,
  ⟨(64799183/324825560 : ℚ), (64296357/321564100 : ℚ), (-6278045411/10000000000 : ℚ), (22567822031/200000000000 : ℚ)⟩,
  ⟨(64296357/321564100 : ℚ), (1/5 : ℚ), (-196691363/312500000 : ℚ), (5658029597/50000000000 : ℚ)⟩ ]
def cells : List Cell := [
  ⟨(0/1 : ℚ), (53308637/250000000 : ℚ), (-4/25 : ℚ), (7363905981/50000000000 : ℚ)⟩,
  ⟨(53308637/250000000 : ℚ), (1721954589/8000000000 : ℚ), (-64296357/401955125 : ℚ), (118391369002516657/803910250000000000 : ℚ)⟩,
  ⟨(1721954589/8000000000 : ℚ), (1851884813/8000000000 : ℚ), (-64799183/406031950 : ℚ), (95622304398059281/649651120000000000 : ℚ)⟩,
  ⟨(1851884813/8000000000 : ℚ), (2119092343/8000000000 : ℚ), (-5298170091/33400941250 : ℚ), (39270467454711275533/267207530000000000000 : ℚ)⟩,
  ⟨(2119092343/8000000000 : ℚ), (15876439/50000000 : ℚ), (-8267517914/52642237125 : ℚ), (6171762358089121187/42113789700000000000 : ℚ)⟩,
  ⟨(15876439/50000000 : ℚ), (3145646633/8000000000 : ℚ), (-11724966513/75677049125 : ℚ), (8831665215248098131/60541639300000000000 : ℚ)⟩,
  ⟨(3145646633/8000000000 : ℚ), (996859753/2000000000 : ℚ), (-16031298068/105224047375 : ℚ), (121944523202076741187/841792379000000000000 : ℚ)⟩,
  ⟨(996859753/2000000000 : ℚ), (5153943141/8000000000 : ℚ), (-21785792982/145813016125 : ℚ), (33454207972270330381/233300825800000000000 : ℚ)⟩,
  ⟨(5153943141/8000000000 : ℚ), (3398402961/4000000000 : ℚ), (-30026000516/205357847625 : ℚ), (25799540077758675587/182540309000000000000 : ℚ)⟩,
  ⟨(3398402961/4000000000 : ℚ), (4592435603/4000000000 : ℚ), (-1375920433/9629295500 : ℚ), (1067018378180815559/7703436400000000000 : ℚ)⟩,
  ⟨(4592435603/4000000000 : ℚ), (6410188669/4000000000 : ℚ), (-63423730259/454438266500 : ℚ), (515460495105079947/3826848560000000000 : ℚ)⟩,
  ⟨(6410188669/4000000000 : ℚ), (3743185219/1600000000 : ℚ), (-6699776053/49129572975 : ℚ), (254638013696791282981/1965182919000000000000 : ℚ)⟩,
  ⟨(3743185219/1600000000 : ℚ), (29146967539/8000000000 : ℚ), (-43492612716/325970045125 : ℚ), (159968461624158087467/1303880180500000000000 : ℚ)⟩,
  ⟨(29146967539/8000000000 : ℚ), (25051541211/4000000000 : ℚ), (-342751050194/2619514360375 : ℚ), (593513203427955489399/5239028720750000000000 : ℚ)⟩,
  ⟨(25051541211/4000000000 : ℚ), (101792537041/8000000000 : ℚ), (-831740525103/6461181827375 : ℚ), (517060118715834166617/5168945461900000000000 : ℚ)⟩,
  ⟨(101792537041/8000000000 : ℚ), (32/1 : ℚ), (-603465262761/4745802186700 : ℚ), (15194255590934274122889/189832087468000000000000 : ℚ)⟩ ]
def witness : ControlCertificate.Data where
  p := (824999/1000000 : ℚ)
  x := (167378669469/250000000000 : ℚ)
  μ := (1/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := [
    ⟨(157597552457/1000000000000 : ℚ), (1337146727033/5000000000 : ℚ), (-21133720558727/500000000000 : ℚ), 12⟩,
    ⟨(79205168619/500000000000 : ℚ), (283624624509/10000000000 : ℚ), (-1138812211923/250000000000 : ℚ), 9⟩,
    ⟨(2500072999/15625000000 : ℚ), (93792537041/10000000000 : ℚ), (-1537922533887/1000000000000 : ℚ), 8⟩,
    ⟨(40579821791/250000000000 : ℚ), (21051541211/5000000000 : ℚ), (-44136375549/62500000000 : ℚ), 7⟩,
    ⟨(33053046711/200000000000 : ℚ), (21146967539/10000000000 : ℚ), (-36343095859/100000000000 : ℚ), 6⟩,
    ⟨(84364650021/500000000000 : ℚ), (2143185219/2000000000 : ℚ), (-94730253863/500000000000 : ℚ), 6⟩,
    ⟨(86289182247/500000000000 : ℚ), (2410188669/5000000000 : ℚ), (-88963866931/1000000000000 : ℚ), 5⟩,
    ⟨(176664509521/1000000000000 : ℚ), (592435603/5000000000 : ℚ), (-798129271/31250000000 : ℚ), 5⟩,
    ⟨(180830706861/1000000000000 : ℚ), (-601597039/5000000000 : ℚ), (17113396751/1000000000000 : ℚ), 5⟩,
    ⟨(11557303243/62500000000 : ℚ), (-2846056859/10000000000 : ℚ), (47139397267/1000000000000 : ℚ), 5⟩,
    ⟨(188765916339/1000000000000 : ℚ), (-1003140247/2500000000 : ℚ), (68925190249/1000000000000 : ℚ), 5⟩,
    ⟨(192229982827/1000000000000 : ℚ), (-4854353367/10000000000 : ℚ), (84956488317/1000000000000 : ℚ), 5⟩,
    ⟨(97587964609/500000000000 : ℚ), (-34123561/62500000 : ℚ), (9668145483/100000000000 : ℚ), 4⟩,
    ⟨(98745272223/500000000000 : ℚ), (-5880907657/10000000000 : ℚ), (13118621593/125000000000 : ℚ), 4⟩,
    ⟨(24885609893/125000000000 : ℚ), (-6148115187/10000000000 : ℚ), (22049428567/200000000000 : ℚ), 4⟩,
    ⟨(7995906557/40000000000 : ℚ), (-6278045411/10000000000 : ℚ), (22567822031/200000000000 : ℚ), 4⟩,
    ⟨(1/5 : ℚ), (-196691363/312500000 : ℚ), (5658029597/50000000000 : ℚ), 4⟩]
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
theorem certOK : JointInheritedControls.control857.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control857.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate857
