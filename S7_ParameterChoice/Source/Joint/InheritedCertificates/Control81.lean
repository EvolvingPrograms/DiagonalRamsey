import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate81
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(312523459613/1000000000000 : ℚ), (220954056451/50000000 : ℚ), (-1382417152977103/1000000000000 : ℚ), 13⟩,
    ⟨(156434842771/500000000000 : ℚ), (4874304654031/10000000000 : ℚ), (-30686729806483/200000000000 : ℚ), 9⟩,
    ⟨(313561303311/1000000000000 : ℚ), (433538472957/2500000000 : ℚ), (-11023002020961/200000000000 : ℚ), 8⟩,
    ⟨(9831145211/31250000000 : ℚ), (108923702433/1250000000 : ℚ), (-7006818488001/250000000000 : ℚ), 7⟩,
    ⟨(315973221633/1000000000000 : ℚ), (517702935821/10000000000 : ℚ), (-16880114685561/1000000000000 : ℚ), 6⟩,
    ⟨(317687711663/1000000000000 : ℚ), (339542988549/10000000000 : ℚ), (-5618750229437/500000000000 : ℚ), 6⟩,
    ⟨(319735986487/1000000000000 : ℚ), (23768174253/1000000000 : ℚ), (-7992222066277/1000000000000 : ℚ), 5⟩,
    ⟨(322113111631/1000000000000 : ℚ), (1742159421/100000000 : ℚ), (-2978084296553/500000000000 : ℚ), 5⟩,
    ⟨(40601670049/125000000000 : ℚ), (66067824973/5000000000 : ℚ), (-919100139627/200000000000 : ℚ), 5⟩,
    ⟨(163915113817/500000000000 : ℚ), (51445072187/5000000000 : ℚ), (-3641484129577/1000000000000 : ℚ), 4⟩,
    ⟨(16557822273/50000000000 : ℚ), (40900909819/5000000000 : ℚ), (-1473436371003/500000000000 : ℚ), 4⟩,
    ⟨(4184800009/12500000000 : ℚ), (33069188467/5000000000 : ℚ), (-606374944861/250000000000 : ℚ), 4⟩,
    ⟨(84676038579/250000000000 : ℚ), (54217926433/10000000000 : ℚ), (-31628377439/15625000000 : ℚ), 4⟩,
    ⟨(342907462253/1000000000000 : ℚ), (1798392393/400000000 : ℚ), (-1708794469743/1000000000000 : ℚ), 3⟩,
    ⟨(86845949599/250000000000 : ℚ), (37644417249/10000000000 : ℚ), (-728192620587/500000000000 : ℚ), 3⟩,
    ⟨(176061189429/500000000000 : ℚ), (31777853137/10000000000 : ℚ), (-1251262382711/1000000000000 : ℚ), 3⟩,
    ⟨(357111787983/1000000000000 : ℚ), (27012242867/10000000000 : ℚ), (-1082315384721/1000000000000 : ℚ), 3⟩,
    ⟨(362340005849/1000000000000 : ℚ), (23097002897/10000000000 : ℚ), (-94151425037/100000000000 : ℚ), 3⟩,
    ⟨(367794437221/1000000000000 : ℚ), (1984805767/1000000000 : ℚ), (-822938691843/1000000000000 : ℚ), 3⟩,
    ⟨(74692388379/200000000000 : ℚ), (8563916249/5000000000 : ℚ), (-28885856709/40000000000 : ℚ), 3⟩,
    ⟨(94832216589/250000000000 : ℚ), (741596001/500000000 : ℚ), (-158937901431/250000000000 : ℚ), 3⟩,
    ⟨(38538107667/100000000000 : ℚ), (50312477/39062500 : ℚ), (-112227454891/200000000000 : ℚ), 2⟩,
    ⟨(97900998133/250000000000 : ℚ), (175148339/156250000 : ℚ), (-15507970637/31250000000 : ℚ), 2⟩,
    ⟨(49747827799/125000000000 : ℚ), (610697043/625000000 : ℚ), (-439483308439/1000000000000 : ℚ), 2⟩,
    ⟨(101125399893/250000000000 : ℚ), (8525784847/10000000000 : ℚ), (-38952484329/100000000000 : ℚ), 2⟩,
    ⟨(205572609643/500000000000 : ℚ), (7441936953/10000000000 : ℚ), (-345332226961/1000000000000 : ℚ), 2⟩,
    ⟨(417897476471/1000000000000 : ℚ), (6494152653/10000000000 : ℚ), (-306052367871/1000000000000 : ℚ), 2⟩,
    ⟨(106185526087/250000000000 : ℚ), (1132334439/2000000000 : ℚ), (-135492479331/500000000000 : ℚ), 2⟩,
    ⟨(43166261361/100000000000 : ℚ), (4927447571/10000000000 : ℚ), (-119775466473/500000000000 : ℚ), 2⟩,
    ⟨(27415145759/62500000000 : ℚ), (855477749/2000000000 : ℚ), (-52817067477/250000000000 : ℚ), 2⟩,
    ⟨(89132889039/200000000000 : ℚ), (3699781197/10000000000 : ℚ), (-46433313647/250000000000 : ℚ), 2⟩,
    ⟨(11317800897/25000000000 : ℚ), (159241591/500000000 : ℚ), (-1626058303/10000000000 : ℚ), 2⟩,
    ⟨(459768125933/1000000000000 : ℚ), (1362155977/5000000000 : ℚ), (-1769975651/12500000000 : ℚ), 2⟩,
    ⟨(233407858309/500000000000 : ℚ), (2311274629/10000000000 : ℚ), (-61232456731/500000000000 : ℚ), 2⟩,
    ⟨(473837829669/1000000000000 : ℚ), (969914489/5000000000 : ℚ), (-104997003579/1000000000000 : ℚ), 2⟩,
    ⟨(480817548203/1000000000000 : ℚ), (401239767/2500000000 : ℚ), (-17802917891/200000000000 : ℚ), 2⟩,
    ⟨(97547611493/200000000000 : ℚ), (260475499/2000000000 : ℚ), (-74362815411/1000000000000 : ℚ), 2⟩,
    ⟨(247291342671/500000000000 : ℚ), (1028406383/10000000000 : ℚ), (-60907784789/1000000000000 : ℚ), 2⟩,
    ⟨(501334942527/1000000000000 : ℚ), (155976027/2000000000 : ℚ), (-3033333987/62500000000 : ℚ), 2⟩,
    ⟨(507978562241/1000000000000 : ℚ), (554065559/10000000000 : ℚ), (-37138427737/1000000000000 : ℚ), 2⟩,
    ⟨(514497539421/1000000000000 : ℚ), (69719187/2000000000 : ℚ), (-1331742919/50000000000 : ℚ), 2⟩,
    ⟨(520876169281/1000000000000 : ℚ), (80708187/5000000000 : ℚ), (-16945509913/1000000000000 : ℚ), 2⟩,
    ⟨(527099085143/1000000000000 : ℚ), (-9261681/10000000000 : ℚ), (-320110883/40000000000 : ℚ), 2⟩,
    ⟨(533151295457/1000000000000 : ℚ), (-16499847/1000000000 : ℚ), (126370479/500000000000 : ℚ), 2⟩,
    ⟨(269509109959/500000000000 : ℚ), (-19197363/625000000 : ℚ), (1968320269/250000000000 : ℚ), 2⟩,
    ⟨(34042857787/62500000000 : ℚ), (-436933921/10000000000 : ℚ), (1863111193/125000000000 : ℚ), 2⟩,
    ⟨(137535038991/250000000000 : ℚ), (-555374101/10000000000 : ℚ), (21388181697/1000000000000 : ℚ), 2⟩,
    ⟨(55536837383/100000000000 : ℚ), (-82924737/1250000000 : ℚ), (27359017007/1000000000000 : ℚ), 2⟩,
    ⟨(112071556591/200000000000 : ℚ), (-761813389/10000000000 : ℚ), (32849070781/1000000000000 : ℚ), 2⟩,
    ⟨(565096363417/1000000000000 : ℚ), (-851331059/10000000000 : ℚ), (4735790677/125000000000 : ℚ), 2⟩,
    ⟨(14239317489/25000000000 : ℚ), (-93257559/1000000000 : ℚ), (8499098309/200000000000 : ℚ), 2⟩,
    ⟨(573776007497/1000000000000 : ℚ), (-503047981/5000000000 : ℚ), (4669837137/100000000000 : ℚ), 2⟩,
    ⟨(577696161093/1000000000000 : ℚ), (-107237407/1000000000 : ℚ), (2020566837/40000000000 : ℚ), 2⟩,
    ⟨(581323716353/1000000000000 : ℚ), (-565916049/5000000000 : ℚ), (5395976961/100000000000 : ℚ), 2⟩,
    ⟨(584649934179/1000000000000 : ℚ), (-1184838827/10000000000 : ℚ), (11409990569/200000000000 : ℚ), 2⟩,
    ⟨(587666801421/1000000000000 : ℚ), (-615857509/5000000000 : ℚ), (7474701481/125000000000 : ℚ), 2⟩,
    ⟨(295183525091/500000000000 : ℚ), (-1272738001/10000000000 : ℚ), (7776739437/125000000000 : ℚ), 2⟩,
    ⟨(296372087663/500000000000 : ℚ), (-1308145567/10000000000 : ℚ), (1286169141/20000000000 : ℚ), 1⟩,
    ⟨(11895849003/20000000000 : ℚ), (-1338139251/10000000000 : ℚ), (66089378933/1000000000000 : ℚ), 1⟩,
    ⟨(29825347009/50000000000 : ℚ), (-1362887073/10000000000 : ℚ), (8445434699/125000000000 : ℚ), 1⟩,
    ⟨(597883515061/1000000000000 : ℚ), (-1382525793/10000000000 : ℚ), (68736290221/1000000000000 : ℚ), 1⟩,
    ⟨(299459429251/500000000000 : ℚ), (-174645341/1250000000 : ℚ), (69612165137/1000000000000 : ℚ), 1⟩,
    ⟨(599610476271/1000000000000 : ℚ), (-281375433/2000000000 : ℚ), (14038863349/200000000000 : ℚ), 1⟩,
    ⟨(2999783511/5000000000 : ℚ), (-282344279/2000000000 : ℚ), (70484865691/1000000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-353081579/2500000000 : ℚ), (70521159611/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (387499/1000000 : ℚ)
  x := (212852443473/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/4 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
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
theorem row17 : JointControlDomain.rowCheck data (data.tangents.get ⟨17, by decide⟩) = true := by decide +kernel
theorem row18 : JointControlDomain.rowCheck data (data.tangents.get ⟨18, by decide⟩) = true := by decide +kernel
theorem row19 : JointControlDomain.rowCheck data (data.tangents.get ⟨19, by decide⟩) = true := by decide +kernel
theorem row20 : JointControlDomain.rowCheck data (data.tangents.get ⟨20, by decide⟩) = true := by decide +kernel
theorem row21 : JointControlDomain.rowCheck data (data.tangents.get ⟨21, by decide⟩) = true := by decide +kernel
theorem row22 : JointControlDomain.rowCheck data (data.tangents.get ⟨22, by decide⟩) = true := by decide +kernel
theorem row23 : JointControlDomain.rowCheck data (data.tangents.get ⟨23, by decide⟩) = true := by decide +kernel
theorem row24 : JointControlDomain.rowCheck data (data.tangents.get ⟨24, by decide⟩) = true := by decide +kernel
theorem row25 : JointControlDomain.rowCheck data (data.tangents.get ⟨25, by decide⟩) = true := by decide +kernel
theorem row26 : JointControlDomain.rowCheck data (data.tangents.get ⟨26, by decide⟩) = true := by decide +kernel
theorem row27 : JointControlDomain.rowCheck data (data.tangents.get ⟨27, by decide⟩) = true := by decide +kernel
theorem row28 : JointControlDomain.rowCheck data (data.tangents.get ⟨28, by decide⟩) = true := by decide +kernel
theorem row29 : JointControlDomain.rowCheck data (data.tangents.get ⟨29, by decide⟩) = true := by decide +kernel
theorem row30 : JointControlDomain.rowCheck data (data.tangents.get ⟨30, by decide⟩) = true := by decide +kernel
theorem row31 : JointControlDomain.rowCheck data (data.tangents.get ⟨31, by decide⟩) = true := by decide +kernel
theorem row32 : JointControlDomain.rowCheck data (data.tangents.get ⟨32, by decide⟩) = true := by decide +kernel
theorem row33 : JointControlDomain.rowCheck data (data.tangents.get ⟨33, by decide⟩) = true := by decide +kernel
theorem row34 : JointControlDomain.rowCheck data (data.tangents.get ⟨34, by decide⟩) = true := by decide +kernel
theorem row35 : JointControlDomain.rowCheck data (data.tangents.get ⟨35, by decide⟩) = true := by decide +kernel
theorem row36 : JointControlDomain.rowCheck data (data.tangents.get ⟨36, by decide⟩) = true := by decide +kernel
theorem row37 : JointControlDomain.rowCheck data (data.tangents.get ⟨37, by decide⟩) = true := by decide +kernel
theorem row38 : JointControlDomain.rowCheck data (data.tangents.get ⟨38, by decide⟩) = true := by decide +kernel
theorem row39 : JointControlDomain.rowCheck data (data.tangents.get ⟨39, by decide⟩) = true := by decide +kernel
theorem row40 : JointControlDomain.rowCheck data (data.tangents.get ⟨40, by decide⟩) = true := by decide +kernel
theorem row41 : JointControlDomain.rowCheck data (data.tangents.get ⟨41, by decide⟩) = true := by decide +kernel
theorem row42 : JointControlDomain.rowCheck data (data.tangents.get ⟨42, by decide⟩) = true := by decide +kernel
theorem row43 : JointControlDomain.rowCheck data (data.tangents.get ⟨43, by decide⟩) = true := by decide +kernel
theorem row44 : JointControlDomain.rowCheck data (data.tangents.get ⟨44, by decide⟩) = true := by decide +kernel
theorem row45 : JointControlDomain.rowCheck data (data.tangents.get ⟨45, by decide⟩) = true := by decide +kernel
theorem row46 : JointControlDomain.rowCheck data (data.tangents.get ⟨46, by decide⟩) = true := by decide +kernel
theorem row47 : JointControlDomain.rowCheck data (data.tangents.get ⟨47, by decide⟩) = true := by decide +kernel
theorem row48 : JointControlDomain.rowCheck data (data.tangents.get ⟨48, by decide⟩) = true := by decide +kernel
theorem row49 : JointControlDomain.rowCheck data (data.tangents.get ⟨49, by decide⟩) = true := by decide +kernel
theorem row50 : JointControlDomain.rowCheck data (data.tangents.get ⟨50, by decide⟩) = true := by decide +kernel
theorem row51 : JointControlDomain.rowCheck data (data.tangents.get ⟨51, by decide⟩) = true := by decide +kernel
theorem row52 : JointControlDomain.rowCheck data (data.tangents.get ⟨52, by decide⟩) = true := by decide +kernel
theorem row53 : JointControlDomain.rowCheck data (data.tangents.get ⟨53, by decide⟩) = true := by decide +kernel
theorem row54 : JointControlDomain.rowCheck data (data.tangents.get ⟨54, by decide⟩) = true := by decide +kernel
theorem row55 : JointControlDomain.rowCheck data (data.tangents.get ⟨55, by decide⟩) = true := by decide +kernel
theorem row56 : JointControlDomain.rowCheck data (data.tangents.get ⟨56, by decide⟩) = true := by decide +kernel
theorem row57 : JointControlDomain.rowCheck data (data.tangents.get ⟨57, by decide⟩) = true := by decide +kernel
theorem row58 : JointControlDomain.rowCheck data (data.tangents.get ⟨58, by decide⟩) = true := by decide +kernel
theorem row59 : JointControlDomain.rowCheck data (data.tangents.get ⟨59, by decide⟩) = true := by decide +kernel
theorem row60 : JointControlDomain.rowCheck data (data.tangents.get ⟨60, by decide⟩) = true := by decide +kernel
theorem row61 : JointControlDomain.rowCheck data (data.tangents.get ⟨61, by decide⟩) = true := by decide +kernel
theorem row62 : JointControlDomain.rowCheck data (data.tangents.get ⟨62, by decide⟩) = true := by decide +kernel
theorem row63 : JointControlDomain.rowCheck data (data.tangents.get ⟨63, by decide⟩) = true := by decide +kernel
theorem row64 : JointControlDomain.rowCheck data (data.tangents.get ⟨64, by decide⟩) = true := by decide +kernel
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
  · exact row17
  · exact row18
  · exact row19
  · exact row20
  · exact row21
  · exact row22
  · exact row23
  · exact row24
  · exact row25
  · exact row26
  · exact row27
  · exact row28
  · exact row29
  · exact row30
  · exact row31
  · exact row32
  · exact row33
  · exact row34
  · exact row35
  · exact row36
  · exact row37
  · exact row38
  · exact row39
  · exact row40
  · exact row41
  · exact row42
  · exact row43
  · exact row44
  · exact row45
  · exact row46
  · exact row47
  · exact row48
  · exact row49
  · exact row50
  · exact row51
  · exact row52
  · exact row53
  · exact row54
  · exact row55
  · exact row56
  · exact row57
  · exact row58
  · exact row59
  · exact row60
  · exact row61
  · exact row62
  · exact row63
  · exact row64
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
theorem certOK : JointInheritedControls.control81.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control81.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate81
