import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

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
theorem certOK : JointInheritedControls.control126.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control126.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate126
