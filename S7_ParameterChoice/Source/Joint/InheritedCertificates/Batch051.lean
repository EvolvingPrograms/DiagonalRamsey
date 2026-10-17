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

-- Control438
namespace DiagonalRamsey.JointInheritedCertificate438
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(28368864557/100000000000 : ℚ), (12704320665629/10000000000 : ℚ), (-72228703138923/200000000000 : ℚ), 12⟩,
    ⟨(71122249397/250000000000 : ℚ), (1387046928017/10000000000 : ℚ), (-39918622513791/1000000000000 : ℚ), 9⟩,
    ⟨(286081993797/1000000000000 : ℚ), (60679120469/1250000000 : ℚ), (-14220508292009/1000000000000 : ℚ), 7⟩,
    ⟨(288452292773/1000000000000 : ℚ), (238739138651/10000000000 : ℚ), (-1428051729013/200000000000 : ℚ), 6⟩,
    ⟨(7289426681/25000000000 : ℚ), (138176475243/10000000000 : ℚ), (-1056599528481/250000000000 : ℚ), 6⟩,
    ⟨(36928277989/125000000000 : ℚ), (87871304173/10000000000 : ℚ), (-1375607938453/500000000000 : ℚ), 5⟩,
    ⟨(299962693307/1000000000000 : ℚ), (29670016531/5000000000 : ℚ), (-1902568633589/1000000000000 : ℚ), 5⟩,
    ⟨(38142848343/125000000000 : ℚ), (41720615987/10000000000 : ℚ), (-85619845223/62500000000 : ℚ), 4⟩,
    ⟨(77729154273/250000000000 : ℚ), (30148495831/10000000000 : ℚ), (-506867582361/500000000000 : ℚ), 4⟩,
    ⟨(39653572401/125000000000 : ℚ), (4436891213/2000000000 : ℚ), (-95473476649/125000000000 : ℚ), 4⟩,
    ⟨(162008942723/500000000000 : ℚ), (3299643693/2000000000 : ℚ), (-290798910161/500000000000 : ℚ), 3⟩,
    ⟨(331219151077/1000000000000 : ℚ), (3078902201/2500000000 : ℚ), (-222327268441/500000000000 : ℚ), 3⟩,
    ⟨(13550520959/40000000000 : ℚ), (2290549489/2500000000 : ℚ), (-33907983089/100000000000 : ℚ), 3⟩,
    ⟨(8664421313/25000000000 : ℚ), (1346954913/2000000000 : ℚ), (-63985958667/250000000000 : ℚ), 3⟩,
    ⟨(354585385273/1000000000000 : ℚ), (4832704849/10000000000 : ℚ), (-94646614123/500000000000 : ℚ), 3⟩,
    ⟨(90677873921/250000000000 : ℚ), (3319309307/10000000000 : ℚ), (-5401568253/40000000000 : ℚ), 3⟩,
    ⟨(92719231217/250000000000 : ℚ), (2099153591/10000000000 : ℚ), (-22575491253/250000000000 : ℚ), 3⟩,
    ⟨(4737537941/12500000000 : ℚ), (1104186807/10000000000 : ℚ), (-424075357/8000000000 : ℚ), 3⟩,
    ⟨(12094111501/31250000000 : ℚ), (285002743/10000000000 : ℚ), (-4328678057/200000000000 : ℚ), 3⟩,
    ⟨(197412698289/500000000000 : ℚ), (-394826121/10000000000 : ℚ), (4925597083/1000000000000 : ℚ), 2⟩,
    ⟨(16094770779/40000000000 : ℚ), (-192502753/2000000000 : ℚ), (27548586189/1000000000000 : ℚ), 2⟩,
    ⟨(204785267553/500000000000 : ℚ), (-1438617477/10000000000 : ℚ), (23436740979/500000000000 : ℚ), 2⟩,
    ⟨(6505622521/15625000000 : ℚ), (-1838807817/10000000000 : ℚ), (31698755917/500000000000 : ℚ), 2⟩,
    ⟨(21133590173/50000000000 : ℚ), (-2175114841/10000000000 : ℚ), (9688056849/125000000000 : ℚ), 2⟩,
    ⟨(26777852113/62500000000 : ℚ), (-1228409391/5000000000 : ℚ), (1398304737/15625000000 : ℚ), 2⟩,
    ⟨(86725145449/200000000000 : ℚ), (-2691094843/10000000000 : ℚ), (24897232541/250000000000 : ℚ), 2⟩,
    ⟨(2738513729/6250000000 : ℚ), (-2883484859/10000000000 : ℚ), (107974667863/1000000000000 : ℚ), 2⟩,
    ⟨(13812854791/31250000000 : ℚ), (-3038244803/10000000000 : ℚ), (114785209889/1000000000000 : ℚ), 2⟩,
    ⟨(22256806389/50000000000 : ℚ), (-3158601457/10000000000 : ℚ), (24024759281/200000000000 : ℚ), 2⟩,
    ⟨(89501285351/200000000000 : ℚ), (-1623470531/5000000000 : ℚ), (1938539563/15625000000 : ℚ), 2⟩,
    ⟨(112274855741/250000000000 : ℚ), (-3304945557/10000000000 : ℚ), (126666876251/1000000000000 : ℚ), 2⟩,
    ⟨(224949887491/500000000000 : ℚ), (-666737397/2000000000 : ℚ), (15994850067/125000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-417158447/1250000000 : ℚ), (64059954593/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (167627560001/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control438.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control438.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate438

-- Control439
namespace DiagonalRamsey.JointInheritedCertificate439
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(72731066713/250000000000 : ℚ), (12815643206531/10000000000 : ℚ), (-93398458891087/250000000000 : ℚ), 12⟩,
    ⟨(36467240261/125000000000 : ℚ), (349837995449/2500000000 : ℚ), (-41295278453889/1000000000000 : ℚ), 9⟩,
    ⟨(146678698307/500000000000 : ℚ), (244908592829/5000000000 : ℚ), (-14711278502537/1000000000000 : ℚ), 7⟩,
    ⟨(147883547003/500000000000 : ℚ), (240941799811/10000000000 : ℚ), (-3693483808793/500000000000 : ℚ), 6⟩,
    ⟨(298943807561/1000000000000 : ℚ), (139482155843/10000000000 : ℚ), (-4372680822677/1000000000000 : ℚ), 6⟩,
    ⟨(30285694379/100000000000 : ℚ), (88723747483/10000000000 : ℚ), (-569334828077/200000000000 : ℚ), 5⟩,
    ⟨(153734408527/500000000000 : ℚ), (1498315423/250000000 : ℚ), (-1968806936963/1000000000000 : ℚ), 5⟩,
    ⟨(312735012489/1000000000000 : ℚ), (42150970001/10000000000 : ℚ), (-1417834919013/1000000000000 : ℚ), 4⟩,
    ⟨(318604813757/1000000000000 : ℚ), (15235606849/5000000000 : ℚ), (-524710272239/500000000000 : ℚ), 4⟩,
    ⟨(325021691463/1000000000000 : ℚ), (11216227003/5000000000 : ℚ), (-39545431583/50000000000 : ℚ), 4⟩,
    ⟨(66384769513/200000000000 : ℚ), (4173130823/2500000000 : ℚ), (-602494768741/1000000000000 : ℚ), 3⟩,
    ⟨(339244810527/1000000000000 : ℚ), (12470279527/10000000000 : ℚ), (-36871353/80000000 : ℚ), 3⟩,
    ⟨(13876563019/40000000000 : ℚ), (928698699/1000000000 : ℚ), (-351743061363/1000000000000 : ℚ), 3⟩,
    ⟨(70971556639/200000000000 : ℚ), (3418326801/5000000000 : ℚ), (-53161998577/200000000000 : ℚ), 3⟩,
    ⟨(181499715719/500000000000 : ℚ), (4916783211/10000000000 : ℚ), (-196933577791/1000000000000 : ℚ), 3⟩,
    ⟨(371260611681/1000000000000 : ℚ), (42367621/125000000 : ℚ), (-35220853503/250000000000 : ℚ), 3⟩,
    ⟨(379561764243/1000000000000 : ℚ), (539546453/2500000000 : ℚ), (-94679720871/1000000000000 : ℚ), 3⟩,
    ⟨(193911472243/500000000000 : ℚ), (57719901/500000000 : ℚ), (-438892421/7812500000 : ℚ), 3⟩,
    ⟨(395964592729/1000000000000 : ℚ), (164074677/5000000000 : ℚ), (-23807628883/1000000000000 : ℚ), 3⟩,
    ⟨(12622134389/31250000000 : ℚ), (-178678689/5000000000 : ℚ), (3601321347/1000000000000 : ℚ), 2⟩,
    ⟨(102894391349/250000000000 : ℚ), (-464809363/5000000000 : ℚ), (26929851997/1000000000000 : ℚ), 2⟩,
    ⟨(418898528359/1000000000000 : ℚ), (-140941063/1000000000 : ℚ), (46849060953/1000000000000 : ℚ), 2⟩,
    ⟨(425800684461/1000000000000 : ℚ), (-1812574493/10000000000 : ℚ), (31937083289/500000000000 : ℚ), 2⟩,
    ⟨(216108781083/500000000000 : ℚ), (-2151274843/10000000000 : ℚ), (78403006391/1000000000000 : ℚ), 2⟩,
    ⟨(219043681717/500000000000 : ℚ), (-304362279/1250000000 : ℚ), (5671488089/62500000000 : ℚ), 2⟩,
    ⟨(44335355887/100000000000 : ℚ), (-2670704033/10000000000 : ℚ), (6320970447/62500000000 : ℚ), 2⟩,
    ⟨(447965432133/1000000000000 : ℚ), (-2864300549/10000000000 : ℚ), (10976290119/100000000000 : ℚ), 2⟩,
    ⟨(225939284181/500000000000 : ℚ), (-3019995831/10000000000 : ℚ), (11676772951/100000000000 : ℚ), 2⟩,
    ⟨(455055281917/1000000000000 : ℚ), (-3141056849/10000000000 : ℚ), (122257324489/1000000000000 : ℚ), 2⟩,
    ⟨(457464979309/1000000000000 : ℚ), (-1614949999/5000000000 : ℚ), (15788854113/125000000000 : ℚ), 2⟩,
    ⟨(114771113459/250000000000 : ℚ), (-3288228723/10000000000 : ℚ), (128983876259/1000000000000 : ℚ), 2⟩,
    ⟨(459898109071/1000000000000 : ℚ), (-1658564443/5000000000 : ℚ), (65155905863/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-1660364581/5000000000 : ℚ), (65238703039/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (329859803331/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control439.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control439.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate439

-- Control440
namespace DiagonalRamsey.JointInheritedCertificate440
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(149093218331/500000000000 : ℚ), (807908716007/625000000 : ℚ), (-386226909978547/1000000000000 : ℚ), 12⟩,
    ⟨(149506633677/500000000000 : ℚ), (1411609058121/10000000000 : ℚ), (-21346046003949/500000000000 : ℚ), 9⟩,
    ⟨(60131793181/200000000000 : ℚ), (494183693347/10000000000 : ℚ), (-475287473693/31250000000 : ℚ), 7⟩,
    ⟨(15155384167/50000000000 : ℚ), (60783770313/2500000000 : ℚ), (-7637244134847/1000000000000 : ℚ), 6⟩,
    ⟨(30633583717/100000000000 : ℚ), (140781882967/10000000000 : ℚ), (-2260528710643/500000000000 : ℚ), 6⟩,
    ⟨(31031233851/100000000000 : ℚ), (3582878723/400000000 : ℚ), (-1471740584777/500000000000 : ℚ), 5⟩,
    ⟨(157499445739/500000000000 : ℚ), (60521970241/10000000000 : ℚ), (-508991579861/250000000000 : ℚ), 5⟩,
    ⟨(320350362007/1000000000000 : ℚ), (21289356561/5000000000 : ℚ), (-36660148671/25000000000 : ℚ), 4⟩,
    ⟨(32631521251/100000000000 : ℚ), (30791732457/10000000000 : ℚ), (-1085581713383/1000000000000 : ℚ), 4⟩,
    ⟨(41604499777/125000000000 : ℚ), (22678539787/10000000000 : ℚ), (-409190717403/500000000000 : ℚ), 4⟩,
    ⟨(67969984079/200000000000 : ℚ), (1055320229/625000000 : ℚ), (-623654442991/1000000000000 : ℚ), 3⟩,
    ⟨(347289431141/1000000000000 : ℚ), (6311700509/5000000000 : ℚ), (-47732588741/100000000000 : ℚ), 3⟩,
    ⟨(3550828839/10000000000 : ℚ), (941034607/1000000000 : ℚ), (-364552849409/1000000000000 : ℚ), 3⟩,
    ⟨(18157761173/50000000000 : ℚ), (1734299171/2500000000 : ℚ), (-275784206659/1000000000000 : ℚ), 3⟩,
    ⟨(371428708779/1000000000000 : ℚ), (999920287/2000000000 : ℚ), (-40930395659/200000000000 : ℚ), 3⟩,
    ⟨(379823661671/1000000000000 : ℚ), (1729156201/5000000000 : ℚ), (-73391032063/500000000000 : ℚ), 3⟩,
    ⟨(7765184683/20000000000 : ℚ), (138504557/625000000 : ℚ), (-12386651749/125000000000 : ℚ), 3⟩,
    ⟨(198327093521/500000000000 : ℚ), (1203509057/10000000000 : ℚ), (-59367888751/1000000000000 : ℚ), 3⟩,
    ⟨(202463836181/500000000000 : ℚ), (370234831/10000000000 : ℚ), (-1299041759/50000000000 : ℚ), 3⟩,
    ⟨(206500005961/500000000000 : ℚ), (-320915447/10000000000 : ℚ), (2277565651/1000000000000 : ℚ), 2⟩,
    ⟨(10519836617/25000000000 : ℚ), (-112215009/1250000000 : ℚ), (328990099/12500000000 : ℚ), 2⟩,
    ⟨(428232975427/1000000000000 : ℚ), (-1381173057/10000000000 : ℚ), (46838754947/1000000000000 : ℚ), 2⟩,
    ⟨(217623448803/500000000000 : ℚ), (-446821567/2500000000 : ℚ), (8046214159/125000000000 : ℚ), 2⟩,
    ⟨(27610480207/62500000000 : ℚ), (-425671691/2000000000 : ℚ), (39662108761/500000000000 : ℚ), 2⟩,
    ⟨(89546506763/200000000000 : ℚ), (-241388233/1000000000 : ℚ), (92021726011/1000000000000 : ℚ), 2⟩,
    ⟨(56635500543/125000000000 : ℚ), (-662800337/2500000000 : ℚ), (5135501253/50000000000 : ℚ), 2⟩,
    ⟨(3576332479/7812500000 : ℚ), (-711497557/2500000000 : ℚ), (111580791827/1000000000000 : ℚ), 2⟩,
    ⟨(115436764663/250000000000 : ℚ), (-1501304539/5000000000 : ℚ), (29695307483/250000000000 : ℚ), 2⟩,
    ⟨(232487606241/500000000000 : ℚ), (-3124365043/10000000000 : ℚ), (124422803103/1000000000000 : ℚ), 2⟩,
    ⟨(467423929917/1000000000000 : ℚ), (-128548187/400000000 : ℚ), (128587761359/1000000000000 : ℚ), 2⟩,
    ⟨(117267407117/250000000000 : ℚ), (-81808823/250000000 : ℚ), (131333931489/1000000000000 : ℚ), 2⟩,
    ⟨(469896459159/1000000000000 : ℚ), (-412676183/1250000000 : ℚ), (1326980851/10000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-3305029131/10000000000 : ℚ), (33217047681/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (40555758291/125000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control440.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control440.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate440

-- Control441
namespace DiagonalRamsey.JointInheritedCertificate441
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(305544984659/1000000000000 : ℚ), (1630663081369/1250000000 : ℚ), (-19969374678969/50000000000 : ℚ), 12⟩,
    ⟨(306384526999/1000000000000 : ℚ), (712368858853/5000000000 : ℚ), (-44147360577317/1000000000000 : ℚ), 9⟩,
    ⟨(154027763213/500000000000 : ℚ), (498862009381/10000000000 : ℚ), (-7864025548961/500000000000 : ℚ), 7⟩,
    ⟨(1213054259/3906250000 : ℚ), (12274298643/500000000 : ℚ), (-3949057385379/500000000000 : ℚ), 6⟩,
    ⟨(313819673589/1000000000000 : ℚ), (4442993519/312500000 : ℚ), (-2337887649067/500000000000 : ℚ), 6⟩,
    ⟨(63571461887/200000000000 : ℚ), (45241147091/5000000000 : ℚ), (-608895584477/200000000000 : ℚ), 5⟩,
    ⟨(80653978301/250000000000 : ℚ), (61155010589/10000000000 : ℚ), (-131629952943/62500000000 : ℚ), 5⟩,
    ⟨(164024828469/500000000000 : ℚ), (4303861797/1000000000 : ℚ), (-1517156258299/1000000000000 : ℚ), 4⟩,
    ⟨(66821242143/200000000000 : ℚ), (31136740613/10000000000 : ℚ), (-280851517543/250000000000 : ℚ), 4⟩,
    ⟨(85181811653/250000000000 : ℚ), (5735941197/2500000000 : ℚ), (-847156923371/1000000000000 : ℚ), 4⟩,
    ⟨(173924500217/500000000000 : ℚ), (3418599223/2000000000 : ℚ), (-322927843303/500000000000 : ℚ), 3⟩,
    ⟨(355402885797/1000000000000 : ℚ), (6394459559/5000000000 : ℚ), (-494606803723/1000000000000 : ℚ), 3⟩,
    ⟨(181658077329/500000000000 : ℚ), (1908782921/2000000000 : ℚ), (-378061139869/1000000000000 : ℚ), 3⟩,
    ⟨(37151259791/100000000000 : ℚ), (704625479/1000000000 : ℚ), (-143170796357/500000000000 : ℚ), 3⟩,
    ⟨(94978319831/250000000000 : ℚ), (1272400551/2500000000 : ℚ), (-212862589573/1000000000000 : ℚ), 3⟩,
    ⟨(388437295747/1000000000000 : ℚ), (141333479/400000000 : ℚ), (-76550154033/500000000000 : ℚ), 3⟩,
    ⟨(4962531953/12500000000 : ℚ), (1139614559/5000000000 : ℚ), (-51933881849/500000000000 : ℚ), 3⟩,
    ⟨(405526572663/1000000000000 : ℚ), (1257198167/10000000000 : ℚ), (-62871055927/1000000000000 : ℚ), 3⟩,
    ⟨(206963627039/500000000000 : ℚ), (416334883/10000000000 : ℚ), (-14214351333/500000000000 : ℚ), 3⟩,
    ⟨(42212369733/100000000000 : ℚ), (-280920601/10000000000 : ℚ), (711018807/1000000000000 : ℚ), 2⟩,
    ⟨(43003696619/100000000000 : ℚ), (-17252959/200000000 : ℚ), (25491986951/1000000000000 : ℚ), 2⟩,
    ⟨(218795425777/500000000000 : ℚ), (-270014887/2000000000 : ℚ), (46633457641/1000000000000 : ℚ), 2⟩,
    ⟨(3557700843/8000000000 : ℚ), (-1759394267/10000000000 : ℚ), (16172008507/250000000000 : ℚ), 2⟩,
    ⟨(56416705159/125000000000 : ℚ), (-2103049789/10000000000 : ℚ), (16016557927/200000000000 : ℚ), 2⟩,
    ⟨(9147803901/20000000000 : ℚ), (-597661831/2500000000 : ℚ), (93148926473/1000000000000 : ℚ), 2⟩,
    ⟨(14463248087/31250000000 : ℚ), (-1314810169/5000000000 : ℚ), (104143478257/1000000000000 : ℚ), 2⟩,
    ⟨(58447817819/125000000000 : ℚ), (-1412857341/5000000000 : ℚ), (22653077699/200000000000 : ℚ), 2⟩,
    ⟨(235810089199/500000000000 : ℚ), (-745836563/2500000000 : ℚ), (120667530367/1000000000000 : ℚ), 2⟩,
    ⟨(474897961683/1000000000000 : ℚ), (-310586527/1000000000 : ℚ), (2529314513/20000000000 : ℚ), 2⟩,
    ⟨(477384325561/1000000000000 : ℚ), (-3195750641/10000000000 : ℚ), (16343185627/125000000000 : ℚ), 2⟩,
    ⟨(479055324989/1000000000000 : ℚ), (-3254750397/10000000000 : ℚ), (133566954877/1000000000000 : ℚ), 2⟩,
    ⟨(3749178651/7812500000 : ℚ), (-1641989533/5000000000 : ℚ), (134968394861/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-3287620079/10000000000 : ℚ), (67571572157/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (318976129971/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control441.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control441.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate441

-- Control442
namespace DiagonalRamsey.JointInheritedCertificate442
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(320409515577/1000000000000 : ℚ), (6644709190147/5000000000 : ℚ), (-17065609233893/40000000000 : ℚ), 12⟩,
    ⟨(321273771701/1000000000000 : ℚ), (45366326711/312500000 : ℚ), (-9432181969303/200000000000 : ℚ), 9⟩,
    ⟨(80748490173/250000000000 : ℚ), (254238801863/5000000000 : ℚ), (-840124231951/50000000000 : ℚ), 7⟩,
    ⟨(81388379047/250000000000 : ℚ), (10012706821/400000000 : ℚ), (-8438326767053/1000000000000 : ℚ), 6⟩,
    ⟨(32892778827/100000000000 : ℚ), (145040438337/10000000000 : ℚ), (-312260666587/62500000000 : ℚ), 6⟩,
    ⟨(66616856171/200000000000 : ℚ), (2886028731/312500000 : ℚ), (-3253631978163/1000000000000 : ℚ), 5⟩,
    ⟨(168991482323/500000000000 : ℚ), (12491128113/2000000000 : ℚ), (-2251283808223/1000000000000 : ℚ), 5⟩,
    ⟨(4294708283/12500000000 : ℚ), (2748957623/625000000 : ℚ), (-811134970131/500000000000 : ℚ), 4⟩,
    ⟨(87452876117/250000000000 : ℚ), (15922610733/5000000000 : ℚ), (-1201758465789/1000000000000 : ℚ), 4⟩,
    ⟨(89156861299/250000000000 : ℚ), (5872048589/2500000000 : ℚ), (-181355454323/200000000000 : ℚ), 4⟩,
    ⟨(363958843587/1000000000000 : ℚ), (700779149/400000000 : ℚ), (-86483624323/125000000000 : ℚ), 3⟩,
    ⟨(371735094267/1000000000000 : ℚ), (13128283563/10000000000 : ℚ), (-530438535449/1000000000000 : ℚ), 3⟩,
    ⟨(94970326923/250000000000 : ℚ), (4908774679/5000000000 : ℚ), (-203044224537/500000000000 : ℚ), 3⟩,
    ⟨(388319031373/1000000000000 : ℚ), (7269453573/10000000000 : ℚ), (-154133272137/500000000000 : ℚ), 3⟩,
    ⟨(198483502709/500000000000 : ℚ), (5273577331/10000000000 : ℚ), (-229936601111/1000000000000 : ℚ), 3⟩,
    ⟨(40574194511/100000000000 : ℚ), (3686481381/10000000000 : ℚ), (-166264684273/1000000000000 : ℚ), 3⟩,
    ⟨(414559342983/1000000000000 : ℚ), (481587111/2000000000 : ℚ), (-28461194507/250000000000 : ℚ), 3⟩,
    ⟨(16933371307/40000000000 : ℚ), (273281461/2000000000 : ℚ), (-2808990643/40000000000 : ℚ), 3⟩,
    ⟨(5399778209/12500000000 : ℚ), (254955987/5000000000 : ℚ), (-33606634639/1000000000000 : ℚ), 3⟩,
    ⟨(440419980401/1000000000000 : ℚ), (-99960319/5000000000 : ℚ), (-265137129/100000000000 : ℚ), 2⟩,
    ⟨(224283096913/500000000000 : ℚ), (-395894937/5000000000 : ℚ), (23651241749/1000000000000 : ℚ), 2⟩,
    ⟨(228171222253/500000000000 : ℚ), (-1287402799/10000000000 : ℚ), (230357489/5000000000 : ℚ), 2⟩,
    ⟨(463673842897/1000000000000 : ℚ), (-425832211/2500000000 : ℚ), (521613263/8000000000 : ℚ), 2⟩,
    ⟨(58811222953/125000000000 : ℚ), (-513076497/2500000000 : ℚ), (81499844547/1000000000000 : ℚ), 2⟩,
    ⟨(476724625453/1000000000000 : ℚ), (-2344174583/10000000000 : ℚ), (23830422169/250000000000 : ℚ), 2⟩,
    ⟨(482318323447/1000000000000 : ℚ), (-129327681/500000000 : ℚ), (53471739167/500000000000 : ℚ), 2⟩,
    ⟨(243608503619/500000000000 : ℚ), (-2785335663/10000000000 : ℚ), (23315860517/200000000000 : ℚ), 2⟩,
    ⟨(245686749911/500000000000 : ℚ), (-1472525863/5000000000 : ℚ), (24878772417/200000000000 : ℚ), 2⟩,
    ⟨(98949554381/200000000000 : ℚ), (-1534570489/5000000000 : ℚ), (13051207951/100000000000 : ℚ), 2⟩,
    ⟨(497307327401/1000000000000 : ℚ), (-790037289/2500000000 : ℚ), (33756570037/250000000000 : ℚ), 2⟩,
    ⟨(499027516391/1000000000000 : ℚ), (-402483999/1250000000 : ℚ), (34500365257/250000000000 : ℚ), 2⟩,
    ⟨(124972943129/250000000000 : ℚ), (-649890939/2000000000 : ℚ), (223166393/1600000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-1626569807/5000000000 : ℚ), (139663221617/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (30794572571/100000000000 : ℚ)
  μ := (1/2 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/2 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control442.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control442.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate442

-- Control443
namespace DiagonalRamsey.JointInheritedCertificate443
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(3985342193/10000000000 : ℚ), (29554542796879/5000000000 : ℚ), (-2356994000619947/1000000000000 : ℚ), 14⟩,
    ⟨(199388428553/500000000000 : ℚ), (6536445615759/10000000000 : ℚ), (-261559685959299/1000000000000 : ℚ), 11⟩,
    ⟨(199630774091/500000000000 : ℚ), (583609084249/2500000000 : ℚ), (-18784991312961/200000000000 : ℚ), 9⟩,
    ⟨(199993562433/500000000000 : ℚ), (1178492711583/10000000000 : ℚ), (-47739899156749/1000000000000 : ℚ), 8⟩,
    ⟨(200475919589/500000000000 : ℚ), (351900257553/5000000000 : ℚ), (-28733726497073/1000000000000 : ℚ), 7⟩,
    ⟨(402153367039/1000000000000 : ℚ), (46416115107/1000000000 : ℚ), (-19112858680441/1000000000000 : ℚ), 7⟩,
    ⟨(403588813861/1000000000000 : ℚ), (81696251769/2500000000 : ℚ), (-13579462900261/1000000000000 : ℚ), 6⟩,
    ⟨(405254721529/1000000000000 : ℚ), (15057844313/625000000 : ℚ), (-10107796489401/1000000000000 : ℚ), 6⟩,
    ⟨(101786769181/250000000000 : ℚ), (9189824951/500000000 : ℚ), (-3893829714579/500000000000 : ℚ), 6⟩,
    ⟨(409261320597/1000000000000 : ℚ), (143936301327/10000000000 : ℚ), (-1540214966631/250000000000 : ℚ), 5⟩,
    ⟨(1646369439/4000000000 : ℚ), (14383789147/1250000000 : ℚ), (-497634504019/100000000000 : ℚ), 5⟩,
    ⟨(82826915701/200000000000 : ℚ), (2922823619/312500000 : ℚ), (-408720347197/100000000000 : ℚ), 5⟩,
    ⟨(208440926217/500000000000 : ℚ), (9632043119/1250000000 : ℚ), (-3402819252067/1000000000000 : ℚ), 5⟩,
    ⟨(419827563113/1000000000000 : ℚ), (501520319/78125000 : ℚ), (-572967620511/200000000000 : ℚ), 4⟩,
    ⟨(105741153517/250000000000 : ℚ), (26987995409/5000000000 : ℚ), (-60857627137/25000000000 : ℚ), 4⟩,
    ⟨(426285447869/1000000000000 : ℚ), (11433624931/2500000000 : ℚ), (-1042205251767/500000000000 : ℚ), 4⟩,
    ⟨(85956412867/200000000000 : ℚ), (7800068991/2000000000 : ℚ), (-1796213988313/1000000000000 : ℚ), 4⟩,
    ⟨(108361509953/250000000000 : ℚ), (4179323619/1250000000 : ℚ), (-155602714887/100000000000 : ℚ), 4⟩,
    ⟨(437268547461/1000000000000 : ℚ), (2878781259/1000000000 : ℚ), (-676879152263/500000000000 : ℚ), 4⟩,
    ⟨(220620189263/500000000000 : ℚ), (994929651/400000000 : ℚ), (-590917691561/500000000000 : ℚ), 4⟩,
    ⟨(11133799113/25000000000 : ℚ), (21548825223/10000000000 : ℚ), (-1034487197461/1000000000000 : ℚ), 3⟩,
    ⟨(44959340027/100000000000 : ℚ), (149640169/80000000 : ℚ), (-907253031633/1000000000000 : ℚ), 3⟩,
    ⟨(113488616947/250000000000 : ℚ), (16256293467/10000000000 : ℚ), (-398320630207/500000000000 : ℚ), 3⟩,
    ⟨(229212330439/500000000000 : ℚ), (14135096169/10000000000 : ℚ), (-349943701883/500000000000 : ℚ), 3⟩,
    ⟨(92598642091/200000000000 : ℚ), (6143770469/5000000000 : ℚ), (-76847480149/125000000000 : ℚ), 3⟩,
    ⟨(467649110483/1000000000000 : ℚ), (10670233319/10000000000 : ℚ), (-539532396193/1000000000000 : ℚ), 3⟩,
    ⟨(47238114449/100000000000 : ℚ), (9247930333/10000000000 : ℚ), (-472689919549/1000000000000 : ℚ), 3⟩,
    ⟨(477177912591/1000000000000 : ℚ), (62435819/78125000 : ℚ), (-20652872683/50000000000 : ℚ), 3⟩,
    ⟨(241013929477/500000000000 : ℚ), (6878014597/10000000000 : ℚ), (-359646480087/1000000000000 : ℚ), 3⟩,
    ⟨(486919299631/1000000000000 : ℚ), (2943441399/5000000000 : ℚ), (-9738553083/31250000000 : ℚ), 3⟩,
    ⟨(245920225357/500000000000 : ℚ), (500190937/1000000000 : ℚ), (-26832910757/100000000000 : ℚ), 3⟩,
    ⟨(496779456719/1000000000000 : ℚ), (4209255497/10000000000 : ℚ), (-114575530533/500000000000 : ℚ), 3⟩,
    ⟨(125431104787/250000000000 : ℚ), (1748619587/5000000000 : ℚ), (-48401653729/250000000000 : ℚ), 3⟩,
    ⟨(506663425153/1000000000000 : ℚ), (571190189/2000000000 : ℚ), (-161275915853/1000000000000 : ℚ), 3⟩,
    ⟨(127896144059/250000000000 : ℚ), (2276946887/10000000000 : ℚ), (-26359942541/200000000000 : ℚ), 3⟩,
    ⟨(516476016913/1000000000000 : ℚ), (1753001619/10000000000 : ℚ), (-104869293993/1000000000000 : ℚ), 3⟩,
    ⟨(130331490819/250000000000 : ℚ), (25558167/200000000 : ℚ), (-80218330293/1000000000000 : ℚ), 3⟩,
    ⟨(263061365689/500000000000 : ℚ), (846316019/10000000000 : ℚ), (-57616218559/1000000000000 : ℚ), 2⟩,
    ⟨(66356845673/125000000000 : ℚ), (226797953/5000000000 : ℚ), (-18431310781/500000000000 : ℚ), 2⟩,
    ⟨(133877666353/250000000000 : ℚ), (95731801/10000000000 : ℚ), (-17782963449/1000000000000 : ℚ), 2⟩,
    ⟨(540079214989/1000000000000 : ℚ), (-230770883/10000000000 : ℚ), (-224694691/1000000000000 : ℚ), 2⟩,
    ⟨(544549408079/1000000000000 : ℚ), (-528960669/10000000000 : ℚ), (1594581933/100000000000 : ℚ), 2⟩,
    ⟨(548910475597/1000000000000 : ℚ), (-801503121/10000000000 : ℚ), (6169180689/200000000000 : ℚ), 2⟩,
    ⟨(553151911347/1000000000000 : ℚ), (-525366877/5000000000 : ℚ), (8915752373/200000000000 : ℚ), 2⟩,
    ⟨(557263497341/1000000000000 : ℚ), (-159837823/1250000000 : ℚ), (57235326927/1000000000000 : ℚ), 2⟩,
    ⟨(561235328407/1000000000000 : ℚ), (-743605883/5000000000 : ℚ), (68895825299/1000000000000 : ℚ), 2⟩,
    ⟨(70632229507/125000000000 : ℚ), (-167784751/1000000000 : ℚ), (39815555293/500000000000 : ℚ), 2⟩,
    ⟨(142180452883/250000000000 : ℚ), (-185200723/1000000000 : ℚ), (17900760207/200000000000 : ℚ), 2⟩,
    ⟨(286109213999/500000000000 : ℚ), (-2010922701/10000000000 : ℚ), (308028917/3125000000 : ℚ), 2⟩,
    ⟨(575539261799/1000000000000 : ℚ), (-2155679869/10000000000 : ℚ), (53438200011/500000000000 : ℚ), 2⟩,
    ⟨(289338156377/500000000000 : ℚ), (-2287235837/10000000000 : ℚ), (3577139673/31250000000 : ℚ), 2⟩,
    ⟨(290811011717/500000000000 : ℚ), (-1203216723/5000000000 : ℚ), (60691804343/500000000000 : ℚ), 2⟩,
    ⟨(292184648681/500000000000 : ℚ), (-251401383/1000000000 : ℚ), (25531084227/200000000000 : ℚ), 2⟩,
    ⟨(586911516117/1000000000000 : ℚ), (-652656803/2500000000 : ℚ), (6665671639/50000000000 : ℚ), 2⟩,
    ⟨(58924255527/100000000000 : ℚ), (-13484211/50000000 : ℚ), (138383495087/1000000000000 : ℚ), 2⟩,
    ⟨(591356799143/1000000000000 : ℚ), (-2773153783/10000000000 : ℚ), (142888134377/1000000000000 : ℚ), 2⟩,
    ⟨(296624577169/500000000000 : ℚ), (-2839990187/10000000000 : ℚ), (146846853021/1000000000000 : ℚ), 2⟩,
    ⟨(297457531003/500000000000 : ℚ), (-2897718731/10000000000 : ℚ), (30055277663/200000000000 : ℚ), 2⟩,
    ⟨(149087627207/250000000000 : ℚ), (-2946650799/10000000000 : ℚ), (76595466921/500000000000 : ℚ), 2⟩,
    ⟨(597552036689/1000000000000 : ℚ), (-23336297/78125000 : ℚ), (155602326407/1000000000000 : ℚ), 2⟩,
    ⟨(299258375501/500000000000 : ℚ), (-1509557851/5000000000 : ℚ), (1230626573/7812500000 : ℚ), 2⟩,
    ⟨(119848465537/200000000000 : ℚ), (-3043025673/10000000000 : ℚ), (158952119521/1000000000000 : ℚ), 2⟩,
    ⟨(599727018761/1000000000000 : ℚ), (-1529449211/5000000000 : ℚ), (7995183307/50000000000 : ℚ), 2⟩,
    ⟨(599969656567/1000000000000 : ℚ), (-3066814733/10000000000 : ℚ), (80189262363/500000000000 : ℚ), 2⟩,
    ⟨(3/5 : ℚ), (-1533901667/5000000000 : ℚ), (160437839293/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (250564311343/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control443.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control443.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate443

-- Control445
namespace DiagonalRamsey.JointInheritedCertificate445
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(49678454107/200000000000 : ℚ), (12201108773253/10000000000 : ℚ), (-303708839939311/1000000000000 : ℚ), 12⟩,
    ⟨(15570116453/62500000000 : ℚ), (1331431401603/10000000000 : ℚ), (-1342740758033/40000000000 : ℚ), 9⟩,
    ⟨(250574022297/1000000000000 : ℚ), (116405612937/2500000000 : ℚ), (-5978571534141/500000000000 : ℚ), 7⟩,
    ⟨(252734762597/1000000000000 : ℚ), (57197473889/2500000000 : ℚ), (-6002796728731/1000000000000 : ℚ), 6⟩,
    ⟨(255583275037/1000000000000 : ℚ), (4133801601/312500000 : ℚ), (-3552231896951/1000000000000 : ℚ), 6⟩,
    ⟨(129546063443/500000000000 : ℚ), (42012478687/5000000000 : ℚ), (-115576381053/50000000000 : ℚ), 5⟩,
    ⟨(131613762991/500000000000 : ℚ), (56667975677/10000000000 : ℚ), (-199712088011/125000000000 : ℚ), 5⟩,
    ⟨(26794964617/100000000000 : ℚ), (19890743441/5000000000 : ℚ), (-229917218503/200000000000 : ℚ), 4⟩,
    ⟨(136606505427/500000000000 : ℚ), (28695481109/10000000000 : ℚ), (-849858351001/1000000000000 : ℚ), 4⟩,
    ⟨(34870866369/125000000000 : ℚ), (10534370457/5000000000 : ℚ), (-159862525311/250000000000 : ℚ), 4⟩,
    ⟨(28515599307/100000000000 : ℚ), (15624741067/10000000000 : ℚ), (-486004117369/1000000000000 : ℚ), 3⟩,
    ⟨(72930148289/250000000000 : ℚ), (1452601533/1250000000 : ℚ), (-3705911943/10000000000 : ℚ), 3⟩,
    ⟨(298597510521/1000000000000 : ℚ), (8601999981/10000000000 : ℚ), (-140771040087/500000000000 : ℚ), 3⟩,
    ⟨(152860258347/500000000000 : ℚ), (6277669133/10000000000 : ℚ), (-105674566183/500000000000 : ℚ), 3⟩,
    ⟨(31302101323/100000000000 : ℚ), (1113902521/2500000000 : ℚ), (-31001631549/200000000000 : ℚ), 3⟩,
    ⟨(160214346179/500000000000 : ℚ), (3004964061/10000000000 : ℚ), (-54541606447/500000000000 : ℚ), 3⟩,
    ⟨(81968053519/250000000000 : ℚ), (1834426937/10000000000 : ℚ), (-71155316583/1000000000000 : ℚ), 3⟩,
    ⟨(83819973301/250000000000 : ℚ), (878946411/10000000000 : ℚ), (-2467809709/62500000000 : ℚ), 3⟩,
    ⟨(17129019487/50000000000 : ℚ), (45668379/5000000000 : ℚ), (-4095551/320000000 : ℚ), 3⟩,
    ⟨(349703395913/1000000000000 : ℚ), (-281578517/5000000000 : ℚ), (1970055837/200000000000 : ℚ), 3⟩,
    ⟨(178290156639/500000000000 : ℚ), (-1110470829/10000000000 : ℚ), (116695877/4000000000 : ℚ), 2⟩,
    ⟨(90786228341/250000000000 : ℚ), (-1570173361/10000000000 : ℚ), (22856958957/500000000000 : ℚ), 2⟩,
    ⟨(184666987741/500000000000 : ℚ), (-391432641/2000000000 : ℚ), (59884893429/1000000000000 : ℚ), 2⟩,
    ⟨(18754394779/50000000000 : ℚ), (-2282863273/10000000000 : ℚ), (36003177879/500000000000 : ℚ), 2⟩,
    ⟨(47543907533/125000000000 : ℚ), (-1278037111/5000000000 : ℚ), (82325104897/1000000000000 : ℚ), 2⟩,
    ⟨(385073380453/1000000000000 : ℚ), (-278359199/1000000000 : ℚ), (22757968913/250000000000 : ℚ), 2⟩,
    ⟨(97302194887/250000000000 : ℚ), (-1485329639/5000000000 : ℚ), (491368239/5000000000 : ℚ), 2⟩,
    ⟨(392717631397/1000000000000 : ℚ), (-78032449/250000000 : ℚ), (20832571747/200000000000 : ℚ), 2⟩,
    ⟨(395566143837/1000000000000 : ℚ), (-809638601/2500000000 : ℚ), (27196080817/250000000000 : ℚ), 2⟩,
    ⟨(397726884137/1000000000000 : ℚ), (-415584951/1250000000 : ℚ), (112200406959/1000000000000 : ℚ), 2⟩,
    ⟨(199589521593/500000000000 : ℚ), (-3381259167/10000000000 : ℚ), (114454823847/1000000000000 : ℚ), 2⟩,
    ⟨(399908635899/1000000000000 : ℚ), (-3409303249/10000000000 : ℚ), (115575306321/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-1706398687/5000000000 : ℚ), (115715055359/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (361687049337/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control445.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control445.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate445

-- Control446
namespace DiagonalRamsey.JointInheritedCertificate446
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(32793627457/125000000000 : ℚ), (12393226858087/10000000000 : ℚ), (-325814747931829/1000000000000 : ℚ), 12⟩,
    ⟨(263107694737/1000000000000 : ℚ), (169082919723/1250000000 : ℚ), (-36012505418651/1000000000000 : ℚ), 9⟩,
    ⟨(264617738443/1000000000000 : ℚ), (94636914703/2000000000 : ℚ), (-6414092532653/500000000000 : ℚ), 7⟩,
    ⟨(266864608229/1000000000000 : ℚ), (232587160101/10000000000 : ℚ), (-3220244081023/500000000000 : ℚ), 6⟩,
    ⟨(67456666377/250000000000 : ℚ), (8408190337/625000000 : ℚ), (-3811602851401/1000000000000 : ℚ), 6⟩,
    ⟨(68368846013/250000000000 : ℚ), (85492332251/10000000000 : ℚ), (-248064697531/100000000000 : ℚ), 5⟩,
    ⟨(55555124941/200000000000 : ℚ), (14421773197/2500000000 : ℚ), (-342984501197/200000000000 : ℚ), 5⟩,
    ⟨(282685973799/1000000000000 : ℚ), (10130214711/2500000000 : ℚ), (-1234268319283/1000000000000 : ℚ), 4⟩,
    ⟨(288159141989/1000000000000 : ℚ), (1828083963/625000000 : ℚ), (-228201579659/250000000000 : ℚ), 4⟩,
    ⟨(294142419673/1000000000000 : ℚ), (21493912667/10000000000 : ℚ), (-34358689639/50000000000 : ℚ), 4⟩,
    ⟨(60115636923/200000000000 : ℚ), (3191503529/2000000000 : ℚ), (-522657860569/1000000000000 : ℚ), 3⟩,
    ⟨(307404456881/1000000000000 : ℚ), (11885459401/10000000000 : ℚ), (-398950895299/1000000000000 : ℚ), 3⟩,
    ⟨(314555495739/1000000000000 : ℚ), (550959183/625000000 : ℚ), (-30353351731/100000000000 : ℚ), 3⟩,
    ⟨(321962432773/1000000000000 : ℚ), (1612935627/2500000000 : ℚ), (-228350739831/1000000000000 : ℚ), 3⟩,
    ⟨(329553935133/1000000000000 : ℚ), (4599219263/10000000000 : ℚ), (-6721324977/40000000000 : ℚ), 3⟩,
    ⟨(337256892499/1000000000000 : ℚ), (624939061/2000000000 : ℚ), (-3715422507/31250000000 : ℚ), 3⟩,
    ⟨(172498560591/500000000000 : ℚ), (193528897/1000000000 : ℚ), (-78335660153/1000000000000 : ℚ), 3⟩,
    ⟨(352700078549/1000000000000 : ℚ), (96480263/1000000000 : ℚ), (-44492115509/1000000000000 : ℚ), 3⟩,
    ⟨(90072895227/250000000000 : ℚ), (82601227/5000000000 : ℚ), (-7997643107/500000000000 : ℚ), 3⟩,
    ⟨(367698517943/1000000000000 : ℚ), (-12472633/250000000 : ℚ), (1021458059/125000000000 : ℚ), 3⟩,
    ⟨(234280973/625000000 : ℚ), (-1053944607/10000000000 : ℚ), (230194643/8000000000 : ℚ), 2⟩,
    ⟨(381675829067/1000000000000 : ℚ), (-151986153/1000000000 : ℚ), (46395023637/1000000000000 : ℚ), 2⟩,
    ⟨(388111594009/1000000000000 : ℚ), (-477962319/2500000000 : ℚ), (61480141047/1000000000000 : ℚ), 2⟩,
    ⟨(98523717923/250000000000 : ℚ), (-448312473/2000000000 : ℚ), (37186895169/500000000000 : ℚ), 2⟩,
    ⟨(199784019941/500000000000 : ℚ), (-157374019/625000000 : ℚ), (2133551551/25000000000 : ℚ), 2⟩,
    ⟨(404478388977/1000000000000 : ℚ), (-1374027777/5000000000 : ℚ), (47295404721/500000000000 : ℚ), 2⟩,
    ⟨(40877862963/100000000000 : ℚ), (-587426547/2000000000 : ℚ), (12784854209/125000000000 : ℚ), 2⟩,
    ⟨(412427348173/1000000000000 : ℚ), (-96541463/312500000 : ℚ), (54263874317/500000000000 : ℚ), 2⟩,
    ⟨(415389405453/1000000000000 : ℚ), (-3207752787/10000000000 : ℚ), (113429389629/1000000000000 : ℚ), 2⟩,
    ⟨(208818137619/500000000000 : ℚ), (-102959783/312500000 : ℚ), (117051351423/1000000000000 : ℚ), 2⟩,
    ⟨(13098322467/31250000000 : ℚ), (-335182983/1000000000 : ℚ), (119441054437/1000000000000 : ℚ), 2⟩,
    ⟨(209952497013/500000000000 : ℚ), (-422517097/1250000000 : ℚ), (120628601797/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-3383663493/10000000000 : ℚ), (120776707183/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (549999/1000000 : ℚ)
  x := (70243168481/200000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control446.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control446.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate446
