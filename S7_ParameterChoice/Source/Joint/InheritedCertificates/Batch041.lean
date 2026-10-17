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

-- Control355
namespace DiagonalRamsey.JointInheritedCertificate355
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12250333849/50000000000 : ℚ), (12424750265607/10000000000 : ℚ), (-305083025129501/1000000000000 : ℚ), 12⟩,
    ⟨(245752562427/1000000000000 : ℚ), (271061810969/2000000000 : ℚ), (-33722390764067/1000000000000 : ℚ), 8⟩,
    ⟨(61809287509/250000000000 : ℚ), (473727405557/10000000000 : ℚ), (-12013388253349/1000000000000 : ℚ), 7⟩,
    ⟨(15590383901/62500000000 : ℚ), (14540196773/625000000 : ℚ), (-3016071100571/500000000000 : ℚ), 6⟩,
    ⟨(50471653153/200000000000 : ℚ), (134437138289/10000000000 : ℚ), (-1785251902473/500000000000 : ℚ), 5⟩,
    ⟨(255945474741/1000000000000 : ℚ), (85353000433/10000000000 : ℚ), (-1162094535899/500000000000 : ℚ), 5⟩,
    ⟨(130086611281/500000000000 : ℚ), (7192634019/1250000000 : ℚ), (-200890606129/125000000000 : ℚ), 4⟩,
    ⟨(53000158741/200000000000 : ℚ), (20191716543/5000000000 : ℚ), (-578488867123/500000000000 : ℚ), 4⟩,
    ⟨(270381696021/1000000000000 : ℚ), (29126198423/10000000000 : ℚ), (-427939853871/500000000000 : ℚ), 4⟩,
    ⟨(138132054239/500000000000 : ℚ), (21386485481/10000000000 : ℚ), (-322250098841/500000000000 : ℚ), 4⟩,
    ⟨(28259138023/100000000000 : ℚ), (15865307483/10000000000 : ℚ), (-30645975323/62500000000 : ℚ), 3⟩,
    ⟨(28930257619/100000000000 : ℚ), (11807107887/10000000000 : ℚ), (-374371205799/1000000000000 : ℚ), 3⟩,
    ⟨(296333063873/1000000000000 : ℚ), (8749170113/10000000000 : ℚ), (-35610652399/125000000000 : ℚ), 3⟩,
    ⟨(1897594599/6250000000 : ℚ), (639600029/1000000000 : ℚ), (-107168228063/500000000000 : ℚ), 3⟩,
    ⟨(62215732351/200000000000 : ℚ), (455225163/1000000000 : ℚ), (-157698645227/1000000000000 : ℚ), 3⟩,
    ⟨(63730352757/200000000000 : ℚ), (1542494021/5000000000 : ℚ), (-111520979283/1000000000000 : ℚ), 3⟩,
    ⟨(163130754409/500000000000 : ℚ), (237687607/1250000000 : ℚ), (-18343575667/250000000000 : ℚ), 3⟩,
    ⟨(10432331589/31250000000 : ℚ), (467885633/5000000000 : ℚ), (-10378014401/250000000000 : ℚ), 3⟩,
    ⟨(341298136763/1000000000000 : ℚ), (139938263/10000000000 : ℚ), (-7327899271/500000000000 : ℚ), 2⟩,
    ⟨(348580208729/1000000000000 : ℚ), (-521231461/10000000000 : ℚ), (8144437401/1000000000000 : ℚ), 2⟩,
    ⟨(88902674103/250000000000 : ℚ), (-1074016869/10000000000 : ℚ), (27603365117/1000000000000 : ℚ), 2⟩,
    ⟨(362321892373/1000000000000 : ℚ), (-1538235859/10000000000 : ℚ), (22132066653/500000000000 : ℚ), 2⟩,
    ⟨(2949193313/8000000000 : ℚ), (-964485089/5000000000 : ℚ), (1463567927/25000000000 : ℚ), 2⟩,
    ⟨(187265788291/500000000000 : ℚ), (-451555809/2000000000 : ℚ), (35379719533/500000000000 : ℚ), 2⟩,
    ⟨(189956239449/500000000000 : ℚ), (-633391439/2500000000 : ℚ), (1623234517/20000000000 : ℚ), 2⟩,
    ⟨(9618501251/25000000000 : ℚ), (-2763204353/10000000000 : ℚ), (89940777481/1000000000000 : ℚ), 2⟩,
    ⟨(388967797861/1000000000000 : ℚ), (-737999359/2500000000 : ℚ), (12155491071/125000000000 : ℚ), 2⟩,
    ⟨(196277503419/500000000000 : ℚ), (-3104012931/10000000000 : ℚ), (51591946597/500000000000 : ℚ), 2⟩,
    ⟨(197733565093/500000000000 : ℚ), (-3222332399/10000000000 : ℚ), (53922852321/500000000000 : ℚ), 2⟩,
    ⟨(397676122567/1000000000000 : ℚ), (-1654616593/5000000000 : ℚ), (111291899347/1000000000000 : ℚ), 2⟩,
    ⟨(12473772193/31250000000 : ℚ), (-673263943/2000000000 : ℚ), (28391579751/250000000000 : ℚ), 2⟩,
    ⟨(199953297811/500000000000 : ℚ), (-3394614301/10000000000 : ℚ), (28674195337/250000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-8495349/25000000 : ℚ), (114837776831/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (5340328859/15625000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control355.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control355.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate355

-- Control356
namespace DiagonalRamsey.JointInheritedCertificate356
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(129416294947/500000000000 : ℚ), (6311817736773/5000000000 : ℚ), (-327447777503263/1000000000000 : ℚ), 12⟩,
    ⟨(259608187341/1000000000000 : ℚ), (344321968707/2500000000 : ℚ), (-36195137334371/1000000000000 : ℚ), 8⟩,
    ⟨(32643989101/125000000000 : ℚ), (240777417273/5000000000 : ℚ), (-3223695951567/250000000000 : ℚ), 7⟩,
    ⟨(421518239/1600000000 : ℚ), (3696455171/156250000 : ℚ), (-6475116349087/1000000000000 : ℚ), 6⟩,
    ⟨(133238512903/500000000000 : ℚ), (136764778569/10000000000 : ℚ), (-3833071057571/1000000000000 : ℚ), 5⟩,
    ⟨(270207129587/1000000000000 : ℚ), (86871140903/10000000000 : ℚ), (-2495448898649/1000000000000 : ℚ), 5⟩,
    ⟨(13730164389/50000000000 : ℚ), (29297620269/5000000000 : ℚ), (-107867757841/62500000000 : ℚ), 4⟩,
    ⟨(279623162979/1000000000000 : ℚ), (20574041857/5000000000 : ℚ), (-1242812788767/1000000000000 : ℚ), 4⟩,
    ⟨(285218411041/1000000000000 : ℚ), (29698888913/10000000000 : ℚ), (-919726224441/1000000000000 : ℚ), 4⟩,
    ⟨(72833786667/250000000000 : ℚ), (21826036267/10000000000 : ℚ), (-86618022871/125000000000 : ℚ), 4⟩,
    ⟨(148957231177/500000000000 : ℚ), (8104644909/5000000000 : ℚ), (-65947477243/125000000000 : ℚ), 3⟩,
    ⟨(30489299569/100000000000 : ℚ), (1208063757/1000000000 : ℚ), (-80644767303/200000000000 : ℚ), 3⟩,
    ⟨(312203539587/1000000000000 : ℚ), (4484831441/5000000000 : ℚ), (-307294376051/1000000000000 : ℚ), 3⟩,
    ⟨(31977568951/100000000000 : ℚ), (6575898907/10000000000 : ℚ), (-115848250917/500000000000 : ℚ), 3⟩,
    ⟨(327536521517/1000000000000 : ℚ), (4700667581/10000000000 : ℚ), (-171034436927/1000000000000 : ℚ), 3⟩,
    ⟨(335411294551/1000000000000 : ℚ), (1604365549/5000000000 : ℚ), (-121603248911/1000000000000 : ℚ), 3⟩,
    ⟨(68664834049/200000000000 : ℚ), (1002873887/5000000000 : ℚ), (-40397225597/500000000000 : ℚ), 3⟩,
    ⟨(4389986791/12500000000 : ℚ), (128064191/1250000000 : ℚ), (-46732108007/1000000000000 : ℚ), 3⟩,
    ⟨(179479887643/500000000000 : ℚ), (216290013/10000000000 : ℚ), (-281916291/15625000000 : ℚ), 2⟩,
    ⟨(366531925209/1000000000000 : ℚ), (-1776627/39062500 : ℚ), (629500861/100000000000 : ℚ), 2⟩,
    ⟨(186921234553/500000000000 : ℚ), (-1015589327/10000000000 : ℚ), (1352472203/50000000000 : ℚ), 2⟩,
    ⟨(380821002443/1000000000000 : ℚ), (-743118019/5000000000 : ℚ), (22402561539/500000000000 : ℚ), 2⟩,
    ⟨(24212519883/62500000000 : ℚ), (-941071207/5000000000 : ℚ), (30004994257/500000000000 : ℚ), 2⟩,
    ⟨(98379263439/250000000000 : ℚ), (-1107553257/5000000000 : ℚ), (7300927287/100000000000 : ℚ), 2⟩,
    ⟨(199556150909/500000000000 : ℚ), (-1247110039/5000000000 : ℚ), (8406989833/100000000000 : ℚ), 2⟩,
    ⟨(50516522127/125000000000 : ℚ), (-2726506013/10000000000 : ℚ), (18679669037/200000000000 : ℚ), 2⟩,
    ⟨(408528335209/1000000000000 : ℚ), (-291738421/1000000000 : ℚ), (50576948803/500000000000 : ℚ), 2⟩,
    ⟨(41225843899/100000000000 : ℚ), (-95969197/312500000 : ℚ), (107458548171/1000000000000 : ℚ), 2⟩,
    ⟨(415286565421/1000000000000 : ℚ), (-623154/1953125 : ℚ), (56202215419/500000000000 : ℚ), 2⟩,
    ⟨(104395887997/250000000000 : ℚ), (-3278316991/10000000000 : ℚ), (14507421597/125000000000 : ℚ), 2⟩,
    ⟨(83825455491/200000000000 : ℚ), (-208497621/625000000 : ℚ), (23694193339/200000000000 : ℚ), 2⟩,
    ⟨(209951437451/500000000000 : ℚ), (-3364529819/10000000000 : ℚ), (59834715379/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-1684044503/5000000000 : ℚ), (4792755973/40000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (165814022147/500000000000 : ℚ)
  μ := (21/50 : ℚ)
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
theorem certOK : JointInheritedControls.control356.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control356.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate356

-- Control357
namespace DiagonalRamsey.JointInheritedCertificate357
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(18335724571/62500000000 : ℚ), (216289742257/156250000 : ℚ), (-203452975349119/500000000000 : ℚ), 12⟩,
    ⟨(18385841933/62500000000 : ℚ), (755912271053/5000000000 : ℚ), (-5621964992943/125000000000 : ℚ), 9⟩,
    ⟨(295769503991/1000000000000 : ℚ), (4135512503/78125000 : ℚ), (-8010591444737/500000000000 : ℚ), 7⟩,
    ⟨(149072160827/500000000000 : ℚ), (260469278901/10000000000 : ℚ), (-8043760492479/1000000000000 : ℚ), 6⟩,
    ⟨(96408017/320000000 : ℚ), (150832969701/10000000000 : ℚ), (-595087244197/125000000000 : ℚ), 5⟩,
    ⟨(76282886937/250000000000 : ℚ), (4798491647/500000000 : ℚ), (-619726121361/200000000000 : ℚ), 5⟩,
    ⟨(77419166343/250000000000 : ℚ), (16210282741/2500000000 : ℚ), (-1071250156217/500000000000 : ℚ), 4⟩,
    ⟨(314866634029/1000000000000 : ℚ), (9121875719/2000000000 : ℚ), (-308483238343/200000000000 : ℚ), 4⟩,
    ⟨(80162867871/250000000000 : ℚ), (32972580037/10000000000 : ℚ), (-570584614519/500000000000 : ℚ), 4⟩,
    ⟨(326975466591/1000000000000 : ℚ), (24271810809/10000000000 : ℚ), (-429812429107/500000000000 : ℚ), 4⟩,
    ⟨(333777715819/1000000000000 : ℚ), (18056728453/10000000000 : ℚ), (-327214357369/500000000000 : ℚ), 3⟩,
    ⟨(340992709789/1000000000000 : ℚ), (13483117503/10000000000 : ℚ), (-250108386803/500000000000 : ℚ), 3⟩,
    ⟨(174275482083/500000000000 : ℚ), (5016752763/5000000000 : ℚ), (-381351458663/1000000000000 : ℚ), 3⟩,
    ⟨(89094922207/250000000000 : ℚ), (1844270857/2500000000 : ℚ), (-71942631859/250000000000 : ℚ), 3⟩,
    ⟨(364403488877/1000000000000 : ℚ), (529489041/1000000000 : ℚ), (-106382749597/500000000000 : ℚ), 3⟩,
    ⟨(372545090733/1000000000000 : ℚ), (1818856311/5000000000 : ℚ), (-30345740283/200000000000 : ℚ), 3⟩,
    ⟨(190363043159/500000000000 : ℚ), (1150663291/5000000000 : ℚ), (-101414682843/1000000000000 : ℚ), 3⟩,
    ⟨(194433844087/500000000000 : ℚ), (151423237/1250000000 : ℚ), (-5948807289/100000000000 : ℚ), 3⟩,
    ⟨(396891488223/1000000000000 : ℚ), (39236513/1250000000 : ℚ), (-189356221/7812500000 : ℚ), 2⟩,
    ⟨(80944042577/200000000000 : ℚ), (-430984797/10000000000 : ℚ), (5610066271/1000000000000 : ℚ), 2⟩,
    ⟨(206139233631/500000000000 : ℚ), (-210602697/2000000000 : ℚ), (31014530557/1000000000000 : ℚ), 2⟩,
    ⟨(419493461233/1000000000000 : ℚ), (-1574690977/10000000000 : ℚ), (13176635537/250000000000 : ℚ), 2⟩,
    ⟨(21314785523/50000000000 : ℚ), (-1006587083/5000000000 : ℚ), (17811770309/250000000000 : ℚ), 2⟩,
    ⟨(432619705567/1000000000000 : ℚ), (-238164013/1000000000 : ℚ), (87069302851/1000000000000 : ℚ), 2⟩,
    ⟨(219202271511/500000000000 : ℚ), (-672564641/2500000000 : ℚ), (50254395979/500000000000 : ℚ), 2⟩,
    ⟨(443594511679/1000000000000 : ℚ), (-2946895913/10000000000 : ℚ), (55912854917/500000000000 : ℚ), 2⟩,
    ⟨(448139629303/1000000000000 : ℚ), (-789407639/2500000000 : ℚ), (60610602203/500000000000 : ℚ), 2⟩,
    ⟨(225998061963/500000000000 : ℚ), (-1663566227/5000000000 : ℚ), (25769935641/200000000000 : ℚ), 2⟩,
    ⟨(455126855397/1000000000000 : ℚ), (-1729471811/5000000000 : ℚ), (67413997413/500000000000 : ℚ), 2⟩,
    ⟨(22875083653/50000000000 : ℚ), (-3555684297/10000000000 : ℚ), (6962117801/50000000000 : ℚ), 2⟩,
    ⟨(459097706123/1000000000000 : ℚ), (-3619201869/10000000000 : ℚ), (142153348687/1000000000000 : ℚ), 2⟩,
    ⟨(91979916783/200000000000 : ℚ), (-1825337041/5000000000 : ℚ), (71799745339/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-3654594827/10000000000 : ℚ), (71889912633/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (149747118981/500000000000 : ℚ)
  μ := (23/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control357.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control357.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate357

-- Control358
namespace DiagonalRamsey.JointInheritedCertificate358
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(300682294999/1000000000000 : ℚ), (13962471208833/10000000000 : ℚ), (-420652428658669/1000000000000 : ℚ), 12⟩,
    ⟨(301497114693/1000000000000 : ℚ), (1525080471889/10000000000 : ℚ), (-46495608065089/1000000000000 : ℚ), 9⟩,
    ⟨(151559453461/500000000000 : ℚ), (534068397871/10000000000 : ℚ), (-16562952947539/1000000000000 : ℚ), 7⟩,
    ⟨(15276602647/50000000000 : ℚ), (65710466641/2500000000 : ℚ), (-8316060322099/1000000000000 : ℚ), 6⟩,
    ⟨(4823645513/15625000000 : ℚ), (76119612353/5000000000 : ℚ), (-4922117311761/1000000000000 : ℚ), 5⟩,
    ⟨(156316024663/500000000000 : ℚ), (96887798273/10000000000 : ℚ), (-3203935898149/1000000000000 : ℚ), 5⟩,
    ⟨(9914078839/31250000000 : ℚ), (65479131379/10000000000 : ℚ), (-69235802047/31250000000 : ℚ), 4⟩,
    ⟨(80631063743/250000000000 : ℚ), (46072589897/10000000000 : ℚ), (-1595235683241/1000000000000 : ℚ), 4⟩,
    ⟨(13136098271/40000000000 : ℚ), (2082488507/625000000 : ℚ), (-590242967911/500000000000 : ℚ), 4⟩,
    ⟨(334828517961/1000000000000 : ℚ), (6134633251/2500000000 : ℚ), (-889488277011/1000000000000 : ℚ), 4⟩,
    ⟨(21358784503/62500000000 : ℚ), (9132795083/5000000000 : ℚ), (-677423407283/1000000000000 : ℚ), 3⟩,
    ⟨(349071992369/1000000000000 : ℚ), (13649266133/10000000000 : ℚ), (-518070038193/1000000000000 : ℚ), 3⟩,
    ⟨(71350446629/200000000000 : ℚ), (10167449267/10000000000 : ℚ), (-98815457819/250000000000 : ℚ), 3⟩,
    ⟨(18235365473/50000000000 : ℚ), (935791873/1250000000 : ℚ), (-298596051623/1000000000000 : ℚ), 3⟩,
    ⟨(372860609581/1000000000000 : ℚ), (5384956233/10000000000 : ℚ), (-221136949439/1000000000000 : ℚ), 3⟩,
    ⟨(381133612769/1000000000000 : ℚ), (742542613/2000000000 : ℚ), (-158120483001/1000000000000 : ℚ), 3⟩,
    ⟨(389446645481/1000000000000 : ℚ), (472879701/2000000000 : ℚ), (-53095393343/500000000000 : ℚ), 3⟩,
    ⟨(39771964867/100000000000 : ℚ), (1264952097/10000000000 : ℚ), (-62932763359/1000000000000 : ℚ), 3⟩,
    ⟨(40587294879/100000000000 : ℚ), (359846523/10000000000 : ℚ), (-26576447603/1000000000000 : ℚ), 2⟩,
    ⟨(82765605021/200000000000 : ℚ), (-6111667/156250000 : ℚ), (209770511/50000000000 : ℚ), 2⟩,
    ⟨(421508265881/1000000000000 : ℚ), (-509050437/5000000000 : ℚ), (3796972631/125000000000 : ℚ), 2⟩,
    ⟨(214419853101/500000000000 : ℚ), (-1543748861/10000000000 : ℚ), (26360520873/500000000000 : ℚ), 2⟩,
    ⟨(435751740289/1000000000000 : ℚ), (-99271593/500000000 : ℚ), (35906030181/500000000000 : ℚ), 2⟩,
    ⟨(17687112059/40000000000 : ℚ), (-589118019/2500000000 : ℚ), (88097536827/1000000000000 : ℚ), 2⟩,
    ⟨(448056003279/1000000000000 : ℚ), (-1333576997/5000000000 : ℚ), (101925263873/1000000000000 : ℚ), 2⟩,
    ⟨(453329735403/1000000000000 : ℚ), (-91419843/312500000 : ℚ), (56782502913/500000000000 : ℚ), 2⟩,
    ⟨(114487052231/250000000000 : ℚ), (-1568732611/5000000000 : ℚ), (61612724233/500000000000 : ℚ), 2⟩,
    ⟨(230933472709/500000000000 : ℚ), (-206748187/625000000 : ℚ), (26213373793/200000000000 : ℚ), 2⟩,
    ⟨(46504820531/100000000000 : ℚ), (-688107551/2000000000 : ℚ), (137210642219/1000000000000 : ℚ), 2⟩,
    ⟨(14608167229/31250000000 : ℚ), (-353781837/1000000000 : ℚ), (141746342171/1000000000000 : ℚ), 2⟩,
    ⟨(469083143557/1000000000000 : ℚ), (-900420873/2500000000 : ℚ), (144736952457/1000000000000 : ℚ), 2⟩,
    ⟨(469897963251/1000000000000 : ℚ), (-3633325823/10000000000 : ℚ), (5848901121/40000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-3637267663/10000000000 : ℚ), (29281554881/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (294098409831/1000000000000 : ℚ)
  μ := (47/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control358.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control358.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate358

-- Control359
namespace DiagonalRamsey.JointInheritedCertificate359
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(308012894081/1000000000000 : ℚ), (14081192234927/10000000000 : ℚ), (-108641282248563/250000000000 : ℚ), 12⟩,
    ⟨(77210139981/250000000000 : ℚ), (769100892999/5000000000 : ℚ), (-9606759753201/200000000000 : ℚ), 9⟩,
    ⟨(62097584147/200000000000 : ℚ), (538742325559/10000000000 : ℚ), (-17111192164891/1000000000000 : ℚ), 7⟩,
    ⟨(312939111529/1000000000000 : ℚ), (265189202509/10000000000 : ℚ), (-4295784919863/500000000000 : ℚ), 6⟩,
    ⟨(316170525999/1000000000000 : ℚ), (153629941613/10000000000 : ℚ), (-317837867007/62500000000 : ℚ), 5⟩,
    ⟨(320151043857/1000000000000 : ℚ), (48897568409/5000000000 : ℚ), (-413804094463/125000000000 : ℚ), 5⟩,
    ⟨(16242116527/50000000000 : ℚ), (16527331073/2500000000 : ℚ), (-2289393791359/1000000000000 : ℚ), 4⟩,
    ⟨(330199206393/1000000000000 : ℚ), (9305951503/2000000000 : ℚ), (-1648614979159/1000000000000 : ℚ), 4⟩,
    ⟨(336170081773/1000000000000 : ℚ), (33662182817/10000000000 : ℚ), (-1220201036721/1000000000000 : ℚ), 4⟩,
    ⟨(171348726943/500000000000 : ℚ), (2480120537/1000000000 : ℚ), (-229909469493/250000000000 : ℚ), 4⟩,
    ⟨(349718460571/1000000000000 : ℚ), (2308874447/1250000000 : ℚ), (-175155882669/250000000000 : ℚ), 3⟩,
    ⟨(178582742847/500000000000 : ℚ), (13812401411/10000000000 : ℚ), (-536069054843/1000000000000 : ℚ), 3⟩,
    ⟨(182483405167/500000000000 : ℚ), (82389749/80000000 : ℚ), (-409272934269/1000000000000 : ℚ), 3⟩,
    ⟨(93261825867/250000000000 : ℚ), (7593177181/10000000000 : ℚ), (-309487802169/1000000000000 : ℚ), 3⟩,
    ⟨(95332286383/250000000000 : ℚ), (5472823819/10000000000 : ℚ), (-229547867533/1000000000000 : ℚ), 3⟩,
    ⟨(194866288929/500000000000 : ℚ), (3785686257/10000000000 : ℚ), (-164530802953/1000000000000 : ℚ), 3⟩,
    ⟨(995441677/2500000000 : ℚ), (2425583699/10000000000 : ℚ), (-22193793067/200000000000 : ℚ), 3⟩,
    ⟨(203290051563/500000000000 : ℚ), (658374279/5000000000 : ℚ), (-13273307519/200000000000 : ℚ), 3⟩,
    ⟨(414861945189/1000000000000 : ℚ), (404129687/10000000000 : ℚ), (-28894122799/1000000000000 : ℚ), 2⟩,
    ⟨(105735609581/250000000000 : ℚ), (-352896161/10000000000 : ℚ), (2810023487/1000000000000 : ℚ), 2⟩,
    ⟨(430743762963/1000000000000 : ℚ), (-3846501/39062500 : ℚ), (14886332699/500000000000 : ℚ), 2⟩,
    ⟨(219095394043/500000000000 : ℚ), (-757130599/5000000000 : ℚ), (26388077831/500000000000 : ℚ), 2⟩,
    ⟨(445211794771/1000000000000 : ℚ), (-979545501/5000000000 : ℚ), (7242152571/100000000000 : ℚ), 2⟩,
    ⟨(112934791721/250000000000 : ℚ), (-233265987/1000000000 : ℚ), (89173242771/1000000000000 : ℚ), 2⟩,
    ⟨(57213755283/125000000000 : ℚ), (-2645366227/10000000000 : ℚ), (10339148749/100000000000 : ℚ), 2⟩,
    ⟨(463066918117/1000000000000 : ℚ), (-581051543/2000000000 : ℚ), (57677886879/500000000000 : ℚ), 2⟩,
    ⟨(146174439/312500000 : ℚ), (-779638969/2500000000 : ℚ), (31320610973/250000000000 : ℚ), 2⟩,
    ⟨(235869361329/500000000000 : ℚ), (-822510727/2500000000 : ℚ), (133337744821/1000000000000 : ℚ), 2⟩,
    ⟨(59371267141/125000000000 : ℚ), (-684669493/2000000000 : ℚ), (17455954719/125000000000 : ℚ), 2⟩,
    ⟨(477421327923/1000000000000 : ℚ), (-3521154831/10000000000 : ℚ), (144305126153/1000000000000 : ℚ), 2⟩,
    ⟨(239534344367/500000000000 : ℚ), (-1792679393/5000000000 : ℚ), (36843907929/250000000000 : ℚ), 2⟩,
    ⟨(479896354577/1000000000000 : ℚ), (-1808583449/5000000000 : ℚ), (74450386531/500000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-905282323/2500000000 : ℚ), (74545473731/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (57739281889/200000000000 : ℚ)
  μ := (12/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control359.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control359.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate359

-- Control360
namespace DiagonalRamsey.JointInheritedCertificate360
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(32295208877/100000000000 : ℚ), (1792852414737/1250000000 : ℚ), (-464092896069839/1000000000000 : ℚ), 12⟩,
    ⟨(10118878409/31250000000 : ℚ), (1567122998073/10000000000 : ℚ), (-25649395263751/500000000000 : ℚ), 9⟩,
    ⟨(162749972151/500000000000 : ℚ), (274524161507/5000000000 : ℚ), (-18275183542019/1000000000000 : ℚ), 7⟩,
    ⟨(328023262593/1000000000000 : ℚ), (270368093711/10000000000 : ℚ), (-458837082013/50000000000 : ℚ), 6⟩,
    ⟨(165674881513/500000000000 : ℚ), (19587581181/1250000000 : ℚ), (-5432411110531/1000000000000 : ℚ), 5⟩,
    ⟨(167723704791/500000000000 : ℚ), (49900248063/5000000000 : ℚ), (-707382259373/200000000000 : ℚ), 5⟩,
    ⟨(340276739687/1000000000000 : ℚ), (13500755743/2000000000 : ℚ), (-2446585744353/1000000000000 : ℚ), 4⟩,
    ⟨(345791244251/1000000000000 : ℚ), (23771366609/5000000000 : ℚ), (-881185447989/500000000000 : ℚ), 4⟩,
    ⟨(17596890779/50000000000 : ℚ), (17210985187/5000000000 : ℚ), (-652481691109/500000000000 : ℚ), 4⟩,
    ⟨(358657258833/1000000000000 : ℚ), (3173144383/1250000000 : ℚ), (-984106210061/1000000000000 : ℚ), 4⟩,
    ⟨(182942431049/500000000000 : ℚ), (9464260243/5000000000 : ℚ), (-375175332101/500000000000 : ℚ), 3⟩,
    ⟨(93387754901/250000000000 : ℚ), (567061739/400000000 : ℚ), (-574766327683/1000000000000 : ℚ), 3⟩,
    ⟨(381581902063/1000000000000 : ℚ), (5296201169/5000000000 : ℚ), (-109878953771/250000000000 : ℚ), 3⟩,
    ⟨(389900167689/1000000000000 : ℚ), (7832795061/10000000000 : ℚ), (-83280069573/250000000000 : ℚ), 3⟩,
    ⟨(79685141407/200000000000 : ℚ), (5670394099/10000000000 : ℚ), (-15495352041/62500000000 : ℚ), 3⟩,
    ⟨(12721137953/31250000000 : ℚ), (19751027/50000000 : ℚ), (-44668383443/250000000000 : ℚ), 3⟩,
    ⟨(51971122379/125000000000 : ℚ), (2563904329/10000000000 : ℚ), (-24331803207/200000000000 : ℚ), 3⟩,
    ⟨(212209843247/500000000000 : ℚ), (1434166879/10000000000 : ℚ), (-74214841751/1000000000000 : ℚ), 3⟩,
    ⟨(5411815323/12500000000 : ℚ), (504789171/10000000000 : ℚ), (-859634119/25000000000 : ℚ), 2⟩,
    ⟨(88252698293/200000000000 : ℚ), (-265720653/10000000000 : ℚ), (-714281391/1000000000000 : ℚ), 2⟩,
    ⟨(17971774957/40000000000 : ℚ), (-454201059/5000000000 : ℚ), (13948513471/500000000000 : ℚ), 2⟩,
    ⟨(456960531431/1000000000000 : ℚ), (-723368067/5000000000 : ℚ), (26143092059/500000000000 : ℚ), 2⟩,
    ⟨(58023516837/125000000000 : ℚ), (-1898648931/10000000000 : ℚ), (73097161127/1000000000000 : ℚ), 2⟩,
    ⟨(117726894487/250000000000 : ℚ), (-569480903/2500000000 : ℚ), (5676752261/62500000000 : ℚ), 2⟩,
    ⟨(238527074639/500000000000 : ℚ), (-648802367/2500000000 : ℚ), (21173085803/200000000000 : ℚ), 2⟩,
    ⟨(482568653841/1000000000000 : ℚ), (-285875301/1000000000 : ℚ), (23701937487/200000000000 : ℚ), 2⟩,
    ⟨(243698991973/500000000000 : ℚ), (-3074933051/10000000000 : ℚ), (128993538767/1000000000000 : ℚ), 2⟩,
    ⟨(491495630503/1000000000000 : ℚ), (-1624327599/5000000000 : ℚ), (137496023359/1000000000000 : ℚ), 2⟩,
    ⟨(61852766367/125000000000 : ℚ), (-3383643459/10000000000 : ℚ), (5766117793/40000000000 : ℚ), 2⟩,
    ⟨(497345449227/1000000000000 : ℚ), (-3482654771/10000000000 : ℚ), (149064675959/1000000000000 : ℚ), 2⟩,
    ⟨(499041284441/1000000000000 : ℚ), (-3547634059/10000000000 : ℚ), (152301883609/1000000000000 : ℚ), 2⟩,
    ⟨(499893304759/1000000000000 : ℚ), (-894955447/2500000000 : ℚ), (19238694151/125000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-179191563/500000000 : ℚ), (154110005419/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (138879482803/500000000000 : ℚ)
  μ := (1/2 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control360.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control360.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate360

-- Control361
namespace DiagonalRamsey.JointInheritedCertificate361
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(108078856889/500000000000 : ℚ), (12694634230521/10000000000 : ℚ), (-274993418221943/1000000000000 : ℚ), 12⟩,
    ⟨(108400906289/500000000000 : ℚ), (276990554431/2000000000 : ℚ), (-15195939864701/500000000000 : ℚ), 9⟩,
    ⟨(54520951789/250000000000 : ℚ), (484150615097/10000000000 : ℚ), (-10823582163859/1000000000000 : ℚ), 7⟩,
    ⟨(109995675601/500000000000 : ℚ), (47553858641/2000000000 : ℚ), (-84876465857/15625000000 : ℚ), 6⟩,
    ⟨(27813259253/125000000000 : ℚ), (137381617031/10000000000 : ℚ), (-1606561344651/500000000000 : ℚ), 5⟩,
    ⟨(225603757467/1000000000000 : ℚ), (43595608227/5000000000 : ℚ), (-2089612813703/1000000000000 : ℚ), 5⟩,
    ⟨(229254569147/1000000000000 : ℚ), (29370532817/5000000000 : ℚ), (-180393245533/125000000000 : ℚ), 4⟩,
    ⟨(933693399/4000000000 : ℚ), (41181028879/10000000000 : ℚ), (-518629211953/500000000000 : ℚ), 4⟩,
    ⟨(238069951641/1000000000000 : ℚ), (14826453867/5000000000 : ℚ), (-95713263387/125000000000 : ℚ), 4⟩,
    ⟨(7598425797/31250000000 : ℚ), (10860667007/5000000000 : ℚ), (-11500201169/20000000000 : ℚ), 4⟩,
    ⟨(124306725651/500000000000 : ℚ), (3211717913/2000000000 : ℚ), (-87174596357/200000000000 : ℚ), 3⟩,
    ⟨(127204404703/500000000000 : ℚ), (11892331919/10000000000 : ℚ), (-8278910811/25000000000 : ℚ), 3⟩,
    ⟨(260479887349/1000000000000 : ℚ), (8749518379/10000000000 : ℚ), (-250295883037/1000000000000 : ℚ), 3⟩,
    ⟨(266768217333/1000000000000 : ℚ), (6328032999/10000000000 : ℚ), (-186495292967/1000000000000 : ℚ), 3⟩,
    ⟨(273213239301/1000000000000 : ℚ), (2214067933/5000000000 : ℚ), (-135225696259/1000000000000 : ℚ), 3⟩,
    ⟨(279752884169/1000000000000 : ℚ), (582778893/2000000000 : ℚ), (-46689196029/500000000000 : ℚ), 3⟩,
    ⟨(286324171583/1000000000000 : ℚ), (211313687/1250000000 : ℚ), (-11753148629/200000000000 : ℚ), 3⟩,
    ⟨(292863816451/1000000000000 : ℚ), (172619113/2500000000 : ℚ), (-29815548147/1000000000000 : ℚ), 3⟩,
    ⟨(299308838419/1000000000000 : ℚ), (-67568537/5000000000 : ℚ), (-2688845653/500000000000 : ℚ), 2⟩,
    ⟨(305597168403/1000000000000 : ℚ), (-411172931/5000000000 : ℚ), (962608779/62500000000 : ℚ), 2⟩,
    ⟨(155834123173/500000000000 : ℚ), (-1398003739/10000000000 : ℚ), (16582264383/500000000000 : ℚ), 2⟩,
    ⟨(6349272089/20000000000 : ℚ), (-941176989/5000000000 : ℚ), (12099440511/250000000000 : ℚ), 2⟩,
    ⟨(40365928781/125000000000 : ℚ), (-2290794201/10000000000 : ℚ), (61473891989/1000000000000 : ℚ), 2⟩,
    ⟨(328007104111/1000000000000 : ℚ), (-658779631/2500000000 : ℚ), (14535838321/200000000000 : ℚ), 2⟩,
    ⟨(166326853001/500000000000 : ℚ), (-1462202407/5000000000 : ℚ), (16446862751/200000000000 : ℚ), 2⟩,
    ⟨(67364497321/200000000000 : ℚ), (-126626261/400000000 : ℚ), (18061872757/200000000000 : ℚ), 2⟩,
    ⟨(85118324571/250000000000 : ℚ), (-3364271723/10000000000 : ℚ), (97035085087/1000000000000 : ℚ), 2⟩,
    ⟨(10736593179/31250000000 : ℚ), (-3524388213/10000000000 : ℚ), (102511233313/1000000000000 : ℚ), 2⟩,
    ⟨(6921714091/20000000000 : ℚ), (-729827609/2000000000 : ℚ), (106812866447/1000000000000 : ℚ), 2⟩,
    ⟨(86998312149/250000000000 : ℚ), (-3740834241/10000000000 : ℚ), (109995047387/1000000000000 : ℚ), 2⟩,
    ⟨(174637621587/500000000000 : ℚ), (-1900552693/5000000000 : ℚ), (112096294523/1000000000000 : ℚ), 2⟩,
    ⟨(174959670987/500000000000 : ℚ), (-3830988721/10000000000 : ℚ), (113141006411/1000000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-76694249/200000000 : ℚ), (56635660947/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (357308532381/1000000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control361.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control361.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate361

-- Control362
namespace DiagonalRamsey.JointInheritedCertificate362
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(118313301397/500000000000 : ℚ), (2594744763777/2000000000 : ℚ), (-307638808802347/1000000000000 : ℚ), 12⟩,
    ⟨(237316568841/1000000000000 : ℚ), (1415795112927/10000000000 : ℚ), (-17000359240573/500000000000 : ℚ), 9⟩,
    ⟨(119344928093/500000000000 : ℚ), (247567395649/5000000000 : ℚ), (-12109505065203/1000000000000 : ℚ), 7⟩,
    ⟨(240733239319/1000000000000 : ℚ), (15205272249/625000000 : ℚ), (-607803993221/100000000000 : ℚ), 6⟩,
    ⟨(48685407869/200000000000 : ℚ), (14064822867/1000000000 : ℚ), (-3595715231439/1000000000000 : ℚ), 5⟩,
    ⟨(30843164187/125000000000 : ℚ), (89321963023/10000000000 : ℚ), (-584727047137/250000000000 : ℚ), 5⟩,
    ⟨(250656104979/1000000000000 : ℚ), (60220829871/10000000000 : ℚ), (-807894034641/500000000000 : ℚ), 4⟩,
    ⟨(127560875367/500000000000 : ℚ), (42254630741/10000000000 : ℚ), (-580910111879/500000000000 : ℚ), 4⟩,
    ⟨(260099244151/1000000000000 : ℚ), (6091451863/2000000000 : ℚ), (-85814783293/100000000000 : ℚ), 4⟩,
    ⟨(8298145289/31250000000 : ℚ), (5584746829/2500000000 : ℚ), (-128988558843/200000000000 : ℚ), 4⟩,
    ⟨(135696781159/500000000000 : ℚ), (4135569151/2500000000 : ℚ), (-489429105743/1000000000000 : ℚ), 3⟩,
    ⟨(27760161661/100000000000 : ℚ), (3069326113/2500000000 : ℚ), (-186216414239/500000000000 : ℚ), 3⟩,
    ⟨(142052512583/500000000000 : ℚ), (9060220811/10000000000 : ℚ), (-881669263/3125000000 : ℚ), 3⟩,
    ⟨(284024567/976562500 : ℚ), (6581929091/10000000000 : ℚ), (-26366124367/125000000000 : ℚ), 3⟩,
    ⟨(297745138307/1000000000000 : ℚ), (579751553/1250000000 : ℚ), (-76874622933/500000000000 : ℚ), 3⟩,
    ⟨(152375240573/500000000000 : ℚ), (1544653061/5000000000 : ℚ), (-21423112391/200000000000 : ℚ), 3⟩,
    ⟨(311789719843/1000000000000 : ℚ), (919358591/5000000000 : ℚ), (-68578861879/1000000000000 : ℚ), 3⟩,
    ⟨(159397531341/500000000000 : ℚ), (408537933/5000000000 : ℚ), (-142103313/3906250000 : ℚ), 3⟩,
    ⟨(325699044381/1000000000000 : ℚ), (-25783101/10000000000 : ℚ), (-9225728603/1000000000000 : ℚ), 2⟩,
    ⟨(332435175823/1000000000000 : ℚ), (-4542517/62500000 : ℚ), (1383658423/100000000000 : ℚ), 2⟩,
    ⟨(338938584379/1000000000000 : ℚ), (-1313545647/10000000000 : ℚ), (1341139731/40000000000 : ℚ), 2⟩,
    ⟨(345146638671/1000000000000 : ℚ), (-1806802847/10000000000 : ℚ), (25198471207/500000000000 : ℚ), 2⟩,
    ⟨(350999551741/1000000000000 : ℚ), (-1111199541/5000000000 : ℚ), (32430297161/500000000000 : ℚ), 2⟩,
    ⟨(178220478419/500000000000 : ℚ), (-128623193/500000000 : ℚ), (77241633037/1000000000000 : ℚ), 2⟩,
    ⟨(72283690051/200000000000 : ℚ), (-286633949/1000000000 : ℚ), (87788731457/1000000000000 : ℚ), 2⟩,
    ⟨(36588409601/100000000000 : ℚ), (-311123813/1000000000 : ℚ), (48346941093/500000000000 : ℚ), 2⟩,
    ⟨(369794887493/1000000000000 : ℚ), (-828180529/2500000000 : ℚ), (416419539/4000000000 : ℚ), 2⟩,
    ⟨(93278290411/250000000000 : ℚ), (-3475057547/10000000000 : ℚ), (110134690701/1000000000000 : ℚ), 2⟩,
    ⟨(37580696167/100000000000 : ℚ), (-720295031/2000000000 : ℚ), (57434210623/500000000000 : ℚ), 2⟩,
    ⟨(377850344803/1000000000000 : ℚ), (-3694361813/10000000000 : ℚ), (118368613803/1000000000000 : ℚ), 2⟩,
    ⟨(379223632147/1000000000000 : ℚ), (-46942483/125000000 : ℚ), (1508488387/12500000000 : ℚ), 2⟩,
    ⟨(75982719639/200000000000 : ℚ), (-3785656583/10000000000 : ℚ), (121827565933/1000000000000 : ℚ), 2⟩,
    ⟨(19/50 : ℚ), (-3789426757/10000000000 : ℚ), (121970816283/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (19/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (11/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (524999/1000000 : ℚ)
  x := (341836975833/1000000000000 : ℚ)
  μ := (19/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (11/20 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (19/50 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control362.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control362.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate362
