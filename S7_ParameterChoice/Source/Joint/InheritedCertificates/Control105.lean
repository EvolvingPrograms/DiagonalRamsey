import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace DiagonalRamsey.JointInheritedCertificate105
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(216643552069/500000000000 : ℚ), (3960386045101/625000000 : ℚ), (-68685206728257/25000000000 : ℚ), 13⟩,
    ⟨(86721664623/200000000000 : ℚ), (1400550988207/2000000000 : ℚ), (-152460384401739/500000000000 : ℚ), 10⟩,
    ⟨(434249987223/1000000000000 : ℚ), (499729015211/2000000000 : ℚ), (-109521867263657/1000000000000 : ℚ), 8⟩,
    ⟨(217605275319/500000000000 : ℚ), (630002759929/5000000000 : ℚ), (-55687600495951/1000000000000 : ℚ), 7⟩,
    ⟨(436487699279/1000000000000 : ℚ), (751589392587/10000000000 : ℚ), (-4191715067659/125000000000 : ℚ), 7⟩,
    ⟨(219039178191/500000000000 : ℚ), (495077657171/10000000000 : ℚ), (-22319611083151/1000000000000 : ℚ), 6⟩,
    ⟨(109994672479/250000000000 : ℚ), (69627158779/2000000000 : ℚ), (-15869992169561/1000000000000 : ℚ), 6⟩,
    ⟨(44218412181/100000000000 : ℚ), (256376204587/10000000000 : ℚ), (-11823608926019/1000000000000 : ℚ), 5⟩,
    ⟨(222344669493/500000000000 : ℚ), (195381367663/10000000000 : ℚ), (-4559754508971/500000000000 : ℚ), 5⟩,
    ⟨(89497661231/200000000000 : ℚ), (7643553159/500000000 : ℚ), (-115577781/16000000 : ℚ), 5⟩,
    ⟨(225287140181/500000000000 : ℚ), (12212385709/1000000000 : ℚ), (-2921640371927/500000000000 : ℚ), 4⟩,
    ⟨(56742478403/125000000000 : ℚ), (19842237083/2000000000 : ℚ), (-192290867297/40000000000 : ℚ), 4⟩,
    ⟨(457576838843/1000000000000 : ℚ), (3268524167/400000000 : ℚ), (-4009957875623/1000000000000 : ℚ), 4⟩,
    ⟨(23073827667/50000000000 : ℚ), (3403675917/500000000 : ℚ), (-676663591281/200000000000 : ℚ), 4⟩,
    ⟨(232814787981/500000000000 : ℚ), (57255314849/10000000000 : ℚ), (-576388577121/200000000000 : ℚ), 4⟩,
    ⟨(470025901713/1000000000000 : ℚ), (9709196817/2000000000 : ℚ), (-2474580428889/1000000000000 : ℚ), 3⟩,
    ⟨(474654939459/1000000000000 : ℚ), (10360780079/2500000000 : ℚ), (-534787769889/250000000000 : ℚ), 3⟩,
    ⟨(479505537443/1000000000000 : ℚ), (8896096199/2500000000 : ℚ), (-92984861691/50000000000 : ℚ), 3⟩,
    ⟨(484566010149/1000000000000 : ℚ), (15351623347/5000000000 : ℚ), (-324890758273/200000000000 : ℚ), 3⟩,
    ⟨(61228020807/125000000000 : ℚ), (6650051599/2500000000 : ℚ), (-284918534873/200000000000 : ℚ), 3⟩,
    ⟨(123816834751/250000000000 : ℚ), (11561804941/5000000000 : ℚ), (-78336567431/62500000000 : ℚ), 3⟩,
    ⟨(100176482943/200000000000 : ℚ), (4031313853/2000000000 : ℚ), (-276407460993/250000000000 : ℚ), 3⟩,
    ⟨(253327933189/500000000000 : ℚ), (2200983327/1250000000 : ℚ), (-488627767647/500000000000 : ℚ), 3⟩,
    ⟨(512573785243/1000000000000 : ℚ), (1925689189/1250000000 : ℚ), (-108129803477/125000000000 : ℚ), 3⟩,
    ⟨(20744876581/40000000000 : ℚ), (674605819/500000000 : ℚ), (-47899959559/62500000000 : ℚ), 2⟩,
    ⟨(419828547/800000000 : ℚ), (472859671/400000000 : ℚ), (-679255175077/1000000000000 : ℚ), 2⟩,
    ⟨(26552512193/50000000000 : ℚ), (2071232197/2000000000 : ℚ), (-601908728909/1000000000000 : ℚ), 2⟩,
    ⟨(26870025149/50000000000 : ℚ), (9065472523/10000000000 : ℚ), (-532966243577/1000000000000 : ℚ), 2⟩,
    ⟨(543821162779/1000000000000 : ℚ), (3962089531/5000000000 : ℚ), (-94254934951/200000000000 : ℚ), 2⟩,
    ⟨(275148377663/500000000000 : ℚ), (6911347499/10000000000 : ℚ), (-83174729037/200000000000 : ℚ), 2⟩,
    ⟨(556811680351/1000000000000 : ℚ), (1502379003/2500000000 : ℚ), (-73191644637/200000000000 : ℚ), 2⟩,
    ⟨(563350242829/1000000000000 : ℚ), (1301009071/2500000000 : ℚ), (-160424917981/500000000000 : ℚ), 2⟩,
    ⟨(569896690791/1000000000000 : ℚ), (4482555889/10000000000 : ℚ), (-279973343733/1000000000000 : ℚ), 2⟩,
    ⟨(144108813317/250000000000 : ℚ), (3834607821/10000000000 : ℚ), (-24283883011/100000000000 : ℚ), 2⟩,
    ⟨(582950178293/1000000000000 : ℚ), (812820649/2500000000 : ℚ), (-130641893/625000000 : ℚ), 2⟩,
    ⟨(14735644271/25000000000 : ℚ), (54499291/200000000 : ℚ), (-89088790701/500000000000 : ℚ), 2⟩,
    ⟨(7448080383/12500000000 : ℚ), (140569901/625000000 : ℚ), (-149979514987/1000000000000 : ℚ), 2⟩,
    ⟨(602196689759/1000000000000 : ℚ), (45452889/250000000 : ℚ), (-24832694383/200000000000 : ℚ), 2⟩,
    ⟨(608461249869/1000000000000 : ℚ), (1427091721/10000000000 : ℚ), (-50247666813/500000000000 : ℚ), 2⟩,
    ⟨(122925003819/200000000000 : ℚ), (535914971/5000000000 : ℚ), (-39385480501/500000000000 : ℚ), 2⟩,
    ⟨(620673148377/1000000000000 : ℚ), (93582969/1250000000 : ℚ), (-29405916463/500000000000 : ℚ), 2⟩,
    ⟨(313295533621/500000000000 : ℚ), (113599183/2500000000 : ℚ), (-20230706423/500000000000 : ℚ), 2⟩,
    ⟨(126472903781/200000000000 : ℚ), (186235411/10000000000 : ℚ), (-23582109079/1000000000000 : ℚ), 2⟩,
    ⟨(127595918923/200000000000 : ℚ), (-58266949/10000000000 : ℚ), (-8052720273/1000000000000 : ℚ), 2⟩,
    ⟨(160855691791/250000000000 : ℚ), (-140628807/5000000000 : ℚ), (3116859347/500000000000 : ℚ), 2⟩,
    ⟨(648680923471/1000000000000 : ℚ), (-484624257/10000000000 : ℚ), (19371760763/1000000000000 : ℚ), 2⟩,
    ⟨(653741396177/1000000000000 : ℚ), (-670028707/10000000000 : ℚ), (3930636899/125000000000 : ℚ), 2⟩,
    ⟨(658591994161/1000000000000 : ℚ), (-419467801/5000000000 : ℚ), (8505573451/200000000000 : ℚ), 2⟩,
    ⟨(663221031907/1000000000000 : ℚ), (-496318387/5000000000 : ℚ), (26342902623/500000000000 : ℚ), 2⟩,
    ⟨(333808678829/500000000000 : ℚ), (-566136027/5000000000 : ℚ), (61977185761/1000000000000 : ℚ), 2⟩,
    ⟨(16794259507/25000000000 : ℚ), (-629423529/5000000000 : ℚ), (70453662243/1000000000000 : ℚ), 2⟩,
    ⟨(675670094777/1000000000000 : ℚ), (-1373248411/10000000000 : ℚ), (39080488299/500000000000 : ℚ), 2⟩,
    ⟨(169826776599/250000000000 : ℚ), (-369064201/2500000000 : ℚ), (42569786349/500000000000 : ℚ), 2⟩,
    ⟨(341336326629/500000000000 : ℚ), (-1568558187/10000000000 : ℚ), (22856281017/250000000000 : ℚ), 2⟩,
    ⟨(137151725493/200000000000 : ℚ), (-1650753363/10000000000 : ℚ), (48524493901/500000000000 : ℚ), 2⟩,
    ⟨(344278797317/500000000000 : ℚ), (-1723366219/10000000000 : ℚ), (6377412311/62500000000 : ℚ), 2⟩,
    ⟨(69106281181/100000000000 : ℚ), (-1786850739/10000000000 : ℚ), (106417794681/1000000000000 : ℚ), 2⟩,
    ⟨(86658530463/125000000000 : ℚ), (-184159699/1000000000 : ℚ), (1721986283/15625000000 : ℚ), 2⟩,
    ⟨(695168577237/1000000000000 : ℚ), (-235992021/1250000000 : ℚ), (22684812223/200000000000 : ℚ), 2⟩,
    ⟨(696759234341/1000000000000 : ℚ), (-1926144831/10000000000 : ℚ), (23216647853/200000000000 : ℚ), 2⟩,
    ⟨(698036382981/1000000000000 : ℚ), (-978224193/5000000000 : ℚ), (118196598981/1000000000000 : ℚ), 2⟩,
    ⟨(698996946397/1000000000000 : ℚ), (-1979023911/10000000000 : ℚ), (119773535593/1000000000000 : ℚ), 2⟩,
    ⟨(139927722101/200000000000 : ℚ), (-99700117/500000000 : ℚ), (30205250829/250000000000 : ℚ), 2⟩,
    ⟨(349979914741/500000000000 : ℚ), (-2001470083/10000000000 : ℚ), (1213435953/10000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-2002402547/10000000000 : ℚ), (24281773181/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (412499/1000000 : ℚ)
  x := (147549048227/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/8 : ℚ)
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
theorem certOK : JointInheritedControls.control105.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control105.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate105
