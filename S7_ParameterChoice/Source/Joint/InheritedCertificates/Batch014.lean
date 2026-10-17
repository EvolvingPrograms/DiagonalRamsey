import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control126
namespace DiagonalRamsey.JointInheritedCertificate126
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(23073813783/100000000000 : ℚ), (26964159285307/10000000000 : ℚ), (-623058541851251/1000000000000 : ℚ), 12⟩,
    ⟨(57780661201/250000000000 : ℚ), (46343463241/156250000 : ℚ), (-432245744401/6250000000 : ℚ), 9⟩,
    ⟨(115945366221/500000000000 : ℚ), (525434303523/5000000000 : ℚ), (-6211848987701/250000000000 : ℚ), 8⟩,
    ⟨(233040550353/1000000000000 : ℚ), (52541218297/1000000000 : ℚ), (-1579878374307/125000000000 : ℚ), 7⟩,
    ⟨(9382773141/40000000000 : ℚ), (310415003483/10000000000 : ℚ), (-3807512959267/500000000000 : ℚ), 6⟩,
    ⟨(236473383997/1000000000000 : ℚ), (202378188437/10000000000 : ℚ), (-5071903618493/1000000000000 : ℚ), 6⟩,
    ⟨(238748129733/1000000000000 : ℚ), (140788520363/10000000000 : ℚ), (-1804624771453/500000000000 : ℚ), 5⟩,
    ⟨(30173510709/125000000000 : ℚ), (12817894137/1250000000 : ℚ), (-2691584987447/1000000000000 : ℚ), 5⟩,
    ⟨(30548361491/125000000000 : ℚ), (77280650131/10000000000 : ℚ), (-2078309477007/1000000000000 : ℚ), 4⟩,
    ⟨(123868662057/500000000000 : ℚ), (59796253321/10000000000 : ℚ), (-824152305313/500000000000 : ℚ), 4⟩,
    ⟨(125715655373/500000000000 : ℚ), (23622586253/5000000000 : ℚ), (-1335206338819/1000000000000 : ℚ), 4⟩,
    ⟨(127729976343/500000000000 : ℚ), (7593467041/2000000000 : ℚ), (-137522369647/125000000000 : ℚ), 4⟩,
    ⟨(259813544583/1000000000000 : ℚ), (30942022369/10000000000 : ℚ), (-91926779193/100000000000 : ℚ), 3⟩,
    ⟨(264481598253/1000000000000 : ℚ), (25514239019/10000000000 : ℚ), (-777046196309/1000000000000 : ℚ), 3⟩,
    ⟨(134726433973/500000000000 : ℚ), (21248461467/10000000000 : ℚ), (-165803902891/250000000000 : ℚ), 3⟩,
    ⟨(274715377437/1000000000000 : ℚ), (2230783343/1250000000 : ℚ), (-570688070077/1000000000000 : ℚ), 3⟩,
    ⟨(280256448881/1000000000000 : ℚ), (15097851113/10000000000 : ℚ), (-98891186827/200000000000 : ℚ), 3⟩,
    ⟨(5721254667/20000000000 : ℚ), (642620029/500000000 : ℚ), (-107725011897/250000000000 : ℚ), 3⟩,
    ⟨(292120242997/1000000000000 : ℚ), (1099938397/1000000000 : ℚ), (-377352194101/1000000000000 : ℚ), 3⟩,
    ⟨(298414384751/1000000000000 : ℚ), (591025109/625000000 : ℚ), (-82952595391/250000000000 : ℚ), 3⟩,
    ⟨(19058124717/62500000000 : ℚ), (8161093071/10000000000 : ℚ), (-292748853599/1000000000000 : ℚ), 2⟩,
    ⟨(62330275697/200000000000 : ℚ), (7065624717/10000000000 : ℚ), (-16186778033/62500000000 : ℚ), 2⟩,
    ⟨(79640585347/250000000000 : ℚ), (613286287/1000000000 : ℚ), (-57401587647/250000000000 : ℚ), 2⟩,
    ⟨(325646235067/1000000000000 : ℚ), (5333666133/10000000000 : ℚ), (-203872122333/1000000000000 : ℚ), 2⟩,
    ⟨(1664429969/5000000000 : ℚ), (4644940277/10000000000 : ℚ), (-181201621591/1000000000000 : ℚ), 2⟩,
    ⟨(42533022047/125000000000 : ℚ), (4048219823/10000000000 : ℚ), (-16112330609/100000000000 : ℚ), 2⟩,
    ⟨(347763008107/1000000000000 : ℚ), (70572399/200000000 : ℚ), (-143253261079/1000000000000 : ℚ), 2⟩,
    ⟨(355364423649/1000000000000 : ℚ), (3074052569/10000000000 : ℚ), (-63638229569/500000000000 : ℚ), 2⟩,
    ⟨(181525055263/500000000000 : ℚ), (334329181/1250000000 : ℚ), (-112932537271/1000000000000 : ℚ), 2⟩,
    ⟨(370801553247/1000000000000 : ℚ), (464445839/2000000000 : ℚ), (-100004885393/1000000000000 : ℚ), 2⟩,
    ⟨(378600077907/1000000000000 : ℚ), (2010107861/10000000000 : ℚ), (-88312195473/1000000000000 : ℚ), 2⟩,
    ⟨(48303362147/125000000000 : ℚ), (1732667087/10000000000 : ℚ), (-3108074187/40000000000 : ℚ), 2⟩,
    ⟨(394263155561/1000000000000 : ℚ), (1485220893/10000000000 : ℚ), (-2721789509/40000000000 : ℚ), 2⟩,
    ⟨(40208997483/100000000000 : ℚ), (631915597/5000000000 : ℚ), (-59231068427/1000000000000 : ℚ), 2⟩,
    ⟨(40988849949/100000000000 : ℚ), (1065173749/10000000000 : ℚ), (-10233421577/200000000000 : ℚ), 2⟩,
    ⟨(41763994221/100000000000 : ℚ), (886430801/10000000000 : ℚ), (-8754496923/200000000000 : ℚ), 2⟩,
    ⟨(13291425909/31250000000 : ℚ), (725204581/10000000000 : ℚ), (-9244507199/250000000000 : ℚ), 2⟩,
    ⟨(43292704463/100000000000 : ℚ), (289723613/5000000000 : ℚ), (-30724004567/1000000000000 : ℚ), 2⟩,
    ⟨(440425876361/1000000000000 : ℚ), (223701847/5000000000 : ℚ), (-3119832343/125000000000 : ℚ), 2⟩,
    ⟨(447804058937/1000000000000 : ℚ), (163782523/5000000000 : ℚ), (-392740479/20000000000 : ℚ), 2⟩,
    ⟨(45504381767/100000000000 : ℚ), (21863001/1000000000 : ℚ), (-14719924119/1000000000000 : ℚ), 2⟩,
    ⟨(462127711349/1000000000000 : ℚ), (59736627/5000000000 : ℚ), (-2543286881/250000000000 : ℚ), 2⟩,
    ⟨(117259668563/250000000000 : ℚ), (14559529/5000000000 : ℚ), (-745844107/125000000000 : ℚ), 2⟩,
    ⟨(29735003579/62500000000 : ℚ), (-53280601/10000000000 : ℚ), (-32413847/15625000000 : ℚ), 2⟩,
    ⟨(241137833993/500000000000 : ℚ), (-128464351/10000000000 : ℚ), (1526710147/1000000000000 : ℚ), 2⟩,
    ⟨(24428490487/50000000000 : ℚ), (-197076783/10000000000 : ℚ), (1214278847/250000000000 : ℚ), 2⟩,
    ⟨(494627319387/1000000000000 : ℚ), (-3246017/125000000 : ℚ), (7934584481/1000000000000 : ℚ), 2⟩,
    ⟨(31277100241/62500000000 : ℚ), (-316771301/10000000000 : ℚ), (2693712491/250000000000 : ℚ), 2⟩,
    ⟨(5059746753/10000000000 : ℚ), (-46097349/1250000000 : ℚ), (13391780781/1000000000000 : ℚ), 2⟩,
    ⟨(511237184791/1000000000000 : ℚ), (-416082791/10000000000 : ℚ), (3159520793/200000000000 : ℚ), 2⟩,
    ⟨(129052113621/250000000000 : ℚ), (-459015653/10000000000 : ℚ), (18003094677/1000000000000 : ℚ), 2⟩,
    ⟨(260438254077/500000000000 : ℚ), (-124467193/2500000000 : ℚ), (20017740423/1000000000000 : ℚ), 2⟩,
    ⟨(525230100051/1000000000000 : ℚ), (-266448693/5000000000 : ℚ), (4369976507/200000000000 : ℚ), 2⟩,
    ⟨(529258741991/1000000000000 : ℚ), (-564324661/10000000000 : ℚ), (23506836971/1000000000000 : ℚ), 2⟩,
    ⟨(532952728623/1000000000000 : ℚ), (-592345189/10000000000 : ℚ), (4999000077/200000000000 : ℚ), 2⟩,
    ⟨(536303160809/1000000000000 : ℚ), (-617127947/10000000000 : ℚ), (26319939423/1000000000000 : ℚ), 2⟩,
    ⟨(107860393413/200000000000 : ℚ), (-25552753/400000000 : ℚ), (5497293803/200000000000 : ℚ), 2⟩,
    ⟨(541941923003/1000000000000 : ℚ), (-131508551/2000000000 : ℚ), (3562339783/125000000000 : ℚ), 2⟩,
    ⟨(27210833437/50000000000 : ℚ), (-336702751/5000000000 : ℚ), (2936018649/100000000000 : ℚ), 2⟩,
    ⟨(136530181053/250000000000 : ℚ), (-686495163/10000000000 : ℚ), (15036895577/500000000000 : ℚ), 2⟩,
    ⟨(34228093899/62500000000 : ℚ), (-348441693/5000000000 : ℚ), (1225676249/40000000000 : ℚ), 2⟩,
    ⟨(109759864059/200000000000 : ℚ), (-17615659/250000000 : ℚ), (15533197197/500000000000 : ℚ), 2⟩,
    ⟨(137391851983/250000000000 : ℚ), (-709765577/10000000000 : ℚ), (1959289469/62500000000 : ℚ), 2⟩,
    ⟨(549951914907/1000000000000 : ℚ), (-712328391/10000000000 : ℚ), (31489524619/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-356324213/5000000000 : ℚ), (15753562907/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (319763887131/1000000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control126.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control126.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate126

-- Control127
namespace DiagonalRamsey.JointInheritedCertificate127
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(20481368813/500000000000 : ℚ), (2549433004929/10000000000 : ℚ), (-82125740363/7812500000 : ℚ), 9⟩,
    ⟨(832879701/20000000000 : ℚ), (235119317813/10000000000 : ℚ), (-1002705278169/1000000000000 : ℚ), 6⟩,
    ⟨(5362845769/125000000000 : ℚ), (2150031043/400000000 : ℚ), (-23960988639/100000000000 : ℚ), 4⟩,
    ⟨(22273721461/500000000000 : ℚ), (1227386101/2500000000 : ℚ), (-13420754701/500000000000 : ℚ), 4⟩,
    ⟨(46327628229/1000000000000 : ℚ), (-1483370643/1000000000 : ℚ), (31320990661/500000000000 : ℚ), 3⟩,
    ⟨(47972304999/1000000000000 : ℚ), (-12284734963/5000000000 : ℚ), (54240780453/500000000000 : ℚ), 3⟩,
    ⟨(24615543051/500000000000 : ℚ), (-5934098549/2000000000 : ℚ), (133258584933/1000000000000 : ℚ), 3⟩,
    ⟨(1996493341/40000000000 : ℚ), (-31933688357/10000000000 : ℚ), (144476039761/1000000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-1288223987/400000000 : ℚ), (29166880307/200000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (172668870747/500000000000 : ℚ)
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
#print axioms check2
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control127.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control127.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate127

-- Control128
namespace DiagonalRamsey.JointInheritedCertificate128
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(205101209/2500000000 : ℚ), (2641920214473/2500000000 : ℚ), (-86898946258151/1000000000000 : ℚ), 11⟩,
    ⟨(41192368911/500000000000 : ℚ), (1119231931327/10000000000 : ℚ), (-9323410871271/1000000000000 : ℚ), 7⟩,
    ⟨(8306001677/100000000000 : ℚ), (183933007311/5000000000 : ℚ), (-623242501593/200000000000 : ℚ), 6⟩,
    ⟨(21010092463/250000000000 : ℚ), (40687353107/2500000000 : ℚ), (-702317099339/500000000000 : ℚ), 5⟩,
    ⟨(85288122649/1000000000000 : ℚ), (79276000383/10000000000 : ℚ), (-698742383887/1000000000000 : ℚ), 4⟩,
    ⟨(86755324721/1000000000000 : ℚ), (9378896443/2500000000 : ℚ), (-339890911663/1000000000000 : ℚ), 4⟩,
    ⟨(17677118463/200000000000 : ℚ), (13762464299/10000000000 : ℚ), (-132074623889/1000000000000 : ℚ), 4⟩,
    ⟨(45058137581/500000000000 : ℚ), (-497344593/5000000000 : ℚ), (-93428207/200000000000 : ℚ), 3⟩,
    ⟨(9188086409/100000000000 : ℚ), (-10767832519/10000000000 : ℚ), (88411813209/1000000000000 : ℚ), 3⟩,
    ⟨(93611546937/1000000000000 : ℚ), (-4386820643/2500000000 : ℚ), (30251715697/200000000000 : ℚ), 3⟩,
    ⟨(95241814531/1000000000000 : ℚ), (-2799816993/1250000000 : ℚ), (197051394933/1000000000000 : ℚ), 3⟩,
    ⟨(96709016603/1000000000000 : ℚ), (-1620176087/625000000 : ℚ), (230867800693/1000000000000 : ℚ), 3⟩,
    ⟨(489783847/5000000000 : ℚ), (-14235390589/5000000000 : ℚ), (15979012117/62500000000 : ℚ), 3⟩,
    ⟨(49468561241/500000000000 : ℚ), (-30249811929/10000000000 : ℚ), (273176786943/1000000000000 : ℚ), 3⟩,
    ⟨(9961240143/100000000000 : ℚ), (-15690638311/5000000000 : ℚ), (71102245027/250000000000 : ℚ), 3⟩,
    ⟨(24989163913/250000000000 : ℚ), (-6386431667/2000000000 : ℚ), (28990587969/100000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-16000178803/5000000000 : ℚ), (145293862253/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (134407751719/500000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control128.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control128.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate128

-- Control129
namespace DiagonalRamsey.JointInheritedCertificate129
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(234245955167/1000000000000 : ℚ), (9233765516051/10000000000 : ℚ), (-108518834868103/500000000000 : ℚ), 11⟩,
    ⟨(29422561401/125000000000 : ℚ), (1000670404471/10000000000 : ℚ), (-12004468860483/500000000000 : ℚ), 8⟩,
    ⟨(237638637087/1000000000000 : ℚ), (34671510551/1000000000 : ℚ), (-4283300983573/500000000000 : ℚ), 6⟩,
    ⟨(120499322813/500000000000 : ℚ), (168659371151/10000000000 : ℚ), (-862405260663/200000000000 : ℚ), 5⟩,
    ⟨(49085631621/200000000000 : ℚ), (19311675169/2000000000 : ℚ), (-2561099586707/1000000000000 : ℚ), 5⟩,
    ⟨(250884515897/1000000000000 : ℚ), (7598245313/1250000000 : ℚ), (-837345882697/500000000000 : ℚ), 4⟩,
    ⟨(51463034259/200000000000 : ℚ), (8137913701/2000000000 : ℚ), (-291191299251/250000000000 : ℚ), 4⟩,
    ⟨(264658193571/1000000000000 : ℚ), (5681902889/2000000000 : ℚ), (-211176077823/250000000000 : ℚ), 3⟩,
    ⟨(1065792443/3906250000 : ℚ), (638589193/312500000 : ℚ), (-315329058739/500000000000 : ℚ), 3⟩,
    ⟨(14089518197/50000000000 : ℚ), (1876336619/1250000000 : ℚ), (-480416925779/1000000000000 : ℚ), 3⟩,
    ⟨(145707259933/500000000000 : ℚ), (11183680537/10000000000 : ℚ), (-74171146303/200000000000 : ℚ), 3⟩,
    ⟨(37702830913/125000000000 : ℚ), (1680319691/2000000000 : ℚ), (-721115907/2500000000 : ℚ), 3⟩,
    ⟨(62463287281/200000000000 : ℚ), (6327907149/10000000000 : ℚ), (-224849968903/1000000000000 : ℚ), 2⟩,
    ⟨(161696450067/500000000000 : ℚ), (2374447029/5000000000 : ℚ), (-10918929387/62500000000 : ℚ), 2⟩,
    ⟨(83686341523/250000000000 : ℚ), (1762081517/5000000000 : ℚ), (-16803928373/125000000000 : ℚ), 2⟩,
    ⟨(13850580153/40000000000 : ℚ), (1279413173/5000000000 : ℚ), (-101583472537/1000000000000 : ℚ), 2⟩,
    ⟨(17891968887/50000000000 : ℚ), (893595517/5000000000 : ℚ), (-2326064799/31250000000 : ℚ), 2⟩,
    ⟨(23084907217/62500000000 : ℚ), (1162828301/10000000000 : ℚ), (-12936019867/250000000000 : ℚ), 2⟩,
    ⟨(38071098143/100000000000 : ℚ), (130466813/2000000000 : ℚ), (-16303659713/500000000000 : ℚ), 2⟩,
    ⟨(9794686129/25000000000 : ℚ), (231300007/10000000000 : ℚ), (-2043886273/125000000000 : ℚ), 2⟩,
    ⟨(402481234261/1000000000000 : ℚ), (-29587663/2500000000 : ℚ), (-2469691669/1000000000000 : ℚ), 2⟩,
    ⟨(206344680849/500000000000 : ℚ), (-205080981/5000000000 : ℚ), (4710484493/500000000000 : ℚ), 2⟩,
    ⟨(3378508141/8000000000 : ℚ), (-654382157/10000000000 : ℚ), (19615008341/1000000000000 : ℚ), 2⟩,
    ⟨(431261016157/1000000000000 : ℚ), (-858827947/10000000000 : ℚ), (28339001097/1000000000000 : ℚ), 2⟩,
    ⟨(439445687993/1000000000000 : ℚ), (-205899391/2000000000 : ℚ), (17884072211/500000000000 : ℚ), 2⟩,
    ⟨(446788710269/1000000000000 : ℚ), (-1171006883/10000000000 : ℚ), (5254757873/125000000000 : ℚ), 2⟩,
    ⟨(453219365667/1000000000000 : ℚ), (-1286913457/10000000000 : ℚ), (47253526047/1000000000000 : ℚ), 2⟩,
    ⟨(22933786173/50000000000 : ℚ), (-1379942113/10000000000 : ℚ), (25747466477/500000000000 : ℚ), 2⟩,
    ⟨(463105235939/1000000000000 : ℚ), (-1452157207/10000000000 : ℚ), (54823152661/1000000000000 : ℚ), 2⟩,
    ⟨(466465244477/1000000000000 : ℚ), (-94067811/625000000 : ℚ), (447524327/7812500000 : ℚ), 2⟩,
    ⟨(117180847589/250000000000 : ℚ), (-61592057/400000000 : ℚ), (58906422607/1000000000000 : ℚ), 2⟩,
    ⟨(469857926397/1000000000000 : ℚ), (-311398533/2000000000 : ℚ), (5971318987/100000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-155913383/1000000000 : ℚ), (29906904709/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (301328834669/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control129.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control129.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate129

-- Control130
namespace DiagonalRamsey.JointInheritedCertificate130
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(120190019681/500000000000 : ℚ), (582692399429/625000000 : ℚ), (-14054293222131/62500000000 : ℚ), 11⟩,
    ⟨(1932265437/8000000000 : ℚ), (1010527941673/10000000000 : ℚ), (-24875257360727/1000000000000 : ℚ), 8⟩,
    ⟨(121914177391/500000000000 : ℚ), (350216992777/10000000000 : ℚ), (-1109468937381/125000000000 : ℚ), 6⟩,
    ⟨(247243461039/1000000000000 : ℚ), (85205590517/5000000000 : ℚ), (-4467677493783/1000000000000 : ℚ), 5⟩,
    ⟨(125872804529/500000000000 : ℚ), (97591038189/10000000000 : ℚ), (-1326795586557/500000000000 : ℚ), 5⟩,
    ⟨(257291440691/1000000000000 : ℚ), (30727830559/5000000000 : ℚ), (-1735220795403/1000000000000 : ℚ), 4⟩,
    ⟨(65956886637/250000000000 : ℚ), (10287889071/2500000000 : ℚ), (-1206919785591/1000000000000 : ℚ), 4⟩,
    ⟨(271290980357/1000000000000 : ℚ), (28742183497/10000000000 : ℚ), (-54708703683/62500000000 : ℚ), 3⟩,
    ⟨(279609865171/1000000000000 : ℚ), (20682035241/10000000000 : ℚ), (-653602715447/1000000000000 : ℚ), 3⟩,
    ⟨(14435204279/50000000000 : ℚ), (15198796643/10000000000 : ℚ), (-99595470301/200000000000 : ℚ), 3⟩,
    ⟨(298486059271/1000000000000 : ℚ), (11329555167/10000000000 : ℚ), (-192251786173/500000000000 : ℚ), 3⟩,
    ⟨(308861580491/1000000000000 : ℚ), (8516483473/10000000000 : ℚ), (-149582404277/500000000000 : ℚ), 3⟩,
    ⟨(319730727297/1000000000000 : ℚ), (3209786481/5000000000 : ℚ), (-116660490399/500000000000 : ℚ), 2⟩,
    ⟨(66197764773/200000000000 : ℚ), (2411435357/5000000000 : ℚ), (-45353616977/250000000000 : ℚ), 2⟩,
    ⟨(34252744857/100000000000 : ℚ), (3584481021/10000000000 : ℚ), (-139742221837/1000000000000 : ℚ), 2⟩,
    ⟨(88558869537/250000000000 : ℚ), (1304240967/5000000000 : ℚ), (-2644077151/25000000000 : ℚ), 2⟩,
    ⟨(2928001263/8000000000 : ℚ), (1828448943/10000000000 : ℚ), (-77689338459/1000000000000 : ℚ), 2⟩,
    ⟨(377708187453/1000000000000 : ℚ), (1197424547/10000000000 : ℚ), (-54236537147/1000000000000 : ℚ), 2⟩,
    ⟨(194623406079/500000000000 : ℚ), (340807731/5000000000 : ℚ), (-17232605663/500000000000 : ℚ), 2⟩,
    ⟨(200252454363/500000000000 : ℚ), (2563223/100000000 : ℚ), (-707110649/40000000000 : ℚ), 2⟩,
    ⟨(102843513883/250000000000 : ℚ), (-48376177/5000000000 : ℚ), (-3349629131/1000000000000 : ℚ), 2⟩,
    ⟨(26359348547/62500000000 : ℚ), (-195660861/5000000000 : ℚ), (2229444071/250000000000 : ℚ), 2⟩,
    ⟨(431531550443/1000000000000 : ℚ), (-637764977/10000000000 : ℚ), (3885958623/200000000000 : ℚ), 2⟩,
    ⟨(440625770853/1000000000000 : ℚ), (-26375029/312500000 : ℚ), (5684353313/200000000000 : ℚ), 2⟩,
    ⟨(224472327833/500000000000 : ℚ), (-635067/6250000 : ℚ), (36075781371/1000000000000 : ℚ), 2⟩,
    ⟨(18256323579/40000000000 : ℚ), (-579382163/5000000000 : ℚ), (42532884483/1000000000000 : ℚ), 2⟩,
    ⟨(115736048833/250000000000 : ℚ), (-637788653/5000000000 : ℚ), (11975526987/250000000000 : ℚ), 2⟩,
    ⟨(93698005393/200000000000 : ℚ), (-136930997/1000000000 : ℚ), (261335903/5000000000 : ℚ), 2⟩,
    ⟨(59124021873/125000000000 : ℚ), (-1442056171/10000000000 : ℚ), (27845767511/500000000000 : ℚ), 2⟩,
    ⟨(238203640621/500000000000 : ℚ), (-186920527/1250000000 : ℚ), (58222021789/1000000000000 : ℚ), 2⟩,
    ⟨(239351228199/500000000000 : ℚ), (-1530325819/10000000000 : ℚ), (11978323431/200000000000 : ℚ), 2⟩,
    ⟨(239927798331/500000000000 : ℚ), (-386909293/2500000000 : ℚ), (15180328099/250000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1549793237/10000000000 : ℚ), (59399207/976562500 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (74419790803/250000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control130.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control130.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate130

-- Control131
namespace DiagonalRamsey.JointInheritedCertificate131
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(252910541673/1000000000000 : ℚ), (9513362740187/10000000000 : ℚ), (-120702298370229/500000000000 : ℚ), 11⟩,
    ⟨(127049813967/500000000000 : ℚ), (1031532054673/10000000000 : ℚ), (-5340928157457/200000000000 : ℚ), 8⟩,
    ⟨(128233174453/500000000000 : ℚ), (357680300229/10000000000 : ℚ), (-952862702707/100000000000 : ℚ), 6⟩,
    ⟨(64996977943/250000000000 : ℚ), (174145858127/10000000000 : ℚ), (-1199107595607/250000000000 : ℚ), 5⟩,
    ⟨(66157600489/250000000000 : ℚ), (99793466139/10000000000 : ℚ), (-712244816581/250000000000 : ℚ), 5⟩,
    ⟨(270349109741/1000000000000 : ℚ), (62884674079/10000000000 : ℚ), (-1863119599977/1000000000000 : ℚ), 4⟩,
    ⟨(277088960843/1000000000000 : ℚ), (10534477/2500000 : ℚ), (-324005543877/250000000000 : ℚ), 4⟩,
    ⟨(284785046813/1000000000000 : ℚ), (29452879497/10000000000 : ℚ), (-188024039477/200000000000 : ℚ), 3⟩,
    ⟨(58672650027/200000000000 : ℚ), (10605225891/5000000000 : ℚ), (-351074284897/500000000000 : ℚ), 3⟩,
    ⟨(151370479011/500000000000 : ℚ), (15601199839/10000000000 : ℚ), (-16723697189/31250000000 : ℚ), 3⟩,
    ⟨(156413929011/500000000000 : ℚ), (5820920813/5000000000 : ℚ), (-413427505951/1000000000000 : ℚ), 3⟩,
    ⟨(80881701943/250000000000 : ℚ), (175252051/200000000 : ℚ), (-80477068037/250000000000 : ℚ), 3⟩,
    ⟨(167367385269/500000000000 : ℚ), (6616085119/10000000000 : ℚ), (-31415553233/125000000000 : ℚ), 2⟩,
    ⟨(43292975939/125000000000 : ℚ), (4981564719/10000000000 : ℚ), (-195708777291/1000000000000 : ℚ), 2⟩,
    ⟨(358242117321/1000000000000 : ℚ), (371395179/1000000000 : ℚ), (-151084968773/1000000000000 : ℚ), 2⟩,
    ⟨(185157556369/500000000000 : ℚ), (1357560787/5000000000 : ℚ), (-114723873319/1000000000000 : ℚ), 2⟩,
    ⟨(382446524217/1000000000000 : ℚ), (1917091311/10000000000 : ℚ), (-16941023789/200000000000 : ℚ), 2⟩,
    ⟨(197259759817/500000000000 : ℚ), (1271777179/10000000000 : ℚ), (-59648554947/1000000000000 : ℚ), 2⟩,
    ⟨(406417829443/1000000000000 : ℚ), (372278307/5000000000 : ℚ), (-481803979/12500000000 : ℚ), 2⟩,
    ⟨(418026866417/1000000000000 : ℚ), (19381869/625000000 : ℚ), (-20642174493/1000000000000 : ℚ), 2⟩,
    ⟨(429234829183/1000000000000 : ℚ), (-5033073/1000000000 : ℚ), (-5377617149/1000000000000 : ℚ), 2⟩,
    ⟨(439933778933/1000000000000 : ℚ), (-350839293/10000000000 : ℚ), (749863/97656250 : ℚ), 2⟩,
    ⟨(112505169733/250000000000 : ℚ), (-602074329/10000000000 : ℚ), (2356950227/125000000000 : ℚ), 2⟩,
    ⟨(22969919341/50000000000 : ℚ), (-162434517/2000000000 : ℚ), (28407344517/1000000000000 : ℚ), 2⟩,
    ⟨(233988295071/500000000000 : ℚ), (-246845643/2500000000 : ℚ), (18265267881/500000000000 : ℚ), 2⟩,
    ⟨(29729542257/62500000000 : ℚ), (-1132519111/10000000000 : ℚ), (5422218717/125000000000 : ℚ), 2⟩,
    ⟨(241206263607/500000000000 : ℚ), (-1251292587/10000000000 : ℚ), (2453354603/50000000000 : ℚ), 2⟩,
    ⟨(488131234999/1000000000000 : ℚ), (-1346549003/10000000000 : ℚ), (53689387567/1000000000000 : ℚ), 2⟩,
    ⟨(492773725183/1000000000000 : ℚ), (-142044539/1000000000 : ℚ), (28656769817/500000000000 : ℚ), 2⟩,
    ⟨(496295288049/1000000000000 : ℚ), (-737288679/5000000000 : ℚ), (7498813129/125000000000 : ℚ), 2⟩,
    ⟨(498662009021/1000000000000 : ℚ), (-1510070297/10000000000 : ℚ), (61756189179/1000000000000 : ℚ), 2⟩,
    ⟨(249925547641/500000000000 : ℚ), (-1527642031/10000000000 : ℚ), (15658366953/250000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-764915199/5000000000 : ℚ), (62742869883/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (290217505921/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control131.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control131.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate131

-- Control132
namespace DiagonalRamsey.JointInheritedCertificate132
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(66385462139/250000000000 : ℚ), (38955021531069/10000000000 : ℚ), (-1035469028895431/1000000000000 : ℚ), 13⟩,
    ⟨(265848308379/1000000000000 : ℚ), (4295776113827/10000000000 : ℚ), (-22985121450587/200000000000 : ℚ), 10⟩,
    ⟨(133230244869/500000000000 : ℚ), (305556506089/2000000000 : ℚ), (-41282133869071/1000000000000 : ℚ), 8⟩,
    ⟨(267376917833/1000000000000 : ℚ), (191838745871/2500000000 : ℚ), (-20992605625343/1000000000000 : ℚ), 7⟩,
    ⟨(67148846227/250000000000 : ℚ), (227834368449/5000000000 : ℚ), (-12643004750401/1000000000000 : ℚ), 7⟩,
    ⟨(270112955571/1000000000000 : ℚ), (298695327743/10000000000 : ℚ), (-2104112130947/250000000000 : ℚ), 6⟩,
    ⟨(13596298693/50000000000 : ℚ), (208967318247/10000000000 : ℚ), (-5985549760791/1000000000000 : ℚ), 5⟩,
    ⟨(54806014411/200000000000 : ℚ), (153075238549/10000000000 : ℚ), (-4460380217841/1000000000000 : ℚ), 5⟩,
    ⟨(691050453/2500000000 : ℚ), (23205325599/2000000000 : ℚ), (-3441079622363/1000000000000 : ℚ), 5⟩,
    ⟨(17443158957/62500000000 : ℚ), (90285401257/10000000000 : ℚ), (-1363179480931/500000000000 : ℚ), 4⟩,
    ⟨(35254340657/125000000000 : ℚ), (2869172203/400000000 : ℚ), (-551481823257/250000000000 : ℚ), 4⟩,
    ⟨(142622817119/500000000000 : ℚ), (57950642509/10000000000 : ℚ), (-453810974523/250000000000 : ℚ), 4⟩,
    ⟨(144357767449/500000000000 : ℚ), (47467483919/10000000000 : ℚ), (-757249627573/500000000000 : ℚ), 4⟩,
    ⟨(292436067941/1000000000000 : ℚ), (983194037/250000000 : ℚ), (-159757092409/125000000000 : ℚ), 4⟩,
    ⟨(148199135139/500000000000 : ℚ), (32897578787/10000000000 : ℚ), (-544401062763/500000000000 : ℚ), 3⟩,
    ⟨(37574074577/125000000000 : ℚ), (27741935617/10000000000 : ℚ), (-467478409041/500000000000 : ℚ), 3⟩,
    ⟨(61001788491/200000000000 : ℚ), (2944311731/1250000000 : ℚ), (-808199421521/1000000000000 : ℚ), 3⟩,
    ⟨(309636668431/1000000000000 : ℚ), (5028658353/2500000000 : ℚ), (-70251592859/100000000000 : ℚ), 3⟩,
    ⟨(78616156487/250000000000 : ℚ), (17260325363/10000000000 : ℚ), (-613472556427/1000000000000 : ℚ), 3⟩,
    ⟨(9983787001/31250000000 : ℚ), (14870501899/10000000000 : ℚ), (-2688712863/5000000000 : ℚ), 3⟩,
    ⟨(64934851471/200000000000 : ℚ), (6426653829/5000000000 : ℚ), (-472790556647/1000000000000 : ℚ), 3⟩,
    ⟨(330031335351/1000000000000 : ℚ), (5569047039/5000000000 : ℚ), (-83331391263/200000000000 : ℚ), 3⟩,
    ⟨(335539512347/1000000000000 : ℚ), (151091479/156250000 : ℚ), (-91952028507/250000000000 : ℚ), 3⟩,
    ⟨(341185518663/1000000000000 : ℚ), (8405286997/10000000000 : ℚ), (-325029972063/1000000000000 : ℚ), 2⟩,
    ⟨(346955752577/1000000000000 : ℚ), (3654980317/5000000000 : ℚ), (-14367575023/50000000000 : ℚ), 2⟩,
    ⟨(86141678/244140625 : ℚ), (6356249953/10000000000 : ℚ), (-63497178363/250000000000 : ℚ), 2⟩,
    ⟨(358813033411/1000000000000 : ℚ), (552180517/1000000000 : ℚ), (-112151590631/500000000000 : ℚ), 2⟩,
    ⟨(11402234847/31250000000 : ℚ), (2394203671/5000000000 : ℚ), (-19777090003/100000000000 : ℚ), 2⟩,
    ⟨(370997162753/1000000000000 : ℚ), (2070550627/5000000000 : ℚ), (-86979333349/500000000000 : ℚ), 2⟩,
    ⟨(377175219137/1000000000000 : ℚ), (5708051/16000000 : ℚ), (-19063244709/125000000000 : ℚ), 2⟩,
    ⟨(383390800777/1000000000000 : ℚ), (122297269/400000000 : ℚ), (-133110894389/1000000000000 : ℚ), 2⟩,
    ⟨(12175904181/31250000000 : ℚ), (2602221283/10000000000 : ℚ), (-57759636553/500000000000 : ℚ), 2⟩,
    ⟨(197937294987/500000000000 : ℚ), (2194694957/10000000000 : ℚ), (-12439489851/125000000000 : ℚ), 2⟩,
    ⟨(402112722989/1000000000000 : ℚ), (1828772387/10000000000 : ℚ), (-3396712617/40000000000 : ℚ), 2⟩,
    ⟨(408328304629/1000000000000 : ℚ), (749650043/5000000000 : ℚ), (-71568607267/1000000000000 : ℚ), 2⟩,
    ⟨(414506361013/1000000000000 : ℚ), (1201892187/10000000000 : ℚ), (-59334168223/1000000000000 : ℚ), 2⟩,
    ⟨(210316004331/500000000000 : ℚ), (46640089/500000000 : ℚ), (-48099006989/1000000000000 : ℚ), 2⟩,
    ⟨(85338098071/200000000000 : ℚ), (17220409/250000000 : ℚ), (-18881666353/500000000000 : ℚ), 2⟩,
    ⟨(216333605339/500000000000 : ℚ), (467172421/10000000000 : ℚ), (-5648129451/200000000000 : ℚ), 2⟩,
    ⟨(438547771189/1000000000000 : ℚ), (132742657/5000000000 : ℚ), (-19455757021/1000000000000 : ℚ), 2⟩,
    ⟨(222159002551/500000000000 : ℚ), (81691379/10000000000 : ℚ), (-5671561899/500000000000 : ℚ), 2⟩,
    ⟨(449964011419/1000000000000 : ℚ), (-86000017/10000000000 : ℚ), (-769097959/200000000000 : ℚ), 2⟩,
    ⟨(91094437683/200000000000 : ℚ), (-239146389/10000000000 : ℚ), (1543636571/500000000000 : ℚ), 2⟩,
    ⟨(46082926641/100000000000 : ℚ), (-379105489/10000000000 : ℚ), (9499132357/1000000000000 : ℚ), 2⟩,
    ⟨(233011169867/500000000000 : ℚ), (-507063271/10000000000 : ℚ), (15428711891/1000000000000 : ℚ), 2⟩,
    ⟨(235519448909/500000000000 : ℚ), (-624057429/10000000000 : ℚ), (10454993019/500000000000 : ℚ), 2⟩,
    ⟨(95173371067/200000000000 : ℚ), (-730997261/10000000000 : ℚ), (811652149/31250000000 : ℚ), 2⟩,
    ⟨(480494581311/1000000000000 : ℚ), (-82868049/1000000000 : ℚ), (245149737/8000000000 : ℚ), 2⟩,
    ⟨(9698218543/20000000000 : ℚ), (-18356151/200000000 : ℚ), (4368220357/125000000000 : ℚ), 2⟩,
    ⟨(30569078343/62500000000 : ℚ), (-499496863/5000000000 : ℚ), (38899481313/1000000000000 : ℚ), 2⟩,
    ⟨(30816715989/62500000000 : ℚ), (-1072779523/10000000000 : ℚ), (42522910689/1000000000000 : ℚ), 2⟩,
    ⟨(124196997217/250000000000 : ℚ), (-1139639509/10000000000 : ℚ), (45831925969/1000000000000 : ℚ), 2⟩,
    ⟨(62532236191/125000000000 : ℚ), (-29999747/250000000 : ℚ), (24420237927/500000000000 : ℚ), 2⟩,
    ⟨(50346879851/100000000000 : ℚ), (-1254194933/10000000000 : ℚ), (51560787561/1000000000000 : ℚ), 2⟩,
    ⟨(506412980453/1000000000000 : ℚ), (-651286299/5000000000 : ℚ), (27001771633/500000000000 : ℚ), 2⟩,
    ⟨(254541671283/500000000000 : ℚ), (-1345399167/10000000000 : ℚ), (56178032619/1000000000000 : ℚ), 2⟩,
    ⟨(511473451711/1000000000000 : ℚ), (-1382913323/10000000000 : ℚ), (29046141923/500000000000 : ℚ), 2⟩,
    ⟨(256788774953/500000000000 : ℚ), (-1415319561/10000000000 : ℚ), (59753176183/1000000000000 : ℚ), 2⟩,
    ⟨(103078113639/200000000000 : ℚ), (-1442791071/10000000000 : ℚ), (15291633833/250000000000 : ℚ), 2⟩,
    ⟨(516908138857/1000000000000 : ℚ), (-1465472149/10000000000 : ℚ), (779215177/12500000000 : ℚ), 2⟩,
    ⟨(518126605933/1000000000000 : ℚ), (-92717511/625000000 : ℚ), (6326915903/100000000000 : ℚ), 2⟩,
    ⟨(129760758507/250000000000 : ℚ), (-1496907219/10000000000 : ℚ), (63965464339/1000000000000 : ℚ), 2⟩,
    ⟨(259827607693/500000000000 : ℚ), (-1505821271/10000000000 : ℚ), (64428414621/1000000000000 : ℚ), 2⟩,
    ⟨(51996167521/100000000000 : ℚ), (-1510267163/10000000000 : ℚ), (12931903159/200000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-1510822379/10000000000 : ℚ), (32344192979/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (70651977837/250000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
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
theorem certOK : JointInheritedControls.control132.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control132.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate132

-- Control133
namespace DiagonalRamsey.JointInheritedCertificate133
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(285476988211/1000000000000 : ℚ), (5016424082551/5000000000 : ℚ), (-71830952166051/250000000000 : ℚ), 11⟩,
    ⟨(35843746401/125000000000 : ℚ), (1088880695133/10000000000 : ℚ), (-31784679652601/1000000000000 : ℚ), 8⟩,
    ⟨(289283677679/1000000000000 : ℚ), (47257767063/1250000000 : ℚ), (-5670787659653/500000000000 : ℚ), 6⟩,
    ⟨(293053706647/1000000000000 : ℚ), (92174050383/5000000000 : ℚ), (-114186324221/20000000000 : ℚ), 5⟩,
    ⟨(298023750671/1000000000000 : ℚ), (105812150573/10000000000 : ℚ), (-3391529007021/1000000000000 : ℚ), 5⟩,
    ⟨(30414594551/100000000000 : ℚ), (33395669083/5000000000 : ℚ), (-2218268531203/1000000000000 : ℚ), 4⟩,
    ⟨(155680665541/500000000000 : ℚ), (44835447231/10000000000 : ℚ), (-154345156009/100000000000 : ℚ), 4⟩,
    ⟨(319600419279/1000000000000 : ℚ), (31397176863/10000000000 : ℚ), (-1120028989229/1000000000000 : ℚ), 3⟩,
    ⟨(164391931589/500000000000 : ℚ), (11328201157/5000000000 : ℚ), (-836994939229/1000000000000 : ℚ), 3⟩,
    ⟨(169411610597/500000000000 : ℚ), (16702406193/10000000000 : ℚ), (-638469223613/1000000000000 : ℚ), 3⟩,
    ⟨(349621808821/1000000000000 : ℚ), (12496313471/10000000000 : ℚ), (-61729496113/125000000000 : ℚ), 3⟩,
    ⟨(361075629757/1000000000000 : ℚ), (9435746411/10000000000 : ℚ), (-77036646299/200000000000 : ℚ), 3⟩,
    ⟨(74614875489/200000000000 : ℚ), (286125829/400000000 : ℚ), (-301468206407/1000000000000 : ℚ), 2⟩,
    ⟨(192751248693/500000000000 : ℚ), (216590687/400000000 : ℚ), (-29448264193/125000000000 : ℚ), 2⟩,
    ⟨(398240299991/1000000000000 : ℚ), (127087707/312500000 : ℚ), (-182801349191/1000000000000 : ℚ), 2⟩,
    ⟨(411165113257/1000000000000 : ℚ), (120205129/400000000 : ℚ), (-139862488053/1000000000000 : ℚ), 2⟩,
    ⟨(424152464169/1000000000000 : ℚ), (2157496081/10000000000 : ℚ), (-52240224447/500000000000 : ℚ), 2⟩,
    ⟨(87415455487/200000000000 : ℚ), (147275109/1000000000 : ℚ), (-18752231953/250000000000 : ℚ), 2⟩,
    ⟨(11245377001/25000000000 : ℚ), (228501331/2500000000 : ℚ), (-25121093187/500000000000 : ℚ), 2⟩,
    ⟨(462243199981/1000000000000 : ℚ), (227121697/5000000000 : ℚ), (-457552957/15625000000 : ℚ), 2⟩,
    ⟨(474241947669/1000000000000 : ℚ), (36705349/5000000000 : ℚ), (-11456696321/1000000000000 : ℚ), 2⟩,
    ⟨(242847884303/500000000000 : ℚ), (-243554809/10000000000 : ℚ), (3752750341/1000000000000 : ℚ), 2⟩,
    ⟨(62061794529/125000000000 : ℚ), (-127019423/2500000000 : ℚ), (16740610587/1000000000000 : ℚ), 2⟩,
    ⟨(63316714281/125000000000 : ℚ), (-91111641/1250000000 : ℚ), (27812953139/1000000000000 : ℚ), 2⟩,
    ⟨(515717158147/1000000000000 : ℚ), (-912719591/10000000000 : ℚ), (37207557939/1000000000000 : ℚ), 2⟩,
    ⟨(65494530793/125000000000 : ℚ), (-1064741863/10000000000 : ℚ), (4510944833/100000000000 : ℚ), 2⟩,
    ⟨(132792907979/250000000000 : ℚ), (-1188961187/10000000000 : ℚ), (2066493541/40000000000 : ℚ), 2⟩,
    ⟨(107458765351/200000000000 : ℚ), (-1288450773/10000000000 : ℚ), (28488566893/500000000000 : ℚ), 2⟩,
    ⟨(542263870779/1000000000000 : ℚ), (-1365542643/10000000000 : ℚ), (61138258587/1000000000000 : ℚ), 2⟩,
    ⟨(546033899747/1000000000000 : ℚ), (-355490907/2500000000 : ℚ), (64208346107/1000000000000 : ℚ), 2⟩,
    ⟨(274283803109/500000000000 : ℚ), (-729466337/5000000000 : ℚ), (2649265959/40000000000 : ℚ), 2⟩,
    ⟨(109968117843/200000000000 : ℚ), (-1477227751/10000000000 : ℚ), (67236420163/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-369876463/2500000000 : ℚ), (8420212193/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (437499/1000000 : ℚ)
  x := (270759469719/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control133.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control133.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate133
