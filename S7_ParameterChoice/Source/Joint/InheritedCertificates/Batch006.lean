import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control56
namespace DiagonalRamsey.JointInheritedCertificate56
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(48019890283/125000000000 : ℚ), (26237759258487/5000000000 : ℚ), (-201767045727887/100000000000 : ℚ), 13⟩,
    ⟨(192269754567/500000000000 : ℚ), (2895820587353/5000000000 : ℚ), (-111970004294751/500000000000 : ℚ), 9⟩,
    ⟨(385299366487/1000000000000 : ℚ), (412484105141/2000000000 : ℚ), (-10055211956611/125000000000 : ℚ), 8⟩,
    ⟨(193218431881/500000000000 : ℚ), (129688905083/1250000000 : ℚ), (-40906600307047/1000000000000 : ℚ), 7⟩,
    ⟨(96987315157/250000000000 : ℚ), (308593030173/5000000000 : ℚ), (-6159296321427/250000000000 : ℚ), 6⟩,
    ⟨(97458228397/250000000000 : ℚ), (50669032909/1250000000 : ℚ), (-16401815206147/1000000000000 : ℚ), 6⟩,
    ⟨(392083284757/1000000000000 : ℚ), (284165726801/10000000000 : ℚ), (-11665444494849/1000000000000 : ℚ), 5⟩,
    ⟨(394694952793/1000000000000 : ℚ), (104303627059/5000000000 : ℚ), (-2173499200709/250000000000 : ℚ), 5⟩,
    ⟨(397661625961/1000000000000 : ℚ), (79235407401/5000000000 : ℚ), (-670832052999/100000000000 : ℚ), 4⟩,
    ⟨(100244039321/250000000000 : ℚ), (30899369019/2500000000 : ℚ), (-212647645753/40000000000 : ℚ), 4⟩,
    ⟨(404630561767/1000000000000 : ℚ), (12303609631/1250000000 : ℚ), (-860539758109/200000000000 : ℚ), 4⟩,
    ⟨(102154008907/250000000000 : ℚ), (79717579099/10000000000 : ℚ), (-3542080347081/1000000000000 : ℚ), 4⟩,
    ⟨(412922977511/1000000000000 : ℚ), (32732060393/5000000000 : ℚ), (-2956762677563/1000000000000 : ℚ), 3⟩,
    ⟨(208770505809/500000000000 : ℚ), (27191724347/5000000000 : ℚ), (-499357841849/200000000000 : ℚ), 3⟩,
    ⟨(422459012699/1000000000000 : ℚ), (71280599/15625000 : ℚ), (-266101204931/125000000000 : ℚ), 3⟩,
    ⟨(213832566429/500000000000 : ℚ), (38584828817/10000000000 : ℚ), (-914935174441/500000000000 : ℚ), 3⟩,
    ⟨(433146830097/1000000000000 : ℚ), (32865079347/10000000000 : ℚ), (-4949231857/3125000000 : ℚ), 3⟩,
    ⟨(219445449263/500000000000 : ℚ), (140809557/50000000 : ℚ), (-344685012403/250000000000 : ℚ), 3⟩,
    ⟨(222441750091/500000000000 : ℚ), (24255998353/10000000000 : ℚ), (-1206185902119/1000000000000 : ℚ), 3⟩,
    ⟨(225555099181/500000000000 : ℚ), (1311458093/625000000 : ℚ), (-264901714739/250000000000 : ℚ), 3⟩,
    ⟨(91511198481/200000000000 : ℚ), (9109679667/5000000000 : ℚ), (-93405992499/100000000000 : ℚ), 2⟩,
    ⟨(116051338457/250000000000 : ℚ), (15868204829/10000000000 : ℚ), (-825724210013/1000000000000 : ℚ), 2⟩,
    ⟨(235521131869/500000000000 : ℚ), (13855134613/10000000000 : ℚ), (-146321740801/200000000000 : ℚ), 2⟩,
    ⟨(23902512571/50000000000 : ℚ), (6060626381/5000000000 : ℚ), (-649345163923/1000000000000 : ℚ), 2⟩,
    ⟨(485212434017/1000000000000 : ℚ), (10619674299/10000000000 : ℚ), (-577038913643/1000000000000 : ℚ), 2⟩,
    ⟨(123127889301/250000000000 : ℚ), (9312733043/10000000000 : ℚ), (-102631951927/200000000000 : ℚ), 2⟩,
    ⟨(249965018377/500000000000 : ℚ), (8169915559/10000000000 : ℚ), (-456461151579/1000000000000 : ℚ), 2⟩,
    ⟨(5074500009/10000000000 : ℚ), (447894589/625000000 : ℚ), (-811839049/2000000000 : ℚ), 2⟩,
    ⟨(51505333339/100000000000 : ℚ), (6281450589/10000000000 : ℚ), (-360688262237/1000000000000 : ℚ), 2⟩,
    ⟨(52272171713/100000000000 : ℚ), (5498385611/10000000000 : ℚ), (-320062386753/1000000000000 : ℚ), 2⟩,
    ⟨(66304584789/125000000000 : ℚ), (4803017663/10000000000 : ℚ), (-141725603933/500000000000 : ℚ), 2⟩,
    ⟨(538179630919/1000000000000 : ℚ), (836709051/2000000000 : ℚ), (-12517847269/50000000000 : ℚ), 2⟩,
    ⟨(272965960749/500000000000 : ℚ), (3630040547/10000000000 : ℚ), (-220357877249/1000000000000 : ℚ), 2⟩,
    ⟨(110734974821/200000000000 : ℚ), (626822397/2000000000 : ℚ), (-193094951013/1000000000000 : ℚ), 2⟩,
    ⟨(561389835287/1000000000000 : ℚ), (1344317499/5000000000 : ℚ), (-10516316653/62500000000 : ℚ), 2⟩,
    ⟨(569058219027/1000000000000 : ℚ), (228753559/1000000000 : ℚ), (-29118487623/200000000000 : ℚ), 2⟩,
    ⟨(576661551517/1000000000000 : ℚ), (1925615347/10000000000 : ℚ), (-124861588653/1000000000000 : ℚ), 2⟩,
    ⟨(584181515663/1000000000000 : ℚ), (799204551/5000000000 : ℚ), (-105871629931/1000000000000 : ℚ), 2⟩,
    ⟨(591599995213/1000000000000 : ℚ), (1302068533/10000000000 : ℚ), (-17690313801/200000000000 : ℚ), 2⟩,
    ⟨(374311949/625000000 : ℚ), (516633241/5000000000 : ℚ), (-36226217277/500000000000 : ℚ), 2⟩,
    ⟨(606061300997/1000000000000 : ℚ), (789117927/10000000000 : ℚ), (-11548812771/200000000000 : ℚ), 2⟩,
    ⟨(613069288679/1000000000000 : ℚ), (22684577/400000000 : ℚ), (-11053106547/250000000000 : ℚ), 2⟩,
    ⟨(154976549647/250000000000 : ℚ), (36506949/1000000000 : ℚ), (-1984836351/62500000000 : ℚ), 1⟩,
    ⟨(156638890003/250000000000 : ℚ), (181072923/10000000000 : ℚ), (-1268174939/62500000000 : ℚ), 1⟩,
    ⟨(126600270811/200000000000 : ℚ), (3363117/2500000000 : ℚ), (-4867483517/500000000000 : ℚ), 1⟩,
    ⟨(127845610447/200000000000 : ℚ), (-17407309/1250000000 : ℚ), (-1328113/62500000000 : ℚ), 1⟩,
    ⟨(645220653891/1000000000000 : ℚ), (-55669621/2000000000 : ℚ), (4455527153/500000000000 : ℚ), 1⟩,
    ⟨(8137059029/12500000000 : ℚ), (-101237339/2500000000 : ℚ), (2139460699/125000000000 : ℚ), 1⟩,
    ⟨(656446419559/1000000000000 : ℚ), (-130014871/2500000000 : ℚ), (24640252933/1000000000000 : ℚ), 1⟩,
    ⟨(330826269859/500000000000 : ℚ), (-31227839/500000000 : ℚ), (31526944389/1000000000000 : ℚ), 1⟩,
    ⟨(666570540799/1000000000000 : ℚ), (-143842961/2000000000 : ℚ), (37813136429/1000000000000 : ℚ), 1⟩,
    ⟨(134237714981/200000000000 : ℚ), (-160942909/2000000000 : ℚ), (8706383331/200000000000 : ℚ), 1⟩,
    ⟨(675495516789/1000000000000 : ℚ), (-881654801/10000000000 : ℚ), (12178133271/250000000000 : ℚ), 1⟩,
    ⟨(13589619813/20000000000 : ℚ), (-950561077/10000000000 : ℚ), (53380780919/1000000000000 : ℚ), 1⟩,
    ⟨(683135395133/1000000000000 : ℚ), (-1011893171/10000000000 : ℚ), (57559333997/1000000000000 : ℚ), 1⟩,
    ⟨(85806240807/125000000000 : ℚ), (-1066051659/10000000000 : ℚ), (12253605933/200000000000 : ℚ), 1⟩,
    ⟨(86177074953/125000000000 : ℚ), (-139172927/1250000000 : ℚ), (64524112467/1000000000000 : ℚ), 1⟩,
    ⟨(34601413383/50000000000 : ℚ), (-1154186297/10000000000 : ℚ), (13468488321/200000000000 : ℚ), 1⟩,
    ⟨(694278638829/1000000000000 : ℚ), (-594356543/5000000000 : ℚ), (13947133429/200000000000 : ℚ), 1⟩,
    ⟨(696162291789/1000000000000 : ℚ), (-1217174781/10000000000 : ℚ), (71714376191/1000000000000 : ℚ), 1⟩,
    ⟨(139534937731/200000000000 : ℚ), (-1239743311/10000000000 : ℚ), (36643607809/500000000000 : ℚ), 1⟩,
    ⟨(69881218593/100000000000 : ℚ), (-125655371/1000000000 : ℚ), (37230494709/500000000000 : ℚ), 1⟩,
    ⟨(699572043283/1000000000000 : ℚ), (-1267705811/10000000000 : ℚ), (75240735127/1000000000000 : ℚ), 1⟩,
    ⟨(699952430153/1000000000000 : ℚ), (-1273265493/10000000000 : ℚ), (18907445157/250000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-159244961/1250000000 : ℚ), (9459796579/125000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (349999/1000000 : ℚ)
  x := (73305581809/500000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control56.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control56.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate56

-- Control57
namespace DiagonalRamsey.JointInheritedCertificate57
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(1383798103/6250000000 : ℚ), (1416488468241/2000000000 : ℚ), (-157579972895457/1000000000000 : ℚ), 10⟩,
    ⟨(222989004709/1000000000000 : ℚ), (190274550553/2500000000 : ℚ), (-17436790305949/1000000000000 : ℚ), 7⟩,
    ⟨(14133524519/62500000000 : ℚ), (1042762187/40000000 : ℚ), (-97273499207/15625000000 : ℚ), 6⟩,
    ⟨(115409774101/500000000000 : ℚ), (7824905851/625000000 : ℚ), (-784218407699/250000000000 : ℚ), 5⟩,
    ⟨(59248342763/250000000000 : ℚ), (70745759197/10000000000 : ℚ), (-933009163561/500000000000 : ℚ), 4⟩,
    ⟨(61149600891/250000000000 : ℚ), (21989643757/5000000000 : ℚ), (-38214773133/31250000000 : ℚ), 3⟩,
    ⟨(126780702559/500000000000 : ℚ), (29102951013/10000000000 : ℚ), (-853090931027/1000000000000 : ℚ), 3⟩,
    ⟨(263796057111/1000000000000 : ℚ), (20119876649/10000000000 : ℚ), (-621167848589/1000000000000 : ℚ), 3⟩,
    ⟨(275203794247/1000000000000 : ℚ), (14359602819/10000000000 : ℚ), (-116552647197/250000000000 : ℚ), 3⟩,
    ⟨(143837376891/500000000000 : ℚ), (2623151759/2500000000 : ℚ), (-89390519523/250000000000 : ℚ), 2⟩,
    ⟨(7527220839/25000000000 : ℚ), (487509389/625000000 : ℚ), (-139212275373/500000000000 : ℚ), 2⟩,
    ⟨(315316848657/1000000000000 : ℚ), (5868356593/10000000000 : ℚ), (-6842840291/31250000000 : ℚ), 2⟩,
    ⟨(330221775513/1000000000000 : ℚ), (4446726539/10000000000 : ℚ), (-21643024651/125000000000 : ℚ), 2⟩,
    ⟨(86415017883/250000000000 : ℚ), (3377418303/10000000000 : ℚ), (-34262428317/250000000000 : ℚ), 2⟩,
    ⟨(72296611497/200000000000 : ℚ), (1278810109/5000000000 : ℚ), (-5404690829/50000000000 : ℚ), 2⟩,
    ⟨(377538349367/1000000000000 : ℚ), (38369493/200000000 : ℚ), (-84498123067/1000000000000 : ℚ), 2⟩,
    ⟨(393671325941/1000000000000 : ℚ), (70637833/500000000 : ℚ), (-65012830177/1000000000000 : ℚ), 2⟩,
    ⟨(409726617823/1000000000000 : ℚ), (100740601/1000000000 : ℚ), (-48741076643/1000000000000 : ℚ), 2⟩,
    ⟨(6649212559/15625000000 : ℚ), (678859359/10000000000 : ℚ), (-875693633/25000000000 : ℚ), 2⟩,
    ⟨(88197579959/200000000000 : ℚ), (410054393/10000000000 : ℚ), (-23387029047/1000000000000 : ℚ), 2⟩,
    ⟨(9117856533/20000000000 : ℚ), (47115573/2500000000 : ℚ), (-840878209/62500000000 : ℚ), 1⟩,
    ⟨(117530210437/250000000000 : ℚ), (149041/312500000 : ℚ), (-990367053/200000000000 : ℚ), 1⟩,
    ⟨(19341396861/40000000000 : ℚ), (-29604493/2000000000 : ℚ), (291461743/125000000000 : ℚ), 1⟩,
    ⟨(496005881061/1000000000000 : ℚ), (-275218089/10000000000 : ℚ), (8559994273/1000000000000 : ℚ), 1⟩,
    ⟨(507413618197/1000000000000 : ℚ), (-190433619/5000000000 : ℚ), (554384561/40000000000 : ℚ), 1⟩,
    ⟨(517648270189/1000000000000 : ℚ), (-234037527/5000000000 : ℚ), (18328712369/1000000000000 : ℚ), 1⟩,
    ⟨(8228301121/15625000000 : ℚ), (-53922509/1000000000 : ℚ), (5510830867/250000000000 : ℚ), 1⟩,
    ⟨(4173564877/7812500000 : ℚ), (-298070131/5000000000 : ℚ), (12530995537/500000000000 : ℚ), 1⟩,
    ⟨(270195063553/500000000000 : ℚ), (-16004983/250000000 : ℚ), (13714601659/500000000000 : ℚ), 1⟩,
    ⟨(136268320751/250000000000 : ℚ), (-26896831/400000000 : ℚ), (29177924631/1000000000000 : ℚ), 1⟩,
    ⟨(548220670599/1000000000000 : ℚ), (-346761203/5000000000 : ℚ), (30331427507/1000000000000 : ℚ), 1⟩,
    ⟨(549801978827/1000000000000 : ℚ), (-175990461/2500000000 : ℚ), (15452281529/500000000000 : ℚ), 1⟩,
    ⟨(11/20 : ℚ), (-705261611/10000000000 : ℚ), (30976037367/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (254911234767/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control57.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control57.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate57

-- Control58
namespace DiagonalRamsey.JointInheritedCertificate58
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(250617969321/1000000000000 : ℚ), (1885654100863/2500000000 : ℚ), (-94953978827941/500000000000 : ℚ), 10⟩,
    ⟨(12319303/48828125 : ℚ), (81180572083/1000000000 : ℚ), (-21013684755883/1000000000000 : ℚ), 7⟩,
    ⟨(255645845299/1000000000000 : ℚ), (13932355659/500000000 : ℚ), (-1500472927523/200000000000 : ℚ), 6⟩,
    ⟨(260625300083/1000000000000 : ℚ), (67069833197/5000000000 : ℚ), (-945029507323/250000000000 : ℚ), 5⟩,
    ⟨(267189734919/1000000000000 : ℚ), (75985250527/10000000000 : ℚ), (-2248587550679/1000000000000 : ℚ), 4⟩,
    ⟨(275275930713/1000000000000 : ℚ), (47353339957/10000000000 : ℚ), (-1473562552001/1000000000000 : ℚ), 3⟩,
    ⟨(142403006489/500000000000 : ℚ), (7853023377/2500000000 : ℚ), (-205600709619/200000000000 : ℚ), 3⟩,
    ⟨(73922050453/250000000000 : ℚ), (21768312701/10000000000 : ℚ), (-374303810307/500000000000 : ℚ), 3⟩,
    ⟨(76954423947/250000000000 : ℚ), (15573216091/10000000000 : ℚ), (-140497558187/250000000000 : ℚ), 3⟩,
    ⟨(10033677539/31250000000 : ℚ), (2851832253/2500000000 : ℚ), (-431204846163/1000000000000 : ℚ), 2⟩,
    ⟨(83835114321/250000000000 : ℚ), (850249377/1000000000 : ℚ), (-84001682763/250000000000 : ℚ), 2⟩,
    ⟨(175234332783/500000000000 : ℚ), (1283166109/2000000000 : ℚ), (-52910236663/200000000000 : ℚ), 2⟩,
    ⟨(366316613177/1000000000000 : ℚ), (243945083/500000000 : ℚ), (-209536654437/1000000000000 : ℚ), 2⟩,
    ⟨(9568291893/25000000000 : ℚ), (3722292537/10000000000 : ℚ), (-83133447879/500000000000 : ℚ), 2⟩,
    ⟨(3121529431/7812500000 : ℚ), (141773157/500000000 : ℚ), (-65806722377/500000000000 : ℚ), 2⟩,
    ⟨(16665074493/40000000000 : ℚ), (2144245561/10000000000 : ℚ), (-51715065707/500000000000 : ℚ), 2⟩,
    ⟨(43378055721/100000000000 : ℚ), (798839063/5000000000 : ℚ), (-80207685621/1000000000000 : ℚ), 2⟩,
    ⟨(225425826183/500000000000 : ℚ), (1160017637/10000000000 : ℚ), (-7607764783/125000000000 : ℚ), 2⟩,
    ⟨(233837871907/500000000000 : ℚ), (805740907/10000000000 : ℚ), (-22300375277/500000000000 : ℚ), 2⟩,
    ⟨(484090806357/1000000000000 : ℚ), (103266503/2000000000 : ℚ), (-7708737997/250000000000 : ℚ), 2⟩,
    ⟨(499938753969/1000000000000 : ℚ), (278172191/10000000000 : ℚ), (-9560931161/500000000000 : ℚ), 1⟩,
    ⟨(515066962251/1000000000000 : ℚ), (10139637/1250000000 : ℚ), (-4562304759/500000000000 : ℚ), 1⟩,
    ⟨(529329738287/1000000000000 : ℚ), (-82466607/10000000000 : ℚ), (-292310419/500000000000 : ℚ), 1⟩,
    ⟨(542589723747/1000000000000 : ℚ), (-218375621/10000000000 : ℚ), (6697974689/1000000000000 : ℚ), 1⟩,
    ⟨(554719217723/1000000000000 : ℚ), (-331042027/10000000000 : ℚ), (6439211973/500000000000 : ℚ), 1⟩,
    ⟨(565601406557/1000000000000 : ℚ), (-105967357/2500000000 : ℚ), (4519395983/250000000000 : ℚ), 1⟩,
    ⟨(287565744411/500000000000 : ℚ), (-499474329/10000000000 : ℚ), (1399339703/62500000000 : ℚ), 1⟩,
    ⟨(116643536923/200000000000 : ℚ), (-559860563/10000000000 : ℚ), (202239301/7812500000 : ℚ), 1⟩,
    ⟨(147445529863/250000000000 : ℚ), (-303272809/5000000000 : ℚ), (1789037397/62500000000 : ℚ), 1⟩,
    ⟨(118952314847/200000000000 : ℚ), (-25626069/400000000 : ℚ), (3064456169/100000000000 : ℚ), 1⟩,
    ⟨(299054047047/500000000000 : ℚ), (-165742617/2500000000 : ℚ), (31975716057/1000000000000 : ℚ), 1⟩,
    ⟨(599789450213/1000000000000 : ℚ), (-1078411/16000000 : ℚ), (32636738621/1000000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-337690363/5000000000 : ℚ), (16359577631/500000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (6003278241/25000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control58.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control58.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate58

-- Control59
namespace DiagonalRamsey.JointInheritedCertificate59
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(318314885963/1000000000000 : ℚ), (3527142810481/1000000000 : ℚ), (-1124153340497223/1000000000000 : ℚ), 12⟩,
    ⟨(318774573153/1000000000000 : ℚ), (3883900775839/10000000000 : ℚ), (-124776194159929/1000000000000 : ℚ), 9⟩,
    ⟨(319692840107/1000000000000 : ℚ), (1378276922339/10000000000 : ℚ), (-44826118942409/1000000000000 : ℚ), 8⟩,
    ⟨(321067474639/1000000000000 : ℚ), (34521264531/500000000 : ℚ), (-11399589362217/500000000000 : ℚ), 7⟩,
    ⟨(161447582567/500000000000 : ℚ), (204385579729/5000000000 : ℚ), (-13734728367943/1000000000000 : ℚ), 6⟩,
    ⟨(13006860341/40000000000 : ℚ), (33388251581/1250000000 : ℚ), (-4573229410389/500000000000 : ℚ), 5⟩,
    ⟨(163945510451/500000000000 : ℚ), (37251126073/2000000000 : ℚ), (-650766726177/100000000000 : ℚ), 5⟩,
    ⟨(165523575361/500000000000 : ℚ), (67993193493/5000000000 : ℚ), (-194088442549/40000000000 : ℚ), 5⟩,
    ⟨(334632294591/1000000000000 : ℚ), (25683828337/2500000000 : ℚ), (-936495979693/250000000000 : ℚ), 4⟩,
    ⟨(338637815583/1000000000000 : ℚ), (79687405777/10000000000 : ℚ), (-118818236197/40000000000 : ℚ), 4⟩,
    ⟨(343054064049/1000000000000 : ℚ), (63116435209/10000000000 : ℚ), (-1202943986821/500000000000 : ℚ), 4⟩,
    ⟨(347870400857/1000000000000 : ℚ), (50847067359/10000000000 : ℚ), (-991104608853/500000000000 : ℚ), 3⟩,
    ⟨(44134402879/125000000000 : ℚ), (10385281049/2500000000 : ℚ), (-165619786141/100000000000 : ℚ), 3⟩,
    ⟨(3586559917/10000000000 : ℚ), (34339420507/10000000000 : ℚ), (-1400018817059/1000000000000 : ℚ), 3⟩,
    ⟨(364599262301/1000000000000 : ℚ), (28670296697/10000000000 : ℚ), (-597544665129/500000000000 : ℚ), 3⟩,
    ⟨(23180669811/62500000000 : ℚ), (3017720503/1250000000 : ℚ), (-128577416779/125000000000 : ℚ), 3⟩,
    ⟨(18875759953/50000000000 : ℚ), (10239005811/5000000000 : ℚ), (-445786091129/500000000000 : ℚ), 3⟩,
    ⟨(384456749593/1000000000000 : ℚ), (17480594779/10000000000 : ℚ), (-777416386709/1000000000000 : ℚ), 3⟩,
    ⟨(15667945831/40000000000 : ℚ), (150039253/100000000 : ℚ), (-85167024191/125000000000 : ℚ), 2⟩,
    ⟨(399223441241/1000000000000 : ℚ), (12939347289/10000000000 : ℚ), (-299858945981/500000000000 : ℚ), 2⟩,
    ⟨(407013008101/1000000000000 : ℚ), (11204528479/10000000000 : ℚ), (-529807036639/1000000000000 : ℚ), 2⟩,
    ⟨(415048580607/1000000000000 : ℚ), (4868116887/5000000000 : ℚ), (-9389490961/20000000000 : ℚ), 2⟩,
    ⟨(423310800359/1000000000000 : ℚ), (1697060769/2000000000 : ℚ), (-13032933957/31250000000 : ℚ), 2⟩,
    ⟨(431779762947/1000000000000 : ℚ), (296524119/400000000 : ℚ), (-37122564289/100000000000 : ℚ), 2⟩,
    ⟨(220217532949/500000000000 : ℚ), (6488965349/10000000000 : ℚ), (-330934394183/1000000000000 : ℚ), 2⟩,
    ⟨(44925585783/100000000000 : ℚ), (711041501/1250000000 : ℚ), (-295327910601/1000000000000 : ℚ), 2⟩,
    ⟨(229110444341/500000000000 : ℚ), (4991373401/10000000000 : ℚ), (-65928024391/250000000000 : ℚ), 2⟩,
    ⟨(467308560909/1000000000000 : ℚ), (4381958449/10000000000 : ℚ), (-117758592179/500000000000 : ℚ), 2⟩,
    ⟨(476496981513/1000000000000 : ℚ), (961718561/2500000000 : ℚ), (-210272058121/1000000000000 : ℚ), 2⟩,
    ⟨(485764014783/1000000000000 : ℚ), (3375229351/10000000000 : ℚ), (-187584576049/1000000000000 : ℚ), 2⟩,
    ⟨(495087335627/1000000000000 : ℚ), (2957993149/10000000000 : ℚ), (-83563156953/500000000000 : ℚ), 2⟩,
    ⟨(100888896669/200000000000 : ℚ), (40431829/156250000 : ℚ), (-148620642587/1000000000000 : ℚ), 2⟩,
    ⟨(513812915751/1000000000000 : ℚ), (1128926419/5000000000 : ℚ), (-131833328949/1000000000000 : ℚ), 2⟩,
    ⟨(523170063469/1000000000000 : ℚ), (490832439/2500000000 : ℚ), (-116565066343/1000000000000 : ℚ), 2⟩,
    ⟨(66561673039/125000000000 : ℚ), (424894257/2500000000 : ℚ), (-51322747751/500000000000 : ℚ), 2⟩,
    ⟨(541760417583/1000000000000 : ℚ), (1462781461/10000000000 : ℚ), (-89928384511/1000000000000 : ℚ), 2⟩,
    ⟨(550948838187/1000000000000 : ℚ), (312423151/2500000000 : ℚ), (-78287719727/1000000000000 : ℚ), 2⟩,
    ⟨(280018255207/500000000000 : ℚ), (1057529553/10000000000 : ℚ), (-67614513493/1000000000000 : ℚ), 2⟩,
    ⟨(284500770633/500000000000 : ℚ), (441952473/5000000000 : ℚ), (-11562837017/200000000000 : ℚ), 2⟩,
    ⟨(288911166599/500000000000 : ℚ), (181690663/2500000000 : ℚ), (-48804398343/1000000000000 : ℚ), 1⟩,
    ⟨(586477636149/1000000000000 : ℚ), (116865293/2000000000 : ℚ), (-2025663473/50000000000 : ℚ), 1⟩,
    ⟨(594946598737/1000000000000 : ℚ), (227528829/5000000000 : ℚ), (-32877872363/1000000000000 : ℚ), 1⟩,
    ⟨(603208818489/1000000000000 : ℚ), (337619739/10000000000 : ℚ), (-12921494393/500000000000 : ℚ), 1⟩,
    ⟨(122248878199/200000000000 : ℚ), (230849071/10000000000 : ℚ), (-19360058117/1000000000000 : ℚ), 1⟩,
    ⟨(123806791571/200000000000 : ℚ), (66865143/5000000000 : ℚ), (-2677258159/200000000000 : ℚ), 1⟩,
    ⟨(626558753321/1000000000000 : ℚ), (45375657/10000000000 : ℚ), (-7883919021/1000000000000 : ℚ), 1⟩,
    ⟨(633800649503/1000000000000 : ℚ), (-34992269/10000000000 : ℚ), (-2819560559/1000000000000 : ℚ), 1⟩,
    ⟨(160185550009/250000000000 : ℚ), (-108055337/10000000000 : ℚ), (73452941/40000000000 : ℚ), 1⟩,
    ⟨(16184167053/25000000000 : ℚ), (-174412191/10000000000 : ℚ), (3054945499/500000000000 : ℚ), 1⟩,
    ⟨(326829068397/500000000000 : ℚ), (-29323599/1250000000 : ℚ), (10024313073/1000000000000 : ℚ), 1⟩,
    ⟨(164900351849/250000000000 : ℚ), (-72261841/2500000000 : ℚ), (2720022731/200000000000 : ℚ), 1⟩,
    ⟨(10393471501/15625000000 : ℚ), (-338193999/10000000000 : ℚ), (8427729693/500000000000 : ℚ), 1⟩,
    ⟨(670386998239/1000000000000 : ℚ), (-382385129/10000000000 : ℚ), (1237900491/62500000000 : ℚ), 1⟩,
    ⟨(675203335047/1000000000000 : ℚ), (-210966527/5000000000 : ℚ), (22467122529/1000000000000 : ℚ), 1⟩,
    ⟨(679619583513/1000000000000 : ℚ), (-457110633/10000000000 : ℚ), (24850054689/1000000000000 : ℚ), 1⟩,
    ⟨(136725020901/200000000000 : ℚ), (-97631057/2000000000 : ℚ), (26966100667/1000000000000 : ℚ), 1⟩,
    ⟨(343605124187/500000000000 : ℚ), (-8051131/156250000 : ℚ), (28824736043/1000000000000 : ℚ), 1⟩,
    ⟨(345183189097/500000000000 : ℚ), (-538638117/10000000000 : ℚ), (118883313/3906250000 : ℚ), 1⟩,
    ⟨(693085890571/1000000000000 : ℚ), (-558401899/10000000000 : ℚ), (3975154117/125000000000 : ℚ), 1⟩,
    ⟨(347681116981/500000000000 : ℚ), (-574688371/10000000000 : ℚ), (8232968669/250000000000 : ℚ), 1⟩,
    ⟨(697189924457/1000000000000 : ℚ), (-587599041/10000000000 : ℚ), (8457702877/250000000000 : ℚ), 1⟩,
    ⟨(698564558989/1000000000000 : ℚ), (-298606803/5000000000 : ℚ), (8625447293/250000000000 : ℚ), 1⟩,
    ⟨(699482825943/1000000000000 : ℚ), (-603590971/10000000000 : ℚ), (34947581799/1000000000000 : ℚ), 1⟩,
    ⟨(699942513133/1000000000000 : ℚ), (-606769999/10000000000 : ℚ), (1373829/39062500 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-303583463/5000000000 : ℚ), (549965721/15625000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (5134987213/25000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control59.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control59.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate59

-- Control60
namespace DiagonalRamsey.JointInheritedCertificate60
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(40593036339/100000000000 : ℚ), (43578968473921/10000000000 : ℚ), (-442707555219441/250000000000 : ℚ), 12⟩,
    ⟨(203202483017/500000000000 : ℚ), (150168757193/312500000 : ℚ), (-196554806349767/1000000000000 : ℚ), 9⟩,
    ⟨(407353027961/1000000000000 : ℚ), (341779486207/2000000000 : ℚ), (-35306468040619/500000000000 : ℚ), 8⟩,
    ⟨(51096533151/125000000000 : ℚ), (858258067341/10000000000 : ℚ), (-8978717522119/250000000000 : ℚ), 7⟩,
    ⟨(410659258707/1000000000000 : ℚ), (50961918889/1000000000 : ℚ), (-2163605819517/100000000000 : ℚ), 6⟩,
    ⟨(413009462527/1000000000000 : ℚ), (334052934541/10000000000 : ℚ), (-14408387567951/1000000000000 : ℚ), 5⟩,
    ⟨(415817214821/1000000000000 : ℚ), (233711068799/10000000000 : ℚ), (-5125827211603/500000000000 : ℚ), 5⟩,
    ⟨(209537875733/500000000000 : ℚ), (273951181/16000000 : ℚ), (-3821968904609/500000000000 : ℚ), 5⟩,
    ⟨(105694305591/250000000000 : ℚ), (25961365599/2000000000 : ℚ), (-590141056799/100000000000 : ℚ), 4⟩,
    ⟨(213456355173/500000000000 : ℚ), (101042929371/10000000000 : ℚ), (-4679833698097/1000000000000 : ℚ), 4⟩,
    ⟨(431472252659/1000000000000 : ℚ), (80316528039/10000000000 : ℚ), (-1895294573477/500000000000 : ℚ), 4⟩,
    ⟨(436444864967/1000000000000 : ℚ), (16233581729/2500000000 : ℚ), (-3123298849989/1000000000000 : ℚ), 4⟩,
    ⟨(110454641953/250000000000 : ℚ), (53238611407/10000000000 : ℚ), (-521975778443/200000000000 : ℚ), 3⟩,
    ⟨(27973775967/62500000000 : ℚ), (2208218611/500000000 : ℚ), (-2206483175347/1000000000000 : ℚ), 3⟩,
    ⟨(453716527151/1000000000000 : ℚ), (9250625653/2500000000 : ℚ), (-1883840205453/1000000000000 : ℚ), 3⟩,
    ⟨(23010606021/50000000000 : ℚ), (7816593979/2500000000 : ℚ), (-405450809761/250000000000 : ℚ), 3⟩,
    ⟨(18682061873/40000000000 : ℚ), (33266603/12500000 : ℚ), (-175767237469/125000000000 : ℚ), 3⟩,
    ⟨(118554582397/250000000000 : ℚ), (4559278673/2000000000 : ℚ), (-306638959557/250000000000 : ℚ), 3⟩,
    ⟨(481695203303/1000000000000 : ℚ), (1227151149/625000000 : ℚ), (-107547118661/100000000000 : ℚ), 2⟩,
    ⟨(244732077763/500000000000 : ℚ), (2123985709/1250000000 : ℚ), (-947191368877/1000000000000 : ℚ), 2⟩,
    ⟨(497506470169/1000000000000 : ℚ), (3691500261/2500000000 : ℚ), (-418688574533/500000000000 : ℚ), 2⟩,
    ⟨(252901386297/500000000000 : ℚ), (1287769361/1000000000 : ℚ), (-742674194173/1000000000000 : ℚ), 2⟩,
    ⟨(514333076281/1000000000000 : ℚ), (2253078327/2000000000 : ℚ), (-330228299127/500000000000 : ℚ), 2⟩,
    ⟨(26153841549/50000000000 : ℚ), (1976123587/2000000000 : ℚ), (-588645101721/1000000000000 : ℚ), 2⟩,
    ⟨(266006486111/500000000000 : ℚ), (1736964403/2000000000 : ℚ), (-3284850863/6250000000 : ℚ), 2⟩,
    ⟨(270559986029/500000000000 : ℚ), (1911766979/2500000000 : ℚ), (-93981217529/200000000000 : ℚ), 2⟩,
    ⟨(550375890929/1000000000000 : ℚ), (6742323831/10000000000 : ℚ), (-420540320151/1000000000000 : ℚ), 2⟩,
    ⟨(139939607629/250000000000 : ℚ), (5950181213/10000000000 : ℚ), (-94144987243/250000000000 : ℚ), 2⟩,
    ⟨(569244987459/1000000000000 : ℚ), (5253884659/10000000000 : ℚ), (-337281419337/1000000000000 : ℚ), 2⟩,
    ⟨(57881270781/100000000000 : ℚ), (4639589473/10000000000 : ℚ), (-302025509011/1000000000000 : ℚ), 2⟩,
    ⟨(117687708419/200000000000 : ℚ), (819157601/2000000000 : ℚ), (-270293316867/1000000000000 : ℚ), 2⟩,
    ⟨(299049650417/500000000000 : ℚ), (3612862433/10000000000 : ℚ), (-241647492701/1000000000000 : ℚ), 2⟩,
    ⟨(121554342083/200000000000 : ℚ), (1591366621/5000000000 : ℚ), (-43143488121/200000000000 : ℚ), 2⟩,
    ⟨(308716234577/500000000000 : ℚ), (2798580801/10000000000 : ℚ), (-24023445277/125000000000 : ℚ), 2⟩,
    ⟨(627058303439/1000000000000 : ℚ), (153413953/625000000 : ℚ), (-85393922113/500000000000 : ℚ), 2⟩,
    ⟨(636626023791/1000000000000 : ℚ), (1072969069/5000000000 : ℚ), (-151286273469/1000000000000 : ℚ), 2⟩,
    ⟨(646112580733/1000000000000 : ℚ), (1868318317/10000000000 : ℚ), (-66741340733/500000000000 : ℚ), 2⟩,
    ⟨(2048422251/3125000000 : ℚ), (1618154803/10000000000 : ℚ), (-58601861/500000000 : ℚ), 2⟩,
    ⟨(664751039191/1000000000000 : ℚ), (1392341077/10000000000 : ℚ), (-51149373359/500000000000 : ℚ), 1⟩,
    ⟨(168464509757/250000000000 : ℚ), (297048623/2500000000 : ℚ), (-88636402663/1000000000000 : ℚ), 1⟩,
    ⟨(682794180269/1000000000000 : ℚ), (1003391423/10000000000 : ℚ), (-15220361957/200000000000 : ℚ), 1⟩,
    ⟨(86442241871/125000000000 : ℚ), (835913519/10000000000 : ℚ), (-64594208611/1000000000000 : ℚ), 1⟩,
    ⟨(140013647731/200000000000 : ℚ), (85500373/1250000000 : ℚ), (-13506248203/250000000000 : ℚ), 1⟩,
    ⟨(17709113527/25000000000 : ℚ), (273062609/5000000000 : ℚ), (-22158027811/500000000000 : ℚ), 1⟩,
    ⟨(179101713931/250000000000 : ℚ), (420937503/10000000000 : ℚ), (-35398395911/1000000000000 : ℚ), 1⟩,
    ⟨(362087903973/500000000000 : ℚ), (38407833/1250000000 : ℚ), (-5442187639/200000000000 : ℚ), 1⟩,
    ⟨(731652681661/1000000000000 : ℚ), (102033433/5000000000 : ℚ), (-19699533333/1000000000000 : ℚ), 1⟩,
    ⟨(29552778577/40000000000 : ℚ), (110440829/10000000000 : ℚ), (-100125837/7812500000 : ℚ), 1⟩,
    ⟨(745658890829/1000000000000 : ℚ), (5116783/2000000000 : ℚ), (-3258967999/500000000000 : ℚ), 1⟩,
    ⟨(376077242049/500000000000 : ℚ), (-5120939/1000000000 : ℚ), (-3068111/4000000000 : ℚ), 1⟩,
    ⟨(758290595777/1000000000000 : ℚ), (-120560957/10000000000 : ℚ), (4470405077/1000000000000 : ℚ), 1⟩,
    ⟨(764052443437/1000000000000 : ℚ), (-36603761/2000000000 : ℚ), (9224398211/1000000000000 : ℚ), 1⟩,
    ⟨(384713073141/500000000000 : ℚ), (-239065419/10000000000 : ℚ), (1352161951/100000000000 : ℚ), 1⟩,
    ⟨(77439875859/100000000000 : ℚ), (-18070303/625000000 : ℚ), (17385698989/1000000000000 : ℚ), 1⟩,
    ⟨(97369787613/125000000000 : ℚ), (-83392183/2500000000 : ℚ), (10418754107/500000000000 : ℚ), 1⟩,
    ⟨(156618757777/200000000000 : ℚ), (-372721423/10000000000 : ℚ), (23895398167/1000000000000 : ℚ), 1⟩,
    ⟨(786795259783/1000000000000 : ℚ), (-406864319/10000000000 : ℚ), (830481259/31250000000 : ℚ), 1⟩,
    ⟨(197513449107/250000000000 : ℚ), (-218119759/5000000000 : ℚ), (14445697967/500000000000 : ℚ), 1⟩,
    ⟨(396430774361/500000000000 : ℚ), (-461052873/10000000000 : ℚ), (30855257311/1000000000000 : ℚ), 1⟩,
    ⟨(397605876271/500000000000 : ℚ), (-19259061/400000000 : ℚ), (1623848203/50000000000 : ℚ), 1⟩,
    ⟨(797098746041/1000000000000 : ℚ), (-124412743/2500000000 : ℚ), (33764698051/1000000000000 : ℚ), 1⟩,
    ⟨(99814747911/125000000000 : ℚ), (-20387469/400000000 : ℚ), (34724919153/1000000000000 : ℚ), 1⟩,
    ⟨(159893209043/200000000000 : ℚ), (-129416397/2500000000 : ℚ), (35362423571/1000000000000 : ℚ), 1⟩,
    ⟨(799940647859/1000000000000 : ℚ), (-130410397/2500000000 : ℚ), (35680385589/1000000000000 : ℚ), 1⟩,
    ⟨(4/5 : ℚ), (-522137959/10000000000 : ℚ), (35720093729/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (32029627473/200000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem certOK : JointInheritedControls.control60.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control60.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate60

-- Control61
namespace DiagonalRamsey.JointInheritedCertificate61
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(40148300009/1000000000000 : ℚ), (333784018363/312500000 : ℚ), (-21497116102319/500000000000 : ℚ), 10⟩,
    ⟨(20168570401/500000000000 : ℚ), (1130172594623/10000000000 : ℚ), (-576957537943/125000000000 : ℚ), 7⟩,
    ⟨(40707565343/1000000000000 : ℚ), (371196578853/10000000000 : ℚ), (-1544700251379/1000000000000 : ℚ), 6⟩,
    ⟨(20622669211/500000000000 : ℚ), (82109275499/5000000000 : ℚ), (-697782575263/1000000000000 : ℚ), 5⟩,
    ⟨(10482448431/250000000000 : ℚ), (20021546631/2500000000 : ℚ), (-17417785737/50000000000 : ℚ), 4⟩,
    ⟨(8546925603/200000000000 : ℚ), (4755101527/1250000000 : ℚ), (-170577819121/1000000000000 : ℚ), 4⟩,
    ⟨(43628911963/1000000000000 : ℚ), (14143309651/10000000000 : ℚ), (-13497922073/200000000000 : ℚ), 3⟩,
    ⟨(2228913937/50000000000 : ℚ), (-87410767/1250000000 : ℚ), (-416885051/200000000000 : ℚ), 3⟩,
    ⟨(4554624471/100000000000 : ℚ), (-5265354317/5000000000 : ℚ), (21093864307/500000000000 : ℚ), 3⟩,
    ⟨(46495611487/1000000000000 : ℚ), (-17354057679/10000000000 : ℚ), (73572850339/1000000000000 : ℚ), 3⟩,
    ⟨(9477979087/200000000000 : ℚ), (-5559966361/2500000000 : ℚ), (9649938387/100000000000 : ℚ), 3⟩,
    ⟨(24097364863/500000000000 : ℚ), (-3223910613/1250000000 : ℚ), (113468010431/1000000000000 : ℚ), 3⟩,
    ⟨(12219796257/250000000000 : ℚ), (-28359820047/10000000000 : ℚ), (125932869669/1000000000000 : ℚ), 3⟩,
    ⟨(12354239527/250000000000 : ℚ), (-15076732727/5000000000 : ℚ), (3368687629/25000000000 : ℚ), 3⟩,
    ⟨(6223422831/125000000000 : ℚ), (-31294196559/10000000000 : ℚ), (8775347497/62500000000 : ℚ), 2⟩,
    ⟨(49976223441/1000000000000 : ℚ), (-7962386307/2500000000 : ℚ), (143175712849/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-1595914721/500000000 : ℚ), (1121245133/7812500000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (8883781543/31250000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem certOK : JointInheritedControls.control61.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control61.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate61

-- Control62
namespace DiagonalRamsey.JointInheritedCertificate62
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(40285610109/500000000000 : ℚ), (217404223821/200000000 : ℚ), (-87806495469017/1000000000000 : ℚ), 10⟩,
    ⟨(80943637789/1000000000000 : ℚ), (1150833466461/10000000000 : ℚ), (-471475820367/50000000000 : ℚ), 7⟩,
    ⟨(81674161133/1000000000000 : ℚ), (369526656/9765625 : ℚ), (-3158117533711/1000000000000 : ℚ), 6⟩,
    ⟨(41367358323/500000000000 : ℚ), (33545243601/2000000000 : ℚ), (-285748514637/200000000000 : ℚ), 5⟩,
    ⟨(1313821059/15625000000 : ℚ), (16418723581/2000000000 : ℚ), (-715405968041/1000000000000 : ℚ), 4⟩,
    ⟨(8567178127/100000000000 : ℚ), (1572279371/400000000 : ℚ), (-352661443651/1000000000000 : ℚ), 4⟩,
    ⟨(87435420633/1000000000000 : ℚ), (3749976921/2500000000 : ℚ), (-71243335621/500000000000 : ℚ), 3⟩,
    ⟨(17861538039/200000000000 : ℚ), (-84789243/10000000000 : ℚ), (-4646662909/500000000000 : ℚ), 3⟩,
    ⟨(45608319843/500000000000 : ℚ), (-10065269123/10000000000 : ℚ), (80731464659/1000000000000 : ℚ), 3⟩,
    ⟨(1454514207/15625000000 : ℚ), (-169825533/100000000 : ℚ), (144442885053/1000000000000 : ℚ), 3⟩,
    ⟨(94852548611/1000000000000 : ℚ), (-5482055477/2500000000 : ℚ), (190900029969/1000000000000 : ℚ), 3⟩,
    ⟨(19287956421/200000000000 : ℚ), (-5103569671/2000000000 : ℚ), (56306133969/250000000000 : ℚ), 3⟩,
    ⟨(19557922647/200000000000 : ℚ), (-878454977/312500000 : ℚ), (250399495033/1000000000000 : ℚ), 3⟩,
    ⟨(24712542187/250000000000 : ℚ), (-29919104343/10000000000 : ℚ), (6704487819/25000000000 : ℚ), 2⟩,
    ⟨(24895173023/250000000000 : ℚ), (-9708871/3125000 : ℚ), (279581732299/1000000000000 : ℚ), 2⟩,
    ⟨(99953109663/1000000000000 : ℚ), (-15813813341/5000000000 : ℚ), (35645129787/125000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-15848422433/5000000000 : ℚ), (142926528877/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (2197255717/10000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
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
theorem certOK : JointInheritedControls.control62.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control62.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate62

-- Control63
namespace DiagonalRamsey.JointInheritedCertificate63
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(386049220143/1000000000000 : ℚ), (52031596640509/10000000000 : ℚ), (-2010426890345441/1000000000000 : ℚ), 13⟩,
    ⟨(7728546613/20000000000 : ℚ), (2871495671783/5000000000 : ℚ), (-223136882438147/1000000000000 : ℚ), 9⟩,
    ⟨(193591320381/500000000000 : ℚ), (511321705653/2500000000 : ℚ), (-10019224413041/125000000000 : ℚ), 8⟩,
    ⟨(388313330871/1000000000000 : ℚ), (102901181041/1000000000 : ℚ), (-40760637141553/1000000000000 : ℚ), 7⟩,
    ⟨(194908338523/500000000000 : ℚ), (12244237219/200000000 : ℚ), (-6137404548493/250000000000 : ℚ), 6⟩,
    ⟨(195844528797/500000000000 : ℚ), (100536111417/2500000000 : ℚ), (-4085948271959/250000000000 : ℚ), 6⟩,
    ⟨(196962980893/500000000000 : ℚ), (281961236383/10000000000 : ℚ), (-581219988837/50000000000 : ℚ), 5⟩,
    ⟨(15860880029/40000000000 : ℚ), (41404602737/2000000000 : ℚ), (-1082948560887/125000000000 : ℚ), 5⟩,
    ⟨(99867730081/250000000000 : ℚ), (157294060979/10000000000 : ℚ), (-6685005540603/1000000000000 : ℚ), 5⟩,
    ⟨(402765616379/1000000000000 : ℚ), (122700939587/10000000000 : ℚ), (-5297835070747/1000000000000 : ℚ), 4⟩,
    ⟨(406398151677/1000000000000 : ℚ), (48865991639/5000000000 : ℚ), (-4287939259481/1000000000000 : ℚ), 4⟩,
    ⟨(102589943781/250000000000 : ℚ), (39583490361/5000000000 : ℚ), (-3530006946433/1000000000000 : ℚ), 4⟩,
    ⟨(414640942821/1000000000000 : ℚ), (13004639591/2000000000 : ℚ), (-2946743938199/1000000000000 : ℚ), 4⟩,
    ⟨(419231341061/1000000000000 : ℚ), (54026306563/10000000000 : ℚ), (-99534937867/40000000000 : ℚ), 3⟩,
    ⟨(106029977793/250000000000 : ℚ), (45327452239/10000000000 : ℚ), (-2121665321709/1000000000000 : ℚ), 3⟩,
    ⟨(167693311/390625000 : ℚ), (38343816811/10000000000 : ℚ), (-911874378029/500000000000 : ℚ), 3⟩,
    ⟨(217371884541/500000000000 : ℚ), (8166180139/2500000000 : ℚ), (-39461630351/25000000000 : ℚ), 3⟩,
    ⟨(110113365769/250000000000 : ℚ), (1749637503/625000000 : ℚ), (-1374136014423/1000000000000 : ℚ), 3⟩,
    ⟨(446410202991/1000000000000 : ℚ), (12057364753/5000000000 : ℚ), (-1202150508993/1000000000000 : ℚ), 3⟩,
    ⟨(226299819259/500000000000 : ℚ), (5215909703/2500000000 : ℚ), (-132005924783/125000000000 : ℚ), 3⟩,
    ⟨(91801371753/200000000000 : ℚ), (3623479067/2000000000 : ℚ), (-465450858097/500000000000 : ℚ), 2⟩,
    ⟨(465616428177/1000000000000 : ℚ), (15780891263/10000000000 : ℚ), (-205726635783/250000000000 : ℚ), 2⟩,
    ⟨(236206211861/500000000000 : ℚ), (1377999551/1000000000 : ℚ), (-729081829767/1000000000000 : ℚ), 2⟩,
    ⟨(479378473251/1000000000000 : ℚ), (301407043/250000000 : ℚ), (-129413605617/200000000000 : ℚ), 2⟩,
    ⟨(243248897471/500000000000 : ℚ), (528161779/500000000 : ℚ), (-143744356671/250000000000 : ℚ), 2⟩,
    ⟨(19750129509/40000000000 : ℚ), (9263485879/10000000000 : ℚ), (-127821365057/250000000000 : ℚ), 2⟩,
    ⟨(250563661301/500000000000 : ℚ), (2031688899/2500000000 : ℚ), (-22737508011/50000000000 : ℚ), 2⟩,
    ⟨(254301142379/500000000000 : ℚ), (7128327009/10000000000 : ℚ), (-404351717273/1000000000000 : ℚ), 2⟩,
    ⟨(516160116353/1000000000000 : ℚ), (6247878773/10000000000 : ℚ), (-35924661141/100000000000 : ℚ), 2⟩,
    ⟨(523782609909/1000000000000 : ℚ), (42723403/78125000 : ℚ), (-318732429957/1000000000000 : ℚ), 2⟩,
    ⟨(531451402173/1000000000000 : ℚ), (2388239963/5000000000 : ℚ), (-8819394281/31250000000 : ℚ), 2⟩,
    ⟨(10782960367/20000000000 : ℚ), (4159815269/10000000000 : ℚ), (-249215174763/1000000000000 : ℚ), 2⟩,
    ⟨(27342695831/50000000000 : ℚ), (3608743893/10000000000 : ℚ), (-219295874249/1000000000000 : ℚ), 2⟩,
    ⟨(277275266399/500000000000 : ℚ), (3114932297/10000000000 : ℚ), (-7684196631/40000000000 : ℚ), 2⟩,
    ⟨(562219325061/1000000000000 : ℚ), (2671304117/10000000000 : ℚ), (-83668126517/500000000000 : ℚ), 2⟩,
    ⟨(569841818617/1000000000000 : ℚ), (2271825487/10000000000 : ℚ), (-144726987771/1000000000000 : ℚ), 2⟩,
    ⟨(577399650213/1000000000000 : ℚ), (1911331479/10000000000 : ℚ), (-2481007807/20000000000 : ℚ), 2⟩,
    ⟨(36554663273/62500000000 : ℚ), (396346231/2500000000 : ℚ), (-105110202713/1000000000000 : ℚ), 2⟩,
    ⟨(118449739449/200000000000 : ℚ), (1290160953/10000000000 : ℚ), (-10966995341/125000000000 : ℚ), 2⟩,
    ⟨(149876035007/250000000000 : ℚ), (1022352089/10000000000 : ℚ), (-35889573093/500000000000 : ℚ), 2⟩,
    ⟨(606623461719/1000000000000 : ℚ), (779089849/10000000000 : ℚ), (-2284398651/40000000000 : ℚ), 2⟩,
    ⟨(613589511249/1000000000000 : ℚ), (55787971/1000000000 : ℚ), (-10903677011/250000000000 : ℚ), 2⟩,
    ⟨(310192753397/500000000000 : ℚ), (178273459/5000000000 : ℚ), (-15596748199/500000000000 : ℚ), 2⟩,
    ⟨(125399015241/200000000000 : ℚ), (173191173/10000000000 : ℚ), (-9879210831/500000000000 : ℚ), 2⟩,
    ⟨(158350574113/250000000000 : ℚ), (3074291/5000000000 : ℚ), (-369278289/40000000000 : ℚ), 2⟩,
    ⟨(639591731979/1000000000000 : ℚ), (-18255047/1250000000 : ℚ), (454378733/1000000000000 : ℚ), 1⟩,
    ⟨(322774235947/500000000000 : ℚ), (-284657919/10000000000 : ℚ), (9361160369/1000000000000 : ℚ), 1⟩,
    ⟨(651258165889/1000000000000 : ℚ), (-102707973/2500000000 : ℚ), (17542022311/1000000000000 : ℚ), 1⟩,
    ⟨(65670705881/100000000000 : ℚ), (-131388811/2500000000 : ℚ), (25044486571/1000000000000 : ℚ), 1⟩,
    ⟨(330941011899/500000000000 : ℚ), (-314851301/5000000000 : ℚ), (31910669561/1000000000000 : ℚ), 1⟩,
    ⟨(666770593909/1000000000000 : ℚ), (-724044409/10000000000 : ℚ), (3817788881/100000000000 : ℚ), 1⟩,
    ⟨(671360992149/1000000000000 : ℚ), (-809259/10000000 : ℚ), (10969796039/250000000000 : ℚ), 1⟩,
    ⟨(337821079923/500000000000 : ℚ), (-221485729/2500000000 : ℚ), (24521882187/500000000000 : ℚ), 1⟩,
    ⟨(679603783293/1000000000000 : ℚ), (-954619737/10000000000 : ℚ), (6712174103/125000000000 : ℚ), 1⟩,
    ⟨(5337783739/7812500000 : ℚ), (-1015747621/10000000000 : ℚ), (14465679281/250000000000 : ℚ), 1⟩,
    ⟨(343265507323/500000000000 : ℚ), (-534862877/5000000000 : ℚ), (30779776893/500000000000 : ℚ), 1⟩,
    ⟨(344739967123/500000000000 : ℚ), (-139612479/1250000000 : ℚ), (4050320637/62500000000 : ℚ), 1⟩,
    ⟨(10813687081/15625000000 : ℚ), (-1157566719/10000000000 : ℚ), (67614291909/1000000000000 : ℚ), 1⟩,
    ⟨(10848638709/15625000000 : ℚ), (-9312331/78125000 : ℚ), (17499919371/250000000000 : ℚ), 1⟩,
    ⟨(174046314481/250000000000 : ℚ), (-12203451/100000000 : ℚ), (71971865789/1000000000000 : ℚ), 1⟩,
    ⟨(697688604099/1000000000000 : ℚ), (-1242838291/10000000000 : ℚ), (9192437023/125000000000 : ℚ), 1⟩,
    ⟨(682440717/976562500 : ℚ), (-1259592549/10000000000 : ℚ), (9338670943/125000000000 : ℚ), 1⟩,
    ⟨(4372341277/6250000000 : ℚ), (-254141479/2000000000 : ℚ), (3774325691/50000000000 : ℚ), 1⟩,
    ⟨(699952714827/1000000000000 : ℚ), (-2552497/20000000 : ℚ), (75874260139/1000000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-159617547/1250000000 : ℚ), (75922689877/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (362499/1000000 : ℚ)
  x := (38577288837/250000000000 : ℚ)
  μ := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control63.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control63.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate63
