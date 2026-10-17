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

-- Control205
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
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

-- Control206
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
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

-- Control207
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
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

-- Control208
namespace DiagonalRamsey.JointInheritedCertificate208
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(66521239963/250000000000 : ℚ), (12565719413139/10000000000 : ℚ), (-67031138327361/200000000000 : ℚ), 11⟩,
    ⟨(53394005469/200000000000 : ℚ), (684687687619/5000000000 : ℚ), (-37055477598853/1000000000000 : ℚ), 8⟩,
    ⟨(33591454831/125000000000 : ℚ), (239029832067/5000000000 : ℚ), (-3301837501503/250000000000 : ℚ), 7⟩,
    ⟨(847977589/3125000000 : ℚ), (234482959261/10000000000 : ℚ), (-1327360771319/200000000000 : ℚ), 6⟩,
    ⟨(274808353351/1000000000000 : ℚ), (135356947899/10000000000 : ℚ), (-786541783527/200000000000 : ℚ), 5⟩,
    ⟨(279064934667/1000000000000 : ℚ), (2683531327/312500000 : ℚ), (-2563716437039/1000000000000 : ℚ), 5⟩,
    ⟨(35510197403/125000000000 : ℚ), (11575007359/2000000000 : ℚ), (-1776145152207/1000000000000 : ℚ), 4⟩,
    ⟨(289809973991/1000000000000 : ℚ), (20315619023/5000000000 : ℚ), (-1281808390203/1000000000000 : ℚ), 4⟩,
    ⟨(74048737849/250000000000 : ℚ), (3667292743/1250000000 : ℚ), (-475610228643/500000000000 : ℚ), 4⟩,
    ⟨(37896877577/125000000000 : ℚ), (10794847647/5000000000 : ℚ), (-359600793511/500000000000 : ℚ), 3⟩,
    ⟨(38835369971/125000000000 : ℚ), (3214799219/2000000000 : ℚ), (-550042832861/1000000000000 : ℚ), 3⟩,
    ⟨(63729292659/200000000000 : ℚ), (12028969227/10000000000 : ℚ), (-422853681773/1000000000000 : ℚ), 3⟩,
    ⟨(10218401197/31250000000 : ℚ), (2247025607/2500000000 : ℚ), (-324755573687/1000000000000 : ℚ), 3⟩,
    ⟨(335629743163/1000000000000 : ℚ), (6653711727/10000000000 : ℚ), (-247462813831/1000000000000 : ℚ), 3⟩,
    ⟨(68897192247/200000000000 : ℚ), (965835153/2000000000 : ℚ), (-185452694509/1000000000000 : ℚ), 3⟩,
    ⟨(353472202299/1000000000000 : ℚ), (1690409783/5000000000 : ℚ), (-67466691643/500000000000 : ℚ), 2⟩,
    ⟨(18125096197/50000000000 : ℚ), (2215513701/10000000000 : ℚ), (-11654431193/125000000000 : ℚ), 2⟩,
    ⟨(92872041251/250000000000 : ℚ), (1267008201/10000000000 : ℚ), (-467514531/8000000000 : ℚ), 2⟩,
    ⟨(95086095769/250000000000 : ℚ), (243661427/5000000000 : ℚ), (-14569784267/500000000000 : ℚ), 2⟩,
    ⟨(77797057587/200000000000 : ℚ), (-9926903/625000000 : ℚ), (-67054821/15625000000 : ℚ), 2⟩,
    ⟨(12416489467/31250000000 : ℚ), (-139550059/2000000000 : ℚ), (16891300007/1000000000000 : ℚ), 2⟩,
    ⟨(405291166471/1000000000000 : ℚ), (-574628429/5000000000 : ℚ), (17503501433/500000000000 : ℚ), 2⟩,
    ⟨(51599888203/125000000000 : ℚ), (-1528427393/10000000000 : ℚ), (10102842921/200000000000 : ℚ), 2⟩,
    ⟨(419779174843/1000000000000 : ℚ), (-369363163/2000000000 : ℚ), (31883308919/500000000000 : ℚ), 2⟩,
    ⟨(53270519031/125000000000 : ℚ), (-2113322289/10000000000 : ℚ), (75037917451/1000000000000 : ℚ), 2⟩,
    ⟨(53986568377/125000000000 : ℚ), (-2334820999/10000000000 : ℚ), (84540094497/1000000000000 : ℚ), 2⟩,
    ⟨(109227297893/250000000000 : ℚ), (-1258308947/5000000000 : ℚ), (92436917411/1000000000000 : ℚ), 2⟩,
    ⟨(55145721611/125000000000 : ℚ), (-2662786727/10000000000 : ℚ), (98854025717/1000000000000 : ℚ), 2⟩,
    ⟨(444621297759/1000000000000 : ℚ), (-555283261/2000000000 : ℚ), (25971620319/250000000000 : ℚ), 2⟩,
    ⟨(55905310949/125000000000 : ℚ), (-714947871/2500000000 : ℚ), (107604394851/1000000000000 : ℚ), 2⟩,
    ⟨(89800819779/200000000000 : ℚ), (-728630847/2500000000 : ℚ), (55028521953/500000000000 : ℚ), 2⟩,
    ⟨(112472291597/250000000000 : ℚ), (-2941639331/10000000000 : ℚ), (111275758971/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-736254309/2500000000 : ℚ), (5571387299/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (28957247483/100000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control208.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control208.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate208

-- Control209
namespace DiagonalRamsey.JointInheritedCertificate209
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(6825204021/25000000000 : ℚ), (792555504511/625000000 : ℚ), (-173510435449651/500000000000 : ℚ), 11⟩,
    ⟨(273908035033/1000000000000 : ℚ), (172762697259/1250000000 : ℚ), (-19183846076509/500000000000 : ℚ), 8⟩,
    ⟨(137849558569/500000000000 : ℚ), (482591146563/10000000000 : ℚ), (-547013396039/40000000000 : ℚ), 7⟩,
    ⟨(278364158057/1000000000000 : ℚ), (236757556603/10000000000 : ℚ), (-26844548123/3906250000 : ℚ), 6⟩,
    ⟨(70469372997/250000000000 : ℚ), (34175927883/2500000000 : ℚ), (-1018101536741/250000000000 : ℚ), 5⟩,
    ⟨(71551320901/250000000000 : ℚ), (43375527883/5000000000 : ℚ), (-1327489978483/500000000000 : ℚ), 5⟩,
    ⟨(291305853907/1000000000000 : ℚ), (58484470447/10000000000 : ℚ), (-367912707709/200000000000 : ℚ), 4⟩,
    ⟨(18570630101/62500000000 : ℚ), (41073074977/10000000000 : ℚ), (-663884039497/500000000000 : ℚ), 4⟩,
    ⟨(60724375247/200000000000 : ℚ), (1186762919/400000000 : ℚ), (-985523819577/1000000000000 : ℚ), 4⟩,
    ⟨(38839839779/125000000000 : ℚ), (2184337671/1000000000 : ℚ), (-186335835001/250000000000 : ℚ), 3⟩,
    ⟨(15917613057/50000000000 : ℚ), (16272376971/10000000000 : ℚ), (-285126628233/500000000000 : ℚ), 3⟩,
    ⟨(40806123721/125000000000 : ℚ), (12186584227/10000000000 : ℚ), (-438623128027/1000000000000 : ℚ), 3⟩,
    ⟨(5233295753/15625000000 : ℚ), (9115026147/10000000000 : ℚ), (-1685590103/5000000000 : ℚ), 3⟩,
    ⟨(34371639071/100000000000 : ℚ), (6757138517/10000000000 : ℚ), (-51431676853/200000000000 : ℚ), 3⟩,
    ⟨(176360384257/500000000000 : ℚ), (4914370997/10000000000 : ℚ), (-48256349839/250000000000 : ℚ), 3⟩,
    ⟨(90464336131/250000000000 : ℚ), (3451716351/10000000000 : ℚ), (-70396166361/500000000000 : ℚ), 2⟩,
    ⟨(185519064259/500000000000 : ℚ), (45502011/200000000 : ℚ), (-1953890617/20000000000 : ℚ), 2⟩,
    ⟨(380174704527/1000000000000 : ℚ), (1317588623/10000000000 : ℚ), (-7717961403/125000000000 : ℚ), 2⟩,
    ⟨(389179082331/1000000000000 : ℚ), (106138777/2000000000 : ℚ), (-31483836153/1000000000000 : ℚ), 2⟩,
    ⟨(397964544849/1000000000000 : ℚ), (-24250507/2000000000 : ℚ), (-2916223839/500000000000 : ℚ), 2⟩,
    ⟨(406446483273/1000000000000 : ℚ), (-664839581/10000000000 : ℚ), (3205120939/200000000000 : ℚ), 2⟩,
    ⟨(414543211901/1000000000000 : ℚ), (-8750871/78125000 : ℚ), (1388419947/40000000000 : ℚ), 2⟩,
    ⟨(422176754809/1000000000000 : ℚ), (-751160041/5000000000 : ℚ), (50697930253/1000000000000 : ℚ), 2⟩,
    ⟨(214636798403/500000000000 : ℚ), (-1823156287/10000000000 : ℚ), (64354924949/1000000000000 : ℚ), 2⟩,
    ⟨(17430615657/40000000000 : ℚ), (-2091628293/10000000000 : ℚ), (18991415201/250000000000 : ℚ), 2⟩,
    ⟨(220794809567/500000000000 : ℚ), (-462939119/2000000000 : ℚ), (42875177587/500000000000 : ℚ), 2⟩,
    ⟨(446690189437/1000000000000 : ℚ), (-1248865683/5000000000 : ℚ), (93879241543/1000000000000 : ℚ), 2⟩,
    ⟨(451017981053/1000000000000 : ℚ), (-2644861949/10000000000 : ℚ), (100482999481/1000000000000 : ℚ), 2⟩,
    ⟨(56816414373/125000000000 : ℚ), (-2759216683/10000000000 : ℚ), (105660563437/1000000000000 : ℚ), 2⟩,
    ⟨(457196355903/1000000000000 : ℚ), (-1421555409/5000000000 : ℚ), (54742470321/500000000000 : ℚ), 2⟩,
    ⟨(57373429751/125000000000 : ℚ), (-2898177143/10000000000 : ℚ), (112007468921/1000000000000 : ℚ), 2⟩,
    ⟨(229943656101/500000000000 : ℚ), (-2925456893/10000000000 : ℚ), (113260800703/1000000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-585771023/2000000000 : ℚ), (113417099739/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (284871023569/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control209.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control209.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate209

-- Control210
namespace DiagonalRamsey.JointInheritedCertificate210
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(139976740013/500000000000 : ℚ), (12794834435221/10000000000 : ℚ), (-359039639489643/1000000000000 : ℚ), 11⟩,
    ⟨(280868054477/1000000000000 : ℚ), (1394691769409/10000000000 : ℚ), (-39696828300483/1000000000000 : ℚ), 8⟩,
    ⟨(282688395529/1000000000000 : ℚ), (487073510051/10000000000 : ℚ), (-14149308437877/1000000000000 : ℚ), 7⟩,
    ⟨(142698486151/500000000000 : ℚ), (239006965559/10000000000 : ℚ), (-7110581970687/1000000000000 : ℚ), 6⟩,
    ⟨(7224192493/25000000000 : ℚ), (69017562091/5000000000 : ℚ), (-4213842030727/1000000000000 : ℚ), 5⟩,
    ⟨(146683094863/500000000000 : ℚ), (1752374543/200000000 : ℚ), (-2747355980403/1000000000000 : ℚ), 5⟩,
    ⟨(149275041229/500000000000 : ℚ), (59086369879/10000000000 : ℚ), (-1903735116013/1000000000000 : ℚ), 4⟩,
    ⟨(152234727097/500000000000 : ℚ), (20754577381/5000000000 : ℚ), (-687128175797/500000000000 : ℚ), 4⟩,
    ⟨(6221345963/20000000000 : ℚ), (14997612877/5000000000 : ℚ), (-510103243151/500000000000 : ℚ), 4⟩,
    ⟨(7957001837/25000000000 : ℚ), (22093298693/10000000000 : ℚ), (-192940137077/250000000000 : ℚ), 3⟩,
    ⟨(65207663443/200000000000 : ℚ), (16467587849/10000000000 : ℚ), (-590664328567/1000000000000 : ℚ), 3⟩,
    ⟨(83566828307/250000000000 : ℚ), (12341465911/10000000000 : ℚ), (-90907572181/200000000000 : ℚ), 3⟩,
    ⟨(85721952947/250000000000 : ℚ), (9239547863/10000000000 : ℚ), (-43697988937/125000000000 : ℚ), 3⟩,
    ⟨(175908396391/500000000000 : ℚ), (3429209907/5000000000 : ℚ), (-133462625987/500000000000 : ℚ), 3⟩,
    ⟨(360968265241/1000000000000 : ℚ), (4997622871/10000000000 : ℚ), (-100322196109/500000000000 : ℚ), 3⟩,
    ⟨(370254095483/1000000000000 : ℚ), (1760415789/5000000000 : ℚ), (-29335586087/200000000000 : ℚ), 2⟩,
    ⟨(379584855887/1000000000000 : ℚ), (466607437/2000000000 : ℚ), (-51082367253/500000000000 : ℚ), 2⟩,
    ⟨(388870686129/1000000000000 : ℚ), (1366626803/10000000000 : ℚ), (-32523431161/500000000000 : ℚ), 2⟩,
    ⟨(99505539647/250000000000 : ℚ), (572612427/10000000000 : ℚ), (-33817093417/1000000000000 : ℚ), 2⟩,
    ⟨(203475569791/500000000000 : ℚ), (-85051793/10000000000 : ℚ), (-1838643049/250000000000 : ℚ), 2⟩,
    ⟨(207785819071/500000000000 : ℚ), (-633242347/10000000000 : ℚ), (15184925583/1000000000000 : ℚ), 2⟩,
    ⟨(84760126831/200000000000 : ℚ), (-1092225433/10000000000 : ℚ), (1076372591/31250000000 : ℚ), 2⟩,
    ⟨(43155887789/100000000000 : ℚ), (-46169559/312500000 : ℚ), (795553871/15625000000 : ℚ), 2⟩,
    ⟨(21938582661/50000000000 : ℚ), (-180067047/1000000000 : ℚ), (64980069457/1000000000000 : ℚ), 2⟩,
    ⟨(55671187147/125000000000 : ℚ), (-207107451/1000000000 : ℚ), (15386520349/200000000000 : ℚ), 2⟩,
    ⟨(28205554307/62500000000 : ℚ), (-459136431/2000000000 : ℚ), (87001630601/1000000000000 : ℚ), 2⟩,
    ⟨(114118190411/250000000000 : ℚ), (-2479933307/10000000000 : ℚ), (47681980809/500000000000 : ℚ), 2⟩,
    ⟨(9217425033/20000000000 : ℚ), (-262800653/1000000000 : ℚ), (102155400429/1000000000000 : ℚ), 2⟩,
    ⟨(116110494767/250000000000 : ℚ), (-1371535709/5000000000 : ℚ), (53739410793/500000000000 : ℚ), 2⟩,
    ⟨(467150555841/1000000000000 : ℚ), (-2827473417/10000000000 : ℚ), (111410180743/1000000000000 : ℚ), 2⟩,
    ⟨(468970896893/1000000000000 : ℚ), (-2882866841/10000000000 : ℚ), (114002913507/1000000000000 : ℚ), 2⟩,
    ⟨(29367841959/62500000000 : ℚ), (-2910306757/10000000000 : ℚ), (23058203703/200000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2913724843/10000000000 : ℚ), (57725824481/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (70039551733/250000000000 : ℚ)
  μ := (47/100 : ℚ)
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
theorem certOK : JointInheritedControls.control210.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control210.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate210

-- Control211
namespace DiagonalRamsey.JointInheritedCertificate211
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(71729474691/250000000000 : ℚ), (1290731683437/1000000000 : ℚ), (-371199360046689/1000000000000 : ℚ), 11⟩,
    ⟨(7196177039/25000000000 : ℚ), (703559549557/5000000000 : ℚ), (-41041476666709/1000000000000 : ℚ), 8⟩,
    ⟨(57939299723/200000000000 : ℚ), (491497093237/10000000000 : ℚ), (-2925751917127/200000000000 : ℚ), 7⟩,
    ⟨(292448339031/1000000000000 : ℚ), (120613129597/5000000000 : ℚ), (-7351673263047/1000000000000 : ℚ), 6⟩,
    ⟨(7401902527/25000000000 : ℚ), (69674103427/5000000000 : ℚ), (-871370974749/200000000000 : ℚ), 5⟩,
    ⟨(37568105929/125000000000 : ℚ), (88474023249/10000000000 : ℚ), (-2840734375479/1000000000000 : ℚ), 5⟩,
    ⟨(61162308323/200000000000 : ℚ), (59679308191/10000000000 : ℚ), (-196857941589/100000000000 : ℚ), 4⟩,
    ⟨(62365092497/200000000000 : ℚ), (20969202727/5000000000 : ℚ), (-1421211355103/1000000000000 : ℚ), 4⟩,
    ⟨(159264346349/500000000000 : ℚ), (6063193019/2000000000 : ℚ), (-263804762389/250000000000 : ℚ), 4⟩,
    ⟨(162928338241/500000000000 : ℚ), (5584697903/2500000000 : ℚ), (-199603133359/250000000000 : ℚ), 3⟩,
    ⟨(166869420673/500000000000 : ℚ), (1665907919/1000000000 : ℚ), (-4889933831/8000000000 : ℚ), 3⟩,
    ⟨(68419855547/200000000000 : ℚ), (249863089/200000000 : ℚ), (-58821041803/125000000000 : ℚ), 3⟩,
    ⟨(87714367519/250000000000 : ℚ), (9361276371/10000000000 : ℚ), (-181063687753/500000000000 : ℚ), 3⟩,
    ⟨(359929072189/1000000000000 : ℚ), (3478608977/5000000000 : ℚ), (-276740435011/1000000000000 : ℚ), 3⟩,
    ⟨(184613359793/500000000000 : ℚ), (2539318089/5000000000 : ℚ), (-41657800297/200000000000 : ℚ), 3⟩,
    ⟨(378660870841/1000000000000 : ℚ), (1793952087/5000000000 : ℚ), (-152571380493/1000000000000 : ℚ), 2⟩,
    ⟨(2425879187/6250000000 : ℚ), (1194545151/5000000000 : ℚ), (-53314403387/500000000000 : ℚ), 2⟩,
    ⟨(15902992847/40000000000 : ℚ), (706956123/5000000000 : ℚ), (-13666571457/200000000000 : ℚ), 2⟩,
    ⟨(101718117143/250000000000 : ℚ), (153221717/2500000000 : ℚ), (-18062220819/500000000000 : ℚ), 2⟩,
    ⟨(83188814137/200000000000 : ℚ), (-25202047/5000000000 : ℚ), (-1768777977/200000000000 : ℚ), 2⟩,
    ⟨(212351131513/500000000000 : ℚ), (-150780319/2500000000 : ℚ), (14382485211/1000000000000 : ℚ), 2⟩,
    ⟨(86612539883/200000000000 : ℚ), (-1065750303/10000000000 : ℚ), (4277480457/125000000000 : ℚ), 2⟩,
    ⟨(440944864279/1000000000000 : ℚ), (-1453887103/10000000000 : ℚ), (5117877719/100000000000 : ℚ), 2⟩,
    ⟨(448272848063/1000000000000 : ℚ), (-889746411/5000000000 : ℚ), (13130717271/200000000000 : ℚ), 2⟩,
    ⟨(18199043131/40000000000 : ℚ), (-410357769/2000000000 : ℚ), (7794987323/100000000000 : ℚ), 2⟩,
    ⟨(230494999573/500000000000 : ℚ), (-2277903139/10000000000 : ℚ), (88304715913/1000000000000 : ℚ), 2⟩,
    ⟨(466256693329/1000000000000 : ℚ), (-492668343/2000000000 : ℚ), (96901593249/1000000000000 : ℚ), 2⟩,
    ⟨(1471016999/3125000000 : ℚ), (-1306167441/5000000000 : ℚ), (51940758741/500000000000 : ℚ), 2⟩,
    ⟨(47435320173/100000000000 : ℚ), (-2728092141/10000000000 : ℚ), (54675683819/500000000000 : ℚ), 2⟩,
    ⟨(238552521073/500000000000 : ℚ), (-2812988873/10000000000 : ℚ), (14173762063/125000000000 : ℚ), 2⟩,
    ⟨(478954459201/1000000000000 : ℚ), (-2868700737/10000000000 : ℚ), (116053273051/1000000000000 : ℚ), 2⟩,
    ⟨(479883641997/1000000000000 : ℚ), (-2896296519/10000000000 : ℚ), (117376265387/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2899733933/10000000000 : ℚ), (58770620633/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (55087202223/200000000000 : ℚ)
  μ := (12/25 : ℚ)
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
theorem certOK : JointInheritedControls.control211.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control211.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate211

-- Control212
namespace DiagonalRamsey.JointInheritedCertificate212
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(150588048321/500000000000 : ℚ), (2631647364749/2000000000 : ℚ), (-397204424248209/1000000000000 : ℚ), 11⟩,
    ⟨(75533227781/250000000000 : ℚ), (143484749939/1000000000 : ℚ), (-43917554381669/1000000000000 : ℚ), 8⟩,
    ⟨(475058321/1562500000 : ℚ), (501371573111/10000000000 : ℚ), (-3130907649551/200000000000 : ℚ), 7⟩,
    ⟨(29967871/97656250 : ℚ), (61545887793/2500000000 : ℚ), (-7867700453071/1000000000000 : ℚ), 6⟩,
    ⟨(155303321049/500000000000 : ℚ), (142283884567/10000000000 : ℚ), (-4663135450137/1000000000000 : ℚ), 5⟩,
    ⟨(31520827833/100000000000 : ℚ), (45194176051/5000000000 : ℚ), (-152043542239/50000000000 : ℚ), 5⟩,
    ⟨(160315795731/500000000000 : ℚ), (1906506367/312500000 : ℚ), (-2107697502791/1000000000000 : ℚ), 4⟩,
    ⟨(13072974081/40000000000 : ℚ), (21450974741/5000000000 : ℚ), (-304415335699/200000000000 : ℚ), 4⟩,
    ⟨(333726920349/1000000000000 : ℚ), (7759305621/2500000000 : ℚ), (-70659391901/62500000000 : ℚ), 4⟩,
    ⟨(341272820929/1000000000000 : ℚ), (11445977089/5000000000 : ℚ), (-213967639941/250000000000 : ℚ), 3⟩,
    ⟨(69877876523/200000000000 : ℚ), (3418305949/2000000000 : ℚ), (-327858060333/500000000000 : ℚ), 3⟩,
    ⟨(357998438483/1000000000000 : ℚ), (12836561979/10000000000 : ℚ), (-505326853011/1000000000000 : ℚ), 3⟩,
    ⟨(183508539309/500000000000 : ℚ), (9637596361/10000000000 : ℚ), (-19471871551/50000000000 : ℚ), 3⟩,
    ⟨(188179224293/500000000000 : ℚ), (3591066867/5000000000 : ℚ), (-149112629137/500000000000 : ℚ), 3⟩,
    ⟨(385932585887/1000000000000 : ℚ), (5263630821/10000000000 : ℚ), (-112570924207/500000000000 : ℚ), 3⟩,
    ⟨(79129457269/200000000000 : ℚ), (187077999/500000000 : ℚ), (-165689669287/1000000000000 : ℚ), 2⟩,
    ⟨(81081798417/200000000000 : ℚ), (1258966419/5000000000 : ℚ), (-116701060909/1000000000000 : ℚ), 2⟩,
    ⟨(415123692543/1000000000000 : ℚ), (304595087/2000000000 : ℚ), (-607174099/8000000000 : ℚ), 2⟩,
    ⟨(106174457461/250000000000 : ℚ), (706101501/10000000000 : ℚ), (-41606637199/1000000000000 : ℚ), 2⟩,
    ⟨(434039199811/1000000000000 : ℚ), (30063137/10000000000 : ℚ), (-78674261/6250000000 : ℚ), 2⟩,
    ⟨(443057839947/1000000000000 : ℚ), (-3330833/62500000 : ℚ), (1512041677/125000000000 : ℚ), 2⟩,
    ⟨(90333379163/200000000000 : ℚ), (-501931097/5000000000 : ℚ), (33159716181/1000000000000 : ℚ), 2⟩,
    ⟨(459783457501/1000000000000 : ℚ), (-699350373/5000000000 : ℚ), (25575280637/500000000000 : ℚ), 2⟩,
    ⟨(365101061/781250000 : ℚ), (-172970959/1000000000 : ℚ), (66492675867/1000000000000 : ℚ), 2⟩,
    ⟨(94846385281/200000000000 : ℚ), (-2006346561/10000000000 : ℚ), (15902974559/200000000000 : ℚ), 2⟩,
    ⟨(60053085871/125000000000 : ℚ), (-2235926621/10000000000 : ℚ), (45236263403/500000000000 : ℚ), 2⟩,
    ⟨(4858480001/10000000000 : ℚ), (-151506459/625000000 : ℚ), (99563513829/1000000000000 : ℚ), 2⟩,
    ⟨(122612409083/250000000000 : ℚ), (-515044529/2000000000 : ℚ), (4277603897/40000000000 : ℚ), 2⟩,
    ⟨(49418527939/100000000000 : ℚ), (-2692583241/10000000000 : ℚ), (4508712863/40000000000 : ℚ), 2⟩,
    ⟨(49701895299/100000000000 : ℚ), (-173664219/625000000 : ℚ), (58491067279/500000000000 : ℚ), 2⟩,
    ⟨(249461683653/500000000000 : ℚ), (-567015777/2000000000 : ℚ), (119793233337/1000000000000 : ℚ), 2⟩,
    ⟨(499880181787/1000000000000 : ℚ), (-2863036907/10000000000 : ℚ), (1893585309/15625000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-716629813/2500000000 : ℚ), (6068177809/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (474999/1000000 : ℚ)
  x := (265820971777/1000000000000 : ℚ)
  μ := (1/2 : ℚ)
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
theorem certOK : JointInheritedControls.control212.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control212.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate212
