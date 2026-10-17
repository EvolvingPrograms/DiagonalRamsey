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

-- Control266
namespace DiagonalRamsey.JointInheritedCertificate266
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(262656681699/1000000000000 : ℚ), (1225173920343/1000000000 : ℚ), (-161276742528797/500000000000 : ℚ), 11⟩,
    ⟨(131755061813/500000000000 : ℚ), (1335524784933/10000000000 : ℚ), (-89150980053/2500000000 : ℚ), 8⟩,
    ⟨(132604394183/500000000000 : ℚ), (29150644801/625000000 : ℚ), (-635441085953/50000000000 : ℚ), 7⟩,
    ⟨(267736316851/1000000000000 : ℚ), (114427769063/5000000000 : ℚ), (-159631780523/25000000000 : ℚ), 6⟩,
    ⟨(271068367599/1000000000000 : ℚ), (132154799783/10000000000 : ℚ), (-3782805222853/1000000000000 : ℚ), 5⟩,
    ⟨(13758642557/50000000000 : ℚ), (83865560473/10000000000 : ℚ), (-616310677329/250000000000 : ℚ), 5⟩,
    ⟨(140005119527/500000000000 : ℚ), (2261311401/400000000 : ℚ), (-853619263969/500000000000 : ℚ), 4⟩,
    ⟨(285533944651/1000000000000 : ℚ), (620173367/156250000 : ℚ), (-615720886117/500000000000 : ℚ), 4⟩,
    ⟨(145845385813/500000000000 : ℚ), (3582006463/1250000000 : ℚ), (-228309012559/250000000000 : ℚ), 4⟩,
    ⟨(298421426369/1000000000000 : ℚ), (10540138663/5000000000 : ℚ), (-344946582743/500000000000 : ℚ), 3⟩,
    ⟨(305661088997/1000000000000 : ℚ), (1960574551/1250000000 : ℚ), (-65880949637/125000000000 : ℚ), 3⟩,
    ⟨(313340037601/1000000000000 : ℚ), (11725288137/10000000000 : ℚ), (-80918989997/200000000000 : ℚ), 3⟩,
    ⟨(80346079927/250000000000 : ℚ), (4373553351/5000000000 : ℚ), (-310141362681/1000000000000 : ℚ), 3⟩,
    ⟨(329716464483/1000000000000 : ℚ), (807436301/1250000000 : ℚ), (-117856487263/500000000000 : ℚ), 3⟩,
    ⟨(169128114409/500000000000 : ℚ), (4670471099/10000000000 : ℚ), (-87997434359/500000000000 : ℚ), 3⟩,
    ⟨(346921370113/1000000000000 : ℚ), (3249498199/10000000000 : ℚ), (-63668898383/500000000000 : ℚ), 3⟩,
    ⟨(177814219161/500000000000 : ℚ), (1052794599/5000000000 : ℚ), (-87172618671/1000000000000 : ℚ), 2⟩,
    ⟨(182146789809/500000000000 : ℚ), (293499741/2500000000 : ℚ), (-53651798667/1000000000000 : ℚ), 2⟩,
    ⟨(372833343953/1000000000000 : ℚ), (407820581/10000000000 : ℚ), (-12711304827/500000000000 : ℚ), 2⟩,
    ⟨(47645686091/125000000000 : ℚ), (-227456569/10000000000 : ℚ), (-1479488617/1000000000000 : ℚ), 2⟩,
    ⟨(77841954167/200000000000 : ℚ), (-378779937/5000000000 : ℚ), (295852249/15625000000 : ℚ), 2⟩,
    ⟨(198444359719/500000000000 : ℚ), (-600942199/5000000000 : ℚ), (36395205989/1000000000000 : ℚ), 2⟩,
    ⟨(202064191033/500000000000 : ℚ), (-1575187257/10000000000 : ℚ), (10268774021/200000000000 : ℚ), 2⟩,
    ⟨(41085903681/100000000000 : ℚ), (-11804867/62500000 : ℚ), (8015107441/125000000000 : ℚ), 2⟩,
    ⟨(83403172757/200000000000 : ℚ), (-2151371853/10000000000 : ℚ), (74989467019/1000000000000 : ℚ), 2⟩,
    ⟨(422539569381/1000000000000 : ℚ), (-94787849/400000000 : ℚ), (84153532511/1000000000000 : ℚ), 2⟩,
    ⟨(85475391459/200000000000 : ℚ), (-1274472829/5000000000 : ℚ), (91770459583/1000000000000 : ℚ), 2⟩,
    ⟨(107870360209/250000000000 : ℚ), (-2693107169/10000000000 : ℚ), (979609381/10000000000 : ℚ), 2⟩,
    ⟨(3396980403/7812500000 : ℚ), (-175325197/625000000 : ℚ), (102816228973/1000000000000 : ℚ), 2⟩,
    ⟨(437341020069/1000000000000 : ℚ), (-1443734407/5000000000 : ℚ), (106403598623/1000000000000 : ℚ), 2⟩,
    ⟨(43903968481/100000000000 : ℚ), (-2941479911/10000000000 : ℚ), (21754059709/200000000000 : ℚ), 2⟩,
    ⟨(27493320421/62500000000 : ℚ), (-371030127/1250000000 : ℚ), (109946357463/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-371446853/1250000000 : ℚ), (110093027169/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (78375734423/250000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control266.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control266.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate266

-- Control267
namespace DiagonalRamsey.JointInheritedCertificate267
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(69128734333/250000000000 : ℚ), (3116772571621/2500000000 : ℚ), (-86381975491183/250000000000 : ℚ), 11⟩,
    ⟨(138698967807/500000000000 : ℚ), (679660434181/5000000000 : ℚ), (-38201006390467/1000000000000 : ℚ), 8⟩,
    ⟨(139577714211/500000000000 : ℚ), (474883245237/10000000000 : ℚ), (-6807372686323/500000000000 : ℚ), 7⟩,
    ⟨(281770490139/1000000000000 : ℚ), (116554168901/5000000000 : ℚ), (-6840837928347/1000000000000 : ℚ), 6⟩,
    ⟨(285217936291/1000000000000 : ℚ), (8417039279/625000000 : ℚ), (-4053058823987/1000000000000 : ℚ), 5⟩,
    ⟨(36183070761/125000000000 : ℚ), (42753458953/5000000000 : ℚ), (-1320855603177/500000000000 : ℚ), 5⟩,
    ⟨(294469482163/1000000000000 : ℚ), (14417953301/2500000000 : ℚ), (-228723428091/125000000000 : ℚ), 4⟩,
    ⟨(150092242219/500000000000 : ℚ), (20258346919/5000000000 : ℚ), (-1320182145501/1000000000000 : ℚ), 4⟩,
    ⟨(306554534317/1000000000000 : ℚ), (29273852139/10000000000 : ℚ), (-979402879601/1000000000000 : ℚ), 4⟩,
    ⟨(156759142369/500000000000 : ℚ), (5388490981/2500000000 : ℚ), (-370126583359/500000000000 : ℚ), 3⟩,
    ⟨(321008670977/1000000000000 : ℚ), (1003427629/625000000 : ℚ), (-70739900917/125000000000 : ℚ), 3⟩,
    ⟨(8223838913/25000000000 : ℚ), (600963857/500000000 : ℚ), (-339737447/781250000 : ℚ), 3⟩,
    ⟨(337276427777/1000000000000 : ℚ), (8983684631/10000000000 : ℚ), (-333809845023/1000000000000 : ℚ), 3⟩,
    ⟨(345897130947/1000000000000 : ℚ), (3326058893/5000000000 : ℚ), (-50842825529/200000000000 : ℚ), 3⟩,
    ⟨(177366321973/500000000000 : ℚ), (4829001707/10000000000 : ℚ), (-190382157129/1000000000000 : ℚ), 3⟩,
    ⟨(181848937977/500000000000 : ℚ), (422661809/1250000000 : ℚ), (-69201747053/500000000000 : ℚ), 3⟩,
    ⟨(186353243443/500000000000 : ℚ), (443249351/2000000000 : ℚ), (-95524629129/1000000000000 : ℚ), 2⟩,
    ⟨(190835859447/500000000000 : ℚ), (1267831741/10000000000 : ℚ), (-7470619817/125000000000 : ℚ), 2⟩,
    ⟨(390507231893/1000000000000 : ℚ), (488194443/10000000000 : ℚ), (-29673853019/1000000000000 : ℚ), 2⟩,
    ⟨(399127935063/1000000000000 : ℚ), (-39472227/2500000000 : ℚ), (-4172517951/1000000000000 : ℚ), 2⟩,
    ⟨(5093135079/12500000000 : ℚ), (-87086233/1250000000 : ℚ), (219394821/12500000000 : ℚ), 2⟩,
    ⟨(415395691863/1000000000000 : ℚ), (-11480237/100000000 : ℚ), (36116833023/1000000000000 : ℚ), 2⟩,
    ⟨(211443039051/500000000000 : ℚ), (-381743791/2500000000 : ℚ), (5199766621/100000000000 : ℚ), 2⟩,
    ⟨(429849828523/1000000000000 : ℚ), (-115319489/625000000 : ℚ), (839171/12800000 : ℚ), 2⟩,
    ⟨(218109939201/500000000000 : ℚ), (-2111349733/10000000000 : ℚ), (7708809559/100000000000 : ℚ), 2⟩,
    ⟨(441934880677/1000000000000 : ℚ), (-1166289419/5000000000 : ℚ), (43400510069/500000000000 : ℚ), 2⟩,
    ⟨(27933737297/62500000000 : ℚ), (-1257059691/5000000000 : ℚ), (11858613751/125000000000 : ℚ), 2⟩,
    ⟨(112796606637/250000000000 : ℚ), (-665014323/2500000000 : ℚ), (50711096043/500000000000 : ℚ), 2⟩,
    ⟨(454633872701/1000000000000 : ℚ), (-1386745597/5000000000 : ℚ), (106559603711/1000000000000 : ℚ), 2⟩,
    ⟨(228624467209/500000000000 : ℚ), (-1428356729/5000000000 : ℚ), (55176999899/500000000000 : ℚ), 2⟩,
    ⟨(18360257089/40000000000 : ℚ), (-116453623/400000000 : ℚ), (112856604187/1000000000000 : ℚ), 2⟩,
    ⟨(459889425507/1000000000000 : ℚ), (-2938403291/10000000000 : ℚ), (28524998297/250000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-367721813/1250000000 : ℚ), (57127525173/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (75954235143/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control267.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control267.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate267

-- Control268
namespace DiagonalRamsey.JointInheritedCertificate268
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(381138141/1250000000 : ℚ), (808189162987/625000000 : ℚ), (-49394860700661/125000000000 : ℚ), 11⟩,
    ⟨(305849355883/1000000000000 : ℚ), (352646985393/2500000000 : ℚ), (-43689571380613/1000000000000 : ℚ), 8⟩,
    ⟨(153859000239/500000000000 : ℚ), (3945114709/80000000 : ℚ), (-1946493891831/125000000000 : ℚ), 7⟩,
    ⟨(77624612629/250000000000 : ℚ), (60568195437/2500000000 : ℚ), (-7825161792051/1000000000000 : ℚ), 6⟩,
    ⟨(157081964371/500000000000 : ℚ), (70049590023/5000000000 : ℚ), (-927413693743/200000000000 : ℚ), 5⟩,
    ⟨(318679134597/1000000000000 : ℚ), (89045011191/10000000000 : ℚ), (-604626826047/200000000000 : ℚ), 5⟩,
    ⟨(162000292091/500000000000 : ℚ), (60127431799/10000000000 : ℚ), (-2094746416733/1000000000000 : ℚ), 4⟩,
    ⟨(330077029027/1000000000000 : ℚ), (21148379509/5000000000 : ℚ), (-1512125153513/1000000000000 : ℚ), 4⟩,
    ⟨(336849949647/1000000000000 : ℚ), (7651477269/2500000000 : ℚ), (-1122603061641/1000000000000 : ℚ), 4⟩,
    ⟨(344254119113/1000000000000 : ℚ), (4515039387/2000000000 : ℚ), (-33973238059/40000000000 : ℚ), 3⟩,
    ⟨(352218231227/1000000000000 : ℚ), (16852869557/10000000000 : ℚ), (-650205968099/1000000000000 : ℚ), 3⟩,
    ⟨(72133117447/200000000000 : ℚ), (790791593/625000000 : ℚ), (-50059592869/100000000000 : ℚ), 3⟩,
    ⟨(369514834481/1000000000000 : ℚ), (379721673/400000000 : ℚ), (-77062852709/200000000000 : ℚ), 3⟩,
    ⟨(94670187469/250000000000 : ℚ), (3533227787/5000000000 : ℚ), (-294588830967/1000000000000 : ℚ), 3⟩,
    ⟨(77615012129/200000000000 : ℚ), (323097857/625000000 : ℚ), (-221904485533/1000000000000 : ℚ), 3⟩,
    ⟨(397607294439/1000000000000 : ℚ), (1831983097/5000000000 : ℚ), (-20348282107/125000000000 : ℚ), 3⟩,
    ⟨(407185650637/1000000000000 : ℚ), (1226551777/5000000000 : ℚ), (-57041012791/500000000000 : ℚ), 2⟩,
    ⟨(416717884431/1000000000000 : ℚ), (73409559/500000000 : ℚ), (-73523373417/1000000000000 : ℚ), 2⟩,
    ⟨(133160061/312500000 : ℚ), (659332279/10000000000 : ℚ), (-39447795879/1000000000000 : ℚ), 2⟩,
    ⟨(87055622119/200000000000 : ℚ), (-10233267/10000000000 : ℚ), (-2123578709/200000000000 : ℚ), 2⟩,
    ⟨(444127357841/1000000000000 : ℚ), (-113589969/2000000000 : ℚ), (13899320267/1000000000000 : ℚ), 2⟩,
    ⟨(452574713849/1000000000000 : ℚ), (-1034538981/10000000000 : ℚ), (34814809787/1000000000000 : ℚ), 2⟩,
    ⟨(460538825963/1000000000000 : ℚ), (-712896287/5000000000 : ℚ), (52674900329/1000000000000 : ℚ), 2⟩,
    ⟨(46794299543/100000000000 : ℚ), (-876917037/5000000000 : ℚ), (67901974001/1000000000000 : ℚ), 2⟩,
    ⟨(9494318321/20000000000 : ℚ), (-405603713/2000000000 : ℚ), (2525743711/31250000000 : ℚ), 2⟩,
    ⟨(96158472179/200000000000 : ℚ), (-281947911/1250000000 : ℚ), (91694969743/1000000000000 : ℚ), 2⟩,
    ⟨(486113810479/1000000000000 : ℚ), (-2442122589/10000000000 : ℚ), (100712770067/1000000000000 : ℚ), 2⟩,
    ⟨(98125803267/200000000000 : ℚ), (-2591937121/10000000000 : ℚ), (21605800893/200000000000 : ℚ), 2⟩,
    ⟨(494294494561/1000000000000 : ℚ), (-541658241/2000000000 : ℚ), (113758859373/1000000000000 : ℚ), 2⟩,
    ⟨(248537472299/500000000000 : ℚ), (-1396800789/5000000000 : ℚ), (117987506929/1000000000000 : ℚ), 2⟩,
    ⟨(498943589193/1000000000000 : ℚ), (-2849573447/10000000000 : ℚ), (30193735293/250000000000 : ℚ), 2⟩,
    ⟨(499882432277/1000000000000 : ℚ), (-2877294591/10000000000 : ℚ), (61079684569/500000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-2880747459/10000000000 : ℚ), (61165996107/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (142026718671/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control268.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control268.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate268

-- Control269
namespace DiagonalRamsey.JointInheritedCertificate269
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(319507801999/1000000000000 : ℚ), (6592848484333/5000000000 : ℚ), (-422215038008649/1000000000000 : ℚ), 11⟩,
    ⟨(160236322467/500000000000 : ℚ), (1438732779017/10000000000 : ℚ), (-4668180243377/100000000000 : ℚ), 8⟩,
    ⟨(322393038839/1000000000000 : ℚ), (503163473967/10000000000 : ℚ), (-16639089964537/1000000000000 : ℚ), 7⟩,
    ⟨(32525048927/100000000000 : ℚ), (123653077643/5000000000 : ℚ), (-8361945252891/1000000000000 : ℚ), 6⟩,
    ⟨(329017477419/1000000000000 : ℚ), (143080584513/10000000000 : ℚ), (-495562909403/100000000000 : ℚ), 5⟩,
    ⟨(33365772513/100000000000 : ℚ), (45494812321/5000000000 : ℚ), (-3231263035963/1000000000000 : ℚ), 5⟩,
    ⟨(339126544281/1000000000000 : ℚ), (7684707273/1250000000 : ℚ), (-2239394208887/1000000000000 : ℚ), 4⟩,
    ⟨(172685633577/500000000000 : ℚ), (8655190143/2000000000 : ℚ), (-202122317347/125000000000 : ℚ), 4⟩,
    ⟨(176165876827/500000000000 : ℚ), (31338958781/10000000000 : ℚ), (-600447860017/500000000000 : ℚ), 4⟩,
    ⟨(359940970491/1000000000000 : ℚ), (11568700229/5000000000 : ℚ), (-909034405553/1000000000000 : ℚ), 3⟩,
    ⟨(92031409187/250000000000 : ℚ), (3458463803/2000000000 : ℚ), (-43525524527/62500000000 : ℚ), 3⟩,
    ⟨(376806929613/1000000000000 : ℚ), (2600301911/2000000000 : ℚ), (-536698145539/1000000000000 : ℚ), 3⟩,
    ⟨(385901243491/1000000000000 : ℚ), (4886787437/5000000000 : ℚ), (-413676286043/1000000000000 : ℚ), 3⟩,
    ⟨(395320995169/1000000000000 : ℚ), (7294609533/10000000000 : ℚ), (-19806275411/62500000000 : ℚ), 3⟩,
    ⟨(404975467287/1000000000000 : ℚ), (2678506003/5000000000 : ℚ), (-119703966421/500000000000 : ℚ), 3⟩,
    ⟨(207385841001/500000000000 : ℚ), (3819433761/10000000000 : ℚ), (-88207999663/500000000000 : ℚ), 3⟩,
    ⟨(424615296411/1000000000000 : ℚ), (2583234697/10000000000 : ℚ), (-124555026041/1000000000000 : ℚ), 2⟩,
    ⟨(217205755563/500000000000 : ℚ), (197264297/1250000000 : ℚ), (-81399515427/1000000000000 : ℚ), 2⟩,
    ⟨(88813196649/200000000000 : ℚ), (23532997/312500000 : ℚ), (-22585633323/500000000000 : ℚ), 2⟩,
    ⟨(226742867461/500000000000 : ℚ), (70456153/10000000000 : ℚ), (-7273104831/500000000000 : ℚ), 2⟩,
    ⟨(462580048801/1000000000000 : ℚ), (-9955461/200000000 : ℚ), (11474523197/1000000000000 : ℚ), 2⟩,
    ⟨(235630670833/500000000000 : ℚ), (-486425479/5000000000 : ℚ), (33652599201/1000000000000 : ℚ), 2⟩,
    ⟨(239723003961/500000000000 : ℚ), (-1370958133/10000000000 : ℚ), (52573764283/1000000000000 : ℚ), 2⟩,
    ⟨(487055224759/1000000000000 : ℚ), (-106532739/625000000 : ℚ), (4293205631/62500000000 : ℚ), 2⟩,
    ⟨(494015711259/1000000000000 : ℚ), (-991572449/5000000000 : ℚ), (82357276287/1000000000000 : ℚ), 2⟩,
    ⟨(125065108533/250000000000 : ℚ), (-276781261/1250000000 : ℚ), (93845524057/1000000000000 : ℚ), 2⟩,
    ⟨(505729253283/1000000000000 : ℚ), (-96143403/400000000 : ℚ), (103368450449/1000000000000 : ℚ), 2⟩,
    ⟨(255184750497/500000000000 : ℚ), (-127778461/500000000 : ℚ), (111089701837/1000000000000 : ℚ), 2⟩,
    ⟨(514136489143/1000000000000 : ℚ), (-2673558561/10000000000 : ℚ), (58566797563/500000000000 : ℚ), 2⟩,
    ⟨(20679757583/40000000000 : ℚ), (-690009691/2500000000 : ℚ), (60796076659/500000000000 : ℚ), 2⟩,
    ⟨(12972858337/25000000000 : ℚ), (-1408382123/5000000000 : ℚ), (124530255541/1000000000000 : ℚ), 2⟩,
    ⟨(103975835283/200000000000 : ℚ), (-2844854449/10000000000 : ℚ), (25197849883/200000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-284835309/1000000000 : ℚ), (126171157609/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (273948239039/1000000000000 : ℚ)
  μ := (13/25 : ℚ)
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
theorem certOK : JointInheritedControls.control269.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control269.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate269

-- Control270
namespace DiagonalRamsey.JointInheritedCertificate270
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(8548986789/25000000000 : ℚ), (13601416931473/10000000000 : ℚ), (-466102213607653/1000000000000 : ℚ), 11⟩,
    ⟨(68592127973/200000000000 : ℚ), (1484679885717/10000000000 : ℚ), (-5153567948211/100000000000 : ℚ), 8⟩,
    ⟨(344953334677/1000000000000 : ℚ), (259765421503/5000000000 : ℚ), (-18370341391193/1000000000000 : ℚ), 7⟩,
    ⟨(43489795657/125000000000 : ℚ), (63881654821/2500000000 : ℚ), (-923292978967/100000000000 : ℚ), 6⟩,
    ⟨(70365435347/200000000000 : ℚ), (73975644079/5000000000 : ℚ), (-2736324224917/500000000000 : ℚ), 5⟩,
    ⟨(2853137001/8000000000 : ℚ), (94167672611/10000000000 : ℚ), (-3569163387327/1000000000000 : ℚ), 5⟩,
    ⟨(362316839839/1000000000000 : ℚ), (796064797/125000000 : ℚ), (-2474334331043/1000000000000 : ℚ), 4⟩,
    ⟨(184398335137/500000000000 : ℚ), (11219380281/2500000000 : ℚ), (-893690791411/500000000000 : ℚ), 4⟩,
    ⟨(376019212119/1000000000000 : ℚ), (32538425531/10000000000 : ℚ), (-265645859171/200000000000 : ℚ), 4⟩,
    ⟨(95978727087/250000000000 : ℚ), (24057661221/10000000000 : ℚ), (-1006230503189/1000000000000 : ℚ), 3⟩,
    ⟨(392407719091/1000000000000 : ℚ), (4502967801/2500000000 : ℚ), (-385860976271/500000000000 : ℚ), 3⟩,
    ⟨(401415853937/1000000000000 : ℚ), (542913227/400000000 : ℚ), (-595647023223/1000000000000 : ℚ), 3⟩,
    ⟨(51356569953/125000000000 : ℚ), (5116530817/5000000000 : ℚ), (-92017993199/200000000000 : ℚ), 3⟩,
    ⟨(210313477759/500000000000 : ℚ), (7668277167/10000000000 : ℚ), (-35352102713/100000000000 : ℚ), 3⟩,
    ⟨(430644908841/1000000000000 : ℚ), (2831962359/5000000000 : ℚ), (-268251719129/1000000000000 : ℚ), 3⟩,
    ⟨(110202485307/250000000000 : ℚ), (814771107/2000000000 : ℚ), (-9949978703/50000000000 : ℚ), 2⟩,
    ⟨(22551207893/50000000000 : ℚ), (2796025687/10000000000 : ℚ), (-142042075891/1000000000000 : ℚ), 2⟩,
    ⟨(461189190247/1000000000000 : ℚ), (439416337/2500000000 : ℚ), (-47349356713/500000000000 : ℚ), 2⟩,
    ⟨(471207143571/1000000000000 : ℚ), (452965179/5000000000 : ℚ), (-3437710963/62500000000 : ℚ), 2⟩,
    ⟨(60122692433/125000000000 : ℚ), (20184213/1000000000 : ℚ), (-21491144149/1000000000000 : ℚ), 2⟩,
    ⟨(490418245151/1000000000000 : ℚ), (-47967279/1250000000 : ℚ), (6943991919/1000000000000 : ℚ), 2⟩,
    ⟨(499426379997/1000000000000 : ℚ), (-872842671/10000000000 : ℚ), (31146237057/1000000000000 : ℚ), 2⟩,
    ⟨(25395959537/50000000000 : ℚ), (-1282286751/10000000000 : ℚ), (3235348973/62500000000 : ℚ), 2⟩,
    ⟨(51581488697/100000000000 : ℚ), (-162499973/1000000000 : ℚ), (69305715693/1000000000000 : ℚ), 2⟩,
    ⟨(104607485763/200000000000 : ℚ), (-477743543/2500000000 : ℚ), (10519813101/125000000000 : ℚ), 2⟩,
    ⟨(529517259249/1000000000000 : ℚ), (-429590509/2000000000 : ℚ), (96629201049/1000000000000 : ℚ), 2⟩,
    ⟨(535191973963/1000000000000 : ℚ), (-2341928753/10000000000 : ℚ), (106955047367/1000000000000 : ℚ), 2⟩,
    ⟨(540006922353/1000000000000 : ℚ), (-1248758551/5000000000 : ℚ), (115319151959/1000000000000 : ℚ), 2⟩,
    ⟨(543915733833/1000000000000 : ℚ), (-104728977/400000000 : ℚ), (121860864703/1000000000000 : ℚ), 2⟩,
    ⟨(546880764411/1000000000000 : ℚ), (-676662457/2500000000 : ℚ), (126683505773/1000000000000 : ℚ), 2⟩,
    ⟨(548873459223/1000000000000 : ℚ), (-2764628797/10000000000 : ℚ), (129860021871/1000000000000 : ℚ), 2⟩,
    ⟨(68734328441/125000000000 : ℚ), (-1396666483/5000000000 : ℚ), (131436952047/1000000000000 : ℚ), 2⟩,
    ⟨(11/20 : ℚ), (-2796907759/10000000000 : ℚ), (131633543239/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (258489053717/1000000000000 : ℚ)
  μ := (11/20 : ℚ)
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
theorem certOK : JointInheritedControls.control270.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control270.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate270

-- Control271
namespace DiagonalRamsey.JointInheritedCertificate271
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(117785640091/500000000000 : ℚ), (1185014224177/1000000000 : ℚ), (-55965825357633/200000000000 : ℚ), 11⟩,
    ⟨(236362572263/1000000000000 : ℚ), (80696938161/625000000 : ℚ), (-6187176069759/200000000000 : ℚ), 8⟩,
    ⟨(4758750717/20000000000 : ℚ), (450611975749/10000000000 : ℚ), (-11024277537121/1000000000000 : ℚ), 7⟩,
    ⟨(240281003183/1000000000000 : ℚ), (27615874671/1250000000 : ℚ), (-5538243696729/1000000000000 : ℚ), 6⟩,
    ⟨(243370405389/1000000000000 : ℚ), (63730773041/5000000000 : ℚ), (-1640203257959/500000000000 : ℚ), 5⟩,
    ⟨(123587994919/500000000000 : ℚ), (16161315141/2000000000 : ℚ), (-1068632369343/500000000000 : ℚ), 5⟩,
    ⟨(251661106669/1000000000000 : ℚ), (54410317077/10000000000 : ℚ), (-369886915779/250000000000 : ℚ), 4⟩,
    ⟨(128391280879/500000000000 : ℚ), (7630570129/2000000000 : ℚ), (-1066640776167/1000000000000 : ℚ), 4⟩,
    ⟨(26249103269/100000000000 : ℚ), (53720753/19531250 : ℚ), (-12350532907/15625000000 : ℚ), 4⟩,
    ⟨(67182885943/250000000000 : ℚ), (2524712379/1250000000 : ℚ), (-298254398877/500000000000 : ℚ), 3⟩,
    ⟨(68860998867/250000000000 : ℚ), (14994614139/10000000000 : ℚ), (-56881520849/125000000000 : ℚ), 3⟩,
    ⟨(141281871601/500000000000 : ℚ), (2794302517/2500000000 : ℚ), (-348623951249/1000000000000 : ℚ), 3⟩,
    ⟨(72505554977/250000000000 : ℚ), (830579641/1000000000 : ℚ), (-4163646347/15625000000 : ℚ), 3⟩,
    ⟨(297747596381/1000000000000 : ℚ), (6099857921/10000000000 : ℚ), (-201684407473/1000000000000 : ℚ), 3⟩,
    ⟨(15283273651/50000000000 : ℚ), (4374155759/10000000000 : ℚ), (-74824020553/500000000000 : ℚ), 3⟩,
    ⟨(156849798173/500000000000 : ℚ), (15013939/50000000 : ℚ), (-21440094777/200000000000 : ℚ), 3⟩,
    ⟨(321772593359/1000000000000 : ℚ), (949034053/5000000000 : ℚ), (-14423026457/200000000000 : ℚ), 2⟩,
    ⟨(164903358343/500000000000 : ℚ), (199528547/2000000000 : ℚ), (-42791617771/1000000000000 : ℚ), 2⟩,
    ⟨(13508983733/40000000000 : ℚ), (64093303/2500000000 : ℚ), (-18058920581/1000000000000 : ℚ), 2⟩,
    ⟨(345449969797/1000000000000 : ℚ), (-287137/8000000 : ℚ), (2952702863/1000000000000 : ℚ), 2⟩,
    ⟨(44113555813/125000000000 : ℚ), (-436476891/5000000000 : ℚ), (4179458247/200000000000 : ℚ), 2⟩,
    ⟨(360028194237/1000000000000 : ℚ), (-326084177/2500000000 : ℚ), (7254325049/200000000000 : ℚ), 2⟩,
    ⟨(183370322967/500000000000 : ℚ), (-1667217317/10000000000 : ℚ), (618199651/12500000000 : ℚ), 2⟩,
    ⟨(74596231403/200000000000 : ℚ), (-493106851/2500000000 : ℚ), (30371508061/500000000000 : ℚ), 2⟩,
    ⟨(94672406987/250000000000 : ℚ), (-44566059/200000000 : ℚ), (70358739707/1000000000000 : ℚ), 2⟩,
    ⟨(95952770759/250000000000 : ℚ), (-610318981/2500000000 : ℚ), (78477713661/1000000000000 : ℚ), 2⟩,
    ⟨(97074049967/250000000000 : ℚ), (-32703823/125000000 : ℚ), (85234428013/1000000000000 : ℚ), 2⟩,
    ⟨(98025446079/250000000000 : ℚ), (-1378598301/5000000000 : ℚ), (1814635191/20000000000 : ℚ), 2⟩,
    ⟨(395191186523/1000000000000 : ℚ), (-2866829627/10000000000 : ℚ), (19009463939/200000000000 : ℚ), 2⟩,
    ⟨(79506930771/200000000000 : ℚ), (-589466903/2000000000 : ℚ), (9823819147/100000000000 : ℚ), 2⟩,
    ⟨(199554808721/500000000000 : ℚ), (-1500105911/5000000000 : ℚ), (100344398973/1000000000000 : ℚ), 2⟩,
    ⟨(99975227381/250000000000 : ℚ), (-378302229/1250000000 : ℚ), (101391341291/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-1514841401/5000000000 : ℚ), (25380480981/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (166250277239/500000000000 : ℚ)
  μ := (2/5 : ℚ)
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
theorem certOK : JointInheritedControls.control271.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control271.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate271

-- Control272
namespace DiagonalRamsey.JointInheritedCertificate272
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(62257082941/250000000000 : ℚ), (12048312053363/10000000000 : ℚ), (-300750418843803/1000000000000 : ℚ), 11⟩,
    ⟨(7807847217/31250000000 : ℚ), (1313047640489/10000000000 : ℚ), (-2078087088451/62500000000 : ℚ), 8⟩,
    ⟨(251488745489/1000000000000 : ℚ), (91681591987/2000000000 : ℚ), (-2962294352389/250000000000 : ℚ), 7⟩,
    ⟨(50785092817/200000000000 : ℚ), (22483961609/1000000000 : ℚ), (-148825670659/25000000000 : ℚ), 6⟩,
    ⟨(1285688999/5000000000 : ℚ), (129777722839/10000000000 : ℚ), (-1763214981991/500000000000 : ℚ), 5⟩,
    ⟨(261094816083/1000000000000 : ℚ), (20579085831/2500000000 : ℚ), (-2297875636483/1000000000000 : ℚ), 5⟩,
    ⟨(132879202353/500000000000 : ℚ), (554579873/100000000 : ℚ), (-1591047377399/1000000000000 : ℚ), 4⟩,
    ⟨(6777091319/25000000000 : ℚ), (9728066623/2500000000 : ℚ), (-35854424831/31250000000 : ℚ), 4⟩,
    ⟨(55403855039/200000000000 : ℚ), (14036700481/5000000000 : ℚ), (-850565460157/1000000000000 : ℚ), 4⟩,
    ⟨(70877027181/250000000000 : ℚ), (2063364239/1000000000 : ℚ), (-642231215339/1000000000000 : ℚ), 3⟩,
    ⟨(290487662331/1000000000000 : ℚ), (613422177/400000000 : ℚ), (-4902967629/10000000000 : ℚ), 3⟩,
    ⟨(297890719101/1000000000000 : ℚ), (11448160237/10000000000 : ℚ), (-9400432339/25000000000 : ℚ), 3⟩,
    ⟨(305645983549/1000000000000 : ℚ), (2131023233/2500000000 : ℚ), (-287837470791/1000000000000 : ℚ), 3⟩,
    ⟨(313678768239/1000000000000 : ℚ), (6277879327/10000000000 : ℚ), (-218323314569/1000000000000 : ℚ), 3⟩,
    ⟨(40238964133/125000000000 : ℚ), (4520959621/10000000000 : ℚ), (-32504034841/200000000000 : ℚ), 3⟩,
    ⟨(66053106053/200000000000 : ℚ), (3125137663/10000000000 : ℚ), (-23405316659/200000000000 : ℚ), 3⟩,
    ⟨(169329884007/500000000000 : ℚ), (1000550347/5000000000 : ℚ), (-9931033679/125000000000 : ℚ), 2⟩,
    ⟨(69402717043/200000000000 : ℚ), (4239511/39062500 : ℚ), (-1922554759/40000000000 : ℚ), 2⟩,
    ⟨(8881163251/25000000000 : ℚ), (331768987/10000000000 : ℚ), (-2701680699/125000000000 : ℚ), 2⟩,
    ⟨(36327931473/100000000000 : ℚ), (-293373643/10000000000 : ℚ), (839192981/1000000000000 : ℚ), 2⟩,
    ⟨(185517289589/500000000000 : ℚ), (-815326483/10000000000 : ℚ), (624950989/31250000000 : ℚ), 2⟩,
    ⟨(94609408987/250000000000 : ℚ), (-1253087847/10000000000 : ℚ), (36399642087/1000000000000 : ℚ), 2⟩,
    ⟨(77083437911/200000000000 : ℚ), (-1583111/9765625 : ℚ), (12613237697/250000000000 : ℚ), 2⟩,
    ⟨(97976505771/250000000000 : ℚ), (-1930447531/10000000000 : ℚ), (62474307763/1000000000000 : ℚ), 2⟩,
    ⟨(397841645519/1000000000000 : ℚ), (-2189635201/10000000000 : ℚ), (72707905893/1000000000000 : ℚ), 2⟩,
    ⟨(201583446787/500000000000 : ℚ), (-3006559/12500000 : ℚ), (5083912009/62500000000 : ℚ), 2⟩,
    ⟨(101957620549/250000000000 : ℚ), (-322794799/1250000000 : ℚ), (88524025519/1000000000000 : ℚ), 2⟩,
    ⟨(5147343731/12500000000 : ℚ), (-272486279/1000000000 : ℚ), (94363759223/1000000000000 : ℚ), 2⟩,
    ⟨(207499917097/500000000000 : ℚ), (-44307987/156250000 : ℚ), (9894604923/100000000000 : ℚ), 2⟩,
    ⟨(41743655279/100000000000 : ℚ), (-1458542533/5000000000 : ℚ), (102332932799/1000000000000 : ℚ), 2⟩,
    ⟨(83814837467/200000000000 : ℚ), (-2970522019/10000000000 : ℚ), (104567948623/1000000000000 : ℚ), 2⟩,
    ⟨(83979393303/200000000000 : ℚ), (-2997002051/10000000000 : ℚ), (105678746121/1000000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-750075251/2500000000 : ℚ), (105817285147/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (9/20 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (323054190959/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control272.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control272.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate272

-- Control273
namespace DiagonalRamsey.JointInheritedCertificate273
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(283503448367/1000000000000 : ℚ), (6645304393971/5000000000 : ℚ), (-377609660781451/1000000000000 : ℚ), 11⟩,
    ⟨(142176407669/500000000000 : ℚ), (1450155906769/10000000000 : ℚ), (-1304489791171/31250000000 : ℚ), 8⟩,
    ⟨(286043369411/1000000000000 : ℚ), (31694088349/625000000 : ℚ), (-7437140314291/500000000000 : ℚ), 7⟩,
    ⟨(288558829627/1000000000000 : ℚ), (249184310121/10000000000 : ℚ), (-3735670926391/500000000000 : ℚ), 6⟩,
    ⟨(291874970729/1000000000000 : ℚ), (144106520089/10000000000 : ℚ), (-4424696575971/1000000000000 : ℚ), 5⟩,
    ⟨(18497491029/62500000000 : ℚ), (5723818803/625000000 : ℚ), (-576461178307/200000000000 : ℚ), 5⟩,
    ⟨(300774147151/1000000000000 : ℚ), (30908067871/5000000000 : ℚ), (-1995007886213/1000000000000 : ℚ), 4⟩,
    ⟨(306271478539/1000000000000 : ℚ), (43452583833/10000000000 : ℚ), (-1438107734691/1000000000000 : ℚ), 4⟩,
    ⟨(1952493177/6250000000 : ℚ), (3140437221/1000000000 : ℚ), (-53285839583/50000000000 : ℚ), 4⟩,
    ⟨(319097425997/1000000000000 : ℚ), (23121861661/10000000000 : ℚ), (-402199334991/500000000000 : ℚ), 3⟩,
    ⟨(163151260591/500000000000 : ℚ), (17214984353/10000000000 : ℚ), (-613920854583/1000000000000 : ℚ), 3⟩,
    ⟨(33394480487/100000000000 : ℚ), (6437537101/5000000000 : ℚ), (-94149199231/200000000000 : ℚ), 3⟩,
    ⟨(85487669423/250000000000 : ℚ), (9606787267/10000000000 : ℚ), (-45045392093/125000000000 : ℚ), 3⟩,
    ⟨(87560759679/250000000000 : ℚ), (7093712861/10000000000 : ℚ), (-34179438343/125000000000 : ℚ), 3⟩,
    ⟨(89685506993/250000000000 : ℚ), (80103301/156250000 : ℚ), (-50934722497/250000000000 : ℚ), 3⟩,
    ⟨(91841448887/250000000000 : ℚ), (1781519329/5000000000 : ℚ), (-29399767899/200000000000 : ℚ), 3⟩,
    ⟨(376031289847/1000000000000 : ℚ), (71987853/312500000 : ℚ), (-50102605291/500000000000 : ℚ), 2⟩,
    ⟨(384655057423/1000000000000 : ℚ), (319379867/2500000000 : ℚ), (-61192510593/1000000000000 : ℚ), 2⟩,
    ⟨(393154046679/1000000000000 : ℚ), (433396961/10000000000 : ℚ), (-28374439021/1000000000000 : ℚ), 2⟩,
    ⟨(200723203851/500000000000 : ℚ), (-266597391/10000000000 : ℚ), (-14277269/25000000000 : ℚ), 2⟩,
    ⟨(102363070131/250000000000 : ℚ), (-850711297/10000000000 : ℚ), (11553202057/500000000000 : ℚ), 2⟩,
    ⟨(417094564213/1000000000000 : ℚ), (-268053539/2000000000 : ℚ), (43334649423/1000000000000 : ℚ), 2⟩,
    ⟨(212149829699/500000000000 : ℚ), (-1751511047/10000000000 : ℚ), (30316432457/500000000000 : ℚ), 2⟩,
    ⟨(17239927083/40000000000 : ℚ), (-2096906353/10000000000 : ℚ), (7540182811/100000000000 : ℚ), 2⟩,
    ⟨(54640700857/125000000000 : ℚ), (-2386066689/10000000000 : ℚ), (43975980607/500000000000 : ℚ), 2⟩,
    ⟨(110655734561/250000000000 : ℚ), (-1313211953/5000000000 : ℚ), (98523881659/1000000000000 : ℚ), 2⟩,
    ⟨(447437228931/1000000000000 : ℚ), (-176482411/625000000 : ℚ), (107303619981/1000000000000 : ℚ), 2⟩,
    ⟨(225761057333/500000000000 : ℚ), (-745590103/2500000000 : ℚ), (2288679733/20000000000 : ℚ), 2⟩,
    ⟨(56854781971/125000000000 : ℚ), (-1552847007/5000000000 : ℚ), (120023091089/1000000000000 : ℚ), 2⟩,
    ⟨(28584607249/62500000000 : ℚ), (-3196193853/10000000000 : ℚ), (62075349403/500000000000 : ℚ), 2⟩,
    ⟨(459044270057/1000000000000 : ℚ), (-3255604837/10000000000 : ℚ), (31718222113/250000000000 : ℚ), 2⟩,
    ⟨(114973409257/250000000000 : ℚ), (-821259893/2500000000 : ℚ), (16028165153/125000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-822176591/2500000000 : ℚ), (64196987069/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/2 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (499999/1000000 : ℚ)
  x := (146154890949/500000000000 : ℚ)
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control273.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control273.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate273
