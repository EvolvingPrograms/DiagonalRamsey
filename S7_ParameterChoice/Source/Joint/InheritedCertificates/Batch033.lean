import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.ControlPrecision
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control291
namespace DiagonalRamsey.JointInheritedCertificate291
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(8350131307/200000000000 : ℚ), (1234288102107/5000000000 : ℚ), (-5183676819413/500000000000 : ℚ), 9⟩,
    ⟨(42372509011/1000000000000 : ℚ), (5682478749/250000000 : ℚ), (-983939030487/1000000000000 : ℚ), 6⟩,
    ⟨(43521542561/1000000000000 : ℚ), (51268211887/10000000000 : ℚ), (-115566832653/500000000000 : ℚ), 5⟩,
    ⟨(22511413621/500000000000 : ℚ), (3743211499/10000000000 : ℚ), (-1339428557/62500000000 : ℚ), 4⟩,
    ⟨(46647806071/1000000000000 : ℚ), (-969262853/625000000 : ℚ), (33304415157/500000000000 : ℚ), 4⟩,
    ⟨(752329543/15625000000 : ℚ), (-12508981411/5000000000 : ℚ), (111626289513/1000000000000 : ℚ), 3⟩,
    ⟨(49298124301/1000000000000 : ℚ), (-30010045887/10000000000 : ℚ), (33984095747/250000000000 : ℚ), 3⟩,
    ⟨(49919976777/1000000000000 : ℚ), (-32228954233/10000000000 : ℚ), (29388553653/200000000000 : ℚ), 3⟩,
    ⟨(1/20 : ℚ), (-1299831349/400000000 : ℚ), (74137922751/500000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (406772372191/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control291.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control291.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate291

-- Control292
namespace DiagonalRamsey.JointInheritedCertificate292
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(41784317291/500000000000 : ℚ), (10198952583003/10000000000 : ℚ), (-42704275572843/500000000000 : ℚ), 11⟩,
    ⟨(41941798339/500000000000 : ℚ), (1080324855909/10000000000 : ℚ), (-2288109328029/250000000000 : ℚ), 8⟩,
    ⟨(21125354263/250000000000 : ℚ), (177371610267/5000000000 : ℚ), (-762723941711/250000000000 : ℚ), 6⟩,
    ⟨(17079670643/200000000000 : ℚ), (78238918517/5000000000 : ℚ), (-1368555460463/1000000000000 : ℚ), 5⟩,
    ⟨(86539936413/1000000000000 : ℚ), (75698336943/10000000000 : ℚ), (-674834551943/1000000000000 : ℚ), 5⟩,
    ⟨(87882296243/1000000000000 : ℚ), (17617374957/5000000000 : ℚ), (-40285294087/125000000000 : ℚ), 4⟩,
    ⟨(89373846571/1000000000000 : ℚ), (12190851101/10000000000 : ℚ), (-118217816351/1000000000000 : ℚ), 4⟩,
    ⟨(90957267953/1000000000000 : ℚ), (-1070978601/5000000000 : ℚ), (10924765209/1000000000000 : ℚ), 4⟩,
    ⟨(46285855197/500000000000 : ℚ), (-1164386541/1000000000 : ℚ), (98069518049/1000000000000 : ℚ), 4⟩,
    ⟨(735586967/7812500000 : ℚ), (-9120808923/5000000000 : ℚ), (159641710037/1000000000000 : ℚ), 3⟩,
    ⟨(95646682103/1000000000000 : ℚ), (-717737393/312500000 : ℚ), (204477513777/1000000000000 : ℚ), 3⟩,
    ⟨(96989041933/1000000000000 : ℚ), (-26404601021/10000000000 : ℚ), (118787441347/500000000000 : ℚ), 3⟩,
    ⟨(98130625131/1000000000000 : ℚ), (-14446173691/5000000000 : ℚ), (261842039289/1000000000000 : ℚ), 3⟩,
    ⟨(49513780647/500000000000 : ℚ), (-15315661837/5000000000 : ℚ), (278983452991/1000000000000 : ℚ), 3⟩,
    ⟨(99645381669/1000000000000 : ℚ), (-31738406483/10000000000 : ℚ), (289980473689/1000000000000 : ℚ), 3⟩,
    ⟨(24990085941/250000000000 : ℚ), (-32277780247/10000000000 : ℚ), (295363536263/1000000000000 : ℚ), 3⟩,
    ⟨(1/10 : ℚ), (-32344572849/10000000000 : ℚ), (74007832443/250000000000 : ℚ), 3⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (159278325223/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control292.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control292.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate292

-- Control293
namespace DiagonalRamsey.JointInheritedCertificate293
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(4919735273/20000000000 : ℚ), (2694614125639/2500000000 : ℚ), (-265820352639231/1000000000000 : ℚ), 11⟩,
    ⟨(2468723037/10000000000 : ℚ), (1173406644073/10000000000 : ℚ), (-29392343094261/1000000000000 : ℚ), 8⟩,
    ⟨(49726971113/200000000000 : ℚ), (409077257809/10000000000 : ℚ), (-1309747852469/125000000000 : ℚ), 7⟩,
    ⟨(251257444907/1000000000000 : ℚ), (40068020459/2000000000 : ℚ), (-210669168827/40000000000 : ℚ), 6⟩,
    ⟨(127357407379/500000000000 : ℚ), (288668227/25000000 : ℚ), (-3122003528549/1000000000000 : ℚ), 5⟩,
    ⟨(129486834377/500000000000 : ℚ), (9143002291/1250000000 : ℚ), (-254519223709/125000000000 : ℚ), 5⟩,
    ⟨(52798598361/200000000000 : ℚ), (49226838697/10000000000 : ℚ), (-1411424397497/1000000000000 : ℚ), 4⟩,
    ⟨(134862222543/500000000000 : ℚ), (34515955431/10000000000 : ℚ), (-1019251012187/1000000000000 : ℚ), 4⟩,
    ⟨(17257051973/62500000000 : ℚ), (3111906383/1250000000 : ℚ), (-378468838153/500000000000 : ℚ), 4⟩,
    ⟨(283096627597/1000000000000 : ℚ), (18303272791/10000000000 : ℚ), (-28639529101/50000000000 : ℚ), 3⟩,
    ⟨(1453042877/5000000000 : ℚ), (1702176457/1250000000 : ℚ), (-219244885091/500000000000 : ℚ), 3⟩,
    ⟨(298576330813/1000000000000 : ℚ), (407420141/400000000 : ℚ), (-10545877081/31250000000 : ℚ), 3⟩,
    ⟨(61384631999/200000000000 : ℚ), (3804363021/5000000000 : ℚ), (-259512733271/1000000000000 : ℚ), 3⟩,
    ⟨(15778433921/50000000000 : ℚ), (5632808713/10000000000 : ℚ), (-198053719849/1000000000000 : ℚ), 3⟩,
    ⟨(324429625017/1000000000000 : ℚ), (4089967129/10000000000 : ℚ), (-74356173297/500000000000 : ℚ), 3⟩,
    ⟨(333420664029/1000000000000 : ℚ), (57325031/200000000 : ℚ), (-21696542631/200000000000 : ℚ), 3⟩,
    ⟨(342455206833/1000000000000 : ℚ), (188236411/1000000000 : ℚ), (-75249105087/1000000000000 : ℚ), 2⟩,
    ⟨(87861561461/250000000000 : ℚ), (1081960687/10000000000 : ℚ), (-23745258817/500000000000 : ℚ), 2⟩,
    ⟨(180153596221/500000000000 : ℚ), (424284613/10000000000 : ℚ), (-6023430819/250000000000 : ℚ), 2⟩,
    ⟨(368952710867/1000000000000 : ℚ), (-7537671/625000000 : ℚ), (-2115784809/500000000000 : ℚ), 2⟩,
    ⟨(377299540049/1000000000000 : ℚ), (-574985903/10000000000 : ℚ), (12718284827/1000000000000 : ℚ), 2⟩,
    ⟨(192633647731/500000000000 : ℚ), (-955639587/10000000000 : ℚ), (2722887311/100000000000 : ℚ), 2⟩,
    ⟨(78555848653/200000000000 : ℚ), (-1275309393/10000000000 : ℚ), (19831300701/500000000000 : ℚ), 2⟩,
    ⟨(199881519647/500000000000 : ℚ), (-385937873/2500000000 : ℚ), (25149351431/500000000000 : ℚ), 2⟩,
    ⟨(25384464111/62500000000 : ℚ), (-442118313/2500000000 : ℚ), (14838260961/250000000000 : ℚ), 2⟩,
    ⟨(25742679941/62500000000 : ℚ), (-1955267401/10000000000 : ℚ), (66992617027/1000000000000 : ℚ), 2⟩,
    ⟨(104225550527/250000000000 : ℚ), (-2108601149/10000000000 : ℚ), (73346274291/1000000000000 : ℚ), 2⟩,
    ⟨(52645132013/125000000000 : ℚ), (-55797539/250000000 : ℚ), (15702547991/200000000000 : ℚ), 2⟩,
    ⟨(212309212977/500000000000 : ℚ), (-93110613/400000000 : ℚ), (20641653757/250000000000 : ℚ), 2⟩,
    ⟨(427241015297/1000000000000 : ℚ), (-119905609/500000000 : ℚ), (342251413/4000000000 : ℚ), 2⟩,
    ⟨(214501783581/500000000000 : ℚ), (-2444295189/10000000000 : ℚ), (43770019101/500000000000 : ℚ), 2⟩,
    ⟨(429889107211/1000000000000 : ℚ), (-616794209/2500000000 : ℚ), (11065335069/125000000000 : ℚ), 2⟩,
    ⟨(43/100 : ℚ), (-617506829/2500000000 : ℚ), (1385081803/15625000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (43/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (173091957649/500000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control293.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control293.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate293

-- Control294
namespace DiagonalRamsey.JointInheritedCertificate294
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(252664761249/1000000000000 : ℚ), (10875070819789/10000000000 : ℚ), (-27547845151873/100000000000 : ℚ), 11⟩,
    ⟨(31695786001/125000000000 : ℚ), (236816161813/2000000000 : ℚ), (-30460535172821/1000000000000 : ℚ), 8⟩,
    ⟨(255360659331/1000000000000 : ℚ), (412876815263/10000000000 : ℚ), (-1357373381913/125000000000 : ℚ), 7⟩,
    ⟨(129015297221/500000000000 : ℚ), (202246397217/10000000000 : ℚ), (-5458412311601/1000000000000 : ℚ), 6⟩,
    ⟨(52310076081/200000000000 : ℚ), (116595298787/10000000000 : ℚ), (-647156699609/200000000000 : ℚ), 5⟩,
    ⟨(132943059879/500000000000 : ℚ), (73878918223/10000000000 : ℚ), (-1055253264649/500000000000 : ℚ), 5⟩,
    ⟨(423431339/1562500000 : ℚ), (24868250029/5000000000 : ℚ), (-365777015733/250000000000 : ℚ), 4⟩,
    ⟨(69207745131/250000000000 : ℚ), (34885134999/10000000000 : ℚ), (-26417986429/25000000000 : ℚ), 4⟩,
    ⟨(17708418559/62500000000 : ℚ), (12585671789/5000000000 : ℚ), (-98114182767/125000000000 : ℚ), 4⟩,
    ⟨(290444571877/1000000000000 : ℚ), (4628712309/2500000000 : ℚ), (-18566185491/31250000000 : ℚ), 3⟩,
    ⟨(298092133341/1000000000000 : ℚ), (13782715653/10000000000 : ℚ), (-227491873027/500000000000 : ℚ), 3⟩,
    ⟨(153101865569/500000000000 : ℚ), (10316724233/10000000000 : ℚ), (-175170744193/500000000000 : ℚ), 3⟩,
    ⟨(314701246147/1000000000000 : ℚ), (308572373/400000000 : ℚ), (-269607003349/1000000000000 : ℚ), 3⟩,
    ⟨(323502842653/1000000000000 : ℚ), (5718782947/10000000000 : ℚ), (-102985553083/500000000000 : ℚ), 3⟩,
    ⟨(332523756471/1000000000000 : ℚ), (4160741659/10000000000 : ℚ), (-77447771957/500000000000 : ℚ), 3⟩,
    ⟨(341677111269/1000000000000 : ℚ), (2925117651/10000000000 : ℚ), (-11326466713/100000000000 : ℚ), 3⟩,
    ⟨(350874755237/1000000000000 : ℚ), (965910247/5000000000 : ℚ), (-2465165881/31250000000 : ℚ), 2⟩,
    ⟨(180014055017/500000000000 : ℚ), (1123931519/10000000000 : ℚ), (-50180576681/1000000000000 : ℚ), 2⟩,
    ⟨(92262255963/250000000000 : ℚ), (460269453/10000000000 : ℚ), (-25996142601/1000000000000 : ℚ), 2⟩,
    ⟨(377850620359/1000000000000 : ℚ), (-89423347/10000000000 : ℚ), (-1368530449/250000000000 : ℚ), 2⟩,
    ⟨(48293516921/125000000000 : ℚ), (-547674511/10000000000 : ℚ), (3007782789/250000000000 : ℚ), 2⟩,
    ⟨(98614933291/250000000000 : ℚ), (-931446163/10000000000 : ℚ), (13505265827/500000000000 : ℚ), 2⟩,
    ⟨(100526823657/250000000000 : ℚ), (-1253629789/10000000000 : ℚ), (19920170027/500000000000 : ℚ), 2⟩,
    ⟨(204608584781/500000000000 : ℚ), (-190511991/1250000000 : ℚ), (50810602329/1000000000000 : ℚ), 2⟩,
    ⟨(207860442991/500000000000 : ℚ), (-350088403/2000000000 : ℚ), (60145663769/1000000000000 : ℚ), 2⟩,
    ⟨(84311161909/200000000000 : ℚ), (-121158239/625000000 : ℚ), (68019178289/1000000000000 : ℚ), 2⟩,
    ⟨(426665746747/1000000000000 : ℚ), (-2092888477/10000000000 : ℚ), (3728261019/50000000000 : ℚ), 2⟩,
    ⟨(4310014861/10000000000 : ℚ), (-277122841/1250000000 : ℚ), (79886581273/1000000000000 : ℚ), 2⟩,
    ⟨(434521272063/1000000000000 : ℚ), (-462688981/2000000000 : ℚ), (84060983523/1000000000000 : ℚ), 2⟩,
    ⟨(218595603587/500000000000 : ℚ), (-2384219939/10000000000 : ℚ), (1089321411/12500000000 : ℚ), 2⟩,
    ⟨(219492789249/500000000000 : ℚ), (-2430678839/10000000000 : ℚ), (5573813147/62500000000 : ℚ), 2⟩,
    ⟨(439887105257/1000000000000 : ℚ), (-19169497/78125000 : ℚ), (9019244957/100000000000 : ℚ), 2⟩,
    ⟨(11/25 : ℚ), (-307070357/1250000000 : ℚ), (90318591933/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (11/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (42702952019/125000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control294.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control294.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate294

-- Control295
namespace DiagonalRamsey.JointInheritedCertificate295
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(259311606541/1000000000000 : ℚ), (10965196436941/10000000000 : ℚ), (-142531478850311/500000000000 : ℚ), 11⟩,
    ⟨(260229269927/1000000000000 : ℚ), (597017913081/5000000000 : ℚ), (-31520441436163/1000000000000 : ℚ), 8⟩,
    ⟨(131027879549/500000000000 : ℚ), (416418769513/10000000000 : ℚ), (-5618465290217/500000000000 : ℚ), 7⟩,
    ⟨(52954696793/200000000000 : ℚ), (102011105607/5000000000 : ℚ), (-1129694921253/200000000000 : ℚ), 6⟩,
    ⟨(268356271353/1000000000000 : ℚ), (7352818619/625000000 : ℚ), (-104641737461/31250000000 : ℚ), 5⟩,
    ⟨(272769617059/1000000000000 : ℚ), (4660126671/625000000 : ℚ), (-1066470667/488281250 : ℚ), 5⟩,
    ⟨(277971018153/1000000000000 : ℚ), (25104760939/5000000000 : ℚ), (-94639851161/62500000000 : ℚ), 4⟩,
    ⟨(283910382299/1000000000000 : ℚ), (8806785201/2500000000 : ℚ), (-1093742860343/1000000000000 : ℚ), 4⟩,
    ⟨(72632627543/250000000000 : ℚ), (1589159377/625000000 : ℚ), (-81251746601/100000000000 : ℚ), 4⟩,
    ⟨(297767646323/1000000000000 : ℚ), (58468477/31250000 : ℚ), (-307562614169/500000000000 : ℚ), 3⟩,
    ⟨(152776046587/500000000000 : ℚ), (1741832237/1250000000 : ℚ), (-471195656151/1000000000000 : ℚ), 3⟩,
    ⟨(313808882247/1000000000000 : ℚ), (5218459403/5000000000 : ℚ), (-36296168193/100000000000 : ℚ), 3⟩,
    ⟨(322458496149/1000000000000 : ℚ), (3905318647/5000000000 : ℚ), (-279470537637/1000000000000 : ℚ), 3⟩,
    ⟨(33141763437/100000000000 : ℚ), (1159373947/2000000000 : ℚ), (-213675711913/1000000000000 : ℚ), 3⟩,
    ⟨(42575001939/125000000000 : ℚ), (2112350933/5000000000 : ℚ), (-32176116163/200000000000 : ℚ), 3⟩,
    ⟨(10934912757/31250000000 : ℚ), (2978022361/10000000000 : ℚ), (-14732571109/125000000000 : ℚ), 3⟩,
    ⟨(359279482847/1000000000000 : ℚ), (988000457/5000000000 : ℚ), (-20586408131/250000000000 : ℚ), 2⟩,
    ⟨(368596675559/1000000000000 : ℚ), (1161182343/10000000000 : ℚ), (-1646981503/31250000000 : ℚ), 2⟩,
    ⟨(3777790567/10000000000 : ℚ), (1921831/39062500 : ℚ), (-6934690673/250000000000 : ℚ), 2⟩,
    ⟨(386738194921/1000000000000 : ℚ), (-62135691/10000000000 : ℚ), (-3281650163/500000000000 : ℚ), 2⟩,
    ⟨(395387808823/1000000000000 : ℚ), (-261972931/5000000000 : ℚ), (2872941331/250000000000 : ℚ), 2⟩,
    ⟨(50455574737/125000000000 : ℚ), (-22764481/250000000 : ℚ), (13467554841/500000000000 : ℚ), 2⟩,
    ⟨(411429044747/1000000000000 : ℚ), (-1235063873/10000000000 : ℚ), (20078378109/500000000000 : ℚ), 2⟩,
    ⟨(209333090449/500000000000 : ℚ), (-753688707/5000000000 : ℚ), (25728747133/500000000000 : ℚ), 2⟩,
    ⟨(106321577193/250000000000 : ℚ), (-867600851/5000000000 : ℚ), (30535047967/500000000000 : ℚ), 2⟩,
    ⟨(431225672917/1000000000000 : ℚ), (-1924467111/10000000000 : ℚ), (69174836071/1000000000000 : ℚ), 2⟩,
    ⟨(436427074011/1000000000000 : ℚ), (-1039874601/5000000000 : ℚ), (75910981801/1000000000000 : ℚ), 2⟩,
    ⟨(220420209859/500000000000 : ℚ), (-551139927/2500000000 : ℚ), (2034634199/25000000000 : ℚ), 2⟩,
    ⟨(88884641421/200000000000 : ℚ), (-287695063/1250000000 : ℚ), (2677463141/31250000000 : ℚ), 2⟩,
    ⟨(447140931973/1000000000000 : ℚ), (-593180039/2500000000 : ℚ), (22212736069/250000000000 : ℚ), 2⟩,
    ⟨(56120927643/125000000000 : ℚ), (-302428313/1250000000 : ℚ), (90943628363/1000000000000 : ℚ), 2⟩,
    ⟨(449885084529/1000000000000 : ℚ), (-2442564363/10000000000 : ℚ), (91983502801/1000000000000 : ℚ), 2⟩,
    ⟨(9/20 : ℚ), (-305680827/1250000000 : ℚ), (736905501/8000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (9/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (84267590039/250000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control295.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control295.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate295

-- Control296
namespace DiagonalRamsey.JointInheritedCertificate296
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(66528179809/250000000000 : ℚ), (2213494029851/2000000000 : ℚ), (-147630855647779/500000000000 : ℚ), 11⟩,
    ⟨(53409155371/200000000000 : ℚ), (18833374677/156250000 : ℚ), (-32648465683613/1000000000000 : ℚ), 8⟩,
    ⟨(420160791/1562500000 : ℚ), (420441660281/10000000000 : ℚ), (-11639302267529/1000000000000 : ℚ), 7⟩,
    ⟨(271666222217/1000000000000 : ℚ), (206040923661/10000000000 : ℚ), (-5850929047961/1000000000000 : ℚ), 6⟩,
    ⟨(55061822509/200000000000 : ℚ), (29709975171/2500000000 : ℚ), (-3468727858777/1000000000000 : ℚ), 5⟩,
    ⟨(279796494197/1000000000000 : ℚ), (75340650349/10000000000 : ℚ), (-452538397849/200000000000 : ℚ), 5⟩,
    ⟨(71271287809/250000000000 : ℚ), (50749661501/10000000000 : ℚ), (-784431037967/500000000000 : ℚ), 4⟩,
    ⟨(291124151003/1000000000000 : ℚ), (17809256259/5000000000 : ℚ), (-566679580683/500000000000 : ℚ), 4⟩,
    ⟨(297855334629/1000000000000 : ℚ), (25719321143/10000000000 : ℚ), (-842112899013/1000000000000 : ℚ), 4⟩,
    ⟨(61042775427/200000000000 : ℚ), (18934325629/10000000000 : ℚ), (-15942589867/25000000000 : ℚ), 3⟩,
    ⟨(39141113967/125000000000 : ℚ), (141100243/100000000 : ℚ), (-488673958683/1000000000000 : ℚ), 3⟩,
    ⟨(160762106161/500000000000 : ℚ), (2644035559/2500000000 : ℚ), (-376620960571/1000000000000 : ℚ), 3⟩,
    ⟨(330318927557/1000000000000 : ℚ), (3961329899/5000000000 : ℚ), (-290199592969/1000000000000 : ℚ), 3⟩,
    ⟨(339428359527/1000000000000 : ℚ), (2944037543/5000000000 : ℚ), (-55527697967/250000000000 : ℚ), 3⟩,
    ⟨(174382389711/500000000000 : ℚ), (4299760619/10000000000 : ℚ), (-41872347567/250000000000 : ℚ), 3⟩,
    ⟨(71647654483/200000000000 : ℚ), (1520210999/5000000000 : ℚ), (-61497438841/500000000000 : ℚ), 3⟩,
    ⟨(367757603589/1000000000000 : ℚ), (2028390277/10000000000 : ℚ), (-17255074947/200000000000 : ℚ), 2⟩,
    ⟨(188615548291/500000000000 : ℚ), (75350143/625000000 : ℚ), (-55639451991/1000000000000 : ℚ), 2⟩,
    ⟨(386567516477/1000000000000 : ℚ), (530030753/10000000000 : ℚ), (-7462129507/250000000000 : ℚ), 2⟩,
    ⟨(395676948447/1000000000000 : ℚ), (-7304451/2500000000 : ℚ), (-7981666097/1000000000000 : ℚ), 2⟩,
    ⟨(202235831841/500000000000 : ℚ), (-247577851/5000000000 : ℚ), (1331820021/125000000000 : ℚ), 2⟩,
    ⟨(103216741067/250000000000 : ℚ), (-885118937/10000000000 : ℚ), (26587782573/1000000000000 : ℚ), 2⟩,
    ⟨(420781998869/1000000000000 : ℚ), (-242458033/2000000000 : ℚ), (160890873/4000000000 : ℚ), 2⟩,
    ⟨(3425124331/8000000000 : ℚ), (-1486768323/10000000000 : ℚ), (6483954759/125000000000 : ℚ), 2⟩,
    ⟨(434871725001/1000000000000 : ℚ), (-1716330831/10000000000 : ℚ), (61776329423/1000000000000 : ℚ), 2⟩,
    ⟨(13778460149/31250000000 : ℚ), (-1906983519/10000000000 : ℚ), (70124160149/1000000000000 : ℚ), 2⟩,
    ⟨(446199381807/1000000000000 : ℚ), (-2063361379/10000000000 : ℚ), (3852998343/50000000000 : ℚ), 2⟩,
    ⟨(450686763459/1000000000000 : ℚ), (-2189022623/10000000000 : ℚ), (82694928119/1000000000000 : ℚ), 2⟩,
    ⟨(454329653787/1000000000000 : ℚ), (-457332987/2000000000 : ℚ), (43556604221/500000000000 : ℚ), 2⟩,
    ⟨(114273242441/250000000000 : ℚ), (-2358283729/10000000000 : ℚ), (90376910717/1000000000000 : ℚ), 2⟩,
    ⟨(458950099149/1000000000000 : ℚ), (-601321493/2500000000 : ℚ), (92529700879/1000000000000 : ℚ), 2⟩,
    ⟨(14371348649/31250000000 : ℚ), (-97142751/400000000 : ℚ), (46799674931/500000000000 : ℚ), 2⟩,
    ⟨(23/50 : ℚ), (-2431469007/10000000000 : ℚ), (4686637181/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (23/50 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (332424361881/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control296.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control296.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate296

-- Control297
namespace DiagonalRamsey.JointInheritedCertificate297
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(136471902193/500000000000 : ℚ), (1396169724801/1250000000 : ℚ), (-305622592252549/1000000000000 : ℚ), 11⟩,
    ⟨(273892112001/1000000000000 : ℚ), (608296451043/5000000000 : ℚ), (-6758875865987/200000000000 : ℚ), 8⟩,
    ⟨(27577959451/100000000000 : ℚ), (84889749291/2000000000 : ℚ), (-12048024903629/1000000000000 : ℚ), 7⟩,
    ⟨(11143522977/40000000000 : ℚ), (208051379903/10000000000 : ℚ), (-1514139009713/250000000000 : ℚ), 6⟩,
    ⟨(5645810091/20000000000 : ℚ), (120029546019/10000000000 : ℚ), (-897696332279/250000000000 : ℚ), 5⟩,
    ⟨(286851228457/1000000000000 : ℚ), (38057838797/5000000000 : ℚ), (-1171228087317/500000000000 : ℚ), 5⟩,
    ⟨(292226323883/1000000000000 : ℚ), (12821773881/2500000000 : ℚ), (-162431114059/100000000000 : ℚ), 4⟩,
    ⟨(7459100643/25000000000 : ℚ), (36007731083/10000000000 : ℚ), (-117356268077/100000000000 : ℚ), 4⟩,
    ⟨(61041044909/200000000000 : ℚ), (6502575673/2500000000 : ℚ), (-872137626447/1000000000000 : ℚ), 4⟩,
    ⟨(9771376121/31250000000 : ℚ), (9578599617/5000000000 : ℚ), (-660601247809/1000000000000 : ℚ), 3⟩,
    ⟨(320728434661/1000000000000 : ℚ), (7142014803/5000000000 : ℚ), (-126598041381/250000000000 : ℚ), 3⟩,
    ⟨(164630474477/500000000000 : ℚ), (1339266921/1250000000 : ℚ), (-48807657793/125000000000 : ℚ), 3⟩,
    ⟨(169099702987/500000000000 : ℚ), (8033550437/10000000000 : ℚ), (-150532520803/500000000000 : ℚ), 3⟩,
    ⟨(347457723493/1000000000000 : ℚ), (1494556101/2500000000 : ℚ), (-230647856499/1000000000000 : ℚ), 3⟩,
    ⟨(356946738853/1000000000000 : ℚ), (4373823081/10000000000 : ℚ), (-87086650413/500000000000 : ℚ), 3⟩,
    ⟨(366575067647/1000000000000 : ℚ), (3101873447/10000000000 : ℚ), (-32045766939/250000000000 : ℚ), 3⟩,
    ⟨(5878905997/15625000000 : ℚ), (207987101/1000000000 : ℚ), (-18048424223/200000000000 : ℚ), 2⟩,
    ⟨(385878312603/1000000000000 : ℚ), (624573399/5000000000 : ℚ), (-915609463/15625000000 : ℚ), 2⟩,
    ⟨(395367327963/1000000000000 : ℚ), (567225703/10000000000 : ℚ), (-3197095733/100000000000 : ℚ), 2⟩,
    ⟨(202312822741/500000000000 : ℚ), (1438819/5000000000 : ℚ), (-9404017271/1000000000000 : ℚ), 2⟩,
    ⟨(413564102501/1000000000000 : ℚ), (-29197897/625000000 : ℚ), (9820358381/1000000000000 : ℚ), 2⟩,
    ⟨(211048308397/500000000000 : ℚ), (-215110069/2500000000 : ℚ), (13124532531/500000000000 : ℚ), 2⟩,
    ⟨(430141015583/1000000000000 : ℚ), (-595140527/5000000000 : ℚ), (5037721717/125000000000 : ℚ), 2⟩,
    ⟨(437619826911/1000000000000 : ℚ), (-733454341/5000000000 : ℚ), (26151222577/500000000000 : ℚ), 2⟩,
    ⟨(55557628217/125000000000 : ℚ), (-1698196031/10000000000 : ℚ), (3906378179/62500000000 : ℚ), 2⟩,
    ⟨(450598727573/1000000000000 : ℚ), (-1890224309/10000000000 : ℚ), (17773796963/250000000000 : ℚ), 2⟩,
    ⟨(455973822999/1000000000000 : ℚ), (-2047687911/10000000000 : ℚ), (78232373103/1000000000000 : ℚ), 2⟩,
    ⟨(230267273453/500000000000 : ℚ), (-2174191517/10000000000 : ℚ), (42014608623/500000000000 : ℚ), 2⟩,
    ⟨(46423697703/100000000000 : ℚ), (-142029289/625000000 : ℚ), (2767915409/31250000000 : ℚ), 2⟩,
    ⟨(93409091389/200000000000 : ℚ), (-468908301/2000000000 : ℚ), (22982313753/250000000000 : ℚ), 2⟩,
    ⟨(93786587891/200000000000 : ℚ), (-597959067/2500000000 : ℚ), (94142584687/1000000000000 : ℚ), 2⟩,
    ⟨(46988124707/100000000000 : ℚ), (-2415262323/10000000000 : ℚ), (95242218553/1000000000000 : ℚ), 2⟩,
    ⟨(47/100 : ℚ), (-2418180321/10000000000 : ℚ), (47689673561/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (47/100 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (327752398011/1000000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control297.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control297.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate297

-- Control298
namespace DiagonalRamsey.JointInheritedCertificate298
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(69950632899/250000000000 : ℚ), (11270697454073/10000000000 : ℚ), (-316138556297869/1000000000000 : ℚ), 11⟩,
    ⟨(140382978091/500000000000 : ℚ), (1227788613831/10000000000 : ℚ), (-34957395419583/1000000000000 : ℚ), 8⟩,
    ⟨(5653670541/20000000000 : ℚ), (214216776879/5000000000 : ℚ), (-3115702967631/250000000000 : ℚ), 7⟩,
    ⟨(285536776943/1000000000000 : ℚ), (21005027639/1000000000 : ℚ), (-313260342007/50000000000 : ℚ), 6⟩,
    ⟨(144649113753/500000000000 : ℚ), (15151504349/1250000000 : ℚ), (-464327002137/125000000000 : ℚ), 5⟩,
    ⟨(36741456739/125000000000 : ℚ), (38442884647/5000000000 : ℚ), (-484672244289/200000000000 : ℚ), 5⟩,
    ⟨(299392433733/1000000000000 : ℚ), (51820863971/10000000000 : ℚ), (-840269042017/500000000000 : ℚ), 4⟩,
    ⟨(12225119067/40000000000 : ℚ), (36394074071/10000000000 : ℚ), (-1214317069459/1000000000000 : ℚ), 4⟩,
    ⟨(312578231049/1000000000000 : ℚ), (26298930647/10000000000 : ℚ), (-902562242509/1000000000000 : ℚ), 4⟩,
    ⟨(320176262107/1000000000000 : ℚ), (19378080131/10000000000 : ℚ), (-341896828259/500000000000 : ℚ), 3⟩,
    ⟨(328348896657/1000000000000 : ℚ), (903518797/625000000 : ℚ), (-524329300187/1000000000000 : ℚ), 3⟩,
    ⟨(337017427759/1000000000000 : ℚ), (5425292529/5000000000 : ℚ), (-4044642841/10000000000 : ℚ), 3⟩,
    ⟨(346098372721/1000000000000 : ℚ), (8143041877/10000000000 : ℚ), (-312050642767/1000000000000 : ℚ), 3⟩,
    ⟨(177752138539/500000000000 : ℚ), (3033543037/5000000000 : ℚ), (-119636145197/500000000000 : ℚ), 3⟩,
    ⟨(36514455683/100000000000 : ℚ), (4446685949/10000000000 : ℚ), (-180919001327/1000000000000 : ℚ), 3⟩,
    ⟨(374926370813/1000000000000 : ℚ), (3162196163/10000000000 : ℚ), (-133412891127/1000000000000 : ℚ), 3⟩,
    ⟨(384755514811/1000000000000 : ℚ), (1065140541/5000000000 : ℚ), (-94234502203/1000000000000 : ℚ), 2⟩,
    ⟨(78907465759/200000000000 : ℚ), (1291669049/10000000000 : ℚ), (-61571433257/1000000000000 : ℚ), 2⟩,
    ⟨(404177608547/1000000000000 : ℚ), (603439359/10000000000 : ℚ), (-8524015881/250000000000 : ℚ), 2⟩,
    ⟨(51697939113/125000000000 : ℚ), (850673/250000000 : ℚ), (-10820862981/1000000000000 : ℚ), 2⟩,
    ⟨(211332228933/500000000000 : ℚ), (-440092713/10000000000 : ℚ), (1799640211/200000000000 : ℚ), 2⟩,
    ⟨(53916623621/125000000000 : ℚ), (-418325371/5000000000 : ℚ), (6481903101/250000000000 : ℚ), 2⟩,
    ⟨(219752811759/500000000000 : ℚ), (-1169137773/10000000000 : ℚ), (40402246263/1000000000000 : ℚ), 2⟩,
    ⟨(27943978411/62500000000 : ℚ), (-723947231/5000000000 : ℚ), (5275795479/100000000000 : ℚ), 2⟩,
    ⟨(9081078179/20000000000 : ℚ), (-336177771/2000000000 : ℚ), (63255056427/1000000000000 : ℚ), 2⟩,
    ⟨(460289451891/1000000000000 : ℚ), (-23428467/125000000 : ℚ), (4505969373/62500000000 : ℚ), 2⟩,
    ⟨(465750231713/1000000000000 : ℚ), (-1016406827/5000000000 : ℚ), (79435619669/1000000000000 : ℚ), 2⟩,
    ⟨(470383658119/1000000000000 : ℚ), (-1080074407/5000000000 : ℚ), (85395514613/1000000000000 : ℚ), 2⟩,
    ⟨(237072554341/500000000000 : ℚ), (-2259052107/10000000000 : ℚ), (22516561019/250000000000 : ℚ), 2⟩,
    ⟨(19079934343/40000000000 : ℚ), (-2331572633/10000000000 : ℚ), (46757532747/500000000000 : ℚ), 2⟩,
    ⟨(478915929443/1000000000000 : ℚ), (-594788907/2500000000 : ℚ), (95789314199/1000000000000 : ℚ), 2⟩,
    ⟨(479879354029/1000000000000 : ℚ), (-1201361397/5000000000 : ℚ), (4845955839/50000000000 : ℚ), 2⟩,
    ⟨(12/25 : ℚ), (-2405658291/10000000000 : ℚ), (12132500363/125000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (12/25 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (3/8 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (512499/1000000 : ℚ)
  x := (40381975799/125000000000 : ℚ)
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
theorem certOK : JointInheritedControls.control298.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control298.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate298
