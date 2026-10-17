import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.ControlTransport
import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls

set_option Elab.async false
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 100000

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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
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

namespace DiagonalRamsey.JointInheritedCertificate119
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(176507353387/500000000000 : ℚ), (5455798331591/1000000000 : ℚ), (-1927427485276819/1000000000000 : ℚ), 13⟩,
    ⟨(44164020821/125000000000 : ℚ), (1205196226967/2000000000 : ℚ), (-213910821206919/1000000000000 : ℚ), 10⟩,
    ⟨(7078127391/20000000000 : ℚ), (1074138346091/5000000000 : ℚ), (-3073180660561/40000000000 : ℚ), 8⟩,
    ⟨(44349485529/125000000000 : ℚ), (1082166355521/10000000000 : ℚ), (-39062255186481/1000000000000 : ℚ), 7⟩,
    ⟨(22248660481/62500000000 : ℚ), (644718432383/10000000000 : ℚ), (-47040425991/2000000000 : ℚ), 7⟩,
    ⟨(357451570753/1000000000000 : ℚ), (424108858483/10000000000 : ℚ), (-3130579864983/200000000000 : ℚ), 6⟩,
    ⟨(359211344811/1000000000000 : ℚ), (297799556677/10000000000 : ℚ), (-556403647767/50000000000 : ℚ), 6⟩,
    ⟨(361253650419/1000000000000 : ℚ), (6842867723/312500000 : ℚ), (-2072301412531/250000000000 : ℚ), 5⟩,
    ⟨(72714713497/200000000000 : ℚ), (20826047313/1250000000 : ℚ), (-399499429479/62500000000 : ℚ), 5⟩,
    ⟨(91541376781/250000000000 : ℚ), (65070353577/5000000000 : ℚ), (-2530873172311/500000000000 : ℚ), 5⟩,
    ⟨(46127903141/125000000000 : ℚ), (103784977471/10000000000 : ℚ), (-2046587639589/500000000000 : ℚ), 4⟩,
    ⟨(372139837003/1000000000000 : ℚ), (84161250209/10000000000 : ℚ), (-1683070581107/500000000000 : ℚ), 4⟩,
    ⟨(375507834559/1000000000000 : ℚ), (69187931457/10000000000 : ℚ), (-280654251537/100000000000 : ℚ), 4⟩,
    ⟨(379119103993/1000000000000 : ℚ), (57526788757/10000000000 : ℚ), (-473331891261/200000000000 : ℚ), 4⟩,
    ⟨(382964945443/1000000000000 : ℚ), (24143065591/5000000000 : ℚ), (-503658933727/250000000000 : ℚ), 4⟩,
    ⟨(193518046969/500000000000 : ℚ), (1634141031/400000000 : ℚ), (-54017087621/31250000000 : ℚ), 3⟩,
    ⟨(195661370863/500000000000 : ℚ), (17398633577/5000000000 : ℚ), (-1492903261423/1000000000000 : ℚ), 3⟩,
    ⟨(49476820237/125000000000 : ℚ), (47689783/16000000 : ℚ), (-25930211231/20000000000 : ℚ), 3⟩,
    ⟨(400500733261/1000000000000 : ℚ), (25651212087/10000000000 : ℚ), (-1131115452353/1000000000000 : ℚ), 3⟩,
    ⟨(50671245803/125000000000 : ℚ), (22161334777/10000000000 : ℚ), (-198105039941/200000000000 : ℚ), 3⟩,
    ⟨(205205265487/500000000000 : ℚ), (3841276751/2000000000 : ℚ), (-108752483461/125000000000 : ℚ), 3⟩,
    ⟨(332488227/800000000 : ℚ), (8343068913/5000000000 : ℚ), (-153190258543/200000000000 : ℚ), 3⟩,
    ⟨(420956698093/1000000000000 : ℚ), (7261215419/5000000000 : ℚ), (-675463925517/1000000000000 : ℚ), 3⟩,
    ⟨(213218447011/500000000000 : ℚ), (12653613793/10000000000 : ℚ), (-596296981609/1000000000000 : ℚ), 3⟩,
    ⟨(86407533853/200000000000 : ℚ), (689410639/625000000 : ℚ), (-526641918131/1000000000000 : ℚ), 3⟩,
    ⟨(87549106213/200000000000 : ℚ), (9613806619/10000000000 : ℚ), (-46503823547/100000000000 : ℚ), 2⟩,
    ⟨(443546728681/1000000000000 : ℚ), (8371299079/10000000000 : ℚ), (-410296261771/1000000000000 : ℚ), 2⟩,
    ⟨(449427286521/1000000000000 : ℚ), (454804993/625000000 : ℚ), (-72287843753/200000000000 : ℚ), 2⟩,
    ⟨(91074607561/200000000000 : ℚ), (1261802971/2000000000 : ℚ), (-79414813999/250000000000 : ℚ), 2⟩,
    ⟨(461369658699/1000000000000 : ℚ), (5449867047/10000000000 : ℚ), (-34785466477/125000000000 : ℚ), 2⟩,
    ⟨(233701351409/500000000000 : ℚ), (2342286437/5000000000 : ℚ), (-121374549827/500000000000 : ℚ), 2⟩,
    ⟨(118364409007/250000000000 : ℚ), (1000169329/2500000000 : ℚ), (-210580498827/1000000000000 : ℚ), 2⟩,
    ⟨(479519871467/1000000000000 : ℚ), (84692241/250000000 : ℚ), (-90687834979/500000000000 : ℚ), 2⟩,
    ⟨(242787402339/500000000000 : ℚ), (354591397/1250000000 : ℚ), (-154792177291/1000000000000 : ℚ), 2⟩,
    ⟨(122901962199/250000000000 : ℚ), (585063513/2500000000 : ℚ), (-130537182913/1000000000000 : ℚ), 2⟩,
    ⟨(49760446969/100000000000 : ℚ), (1891815077/10000000000 : ℚ), (-108359206799/1000000000000 : ℚ), 2⟩,
    ⟨(20142008839/40000000000 : ℚ), (371473203/2500000000 : ℚ), (-22010361033/250000000000 : ℚ), 2⟩,
    ⟨(101886155763/200000000000 : ℚ), (111773869/1000000000 : ℚ), (-34698155447/500000000000 : ℚ), 2⟩,
    ⟨(515231976431/1000000000000 : ℚ), (979069/12500000 : ℚ), (-653262113/12500000000 : ℚ), 2⟩,
    ⟨(52093983823/100000000000 : ℚ), (478895669/10000000000 : ℚ), (-7298726469/200000000000 : ℚ), 2⟩,
    ⟨(526540613473/1000000000000 : ℚ), (50395359/2500000000 : ℚ), (-21970503957/1000000000000 : ℚ), 2⟩,
    ⟨(532020809403/1000000000000 : ℚ), (-12841733/2500000000 : ℚ), (-2145805837/250000000000 : ℚ), 2⟩,
    ⟨(268683611873/500000000000 : ℚ), (-282286997/10000000000 : ℚ), (940817637/250000000000 : ℚ), 2⟩,
    ⟨(271283488261/500000000000 : ℚ), (-246611237/5000000000 : ℚ), (3030507171/200000000000 : ℚ), 2⟩,
    ⟨(34225471317/62500000000 : ℚ), (-137192719/2000000000 : ℚ), (25658144609/1000000000000 : ℚ), 2⟩,
    ⟨(276238387117/500000000000 : ℚ), (-862081143/10000000000 : ℚ), (8836241773/250000000000 : ℚ), 2⟩,
    ⟨(557162945599/1000000000000 : ℚ), (-51147763/500000000 : ℚ), (44270265167/1000000000000 : ℚ), 2⟩,
    ⟨(56165476577/100000000000 : ℚ), (-292449971/2500000000 : ℚ), (10496924753/200000000000 : ℚ), 2⟩,
    ⟨(282970706779/500000000000 : ℚ), (-26073671/200000000 : ℚ), (60032748623/1000000000000 : ℚ), 2⟩,
    ⟨(570012562053/1000000000000 : ℚ), (-142554713/1000000000 : ℚ), (33477075171/500000000000 : ℚ), 2⟩,
    ⟨(286929201751/500000000000 : ℚ), (-768109499/5000000000 : ℚ), (73283732827/1000000000000 : ℚ), 2⟩,
    ⟨(577469672937/1000000000000 : ℚ), (-818214007/5000000000 : ℚ), (39526150161/500000000000 : ℚ), 2⟩,
    ⟨(145209417623/250000000000 : ℚ), (-34536293/200000000 : ℚ), (84286994459/1000000000000 : ℚ), 2⟩,
    ⟨(583954282367/1000000000000 : ℚ), (-1807940537/10000000000 : ℚ), (44505836091/500000000000 : ℚ), 2⟩,
    ⟨(586812000371/1000000000000 : ℚ), (-235037081/1250000000 : ℚ), (11655903957/125000000000 : ℚ), 2⟩,
    ⟨(589403940011/1000000000000 : ℚ), (-1944310309/10000000000 : ℚ), (19402378723/200000000000 : ℚ), 2⟩,
    ⟨(147930964269/250000000000 : ℚ), (-400070237/2000000000 : ℚ), (50160721463/500000000000 : ℚ), 2⟩,
    ⟨(148441540671/250000000000 : ℚ), (-102436819/500000000 : ℚ), (12898679541/125000000000 : ℚ), 2⟩,
    ⟨(297762968371/500000000000 : ℚ), (-2089734741/10000000000 : ℚ), (52813689177/500000000000 : ℚ), 2⟩,
    ⟨(2984994699/5000000000 : ℚ), (-530892617/2500000000 : ℚ), (26911217587/250000000000 : ℚ), 2⟩,
    ⟨(18693175727/31250000000 : ℚ), (-537606521/2500000000 : ℚ), (6828108323/62500000000 : ℚ), 2⟩,
    ⟨(299535568973/500000000000 : ℚ), (-2170444837/10000000000 : ℚ), (5522405369/50000000000 : ℚ), 2⟩,
    ⟨(1171221369/1953125000 : ℚ), (-2183732571/10000000000 : ℚ), (111244531621/1000000000000 : ℚ), 2⟩,
    ⟨(299981400361/500000000000 : ℚ), (-2190359097/10000000000 : ℚ), (22328399987/200000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-1095593301/5000000000 : ℚ), (27922912173/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (424999/1000000 : ℚ)
  x := (101480911773/500000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control119.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control119.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate119

namespace DiagonalRamsey.JointInheritedCertificate136
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(16812103697/62500000000 : ℚ), (5929156449079/5000000000 : ℚ), (-319844106044449/1000000000000 : ℚ), 11⟩,
    ⟨(16875568753/62500000000 : ℚ), (1290181720803/10000000000 : ℚ), (-17685320122813/500000000000 : ℚ), 8⟩,
    ⟨(272030202589/1000000000000 : ℚ), (449434292831/10000000000 : ℚ), (-1261270585957/100000000000 : ℚ), 6⟩,
    ⟨(275037502453/1000000000000 : ℚ), (219928733083/10000000000 : ℚ), (-6342584038507/1000000000000 : ℚ), 5⟩,
    ⟨(139501018849/500000000000 : ℚ), (31667334703/2500000000 : ℚ), (-235136833959/62500000000 : ℚ), 5⟩,
    ⟨(283885627683/1000000000000 : ℚ), (80201137297/10000000000 : ℚ), (-2455881828093/1000000000000 : ℚ), 4⟩,
    ⟨(144820620383/500000000000 : ℚ), (53967272791/10000000000 : ℚ), (-1704428233403/1000000000000 : ℚ), 4⟩,
    ⟨(148106723623/500000000000 : ℚ), (9462493771/2500000000 : ℚ), (-61640565557/50000000000 : ℚ), 4⟩,
    ⟨(9485592287/31250000000 : ℚ), (5464660897/2000000000 : ℚ), (-458730302261/500000000000 : ℚ), 3⟩,
    ⟨(311547209951/1000000000000 : ℚ), (4024219413/2000000000 : ℚ), (-348086287579/500000000000 : ℚ), 3⟩,
    ⟨(320161093659/1000000000000 : ℚ), (1876202209/1250000000 : ℚ), (-106973598903/200000000000 : ℚ), 3⟩,
    ⟨(329297647897/1000000000000 : ℚ), (5636196679/5000000000 : ℚ), (-103402347767/250000000000 : ℚ), 3⟩,
    ⟨(169434441327/500000000000 : ℚ), (4235728541/5000000000 : ℚ), (-160052841821/500000000000 : ℚ), 3⟩,
    ⟨(348782621707/1000000000000 : ℚ), (253108769/400000000 : ℚ), (-24644931509/100000000000 : ℚ), 2⟩,
    ⟨(358943390329/1000000000000 : ℚ), (4657123063/10000000000 : ℚ), (-93684957643/500000000000 : ℚ), 2⟩,
    ⟨(73850666953/200000000000 : ℚ), (3334747491/10000000000 : ℚ), (-139249246493/1000000000000 : ℚ), 2⟩,
    ⟨(379613164613/1000000000000 : ℚ), (284214959/1250000000 : ℚ), (-24885104329/250000000000 : ℚ), 2⟩,
    ⟨(389923109049/1000000000000 : ℚ), (1412357331/10000000000 : ℚ), (-16603061151/250000000000 : ℚ), 2⟩,
    ⟨(400083877671/1000000000000 : ℚ), (176518463/2500000000 : ℚ), (-38524227801/1000000000000 : ℚ), 2⟩,
    ⟨(102499404181/250000000000 : ℚ), (24427719/2000000000 : ℚ), (-3720007897/250000000000 : ℚ), 2⟩,
    ⟨(419568851481/1000000000000 : ℚ), (-90949427/2500000000 : ℚ), (5270354549/1000000000000 : ℚ), 2⟩,
    ⟨(10717635143/25000000000 : ℚ), (-770056453/10000000000 : ℚ), (22497433637/1000000000000 : ℚ), 2⟩,
    ⟨(437319289427/1000000000000 : ℚ), (-555277639/5000000000 : ℚ), (7447750827/200000000000 : ℚ), 2⟩,
    ⟨(89065509239/200000000000 : ℚ), (-1395947351/10000000000 : ℚ), (24915965057/500000000000 : ℚ), 2⟩,
    ⟨(113163263033/250000000000 : ℚ), (-81721603/500000000 : ℚ), (12107687717/200000000000 : ℚ), 2⟩,
    ⟨(459225258613/1000000000000 : ℚ), (-458084731/2500000000 : ℚ), (434756297/6250000000 : ℚ), 2⟩,
    ⟨(29061304481/62500000000 : ℚ), (-199455229/1000000000 : ℚ), (38528233177/500000000000 : ℚ), 2⟩,
    ⟨(5873305771/12500000000 : ℚ), (-84992891/400000000 : ℚ), (83145318023/1000000000000 : ℚ), 2⟩,
    ⟨(18953159877/40000000000 : ℚ), (-2225992921/10000000000 : ℚ), (43959445611/500000000000 : ℚ), 2⟩,
    ⟨(476836296789/1000000000000 : ℚ), (-2300168761/10000000000 : ℚ), (3657786287/40000000000 : ℚ), 2⟩,
    ⟨(47885739933/100000000000 : ℚ), (-146802147/625000000 : ℚ), (2930315981/31250000000 : ℚ), 2⟩,
    ⟨(239936420113/500000000000 : ℚ), (-7415427/31250000 : ℚ), (94925489063/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2375938741/10000000000 : ℚ), (47534785417/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (132457397391/500000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control136.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control136.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate136

namespace DiagonalRamsey.JointInheritedCertificate137
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(317681669057/1000000000000 : ℚ), (51060085853563/10000000000 : ℚ), (-1623358214313163/1000000000000 : ℚ), 13⟩,
    ⟨(158980732257/500000000000 : ℚ), (225538274629/400000000 : ℚ), (-18016249858817/100000000000 : ℚ), 10⟩,
    ⟨(4976880959/15625000000 : ℚ), (401895148647/2000000000 : ℚ), (-16176712086221/250000000000 : ℚ), 8⟩,
    ⟨(319357073163/1000000000000 : ℚ), (10118412699/100000000 : ℚ), (-32897645419169/1000000000000 : ℚ), 7⟩,
    ⟨(320469524211/1000000000000 : ℚ), (602543393741/10000000000 : ℚ), (-19807445374469/1000000000000 : ℚ), 7⟩,
    ⟨(321855054529/1000000000000 : ℚ), (99040949517/2500000000 : ℚ), (-2636242825177/200000000000 : ℚ), 6⟩,
    ⟨(80877581563/250000000000 : ℚ), (27802473299/1000000000 : ℚ), (-2342539077219/250000000000 : ℚ), 6⟩,
    ⟨(162715675843/500000000000 : ℚ), (25539028507/1250000000 : ℚ), (-6979074371541/1000000000000 : ℚ), 5⟩,
    ⟨(327613502913/1000000000000 : ℚ), (155358865489/10000000000 : ℚ), (-1345270550697/250000000000 : ℚ), 5⟩,
    ⟨(330051522939/1000000000000 : ℚ), (7579697501/625000000 : ℚ), (-4260606779839/1000000000000 : ℚ), 5⟩,
    ⟨(8318488459/25000000000 : ℚ), (96649341659/10000000000 : ℚ), (-137789546691/40000000000 : ℚ), 4⟩,
    ⟨(335671073511/1000000000000 : ℚ), (39159536379/5000000000 : ℚ), (-2832294008133/1000000000000 : ℚ), 4⟩,
    ⟨(84709766517/250000000000 : ℚ), (64336919139/10000000000 : ℚ), (-295107700579/125000000000 : ℚ), 4⟩,
    ⟨(17111794203/50000000000 : ℚ), (53451004751/10000000000 : ℚ), (-1990249966067/1000000000000 : ℚ), 4⟩,
    ⟨(345853344253/1000000000000 : ℚ), (11206815059/2500000000 : ℚ), (-1693628640237/1000000000000 : ℚ), 4⟩,
    ⟨(34968273187/100000000000 : ℚ), (7578578181/2000000000 : ℚ), (-363133022689/250000000000 : ℚ), 3⟩,
    ⟨(17685741079/50000000000 : ℚ), (1612209109/500000000 : ℚ), (-313478687999/250000000000 : ℚ), 3⟩,
    ⟨(357939899727/1000000000000 : ℚ), (6897528379/2500000000 : ℚ), (-1088348385241/1000000000000 : ℚ), 3⟩,
    ⟨(181173893863/500000000000 : ℚ), (23716730751/10000000000 : ℚ), (-948882052849/1000000000000 : ℚ), 3⟩,
    ⟨(36692786659/100000000000 : ℚ), (20463984809/10000000000 : ℚ), (-103787536327/125000000000 : ℚ), 3⟩,
    ⟨(371669102507/1000000000000 : ℚ), (553446633/312500000 : ℚ), (-364314052569/500000000000 : ℚ), 3⟩,
    ⟨(15062402937/40000000000 : ℚ), (3072402283/2000000000 : ℚ), (-640793212173/1000000000000 : ℚ), 3⟩,
    ⟨(381588996567/1000000000000 : ℚ), (1668265589/1250000000 : ℚ), (-141097729471/250000000000 : ℚ), 3⟩,
    ⟨(77348751363/200000000000 : ℚ), (11605058409/10000000000 : ℚ), (-62189685103/125000000000 : ℚ), 3⟩,
    ⟨(196005967951/500000000000 : ℚ), (10092955497/10000000000 : ℚ), (-438650072323/1000000000000 : ℚ), 3⟩,
    ⟨(198690421161/500000000000 : ℚ), (4386477159/5000000000 : ℚ), (-96639753911/250000000000 : ℚ), 2⟩,
    ⟨(402837541909/1000000000000 : ℚ), (1523034927/2000000000 : ℚ), (-2658146497/7812500000 : ℚ), 2⟩,
    ⟨(408368888997/1000000000000 : ℚ), (6595208761/10000000000 : ℚ), (-298879043203/1000000000000 : ℚ), 2⟩,
    ⟨(82792311617/200000000000 : ℚ), (5692978229/10000000000 : ℚ), (-16361746589/62500000000 : ℚ), 2⟩,
    ⟨(52450259493/125000000000 : ℚ), (1222964587/2500000000 : ℚ), (-22840340553/100000000000 : ℚ), 2⟩,
    ⟨(425276854073/1000000000000 : ℚ), (4178001373/10000000000 : ℚ), (-7930050713/40000000000 : ℚ), 2⟩,
    ⟨(430972221433/1000000000000 : ℚ), (176990427/500000000 : ℚ), (-85466042421/500000000000 : ℚ), 2⟩,
    ⟨(218337228693/500000000000 : ℚ), (2967514769/10000000000 : ℚ), (-146107568817/1000000000000 : ℚ), 2⟩,
    ⟨(221184912373/500000000000 : ℚ), (2452859473/10000000000 : ℚ), (-964764293/7812500000 : ℚ), 2⟩,
    ⟨(3584356823/8000000000 : ℚ), (79552949/400000000 : ℚ), (-10283276133/100000000000 : ℚ), 2⟩,
    ⟨(226842560367/500000000000 : ℚ), (1569418987/10000000000 : ℚ), (-1049063781/12500000000 : ℚ), 2⟩,
    ⟨(229638894911/500000000000 : ℚ), (59475811/500000000 : ℚ), (-6658480559/100000000000 : ℚ), 2⟩,
    ⟨(46480913691/100000000000 : ℚ), (211176707/2500000000 : ℚ), (-25327221463/500000000000 : ℚ), 2⟩,
    ⟨(470265836497/1000000000000 : ℚ), (265594451/5000000000 : ℚ), (-35997436609/1000000000000 : ℚ), 2⟩,
    ⟨(475634742917/1000000000000 : ℚ), (245673647/10000000000 : ℚ), (-22494945807/1000000000000 : ℚ), 2⟩,
    ⟨(120225730501/250000000000 : ℚ), (-2938387/2000000000 : ℚ), (-10043286091/1000000000000 : ℚ), 2⟩,
    ⟨(121514420563/250000000000 : ℚ), (-50477849/2000000000 : ℚ), (14482227/10000000000 : ℚ), 2⟩,
    ⟨(245543302697/500000000000 : ℚ), (-469581603/10000000000 : ℚ), (6029528641/500000000000 : ℚ), 2⟩,
    ⟨(61997197039/125000000000 : ℚ), (-668159061/10000000000 : ℚ), (21859006793/1000000000000 : ℚ), 2⟩,
    ⟨(500718812229/1000000000000 : ℚ), (-849776049/10000000000 : ℚ), (7727362947/250000000000 : ℚ), 2⟩,
    ⟨(505298891093/1000000000000 : ℚ), (-1625413/16000000 : ℚ), (19632224503/500000000000 : ℚ), 2⟩,
    ⟨(127426694773/250000000000 : ℚ), (-116775383/1000000000 : ℚ), (11742913417/250000000000 : ℚ), 2⟩,
    ⟨(513931857239/1000000000000 : ℚ), (-653253739/5000000000 : ℚ), (54073107007/1000000000000 : ℚ), 2⟩,
    ⟨(517963946949/1000000000000 : ℚ), (-179141069/1250000000 : ℚ), (12121182231/200000000000 : ℚ), 2⟩,
    ⟨(260896667283/500000000000 : ℚ), (-309696647/2000000000 : ℚ), (13320561459/200000000000 : ℚ), 2⟩,
    ⟨(13135269869/25000000000 : ℚ), (-413333387/2500000000 : ℚ), (18023168571/250000000000 : ℚ), 2⟩,
    ⟨(528807612751/1000000000000 : ℚ), (-34966989/200000000 : ℚ), (19275239567/250000000000 : ℚ), 2⟩,
    ⟨(132993901327/250000000000 : ℚ), (-229264901/1250000000 : ℚ), (81650043599/1000000000000 : ℚ), 2⟩,
    ⟨(26745357023/50000000000 : ℚ), (-1911158293/10000000000 : ℚ), (42879786867/500000000000 : ℚ), 2⟩,
    ⟨(537595155881/1000000000000 : ℚ), (-989958501/5000000000 : ℚ), (8944672797/100000000000 : ℚ), 2⟩,
    ⟨(270016587953/500000000000 : ℚ), (-204078699/1000000000 : ℚ), (5795403801/62500000000 : ℚ), 2⟩,
    ⟨(542215327133/1000000000000 : ℚ), (-2094106851/10000000000 : ℚ), (23902927053/250000000000 : ℚ), 2⟩,
    ⟨(544136352567/1000000000000 : ℚ), (-2140166859/10000000000 : ℚ), (98113563579/1000000000000 : ℚ), 2⟩,
    ⟨(545791624291/1000000000000 : ℚ), (-272401623/1250000000 : ℚ), (50120714343/500000000000 : ℚ), 2⟩,
    ⟨(34198572163/62500000000 : ℚ), (-2211450247/10000000000 : ℚ), (102003140147/1000000000000 : ℚ), 2⟩,
    ⟨(548289605657/1000000000000 : ℚ), (-223704549/1000000000 : ℚ), (103405074733/1000000000000 : ℚ), 2⟩,
    ⟨(137281574361/250000000000 : ℚ), (-1128064803/5000000000 : ℚ), (5222611717/50000000000 : ℚ), 2⟩,
    ⟨(109937042861/200000000000 : ℚ), (-1134399643/5000000000 : ℚ), (105148313581/1000000000000 : ℚ), 2⟩,
    ⟨(274982504881/500000000000 : ℚ), (-2275118289/10000000000 : ℚ), (52747874081/500000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-71122107/312500000 : ℚ), (52769574599/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (117160660943/500000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control137.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control137.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate137

namespace DiagonalRamsey.JointInheritedCertificate138
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(354974692473/1000000000000 : ℚ), (54098232417327/10000000000 : ℚ), (-1921777900016479/1000000000000 : ℚ), 13⟩,
    ⟨(177634895867/500000000000 : ℚ), (5975555346881/10000000000 : ℚ), (-213283367956987/1000000000000 : ℚ), 10⟩,
    ⟨(44482409917/125000000000 : ℚ), (2130491358981/10000000000 : ℚ), (-76603829219347/1000000000000 : ℚ), 8⟩,
    ⟨(22296358447/62500000000 : ℚ), (1073325208163/10000000000 : ℚ), (-38947253618099/1000000000000 : ℚ), 7⟩,
    ⟨(357915033269/1000000000000 : ℚ), (319765111253/5000000000 : ℚ), (-4690151157429/200000000000 : ℚ), 7⟩,
    ⟨(359376347109/1000000000000 : ℚ), (84150370663/2000000000 : ℚ), (-3901622756789/250000000000 : ℚ), 6⟩,
    ⟨(180561078119/500000000000 : ℚ), (73870835539/2500000000 : ℚ), (-5547457777263/500000000000 : ℚ), 6⟩,
    ⟨(7262965097/20000000000 : ℚ), (217299486811/10000000000 : ℚ), (-1652871272641/200000000000 : ℚ), 5⟩,
    ⟨(73089952379/200000000000 : ℚ), (165359588717/10000000000 : ℚ), (-6372688556621/1000000000000 : ℚ), 5⟩,
    ⟨(184010566421/500000000000 : ℚ), (8073970363/625000000 : ℚ), (-5046328181393/1000000000000 : ℚ), 5⟩,
    ⟨(46357021629/125000000000 : ℚ), (103035895319/10000000000 : ℚ), (-4080580333671/1000000000000 : ℚ), 4⟩,
    ⟨(186974026303/500000000000 : ℚ), (41782482513/5000000000 : ℚ), (-1677830397063/500000000000 : ℚ), 4⟩,
    ⟨(188644661477/500000000000 : ℚ), (34353235393/5000000000 : ℚ), (-2797685459589/1000000000000 : ℚ), 4⟩,
    ⟨(47608991833/125000000000 : ℚ), (57133291209/10000000000 : ℚ), (-2359074498903/1000000000000 : ℚ), 4⟩,
    ⟨(384687256911/1000000000000 : ℚ), (2997569799/625000000 : ℚ), (-2008065216477/1000000000000 : ℚ), 4⟩,
    ⟨(388726098249/1000000000000 : ℚ), (20291283727/5000000000 : ℚ), (-861398751757/500000000000 : ℚ), 3⟩,
    ⟨(78595745751/200000000000 : ℚ), (6913897309/2000000000 : ℚ), (-1487827527609/1000000000000 : ℚ), 3⟩,
    ⟨(39743490347/100000000000 : ℚ), (14806590561/5000000000 : ℚ), (-129199371317/100000000000 : ℚ), 3⟩,
    ⟨(201041943539/500000000000 : ℚ), (25486660871/10000000000 : ℚ), (-35220848289/31250000000 : ℚ), 3⟩,
    ⟨(101728619943/250000000000 : ℚ), (22020088603/10000000000 : ℚ), (-986873373521/1000000000000 : ℚ), 3⟩,
    ⟨(411915044231/1000000000000 : ℚ), (19084414539/10000000000 : ℚ), (-173341282847/200000000000 : ℚ), 3⟩,
    ⟨(83414706731/200000000000 : ℚ), (8290110213/5000000000 : ℚ), (-762928898531/1000000000000 : ℚ), 3⟩,
    ⟨(422377520793/1000000000000 : ℚ), (14429961969/10000000000 : ℚ), (-8408671661/12500000000 : ℚ), 3⟩,
    ⟨(3422513823/8000000000 : ℚ), (3928899/3125000 : ℚ), (-148436707217/250000000000 : ℚ), 3⟩,
    ⟨(216685278699/500000000000 : ℚ), (2191806561/2000000000 : ℚ), (-52428499833/100000000000 : ℚ), 3⟩,
    ⟨(109758280919/250000000000 : ℚ), (955044257/1000000000 : ℚ), (-462852060943/1000000000000 : ℚ), 2⟩,
    ⟨(111197071273/250000000000 : ℚ), (415746389/500000000 : ℚ), (-408261854941/1000000000000 : ℚ), 2⟩,
    ⟨(225311088479/500000000000 : ℚ), (7226519077/10000000000 : ℚ), (-359540474429/1000000000000 : ℚ), 2⟩,
    ⟨(456520744917/1000000000000 : ℚ), (3131921721/5000000000 : ℚ), (-31588243289/100000000000 : ℚ), 2⟩,
    ⟨(462469778803/1000000000000 : ℚ), (1352298903/2500000000 : ℚ), (-276617044467/1000000000000 : ℚ), 2⟩,
    ⟨(468454946871/1000000000000 : ℚ), (1161955021/2500000000 : ℚ), (-241182387027/1000000000000 : ℚ), 2⟩,
    ⟨(59307728791/125000000000 : ℚ), (3967350967/10000000000 : ℚ), (-209104955043/1000000000000 : ℚ), 2⟩,
    ⟨(240237979033/500000000000 : ℚ), (3357371317/10000000000 : ℚ), (-17998362279/100000000000 : ℚ), 2⟩,
    ⟨(486482841523/1000000000000 : ℚ), (87783243/312500000 : ℚ), (-153476905169/1000000000000 : ℚ), 2⟩,
    ⟨(492468009591/1000000000000 : ℚ), (231493159/1000000000 : ℚ), (-64646381637/500000000000 : ℚ), 2⟩,
    ⟨(498417043477/1000000000000 : ℚ), (1868574321/10000000000 : ℚ), (-5359019493/50000000000 : ℚ), 2⟩,
    ⟨(126078902859/250000000000 : ℚ), (732253193/5000000000 : ℚ), (-86923546797/1000000000000 : ℚ), 2⟩,
    ⟨(255074751651/500000000000 : ℚ), (1098009379/10000000000 : ℚ), (-17083782163/250000000000 : ℚ), 2⟩,
    ⟨(257952332359/500000000000 : ℚ), (382505609/5000000000 : ℚ), (-25626350507/500000000000 : ℚ), 2⟩,
    ⟨(521567230997/1000000000000 : ℚ), (461986729/10000000000 : ℚ), (-35534818931/1000000000000 : ℚ), 2⟩,
    ⟨(527123560519/1000000000000 : ℚ), (23234433/1250000000 : ℚ), (-21057973371/1000000000000 : ℚ), 2⟩,
    ⟨(532560267601/1000000000000 : ℚ), (-65986537/10000000000 : ℚ), (-7714047423/1000000000000 : ℚ), 2⟩,
    ⟨(537864254739/1000000000000 : ℚ), (-18495229/625000000 : ℚ), (2295907091/500000000000 : ℚ), 2⟩,
    ⟨(135755686041/250000000000 : ℚ), (-505968391/10000000000 : ℚ), (15942995473/1000000000000 : ℚ), 2⟩,
    ⟨(274011654311/500000000000 : ℚ), (-139580267/2000000000 : ℚ), (66032303/2500000000 : ℚ), 2⟩,
    ⟨(138213475329/250000000000 : ℚ), (-174657007/2000000000 : ℚ), (18033168423/500000000000 : ℚ), 2⟩,
    ⟨(22300115397/40000000000 : ℚ), (-516746273/5000000000 : ℚ), (5620049773/125000000000 : ℚ), 2⟩,
    ⟨(14048976491/25000000000 : ℚ), (-235946341/2000000000 : ℚ), (53145600401/1000000000000 : ℚ), 2⟩,
    ⟨(283105845073/500000000000 : ℚ), (-52522631/400000000 : ℚ), (15166643051/250000000000 : ℚ), 2⟩,
    ⟨(570250531483/1000000000000 : ℚ), (-1434431071/10000000000 : ℚ), (67562758811/1000000000000 : ℚ), 2⟩,
    ⟨(57406585373/100000000000 : ℚ), (-308930403/2000000000 : ℚ), (73869007761/1000000000000 : ℚ), 2⟩,
    ⟨(3610302909/6250000000 : ℚ), (-411113509/2500000000 : ℚ), (39808037331/500000000000 : ℚ), 2⟩,
    ⟨(580989735789/1000000000000 : ℚ), (-1734474629/10000000000 : ℚ), (84831059513/1000000000000 : ℚ), 2⟩,
    ⟨(292040807681/500000000000 : ℚ), (-363054567/2000000000 : ℚ), (89537782737/1000000000000 : ℚ), 2⟩,
    ⟨(586916655553/1000000000000 : ℚ), (-1887337381/10000000000 : ℚ), (18751422193/200000000000 : ℚ), 2⟩,
    ⟨(589488026499/1000000000000 : ℚ), (-1951093647/10000000000 : ℚ), (48753618677/500000000000 : ℚ), 2⟩,
    ⟨(73973691693/125000000000 : ℚ), (-1003454811/5000000000 : ℚ), (100803923009/1000000000000 : ℚ), 2⟩,
    ⟨(148453908039/250000000000 : ℚ), (-128443811/625000000 : ℚ), (20732140851/200000000000 : ℚ), 2⟩,
    ⟨(119112288257/200000000000 : ℚ), (-1047967669/5000000000 : ℚ), (53044533887/500000000000 : ℚ), 2⟩,
    ⟨(4776182041/8000000000 : ℚ), (-2129635893/10000000000 : ℚ), (27024649993/250000000000 : ℚ), 2⟩,
    ⟨(299098026621/500000000000 : ℚ), (-1078192169/5000000000 : ℚ), (13712138691/125000000000 : ℚ), 2⟩,
    ⟨(299539254529/500000000000 : ℚ), (-272040409/1250000000 : ℚ), (110890727343/1000000000000 : ℚ), 2⟩,
    ⟨(599667996661/1000000000000 : ℚ), (-2189558057/10000000000 : ℚ), (55841992309/500000000000 : ℚ), 2⟩,
    ⟨(299981547961/500000000000 : ℚ), (-2196158187/10000000000 : ℚ), (11207987061/100000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-549245599/2500000000 : ℚ), (112129321611/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (105622558741/500000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control138.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control138.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate138

namespace DiagonalRamsey.JointInheritedCertificate153
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(257342273541/1000000000000 : ℚ), (11549360666177/10000000000 : ℚ), (-298020565285737/1000000000000 : ℚ), 11⟩,
    ⟨(258317537803/1000000000000 : ℚ), (628238802837/5000000000 : ℚ), (-4119560691531/125000000000 : ℚ), 8⟩,
    ⟨(130129337/500000000 : ℚ), (54705538687/1250000000 : ℚ), (-11751278435061/1000000000000 : ℚ), 6⟩,
    ⟨(32893373491/125000000000 : ℚ), (214127519113/10000000000 : ℚ), (-2954459920979/500000000000 : ℚ), 6⟩,
    ⟨(133477331773/500000000000 : ℚ), (6165232331/500000000 : ℚ), (-700905655457/200000000000 : ℚ), 5⟩,
    ⟨(54329006171/200000000000 : ℚ), (2439116951/312500000 : ℚ), (-2287281893373/1000000000000 : ℚ), 4⟩,
    ⟨(55434583811/200000000000 : ℚ), (52504318367/10000000000 : ℚ), (-1587021166833/1000000000000 : ℚ), 4⟩,
    ⟨(283485091561/1000000000000 : ℚ), (2300535833/625000000 : ℚ), (-71718384979/62500000000 : ℚ), 4⟩,
    ⟨(2905207587/10000000000 : ℚ), (13278382209/5000000000 : ℚ), (-426781334901/500000000000 : ℚ), 3⟩,
    ⟨(18638260197/62500000000 : ℚ), (4885497091/2500000000 : ℚ), (-40454275083/62500000000 : ℚ), 3⟩,
    ⟨(38310654061/125000000000 : ℚ), (14562828241/10000000000 : ℚ), (-496858450367/1000000000000 : ℚ), 3⟩,
    ⟨(315260292527/1000000000000 : ℚ), (10921619829/10000000000 : ℚ), (-383756756549/1000000000000 : ℚ), 3⟩,
    ⟨(81113208661/250000000000 : ℚ), (8191923191/10000000000 : ℚ), (-74127976447/250000000000 : ℚ), 3⟩,
    ⟨(166987164817/500000000000 : ℚ), (6102016247/10000000000 : ℚ), (-5693922267/25000000000 : ℚ), 2⟩,
    ⟨(171866540147/500000000000 : ℚ), (4472717649/10000000000 : ℚ), (-172581933899/1000000000000 : ℚ), 2⟩,
    ⟨(176817552261/500000000000 : ℚ), (3182427923/10000000000 : ℚ), (-63808327097/500000000000 : ℚ), 2⟩,
    ⟨(363585040411/1000000000000 : ℚ), (2146594101/10000000000 : ℚ), (-90488920837/1000000000000 : ℚ), 2⟩,
    ⟨(186743532319/500000000000 : ℚ), (652594537/5000000000 : ℚ), (-3718343169/62500000000 : ℚ), 2⟩,
    ⟨(383245815299/1000000000000 : ℚ), (76853659/1250000000 : ℚ), (-16691172329/500000000000 : ℚ), 2⟩,
    ⟨(392767310289/1000000000000 : ℚ), (43672823/10000000000 : ℚ), (-5614085631/500000000000 : ℚ), 2⟩,
    ⟨(200979926203/500000000000 : ℚ), (-863927/20000000 : ℚ), (7666798727/1000000000000 : ℚ), 2⟩,
    ⟨(82146982489/200000000000 : ℚ), (-829895691/10000000000 : ℚ), (5958264051/250000000000 : ℚ), 2⟩,
    ⟨(419007981781/1000000000000 : ℚ), (-290913439/2500000000 : ℚ), (37677200651/1000000000000 : ℚ), 2⟩,
    ⟨(426699386233/1000000000000 : ℚ), (-72179547/500000000 : ℚ), (49512722143/1000000000000 : ℚ), 2⟩,
    ⟨(108433763343/250000000000 : ℚ), (-1677673053/10000000000 : ℚ), (3723887069/62500000000 : ℚ), 2⟩,
    ⟨(220023612939/500000000000 : ℚ), (-936023511/5000000000 : ℚ), (17018372501/250000000000 : ℚ), 2⟩,
    ⟨(222787557039/500000000000 : ℚ), (-253931807/1250000000 : ℚ), (75131788969/1000000000000 : ℚ), 2⟩,
    ⟨(450265481387/1000000000000 : ℚ), (-215953447/1000000000 : ℚ), (80868507001/1000000000000 : ℚ), 2⟩,
    ⟨(90814631401/200000000000 : ℚ), (-2259045887/10000000000 : ℚ), (17073597153/200000000000 : ℚ), 2⟩,
    ⟨(456961470933/1000000000000 : ℚ), (-466405897/2000000000 : ℚ), (8869246459/100000000000 : ℚ), 2⟩,
    ⟨(45890260713/100000000000 : ℚ), (-475984887/2000000000 : ℚ), (90885713119/1000000000000 : ℚ), 2⟩,
    ⟨(14371183481/31250000000 : ℚ), (-2403648529/10000000000 : ℚ), (45987786501/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-2406603687/10000000000 : ℚ), (23027873061/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (283002041159/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control153.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control153.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate153

namespace DiagonalRamsey.JointInheritedCertificate154
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(65990637541/250000000000 : ℚ), (2913127978603/2500000000 : ℚ), (-15420535099801/50000000000 : ℚ), 11⟩,
    ⟨(26495407891/100000000000 : ℚ), (6339351143/50000000 : ℚ), (-3410560939189/100000000000 : ℚ), 8⟩,
    ⟨(3336594843/12500000000 : ℚ), (441696937537/10000000000 : ℚ), (-12161128477497/1000000000000 : ℚ), 6⟩,
    ⟨(134932034893/500000000000 : ℚ), (216158774357/10000000000 : ℚ), (-6115101565333/1000000000000 : ℚ), 6⟩,
    ⟨(273735246019/1000000000000 : ℚ), (124505011987/10000000000 : ℚ), (-3626906000177/1000000000000 : ℚ), 5⟩,
    ⟨(55700766919/200000000000 : ℚ), (78832491357/10000000000 : ℚ), (-473449753159/200000000000 : ℚ), 4⟩,
    ⟨(284123911399/1000000000000 : ℚ), (53044698877/10000000000 : ℚ), (-10266289403/6250000000 : ℚ), 4⟩,
    ⟨(290541352021/1000000000000 : ℚ), (18599544939/5000000000 : ℚ), (-1187792796419/1000000000000 : ℚ), 4⟩,
    ⟨(297694352997/1000000000000 : ℚ), (26848026133/10000000000 : ℚ), (-220913948569/250000000000 : ℚ), 3⟩,
    ⟨(305514027019/1000000000000 : ℚ), (123528141/62500000 : ℚ), (-134043234387/200000000000 : ℚ), 3⟩,
    ⟨(19620316647/62500000000 : ℚ), (7368036193/5000000000 : ℚ), (-257306865473/500000000000 : ℚ), 3⟩,
    ⟨(322846468087/1000000000000 : ℚ), (5529302103/5000000000 : ℚ), (-99406107933/250000000000 : ℚ), 3⟩,
    ⟨(332192314251/1000000000000 : ℚ), (8301659097/10000000000 : ℚ), (-960616247/3125000000 : ℚ), 3⟩,
    ⟨(68374519847/200000000000 : ℚ), (6190932147/10000000000 : ℚ), (-59076923093/250000000000 : ℚ), 2⟩,
    ⟨(351794096603/1000000000000 : ℚ), (2272756129/5000000000 : ℚ), (-44818601563/250000000000 : ℚ), 2⟩,
    ⟨(22616328557/62500000000 : ℚ), (810651401/2500000000 : ℚ), (-132808843891/1000000000000 : ℚ), 2⟩,
    ⟨(74395425581/200000000000 : ℚ), (137300803/625000000 : ℚ), (-11806939013/125000000000 : ℚ), 2⟩,
    ⟨(382044288213/1000000000000 : ℚ), (336873409/2500000000 : ℚ), (-624490141/10000000000 : ℚ), 2⟩,
    ⟨(391965785581/1000000000000 : ℚ), (650811517/10000000000 : ℚ), (-17748542893/500000000000 : ℚ), 2⟩,
    ⟨(80329214113/200000000000 : ℚ), (37292319/5000000000 : ℚ), (-2527865733/200000000000 : ℚ), 2⟩,
    ⟨(410991916729/1000000000000 : ℚ), (-202564521/5000000000 : ℚ), (6847123261/1000000000000 : ℚ), 2⟩,
    ⟨(83982663693/200000000000 : ℚ), (-806344861/10000000000 : ℚ), (23512026351/1000000000000 : ℚ), 2⟩,
    ⟨(428324357797/1000000000000 : ℚ), (-1142747839/10000000000 : ℚ), (18888457797/500000000000 : ℚ), 2⟩,
    ⟨(436144031819/1000000000000 : ℚ), (-712406319/5000000000 : ℚ), (49966947333/1000000000000 : ℚ), 2⟩,
    ⟨(110824258199/250000000000 : ℚ), (-1660600621/10000000000 : ℚ), (15083463157/250000000000 : ℚ), 2⟩,
    ⟨(449714473417/1000000000000 : ℚ), (-1856334047/10000000000 : ℚ), (8634089103/125000000000 : ℚ), 2⟩,
    ⟨(227667275111/500000000000 : ℚ), (-10084069/50000000 : ℚ), (19083590641/250000000000 : ℚ), 2⟩,
    ⟨(230051569399/500000000000 : ℚ), (-2145725301/10000000000 : ℚ), (16446926457/200000000000 : ℚ), 2⟩,
    ⟨(463974315031/1000000000000 : ℚ), (-2245863029/10000000000 : ℚ), (86861257503/1000000000000 : ℚ), 2⟩,
    ⟨(466910797377/1000000000000 : ℚ), (-28991181/125000000 : ℚ), (90279017929/1000000000000 : ℚ), 2⟩,
    ⟨(234442152953/500000000000 : ℚ), (-473495571/2000000000 : ℚ), (23133372783/250000000000 : ℚ), 2⟩,
    ⟨(469875834653/1000000000000 : ℚ), (-1195671587/5000000000 : ℚ), (46826839893/500000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-478863169/2000000000 : ℚ), (93793376829/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (27874823517/100000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control154.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control154.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate154

namespace DiagonalRamsey.JointInheritedCertificate155
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(67683160567/250000000000 : ℚ), (11767313706477/10000000000 : ℚ), (-159714802250191/500000000000 : ℚ), 11⟩,
    ⟨(271739714531/1000000000000 : ℚ), (1280552527481/10000000000 : ℚ), (-35324442194277/1000000000000 : ℚ), 8⟩,
    ⟨(273744160401/1000000000000 : ℚ), (111552605807/2500000000 : ℚ), (-12595963862831/1000000000000 : ℚ), 6⟩,
    ⟨(276726675969/1000000000000 : ℚ), (218422596801/10000000000 : ℚ), (-6333947860353/1000000000000 : ℚ), 6⟩,
    ⟨(140329268989/500000000000 : ℚ), (62922030691/5000000000 : ℚ), (-375687920537/100000000000 : ℚ), 5⟩,
    ⟨(285501880449/1000000000000 : ℚ), (15940893361/2000000000 : ℚ), (-2452246441391/1000000000000 : ℚ), 4⟩,
    ⟨(145605029673/500000000000 : ℚ), (10729815451/2000000000 : ℚ), (-1701748535163/1000000000000 : ℚ), 4⟩,
    ⟨(148864050893/500000000000 : ℚ), (18818293107/5000000000 : ℚ), (-1230725324733/1000000000000 : ℚ), 4⟩,
    ⟨(304993235457/1000000000000 : ℚ), (13587478723/5000000000 : ℚ), (-915767277171/1000000000000 : ℚ), 3⟩,
    ⟨(312935493149/1000000000000 : ℚ), (20014816251/10000000000 : ℚ), (-347376092963/500000000000 : ℚ), 3⟩,
    ⟨(321478386581/1000000000000 : ℚ), (2986288477/2000000000 : ℚ), (-266822783627/500000000000 : ℚ), 3⟩,
    ⟨(165269821509/500000000000 : ℚ), (5606754323/5000000000 : ℚ), (-1650144771/4000000000 : ℚ), 3⟩,
    ⟨(170015998803/500000000000 : ℚ), (8426127003/10000000000 : ℚ), (-31914913169/100000000000 : ℚ), 3⟩,
    ⟨(43733004223/125000000000 : ℚ), (6292119299/10000000000 : ℚ), (-122793560311/500000000000 : ℚ), 2⟩,
    ⟨(179970531833/500000000000 : ℚ), (289290651/625000000 : ℚ), (-18658650909/100000000000 : ℚ), 2⟩,
    ⟨(92541509987/250000000000 : ℚ), (3311598191/10000000000 : ℚ), (-138533505967/1000000000000 : ℚ), 2⟩,
    ⟨(190220245259/500000000000 : ℚ), (2254622087/10000000000 : ℚ), (-49442087621/500000000000 : ℚ), 2⟩,
    ⟨(390665466799/1000000000000 : ℚ), (1396399877/10000000000 : ℚ), (-32904643389/500000000000 : ℚ), 2⟩,
    ⟨(200371248341/500000000000 : ℚ), (692591593/10000000000 : ℚ), (-37969610523/1000000000000 : ℚ), 2⟩,
    ⟨(410574532859/1000000000000 : ℚ), (6914839/625000000 : ℚ), (-14369612763/1000000000000 : ℚ), 2⟩,
    ⟨(52508360931/125000000000 : ℚ), (-93423093/2500000000 : ℚ), (2870117631/500000000000 : ℚ), 2⟩,
    ⟨(85825628777/200000000000 : ℚ), (-77863473/1000000000 : ℚ), (22930170483/1000000000000 : ℚ), 2⟩,
    ⟨(109417759329/250000000000 : ℚ), (-223609399/2000000000 : ℚ), (376376169/10000000000 : ℚ), 2⟩,
    ⟨(445613295009/1000000000000 : ℚ), (-1402538823/10000000000 : ℚ), (1568754771/31250000000 : ℚ), 2⟩,
    ⟨(11321960717/25000000000 : ℚ), (-1640277837/10000000000 : ℚ), (1521981753/25000000000 : ℚ), 2⟩,
    ⟨(459396471119/1000000000000 : ℚ), (-1837570099/10000000000 : ℚ), (8734717273/125000000000 : ℚ), 2⟩,
    ⟨(14534520313/31250000000 : ℚ), (-1999282457/10000000000 : ℚ), (38676217921/500000000000 : ℚ), 2⟩,
    ⟨(469947992487/1000000000000 : ℚ), (-2129151899/10000000000 : ℚ), (41711957221/500000000000 : ℚ), 2⟩,
    ⟨(473879854497/1000000000000 : ℚ), (-17840101/80000000 : ℚ), (4409177169/50000000000 : ℚ), 2⟩,
    ⟨(29803898129/62500000000 : ℚ), (-575990479/2500000000 : ℚ), (91698825831/1000000000000 : ℚ), 2⟩,
    ⟨(95773363187/200000000000 : ℚ), (-2352479199/10000000000 : ℚ), (4700863973/50000000000 : ℚ), 2⟩,
    ⟨(239936944099/500000000000 : ℚ), (-297063517/1250000000 : ℚ), (19033830707/200000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-475900221/2000000000 : ℚ), (19062559433/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (274413444061/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control155.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control155.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate155

namespace DiagonalRamsey.JointInheritedCertificate156
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(56866170731/200000000000 : ℚ), (11992292945201/10000000000 : ℚ), (-341871950659519/1000000000000 : ℚ), 11⟩,
    ⟨(285368733703/1000000000000 : ℚ), (261080696901/2000000000 : ℚ), (-37806635196553/1000000000000 : ℚ), 8⟩,
    ⟨(287434498447/1000000000000 : ℚ), (455052571599/10000000000 : ℚ), (-6740681173989/500000000000 : ℚ), 6⟩,
    ⟨(72627063361/250000000000 : ℚ), (44571193529/2000000000 : ℚ), (-3389717727083/500000000000 : ℚ), 6⟩,
    ⟨(294560396751/1000000000000 : ℚ), (16058137703/1250000000 : ℚ), (-15708430571/3906250000 : ℚ), 5⟩,
    ⟨(59910380803/200000000000 : ℚ), (81410149807/10000000000 : ℚ), (-1312562600133/500000000000 : ℚ), 4⟩,
    ⟨(76358676073/250000000000 : ℚ), (2741516361/500000000 : ℚ), (-910985070243/500000000000 : ℚ), 4⟩,
    ⟨(156076071499/500000000000 : ℚ), (9622695041/2500000000 : ℚ), (-1317936122453/1000000000000 : ℚ), 4⟩,
    ⟨(319639527527/1000000000000 : ℚ), (5562492909/2000000000 : ℚ), (-980943021539/1000000000000 : ℚ), 3⟩,
    ⟨(163912375137/500000000000 : ℚ), (20502167777/10000000000 : ℚ), (-744503707577/1000000000000 : ℚ), 3⟩,
    ⟨(84157245767/250000000000 : ℚ), (15311117503/10000000000 : ℚ), (-286095975639/500000000000 : ℚ), 3⟩,
    ⟨(69193487267/200000000000 : ℚ), (1151388517/1000000000 : ℚ), (-88539372401/200000000000 : ℚ), 3⟩,
    ⟨(71150035133/200000000000 : ℚ), (4333432009/5000000000 : ℚ), (-13715207399/40000000000 : ℚ), 3⟩,
    ⟨(365882987931/1000000000000 : ℚ), (25948981/40000000 : ℚ), (-52857747849/200000000000 : ℚ), 2⟩,
    ⟨(376268288611/1000000000000 : ℚ), (2394211569/5000000000 : ℚ), (-201287843861/1000000000000 : ℚ), 2⟩,
    ⟨(193403030791/500000000000 : ℚ), (3443672111/10000000000 : ℚ), (-75004231733/500000000000 : ℚ), 2⟩,
    ⟨(39739482233/100000000000 : ℚ), (2364806739/10000000000 : ℚ), (-107726470397/1000000000000 : ℚ), 2⟩,
    ⟨(407932595301/1000000000000 : ℚ), (372291991/2500000000 : ℚ), (-18120640341/250000000000 : ℚ), 2⟩,
    ⟨(418317895981/1000000000000 : ℚ), (385714197/5000000000 : ℚ), (-21420891653/500000000000 : ℚ), 2⟩,
    ⟨(214225354123/500000000000 : ℚ), (178286769/10000000000 : ℚ), (-17736972603/1000000000000 : ℚ), 2⟩,
    ⟨(438233447577/1000000000000 : ℚ), (-315051307/10000000000 : ℚ), (908944467/250000000000 : ℚ), 2⟩,
    ⟨(111892975211/250000000000 : ℚ), (-727257909/10000000000 : ℚ), (21888493331/1000000000000 : ℚ), 2⟩,
    ⟨(228188066819/500000000000 : ℚ), (-67033061/625000000 : ℚ), (37491035251/1000000000000 : ℚ), 2⟩,
    ⟨(14517542387/31250000000 : ℚ), (-1361739589/10000000000 : ℚ), (50806357231/1000000000000 : ℚ), 2⟩,
    ⟨(236024370457/500000000000 : ℚ), (-1603266453/10000000000 : ℚ), (62115906511/1000000000000 : ℚ), 2⟩,
    ⟨(23938308981/50000000000 : ℚ), (-1803580639/10000000000 : ℚ), (71638179213/1000000000000 : ℚ), 2⟩,
    ⟨(484648979897/1000000000000 : ℚ), (-1967678973/10000000000 : ℚ), (39771214841/500000000000 : ℚ), 2⟩,
    ⟨(489640487161/1000000000000 : ℚ), (-2099400109/10000000000 : ℚ), (335776881/3906250000 : ℚ), 2⟩,
    ⟨(123423157617/250000000000 : ℚ), (-2201656613/10000000000 : ℚ), (90986355697/1000000000000 : ℚ), 2⟩,
    ⟨(99353277093/200000000000 : ℚ), (-1138302271/5000000000 : ℚ), (739827673/7812500000 : ℚ), 2⟩,
    ⟨(498832150209/1000000000000 : ℚ), (-2325765233/10000000000 : ℚ), (4857257067/50000000000 : ℚ), 2⟩,
    ⟨(499870030257/1000000000000 : ℚ), (-2350109287/10000000000 : ℚ), (24590190583/250000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2353141339/10000000000 : ℚ), (98512345189/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (8303327827/31250000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control156.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control156.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate156

namespace DiagonalRamsey.JointInheritedCertificate157
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(298264523691/1000000000000 : ℚ), (12236638135753/10000000000 : ℚ), (-182957471816911/500000000000 : ℚ), 11⟩,
    ⟨(299331597173/1000000000000 : ℚ), (333099223677/2500000000 : ℚ), (-809320504719/20000000000 : ℚ), 8⟩,
    ⟨(60291093527/200000000000 : ℚ), (46465935427/1000000000 : ℚ), (-7215042361403/500000000000 : ℚ), 6⟩,
    ⟨(76153920261/250000000000 : ℚ), (28459305591/1250000000 : ℚ), (-7256877270813/1000000000000 : ℚ), 6⟩,
    ⟨(308781802817/1000000000000 : ℚ), (131315147311/10000000000 : ℚ), (-4304886139417/1000000000000 : ℚ), 5⟩,
    ⟨(78478427731/250000000000 : ℚ), (1665318171/200000000 : ℚ), (-2810524483573/1000000000000 : ℚ), 4⟩,
    ⟨(63992396457/200000000000 : ℚ), (28058173501/5000000000 : ℚ), (-1950961972821/1000000000000 : ℚ), 4⟩,
    ⟨(326868368741/1000000000000 : ℚ), (7699494/1953125 : ℚ), (-1411568787247/1000000000000 : ℚ), 4⟩,
    ⟨(334566358013/1000000000000 : ℚ), (7126889977/2500000000 : ℚ), (-210195173709/200000000000 : ℚ), 3⟩,
    ⟨(171490907129/500000000000 : ℚ), (21033979957/10000000000 : ℚ), (-99752483213/125000000000 : ℚ), 3⟩,
    ⟨(352033692031/1000000000000 : ℚ), (7862889463/5000000000 : ℚ), (-153428052149/250000000000 : ℚ), 3⟩,
    ⟨(361634816801/1000000000000 : ℚ), (740138551/625000000 : ℚ), (-475242485711/1000000000000 : ℚ), 3⟩,
    ⟨(371692724489/1000000000000 : ℚ), (4465110381/5000000000 : ℚ), (-46068436643/125000000000 : ℚ), 3⟩,
    ⟨(47763818993/125000000000 : ℚ), (1340173841/2000000000 : ℚ), (-11383136649/40000000000 : ℚ), 2⟩,
    ⟨(196393984897/500000000000 : ℚ), (198538531/400000000 : ℚ), (-217302999601/1000000000000 : ℚ), 2⟩,
    ⟨(403622148667/1000000000000 : ℚ), (717690291/2000000000 : ℚ), (-81289332093/500000000000 : ℚ), 2⟩,
    ⟨(414508749499/1000000000000 : ℚ), (2485645769/10000000000 : ℚ), (-117488132771/1000000000000 : ℚ), 2⟩,
    ⟨(425342928373/1000000000000 : ℚ), (1590936047/10000000000 : ℚ), (-79932634553/1000000000000 : ℚ), 2⟩,
    ⟨(218010173111/500000000000 : ℚ), (85792297/1000000000 : ℚ), (-48374540161/1000000000000 : ℚ), 2⟩,
    ⟨(223219086839/500000000000 : ℚ), (126250119/5000000000 : ℚ), (-21669812749/1000000000000 : ℚ), 2⟩,
    ⟨(91299216273/200000000000 : ℚ), (-125369891/5000000000 : ℚ), (260963063/250000000000 : ℚ), 2⟩,
    ⟨(93219441227/200000000000 : ℚ), (-670941921/10000000000 : ℚ), (10211697297/500000000000 : ℚ), 2⟩,
    ⟨(475149083909/1000000000000 : ℚ), (-204534031/2000000000 : ℚ), (36973574707/1000000000000 : ℚ), 2⟩,
    ⟨(483564540153/1000000000000 : ℚ), (-1317088249/10000000000 : ℚ), (3192792507/62500000000 : ℚ), 2⟩,
    ⟨(245631264713/500000000000 : ℚ), (-781400237/5000000000 : ℚ), (63059682007/1000000000000 : ℚ), 2⟩,
    ⟨(498168915881/1000000000000 : ℚ), (-1766457643/10000000000 : ℚ), (14626813057/200000000000 : ℚ), 2⟩,
    ⟨(252108593621/500000000000 : ℚ), (-241649787/1250000000 : ℚ), (4074523689/50000000000 : ℚ), 2⟩,
    ⟨(509349095349/1000000000000 : ℚ), (-516743009/2500000000 : ℚ), (2758425397/31250000000 : ℚ), 2⟩,
    ⟨(513515217123/1000000000000 : ℚ), (-33918391/156250000 : ℚ), (93578389999/1000000000000 : ℚ), 2⟩,
    ⟨(129168857633/250000000000 : ℚ), (-1123416789/5000000000 : ℚ), (48747984159/500000000000 : ℚ), 2⟩,
    ⟨(259399650497/500000000000 : ℚ), (-1148354443/5000000000 : ℚ), (50039091077/500000000000 : ℚ), 2⟩,
    ⟨(20794654979/40000000000 : ℚ), (-2321403033/10000000000 : ℚ), (101360628139/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-2324478513/10000000000 : ℚ), (5076026629/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (64204062909/250000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control157.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control157.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate157

namespace DiagonalRamsey.JointInheritedCertificate158
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(159783797527/500000000000 : ℚ), (632918793337/125000000 : ℚ), (-809667698811887/500000000000 : ℚ), 13⟩,
    ⟨(79961279793/250000000000 : ℚ), (2795853331171/5000000000 : ℚ), (-179715541453967/1000000000000 : ℚ), 10⟩,
    ⟨(320399498829/1000000000000 : ℚ), (99650329209/500000000 : ℚ), (-64545955947871/1000000000000 : ℚ), 8⟩,
    ⟨(12849175939/40000000000 : ℚ), (125458288677/1250000000 : ℚ), (-32815563284879/1000000000000 : ℚ), 8⟩,
    ⟨(32233281881/100000000000 : ℚ), (298876971709/5000000000 : ℚ), (-19757791568763/1000000000000 : ℚ), 7⟩,
    ⟨(323707101597/1000000000000 : ℚ), (98267560537/2500000000 : ℚ), (-13147971459679/1000000000000 : ℚ), 6⟩,
    ⟨(81337234017/250000000000 : ℚ), (275894206487/10000000000 : ℚ), (-934634840843/100000000000 : ℚ), 6⟩,
    ⟨(327254366901/1000000000000 : ℚ), (101388455361/5000000000 : ℚ), (-1740295475901/250000000000 : ℚ), 5⟩,
    ⟨(65883760749/200000000000 : ℚ), (154214537741/10000000000 : ℚ), (-5367139222117/1000000000000 : ℚ), 5⟩,
    ⟨(331837032283/1000000000000 : ℚ), (7524982101/625000000 : ℚ), (-4249429386601/1000000000000 : ℚ), 5⟩,
    ⟨(334503226791/1000000000000 : ℚ), (47982753161/5000000000 : ℚ), (-3435571534251/1000000000000 : ℚ), 4⟩,
    ⟨(84352741043/250000000000 : ℚ), (77775716111/10000000000 : ℚ), (-282463266849/100000000000 : ℚ), 4⟩,
    ⟨(42569154929/125000000000 : ℚ), (63898961719/10000000000 : ℚ), (-1177178192443/500000000000 : ℚ), 4⟩,
    ⟨(68784496511/200000000000 : ℚ), (10618731077/2000000000 : ℚ), (-198465093003/100000000000 : ℚ), 4⟩,
    ⟨(347510576739/1000000000000 : ℚ), (44532559389/10000000000 : ℚ), (-1688752479647/1000000000000 : ℚ), 4⟩,
    ⟨(2744600609/7812500000 : ℚ), (4705944143/1250000000 : ℚ), (-1448241393647/1000000000000 : ℚ), 4⟩,
    ⟨(44413529469/125000000000 : ℚ), (16019101377/5000000000 : ℚ), (-250020912941/200000000000 : ℚ), 3⟩,
    ⟨(44937376917/125000000000 : ℚ), (219326733/80000000 : ℚ), (-1084937239649/1000000000000 : ℚ), 3⟩,
    ⟨(1455484483/4000000000 : ℚ), (23568237251/10000000000 : ℚ), (-945805817019/1000000000000 : ℚ), 3⟩,
    ⟨(46051752401/125000000000 : ℚ), (2033662103/1000000000 : ℚ), (-413753927961/500000000000 : ℚ), 3⟩,
    ⟨(37311676647/100000000000 : ℚ), (17600376013/10000000000 : ℚ), (-726078299753/1000000000000 : ℚ), 3⟩,
    ⟨(377968033207/1000000000000 : ℚ), (15266599571/10000000000 : ℚ), (-79806568837/125000000000 : ℚ), 3⟩,
    ⟨(38295613229/100000000000 : ℚ), (6631422911/5000000000 : ℚ), (-562231933267/1000000000000 : ℚ), 3⟩,
    ⟨(194034523477/500000000000 : ℚ), (11531987821/10000000000 : ℚ), (-49551746929/100000000000 : ℚ), 3⟩,
    ⟨(393294459739/1000000000000 : ℚ), (10028520953/10000000000 : ℚ), (-109197534029/250000000000 : ℚ), 3⟩,
    ⟨(398619782167/1000000000000 : ℚ), (8715863781/10000000000 : ℚ), (-384823323847/1000000000000 : ℚ), 3⟩,
    ⟨(404032185071/1000000000000 : ℚ), (1891090133/2500000000 : ℚ), (-67723592483/200000000000 : ℚ), 2⟩,
    ⟨(204759314749/500000000000 : ℚ), (3274892253/5000000000 : ℚ), (-74338461987/250000000000 : ℚ), 2⟩,
    ⟨(207532949061/500000000000 : ℚ), (1130440807/2000000000 : ℚ), (-10414108229/40000000000 : ℚ), 2⟩,
    ⟨(26291289193/62500000000 : ℚ), (303444633/625000000 : ℚ), (-227049861091/1000000000000 : ℚ), 2⟩,
    ⟨(426289338203/1000000000000 : ℚ), (1036191279/2500000000 : ℚ), (-196972299999/1000000000000 : ℚ), 2⟩,
    ⟨(43193847141/100000000000 : ℚ), (701927789/2000000000 : ℚ), (-84860761919/500000000000 : ℚ), 2⟩,
    ⟨(109398604363/250000000000 : ℚ), (147001861/500000000 : ℚ), (-144960035581/1000000000000 : ℚ), 2⟩,
    ⟨(221621775329/500000000000 : ℚ), (2427754653/10000000000 : ℚ), (-15300075669/125000000000 : ℚ), 2⟩,
    ⟨(224436130887/500000000000 : ℚ), (982909163/5000000000 : ℚ), (-25449419913/250000000000 : ℚ), 2⟩,
    ⟨(454466990739/1000000000000 : ℚ), (15482781/100000000 : ℚ), (-41470229293/500000000000 : ℚ), 2⟩,
    ⟨(115003564841/250000000000 : ℚ), (1170037081/10000000000 : ℚ), (-16411820459/250000000000 : ℚ), 2⟩,
    ⟨(46550070379/100000000000 : ℚ), (413356829/5000000000 : ℚ), (-49761046079/1000000000000 : ℚ), 2⟩,
    ⟨(235456553347/500000000000 : ℚ), (51452863/1000000000 : ℚ), (-35145444783/1000000000000 : ℚ), 2⟩,
    ⟨(238119214561/500000000000 : ℚ), (46042473/2000000000 : ℚ), (-21681864439/1000000000000 : ℚ), 2⟩,
    ⟨(481463841907/1000000000000 : ℚ), (-29071923/10000000000 : ℚ), (-9266810947/1000000000000 : ℚ), 2⟩,
    ⟨(486576756571/1000000000000 : ℚ), (-53158377/2000000000 : ℚ), (2190236577/1000000000000 : ℚ), 2⟩,
    ⟨(98312971131/200000000000 : ℚ), (-30131197/625000000 : ℚ), (6384310931/500000000000 : ℚ), 2⟩,
    ⟨(496416122391/1000000000000 : ℚ), (-679873811/10000000000 : ℚ), (5634505683/250000000000 : ℚ), 2⟩,
    ⟨(250559434827/500000000000 : ℚ), (-430380889/5000000000 : ℚ), (31559726887/1000000000000 : ℚ), 2⟩,
    ⟨(31603860507/62500000000 : ℚ), (-1026206313/10000000000 : ℚ), (19943856531/500000000000 : ℚ), 2⟩,
    ⟨(255016936763/500000000000 : ℚ), (-117747469/1000000000 : ℚ), (47569571349/1000000000000 : ℚ), 2⟩,
    ⟨(51422465311/100000000000 : ℚ), (-328920207/2500000000 : ℚ), (10929457713/200000000000 : ℚ), 2⟩,
    ⟨(51822401091/100000000000 : ℚ), (-1441804547/10000000000 : ℚ), (61157920471/1000000000000 : ℚ), 2⟩,
    ⟨(261011156061/500000000000 : ℚ), (-389177/2500000 : ℚ), (16783542399/250000000000 : ℚ), 2⟩,
    ⟨(262805203153/500000000000 : ℚ), (-1661149711/10000000000 : ℚ), (9075610211/125000000000 : ℚ), 2⟩,
    ⟨(52897964943/100000000000 : ℚ), (-877898301/5000000000 : ℚ), (77595474621/1000000000000 : ℚ), 2⟩,
    ⟨(53212192469/100000000000 : ℚ), (-1841234303/10000000000 : ℚ), (41064154409/500000000000 : ℚ), 2⟩,
    ⟨(535029662071/1000000000000 : ℚ), (-479493997/2500000000 : ℚ), (43111503313/500000000000 : ℚ), 2⟩,
    ⟨(268847928289/500000000000 : ℚ), (-993234981/5000000000 : ℚ), (44948364699/500000000000 : ℚ), 2⟩,
    ⟨(540114085117/1000000000000 : ℚ), (-255888269/1250000000 : ℚ), (93164415851/1000000000000 : ℚ), 2⟩,
    ⟨(542278521961/1000000000000 : ℚ), (-105011083/500000000 : ℚ), (96038988099/1000000000000 : ℚ), 2⟩,
    ⟨(272091976397/500000000000 : ℚ), (-1073052743/5000000000 : ℚ), (49265764029/500000000000 : ℚ), 2⟩,
    ⟨(109165157453/200000000000 : ℚ), (-437000503/2000000000 : ℚ), (12581428387/125000000000 : ℚ), 2⟩,
    ⟨(136800017513/250000000000 : ℚ), (-34642451/156250000 : ℚ), (51203256599/500000000000 : ℚ), 2⟩,
    ⟨(274151745193/500000000000 : ℚ), (-1121307319/5000000000 : ℚ), (12975394501/125000000000 : ℚ), 2⟩,
    ⟨(34320836877/62500000000 : ℚ), (-2261626151/10000000000 : ℚ), (104846351779/1000000000000 : ℚ), 2⟩,
    ⟨(549687769689/1000000000000 : ℚ), (-454849533/2000000000 : ℚ), (26384947713/250000000000 : ℚ), 2⟩,
    ⟨(549965293807/1000000000000 : ℚ), (-35633479/156250000 : ℚ), (105885906123/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-2281328793/10000000000 : ℚ), (1059291423/10000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (4864138493/20000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control158.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control158.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate158

namespace DiagonalRamsey.JointInheritedCertificate159
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(178493984573/500000000000 : ℚ), (53637437449587/10000000000 : ℚ), (-95809825293367/50000000000 : ℚ), 13⟩,
    ⟨(357280643693/1000000000000 : ℚ), (2962506126573/5000000000 : ℚ), (-212663401123981/1000000000000 : ℚ), 10⟩,
    ⟨(357865287707/1000000000000 : ℚ), (211266299/1000000 : ℚ), (-76380776645521/1000000000000 : ℚ), 8⟩,
    ⟨(358740492731/1000000000000 : ℚ), (13305768779/125000000 : ℚ), (-19416775364833/500000000000 : ℚ), 8⟩,
    ⟨(179952075159/500000000000 : ℚ), (158581973953/2500000000 : ℚ), (-5845512025651/250000000000 : ℚ), 7⟩,
    ⟨(90338364279/250000000000 : ℚ), (417385019367/10000000000 : ℚ), (-15560554940793/1000000000000 : ℚ), 6⟩,
    ⟨(181542460809/500000000000 : ℚ), (146579890009/5000000000 : ℚ), (-11062071549687/1000000000000 : ℚ), 6⟩,
    ⟨(365094372573/1000000000000 : ℚ), (107810715337/5000000000 : ℚ), (-4119860762737/500000000000 : ℚ), 5⟩,
    ⟨(367376969039/1000000000000 : ℚ), (641039407/39062500 : ℚ), (-3176767623987/500000000000 : ℚ), 5⟩,
    ⟨(369927212041/1000000000000 : ℚ), (801389967/62500000 : ℚ), (-5031013813597/1000000000000 : ℚ), 5⟩,
    ⟨(18636947891/50000000000 : ℚ), (102283431041/10000000000 : ℚ), (-4068056920029/1000000000000 : ℚ), 4⟩,
    ⟨(75161086527/200000000000 : ℚ), (41482868303/5000000000 : ℚ), (-3345228375181/1000000000000 : ℚ), 4⟩,
    ⟨(379119249077/1000000000000 : ℚ), (34111208351/5000000000 : ℚ), (-697214702667/250000000000 : ℚ), 4⟩,
    ⟨(3061379391/8000000000 : ℚ), (11347497283/2000000000 : ℚ), (-18371146419/7812500000 : ℚ), 4⟩,
    ⟨(193228198559/500000000000 : ℚ), (4763403447/1000000000 : ℚ), (-250187735331/125000000000 : ℚ), 4⟩,
    ⟨(390462052883/1000000000000 : ℚ), (20154872589/5000000000 : ℚ), (-42926194277/25000000000 : ℚ), 4⟩,
    ⟨(78935948239/200000000000 : ℚ), (17170009293/5000000000 : ℚ), (-1482745580221/1000000000000 : ℚ), 3⟩,
    ⟨(199549650637/500000000000 : ℚ), (14709357743/5000000000 : ℚ), (-20116660831/15625000000 : ℚ), 3⟩,
    ⟨(403710086011/1000000000000 : ℚ), (25320714771/10000000000 : ℚ), (-1123005026239/1000000000000 : ℚ), 3⟩,
    ⟨(408500987623/1000000000000 : ℚ), (10938785331/5000000000 : ℚ), (-983205380261/1000000000000 : ℚ), 3⟩,
    ⟨(51682558051/125000000000 : ℚ), (9480642307/5000000000 : ℚ), (-431687571951/500000000000 : ℚ), 3⟩,
    ⟨(418576568551/1000000000000 : ℚ), (164732431/100000000 : ℚ), (-379943801437/500000000000 : ℚ), 3⟩,
    ⟨(423836974911/1000000000000 : ℚ), (14336525069/10000000000 : ℚ), (-669904007811/1000000000000 : ℚ), 3⟩,
    ⟨(107307252677/250000000000 : ℚ), (6245227943/5000000000 : ℚ), (-59117687741/100000000000 : ℚ), 3⟩,
    ⟨(217369843027/500000000000 : ℚ), (5443344339/5000000000 : ℚ), (-6523853827/12500000000 : ℚ), 3⟩,
    ⟨(1761422901/4000000000 : ℚ), (148224107/156250000 : ℚ), (-460646373539/1000000000000 : ℚ), 3⟩,
    ⟨(223031799383/500000000000 : ℚ), (2064471569/2500000000 : ℚ), (-406208380197/1000000000000 : ℚ), 2⟩,
    ⟨(90369911167/200000000000 : ℚ), (7175548469/10000000000 : ℚ), (-178811626173/500000000000 : ℚ), 2⟩,
    ⟨(457699657579/1000000000000 : ℚ), (6218118021/10000000000 : ℚ), (-31408783461/100000000000 : ℚ), 2⟩,
    ⟨(463599810591/1000000000000 : ℚ), (2684010859/5000000000 : ℚ), (-68733342293/250000000000 : ℚ), 2⟩,
    ⟨(93907160177/200000000000 : ℚ), (2305306243/5000000000 : ℚ), (-239599536083/1000000000000 : ℚ), 2⟩,
    ⟨(475493328141/1000000000000 : ℚ), (196680693/500000000 : ℚ), (-41522833121/200000000000 : ℚ), 2⟩,
    ⟨(240729020077/500000000000 : ℚ), (1663341477/5000000000 : ℚ), (-44644312441/250000000000 : ℚ), 2⟩,
    ⟨(48741556741/100000000000 : ℚ), (2781063967/10000000000 : ℚ), (-76074120509/500000000000 : ℚ), 2⟩,
    ⟨(61668944713/125000000000 : ℚ), (1144655743/5000000000 : ℚ), (-64017944273/500000000000 : ℚ), 2⟩,
    ⟨(124812927679/250000000000 : ℚ), (184506803/1000000000 : ℚ), (-105990048817/1000000000000 : ℚ), 2⟩,
    ⟨(25255090623/50000000000 : ℚ), (1442884061/10000000000 : ℚ), (-5362190193/62500000000 : ℚ), 2⟩,
    ⟨(510887769529/1000000000000 : ℚ), (539035753/5000000000 : ℚ), (-67264238281/1000000000000 : ℚ), 2⟩,
    ⟨(103319128609/200000000000 : ℚ), (373291937/5000000000 : ℚ), (-50235598883/1000000000000 : ℚ), 2⟩,
    ⟨(522211682241/1000000000000 : ℚ), (88983527/2000000000 : ℚ), (-17284008439/500000000000 : ℚ), 2⟩,
    ⟨(527722357587/1000000000000 : ℚ), (21253837/1250000000 : ℚ), (-1258641777/62500000000 : ℚ), 2⟩,
    ⟨(533114393383/1000000000000 : ℚ), (-40362651/5000000000 : ℚ), (-213702433/31250000000 : ℚ), 2⟩,
    ⟨(538374799743/1000000000000 : ℚ), (-15483073/500000000 : ℚ), (1356501579/250000000000 : ℚ), 2⟩,
    ⟨(543490903887/1000000000000 : ℚ), (-5187989/100000000 : ℚ), (8369197619/500000000000 : ℚ), 2⟩,
    ⟨(4284768599/7812500000 : ℚ), (-17747713/250000000 : ℚ), (5434393409/200000000000 : ℚ), 2⟩,
    ⟨(138310320571/250000000000 : ℚ), (-22113613/250000000 : ℚ), (36791342949/1000000000000 : ℚ), 2⟩,
    ⟨(557852067021/1000000000000 : ℚ), (-1044072781/10000000000 : ℚ), (1826142919/40000000000 : ℚ), 2⟩,
    ⟨(562271627099/1000000000000 : ℚ), (-1189694953/10000000000 : ℚ), (53809062037/1000000000000 : ℚ), 2⟩,
    ⟨(566489315411/1000000000000 : ℚ), (-330617239/2500000000 : ℚ), (61302362119/1000000000000 : ℚ), 2⟩,
    ⟨(570494971177/1000000000000 : ℚ), (-180415809/1250000000 : ℚ), (17043212987/250000000000 : ℚ), 2⟩,
    ⟨(28713947221/50000000000 : ℚ), (-1553087909/10000000000 : ℚ), (9306915309/125000000000 : ℚ), 2⟩,
    ⟨(577832119217/1000000000000 : ℚ), (-826237603/5000000000 : ℚ), (80180480077/1000000000000 : ℚ), 2⟩,
    ⟨(29057296783/50000000000 : ℚ), (-217765353/1250000000 : ℚ), (666995173/7812500000 : ℚ), 2⟩,
    ⟨(292106205237/500000000000 : ℚ), (-364517433/2000000000 : ℚ), (90063811913/1000000000000 : ℚ), 2⟩,
    ⟨(587024156253/1000000000000 : ℚ), (-947177333/5000000000 : ℚ), (23566650969/250000000000 : ℚ), 2⟩,
    ⟨(117914879851/200000000000 : ℚ), (-1957848719/10000000000 : ℚ), (98001922701/1000000000000 : ℚ), 2⟩,
    ⟨(591856995721/1000000000000 : ℚ), (-2013435603/10000000000 : ℚ), (25321376323/250000000000 : ℚ), 2⟩,
    ⟨(593866446677/1000000000000 : ℚ), (-412285903/2000000000 : ℚ), (104130866049/1000000000000 : ℚ), 2⟩,
    ⟨(297798955589/500000000000 : ℚ), (-420419369/2000000000 : ℚ), (106549474003/1000000000000 : ℚ), 2⟩,
    ⟨(74630902247/125000000000 : ℚ), (-2135659737/10000000000 : ℚ), (108550899801/1000000000000 : ℚ), 2⟩,
    ⟨(149552718891/250000000000 : ℚ), (-2162299041/10000000000 : ℚ), (11014293931/100000000000 : ℚ), 2⟩,
    ⟨(599086080587/1000000000000 : ℚ), (-545539173/2500000000 : ℚ), (111331713467/1000000000000 : ℚ), 2⟩,
    ⟨(299835362301/500000000000 : ℚ), (-2195337559/10000000000 : ℚ), (112121745829/1000000000000 : ℚ), 2⟩,
    ⟨(149990849787/250000000000 : ℚ), (-550477703/2500000000 : ℚ), (112516020761/1000000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-440546333/2000000000 : ℚ), (112565270419/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (109807473813/500000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control159.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control159.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate159

namespace DiagonalRamsey.JointInheritedCertificate160
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(109965833547/250000000000 : ℚ), (30873135959397/5000000000 : ℚ), (-679434346646857/250000000000 : ℚ), 13⟩,
    ⟨(440176633001/1000000000000 : ℚ), (426550148143/625000000 : ℚ), (-301626718576267/1000000000000 : ℚ), 10⟩,
    ⟨(440802475861/1000000000000 : ℚ), (2435731884833/10000000000 : ℚ), (-27084486791053/250000000000 : ℚ), 9⟩,
    ⟨(22086967753/50000000000 : ℚ), (122864081801/1000000000 : ℚ), (-13771255434939/250000000000 : ℚ), 8⟩,
    ⟨(442985013573/1000000000000 : ℚ), (733123923547/10000000000 : ℚ), (-16585176823399/500000000000 : ℚ), 7⟩,
    ⟨(444536450499/1000000000000 : ℚ), (483087728959/10000000000 : ℚ), (-5519327094873/250000000000 : ℚ), 6⟩,
    ⟨(446389928291/1000000000000 : ℚ), (13593306747/400000000 : ℚ), (-1962161794547/125000000000 : ℚ), 6⟩,
    ⟨(448540981759/1000000000000 : ℚ), (125179341597/5000000000 : ℚ), (-11694556825893/1000000000000 : ℚ), 5⟩,
    ⟨(225492214413/500000000000 : ℚ), (19087043973/1000000000 : ℚ), (-9019601454963/1000000000000 : ℚ), 5⟩,
    ⟨(90742876603/200000000000 : ℚ), (47808063/3200000 : ℚ), (-1428823077081/200000000000 : ℚ), 5⟩,
    ⟨(228362133813/500000000000 : ℚ), (119397280967/10000000000 : ℚ), (-5778624452451/1000000000000 : ℚ), 5⟩,
    ⟨(92001366317/200000000000 : ℚ), (97032756993/10000000000 : ℚ), (-148554157721/31250000000 : ℚ), 4⟩,
    ⟨(231777083453/500000000000 : ℚ), (7994792977/1000000000 : ℚ), (-3964956320647/1000000000000 : ℚ), 4⟩,
    ⟨(467357727749/1000000000000 : ℚ), (1332520059/200000000 : ℚ), (-104531506673/31250000000 : ℚ), 4⟩,
    ⟨(235704175501/500000000000 : ℚ), (875874881/156250000 : ℚ), (-2848970793809/1000000000000 : ℚ), 4⟩,
    ⟨(475696278359/1000000000000 : ℚ), (47543291821/10000000000 : ℚ), (-2445930037427/1000000000000 : ℚ), 4⟩,
    ⟨(480211179827/1000000000000 : ℚ), (40598082811/10000000000 : ℚ), (-1057022782519/500000000000 : ℚ), 3⟩,
    ⟨(242471089307/500000000000 : ℚ), (17433537761/5000000000 : ℚ), (-918766377813/500000000000 : ℚ), 3⟩,
    ⟨(489877877329/1000000000000 : ℚ), (30090371783/10000000000 : ℚ), (-1604754175813/1000000000000 : ℚ), 3⟩,
    ⟨(495006385441/1000000000000 : ℚ), (203698571/78125000 : ℚ), (-1406977651411/1000000000000 : ℚ), 3⟩,
    ⟨(20012613917/40000000000 : ℚ), (4533660037/2000000000 : ℚ), (-77346722543/62500000000 : ℚ), 3⟩,
    ⟨(20231679001/40000000000 : ℚ), (9880501989/5000000000 : ℚ), (-272829843249/250000000000 : ℚ), 3⟩,
    ⟨(127855768267/250000000000 : ℚ), (3452507759/2000000000 : ℚ), (-241066506719/250000000000 : ℚ), 3⟩,
    ⟨(129298769061/250000000000 : ℚ), (1510266419/1000000000 : ℚ), (-853198957601/1000000000000 : ℚ), 3⟩,
    ⟨(523094079293/1000000000000 : ℚ), (13225370881/10000000000 : ℚ), (-755567137377/1000000000000 : ℚ), 3⟩,
    ⟨(529105870999/1000000000000 : ℚ), (2896395267/2500000000 : ℚ), (-334655077811/500000000000 : ℚ), 3⟩,
    ⟨(53521596843/100000000000 : ℚ), (3963557/3906250 : ℚ), (-118549869503/200000000000 : ℚ), 2⟩,
    ⟨(21656386073/40000000000 : ℚ), (8878815111/10000000000 : ℚ), (-10490122207/20000000000 : ℚ), 2⟩,
    ⟨(27383600003/50000000000 : ℚ), (1939312347/2500000000 : ℚ), (-231719958027/500000000000 : ℚ), 2⟩,
    ⟨(138496981647/250000000000 : ℚ), (3380778941/5000000000 : ℚ), (-3192193539/7812500000 : ℚ), 2⟩,
    ⟨(560342215789/1000000000000 : ℚ), (5874676221/10000000000 : ℚ), (-359192410493/1000000000000 : ℚ), 2⟩,
    ⟨(70839944953/125000000000 : ℚ), (1016457031/2000000000 : ℚ), (-78635877277/250000000000 : ℚ), 2⟩,
    ⟨(286552297257/500000000000 : ℚ), (2186152923/5000000000 : ℚ), (-137042513697/500000000000 : ℚ), 2⟩,
    ⟨(579481938349/1000000000000 : ℚ), (3734499599/10000000000 : ℚ), (-237332191761/1000000000000 : ℚ), 2⟩,
    ⟨(11716724551/20000000000 : ℚ), (790037029/2500000000 : ℚ), (-50967521387/250000000000 : ℚ), 2⟩,
    ⟨(296076077039/500000000000 : ℚ), (1320898167/5000000000 : ℚ), (-21667754739/125000000000 : ℚ), 2⟩,
    ⟨(598414502313/1000000000000 : ℚ), (1086522139/5000000000 : ℚ), (-36360051891/250000000000 : ℚ), 2⟩,
    ⟨(151152046427/250000000000 : ℚ), (1748377593/10000000000 : ℚ), (-59948950623/500000000000 : ℚ), 2⟩,
    ⟨(610718283139/1000000000000 : ℚ), (1363028787/10000000000 : ℚ), (-48241635143/500000000000 : ℚ), 2⟩,
    ⟨(123346014969/200000000000 : ℚ), (506431517/5000000000 : ℚ), (-14998822259/200000000000 : ℚ), 2⟩,
    ⟨(311314538947/500000000000 : ℚ), (347141863/5000000000 : ℚ), (-1381338893/25000000000 : ℚ), 2⟩,
    ⟨(62840108107/100000000000 : ℚ), (202076999/5000000000 : ℚ), (-37106479091/1000000000000 : ℚ), 2⟩,
    ⟨(634032179113/1000000000000 : ℚ), (8733203/625000000 : ℚ), (-127603107/6250000000 : ℚ), 2⟩,
    ⟨(639508806213/1000000000000 : ℚ), (-101387721/10000000000 : ℚ), (-5063442099/1000000000000 : ℚ), 2⟩,
    ⟨(644817768697/1000000000000 : ℚ), (-80328209/2500000000 : ℚ), (9058765799/1000000000000 : ℚ), 2⟩,
    ⟨(649946276809/1000000000000 : ℚ), (-521899681/10000000000 : ℚ), (688872489/31250000000 : ℚ), 2⟩,
    ⟨(163720493881/250000000000 : ℚ), (-704782459/10000000000 : ℚ), (33975056217/1000000000000 : ℚ), 2⟩,
    ⟨(659612974311/1000000000000 : ℚ), (-108925247/1250000000 : ℚ), (44925759139/1000000000000 : ℚ), 2⟩,
    ⟨(664127875779/1000000000000 : ℚ), (-255757367/2500000000 : ℚ), (54961272363/1000000000000 : ℚ), 2⟩,
    ⟨(2610999231/3906250000 : ℚ), (-1160786939/10000000000 : ℚ), (64139454199/1000000000000 : ℚ), 2⟩,
    ⟨(672466426389/1000000000000 : ℚ), (-642832273/5000000000 : ℚ), (7251159513/100000000000 : ℚ), 2⟩,
    ⟨(21133437101/31250000000 : ℚ), (-699267751/5000000000 : ℚ), (80123122507/1000000000000 : ℚ), 2⟩,
    ⟨(679817322553/1000000000000 : ℚ), (-1500168847/10000000000 : ℚ), (87014205919/1000000000000 : ℚ), 2⟩,
    ⟨(42693742907/62500000000 : ℚ), (-318248083/2000000000 : ℚ), (46610139937/500000000000 : ℚ), 2⟩,
    ⟨(686109771123/1000000000000 : ℚ), (-836171119/5000000000 : ℚ), (9877249339/100000000000 : ℚ), 2⟩,
    ⟨(2690780177/3906250000 : ℚ), (-1743990609/10000000000 : ℚ), (5184904871/50000000000 : ℚ), 2⟩,
    ⟨(691283172379/1000000000000 : ℚ), (-72265319/400000000 : ℚ), (108020777469/1000000000000 : ℚ), 2⟩,
    ⟨(693434225847/1000000000000 : ℚ), (-116290863/625000000 : ℚ), (111760938261/1000000000000 : ℚ), 2⟩,
    ⟨(695287703639/1000000000000 : ℚ), (-953189783/5000000000 : ℚ), (28733986201/250000000000 : ℚ), 2⟩,
    ⟨(139367828113/200000000000 : ℚ), (-972041429/5000000000 : ℚ), (29390081599/250000000000 : ℚ), 2⟩,
    ⟨(349042399539/500000000000 : ℚ), (-493496469/2500000000 : ℚ), (23929188959/200000000000 : ℚ), 2⟩,
    ⟨(174755419569/250000000000 : ℚ), (-1996263169/10000000000 : ℚ), (60601065457/500000000000 : ℚ), 2⟩,
    ⟨(699647521137/1000000000000 : ℚ), (-502760951/2500000000 : ℚ), (24447158289/200000000000 : ℚ), 2⟩,
    ⟨(13999216399/20000000000 : ℚ), (-2018412957/10000000000 : ℚ), (7671967987/62500000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-2019333111/10000000000 : ℚ), (12281589673/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (449999/1000000 : ℚ)
  x := (42149876539/250000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control160.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control160.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate160

namespace DiagonalRamsey.JointInheritedCertificate176
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(49169453953/200000000000 : ℚ), (281373129993/250000000 : ℚ), (-138725947919883/500000000000 : ℚ), 11⟩,
    ⟨(123390802413/500000000000 : ℚ), (1224374953653/10000000000 : ℚ), (-613622609139/20000000000 : ℚ), 8⟩,
    ⟨(24864127679/100000000000 : ℚ), (213211352479/5000000000 : ℚ), (-10939369479653/1000000000000 : ℚ), 7⟩,
    ⟨(251408376001/1000000000000 : ℚ), (208610228377/10000000000 : ℚ), (-2750090922981/500000000000 : ℚ), 6⟩,
    ⟨(12752812689/50000000000 : ℚ), (120107000793/10000000000 : ℚ), (-652335852197/200000000000 : ℚ), 5⟩,
    ⟨(259549779069/1000000000000 : ℚ), (76010415803/10000000000 : ℚ), (-532095134633/250000000000 : ℚ), 4⟩,
    ⟨(52969135353/200000000000 : ℚ), (10223138109/2000000000 : ℚ), (-738188970147/500000000000 : ℚ), 4⟩,
    ⟨(67723236119/250000000000 : ℚ), (35820498171/10000000000 : ℚ), (-1067105661633/1000000000000 : ℚ), 4⟩,
    ⟨(27763334371/100000000000 : ℚ), (6457418383/2500000000 : ℚ), (-198343184723/250000000000 : ℚ), 3⟩,
    ⟨(8906311273/31250000000 : ℚ), (1899274151/1000000000 : ℚ), (-601221862477/1000000000000 : ℚ), 3⟩,
    ⟨(58585566349/200000000000 : ℚ), (14139048421/10000000000 : ℚ), (-230546269583/500000000000 : ℚ), 3⟩,
    ⟨(301334626267/1000000000000 : ℚ), (5294413343/5000000000 : ℚ), (-177845847577/500000000000 : ℚ), 3⟩,
    ⟨(155070691137/500000000000 : ℚ), (7926599473/10000000000 : ℚ), (-27435916743/100000000000 : ℚ), 3⟩,
    ⟨(79815821473/250000000000 : ℚ), (735956023/1250000000 : ℚ), (-210237289349/1000000000000 : ℚ), 3⟩,
    ⟨(164306244101/500000000000 : ℚ), (4297423393/10000000000 : ℚ), (-79378011309/500000000000 : ℚ), 2⟩,
    ⟨(84524737819/250000000000 : ℚ), (3037479599/10000000000 : ℚ), (-58389239367/500000000000 : ℚ), 2⟩,
    ⟨(43453914411/125000000000 : ℚ), (2025465337/10000000000 : ℚ), (-20524282993/250000000000 : ℚ), 2⟩,
    ⟨(178558889181/500000000000 : ℚ), (1202923327/10000000000 : ℚ), (-13281333743/250000000000 : ℚ), 2⟩,
    ⟨(5726046573/15625000000 : ℚ), (105522081/2000000000 : ℚ), (-5740426537/200000000000 : ℚ), 2⟩,
    ⟨(37558888429/100000000000 : ℚ), (-7868311/2500000000 : ℚ), (-3982585101/500000000000 : ℚ), 2⟩,
    ⟨(384395640297/1000000000000 : ℚ), (-124345029/2500000000 : ℚ), (1216772783/125000000000 : ℚ), 2⟩,
    ⟨(392802434819/1000000000000 : ℚ), (-443723907/5000000000 : ℚ), (24888801841/1000000000000 : ℚ), 2⟩,
    ⟨(100182076457/250000000000 : ℚ), (-1214839593/10000000000 : ℚ), (2367263519/62500000000 : ℚ), 2⟩,
    ⟨(204048461427/500000000000 : ℚ), (-297925011/2000000000 : ℚ), (24493637869/500000000000 : ℚ), 2⟩,
    ⟨(51854665261/125000000000 : ℚ), (-859774601/5000000000 : ℚ), (14611707373/250000000000 : ℚ), 2⟩,
    ⟨(420884589799/1000000000000 : ℚ), (-1910586433/10000000000 : ℚ), (66428848061/1000000000000 : ℚ), 2⟩,
    ⟨(85236097499/200000000000 : ℚ), (-41346871/200000000 : ℚ), (18266902713/250000000000 : ℚ), 2⟩,
    ⟨(26917125799/62500000000 : ℚ), (-2193354871/10000000000 : ℚ), (78466049683/1000000000000 : ℚ), 2⟩,
    ⟨(434321890563/1000000000000 : ℚ), (-572824701/2500000000 : ℚ), (41350995291/500000000000 : ℚ), 2⟩,
    ⟨(437088989773/1000000000000 : ℚ), (-2363155989/10000000000 : ℚ), (42916400059/500000000000 : ℚ), 2⟩,
    ⟨(219474330869/500000000000 : ℚ), (-1205161399/5000000000 : ℚ), (43949390719/500000000000 : ℚ), 2⟩,
    ⟨(439882996799/1000000000000 : ℚ), (-121684477/500000000 : ℚ), (44462775689/500000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-121830017/500000000 : ℚ), (8905360953/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (12053794893/40000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control176.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control176.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate176

namespace DiagonalRamsey.JointInheritedCertificate177
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(26566726929/100000000000 : ℚ), (2311483289101/2000000000 : ℚ), (-7696444746533/25000000000 : ℚ), 11⟩,
    ⟨(53330118859/200000000000 : ℚ), (314446434279/2500000000 : ℚ), (-34043973840911/1000000000000 : ℚ), 8⟩,
    ⟨(268607774347/1000000000000 : ℚ), (87661816663/2000000000 : ℚ), (-6069394162567/500000000000 : ℚ), 7⟩,
    ⟨(135759980367/500000000000 : ℚ), (26821118447/1250000000 : ℚ), (-6103579685189/1000000000000 : ℚ), 6⟩,
    ⟨(275359107507/1000000000000 : ℚ), (61814560851/5000000000 : ℚ), (-723965619023/200000000000 : ℚ), 5⟩,
    ⟨(56017648317/200000000000 : ℚ), (15660396781/2000000000 : ℚ), (-2362413162049/1000000000000 : ℚ), 4⟩,
    ⟨(142830909411/500000000000 : ℚ), (3293896413/625000000 : ℚ), (-1639054346171/1000000000000 : ℚ), 4⟩,
    ⟨(292026162621/1000000000000 : ℚ), (18483816767/5000000000 : ℚ), (-592520838053/500000000000 : ℚ), 4⟩,
    ⟨(299119980873/1000000000000 : ℚ), (26685700641/10000000000 : ℚ), (-7051495421/8000000000 : ℚ), 3⟩,
    ⟨(306874956231/1000000000000 : ℚ), (3929424399/2000000000 : ℚ), (-13367381831/20000000000 : ℚ), 3⟩,
    ⟨(157608202021/500000000000 : ℚ), (1464890033/1000000000 : ℚ), (-128259339357/250000000000 : ℚ), 3⟩,
    ⟨(324063991603/1000000000000 : ℚ), (10992304233/10000000000 : ℚ), (-99063119439/250000000000 : ℚ), 3⟩,
    ⟨(333332511811/1000000000000 : ℚ), (2062532687/2500000000 : ℚ), (-306184790283/1000000000000 : ℚ), 3⟩,
    ⟨(342932703749/1000000000000 : ℚ), (6150087767/10000000000 : ℚ), (-235223634699/1000000000000 : ℚ), 3⟩,
    ⟨(352772112321/1000000000000 : ℚ), (4512553757/10000000000 : ℚ), (-89148243937/500000000000 : ℚ), 2⟩,
    ⟨(181377989321/500000000000 : ℚ), (128623237/400000000 : ℚ), (-131920862853/1000000000000 : ℚ), 2⟩,
    ⟨(23299259539/62500000000 : ℚ), (2174335793/10000000000 : ℚ), (-93645333801/1000000000000 : ℚ), 2⟩,
    ⟨(76554403789/200000000000 : ℚ), (166070321/1250000000 : ℚ), (-6170726971/100000000000 : ℚ), 2⟩,
    ⟨(392611427517/1000000000000 : ℚ), (126937943/2000000000 : ℚ), (-8704070957/250000000000 : ℚ), 2⟩,
    ⟨(201105809727/500000000000 : ℚ), (30360043/5000000000 : ℚ), (-3003310823/250000000000 : ℚ), 2⟩,
    ⟨(205740069831/500000000000 : ℚ), (-20857907/500000000 : ℚ), (1855968853/250000000000 : ℚ), 2⟩,
    ⟨(52540965903/125000000000 : ℚ), (-816867497/10000000000 : ℚ), (24044278049/1000000000000 : ℚ), 2⟩,
    ⟨(85733835007/200000000000 : ℚ), (-288006533/2500000000 : ℚ), (19134573767/500000000000 : ℚ), 2⟩,
    ⟨(436424150393/1000000000000 : ℚ), (-143305997/1000000000 : ℚ), (50423420891/1000000000000 : ℚ), 2⟩,
    ⟨(88703593729/200000000000 : ℚ), (-1667994433/10000000000 : ℚ), (60758695259/1000000000000 : ℚ), 2⟩,
    ⟨(112470578111/250000000000 : ℚ), (-186302499/1000000000 : ℚ), (69469972263/1000000000000 : ℚ), 2⟩,
    ⟨(455455889681/1000000000000 : ℚ), (-2022932363/10000000000 : ℚ), (15341607599/200000000000 : ℚ), 2⟩,
    ⟨(460185023759/1000000000000 : ℚ), (-537846683/2500000000 : ℚ), (82588692221/1000000000000 : ℚ), 2⟩,
    ⟨(116006042633/250000000000 : ℚ), (-450234219/2000000000 : ℚ), (8719964947/100000000000 : ℚ), 2⟩,
    ⟨(466936356919/1000000000000 : ℚ), (-581086111/2500000000 : ℚ), (45302836623/500000000000 : ℚ), 2⟩,
    ⟨(468893536971/1000000000000 : ℚ), (-2372358959/10000000000 : ℚ), (4642616463/50000000000 : ℚ), 2⟩,
    ⟨(58734607747/125000000000 : ℚ), (-2396140793/10000000000 : ℚ), (93968611513/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2399103073/10000000000 : ℚ), (23526955107/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (288421561479/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control177.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control177.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate177

namespace DiagonalRamsey.JointInheritedCertificate178
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(272469510121/1000000000000 : ℚ), (5835542571257/5000000000 : ℚ), (-159419075774357/500000000000 : ℚ), 11⟩,
    ⟨(273468223931/1000000000000 : ℚ), (1270343480969/10000000000 : ℚ), (-35258537729983/1000000000000 : ℚ), 8⟩,
    ⟨(275456033391/1000000000000 : ℚ), (442778677443/10000000000 : ℚ), (-1257209630089/100000000000 : ℚ), 7⟩,
    ⟨(278413794809/1000000000000 : ℚ), (216811076753/10000000000 : ℚ), (-3160826776647/500000000000 : ℚ), 6⟩,
    ⟨(282313023327/1000000000000 : ℚ), (124955585143/10000000000 : ℚ), (-749867840921/200000000000 : ℚ), 5⟩,
    ⟨(287116167241/1000000000000 : ℚ), (39582977781/5000000000 : ℚ), (-611776370093/250000000000 : ℚ), 4⟩,
    ⟨(5855539393/20000000000 : ℚ), (2132053019/400000000 : ℚ), (-1697981039321/1000000000000 : ℚ), 4⟩,
    ⟨(74810228483/250000000000 : ℚ), (1870067263/500000000 : ℚ), (-245562945331/200000000000 : ℚ), 4⟩,
    ⟨(76611437193/250000000000 : ℚ), (13504950241/5000000000 : ℚ), (-913426145227/1000000000000 : ℚ), 3⟩,
    ⟨(314322087669/1000000000000 : ℚ), (19895421603/10000000000 : ℚ), (-43300545237/62500000000 : ℚ), 3⟩,
    ⟨(40349259647/125000000000 : ℚ), (7421380043/5000000000 : ℚ), (-531991493697/1000000000000 : ℚ), 3⟩,
    ⟨(165890063701/500000000000 : ℚ), (5573030321/5000000000 : ℚ), (-51387554863/125000000000 : ℚ), 3⟩,
    ⟨(341193697771/1000000000000 : ℚ), (2093428959/2500000000 : ℚ), (-158941768327/500000000000 : ℚ), 3⟩,
    ⟨(175472065227/500000000000 : ℚ), (625058921/1000000000 : ℚ), (-122229083237/500000000000 : ℚ), 3⟩,
    ⟨(72187504691/200000000000 : ℚ), (4595154561/10000000000 : ℚ), (-92785150649/500000000000 : ℚ), 2⟩,
    ⟨(46384704367/125000000000 : ℚ), (328414907/1000000000 : ℚ), (-137612598067/1000000000000 : ℚ), 2⟩,
    ⟨(2382917563/6250000000 : ℚ), (557951853/2500000000 : ℚ), (-49022747087/500000000000 : ℚ), 2⟩,
    ⟨(391406921561/1000000000000 : ℚ), (2689841/19531250 : ℚ), (-4065171359/62500000000 : ℚ), 2⟩,
    ⟨(200700157281/500000000000 : ℚ), (676252383/10000000000 : ℚ), (-37267143597/1000000000000 : ℚ), 2⟩,
    ⟨(82230149449/200000000000 : ℚ), (48298601/5000000000 : ℚ), (-3431136119/250000000000 : ℚ), 2⟩,
    ⟨(210282158807/500000000000 : ℚ), (-38586389/1000000000 : ℚ), (6333660199/1000000000000 : ℚ), 2⟩,
    ⟨(2684689799/6250000000 : ℚ), (-789273113/10000000000 : ℚ), (23477096693/1000000000000 : ℚ), 2⟩,
    ⟨(438022357347/1000000000000 : ℚ), (-1761593/15625000 : ℚ), (38142792607/1000000000000 : ℚ), 2⟩,
    ⟨(89179739249/200000000000 : ℚ), (-1410862973/10000000000 : ℚ), (12667018487/250000000000 : ℚ), 2⟩,
    ⟨(113275882771/250000000000 : ℚ), (-1647734369/10000000000 : ℚ), (61314275057/1000000000000 : ℚ), 2⟩,
    ⟨(229783737683/500000000000 : ℚ), (-368862477/2000000000 : ℚ), (35142033221/500000000000 : ℚ), 2⟩,
    ⟨(29076767361/62500000000 : ℚ), (-31335051/156250000 : ℚ), (38867132323/500000000000 : ℚ), 2⟩,
    ⟨(47003142169/100000000000 : ℚ), (-2134848417/10000000000 : ℚ), (10473172421/125000000000 : ℚ), 2⟩,
    ⟨(473930650207/1000000000000 : ℚ), (-447070063/2000000000 : ℚ), (22132187707/250000000000 : ℚ), 2⟩,
    ⟨(3815107293/8000000000 : ℚ), (-2309037553/10000000000 : ℚ), (18406371949/200000000000 : ℚ), 2⟩,
    ⟨(95775244217/200000000000 : ℚ), (-2357383409/10000000000 : ℚ), (23585551841/250000000000 : ℚ), 2⟩,
    ⟨(95974986979/200000000000 : ℚ), (-1190663799/5000000000 : ℚ), (95490031429/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1192155009/5000000000 : ℚ), (23908292229/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (71000613741/250000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control178.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control178.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate178

namespace DiagonalRamsey.JointInheritedCertificate179
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(35767123001/125000000000 : ℚ), (2973591366313/2500000000 : ℚ), (-341221758668129/1000000000000 : ℚ), 11⟩,
    ⟨(143583086143/500000000000 : ℚ), (1295008117869/10000000000 : ℚ), (-9433558265497/250000000000 : ℚ), 8⟩,
    ⟨(72303659299/250000000000 : ℚ), (56444434067/1250000000 : ℚ), (-3363793946667/250000000000 : ℚ), 7⟩,
    ⟨(146131325451/500000000000 : ℚ), (221212374421/10000000000 : ℚ), (-6765972713581/1000000000000 : ℚ), 6⟩,
    ⟨(59256171873/200000000000 : ℚ), (5102327869/400000000 : ℚ), (-4013122541889/1000000000000 : ℚ), 5⟩,
    ⟨(301230565041/1000000000000 : ℚ), (20215016313/2500000000 : ℚ), (-2619527142443/1000000000000 : ℚ), 4⟩,
    ⟨(153532049779/500000000000 : ℚ), (13618723783/2500000000 : ℚ), (-454470525761/250000000000 : ℚ), 4⟩,
    ⟨(313725282791/1000000000000 : ℚ), (38250254617/10000000000 : ℚ), (-2103664103/1600000000 : ℚ), 4⟩,
    ⟨(2508984093/7812500000 : ℚ), (27643681297/10000000000 : ℚ), (-195684556841/200000000000 : ℚ), 3⟩,
    ⟨(329266639157/1000000000000 : ℚ), (159219541/78125000 : ℚ), (-46401265061/62500000000 : ℚ), 3⟩,
    ⟨(337997140533/1000000000000 : ℚ), (1902562199/1250000000 : ℚ), (-285213011959/500000000000 : ℚ), 3⟩,
    ⟨(34725738853/100000000000 : ℚ), (11445021983/10000000000 : ℚ), (-110292538413/250000000000 : ℚ), 3⟩,
    ⟨(356958201897/1000000000000 : ℚ), (8613415549/10000000000 : ℚ), (-341539569813/1000000000000 : ℚ), 3⟩,
    ⟨(367006156499/1000000000000 : ℚ), (6444954801/10000000000 : ℚ), (-263097206983/1000000000000 : ℚ), 3⟩,
    ⟨(377304485041/1000000000000 : ℚ), (4754372139/10000000000 : ℚ), (-200218986949/1000000000000 : ℚ), 2⟩,
    ⟨(96938502247/250000000000 : ℚ), (3415821419/10000000000 : ℚ), (-149042990573/1000000000000 : ℚ), 2⟩,
    ⟨(199127046857/500000000000 : ℚ), (585426623/2500000000 : ℚ), (-106849927129/1000000000000 : ℚ), 2⟩,
    ⟨(408703617661/1000000000000 : ℚ), (1469769541/10000000000 : ℚ), (-71683802249/1000000000000 : ℚ), 2⟩,
    ⟨(419001946203/1000000000000 : ℚ), (754960103/10000000000 : ℚ), (-42111927463/1000000000000 : ℚ), 2⟩,
    ⟨(85809980161/200000000000 : ℚ), (82085171/5000000000 : ℚ), (-17068682563/1000000000000 : ℚ), 2⟩,
    ⟨(109687678543/250000000000 : ℚ), (-163628779/5000000000 : ℚ), (1062199339/250000000000 : ℚ), 2⟩,
    ⟨(448010962169/1000000000000 : ℚ), (-737898207/10000000000 : ℚ), (22451842587/1000000000000 : ℚ), 2⟩,
    ⟨(91348292709/200000000000 : ℚ), (-1081877249/10000000000 : ℚ), (38009858289/1000000000000 : ℚ), 2⟩,
    ⟨(464858138799/1000000000000 : ℚ), (-171252313/1250000000 : ℚ), (51285502657/1000000000000 : ℚ), 2⟩,
    ⟨(472282819911/1000000000000 : ℚ), (-805330441/5000000000 : ℚ), (7820004279/125000000000 : ℚ), 2⟩,
    ⟨(59868000393/125000000000 : ℚ), (-22628091/125000000 : ℚ), (72051827849/1000000000000 : ℚ), 2⟩,
    ⟨(484777537661/1000000000000 : ℚ), (-394750669/2000000000 : ℚ), (39965029551/500000000000 : ℚ), 2⟩,
    ⟨(489727243337/1000000000000 : ℚ), (-210500173/1000000000 : ℚ), (86324897513/1000000000000 : ℚ), 2⟩,
    ⟨(2468727259/5000000000 : ℚ), (-2206892957/10000000000 : ℚ), (91335124971/1000000000000 : ℚ), 2⟩,
    ⟨(248396732753/500000000000 : ℚ), (-71299193/312500000 : ℚ), (9503380217/100000000000 : ℚ), 2⟩,
    ⟨(31177620651/62500000000 : ℚ), (-2330560417/10000000000 : ℚ), (48736203871/500000000000 : ℚ), 2⟩,
    ⟨(249935559347/500000000000 : ℚ), (-470963647/2000000000 : ℚ), (49341867867/500000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-1178919777/5000000000 : ℚ), (98834782203/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (137559859471/500000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control179.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control179.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate179

namespace DiagonalRamsey.JointInheritedCertificate180
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(300148474579/1000000000000 : ℚ), (2427553665267/2000000000 : ℚ), (-182618942637267/500000000000 : ℚ), 11⟩,
    ⟨(301206481789/1000000000000 : ℚ), (264379825679/2000000000 : ℚ), (-5048833913921/125000000000 : ℚ), 8⟩,
    ⟨(303312307021/1000000000000 : ℚ), (461127011567/10000000000 : ℚ), (-14402858894777/1000000000000 : ℚ), 7⟩,
    ⟨(306445670027/1000000000000 : ℚ), (113007032539/5000000000 : ℚ), (-3621450734671/500000000000 : ℚ), 6⟩,
    ⟨(310576394809/1000000000000 : ℚ), (26079800621/2000000000 : ℚ), (-859270637403/200000000000 : ℚ), 5⟩,
    ⟨(78916175057/250000000000 : ℚ), (3308414247/400000000 : ℚ), (-2804737655493/1000000000000 : ℚ), 4⟩,
    ⟨(160830791561/500000000000 : ℚ), (2787878451/500000000 : ℚ), (-1946746884907/1000000000000 : ℚ), 4⟩,
    ⟨(328509290231/1000000000000 : ℚ), (612169139/156250000 : ℚ), (-281666759321/200000000000 : ℚ), 4⟩,
    ⟨(336141874391/1000000000000 : ℚ), (28337537609/10000000000 : ℚ), (-262097914913/250000000000 : ℚ), 3⟩,
    ⟨(68897165929/200000000000 : ℚ), (20911213231/10000000000 : ℚ), (-49743094629/62500000000 : ℚ), 3⟩,
    ⟨(176730399571/500000000000 : ℚ), (15634819861/10000000000 : ℚ), (-305955760563/500000000000 : ℚ), 3⟩,
    ⟨(362980349021/1000000000000 : ℚ), (367914337/312500000 : ℚ), (-473689896587/1000000000000 : ℚ), 3⟩,
    ⟨(37295280081/100000000000 : ℚ), (8876843183/10000000000 : ℚ), (-73437539059/200000000000 : ℚ), 3⟩,
    ⟨(7665642287/20000000000 : ℚ), (416172603/625000000 : ℚ), (-4427701629/15625000000 : ℚ), 2⟩,
    ⟨(393868812703/1000000000000 : ℚ), (4929670119/10000000000 : ℚ), (-216224325779/1000000000000 : ℚ), 2⟩,
    ⟨(404610940177/1000000000000 : ℚ), (89022699/250000000 : ℚ), (-161606804301/1000000000000 : ℚ), 2⟩,
    ⟨(103851261053/250000000000 : ℚ), (2462884449/10000000000 : ℚ), (-455500423/3906250000 : ℚ), 2⟩,
    ⟨(213073585843/500000000000 : ℚ), (314379251/2000000000 : ℚ), (-2472903687/31250000000 : ℚ), 2⟩,
    ⟨(436733870039/1000000000000 : ℚ), (841824927/10000000000 : ℚ), (-23822982187/500000000000 : ℚ), 2⟩,
    ⟨(223531591789/500000000000 : ℚ), (238760341/10000000000 : ℚ), (-21004816139/1000000000000 : ℚ), 2⟩,
    ⟨(57129454421/125000000000 : ℚ), (-131283319/5000000000 : ℚ), (1651749349/1000000000000 : ℚ), 2⟩,
    ⟨(466555185247/1000000000000 : ℚ), (-42575129/625000000 : ℚ), (20979953727/1000000000000 : ℚ), 2⟩,
    ⟨(59441269343/125000000000 : ℚ), (-1031638733/10000000000 : ℚ), (7496817751/200000000000 : ℚ), 2⟩,
    ⟨(241937054999/500000000000 : ℚ), (-331247143/2500000000 : ℚ), (25777070967/500000000000 : ℚ), 2⟩,
    ⟨(245753347079/500000000000 : ℚ), (-1569817681/10000000000 : ℚ), (6349289473/100000000000 : ℚ), 2⟩,
    ⟨(498354401267/1000000000000 : ℚ), (-443187119/2500000000 : ℚ), (73535713187/1000000000000 : ℚ), 2⟩,
    ⟨(504351284161/1000000000000 : ℚ), (-1938898181/10000000000 : ℚ), (16373033023/200000000000 : ℚ), 2⟩,
    ⟨(25471979479/50000000000 : ℚ), (-1036100161/5000000000 : ℚ), (88621904653/1000000000000 : ℚ), 2⟩,
    ⟨(513570314361/1000000000000 : ℚ), (-2175640979/10000000000 : ℚ), (46956401847/500000000000 : ℚ), 2⟩,
    ⟨(516703677367/1000000000000 : ℚ), (-1125715771/5000000000 : ℚ), (48908498773/500000000000 : ℚ), 2⟩,
    ⟨(2594047513/5000000000 : ℚ), (-28764161/125000000 : ℚ), (50195149999/500000000000 : ℚ), 2⟩,
    ⟨(51986750981/100000000000 : ℚ), (-2325741033/10000000000 : ℚ), (50834147021/500000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-2328805809/10000000000 : ℚ), (12728455261/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (66510366091/250000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control180.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control180.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate180

namespace DiagonalRamsey.JointInheritedCertificate181
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(80378280441/250000000000 : ℚ), (50208573777273/10000000000 : ℚ), (-807751971386583/500000000000 : ℚ), 13⟩,
    ⟨(321788302763/1000000000000 : ℚ), (2772569531751/5000000000 : ℚ), (-179289779147651/1000000000000 : ℚ), 10⟩,
    ⟨(161169000913/500000000000 : ℚ), (39532048413/200000000 : ℚ), (-16098161257241/250000000000 : ℚ), 9⟩,
    ⟨(8079022367/25000000000 : ℚ), (497761974971/5000000000 : ℚ), (-32737312368491/1000000000000 : ℚ), 8⟩,
    ⟨(40531874863/125000000000 : ℚ), (296491887983/5000000000 : ℚ), (-985521309703/50000000000 : ℚ), 7⟩,
    ⟨(65123535741/200000000000 : ℚ), (77997848093/2000000000 : ℚ), (-13116236810319/1000000000000 : ℚ), 6⟩,
    ⟨(327245651269/1000000000000 : ℚ), (68443094417/2500000000 : ℚ), (-932360023459/100000000000 : ℚ), 6⟩,
    ⟨(65826998933/200000000000 : ℚ), (201247884953/10000000000 : ℚ), (-6944068475339/1000000000000 : ℚ), 5⟩,
    ⟨(165640578651/500000000000 : ℚ), (38268726633/2500000000 : ℚ), (-1070757651451/200000000000 : ℚ), 5⟩,
    ⟨(83419742221/250000000000 : ℚ), (4781114321/400000000 : ℚ), (-529839178653/125000000000 : ℚ), 5⟩,
    ⟨(168161326437/500000000000 : ℚ), (93051239/9765625 : ℚ), (-21417320613/6250000000 : ℚ), 5⟩,
    ⟨(169602920203/500000000000 : ℚ), (4827160831/625000000 : ℚ), (-1408633891131/500000000000 : ℚ), 4⟩,
    ⟨(342321585629/1000000000000 : ℚ), (15865694837/2500000000 : ℚ), (-2348093897791/1000000000000 : ℚ), 4⟩,
    ⟨(172831191219/500000000000 : ℚ), (26368873041/5000000000 : ℚ), (-1979252876173/1000000000000 : ℚ), 4⟩,
    ⟨(349220182563/1000000000000 : ℚ), (2764939981/625000000 : ℚ), (-842022171931/500000000000 : ℚ), 4⟩,
    ⟨(7059728299/20000000000 : ℚ), (7480638907/2000000000 : ℚ), (-1444092366339/1000000000000 : ℚ), 4⟩,
    ⟨(22309500401/62500000000 : ℚ), (31833043761/10000000000 : ℚ), (-1246414743581/1000000000000 : ℚ), 3⟩,
    ⟨(72221480701/200000000000 : ℚ), (27242264831/10000000000 : ℚ), (-540814542167/500000000000 : ℚ), 3⟩,
    ⟨(730885191/2000000000 : ℚ), (731885611/312500000 : ℚ), (-117852286509/125000000000 : ℚ), 3⟩,
    ⟨(23121696159/62500000000 : ℚ), (4041954851/2000000000 : ℚ), (-824792323881/1000000000000 : ℚ), 3⟩,
    ⟨(374610180799/1000000000000 : ℚ), (17490914231/10000000000 : ℚ), (-45224723831/62500000000 : ℚ), 3⟩,
    ⟨(189710244293/500000000000 : ℚ), (15171592607/10000000000 : ℚ), (-636170781567/1000000000000 : ℚ), 3⟩,
    ⟨(76873294691/200000000000 : ℚ), (1317993261/1000000000 : ℚ), (-56012497587/100000000000 : ℚ), 3⟩,
    ⟨(389436220093/1000000000000 : ℚ), (229185041/200000000 : ℚ), (-123390929413/250000000000 : ℚ), 3⟩,
    ⟨(394617515037/1000000000000 : ℚ), (9964397077/10000000000 : ℚ), (-434971604187/1000000000000 : ℚ), 3⟩,
    ⟨(399897876093/1000000000000 : ℚ), (865906517/1000000000 : ℚ), (-383124941753/1000000000000 : ℚ), 3⟩,
    ⟨(40526458241/100000000000 : ℚ), (7513823967/10000000000 : ℚ), (-337027026243/1000000000000 : ℚ), 3⟩,
    ⟨(205352352561/500000000000 : ℚ), (6504626907/10000000000 : ℚ), (-147929793051/500000000000 : ℚ), 2⟩,
    ⟨(6503205289/15625000000 : ℚ), (5611688427/10000000000 : ℚ), (-129472966413/500000000000 : ℚ), 2⟩,
    ⟨(421752631507/1000000000000 : ℚ), (4818622673/10000000000 : ℚ), (-45144540009/200000000000 : ℚ), 2⟩,
    ⟨(427333819759/1000000000000 : ℚ), (2055888799/5000000000 : ℚ), (-12232372339/62500000000 : ℚ), 2⟩,
    ⟨(432935257679/1000000000000 : ℚ), (695943097/2000000000 : ℚ), (-168534106177/1000000000000 : ℚ), 2⟩,
    ⟨(219271725457/500000000000 : ℚ), (18205027/62500000 : ℚ), (-71917199353/500000000000 : ℚ), 2⟩,
    ⟨(222072444417/500000000000 : ℚ), (300361733/1250000000 : ℚ), (-12133223029/100000000000 : ℚ), 2⟩,
    ⟨(224863038543/500000000000 : ℚ), (971528503/5000000000 : ℚ), (-100782569729/1000000000000 : ℚ), 2⟩,
    ⟨(455273570097/1000000000000 : ℚ), (1527381847/10000000000 : ℚ), (-40987527111/500000000000 : ℚ), 2⟩,
    ⟨(460774003471/1000000000000 : ℚ), (1150803503/10000000000 : ℚ), (-4045524291/62500000000 : ℚ), 2⟩,
    ⟨(466214126183/1000000000000 : ℚ), (20224181/250000000 : ℚ), (-12221443897/250000000000 : ℚ), 2⟩,
    ⟨(188632333/400000000 : ℚ), (498116481/10000000000 : ℚ), (-3431116421/100000000000 : ℚ), 2⟩,
    ⟨(476861193557/1000000000000 : ℚ), (215000689/10000000000 : ℚ), (-20886154869/1000000000000 : ℚ), 2⟩,
    ⟨(482042488501/1000000000000 : ℚ), (-8640153/2000000000 : ℚ), (-8507432107/1000000000000 : ℚ), 2⟩,
    ⟨(487112235139/1000000000000 : ℚ), (-139470913/5000000000 : ℚ), (583075159/200000000000 : ℚ), 2⟩,
    ⟨(492058220007/1000000000000 : ℚ), (-494362467/10000000000 : ℚ), (2692297587/200000000000 : ℚ), 2⟩,
    ⟨(99373705559/200000000000 : ℚ), (-691332837/10000000000 : ℚ), (2900059797/125000000000 : ℚ), 2⟩,
    ⟨(501531570049/1000000000000 : ℚ), (-871490353/10000000000 : ℚ), (32193547907/1000000000000 : ℚ), 2⟩,
    ⟨(506036113093/1000000000000 : ℚ), (-207254199/2000000000 : ℚ), (2530912697/62500000000 : ℚ), 2⟩,
    ⟨(3987275821/7812500000 : ℚ), (-37091743/312500000 : ℚ), (1504724169/31250000000 : ℚ), 2⟩,
    ⟨(514526702177/1000000000000 : ℚ), (-52983729/400000000 : ℚ), (11041038997/200000000000 : ℚ), 2⟩,
    ⟨(518492293643/1000000000000 : ℚ), (-181277313/1250000000 : ℚ), (61693680919/1000000000000 : ℚ), 2⟩,
    ⟨(522258526031/1000000000000 : ℚ), (-782334867/5000000000 : ℚ), (33824648853/500000000000 : ℚ), 2⟩,
    ⟨(105163265231/200000000000 : ℚ), (-1668701943/10000000000 : ℚ), (73100860689/1000000000000 : ℚ), 2⟩,
    ⟨(105831424593/200000000000 : ℚ), (-352595803/2000000000 : ℚ), (78073761731/1000000000000 : ℚ), 2⟩,
    ⟨(532272868187/1000000000000 : ℚ), (-924041967/5000000000 : ℚ), (82590338497/1000000000000 : ℚ), 2⟩,
    ⟨(535156055719/1000000000000 : ℚ), (-962263789/5000000000 : ℚ), (3466807771/40000000000 : ℚ), 2⟩,
    ⟨(537799739709/1000000000000 : ℚ), (-498189063/2500000000 : ℚ), (22582618339/250000000000 : ℚ), 2⟩,
    ⟨(135049387823/250000000000 : ℚ), (-1026579077/5000000000 : ℚ), (46793050063/500000000000 : ℚ), 2⟩,
    ⟨(67792964241/125000000000 : ℚ), (-263258611/1250000000 : ℚ), (96449983597/1000000000000 : ℚ), 2⟩,
    ⟨(21769322293/40000000000 : ℚ), (-1075888087/5000000000 : ℚ), (98933194751/1000000000000 : ℚ), 2⟩,
    ⟨(133266853/244140625 : ℚ), (-68453869/312500000 : ℚ), (25261278793/250000000000 : ℚ), 2⟩,
    ⟨(547223709689/1000000000000 : ℚ), (-2222515001/10000000000 : ℚ), (102793564893/1000000000000 : ℚ), 2⟩,
    ⟨(548317813913/1000000000000 : ℚ), (-561978779/2500000000 : ℚ), (52092453309/500000000000 : ℚ), 2⟩,
    ⟨(549140706767/1000000000000 : ℚ), (-2266853887/10000000000 : ℚ), (105224131447/1000000000000 : ℚ), 2⟩,
    ⟨(549690405831/1000000000000 : ℚ), (-1139713571/5000000000 : ℚ), (26478731333/250000000000 : ℚ), 2⟩,
    ⟨(54996558683/100000000000 : ℚ), (-91427923/400000000 : ℚ), (21251943753/200000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-285810151/1250000000 : ℚ), (106302789739/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (252165119899/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control181.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control181.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate181

namespace DiagonalRamsey.JointInheritedCertificate182
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(221078798979/500000000000 : ℚ), (15299521320243/2500000000 : ℚ), (-1353817614237833/500000000000 : ℚ), 13⟩,
    ⟨(221234066823/500000000000 : ℚ), (3382284670477/5000000000 : ℚ), (-150252472849709/500000000000 : ℚ), 10⟩,
    ⟨(443088456913/1000000000000 : ℚ), (2414429593529/10000000000 : ℚ), (-26983650496411/250000000000 : ℚ), 9⟩,
    ⟨(111004268337/250000000000 : ℚ), (609007846741/5000000000 : ℚ), (-54879605246759/1000000000000 : ℚ), 8⟩,
    ⟨(44525174583/100000000000 : ℚ), (726864830571/10000000000 : ℚ), (-16523191589603/500000000000 : ℚ), 7⟩,
    ⟨(446789499927/1000000000000 : ℚ), (479020735453/10000000000 : ℚ), (-5498639826389/250000000000 : ℚ), 6⟩,
    ⟨(224313315527/500000000000 : ℚ), (84253489633/2500000000 : ℚ), (-3127649427101/200000000000 : ℚ), 6⟩,
    ⟨(225379356701/500000000000 : ℚ), (248314012793/10000000000 : ℚ), (-91018545289/7812500000 : ℚ), 5⟩,
    ⟨(113295152649/250000000000 : ℚ), (189336133223/10000000000 : ℚ), (-8985345974819/1000000000000 : ℚ), 5⟩,
    ⟨(18235459523/40000000000 : ℚ), (3705458349/250000000 : ℚ), (-1779203667093/250000000000 : ℚ), 5⟩,
    ⟨(458869827143/1000000000000 : ℚ), (118467735507/10000000000 : ℚ), (-2878190923269/500000000000 : ℚ), 5⟩,
    ⟨(231061720337/500000000000 : ℚ), (19257824723/2000000000 : ℚ), (-591910215629/125000000000 : ℚ), 4⟩,
    ⟨(465639490429/1000000000000 : ℚ), (396722671/50000000 : ℚ), (-493677251973/125000000000 : ℚ), 4⟩,
    ⟨(29338094121/62500000000 : ℚ), (66130472921/10000000000 : ℚ), (-1665877479707/500000000000 : ℚ), 4⟩,
    ⟨(473424404897/1000000000000 : ℚ), (11128960023/2000000000 : ℚ), (-709385445513/250000000000 : ℚ), 4⟩,
    ⟨(477674515069/1000000000000 : ℚ), (47198969877/10000000000 : ℚ), (-1217989780723/500000000000 : ℚ), 4⟩,
    ⟨(96429919513/200000000000 : ℚ), (629803511/156250000 : ℚ), (-1052654643689/500000000000 : ℚ), 3⟩,
    ⟨(243419435759/500000000000 : ℚ), (6923987603/2000000000 : ℚ), (-1829805189611/1000000000000 : ℚ), 3⟩,
    ⟨(491731040057/1000000000000 : ℚ), (14939428499/5000000000 : ℚ), (-1597873258733/1000000000000 : ℚ), 3⟩,
    ⟨(6210178969/12500000000 : ℚ), (161820633/62500000 : ℚ), (-1400813932559/1000000000000 : ℚ), 3⟩,
    ⟨(100415291569/200000000000 : ℚ), (562765669/250000000 : ℚ), (-246399293583/200000000000 : ℚ), 3⟩,
    ⟨(126876196019/250000000000 : ℚ), (9811894171/5000000000 : ℚ), (-217259116091/200000000000 : ℚ), 3⟩,
    ⟨(513086218899/1000000000000 : ℚ), (8571275437/5000000000 : ℚ), (-959699284763/1000000000000 : ℚ), 3⟩,
    ⟨(10376146323/20000000000 : ℚ), (3749316467/2500000000 : ℚ), (-849030958201/1000000000000 : ℚ), 3⟩,
    ⟨(524654293203/1000000000000 : ℚ), (820774557/625000000 : ℚ), (-75174912801/100000000000 : ℚ), 3⟩,
    ⟨(530613064179/1000000000000 : ℚ), (11503228779/10000000000 : ℚ), (-133160219699/200000000000 : ℚ), 3⟩,
    ⟨(536669273877/1000000000000 : ℚ), (2518371547/2500000000 : ℚ), (-294757241797/500000000000 : ℚ), 3⟩,
    ⟨(542808332357/1000000000000 : ℚ), (1101684909/1250000000 : ℚ), (-521515828077/1000000000000 : ℚ), 2⟩,
    ⟨(54901545009/100000000000 : ℚ), (3849374101/5000000000 : ℚ), (-460668851127/1000000000000 : ℚ), 2⟩,
    ⟨(34704729599/62500000000 : ℚ), (1677251429/2500000000 : ℚ), (-40602708523/100000000000 : ℚ), 2⟩,
    ⟨(280786960707/500000000000 : ℚ), (2913661181/5000000000 : ℚ), (-178398599711/500000000000 : ℚ), 2⟩,
    ⟨(141973755137/250000000000 : ℚ), (5039490669/10000000000 : ℚ), (-78077584227/250000000000 : ℚ), 2⟩,
    ⟨(287111871453/500000000000 : ℚ), (4333524799/10000000000 : ℚ), (-271999527349/1000000000000 : ℚ), 2⟩,
    ⟨(580544842041/1000000000000 : ℚ), (3699263737/10000000000 : ℚ), (-29422718187/125000000000 : ℚ), 2⟩,
    ⟨(586843089871/1000000000000 : ℚ), (3128054293/10000000000 : ℚ), (-101021777117/500000000000 : ℚ), 2⟩,
    ⟨(118620662673/200000000000 : ℚ), (1306248077/5000000000 : ℚ), (-42907384567/250000000000 : ℚ), 2⟩,
    ⟨(599310431097/1000000000000 : ℚ), (2146235527/10000000000 : ℚ), (-143832924639/1000000000000 : ℚ), 2⟩,
    ⟨(605449489577/1000000000000 : ℚ), (861898557/5000000000 : ℚ), (-59193965009/500000000000 : ℚ), 2⟩,
    ⟨(24460227971/40000000000 : ℚ), (268089309/2000000000 : ℚ), (-23765870649/250000000000 : ℚ), 2⟩,
    ⟨(617464470251/1000000000000 : ℚ), (19841543/200000000 : ℚ), (-36829021491/500000000000 : ℚ), 2⟩,
    ⟨(124662289461/200000000000 : ℚ), (337558157/5000000000 : ℚ), (-53995311187/1000000000000 : ℚ), 2⟩,
    ⟨(125806508911/200000000000 : ℚ), (19322383/500000000 : ℚ), (-898016243/25000000000 : ℚ), 2⟩,
    ⟨(634613979379/1000000000000 : ℚ), (986769/80000000 : ℚ), (-9649046337/500000000000 : ℚ), 2⟩,
    ⟨(64004230561/100000000000 : ℚ), (-58288223/5000000000 : ℚ), (-4007831629/1000000000000 : ℚ), 2⟩,
    ⟨(129060889187/200000000000 : ℚ), (-335417049/10000000000 : ℚ), (10055903819/1000000000000 : ℚ), 2⟩,
    ⟨(325193861699/500000000000 : ℚ), (-535020131/10000000000 : ℚ), (22986640139/1000000000000 : ℚ), 2⟩,
    ⟨(655279891937/1000000000000 : ℚ), (-717010283/10000000000 : ℚ), (17433591957/500000000000 : ℚ), 2⟩,
    ⟨(65996916589/100000000000 : ℚ), (-441409997/5000000000 : ℚ), (22885459479/500000000000 : ℚ), 2⟩,
    ⟨(132888849677/200000000000 : ℚ), (-516856649/5000000000 : ℚ), (27881458229/500000000000 : ℚ), 2⟩,
    ⟨(668694358557/1000000000000 : ℚ), (-585402971/5000000000 : ℚ), (16225220911/250000000000 : ℚ), 2⟩,
    ⟨(672709257519/1000000000000 : ℚ), (-1295082649/10000000000 : ℚ), (73235979901/1000000000000 : ℚ), 2⟩,
    ⟨(27059170921/40000000000 : ℚ), (-1407411901/10000000000 : ℚ), (20203379411/250000000000 : ℚ), 2⟩,
    ⟨(679995322781/1000000000000 : ℚ), (-1508558617/10000000000 : ℚ), (8767356549/100000000000 : ℚ), 2⟩,
    ⟨(85406117039/125000000000 : ℚ), (-1599195047/10000000000 : ℚ), (46925734913/500000000000 : ℚ), 2⟩,
    ⟨(34311613769/50000000000 : ℚ), (-1679910103/10000000000 : ℚ), (19875660351/200000000000 : ℚ), 2⟩,
    ⟨(688938152859/1000000000000 : ℚ), (-54725543/312500000 : ℚ), (5214062221/50000000000 : ℚ), 2⟩,
    ⟨(691360050053/1000000000000 : ℚ), (-1813561979/10000000000 : ℚ), (54291961937/500000000000 : ℚ), 2⟩,
    ⟨(1733730331/2500000000 : ℚ), (-933663191/5000000000 : ℚ), (2246133861/20000000000 : ℚ), 2⟩,
    ⟨(695329263527/1000000000000 : ℚ), (-1912835349/10000000000 : ℚ), (4618674921/40000000000 : ℚ), 2⟩,
    ⟨(87108377203/125000000000 : ℚ), (-195036007/1000000000 : ℚ), (7379934707/62500000000 : ℚ), 2⟩,
    ⟨(698101690107/1000000000000 : ℚ), (-1980121583/10000000000 : ℚ), (15019346369/125000000000 : ℚ), 2⟩,
    ⟨(699030306541/1000000000000 : ℚ), (-250286691/1250000000 : ℚ), (121703626227/1000000000000 : ℚ), 2⟩,
    ⟨(699650629809/1000000000000 : ℚ), (-2017004301/10000000000 : ℚ), (12273240971/100000000000 : ℚ), 2⟩,
    ⟨(87495145687/125000000000 : ℚ), (-2024338633/10000000000 : ℚ), (123245670513/1000000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-50631361/250000000 : ℚ), (61654887607/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (175830287363/1000000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control182.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control182.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate182

namespace DiagonalRamsey.JointInheritedCertificate197
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7528968657/31250000000 : ℚ), (44251319087/40000000 : ℚ), (-267253846784687/1000000000000 : ℚ), 11⟩,
    ⟨(4836737731/20000000000 : ℚ), (1203572935851/10000000000 : ℚ), (-1477634210551/50000000000 : ℚ), 8⟩,
    ⟨(243647902869/1000000000000 : ℚ), (41921933073/1000000000 : ℚ), (-2107296206817/200000000000 : ℚ), 7⟩,
    ⟨(49268520981/200000000000 : ℚ), (205105725287/10000000000 : ℚ), (-1059435882559/200000000000 : ℚ), 6⟩,
    ⟨(124947520601/500000000000 : ℚ), (29524468521/2500000000 : ℚ), (-785230324739/250000000000 : ℚ), 5⟩,
    ⟨(127135499929/500000000000 : ℚ), (3737070367/500000000 : ℚ), (-2049241802939/1000000000000 : ℚ), 4⟩,
    ⟨(129714168999/500000000000 : ℚ), (5026103583/1000000000 : ℚ), (-710582278979/500000000000 : ℚ), 4⟩,
    ⟨(132658693819/500000000000 : ℚ), (17608927019/5000000000 : ℚ), (-256723152917/250000000000 : ℚ), 4⟩,
    ⟨(271881434009/1000000000000 : ℚ), (6347421851/2500000000 : ℚ), (-190793847801/250000000000 : ℚ), 3⟩,
    ⟨(279057261757/1000000000000 : ℚ), (18662540711/10000000000 : ℚ), (-578039418773/1000000000000 : ℚ), 3⟩,
    ⟨(143387881869/500000000000 : ℚ), (13885576831/10000000000 : ℚ), (-13844103119/31250000000 : ℚ), 3⟩,
    ⟨(147481303279/500000000000 : ℚ), (10390505767/10000000000 : ℚ), (-341434108419/1000000000000 : ℚ), 3⟩,
    ⟨(303538946447/1000000000000 : ℚ), (3884422143/5000000000 : ℚ), (-8219998919/31250000000 : ℚ), 3⟩,
    ⟨(312422188561/1000000000000 : ℚ), (230412539/400000000 : ℚ), (-40244731711/200000000000 : ℚ), 3⟩,
    ⟨(40190847803/125000000000 : ℚ), (4193278969/10000000000 : ℚ), (-9473966449/62500000000 : ℚ), 2⟩,
    ⟨(330765045821/1000000000000 : ℚ), (118050561/400000000 : ℚ), (-111098084959/1000000000000 : ℚ), 2⟩,
    ⟨(340048009223/1000000000000 : ℚ), (1953279059/10000000000 : ℚ), (-9705175537/125000000000 : ℚ), 2⟩,
    ⟨(349286272619/1000000000000 : ℚ), (1141828559/10000000000 : ℚ), (-49685346741/1000000000000 : ℚ), 2⟩,
    ⟨(179195433241/500000000000 : ℚ), (59420121/1250000000 : ℚ), (-26111883187/1000000000000 : ℚ), 2⟩,
    ⟨(367274108597/1000000000000 : ℚ), (-76618139/10000000000 : ℚ), (-6090619857/1000000000000 : ℚ), 2⟩,
    ⟨(75170089697/200000000000 : ℚ), (-268393303/5000000000 : ℚ), (5501475249/500000000000 : ℚ), 2⟩,
    ⟨(192018645653/500000000000 : ℚ), (-461100357/5000000000 : ℚ), (25643287303/1000000000000 : ℚ), 2⟩,
    ⟨(391755793287/1000000000000 : ℚ), (-62290503/500000000 : ℚ), (763874407/20000000000 : ℚ), 2⟩,
    ⟨(79786324207/200000000000 : ℚ), (-758760201/5000000000 : ℚ), (3058379499/62500000000 : ℚ), 2⟩,
    ⟨(202747833703/500000000000 : ℚ), (-13959601/80000000 : ℚ), (29040290087/500000000000 : ℚ), 2⟩,
    ⟨(82276943409/200000000000 : ℚ), (-193397529/1000000000 : ℚ), (65800473901/1000000000000 : ℚ), 2⟩,
    ⟨(208271027593/500000000000 : ℚ), (-208912621/1000000000 : ℚ), (72222759429/1000000000000 : ℚ), 2⟩,
    ⟨(420918013841/1000000000000 : ℚ), (-1106938969/5000000000 : ℚ), (77446268697/1000000000000 : ℚ), 2⟩,
    ⟨(424470450139/1000000000000 : ℚ), (-4621727/20000000 : ℚ), (81545682933/1000000000000 : ℚ), 2⟩,
    ⟨(213582576087/500000000000 : ℚ), (-2382029633/10000000000 : ℚ), (21144004593/250000000000 : ℚ), 2⟩,
    ⟨(428976168493/1000000000000 : ℚ), (-2428748589/10000000000 : ℚ), (8657590663/100000000000 : ℚ), 2⟩,
    ⟨(21494302901/50000000000 : ℚ), (-2451895191/10000000000 : ℚ), (43784946059/500000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-49095573/200000000 : ℚ), (43846932219/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (157829464287/500000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control197.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control197.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate197

namespace DiagonalRamsey.JointInheritedCertificate198
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(123734390749/500000000000 : ℚ), (11159447651049/10000000000 : ℚ), (-276902010702069/1000000000000 : ℚ), 11⟩,
    ⟨(124197656621/500000000000 : ℚ), (607122523239/5000000000 : ℚ), (-30619760107629/1000000000000 : ℚ), 8⟩,
    ⟨(62559863431/250000000000 : ℚ), (105754109377/2500000000 : ℚ), (-10917075270973/1000000000000 : ℚ), 7⟩,
    ⟨(252983442861/1000000000000 : ℚ), (103504756399/5000000000 : ℚ), (-5488647571351/1000000000000 : ℚ), 6⟩,
    ⟨(256600854539/1000000000000 : ℚ), (59611703403/5000000000 : ℚ), (-3254567106389/1000000000000 : ℚ), 5⟩,
    ⟨(130528425553/500000000000 : ℚ), (37736951917/5000000000 : ℚ), (-1061750862071/500000000000 : ℚ), 4⟩,
    ⟨(133154259439/500000000000 : ℚ), (2030735531/400000000 : ℚ), (-1472779568507/1000000000000 : ℚ), 4⟩,
    ⟨(10892211257/40000000000 : ℚ), (35584833163/10000000000 : ℚ), (-1064307856739/1000000000000 : ℚ), 4⟩,
    ⟨(55797877329/200000000000 : ℚ), (25663696197/10000000000 : ℚ), (-6328868001/8000000000 : ℚ), 3⟩,
    ⟨(286296462951/1000000000000 : ℚ), (1179509627/625000000 : ℚ), (-299665783261/500000000000 : ℚ), 3⟩,
    ⟨(294156139203/1000000000000 : ℚ), (14049038641/10000000000 : ℚ), (-459475504583/1000000000000 : ℚ), 3⟩,
    ⟨(302492722423/1000000000000 : ℚ), (10520002711/10000000000 : ℚ), (-177140872851/500000000000 : ℚ), 3⟩,
    ⟨(77806481689/250000000000 : ℚ), (314912699/400000000 : ℚ), (-273111351481/1000000000000 : ℚ), 3⟩,
    ⟨(20016977917/62500000000 : ℚ), (2922392427/5000000000 : ℚ), (-209120212771/1000000000000 : ℚ), 3⟩,
    ⟨(329542766943/1000000000000 : ℚ), (1065662573/2500000000 : ℚ), (-157747198329/1000000000000 : ℚ), 2⟩,
    ⟨(338950001611/1000000000000 : ℚ), (752204567/2500000000 : ℚ), (-28965347437/250000000000 : ℚ), 2⟩,
    ⟨(174201376933/500000000000 : ℚ), (2001506317/10000000000 : ℚ), (-507870717/6250000000 : ℚ), 2⟩,
    ⟨(178904994267/500000000000 : ℚ), (295661093/2500000000 : ℚ), (-13089274431/250000000000 : ℚ), 2⟩,
    ⟨(91770277201/250000000000 : ℚ), (51025651/1000000000 : ℚ), (-5599136347/200000000000 : ℚ), 2⟩,
    ⟨(4701585359/12500000000 : ℚ), (-464703/100000000 : ℚ), (-914250999/125000000000 : ℚ), 2⟩,
    ⟨(192430016527/500000000000 : ℚ), (-25522823/500000000 : ℚ), (2583918571/250000000000 : ℚ), 2⟩,
    ⟨(196598308137/500000000000 : ℚ), (-449472537/5000000000 : ℚ), (636141291/25000000000 : ℚ), 2⟩,
    ⟨(200528146263/500000000000 : ℚ), (-1225031001/10000000000 : ℚ), (7678611809/200000000000 : ℚ), 2⟩,
    ⟨(408363368831/1000000000000 : ℚ), (-749366873/5000000000 : ℚ), (49468487389/1000000000000 : ℚ), 2⟩,
    ⟨(415047474051/1000000000000 : ℚ), (-863880591/5000000000 : ℚ), (11779323133/200000000000 : ℚ), 2⟩,
    ⟨(210522118299/500000000000 : ℚ), (-1918059879/10000000000 : ℚ), (66851301029/1000000000000 : ℚ), 2⟩,
    ⟨(426295904371/1000000000000 : ℚ), (-414843119/2000000000 : ℚ), (918334317/12500000000 : ℚ), 2⟩,
    ⟨(215375950469/500000000000 : ℚ), (-2199746671/10000000000 : ℚ), (1576916507/20000000000 : ℚ), 2⟩,
    ⟨(54296164077/125000000000 : ℚ), (-459463887/2000000000 : ℚ), (20766581501/250000000000 : ℚ), 2⟩,
    ⟨(437113301753/1000000000000 : ℚ), (-592226391/2500000000 : ℚ), (8618558289/100000000000 : ℚ), 2⟩,
    ⟨(219478721117/500000000000 : ℚ), (-120794753/500000000 : ℚ), (1103048443/12500000000 : ℚ), 2⟩,
    ⟨(439883973979/1000000000000 : ℚ), (-2439174147/10000000000 : ℚ), (89266805073/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-2442074037/10000000000 : ℚ), (5587148963/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (12453405647/40000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control198.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control198.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate198

namespace DiagonalRamsey.JointInheritedCertificate199
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(254036952357/1000000000000 : ℚ), (11255348634421/10000000000 : ℚ), (-143344068829133/500000000000 : ℚ), 11⟩,
    ⟨(127489999669/500000000000 : ℚ), (153104669111/1250000000 : ℚ), (-3962756129087/125000000000 : ℚ), 8⟩,
    ⟨(128428505621/500000000000 : ℚ), (213392347721/5000000000 : ℚ), (-2825765715253/250000000000 : ℚ), 7⟩,
    ⟨(129824955709/500000000000 : ℚ), (104449240363/5000000000 : ℚ), (-5682804203773/1000000000000 : ℚ), 6⟩,
    ⟨(263331802711/1000000000000 : ℚ), (24067976759/2000000000 : ℚ), (-842447222119/250000000000 : ℚ), 5⟩,
    ⟨(133933613247/500000000000 : ℚ), (4762515793/625000000 : ℚ), (-2198775129709/1000000000000 : ℚ), 4⟩,
    ⟨(273212504159/1000000000000 : ℚ), (3204453533/625000000 : ℚ), (-1525085223263/1000000000000 : ℚ), 4⟩,
    ⟨(139658078879/500000000000 : ℚ), (35948363349/10000000000 : ℚ), (-220442375703/200000000000 : ℚ), 4⟩,
    ⟨(28611940577/100000000000 : ℚ), (12967470197/5000000000 : ℚ), (-819396160691/1000000000000 : ℚ), 3⟩,
    ⟨(733891823/2500000000 : ℚ), (9539738017/5000000000 : ℚ), (-62088483133/100000000000 : ℚ), 3⟩,
    ⟨(60311300511/200000000000 : ℚ), (14210548169/10000000000 : ℚ), (-476133464113/1000000000000 : ℚ), 3⟩,
    ⟨(155020841823/500000000000 : ℚ), (665487329/625000000 : ℚ), (-183636614723/500000000000 : ℚ), 3⟩,
    ⟨(15946527777/50000000000 : ℚ), (7975276909/10000000000 : ℚ), (-141644404039/500000000000 : ℚ), 3⟩,
    ⟨(164068756771/500000000000 : ℚ), (2963943933/5000000000 : ℚ), (-5427344049/25000000000 : ℚ), 3⟩,
    ⟨(168786944807/500000000000 : ℚ), (4330767407/10000000000 : ℚ), (-32793051327/200000000000 : ℚ), 2⟩,
    ⟨(173574403147/500000000000 : ℚ), (76630237/250000000 : ℚ), (-120661163593/1000000000000 : ℚ), 2⟩,
    ⟨(178385025951/500000000000 : ℚ), (2048644521/10000000000 : ℚ), (-42449765939/500000000000 : ℚ), 2⟩,
    ⟨(183172484291/500000000000 : ℚ), (1222432029/10000000000 : ℚ), (-55039865853/1000000000000 : ℚ), 2⟩,
    ⟨(187890672327/500000000000 : ℚ), (17005459/312500000 : ℚ), (-14940735741/500000000000 : ℚ), 2⟩,
    ⟨(6015442229/15625000000 : ℚ), (-690279/400000000 : ℚ), (-8532163161/1000000000000 : ℚ), 2⟩,
    ⟨(7877543491/20000000000 : ℚ), (-485024339/10000000000 : ℚ), (604963127/62500000000 : ℚ), 2⟩,
    ⟨(402362355641/1000000000000 : ℚ), (-438278087/5000000000 : ℚ), (25263641431/1000000000000 : ℚ), 2⟩,
    ⟨(102590532249/250000000000 : ℚ), (-150636469/1250000000 : ℚ), (38611693159/1000000000000 : ℚ), 2⟩,
    ⟨(208899726213/500000000000 : ℚ), (-23136933/156250000 : ℚ), (50025103363/1000000000000 : ℚ), 2⟩,
    ⟨(212301350219/500000000000 : ℚ), (-855684481/5000000000 : ℚ), (29868567919/500000000000 : ℚ), 2⟩,
    ⟨(430706354037/1000000000000 : ℚ), (-1902924257/10000000000 : ℚ), (4245524547/62500000000 : ℚ), 2⟩,
    ⟨(436051631701/1000000000000 : ℚ), (-2060070569/10000000000 : ℚ), (7473836629/100000000000 : ℚ), 2⟩,
    ⟨(88117411097/200000000000 : ℚ), (-546592339/2500000000 : ℚ), (2006851333/25000000000 : ℚ), 2⟩,
    ⟨(222134473389/500000000000 : ℚ), (-2284520131/10000000000 : ℚ), (42308201241/500000000000 : ℚ), 2⟩,
    ⟨(223530923477/500000000000 : ℚ), (-94260777/400000000 : ℚ), (87825114091/1000000000000 : ℚ), 2⟩,
    ⟨(224469429429/500000000000 : ℚ), (-1201887469/5000000000 : ℚ), (89942148803/1000000000000 : ℚ), 2⟩,
    ⟨(449881905839/1000000000000 : ℚ), (-485436851/2000000000 : ℚ), (90994186067/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-486020059/2000000000 : ℚ), (1822507813/20000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (30699166281/100000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control199.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control199.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate199

namespace DiagonalRamsey.JointInheritedCertificate200
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(130346188231/500000000000 : ℚ), (90853989667/80000000 : ℚ), (-148421492993229/500000000000 : ℚ), 11⟩,
    ⟨(4088304981/15625000000 : ℚ), (123603820269/1000000000 : ℚ), (-32825178165713/1000000000000 : ℚ), 8⟩,
    ⟨(52712113273/200000000000 : ℚ), (215385135077/5000000000 : ℚ), (-11703660700649/1000000000000 : ℚ), 7⟩,
    ⟨(266401134031/1000000000000 : ℚ), (823816421/39062500 : ℚ), (-588434524449/100000000000 : ℚ), 6⟩,
    ⟨(270145865563/1000000000000 : ℚ), (1215215971/100000000 : ℚ), (-1744711176433/500000000000 : ℚ), 5⟩,
    ⟨(5495173943/20000000000 : ℚ), (2405294767/312500000 : ℚ), (-2276956365343/1000000000000 : ℚ), 4⟩,
    ⟨(140097602351/500000000000 : ℚ), (25902049309/5000000000 : ℚ), (-1579434753821/1000000000000 : ℚ), 4⟩,
    ⟨(286403031679/1000000000000 : ℚ), (7266765923/2000000000 : ℚ), (-45664749521/40000000000 : ℚ), 4⟩,
    ⟨(146661196657/500000000000 : ℚ), (5244555429/2000000000 : ℚ), (-848826108839/1000000000000 : ℚ), 3⟩,
    ⟨(75221663093/250000000000 : ℚ), (2412458877/1250000000 : ℚ), (-128665723663/200000000000 : ℚ), 3⟩,
    ⟨(309022960903/1000000000000 : ℚ), (14382248199/10000000000 : ℚ), (-246749835813/500000000000 : ℚ), 3⟩,
    ⟨(317652961809/1000000000000 : ℚ), (5391896577/5000000000 : ℚ), (-190418588869/500000000000 : ℚ), 3⟩,
    ⟨(163346771731/500000000000 : ℚ), (4042214737/5000000000 : ℚ), (-4592738171/15625000000 : ℚ), 3⟩,
    ⟨(336057640119/1000000000000 : ℚ), (3008259881/5000000000 : ℚ), (-225455952917/1000000000000 : ℚ), 3⟩,
    ⟨(345655070411/1000000000000 : ℚ), (550437683/1250000000 : ℚ), (-170508656113/1000000000000 : ℚ), 2⟩,
    ⟨(177696702919/500000000000 : ℚ), (390686847/1250000000 : ℚ), (-125735799487/1000000000000 : ℚ), 2⟩,
    ⟨(73035772181/200000000000 : ℚ), (1049549129/5000000000 : ℚ), (-5548373037/62500000000 : ℚ), 2⟩,
    ⟨(93729299083/250000000000 : ℚ), (2470837/19531250 : ℚ), (-14480971033/250000000000 : ℚ), 2⟩,
    ⟨(6008041041/15625000000 : ℚ), (290281483/5000000000 : ℚ), (-31941613497/1000000000000 : ℚ), 2⟩,
    ⟨(393878723281/1000000000000 : ℚ), (3529401/2500000000 : ℚ), (-4951318309/500000000000 : ℚ), 2⟩,
    ⟨(201459652467/500000000000 : ℚ), (-228841813/5000000000 : ℚ), (177778457/20000000000 : ℚ), 2⟩,
    ⟨(411549305839/1000000000000 : ℚ), (-213116441/2500000000 : ℚ), (24962284457/1000000000000 : ℚ), 2⟩,
    ⟨(41968561437/100000000000 : ℚ), (-1183620771/10000000000 : ℚ), (77446407/2000000000 : ℚ), 2⟩,
    ⟨(106812468357/250000000000 : ℚ), (-365350233/2500000000 : ℚ), (12621153741/250000000000 : ℚ), 2⟩,
    ⟨(434169235063/1000000000000 : ℚ), (-1693697349/10000000000 : ℚ), (15122181853/250000000000 : ℚ), 2⟩,
    ⟨(440377062041/1000000000000 : ℚ), (-1886601059/10000000000 : ℚ), (8615397143/125000000000 : ℚ), 2⟩,
    ⟨(55726696199/125000000000 : ℚ), (-204481149/1000000000 : ℚ), (75932977921/1000000000000 : ℚ), 2⟩,
    ⟨(22521320059/50000000000 : ℚ), (-1085967889/5000000000 : ℚ), (16325886323/200000000000 : ℚ), 2⟩,
    ⟨(56771391589/125000000000 : ℚ), (-2270708607/10000000000 : ℚ), (21524198823/250000000000 : ℚ), 2⟩,
    ⟨(228505850189/500000000000 : ℚ), (-2343152859/10000000000 : ℚ), (44698622043/500000000000 : ℚ), 2⟩,
    ⟨(229460373979/500000000000 : ℚ), (-2390695007/10000000000 : ℚ), (91574499541/1000000000000 : ℚ), 2⟩,
    ⟨(459879890281/1000000000000 : ℚ), (-482848939/2000000000 : ℚ), (92656371197/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-75536817/312500000 : ℚ), (92791292217/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (302596346743/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control200.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control200.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate200

namespace DiagonalRamsey.JointInheritedCertificate201
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(267436561963/1000000000000 : ℚ), (2865914285911/2500000000 : ℚ), (-38422771511079/125000000000 : ℚ), 11⟩,
    ⟨(134205686237/500000000000 : ℚ), (1247848633901/10000000000 : ℚ), (-6798175269567/200000000000 : ℚ), 8⟩,
    ⟨(270351605539/1000000000000 : ℚ), (434973545133/10000000000 : ℚ), (-2423897354823/200000000000 : ℚ), 7⟩,
    ⟨(68309643913/250000000000 : ℚ), (213005283389/10000000000 : ℚ), (-95212228661/15625000000 : ℚ), 6⟩,
    ⟨(8657639991/31250000000 : ℚ), (61384336043/5000000000 : ℚ), (-903413381359/250000000000 : ℚ), 5⟩,
    ⟨(17608291549/62500000000 : ℚ), (4861345569/625000000 : ℚ), (-2358167749933/1000000000000 : ℚ), 4⟩,
    ⟨(143628990541/500000000000 : ℚ), (13091744067/2500000000 : ℚ), (-1635913868717/1000000000000 : ℚ), 4⟩,
    ⟨(29356721679/100000000000 : ℚ), (2296329849/625000000 : ℚ), (-1182591206583/1000000000000 : ℚ), 4⟩,
    ⟨(150299805259/500000000000 : ℚ), (828976261/312500000 : ℚ), (-219861454831/250000000000 : ℚ), 3⟩,
    ⟨(38535929559/125000000000 : ℚ), (19532763803/10000000000 : ℚ), (-166674927383/250000000000 : ℚ), 3⟩,
    ⟨(79139164171/250000000000 : ℚ), (910259763/625000000 : ℚ), (-511603156423/1000000000000 : ℚ), 3⟩,
    ⟨(325327634043/1000000000000 : ℚ), (10928001717/10000000000 : ℚ), (-98749208333/250000000000 : ℚ), 3⟩,
    ⟨(83628974811/250000000000 : ℚ), (8200281263/10000000000 : ℚ), (-305069477913/1000000000000 : ℚ), 3⟩,
    ⟨(86008241067/250000000000 : ℚ), (3055341047/5000000000 : ℚ), (-117111082427/500000000000 : ℚ), 3⟩,
    ⟨(353787174577/1000000000000 : ℚ), (4480850057/10000000000 : ℚ), (-88695026873/500000000000 : ℚ), 2⟩,
    ⟨(72736918359/200000000000 : ℚ), (3189668281/10000000000 : ℚ), (-16386971747/125000000000 : ℚ), 2⟩,
    ⟨(186814949191/500000000000 : ℚ), (1076429309/5000000000 : ℚ), (-3715653503/40000000000 : ℚ), 2⟩,
    ⟨(383527315599/1000000000000 : ℚ), (81908897/625000000 : ℚ), (-61016426483/1000000000000 : ℚ), 2⟩,
    ⟨(393281525909/1000000000000 : ℚ), (309703733/5000000000 : ℚ), (-17091100429/500000000000 : ℚ), 2⟩,
    ⟨(402798590933/1000000000000 : ℚ), (9527511/2000000000 : ℚ), (-457221919/40000000000 : ℚ), 2⟩,
    ⟨(411986856133/1000000000000 : ℚ), (-428451927/10000000000 : ℚ), (3979948891/500000000000 : ℚ), 2⟩,
    ⟨(105189458373/250000000000 : ℚ), (-826692921/10000000000 : ℚ), (12268965781/500000000000 : ℚ), 2⟩,
    ⟨(53628381713/125000000000 : ℚ), (-1160638381/10000000000 : ℚ), (1936224583/50000000000 : ℚ), 2⟩,
    ⟨(218357439829/500000000000 : ℚ), (-57626671/400000000 : ℚ), (50844378293/1000000000000 : ℚ), 2⟩,
    ⟨(443747273387/1000000000000 : ℚ), (-83738429/500000000 : ℚ), (7643639971/125000000000 : ℚ), 2⟩,
    ⟨(225028254547/500000000000 : ℚ), (-1869113229/10000000000 : ℚ), (34916843693/500000000000 : ℚ), 2⟩,
    ⟨(28473864087/62500000000 : ℚ), (-2028461873/10000000000 : ℚ), (77048858021/1000000000000 : ℚ), 2⟩,
    ⟨(14383437827/31250000000 : ℚ), (-1078234951/5000000000 : ℚ), (82910431047/1000000000000 : ℚ), 2⟩,
    ⟨(18563036581/40000000000 : ℚ), (-2255909167/10000000000 : ℚ), (8750612247/100000000000 : ℚ), 2⟩,
    ⟨(466962884637/1000000000000 : ℚ), (-465766083/2000000000 : ℚ), (45450348751/500000000000 : ℚ), 2⟩,
    ⟨(234451558851/500000000000 : ℚ), (-297084997/1250000000 : ℚ), (18627944329/200000000000 : ℚ), 2⟩,
    ⟨(469877928213/1000000000000 : ℚ), (-9601521/40000000 : ℚ), (11781523523/125000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1201666189/5000000000 : ℚ), (47195460093/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (4658568343/15625000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control201.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control201.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate201

namespace DiagonalRamsey.JointInheritedCertificate202
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(137102393461/500000000000 : ℚ), (11569555867951/10000000000 : ℚ), (-318065736729953/1000000000000 : ℚ), 11⟩,
    ⟨(55039029987/200000000000 : ℚ), (314886688013/2500000000 : ℚ), (-17586242504253/500000000000 : ℚ), 8⟩,
    ⟨(11086653529/40000000000 : ℚ), (109784072499/2500000000 : ℚ), (-3135236588559/250000000000 : ℚ), 7⟩,
    ⟨(28009936817/100000000000 : ℚ), (215092798929/10000000000 : ℚ), (-630562272029/100000000000 : ℚ), 6⟩,
    ⟨(2218484321/7812500000 : ℚ), (124003105343/10000000000 : ℚ), (-3739523116427/1000000000000 : ℚ), 5⟩,
    ⟨(288728975269/1000000000000 : ℚ), (78585083627/10000000000 : ℚ), (-488085780519/200000000000 : ℚ), 4⟩,
    ⟨(294342444589/1000000000000 : ℚ), (26461829223/5000000000 : ℚ), (-1693104916703/1000000000000 : ℚ), 4⟩,
    ⟨(300752340271/1000000000000 : ℚ), (37143991767/10000000000 : ℚ), (-1224064383553/1000000000000 : ℚ), 4⟩,
    ⟨(76974232879/250000000000 : ℚ), (13413968537/5000000000 : ℚ), (-910425809779/1000000000000 : ℚ), 3⟩,
    ⟨(315707412003/1000000000000 : ℚ), (19762759917/10000000000 : ℚ), (-345166673007/500000000000 : ℚ), 3⟩,
    ⟨(40513570317/125000000000 : ℚ), (7371723991/5000000000 : ℚ), (-264949370667/500000000000 : ℚ), 3⟩,
    ⟨(83254868861/250000000000 : ℚ), (2767487139/2500000000 : ℚ), (-409296413931/1000000000000 : ℚ), 3⟩,
    ⟨(342354333763/1000000000000 : ℚ), (8314139149/10000000000 : ℚ), (-39538020399/125000000000 : ℚ), 3⟩,
    ⟨(70404647541/200000000000 : ℚ), (775382123/1250000000 : ℚ), (-121529230573/500000000000 : ℚ), 3⟩,
    ⟨(361933070439/1000000000000 : ℚ), (4556573227/10000000000 : ℚ), (-23039734347/125000000000 : ℚ), 2⟩,
    ⟨(18599419743/50000000000 : ℚ), (101635799/312500000 : ℚ), (-2132555567/15625000000 : ℚ), 2⟩,
    ⟨(76418474539/200000000000 : ℚ), (441045463/2000000000 : ℚ), (-3880870619/40000000000 : ℚ), 2⟩,
    ⟨(98036924279/250000000000 : ℚ), (169338781/1250000000 : ℚ), (-64110288519/1000000000000 : ℚ), 2⟩,
    ⟨(8041150597/20000000000 : ℚ), (41063577/625000000 : ℚ), (-36414740243/1000000000000 : ℚ), 2⟩,
    ⟨(804153191/1953125000 : ℚ), (79982483/10000000000 : ℚ), (-404466619/31250000000 : ℚ), 2⟩,
    ⟨(421061292111/1000000000000 : ℚ), (-400344727/10000000000 : ℚ), (7052366063/1000000000000 : ℚ), 2⟩,
    ⟨(429972205019/1000000000000 : ℚ), (-16040031/200000000 : ℚ), (12069908867/500000000000 : ℚ), 2⟩,
    ⟨(13699167361/31250000000 : ℚ), (-569350339/5000000000 : ℚ), (19377888949/500000000000 : ℚ), 2⟩,
    ⟨(446183836039/1000000000000 : ℚ), (-1420945839/10000000000 : ℚ), (3202318769/62500000000 : ℚ), 2⟩,
    ⟨(113332106821/250000000000 : ℚ), (-1656826197/10000000000 : ℚ), (12368957003/200000000000 : ℚ), 2⟩,
    ⟨(229869161483/500000000000 : ℚ), (-46314727/250000000 : ℚ), (70781262441/1000000000000 : ℚ), 2⟩,
    ⟨(232675896143/500000000000 : ℚ), (-2013056989/10000000000 : ℚ), (610962287/7812500000 : ℚ), 2⟩,
    ⟨(470114774467/1000000000000 : ℚ), (-133870831/625000000 : ℚ), (10528861671/125000000000 : ℚ), 2⟩,
    ⟨(94796279877/200000000000 : ℚ), (-2242026827/10000000000 : ℚ), (88955663463/1000000000000 : ℚ), 2⟩,
    ⟨(47691442933/100000000000 : ℚ), (-578854013/2500000000 : ℚ), (11555610869/125000000000 : ℚ), 2⟩,
    ⟨(23944280881/50000000000 : ℚ), (-1181783531/5000000000 : ℚ), (94746008703/1000000000000 : ℚ), 2⟩,
    ⟨(479875980633/1000000000000 : ℚ), (-596853739/2500000000 : ℚ), (95889229057/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-149399087/625000000 : ℚ), (96031791557/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (146841113233/500000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control202.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control202.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate202

namespace DiagonalRamsey.JointInheritedCertificate203
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(57568479357/200000000000 : ℚ), (47282668246543/10000000000 : ℚ), (-1362070366658453/1000000000000 : ℚ), 13⟩,
    ⟨(14404895571/50000000000 : ℚ), (5221076175977/10000000000 : ℚ), (-30232336427093/200000000000 : ℚ), 10⟩,
    ⟨(72152081283/250000000000 : ℚ), (930290288001/5000000000 : ℚ), (-10857794344603/200000000000 : ℚ), 9⟩,
    ⟨(289372408291/1000000000000 : ℚ), (117096231389/1250000000 : ℚ), (-27599532012187/1000000000000 : ℚ), 8⟩,
    ⟨(36298540019/125000000000 : ℚ), (557767628521/10000000000 : ℚ), (-166162011243/10000000000 : ℚ), 7⟩,
    ⟨(18228350831/62500000000 : ℚ), (183334376657/5000000000 : ℚ), (-1382054062227/125000000000 : ℚ), 6⟩,
    ⟨(293165239521/1000000000000 : ℚ), (64319969327/2500000000 : ℚ), (-7858716410039/1000000000000 : ℚ), 6⟩,
    ⟨(147459778593/500000000000 : ℚ), (47257216427/2500000000 : ℚ), (-117048342763/20000000000 : ℚ), 5⟩,
    ⟨(148456169993/500000000000 : ℚ), (143703660061/10000000000 : ℚ), (-1127887054659/250000000000 : ℚ), 5⟩,
    ⟨(149569393567/500000000000 : ℚ), (56073336659/5000000000 : ℚ), (-446416182343/125000000000 : ℚ), 5⟩,
    ⟨(150796767461/500000000000 : ℚ), (44673354367/5000000000 : ℚ), (-288668211499/100000000000 : ℚ), 5⟩,
    ⟨(304270669649/1000000000000 : ℚ), (72375544047/10000000000 : ℚ), (-118635428919/50000000000 : ℚ), 4⟩,
    ⟨(307163741863/1000000000000 : ℚ), (1188599/200000 : ℚ), (-1977043331509/1000000000000 : ℚ), 4⟩,
    ⟨(155132890949/500000000000 : ℚ), (2467538739/500000000 : ℚ), (-208245530349/125000000000 : ℚ), 4⟩,
    ⟨(31356931667/100000000000 : ℚ), (41365746501/10000000000 : ℚ), (-1416959723769/1000000000000 : ℚ), 4⟩,
    ⟨(317066387673/1000000000000 : ℚ), (34944525541/10000000000 : ℚ), (-607268373597/500000000000 : ℚ), 4⟩,
    ⟨(320748570157/1000000000000 : ℚ), (29713333351/10000000000 : ℚ), (-52387494747/50000000000 : ℚ), 3⟩,
    ⟨(162303496711/500000000000 : ℚ), (6350684973/2500000000 : ℚ), (-454344426953/500000000000 : ℚ), 3⟩,
    ⟨(82158090547/250000000000 : ℚ), (21814673201/10000000000 : ℚ), (-98940234721/125000000000 : ℚ), 3⟩,
    ⟨(33281497899/100000000000 : ℚ), (3760194539/2000000000 : ℚ), (-172968339411/250000000000 : ℚ), 3⟩,
    ⟨(21071547971/62500000000 : ℚ), (16249092783/10000000000 : ℚ), (-303204244883/500000000000 : ℚ), 3⟩,
    ⟨(85402824247/250000000000 : ℚ), (3518089553/2500000000 : ℚ), (-532549877299/1000000000000 : ℚ), 3⟩,
    ⟨(86550951771/250000000000 : ℚ), (2440637661/2000000000 : ℚ), (-468280253721/1000000000000 : ℚ), 3⟩,
    ⟨(175455617033/500000000000 : ℚ), (1058830037/1000000000 : ℚ), (-41200266573/100000000000 : ℚ), 3⟩,
    ⟨(35572223733/100000000000 : ℚ), (574078669/625000000 : ℚ), (-181219877607/500000000000 : ℚ), 3⟩,
    ⟨(360625226747/1000000000000 : ℚ), (1591990971/2000000000 : ℚ), (-159280061979/500000000000 : ℚ), 3⟩,
    ⟨(182804195293/500000000000 : ℚ), (3442371481/5000000000 : ℚ), (-279523767597/1000000000000 : ℚ), 3⟩,
    ⟨(370659723969/1000000000000 : ℚ), (5937042761/10000000000 : ℚ), (-30580141911/125000000000 : ℚ), 3⟩,
    ⟨(2935680139/7812500000 : ℚ), (1019656213/2000000000 : ℚ), (-106671030689/500000000000 : ℚ), 2⟩,
    ⟨(380918088041/1000000000000 : ℚ), (174123251/400000000 : ℚ), (-7406077479/40000000000 : ℚ), 2⟩,
    ⟨(386100405431/1000000000000 : ℚ), (3688636817/10000000000 : ℚ), (-159673257537/1000000000000 : ℚ), 2⟩,
    ⟨(391301525307/1000000000000 : ℚ), (773555597/2500000000 : ℚ), (-6828560049/50000000000 : ℚ), 2⟩,
    ⟨(79301783543/200000000000 : ℚ), (1280404771/5000000000 : ℚ), (-115562262011/1000000000000 : ℚ), 2⟩,
    ⟨(40171003759/100000000000 : ℚ), (1040380991/5000000000 : ℚ), (-96405222981/1000000000000 : ℚ), 2⟩,
    ⟨(406892354981/1000000000000 : ℚ), (1647592291/10000000000 : ℚ), (-7889392831/100000000000 : ℚ), 2⟩,
    ⟨(412043385229/1000000000000 : ℚ), (627883201/5000000000 : ℚ), (-12570292391/200000000000 : ℚ), 2⟩,
    ⟨(104287679763/250000000000 : ℚ), (225136361/2500000000 : ℚ), (-24062712373/500000000000 : ℚ), 2⟩,
    ⟨(84440410487/200000000000 : ℚ), (28892853/500000000 : ℚ), (-6916815979/200000000000 : ℚ), 2⟩,
    ⟨(213592608137/500000000000 : ℚ), (142095067/5000000000 : ℚ), (-4422637957/200000000000 : ℚ), 2⟩,
    ⟨(432088205691/1000000000000 : ℚ), (1031763/625000000 : ℚ), (-5306702329/500000000000 : ℚ), 2⟩,
    ⟨(87379841791/200000000000 : ℚ), (-45564413/2000000000 : ℚ), (3717/1953125000 : ℚ), 2⟩,
    ⟨(441606635937/1000000000000 : ℚ), (-451090323/10000000000 : ℚ), (2452111187/250000000000 : ℚ), 2⟩,
    ⟨(446199146033/1000000000000 : ℚ), (-81911503/1250000000 : ℚ), (18872527569/1000000000000 : ℚ), 2⟩,
    ⟨(90133135097/200000000000 : ℚ), (-842169911/10000000000 : ℚ), (2725232729/100000000000 : ℚ), 2⟩,
    ⟨(454995464031/1000000000000 : ℚ), (-20264977/200000000 : ℚ), (6999792449/200000000000 : ℚ), 2⟩,
    ⟨(459178080833/1000000000000 : ℚ), (-1169865221/10000000000 : ℚ), (8431481083/200000000000 : ℚ), 2⟩,
    ⟨(463203449599/1000000000000 : ℚ), (-656595887/5000000000 : ℚ), (9753451929/200000000000 : ℚ), 2⟩,
    ⟨(14595683527/31250000000 : ℚ), (-1444258729/10000000000 : ℚ), (3428963769/62500000000 : ℚ), 2⟩,
    ⟨(117686013837/250000000000 : ℚ), (-781985867/5000000000 : ℚ), (30238321633/500000000000 : ℚ), 2⟩,
    ⟨(474241126351/1000000000000 : ℚ), (-83656359/500000000 : ℚ), (32817016259/500000000000 : ℚ), 2⟩,
    ⟨(477544661123/1000000000000 : ℚ), (-443106323/2500000000 : ℚ), (70359460067/1000000000000 : ℚ), 2⟩,
    ⟨(240323350579/500000000000 : ℚ), (-465620337/2500000000 : ℚ), (37336964647/500000000000 : ℚ), 2⟩,
    ⟨(120884943343/250000000000 : ℚ), (-388767057/2000000000 : ℚ), (78595887847/1000000000000 : ℚ), 2⟩,
    ⟨(486216908099/1000000000000 : ℚ), (-2016959947/10000000000 : ℚ), (41070749577/500000000000 : ℚ), 2⟩,
    ⟨(488671655887/1000000000000 : ℚ), (-1041134079/5000000000 : ℚ), (4266243861/50000000000 : ℚ), 2⟩,
    ⟨(98179620607/200000000000 : ℚ), (-267514847/1250000000 : ℚ), (11019786133/125000000000 : ℚ), 2⟩,
    ⟨(98578177167/200000000000 : ℚ), (-2190821873/10000000000 : ℚ), (22663082477/250000000000 : ℚ), 2⟩,
    ⟨(989290407/2000000000 : ℚ), (-2234643137/10000000000 : ℚ), (23204018231/250000000000 : ℚ), 2⟩,
    ⟨(19846273189/40000000000 : ℚ), (-567951899/2500000000 : ℚ), (94657197159/1000000000000 : ℚ), 2⟩,
    ⟨(497422122869/1000000000000 : ℚ), (-143906421/625000000 : ℚ), (48091047747/500000000000 : ℚ), 2⟩,
    ⟨(49843803473/100000000000 : ℚ), (-232688107/1000000000 : ℚ), (97395964033/1000000000000 : ℚ), 2⟩,
    ⟨(499202117889/1000000000000 : ℚ), (-2345062217/10000000000 : ℚ), (2457571883/25000000000 : ℚ), 2⟩,
    ⟨(249856265801/500000000000 : ℚ), (-147320907/625000000 : ℚ), (3956233389/40000000000 : ℚ), 2⟩,
    ⟨(124992011559/250000000000 : ℚ), (-472631239/2000000000 : ℚ), (99206822653/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2363908229/10000000000 : ℚ), (19848884627/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (142314770593/500000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control203.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control203.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate203

namespace DiagonalRamsey.JointInheritedCertificate204
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(302024003559/1000000000000 : ℚ), (6016390939947/5000000000 : ℚ), (-182164146016779/500000000000 : ℚ), 11⟩,
    ⟨(303072985027/1000000000000 : ℚ), (1310723181421/10000000000 : ℚ), (-40289436878731/1000000000000 : ℚ), 8⟩,
    ⟨(305160845697/1000000000000 : ℚ), (457351568389/10000000000 : ℚ), (-14366285940903/1000000000000 : ℚ), 7⟩,
    ⟨(308267478331/1000000000000 : ℚ), (700720183/31250000 : ℚ), (-7224134952743/1000000000000 : ℚ), 6⟩,
    ⟨(156181482179/500000000000 : ℚ), (64704482839/5000000000 : ℚ), (-4284905948463/1000000000000 : ℚ), 5⟩,
    ⟨(39675982751/125000000000 : ℚ), (8210588323/1000000000 : ℚ), (-2796987709077/1000000000000 : ℚ), 4⟩,
    ⟨(323353586159/1000000000000 : ℚ), (11072846031/2000000000 : ℚ), (-970558481143/500000000000 : ℚ), 4⟩,
    ⟨(165071438119/500000000000 : ℚ), (19455341179/5000000000 : ℚ), (-702014525471/500000000000 : ℚ), 4⟩,
    ⟨(337710347669/1000000000000 : ℚ), (5629592819/2000000000 : ℚ), (-261242310129/250000000000 : ℚ), 3⟩,
    ⟨(172991560783/500000000000 : ℚ), (2596636869/1250000000 : ℚ), (-793084063279/1000000000000 : ℚ), 3⟩,
    ⟨(177440763297/500000000000 : ℚ), (15531553007/10000000000 : ℚ), (-304777548693/500000000000 : ℚ), 3⟩,
    ⟨(45539983281/125000000000 : ℚ), (467770493/400000000 : ℚ), (-58958951747/125000000000 : ℚ), 3⟩,
    ⟨(187103622079/500000000000 : ℚ), (1763031569/2000000000 : ℚ), (-365431816921/1000000000000 : ℚ), 3⟩,
    ⟨(384448439469/1000000000000 : ℚ), (13219381/20000000 : ℚ), (-70456553999/250000000000 : ℚ), 3⟩,
    ⟨(6171012873/15625000000 : ℚ), (4889973007/10000000000 : ℚ), (-68751517/320000000 : ℚ), 2⟩,
    ⟨(50699413931/125000000000 : ℚ), (3528306091/10000000000 : ℚ), (-80186769731/500000000000 : ℚ), 2⟩,
    ⟨(416297332179/1000000000000 : ℚ), (608936581/2500000000 : ℚ), (-115496039739/1000000000000 : ℚ), 2⟩,
    ⟨(85389563951/200000000000 : ℚ), (309806709/2000000000 : ℚ), (-19531368257/250000000000 : ℚ), 2⟩,
    ⟨(437444204159/1000000000000 : ℚ), (822357067/10000000000 : ℚ), (-11682482583/250000000000 : ℚ), 2⟩,
    ⟨(44768539947/100000000000 : ℚ), (222023199/10000000000 : ℚ), (-20169341209/1000000000000 : ℚ), 2⟩,
    ⟨(22878638869/50000000000 : ℚ), (-277083247/10000000000 : ℚ), (2415857153/1000000000000 : ℚ), 2⟩,
    ⟨(233505558517/500000000000 : ℚ), (-346948803/5000000000 : ℚ), (10840358967/500000000000 : ℚ), 2⟩,
    ⟨(237954761031/500000000000 : ℚ), (-208566437/2000000000 : ℚ), (38128710257/1000000000000 : ℚ), 2⟩,
    ⟨(484182295959/1000000000000 : ℚ), (-5339759/40000000 : ℚ), (26074619831/500000000000 : ℚ), 2⟩,
    ⟨(49174976739/100000000000 : ℚ), (-31574849/200000000 : ℚ), (64044672883/1000000000000 : ℚ), 2⟩,
    ⟨(498539057469/1000000000000 : ℚ), (-445207429/2500000000 : ℚ), (7405007551/100000000000 : ℚ), 2⟩,
    ⟨(25224239081/50000000000 : ℚ), (-1946293829/10000000000 : ℚ), (16469558789/200000000000 : ℚ), 2⟩,
    ⟨(50952967927/100000000000 : ℚ), (-2079049383/10000000000 : ℚ), (89078315051/1000000000000 : ℚ), 2⟩,
    ⟨(32101572831/62500000000 : ℚ), (-1091034081/5000000000 : ℚ), (2948386977/31250000000 : ℚ), 2⟩,
    ⟨(51673179793/100000000000 : ℚ), (-451510191/2000000000 : ℚ), (98237036617/1000000000000 : ℚ), 2⟩,
    ⟨(518819658601/1000000000000 : ℚ), (-2307051117/10000000000 : ℚ), (50400009027/500000000000 : ℚ), 2⟩,
    ⟨(519868640069/1000000000000 : ℚ), (-2331559861/10000000000 : ℚ), (25518215811/250000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-1167306133/5000000000 : ℚ), (51115784133/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (55073836833/200000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control204.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control204.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate204

namespace DiagonalRamsey.JointInheritedCertificate205
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(323621904363/1000000000000 : ℚ), (496638429303/400000000 : ℚ), (-402784533785891/1000000000000 : ℚ), 11⟩,
    ⟨(324711319853/1000000000000 : ℚ), (42283115843/312500000 : ℚ), (-44543063459543/1000000000000 : ℚ), 8⟩,
    ⟨(326879659167/1000000000000 : ℚ), (472422901009/10000000000 : ℚ), (-1985467159607/125000000000 : ℚ), 7⟩,
    ⟨(330106040011/1000000000000 : ℚ), (46358539227/2000000000 : ℚ), (-798778514703/100000000000 : ℚ), 6⟩,
    ⟨(13374375623/40000000000 : ℚ), (33471011623/2500000000 : ℚ), (-947679590079/200000000000 : ℚ), 5⟩,
    ⟨(10612460899/31250000000 : ℚ), (85021357609/10000000000 : ℚ), (-1510512231/488281250 : ℚ), 4⟩,
    ⟨(69154731341/200000000000 : ℚ), (57385806159/10000000000 : ℚ), (-1073720477871/500000000000 : ℚ), 4⟩,
    ⟨(44103080831/125000000000 : ℚ), (20187227471/5000000000 : ℚ), (-1553803306739/1000000000000 : ℚ), 4⟩,
    ⟨(360683813709/1000000000000 : ℚ), (7310466091/2500000000 : ℚ), (-578502026263/500000000000 : ℚ), 3⟩,
    ⟨(184637734907/500000000000 : ℚ), (21610412887/10000000000 : ℚ), (-439355160737/500000000000 : ℚ), 3⟩,
    ⟨(378516872617/1000000000000 : ℚ), (16184633307/10000000000 : ℚ), (-676005359259/1000000000000 : ℚ), 3⟩,
    ⟨(388319022357/1000000000000 : ℚ), (6105724763/5000000000 : ℚ), (-261890010183/500000000000 : ℚ), 3⟩,
    ⟨(199293759487/500000000000 : ℚ), (1845992197/2000000000 : ℚ), (-406553061183/1000000000000 : ℚ), 3⟩,
    ⟨(3197058369/7812500000 : ℚ), (3473019909/5000000000 : ℚ), (-157181114263/500000000000 : ℚ), 3⟩,
    ⟨(420124449097/1000000000000 : ℚ), (5165385169/10000000000 : ℚ), (-120282590979/500000000000 : ℚ), 2⟩,
    ⟨(431185470193/1000000000000 : ℚ), (3755869617/10000000000 : ℚ), (-36119827747/200000000000 : ℚ), 2⟩,
    ⟨(11057500271/25000000000 : ℚ), (65635281/250000000 : ℚ), (-65624819803/500000000000 : ℚ), 2⟩,
    ⟨(1770941531/3906250000 : ℚ), (213559347/1250000000 : ℚ), (-45101427227/500000000000 : ℚ), 2⟩,
    ⟨(464262009801/1000000000000 : ℚ), (119695993/1250000000 : ℚ), (-55762375993/1000000000000 : ℚ), 2⟩,
    ⟨(23744898103/50000000000 : ℚ), (168866539/5000000000 : ℚ), (-2666487817/100000000000 : ℚ), 2⟩,
    ⟨(485166458677/1000000000000 : ℚ), (-22138609/1250000000 : ℚ), (-78282969/40000000000 : ℚ), 2⟩,
    ⟨(494968608417/1000000000000 : ℚ), (-606637289/10000000000 : ℚ), (1193016361/62500000000 : ℚ), 2⟩,
    ⟨(25210500561/50000000000 : ℚ), (-965844617/10000000000 : ℚ), (37030758977/1000000000000 : ℚ), 2⟩,
    ⟨(128200416831/250000000000 : ℚ), (-316559863/2500000000 : ℚ), (26151940217/500000000000 : ℚ), 2⟩,
    ⟨(104132166877/200000000000 : ℚ), (-1516703937/10000000000 : ℚ), (65244748667/1000000000000 : ℚ), 2⟩,
    ⟨(527711824329/1000000000000 : ℚ), (-344822477/2000000000 : ℚ), (7611591417/100000000000 : ℚ), 2⟩,
    ⟨(266943366133/500000000000 : ℚ), (-1893782099/10000000000 : ℚ), (5320089131/62500000000 : ℚ), 2⟩,
    ⟨(269563045229/500000000000 : ℚ), (-507451041/2500000000 : ℚ), (46209396637/500000000000 : ℚ), 2⟩,
    ⟨(271689720511/500000000000 : ℚ), (-427057347/2000000000 : ℚ), (19625583107/200000000000 : ℚ), 2⟩,
    ⟨(546605821867/1000000000000 : ℚ), (-2212533119/10000000000 : ℚ), (10233772421/100000000000 : ℚ), 2⟩,
    ⟨(548774161181/1000000000000 : ℚ), (-2263169897/10000000000 : ℚ), (105111031693/1000000000000 : ℚ), 2⟩,
    ⟨(549863576671/1000000000000 : ℚ), (-1144117707/5000000000 : ℚ), (106487925593/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-28641961/125000000 : ℚ), (333311203/3125000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (261195010993/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control205.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control205.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate205

namespace DiagonalRamsey.JointInheritedCertificate206
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(72236262819/200000000000 : ℚ), (13177919916143/2500000000 : ℚ), (-1905205307237097/1000000000000 : ℚ), 13⟩,
    ⟨(72293787667/200000000000 : ℚ), (232938428073/400000000 : ℚ), (-211442319557789/1000000000000 : ℚ), 10⟩,
    ⟨(181021746951/500000000000 : ℚ), (259604612519/1250000000 : ℚ), (-18985324563093/250000000000 : ℚ), 9⟩,
    ⟨(181451798321/500000000000 : ℚ), (523323163239/5000000000 : ℚ), (-38609405077487/1000000000000 : ℚ), 8⟩,
    ⟨(364047174493/1000000000000 : ℚ), (623869088049/10000000000 : ℚ), (-23246509085439/1000000000000 : ℚ), 7⟩,
    ⟨(182735736237/500000000000 : ℚ), (410614248859/10000000000 : ℚ), (-15469860507261/1000000000000 : ℚ), 6⟩,
    ⟨(367173059327/1000000000000 : ℚ), (288485399129/10000000000 : ℚ), (-10997161358187/1000000000000 : ℚ), 6⟩,
    ⟨(184573917891/500000000000 : ℚ), (212244277271/10000000000 : ℚ), (-4095490318963/500000000000 : ℚ), 6⟩,
    ⟨(371391044427/1000000000000 : ℚ), (40395559341/2500000000 : ℚ), (-1263118573871/200000000000 : ℚ), 5⟩,
    ⟨(373897281177/1000000000000 : ℚ), (63143128823/5000000000 : ℚ), (-5000635782867/1000000000000 : ℚ), 5⟩,
    ⟨(2942660221/7812500000 : ℚ), (50383414041/5000000000 : ℚ), (-4043179926893/1000000000000 : ℚ), 5⟩,
    ⟨(75934813781/200000000000 : ℚ), (81757289623/10000000000 : ℚ), (-51944912549/15625000000 : ℚ), 4⟩,
    ⟨(191465351547/500000000000 : ℚ), (16811411299/2500000000 : ℚ), (-277127265837/100000000000 : ℚ), 4⟩,
    ⟨(386422565341/1000000000000 : ℚ), (6992285589/1250000000 : ℚ), (-2336405598997/1000000000000 : ℚ), 4⟩,
    ⟨(195070621721/500000000000 : ℚ), (2935822563/625000000 : ℚ), (-1988384872557/1000000000000 : ℚ), 4⟩,
    ⟨(49259722347/125000000000 : ℚ), (19879066713/5000000000 : ℚ), (-852769654971/500000000000 : ℚ), 4⟩,
    ⟨(79644537577/200000000000 : ℚ), (33875747917/10000000000 : ℚ), (-1472558670451/1000000000000 : ℚ), 4⟩,
    ⟨(402565985319/1000000000000 : ℚ), (14512498013/5000000000 : ℚ), (-639189008097/500000000000 : ℚ), 3⟩,
    ⟨(25443575481/62500000000 : ℚ), (24984512079/10000000000 : ℚ), (-557419874877/500000000000 : ℚ), 3⟩,
    ⟨(205902719451/500000000000 : ℚ), (5397161451/2500000000 : ℚ), (-975822985649/1000000000000 : ℚ), 3⟩,
    ⟨(208339668199/500000000000 : ℚ), (18711510733/10000000000 : ℚ), (-171332520627/200000000000 : ℚ), 3⟩,
    ⟨(52713394817/125000000000 : ℚ), (16256110177/10000000000 : ℚ), (-376876420173/500000000000 : ℚ), 3⟩,
    ⟨(426876792853/1000000000000 : ℚ), (2829355069/2000000000 : ℚ), (-664271353599/1000000000000 : ℚ), 3⟩,
    ⟨(432175785247/1000000000000 : ℚ), (12323811639/10000000000 : ℚ), (-18311989021/31250000000 : ℚ), 3⟩,
    ⟨(218795684991/500000000000 : ℚ), (10739646339/10000000000 : ℚ), (-258551100513/500000000000 : ℚ), 3⟩,
    ⟨(221555250219/500000000000 : ℚ), (2339003873/2500000000 : ℚ), (-456183460731/1000000000000 : ℚ), 3⟩,
    ⟨(448719880549/1000000000000 : ℚ), (4070940919/5000000000 : ℚ), (-402051529103/1000000000000 : ℚ), 3⟩,
    ⟨(18176239873/40000000000 : ℚ), (7071874701/10000000000 : ℚ), (-1768704479/5000000000 : ℚ), 3⟩,
    ⟨(230077575457/500000000000 : ℚ), (3062553829/5000000000 : ℚ), (-19403311429/62500000000 : ℚ), 2⟩,
    ⟨(465953492601/1000000000000 : ℚ), (1321068277/2500000000 : ℚ), (-6788070469/25000000000 : ℚ), 2⟩,
    ⟨(117946763293/250000000000 : ℚ), (4534942143/10000000000 : ℚ), (-236393229117/1000000000000 : ℚ), 2⟩,
    ⟨(47764177907/100000000000 : ℚ), (1932509153/5000000000 : ℚ), (-20459466793/100000000000 : ℚ), 2⟩,
    ⟨(483503565747/1000000000000 : ℚ), (1632153921/5000000000 : ℚ), (-175729322247/1000000000000 : ℚ), 2⟩,
    ⟨(97871658329/200000000000 : ℚ), (2724178967/10000000000 : ℚ), (-37364621483/250000000000 : ℚ), 2⟩,
    ⟨(61898981527/125000000000 : ℚ), (2237289763/10000000000 : ℚ), (-125492456849/1000000000000 : ℚ), 2⟩,
    ⟨(500990193903/1000000000000 : ℚ), (1797369391/10000000000 : ℚ), (-4143295831/40000000000 : ℚ), 2⟩,
    ⟨(63342418499/125000000000 : ℚ), (349760267/2500000000 : ℚ), (-83513724411/1000000000000 : ℚ), 2⟩,
    ⟨(128106366067/250000000000 : ℚ), (518838993/5000000000 : ℚ), (-16275184741/250000000000 : ℚ), 2⟩,
    ⟨(518034844379/1000000000000 : ℚ), (88660673/1250000000 : ℚ), (-96364379/2000000000 : ℚ), 2⟩,
    ⟨(104710794967/200000000000 : ℚ), (205201763/5000000000 : ℚ), (-2038602047/62500000000 : ℚ), 2⟩,
    ⟨(52896955957/100000000000 : ℚ), (34506871/2500000000 : ℚ), (-4571101831/250000000000 : ℚ), 2⟩,
    ⟨(133567137991/250000000000 : ℚ), (-110459479/10000000000 : ℚ), (-63438927/12500000000 : ℚ), 2⟩,
    ⟨(539438186281/1000000000000 : ℚ), (-337341491/10000000000 : ℚ), (7104493829/1000000000000 : ℚ), 2⟩,
    ⟨(544466008419/1000000000000 : ℚ), (-544616617/10000000000 : ℚ), (18337285187/1000000000000 : ℚ), 2⟩,
    ⟨(109867981183/200000000000 : ℚ), (-183508997/2500000000 : ℚ), (1434812319/50000000000 : ℚ), 2⟩,
    ⟨(554048137121/1000000000000 : ℚ), (-453568411/5000000000 : ℚ), (19122875293/500000000000 : ℚ), 2⟩,
    ⟨(279289679749/500000000000 : ℚ), (-532635187/5000000000 : ℚ), (1881705453/40000000000 : ℚ), 2⟩,
    ⟨(140730664233/250000000000 : ℚ), (-18900401/156250000 : ℚ), (55137127321/1000000000000 : ℚ), 2⟩,
    ⟨(567067566041/1000000000000 : ℚ), (-1341249683/10000000000 : ℚ), (12514724017/200000000000 : ℚ), 2⟩,
    ⟨(4568032811/8000000000 : ℚ), (-4565827/31250000 : ℚ), (6939135991/100000000000 : ℚ), 2⟩,
    ⟨(143680694869/250000000000 : ℚ), (-1569882707/10000000000 : ℚ), (75625021577/1000000000000 : ℚ), 2⟩,
    ⟨(578214641723/1000000000000 : ℚ), (-333683733/2000000000 : ℚ), (81305211391/1000000000000 : ℚ), 2⟩,
    ⟨(72683909489/125000000000 : ℚ), (-1757300737/10000000000 : ℚ), (86458898783/1000000000000 : ℚ), 2⟩,
    ⟨(584484836529/1000000000000 : ℚ), (-18370799/100000000 : ℚ), (91109790763/1000000000000 : ℚ), 2⟩,
    ⟨(14681201591/25000000000 : ℚ), (-1908237867/10000000000 : ℚ), (95278654311/1000000000000 : ℚ), 2⟩,
    ⟨(58975430039/100000000000 : ℚ), (-1971193939/10000000000 : ℚ), (98983595723/1000000000000 : ℚ), 2⟩,
    ⟨(118399501807/200000000000 : ℚ), (-2026310857/10000000000 : ℚ), (25560075063/250000000000 : ℚ), 2⟩,
    ⟨(59397228549/100000000000 : ℚ), (-518474947/2500000000 : ℚ), (105062237831/1000000000000 : ℚ), 2⟩,
    ⟨(595673872343/1000000000000 : ℚ), (-528556137/2500000000 : ℚ), (107460838811/1000000000000 : ℚ), 2⟩,
    ⟨(149274542581/250000000000 : ℚ), (-1073752567/5000000000 : ℚ), (109445641373/1000000000000 : ℚ), 2⟩,
    ⟨(23929669927/40000000000 : ℚ), (-434784129/2000000000 : ℚ), (111024414557/1000000000000 : ℚ), 2⟩,
    ⟨(119820370183/200000000000 : ℚ), (-548402909/2500000000 : ℚ), (56101628789/500000000000 : ℚ), 2⟩,
    ⟨(299838203241/500000000000 : ℚ), (-2206681957/10000000000 : ℚ), (112986678063/1000000000000 : ℚ), 2⟩,
    ⟨(299982015361/500000000000 : ℚ), (-276650013/1250000000 : ℚ), (5668882483/50000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-2214014077/10000000000 : ℚ), (113426486577/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (118304883139/500000000000 : ℚ)
  μ := (3/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control206.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control206.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate206

namespace DiagonalRamsey.JointInheritedCertificate207
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(234471567977/1000000000000 : ℚ), (10971789016901/10000000000 : ℚ), (-128978950506927/500000000000 : ℚ), 11⟩,
    ⟨(235364399711/1000000000000 : ℚ), (1193517999649/10000000000 : ℚ), (-1426231232351/50000000000 : ℚ), 8⟩,
    ⟨(118570732361/500000000000 : ℚ), (83128526561/2000000000 : ℚ), (-5084923891737/500000000000 : ℚ), 7⟩,
    ⟨(239785648903/1000000000000 : ℚ), (50828265173/2500000000 : ℚ), (-5112769982677/1000000000000 : ℚ), 6⟩,
    ⟨(243271487313/1000000000000 : ℚ), (58519259947/5000000000 : ℚ), (-3031494613171/1000000000000 : ℚ), 5⟩,
    ⟨(247565409423/1000000000000 : ℚ), (74052369211/10000000000 : ℚ), (-1977764493281/1000000000000 : ℚ), 4⟩,
    ⟨(252626062417/1000000000000 : ℚ), (6223013149/1250000000 : ℚ), (-685753445151/500000000000 : ℚ), 4⟩,
    ⟨(807514717/3125000000 : ℚ), (34873148043/10000000000 : ℚ), (-123864737169/125000000000 : ℚ), 4⟩,
    ⟨(264845698961/1000000000000 : ℚ), (1005301423/400000000 : ℚ), (-147267681381/200000000000 : ℚ), 3⟩,
    ⟨(67971750183/250000000000 : ℚ), (18466015187/10000000000 : ℚ), (-278801451881/500000000000 : ℚ), 3⟩,
    ⟨(55892160633/200000000000 : ℚ), (1373248541/1000000000 : ℚ), (-427228615819/1000000000000 : ℚ), 3⟩,
    ⟨(57498833281/200000000000 : ℚ), (10269364847/10000000000 : ℚ), (-164569144733/500000000000 : ℚ), 3⟩,
    ⟨(295909724771/1000000000000 : ℚ), (1917925097/2500000000 : ℚ), (-253421546693/1000000000000 : ℚ), 3⟩,
    ⟨(76156607959/250000000000 : ℚ), (5681493299/10000000000 : ℚ), (-96851666959/500000000000 : ℚ), 3⟩,
    ⟨(62712068189/200000000000 : ℚ), (1032159107/2500000000 : ℚ), (-29147098593/200000000000 : ℚ), 2⟩,
    ⟨(322625413671/1000000000000 : ℚ), (579541533/2000000000 : ℚ), (-106602326909/1000000000000 : ℚ), 2⟩,
    ⟨(41466793551/125000000000 : ℚ), (190846489/1000000000 : ℚ), (-74252217831/1000000000000 : ℚ), 2⟩,
    ⟨(170399710567/500000000000 : ℚ), (4415817/40000000 : ℚ), (-23605412557/500000000000 : ℚ), 2⟩,
    ⟨(349733330243/1000000000000 : ℚ), (443024261/10000000000 : ℚ), (-6099904393/250000000000 : ℚ), 2⟩,
    ⟨(89612509327/250000000000 : ℚ), (-13064893/1250000000 : ℚ), (-5017712811/1000000000000 : ℚ), 2⟩,
    ⟨(183432797837/500000000000 : ℚ), (-14028129/250000000 : ℚ), (11537036943/1000000000000 : ℚ), 2⟩,
    ⟨(374898958913/1000000000000 : ℚ), (-117959247/1250000000 : ℚ), (3215243853/125000000000 : ℚ), 2⟩,
    ⟨(382472761347/1000000000000 : ℚ), (-1264978303/10000000000 : ℚ), (3788709433/100000000000 : ℚ), 2⟩,
    ⟨(389514063117/1000000000000 : ℚ), (-153483673/1000000000 : ℚ), (48301950203/1000000000000 : ℚ), 2⟩,
    ⟨(395955052639/1000000000000 : ℚ), (-440195841/2500000000 : ℚ), (57174659067/1000000000000 : ℚ), 2⟩,
    ⟨(401733699661/1000000000000 : ℚ), (-1948627881/10000000000 : ℚ), (64666096869/1000000000000 : ℚ), 2⟩,
    ⟨(25424647041/62500000000 : ℚ), (-2102848421/10000000000 : ℚ), (2836011811/40000000000 : ℚ), 2⟩,
    ⟨(205544137383/500000000000 : ℚ), (-1113439661/5000000000 : ℚ), (3038888691/40000000000 : ℚ), 2⟩,
    ⟨(51821764147/125000000000 : ℚ), (-2323322299/10000000000 : ℚ), (9994197221/125000000000 : ℚ), 2⟩,
    ⟨(104304574339/250000000000 : ℚ), (-119705033/500000000 : ℚ), (20724294771/250000000000 : ℚ), 2⟩,
    ⟨(418995362367/1000000000000 : ℚ), (-2440569979/10000000000 : ℚ), (84840080247/1000000000000 : ℚ), 2⟩,
    ⟨(209944097051/500000000000 : ℚ), (-2463594377/10000000000 : ℚ), (85805818101/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-1233231341/5000000000 : ℚ), (85926270889/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (159965658541/500000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control207.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control207.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate207

namespace DiagonalRamsey.JointInheritedCertificate225
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(242587750497/1000000000000 : ℚ), (10970806151049/10000000000 : ℚ), (-33355874643701/125000000000 : ℚ), 11⟩,
    ⟨(243489647861/1000000000000 : ℚ), (298456064471/2500000000 : ℚ), (-7376789253769/250000000000 : ℚ), 8⟩,
    ⟨(30660594603/125000000000 : ℚ), (415948530813/10000000000 : ℚ), (-2629963951441/250000000000 : ℚ), 7⟩,
    ⟨(49591157901/200000000000 : ℚ), (198801593/9765625 : ℚ), (-2644256232341/500000000000 : ℚ), 6⟩,
    ⟨(251477022401/1000000000000 : ℚ), (29313582859/2500000000 : ℚ), (-3135525058831/1000000000000 : ℚ), 5⟩,
    ⟨(15988409007/62500000000 : ℚ), (74230956319/10000000000 : ℚ), (-2045497585869/1000000000000 : ℚ), 5⟩,
    ⟨(130463290967/500000000000 : ℚ), (24965905523/5000000000 : ℚ), (-354591973483/250000000000 : ℚ), 4⟩,
    ⟨(66690976037/250000000000 : ℚ), (17497657709/5000000000 : ℚ), (-64043062661/62500000000 : ℚ), 4⟩,
    ⟨(5465405883/20000000000 : ℚ), (3154197401/1250000000 : ℚ), (-380683939751/500000000000 : ℚ), 3⟩,
    ⟨(35047886481/125000000000 : ℚ), (9274791879/5000000000 : ℚ), (-72063816989/125000000000 : ℚ), 3⟩,
    ⟨(36004224639/125000000000 : ℚ), (690080333/500000000 : ℚ), (-220843606853/500000000000 : ℚ), 3⟩,
    ⟨(296148729467/1000000000000 : ℚ), (516328027/500000000 : ℚ), (-340266520597/1000000000000 : ℚ), 3⟩,
    ⟨(304649737679/1000000000000 : ℚ), (1543815139/2000000000 : ℚ), (-130998130099/500000000000 : ℚ), 3⟩,
    ⟨(313454952391/1000000000000 : ℚ), (2860403499/5000000000 : ℚ), (-200281205793/1000000000000 : ℚ), 3⟩,
    ⟨(161239787287/500000000000 : ℚ), (4161357099/10000000000 : ℚ), (-75363078193/500000000000 : ℚ), 3⟩,
    ⟨(331636692181/1000000000000 : ℚ), (1462529767/5000000000 : ℚ), (-110314150519/1000000000000 : ℚ), 2⟩,
    ⟨(85209529291/250000000000 : ℚ), (482866461/2500000000 : ℚ), (-2403811597/31250000000 : ℚ), 2⟩,
    ⟨(349995234771/1000000000000 : ℚ), (561723877/5000000000 : ℚ), (-12255872183/250000000000 : ℚ), 2⟩,
    ⟨(359019856953/1000000000000 : ℚ), (459706407/10000000000 : ℚ), (-25501969199/1000000000000 : ℚ), 2⟩,
    ⟨(183912535833/500000000000 : ℚ), (-18015317/2000000000 : ℚ), (-5527867543/1000000000000 : ℚ), 2⟩,
    ⟨(188163039939/500000000000 : ℚ), (-109691001/2000000000 : ℚ), (11522779983/1000000000000 : ℚ), 2⟩,
    ⟨(384441012233/1000000000000 : ℚ), (-466198351/5000000000 : ℚ), (26124096699/1000000000000 : ℚ), 2⟩,
    ⟨(49011464687/125000000000 : ℚ), (-250957501/2000000000 : ℚ), (19319607481/500000000000 : ℚ), 2⟩,
    ⟨(199602257597/500000000000 : ℚ), (-762743313/5000000000 : ℚ), (1973913953/40000000000 : ℚ), 2⟩,
    ⟨(405710905197/1000000000000 : ℚ), (-1752078063/10000000000 : ℚ), (14616545877/250000000000 : ℚ), 2⟩,
    ⟨(411548227411/1000000000000 : ℚ), (-1940412169/10000000000 : ℚ), (4135089157/62500000000 : ℚ), 2⟩,
    ⟨(416660265233/1000000000000 : ℚ), (-104749993/500000000 : ℚ), (36281289493/500000000000 : ℚ), 2⟩,
    ⟨(6578090421/15625000000 : ℚ), (-55482537/250000000 : ℚ), (77768474189/1000000000000 : ℚ), 2⟩,
    ⟨(424519019839/1000000000000 : ℚ), (-115796947/500000000 : ℚ), (40926897937/500000000000 : ℚ), 2⟩,
    ⟨(427190052521/1000000000000 : ℚ), (-2386850731/10000000000 : ℚ), (42436781029/500000000000 : ℚ), 2⟩,
    ⟨(107246290371/250000000000 : ℚ), (-2433403249/10000000000 : ℚ), (21716601173/250000000000 : ℚ), 2⟩,
    ⟨(13433970589/31250000000 : ℚ), (-76764611/312500000 : ℚ), (43928433763/500000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-1229670383/5000000000 : ℚ), (87980399491/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (651534343/2000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control225.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control225.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate225

namespace DiagonalRamsey.JointInheritedCertificate226
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(249155335191/1000000000000 : ℚ), (11065489516501/10000000000 : ℚ), (-2159616880801/7812500000 : ℚ), 11⟩,
    ⟨(250073750613/1000000000000 : ℚ), (60214147393/500000000 : ℚ), (-30567106429631/1000000000000 : ℚ), 8⟩,
    ⟨(251901736613/1000000000000 : ℚ), (419669878451/10000000000 : ℚ), (-10897889182779/1000000000000 : ℚ), 7⟩,
    ⟨(254621688687/1000000000000 : ℚ), (205438758151/10000000000 : ℚ), (-5478677372711/1000000000000 : ℚ), 6⟩,
    ⟨(25820741221/100000000000 : ℚ), (7397348083/625000000 : ℚ), (-3248384882417/1000000000000 : ℚ), 5⟩,
    ⟨(52524874941/200000000000 : ℚ), (37474503263/5000000000 : ℚ), (-2119233097737/1000000000000 : ℚ), 5⟩,
    ⟨(33478754801/125000000000 : ℚ), (2521460067/500000000 : ℚ), (-367402173339/250000000000 : ℚ), 4⟩,
    ⟨(273774269931/1000000000000 : ℚ), (35355117497/10000000000 : ℚ), (-530912026213/500000000000 : ℚ), 4⟩,
    ⟨(70099955769/250000000000 : ℚ), (25502246199/10000000000 : ℚ), (-197270859193/250000000000 : ℚ), 3⟩,
    ⟨(8988840317/31250000000 : ℚ), (4688779631/2500000000 : ℚ), (-597628900043/1000000000000 : ℚ), 3⟩,
    ⟨(295433716439/1000000000000 : ℚ), (2792377757/2000000000 : ℚ), (-18320375203/40000000000 : ℚ), 3⟩,
    ⟨(303697272047/1000000000000 : ℚ), (2613383553/2500000000 : ℚ), (-176497927517/500000000000 : ℚ), 3⟩,
    ⟨(39044246801/125000000000 : ℚ), (1564203009/2000000000 : ℚ), (-135983772489/500000000000 : ℚ), 3⟩,
    ⟨(160660227373/500000000000 : ℚ), (580361577/1000000000 : ℚ), (-208091920229/1000000000000 : ℚ), 3⟩,
    ⟨(82627590239/250000000000 : ℚ), (169174059/400000000 : ℚ), (-78407717361/500000000000 : ℚ), 3⟩,
    ⟨(67967037843/200000000000 : ℚ), (1490729691/5000000000 : ℚ), (-115012230739/1000000000000 : ℚ), 2⟩,
    ⟨(349205136331/1000000000000 : ℚ), (989356987/5000000000 : ℚ), (-3219289951/40000000000 : ℚ), 2⟩,
    ⟨(35852996459/100000000000 : ℚ), (145427973/1250000000 : ℚ), (-645549043/12500000000 : ℚ), 2⟩,
    ⟨(367719870799/1000000000000 : ℚ), (123468469/2500000000 : ℚ), (-27339757891/1000000000000 : ℚ), 2⟩,
    ⟨(188343175569/500000000000 : ℚ), (-60566617/10000000000 : ℚ), (-3354868973/500000000000 : ℚ), 2⟩,
    ⟨(385343053499/1000000000000 : ℚ), (-65336183/1250000000 : ℚ), (5446599031/500000000000 : ℚ), 2⟩,
    ⟨(196803304553/500000000000 : ℚ), (-14213217/156250000 : ℚ), (25960890633/1000000000000 : ℚ), 2⟩,
    ⟨(200698717701/500000000000 : ℚ), (-1234464359/10000000000 : ℚ), (4858774197/125000000000 : ℚ), 2⟩,
    ⟨(40864050247/100000000000 : ℚ), (-753557917/5000000000 : ℚ), (399292203/8000000000 : ℚ), 2⟩,
    ⟨(83053211123/200000000000 : ℚ), (-867636127/5000000000 : ℚ), (1853420691/31250000000 : ℚ), 2⟩,
    ⟨(210605143569/500000000000 : ℚ), (-962426647/5000000000 : ℚ), (33618900373/500000000000 : ℚ), 2⟩,
    ⟨(426415950841/1000000000000 : ℚ), (-1040212197/5000000000 : ℚ), (73830707317/1000000000000 : ℚ), 2⟩,
    ⟨(86166582667/200000000000 : ℚ), (-551372119/2500000000 : ℚ), (39595517837/500000000000 : ℚ), 2⟩,
    ⟨(434418636859/1000000000000 : ℚ), (-287837527/1250000000 : ℚ), (667172439/8000000000 : ℚ), 2⟩,
    ⟨(437138588933/1000000000000 : ℚ), (-2374022637/10000000000 : ℚ), (43252293763/500000000000 : ℚ), 2⟩,
    ⟨(438966574933/1000000000000 : ℚ), (-605209901/2500000000 : ℚ), (44277701737/500000000000 : ℚ), 2⟩,
    ⟨(87976998071/200000000000 : ℚ), (-152752087/625000000 : ℚ), (22393649171/250000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-305865333/1250000000 : ℚ), (44850854007/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (321372974881/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control226.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control226.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate226

namespace DiagonalRamsey.JointInheritedCertificate227
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(127875050233/500000000000 : ℚ), (2231916593157/2000000000 : ℚ), (-286154604741523/1000000000000 : ℚ), 11⟩,
    ⟨(256684903141/1000000000000 : ℚ), (607337940969/5000000000 : ℚ), (-1977653785923/62500000000 : ℚ), 8⟩,
    ⟨(32318188229/125000000000 : ℚ), (423367389481/10000000000 : ℚ), (-705086593021/62500000000 : ℚ), 7⟩,
    ⟨(261313989917/1000000000000 : ℚ), (207292390039/10000000000 : ℚ), (-2835783347319/500000000000 : ℚ), 6⟩,
    ⟨(264963693381/1000000000000 : ℚ), (59726626727/5000000000 : ℚ), (-840710692731/250000000000 : ℚ), 5⟩,
    ⟨(4210304181/15625000000 : ℚ), (15132378943/2000000000 : ℚ), (-2193997168387/1000000000000 : ℚ), 5⟩,
    ⟨(274758015763/1000000000000 : ℚ), (50922797331/10000000000 : ℚ), (-1521551171179/1000000000000 : ℚ), 4⟩,
    ⟨(280808310003/1000000000000 : ℚ), (7142395231/2000000000 : ℚ), (-54972818683/50000000000 : ℚ), 4⟩,
    ⟨(143776041331/500000000000 : ℚ), (3221066501/1250000000 : ℚ), (-817160339879/1000000000000 : ℚ), 3⟩,
    ⟨(73731096881/250000000000 : ℚ), (9479330401/5000000000 : ℚ), (-619013981097/1000000000000 : ℚ), 3⟩,
    ⟨(302854225263/1000000000000 : ℚ), (14120456811/10000000000 : ℚ), (-118632507599/250000000000 : ℚ), 3⟩,
    ⟨(155632613603/500000000000 : ℚ), (5289499499/5000000000 : ℚ), (-182936555703/500000000000 : ℚ), 3⟩,
    ⟨(160038195403/500000000000 : ℚ), (198040013/250000000 : ℚ), (-282048473917/1000000000000 : ℚ), 3⟩,
    ⟨(164601429871/500000000000 : ℚ), (735648787/1250000000 : ℚ), (-215982810533/1000000000000 : ℚ), 3⟩,
    ⟨(338556741129/1000000000000 : ℚ), (4296205749/10000000000 : ℚ), (-162961905529/1000000000000 : ℚ), 3⟩,
    ⟨(13921918079/40000000000 : ℚ), (1518397283/5000000000 : ℚ), (-29937349819/250000000000 : ℚ), 2⟩,
    ⟨(89396271683/250000000000 : ℚ), (2024958917/10000000000 : ℚ), (-84067250043/1000000000000 : ℚ), 2⟩,
    ⟨(183538148789/500000000000 : ℚ), (601223759/5000000000 : ℚ), (-5427762751/100000000000 : ℚ), 2⟩,
    ⟨(75286035793/200000000000 : ℚ), (4118217/78125000 : ℚ), (-29181655529/1000000000000 : ℚ), 2⟩,
    ⟨(385556647901/1000000000000 : ℚ), (-31929907/10000000000 : ℚ), (-7888382729/1000000000000 : ℚ), 2⟩,
    ⟨(394367811501/1000000000000 : ℚ), (-124441503/2500000000 : ℚ), (10272711193/1000000000000 : ℚ), 2⟩,
    ⟨(100694703361/250000000000 : ℚ), (-887710221/10000000000 : ℚ), (201652089/7812500000 : ℚ), 2⟩,
    ⟨(410708651183/1000000000000 : ℚ), (-1214932981/10000000000 : ℚ), (3911868597/100000000000 : ℚ), 2⟩,
    ⟨(83616191209/200000000000 : ℚ), (-37237913/250000000 : ℚ), (50495670441/1000000000000 : ℚ), 2⟩,
    ⟨(3318943193/7812500000 : ℚ), (-429805097/2500000000 : ℚ), (60175533921/1000000000000 : ℚ), 2⟩,
    ⟨(13464844467/31250000000 : ℚ), (-955016671/5000000000 : ℚ), (4271173801/62500000000 : ℚ), 2⟩,
    ⟨(436173571123/1000000000000 : ℚ), (-2066575183/10000000000 : ℚ), (37562418933/500000000000 : ℚ), 2⟩,
    ⟨(220334672663/500000000000 : ℚ), (-1096195649/5000000000 : ℚ), (40320328129/500000000000 : ℚ), 2⟩,
    ⟨(44431904879/100000000000 : ℚ), (-1145084523/5000000000 : ℚ), (84967150451/1000000000000 : ℚ), 2⟩,
    ⟨(3576700263/8000000000 : ℚ), (-1180947967/5000000000 : ℚ), (88163994241/1000000000000 : ℚ), 2⟩,
    ⟨(224474067783/500000000000 : ℚ), (-2408973259/10000000000 : ℚ), (90273128601/1000000000000 : ℚ), 2⟩,
    ⟨(449882938241/1000000000000 : ℚ), (-243229449/1000000000 : ℚ), (91321219263/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-1217599783/5000000000 : ℚ), (45725965341/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (316957313623/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control227.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control227.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate227

namespace DiagonalRamsey.JointInheritedCertificate228
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(131216624503/500000000000 : ℚ), (17592641277/15625000 : ℚ), (-296249487748493/1000000000000 : ℚ), 11⟩,
    ⟨(263384013603/1000000000000 : ℚ), (245138019513/2000000000 : ℚ), (-4094866940933/125000000000 : ℚ), 8⟩,
    ⟨(53055277283/200000000000 : ℚ), (106821698631/2500000000 : ℚ), (-11679594001583/1000000000000 : ℚ), 7⟩,
    ⟨(33511517857/125000000000 : ℚ), (10462895287/500000000 : ℚ), (-5871893149063/1000000000000 : ℚ), 6⟩,
    ⟨(271804165653/1000000000000 : ℚ), (120615577567/10000000000 : ℚ), (-1740872399277/500000000000 : ℚ), 5⟩,
    ⟨(276376705997/1000000000000 : ℚ), (955231871/125000000 : ℚ), (-567922815217/250000000000 : ℚ), 5⟩,
    ⟨(140882863913/500000000000 : ℚ), (12861758533/2500000000 : ℚ), (-63022152249/40000000000 : ℚ), 4⟩,
    ⟨(35989916489/125000000000 : ℚ), (9022817387/2500000000 : ℚ), (-569302050421/500000000000 : ℚ), 4⟩,
    ⟨(58955651137/200000000000 : ℚ), (26051796829/10000000000 : ℚ), (-846389611983/1000000000000 : ℚ), 3⟩,
    ⟨(302276443959/1000000000000 : ℚ), (19175384123/10000000000 : ℚ), (-641297917551/1000000000000 : ℚ), 3⟩,
    ⟨(155170842541/500000000000 : ℚ), (14289466581/10000000000 : ℚ), (-491765985291/1000000000000 : ℚ), 3⟩,
    ⟨(159448153187/500000000000 : ℚ), (10712873959/10000000000 : ℚ), (-379328927971/1000000000000 : ℚ), 3⟩,
    ⟨(163928961077/500000000000 : ℚ), (8029055561/10000000000 : ℚ), (-29260373521/100000000000 : ℚ), 3⟩,
    ⟨(67428045433/200000000000 : ℚ), (59724449/100000000 : ℚ), (-224267112939/1000000000000 : ℚ), 3⟩,
    ⟨(173326913867/500000000000 : ℚ), (873561637/2000000000 : ℚ), (-33887604183/200000000000 : ℚ), 3⟩,
    ⟨(356307102687/1000000000000 : ℚ), (3096139039/10000000000 : ℚ), (-62382677317/500000000000 : ℚ), 2⟩,
    ⟨(36600708571/100000000000 : ℚ), (1037310813/5000000000 : ℚ), (-87890085843/1000000000000 : ℚ), 2⟩,
    ⟨(375660360663/1000000000000 : ℚ), (622205871/5000000000 : ℚ), (-57115940857/1000000000000 : ℚ), 2⟩,
    ⟨(24073372577/62500000000 : ℚ), (562942689/10000000000 : ℚ), (-15600526113/500000000000 : ℚ), 2⟩,
    ⟨(394456266243/1000000000000 : ℚ), (-264059/2500000000 : ℚ), (-1844463147/200000000000 : ℚ), 2⟩,
    ⟨(403417882023/1000000000000 : ℚ), (-235432119/5000000000 : ℚ), (9515179193/1000000000000 : ℚ), 2⟩,
    ⟨(82394500663/200000000000 : ℚ), (-864008279/10000000000 : ℚ), (5107999707/200000000000 : ℚ), 2⟩,
    ⟨(420037744439/1000000000000 : ℚ), (-1193809229/10000000000 : ℚ), (39257458467/1000000000000 : ℚ), 2⟩,
    ⟨(427535932713/1000000000000 : ℚ), (-36761681/250000000 : ℚ), (25490100347/500000000000 : ℚ), 2⟩,
    ⟨(217197428243/500000000000 : ℚ), (-1701834733/10000000000 : ℚ), (3809389841/62500000000 : ℚ), 2⟩,
    ⟨(110137115143/250000000000 : ℚ), (-473493433/2500000000 : ℚ), (6935507193/100000000000 : ℚ), 2⟩,
    ⟨(557421853/1250000000 : ℚ), (-2051561711/10000000000 : ℚ), (381698123/5000000000 : ℚ), 2⟩,
    ⟨(56313752843/125000000000 : ℚ), (-435637827/2000000000 : ℚ), (2050378249/25000000000 : ℚ), 2⟩,
    ⟨(454222045541/1000000000000 : ℚ), (-569144519/2500000000 : ℚ), (17293158767/200000000000 : ℚ), 2⟩,
    ⟨(457037801983/1000000000000 : ℚ), (-469748411/2000000000 : ℚ), (3590150087/40000000000 : ℚ), 2⟩,
    ⟨(229465087397/500000000000 : ℚ), (-1198050449/5000000000 : ℚ), (91922697217/1000000000000 : ℚ), 2⟩,
    ⟨(459880939391/1000000000000 : ℚ), (-1209779989/5000000000 : ℚ), (18600083727/200000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-48449643/200000000 : ℚ), (93134821151/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (312487610703/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control228.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control228.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate228

namespace DiagonalRamsey.JointInheritedCertificate229
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(16825403069/62500000000 : ℚ), (5682315339441/5000000000 : ℚ), (-12269276713847/40000000000 : ℚ), 11⟩,
    ⟨(270172742261/1000000000000 : ℚ), (309331928303/2500000000 : ℚ), (-33918337604307/1000000000000 : ℚ), 8⟩,
    ⟨(68024005661/250000000000 : ℚ), (43142886319/1000000000 : ℚ), (-6046580295977/500000000000 : ℚ), 7⟩,
    ⟨(274957768011/1000000000000 : ℚ), (42267140443/2000000000 : ℚ), (-3039991458103/500000000000 : ℚ), 6⟩,
    ⟨(278730418189/1000000000000 : ℚ), (121844784231/10000000000 : ℚ), (-901321404249/250000000000 : ℚ), 5⟩,
    ⟨(17711102531/62500000000 : ℚ), (77219134707/10000000000 : ℚ), (-294055434777/125000000000 : ℚ), 5⟩,
    ⟨(7221366991/25000000000 : ℚ), (1040040567/200000000 : ℚ), (-815853229069/500000000000 : ℚ), 4⟩,
    ⟨(295108788741/1000000000000 : ℚ), (36493083961/10000000000 : ℚ), (-1179333131299/1000000000000 : ℚ), 4⟩,
    ⟨(302079737307/1000000000000 : ℚ), (26352105771/10000000000 : ℚ), (-35072846777/40000000000 : ℚ), 3⟩,
    ⟨(61940078259/200000000000 : ℚ), (19405337933/10000000000 : ℚ), (-332259726843/500000000000 : ℚ), 3⟩,
    ⟨(317897359641/1000000000000 : ℚ), (14468955437/10000000000 : ℚ), (-509747888043/1000000000000 : ℚ), 3⟩,
    ⟨(326591701057/1000000000000 : ℚ), (10855186761/10000000000 : ℚ), (-4917348757/12500000000 : ℚ), 3⟩,
    ⟨(67139936857/200000000000 : ℚ), (4071699951/5000000000 : ℚ), (-303653303573/1000000000000 : ℚ), 3⟩,
    ⟨(69026718893/200000000000 : ℚ), (6065392693/10000000000 : ℚ), (-232961203109/1000000000000 : ℚ), 3⟩,
    ⟨(354802577887/1000000000000 : ℚ), (1111041573/2500000000 : ℚ), (-176257309591/1000000000000 : ℚ), 2⟩,
    ⟨(182306758477/500000000000 : ℚ), (1579747767/5000000000 : ℚ), (-130071344993/1000000000000 : ℚ), 2⟩,
    ⟨(4680899087/12500000000 : ℚ), (2127700739/10000000000 : ℚ), (-5747509907/62500000000 : ℚ), 2⟩,
    ⟨(384282866027/1000000000000 : ℚ), (64465579/500000000 : ℚ), (-15041689993/250000000000 : ℚ), 2⟩,
    ⟨(49243981181/125000000000 : ℚ), (3758117/62500000 : ℚ), (-33404607987/1000000000000 : ℚ), 2⟩,
    ⟨(403385759629/1000000000000 : ℚ), (16021957/5000000000 : ℚ), (-5358588587/500000000000 : ℚ), 2⟩,
    ⟨(51561717857/125000000000 : ℚ), (-44199683/1000000000 : ℚ), (8615805093/1000000000000 : ℚ), 2⟩,
    ⟨(421188084273/1000000000000 : ℚ), (-838554623/10000000000 : ℚ), (5028477061/200000000000 : ℚ), 2⟩,
    ⟨(214692526309/500000000000 : ℚ), (-1171109247/10000000000 : ℚ), (9820747601/250000000000 : ℚ), 2⟩,
    ⟨(218502853303/500000000000 : ℚ), (-724992731/5000000000 : ℚ), (12840518167/250000000000 : ℚ), 2⟩,
    ⟨(443976655173/1000000000000 : ℚ), (-52597933/312500000 : ℚ), (3081546073/50000000000 : ℚ), 2⟩,
    ⟨(450230764273/1000000000000 : ℚ), (-234586741/1250000000 : ℚ), (8785542783/125000000000 : ℚ), 2⟩,
    ⟨(455707803417/1000000000000 : ℚ), (-254425521/1250000000 : ℚ), (38736496549/500000000000 : ℚ), 2⟩,
    ⟨(115088756431/250000000000 : ℚ), (-540725687/2500000000 : ℚ), (83312585393/1000000000000 : ℚ), 2⟩,
    ⟨(464127675903/1000000000000 : ℚ), (-2261948501/10000000000 : ℚ), (14062523/160000000 : ℚ), 2⟩,
    ⟨(46698942127/100000000000 : ℚ), (-466916501/2000000000 : ℚ), (22818064253/250000000000 : ℚ), 2⟩,
    ⟨(117228175413/250000000000 : ℚ), (-2382244229/10000000000 : ℚ), (18700515587/200000000000 : ℚ), 2⟩,
    ⟨(469878994809/1000000000000 : ℚ), (-150365729/625000000 : ℚ), (94610699337/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2408792237/10000000000 : ℚ), (47374444237/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (153981443619/500000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control229.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control229.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate229

namespace DiagonalRamsey.JointInheritedCertificate230
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(276004963601/1000000000000 : ℚ), (5734560514663/5000000000 : ℚ), (-158681338067111/500000000000 : ℚ), 11⟩,
    ⟨(34623332937/125000000000 : ℚ), (1248870703601/10000000000 : ℚ), (-8773522473653/250000000000 : ℚ), 8⟩,
    ⟨(139470304489/500000000000 : ℚ), (217768359647/5000000000 : ℚ), (-782032472897/62500000000 : ℚ), 7⟩,
    ⟨(56369596497/200000000000 : ℚ), (213395920451/10000000000 : ℚ), (-1258191372713/200000000000 : ℚ), 6⟩,
    ⟨(285680784421/1000000000000 : ℚ), (4922529901/400000000 : ℚ), (-373051448271/100000000000 : ℚ), 5⟩,
    ⟨(290402102807/1000000000000 : ℚ), (78012425727/10000000000 : ℚ), (-1217139481681/500000000000 : ℚ), 5⟩,
    ⟨(295966468767/1000000000000 : ℚ), (52551702431/10000000000 : ℚ), (-337719052447/200000000000 : ℚ), 4⟩,
    ⟨(151160147207/500000000000 : ℚ), (18445403701/5000000000 : ℚ), (-1220581264271/1000000000000 : ℚ), 4⟩,
    ⟨(61880477787/200000000000 : ℚ), (26649136873/10000000000 : ℚ), (-907627506699/1000000000000 : ℚ), 3⟩,
    ⟨(317144547887/1000000000000 : ℚ), (19632576763/10000000000 : ℚ), (-688015304679/1000000000000 : ℚ), 3⟩,
    ⟨(2542751641/7812500000 : ℚ), (1464613293/1000000000 : ℚ), (-263965837061/500000000000 : ℚ), 3⟩,
    ⟨(334305175479/1000000000000 : ℚ), (10995485999/10000000000 : ℚ), (-203797546437/500000000000 : ℚ), 3⟩,
    ⟨(343558377893/1000000000000 : ℚ), (4127977857/5000000000 : ℚ), (-314810475553/1000000000000 : ℚ), 3⟩,
    ⟨(176571351947/500000000000 : ℚ), (1231345111/2000000000 : ℚ), (-241731638593/1000000000000 : ℚ), 3⟩,
    ⟨(362965851183/1000000000000 : ℚ), (4519045877/10000000000 : ℚ), (-5722767951/31250000000 : ℚ), 2⟩,
    ⟨(372933217481/1000000000000 : ℚ), (322148251/1000000000 : ℚ), (-27082025379/200000000000 : ℚ), 2⟩,
    ⟨(191474405801/500000000000 : ℚ), (272437349/1250000000 : ℚ), (-9604781219/100000000000 : ℚ), 2⟩,
    ⟨(392916177901/1000000000000 : ℚ), (666501587/5000000000 : ℚ), (-7902880409/125000000000 : ℚ), 2⟩,
    ⟨(402739325189/1000000000000 : ℚ), (79813403/1250000000 : ℚ), (-35603950123/1000000000000 : ℚ), 2⟩,
    ⟨(41232365119/100000000000 : ℚ), (64047737/10000000000 : ℚ), (-6100044623/500000000000 : ℚ), 2⟩,
    ⟨(84315370721/200000000000 : ℚ), (-20709109/500000000 : ℚ), (7734558481/1000000000000 : ℚ), 2⟩,
    ⟨(86081963807/200000000000 : ℚ), (-101764549/1250000000 : ℚ), (24767820929/1000000000000 : ℚ), 2⟩,
    ⟨(109684370299/250000000000 : ℚ), (-574696289/5000000000 : ℚ), (7867095189/200000000000 : ℚ), 2⟩,
    ⟨(446479640149/1000000000000 : ℚ), (-1430459359/10000000000 : ℚ), (51773979077/1000000000000 : ℚ), 2⟩,
    ⟨(45356173467/100000000000 : ℚ), (-1665364951/10000000000 : ℚ), (31172026673/500000000000 : ℚ), 2⟩,
    ⟨(459915560317/1000000000000 : ℚ), (-1860325933/10000000000 : ℚ), (71247933269/1000000000000 : ℚ), 2⟩,
    ⟨(465479926277/1000000000000 : ℚ), (-252517691/1250000000 : ℚ), (39321058649/500000000000 : ℚ), 2⟩,
    ⟨(470201244663/1000000000000 : ℚ), (-2148497417/10000000000 : ℚ), (16929375387/200000000000 : ℚ), 2⟩,
    ⟨(474034046599/1000000000000 : ℚ), (-562047261/2500000000 : ℚ), (1116917129/12500000000 : ℚ), 2⟩,
    ⟨(238470710053/500000000000 : ℚ), (-580321237/2500000000 : ℚ), (92828939651/1000000000000 : ℚ), 2⟩,
    ⟨(119723841397/250000000000 : ℚ), (-2369244169/10000000000 : ℚ), (47560492047/500000000000 : ℚ), 2⟩,
    ⟨(239938532741/500000000000 : ℚ), (-2392997277/10000000000 : ℚ), (24064918371/250000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2395955917/10000000000 : ℚ), (96401670047/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (30341781557/100000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control230.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control230.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate230

namespace DiagonalRamsey.JointInheritedCertificate231
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(57974557349/200000000000 : ℚ), (2923653171939/2500000000 : ℚ), (-339846296802003/1000000000000 : ℚ), 11⟩,
    ⟨(36360499619/125000000000 : ℚ), (1273783895971/10000000000 : ℚ), (-18790469939441/500000000000 : ℚ), 8⟩,
    ⟨(14644833943/50000000000 : ℚ), (55550624239/1250000000 : ℚ), (-13399644130033/1000000000000 : ℚ), 7⟩,
    ⟨(147945724621/500000000000 : ℚ), (217845358441/10000000000 : ℚ), (-6737361380467/1000000000000 : ℚ), 6⟩,
    ⟨(14991973341/50000000000 : ℚ), (125696096699/10000000000 : ℚ), (-799115142951/200000000000 : ℚ), 5⟩,
    ⟨(304702710029/1000000000000 : ℚ), (79727643201/10000000000 : ℚ), (-521513770027/200000000000 : ℚ), 5⟩,
    ⟨(310434343177/1000000000000 : ℚ), (53741064597/10000000000 : ℚ), (-361825622099/200000000000 : ℚ), 4⟩,
    ⟨(19811197969/62500000000 : ℚ), (18876057651/5000000000 : ℚ), (-2092862997/1600000000 : ℚ), 4⟩,
    ⟨(162137076387/500000000000 : ℚ), (27292995299/10000000000 : ℚ), (-121625853781/125000000000 : ℚ), 3⟩,
    ⟨(332249044291/1000000000000 : ℚ), (20125661049/10000000000 : ℚ), (-368969503387/500000000000 : ℚ), 3⟩,
    ⟨(34082703949/100000000000 : ℚ), (3757754659/2500000000 : ℚ), (-566626907511/1000000000000 : ℚ), 3⟩,
    ⟨(87481381897/250000000000 : ℚ), (11300621233/10000000000 : ℚ), (-437886879371/1000000000000 : ℚ), 3⟩,
    ⟨(35945688517/100000000000 : ℚ), (2125263717/2500000000 : ℚ), (-338659000487/1000000000000 : ℚ), 3⟩,
    ⟨(73865864011/200000000000 : ℚ), (3177931651/5000000000 : ℚ), (-130270096909/500000000000 : ℚ), 3⟩,
    ⟨(75889551059/200000000000 : ℚ), (2341260179/5000000000 : ℚ), (-197928757029/1000000000000 : ℚ), 2⟩,
    ⟨(389714744829/1000000000000 : ℚ), (3356984207/10000000000 : ℚ), (-146977812299/1000000000000 : ℚ), 2⟩,
    ⟨(80006282387/200000000000 : ℚ), (2292869921/10000000000 : ℚ), (-104978322661/1000000000000 : ℚ), 2⟩,
    ⟨(410298401469/1000000000000 : ℚ), (1428746187/10000000000 : ℚ), (-13996267853/200000000000 : ℚ), 2⟩,
    ⟨(420416836709/1000000000000 : ℚ), (720134457/10000000000 : ℚ), (-10139757421/250000000000 : ℚ), 2⟩,
    ⟨(430289271593/1000000000000 : ℚ), (134327527/10000000000 : ℚ), (-3129823021/200000000000 : ℚ), 2⟩,
    ⟨(54977578647/125000000000 : ℚ), (-353048581/10000000000 : ℚ), (5548981489/1000000000000 : ℚ), 2⟩,
    ⟨(224459558637/500000000000 : ℚ), (-760365181/10000000000 : ℚ), (11822517491/500000000000 : ℚ), 2⟩,
    ⟨(457497112473/1000000000000 : ℚ), (-1101600709/10000000000 : ℚ), (39107400959/1000000000000 : ℚ), 2⟩,
    ⟨(46547200399/100000000000 : ℚ), (-1387471201/10000000000 : ℚ), (52298033343/1000000000000 : ℚ), 2⟩,
    ⟨(23638349463/50000000000 : ℚ), (-813117877/5000000000 : ℚ), (63497716829/1000000000000 : ℚ), 2⟩,
    ⟨(479311813587/1000000000000 : ℚ), (-364855509/2000000000 : ℚ), (9115563001/125000000000 : ℚ), 2⟩,
    ⟨(97008689347/200000000000 : ℚ), (-1986527151/10000000000 : ℚ), (80747344989/1000000000000 : ℚ), 2⟩,
    ⟨(61238336243/125000000000 : ℚ), (-2116773073/10000000000 : ℚ), (8709624539/100000000000 : ℚ), 2⟩,
    ⟨(246927353761/500000000000 : ℚ), (-2217890063/10000000000 : ℚ), (1841397279/20000000000 : ℚ), 2⟩,
    ⟨(31053092369/62500000000 : ℚ), (-229200617/1000000000 : ℚ), (11967645843/125000000000 : ℚ), 2⟩,
    ⟨(498862159811/1000000000000 : ℚ), (-2340622883/10000000000 : ℚ), (49080781163/500000000000 : ℚ), 2⟩,
    ⟨(499873370019/1000000000000 : ℚ), (-2364698063/10000000000 : ℚ), (3974551891/40000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2367696651/10000000000 : ℚ), (3980548307/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (294162359853/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control231.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control231.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate231

namespace DiagonalRamsey.JointInheritedCertificate232
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(303963157727/1000000000000 : ℚ), (596419177079/500000000 : ℚ), (-363473008128539/1000000000000 : ℚ), 11⟩,
    ⟨(61000561453/200000000000 : ℚ), (259922363403/2000000000 : ℚ), (-40194183709771/1000000000000 : ℚ), 8⟩,
    ⟨(153536046973/500000000000 : ℚ), (90719771441/2000000000 : ℚ), (-1433182929429/100000000000 : ℚ), 7⟩,
    ⟨(310151089411/1000000000000 : ℚ), (55614521891/2500000000 : ℚ), (-1801605341287/250000000000 : ℚ), 6⟩,
    ⟨(314210141247/1000000000000 : ℚ), (1027403741/80000000 : ℚ), (-66782431017/15625000000 : ℚ), 5⟩,
    ⟨(319210158569/1000000000000 : ℚ), (81505605931/10000000000 : ℚ), (-348704431603/125000000000 : ℚ), 5⟩,
    ⟨(13004119539/40000000000 : ℚ), (5497376951/1000000000 : ℚ), (-1935760145177/1000000000000 : ℚ), 4⟩,
    ⟨(331831879793/1000000000000 : ℚ), (38644618331/10000000000 : ℚ), (-349980154897/250000000000 : ℚ), 4⟩,
    ⟨(16966601481/50000000000 : ℚ), (27959957503/10000000000 : ℚ), (-104169306223/100000000000 : ℚ), 3⟩,
    ⟨(347531207413/1000000000000 : ℚ), (20636203849/10000000000 : ℚ), (-79039085383/100000000000 : ℚ), 3⟩,
    ⟨(356350450609/1000000000000 : ℚ), (7714640661/5000000000 : ℚ), (-607287131727/1000000000000 : ℚ), 3⟩,
    ⟨(14628193003/40000000000 : ℚ), (11616099109/10000000000 : ℚ), (-469724778077/1000000000000 : ℚ), 3⟩,
    ⟨(37550424307/100000000000 : ℚ), (4377095341/5000000000 : ℚ), (-181867505237/500000000000 : ℚ), 3⟩,
    ⟨(192827165421/500000000000 : ℚ), (3280627231/5000000000 : ℚ), (-56065896191/200000000000 : ℚ), 3⟩,
    ⟨(198028668749/500000000000 : ℚ), (2425425087/5000000000 : ℚ), (-21351582263/100000000000 : ℚ), 2⟩,
    ⟨(101653269099/250000000000 : ℚ), (437029167/1250000000 : ℚ), (-159178353021/1000000000000 : ℚ), 2⟩,
    ⟨(417219890001/1000000000000 : ℚ), (2409103327/10000000000 : ℚ), (-57209105723/500000000000 : ℚ), 2⟩,
    ⟨(4277756289/10000000000 : ℚ), (95415003/625000000 : ℚ), (-15429872169/200000000000 : ℚ), 2⟩,
    ⟨(109544658889/250000000000 : ℚ), (401669201/5000000000 : ℚ), (-45843019917/1000000000000 : ℚ), 2⟩,
    ⟨(3502568151/7812500000 : ℚ), (205719583/10000000000 : ℚ), (-4840326781/250000000000 : ℚ), 2⟩,
    ⟨(458128141323/1000000000000 : ℚ), (-36397343/1250000000 : ℚ), (3153807413/1000000000000 : ℚ), 2⟩,
    ⟨(116870628947/250000000000 : ℚ), (-353090993/5000000000 : ℚ), (11178152023/500000000000 : ℚ), 2⟩,
    ⟨(59537719873/125000000000 : ℚ), (-1053622527/10000000000 : ℚ), (19374450457/500000000000 : ℚ), 2⟩,
    ⟨(242250468389/500000000000 : ℚ), (-268898877/2000000000 : ℚ), (13180119053/250000000000 : ℚ), 2⟩,
    ⟨(98400217321/200000000000 : ℚ), (-1587276051/10000000000 : ℚ), (32286511427/500000000000 : ℚ), 2⟩,
    ⟨(249364988961/500000000000 : ℚ), (-1788524191/10000000000 : ℚ), (1490826759/20000000000 : ℚ), 2⟩,
    ⟨(504622807829/1000000000000 : ℚ), (-122081643/625000000 : ℚ), (82807569437/1000000000000 : ℚ), 2⟩,
    ⟨(10192456503/20000000000 : ℚ), (-2085518117/10000000000 : ℚ), (11189006911/125000000000 : ℚ), 2⟩,
    ⟨(513681876987/1000000000000 : ℚ), (-547029309/2500000000 : ℚ), (47380712619/500000000000 : ℚ), 2⟩,
    ⟨(516760872451/1000000000000 : ℚ), (-35363967/156250000 : ℚ), (98634630127/1000000000000 : ℚ), 2⟩,
    ⟨(518830159133/1000000000000 : ℚ), (-1156296971/5000000000 : ℚ), (4047493929/40000000000 : ℚ), 2⟩,
    ⟨(519869808671/1000000000000 : ℚ), (-2337003807/10000000000 : ℚ), (51227536219/500000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-2340043907/10000000000 : ℚ), (102613137869/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (71190365307/250000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control232.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control232.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate232

namespace DiagonalRamsey.JointInheritedCertificate233
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(325689455637/1000000000000 : ℚ), (3077696648353/2500000000 : ℚ), (-3139920038619/7812500000 : ℚ), 11⟩,
    ⟨(326768921303/1000000000000 : ℚ), (670932715373/5000000000 : ℚ), (-44445697413543/1000000000000 : ℚ), 8⟩,
    ⟨(328917456789/1000000000000 : ℚ), (468642662187/10000000000 : ℚ), (-15848556904999/1000000000000 : ℚ), 7⟩,
    ⟨(166057185263/500000000000 : ℚ), (57501998411/2500000000 : ℚ), (-79697296581/10000000000 : ℚ), 6⟩,
    ⟨(67265774897/200000000000 : ℚ), (1661180039/125000000 : ℚ), (-2363690936993/500000000000 : ℚ), 5⟩,
    ⟨(341520380691/1000000000000 : ℚ), (21104499637/2500000000 : ℚ), (-3086069228319/1000000000000 : ℚ), 5⟩,
    ⟨(347638892099/1000000000000 : ℚ), (56993960139/10000000000 : ℚ), (-1071010340303/500000000000 : ℚ), 4⟩,
    ⟨(354625484101/1000000000000 : ℚ), (2506750527/625000000 : ℚ), (-193707294293/125000000000 : ℚ), 4⟩,
    ⟨(362412871997/1000000000000 : ℚ), (29054089531/10000000000 : ℚ), (-144213592941/125000000000 : ℚ), 3⟩,
    ⟨(370926058983/1000000000000 : ℚ), (4294826879/2000000000 : ℚ), (-876009695497/1000000000000 : ℚ), 3⟩,
    ⟨(23755191151/62500000000 : ℚ), (16083208183/10000000000 : ℚ), (-673738160313/1000000000000 : ℚ), 3⟩,
    ⟨(77959136677/200000000000 : ℚ), (758391973/625000000 : ℚ), (-521839874339/1000000000000 : ℚ), 3⟩,
    ⟨(199985198001/500000000000 : ℚ), (9170055067/10000000000 : ℚ), (-404867398881/1000000000000 : ℚ), 3⟩,
    ⟨(410509208223/1000000000000 : ℚ), (6898699653/10000000000 : ℚ), (-156440066787/500000000000 : ℚ), 3⟩,
    ⟨(16852425021/40000000000 : ℚ), (5127365879/10000000000 : ℚ), (-119625013697/500000000000 : ℚ), 2⟩,
    ⟨(86454124871/200000000000 : ℚ), (3724891003/10000000000 : ℚ), (-17942393889/100000000000 : ℚ), 2⟩,
    ⟨(110820913483/250000000000 : ℚ), (2599842741/10000000000 : ℚ), (-130194016189/1000000000000 : ℚ), 2⟩,
    ⟨(227121826381/500000000000 : ℚ), (421782651/2500000000 : ℚ), (-44625501273/500000000000 : ℚ), 2⟩,
    ⟨(29065316879/62500000000 : ℚ), (187914221/2000000000 : ℚ), (-2745083609/50000000000 : ℚ), 2⟩,
    ⟨(95116776457/200000000000 : ℚ), (806059/25000000 : ℚ), (-6471228947/250000000000 : ℚ), 2⟩,
    ⟨(242879297451/500000000000 : ℚ), (-760947/40000000 : ℚ), (-249797561/200000000000 : ℚ), 2⟩,
    ⟨(495471219871/1000000000000 : ℚ), (-617978579/10000000000 : ℚ), (19732268227/1000000000000 : ℚ), 2⟩,
    ⟨(63078527413/125000000000 : ℚ), (-487856987/5000000000 : ℚ), (37617742337/1000000000000 : ℚ), 2⟩,
    ⟨(51314140629/100000000000 : ℚ), (-1274892603/10000000000 : ℚ), (26420193043/500000000000 : ℚ), 2⟩,
    ⟨(260464397093/500000000000 : ℚ), (-304870587/2000000000 : ℚ), (65736965473/1000000000000 : ℚ), 2⟩,
    ⟨(131978846547/250000000000 : ℚ), (-8654683/50000000 : ℚ), (76569779573/1000000000000 : ℚ), 2⟩,
    ⟨(133508474399/250000000000 : ℚ), (-1899936239/10000000000 : ℚ), (42771347499/500000000000 : ℚ), 2⟩,
    ⟨(539225403801/1000000000000 : ℚ), (-1017712129/5000000000 : ℚ), (18562616811/200000000000 : ℚ), 2⟩,
    ⟨(543439907761/1000000000000 : ℚ), (-2140494731/10000000000 : ℚ), (3940029713/40000000000 : ℚ), 2⟩,
    ⟨(546636821497/1000000000000 : ℚ), (-277180067/1250000000 : ℚ), (25673630731/250000000000 : ℚ), 2⟩,
    ⟨(68598169623/125000000000 : ℚ), (-1133940431/5000000000 : ℚ), (105457177583/1000000000000 : ℚ), 2⟩,
    ⟨(549864822649/1000000000000 : ℚ), (-2292849313/10000000000 : ℚ), (26707188761/250000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-2295958699/10000000000 : ℚ), (21399950051/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (33787010061/125000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control233.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control233.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate233

namespace DiagonalRamsey.JointInheritedCertificate234
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(54586265073/100000000000 : ℚ), (36549820490901/5000000000 : ℚ), (-3992278900480809/1000000000000 : ℚ), 13⟩,
    ⟨(546168724191/1000000000000 : ℚ), (808657587417/1000000000 : ℚ), (-221546177389057/500000000000 : ℚ), 10⟩,
    ⟨(136695033439/250000000000 : ℚ), (1444931848639/5000000000 : ℚ), (-79578798826083/500000000000 : ℚ), 9⟩,
    ⟨(273847703243/500000000000 : ℚ), (1460116651803/10000000000 : ℚ), (-5058180638447/62500000000 : ℚ), 8⟩,
    ⟨(548912337407/1000000000000 : ℚ), (872892114887/10000000000 : ℚ), (-48739072073467/1000000000000 : ℚ), 7⟩,
    ⟨(137606998707/250000000000 : ℚ), (115276784441/2000000000 : ℚ), (-16221943340433/500000000000 : ℚ), 6⟩,
    ⟨(552238727397/1000000000000 : ℚ), (3174745771/78125000 : ℚ), (-4614403175333/200000000000 : ℚ), 6⟩,
    ⟨(554340172899/1000000000000 : ℚ), (9377506721/312500000 : ℚ), (-3438462795311/200000000000 : ℚ), 6⟩,
    ⟨(55672726877/100000000000 : ℚ), (57334787349/2500000000 : ℚ), (-6631554665167/500000000000 : ℚ), 5⟩,
    ⟨(111878852857/200000000000 : ℚ), (179967010207/10000000000 : ℚ), (-10508328678549/1000000000000 : ℚ), 5⟩,
    ⟨(28116736721/50000000000 : ℚ), (144202012663/10000000000 : ℚ), (-4251372451561/500000000000 : ℚ), 5⟩,
    ⟨(141385398831/250000000000 : ℚ), (3672068227/312500000 : ℚ), (-699752230473/100000000000 : ℚ), 4⟩,
    ⟨(142251780347/250000000000 : ℚ), (97083263193/10000000000 : ℚ), (-145979422563/25000000000 : ℚ), 4⟩,
    ⟨(35795185241/62500000000 : ℚ), (81134511897/10000000000 : ℚ), (-4928868447647/1000000000000 : ℚ), 4⟩,
    ⟨(576680170939/1000000000000 : ℚ), (34230302677/5000000000 : ℚ), (-1050153661417/250000000000 : ℚ), 4⟩,
    ⟨(580869209377/1000000000000 : ℚ), (58237218891/10000000000 : ℚ), (-180450218789/50000000000 : ℚ), 4⟩,
    ⟨(585279987411/1000000000000 : ℚ), (1995312469/400000000 : ℚ), (-1560977638471/500000000000 : ℚ), 4⟩,
    ⟨(58990187909/100000000000 : ℚ), (42977739643/10000000000 : ℚ), (-339535069671/125000000000 : ℚ), 3⟩,
    ⟨(37170234367/62500000000 : ℚ), (372131297/100000000 : ℚ), (-2374885352561/1000000000000 : ℚ), 3⟩,
    ⟨(599733983447/1000000000000 : ℚ), (808940819/250000000 : ℚ), (-41698847257/20000000000 : ℚ), 3⟩,
    ⟨(24196820389/40000000000 : ℚ), (7058813167/2500000000 : ℚ), (-183667450111/100000000000 : ℚ), 3⟩,
    ⟨(610270833909/1000000000000 : ℚ), (12355114251/5000000000 : ℚ), (-12980193943/8000000000 : ℚ), 3⟩,
    ⟨(3078860333/5000000000 : ℚ), (2709564819/1250000000 : ℚ), (-1436575405739/1000000000000 : ℚ), 3⟩,
    ⟨(310705477423/500000000000 : ℚ), (4762588219/2500000000 : ℚ), (-637071672169/500000000000 : ℚ), 3⟩,
    ⟨(78396739259/125000000000 : ℚ), (67059491/40000000 : ℚ), (-565739874239/500000000000 : ℚ), 3⟩,
    ⟨(633047060803/1000000000000 : ℚ), (1476621487/1000000000 : ℚ), (-1005556824543/1000000000000 : ℚ), 3⟩,
    ⟨(159754061529/250000000000 : ℚ), (13010612143/10000000000 : ℚ), (-893907369413/1000000000000 : ℚ), 3⟩,
    ⟨(645067089719/1000000000000 : ℚ), (11462220477/10000000000 : ℚ), (-794504784091/1000000000000 : ℚ), 3⟩,
    ⟨(651185014601/1000000000000 : ℚ), (2522867791/2500000000 : ℚ), (-14113440429/20000000000 : ℚ), 2⟩,
    ⟨(131471056429/200000000000 : ℚ), (4436904289/5000000000 : ℚ), (-313005879691/500000000000 : ℚ), 2⟩,
    ⟨(165890756909/250000000000 : ℚ), (7788713643/10000000000 : ℚ), (-110870465289/200000000000 : ℚ), 2⟩,
    ⟨(66979329607/100000000000 : ℚ), (6818941553/10000000000 : ℚ), (-48970544689/100000000000 : ℚ), 2⟩,
    ⟨(338015539093/500000000000 : ℚ), (1189984343/2000000000 : ℚ), (-107808234941/250000000000 : ℚ), 2⟩,
    ⟨(682261346621/1000000000000 : ℚ), (5169281717/10000000000 : ℚ), (-94555067831/250000000000 : ℚ), 2⟩,
    ⟨(688469092111/1000000000000 : ℚ), (893293379/2000000000 : ℚ), (-66011078257/200000000000 : ℚ), 2⟩,
    ⟨(138927871931/200000000000 : ℚ), (3832434247/10000000000 : ℚ), (-57242336837/200000000000 : ℚ), 2⟩,
    ⟨(700757284537/1000000000000 : ℚ), (101856393/312500000 : ℚ), (-246234144887/1000000000000 : ℚ), 2⟩,
    ⟨(706808128141/1000000000000 : ℚ), (2740660587/10000000000 : ℚ), (-20972810147/100000000000 : ℚ), 2⟩,
    ⟨(712777313453/1000000000000 : ℚ), (2270381501/10000000000 : ℚ), (-88174982341/500000000000 : ℚ), 2⟩,
    ⟨(143730092037/200000000000 : ℚ), (921753429/5000000000 : ℚ), (-4556237433/31250000000 : ℚ), 2⟩,
    ⟨(72441341941/100000000000 : ℚ), (90976489/625000000 : ℚ), (-58906997381/500000000000 : ℚ), 2⟩,
    ⟨(91256538457/125000000000 : ℚ), (34464797/312500000 : ℚ), (-92162015111/1000000000000 : ℚ), 2⟩,
    ⟨(735553540347/1000000000000 : ℚ), (390936363/5000000000 : ℚ), (-68639982393/1000000000000 : ℚ), 2⟩,
    ⟨(740903864531/1000000000000 : ℚ), (244824243/5000000000 : ℚ), (-47067989033/1000000000000 : ℚ), 2⟩,
    ⟨(746090390809/1000000000000 : ℚ), (27947849/1250000000 : ℚ), (-682169559/25000000000 : ℚ), 2⟩,
    ⟨(150220124877/200000000000 : ℚ), (-9316941/5000000000 : ℚ), (-9155134149/1000000000000 : ℚ), 2⟩,
    ⟨(377961247583/500000000000 : ℚ), (-23904203/1000000000 : ℚ), (3726196473/500000000000 : ℚ), 2⟩,
    ⟨(152108877369/200000000000 : ℚ), (-439446577/10000000000 : ℚ), (22647340901/1000000000000 : ℚ), 2⟩,
    ⟨(764955164879/1000000000000 : ℚ), (-310722693/5000000000 : ℚ), (18264487453/500000000000 : ℚ), 2⟩,
    ⟨(384572101659/500000000000 : ℚ), (-786453569/10000000000 : ℚ), (49185664013/1000000000000 : ℚ), 2⟩,
    ⟨(773101410401/1000000000000 : ℚ), (-93572427/1000000000 : ℚ), (6069606271/100000000000 : ℚ), 2⟩,
    ⟨(776817252869/1000000000000 : ℚ), (-1070366459/10000000000 : ℚ), (177825309/2500000000 : ℚ), 2⟩,
    ⟨(780282778933/1000000000000 : ℚ), (-1191360177/10000000000 : ℚ), (40274982639/500000000000 : ℚ), 2⟩,
    ⟨(195872409959/250000000000 : ℚ), (-1299569609/10000000000 : ℚ), (44505308663/500000000000 : ℚ), 2⟩,
    ⟨(786430109971/1000000000000 : ℚ), (-87234643/625000000 : ℚ), (48280329509/500000000000 : ℚ), 2⟩,
    ⟨(789097105487/1000000000000 : ℚ), (-740289343/5000000000 : ℚ), (51621383147/500000000000 : ℚ), 2⟩,
    ⟨(791484201357/1000000000000 : ℚ), (-1554620409/10000000000 : ℚ), (27273544927/250000000000 : ℚ), 2⟩,
    ⟨(39679282343/50000000000 : ℚ), (-809188583/5000000000 : ℚ), (114147102411/1000000000000 : ℚ), 2⟩,
    ⟨(198849094857/250000000000 : ℚ), (-1672272657/10000000000 : ℚ), (7401814773/62500000000 : ℚ), 2⟩,
    ⟨(796912036849/1000000000000 : ℚ), (-1716661511/10000000000 : ℚ), (24392613083/200000000000 : ℚ), 2⟩,
    ⟨(798128967771/1000000000000 : ℚ), (-1751833351/10000000000 : ℚ), (62384043763/500000000000 : ℚ), 2⟩,
    ⟨(1598088481/2000000000 : ℚ), (-1778016083/10000000000 : ℚ), (12685900373/100000000000 : ℚ), 2⟩,
    ⟨(159931130013/200000000000 : ℚ), (-1795378449/10000000000 : ℚ), (64123431891/500000000000 : ℚ), 2⟩,
    ⟨(799961723527/1000000000000 : ℚ), (-1804031919/10000000000 : ℚ), (6446948789/50000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-1805112307/10000000000 : ℚ), (64512702391/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (128599292751/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control234.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control234.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate234

namespace DiagonalRamsey.JointInheritedCertificate235
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6974319473/31250000000 : ℚ), (2674147457021/2500000000 : ℚ), (-239375141414069/1000000000000 : ℚ), 11⟩,
    ⟨(224029155211/1000000000000 : ℚ), (1163534911183/10000000000 : ℚ), (-6617217520911/250000000000 : ℚ), 8⟩,
    ⟨(225722824421/1000000000000 : ℚ), (405171468833/10000000000 : ℚ), (-1887248391521/200000000000 : ℚ), 7⟩,
    ⟨(57060729951/250000000000 : ℚ), (198169270467/10000000000 : ℚ), (-1185853872489/250000000000 : ℚ), 6⟩,
    ⟨(115782585733/500000000000 : ℚ), (114059541483/10000000000 : ℚ), (-35150285619/12500000000 : ℚ), 5⟩,
    ⟨(117828792153/500000000000 : ℚ), (36075810893/5000000000 : ℚ), (-1834148379787/1000000000000 : ℚ), 5⟩,
    ⟨(240480746151/1000000000000 : ℚ), (48491422833/10000000000 : ℚ), (-635752523983/500000000000 : ℚ), 4⟩,
    ⟨(61497051829/250000000000 : ℚ), (16976638371/5000000000 : ℚ), (-28695847997/31250000000 : ℚ), 4⟩,
    ⟨(12606346397/50000000000 : ℚ), (4891069917/2000000000 : ℚ), (-681955162461/1000000000000 : ℚ), 3⟩,
    ⟨(129418894393/500000000000 : ℚ), (8977030359/5000000000 : ℚ), (-258009009059/500000000000 : ℚ), 3⟩,
    ⟨(133028080299/500000000000 : ℚ), (13337009229/10000000000 : ℚ), (-96424169/244140625 : ℚ), 3⟩,
    ⟨(68428131627/250000000000 : ℚ), (9958300113/10000000000 : ℚ), (-30384290663/100000000000 : ℚ), 3⟩,
    ⟨(140866575763/500000000000 : ℚ), (7423194809/10000000000 : ℚ), (-58372698481/250000000000 : ℚ), 3⟩,
    ⟨(290040792651/1000000000000 : ℚ), (5480214843/10000000000 : ℚ), (-177981952323/1000000000000 : ℚ), 3⟩,
    ⟨(59711088551/200000000000 : ℚ), (792712377/2000000000 : ℚ), (-133374959889/1000000000000 : ℚ), 3⟩,
    ⟨(61439020221/200000000000 : ℚ), (690186341/2500000000 : ℚ), (-6060305037/62500000000 : ℚ), 2⟩,
    ⟨(157938281533/500000000000 : ℚ), (1793567727/10000000000 : ℚ), (-66848630057/1000000000000 : ℚ), 2⟩,
    ⟨(40564527677/125000000000 : ℚ), (503265951/5000000000 : ℚ), (-20829420383/500000000000 : ℚ), 2⟩,
    ⟨(2081442947/6250000000 : ℚ), (71908781/2000000000 : ℚ), (-4079094151/200000000000 : ℚ), 2⟩,
    ⟨(68267702529/200000000000 : ℚ), (-88405013/5000000000 : ℚ), (-2316155203/1000000000000 : ℚ), 2⟩,
    ⟨(349359137663/1000000000000 : ℚ), (-624394987/10000000000 : ℚ), (3284256581/250000000000 : ℚ), 2⟩,
    ⟨(357015503573/1000000000000 : ℚ), (-999648419/10000000000 : ℚ), (26387579421/1000000000000 : ℚ), 2⟩,
    ⟨(72846775077/200000000000 : ℚ), (-1315043809/10000000000 : ℚ), (37759473467/1000000000000 : ℚ), 2⟩,
    ⟨(46368092029/125000000000 : ℚ), (-1580117549/10000000000 : ℚ), (11875476149/250000000000 : ℚ), 2⟩,
    ⟨(75416691371/200000000000 : ℚ), (-1802199767/10000000000 : ℚ), (55807166317/1000000000000 : ℚ), 2⟩,
    ⟨(382590918021/1000000000000 : ℚ), (-99347043/500000000 : ℚ), (31411864767/500000000000 : ℚ), 2⟩,
    ⟨(193707039933/500000000000 : ℚ), (-213869459/1000000000 : ℚ), (68665929707/1000000000000 : ℚ), 2⟩,
    ⟨(78301298541/200000000000 : ℚ), (-1130399337/5000000000 : ℚ), (36710599941/500000000000 : ℚ), 2⟩,
    ⟨(394828744367/1000000000000 : ℚ), (-2355780731/10000000000 : ℚ), (77155487853/1000000000000 : ℚ), 2⟩,
    ⟨(1589395359/4000000000 : ℚ), (-2425508683/10000000000 : ℚ), (9989661633/125000000000 : ℚ), 2⟩,
    ⟨(2494015681/6250000000 : ℚ), (-247129871/1000000000 : ℚ), (10217577529/125000000000 : ℚ), 2⟩,
    ⟨(79978688207/200000000000 : ℚ), (-1246994821/5000000000 : ℚ), (8264704881/100000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-2496816551/10000000000 : ℚ), (82760110129/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (84687857639/250000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control235.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control235.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate235

namespace DiagonalRamsey.JointInheritedCertificate236
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(236049406237/1000000000000 : ℚ), (10875675578381/10000000000 : ℚ), (-257408723824931/1000000000000 : ℚ), 11⟩,
    ⟨(59233661207/250000000000 : ℚ), (29582891241/250000000 : ℚ), (-28463283601481/1000000000000 : ℚ), 8⟩,
    ⟨(238696596677/1000000000000 : ℚ), (206104522971/5000000000 : ℚ), (-10147529814211/1000000000000 : ℚ), 7⟩,
    ⟨(120659146613/500000000000 : ℚ), (201697515319/10000000000 : ℚ), (-2550599409511/500000000000 : ℚ), 6⟩,
    ⟨(244774486103/1000000000000 : ℚ), (116145296669/10000000000 : ℚ), (-1512170872193/500000000000 : ℚ), 5⟩,
    ⟨(124515945141/500000000000 : ℚ), (73508919551/10000000000 : ℚ), (-1972844566021/1000000000000 : ℚ), 5⟩,
    ⟨(127024752317/500000000000 : ℚ), (24715733929/5000000000 : ℚ), (-1367868602329/1000000000000 : ℚ), 4⟩,
    ⟨(64944751697/250000000000 : ℚ), (541143783/156250000 : ℚ), (-494041099343/500000000000 : ℚ), 4⟩,
    ⟨(66541304627/250000000000 : ℚ), (4992604753/2000000000 : ℚ), (-2867338747/3906250000 : ℚ), 3⟩,
    ⟨(136573318541/500000000000 : ℚ), (91712259/50000000 : ℚ), (-27783989071/50000000000 : ℚ), 3⟩,
    ⟨(56131205527/200000000000 : ℚ), (13639935127/10000000000 : ℚ), (-21279069571/50000000000 : ℚ), 3⟩,
    ⟨(28862107063/100000000000 : ℚ), (5099175001/5000000000 : ℚ), (-81925172027/250000000000 : ℚ), 3⟩,
    ⟨(296965058349/1000000000000 : ℚ), (1904003563/2500000000 : ℚ), (-50429688141/200000000000 : ℚ), 3⟩,
    ⟨(76401908407/250000000000 : ℚ), (2818482211/5000000000 : ℚ), (-9628155143/50000000000 : ℚ), 3⟩,
    ⟨(9827048867/31250000000 : ℚ), (4092398247/10000000000 : ℚ), (-144705394617/1000000000000 : ℚ), 3⟩,
    ⟨(323453541987/1000000000000 : ℚ), (358468841/1250000000 : ℚ), (-26416394331/250000000000 : ℚ), 2⟩,
    ⟨(332485009213/1000000000000 : ℚ), (376670811/2000000000 : ℚ), (-1146813883/15625000000 : ℚ), 2⟩,
    ⟨(68294597491/200000000000 : ℚ), (216529137/2000000000 : ℚ), (-46425371093/1000000000000 : ℚ), 2⟩,
    ⟨(350330917571/1000000000000 : ℚ), (212372323/5000000000 : ℚ), (-23676811341/1000000000000 : ℚ), 2⟩,
    ⟨(7179469857/20000000000 : ℚ), (-15044209/1250000000 : ℚ), (-870169489/200000000000 : ℚ), 2⟩,
    ⟨(367317480569/1000000000000 : ℚ), (-574964147/10000000000 : ℚ), (759610121/62500000000 : ℚ), 2⟩,
    ⟨(93820630891/250000000000 : ℚ), (-4779353/50000000 : ℚ), (5258743359/200000000000 : ℚ), 2⟩,
    ⟨(382791914117/1000000000000 : ℚ), (-1275815761/10000000000 : ℚ), (38418661193/1000000000000 : ℚ), 2⟩,
    ⟨(97443333173/250000000000 : ℚ), (-1544546783/10000000000 : ℚ), (24398895867/500000000000 : ℚ), 2⟩,
    ⟨(396159544411/1000000000000 : ℚ), (-353911901/2000000000 : ℚ), (28819526647/500000000000 : ℚ), 2⟩,
    ⟨(200944523283/500000000000 : ℚ), (-97831741/500000000 : ℚ), (8137898259/125000000000 : ℚ), 2⟩,
    ⟨(406906660917/1000000000000 : ℚ), (-2110229029/10000000000 : ℚ), (7131412469/100000000000 : ℚ), 2⟩,
    ⟨(51395508137/125000000000 : ℚ), (-2233759841/10000000000 : ℚ), (2386461267/31250000000 : ℚ), 2⟩,
    ⟨(414620257973/1000000000000 : ℚ), (-2329816371/10000000000 : ℚ), (4016637717/50000000000 : ℚ), 2⟩,
    ⟨(208620977261/500000000000 : ℚ), (-600078139/2500000000 : ℚ), (41632433339/500000000000 : ℚ), 2⟩,
    ⟨(104750976593/250000000000 : ℚ), (-244659731/1000000000 : ℚ), (42600062859/500000000000 : ℚ), 2⟩,
    ⟨(209944572481/500000000000 : ℚ), (-1234765237/5000000000 : ℚ), (10770255969/125000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2472387423/10000000000 : ℚ), (10785252971/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (487499/1000000 : ℚ)
  x := (41267338487/125000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control236.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control236.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate236

namespace DiagonalRamsey.JointInheritedCertificate254
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(244254475353/1000000000000 : ℚ), (543701361663/500000000 : ℚ), (-16643727127721/62500000000 : ℚ), 11⟩,
    ⟨(122574175909/500000000000 : ℚ), (1183548652347/10000000000 : ℚ), (-3680748167383/125000000000 : ℚ), 8⟩,
    ⟨(61731874057/250000000000 : ℚ), (412489068331/10000000000 : ℚ), (-82012314657/7812500000 : ℚ), 7⟩,
    ⟨(249574774451/1000000000000 : ℚ), (40388893369/2000000000 : ℚ), (-131923612341/25000000000 : ℚ), 6⟩,
    ⟨(1012258767/4000000000 : ℚ), (5817683211/500000000 : ℚ), (-391045220219/125000000000 : ℚ), 5⟩,
    ⟨(257363638313/1000000000000 : ℚ), (18420695957/2500000000 : ℚ), (-2040561221297/1000000000000 : ℚ), 5⟩,
    ⟨(52486042587/200000000000 : ℚ), (2478800731/500000000 : ℚ), (-1414710569237/1000000000000 : ℚ), 4⟩,
    ⟨(134107810867/500000000000 : ℚ), (17376594307/5000000000 : ℚ), (-1021833443657/1000000000000 : ℚ), 4⟩,
    ⟨(274664148059/1000000000000 : ℚ), (3132817021/1250000000 : ℚ), (-759048529003/1000000000000 : ℚ), 4⟩,
    ⟨(70428422269/250000000000 : ℚ), (9212469843/5000000000 : ℚ), (-143642143093/250000000000 : ℚ), 3⟩,
    ⟨(289296353853/1000000000000 : ℚ), (685414917/500000000 : ℚ), (-220011182141/500000000000 : ℚ), 3⟩,
    ⟨(297339117183/1000000000000 : ℚ), (1281878047/1250000000 : ℚ), (-338812762563/1000000000000 : ℚ), 3⟩,
    ⟨(305764522857/1000000000000 : ℚ), (1915761297/2500000000 : ℚ), (-52141724683/200000000000 : ℚ), 3⟩,
    ⟨(314491429613/1000000000000 : ℚ), (5676068017/10000000000 : ℚ), (-24891020319/125000000000 : ℚ), 3⟩,
    ⟨(323435792569/1000000000000 : ℚ), (206250599/500000000 : ℚ), (-149685010271/1000000000000 : ℚ), 3⟩,
    ⟨(332511472621/1000000000000 : ℚ), (1447537903/5000000000 : ℚ), (-21873625667/200000000000 : ℚ), 2⟩,
    ⟨(341631066007/1000000000000 : ℚ), (953195557/5000000000 : ℚ), (-76058327861/1000000000000 : ℚ), 2⟩,
    ⟨(175353373029/500000000000 : ℚ), (8817801/80000000 : ℚ), (-12058060313/250000000000 : ℚ), 2⟩,
    ⟨(179825554507/500000000000 : ℚ), (110388141/2500000000 : ℚ), (-24775033667/1000000000000 : ℚ), 2⟩,
    ⟨(36837801577/100000000000 : ℚ), (-10575323/1000000000 : ℚ), (-4858465393/1000000000000 : ℚ), 2⟩,
    ⟨(75360684289/200000000000 : ℚ), (-281055017/5000000000 : ℚ), (189695843/15625000000 : ℚ), 2⟩,
    ⟨(192423092387/500000000000 : ℚ), (-944388069/10000000000 : ℚ), (2669547989/100000000000 : ℚ), 2⟩,
    ⟨(392428849551/1000000000000 : ℚ), (-1977191/15625000 : ℚ), (9792273287/250000000000 : ℚ), 2⟩,
    ⟨(399478390569/1000000000000 : ℚ), (-1534959609/10000000000 : ℚ), (24920404789/500000000000 : ℚ), 2⟩,
    ⟨(202963458447/500000000000 : ℚ), (-176060537/1000000000 : ℚ), (14731656389/250000000000 : ℚ), 2⟩,
    ⟨(102928081423/250000000000 : ℚ), (-48704017/250000000 : ℚ), (33296808979/500000000000 : ℚ), 2⟩,
    ⟨(208389450157/500000000000 : ℚ), (-1051057151/5000000000 : ℚ), (14594139/200000000 : ℚ), 2⟩,
    ⟨(210538923439/500000000000 : ℚ), (-222590971/1000000000 : ℚ), (78156621391/1000000000000 : ℚ), 2⟩,
    ⟨(26535485261/62500000000 : ℚ), (-2322156027/10000000000 : ℚ), (3289041139/40000000000 : ℚ), 2⟩,
    ⟨(427215042399/1000000000000 : ℚ), (-598195559/2500000000 : ℚ), (8523389401/100000000000 : ℚ), 2⟩,
    ⟨(428994186809/1000000000000 : ℚ), (-609786993/2500000000 : ℚ), (2725588117/31250000000 : ℚ), 2⟩,
    ⟨(214944031637/500000000000 : ℚ), (-2462119949/10000000000 : ℚ), (17641065867/200000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-2464981671/10000000000 : ℚ), (44164183663/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (83988138333/250000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control254.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control254.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate254

namespace DiagonalRamsey.JointInheritedCertificate255
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(250846644031/1000000000000 : ℚ), (5483312010783/5000000000 : ℚ), (-34476253867771/125000000000 : ℚ), 11⟩,
    ⟨(125878460123/500000000000 : ℚ), (596888518401/5000000000 : ℚ), (-30497766823197/1000000000000 : ℚ), 8⟩,
    ⟨(126784353109/500000000000 : ℚ), (26008036747/625000000 : ℚ), (-10872673393359/1000000000000 : ℚ), 7⟩,
    ⟨(256264553459/1000000000000 : ℚ), (5094236123/250000000 : ℚ), (-2732807144983/500000000000 : ℚ), 6⟩,
    ⟨(64954624871/250000000000 : ℚ), (117432745771/10000000000 : ℚ), (-3240319293471/1000000000000 : ℚ), 5⟩,
    ⟨(66049079463/250000000000 : ℚ), (929814343/125000000 : ℚ), (-2113694285101/1000000000000 : ℚ), 5⟩,
    ⟨(269355847779/1000000000000 : ℚ), (25031279947/5000000000 : ℚ), (-732760575361/500000000000 : ℚ), 4⟩,
    ⟨(27524740017/100000000000 : ℚ), (877628879/250000000 : ℚ), (-1058646133581/1000000000000 : ℚ), 4⟩,
    ⟨(56362847231/200000000000 : ℚ), (6331338223/2500000000 : ℚ), (-786513636467/1000000000000 : ℚ), 4⟩,
    ⟨(57798622703/200000000000 : ℚ), (9312996317/5000000000 : ℚ), (-119097352937/200000000000 : ℚ), 3⟩,
    ⟨(37089361967/125000000000 : ℚ), (6932537037/5000000000 : ℚ), (-456180853223/1000000000000 : ℚ), 3⟩,
    ⟨(304905217833/1000000000000 : ℚ), (2075841087/2000000000 : ℚ), (-87851431331/250000000000 : ℚ), 3⟩,
    ⟨(9796412579/31250000000 : ℚ), (7762725371/10000000000 : ℚ), (-270564488829/1000000000000 : ℚ), 3⟩,
    ⟨(161186109939/500000000000 : ℚ), (179906977/312500000 : ℚ), (-51709970203/250000000000 : ℚ), 3⟩,
    ⟨(41435085381/125000000000 : ℚ), (1047866453/2500000000 : ℚ), (-77844201131/500000000000 : ℚ), 3⟩,
    ⟨(340722872557/1000000000000 : ℚ), (23601437/80000000 : ℚ), (-3562217263/31250000000 : ℚ), 2⟩,
    ⟨(35000978107/100000000000 : ℚ), (488134079/2500000000 : ℚ), (-15910417063/200000000000 : ℚ), 2⟩,
    ⟨(17962598529/50000000000 : ℚ), (142656521/1250000000 : ℚ), (-50793416607/1000000000000 : ℚ), 2⟩,
    ⟨(368360433749/1000000000000 : ℚ), (23744739/500000000 : ℚ), (-26559654487/1000000000000 : ℚ), 2⟩,
    ⟨(377247451099/1000000000000 : ℚ), (-4810523/625000000 : ℚ), (-5992315417/1000000000000 : ℚ), 2⟩,
    ⟨(77165487159/200000000000 : ℚ), (-268494039/5000000000 : ℚ), (2310919957/200000000000 : ℚ), 2⟩,
    ⟨(98504439473/250000000000 : ℚ), (-4611071/50000000 : ℚ), (26572196159/1000000000000 : ℚ), 2⟩,
    ⟨(25108721257/62500000000 : ℚ), (-622800711/5000000000 : ℚ), (39436817867/1000000000000 : ℚ), 2⟩,
    ⟨(6389350273/15625000000 : ℚ), (-303413273/2000000000 : ℚ), (50438530061/1000000000000 : ℚ), 2⟩,
    ⟨(207742626729/500000000000 : ℚ), (-1744240473/10000000000 : ℚ), (59801660907/1000000000000 : ℚ), 2⟩,
    ⟨(421376805849/1000000000000 : ℚ), (-966506459/5000000000 : ℚ), (67699830721/1000000000000 : ℚ), 2⟩,
    ⟨(17061453431/40000000000 : ℚ), (-208792597/1000000000 : ℚ), (4641692251/62500000000 : ℚ), 2⟩,
    ⟨(430914154143/1000000000000 : ℚ), (-22124649/100000000 : ℚ), (79606153667/1000000000000 : ℚ), 2⟩,
    ⟨(434468100169/1000000000000 : ℚ), (-1154635497/5000000000 : ℚ), (83794757703/1000000000000 : ℚ), 2⟩,
    ⟨(437163947409/1000000000000 : ℚ), (-1190148661/5000000000 : ℚ), (21722538403/250000000000 : ℚ), 2⟩,
    ⟨(438975733381/1000000000000 : ℚ), (-242692067/1000000000 : ℚ), (22233142173/250000000000 : ℚ), 2⟩,
    ⟨(109971502399/250000000000 : ℚ), (-1225009381/5000000000 : ℚ), (17989513707/200000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-613224031/2500000000 : ℚ), (5629634753/62500000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (165745357923/500000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control255.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control255.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate255

namespace DiagonalRamsey.JointInheritedCertificate256
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(51505795359/200000000000 : ℚ), (11065028374597/10000000000 : ℚ), (-285692129440309/1000000000000 : ℚ), 11⟩,
    ⟨(258455218857/1000000000000 : ℚ), (1204648210237/10000000000 : ℚ), (-31590726865781/1000000000000 : ℚ), 8⟩,
    ⟨(65074695691/250000000000 : ℚ), (419997734277/10000000000 : ℚ), (-11262507787587/1000000000000 : ℚ), 7⟩,
    ⟨(263041913987/1000000000000 : ℚ), (102855122707/5000000000 : ℚ), (-56617372713/10000000000 : ℚ), 6⟩,
    ⟨(133329097337/500000000000 : ℚ), (118580845363/10000000000 : ℚ), (-3356733285111/1000000000000 : ℚ), 5⟩,
    ⟨(16944549879/62500000000 : ℚ), (75132866863/10000000000 : ℚ), (-1094883891759/500000000000 : ℚ), 5⟩,
    ⟨(276362823891/1000000000000 : ℚ), (50580882073/10000000000 : ℚ), (-189800148021/125000000000 : ℚ), 4⟩,
    ⟨(282357711537/1000000000000 : ℚ), (35480409159/10000000000 : ℚ), (-1096982801449/1000000000000 : ℚ), 4⟩,
    ⟨(144519863479/500000000000 : ℚ), (6401453183/2500000000 : ℚ), (-163027836321/200000000000 : ℚ), 4⟩,
    ⟨(29634451869/100000000000 : ℚ), (18840759197/10000000000 : ℚ), (-308655754399/500000000000 : ℚ), 3⟩,
    ⟨(152100868799/500000000000 : ℚ), (14032729007/10000000000 : ℚ), (-473062053361/1000000000000 : ℚ), 3⟩,
    ⟨(312535714367/1000000000000 : ℚ), (1051216333/1000000000 : ℚ), (-22786526247/62500000000 : ℚ), 3⟩,
    ⟨(160633094123/500000000000 : ℚ), (7869587841/10000000000 : ℚ), (-280901661107/1000000000000 : ℚ), 3⟩,
    ⟨(165154539999/500000000000 : ℚ), (5843929411/10000000000 : ℚ), (-214951815553/1000000000000 : ℚ), 3⟩,
    ⟨(339577301633/1000000000000 : ℚ), (4262905559/10000000000 : ℚ), (-40507023351/250000000000 : ℚ), 3⟩,
    ⟨(348981595109/1000000000000 : ℚ), (3009504031/10000000000 : ℚ), (-118899083563/1000000000000 : ℚ), 2⟩,
    ⟨(17921569597/50000000000 : ℚ), (2002289177/10000000000 : ℚ), (-41645037719/500000000000 : ℚ), 2⟩,
    ⟨(367835685417/1000000000000 : ℚ), (236678423/2000000000 : ℚ), (-53565487737/1000000000000 : ℚ), 2⟩,
    ⟨(94275976763/250000000000 : ℚ), (510948033/10000000000 : ℚ), (-28527957717/1000000000000 : ℚ), 2⟩,
    ⟨(96536699701/250000000000 : ℚ), (-1145011/250000000 : ℚ), (-1457508323/200000000000 : ℚ), 2⟩,
    ⟨(197438636341/500000000000 : ℚ), (-509751613/10000000000 : ℚ), (433024829/40000000000 : ℚ), 2⟩,
    ⟨(100802812363/250000000000 : ℚ), (-224536537/2500000000 : ℚ), (13160474221/500000000000 : ℚ), 2⟩,
    ⟨(411068468359/1000000000000 : ℚ), (-612043623/5000000000 : ℚ), (154644451/3906250000 : ℚ), 2⟩,
    ⟨(104593315023/250000000000 : ℚ), (-1497607951/10000000000 : ℚ), (10186172159/200000000000 : ℚ), 2⟩,
    ⟨(53131909439/125000000000 : ℚ), (-431607849/2500000000 : ℚ), (60579614921/1000000000000 : ℚ), 2⟩,
    ⟨(215525081579/500000000000 : ℚ), (-1916519079/10000000000 : ℚ), (2147365501/31250000000 : ℚ), 2⟩,
    ⟨(218150094493/500000000000 : ℚ), (-2072470203/10000000000 : ℚ), (18869625631/250000000000 : ℚ), 2⟩,
    ⟨(55094349047/125000000000 : ℚ), (-549453631/2500000000 : ℚ), (40487484277/500000000000 : ℚ), 2⟩,
    ⟨(222185536531/500000000000 : ℚ), (-459045517/2000000000 : ℚ), (42642998327/500000000000 : ℚ), 2⟩,
    ⟨(89422840857/200000000000 : ℚ), (-1183344061/5000000000 : ℚ), (44235625473/500000000000 : ℚ), 2⟩,
    ⟨(876870641/1953125000 : ℚ), (-2413591201/10000000000 : ℚ), (45286332053/500000000000 : ℚ), 2⟩,
    ⟨(224942005127/500000000000 : ℚ), (-152301643/625000000 : ℚ), (91616895751/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-1219860321/5000000000 : ℚ), (18349424983/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (10217884573/31250000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control256.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control256.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate256

namespace DiagonalRamsey.JointInheritedCertificate257
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(264239867859/1000000000000 : ℚ), (111629410879/100000000 : ℚ), (-147862350085979/500000000000 : ℚ), 11⟩,
    ⟨(53036387667/200000000000 : ℚ), (1215464487521/10000000000 : ℚ), (-6540057238317/200000000000 : ℚ), 8⟩,
    ⟨(267057006633/1000000000000 : ℚ), (8476938319/200000000 : ℚ), (-11658232021581/1000000000000 : ℚ), 7⟩,
    ⟨(134923507411/500000000000 : ℚ), (103820348677/5000000000 : ℚ), (-1465200020609/250000000000 : ℚ), 6⟩,
    ⟨(68381273399/250000000000 : ℚ), (14965318221/1250000000 : ℚ), (-138994949623/40000000000 : ℚ), 5⟩,
    ⟨(139027910523/500000000000 : ℚ), (75876178317/10000000000 : ℚ), (-2266954207239/1000000000000 : ℚ), 5⟩,
    ⟨(283395563791/1000000000000 : ℚ), (51095934027/10000000000 : ℚ), (-1572041955829/1000000000000 : ℚ), 4⟩,
    ⟨(72373224297/250000000000 : ℚ), (17926549969/5000000000 : ℚ), (-283964985763/250000000000 : ℚ), 4⟩,
    ⟨(59257820117/200000000000 : ℚ), (25884175831/10000000000 : ℚ), (-844158698527/1000000000000 : ℚ), 4⟩,
    ⟨(151859361413/500000000000 : ℚ), (19053750947/10000000000 : ℚ), (-319714100963/500000000000 : ℚ), 3⟩,
    ⟨(311710212589/1000000000000 : ℚ), (7099419639/5000000000 : ℚ), (-490161609429/1000000000000 : ℚ), 3⟩,
    ⟨(160093303729/500000000000 : ℚ), (425749837/400000000 : ℚ), (-23620431827/62500000000 : ℚ), 3⟩,
    ⟨(164533137559/500000000000 : ℚ), (7975202773/10000000000 : ℚ), (-145680648479/500000000000 : ℚ), 3⟩,
    ⟨(169131849757/500000000000 : ℚ), (1482421641/2500000000 : ℚ), (-55788592797/250000000000 : ℚ), 3⟩,
    ⟨(173845152211/500000000000 : ℚ), (2166636951/5000000000 : ℚ), (-168433547933/1000000000000 : ℚ), 3⟩,
    ⟨(357255306483/1000000000000 : ℚ), (766954831/2500000000 : ℚ), (-61926688541/500000000000 : ℚ), 2⟩,
    ⟨(366866589499/1000000000000 : ℚ), (2051083867/10000000000 : ℚ), (-21764664151/250000000000 : ℚ), 2⟩,
    ⟨(9410789789/25000000000 : ℚ), (1224616281/10000000000 : ℚ), (-56355716043/1000000000000 : ℚ), 2⟩,
    ⟨(385858196467/1000000000000 : ℚ), (546121339/10000000000 : ℚ), (-15252229177/500000000000 : ℚ), 2⟩,
    ⟨(395055620863/1000000000000 : ℚ), (-1935219/1250000000 : ℚ), (-2145744121/250000000000 : ℚ), 2⟩,
    ⟨(403935288523/1000000000000 : ℚ), (-120834447/2500000000 : ℚ), (2020567831/200000000000 : ℚ), 2⟩,
    ⟨(6443932553/15625000000 : ℚ), (-218719379/2500000000 : ℚ), (26081026143/1000000000000 : ℚ), 2⟩,
    ⟨(84080634631/200000000000 : ℚ), (-60167607/500000000 : ℚ), (39756557951/1000000000000 : ℚ), 2⟩,
    ⟨(427832795397/1000000000000 : ℚ), (-739455387/5000000000 : ℚ), (25720928761/500000000000 : ℚ), 2⟩,
    ⟨(434628998793/1000000000000 : ℚ), (-1709368003/10000000000 : ℚ), (30689399297/500000000000 : ℚ), 2⟩,
    ⟨(440726332191/1000000000000 : ℚ), (-950378747/5000000000 : ℚ), (13950959281/200000000000 : ℚ), 2⟩,
    ⟨(89213214987/200000000000 : ℚ), (-1028867639/5000000000 : ℚ), (9589339211/125000000000 : ℚ), 2⟩,
    ⟨(225298401193/500000000000 : ℚ), (-1091937769/5000000000 : ℚ), (41184872363/500000000000 : ℚ), 2⟩,
    ⟨(11356872029/25000000000 : ℚ), (-2281888033/10000000000 : ℚ), (86804065257/1000000000000 : ℚ), 2⟩,
    ⟨(114266222337/250000000000 : ℚ), (-1176888571/5000000000 : ℚ), (90079787623/1000000000000 : ℚ), 2⟩,
    ⟨(458939957647/1000000000000 : ℚ), (-2400956199/10000000000 : ℚ), (92240585877/1000000000000 : ℚ), 2⟩,
    ⟨(459882028123/1000000000000 : ℚ), (-303040801/1250000000 : ℚ), (46657118633/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-1213618759/5000000000 : ℚ), (23362032783/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (322430251713/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control257.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control257.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate257

namespace DiagonalRamsey.JointInheritedCertificate258
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(13552101597/50000000000 : ℚ), (2816651881137/2500000000 : ℚ), (-153073881807043/500000000000 : ℚ), 11⟩,
    ⟨(271999491591/1000000000000 : ℚ), (19170587051/156250000 : ℚ), (-8463275215241/250000000000 : ℚ), 8⟩,
    ⟨(17119074377/62500000000 : ℚ), (213961789167/5000000000 : ℚ), (-12069433442331/1000000000000 : ℚ), 7⟩,
    ⟨(138370387173/500000000000 : ℚ), (209685881443/10000000000 : ℚ), (-1213537542131/200000000000 : ℚ), 6⟩,
    ⟨(140239468153/500000000000 : ℚ), (30233151689/2500000000 : ℚ), (-1798845388311/500000000000 : ℚ), 5⟩,
    ⟨(35635459421/125000000000 : ℚ), (38332202759/5000000000 : ℚ), (-2347224536469/1000000000000 : ℚ), 5⟩,
    ⟨(290510645379/1000000000000 : ℚ), (25821223119/5000000000 : ℚ), (-406962903157/250000000000 : ℚ), 4⟩,
    ⟨(296707581651/1000000000000 : ℚ), (36248837439/10000000000 : ℚ), (-588166457351/500000000000 : ℚ), 4⟩,
    ⟨(151807402149/500000000000 : ℚ), (5235998133/2000000000 : ℚ), (-87439212157/100000000000 : ℚ), 4⟩,
    ⟨(311165792993/1000000000000 : ℚ), (482007457/250000000 : ℚ), (-662492074131/1000000000000 : ℚ), 3⟩,
    ⟨(63857565517/200000000000 : ℚ), (2875138781/2000000000 : ℚ), (-50801520303/100000000000 : ℚ), 3⟩,
    ⟨(163951344221/500000000000 : ℚ), (336999593/312500000 : ℚ), (-391879523831/1000000000000 : ℚ), 3⟩,
    ⟨(336927409743/1000000000000 : ℚ), (2021973373/2500000000 : ℚ), (-151160672811/500000000000 : ℚ), 3⟩,
    ⟨(346275078491/1000000000000 : ℚ), (6021296799/10000000000 : ℚ), (-231772141161/1000000000000 : ℚ), 3⟩,
    ⟨(88963917881/250000000000 : ℚ), (2204268377/5000000000 : ℚ), (-175187059287/1000000000000 : ℚ), 3⟩,
    ⟨(182788461247/500000000000 : ℚ), (195641787/625000000 : ℚ), (-25820429891/200000000000 : ℚ), 2⟩,
    ⟨(375345210441/1000000000000 : ℚ), (525850807/2500000000 : ℚ), (-91078558691/1000000000000 : ℚ), 2⟩,
    ⟨(96266615353/250000000000 : ℚ), (634436569/5000000000 : ℚ), (-59362237191/1000000000000 : ℚ), 2⟩,
    ⟨(78929410889/200000000000 : ℚ), (36495477/625000000 : ℚ), (-1633432937/50000000000 : ℚ), 2⟩,
    ⟨(50499340399/125000000000 : ℚ), (4285917/2500000000 : ℚ), (-10042675127/1000000000000 : ℚ), 2⟩,
    ⟨(206509722247/500000000000 : ℚ), (-227442199/5000000000 : ℚ), (9235051817/1000000000000 : ℚ), 2⟩,
    ⟨(421634305351/1000000000000 : ℚ), (-169957699/2000000000 : ℚ), (25711939301/1000000000000 : ℚ), 2⟩,
    ⟨(429756339943/1000000000000 : ℚ), (-1180976499/10000000000 : ℚ), (995199889/25000000000 : ℚ), 2⟩,
    ⟨(437307328637/1000000000000 : ℚ), (-1458720421/10000000000 : ℚ), (51847395479/1000000000000 : ℚ), 2⟩,
    ⟨(88842910257/200000000000 : ℚ), (-1690931707/10000000000 : ℚ), (62081244963/1000000000000 : ℚ), 2⟩,
    ⟨(112602871889/250000000000 : ℚ), (-1883720493/10000000000 : ℚ), (70704226323/1000000000000 : ℚ), 2⟩,
    ⟨(455838457567/1000000000000 : ℚ), (-2041803051/10000000000 : ℚ), (608335251/7812500000 : ℚ), 2⟩,
    ⟨(46044319663/100000000000 : ℚ), (-2168800677/10000000000 : ℚ), (4184247597/50000000000 : ℚ), 2⟩,
    ⟨(46418135859/100000000000 : ℚ), (-28343243/125000000 : ℚ), (88245948437/1000000000000 : ℚ), 2⟩,
    ⟨(58377117863/125000000000 : ℚ), (-2339810939/10000000000 : ℚ), (91614578851/1000000000000 : ℚ), 2⟩,
    ⟨(93784528269/200000000000 : ℚ), (-477457583/2000000000 : ℚ), (46918171803/500000000000 : ℚ), 2⟩,
    ⟨(93976020199/200000000000 : ℚ), (-1205402017/5000000000 : ℚ), (47470095839/500000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2413733241/10000000000 : ℚ), (9507784681/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (317830864923/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control258.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control258.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate258

namespace DiagonalRamsey.JointInheritedCertificate259
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(277870711107/1000000000000 : ℚ), (5684788902893/5000000000 : ℚ), (-158361359369807/500000000000 : ℚ), 11⟩,
    ⟨(278843432331/1000000000000 : ℚ), (619146527651/5000000000 : ℚ), (-35022662766169/1000000000000 : ℚ), 8⟩,
    ⟨(280779506943/1000000000000 : ℚ), (431972108591/10000000000 : ℚ), (-3121642684829/250000000000 : ℚ), 7⟩,
    ⟨(56732057897/200000000000 : ℚ), (6616142301/312500000 : ℚ), (-1255506632473/200000000000 : ℚ), 6⟩,
    ⟨(287458036447/1000000000000 : ℚ), (122133751723/10000000000 : ℚ), (-3722240756329/1000000000000 : ℚ), 5⟩,
    ⟨(292136173449/1000000000000 : ℚ), (19361635043/2500000000 : ℚ), (-2428608472891/1000000000000 : ℚ), 5⟩,
    ⟨(11905985899/40000000000 : ℚ), (26092240557/5000000000 : ℚ), (-421104846407/250000000000 : ℚ), 4⟩,
    ⟨(75986340189/250000000000 : ℚ), (36641103/10000000 : ℚ), (-608670847797/500000000000 : ℚ), 4⟩,
    ⟨(310962682131/1000000000000 : ℚ), (13236499167/5000000000 : ℚ), (-90501351657/100000000000 : ℚ), 4⟩,
    ⟨(3982925387/12500000000 : ℚ), (2438062299/1250000000 : ℚ), (-342920494589/500000000000 : ℚ), 3⟩,
    ⟨(326885527959/1000000000000 : ℚ), (227352047/156250000 : ℚ), (-526079615259/1000000000000 : ℚ), 3⟩,
    ⟨(167818853351/500000000000 : ℚ), (546122687/500000000 : ℚ), (-20299397527/50000000000 : ℚ), 3⟩,
    ⟨(86201569731/250000000000 : ℚ), (8198993789/10000000000 : ℚ), (-313395560123/1000000000000 : ℚ), 3⟩,
    ⟨(354302946261/1000000000000 : ℚ), (6111458593/10000000000 : ℚ), (-240472013567/1000000000000 : ℚ), 3⟩,
    ⟨(45504531327/125000000000 : ℚ), (560307867/1250000000 : ℚ), (-4549941629/25000000000 : ℚ), 3⟩,
    ⟨(373912454947/1000000000000 : ℚ), (638294151/2000000000 : ℚ), (-67194159141/500000000000 : ℚ), 2⟩,
    ⟨(383836446007/1000000000000 : ℚ), (1077274229/5000000000 : ℚ), (-23780057611/250000000000 : ℚ), 2⟩,
    ⟨(196856325169/500000000000 : ℚ), (1312016241/10000000000 : ℚ), (-62378071193/1000000000000 : ℚ), 2⟩,
    ⟨(403445954693/1000000000000 : ℚ), (77583853/1250000000 : ℚ), (-34832214631/1000000000000 : ℚ), 2⟩,
    ⟨(41294262203/100000000000 : ℚ), (48748997/10000000000 : ℚ), (-1149376253/100000000000 : ℚ), 2⟩,
    ⟨(422111194251/1000000000000 : ℚ), (-213707107/5000000000 : ℚ), (8382244453/1000000000000 : ℚ), 2⟩,
    ⟨(86172674599/200000000000 : ℚ), (-33026033/400000000 : ℚ), (25362911943/1000000000000 : ℚ), 2⟩,
    ⟨(219557434997/500000000000 : ℚ), (-1159524589/10000000000 : ℚ), (7976705653/200000000000 : ℚ), 2⟩,
    ⟨(446786218823/1000000000000 : ℚ), (-719714923/5000000000 : ℚ), (52280217737/1000000000000 : ℚ), 2⟩,
    ⟨(226901770099/500000000000 : ℚ), (-52292953/312500000 : ℚ), (12562695613/200000000000 : ℚ), 2⟩,
    ⟨(460099253479/1000000000000 : ℚ), (-1867544859/10000000000 : ℚ), (17921347107/250000000000 : ℚ), 2⟩,
    ⟨(93122545501/200000000000 : ℚ), (-2026717251/10000000000 : ℚ), (9881542071/125000000000 : ℚ), 2⟩,
    ⟨(470290864507/1000000000000 : ℚ), (-1077279973/5000000000 : ℚ), (85034512011/1000000000000 : ℚ), 2⟩,
    ⟨(474088611469/1000000000000 : ℚ), (-281731903/1250000000 : ℚ), (22430752651/250000000000 : ℚ), 2⟩,
    ⟨(476969394011/1000000000000 : ℚ), (-2326661847/10000000000 : ℚ), (93185126121/1000000000000 : ℚ), 2⟩,
    ⟨(239452734311/500000000000 : ℚ), (-474886383/2000000000 : ℚ), (23867055437/250000000000 : ℚ), 2⟩,
    ⟨(479878189847/1000000000000 : ℚ), (-2398091539/10000000000 : ℚ), (19320488601/200000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2401038543/10000000000 : ℚ), (3869755249/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (313208977747/1000000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control259.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control259.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate259

namespace DiagonalRamsey.JointInheritedCertificate260
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(145901868067/500000000000 : ℚ), (5796237075281/5000000000 : ℚ), (-21194339216133/62500000000 : ℚ), 11⟩,
    ⟨(36600706737/125000000000 : ℚ), (1262920584733/10000000000 : ℚ), (-37498768246143/1000000000000 : ℚ), 8⟩,
    ⟨(294799840403/1000000000000 : ℚ), (440739457269/10000000000 : ℚ), (-835615244929/62500000000 : ℚ), 7⟩,
    ⟨(297767090551/1000000000000 : ℚ), (108057956327/5000000000 : ℚ), (-26887939607/4000000000 : ℚ), 6⟩,
    ⟨(301678828097/1000000000000 : ℚ), (124737393191/10000000000 : ℚ), (-39861299977/10000000000 : ℚ), 5⟩,
    ⟨(306497380871/1000000000000 : ℚ), (39571530477/5000000000 : ℚ), (-1300560541263/500000000000 : ℚ), 5⟩,
    ⟨(39022042947/125000000000 : ℚ), (10672227903/2000000000 : ℚ), (-112775093327/62500000000 : ℚ), 4⟩,
    ⟨(63732204939/200000000000 : ℚ), (18746708839/5000000000 : ℚ), (-326097691727/250000000000 : ℚ), 4⟩,
    ⟨(162944486603/500000000000 : ℚ), (27110297813/10000000000 : ℚ), (-194015628237/200000000000 : ℚ), 4⟩,
    ⟨(333790580013/1000000000000 : ℚ), (9996344779/5000000000 : ℚ), (-367757922727/500000000000 : ℚ), 3⟩,
    ⟨(171144874161/500000000000 : ℚ), (7465850131/5000000000 : ℚ), (-564573726279/1000000000000 : ℚ), 3⟩,
    ⟨(175652313249/500000000000 : ℚ), (11224724237/10000000000 : ℚ), (-109028568829/250000000000 : ℚ), 3⟩,
    ⟨(180374198167/500000000000 : ℚ), (8441856779/10000000000 : ℚ), (-13484238657/40000000000 : ℚ), 3⟩,
    ⟨(185265054583/500000000000 : ℚ), (6308831471/10000000000 : ℚ), (-51832777219/200000000000 : ℚ), 3⟩,
    ⟨(1522222247/4000000000 : ℚ), (290283167/625000000 : ℚ), (-98349149681/500000000000 : ℚ), 3⟩,
    ⟨(390728203499/1000000000000 : ℚ), (166292051/500000000 : ℚ), (-72935193401/500000000000 : ℚ), 2⟩,
    ⟨(400950066311/1000000000000 : ℚ), (2267002019/10000000000 : ℚ), (-103976621509/1000000000000 : ℚ), 2⟩,
    ⟨(20556135403/50000000000 : ℚ), (351752351/2500000000 : ℚ), (-34535929639/500000000000 : ℚ), 2⟩,
    ⟨(84229632129/200000000000 : ℚ), (87710111/1250000000 : ℚ), (-9932726889/250000000000 : ℚ), 2⟩,
    ⟨(107732468369/250000000000 : ℚ), (59258707/5000000000 : ℚ), (-1861665231/125000000000 : ℚ), 2⟩,
    ⟨(440373643313/1000000000000 : ℚ), (-366707041/10000000000 : ℚ), (1248040353/200000000000 : ℚ), 2⟩,
    ⟨(28086782593/62500000000 : ℚ), (-4826609/62500000 : ℚ), (6069639261/250000000000 : ℚ), 2⟩,
    ⟨(228943844899/500000000000 : ℚ), (-222406983/2000000000 : ℚ), (1984474533/50000000000 : ℚ), 2⟩,
    ⟨(116447324151/250000000000 : ℚ), (-1396698677/10000000000 : ℚ), (52834535171/1000000000000 : ℚ), 2⟩,
    ⟨(94603449023/200000000000 : ℚ), (-1634465581/10000000000 : ℚ), (6399418111/100000000000 : ℚ), 2⟩,
    ⟨(95900385247/200000000000 : ℚ), (-1831687079/10000000000 : ℚ), (9173284053/125000000000 : ℚ), 2⟩,
    ⟨(485180888939/1000000000000 : ℚ), (-996634861/5000000000 : ℚ), (8117960677/100000000000 : ℚ), 2⟩,
    ⟨(489999441713/1000000000000 : ℚ), (-1061491879/5000000000 : ℚ), (43752037829/500000000000 : ℚ), 2⟩,
    ⟨(24695558963/50000000000 : ℚ), (-222369013/1000000000 : ℚ), (92458249861/1000000000000 : ℚ), 2⟩,
    ⟨(496878429407/1000000000000 : ℚ), (-28718833/125000000 : ℚ), (48057514047/500000000000 : ℚ), 2⟩,
    ⟨(99774523183/200000000000 : ℚ), (-938371/4000000 : ℚ), (4926288433/50000000000 : ℚ), 2⟩,
    ⟨(124968633419/250000000000 : ℚ), (-2369905897/10000000000 : ℚ), (49861592269/500000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-59322311/250000000 : ℚ), (99872492923/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (303791838897/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control260.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control260.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate260

namespace DiagonalRamsey.JointInheritedCertificate261
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(152983346013/500000000000 : ℚ), (11824381568661/10000000000 : ℚ), (-362665396034249/1000000000000 : ℚ), 11⟩,
    ⟨(76749174953/250000000000 : ℚ), (1288543961269/10000000000 : ℚ), (-20052089733091/500000000000 : ℚ), 8⟩,
    ⟨(309046795847/1000000000000 : ℚ), (11246536211/250000000 : ℚ), (-1787403600747/125000000000 : ℚ), 7⟩,
    ⟨(39012154573/125000000000 : ℚ), (220693276829/10000000000 : ℚ), (-7189630566191/1000000000000 : ℚ), 6⟩,
    ⟨(79029661153/250000000000 : ℚ), (5097854923/400000000 : ℚ), (-1065946338183/250000000000 : ℚ), 5⟩,
    ⟨(160536145787/500000000000 : ℚ), (5056760147/625000000 : ℚ), (-34782888411/12500000000 : ℚ), 5⟩,
    ⟨(16345523557/50000000000 : ℚ), (54585265251/10000000000 : ℚ), (-1930642012191/1000000000000 : ℚ), 4⟩,
    ⟨(333576958451/1000000000000 : ℚ), (19189991251/5000000000 : ℚ), (-13959836487/10000000000 : ℚ), 4⟩,
    ⟨(341007551589/1000000000000 : ℚ), (27773044887/10000000000 : ℚ), (-1038544582903/1000000000000 : ℚ), 4⟩,
    ⟨(8728267247/25000000000 : ℚ), (20500187767/10000000000 : ℚ), (-787795695853/1000000000000 : ℚ), 3⟩,
    ⟨(357868143063/1000000000000 : ℚ), (239495899/156250000 : ℚ), (-605096538009/1000000000000 : ℚ), 3⟩,
    ⟨(183567882343/500000000000 : ℚ), (5769281493/5000000000 : ℚ), (-233920287801/500000000000 : ℚ), 3⟩,
    ⟨(376844302487/1000000000000 : ℚ), (8693780407/10000000000 : ℚ), (-362090162611/1000000000000 : ℚ), 3⟩,
    ⟨(386900257941/1000000000000 : ℚ), (3256662849/5000000000 : ℚ), (-278876879343/1000000000000 : ℚ), 3⟩,
    ⟨(397206786697/1000000000000 : ℚ), (96243981/200000000 : ℚ), (-212221500131/1000000000000 : ℚ), 3⟩,
    ⟨(101916157813/250000000000 : ℚ), (1732303213/5000000000 : ℚ), (-158017203251/1000000000000 : ℚ), 2⟩,
    ⟨(104543269211/250000000000 : ℚ), (95315483/400000000 : ℚ), (-5668559863/50000000000 : ℚ), 2⟩,
    ⟨(428630921399/1000000000000 : ℚ), (300931791/2000000000 : ℚ), (-19050411249/250000000000 : ℚ), 2⟩,
    ⟨(109734362539/250000000000 : ℚ), (392360593/5000000000 : ℚ), (-44982688871/1000000000000 : ℚ), 2⟩,
    ⟨(448993405609/1000000000000 : ℚ), (37961779/2000000000 : ℚ), (-18578486091/1000000000000 : ℚ), 2⟩,
    ⟨(45870194341/100000000000 : ℚ), (-15244403/500000000 : ℚ), (3867571519/1000000000000 : ℚ), 2⟩,
    ⟨(467969565033/1000000000000 : ℚ), (-359042811/5000000000 : ℚ), (2300847501/100000000000 : ℚ), 2⟩,
    ⟨(59588377277/125000000000 : ℚ), (-1064036573/10000000000 : ℚ), (9836563511/250000000000 : ℚ), 2⟩,
    ⟨(484830156507/1000000000000 : ℚ), (-338419101/2500000000 : ℚ), (10653861287/200000000000 : ℚ), 2⟩,
    ⟨(98452149929/200000000000 : ℚ), (-1595440107/10000000000 : ℚ), (813491093/12500000000 : ℚ), 2⟩,
    ⟨(124731809239/250000000000 : ℚ), (-11224073/62500000 : ℚ), (37505375943/500000000000 : ℚ), 2⟩,
    ⟨(504765416523/1000000000000 : ℚ), (-489988471/2500000000 : ℚ), (83245670239/1000000000000 : ℚ), 2⟩,
    ⟨(127429765871/250000000000 : ℚ), (-2091623717/10000000000 : ℚ), (44962123261/500000000000 : ℚ), 2⟩,
    ⟨(64217558939/125000000000 : ℚ), (-2193804541/10000000000 : ℚ), (47576503649/500000000000 : ℚ), 2⟩,
    ⟨(516790912249/1000000000000 : ℚ), (-453735213/2000000000 : ℚ), (4950541197/50000000000 : ℚ), 2⟩,
    ⟨(129710252071/250000000000 : ℚ), (-2317776683/10000000000 : ℚ), (101553315917/1000000000000 : ℚ), 2⟩,
    ⟨(51987101607/100000000000 : ℚ), (-468417601/2000000000 : ℚ), (102815936997/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-1172557921/5000000000 : ℚ), (102973365031/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (73554519077/250000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control261.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control261.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate261

namespace DiagonalRamsey.JointInheritedCertificate262
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(327744016733/1000000000000 : ℚ), (2439715144023/2000000000 : ℚ), (-100186141614067/250000000000 : ℚ), 11⟩,
    ⟨(20550849693/62500000000 : ℚ), (1329891123997/10000000000 : ℚ), (-553950327329/12500000000 : ℚ), 8⟩,
    ⟨(82735612793/250000000000 : ℚ), (464582923613/10000000000 : ℚ), (-15801722155269/1000000000000 : ℚ), 7⟩,
    ⟨(334110082939/1000000000000 : ℚ), (228081689849/10000000000 : ℚ), (-397285524393/50000000000 : ℚ), 6⟩,
    ⟨(169142992181/500000000000 : ℚ), (65909950701/5000000000 : ℚ), (-4712745199809/1000000000000 : ℚ), 5⟩,
    ⟨(343429939229/1000000000000 : ℚ), (83758496407/10000000000 : ℚ), (-3076176071329/1000000000000 : ℚ), 5⟩,
    ⟨(349492408441/1000000000000 : ℚ), (56562475851/10000000000 : ℚ), (-2134851019273/1000000000000 : ℚ), 4⟩,
    ⟨(356415007107/1000000000000 : ℚ), (19906132769/5000000000 : ℚ), (-193024262167/125000000000 : ℚ), 4⟩,
    ⟨(5689547919/15625000000 : ℚ), (7210978573/2500000000 : ℚ), (-1149382374189/1000000000000 : ℚ), 4⟩,
    ⟨(372566277697/1000000000000 : ℚ), (10660136667/5000000000 : ℚ), (-872480775001/1000000000000 : ℚ), 3⟩,
    ⟨(47704925507/125000000000 : ℚ), (3991922463/2500000000 : ℚ), (-13415816167/20000000000 : ℚ), 3⟩,
    ⟨(391263066727/1000000000000 : ℚ), (3011400081/2500000000 : ℚ), (-103866226097/200000000000 : ℚ), 3⟩,
    ⟨(401344584579/1000000000000 : ℚ), (455031877/500000000 : ℚ), (-201349611949/500000000000 : ℚ), 3⟩,
    ⟨(205893433541/500000000000 : ℚ), (6843386343/10000000000 : ℚ), (-38872911867/125000000000 : ℚ), 3⟩,
    ⟨(105622337337/250000000000 : ℚ), (2541292943/5000000000 : ℚ), (-237574357043/1000000000000 : ℚ), 3⟩,
    ⟨(216674480311/500000000000 : ℚ), (73762381/200000000 : ℚ), (-177932198477/1000000000000 : ℚ), 2⟩,
    ⟨(444261116911/1000000000000 : ℚ), (160578787/625000000 : ℚ), (-128857900939/1000000000000 : ℚ), 2⟩,
    ⟨(91024145637/200000000000 : ℚ), (41535161/250000000 : ℚ), (-11006058283/125000000000 : ℚ), 2⟩,
    ⟨(465823210451/1000000000000 : ℚ), (183542541/2000000000 : ℚ), (-26907548437/500000000000 : ℚ), 2⟩,
    ⟨(238132746477/500000000000 : ℚ), (151839463/5000000000 : ℚ), (-6224959749/250000000000 : ℚ), 2⟩,
    ⟨(243173505403/500000000000 : ℚ), (-25805981/1250000000 : ℚ), (-88302041/250000000000 : ℚ), 2⟩,
    ⟨(495970673477/1000000000000 : ℚ), (-632111869/10000000000 : ℚ), (20549324873/1000000000000 : ℚ), 2⟩,
    ⟨(126260949959/250000000000 : ℚ), (-98813423/1000000000 : ℚ), (19182735933/500000000000 : ℚ), 2⟩,
    ⟨(513479010717/1000000000000 : ℚ), (-1285897311/10000000000 : ℚ), (13381831051/250000000000 : ℚ), 2⟩,
    ⟨(260597535213/500000000000 : ℚ), (-153418931/1000000000 : ℚ), (66371013641/1000000000000 : ℚ), 2⟩,
    ⟨(132029417273/250000000000 : ℚ), (-434953483/2500000000 : ℚ), (77158363421/1000000000000 : ℚ), 2⟩,
    ⟨(8346564661/15625000000 : ℚ), (-381607003/2000000000 : ℚ), (17218575717/200000000000 : ℚ), 2⟩,
    ⟨(539324093171/1000000000000 : ℚ), (-510725757/2500000000 : ℚ), (23332913063/250000000000 : ℚ), 2⟩,
    ⟨(271749997297/500000000000 : ℚ), (-536873857/2500000000 : ℚ), (49497131899/500000000000 : ℚ), 2⟩,
    ⟨(546667626361/1000000000000 : ℚ), (-1112046377/5000000000 : ℚ), (20633879887/200000000000 : ℚ), 2⟩,
    ⟨(109759296489/200000000000 : ℚ), (-284288179/1250000000 : ℚ), (13239961391/125000000000 : ℚ), 2⟩,
    ⟨(549866060799/1000000000000 : ℚ), (-459832287/2000000000 : ℚ), (107285106887/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-2302256829/10000000000 : ℚ), (107455332819/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (279509834173/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control262.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control262.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate262

namespace DiagonalRamsey.JointInheritedCertificate263
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(224774491111/1000000000000 : ℚ), (10606662711929/10000000000 : ℚ), (-239050473376121/1000000000000 : ℚ), 11⟩,
    ⟨(28202217669/125000000000 : ℚ), (1154015778213/10000000000 : ℚ), (-13216214981483/500000000000 : ℚ), 8⟩,
    ⟨(227296120873/1000000000000 : ℚ), (200990464091/5000000000 : ℚ), (-9422857534907/1000000000000 : ℚ), 7⟩,
    ⟨(114896732981/500000000000 : ℚ), (98337795689/5000000000 : ℚ), (-23681900943/5000000000 : ℚ), 6⟩,
    ⟨(11654286291/50000000000 : ℚ), (1415480173/125000000 : ℚ), (-2807597680147/1000000000000 : ℚ), 5⟩,
    ⟨(118570597093/500000000000 : ℚ), (7165517101/1000000000 : ℚ), (-1831042432263/1000000000000 : ℚ), 5⟩,
    ⟨(241920814681/1000000000000 : ℚ), (9634288599/2000000000 : ℚ), (-1269156708303/1000000000000 : ℚ), 4⟩,
    ⟨(247378556949/1000000000000 : ℚ), (33737076697/10000000000 : ℚ), (-916393979501/1000000000000 : ℚ), 4⟩,
    ⟨(126730929973/500000000000 : ℚ), (2430370623/1000000000 : ℚ), (-42525027699/62500000000 : ℚ), 4⟩,
    ⟨(260112138141/1000000000000 : ℚ), (8922157227/5000000000 : ℚ), (-257344197383/500000000000 : ℚ), 3⟩,
    ⟨(267265345717/1000000000000 : ℚ), (13255387397/10000000000 : ℚ), (-196895161071/500000000000 : ℚ), 3⟩,
    ⟨(137426296689/500000000000 : ℚ), (9896098459/10000000000 : ℚ), (-151404088929/500000000000 : ℚ), 3⟩,
    ⟨(141400405889/500000000000 : ℚ), (1843684833/2500000000 : ℚ), (-7267458771/31250000000 : ℚ), 3⟩,
    ⟨(291033455231/1000000000000 : ℚ), (2720855769/5000000000 : ℚ), (-17713464579/100000000000 : ℚ), 3⟩,
    ⟨(1871695243/6250000000 : ℚ), (983104479/2500000000 : ℚ), (-132599804267/1000000000000 : ℚ), 3⟩,
    ⟨(61606580451/200000000000 : ℚ), (27351537/100000000 : ℚ), (-48126310141/500000000000 : ℚ), 2⟩,
    ⟨(158317995929/500000000000 : ℚ), (1772245453/10000000000 : ℚ), (-66192266189/1000000000000 : ℚ), 2⟩,
    ⟨(162598827617/500000000000 : ℚ), (494275679/5000000000 : ℚ), (-20526433231/500000000000 : ℚ), 2⟩,
    ⟨(166817719441/500000000000 : ℚ), (34422161/1000000000 : ℚ), (-3967070681/200000000000 : ℚ), 2⟩,
    ⟨(68373616467/200000000000 : ℚ), (-37997523/2000000000 : ℚ), (-898991437/500000000000 : ℚ), 2⟩,
    ⟨(5465879699/15625000000 : ℚ), (-127164347/2000000000 : ℚ), (13616784891/1000000000000 : ℚ), 2⟩,
    ⟨(89350887099/250000000000 : ℚ), (-1009632917/10000000000 : ℚ), (5366447181/200000000000 : ℚ), 2⟩,
    ⟨(364556755973/1000000000000 : ℚ), (-330958289/2500000000 : ℚ), (2385764093/62500000000 : ℚ), 2⟩,
    ⟨(371207034167/1000000000000 : ℚ), (-793956973/5000000000 : ℚ), (47885901919/1000000000000 : ℚ), 2⟩,
    ⟨(75458067433/200000000000 : ℚ), (-1809172213/10000000000 : ℚ), (56165549339/1000000000000 : ℚ), 2⟩,
    ⟨(47843509929/125000000000 : ℚ), (-398646701/2000000000 : ℚ), (63159649187/1000000000000 : ℚ), 2⟩,
    ⟨(48440962491/125000000000 : ℚ), (-268054101/1250000000 : ℚ), (34491277767/500000000000 : ℚ), 2⟩,
    ⟨(391583168293/1000000000000 : ℚ), (-1133046789/5000000000 : ℚ), (18430430139/250000000000 : ℚ), 2⟩,
    ⟨(394875428151/1000000000000 : ℚ), (-590183161/2500000000 : ℚ), (19360777069/250000000000 : ℚ), 2⟩,
    ⟨(9934319331/25000000000 : ℚ), (-607552477/2500000000 : ℚ), (16039045969/200000000000 : ℚ), 2⟩,
    ⟨(399051152761/1000000000000 : ℚ), (-618958963/2500000000 : ℚ), (82012097783/1000000000000 : ℚ), 2⟩,
    ⟨(199947201501/500000000000 : ℚ), (-62461141/250000000 : ℚ), (41457647899/500000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-2501262447/10000000000 : ℚ), (41513976599/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (87282481267/250000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (2/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control263.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control263.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate263

namespace DiagonalRamsey.JointInheritedCertificate264
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(237692125563/1000000000000 : ℚ), (5390547373399/5000000000 : ℚ), (-128467783139531/500000000000 : ℚ), 11⟩,
    ⟨(119284729389/500000000000 : ℚ), (2933206731/25000000 : ℚ), (-2841035196379/100000000000 : ℚ), 8⟩,
    ⟨(240315676009/1000000000000 : ℚ), (51104476803/1250000000 : ℚ), (-10128213129601/1000000000000 : ℚ), 7⟩,
    ⟨(24291396023/100000000000 : ℚ), (200112316489/10000000000 : ℚ), (-5091140001827/1000000000000 : ℚ), 6⟩,
    ⟨(246339288543/1000000000000 : ℚ), (5763505197/500000000 : ℚ), (-3018089612387/1000000000000 : ℚ), 5⟩,
    ⟨(50111734633/200000000000 : ℚ), (36488649069/5000000000 : ℚ), (-1968516900249/1000000000000 : ℚ), 5⟩,
    ⟨(51106295823/200000000000 : ℚ), (49087121169/10000000000 : ℚ), (-1364646232223/1000000000000 : ℚ), 4⟩,
    ⟨(261209815553/1000000000000 : ℚ), (6879870739/2000000000 : ℚ), (-492776390879/500000000000 : ℚ), 4⟩,
    ⟨(53507799399/200000000000 : ℚ), (3099770839/1250000000 : ℚ), (-731972958677/1000000000000 : ℚ), 4⟩,
    ⟨(68614517491/250000000000 : ℚ), (9111275551/5000000000 : ℚ), (-553940676607/1000000000000 : ℚ), 3⟩,
    ⟨(56380080001/200000000000 : ℚ), (1355034163/1000000000 : ℚ), (-6626290227/15625000000 : ℚ), 3⟩,
    ⟨(289794313411/1000000000000 : ℚ), (10129775787/10000000000 : ℚ), (-326385406283/1000000000000 : ℚ), 3⟩,
    ⟨(149031893741/500000000000 : ℚ), (3781191429/5000000000 : ℚ), (-250978134927/1000000000000 : ℚ), 3⟩,
    ⟨(15331459133/50000000000 : ℚ), (1398549107/2500000000 : ℚ), (-95755408087/500000000000 : ℚ), 3⟩,
    ⟨(78852002377/250000000000 : ℚ), (4057693687/10000000000 : ℚ), (-71875887617/500000000000 : ℚ), 3⟩,
    ⟨(518905157/1600000000 : ℚ), (2839149347/10000000000 : ℚ), (-104796355841/1000000000000 : ℚ), 2⟩,
    ⟨(333266537359/1000000000000 : ℚ), (116216107/625000000 : ℚ), (-4537527073/62500000000 : ℚ), 2⟩,
    ⟨(10692945343/31250000000 : ℚ), (53121941/500000000 : ℚ), (-11423697161/250000000000 : ℚ), 2⟩,
    ⟨(14038123113/40000000000 : ℚ), (8149517/200000000 : ℚ), (-4600879949/200000000000 : ℚ), 2⟩,
    ⟨(359518473003/1000000000000 : ℚ), (-135251069/10000000000 : ℚ), (-1865390869/500000000000 : ℚ), 2⟩,
    ⟨(367787947073/1000000000000 : ℚ), (-14698151/250000000 : ℚ), (12726584017/1000000000000 : ℚ), 2⟩,
    ⟨(587002907/1562500000 : ℚ), (-241809803/2500000000 : ℚ), (1072956759/40000000000 : ℚ), 2⟩,
    ⟨(383124190521/1000000000000 : ℚ), (-20091647/156250000 : ℚ), (121595483/3125000000 : ℚ), 2⟩,
    ⟨(39004326349/100000000000 : ℚ), (-1553501947/10000000000 : ℚ), (12313871413/250000000000 : ℚ), 2⟩,
    ⟨(99093111233/250000000000 : ℚ), (-1777607653/10000000000 : ℚ), (58066527977/1000000000000 : ℚ), 2⟩,
    ⟨(40205078137/100000000000 : ℚ), (-245491951/1250000000 : ℚ), (65504337891/1000000000000 : ℚ), 2⟩,
    ⟨(407023587319/1000000000000 : ℚ), (-529230259/2500000000 : ℚ), (71692794123/1000000000000 : ℚ), 2⟩,
    ⟨(411242971941/1000000000000 : ℚ), (-2239965607/10000000000 : ℚ), (38363374327/500000000000 : ℚ), 2⟩,
    ⟨(82933660051/200000000000 : ℚ), (-2335646283/10000000000 : ℚ), (40338916253/500000000000 : ℚ), 2⟩,
    ⟨(104316646119/250000000000 : ℚ), (-2405867963/10000000000 : ℚ), (20899695751/250000000000 : ℚ), 2⟩,
    ⟨(419012801707/1000000000000 : ℚ), (-2451973143/10000000000 : ℚ), (85526611141/1000000000000 : ℚ), 2⟩,
    ⟨(209945067461/500000000000 : ℚ), (-247481753/1000000000 : ℚ), (86484820739/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-2477663429/10000000000 : ℚ), (86604332859/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (13615603933/40000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control264.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control264.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate264

namespace DiagonalRamsey.JointInheritedCertificate293
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4919735273/20000000000 : ℚ), (2694614125639/2500000000 : ℚ), (-265820352639231/1000000000000 : ℚ), 11⟩,
    ⟨(2468723037/10000000000 : ℚ), (1173406644073/10000000000 : ℚ), (-29392343094261/1000000000000 : ℚ), 8⟩,
    ⟨(49726971113/200000000000 : ℚ), (409077257809/10000000000 : ℚ), (-1309747852469/125000000000 : ℚ), 7⟩,
    ⟨(251257444907/1000000000000 : ℚ), (40068020459/2000000000 : ℚ), (-210669168827/40000000000 : ℚ), 6⟩,
    ⟨(127357407379/500000000000 : ℚ), (288668227/25000000 : ℚ), (-3122003528549/1000000000000 : ℚ), 5⟩,
    ⟨(129486834377/500000000000 : ℚ), (9143002291/1250000000 : ℚ), (-254519223709/125000000000 : ℚ), 5⟩,
    ⟨(52798598361/200000000000 : ℚ), (49226838697/10000000000 : ℚ), (-1411424397497/1000000000000 : ℚ), 4⟩,
    ⟨(134862222543/500000000000 : ℚ), (34515955431/10000000000 : ℚ), (-1019251012187/1000000000000 : ℚ), 4⟩,
    ⟨(17257051973/62500000000 : ℚ), (3111906383/1250000000 : ℚ), (-378468838153/500000000000 : ℚ), 4⟩,
    ⟨(283096627597/1000000000000 : ℚ), (18303272791/10000000000 : ℚ), (-28639529101/50000000000 : ℚ), 3⟩,
    ⟨(1453042877/5000000000 : ℚ), (1702176457/1250000000 : ℚ), (-219244885091/500000000000 : ℚ), 3⟩,
    ⟨(298576330813/1000000000000 : ℚ), (407420141/400000000 : ℚ), (-10545877081/31250000000 : ℚ), 3⟩,
    ⟨(61384631999/200000000000 : ℚ), (3804363021/5000000000 : ℚ), (-259512733271/1000000000000 : ℚ), 3⟩,
    ⟨(15778433921/50000000000 : ℚ), (5632808713/10000000000 : ℚ), (-198053719849/1000000000000 : ℚ), 3⟩,
    ⟨(324429625017/1000000000000 : ℚ), (4089967129/10000000000 : ℚ), (-74356173297/500000000000 : ℚ), 3⟩,
    ⟨(333420664029/1000000000000 : ℚ), (57325031/200000000 : ℚ), (-21696542631/200000000000 : ℚ), 3⟩,
    ⟨(342455206833/1000000000000 : ℚ), (188236411/1000000000 : ℚ), (-75249105087/1000000000000 : ℚ), 2⟩,
    ⟨(87861561461/250000000000 : ℚ), (1081960687/10000000000 : ℚ), (-23745258817/500000000000 : ℚ), 2⟩,
    ⟨(180153596221/500000000000 : ℚ), (424284613/10000000000 : ℚ), (-6023430819/250000000000 : ℚ), 2⟩,
    ⟨(368952710867/1000000000000 : ℚ), (-7537671/625000000 : ℚ), (-2115784809/500000000000 : ℚ), 2⟩,
    ⟨(377299540049/1000000000000 : ℚ), (-574985903/10000000000 : ℚ), (12718284827/1000000000000 : ℚ), 2⟩,
    ⟨(192633647731/500000000000 : ℚ), (-955639587/10000000000 : ℚ), (2722887311/100000000000 : ℚ), 2⟩,
    ⟨(78555848653/200000000000 : ℚ), (-1275309393/10000000000 : ℚ), (19831300701/500000000000 : ℚ), 2⟩,
    ⟨(199881519647/500000000000 : ℚ), (-385937873/2500000000 : ℚ), (25149351431/500000000000 : ℚ), 2⟩,
    ⟨(25384464111/62500000000 : ℚ), (-442118313/2500000000 : ℚ), (14838260961/250000000000 : ℚ), 2⟩,
    ⟨(25742679941/62500000000 : ℚ), (-1955267401/10000000000 : ℚ), (66992617027/1000000000000 : ℚ), 2⟩,
    ⟨(104225550527/250000000000 : ℚ), (-2108601149/10000000000 : ℚ), (73346274291/1000000000000 : ℚ), 2⟩,
    ⟨(52645132013/125000000000 : ℚ), (-55797539/250000000 : ℚ), (15702547991/200000000000 : ℚ), 2⟩,
    ⟨(212309212977/500000000000 : ℚ), (-93110613/400000000 : ℚ), (20641653757/250000000000 : ℚ), 2⟩,
    ⟨(427241015297/1000000000000 : ℚ), (-119905609/500000000 : ℚ), (342251413/4000000000 : ℚ), 2⟩,
    ⟨(214501783581/500000000000 : ℚ), (-2444295189/10000000000 : ℚ), (43770019101/500000000000 : ℚ), 2⟩,
    ⟨(429889107211/1000000000000 : ℚ), (-616794209/2500000000 : ℚ), (11065335069/125000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-617506829/2500000000 : ℚ), (1385081803/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (173091957649/500000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (43/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control293.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control293.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate293

namespace DiagonalRamsey.JointInheritedCertificate294
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(252664761249/1000000000000 : ℚ), (10875070819789/10000000000 : ℚ), (-27547845151873/100000000000 : ℚ), 11⟩,
    ⟨(31695786001/125000000000 : ℚ), (236816161813/2000000000 : ℚ), (-30460535172821/1000000000000 : ℚ), 8⟩,
    ⟨(255360659331/1000000000000 : ℚ), (412876815263/10000000000 : ℚ), (-1357373381913/125000000000 : ℚ), 7⟩,
    ⟨(129015297221/500000000000 : ℚ), (202246397217/10000000000 : ℚ), (-5458412311601/1000000000000 : ℚ), 6⟩,
    ⟨(52310076081/200000000000 : ℚ), (116595298787/10000000000 : ℚ), (-647156699609/200000000000 : ℚ), 5⟩,
    ⟨(132943059879/500000000000 : ℚ), (73878918223/10000000000 : ℚ), (-1055253264649/500000000000 : ℚ), 5⟩,
    ⟨(423431339/1562500000 : ℚ), (24868250029/5000000000 : ℚ), (-365777015733/250000000000 : ℚ), 4⟩,
    ⟨(69207745131/250000000000 : ℚ), (34885134999/10000000000 : ℚ), (-26417986429/25000000000 : ℚ), 4⟩,
    ⟨(17708418559/62500000000 : ℚ), (12585671789/5000000000 : ℚ), (-98114182767/125000000000 : ℚ), 4⟩,
    ⟨(290444571877/1000000000000 : ℚ), (4628712309/2500000000 : ℚ), (-18566185491/31250000000 : ℚ), 3⟩,
    ⟨(298092133341/1000000000000 : ℚ), (13782715653/10000000000 : ℚ), (-227491873027/500000000000 : ℚ), 3⟩,
    ⟨(153101865569/500000000000 : ℚ), (10316724233/10000000000 : ℚ), (-175170744193/500000000000 : ℚ), 3⟩,
    ⟨(314701246147/1000000000000 : ℚ), (308572373/400000000 : ℚ), (-269607003349/1000000000000 : ℚ), 3⟩,
    ⟨(323502842653/1000000000000 : ℚ), (5718782947/10000000000 : ℚ), (-102985553083/500000000000 : ℚ), 3⟩,
    ⟨(332523756471/1000000000000 : ℚ), (4160741659/10000000000 : ℚ), (-77447771957/500000000000 : ℚ), 3⟩,
    ⟨(341677111269/1000000000000 : ℚ), (2925117651/10000000000 : ℚ), (-11326466713/100000000000 : ℚ), 3⟩,
    ⟨(350874755237/1000000000000 : ℚ), (965910247/5000000000 : ℚ), (-2465165881/31250000000 : ℚ), 2⟩,
    ⟨(180014055017/500000000000 : ℚ), (1123931519/10000000000 : ℚ), (-50180576681/1000000000000 : ℚ), 2⟩,
    ⟨(92262255963/250000000000 : ℚ), (460269453/10000000000 : ℚ), (-25996142601/1000000000000 : ℚ), 2⟩,
    ⟨(377850620359/1000000000000 : ℚ), (-89423347/10000000000 : ℚ), (-1368530449/250000000000 : ℚ), 2⟩,
    ⟨(48293516921/125000000000 : ℚ), (-547674511/10000000000 : ℚ), (3007782789/250000000000 : ℚ), 2⟩,
    ⟨(98614933291/250000000000 : ℚ), (-931446163/10000000000 : ℚ), (13505265827/500000000000 : ℚ), 2⟩,
    ⟨(100526823657/250000000000 : ℚ), (-1253629789/10000000000 : ℚ), (19920170027/500000000000 : ℚ), 2⟩,
    ⟨(204608584781/500000000000 : ℚ), (-190511991/1250000000 : ℚ), (50810602329/1000000000000 : ℚ), 2⟩,
    ⟨(207860442991/500000000000 : ℚ), (-350088403/2000000000 : ℚ), (60145663769/1000000000000 : ℚ), 2⟩,
    ⟨(84311161909/200000000000 : ℚ), (-121158239/625000000 : ℚ), (68019178289/1000000000000 : ℚ), 2⟩,
    ⟨(426665746747/1000000000000 : ℚ), (-2092888477/10000000000 : ℚ), (3728261019/50000000000 : ℚ), 2⟩,
    ⟨(4310014861/10000000000 : ℚ), (-277122841/1250000000 : ℚ), (79886581273/1000000000000 : ℚ), 2⟩,
    ⟨(434521272063/1000000000000 : ℚ), (-462688981/2000000000 : ℚ), (84060983523/1000000000000 : ℚ), 2⟩,
    ⟨(218595603587/500000000000 : ℚ), (-2384219939/10000000000 : ℚ), (1089321411/12500000000 : ℚ), 2⟩,
    ⟨(219492789249/500000000000 : ℚ), (-2430678839/10000000000 : ℚ), (5573813147/62500000000 : ℚ), 2⟩,
    ⟨(439887105257/1000000000000 : ℚ), (-19169497/78125000 : ℚ), (9019244957/100000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-307070357/1250000000 : ℚ), (90318591933/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (42702952019/125000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control294.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control294.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate294

namespace DiagonalRamsey.JointInheritedCertificate295
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(259311606541/1000000000000 : ℚ), (10965196436941/10000000000 : ℚ), (-142531478850311/500000000000 : ℚ), 11⟩,
    ⟨(260229269927/1000000000000 : ℚ), (597017913081/5000000000 : ℚ), (-31520441436163/1000000000000 : ℚ), 8⟩,
    ⟨(131027879549/500000000000 : ℚ), (416418769513/10000000000 : ℚ), (-5618465290217/500000000000 : ℚ), 7⟩,
    ⟨(52954696793/200000000000 : ℚ), (102011105607/5000000000 : ℚ), (-1129694921253/200000000000 : ℚ), 6⟩,
    ⟨(268356271353/1000000000000 : ℚ), (7352818619/625000000 : ℚ), (-104641737461/31250000000 : ℚ), 5⟩,
    ⟨(272769617059/1000000000000 : ℚ), (4660126671/625000000 : ℚ), (-1066470667/488281250 : ℚ), 5⟩,
    ⟨(277971018153/1000000000000 : ℚ), (25104760939/5000000000 : ℚ), (-94639851161/62500000000 : ℚ), 4⟩,
    ⟨(283910382299/1000000000000 : ℚ), (8806785201/2500000000 : ℚ), (-1093742860343/1000000000000 : ℚ), 4⟩,
    ⟨(72632627543/250000000000 : ℚ), (1589159377/625000000 : ℚ), (-81251746601/100000000000 : ℚ), 4⟩,
    ⟨(297767646323/1000000000000 : ℚ), (58468477/31250000 : ℚ), (-307562614169/500000000000 : ℚ), 3⟩,
    ⟨(152776046587/500000000000 : ℚ), (1741832237/1250000000 : ℚ), (-471195656151/1000000000000 : ℚ), 3⟩,
    ⟨(313808882247/1000000000000 : ℚ), (5218459403/5000000000 : ℚ), (-36296168193/100000000000 : ℚ), 3⟩,
    ⟨(322458496149/1000000000000 : ℚ), (3905318647/5000000000 : ℚ), (-279470537637/1000000000000 : ℚ), 3⟩,
    ⟨(33141763437/100000000000 : ℚ), (1159373947/2000000000 : ℚ), (-213675711913/1000000000000 : ℚ), 3⟩,
    ⟨(42575001939/125000000000 : ℚ), (2112350933/5000000000 : ℚ), (-32176116163/200000000000 : ℚ), 3⟩,
    ⟨(10934912757/31250000000 : ℚ), (2978022361/10000000000 : ℚ), (-14732571109/125000000000 : ℚ), 3⟩,
    ⟨(359279482847/1000000000000 : ℚ), (988000457/5000000000 : ℚ), (-20586408131/250000000000 : ℚ), 2⟩,
    ⟨(368596675559/1000000000000 : ℚ), (1161182343/10000000000 : ℚ), (-1646981503/31250000000 : ℚ), 2⟩,
    ⟨(3777790567/10000000000 : ℚ), (1921831/39062500 : ℚ), (-6934690673/250000000000 : ℚ), 2⟩,
    ⟨(386738194921/1000000000000 : ℚ), (-62135691/10000000000 : ℚ), (-3281650163/500000000000 : ℚ), 2⟩,
    ⟨(395387808823/1000000000000 : ℚ), (-261972931/5000000000 : ℚ), (2872941331/250000000000 : ℚ), 2⟩,
    ⟨(50455574737/125000000000 : ℚ), (-22764481/250000000 : ℚ), (13467554841/500000000000 : ℚ), 2⟩,
    ⟨(411429044747/1000000000000 : ℚ), (-1235063873/10000000000 : ℚ), (20078378109/500000000000 : ℚ), 2⟩,
    ⟨(209333090449/500000000000 : ℚ), (-753688707/5000000000 : ℚ), (25728747133/500000000000 : ℚ), 2⟩,
    ⟨(106321577193/250000000000 : ℚ), (-867600851/5000000000 : ℚ), (30535047967/500000000000 : ℚ), 2⟩,
    ⟨(431225672917/1000000000000 : ℚ), (-1924467111/10000000000 : ℚ), (69174836071/1000000000000 : ℚ), 2⟩,
    ⟨(436427074011/1000000000000 : ℚ), (-1039874601/5000000000 : ℚ), (75910981801/1000000000000 : ℚ), 2⟩,
    ⟨(220420209859/500000000000 : ℚ), (-551139927/2500000000 : ℚ), (2034634199/25000000000 : ℚ), 2⟩,
    ⟨(88884641421/200000000000 : ℚ), (-287695063/1250000000 : ℚ), (2677463141/31250000000 : ℚ), 2⟩,
    ⟨(447140931973/1000000000000 : ℚ), (-593180039/2500000000 : ℚ), (22212736069/250000000000 : ℚ), 2⟩,
    ⟨(56120927643/125000000000 : ℚ), (-302428313/1250000000 : ℚ), (90943628363/1000000000000 : ℚ), 2⟩,
    ⟨(449885084529/1000000000000 : ℚ), (-2442564363/10000000000 : ℚ), (91983502801/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-305680827/1250000000 : ℚ), (736905501/8000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (84267590039/250000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control295.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control295.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate295

namespace DiagonalRamsey.JointInheritedCertificate296
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(66528179809/250000000000 : ℚ), (2213494029851/2000000000 : ℚ), (-147630855647779/500000000000 : ℚ), 11⟩,
    ⟨(53409155371/200000000000 : ℚ), (18833374677/156250000 : ℚ), (-32648465683613/1000000000000 : ℚ), 8⟩,
    ⟨(420160791/1562500000 : ℚ), (420441660281/10000000000 : ℚ), (-11639302267529/1000000000000 : ℚ), 7⟩,
    ⟨(271666222217/1000000000000 : ℚ), (206040923661/10000000000 : ℚ), (-5850929047961/1000000000000 : ℚ), 6⟩,
    ⟨(55061822509/200000000000 : ℚ), (29709975171/2500000000 : ℚ), (-3468727858777/1000000000000 : ℚ), 5⟩,
    ⟨(279796494197/1000000000000 : ℚ), (75340650349/10000000000 : ℚ), (-452538397849/200000000000 : ℚ), 5⟩,
    ⟨(71271287809/250000000000 : ℚ), (50749661501/10000000000 : ℚ), (-784431037967/500000000000 : ℚ), 4⟩,
    ⟨(291124151003/1000000000000 : ℚ), (17809256259/5000000000 : ℚ), (-566679580683/500000000000 : ℚ), 4⟩,
    ⟨(297855334629/1000000000000 : ℚ), (25719321143/10000000000 : ℚ), (-842112899013/1000000000000 : ℚ), 4⟩,
    ⟨(61042775427/200000000000 : ℚ), (18934325629/10000000000 : ℚ), (-15942589867/25000000000 : ℚ), 3⟩,
    ⟨(39141113967/125000000000 : ℚ), (141100243/100000000 : ℚ), (-488673958683/1000000000000 : ℚ), 3⟩,
    ⟨(160762106161/500000000000 : ℚ), (2644035559/2500000000 : ℚ), (-376620960571/1000000000000 : ℚ), 3⟩,
    ⟨(330318927557/1000000000000 : ℚ), (3961329899/5000000000 : ℚ), (-290199592969/1000000000000 : ℚ), 3⟩,
    ⟨(339428359527/1000000000000 : ℚ), (2944037543/5000000000 : ℚ), (-55527697967/250000000000 : ℚ), 3⟩,
    ⟨(174382389711/500000000000 : ℚ), (4299760619/10000000000 : ℚ), (-41872347567/250000000000 : ℚ), 3⟩,
    ⟨(71647654483/200000000000 : ℚ), (1520210999/5000000000 : ℚ), (-61497438841/500000000000 : ℚ), 3⟩,
    ⟨(367757603589/1000000000000 : ℚ), (2028390277/10000000000 : ℚ), (-17255074947/200000000000 : ℚ), 2⟩,
    ⟨(188615548291/500000000000 : ℚ), (75350143/625000000 : ℚ), (-55639451991/1000000000000 : ℚ), 2⟩,
    ⟨(386567516477/1000000000000 : ℚ), (530030753/10000000000 : ℚ), (-7462129507/250000000000 : ℚ), 2⟩,
    ⟨(395676948447/1000000000000 : ℚ), (-7304451/2500000000 : ℚ), (-7981666097/1000000000000 : ℚ), 2⟩,
    ⟨(202235831841/500000000000 : ℚ), (-247577851/5000000000 : ℚ), (1331820021/125000000000 : ℚ), 2⟩,
    ⟨(103216741067/250000000000 : ℚ), (-885118937/10000000000 : ℚ), (26587782573/1000000000000 : ℚ), 2⟩,
    ⟨(420781998869/1000000000000 : ℚ), (-242458033/2000000000 : ℚ), (160890873/4000000000 : ℚ), 2⟩,
    ⟨(3425124331/8000000000 : ℚ), (-1486768323/10000000000 : ℚ), (6483954759/125000000000 : ℚ), 2⟩,
    ⟨(434871725001/1000000000000 : ℚ), (-1716330831/10000000000 : ℚ), (61776329423/1000000000000 : ℚ), 2⟩,
    ⟨(13778460149/31250000000 : ℚ), (-1906983519/10000000000 : ℚ), (70124160149/1000000000000 : ℚ), 2⟩,
    ⟨(446199381807/1000000000000 : ℚ), (-2063361379/10000000000 : ℚ), (3852998343/50000000000 : ℚ), 2⟩,
    ⟨(450686763459/1000000000000 : ℚ), (-2189022623/10000000000 : ℚ), (82694928119/1000000000000 : ℚ), 2⟩,
    ⟨(454329653787/1000000000000 : ℚ), (-457332987/2000000000 : ℚ), (43556604221/500000000000 : ℚ), 2⟩,
    ⟨(114273242441/250000000000 : ℚ), (-2358283729/10000000000 : ℚ), (90376910717/1000000000000 : ℚ), 2⟩,
    ⟨(458950099149/1000000000000 : ℚ), (-601321493/2500000000 : ℚ), (92529700879/1000000000000 : ℚ), 2⟩,
    ⟨(14371348649/31250000000 : ℚ), (-97142751/400000000 : ℚ), (46799674931/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-2431469007/10000000000 : ℚ), (4686637181/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (332424361881/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control296.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control296.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate296

namespace DiagonalRamsey.JointInheritedCertificate297
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(136471902193/500000000000 : ℚ), (1396169724801/1250000000 : ℚ), (-305622592252549/1000000000000 : ℚ), 11⟩,
    ⟨(273892112001/1000000000000 : ℚ), (608296451043/5000000000 : ℚ), (-6758875865987/200000000000 : ℚ), 8⟩,
    ⟨(27577959451/100000000000 : ℚ), (84889749291/2000000000 : ℚ), (-12048024903629/1000000000000 : ℚ), 7⟩,
    ⟨(11143522977/40000000000 : ℚ), (208051379903/10000000000 : ℚ), (-1514139009713/250000000000 : ℚ), 6⟩,
    ⟨(5645810091/20000000000 : ℚ), (120029546019/10000000000 : ℚ), (-897696332279/250000000000 : ℚ), 5⟩,
    ⟨(286851228457/1000000000000 : ℚ), (38057838797/5000000000 : ℚ), (-1171228087317/500000000000 : ℚ), 5⟩,
    ⟨(292226323883/1000000000000 : ℚ), (12821773881/2500000000 : ℚ), (-162431114059/100000000000 : ℚ), 4⟩,
    ⟨(7459100643/25000000000 : ℚ), (36007731083/10000000000 : ℚ), (-117356268077/100000000000 : ℚ), 4⟩,
    ⟨(61041044909/200000000000 : ℚ), (6502575673/2500000000 : ℚ), (-872137626447/1000000000000 : ℚ), 4⟩,
    ⟨(9771376121/31250000000 : ℚ), (9578599617/5000000000 : ℚ), (-660601247809/1000000000000 : ℚ), 3⟩,
    ⟨(320728434661/1000000000000 : ℚ), (7142014803/5000000000 : ℚ), (-126598041381/250000000000 : ℚ), 3⟩,
    ⟨(164630474477/500000000000 : ℚ), (1339266921/1250000000 : ℚ), (-48807657793/125000000000 : ℚ), 3⟩,
    ⟨(169099702987/500000000000 : ℚ), (8033550437/10000000000 : ℚ), (-150532520803/500000000000 : ℚ), 3⟩,
    ⟨(347457723493/1000000000000 : ℚ), (1494556101/2500000000 : ℚ), (-230647856499/1000000000000 : ℚ), 3⟩,
    ⟨(356946738853/1000000000000 : ℚ), (4373823081/10000000000 : ℚ), (-87086650413/500000000000 : ℚ), 3⟩,
    ⟨(366575067647/1000000000000 : ℚ), (3101873447/10000000000 : ℚ), (-32045766939/250000000000 : ℚ), 3⟩,
    ⟨(5878905997/15625000000 : ℚ), (207987101/1000000000 : ℚ), (-18048424223/200000000000 : ℚ), 2⟩,
    ⟨(385878312603/1000000000000 : ℚ), (624573399/5000000000 : ℚ), (-915609463/15625000000 : ℚ), 2⟩,
    ⟨(395367327963/1000000000000 : ℚ), (567225703/10000000000 : ℚ), (-3197095733/100000000000 : ℚ), 2⟩,
    ⟨(202312822741/500000000000 : ℚ), (1438819/5000000000 : ℚ), (-9404017271/1000000000000 : ℚ), 2⟩,
    ⟨(413564102501/1000000000000 : ℚ), (-29197897/625000000 : ℚ), (9820358381/1000000000000 : ℚ), 2⟩,
    ⟨(211048308397/500000000000 : ℚ), (-215110069/2500000000 : ℚ), (13124532531/500000000000 : ℚ), 2⟩,
    ⟨(430141015583/1000000000000 : ℚ), (-595140527/5000000000 : ℚ), (5037721717/125000000000 : ℚ), 2⟩,
    ⟨(437619826911/1000000000000 : ℚ), (-733454341/5000000000 : ℚ), (26151222577/500000000000 : ℚ), 2⟩,
    ⟨(55557628217/125000000000 : ℚ), (-1698196031/10000000000 : ℚ), (3906378179/62500000000 : ℚ), 2⟩,
    ⟨(450598727573/1000000000000 : ℚ), (-1890224309/10000000000 : ℚ), (17773796963/250000000000 : ℚ), 2⟩,
    ⟨(455973822999/1000000000000 : ℚ), (-2047687911/10000000000 : ℚ), (78232373103/1000000000000 : ℚ), 2⟩,
    ⟨(230267273453/500000000000 : ℚ), (-2174191517/10000000000 : ℚ), (42014608623/500000000000 : ℚ), 2⟩,
    ⟨(46423697703/100000000000 : ℚ), (-142029289/625000000 : ℚ), (2767915409/31250000000 : ℚ), 2⟩,
    ⟨(93409091389/200000000000 : ℚ), (-468908301/2000000000 : ℚ), (22982313753/250000000000 : ℚ), 2⟩,
    ⟨(93786587891/200000000000 : ℚ), (-597959067/2500000000 : ℚ), (94142584687/1000000000000 : ℚ), 2⟩,
    ⟨(46988124707/100000000000 : ℚ), (-2415262323/10000000000 : ℚ), (95242218553/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2418180321/10000000000 : ℚ), (47689673561/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (327752398011/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control297.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control297.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate297

namespace DiagonalRamsey.JointInheritedCertificate298
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(69950632899/250000000000 : ℚ), (11270697454073/10000000000 : ℚ), (-316138556297869/1000000000000 : ℚ), 11⟩,
    ⟨(140382978091/500000000000 : ℚ), (1227788613831/10000000000 : ℚ), (-34957395419583/1000000000000 : ℚ), 8⟩,
    ⟨(5653670541/20000000000 : ℚ), (214216776879/5000000000 : ℚ), (-3115702967631/250000000000 : ℚ), 7⟩,
    ⟨(285536776943/1000000000000 : ℚ), (21005027639/1000000000 : ℚ), (-313260342007/50000000000 : ℚ), 6⟩,
    ⟨(144649113753/500000000000 : ℚ), (15151504349/1250000000 : ℚ), (-464327002137/125000000000 : ℚ), 5⟩,
    ⟨(36741456739/125000000000 : ℚ), (38442884647/5000000000 : ℚ), (-484672244289/200000000000 : ℚ), 5⟩,
    ⟨(299392433733/1000000000000 : ℚ), (51820863971/10000000000 : ℚ), (-840269042017/500000000000 : ℚ), 4⟩,
    ⟨(12225119067/40000000000 : ℚ), (36394074071/10000000000 : ℚ), (-1214317069459/1000000000000 : ℚ), 4⟩,
    ⟨(312578231049/1000000000000 : ℚ), (26298930647/10000000000 : ℚ), (-902562242509/1000000000000 : ℚ), 4⟩,
    ⟨(320176262107/1000000000000 : ℚ), (19378080131/10000000000 : ℚ), (-341896828259/500000000000 : ℚ), 3⟩,
    ⟨(328348896657/1000000000000 : ℚ), (903518797/625000000 : ℚ), (-524329300187/1000000000000 : ℚ), 3⟩,
    ⟨(337017427759/1000000000000 : ℚ), (5425292529/5000000000 : ℚ), (-4044642841/10000000000 : ℚ), 3⟩,
    ⟨(346098372721/1000000000000 : ℚ), (8143041877/10000000000 : ℚ), (-312050642767/1000000000000 : ℚ), 3⟩,
    ⟨(177752138539/500000000000 : ℚ), (3033543037/5000000000 : ℚ), (-119636145197/500000000000 : ℚ), 3⟩,
    ⟨(36514455683/100000000000 : ℚ), (4446685949/10000000000 : ℚ), (-180919001327/1000000000000 : ℚ), 3⟩,
    ⟨(374926370813/1000000000000 : ℚ), (3162196163/10000000000 : ℚ), (-133412891127/1000000000000 : ℚ), 3⟩,
    ⟨(384755514811/1000000000000 : ℚ), (1065140541/5000000000 : ℚ), (-94234502203/1000000000000 : ℚ), 2⟩,
    ⟨(78907465759/200000000000 : ℚ), (1291669049/10000000000 : ℚ), (-61571433257/1000000000000 : ℚ), 2⟩,
    ⟨(404177608547/1000000000000 : ℚ), (603439359/10000000000 : ℚ), (-8524015881/250000000000 : ℚ), 2⟩,
    ⟨(51697939113/125000000000 : ℚ), (850673/250000000 : ℚ), (-10820862981/1000000000000 : ℚ), 2⟩,
    ⟨(211332228933/500000000000 : ℚ), (-440092713/10000000000 : ℚ), (1799640211/200000000000 : ℚ), 2⟩,
    ⟨(53916623621/125000000000 : ℚ), (-418325371/5000000000 : ℚ), (6481903101/250000000000 : ℚ), 2⟩,
    ⟨(219752811759/500000000000 : ℚ), (-1169137773/10000000000 : ℚ), (40402246263/1000000000000 : ℚ), 2⟩,
    ⟨(27943978411/62500000000 : ℚ), (-723947231/5000000000 : ℚ), (5275795479/100000000000 : ℚ), 2⟩,
    ⟨(9081078179/20000000000 : ℚ), (-336177771/2000000000 : ℚ), (63255056427/1000000000000 : ℚ), 2⟩,
    ⟨(460289451891/1000000000000 : ℚ), (-23428467/125000000 : ℚ), (4505969373/62500000000 : ℚ), 2⟩,
    ⟨(465750231713/1000000000000 : ℚ), (-1016406827/5000000000 : ℚ), (79435619669/1000000000000 : ℚ), 2⟩,
    ⟨(470383658119/1000000000000 : ℚ), (-1080074407/5000000000 : ℚ), (85395514613/1000000000000 : ℚ), 2⟩,
    ⟨(237072554341/500000000000 : ℚ), (-2259052107/10000000000 : ℚ), (22516561019/250000000000 : ℚ), 2⟩,
    ⟨(19079934343/40000000000 : ℚ), (-2331572633/10000000000 : ℚ), (46757532747/500000000000 : ℚ), 2⟩,
    ⟨(478915929443/1000000000000 : ℚ), (-594788907/2500000000 : ℚ), (95789314199/1000000000000 : ℚ), 2⟩,
    ⟨(479879354029/1000000000000 : ℚ), (-1201361397/5000000000 : ℚ), (4845955839/50000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2405658291/10000000000 : ℚ), (12132500363/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (40381975799/125000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control298.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control298.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate298

namespace DiagonalRamsey.JointInheritedCertificate299
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(11749242047/40000000000 : ℚ), (71776090487/62500000 : ℚ), (-338147576390053/1000000000000 : ℚ), 11⟩,
    ⟨(294723693981/1000000000000 : ℚ), (10010995827/80000000 : ℚ), (-1869578347729/50000000000 : ℚ), 8⟩,
    ⟨(2966994199/10000000000 : ℚ), (87365877381/2000000000 : ℚ), (-6665505488809/500000000000 : ℚ), 7⟩,
    ⟨(299639201611/1000000000000 : ℚ), (42852534471/2000000000 : ℚ), (-1675495998271/250000000000 : ℚ), 6⟩,
    ⟨(303514727409/1000000000000 : ℚ), (61852286539/5000000000 : ℚ), (-3973874977831/1000000000000 : ℚ), 5⟩,
    ⟨(308288673863/1000000000000 : ℚ), (7850949759/1000000000 : ℚ), (-2592783805597/1000000000000 : ℚ), 5⟩,
    ⟨(156957532629/500000000000 : ℚ), (26473338127/5000000000 : ℚ), (-71932611347/40000000000 : ℚ), 4⟩,
    ⟨(320339716369/1000000000000 : ℚ), (18604613853/5000000000 : ℚ), (-1299715832709/1000000000000 : ℚ), 4⟩,
    ⟨(163750377147/500000000000 : ℚ), (3363516999/1250000000 : ℚ), (-9663465159/10000000000 : ℚ), 4⟩,
    ⟨(83832303581/250000000000 : ℚ), (3968892361/2000000000 : ℚ), (-36622346121/50000000000 : ℚ), 3⟩,
    ⟨(343749704109/1000000000000 : ℚ), (14820170407/10000000000 : ℚ), (-14049740983/25000000000 : ℚ), 3⟩,
    ⟨(352681129729/1000000000000 : ℚ), (5569440949/5000000000 : ℚ), (-433897275347/1000000000000 : ℚ), 3⟩,
    ⟨(5656835573/15625000000 : ℚ), (8374438481/10000000000 : ℚ), (-335175309891/1000000000000 : ℚ), 3⟩,
    ⟨(92932159551/250000000000 : ℚ), (1563729243/2500000000 : ℚ), (-16091408431/62500000000 : ℚ), 3⟩,
    ⟨(381661283141/1000000000000 : ℚ), (4600710989/10000000000 : ℚ), (-39036976367/200000000000 : ℚ), 3⟩,
    ⟨(195869877341/500000000000 : ℚ), (411213323/1250000000 : ℚ), (-144514137247/1000000000000 : ℚ), 3⟩,
    ⟨(401866991637/1000000000000 : ℚ), (2236817999/10000000000 : ℚ), (-102754086967/1000000000000 : ℚ), 2⟩,
    ⟨(205972731589/500000000000 : ℚ), (1381504489/10000000000 : ℚ), (-67964696891/1000000000000 : ℚ), 2⟩,
    ⟨(210939054057/500000000000 : ℚ), (679906993/10000000000 : ℚ), (-1936219031/50000000000 : ℚ), 2⟩,
    ⟨(215784634823/500000000000 : ℚ), (4987743/500000000 : ℚ), (-2795051183/200000000000 : ℚ), 2⟩,
    ⟨(44092561659/100000000000 : ℚ), (-76602909/2000000000 : ℚ), (1770037741/250000000000 : ℚ), 2⟩,
    ⟨(44985704221/100000000000 : ℚ), (-393273967/5000000000 : ℚ), (25049419923/1000000000000 : ℚ), 2⟩,
    ⟨(229138765997/500000000000 : ℚ), (-112465987/1000000000 : ℚ), (40399348697/1000000000000 : ℚ), 2⟩,
    ⟨(58263249003/125000000000 : ℚ), (-1407945467/10000000000 : ℚ), (6686347311/125000000000 : ℚ), 2⟩,
    ⟨(9465340599/20000000000 : ℚ), (-822286801/5000000000 : ℚ), (4037730633/62500000000 : ℚ), 2⟩,
    ⟨(479691681061/1000000000000 : ℚ), (-92042973/500000000 : ℚ), (9244443213/125000000000 : ℚ), 2⟩,
    ⟨(60664759057/125000000000 : ℚ), (-2001681977/10000000000 : ℚ), (5107178233/62500000000 : ℚ), 2⟩,
    ⟨(49009201891/100000000000 : ℚ), (-85231613/400000000 : ℚ), (11001409357/125000000000 : ℚ), 2⟩,
    ⟨(123491886177/250000000000 : ℚ), (-44620589/200000000 : ℚ), (5808950683/62500000000 : ℚ), 2⟩,
    ⟨(496907326419/1000000000000 : ℚ), (-288063157/1250000000 : ℚ), (96583424897/1000000000000 : ℚ), 2⟩,
    ⟨(249441526169/500000000000 : ℚ), (-2352703493/10000000000 : ℚ), (98983176627/1000000000000 : ℚ), 2⟩,
    ⟨(499875695143/1000000000000 : ℚ), (-2376571909/10000000000 : ℚ), (50087557087/500000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2379544767/10000000000 : ℚ), (100323738601/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (313519180677/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control299.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control299.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate299

namespace DiagonalRamsey.JointInheritedCertificate300
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(48119247/156250000 : ℚ), (11713814714243/10000000000 : ℚ), (-361605259431259/1000000000000 : ℚ), 11⟩,
    ⟨(308983580741/1000000000000 : ℚ), (1276748521943/10000000000 : ℚ), (-39986085157599/1000000000000 : ℚ), 8⟩,
    ⟨(311014553613/1000000000000 : ℚ), (445863435487/10000000000 : ℚ), (-7128246925443/500000000000 : ℚ), 7⟩,
    ⟨(314036540037/1000000000000 : ℚ), (218796512171/10000000000 : ℚ), (-447978328113/62500000000 : ℚ), 6⟩,
    ⟨(318020436633/1000000000000 : ℚ), (63194129029/5000000000 : ℚ), (-2125172928643/500000000000 : ℚ), 5⟩,
    ⟨(161463938149/500000000000 : ℚ), (10032310201/1250000000 : ℚ), (-2773509709409/1000000000000 : ℚ), 5⟩,
    ⟨(65742319541/200000000000 : ℚ), (54159914267/10000000000 : ℚ), (-962000774481/500000000000 : ℚ), 4⟩,
    ⟨(41914487557/125000000000 : ℚ), (19044069977/5000000000 : ℚ), (-1390898262157/1000000000000 : ℚ), 4⟩,
    ⟨(5354330961/15625000000 : ℚ), (27565350279/10000000000 : ℚ), (-1034498274017/1000000000000 : ℚ), 4⟩,
    ⟨(35072454769/100000000000 : ℚ), (10173937731/5000000000 : ℚ), (-98059871221/125000000000 : ℚ), 3⟩,
    ⟨(179690249239/500000000000 : ℚ), (15213143967/10000000000 : ℚ), (-150578285437/250000000000 : ℚ), 3⟩,
    ⟨(368561672329/1000000000000 : ℚ), (715649623/625000000 : ℚ), (-232730262343/500000000000 : ℚ), 3⟩,
    ⟨(378179649521/1000000000000 : ℚ), (8624577731/10000000000 : ℚ), (-90006068849/250000000000 : ℚ), 3⟩,
    ⟨(97035450919/250000000000 : ℚ), (1291606407/2000000000 : ℚ), (-138531061869/500000000000 : ℚ), 3⟩,
    ⟨(398352193803/1000000000000 : ℚ), (4767306939/10000000000 : ℚ), (-21061213781/100000000000 : ℚ), 3⟩,
    ⟨(51089061033/125000000000 : ℚ), (685526881/2000000000 : ℚ), (-156579216253/1000000000000 : ℚ), 3⟩,
    ⟨(5239036397/12500000000 : ℚ), (1176023559/5000000000 : ℚ), (-112078659741/1000000000000 : ℚ), 2⟩,
    ⟨(21474160311/50000000000 : ℚ), (295727989/2000000000 : ℚ), (-75034297127/1000000000000 : ℚ), 2⟩,
    ⟨(109923399087/250000000000 : ℚ), (190636233/2500000000 : ℚ), (-10981069457/250000000000 : ℚ), 2⟩,
    ⟨(224827875251/500000000000 : ℚ), (170732721/10000000000 : ℚ), (-17615614487/1000000000000 : ℚ), 2⟩,
    ⟨(91854745539/200000000000 : ℚ), (-20089887/625000000 : ℚ), (4746254447/1000000000000 : ℚ), 2⟩,
    ⟨(234227450773/500000000000 : ℚ), (-732561599/10000000000 : ℚ), (23812845193/1000000000000 : ℚ), 2⟩,
    ⟨(238555426167/500000000000 : ℚ), (-1076800801/10000000000 : ℚ), (20042558863/500000000000 : ℚ), 2⟩,
    ⟨(12128955463/25000000000 : ℚ), (-85314063/625000000 : ℚ), (53950687167/1000000000000 : ℚ), 2⟩,
    ⟨(30782468723/62500000000 : ℚ), (-802809793/5000000000 : ℚ), (32855314499/500000000000 : ℚ), 2⟩,
    ⟨(499123802319/1000000000000 : ℚ), (-90253551/500000000 : ℚ), (37799531051/500000000000 : ℚ), 2⟩,
    ⟨(252453761863/500000000000 : ℚ), (-246049189/1250000000 : ℚ), (83797623723/1000000000000 : ℚ), 2⟩,
    ⟨(509814963391/1000000000000 : ℚ), (-1049721133/5000000000 : ℚ), (22611564951/250000000000 : ℚ), 2⟩,
    ⟨(513798859987/1000000000000 : ℚ), (-2201144109/10000000000 : ℚ), (95651296289/1000000000000 : ℚ), 2⟩,
    ⟨(516820846411/1000000000000 : ℚ), (-2275666449/10000000000 : ℚ), (99491450533/1000000000000 : ℚ), 2⟩,
    ⟨(518851819283/1000000000000 : ℚ), (-1162269471/5000000000 : ℚ), (1275277871/12500000000 : ℚ), 2⟩,
    ⟨(64984027403/125000000000 : ℚ), (-2348737577/10000000000 : ℚ), (12909876611/125000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-2351751391/10000000000 : ℚ), (25858927987/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (2373271139/7812500000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control300.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control300.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate300

namespace DiagonalRamsey.JointInheritedCertificate301
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(119700086047/500000000000 : ℚ), (10687808598389/10000000000 : ℚ), (-256532108744493/1000000000000 : ℚ), 11⟩,
    ⟨(120134642777/500000000000 : ℚ), (581696463173/5000000000 : ℚ), (-5673026112771/200000000000 : ℚ), 8⟩,
    ⟨(241999142437/1000000000000 : ℚ), (40551368067/1000000000 : ℚ), (-10111648399123/1000000000000 : ℚ), 7⟩,
    ⟨(61143270819/250000000000 : ℚ), (39710573849/2000000000 : ℚ), (-1270617017587/250000000000 : ℚ), 6⟩,
    ⟨(61991579903/250000000000 : ℚ), (114410259679/10000000000 : ℚ), (-3012663663669/1000000000000 : ℚ), 5⟩,
    ⟨(126073086363/500000000000 : ℚ), (9056973183/1250000000 : ℚ), (-982366321379/500000000000 : ℚ), 5⟩,
    ⟨(128536194173/500000000000 : ℚ), (1218747343/250000000 : ℚ), (-680902820959/500000000000 : ℚ), 4⟩,
    ⟨(262697524323/1000000000000 : ℚ), (17085385123/5000000000 : ℚ), (-983304678829/1000000000000 : ℚ), 4⟩,
    ⟨(67241851881/250000000000 : ℚ), (12318676909/5000000000 : ℚ), (-730122228621/1000000000000 : ℚ), 4⟩,
    ⟨(34477706943/125000000000 : ℚ), (9052927083/5000000000 : ℚ), (-552370897991/1000000000000 : ℚ), 3⟩,
    ⟨(283194258229/1000000000000 : ℚ), (13463353/10000000 : ℚ), (-211360244703/500000000000 : ℚ), 3⟩,
    ⟨(58202842677/200000000000 : ℚ), (2515841921/2500000000 : ℚ), (-32518299099/100000000000 : ℚ), 3⟩,
    ⟨(299206210569/1000000000000 : ℚ), (938823599/1250000000 : ℚ), (-62475712799/250000000000 : ℚ), 3⟩,
    ⟨(307691356369/1000000000000 : ℚ), (2776507357/5000000000 : ℚ), (-95269990233/500000000000 : ℚ), 3⟩,
    ⟨(158193967097/500000000000 : ℚ), (1006095169/2500000000 : ℚ), (-142869141989/1000000000000 : ℚ), 3⟩,
    ⟨(81303047811/250000000000 : ℚ), (2811786451/10000000000 : ℚ), (-51994979247/500000000000 : ℚ), 3⟩,
    ⟨(3340791451/10000000000 : ℚ), (918339097/5000000000 : ℚ), (-17965294093/250000000000 : ℚ), 2⟩,
    ⟨(6858068043/20000000000 : ℚ), (521625589/5000000000 : ℚ), (-9003101517/200000000000 : ℚ), 2⟩,
    ⟨(14063999199/40000000000 : ℚ), (3129179/80000000 : ℚ), (-22379221587/1000000000000 : ℚ), 2⟩,
    ⟨(14403405031/40000000000 : ℚ), (-116619/7812500 : ℚ), (-63093757/20000000000 : ℚ), 2⟩,
    ⟨(368277122959/1000000000000 : ℚ), (-75008029/1250000000 : ℚ), (207157163/15625000000 : ℚ), 2⟩,
    ⟨(75219415623/200000000000 : ℚ), (-195565423/2000000000 : ℚ), (27314888681/1000000000000 : ℚ), 2⟩,
    ⟨(479337101/1250000000 : ℚ), (-647584823/5000000000 : ℚ), (9841230367/250000000000 : ℚ), 2⟩,
    ⟨(19516196441/50000000000 : ℚ), (-780870339/5000000000 : ℚ), (12419256923/250000000000 : ℚ), 2⟩,
    ⟨(396593812021/1000000000000 : ℚ), (-1784963083/10000000000 : ℚ), (913421163/15625000000 : ℚ), 2⟩,
    ⟨(201109473999/500000000000 : ℚ), (-1970562973/10000000000 : ℚ), (13174264501/200000000000 : ℚ), 2⟩,
    ⟨(203572581809/500000000000 : ℚ), (-424591029/2000000000 : ℚ), (18009498033/250000000000 : ℚ), 2⟩,
    ⟨(102831254183/250000000000 : ℚ), (-1122762869/5000000000 : ℚ), (15410761079/200000000000 : ℚ), 2⟩,
    ⟨(103679563267/250000000000 : ℚ), (-2340839949/10000000000 : ℚ), (40495193167/500000000000 : ℚ), 2⟩,
    ⟨(417292193907/1000000000000 : ℚ), (-2410793933/10000000000 : ℚ), (83900466457/1000000000000 : ℚ), 2⟩,
    ⟨(41902205079/100000000000 : ℚ), (-1228361983/5000000000 : ℚ), (17164210239/200000000000 : ℚ), 2⟩,
    ⟨(1679564657/4000000000 : ℚ), (-15496761/62500000 : ℚ), (43387820199/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-31028961/125000000 : ℚ), (43447349997/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (350685539537/1000000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (21/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control301.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control301.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate301

namespace DiagonalRamsey.JointInheritedCertificate335
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(254426780763/1000000000000 : ℚ), (10771984173177/10000000000 : ℚ), (-274759058338909/1000000000000 : ℚ), 11⟩,
    ⟨(25531982803/100000000000 : ℚ), (586553510739/5000000000 : ℚ), (-30380191718433/1000000000000 : ℚ), 8⟩,
    ⟨(257097322031/1000000000000 : ℚ), (409167928991/10000000000 : ℚ), (-10829765790097/1000000000000 : ℚ), 7⟩,
    ⟨(129871072263/500000000000 : ℚ), (100246117129/5000000000 : ℚ), (-5443273694827/1000000000000 : ℚ), 6⟩,
    ⟨(26322882443/100000000000 : ℚ), (115619691277/10000000000 : ℚ), (-1613219251951/500000000000 : ℚ), 5⟩,
    ⟨(267523783109/1000000000000 : ℚ), (73281530051/10000000000 : ℚ), (-210409319977/100000000000 : ℚ), 5⟩,
    ⟨(136292828881/500000000000 : ℚ), (24673130187/5000000000 : ℚ), (-1822975817/1250000000 : ℚ), 4⟩,
    ⟨(27836569977/100000000000 : ℚ), (34617807581/10000000000 : ℚ), (-210610102711/200000000000 : ℚ), 4⟩,
    ⟨(284808244169/1000000000000 : ℚ), (39969999/16000000 : ℚ), (-97744193201/125000000000 : ℚ), 4⟩,
    ⟨(145925622867/500000000000 : ℚ), (9187718687/5000000000 : ℚ), (-591657679733/1000000000000 : ℚ), 3⟩,
    ⟨(299426876511/1000000000000 : ℚ), (854858119/625000000 : ℚ), (-452890570567/1000000000000 : ℚ), 3⟩,
    ⟨(38432772379/125000000000 : ℚ), (5117901301/5000000000 : ℚ), (-348527716851/1000000000000 : ℚ), 3⟩,
    ⟨(315879768943/1000000000000 : ℚ), (306025241/400000000 : ℚ), (-268012571831/1000000000000 : ℚ), 3⟩,
    ⟨(81149645063/250000000000 : ℚ), (5667737353/10000000000 : ℚ), (-204553610669/1000000000000 : ℚ), 3⟩,
    ⟨(166767323019/500000000000 : ℚ), (1029785103/2500000000 : ℚ), (-7681211199/50000000000 : ℚ), 3⟩,
    ⟨(68520381421/200000000000 : ℚ), (2890710719/10000000000 : ℚ), (-56058309807/500000000000 : ℚ), 3⟩,
    ⟨(35171304077/100000000000 : ℚ), (1902989787/10000000000 : ℚ), (-19460756089/250000000000 : ℚ), 2⟩,
    ⟨(90195075459/250000000000 : ℚ), (549746009/5000000000 : ℚ), (-123075743/2500000000 : ℚ), 2⟩,
    ⟨(369716367623/1000000000000 : ℚ), (219668719/5000000000 : ℚ), (-12563368027/500000000000 : ℚ), 2⟩,
    ⟨(378435178931/1000000000000 : ℚ), (-10751911/1000000000 : ℚ), (-584538663/125000000000 : ℚ), 2⟩,
    ⟨(193426384421/500000000000 : ℚ), (-56345351/1000000000 : ℚ), (12765318117/1000000000000 : ℚ), 2⟩,
    ⟨(98722017841/250000000000 : ℚ), (-945318179/10000000000 : ℚ), (27688130469/1000000000000 : ℚ), 2⟩,
    ⟨(20123185107/50000000000 : ℚ), (-63296217/500000000 : ℚ), (4046772399/100000000000 : ℚ), 2⟩,
    ⟨(81901340741/200000000000 : ℚ), (-191885387/1250000000 : ℚ), (6424208287/125000000000 : ℚ), 2⟩,
    ⟨(51993656013/125000000000 : ℚ), (-880173683/5000000000 : ℚ), (60689954263/1000000000000 : ℚ), 2⟩,
    ⟨(421729290113/1000000000000 : ℚ), (-973773617/5000000000 : ℚ), (68529983191/1000000000000 : ℚ), 2⟩,
    ⟨(213395582383/500000000000 : ℚ), (-1050590067/5000000000 : ℚ), (75047631917/1000000000000 : ℚ), 2⟩,
    ⟨(86217224689/200000000000 : ℚ), (-2224697181/10000000000 : ℚ), (8034554087/100000000000 : ℚ), 2⟩,
    ⟨(108643200837/250000000000 : ℚ), (-1160356887/5000000000 : ℚ), (4225065763/50000000000 : ℚ), 2⟩,
    ⟨(109304406461/250000000000 : ℚ), (-95646549/400000000 : ℚ), (43786075449/500000000000 : ℚ), 2⟩,
    ⟨(109748779961/250000000000 : ℚ), (-2437410129/10000000000 : ℚ), (89598222527/1000000000000 : ℚ), 2⟩,
    ⟨(439888167111/1000000000000 : ℚ), (-153770119/625000000 : ℚ), (18121011943/200000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-2463176077/10000000000 : ℚ), (22682656841/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (17593518527/50000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (11/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control335.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control335.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate335

namespace DiagonalRamsey.JointInheritedCertificate336
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(16322524653/62500000000 : ℚ), (1086612700717/1000000000 : ℚ), (-284489928594519/1000000000000 : ℚ), 11⟩,
    ⟨(13103458039/50000000000 : ℚ), (591753895247/5000000000 : ℚ), (-31456360192103/1000000000000 : ℚ), 8⟩,
    ⟨(131938970763/500000000000 : ℚ), (206434958847/5000000000 : ℚ), (-11213563287667/1000000000000 : ℚ), 7⟩,
    ⟨(266569317139/1000000000000 : ℚ), (202349368883/10000000000 : ℚ), (-1409080599173/250000000000 : ℚ), 6⟩,
    ⟨(135058684101/500000000000 : ℚ), (116718423853/10000000000 : ℚ), (-1670498491849/500000000000 : ℚ), 5⟩,
    ⟨(137243962521/500000000000 : ℚ), (73997183741/10000000000 : ℚ), (-2178927715919/1000000000000 : ℚ), 5⟩,
    ⟨(279638896809/1000000000000 : ℚ), (49842408449/10000000000 : ℚ), (-188796990109/125000000000 : ℚ), 4⟩,
    ⟨(71380169207/250000000000 : ℚ), (34977037557/10000000000 : ℚ), (-109072431533/100000000000 : ℚ), 4⟩,
    ⟨(146038310171/500000000000 : ℚ), (12624871777/5000000000 : ℚ), (-4050321171/5000000000 : ℚ), 4⟩,
    ⟨(299243590031/1000000000000 : ℚ), (18581036851/10000000000 : ℚ), (-153267777247/250000000000 : ℚ), 3⟩,
    ⟨(15347628203/50000000000 : ℚ), (108111043/78125000 : ℚ), (-117358914831/250000000000 : ℚ), 3⟩,
    ⟨(63025860159/200000000000 : ℚ), (5181525161/5000000000 : ℚ), (-90356651913/250000000000 : ℚ), 3⟩,
    ⟨(32369505379/100000000000 : ℚ), (3876437947/5000000000 : ℚ), (-17382073537/62500000000 : ℚ), 3⟩,
    ⟨(166283665081/500000000000 : ℚ), (2875428567/5000000000 : ℚ), (-106231445737/500000000000 : ℚ), 3⟩,
    ⟨(4270758563/12500000000 : ℚ), (4187435443/10000000000 : ℚ), (-39947087463/250000000000 : ℚ), 3⟩,
    ⟨(70177508889/200000000000 : ℚ), (736847971/2500000000 : ℚ), (-116871162203/1000000000000 : ℚ), 3⟩,
    ⟨(360159048677/1000000000000 : ℚ), (390099109/2000000000 : ℚ), (-81445493789/1000000000000 : ℚ), 2⟩,
    ⟨(369385908081/1000000000000 : ℚ), (284925179/2500000000 : ℚ), (-51881869077/1000000000000 : ℚ), 2⟩,
    ⟨(378479262959/1000000000000 : ℚ), (473713321/10000000000 : ℚ), (-26987143721/1000000000000 : ℚ), 2⟩,
    ⟨(387351539331/1000000000000 : ℚ), (-77823089/10000000000 : ℚ), (-2937145311/500000000000 : ℚ), 2⟩,
    ⟨(395917292327/1000000000000 : ℚ), (-33595109/625000000 : ℚ), (6062268947/500000000000 : ℚ), 2⟩,
    ⟨(404094029061/1000000000000 : ℚ), (-922418189/10000000000 : ℚ), (6879344097/250000000000 : ℚ), 2⟩,
    ⟨(41180300309/100000000000 : ℚ), (-155683287/1250000000 : ℚ), (20346906253/500000000000 : ℚ), 2⟩,
    ⟨(20948498639/50000000000 : ℚ), (-1516589089/10000000000 : ℚ), (25977169679/500000000000 : ℚ), 2⟩,
    ⟨(212762958147/500000000000 : ℚ), (-871713849/5000000000 : ℚ), (15382881489/250000000000 : ℚ), 2⟩,
    ⟨(431407696313/1000000000000 : ℚ), (-1931881839/10000000000 : ℚ), (6960550561/100000000000 : ℚ), 2⟩,
    ⟨(436558668079/1000000000000 : ℚ), (-2086503783/10000000000 : ℚ), (9539430353/125000000000 : ℚ), 2⟩,
    ⟨(440929224919/1000000000000 : ℚ), (-2210787517/10000000000 : ℚ), (40884047917/500000000000 : ℚ), 2⟩,
    ⟨(222238637991/500000000000 : ℚ), (-144211341/625000000 : ℚ), (21511057803/250000000000 : ℚ), 2⟩,
    ⟨(111792162899/250000000000 : ℚ), (-2378244157/10000000000 : ℚ), (1784068159/20000000000 : ℚ), 2⟩,
    ⟨(224488716171/500000000000 : ℚ), (-484951267/2000000000 : ℚ), (91287480043/1000000000000 : ℚ), 2⟩,
    ⟨(449886198673/1000000000000 : ℚ), (-305974779/1250000000 : ℚ), (92323054589/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2450668541/10000000000 : ℚ), (9245220213/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (173609359821/500000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (9/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control336.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control336.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate336

namespace DiagonalRamsey.JointInheritedCertificate337
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(133994062959/500000000000 : ℚ), (438652876517/400000000 : ℚ), (-2356906171791/8000000000 : ℚ), 11⟩,
    ⟨(16807009899/62500000000 : ℚ), (3733057869/31250000 : ℚ), (-6515202440013/200000000000 : ℚ), 8⟩,
    ⟨(135375662189/500000000000 : ℚ), (416811311627/10000000000 : ℚ), (-2903231417723/250000000000 : ℚ), 7⟩,
    ⟨(136743955863/500000000000 : ℚ), (204327312603/10000000000 : ℚ), (-1167448976291/200000000000 : ℚ), 6⟩,
    ⟨(277095565597/1000000000000 : ℚ), (58944594363/5000000000 : ℚ), (-3460265048629/1000000000000 : ℚ), 5⟩,
    ⟨(281539542311/1000000000000 : ℚ), (37380104211/5000000000 : ℚ), (-2256871036089/1000000000000 : ℚ), 5⟩,
    ⟨(143388521971/500000000000 : ℚ), (10074354687/2000000000 : ℚ), (-312912056703/200000000000 : ℚ), 4⟩,
    ⟨(36594703811/125000000000 : ℚ), (7072126721/2000000000 : ℚ), (-5650055947/5000000000 : ℚ), 4⟩,
    ⟨(299423705631/1000000000000 : ℚ), (3192089687/1250000000 : ℚ), (-839404061747/1000000000000 : ℚ), 4⟩,
    ⟨(306711071423/1000000000000 : ℚ), (18801016551/10000000000 : ℚ), (-635445516721/1000000000000 : ℚ), 3⟩,
    ⟨(314549546547/1000000000000 : ℚ), (7005059411/5000000000 : ℚ), (-121686879567/250000000000 : ℚ), 3⟩,
    ⟨(322863642203/1000000000000 : ℚ), (328110127/312500000 : ℚ), (-187473767187/500000000000 : ℚ), 3⟩,
    ⟨(165786644553/500000000000 : ℚ), (1572536061/2000000000 : ℚ), (-144362726241/500000000000 : ℚ), 3⟩,
    ⟨(340594608593/1000000000000 : ℚ), (233609941/400000000 : ℚ), (-110399057327/500000000000 : ℚ), 3⟩,
    ⟨(87460180107/250000000000 : ℚ), (532623991/1250000000 : ℚ), (-83155410467/500000000000 : ℚ), 3⟩,
    ⟨(179611289749/500000000000 : ℚ), (3008532621/10000000000 : ℚ), (-60965050429/500000000000 : ℚ), 3⟩,
    ⟨(368649833373/1000000000000 : ℚ), (2001818063/10000000000 : ℚ), (-85308884199/1000000000000 : ℚ), 2⟩,
    ⟨(378031692443/1000000000000 : ℚ), (295801697/2500000000 : ℚ), (-6844882469/125000000000 : ℚ), 2⟩,
    ⟨(193638902139/500000000000 : ℚ), (510964291/10000000000 : ℚ), (-363054227/12500000000 : ℚ), 2⟩,
    ⟨(198149561883/500000000000 : ℚ), (-45596953/10000000000 : ℚ), (-7245413239/1000000000000 : ℚ), 2⟩,
    ⟨(101252192667/250000000000 : ℚ), (-50934261/1000000000 : ℚ), (2832514717/250000000000 : ℚ), 2⟩,
    ⟨(16532914653/40000000000 : ℚ), (-897503009/10000000000 : ℚ), (2720892737/100000000000 : ℚ), 2⟩,
    ⟨(421161341449/1000000000000 : ℚ), (-48927351/400000000 : ℚ), (40795372929/1000000000000 : ℚ), 2⟩,
    ⟨(10711217681/25000000000 : ℚ), (-748213511/5000000000 : ℚ), (26200646043/500000000000 : ℚ), 2⟩,
    ⟨(435114782383/1000000000000 : ℚ), (-1724967771/10000000000 : ℚ), (62268208433/1000000000000 : ℚ), 2⟩,
    ⟨(441095368929/1000000000000 : ℚ), (-957389939/5000000000 : ℚ), (17645824983/250000000000 : ℚ), 2⟩,
    ⟨(446332870561/1000000000000 : ℚ), (-414094807/2000000000 : ℚ), (9686407911/125000000000 : ℚ), 2⟩,
    ⟨(18031073891/40000000000 : ℚ), (-1097794959/5000000000 : ℚ), (8310317017/100000000000 : ℚ), 2⟩,
    ⟨(90876900229/200000000000 : ℚ), (-1146405577/5000000000 : ℚ), (87503102639/1000000000000 : ℚ), 2⟩,
    ⟨(228560544247/500000000000 : ℚ), (-2364122697/10000000000 : ℚ), (45376549823/500000000000 : ℚ), 2⟩,
    ⟨(57370031811/125000000000 : ℚ), (-602731019/2500000000 : ℚ), (11612097449/125000000000 : ℚ), 2⟩,
    ⟨(229942143477/500000000000 : ℚ), (-1217053809/5000000000 : ℚ), (93961881469/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-304624437/1250000000 : ℚ), (94094707143/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (34250505789/100000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (23/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control337.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control337.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate337

namespace DiagonalRamsey.JointInheritedCertificate338
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(137423359811/500000000000 : ℚ), (2766565292077/2500000000 : ℚ), (-152450317719153/500000000000 : ℚ), 11⟩,
    ⟨(137892934851/500000000000 : ℚ), (1205620452821/10000000000 : ℚ), (-33713765126219/1000000000000 : ℚ), 8⟩,
    ⟨(277655125333/1000000000000 : ℚ), (420742056327/10000000000 : ℚ), (-3004678951173/250000000000 : ℚ), 7⟩,
    ⟨(140218242281/500000000000 : ℚ), (206299599593/10000000000 : ℚ), (-1208275921253/200000000000 : ℚ), 6⟩,
    ⟨(284103161379/1000000000000 : ℚ), (119056344967/10000000000 : ℚ), (-143256909491/40000000000 : ℚ), 5⟩,
    ⟨(144309921841/500000000000 : ℚ), (75520654893/10000000000 : ℚ), (-2336035153663/1000000000000 : ℚ), 5⟩,
    ⟨(293943033351/1000000000000 : ℚ), (50899146947/10000000000 : ℚ), (-1619581474047/1000000000000 : ℚ), 4⟩,
    ⟨(300021465159/1000000000000 : ℚ), (35742601027/10000000000 : ℚ), (-1169894705057/1000000000000 : ℚ), 4⟩,
    ⟨(306796600487/1000000000000 : ℚ), (12911150377/5000000000 : ℚ), (-869180735401/1000000000000 : ℚ), 4⟩,
    ⟨(78550797769/250000000000 : ℚ), (19019768641/10000000000 : ℚ), (-658145449859/1000000000000 : ℚ), 3⟩,
    ⟨(32216990741/100000000000 : ℚ), (1772614037/1250000000 : ℚ), (-252152281981/500000000000 : ℚ), 3⟩,
    ⟨(41327503207/125000000000 : ℚ), (10634970649/10000000000 : ℚ), (-194327024843/500000000000 : ℚ), 3⟩,
    ⟨(339472166557/1000000000000 : ℚ), (1992880309/2500000000 : ℚ), (-7486953429/25000000000 : ℚ), 3⟩,
    ⟨(87160269789/250000000000 : ℚ), (5928725601/10000000000 : ℚ), (-45847781611/200000000000 : ℚ), 3⟩,
    ⟨(89509615453/250000000000 : ℚ), (4333673081/10000000000 : ℚ), (-172911637627/1000000000000 : ℚ), 3⟩,
    ⟨(183786906297/500000000000 : ℚ), (3068829777/10000000000 : ℚ), (-127045891963/1000000000000 : ℚ), 3⟩,
    ⟨(18857765043/50000000000 : ℚ), (1026161773/5000000000 : ℚ), (-8921202877/100000000000 : ℚ), 2⟩,
    ⟨(193345325821/500000000000 : ℚ), (612959289/5000000000 : ℚ), (-57662329863/1000000000000 : ℚ), 2⟩,
    ⟨(198044017149/500000000000 : ℚ), (54744091/1000000000 : ℚ), (-31116638571/1000000000000 : ℚ), 2⟩,
    ⟨(405256946897/1000000000000 : ℚ), (-14127397/10000000000 : ℚ), (-4311411099/500000000000 : ℚ), 2⟩,
    ⟨(207054543899/500000000000 : ℚ), (-481904009/10000000000 : ℚ), (10536381817/1000000000000 : ℚ), 2⟩,
    ⟨(105639801511/250000000000 : ℚ), (-436656883/5000000000 : ℚ), (6726742143/250000000000 : ℚ), 2⟩,
    ⟨(430525922379/1000000000000 : ℚ), (-120161389/1000000000 : ℚ), (5113496849/125000000000 : ℚ), 2⟩,
    ⟨(437932512967/1000000000000 : ℚ), (-147696551/1000000000 : ℚ), (26431455709/500000000000 : ℚ), 2⟩,
    ⟨(88941529659/200000000000 : ℚ), (-21339969/125000000 : ℚ), (31511213567/500000000000 : ℚ), 2⟩,
    ⟨(450786080103/1000000000000 : ℚ), (-949178969/5000000000 : ℚ), (17895220773/250000000000 : ℚ), 2⟩,
    ⟨(114027317443/250000000000 : ℚ), (-2055115909/10000000000 : ℚ), (39344309681/500000000000 : ℚ), 2⟩,
    ⟨(18425038083/40000000000 : ℚ), (-43621137/200000000 : ℚ), (84461111071/1000000000000 : ℚ), 2⟩,
    ⟨(116073157223/250000000000 : ℚ), (-455779929/2000000000 : ℚ), (22246456539/250000000000 : ℚ), 2⟩,
    ⟨(467073988121/1000000000000 : ℚ), (-1175327843/5000000000 : ℚ), (46163668693/500000000000 : ℚ), 2⟩,
    ⟨(468943243753/1000000000000 : ℚ), (-2397743351/10000000000 : ℚ), (94531066761/1000000000000 : ℚ), 2⟩,
    ⟨(469882393833/1000000000000 : ℚ), (-96842683/400000000 : ℚ), (47812955271/500000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1211986169/5000000000 : ℚ), (95762440801/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (4222043313/12500000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (47/100 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control338.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control338.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate338

namespace DiagonalRamsey.JointInheritedCertificate339
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(28173401389/100000000000 : ℚ), (279144887073/250000000 : ℚ), (-157672894576269/500000000000 : ℚ), 11⟩,
    ⟨(141344071733/500000000000 : ℚ), (60830849747/500000000 : ℚ), (-4358615218381/125000000000 : ℚ), 8⟩,
    ⟨(284587213829/1000000000000 : ℚ), (106164043241/2500000000 : ℚ), (-2486135873357/200000000000 : ℚ), 7⟩,
    ⟨(143706467947/500000000000 : ℚ), (8330527093/400000000 : ℚ), (-6248594290533/1000000000000 : ℚ), 6⟩,
    ⟨(291138096411/1000000000000 : ℚ), (120218044019/10000000000 : ℚ), (-3704388000729/1000000000000 : ℚ), 5⟩,
    ⟨(295726820049/1000000000000 : ℚ), (76277283743/10000000000 : ℚ), (-1208181727757/500000000000 : ℚ), 5⟩,
    ⟨(301134914891/1000000000000 : ℚ), (51423639609/10000000000 : ℚ), (-418849379273/250000000000 : ℚ), 4⟩,
    ⟨(307310298027/1000000000000 : ℚ), (36122269717/10000000000 : ℚ), (-1210342078179/1000000000000 : ℚ), 4⟩,
    ⟨(314193497141/1000000000000 : ℚ), (163162309/62500000 : ℚ), (-899367621309/1000000000000 : ℚ), 4⟩,
    ⟨(10053694477/31250000000 : ℚ), (19236871431/10000000000 : ℚ), (-681148593779/1000000000000 : ℚ), 3⟩,
    ⟨(329812009169/1000000000000 : ℚ), (14350246343/10000000000 : ℚ), (-130521908383/250000000000 : ℚ), 3⟩,
    ⟨(169198453637/500000000000 : ℚ), (2692274457/2500000000 : ℚ), (-80505872557/200000000000 : ℚ), 3⟩,
    ⟨(347390240317/1000000000000 : ℚ), (8079148751/10000000000 : ℚ), (-155178135663/500000000000 : ℚ), 3⟩,
    ⟨(22294087349/62500000000 : ℚ), (6016071433/10000000000 : ℚ), (-237771757731/1000000000000 : ℚ), 3⟩,
    ⟨(366252669019/1000000000000 : ℚ), (1101322037/2500000000 : ℚ), (-22447305951/125000000000 : ℚ), 3⟩,
    ⟨(375940109179/1000000000000 : ℚ), (625622729/2000000000 : ℚ), (-132207131331/1000000000000 : ℚ), 3⟩,
    ⟨(385674422719/1000000000000 : ℚ), (2101859421/10000000000 : ℚ), (-93144308429/1000000000000 : ℚ), 2⟩,
    ⟨(395361862879/1000000000000 : ℚ), (792311/6250000 : ℚ), (-60581717721/1000000000000 : ℚ), 2⟩,
    ⟨(202454567157/500000000000 : ℚ), (291508187/5000000000 : ℚ), (-33194639217/1000000000000 : ℚ), 2⟩,
    ⟨(414224291581/1000000000000 : ℚ), (16468531/10000000000 : ℚ), (-4998792869/500000000000 : ℚ), 2⟩,
    ⟨(26451101539/62500000000 : ℚ), (-455314801/10000000000 : ℚ), (9752032303/1000000000000 : ℚ), 2⟩,
    ⟨(431802522729/1000000000000 : ℚ), (-424976211/5000000000 : ℚ), (13309837989/500000000000 : ℚ), 2⟩,
    ⟨(219948154317/500000000000 : ℚ), (-1180852781/10000000000 : ℚ), (41039492697/1000000000000 : ℚ), 2⟩,
    ⟨(447421034757/1000000000000 : ℚ), (-729147893/5000000000 : ℚ), (53346812751/1000000000000 : ℚ), 2⟩,
    ⟨(454304233871/1000000000000 : ℚ), (-845102029/5000000000 : ℚ), (31900787809/500000000000 : ℚ), 2⟩,
    ⟨(460479617007/1000000000000 : ℚ), (-1882699693/10000000000 : ℚ), (72605459937/1000000000000 : ℚ), 2⟩,
    ⟨(465887711849/1000000000000 : ℚ), (-408102051/2000000000 : ℚ), (3995727929/50000000000 : ℚ), 2⟩,
    ⟨(470476435487/1000000000000 : ℚ), (-270908361/1250000000 : ℚ), (42924418767/500000000000 : ℚ), 2⟩,
    ⟨(118550399001/250000000000 : ℚ), (-2265723731/10000000000 : ℚ), (90499219319/1000000000000 : ℚ), 2⟩,
    ⟨(119256829517/250000000000 : ℚ), (-584479657/2500000000 : ℚ), (23483215977/250000000000 : ℚ), 2⟩,
    ⟨(478926388431/1000000000000 : ℚ), (-2385288809/10000000000 : ℚ), (19239406917/200000000000 : ℚ), 2⟩,
    ⟨(59985064751/125000000000 : ℚ), (-2408750829/10000000000 : ℚ), (97321810177/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2411673241/10000000000 : ℚ), (97462068459/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (8324878703/25000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (12/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control339.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control339.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate339

namespace DiagonalRamsey.JointInheritedCertificate340
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(295793416917/1000000000000 : ℚ), (2845664998363/2500000000 : ℚ), (-337498517525319/1000000000000 : ℚ), 11⟩,
    ⟨(296776134853/1000000000000 : ℚ), (620289959131/5000000000 : ℚ), (-18659536329269/500000000000 : ℚ), 8⟩,
    ⟨(298732106613/1000000000000 : ℚ), (1732752849/40000000 : ℚ), (-6652319653981/500000000000 : ℚ), 7⟩,
    ⟨(301642495121/1000000000000 : ℚ), (212545403063/10000000000 : ℚ), (-1337663358973/200000000000 : ℚ), 6⟩,
    ⟨(4773113621/15625000000 : ℚ), (491012307/40000000 : ℚ), (-247839595317/62500000000 : ℚ), 5⟩,
    ⟨(155102743113/500000000000 : ℚ), (19482412507/2500000000 : ℚ), (-1293492958057/500000000000 : ℚ), 5⟩,
    ⟨(157887811269/500000000000 : ℚ), (52570102463/10000000000 : ℚ), (-112127319077/62500000000 : ℚ), 4⟩,
    ⟨(161068018611/500000000000 : ℚ), (1478121871/400000000 : ℚ), (-1296391497223/1000000000000 : ℚ), 4⟩,
    ⟨(41153184501/125000000000 : ℚ), (13363712609/5000000000 : ℚ), (-30114410211/31250000000 : ℚ), 4⟩,
    ⟨(13479026549/40000000000 : ℚ), (19713127879/10000000000 : ℚ), (-146042415887/200000000000 : ℚ), 3⟩,
    ⟨(86327990457/250000000000 : ℚ), (14722253041/10000000000 : ℚ), (-560086314811/1000000000000 : ℚ), 3⟩,
    ⟨(354154087209/1000000000000 : ℚ), (11064221919/10000000000 : ℚ), (-432247018377/1000000000000 : ℚ), 3⟩,
    ⟨(363416885369/1000000000000 : ℚ), (8316361399/10000000000 : ℚ), (-333724613689/1000000000000 : ℚ), 3⟩,
    ⟨(11656598453/31250000000 : ℚ), (620892251/1000000000 : ℚ), (-64043456271/250000000000 : ℚ), 3⟩,
    ⟨(382844484573/1000000000000 : ℚ), (2281848619/5000000000 : ℚ), (-194031058427/1000000000000 : ℚ), 3⟩,
    ⟨(392822187217/1000000000000 : ℚ), (814873341/2500000000 : ℚ), (-143475132353/1000000000000 : ℚ), 3⟩,
    ⟨(402848167697/1000000000000 : ℚ), (88473801/400000000 : ℚ), (-101814620489/1000000000000 : ℚ), 2⟩,
    ⟨(412825870341/1000000000000 : ℚ), (680317717/5000000000 : ℚ), (-67112775753/1000000000000 : ℚ), 2⟩,
    ⟨(211329602209/500000000000 : ℚ), (41393729/625000000 : ℚ), (-37950274993/1000000000000 : ℚ), 2⟩,
    ⟨(86450693909/200000000000 : ℚ), (21193433/2500000000 : ℚ), (-13270792769/1000000000000 : ℚ), 2⟩,
    ⟨(88303253541/200000000000 : ℚ), (-2474113/62500000 : ℚ), (3861039081/500000000000 : ℚ), 2⟩,
    ⟨(225179196543/500000000000 : ℚ), (-199409217/2500000000 : ℚ), (25635191737/1000000000000 : ℚ), 2⟩,
    ⟨(458694691189/1000000000000 : ℚ), (-226860083/2000000000 : ℚ), (409348541/10000000000 : ℚ), 2⟩,
    ⟨(233222439453/500000000000 : ℚ), (-283277477/2000000000 : ℚ), (10796314857/200000000000 : ℚ), 2⟩,
    ⟨(118383579423/250000000000 : ℚ), (-826012339/5000000000 : ℚ), (65055106697/1000000000000 : ℚ), 2⟩,
    ⟨(59986841547/125000000000 : ℚ), (-1847495943/10000000000 : ℚ), (3718637829/50000000000 : ℚ), 2⟩,
    ⟨(30341554293/62500000000 : ℚ), (-62739257/312500000 : ℚ), (41051458817/500000000000 : ℚ), 2⟩,
    ⟨(49019108317/100000000000 : ℚ), (-213623653/1000000000 : ℚ), (44187586121/500000000000 : ℚ), 2⟩,
    ⟨(494027859793/1000000000000 : ℚ), (-1118034031/5000000000 : ℚ), (93287850999/1000000000000 : ℚ), 2⟩,
    ⟨(496938248301/1000000000000 : ℚ), (-2309246511/10000000000 : ℚ), (24228416841/250000000000 : ℚ), 2⟩,
    ⟨(498894220061/1000000000000 : ℚ), (-2357250377/10000000000 : ℚ), (775811271/7812500000 : ℚ), 2⟩,
    ⟨(499876937997/1000000000000 : ℚ), (-2381022749/10000000000 : ℚ), (25122749703/250000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-1191991827/5000000000 : ℚ), (100639025827/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (323269486613/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control340.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control340.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate340

namespace DiagonalRamsey.JointInheritedCertificate341
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(77524175689/250000000000 : ℚ), (5804963898697/5000000000 : ℚ), (-90216829785073/250000000000 : ℚ), 11⟩,
    ⟨(77776708849/250000000000 : ℚ), (1265693004091/10000000000 : ℚ), (-39903739560933/1000000000000 : ℚ), 8⟩,
    ⟨(78279343137/250000000000 : ℚ), (8842603647/200000000 : ℚ), (-222290514583/15625000000 : ℚ), 7⟩,
    ⟨(158054475819/500000000000 : ℚ), (108516822857/5000000000 : ℚ), (-894024774873/125000000000 : ℚ), 6⟩,
    ⟨(160026381063/500000000000 : ℚ), (125410241981/10000000000 : ℚ), (-4240832750419/1000000000000 : ℚ), 5⟩,
    ⟨(324910822959/1000000000000 : ℚ), (9957714999/1250000000 : ℚ), (-1383501146327/500000000000 : ℚ), 5⟩,
    ⟨(165318174179/500000000000 : ℚ), (53771901301/10000000000 : ℚ), (-959610871257/500000000000 : ℚ), 4⟩,
    ⟨(337174198381/1000000000000 : ℚ), (37823907831/10000000000 : ℚ), (-1387202407309/1000000000000 : ℚ), 4⟩,
    ⟨(8611535249/25000000000 : ℚ), (13689404627/5000000000 : ℚ), (-64470502887/62500000000 : ℚ), 4⟩,
    ⟨(2753342213/7812500000 : ℚ), (20212229497/10000000000 : ℚ), (-156403970679/200000000000 : ℚ), 3⟩,
    ⟨(360996657569/1000000000000 : ℚ), (7555992723/5000000000 : ℚ), (-600229489771/1000000000000 : ℚ), 3⟩,
    ⟨(2960683601/8000000000 : ℚ), (11373266577/10000000000 : ℚ), (-463662829063/1000000000000 : ℚ), 3⟩,
    ⟨(94901662723/250000000000 : ℚ), (428230149/500000000 : ℚ), (-44806425637/125000000000 : ℚ), 3⟩,
    ⟨(778937131/2000000000 : ℚ), (256422637/400000000 : ℚ), (-137835544561/500000000000 : ℚ), 3⟩,
    ⟨(399576218321/1000000000000 : ℚ), (4729144221/10000000000 : ℚ), (-104685947243/500000000000 : ℚ), 3⟩,
    ⟨(204916133567/500000000000 : ℚ), (1698259681/5000000000 : ℚ), (-155466757739/1000000000000 : ℚ), 3⟩,
    ⟨(420137940581/1000000000000 : ℚ), (145397719/625000000 : ℚ), (-111076471071/1000000000000 : ℚ), 2⟩,
    ⟨(430393989393/1000000000000 : ℚ), (145720949/1000000000 : ℚ), (-14825730161/200000000000 : ℚ), 2⟩,
    ⟨(88100328443/200000000000 : ℚ), (372246841/5000000000 : ℚ), (-43104071043/1000000000000 : ℚ), 2⟩,
    ⟨(450363556823/1000000000000 : ℚ), (7770043/500000000 : ℚ), (-16871564839/1000000000000 : ℚ), 2⟩,
    ⟨(459884757589/1000000000000 : ℚ), (-83639509/2500000000 : ℚ), (542216873/100000000000 : ℚ), 2⟩,
    ⟨(93794710029/200000000000 : ℚ), (-148773413/2000000000 : ℚ), (24427775659/1000000000000 : ℚ), 2⟩,
    ⟨(477542404451/1000000000000 : ℚ), (-543304833/5000000000 : ℚ), (20322808213/500000000000 : ℚ), 2⟩,
    ⟨(242754398877/500000000000 : ℚ), (-1373596273/10000000000 : ℚ), (27231445861/500000000000 : ℚ), 2⟩,
    ⟨(492796009333/1000000000000 : ℚ), (-1613168523/10000000000 : ℚ), (66180388341/1000000000000 : ℚ), 2⟩,
    ⟨(499333859357/1000000000000 : ℚ), (-28309063/156250000 : ℚ), (118800031/1562500000 : ℚ), 2⟩,
    ⟨(101011876951/200000000000 : ℚ), (-15425157/78125000 : ℚ), (84199272743/1000000000000 : ℚ), 2⟩,
    ⟨(509917445589/1000000000000 : ℚ), (-263115623/1250000000 : ℚ), (90821978767/1000000000000 : ℚ), 2⟩,
    ⟨(128465314019/250000000000 : ℚ), (-551551799/2500000000 : ℚ), (96006375171/1000000000000 : ℚ), 2⟩,
    ⟨(516852835167/1000000000000 : ℚ), (-2280423501/10000000000 : ℚ), (99831110199/1000000000000 : ℚ), 2⟩,
    ⟨(259431686159/500000000000 : ℚ), (-1164547999/5000000000 : ℚ), (102351638987/1000000000000 : ℚ), 2⟩,
    ⟨(259936752479/500000000000 : ℚ), (-147074739/625000000 : ℚ), (103603305961/1000000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-1178098671/5000000000 : ℚ), (1037593659/10000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (31336515049/100000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (13/25 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control341.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control341.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate341

namespace DiagonalRamsey.JointInheritedCertificate379
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(556574399537/1000000000000 : ℚ), (17515008167011/10000000000 : ℚ), (-976366259223499/1000000000000 : ℚ), 12⟩,
    ⟨(278872926977/500000000000 : ℚ), (119938836249/625000000 : ℚ), (-107997286676181/1000000000000 : ℚ), 8⟩,
    ⟨(7000968513/12500000000 : ℚ), (675236634641/10000000000 : ℚ), (-19264189169337/500000000000 : ℚ), 7⟩,
    ⟨(17610838311/31250000000 : ℚ), (167172966253/5000000000 : ℚ), (-969487924167/50000000000 : ℚ), 6⟩,
    ⟨(568120477003/1000000000000 : ℚ), (2438447077/125000000 : ℚ), (-2878662604707/250000000000 : ℚ), 5⟩,
    ⟨(573754387433/1000000000000 : ℚ), (1001800279/80000000 : ℚ), (-470575562983/62500000000 : ℚ), 5⟩,
    ⟨(580394299603/1000000000000 : ℚ), (42747640597/5000000000 : ℚ), (-2618976789507/500000000000 : ℚ), 4⟩,
    ⟨(146994066883/250000000000 : ℚ), (60889472023/10000000000 : ℚ), (-1900695675459/500000000000 : ℚ), 4⟩,
    ⟨(596427272721/1000000000000 : ℚ), (44685097617/10000000000 : ℚ), (-710580687231/250000000000 : ℚ), 4⟩,
    ⟨(151416481843/250000000000 : ℚ), (33507477301/10000000000 : ℚ), (-108543322013/50000000000 : ℚ), 3⟩,
    ⟨(615603258191/1000000000000 : ℚ), (25513542711/10000000000 : ℚ), (-841491731087/500000000000 : ℚ), 3⟩,
    ⟨(39133972703/62500000000 : ℚ), (3925760569/2000000000 : ℚ), (-1317794125157/1000000000000 : ℚ), 3⟩,
    ⟨(127437066729/200000000000 : ℚ), (15193358853/10000000000 : ℚ), (-259437596121/250000000000 : ℚ), 3⟩,
    ⟨(81077778887/125000000000 : ℚ), (11784347131/10000000000 : ℚ), (-818675946031/1000000000000 : ℚ), 3⟩,
    ⟨(660344112027/1000000000000 : ℚ), (2280266303/2500000000 : ℚ), (-128887186229/200000000000 : ℚ), 3⟩,
    ⟨(168059522079/250000000000 : ℚ), (7011555463/10000000000 : ℚ), (-100786116721/200000000000 : ℚ), 3⟩,
    ⟨(684189614471/1000000000000 : ℚ), (5321177109/10000000000 : ℚ), (-389323159937/1000000000000 : ℚ), 2⟩,
    ⟨(696083590761/1000000000000 : ℚ), (3953407779/10000000000 : ℚ), (-147477589429/500000000000 : ℚ), 2⟩,
    ⟨(176951367923/250000000000 : ℚ), (709432463/2500000000 : ℚ), (-216660449867/1000000000000 : ℚ), 2⟩,
    ⟨(719242369143/1000000000000 : ℚ), (960884519/5000000000 : ℚ), (-4728713231/31250000000 : ℚ), 2⟩,
    ⟨(36514206977/50000000000 : ℚ), (1166065657/10000000000 : ℚ), (-96558622209/1000000000000 : ℚ), 2⟩,
    ⟨(740824444597/1000000000000 : ℚ), (540521371/10000000000 : ℚ), (-50553882067/1000000000000 : ℚ), 2⟩,
    ⟨(150152355083/200000000000 : ℚ), (2193871/1000000000 : ℚ), (-11883573203/1000000000000 : ℚ), 2⟩,
    ⟨(760000430067/1000000000000 : ℚ), (-407710727/10000000000 : ℚ), (41135481/2000000000 : ℚ), 2⟩,
    ⟨(96056429407/125000000000 : ℚ), (-381261197/5000000000 : ℚ), (5960121633/125000000000 : ℚ), 2⟩,
    ⟨(48502087699/62500000000 : ℚ), (-1053551527/10000000000 : ℚ), (70153943943/1000000000000 : ℚ), 2⟩,
    ⟨(156534663071/200000000000 : ℚ), (-128946393/1000000000 : ℚ), (88538927773/1000000000000 : ℚ), 2⟩,
    ⟨(157661445157/200000000000 : ℚ), (-295402687/2000000000 : ℚ), (5163511941/50000000000 : ℚ), 2⟩,
    ⟨(158576175367/200000000000 : ℚ), (-810696517/5000000000 : ℚ), (114684544831/1000000000000 : ℚ), 2⟩,
    ⟨(199087555437/250000000000 : ℚ), (-43162299/250000000 : ℚ), (7689735109/62500000000 : ℚ), 2⟩,
    ⟨(399340924417/500000000000 : ℚ), (-897540439/5000000000 : ℚ), (64252903321/500000000000 : ℚ), 2⟩,
    ⟨(3199413213/4000000000 : ℚ), (-1828940039/10000000000 : ℚ), (65606027857/500000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-916576109/5000000000 : ℚ), (131548999167/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (153198802917/1000000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control379.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control379.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate379

namespace DiagonalRamsey.JointInheritedCertificate426
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(229866779961/500000000000 : ℚ), (57173753966709/10000000000 : ℚ), (-1314983875581143/500000000000 : ℚ), 14⟩,
    ⟨(230011463891/500000000000 : ℚ), (632214881489/1000000000 : ℚ), (-36484756790593/125000000000 : ℚ), 10⟩,
    ⟨(46060096639/100000000000 : ℚ), (564455749301/2500000000 : ℚ), (-4193237440869/40000000000 : ℚ), 9⟩,
    ⟨(288416427/625000000 : ℚ), (284953360963/2500000000 : ℚ), (-26648810646667/500000000000 : ℚ), 8⟩,
    ⟨(462616793589/1000000000000 : ℚ), (136146591297/2000000000 : ℚ), (-32090580318173/1000000000000 : ℚ), 7⟩,
    ⟨(3712397807/8000000000 : ℚ), (448997265147/10000000000 : ℚ), (-1334731358137/62500000000 : ℚ), 7⟩,
    ⟨(465761627999/1000000000000 : ℚ), (316167999667/10000000000 : ℚ), (-15181653125977/1000000000000 : ℚ), 6⟩,
    ⟨(2923427349/6250000000 : ℚ), (23316237639/1000000000 : ℚ), (-5654053367519/500000000000 : ℚ), 6⟩,
    ⟨(117501295787/250000000000 : ℚ), (88970901489/5000000000 : ℚ), (-8719459430743/1000000000000 : ℚ), 6⟩,
    ⟨(18901064523/40000000000 : ℚ), (8713807663/625000000 : ℚ), (-6904459668547/1000000000000 : ℚ), 5⟩,
    ⟨(237653295639/500000000000 : ℚ), (111531322089/10000000000 : ℚ), (-5582982083613/1000000000000 : ℚ), 5⟩,
    ⟨(7474037821/15625000000 : ℚ), (18145095551/2000000000 : ℚ), (-57388779259/12500000000 : ℚ), 5⟩,
    ⟨(120403699233/250000000000 : ℚ), (4676107677/625000000 : ℚ), (-956927696903/250000000000 : ℚ), 5⟩,
    ⟨(485127827363/1000000000000 : ℚ), (62402297211/10000000000 : ℚ), (-806923835813/250000000000 : ℚ), 4⟩,
    ⟨(1527715777/3125000000 : ℚ), (52542054239/10000000000 : ℚ), (-1373794863059/500000000000 : ℚ), 4⟩,
    ⟨(492829447833/1000000000000 : ℚ), (44592989023/10000000000 : ℚ), (-117873965757/50000000000 : ℚ), 4⟩,
    ⟨(248499741997/500000000000 : ℚ), (19050432753/5000000000 : ℚ), (-63632189923/31250000000 : ℚ), 4⟩,
    ⟨(25068455557/50000000000 : ℚ), (32737978643/10000000000 : ℚ), (-884284061317/500000000000 : ℚ), 4⟩,
    ⟨(63240975307/125000000000 : ℚ), (28263187309/10000000000 : ℚ), (-192904093637/125000000000 : ℚ), 4⟩,
    ⟨(63833071957/125000000000 : ℚ), (12247962529/5000000000 : ℚ), (-337943652671/250000000000 : ℚ), 3⟩,
    ⟨(257784009719/500000000000 : ℚ), (21298870719/10000000000 : ℚ), (-1187753761779/1000000000000 : ℚ), 3⟩,
    ⟨(260313160489/500000000000 : ℚ), (18566132839/10000000000 : ℚ), (-523096224801/500000000000 : ℚ), 3⟩,
    ⟨(262913647191/500000000000 : ℚ), (16215031391/10000000000 : ℚ), (-115399274829/125000000000 : ℚ), 3⟩,
    ⟨(531158410051/1000000000000 : ℚ), (3545069529/2500000000 : ℚ), (-407836922241/500000000000 : ℚ), 3⟩,
    ⟨(536606824861/1000000000000 : ℚ), (3102447003/2500000000 : ℚ), (-721163062143/1000000000000 : ℚ), 3⟩,
    ⟨(271079706551/500000000000 : ℚ), (10861620027/10000000000 : ℚ), (-637668193053/1000000000000 : ℚ), 3⟩,
    ⟨(68475349763/125000000000 : ℚ), (9501712219/10000000000 : ℚ), (-281782445067/500000000000 : ℚ), 3⟩,
    ⟨(553523384457/1000000000000 : ℚ), (4151092143/5000000000 : ℚ), (-19900763081/40000000000 : ℚ), 3⟩,
    ⟨(34956711923/62500000000 : ℚ), (724005079/1000000000 : ℚ), (-438426966777/1000000000000 : ℚ), 3⟩,
    ⟨(28257044143/50000000000 : ℚ), (314811773/500000000 : ℚ), (-77073812901/200000000000 : ℚ), 3⟩,
    ⟨(285504903669/500000000000 : ℚ), (1363702193/2500000000 : ℚ), (-337574547853/1000000000000 : ℚ), 3⟩,
    ⟨(576900025449/1000000000000 : ℚ), (470239291/1000000000 : ℚ), (-294393433723/1000000000000 : ℚ), 3⟩,
    ⟨(582797347143/1000000000000 : ℚ), (2013846731/5000000000 : ℚ), (-255274644923/1000000000000 : ℚ), 3⟩,
    ⟨(117737513051/200000000000 : ℚ), (3421127979/10000000000 : ℚ), (-54937147507/250000000000 : ℚ), 3⟩,
    ⟨(594556489733/1000000000000 : ℚ), (1437264609/5000000000 : ℚ), (-23426653313/125000000000 : ℚ), 2⟩,
    ⟨(4690546733/7812500000 : ℚ), (595226607/2500000000 : ℚ), (-157922832601/1000000000000 : ℚ), 2⟩,
    ⟨(121234797627/200000000000 : ℚ), (967126057/5000000000 : ℚ), (-65489452367/500000000000 : ℚ), 2⟩,
    ⟨(76486821811/125000000000 : ℚ), (1529384667/10000000000 : ℚ), (-26580682903/250000000000 : ℚ), 2⟩,
    ⟨(61753795949/100000000000 : ℚ), (1161819497/10000000000 : ℚ), (-20932325847/250000000000 : ℚ), 2⟩,
    ⟨(623090547731/1000000000000 : ℚ), (25864467/312500000 : ℚ), (-63002288121/1000000000000 : ℚ), 2⟩,
    ⟨(628538962541/1000000000000 : ℚ), (16360141/312500000 : ℚ), (-21984934029/500000000000 : ℚ), 2⟩,
    ⟨(63387007821/100000000000 : ℚ), (61610981/2500000000 : ℚ), (-13240636057/500000000000 : ℚ), 2⟩,
    ⟨(127814210323/200000000000 : ℚ), (-6169763/10000000000 : ℚ), (-5201938069/500000000000 : ℚ), 2⟩,
    ⟨(322064676577/500000000000 : ℚ), (-118294597/5000000000 : ℚ), (2189616729/500000000000 : ℚ), 2⟩,
    ⟨(81129099617/125000000000 : ℚ), (-446811653/10000000000 : ℚ), (17971313821/1000000000000 : ℚ), 2⟩,
    ⟨(653769570137/1000000000000 : ℚ), (-638595317/10000000000 : ℚ), (7615926027/250000000000 : ℚ), 2⟩,
    ⟨(658328261453/1000000000000 : ℚ), (-81348997/1000000000 : ℚ), (41937301979/1000000000000 : ℚ), 2⟩,
    ⟨(331348944299/500000000000 : ℚ), (-972863107/10000000000 : ℚ), (26231911019/500000000000 : ℚ), 2⟩,
    ⟨(666867924759/1000000000000 : ℚ), (-1117922169/10000000000 : ℚ), (15526717461/250000000000 : ℚ), 2⟩,
    ⟨(41926770247/62500000000 : ℚ), (-624866777/5000000000 : ℚ), (35461432101/500000000000 : ℚ), 2⟩,
    ⟨(674569545229/1000000000000 : ℚ), (-684619441/5000000000 : ℚ), (39480913801/500000000000 : ℚ), 2⟩,
    ⟨(678082575661/1000000000000 : ℚ), (-1477268953/10000000000 : ℚ), (431340337/5000000000 : ℚ), 2⟩,
    ⟨(42584934503/62500000000 : ℚ), (-196819467/1250000000 : ℚ), (92880763033/1000000000000 : ℚ), 2⟩,
    ⟨(136878156263/200000000000 : ℚ), (-1661742673/10000000000 : ℚ), (98834472501/1000000000000 : ℚ), 2⟩,
    ⟨(687170759517/1000000000000 : ℚ), (-869696769/5000000000 : ℚ), (104159569813/1000000000000 : ℚ), 2⟩,
    ⟨(137938437889/200000000000 : ℚ), (-45200001/250000000 : ℚ), (108882621589/1000000000000 : ℚ), 2⟩,
    ⟨(43246812297/62500000000 : ℚ), (-1867988347/10000000000 : ℚ), (22605342519/200000000000 : ℚ), 2⟩,
    ⟨(693935744593/1000000000000 : ℚ), (-1919724643/10000000000 : ℚ), (932893787/8000000000 : ℚ), 2⟩,
    ⟨(347823823359/500000000000 : ℚ), (-490879961/2500000000 : ℚ), (11965456737/100000000000 : ℚ), 2⟩,
    ⟨(174270144751/250000000000 : ℚ), (-999816779/5000000000 : ℚ), (4886775639/40000000000 : ℚ), 2⟩,
    ⟨(43639443087/62500000000 : ℚ), (-2028277359/10000000000 : ℚ), (12416773947/100000000000 : ℚ), 2⟩,
    ⟨(349548203101/500000000000 : ℚ), (-1024808719/5000000000 : ℚ), (2513173843/20000000000 : ℚ), 2⟩,
    ⟨(69967444481/100000000000 : ℚ), (-2063776671/10000000000 : ℚ), (63324483949/500000000000 : ℚ), 2⟩,
    ⟨(699963812671/1000000000000 : ℚ), (-2070836141/10000000000 : ℚ), (127143003067/1000000000000 : ℚ), 2⟩,
    ⟨(7/10 : ℚ), (-2071717633/10000000000 : ℚ), (127204705927/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (229460511279/1000000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control426.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control426.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate426

namespace DiagonalRamsey.JointInheritedCertificate512
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(565177559251/1000000000000 : ℚ), (16944081803059/10000000000 : ℚ), (-959067411736921/1000000000000 : ℚ), 12⟩,
    ⟨(566307612067/1000000000000 : ℚ), (1857239915731/10000000000 : ℚ), (-53039578179971/500000000000 : ℚ), 9⟩,
    ⟨(35534802167/62500000000 : ℚ), (326936032129/5000000000 : ℚ), (-37840675774339/1000000000000 : ℚ), 7⟩,
    ⟨(139624894/244140625 : ℚ), (161986635529/5000000000 : ℚ), (-1190063476651/62500000000 : ℚ), 6⟩,
    ⟨(576315574671/1000000000000 : ℚ), (189145833117/10000000000 : ℚ), (-11305359864423/1000000000000 : ℚ), 6⟩,
    ⟨(581750371157/1000000000000 : ℚ), (121493155153/10000000000 : ℚ), (-7390472877043/1000000000000 : ℚ), 5⟩,
    ⟨(588155615221/1000000000000 : ℚ), (20748325019/2500000000 : ℚ), (-5139763578389/1000000000000 : ℚ), 5⟩,
    ⟨(29773481043/50000000000 : ℚ), (59134940287/10000000000 : ℚ), (-932152834831/250000000000 : ℚ), 4⟩,
    ⟨(603621950203/1000000000000 : ℚ), (4341250747/1000000000 : ℚ), (-2786500419661/1000000000000 : ℚ), 4⟩,
    ⟨(612534091861/1000000000000 : ℚ), (16279878883/5000000000 : ℚ), (-1063457627143/500000000000 : ℚ), 4⟩,
    ⟨(311060108519/500000000000 : ℚ), (1239627053/500000000 : ℚ), (-205957724947/125000000000 : ℚ), 3⟩,
    ⟨(158072001527/250000000000 : ℚ), (19070503513/10000000000 : ℚ), (-25778806851/20000000000 : ℚ), 3⟩,
    ⟨(80367442213/125000000000 : ℚ), (7377278091/5000000000 : ℚ), (-1013868991909/1000000000000 : ℚ), 3⟩,
    ⟨(130794446351/200000000000 : ℚ), (11435051363/10000000000 : ℚ), (-399350079669/500000000000 : ℚ), 3⟩,
    ⟨(332639918693/500000000000 : ℚ), (110499567/125000000 : ℚ), (-31379231851/50000000000 : ℚ), 3⟩,
    ⟨(169188364043/250000000000 : ℚ), (3391599759/5000000000 : ℚ), (-489618581029/1000000000000 : ℚ), 3⟩,
    ⟨(688282590893/1000000000000 : ℚ), (641770063/1250000000 : ℚ), (-377102846299/1000000000000 : ℚ), 3⟩,
    ⟨(8746952621/12500000000 : ℚ), (3799176493/10000000000 : ℚ), (-142238763827/500000000000 : ℚ), 3⟩,
    ⟨(71106381531/100000000000 : ℚ), (2709770553/10000000000 : ℚ), (-25956028967/125000000000 : ℚ), 2⟩,
    ⟨(722096509361/1000000000000 : ℚ), (907524969/5000000000 : ℚ), (-28709567851/200000000000 : ℚ), 2⟩,
    ⟨(366374020479/500000000000 : ℚ), (538321887/5000000000 : ℚ), (-89844317479/1000000000000 : ℚ), 2⟩,
    ⟨(185728957507/250000000000 : ℚ), (9305253/200000000 : ℚ), (-44741666867/1000000000000 : ℚ), 2⟩,
    ⟨(150500391041/200000000000 : ℚ), (-41683943/10000000000 : ℚ), (-1368348481/200000000000 : ℚ), 2⟩,
    ⟨(380707048431/500000000000 : ℚ), (-461764799/10000000000 : ℚ), (24953231389/1000000000000 : ℚ), 2⟩,
    ⟨(153913285241/200000000000 : ℚ), (-808724429/10000000000 : ℚ), (12877599217/250000000000 : ℚ), 2⟩,
    ⟨(194220107961/250000000000 : ℚ), (-1093348201/10000000000 : ℚ), (73516729241/1000000000000 : ℚ), 2⟩,
    ⟨(195821418977/250000000000 : ℚ), (-662046707/5000000000 : ℚ), (45757948693/500000000000 : ℚ), 2⟩,
    ⟨(394360236197/500000000000 : ℚ), (-1507552773/10000000000 : ℚ), (105935369459/1000000000000 : ℚ), 2⟩,
    ⟨(793132481241/1000000000000 : ℚ), (-103049731/625000000 : ℚ), (117106401943/1000000000000 : ℚ), 2⟩,
    ⟨(796479212393/1000000000000 : ℚ), (-1751618667/10000000000 : ℚ), (31319682717/250000000000 : ℚ), 2⟩,
    ⟨(399364217499/500000000000 : ℚ), (-1818725931/10000000000 : ℚ), (130631202449/1000000000000 : ℚ), 2⟩,
    ⟨(399929243907/500000000000 : ℚ), (-185185481/1000000000 : ℚ), (13327916847/100000000000 : ℚ), 2⟩,
    ⟨(4/5 : ℚ), (-927988097/5000000000 : ℚ), (133608850021/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (4/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (574999/1000000 : ℚ)
  x := (43246134293/250000000000 : ℚ)
  μ := (4/5 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (4/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control512.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control512.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate512
