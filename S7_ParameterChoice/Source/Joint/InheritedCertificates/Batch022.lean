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

-- Control197
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
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

-- Control198
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
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

-- Control199
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
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

-- Control200
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
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

-- Control201
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
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

-- Control202
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
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

-- Control203
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
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

-- Control204
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
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true := by decide +kernel
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
