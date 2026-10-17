import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate32
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(38754058987/125000000000 : ℚ), (36917585893711/10000000000 : ℚ), (-1146067484044907/1000000000000 : ℚ), 12⟩,
    ⟨(62100426823/200000000000 : ℚ), (4063562678589/10000000000 : ℚ), (-63601113892847/500000000000 : ℚ), 9⟩,
    ⟨(311440327093/1000000000000 : ℚ), (720573615687/5000000000 : ℚ), (-22846582230341/500000000000 : ℚ), 7⟩,
    ⟨(78211197661/250000000000 : ℚ), (721361748721/10000000000 : ℚ), (-23236782313783/1000000000000 : ℚ), 6⟩,
    ⟨(31471214129/100000000000 : ℚ), (426705608501/10000000000 : ℚ), (-699784507287/50000000000 : ℚ), 6⟩,
    ⟨(317037880421/1000000000000 : ℚ), (139274449327/5000000000 : ℚ), (-9318091956987/1000000000000 : ℚ), 5⟩,
    ⟨(39977050641/125000000000 : ℚ), (194027497641/10000000000 : ℚ), (-6628011669221/1000000000000 : ℚ), 5⟩,
    ⟨(3230410217/10000000000 : ℚ), (141500789619/10000000000 : ℚ), (-4940464497339/1000000000000 : ℚ), 4⟩,
    ⟨(65340792351/200000000000 : ℚ), (21355139627/2000000000 : ℚ), (-762575325501/200000000000 : ℚ), 4⟩,
    ⟨(82699100237/250000000000 : ℚ), (20680307047/2500000000 : ℚ), (-60449085781/20000000000 : ℚ), 4⟩,
    ⟨(83827120059/250000000000 : ℚ), (65438758123/10000000000 : ℚ), (-244712094519/100000000000 : ℚ), 3⟩,
    ⟨(42528666203/125000000000 : ℚ), (52652560939/10000000000 : ℚ), (-125964794239/62500000000 : ℚ), 3⟩,
    ⟨(172773547177/500000000000 : ℚ), (21481435347/5000000000 : ℚ), (-1683334403551/1000000000000 : ℚ), 3⟩,
    ⟨(351248963467/1000000000000 : ℚ), (8867770089/2500000000 : ℚ), (-177804206523/125000000000 : ℚ), 3⟩,
    ⟨(357321200659/1000000000000 : ℚ), (14789695523/5000000000 : ℚ), (-1213786931491/1000000000000 : ℚ), 3⟩,
    ⟨(18187458869/50000000000 : ℚ), (24877959771/10000000000 : ℚ), (-104435249901/100000000000 : ℚ), 3⟩,
    ⟨(370517408071/1000000000000 : ℚ), (21078468623/10000000000 : ℚ), (-904915383693/1000000000000 : ℚ), 2⟩,
    ⟨(37760958747/100000000000 : ℚ), (17973519821/10000000000 : ℚ), (-788814802173/1000000000000 : ℚ), 2⟩,
    ⟨(192504314949/500000000000 : ℚ), (15410995277/10000000000 : ℚ), (-345569675773/500000000000 : ℚ), 2⟩,
    ⟨(392696710411/1000000000000 : ℚ), (13277398701/10000000000 : ℚ), (-304101653707/500000000000 : ℚ), 2⟩,
    ⟨(50081913469/125000000000 : ℚ), (5743379407/5000000000 : ℚ), (-268598581647/500000000000 : ℚ), 2⟩,
    ⟨(408865248961/1000000000000 : ℚ), (997307079/1000000000 : ℚ), (-29746822883/62500000000 : ℚ), 2⟩,
    ⟨(104326688893/250000000000 : ℚ), (1737008869/2000000000 : ℚ), (-422759308237/1000000000000 : ℚ), 2⟩,
    ⟨(85191898251/200000000000 : ℚ), (1895597173/2500000000 : ℚ), (-94070414391/250000000000 : ℚ), 2⟩,
    ⟨(434802610813/1000000000000 : ℚ), (6633141829/10000000000 : ℚ), (-335439580687/1000000000000 : ℚ), 2⟩,
    ⟨(110953702599/250000000000 : ℚ), (581172223/1000000000 : ℚ), (-149681875441/500000000000 : ℚ), 2⟩,
    ⟨(226487189413/500000000000 : ℚ), (5097488419/10000000000 : ℚ), (-53469239613/200000000000 : ℚ), 2⟩,
    ⟨(4622592499/10000000000 : ℚ), (4473660959/10000000000 : ℚ), (-23880582361/100000000000 : ℚ), 2⟩,
    ⟨(9432941111/20000000000 : ℚ), (3926506589/10000000000 : ℚ), (-53315555189/250000000000 : ℚ), 2⟩,
    ⟨(48111517973/100000000000 : ℚ), (172235719/500000000 : ℚ), (-190315588957/1000000000000 : ℚ), 2⟩,
    ⟨(4906408129/10000000000 : ℚ), (150945709/500000000 : ℚ), (-169631172133/1000000000000 : ℚ), 2⟩,
    ⟨(3907820367/7812500000 : ℚ), (2641301629/10000000000 : ℚ), (-30185418313/200000000000 : ℚ), 1⟩,
    ⟨(127443182653/250000000000 : ℚ), (288167973/1250000000 : ℚ), (-26792950283/200000000000 : ℚ), 1⟩,
    ⟨(519332924687/1000000000000 : ℚ), (2005546297/10000000000 : ℚ), (-118541214117/1000000000000 : ℚ), 1⟩,
    ⟨(528858557857/1000000000000 : ℚ), (108579249/625000000 : ℚ), (-104483095627/1000000000000 : ℚ), 1⟩,
    ⟨(269163341019/500000000000 : ℚ), (748286087/5000000000 : ℚ), (-45820821499/500000000000 : ℚ), 1⟩,
    ⟨(68464310961/125000000000 : ℚ), (1280106839/10000000000 : ℚ), (-39944370807/500000000000 : ℚ), 1⟩,
    ⟨(278499679381/500000000000 : ℚ), (108500737/1000000000 : ℚ), (-8639206837/125000000000 : ℚ), 1⟩,
    ⟨(566158927191/1000000000000 : ℚ), (227204329/2500000000 : ℚ), (-29610173453/500000000000 : ℚ), 1⟩,
    ⟨(287585563387/500000000000 : ℚ), (149884689/2000000000 : ℚ), (-25062637617/500000000000 : ℚ), 1⟩,
    ⟨(146003561583/250000000000 : ℚ), (605002299/10000000000 : ℚ), (-20877778539/500000000000 : ℚ), 1⟩,
    ⟨(118533396403/200000000000 : ℚ), (118494003/2500000000 : ℚ), (-8511860793/250000000000 : ℚ), 1⟩,
    ⟨(300554244313/500000000000 : ℚ), (8874391/250000000 : ℚ), (-13472519641/500000000000 : ℚ), 1⟩,
    ⟨(152329607459/250000000000 : ℚ), (246810621/10000000000 : ℚ), (-20399233111/1000000000000 : ℚ), 1⟩,
    ⟨(77159628397/125000000000 : ℚ), (29688647/2000000000 : ℚ), (-1795848503/125000000000 : ℚ), 1⟩,
    ⟨(62496510769/100000000000 : ℚ), (58967187/10000000000 : ℚ), (-8809576487/1000000000000 : ℚ), 1⟩,
    ⟨(632364150117/1000000000000 : ℚ), (-5602601/2500000000 : ℚ), (-461741249/125000000000 : ℚ), 1⟩,
    ⟨(639456329517/1000000000000 : ℚ), (-6024013/625000000 : ℚ), (1009915733/1000000000000 : ℚ), 1⟩,
    ⟨(646224560207/1000000000000 : ℚ), (-20445441/1250000000 : ℚ), (5328292657/1000000000000 : ℚ), 1⟩,
    ⟨(20395391779/31250000000 : ℚ), (-28060399/1250000000 : ℚ), (4642252529/500000000000 : ℚ), 1⟩,
    ⟨(16468119353/25000000000 : ℚ), (-279612793/10000000000 : ℚ), (12899175217/1000000000000 : ℚ), 1⟩,
    ⟨(664426643233/1000000000000 : ℚ), (-82341137/2500000000 : ℚ), (4047635087/250000000000 : ℚ), 1⟩,
    ⟨(167436101991/250000000000 : ℚ), (-74819997/2000000000 : ℚ), (19174707337/1000000000000 : ℚ), 1⟩,
    ⟨(84333157169/125000000000 : ℚ), (-414135627/10000000000 : ℚ), (21865870169/1000000000000 : ℚ), 1⟩,
    ⟨(679177336639/1000000000000 : ℚ), (-449747843/10000000000 : ℚ), (12138249149/500000000000 : ℚ), 1⟩,
    ⟨(683269775833/1000000000000 : ℚ), (-120294239/2500000000 : ℚ), (5283499163/200000000000 : ℚ), 1⟩,
    ⟨(686932715887/1000000000000 : ℚ), (-254315367/5000000000 : ℚ), (5659667681/200000000000 : ℚ), 1⟩,
    ⟨(34507866623/50000000000 : ℚ), (-266143667/5000000000 : ℚ), (5985437827/200000000000 : ℚ), 1⟩,
    ⟨(346467928583/500000000000 : ℚ), (-22091911/400000000 : ℚ), (7827749127/250000000000 : ℚ), 1⟩,
    ⟨(695261596297/1000000000000 : ℚ), (-142196997/2500000000 : ℚ), (32455575551/1000000000000 : ℚ), 1⟩,
    ⟨(2723159949/3906250000 : ℚ), (-72732563/1250000000 : ℚ), (6673135129/200000000000 : ℚ), 1⟩,
    ⟨(349266705247/500000000000 : ℚ), (-591595799/10000000000 : ℚ), (8511258467/250000000000 : ℚ), 1⟩,
    ⟨(699471603473/1000000000000 : ℚ), (-299026673/5000000000 : ℚ), (34496417767/1000000000000 : ℚ), 1⟩,
    ⟨(699941265691/1000000000000 : ℚ), (-300636187/5000000000 : ℚ), (3472165521/100000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-601674297/10000000000 : ℚ), (34749788651/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (299999/1000000 : ℚ)
  x := (39804236067/250000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
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
theorem certOK : JointInheritedControls.control32.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control32.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate32
