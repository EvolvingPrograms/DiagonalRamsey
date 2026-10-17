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

-- Control164
namespace DiagonalRamsey.JointInheritedCertificate164
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(106707748407/500000000000 : ℚ), (2187481550067/2500000000 : ℚ), (-187380708023781/1000000000000 : ℚ), 11⟩,
    ⟨(214457781899/1000000000000 : ℚ), (237021020997/2500000000 : ℚ), (-20727736922587/1000000000000 : ℚ), 8⟩,
    ⟨(43306462859/200000000000 : ℚ), (328418181771/10000000000 : ℚ), (-3697713074703/500000000000 : ℚ), 6⟩,
    ⟨(219619115119/1000000000000 : ℚ), (159712680747/10000000000 : ℚ), (-1861070142889/500000000000 : ℚ), 5⟩,
    ⟨(111844228397/500000000000 : ℚ), (91404374159/10000000000 : ℚ), (-2210381507051/1000000000000 : ℚ), 5⟩,
    ⟨(228701149333/1000000000000 : ℚ), (28758287021/5000000000 : ℚ), (-722497447621/500000000000 : ℚ), 4⟩,
    ⟨(234608917769/1000000000000 : ℚ), (9619989331/2500000000 : ℚ), (-200926170751/200000000000 : ℚ), 4⟩,
    ⟨(12067743353/50000000000 : ℚ), (26847483673/10000000000 : ℚ), (-71110851/97656250 : ℚ), 3⟩,
    ⟨(248874030027/1000000000000 : ℚ), (19292777063/10000000000 : ℚ), (-543236070073/1000000000000 : ℚ), 3⟩,
    ⟨(128546996511/500000000000 : ℚ), (3538339569/2500000000 : ℚ), (-413373429637/1000000000000 : ℚ), 3⟩,
    ⟨(265935593307/1000000000000 : ℚ), (5263096261/5000000000 : ℚ), (-12744949573/40000000000 : ℚ), 3⟩,
    ⟨(275313681437/1000000000000 : ℚ), (246508851/312500000 : ℚ), (-247308951187/1000000000000 : ℚ), 3⟩,
    ⟨(285137941297/1000000000000 : ℚ), (5920953991/10000000000 : ℚ), (-96115581623/500000000000 : ℚ), 2⟩,
    ⟨(59062751979/200000000000 : ℚ), (884374887/2000000000 : ℚ), (-148761029023/1000000000000 : ℚ), 2⟩,
    ⟨(61148627707/200000000000 : ℚ), (814538367/2500000000 : ℚ), (-56907293319/500000000000 : ℚ), 2⟩,
    ⟨(316325636599/1000000000000 : ℚ), (2339995839/10000000000 : ℚ), (-17055214251/200000000000 : ℚ), 2⟩,
    ⟨(163479669423/500000000000 : ℚ), (401312311/2500000000 : ℚ), (-1541439221/25000000000 : ℚ), 2⟩,
    ⟨(33754183691/100000000000 : ℚ), (252499701/2500000000 : ℚ), (-41890578421/1000000000000 : ℚ), 2⟩,
    ⟨(347971215549/1000000000000 : ℚ), (261329143/5000000000 : ℚ), (-25194102523/1000000000000 : ℚ), 2⟩,
    ⟨(89536758537/250000000000 : ℚ), (6007759/500000000 : ℚ), (-1373592531/125000000000 : ℚ), 2⟩,
    ⟨(45996411751/125000000000 : ℚ), (-53647923/2500000000 : ℚ), (1160695663/1000000000000 : ℚ), 2⟩,
    ⟨(188674691069/500000000000 : ℚ), (-247187519/5000000000 : ℚ), (11584378149/1000000000000 : ℚ), 2⟩,
    ⟨(386190982423/1000000000000 : ℚ), (-45554373/625000000 : ℚ), (2566848669/125000000000 : ℚ), 2⟩,
    ⟨(394410945417/1000000000000 : ℚ), (-9254521/100000000 : ℚ), (14103054219/500000000000 : ℚ), 2⟩,
    ⟨(80386021677/200000000000 : ℚ), (-1089777291/10000000000 : ℚ), (6949638331/200000000000 : ℚ), 2⟩,
    ⟨(102169014419/250000000000 : ℚ), (-245239473/2000000000 : ℚ), (40276790749/1000000000000 : ℚ), 2⟩,
    ⟨(414583826111/1000000000000 : ℚ), (-669030561/5000000000 : ℚ), (44881107213/1000000000000 : ℚ), 2⟩,
    ⟨(419596518651/1000000000000 : ℚ), (-89245857/625000000 : ℚ), (4862942007/100000000000 : ℚ), 2⟩,
    ⟨(16946634413/40000000000 : ℚ), (-748878431/5000000000 : ℚ), (51573290139/1000000000000 : ℚ), 2⟩,
    ⟨(8535053223/20000000000 : ℚ), (-1548965331/10000000000 : ℚ), (53750683849/1000000000000 : ℚ), 2⟩,
    ⟨(214413596773/500000000000 : ℚ), (-49455317/312500000 : ℚ), (13797063209/250000000000 : ℚ), 2⟩,
    ⟨(429869478631/1000000000000 : ℚ), (-12493873/78125000 : ℚ), (55902927561/1000000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-200161147/1250000000 : ℚ), (55992071593/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (42116703551/125000000000 : ℚ)
  μ := (43/100 : ℚ)
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
theorem certOK : JointInheritedControls.control164.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control164.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate164

-- Control165
namespace DiagonalRamsey.JointInheritedCertificate165
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(219374771761/1000000000000 : ℚ), (1765974859901/2000000000 : ℚ), (-38873485432229/200000000000 : ℚ), 11⟩,
    ⟨(220436502317/1000000000000 : ℚ), (191381610687/2000000000 : ℚ), (-21500658780193/1000000000000 : ℚ), 8⟩,
    ⟨(111274869191/500000000000 : ℚ), (1657764699/50000000 : ℚ), (-1534249658041/200000000000 : ℚ), 6⟩,
    ⟨(112847064169/500000000000 : ℚ), (80640444929/5000000000 : ℚ), (-1930505676107/500000000000 : ℚ), 5⟩,
    ⟨(229839389991/1000000000000 : ℚ), (92328872527/10000000000 : ℚ), (-143306220357/62500000000 : ℚ), 5⟩,
    ⟨(46989120441/200000000000 : ℚ), (58116202789/10000000000 : ℚ), (-299798533177/200000000000 : ℚ), 4⟩,
    ⟨(120481794683/500000000000 : ℚ), (38893693959/10000000000 : ℚ), (-208446163017/200000000000 : ℚ), 4⟩,
    ⟨(247835394967/1000000000000 : ℚ), (13572751467/5000000000 : ℚ), (-755492400903/1000000000000 : ℚ), 3⟩,
    ⟨(255494839763/1000000000000 : ℚ), (9757157597/5000000000 : ℚ), (-281843280981/500000000000 : ℚ), 3⟩,
    ⟨(52773631823/200000000000 : ℚ), (2864411423/2000000000 : ℚ), (-85802833807/200000000000 : ℚ), 3⟩,
    ⟨(272874713379/1000000000000 : ℚ), (2664283393/2500000000 : ℚ), (-330767222989/1000000000000 : ℚ), 3⟩,
    ⟨(56485552903/200000000000 : ℚ), (3995763357/5000000000 : ℚ), (-256831999073/1000000000000 : ℚ), 3⟩,
    ⟨(146217655709/500000000000 : ℚ), (375215901/625000000 : ℚ), (-199741908031/1000000000000 : ℚ), 2⟩,
    ⟨(15140048797/50000000000 : ℚ), (561072567/1250000000 : ℚ), (-77347317683/500000000000 : ℚ), 2⟩,
    ⟨(156712465533/500000000000 : ℚ), (414083923/1250000000 : ℚ), (-118490826387/1000000000000 : ℚ), 2⟩,
    ⟨(3242048623/10000000000 : ℚ), (2385005703/10000000000 : ℚ), (-88935383711/1000000000000 : ℚ), 2⟩,
    ⟨(335036953011/1000000000000 : ℚ), (32855523/200000000 : ℚ), (-12896887429/200000000000 : ℚ), 2⟩,
    ⟨(69163376849/200000000000 : ℚ), (1041594413/10000000000 : ℚ), (-8805828183/200000000000 : ℚ), 2⟩,
    ⟨(356440839371/1000000000000 : ℚ), (549525733/10000000000 : ℚ), (-5351770441/200000000000 : ℚ), 2⟩,
    ⟨(366806503893/1000000000000 : ℚ), (71618477/5000000000 : ℚ), (-6036013977/500000000000 : ℚ), 2⟩,
    ⟨(75362810159/200000000000 : ℚ), (-38910131/2000000000 : ℚ), (241644783/500000000000 : ℚ), 2⟩,
    ⟨(386367101931/1000000000000 : ℚ), (-15257/320000 : ℚ), (1406265883/125000000000 : ℚ), 2⟩,
    ⟨(98843414049/250000000000 : ℚ), (-356623557/5000000000 : ℚ), (20490913307/1000000000000 : ℚ), 2⟩,
    ⟨(403746975547/1000000000000 : ℚ), (-911415183/10000000000 : ℚ), (355094787/12500000000 : ℚ), 2⟩,
    ⟨(51425802543/125000000000 : ℚ), (-1077012817/10000000000 : ℚ), (17578034473/500000000000 : ℚ), 2⟩,
    ⟨(83655645189/200000000000 : ℚ), (-1214447941/10000000000 : ℚ), (40856894313/1000000000000 : ℚ), 2⟩,
    ⟨(84859242621/200000000000 : ℚ), (-1327113307/10000000000 : ℚ), (2850187589/62500000000 : ℚ), 2⟩,
    ⟨(10735060633/25000000000 : ℚ), (-141760827/1000000000 : ℚ), (9893116523/200000000000 : ℚ), 2⟩,
    ⟨(433547686973/1000000000000 : ℚ), (-743950403/5000000000 : ℚ), (26249217871/500000000000 : ℚ), 2⟩,
    ⟨(436692076929/1000000000000 : ℚ), (-1539445289/10000000000 : ℚ), (54741199701/1000000000000 : ℚ), 2⟩,
    ⟨(219402656497/500000000000 : ℚ), (-393316673/2500000000 : ℚ), (56221715841/1000000000000 : ℚ), 2⟩,
    ⟨(439867043549/1000000000000 : ℚ), (-1590018401/10000000000 : ℚ), (56957677611/1000000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-398026249/2500000000 : ℚ), (57049473939/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (333325678721/1000000000000 : ℚ)
  μ := (11/25 : ℚ)
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
theorem certOK : JointInheritedControls.control165.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control165.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate165

-- Control166
namespace DiagonalRamsey.JointInheritedCertificate166
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(112682820023/500000000000 : ℚ), (4454729354659/5000000000 : ℚ), (-1259184236901/6250000000 : ℚ), 11⟩,
    ⟨(7076458251/31250000000 : ℚ), (96569163109/1000000000 : ℚ), (-22286308292577/1000000000000 : ℚ), 8⟩,
    ⟨(228598301153/1000000000000 : ℚ), (334673153421/10000000000 : ℚ), (-7951589942093/1000000000000 : ℚ), 6⟩,
    ⟨(231799829967/1000000000000 : ℚ), (162841664357/10000000000 : ℚ), (-50026761457/12500000000 : ℚ), 5⟩,
    ⟨(236020418001/1000000000000 : ℚ), (46624424943/5000000000 : ℚ), (-1188373020739/500000000000 : ℚ), 5⟩,
    ⟨(48243883737/200000000000 : ℚ), (14678193349/2500000000 : ℚ), (-776924326807/500000000000 : ℚ), 4⟩,
    ⟨(247346762801/1000000000000 : ℚ), (1965260129/500000000 : ℚ), (-135052376471/125000000000 : ℚ), 4⟩,
    ⟨(10173737627/40000000000 : ℚ), (2744180487/1000000000 : ℚ), (-78322903947/100000000000 : ℚ), 3⟩,
    ⟨(131071035237/500000000000 : ℚ), (9867234219/5000000000 : ℚ), (-146111010953/250000000000 : ℚ), 3⟩,
    ⟨(270667547131/1000000000000 : ℚ), (14489596637/10000000000 : ℚ), (-111220903407/250000000000 : ℚ), 3⟩,
    ⟨(55967553129/200000000000 : ℚ), (1348384167/1250000000 : ℚ), (-343082902681/1000000000000 : ℚ), 3⟩,
    ⟨(144782205899/500000000000 : ℚ), (1618776509/2000000000 : ℚ), (-53297061343/200000000000 : ℚ), 3⟩,
    ⟨(299753812671/1000000000000 : ℚ), (1217030153/2000000000 : ℚ), (-207351102801/1000000000000 : ℚ), 2⟩,
    ⟨(310307838763/1000000000000 : ℚ), (113863633/250000000 : ℚ), (-160702141437/1000000000000 : ℚ), 2⟩,
    ⟨(160562424517/500000000000 : ℚ), (3366496073/10000000000 : ℚ), (-123221757629/1000000000000 : ℚ), 2⟩,
    ⟨(332100669761/1000000000000 : ℚ), (485871989/2000000000 : ℚ), (-1447409347/15625000000 : ℚ), 2⟩,
    ⟨(343129597791/1000000000000 : ℚ), (839838727/5000000000 : ℚ), (-67338698751/1000000000000 : ℚ), 2⟩,
    ⟨(354105418519/1000000000000 : ℚ), (1072588881/10000000000 : ℚ), (-9237077379/200000000000 : ℚ), 2⟩,
    ⟨(36492242879/100000000000 : ℚ), (57581237/1000000000 : ℚ), (-2833346861/100000000000 : ℚ), 2⟩,
    ⟨(187738227441/500000000000 : ℚ), (16575513/1000000000 : ℚ), (-13158876177/1000000000000 : ℚ), 2⟩,
    ⟨(77133171151/200000000000 : ℚ), (-87529211/5000000000 : ℚ), (-192586179/1000000000000 : ℚ), 2⟩,
    ⟨(98848125477/250000000000 : ℚ), (-91944679/2000000000 : ℚ), (2730377999/250000000000 : ℚ), 2⟩,
    ⟨(404562720421/1000000000000 : ℚ), (-139629783/2000000000 : ℚ), (2045597671/100000000000 : ℚ), 2⟩,
    ⟨(206544098539/500000000000 : ℚ), (-89789301/1000000000 : ℚ), (1144825761/40000000000 : ℚ), 2⟩,
    ⟨(210443413439/500000000000 : ℚ), (-1064754403/10000000000 : ℚ), (7115528327/200000000000 : ℚ), 2⟩,
    ⟨(26742719047/62500000000 : ℚ), (-601598519/5000000000 : ℚ), (20726179831/500000000000 : ℚ), 2⟩,
    ⟨(434010848867/1000000000000 : ℚ), (-131665757/1000000000 : ℚ), (46341558373/1000000000000 : ℚ), 2⟩,
    ⟨(27450615597/62500000000 : ℚ), (-1407769537/10000000000 : ℚ), (25159702677/500000000000 : ℚ), 2⟩,
    ⟨(221715218793/500000000000 : ℚ), (-1478527157/10000000000 : ℚ), (53441984371/1000000000000 : ℚ), 2⟩,
    ⟨(446631966399/1000000000000 : ℚ), (-1530404423/10000000000 : ℚ), (55750644473/1000000000000 : ℚ), 2⟩,
    ⟨(1402448761/3125000000 : ℚ), (-24444379/156250000 : ℚ), (28637221743/500000000000 : ℚ), 2⟩,
    ⟨(449864627507/1000000000000 : ℚ), (-316259399/2000000000 : ℚ), (5803185601/100000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-197924577/1250000000 : ℚ), (58126324711/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (329690669037/1000000000000 : ℚ)
  μ := (9/20 : ℚ)
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
theorem certOK : JointInheritedControls.control166.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control166.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate166

-- Control167
namespace DiagonalRamsey.JointInheritedCertificate167
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(115723072603/500000000000 : ℚ), (8993290490463/10000000000 : ℚ), (-104423053029513/500000000000 : ℚ), 11⟩,
    ⟨(232546031257/1000000000000 : ℚ), (974944867113/10000000000 : ℚ), (-5775591624447/250000000000 : ℚ), 8⟩,
    ⟨(29341901357/125000000000 : ℚ), (84490207933/2500000000 : ℚ), (-824280728633/100000000000 : ℚ), 6⟩,
    ⟨(237992601007/1000000000000 : ℚ), (164486671983/10000000000 : ℚ), (-4148765193961/1000000000000 : ℚ), 5⟩,
    ⟨(242286831261/1000000000000 : ℚ), (18843767447/2000000000 : ℚ), (-2463873514203/1000000000000 : ℚ), 5⟩,
    ⟨(123788272917/500000000000 : ℚ), (11868411977/2000000000 : ℚ), (-1610865687327/1000000000000 : ℚ), 4⟩,
    ⟨(253810801883/1000000000000 : ℚ), (39739510069/10000000000 : ℚ), (-1120124863421/1000000000000 : ℚ), 4⟩,
    ⟨(130464780057/500000000000 : ℚ), (5550942539/2000000000 : ℚ), (-812080411897/1000000000000 : ℚ), 3⟩,
    ⟨(134432131497/500000000000 : ℚ), (19967116617/10000000000 : ℚ), (-121209548713/200000000000 : ℚ), 3⟩,
    ⟨(69384623749/250000000000 : ℚ), (7333387511/5000000000 : ℚ), (-461411768701/1000000000000 : ℚ), 3⟩,
    ⟨(71717179631/250000000000 : ℚ), (682787317/625000000 : ℚ), (-88980382913/250000000000 : ℚ), 3⟩,
    ⟨(296765078427/1000000000000 : ℚ), (1640460547/2000000000 : ℚ), (-138280209689/500000000000 : ℚ), 3⟩,
    ⟨(153566133673/500000000000 : ℚ), (3085881409/5000000000 : ℚ), (-33641407/156250000 : ℚ), 2⟩,
    ⟨(317870443587/1000000000000 : ℚ), (4624542051/10000000000 : ℚ), (-20874311323/125000000000 : ℚ), 2⟩,
    ⟨(164438096321/500000000000 : ℚ), (1711831441/5000000000 : ℚ), (-25638069653/200000000000 : ℚ), 2⟩,
    ⟨(340043523131/1000000000000 : ℚ), (1238255729/5000000000 : ℚ), (-96533030323/1000000000000 : ℚ), 2⟩,
    ⟨(351264887557/1000000000000 : ℚ), (343788301/2000000000 : ℚ), (-8795331963/125000000000 : ℚ), 2⟩,
    ⟨(181216109023/500000000000 : ℚ), (552798411/5000000000 : ℚ), (-48486714919/1000000000000 : ℚ), 2⟩,
    ⟨(373437967101/1000000000000 : ℚ), (603829963/10000000000 : ℚ), (-3754133917/125000000000 : ℚ), 2⟩,
    ⟨(192088071671/500000000000 : ℚ), (189774629/10000000000 : ℚ), (-14354234327/1000000000000 : ℚ), 2⟩,
    ⟨(197271666131/500000000000 : ℚ), (-154252161/10000000000 : ℚ), (-96342737/100000000000 : ℚ), 2⟩,
    ⟨(101109923041/250000000000 : ℚ), (-441504593/10000000000 : ℚ), (2101815667/200000000000 : ℚ), 2⟩,
    ⟨(103442478923/250000000000 : ℚ), (-170503739/2500000000 : ℚ), (5086597717/250000000000 : ℚ), 2⟩,
    ⟨(211222073847/500000000000 : ℚ), (-55214833/625000000 : ℚ), (28766581361/1000000000000 : ℚ), 2⟩,
    ⟨(215189425287/500000000000 : ℚ), (-525822851/5000000000 : ℚ), (35938238719/1000000000000 : ℚ), 2⟩,
    ⟨(87499521761/200000000000 : ℚ), (-1191163137/10000000000 : ℚ), (41991834403/1000000000000 : ℚ), 2⟩,
    ⟨(221865932427/500000000000 : ℚ), (-261094527/2000000000 : ℚ), (23514059059/500000000000 : ℚ), 2⟩,
    ⟨(449021579427/1000000000000 : ℚ), (-1397243837/10000000000 : ℚ), (51124369373/1000000000000 : ℚ), 2⟩,
    ⟨(453315809681/1000000000000 : ℚ), (-1468498691/10000000000 : ℚ), (54339065169/1000000000000 : ℚ), 2⟩,
    ⟨(57071649979/125000000000 : ℚ), (-1520731927/10000000000 : ℚ), (28357673109/500000000000 : ℚ), 2⟩,
    ⟨(458762379431/1000000000000 : ℚ), (-1554997221/10000000000 : ℚ), (58283546323/1000000000000 : ℚ), 2⟩,
    ⟨(459862265483/1000000000000 : ℚ), (-196495797/1250000000 : ℚ), (29531479513/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-1574079943/10000000000 : ℚ), (29580084289/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (325998261669/1000000000000 : ℚ)
  μ := (23/50 : ℚ)
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
theorem certOK : JointInheritedControls.control167.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control167.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate167

-- Control168
namespace DiagonalRamsey.JointInheritedCertificate168
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(118778170899/500000000000 : ℚ), (113457480333/125000000 : ℚ), (-54084817720223/250000000000 : ℚ), 11⟩,
    ⟨(59668736757/250000000000 : ℚ), (492069972551/5000000000 : ℚ), (-5982819753961/250000000000 : ℚ), 8⟩,
    ⟨(24090138471/100000000000 : ℚ), (68245519677/2000000000 : ℚ), (-1707716948549/200000000000 : ℚ), 6⟩,
    ⟨(24421421303/100000000000 : ℚ), (83060508429/5000000000 : ℚ), (-2148832439867/500000000000 : ℚ), 5⟩,
    ⟨(248581527641/1000000000000 : ℚ), (23795591419/2500000000 : ℚ), (-1276168332577/500000000000 : ℚ), 5⟩,
    ⟨(63490317229/250000000000 : ℚ), (2998350093/500000000 : ℚ), (-417185803721/250000000000 : ℚ), 4⟩,
    ⟨(52060325401/200000000000 : ℚ), (2008533817/500000000 : ℚ), (-145052303423/125000000000 : ℚ), 4⟩,
    ⟨(53508308159/200000000000 : ℚ), (28065222633/10000000000 : ℚ), (-841348876981/1000000000000 : ℚ), 3⟩,
    ⟨(137805642979/500000000000 : ℚ), (10098926719/5000000000 : ℚ), (-156988758353/250000000000 : ℚ), 3⟩,
    ⟨(71108286609/250000000000 : ℚ), (3710593599/2500000000 : ℚ), (-9563288971/20000000000 : ℚ), 3⟩,
    ⟨(29392216289/100000000000 : ℚ), (11060776433/10000000000 : ℚ), (-73785525231/200000000000 : ℚ), 3⟩,
    ⟨(60797390181/200000000000 : ℚ), (207738717/250000000 : ℚ), (-71690166589/250000000000 : ℚ), 3⟩,
    ⟨(31453058107/100000000000 : ℚ), (6257326801/10000000000 : ℚ), (-223351944433/1000000000000 : ℚ), 2⟩,
    ⟨(325451512463/1000000000000 : ℚ), (1173396549/2500000000 : ℚ), (-173355118277/1000000000000 : ℚ), 2⟩,
    ⟨(67328914109/200000000000 : ℚ), (3479950731/10000000000 : ℚ), (-33301964551/250000000000 : ℚ), 2⟩,
    ⟨(21750122503/62500000000 : ℚ), (504568363/2000000000 : ℚ), (-25116371299/250000000000 : ℚ), 2⟩,
    ⟨(359414303101/1000000000000 : ℚ), (439357647/2500000000 : ℚ), (-18352013363/250000000000 : ℚ), 2⟩,
    ⟨(92692923151/250000000000 : ℚ), (1137867339/10000000000 : ℚ), (-406397821/8000000000 : ℚ), 2⟩,
    ⟨(190982375343/500000000000 : ℚ), (126228229/2000000000 : ℚ), (-31736516599/1000000000000 : ℚ), 2⟩,
    ⟨(392885682079/1000000000000 : ℚ), (106556861/5000000000 : ℚ), (-7773559999/500000000000 : ℚ), 2⟩,
    ⟨(100857328061/250000000000 : ℚ), (-134104221/10000000000 : ℚ), (-69068387/40000000000 : ℚ), 2⟩,
    ⟨(413494100259/1000000000000 : ℚ), (-423925167/10000000000 : ℚ), (10108294901/1000000000000 : ℚ), 2⟩,
    ⟨(211491558357/500000000000 : ℚ), (-166626003/2500000000 : ℚ), (10125868329/500000000000 : ℚ), 2⟩,
    ⟨(53975622149/125000000000 : ℚ), (-173918099/2000000000 : ℚ), (7232517611/250000000000 : ℚ), 2⟩,
    ⟨(219937361177/500000000000 : ℚ), (-207826723/2000000000 : ℚ), (36318466953/1000000000000 : ℚ), 2⟩,
    ⟨(27944664759/62500000000 : ℚ), (-1179715357/10000000000 : ℚ), (8510515171/200000000000 : ℚ), 2⟩,
    ⟨(453454994233/1000000000000 : ℚ), (-647432477/5000000000 : ℚ), (5967151959/125000000000 : ℚ), 2⟩,
    ⟨(114708683877/250000000000 : ℚ), (-693644037/5000000000 : ℚ), (25976420731/500000000000 : ℚ), 2⟩,
    ⟨(11580051253/25000000000 : ℚ), (-182379293/1250000000 : ℚ), (55260373413/1000000000000 : ℚ), 2⟩,
    ⟨(11662871961/25000000000 : ℚ), (-755809603/5000000000 : ℚ), (5770478277/100000000000 : ℚ), 2⟩,
    ⟨(468741316121/1000000000000 : ℚ), (-1546111069/10000000000 : ℚ), (2965885339/50000000000 : ℚ), 2⟩,
    ⟨(469859921351/1000000000000 : ℚ), (-781595599/5000000000 : ℚ), (60119276769/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-1565318529/10000000000 : ℚ), (30109623217/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (80569850737/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control168.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control168.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate168

-- Control169
namespace DiagonalRamsey.JointInheritedCertificate169
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(243756449101/1000000000000 : ℚ), (9164059072009/10000000000 : ℚ), (-224118165366959/1000000000000 : ℚ), 11⟩,
    ⟨(122446670413/500000000000 : ℚ), (496897109183/5000000000 : ℚ), (-4958366187421/200000000000 : ℚ), 8⟩,
    ⟨(247156175389/1000000000000 : ℚ), (86164524107/2500000000 : ℚ), (-8845674802469/1000000000000 : ℚ), 6⟩,
    ⟨(50104632091/200000000000 : ℚ), (2622464273/156250000 : ℚ), (-2226138757941/500000000000 : ℚ), 5⟩,
    ⟨(127480935059/500000000000 : ℚ), (24048695643/2500000000 : ℚ), (-20657883227/7812500000 : ℚ), 5⟩,
    ⟨(32553694647/125000000000 : ℚ), (60623920543/10000000000 : ℚ), (-432216141301/250000000000 : ℚ), 4⟩,
    ⟨(53374712963/200000000000 : ℚ), (40624120017/10000000000 : ℚ), (-1202286285599/1000000000000 : ℚ), 4⟩,
    ⟨(137115916859/500000000000 : ℚ), (5678390309/2000000000 : ℚ), (-871772350089/1000000000000 : ℚ), 3⟩,
    ⟨(141216749867/500000000000 : ℚ), (20440786341/10000000000 : ℚ), (-8134223903/12500000000 : ℚ), 3⟩,
    ⟨(58279915267/200000000000 : ℚ), (15027373871/10000000000 : ℚ), (-123899399549/250000000000 : ℚ), 3⟩,
    ⟨(150521857651/500000000000 : ℚ), (280108583/250000000 : ℚ), (-382472919897/1000000000000 : ℚ), 3⟩,
    ⟨(9727282447/31250000000 : ℚ), (4211346539/5000000000 : ℚ), (-74348716417/250000000000 : ℚ), 3⟩,
    ⟨(321989031371/1000000000000 : ℚ), (3173831527/5000000000 : ℚ), (-57938153183/250000000000 : ℚ), 2⟩,
    ⟨(333088493629/1000000000000 : ℚ), (297908479/625000000 : ℚ), (-22500898121/125000000000 : ℚ), 2⟩,
    ⟨(344464531191/1000000000000 : ℚ), (221216677/625000000 : ℚ), (-34616928407/250000000000 : ℚ), 2⟩,
    ⟨(71201517319/200000000000 : ℚ), (2571865381/10000000000 : ℚ), (-10460112231/100000000000 : ℚ), 2⟩,
    ⟨(367606493909/1000000000000 : ℚ), (449546497/2500000000 : ℚ), (-957813601/12500000000 : ℚ), 2⟩,
    ⟨(379149549313/1000000000000 : ℚ), (73253807/625000000 : ℚ), (-2662938703/50000000000 : ℚ), 2⟩,
    ⟨(624840939/1600000000 : ℚ), (33004883/500000000 : ℚ), (-6713018991/200000000000 : ℚ), 2⟩,
    ⟨(200812524567/500000000000 : ℚ), (237872383/10000000000 : ℚ), (-16848006021/1000000000000 : ℚ), 2⟩,
    ⟨(2061705211/5000000000 : ℚ), (-112720851/10000000000 : ℚ), (-51678243/20000000000 : ℚ), 2⟩,
    ⟨(422570365203/1000000000000 : ℚ), (-40526079/1000000000 : ℚ), (9625175227/1000000000000 : ℚ), 2⟩,
    ⟨(43221450417/100000000000 : ℚ), (-32501557/500000000 : ℚ), (20084271229/1000000000000 : ℚ), 2⟩,
    ⟨(441180580771/1000000000000 : ℚ), (-427441087/5000000000 : ℚ), (14514280997/500000000000 : ℚ), 2⟩,
    ⟨(224691123393/500000000000 : ℚ), (-512920871/5000000000 : ℚ), (36640077681/1000000000000 : ℚ), 2⟩,
    ⟨(45674051569/100000000000 : ℚ), (-116755381/1000000000 : ℚ), (269124187/6250000000 : ℚ), 2⟩,
    ⟨(7237258177/15625000000 : ℚ), (-256719251/2000000000 : ℚ), (3024812821/62500000000 : ℚ), 2⟩,
    ⟨(468652210387/1000000000000 : ℚ), (-1376712669/10000000000 : ℚ), (52735256579/1000000000000 : ℚ), 2⟩,
    ⟨(473090920049/1000000000000 : ℚ), (-1448981833/10000000000 : ℚ), (3508631249/62500000000 : ℚ), 2⟩,
    ⟨(95291581023/200000000000 : ℚ), (-150194101/1000000000 : ℚ), (2346096899/40000000000 : ℚ), 2⟩,
    ⟨(239360369839/500000000000 : ℚ), (-48021067/312500000 : ℚ), (60311227129/1000000000000 : ℚ), 2⟩,
    ⟨(119964407851/250000000000 : ℚ), (-1553872471/10000000000 : ℚ), (61135522787/1000000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-1556014463/10000000000 : ℚ), (956848799/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (318502439431/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control169.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control169.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate169

-- Control170
namespace DiagonalRamsey.JointInheritedCertificate170
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(256430382407/1000000000000 : ℚ), (9351357667323/10000000000 : ℚ), (-120287684504619/500000000000 : ℚ), 11⟩,
    ⟨(257602529887/1000000000000 : ℚ), (63404467383/625000000 : ℚ), (-13306261536711/500000000000 : ℚ), 8⟩,
    ⟨(129967768213/500000000000 : ℚ), (352007172339/10000000000 : ℚ), (-2373864648559/250000000000 : ℚ), 6⟩,
    ⟨(32925866737/125000000000 : ℚ), (85758314357/5000000000 : ℚ), (-955895979107/200000000000 : ℚ), 5⟩,
    ⟨(133991645421/500000000000 : ℚ), (49182696459/5000000000 : ℚ), (-177417456303/62500000000 : ℚ), 5⟩,
    ⟨(54724106889/200000000000 : ℚ), (62033119189/10000000000 : ℚ), (-232020528313/125000000000 : ℚ), 4⟩,
    ⟨(140132187483/500000000000 : ℚ), (10399362227/2500000000 : ℚ), (-40342855949/31250000000 : ℚ), 4⟩,
    ⟨(28785082859/100000000000 : ℚ), (727344549/250000000 : ℚ), (-468124408039/500000000000 : ℚ), 3⟩,
    ⟨(148153416811/500000000000 : ℚ), (20963022273/10000000000 : ℚ), (-699053585847/1000000000000 : ℚ), 3⟩,
    ⟨(305550954109/1000000000000 : ℚ), (241021831/156250000 : ℚ), (-53259956111/100000000000 : ℚ), 3⟩,
    ⟨(7887354103/25000000000 : ℚ), (11513490803/10000000000 : ℚ), (-411254415681/1000000000000 : ℚ), 3⟩,
    ⟨(65208141021/200000000000 : ℚ), (8666545619/10000000000 : ℚ), (-320022804797/1000000000000 : ℚ), 3⟩,
    ⟨(33708900811/100000000000 : ℚ), (3271265767/5000000000 : ℚ), (-249660885281/1000000000000 : ℚ), 2⟩,
    ⟨(348532671937/1000000000000 : ℚ), (4924036181/10000000000 : ℚ), (-194222098091/1000000000000 : ℚ), 2⟩,
    ⟨(45032685981/125000000000 : ℚ), (3668072963/10000000000 : ℚ), (-149743583923/1000000000000 : ℚ), 2⟩,
    ⟨(186081250467/500000000000 : ℚ), (2677882969/10000000000 : ℚ), (-56752596293/500000000000 : ℚ), 2⟩,
    ⟨(384121097933/1000000000000 : ℚ), (29474797/156250000 : ℚ), (-83592570173/1000000000000 : ℚ), 2⟩,
    ⟨(396022111019/1000000000000 : ℚ), (62305409/500000000 : ℚ), (-3664350173/62500000000 : ℚ), 2⟩,
    ⟨(40775092693/100000000000 : ℚ), (22588653/312500000 : ℚ), (-37609115457/1000000000000 : ℚ), 2⟩,
    ⟨(419194590757/1000000000000 : ℚ), (72884419/2500000000 : ℚ), (-19782635473/1000000000000 : ℚ), 2⟩,
    ⟨(215121446881/500000000000 : ℚ), (-33179779/5000000000 : ℚ), (-917356273/200000000000 : ℚ), 2⟩,
    ⟨(440789434747/1000000000000 : ℚ), (-2918319/80000000 : ℚ), (1681400043/200000000000 : ℚ), 2⟩,
    ⟨(225366322379/500000000000 : ℚ), (-307156581/5000000000 : ℚ), (19527445627/1000000000000 : ℚ), 2⟩,
    ⟨(229988382623/500000000000 : ℚ), (-822995341/10000000000 : ℚ), (29028296469/1000000000000 : ℚ), 2⟩,
    ⟨(468432770277/1000000000000 : ℚ), (-997033509/10000000000 : ℚ), (2319136097/62500000000 : ℚ), 2⟩,
    ⟨(476019223901/1000000000000 : ℚ), (-570602373/5000000000 : ℚ), (43913647249/1000000000000 : ℚ), 2⟩,
    ⟨(482663064423/1000000000000 : ℚ), (-1259191471/10000000000 : ℚ), (4956883197/100000000000 : ℚ), 2⟩,
    ⟨(19532012321/40000000000 : ℚ), (-676909423/5000000000 : ℚ), (54162592093/1000000000000 : ℚ), 2⟩,
    ⟨(492876664971/1000000000000 : ℚ), (-713614199/5000000000 : ℚ), (14440967009/250000000000 : ℚ), 2⟩,
    ⟨(496348062441/1000000000000 : ℚ), (-296200877/2000000000 : ℚ), (15105912151/250000000000 : ℚ), 2⟩,
    ⟨(24934053449/50000000000 : ℚ), (-758132111/5000000000 : ℚ), (62177863399/1000000000000 : ℚ), 2⟩,
    ⟨(499853216461/1000000000000 : ℚ), (-383430161/2500000000 : ℚ), (63049403521/1000000000000 : ℚ), 2⟩,
    ⟨(1/2 : ℚ), (-767947327/5000000000 : ℚ), (63158088053/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/2 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (31077059627/100000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control170.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control170.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate170

-- Control171
namespace DiagonalRamsey.JointInheritedCertificate171
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(53867436523/200000000000 : ℚ), (298277872169/312500000 : ℚ), (-128949104865957/500000000000 : ℚ), 11⟩,
    ⟨(270543465207/1000000000000 : ℚ), (1035837651647/10000000000 : ℚ), (-28528925785523/1000000000000 : ℚ), 8⟩,
    ⟨(272944413231/1000000000000 : ℚ), (179800713531/5000000000 : ℚ), (-2544840150427/250000000000 : ℚ), 6⟩,
    ⟨(138258452123/500000000000 : ℚ), (21914809391/1250000000 : ℚ), (-2561916705193/500000000000 : ℚ), 5⟩,
    ⟨(35153316651/125000000000 : ℚ), (100608634627/10000000000 : ℚ), (-3043320860387/1000000000000 : ℚ), 5⟩,
    ⟨(143513971909/500000000000 : ℚ), (63489497663/10000000000 : ℚ), (-1990104704951/1000000000000 : ℚ), 4⟩,
    ⟨(146932632659/500000000000 : ℚ), (42603331811/10000000000 : ℚ), (-138426953901/100000000000 : ℚ), 4⟩,
    ⟨(301672650567/1000000000000 : ℚ), (5963801003/2000000000 : ℚ), (-1004068928159/1000000000000 : ℚ), 3⟩,
    ⟨(9699215943/31250000000 : ℚ), (21502545329/10000000000 : ℚ), (-18746685441/25000000000 : ℚ), 3⟩,
    ⟨(319888236627/1000000000000 : ℚ), (7918222793/5000000000 : ℚ), (-4464919653/7812500000 : ℚ), 3⟩,
    ⟨(165060505693/500000000000 : ℚ), (11832580463/10000000000 : ℚ), (-110379343547/250000000000 : ℚ), 3⟩,
    ⟨(340974687239/1000000000000 : ℚ), (445902379/500000000 : ℚ), (-85953673471/250000000000 : ℚ), 3⟩,
    ⟨(176172368677/500000000000 : ℚ), (674330663/1000000000 : ℚ), (-134245735283/500000000000 : ℚ), 2⟩,
    ⟨(364121661933/1000000000000 : ℚ), (2543047731/5000000000 : ℚ), (-104586036537/500000000000 : ℚ), 2⟩,
    ⟨(188096021377/500000000000 : ℚ), (950045291/2500000000 : ℚ), (-161607288127/1000000000000 : ℚ), 2⟩,
    ⟨(97109908863/250000000000 : ℚ), (1393282671/5000000000 : ℚ), (-12287998803/100000000000 : ℚ), 2⟩,
    ⟨(200373244507/500000000000 : ℚ), (988291983/5000000000 : ℚ), (-18187354767/200000000000 : ℚ), 2⟩,
    ⟨(412994081711/1000000000000 : ℚ), (1321613877/10000000000 : ℚ), (-64301167489/1000000000000 : ℚ), 2⟩,
    ⟨(425064462533/1000000000000 : ℚ), (196650203/2500000000 : ℚ), (-20946068599/500000000000 : ℚ), 2⟩,
    ⟨(54605173389/125000000000 : ℚ), (345876761/10000000000 : ℚ), (-22905938439/1000000000000 : ℚ), 2⟩,
    ⟨(448211437227/1000000000000 : ℚ), (-19608593/10000000000 : ℚ), (-3368610671/500000000000 : ℚ), 2⟩,
    ⟨(11476627827/25000000000 : ℚ), (-32415923/1000000000 : ℚ), (7074833203/1000000000000 : ℚ), 2⟩,
    ⟨(469297887839/1000000000000 : ℚ), (-578621177/10000000000 : ℚ), (9442012393/500000000000 : ℚ), 2⟩,
    ⟨(47881121429/100000000000 : ℚ), (-791283979/10000000000 : ℚ), (14481861023/500000000000 : ℚ), 2⟩,
    ⟨(487513473899/1000000000000 : ℚ), (-193704079/2000000000 : ℚ), (37526005387/1000000000000 : ℚ), 2⟩,
    ⟨(495320859147/1000000000000 : ℚ), (-1115245807/10000000000 : ℚ), (44735635361/1000000000000 : ℚ), 2⟩,
    ⟨(62769772581/125000000000 : ℚ), (-308812841/2500000000 : ℚ), (50720359577/1000000000000 : ℚ), 2⟩,
    ⟨(253979795629/500000000000 : ℚ), (-332861787/2500000000 : ℚ), (27789287403/500000000000 : ℚ), 2⟩,
    ⟨(25633461011/50000000000 : ℚ), (-351510019/2500000000 : ℚ), (5938504093/100000000000 : ℚ), 2⟩,
    ⟨(258120855617/500000000000 : ℚ), (-1460663421/10000000000 : ℚ), (6219511991/100000000000 : ℚ), 2⟩,
    ⟨(518642659259/1000000000000 : ℚ), (-299293907/2000000000 : ℚ), (32023932547/500000000000 : ℚ), 2⟩,
    ⟨(519848941851/1000000000000 : ℚ), (-302838721/2000000000 : ℚ), (16242044557/250000000000 : ℚ), 2⟩,
    ⟨(13/25 : ℚ), (-94775051/625000000 : ℚ), (16270734129/250000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (13/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/4 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (462499/1000000 : ℚ)
  x := (9464664353/31250000000 : ℚ)
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
theorem certOK : JointInheritedControls.control171.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control171.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate171
