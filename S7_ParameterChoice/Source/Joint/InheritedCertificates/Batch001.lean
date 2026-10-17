import S7_ParameterChoice.Source.Joint.EnvelopeCheck
import S7_ParameterChoice.Source.Joint.EnvelopeData
import S7_ParameterChoice.Source.Joint.FastControlDomain
import S7_ParameterChoice.Source.Joint.InheritedControls
import S7_ParameterChoice.Source.Joint.ControlTransport
import S7_ParameterChoice.Source.Joint.ControlPrecision

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

-- Control13
namespace DiagonalRamsey.JointInheritedCertificate13
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(12199391/312500000 : ℚ), (8927827039/8000000 : ℚ), (-21847699022583/500000000000 : ℚ), 10⟩,
    ⟨(19624086813/500000000000 : ℚ), (1180015325401/10000000000 : ℚ), (-4697654063947/1000000000000 : ℚ), 7⟩,
    ⟨(4957542949/125000000000 : ℚ), (3029234803/78125000 : ℚ), (-394283068831/250000000000 : ℚ), 5⟩,
    ⟨(8051744327/200000000000 : ℚ), (172020679677/10000000000 : ℚ), (-89564852389/125000000000 : ℚ), 4⟩,
    ⟨(1640812497/40000000000 : ℚ), (21126954247/2500000000 : ℚ), (-45175418921/125000000000 : ℚ), 4⟩,
    ⟨(20957924227/500000000000 : ℚ), (8173854791/2000000000 : ℚ), (-90342655171/500000000000 : ℚ), 3⟩,
    ⟨(21455457387/500000000000 : ℚ), (4030333271/2500000000 : ℚ), (-15168571389/200000000000 : ℚ), 3⟩,
    ⟨(8793454309/200000000000 : ℚ), (156532769/2000000000 : ℚ), (-9277726957/1000000000000 : ℚ), 3⟩,
    ⟨(45044323569/1000000000000 : ℚ), (-9357970103/10000000000 : ℚ), (17909425343/500000000000 : ℚ), 2⟩,
    ⟨(2305034017/50000000000 : ℚ), (-655337919/400000000 : ℚ), (33908313913/500000000000 : ℚ), 2⟩,
    ⟨(2354787333/50000000000 : ℚ), (-4281048087/2000000000 : ℚ), (18241430811/200000000000 : ℚ), 2⟩,
    ⟨(47991282689/1000000000000 : ℚ), (-12524497437/5000000000 : ℚ), (108525738593/1000000000000 : ℚ), 2⟩,
    ⟨(24376436739/500000000000 : ℚ), (-345993953/125000000 : ℚ), (121247774933/1000000000000 : ℚ), 2⟩,
    ⟨(24675625761/500000000000 : ℚ), (-29513251393/10000000000 : ℚ), (3256042879/25000000000 : ℚ), 2⟩,
    ⟨(49763421487/1000000000000 : ℚ), (-3834720811/1250000000 : ℚ), (136012487909/1000000000000 : ℚ), 2⟩,
    ⟨(24986771957/500000000000 : ℚ), (-7811033463/2500000000 : ℚ), (2169325709/15625000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-15657109753/5000000000 : ℚ), (69593590439/500000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (237499/1000000 : ℚ)
  x := (1835113723/10000000000 : ℚ)
  μ := (1/20 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control13.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control13.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate13

-- Control14
namespace DiagonalRamsey.JointInheritedCertificate14
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39196128071/500000000000 : ℚ), (284255212669/250000000 : ℚ), (-89394513762819/1000000000000 : ℚ), 10⟩,
    ⟨(1576128817/20000000000 : ℚ), (1202990292329/10000000000 : ℚ), (-9613732665163/1000000000000 : ℚ), 7⟩,
    ⟨(3980944669/50000000000 : ℚ), (98934659053/2500000000 : ℚ), (-3229988614987/1000000000000 : ℚ), 5⟩,
    ⟨(80798391637/1000000000000 : ℚ), (8795587269/500000000 : ℚ), (-36739926863/25000000000 : ℚ), 4⟩,
    ⟨(20574902041/250000000000 : ℚ), (86731315959/10000000000 : ℚ), (-185852368047/250000000000 : ℚ), 4⟩,
    ⟨(21016213013/250000000000 : ℚ), (21134862217/5000000000 : ℚ), (-18702775951/50000000000 : ℚ), 3⟩,
    ⟨(86026285969/1000000000000 : ℚ), (17067633847/10000000000 : ℚ), (-159967942243/1000000000000 : ℚ), 3⟩,
    ⟨(22027133277/250000000000 : ℚ), (1460884103/10000000000 : ℚ), (-242139739/10000000000 : ℚ), 3⟩,
    ⟨(90231573881/1000000000000 : ℚ), (-8844621927/10000000000 : ℚ), (33804838229/500000000000 : ℚ), 2⟩,
    ⟨(92313821021/1000000000000 : ℚ), (-3993486027/2500000000 : ℚ), (26528512181/200000000000 : ℚ), 2⟩,
    ⟨(94275254937/1000000000000 : ℚ), (-4212383831/2000000000 : ℚ), (90045113481/500000000000 : ℚ), 2⟩,
    ⟨(48020249413/500000000000 : ℚ), (-989917761/400000000 : ℚ), (215155396861/1000000000000 : ℚ), 2⟩,
    ⟨(97541715353/1000000000000 : ℚ), (-3425654759/1250000000 : ℚ), (240870933389/1000000000000 : ℚ), 2⟩,
    ⟨(98721213609/1000000000000 : ℚ), (-365693601/125000000 : ℚ), (64756470389/250000000000 : ℚ), 2⟩,
    ⟨(99533666139/1000000000000 : ℚ), (-30429487327/10000000000 : ℚ), (67665731379/250000000000 : ℚ), 2⟩,
    ⟨(99947850847/1000000000000 : ℚ), (-7750042673/2500000000 : ℚ), (276354903143/1000000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-31070776613/10000000000 : ℚ), (277060778127/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (237499/1000000 : ℚ)
  x := (34891401539/250000000000 : ℚ)
  μ := (1/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (4/1 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control14.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control14.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate14

-- Control15
namespace DiagonalRamsey.JointInheritedCertificate15
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(9554515731/40000000000 : ℚ), (1635550631899/2000000000 : ℚ), (-196308158260333/1000000000000 : ℚ), 10⟩,
    ⟨(120300409593/500000000000 : ℚ), (878038148471/10000000000 : ℚ), (-21711845897209/1000000000000 : ℚ), 6⟩,
    ⟨(30507491729/125000000000 : ℚ), (300310755887/10000000000 : ℚ), (-3872377562529/500000000000 : ℚ), 5⟩,
    ⟨(249206924049/1000000000000 : ℚ), (14395283943/1000000000 : ℚ), (-974352481909/250000000000 : ℚ), 4⟩,
    ⟨(51198444301/200000000000 : ℚ), (634071629/78125000 : ℚ), (-144680246617/62500000000 : ℚ), 4⟩,
    ⟨(264350480079/1000000000000 : ℚ), (3145656831/625000000 : ℚ), (-151450838263/100000000000 : ℚ), 3⟩,
    ⟨(274201205169/1000000000000 : ℚ), (33222412109/10000000000 : ℚ), (-527394511571/500000000000 : ℚ), 3⟩,
    ⟨(28544952891/100000000000 : ℚ), (5728244947/2500000000 : ℚ), (-191718671407/250000000000 : ℚ), 2⟩,
    ⟨(59597424759/200000000000 : ℚ), (4079747917/2500000000 : ℚ), (-57487274823/100000000000 : ℚ), 2⟩,
    ⟨(31169324593/100000000000 : ℚ), (2976377343/2500000000 : ℚ), (-88112878659/200000000000 : ℚ), 2⟩,
    ⟨(81608974467/250000000000 : ℚ), (552680023/625000000 : ℚ), (-171501232041/500000000000 : ℚ), 2⟩,
    ⟨(34207309981/100000000000 : ℚ), (6653530819/10000000000 : ℚ), (-269929127489/1000000000000 : ℚ), 2⟩,
    ⟨(71690851391/200000000000 : ℚ), (5048588897/10000000000 : ℚ), (-213788109187/1000000000000 : ℚ), 2⟩,
    ⟨(375421609803/1000000000000 : ℚ), (3846207569/10000000000 : ℚ), (-169720536711/1000000000000 : ℚ), 1⟩,
    ⟨(95901307/244140625 : ℚ), (2928093253/10000000000 : ℚ), (-67245743229/500000000000 : ℚ), 1⟩,
    ⟨(102614302843/250000000000 : ℚ), (276893687/1250000000 : ℚ), (-13235484849/125000000000 : ℚ), 1⟩,
    ⟨(428188048097/1000000000000 : ℚ), (330646991/2000000000 : ℚ), (-41170349851/500000000000 : ℚ), 1⟩,
    ⟨(445833505997/1000000000000 : ℚ), (301132739/2500000000 : ℚ), (-7843205819/125000000000 : ℚ), 1⟩,
    ⟨(231611824833/500000000000 : ℚ), (84214699/1000000000 : ℚ), (-370273403/8000000000 : ℚ), 1⟩,
    ⟨(96038200503/200000000000 : ℚ), (273330097/5000000000 : ℚ), (-6470589183/200000000000 : ℚ), 1⟩,
    ⟨(496572159659/1000000000000 : ℚ), (60768909/2000000000 : ℚ), (-10249661879/500000000000 : ℚ), 1⟩,
    ⟨(256104680801/500000000000 : ℚ), (25787743/2500000000 : ℚ), (-5190037443/500000000000 : ℚ), 1⟩,
    ⟨(526952013539/1000000000000 : ℚ), (-63327769/10000000000 : ℚ), (-1732619693/1000000000000 : ℚ), 1⟩,
    ⟨(21626325427/40000000000 : ℚ), (-40314587/2000000000 : ℚ), (1129061947/200000000000 : ℚ), 1⟩,
    ⟨(553195730559/1000000000000 : ℚ), (-12645659/400000000 : ℚ), (5955136181/500000000000 : ℚ), 1⟩,
    ⟨(5644440543/10000000000 : ℚ), (-410521659/10000000000 : ℚ), (8591863811/500000000000 : ℚ), 1⟩,
    ⟨(574294779391/1000000000000 : ℚ), (-243693749/5000000000 : ℚ), (1077990727/50000000000 : ℚ), 1⟩,
    ⟨(145663259491/250000000000 : ℚ), (-137195477/2500000000 : ℚ), (25111087837/1000000000000 : ℚ), 1⟩,
    ⟨(589438335421/1000000000000 : ℚ), (-596248883/10000000000 : ℚ), (5578550769/200000000000 : ℚ), 1⟩,
    ⟨(594585325637/1000000000000 : ℚ), (-157732109/2500000000 : ℚ), (3743222101/125000000000 : ℚ), 1⟩,
    ⟨(598044440283/1000000000000 : ℚ), (-326811869/5000000000 : ℚ), (7824779389/250000000000 : ℚ), 1⟩,
    ⟨(119956473239/200000000000 : ℚ), (-664846789/10000000000 : ℚ), (6394255889/200000000000 : ℚ), 1⟩,
    ⟨(3/5 : ℚ), (-333121947/5000000000 : ℚ), (32055090491/1000000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (3/5 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (249999/1000000 : ℚ)
  x := (150849743033/1000000000000 : ℚ)
  μ := (3/5 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 16
  tangents := tangents
  degrees := degrees
  cells := cells

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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (3/5 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control15.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control15.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate15

-- Control16
namespace DiagonalRamsey.JointInheritedCertificate16
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(304728427053/1000000000000 : ℚ), (4794252195999/1250000000 : ℚ), (-1170332318929469/1000000000000 : ℚ), 12⟩,
    ⟨(305204477263/1000000000000 : ℚ), (4220468294663/10000000000 : ℚ), (-25977425014191/200000000000 : ℚ), 9⟩,
    ⟨(76538857709/250000000000 : ℚ), (1496114002747/10000000000 : ℚ), (-5831467150043/125000000000 : ℚ), 7⟩,
    ⟨(307578996843/1000000000000 : ℚ), (374219564111/5000000000 : ℚ), (-474396508347/20000000000 : ℚ), 6⟩,
    ⟨(77367936447/250000000000 : ℚ), (442418629997/10000000000 : ℚ), (-14283142054797/1000000000000 : ℚ), 5⟩,
    ⟨(19489319867/62500000000 : ℚ), (28858253553/1000000000 : ℚ), (-2376660172303/250000000000 : ℚ), 5⟩,
    ⟨(314645433981/1000000000000 : ℚ), (200845935083/10000000000 : ℚ), (-54078262731/8000000000 : ℚ), 4⟩,
    ⟨(317913909361/1000000000000 : ℚ), (36584947203/2500000000 : ℚ), (-5036718894033/1000000000000 : ℚ), 4⟩,
    ⟨(32162666997/100000000000 : ℚ), (110320706871/10000000000 : ℚ), (-485687307017/125000000000 : ℚ), 4⟩,
    ⟨(325774771441/1000000000000 : ℚ), (85381608691/10000000000 : ℚ), (-3078606042667/1000000000000 : ℚ), 3⟩,
    ⟨(82587055159/250000000000 : ℚ), (67473176749/10000000000 : ℚ), (-2491376531737/1000000000000 : ℚ), 3⟩,
    ⟨(167667999857/500000000000 : ℚ), (1084637467/200000000 : ℚ), (-1025426957247/500000000000 : ℚ), 3⟩,
    ⟨(170363046339/500000000000 : ℚ), (5525503001/1250000000 : ℚ), (-1712034680221/1000000000000 : ℚ), 3⟩,
    ⟨(86626378581/250000000000 : ℚ), (9114121391/2500000000 : ℚ), (-722967217507/500000000000 : ℚ), 3⟩,
    ⟨(352660341517/1000000000000 : ℚ), (3796067059/1250000000 : ℚ), (-1233201551421/1000000000000 : ℚ), 2⟩,
    ⟨(359175746739/1000000000000 : ℚ), (5102931773/2000000000 : ℚ), (-16570553489/15625000000 : ℚ), 2⟩,
    ⟨(36603603381/100000000000 : ℚ), (21595540759/10000000000 : ℚ), (-229615863147/250000000000 : ℚ), 2⟩,
    ⟨(373224675697/1000000000000 : ℚ), (4598975947/2500000000 : ℚ), (-160048306629/200000000000 : ℚ), 2⟩,
    ⟨(380724354331/1000000000000 : ℚ), (7878937049/5000000000 : ℚ), (-175208052811/250000000000 : ℚ), 2⟩,
    ⟨(38851700233/100000000000 : ℚ), (2712736543/2000000000 : ℚ), (-308234949267/500000000000 : ℚ), 2⟩,
    ⟨(198291923261/500000000000 : ℚ), (293103539/250000000 : ℚ), (-544284009887/1000000000000 : ℚ), 2⟩,
    ⟨(404905453173/1000000000000 : ℚ), (2542698511/2500000000 : ℚ), (-482055443967/1000000000000 : ℚ), 2⟩,
    ⟨(103365443701/250000000000 : ℚ), (885046111/1000000000 : ℚ), (-428047050377/1000000000000 : ℚ), 2⟩,
    ⟨(422232198487/1000000000000 : ℚ), (1544276651/2000000000 : ℚ), (-47610431939/125000000000 : ℚ), 2⟩,
    ⟨(215597797751/500000000000 : ℚ), (1350089409/2000000000 : ℚ), (-169732238181/500000000000 : ℚ), 2⟩,
    ⟨(220165186121/500000000000 : ℚ), (2955580897/5000000000 : ℚ), (-302901799631/1000000000000 : ℚ), 2⟩,
    ⟨(112403630557/250000000000 : ℚ), (259108183/500000000 : ℚ), (-33809005273/125000000000 : ℚ), 2⟩,
    ⟨(459025679131/1000000000000 : ℚ), (4546096101/10000000000 : ℚ), (-48316303823/200000000000 : ℚ), 1⟩,
    ⟨(58567646331/125000000000 : ℚ), (3988762573/10000000000 : ℚ), (-215739493029/1000000000000 : ℚ), 1⟩,
    ⟨(59767259141/125000000000 : ℚ), (3498478659/10000000000 : ℚ), (-192537647509/1000000000000 : ℚ), 1⟩,
    ⟨(60974158349/125000000000 : ℚ), (1532785993/5000000000 : ℚ), (-171634181159/1000000000000 : ℚ), 1⟩,
    ⟨(497483491433/1000000000000 : ℚ), (2681992833/10000000000 : ℚ), (-30548273733/200000000000 : ℚ), 1⟩,
    ⟨(507185402451/1000000000000 : ℚ), (585252121/2500000000 : ℚ), (-13561575103/100000000000 : ℚ), 1⟩,
    ⟨(516875627091/1000000000000 : ℚ), (1018480759/5000000000 : ℚ), (-60025168843/500000000000 : ℚ), 1⟩,
    ⟨(105306164151/200000000000 : ℚ), (1765077333/10000000000 : ℚ), (-105868361733/1000000000000 : ℚ), 1⟩,
    ⟨(134031930809/250000000000 : ℚ), (190163737/1250000000 : ℚ), (-11614780667/125000000000 : ℚ), 1⟩,
    ⟨(545643214753/1000000000000 : ℚ), (651108687/5000000000 : ℚ), (-81069513089/1000000000000 : ℚ), 1⟩,
    ⟨(69381796457/125000000000 : ℚ), (276215327/2500000000 : ℚ), (-70209456079/1000000000000 : ℚ), 1⟩,
    ⟨(282169260821/500000000000 : ℚ), (23168111/250000000 : ℚ), (-60240392431/1000000000000 : ℚ), 1⟩,
    ⟨(573473298381/1000000000000 : ℚ), (765643419/10000000000 : ℚ), (-51077406187/1000000000000 : ℚ), 1⟩,
    ⟨(582436695397/1000000000000 : ℚ), (309876721/5000000000 : ℚ), (-5330808983/125000000000 : ℚ), 1⟩,
    ⟨(591207119079/1000000000000 : ℚ), (243721257/5000000000 : ℚ), (-34882891077/1000000000000 : ℚ), 1⟩,
    ⟨(59976344071/100000000000 : ℚ), (367313507/10000000000 : ℚ), (-13864991973/500000000000 : ℚ), 1⟩,
    ⟨(304042523681/500000000000 : ℚ), (129076289/5000000000 : ℚ), (-5284497567/250000000000 : ℚ), 1⟩,
    ⟨(308075945777/500000000000 : ℚ), (158902773/10000000000 : ℚ), (-15063141359/1000000000000 : ℚ), 1⟩,
    ⟨(623944539553/1000000000000 : ℚ), (8580239/1250000000 : ℚ), (-2366718929/250000000000 : ℚ), 1⟩,
    ⟨(631444218187/1000000000000 : ℚ), (-6718003/5000000000 : ℚ), (-4315172621/1000000000000 : ℚ), 1⟩,
    ⟨(638632860073/1000000000000 : ℚ), (-88036477/10000000000 : ℚ), (105503771/250000000000 : ℚ), 1⟩,
    ⟨(80686643393/125000000000 : ℚ), (-77888867/5000000000 : ℚ), (74550699/15625000000 : ℚ), 1⟩,
    ⟨(652008552367/1000000000000 : ℚ), (-43440393/2000000000 : ℚ), (273624941/31250000000 : ℚ), 1⟩,
    ⟨(16454084489/25000000000 : ℚ), (-272784821/10000000000 : ℚ), (1239703509/100000000000 : ℚ), 1⟩,
    ⟨(132788560241/200000000000 : ℚ), (-322943501/10000000000 : ℚ), (7856348981/500000000000 : ℚ), 1⟩,
    ⟨(66933289417/100000000000 : ℚ), (-184021811/5000000000 : ℚ), (18719171877/1000000000000 : ℚ), 1⟩,
    ⟨(21072521039/31250000000 : ℚ), (-20420253/500000000 : ℚ), (21430707897/1000000000000 : ℚ), 1⟩,
    ⟨(678894122443/1000000000000 : ℚ), (-444306923/10000000000 : ℚ), (23859815059/1000000000000 : ℚ), 1⟩,
    ⟨(341521111957/500000000000 : ℚ), (-59498971/1250000000 : ℚ), (26017423827/1000000000000 : ℚ), 1⟩,
    ⟨(686754984523/1000000000000 : ℚ), (-503669179/10000000000 : ℚ), (2791302627/100000000000 : ℚ), 1⟩,
    ⟨(690023459903/1000000000000 : ℚ), (-527518779/10000000000 : ℚ), (14777397051/500000000000 : ℚ), 1⟩,
    ⟨(173209944003/250000000000 : ℚ), (-547692761/10000000000 : ℚ), (3868709869/125000000000 : ℚ), 1⟩,
    ⟨(10862455439/15625000000 : ℚ), (-564317989/10000000000 : ℚ), (6420699173/200000000000 : ℚ), 1⟩,
    ⟨(8713623713/12500000000 : ℚ), (-577497717/10000000000 : ℚ), (16510495861/500000000000 : ℚ), 1⟩,
    ⟨(698513463047/1000000000000 : ℚ), (-587312971/10000000000 : ℚ), (33705900843/1000000000000 : ℚ), 1⟩,
    ⟨(699464416621/1000000000000 : ℚ), (-148455903/2500000000 : ℚ), (6832197419/200000000000 : ℚ), 1⟩,
    ⟨(699940466831/1000000000000 : ℚ), (-298534563/5000000000 : ℚ), (17194038253/500000000000 : ℚ), 1⟩,
    ⟨(7/10 : ℚ), (-597474357/10000000000 : ℚ), (8604110373/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (7/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (1/8 : ℚ) 32 degrees
def data : ControlCertificate.Data where
  p := (249999/1000000 : ℚ)
  x := (124268085333/1000000000000 : ℚ)
  μ := (7/10 : ℚ)
  β := (999/1000 : ℚ)
  w := (1/8 : ℚ)
  cutoff := 32
  margin := (1/10000000000 : ℚ)
  precision := 32
  tangents := tangents
  degrees := degrees
  cells := cells

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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (7/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control16.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control16.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate16

-- Control17
namespace DiagonalRamsey.JointInheritedCertificate17
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(39134291113/1000000000000 : ℚ), (693855930289/625000000 : ℚ), (-43573581394441/1000000000000 : ℚ), 10⟩,
    ⟨(39342568779/1000000000000 : ℚ), (586954704311/5000000000 : ℚ), (-468376261351/100000000000 : ℚ), 7⟩,
    ⟨(39751120117/1000000000000 : ℚ), (24105778073/625000000 : ℚ), (-785936377037/500000000000 : ℚ), 5⟩,
    ⟨(40344244729/1000000000000 : ℚ), (85522085601/5000000000 : ℚ), (-89204483773/125000000000 : ℚ), 4⟩,
    ⟨(41099149169/1000000000000 : ℚ), (83949748383/10000000000 : ℚ), (-89874466899/250000000000 : ℚ), 4⟩,
    ⟨(41986822881/1000000000000 : ℚ), (10127482993/2500000000 : ℚ), (-35855043681/200000000000 : ℚ), 3⟩,
    ⟨(42973153063/1000000000000 : ℚ), (15868586647/10000000000 : ℚ), (-18679776093/250000000000 : ℚ), 3⟩,
    ⟨(110050589/2500000000 : ℚ), (118422079/2000000000 : ℚ), (-8335279873/1000000000000 : ℚ), 3⟩,
    ⟨(2817989481/62500000000 : ℚ), (-9509958759/10000000000 : ℚ), (36638853683/1000000000000 : ℚ), 3⟩,
    ⟨(46134914233/1000000000000 : ℚ), (-1031905089/625000000 : ℚ), (34275182747/500000000000 : ℚ), 2⟩,
    ⟨(9424248883/200000000000 : ℚ), (-21515709371/10000000000 : ℚ), (45939392569/500000000000 : ℚ), 2⟩,
    ⟨(3000557383/62500000000 : ℚ), (-25148380513/10000000000 : ℚ), (5457628867/50000000000 : ℚ), 2⟩,
    ⟨(48763822567/1000000000000 : ℚ), (-13885782647/5000000000 : ℚ), (121842905321/1000000000000 : ℚ), 2⟩,
    ⟨(49356947179/1000000000000 : ℚ), (-29600612103/10000000000 : ℚ), (130815382683/1000000000000 : ℚ), 2⟩,
    ⟨(49765498517/1000000000000 : ℚ), (-3845296353/1250000000 : ℚ), (68286475269/500000000000 : ℚ), 2⟩,
    ⟨(49973776183/1000000000000 : ℚ), (-31327468337/10000000000 : ℚ), (139391041121/1000000000000 : ℚ), 2⟩,
    ⟨(1/20 : ℚ), (-313974003/100000000 : ℚ), (139740609183/1000000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (249999/1000000 : ℚ)
  x := (96762464407/500000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control17.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control17.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate17

-- Control18
namespace DiagonalRamsey.JointInheritedCertificate18
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(78592152799/1000000000000 : ℚ), (11317411560727/10000000000 : ℚ), (-89203169601701/1000000000000 : ℚ), 10⟩,
    ⟨(39501252909/500000000000 : ℚ), (1197474404969/10000000000 : ℚ), (-599488522431/62500000000 : ℚ), 7⟩,
    ⟨(39903721111/500000000000 : ℚ), (98475698203/2500000000 : ℚ), (-3221621631869/1000000000000 : ℚ), 5⟩,
    ⟨(80976028753/1000000000000 : ℚ), (87522607173/5000000000 : ℚ), (-732479529751/500000000000 : ℚ), 4⟩,
    ⟨(82463357289/1000000000000 : ℚ), (86240426219/10000000000 : ℚ), (-740304343967/1000000000000 : ℚ), 4⟩,
    ⟨(84212270627/1000000000000 : ℚ), (1678234277/400000000 : ℚ), (-371727319237/1000000000000 : ℚ), 3⟩,
    ⟨(2692361219/31250000000 : ℚ), (16847890503/10000000000 : ℚ), (-3952239877/25000000000 : ℚ), 3⟩,
    ⟨(1764370859/20000000000 : ℚ), (1295566479/10000000000 : ℚ), (-2262171117/100000000000 : ℚ), 3⟩,
    ⟨(2822560723/31250000000 : ℚ), (-8976473793/10000000000 : ℚ), (69007362399/1000000000000 : ℚ), 2⟩,
    ⟨(46192463539/500000000000 : ℚ), (-16084301697/10000000000 : ℚ), (33475486803/250000000000 : ℚ), 2⟩,
    ⟨(4716410773/50000000000 : ℚ), (-21158105857/10000000000 : ℚ), (181249144531/1000000000000 : ℚ), 2⟩,
    ⟨(96077128797/1000000000000 : ℚ), (-24834712769/10000000000 : ℚ), (43248259559/200000000000 : ℚ), 2⟩,
    ⟨(97564457333/1000000000000 : ℚ), (-27485818633/10000000000 : ℚ), (12095243497/50000000000 : ℚ), 2⟩,
    ⟨(19746608773/200000000000 : ℚ), (-29332146633/10000000000 : ℚ), (10400981867/40000000000 : ℚ), 2⟩,
    ⟨(24884495067/250000000000 : ℚ), (-30503859033/10000000000 : ℚ), (271639874387/1000000000000 : ℚ), 2⟩,
    ⟨(12493541661/125000000000 : ℚ), (-31073495617/10000000000 : ℚ), (69330387199/250000000000 : ℚ), 2⟩,
    ⟨(1/10 : ℚ), (-6228795039/2000000000 : ℚ), (13901308119/50000000000 : ℚ), 2⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (249999/1000000 : ℚ)
  x := (73735825209/500000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control18.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control18.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate18

-- Control19
namespace DiagonalRamsey.JointInheritedCertificate19
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(7641201587/200000000000 : ℚ), (12978050026181/10000000000 : ℚ), (-777301808363/15625000000 : ℚ), 9⟩,
    ⟨(19216039627/500000000000 : ℚ), (1372916789457/10000000000 : ℚ), (-335022310491/62500000000 : ℚ), 5⟩,
    ⟨(38875534099/1000000000000 : ℚ), (11313330557/250000000 : ℚ), (-904697553607/500000000000 : ℚ), 4⟩,
    ⟨(39519330747/1000000000000 : ℚ), (50620254133/2500000000 : ℚ), (-831003306021/1000000000000 : ℚ), 3⟩,
    ⟨(5042341057/125000000000 : ℚ), (50720210701/5000000000 : ℚ), (-428222938907/1000000000000 : ℚ), 3⟩,
    ⟨(41302238231/1000000000000 : ℚ), (5136294899/1000000000 : ℚ), (-2801333721/12500000000 : ℚ), 2⟩,
    ⟨(4237283293/100000000000 : ℚ), (2900084021/1250000000 : ℚ), (-106434313773/1000000000000 : ℚ), 2⟩,
    ⟨(21754685101/500000000000 : ℚ), (1481818691/2500000000 : ℚ), (-323406203/10000000000 : ℚ), 2⟩,
    ⟨(22334086777/500000000000 : ℚ), (-2678086193/5000000000 : ℚ), (1085206623/62500000000 : ℚ), 2⟩,
    ⟨(22902355413/500000000000 : ℚ), (-13073322461/10000000000 : ℚ), (52249443263/1000000000000 : ℚ), 1⟩,
    ⟨(1875012221/40000000000 : ℚ), (-2314756763/1250000000 : ℚ), (77467895041/1000000000000 : ℚ), 1⟩,
    ⟨(478388153/10000000000 : ℚ), (-22419634617/10000000000 : ℚ), (95938378059/1000000000000 : ℚ), 1⟩,
    ⟨(48658213009/1000000000000 : ℚ), (-12602322373/5000000000 : ℚ), (109372771141/1000000000000 : ℚ), 1⟩,
    ⟨(49302009657/1000000000000 : ℚ), (-423870249/156250000 : ℚ), (59395392437/500000000000 : ℚ), 1⟩,
    ⟨(24872732251/500000000000 : ℚ), (-354251949/125000000 : ℚ), (62397514477/500000000000 : ℚ), 1⟩,
    ⟨(49971535821/1000000000000 : ℚ), (-14463595673/5000000000 : ℚ), (127721862003/1000000000000 : ℚ), 1⟩,
    ⟨(1/20 : ℚ), (-7249927357/2500000000 : ℚ), (32021087283/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/20 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (24999/1000000 : ℚ)
  x := (1770294371/100000000000 : ℚ)
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
theorem check3 : ControlCertificate.GeometryChecks data :=
  DiagonalRamsey.JointEnvelopeCheck.geometryChecks_of_local data (by decide +kernel)
#print axioms check3
theorem check4 : data.degrees.all (fun d => data.tangents.any (fun t => decide (d.slope=t.m ∧ d.intercept=t.c))) = true :=
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/20 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control19.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control19.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate19

-- Control20
namespace DiagonalRamsey.JointInheritedCertificate20
open RamseyAnalytic ControlGeometry
def tangents : List ControlCertificate.Tangent := [
    ⟨(767725671/10000000000 : ℚ), (53392588184841/10000000000 : ℚ), (-410340936232373/1000000000000 : ℚ), 11⟩,
    ⟨(15376869227/200000000000 : ℚ), (5850786721277/10000000000 : ℚ), (-11313123617503/250000000000 : ℚ), 7⟩,
    ⟨(77106827713/1000000000000 : ℚ), (256956195313/1250000000 : ℚ), (-8022742501017/500000000000 : ℚ), 6⟩,
    ⟨(38718934607/500000000000 : ℚ), (1013808555781/10000000000 : ℚ), (-7998730637451/1000000000000 : ℚ), 5⟩,
    ⟨(2433571329/31250000000 : ℚ), (293599114831/5000000000 : ℚ), (-4687377707609/1000000000000 : ℚ), 4⟩,
    ⟨(15682372951/200000000000 : ℚ), (74520754529/2000000000 : ℚ), (-602245852533/200000000000 : ℚ), 4⟩,
    ⟨(15809087737/200000000000 : ℚ), (250103840629/10000000000 : ℚ), (-1023613458711/500000000000 : ℚ), 3⟩,
    ⟨(15953780531/200000000000 : ℚ), (34781022241/2000000000 : ℚ), (-288482031273/200000000000 : ℚ), 3⟩,
    ⟨(80575289311/1000000000000 : ℚ), (12346455951/1000000000 : ℚ), (-1038181337911/1000000000000 : ℚ), 3⟩,
    ⟨(8145683271/100000000000 : ℚ), (88460210049/10000000000 : ℚ), (-377349504197/500000000000 : ℚ), 2⟩,
    ⟨(16481008621/200000000000 : ℚ), (31624446881/5000000000 : ℚ), (-548215356893/1000000000000 : ℚ), 2⟩,
    ⟨(10426348589/125000000000 : ℚ), (44537005487/10000000000 : ℚ), (-196565889281/500000000000 : ℚ), 2⟩,
    ⟨(84464383653/1000000000000 : ℚ), (1211980043/400000000 : ℚ), (-54732677697/200000000000 : ℚ), 2⟩,
    ⟨(8555568123/100000000000 : ℚ), (2404677969/1250000000 : ℚ), (-17965202349/100000000000 : ℚ), 2⟩,
    ⟨(86674171653/1000000000000 : ℚ), (10487881259/10000000000 : ℚ), (-104325433841/1000000000000 : ℚ), 2⟩,
    ⟨(87809083247/1000000000000 : ℚ), (1730319611/5000000000 : ℚ), (-21516681003/500000000000 : ℚ), 2⟩,
    ⟨(88949486193/1000000000000 : ℚ), (-451622427/2000000000 : ℚ), (937211357/125000000000 : ℚ), 2⟩,
    ⟨(45042198893/500000000000 : ℚ), (-1741154671/2500000000 : ℚ), (9924177857/200000000000 : ℚ), 1⟩,
    ⟨(91202888209/1000000000000 : ℚ), (-10874763983/10000000000 : ℚ), (4252899133/50000000000 : ℚ), 1⟩,
    ⟨(92294185787/1000000000000 : ℚ), (-7074132149/5000000000 : ℚ), (57543782561/500000000000 : ℚ), 1⟩,
    ⟨(93347780727/1000000000000 : ℚ), (-8452402463/5000000000 : ℚ), (70335464099/500000000000 : ℚ), 1⟩,
    ⟨(18870705267/200000000000 : ℚ), (-769401701/400000000 : ℚ), (40634532461/250000000000 : ℚ), 1⟩,
    ⟨(9530173673/100000000000 : ℚ), (-21208254029/10000000000 : ℚ), (36249611741/200000000000 : ℚ), 1⟩,
    ⟨(187857969/1953125000 : ℚ), (-11438872541/5000000000 : ℚ), (7889244269/40000000000 : ℚ), 1⟩,
    ⟨(3030927087/31250000000 : ℚ), (-6071182543/2500000000 : ℚ), (52704990147/250000000000 : ℚ), 1⟩,
    ⟨(48856565377/500000000000 : ℚ), (-25461149983/10000000000 : ℚ), (55568027901/250000000000 : ℚ), 1⟩,
    ⟨(24586676171/250000000000 : ℚ), (-2643173599/1000000000 : ℚ), (46357295861/200000000000 : ℚ), 1⟩,
    ⟨(1545066983/15625000000 : ℚ), (-272155321/100000000 : ℚ), (119757883607/500000000000 : ℚ), 1⟩,
    ⟨(3972828009/40000000000 : ℚ), (-5565403437/2000000000 : ℚ), (122787829471/500000000000 : ℚ), 1⟩,
    ⟨(49825870863/500000000000 : ℚ), (-28276927981/10000000000 : ℚ), (125025809601/500000000000 : ℚ), 1⟩,
    ⟨(12484277913/125000000000 : ℚ), (-7143212811/2500000000 : ℚ), (10120153141/40000000000 : ℚ), 1⟩,
    ⟨(4999300117/50000000000 : ℚ), (-28719632451/10000000000 : ℚ), (50894122723/200000000000 : ℚ), 1⟩,
    ⟨(1/10 : ℚ), (-28737925363/10000000000 : ℚ), (63663382481/250000000000 : ℚ), 1⟩]

def degrees : List Cell := DiagonalRamsey.JointEnvelopeData.degreeCells (1/10 : ℚ) tangents
def cells : List Cell := DiagonalRamsey.JointEnvelopeData.integralCells (4/1 : ℚ) 32 degrees
def witness : ControlCertificate.Data where
  p := (24999/1000000 : ℚ)
  x := (12236322349/1000000000000 : ℚ)
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
  DiagonalRamsey.JointEnvelopeData.degreeCells_matches (1/10 : ℚ) tangents
#print axioms check4
theorem check5 : JointControlExpressions.integralCheck data = true := by decide +kernel
#print axioms check5
theorem check6 : ControlPower.check data.μ data.w data.x = true := by decide +kernel
#print axioms check6
theorem checked : JointControlDomain.Checks data := ⟨check0,check1,check2,check3,check4,check5,check6⟩
theorem sound : ControlCertificate.Sound data := JointControlDomain.sound data checked
#print axioms sound
theorem certOK : JointInheritedControls.control20.toD.CertOK := by
  apply JointGeometry.certOK_of_sound JointInheritedControls.control20.toD data sound
  all_goals decide +kernel
#print axioms certOK
end DiagonalRamsey.JointInheritedCertificate20
