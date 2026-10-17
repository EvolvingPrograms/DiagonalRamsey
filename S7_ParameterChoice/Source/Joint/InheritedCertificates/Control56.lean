import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
