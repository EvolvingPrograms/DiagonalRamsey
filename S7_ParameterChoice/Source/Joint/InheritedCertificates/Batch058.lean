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

-- Control498
namespace DiagonalRamsey.JointInheritedCertificate498
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(65129242799/250000000000 : ℚ), (1352692887361/1000000000 : ℚ), (-353057450625133/1000000000000 : ℚ), 12⟩,
    ⟨(52237643069/200000000000 : ℚ), (92375474849/625000000 : ℚ), (-39013757819843/1000000000000 : ℚ), 9⟩,
    ⟨(65631059799/250000000000 : ℚ), (258878674997/5000000000 : ℚ), (-694505232781/50000000000 : ℚ), 7⟩,
    ⟨(264512176107/1000000000000 : ℚ), (254861338983/10000000000 : ℚ), (-6968080984459/1000000000000 : ℚ), 6⟩,
    ⟨(267132881161/1000000000000 : ℚ), (73802353103/5000000000 : ℚ), (-4119285525499/1000000000000 : ℚ), 6⟩,
    ⟨(135180557767/500000000000 : ℚ), (375578219/40000000 : ℚ), (-2676988393119/1000000000000 : ℚ), 5⟩,
    ⟨(54833157913/200000000000 : ℚ), (31696922231/5000000000 : ℚ), (-923601698091/500000000000 : ℚ), 5⟩,
    ⟨(278510262163/1000000000000 : ℚ), (22265491129/5000000000 : ℚ), (-1326335101537/1000000000000 : ℚ), 4⟩,
    ⟨(141676346841/500000000000 : ℚ), (6424427007/2000000000 : ℚ), (-488988238917/500000000000 : ℚ), 4⟩,
    ⟨(14432322443/50000000000 : ℚ), (23567082671/10000000000 : ℚ), (-733465005351/1000000000000 : ℚ), 4⟩,
    ⟨(14717027297/50000000000 : ℚ), (8723575039/5000000000 : ℚ), (-555184302019/1000000000000 : ℚ), 4⟩,
    ⟨(150190073827/500000000000 : ℚ), (12936317123/10000000000 : ℚ), (-421128011103/1000000000000 : ℚ), 3⟩,
    ⟨(306707089337/1000000000000 : ℚ), (1905619861/2000000000 : ℚ), (-317729309307/1000000000000 : ℚ), 3⟩,
    ⟨(156630219541/500000000000 : ℚ), (1379719007/2000000000 : ℚ), (-118129525067/500000000000 : ℚ), 3⟩,
    ⟨(319977084547/1000000000000 : ℚ), (2416666303/5000000000 : ℚ), (-170898165659/1000000000000 : ℚ), 3⟩,
    ⟨(163396170383/500000000000 : ℚ), (159304957/500000000 : ℚ), (-117650534171/1000000000000 : ℚ), 3⟩,
    ⟨(41705071637/125000000000 : ℚ), (927363849/5000000000 : ℚ), (-73702157619/1000000000000 : ℚ), 3⟩,
    ⟨(68091165863/200000000000 : ℚ), (766313471/10000000000 : ℚ), (-37028880177/1000000000000 : ℚ), 3⟩,
    ⟨(17358623739/50000000000 : ℚ), (-132109607/10000000000 : ℚ), (-6148265411/1000000000000 : ℚ), 3⟩,
    ⟨(14149032981/40000000000 : ℚ), (-879616533/10000000000 : ℚ), (20041903969/1000000000000 : ℚ), 3⟩,
    ⟨(703228059/1953125000 : ℚ), (-1505412247/10000000000 : ℚ), (42371446431/1000000000000 : ℚ), 3⟩,
    ⟨(183046183961/500000000000 : ℚ), (-1015782051/5000000000 : ℚ), (61471414899/1000000000000 : ℚ), 3⟩,
    ⟨(185893232501/500000000000 : ℚ), (-247489499/1000000000 : ℚ), (77825423501/1000000000000 : ℚ), 2⟩,
    ⟨(18854011009/50000000000 : ℚ), (-2848317651/10000000000 : ℚ), (11475761981/125000000000 : ℚ), 2⟩,
    ⟨(381922651699/1000000000000 : ℚ), (-3161789453/10000000000 : ℚ), (51850693809/500000000000 : ℚ), 2⟩,
    ⟨(386267124297/1000000000000 : ℚ), (-3423004527/10000000000 : ℚ), (1421673521/12500000000 : ℚ), 2⟩,
    ⟨(48758974791/125000000000 : ℚ), (-113684401/312500000 : ℚ), (3814847233/31250000000 : ℚ), 2⟩,
    ⟨(196650016351/500000000000 : ℚ), (-3811034329/10000000000 : ℚ), (64428144819/500000000000 : ℚ), 2⟩,
    ⟨(79184147551/200000000000 : ℚ), (-3945855803/10000000000 : ℚ), (26835275411/200000000000 : ℚ), 2⟩,
    ⟨(397908674667/1000000000000 : ℚ), (-4044914627/10000000000 : ℚ), (138108122921/1000000000000 : ℚ), 2⟩,
    ⟨(399244698517/1000000000000 : ℚ), (-1027501531/2500000000 : ℚ), (35175626309/250000000000 : ℚ), 2⟩,
    ⟨(199957971333/500000000000 : ℚ), (-1035568449/2500000000 : ℚ), (141991856333/1000000000000 : ℚ), 2⟩,
    ⟨(2/5 : ℚ), (-414629437/1000000000 : ℚ), (142152662387/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (2/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (87496661889/250000000000 : ℚ)
  μ := (2/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control498.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control498.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate498

-- Control499
namespace DiagonalRamsey.JointInheritedCertificate499
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(17190674117/62500000000 : ℚ), (858972252343/625000000 : ℚ), (-47339149753471/125000000000 : ℚ), 12⟩,
    ⟨(55149667067/200000000000 : ℚ), (1501956548161/10000000000 : ℚ), (-41849888803337/1000000000000 : ℚ), 9⟩,
    ⟨(866052239/3125000000 : ℚ), (131573277173/2500000000 : ℚ), (-3725169429419/250000000000 : ℚ), 7⟩,
    ⟨(69800639609/250000000000 : ℚ), (259151946381/10000000000 : ℚ), (-7475708759757/1000000000000 : ℚ), 6⟩,
    ⟨(4405093219/15625000000 : ℚ), (75074908169/5000000000 : ℚ), (-4419956262213/1000000000000 : ℚ), 6⟩,
    ⟨(285280711317/1000000000000 : ℚ), (95557639167/10000000000 : ℚ), (-1436457628513/500000000000 : ℚ), 5⟩,
    ⟨(289234486307/1000000000000 : ℚ), (516409537/80000000 : ℚ), (-1982905206203/1000000000000 : ℚ), 5⟩,
    ⟨(73437303493/250000000000 : ℚ), (45372569263/10000000000 : ℚ), (-712134967211/500000000000 : ℚ), 4⟩,
    ⟨(37347676877/125000000000 : ℚ), (1637709873/500000000 : ℚ), (-262672532361/250000000000 : ℚ), 4⟩,
    ⟨(9508832081/31250000000 : ℚ), (6013419389/2500000000 : ℚ), (-78851346253/100000000000 : ℚ), 4⟩,
    ⟨(310199869027/1000000000000 : ℚ), (17829201469/10000000000 : ℚ), (-597389559059/1000000000000 : ℚ), 4⟩,
    ⟨(316476156039/1000000000000 : ℚ), (6620596187/5000000000 : ℚ), (-453712232347/1000000000000 : ℚ), 3⟩,
    ⟨(64610208711/200000000000 : ℚ), (4887393391/5000000000 : ℚ), (-68585590337/200000000000 : ℚ), 3⟩,
    ⟨(164930605907/500000000000 : ℚ), (7100672601/10000000000 : ℚ), (-31959032501/125000000000 : ℚ), 3⟩,
    ⟨(84210268793/250000000000 : ℚ), (5000753981/10000000000 : ℚ), (-185702111969/1000000000000 : ℚ), 3⟩,
    ⟨(34392341373/100000000000 : ℚ), (3326313657/10000000000 : ℚ), (-5149190053/40000000000 : ℚ), 3⟩,
    ⟨(70208004139/200000000000 : ℚ), (986703609/5000000000 : ℚ), (-81735334647/1000000000000 : ℚ), 3⟩,
    ⟨(89530589813/250000000000 : ℚ), (216959711/2500000000 : ℚ), (-8509231463/200000000000 : ℚ), 3⟩,
    ⟨(36510222261/100000000000 : ℚ), (-44314101/10000000000 : ℚ), (-957051923/100000000000 : ℚ), 3⟩,
    ⟨(371912390869/1000000000000 : ℚ), (-802847667/10000000000 : ℚ), (1837549109/100000000000 : ℚ), 3⟩,
    ⟨(75697455677/200000000000 : ℚ), (-287503661/2000000000 : ℚ), (2109181351/50000000000 : ℚ), 3⟩,
    ⟨(192381782699/500000000000 : ℚ), (-1970820353/10000000000 : ℚ), (195413881/3125000000 : ℚ), 3⟩,
    ⟨(48835100979/125000000000 : ℚ), (-1209955241/5000000000 : ℚ), (1249098711/15625000000 : ℚ), 2⟩,
    ⟨(24761376213/62500000000 : ℚ), (-559592841/2000000000 : ℚ), (47407266241/500000000000 : ℚ), 2⟩,
    ⟨(401214220453/1000000000000 : ℚ), (-3115146643/10000000000 : ℚ), (107459469427/1000000000000 : ℚ), 2⟩,
    ⟨(405728948117/1000000000000 : ℚ), (-3379316359/10000000000 : ℚ), (118117285723/1000000000000 : ℚ), 2⟩,
    ⟨(409682723107/1000000000000 : ℚ), (-3596541089/10000000000 : ℚ), (126973253417/1000000000000 : ℚ), 2⟩,
    ⟨(51629683551/125000000000 : ℚ), (-3771478413/10000000000 : ℚ), (67084623549/500000000000 : ℚ), 2⟩,
    ⟨(103940218997/250000000000 : ℚ), (-195382873/500000000 : ℚ), (27962476251/200000000000 : ℚ), 2⟩,
    ⟨(52228339743/125000000000 : ℚ), (-2003843173/5000000000 : ℚ), (35995369003/250000000000 : ℚ), 2⟩,
    ⟨(419215099089/1000000000000 : ℚ), (-16293609/40000000 : ℚ), (7336590513/50000000000 : ℚ), 2⟩,
    ⟨(52489081069/125000000000 : ℚ), (-2052987777/5000000000 : ℚ), (37024616681/250000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4110034027/10000000000 : ℚ), (74134452427/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (169272527779/500000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (3/5 : ℚ)
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
theorem certOK : JointInheritedControls.control499.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control499.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate499

-- Control500
namespace DiagonalRamsey.JointInheritedCertificate500
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(36432733209/125000000000 : ℚ), (15240842344093/10000000000 : ℚ), (-444951702406947/1000000000000 : ℚ), 12⟩,
    ⟨(146064281319/500000000000 : ℚ), (1667073695741/10000000000 : ℚ), (-24580775481451/500000000000 : ℚ), 9⟩,
    ⟨(146727767957/500000000000 : ℚ), (73104897643/1250000000 : ℚ), (-437454887351/25000000000 : ℚ), 7⟩,
    ⟨(147715003011/500000000000 : ℚ), (288339658229/10000000000 : ℚ), (-8774435311761/1000000000000 : ℚ), 6⟩,
    ⟨(59606591547/200000000000 : ℚ), (83629622411/5000000000 : ℚ), (-2592102618427/500000000000 : ℚ), 6⟩,
    ⟨(60247864641/200000000000 : ℚ), (106556514507/10000000000 : ℚ), (-3366617694661/1000000000000 : ℚ), 5⟩,
    ⟨(15250911169/50000000000 : ℚ), (72039041251/10000000000 : ℚ), (-1160504625037/500000000000 : ℚ), 5⟩,
    ⟨(154666632693/500000000000 : ℚ), (10132186747/2000000000 : ℚ), (-1664757110333/1000000000000 : ℚ), 4⟩,
    ⟨(314142893009/1000000000000 : ℚ), (457197921/125000000 : ℚ), (-612973098749/500000000000 : ℚ), 4⟩,
    ⟨(159700393453/500000000000 : ℚ), (5369984183/2000000000 : ℚ), (-91803967687/100000000000 : ℚ), 4⟩,
    ⟨(65011262137/200000000000 : ℚ), (9940830117/5000000000 : ℚ), (-86703482307/125000000000 : ℚ), 4⟩,
    ⟨(331054998559/1000000000000 : ℚ), (14737965291/10000000000 : ℚ), (-20998960279/40000000000 : ℚ), 3⟩,
    ⟨(337339079887/1000000000000 : ℚ), (10846266597/10000000000 : ℚ), (-197488677249/500000000000 : ℚ), 3⟩,
    ⟨(42981004441/125000000000 : ℚ), (7840073029/10000000000 : ℚ), (-292633691547/1000000000000 : ℚ), 3⟩,
    ⟨(175259590341/500000000000 : ℚ), (5476461663/10000000000 : ℚ), (-210606044031/1000000000000 : ℚ), 3⟩,
    ⟨(14291530743/40000000000 : ℚ), (717925957/2000000000 : ℚ), (-35963650981/250000000000 : ℚ), 3⟩,
    ⟨(36409010919/100000000000 : ℚ), (257946439/1250000000 : ℚ), (-88829155281/1000000000000 : ℚ), 3⟩,
    ⟨(370859197083/1000000000000 : ℚ), (815389767/10000000000 : ℚ), (-42974743117/1000000000000 : ℚ), 3⟩,
    ⟨(377530342237/1000000000000 : ℚ), (-21523171/1000000000 : ℚ), (-552379047/125000000000 : ℚ), 3⟩,
    ⟨(192019648939/500000000000 : ℚ), (-536430163/5000000000 : ℚ), (28231161993/1000000000000 : ℚ), 3⟩,
    ⟨(195161689603/500000000000 : ℚ), (-111928713/625000000 : ℚ), (56025689061/1000000000000 : ℚ), 3⟩,
    ⟨(9908051677/25000000000 : ℚ), (-1197239263/5000000000 : ℚ), (7976379353/100000000000 : ℚ), 3⟩,
    ⟨(401977590859/1000000000000 : ℚ), (-1451498077/5000000000 : ℚ), (50029368639/500000000000 : ℚ), 3⟩,
    ⟨(101808871189/250000000000 : ℚ), (-3331231251/10000000000 : ℚ), (117383676681/1000000000000 : ℚ), 2⟩,
    ⟨(412045112379/1000000000000 : ℚ), (-3690626089/10000000000 : ℚ), (132104785883/1000000000000 : ℚ), 2⟩,
    ⟨(83272030877/200000000000 : ℚ), (-249377017/625000000 : ℚ), (72252766841/500000000000 : ℚ), 2⟩,
    ⟨(2625869091/6250000000 : ℚ), (-1059071873/2500000000 : ℚ), (19350588059/125000000000 : ℚ), 2⟩,
    ⟨(42334542003/100000000000 : ℚ), (-2217320961/5000000000 : ℚ), (163169900513/1000000000000 : ℚ), 2⟩,
    ⟨(425948371743/1000000000000 : ℚ), (-4589074297/10000000000 : ℚ), (84863849989/500000000000 : ℚ), 2⟩,
    ⟨(427922841851/1000000000000 : ℚ), (-2351262543/5000000000 : ℚ), (4364281681/25000000000 : ℚ), 2⟩,
    ⟨(429249815127/1000000000000 : ℚ), (-4777065473/10000000000 : ℚ), (4444148787/25000000000 : ℚ), 2⟩,
    ⟨(429916512093/1000000000000 : ℚ), (-481401481/1000000000 : ℚ), (3587064619/20000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-481861861/1000000000 : ℚ), (179551175131/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (77956879017/250000000000 : ℚ)
  μ := (43/100 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control500.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control500.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate500

-- Control501
namespace DiagonalRamsey.JointInheritedCertificate501
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(299032575439/1000000000000 : ℚ), (15367550690943/10000000000 : ℚ), (-230149407357789/500000000000 : ℚ), 12⟩,
    ⟨(74927740763/250000000000 : ℚ), (33621701487/200000000 : ℚ), (-25429011002651/500000000000 : ℚ), 9⟩,
    ⟨(150530602517/500000000000 : ℚ), (589835360391/10000000000 : ℚ), (-18102623600041/1000000000000 : ℚ), 7⟩,
    ⟨(151535148909/500000000000 : ℚ), (290852771621/10000000000 : ℚ), (-9078005421107/1000000000000 : ℚ), 6⟩,
    ⟨(305718892741/1000000000000 : ℚ), (42187827471/2500000000 : ℚ), (-83812153309/15625000000 : ℚ), 6⟩,
    ⟨(154490741193/500000000000 : ℚ), (107532552573/10000000000 : ℚ), (-1741868673877/500000000000 : ℚ), 5⟩,
    ⟨(39103330779/125000000000 : ℚ), (72719125309/10000000000 : ℚ), (-600526985233/250000000000 : ℚ), 5⟩,
    ⟨(9913042289/31250000000 : ℚ), (10231233359/2000000000 : ℚ), (-430817521703/250000000000 : ℚ), 4⟩,
    ⟨(322111318527/1000000000000 : ℚ), (9237085863/2500000000 : ℚ), (-1269379169701/1000000000000 : ℚ), 4⟩,
    ⟨(163730705253/500000000000 : ℚ), (13568584331/5000000000 : ℚ), (-475456710199/500000000000 : ℚ), 4⟩,
    ⟨(83304026219/250000000000 : ℚ), (20107580507/10000000000 : ℚ), (-718827628109/1000000000000 : ℚ), 4⟩,
    ⟨(21207498799/62500000000 : ℚ), (1864820841/1250000000 : ℚ), (-136106994887/250000000000 : ℚ), 3⟩,
    ⟨(43214281821/125000000000 : ℚ), (5496329957/5000000000 : ℚ), (-51252923293/125000000000 : ℚ), 3⟩,
    ⟨(88084336469/250000000000 : ℚ), (7960206787/10000000000 : ℚ), (-304229512273/1000000000000 : ℚ), 3⟩,
    ⟨(359125470719/1000000000000 : ℚ), (2788083303/5000000000 : ℚ), (-27431958167/125000000000 : ℚ), 3⟩,
    ⟨(366013255743/1000000000000 : ℚ), (229579581/625000000 : ℚ), (-75243738943/500000000000 : ℚ), 3⟩,
    ⟨(372934367813/1000000000000 : ℚ), (2134482319/10000000000 : ℚ), (-93651484897/1000000000000 : ℚ), 3⟩,
    ⟨(379822152837/1000000000000 : ℚ), (438071029/5000000000 : ℚ), (-11575937621/250000000000 : ℚ), 3⟩,
    ⟨(4832628471/12500000000 : ℚ), (-162623041/10000000000 : ℚ), (-3253226839/500000000000 : ℚ), 3⟩,
    ⟨(393233368989/1000000000000 : ℚ), (-1026802223/10000000000 : ℚ), (6795646729/250000000000 : ℚ), 3⟩,
    ⟨(399627642773/1000000000000 : ℚ), (-1750081739/10000000000 : ℚ), (55850398213/1000000000000 : ℚ), 3⟩,
    ⟨(10143287967/25000000000 : ℚ), (-2357961433/10000000000 : ℚ), (8032476683/100000000000 : ℚ), 3⟩,
    ⟨(8229724261/20000000000 : ℚ), (-286991567/1000000000 : ℚ), (101241073139/1000000000000 : ℚ), 3⟩,
    ⟨(41683630503/100000000000 : ℚ), (-660183569/2000000000 : ℚ), (23817946709/200000000000 : ℚ), 2⟩,
    ⟨(105432567577/250000000000 : ℚ), (-91563313/250000000 : ℚ), (16781306173/125000000000 : ℚ), 2⟩,
    ⟨(17044839093/40000000000 : ℚ), (-3963708241/10000000000 : ℚ), (73508652319/500000000000 : ℚ), 2⟩,
    ⟨(42996614117/100000000000 : ℚ), (-526419917/1250000000 : ℚ), (9851087129/62500000000 : ℚ), 2⟩,
    ⟨(6769198919/15625000000 : ℚ), (-4410796073/10000000000 : ℚ), (166224777683/1000000000000 : ℚ), 2⟩,
    ⟨(217938662869/500000000000 : ℚ), (-228302179/500000000 : ℚ), (43242744583/250000000000 : ℚ), 2⟩,
    ⟨(218943209261/500000000000 : ℚ), (-936015431/2000000000 : ℚ), (177952846209/1000000000000 : ℚ), 2⟩,
    ⟨(87847332101/200000000000 : ℚ), (-4754992821/10000000000 : ℚ), (90619171973/500000000000 : ℚ), 2⟩,
    ⟨(219957524059/500000000000 : ℚ), (-2396062947/5000000000 : ℚ), (182870622287/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-29979703/62500000 : ℚ), (18307417243/100000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (152879872839/500000000000 : ℚ)
  μ := (11/25 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control501.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control501.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate501

-- Control502
namespace DiagonalRamsey.JointInheritedCertificate502
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(153274437407/500000000000 : ℚ), (15481317126043/10000000000 : ℚ), (-475356408027529/1000000000000 : ℚ), 12⟩,
    ⟨(307239214917/1000000000000 : ℚ), (1693659985723/10000000000 : ℚ), (-26261072988357/500000000000 : ℚ), 9⟩,
    ⟨(308613246771/1000000000000 : ℚ), (594315495227/10000000000 : ℚ), (-2336909898051/125000000000 : ℚ), 7⟩,
    ⟨(310657737697/1000000000000 : ℚ), (293103393691/10000000000 : ℚ), (-9375472008163/1000000000000 : ℚ), 6⟩,
    ⟨(313352998131/1000000000000 : ℚ), (170085189173/10000000000 : ℚ), (-173124384493/31250000000 : ℚ), 6⟩,
    ⟨(7916826781/25000000000 : ℚ), (10840316533/1000000000 : ℚ), (-89956716029/25000000000 : ℚ), 5⟩,
    ⟨(320585982907/1000000000000 : ℚ), (9165511229/1250000000 : ℚ), (-2481298479769/1000000000000 : ℚ), 5⟩,
    ⟨(81263512413/250000000000 : ℚ), (51595255441/10000000000 : ℚ), (-14242417679/8000000000 : ℚ), 4⟩,
    ⟨(330034241551/1000000000000 : ℚ), (232983451/62500000 : ℚ), (-81976085671/62500000000 : ℚ), 4⟩,
    ⟨(335478596633/1000000000000 : ℚ), (27389743907/10000000000 : ℚ), (-982793472391/1000000000000 : ℚ), 4⟩,
    ⟨(170667341391/500000000000 : ℚ), (20305221687/10000000000 : ℚ), (-743180573991/1000000000000 : ℚ), 4⟩,
    ⟨(10860815709/31250000000 : ℚ), (15075655083/10000000000 : ℚ), (-281572895761/500000000000 : ℚ), 3⟩,
    ⟨(354053036981/1000000000000 : ℚ), (694948583/625000000 : ℚ), (-16976752509/40000000000 : ℚ), 3⟩,
    ⟨(360792820327/1000000000000 : ℚ), (4031647157/5000000000 : ℚ), (-315242310707/1000000000000 : ℚ), 3⟩,
    ⟨(11490642029/31250000000 : ℚ), (5661062157/10000000000 : ℚ), (-227776628869/1000000000000 : ℚ), 3⟩,
    ⟨(18735484281/50000000000 : ℚ), (1871949633/5000000000 : ℚ), (-156636101059/1000000000000 : ℚ), 3⟩,
    ⟨(381752740547/1000000000000 : ℚ), (1096913467/5000000000 : ℚ), (-612664417/6250000000 : ℚ), 3⟩,
    ⟨(388761881239/1000000000000 : ℚ), (926514511/10000000000 : ℚ), (-49215977197/1000000000000 : ℚ), 3⟩,
    ⟨(4945870073/12500000000 : ℚ), (-119417237/10000000000 : ℚ), (-4101505613/500000000000 : ℚ), 3⟩,
    ⟨(201204694593/500000000000 : ℚ), (-3957351/40000000 : ℚ), (26502873311/1000000000000 : ℚ), 3⟩,
    ⟨(408916323479/1000000000000 : ℚ), (-1717224573/10000000000 : ℚ), (56025206763/1000000000000 : ℚ), 3⟩,
    ⟨(83025548677/200000000000 : ℚ), (-1164401749/5000000000 : ℚ), (20304950827/250000000000 : ℚ), 3⟩,
    ⟨(210491914767/500000000000 : ℚ), (-2843725879/10000000000 : ℚ), (25685941353/250000000000 : ℚ), 3⟩,
    ⟨(53303523077/125000000000 : ℚ), (-1638552369/5000000000 : ℚ), (60552230657/500000000000 : ℚ), 2⟩,
    ⟨(86281675303/200000000000 : ℚ), (-3640615241/10000000000 : ℚ), (34173719253/250000000000 : ℚ), 2⟩,
    ⟨(21793822163/50000000000 : ℚ), (-3943293633/10000000000 : ℚ), (149819520641/1000000000000 : ℚ), 2⟩,
    ⟨(439789354927/1000000000000 : ℚ), (-131003861/312500000 : ℚ), (160713644963/1000000000000 : ℚ), 2⟩,
    ⟨(110777357009/250000000000 : ℚ), (-549058699/1250000000 : ℚ), (169557647139/1000000000000 : ℚ), 2⟩,
    ⟨(44580468847/100000000000 : ℚ), (-4548398797/10000000000 : ℚ), (88243950317/500000000000 : ℚ), 2⟩,
    ⟨(111962294849/250000000000 : ℚ), (-4662917897/10000000000 : ℚ), (181604868799/1000000000000 : ℚ), 2⟩,
    ⟨(359378569/800000000 : ℚ), (-4738145313/10000000000 : ℚ), (184979075031/1000000000000 : ℚ), 2⟩,
    ⟨(449913551353/1000000000000 : ℚ), (-2387715373/5000000000 : ℚ), (186655308271/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-2390038107/5000000000 : ℚ), (186864334271/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (5994709181/20000000000 : ℚ)
  μ := (9/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control502.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control502.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate502

-- Control503
namespace DiagonalRamsey.JointInheritedCertificate503
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(232666777873/1000000000000 : ℚ), (14363112756443/10000000000 : ℚ), (-334769355239289/1000000000000 : ℚ), 12⟩,
    ⟨(9329257157/40000000000 : ℚ), (157003122423/1000000000 : ℚ), (-36983902747331/1000000000000 : ℚ), 9⟩,
    ⟨(234355293129/1000000000000 : ℚ), (137561860917/2500000000 : ℚ), (-2632176012773/200000000000 : ℚ), 7⟩,
    ⟨(11801377353/50000000000 : ℚ), (270948413961/10000000000 : ℚ), (-3298578444689/500000000000 : ℚ), 6⟩,
    ⟨(119116042999/500000000000 : ℚ), (31388103089/2000000000 : ℚ), (-15217849993/3906250000 : ℚ), 6⟩,
    ⟨(240947679027/1000000000000 : ℚ), (19962347847/2000000000 : ℚ), (-632011830319/250000000000 : ℚ), 5⟩,
    ⟨(3814815211/15625000000 : ℚ), (67343598551/10000000000 : ℚ), (-1741109747479/1000000000000 : ℚ), 5⟩,
    ⟨(49560549383/200000000000 : ℚ), (47245087303/10000000000 : ℚ), (-1247079545283/1000000000000 : ℚ), 4⟩,
    ⟨(251876203721/1000000000000 : ℚ), (425114147/125000000 : ℚ), (-229153102073/250000000000 : ℚ), 4⟩,
    ⟨(64082328577/250000000000 : ℚ), (12436401003/5000000000 : ℚ), (-136920288867/200000000000 : ℚ), 4⟩,
    ⟨(16319949549/62500000000 : ℚ), (4582071127/2500000000 : ℚ), (-257689353553/500000000000 : ℚ), 4⟩,
    ⟨(133099855001/500000000000 : ℚ), (13497415563/10000000000 : ℚ), (-3031861199/7812500000 : ℚ), 3⟩,
    ⟨(54304387561/200000000000 : ℚ), (9841571519/10000000000 : ℚ), (-289836788581/1000000000000 : ℚ), 3⟩,
    ⟨(69258655057/250000000000 : ℚ), (7016181537/10000000000 : ℚ), (-212378497733/1000000000000 : ℚ), 3⟩,
    ⟨(282684667127/1000000000000 : ℚ), (1198251759/2500000000 : ℚ), (-75093529523/500000000000 : ℚ), 3⟩,
    ⟨(144208832731/500000000000 : ℚ), (603278867/2000000000 : ℚ), (-2486872661/25000000000 : ℚ), 3⟩,
    ⟨(294178403323/1000000000000 : ℚ), (1577542741/10000000000 : ℚ), (-57575572567/1000000000000 : ℚ), 3⟩,
    ⟨(299911401657/1000000000000 : ℚ), (49848797/1250000000 : ℚ), (-4514343439/200000000000 : ℚ), 3⟩,
    ⟨(76390362139/250000000000 : ℚ), (-576298163/10000000000 : ℚ), (6940156641/1000000000000 : ℚ), 3⟩,
    ⟨(15553706549/50000000000 : ℚ), (-1389363339/10000000000 : ℚ), (32002859367/1000000000000 : ℚ), 3⟩,
    ⟨(158198179391/500000000000 : ℚ), (-1035764201/5000000000 : ℚ), (53400778909/1000000000000 : ℚ), 3⟩,
    ⟨(321476876001/1000000000000 : ℚ), (-2646307603/10000000000 : ℚ), (71729738243/1000000000000 : ℚ), 3⟩,
    ⟨(326266754477/1000000000000 : ℚ), (-3131622137/10000000000 : ℚ), (21861426911/250000000000 : ℚ), 3⟩,
    ⟨(330719865063/1000000000000 : ℚ), (-3541221943/10000000000 : ℚ), (50449708337/500000000000 : ℚ), 3⟩,
    ⟨(33479332187/100000000000 : ℚ), (-1942851907/5000000000 : ℚ), (112361367023/1000000000000 : ℚ), 3⟩,
    ⟨(338447895281/1000000000000 : ℚ), (-4173250061/10000000000 : ℚ), (122040184729/1000000000000 : ℚ), 2⟩,
    ⟨(341648389757/1000000000000 : ℚ), (-4410170123/10000000000 : ℚ), (32524064029/250000000000 : ℚ), 2⟩,
    ⟨(344363982787/1000000000000 : ℚ), (-920260121/2000000000 : ℚ), (85407471/625000000 : ℚ), 2⟩,
    ⟨(13862740869/40000000000 : ℚ), (-148446921/312500000 : ℚ), (141799333061/1000000000000 : ℚ), 2⟩,
    ⟨(43530096957/125000000000 : ℚ), (-4859874253/10000000000 : ℚ), (18200737763/125000000000 : ℚ), 2⟩,
    ⟨(17468231993/50000000000 : ℚ), (-4931919953/10000000000 : ℚ), (148118863901/1000000000000 : ℚ), 2⟩,
    ⟨(10935290341/31250000000 : ℚ), (-620956081/1250000000 : ℚ), (149368105411/1000000000000 : ℚ), 2⟩,
    ⟨(7/20 : ℚ), (-1243025277/2500000000 : ℚ), (29904785157/200000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (179946644443/500000000000 : ℚ)
  μ := (7/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control503.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control503.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate503

-- Control504
namespace DiagonalRamsey.JointInheritedCertificate504
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(70996733297/250000000000 : ℚ), (15125392147751/10000000000 : ℚ), (-430261304141121/1000000000000 : ℚ), 12⟩,
    ⟨(284641478591/1000000000000 : ℚ), (827155081309/5000000000 : ℚ), (-23768946845877/500000000000 : ℚ), 9⟩,
    ⟨(285944265767/1000000000000 : ℚ), (290145015133/5000000000 : ℚ), (-16919869577821/1000000000000 : ℚ), 7⟩,
    ⟨(71970687041/250000000000 : ℚ), (286052970273/10000000000 : ℚ), (-8484099060799/1000000000000 : ℚ), 6⟩,
    ⟨(18152391071/62500000000 : ℚ), (41475714169/2500000000 : ℚ), (-626546534231/125000000000 : ℚ), 6⟩,
    ⟨(146793090867/500000000000 : ℚ), (52835126549/5000000000 : ℚ), (-3254759180809/1000000000000 : ℚ), 5⟩,
    ⟨(11891848229/40000000000 : ℚ), (2856894871/400000000 : ℚ), (-560908179147/250000000000 : ℚ), 5⟩,
    ⟨(301532599549/1000000000000 : ℚ), (50212613091/10000000000 : ℚ), (-160900230931/100000000000 : ℚ), 4⟩,
    ⟨(153127282209/500000000000 : ℚ), (18119622491/5000000000 : ℚ), (-118462877857/100000000000 : ℚ), 4⟩,
    ⟨(77854156307/250000000000 : ℚ), (26590924001/10000000000 : ℚ), (-886832537451/1000000000000 : ℚ), 4⟩,
    ⟨(9905283391/31250000000 : ℚ), (4919610363/2500000000 : ℚ), (-669769447517/1000000000000 : ℚ), 4⟩,
    ⟨(322858421207/1000000000000 : ℚ), (14575934211/10000000000 : ℚ), (-506618899487/1000000000000 : ℚ), 3⟩,
    ⟨(105288949/320000000 : ℚ), (10715296971/10000000000 : ℚ), (-380845177839/1000000000000 : ℚ), 3⟩,
    ⟨(335418285683/1000000000000 : ℚ), (1933230289/2500000000 : ℚ), (-140903959023/500000000000 : ℚ), 3⟩,
    ⟨(2671623743/7812500000 : ℚ), (1346953693/2500000000 : ℚ), (-40482597047/200000000000 : ℚ), 3⟩,
    ⟨(87153387527/250000000000 : ℚ), (1757754821/5000000000 : ℚ), (-17223454193/125000000000 : ℚ), 3⟩,
    ⟨(177645708433/500000000000 : ℚ), (1000473683/5000000000 : ℚ), (-84499589313/1000000000000 : ℚ), 3⟩,
    ⟨(361937127871/1000000000000 : ℚ), (380959689/5000000000 : ℚ), (-40079032493/1000000000000 : ℚ), 3⟩,
    ⟨(368486681291/1000000000000 : ℚ), (-261380071/10000000000 : ℚ), (-2716268569/1000000000000 : ℚ), 3⟩,
    ⟨(374877001349/1000000000000 : ℚ), (-55656661/500000000 : ℚ), (1446751729/50000000000 : ℚ), 3⟩,
    ⟨(381046545767/1000000000000 : ℚ), (-182640847/1000000000 : ℚ), (27944595027/500000000000 : ℚ), 3⟩,
    ⟨(193467949231/500000000000 : ℚ), (-606556693/2500000000 : ℚ), (78918175783/1000000000000 : ℚ), 3⟩,
    ⟨(196244170873/500000000000 : ℚ), (-586337529/2000000000 : ℚ), (98614137649/1000000000000 : ℚ), 3⟩,
    ⟨(99412600639/250000000000 : ℚ), (-209841811/625000000 : ℚ), (57716883911/500000000000 : ℚ), 3⟩,
    ⟨(16094894697/40000000000 : ℚ), (-3714901353/10000000000 : ℚ), (64865174497/500000000000 : ℚ), 2⟩,
    ⟨(406608761249/1000000000000 : ℚ), (-2006373943/5000000000 : ℚ), (70888622369/500000000000 : ℚ), 2⟩,
    ⟨(10257969631/25000000000 : ℚ), (-851555271/2000000000 : ℚ), (151785337927/1000000000000 : ℚ), 2⟩,
    ⟨(206733354919/500000000000 : ℚ), (-4455182147/10000000000 : ℚ), (159916097911/1000000000000 : ℚ), 2⟩,
    ⟨(41602221881/100000000000 : ℚ), (-4608901739/10000000000 : ℚ), (41572853193/250000000000 : ℚ), 2⟩,
    ⟨(417960701207/1000000000000 : ℚ), (-2360921953/5000000000 : ℚ), (85500477577/500000000000 : ℚ), 2⟩,
    ⟨(419263488383/1000000000000 : ℚ), (-4796057247/10000000000 : ℚ), (174107600943/1000000000000 : ℚ), 2⟩,
    ⟨(209959016893/500000000000 : ℚ), (-2416423303/5000000000 : ℚ), (87825623327/500000000000 : ℚ), 2⟩,
    ⟨(21/50 : ℚ), (-4837430573/10000000000 : ℚ), (175843754461/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (21/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (7/10 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (31785892677/100000000000 : ℚ)
  μ := (21/50 : ℚ)
  β := (999/1000 : ℚ)
  w := (7/10 : ℚ)
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
theorem certOK : JointInheritedControls.control504.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control504.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate504

-- Control505
namespace DiagonalRamsey.JointInheritedCertificate505
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(202844292641/1000000000000 : ℚ), (15124091862647/10000000000 : ℚ), (-76823845490759/250000000000 : ℚ), 12⟩,
    ⟨(50827960499/250000000000 : ℚ), (1653729267857/10000000000 : ℚ), (-33940849221871/1000000000000 : ℚ), 9⟩,
    ⟨(4084848759/20000000000 : ℚ), (72470241511/1250000000 : ℚ), (-12072281666841/1000000000000 : ℚ), 7⟩,
    ⟨(41125423671/200000000000 : ℚ), (142766711971/5000000000 : ℚ), (-6047007725821/1000000000000 : ℚ), 7⟩,
    ⟨(103726273991/500000000000 : ℚ), (82690089529/5000000000 : ℚ), (-1783589409683/500000000000 : ℚ), 6⟩,
    ⟨(104850573473/500000000000 : ℚ), (21027800319/2000000000 : ℚ), (-288947747689/125000000000 : ℚ), 5⟩,
    ⟨(212351260009/1000000000000 : ℚ), (70879062631/10000000000 : ℚ), (-1589105366827/1000000000000 : ℚ), 5⟩,
    ⟨(107688682567/500000000000 : ℚ), (49654614791/10000000000 : ℚ), (-567745196663/500000000000 : ℚ), 5⟩,
    ⟨(8750012771/40000000000 : ℚ), (3566441207/1000000000 : ℚ), (-332802087/400000000 : ℚ), 4⟩,
    ⟨(347558811/1562500000 : ℚ), (25997456811/10000000000 : ℚ), (-24755413161/40000000000 : ℚ), 4⟩,
    ⟨(113201906761/500000000000 : ℚ), (953241381/500000000 : ℚ), (-18535600991/40000000000 : ℚ), 4⟩,
    ⟨(115305323147/500000000000 : ℚ), (13940923207/10000000000 : ℚ), (-86591575203/250000000000 : ℚ), 4⟩,
    ⟨(235017623257/1000000000000 : ℚ), (502894441/500000000 : ℚ), (-128003716351/500000000000 : ℚ), 3⟩,
    ⟨(239582302813/1000000000000 : ℚ), (705236127/1000000000 : ℚ), (-92358911229/500000000000 : ℚ), 3⟩,
    ⟨(244260724603/1000000000000 : ℚ), (4683591149/10000000000 : ℚ), (-31858794009/250000000000 : ℚ), 3⟩,
    ⟨(249007832867/1000000000000 : ℚ), (2787350591/10000000000 : ℚ), (-8068424627/100000000000 : ℚ), 3⟩,
    ⟨(253777910359/1000000000000 : ℚ), (1248818741/10000000000 : ℚ), (-21009524887/500000000000 : ℚ), 3⟩,
    ⟨(258525018623/1000000000000 : ℚ), (-436851/312500000 : ℚ), (-9681409313/1000000000000 : ℚ), 3⟩,
    ⟨(263203440413/1000000000000 : ℚ), (-1060620561/10000000000 : ℚ), (17615036853/1000000000000 : ℚ), 3⟩,
    ⟨(267768119969/1000000000000 : ℚ), (-1935065811/10000000000 : ℚ), (4082544383/100000000000 : ℚ), 3⟩,
    ⟨(68043774233/250000000000 : ℚ), (-2670170299/10000000000 : ℚ), (1213353179/20000000000 : ℚ), 3⟩,
    ⟨(34547741213/125000000000 : ℚ), (-3290752267/10000000000 : ℚ), (77686378679/1000000000000 : ℚ), 3⟩,
    ⟨(280348104187/1000000000000 : ℚ), (-238482541/625000000 : ℚ), (92297902027/1000000000000 : ℚ), 3⟩,
    ⟨(284035423951/1000000000000 : ℚ), (-4259576523/10000000000 : ℚ), (20964388543/200000000000 : ℚ), 3⟩,
    ⟨(71852094523/250000000000 : ℚ), (-2316744417/5000000000 : ℚ), (28876158569/250000000000 : ℚ), 3⟩,
    ⟨(290434483217/1000000000000 : ℚ), (-4946075467/10000000000 : ℚ), (15566927481/125000000000 : ℚ), 3⟩,
    ⟨(7327114907/25000000000 : ℚ), (-5203976289/10000000000 : ℚ), (132059612907/1000000000000 : ℚ), 3⟩,
    ⟨(73833298811/250000000000 : ℚ), (-5412276729/10000000000 : ℚ), (138187824207/1000000000000 : ℚ), 3⟩,
    ⟨(297158624871/1000000000000 : ℚ), (-5574821621/10000000000 : ℚ), (14300306411/100000000000 : ℚ), 3⟩,
    ⟨(74635826319/250000000000 : ℚ), (-2847223277/5000000000 : ℚ), (73283034397/500000000000 : ℚ), 2⟩,
    ⟨(29947390123/100000000000 : ℚ), (-5773145387/10000000000 : ℚ), (14891922123/100000000000 : ℚ), 2⟩,
    ⟨(59988290117/200000000000 : ℚ), (-2906093287/5000000000 : ℚ), (75044657153/500000000000 : ℚ), 2⟩,
    ⟨(3/10 : ℚ), (-1163410489/2000000000 : ℚ), (37558819047/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/5 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (562499/1000000 : ℚ)
  x := (374236431551/1000000000000 : ℚ)
  μ := (3/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/5 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control505.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control505.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate505
