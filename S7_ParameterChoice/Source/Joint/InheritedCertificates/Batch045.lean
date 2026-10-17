import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control389
namespace DiagonalRamsey.JointInheritedCertificate389
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(254177304839/1000000000000 : ℚ), (5865017547397/5000000000 : ℚ), (-149412843088753/500000000000 : ℚ), 12⟩,
    ⟨(254975305247/1000000000000 : ℚ), (639566815813/5000000000 : ℚ), (-825850668813/25000000000 : ℚ), 8⟩,
    ⟨(64140905221/250000000000 : ℚ), (223465211277/5000000000 : ℚ), (-11770557585033/1000000000000 : ℚ), 7⟩,
    ⟨(258926955401/1000000000000 : ℚ), (219402858641/10000000000 : ℚ), (-2956040088833/500000000000 : ℚ), 6⟩,
    ⟨(131021274297/500000000000 : ℚ), (63374546969/5000000000 : ℚ), (-1750493017101/500000000000 : ℚ), 5⟩,
    ⟨(265880395599/1000000000000 : ℚ), (80458836451/10000000000 : ℚ), (-570070129731/250000000000 : ℚ), 5⟩,
    ⟨(270403535851/1000000000000 : ℚ), (54242692373/10000000000 : ℚ), (-394492568949/250000000000 : ℚ), 4⟩,
    ⟨(275568409037/1000000000000 : ℚ), (7615709731/2000000000 : ℚ), (-71069095077/62500000000 : ℚ), 4⟩,
    ⟨(281325274603/1000000000000 : ℚ), (5495959299/2000000000 : ℚ), (-168447409213/200000000000 : ℚ), 4⟩,
    ⟨(287618690789/1000000000000 : ℚ), (20197840041/10000000000 : ℚ), (-635251715743/1000000000000 : ℚ), 4⟩,
    ⟨(58877609711/200000000000 : ℚ), (15007100183/10000000000 : ℚ), (-484312758877/1000000000000 : ℚ), 3⟩,
    ⟨(150784077643/500000000000 : ℚ), (2238971061/2000000000 : ℚ), (-370795385689/1000000000000 : ℚ), 3⟩,
    ⟨(30908986263/100000000000 : ℚ), (8324716783/10000000000 : ℚ), (-56643600523/200000000000 : ℚ), 3⟩,
    ⟨(316880732431/1000000000000 : ℚ), (1529517653/2500000000 : ℚ), (-5354843067/25000000000 : ℚ), 3⟩,
    ⟨(324865734357/1000000000000 : ℚ), (4390775901/10000000000 : ℚ), (-79399435099/500000000000 : ℚ), 3⟩,
    ⟨(41620996059/125000000000 : ℚ), (754388757/2500000000 : ℚ), (-113652803339/1000000000000 : ℚ), 3⟩,
    ⟨(341109405833/1000000000000 : ℚ), (955531383/5000000000 : ℚ), (-76375468969/1000000000000 : ℚ), 3⟩,
    ⟨(87302909987/250000000000 : ℚ), (126139339/1250000000 : ℚ), (-45255311233/1000000000000 : ℚ), 3⟩,
    ⟨(357196641873/1000000000000 : ℚ), (16664957/625000000 : ℚ), (-19039197163/1000000000000 : ℚ), 2⟩,
    ⟨(14599500467/40000000000 : ℚ), (-174768721/5000000000 : ℚ), (320433437/100000000000 : ℚ), 2⟩,
    ⟨(186254609509/500000000000 : ℚ), (-13502429/156250000 : ℚ), (22176377813/1000000000000 : ℚ), 2⟩,
    ⟨(379689325749/1000000000000 : ℚ), (-1295870691/10000000000 : ℚ), (1920500837/50000000000 : ℚ), 2⟩,
    ⟨(77291736703/200000000000 : ℚ), (-829440271/5000000000 : ℚ), (1634805733/31250000000 : ℚ), 2⟩,
    ⟨(392752099701/1000000000000 : ℚ), (-982033519/5000000000 : ℚ), (32101255353/500000000000 : ℚ), 2⟩,
    ⟨(99627241317/250000000000 : ℚ), (-2219812847/10000000000 : ℚ), (7431959767/100000000000 : ℚ), 2⟩,
    ⟨(403673838453/1000000000000 : ℚ), (-2432591131/10000000000 : ℚ), (16570663027/200000000000 : ℚ), 2⟩,
    ⟨(81639395741/200000000000 : ℚ), (-1303698141/5000000000 : ℚ), (89948890881/1000000000000 : ℚ), 2⟩,
    ⟨(41203482571/100000000000 : ℚ), (-687015169/2500000000 : ℚ), (95717546777/1000000000000 : ℚ), 2⟩,
    ⟨(51893802363/125000000000 : ℚ), (-2857488129/10000000000 : ℚ), (50121639371/500000000000 : ℚ), 2⟩,
    ⟨(417513753421/1000000000000 : ℚ), (-2937825121/10000000000 : ℚ), (103587921469/1000000000000 : ℚ), 2⟩,
    ⟨(419102069057/1000000000000 : ℚ), (-2990584179/10000000000 : ℚ), (26448715443/250000000000 : ℚ), 2⟩,
    ⟨(83980013893/200000000000 : ℚ), (-1508364607/5000000000 : ℚ), (21378329441/200000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-754996619/2500000000 : ℚ), (26757108981/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (2757340233/7812500000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control389.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control389.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate389

-- Control390
namespace DiagonalRamsey.JointInheritedCertificate390
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(267585726049/1000000000000 : ℚ), (12610414751541/10000000000 : ℚ), (-42268648775099/125000000000 : ℚ), 12⟩,
    ⟨(67091830967/250000000000 : ℚ), (344061621661/2500000000 : ℚ), (-18688650416543/500000000000 : ℚ), 9⟩,
    ⟨(269922992293/1000000000000 : ℚ), (96276821701/2000000000 : ℚ), (-3328853320681/250000000000 : ℚ), 7⟩,
    ⟨(54447549877/200000000000 : ℚ), (9463840397/400000000 : ℚ), (-1671485791729/250000000000 : ℚ), 6⟩,
    ⟨(17205581423/62500000000 : ℚ), (136842091147/10000000000 : ℚ), (-3957568437459/1000000000000 : ℚ), 5⟩,
    ⟨(69762066079/250000000000 : ℚ), (86960769373/10000000000 : ℚ), (-1288128369839/500000000000 : ℚ), 5⟩,
    ⟨(141739216587/500000000000 : ℚ), (7335277921/1250000000 : ℚ), (-178157536721/100000000000 : ℚ), 4⟩,
    ⟨(288537144393/1000000000000 : ℚ), (1030675063/250000000 : ℚ), (-256551603519/200000000000 : ℚ), 4⟩,
    ⟨(14708783991/50000000000 : ℚ), (29768144031/10000000000 : ℚ), (-949161374393/1000000000000 : ℚ), 4⟩,
    ⟨(75084934319/250000000000 : ℚ), (10942829763/5000000000 : ℚ), (-357511938131/500000000000 : ℚ), 4⟩,
    ⟨(153484976759/500000000000 : ℚ), (25406269/15625000 : ℚ), (-544318288563/1000000000000 : ℚ), 3⟩,
    ⟨(314002475939/1000000000000 : ℚ), (6061730509/5000000000 : ℚ), (-25997996531/62500000000 : ℚ), 3⟩,
    ⟨(10042799297/31250000000 : ℚ), (9005654997/10000000000 : ℚ), (-316979268097/1000000000000 : ℚ), 3⟩,
    ⟨(329000308997/1000000000000 : ℚ), (132121853/200000000 : ℚ), (-238992098783/1000000000000 : ℚ), 3⟩,
    ⟨(10525661947/31250000000 : ℚ), (472601391/1000000000 : ℚ), (-17643350349/100000000000 : ℚ), 3⟩,
    ⟨(172378439069/500000000000 : ℚ), (646015809/2000000000 : ℚ), (-3921141501/31250000000 : ℚ), 3⟩,
    ⟨(35273097141/100000000000 : ℚ), (505959799/2500000000 : ℚ), (-8342639467/100000000000 : ℚ), 3⟩,
    ⟨(90166666811/250000000000 : ℚ), (519992873/5000000000 : ℚ), (-48344739397/1000000000000 : ℚ), 3⟩,
    ⟨(368487540551/1000000000000 : ℚ), (28710327/1250000000 : ℚ), (-3762384837/200000000000 : ℚ), 2⟩,
    ⟨(94029568011/250000000000 : ℚ), (-443052817/10000000000 : ℚ), (3113839543/500000000000 : ℚ), 2⟩,
    ⟨(383485373609/1000000000000 : ℚ), (-1005083047/10000000000 : ℚ), (27568979963/1000000000000 : ℚ), 2⟩,
    ⟨(39051789603/100000000000 : ℚ), (-1476685121/10000000000 : ℚ), (22908351891/500000000000 : ℚ), 2⟩,
    ⟨(24821757017/62500000000 : ℚ), (-468326197/2500000000 : ℚ), (61434547487/1000000000000 : ℚ), 2⟩,
    ⟨(1575438163/3906250000 : ℚ), (-2206791201/10000000000 : ℚ), (74780072021/1000000000000 : ℚ), 2⟩,
    ⟨(81790141031/200000000000 : ℚ), (-1243139499/5000000000 : ℚ), (2153247071/25000000000 : ℚ), 2⟩,
    ⟨(207004708187/500000000000 : ℚ), (-679706641/2500000000 : ℚ), (95698070641/1000000000000 : ℚ), 2⟩,
    ⟨(26152474077/62500000000 : ℚ), (-581976527/2000000000 : ℚ), (20729976271/200000000000 : ℚ), 2⟩,
    ⟨(21109927339/50000000000 : ℚ), (-3063629837/10000000000 : ℚ), (110111939807/1000000000000 : ℚ), 2⟩,
    ⟨(425250100163/1000000000000 : ℚ), (-198952389/625000000 : ℚ), (57589961943/500000000000 : ℚ), 2⟩,
    ⟨(85512971451/200000000000 : ℚ), (-408881433/1250000000 : ℚ), (59462149501/500000000000 : ℚ), 2⟩,
    ⟨(429120525679/1000000000000 : ℚ), (-3328721181/10000000000 : ℚ), (121394525457/1000000000000 : ℚ), 2⟩,
    ⟨(429902123499/1000000000000 : ℚ), (-13114453/39062500 : ℚ), (122622015013/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-67217209/200000000 : ℚ), (122775098343/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (336192363119/1000000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control390.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control390.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate390

-- Control391
namespace DiagonalRamsey.JointInheritedCertificate391
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(54936095521/200000000000 : ℚ), (12717583895193/10000000000 : ℚ), (-87514773079217/250000000000 : ℚ), 12⟩,
    ⟨(275476056559/1000000000000 : ℚ), (1388091606287/10000000000 : ℚ), (-38694187890563/1000000000000 : ℚ), 9⟩,
    ⟨(277059552607/1000000000000 : ℚ), (242801935949/5000000000 : ℚ), (-861554076857/62500000000 : ℚ), 7⟩,
    ⟨(34926964477/125000000000 : ℚ), (119357811483/5000000000 : ℚ), (-6921925936947/1000000000000 : ℚ), 6⟩,
    ⟨(141260927523/500000000000 : ℚ), (27619645889/2000000000 : ℚ), (-819496429481/200000000000 : ℚ), 5⟩,
    ⟨(1789675353/6250000000 : ℚ), (21945158397/2500000000 : ℚ), (-2667549810669/1000000000000 : ℚ), 5⟩,
    ⟨(58171494341/200000000000 : ℚ), (59251985829/10000000000 : ℚ), (-1844914096211/1000000000000 : ℚ), 4⟩,
    ⟨(296006672587/1000000000000 : ℚ), (41640656973/10000000000 : ℚ), (-1328567931149/1000000000000 : ℚ), 4⟩,
    ⟨(75436517377/250000000000 : ℚ), (30078251761/10000000000 : ℚ), (-491633312303/500000000000 : ℚ), 4⟩,
    ⟨(308020388937/1000000000000 : ℚ), (22123911149/10000000000 : ℚ), (-740932286707/1000000000000 : ℚ), 4⟩,
    ⟨(78692301437/250000000000 : ℚ), (2055831337/1250000000 : ℚ), (-141067130259/250000000000 : ℚ), 3⟩,
    ⟨(321927525147/1000000000000 : ℚ), (12272020089/10000000000 : ℚ), (-431455987047/1000000000000 : ℚ), 3⟩,
    ⟨(82356602151/250000000000 : ℚ), (4562760483/5000000000 : ℚ), (-329043052613/1000000000000 : ℚ), 3⟩,
    ⟨(337193637773/1000000000000 : ℚ), (3351986903/5000000000 : ℚ), (-31046827901/125000000000 : ℚ), 3⟩,
    ⟨(34515440999/100000000000 : ℚ), (4806824791/10000000000 : ℚ), (-45920233441/250000000000 : ℚ), 3⟩,
    ⟨(353232058667/1000000000000 : ℚ), (1648747463/5000000000 : ℚ), (-130999631393/1000000000000 : ℚ), 3⟩,
    ⟨(22584299477/62500000000 : ℚ), (416131229/2000000000 : ℚ), (-21885090037/250000000000 : ℚ), 3⟩,
    ⟨(36942644031/100000000000 : ℚ), (1088361643/10000000000 : ℚ), (-51295770921/1000000000000 : ℚ), 3⟩,
    ⟨(377387212527/1000000000000 : ℚ), (271302867/10000000000 : ℚ), (-20795470873/1000000000000 : ℚ), 2⟩,
    ⟨(77030888339/200000000000 : ℚ), (-406858591/10000000000 : ℚ), (631766491/125000000000 : ℚ), 2⟩,
    ⟨(12270416411/31250000000 : ℚ), (-973257037/10000000000 : ℚ), (27076745641/1000000000000 : ℚ), 2⟩,
    ⟨(399811644551/1000000000000 : ℚ), (-1448379703/10000000000 : ℚ), (45899201313/1000000000000 : ℚ), 2⟩,
    ⟨(406560461363/1000000000000 : ℚ), (-369567289/2000000000 : ℚ), (15500581561/250000000000 : ℚ), 2⟩,
    ⟨(51604347599/125000000000 : ℚ), (-2183605461/10000000000 : ℚ), (15151410161/200000000000 : ℚ), 2⟩,
    ⟨(418574177713/1000000000000 : ℚ), (-616230831/2500000000 : ℚ), (21862615767/250000000000 : ℚ), 2⟩,
    ⟨(84744675719/200000000000 : ℚ), (-674732259/2500000000 : ℚ), (24326221249/250000000000 : ℚ), 2⟩,
    ⟨(21411639691/50000000000 : ℚ), (-2891134931/10000000000 : ℚ), (52746006143/500000000000 : ℚ), 2⟩,
    ⟨(432058995253/1000000000000 : ℚ), (-3045773421/10000000000 : ℚ), (14017935927/125000000000 : ℚ), 2⟩,
    ⟨(108791283621/250000000000 : ℚ), (-3166052943/10000000000 : ℚ), (58679417601/500000000000 : ℚ), 2⟩,
    ⟨(437521297693/1000000000000 : ℚ), (-3254345949/10000000000 : ℚ), (121211392193/1000000000000 : ℚ), 2⟩,
    ⟨(439104793741/1000000000000 : ℚ), (-103510143/312500000 : ℚ), (4950106277/40000000000 : ℚ), 2⟩,
    ⟨(87980074539/200000000000 : ℚ), (-3341054597/10000000000 : ℚ), (12501534703/100000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-3344633833/10000000000 : ℚ), (31293203897/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (330946585551/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control391.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control391.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate391

-- Control392
namespace DiagonalRamsey.JointInheritedCertificate392
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(3522529073/12500000000 : ℚ), (6412179205707/5000000000 : ℚ), (-362144748766777/1000000000000 : ℚ), 12⟩,
    ⟨(282611755529/1000000000000 : ℚ), (1399892337601/10000000000 : ℚ), (-10007616285271/250000000000 : ℚ), 9⟩,
    ⟨(142111409829/500000000000 : ℚ), (489807266947/10000000000 : ℚ), (-3565299718299/250000000000 : ℚ), 7⟩,
    ⟨(286620002797/1000000000000 : ℚ), (120413292107/5000000000 : ℚ), (-7161344870101/1000000000000 : ℚ), 6⟩,
    ⟨(72445054691/250000000000 : ℚ), (139348887563/10000000000 : ℚ), (-4239414858043/1000000000000 : ℚ), 5⟩,
    ⟨(5873460659/20000000000 : ℚ), (5537288709/625000000 : ℚ), (-690036330181/250000000000 : ℚ), 5⟩,
    ⟨(149130477713/500000000000 : ℚ), (29909393781/5000000000 : ℚ), (-954571983519/500000000000 : ℚ), 4⟩,
    ⟨(37937475249/125000000000 : ℚ), (42051923419/10000000000 : ℚ), (-275002356687/200000000000 : ℚ), 4⟩,
    ⟨(309339119691/1000000000000 : ℚ), (30386351693/10000000000 : ℚ), (-203566955261/200000000000 : ℚ), 4⟩,
    ⟨(157861336351/500000000000 : ℚ), (22360419559/10000000000 : ℚ), (-767184525121/1000000000000 : ℚ), 4⟩,
    ⟨(322588983919/1000000000000 : ℚ), (8315868613/5000000000 : ℚ), (-584476725873/1000000000000 : ℚ), 3⟩,
    ⟨(82467981753/250000000000 : ℚ), (496766791/400000000 : ℚ), (-27946149243/62500000000 : ℚ), 3⟩,
    ⟨(168750681629/500000000000 : ℚ), (2311021729/2500000000 : ℚ), (-170626522911/500000000000 : ℚ), 3⟩,
    ⟨(69080763403/200000000000 : ℚ), (1700160233/2500000000 : ℚ), (-16116643711/62500000000 : ℚ), 3⟩,
    ⟨(353503183333/1000000000000 : ℚ), (122162271/250000000 : ℚ), (-38201725257/200000000000 : ℚ), 3⟩,
    ⟨(45215182611/125000000000 : ℚ), (3363822873/10000000000 : ℚ), (-136580253671/1000000000000 : ℚ), 3⟩,
    ⟨(369979503173/1000000000000 : ℚ), (2136432887/10000000000 : ℚ), (-91693812319/1000000000000 : ℚ), 3⟩,
    ⟨(378197780727/1000000000000 : ℚ), (227147617/2000000000 : ℚ), (-54271923021/1000000000000 : ℚ), 3⟩,
    ⟨(77259429409/200000000000 : ℚ), (77989749/2500000000 : ℚ), (-11396330389/500000000000 : ℚ), 2⟩,
    ⟨(197099800401/500000000000 : ℚ), (-185798737/5000000000 : ℚ), (775224047/200000000000 : ℚ), 2⟩,
    ⟨(50228629631/125000000000 : ℚ), (-23558417/250000000 : ℚ), (13293691621/500000000000 : ℚ), 2⟩,
    ⟨(409111980141/1000000000000 : ℚ), (-1420955507/10000000000 : ℚ), (22995211319/500000000000 : ℚ), 2⟩,
    ⟨(207989145679/500000000000 : ℚ), (-911613779/5000000000 : ℚ), (62583480199/1000000000000 : ℚ), 2⟩,
    ⟨(422361844369/1000000000000 : ℚ), (-2161259847/10000000000 : ℚ), (38375542139/500000000000 : ℚ), 2⟩,
    ⟨(107050290517/250000000000 : ℚ), (-1222195367/5000000000 : ℚ), (17758197939/200000000000 : ℚ), 2⟩,
    ⟨(216720004317/500000000000 : ℚ), (-10719359/40000000 : ℚ), (98933898671/1000000000000 : ℚ), 2⟩,
    ⟨(438027931111/1000000000000 : ℚ), (-1436591389/5000000000 : ℚ), (26839519221/250000000000 : ℚ), 2⟩,
    ⟨(27620046581/62500000000 : ℚ), (-378587749/1250000000 : ℚ), (114200280661/1000000000000 : ℚ), 2⟩,
    ⟨(445080961263/1000000000000 : ℚ), (-1574822101/5000000000 : ℚ), (11956395737/100000000000 : ℚ), 2⟩,
    ⟨(223739072201/500000000000 : ℚ), (-3238410639/10000000000 : ℚ), (61762686087/500000000000 : ℚ), 2⟩,
    ⟨(449089208531/1000000000000 : ℚ), (-1648346977/5000000000 : ℚ), (126138103561/1000000000000 : ℚ), 2⟩,
    ⟨(22494931911/50000000000 : ℚ), (-3325573097/10000000000 : ℚ), (127436201703/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-3329170823/10000000000 : ℚ), (127598081113/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (13027326971/40000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control392.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control392.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate392

-- Control393
namespace DiagonalRamsey.JointInheritedCertificate393
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(144509022917/500000000000 : ℚ), (1293887327311/1000000000 : ℚ), (-374727943319739/1000000000000 : ℚ), 12⟩,
    ⟨(289840874513/1000000000000 : ℚ), (353137593799/2500000000 : ℚ), (-8284375694929/200000000000 : ℚ), 9⟩,
    ⟨(291478607581/1000000000000 : ℚ), (49431734391/1000000000 : ℚ), (-7378638562477/500000000000 : ℚ), 7⟩,
    ⟨(146957736387/500000000000 : ℚ), (121546275429/5000000000 : ℚ), (-7410758647181/1000000000000 : ℚ), 6⟩,
    ⟨(297128001747/1000000000000 : ℚ), (70346081201/5000000000 : ℚ), (-219366562727/50000000000 : ℚ), 5⟩,
    ⟨(301085256091/1000000000000 : ℚ), (89473671747/10000000000 : ℚ), (-1428347621611/500000000000 : ℚ), 5⟩,
    ⟨(305749125283/1000000000000 : ℚ), (60428541599/10000000000 : ℚ), (-61755073267/31250000000 : ℚ), 4⟩,
    ⟨(19442168357/62500000000 : ℚ), (21247404349/5000000000 : ℚ), (-355878477883/250000000000 : ℚ), 4⟩,
    ⟨(63402134649/200000000000 : ℚ), (6143705447/2000000000 : ℚ), (-1053974473317/1000000000000 : ℚ), 4⟩,
    ⟨(5054685893/15625000000 : ℚ), (1130787237/500000000 : ℚ), (-794668335219/1000000000000 : ℚ), 4⟩,
    ⟨(16523993533/50000000000 : ℚ), (8415920287/5000000000 : ℚ), (-9463597989/15625000000 : ℚ), 3⟩,
    ⟨(33788337281/100000000000 : ℚ), (6289255903/5000000000 : ℚ), (-463622611371/1000000000000 : ℚ), 3⟩,
    ⟨(345639103827/1000000000000 : ℚ), (9372697749/10000000000 : ℚ), (-354124910141/1000000000000 : ℚ), 3⟩,
    ⟨(353672371783/1000000000000 : ℚ), (3452845017/5000000000 : ℚ), (-267911124009/1000000000000 : ℚ), 3⟩,
    ⟨(72381162383/200000000000 : ℚ), (2486615909/5000000000 : ℚ), (-24850466041/125000000000 : ℚ), 3⟩,
    ⟨(74052026339/200000000000 : ℚ), (1718092917/5000000000 : ℚ), (-142559848157/1000000000000 : ℚ), 3⟩,
    ⟨(75730974891/200000000000 : ℚ), (2197409027/10000000000 : ℚ), (-96191076987/1000000000000 : ℚ), 3⟩,
    ⟨(77401838847/200000000000 : ℚ), (593818553/5000000000 : ℚ), (-28773544869/500000000000 : ℚ), 3⟩,
    ⟨(395242634367/1000000000000 : ℚ), (356586049/10000000000 : ℚ), (-25052270583/1000000000000 : ℚ), 2⟩,
    ⟨(403275902323/1000000000000 : ℚ), (-332817207/10000000000 : ℚ), (123285349/50000000000 : ℚ), 2⟩,
    ⟨(20551581667/50000000000 : ℚ), (-181653673/2000000000 : ℚ), (25890307671/1000000000000 : ℚ), 2⟩,
    ⟨(418435135489/1000000000000 : ℚ), (-139068889/1000000000 : ℚ), (45894258191/1000000000000 : ℚ), 2⟩,
    ⟨(212707554499/500000000000 : ℚ), (-359205561/2000000000 : ℚ), (15379389/244140625 : ℚ), 2⟩,
    ⟨(86380866581/200000000000 : ℚ), (-1068265071/5000000000 : ℚ), (15517639391/200000000000 : ℚ), 2⟩,
    ⟨(437840312437/1000000000000 : ℚ), (-2421643347/10000000000 : ℚ), (2812056961/31250000000 : ℚ), 2⟩,
    ⟨(443165880867/1000000000000 : ℚ), (-2658673293/10000000000 : ℚ), (50213163137/500000000000 : ℚ), 2⟩,
    ⟨(223914875029/500000000000 : ℚ), (-2853264029/10000000000 : ℚ), (109094854851/1000000000000 : ℚ), 2⟩,
    ⟨(225893502201/500000000000 : ℚ), (-3009751137/10000000000 : ℚ), (29033381727/250000000000 : ℚ), 2⟩,
    ⟨(7109367709/15625000000 : ℚ), (-391427829/1250000000 : ℚ), (60824953311/500000000000 : ℚ), 2⟩,
    ⟨(457436398569/1000000000000 : ℚ), (-1610355337/5000000000 : ℚ), (62861668203/500000000000 : ℚ), 2⟩,
    ⟨(459074131637/1000000000000 : ℚ), (-819832491/2500000000 : ℚ), (128409581327/1000000000000 : ℚ), 2⟩,
    ⟨(114974240079/250000000000 : ℚ), (-3308373629/10000000000 : ℚ), (32436023483/250000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-3311991759/10000000000 : ℚ), (64955254617/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (32036626947/100000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control393.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control393.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate393

-- Control394
namespace DiagonalRamsey.JointInheritedCertificate394
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4629059191/15625000000 : ℚ), (1305282701301/1000000000 : ℚ), (-77498758400753/200000000000 : ℚ), 12⟩,
    ⟨(297095890663/1000000000000 : ℚ), (712572752821/5000000000 : ℚ), (-10708359216327/250000000000 : ℚ), 9⟩,
    ⟨(149380021709/500000000000 : ℚ), (99760873953/2000000000 : ℚ), (-1220840027/80000000 : ℚ), 7⟩,
    ⟨(301236219789/1000000000000 : ℚ), (61336610763/2500000000 : ℚ), (-3831868222189/500000000000 : ℚ), 6⟩,
    ⟨(152250286421/500000000000 : ℚ), (142027875163/10000000000 : ℚ), (-4537338824537/1000000000000 : ℚ), 5⟩,
    ⟨(12340866603/40000000000 : ℚ), (5646590099/625000000 : ℚ), (-2954591630701/1000000000000 : ℚ), 5⟩,
    ⟨(313260771169/1000000000000 : ℚ), (12206863957/2000000000 : ℚ), (-511024936023/250000000000 : ℚ), 4⟩,
    ⟨(4979253921/15625000000 : ℚ), (42934534061/10000000000 : ℚ), (-1472667771771/1000000000000 : ℚ), 4⟩,
    ⟨(32470398889/100000000000 : ℚ), (31048084833/10000000000 : ℚ), (-272647041863/250000000000 : ℚ), 4⟩,
    ⟨(165648948037/500000000000 : ℚ), (22868829263/10000000000 : ℚ), (-822502416007/1000000000000 : ℚ), 4⟩,
    ⟨(67678093913/200000000000 : ℚ), (17029975881/10000000000 : ℚ), (-2508499549/4000000000 : ℚ), 3⟩,
    ⟨(345913404003/1000000000000 : ℚ), (12736088941/10000000000 : ℚ), (-240150911653/500000000000 : ℚ), 3⟩,
    ⟨(353794249417/1000000000000 : ℚ), (4749849561/5000000000 : ℚ), (-367141755593/1000000000000 : ℚ), 3⟩,
    ⟨(180978554479/500000000000 : ℚ), (1752312859/2500000000 : ℚ), (-69515613513/250000000000 : ℚ), 3⟩,
    ⟨(185161684913/500000000000 : ℚ), (2529291269/5000000000 : ℚ), (-206675351311/1000000000000 : ℚ), 3⟩,
    ⟨(75762492071/200000000000 : ℚ), (1753619031/5000000000 : ℚ), (-14859236957/100000000000 : ℚ), 3⟩,
    ⟨(387342625963/1000000000000 : ℚ), (564285131/2500000000 : ℚ), (-100722573837/1000000000000 : ℚ), 3⟩,
    ⟨(98957929123/250000000000 : ℚ), (154793413/1250000000 : ℚ), (-12168321327/200000000000 : ℚ), 3⟩,
    ⟨(5052474717/12500000000 : ℚ), (400072099/10000000000 : ℚ), (-27319353263/1000000000000 : ℚ), 2⟩,
    ⟨(412360836901/1000000000000 : ℚ), (-147568249/5000000000 : ℚ), (528653691/500000000000 : ℚ), 2⟩,
    ⟨(84048336463/200000000000 : ℚ), (-7002107/80000000 : ℚ), (12601408091/500000000000 : ℚ), 2⟩,
    ⟨(427764616753/1000000000000 : ℚ), (-1089163/8000000 : ℚ), (2290685247/50000000000 : ℚ), 2⟩,
    ⟨(108714297561/250000000000 : ℚ), (-1769831477/10000000000 : ℚ), (15856216369/250000000000 : ℚ), 2⟩,
    ⟨(110362774357/250000000000 : ℚ), (-1056389601/5000000000 : ℚ), (78449471403/1000000000000 : ℚ), 2⟩,
    ⟨(223741417687/500000000000 : ℚ), (-119992659/500000000 : ℚ), (45603885991/500000000000 : ℚ), 2⟩,
    ⟨(113223578787/250000000000 : ℚ), (-2638445439/10000000000 : ℚ), (101948164097/1000000000000 : ℚ), 2⟩,
    ⟨(457633421243/1000000000000 : ℚ), (-283426807/1000000000 : ℚ), (55431401399/500000000000 : ℚ), 2⟩,
    ⟨(18466180539/40000000000 : ℚ), (-2991709979/10000000000 : ℚ), (14762408667/125000000000 : ℚ), 2⟩,
    ⟨(464918866529/1000000000000 : ℚ), (-194631271/625000000 : ℚ), (123769324413/1000000000000 : ℚ), 2⟩,
    ⟨(467395042899/1000000000000 : ℚ), (-3203902189/10000000000 : ℚ), (15994430967/125000000000 : ℚ), 2⟩,
    ⟨(93811839131/200000000000 : ℚ), (-203928267/625000000 : ℚ), (130715635223/1000000000000 : ℚ), 2⟩,
    ⟨(234947649047/500000000000 : ℚ), (-3292057869/10000000000 : ℚ), (6604338481/50000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-3295696081/10000000000 : ℚ), (66128873277/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (78758198843/250000000000 : ℚ)
  μ := (47/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control394.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control394.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate394

-- Control395
namespace DiagonalRamsey.JointInheritedCertificate395
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(37940656669/125000000000 : ℚ), (411438250887/312500000 : ℚ), (-400432988280393/1000000000000 : ℚ), 12⟩,
    ⟨(304374515389/1000000000000 : ℚ), (1437655985937/10000000000 : ℚ), (-22132050260421/500000000000 : ℚ), 9⟩,
    ⟨(61212972121/200000000000 : ℚ), (503260507003/10000000000 : ℚ), (-15770489976919/1000000000000 : ℚ), 7⟩,
    ⟨(77145002513/250000000000 : ℚ), (61896063409/2500000000 : ℚ), (-792008190501/100000000000 : ℚ), 6⟩,
    ⟨(311895741467/1000000000000 : ℚ), (1791919933/125000000 : ℚ), (-1172329047267/250000000000 : ℚ), 5⟩,
    ⟨(315980122541/1000000000000 : ℚ), (45605147591/5000000000 : ℚ), (-3053751069813/1000000000000 : ℚ), 5⟩,
    ⟨(64158763691/200000000000 : ℚ), (12326989369/2000000000 : ℚ), (-1056447298903/500000000000 : ℚ), 4⟩,
    ⟨(326290470683/1000000000000 : ℚ), (43370211601/10000000000 : ℚ), (-1522425513747/1000000000000 : ℚ), 4⟩,
    ⟨(332417143461/1000000000000 : ℚ), (15687164177/5000000000 : ℚ), (-1127637185737/1000000000000 : ℚ), 4⟩,
    ⟨(16955741679/50000000000 : ℚ), (2889888901/1250000000 : ℚ), (-850654539647/1000000000000 : ℚ), 4⟩,
    ⟨(346319038623/1000000000000 : ℚ), (4306419673/2500000000 : ℚ), (-324406523907/500000000000 : ℚ), 3⟩,
    ⟨(176980189079/500000000000 : ℚ), (322287741/250000000 : ℚ), (-124288009049/250000000000 : ℚ), 3⟩,
    ⟨(361965261907/1000000000000 : ℚ), (1203094423/1250000000 : ℚ), (-190141163289/500000000000 : ℚ), 3⟩,
    ⟨(74051319693/200000000000 : ℚ), (711103319/1000000000 : ℚ), (-57660237729/200000000000 : ℚ), 3⟩,
    ⟨(378754537727/1000000000000 : ℚ), (321392863/625000000 : ℚ), (-107303062669/500000000000 : ℚ), 3⟩,
    ⟨(387377239893/1000000000000 : ℚ), (3576750407/10000000000 : ℚ), (-154661860931/1000000000000 : ℚ), 3⟩,
    ⟨(396041663627/1000000000000 : ℚ), (7235691/31250000 : ℚ), (-10527351409/100000000000 : ℚ), 3⟩,
    ⟨(404664365793/1000000000000 : ℚ), (643840653/5000000000 : ℚ), (-40088539/625000000 : ℚ), 3⟩,
    ⟨(82632461011/200000000000 : ℚ), (442245481/10000000000 : ℚ), (-29580922813/1000000000000 : ℚ), 2⟩,
    ⟨(105363410403/250000000000 : ℚ), (-129356929/5000000000 : ℚ), (-168397331/500000000000 : ℚ), 2⟩,
    ⟨(214729262681/500000000000 : ℚ), (-843469149/10000000000 : ℚ), (2453659199/100000000000 : ℚ), 2⟩,
    ⟨(6829685389/15625000000 : ℚ), (-333347043/2500000000 : ℚ), (5719991259/125000000000 : ℚ), 2⟩,
    ⟨(22215203497/50000000000 : ℚ), (-348953751/2000000000 : ℚ), (6388686873/100000000000 : ℚ), 2⟩,
    ⟨(451001760059/1000000000000 : ℚ), (-418026107/2000000000 : ℚ), (39672625907/500000000000 : ℚ), 2⟩,
    ⟨(457128432837/1000000000000 : ℚ), (-2379138131/10000000000 : ℚ), (18493371477/200000000000 : ℚ), 2⟩,
    ⟨(92525017013/200000000000 : ℚ), (-1309634703/5000000000 : ℚ), (1035091579/10000000000 : ℚ), 2⟩,
    ⟨(233719390489/500000000000 : ℚ), (-2816304269/10000000000 : ℚ), (56335719059/500000000000 : ℚ), 2⟩,
    ⟨(471523162053/1000000000000 : ℚ), (-594936957/2000000000 : ℚ), (120106839391/1000000000000 : ℚ), 2⟩,
    ⟨(474838893467/1000000000000 : ℚ), (-619556233/2000000000 : ℚ), (25186279187/200000000000 : ℚ), 2⟩,
    ⟨(238677021457/500000000000 : ℚ), (-1594043633/5000000000 : ℚ), (130230783653/1000000000000 : ℚ), 2⟩,
    ⟨(479044388131/1000000000000 : ℚ), (-1623680897/5000000000 : ℚ), (133065271257/1000000000000 : ℚ), 2⟩,
    ⟨(59986706271/125000000000 : ℚ), (-40959077/125000000 : ℚ), (67236599841/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-3280384057/10000000000 : ℚ), (134648759273/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (154842176167/500000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control395.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control395.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate395

-- Control397
namespace DiagonalRamsey.JointInheritedCertificate397
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(396282331937/1000000000000 : ℚ), (14895535042531/10000000000 : ℚ), (-295676105602137/500000000000 : ℚ), 12⟩,
    ⟨(49657837129/125000000000 : ℚ), (25450797623/156250000 : ℚ), (-32688797890441/500000000000 : ℚ), 9⟩,
    ⟨(399213985771/1000000000000 : ℚ), (142849522181/2500000000 : ℚ), (-11649847133767/500000000000 : ℚ), 7⟩,
    ⟨(16084696247/40000000000 : ℚ), (14091401203/500000000 : ℚ), (-11706887588429/1000000000000 : ℚ), 6⟩,
    ⟨(405944996719/1000000000000 : ℚ), (16366008327/1000000000 : ℚ), (-6936278346723/1000000000000 : ℚ), 5⟩,
    ⟨(82131979123/200000000000 : ℚ), (104473009351/10000000000 : ℚ), (-17662114741/3906250000 : ℚ), 5⟩,
    ⟨(406461617/976562500 : ℚ), (8857228191/1250000000 : ℚ), (-3132747616607/1000000000000 : ℚ), 4⟩,
    ⟨(211280941137/500000000000 : ℚ), (50069730863/10000000000 : ℚ), (-565383988701/250000000000 : ℚ), 4⟩,
    ⟨(2148171737/5000000000 : ℚ), (36398431889/10000000000 : ℚ), (-419849752051/250000000000 : ℚ), 4⟩,
    ⟨(10934149487/25000000000 : ℚ), (3372378799/1250000000 : ℚ), (-158916234637/125000000000 : ℚ), 4⟩,
    ⟨(44568231867/100000000000 : ℚ), (20247996007/10000000000 : ℚ), (-974317939191/1000000000000 : ℚ), 3⟩,
    ⟨(454503274079/1000000000000 : ℚ), (15294616213/10000000000 : ℚ), (-375747826137/500000000000 : ℚ), 3⟩,
    ⟨(231871947541/500000000000 : ℚ), (5780095013/5000000000 : ℚ), (-145032248647/250000000000 : ℚ), 3⟩,
    ⟨(9466303789/20000000000 : ℚ), (4343591203/5000000000 : ℚ), (-222792412887/500000000000 : ℚ), 3⟩,
    ⟨(15097655637/31250000000 : ℚ), (1287728961/2000000000 : ℚ), (-84525596881/250000000000 : ℚ), 3⟩,
    ⟨(123269698559/250000000000 : ℚ), (232643053/500000000 : ℚ), (-7842890101/31250000000 : ℚ), 3⟩,
    ⟨(15721274073/31250000000 : ℚ), (3216672319/10000000000 : ℚ), (-89732098507/500000000000 : ℚ), 3⟩,
    ⟨(128258646047/250000000000 : ℚ), (2049188653/10000000000 : ℚ), (-6008396569/50000000000 : ℚ), 3⟩,
    ⟨(261422187561/500000000000 : ℚ), (136439533/1250000000 : ℚ), (-4411246999/62500000000 : ℚ), 2⟩,
    ⟨(532415669489/1000000000000 : ℚ), (300093917/10000000000 : ℚ), (-14416039823/500000000000 : ℚ), 2⟩,
    ⟨(541656290493/1000000000000 : ℚ), (-44717151/1250000000 : ℚ), (6488637077/1000000000000 : ℚ), 2⟩,
    ⟨(550477245901/1000000000000 : ℚ), (-453371697/5000000000 : ℚ), (36462920417/1000000000000 : ℚ), 2⟩,
    ⟨(139698396273/250000000000 : ℚ), (-682941463/5000000000 : ℚ), (61924836661/1000000000000 : ℚ), 2⟩,
    ⟨(141631304293/250000000000 : ℚ), (-1749774501/10000000000 : ℚ), (41761199527/500000000000 : ℚ), 2⟩,
    ⟨(286798841149/500000000000 : ℚ), (-413949441/2000000000 : ℚ), (10176117573/100000000000 : ℚ), 2⟩,
    ⟨(144985717191/250000000000 : ℚ), (-1167300541/5000000000 : ℚ), (117036117427/1000000000000 : ℚ), 2⟩,
    ⟨(585499668957/1000000000000 : ℚ), (-318895489/1250000000 : ℚ), (32413766107/250000000000 : ℚ), 2⟩,
    ⟨(147553641963/250000000000 : ℚ), (-1362350949/5000000000 : ℚ), (13985626669/100000000000 : ℚ), 2⟩,
    ⟨(594042158397/1000000000000 : ℚ), (-2859223471/10000000000 : ℚ), (73910747819/500000000000 : ℚ), 2⟩,
    ⟨(596945578801/1000000000000 : ℚ), (-2957703021/10000000000 : ℚ), (153685820261/1000000000000 : ℚ), 2⟩,
    ⟨(598896867539/1000000000000 : ℚ), (-3022242859/10000000000 : ℚ), (39386193287/250000000000 : ℚ), 2⟩,
    ⟨(299938616317/500000000000 : ℚ), (-3054185697/10000000000 : ℚ), (39864845709/250000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-1529081693/5000000000 : ℚ), (79849009889/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (537499/1000000 : ℚ)
  x := (121228089929/500000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control397.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control397.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate397
